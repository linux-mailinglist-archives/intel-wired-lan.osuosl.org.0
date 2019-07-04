Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5949E62732
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Jul 2019 19:32:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0EBBC2076E;
	Mon,  8 Jul 2019 17:32:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XdSTI8C6ULP5; Mon,  8 Jul 2019 17:32:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 57F9B20774;
	Mon,  8 Jul 2019 17:32:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 34C191BF969
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jul 2019 12:43:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2E663863D9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jul 2019 12:43:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YaHAEEguNt+4 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Jul 2019 12:43:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3AEA786DB1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jul 2019 12:43:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jul 2019 05:43:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,451,1557212400"; d="scan'208";a="315855004"
Received: from mkarlsso-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.32.218])
 by orsmga004.jf.intel.com with ESMTP; 04 Jul 2019 05:43:06 -0700
From: Magnus Karlsson <magnus.karlsson@intel.com>
To: magnus.karlsson@intel.com, bjorn.topel@intel.com, ast@kernel.org,
 daniel@iogearbox.net, netdev@vger.kernel.org, brouer@redhat.com
Date: Thu,  4 Jul 2019 14:42:11 +0200
Message-Id: <1562244134-19069-4-git-send-email-magnus.karlsson@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1562244134-19069-1-git-send-email-magnus.karlsson@intel.com>
References: <1562244134-19069-1-git-send-email-magnus.karlsson@intel.com>
X-Mailman-Approved-At: Mon, 08 Jul 2019 17:32:25 +0000
Subject: [Intel-wired-lan] [PATCH bpf-next v3 3/6] i40e: add support for
 AF_XDP need_wakup feature
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
Cc: axboe@kernel.dk, maximmi@mellanox.com, kevin.laatz@intel.com,
 jakub.kicinski@netronome.com, maciejromanfijalkowski@gmail.com,
 bruce.richardson@intel.com, ciara.loftus@intel.com,
 ilias.apalodimas@linaro.org, xiaolong.ye@intel.com,
 intel-wired-lan@lists.osuosl.org, qi.z.zhang@intel.com,
 maciej.fijalkowski@intel.com, bpf@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch adds support for the need_wakeup feature of AF_XDP. If the
application has told the kernel that it might sleep using the new bind
flag XDP_USE_NEED_WAKEUP, the driver will then set this flag if it has
no more buffers on the NIC Rx ring and yield to the application. For
Tx, it will set the flag if it has no outstanding Tx completion
interrupts and return to the application.

Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_xsk.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
index d0ff5d8..18de7b6 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
@@ -626,6 +626,15 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
 
 	i40e_finalize_xdp_rx(rx_ring, xdp_xmit);
 	i40e_update_rx_stats(rx_ring, total_rx_bytes, total_rx_packets);
+
+	if (xsk_umem_uses_might_sleep(rx_ring->xsk_umem)) {
+		if (failure || rx_ring->next_to_clean == rx_ring->next_to_use)
+			xsk_set_rx_need_wakeup(rx_ring->xsk_umem);
+		else
+			xsk_clear_rx_need_wakeup(rx_ring->xsk_umem);
+
+		return (int)total_rx_packets;
+	}
 	return failure ? budget : (int)total_rx_packets;
 }
 
@@ -761,6 +770,13 @@ bool i40e_clean_xdp_tx_irq(struct i40e_vsi *vsi,
 out_xmit:
 	xmit_done = i40e_xmit_zc(tx_ring, budget);
 
+	if (xsk_umem_uses_might_sleep(tx_ring->xsk_umem)) {
+		if (tx_ring->next_to_clean == tx_ring->next_to_use)
+			xsk_set_tx_need_wakeup(tx_ring->xsk_umem);
+		else
+			xsk_clear_tx_need_wakeup(tx_ring->xsk_umem);
+	}
+
 	return work_done && xmit_done;
 }
 
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
