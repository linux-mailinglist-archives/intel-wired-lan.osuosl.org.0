Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 606A6B54F22
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Sep 2025 15:17:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C8460824DF;
	Fri, 12 Sep 2025 13:17:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9VszuAVrZlsY; Fri, 12 Sep 2025 13:17:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2E37E824D4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757683040;
	bh=xc4ZkU6vjLa67UjzVHyomD+FdIm/OKdszPgdkIpSP4A=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=p9/h4Q4vPcR5r6bM2+z06brs99CkZ3Cp7E4594Xuk7eo5plbIVAu2R1GtGmWXJ07J
	 g1h6UdR8tv23ffPlzjS29Bn4GHJolt+TVlZCoECJ5wRtmHbq0rrUE0OWFY1+Pz9Vwr
	 7BMyC4OwQfCRWYqpci/zGIBoUU/7NeS5r5Y14SgHoGpeAC1+iaxZNRZf6pzlstdgmv
	 s+TemGWUk6+kI6GLMxowCsxsdfoRLRjKRO0j2KfhCUHeJdnAKZ/KZuSGNnNhwXNivU
	 +6ikrr66+xGguETJ0oFn1No0yiru2CcoMj4xJAtFq3A2B6MpAow0Y6jVV1/7DmaQY5
	 HNtHu5bOPxHEg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2E37E824D4;
	Fri, 12 Sep 2025 13:17:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4F3F525B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 13:17:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8372D8230C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 13:17:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5v4u72hI3OkI for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Sep 2025 13:17:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D4E8B8230D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D4E8B8230D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D4E8B8230D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 13:17:15 +0000 (UTC)
X-CSE-ConnectionGUID: a2zRgdb7TpC0JMypHr9riw==
X-CSE-MsgGUID: 9c0MglZZQvOcGWqJmQWnoQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11551"; a="85461425"
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="85461425"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 06:17:15 -0700
X-CSE-ConnectionGUID: Ouq+kAEFTm+s7oFBhulCEA==
X-CSE-MsgGUID: 1ZjoFv0yTripHCbjuczb7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="173131229"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa006.jf.intel.com with ESMTP; 12 Sep 2025 06:17:13 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id EB5482FC74;
 Fri, 12 Sep 2025 14:17:11 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Fri, 12 Sep 2025 15:06:23 +0200
Message-Id: <20250912130627.5015-6-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20250912130627.5015-1-przemyslaw.kitszel@intel.com>
References: <20250912130627.5015-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757683036; x=1789219036;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WimtE2+lSFCJa+aikLsi54UGM4k6ywZR+VyG85KhLU4=;
 b=YxEkGYagmrgWtOLwlENGmGLao+H1TfGllOUqLPwp5ZTk6EGo9wr0w8Vk
 /xAkzag/7vRHvcm2pJkKL1GNx9nMy/Z48Ws5G5i3mpo8ukNFKPDjKXdzc
 jOt857hKQhbxjrTDDogKHdj86gpKvEGCHCS6/EasQ0NkrByY6OuONv1ux
 YcW3yVBpkocf75B0DenDuX6gNJZbkcgDg1kf+OGeYIbij2SWcYlB3gFRK
 ONAgFr9vhNf7AU8kB1U92k966l6KPOxr8EsxOkRDNIZvF4ofIbtEwL0Hb
 dqP639wR8C5Yh2W9vxaORSowBZ+ZlQGChrqGSAcl2VtklS8hk6ethzJ+n
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YxEkGYag
Subject: [Intel-wired-lan] [PATCH iwl-next 5/9] ice: move udp_tunnel_nic and
 misc IRQ setup into ice_init_pf()
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

Move udp_tunnel_nic setup and ice_req_irq_msix_misc() call into
ice_init_pf(), remove some redundancy in the former while moving.

Move ice_free_irq_msix_misc() call into ice_deinit_pf(), to mimic
the above in terms of needed cleanup. Guard it via emptiness check,
to keep the allowance of half-initialized pf being cleaned up.

Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 58 +++++++++++------------
 1 file changed, 28 insertions(+), 30 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index f81603a754f9..ae8339f7d2ff 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3997,6 +3997,9 @@ static void ice_deinit_pf(struct ice_pf *pf)
 	if (pf->ptp.clock)
 		ptp_clock_unregister(pf->ptp.clock);
 
+	if (!xa_empty(&pf->irq_tracker.entries))
+		ice_free_irq_msix_misc(pf);
+
 	xa_destroy(&pf->dyn_ports);
 	xa_destroy(&pf->sf_nums);
 }
@@ -4064,6 +4067,11 @@ void ice_start_service_task(struct ice_pf *pf)
  */
 static int ice_init_pf(struct ice_pf *pf)
 {
+	struct udp_tunnel_nic_info *udp_tunnel_nic = &pf->hw.udp_tunnel_nic;
+	struct device *dev = ice_pf_to_dev(pf);
+	struct ice_hw *hw = &pf->hw;
+	int err = -ENOMEM;
+
 	mutex_init(&pf->sw_mutex);
 	mutex_init(&pf->tc_mutex);
 	mutex_init(&pf->adev_mutex);
@@ -4093,11 +4101,30 @@ static int ice_init_pf(struct ice_pf *pf)
 	if (!pf->avail_txqs || !pf->avail_rxqs)
 		goto undo_init;
 
+	udp_tunnel_nic->set_port = ice_udp_tunnel_set_port;
+	udp_tunnel_nic->unset_port = ice_udp_tunnel_unset_port;
+	udp_tunnel_nic->shared = &hw->udp_tunnel_shared;
+	udp_tunnel_nic->tables[0].n_entries = hw->tnl.valid_count[TNL_VXLAN];
+	udp_tunnel_nic->tables[0].tunnel_types = UDP_TUNNEL_TYPE_VXLAN;
+	udp_tunnel_nic->tables[1].n_entries = hw->tnl.valid_count[TNL_GENEVE];
+	udp_tunnel_nic->tables[1].tunnel_types = UDP_TUNNEL_TYPE_GENEVE;
+
+	/* In case of MSIX we are going to setup the misc vector right here
+	 * to handle admin queue events etc. In case of legacy and MSI
+	 * the misc functionality and queue processing is combined in
+	 * the same vector and that gets setup at open.
+	 */
+	err = ice_req_irq_msix_misc(pf);
+	if (err) {
+		dev_err(dev, "setup of misc vector failed: %d\n", err);
+		goto undo_init;
+	}
+
 	return 0;
 undo_init:
 	/* deinit handles half-initialized pf just fine */
 	ice_deinit_pf(pf);
-	return -ENOMEM;
+	return err;
 }
 
 /**
@@ -4782,45 +4809,16 @@ int ice_init_dev(struct ice_pf *pf)
 		goto unroll_irq_scheme_init;
 	}
 
-	pf->hw.udp_tunnel_nic.set_port = ice_udp_tunnel_set_port;
-	pf->hw.udp_tunnel_nic.unset_port = ice_udp_tunnel_unset_port;
-	pf->hw.udp_tunnel_nic.shared = &pf->hw.udp_tunnel_shared;
-	if (pf->hw.tnl.valid_count[TNL_VXLAN]) {
-		pf->hw.udp_tunnel_nic.tables[0].n_entries =
-			pf->hw.tnl.valid_count[TNL_VXLAN];
-		pf->hw.udp_tunnel_nic.tables[0].tunnel_types =
-			UDP_TUNNEL_TYPE_VXLAN;
-	}
-	if (pf->hw.tnl.valid_count[TNL_GENEVE]) {
-		pf->hw.udp_tunnel_nic.tables[1].n_entries =
-			pf->hw.tnl.valid_count[TNL_GENEVE];
-		pf->hw.udp_tunnel_nic.tables[1].tunnel_types =
-			UDP_TUNNEL_TYPE_GENEVE;
-	}
-	/* In case of MSIX we are going to setup the misc vector right here
-	 * to handle admin queue events etc. In case of legacy and MSI
-	 * the misc functionality and queue processing is combined in
-	 * the same vector and that gets setup at open.
-	 */
-	err = ice_req_irq_msix_misc(pf);
-	if (err) {
-		dev_err(dev, "setup of misc vector failed: %d\n", err);
-		goto unroll_pf_init;
-	}
-
 	return 0;
 
-unroll_pf_init:
-	ice_deinit_pf(pf);
 unroll_irq_scheme_init:
 	ice_service_task_stop(pf);
 	ice_clear_interrupt_scheme(pf);
 	return err;
 }
 
 void ice_deinit_dev(struct ice_pf *pf)
 {
-	ice_free_irq_msix_misc(pf);
 	ice_deinit_pf(pf);
 	ice_deinit_hw(&pf->hw);
 	ice_service_task_stop(pf);
-- 
2.39.3

