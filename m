Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CD92B66A5E0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jan 2023 23:23:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 67DF861151;
	Fri, 13 Jan 2023 22:23:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 67DF861151
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673648614;
	bh=pmpDwfcA8UbLmJyRofwycAN6L5OQJVnOwFgY6nZ+E4Y=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=IVl3pGF/5cpbPoNNj0HMHqjcpvXhrFsr2tV05goHqaThE5Z4gD1f7NmpI4BFyTKAi
	 /Y3NrsxM8qvP8tzFA/v4KcyiwP0eLxW2WuQ+POcUbjyX5VWqcfqKLxgC31+/0U+Wvx
	 pQ82tswiYBdzFDBoSqjtjtcVWZT3Ktkj/s9hr88p3LpeL0zHq1S4n4F0TU4fO3hRnt
	 F0u7fxdsj0j0v8y8Qxnkj0q7hlIe3TdDA6iJEc6khIDpwY4p6oJLmdQTQ0QNVGFjud
	 YPEAVbv6ho4FVSM0FkXd2Ztas7GHytkpDCW132qMbfd8RhSJVTN1GIw4AynQgooGU9
	 Wg9lEcrboceaQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FsUlxdo3RZK2; Fri, 13 Jan 2023 22:23:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 47C306059F;
	Fri, 13 Jan 2023 22:23:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 47C306059F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 112AA1BF399
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:23:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D7E61409B4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:23:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D7E61409B4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HqEK8h8tc9Y6 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jan 2023 22:23:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 66646403A8
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 66646403A8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:23:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="325372711"
X-IronPort-AV: E=Sophos;i="5.97,215,1669104000"; d="scan'208";a="325372711"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 14:23:25 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="635919470"
X-IronPort-AV: E=Sophos;i="5.97,215,1669104000"; d="scan'208";a="635919470"
Received: from pmstillw-desk1.amr.corp.intel.com ([10.213.185.209])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 14:23:25 -0800
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 13 Jan 2023 14:23:14 -0800
Message-Id: <20230113222319.111-1-paul.m.stillwell.jr@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673648606; x=1705184606;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NwZ2zFPQH98XodG5+Hg4Dft/djB10suQ10gC77Vz1xY=;
 b=ORKDfiiyi9Cn54JcbKwo4PkujTOHMkKtyK/OCFX0IpCqltyV5UWbXVSw
 6iTXxo758n39tiEHGcDUJ+Ibk+qued/+h0Z7mqAn9vGYk/7aVzv7+2fNf
 B0prkDxXaOUwEOFfSf6lUYlD8yZB+/u3+vZ4DHYXWiGKZqVCXsd7a2pl3
 wmPlTX7NI6H34P5JIpfysjw8WTC9JPzXefEmAvPz+K5Z1qapwAC9aC3aL
 O5/CIM7TF2c2IHQmJPfaw1gMui7fBAC+gQFBw9GTb2cCssxrJgQMzutQW
 0zkercAkp7uAGtLiMmYnKsEIofR75STf5rRaErOYhGjwC++69XVeGz+W9
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ORKDfiiy
Subject: [Intel-wired-lan] [PATCH net-next v6 0/5] add v2 FW logging for ice
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
 drivers/net/ethernet/intel/ice/ice_debugfs.c  | 109 ++++++
 drivers/net/ethernet/intel/ice/ice_devlink.c  | 200 +++++++++-
 drivers/net/ethernet/intel/ice/ice_fwlog.c    | 367 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_fwlog.h    |  57 +++
 drivers/net/ethernet/intel/ice/ice_main.c     | 100 ++++-
 drivers/net/ethernet/intel/ice/ice_type.h     |  23 +-
 12 files changed, 984 insertions(+), 317 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_debugfs.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.h

-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
