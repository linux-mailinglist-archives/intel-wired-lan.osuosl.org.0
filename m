Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GNxnNc9Cj2k5OgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Feb 2026 16:27:11 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6934213783F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Feb 2026 16:27:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C4F0341D33;
	Fri, 13 Feb 2026 15:27:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Pasvrm-RObOe; Fri, 13 Feb 2026 15:27:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4574D41CFC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770996429;
	bh=s7F0qbhkjAnV1PcaQ1kJXNd2gdF9vnCkoqvlkGZXzW8=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GGB2wGWviYBQ2l5tV/sukOcToBR8GmNYlP6yqdyC6c3yJ5ko42NH6uq1WL8ZYbJD4
	 5GKQPST29grKnom2FoQTTR74Ju2FCP3B4LkT22Ky3Q0aRnWgxfDfZ2cQvXaWUFXHQv
	 ZLUgulaGVIZA68zk11wFZj/YfoT7w7UkZFsxmpTkcAZvvOZDig89mXiPxwFsdwieQz
	 NMVmbq27YaqGHGvxGH7/mY/MD86xYL6Mrz5joYgZFEj4fkE6+VmV8QchasrKrdfyhy
	 R1MOdYb1Z7BzwEvEoubPbfKMnmJe53RyBb98d+6J9J3UFSsrg+iL+zJNEf17KdmFaC
	 lgLUeqJXe9VJg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4574D41CFC;
	Fri, 13 Feb 2026 15:27:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 30C40255
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 15:27:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2247441D1D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 15:27:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 14qmUFnfG4QK for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Feb 2026 15:27:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=lorenzo@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 121E641CDF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 121E641CDF
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 121E641CDF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 15:27:06 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 371986001A;
 Fri, 13 Feb 2026 15:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64D50C116C6;
 Fri, 13 Feb 2026 15:27:05 +0000 (UTC)
From: Lorenzo Bianconi <lorenzo@kernel.org>
Date: Fri, 13 Feb 2026 16:26:21 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260213-bpf-xdp-meta-rxcksum-v2-2-a82c4802afbe@kernel.org>
References: <20260213-bpf-xdp-meta-rxcksum-v2-0-a82c4802afbe@kernel.org>
In-Reply-To: <20260213-bpf-xdp-meta-rxcksum-v2-0-a82c4802afbe@kernel.org>
To: Donald Hunter <donald.hunter@gmail.com>, 
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, 
 Simon Horman <horms@kernel.org>, Alexei Starovoitov <ast@kernel.org>, 
 Daniel Borkmann <daniel@iogearbox.net>, 
 Jesper Dangaard Brouer <hawk@kernel.org>, 
 John Fastabend <john.fastabend@gmail.com>, 
 Stanislav Fomichev <sdf@fomichev.me>, Andrew Lunn <andrew+netdev@lunn.ch>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Alexander Lobakin <aleksander.lobakin@intel.com>, 
 Andrii Nakryiko <andrii@kernel.org>, 
 Martin KaFai Lau <martin.lau@linux.dev>, 
 Eduard Zingerman <eddyz87@gmail.com>, Song Liu <song@kernel.org>, 
 Yonghong Song <yonghong.song@linux.dev>, KP Singh <kpsingh@kernel.org>, 
 Hao Luo <haoluo@google.com>, Jiri Olsa <jolsa@kernel.org>, 
 Shuah Khan <shuah@kernel.org>, 
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Cc: Jakub Sitnicki <jakub@cloudflare.com>, netdev@vger.kernel.org, 
 bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org, 
 linux-kselftest@vger.kernel.org, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Lorenzo Bianconi <lorenzo@kernel.org>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1770996425;
 bh=jzwrIvlfZk6MWSMCC0apFup4Q/S1x/hMT1Pen21jYHM=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=rwHh1NLb4cG2OfEAbgLg+lNi1i07uP/G2ZALst8A7GRIvdEeMBzHaYrqp+JSreA2f
 5RHuF//UI8ycWM5gv6G90axt6O2QpAY5gxUW8hqKZtCjxnI5zqfb0V2TnBneeeyOu8
 7SdQjxpWmxn6ZL8SjCF316eb7HoYCft5uSRPawYvMjh4GdsSIBQLs8JM4rFpamDBWS
 rJ+0nhibZbNspaG23PA96Jug9e0xuBCElYZUbGa84YgI1imSUQFLB6JIJ5NgfUOtYV
 fLMViBBC385xwUaXIft0UR/RpuhHuvR9ftNd4ghfzLjL1hWlaeL+fU6fHFuCe5Iao6
 Yt9FgcroU0Ztg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=rwHh1NLb
Subject: [Intel-wired-lan] [PATCH bpf-next v2 2/5] net: veth: Add
 xmo_rx_checksum callback to veth driver
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
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[32];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksander.lobakin@intel.com,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:shuah@kernel.org,m:maciej.fijalkowski@intel.com,m:jakub@cloudflare.com,m:netdev@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:lorenzo@kernel.org,m:donaldhunter@gmail.com,m:johnfastabend@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,davemloft.net,google.com,redhat.com,iogearbox.net,fomichev.me,lunn.ch,intel.com,linux.dev];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[lorenzo@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim,intel.com:email];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lorenzo@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 6934213783F
X-Rspamd-Action: no action

Implement xmo_rx_checksum callback in veth driver to report RX checksum
result to the eBPF program bounded to the veth device.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 drivers/net/veth.c | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/drivers/net/veth.c b/drivers/net/veth.c
index 9982412fd7f238e996ccdff24342974cb25094bf..3ec77599299ae0bbb7df88e5820793065911e88e 100644
--- a/drivers/net/veth.c
+++ b/drivers/net/veth.c
@@ -1697,6 +1697,35 @@ static int veth_xdp_rx_vlan_tag(const struct xdp_md *ctx, __be16 *vlan_proto,
 	return err;
 }
 
+static int veth_xdp_rx_checksum(const struct xdp_md *ctx,
+				enum xdp_checksum *ip_summed,
+				u32 *cksum_meta)
+{
+	const struct veth_xdp_buff *_ctx = (void *)ctx;
+	const struct sk_buff *skb = _ctx->skb;
+
+	if (!skb)
+		return -ENODATA;
+
+	*ip_summed = skb->ip_summed;
+	switch (skb->ip_summed) {
+	case CHECKSUM_COMPLETE:
+		*ip_summed = XDP_CHECKSUM_COMPLETE;
+		*cksum_meta = skb->csum;
+		break;
+	case CHECKSUM_UNNECESSARY:
+		*ip_summed = XDP_CHECKSUM_UNNECESSARY;
+		*cksum_meta = skb->csum_level;
+		break;
+	default:
+		*ip_summed = XDP_CHECKSUM_NONE;
+		*cksum_meta = 0;
+		break;
+	}
+
+	return 0;
+}
+
 static const struct net_device_ops veth_netdev_ops = {
 	.ndo_init            = veth_dev_init,
 	.ndo_open            = veth_open,
@@ -1722,6 +1751,7 @@ static const struct xdp_metadata_ops veth_xdp_metadata_ops = {
 	.xmo_rx_timestamp		= veth_xdp_rx_timestamp,
 	.xmo_rx_hash			= veth_xdp_rx_hash,
 	.xmo_rx_vlan_tag		= veth_xdp_rx_vlan_tag,
+	.xmo_rx_checksum		= veth_xdp_rx_checksum,
 };
 
 #define VETH_FEATURES (NETIF_F_SG | NETIF_F_FRAGLIST | NETIF_F_HW_CSUM | \

-- 
2.53.0

