Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AED7A5048A
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Mar 2025 17:22:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A1DF781221;
	Wed,  5 Mar 2025 16:22:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oZTuifPMqExN; Wed,  5 Mar 2025 16:22:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E1D3581B83
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741191764;
	bh=PejPzuuHWazsYASzWOMfnakPvqqTSkighu3Q6dmbRt4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dgZMf7Jz83waiUlJuRPP0umuNVxN3vo2JIIuXQEJOBNr1c4OGfunouOVgsqY1cV+p
	 M99SbPCvv48keiK+JT5naROJZWPG7/xDH9CFlEMbnzeRxQHYKC4dg9+BngNgymAHKE
	 8jS7PxXdk7HubkL941mreJ0kARih6CNt+eo8fL2jixjO2wwtYLPuvperdB7XzIqX3c
	 4qu+VOJZ4wmlem0tatcxOR1he+EvtQOjfrgaREM3b+HOQdMdrd5J+qrF5a3BtvsuOh
	 31jraSeWFSVOIy2fo9kwHD+uaMLwxzCPKA47d9wDPKFKnoFMg16NEK1XaB0DAoPh9j
	 f053o188+DB7w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E1D3581B83;
	Wed,  5 Mar 2025 16:22:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 91B0B95F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 16:22:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7F0C5608D1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 16:22:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BYcDJqjZNy1u for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Mar 2025 16:22:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A8F3860B15
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A8F3860B15
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A8F3860B15
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 16:22:41 +0000 (UTC)
X-CSE-ConnectionGUID: iwze3Fb0QWKRWCIESwZpKA==
X-CSE-MsgGUID: /fHRVHO/TIOtfyKmRTD6NQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="42026464"
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="42026464"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 08:22:40 -0800
X-CSE-ConnectionGUID: puNLARu/T7KXmwOP7nTMHA==
X-CSE-MsgGUID: cSngNrHrQKeFsSEVtkLsBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="123832891"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa004.fm.intel.com with ESMTP; 05 Mar 2025 08:22:36 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Simon Horman <horms@kernel.org>,
 bpf@vger.kernel.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Wed,  5 Mar 2025 17:21:22 +0100
Message-ID: <20250305162132.1106080-7-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250305162132.1106080-1-aleksander.lobakin@intel.com>
References: <20250305162132.1106080-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741191762; x=1772727762;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jTuPmQQVFrjabXfcySuVP4YFotwZayqG8IND5NsKRCU=;
 b=EGfM2gm/2ZRjGoQJuXfMd/LO3fRdcbCukNPwkcuKbYIoOQwG+4bcAOAK
 kk2iVtz49JwOeVxmiDguaoiUjMqVE8FmEUsvdHKrtFKeiumfii7Nyc6Yo
 /MOgIumdi9FmEdf8hy4auBsZ+K7HyvB/V6v1jrMlcetLNFSu1lQYcYXYP
 k/HkkCvVgMvQ8VoDBSHBy8PKH09xAD0QmdU6pErBPORyM+oTJ6k678umn
 GDodxk6G+vlf9W/wLlq5B4eabzgBb8SGzrCBHvJweJg8IRxTKXXGwzQ/Z
 yR9MDyGMFpt3pF0lfQ+dCS+O2ToMuRzcVWQusPEolrc4QeckRTwiqpOLJ
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EGfM2gm/
Subject: [Intel-wired-lan] [PATCH net-next 06/16] idpf: a use saner limit
 for default number of queues to allocate
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

Currently, the maximum number of queues available for one vport is 16.
This is hardcoded, but then the function calculating the optimal number
of queues takes min(16, num_online_cpus()).
On order to be able to allocate more queues, which will be then used for
XDP, stop hardcoding 16 and rely on what the device gives us. Instead of
num_online_cpus(), which is considered suboptimal since at least 2013,
use netif_get_num_default_rss_queues() to still have free queues in the
pool.
nr_cpu_ids number of Tx queues are needed only for lockless XDP sending,
the regular stack doesn't benefit from that anyhow.
On a 128-thread Xeon, this now gives me 32 regular Tx queues and leaves
224 free for XDP (128 of which will handle XDP_TX, .ndo_xdp_xmit(), and
XSk xmit when enabled).

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.c     | 8 +-------
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 2 +-
 2 files changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index c15833928ea1..2f221c0abad8 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -1234,13 +1234,7 @@ int idpf_vport_calc_total_qs(struct idpf_adapter *adapter, u16 vport_idx,
 		num_req_tx_qs = vport_config->user_config.num_req_tx_qs;
 		num_req_rx_qs = vport_config->user_config.num_req_rx_qs;
 	} else {
-		int num_cpus;
-
-		/* Restrict num of queues to cpus online as a default
-		 * configuration to give best performance. User can always
-		 * override to a max number of queues via ethtool.
-		 */
-		num_cpus = num_online_cpus();
+		u32 num_cpus = netif_get_num_default_rss_queues();
 
 		dflt_splitq_txq_grps = min_t(int, max_q->max_txq, num_cpus);
 		dflt_singleq_txqs = min_t(int, max_q->max_txq, num_cpus);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 3d2413b8684f..135af3cc243f 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -937,7 +937,7 @@ int idpf_vport_alloc_max_qs(struct idpf_adapter *adapter,
 	max_tx_q = le16_to_cpu(caps->max_tx_q) / default_vports;
 	if (adapter->num_alloc_vports < default_vports) {
 		max_q->max_rxq = min_t(u16, max_rx_q, IDPF_MAX_Q);
-		max_q->max_txq = min_t(u16, max_tx_q, IDPF_MAX_Q);
+		max_q->max_txq = min_t(u16, max_tx_q, IDPF_LARGE_MAX_Q);
 	} else {
 		max_q->max_rxq = IDPF_MIN_Q;
 		max_q->max_txq = IDPF_MIN_Q;
-- 
2.48.1

