Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CECC0205364
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jun 2020 15:28:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7AF6086DCC;
	Tue, 23 Jun 2020 13:28:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ncsIwsrctwBf; Tue, 23 Jun 2020 13:28:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 14C2587065;
	Tue, 23 Jun 2020 13:28:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9311F1BF2C9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2020 13:28:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8930A203FD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2020 13:28:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HPzUNUVlIWrY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jun 2020 13:28:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by silver.osuosl.org (Postfix) with ESMTPS id BD905203A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2020 13:28:20 +0000 (UTC)
IronPort-SDR: xh77TDA4iujqiZnOBQl4cHV+MXTMp0G8XbQUzqZrV/bKYqADvS1Xa0YZ6MEzx9WArfhFFLuzyb
 UzGVfGJaCgEA==
X-IronPort-AV: E=McAfee;i="6000,8403,9660"; a="141557623"
X-IronPort-AV: E=Sophos;i="5.75,271,1589266800"; d="scan'208";a="141557623"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2020 06:28:20 -0700
IronPort-SDR: TNUsf9dQ234h/I6ICUwRrZVGDr9sRpVtLBrJM4gzrnIAa0XsHW9dw/lbXfznUbag0yvnw/NZKW
 KwcikF/JjfNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,271,1589266800"; d="scan'208";a="263336522"
Received: from silpixa00399839.ir.intel.com (HELO localhost.localdomain)
 ([10.237.222.8])
 by fmsmga007.fm.intel.com with ESMTP; 23 Jun 2020 06:28:19 -0700
From: Ciara Loftus <ciara.loftus@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 23 Jun 2020 13:06:55 +0000
Message-Id: <20200623130657.5668-1-ciara.loftus@intel.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2 1/3] i40e: add xdp ring
 statistics to vsi stats
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
Cc: netdev@vger.kernel.org, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Prior to this, only rx and tx ring statistics were accounted for.

Signed-off-by: Ciara Loftus <ciara.loftus@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 5d807c8004f8..13aef0e51c24 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -811,6 +811,25 @@ static void i40e_update_vsi_stats(struct i40e_vsi *vsi)
 		rx_p += packets;
 		rx_buf += p->rx_stats.alloc_buff_failed;
 		rx_page += p->rx_stats.alloc_page_failed;
+
+		if (i40e_enabled_xdp_vsi(vsi)) {
+			/* locate xdp ring */
+			p = READ_ONCE(vsi->xdp_rings[q]);
+			if (!p)
+				continue;
+
+			do {
+				start = u64_stats_fetch_begin_irq(&p->syncp);
+				packets = p->stats.packets;
+				bytes = p->stats.bytes;
+			} while (u64_stats_fetch_retry_irq(&p->syncp, start));
+			tx_b += bytes;
+			tx_p += packets;
+			tx_restart += p->tx_stats.restart_queue;
+			tx_busy += p->tx_stats.tx_busy;
+			tx_linearize += p->tx_stats.tx_linearize;
+			tx_force_wb += p->tx_stats.tx_force_wb;
+		}
 	}
 	rcu_read_unlock();
 	vsi->tx_restart = tx_restart;
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
