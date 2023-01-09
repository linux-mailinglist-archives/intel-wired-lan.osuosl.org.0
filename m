Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 37D90662B21
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Jan 2023 17:25:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A45CE8176A;
	Mon,  9 Jan 2023 16:25:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A45CE8176A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673281533;
	bh=tU2gRL1qzvpWNKdX54/UqN5CPONDfTmQt7f5bmUsuxc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=0v+zgQ21o8UGwPv7hWI8DJmUNxBzQAwFxjrVODH4CwFW6G4gOEW2SJn8Cofj9cVFX
	 ww8vDCDkArC3XltkqUbjJeFGC5tVbvm8BDQssL1goorFAimoZM3eIO/m0LGlTw7FcC
	 VpdRwQ3sD4vMJW0KB9N/WOJnwIV5DQNk2UnO3OTn1qh4RTMX82prd9DJkr7AYtnDe5
	 PZ07D7hVrHGuwYB81gIGQ0osqLJlsMwhaiGL0qFznCBJmstsPKt/WO3aDPmOHu55Ph
	 F+wVNrilZ6Pg4IypIzoL5CCyj037l6oU66JTbn4NK9zIwFTzqFEfwJ38W+cOxeNbQa
	 h0+pKJa5wWm0g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wRvfRtQdZ5Ni; Mon,  9 Jan 2023 16:25:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A571481499;
	Mon,  9 Jan 2023 16:25:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A571481499
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 65B0C1BF290
 for <intel-wired-lan@osuosl.org>; Mon,  9 Jan 2023 16:24:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4CEA860F5F
 for <intel-wired-lan@osuosl.org>; Mon,  9 Jan 2023 16:24:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4CEA860F5F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BPGff6xUVRIj for <intel-wired-lan@osuosl.org>;
 Mon,  9 Jan 2023 16:24:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0FFDA606AA
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0FFDA606AA
 for <intel-wired-lan@osuosl.org>; Mon,  9 Jan 2023 16:24:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="324918484"
X-IronPort-AV: E=Sophos;i="5.96,311,1665471600"; d="scan'208";a="324918484"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2023 08:24:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="687258117"
X-IronPort-AV: E=Sophos;i="5.96,311,1665471600"; d="scan'208";a="687258117"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga008.jf.intel.com with ESMTP; 09 Jan 2023 08:24:56 -0800
Received: from baltimore.igk.intel.com (baltimore.igk.intel.com [10.102.21.1])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 309GOtqu023933; Mon, 9 Jan 2023 16:24:55 GMT
From: Pawel Chmielewski <pawel.chmielewski@intel.com>
To: netdev@vger.kernel.org
Date: Mon,  9 Jan 2023 17:18:33 +0100
Message-Id: <20230109161833.223510-1-pawel.chmielewski@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 09 Jan 2023 16:25:28 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673281498; x=1704817498;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gWEh9JInpyICmN/mACKJ1SdTrhSsBTj5xlolcqaJyrs=;
 b=AfuS6z+TTkuZWAXd00EOEwH2c+OGxbu8sEdszuu26pn8XLem0M4igYUv
 H0czDeDYbZCDGSjiVYQdSxgkTuPDlAAv3Scp7BNkizD7WBGTk5NMzsJJ0
 DnC11P7XzrYWpUQy7tYGLLGaOHGl3+zdpbULxTMx47WJP0U1o7x/gDzD0
 klfphPDfyM+FCJpZZbORj0WvvHQKtQORpJ81QyFqbTlJHR7wOIFA4Fh18
 vptIJI9a+BycrlUkjdDDbs8sM9eRkuSdzrxO0JRfU+yXTvVqY/ejCjbcu
 P3y24KiAkCnxOU+zjjAwoSOg5nXyqeNUwg+0bnUaP3G4zdN8g8GRf7w2W
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AfuS6z+T
Subject: [Intel-wired-lan] [PATCH 1/1] ice: WiP support for BIG TCP packets
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
Cc: Pawel Chmielewski <pawel.chmielewski@intel.com>, intel-wired-lan@osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch is a proof of concept for testing BIG TCP feature in ice driver.
Please see letter below.

Signed-off-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
---
Hi All
I'm writing on the list, as you may be able to provide me some feedback.
I want to enable BIG TCP feature in intel ice drive, but I think I'm 
missing something.
In the code itself, I've set 128k as a maximum tso size for the netif,
and added stripping the HBH option from the header.
For testing purposes, gso_max_size & gro_max_size were set to 128k and 
mtu to 9000.
I've assumed that the ice tso offload will do the rest of the job.
However- while running netperf TCP_RR and TCP_STREAM tests,
I saw that only up to ~20% of the transmitted test packets have 
the specified size. 
Other packets to be transmitted, appear from the stack as splitted.

I've been running the following testcases:
netperf -t TCP_RR -H 2001:db8:0:f101::1  -- -r80000,80000 -O MIN_LATENCY,P90_LATENCY,P99_LATENCY,THROUGHPUT
netperf -l-1 -t TCP_STREAM -H 2001:db8:0:f101::1  -- -m 128K -O MIN_LATENCY,P90_LATENCY,P99_LATENCY,THROUGHPUT
I suspected a shrinking tcp window size, but sniffing with tcpdump showed rather big scaling factor (usually 128x).
Apart from using netperf, I also tried a simple IPv6 user space application
(with SO_SNDBUF option set to 192k and TCP_WINDOW_CLAMP to 96k) - similar results.

I'd be very grateful for any feedback/suggestions

Pawel
---
 drivers/net/ethernet/intel/ice/ice_main.c | 4 ++++
 drivers/net/ethernet/intel/ice/ice_txrx.c | 9 +++++++++
 2 files changed, 13 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 2b23b4714a26..4e657820e55d 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -48,6 +48,8 @@ static DEFINE_IDA(ice_aux_ida);
 DEFINE_STATIC_KEY_FALSE(ice_xdp_locking_key);
 EXPORT_SYMBOL(ice_xdp_locking_key);
 
+#define ICE_MAX_TSO_SIZE 131072
+
 /**
  * ice_hw_to_dev - Get device pointer from the hardware structure
  * @hw: pointer to the device HW structure
@@ -3422,6 +3424,8 @@ static void ice_set_netdev_features(struct net_device *netdev)
 	 * be changed at runtime
 	 */
 	netdev->hw_features |= NETIF_F_RXFCS;
+
+	netif_set_tso_max_size(netdev, ICE_MAX_TSO_SIZE);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 086f0b3ab68d..7e0ac483cad9 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -23,6 +23,9 @@
 #define FDIR_DESC_RXDID 0x40
 #define ICE_FDIR_CLEAN_DELAY 10
 
+#define HBH_HDR_SIZE sizeof(struct hop_jumbo_hdr)
+#define HBH_OFFSET ETH_HLEN + sizeof(struct ipv6hdr)
+
 /**
  * ice_prgm_fdir_fltr - Program a Flow Director filter
  * @vsi: VSI to send dummy packet
@@ -2300,6 +2303,12 @@ ice_xmit_frame_ring(struct sk_buff *skb, struct ice_tx_ring *tx_ring)
 
 	ice_trace(xmit_frame_ring, tx_ring, skb);
 
+	if (ipv6_has_hopopt_jumbo(skb)) {
+		memmove(skb->data + HBH_HDR_SIZE, skb->data, HBH_OFFSET);
+		__skb_pull(skb, HBH_HDR_SIZE);
+		skb_reset_mac_header(skb);
+	}
+
 	count = ice_xmit_desc_count(skb);
 	if (ice_chk_linearize(skb, count)) {
 		if (__skb_linearize(skb))
-- 
2.37.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
