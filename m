Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BEC74B7926
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Feb 2022 22:03:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 96C2040566;
	Tue, 15 Feb 2022 21:03:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5X2rwZ-Zgogf; Tue, 15 Feb 2022 21:03:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1B3BF402B1;
	Tue, 15 Feb 2022 21:03:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D45B11BF381
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Feb 2022 21:02:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BF37D60AC3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Feb 2022 21:02:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=fastly.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E1X6HKDz7wku for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Feb 2022 21:02:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com
 [IPv6:2607:f8b0:4864:20::1036])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1E349600CA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Feb 2022 21:02:57 +0000 (UTC)
Received: by mail-pj1-x1036.google.com with SMTP id
 ki18-20020a17090ae91200b001b8be87e9abso2593168pjb.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Feb 2022 13:02:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastly.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=jqr8E056tHmEiS6CeKwAhv7RgL8o8RkmB9juwVjPb9I=;
 b=X9hI9pA2TBng6EiZpM9gDanTqWhzA8ZwySG+lreF8X8jFLTmTlDMawO5QACJfgkJUZ
 n83oKsTXyPYEJPeRSxNr3ijXZG++ANonyBOUpeylrryR+ObhjvlzJAKhIvOj6t65Svq7
 1BuSc2StGkQ/Lq4XTPU1NRPnun+kATVbkZ0nU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=jqr8E056tHmEiS6CeKwAhv7RgL8o8RkmB9juwVjPb9I=;
 b=TRgyrPjLqS3Sx6fBj1j6/vQmikBVkUhkif5DVfLRXMvhLlTn7fb84FOVr97wWmdWTj
 Ghh6SQzfsSr/6PV19Vkmsx4mkLvl5pQXByMQ+xOT7Qw9CmAARKjIuS58gI1mHqahllLC
 AEA7DbLBjN3j0RH6o1xNsgY6siNHMIxMI0HGW29Id9U6619Hc8f2xe5OrxyJxIMh8v/A
 gDf3aFXlOVLm7CIUdKqouK01fvM1BUw/xmdn6GChAkFoPeoOazqdsrMrGwvyiOjzuIn3
 ounwcmA2ZfdhPU7PZflLP0BqiYzNOAI8YRg5nhzVD9TYfhLgCzuAAFEEheN2PQAFZSMg
 mSAQ==
X-Gm-Message-State: AOAM5319LAen7ujXdBfxYNOt0282CIYsQImwb6rfxEqwtN7RArA/HgPp
 J4Wayz/uIrGaAw26SXgq+oKmjlCs5xETl+ZmH/sojtxoRTOi4+l+N1Lc71M5GCRNNzKj2AAB0zQ
 z86RlPWp9dwBGsGCxUEzMMChjDoyAPPCjjhJ6wJhlxnfkU0FFy9VQcckTbj5AGRHEBhlt2bVhNZ
 n/8InpQA==
X-Google-Smtp-Source: ABdhPJyiCYlhJeHzLYwse7CdG8JljOqj4NjH7qNmZYdLwZXykKoJ92DaEWQ5D+vo+lDLl7j3+g3wRw==
X-Received: by 2002:a17:903:244b:: with SMTP id
 l11mr533323pls.153.1644958976545; 
 Tue, 15 Feb 2022 13:02:56 -0800 (PST)
Received: from localhost.localdomain (c-73-223-190-181.hsd1.ca.comcast.net.
 [73.223.190.181])
 by smtp.gmail.com with ESMTPSA id e17sm23850665pfv.84.2022.02.15.13.02.55
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 15 Feb 2022 13:02:56 -0800 (PST)
From: Joe Damato <jdamato@fastly.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 15 Feb 2022 13:02:06 -0800
Message-Id: <1644958926-51692-1-git-send-email-jdamato@fastly.com>
X-Mailer: git-send-email 2.7.4
Subject: [Intel-wired-lan] i40e and TSO with MPLS ?
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
Cc: Joe Damato <jdamato@fastly.com>, mgallo@fastly.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Greetings:

Does i40e (XL710) support TSO with MPLS?

We are using firmware version: 7.10 0x80006469 1.2527.0

We've attempted to add support for TSO+MPLS to i40e, but were unable to
get it working. The patch is included below for reference, but it is almost
certainly incorrect - and I am not clear if the hardware itself would
support this even if the patch was correct.

Applying the patch below and using tcpdump shows that:

	- packet data, as seen by the pcap filter in the kernel, is large.
	  This suggests that the kernel is attempting to offload
	  segmentation to the device,

	but

	- those large packets are not ACK'd by the client

This suggests that either:

	- the device does not support TSO + MPLS, and/or
	- the patch below is incorrect

Does anyone working on i40e have any insight on this?

Thanks,
Joe

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index a21833c..b7455cc 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -12920,8 +12920,7 @@ static int i40e_config_netdev(struct i40e_vsi *vsi)
 	np->vsi = vsi;
 
 	hw_enc_features = NETIF_F_SG			|
-			  NETIF_F_IP_CSUM		|
-			  NETIF_F_IPV6_CSUM		|
+			  NETIF_F_HW_CSUM		|
 			  NETIF_F_HIGHDMA		|
 			  NETIF_F_SOFT_FEATURES		|
 			  NETIF_F_TSO			|
@@ -12952,6 +12951,23 @@ static int i40e_config_netdev(struct i40e_vsi *vsi)
 	/* record features VLANs can make use of */
 	netdev->vlan_features |= hw_enc_features | NETIF_F_TSO_MANGLEID;
 
+#define I40E_GSO_PARTIAL_FEATURES (NETIF_F_GSO_GRE | \
+				   NETIF_F_GSO_GRE_CSUM | \
+				   NETIF_F_GSO_IPXIP4 | \
+				   NETIF_F_GSO_IPXIP6 | \
+				   NETIF_F_GSO_UDP_TUNNEL | \
+				   NETIF_F_GSO_UDP_TUNNEL_CSUM)
+
+	netdev->gso_partial_features = I40E_GSO_PARTIAL_FEATURES;
+	netdev->features |= NETIF_F_GSO_PARTIAL |
+			    I40E_GSO_PARTIAL_FEATURES;
+
+	netdev->mpls_features    |= NETIF_F_SG;
+	netdev->mpls_features    |= NETIF_F_HW_CSUM;
+	netdev->mpls_features    |= NETIF_F_TSO;
+	netdev->mpls_features    |= NETIF_F_TSO6;
+	netdev->mpls_features |= I40E_GSO_PARTIAL_FEATURES;
+
 	/* enable macvlan offloads */
 	netdev->hw_features |= NETIF_F_HW_L2FW_DOFFLOAD;
 
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index 5ad2812..9e641a9 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -9,6 +9,7 @@
 #include "i40e_prototype.h"
 #include "i40e_txrx_common.h"
 #include "i40e_xsk.h"
+#include <net/mpls.h>
 
 #define I40E_TXD_CMD (I40E_TX_DESC_CMD_EOP | I40E_TX_DESC_CMD_RS)
 /**
@@ -2908,6 +2909,7 @@ static int i40e_tso(struct i40e_tx_buffer *first, u8 *hdr_len,
 {
 	struct sk_buff *skb = first->skb;
 	u64 cd_cmd, cd_tso_len, cd_mss;
+	__be16 protocol;
 	union {
 		struct iphdr *v4;
 		struct ipv6hdr *v6;
@@ -2932,15 +2934,24 @@ static int i40e_tso(struct i40e_tx_buffer *first, u8 *hdr_len,
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
+		first->tx_flags |= I40E_TX_FLAGS_TSO |
+				   I40E_TX_FLAGS_IPV4;
 	} else {
 		ip.v6->payload_len = 0;
+		first->tx_flags |= I40E_TX_FLAGS_TSO;
 	}
 
 	if (skb_shinfo(skb)->gso_type & (SKB_GSO_GRE |
@@ -2962,10 +2973,6 @@ static int i40e_tso(struct i40e_tx_buffer *first, u8 *hdr_len,
 					     (__force __wsum)htonl(paylen));
 		}
 
-		/* reset pointers to inner headers */
-		ip.hdr = skb_inner_network_header(skb);
-		l4.hdr = skb_inner_transport_header(skb);
-
 		/* initialize inner IP header fields */
 		if (ip.v4->version == 4) {
 			ip.v4->tot_len = 0;
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
