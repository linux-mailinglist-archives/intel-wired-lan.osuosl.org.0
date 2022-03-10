Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 692DF4D3E94
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Mar 2022 02:10:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 04C84833B7;
	Thu, 10 Mar 2022 01:10:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 08nzGTRkso_1; Thu, 10 Mar 2022 01:10:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E865582998;
	Thu, 10 Mar 2022 01:10:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3E7C91BF476
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Mar 2022 01:10:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3AAB4416CD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Mar 2022 01:10:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=fastly.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wUX2bGSHauoi for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Mar 2022 01:10:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com
 [IPv6:2607:f8b0:4864:20::1030])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7B77D416CC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Mar 2022 01:09:59 +0000 (UTC)
Received: by mail-pj1-x1030.google.com with SMTP id
 c16-20020a17090aa61000b001befad2bfaaso3846357pjq.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 09 Mar 2022 17:09:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastly.com; s=google;
 h=from:to:subject:date:message-id;
 bh=ziQ3aEbBdZv7az0VoBcsazgzkVSbNjuV3OK0RZLGw5k=;
 b=USwsnGZzr/tvh1iOwUDwMJRrNn+3yA4xdv3QDdeuKKI9MVrkeuvaxZ4qNdkPa072Ma
 NLAuoeAnfWBwlwrr8U1NqgMeg5hmtAtyVQtTEhV2+0YvFHbUfumbKkXpDrjhKRfagkOR
 v5tqEdFWgP0HnMJmFJ1YINv9zBM/tDm4ls85w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=ziQ3aEbBdZv7az0VoBcsazgzkVSbNjuV3OK0RZLGw5k=;
 b=FsaRdVIJEVrpOjoLG73KNqbxSZuKLK9T70Uw6KFECv50+tz2A7BZ2PRoV2n/D62xei
 qChVzDUKWk7EEumzkWd64F2TfWFajIZYJqtxqKOu4B9D5jNtP69zarCD4na6HnFpTgrd
 ixCnd4eWf6KYW60srWaYYkbQQxG0xZdlHbdN8DRl90Brjgq7roTwtIdpmW3O5bH9Zrl7
 z7VIuVTAJX5WDbdep/QrUBN9cyx6T/Aq9Rjed2l/8bjxVdExQRUxypjgnScMFLgYdAK1
 k0mk5V74FSvbfvlBNaJuDMwzf/pjJK5YdLfOgWhQ/j92hVi22JbOc9ub28ayN+EcKd/7
 FanQ==
X-Gm-Message-State: AOAM530hvvzJ3yvYV/UQI95Yyj0yUIFSIbKT/MzSDHbYXIsMpHf4plvf
 mV0OLu24l0mKPei7N1Jo4zsIQg==
X-Google-Smtp-Source: ABdhPJwZb4e0MFj5m8FvMyQgknquJSDqeucaeEKtg4MLtE9x7B4J4zw0ONZ8CUGl8H77RGi1KZbHrw==
X-Received: by 2002:a17:902:b406:b0:14f:bb35:95ab with SMTP id
 x6-20020a170902b40600b0014fbb3595abmr2307946plr.140.1646874599206; 
 Wed, 09 Mar 2022 17:09:59 -0800 (PST)
Received: from localhost.localdomain (c-73-223-190-181.hsd1.ca.comcast.net.
 [73.223.190.181]) by smtp.gmail.com with ESMTPSA id
 c3-20020a056a00248300b004f6f729e485sm4790951pfv.127.2022.03.09.17.09.57
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 09 Mar 2022 17:09:58 -0800 (PST)
From: Joe Damato <jdamato@fastly.com>
To: jdamato@fastly.com, jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 arkadiusz.kubalewski@intel.com, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org
Date: Wed,  9 Mar 2022 17:08:52 -0800
Message-Id: <1646874532-90649-1-git-send-email-jdamato@fastly.com>
X-Mailer: git-send-email 2.7.4
Subject: [Intel-wired-lan] [next-queue] ice: Add mpls+tso support
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
index 2dd3e1b..c410117 100644
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
+	else
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
