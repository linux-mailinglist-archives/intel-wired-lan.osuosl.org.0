Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AD318B09256
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Jul 2025 18:57:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4EE0684042;
	Thu, 17 Jul 2025 16:57:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GJQC2E7c95VC; Thu, 17 Jul 2025 16:57:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 87E6583D4E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752771472;
	bh=2Qw1HSL8YL1MeUKPf/ggeOPFU2Q6Z2AFYc3fZxqw3Qo=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4va5g90+W7vToWMK37gk/+JDpBzAyCzVHJRX9ZaCBGF5vxAdA3u9QnvPMyyN7qphi
	 ftG2EDihIIsqTPQ7X0iOq3eEufGTO4lzvluz9+cbevZ//8FSipq3QOpr/eTq/fqbZ8
	 NYSndq86jjODAkJHDB5XK8S1SyH6b3qBf12DQwZjzkec19PF8KZFTyev5htK5LyDn4
	 PIMQNfR6548IBGsMfkwibzOJJeRlGuXieO3WyV9HqOV1eFZRvALYg0bvfVgaQo+Abz
	 KdiJvhQcf1VqzPY815ESV7GLwHQkWEWtqiaQLVlPtSpeQJw/8ulg9f7sNwlsrwnej6
	 /nYpXSgPyLIxw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 87E6583D4E;
	Thu, 17 Jul 2025 16:57:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 81071A59
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 16:57:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5C0D0615D4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 16:57:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wIuuf5jLrSfa for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Jul 2025 16:57:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8DB78608BE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8DB78608BE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8DB78608BE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 16:57:46 +0000 (UTC)
X-CSE-ConnectionGUID: nX19CtXtT9ONq8sE/GFAoA==
X-CSE-MsgGUID: ocxl8CQ2SkutlIsGxthqUA==
X-IronPort-AV: E=McAfee;i="6800,10657,11495"; a="55211387"
X-IronPort-AV: E=Sophos;i="6.16,319,1744095600"; d="scan'208";a="55211387"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 09:57:43 -0700
X-CSE-ConnectionGUID: +oNLc6jlTWm6qJwQ9JUYQw==
X-CSE-MsgGUID: J1Qfez85RDGWGx4uNcw+8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,319,1744095600"; d="scan'208";a="158199869"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 09:57:43 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Thu, 17 Jul 2025 09:57:08 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250717-jk-ddp-safe-mode-issue-v1-1-e113b2baed79@intel.com>
References: <20250717-jk-ddp-safe-mode-issue-v1-0-e113b2baed79@intel.com>
In-Reply-To: <20250717-jk-ddp-safe-mode-issue-v1-0-e113b2baed79@intel.com>
To: Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: Jacob Keller <jacob.e.keller@intel.com>, vgrinber@redhat.com, 
 netdev@vger.kernel.org
X-Mailer: b4 0.15-dev-d4ca8
X-Developer-Signature: v=1; a=openpgp-sha256; l=5881;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=QJAmATn1/xDVBE8Ow/m9szQwP2lxsuNfjj7GBO9aCTw=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhoxK7TaznQpFnT7soty72H4af7a9ob+t9MTjI73V5wx+8
 aUpnjnUUcrCIMbFICumyKLgELLyuvGEMK03znIwc1iZQIYwcHEKwETOP2f4K+zu/UFPuENN+tvM
 Dd5H7q2O9lye7Cl5yFYkZ6NvzJKv4gz/g1otGb2vJn42mHKk8tnPG3kvdZeICV9jv9ySMGfa3/p
 3XAA=
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752771468; x=1784307468;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=QJAmATn1/xDVBE8Ow/m9szQwP2lxsuNfjj7GBO9aCTw=;
 b=NF+kgufruTXBDpdQjtzcq+r2efNIcQgSzU2UE0SXMeTaNyKQwxYIMsMh
 PbEOeUc0ZYZC+EYx6qWKwBhyBMT3F3suS4tLeGWZotUAzLuLpNvi+/v6C
 z0WyIQEsm38TGtHpEGubLYBnQNBxqn6wNZMLdoiWT7ZlaxynuGFbUjPXv
 e6F6SnUFuhTHs7K1ixjVmiyiqIWyj3R4I+pvnlVcXrS5ENj8q+iSRNkSs
 cN/x+tgU4m5aKK9oxLaQdCO2cx854Arz190Ph7qt0uJdx66W9oF2Uuy0o
 O04Ej8Oys7oJI7xqyESDo3quz+ksrB9GFORDlBo9sFHvlK8ygS897e1Bi
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NF+kgufr
Subject: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: fix double-call to
 ice_deinit_hw() during probe failure
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

The following (and similar) KFENCE bugs have recently been found occurring
during certain error flows of the ice_probe() function:

kernel: ==================================================================
kernel: BUG: KFENCE: use-after-free read in ice_cleanup_fltr_mgmt_struct+0x1d
kernel: Use-after-free read at 0x00000000e72fe5ed (in kfence-#223):
kernel:  ice_cleanup_fltr_mgmt_struct+0x1d/0x200 [ice]
kernel:  ice_deinit_hw+0x1e/0x60 [ice]
kernel:  ice_probe+0x245/0x2e0 [ice]
kernel:
kernel: kfence-#223: <..snip..>
kernel: allocated by task 7553 on cpu 0 at 2243.527621s (198.108303s ago):
kernel:  devm_kmalloc+0x57/0x120
kernel:  ice_init_hw+0x491/0x8e0 [ice]
kernel:  ice_probe+0x203/0x2e0 [ice]
kernel:
kernel: freed by task 7553 on cpu 0 at 2441.509158s (0.175707s ago):
kernel:  ice_deinit_hw+0x1e/0x60 [ice]
kernel:  ice_init+0x1ad/0x570 [ice]
kernel:  ice_probe+0x22b/0x2e0 [ice]
kernel:
kernel: ==================================================================

These occur as the result of a double-call to ice_deinit_hw(). This double
call happens if ice_init() fails at any point after calling
ice_init_dev().

Upon errors, ice_init() calls ice_deinit_dev(), which is supposed to be the
inverse of ice_init_dev(). However, currently ice_init_dev() does not call
ice_init_hw(). Instead, ice_init_hw() is called by ice_probe(). Thus,
ice_probe() itself calls ice_deinit_hw() as part of its error cleanup
logic.

This results in two calls to ice_deinit_hw() which results in straight
forward use-after-free violations due to double calling kfree and other
cleanup functions.

To avoid this double call, move the call to ice_init_hw() into
ice_init_dev(), and remove the now logically unnecessary cleanup from
ice_probe(). This is simpler than the alternative of moving ice_deinit_hw()
*out* of ice_deinit_dev().

Moving the calls to ice_deinit_hw() requires validating all cleanup paths,
and changing significantly more code. Moving the calls of ice_init_hw()
requires only validating that the new placement is still prior to all HW
structure accesses.

For ice_probe(), this now delays ice_init_hw() from before
ice_adapter_get() to just after it. This is safe, as ice_adapter_get() does
not rely on the HW structure.

For ice_devlink_reinit_up(), the ice_init_hw() is now called after
ice_set_min_max_msix(). This is also safe as that function does not access
the HW structure either.

This flow makes more logical sense, as ice_init_dev() is mirrored by
ice_deinit_dev(), so it reasonably should be the caller of ice_init_hw().
It also reduces one extra call to ice_init_hw() since both ice_probe() and
ice_devlink_reinit_up() call ice_init_dev().

This resolves the double-free and avoids memory corruption and other
invalid memory accesses in the event of a failed probe.

Fixes: 5b246e533d01 ("ice: split probe into smaller functions")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/devlink/devlink.c | 10 +---------
 drivers/net/ethernet/intel/ice/ice_main.c        | 24 +++++++++++-------------
 2 files changed, 12 insertions(+), 22 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
index 4af60e2f37df..ef49da0590b3 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
@@ -1233,18 +1233,12 @@ static int ice_devlink_reinit_up(struct ice_pf *pf)
 	struct ice_vsi *vsi = ice_get_main_vsi(pf);
 	int err;
 
-	err = ice_init_hw(&pf->hw);
-	if (err) {
-		dev_err(ice_pf_to_dev(pf), "ice_init_hw failed: %d\n", err);
-		return err;
-	}
-
 	/* load MSI-X values */
 	ice_set_min_max_msix(pf);
 
 	err = ice_init_dev(pf);
 	if (err)
-		goto unroll_hw_init;
+		return err;
 
 	vsi->flags = ICE_VSI_FLAG_INIT;
 
@@ -1267,8 +1261,6 @@ static int ice_devlink_reinit_up(struct ice_pf *pf)
 	rtnl_unlock();
 err_vsi_cfg:
 	ice_deinit_dev(pf);
-unroll_hw_init:
-	ice_deinit_hw(&pf->hw);
 	return err;
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 0a11b4281092..c44bb8153ad0 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4739,6 +4739,12 @@ int ice_init_dev(struct ice_pf *pf)
 	struct ice_hw *hw = &pf->hw;
 	int err;
 
+	err = ice_init_hw(hw);
+	if (err) {
+		dev_err(dev, "ice_init_hw failed: %d\n", err);
+		return err;
+	}
+
 	ice_init_feature_support(pf);
 
 	err = ice_init_ddp_config(hw, pf);
@@ -4759,7 +4765,7 @@ int ice_init_dev(struct ice_pf *pf)
 	err = ice_init_pf(pf);
 	if (err) {
 		dev_err(dev, "ice_init_pf failed: %d\n", err);
-		return err;
+		goto unroll_hw_init;
 	}
 
 	pf->hw.udp_tunnel_nic.set_port = ice_udp_tunnel_set_port;
@@ -4803,6 +4809,8 @@ int ice_init_dev(struct ice_pf *pf)
 	ice_clear_interrupt_scheme(pf);
 unroll_pf_init:
 	ice_deinit_pf(pf);
+unroll_hw_init:
+	ice_deinit_hw(hw);
 	return err;
 }
 
@@ -5330,17 +5338,9 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 	if (ice_is_recovery_mode(hw))
 		return ice_probe_recovery_mode(pf);
 
-	err = ice_init_hw(hw);
-	if (err) {
-		dev_err(dev, "ice_init_hw failed: %d\n", err);
-		return err;
-	}
-
 	adapter = ice_adapter_get(pdev);
-	if (IS_ERR(adapter)) {
-		err = PTR_ERR(adapter);
-		goto unroll_hw_init;
-	}
+	if (IS_ERR(adapter))
+		return PTR_ERR(adapter);
 	pf->adapter = adapter;
 
 	err = ice_init(pf);
@@ -5366,8 +5366,6 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 	ice_deinit(pf);
 unroll_adapter:
 	ice_adapter_put(pdev);
-unroll_hw_init:
-	ice_deinit_hw(hw);
 	return err;
 }
 

-- 
2.50.0.349.ga842a77808e9

