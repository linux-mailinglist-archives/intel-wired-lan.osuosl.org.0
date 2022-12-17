Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 904E664F7A9
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Dec 2022 05:59:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C2FF340535;
	Sat, 17 Dec 2022 04:59:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C2FF340535
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671253158;
	bh=JfXzp60uMNhodfulLOZnNMebrqTES7J7htcehdc07BI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Smiry9KMFfTTWGSxsjRcIciqBTlwgj49/aIe1Gxct6N39XQTt5pWd0U0CmBxi+Qdy
	 8op6FE1fyfKrk2+Yenu0VoKceATsgFYWqLlPdYxiQaDo1e6L38oAPLasT+SpYN9K8d
	 VoR4QDVcxMwzQekoBD4qg8qVi+TPa/xDWEBtNJ0/4Xz2tVt8ULrs96HwU9hX3hJrOX
	 FR/+z3LhRnH1jpL9IAKitRkT2eQUrkNRJMXYAul5yoDtukoP/LmjB6ByomGmBHjgmN
	 wH6GknJFxxN2m3+DRaNzsOzeSyoq2ywafg979iJTjTF74HviGuJ0VnzAn6tNT9zg8Y
	 +akQF8VZ12ZfQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id efEnJwEodnwC; Sat, 17 Dec 2022 04:59:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A4ADE40472;
	Sat, 17 Dec 2022 04:59:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A4ADE40472
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ED7AE1BF23C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Dec 2022 04:59:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5E453611A1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Dec 2022 04:59:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5E453611A1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qGyVqejLHXq5 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 17 Dec 2022 04:59:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1749B60BE9
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1749B60BE9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Dec 2022 04:58:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10563"; a="317795015"
X-IronPort-AV: E=Sophos;i="5.96,252,1665471600"; d="scan'208";a="317795015"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2022 20:58:58 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10563"; a="627772669"
X-IronPort-AV: E=Sophos;i="5.96,252,1665471600"; d="scan'208";a="627772669"
Received: from pmstillw-desk1.amr.corp.intel.com ([10.213.163.232])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2022 20:58:57 -0800
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 16 Dec 2022 20:58:23 -0800
Message-Id: <20221217045828.222-1-paul.m.stillwell.jr@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671253140; x=1702789140;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FuAkPY8AYA+/3OQEPLDRL7r9uOzQXkR4DlCQzm6e9hc=;
 b=DiEtMIJqf7JX4dhbMkpcY+7f/kV2RUN7bABGcNIxcoBlVPPgrmasV8gj
 qpnEMRUJtstTK+rM/a5g+aeQ/N+YlgSl6uvJkJt5jGgNmgojyEolXJTDT
 51XHlxIKdd1SWXyHo4GHqdxswjA9GY+CMYKznILpp8qiNKCDGDGlFcq5v
 niG/J7y64JbdfRgAc6eCMZ3o3F5BMDOjY1rumCzQjo4nq7aNSxumd9ol0
 /1+IIAslhHbzTdJD7mPJsPJdqnI4brUodM38L/QjrB8UYTI3FR4VX0bPQ
 3Wkk8TelHIip/cRqHPm2+LJ6YB8WugwmVcn8nXVnOOvPdOdb6Bk1cYpc+
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DiEtMIJq
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
