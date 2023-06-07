Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F30727195
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Jun 2023 00:25:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA097613E0;
	Wed,  7 Jun 2023 22:25:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA097613E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686176718;
	bh=OqBqi/1Ba9C26lojmegJ3ihzgiO7FYFjkSCZipZxZ4E=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kujKSpWyT4i9R5t+ubr1nruZkiAmvWDaweRM29K8VoDC51v2Z5pUAZZG1kZP0KO7L
	 OCR24/3AtSHXi7lO4fDTSnx2mizAyIhQNkLWb7ZGHWP6siUVs1DQXthzkOz9x8on0E
	 eQxluPxXb3/IqlB0KXaBVq8B1eyFroQyW5CmyPvbAh1dIBfSIU0NZPsIAn2MLXTUID
	 cHt3wxIyGtG3uKCuPVbewpb8ox0yTMhSlhM6a2t21ed1dfZTi0AoFw6Q933jGr73p3
	 uTgGsutxkcoj+4/dpq/LEG0oU2PQQv3ZaxKN+e0xwmzd0ZWZrbQxSpmB1IfereenTl
	 HDVNsmw27Gr0A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2HiQyrvlIrIV; Wed,  7 Jun 2023 22:25:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5097460A7B;
	Wed,  7 Jun 2023 22:25:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5097460A7B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 36BF51BF969
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 22:25:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DB58D4183C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 22:24:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DB58D4183C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t8i2mpjM9iJR for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jun 2023 22:24:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C379D4183E
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C379D4183E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 22:24:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="443493355"
X-IronPort-AV: E=Sophos;i="6.00,225,1681196400"; d="scan'208";a="443493355"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 15:24:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="774804956"
X-IronPort-AV: E=Sophos;i="6.00,225,1681196400"; d="scan'208";a="774804956"
Received: from pmstillw-desk1.amr.corp.intel.com ([10.212.90.221])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 15:24:56 -0700
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  7 Jun 2023 15:24:43 -0700
Message-Id: <20230607222443.119-5-paul.m.stillwell.jr@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230607222443.119-1-paul.m.stillwell.jr@intel.com>
References: <20230607222443.119-1-paul.m.stillwell.jr@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686176697; x=1717712697;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rAcWTpoem9pjoXDHOoRsmvKeT9bmsSyc9Uzrs7AoZhk=;
 b=E/5M59Oxg50o+l43luPyJtLpDgDFHcvt7xZRU0pa3VSRPvXIv5ALTYs+
 BqCNaAF8Y0mhUwTs2EdVT64Lh6KrpLhdgrZO0cECaidsnoByJojVJqqV2
 vWxHlMLPFkgW25X2qzfx5lgPuVNTt9zALn2qou1FPibuCyRyT3N620R07
 zUfSuADeqBSU7mQvKahVTGx18ZhgS9UrUuoZCvNA0VXNyYiiR7oruF6rY
 JRnQy/Zmj2DEiOUs01WGo7ib/HsJUvYsN/r9e5o39GNinkHeWF7sqvF4V
 BMj+l3TM72dvYDsQwQW531b3widWG0H2eSZod85wzi41AkDrazUxumgUX
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=E/5M59Ox
Subject: [Intel-wired-lan] [PATCH net-next v12 4/4] ice: added documentation
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

Added documentation for FW logging in
Documentation/networking/device-drivers/ethernet/intel/ice.rst

Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
---
v11->v12: separated out documentation to it's own patch
---
 .../device_drivers/ethernet/intel/ice.rst     | 126 +++++++++++++++++-
 1 file changed, 123 insertions(+), 3 deletions(-)

diff --git a/Documentation/networking/device_drivers/ethernet/intel/ice.rst b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
index 69695e5511f4..e0658c9af278 100644
--- a/Documentation/networking/device_drivers/ethernet/intel/ice.rst
+++ b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
@@ -817,10 +817,10 @@ NOTE:
 
 NAPI
 ----
-
 This driver supports NAPI (Rx polling mode).
+For more information on NAPI, see
+https://wiki.linuxfoundation.org/networking/napi
 
-See :ref:`Documentation/networking/napi.rst <napi>` for more information.
 
 MACVLAN
 -------
@@ -913,6 +913,123 @@ driver writes raw bytes by the GNSS object to the receiver through i2c. Please
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
+    # cat /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/modules
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
+    # cat /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/data > fwlog.bin
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
@@ -1026,9 +1143,12 @@ Support
 For general information, go to the Intel support website at:
 https://www.intel.com/support/
 
+or the Intel Wired Networking project hosted by Sourceforge at:
+https://sourceforge.net/projects/e1000
+
 If an issue is identified with the released source code on a supported kernel
 with a supported adapter, email the specific information related to the issue
-to intel-wired-lan@lists.osuosl.org.
+to e1000-devel@lists.sf.net.
 
 
 Trademarks
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
