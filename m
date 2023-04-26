Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C85996EFA86
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Apr 2023 20:57:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 66B4783C4C;
	Wed, 26 Apr 2023 18:57:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 66B4783C4C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682535455;
	bh=WTgZ7wZeuyV+nd6DEbEYYkKBl3unhdgxuN2UJR0jls4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Y6raDhjaY1w2SvAXCB4QfZxygMWeUxWcRrUQ/xducOSFkOIY1fkJC45H4B3mMkGyt
	 e4syBcd400fARvG8MKCFe8IrAaattpbUny5Oe3xDGxVEg8aslko4O1dK4wunMgr6ki
	 lKibjjx/+SBT0zdVf4rQ2h00FnUvyYLb7JNEUc5tDiJPvVdD9curccOd/Sq7hPoWkz
	 dMy2ADDxg5lE/qHPGfQCyQOYm9XMguXVSTptocbRZooQrJbydxD4pPh3lUvuHdgSoN
	 CYq8zZRDoxbqINy5WQR53L1ale2m57ZErN9vbp0YeiPTBmsSHOpHqPNcNfriM7Kc5x
	 x/RGHPDT/LEmw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 90-O2QLI1ggU; Wed, 26 Apr 2023 18:57:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4950D83C21;
	Wed, 26 Apr 2023 18:57:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4950D83C21
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 52B601BF847
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Apr 2023 18:57:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 365614067C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Apr 2023 18:57:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 365614067C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ljkthlh6LMdS for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Apr 2023 18:57:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 17EA040627
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 17EA040627
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Apr 2023 18:57:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="327529665"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="327529665"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 11:57:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="868396242"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="868396242"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.168])
 by orsmga005.jf.intel.com with ESMTP; 26 Apr 2023 11:57:09 -0700
From: Paul Greenwalt <paul.greenwalt@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 26 Apr 2023 11:50:47 -0700
Message-Id: <20230426185047.725910-3-paul.greenwalt@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230426185047.725910-1-paul.greenwalt@intel.com>
References: <20230426185047.725910-1-paul.greenwalt@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682535445; x=1714071445;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mlgj0NmWr7urst4KmLpJ5IiHhW81T0uqWpE7tGCMn8U=;
 b=VNiD+FZLIcmGIbr1NMcKmeWMxGRL1Xfm/OwHx5BPkWW+OoYLAiT/cl2L
 ufYl3+OVYJEwj122n/cINd0drwbZrFrYHOGH4uaUisCP51MB9oQWlW0XU
 vdCkKgjUmfDiIx3SW7+GDCQljXFRurGOACM5peqNYlklhfy+3LaiRIBVU
 ++CVRcX5SsYvsm9vmRQ/QGcTnr/HwVvSJM3NPP56eWLbzHnsFzK3/qtd6
 4EA+IA0ENAcYBH3xl+EBzQg0QN+T/ryhuRqnOzSqufUpgE4GvQ1Dg8/E6
 LNI9eBRULL5sk2v8k43PuWEBpX9AzgIeP9rVORhPnQEsKVVveWUD6zqrw
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VNiD+FZL
Subject: [Intel-wired-lan] [PATCH net 3/3] ice: update PHY type to ethtool
 link mode mapping
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

Some link modes can be more accurately reported due to newer link mode
values that have been added to the kernel; update those PHY type to report
modes that better reflect the link mode.

Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.h | 38 ++++++++++----------
 1 file changed, 19 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.h b/drivers/net/ethernet/intel/ice/ice_ethtool.h
index 00043ea9469a..b403ee79cd5e 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.h
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.h
@@ -36,11 +36,11 @@ phy_type_low_lkup[] = {
 	[10] = ICE_PHY_TYPE(5GB, 5000baseT_Full),
 	[11] = ICE_PHY_TYPE(5GB, 5000baseT_Full),
 	[12] = ICE_PHY_TYPE(10GB, 10000baseT_Full),
-	[13] = ICE_PHY_TYPE(10GB, 10000baseT_Full),
+	[13] = ICE_PHY_TYPE(10GB, 10000baseCR_Full),
 	[14] = ICE_PHY_TYPE(10GB, 10000baseSR_Full),
 	[15] = ICE_PHY_TYPE(10GB, 10000baseLR_Full),
 	[16] = ICE_PHY_TYPE(10GB, 10000baseKR_Full),
-	[17] = ICE_PHY_TYPE(10GB, 10000baseT_Full),
+	[17] = ICE_PHY_TYPE(10GB, 10000baseCR_Full),
 	[18] = ICE_PHY_TYPE(10GB, 10000baseKR_Full),
 	[19] = ICE_PHY_TYPE(25GB, 25000baseCR_Full),
 	[20] = ICE_PHY_TYPE(25GB, 25000baseCR_Full),
@@ -51,36 +51,36 @@ phy_type_low_lkup[] = {
 	[25] = ICE_PHY_TYPE(25GB, 25000baseKR_Full),
 	[26] = ICE_PHY_TYPE(25GB, 25000baseKR_Full),
 	[27] = ICE_PHY_TYPE(25GB, 25000baseKR_Full),
-	[28] = ICE_PHY_TYPE(25GB, 25000baseCR_Full),
-	[29] = ICE_PHY_TYPE(25GB, 25000baseKR_Full),
+	[28] = ICE_PHY_TYPE(25GB, 25000baseSR_Full),
+	[29] = ICE_PHY_TYPE(25GB, 25000baseCR_Full),
 	[30] = ICE_PHY_TYPE(40GB, 40000baseCR4_Full),
 	[31] = ICE_PHY_TYPE(40GB, 40000baseSR4_Full),
 	[32] = ICE_PHY_TYPE(40GB, 40000baseLR4_Full),
 	[33] = ICE_PHY_TYPE(40GB, 40000baseKR4_Full),
-	[34] = ICE_PHY_TYPE(40GB, 40000baseCR4_Full),
+	[34] = ICE_PHY_TYPE(40GB, 40000baseSR4_Full),
 	[35] = ICE_PHY_TYPE(40GB, 40000baseCR4_Full),
 	[36] = ICE_PHY_TYPE(50GB, 50000baseCR2_Full),
 	[37] = ICE_PHY_TYPE(50GB, 50000baseSR2_Full),
 	[38] = ICE_PHY_TYPE(50GB, 50000baseSR2_Full),
 	[39] = ICE_PHY_TYPE(50GB, 50000baseKR2_Full),
-	[40] = ICE_PHY_TYPE(50GB, 50000baseCR2_Full),
+	[40] = ICE_PHY_TYPE(50GB, 50000baseSR2_Full),
 	[41] = ICE_PHY_TYPE(50GB, 50000baseCR2_Full),
-	[42] = ICE_PHY_TYPE(50GB, 50000baseCR2_Full),
+	[42] = ICE_PHY_TYPE(50GB, 50000baseSR2_Full),
 	[43] = ICE_PHY_TYPE(50GB, 50000baseCR2_Full),
-	[44] = ICE_PHY_TYPE(50GB, 50000baseCR2_Full),
-	[45] = ICE_PHY_TYPE(50GB, 50000baseCR2_Full),
-	[46] = ICE_PHY_TYPE(50GB, 50000baseSR2_Full),
-	[47] = ICE_PHY_TYPE(50GB, 50000baseSR2_Full),
-	[48] = ICE_PHY_TYPE(50GB, 50000baseKR2_Full),
-	[49] = ICE_PHY_TYPE(50GB, 50000baseCR2_Full),
-	[50] = ICE_PHY_TYPE(50GB, 50000baseCR2_Full),
+	[44] = ICE_PHY_TYPE(50GB, 50000baseCR_Full),
+	[45] = ICE_PHY_TYPE(50GB, 50000baseSR_Full),
+	[46] = ICE_PHY_TYPE(50GB, 50000baseLR_ER_FR_Full),
+	[47] = ICE_PHY_TYPE(50GB, 50000baseLR_ER_FR_Full),
+	[48] = ICE_PHY_TYPE(50GB, 50000baseKR_Full),
+	[49] = ICE_PHY_TYPE(50GB, 50000baseSR_Full),
+	[50] = ICE_PHY_TYPE(50GB, 50000baseCR_Full),
 	[51] = ICE_PHY_TYPE(100GB, 100000baseCR4_Full),
 	[52] = ICE_PHY_TYPE(100GB, 100000baseSR4_Full),
 	[53] = ICE_PHY_TYPE(100GB, 100000baseLR4_ER4_Full),
 	[54] = ICE_PHY_TYPE(100GB, 100000baseKR4_Full),
 	[55] = ICE_PHY_TYPE(100GB, 100000baseCR4_Full),
 	[56] = ICE_PHY_TYPE(100GB, 100000baseCR4_Full),
-	[57] = ICE_PHY_TYPE(100GB, 100000baseCR4_Full),
+	[57] = ICE_PHY_TYPE(100GB, 100000baseSR4_Full),
 	[58] = ICE_PHY_TYPE(100GB, 100000baseCR4_Full),
 	[59] = ICE_PHY_TYPE(100GB, 100000baseCR4_Full),
 	[60] = ICE_PHY_TYPE(100GB, 100000baseKR4_Full),
@@ -96,10 +96,10 @@ phy_type_low_lkup[] = {
 static const struct ice_phy_type_to_ethtool
 phy_type_high_lkup[] = {
 	[0] = ICE_PHY_TYPE(100GB, 100000baseKR2_Full),
-	[1] = ICE_PHY_TYPE(100GB, 100000baseCR4_Full),
-	[2] = ICE_PHY_TYPE(100GB, 100000baseCR4_Full),
-	[3] = ICE_PHY_TYPE(100GB, 100000baseCR4_Full),
-	[4] = ICE_PHY_TYPE(100GB, 100000baseCR4_Full),
+	[1] = ICE_PHY_TYPE(100GB, 100000baseSR2_Full),
+	[2] = ICE_PHY_TYPE(100GB, 100000baseCR2_Full),
+	[3] = ICE_PHY_TYPE(100GB, 100000baseSR2_Full),
+	[4] = ICE_PHY_TYPE(100GB, 100000baseCR2_Full),
 };
 
 #endif /* !_ICE_ETHTOOL_H_ */
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
