Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD0D288085
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Oct 2020 04:54:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DA0FF86DD7;
	Fri,  9 Oct 2020 02:54:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4wIoswzKnlme; Fri,  9 Oct 2020 02:54:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BF89886DD1;
	Fri,  9 Oct 2020 02:54:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3F5F81BF375
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Oct 2020 02:54:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3BFCC87621
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Oct 2020 02:54:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xrZdRixAHqqY for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Oct 2020 02:54:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 58D228762A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Oct 2020 02:54:00 +0000 (UTC)
IronPort-SDR: 7UBLEgYRg1GdHCY1CPFxdw6y4Icr5HHamU7ktz1wGML9Yzv6XFyz51vRJbqShqQcUEopZ+CYX4
 lyeRkhLNPr3w==
X-IronPort-AV: E=McAfee;i="6000,8403,9768"; a="229621319"
X-IronPort-AV: E=Sophos;i="5.77,353,1596524400"; d="scan'208";a="229621319"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2020 19:53:59 -0700
IronPort-SDR: vEjGmG+ZsnJnK2MQB4eIhLaCtPQMZWnAPiDegRtsibsoFRuB4zGjJM8a9hnPYM6yGmCsaa8Z7L
 bJAAQx7zApHQ==
X-IronPort-AV: E=Sophos;i="5.77,353,1596524400"; d="scan'208";a="528740720"
Received: from simonejo-mobl1.amr.corp.intel.com ([10.212.226.42])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2020 19:53:59 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  8 Oct 2020 19:53:48 -0700
Message-Id: <20201009025349.4037-9-andre.guedes@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201009025349.4037-1-andre.guedes@intel.com>
References: <20201009025349.4037-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 8/9] igc: Add support for XDP_REDIRECT
 action
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch adds support for the XDP_REDIRECT action which enables XDP
programs to redirect packets arriving at I225 NIC.

The patch also tweaks the driver's page counting scheme (as described
in '8ce29c679a6e i40e: tweak page counting for XDP_REDIRECT' and
implemented by other Intel drivers) in order to properly support
XDP_REDIRECT action.

This patch has been tested with the sample apps "xdp_redirect_cpu" and
"xdp_redirect_map" located in samples/bpf/.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 11 ++++++++---
 drivers/net/ethernet/intel/igc/igc_xdp.c  |  6 ++++++
 drivers/net/ethernet/intel/igc/igc_xdp.h  |  1 +
 3 files changed, 15 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 7005e6720261..7cdfce6c0d63 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -1708,8 +1708,8 @@ static bool igc_can_reuse_rx_page(struct igc_rx_buffer *rx_buffer)
 	 * the pagecnt_bias and page count so that we fully restock the
 	 * number of references the driver holds.
 	 */
-	if (unlikely(!pagecnt_bias)) {
-		page_ref_add(page, USHRT_MAX);
+	if (unlikely(pagecnt_bias == 1)) {
+		page_ref_add(page, USHRT_MAX - 1);
 		rx_buffer->pagecnt_bias = USHRT_MAX;
 	}
 
@@ -1850,7 +1850,8 @@ static bool igc_alloc_mapped_page(struct igc_ring *rx_ring,
 	bi->dma = dma;
 	bi->page = page;
 	bi->page_offset = igc_rx_offset(rx_ring);
-	bi->pagecnt_bias = 1;
+	page_ref_add(page, USHRT_MAX - 1);
+	bi->pagecnt_bias = USHRT_MAX;
 
 	return true;
 }
@@ -1950,6 +1951,9 @@ static void igc_finalize_xdp(struct igc_adapter *adapter, int status)
 		igc_flush_tx_descriptors(ring);
 		__netif_tx_unlock(nq);
 	}
+
+	if (status & IGC_XDP_REDIRECT)
+		xdp_do_flush();
 }
 
 static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
@@ -2018,6 +2022,7 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
 				rx_buffer->pagecnt_bias++;
 				break;
 			case IGC_XDP_TX:
+			case IGC_XDP_REDIRECT:
 				igc_rx_buffer_flip(rx_buffer, truesize);
 				xdp_status |= xdp_res;
 				break;
diff --git a/drivers/net/ethernet/intel/igc/igc_xdp.c b/drivers/net/ethernet/intel/igc/igc_xdp.c
index 9f4c58436170..e9a81975324f 100644
--- a/drivers/net/ethernet/intel/igc/igc_xdp.c
+++ b/drivers/net/ethernet/intel/igc/igc_xdp.c
@@ -147,6 +147,12 @@ struct sk_buff *igc_xdp_run_prog(struct igc_adapter *adapter,
 		else
 			res = IGC_XDP_TX;
 		break;
+	case XDP_REDIRECT:
+		if (xdp_do_redirect(adapter->netdev, xdp, prog) < 0)
+			res = IGC_XDP_CONSUMED;
+		else
+			res = IGC_XDP_REDIRECT;
+		break;
 	default:
 		bpf_warn_invalid_xdp_action(act);
 		fallthrough;
diff --git a/drivers/net/ethernet/intel/igc/igc_xdp.h b/drivers/net/ethernet/intel/igc/igc_xdp.h
index fdb31f40dbe5..1c38a80c3aa0 100644
--- a/drivers/net/ethernet/intel/igc/igc_xdp.h
+++ b/drivers/net/ethernet/intel/igc/igc_xdp.h
@@ -7,6 +7,7 @@
 #define IGC_XDP_PASS		0
 #define IGC_XDP_CONSUMED	BIT(0)
 #define IGC_XDP_TX		BIT(1)
+#define IGC_XDP_REDIRECT	BIT(2)
 
 int igc_xdp_set_prog(struct igc_adapter *adapter, struct bpf_prog *prog,
 		     struct netlink_ext_ack *extack);
-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
