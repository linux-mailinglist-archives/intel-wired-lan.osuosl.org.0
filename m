Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 46466700B9E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 May 2023 17:28:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D8E19409A7;
	Fri, 12 May 2023 15:28:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D8E19409A7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683905324;
	bh=ZsuyZ+sTXGAryL4Jyic0Om0y105bfYUh/eu1pJ8k9wI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QGBYKm6qHAeuwhbvTGhgf3RFt22f4rTasxUllv7ip5jPtvsqyHqIR64051K8SbDd4
	 cog3Xd55X0LaoWrKT5lkDhYGPAD1xDSFc1mTXRYgZe6qjUCgq7q9t8cmPX+GF+tpks
	 ++IvoOYcS5k7iXhlUrTW1fA6aHG4NdMeJnijmN+WQAH9Hn1qz6/4IFG2AcyHiAyERI
	 O2keaRpaYU8eMG1DXUH8ubsqTIaOsx0DUgDCaEmqNelag1HaFDNOSzAZEAzpL/olBm
	 NQ5Zy6AwnUsWKcgD4acK3ssh0yXTQO+j6PzZT8MsvW/Hmy4f+Ty+0BUvuRGAmo4GNd
	 oUIMKY7yV7S7w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 06TVAjDhO6gM; Fri, 12 May 2023 15:28:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8D67641E32;
	Fri, 12 May 2023 15:28:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8D67641E32
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B00E41BF2CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:28:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 887E881F73
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:28:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 887E881F73
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RjoEIl4aXBnr for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 May 2023 15:28:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D286E81F67
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D286E81F67
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:28:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="349653210"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="349653210"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 08:28:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="1030124402"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="1030124402"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga005.fm.intel.com with ESMTP; 12 May 2023 08:28:31 -0700
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 2A58635FB8;
 Fri, 12 May 2023 16:28:30 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: bpf@vger.kernel.org
Date: Fri, 12 May 2023 17:25:53 +0200
Message-Id: <20230512152607.992209-2-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20230512152607.992209-1-larysa.zaremba@intel.com>
References: <20230512152607.992209-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683905316; x=1715441316;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=13ozT9YozZElJj9JXKreIzUvD87aIPckZkK7jKB5PsY=;
 b=mJkEkuTr74Cj2zyGzpRt67PPKaMZbbcK0VTV4WDVrXBkkP9Ousp2Zudv
 dN/NvQsG4fB9ruupXxQw9dh/C0ITXaITB7Ov8UPQ8slPUyaYmUDHo5vLN
 Y4Od5rJMsnAdNwqWH3ClnSHrwn533qfcEyLuwotYmQiLB5b05J+McKL7u
 7v7pwMgmkT5n6UHnN4KiPMswRbJqTO5qpgfsARW2Tw4AVpwmWxr09tBWF
 yK6qjWmjIH3OjBYiM/3TBoiryrD1+Hee4wKMGNqxH/a1LRDp8Iq1gnTtM
 r8yqqfrbdm2jU+dixysfpMK256sbXKFzrMytd9MIPovtB1uxQLOMqQwhn
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mJkEkuTr
Subject: [Intel-wired-lan] [PATCH RESEND bpf-next 01/15] ice: make RX hash
 reading code more reusable
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
Cc: Anatoly Burakov <anatoly.burakov@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
 Song Liu <song@kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Stanislav Fomichev <sdf@google.com>, Maryam Tahhan <mtahhan@redhat.com>,
 xdp-hints@xdp-project.net, Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jesper Dangaard Brouer <brouer@redhat.com>,
 Yonghong Song <yhs@fb.com>, Larysa Zaremba <larysa.zaremba@intel.com>,
 KP Singh <kpsingh@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jiri Olsa <jolsa@kernel.org>, Martin KaFai Lau <martin.lau@linux.dev>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Previously, we only needed RX hash in skb path,
hence all related code was written with skb in mind.
But with the addition of XDP hints via kfuncs to the ice driver,
the same logic will be needed in .xmo_() callbacks.

Separate generic process of reading RX hash from a descriptor
into a separate function.

Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c | 38 +++++++++++++------
 1 file changed, 27 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
index c8322fb6f2b3..fc67bbf600af 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
@@ -63,28 +63,44 @@ static enum pkt_hash_types ice_ptype_to_htype(u16 ptype)
 }
 
 /**
- * ice_rx_hash - set the hash value in the skb
+ * ice_copy_rx_hash_from_desc - copy hash value from descriptor to address
+ * @rx_desc: specific descriptor
+ * @dst: address to copy hash value to
+ *
+ * Returns true, if valid hash has been copied into the destination address.
+ */
+static bool
+ice_copy_rx_hash_from_desc(union ice_32b_rx_flex_desc *rx_desc, u32 *dst)
+{
+	struct ice_32b_rx_flex_desc_nic *nic_mdid;
+
+	if (rx_desc->wb.rxdid != ICE_RXDID_FLEX_NIC)
+		return false;
+
+	nic_mdid = (struct ice_32b_rx_flex_desc_nic *)rx_desc;
+	*dst = le32_to_cpu(nic_mdid->rss_hash);
+	return true;
+}
+
+/**
+ * ice_rx_hash_to_skb - set the hash value in the skb
  * @rx_ring: descriptor ring
  * @rx_desc: specific descriptor
  * @skb: pointer to current skb
  * @rx_ptype: the ptype value from the descriptor
  */
 static void
-ice_rx_hash(struct ice_rx_ring *rx_ring, union ice_32b_rx_flex_desc *rx_desc,
-	    struct sk_buff *skb, u16 rx_ptype)
+ice_rx_hash_to_skb(struct ice_rx_ring *rx_ring,
+		   union ice_32b_rx_flex_desc *rx_desc,
+		   struct sk_buff *skb, u16 rx_ptype)
 {
-	struct ice_32b_rx_flex_desc_nic *nic_mdid;
 	u32 hash;
 
 	if (!(rx_ring->netdev->features & NETIF_F_RXHASH))
 		return;
 
-	if (rx_desc->wb.rxdid != ICE_RXDID_FLEX_NIC)
-		return;
-
-	nic_mdid = (struct ice_32b_rx_flex_desc_nic *)rx_desc;
-	hash = le32_to_cpu(nic_mdid->rss_hash);
-	skb_set_hash(skb, hash, ice_ptype_to_htype(rx_ptype));
+	if (ice_copy_rx_hash_from_desc(rx_desc, &hash))
+		skb_set_hash(skb, hash, ice_ptype_to_htype(rx_ptype));
 }
 
 /**
@@ -186,7 +202,7 @@ ice_process_skb_fields(struct ice_rx_ring *rx_ring,
 		       union ice_32b_rx_flex_desc *rx_desc,
 		       struct sk_buff *skb, u16 ptype)
 {
-	ice_rx_hash(rx_ring, rx_desc, skb, ptype);
+	ice_rx_hash_to_skb(rx_ring, rx_desc, skb, ptype);
 
 	/* modifies the skb - consumes the enet header */
 	skb->protocol = eth_type_trans(skb, rx_ring->netdev);
-- 
2.35.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
