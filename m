Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E06D86761A3
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Jan 2023 00:35:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 804D9416E0;
	Fri, 20 Jan 2023 23:35:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 804D9416E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674257733;
	bh=cyrEp88CltvLngrNQS3sf5CL6N64m6Xl/aFO8glS2pw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=cjyc2ir25uefh/ilCUF7jwzp0UGz5e0JbMPkcXRelkliEMc+PnlHReHLaaBa32DTm
	 Ga78mnoIKSd5uXCktCWZkVsV+IPSXcLoSw8A5kkd4MEKyWg/mhesbnANt65LPZGQRu
	 eQ2NbAcSzjj8VUKESHGC5AmoAiTO4O7R6ffrGJCkXjRj3Px+QM0edgWi923bmZLPZy
	 l+R/2jD/MzGM/sry4VLk8qcd2CfccbxRbOiU5Qm55UeMmrgwxzL8LzZXIk7FaePN8n
	 q8ctuhq6My5Jw9jrWihrMQ1rSwlZ2yHZin5LKd723wz/SCBTSzIS8vog86Pq4JxS8s
	 Xki5yC1FlcWxw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZYV9PF9u50qo; Fri, 20 Jan 2023 23:35:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 51B62409EF;
	Fri, 20 Jan 2023 23:35:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 51B62409EF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 13E7E1BF4D5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jan 2023 23:35:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 92B58416D5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jan 2023 23:35:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 92B58416D5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wLwCSc6qVffQ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Jan 2023 23:35:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EC178409E9
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EC178409E9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jan 2023 23:35:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="327813065"
X-IronPort-AV: E=Sophos;i="5.97,233,1669104000"; d="scan'208";a="327813065"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 15:35:20 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="784714833"
X-IronPort-AV: E=Sophos;i="5.97,233,1669104000"; d="scan'208";a="784714833"
Received: from pmstillw-desk1.amr.corp.intel.com ([10.209.130.224])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 15:35:19 -0800
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 20 Jan 2023 15:35:06 -0800
Message-Id: <20230120233511.131-1-paul.m.stillwell.jr@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674257721; x=1705793721;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6OFyxcR0jud3HcJKHbkIkNjP8xa4YRSfL9DRx5/fQ0E=;
 b=JQxZ/T0Z243nPJmDXJXHFV/3X0JV36F2pbDpN+JWnoBOoD63gJGuubI+
 Vnm6Ffm1SOf3wTkbF8BH59BYn1Ueut/LvIarPtmhixwazRMEBfg9P4MKJ
 jQL/jxNWfPitsG06MzkDx6YltWgrFMhc6/wJJH1gUxCtwvtxEBW5ZgRXB
 we3MvDK82Wv4VYPcg+Uc3ymYlv/ZoO+E9xzjVMzSpifFuSd3NqxoWibU4
 XRbU03ffKGWZRBzOPxZdQyiu9fQHsaGcT2qV6zU8Oa4ZlnERt/7PhT4IU
 u0ZZb9lX437Tl/SkFb0g2/WDD9NX3PQtRavZKdJK0EQ8p3vExEbsagX26
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JQxZ/T0Z
Subject: [Intel-wired-lan] [PATCH net-next v7 0/5] add v2 FW logging for ice
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
  ice: enable devlink to check FW logging status
  ice: add ability to query/set FW log level and resolution
  ice: disable FW logging on driver unload
  ice: use debugfs to output FW log data

 Documentation/networking/devlink/ice.rst      |  39 ++
 drivers/net/ethernet/intel/ice/Makefile       |   5 +-
 drivers/net/ethernet/intel/ice/ice.h          |  22 ++
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 160 ++++----
 drivers/net/ethernet/intel/ice/ice_common.c   | 218 +----------
 drivers/net/ethernet/intel/ice/ice_common.h   |   1 -
 drivers/net/ethernet/intel/ice/ice_debugfs.c  | 115 ++++++
 drivers/net/ethernet/intel/ice/ice_devlink.c  | 200 +++++++++-
 drivers/net/ethernet/intel/ice/ice_fwlog.c    | 367 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_fwlog.h    |  57 +++
 drivers/net/ethernet/intel/ice/ice_main.c     | 100 ++++-
 drivers/net/ethernet/intel/ice/ice_type.h     |  23 +-
 12 files changed, 990 insertions(+), 317 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_debugfs.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.h

-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
