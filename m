Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D5057D5FD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Jul 2022 23:30:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8FB01418C4;
	Thu, 21 Jul 2022 21:30:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8FB01418C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658439046;
	bh=WnIB9ozfsATpnaCSUSf5DQgFg9H3sn/eVRoYAEcGfAM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=W0aYdhzyhMdOLNee/CqKJNBxHTpyYFAlTNub53WsyrOzw0NBaf27+lAkuIED/XYPj
	 C5HwCkTZEZ8C2DtxtWyiZZe0rDpeZWKIMMNZqZREVC2ttgR1SWXPqGxLk3wTkrcmD3
	 CjMQTWBFTXXoPqpzLjIO0TqAtezQWcqGpUEVSkdphkSiwumaSC4N1LMW7yYMHz5LBn
	 LPBg8q8V83xrFaIVNOwYikKY2z69VRxzQvj7cwjGGpp6KwhlYc/3n4Pm145ZRHPtXe
	 2AUlX1uWqmoAux4WNeetRQGy3EReK1QnDLZxanAH81XUsUyYNx1Grpl4YzOY39Ni/v
	 X4B0mfWSU6xvg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oTxtxBMM3NiA; Thu, 21 Jul 2022 21:30:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 25025418C2;
	Thu, 21 Jul 2022 21:30:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 25025418C2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C384F1BF375
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 21:30:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1B5B660808
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 21:30:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1B5B660808
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id heZ5vkdaXOBa for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Jul 2022 21:30:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6110A60BFD
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6110A60BFD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 21:30:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10415"; a="274029232"
X-IronPort-AV: E=Sophos;i="5.93,183,1654585200"; d="scan'208";a="274029232"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 14:30:09 -0700
X-IronPort-AV: E=Sophos;i="5.93,183,1654585200"; d="scan'208";a="740833151"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.7])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 14:30:09 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Thu, 21 Jul 2022 14:29:58 -0700
Message-Id: <20220721213001.2483596-6-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.456.ga9c7032d4631
In-Reply-To: <20220721213001.2483596-1-jacob.e.keller@intel.com>
References: <20220721213001.2483596-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658439010; x=1689975010;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VUqh+1jVWKo0nPQcxnFra4hX/tjkm993rkXEKiDkcTU=;
 b=Oi74P/YluJhi3sPYgDuaaJKw4l912kSYguiB0Bglr8LDSfy3oOCOfwqs
 SxzjIKIBtrPgNbrD634m8BWnqYkdV5sO7wwubhyafM7HswtPGQ1F5MEYN
 7CQOQL9ONJwcdLIzAwKPPHRTHIaJGJRnCPsAb0KffEvuKJMK4K6SEC3Ji
 YRgac6z2Izvb+M00gD3mqCjIfkiEVUHxwlnYxlPJPetIAN32OAonwo8Bl
 blOA+pg6lESUs5XrQatHzqi6VgCh8PHrs5ANjrvhbtF8M7aiZ/UxoIzku
 teHd0pSM8wXVfJPv4r+/U0lgV61wWFPwymjutYJ0jkiNI/Ymab5vP7z2v
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Oi74P/Yl
Subject: [Intel-wired-lan] [net-next PATCH 4/7] i40e: use
 mul_u64_u64_div_u64 for PTP frequency calculation
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

The i40e device has a different clock rate depending on the current link
speed. This requires using a different increment rate for the PTP clock
registers. For slower link speeds, the base increment value is larger.
Directly multiplying the larger increment value by the parts per billion
adjustment might overflow.

To avoid this, the i40e implementation defaults to using the lower
increment value and then multiplying the adjustment afterwards. This causes
a loss of precision for lower link speeds.

We can fix this by using mul_u64_u64_div_u64 instead of performing the
multiplications using standard C operations. On X86, this will use special
instructions that perform the multiplication and division with 128bit
intermediate values. For other architectures, the fallback implementation
will limit the loss of precision for large values. Small adjustments don't
overflow anyways and won't lose precision at all.

This allows first multiplying the base increment value and then performing
the adjustment calculation, since we no longer fear overflowing. It also
makes it easier to convert to the even more precise .adjfine implementation
in a following change.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_ptp.c | 17 ++++-------------
 1 file changed, 4 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ptp.c b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
index 57a71fa17ed5..15de918abc41 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
@@ -353,25 +353,16 @@ static int i40e_ptp_adjfreq(struct ptp_clock_info *ptp, s32 ppb)
 		ppb = -ppb;
 	}
 
-	freq = I40E_PTP_40GB_INCVAL;
-	freq *= ppb;
-	diff = div_u64(freq, 1000000000ULL);
+	smp_mb(); /* Force any pending update before accessing. */
+	freq = I40E_PTP_40GB_INCVAL * READ_ONCE(pf->ptp_adj_mult);
+	diff = mul_u64_u64_div_u64(freq, (u64)ppb,
+				   1000000000ULL);
 
 	if (neg_adj)
 		adj = I40E_PTP_40GB_INCVAL - diff;
 	else
 		adj = I40E_PTP_40GB_INCVAL + diff;
 
-	/* At some link speeds, the base incval is so large that directly
-	 * multiplying by ppb would result in arithmetic overflow even when
-	 * using a u64. Avoid this by instead calculating the new incval
-	 * always in terms of the 40GbE clock rate and then multiplying by the
-	 * link speed factor afterwards. This does result in slightly lower
-	 * precision at lower link speeds, but it is fairly minor.
-	 */
-	smp_mb(); /* Force any pending update before accessing. */
-	adj *= READ_ONCE(pf->ptp_adj_mult);
-
 	wr32(hw, I40E_PRTTSYN_INC_L, adj & 0xFFFFFFFF);
 	wr32(hw, I40E_PRTTSYN_INC_H, adj >> 32);
 
-- 
2.35.1.456.ga9c7032d4631

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
