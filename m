Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 586AAB042CE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Jul 2025 17:10:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0B18F81DA0;
	Mon, 14 Jul 2025 15:10:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1_PILGyI0uuw; Mon, 14 Jul 2025 15:10:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8253081EB4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752505814;
	bh=L6DW8EZeO0HDjHfPxrXIJ1gWG+DSlXfNXBsaPr6KmPg=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ymnAMYFBM5NJCdVKIK4mWWUNeLh7jcf8xPvpMASf67ljdeEFhn9PsiBRmxFGXPOAi
	 I67alP5l0Fl4s1wdb3aT7D9WGrqQJP4Jua+4XZyQMTcmGS2Yr61e+n6vgTkNAyN/a+
	 lU7v/yatYhEVxKFK+nvUkB+JGpjCDDmqv/6VZCFF8XAvV6n0swS9J4FqIHRvsdRdRk
	 fFyypK3gmfOobwDbtH2nz4V0z4GCNrqm+zOwuXvnDvqgTbkmKz5a5kAQS69KO4DtDl
	 qlC6mqGO40V/HZMXRUHrj8TAn2P8fJGBJhESbyhpgcToOtxLiSg+tbrUO8bGORzufC
	 CwjXLBpKBhNDw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8253081EB4;
	Mon, 14 Jul 2025 15:10:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 50C97AF7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 12:16:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2D5A960ADB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 12:16:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x9JBrBy2p9S1 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Jul 2025 12:16:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=166.125.252.92;
 helo=invmail4.hynix.com; envelope-from=byungchul@sk.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 67D8F60AA2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 67D8F60AA2
Received: from invmail4.hynix.com (exvmail4.skhynix.com [166.125.252.92])
 by smtp3.osuosl.org (Postfix) with ESMTP id 67D8F60AA2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 12:16:18 +0000 (UTC)
X-AuditID: a67dfc5b-681ff7000002311f-59-6874f17afa44
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
Date: Mon, 14 Jul 2025 21:00:41 +0900
Message-Id: <20250714120047.35901-7-byungchul@sk.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20250714120047.35901-1-byungchul@sk.com>
References: <20250714120047.35901-1-byungchul@sk.com>
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSeUxTaRTF/d73Npo+fal2fEKMpm6Jk1EQZnKjxqgx5iVqNPKHUWO0Iy/T
 jmWZgmwZFRWdWGSJW0BLQEFZipYUkQ4UZixEC24IiM+RUqkRUXEDIbQwYqvxv19yzz3nnuSy
 WPWECmX1cUmSMU5r0NAKUvFWeemn9I9JunCTrAaztYqGh8MXKbCMpULZMzsFHRUCNLSPEWCu
 vIHgk+8pA7YTPRiGW27TUHJxFIOvOpsE84NMEkasfgwvbnkZcDn/J8Fi2wSeK/0kOP6qw9A8
 sgC8uS4asjPHMRT0HqNh8r9xChp97xg4Yi8noPFNLQPtN3IoOOO/jKEu41kg63k3BZ31Zho6
 jz5E0Fs1SUG/MxA4WN7DQI7lPALnPxU0HMmMhMHaTwx8ONuCwZOzGj7nJ8Ot4h9g9M4ggqeX
 HxEw6bAzcL/3GgUt1joCuvp8GEZPFtJgepuL4FFBPQF3C6spKL3TRQTuiIbuyQkCTncU0/A8
 04Ogo9lLwoXDOQisTTIFHx2ByuNjZnr1WrF58D0W7e5SJF6veEKIA3mfCVFuaiPEv8+7GbHY
 tl+sKV8sljheEaJJ7sCirfIELdqGTjFiT7eDFl3546RYU3pIHKgpQFtm71CsjJEM+mTJuHTV
 HoVu+PFNlFDEpVpM93EGalOYUAgr8FHCVX89+s7uvFNUkGl+kSDLPhzkGXyEMOy9TZqQgsX8
 PaXQWJNPmBDLTud3CbV5YUENyS8Q5P4GIsgc/7NQJZ/B3zznCJbqf79yCP+LUFTY9zVLFdA0
 mUpx0FPgrSHCg7v51LeFWcLNcpnMQ1wxmlKJVPq45Fit3hC1RJcWp09dsjc+1oYCD3flwMRO
 Oxpqj3YinkUaJQevk3QqSpucmBbrRAKLNTO4126jTsXFaNPSJWP8buN+g5ToRGEsqZnJLRtN
 iVHxv2mTpH2SlCAZv08JNiQ0A019fGza6UjLvNbpNl/UTPUf8eHRhuOhG8LDurM2HFWu9Oz9
 VV3dNr/vXKEV1oSrvYcb3q07uLCzbKNr+azs/ixtQsma1qFL/hVbo+tsU1wftr8ZmYgse7nc
 EhWx+c/1Yy1z1XBtwj/391x3WasyZRvJdQ3oDnStT5c8nI/I+vFFSrqGTNRpIxZjY6L2C6Gn
 Y8hsAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSe0xTZxjG953v3GisOemYnmDiki5kCcm8RN3eqFkMS+TERGMk0YzFjE5P
 1kYo7LQSiuiY7WJsFPGWAOMaCkJLBmkFKtaiLRG0XoAiO05KBTbmpFMRJBQQbF387/fkffI8
 7x8Pi1XtVBKr0xtFSa/JUtMKUrFnm/kL05RRu6H63laoaGmmoX+6lgLHXD5ceeqmYKCJh+t9
 cwRU2NsRzESfMOA8PYxhuruHhrraWQzR1rMkVDy0kPCmZR7D37fHGOj1vSXB4dwN4YYJEjyn
 OjD43yTD2LleGs5aFjCUjfxKw/KfCxTciL5g4KS7kQB/5Z2YnGxjoK+9mIJL8/UYOoqexgrH
 hygIdlbQEDT3IxhpXqZgwhdrjTQOM1DsKEfg62qi4aRlE0TaZhh4dbkbQ7h4ByyV5sHtmlUw
 G4ggeFL/iIBlj5uBByO/U9Dd0kHA4GgUw+yZShqs/51D8Kisk4B7la0U2AKDROyPdBhaXiTg
 4kANDeOWMIIB/xgJv/1SjKDFK1Mw5bGQO74R/JGXWHCHbEi42vSYEJ6VLBGC7L1LCNfKQ4xQ
 4zwquBpThDrPv4RglQew4LSfpgXn6wuMMDzkoYXe0gVScNl+Fp65ytDetRmK7YfFLF2eKK3/
 OlOhnf7jFsqtVuY7rA9wEbqrsKIEluc286GSC1Scae5zXpajOM6J3EZ+eqyHtCIFi7n7K/gb
 rlLCilj2Y+4g31ayJu4huWRenrhOxFnJbeGb5Uv4/8xPeUfrzfecwH3JV1eOojirYh6v1YZL
 kKIGfWRHiTp9XrZGl7VlneGI1qTX5a87lJPtRLE1NRxfPO9GM8E0H+JYpF6hhOdGrYrS5BlM
 2T7Es1idqHwekrQq5WGNqUCUcr6XjmaJBh9aw5Lq1cpdB8RMFfejxigeEcVcUfpwJdiEpCK0
 6dtQaDjQOR4pfNhXNSWF560Nk+b5nJ3yyh/6Tr2a/cfmUiwuzf2U4U854SpN9ZYnn3DRgXBa
 l91+/6+kqvSRBqM57ZNg76oq07Ha9GZp/+DjHq959KvU7zL2ve6/li+t5j3i1n6q8LPJrgQp
 lQ8WRTMLe3Llg3W6RH2goL5ATRq0mo0pWDJo3gF9g0E7SQMAAA==
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Mon, 14 Jul 2025 15:10:09 +0000
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=sk.com
Subject: [Intel-wired-lan] [PATCH net-next v10 06/12] net: fec: access ->pp
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

