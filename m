Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 203C277044C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Aug 2023 17:22:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B181540503;
	Fri,  4 Aug 2023 15:22:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B181540503
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691162531;
	bh=8NkZJ8yp5ANfGrrqau/MinwsMryTZog8zfJmcgj2moc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=I3vtDtN/CuttaYbHIkKma3VHG1zS7cs34NQwHYWTXzbBYorKUdSs2q8v91PZ+YQdc
	 i81od3vnMV7hQf521ngUPaPp8MCh0dUJBLXL2G/phdxXeJ+oPAoeXf52TpLD1St45A
	 U3WjbHbKaD9a+nLcDHAZBM1QrhrcnuXLm9THXODcCCBd2GixogmXOAK0M/yf2q4vy1
	 flFjy2nJ/Jj5T3qPQMMhfNfcD1Y6qgHDUMNH4/AXU1uQ9bQLna8/5nz49Y/CmYadnf
	 NVdyKRjTcnCRCznbM9jyFaYQg+7Qa3XzKwBeDblauO9vx2OlmMfmuGuUmX0nIbPM/e
	 A35XqEvV6RaGw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y8NLNblGEBCM; Fri,  4 Aug 2023 15:22:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 87016400AB;
	Fri,  4 Aug 2023 15:22:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 87016400AB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 695811BF2A3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 04:11:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C09C860F7A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 04:11:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C09C860F7A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ctmJvhIqjAY4 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Aug 2023 04:11:18 +0000 (UTC)
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [45.249.212.188])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C80C360F15
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 04:11:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C80C360F15
Received: from kwepemi500008.china.huawei.com (unknown [172.30.72.57])
 by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4RHBb94gk1zNmj2;
 Fri,  4 Aug 2023 11:51:17 +0800 (CST)
Received: from huawei.com (10.90.53.73) by kwepemi500008.china.huawei.com
 (7.221.188.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Fri, 4 Aug
 2023 11:54:43 +0800
From: Ruan Jinjie <ruanjinjie@huawei.com>
To: <sgoutham@marvell.com>, <davem@davemloft.net>, <edumazet@google.com>,
 <kuba@kernel.org>, <pabeni@redhat.com>, <jesse.brandeburg@intel.com>,
 <anthony.l.nguyen@intel.com>, <tariqt@nvidia.com>, <s.shtylyov@omp.ru>,
 <aspriel@gmail.com>, <franky.lin@broadcom.com>,
 <hante.meuleman@broadcom.com>, <kvalo@kernel.org>,
 <richardcochran@gmail.com>, <yoshihiro.shimoda.uh@renesas.com>,
 <ruanjinjie@huawei.com>, <u.kleine-koenig@pengutronix.de>,
 <mkl@pengutronix.de>, <lee@kernel.org>, <set_pte_at@outlook.com>,
 <linux-arm-kernel@lists.infradead.org>, <netdev@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <linux-rdma@vger.kernel.org>,
 <linux-renesas-soc@vger.kernel.org>, <linux-wireless@vger.kernel.org>,
 <brcm80211-dev-list.pdl@broadcom.com>, <SHA-cyfmac-dev-list@infineon.com>
Date: Fri, 4 Aug 2023 11:53:45 +0800
Message-ID: <20230804035346.2879318-6-ruanjinjie@huawei.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230804035346.2879318-1-ruanjinjie@huawei.com>
References: <20230804035346.2879318-1-ruanjinjie@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.90.53.73]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 kwepemi500008.china.huawei.com (7.221.188.139)
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Fri, 04 Aug 2023 15:21:40 +0000
Subject: [Intel-wired-lan] [PATCH -next 5/6] net: fjes: Remove an
 unnecessary ternary operator
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

There is a ternary operator, the true or false judgement of which
is unnecessary in C language semantics.

Signed-off-by: Ruan Jinjie <ruanjinjie@huawei.com>
---
 drivers/net/fjes/fjes_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/fjes/fjes_main.c b/drivers/net/fjes/fjes_main.c
index 2513be6d4e11..a0d915d1dbed 100644
--- a/drivers/net/fjes/fjes_main.c
+++ b/drivers/net/fjes/fjes_main.c
@@ -612,7 +612,7 @@ fjes_xmit_frame(struct sk_buff *skb, struct net_device *netdev)
 	eth = (struct ethhdr *)skb->data;
 	my_epid = hw->my_epid;
 
-	vlan = (vlan_get_tag(skb, &vlan_id) == 0) ? true : false;
+	vlan = vlan_get_tag(skb, &vlan_id) == 0;
 
 	data = skb->data;
 	len = skb->len;
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
