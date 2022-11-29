Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EFC963C52E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Nov 2022 17:30:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EEE3140341;
	Tue, 29 Nov 2022 16:30:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EEE3140341
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669739429;
	bh=55ayBpTcs3w9db73ekoMmR94uK0sO1Xitb8iTUv2kPM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=MDUiQYurdkZbqFY8K9/4YZNkSLLrACiujp68nR71p0VcEGVrslUIFZe7nqtGsg03/
	 CppGdAQQ6TnVfZaLiCUhRAmh8GWs3jkOqP1d9kdKKFUdDjBLtm6PCFSQmQTFfUbLV2
	 XREnAi2PG5M67Bo2ePMKv8UOykZygQw2foF/H40YpyIX9q4EKwr3c3fyV9WYpOC06u
	 5XBp9FpWW37XbEAznC6TjVCe2x/D2v6zbuGfIG7ipCH6B2aycBstrgWcL9OlvURPDA
	 Gubs9o/krpyrQQjKUK9Bi3f7j3De9FWPaEhXP5Hsea53UST+d8bhjdksJDyRfVi8rh
	 bInVAH4ExPekw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tua6oH6ZotQG; Tue, 29 Nov 2022 16:30:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 48A0C41726;
	Tue, 29 Nov 2022 16:30:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 48A0C41726
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0C4881BF2BB
 for <intel-wired-lan@osuosl.org>; Tue, 29 Nov 2022 15:27:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D904B408C6
 for <intel-wired-lan@osuosl.org>; Tue, 29 Nov 2022 15:27:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D904B408C6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oVDmMiPUoZCY for <intel-wired-lan@osuosl.org>;
 Tue, 29 Nov 2022 15:27:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D3CCC408AD
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D3CCC408AD
 for <intel-wired-lan@osuosl.org>; Tue, 29 Nov 2022 15:27:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="294828305"
X-IronPort-AV: E=Sophos;i="5.96,203,1665471600"; d="scan'208";a="294828305"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2022 07:23:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="645930333"
X-IronPort-AV: E=Sophos;i="5.96,203,1665471600"; d="scan'208";a="645930333"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga007.fm.intel.com with ESMTP; 29 Nov 2022 07:23:27 -0800
Received: from vecna.. (vecna.igk.intel.com [10.123.220.17])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 2ATFNPZe015209; Tue, 29 Nov 2022 15:23:25 GMT
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@osuosl.org
Date: Tue, 29 Nov 2022 16:12:53 +0100
Message-Id: <20221129151253.2239967-1-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.34.3
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 29 Nov 2022 16:29:52 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669735654; x=1701271654;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8DaPoguemd1xeM/9bB0k2RpU7Gpd1O1W61mg5haAZC0=;
 b=QZ0FZvS05nAVqLvwJJgPvG53MkvvsIjhK6suUzednz2ErJH4OqN6BSSI
 G/K1j/APLyBPbFsSi1nMRZ2h1TmmytmDxnF2CdjN3f0pF/T0Oj+pcq8/M
 bOOnbQI3BhX9/GFX2djq6+EgPmgTqFhs3R4Zw72155nEUmBOjSB4ijG9u
 uLezCFFDzkh7NHUJTXVvZQ99Nn9hOm8QntO2fScvad5E30u+R4e+w4R5+
 FJlaiFoPky/79IleoNgQMXozuWHsC6uiJnvq97CVS7hzkq8uQtwJ6E96O
 VzrCNVbA+NsRcy2Jdv0OrptFQgdYqtvo8mGjtx+CBEFN0z1WWCb5Ro6mf
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QZ0FZvS0
Subject: [Intel-wired-lan] [PATCH net-next] ice: Enable extended PTP support
 for E823L & E823C devices
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
Cc: netdev@vger.kernel.org, Maciej Machnikowski <maciej.machnikowski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Maciej Machnikowski <maciej.machnikowski@intel.com>

Enable extended PTP support for E823C and E823L devices.

Signed-off-by: Maciej Machnikowski <maciej.machnikowski@intel.com>
Co-developed-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 938ba8c215cb..ea813306e6cd 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -4199,6 +4199,16 @@ void ice_init_feature_support(struct ice_pf *pf)
 	case ICE_DEV_ID_E810C_BACKPLANE:
 	case ICE_DEV_ID_E810C_QSFP:
 	case ICE_DEV_ID_E810C_SFP:
+	case ICE_DEV_ID_E823L_BACKPLANE:
+	case ICE_DEV_ID_E823L_SFP:
+	case ICE_DEV_ID_E823L_10G_BASE_T:
+	case ICE_DEV_ID_E823L_1GBE:
+	case ICE_DEV_ID_E823L_QSFP:
+	case ICE_DEV_ID_E823C_BACKPLANE:
+	case ICE_DEV_ID_E823C_SFP:
+	case ICE_DEV_ID_E823C_10G_BASE_T:
+	case ICE_DEV_ID_E823C_SGMII:
+	case ICE_DEV_ID_E823C_QSFP:
 		ice_set_feature_support(pf, ICE_F_DSCP);
 		ice_set_feature_support(pf, ICE_F_PTP_EXTTS);
 		if (ice_is_e810t(&pf->hw)) {
-- 
2.34.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
