Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 030CB80D399
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Dec 2023 18:22:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6EEF7613FD;
	Mon, 11 Dec 2023 17:22:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6EEF7613FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702315364;
	bh=y8DFah1NIfPX3ozoFNbAC74J/8oN1W5VZWfOVNPAt1Q=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Q73JJzlSqa2hyYx+YJZHzls5Q3rIEWUUapad2Krgbq2fzvN5juLrZiFpqogVezwE0
	 39jZVfwi34yuaykwXZtnSlLjauCNwfTSVVzMc3Fc5xHEbKmyDsmRQBi3V1dpmU/izy
	 11Rbh1HdCbtjwu+6ZUASB6ZzCzdvvFhffG1f4JwJwnxlhq0sTvXgB+NYB0kHTGMGJy
	 4Jk5TjObeZZ+VNKZSrQWr84me3Nj4Cw4JCmFo603b8tX6lEDJExL4+wqSj5KJQjJpg
	 eEw0xkOdAcDPPx1JVUV+lj4LvRw68u2r9UzobIJvoNo7OouYM8JDXH1SII4+JoR146
	 D5q/IJScTKopw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EDtxcYJYhfBn; Mon, 11 Dec 2023 17:22:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C979760BAA;
	Mon, 11 Dec 2023 17:22:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C979760BAA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E76C01BF488
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 17:22:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ABD5041899
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 17:22:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ABD5041899
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EOmwrbWTF8bD for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Dec 2023 17:22:36 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 21C16410CB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 17:22:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 21C16410CB
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="394431094"
X-IronPort-AV: E=Sophos;i="6.04,268,1695711600"; d="scan'208";a="394431094"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2023 09:22:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="916926833"
X-IronPort-AV: E=Sophos;i="6.04,268,1695711600"; d="scan'208";a="916926833"
Received: from pmstillw-desk1.amr.corp.intel.com ([10.212.25.117])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2023 09:22:33 -0800
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 11 Dec 2023 09:22:21 -0800
Message-Id: <20231211172226.110-1-paul.m.stillwell.jr@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702315356; x=1733851356;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Kuwu7GsFwmYGOu/cD68Fxhm8N/tL6AJLYvDITJ4Ly2Q=;
 b=XRycv9/MPrFipGWuOBoLRSlVjb+s4Z5kseI1cODztzl1mnn/U69N82zN
 J8Rw/ObsCQbKlu3wzDFj1wrnyDwGVBtWzfDxMFlTvsHsdT/eOfWAL3KNg
 Y/N5mUekaKD7HxkNqGeAYnOPuTwM6Xg9NUYbBr2B45lsu6TlF9301foeW
 iw66b1JPymbt389NZh+SVmrGtTXra2J0Jwmr0LIMjuLFmXr3h+kyeaWG9
 1ReV4dDEZgTId4IZvtuxNo97zK2NoVnSOr4dQwKyi2qzzg1pyLC24C+xK
 qyZpBHjDCuTVMpu8qKOwap8Q8LEQddquPI2AHiZVj+hE1dQQvuRGJPDeQ
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XRycv9/M
Subject: [Intel-wired-lan] [PATCH net-next v19 0/5] add-fwlog-v2-debugfs
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
Cc: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Firmware (FW) log support was added to the ice driver, but that version is
no longer supported. There is a newer version of FW logging (v2) that
adds more control knobs to get the exact data out of the FW
for debugging.

The interface for FW logging is debugfs. This was chosen based on
discussions here:
https://lore.kernel.org/netdev/20230214180712.53fc8ba2@kernel.org/ and
https://lore.kernel.org/netdev/20231012164033.1069fb4b@kernel.org/
We talked about using devlink in a variety of ways, but none of those
options made any sense for the way the FW reports data. We briefly talked
about using ethtool, but that seemed to go by the wayside. Ultimately it
seems like using debugfs is the way to go so re-implement the code to use
that.

FW logging is across all the PFs on the device so restrict the commands to
only PF0.

If the device supports FW logging then a directory named 'fwlog' will be
created under '/sys/kernel/debug/ice/<pci_dev>'. A variety of files will be
created to manage the behavior of logging. The following files will be
created:
- modules/<module>
- nr_messages
- enable
- log_size
- data

where
modules/<module> is used to read/write the log level for a specific module

nr_messages is used to determine how many events should be in each message
sent to the driver

enable is used to start/stop FW logging. This is a boolean value so only 1
or 0 are permissible values

log_size is used to configure the amount of memory the driver uses for log
data

data is used to read/clear the log data

Generally there is a lot of data and dumping that data to syslog will
result in a loss of data. This causes problems when decoding the data and
the user doesn't know that data is missing until later. Instead of dumping
the FW log output to syslog use debugfs. This ensures that all the data the
driver has gets retrieved correctly.

The FW log data is binary data that the FW team decodes to determine what
happened in firmware. The binary blob is sent to Intel for decoding.
---
v19:
- use seq_printf() for outputing module info when reading from 'module' file
- replaced code that created argc and argv for handling command line input
- remove checks in all the _read() and _write() functions to see if FW logging
  is supported because the files will not exist if it is not supported
- removed warnings on allocation failures or on debugfs file creation failures

v18 at:
https://lore.kernel.org/intel-wired-lan/20231128232647.114-1-paul.m.stillwell.jr@intel.com/

v18:
- changed the memory allocation from a buffer per ring to a single buffer that
  gets divided up for each ring
- updated the documentation to indicate that FW logging must be disabled to
  clear the data. also clarified that any value written to the 'data' file will
  clear the data

v17 at:
https://lore.kernel.org/intel-wired-lan/20231109003830.154-1-paul.m.stillwell.jr@intel.com/

v17:
- changed the log level configuration from a single file for all modules to a
  file per module.
- changed 'nr_buffs' to 'log_size' because users understand memory sizes
  better than a number of buffers
- changed 'resolution' to 'nr_messages' to better reflect what it represents
- updated documentation to reflect these changes

v16 at:
https://lore.kernel.org/intel-wired-lan/20230823222152.106-1-paul.m.stillwell.jr@intel.com/

v16:
- removed CONFIG_DEBUG_FS wrapper around code because the debugfs calls handle
  this case already
- moved ice_debugfs_exit() call to remove unreachable code issue
- minor changes to documentation based on community feedback

v15 at:
https://lore.kernel.org/intel-wired-lan/20230808224310.127-1-paul.m.stillwell.jr@intel.com/

v15:
- changed PAGE_SIZE to ICE_AQ_MAX_BUF_LEN because PAGE_SIZE can be bigger
  than 4K

v14 at:
https://lore.kernel.org/intel-wired-lan/20230713222558.142-1-paul.m.stillwell.jr@intel.com/

v14:
- fixed an issue where 0 was a valid number for 'nr_buffs'
- fixed an issue with the output from 'enable' not being a 1 when FW
  logging was enabled

v13 at:
https://lore.kernel.org/intel-wired-lan/20230628231402.176-1-paul.m.stillwell.jr@intel.com/

v13:
- moved the enable code out into it's own patch
- added linux/vmalloc.h header file in ice_fwlog.c
- removed NULL check before freeing ring->data

v12 at:
https://lore.kernel.org/intel-wired-lan/20230607222443.119-1-paul.m.stillwell.jr@intel.com/

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

Paul M Stillwell Jr (5):
  ice: remove FW logging code
  ice: configure FW logging
  ice: enable FW logging
  ice: add ability to read and configure FW log data
  ice: add documentation for FW logging

 .../device_drivers/ethernet/intel/ice.rst     | 141 ++++
 drivers/net/ethernet/intel/ice/Makefile       |   4 +-
 drivers/net/ethernet/intel/ice/ice.h          |   9 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 161 ++--
 drivers/net/ethernet/intel/ice/ice_common.c   | 219 +-----
 drivers/net/ethernet/intel/ice/ice_common.h   |   1 -
 drivers/net/ethernet/intel/ice/ice_debugfs.c  | 694 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_fwlog.c    | 470 ++++++++++++
 drivers/net/ethernet/intel/ice/ice_fwlog.h    |  80 ++
 drivers/net/ethernet/intel/ice/ice_main.c     |  48 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |  23 +-
 11 files changed, 1535 insertions(+), 315 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_debugfs.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.h

-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
