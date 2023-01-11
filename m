Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BB9FC66636E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Jan 2023 20:19:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4BC3F41872;
	Wed, 11 Jan 2023 19:19:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4BC3F41872
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673464768;
	bh=jK6C4/p6ST/IPaZsl/IKAg9XWgj9WqH28i39qKvvab8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=XdGHwLsTFLaW6RNTg9hTImMcYli+lr5BW9UCjiuvh13WVNGF0sw2NWpWCpzkCYc5s
	 CedcWadRXyG1qwyfmtS4grTc+Ig0TtH5OTwXzTAzDEVeKevgOJlsJhOlxltTj9w8O6
	 2TJLkDGC5CwOCwpfR3zR14rRWRC2B06YAAE3gHW63pwyU34XHnLFz/EUj5CjgMPgTH
	 kliQ8vVgV/spRBbU+r3gYJGCW24o1hH2+g3S+B3Y+WVcx23Nb/alHjztCOKxd/W6fq
	 W5KrHbJJi/bcYue6dTR1XEXqcVQ+1d2gM6PzJBIsgWCM3OBeeZuypNG8fxyGvI3ZrT
	 /AjCyJbn11hbg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yweS15M1TdAu; Wed, 11 Jan 2023 19:19:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A2BA5402FD;
	Wed, 11 Jan 2023 19:19:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A2BA5402FD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CE6E51BF3ED
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jan 2023 19:19:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A4B1D60E73
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jan 2023 19:19:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A4B1D60E73
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QLjFP_4EJGhT for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Jan 2023 19:19:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E2E0860B99
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E2E0860B99
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jan 2023 19:19:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="321205219"
X-IronPort-AV: E=Sophos;i="5.96,317,1665471600"; d="scan'208";a="321205219"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 11:19:18 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="902892229"
X-IronPort-AV: E=Sophos;i="5.96,317,1665471600"; d="scan'208";a="902892229"
Received: from pmstillw-desk1.amr.corp.intel.com ([10.212.10.187])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 11:19:18 -0800
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 11 Jan 2023 11:19:01 -0800
Message-Id: <20230111191906.131-1-paul.m.stillwell.jr@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673464758; x=1705000758;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NfWrptunk3NGMIj3Ul7rFHcrYDIBN9NmQlFJktvkldE=;
 b=SNEygofrissd9yMcWtTUpFTuCnb+btrfvkf2Iu2fozGhKx6Y9uxn+8n0
 mQNL/ttUSuxtPQzKAbQ4V9zx8fqqtpk7Dn7NjOvyIOpMo9l1Kfb1nxviG
 TNXcERN7gkonCkN5AJuV5tdfQUY+6QyTTTrLtmMgqaymmFdPEt0HJvjLz
 /03EUyxCWfodPZ3ntAsydEANwljWh86zuy2Q/wW1m5Pupo26iVsTwMviL
 BII2ZJ57DGfNpTwWJRmQutiy9ShTiPdhwxmXABX747W0eQzc550OdPsm5
 rpWD5MZ89w1xiu5VV5z9BWd1gcbcOOohNBzMQ2LkkDJ5lU5buZs75+DFN
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SNEygofr
Subject: [Intel-wired-lan] [PATCH net-next v5 0/5] add v2 FW logging for ice
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

The following new device parameters are added:
- fwlog_supported (read-only): does the FW support FW logging
- fwlog_enabled (read/write): is FW logging currently running
- fwlog_level (read/write): the log level enabled, valid values are
    Each level includes the messages from the previous/lower level
	0 - no logging
	1 - error logging
	2 - warning logging
	3 - normal logging
	4 - verbose logging
- fwlog_resolution (read/write): the number of log messages to included
  in a single ARQ event. The range is 1-128 (1 means push every log
  message, 128 means push only when the max AQ command buffer is full).
  The suggested value is 10.

This patch series adds the following set of devlink commands:

devlink dev param set <pci dev> name fwlog_enabled value <true/false> cmode runtime
devlink dev param set <pci dev> name fwlog_level value <0-4> cmode runtime
devlink dev param set <pci dev> name fwlog_resolution value <1-128> cmode runtime
---
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
  ice: enable devlink to check FW logging status
  ice: add ability to query/set FW log level and resolution
  ice: disable FW logging on driver unload
  ice: use debugfs to output FW log data

 Documentation/networking/devlink/ice.rst      |  39 ++
 drivers/net/ethernet/intel/ice/Makefile       |   5 +-
 drivers/net/ethernet/intel/ice/ice.h          |  22 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 160 +++----
 drivers/net/ethernet/intel/ice/ice_common.c   | 218 +---------
 drivers/net/ethernet/intel/ice/ice_common.h   |   1 -
 drivers/net/ethernet/intel/ice/ice_debugfs.c  | 109 +++++
 drivers/net/ethernet/intel/ice/ice_devlink.c  | 200 ++++++++-
 drivers/net/ethernet/intel/ice/ice_fwlog.c    | 392 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_fwlog.h    |  57 +++
 drivers/net/ethernet/intel/ice/ice_main.c     | 100 ++++-
 drivers/net/ethernet/intel/ice/ice_type.h     |  23 +-
 12 files changed, 1009 insertions(+), 317 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_debugfs.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.h

-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
