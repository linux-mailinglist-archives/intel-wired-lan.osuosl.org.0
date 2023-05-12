Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 39369700BA6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 May 2023 17:29:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB9AE42C5B;
	Fri, 12 May 2023 15:28:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CB9AE42C5B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683905338;
	bh=rtqU29wKR9HKJboVXd/HxbrS8JCM7ngD5NdH0AkId0w=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QCxrSzKyIkEkdHE8/bzwuNsJ1vGYVNgqxiX/WlpxkguyJj2kb2JnPa3XpKtwZcz58
	 GkmKT/iqj1HrPGMjw/xshrUM/lqk6F9Md6NmpKHGi5YrmaMiCybpcTCBpbID5ImmR/
	 sfhrErbTPTM6yPZ5fXxbj56GxKx8UihVni4hOqujMD7l3kCUn5jxcJuYsmhW6vGKix
	 rBlZVhdAKyU7N+p+szfq2V0R4bgdpF1c8MT4Zkno7h8sbjLkiosbU5y6lOyO/n5F3C
	 5m0/CSnuXWHivjO/qZoEu2DgeGPpnBhA/qn7YEFQpYhNp4jsfrHfCDs3x40eFuDkaH
	 uXPdib8ES4G1A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n-S2JCz1RB0K; Fri, 12 May 2023 15:28:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 612D540986;
	Fri, 12 May 2023 15:28:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 612D540986
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0D86A1BF2CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:28:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DB0CE81FDE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:28:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DB0CE81FDE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dIKDEuPXIAr1 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 May 2023 15:28:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2809181F86
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2809181F86
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:28:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="349653287"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="349653287"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 08:28:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="1030124475"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="1030124475"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga005.fm.intel.com with ESMTP; 12 May 2023 08:28:40 -0700
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 63A7335FB8;
 Fri, 12 May 2023 16:28:38 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: bpf@vger.kernel.org
Date: Fri, 12 May 2023 17:25:56 +0200
Message-Id: <20230512152607.992209-5-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20230512152607.992209-1-larysa.zaremba@intel.com>
References: <20230512152607.992209-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683905325; x=1715441325;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7/D/YzQ1gY2rX9jbeWch+Ri9r1rO/vWOBUp7EzhyEH4=;
 b=B7vAafCYXcJobg6zpbpy1XxMO0WQScANgumNyVcQidR+qnHVYtDOEtow
 lKCf43AXcYr9DFf4wXPvdmVpH5WDNxjZQf47g80AJI0rz2qKGY6phtVjX
 jlRDd8tN+5Rv2Np5X8JUj5xLk8zH+d86IunX/kNKS/hTfA+EGayCRshmZ
 hSKadNZQpyz0iFiA68FNNePTDbk9rXxlqMry7FTw/fEg+ZhiUR2QrZzzG
 +Sx2m1gb3T1+tF7iiw7iviFqFO29khW2Fp6nxWE3fI5dVhlFFdGrlFSRN
 e0Pi9TcrtRJI2KnDVLTZkCsQ8g9w8tHH+iMRKWY3IE0knZd2egh0y4naB
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=B7vAafCY
Subject: [Intel-wired-lan] [PATCH RESEND bpf-next 04/15] ice: Make ptype
 internal to descriptor info processing
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

Currently, rx_ptype variable is used only as an argument
to ice_process_skb_fields() and is computed
just before the function call.

Therefore, there is no reason to pass this value as an argument.
Instead, remove this argument and compute the value directly inside
ice_process_skb_fields() function.

Also, separate its calculation into a short function, so the code
can later be reused in .xmo_() callbacks.

Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c     |  6 +-----
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c | 15 +++++++++++++--
 drivers/net/ethernet/intel/ice/ice_txrx_lib.h |  2 +-
 drivers/net/ethernet/intel/ice/ice_xsk.c      |  2 +-
 4 files changed, 16 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 4fcf2d07eb85..c9bb77da0861 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -1181,7 +1181,6 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 		unsigned int size;
 		u16 stat_err_bits;
 		u16 vlan_tag = 0;
-		u16 rx_ptype;
 
 		/* get the Rx desc from Rx ring based on 'next_to_clean' */
 		rx_desc = ICE_RX_DESC(rx_ring, ntc);
@@ -1286,10 +1285,7 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
 		total_rx_bytes += skb->len;
 
 		/* populate checksum, VLAN, and protocol */
-		rx_ptype = le16_to_cpu(rx_desc->wb.ptype_flex_flags0) &
-			ICE_RX_FLEX_DESC_PTYPE_M;
-
-		ice_process_skb_fields(rx_ring, rx_desc, skb, rx_ptype);
+		ice_process_skb_fields(rx_ring, rx_desc, skb);
 
 		ice_trace(clean_rx_irq_indicate, rx_ring, rx_desc, skb);
 		/* send completed skb up the stack */
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
index 6a4fd3f3fc0a..2515f5f7a2b6 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
@@ -232,12 +232,21 @@ ice_ptp_rx_hwts_to_skb(struct ice_rx_ring *rx_ring,
 	hwtstamps->hwtstamp = ns_to_ktime(ts_ns);
 }
 
+/**
+ * ice_get_ptype - Read HW packet type from the descriptor
+ * @rx_desc: RX descriptor
+ */
+static u16 ice_get_ptype(union ice_32b_rx_flex_desc *rx_desc)
+{
+	return le16_to_cpu(rx_desc->wb.ptype_flex_flags0) &
+	       ICE_RX_FLEX_DESC_PTYPE_M;
+}
+
 /**
  * ice_process_skb_fields - Populate skb header fields from Rx descriptor
  * @rx_ring: Rx descriptor ring packet is being transacted on
  * @rx_desc: pointer to the EOP Rx descriptor
  * @skb: pointer to current skb being populated
- * @ptype: the packet type decoded by hardware
  *
  * This function checks the ring, descriptor, and packet information in
  * order to populate the hash, checksum, VLAN, protocol, and
@@ -246,8 +255,10 @@ ice_ptp_rx_hwts_to_skb(struct ice_rx_ring *rx_ring,
 void
 ice_process_skb_fields(struct ice_rx_ring *rx_ring,
 		       union ice_32b_rx_flex_desc *rx_desc,
-		       struct sk_buff *skb, u16 ptype)
+		       struct sk_buff *skb)
 {
+	u16 ptype = ice_get_ptype(rx_desc);
+
 	ice_rx_hash_to_skb(rx_ring, rx_desc, skb, ptype);
 
 	/* modifies the skb - consumes the enet header */
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.h b/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
index 115969ecdf7b..e1d49e1235b3 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
@@ -148,7 +148,7 @@ void ice_release_rx_desc(struct ice_rx_ring *rx_ring, u16 val);
 void
 ice_process_skb_fields(struct ice_rx_ring *rx_ring,
 		       union ice_32b_rx_flex_desc *rx_desc,
-		       struct sk_buff *skb, u16 ptype);
+		       struct sk_buff *skb);
 void
 ice_receive_skb(struct ice_rx_ring *rx_ring, struct sk_buff *skb, u16 vlan_tag);
 #endif /* !_ICE_TXRX_LIB_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index d1e489da7363..3b80aed5d47a 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -857,7 +857,7 @@ int ice_clean_rx_irq_zc(struct ice_rx_ring *rx_ring, int budget)
 		rx_ptype = le16_to_cpu(rx_desc->wb.ptype_flex_flags0) &
 				       ICE_RX_FLEX_DESC_PTYPE_M;
 
-		ice_process_skb_fields(rx_ring, rx_desc, skb, rx_ptype);
+		ice_process_skb_fields(rx_ring, rx_desc, skb);
 		ice_receive_skb(rx_ring, skb, vlan_tag);
 	}
 
-- 
2.35.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
