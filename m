Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D780A77044B
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Aug 2023 17:22:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6BE554159D;
	Fri,  4 Aug 2023 15:22:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6BE554159D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691162527;
	bh=cAC412K8zLO6nmwaHKmhpkypyXIIzArzbASTfy8o/6o=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pI4GrXi2EUUinZmkrpKAcSDgckzuUld7J1yKfdHqegu3o7/orfzo7hXV6B4M3lJ0O
	 S1lVbsnlCrLHK/ZZ5wRVHHEj5qFVQaZO+U9yyiJM4nKfJI5Bxf5ZAfJSwZPoOb0h3I
	 fkTKLU+Gae80gEMfsKYYtSplouexRRVhjGQElHph7HXXmE+R9ONgzo2yGzRd38Y/Ws
	 FrLQvM28p+Z4Pr1RmKhVvO7eRTfc0/t+qBeeXcJW8Y7ZEBW8c2tcKnKPH3prhiB5Np
	 kCe/LwIPVk64apUcmeHcSyNi5k3yyE0dxUc9A6jR5EFzmzNv+eGEpn0Yq4EABpgRqO
	 PvtDXe6KKf9Bw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zRCvWLcsHmlJ; Fri,  4 Aug 2023 15:22:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6C112400AB;
	Fri,  4 Aug 2023 15:22:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6C112400AB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 10A021BF2A3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 04:11:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D2E9940519
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 04:11:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D2E9940519
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A2LgvN9qE_0B for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Aug 2023 04:11:18 +0000 (UTC)
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [45.249.212.188])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 17B994015F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 04:11:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 17B994015F
Received: from kwepemi500008.china.huawei.com (unknown [172.30.72.53])
 by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4RHBb820qSzNmlS;
 Fri,  4 Aug 2023 11:51:16 +0800 (CST)
Received: from huawei.com (10.90.53.73) by kwepemi500008.china.huawei.com
 (7.221.188.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Fri, 4 Aug
 2023 11:54:41 +0800
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
Date: Fri, 4 Aug 2023 11:53:44 +0800
Message-ID: <20230804035346.2879318-5-ruanjinjie@huawei.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230804035346.2879318-1-ruanjinjie@huawei.com>
References: <20230804035346.2879318-1-ruanjinjie@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.90.53.73]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 kwepemi500008.china.huawei.com (7.221.188.139)
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Fri, 04 Aug 2023 15:21:40 +0000
Subject: [Intel-wired-lan] [PATCH -next 4/6] net: ethernet: renesas:
 rswitch: Remove an unnecessary ternary operator
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

There is a ternary operator, the true or false judgement
of which is unnecessary in C language semantics.

Signed-off-by: Ruan Jinjie <ruanjinjie@huawei.com>
---
 drivers/net/ethernet/renesas/rcar_gen4_ptp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/renesas/rcar_gen4_ptp.c b/drivers/net/ethernet/renesas/rcar_gen4_ptp.c
index c007e33c47e1..37f7359678e5 100644
--- a/drivers/net/ethernet/renesas/rcar_gen4_ptp.c
+++ b/drivers/net/ethernet/renesas/rcar_gen4_ptp.c
@@ -29,7 +29,7 @@ static const struct rcar_gen4_ptp_reg_offset s4_offs = {
 static int rcar_gen4_ptp_adjfine(struct ptp_clock_info *ptp, long scaled_ppm)
 {
 	struct rcar_gen4_ptp_private *ptp_priv = ptp_to_priv(ptp);
-	bool neg_adj = scaled_ppm < 0 ? true : false;
+	bool neg_adj = scaled_ppm < 0;
 	s64 addend = ptp_priv->default_addend;
 	s64 diff;
 
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
