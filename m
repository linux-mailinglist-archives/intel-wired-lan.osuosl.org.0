Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 961834DD3D9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Mar 2022 05:13:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5BF6240527;
	Fri, 18 Mar 2022 04:13:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E5HZzdGeUKne; Fri, 18 Mar 2022 04:13:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 05894404E2;
	Fri, 18 Mar 2022 04:13:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 862F21BF304
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Mar 2022 04:13:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 745C584336
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Mar 2022 04:13:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=fastly.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xrekOmQLeQBu for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Mar 2022 04:13:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com
 [IPv6:2607:f8b0:4864:20::102d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 439DD84332
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Mar 2022 04:13:22 +0000 (UTC)
Received: by mail-pj1-x102d.google.com with SMTP id
 l4-20020a17090a49c400b001c6840df4a3so3558266pjm.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Mar 2022 21:13:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastly.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=UOkk+4YQFuc9guw6D2kLyk1ZAuuOniE/ucNw8Cg3cqg=;
 b=k58agnJ0eswDhYOeWY+idtPkND8SM4vqEN6QFgAdbrhURjjCJ0v097iYKwco5nWPXl
 naUp/Vr7837K04X39f/KzYfcs3+++iXT6CuH4H5CtoEyxDdRiPbviJUmmUis/pf+e4si
 b6G/J3m6W4JLHEciGCwNeDglKBkAHLXQoEdDc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=UOkk+4YQFuc9guw6D2kLyk1ZAuuOniE/ucNw8Cg3cqg=;
 b=GJqc42oDyaY7ugMa2fsEQXjUCsBXiuHFjOpQOJSlPJfTcp5KbSti+SrF8gJC14oCmt
 ioIip5JJ+qW6GcfmDPAv+sY5Zq/YyN9SgeoooDJj/kfNuejp0gyZA3tMAAidzZkdA55H
 94k5xlANoDjK0nCK/rS1Hztdz89sEbIP4Ntg2Yv6vwschXKacYyHyrEXUf1EtqXGJQDS
 au8UG3tjfv+QTGZrNwVj3C7q6TQCMfYczvC7UV/t37maAEGKsvPo8nz9NKoetNkfK4yh
 NLFvBaij9loqvlzfD/nCnWisuXl3c5F9ECR/CGUvZ0M5OXrdBDroqJc/wD4wFO65+uO8
 +RTA==
X-Gm-Message-State: AOAM533c3CWvFFcysySH0lDBPYoY/L4Cj8nrZ4QqjeTI2PAfShpFKMOH
 UIQImtVKKuig12ESoq6qm3NR+L7H/Phi1aVXrnoFcaLZsUfrk+Gdv0TNWMOF7vqDGDPbz01nviJ
 vpeg8Kl8Yk4ovMp+cNrjMbvTOn8c5svUo8IF74lVhVZ3naE+K7au4NMtIbxqar6GBoEQLs4+2nt
 Dse4ndBw==
X-Google-Smtp-Source: ABdhPJy/PdQUGE6OecNb7isutmalX6dvGLptE32BYTdL/EOBQEGtKSfvILb6ssFi/FgAubvGa8bhjA==
X-Received: by 2002:a17:902:db11:b0:151:fa7a:7d5e with SMTP id
 m17-20020a170902db1100b00151fa7a7d5emr8204010plx.125.1647576801117; 
 Thu, 17 Mar 2022 21:13:21 -0700 (PDT)
Received: from localhost.localdomain (c-73-223-190-181.hsd1.ca.comcast.net.
 [73.223.190.181]) by smtp.gmail.com with ESMTPSA id
 k3-20020a056a00168300b004f7e60da26csm7852406pfc.182.2022.03.17.21.13.19
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 17 Mar 2022 21:13:20 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 anthony.l.nguyen@intel.com, jesse.brandeburg@intel.com,
 arkadiusz.kubalewski@intel.com
Date: Thu, 17 Mar 2022 21:12:12 -0700
Message-Id: <1647576732-46414-1-git-send-email-jdamato@fastly.com>
X-Mailer: git-send-email 2.7.4
Subject: [Intel-wired-lan] [next-queue v2] ice: Add mpls+tso support
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
Cc: Joe Damato <jdamato@fastly.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Attempt to add mpls+tso support.

I don't have ice hardware available to test myself, but I just implemented
this feature in i40e and thought it might be useful to implement for ice
while this is fresh in my brain.

Hoping some one at intel will be able to test this on my behalf.

v1 -> v2:
	- In ice_tx_csum, only set ICE_TX_FLAGS_IPV6 if ip v6 is detected
	  explicitly. All cases other than ipv4 or ipv6 leave first->tx_flags
	  unset, which allows for ice_tx_csum to return -1 to indicate that
	  csum offloading is not supported.

Signed-off-by: Joe Damato <jdamato@fastly.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c |  4 +++-
 drivers/net/ethernet/intel/ice/ice_txrx.c | 29 +++++++++++++++++++++--------
 2 files changed, 24 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 285b0cd..3032eab 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3454,7 +3454,9 @@ static void ice_set_netdev_features(struct net_device *netdev)
 			      vlano_features | tso_features;
 
 	/* add support for HW_CSUM on packets with MPLS header */
-	netdev->mpls_features =  NETIF_F_HW_CSUM;
+	netdev->mpls_features =  NETIF_F_HW_CSUM |
+				 NETIF_F_TSO     |
+				 NETIF_F_TSO6;
 
 	/* enable features */
 	netdev->features |= netdev->hw_features;
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 2dd3e1b..ca41453 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -9,6 +9,7 @@
 #include <linux/bpf_trace.h>
 #include <net/busy_poll.h>
 #include <net/dsfield.h>
+#include <net/mpls.h>
 #include <net/xdp.h>
 #include "ice_txrx_lib.h"
 #include "ice_lib.h"
@@ -1910,18 +1911,24 @@ int ice_tx_csum(struct ice_tx_buf *first, struct ice_tx_offload_params *off)
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
 
 	/* compute outer L2 header size */
 	l2_len = ip.hdr - skb->data;
 	offset = (l2_len / 2) << ICE_TX_DESC_LEN_MACLEN_S;
 
-	protocol = vlan_get_protocol(skb);
-
-	if (protocol == htons(ETH_P_IP))
+	/* set the tx_flags to indicate the IP protocol type. this is
+	 * required so that checksum header computation below is accurate.
+	 */
+	if (ip.v4->version == 4)
 		first->tx_flags |= ICE_TX_FLAGS_IPV4;
-	else if (protocol == htons(ETH_P_IPV6))
+	else if (ip.v6->version == 6)
 		first->tx_flags |= ICE_TX_FLAGS_IPV6;
 
 	if (skb->encapsulation) {
@@ -2122,6 +2129,7 @@ int ice_tso(struct ice_tx_buf *first, struct ice_tx_offload_params *off)
 	u32 paylen;
 	u8 l4_start;
 	int err;
+	__be16 protocol;
 
 	if (skb->ip_summed != CHECKSUM_PARTIAL)
 		return 0;
@@ -2134,8 +2142,13 @@ int ice_tso(struct ice_tx_buf *first, struct ice_tx_offload_params *off)
 		return err;
 
 	/* cppcheck-suppress unreadVariable */
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
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
