Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A61AE588D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jun 2025 02:30:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D5D4182BC8;
	Tue, 24 Jun 2025 00:30:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NeZOxWBsk1yN; Tue, 24 Jun 2025 00:30:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4E54182C04
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750725013;
	bh=5eBdpMAMio6S+v526P81Cu1eJ86hOmfk49EbPf6CSsw=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=feq1uQkpV8qp10bmhBEWB1Xc/e2BZ+mFcg9SnpoefrSMNxqExFh9csqQCFjXGWBVa
	 g/3jXvZ4ti7ROLNAfQjxnqvvi3AWfdeN2y6pmnkHI04buohaUlvt2DgAYS5YWwF+6h
	 td7zumS04ysDjyzaa4ZOkrs1ldz35DCSX9omxmwuR8B8KDS6HBsCI+HijKIuuXcsUr
	 jeEKcXdJ5zfSP3WWOKhyc5oltyAh83b19VVqnSPRs7zKEZkhAJJy+npeWhmt7hTsWD
	 gsiMPCculk8PI0lmWRNF7HWIRQ4SlDrwl0WdyZVqDgFSRcoJE2akUE4UfE7go0JGps
	 PI9Ma5Z6NeuHQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4E54182C04;
	Tue, 24 Jun 2025 00:30:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 309F7154
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 00:30:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 899DE40692
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 00:30:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I4fW39wBl_Iu for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jun 2025 00:30:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0A8CA406DA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0A8CA406DA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0A8CA406DA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 00:30:08 +0000 (UTC)
X-CSE-ConnectionGUID: AWvzpm5NRfac1WqmN86yhw==
X-CSE-MsgGUID: AKUK0MpaQDi+LigqdyI4Gg==
X-IronPort-AV: E=McAfee;i="6800,10657,11473"; a="52067918"
X-IronPort-AV: E=Sophos;i="6.16,260,1744095600"; d="scan'208";a="52067918"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 17:30:07 -0700
X-CSE-ConnectionGUID: zGrNVCnKTCGDz2JGBA4iUg==
X-CSE-MsgGUID: A8JS7tYDRlCPrhA2PCdAaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,260,1744095600"; d="scan'208";a="157534048"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 17:30:06 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Mon, 23 Jun 2025 17:30:01 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250623-kk-tspll-improvements-alignment-v1-5-fe9a50620700@intel.com>
References: <20250623-kk-tspll-improvements-alignment-v1-0-fe9a50620700@intel.com>
In-Reply-To: <20250623-kk-tspll-improvements-alignment-v1-0-fe9a50620700@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Cc: Jacob Keller <jacob.e.keller@intel.com>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org, 
 Karol Kolacinski <karol.kolacinski@intel.com>, 
 Milena Olech <milena.olech@intel.com>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750725008; x=1782261008;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=EHeBOlD980MInkpce8dZZQj1bqpaIQ8WngXIv2Z0xRQ=;
 b=i7wYcjkhYrtpUvKKOLAPiCgWhb7WO9NEv6mM1frmra4WEyoC6Q6UQVFa
 VIuf+tfFhwtf5seEP2lMJjEQJhKwTNksWNdUlZIct/ogw8rkc4fbEBRVv
 SVNhzZU8Yjhuqa6Y0qd5XqDRIuSm81Lz9mvpewOX127XjyBQ0o8v0qeIq
 R5iO5FDixGmFjJbul2XaFdDM0N1RnDyYaxKNIPyv0coj9PQ7y9zKBkitg
 TG0D55tDtT3nQB1DynNMxic7+cT1rZrKsKzRtNl5Dqevvg24FHIncYcFC
 jcNy2YDW+CBiRUaN1XoQDahJtFbTO1a8TH/fDQZRgYtII/jNIKXxkxrKz
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=i7wYcjkh
Subject: [Intel-wired-lan] [PATCH 5/8] ice: wait before enabling TSPLL
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Karol Kolacinski <karol.kolacinski@intel.com>

To ensure proper operation, wait for 10 to 20 microseconds before
enabling TSPLL.

Adjust wait time after enabling TSPLL from 1-5 ms to 1-2 ms.

Those values are empirical and tested on multiple HW configurations.

Reviewed-by: Milena Olech <milena.olech@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_tspll.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_tspll.c b/drivers/net/ethernet/intel/ice/ice_tspll.c
index e7b44e703d7c0966414e119f861ee1ab165d9293..abd9f4ff2f5563e35dd8e8fa551eb944d8f5802a 100644
--- a/drivers/net/ethernet/intel/ice/ice_tspll.c
+++ b/drivers/net/ethernet/intel/ice/ice_tspll.c
@@ -261,6 +261,9 @@ static int ice_tspll_cfg_e82x(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 	if (err)
 		return err;
 
+	/* Wait to ensure everything is stable */
+	usleep_range(10, 20);
+
 	/* Finally, enable the PLL */
 	r24 |= ICE_CGU_R23_R24_TSPLL_ENABLE;
 
@@ -268,8 +271,8 @@ static int ice_tspll_cfg_e82x(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 	if (err)
 		return err;
 
-	/* Wait to verify if the PLL locks */
-	usleep_range(1000, 5000);
+	/* Wait at least 1 ms to verify if the PLL locks */
+	usleep_range(USEC_PER_MSEC, 2 * USEC_PER_MSEC);
 
 	err = ice_read_cgu_reg(hw, ICE_CGU_RO_BWM_LF, &val);
 	if (err)
@@ -445,6 +448,9 @@ static int ice_tspll_cfg_e825c(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 	if (err)
 		return err;
 
+	/* Wait to ensure everything is stable */
+	usleep_range(10, 20);
+
 	/* Finally, enable the PLL */
 	r23 |= ICE_CGU_R23_R24_TSPLL_ENABLE;
 
@@ -452,8 +458,8 @@ static int ice_tspll_cfg_e825c(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 	if (err)
 		return err;
 
-	/* Wait to verify if the PLL locks */
-	usleep_range(1000, 5000);
+	/* Wait at least 1 ms to verify if the PLL locks */
+	usleep_range(USEC_PER_MSEC, 2 * USEC_PER_MSEC);
 
 	err = ice_read_cgu_reg(hw, ICE_CGU_RO_LOCK, &val);
 	if (err)

-- 
2.48.1.397.gec9d649cc640

