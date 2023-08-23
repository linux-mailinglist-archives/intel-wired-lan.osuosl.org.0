Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D00786350
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Aug 2023 00:22:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3C9D961036;
	Wed, 23 Aug 2023 22:22:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3C9D961036
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692829344;
	bh=Jacro1WajCATkkCUUfhlQU5LVMRKn3+6zfcJ5mZjEP0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NUf2QimTNm7aETM9GZZ3w+dY47sPuJbFxaV3fDNo8h3aJV640LfuJjOYeMRJetcVF
	 GIRmkf8v6W0cY+qgK3jT7hfl74VkLFkqMuY71cJIZN9L7rYi72kSjAMi/khCKd2cyP
	 eAn7iuP1WtiA3bsC5QBQEQkiZd4CHac00sqo0qsCo9mKA7MaiXhDmlTjfa3aJdTj9p
	 eFRSXrfw5NlVdHJF8z58DTFbse8XRLdxlDdeYIDJaFhfMRF+1Eh5sZZp9uOguUzBW9
	 JVRXDaP562yGt0tWOPfY2+RqEVuN1RorgWDsVxb47Y6zIc1DqhpLDPNH5EtKgokoSd
	 m2i/cWirVu9pQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XywGwG0gTrO6; Wed, 23 Aug 2023 22:22:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F3DE760BC6;
	Wed, 23 Aug 2023 22:22:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F3DE760BC6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 194DC1BF280
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 22:22:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D859F60EB8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 22:22:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D859F60EB8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IAgLtg6UK2hC for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Aug 2023 22:22:05 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E532160EEB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 22:22:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E532160EEB
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="354617275"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="354617275"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 15:22:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="910683332"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="910683332"
Received: from pmstillw-desk1.amr.corp.intel.com ([10.212.25.147])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 15:22:04 -0700
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 23 Aug 2023 15:21:52 -0700
Message-Id: <20230823222152.106-6-paul.m.stillwell.jr@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230823222152.106-1-paul.m.stillwell.jr@intel.com>
References: <20230823222152.106-1-paul.m.stillwell.jr@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692829324; x=1724365324;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5TfCX6+1rDoidQBQHfi4qEinkKObfB+yjn82Ntds2OA=;
 b=OH4V/d6XWxxRBdcj+/266Upu8cL+1aKK5paniACWEXx52aPvn4BcMR1y
 e1xI7wdRf/LyBAmieNm2XQcSX2GFxBF91bjZ65e4d3tXXVmfWH7KflFd/
 GahfXKNGw4XKgd9YOHc0rVcVjHwI48/4Q4OmDZpdZnSADgz4a/QmpMCpF
 1UOlQDMCCK1OJSKWWGS5vUTOMypq1Ks63pzXntXNX9q7ICDN+F1ZKWtgj
 lvqB3nX8uOU4bF9B83SO8CfW3CmqMasL1JLd7R02jlkWwNHlUwKPKKIc1
 v/NBJUcC0p+HfWmdpNKh88DWHvvjqDKUB4vtkA0oaBrNp0hIb/l5XtTD4
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OH4V/d6X
Subject: [Intel-wired-lan] [PATCH net-next v16 5/5] ice: add documentation
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
v15->v16: minor updates to documentation based on community feedback
v14->v15: none
v13->v14: none
v12->v13: changed to imperitive, updated against latest version of file
v11->v12: separated out documentation to it's own patch
---
 .../device_drivers/ethernet/intel/ice.rst     | 117 ++++++++++++++++++
 1 file changed, 117 insertions(+)

diff --git a/Documentation/networking/device_drivers/ethernet/intel/ice.rst b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
index e4d065c55ea8..9042349f354a 100644
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
+To see the status of FW logging, read the 'fwlog/modules' file like this::
+
+  # cat /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/modules
+
+To configure FW logging, write to the 'fwlog/modules' file like this::
+
+  # echo <fwlog_event> <fwlog_level> > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/modules
+
+where
+
+* fwlog_level is a name as described below. Each level includes the
+  messages from the previous/lower level
+
+      *	NONE
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
+Once the desired modules are configured the user enables logging. To do
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
+To change the number of buffers write to 'fwlog/nr_buffs'. The value must be one
+of: 64, 128, 256, or 512. FW logging must be disabled to change the value. An
+example of changing the value is::
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
