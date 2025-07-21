Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 861EFB0BA4B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Jul 2025 04:19:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CC9FF61C92;
	Mon, 21 Jul 2025 02:19:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cAX4_gft2SHf; Mon, 21 Jul 2025 02:19:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 15BDF61C7E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753064348;
	bh=7+KnSRLfVkjmxYbH52i+J01joSaYYFgSe5pJMfMoL74=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=F3D2pgsMG0/DGN5AZKX09SFrcEhtDuiFJ6xtmQ2VUeBwgBaGlCKO6GuHI6Ekk5gz8
	 gz+gUQ5erkQsPJySfnLdGjpTK5p4cWzczeyzJ3D2cECZ0osm9LS0Gd3wv6MsXFiKeS
	 3S/+S/wPCIVFxHsyNJ8vSnPjpZAGx3KJfBx9BVuj2u+1mc0iz2tFwnjEoKbC7iDa87
	 PEtL0XoIm1lh/UepcvjOD+GbxixlKLivM2gpzj7kELvAUr7zAqKEh2vekYlBVD0OcA
	 N6HSL0IKLjHscBCvW6E6DzjhXVrb/DZpjpKpAvjgMMP+rIbE50MAr7T3Qf1p8UBU8a
	 /JFj3AStqLWmQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 15BDF61C7E;
	Mon, 21 Jul 2025 02:19:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 98ECC1F7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 02:19:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7F5A340AA3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 02:19:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yMu-EkBIpxdh for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Jul 2025 02:19:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=166.125.252.92;
 helo=invmail4.hynix.com; envelope-from=byungchul@sk.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2D41C40BC1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2D41C40BC1
Received: from invmail4.hynix.com (exvmail4.hynix.com [166.125.252.92])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2D41C40BC1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 02:19:02 +0000 (UTC)
X-AuditID: a67dfc5b-669ff7000002311f-6b-687da386ed5a
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
Date: Mon, 21 Jul 2025 11:18:27 +0900
Message-Id: <20250721021835.63939-5-byungchul@sk.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20250721021835.63939-1-byungchul@sk.com>
References: <20250721021835.63939-1-byungchul@sk.com>
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSe0yTZxTGeb97K41fCuinbllSY5aZiYK6nMTLjLrkXQwLinMX3LSBT9vY
 AimKoCF2yKYSBdxwgtQI4SJQhKYM6bQFKQQIeClVSRlIpSrx0u4CWigorED875dzznOec3IO
 R8r76aWcOumwqEtSahSMlJL6QktX/VKWqVpzLf8TMNTXMtA7VkqDcSIdrj620OCsFuCmY4IA
 Q811BK8DAyyYzwySMNbeyUBZqZ+EgOkcBYZ72RS8qZ8k4VmHh4Uu+zsKjOYYcFeOUGA91URC
 25sV4MnrYuBc9hQJRUM/MzDz1xQNtsDfLGRZqgiwvWpkwXE9l4aCyQoSmvSPg15P+mi4f8PA
 wP2TvQiGamdoGLEHDb1VgyzkGi8hsLdUM5CVvRa8ja9Z+PdCOwnu3C0wXZgGHSWLwN/jRTBQ
 8ZCAGauFhbtDdTS01zcR8GA4QIL/7GUGcnx5CB4W3SDg9mUTDeU9D4jgHHHQN/OWgN+cJQw8
 yXYjcLZ5KCj+KRdBfbOLhv+swZWnJgzMlq24zfsPiS2PyhH+o7qfwM/zpwnsau4m8J+XHrG4
 xHwEN1StxGXWFwTOcTlJbK45w2Dz6K8sHuyzMrircIrCDeUn8POGIhT74ffSjYmiRp0m6lZv
 3i9VNVWUopQySfr5i35ajxxsDpJwAr9OcE/2Ee95eNhFzTLDfyy4XAFylsP5KGHM0xmMSzmS
 vxMq2BoK5wRh/I9Cc0HrHFP8CuGdyzMnkPHrhW7DTWq+6UeC0XRrLi7hPxM8wfPPsjxY431p
 oedrrkqErvKYeV4itFa5qHwkK0EhNUiuTkrTKtWadZGqjCR1emRCstaMgg9Xmfk23oJGHXF2
 xHNIESpLoTJVclqZlpqhtSOBIxXhMtx5TCWXJSozjom65H26Ixox1Y6WcZRisSzafzRRzh9U
 HhYPiWKKqHufJTjJUj068HRHwudnA5UxYV+et61WhezmlJN64+m949vqdu+I+LalNtnp+6GQ
 nD5+NNq0YCs9MvDdqK+nNfabDxzEyXZtuKX4yvi+l5rtO/V77kkXZtji3avYL0Yiugv6r+Xv
 3R+2KWzDrhOfPsvbZryw2USLsXpbyNfLl5l+P937Vdb4niW+EK2CSlUpo1aSulTl//TCgJ5s
 AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAAzWSaUyTaRDHfd6zbWx8rURfNfFoom5IRI1HhmiMiR981Hhk1yMeWanyxjaU
 QlpowISIUi8UFNEsaFlbCy4Fs8WitkpBLcRWUYSCpCpXixCPenJoRcSC8dtv5j8z/0lmRKTM
 QU8TqTQpglajUMsZCSXZuDxr/lFLhnJhMH8iGG1XGWjqM9NQ/jUN/uty0uCz8lDV+JUAY9lN
 BP3hFyzYT7SR0FfnYcBiHiQhXJFDgfGJgYIB2zcSeu4HWfC6hykot2+Aziu9FLiOOUioHZgD
 wdNeBnIMQyQUdhxhYOT5EA3V4fcsHHaWElBb9CASvr3BQuPNXBrOfSshwZHZFTHsbqWh+baR
 geasJgQdV0do6HVHXEOlbSzkll9A4L5jZeCwYTGEbvSz8PF8HQmduavgR4Ee7psmw2B9CMGL
 kqcEjLicLDR0/E9Dnc1BQEsgTMLgqSIGst+dRvC08DYBj4oqaCiubyEie/wFrSPfCcj3mRjo
 NnQi8NUGKbh4KBeBrcZPwyeXgVq1GteGPpDY2V6M8HXrMwK/OvODwP6ahwS+daGdxSZ7Kq4s
 jcYW12sCZ/t9JLaXnWCw/fNZFre1uhjsLRiicGXxQfyqshBtnrFTsiJeUKv0gnbByjiJ0lFi
 RskWcVreP4N0Jmpks5FYxHNL+EDAT40yw83j/f4wOcpR3CK+L+iJ5CUikns8nq+uLCBGhUnc
 33zNuXtjTHFz+GF/cKxByi3lHxqrqF9DZ/LlFXfH8mJuGR+MnHyUZZGa0BsnfQZJTGhcGYpS
 afSJCpV6aYwuQZmuUaXF7EtKtKPIO13J+J7nRP3Na9yIEyH5eGkylaGU0Qq9Lj3RjXgRKY+S
 Ys8BpUwar0g/IGiT9mhT1YLOjaaLKPkU6brtQpyM269IERIEIVnQ/lYJkXhaJlJ8zo/xfbGt
 T+852rvDvjo1ljkuVpru3I3aHF2ys4l2V3VXtz+4nKa2dIn/ne15ND827uWfNvuWqZ7QXNq6
 ldYzge3eTSfXJqjNJ4OJE1p2xZsD28pm7dqW1/Q8JcGbpfFcHFjy+NLunt19DcnzUhzW2OEd
 2fUDf1xLashp9cTvfSendErFomhSq1P8BMLy5gNKAwAA
X-CFilter-Loop: Reflected
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=sk.com
Subject: [Intel-wired-lan] [PATCH net-next v12 04/12] netdevsim: access ->pp
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

Make netdevsim access ->pp through netmem_desc instead of page.

Signed-off-by: Byungchul Park <byungchul@sk.com>
---
 drivers/net/netdevsim/netdev.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/netdevsim/netdev.c b/drivers/net/netdevsim/netdev.c
index 611e7f65291c..2b80591981dc 100644
--- a/drivers/net/netdevsim/netdev.c
+++ b/drivers/net/netdevsim/netdev.c
@@ -898,7 +898,8 @@ nsim_pp_hold_write(struct file *file, const char __user *data,
 		if (!ns->page)
 			ret = -ENOMEM;
 	} else {
-		page_pool_put_full_page(ns->page->pp, ns->page, false);
+		page_pool_put_full_page(pp_page_to_nmdesc(ns->page)->pp,
+					ns->page, false);
 		ns->page = NULL;
 	}
 
@@ -1126,7 +1127,8 @@ void nsim_destroy(struct netdevsim *ns)
 
 	/* Put this intentionally late to exercise the orphaning path */
 	if (ns->page) {
-		page_pool_put_full_page(ns->page->pp, ns->page, false);
+		page_pool_put_full_page(pp_page_to_nmdesc(ns->page)->pp,
+					ns->page, false);
 		ns->page = NULL;
 	}
 
-- 
2.17.1

