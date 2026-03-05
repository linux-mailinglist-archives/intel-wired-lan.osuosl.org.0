Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mO0TJb5sqWnH7AAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Mar 2026 12:45:02 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 398C7210C1D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Mar 2026 12:45:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7A50D81EA1;
	Thu,  5 Mar 2026 11:45:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NEkvZGImFHf2; Thu,  5 Mar 2026 11:45:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F137381EA9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772711100;
	bh=urO4sahqMSqPnsOC9qWBNUB7l2q6g31UZGEFdijQ5xA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5SinK58GnYT5au2EqXM8wAUlcgnB2jyY1ar8ukhAJv1zVPnr0yzhUZ/IGuQNeU1bJ
	 ibGbQ5XWMHZMsnNJPC5uvcepa2cqjxo/euNlSX+SB1Y++baomHX/9A/jkFzic5h649
	 wCvy4sxaIkvVXn8L+QKe891viTpfDfF2UFFo86+sw5BtAL9iuR8vT6nADAP0WN9F26
	 l7q4qnjlcmZBvyj8h4A37+bBXuRMVyBtvET7kJnJkKO2ZLd2mcYXNZC4v8Dkz/5bvs
	 AynFFn2KFaV+5iOv0/XRcK9iyoB7G/eCiI/v5PdsuQjDKjtSl8nHP06pfL9Y7Oan1V
	 H7qbdFVL0KCmQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id F137381EA9;
	Thu,  5 Mar 2026 11:44:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 16A31223
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Mar 2026 11:44:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F045081EA1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Mar 2026 11:44:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1js5t7G2v3a6 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Mar 2026 11:44:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F0CCC816D9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F0CCC816D9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F0CCC816D9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Mar 2026 11:44:56 +0000 (UTC)
X-CSE-ConnectionGUID: 12rRgbBbQwamoNA+pVZptA==
X-CSE-MsgGUID: k/zP36+sQmilkBnl04RXuA==
X-IronPort-AV: E=McAfee;i="6800,10657,11719"; a="84428640"
X-IronPort-AV: E=Sophos;i="6.23,102,1770624000"; d="scan'208";a="84428640"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2026 03:44:57 -0800
X-CSE-ConnectionGUID: mbQVAOLNT1Wklc95JC1r/w==
X-CSE-MsgGUID: Ke2MErpaSNOTg2om/Bd6OA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,102,1770624000"; d="scan'208";a="223345258"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa005.fm.intel.com with ESMTP; 05 Mar 2026 03:44:49 -0800
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 2BCD628772;
 Thu,  5 Mar 2026 11:44:46 +0000 (GMT)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: netdev@vger.kernel.org, bpf@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>
Cc: Larysa Zaremba <larysa.zaremba@intel.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, Wei Fang <wei.fang@nxp.com>,
 Clark Wang <xiaoning.wang@nxp.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>, Andrii Nakryiko <andrii@kernel.org>,
 Martin KaFai Lau <martin.lau@linux.dev>,
 Eduard Zingerman <eddyz87@gmail.com>, Song Liu <song@kernel.org>,
 Yonghong Song <yonghong.song@linux.dev>, KP Singh <kpsingh@kernel.org>,
 Hao Luo <haoluo@google.com>, Jiri Olsa <jolsa@kernel.org>,
 Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 "Bastien Curutchet (eBPF Foundation)" <bastien.curutchet@bootlin.com>,
 Tushar Vyavahare <tushar.vyavahare@intel.com>,
 Jason Xing <kernelxing@tencent.com>,
 =?UTF-8?q?Ricardo=20B=2E=20Marli=C3=A8re?= <rbm@suse.com>,
 Eelco Chaudron <echaudro@redhat.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>,
 Toke Hoiland-Jorgensen <toke@redhat.com>, imx@lists.linux.dev,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kselftest@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Dragos Tatulea <dtatulea@nvidia.com>,
 Magnus Karlsson <magnus.karlsson@intel.com>
Date: Thu,  5 Mar 2026 12:12:43 +0100
Message-ID: <20260305111253.2317394-3-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260305111253.2317394-1-larysa.zaremba@intel.com>
References: <20260305111253.2317394-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772711097; x=1804247097;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8YYa4oSKEYm0ROUncJM++ZnK2B1R2RGS0jojQfA5clM=;
 b=EkhayCvteMM7DrrRhtv23pvFZp9d87UX32rmY2MI0KKuKSOhLbLAhEtj
 N6ndf7eqeZZvamc5vhO29l867sVzMiUitO8RVxA6Xcxem1K//mNF6+l9f
 ZIPI034IB3je2hUd84Gjhl05anHuL4r7NN+0lOnI/Z6K+dnt00MYUc2Y/
 ZCvU1Pywl/LsLuI1IKr724KdcZGVl+mkRhhPjzr+/5/sZ9r+W41t6iT7I
 tpdLQ9ep7TV7HdCdvTAZ017hPTU4S3z2taIOi1B+UlMOxZpROpkevBrwI
 HgnZsw0ZtaWoBJYA5O8ZF6/cjHv9y0Y6lRHXiyf3s9e1NgkbBbd2UbQQz
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EkhayCvt
Subject: [Intel-wired-lan] [PATCH net v5 2/9] xsk: introduce helper to
 determine rxq->frag_size
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
X-Rspamd-Queue-Id: 398C7210C1D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[45];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:bpf@vger.kernel.org,m:kuba@kernel.org,m:larysa.zaremba@intel.com,m:claudiu.manoil@nxp.com,m:vladimir.oltean@nxp.com,m:wei.fang@nxp.com,m:xiaoning.wang@nxp.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:horms@kernel.org,m:shuah@kernel.org,m:aleksander.lobakin@intel.com,m:maciej.fijalkowski@intel.com,m:bastien.curutchet@bootlin.com,m:tushar.vyavahare@intel.com,m:kernelxing@tencent.com,m:rbm@suse.com,m:echaudro@redhat.com,m:lorenzo@kernel.org,m:toke@redhat.com,m:imx@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:aleksandr.loktiono
 v@intel.com,m:dtatulea@nvidia.com,m:magnus.karlsson@intel.com,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FREEMAIL_CC(0.00)[intel.com,nxp.com,lunn.ch,davemloft.net,google.com,redhat.com,kernel.org,iogearbox.net,gmail.com,fomichev.me,linux.dev,bootlin.com,tencent.com,suse.com,lists.linux.dev,vger.kernel.org,lists.osuosl.org,nvidia.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:mid,intel.com:email];
	FROM_NEQ_ENVFROM(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

rxq->frag_size is basically a step between consecutive strictly aligned
frames. In ZC mode, chunk size fits exactly, but if chunks are unaligned,
there is no safe way to determine accessible space to grow tailroom.

Report frag_size to be zero, if chunks are unaligned, chunk_size otherwise.

Fixes: 24ea50127ecf ("xsk: support mbuf on ZC RX")
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 include/net/xdp_sock_drv.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/include/net/xdp_sock_drv.h b/include/net/xdp_sock_drv.h
index aefc368449d5..6b9ebae2dc95 100644
--- a/include/net/xdp_sock_drv.h
+++ b/include/net/xdp_sock_drv.h
@@ -51,6 +51,11 @@ static inline u32 xsk_pool_get_rx_frame_size(struct xsk_buff_pool *pool)
 	return xsk_pool_get_chunk_size(pool) - xsk_pool_get_headroom(pool);
 }
 
+static inline u32 xsk_pool_get_rx_frag_step(struct xsk_buff_pool *pool)
+{
+	return pool->unaligned ? 0 : xsk_pool_get_chunk_size(pool);
+}
+
 static inline void xsk_pool_set_rxq_info(struct xsk_buff_pool *pool,
 					 struct xdp_rxq_info *rxq)
 {
@@ -337,6 +342,11 @@ static inline u32 xsk_pool_get_rx_frame_size(struct xsk_buff_pool *pool)
 	return 0;
 }
 
+static inline u32 xsk_pool_get_rx_frag_step(struct xsk_buff_pool *pool)
+{
+	return 0;
+}
+
 static inline void xsk_pool_set_rxq_info(struct xsk_buff_pool *pool,
 					 struct xdp_rxq_info *rxq)
 {
-- 
2.52.0

