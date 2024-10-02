Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D5FDB98D28D
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Oct 2024 13:53:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7C1A581F1F;
	Wed,  2 Oct 2024 11:53:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hhZHp_GgivWc; Wed,  2 Oct 2024 11:53:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CE54582035
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727870008;
	bh=/po4UHg6+FVc+bDGnzDTD+pU24IOhcJce0hf8snhtgY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=h5F7JaoUG6wRjTwtOIfyFDUeJIfCJgjasfPl8JCNExaZUafHfixDTQNxdRhOjbFSs
	 I+CluLVHDpkGP10RI2tUShS41k+x0GwKWEtxwyT5rRJblAHqeH7Xg2bNsxhzdaBNNr
	 ejNoHQoQAGCpozU0ZUz/HQ0tvwLyW92IFPjr8yEBOqHD+AvhQVmJK9+Rumdo/QJxM3
	 mYQqWq3REMYACRqwSCqqJ29SrEXKtPhKfpMvS4M9a2zIc6yVlYc6WZEENTJBwi0QLx
	 SxNp8gv16JGAmNO34Qq3ZSHDHCQ9sspTsMFVvE4IhZByKG89PtYmurwoBrktjF8S5t
	 gT929KQh0UCkA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CE54582035;
	Wed,  2 Oct 2024 11:53:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0964C1BF293
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 11:53:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 95CFA81F23
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 11:53:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UhxrrC9VEVD6 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Oct 2024 11:53:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E9AE681F17
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E9AE681F17
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E9AE681F17
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 11:53:21 +0000 (UTC)
X-CSE-ConnectionGUID: BlEXGTuhQeWwbSxlcBjOxg==
X-CSE-MsgGUID: JL44VaYyR32NAvFzVfPzfA==
X-IronPort-AV: E=McAfee;i="6700,10204,11212"; a="27183855"
X-IronPort-AV: E=Sophos;i="6.11,171,1725346800"; d="scan'208";a="27183855"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2024 04:53:21 -0700
X-CSE-ConnectionGUID: K4Q5q0PxQGiBWcdA7X5ymg==
X-CSE-MsgGUID: TuvBr/TeSCeEf1bqV11oNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,171,1725346800"; d="scan'208";a="78396383"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa005.fm.intel.com with ESMTP; 02 Oct 2024 04:53:20 -0700
Received: from pkitszel-desk.intel.com (unknown [10.245.246.21])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id CE5E628195;
 Wed,  2 Oct 2024 12:53:18 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Wed,  2 Oct 2024 13:50:24 +0200
Message-ID: <20241002115304.15127-10-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20241002115304.15127-6-przemyslaw.kitszel@intel.com>
References: <20241002115304.15127-6-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727870002; x=1759406002;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lBVtk9x2YLfOlUE3TMNMHn5v07L1WswRQRfR62EXUtI=;
 b=ciUImlDIb7iMN3lyq10gf3/yELhzo0gMUjrjZ+O5e1WdJm/1cK4fzUmq
 vvoO7yS121BrLU+dnskRRQSn8ae9U7+sOOKOE9SO1/zlCDQiRR/vQRt0F
 JOxH/CpP3XchhvLLLQdFFl8apaN35JCF/iN62jBR87TGm+flgYafQecAr
 maCFxQMA6/deLK8NcoBAWhAjmpSc7cThwEdDOFrjo+C+1rRKE9ZEwh5iz
 zFZHT00BMFYxfci1KxNKC3RAWFcRWSP3vWJdMLhS502pdP1LrNSrSMjMW
 emBGpQCGh/BWXCcnITXZxZ1w1IissBrczmmX+fPgFgOM/bgWHOJJNSGCi
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ciUImlDI
Subject: [Intel-wired-lan] [PATCH iwl-next 4/4] ice: ice_probe: init
 ice_adapter after HW init
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

Move ice_adapter initialization to be after HW init, so it could use HW
capabilities, like number of PFs. This is needed for devlink-resource
based RSS LUT size management for PF/VF (not in this series).

Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 21 +++++++++++----------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index a043deccf038..2b8db14d99f3 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5273,13 +5273,7 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 	}
 
 	pci_set_master(pdev);
-
-	adapter = ice_adapter_get(pdev);
-	if (IS_ERR(adapter))
-		return PTR_ERR(adapter);
-
 	pf->pdev = pdev;
-	pf->adapter = adapter;
 	pci_set_drvdata(pdev, pf);
 	set_bit(ICE_DOWN, pf->state);
 	/* Disable service task until DOWN bit is cleared */
@@ -5310,12 +5304,19 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 	err = ice_init_hw(hw);
 	if (err) {
 		dev_err(dev, "ice_init_hw failed: %d\n", err);
-		goto unroll_adapter;
+		return err;
 	}
 
+	adapter = ice_adapter_get(pdev);
+	if (IS_ERR(adapter)) {
+		err = PTR_ERR(adapter);
+		goto unroll_hw_init;
+	}
+	pf->adapter = adapter;
+
 	err = ice_init(pf);
 	if (err)
-		goto unroll_hw_init;
+		goto unroll_adapter;
 
 	devl_lock(priv_to_devlink(pf));
 	err = ice_load(pf);
@@ -5334,10 +5335,10 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 unroll_init:
 	devl_unlock(priv_to_devlink(pf));
 	ice_deinit(pf);
-unroll_hw_init:
-	ice_deinit_hw(hw);
 unroll_adapter:
 	ice_adapter_put(pdev);
+unroll_hw_init:
+	ice_deinit_hw(hw);
 	return err;
 }
 
-- 
2.46.0

