Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65B934CB446
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Mar 2022 02:30:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 841C4404C8;
	Thu,  3 Mar 2022 01:30:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mGOH_tl5gnQb; Thu,  3 Mar 2022 01:30:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F23F8400FE;
	Thu,  3 Mar 2022 01:30:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 868771C11A9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Mar 2022 01:30:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7079440156
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Mar 2022 01:30:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f5OsONsNyjnK for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Mar 2022 01:30:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com
 [IPv6:2607:f8b0:4864:20::102c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 65A11400FE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Mar 2022 01:30:16 +0000 (UTC)
Received: by mail-pj1-x102c.google.com with SMTP id
 em10-20020a17090b014a00b001bc3071f921so6348446pjb.5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 02 Mar 2022 17:30:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastly.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=sZ+ERq+nDsjduxq2NEoMyLXNq8dDrLeShLXOk/c6frU=;
 b=Y+vEESd/CUmY6bRx11NOO6KZ2feOgHw1VC+o7gd0J22ZedBSK8vqMvwHb5kPVhqpBb
 d8e8x+mkcMz/NsJpg4X8fKd7uPkmaM3TAvrceMDFdawhJAt0rbWPPT2XGEscAEPOeX+C
 CQGZ+07LHwLBM/2sMZa1MrotVJ4gL+j6gtLaI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=sZ+ERq+nDsjduxq2NEoMyLXNq8dDrLeShLXOk/c6frU=;
 b=3zquicAIqbZfaXQLC9L1gJENbL38OV3ENYCySWbvfk/lmAPp5a3Jh8TJrJANInd7yd
 BYnIUVLntn+ZqgQW1cvJ0pb4iXVlnKGGPIfRAmKVbJes5MKsuV/GQfeTZc7adclfn05p
 No7/SGjFwbJvgTUUT5+PFnhbslx6En+LEQ8e8hNaLQl87JAOKPcdPzBFQ4EoVZCtBqUu
 aC3w6NHvXJmKmT1yLtlJ3OM1lOz6z9EOD8KpTZf5DmtaY+kj6qu6AZjQzur/8AG6/fnw
 aoGMPo+6g6avssNAWBEO3TR/1wCOrSEscCBtmt91f9iOAt/fO4/nzE/llzQc+u/zp9lR
 qo7w==
X-Gm-Message-State: AOAM5313Ovedz4lwMB2TkWwlf4Mt3dHuTdiwX9lOj35SofiLYM9NfuWi
 4cpzM16WAuY9RewsbUtQd1ut2A==
X-Google-Smtp-Source: ABdhPJzK0esLuGD8fZ/QjjjQE+l2oq282IPeitXJGuQlhIjVlZXznF6qnxQ4mf8rDm8rfH1blr6PSA==
X-Received: by 2002:a17:90a:6a8a:b0:1bc:2953:75ed with SMTP id
 u10-20020a17090a6a8a00b001bc295375edmr2711257pjj.130.1646271015813; 
 Wed, 02 Mar 2022 17:30:15 -0800 (PST)
Received: from localhost.localdomain (c-73-223-190-181.hsd1.ca.comcast.net.
 [73.223.190.181]) by smtp.gmail.com with ESMTPSA id
 bo10-20020a17090b090a00b001bc8405bd55sm6278982pjb.30.2022.03.02.17.30.14
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 02 Mar 2022 17:30:15 -0800 (PST)
From: Joe Damato <jdamato@fastly.com>
To: jdamato@fastly.com, jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 arkadiusz.kubalewski@intel.com, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org
Date: Wed,  2 Mar 2022 17:29:07 -0800
Message-Id: <1646270947-92954-1-git-send-email-jdamato@fastly.com>
X-Mailer: git-send-email 2.7.4
Subject: [Intel-wired-lan] [next-queue v2] i40e: Add support for MPLS + TSO
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Mike Gallo <mgallo@fastly.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This change adds support for TSO of MPLS packets.

In my tests with tcpdump it seems to work. Note this test setup has
a 9000 byte MTU:

MPLS (label 100, exp 0, [S], ttl 64) IP srcip.50086 > dstip.1234:
  Flags [P.], seq 593345:644401, ack 0, win 420,
  options [nop,nop,TS val 45022534 ecr 1722291395], length 51056

IP dstip.1234 > srcip.50086: Flags [.], ack 593345, win 122,
  options [nop,nop,TS val 1722291395 ecr 45022534], length 0

IP dstip.1234 > srcip.50086: Flags [.], ack 602289, win 105,
  options [nop,nop,TS val 1722291395 ecr 45022534], length 0

IP dstip.1234 > srcip.50086: Flags [.], ack 620177, win 71,
  options [nop,nop,TS val 1722291395 ecr 45022534], length 0

MPLS (label 100, exp 0, [S], ttl 64) IP srcip.50086 > dstip.1234:
  Flags [P.], seq 644401:655953, ack 0, win 420,
  options [nop,nop,TS val 45022534 ecr 1722291395], length 11552

IP dstip.1234 > srcip.50086: Flags [.], ack 638065, win 37,
  options [nop,nop,TS val 1722291395 ecr 45022534], length 0

IP dstip.1234 > srcip.50086: Flags [.], ack 644401, win 25,
  options [nop,nop,TS val 1722291395 ecr 45022534], length 0

IP dstip.1234 > srcip.50086: Flags [.], ack 653345, win 8,
  options [nop,nop,TS val 1722291395 ecr 45022534], length 0

IP dstip.1234 > srcip.50086: Flags [.], ack 655953, win 3,
  options [nop,nop,TS val 1722291395 ecr 45022534], length 0

v1 -> v2:
	- Restore erroneously deleted code from i40e_tso.

Signed-off-by: Joe Damato <jdamato@fastly.com>
Co-developed-by: Mike Gallo <mgallo@fastly.com>
Signed-off-by: Mike Gallo <mgallo@fastly.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 20 ++++++++++--
 drivers/net/ethernet/intel/i40e/i40e_txrx.c | 47 ++++++++++++++++++-----------
 2 files changed, 48 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 1145a6e..f4730cc 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -13473,8 +13473,7 @@ static int i40e_config_netdev(struct i40e_vsi *vsi)
 	np->vsi = vsi;
 
 	hw_enc_features = NETIF_F_SG			|
-			  NETIF_F_IP_CSUM		|
-			  NETIF_F_IPV6_CSUM		|
+			  NETIF_F_HW_CSUM		|
 			  NETIF_F_HIGHDMA		|
 			  NETIF_F_SOFT_FEATURES		|
 			  NETIF_F_TSO			|
@@ -13505,6 +13504,23 @@ static int i40e_config_netdev(struct i40e_vsi *vsi)
 	/* record features VLANs can make use of */
 	netdev->vlan_features |= hw_enc_features | NETIF_F_TSO_MANGLEID;
 
+#define I40E_GSO_PARTIAL_FEATURES (NETIF_F_GSO_GRE |		\
+				   NETIF_F_GSO_GRE_CSUM |	\
+				   NETIF_F_GSO_IPXIP4 |		\
+				   NETIF_F_GSO_IPXIP6 |		\
+				   NETIF_F_GSO_UDP_TUNNEL |	\
+				   NETIF_F_GSO_UDP_TUNNEL_CSUM)
+
+	netdev->gso_partial_features = I40E_GSO_PARTIAL_FEATURES;
+	netdev->features |= NETIF_F_GSO_PARTIAL |
+			    I40E_GSO_PARTIAL_FEATURES;
+
+	netdev->mpls_features |= NETIF_F_SG;
+	netdev->mpls_features |= NETIF_F_HW_CSUM;
+	netdev->mpls_features |= NETIF_F_TSO;
+	netdev->mpls_features |= NETIF_F_TSO6;
+	netdev->mpls_features |= I40E_GSO_PARTIAL_FEATURES;
+
 	/* enable macvlan offloads */
 	netdev->hw_features |= NETIF_F_HW_L2FW_DOFFLOAD;
 
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index 0eae585..8b844ad 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -3,6 +3,7 @@
 
 #include <linux/prefetch.h>
 #include <linux/bpf_trace.h>
+#include <net/mpls.h>
 #include <net/xdp.h>
 #include "i40e.h"
 #include "i40e_trace.h"
@@ -3015,6 +3016,7 @@ static int i40e_tso(struct i40e_tx_buffer *first, u8 *hdr_len,
 {
 	struct sk_buff *skb = first->skb;
 	u64 cd_cmd, cd_tso_len, cd_mss;
+	__be16 protocol;
 	union {
 		struct iphdr *v4;
 		struct ipv6hdr *v6;
@@ -3026,7 +3028,7 @@ static int i40e_tso(struct i40e_tx_buffer *first, u8 *hdr_len,
 		unsigned char *hdr;
 	} l4;
 	u32 paylen, l4_offset;
-	u16 gso_segs, gso_size;
+	u16 gso_size;
 	int err;
 
 	if (skb->ip_summed != CHECKSUM_PARTIAL)
@@ -3039,15 +3041,23 @@ static int i40e_tso(struct i40e_tx_buffer *first, u8 *hdr_len,
 	if (err < 0)
 		return err;
 
-	ip.hdr = skb_network_header(skb);
-	l4.hdr = skb_transport_header(skb);
+	protocol = vlan_get_protocol(skb);
+
+	if (eth_p_mpls(protocol))
+		ip.hdr = skb_inner_network_header(skb);
+	else
+		ip.hdr = skb_network_header(skb);
+	l4.hdr = skb_checksum_start(skb);
 
 	/* initialize outer IP header fields */
 	if (ip.v4->version == 4) {
 		ip.v4->tot_len = 0;
 		ip.v4->check = 0;
+
+		first->tx_flags |= I40E_TX_FLAGS_TSO;
 	} else {
 		ip.v6->payload_len = 0;
+		first->tx_flags |= I40E_TX_FLAGS_TSO;
 	}
 
 	if (skb_shinfo(skb)->gso_type & (SKB_GSO_GRE |
@@ -3100,10 +3110,9 @@ static int i40e_tso(struct i40e_tx_buffer *first, u8 *hdr_len,
 
 	/* pull values out of skb_shinfo */
 	gso_size = skb_shinfo(skb)->gso_size;
-	gso_segs = skb_shinfo(skb)->gso_segs;
 
 	/* update GSO size and bytecount with header size */
-	first->gso_segs = gso_segs;
+	first->gso_segs = skb_shinfo(skb)->gso_segs;
 	first->bytecount += (first->gso_segs - 1) * *hdr_len;
 
 	/* find the field values */
@@ -3187,13 +3196,27 @@ static int i40e_tx_enable_csum(struct sk_buff *skb, u32 *tx_flags,
 	unsigned char *exthdr;
 	u32 offset, cmd = 0;
 	__be16 frag_off;
+	__be16 protocol;
 	u8 l4_proto = 0;
 
 	if (skb->ip_summed != CHECKSUM_PARTIAL)
 		return 0;
 
-	ip.hdr = skb_network_header(skb);
-	l4.hdr = skb_transport_header(skb);
+	protocol = vlan_get_protocol(skb);
+
+	if (eth_p_mpls(protocol))
+		ip.hdr = skb_inner_network_header(skb);
+	else
+		ip.hdr = skb_network_header(skb);
+	l4.hdr = skb_checksum_start(skb);
+
+	/* set the tx_flags to indicate the IP protocol type. this is
+	 * required so that checksum header computation below is accurate.
+	 */
+	if (ip.v4->version == 4)
+		*tx_flags |= I40E_TX_FLAGS_IPV4;
+	else
+		*tx_flags |= I40E_TX_FLAGS_IPV6;
 
 	/* compute outer L2 header size */
 	offset = ((ip.hdr - skb->data) / 2) << I40E_TX_DESC_LENGTH_MACLEN_SHIFT;
@@ -3749,7 +3772,6 @@ static netdev_tx_t i40e_xmit_frame_ring(struct sk_buff *skb,
 	struct i40e_tx_buffer *first;
 	u32 td_offset = 0;
 	u32 tx_flags = 0;
-	__be16 protocol;
 	u32 td_cmd = 0;
 	u8 hdr_len = 0;
 	int tso, count;
@@ -3791,15 +3813,6 @@ static netdev_tx_t i40e_xmit_frame_ring(struct sk_buff *skb,
 	if (i40e_tx_prepare_vlan_flags(skb, tx_ring, &tx_flags))
 		goto out_drop;
 
-	/* obtain protocol of skb */
-	protocol = vlan_get_protocol(skb);
-
-	/* setup IPv4/IPv6 offloads */
-	if (protocol == htons(ETH_P_IP))
-		tx_flags |= I40E_TX_FLAGS_IPV4;
-	else if (protocol == htons(ETH_P_IPV6))
-		tx_flags |= I40E_TX_FLAGS_IPV6;
-
 	tso = i40e_tso(first, &hdr_len, &cd_type_cmd_tso_mss);
 
 	if (tso < 0)
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
