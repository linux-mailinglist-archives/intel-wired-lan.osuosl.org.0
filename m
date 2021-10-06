Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 87DA5424596
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Oct 2021 20:05:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2061E83E30;
	Wed,  6 Oct 2021 18:05:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WzWi3wfLWI8D; Wed,  6 Oct 2021 18:05:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3078783CF4;
	Wed,  6 Oct 2021 18:05:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6413F1BF2A1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Oct 2021 18:05:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5FB1460EFF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Oct 2021 18:05:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w_SuZvz_MP5H for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Oct 2021 18:05:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5DC6260EFC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Oct 2021 18:05:03 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 60CA661037;
 Wed,  6 Oct 2021 18:05:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1633543503;
 bh=mphWiOSjWVve4063iT9iLB+Ae/xfjYf+gdyYkUHB2/Y=;
 h=Date:From:To:Cc:Subject:From;
 b=e9HZWeueYaTquf0esaeqBWa+qbUPx9RRyl1y3/SlMhT0F4LiGEEpruzhqsIcVOExJ
 Il5t2TN7bFbTG3YnDOEQA9+MCerGxYNZ0uZvYHehxgKy5syHlbYsfqhdaL67Nn0F9k
 8SLgZoM2/uewdLe3CLgkzhuN8aL16jj2x9Y/SjeugZQxhxTDGER6SSRg3q8nM41Bfn
 7BnIz/5DAGCpJo/QvWxZ5cmQ/mfAGvlBSNZOAfxHBvqPZOJz0lbxl6VkWlqC99gz6e
 UillWofcVuceyoH5OSO4cqbX4S+8sG6w3uX1L207aLtgyvwVF4fLR6uQaBUL+v6KHq
 082UUeqLM0iXA==
Date: Wed, 6 Oct 2021 13:09:08 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Message-ID: <20211006180908.GA913430@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [Intel-wired-lan] [PATCH][next] ice: use devm_kcalloc() instead of
 devm_kzalloc()
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
Cc: linux-hardening@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Use 2-factor multiplication argument form devm_kcalloc() instead
of devm_kzalloc().

Link: https://github.com/KSPP/linux/issues/162
Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
---
 drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c | 4 ++--
 drivers/net/ethernet/intel/ice/ice_txrx.c         | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
index 16de603b280c..38960bcc384c 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
@@ -706,7 +706,7 @@ ice_create_init_fdir_rule(struct ice_pf *pf, enum ice_fltr_ptype flow)
 	if (!seg)
 		return -ENOMEM;
 
-	tun_seg = devm_kzalloc(dev, sizeof(*seg) * ICE_FD_HW_SEG_MAX,
+	tun_seg = devm_kcalloc(dev, sizeof(*seg), ICE_FD_HW_SEG_MAX,
 			       GFP_KERNEL);
 	if (!tun_seg) {
 		devm_kfree(dev, seg);
@@ -1068,7 +1068,7 @@ ice_cfg_fdir_xtrct_seq(struct ice_pf *pf, struct ethtool_rx_flow_spec *fsp,
 	if (!seg)
 		return -ENOMEM;
 
-	tun_seg = devm_kzalloc(dev, sizeof(*seg) * ICE_FD_HW_SEG_MAX,
+	tun_seg = devm_kcalloc(dev, sizeof(*seg), ICE_FD_HW_SEG_MAX,
 			       GFP_KERNEL);
 	if (!tun_seg) {
 		devm_kfree(dev, seg);
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 13b2bdc25b0d..fd10f8548feb 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -340,7 +340,7 @@ int ice_setup_tx_ring(struct ice_ring *tx_ring)
 	/* warn if we are about to overwrite the pointer */
 	WARN_ON(tx_ring->tx_buf);
 	tx_ring->tx_buf =
-		devm_kzalloc(dev, sizeof(*tx_ring->tx_buf) * tx_ring->count,
+		devm_kcalloc(dev, sizeof(*tx_ring->tx_buf), tx_ring->count,
 			     GFP_KERNEL);
 	if (!tx_ring->tx_buf)
 		return -ENOMEM;
@@ -464,7 +464,7 @@ int ice_setup_rx_ring(struct ice_ring *rx_ring)
 	/* warn if we are about to overwrite the pointer */
 	WARN_ON(rx_ring->rx_buf);
 	rx_ring->rx_buf =
-		devm_kzalloc(dev, sizeof(*rx_ring->rx_buf) * rx_ring->count,
+		devm_kcalloc(dev, sizeof(*rx_ring->rx_buf), rx_ring->count,
 			     GFP_KERNEL);
 	if (!rx_ring->rx_buf)
 		return -ENOMEM;
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
