Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A922A9643A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Aug 2019 17:23:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 21B3186AF2;
	Tue, 20 Aug 2019 15:23:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zreRZMpbDhGS; Tue, 20 Aug 2019 15:23:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 87BF686AE3;
	Tue, 20 Aug 2019 15:23:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 50C7E1BF2F8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2019 15:16:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 451FC861B3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2019 15:16:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UHwRsJFwz0hp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Aug 2019 15:16:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7A9D8861A2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2019 15:16:48 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190820151646euoutp012db22ae10a8635e3332df2c53158bf98~8qnjUv40K1049910499euoutp015
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2019 15:16:46 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190820151646euoutp012db22ae10a8635e3332df2c53158bf98~8qnjUv40K1049910499euoutp015
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1566314206;
 bh=u6FQ7hQL4erTGneWwI1MFa2IOEl01CEEf2XpifqS9nc=;
 h=From:To:Cc:Subject:Date:References:From;
 b=ka6rveMen+i6dv2KNqvaMPeW1SdX/QssqbFpi3ovKlBgdRSvPc26PO8trOnrstlzq
 8o2ZOgAQvLVzI3kQ5jj3tU5eJh7+7g6pGnMew3SwLSY+9UP5tosw+GW1LwL6Q2KYms
 AUP0JhPHlITowwn/TvbuGh4Zl+ixy3+JuIuDMENE=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190820151645eucas1p1c7b02f5c537ff321d72b4dfc2bec7a96~8qnigAiVb3120631206eucas1p18;
 Tue, 20 Aug 2019 15:16:45 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 78.6C.04374.DDE0C5D5; Tue, 20
 Aug 2019 16:16:45 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190820151644eucas1p179d6d1da42bb6be0aad8f58ac46624ce~8qnhyLR5k3121031210eucas1p1t;
 Tue, 20 Aug 2019 15:16:44 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190820151644eusmtrp1343cb6d503ed2154d0b4334385104263~8qnhjrOdg0975009750eusmtrp1R;
 Tue, 20 Aug 2019 15:16:44 +0000 (GMT)
X-AuditID: cbfec7f5-4f7ff70000001116-d1-5d5c0eddc77c
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 5B.54.04117.CDE0C5D5; Tue, 20
 Aug 2019 16:16:44 +0100 (BST)
Received: from localhost.localdomain (unknown [106.109.129.180]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190820151643eusmtip187a1a770159210ae5299335530e59ebb~8qngrwYhZ0740207402eusmtip10;
 Tue, 20 Aug 2019 15:16:43 +0000 (GMT)
From: Ilya Maximets <i.maximets@samsung.com>
To: netdev@vger.kernel.org
Date: Tue, 20 Aug 2019 18:16:11 +0300
Message-Id: <20190820151611.10727-1-i.maximets@samsung.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSa0hTcRjG/e/sXDacHafmm0rBtKDINPLDsdKKos6XoAyKtFGrDia5KTvN
 NKmslpWVhV1GNUKZoc1E0ZEXKtaU2VIUTfFSy1YRqV0YunBMLLcz6dvv/T/P8z7vhz+FyWvw
 GCpHc4rTalS5CkIqfm739iU6ww4pk792SJgZ73uSmSttRMx0ZxfBmKr+YIyxTy9mPgx6CWbw
 ipdk/o75cMb+XU8wb5rHEfOu3UgwtbY3JGOvXMoMD4RuDWMtT0dFbNtDJ8maXkyI2LKRAYxt
 Ml8jWMclHWu47sLY36+GCLbcYkbsdNPyPdJM6ebjXG5OAadNSj8iPVHn+Ibn2+MKXW2TZAkq
 gTIkoYBOgXGXCStDUkpO1yLwDU+JhGEGQdv7n6QwTCMwG0fFi5HP9qqgqwbB4/LhYN6DwNrR
 h/ldBL0W3tZ1Ij9H0jHgbm0JrMLoW2Ko/+EOCBH0Lpiv9uJ+FtMrYcphXzBRlIzeBCMGXGhb
 AXWN1kAB0GYSZrsfIEHYASXX/ooEjoDJLgspcBx037kRPPU8jOsnkBC+isBgmw8GtoBlqjdQ
 htGroaE9yY9AbwPP5dUChsHIz3C/GVvAiucGTHiWwdVSubAjAXyvazCBY2D013TwABYae02B
 I+W0Eq7UdpK30fKH/6sqETKjaE7Hq7M5foOGO72OV6l5nSZ73bE8dRNa+D7d812eVvRq7qgN
 0RRShMqODGcp5biqgC9S2xBQmCJSVmjMVMplx1VFZzht3mGtLpfjbSiWEiuiZcUhn7LkdLbq
 FHeS4/I57aIqoiQxJSg1LTwn9xc+2+i455xR42+dT/Tp1tJUTc2SDN25FrmnSdK/l3UmFO3s
 90QUXLx0M9548GxSb8rvquiW4pTmqI0FB9KkhpAeqmKseN/L7e2rTN2+1ooMT/UFh/VjYmz2
 YHz80H33Mt511x315dnuM5scj47mo/qezZLIqWSit2G/QsyfUK1fg2l51T+S9NqkOgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrHLMWRmVeSWpSXmKPExsVy+t/xu7p3+GJiDd7MkLD48vM2u8Wftg2M
 Fp+PHGezWLzwG7PFnPMtLBZ3rvxks7jS/pPd4v+t36wWx160sFmc2Hyf0eLyrjlsFisOnWC3
 OLZAzOL6JR4HPo8tK28yeeycdZfdY/Gel0weXTcuMXtsWtXJ5nGyudRjevdDZo/3+66yefRt
 WcXo8XmTXABXlJ5NUX5pSapCRn5xia1StKGFkZ6hpYWekYmlnqGxeayVkamSvp1NSmpOZllq
 kb5dgl7G6pPPWAuOyVQ83PmKvYGxQaKLkZNDQsBE4tGxhUxdjFwcQgJLGSXuTrjCDpGQkvjx
 6wIrhC0s8edaFxtE0WdGibPHWhlBEmwCOhKnVh8Bs0WAGj7u2M4OUsQsMJNF4tOtm2AJYQF3
 iX9LfoJNYhFQlXh98hhQEQcHr4C1xI3pUAvkJVZvOMA8gZFnASPDKkaR1NLi3PTcYiO94sTc
 4tK8dL3k/NxNjMCw33bs55YdjF3vgg8xCnAwKvHw7rgZHSvEmlhWXJl7iFGCg1lJhLdiTlSs
 EG9KYmVValF+fFFpTmrxIUZToN0TmaVEk/OBMZlXEm9oamhuYWlobmxubGahJM7bIXAwRkgg
 PbEkNTs1tSC1CKaPiYNTqoFxstnTN6/PnTvF5Lky5oHjV13Pp40ekn52lQYdVq2+L6ZuiCo9
 GbNCLnFX6zWuB1MW5K5fs/7C132dkydqy9mv2rpDyyh/o8BK1QJWsX6r4AcSguqBxaJ8wj17
 392pMAjMli4tWn2+QPLS8eO/6r1WGFya+yzcwE799wzrwAnrliuuu/5llu1uJZbijERDLeai
 4kQApQXTW5ECAAA=
X-CMS-MailID: 20190820151644eucas1p179d6d1da42bb6be0aad8f58ac46624ce
X-Msg-Generator: CA
X-RootMTR: 20190820151644eucas1p179d6d1da42bb6be0aad8f58ac46624ce
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190820151644eucas1p179d6d1da42bb6be0aad8f58ac46624ce
References: <CGME20190820151644eucas1p179d6d1da42bb6be0aad8f58ac46624ce@eucas1p1.samsung.com>
X-Mailman-Approved-At: Tue, 20 Aug 2019 15:23:50 +0000
Subject: [Intel-wired-lan] [PATCH net] ixgbe: fix double clean of tx
 descriptors with xdp
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
Cc: Jakub Kicinski <jakub.kicinski@netronome.com>,
 Daniel Borkmann <daniel@iogearbox.net>, William Tu <u9012063@gmail.com>,
 linux-kernel@vger.kernel.org, Alexei Starovoitov <ast@kernel.org>,
 intel-wired-lan@lists.osuosl.org, Ilya Maximets <i.maximets@samsung.com>,
 bpf@vger.kernel.org,
 =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>,
 Eelco Chaudron <echaudro@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tx code doesn't clear the descriptor status after cleaning.
So, if the budget is larger than number of used elems in a ring, some
descriptors will be accounted twice and xsk_umem_complete_tx will move
prod_tail far beyond the prod_head breaking the comletion queue ring.

Fix that by limiting the number of descriptors to clean by the number
of used descriptors in the tx ring.

Fixes: 8221c5eba8c1 ("ixgbe: add AF_XDP zero-copy Tx support")
Signed-off-by: Ilya Maximets <i.maximets@samsung.com>
---

Not tested yet because of lack of available hardware.
So, testing is very welcome.

 drivers/net/ethernet/intel/ixgbe/ixgbe.h      | 10 ++++++++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 12 +-----------
 drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c  |  6 ++++--
 3 files changed, 15 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
index 39e73ad60352..0befcef46e80 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
@@ -512,6 +512,16 @@ static inline u16 ixgbe_desc_unused(struct ixgbe_ring *ring)
 	return ((ntc > ntu) ? 0 : ring->count) + ntc - ntu - 1;
 }
 
+static inline u64 ixgbe_desc_used(struct ixgbe_ring *ring)
+{
+	unsigned int head, tail;
+
+	head = ring->next_to_clean;
+	tail = ring->next_to_use;
+
+	return ((head <= tail) ? tail : tail + ring->count) - head;
+}
+
 #define IXGBE_RX_DESC(R, i)	    \
 	(&(((union ixgbe_adv_rx_desc *)((R)->desc))[i]))
 #define IXGBE_TX_DESC(R, i)	    \
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 7882148abb43..d417237857d8 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -1012,21 +1012,11 @@ static u64 ixgbe_get_tx_completed(struct ixgbe_ring *ring)
 	return ring->stats.packets;
 }
 
-static u64 ixgbe_get_tx_pending(struct ixgbe_ring *ring)
-{
-	unsigned int head, tail;
-
-	head = ring->next_to_clean;
-	tail = ring->next_to_use;
-
-	return ((head <= tail) ? tail : tail + ring->count) - head;
-}
-
 static inline bool ixgbe_check_tx_hang(struct ixgbe_ring *tx_ring)
 {
 	u32 tx_done = ixgbe_get_tx_completed(tx_ring);
 	u32 tx_done_old = tx_ring->tx_stats.tx_done_old;
-	u32 tx_pending = ixgbe_get_tx_pending(tx_ring);
+	u32 tx_pending = ixgbe_desc_used(tx_ring);
 
 	clear_check_for_tx_hang(tx_ring);
 
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
index 6b609553329f..7702efed356a 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
@@ -637,6 +637,7 @@ bool ixgbe_clean_xdp_tx_irq(struct ixgbe_q_vector *q_vector,
 	u32 i = tx_ring->next_to_clean, xsk_frames = 0;
 	unsigned int budget = q_vector->tx.work_limit;
 	struct xdp_umem *umem = tx_ring->xsk_umem;
+	u32 used_descs = ixgbe_desc_used(tx_ring);
 	union ixgbe_adv_tx_desc *tx_desc;
 	struct ixgbe_tx_buffer *tx_bi;
 	bool xmit_done;
@@ -645,7 +646,7 @@ bool ixgbe_clean_xdp_tx_irq(struct ixgbe_q_vector *q_vector,
 	tx_desc = IXGBE_TX_DESC(tx_ring, i);
 	i -= tx_ring->count;
 
-	do {
+	while (likely(budget && used_descs)) {
 		if (!(tx_desc->wb.status & cpu_to_le32(IXGBE_TXD_STAT_DD)))
 			break;
 
@@ -673,7 +674,8 @@ bool ixgbe_clean_xdp_tx_irq(struct ixgbe_q_vector *q_vector,
 
 		/* update budget accounting */
 		budget--;
-	} while (likely(budget));
+		used_descs--;
+	}
 
 	i += tx_ring->count;
 	tx_ring->next_to_clean = i;
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
