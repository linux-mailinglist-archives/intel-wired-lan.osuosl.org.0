Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6MrsI1XagWlBLQMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Feb 2026 12:21:57 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5527AD8361
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Feb 2026 12:21:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E1DE283C8D;
	Tue,  3 Feb 2026 11:21:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YKiSLKuGjud4; Tue,  3 Feb 2026 11:21:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2237B83C8A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770117715;
	bh=QPTfCWf+IQNl19uYZK/riDxJQK4Qo4zq2gQYKxGAe1k=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZTqEZfOUnfELOG00LEIBx297sVHjlsXf3OsreolT4+1m0MCIrKn3WjJ/H7xfJ0e+9
	 LAx/lPxgISOAJ0rGkRFTCGQCBpDgKcI0TJSiEZUNWdLJiuZAYHJbV6d5+Ao7YdTJ1H
	 MyI6U0s9P/3xQD7/+T97BGdM1EpKLG/EQfr2DHWhZ4XjHbYpPo8BVZJS0dQyZ8LzFe
	 yI4NMLoTUE9GZWdkbGXIr+pq+B6olBxFO9ZeHAJGtO9f2iPax8v7ixgl+XQwp5G5uZ
	 a4gr6KcXzhmmIUztgDidRbMApP7JxUSQWEhi76O7rsGLYuKb9Yzsa9BQ2DLGFt+uxl
	 VJ9n8ksmsu/OQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2237B83C8A;
	Tue,  3 Feb 2026 11:21:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id B1B651A6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 11:21:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 90BE240A7B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 11:21:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Pze5OETQvXEx for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Feb 2026 11:21:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 90143407AC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 90143407AC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 90143407AC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 11:21:51 +0000 (UTC)
X-CSE-ConnectionGUID: xQQS6w/nTlGv5SsfvEGBVw==
X-CSE-MsgGUID: BsYlfRg+SvqucL9oaq1bHg==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="71185890"
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="71185890"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 03:21:52 -0800
X-CSE-ConnectionGUID: MmCtnOqeQLS4SwTTlfH+/Q==
X-CSE-MsgGUID: Xl0Hg+hZSsin46I0ZXbGvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="209913252"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa007.jf.intel.com with ESMTP; 03 Feb 2026 03:21:44 -0800
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 92FD028199;
 Tue,  3 Feb 2026 11:21:40 +0000 (GMT)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: bpf@vger.kernel.org
Cc: Claudiu Manoil <claudiu.manoil@nxp.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, Wei Fang <wei.fang@nxp.com>,
 Clark Wang <xiaoning.wang@nxp.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
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
 Larysa Zaremba <larysa.zaremba@intel.com>,
 Tushar Vyavahare <tushar.vyavahare@intel.com>,
 Jason Xing <kernelxing@tencent.com>,
 =?UTF-8?q?Ricardo=20B=2E=20Marli=C3=A8re?= <rbm@suse.com>,
 Eelco Chaudron <echaudro@redhat.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>,
 Toke Hoiland-Jorgensen <toke@redhat.com>, imx@lists.linux.dev,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kselftest@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Tue,  3 Feb 2026 11:53:31 +0100
Message-ID: <20260203105417.2302672-4-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260203105417.2302672-1-larysa.zaremba@intel.com>
References: <20260203105417.2302672-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770117712; x=1801653712;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hIRoxqbEzKKlNaQMH0Y2z71hFr1hAKwciwW23hYIr/Y=;
 b=HqQigbrt3nsoi/bAqTIoT2/6wRc7FaWBdycO/QsZ0K9iXFmF5dR1PEDd
 c3RZVIVhazTYr/quKkKidC8mgm1Llh+WS5E8zjaYpvjPXLR9t1DbQDH/5
 9I+ca0q8b/lwlTJIrufJNFyTvo+/sCyV73iIUt95d5b1mgmGuOx5ZciOR
 JWvGpul5FQNgPnGMxZXMFuOYWBc5AU9Xm3zeX8qwsO0JIgbPOCPGAs6XE
 Z/wBE4+MPOD00d+muRFJZvxcOx2IA3R/Tn9Co9iwyBaCarl/Yc3Y9lSNG
 N83HEohzaJtXldWim1v+2CYQRYbMRE1e/SAYFIP58O6kRLuuBz5eJtzGm
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HqQigbrt
Subject: [Intel-wired-lan] [PATCH bpf 3/6] ice: change XDP RxQ frag_size
 from DMA write length to truesize
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
	RCPT_COUNT_TWELVE(0.00)[43];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:bpf@vger.kernel.org,m:claudiu.manoil@nxp.com,m:vladimir.oltean@nxp.com,m:wei.fang@nxp.com,m:xiaoning.wang@nxp.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:horms@kernel.org,m:shuah@kernel.org,m:aleksander.lobakin@intel.com,m:maciej.fijalkowski@intel.com,m:bastien.curutchet@bootlin.com,m:larysa.zaremba@intel.com,m:tushar.vyavahare@intel.com,m:kernelxing@tencent.com,m:rbm@suse.com,m:echaudro@redhat.com,m:lorenzo@kernel.org,m:toke@redhat.com,m:imx@lists.linux.dev,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:aleksandr.loktiono
 v@intel.com,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FREEMAIL_CC(0.00)[nxp.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,intel.com,iogearbox.net,gmail.com,fomichev.me,linux.dev,bootlin.com,tencent.com,suse.com,lists.linux.dev,vger.kernel.org,lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:dkim];
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
X-Rspamd-Queue-Id: 5527AD8361
X-Rspamd-Action: no action

The only user of frag_size field in XDP RxQ info is
bpf_xdp_frags_increase_tail(). It clearly expects truesize instead of DMA
write size. Different assumptions in ice driver configuration lead to
negative tailroom.

Before changing the tailroom in the abovementioned function to a signed
int, this allows to trigger kernel panic, when using
XDP_ADJUST_TAIL_GROW_MULTI_BUFF xskxceiver test and changing packet size to
6912 and the requisted offset to a huge value, e.g.
XSK_UMEM__MAX_FRAME_SIZE * 100.

Due to other quirks of the ZC configuration in ice, issue is not observed
in ZC mode.

Use fill queue buffer truesize instead of DMA write size in XDP RxQ info.

Fixes: 2fba7dc5157b ("ice: Add support for XDP multi-buffer on Rx side")
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_base.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 511d803cf0a4..6a15b66e340e 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -694,7 +694,7 @@ static int ice_vsi_cfg_rxq(struct ice_rx_ring *ring)
 			err = __xdp_rxq_info_reg(&ring->xdp_rxq, ring->netdev,
 						 ring->q_index,
 						 ring->q_vector->napi.napi_id,
-						 ring->rx_buf_len);
+						 ring->truesize);
 			if (err)
 				goto err_destroy_fq;
 
-- 
2.52.0

