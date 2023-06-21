Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2582737E0D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jun 2023 11:11:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 501E5405BF;
	Wed, 21 Jun 2023 09:11:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 501E5405BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687338692;
	bh=2H6ICIS2bXVm2KUKMSbQIqtKXD4FF/om9gO3WuxZ6UU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=S6mCgZj5m84/pE7elxtofpiiY1ea8Kgl505wqhLCpk0rLuZitl2onoIqoNpcpBhsE
	 O6xgKOZXNntbTgKNClCofhwLn1NMSwZp9bV3/jlL4FPnJvdyhC8fU735R6uTBHLGB9
	 ZnRTAcyfZZTgKRWtMAbSodwUEavGAeBMpNCZQiqHTLtZQIsRCXOot91ZKxqejvoFyK
	 C5VYBMfWY/qN8nC1OMwcwkVNmcc0qyDP09xdbtfRHIMAW0B08Qr9xSnO5L8hYwK7Ti
	 3syfHdOSECHdJBsVvQLf2PFDSMMwh5xu99f49CYxYmwR4xPD2ReUMJitkonrmZtxkd
	 26il1/xIC+t9w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nkDT-_84Mfvv; Wed, 21 Jun 2023 09:11:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 46B6E400B8;
	Wed, 21 Jun 2023 09:11:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 46B6E400B8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 20D971BF4E5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:11:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EDFF0405BF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:11:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EDFF0405BF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HHvieSr_QUob for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Jun 2023 09:11:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 59281417F2
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 59281417F2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:11:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="357613613"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="357613613"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 02:11:24 -0700
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="748570737"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="748570737"
Received: from dpdk-liulingy-2.sh.intel.com ([10.67.119.34])
 by orsmga001.jf.intel.com with ESMTP; 21 Jun 2023 02:11:21 -0700
From: Lingyu Liu <lingyu.liu@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 21 Jun 2023 09:10:58 +0000
Message-Id: <20230621091112.44945-2-lingyu.liu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230621091112.44945-1-lingyu.liu@intel.com>
References: <20230621091112.44945-1-lingyu.liu@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687338684; x=1718874684;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5aDXTa8iOTDemDX0gIFxH10ng7Vp5hUrLA5WKshiyF4=;
 b=IdXxABinh/VysivX4UJT6WLUdRKVlBxkl8Me3LaZ0tq1+S+1qYknEJNB
 nY8WTY3cGJWeUK3h77Ji6X9YjOq+xVg3u/AcNhMoBGxD6Im26fqQFV7MA
 paOz+ZgjEgP84CY9/rkd8kcSx32OKdSna0D1rATKavhKuB+aJ/Ne9Hj4l
 Ze7Z30ow587ZmskDNSY/bk61cAGzeEP/gMukV89eSThw2pYgLPP83h8xV
 uG3QXcYXn39ul7ojNmtrsJfxu6DRTLxst3IWFTb06CsDNr2c0hV6yVfhq
 tijIv4OmNtRe/ULIOYX4pMBECmoZfjL+9pCDbcBaAT5k+fm5szWpnfdSR
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IdXxABin
Subject: [Intel-wired-lan] [PATCH iwl-next V2 01/15] ice: Fix missing legacy
 32byte RXDID in the supported bitmap
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
Cc: kevin.tian@intel.com, yi.l.liu@intel.com, phani.r.burra@intel.com,
 Xu Ting <ting.xu@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Xu Ting <ting.xu@intel.com>

32byte legacy descriptor format is preassigned.
Commit e753df8fbca5 ("ice: Add support Flex RXD") created a
supported RXDIDs bitmap according to DDP package. But it missed
the legacy 32byte RXDID since it is not listed in the package.
Mark 32byte legacy descriptor format as supported in the supported
RXDIDs flags.

Signed-off-by: Xu Ting <ting.xu@intel.com>
Signed-off-by: Lingyu Liu <lingyu.liu@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 92490fe655ea..9d74dcafde60 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -2617,10 +2617,13 @@ static int ice_vc_query_rxdid(struct ice_vf *vf)
 
 	/* Read flexiflag registers to determine whether the
 	 * corresponding RXDID is configured and supported or not.
-	 * Since Legacy 16byte descriptor format is not supported,
-	 * start from Legacy 32byte descriptor.
+	 * But the legacy 32byte RXDID is not listed in DDP package,
+	 * add it in the bitmap manually and skip check for it in the loop.
+	 * Legacy 16byte descriptor is not supported.
 	 */
-	for (i = ICE_RXDID_LEGACY_1; i < ICE_FLEX_DESC_RXDID_MAX_NUM; i++) {
+	rxdid->supported_rxdids |= BIT(ICE_RXDID_LEGACY_1);
+
+	for (i = ICE_RXDID_FLEX_NIC; i < ICE_FLEX_DESC_RXDID_MAX_NUM; i++) {
 		regval = rd32(hw, GLFLXP_RXDID_FLAGS(i, 0));
 		if ((regval >> GLFLXP_RXDID_FLAGS_FLEXIFLAG_4N_S)
 			& GLFLXP_RXDID_FLAGS_FLEXIFLAG_4N_M)
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
