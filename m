Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 727588C3D46
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 May 2024 10:33:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 45C418352B;
	Mon, 13 May 2024 08:33:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VAZKyhCaq4XQ; Mon, 13 May 2024 08:33:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A049B83640
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715589193;
	bh=DOVz5G+TnCjOJtQYEzd3pzQ88bNxzPikkZ02OclgpWo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Z5QF9bolw9d11P5aMiOT/sgJh9gE9mFXwQ4BbU8Rp7l10N37Vi70twcxAUFUoSRPJ
	 JcEM7NinntNwHyrXQTwmeH71HtSHASRDnpndFC0ySvrACr2XTCIO/k3FPVHicWHKl9
	 F2r75O66fE+9+Tm9YPP+5Or31mKsKptk6RWxNS0nEyp3175kntyRZmVtKcW6443p36
	 1YuLVQWdgBikpQt16FnfgMkykaRRmNRmJBzb2qAJyT1TSxwIETcaN8IbRvmzZbbtWL
	 t/A5F2Rqa3PbjO2bOHhCYn8kQ0/75SLeFEfAFfFfFs2bhUCkGqopb/YtJOT3aLgPsz
	 uLXgcCkIYb0+A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A049B83640;
	Mon, 13 May 2024 08:33:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3F9DF1BF86C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 08:33:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2A34B410BB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 08:33:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5CYhvTEx3v8Z for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 May 2024 08:33:06 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4154D4109D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4154D4109D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4154D4109D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 08:33:06 +0000 (UTC)
X-CSE-ConnectionGUID: oGQ3y4b0RLiq86PXCqFIOw==
X-CSE-MsgGUID: LFxVCqmoTju34CsYzT3QMw==
X-IronPort-AV: E=McAfee;i="6600,9927,11071"; a="22914857"
X-IronPort-AV: E=Sophos;i="6.08,157,1712646000"; d="scan'208";a="22914857"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 01:33:07 -0700
X-CSE-ConnectionGUID: aHm/ZgJSSf2oW8+B2ZSzAw==
X-CSE-MsgGUID: BMCKDbRCR1aL8PiVT63lKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,157,1712646000"; d="scan'208";a="30303587"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by fmviesa006.fm.intel.com with ESMTP; 13 May 2024 01:33:03 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 13 May 2024 10:37:30 +0200
Message-ID: <20240513083735.54791-11-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240513083735.54791-1-michal.swiatkowski@linux.intel.com>
References: <20240513083735.54791-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715589187; x=1747125187;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eMS+oxn1tYp+rxus1jdEnm2eqSOO3ayeaJRU5iz4V2o=;
 b=c/UdMNPq2999tAKc1rMkrKcCRdJlNd2FJz2IPil1b8z8hr18lKKw/ykh
 n7IQeNQ+JUwHui8XjrwVsURRYsD6nHjugyrm2HqAcePLPGZnGJSBxtybB
 QsBtWmktsR8fn7Ngx90ei3TKhrIveLJfw5yELeooMaVzcHPzzQIylfvMy
 9VNKya2hubuvSON6hEvSaZM7GE6zivn5vhMv/D1uu5uFIEwBynHC4xTjZ
 /WsaoBDa97GzhtgA8bJ7mJQWcZs77iByziPrLyFhgO5On5E7IzApi8q8P
 FPuajQDPv4Zo0YWcPCjkkvGAlu8UEKkPxpr9x9X+vM0Wte8VA1A10jeLh
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=c/UdMNPq
Subject: [Intel-wired-lan] [iwl-next v2 10/15] ice: don't set target VSI for
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
Cc: shayd@nvidia.com, maciej.fijalkowski@intel.com, sridhar.samudrala@intel.com,
 mateusz.polchlopek@intel.com, netdev@vger.kernel.org, jiri@nvidia.com,
 michal.kubiak@intel.com, pio.raczynski@gmail.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, wojciech.drewek@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add check for subfunction before setting target VSI. It is needed for PF
in switchdev mode but not for subfunction (even in switchdev mode).

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

