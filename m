Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A45E38AE9A1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Apr 2024 16:35:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F41654071B;
	Tue, 23 Apr 2024 14:35:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SOrhocJM2uTM; Tue, 23 Apr 2024 14:35:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 63CBF40716
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713882911;
	bh=bBgf0AOHK56kSex7a5EJFZ4Tyt6xjDTDBrrmBrAF2to=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=mwM0xmKd1aEWkAQJsa6/Wb3qHRJWZTnEBe0h/IsifWdsoiEiQqo4bJEM5aX9DNCbU
	 Jft98XFbePYsHrE2VS0XTsHyN7vILd9XcBmqdVhprbA0nYdDIme/om9idlHncvfr30
	 qGPVb/rPkaBoXmFU/auIPP+aDOypme9/d/FjhgLAJxmUH5hfv9sZcPDVzN3vMwc7vc
	 FwY9sPzEOHFVGFK9/HH8bKcK+5Kzv94U/4BEr/AcyPubePqC/0EnkG5L2ioPzgvQls
	 DLQqAmIqYWoUEMuQvyqBiAtHRgxGBNFrv15pfM8yuWkzaOxWXZ/NhobeeY5nWS6hI4
	 e/jGyfXArfWbw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 63CBF40716;
	Tue, 23 Apr 2024 14:35:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 44B031BF28A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 14:35:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2FEA640512
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 14:35:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UAZ8ZLJYhzWS for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Apr 2024 14:35:07 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E8A2D400B8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E8A2D400B8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E8A2D400B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 14:35:06 +0000 (UTC)
X-CSE-ConnectionGUID: ry0r1WjSTdO0JQk6VoF05A==
X-CSE-MsgGUID: eWjQNhW0RRKDsppBhr8B9Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11053"; a="20870921"
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="20870921"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2024 07:35:01 -0700
X-CSE-ConnectionGUID: dqkM8oChRHmUNfCdjg8Ofg==
X-CSE-MsgGUID: 1a3IM4mjQA6lAwjOa+VG+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="24843324"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa006.jf.intel.com with ESMTP; 23 Apr 2024 07:34:59 -0700
Received: from mystra-4.igk.intel.com (mystra-4.igk.intel.com [10.123.220.40])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id C2DE3332BD;
 Tue, 23 Apr 2024 15:34:51 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 23 Apr 2024 16:36:32 +0200
Message-ID: <20240423143632.45086-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713882907; x=1745418907;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JJeDsjTN75HCqhlyAhfBJzYPhMpKfc9FiSlj9/utqQ8=;
 b=JdaFjDSsFJKQkasuYhIaL/1Vtghj6aORF0e4EVoQNgFVdDwo43JcXbMV
 teYTqOxHYCa9gfsPNpfZir4gdK/ARkd5JdVMI8xoWEfviUamK7nijfAOk
 f+joY1/zfgIkW5a8gMggOkb0P6dFNH5Fwdsm7WFG8kPNXw1i0ENJGattZ
 kVCWsXfIbjsfXbuyFb0BCXNgL/Q66MnO92TGGxIVD4rE7moCUpguNAGGf
 Cb0SBxMxTS5hXbSJmmg3K5AlhM0RJmiM3jXqEAnALko2v6p5U4BAzcX1j
 c4KvdUcxBMFYRiUVqmliwF8BeUYNNbRcqINvdPdbVQOFr0cETgFkIq6bc
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JdaFjDSs
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: remove correct filters
 during eswitch release
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
 Wojciech Drewek <wojciech.drewek@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

ice_clear_dflt_vsi() is only removing default rule. Both default RX and
TX rule should be removed during release.

If it isn't switching to switchdev, second time results in error, because
TX filter is already there.

Fix it by removing the correct set of rules.

Fixes: 50d62022f455 ("ice: default Tx rule instead of to queue")
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
It is targetting iwl-next with fix, because the broken patch isn't yet
in net repo.
---
 drivers/net/ethernet/intel/ice/ice_eswitch.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index c902848cf88e..b102db8b829a 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -246,7 +246,10 @@ static void ice_eswitch_release_env(struct ice_pf *pf)
 	ice_vsi_update_local_lb(uplink_vsi, false);
 	ice_vsi_update_security(uplink_vsi, ice_vsi_ctx_clear_allow_override);
 	vlan_ops->ena_rx_filtering(uplink_vsi);
-	ice_clear_dflt_vsi(uplink_vsi);
+	ice_cfg_dflt_vsi(uplink_vsi->port_info, uplink_vsi->idx, false,
+			 ICE_FLTR_TX);
+	ice_cfg_dflt_vsi(uplink_vsi->port_info, uplink_vsi->idx, false,
+			 ICE_FLTR_RX);
 	ice_fltr_add_mac_and_broadcast(uplink_vsi,
 				       uplink_vsi->port_info->mac.perm_addr,
 				       ICE_FWD_TO_VSI);
-- 
2.41.0

