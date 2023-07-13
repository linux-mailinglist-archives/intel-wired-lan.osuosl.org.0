Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 77494752D01
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Jul 2023 00:26:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0557D421B6;
	Thu, 13 Jul 2023 22:26:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0557D421B6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689287202;
	bh=4LtZ/SWJLvoDeEu6SdABO4FbPiyRoxyoFfb1FRFUG7I=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UD+XBwdwucPSZ8aRQnwEagTgnet2Xx+zCf5paivXFfgHk5w9lYeIUfipSZlTkM8ug
	 baxQpQ938zXhNhOwJO9HJlyFwdDleMCbazH4fai9JxVj+0a0iO6BDXW8i4VX3ZnX/k
	 gls17HwqTMitCNKHJ877qlJ+IIDirtkZbMFQ4kNHrEUb4pC2mwEGiLf+XYqzgeErV5
	 XMVRgVyWaSNw47LwR5jS1agW+U/1s+VVVEzkPkYuJGUV1gFaZrDbtWrUvllLFMXDog
	 DDU0X+5oDXhS676Jz8D4hVEoZBZZOrOQt6YrK8FkxdQ+pH6xzRPEepdrLYF6+TyTQR
	 IlsFUa3+06B6g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vAq7-v0QFGMW; Thu, 13 Jul 2023 22:26:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 79DF542150;
	Thu, 13 Jul 2023 22:26:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 79DF542150
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 584EE1BF37E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 22:26:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 91E4283CE2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 22:26:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 91E4283CE2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nh9y0flRMrbP for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jul 2023 22:26:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E037C83CDF
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E037C83CDF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 22:26:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="355267548"
X-IronPort-AV: E=Sophos;i="6.01,204,1684825200"; d="scan'208";a="355267548"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 15:26:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="835782042"
X-IronPort-AV: E=Sophos;i="6.01,204,1684825200"; d="scan'208";a="835782042"
Received: from pmstillw-desk1.amr.corp.intel.com ([10.212.113.99])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 15:26:07 -0700
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 13 Jul 2023 15:25:58 -0700
Message-Id: <20230713222558.142-6-paul.m.stillwell.jr@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230713222558.142-1-paul.m.stillwell.jr@intel.com>
References: <20230713222558.142-1-paul.m.stillwell.jr@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689287183; x=1720823183;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Esptf6pe3R9mlyRVYUIIidbqeyBwSLnz8ZZvCgfNDVI=;
 b=ePpkF9rdmPjp446s111NAQLFBX0V4hOsWNd3DjAk9gwlooraznpSl2Jt
 xTjybN7257elZTQyfnC0hvhIAVitTPyXNiLJC/IchgktO/sUf4wJu/eER
 Fi4coGacd6faCpEfZ+GI0OSaCvAlvA9LBqosGCSrN22Xqzdph58oc+8x1
 1UQQQjfNi1t3vDZWoAVCrR4NylwC7OEqCUhmN1yOApURrNukk5tM5jgWC
 wcPxYbm79ExFZ0jqVzXdNHmTL5EyxDdRwX+g6kefoWndItmpwH1vVYYqz
 37aQUsfN0irxca8BeACZtLbnofeQG7TjvkqPnJTrsz5+2ZxdIPjNWDDLj
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ePpkF9rd
Subject: [Intel-wired-lan] [PATCH net-next v14 5/5] ice: add documentation
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
v13->v14: none
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
