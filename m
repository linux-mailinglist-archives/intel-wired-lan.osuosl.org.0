Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA68B085C4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Jul 2025 09:01:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C10C24117D;
	Thu, 17 Jul 2025 07:01:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8JEXtXDeAS4S; Thu, 17 Jul 2025 07:01:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 32AB441155
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752735675;
	bh=LZAYt3p2mhaflBBar9NtS/KWmCevqxu4ijXBt8SATlQ=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KtS9hPY6gnLMJhC2VwYolehatBYkyzGb17QPvf6m/R09NHXLFdsi/4W99QbS/3H5C
	 0Je1oNVH2R7Ual7kNixwAzywCmWB5jh35O1/6SIHCsymuaQlgxLIzcJ3Fv/DdKX8o6
	 H1UGBS1cJJsKiCqIpN8ny+SnxeNnFoVT8xolusLctYK4I8SzN7id4pp6nmj2EFx9s3
	 sh3h38pRP88aYrlvI0FIB0Uc6EgKEKhqOIk0U+5IQRR+GwSsFWzyWSHGwB4FXOpHll
	 p9SWAzHnNsnE/0aQ3RUPr3f7/qrddrI/izwY84SLmWH30FS74chV1sHsIBPVxfJhCR
	 GzohRvKe55ABw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 32AB441155;
	Thu, 17 Jul 2025 07:01:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1D71C95B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 07:01:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 821854111F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 07:01:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tiNip7l2oqdK for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Jul 2025 07:01:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=166.125.252.92;
 helo=invmail4.hynix.com; envelope-from=byungchul@sk.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A589341120
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A589341120
Received: from invmail4.hynix.com (exvmail4.skhynix.com [166.125.252.92])
 by smtp4.osuosl.org (Postfix) with ESMTP id A589341120
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 07:01:10 +0000 (UTC)
X-AuditID: a67dfc5b-669ff7000002311f-dc-68789fb3dfbc
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
Date: Thu, 17 Jul 2025 16:00:42 +0900
Message-Id: <20250717070052.6358-3-byungchul@sk.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20250717070052.6358-1-byungchul@sk.com>
References: <20250717070052.6358-1-byungchul@sk.com>
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSbUxTZxTH99znvrVyl5v6skuNGmvIkkbZ3CA5IdMpJuZ+0Zj4ZdMP0ow7
 WweFtVJAY2SKMzYKBEVAKxYFhdbYph1SobitVEAdrlYkRV7Fl+iEKaINpWgtqN9+yfnl/z8n
 OSxW9FFKVqffLRn0miwVLSfl4wm1q9xnC7Rf9/uXg8VxiYY7k7UU2KcK4OKIh4JgowCtgSkC
 LLYrCF5H+hlwHRnAMOnvpOF8bRhDxHmMBMu/xSS8cUxjeNwxykCX7y0JdtcmGL7whATv4WYM
 7W+SYLS0i4ZjxVEM1UOHaIjdj1LQFvmfgQOeBgLanjcxELhSQsGJ6XoMzUUj8a6HvRTcbbHQ
 cPfgHQRDl2IUPPHFC8caBhgosZ9C4PuzkYYDxd/CWNNrBl5W+DEMl6yDd1Um6LAugvCtMQT9
 9fcIiHk9DNweukyB39FMQM+DCIbw0TM0mMdLEdyrbiHgnzNOCupu9RDxPbZCb2yGgONBKw0P
 i4cRBNtHSTj9WwkCx7UQBRPe+MnRKQu9Ll1sH3uBRc9gHRL/aOwjxKdl7wgxdO0mIV49NciI
 Vlee6G5Qi+e9zwjRHApi0WU7QouuV+WMONDrpcWuqigpuuv2i0/d1WjLkm3y7zKlLJ1JMny1
 NkOuPdlopXMr+YKh3pu4CNk4M5KxAp8ixNpr6E98vfk6Mcs0/6UQCkXwLC/gVwuTo52kGclZ
 zHcnCG3uqjlpPp8jXLS8nWOSTxLaus3MLHPxoJ6RYeZD6DLB7vxrLkjGpwrRE+VzZYpZ51zR
 R8chE+zjaR84Ufi7IUSWIc6KPrMhhU5vytboslKStYV6XUHyTznZLhR/uAv7ZrZ70KvAVh/i
 WaRK4DKc+VoFpTEZC7N9SGCxagF3PGjSKrhMTeEeyZCzw5CXJRl9aDFLqr7gvgnnZyr4nZrd
 0i+SlCsZPk0JVqYsQkpD5Y3BZJl64r8f7y+s+DwtMWV71LgzCT8en8c8bxVkqXreGevLD1es
 iMnYRy+oRc4HM0q16VxlzZKNpd+nKwPkljJ9/dr0vM3ZG9QhYgNwHfam8ozc9S2TK/dGE9cv
 XbNr+obNkHY4LaXm19+vhgKpjmW1dd1HofUHrnPiZ7+KNGo1q9XYYNS8B5/yaN1sAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSbUxTZxTHfe5z32hsci1kXF0ysibGSNQpzuT4EuPilj0j2TTxg8mSRW7k
 Zm2AlrVawUytUGJsJjJ1Cq7EIi9SaqRrhXZadCkoDHyj1KYb0GJRZBnDTZBQEVnLsm+/k/PP
 738+HB6rvMwKXqs7IBt0UqGaVdCKL7aWr/VcKtGsbx/jwdZ6lYX+qToGnLMlcGXEx0DQIcLN
 R7MU2FraEUwnBjlwnxzCMNXVzUJ93QyGhOsUDbaHFhpetb7G8OxunIOewDwNTvfnEGsao8F/
 wouh89VKiJ/uYeGUZQ5DTbSChYXf5xjoSExyUOZrpqCz9tfk+GcbB4/aKxk497oRg9c8kiwc
 DTMwcMPGwkB5P4Lo1QUGxgLJ1onmIQ4qnRcRBG47WCizbISJtmkO/v6hC0Oscge8rTbBXfs7
 MNM3gWCw8TEFC34fBw+i1xjoavVSEHqSwDDzXS0L1r9OI3hcc4OCe7UuBhr6QlTyjj0QXnhD
 wdmgnYVRSwxBsDNOw4/HKxG03oow8I/fQu/YSTonXmDiG25A5LrjN4qMV72lSORWL0V+vjjM
 Ebv7IPE0Z5N6/x8UsUaCmLhbTrLE/fIMR4bCfpb0VM/RxNNwjIx7atDu975UbMuXC7Um2fDB
 9jyF5rzDzhZfEEqi4V5sRi1KK0rjReFD8Y73DpViVlglRiIJnOIMYYM4Fe+mrUjBY+H+UrHD
 U70YShf04hXb/CLTwkqx476VS7EyKQqNxLj/pFmi0/XLoihN2CTOnTvDpliVylw2c1VIYUdL
 WlCGVmcqkrSFm9YZCzSlOm3Juv36IjdKvlPTkTff+9D0wKcBJPBIvVSZ5zqkUTGSyVhaFEAi
 j9UZyrNBk0alzJdKD8sG/T7DwULZGEDv8rQ6U5m7V85TCV9LB+QCWS6WDf9vKT5thRllnVde
 yJZmtyWq5tOfklBuljNa6xyb3ntif8fyskHnJ3Tfzm9yHkZy9N/+VLFv1eavTLyitM0d7Tm6
 7EXuZ0+7G6eOj8fMmf2YPaI4VDd5qVyb9tHq3WsTk6HVhzdf179ML85ck1M/vKXg46K2m73b
 n+frpF3x8QeuUceSsopYePh9NW3USBuyscEo/Qsv5N79SgMAAA==
X-CFilter-Loop: Reflected
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=sk.com
Subject: [Intel-wired-lan] [PATCH net-next v11 02/12] netmem: use
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

While at it, add a helper, __netmem_to_nmdesc(), that can be used to
unsafely get pointer to netmem_desc backing the netmem_ref, only when
the netmem_ref is always backed by system memory.

Signed-off-by: Byungchul Park <byungchul@sk.com>
---
 include/net/netmem.h | 20 +++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/include/net/netmem.h b/include/net/netmem.h
index 535cf17b9134..097bc74d9555 100644
--- a/include/net/netmem.h
+++ b/include/net/netmem.h
@@ -247,6 +247,24 @@ static inline unsigned long netmem_pfn_trace(netmem_ref netmem)
 	return page_to_pfn(netmem_to_page(netmem));
 }
 
+/**
+ * __netmem_to_nmdesc - unsafely get pointer to the &netmem_desc backing
+ * @netmem
+ * @netmem: netmem reference to convert
+ *
+ * Unsafe version that can be used only when @netmem is always backed by
+ * system memory, performs faster and generates smaller object code (no
+ * check for the LSB, no WARN). When @netmem points to IOV, provokes
+ * undefined behaviour.
+ *
+ * Return: pointer to the &netmem_desc (garbage if @netmem is not backed
+ * by system memory).
+ */
+static inline struct netmem_desc *__netmem_to_nmdesc(netmem_ref netmem)
+{
+	return (__force struct netmem_desc *)netmem;
+}
+
 /* __netmem_clear_lsb - convert netmem_ref to struct net_iov * for access to
  * common fields.
  * @netmem: netmem reference to extract as net_iov.
@@ -280,7 +298,7 @@ static inline struct net_iov *__netmem_clear_lsb(netmem_ref netmem)
  */
 static inline struct page_pool *__netmem_get_pp(netmem_ref netmem)
 {
-	return __netmem_to_page(netmem)->pp;
+	return __netmem_to_nmdesc(netmem)->pp;
 }
 
 static inline struct page_pool *netmem_get_pp(netmem_ref netmem)
-- 
2.17.1

