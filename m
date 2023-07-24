Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC1775F2DB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jul 2023 12:20:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 143D960F69;
	Mon, 24 Jul 2023 10:20:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 143D960F69
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690194038;
	bh=allFbS74HD9m4i7BaFNFXNMDcRd2P1DB2P8T8a8AddI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vdzOVHEC7GBcUtydjpXIkm1p5tV5HoXpOvQGQ89HHJS/LbbbZrI/AwZsUR4lSuWWq
	 Oax+nsZAU/MVjYINhfJJ4DRmUuAy4uD0Sz87WWvMcq8me3Ccf/8Pxhi1ID5k6qSA2B
	 00EWpHC5aELckPZjeYYG9+lKGU+WAC7Y4OUKOGcmH7I+wT6vqbl4AKPkCSakG7t4Tg
	 Jzg0InLMLSfztxRljbn6gk9ZTzRyQFz8mEgrX3YHyX+nsfl/AHh2gRCR9INLAxi7L3
	 U/Wtpx3NASqMUbKTRijzLlmXqrt0imL0DHJEPOHkwypppVcZ+kSQoyNcrAZxuE0RCP
	 i9CJ2QMhcCjAg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q4tgS_s2CXCM; Mon, 24 Jul 2023 10:20:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 74F0360B73;
	Mon, 24 Jul 2023 10:20:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 74F0360B73
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B208E1BF45A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 10:20:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 972274149F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 10:20:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 972274149F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ASF-QRbszt6t for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jul 2023 10:20:30 +0000 (UTC)
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A0D704146F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 10:20:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A0D704146F
X-IronPort-AV: E=McAfee;i="6600,9927,10780"; a="367428266"
X-IronPort-AV: E=Sophos;i="6.01,228,1684825200"; d="scan'208";a="367428266"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2023 03:13:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10780"; a="972206817"
X-IronPort-AV: E=Sophos;i="6.01,228,1684825200"; d="scan'208";a="972206817"
Received: from gk3153-or4-r750-36948.igk.intel.com ([10.102.19.252])
 by fmsmga006.fm.intel.com with ESMTP; 24 Jul 2023 03:13:23 -0700
From: Olga Zaborska <olga.zaborska@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 24 Jul 2023 12:06:22 +0200
Message-Id: <20230724100623.79886-3-olga.zaborska@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20230724100623.79886-1-olga.zaborska@intel.com>
References: <20230724100623.79886-1-olga.zaborska@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690194030; x=1721730030;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AqJqDAEnsZGCSIFkajnIdB27jd3VGPcGmnPl1n2e0vg=;
 b=G3FlXJ2O3ztA7prDsgNhu/f/W5CSSg3125RRS63EIJPXtLFHKIIiAwyH
 DbPYZL9B+wCMLwLVTHg/kvyIy3WnmRTcsKDTdEMADsh6StwwxPa3UsG4h
 2zQHDiEvfDzNazga3ITbo+yzttnnXt/LU0qYwZEXXwo5w/hkRoZABrQSh
 S8yzojW9OTB/1hKSbc9rUvZDlUgTkhRB0/LfKdQzHV/qbuML8ZIRW7Nbx
 PnTSYB1JKg2o5j5h0naylhWI8EBlBG7MwCaXlwVHomS93ncexHKrtH8kK
 +nfhrGcfjBNkSp/dbWtRqu7H5NDOGHhr4fOMy6oToROVqklX9FGLdNPC7
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=G3FlXJ2O
Subject: [Intel-wired-lan] [PATCH iwl-net v4 2/3] igbvf: Change IGBVF_MIN to
 allow set rx/tx value between 64 and 80
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
Cc: Olga Zaborska <olga.zaborska@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Change the minimum value of RX/TX descriptors to 64 to enable setting the rx/tx value
between 64 and 80. All igbvf devices can use as low as 64 descriptors.
This change will unify igbvf with other drivers.
Based on commit 7b1be1987c1e ("e1000e: lower ring minimum size to 64")

Fixes: d4e0fe01a38a ("igbvf: add new driver to support 82576 virtual functions")
Signed-off-by: Olga Zaborska <olga.zaborska@intel.com>
---
v1->v2 fixed commit title and message
v2->v3 fixed commit title and message, added changes for igb and igc
v3->v4 fixed commit message
---
 drivers/net/ethernet/intel/igbvf/igbvf.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igbvf/igbvf.h b/drivers/net/ethernet/intel/igbvf/igbvf.h
index 57d39ee00b58..7b83678ba83a 100644
--- a/drivers/net/ethernet/intel/igbvf/igbvf.h
+++ b/drivers/net/ethernet/intel/igbvf/igbvf.h
@@ -39,11 +39,11 @@ enum latency_range {
 /* Tx/Rx descriptor defines */
 #define IGBVF_DEFAULT_TXD	256
 #define IGBVF_MAX_TXD		4096
-#define IGBVF_MIN_TXD		80
+#define IGBVF_MIN_TXD		64
 
 #define IGBVF_DEFAULT_RXD	256
 #define IGBVF_MAX_RXD		4096
-#define IGBVF_MIN_RXD		80
+#define IGBVF_MIN_RXD		64
 
 #define IGBVF_MIN_ITR_USECS	10 /* 100000 irq/sec */
 #define IGBVF_MAX_ITR_USECS	10000 /* 100    irq/sec */
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
