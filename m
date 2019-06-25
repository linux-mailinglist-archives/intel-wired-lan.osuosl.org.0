Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C218655B63
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jun 2019 00:38:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 75715866F0;
	Tue, 25 Jun 2019 22:38:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vbKBD6idyKij; Tue, 25 Jun 2019 22:38:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 009DD865D3;
	Tue, 25 Jun 2019 22:38:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8FC021BF38E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2019 22:07:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8C7C985F53
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2019 22:07:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7O7vy0nRuebc for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Jun 2019 22:07:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1A8CE85F4C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2019 22:07:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 15:07:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,417,1557212400"; d="scan'208";a="172511934"
Received: from vpatel-desk.jf.intel.com (HELO localhost.localdomain)
 ([10.7.159.52])
 by orsmga002.jf.intel.com with ESMTP; 25 Jun 2019 15:07:26 -0700
From: Vedang Patel <vedang.patel@intel.com>
To: netdev@vger.kernel.org
Date: Tue, 25 Jun 2019 15:07:12 -0700
Message-Id: <1561500439-30276-2-git-send-email-vedang.patel@intel.com>
X-Mailer: git-send-email 2.7.3
In-Reply-To: <1561500439-30276-1-git-send-email-vedang.patel@intel.com>
References: <1561500439-30276-1-git-send-email-vedang.patel@intel.com>
X-Mailman-Approved-At: Tue, 25 Jun 2019 22:38:08 +0000
Subject: [Intel-wired-lan] [PATCH net-next v6 1/8] igb: clear out
 skb->tstamp after reading the txtime
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
Cc: jiri@resnulli.us, l@dorileo.org, sergei.shtylyov@cogentembedded.com,
 jakub.kicinski@netronome.com, jhs@mojatatu.com, m-karicheri2@ti.com,
 intel-wired-lan@lists.osuosl.org, xiyou.wangcong@gmail.com,
 eric.dumazet@gmail.com, davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

If a packet which is utilizing the launchtime feature (via SO_TXTIME socket
option) also requests the hardware transmit timestamp, the hardware
timestamp is not delivered to the userspace. This is because the value in
skb->tstamp is mistaken as the software timestamp.

Applications, like ptp4l, request a hardware timestamp by setting the
SOF_TIMESTAMPING_TX_HARDWARE socket option. Whenever a new timestamp is
detected by the driver (this work is done in igb_ptp_tx_work() which calls
igb_ptp_tx_hwtstamps() in igb_ptp.c[1]), it will queue the timestamp in the
ERR_QUEUE for the userspace to read. When the userspace is ready, it will
issue a recvmsg() call to collect this timestamp.  The problem is in this
recvmsg() call. If the skb->tstamp is not cleared out, it will be
interpreted as a software timestamp and the hardware tx timestamp will not
be successfully sent to the userspace. Look at skb_is_swtx_tstamp() and the
callee function __sock_recv_timestamp() in net/socket.c for more details.

Signed-off-by: Vedang Patel <vedang.patel@intel.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index fc925adbd9fa..f66dae72fe37 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -5688,6 +5688,7 @@ static void igb_tx_ctxtdesc(struct igb_ring *tx_ring,
 	 */
 	if (tx_ring->launchtime_enable) {
 		ts = ns_to_timespec64(first->skb->tstamp);
+		first->skb->tstamp = 0;
 		context_desc->seqnum_seed = cpu_to_le32(ts.tv_nsec / 32);
 	} else {
 		context_desc->seqnum_seed = 0;
-- 
2.7.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
