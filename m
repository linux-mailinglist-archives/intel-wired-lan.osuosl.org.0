Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF952A65E4
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Nov 2020 15:09:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4672D859D9;
	Wed,  4 Nov 2020 14:09:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i9kdnd7WXCA0; Wed,  4 Nov 2020 14:09:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E829E868DE;
	Wed,  4 Nov 2020 14:09:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C794C1BF2CE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Nov 2020 14:09:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C1574868EF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Nov 2020 14:09:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nI-aiovfVbXF for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Nov 2020 14:09:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 223DC868BB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Nov 2020 14:09:38 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id f38so16728543pgm.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 04 Nov 2020 06:09:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=XImW9tcA2E8T8s/M7K6i2CJBpkrNf1hayYcS5d4M3qk=;
 b=P+YRuYfGUaLwuvbY5fTK1UERFSAOh9XJV+WOwdi1s+/Wl7G/r/BS3FxGUriBWI0Xdi
 n2B5iwjgDbxj3USkEgbBLqTOSvoyadHFdMaq33FOEWLyt3cjjWjlk3o5ekUQfn+IyAwq
 Fd9Psyyzt/0D0kiMsKWQdbhOA7lzgegXFcHoDZlW5aik1rjkHoWNIcO+ges6VQZTO8s9
 plhXqngZdDroOSmbSEpb4g/f1lbdO0tBZ5eiW85b5gigNx9y4dJ/PNfMIi86xAhMSZvx
 lV6j5821St7C5xIrGhelGc39ewKXJB0qS96y9/P5C8ypfJ+sMN8YDSkX1jthEnpWfJ+A
 TeFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=XImW9tcA2E8T8s/M7K6i2CJBpkrNf1hayYcS5d4M3qk=;
 b=i77e1I9Gf9Q/Ajwe0PV+VBOCoy6ivNHp3LocvSuhM5XTiHbrQsBnRB+psvzU6DMYo6
 rtyEFdi7B6T27dG9+LkISc0D2IvEieju/2gz08PVDz0L9WnJSIoGyLEBQl+L+R8908J8
 8o38nYbJfLQEIP9pcFTC8GoyRwZ4/iSvKnjm6pZwCYnX+ZKw8WRowGeLchwzdXxIx7fu
 iXwKr0I7cUwnepBJhjZscgUxoSUAKGOYfP5UdSWvxZS5lnbmaVdaChv0P71l5kvWtYrd
 mt5KEtyu/oqeHfxYkXVZIQofoRm186+9NxpBbL//S5G4zaWf47idFHTaMwbM7M+or+SS
 BXJg==
X-Gm-Message-State: AOAM533Nnqs+kTTObdIbpbpJ3ZLvujR9621XDnbFUg22gKorWyxdtaDq
 0ltcTsMYXxb2omwECdaX6Ew=
X-Google-Smtp-Source: ABdhPJw9LtSqlcdh8eDV2aPds2ShVc6s7k+3fU01C3m4iK4eNuDHuWnz5uRVJhncj1xOtIxuGXuWpg==
X-Received: by 2002:a17:90a:7024:: with SMTP id
 f33mr4490145pjk.114.1604498977816; 
 Wed, 04 Nov 2020 06:09:37 -0800 (PST)
Received: from VM.ger.corp.intel.com ([192.55.55.43])
 by smtp.gmail.com with ESMTPSA id q123sm2724818pfq.56.2020.11.04.06.09.33
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 04 Nov 2020 06:09:37 -0800 (PST)
From: Magnus Karlsson <magnus.karlsson@gmail.com>
To: magnus.karlsson@intel.com, bjorn.topel@intel.com, ast@kernel.org,
 daniel@iogearbox.net, netdev@vger.kernel.org, jonathan.lemon@gmail.com
Date: Wed,  4 Nov 2020 15:08:57 +0100
Message-Id: <1604498942-24274-2-git-send-email-magnus.karlsson@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1604498942-24274-1-git-send-email-magnus.karlsson@gmail.com>
References: <1604498942-24274-1-git-send-email-magnus.karlsson@gmail.com>
Subject: [Intel-wired-lan] [PATCH bpf-next 1/6] i40e: introduce lazy Tx
 completions for AF_XDP zero-copy
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
Cc: maciejromanfijalkowski@gmail.com, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Magnus Karlsson <magnus.karlsson@intel.com>

Introduce lazy Tx completions when a queue is used for AF_XDP
zero-copy. In the current design, each time we get into the NAPI poll
loop we try to complete as many Tx packets as possible from the
NIC. This is performed by reading the head pointer register in the NIC
that tells us how many packets have been completed. Reading this
register is expensive as it is across PCIe, so let us try to limit the
number of times it is read by only completing Tx packets to user-space
when the number of available descriptors in the Tx HW ring is below
some threshold. This will decrease the number of reads issued to the
NIC and improves performance with 1.5% - 2% for the l2fwd xdpsock
microbenchmark.

The threshold is set to the minimum possible size that the HW ring can
have. This so that we do not run into a scenario where the threshold
is higher than the configured number of descriptors in the HW ring.

Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_xsk.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
index 6acede0..f8815b3 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
@@ -9,6 +9,8 @@
 #include "i40e_txrx_common.h"
 #include "i40e_xsk.h"
 
+#define I40E_TX_COMPLETION_THRESHOLD I40E_MIN_NUM_DESCRIPTORS
+
 int i40e_alloc_rx_bi_zc(struct i40e_ring *rx_ring)
 {
 	unsigned long sz = sizeof(*rx_ring->rx_bi_zc) * rx_ring->count;
@@ -460,12 +462,15 @@ static void i40e_clean_xdp_tx_buffer(struct i40e_ring *tx_ring,
  **/
 bool i40e_clean_xdp_tx_irq(struct i40e_vsi *vsi, struct i40e_ring *tx_ring)
 {
+	u32 i, completed_frames, xsk_frames = 0, head_idx;
 	struct xsk_buff_pool *bp = tx_ring->xsk_pool;
-	u32 i, completed_frames, xsk_frames = 0;
-	u32 head_idx = i40e_get_head(tx_ring);
 	struct i40e_tx_buffer *tx_bi;
 	unsigned int ntc;
 
+	if (I40E_DESC_UNUSED(tx_ring) >= I40E_TX_COMPLETION_THRESHOLD)
+		goto out_xmit;
+
+	head_idx = i40e_get_head(tx_ring);
 	if (head_idx < tx_ring->next_to_clean)
 		head_idx += tx_ring->count;
 	completed_frames = head_idx - tx_ring->next_to_clean;
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
