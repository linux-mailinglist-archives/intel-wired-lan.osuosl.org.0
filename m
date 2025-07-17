Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 596ACB085CF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Jul 2025 09:01:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9D1C8416C9;
	Thu, 17 Jul 2025 07:01:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YVO_b9F7z3zx; Thu, 17 Jul 2025 07:01:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 126BE4119D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752735685;
	bh=Qld9P5uMxoJlY3RdRhcPJx1llFYd6ALjjuMqphGGMew=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0EgNFPEQ/q7j1h7YxIVi89BfJqoxAs4sMYp4LTpvMozZUrfLYhXIj7GqEx5jjQS2P
	 ANAQR8X0LGkyZHlZBIssG0iPRfB0dQzALmAV9v18wafcNJyIgDCi5Jk+Vg+8fBliG+
	 XAPUQb9NAo3ul2hHuE2IZmFBiIjFCT4rGwqdp0wfvrycEh1SLr8d2EoMByVFqF1TxS
	 v4mYPZxY47bFQbsmECxgoyKHMZaVLUklExdJ96UxnciSTmFSYy8wwVNklmbARtwPNG
	 JnlXRjhR1D1zY1XayHONhAvQIQVFkAQzlbjZN4FcDwIZuUxgwmgc5Wj4FRwbeA4908
	 nILT4JkzPHGqw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 126BE4119D;
	Thu, 17 Jul 2025 07:01:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0502E117
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 07:01:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 586914116D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 07:01:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v0YR--P8Y2zt for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Jul 2025 07:01:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=166.125.252.92;
 helo=invmail4.hynix.com; envelope-from=byungchul@sk.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8EA4941127
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8EA4941127
Received: from invmail4.hynix.com (exvmail4.hynix.com [166.125.252.92])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8EA4941127
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jul 2025 07:01:14 +0000 (UTC)
X-AuditID: a67dfc5b-669ff7000002311f-97-68789fb4ad29
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
Date: Thu, 17 Jul 2025 16:00:52 +0900
Message-Id: <20250717070052.6358-13-byungchul@sk.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20250717070052.6358-1-byungchul@sk.com>
References: <20250717070052.6358-1-byungchul@sk.com>
X-Brightmail-Tracker: H4sIAAAAAAAAAz1SfUiTexjt935vOHpZcnsrolpXCuN6+9B6oA8iiF6IoK5w/7AoR77cDeeM
 aUuFylIJh63QIvWum1911XXvbH5Nm16bXpVqpVPXVqY5yxZpH5rmXLU2o/47nPOcc54HHgaX
 usmljFKdKmjUcpWMEhPiibDSX+qupSnW6/MjwGC6SUHvVCkJxtk0+PuZhQRHFQe3e2YxMFQ3
 IPjge0KDOXcQh6mOLgrKS2dw8NWcJ8DwMJuAadMcDi86PTR02z4TYDTvg+EbYwRYzzXi0D4d
 AZ4L3RScz/bjUDSUQ0HgsZ+EFt8bGs5aKjFoeV1PQ0+DnoRLc9dxaMx8FuwadZLQ12ygoC+r
 F8HQzQAJY7Zg4XjlIA16YzEC239VFJzN3gTj9R9oeHe5A4dh/U74UqiFzpKfYObeOIIn1wcw
 CFgtNDwY+peEDlMjBv0jPhxm8q5SoJu4gGCgqBmD+1drSKi4148F94gFZ+ATBgWOEgpGs4cR
 ONo9BPx5Ro/A1Ooi4b01eLJ/1kDt3MW3j7/FecvTCsTXVbkx3nvxC8a7Wu9ifFPxU5ovMR/n
 aysj+XLrK4zXuRw4b67OpXjzZD7NDzqtFN9d6Cf42orTvLe2CO1fHifeliColFpB8+uOeLGi
 zcMes1NpTfZ8MhN1kjokYjg2mnOb/vmBP3rniBCm2DWcy+XDQzic3cBNebqCvJjBWXsY11Jb
 iIWERWw81/B/0byBYCO4rAd/USEsYWO4ybFH9LfQFZyxpm0+SBTk/Zfy52ekwbL+skw6FMqx
 10TcgMOCvhmWcHcqXcRFJClBC6qRVKnWJsmVqugoRbpamRZ1NDnJjIIPd+Pkp4MWNNkTa0Ms
 g2RhkviaEwopKdempCfZEMfgsnBJgUOrkEoS5OkZgib5iOa4SkixoWUMIVss2ThzIkHK/iFP
 FRIF4Zig+a5ijGhpJtpiFI08rFr8cUTXXvezvezQaffKhS/LRGv25OyOvCU7peiKzeCuPBLF
 5BVjBzKmrcXe6NW/nQpsdy+Ijme0OctKY7z1XatWrR5ti2zdas9aF7XtNqZszFNPbH4T+D0u
 PO7l3oJE4/O1Emee6vGdhYoc577cJYePlKfu0bFDPlI7TcuIFIV8QySuSZF/BVvOg6FsAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAAzVSa0iTYRjt/e5bjj6W1Fd2gYVEg0zpwkN3KOorKsJ+FP0oh360oa7acs0g
 slxEYtPMQGumluUVt6bpsqk1zbSybJotXVqLxGpd1dVctabRv/Oc8zznnB8Pg0vryNmMSn1E
 0KgVSTJKTIh3rEpfXFuoV0ZXW6eByVxFwbORYhIqf+qh9LWNBGc5B3e6fmJgqqhDMOrvp8F6
 1o3DSOsDCq4V+3DwW84RYHpqIGDMPI7DuzYPDe2O3wRUWrfD4I0hAuxn6nFoGYsET1Y7BecM
 ARzyB05TEOwLkNDo/0zDKVsZBi0FHaHx4y0auuqMJOSOX8ehPu11KPBtLwndDSYKutOfIRio
 CpIw5AilesvcNBgrLyFwNJdTcMqwFLy3Rmn4erEVh0HjeviTp4O2ohnge+RF0H/9OQZBu42G
 JwPVJLSa6zHoeePHwZdZQEHGpywEz/MbMHhcYCGh5FEPFuqxC3qDvzC44Cyi4K1hEIGzxUPA
 5ZNGBOYmFwnf7AZi/Qa+xfsF522vShBfW/4S44ez/2C8q+khxt++9Irmi6wpfE2ZnL9mf4/x
 GS4nzlsrzlK89XsOzbt77RTfnhcg+JqSE/xwTT7aOW+veHWCkKTSCZola+PEyrse9lAnpb/d
 mUOmoTYyA4kYjl3G/RgeJyYwxS7kXC4/PoHD2RhuxPMgxIsZnO0M4xpr8rAJYTobx9Xdz588
 INhILv3JFWoCS9jl3PehF/Q/0/lcpeXupJEoxAdycyZ3pKGwnqtpdDYSF6EpFShcpdYlK1RJ
 y6O0icpUtUofFX8w2YpC33Tj+K/zNjTavdmBWAbJwiRxlqNKKanQaVOTHYhjcFm45IJTp5RK
 EhSpxwTNwf2alCRB60ARDCGbKdm6W4iTsgcUR4REQTgkaP6rGCOanYbcs5o2yTvEmVJfbiyT
 ualp7J6y+sfU6sPTs7McSwqNG02nLX2u6MDR2oh1ySm1jO/mHrn7TmFXKpEQEx+rPly4+N2K
 Zk6uzHC4hqM6ctasCcxdOWPL/fiqD6WexI5tDVNY0dM5xaKwBRHm2KgP7ubB496BDYuyZt47
 vy9a32gfD8oIrVIRI8c1WsVfeP6v00kDAAA=
X-CFilter-Loop: Reflected
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=sk.com
Subject: [Intel-wired-lan] [PATCH net-next v11 12/12] libeth: xdp: access
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

