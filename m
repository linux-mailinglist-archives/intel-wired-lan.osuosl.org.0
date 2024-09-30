Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 526DA98A579
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Sep 2024 15:39:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5E3EE40558;
	Mon, 30 Sep 2024 13:39:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cDFGomXR5hGw; Mon, 30 Sep 2024 13:39:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2842B405BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727703565;
	bh=vr7pV3xRDZ7kbxfA4ApdLU1DYBKoKieXsWKgCM9jEZM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eiYrZr7X47P6cdNgPZKMi3SOnHkBatzhN2Rp8FjWFrRqNG5PjzIgiU6VKFXRYVOor
	 LVC3hSW80kGzyp5G4xNixU2uB1bU38TDa85cRjG6OxIKTb+BZ0zfD/hLyP9gk1VSxS
	 td1QTrU0S1nQ4MfZ91gl7YL+Mo2sG7JhINA0IUS0miV1TA9o/rkzAZIe3QekfrAxYm
	 PgRnnXTLmPUMZnLml5+4X5nKwEMfjZPO8MTEoRLnIB8iOKWWpIba8KjcvJb2Xrpuhd
	 l7jnZPl98UXVKDMyfu5ZeYvuqpavcsy6Dhhl4aeTGZMEX+b3Jqp04SFyp/k4QTLu7j
	 XJKstkrnipyyg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2842B405BA;
	Mon, 30 Sep 2024 13:39:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 424A71BF300
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 13:39:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2F3F340118
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 13:39:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 50JP_nkAYryP for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Sep 2024 13:39:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EF6F14052D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EF6F14052D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EF6F14052D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 13:39:20 +0000 (UTC)
X-CSE-ConnectionGUID: Ink3N2+MTl6dYLlkoVLkvw==
X-CSE-MsgGUID: aqNq/sqUTqelBe2S0CRRuw==
X-IronPort-AV: E=McAfee;i="6700,10204,11211"; a="26601016"
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="26601016"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 06:39:21 -0700
X-CSE-ConnectionGUID: 5FZUgn7FTUWkL4vds5jRvQ==
X-CSE-MsgGUID: sYqFLxUITYqGjMNs4fSTyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="104109628"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa001.fm.intel.com with ESMTP; 30 Sep 2024 06:39:18 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 974B128195;
 Mon, 30 Sep 2024 14:39:16 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Mon, 30 Sep 2024 15:37:21 +0200
Message-Id: <20240930133724.610512-5-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20240930133724.610512-1-przemyslaw.kitszel@intel.com>
References: <20240930133724.610512-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727703561; x=1759239561;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tSJvoTI7JMRNcMo45/NrSaup+zM/c96r4nWBeuj/344=;
 b=JdfGe312mE1yLFxTIToNeBCy9Cu7q2OA5Q4vBH8hg18aAB7AtKlfxk9N
 B2kVXx16Zb5hlaT5MF8J1V0xfgr2DISr2EPcqMLyGNppdnyIHvJ29XEJU
 m8xroPzfi3kGbq74rr1nsMipX9RBxzdxK7QMGFeI0rg/qXOpIDqzRRZMG
 qFDN2khy0DUjGQzUt/86B2igves4jGI0od6YYu9wL6X4J97FC4BfukXf0
 669HLHvwiZoLgqBQIL5m/wT5dRRg0DgTlf/yi2K6g4Sxc+blI86xmMKnk
 mkay47pLFK5irqKexme/QnSRSXCoQdvgtwo1OkGmScmK1RnL6JTa9XiEe
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JdfGe312
Subject: [Intel-wired-lan] [PATCH 4/7] ice: rename devlink_port.[ch] to
 port.[ch]
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
Cc: Jiri Pirko <jiri@resnulli.us>, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Joe Perches <joe@perches.com>, Jakub Kicinski <kuba@kernel.org>,
 Dwaipayan Ray <dwaipayanray1@gmail.com>, Andy Whitcroft <apw@canonical.com>,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Drop "devlink_" prefix from files that sit in devlink/.
I'm going to add more files there, and repeating "devlink" does not feel
good. This is also the scheme used in most other places, most notably the
devlink core files are named like that.

devlink.[ch] stays as is.

Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/Makefile                         | 2 +-
 .../net/ethernet/intel/ice/devlink/{devlink_port.h => port.h}   | 0
 drivers/net/ethernet/intel/ice/ice_eswitch.h                    | 2 +-
 drivers/net/ethernet/intel/ice/devlink/devlink.c                | 2 +-
 .../net/ethernet/intel/ice/devlink/{devlink_port.c => port.c}   | 2 +-
 drivers/net/ethernet/intel/ice/ice_main.c                       | 2 +-
 drivers/net/ethernet/intel/ice/ice_repr.c                       | 2 +-
 drivers/net/ethernet/intel/ice/ice_sf_eth.c                     | 2 +-
 8 files changed, 7 insertions(+), 7 deletions(-)
 rename drivers/net/ethernet/intel/ice/devlink/{devlink_port.h => port.h} (100%)
 rename drivers/net/ethernet/intel/ice/devlink/{devlink_port.c => port.c} (99%)

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index 3307d551f431..56aa23aee472 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -32,7 +32,7 @@ ice-y := ice_main.o	\
 	 ice_parser_rt.o \
 	 ice_idc.o	\
 	 devlink/devlink.o	\
-	 devlink/devlink_port.o \
+	 devlink/port.o \
 	 ice_sf_eth.o	\
 	 ice_sf_vsi_vlan_ops.o \
 	 ice_ddp.o	\
diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.h b/drivers/net/ethernet/intel/ice/devlink/port.h
similarity index 100%
rename from drivers/net/ethernet/intel/ice/devlink/devlink_port.h
rename to drivers/net/ethernet/intel/ice/devlink/port.h
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.h b/drivers/net/ethernet/intel/ice/ice_eswitch.h
index ac7db100e2cd..5c7dcf21b222 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.h
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.h
@@ -5,7 +5,7 @@
 #define _ICE_ESWITCH_H_
 
 #include <net/devlink.h>
-#include "devlink/devlink_port.h"
+#include "devlink/port.h"
 
 #ifdef CONFIG_ICE_SWITCHDEV
 void ice_eswitch_detach_vf(struct ice_pf *pf, struct ice_vf *vf);
diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
index 415445cefdb2..1b10682c00b8 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
@@ -6,7 +6,7 @@
 #include "ice.h"
 #include "ice_lib.h"
 #include "devlink.h"
-#include "devlink_port.h"
+#include "port.h"
 #include "ice_eswitch.h"
 #include "ice_fw_update.h"
 #include "ice_dcb_lib.h"
diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c b/drivers/net/ethernet/intel/ice/devlink/port.c
similarity index 99%
rename from drivers/net/ethernet/intel/ice/devlink/devlink_port.c
rename to drivers/net/ethernet/intel/ice/devlink/port.c
index 928c8bdb6649..b7308f508774 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
+++ b/drivers/net/ethernet/intel/ice/devlink/port.c
@@ -5,7 +5,7 @@
 
 #include "ice.h"
 #include "devlink.h"
-#include "devlink_port.h"
+#include "port.h"
 #include "ice_lib.h"
 #include "ice_fltr.h"
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 2fafb56728b2..8fc5be85c2ea 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -14,7 +14,7 @@
 #include "ice_dcb_lib.h"
 #include "ice_dcb_nl.h"
 #include "devlink/devlink.h"
-#include "devlink/devlink_port.h"
+#include "devlink/port.h"
 #include "ice_sf_eth.h"
 #include "ice_hwmon.h"
 /* Including ice_trace.h with CREATE_TRACE_POINTS defined will generate the
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethernet/intel/ice/ice_repr.c
index 970a99a52bf1..fb7a1b9a4313 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.c
+++ b/drivers/net/ethernet/intel/ice/ice_repr.c
@@ -4,7 +4,7 @@
 #include "ice.h"
 #include "ice_eswitch.h"
 #include "devlink/devlink.h"
-#include "devlink/devlink_port.h"
+#include "devlink/port.h"
 #include "ice_sriov.h"
 #include "ice_tc_lib.h"
 #include "ice_dcb_lib.h"
diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.c b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
index 75d7147e1c01..1a2c94375ca7 100644
--- a/drivers/net/ethernet/intel/ice/ice_sf_eth.c
+++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
@@ -5,8 +5,8 @@
 #include "ice_txrx.h"
 #include "ice_fltr.h"
 #include "ice_sf_eth.h"
-#include "devlink/devlink_port.h"
 #include "devlink/devlink.h"
+#include "devlink/port.h"
 
 static const struct net_device_ops ice_sf_netdev_ops = {
 	.ndo_open = ice_open,
-- 
2.39.3

