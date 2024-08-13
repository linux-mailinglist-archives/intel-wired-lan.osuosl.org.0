Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A5894FE76
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Aug 2024 09:16:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7332481772;
	Tue, 13 Aug 2024 07:16:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NwKMC_pzaSt3; Tue, 13 Aug 2024 07:16:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B59A1818C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723533377;
	bh=xRML6V1eWwxomvuCzetlDrCO+ctoRAEy//H6nZ5dS88=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=GztveQ4qtnOY1NQx3srX5s8nVkz7LJvQnvrhrR44biNMSdOC/s0qpLYtotoFMKQz1
	 BUwuL877zmimxbMme7hUgkuc0Frrlq1wg4CoZjd+PtkmbHIjK0h+hza1M9C548EzNq
	 aswylsGl1daoZ8FGIbScJlSq6vF/VYDmpwzhl+NX2g/ofx/7eLX3Od5afkwQD1TBOF
	 lec0vjIY40lzG8QKvpcymxNK9Cfob4VxYzGMV1Ths+ikgCaroKrNTU+uVPCRUZTlN5
	 2H3dKsmthULJwgxeYnmTT9dlja0xMzcgJdr6kAWjrGtqV9SGF8e+jRofc4w+fPoMRE
	 2zF4DvpgG+55Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B59A1818C4;
	Tue, 13 Aug 2024 07:16:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2CAA41BF951
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 07:16:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1932040248
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 07:16:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LAc-xQ0atkWe for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Aug 2024 07:16:14 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D391040207
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D391040207
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D391040207
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 07:16:13 +0000 (UTC)
X-CSE-ConnectionGUID: KPuLOR8sQ7ucWfKFJStz9Q==
X-CSE-MsgGUID: tEM9Tg/6Si21b4KluI9BsA==
X-IronPort-AV: E=McAfee;i="6700,10204,11162"; a="32249618"
X-IronPort-AV: E=Sophos;i="6.09,285,1716274800"; d="scan'208";a="32249618"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2024 00:16:13 -0700
X-CSE-ConnectionGUID: UZqk3DY/Rkana1e2lyEpMw==
X-CSE-MsgGUID: N7CxY5rlQT+smWHcHM90mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,285,1716274800"; d="scan'208";a="58866749"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by orviesa006.jf.intel.com with ESMTP; 13 Aug 2024 00:16:11 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 13 Aug 2024 09:16:10 +0200
Message-ID: <20240813071610.52295-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723533374; x=1755069374;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cjetck/ji/G4DJwkOP/ZmT9rxdNEogbxFc4YaqcT9MA=;
 b=FamqoidAj99j21ZN+QZn17+kmO6LZT92/k5BTmmq6dkJPbecVqAYrZfC
 y9auIJNaYQkk2rHI0+m0m/TfhiSTPBtLZT5rasoePZc9NBnsODC7Y0HmQ
 wr4WUpGod1+3DtYsDv4eGrXmQbfMzoICt+L3lMxSH61c1XyI4jfOyoyND
 8Z5DzyJlKlzkUaDSX9Bg8rIusCuKOp7rUxPSUey68kf7+z/SjC4z8IqZW
 y1jZoW+6bWsQ6kOZLgrwMfwB9kBEtUZWx9pcmjo79CYBWadQb4CHcGmJl
 UZv1JflGlCKnwyOO2PXKvOmB9DX9Zj7jxu2b0ISRamH78Fbul70H/QEcM
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FamqoidA
Subject: [Intel-wired-lan] [iwl-next v1] ice: use internal pf id instead of
 function number
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
Cc: jiri@resnulli.us, netdev@vger.kernel.org, wojciech.drewek@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Use always the same pf id in devlink port number. When doing
pass-through the PF to VM bus info func number can be any value.

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Suggested-by: Jiri Pirko <jiri@resnulli.us>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/devlink/devlink_port.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
index 4abdc40d345e..1fe441bfa0ca 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
@@ -340,7 +340,7 @@ int ice_devlink_create_pf_port(struct ice_pf *pf)
 		return -EIO;
 
 	attrs.flavour = DEVLINK_PORT_FLAVOUR_PHYSICAL;
-	attrs.phys.port_number = pf->hw.bus.func;
+	attrs.phys.port_number = pf->hw.pf_id;
 
 	/* As FW supports only port split options for whole device,
 	 * set port split options only for first PF.
@@ -458,7 +458,7 @@ int ice_devlink_create_vf_port(struct ice_vf *vf)
 		return -EINVAL;
 
 	attrs.flavour = DEVLINK_PORT_FLAVOUR_PCI_VF;
-	attrs.pci_vf.pf = pf->hw.bus.func;
+	attrs.pci_vf.pf = pf->hw.pf_id;
 	attrs.pci_vf.vf = vf->vf_id;
 
 	ice_devlink_set_switch_id(pf, &attrs.switch_id);
-- 
2.42.0

