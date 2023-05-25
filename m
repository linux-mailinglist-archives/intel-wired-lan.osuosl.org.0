Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C699710A56
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 May 2023 12:52:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B12B742B1E;
	Thu, 25 May 2023 10:52:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B12B742B1E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685011935;
	bh=bipKPr0v/DwvVHLVhM3lRJ6yHHes8y4LLEK++110odw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=6oYw0opOXCi6xpIiR0msIZ/2W74QGJ5hKpHPizj09O2fBPhIMKxaGI+YGm8YHiVAa
	 +Y5AITffnqThEgTLvtyjc5JQCEn3tc07UsuYKw+55SRxXXBDPNBxYWM59BSXLKUAr1
	 2PzRMeeewCuPSwzT6X7GhOeYKgw4qHWNaTTxunXLMyKNVeszrAUJt7PNEHSZj3Fr8c
	 dravwaGRQYNW1tRodH60K4/YNrjwYWdEzWFQcShF7UGh0+FG97jIShZtvxhTtzDymJ
	 Vzmj+EV90CIdX/u3D05L6nWBAJHfPdTegrHUBchIUq6f0hrgW5Dt8Wnbjxsr2GlZYl
	 y6FJZcSyBgZWA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aQDI5V-pnZ43; Thu, 25 May 2023 10:52:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9ADFB4074E;
	Thu, 25 May 2023 10:52:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9ADFB4074E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 887BA1BF282
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 May 2023 10:52:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6DE2F83F7E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 May 2023 10:52:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6DE2F83F7E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id geTtuY_Ohydt for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 May 2023 10:52:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3868B8400F
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3868B8400F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 May 2023 10:52:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="417317318"
X-IronPort-AV: E=Sophos;i="6.00,190,1681196400"; d="scan'208";a="417317318"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2023 03:51:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="704754348"
X-IronPort-AV: E=Sophos;i="6.00,190,1681196400"; d="scan'208";a="704754348"
Received: from gklab-018-208.igk.intel.com ([10.102.18.208])
 by orsmga002.jf.intel.com with ESMTP; 25 May 2023 03:51:57 -0700
From: Kamil Maziarz <kamil.maziarz@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 May 2023 12:51:55 +0200
Message-Id: <20230525105155.105870-1-kamil.maziarz@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685011928; x=1716547928;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=eUU7nFOfvnSGTbSvGcmkNwo0FlmCMY9vfJyJW+wMap0=;
 b=jdEfiYFtQELKus+ZYuRwi2E7sSbPFT1HPH3LMO/LoAU16FeLS9P6TICj
 5611ZviZP1Pb1I0ejvAZioqkyXw8WqdAv2kZRj1F65LR9BLy5AthKJCzP
 aO+C1WtOZ6s5Lk4YktbgqY4Zuu2xlnkSG8tNV60jXaGEfZMlYBCZvH60i
 swKuXO9Izh+nsxao6sOjsq5soKwkW+aXpSs1abG6+Jg3g/SpQ/ARejrMg
 6VOBl5sXMrc2L6maFkRs6OchTMCrKnaKq/WDiaOQXHx7PdFy3XiocZVjr
 zNve1wenSY3n/3hatEO7H0+vOYg+53mrUlN8JVPYIEMAi0CRUUSASYqyz
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jdEfiYFt
Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: Fix XDP memory leak when
 NIC is brought up and down
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
Cc: Kamil Maziarz <kamil.maziarz@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fix the buffer leak that occurs while switching
the port up and down with traffic and XDP by
checking for an active XDP program and freeing all empty TX buffers.

Fixes: cdedef59deb0 ("ice: Configure VSIs for Tx/Rx")
Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index a1f7c8edc22f..03513d4871ab 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -7056,6 +7056,10 @@ int ice_down(struct ice_vsi *vsi)
 	ice_for_each_txq(vsi, i)
 		ice_clean_tx_ring(vsi->tx_rings[i]);
 
+	if (ice_is_xdp_ena_vsi(vsi))
+		ice_for_each_xdp_txq(vsi, i)
+			ice_clean_tx_ring(vsi->xdp_rings[i]);
+
 	ice_for_each_rxq(vsi, i)
 		ice_clean_rx_ring(vsi->rx_rings[i]);
 
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
