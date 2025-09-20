Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C22B8C7D1
	for <lists+intel-wired-lan@lfdr.de>; Sat, 20 Sep 2025 14:21:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9424141311;
	Sat, 20 Sep 2025 12:21:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S-YqIQM1tSvM; Sat, 20 Sep 2025 12:21:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 16950412B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758370888;
	bh=toNUimgG/VDHJ+S42pxofJjJruA/jQ1CD8xhpXqlVpU=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1kQS9yLzz2gkKhhyx5bwwwRLtPr9k5jkZoo2Y7cj5RaQiKmEKUALoqSZ3myv4C4uA
	 ylWzoMauHbrHFFLHkWi8eTy9nJeQRi0LDXFZwoQzwUODVg37+ljJmUGaNpWVkQVq4J
	 PEBno4dRb1LOdz1orAH9Ro4daDGx07HoStczyaM6nIbIiBLXbKEc902ivPeka9Tcv6
	 +ru4rC5ImM1hxIKhoGqxUPfEsvm6Ko8Y//YvqpF+bjTQYbirbruFugXqvXhgAhWXw9
	 HcwPq/nNpW2M9ll4SnQoyXo2Q+05FW6s128/La6M3s5mPevOpqfHEGjdoobLuwaFGj
	 nIO0awUv2Fq3g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 16950412B8;
	Sat, 20 Sep 2025 12:21:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id A2734219
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Sep 2025 12:21:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 88A214129F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Sep 2025 12:21:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6D6XBP5iIIDm for <intel-wired-lan@lists.osuosl.org>;
 Sat, 20 Sep 2025 12:21:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=lorenzo@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 989BB41296
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 989BB41296
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 989BB41296
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Sep 2025 12:21:25 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id B7F37601B9;
 Sat, 20 Sep 2025 12:21:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D95E5C4CEF9;
 Sat, 20 Sep 2025 12:21:23 +0000 (UTC)
From: Lorenzo Bianconi <lorenzo@kernel.org>
Date: Sat, 20 Sep 2025 14:20:29 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250920-xdp-meta-rxcksum-v1-3-35e76a8a84e7@kernel.org>
References: <20250920-xdp-meta-rxcksum-v1-0-35e76a8a84e7@kernel.org>
In-Reply-To: <20250920-xdp-meta-rxcksum-v1-0-35e76a8a84e7@kernel.org>
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
 Shuah Khan <shuah@kernel.org>
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org, 
 intel-wired-lan@lists.osuosl.org, linux-kselftest@vger.kernel.org, 
 Lorenzo Bianconi <lorenzo@kernel.org>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1758370884;
 bh=3CR7RjVcRyDsVXnHpze6aotTbagI9yFdEz/x13ifMtw=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=L+oW7lzKy4BoamfewGWcvpKBmh/wVXSG6wbZEg56hLK7kitrSnVW2dNdSGk8HQ8/j
 S1XdCpDDJOQxxTZork+03eR7rFPd63zZPbhjypOBUZlrPq1ZS6Vwz2IL9571imPRiu
 uITfK8sXqJftbRPBkv+T5Dnu0Vj7d6AYFPt02I+dRWBc7rTdrkRR2S1efReNCcPWKb
 jOt7jup9Et16XSReCjnA3bkQICffFtWUEvXo5rZ0ZO+fPKH57ZGGohQO+noiFOT5jM
 KeYHb5UQ5DOl+xO4DJmO4btEnS8RBeG7uugw+bndkzOjZD4DE7tRoeJ/tFd70uopob
 YcxzmVssEA5gg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=L+oW7lzK
Subject: [Intel-wired-lan] [PATCH RFC bpf-next 3/6] veth: Add
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

Implement xmo_rx_checksum callback in veth driver to report RX checksum
result to the eBPF program bounded to the NIC.

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 drivers/net/veth.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/net/veth.c b/drivers/net/veth.c
index a3046142cb8e2658a30041129f8d298e5e0a5822..2a762cb132fd9fd90376965c65c4fedcc28a26c8 100644
--- a/drivers/net/veth.c
+++ b/drivers/net/veth.c
@@ -1692,6 +1692,24 @@ static int veth_xdp_rx_vlan_tag(const struct xdp_md *ctx, __be16 *vlan_proto,
 	return err;
 }
 
+static int veth_xdp_rx_checksum(const struct xdp_md *ctx, u8 *ip_summed,
+				u32 *cksum_meta)
+{
+	const struct veth_xdp_buff *_ctx = (void *)ctx;
+	const struct sk_buff *skb = _ctx->skb;
+
+	if (!skb)
+		return -ENODATA;
+
+	/* For locally generated packets ip_summed is set to
+	 * CHECKSUM_PARTIAL.
+	 */
+	*ip_summed = skb->ip_summed;
+	*cksum_meta = 0;
+
+	return 0;
+}
+
 static const struct net_device_ops veth_netdev_ops = {
 	.ndo_init            = veth_dev_init,
 	.ndo_open            = veth_open,
@@ -1717,6 +1735,7 @@ static const struct xdp_metadata_ops veth_xdp_metadata_ops = {
 	.xmo_rx_timestamp		= veth_xdp_rx_timestamp,
 	.xmo_rx_hash			= veth_xdp_rx_hash,
 	.xmo_rx_vlan_tag		= veth_xdp_rx_vlan_tag,
+	.xmo_rx_checksum		= veth_xdp_rx_checksum,
 };
 
 #define VETH_FEATURES (NETIF_F_SG | NETIF_F_FRAGLIST | NETIF_F_HW_CSUM | \

-- 
2.51.0

