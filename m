Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5165B8063D3
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Dec 2023 02:01:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8AC2E6141F;
	Wed,  6 Dec 2023 01:01:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8AC2E6141F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701824501;
	bh=mFQbl/bhHaRJY47JpoAVY7dFAvui/sISSXEJIPH0TF0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TOzruKyToLIOmJkR2xfBV2XoA75KLZmNSSTBtPFfQG4qj2259Gt8vsRWVXNoihDNX
	 j7OeYtcXYNJJHRl2x2TijnQrJpbJ+nd3EDD+Vq8fyX1jhMtnD8sqBXjI6odYbW4B1E
	 9wG4cPwJI31x+kBzVzJvq/7bFcwAssIUmebsh6vsbZLYupTbWZ0Uq4himqAG87NO7V
	 jZJCkOv4tylNlUvn3SRCUKkrSGJwq3Iwng6OFnND++nwW+PtDFjXyHygXTXxjbjV5T
	 cBETMmOhMGC/kto598avyweB9eRwQrKVmg3cLbYhf7a+6frSn4JN21S8b7A/uSngRO
	 pQLbW9PGPJELg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8W-BMU766lLJ; Wed,  6 Dec 2023 01:01:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7FA91610F2;
	Wed,  6 Dec 2023 01:01:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7FA91610F2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9B62A1BF97D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 01:01:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6825441B6A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 01:01:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6825441B6A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZGlUV8ap9MU8 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Dec 2023 01:01:33 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A2C7841721
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 01:01:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A2C7841721
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="12700274"
X-IronPort-AV: E=Sophos;i="6.04,254,1695711600"; d="scan'208";a="12700274"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 17:01:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="841655229"
X-IronPort-AV: E=Sophos;i="6.04,254,1695711600"; d="scan'208";a="841655229"
Received: from jbrandeb-spr1.jf.intel.com ([10.166.28.233])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 17:01:31 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  5 Dec 2023 17:01:00 -0800
Message-Id: <20231206010114.2259388-2-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20231206010114.2259388-1-jesse.brandeburg@intel.com>
References: <20231206010114.2259388-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701824494; x=1733360494;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bssGAbRo6EZ7uH9j8e/gpjKd/Bpnhc8jnprKFrUZrJs=;
 b=V1k/7oBbAlr/1GjEVBSDIHBCwMxOf0mk0Pzby+igDoVd0Ejt6pWLYucX
 /Q+5zT8jW7c2CncglrTuBKu9PWfOZ62O5kWQj8PQ95ctRZj2vL4oUWiZK
 PkhPOrS7s0RgAuaMP4zQy6n5vvbG6IO3A8iQ/abG7lSRGJQ4cYYasT6pT
 +CriDQCZKgwNvJOl1B4Ghk1iDkqaIewKbpLsioOsZN+E7fBEXXGBcVIrR
 ECoA0RWdKObq7yc2GfK8VlqDvC0Ekc38p+nf6AeLcxx6b6n5iN+yP6jm0
 11cQTHyY5HzuyXupufn55X1h3BDKH96uaNhMCCr7hHlrIHGZQutapMyx4
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=V1k/7oBb
Subject: [Intel-wired-lan] [PATCH iwl-next v2 01/15] e1000e: make lost bits
 explicit
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
Cc: przemyslaw.kitszel@intel.com, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 aleksander.lobakin@intel.com, marcin.szycik@linux.intel.com, horms@kernel.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

For more than 15 years this code has passed in a request for a page and
masked off that page when read/writing. This code has been here forever,
but FIELD_PREP finds the bug when converted to use it. Change the code
to do exactly the same thing but allow the conversion to FIELD_PREP in a
later patch. To make it clear what we lost when making this change I
left a comment, but there is no point to change the code to generate a
correct sequence at this point.

This is not a Fixes tagged patch on purpose because it doesn't change
the binary output.

Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/e1000e/80003es2lan.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/80003es2lan.c b/drivers/net/ethernet/intel/e1000e/80003es2lan.c
index be9c695dde12..74671201208e 100644
--- a/drivers/net/ethernet/intel/e1000e/80003es2lan.c
+++ b/drivers/net/ethernet/intel/e1000e/80003es2lan.c
@@ -1035,17 +1035,18 @@ static s32 e1000_setup_copper_link_80003es2lan(struct e1000_hw *hw)
 	 * iteration and increase the max iterations when
 	 * polling the phy; this fixes erroneous timeouts at 10Mbps.
 	 */
-	ret_val = e1000_write_kmrn_reg_80003es2lan(hw, GG82563_REG(0x34, 4),
-						   0xFFFF);
+	/* these next three accesses were always meant to use page 0x34 using
+	 * GG82563_REG(0x34, N) but never did, so we've just corrected the call
+	 * to not drop bits
+	 */
+	ret_val = e1000_write_kmrn_reg_80003es2lan(hw, 4, 0xFFFF);
 	if (ret_val)
 		return ret_val;
-	ret_val = e1000_read_kmrn_reg_80003es2lan(hw, GG82563_REG(0x34, 9),
-						  &reg_data);
+	ret_val = e1000_read_kmrn_reg_80003es2lan(hw, 9, &reg_data);
 	if (ret_val)
 		return ret_val;
 	reg_data |= 0x3F;
-	ret_val = e1000_write_kmrn_reg_80003es2lan(hw, GG82563_REG(0x34, 9),
-						   reg_data);
+	ret_val = e1000_write_kmrn_reg_80003es2lan(hw, 9, reg_data);
 	if (ret_val)
 		return ret_val;
 	ret_val =
-- 
2.39.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
