Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 28910741C45
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jun 2023 01:15:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B7F8A60E17;
	Wed, 28 Jun 2023 23:15:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B7F8A60E17
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687994126;
	bh=2/JQ6l2k/CsaOttQxZ9r9EX+iKaUQpYg0X+OOjL7Ads=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6PQ6Pb+gy0wqi162KfeYNu1X/0u3jYXtmTWxP/ILO/BW7yOoLij1Jst3Jo2NTSxt0
	 +z+0qVHfW2G+nAAVuYOxSsdxRpwGxaBdmBqWoGySq6Rx6SRoXtDkCHwzZzczoZc34j
	 6lt8acbKh4NCo+twz7muQ0yDl3XGxqYo7k31BX/RXxTLnX/Afs2TRaHl2WZ9fGRfEf
	 j2Py7S4Lt5btzx8iqSZN0zC72+OmqBQHb++lvKA1T3FKCi3W2IyR+yKL/dDmhlu7W2
	 WVX5mpEy2VR+HRyKZWgYTcvT1qU6AQ7jjxIhTk0iEGYabPbW5CILgboOv3j8r098yG
	 UBlhOG8IBuLtw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rBfY-PAsHBMP; Wed, 28 Jun 2023 23:15:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6AF0D60AFF;
	Wed, 28 Jun 2023 23:15:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6AF0D60AFF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B4DF21BF2F9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 23:15:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 93AE9400F2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 23:15:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 93AE9400F2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dVF7RrMu7Bfz for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jun 2023 23:15:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D325640470
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D325640470
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 23:15:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="359470994"
X-IronPort-AV: E=Sophos;i="6.01,166,1684825200"; d="scan'208";a="359470994"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2023 16:14:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="667300581"
X-IronPort-AV: E=Sophos;i="6.01,166,1684825200"; d="scan'208";a="667300581"
Received: from pmstillw-desk1.amr.corp.intel.com ([10.209.143.119])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2023 16:14:15 -0700
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 28 Jun 2023 16:14:02 -0700
Message-Id: <20230628231402.176-6-paul.m.stillwell.jr@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230628231402.176-1-paul.m.stillwell.jr@intel.com>
References: <20230628231402.176-1-paul.m.stillwell.jr@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687994109; x=1719530109;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fn1aU1RQNxYaFCJiH4bDWjMA8K73tKxxzzZKbF0fBZg=;
 b=OHUQDFlyoD5J1tDfYWJS+SU/M6eJy81kZKx76ItU72UcgwzFtTAoKtkI
 3MgpdVpXBBdSlC15mvpQzWOFtE9kBsA3kGG0AWAsKROQzQW4EQgwJkfY3
 dHOPqL7/nrI4bmPPeuxu9M/q+xtKHTMjnzQ4o0AXB8nU29VElaemlX/8u
 hBJPDU62xUxyOz294agcfC9zs50wXR27IkiPJl1YeBTqJU9HdMsNNEqMf
 sYG64Pk3U+TfkK8Cb3IAxSJ7w8ZCya8ws67YM+8GxYR+jEsDet/3x61+E
 jHsqmWRMY4poYy41hOef3rwSyUOd5nM2aNduyzUui4MEAb+sL5i8tzNFR
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OHUQDFly
Subject: [Intel-wired-lan] [PATCH net-next v13 5/5] ice: add documentation
 for FW logging
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

Add documentation for FW logging in
Documentation/networking/device-drivers/ethernet/intel/ice.rst

Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
---
v12->v13: changed to imperitive, updated against latest version of file
v11->v12: separated out documentation to it's own patch
---
 .../device_drivers/ethernet/intel/ice.rst     | 117 ++++++++++++++++++
 1 file changed, 117 insertions(+)

diff --git a/Documentation/networking/device_drivers/ethernet/intel/ice.rst b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
index e4d065c55ea8..3ddef911faaa 100644
--- a/Documentation/networking/device_drivers/ethernet/intel/ice.rst
+++ b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
@@ -895,6 +895,123 @@ driver writes raw bytes by the GNSS object to the receiver through i2c. Please
 refer to the hardware GNSS module documentation for configuration details.
 
 
+Firmware (FW) logging
+---------------------
+The driver supports FW logging via the debugfs interface on PF 0 only. In order
+for FW logging to work, the NVM must support it. The 'fwlog' file will only get
+created in the ice debugfs directory if the NVM supports FW logging.
+
+Module configuration
+~~~~~~~~~~~~~~~~~~~~
+To see the status of FW logging then read the 'fwlog/modules' file like this::
+
+  # cat /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/modules
+
+To configure FW logging then write to the 'fwlog/modules' file like this::
+
+  # echo <fwlog_event> <fwlog_level> > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/modules
+
+where
+
+* fwlog_level is a name as described below. Each level includes the
+  messages from the previous/lower level
+
+      * NONE
+      *	ERROR
+      *	WARNING
+      *	NORMAL
+      *	VERBOSE
+
+* fwlog_event is a name that represents the module to receive events for. The
+  module names are
+
+      *	GENERAL
+      *	CTRL
+      *	LINK
+      *	LINK_TOPO
+      *	DNL
+      *	I2C
+      *	SDP
+      *	MDIO
+      *	ADMINQ
+      *	HDMA
+      *	LLDP
+      *	DCBX
+      *	DCB
+      *	XLR
+      *	NVM
+      *	AUTH
+      *	VPD
+      *	IOSF
+      *	PARSER
+      *	SW
+      *	SCHEDULER
+      *	TXQ
+      *	RSVD
+      *	POST
+      *	WATCHDOG
+      *	TASK_DISPATCH
+      *	MNG
+      *	SYNCE
+      *	HEALTH
+      *	TSDRV
+      *	PFREG
+      *	MDLVER
+      *	ALL
+
+The name ALL is special and specifies setting all of the modules to the
+specified fwlog_level.
+
+Example usage to configure the modules::
+
+  # echo LINK VERBOSE > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/modules
+
+Enabling FW log
+~~~~~~~~~~~~~~~
+Once the desired modules are configured the user will enable the logging. To do
+this the user can write a 1 (enable) or 0 (disable) to 'fwlog/enable'. An
+example is::
+
+  # echo 1 > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/enable
+
+Retrieving FW log data
+~~~~~~~~~~~~~~~~~~~~~~
+The FW log data can be retrieved by reading from 'fwlog/data'. The user can
+write to 'fwlog/data' to clear the data. The data can only be cleared when FW
+logging is disabled. The FW log data is a binary file that is sent to Intel and
+used to help debug user issues.
+
+An example to read the data is::
+
+  # cat /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/data > fwlog.bin
+
+An example to clear the data is::
+
+  # echo 0 > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/data
+
+Changing how often the log events are sent to the driver
+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
+The driver receives FW log data from the Admin Receive Queue (ARQ). The
+frequency that the FW sends the ARQ events can be configured by writing to
+'fwlog/resolution'. The range is 1-128 (1 means push every log message, 128
+means push only when the max AQ command buffer is full). The suggested value is
+10. The user can see what the value is configured to by reading
+'fwlog/resolution'. An example to set the value is::
+
+  # echo 50 > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/resolution
+
+Configuring the number of buffers used to store FW log data
+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
+The driver stores FW log data in a ring within the driver. The default size of
+the ring is 256 4K buffers. Some use cases may require more or less data so
+the user can change the number of buffers that are allocated for FW log data.
+To change the number of buffers write to 'fwlog/nr_buffs'. The value must be a
+power of two and between the values 64-512. FW logging must be disabled to
+change the value. An example of changing the value is::
+
+  # echo 128 > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/nr_buffs
+
+
 Performance Optimization
 ========================
 Driver defaults are meant to fit a wide variety of workloads, but if further
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
