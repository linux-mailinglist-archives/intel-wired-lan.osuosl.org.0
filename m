Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 57135B042C4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Jul 2025 17:10:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8F46B81774;
	Mon, 14 Jul 2025 15:10:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 13LDYvoI-74v; Mon, 14 Jul 2025 15:10:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 06F0E81769
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752505812;
	bh=xylSJYwQA6chy3jYH9i1Li/iApDeEnvB9Diun4X2Pqw=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=R0ohKUZH0WyEcepHrzCSKR7+GW76rH0vusAUQ9tAswj6ItUDcK/xaPhj7xksiJ6AT
	 Lr6Yj6CioYIsCfdSv+vQsOrvgbhUgDJIY5vQZwhMwAwX3gEf92JAgAztW/IemVcfJU
	 D3NWG2OQW6B4f2NlGrVZsSzlRSqwPCywHnd4gVYs3FYM4L5jSVkGwY3j/jwS/IgGHy
	 tLKzhR4nNkg6MXFvC0Ioy8j1kJN6yOpKe9W2hVkPsBjL2gVaoo75XgiCwk8wWFdGJ8
	 uFfIgVqze3UW8UnQAE1JOEp5lVTJ6WtaLyBuL0NYq/gdt2nuMl6hHIwVCzRZWc571j
	 kad2sXWft7mZA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 06F0E81769;
	Mon, 14 Jul 2025 15:10:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7E6DF5E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 12:16:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6463A60A4B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 12:16:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mJ_3nh3KKMNd for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Jul 2025 12:16:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=166.125.252.92;
 helo=invmail4.hynix.com; envelope-from=byungchul@sk.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A844760AA2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A844760AA2
Received: from invmail4.hynix.com (exvmail4.skhynix.com [166.125.252.92])
 by smtp3.osuosl.org (Postfix) with ESMTP id A844760AA2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 12:16:17 +0000 (UTC)
X-AuditID: a67dfc5b-681ff7000002311f-1f-6874f179d144
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
Date: Mon, 14 Jul 2025 21:00:38 +0900
Message-Id: <20250714120047.35901-4-byungchul@sk.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20250714120047.35901-1-byungchul@sk.com>
References: <20250714120047.35901-1-byungchul@sk.com>
X-Brightmail-Tracker: H4sIAAAAAAAAAz2Se0yTZxTGfb/3u7WhyZfK9FMzZ5oRicu8ojmJxjj1jzcao5sxcWoCnXyz
 ndwsF8HEiK5ssQoS0QSwZJWC4xaLRWinLZeWCYLKRaxVgQJGUaxOBRsqKBbM/O+Xc57zPOck
 h8fKh8x8XpuQIukS1HEqVk7LX4YVf5/xJkWz/FT7WjBaqljoGr3IQOV4Ovw9YGegu1yE653j
 FBgr6hCMBR9xYD3Zi2G0uYUF88UAhmB1Ng3GDj0N7yzvMTy5McRBq+sDDZXWbeC79JQGx582
 DO53ETB0ppWFbP0EhoL+LBamHk4w4Ay+4uCEvYwC54taDjrrchg4974Ugy1zIJT12MPA3WtG
 Fu7+3oWgv2qKgaeuUKC/rJeDnMpCBK6GchZO6FeBv3aMg9fnmzH4cjbAx/w0uGGaA4F2P4JH
 pfcomHLYObjTf5mBZouNgp7BIIbA6SIWDC/PILhXcI2CW0XVDJS091ChPXaCZ2qSgrxuEwuP
 9T4E3e4hGi4cz0Fgqfcy8MYROnli3Mhu2Ejc/v8wsfeVIHK1/AFFnuV+pIi3vo0i/xT2ccRk
 TSU1ZUuI2fGcIgZvNybWipMssb49y5Fej4MlrfkTNKkpOUae1RSgHV/vka+LleK0aZJu2foY
 ueZOo51JypKl/xs040zUwBmQjBeFKPH6YNUXLu7Xo2lmhcWi1xvE0xwurBBHh1poA5LzWLgd
 Jjpr8qnpxmxhv9jTlz0jooUI0XfOPMMKYbVYnPWE+mz6jVhZ3ThTlwlrxL+KBmcClCFNvaEE
 T5uKgkUm3m/4A30emCc2lXnpXKQwoVkVSKlNSItXa+OilmoyErTpS/cnxltR6OMuHZ3ca0dv
 O3e6kMAjVZgCRlI0SkadlpwR70Iij1XhipE+nUapiFVnHJF0idG61Dgp2YUW8LRqrmJl4HCs
 UjigTpEOSlKSpPu/S/Gy+Zlo5ZHaFyIsryOFi4o3d7RFHLN2LTvdeOi+w+f27fp248jmfTGB
 H+a1/mob2GLO2v5z/Gv0Y0z7cEekrSo2FZqGdcNs2J7cyYU/DUd68gZNuzuFJv+FZufWfYEr
 X0UeGtM6+MSbv4x/R60r9Z797epBp+dDi9A2qyAyaZM7L4rtqo5W0cka9YolWJes/gQWUuHg
 bQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSe0xTZxjG953v3NrYeCxVj5ro7CQmzsuMc3kXjTGZ0S9LNpcs2UX/0CJH
 21gqaQsBk0UmJUodFW8ZMAhXHVCzg+XS6solBRF0cwgIndJWIRAv3bxwSStoLRj/+73v8+R9
 nj9eHqvdzFLeYLJKZpPOqGWVtPLrLdnrMl9Y9Z/YShOhWL7Mwp3xcgackQz4/YGHgd4aEf7s
 iVBQXNuEYCJ6nwNX7hCG8Y4bLFSWT2GI1uXRUPyPjYZJ+RWG0c5hDrp8r2lwur6C0KUxGrwn
 3BjaJxNh+HQXC3m2aQyFwRwWYvemGWiO/s/BcU81Be0l3fHxaSMHPU0OBs6/uojBnfUgHjgy
 wEDftWIW+rLvIAhejjEw5ounhquHOHA4ixD4WmtYOG7bBOHGCQ6eX+jAEHJshzcF6dBZtgim
 boUR3L94l4KY18PB7eAfDHTIbgr6H0YxTP1SwoL9v9MI7hZeo+CvkjoGqm71U/Ee38JAbIaC
 c71lLIzYQgh624dp+O1nBwK5xc/AC6+N3v4FaQ8/w8QTqEKkoeZfijzKf0MRf8tNilwtCnCk
 zJVG6qvXkErvY4rY/b2YuGpzWeJ6eZYjQwNelnQVTNOkvuoYeVRfiL5Zvke5NVkyGtIl84Zt
 +5X6220eJjVHkXE9WomzUCtnRwpeFD4VK4I2NMussFr0+6N4ljXCRnF8+AZtR0oeC3/PE5vr
 C6hZIUE4IPYH8uZMtJAohs5XzrFK2CxW5IxS746uEJ11bXN7hfCZWFrycC5AHfe02KtwPlKW
 oQ9qkcZgSk/RGYyb11sO6zNNhoz1B46kuFD8nS79NHPGgyb6dvmQwCPtPBU8serVjC7dkpni
 QyKPtRrVk4BZr1Yl6zKPSuYj+8xpRsniQ8t4WrtY9eX30n61cEhnlQ5LUqpkfq9SvGJpFgou
 +DipITLatorU7lE4x/0bBu1rm/dliwnf1d08eCV/pmh+dlNqw05Ld4Xjh55fn3ZuNctydRgj
 98qdx04madaW2hJyPzeGMH+0370kNtK4I8na2rVw4b1SOWnk8d5O+6nA5GD+4u5k3Y/yRxHL
 wQ875ivHll83yZElz5ndoZcaLW3R6zauwWaL7i1WlvDdSgMAAA==
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Mon, 14 Jul 2025 15:10:09 +0000
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=sk.com
Subject: [Intel-wired-lan] [PATCH net-next v10 03/12] mlx4: access
 ->pp_ref_count through netmem_desc instead of page
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

Make mlx4 access ->pp_ref_count through netmem_desc instead of page.

Signed-off-by: Byungchul Park <byungchul@sk.com>
---
 drivers/net/ethernet/mellanox/mlx4/en_rx.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/mellanox/mlx4/en_rx.c b/drivers/net/ethernet/mellanox/mlx4/en_rx.c
index b33285d755b9..92a16ddb7d86 100644
--- a/drivers/net/ethernet/mellanox/mlx4/en_rx.c
+++ b/drivers/net/ethernet/mellanox/mlx4/en_rx.c
@@ -460,9 +460,11 @@ static int mlx4_en_complete_rx_desc(struct mlx4_en_priv *priv,
 
 		truesize += frag_info->frag_stride;
 		if (frag_info->frag_stride == PAGE_SIZE / 2) {
+			struct netmem_desc *desc = pp_page_to_nmdesc(page);
+
 			frags->page_offset ^= PAGE_SIZE / 2;
 			release = page_count(page) != 1 ||
-				  atomic_long_read(&page->pp_ref_count) != 1 ||
+				  atomic_long_read(&desc->pp_ref_count) != 1 ||
 				  page_is_pfmemalloc(page) ||
 				  page_to_nid(page) != numa_mem_id();
 		} else if (!priv->rx_headroom) {
-- 
2.17.1

