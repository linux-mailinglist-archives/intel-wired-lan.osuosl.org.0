Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF90B085C8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Jul 2025 09:01:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 74F0D615C4;
	Thu, 17 Jul 2025 07:01:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f1AEE9sJELc4; Thu, 17 Jul 2025 07:01:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EECC1615AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752735681;
	bh=L6DW8EZeO0HDjHfPxrXIJ1gWG+DSlXfNXBsaPr6KmPg=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FKW5E3yTZijR7UV/Ou32kFSzWF5/e6ugROBsazXea3Ocu7BljW8S5KVbi5RUUaKpR
	 EXNcAM8xEjpK9eGjtrW4ezMgy75W0fpCnM4EYVIs1sHTb4RADE41ZCiZ+ZcnROgGdd
	 o5oftabfrcYmvd+WHlcg4JxEnBNklS4Ok5LkoUseJGFqpayFdc3dV1HqmN9OR8XXO1
	 xJEwtACqoeqiumql2g/cBdzY1IKp8VDGWq2dag4UTv1/A60OunrQqG5Bw91osWwu7x
	 FMgBMJgwVndM33lf1eEKiR6evNYVm5Vf4BSu0WJYTLcgBGXm6oCpJnfHweKdj5xkDk
	 imi0aUZ5JPbIA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EECC1615AD;
	Thu, 17 Jul 2025 07:01:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1E3C7117
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 07:01:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 27BC84111F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 07:01:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HaobU-VpHd5Z for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Jul 2025 07:01:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=166.125.252.92;
 helo=invmail4.hynix.com; envelope-from=byungchul@sk.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5020641110
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5020641110
Received: from invmail4.hynix.com (exvmail4.skhynix.com [166.125.252.92])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5020641110
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 07:01:12 +0000 (UTC)
X-AuditID: a67dfc5b-669ff7000002311f-28-68789fb30299
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
Date: Thu, 17 Jul 2025 16:00:46 +0900
Message-Id: <20250717070052.6358-7-byungchul@sk.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20250717070052.6358-1-byungchul@sk.com>
References: <20250717070052.6358-1-byungchul@sk.com>
X-Brightmail-Tracker: H4sIAAAAAAAAAzVSe0yTdxT1971pqH6rZvsUH7FKZsiGY2pyF4w6Y8yPbMtY+EPnskkj39ZG
 QFOggo+IWGNsFBQfAS2jhaqFMktakc61KqUiEXVQEaryEtA4LSpPqVW7UuN/J+fcc869yeVI
 2X16DqfKzBbVmYp0OSOhJEPRxi/t5bnKr05dSwS9tYaBtlEjDZbJXDjf56DBWyXAP62TBOir
 LyEYCzxkwXaoi4RRzw0GKo0TJARqj1Cg/1dLwbj1DQmPm/pZaHa/o8Bi+wF6zz2hwHmwnoTG
 8VjoL2pm4Ig2SEJpzwEGQg+CNLgCL1gocJgJcD2vY6H1UiENJ96cJaE+vy/cNdBBw93Legbu
 7m9D0FMTouGJO1zoN3exUGg5jcB9tYqBAu0y8NeNsfDqpIeE3sI18L5EA02GT2GixY/g4dl7
 BIScDhbu9FygwWOtJ6D9UYCEicNlDOiGihDcK71MwK2yWhpMLe1EeI8U6Ai9JeC418DAgLYX
 gbexn4Iz+woRWK/4aBh2hk8OTuqZNWtxo/8liR3dJoQvVt0n8NOj7wnsu3KTwH+f7maxwZaD
 7eY4XOn8j8A6n5fEtupDDLaNFLO4q8PJ4OaSIIXtpr34qb0UJc/bJFmZJqarNKJ66apUiXK0
 swFtL5fmWnR3yHx0U6JDHCfwy4XQyPc6FBWBLc5Bcgoz/OeCzxeI4Fl8gjDaf4PSIQlH8rej
 BZe9hJgSZvK/CoEDRmYKU3ys0Odqjhik4aCG8gLmQ+gCwVJ7LcJH8SuE4IniCC8Lz7RX5LNT
 oQJvjxIOmy8QHwyzhQazjzqKpAY0rRrJVJmaDIUqfXm8Mi9TlRu/ZVuGDYUf7tyet7840Ehr
 ihvxHJJHS1NrdyhltEKTlZfhRgJHymdJj3s1Spk0TZG3U1Rv26zOSRez3CiGo+SfSb+e2JEm
 4/9QZItbRXG7qP6oElzUnHy0bG7C4i8GvkncXTRo3Pjs0d65w23s5mkrFhUvLHt9cjj+avux
 1IwZ1uumtUO/rb89v4FyrqvobN313V9L9v00Y8jw+88bEpPl08Ufv10yGHfQEduzafpF04vr
 62v+TNqyK+CZvyGxsXP12MKxmDrd0qZxP06yb90zM+kTp1bvyb7lEp4lx8ipLKUiIY5UZyn+
 Bwk0ZW1sAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAAzVSa0yTZxj1/d7v0jY2+VKrfmHLjJ1mhjjReHuWLcbELLyabTEaNWiMFPtt
 7SiXtNqVJWKF6kYnqKgJaBEYF4GqkHbSCgWlMEHwAgVZN+4XCSrOC5dYYbLCsn/nOed5zjk/
 HglWuJkwiS7+iGiIV+tVrIyWffN56qeuXLN2refcCrCXX2OhbTyfAcdbM1zt9zDgLxWguvUt
 BfaySgQTwS4OnGndGMYbGlkoyJ/CEKxIp8H+yErDZPk7DE/uDnLQ5PuHBofza+grHqHB+5Mb
 Q/3kShg808RCunUaQ3bvSRZm/5pmoCb4NwcpnhIK6nPuhcbnNzlorcxg4MK7IgxuS38ocKiT
 gfYqOwvtqW0Ieq/NMjDiC6WOlXRzkOG4hMB3u5SFFOt6GLs5wcGriw0Y+jK2wvssE9zNWwJT
 LWMIuooeUzDr9XDwsPcGAw3lbgo6BoIYpk7nsGB7cQbB4+wqCu7nVDBQ2NJBhXrshs7ZGQrO
 +/NYGLL2IfDXD9Jw+UQGgvLaAAOvvVZ66zZSP/YSE09PISK/lf5JkdGz7ykSqG2myK1LPRzJ
 cx4lrpJwUuB9ShFbwI+JsyyNJc43mRzp7vSypClrmiauwuNk1JWNdn60X/aFRtTrTKIhYku0
 TDv+Rx1KzJWbHbaH2IKaZTYklQj8BqHFO4znMMt/IgQCwXms5NcJ44ONtA3JJJh/sFCocWVR
 c8Ii/qAQPJnPzmGaXyn01zTNH8hDRnW5Kex/pssER8WdeV7KbxSmL2TO84rQTsevFu4skuWh
 BWVIqYs3xal1+o1rjLHapHidec3hhDgnCr1T8bGZcx400R7pQ7wEqRbKoyt+0CoYtcmYFOdD
 ggSrlPLzfpNWIdeok34UDQmHDEf1otGHPpDQqqXyHfvEaAX/nfqIGCuKiaLhf5WSSMMsKKbN
 cqCh9JBy8vgzzO5JDo97XfRV8S+VA8caR5ePKHcscX84lFyX+uLqlYhdM821muE7VyzUZ7g6
 c3Fq+vWoNO/P+/ynFjT/vqmXPqWJ+VYTOfTcvnl56+5wddflj6t0YYtbYjWriF+6LGv1sDs5
 YW/U96vvu8yVlu0xT76M1O/PkSaqaKNWvS4cG4zqfwG0B/LQSgMAAA==
X-CFilter-Loop: Reflected
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=sk.com
Subject: [Intel-wired-lan] [PATCH net-next v11 06/12] net: fec: access ->pp
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

Make fec access ->pp through netmem_desc instead of page.

Signed-off-by: Byungchul Park <byungchul@sk.com>
---
 drivers/net/ethernet/freescale/fec_main.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/freescale/fec_main.c b/drivers/net/ethernet/freescale/fec_main.c
index d4eed252ad40..1d0bd6f75368 100644
--- a/drivers/net/ethernet/freescale/fec_main.c
+++ b/drivers/net/ethernet/freescale/fec_main.c
@@ -1043,7 +1043,9 @@ static void fec_enet_bd_init(struct net_device *dev)
 				struct page *page = txq->tx_buf[i].buf_p;
 
 				if (page)
-					page_pool_put_page(page->pp, page, 0, false);
+					page_pool_put_page(pp_page_to_nmdesc(page)->pp,
+							   page, 0,
+							   false);
 			}
 
 			txq->tx_buf[i].buf_p = NULL;
@@ -1581,7 +1583,8 @@ fec_enet_tx_queue(struct net_device *ndev, u16 queue_id, int budget)
 			xdp_return_frame_rx_napi(xdpf);
 		} else { /* recycle pages of XDP_TX frames */
 			/* The dma_sync_size = 0 as XDP_TX has already synced DMA for_device */
-			page_pool_put_page(page->pp, page, 0, true);
+			page_pool_put_page(pp_page_to_nmdesc(page)->pp, page,
+					   0, true);
 		}
 
 		txq->tx_buf[index].buf_p = NULL;
@@ -3343,7 +3346,8 @@ static void fec_enet_free_buffers(struct net_device *ndev)
 			} else {
 				struct page *page = txq->tx_buf[i].buf_p;
 
-				page_pool_put_page(page->pp, page, 0, false);
+				page_pool_put_page(pp_page_to_nmdesc(page)->pp,
+						   page, 0, false);
 			}
 
 			txq->tx_buf[i].buf_p = NULL;
-- 
2.17.1

