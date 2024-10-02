Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EAC998D28C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Oct 2024 13:53:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 786358203A;
	Wed,  2 Oct 2024 11:53:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UAHfyn0ESTve; Wed,  2 Oct 2024 11:53:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B73BA82035
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727870007;
	bh=zkfRN1Rv/y6qbCsDr7VkvM12FEmgvMTZkAVnB/ciSsY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vk4Ke78IguhrqLha0Xm5XKla6M4U0bFlF1s2HnsD6c0sFvT6qEiis6qB077ldQw+e
	 Qo26zJ25c7M+XtyYZT74uVJkjsMnc40ZP9nFCEVzd9OwSecSNhzgfwl3aDVV9u5EAC
	 N4IR/wtpe6ls9MdCAk1Pe95XKrQ/cXEqtNOCNpZ5OyAUcuvQG8Hn+7CYV2vy76vZQC
	 mRNIfJx6MrBbX8ex95cmYWZDqh8pKCtas6JCVya6/D0fssITlLI0HSGQcCI4zvuyAs
	 Zeslh3sQg2n3jEBasEicZxu/LzWRuSXmuiRtVIcYg6S3Mna8BPBM5wAOLcNkQ+yRAE
	 /t1/bCTWf93cg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B73BA82035;
	Wed,  2 Oct 2024 11:53:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 29D1B1BF293
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 11:53:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 23CE581F0E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 11:53:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nprxNFJnD3lA for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Oct 2024 11:53:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6A0908128A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6A0908128A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6A0908128A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 11:53:20 +0000 (UTC)
X-CSE-ConnectionGUID: L6rr32g/RSm/UQ+JScq31w==
X-CSE-MsgGUID: Vj2F8xSYRzWRXX4cSSiJDA==
X-IronPort-AV: E=McAfee;i="6700,10204,11212"; a="27183849"
X-IronPort-AV: E=Sophos;i="6.11,171,1725346800"; d="scan'208";a="27183849"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2024 04:53:20 -0700
X-CSE-ConnectionGUID: bvAv0O+2QdGaGgneUFgp5g==
X-CSE-MsgGUID: eses7engRIu4gk5Hvao7yw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,171,1725346800"; d="scan'208";a="78396378"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa005.fm.intel.com with ESMTP; 02 Oct 2024 04:53:19 -0700
Received: from pkitszel-desk.intel.com (unknown [10.245.246.21])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id ADDB428169;
 Wed,  2 Oct 2024 12:53:17 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Wed,  2 Oct 2024 13:50:23 +0200
Message-ID: <20241002115304.15127-9-przemyslaw.kitszel@intel.com>
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
 bh=Q1yTIsduVqIOGDDgsfBNfMeoNAlnl+VRtH7v9641Hd0=;
 b=n4c4HoYbot4zOGhwSGemryRcwNltPK5WL5mwihZuOHcz5EKuTsnMbBfQ
 05b3vLyTSEMzNqG7PNk5PH8ALLMz8jWUFTtuowlJmmUecqcV/QLHmvoUY
 HcqsWAvVnwvrYzdH1gIa6cizq91cKlvK4hQB9O+VaxRqbNOSsXg+9MSqe
 j1/Lg5InvsBjN4E8P9snXPcPWFQs7CUc2Ced8RxDFFxOrmygJFO0BJqwZ
 Gn5+Kz750uv2EOjl7eZaiphp2Rag9EtFztcW/6j3g78Nuhfxw58kdlfUe
 SVJWkA4nJrXlesf7pj9u2vlmSyvd+HX2be8MetnW9cqoC8KqcbpyZfwoE
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=n4c4HoYb
Subject: [Intel-wired-lan] [PATCH iwl-next 3/4] ice: minor: rename goto
 labels from err to unroll
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

Clean up goto labels after previous commit, to conform to single naming
scheme in ice_probe() and ice_init_dev().

Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index f0903dddcb16..a043deccf038 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4797,7 +4797,7 @@ int ice_init_dev(struct ice_pf *pf)
 	if (err) {
 		dev_err(dev, "ice_init_interrupt_scheme failed: %d\n", err);
 		err = -EIO;
-		goto err_init_interrupt_scheme;
+		goto unroll_pf_init;
 	}
 
 	/* In case of MSIX we are going to setup the misc vector right here
@@ -4808,14 +4808,14 @@ int ice_init_dev(struct ice_pf *pf)
 	err = ice_req_irq_msix_misc(pf);
 	if (err) {
 		dev_err(dev, "setup of misc vector failed: %d\n", err);
-		goto err_req_irq_msix_misc;
+		goto unroll_irq_scheme_init;
 	}
 
 	return 0;
 
-err_req_irq_msix_misc:
+unroll_irq_scheme_init:
 	ice_clear_interrupt_scheme(pf);
-err_init_interrupt_scheme:
+unroll_pf_init:
 	ice_deinit_pf(pf);
 	return err;
 }
@@ -5320,18 +5320,18 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 	devl_lock(priv_to_devlink(pf));
 	err = ice_load(pf);
 	if (err)
-		goto err_load;
+		goto unroll_init;
 
 	err = ice_init_devlink(pf);
 	if (err)
-		goto err_init_devlink;
+		goto unroll_load;
 	devl_unlock(priv_to_devlink(pf));
 
 	return 0;
 
-err_init_devlink:
+unroll_load:
 	ice_unload(pf);
-err_load:
+unroll_init:
 	devl_unlock(priv_to_devlink(pf));
 	ice_deinit(pf);
 unroll_hw_init:
-- 
2.46.0

