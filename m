Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 44271B042D0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Jul 2025 17:10:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 542CB81DE2;
	Mon, 14 Jul 2025 15:10:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1Z-Z98aGdsPb; Mon, 14 Jul 2025 15:10:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C271781EEC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752505815;
	bh=CeDMN0y2LxxzXxmac8Sov5r+FiCgBlJtQe7PAfm7O1w=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vEt+6X6eUX+/MD0GLmV9AwxKyiZxVCZJ9Trb9dXqbt6jID/IaMPoenxeYVsT+Ypug
	 r0HtZ5kjJWLLzOnI5Hk89jbFnwRavfK4xibLEFtOJqHijCpQjxR6feCzuSFj2wpdbv
	 6RKAat9dK7kRdh2wW0OCViH5Xoss8b/WEID7BBo792OyHfNR2ZZbO7oovCqli+cpSp
	 Jcitfg+epxGroNeAodNycKHGeX1M1Rx7NAnIbFGwUwehneKrxwiDHZzltdzBky4oBW
	 b6G4q8700qaCzKmUJXiEJiTYzjx9tbp+TQnFodEkV0j+nvWzKr8plSZY7vSM7VWS8C
	 YDPgxCeHN1ADA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C271781EEC;
	Mon, 14 Jul 2025 15:10:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id A23525E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 12:16:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E15FF60AD1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 12:16:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FvDLlEU8IIFz for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Jul 2025 12:16:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=166.125.252.92;
 helo=invmail4.hynix.com; envelope-from=byungchul@sk.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3285C60AA2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3285C60AA2
Received: from invmail4.hynix.com (exvmail4.hynix.com [166.125.252.92])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3285C60AA2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 12:16:19 +0000 (UTC)
X-AuditID: a67dfc5b-681ff7000002311f-a1-6874f17a7c3b
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
Date: Mon, 14 Jul 2025 21:00:45 +0900
Message-Id: <20250714120047.35901-11-byungchul@sk.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20250714120047.35901-1-byungchul@sk.com>
References: <20250714120047.35901-1-byungchul@sk.com>
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSe0yTZxTG9373NjT5Uo37xC26GhVNEPF6shglRpP3H5JtJiOD7NKsX2yV
 ixaoQDQy7QJUBdRNQEvAUbEFspKiULVc1qI04AUrkMpVSiRM640iUlCxxfjfL+fJ8zznJIcj
 5Y/oSE6TmiFqU5XJCkZKSZ9H/BOd8zpDveF8STQYrXUMPAhcoqF2JguuPLbT4LEIcLN7hgBj
 TSOCqeAAC7aCQRIC7R0MVF2aJiFYf5oC4309BW+ssyQ8ue1jwe18T0GtLR5GqscpcOQ1keB6
 swp8RW4GTuvnSCgb/pOB+f45GpqDL1g4bjcT0PzsGgvdjYU0/DV7mYSm3MehrrE+Gh7eMDLw
 8MQDBMN18zSMO0OFfvMgC4W1FxA4Wy0MHNdvAv+1KRZe/d1OwkhhHHwo1cHtyiUw3eVHMHC5
 l4B5h52Fe8P/0tBubSKgZzRIwvSpcgYMz4sQ9JbdIOBOeT0Npq4eIrTHXuibf0fAOU8lA2P6
 EQQel4+Ci38UIrC2eGl47QidPDdjZOJ2YZf/JYntQyaEr1oeEXii+AOBvS2dBL5+YYjFlbZM
 3GBeh6sc/xPY4PWQ2FZTwGDb5FkWD/Y5GOwunaNwg+kYnmgoQ999nSjdrhKTNTpRG7PjN6n6
 fGcHfbCHzbLP5LO5yMIYEMcJ/Gbh/WCsAUkW8Jw5lwkzw68RvN4gGebFfKwQ8HVQBiTlSP5u
 hNDcUEqEhUX8T8LY2yAVZopfJZx8UbdgkPFbBVfgGfEpdLlQW9+2MJeE5hXloyjMcn6L0GIw
 keFQga+SCNZRJ/vJsFT4z+ylipGsEn1Rg+SaVF2KUpO8eb06O1WTtf73tBQbCj1c9dF3SXY0
 2b3XiXgOKSJk8DRDLaeVuvTsFCcSOFKxWPZ0SKuWy1TK7BxRm/arNjNZTHeiZRyl+FK2cfqw
 Ss7vU2aIB0TxoKj9rBKcJDIXxZjG4/f175bkZWeeOLk8avIrHxcd9TJStauzxEP4ftiJ1q5J
 wm1pFXUx36/8sSNpUd7qRDyqd1Tof576JiEnqtEdXLu7M2uFUxXwdd/TcSnLGjfu//aXhAnL
 qy7ztlZt/lXzSjbB3TteP3Ug/9aekrRZf+K26pyLR+KXus4eOnbmiIJKVytj15HadOVHeN9t
 OWwDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSe0hTcRTH+93nHC0uS+r2oGgkQZT2Mg89TIrqEiVFRBS9bnVpq2m1qalQ
 aS6qVbOnuHK4cpU6azqzLVtam+SrpzpZqdOU3vb0kWulTaP/Puf75Zzv948jwqU2cqxIERsn
 qGJ5pYwSE+Lo+WnTk7/HyWcU1oyGLEsBBS+6rpBg7kuEG212EuryWLj3vA+DrPw7CLp9TTRY
 TzTj0FVRSUHOlV4cfIWnCch6piGgx/ILhzeP2mmocv4hwGxdBa3X3xLgOGbDwdUTAu3pVRSc
 1vhx0HuPUjDwyk/Cfd8XGo7YczFwGaoD46cSGp7f0ZFw4dc1HGwpbYHAjkYS6kuzKKhPe4HA
 WzBAwltnILUzt5kGnfkSAmd5HgVHNLOhs6Sbhm8XK3Bo1UVBf2YCPDKOgt7aTgRN19wYDDjs
 NDz13iKhwmLDoOG1D4feUwYKtJ/TEbj1pRg8NhSSYKptwAI91kLjwG8MztcZKejQtCKoc7UT
 cDlVh8BS5iHhu0NDRC3hXJ1fcc7eYkLc7byXGPf+TD/GecpqMO7upRaaM1rjueLcqVyO4wPG
 aT11OGfNP0Fx1h/naK650UFxVZl+gis2HebeF+vR6gkbxQt2CkpFgqAKi9wmlmfUVJL7GuhE
 e99xOgXlUVoUJGKZOez53JQhppgprMfjwwc5mJnJdrVXElokFuHMk+Hs/eJMbNAYyWxgO376
 iEEmmBD25JeCoQUJM5d1dX3C/h2dyJoLHwzpQQE92/AaDbKUCWfLtCb8DBIb0bB8FKyITYjh
 FcrwUPUeeVKsIjF0x94YKwq80/WDv8/aUXf9cidiREg2XAIf4+RSkk9QJ8U4ESvCZcGSjy0q
 uVSyk09KFlR7t6rilYLaicaJCNloyYr1wjYps4uPE/YIwj5B9d/FREFjU1Dq8hh9S3TPMHPb
 4gvZxihlqT+y5NyYyfHetMgtGdPE0SPmz1q0ome8OzMjf9nupZIQybybqYaix/2bLe7ytUWJ
 1VOy05ObHuaE9WZX8Zv07xTz0mymV/6nG9yCPF235l7rOyjfLjtQuzDiED99e1iNdNR+77rd
 EZMizBGWlVdlDctkhFrOz5yKq9T8X5jRLupKAwAA
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Mon, 14 Jul 2025 15:10:09 +0000
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=sk.com
Subject: [Intel-wired-lan] [PATCH net-next v10 10/12] mlx5: access ->pp
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

