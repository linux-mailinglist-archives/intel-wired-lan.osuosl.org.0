Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B94B57D5F5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Jul 2022 23:30:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D97CD40579;
	Thu, 21 Jul 2022 21:30:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D97CD40579
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658439024;
	bh=VMZiAPDJTj9EVxil6R+9jm12lUD9CPt3DpVfYPevkCo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AAzDfXLxMdWpxem85+60M1wtO3Ztaa19R/9QrXeb/in3aQSZB2yrThc8GcfKSFb3/
	 1Hk54Yg6WIaxzTpK51apACMCVN4Qvia5Y6mL7cYvwSxBgddCgp4qUnIi3QZUD+OPCC
	 27FsBDYCTV9h6DL5i/7OLlGc1dFbRghn9OCRP9UiaFKXuwLpTsKZxKBJTgn1rOeXaK
	 1pV4VZrQr0UMaj0JwP4KgnYWE5e17FgDcqyRkH/WJpC+sIjRrXIjOhXHCHYaBpGBsJ
	 5dRBjx+zDjrdVrA6fJcdCRShb0ZEQ4zHN35Z3BYROETtyoTTuqIFb/1Ok6pEd4wcPz
	 6sSc1fTDaNWyw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RvBbKcFXjoCY; Thu, 21 Jul 2022 21:30:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D3EC3404F8;
	Thu, 21 Jul 2022 21:30:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D3EC3404F8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 42CA11C1190
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 21:30:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5E80D60BEC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 21:30:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5E80D60BEC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 18IgZuIBwmes for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Jul 2022 21:30:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 941836080A
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 941836080A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 21:30:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10415"; a="274029224"
X-IronPort-AV: E=Sophos;i="5.93,183,1654585200"; d="scan'208";a="274029224"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 14:30:08 -0700
X-IronPort-AV: E=Sophos;i="5.93,183,1654585200"; d="scan'208";a="740833134"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.7])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 14:30:08 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Thu, 21 Jul 2022 14:29:54 -0700
Message-Id: <20220721213001.2483596-2-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.456.ga9c7032d4631
In-Reply-To: <20220721213001.2483596-1-jacob.e.keller@intel.com>
References: <20220721213001.2483596-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658439009; x=1689975009;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=z3l10/m7m+tp8Nbonme0Jg5J2C12k4bAJJzdrtTHff4=;
 b=KG5ACIvmfMYgglJEiHGO8lLlnBV4+9siqejhZ+63K6qGE68kQXNDPa1e
 kIOZ0yeifT8fkdJSBPIeBWQWgzbaL1aPsQ6ILoZNFM/gsSGc7EL+TK6uh
 TN/1/2p9cneOJCcRUtKqXrSJKgLEwisoeEMKS8aP6pxoIBBF9agNNRYHy
 Z2KGK5nyqClVPMPu8XbAP3uU5axS2FspVIp4B1yebv+ZimhlStaAdL7d0
 /RvKNVcRmVL+v48SJBC4xLibqohn/lyrl3ojTlesvK6N4viXvD7cYeqtd
 A4/uVIqeJzXcEJFJP2WI5XFx6W8EYXDKbLowp+bfrN7sIlpZTFRbX+638
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KG5ACIvm
Subject: [Intel-wired-lan] [net-next PATCH 1/7] ice: implement adjfine with
 mul_u64_u64_div_u64
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

The PTP frequency adjustment code needs to determine an appropriate
adjustment given an input scaled_ppm adjustment.

We calculate the adjustment to the register by multiplying the base
(nominal) increment value by the scaled_ppm and then dividing by the
scaled one million value.

For very large adjustments, this might overflow. To avoid this, both the
scaled_ppm and divisor values are downshifted.

We can avoid that on X86 architectures by using mul_u64_u64_div_u64. This
helper function will perform the multiplication and division with 128bit
intermediate values. We know that scaled_ppm is never larger than the
divisor so this operation will never result in an overflow.

This improves the accuracy of the calculations for large adjustment values
on X86. It is likely an improvement on other architectures as well because
the default implementation of mul_u64_u64_div_u64 is smarter than the
original approach taken in the ice code.

Additionally, this implementation is easier to read, using fewer local
variables and lines of code to implement.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 16 +++-------------
 1 file changed, 3 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 29c7a0ccb3c4..72b663108a4a 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1102,9 +1102,8 @@ static void ice_ptp_reset_phy_timestamping(struct ice_pf *pf)
 static int ice_ptp_adjfine(struct ptp_clock_info *info, long scaled_ppm)
 {
 	struct ice_pf *pf = ptp_info_to_pf(info);
-	u64 freq, divisor = 1000000ULL;
 	struct ice_hw *hw = &pf->hw;
-	s64 incval, diff;
+	u64 incval, diff;
 	int neg_adj = 0;
 	int err;
 
@@ -1115,17 +1114,8 @@ static int ice_ptp_adjfine(struct ptp_clock_info *info, long scaled_ppm)
 		scaled_ppm = -scaled_ppm;
 	}
 
-	while ((u64)scaled_ppm > div64_u64(U64_MAX, incval)) {
-		/* handle overflow by scaling down the scaled_ppm and
-		 * the divisor, losing some precision
-		 */
-		scaled_ppm >>= 2;
-		divisor >>= 2;
-	}
-
-	freq = (incval * (u64)scaled_ppm) >> 16;
-	diff = div_u64(freq, divisor);
-
+	diff = mul_u64_u64_div_u64(incval, (u64)scaled_ppm,
+				   1000000ULL << 16);
 	if (neg_adj)
 		incval -= diff;
 	else
-- 
2.35.1.456.ga9c7032d4631

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
