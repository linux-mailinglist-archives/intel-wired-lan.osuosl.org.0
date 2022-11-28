Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0128963B46C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Nov 2022 22:48:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 711AE60AED;
	Mon, 28 Nov 2022 21:48:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 711AE60AED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669672084;
	bh=6bpEKZChfspqYsEWPEqsoAbEVWK1jppVFnWeIh//zIw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Zz/23Ib7MvWa6QIlMZrmjv0TebBgNut21hth5yJitK2GJYX6i1Edf2koSK8Tdnymq
	 oGygGIjHpmVYtjQtBSC70ijGsbYTj95qUaC6ogZs362A2sgsKHnED/ANgKY25r02VB
	 vzIbJMB7Gzu6ldIN8e4xiCX3CpJghPMIyZrRrixyPQxtroA97mgYfklPBxbnNlKq14
	 b6yZFxR6f69VzD+L/m5I9Z7SDISGxhYe0qKOaZOA87f8ArA7UAbfeMX2le8ymlsvT0
	 l0EiirUlilQdf9+QcDiOvSzmkIjqDyELPj7kTE86IwoQGZZQTe0YjbrzmFrmKJHtAz
	 DIY4BxpFjK0+A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mivBlKC6R8L4; Mon, 28 Nov 2022 21:48:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4754860B10;
	Mon, 28 Nov 2022 21:48:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4754860B10
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 51D3D1BF8A8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 21:47:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2BA1E40A20
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 21:47:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2BA1E40A20
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hlNgq-SQ9k8f for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Nov 2022 21:47:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 681BE4011B
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 681BE4011B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 21:47:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="401240384"
X-IronPort-AV: E=Sophos;i="5.96,201,1665471600"; d="scan'208";a="401240384"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 13:47:51 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="972430276"
X-IronPort-AV: E=Sophos;i="5.96,201,1665471600"; d="scan'208";a="972430276"
Received: from pmstillw-desk1.amr.corp.intel.com ([10.213.170.9])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 13:47:51 -0800
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 28 Nov 2022 13:47:44 -0800
Message-Id: <20221128214749.110-1-paul.m.stillwell.jr@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669672072; x=1701208072;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dkccgtpjMG4GawFdeeHDs/7KLoUX+H1PwrwsSkegheQ=;
 b=iF6U69R1fxI9OPkvuHujfE8lykZVtJx9Ju4WdmD08Av+2Shh9qnSCMdr
 LbV8BhBzxoO1N0mLBQnDT5op5V06C1SqwXrCWOEf4HhjJGzfabXP6IZWt
 XH0yf8Jt+W4rAJofQpADrA0QC4DQWAaK6q9AuReUtHSaF/OV4cwsJxFd+
 A8fbmyOmPh2SjkOc8W9hwH1MKhd0NMJbJ/GCfwtZaVtTW1b1agPToLc21
 uq9sHx2BrS59I+dq9WTFtxO8dZ/6FJ08r8x5sYdTRHKVaasKHXSHDn3bl
 9wxkINlMDyEHv/wQ+Ss+5iuUPWV0GzBhhaCtgyotZMir72aCNt8B+9dy1
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iF6U69R1
Subject: [Intel-wired-lan] [PATCH net-next 0/5] add v2 FW logging for ice
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

Paul M Stillwell Jr (5):
  ice: remove FW logging code
  ice: enable devlink to check FW logging status
  ice: add ability to query/set FW log level and resolution
  ice: disable FW logging on driver unload
  ice: use debugfs to output FW log data

 drivers/net/ethernet/intel/ice/Makefile       |   4 +-
 drivers/net/ethernet/intel/ice/ice.h          |  24 ++
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 164 ++++----
 drivers/net/ethernet/intel/ice/ice_common.c   | 218 +---------
 drivers/net/ethernet/intel/ice/ice_debugfs.c  | 109 +++++
 drivers/net/ethernet/intel/ice/ice_devlink.c  | 205 ++++++++-
 drivers/net/ethernet/intel/ice/ice_fwlog.c    | 394 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_fwlog.h    |  56 +++
 drivers/net/ethernet/intel/ice/ice_main.c     |  99 ++++-
 drivers/net/ethernet/intel/ice/ice_type.h     |  23 +-
 10 files changed, 980 insertions(+), 316 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/ice_debugfs.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.c
 create mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.h

-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
