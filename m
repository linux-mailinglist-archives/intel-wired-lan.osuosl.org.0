Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 756E3B0BA53
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Jul 2025 04:19:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 73B58842FC;
	Mon, 21 Jul 2025 02:19:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S7mkBQNJeAo4; Mon, 21 Jul 2025 02:19:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E9D1384298
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753064352;
	bh=3bhrYXWJvKjSvf77mbHNuVoet9w9SexuVEXBSFz8Pbs=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cDFya4LrH5RUr6WDAuQdkISE/M8peBZ2Unu6E8rWTjFcnom6xrG8mIqQYD+t2Xd34
	 spcMuQxDcukmLppNiJvUJ0z2NvLsXK9JlxndLrzX9RSKfqnISTQpHCdLJJVm+FTwq1
	 Ra0yUYR3YrXgQfyl1n0krn2TCVUM5aszAAx8LoozFLvvI5O08T3KryjionkJwp7RnY
	 AOpMJcYSibAormM4xGZxq7ixL9fKzUjqWH+/xaKoAlpc8GieauhyEn79nr97ZI50gi
	 lBRkJm5jgsp01k/ZayL7llxw1FWRRUGjDBx0xO0LHm9LzzoKemCjD4LA47FaAlxq9q
	 KN8bQnrxUWMPg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E9D1384298;
	Mon, 21 Jul 2025 02:19:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 330ADD7F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 02:19:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EF01D40C08
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 02:19:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6NRvewFX1G1D for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Jul 2025 02:19:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=166.125.252.92;
 helo=invmail4.hynix.com; envelope-from=byungchul@sk.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3221040A0D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3221040A0D
Received: from invmail4.hynix.com (exvmail4.hynix.com [166.125.252.92])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3221040A0D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 02:19:06 +0000 (UTC)
X-AuditID: a67dfc5b-669ff7000002311f-ec-687da387f9c4
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
Date: Mon, 21 Jul 2025 11:18:34 +0900
Message-Id: <20250721021835.63939-12-byungchul@sk.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20250721021835.63939-1-byungchul@sk.com>
References: <20250721021835.63939-1-byungchul@sk.com>
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSe0yTZxTGfb/3u7WjyZeOzE+N2VLj5iSysXk5f2zTmCx5EzNjdCZmZmHV
 frHduHQFEXBkjOEMDRezeaFSEgilXGNZO2mV4mapwIoyLkqKclvNDM4qDqShFKgtZv/98pyc
 5zkn5/BYOcqs53UZ2ZIhQ52mYuW0/GlC7bazdQXa963zKWC2tbIwOFfLQMtCLjRMuRgYahKh
 Y2CBAnNzO4IX4Qcc2EvGMMx5e1ioqw1hCLeV0WD+q5iGedsihn+6Axz0epZpaLF/BpPWRzS4
 zzoxdM1vhkBFLwtlxREMpokzLETvRxjoDD/joMjVSEHnk6scDLSXM3B+sR6Ds3AqlvVwhIHh
 62YWhn8cRDDRGmXgkScWGGwc46C85TICz+9NLBQVfwjBqy84eH7Bi2GyfA+sVOZAd80bEOoL
 InhQf4+CqNvFQf/EFQa8NicFd/8OYwiVVrNgfFqB4J7pOgW3q9sYsPTdpWJzHIKR6BIFvwzV
 sPCweBLBUFeAhqofyhHYbvgZ+M8dWzmyYGb37CVdwRlMXOMWRH5rGqXI9LkVivhv+Chy7fI4
 R2rsJ4mjcSupcz+miNE/hIm9uYQl9tmfOTI24mZJb2WEJg7L92TaYUIHNn4h/0gjpelyJMN7
 n3wl17qfF2F9lyw3EmpgCpGJNyIZLwrbxbqJAdaI+FX2zR6My6zwjuj3h3GcE4UUcS7QQxuR
 nMfCnQSx01FJxQuvC1+LtVbLKtPCZrHE7qDjrBB2iraVMuqV/5tiS9sfq0aymB6IXT/OSmGH
 GPzXxcRNRaFKJo5WDzKvGtaJNxv99DmkqEFrmpFSl5GTrtalbU/W5mXocpOPZ6bbUezhrAVL
 R11oduCQBwk8UiUo9HSBVsmoc7Ly0j1I5LEqUUF68rVKhUadly8ZMlMNJ9OkLA/awNOqtYoP
 Qqc0SuGEOlv6RpL0kuH/KsXL1heipCf9JWu69fsGTy/NK484FWsXDy9u+/zPLccs/db6DaWe
 Tebv+nqrNBWtuy69fXO5vcL77a96zbPW1PzXPt2d5GwoTc5rO5N9bL84HNV6v3zLl7i8L+ni
 wSup6969Zdrt2/Xx4+5xNtN34HRHypGpWxsrMbo4PXOewIkOuyyMZ34KOVR0lladshUbstQv
 AZbnnIBsAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSe0iTYRTGfb+7q9HXEvswKFpZYGmFFSeKCIx6CYooK+g+6qOt5pRNTQvR
 dBGuNLuipaFoazppspVOmxWbpGk3p8kq8zIprNbVC62ZNoX++53ngfMceA5HymrpCE6lSRa1
 GoVazkgoyba1OdHnyjOUy+v7I6DYUs1A+1AZDebfaXCnz06Du1KAB69+E1BcVYtg2P+OBWtu
 NwlDTc0MlJeNkuCvyaOg+KWeghHLHxI+PPGy0OL8S4HZuhV6jR8pcJyrI8E1Egneiy0M5OkD
 JBT1nGVg4m2Ahkb/Nxay7SYCXCVPg+OX+yy8qs2n4eqf2yTUZfUFAwe6aOhoKGagI6cdQU/1
 BA0fncFUn6mbhXzzDQTOR5UMZOtjwXd/mIUf15pI6M3fAOOFqfCkNBxG23wI3t1+TcCEw87C
 i567NDRZ6gjo7PeTMHqhhAHD14sIXhc1EPCspIaGirZOInjHTuiaGCPgiruUgQF9LwK3y0vB
 zTP5CCwPPTT8dOipDXHY5ftOYvv7CoTvVb4h8GDBOIE9D1sJXH/jPYtLrSnYZorC5Y5PBDZ4
 3CS2VuUy2PrrMou7uxwMbikMUNhWkYkHbUVo+9y9knVHRbUqVdQuW39YonT8yCaTXKFpgdE7
 dBYq4gyI4wR+pdD6a4cBhXIMv1jwePzkJIfxK4QhbzNlQBKO5J9PFxpthcSkMYs/LpQZK6aY
 4iOFXKuNmmQpv1qwjOdN6QI/TzDXPJ5aFBrUvcHGJ1nGrxJ8n+10AZKUopAqFKbSpCYoVOpV
 MboTynSNKi3mSGKCFQW/yZgxdsmOhjs2OxHPIfl0aRKVoZTRilRdeoITCRwpD5Pi5lNKmfSo
 Iv2UqE08pE1RizonmsNR8tnSLXvEwzL+mCJZPCGKSaL2v0twoRFZ6Jn3UiYKoORrcsGbeFrc
 ftVYv7AgLny/IZY9ZmoKWfZ5UUxryskdB52uuw0NEYH49gX6PYu/rInrM8ofrZvR3xmj2bU0
 OnKjvFsyM55G0xo9B0x/nSVK6Yj7/KItYu0YhMQ+jcpSf1c/3r13yb62gWrFUM583fWxW9Hh
 mUvNg5vklE6pWBFFanWKfwvrg4BJAwAA
X-CFilter-Loop: Reflected
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=sk.com
Subject: [Intel-wired-lan] [PATCH net-next v12 11/12] net: ti: icssg-prueth:
 access ->pp through netmem_desc instead of page
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

Make icssg-prueth access ->pp through netmem_desc instead of page.

Signed-off-by: Byungchul Park <byungchul@sk.com>
---
 drivers/net/ethernet/ti/icssg/icssg_prueth_sr1.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/ti/icssg/icssg_prueth_sr1.c b/drivers/net/ethernet/ti/icssg/icssg_prueth_sr1.c
index ff5f41bf499e..5e225310c9de 100644
--- a/drivers/net/ethernet/ti/icssg/icssg_prueth_sr1.c
+++ b/drivers/net/ethernet/ti/icssg/icssg_prueth_sr1.c
@@ -367,7 +367,7 @@ static irqreturn_t prueth_rx_mgm_ts_thread_sr1(int irq, void *dev_id)
 		return IRQ_NONE;
 
 	prueth_tx_ts_sr1(emac, (void *)page_address(page));
-	page_pool_recycle_direct(page->pp, page);
+	page_pool_recycle_direct(pp_page_to_nmdesc(page)->pp, page);
 
 	return IRQ_HANDLED;
 }
@@ -392,7 +392,7 @@ static irqreturn_t prueth_rx_mgm_rsp_thread(int irq, void *dev_id)
 		complete(&emac->cmd_complete);
 	}
 
-	page_pool_recycle_direct(page->pp, page);
+	page_pool_recycle_direct(pp_page_to_nmdesc(page)->pp, page);
 
 	return IRQ_HANDLED;
 }
-- 
2.17.1

