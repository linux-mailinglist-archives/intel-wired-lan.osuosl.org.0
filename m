Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 66BF89AE476
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Oct 2024 14:12:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 78D94608CB;
	Thu, 24 Oct 2024 12:12:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wEqhA9kOTM5W; Thu, 24 Oct 2024 12:12:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DB0416088E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729771960;
	bh=FWghj3SCVMEva2ELKzCjfCyHaivdL4YtiHk4uds0Teo=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nkkKwF2qwPwyfcMNGqYQlFG8cwzI4WzjsMQcLyJy9eCL2kHbMuHQpy+//DQZGCI9L
	 op4B8yzm4IqfaWN6BknaiOFoZ/1DynRRBWnDOxFZjLlevA8nfeFpIknAWx4lQBa/ej
	 cHVTUNUZaHgMmxumenSU4QfRuOFXFxWAY3RCvYwJ2VeEU8w7qQS1c7LSt/EhGcVGpJ
	 QfgMvwpeMNNNThweD5ZMurgaXJ29KiOfPfVCaYQuH70FPimHH7RdprS6s86RxCXvC9
	 vhk33o6L4RK/dpPVKX2tgfn+mVhXfuSUSfAk6nnfqWRm3ytQ70VfpjRylskzvQpGem
	 mnnYDELShs8UA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DB0416088E;
	Thu, 24 Oct 2024 12:12:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id CC8444960
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2024 12:12:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BA30A40A97
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2024 12:12:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 81M80wcEGE88 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Oct 2024 12:12:37 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A803D4026F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A803D4026F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A803D4026F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Oct 2024 12:12:37 +0000 (UTC)
X-CSE-ConnectionGUID: qNZN6bylQUS9RrFlm6Fx8A==
X-CSE-MsgGUID: +UbSGYFSQbSLa058Zu+LHQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="40008266"
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="40008266"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 05:12:37 -0700
X-CSE-ConnectionGUID: Xchv+PjWTH2wqs+JDEzb2w==
X-CSE-MsgGUID: qWGN/3CLQNqQiRc2UDQKQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="85184435"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by fmviesa004.fm.intel.com with ESMTP; 24 Oct 2024 05:12:34 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, pawel.chmielewski@intel.com,
 sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 pio.raczynski@gmail.com, konrad.knitter@intel.com, marcin.szycik@intel.com,
 wojciech.drewek@intel.com, nex.sw.ncis.nat.hpm.dev@intel.com,
 przemyslaw.kitszel@intel.com, jiri@resnulli.us, horms@kernel.org,
 David.Laight@ACULAB.COM
Date: Thu, 24 Oct 2024 14:12:22 +0200
Message-ID: <20241024121230.5861-2-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20241024121230.5861-1-michal.swiatkowski@linux.intel.com>
References: <20241024121230.5861-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729771958; x=1761307958;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fBo/M28zaE+Gi6IeMuAGUsuNyb5P4s2Gmpx5MaRTckQ=;
 b=lVb7brvS9Ev15QCakStqF8FmDS+SNKcAT7EVPXe8aQ/xQZDNnK9Kr84c
 olPP7sugbfkH3FEuiOaniSQyDB6VH38B2SdVKkIz8Bqw/LgiK+ePMtoVE
 sht4mRThiHwngO6w8GclmJqZqYXqZ+Uknjkx/v1fJSKf5v8yA5ZPZnxQm
 IYJ0IPuWO9w2gFGg02n1PXzo3vQwg8ljCvdK58ycabkFhpLknr9bdF+dX
 +KDLvzJ8b8fuwFbNZ1huLgTPBzkTs0NMUaAht3MuY1w0FowGlo3cUv6Ua
 NBdK7Saldy1ObGm2a/3mx69yXi2olFROI1Vo+kVHoVZBhSPiGcsT55XdH
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lVb7brvS
Subject: [Intel-wired-lan] [iwl-next v5 1/9] ice: count combined queues
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

