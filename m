Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B1DCB085C6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Jul 2025 09:01:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EE5C3615C1;
	Thu, 17 Jul 2025 07:01:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uF92o-m6lvs0; Thu, 17 Jul 2025 07:01:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7A78160872
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752735679;
	bh=9r9AqzJSLA1D1ZaSzMEcs3ZbuUbrvaNUswiizKwmHwU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PIJrVWmwOq4sgdysd4HjHDUYL9VwvKKLxwOH2mRAJXE4ndNm8JOWUWrYpQ5HMaHb5
	 HBr+rQP0KkUyYJbCOPdIUYEXfBuF9Pz1O4BDRy7fXV3plbB8CWevOtEyjXssTZCpW7
	 22DCY+PmrohSjbqAQ3gIpOgXcEtZ4IuzQmjqCwReSWi+GZn0Kmrh0R3dRFIZV0G0UF
	 Koqwu+j6lXfPa+TQwjbCrvox6W39LGMnEbRhEYyQV4oeo83/pfC6JS7q7qIZazD7Hg
	 UxCkeWF8gz5Tm8SWuRPPBNU3FWqhhkxtoSOoSyfuCscxynk0lIFSpWhgQjUkBJnvJ+
	 y9pgrMNmT7frA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7A78160872;
	Thu, 17 Jul 2025 07:01:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1EC6195B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 07:01:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 67A214116F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 07:01:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o3C_TOCaMp17 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Jul 2025 07:01:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=166.125.252.92;
 helo=invmail4.hynix.com; envelope-from=byungchul@sk.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9E9BB41120
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9E9BB41120
Received: from invmail4.hynix.com (exvmail4.hynix.com [166.125.252.92])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9E9BB41120
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 07:01:11 +0000 (UTC)
X-AuditID: a67dfc5b-669ff7000002311f-15-68789fb30571
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
Date: Thu, 17 Jul 2025 16:00:45 +0900
Message-Id: <20250717070052.6358-6-byungchul@sk.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20250717070052.6358-1-byungchul@sk.com>
References: <20250717070052.6358-1-byungchul@sk.com>
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSfWxLexjH/c57a+XoZM4dIuotJOqd54/lkptczj9DMokgYSd2oo1ulo6u
 I7KhXlZ3xYZsa8Ve7ZUtLVrTznQLixlbzRSzzZYxdLg6y6quabfc/z55vt98v8+TPAwu7ySj
 GXXSQVGbJGgUlJSQDkUULrVd1auWfx1aBZaaagra/YUkVI3qoazXQYKngoO7baMYWCpvIxgO
 vKbBmtmFg7/pIQXFhSM4BGqzCLA8NRDwveYHDgMP+mhodv9HQJU1FnquvSPAedqOQ+P3BdB3
 rpmCLEMQh7zukxSMvQqS4Ap8puG4oxwD16dbNLTdNpFw8UcpDvaM3lBXfycJz+osFDw70Y6g
 u3qMhHfuUKGvvIsGU1U+Ave9CgqOG1aB79YwDV8vNeHQY9oAv3J18KAgCkZafAhelz7HYMzp
 oOFJ9w0SmmrsGHS8DeAw8s8VCoxD5xA8z6vD4PGVWhJKWjqw0B5x0Dn2E4McTwEF/YYeBJ7G
 PgLMx0wIauq9JPzrDJ0cHLVQG/7iG31fcN7xpgTxNyteYvzg+V8Y761/hPF38t/QfIH1EG8r
 X8IXOz9gvNHrwXlrZSbFW79l03xXp5Pim3ODBG8rSecHbXlo6+yd0pgEUaPWidplf8ZLVZZc
 N5GcQ+sHzIsz0FnKiCQMx67mXPYBzIiYcXZenh8eU+wizusN4GGezq7g/H0PCSOSMjjbGsG5
 bLlYWIhkd3At70+SYSbYBVxr2VkynCML5Zwyp0/Ez+GqahvGcyTsGi54MXu8Vh6ydBRl0BOe
 MglXeAGb4D+4++Ve4jySFaBJlUiuTtIlCmrNaqUqLUmtV+49kGhFoW+7dvTnLgf61hbnRiyD
 FBGy+NpUlZwUdClpiW7EMbhiuizHo1PJZQlC2mFRe2CP9pBGTHGjmQyhmCFbOZKaIGf3CQfF
 /aKYLGr/VzFGEp2BEjB2ZreraOr1E5Mure3fT2VG/W1Y11bEuetjjiTPXTj51DbJrLfZ8dPk
 +UUCvqmZ8B8xz1KuiR2mqzc97d04e4svINpc9sHRLYJ+0fpWQemsizRXbJ7i16zMbq/uUu3O
 WqvUpMXLPvbP22yKiT7TGluaHpcqefGpUXtme0NkVIOCSFEJK5bg2hThN4MBEoxpAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSfUzMcRzHfX/PnW5+O+HnYbQba5qnkH2GNcbmN83D+INspsNv7lZd3OWU
 odKJriSVXHVxPejRXO6iw4ldjSOkKzmc4hoxeSzNOeTO5r/35/P+7PV+//FhcEkTOYVRKJME
 lVIWL6VEhGj9soy5lvPJ8gVuz1QwmC5S0DlUTkLDj2SoeWUlwVnHwY3HPzAw1F9FMOx9QYM5
 y43DUNtdCirLR3DwNp4kwNChJeC76ScOb+54aHDYfxPQYF4HfdVvCbAdb8ah9fss8JxyUHBS
 68OhuPcYBaPPfSTc9H6i4ai1FoPWsnv+8cMVGh5fzSWh8OcFHJrTXvkD+3tI6LpuoKAroxNB
 78VREt7a/amDtW4achtKENhv1VFwVLsIBq8M0/DlTBsOfbkr4I9eA3eME2GkfRDBiwtPMBi1
 WWl41HuJhDZTMwbdr704jOSUUaD7eArBk+LrGDwoayShqr0b8/fYDD2jvzAocBop6Nf2IXC2
 eggoTc9FYGpxkfDVpiVWrOJbBz/jvPVlFeKb6p5h/Lu8PxjvarmP8ddKXtK80byft9SG85W2
 9xivczlx3lyfRfHmb/k07+6xUbxD7yN4S1Uq/85SjDZO3yZavluIV2gE1fyoWJHcoLcTewvo
 5Dels9NQNqVDDMOxizlb0UwdCmIoNoxzubx4QIewEdyQ5y6hQyIGZx8GczcteixgjGdjuPaB
 Y2RAE+ws7mFNNhngiP2czNLUwJpjZ3ANjbf/cYLYSM5XmE8FtMR/0l2RRuchkRGNqUchCqUm
 QaaIj5ynjpOnKBXJ83YlJpiR/5eqD/86bUXDXWvsiGWQNFgc23hALiFlGnVKgh1xDC4NERc4
 NXKJeLcs5aCgStyh2h8vqO1oKkNIJ4nXbhFiJeweWZIQJwh7BdV/F2OCpqQh5faOYLuRLEqa
 rE+1bGs6cTvryEDeIl0mN6FmSY547aaoYEiYkb608mlHtOby2LCvtVG+sIqVuHiJlJykXn3O
 vPNDxMR0h5D5qD9yoSPVtDLUHZM4XPGbu9Sx4PX9rSdGohND8+f42seV30uyZmw4lEHtOxsu
 Fas7p0WvGshZNl0kJdRyWUQ4rlLL/gK76wuPRwMAAA==
X-CFilter-Loop: Reflected
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=sk.com
Subject: [Intel-wired-lan] [PATCH net-next v11 05/12] mt76: access ->pp
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

