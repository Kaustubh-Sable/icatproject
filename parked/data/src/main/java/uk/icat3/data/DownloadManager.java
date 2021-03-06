/*
 * Download.java
 *
 * Created on 17-Oct-2007, 13:05:42
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */
package uk.icat3.data;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.persistence.EntityManager;

import org.apache.log4j.Logger;
import org.icatproject.core.IcatException;
import org.icatproject.core.entity.Datafile;
import org.icatproject.core.entity.Dataset;
import org.icatproject.core.manager.BeanManager;
import org.icatproject.core.manager.DatafileManager;

import uk.icat3.data.DownloadConstants.ACTION;
import static uk.icat3.data.DownloadConstants.*;
import uk.icat3.data.DownloadInfo;

/**
 * All methods for downloading file (ie getting the URL of the download service
 * and giving it to the user of ICAT so they can invoke it, normally a HTTP
 * GET). The user needs READ and DOWNLOAD access for this.
 * 
 * Also a method for the download service to check if the user has access to
 * download what they have requested through the HTTP GET
 * 
 * @author gjd37
 */
public class DownloadManager {

	static Logger log = Logger.getLogger(DownloadManager.class);

	/**
	 * Generates the download URL for the download of a single file. The method
	 * checks if the users has permission to download the file first
	 * 
	 * @param userId
	 *            federalId of the user.
	 * @param datafileId
	 *            datafile id
	 * @param manager
	 *            Entity manager object that will facilitate interaction with
	 *            underlying database
	 * @throws uk.icat3.exceptions.NoSuchObjectFoundException
	 *             if entity does not exist in database
	 * @throws uk.icat3.exceptions.InsufficientPrivilegesException
	 *             if user has insufficient privileges to the object
	 * @return URL that will be used to download the data file
	 * @throws IcatInternalException
	 */
	public static String downloadDatafile(String userId, String sessionId, Long datafileId, EntityManager manager)
			throws IcatException {
		Collection<Long> datafileIds = new ArrayList<Long>();
		datafileIds.add(datafileId);
		return downloadDatafiles(userId, sessionId, datafileIds, manager);
	}

	/**
	 * Generates the download URL for the download of a collection of files. The
	 * method checks if the users has permission to download the files first
	 * 
	 * @param userId
	 *            federalId of the user.
	 * @param datafileIds
	 *            collection of datafile ids
	 * @param manager
	 *            Entity manager object that will facilitate interaction with
	 *            underlying database
	 * @throws uk.icat3.exceptions.NoSuchObjectFoundException
	 *             if entity does not exist in database
	 * @throws uk.icat3.exceptions.InsufficientPrivilegesException
	 *             if user has insufficient privileges to the object
	 * @return URL that will be used to download the collection of data files
	 * @throws IcatInternalException
	 */
	public static String downloadDatafiles(String userId, String sessionId, Collection<Long> datafileIds,
			EntityManager manager) throws IcatException {
		log.trace("downloadDatafiles(" + userId + ", " + sessionId + ", " + datafileIds + ", EntityManager)");

		// Check authz
		DatafileManager.getDataFiles(userId, datafileIds, manager);

		return generateDownloadUrl(datafileIds, sessionId);
	}

	/**
	 * Generates the download URL for the download of a data set. The method
	 * checks if the users has permission to download the dataset files first
	 * 
	 * @param userId
	 *            federalId of the user.
	 * @param datasetId
	 *            dataset id
	 * @param manager
	 *            Entity manager object that will facilitate interaction with
	 *            underlying database
	 * @throws uk.icat3.exceptions.NoSuchObjectFoundException
	 *             if entity does not exist in database
	 * @throws uk.icat3.exceptions.InsufficientPrivilegesException
	 *             if user has insufficient privileges to the object
	 * @return URL that will be used to download the dataset
	 * @throws IcatInternalException
	 */
	public static String downloadDataset(String userId, String sessionId, Long datasetId, EntityManager manager)
			throws IcatException {
		log.trace("downloadDataset(" + userId + ", " + sessionId + ", " + datasetId + ", EntityManager)");

		boolean zip = true;

		// get the dataset and its files.
		Dataset dataset;
		try {
			dataset = (Dataset) BeanManager.get(userId, "Dataset INCLUDE Datafiles", datasetId, manager).getBean();
		} catch (IcatException e) {
			if (e.getType() == IcatException.IcatExceptionType.BAD_PARAMETER) {
				e.setType(IcatException.IcatExceptionType.INTERNAL);
			}
			throw e;
		}

		// if only one file, zip false
		if (dataset.getDatafiles().size() == 1) {
			zip = false;
		}

		return generateDownloadUrl(datasetId, sessionId, zip);
	}

	/**
	 * Generates the URL from the given dataset.
	 * 
	 * @param datasetId
	 *            dataset Id of the dataset that is to be downloaded
	 * @param sessionId
	 *            session id of the user for ICAT
	 * @return URL that will be used to download the datafiles
	 */
	private static String generateDownloadUrl(Long datasetId, String sessionId, boolean zip) {

		StringBuilder builder = new StringBuilder();
		String DOWNLOAD_ACTION = ACTION.ZIP.toString();
		if (!zip) {
			DOWNLOAD_ACTION = ACTION.DOWNLOAD.toString();
		}

		builder.append(DOWNLOAD_SCHEME + "://" + HOST_NAME + "/" + CGI_NAME + "?" + SESSIONID_NAME + "=" + sessionId
				+ "&action=" + DOWNLOAD_ACTION);
		builder.append("&" + DATASETID_NAME + "=" + datasetId);

		return builder.toString();
	}

	/**
	 * Generates the URL from the given datafiles.
	 * 
	 * @param datafiles
	 *            collection of the data files that are to be downloaded
	 * @param sessionId
	 *            session id of the user for ICAT
	 * @return URL that will be used to download the datafiles
	 */
	private static String generateDownloadUrl(Collection<Long> datafileIds, String sessionId) {

		StringBuilder builder = new StringBuilder();
		String DOWNLOAD_ACTION = ACTION.ZIP.toString();
		if (datafileIds.size() == 1) {
			DOWNLOAD_ACTION = ACTION.DOWNLOAD.toString();
		}

		builder.append(DOWNLOAD_SCHEME + "://" + HOST_NAME + "/" + CGI_NAME + "?" + SESSIONID_NAME + "=" + sessionId
				+ "&action=" + DOWNLOAD_ACTION);
		for (Long datafileId : datafileIds) {
			builder.append("&" + DATAFILEID_NAME + "=" + datafileId);
		}
		return builder.toString();
	}

	/**
	 * Checks if user has access to download the files.
	 * 
	 * @param userId
	 *            federalId of the user.
	 * @param fileNames
	 *            names of the files that are to be downloaded
	 * @param manager
	 *            Entity manager object that will facilitate interaction with
	 *            underlying database
	 * @throws uk.icat3.exceptions.NoSuchObjectFoundException
	 *             if entity does not exist in database
	 * @throws uk.icat3.exceptions.InsufficientPrivilegesException
	 *             if user has insufficient privileges to the object
	 * @return DownloadInfo information about the download
	 * @throws IcatInternalException
	 */
	public static DownloadInfo checkDatafileDownloadAccess(String userId, Collection<Long> datafileIds,
			EntityManager manager) throws IcatException {
		log.trace("checkFileDownloadAccess(" + userId + ", " + datafileIds + ", EntityManager)");

		// now check that the user has access to read, download
		downloadDatafiles(userId, "sessionIdDummy", datafileIds, manager);

		// this should be cached in single entity manager call
		Collection<Datafile> datafiles = DatafileManager.getDataFiles(userId, datafileIds, manager);

		Collection<String> fileNames = new ArrayList<String>();
		Collection<String> fileLocations = new ArrayList<String>();
		for (Datafile datafile : datafiles) {
			fileNames.add(datafile.getName());
			fileLocations.add(datafile.getLocation());
		}

		// create download info
		DownloadInfo downloadInfo = new DownloadInfo();
		downloadInfo.setDatafileNames(fileNames);
		downloadInfo.setDatafileLocations(fileLocations);
		downloadInfo.setUserId(userId);

		// user had access
		return downloadInfo;
	}

	/**
	 * Checks if user has access to download the files.
	 * 
	 * @param userId
	 *            federalId of the user.
	 * @param fileNames
	 *            names of the files that are to be downloaded
	 * @param manager
	 *            Entity manager object that will facilitate interaction with
	 *            underlying database
	 * @throws uk.icat3.exceptions.NoSuchObjectFoundException
	 *             if entity does not exist in database
	 * @throws uk.icat3.exceptions.InsufficientPrivilegesException
	 *             if user has insufficient privileges to the object
	 * @return DownloadInfo information about the download
	 * @throws IcatInternalException
	 */
	public static DownloadInfo checkDatasetDownloadAccess(String userId, Long datasetId, EntityManager manager)
			throws IcatException {
		log.trace("checkFileDownloadAccess(" + userId + ", " + datasetId + ", EntityManager)");

		// now check that the user has access to read, download
		downloadDataset(userId, "sessionIdDummy", datasetId, manager);

		// this should be cached in single entity manager call
		Dataset dataset;
		try {
			dataset = (Dataset) BeanManager.get(userId, "Dataset INCLUDE Datafiles", datasetId, manager).getBean();
		} catch (IcatException e) {
			if (e.getType() == IcatException.IcatExceptionType.BAD_PARAMETER) {
				e.setType(IcatException.IcatExceptionType.INTERNAL);
			}
			throw e;
		}
		List<Datafile> datafiles = dataset.getDatafiles();

		Collection<String> fileNames = new ArrayList<String>();
		Collection<String> fileLocations = new ArrayList<String>();
		for (Datafile datafile : datafiles) {
			fileNames.add(datafile.getName());
			fileLocations.add(datafile.getLocation());
		}

		// create download info
		DownloadInfo downloadInfo = new DownloadInfo();
		downloadInfo.setDatafileNames(fileNames);
		downloadInfo.setDatafileLocations(fileLocations);
		downloadInfo.setUserId(userId);

		// user had access
		return downloadInfo;
	}

	public static void main(String[] args) {
		System.out.println(ACTION.DOWNLOAD);
	}
}
