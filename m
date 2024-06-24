Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 04268914411
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jun 2024 09:59:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 70AF6406D8;
	Mon, 24 Jun 2024 07:59:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0dlXpIAyy12P; Mon, 24 Jun 2024 07:59:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 84DEC406CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719215979;
	bh=BgZP9/yfN/5TCwZeE4UIBKI22w54Nsv84CUwudD2MsY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=VavQdche+qHy4X3wYcm227oPjn/NDngaYjXOC0xRP0Nj3iHCYxfSyJcydZNEDK9Ox
	 nl8vu7dGLV8IHpvwQHnTuT3vvZtU4HjLwIMmTIFlkmvkoSLMXUOHU+NEx4HUQIInE+
	 oXLObcJYR4fatHy1z9kgYCGi8Hu3ikT1F/Mzo5DurO2gmrPQ0RzKpkugkUXQD/eACu
	 oNrVRWUDJJjMHflfe8JCr+eSRBGRymfW1I2t5JU7S7ER0RwbaPUnQPIhgWi7xZwUM/
	 gAXFPcoCEoGJTBwP60Vok5lh4IpuRahzu8jCg8qT3uOWowQFw/D782knd3YAKgYbld
	 nqLae88qDqSVg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 84DEC406CA;
	Mon, 24 Jun 2024 07:59:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ECB4B1BF20F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2024 07:59:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E6C9F6086D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2024 07:59:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1VRBLvFDFSoh for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jun 2024 07:59:37 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EDB6060867
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EDB6060867
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EDB6060867
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jun 2024 07:59:36 +0000 (UTC)
X-CSE-ConnectionGUID: 9/ZqTRdMQeKN7tiPkP5UZw==
X-CSE-MsgGUID: G00VgbLtSYSIOQeyTFBXpg==
X-IronPort-AV: E=McAfee;i="6700,10204,11112"; a="16304327"
X-IronPort-AV: E=Sophos;i="6.08,261,1712646000"; d="scan'208";a="16304327"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2024 00:59:36 -0700
X-CSE-ConnectionGUID: 5Pq8rWL1RP2s5KO6Lw7Kow==
X-CSE-MsgGUID: K/rcWNEWSo+/TmKxYzznuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,261,1712646000"; d="scan'208";a="43662741"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by orviesa006.jf.intel.com with ESMTP; 24 Jun 2024 00:59:34 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 24 Jun 2024 10:05:10 +0200
Message-ID: <20240624080510.19479-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719215978; x=1750751978;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NPzN9Uq5rPl0alRRzp0xYujnv5op3AGREsoiuba2g3E=;
 b=jVEMGxL8XiSnFVULl4dry8U19arzPPaoegajsUufaVHC//Q7Q2bZirGF
 v26sF8mAo945uiYgUw8nQWPrc+zJRhBNsE6Lc6S7cIxchhT/b9IkxQztQ
 iLNsWuchHsnAKY4l6D9AQAY0CsxcQvy//PbMPnKeIX0OFW2HxNplQ70Tr
 sZa0s092/C1D/4RbseujxpfV5m8/Z46UoK2KivTytQz2weCPBDVBVFQTg
 vHsDskj8E2bB9LKU44xRyd5CB8R+SMlVxAaVCD4QBzyHM7k7vcK9vnYa6
 YUnvDHYcxVi6JJwYOHfAjhn+nrOLAPqa8+vCEhSiQRoj55QHFMjXuCxWU
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jVEMGxL8
Subject: [Intel-wired-lan] [iwl-next v1] ice: remove eswitch rebuild
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
Cc: netdev@vger.kernel.org, Wojciech.Drewek@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Since the port representors are added one by one there is no need to do
eswitch rebuild. Each port representor is detached and attached in VF
reset path.

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_eswitch.c | 16 ----------------
 drivers/net/ethernet/intel/ice/ice_eswitch.h |  6 ------
 drivers/net/ethernet/intel/ice/ice_main.c    |  2 --
 3 files changed, 24 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index d8c06147d4d4..c0b3e70a7ea3 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -607,22 +607,6 @@ void ice_eswitch_detach_sf(struct ice_pf *pf, struct ice_dynamic_port *sf)
 	ice_eswitch_detach(pf, repr);
 }
 
-/**
- * ice_eswitch_rebuild - rebuild eswitch
- * @pf: pointer to PF structure
- */
-void ice_eswitch_rebuild(struct ice_pf *pf)
-{
-	struct ice_repr *repr;
-	unsigned long id;
-
-	if (!ice_is_switchdev_running(pf))
-		return;
-
-	xa_for_each(&pf->eswitch.reprs, id, repr)
-		ice_eswitch_detach(pf, repr);
-}
-
 /**
  * ice_eswitch_get_target - get netdev based on src_vsi from descriptor
  * @rx_ring: ring used to receive the packet
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.h b/drivers/net/ethernet/intel/ice/ice_eswitch.h
index 20f301093b36..20ce32dda69c 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.h
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.h
@@ -12,7 +12,6 @@ void ice_eswitch_detach_vf(struct ice_pf *pf, struct ice_vf *vf);
 void ice_eswitch_detach_sf(struct ice_pf *pf, struct ice_dynamic_port *sf);
 int ice_eswitch_attach_vf(struct ice_pf *pf, struct ice_vf *vf);
 int ice_eswitch_attach_sf(struct ice_pf *pf, struct ice_dynamic_port *sf);
-void ice_eswitch_rebuild(struct ice_pf *pf);
 
 int ice_eswitch_mode_get(struct devlink *devlink, u16 *mode);
 int
@@ -66,11 +65,6 @@ static inline int ice_eswitch_configure(struct ice_pf *pf)
 	return 0;
 }
 
-static inline int ice_eswitch_rebuild(struct ice_pf *pf)
-{
-	return -EOPNOTSUPP;
-}
-
 static inline int ice_eswitch_mode_get(struct devlink *devlink, u16 *mode)
 {
 	return DEVLINK_ESWITCH_MODE_LEGACY;
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index f38a30775a2e..14b61ed34dbe 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -7699,8 +7699,6 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 		goto err_vsi_rebuild;
 	}
 
-	ice_eswitch_rebuild(pf);
-
 	if (reset_type == ICE_RESET_PFR) {
 		err = ice_rebuild_channels(pf);
 		if (err) {
-- 
2.42.0

