Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6905B7E6175
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Nov 2023 01:39:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D9A9C404C4;
	Thu,  9 Nov 2023 00:38:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D9A9C404C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699490339;
	bh=JewAg/LCYHVKSB8QHllT3nmo/60CQc4vNcKnAqhR2kU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=e/Atep2Qt+dEQytB4XpxIT1MH8PQ6+y3TNqNXT3+iJGWXVJZNaDlVIk1WqkGTBrgw
	 D52NJKhuhtIMke14MbhSileGDRElz1HFu7imiTxyBioX30KZb2PG7muq5xGujP/kiN
	 mmodukDg8G/v6GHfi+zxuNLGSVJ4ulvLhdBJOj6asgDdYcQ0LGi1MCYs2j9kiXW9it
	 wm+0FV2A4jZ6pug8FYUJmkeCpoqDKKZNK2bfCYgL4I39TFgFjsvhiZK1hFvmJ+CoWz
	 JD7NhArNPW+Q0xfNt5vOTCOObGVqDquqURyxWC1NZ0gc3wIXHTGpvb+jryODKHlB+m
	 fV+c5e9mXpqtw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LF-bnqJ0oGkv; Thu,  9 Nov 2023 00:38:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C31014049A;
	Thu,  9 Nov 2023 00:38:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C31014049A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 35E821BF966
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 00:38:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0A2FB61197
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 00:38:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0A2FB61197
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 86NgIgEr2A2Y for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Nov 2023 00:38:50 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 96CAA61196
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 00:38:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 96CAA61196
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="392762360"
X-IronPort-AV: E=Sophos;i="6.03,287,1694761200"; d="scan'208";a="392762360"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2023 16:38:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="739681859"
X-IronPort-AV: E=Sophos;i="6.03,287,1694761200"; d="scan'208";a="739681859"
Received: from pmstillw-desk1.amr.corp.intel.com ([10.212.98.242])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2023 16:38:39 -0800
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  8 Nov 2023 16:38:25 -0800
Message-Id: <20231109003830.154-1-paul.m.stillwell.jr@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699490330; x=1731026330;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hD6czNtcUrwZb7LTRz6T9D1NYgD1+LSg6ZAAKnKqAkE=;
 b=M6ki5pOjS8cdbBpH8pFD8NW7BBZ7sLI3mYNmtmJET7q4310sMSA5q7hW
 cR5tTx4zLwIk/BCkvzrgrU8ZT1SZWyjantAHXXjLKKhCfe519rRxEWAAA
 5NuclU6rDJBDe0/Xn+hQVRrcMUEoEa+yOiHw0yT8dXTVKBephBAN9iwQM
 r9wC6MJNmJG17FjWVsNHvBenXqYXZl1cIsy1nHSI2nHrc2Pw0xLFVk7FV
 YgSLdLif0vQvPxHHEAbu9dtfUI2K3Y93oaV58Mg4P1dPkEUODB4XYqy5s
 gH1umtK2tyBnMk2l1ViVw2X2b/wPrr2dVU+XAKzFv5rCk2/Ur/2xIFj1h
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=M6ki5pOj
Subject: [Intel-wired-lan] [PATCH net-next v17 0/5] add-fwlog-v2-debugfs
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

If the device supports FW logging then a directory named 'fwlog' will be created
under '/sys/kernel/debug/ice/<pci_dev>'. A variety of files will be created
to manage the behavior of logging. The following files will be created:
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

log_size is used to configure the amount of memory the driver uses for log data

data is used to read/clear the log data

Generally there is a lot of data and dumping that data to syslog will
result in a loss of data. This causes problems when decoding the data and
the user doesn't know that data is missing until later. Instead of dumping
the FW log output to syslog use debugfs. This ensures that all the data the
driver has gets retrieved correctly.

The FW log data is binary data that the FW team decodes to determine what
happened in firmware. The binary blob is sent to Intel for decoding.
---
v17:
- changed the log level configuration from a single file for all modules to a
  file per module.
- changed 'nr_buffs' to 'log_size' because users understand memory sizes
  better than a number of buffers
- changed 'resolution' to 'nr_messages' to better reflect what it represents
- updated documentation to reflect these changes

v16 at:
https://lore.kernel.org/netdev/20231005170110.3221306-1-anthony.l.nguyen@intel.com/

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
  ice: add ability to read FW log data and configure the amount of
    memory for log data
  ice: add documentation for FW logging

 .../device_drivers/ethernet/intel/ice.rst     | 141 +++
 drivers/net/ethernet/intel/ice/Makefile       |   4 +-
 drivers/net/ethernet/intel/ice/ice.h          |   9 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 161 ++--
 drivers/net/ethernet/intel/ice/ice_common.c   | 218 +----
 drivers/net/ethernet/intel/ice/ice_common.h   |   1 -
 drivers/net/ethernet/intel/ice/ice_debugfs.c  | 848 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_fwlog.c    | 466 ++++++++++
 drivers/net/ethernet/intel/ice/ice_fwlog.h    |  80 ++
 drivers/net/ethernet/intel/ice/ice_main.c     |  51 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |  23 +-
 11 files changed, 1687 insertions(+), 315 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_debugfs.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.h

-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
