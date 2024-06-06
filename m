Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D874F8FE52F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Jun 2024 13:20:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9290261489;
	Thu,  6 Jun 2024 11:20:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UMPjWSrdZEWi; Thu,  6 Jun 2024 11:20:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E089B6148C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717672847;
	bh=p32MNJfRUAzoh0RFKrmVx/mxgjlIDzuXFbsDrUx2ynw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=potgwrQpxmxFzK7EHHm75FuZhlxLT5/4IBByU7Rce6gsUO6qOZFOoBPFTXcx23EC9
	 5UeKxFjSIrftRO/zNT7zqRiLosUZ79gFK5Qmgl2HiQ53gD/zAg6HqV5CjsvEZD0WEG
	 8XqvofBXTbQNzkDYAsVbSoySXWoU/RIZcxIVF+gav6tKovzNbtUIKJoaIemJWWPhRb
	 p7UMBZoExoxEBCblxu9j9BjbTeDBKryXcVi64F/JELlV07YA0/MJU5+/OPYDzaPHDj
	 J971pKVF3cycyBB+fu+STLLUcORGDIY36CwFtah3A7nXKPrPCpRMI3aJrYFNEW0H/o
	 U4CMmprAEeWyQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E089B6148C;
	Thu,  6 Jun 2024 11:20:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5E53E1BF591
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 11:20:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 57E4D400E5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 11:20:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6U1anm97nSTf for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Jun 2024 11:20:44 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 67FDC400AF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 67FDC400AF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 67FDC400AF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 11:20:44 +0000 (UTC)
X-CSE-ConnectionGUID: kajiLwymSn2vm6IcT+kRcg==
X-CSE-MsgGUID: goEnT0k8T/CIbG2NJqOrrw==
X-IronPort-AV: E=McAfee;i="6600,9927,11094"; a="18123789"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="18123789"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 04:20:44 -0700
X-CSE-ConnectionGUID: wD2afCCdSLOBOkQg518Ong==
X-CSE-MsgGUID: WeGsUz98TRKbK4KuzIzwvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="42864640"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by orviesa003.jf.intel.com with ESMTP; 06 Jun 2024 04:20:42 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  6 Jun 2024 13:24:58 +0200
Message-ID: <20240606112503.1939759-11-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240606112503.1939759-1-michal.swiatkowski@linux.intel.com>
References: <20240606112503.1939759-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717672844; x=1749208844;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XRacSA3WWFsdAIMvKjGR3jueZmKP+bga1wUx7zkkWqA=;
 b=JYnLrR1TEdIu8F7OEorjawM5Oxkxq+/DVUDLyqwlndkR1CRHtJyY6Ren
 FJWt4cOXFL7XDaHyrdEjGT6lL/FHkwcmo8XR8QGU1uXWtmBoOTqAfahUq
 dZLa/wVFs5O5X5Z8xP/P+ovQiXJpwzKR+UqitJwNe80RI72dk1w0yfV8L
 DU/ZNFMVoLBbuOVIVS7E2B/BnDnK09VMZdd/eVzit3ftx2+itJrl2VU1n
 vFkONvaqqkg+eJucNcMSvTRIkC+RPJK6VROLfxAQqQpLlmd72CFMKzXe6
 MmZmwflNG9EkIK58U93RQ5bO8Cq5jbSr5SPAPIpqXlneeMqR5RIh933xO
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JYnLrR1T
Subject: [Intel-wired-lan] [iwl-next v5 10/15] ice: don't set target VSI for
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
index 4c115531beba..277e8ea3e06c 100644
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

