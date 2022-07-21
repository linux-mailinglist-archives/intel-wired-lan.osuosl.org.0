Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B9C57D5F8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Jul 2022 23:30:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 365C340592;
	Thu, 21 Jul 2022 21:30:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 365C340592
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658439033;
	bh=vNLcolCOjB1uf69yflWd2Hw+dZYOQg1J7njBYFhNlWA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jaadgO6va2Nd2R3/nsTLXeeuA2M4RKpUNYEPj+Y24gtL7A14K1UBqQuVzvWCFq5ty
	 yST5Le5urRthMKeIkow+kuDB+d8IYSwOHUrd/EniSMBsXU11MQ9mNspZgDENqosOut
	 zh0naigc4Iteq9Z5AwQ15JeoUyZ86u3BMXvOmFTJnSpYJCoFcr2WFMgSMQii/PV7pI
	 Jh8Z4qSzPyLQNqVMCLEyYXngSHJqrhzE0TSl2mS9dGMy4FWd79QwrQNOM7adEeUa2x
	 n45YKlq4KvRR8hfJAqr/b8f4FxpmocUbnNPXzXK4UdZ5GD02utQ/fgAcTixX0VQ+N6
	 9j5OEKFiRPb8A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3yHmXEKkkRE7; Thu, 21 Jul 2022 21:30:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0B7524056F;
	Thu, 21 Jul 2022 21:30:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0B7524056F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 45B161C1190
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 21:30:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 32E8683F1E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 21:30:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 32E8683F1E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jXnwy7lVUt1X for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Jul 2022 21:30:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6FF3983F1F
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6FF3983F1F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 21:30:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10415"; a="274029234"
X-IronPort-AV: E=Sophos;i="5.93,183,1654585200"; d="scan'208";a="274029234"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 14:30:09 -0700
X-IronPort-AV: E=Sophos;i="5.93,183,1654585200"; d="scan'208";a="740833154"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.7])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 14:30:09 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Thu, 21 Jul 2022 14:29:59 -0700
Message-Id: <20220721213001.2483596-7-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.456.ga9c7032d4631
In-Reply-To: <20220721213001.2483596-1-jacob.e.keller@intel.com>
References: <20220721213001.2483596-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658439010; x=1689975010;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dOO4x8VcLe9AIQ5Sb/h9oMLMoHIzt30yFaJ27dlGAXo=;
 b=etmiD+djkT+gLhjy4fyVkgCLtwOY0gtCeCPV7Pon2lMvqfQsq3OQEv1L
 omZG6J00bQFnFN8PEgHwxSa2w9UZzjMshKN7GibA7Me3WA3v2fDg3xDgH
 qJDpsorIqiA9cjTRurcqHOQ3TJxVhFXwSZyYgROWet4QbTjRPa4D/O+5A
 9EzBB6l3g/RKEuLMiH7jo0/zui47cyOD8kyo5OubEKQWrazy/sl09kjlM
 sK5JnPsFAWAVhuytImlStozvt82IhXLHT/9QeBk/kJ28dryqxpXWXCcDm
 313f0y0kmdAOWQgcxbvcyst1bogyLv2grkSs0ntj8MdipIRaYx72cwtmg
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=etmiD+dj
Subject: [Intel-wired-lan] [net-next PATCH 5/7] i40e: convert .adjfreq to
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

The i40e driver currently implements the .adjfreq handler for frequency
adjustments. This takes the adjustment parameter in parts per billion. The
PTP core supports .adjfine which provides an adjustment in scaled parts per
million. This has a higher resolution and can result in more precise
adjustments for small corrections.

Convert the existing .adjfreq implementation to the newer .adjfine
implementation. This is trivial since it just requires changing the divisor
from 1000000000ULL to (1000000ULL << 16) in the mul_u64_u64_div_u64 call.

This improves the precision of the adjustments and gets us one driver
closer to removing the old .adjfreq support from the kernel.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_ptp.c | 22 ++++++++++++----------
 1 file changed, 12 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ptp.c b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
index 15de918abc41..2d3533f38d7b 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
@@ -334,29 +334,31 @@ static void i40e_ptp_convert_to_hwtstamp(struct skb_shared_hwtstamps *hwtstamps,
 }
 
 /**
- * i40e_ptp_adjfreq - Adjust the PHC frequency
+ * i40e_ptp_adjfine - Adjust the PHC frequency
  * @ptp: The PTP clock structure
- * @ppb: Parts per billion adjustment from the base
+ * @scaled_ppm: Scaled parts per million adjustment from base
  *
- * Adjust the frequency of the PHC by the indicated parts per billion from the
- * base frequency.
+ * Adjust the frequency of the PHC by the indicated delta from the base
+ * frequency.
+ *
+ * Scaled parts per million is ppm with a 16 bit binary fractional field.
  **/
-static int i40e_ptp_adjfreq(struct ptp_clock_info *ptp, s32 ppb)
+static int i40e_ptp_adjfine(struct ptp_clock_info *ptp, long scaled_ppm)
 {
 	struct i40e_pf *pf = container_of(ptp, struct i40e_pf, ptp_caps);
 	struct i40e_hw *hw = &pf->hw;
 	u64 adj, freq, diff;
 	int neg_adj = 0;
 
-	if (ppb < 0) {
+	if (scaled_ppm < 0) {
 		neg_adj = 1;
-		ppb = -ppb;
+		scaled_ppm = -scaled_ppm;
 	}
 
 	smp_mb(); /* Force any pending update before accessing. */
 	freq = I40E_PTP_40GB_INCVAL * READ_ONCE(pf->ptp_adj_mult);
-	diff = mul_u64_u64_div_u64(freq, (u64)ppb,
-				   1000000000ULL);
+	diff = mul_u64_u64_div_u64(freq, (u64)scaled_ppm,
+				   1000000ULL << 16);
 
 	if (neg_adj)
 		adj = I40E_PTP_40GB_INCVAL - diff;
@@ -1392,7 +1394,7 @@ static long i40e_ptp_create_clock(struct i40e_pf *pf)
 		sizeof(pf->ptp_caps.name) - 1);
 	pf->ptp_caps.owner = THIS_MODULE;
 	pf->ptp_caps.max_adj = 999999999;
-	pf->ptp_caps.adjfreq = i40e_ptp_adjfreq;
+	pf->ptp_caps.adjfine = i40e_ptp_adjfine;
 	pf->ptp_caps.adjtime = i40e_ptp_adjtime;
 	pf->ptp_caps.gettimex64 = i40e_ptp_gettimex;
 	pf->ptp_caps.settime64 = i40e_ptp_settime;
-- 
2.35.1.456.ga9c7032d4631

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
