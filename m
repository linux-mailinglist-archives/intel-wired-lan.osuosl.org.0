Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A018CAE6CAA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jun 2025 18:45:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D577640608;
	Tue, 24 Jun 2025 16:45:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2fs0wJf_xAbD; Tue, 24 Jun 2025 16:45:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 46DF140733
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750783550;
	bh=R8whJIddWbsDb2B1vVSMAQ1o1uph8f/JG8coSkPtoHU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ofcl/DSgB2bqYndt+cEgVYWapFh4wxT+bpFJ87J42JjAqarSTtv0bLG3mrgIV6LNB
	 LjWOCaRAzsZMItUN2FbHxfkL/xNbAzmKTXmu/Vzqzzwhy2jXk1cAz13ylUlmxzvfBa
	 jSKl/5W85AtD84+JuF3+t4bdKAVacs01m8oaDLn5ViKj7OsWgkOVtZ1kOoAvB42Vec
	 wNjcFEtH6GpB1vZ9C+obBgG2dLRQC+zpOUXYRdQtlmoTj+xpB6l3ChtZo1NpKBt9zM
	 elZ+x6babltZFiJ1Sc7yrI2ksfz7OWzIneBMd8cjbwux1LoBgZXPnuTuHPDy3mAX0y
	 GDc21CHu09S7w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 46DF140733;
	Tue, 24 Jun 2025 16:45:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id B61AE43F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 16:45:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9C59B8143C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 16:45:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DU72XnespjdA for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jun 2025 16:45:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0E49D813EB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E49D813EB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0E49D813EB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 16:45:47 +0000 (UTC)
X-CSE-ConnectionGUID: 8CjMnBs6RGSRk75l2PAZyQ==
X-CSE-MsgGUID: zpTeGNh6TmeKF9V18m/15Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="64091144"
X-IronPort-AV: E=Sophos;i="6.16,262,1744095600"; d="scan'208";a="64091144"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 09:45:47 -0700
X-CSE-ConnectionGUID: OxvfbUtoSGe1NIgaO2j8EQ==
X-CSE-MsgGUID: W/l9vzTSQJqOA1BN31B5QA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,262,1744095600"; d="scan'208";a="152669450"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa010.fm.intel.com with ESMTP; 24 Jun 2025 09:45:44 -0700
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
 Daniel Borkmann <daniel@iogearbox.net>, Simon Horman <horms@kernel.org>,
 nxne.cnse.osdt.itp.upstreaming@intel.com, bpf@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Tue, 24 Jun 2025 18:45:05 +0200
Message-ID: <20250624164515.2663137-3-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250624164515.2663137-1-aleksander.lobakin@intel.com>
References: <20250624164515.2663137-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750783548; x=1782319548;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=r8WPfcvVmcBUTSmYNEXw6s82WdS/cusWfHrCEVEYrgo=;
 b=PdsJohrUdhN7NyLNTPgarDHxb3L8XNunYLcEXUWIcohAY+QsyfZf7VGh
 sfCE4AnPDXoqGqKqqgmNb/sIamVON2pV3FScdJmrwvg504BYWSbCPQJbk
 JIxQdIVB9LdNZ+D3ci0j6JthJXQZMn/+kf7p5ohVW3GhaHFrO6bK6449O
 84OC6cPtnyxs4+ypcscuY6sDXJ2ANbNwN+/0Yxkw/wqsAR9JqWe4vYkr+
 FgRJnDbyMbodCfKQ75MN/2J6s0TgDy99oWpPNvpl3jJMkxfPHiuKYjsqU
 L+enWX1mOX21zi1fIzll8pAJ3LsmItwoFNBDdgRNXR7gISa3h6E2vnk7B
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PdsJohrU
Subject: [Intel-wired-lan] [PATCH iwl-next v2 02/12] idpf: use a saner limit
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
In order to be able to allocate more queues, which will be then used for
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
index 0ba766fe4f26..875ed4054268 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -1243,13 +1243,7 @@ int idpf_vport_calc_total_qs(struct idpf_adapter *adapter, u16 vport_idx,
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
index 24febaaa8fbb..29cd3da6376d 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -909,7 +909,7 @@ int idpf_vport_alloc_max_qs(struct idpf_adapter *adapter,
 	max_tx_q = le16_to_cpu(caps->max_tx_q) / default_vports;
 	if (adapter->num_alloc_vports < default_vports) {
 		max_q->max_rxq = min_t(u16, max_rx_q, IDPF_MAX_Q);
-		max_q->max_txq = min_t(u16, max_tx_q, IDPF_MAX_Q);
+		max_q->max_txq = min_t(u16, max_tx_q, IDPF_LARGE_MAX_Q);
 	} else {
 		max_q->max_rxq = IDPF_MIN_Q;
 		max_q->max_txq = IDPF_MIN_Q;
-- 
2.49.0

