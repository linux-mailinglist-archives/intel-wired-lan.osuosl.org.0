Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FDD3810957
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Dec 2023 06:08:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2C95760E96;
	Wed, 13 Dec 2023 05:08:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2C95760E96
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702444081;
	bh=FpUhP/s1jnCLCdVyUmxUkGE0JKx0jwqw43W/ZKUw6xs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9LJO23lUKMvyoFkmraTwMzD6jVRl22ZZloEMU/IeJSg2/TtNCNZ3zb2QMWQncC731
	 DLx7+Z+ZBGfMO4yDBT9164uM23pQSDdHKxrmYHoMmqw0jL3vyXP819fZR+rU4oORFw
	 izOwEzK7WXlF4TrWd6pvCyjOo7pIw7NMEhVaSlsoqwbtzDUhncSk/01sSmnECBO9G5
	 L1YfgqMYsAgclCA0oe16ar7RWImcVY3nMywM+5SNNnh546QySvkhivSZ40etfs8pb4
	 FNHjSQ7hWH6yGpxrQNUTSV0d1KxJ//4+ExcO7/1W6kQaJtv6TRsabldsnx+8np0HX5
	 0MCmqbqKhi4yA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GbvyOjWXDJB2; Wed, 13 Dec 2023 05:08:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CD61C60D94;
	Wed, 13 Dec 2023 05:07:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CD61C60D94
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B5A171BF2CE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 05:07:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8BB5D41BE3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 05:07:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8BB5D41BE3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ih3oA-vLNkiy for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Dec 2023 05:07:39 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A92DB41BF0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 05:07:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A92DB41BF0
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="385332370"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="385332370"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 21:07:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="897192639"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="897192639"
Received: from pmstillw-desk1.amr.corp.intel.com ([10.212.121.197])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 21:07:26 -0800
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 12 Dec 2023 21:07:15 -0800
Message-Id: <20231213050715.190-6-paul.m.stillwell.jr@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231213050715.190-1-paul.m.stillwell.jr@intel.com>
References: <20231213050715.190-1-paul.m.stillwell.jr@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702444059; x=1733980059;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=J+XXuGXCvRdgXWGWvzMFI9W4pY7G/gio1+ayiIBhLio=;
 b=kBgANiaZUj/+cx/6I2gyFQkNP4GFwqWm8g1XRqYTv3JfC/oqazdVBODm
 fkoGBf25LeMvd/CZGt9OkpjE6+XtlGhX09LHWpF9fnPbSL8Wmq4cDUZgK
 +DOr2sXvs0N2SaD3XqYthNaGjGcAmLNfPxh2TpywVS2tZzZ3fw4awPvQd
 LdHiJJ62NB+mzaguNL6mQhREGaW/It6gxKGVaghncFnnKcvtiyLWEsdCb
 LwTi1ZiVac92DQd1QxthQYZ/Jit/ZKtay6w9rQ0sVJ6thyCJu1iErsPxa
 EORBswJh43MWHtooqSyq9Jzp9mh1bHfBm7A1Opmpz9GH135lYzveEaM3x
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kBgANiaZ
Subject: [Intel-wired-lan] [PATCH net-next v21 5/5] ice: add documentation
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
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add documentation for FW logging in
Documentation/networking/device_drivers/ethernet/intel/ice.rst

Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 .../device_drivers/ethernet/intel/ice.rst     | 141 ++++++++++++++++++
 1 file changed, 141 insertions(+)

diff --git a/Documentation/networking/device_drivers/ethernet/intel/ice.rst b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
index e4d065c55ea8..5038e54586af 100644
--- a/Documentation/networking/device_drivers/ethernet/intel/ice.rst
+++ b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
@@ -895,6 +895,147 @@ driver writes raw bytes by the GNSS object to the receiver through i2c. Please
 refer to the hardware GNSS module documentation for configuration details.
 
 
+Firmware (FW) logging
+---------------------
+The driver supports FW logging via the debugfs interface on PF 0 only. The FW
+running on the NIC must support FW logging; if the FW doesn't support FW logging
+the 'fwlog' file will not get created in the ice debugfs directory.
+
+Module configuration
+~~~~~~~~~~~~~~~~~~~~
+Firmware logging is configured on a per module basis. Each module can be set to
+a value independent of the other modules (unless the module 'all' is specified).
+The modules will be instantiated under the 'fwlog/modules' directory.
+
+The user can set the log level for a module by writing to the module file like
+this::
+
+  # echo <log_level> > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/modules/<module>
+
+where
+
+* log_level is a name as described below. Each level includes the
+  messages from the previous/lower level
+
+      *	none
+      *	error
+      *	warning
+      *	normal
+      *	verbose
+
+* module is a name that represents the module to receive events for. The
+  module names are
+
+      *	general
+      *	ctrl
+      *	link
+      *	link_topo
+      *	dnl
+      *	i2c
+      *	sdp
+      *	mdio
+      *	adminq
+      *	hdma
+      *	lldp
+      *	dcbx
+      *	dcb
+      *	xlr
+      *	nvm
+      *	auth
+      *	vpd
+      *	iosf
+      *	parser
+      *	sw
+      *	scheduler
+      *	txq
+      *	rsvd
+      *	post
+      *	watchdog
+      *	task_dispatch
+      *	mng
+      *	synce
+      *	health
+      *	tsdrv
+      *	pfreg
+      *	mdlver
+      *	all
+
+The name 'all' is special and allows the user to set all of the modules to the
+specified log_level or to read the log_level of all of the modules.
+
+Example usage to configure the modules
+^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
+
+To set a single module to 'verbose'::
+
+  # echo verbose > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/modules/link
+
+To set multiple modules then issue the command multiple times::
+
+  # echo verbose > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/modules/link
+  # echo warning > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/modules/ctrl
+  # echo none > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/modules/dcb
+
+To set all the modules to the same value::
+
+  # echo normal > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/modules/all
+
+To read the log_level of a specific module (e.g. module 'general')::
+
+  # cat /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/modules/general
+
+To read the log_level of all the modules::
+
+  # cat /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/modules/all
+
+Enabling FW log
+~~~~~~~~~~~~~~~
+Configuring the modules indicates to the FW that the configured modules should
+generate events that the driver is interested in, but it **does not** send the
+events to the driver until the enable message is sent to the FW. To do this
+the user can write a 1 (enable) or 0 (disable) to 'fwlog/enable'. An example
+is::
+
+  # echo 1 > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/enable
+
+Retrieving FW log data
+~~~~~~~~~~~~~~~~~~~~~~
+The FW log data can be retrieved by reading from 'fwlog/data'. The user can
+write any value to 'fwlog/data' to clear the data. The data can only be cleared
+when FW logging is disabled. The FW log data is a binary file that is sent to
+Intel and used to help debug user issues.
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
+'fwlog/nr_messages'. The range is 1-128 (1 means push every log message, 128
+means push only when the max AQ command buffer is full). The suggested value is
+10. The user can see what the value is configured to by reading
+'fwlog/nr_messages'. An example to set the value is::
+
+  # echo 50 > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/nr_messages
+
+Configuring the amount of memory used to store FW log data
+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
+The driver stores FW log data within the driver. The default size of the memory
+used to store the data is 1MB. Some use cases may require more or less data so
+the user can change the amount of memory that is allocated for FW log data.
+To change the amount of memory then write to 'fwlog/log_size'. The value must be
+one of: 128K, 256K, 512K, 1M, or 2M. FW logging must be disabled to change the
+value. An example of changing the value is::
+
+  # echo 128K > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/log_size
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
