Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4120598D288
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Oct 2024 13:53:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 19C4281FE5;
	Wed,  2 Oct 2024 11:53:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L4mRfqdfBOeV; Wed,  2 Oct 2024 11:53:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 560FC81F15
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727870003;
	bh=sWM85XkgNZVTM0pa+m/W9X5K7vmwV3tkTLmxAzKVNBY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ogRLOQKR3bn13kbbyHMOr/g+exDYT8cQfHn3i1R7hb4M9nuCXFUTV4VcPR2vSUstm
	 rpMpgFEFuU/JlGesVlOm9uz0+zRSl/U2VCAajjIpvM1d8/ov6AQTSgZuGfz2C7yK8/
	 2uAuB1P+sOO2zptjOT8X1lnKztsdG6DbZL9Kys7MTDxiRZ8UCnwc9vNJSXwda0ntVe
	 u5LXnj3+0JheXg7qSDre2eP92nqOS22SsbbV8FEm9MdlMyGpK1NbOwL+MTnaj4I1hh
	 KVVLePWKFMdjntgiCqiGAFYuqiz2YQ2fYGFuDFvgjkuPqQaU8Y4MrXTttyVWcf7AjU
	 /MywsFaBKuDwg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 560FC81F15;
	Wed,  2 Oct 2024 11:53:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 18C661BF293
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 11:53:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D0AC681F15
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 11:53:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xAAJYDwP_A6C for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Oct 2024 11:53:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F0B0781F0E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F0B0781F0E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F0B0781F0E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 11:53:19 +0000 (UTC)
X-CSE-ConnectionGUID: Lk0prZsWQcuY2B8dXvBf+w==
X-CSE-MsgGUID: nLzFZ/JrTYWcwAFpJp0Abg==
X-IronPort-AV: E=McAfee;i="6700,10204,11212"; a="27183847"
X-IronPort-AV: E=Sophos;i="6.11,171,1725346800"; d="scan'208";a="27183847"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2024 04:53:20 -0700
X-CSE-ConnectionGUID: 2sLrcrDSQNavHLKzQ145kg==
X-CSE-MsgGUID: 2iIkKckxRpyedwn5g9zzoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,171,1725346800"; d="scan'208";a="78396376"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa005.fm.intel.com with ESMTP; 02 Oct 2024 04:53:18 -0700
Received: from pkitszel-desk.intel.com (unknown [10.245.246.21])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id DD56128167;
 Wed,  2 Oct 2024 12:53:16 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Wed,  2 Oct 2024 13:50:22 +0200
Message-ID: <20241002115304.15127-8-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20241002115304.15127-6-przemyslaw.kitszel@intel.com>
References: <20241002115304.15127-6-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727870000; x=1759406000;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gRLCXlAAXvMxcKis8qdtfZ4PICzp51CV5Rb+XWIMM08=;
 b=XPeGaq+fTXv9jnAj9rk6YJTZ0Jt75HNxPZBLme8PK/wsY5//olHV/VlR
 akAhzLUrQ20OnUlmqTJN32CTp1FfXaJm6+LoeLKRpETwGmN54UfVSFoU/
 7bwL83qqAxLt98K4ZXzVAd3GXQAvSxGwWQoj2w2VjXgSgmyOiUuRLAqL+
 dTESD0skR3WppdGpCQW/FGD2kF/kQr5qzdMZyzhdDzd8XyUuO3f0kdxm1
 0xBwkDcR+1+gC8xoY3ovmLY2QcMTx7073w+VhpzxInCRuDshS12MMXxoa
 JZzgMSwg4Ro4pqphDX6Di7OZR4wAUL5JthzE5mvapBozYlUaRZvV9cMwA
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XPeGaq+f
Subject: [Intel-wired-lan] [PATCH iwl-next 2/4] ice: split ice_init_hw() out
 from ice_init_dev()
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
Cc: netdev@vger.kernel.org, Marcin Szycik <marcin.szycik@linux.intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Split ice_init_hw() call out from ice_init_dev(). Such move enables
pulling the former to be even earlier on call path, what would enable
moving ice_adapter init to be between the two (in subsequent commit).
Such move enables ice_adapter to know about number of PFs.

Do the same for ice_deinit_hw(), so the init and deinit calls could
be easily mirrored.
Next commit will rename unrelated goto labels to unroll prefix.

Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 .../net/ethernet/intel/ice/devlink/devlink.c  | 10 ++++++++-
 drivers/net/ethernet/intel/ice/ice_main.c     | 22 +++++++++----------
 2 files changed, 20 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
index 415445cefdb2..24bb85dbfa86 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
@@ -1207,9 +1207,15 @@ static int ice_devlink_reinit_up(struct ice_pf *pf)
 	struct ice_vsi *vsi = ice_get_main_vsi(pf);
 	int err;
 
+	err = ice_init_hw(&pf->hw);
+	if (err) {
+		dev_err(ice_pf_to_dev(pf), "ice_init_hw failed: %d\n", err);
+		return err;
+	}
+
 	err = ice_init_dev(pf);
 	if (err)
-		return err;
+		goto unroll_hw_init;
 
 	vsi->flags = ICE_VSI_FLAG_INIT;
 
@@ -1232,6 +1238,8 @@ static int ice_devlink_reinit_up(struct ice_pf *pf)
 	rtnl_unlock();
 err_vsi_cfg:
 	ice_deinit_dev(pf);
+unroll_hw_init:
+	ice_deinit_hw(&pf->hw);
 	return err;
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 53479b729492..f0903dddcb16 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4753,12 +4753,6 @@ int ice_init_dev(struct ice_pf *pf)
 	struct ice_hw *hw = &pf->hw;
 	int err;
 
-	err = ice_init_hw(hw);
-	if (err) {
-		dev_err(dev, "ice_init_hw failed: %d\n", err);
-		return err;
-	}
-
 	ice_init_feature_support(pf);
 
 	err = ice_init_ddp_config(hw, pf);
@@ -4779,7 +4773,7 @@ int ice_init_dev(struct ice_pf *pf)
 	err = ice_init_pf(pf);
 	if (err) {
 		dev_err(dev, "ice_init_pf failed: %d\n", err);
-		goto err_init_pf;
+		return err;
 	}
 
 	pf->hw.udp_tunnel_nic.set_port = ice_udp_tunnel_set_port;
@@ -4823,8 +4817,6 @@ int ice_init_dev(struct ice_pf *pf)
 	ice_clear_interrupt_scheme(pf);
 err_init_interrupt_scheme:
 	ice_deinit_pf(pf);
-err_init_pf:
-	ice_deinit_hw(hw);
 	return err;
 }
 
@@ -5315,9 +5307,15 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 		hw->debug_mask = debug;
 #endif
 
+	err = ice_init_hw(hw);
+	if (err) {
+		dev_err(dev, "ice_init_hw failed: %d\n", err);
+		goto unroll_adapter;
+	}
+
 	err = ice_init(pf);
 	if (err)
-		goto err_init;
+		goto unroll_hw_init;
 
 	devl_lock(priv_to_devlink(pf));
 	err = ice_load(pf);
@@ -5336,7 +5334,9 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 err_load:
 	devl_unlock(priv_to_devlink(pf));
 	ice_deinit(pf);
-err_init:
+unroll_hw_init:
+	ice_deinit_hw(hw);
+unroll_adapter:
 	ice_adapter_put(pdev);
 	return err;
 }
-- 
2.46.0

