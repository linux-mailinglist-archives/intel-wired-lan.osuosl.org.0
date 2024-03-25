Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D946B88B2C9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Mar 2024 22:30:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 840FE81A30;
	Mon, 25 Mar 2024 21:30:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3w-zCK5I-vNg; Mon, 25 Mar 2024 21:30:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A70A081D2D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711402210;
	bh=KLZ3q6pP+4/NhKcSOIOWirm7TtozfIWOf+GQOTj007U=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LCJ5h7QLOlPmJuTCH32hLWaefWard9mNcL7hFaTVRArGyhUvJ+a6IUKjoGoAfVexd
	 U907iQrQmUcstmeif55vnvwem7n39df5gzUCw1wWKmpp6VyD4Sr+3aCPid9O6WnO04
	 iR7ZTbUf8djPkJzPcXBXFmm9KdynotS6ytgw2Lm76gef4PtOgZHoDm9Bl+ZuyfHX6m
	 td6VDmXb6CVt5Zv4hKRhY6dI0kKlWSPdKOZ5aKTfGcjCxL98yP48eX4K99/bklanhN
	 tQAFU4bg8YKigXid1kJNo5Xx1nZbKyALSEYY3tN2wCP4bHRsvFhNlShfRKjSLRXgQO
	 fGLHEMEZvYb2Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A70A081D2D;
	Mon, 25 Mar 2024 21:30:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 687891BF2CB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Mar 2024 21:30:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 53EBF4068C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Mar 2024 21:30:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5RCU7FmZyV2b for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Mar 2024 21:30:04 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 334B5406BD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 334B5406BD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 334B5406BD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Mar 2024 21:30:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="17064535"
X-IronPort-AV: E=Sophos;i="6.07,154,1708416000"; d="scan'208";a="17064535"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 14:30:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,154,1708416000"; d="scan'208";a="15713496"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by orviesa009.jf.intel.com with ESMTP; 25 Mar 2024 14:30:02 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 25 Mar 2024 22:34:31 +0100
Message-ID: <20240325213433.829161-2-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240325213433.829161-1-michal.swiatkowski@linux.intel.com>
References: <20240325213433.829161-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711402204; x=1742938204;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AUpmNmysBzG1tSFAGWm7XFVFw8guyJsqdKGSo4+2cQ4=;
 b=WCWlFKurGfV3A6awKwQdSrpln3HwlcRqJBFUsv3KfuFCe3MGmhiRV306
 vqIGLvYKWVvCnI2P7DXK7KbICUgvaynhEG4YLx0yDorAuY7MUzwIZxwxM
 0W0DZS5CXjviXUR2HTCDTeINaMIPlnzh7drrvOs4q32N3cye61DfiGuTN
 IUuAQekYfc2CqJrgAqOxL0x2Kgj8dJBJz3osQ9SzzxTiHyA0CfwG1qlkm
 SEA2oyyffxOyyytrT1V4Qf+TkK5lrZPSd3HXzkNjJkhXwWvRId2G2Lwp5
 RlVmgZPARzTd4PQdS0R6fEAZiuDiT61Y6cKLSBiTIK/RAqqHkz1Jywgy9
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WCWlFKur
Subject: [Intel-wired-lan] [iwl-next v1 1/3] ice: move ice_devlink.[ch] to
 devlink folder
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>, netdev@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Only moving whole files, fixing Makefile and bunch of includes.

Some changes to ice_devlink file was done even in representor part (Tx
topology), so keep it as final patch to not mess up with rebasing.

After moving to devlink folder there is no need to have such long name
for these files. Rename them to simple devlink.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/Makefile                        | 3 ++-
 .../ethernet/intel/ice/{ice_devlink.c => devlink/devlink.c}    | 2 +-
 .../ethernet/intel/ice/{ice_devlink.h => devlink/devlink.h}    | 0
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c                   | 2 +-
 drivers/net/ethernet/intel/ice/ice_eswitch.c                   | 2 +-
 drivers/net/ethernet/intel/ice/ice_lib.c                       | 2 +-
 drivers/net/ethernet/intel/ice/ice_main.c                      | 2 +-
 drivers/net/ethernet/intel/ice/ice_repr.c                      | 2 +-
 8 files changed, 8 insertions(+), 7 deletions(-)
 rename drivers/net/ethernet/intel/ice/{ice_devlink.c => devlink/devlink.c} (99%)
 rename drivers/net/ethernet/intel/ice/{ice_devlink.h => devlink/devlink.h} (100%)

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index cddd82d4ca0f..97edd0dfba26 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -5,6 +5,7 @@
 # Makefile for the Intel(R) Ethernet Connection E800 Series Linux Driver
 #
 
+subdir-ccflags-y += -I$(src)
 obj-$(CONFIG_ICE) += ice.o
 
 ice-y := ice_main.o	\
@@ -28,7 +29,7 @@ ice-y := ice_main.o	\
 	 ice_flex_pipe.o \
 	 ice_flow.o	\
 	 ice_idc.o	\
-	 ice_devlink.o	\
+	 devlink/devlink.o	\
 	 ice_ddp.o	\
 	 ice_fw_update.o \
 	 ice_lag.o	\
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
similarity index 99%
rename from drivers/net/ethernet/intel/ice/ice_devlink.c
rename to drivers/net/ethernet/intel/ice/devlink/devlink.c
index b516e42b41f0..d61bc8340326 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
@@ -5,7 +5,7 @@
 
 #include "ice.h"
 #include "ice_lib.h"
-#include "ice_devlink.h"
+#include "devlink.h"
 #include "ice_eswitch.h"
 #include "ice_fw_update.h"
 #include "ice_dcb_lib.h"
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.h b/drivers/net/ethernet/intel/ice/devlink/devlink.h
similarity index 100%
rename from drivers/net/ethernet/intel/ice/ice_devlink.h
rename to drivers/net/ethernet/intel/ice/devlink/devlink.h
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index 6e20ee610022..0a90f472de3c 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -3,7 +3,7 @@
 
 #include "ice_dcb_lib.h"
 #include "ice_dcb_nl.h"
-#include "ice_devlink.h"
+#include "devlink/devlink.h"
 
 /**
  * ice_dcb_get_ena_tc - return bitmap of enabled TCs
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index 9069725c71b4..cc20e17c0bec 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -7,7 +7,7 @@
 #include "ice_eswitch_br.h"
 #include "ice_fltr.h"
 #include "ice_repr.h"
-#include "ice_devlink.h"
+#include "devlink/devlink.h"
 #include "ice_tc_lib.h"
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index be32ace96da9..be10a88d00e9 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -7,7 +7,7 @@
 #include "ice_lib.h"
 #include "ice_fltr.h"
 #include "ice_dcb_lib.h"
-#include "ice_devlink.h"
+#include "devlink/devlink.h"
 #include "ice_vsi_vlan_ops.h"
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index cc1957c592b2..3184fac8804d 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -13,7 +13,7 @@
 #include "ice_fltr.h"
 #include "ice_dcb_lib.h"
 #include "ice_dcb_nl.h"
-#include "ice_devlink.h"
+#include "devlink/devlink.h"
 #include "ice_hwmon.h"
 /* Including ice_trace.h with CREATE_TRACE_POINTS defined will generate the
  * ice tracepoint functions. This must be done exactly once across the
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethernet/intel/ice/ice_repr.c
index 5f30fb131f74..116cb56aa962 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.c
+++ b/drivers/net/ethernet/intel/ice/ice_repr.c
@@ -3,7 +3,7 @@
 
 #include "ice.h"
 #include "ice_eswitch.h"
-#include "ice_devlink.h"
+#include "devlink/devlink.h"
 #include "ice_sriov.h"
 #include "ice_tc_lib.h"
 #include "ice_dcb_lib.h"
-- 
2.42.0

