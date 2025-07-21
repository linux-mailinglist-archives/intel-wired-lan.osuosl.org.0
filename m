Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 74200B0BA52
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Jul 2025 04:19:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BE14861C9A;
	Mon, 21 Jul 2025 02:19:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CF8o24Lx1RoT; Mon, 21 Jul 2025 02:19:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4CC5D61C83
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753064351;
	bh=G9QaDeCSPo/2Ugg+pa6lPjS4WMuyDqeLCCAlbTOkO8o=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wPnKCCTsFq1ZA9DER8qlCcsxOCZuAv56NLIcSd6t8YleznflavyRbE5E8EKyNxB3D
	 7ih8G7jzdSkWyKQpLIIFqwt7dFhSf5fjVC4bnWAH0sMMl+XDQ0k2rekdNcq5fu+Yim
	 0wZjy+LaubGLWFr3kQkFEUzEgosoG5Y4o2JKNFkKMYtadNvNtGW3DJ0fewZ628j95G
	 6LV6/cNoSZwxwg/yu2OOtC9kzDcwAMPGMe/f79v4RPIk4tmy9tt43zwdWf9jvOarYr
	 Akez/xit9ekXYAUcdTavzc37CFpTWXqkbQg+9Bkho0TzDYSJNBLVmyqb4CBx11SEx3
	 U8mVm/4mM5ptQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4CC5D61C83;
	Mon, 21 Jul 2025 02:19:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 257B67AB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 02:19:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D6DF8842A3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 02:19:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Rr50Hv9Zul6c for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Jul 2025 02:19:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=166.125.252.92;
 helo=invmail4.hynix.com; envelope-from=byungchul@sk.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0EA0884298
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0EA0884298
Received: from invmail4.hynix.com (exvmail4.hynix.com [166.125.252.92])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0EA0884298
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 02:19:04 +0000 (UTC)
X-AuditID: a67dfc5b-669ff7000002311f-7d-687da386efd6
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
Date: Mon, 21 Jul 2025 11:18:28 +0900
Message-Id: <20250721021835.63939-6-byungchul@sk.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20250721021835.63939-1-byungchul@sk.com>
References: <20250721021835.63939-1-byungchul@sk.com>
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSbUxTZxTH99znvtFQc1PUXVnIsibMhMw6pmxnyWKM0eT5sCVTt2W+LNrI
 jW0GlbWUgRkZKrpYZoWhCWDJykAE2q3YClQpnRYiRNysCE03EbAdxLm6F4qVUhRbzL79c15+
 /3NyDo8VQSaT1+qKJb1OXaBkZbTsUXrTuhPN5Zo3Lz7cABaHnYXb0SYGbPOlcGHKzcBIuwi9
 /nkKLB3dCObidzlwnhzHEB0YZKG5KYYh3nmKBsutShoeOxYwTF8PcTDke0qDzfkBTLbO0OD5
 pgdD/+NsCJ0eYuFUZQJD/cRxFpZ+TzDQF/+bg6PuNgr6/uriwN9tZuDMwnkMPRVTSa9wgIE7
 Vyws3Dl2G8GEfYmBGV/SMNI2zoHZ1oDA93M7C0crN0Cka46Df88OYJg0b4ZndSVw3boaYsMR
 BHfPj1Gw5HFz8OvETwwMOHooGL0fxxD7tpEF06PTCMbqr1Bws7GTgZbhUSo5x04ILC1SUDti
 ZSFcOYlgpD9Ew7kjZgQOb5CB/zzJlRPzFnbzFtIf+QcT970WRC61/0aRB9XPKBL03qDI5YZ7
 HLE6jcTVlkOaPX9SxBQcwcTZcZIlztnvODIe8LBkqC5BE1fL1+SBqx59mLVb9l6+VKAtkfTr
 N+2XaY54e9miWq40PD6DKlAVa0I8LwobxbN160wobVkuLjzBKc0Ka8VgML6sVwq5YjQ0SJuQ
 jMfCL+lin6uOSiUyhF1izDuGUxxayBb9vW+kwnIhTwxWudAL5quirfPqMidNeFsMJY+f0opk
 TeShm0kxRcGRJs7ZB7kXDWvEa21BuhrJreilDqTQ6koK1dqCjSpNmU5bqjpwqNCJkv/WWr64
 x41m/Tt9SOCRMl1eRJdrFIy6xFBW6EMij5Ur5WTwsEYhz1eXHZb0h/bpjQWSwYde4Wnly/K3
 Yl/mK4SD6mLpc0kqkvT/Zyk+LbMCnfHeYgLZl+unLmwdXm3IeNc/l1vssR5fMZ2Ht+3tr9mU
 t+q16OujqpzMd6Y//uyTrtqMj6LUii++/2rWvqahJnAia1+2XW/XJcytLT6vkTegT6vxqqs1
 FXtU93f4mrrNO/4Is41h40Dmj/GykPF9XZGtin6S5e76oVml3S6/JuUpaYNGnZuD9Qb1c/dw
 7/FrAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAAzVSe0yTdxT1971prPmsOL9INk0TYkSGGmW5icaYmLhflviKUaNRpMqHbSxI
 WssKBq1YXcSJ74QixCqIFFSw1VJtZaYgD5UJFFiZCNJGRK0P5KEFpCsu/nfuPSfnnORejpTZ
 6dmcKnW/qElVqOWMhJKsXXbk52NFWcpFlrpZUFBxnYGWwcs0lH/Rw7UXDhpaLQI4m78QUFBm
 RzAUfMaC9XgXCYO19QwUXR4hIVh5koKCp0YKhitGSXhZ52Ohwf2VgnLrGugp6aPA9UcVCTXD
 0eA71cDASeMYCabuowyE/h2j4X7wPQvZjlICagobw+PbOyw023NpOD96lYQqw4twoL+DBs+9
 AgY8R1oQdF8P0dDnDqcGSrtYyC3PR+D+y8JAtnEJBO4MsfDxQi0JPbkrYSIvHerMP8DI4wCC
 Z1fbCQi5HCz83X2ThtqKKgLaeoMkjPxZyEDOu1MI2k33CHhSWElD8eM2ItxjI3SExgk412pm
 wG/sQdBa46Pg4uFcBBXVXhoGXEZq5SpcE/hAYsfzYoRvWzoJ3H96gsDe6kcEvpv/nMVmqw7b
 SmNwkes1gXO8rSS2lh1nsPXTWRZ3dbgY3JA3RmFb8SHcbzOh9T9tkyxPEtWqdFGzcEWiRHm4
 2smknWP1/q4+ZEAnmBwUwQn8UmF89DM5iRl+nuD1Br/hSH6xMOirp3KQhCP5pqnCfVseMUnM
 4LcKI9XtYRHHUXy00OyMnVxL+XjBe8KG/vecI5RXPvjmE8H/IvjCF5/EsrAm8MZBn0YSM5pS
 hiJVqekpCpU6Pk67V5mRqtLH7d6XYkXhbyrJGj/jQEOeX92I55B8qjSNylLKaEW6NiPFjQSO
 lEdKcX2mUiZNUmRkipp9OzU6tah1oyiOks+S/rZFTJTxexT7xb2imCZqvrMEFzHbgObGBC+1
 jEfPWGcv1Dn++XqgM2EozXAjNHcwKXb4x5mrM803FmweiO83Rj48G+UJbtBPvPp0a5HuoEnz
 tNG+vUlnyW+Wx+70b/AMnFnTW9mRnT8ldn3ik/bku215e0y/Jzur9I2bDhXvyFjbtHSZ2p/t
 NMzvNCWEuOlXpvVGteze5Tgvp7RKxeIYUqNV/AeFNCVZSQMAAA==
X-CFilter-Loop: Reflected
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=sk.com
Subject: [Intel-wired-lan] [PATCH net-next v12 05/12] mt76: access ->pp
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
index 2912568612bc..8dd5c29fb75b 100644
--- a/drivers/net/wireless/mediatek/mt76/mt76.h
+++ b/drivers/net/wireless/mediatek/mt76/mt76.h
@@ -1810,7 +1810,8 @@ static inline void mt76_put_page_pool_buf(void *buf, bool allow_direct)
 {
 	struct page *page = virt_to_head_page(buf);
 
-	page_pool_put_full_page(page->pp, page, allow_direct);
+	page_pool_put_full_page(pp_page_to_nmdesc(page)->pp, page,
+				allow_direct);
 }
 
 static inline void *
-- 
2.17.1

