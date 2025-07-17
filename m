Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4144BB085CB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Jul 2025 09:01:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C36476159D;
	Thu, 17 Jul 2025 07:01:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dV7Zwx4VKF9W; Thu, 17 Jul 2025 07:01:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 419B7608A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752735684;
	bh=CeDMN0y2LxxzXxmac8Sov5r+FiCgBlJtQe7PAfm7O1w=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Q0QEAd+VHMXM3iNfbdv2mpVQUfjxqtCsCYM5iNdaI/0Mz17DT7iZPBmCRhFMcr2FT
	 3Mo1NAQNtjCmUriS70Io+ipBuIxZBFrO/nhZbKv+0iuVw+OtaIVSOjaCIAg14Pvfl4
	 uRDlJSevIWn7/C8xtPY5+tfMcUfiu6DMOdwgdsYvKZXt2Zg6eOvZHgbNXy1IZH3TI/
	 8o73PRsiHcCtFpX3zvpffADVDE7bqY15gLgltwSdRtJL+IUxANhEGUoBHC4+MaNMh+
	 oEjF4TjT+Z1LNMU9Yntonmgu98ILDft6sgX+G/rvoBkOwOrwrHuQmuPdSdK2jvhrHP
	 vqHDYXpRCrc9g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 419B7608A2;
	Thu, 17 Jul 2025 07:01:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0D82C95B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 07:01:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D3A224142B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 07:01:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VugXc6iBeh0P for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Jul 2025 07:01:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=166.125.252.92;
 helo=invmail4.hynix.com; envelope-from=byungchul@sk.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D10354117D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D10354117D
Received: from invmail4.hynix.com (exvmail4.hynix.com [166.125.252.92])
 by smtp4.osuosl.org (Postfix) with ESMTP id D10354117D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 07:01:13 +0000 (UTC)
X-AuditID: a67dfc5b-669ff7000002311f-72-68789fb4929b
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
Date: Thu, 17 Jul 2025 16:00:50 +0900
Message-Id: <20250717070052.6358-11-byungchul@sk.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20250717070052.6358-1-byungchul@sk.com>
References: <20250717070052.6358-1-byungchul@sk.com>
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSbUxTdxTG/d93GprddMruSsyWZmQGMxXF5HxAQpbF3MSMmJiYoVlmIzdr
 Q6naYi1zy5jUCN2oiGxCrQGxuvKisBZtwRa1JUKKL1BeUgHB1azBAG6ANC11Yovx2y/nyfM8
 5ySHwSVPSCmjVJcIGrVcJaNEhGg+temLzga9YlvcLAVLexsFQ0uXSWiN6uHPZy4SAs0c3B6M
 YmBpuYXgVWyCBnvlJA5LvX0UXLkcwSHWUUWA5bGBgOX2FRz+uR+iod/7PwGt9q9h+lqYAPcZ
 Jw6+5QwIne2noMoQx6F+6jQFq+NxEjyxlzScctkw8MzepGHwlomE2pWrODjLniW6no+RMNxt
 oWC4fAjBVNsqCWFvonDONkmDqdWMwHunmYJThh0wd/MVDf/93ovDtCkP3tTp4H5jGkQG5hBM
 XB3FYNXtouHR1A0SetudGIz8HcMh8tslCozzZxGM1ndj8OBSBwnWgREsscc+GFt9jcH5QCMF
 zw3TCAK+EAEXfzEhaO8JkrDgTpwcj1qovC9539y/OO96akV8Z/MTjJ+pfoPxwR4/xneZn9J8
 o/0477Bl8lfcLzDeGAzgvL2lkuLtizU0Pznmpvj+ujjBO6w/8zOOerR34wFRTqGgUuoEzdbc
 QyLFH/4+8ugIrXdFK+gy1EwZEcNwbDa3YMo1opQ1dLqMRJIp9nMuGIzhSV7PZnFLob7EXMTg
 7MNUzuOow5LCh2wB569oWjMQbAZ3MXyBTLKY3cmFqhfxd6GfcK0dd9c4JTGP19ZQSZYkykaa
 yuhkKMc2pHANF7rQO8PH3D1bkKhG4ka0rgVJlGpdsVypyt6iKFUr9VsOHym2o8TDXfvp9UEX
 Whzc50Usg2Sp4kMdJxQSUq7TlhZ7EcfgsvXi8wGdQiIulJf+IGiOfKc5rhK0XpTOELKPxNsj
 Jwol7PfyEqFIEI4KmvcqxqRIy9BXKqd6rGi4ej6cM+r5bHmm/K/TVr9xdmLp3P6TC2aPu2iI
 +fTbSHqJZqh+3L/r2H6PK+uuOxbO+NFRLj+wuZvN3FSYf/3wsYKcvV3fnLm9a/Oj4ZxJm/aF
 Z14a3DBeYLCWU8a8hZfR6zXZd3bn95jTPuj02fS5s9ukvqpf97RxQRmhVcizMnGNVv4W5kW2
 9WwDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSe2xLcRTH/e7vPrpmlasWrnk3EUK8YpLjvZBwIwiZRDwSq7m00XXSTm0E
 RcU2bDPDnnQP7CE23WjRIW1jD2O01RR7ULF4zHPTrIrqJv77nPPNOZ/zxxFhqZmKFinVyYJG
 LVfJaDEpXrPg6PT6iymKWUYDhqKaqzQ87S2hoLo/Ba68slDgrOTgzpN+AoqqbiLoC7xkwJTe
 jqHX0UhDWYkfQ6D2FAlFbQYSftT8xPD2gY+BJttvEqpNq6HrcjcJ1uNmDPYfk8CX1UTDKUMQ
 Q37nMRpCL4IUNAQ+M3DEUkGAvbg5XH68wcCTm5kU5P68hMGsfxUWvvFQ4LpdRIPr6FMEnVdD
 FHTbwtaeinYGMqsLENjuVdJwxDAHem70MfD1rANDV2Ys/MnTwQPjCPA/7EHw8tIzAkJWCwOP
 O69R4KgxE+B+HcDgP1lMQ8anLATP8m8T0FpcS0H5QzcRviMOPKFfBJxxGml4Y+hC4LT7SCg8
 nImg5q6Xgm9WAxm7jLf3fMG8paMc8fWVzwn+XfYfgvfebSH4WwUdDG807eHrKqbyZdb3BJ/h
 dWLeVJVO86bvOQzf7rHSfFNekOTryg/x7+ry0dpxm8QLtwsqpU7QzFwcL1aca2mkdruZFEt/
 GqNHlXQGihBxbAxntmSQA0yzkzmvN4AHOIqdzfX6GsN9sQizjyK5hro8YiAYzm7kWtJKBwdI
 dhJX2H2eGmAJO5fzZX/H/5aO56pr7w9yRLgfzM0ZlEnDMnepnslGYiMaUoWilGpdolypmjtD
 u0uRqlamzEhISjSh8DtdPvDrtAX1uVbYECtCskhJfO1ehZSS67SpiTbEibAsSnLGqVNIJdvl
 qfsETdJWzR6VoLWh0SJSNlKycoMQL2V3ypOFXYKwW9D8TwlRRLQeyUplY9T3Yl4wE1raLqgm
 R6yJ0yTdOeZbHyN29fpH7zjY1pyjLUj+vGiJJXfs2QUljvND01cbVrmXLs/1uCrIUdFTVnx1
 nhiWkOOPTVs0L+FWx9Zps2TXjzckz7Nva42bv3/bx/uOVYfpssjgxPqFMw96vOrCD5tLyta1
 Cs36rGVb4kMyUquQz56KNVr5X2kwSOZKAwAA
X-CFilter-Loop: Reflected
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=sk.com
Subject: [Intel-wired-lan] [PATCH net-next v11 10/12] mlx5: access ->pp
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

Make mlx5 access ->pp through netmem_desc instead of page.

Signed-off-by: Byungchul Park <byungchul@sk.com>
---
 drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c b/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c
index 5ce1b463b7a8..5d51600935a6 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c
@@ -710,7 +710,8 @@ static void mlx5e_free_xdpsq_desc(struct mlx5e_xdpsq *sq,
 				/* No need to check page_pool_page_is_pp() as we
 				 * know this is a page_pool page.
 				 */
-				page_pool_recycle_direct(page->pp, page);
+				page_pool_recycle_direct(pp_page_to_nmdesc(page)->pp,
+							 page);
 			} while (++n < num);
 
 			break;
-- 
2.17.1

