Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D4ECB042C5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Jul 2025 17:10:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B49DA60B0C;
	Mon, 14 Jul 2025 15:10:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id inOJMm1MkSCR; Mon, 14 Jul 2025 15:10:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 254D860B14
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752505813;
	bh=HU6vzCUz3a7kHL+3w4GWWqO6hMsGHJzyYb5H/3jE10w=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rGeGMN+dhHhluzv7OmgIN73PkMF9PiLgnBjsxQCZxtB/AZkGcXAlPn+DzrTyiIev2
	 aIIy2RIqQudbbASNqB0qgF4B7eTPNijwnGoviTVNiW9Gqki+l6l7DIswEuxxP25eqH
	 FxwIqXknQ+FkkTbTvliM/s5wgSj1XvF/u3Xpdr2268WC0KkAqqlvIRianoS5/SLVa3
	 u9CWGgHwA0Hemz36iEJ0w/QdNWZE49BgC9seHJylqyhDu6LQdyChgMHuG48YOzm7R9
	 6spmxfsaipkENgUa96RCN9IE8XngPrAczwXOGClscvmUR9wsXObuc4q6iA8v92FPG6
	 FCEbSVo/8T4VA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 254D860B14;
	Mon, 14 Jul 2025 15:10:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 350A2AF7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 12:16:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7544B60AD1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 12:16:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LMg0hJYvbLQw for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Jul 2025 12:16:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=166.125.252.92;
 helo=invmail4.hynix.com; envelope-from=byungchul@sk.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A29B960704
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A29B960704
Received: from invmail4.hynix.com (exvmail4.hynix.com [166.125.252.92])
 by smtp3.osuosl.org (Postfix) with ESMTP id A29B960704
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 12:16:17 +0000 (UTC)
X-AuditID: a67dfc5b-681ff7000002311f-0c-6874f179ae2a
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
Date: Mon, 14 Jul 2025 21:00:37 +0900
Message-Id: <20250714120047.35901-3-byungchul@sk.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20250714120047.35901-1-byungchul@sk.com>
References: <20250714120047.35901-1-byungchul@sk.com>
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSa0yTdxTG93/vrXS+dsS9wxiTLsyoQcQLOx+ct0Tz+sHN6Dcv0Ube2MZy
 SamVuiyigobKLShJ0eJALgNqBFu1RQtKWwVlKlYhVe44sUNAoVApoLXU+O2Xc87zPOckh8Gl
 L8koRpmkEdRJcpWMEhPikYgrMboxjWJV12A8GGuvUvDMV0qCaSoN/umzkeCu5uBO2xQGxppb
 CCYCnTSYs7pw8LmaKSgr9eMQqMshwPg0g4DJ2mkc3jwYoKHF8YkAk3kH9FYOEmA/a8XBORkN
 A3ktFORkzOBQ1JNJQfDVDAkNgVEaTtmqMGh4d5OGtlu5JFyYrsDBmt4XynrdQcLz20YKnp9+
 hqDnapCEQUcocLiqi4Zc00UEjrvVFJzKWAPDNydo+FDowqE3dxN8NmjhQclC8LcOI+isaMcg
 aLfR8KTnGgmuWisGL/oDOPiziynQj+QhaC+6jcG/xXUklLe+wEJ77IaO4CwG590lFLzO6EXg
 dg4QcOlkLoLaRg8JY/bQyTNTRmrTFt45/B7nbd3liL9R/RLjvfmfMd7T+Ajj6y9203yJ+Shv
 qVrOl9n/x3i9x43z5posijePF9B8V4ed4lsMMwRvKT/Bey1FaOfiPeL1CYJKqRXUsRsOihWT
 91x0yuXv0+r6Cqh09N88PWIYjl3LtZ9br0eiMA4VB+k5ptilnMcTwOc4ko3jfAPNhB6JGZx9
 HME1WAzYXOMHNpnL9lnCTLDR3ETQGhZL2HVc5mwH+mq6hDPV3Qsbidh47u/i/nBdGppp1Jfj
 c6YcWybipkcn6K+Cn7imKg+RjyQl6LsaJFUmaRPlStXalQpdkjJt5aHkRDMKPVzlX7N7bWi8
 bbcDsQySRUhgSKOQknJtqi7RgTgGl0VKhrrVCqkkQa47LqiTD6iPqoRUB1rEELIfJav9xxKk
 7GG5RjgiCCmC+lsXY0RR6WjbgtLfrMrm9hv7tKOc/Oeduvm/R5mXbXQ29WY+NNXT3nTVr5b7
 vsEK0RPYyv4RYWzdXOj+eF17ffWu+A2ud9ObY37JcuaM+Dv/TPHmx9Wbmvdg2+nCRFvP+BtD
 vnLd/vtj2Y8LzmhiH0Lfq2OxwcrSyOi3i/N29a+4sMMbU2ZocsiIVIU8bjmuTpV/AZqG1HJs
 AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSa0iTcRTG+7/XuZy9LKkX7QILCaI0K+NAVyroJTCKqKAvOfStLZ3WpmPr
 QqaTaKSZ3dRcaS7zEmlbtmXTYhtey1JT5v1WUbay8kJTa02jb79znnOe53w4AlxsIYME8vhE
 XhkvjZNQQkK4d1PqGu2PRNla94XlkFf+kIKWsQISyn5p4MGAlYTWEhaev/2FQV7pUwTjnm4a
 TJd6cBhz1lFQWDCJg6cinYC8NzoCJsqncPhQO0RDvf03AWWmSOgv+kiA7aIFB8dECAxdqacg
 XTeNQ05fGgXermkSqj3faEixFmPgMDT4yi+VNLx9mkHC9an7OFiSB3yBwx0ktFXlUdCW2oKg
 76GXhI92X6q7uIeGjLJcBPYXJRSk6NaDu3Kchu83nDj0Z2yHP9lqqM1fBJNNbgTd99sx8Nqs
 NDT3PSLBWW7B4N2gB4fJywYK9F+vIGjPqcLglaGCBGPTO8x3xwHo8M5gcK01n4JhXT+CVscQ
 AbcvZCAor3GR8MOmI7bv5BzuUZyz9hoR96SkE+M+Zf7BOFdNI8Y9y+2luXxTEmcuXsUV2j5j
 nN7VinOm0ksUZ/qZRXM9HTaKq8+eJjiz8Tz3yZyD9i07Itwcw8fJ1bwybGuUUDbx0kmfvBOg
 qRjIopLR+/l65CdgmQ3siMFLzzLFrGRdLg8+y4FMODs2VEfokVCAM6/92WpzNjYrLGQS2Mtj
 5jkmmBB23GuZWxYxEWzaTAf6Z7qcLat4OWfkx2xk7xoG5/pi30yN3ohnImE+mleKAuXxaoVU
 HhcRqoqVaePlmtDoBIUJ+d6p6NzMVSsab9ttR4wASfxFMJIoE5NStUqrsCNWgEsCRSO9SplY
 FCPVnuaVCUeVSXG8yo6CBYRksWjPYT5KzByXJvKxPH+SV/5XMYFfUDLaumhpwPnm3Eey1Wcy
 w+sljruDo9sioxXaLZrHa7tuLs1mV8QaVyY5gyWj0ggiqkczEPlhxYmDNsuehq/OoCj/syG/
 1a5vvY8tiuRnU9cLd4SlVIYHp1WFCZsXNHUe2tV4Sj7Ycisg9ciouV1StK70Z5phiTcySzxj
 bT528J4mXbZfQqhk0vBVuFIl/QvMoNwuSgMAAA==
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Mon, 14 Jul 2025 15:10:09 +0000
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=sk.com
Subject: [Intel-wired-lan] [PATCH net-next v10 02/12] netmem: use
 netmem_desc instead of page to access ->pp in __netmem_get_pp()
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

To eliminate the use of the page pool fields in struct page, the page
pool code should use netmem descriptor and APIs instead.

However, __netmem_get_pp() still accesses ->pp via struct page.  So
change it to use struct netmem_desc instead, since ->pp no longer will
be available in struct page.

While at it, add a helper, pp_page_to_nmdesc(), that can be used to
extract netmem_desc from page only if it's pp page.  For now that
netmem_desc overlays on page, it can be achieved by just casting.

Signed-off-by: Byungchul Park <byungchul@sk.com>
---
 include/net/netmem.h | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/include/net/netmem.h b/include/net/netmem.h
index 535cf17b9134..2b8a7b51ac99 100644
--- a/include/net/netmem.h
+++ b/include/net/netmem.h
@@ -267,6 +267,17 @@ static inline struct net_iov *__netmem_clear_lsb(netmem_ref netmem)
 	return (struct net_iov *)((__force unsigned long)netmem & ~NET_IOV);
 }
 
+static inline struct netmem_desc *pp_page_to_nmdesc(struct page *page)
+{
+	DEBUG_NET_WARN_ON_ONCE(!page_pool_page_is_pp(page));
+
+	/* XXX: How to extract netmem_desc from page must be changed,
+	 * once netmem_desc no longer overlays on page and will be
+	 * allocated through slab.
+	 */
+	return (struct netmem_desc *)page;
+}
+
 /**
  * __netmem_get_pp - unsafely get pointer to the &page_pool backing @netmem
  * @netmem: netmem reference to get the pointer from
@@ -280,7 +291,7 @@ static inline struct net_iov *__netmem_clear_lsb(netmem_ref netmem)
  */
 static inline struct page_pool *__netmem_get_pp(netmem_ref netmem)
 {
-	return __netmem_to_page(netmem)->pp;
+	return pp_page_to_nmdesc(__netmem_to_page(netmem))->pp;
 }
 
 static inline struct page_pool *netmem_get_pp(netmem_ref netmem)
-- 
2.17.1

