Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E915B042CC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Jul 2025 17:10:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6537381EB2;
	Mon, 14 Jul 2025 15:10:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n1p2XPagTYAD; Mon, 14 Jul 2025 15:10:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D16A481EB4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752505813;
	bh=PBehm+l6yNaIM6GyguD8OP8uRws9CAXHEEmzeunVrvU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AbLuM+r84Y2661uW5aEh+TKSBiPdmOeZtVJr+X7u0Gp3EYXbcvlyicLCl8q5qqrNb
	 8gpBbxQRp/Sm973vbjXbRMWgxIhIchSbaDkjUrt1taBcG4H4x+b7Ssu0gNj9tflvci
	 jI/PA9C4R6XjRrByBmFuUzeYUnGUnAaz+i7vTEYIJjGMe2yJb+qoza0WUzA+PThvi+
	 8puKpD82ctorLSNAXKLzN1HDcPY2FwoWfLM7UDYRbgRhrvMpotWM+kZ+C3b1tKTD4O
	 eQz3XYq6SRRSz/b71IhgMJ8vTiE6BHFXPCG1w4jT+KKLShsrkXO8I7wFv1E9T5rtb9
	 Ys9jolp1sLkqA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D16A481EB4;
	Mon, 14 Jul 2025 15:10:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 478D75E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 12:16:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DA58A404AF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 12:16:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jB_RJeSWAufT for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Jul 2025 12:16:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=166.125.252.92;
 helo=invmail4.hynix.com; envelope-from=byungchul@sk.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 10FB040492
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 10FB040492
Received: from invmail4.hynix.com (exvmail4.skhynix.com [166.125.252.92])
 by smtp2.osuosl.org (Postfix) with ESMTP id 10FB040492
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 12:16:18 +0000 (UTC)
X-AuditID: a67dfc5b-681ff7000002311f-6b-6874f17ac3ae
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
Date: Mon, 14 Jul 2025 21:00:42 +0900
Message-Id: <20250714120047.35901-8-byungchul@sk.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20250714120047.35901-1-byungchul@sk.com>
References: <20250714120047.35901-1-byungchul@sk.com>
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSfUxTZxTG9973ftHR5KaDedVsc51kCdlQp85j3IzZX69RpwvRbWrCqlxt
 Y0EtiEBGxrA6bUYxbktAyywTWaHEkpaPDgpzpQoqCoJgHZRqmc6xOpVKpdbBap3//XLOk+c5
 T3J4rPAyc3hNdq6ky1ZplayMlt1L/Ondwoe56oUjvtlgstWzcDVUxYB1Kh9+vulkoL9WhLa+
 KQpMdc0IHkWGObAfGcEQ8nSxcKoqjCHSUEqDqVdPw6TtCYbb5wMcdLv/pcFqXwf+mjs0uL5p
 wdA5mQKBsm4WSvVRDBWjB1mY+T3KQHvkHw5KnBYK2v9u4qCv2cjA909OY2gpvhnLGhtiYKDV
 xMLAgasIRutnGLjjjgUGLSMcGK3HEbh/rWWhRL8Ygk2POHjwgweD37gKpsvz4Lz5VQhfCiIY
 Pj1IwYzLycGV0TMMeGwtFFy7FcEQ/raSBcO9MgSDFa0U9FQ2MFB96RoVuyMdhmaeUvBdv5mF
 Mb0fQX9ngIYTXxsR2Dq8DDx0xSpHp0zsqo9IZ/A+Jk5fNSKNtTcocvfoNEW8HRcp8stxH0fM
 9n3EYUklp1x/UcTg7cfEXneEJfaJYxwZGXKxpLs8ShNH9VfkrqMCbXhts+yDTEmryZN0C1Z+
 IVM3OuvpPSEuP3BwfTEaZQ0ogReFJeK5Qz70gk/qT1DPmBXeFr3eCH7GScIiMRToog1IxmPh
 cqLY7iiPi14RVOJ4iTFuRAspYpujN85yYal4oPTx/6ZviNaGs3GjBOF98WTlrfhcEdN0GKrx
 c401QTRX8M95tvibxUsfRXIzeqkOKTTZeVkqjXZJmrogW5Oftn13lh3F/q2m6OkWJ5roS3cj
 gUfKRDmM56oVjCovpyDLjUQeK5Pk4z6dWiHPVBUUSrrdGbp9WinHjebytHKW/L3w/kyFsFOV
 K+2SpD2S7sWW4hPmFKOsY8n2Q56ql+s0zZbln6HBM56+z+83rljw8WrjxqKm1eTKmnlzzcau
 9cOv//Hmj3+WieeSDx/2u+ePLafTU7ZuW9dTGLocTgu6dl0cHkjvGb+gL7huw9cnira8g4S3
 zu5Iilb1bJree2FQu/bTlOYHaz/M8C2b7DXIlQtXfHl7r/+TjZlKOketWpSKdTmq/wBsF4Sg
 awMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSe0yTZxTG937vd2kbmnyrRD410aQZLjERNV5yjEaJLvHN7gsjJiZGvuAH
 beSibalA1CHUGKtU0JmAQsBRlVssaRGqVNQWAfECcktVKFKiQdbNC9i1orDaZf/9zjnPeZ7z
 x5FhVQuzWKbNMki6LDFDzSpoxY+bilbmvzVoVgfbMFTYGll4PH2RgYZQLlx57mSgv06Atr4Q
 BRX1LQhmws84sJ8YwTDd0cVCzcUghnBTMQ0VvSYa3ts+YHjR6eeg2/2Jhgb7DzB2+SUNruOt
 GDzv48F/upuFYtMshnLfMRbmn84ycDP8NweFzloKPJX3IuWf1zjoa7Ew8PuHSxhaC55HAieG
 GRi4UcHCQNFjBL7GeQZeuiOpgdoRDiwN5xG4b9WxUGhaC4FrMxy8OdeBYcySCHNlRuisXgjB
 +wEEzy4NUTDvcnLwyHeVgQ5bKwWD42EMwVOVLJj/Oo1gqPwGBQ8qmxiw3h+kInckwfD8RwrO
 9lezMGEaQ9Dv8dNw4agFga3dy8Bbl4lO3E48gdeYOEetiDTXPaHIZMkcRbztPRS5fn6UI9X2
 HOKoXUFqXK8oYvb2Y2KvP8ES+7szHBkZdrGku2yWJg7rb2TSUY5+XrpLsXmvlKE1SrpVW1IU
 mmZnI71/msv1H/upAPlYM5LLBH6dUGW6QH1mlv9a8HrD+DPH8muEaX8XbUYKGeYfxgg3HWVR
 0QJeFKYKLdFlmo8X2hy9UVby64Wi4n/Qf6bLhIam21EjOb9BqKocj/ZVEU272YpLkKIafVGP
 YrVZxkxRm7E+Qb9Pk5elzU1Izc60o8g3XT78sdSJZgZ2uBEvQ+oYJUwZNCpGNOrzMt1IkGF1
 rHJqVKdRKfeKefmSLnuPLidD0rvREhmtjlN+u1NKUfHpokHaJ0n7Jd3/U0omX1yAFmp29z1I
 0ZRm/mGqSx5NOxs8OPZd7pZz3QvSzyw6mda7I33mqdXoTOqaq+opWT7ZN/7VN0mN+SXauCMh
 k7o1dWo5ObDn9afZuMRfD02kDclDKVR24M7mL30WNnlwqyHwSy1dI5zqFLflTQS133u64psD
 Obqmgz22u2bLxpjQJnmpmtZrxDUrsE4v/gugXSLdSQMAAA==
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Mon, 14 Jul 2025 15:10:09 +0000
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=sk.com
Subject: [Intel-wired-lan] [PATCH net-next v10 07/12] octeontx2-pf: access
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

