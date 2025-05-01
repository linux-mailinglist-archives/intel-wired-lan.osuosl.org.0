Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 58520AA6681
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 May 2025 00:55:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 88CD1611FC;
	Thu,  1 May 2025 22:54:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1qxJ09m-nq_A; Thu,  1 May 2025 22:54:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DCCB1612B6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746140091;
	bh=cTVzmBxgDNgZH1Htxn1+70kr9Lein9iS0rp4iqyAS5Q=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5UcbkHlyUR5jgeRsIE51vAjCryF6Wfeq5Esgf+/9iYEma8Gc8+MUOly3jRttXtThE
	 7CXxRRNcyo6z3nfC9rxHHD4EMzlE293hGc3SgvOVDdeUJq1V5w1ICGHEFN58cI4WJ7
	 8NmXe7brtFaMkmyyXVOFvm8/VG+gCY0f6LFctQOfJvU0He/KbLseZ9QAZ7h6n1m6UG
	 nYK/5qA+noTMTYmNg10EnmE1zdRHuK124/G+NivD2GxX5sDEm4jyja4OMO1PO9p92G
	 1LkTD9v01jv8G8vJ43a4dFrdMPvLYntxCgtSGb6sMw0VKynmvmFOFFC5RTgAyC66kR
	 gh1eEk7KcSpBw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DCCB1612B6;
	Thu,  1 May 2025 22:54:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 67CA2E4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 22:54:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CCCE541A19
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 22:54:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id STGS3Z4tQkU5 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 May 2025 22:54:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3A98C41A4B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3A98C41A4B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3A98C41A4B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 22:54:37 +0000 (UTC)
X-CSE-ConnectionGUID: bL19zTH0QVOHmveVrBydDw==
X-CSE-MsgGUID: L+Ir14EoSFiMpELE7wT29Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11420"; a="58811745"
X-IronPort-AV: E=Sophos;i="6.15,254,1739865600"; d="scan'208";a="58811745"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2025 15:54:37 -0700
X-CSE-ConnectionGUID: E6KxEKfrT9a2u0mwEVQDkg==
X-CSE-MsgGUID: FK0I/ph5TjiDoMB2+j7j6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,254,1739865600"; d="scan'208";a="138514312"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2025 15:54:36 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Thu, 01 May 2025 15:54:23 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250501-kk-tspll-improvements-alignment-v4-12-24c83d0ce7a8@intel.com>
References: <20250501-kk-tspll-improvements-alignment-v4-0-24c83d0ce7a8@intel.com>
In-Reply-To: <20250501-kk-tspll-improvements-alignment-v4-0-24c83d0ce7a8@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 netdev <netdev@vger.kernel.org>
Cc: Jacob Keller <jacob.e.keller@intel.com>, 
 Michal Kubiak <michal.kubiak@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Karol Kolacinski <karol.kolacinski@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Milena Olech <milena.olech@intel.com>, Paul Menzel <pmenzel@molgen.mpg.de>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746140078; x=1777676078;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=+Buf/9WEdy+t/yBkq3aZ0+eWMnVbx5nWuReq8OY0u2M=;
 b=hEA2dmSeF0lGt+TJJDjdCsUeqGaIj4xuCwMjoKqK6M7d7aR2PC66BgXh
 Pmas6Op/mRe/pn2b+DDW7uWtmbTENYT66Y4D3A5ZkeWj5uM5qfOqHg3x6
 /eTDb1pHmsGEeebHuJL5aEHEo8rsvKLHi5igjqZPgi4zGri6Q39wQRgj6
 Njj/w6W66CJKM4v/l6LPuukP8vqgD+c/8uTqUl3jmAqT8ooNbQeHknlKs
 0DZC/0nsU8EFeJmPtATIXCrf/zLXGBFswzwMvSY7LHPm2s8xJTr/Zto8N
 iEfc8nwG1SEpyXTus9tdl7v5N1QwXQTPjrQ95uELnKM+2XCOP8eK11w2j
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hEA2dmSe
Subject: [Intel-wired-lan] [PATCH v4 12/15] ice: wait before enabling TSPLL
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
index 66ad5ee63f3084d1d54c2445f56d7f61d6be344b..a392b39920aeb7c23008a03baf3df9cd14dcbb7e 100644
--- a/drivers/net/ethernet/intel/ice/ice_tspll.c
+++ b/drivers/net/ethernet/intel/ice/ice_tspll.c
@@ -229,12 +229,15 @@ static int ice_tspll_cfg_e82x(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 	r24 |= FIELD_PREP(ICE_CGU_R23_R24_TIME_REF_SEL, clk_src);
 	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R24, r24);
 
+	/* Wait to ensure everything is stable */
+	usleep_range(10, 20);
+
 	/* Finally, enable the PLL */
 	r24 |= ICE_CGU_R23_R24_TSPLL_ENABLE;
 	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R24, r24);
 
-	/* Wait to verify if the PLL locks */
-	usleep_range(1000, 5000);
+	/* Wait at least 1 ms to verify if the PLL locks */
+	usleep_range(USEC_PER_MSEC, 2 * USEC_PER_MSEC);
 
 	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_RO_BWM_LF, &val);
 	if (!(val & ICE_CGU_RO_BWM_LF_TRUE_LOCK)) {
@@ -357,12 +360,15 @@ static int ice_tspll_cfg_e825c(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 	/* Clear the R24 register. */
 	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R24, 0);
 
+	/* Wait to ensure everything is stable */
+	usleep_range(10, 20);
+
 	/* Finally, enable the PLL */
 	r23 |= ICE_CGU_R23_R24_TSPLL_ENABLE;
 	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R23, r23);
 
-	/* Wait to verify if the PLL locks */
-	usleep_range(1000, 5000);
+	/* Wait at least 1 ms to verify if the PLL locks */
+	usleep_range(USEC_PER_MSEC, 2 * USEC_PER_MSEC);
 
 	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_RO_LOCK, &val);
 	if (!(val & ICE_CGU_RO_LOCK_TRUE_LOCK)) {

-- 
2.48.1.397.gec9d649cc640

