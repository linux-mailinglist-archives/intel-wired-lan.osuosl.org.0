Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 44CA39E989E
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Dec 2024 15:20:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 26FD3403E4;
	Mon,  9 Dec 2024 14:20:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C-a3OA6eGSAC; Mon,  9 Dec 2024 14:20:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3290E40345
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733754040;
	bh=bLd1r3Xg5GeqNOUuWHJK0wwmJO08Ca/F0vlBzdLspik=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=ZQvEoTLDMe08DUd6+0AgfTWjRZUYNts40wDHm/HMlXleWUO3KhWYRjDphO/rz4gK6
	 a2ayzfis+5kyY0HbsMggfx1oSYdv/+4v7ipBnhIIEDW7hewMJpvm5ZjFvBZV6LZfaf
	 Nr0uKaPFNScVvP1fvxqu1XB7d26jCMLqyDkT6v+yMXoxIvZzHW8SlJYGKQXlhfqfCG
	 IDq4oKeTiFEWjBpWpfqermvKSC5haKzyval7sh96UEqV7BA0XmgGld7ozJs7Fd6kdb
	 Uoij9sudCoKGF8GlYlEmBhEC6K4gRuV1+AClYaaFEVCOuaEMVi+sD/D8oCcGg1cm8M
	 XSCpl9l0e4F6A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3290E40345;
	Mon,  9 Dec 2024 14:20:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id DD53BED2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Dec 2024 14:20:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C879440936
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Dec 2024 14:20:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g8NnNVu1vkPp for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Dec 2024 14:20:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 72E7040025
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 72E7040025
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 72E7040025
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Dec 2024 14:20:36 +0000 (UTC)
X-CSE-ConnectionGUID: 8rZWWCr/RUO/KesBWHXGdA==
X-CSE-MsgGUID: kZQBVppeRxiqVc+CRhC1Xg==
X-IronPort-AV: E=McAfee;i="6700,10204,11281"; a="34110209"
X-IronPort-AV: E=Sophos;i="6.12,219,1728975600"; d="scan'208";a="34110209"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2024 06:20:35 -0800
X-CSE-ConnectionGUID: 7JqJZmemSLmeRFeMvpV0dQ==
X-CSE-MsgGUID: Es16+6sTSQ+BlBm8KCAiIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,219,1728975600"; d="scan'208";a="94923537"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa007.fm.intel.com with ESMTP; 09 Dec 2024 06:20:32 -0800
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id AEC55312FE;
 Mon,  9 Dec 2024 14:20:30 +0000 (GMT)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Mon,  9 Dec 2024 15:08:53 +0100
Message-ID: <20241209140856.277801-1-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733754037; x=1765290037;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PLN8C0vyxeY0HZVJKEgoSC+dtNcyo3RDZ1X6tDGDsnU=;
 b=dPBfQGw3MkETJO+EkM1FJg6SZmk5KZM5NfAs2EzT2G2uIS4hormPe2Xs
 fVoEPP9Gd5sq754aUFhFnaBHTZlpcfmRjnuj2SbS+lhdfvMaHV+WV+T1S
 R8ZZv/ufwnDijFLYUsaM2xw7MmT+3Skw7PkLM/yxPVb4k4j4k9ujpAEbI
 B4pMURpuRWP2v1rXAXW2UipNxfUd2XQ0TxToM0ca7Ty6kW148t+2Bu0dW
 jAmBM9+dBK2N6aGYwSRIk1ah7cVJQ38DvQppwu/mQTHaTBwwy6NZEV8X5
 ru7L0reIJwfI2tiE2XFXZIHf99uh5ZkSGVvWRwNsn94oublA7raKR9BW7
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dPBfQGw3
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: do not configure destination
 override for switchdev
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
Cc: Larysa Zaremba <larysa.zaremba@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

After switchdev is enabled and disabled later, LLDP packets sending stops,
despite working perfectly fine before and during switchdev state.
To reproduce (creating/destroying VF is what triggers the reconfiguration):

devlink dev eswitch set pci/<address> mode switchdev
echo '2' > /sys/class/net/<ifname>/device/sriov_numvfs
echo '0' > /sys/class/net/<ifname>/device/sriov_numvfs

This happens because LLDP relies on the destination override functionality.
It needs to 1) set a flag in the descriptor, 2) set the VSI permission to
make it valid. The permissions are set when the PF VSI is first configured,
but switchdev then enables it for the uplink VSI (which is always the PF)
once more when configured and disables when deconfigured, which leads to
software-generated LLDP packets being blocked.

Do not modify the destination override permissions when configuring
switchdev, as the enabled state is the default configuration that is never
modified.

Fixes: 1a1c40df2e80 ("ice: set and release switchdev environment")
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_eswitch.c |  6 ------
 drivers/net/ethernet/intel/ice/ice_lib.c     | 18 ------------------
 drivers/net/ethernet/intel/ice/ice_lib.h     |  4 ----
 3 files changed, 28 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index fb527434b58b..b44a375e6365 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -50,9 +50,6 @@ static int ice_eswitch_setup_env(struct ice_pf *pf)
 	if (vlan_ops->dis_rx_filtering(uplink_vsi))
 		goto err_vlan_filtering;
 
-	if (ice_vsi_update_security(uplink_vsi, ice_vsi_ctx_set_allow_override))
-		goto err_override_uplink;
-
 	if (ice_vsi_update_local_lb(uplink_vsi, true))
 		goto err_override_local_lb;
 
@@ -64,8 +61,6 @@ static int ice_eswitch_setup_env(struct ice_pf *pf)
 err_up:
 	ice_vsi_update_local_lb(uplink_vsi, false);
 err_override_local_lb:
-	ice_vsi_update_security(uplink_vsi, ice_vsi_ctx_clear_allow_override);
-err_override_uplink:
 	vlan_ops->ena_rx_filtering(uplink_vsi);
 err_vlan_filtering:
 	ice_cfg_dflt_vsi(uplink_vsi->port_info, uplink_vsi->idx, false,
@@ -276,7 +271,6 @@ static void ice_eswitch_release_env(struct ice_pf *pf)
 	vlan_ops = ice_get_compat_vsi_vlan_ops(uplink_vsi);
 
 	ice_vsi_update_local_lb(uplink_vsi, false);
-	ice_vsi_update_security(uplink_vsi, ice_vsi_ctx_clear_allow_override);
 	vlan_ops->ena_rx_filtering(uplink_vsi);
 	ice_cfg_dflt_vsi(uplink_vsi->port_info, uplink_vsi->idx, false,
 			 ICE_FLTR_TX);
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index a7d45a8ce7ac..e07fc8851e1d 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3930,24 +3930,6 @@ void ice_vsi_ctx_clear_antispoof(struct ice_vsi_ctx *ctx)
 				 ICE_AQ_VSI_SEC_TX_PRUNE_ENA_S);
 }
 
-/**
- * ice_vsi_ctx_set_allow_override - allow destination override on VSI
- * @ctx: pointer to VSI ctx structure
- */
-void ice_vsi_ctx_set_allow_override(struct ice_vsi_ctx *ctx)
-{
-	ctx->info.sec_flags |= ICE_AQ_VSI_SEC_FLAG_ALLOW_DEST_OVRD;
-}
-
-/**
- * ice_vsi_ctx_clear_allow_override - turn off destination override on VSI
- * @ctx: pointer to VSI ctx structure
- */
-void ice_vsi_ctx_clear_allow_override(struct ice_vsi_ctx *ctx)
-{
-	ctx->info.sec_flags &= ~ICE_AQ_VSI_SEC_FLAG_ALLOW_DEST_OVRD;
-}
-
 /**
  * ice_vsi_update_local_lb - update sw block in VSI with local loopback bit
  * @vsi: pointer to VSI structure
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 10d6fc479a32..6085039bac95 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -104,10 +104,6 @@ ice_vsi_update_security(struct ice_vsi *vsi, void (*fill)(struct ice_vsi_ctx *))
 void ice_vsi_ctx_set_antispoof(struct ice_vsi_ctx *ctx);
 
 void ice_vsi_ctx_clear_antispoof(struct ice_vsi_ctx *ctx);
-
-void ice_vsi_ctx_set_allow_override(struct ice_vsi_ctx *ctx);
-
-void ice_vsi_ctx_clear_allow_override(struct ice_vsi_ctx *ctx);
 int ice_vsi_update_local_lb(struct ice_vsi *vsi, bool set);
 int ice_vsi_add_vlan_zero(struct ice_vsi *vsi);
 int ice_vsi_del_vlan_zero(struct ice_vsi *vsi);
-- 
2.43.0

