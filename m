Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D475A430AD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Feb 2025 00:23:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 241AF40BCC;
	Mon, 24 Feb 2025 23:23:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kjQeyTnyfuwo; Mon, 24 Feb 2025 23:23:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6942C40984
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740439381;
	bh=JoZuzuTcD0vJuUeRCi8UnRJWpvAI+VMuJDKHdFTzOM8=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=EXLEg54TdbQ91PokitK6ZHIs/V/kxPRoS9FMgYvRZ6Fn8uS8iNPBRO2baiYJqcDdB
	 monjVnhKefEs87x+yNxu4XQlkeKO68K/s9aD/TwTcP3B80sQJnI85HI2oh2iHKYGZT
	 Iw3FSGbqxIcdbmz0xvU8/YP7m4agWzz/fXvE3sHegoTqELS9M1Qui2E0t97v2wf2u7
	 BLkzdHFh08G9y5i0wsbhrEusOGtCGNlXj4sLauHb8uA/ZYhRV7Vwm5ESZfP9QXmdOC
	 xgjBkH/HzENrLm5NN77KCdf1HQPSdRylCW7IC5H46xaJ0awlNsjmkpNSH1X8CpQKLh
	 8QAHwquyyHj3w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6942C40984;
	Mon, 24 Feb 2025 23:23:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 113321531
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 23:22:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 00D2C80F31
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 23:22:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zVfzM9uGpH4M for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Feb 2025 23:22:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4650A80E2B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4650A80E2B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4650A80E2B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Feb 2025 23:22:58 +0000 (UTC)
X-CSE-ConnectionGUID: 6J0hK0hpQMmy480FU23RCw==
X-CSE-MsgGUID: /WvGIf/MTmuur5BmjtQ0BQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="40406673"
X-IronPort-AV: E=Sophos;i="6.13,312,1732608000"; d="scan'208";a="40406673"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 15:22:58 -0800
X-CSE-ConnectionGUID: ZI7rYxL8RReLWZTVI5gajQ==
X-CSE-MsgGUID: 0x5/LraESpCUouY1ZeNYwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,312,1732608000"; d="scan'208";a="115997805"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.245.244.43])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 15:22:52 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, horms@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, michael.chan@broadcom.com, tariqt@nvidia.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jdamato@fastly.com, shayd@nvidia.com, akpm@linux-foundation.org,
 shayagr@amazon.com, Ahmed Zaki <ahmed.zaki@intel.com>
Date: Mon, 24 Feb 2025 16:22:24 -0700
Message-ID: <20250224232228.990783-4-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250224232228.990783-1-ahmed.zaki@intel.com>
References: <20250224232228.990783-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740439378; x=1771975378;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=px76OAKhgZmmeVDE182uPBGn4Uz+NTY8NrjlGyT0PZc=;
 b=DBdmB9UNET3CiO5gi45E27B8+PxQZByY0qZfStLUWxpp9dfm7NSLNepZ
 m/EnvOxj6LYifznEXm23CCU5/0h2P2qLAcx4gdfGnsl+rS06iEfOcoKTx
 fvsk6dn7dVM9CHwpgu9LZ4cwUAojAkQkzTpxSOyC7RniT/o3VWsn8/4bc
 YRanyYwOxD6Os1/5a2dWs1WohddU1LPiaNgDaaK8+H6V5xuJqRWBllY4f
 I7c6y5ifeGwSANJySLsW/GwNis93avMLeNJZsjbP0v8ZRyFJ4AuJNBsOX
 Np8rGKAfI/am8Rh9zz2f/DFLjamH7N0rdfxSQr+4RMkcEwQpF8/+ErFrs
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DBdmB9UN
Subject: [Intel-wired-lan] [PATCH net-next v9 3/6] ice: clear NAPI's IRQ
 numbers in ice_vsi_clear_napi_queues()
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

We set the NAPI's IRQ number in ice_vsi_set_napi_queues(). Clear the
NAPI's IRQ in ice_vsi_clear_napi_queues().

Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 7f5b229cab05..ce30674abf8f 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2765,11 +2765,18 @@ void ice_vsi_set_napi_queues(struct ice_vsi *vsi)
 void ice_vsi_clear_napi_queues(struct ice_vsi *vsi)
 {
 	struct net_device *netdev = vsi->netdev;
-	int q_idx;
+	int q_idx, v_idx;
 
 	if (!netdev)
 		return;
 
+	/* Clear the NAPI's interrupt number */
+	ice_for_each_q_vector(vsi, v_idx) {
+		struct ice_q_vector *q_vector = vsi->q_vectors[v_idx];
+
+		netif_napi_set_irq(&q_vector->napi, -1);
+	}
+
 	ice_for_each_txq(vsi, q_idx)
 		netif_queue_set_napi(netdev, q_idx, NETDEV_QUEUE_TYPE_TX, NULL);
 
-- 
2.43.0

