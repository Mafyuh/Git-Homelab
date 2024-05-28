---
name: Delete Application
about: Track the process of deleting an application
title: "Delete Application: [Application Name]"
labels: deletion
assignees: 
---

## Application Details

**Application Name**: [Name of the application to be deleted]

## Reason for Deletion

Please select one or more reasons for the deletion:
- [ ] No longer needed
- [ ] Replaced by another application: 
  <!-- Provide the name of the new application, if applicable -->
- [ ] Maintenance overhead
- [ ] Security vulnerabilities
- [ ] Performance issues
- [ ] Compatibility issues
- [ ] Licensing issues
- [ ] Other (please specify): 
  <!-- Provide additional details -->

## Impacted Folders

Select the folders that are impacted by the deletion:
- [ ] ag-backup
- [ ] ag-main
- [ ] AI
- [ ] arm
- [ ] arrs
- [ ] authentik
- [ ] cf
- [ ] downloaders
- [ ] drone
- [ ] jellyfin
- [ ] kasm
- [ ] netboot
- [ ] nexus
- [ ] portainer
- [ ] twingate

## Steps to Delete

Please check off each step as it is completed:

1. **Remove Configuration Files**: 
   - [ ] Locate and remove all configuration files related to the application.
2. **Update Wiki**: 
   - [ ] Add Archived tag to Wiki page.
   - [ ] Update any architecture diagrams or flowcharts.
3. **Update README(s)**: 
   - [ ] Remove app from main table.
4. **Remove From CD Platform Logic**: 
   - [ ] Remove uneeded if statement from CD platform.
5. **Deletion from host**: 
   - [ ] Ensure that the application and all related files have been successfully removed.
6. **Close Related Issues**: 
   - [ ] Close any open issues or tasks related to the application.
7. **If you are deleting the entire folder check this box**:
   - [ ] Deleting entire folder

## Additional Notes

**Comments**: 
<!-- Add any additional comments or details here -->

