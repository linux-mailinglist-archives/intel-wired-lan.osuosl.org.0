Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 97CA057D5F7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Jul 2022 23:30:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1264784056;
	Thu, 21 Jul 2022 21:30:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1264784056
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658439029;
	bh=xqRTEExeTV9yfDpxCCIDP8M2boKmA80X9RvZ8KvAoM0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yv8yf186wNgLWqHrSIXclxNdlQ794CeVbF09Oifl8OzUTG0uGxLCW32BTt+IMpx2c
	 0vcUnCTnDizuJnDMWdoBCHlP+VcMtJnEk7F5GFDgVvlLg+HcunwAsCMwjqtbDVxlCS
	 rzBUKMRO/eMCidEp6sn5M1nMGqqHsKyimhBd5XjVVXehfijBAOO/3BwbVBN3zHUijy
	 lTJ5zgkIAF81vHSC3ccc/YVkWxDLIMuBcI9ljCCiresehhrftpnuunNVTTB1v7sLMF
	 l0hGJNA5pYIR4EEHHpBZettVA4wXbnc8jeEBKD0ukgjaBe0mfvylvht4R9iql7T5z8
	 sqTIRMHWlzoMw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 32laIZ1c9Rgn; Thu, 21 Jul 2022 21:30:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EDA0E83F1F;
	Thu, 21 Jul 2022 21:30:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EDA0E83F1F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 294FE1BF375
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 21:30:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9055A60BFE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 21:30:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9055A60BFE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iV1t-F51NWdx for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Jul 2022 21:30:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DAE1460B37
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DAE1460B37
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 21:30:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10415"; a="274029226"
X-IronPort-AV: E=Sophos;i="5.93,183,1654585200"; d="scan'208";a="274029226"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 14:30:08 -0700
X-IronPort-AV: E=Sophos;i="5.93,183,1654585200"; d="scan'208";a="740833137"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.7])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 14:30:08 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Thu, 21 Jul 2022 14:29:55 -0700
Message-Id: <20220721213001.2483596-3-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.456.ga9c7032d4631
In-Reply-To: <20220721213001.2483596-1-jacob.e.keller@intel.com>
References: <20220721213001.2483596-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658439009; x=1689975009;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=M8If7d6GKztEBLpf8FdtfH6Aw7XWPyZcqoiYSe8xjCc=;
 b=Zc3m/UtVVSw4j/DQQkm3+299bT5gblq/iSRlO12e6v5ZEuBl+xQ8x5nC
 Uzf1B2n5qauDizZaeXVaphC95/olCyjrHk7/Cj2VwW/pMMMNooLEtV6BO
 iQazUTjwaz9hDBoo+h9QU1tzskid7mbMlbjPZnn02oU6ijkh6w1tIC1sC
 61maepvylN7vdnz16BXZpXUk/PN9ZkrUzbF2gBQo+Yt43nvbQScwNbyM9
 1xbL/wAjIs43nqgS8YefrfrmW7Nx7C/8E8Xqgjjybb/1BI8IVnpkBztoP
 8sYooinb5CKxCjgDc1aietQn6TkArkN8NdBG864zh0Uvw+vEzWlIWn/Mt
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Zc3m/UtV
Subject: [Intel-wired-lan] [net-next PATCH 1/1] igb: convert .adjfreq to
 .adjfine
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

The 82576 PTP implementation still uses .adjfreq instead of using the newer
.adjfine.

This implementation uses a pre-simplified calculation since the base
increment value for the 82576 is just 16 * 2^19. Converting this into
scaled_ppm is tricky, and makes the intent a bit less clear.

Simply convert to the normal flow of multiplying the base increment value
by the scaled_ppm and then dividing by 1000000ULL << 16. This can be
implemented using mul_u64_u64_div_u64 which can avoid the possible overflow
that might occur for large adjustments.

Use of .adjfine can improve the precision of small adjustments and gets us
one driver closer to removing the old implementation from the kernel
entirely.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/igb/igb_ptp.c | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_ptp.c b/drivers/net/ethernet/intel/igb/igb_ptp.c
index 02fec948ce64..15e57460e19e 100644
--- a/drivers/net/ethernet/intel/igb/igb_ptp.c
+++ b/drivers/net/ethernet/intel/igb/igb_ptp.c
@@ -190,7 +190,7 @@ static void igb_ptp_systim_to_hwtstamp(struct igb_adapter *adapter,
 }
 
 /* PTP clock operations */
-static int igb_ptp_adjfreq_82576(struct ptp_clock_info *ptp, s32 ppb)
+static int igb_ptp_adjfine_82576(struct ptp_clock_info *ptp, long scaled_ppm)
 {
 	struct igb_adapter *igb = container_of(ptp, struct igb_adapter,
 					       ptp_caps);
@@ -199,15 +199,14 @@ static int igb_ptp_adjfreq_82576(struct ptp_clock_info *ptp, s32 ppb)
 	u64 rate;
 	u32 incvalue;
 
-	if (ppb < 0) {
+	if (scaled_ppm < 0) {
 		neg_adj = 1;
-		ppb = -ppb;
+		scaled_ppm = -scaled_ppm;
 	}
-	rate = ppb;
-	rate <<= 14;
-	rate = div_u64(rate, 1953125);
 
-	incvalue = 16 << IGB_82576_TSYNC_SHIFT;
+	incvalue = INCVALUE_82576;
+	rate = mul_u64_u64_div_u64(incvalue, (u64)scaled_ppm,
+				   1000000ULL << 16);
 
 	if (neg_adj)
 		incvalue -= rate;
@@ -1347,7 +1346,7 @@ void igb_ptp_init(struct igb_adapter *adapter)
 		adapter->ptp_caps.max_adj = 999999881;
 		adapter->ptp_caps.n_ext_ts = 0;
 		adapter->ptp_caps.pps = 0;
-		adapter->ptp_caps.adjfreq = igb_ptp_adjfreq_82576;
+		adapter->ptp_caps.adjfine = igb_ptp_adjfine_82576;
 		adapter->ptp_caps.adjtime = igb_ptp_adjtime_82576;
 		adapter->ptp_caps.gettimex64 = igb_ptp_gettimex_82576;
 		adapter->ptp_caps.settime64 = igb_ptp_settime_82576;
-- 
2.35.1.456.ga9c7032d4631

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
