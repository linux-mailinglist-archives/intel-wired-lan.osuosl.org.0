Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CF5531074B
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Feb 2021 10:09:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3318A20390;
	Fri,  5 Feb 2021 09:09:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m09KIO+pi0I2; Fri,  5 Feb 2021 09:09:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4BE2E203A9;
	Fri,  5 Feb 2021 09:09:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EA9E71BF383
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Feb 2021 09:09:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D896520392
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Feb 2021 09:09:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wSdfyQ8mFl+M for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Feb 2021 09:09:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
 [209.85.128.48])
 by silver.osuosl.org (Postfix) with ESMTPS id AA61320390
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Feb 2021 09:09:16 +0000 (UTC)
Received: by mail-wm1-f48.google.com with SMTP id t142so3197583wmt.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 05 Feb 2021 01:09:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Y49irSyVfNAggSfPuZlywntYMQM69bQ0nbpSgVeCqwg=;
 b=E6m6zB9zS79rjFw3qcouP+OcVhvqtsx9x9yFyu1rn9voNv3OYbL2LO/UJQ7JCNpi78
 jtxxWEY0ln1OWMSlrchT5KCqEbNPAn+Lryaowiykdijz5cHLWGVaumk0+Wj4e+UQA+Dx
 7sl59RTHd6nDNAK68yXez/E6jEFL62cOE3ULbAGi1DUHCZAyqKMZ3MczZ1evP9yDZOWN
 kHc9tBjEh+jvZsEhdCh5TVUTwfqpX3cEFYCBEUTKzdU1Xs4uI9CJkYnwZOSX9yAuDxXj
 F/Lax+/rc3OXYUwl4rOxuLZEw02UwcF0rxHRdPnoLSP1FqIX3ZVfsVpi8wx5lqUdUYlJ
 6tpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Y49irSyVfNAggSfPuZlywntYMQM69bQ0nbpSgVeCqwg=;
 b=YKJuicKTiYuy6sOdRSaOxTU4kORwtGDFiEZ/EVE5hJ5a/YS3f/WLV1gPEPQkJQG0WG
 f492DizIufp0hDRhC18w2Of1DfXNGulQJHafOotULa41GtpLBFkCbXNYop966ZJB++MI
 OWO1B8oC6lpuqjBqEaqNZ4WfAYQEUhbpkdVHnKyB+ShbrKO6m7upe5nLXuK0mMuy5R2e
 hW6+gm0syDszWHOrqCdmyLATGFcw1kUDVjuP4wStk1CTsxqJROPmNY06sMeSaAuTcQlr
 WtZDPNpaHylIY5uhTuGQfYw3I1d0jwHUvxFs2ksPFIIDOxwqY/tZUCZaLixwK3FNh+cw
 rVSg==
X-Gm-Message-State: AOAM532NATA6f4YM8+hWV7+XImgmdvxLBPnQedZ2pbABRnzjq8SNZsws
 Hy3GacLtvsK7znjKAl7Kdzc=
X-Google-Smtp-Source: ABdhPJwu4v/5tQ36DQC1YUXwLOZ5KqJ8afUsQfNHnQiskbGkBQbW0cvZb/iUI2DCkl/QGEKXcm2tdw==
X-Received: by 2002:a1c:6a09:: with SMTP id f9mr2677492wmc.104.1612516154986; 
 Fri, 05 Feb 2021 01:09:14 -0800 (PST)
Received: from localhost.localdomain (h-47-246.A165.priv.bahnhof.se.
 [46.59.47.246])
 by smtp.gmail.com with ESMTPSA id g16sm7950303wmi.30.2021.02.05.01.09.13
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 05 Feb 2021 01:09:14 -0800 (PST)
From: Magnus Karlsson <magnus.karlsson@gmail.com>
To: magnus.karlsson@intel.com, bjorn.topel@intel.com,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 maciej.fijalkowski@intel.com, maciejromanfijalkowski@gmail.com
Date: Fri,  5 Feb 2021 10:09:04 +0100
Message-Id: <20210205090904.20794-1-magnus.karlsson@gmail.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH intel-net] ice: fix napi work done
 reporting in xsk path
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
Cc: netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Magnus Karlsson <magnus.karlsson@intel.com>

Fix the wrong napi work done reporting in the xsk path of the ice
driver. The code in the main Rx processing loop was written to assume
that the buffer allocation code returns true if all allocations where
successful and false if not. In contrast with all other Intel NIC xsk
drivers, the ice_alloc_rx_bufs_zc() has the inverted logic messing up
the work done reporting in the napi loop.

This can be fixed either by inverting the return value from
ice_alloc_rx_bufs_zc() in the function that uses this in an incorrect
way, or by changing the return value of ice_alloc_rx_bufs_zc(). We
chose the latter as it makes all the xsk allocation functions for
Intel NICs behave in the same way. My guess is that it was this
unexpected discrepancy that gave rise to this bug in the first place.

Fixes: 5bb0c4b5eb61 ("ice, xsk: Move Rx allocation out of while-loop")
Reported-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_base.c |  6 ++++--
 drivers/net/ethernet/intel/ice/ice_xsk.c  | 10 +++++-----
 2 files changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 3124a3bf519a..952e41a1e001 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -418,6 +418,8 @@ int ice_setup_rx_ctx(struct ice_ring *ring)
 	writel(0, ring->tail);
 
 	if (ring->xsk_pool) {
+		bool ok;
+
 		if (!xsk_buff_can_alloc(ring->xsk_pool, num_bufs)) {
 			dev_warn(dev, "XSK buffer pool does not provide enough addresses to fill %d buffers on Rx ring %d\n",
 				 num_bufs, ring->q_index);
@@ -426,8 +428,8 @@ int ice_setup_rx_ctx(struct ice_ring *ring)
 			return 0;
 		}
 
-		err = ice_alloc_rx_bufs_zc(ring, num_bufs);
-		if (err)
+		ok = ice_alloc_rx_bufs_zc(ring, num_bufs);
+		if (!ok)
 			dev_info(dev, "Failed to allocate some buffers on XSK buffer pool enabled Rx ring %d (pf_q %d)\n",
 				 ring->q_index, pf_q);
 		return 0;
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 1782146db644..69ee1a8e87ab 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -408,18 +408,18 @@ int ice_xsk_pool_setup(struct ice_vsi *vsi, struct xsk_buff_pool *pool, u16 qid)
  * This function allocates a number of Rx buffers from the fill ring
  * or the internal recycle mechanism and places them on the Rx ring.
  *
- * Returns false if all allocations were successful, true if any fail.
+ * Returns true if all allocations were successful, false if any fail.
  */
 bool ice_alloc_rx_bufs_zc(struct ice_ring *rx_ring, u16 count)
 {
 	union ice_32b_rx_flex_desc *rx_desc;
 	u16 ntu = rx_ring->next_to_use;
 	struct ice_rx_buf *rx_buf;
-	bool ret = false;
+	bool ok = true;
 	dma_addr_t dma;
 
 	if (!count)
-		return false;
+		return true;
 
 	rx_desc = ICE_RX_DESC(rx_ring, ntu);
 	rx_buf = &rx_ring->rx_buf[ntu];
@@ -427,7 +427,7 @@ bool ice_alloc_rx_bufs_zc(struct ice_ring *rx_ring, u16 count)
 	do {
 		rx_buf->xdp = xsk_buff_alloc(rx_ring->xsk_pool);
 		if (!rx_buf->xdp) {
-			ret = true;
+			ok = false;
 			break;
 		}
 
@@ -452,7 +452,7 @@ bool ice_alloc_rx_bufs_zc(struct ice_ring *rx_ring, u16 count)
 		ice_release_rx_desc(rx_ring, ntu);
 	}
 
-	return ret;
+	return ok;
 }
 
 /**

base-commit: b3d2c7b876d450e1d2624fd67658acc96465a9e6
-- 
2.29.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
