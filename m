Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6110C6A8B3B
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Mar 2023 22:51:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E07C681AAC;
	Thu,  2 Mar 2023 21:51:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E07C681AAC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677793894;
	bh=9wwxG9TFKu5AeL450RuFMEBd7rn7G7CWBaaePXNuCgs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=HUwyjB+0NQka0k2VDurf82SaoJP2u/j9NN+70wzua+pnkh/33rUJmfDeb8qIQoQmT
	 tbVKW2TJkMDpl3UBimWNV/8CgH8nmuazLvFQQYj5RKi+S8RRZ2b7F6yR9k1hcUhwSa
	 B7V957fx7euQqUFisP+MnL3Iq8+OdOjs9QZZdfwxihPbPzRVlfBBlYnlegmElFxpp4
	 W8roz19YnK4QcoWKV+M79B7BvgosbrSf/+q5gYQJsKObQTfTFnyQ+zWWPnjyn1EHCr
	 vkH5OuxCMXmv5IEyG9lHZijIxJkpcn9y5UsgpsQX6eGk827B755cn2VTJTLMTJJ1g8
	 NTACW4wHC3CtQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8UVPmCCdF_A7; Thu,  2 Mar 2023 21:51:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A179C81DAB;
	Thu,  2 Mar 2023 21:51:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A179C81DAB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7E40F1BF306
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Mar 2023 21:51:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4F9DC612C1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Mar 2023 21:51:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4F9DC612C1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GHQsN6HhD9qg for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Mar 2023 21:51:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2BFF860BF3
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2BFF860BF3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Mar 2023 21:51:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="399672216"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="399672216"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 13:51:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="652569996"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="652569996"
Received: from pmstillw-desk1.amr.corp.intel.com ([10.213.174.245])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 13:51:18 -0800
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  2 Mar 2023 13:51:04 -0800
Message-Id: <20230302215109.124-1-paul.m.stillwell.jr@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677793887; x=1709329887;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=B6GO3QXiHETUho1Xr9lyVNFENIdUarJwYUHe9UBzm20=;
 b=CuSjb/5nq3+DVXy3iO7d2scdlALLV/bNSj3RxQkZmpS9kgAZ5PsTVG1U
 ux4Yy/iCuIgK5kwR1hj8HN0z4pZdu1GuBagUZ6xo3raR7jTENPEfd2pSI
 EqGU7FyFyqZXIJGyxin6UddzFc1lTwhpBnLAg9T8I7+nWKAZhQNV5yCfR
 WLBvrYYp0z0EC4jHpVXo4DwOCJj0v7VohzhEOCFzPA+1EwNwg1nSIHOC5
 OgZDHi5sQ7hdfon68mK/T24c1M6yKGnlZ8TeOW03evqGDttnImiVNqhdE
 VuLCuDgQHvANGLIENCEAJAwifvr2fUysaVkX+SqUQVsdVGu7QnlWqg+iK
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CuSjb/5n
Subject: [Intel-wired-lan] [PATCH net-next v9 0/5] add v2 FW logging for ice
 driver
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
- dump fwlog_cfg
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

---
v9:
- rewrote code to use debugfs instead of devlink
v8:
- added vmalloc.h file for correct prototypes
- moved code change from patch 5 to patch 3 where it was supposed to be
- fixed a style issue
v7:
- removed dev_info() in ice_debugfs_command_read() since it wasn't needed
- refactored ice_debugfs_command_read() to split the copying of the data and
  the freeing of the buffers. This allows for better error recovery in case
  the copy_to_user() fails
- changed allocation of fwlog buffers and structure from kernel memory to
  virtual memory (vmalloc/vzalloc)
- fixed a compile bug
v6:
- removed cache_cfg() based on feedback
- a couple of other minor changes based on feedback
v5:
- handle devlink reload path correctly so debugfs directories don't get
  added twice
- fix issue where code wrapped with CONFIG_DEBUG_FS was causing sparc
  compile issues with multiple defines
v4:
- actually changed the modes in ice.rst for new params
v3:
- fixed ice.rst to have proper mode for new params and fixed formatting 
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

Paul M Stillwell Jr (5):
  ice: remove FW logging code
  ice: enable debugfs to check FW logging status
  ice: add ability to set FW log configuration
  ice: enable FW logging based on stored configuration
  ice: add ability to enable FW logging and capture data

 drivers/net/ethernet/intel/ice/Makefile       |   4 +-
 drivers/net/ethernet/intel/ice/ice.h          |  34 ++
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 160 +++----
 drivers/net/ethernet/intel/ice/ice_common.c   | 218 +---------
 drivers/net/ethernet/intel/ice/ice_common.h   |   1 -
 drivers/net/ethernet/intel/ice/ice_debugfs.c  | 391 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_fwlog.c    | 369 +++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_fwlog.h    |  57 +++
 drivers/net/ethernet/intel/ice/ice_main.c     | 136 +++++-
 drivers/net/ethernet/intel/ice/ice_type.h     |  22 +-
 10 files changed, 1076 insertions(+), 316 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_debugfs.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.h

-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
