Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 476149B2C39
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Oct 2024 11:03:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A26D660AF2;
	Mon, 28 Oct 2024 10:03:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 64zUIFuhquCN; Mon, 28 Oct 2024 10:03:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 082F360A59
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730109833;
	bh=FWghj3SCVMEva2ELKzCjfCyHaivdL4YtiHk4uds0Teo=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XOAuiB1c03lHT0fbxBb+RBoKM40TMOuNnkpaDBAsAJ97aW3TH5UdnDDMsnUJRKL8k
	 p0AXn4q2Gw36WfgqPo/HtqcYmyB/3SAYsOQYI6zsPwCnN3fVR3/R0lbHFflSFi3Z/o
	 7vtJEPCr9tT03azDWw6OacmkhpbGmSvAx6SmweaUQPowCfpqak1EHA00ZiA170BStm
	 zLHYL6F88lbfS+BTWi9GWRFDU1Yx26oNsZ9F8Hc6K4cC+1oeTIS2UGOY7w8ft2bDnR
	 IQKvASTHcjtfkDW8i15m9BB0BGmfhfVcVgzxNiC14zqyZgix0eTSXDSI+4odYQ1/ie
	 q8e9Go+5mX7Xg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 082F360A59;
	Mon, 28 Oct 2024 10:03:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id EE2C1AEE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 10:03:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CFF9981A3E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 10:03:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BHMDIdXWooYr for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Oct 2024 10:03:50 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1550B81A39
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1550B81A39
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1550B81A39
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 10:03:49 +0000 (UTC)
X-CSE-ConnectionGUID: XXuwurN6TbCdxM3c1Jx3eQ==
X-CSE-MsgGUID: KDRixVZRQ6mAQXmctVIs6Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29560718"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29560718"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 03:03:50 -0700
X-CSE-ConnectionGUID: EAYMqFncSUe/4av+nKzC/w==
X-CSE-MsgGUID: DckBn3HhTfy0zkauWCMpCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,238,1725346800"; d="scan'208";a="86182279"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by fmviesa004.fm.intel.com with ESMTP; 28 Oct 2024 03:03:45 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, pawel.chmielewski@intel.com,
 sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 pio.raczynski@gmail.com, konrad.knitter@intel.com, marcin.szycik@intel.com,
 wojciech.drewek@intel.com, nex.sw.ncis.nat.hpm.dev@intel.com,
 przemyslaw.kitszel@intel.com, jiri@resnulli.us, horms@kernel.org,
 David.Laight@ACULAB.COM
Date: Mon, 28 Oct 2024 11:03:33 +0100
Message-ID: <20241028100341.16631-2-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20241028100341.16631-1-michal.swiatkowski@linux.intel.com>
References: <20241028100341.16631-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730109831; x=1761645831;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fBo/M28zaE+Gi6IeMuAGUsuNyb5P4s2Gmpx5MaRTckQ=;
 b=N0JkoasrrNvRoxrmHmKm4uasKd1ucr9YgOPgI6xBPn1Yjo9XT5Ob20NY
 JetmNAWlgWBNGeOxFUuBY4Jihq5+5WkfAo33qu+Wyu9PAy7+kjGg1i+nK
 xWFaCKn8XDkHUhmVf1Sn3E2zdS33umHNtCHTC/m77o67o+nGIn7TB5wg5
 N0UA7UAdEQa3bU4WUEVUjypx+ER9vSYtwOpeOgN+m2kg0cr6kQEk2ysPp
 hP3NodTW2ZAIihOtTmh/vjJFSK79aIq2i34QMioJP8uBaOPyUBeJNvb7z
 wLIfTltFe8jDV8xTP17bwiHC+VkS2cEEqntjjjz16/MKczcJMgT6GHKlC
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=N0Jkoasr
Subject: [Intel-wired-lan] [iwl-next v6 1/9] ice: count combined queues
 using Rx/Tx count
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Previous implementation assumes that there is 1:1 matching between
vectors and queues. It isn't always true.

Get minimum value from Rx/Tx queues to determine combined queues number.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index b552439fc1f9..c2f53946f1c3 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3818,8 +3818,7 @@ static u32 ice_get_combined_cnt(struct ice_vsi *vsi)
 	ice_for_each_q_vector(vsi, q_idx) {
 		struct ice_q_vector *q_vector = vsi->q_vectors[q_idx];
 
-		if (q_vector->rx.rx_ring && q_vector->tx.tx_ring)
-			combined++;
+		combined += min(q_vector->num_ring_tx, q_vector->num_ring_rx);
 	}
 
 	return combined;
-- 
2.42.0

