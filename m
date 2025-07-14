Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 617F6B042D2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Jul 2025 17:10:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E72BB81EF0;
	Mon, 14 Jul 2025 15:10:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OisjkruqXu_L; Mon, 14 Jul 2025 15:10:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6C19E81EE4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752505816;
	bh=Qld9P5uMxoJlY3RdRhcPJx1llFYd6ALjjuMqphGGMew=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2B3o+QPjFkdFR85yaIiL+ZfyVjU5H2+GXcG9Q8u/AqKH2JaLWkgeV2kdFtc0bJotB
	 ifH34FW8kCgWxZLhEcrIMA3t1SY8NfjMIEBLWRj5f3Yk5FuFhTL9+uYRmPT+g0ioxF
	 YS7Ko5xGo86S+l4DeRFl9V/GMo+S5BFtOuT9bOTLVmsWhbirAJ7awLGOLEq/mrSPFv
	 shhkmUJKzgu4MGIDes7cnoLykGtTL9NUL1PeT5Lny+YzS81PQqyDwWBcz0R2pe6qn1
	 5cUmOAXd4Tn9tNDbWk+FbkpgWxzSYRGZ4VJBr83d6qfVhJem29Pqw+/u9fIMgZ6JfH
	 COHc2m1WWKuYg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6C19E81EE4;
	Mon, 14 Jul 2025 15:10:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0F3FCDF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 12:16:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 90A0640472
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 12:16:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qGTW1W1b4puN for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Jul 2025 12:16:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=166.125.252.92;
 helo=invmail4.hynix.com; envelope-from=byungchul@sk.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D087B404A0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D087B404A0
Received: from invmail4.hynix.com (exvmail4.skhynix.com [166.125.252.92])
 by smtp2.osuosl.org (Postfix) with ESMTP id D087B404A0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jul 2025 12:16:19 +0000 (UTC)
X-AuditID: a67dfc5b-681ff7000002311f-c5-6874f17a137d
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
Date: Mon, 14 Jul 2025 21:00:47 +0900
Message-Id: <20250714120047.35901-13-byungchul@sk.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20250714120047.35901-1-byungchul@sk.com>
References: <20250714120047.35901-1-byungchul@sk.com>
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSe2xTZRjG/c53bq2rOakLHEeMSZVIFp1uIrwxaoh/fQlRMfznJa5hJ7Rx
 F9J2Y8VQBs4QKqzIJemgzVq7jW6dtmlh62q3YbeMCU53Yzmzu5ZAEIduDOpK52o74n+/vE+e
 53nf5OWxWmYKeH2lSTJUass1rJJW3s/77tUvl026150LT4PD38HC6IqbAd9qLVyaDzMw1ibC
 jyOrFDjaOxE8TMU5CJ6YxrAycI0FjzuJIRU4RYPjt3oaHvkfY7g9mOBgKPYvDb7g+zDXeoeG
 6PEuDP2PtkLCNsTCqfo0hsbZr1nI/J5moCf1FwfHwl4Kev68wsFIZwMD5x63YOiqm8923Zpk
 YDziYGH8q1EEsx0ZBu7EsoWL3mkOGnwXEMT62lg4Vv8GLF55yMHS+QEMcw27YN1eA4OuTZC8
 sYgg3nKTgkw0zMGvsz8wMODvomBiIYUhedLJgvW+DcHNxggFvzgDDDTfmKCye+yFycwaBWfH
 XCzcqp9DMNafoOHi0QYE/l6ZgeVo9uT0qoPd9R7pX/wbk/BMMyKX26Yocvf0OkXk3usU6b4w
 wxFXsJqEvIXEE/2DIlZ5DJNg+wmWBB+c4cj0ZJQlQ/Y0TULNR8jdUCPa8/zHyrfLpHJ9jWR4
 7d1Spe5qQjgwzNZ2D59h6tAgY0U8LwrbxW/dVVak2MDAkI/LMSu8LMpyCuc4XygWVxLXaCtS
 8lgYzhN7QnYqJzwrlIq3nZENpoWt4np8ecOsEnaINvcE9ST0BdEXuLoRpMjOm5wLKMdq4U2x
 19qMc6Gi4FOIE5k1/MTwnPiTV6ZPI5ULPdWO1PrKmgqtvnx7kc5cqa8t2ldVEUTZf2s9vPZJ
 GD0Y2RtDAo80eSq4Z9KpGW2N0VwRQyKPNfmqezMGnVpVpjUfkgxVnxuqyyVjDG3hac1mVUny
 YJla2K81SV9I0gHJ8L9K8YqCOrS7r9hOlO8sHT771p44tdLHF+10060H5aaXzo1MXTd7jTta
 CjXThyIznf/073yRjS41hbZUX5z/+fsFj23bBx9+9tH8M47L3enNm5JHVUfi5uOlNsNAqT+j
 tJhHSyxF+efN7KcFa56OVqdLEzDulk9a6hTrpsj4fss3U5ZXPPYSDW3UaYsLscGo/Q8+Q2Wh
 awMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSfUxTZxTGfe97v2iouamoN34mTdSIChLFnEUjZjN61eggJhqN0Va5sY1t
 NS0SIFsGUrfQSEHFCNo6iKhAjZAitGJFUhDZED/4so5CoUbDpJtiAa0oWDD+9zvnyXme54/D
 YlktNY9V61JEvU6pkdMSUrJrffaqjOEU1eqyhqVgqbxJw7NgCQW2j2lwo99JQXs5D3effiTA
 UlGLYCTUw4A9x4sh2PSQhqslYxhCVbkkWJ4YSRit/IThVbOfgRb3FxJs9p3gu/6aBNcfDgyN
 o0vAn9dCQ65xHENR32kaJv8Zp+Be6H8GTjnLCGi0/hUeh2oYeFprpqDg0zUMjsz+cODLbgo6
 6iw0dGQ/Q9B3c5KC1+5waqDMy4DZdgmB+345DaeMayBQM8LAuwtNGHzmTTBRmArNxXNgrDWA
 oOdaFwGTLicDj/tuUdBU6SCgcyCEYeyMlQbTf3kIuorqCHhkraKgtLWTCPfYDd2Tnwk4315M
 w0ujD0F7o5+Ey1lmBJX1HgqGXUZy009CY+AtFpy9pUi4Xf6CEAbzJwjBU/83Idy51MsIxfaT
 QnVZtHDV9S8hmDztWLBX5NCC/f05RvB2u2ihpXCcFKpLfxMGq4tQ4qL9kg3JokadKupjNyok
 qgY/d6KNTrvTdo7KRM2UCUWwPLeWr2qxMVNMc8t4jyeEpziKi+OD/oekCUlYzLVF8veqC4kp
 YRan4F9Z66aZ5JbwEz3D08dSbh2fV9JJfDNdzNuqGqaNIsL7P60DaIplXDxfbyrF+UhSjGZU
 oCi1LlWrVGviYwzHVOk6dVrMkeNaOwp/0/VfP591opGOrW7EsUgeKYU3KSoZpUw1pGvdiGex
 PEr6plevkkmTlekZov74If1JjWhwo/ksKZ8r3b5XVMi4o8oU8ZgonhD131WCjZiXiWocWa2x
 K4YsiR9ykxIy1htmbslIO/T7tuWKNUcMi8+uZOP6Y7I/aAcKzkc/j8/fU+graN3oXWVPn/3j
 DsZ8d+VQ3YM+PmvGwltdmtD8XRdzkgLJhzu0jgNa38EfBueMJu2L9CRg1dI4RcIvur0LgiOx
 0otbrwQ3W342Ghf0eKUbkvvlpEGljIvGeoPyK23aEZJJAwAA
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Mon, 14 Jul 2025 15:10:09 +0000
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=sk.com
Subject: [Intel-wired-lan] [PATCH net-next v10 12/12] libeth: xdp: access
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

