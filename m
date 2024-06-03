Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6380A8D7F29
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Jun 2024 11:45:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8919C40979;
	Mon,  3 Jun 2024 09:45:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3A7XK32SQef0; Mon,  3 Jun 2024 09:45:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E16984051F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717407944;
	bh=TARi3O1JOLvKUL+O16IQ5CjzLtEYUPHJTp3QEPobV6o=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nNgMSW9wlyeOkGAdcAxqpgoIxQKQgFXD/czvzUbIN/i1n1AGsEwtvaAn2lPt7hJcd
	 04GGGXANAMJdpYY1iGwtNvS83VlgYQa33GaS164H5hKPyuQaE3SMM30ta3pSvdR+7E
	 hdXJRRALiewMLX/yMETG+KFkY8aYv5BPWwuFabmUW8CaOlHG+YPAlI/GLlOUXv9Ujb
	 91R4NwldCkl2/rLN9H8BEIrFePE8mA0ZfPbB7Cr6FrZ7iEhxTfrWIwD6Rn1C5KSbp4
	 xg4xmLlX3J+13ingr9+ZZVWRf4BdwvtsNEp1nZ/Rvbq6Q9j9MDSqAIh9/U7FrkyCED
	 rGKRBz+HRVosw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E16984051F;
	Mon,  3 Jun 2024 09:45:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B3ACA1BF3EB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jun 2024 09:45:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9D02282163
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jun 2024 09:45:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id derHR0y7Vpvr for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Jun 2024 09:45:42 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E84DC82156
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E84DC82156
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E84DC82156
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jun 2024 09:45:41 +0000 (UTC)
X-CSE-ConnectionGUID: 1fFXY4kvQbW+ffcIEAaBHg==
X-CSE-MsgGUID: V/q2u5WZSaOW8T1v5MLdcg==
X-IronPort-AV: E=McAfee;i="6600,9927,11091"; a="17732678"
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="17732678"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 02:45:42 -0700
X-CSE-ConnectionGUID: Jn9lna01Rja3vRUF6FfWFg==
X-CSE-MsgGUID: U2Ik2Y/XS4mDEhJfLw6Dog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="37448194"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by orviesa007.jf.intel.com with ESMTP; 03 Jun 2024 02:45:38 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  3 Jun 2024 11:50:14 +0200
Message-ID: <20240603095025.1395347-5-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240603095025.1395347-1-michal.swiatkowski@linux.intel.com>
References: <20240603095025.1395347-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717407942; x=1748943942;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qvRqx+zi0Xuh6V6M80937A5imi+4yWqkJOdVo+HcxSM=;
 b=gigSTkGaX7dDL8J/bLxlD/yB4kASnftEh0Fn3/h24xRILbO/0f1Q04UF
 RT3yq6EpNEkyJuGIl8QP2pADRAvjYVGLXxfmXN/Sb9kEGcWGrLyLJVlPt
 8Qrv3pdznbZJWrC4PkLIC0oFbX7DEePRTyFS4F34FOuL3DFEagGWc1DB2
 tiYXjgzsW3OrbexnXB2DnHLD0TcgiCrZ/0Yw18JKw+z82hqU2qtbG3YIC
 /u+A51/p3aT9CMkchC+pl8LZbgzD5HQyPWQrwEaCZ72CTcA0FbqiS1IIC
 LxbyXhFlSyPWvg0Gqa7LnH6g6mfusxXFgaAbwlazwZ53Dv9jN1HYwAcpe
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gigSTkGa
Subject: [Intel-wired-lan] [iwl-next v4 04/15] ice: treat subfunction VSI
 the same as PF VSI
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

When subfunction VSI is open the same code as for PF VSI should be
executed. Also when up is complete. Reflect that in code by adding
subfunction VSI to consideration.

In case of stopping, PF doesn't have additional tasks, so the same
is with subfunction VSI.

Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index d1d9b63822f5..e32f4307994f 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6704,7 +6704,8 @@ static int ice_up_complete(struct ice_vsi *vsi)
 
 	if (vsi->port_info &&
 	    (vsi->port_info->phy.link_info.link_info & ICE_AQ_LINK_UP) &&
-	    vsi->netdev && vsi->type == ICE_VSI_PF) {
+	    ((vsi->netdev && vsi->type == ICE_VSI_PF) ||
+	     (vsi->netdev && vsi->type == ICE_VSI_SF))) {
 		ice_print_link_msg(vsi, true);
 		netif_tx_start_all_queues(vsi->netdev);
 		netif_carrier_on(vsi->netdev);
@@ -7402,7 +7403,7 @@ int ice_vsi_open(struct ice_vsi *vsi)
 
 	ice_vsi_cfg_netdev_tc(vsi, vsi->tc_cfg.ena_tc);
 
-	if (vsi->type == ICE_VSI_PF) {
+	if (vsi->type == ICE_VSI_PF || vsi->type == ICE_VSI_SF) {
 		/* Notify the stack of the actual queue counts. */
 		err = netif_set_real_num_tx_queues(vsi->netdev, vsi->num_txq);
 		if (err)
-- 
2.42.0

