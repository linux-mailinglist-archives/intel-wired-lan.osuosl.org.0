Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B83DB0BA4D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Jul 2025 04:19:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 17D4B61C99;
	Mon, 21 Jul 2025 02:19:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eWnG-0RUVP_X; Mon, 21 Jul 2025 02:19:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8368F61C86
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753064349;
	bh=PBehm+l6yNaIM6GyguD8OP8uRws9CAXHEEmzeunVrvU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RuF3n6VRZxWiGSHofBHR+aS5D9/UyYdt7FcSzciEz+419qhWXZZYFm/5HpAtXkpJt
	 2vcWfeoEbE66ykMZw/5E0YUOUfCT9XZPVhw3p8yZjCreOpiai7umdKD7ZlGnSylpn/
	 5tEyWJ0jXYO6o56giSR/9YSdMHSbSjKaCG/hsDiuefz9mbWXYmGi0IqJPad3BVc0/2
	 tVKJCiDvQnjipfasTyi5yTM/Lzv+ycBFZ4ONrSvBklOna/5lsIMlkRBAsyP/7Q6B3h
	 FPYBDv+zDyC0kAlnpRSXtVE5P6GOsVLbgLaZ1hFFcDYAxXE3Vyaap9MwoYs1Ai+7+G
	 VZVl2adwzn95Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8368F61C86;
	Mon, 21 Jul 2025 02:19:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 5CD967AB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 02:19:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 436A440AA3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 02:19:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D8mTPLZsnM5Q for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Jul 2025 02:19:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=166.125.252.92;
 helo=invmail4.hynix.com; envelope-from=byungchul@sk.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7FFE740C0B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7FFE740C0B
Received: from invmail4.hynix.com (exvmail4.hynix.com [166.125.252.92])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7FFE740C0B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 02:19:05 +0000 (UTC)
X-AuditID: a67dfc5b-669ff7000002311f-a1-687da386a6f7
From: Byungchul Park <byungchul@sk.com>
To: willy@infradead.org,
	netdev@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, linux-mm@kvack.org, kernel_team@skhynix.com,
 almasrymina@google.com, ilias.apalodimas@linaro.org, harry.yoo@oracle.com,
 akpm@linux-foundation.org, andrew+netdev@lunn.ch, asml.silence@gmail.com,
 toke@redhat.com, david@redhat.com, Liam.Howlett@oracle.com, vbabka@suse.cz,
 rppt@kernel.org, surenb@google.com, mhocko@suse.com,
 linux-rdma@vger.kernel.org, bpf@vger.kernel.org, vishal.moola@gmail.com,
 hannes@cmpxchg.org, ziy@nvidia.com, jackmanb@google.com, wei.fang@nxp.com,
 shenwei.wang@nxp.com, xiaoning.wang@nxp.com, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 sgoutham@marvell.com, gakula@marvell.com, sbhatta@marvell.com,
 hkelam@marvell.com, bbhushan2@marvell.com, tariqt@nvidia.com,
 ast@kernel.org, daniel@iogearbox.net, hawk@kernel.org,
 john.fastabend@gmail.com, sdf@fomichev.me, saeedm@nvidia.com,
 leon@kernel.org, mbloch@nvidia.com, danishanwar@ti.com, rogerq@kernel.org,
 nbd@nbd.name, lorenzo@kernel.org, ryder.lee@mediatek.com,
 shayne.chen@mediatek.com, sean.wang@mediatek.com, matthias.bgg@gmail.com,
 angelogioacchino.delregno@collabora.com, aleksander.lobakin@intel.com,
 horms@kernel.org, m-malladi@ti.com, krzysztof.kozlowski@linaro.org,
 matthias.schiffer@ew.tq-group.com, robh@kernel.org, imx@lists.linux.dev,
 intel-wired-lan@lists.osuosl.org, linux-arm-kernel@lists.infradead.org,
 linux-wireless@vger.kernel.org, linux-mediatek@lists.infradead.org
Date: Mon, 21 Jul 2025 11:18:30 +0900
Message-Id: <20250721021835.63939-8-byungchul@sk.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20250721021835.63939-1-byungchul@sk.com>
References: <20250721021835.63939-1-byungchul@sk.com>
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSe0xTdxTH97u/+2pDk5vOuCtu2dL5SMymcz5ysixKXJb9EmdmwmKiZsEi
 N7bykLSIlIUJrobZTGAyY9FiwKKW0gxyy6PDgliYsLkBojZVoLgSCdPaOaqViootZv99cr7n
 ex45h8fqAJPK6/MKJEOeNkfDKmnlw5T6D8vtJbqPzs5QYGt2sXA9Ws9A02wRXLzrYWCkUYRL
 w7MJzdmO4HF8lAP52BiGaF8/C/b6GIZ4y3EabENmGp40P8Nw72qIgwHfCxqa5G0wcWGKBm95
 B4beJ8shVDnAwnHzHIaa4FEW5u/MMdAVj3BwxOOgoOtBGwfD7RUM/PzsPIaO0ruJXpN+Bm50
 2li48f11BEHXPANTvkTDsGOMg4qm0wh8lxtZOGJeB+G2xxw8OtmHYaIiDV5aC+Fq3WKIXQsj
 GD1/i4J5r4eDweAvDPQ1d1Bw8+84htiPtSxYHlYiuFXTScGftS0MNFy7SSXmSAf//HMKqkfq
 WJg0TyAY6Q3RcKasAkFzd4CB/7yJledmbWzaFtIb/hcTz3gDIq2NtykyXfWSIoHuPyjy6+lx
 jtTJB4nbsYrYvf9QxBIYwUR2HmOJPHOCI2N+L0sGrHM0cTccJtPuGrT9nV3KT7OkHH2hZFiz
 aY9S1+px0flRrih09KtSFGQtiOdFYb0Y6V1mQYoFbDxnRklmhZViIBDHSV4krBWjoX7agpQ8
 Fv5KEbvcViopvCloRZc/smCgheWiHG1YiKuEDaJvqhK/Lvqu2NTSs8AKYaMYShw/yepETvi+
 h0kWFQW7Qhx3DLGvDUvEK44AXYVUdegNJ1Lr8wpztfqc9at1pjx90eq9B3JllPi3CyXPd3vQ
 zHC6Dwk80qSo8ukSnZrRFhpNuT4k8lizSEX6i3VqVZbWVCwZDmQYDuZIRh9aytOat1Qfxw5l
 qYV92gIpW5LyJcP/KsUrUkvR/vKgYqg127/V9EmB6vPD6fiLTJetqtO6Yqpk8pErrT57S9n7
 o3RwZWYsY/N3v9fatw6ORpyxfXLXlVM9wfEXv5nKdSbT5W9u3zuz8we1o6j6bP4H1dGeqkvf
 FuxxV9eonw6usDqfthtb5emfyjJ27vhyc/eDk/63P/t6LxdZ815q8VINbdRp167CBqP2FQxi
 2iZrAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSa0iTYRTHe97rHA3eltSLRdHoRtE95UghQh96iuxC0O1LjnppQ+dsy6GG
 ZbmKrNSyi6aWppnT0WyarlpWc6hl2dKSlbbVIrFadpmJc9aaRt9+5/zPOf8D54hIaQMdIVIm
 HRA0SfJEGSOmxBtXZS06Xp6hWJqfNxeKTUYGXvjKaKgZToUb7yw0dBp4uOcYJqC4ugHBoL+H
 BfPJXhJ89lYGysuGSPDXnqGg+Lmegl+mERI+tnhYaLP9pqDGHAfuyj4KrCcaSWj+NQc8uW0M
 nNEHSCh0HWMg+CZAw33/AAtHLVUENJc8DoVfbrPgaMih4fzIdRIaM9+FDD9009B1t5iBrqwX
 CFzGIA19tpCrt6qXhZyaywhsDwwMHNWvAO/tQRa+X7CT4M6JhT8FOmgpnQJD7V4EPddfERC0
 WljocN2kwW5qJODlez8JQ6dLGMj+movgVeFdAp6W1NJQ0f6SCO2xFbqDowTkd5Yy8EHvRtDZ
 7KGg6EgOAlOTk4YfVj0VuwY3e7+R2PK2AuF6w2sC9+f9IbCz6QmB71x+y+JScwquq1qAy62f
 CJzt7CSxufokg80/z7G4t9vK4LaCAIXrKg7j/rpCtHnGLvHqvUKiUidolsTEixX1FiOV7GNT
 Pcc2ZSIXk43CRDy3kjdc06MxZrh5vNPpJ8c4nFvG+zytVDYSi0ju2UT+fl0BMSZM5uS8sXtg
 vIHi5vBmX8V4XsJF8ra+XPLf0Jl8Te3DcQ7jonhP6OJjLA3VeD9b6DwkLkUTqlG4MkmnkisT
 IxdrExRpScrUxXvUKjMKfVNlxuhZCxrsWmtDnAjJJkqSqQyFlJbrtGkqG+JFpCxcglvTFVLJ
 XnlauqBR79akJApaG5omomRTJeu3C/FSbp/8gJAgCMmC5r9KiMIiMpFqvj1u7dQiy/H+JREp
 zP6fBneqJr5yzfSOokPEoR0HU3JNFy+WOLbtdMcsbJ9sfNT0ZUXHI8eWz4XPp7hWZ9iGfwcG
 dk5yHObyr45ER9u3uDY97NN0BWarW9KjIrM2jK4LSuL6l2t7TtXvuFSWHnVLHT17lnq6Knbk
 rKctQXclZuFNGaVVyJctIDVa+V+0aG5CSQMAAA==
X-CFilter-Loop: Reflected
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=sk.com
Subject: [Intel-wired-lan] [PATCH net-next v12 07/12] octeontx2-pf: access
 ->pp through netmem_desc instead of page
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

To eliminate the use of struct page in page pool, the page pool users
should use netmem descriptor and APIs instead.

Make octeontx2-pf access ->pp through netmem_desc instead of page.

Signed-off-by: Byungchul Park <byungchul@sk.com>
---
 drivers/net/ethernet/marvell/octeontx2/nic/otx2_txrx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/marvell/octeontx2/nic/otx2_txrx.c b/drivers/net/ethernet/marvell/octeontx2/nic/otx2_txrx.c
index 99ace381cc78..625bb5a05344 100644
--- a/drivers/net/ethernet/marvell/octeontx2/nic/otx2_txrx.c
+++ b/drivers/net/ethernet/marvell/octeontx2/nic/otx2_txrx.c
@@ -1571,7 +1571,7 @@ static bool otx2_xdp_rcv_pkt_handler(struct otx2_nic *pfvf,
 		cq->pool_ptrs++;
 		if (xsk_buff) {
 			xsk_buff_free(xsk_buff);
-		} else if (page->pp) {
+		} else if (pp_page_to_nmdesc(page)->pp) {
 			page_pool_recycle_direct(pool->page_pool, page);
 		} else {
 			otx2_dma_unmap_page(pfvf, iova, pfvf->rbsize,
-- 
2.17.1

