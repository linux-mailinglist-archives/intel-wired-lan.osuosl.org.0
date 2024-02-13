Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DA8878529C7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Feb 2024 08:24:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7BBB960B0D;
	Tue, 13 Feb 2024 07:23:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CfIWJXlWpBIz; Tue, 13 Feb 2024 07:23:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8DE8E60AF0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707809038;
	bh=frAaHlnVY/9dTF2fq2DPvAyEGCmi/SpdH3GXITukXEc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=i+5/Yl7Svn9ZyiQmHjshLvZa5uNH7to9HH08kyg2PUFzjGZcE6Q2uomzD/KdgSuu5
	 THOri+zEsyz+aSN9qEs5QgYhgiy4SQKi6Sm9S3hYVGEklF5PuT5yV5dIAz6XJ1iSGr
	 56GtQjwuDpFwwsRgdeYptzy3UriDpLm2dHwXc56j2H+iyPGMu/dmXvJmK23EKZ+LvG
	 yKMHNZiA6ExRGazQXim4mQyRxquxc4nsZsIQ2flo5EeLwbzCFKUwnv3Uc5QAuK5M66
	 mttUnvv8mRtIQm10cwZ5ti2akvHgxFvAqgdP+Lhq5mtclBQVZjyQK6HdR+3zA5HWgE
	 7e9zOR2O3EaXg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8DE8E60AF0;
	Tue, 13 Feb 2024 07:23:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2E0571BF5F5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 07:23:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 189B160AF6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 07:23:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JgZXqBB9gGbU for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Feb 2024 07:23:53 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5247B60B1C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5247B60B1C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5247B60B1C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 07:23:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="27248089"
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; d="scan'208";a="27248089"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2024 23:23:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; 
   d="scan'208";a="7385552"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by fmviesa003.fm.intel.com with ESMTP; 12 Feb 2024 23:23:47 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 13 Feb 2024 08:27:24 +0100
Message-ID: <20240213072724.77275-16-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240213072724.77275-1-michal.swiatkowski@linux.intel.com>
References: <20240213072724.77275-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707809033; x=1739345033;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aB/Tl50P5lqWpAy1hYl1ouA6J/Ma41ODTxAJ/YnOLc8=;
 b=HNY18ivRaQtK7ixgJHWKoa0qonfNxVjQ244w/MTQqKbKqDIPKBKSW2Ii
 yNDyMqkFFcc8dManq5utjq6PceDo7cYDz5DrU9Dqe9IN4AcFiCGaNUp/P
 1fCT6ijW1GXhRHsFGkwaKSFciK6rMty9tDkMxc2Ydh3AiebzxuT0Rngnj
 M7m6xagTV1N5+Ly9l4v0yShOCHS/ExDACNaiXKe6KxuHYaPkFTIhjytcu
 1SpG3euUTWQtbwlS8lZ6pI1pJIY9m23QunDV4IZeDTFY9Fn6+kMtQWJgd
 U8EM3ZkdxGBohA+s7GEx6bT4gDpe0BJaUP1n0kc0Wbw8EcZN4/MOZ8f+Q
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HNY18ivR
Subject: [Intel-wired-lan] [iwl-next v1 15/15] ice: move ice_devlink.[ch] to
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
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 maciej.fijalkowski@intel.com, sridhar.samudrala@intel.com,
 netdev@vger.kernel.org, michal.kubiak@intel.com, pio.raczynski@gmail.com,
 przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Only moving whole files, fixing Makefile and bunch of includes.

Some changes to ice_devlink file was done even in representor part (Tx
topology), so keep it as final patch to not mess up with rebasing.

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/Makefile                    | 2 +-
 drivers/net/ethernet/intel/ice/{ => devlink}/ice_devlink.c | 0
 drivers/net/ethernet/intel/ice/{ => devlink}/ice_devlink.h | 0
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c               | 2 +-
 drivers/net/ethernet/intel/ice/ice_eswitch.c               | 2 +-
 drivers/net/ethernet/intel/ice/ice_main.c                  | 2 +-
 drivers/net/ethernet/intel/ice/ice_repr.c                  | 2 +-
 drivers/net/ethernet/intel/ice/ice_sf_eth.c                | 2 +-
 8 files changed, 6 insertions(+), 6 deletions(-)
 rename drivers/net/ethernet/intel/ice/{ => devlink}/ice_devlink.c (100%)
 rename drivers/net/ethernet/intel/ice/{ => devlink}/ice_devlink.h (100%)

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index 6f350d8624d7..895cec763637 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -29,7 +29,7 @@ ice-y := ice_main.o	\
 	 ice_flex_pipe.o \
 	 ice_flow.o	\
 	 ice_idc.o	\
-	 ice_devlink.o	\
+	 devlink/ice_devlink.o	\
 	 devlink/ice_devlink_port.o	\
 	 ice_sf_eth.o	\
 	 ice_sf_vsi_vlan_ops.o \
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/devlink/ice_devlink.c
similarity index 100%
rename from drivers/net/ethernet/intel/ice/ice_devlink.c
rename to drivers/net/ethernet/intel/ice/devlink/ice_devlink.c
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.h b/drivers/net/ethernet/intel/ice/devlink/ice_devlink.h
similarity index 100%
rename from drivers/net/ethernet/intel/ice/ice_devlink.h
rename to drivers/net/ethernet/intel/ice/devlink/ice_devlink.h
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index 63ce4920de4e..3f6661390151 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -3,7 +3,7 @@
 
 #include "ice_dcb_lib.h"
 #include "ice_dcb_nl.h"
-#include "ice_devlink.h"
+#include "devlink/ice_devlink.h"
 
 /**
  * ice_dcb_get_ena_tc - return bitmap of enabled TCs
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index 50985a3732c0..416728d0674f 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -7,7 +7,7 @@
 #include "ice_eswitch_br.h"
 #include "ice_fltr.h"
 #include "ice_repr.h"
-#include "ice_devlink.h"
+#include "devlink/ice_devlink.h"
 #include "ice_tc_lib.h"
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 7ff96da33e8d..5129bce8538a 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -13,7 +13,7 @@
 #include "ice_fltr.h"
 #include "ice_dcb_lib.h"
 #include "ice_dcb_nl.h"
-#include "ice_devlink.h"
+#include "devlink/ice_devlink.h"
 #include "ice_hwmon.h"
 #include "devlink/ice_devlink_port.h"
 #include "ice_sf_eth.h"
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethernet/intel/ice/ice_repr.c
index fb0171afa43e..11ead0a0365d 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.c
+++ b/drivers/net/ethernet/intel/ice/ice_repr.c
@@ -3,7 +3,7 @@
 
 #include "ice.h"
 #include "ice_eswitch.h"
-#include "ice_devlink.h"
+#include "devlink/ice_devlink.h"
 #include "devlink/ice_devlink_port.h"
 #include "ice_sriov.h"
 #include "ice_tc_lib.h"
diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.c b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
index 3d30dfaed7d7..f00aabb68f0f 100644
--- a/drivers/net/ethernet/intel/ice/ice_sf_eth.c
+++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
@@ -6,7 +6,7 @@
 #include "ice_txrx.h"
 #include "ice_fltr.h"
 #include "ice_sf_eth.h"
-#include "ice_devlink.h"
+#include "devlink/ice_devlink.h"
 #include "devlink/ice_devlink_port.h"
 
 static const struct net_device_ops ice_sf_netdev_ops = {
-- 
2.42.0

