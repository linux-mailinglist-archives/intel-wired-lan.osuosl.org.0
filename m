Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB0CB54F20
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Sep 2025 15:17:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C1D8A40677;
	Fri, 12 Sep 2025 13:17:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C0JXF-duUNo7; Fri, 12 Sep 2025 13:17:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E230406ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757683042;
	bh=JfxjDqEeMpmCRAgAvNGpx34czSe/zbCnhdR3elPh5vA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=btGJuZebNangSWWUJx3v2olaihGUhp/YPxXEmFOscljHkWDSrGZ7S2qe++JfRIabp
	 I0qehgDTNqzQwOgZTDB54uZqdhuRvknxog8dcIAKksCDKXg2bXlEJFz6kwdMjtM577
	 jqL/7d3eytFwtr1NAOkQxdv0naNPjntsufkcuDK03bS5y5jczBqE7GuLY1WKK7ehgT
	 7FrLYZtDitN8DjCoywHgrhJ03fvzdnkLxZNON9b4dLOcQJ5BWSB6/c6iniDZQV9suB
	 lOzEvN0gTOCtdFX8LvB7egTdJYAlBFJ1MFuxiTj1dJPBK9i/4ZJfP+Ac6aWESLjOTP
	 WvlETzNXjQnGw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3E230406ED;
	Fri, 12 Sep 2025 13:17:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 038E525B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 13:17:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F2FC58230C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 13:17:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TWaokPs1JkHj for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Sep 2025 13:17:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 082908230A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 082908230A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 082908230A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 13:17:16 +0000 (UTC)
X-CSE-ConnectionGUID: cRVA5s1cREO6xXRVaYq0aA==
X-CSE-MsgGUID: QU5q0QDHT+GXmUuTrsolWw==
X-IronPort-AV: E=McAfee;i="6800,10657,11551"; a="85461437"
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="85461437"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 06:17:16 -0700
X-CSE-ConnectionGUID: 7+Iq9igTS02weQMeF08e6w==
X-CSE-MsgGUID: 637zUvYxTFOAiON/icoxog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="173131234"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa006.jf.intel.com with ESMTP; 12 Sep 2025 06:17:14 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 52BAA2FC6F;
 Fri, 12 Sep 2025 14:17:13 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Fri, 12 Sep 2025 15:06:25 +0200
Message-Id: <20250912130627.5015-8-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20250912130627.5015-1-przemyslaw.kitszel@intel.com>
References: <20250912130627.5015-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757683037; x=1789219037;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EuAcG0yM7njKO2DdFrnScVlD8tGBmuabGN0D+8eny7c=;
 b=L7MkWwYzuwrC7MqE0XXwD/l7iDHMvkB3zUNVPVOIg3aZpVKtOo2S8DgQ
 WYNMx4fUjlTUv0hkxtz7azZEgfauu0WAFFoffmPHFpiUkBrlXLpQhTUvm
 OBZc6wP7bmUFIhugkI5UjJ8rTJ4bXPFgGqmbrs6OYGYatV0tk1fDx56lI
 Q8V7G2Mr8LvZNUl5AL9U9wE5LuAxMVF0RQzrSyYlOOhON09I/Xilh8bXQ
 V1rgxuBvl0cUihG+G+SAcbRVIqlyP95ybkFIxPwalNgkyZ7hxlvtt/7LH
 IyGd75Rf5QdbgAGMlWQboKsFToMbkdgKz8PXwNynKKj/w2DWrde9FnNWR
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L7MkWwYz
Subject: [Intel-wired-lan] [PATCH iwl-next 7/9] ice: extract ice_init_dev()
 from ice_init()
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
Cc: netdev@vger.kernel.org, Simon Horman <horms@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Extract ice_init_dev() from ice_init(), to allow service task and IRQ
scheme teardown to be put after clearing SW constructs in the subsequent
commit.

Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 6d9de6e24804..faee44ad5928 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5054,14 +5054,10 @@ static int ice_init(struct ice_pf *pf)
 	struct device *dev = ice_pf_to_dev(pf);
 	int err;
 
-	err = ice_init_dev(pf);
-	if (err)
-		return err;
-
 	err = ice_init_pf(pf);
 	if (err) {
 		dev_err(dev, "ice_init_pf failed: %d\n", err);
-		goto unroll_dev_init;
+		return err;
 	}
 
 	if (pf->hw.mac_type == ICE_MAC_E830) {
@@ -5111,8 +5107,6 @@ static int ice_init(struct ice_pf *pf)
 	ice_dealloc_vsis(pf);
 unroll_pf_init:
 	ice_deinit_pf(pf);
-unroll_dev_init:
-	ice_deinit_dev(pf);
 	return err;
 }
 
@@ -5124,7 +5118,6 @@ static void ice_deinit(struct ice_pf *pf)
 	ice_deinit_pf_sw(pf);
 	ice_dealloc_vsis(pf);
 	ice_deinit_pf(pf);
-	ice_deinit_dev(pf);
 }
 
 /**
@@ -5354,10 +5347,14 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 	}
 	pf->adapter = adapter;
 
-	err = ice_init(pf);
+	err = ice_init_dev(pf);
 	if (err)
 		goto unroll_adapter;
 
+	err = ice_init(pf);
+	if (err)
+		goto unroll_dev_init;
+
 	devl_lock(priv_to_devlink(pf));
 	err = ice_load(pf);
 	if (err)
@@ -5375,6 +5372,8 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 unroll_init:
 	devl_unlock(priv_to_devlink(pf));
 	ice_deinit(pf);
+unroll_dev_init:
+	ice_deinit_dev(pf);
 unroll_adapter:
 	ice_adapter_put(pdev);
 unroll_hw_init:
@@ -5488,6 +5487,7 @@ static void ice_remove(struct pci_dev *pdev)
 	devl_unlock(priv_to_devlink(pf));
 
 	ice_deinit(pf);
+	ice_deinit_dev(pf);
 	ice_vsi_release_all(pf);
 
 	ice_setup_mc_magic_wake(pf);
-- 
2.39.3

