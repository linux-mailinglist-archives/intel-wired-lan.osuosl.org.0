Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E454A4804E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Feb 2025 15:02:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BA46F83BCF;
	Thu, 27 Feb 2025 14:02:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SPuh34RN1tr0; Thu, 27 Feb 2025 14:02:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A5D2B83BCB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740664967;
	bh=oNz0gm6s9Y1Y/1K5KRe9biL7hupOBSfqXQtcebOru1s=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=st8+3dSGgU7Rs04xHJjvbpkYC8g6XcgxkxDHGQWw93F5LgO51k7h7EqGur6QFLqvU
	 jutt/uetA5ciWxK3ilumkGOSn65yc7hWIn1znLIbJzH9SuLcvMVq5UzICOo9hDb1u3
	 0O9iA8S+xN0Bw5y601KaE/63/Fs5lRP0/hPXXIX/i1g8cbO0dNXp5f3Z4thjX11/Cp
	 m56nSGkhiW37pDdsaf6ue/6KgFCd0PX6cfFoqXrcuTN1bq7kCWXuZC//lsGBltjyyD
	 2wA5XkTdLknSUzFuTLGZcaEk6KYdez6TM6lnb8mIk7uxdSAja92ijV+j2G1PfQmZSP
	 HSV7JoCHPJnNw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A5D2B83BCB;
	Thu, 27 Feb 2025 14:02:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 78661711
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 14:02:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5ED5040DA3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 14:02:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rsMcAZL-B8Ur for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Feb 2025 14:02:44 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 12FD6414D6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 12FD6414D6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 12FD6414D6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 14:02:42 +0000 (UTC)
X-CSE-ConnectionGUID: oVoZmtZSQTyTqXMn1hZJzA==
X-CSE-MsgGUID: ugvZ8AmRRCSHDEzlyFuj+g==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="41752310"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="41752310"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 06:02:42 -0800
X-CSE-ConnectionGUID: NhBMIehdRk6BeJsHKOXElA==
X-CSE-MsgGUID: QueMaA3QToyFdCn831cvsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,319,1732608000"; d="scan'208";a="122149471"
Received: from mohdfai2-ilbpg12-1.png.intel.com ([10.88.227.73])
 by fmviesa004.fm.intel.com with ESMTP; 27 Feb 2025 06:02:34 -0800
From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Simon Horman <horms@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Furong Xu <0x1207@gmail.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 Serge Semin <fancer.lancer@gmail.com>,
 Xiaolei Wang <xiaolei.wang@windriver.com>,
 Suraj Jaiswal <quic_jsuraj@quicinc.com>,
 Kory Maincent <kory.maincent@bootlin.com>, Gal Pressman <gal@nvidia.com>,
 Jesper Nilsson <jesper.nilsson@axis.com>,
 Andrew Halaney <ahalaney@redhat.com>,
 Choong Yong Liang <yong.liang.choong@linux.intel.com>,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, bpf@vger.kernel.org
Date: Thu, 27 Feb 2025 09:01:50 -0500
Message-Id: <20250227140158.2129988-3-faizal.abdul.rahim@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250227140158.2129988-1-faizal.abdul.rahim@linux.intel.com>
References: <20250227140158.2129988-1-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740664963; x=1772200963;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=y/vg46vRn1lgg6h2OUWs7r6Zp75W28a+qluOoO9J7Nk=;
 b=Vx13hn50fCIUToIhcP0c5NfBMha+j55QnKFjNhASrYNhgS9JnnLLz+pT
 Z1BPYHOqSCW8OY/zgPEK08t+mp3JRRm4p1DJ6f1gyWOph0MnbYWboxLEF
 t1dEDNnp1AtHgSAIooo9INHyU5DvM4D9jLTuF1i3gvlezix3lspa7WINu
 Gz+HQb1hf2lHZdHHr5OQBvIVS66DEn8h9gcbrwUKBRNavBRniuz+gVOaY
 Gnh32ZTD2EvYO+Jo7PDawbbulYEgMhaxgCd3NKAhM22Lc5Viz9SN5yJQk
 4lz86Rv2x1fK8s9+noTY+qyUlPG8kdc/ruj9sP6i2Oc+pTj3TpqRYefa+
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Vx13hn50
Subject: [Intel-wired-lan] [PATCH iwl-next v6 2/9] igc: Rename
 xdp_get_tx_ring() for non-xdp usage
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

Renamed xdp_get_tx_ring() function to a more generic name for use in
upcoming frame preemption patches.

Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h      |  2 +-
 drivers/net/ethernet/intel/igc/igc_main.c | 10 +++++-----
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index b8111ad9a9a8..22ecdac26cf4 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -736,7 +736,7 @@ struct igc_nfc_rule *igc_get_nfc_rule(struct igc_adapter *adapter,
 				      u32 location);
 int igc_add_nfc_rule(struct igc_adapter *adapter, struct igc_nfc_rule *rule);
 void igc_del_nfc_rule(struct igc_adapter *adapter, struct igc_nfc_rule *rule);
-
+struct igc_ring *igc_get_tx_ring(struct igc_adapter *adapter, int cpu);
 void igc_ptp_init(struct igc_adapter *adapter);
 void igc_ptp_reset(struct igc_adapter *adapter);
 void igc_ptp_suspend(struct igc_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 56a35d58e7a6..44e4f925491f 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2444,8 +2444,8 @@ static int igc_xdp_init_tx_descriptor(struct igc_ring *ring,
 	return -ENOMEM;
 }
 
-static struct igc_ring *igc_xdp_get_tx_ring(struct igc_adapter *adapter,
-					    int cpu)
+struct igc_ring *igc_get_tx_ring(struct igc_adapter *adapter,
+				 int cpu)
 {
 	int index = cpu;
 
@@ -2469,7 +2469,7 @@ static int igc_xdp_xmit_back(struct igc_adapter *adapter, struct xdp_buff *xdp)
 	if (unlikely(!xdpf))
 		return -EFAULT;
 
-	ring = igc_xdp_get_tx_ring(adapter, cpu);
+	ring = igc_get_tx_ring(adapter, cpu);
 	nq = txring_txq(ring);
 
 	__netif_tx_lock(nq, cpu);
@@ -2546,7 +2546,7 @@ static void igc_finalize_xdp(struct igc_adapter *adapter, int status)
 	struct igc_ring *ring;
 
 	if (status & IGC_XDP_TX) {
-		ring = igc_xdp_get_tx_ring(adapter, cpu);
+		ring = igc_get_tx_ring(adapter, cpu);
 		nq = txring_txq(ring);
 
 		__netif_tx_lock(nq, cpu);
@@ -6699,7 +6699,7 @@ static int igc_xdp_xmit(struct net_device *dev, int num_frames,
 	if (unlikely(flags & ~XDP_XMIT_FLAGS_MASK))
 		return -EINVAL;
 
-	ring = igc_xdp_get_tx_ring(adapter, cpu);
+	ring = igc_get_tx_ring(adapter, cpu);
 	nq = txring_txq(ring);
 
 	__netif_tx_lock(nq, cpu);
-- 
2.34.1

