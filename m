Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC5C727191
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Jun 2023 00:25:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BD68C613C6;
	Wed,  7 Jun 2023 22:25:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BD68C613C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686176704;
	bh=JW7FA7cX7WjWv9GtUH0Tc1M4XZgN9NRIoP0FP2JU8C8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=PQbCH168+5dJCCr9f/18gYTIIrHguTpU5PsQBPokopl1+M4JF0aaUq+K6tL0+KpGd
	 IdNF4Q8flVhShEm8GEt4Uzf579WpzjspMQYZ9Y8iF96vfZNGxxSh0k/2J9FShq0TsJ
	 C6+SZacNCbDTnbDkPeQUv66gH0+Ie/AaifxEb8tuQSgtaJ99FbetxJL85fSol35y4D
	 AWXzT3yAt5D/LDnGuXFV+Ci7ImDv98lR+gtuI5mN/0G5OJZWBIX2ApU/spcPHLcZgz
	 Evg/ICTX5Ehpnx7nQvIHS/Uw18S8LeeVXDXmPZI8QBAvBe9oit6PQrjgmWp5ORh7hf
	 QxletHNTNej2w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H7Asdturwp3A; Wed,  7 Jun 2023 22:25:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 46D5D6117F;
	Wed,  7 Jun 2023 22:25:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 46D5D6117F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 82C761BF3EA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 22:24:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 64A574183F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 22:24:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 64A574183F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id athoyueCcUrn for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jun 2023 22:24:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0D47741821
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0D47741821
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 22:24:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="443493349"
X-IronPort-AV: E=Sophos;i="6.00,225,1681196400"; d="scan'208";a="443493349"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 15:24:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="774804934"
X-IronPort-AV: E=Sophos;i="6.00,225,1681196400"; d="scan'208";a="774804934"
Received: from pmstillw-desk1.amr.corp.intel.com ([10.212.90.221])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 15:24:55 -0700
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  7 Jun 2023 15:24:39 -0700
Message-Id: <20230607222443.119-1-paul.m.stillwell.jr@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686176697; x=1717712697;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EsHenjowpno78FDogJpSvLw/26SRV1wuXJpeByIWR/s=;
 b=m6pG34DpUIwPJehZ1YJgbZI554tIyroXwdVS3tJPZGVN4/OGxVg8Ogc6
 xNyMI1PJGliQr+MwT69gE5XGhVTBJP3Ke2/AyAT5IwyET+nUANieVoQl6
 LOiFza7p0Ra3vBaDG0MCAah7A4wy6QiFyFIcJWbr0Q6b4xsi2nN75C5yE
 UIkj6FtWOpqUXjG1wjEJmcNcuiHXuOtIqPPxIf7FaneRkLt5vFRvf8zcY
 YeH+57azef4AaASkaWEaFRxHrTxFJBFMXDz4bqTiIXlhnyTWsywCBTfAe
 JJyvljn4nGc1EilgP3IYq0ylEJeqer1PY/jBtshrPSLpiyNwXGHE88KBB
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=m6pG34Dp
Subject: [Intel-wired-lan] [PATCH net-next v12 0/4] add v2 FW logging for
 ice driver
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Firmware (FW) log support was added to the ice driver, but that version is
no longer supported. There is a newer version of FW logging (v2) that
adds more control knobs to get the exact data out of the FW
for debugging.

The interface for FW logging is debugfs. This was chosen based on a
discussion here:
https://lore.kernel.org/netdev/20230214180712.53fc8ba2@kernel.org/
We talked about using devlink in a variety of ways, but none of those
options made any sense for the way the FW reports data. We briefly talked
about using ethtool, but that seemed to go by the wayside. Ultimately it
seems like using debugfs is the way to go so re-implement the code to use
that.

FW logging is across all the PFs on the device so restrict the commands to
only PF0.

If FW logging is supported then a directory named 'fwlog' will be created
under '/sys/kernel/debug/ice/<pci_dev>'. A variety of files will be created
to manage the behavior of logging. The following files will be created:
- modules
- resolution
- enable
- nr_buffs
- data

where
modules is used to read/write the configuration for FW logging

resolution is used to determine how often to send FW logging events to the
driver

enable is used to start/stop FW logging

nr_buffs is used to configure the number of data buffers the driver uses
for log data

data is used to read/clear the log data

Generally there is a lot of data and dumping that data to syslog will
result in a loss of data. This causes problems when decoding the data and
the user doesn't know that data is missing until later. Instead of dumping
the FW log output to syslog use debugfs. This ensures that all the data the
driver has gets retrieved correctly.

The FW log data is binary data that the FW team decodes to determine what
happened in firmware. The binary blob is sent to Intel for decoding.
---
v12:
- re-wrote debugfs code to use individual files for configuration instead
  of parsing the strings within the driver.
- use sysfs_match_string() to parse the 2 values we need for configuring
  the modules instead of strncmp()
- use ring buffers to contain log data instead of a list. this allows for
  wrapping the data instead of stopping log capture
- split documentation into it's own patch

v11 at:
https://lore.kernel.org/intel-wired-lan/20230313231841.113-1-paul.m.stillwell.jr@intel.com/

v11:
- changed 'events' variable to be u32 instead of unsigned long since
  the FW expects a 32-bit value. This caused some changes to a few
  functions that pass 'events' and changed the parsing in debugfs.
  Also fixed an issue with i386 cross compile where BIT_ULL() was
  being used incorrectly and causing compiler issues on i386 because
  the value was larger than the variable.

v10 at:
https://lore.kernel.org/intel-wired-lan/20230308235102.170-1-paul.m.stillwell.jr@intel.com/

v10:
- updated code to only create 'fwlog' file if FW logging is supported
- combined code under single ifdef in header file
- removed defines that were not used and added them when the correct patch is
  applied
- added newline between defines and variables in structure
- moved include header into alphabetical order at top of file
- removed unnecessary casts
- updated return statements for more efficient code
- changed BIT() to BIT_ULL() to try to fix i386 cross compile issue
- fixed RCT issue
- added documentation in Documentation/networking/device-drivers/ethernet/intel/ice.rst
- updated commit messages appropriately
- 

v9 at:
https://lore.kernel.org/intel-wired-lan/20230302215109.124-1-paul.m.stillwell.jr@intel.com/

v9:
- rewrote code to use debugfs instead of devlink

v8 at:
https://lore.kernel.org/intel-wired-lan/20230124221428.114-1-paul.m.stillwell.jr@intel.com/

v8:
- added vmalloc.h file for correct prototypes
- moved code change from patch 5 to patch 3 where it was supposed to be
- fixed a style issue

v7 at:
https://lore.kernel.org/intel-wired-lan/20230120233511.131-1-paul.m.stillwell.jr@intel.com/

v7:
- removed dev_info() in ice_debugfs_command_read() since it wasn't needed
- refactored ice_debugfs_command_read() to split the copying of the data and
  the freeing of the buffers. This allows for better error recovery in case
  the copy_to_user() fails
- changed allocation of fwlog buffers and structure from kernel memory to
  virtual memory (vmalloc/vzalloc)
- fixed a compile bug

v6 at:
https://lore.kernel.org/intel-wired-lan/20230113222319.111-1-paul.m.stillwell.jr@intel.com/

v6:
- removed cache_cfg() based on feedback
- a couple of other minor changes based on feedback

v5 at:
https://lore.kernel.org/intel-wired-lan/20230111191906.131-1-paul.m.stillwell.jr@intel.com/

v5:
- handle devlink reload path correctly so debugfs directories don't get
  added twice
- fix issue where code wrapped with CONFIG_DEBUG_FS was causing sparc
  compile issues with multiple defines

No v4 cover letter

v4:
- actually changed the modes in ice.rst for new params

v3 at:
https://lore.kernel.org/intel-wired-lan/20221217045828.222-1-paul.m.stillwell.jr@intel.com/

v3:
- fixed ice.rst to have proper mode for new params and fixed formatting 

v2 at:
https://lore.kernel.org/intel-wired-lan/20221209232748.189-1-paul.m.stillwell.jr@intel.com/

v2:
- removed some unused admin queue commands
- updated copyright in ice_fwlog.[ch] to 2022
- moved defines in structures under the variables and added blank line
- removed a couple of unused defines
- changed fwlog_support_ena to fwlog_supported to be clearer
- consolidated ice_devlink_param_id enum together
- changed ice_fwlog_set_support_ena() to ice_fwlog_set_supported()
- consolidated return status logic in ice_devlink_fwlog_enabled_set()
- pull up functions in ice_fwlog.c where appropriate
- add newline for FW Logging Commands comment
- changed any new u[8/16] loop variables to int
- moved ice_pf_fwlog_deinit() from patch 5 to patch 4
- changed error message to be clearer
- updated Documentation/networking/devlink/ice.rst
- updated commit messages with examples of devlink commands and using
  debugfs to get log files

v1 at:
https://lore.kernel.org/intel-wired-lan/20221128214749.110-1-paul.m.stillwell.jr@intel.com/

Paul M Stillwell Jr (4):
  ice: remove FW logging code
  ice: configure FW logging
  ice: add ability to read FW log data and configure the number of log
    buffers
  ice: added documentation for FW logging

 .../device_drivers/ethernet/intel/ice.rst     | 126 ++-
 drivers/net/ethernet/intel/ice/Makefile       |   4 +-
 drivers/net/ethernet/intel/ice/ice.h          |  18 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 159 ++--
 drivers/net/ethernet/intel/ice/ice_common.c   | 219 +----
 drivers/net/ethernet/intel/ice/ice_common.h   |   1 -
 drivers/net/ethernet/intel/ice/ice_debugfs.c  | 809 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_fwlog.c    | 449 ++++++++++
 drivers/net/ethernet/intel/ice/ice_fwlog.h    |  77 ++
 drivers/net/ethernet/intel/ice/ice_main.c     |  51 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |  23 +-
 11 files changed, 1617 insertions(+), 319 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_debugfs.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.h

-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
