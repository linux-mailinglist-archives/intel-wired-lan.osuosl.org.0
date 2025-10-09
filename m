Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 00125BDBCFE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Oct 2025 01:35:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9C38941252;
	Tue, 14 Oct 2025 23:35:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Tc6_phinP08W; Tue, 14 Oct 2025 23:35:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 00C984123A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760484915;
	bh=K09yGhuPuz5y5DBtOYrDuFkQOt0DZmwIm4f7CMtsXxA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8OLHRx/5yq6GzeC7onKjT06mR0wJV67aw4nd7+19vJcLlpMyPpCMZjyk3McsKJVfq
	 3ED6mnCpBUYXIjNhiTi1wfBhXvs3T/AL5mQ+0Umfh2gZ+gdlUUCjq/gF3UJRB5PkV2
	 85TCSeB9SgxyZ2TrY/7/SfVd21cxgjyCiHGR4oQh8+YuPGD4soCnp6gG1kVueUpVWy
	 coh6CHfw5BjRHaXPrgvnexHnYb82rqODwISsAG6HDgJbBrQi8vPlvpTr4BijRhEaV0
	 IUZl5Okce/Uv3i/xUVN0/FPoEkloSBtq+nzEqSRwwLBOND/TZRFFdI5SBaAVi1Q7FQ
	 i/+A4ehO/ZVBw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 00C984123A;
	Tue, 14 Oct 2025 23:35:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id AD53B14B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Oct 2025 19:43:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AA17B40E09
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Oct 2025 19:43:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EYw4romuCiRq for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Oct 2025 19:43:58 +0000 (UTC)
X-Greylist: delayed 902 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 09 Oct 2025 19:43:57 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 97C1640B0B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 97C1640B0B
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=142.0.186.134;
 helo=s1-ba86.socketlabs.email-od.com;
 envelope-from=4504.82.6b6f10000b0816e.325e95dcf8613b0bc8d95609fa87d94d@email-od.com;
 receiver=<UNKNOWN> 
Received: from s1-ba86.socketlabs.email-od.com
 (s1-ba86.socketlabs.email-od.com [142.0.186.134])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 97C1640B0B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Oct 2025 19:43:57 +0000 (UTC)
X-Thread-Info: NDUwNC4xMi42YjZmMTAwMDBiMDgxNmUuaW50ZWwtd2lyZWQtbGFuPWxpc3RzLm9zdW9zbC5vcmc=
x-xsSpam: eyJTY29yZSI6MCwiRGV0YWlscyI6bnVsbH0=
Received: from nalramli-fst-tp.. (d4-50-191-215.clv.wideopenwest.com
 [50.4.215.191])
 by nalramli.com (Postfix) with ESMTPSA id 0F1382CE01B3;
 Thu,  9 Oct 2025 15:28:41 -0400 (EDT)
From: "Nabil S. Alramli" <dev@nalramli.com>
To: anthony.l.nguyen@intel.com,
	przemyslaw.kitszel@intel.com
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, ast@kernel.org, daniel@iogearbox.net,
 hawk@kernel.org, john.fastabend@gmail.com, lishujin@kuaishou.com,
 xingwanli@kuaishou.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, bpf@vger.kernel.org,
 team-kernel@fastly.com, khubert@fastly.com, nalramli@fastly.com,
 dev@nalramli.com
Date: Thu,  9 Oct 2025 15:28:30 -0400
Message-ID: <20251009192831.3333763-2-dev@nalramli.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251009192831.3333763-1-dev@nalramli.com>
References: <20251009192831.3333763-1-dev@nalramli.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Tue, 14 Oct 2025 23:35:13 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; d=email-od.com;
 i=@email-od.com; s=dkim; 
 c=relaxed/relaxed; q=dns/txt; t=1760039038; x=1762631038;
 h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:subject:cc:to:from:x-thread-info:subject:to:from:cc:reply-to;
 bh=K09yGhuPuz5y5DBtOYrDuFkQOt0DZmwIm4f7CMtsXxA=;
 b=jstlMvo5OYJ13Tnp7LCa+o5utYhRW8YGj+6GYhJaCENUK4TXcVhYp32bZex6Kv+aWgwCf1XDKdWHvaplAX9b7e/3PPilLCmxRpdUb288fKzen77XQ2mWO3PjwFvA/qQLtE60z4hKTB8lhAMJUq5sCjy4eWuhRALgX78zkAMpiSI=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=nalramli.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=email-od.com header.i=@email-od.com header.a=rsa-sha256
 header.s=dkim header.b=jstlMvo5
Subject: [Intel-wired-lan] [RFC ixgbe 1/2] ixgbe: Implement support for
 ndo_xdp_xmit in skb mode
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

This commit adds support for `ndo_xdp_xmit` in skb mode in the ixgbe
ethernet driver, by allowing the call to continue to transmit the packets
using `dev_direct_xmit`.

Previously, the driver did not support the operation in skb mode. The
handler `ixgbe_xdp_xmit` had the following condition:

```
	ring =3D adapter->xdp_prog ? ixgbe_determine_xdp_ring(adapter) : NULL;
	if (unlikely(!ring))
		return -ENXIO;
```

That only works in native mode. In skb mode, `adapter->xdp_prog =3D=3D NU=
LL` so
the call returned an error, which prevented the ability to send packets
using `bpf_prog_test_run_opts` with the `BPF_F_TEST_XDP_LIVE_FRAMES` flag=
.

Signed-off-by: Nabil S. Alramli <dev@nalramli.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  8 ++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 43 +++++++++++++++++--
 2 files changed, 47 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ether=
net/intel/ixgbe/ixgbe.h
index e6a380d4929b..26c378853755 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
@@ -846,6 +846,14 @@ struct ixgbe_ring *ixgbe_determine_xdp_ring(struct i=
xgbe_adapter *adapter)
 	return adapter->xdp_ring[index];
 }
=20
+static inline
+struct ixgbe_ring *ixgbe_determine_tx_ring(struct ixgbe_adapter *adapter=
)
+{
+	int index =3D ixgbe_determine_xdp_q_idx(smp_processor_id());
+
+	return adapter->tx_ring[index];
+}
+
 static inline u8 ixgbe_max_rss_indices(struct ixgbe_adapter *adapter)
 {
 	switch (adapter->hw.mac.type) {
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/=
ethernet/intel/ixgbe/ixgbe_main.c
index 467f81239e12..fed70cbdb1b2 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -10748,7 +10748,8 @@ static int ixgbe_xdp_xmit(struct net_device *dev,=
 int n,
 	/* During program transitions its possible adapter->xdp_prog is assigne=
d
 	 * but ring has not been configured yet. In this case simply abort xmit=
.
 	 */
-	ring =3D adapter->xdp_prog ? ixgbe_determine_xdp_ring(adapter) : NULL;
+	ring =3D adapter->xdp_prog ? ixgbe_determine_xdp_ring(adapter) :
+		ixgbe_determine_tx_ring(adapter);
 	if (unlikely(!ring))
 		return -ENXIO;
=20
@@ -10762,9 +10763,43 @@ static int ixgbe_xdp_xmit(struct net_device *dev=
, int n,
 		struct xdp_frame *xdpf =3D frames[i];
 		int err;
=20
-		err =3D ixgbe_xmit_xdp_ring(ring, xdpf);
-		if (err !=3D IXGBE_XDP_TX)
-			break;
+		if (adapter->xdp_prog) {
+			err =3D ixgbe_xmit_xdp_ring(ring, xdpf);
+			if (err !=3D IXGBE_XDP_TX)
+				break;
+		} else {
+			struct xdp_buff xdp =3D {0};
+			unsigned int metasize =3D 0;
+			unsigned int size =3D 0;
+			unsigned int truesize =3D 0;
+			struct sk_buff *skb =3D NULL;
+
+			xdp_convert_frame_to_buff(xdpf, &xdp);
+			size =3D xdp.data_end - xdp.data;
+			metasize =3D xdp.data - xdp.data_meta;
+			truesize =3D SKB_DATA_ALIGN(xdp.data_end - xdp.data_hard_start) +
+				   SKB_DATA_ALIGN(sizeof(struct skb_shared_info));
+
+			skb =3D napi_alloc_skb(&ring->q_vector->napi, truesize);
+			if (likely(skb)) {
+				skb_reserve(skb, xdp.data - xdp.data_hard_start);
+				skb_put_data(skb, xdp.data, size);
+				build_skb_around(skb, skb->data, truesize);
+				if (metasize)
+					skb_metadata_set(skb, metasize);
+				skb->dev =3D dev;
+				skb->queue_mapping =3D ring->queue_index;
+
+				err =3D dev_direct_xmit(skb, ring->queue_index);
+				if (!dev_xmit_complete(err))
+					break;
+			} else {
+				break;
+			}
+
+			xdp_return_frame_rx_napi(xdpf);
+		}
+
 		nxmit++;
 	}
=20
--=20
2.43.0

