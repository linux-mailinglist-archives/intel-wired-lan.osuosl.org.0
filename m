Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D803B0BA59
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Jul 2025 04:19:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BD1CC84323;
	Mon, 21 Jul 2025 02:19:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VcmryAKDx7OK; Mon, 21 Jul 2025 02:19:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2F60B84313
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753064355;
	bh=Qld9P5uMxoJlY3RdRhcPJx1llFYd6ALjjuMqphGGMew=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=s7wZ2KMfPCsMgflIbWX+7xQgg3hYVbcVUL4+hI4C6c+ewXDza9Er6HWMO/0GbhV7q
	 HwVe52yr9+L4KJC1VpZal1QUXkAd/JO+Lm3fGIHAylPCXFbH07yBbvFolLtLJmNohI
	 LKiI4ptDSn+eGzcafLYd9ixslbbFGRZW5GFIRPx2VsH3X0ZB4w/zKcvqW0airnSpfK
	 pPRvaIb+YdEfjaUomM1lM2iYNwRC+514QRx9gdO3RPW0U9NR0rXeZh1SJYbocOSBO+
	 0Wz43dUsg4of12ZAWDUdXtxJgA2DpAJdCZo91N9C2kMyhsiaQme5Pe0Z28joaNU4Yd
	 jsSXyQj1YsmTg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2F60B84313;
	Mon, 21 Jul 2025 02:19:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0E5221F7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 02:19:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 83222842E6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 02:19:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NQ1NZDCOx4Tf for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Jul 2025 02:19:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=166.125.252.92;
 helo=invmail4.hynix.com; envelope-from=byungchul@sk.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8C837842B1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8C837842B1
Received: from invmail4.hynix.com (exvmail4.hynix.com [166.125.252.92])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8C837842B1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 02:19:06 +0000 (UTC)
X-AuditID: a67dfc5b-669ff7000002311f-fe-687da38723dc
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
Date: Mon, 21 Jul 2025 11:18:35 +0900
Message-Id: <20250721021835.63939-13-byungchul@sk.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20250721021835.63939-1-byungchul@sk.com>
References: <20250721021835.63939-1-byungchul@sk.com>
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSfUxTZxTGfe9970c7ai6dmVecURvJMheZn/PMqDH+9W7LjMbETF2indzY
 ZgVJUQQjCogYGynqMAFXsAR0pTWWlK+KRbQQICIOi5KrtKBFGWrFjwKh4mStZv/9cp6c5zkn
 5/C0WmYSeH3qfsmYqjVoWCVWvoyrWHKiMlu3tLlpLVicl1m4G65gwDGZCX89cjPgqxbhWs8k
 BRZ7A4KxSD8HrpN+GsJtHSxUVkzQEKkpxGD5Ox/DuPMdDU/bgxx0ev/F4HD9DIOXhjF4TjTS
 0DqeCMGiThYK86doKB04zsL0wykGmiOjHOS5bRQ0v6jnoKfBzEDxu4s0NOY8imYN9THQ22Rh
 offYXQQDl6cZGPZGA0M2Pwdmx3kE3pZqFvLyV0CofoyD1+faaBg0b4APJRnQbv0CJrpCCPov
 3qdg2uPm4M7AFQbanI0U3HscoWHiVBkLppdFCO6XNlFwu6yGgaque1R0jq3QN/2egj98VhaG
 8gcR+FqDGP7MNSNwXpcZeOOJrjw1aWE3bCStoVc0cQeqEKmrfkCRkdMfKCJfv0WRq+cDHLG6
 DpBa22JS6XlGEZPso4nLfpIlrrdnOeLv87Cks2QKk9qqo2SkthRtnrdDuTZZMugzJOO363cr
 dTeCQlo3m3m1+yyTg9oZE+J5UVgpDjt2mpDiI56y+5gYs8JXoixH6BjPEpaJ4WAHNiElTwvd
 cWJzbQkVEz4XdouBW1dwjLGQKNbUjbIxVgnfiSMFY9Qn0/mio+bGRyNFtB6MHj/GamGVGHru
 ZmKmouBUiOGqIvypYY540ybj00hlRTPsSK1PzUjR6g0rk3RZqfrMpD37Ulwo+m+Xst/vdKO3
 PVu9SOCRJk6VhrN1akabkZ6V4kUiT2tmqUjHIZ1alazNOiQZ9+0yHjBI6V40l8ea2arlEweT
 1cJe7X7pd0lKk4z/qxSvSMhBP838WrHDsG7bN589iR98SII36xe0fb8iUpz0zzzvwm3lSbZV
 eaPbcxeucexVPXkz3lv8qxTINcWPx53pKo/vz36xAJuMpQmz8Z7A6Oa6a/bt8tKWX57NVC3f
 FJ6/68cL8pc/tJpfpZUVNGQOVRRsWXLOWp7oX21xpyxqOby6wH+k8LcmDU7XaZctpo3p2v8A
 /S99NmsDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSe0yTZxTGfb/3u9HY5Esl84uLl9Rb1OjmEDzJlOim8c0SdQnJlpg4afSL
 bVoKaYWBkQylYkRBFJdwDSjogDogRaBKcVgqIAyVckkVaLFEhrPiBQQKam1d9t/vnCd5npM8
 h8eKBmYJr9Efkwx6lU7JymjZvm/TN54pS1V//cCxAopqbrDQM3mFAfNsMvwxYmXAWSlC06NZ
 CoqqGhBM+Qc5sJwdwjDpaGeh7Mo0Bn9tFg1FD000vKuZw/CszctBh/0DDWbLXvBcH6PBdqYR
 Q+u71eC90MFClmkeQ777NAuBJ/MMNPsnODhlraCgtfh+cHxRz8GjhmwGLs9dw9CYNhIMHB1g
 oPd2EQu96T0I3DcCDIzZg6m+iiEOss0FCOx/VbJwyhQBvvopDl7/7sDgyd4BH/OSoK30C5ju
 8iEYvNZPQcBm5eCBu5oBR00jBX1P/RimzxezkPnyAoL+/NsU/F1cy0B5Vx8VvCMGBgLvKch1
 lrIwavIgcLZ6aSg8mY2g5o6LgTc2E73je9Lqe4WJdbgckZuVjykynvORIq47nRS5VTDMkVJL
 IqmrWE/KbM8pkulyYmKpOssSy9tLHBkasLGkI2+eJnXlv5Hxunz047IDsm1HJJ0mSTJ8FR0r
 U7d4hYRuNvlW9yUmDbUxmSiMF4Ut4vkq52dmhbWiy+XHIQ4XNouT3nY6E8l4LHQvFJvr8qiQ
 sEiIFYc7q+kQ08JqsfbmBBtiuRAljmdMUf+ZLhfNtS2fjcKCe2+w8RArhEjR96+VyUGyUrSg
 CoVr9ElxKo0ucpNRq07Ra5I3HY6Ps6DgN11PfX/RiqZ699iRwCPlQnkCnapWMKokY0qcHYk8
 VobLSftxtUJ+RJVyXDLEHzIk6iSjHX3J08rF8h9+lmIVwlHVMUkrSQmS4X+V4sOWpKEodW7i
 /lV/Yt4UrTTfM3hwoafw8NVJd/32vq70uyVzb06YTt9ftvvh0aZF51Yla60xluq7ygxzyTfN
 vx6cESPsSz/8M8Nv+S5HF6FlNjT9tGaiecPKjKsjqnW/PH+alft2Z4eo9zauXakIlBzcVbDH
 HdUTvcYVO6s17tdNbHXsjWlR0ka1avN6bDCqPgGcUR1QSQMAAA==
X-CFilter-Loop: Reflected
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=sk.com
Subject: [Intel-wired-lan] [PATCH net-next v12 12/12] libeth: xdp: access
 ->pp through netmem_desc instead of page
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

Make xdp access ->pp through netmem_desc instead of page.

Signed-off-by: Byungchul Park <byungchul@sk.com>
---
 include/net/libeth/xdp.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/net/libeth/xdp.h b/include/net/libeth/xdp.h
index 6ce6aec6884c..f4880b50e804 100644
--- a/include/net/libeth/xdp.h
+++ b/include/net/libeth/xdp.h
@@ -1292,7 +1292,7 @@ static inline void libeth_xdp_prepare_buff(struct libeth_xdp_buff *xdp,
 	xdp_init_buff(&xdp->base, fqe->truesize, xdp->base.rxq);
 #endif
 	xdp_prepare_buff(&xdp->base, page_address(page) + fqe->offset,
-			 page->pp->p.offset, len, true);
+			 pp_page_to_nmdesc(page)->pp->p.offset, len, true);
 }
 
 /**
-- 
2.17.1

