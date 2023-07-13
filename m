Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C49D752343
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jul 2023 15:17:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4292761373;
	Thu, 13 Jul 2023 13:17:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4292761373
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689254269;
	bh=qiRMcyUybp/kqW6zLYK2PetzAKrhUtz15tE4/PR8zh8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DnWVivTvUGMaCb5he1hNu/EDZ9hsBETCUruyg22h9ST3Q1ZkuFU9nq14NNP/IDGC6
	 PBjrsRhQSpPvgZ5B/Er0IZTxVRw/zms1jlABCvEKV2wnpM+eWjx6MpOgFfA0k/GudX
	 K5P+iisOefHWDrTvZz+koO0wwpoNgh+oTKZ82bnKhuwtPRHvhxQJKOA/mdQRyzo1Bh
	 v8T5xsw49ULtB4HZ1iGALmaNou7LTIGp/iYNlDeuOAA00m+UQNg0q/1O3O69I7KPrY
	 wEcvJKbl/czTrkPqxkcfJkb+H0FjsQWzOaBFPBQ+JrMcJe1a1Y6JcLzLO9EbId5Xgr
	 GJjpxrSplgP9w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fuygAYb3rx_w; Thu, 13 Jul 2023 13:17:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 365F761376;
	Thu, 13 Jul 2023 13:17:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 365F761376
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 03FC01BF3E1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 13:17:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CECAD400D7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 13:17:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CECAD400D7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9OA-RYexUlnm for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jul 2023 13:17:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1B15041718
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1B15041718
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 13:17:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="344776806"
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="344776806"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 06:17:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="751629439"
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="751629439"
Received: from s240.igk.intel.com (HELO DevelopmentVM.nql.local)
 ([10.102.18.202])
 by orsmga008.jf.intel.com with ESMTP; 13 Jul 2023 06:17:35 -0700
From: Jan Sokolowski <jan.sokolowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 13 Jul 2023 15:21:24 +0200
Message-Id: <20230713132124.1514647-2-jan.sokolowski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20230713132124.1514647-1-jan.sokolowski@intel.com>
References: <20230713132124.1514647-1-jan.sokolowski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689254257; x=1720790257;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eXTUE+Nn2HAN/bxcUZfAEff9x6NwB3djtoAV3Uze7zM=;
 b=KZLBAzlXFQONOr8I7E5mzoIcExdHa8hdlsomVpH6WzNmbFoa5EVejUOF
 67Spw/4fe9ejNPwaM6/iTrWT8Sm2T8d8Px5rHnZIQUIEMTu02B2FQ8N5f
 HaMFDJBkCJNewj9sGy3S3Qk60viqq33oZWM62ecSQqTorWVOgx7c6J3LF
 uwtCTMRzuozLXH+gMjEAsqszBtKSPeL2HMe5jwYKCaKnKbYNrWyfNR1us
 irpDsjcWZu/nz930qRAuJb7ctllKa7ksXfajlYadkX+tyjn+PnIuJ/kps
 B75SOvWopBNTzl+J2SCyElAJZvdWPmIZPoCo3lbGwuVNyu99FbX9H9AvP
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KZLBAzlX
Subject: [Intel-wired-lan] [PATCH iwl-next  v2 2/2] ice: add FW load wait
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

As some cards load FW from external sources, we have to wait
to be sure that FW is ready before setting link up.

Add check and wait for FW readiness

Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
v2: Applied hints received on v1 review on IWL.
---
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |  2 +
 drivers/net/ethernet/intel/ice/ice_main.c     | 37 +++++++++++++++++++
 2 files changed, 39 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
index 20f40dfeb761..531cc2194741 100644
--- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
+++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
@@ -335,6 +335,8 @@
 #define VP_MDET_TX_TCLAN_VALID_M		BIT(0)
 #define VP_MDET_TX_TDPU(_VF)			(0x00040000 + ((_VF) * 4))
 #define VP_MDET_TX_TDPU_VALID_M			BIT(0)
+#define GL_MNG_FWSM				0x000B6134
+#define GL_MNG_FWSM_FW_LOADING_M		BIT(30)
 #define GLNVM_FLA				0x000B6108
 #define GLNVM_FLA_LOCKED_M			BIT(6)
 #define GLNVM_GENS				0x000B6100
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index e3245ee635b2..674e78ff708d 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4561,6 +4561,31 @@ static void ice_deinit_eth(struct ice_pf *pf)
 	ice_decfg_netdev(vsi);
 }
 
+/**
+ * ice_wait_for_fw - wait for full FW readiness
+ * @hw: pointer to the hardware structure
+ * @timeout: milliseconds that can elapse before timing out
+ */
+static int ice_wait_for_fw(struct ice_hw *hw, u32 timeout)
+{
+	int fw_loading;
+	u32 elapsed = 0;
+
+	while (elapsed <= timeout) {
+		fw_loading = rd32(hw, GL_MNG_FWSM) & GL_MNG_FWSM_FW_LOADING_M;
+
+		/* firmware was not yet loaded, we have to wait more */
+		if (fw_loading) {
+			elapsed += 100;
+			msleep(100);
+			continue;
+		}
+		return 0;
+	}
+
+	return -ETIMEDOUT;
+}
+
 static int ice_init_dev(struct ice_pf *pf)
 {
 	struct device *dev = ice_pf_to_dev(pf);
@@ -4573,6 +4598,18 @@ static int ice_init_dev(struct ice_pf *pf)
 		return err;
 	}
 
+	/* Some cards require longer initialization times
+	 * due to necessity of loading FW from an external source.
+	 * This can take even half a minute.
+	 */
+	if (ice_is_pf_c827(hw)) {
+		err = ice_wait_for_fw(hw, 30000);
+		if (err) {
+			dev_err(dev, "ice_wait_for_fw timed out");
+			return err;
+		}
+	}
+
 	ice_init_feature_support(pf);
 
 	ice_request_fw(pf);
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
