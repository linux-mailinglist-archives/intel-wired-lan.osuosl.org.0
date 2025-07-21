Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E794B0BA57
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Jul 2025 04:19:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0704784306;
	Mon, 21 Jul 2025 02:19:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5MCaziHAuUAX; Mon, 21 Jul 2025 02:19:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7F1BE842FF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753064353;
	bh=ednytb03Q5q416JP0JY/M7sGlnOexHCJGJ7CeMJwt38=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gs35h8kjXMxyJL8LUgLZpc28JBk5g1X8ykYNT+4hjTXQVPXRl9tKxQnjOSEUYbRu6
	 f4op5XjejWNEoTu3ba2BdEOHk0lHeW+0pRZLXLLMnRrMNzOCzQs6L1AEpjBZ1Nef2p
	 1gPGAFbApPnL9grb+5yKIi1MzIHpqnXeX/uGnvcMUkCJvm/0Qjr4PqKTpeH0NzXDMm
	 J5764J/Z3Jm6TC1NA6xVGigxLnQLn6QCq5e9+bcrJMXmUKAbeGVXHd3xhsrlrRnYJo
	 Ro7YslTOlViPBqR4+OI2Hu0QF9yCG8dKag1WoHU1fPesw+QYnzvZKWsctCyLpg7Ou/
	 K+SNtPDG5yEGg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7F1BE842FF;
	Mon, 21 Jul 2025 02:19:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 26F96DA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 02:19:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 932F5842B9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 02:19:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tA1a4kuh6iIu for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Jul 2025 02:19:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=166.125.252.92;
 helo=invmail4.hynix.com; envelope-from=byungchul@sk.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C1A5A84297
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C1A5A84297
Received: from invmail4.hynix.com (exvmail4.hynix.com [166.125.252.92])
 by smtp1.osuosl.org (Postfix) with ESMTP id C1A5A84297
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 02:19:05 +0000 (UTC)
X-AuditID: a67dfc5b-669ff7000002311f-b3-687da3864ae7
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
Date: Mon, 21 Jul 2025 11:18:31 +0900
Message-Id: <20250721021835.63939-9-byungchul@sk.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20250721021835.63939-1-byungchul@sk.com>
References: <20250721021835.63939-1-byungchul@sk.com>
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSe0yTZxTGfb/3u7XS+K0a9+lmTOrUSSKbt+VkGmOWJb5/bHGJyxY1URv5
 tJ3lklY6UImIFUMzigomgGUBC9hSQqFF6FxhWJgQdcq1q3K13rXMTYRQEVmr8b9f8pzzPOfk
 HB4rbzOLeW3yIUmfrNapWDktH4srX33Klqn5/EI9B1ZXDQvd4+UMOKfS4eKol4Eehwi/d01R
 YK1uRPAyMsCBO3cQw3h7Bwu28kkMkbo8Gqy3TDRMuF5heHA1xEGnf4YGp/tbGKl6SIPvVBOG
 tonlEMrvZCHPNI2hePgkC7N3phlojvzDQbbXTkHzs0scdDVaGCh8VYmhKWs0mnUvwEDvZSsL
 vSe6EQzXzDLw0B8NDNsHObA4SxD4/3CwkG1aB+FLLzn491w7hhHLFnhTZISrZQth8noYwUBl
 PwWzPi8HN4drGWh3NVHQdzeCYfKXUhbMY/kI+osvU3CjtI6Biut9VHSO7RCYfU1BQU8ZC/dM
 Iwh62kI0nD9uQeBqCTLwny+68vSUld3yFWkLP8fEO1SBSIPjNkUen35DkWDLNYr8VjLEkTJ3
 GvHY44nN94Qi5mAPJu7qXJa4X5zlyGDAx5LOommaeCqOkceeYvTdkp3yTYmSTmuU9J9t3ivX
 3KnPwakXuPSGggkqC+WzZiTjRWG9eLHtV+Y9n6m98pZZYaUYDEZwjBcIa8TxUAdtRnIeC3/F
 ic2eIiomzBd2iI+e9dIxpoXlYtbADGdGPK8QNog5TuM7z6Wis671rY9M+EIMRa8fY2W0JPzU
 y8Q8RcEmE8/+acHvGhaJV+xB+jRSlKE51UipTTYmqbW69QmajGRtesK+lCQ3ij5cVebrXV70
 omu7Hwk8UsUpUulMjZJRGw0ZSX4k8li1QEE6DmuUikR1xmFJn7JHn6aTDH70EU+rPlSsnfw5
 USkcUB+SDkpSqqR/r1K8bHEWOvITbVr3galZ93X6mQ7HjGmo30Bte3Au/mBL4bx59z1pd2fs
 Sy0fd7qY/pJSR94G1cLv1a23QscCn5p31++vWaUJLavPzv3x6GjjoJxqKGha7dib/8nG+UdS
 KmWN4fuhrYHCqtpWsK+w7egjnm8aTnTXpOh+SPty7pjJ+PeihI3tOSraoFGvicd6g/p/zy4E
 2GwDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSa0iTcRTG+793R4O3ZfZ2oWBQgVQWZZwuRNCH/hRGEBgFVqNe2mhe2Gqo
 YZkto1HTskBLad6aumi2lS5btynTMks3tZWmtrBSV1leaKnZVvTtd3gOz3PgORwpq6Hnc6qk
 Y6ImSaGWMxJKsnPjmRXZpRnKVZNPl0Oh9RYDbSPFNFh+poK5z0GDp1KAB60/CSisqkEwGuxi
 wXa+m4SRhkYGSovHSQhWX6Sg8JWegjHrLxL63X4WmlxTFFhscdB78yMFznO1JNSPLQF/ThMD
 F/UTJBT0nGVg+u0EDQ+DX1nIclQQUF/0LDQO3WOhtcZIw5Vf5STUZvaFAj900uCtK2TAe6YN
 Qc+taRo+ukKpgYpuFoyWawhcjysZyNKvgcC9URaGrzaQ0GvcAr/zdeA2RcF4cwBBV3kHAdNO
 Bwsve27T0GCtJaD9fZCE8QtFDBi+5CDoKKgj4EVRNQ1lze1E6I7d0Dk9SUCex8TAB30vAk+9
 n4Lrp40IrI98NHx36qktW3F94BuJHe/KEL5b+YbAn3N/E9j36DmB7197x2KT7Ti2V0TjUucA
 gQ0+D4ltVecZbPtxmcXdnU4GN+VPUNhedgp/thegXYv2STYdFtUqnaiJ2XxQonx7J5tMKWFT
 7+aNEZkohzGgCE7g1wqXbj+lw8zwywSfL0iGOZJfLYz4GykDknAk3zJTeGjPJ8LCbH6v8GnI
 S4WZ4pcImV1TrAFxnJSPFbItun+eiwVL9ZO/PhH8OsEfajzMstBKYNBB5yKJCc2oQpGqJF2i
 QqWOXak9qkxLUqWuPJScaEOhb7qZMXnJgUa921yI55B8pjSFylDKaIVOm5boQgJHyiOluDFd
 KZMeVqSli5rkA5rjalHrQgs4Sj5Xun2PeFDGH1EcE4+KYoqo+a8SXMT8TNRRt7+43W9vM2eX
 FJycKlm2SmqMj5mTu3RD/HBlcl7O+tGh+/NczPKOEY3E3ALxYpT7BhE3tMndF9lijerfsfDB
 Oa/N/dr8rdm87oQxpvXs+gS+alAsz1pb7Eif5Ymasbc/Ifb0wPMeU5xCnTgopL53DKxI0NZd
 3/V98EX/nuhhOaVVKlZHkxqt4g+CbkU9SQMAAA==
X-CFilter-Loop: Reflected
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=sk.com
Subject: [Intel-wired-lan] [PATCH net-next v12 08/12] iavf: access ->pp
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

