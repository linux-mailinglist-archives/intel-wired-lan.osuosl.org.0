Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6806BB042C8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Jul 2025 17:10:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 12EE381EB1;
	Mon, 14 Jul 2025 15:10:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k2bYniheDvGk; Mon, 14 Jul 2025 15:10:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 933BC81DF8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752505812;
	bh=9r9AqzJSLA1D1ZaSzMEcs3ZbuUbrvaNUswiizKwmHwU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=76N8xL6xugH4bLs9rQWz6/JiU+0Db+n2Ke/43AmYyPmrXU/1a4lSN9H8whnJ3cCD3
	 cCw5rdfWNxRM7nAu8l7jizPozMZJfCrfsLfAtUxFcBygNcBqDwRnJlM25Y94cVb5+q
	 RRlClfKjQSpbyEV3EYZOncPkorW6lfP69VZXSicyFYA+2s0NcN6v/Z3hwgjyIChlIf
	 bIPpt+5zd8n4j/ZGkqPDgYOM9GmVtPN+BPorJnnp6lSwqvBp311GOP4A8CHq5fGCeE
	 9vMO6iUK2/r91W4VNFvx92S6DPELyhBepICqiArUgPjIOc2wZj2CKO/zyf3C93ZOx5
	 mudOb0kHHQ4FQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 933BC81DF8;
	Mon, 14 Jul 2025 15:10:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 28E55DF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 12:16:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1B297404A0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 12:16:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NGwfIf3bCA0N for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Jul 2025 12:16:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=166.125.252.92;
 helo=invmail4.hynix.com; envelope-from=byungchul@sk.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 508B140472
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 508B140472
Received: from invmail4.hynix.com (exvmail4.skhynix.com [166.125.252.92])
 by smtp2.osuosl.org (Postfix) with ESMTP id 508B140472
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 12:16:18 +0000 (UTC)
X-AuditID: a67dfc5b-681ff7000002311f-46-6874f179b704
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
Date: Mon, 14 Jul 2025 21:00:40 +0900
Message-Id: <20250714120047.35901-6-byungchul@sk.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20250714120047.35901-1-byungchul@sk.com>
References: <20250714120047.35901-1-byungchul@sk.com>
X-Brightmail-Tracker: H4sIAAAAAAAAAzVSe0xTdxjd7/7uqw1dbgqyK8aQNSNGEvExIJ8J29Rkyf3HR2IyowTn3bix
 jYCkIK+EjCHGWAXdmLFIyUAqtlQtaRU6LA8LFuKLp6QqBSxInCIKKKFW6VrM/js55zvnfF/y
 sVjpoWJYTVaupM0SM1S0nJS/jri0oWguV73pZJ8CDNarNAws1FFgWSqAKxMOCgbNPNzqXyLA
 0NiM4J3/KQO2U6MYFrp7aKivW8TgbyonwdBXRsJ76wcMz90+Bnpdn0iw2HbCeMM0Cc6TLRi6
 3seB72wvDeVlAQxVYydoCD4JUNDmn2Wg1GEioO3VTQb6myso+OvDZQwtJROhrskRCoZaDTQM
 HR9AMHY1SMG0K1Q4YxploMJyEYGrw0xDadm3MHPzHQNvz3djGK/YBsv6PHDXRsPivRkETy8/
 IiDodDDwcOw6Bd3WFgKGn/kxLJ6poUH3+iyCR1WtBNyvaaLAeG+YCO2xF0aCHwmoHKylYbJs
 HMFgl4+E6t8rEFjbPRTMOUMnB5YM9LYdQtfMGyw4vEYk3DA/JoQX55YJwdN+lxD+uehlhFrb
 McFuihfqnf8Sgs4ziAVb4ylasM3/yQijI05a6NUHSMFu/E14Ya9Ce9YekKekSxmaPEm78ftD
 crVB7yKzK5mC59XrS9BpWodkLM8l8mbDFKlD7Ap+9SY/TNPcOt7j8eMwjuI28wu+ntCInMXc
 gwi+za4nwkIkt58fPuNbySG5OL7j2u0Vg4JL4uuG56nP+bG8palzhZdxyfzfNc9QGCtDM+06
 Iw6H8ly9jHcP2fBnw2r+tslDnkOKWvRFI1JqsvIyRU1GYoK6MEtTkPDr0UwbCv1bQ/HHVAea
 79/rQhyLVBEKeJmrVlJiXk5hpgvxLFZFKV56tWqlIl0sLJK0R3/WHsuQclxoDUuqvlJsWcxP
 V3KHxVzpiCRlS9r/VYKVxZSgzONDs51b27gp7z7z1IbmNHfchV/SVtu13ktUuWlHx8HgtREm
 Zhf39dp4jGN3W6Nao+XO2KiUZTGp6Dz/zcT27GLrZLVYt6rH9McPpbuTIt9WHvjyCKf/Lt/V
 sFPJNozJ9ltSA2nEnvvl7ofdC7PJPxk7Ew7dSI7cdOfE4x/39RSryBy1uDkea3PE/wBNZQ3Y
 awMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSa0hTcRjG+5+7w9FhSR0yKlYRCllRxtuVqA8doiIKun2pkae21CVn3mZI
 Vuu2UrMbszbyVnmr2UxdNs3mJUstczpmeWtiZK7MNGla2Rb07fe8z/vyPB9eBpeVkbMZlTpW
 ENWKKDklISQ71p5Zoh2JVS5rKV8JRnMxBW9Hs0ko+pkI9/usJLQVcPC09ScGxsJyBGPe9zRY
 LnbhMFr3goLc7HEcvCWpBBjf6Aj4YZ7AYaDBTUOj/TcBRZbt0HvvIwG28xU41P5YBO70RgpS
 dZM4ZPacpWDq3SQJVd6vNJy25mNQa3rpk0NlNLSWp5FwfeIuDhUpfb7AficJjkojBY4zbxH0
 FE+R8NHuS/Xkd9GQVnQLgf1ZAQWndSvAUzZGw7cbdTj0pm2EP4Z4aMiaCeNNHgTv73ZgMGWz
 0vC65yEJdeYKDNo/eHEYv2yiQP8lHUFHZiUGzaYSEvKa2jFfj93gnPqFwbW2LAr6db0I2mrd
 BNw+lYbAXO0iYcSmIzZu5ms9wzhv7c5D/OOCToz/dOUPxruqX2H8k1vdNJ9lieNL80P5XNsg
 xutdbThvKbxI8ZbvV2m+y2mj+EbDJMGX5p3kP5Vmop1zD0jWRQhRqnhBXLrhkERpNNiJmGt0
 4sDtkBR0idIjhuHYldzQcIIeBTAUu5hzuby4n4PY5dyo+wWhRxIGZ1sCuapSA+Y3ZrD7ufbL
 bsrPBLuIe/bg+b8DKRvOZbd/J/3MsfO4opKaf/MAdhV3x/QB+Vnm26nW5+FXkCQLTStEQSp1
 fLRCFRUepolUatWqxLDDx6MtyPdM95J/ZVjRmGOLHbEMkgdK4XOsUkYq4jXaaDviGFweJP3c
 LSpl0giFNkkQjx8U46IEjR0FM4R8lnTrXuGQjD2qiBUiBSFGEP+7GBMwOwXdKFE4hjMX7mFr
 NmX0a7Tz3hzRpHaGrD+XvCZpYLpwk0amyfqc9N6zkdsXJKA6T5PBMbhamrCvUhpSHJdzLCa0
 fvCqLDnpfsK2jKFpni+71KPOwJmPJi6Mtc4Kmr5gB9XUuVPikUvEvuaW4PliTdW7OQtfdTh/
 B9t2cyPj5uycE3JCo1QsD8VFjeIvbEu7MkgDAAA=
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Mon, 14 Jul 2025 15:10:09 +0000
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=sk.com
Subject: [Intel-wired-lan] [PATCH net-next v10 05/12] mt76: access ->pp
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

Make mt76 access ->pp through netmem_desc instead of page.

Signed-off-by: Byungchul Park <byungchul@sk.com>
---
 drivers/net/wireless/mediatek/mt76/mt76.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt76.h b/drivers/net/wireless/mediatek/mt76/mt76.h
index 14927a92f9d1..7e9ddf91b822 100644
--- a/drivers/net/wireless/mediatek/mt76/mt76.h
+++ b/drivers/net/wireless/mediatek/mt76/mt76.h
@@ -1798,7 +1798,8 @@ static inline void mt76_put_page_pool_buf(void *buf, bool allow_direct)
 {
 	struct page *page = virt_to_head_page(buf);
 
-	page_pool_put_full_page(page->pp, page, allow_direct);
+	page_pool_put_full_page(pp_page_to_nmdesc(page)->pp, page,
+				allow_direct);
 }
 
 static inline void *
-- 
2.17.1

