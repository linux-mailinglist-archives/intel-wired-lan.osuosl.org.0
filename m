Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D5A964F7B6
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Dec 2022 06:07:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 66773821DB;
	Sat, 17 Dec 2022 05:07:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 66773821DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671253649;
	bh=+HKC8ZfFPXCEmyaNwOhA5AiUMoJ6KN4ViTjjB6iqtfM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=zuESH2QpnMkwDorahzaZFSvC9uj0lAXl76OCizs2SRPNGi0Tb3fLhxoVzsR6Rm9RG
	 KUr031da50Obi7gVRWRtjaUgc277kxQ1Xpfetg9+YcWroCYG3THoNmEeiMPd+MX9jC
	 BvMhTezVmnlY9NGegi8PPp4ss29WskD24mUVlZNbykLQgnFKVCMkJQZQtk0EaLZ2Yf
	 +DzJbmKaCW+96iKt1tLRbJ2JgjgRLuL42+KpHO+Evvk7Zgsrrfu+r5RU9H6W4cq3SE
	 jMo/a5azPySchHJ3P3z6JozNK4cpc0YZbaVJJgR86t+9Ias4TIV3NrD4uEi3VCatlL
	 Yqb3Et+SWt5wQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LDK87pXN70Gd; Sat, 17 Dec 2022 05:07:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 57ECF821C4;
	Sat, 17 Dec 2022 05:07:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 57ECF821C4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9BC251BF38B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Dec 2022 05:07:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7977A611A3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Dec 2022 05:07:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7977A611A3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hL_W0DLlMKR1 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 17 Dec 2022 05:07:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AD4E260C06
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AD4E260C06
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Dec 2022 05:07:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10563"; a="316741929"
X-IronPort-AV: E=Sophos;i="5.96,252,1665471600"; d="scan'208";a="316741929"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2022 21:07:22 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10563"; a="643479287"
X-IronPort-AV: E=Sophos;i="5.96,252,1665471600"; d="scan'208";a="643479287"
Received: from pmstillw-desk1.amr.corp.intel.com ([10.213.163.232])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2022 21:07:21 -0800
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 16 Dec 2022 21:07:09 -0800
Message-Id: <20221217050714.314-1-paul.m.stillwell.jr@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671253642; x=1702789642;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wD5HHk68g14WbQzR8ecocPoogkoMQN9ImRTOlwlbyec=;
 b=mFPcq8n/HyMVZTN1x296ievQr8I0Y+8MEPePlw2ga1N9HGgsTbWn4kDG
 JEbf/0+8UKet+8flVgo1iY8je59ZxJa5d2EPefqRy7KaqxlHMO5ueHl8u
 1lbpPMqeeHskMzVYmTECD/BUmSNdodhtzJTgEL2LolyC54YujKfdLSquP
 TuQJGYkb1TTY/gpT8IdTO2Og7JfvyU8PM6h0D8+yvnnkKalDYQY2E7sN2
 bplItfsRJVtM0nzXDue47Y9cewto1bepTVPh5plE4uQh+oQpYxNxiehh8
 eHgwseMmSAUZ9wVHJiB+K2CO+1rU9RL0VYw11xgEEVqCyDRerfOumuCTS
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mFPcq8n/
Subject: [Intel-wired-lan] [PATCH net-next v3 0/5] add v2 FW logging for ice
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
adds more controls knobs to get the exact data out of the FW
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
v4:
- actually changed the modes in ice.rst foir new params
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
 drivers/net/ethernet/intel/ice/Makefile       |   4 +-
 drivers/net/ethernet/intel/ice/ice.h          |  22 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 160 +++----
 drivers/net/ethernet/intel/ice/ice_common.c   | 218 +---------
 drivers/net/ethernet/intel/ice/ice_common.h   |   1 -
 drivers/net/ethernet/intel/ice/ice_debugfs.c  | 109 +++++
 drivers/net/ethernet/intel/ice/ice_devlink.c  | 200 ++++++++-
 drivers/net/ethernet/intel/ice/ice_fwlog.c    | 392 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_fwlog.h    |  57 +++
 drivers/net/ethernet/intel/ice/ice_main.c     |  97 ++++-
 drivers/net/ethernet/intel/ice/ice_type.h     |  23 +-
 12 files changed, 1005 insertions(+), 317 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_debugfs.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.h

-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
