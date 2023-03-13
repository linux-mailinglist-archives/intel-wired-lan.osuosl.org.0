Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 935DC6B85FD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Mar 2023 00:19:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7CDBC40A5D;
	Mon, 13 Mar 2023 23:19:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7CDBC40A5D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678749545;
	bh=lS33HgXR7zWX2T2wB7QEiGBwHtg+GNxOLdw5c8ZQKHs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=1RwwxZTW/2zshKDp8yitS/xW08F7aTzE7I8zqna0cmrojhQmPb2Lx3ETRBVKRz6RO
	 Hotyw9Kl+YUloqCTOPPsjK736CakLdRdalW2fZGOhiK5JMil+C0eXjce268vgPv00+
	 VM8zXEUhgF8zwVJqQw3WDfcNEsZqi1+Cma30KJQxmnD5Fi6hm/eV69ePCZOF1vkf62
	 KuxkCYkDeQKYwEs/fg2rRGAeBSN/QeAoWZxUqL3pb0zQBmI+BEYbAdbgS+ZVyc7iW7
	 1Kxh54LzAzxzlG1DZWKfB+JqnRzUAJeLKFSWjaomP5ClYP0aBXWTrehZB1ajZyN1hS
	 ZU0RbjaXjwe+g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y9XM89vxSsPh; Mon, 13 Mar 2023 23:19:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2E35D409D7;
	Mon, 13 Mar 2023 23:19:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2E35D409D7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 706571BF377
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 23:18:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 44A214172A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 23:18:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 44A214172A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uMI_oghWDJpc for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Mar 2023 23:18:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6A1FA410BA
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6A1FA410BA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 23:18:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="335979586"
X-IronPort-AV: E=Sophos;i="5.98,258,1673942400"; d="scan'208";a="335979586"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 16:18:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="743076271"
X-IronPort-AV: E=Sophos;i="5.98,258,1673942400"; d="scan'208";a="743076271"
Received: from pmstillw-desk1.amr.corp.intel.com ([10.212.10.39])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 16:18:55 -0700
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 13 Mar 2023 16:18:36 -0700
Message-Id: <20230313231841.113-1-paul.m.stillwell.jr@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678749536; x=1710285536;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=e7CmzW5aeBXwRQsWujnWMWab4hZMeR/xygWV71FaR2s=;
 b=EHJPUNlta+chKszaNKm1lQgZ1CS3ejX3em2cCxSDSf86W3rQb2cfqt6N
 0WcHQ6OYIfGqU2Pe7Q5+Mf6SF8Eb7RSNappK1wAx2TyonBuMr6mClIJAJ
 3Vwd677JWNWmd5GE7qZjLYh1vP8n3a5WfYp9eOAaN9utxtijxjVdE2D4h
 aHTaB1h6Ot4aXy4LGmMF25Rd0NVlpE9pATS1BNasPY2MMs4H7yBuF/1bB
 Zalv2Rbz+Hxx51WZA5LAF7VPQi4fIUiF29JrPoGBwzYmvOoNsc1cPONy3
 c7yF5VzFmB825MUsVEOC8UQsYLuVUNeGxZ6Lm+iNEjd17sLZq8NyqTUCW
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EHJPUNlt
Subject: [Intel-wired-lan] [PATCH net-next v11 0/5] add v2 FW logging for
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

FW log support was added to the ice driver, but that version is no
longer supported. There is a newer version of FW logging (v2) that
adds more control knobs to get the exact data out of the FW
for debugging.

The interface for FW logging is debugfs. This was chosen based on a discussion
here: https://lore.kernel.org/netdev/20230214180712.53fc8ba2@kernel.org/
We talked about using devlink in a variety of ways, but none of those
options made any sense for the way the FW reports data. We briefly talked
about using ethtool, but that seemed to go by the wayside. Ultimately it
seems like using debugfs is the way to go so re-implement the code to use
that.

Additionally, instead of dumping the FW log output to syslog,
dump it to debugfs. The FW log data is really just binary
data that the FW log team decodes to determine what happens so the
translation from binary to some text output just slows things down
and results in potential dropped data. The structure for the debugfs
entry is: /sys/kernel/debug/ice/<pci device>/fwlog

Once enabled the FW log data is received as ARQ events that the driver
processes.

The FW logging is across all the PFs on the device, so restrict the
commands to only PF0.

The following debugfs commands are added:
- disable fwlog
- dump fwlog_cfg
- enable fwlog
- update fwlog_cfg <fwlog_level> <fwlog_events> <fwlog_resolution>

where
fwlog_level is a value from 0-4 as described below
    Each level includes the messages from the previous/lower level
        0 - no logging
        1 - error logging
        2 - warning logging
        3 - normal logging
        4 - verbose logging

fwlog_events is a value from 0-32 that represents the module to receive
events for. The values are sent as a hex value where each bit represents
a specific module. The module values are:
        0 (0x00) - General
        1 (0x01) - Control (Resets + Autoload)
        2 (0x02) - Link Management
        3 (0x03) - Link Topology Detection
        4 (0x04) - DNL
        5 (0x05) - I2C
        6 (0x06) - SDP
        7 (0x07) - MDIO
        8 (0x08) - Admin Queue
        9 (0x09) - HDMA
        10 (0x0A) - LLDP
        11 (0x0B) - DCBX
        12 (0x0C) - DCB
        13 (0x0D) - XLR
        14 (0x0E) - NVM
        15 (0x0F) - Authentication
        16 (0x10) - VPD
        17 (0x11) - IOSF
        18 (0x12) - Parser
        19 (0x13) - Switch
        20 (0x14) - Scheduler
        21 (0x15) - Tx Queue Management
        22 (0x16) - Unsupported
        23 (0x17) - Post
        24 (0x18) - Watchdog
        25 (0x19) - Task Dispatcher
        26 (0x1A) - Manageability
        27 (0x1B) - Synce
        28 (0x1C) - Health
        29 (0x1D) - Time Sync
        30 (0x1E) - PF Registration
        31 (0x1F) - Module Version

fwlog_resolution is the number of log messages to included
in a single ARQ event. The range is 1-128 (1 means push every log
message, 128 means push only when the max AQ command buffer is full).
The suggested value is 10.

The user can read the fwlog data by reading from the 'fwlog' file like this:

  # cat /sys/kernel/debug/ice/<pci-dev>/fwlog > <filename>

---
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
  ice: enable debugfs to check FW logging status
  ice: add ability to set FW log configuration
  ice: enable FW logging based on stored configuration
  ice: add ability to read FW logging data

 .../device_drivers/ethernet/intel/ice.rst     |  85 ++++
 drivers/net/ethernet/intel/ice/Makefile       |   4 +-
 drivers/net/ethernet/intel/ice/ice.h          |  31 ++
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 161 ++++----
 drivers/net/ethernet/intel/ice/ice_common.c   | 218 +---------
 drivers/net/ethernet/intel/ice/ice_common.h   |   1 -
 drivers/net/ethernet/intel/ice/ice_debugfs.c  | 390 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_fwlog.c    | 362 ++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_fwlog.h    |  57 +++
 drivers/net/ethernet/intel/ice/ice_main.c     | 133 +++++-
 drivers/net/ethernet/intel/ice/ice_type.h     |  22 +-
 11 files changed, 1148 insertions(+), 316 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_debugfs.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.h

-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
