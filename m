Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CEC3B042CB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Jul 2025 17:10:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8BBF561246;
	Mon, 14 Jul 2025 15:10:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id On2lQVoNpBjv; Mon, 14 Jul 2025 15:10:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 08AB66144D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752505817;
	bh=ednytb03Q5q416JP0JY/M7sGlnOexHCJGJ7CeMJwt38=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gWaOOAZ/CjkBP/kTkFFRkadWsQQPLJOTxb/DmVI7yrirf5UysGh33iXCjaX4bTrGL
	 prfow4tnEbrOynnB7ZNThtKDuunqnJVCagX9+cXLuVfz7RVnf3hvxJOAIXgD01NCXy
	 OYMhvA/dretqs0U7icyD66qHbinbUGNvt9HiSc7IxOXk3J6FqpNu05gPqs1sWtkalv
	 VmcPJS6CKwqEYbHASyN4G+D2d79/Sx6V8V+FTkc0ROUXVeoiSz3U3cdZb5lkNpQFvs
	 OyfSxUJKaLqBZbwEjkrBI7Dy9wD4vT5HAXcH5YcywMaV5vW6cniqZflaaIqvFR9nlv
	 Nxk3BrzqDUJ2Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 08AB66144D;
	Mon, 14 Jul 2025 15:10:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id AFB8C5E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 12:16:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4308260AA2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 12:16:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mxiF0ff4MvdO for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Jul 2025 12:16:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=166.125.252.92;
 helo=invmail4.hynix.com; envelope-from=byungchul@sk.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6A40560AA4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6A40560AA4
Received: from invmail4.hynix.com (exvmail4.hynix.com [166.125.252.92])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6A40560AA4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 12:16:18 +0000 (UTC)
X-AuditID: a67dfc5b-681ff7000002311f-7d-6874f17adf47
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
Date: Mon, 14 Jul 2025 21:00:43 +0900
Message-Id: <20250714120047.35901-9-byungchul@sk.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20250714120047.35901-1-byungchul@sk.com>
References: <20250714120047.35901-1-byungchul@sk.com>
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSfUxTZxTGee97v9rQ5Kaa7Q6zGWuMCYs6HFtOiFvIovGayNQQTWRBbeTG
 NgKSggyIi0wqSsVidMsAi2JFbamxWBSqFtSWKBMdWIUU5MMWRYcgaG1DAa0txv+e5HnO7zkn
 OSyWe6g4Vp2dJ2qylZkKWkpKx2ONy4re5Km+Kzm5CAzWizQ89J+hwDJVABee2ilwm3m40TVF
 gKG+CcG70BMGbGX9GPxtd2k4eyaIIdRwlARDp5aEgHUaw/M7Pgbane9JsNhSYOj8CAmOQ80Y
 XIEl4Ktop+GodgZD1eBBGsJ9MxS0hF4zcMBuIqDl1VUGupr0FPw1fQ5Dc/HTSNdwDwWPrhto
 eFTyEMHgxTAFI85I4ZipnwG9pRqB86aZhgPa72Hs6jsGJv9uwzCkT4YPlflwp/YLCHaMIXhy
 rpuAsMPOwH+DlyhoszYT8NgbwhAsr6FBN16BoLvqOgH3axooqOt4TET2SIWe8CwBJ9y1NAxr
 hxC4XT4STv6pR2Bt9VDwxhE5eWbKQCf/IrjGJrBgH6hDwhVzLyG8PPaBEDyt9wjhWvUAI9Ta
 9gqNpnjhrON/QtB53Fiw1ZfRgu3tcUbo73HQQnvlDCk01u0XXjZWoY1fp0lXZYiZ6nxRs+Ln
 HVJV3+VSnGNkCq6cCBDFqILWIZbluUR+4qZchyRz8pKpholqmlvKezwhHNXzuQTe77tL6pCU
 xdyDWL6lsZKIGvO4rfzrYReKapJbwuuNWhRlyrgf+LLg6k/Mhbyl4dYcR8L9yJ+u8c7F5ZFI
 q64OR5k8Z5Hw5henqE8DX/G3TR7yGJLVoph6JFdn52cp1ZmJy1WF2eqC5Tv3ZNlQ5N/O/zH7
 mx297Up1Io5FilgZjOap5JQyP7cwy4l4Fivmy0YHNCq5LENZWCRq9mzX7M0Uc51oAUsqvpSt
 DP6eIed2KfPE3aKYI2o+uwQriStGh2eP8KnEWn1RknH8nwXpKw/e0ltDiVv2LwqsW1Of8syf
 8N47YnKXLeYk/25NP1Wyzfsq9V6S77661BvQnZ5Oqk6LMzbFlGwGeq30WbVtdJPFEk+uT15d
 2mn+NqbvcspkeOIn2e1eV1GOa+RB+Tcp+8oL03/t7pBM3ugt9acVbOhUkLkqZUI81uQqPwK9
 dXv1awMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSfUxTZxjFfe97v2hoclOR3bBEkmZKYjLROMyzbDNOZ3xjhCyRxLhk0UZv
 bEMppIUGSJYBdi40s6CgA2knH5WVDwULQsWCpiWIQ5wWJB1QPiNxDplIQSpoLS777/fknJzz
 /HF4rGhn4niNLkvS61RaJSujZSlfnPk0byFLvaNsSgbW5iYWHi9WM9C4kgO/T7oY8NWLcPvR
 CgXWhnYEwdAoB86iMQyLPfdYqK1exhBqOUeD9U8TDUvNbzA87Z3moM/zloZGZzJM1M3S4P65
 A4N3aQtMF/excM60iqFi/CcWwiOrDHSF5jkodDko8NruR85/bnLwqN3CQNmbqxg68icjhTPD
 DAx2WlkYPPMYwXhTmIFZT6R1zjHGgaXxMgLPnXoWCk27YO5mkIOXF3swTFj2wrtyI/RWxcJy
 /xyC0atPKAi7XRw8HL/OQE9zBwVDUyEMy7/YWDC/KEbwpKKTgge2Fgbs/UNU5I8jMBxeo6DU
 V8XCjGkCgc87TUNlgQVBc7efgQW3id67n3jn/sXEFbAj0lb/F0WelbyjiL/7D4rcuhzgSJUz
 m7Q6tpFa998UMft9mDgbiljifHWBI2PDbpb0la/SpNX+I3nWWoG+3fyd7MtTklZjlPSJe07I
 1CM3zuLMGi6nrXSJykfFrBlF8aLwmXjdYePWmRUSRL8/hNc5RtgpLk7fo81IxmNhIFrsai2n
 1oWNwjFxfsaL1pkWtoiWGlOEeV4uJIlFy9/8lxkvNrbc/ZATJewWr9imPtgVEUu32Y5LkKwK
 bWhAMRqdMV2l0SZtN6Spc3WanO0nM9KdKLKmuh/WzrtQcPCgBwk8UkbL4XmWWsGojIbcdA8S
 eayMkT8P6NUK+SlVbp6kzziuz9ZKBg/6mKeVH8kPHZVOKITTqiwpTZIyJf3/KsVHxeWjQ4P+
 2MOv01IOxH+1VlrdMuJ9mMlqfcPOIV63azGc++Jl6kJJfLvWXXB/a9nT7/cnMpVB/a8d0lR6
 hiOQP2aPms2uC1g/SV05Qu7OJgX3GTehBCivlM131e5JvqW8NhBMWaqJd1w6mHw+NTpY1vB5
 U5/6a5Kgdhw++9uGOuNMp5I2qFU7t2G9QfUewTvwW0kDAAA=
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Mon, 14 Jul 2025 15:10:09 +0000
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=sk.com
Subject: [Intel-wired-lan] [PATCH net-next v10 08/12] iavf: access ->pp
 through netmem_desc instead of page
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

Make iavf access ->pp through netmem_desc instead of page.

Signed-off-by: Byungchul Park <byungchul@sk.com>
---
 drivers/net/ethernet/intel/iavf/iavf_txrx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index aaf70c625655..363c42bf3dcf 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -1216,7 +1216,7 @@ static struct sk_buff *iavf_build_skb(const struct libeth_fqe *rx_buffer,
 				      unsigned int size)
 {
 	struct page *buf_page = __netmem_to_page(rx_buffer->netmem);
-	u32 hr = buf_page->pp->p.offset;
+	u32 hr = pp_page_to_nmdesc(buf_page)->pp->p.offset;
 	struct sk_buff *skb;
 	void *va;
 
-- 
2.17.1

