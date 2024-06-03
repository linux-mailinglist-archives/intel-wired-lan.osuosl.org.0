Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6FA38D7F2E
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Jun 2024 11:46:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9D90140952;
	Mon,  3 Jun 2024 09:46:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WIyu3Y9yuClP; Mon,  3 Jun 2024 09:46:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 023AA40350
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717407969;
	bh=Zo7zdlMr4xADrJ4d/a7RazedWehhQjxRp/4m/FAJlFo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4D50rsXIWXVK2uaKh/HXcqvilY0wgFghY4ETpY+8NB74RdHz6UrQjr/rVIJRBMlgF
	 hzepqsZmWpxr5vfeaUeLmy4aR1Lrmi+re9sbDI7s4vuatp4bvuFeB7jsOUbumL47SL
	 qbCi/O/VfMIxMw7Jawwf2wO7c+xsc8xlOu04mmF9O4rA7uOrIJTLdheMr1mjmvKwUf
	 jbpT9QSYPhKIlRTBVNDVqaf65NJW7LRJ1179BtaGG7rvjicMeSSJwPzq9ynTKUS+om
	 +Lx3z29JsNloPYxPZ/lci74SSlmvVUER/1Pe7XWesJ9V7g7vEz5uD5yKqQEgwLm7qq
	 Pj0KfCt9/lw1g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 023AA40350;
	Mon,  3 Jun 2024 09:46:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B56111BF3EB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jun 2024 09:46:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A0B5F4051B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jun 2024 09:46:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 22215IyZjMU7 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Jun 2024 09:46:05 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B6CC440592
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B6CC440592
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B6CC440592
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jun 2024 09:46:05 +0000 (UTC)
X-CSE-ConnectionGUID: id46vHwtQnitGNYR67TrAg==
X-CSE-MsgGUID: AIrH1lXASTKLgaolDaGmNA==
X-IronPort-AV: E=McAfee;i="6600,9927,11091"; a="17732720"
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="17732720"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 02:46:06 -0700
X-CSE-ConnectionGUID: 0DshS9FnQWSIBjDyPgLe5w==
X-CSE-MsgGUID: gU6Fafv8SeajpKAA/eogWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="37448247"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by orviesa007.jf.intel.com with ESMTP; 03 Jun 2024 02:46:02 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  3 Jun 2024 11:50:20 +0200
Message-ID: <20240603095025.1395347-11-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240603095025.1395347-1-michal.swiatkowski@linux.intel.com>
References: <20240603095025.1395347-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717407966; x=1748943966;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZLH9MCdp3PkUz0FzDymBcsotd7P/pThRLfSB8f/2Kvg=;
 b=KiOo/zniJ00XL0KlmEKm90tJimE+iHA3w67u5A0Mihl0VAyDdP/YTArY
 oAJJ0peu/Na8gN7WMYue0qkMucP3wdSRkjNaEPeX5bLpBUpMfeTFPruLY
 5zz5gP3afXuzF1iqW0olAOB57s2RUeSBpQMv9eAhO2GlVj+PFUVJOiCQ2
 16zCeRqK61jygaaPlLjUCgw57sknnESTp4npMPhyGZLHdAMzF/SMkxk/H
 ZtwUULewzKtM2VjCcMBefqxZK+Ij3iRnkm22LS9Q37ryxeLQ2iyxx8NvU
 F7Z4xZVwWB3efDr/khkuTjbmAxeZaQRS2QxSRoFBk+R4umnSACrsrY6BG
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KiOo/zni
Subject: [Intel-wired-lan] [iwl-next v4 10/15] ice: don't set target VSI for
 subfunction
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
Cc: shayd@nvidia.com, maciej.fijalkowski@intel.com, horms@kernel.org,
 sridhar.samudrala@intel.com, mateusz.polchlopek@intel.com,
 netdev@vger.kernel.org, jiri@nvidia.com, kalesh-anakkur.purayil@broadcom.com,
 michal.kubiak@intel.com, pio.raczynski@gmail.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, wojciech.drewek@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add check for subfunction before setting target VSI. It is needed for PF
in switchdev mode but not for subfunction (even in switchdev mode).

Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 8bb743f78fcb..fe96af89509b 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -2405,7 +2405,7 @@ ice_xmit_frame_ring(struct sk_buff *skb, struct ice_tx_ring *tx_ring)
 					ICE_TXD_CTX_QW1_CMD_S);
 
 	ice_tstamp(tx_ring, skb, first, &offload);
-	if (ice_is_switchdev_running(vsi->back))
+	if (ice_is_switchdev_running(vsi->back) && vsi->type != ICE_VSI_SF)
 		ice_eswitch_set_target_vsi(skb, &offload);
 
 	if (offload.cd_qw1 & ICE_TX_DESC_DTYPE_CTX) {
-- 
2.42.0

