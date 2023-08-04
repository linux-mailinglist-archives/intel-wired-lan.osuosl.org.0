Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 327BB770448
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Aug 2023 17:21:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C44B840583;
	Fri,  4 Aug 2023 15:21:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C44B840583
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691162514;
	bh=tjKBZEyJEzQ7KTvGN83hkQczH2k7XaoK3a17pF3qn0M=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nZFh/Zd1HrKEDcAblBgQzNzsm9n+VOf2Emy4Ku44lBH+xsFMnXHkTfG4pmPccxPVa
	 YZHDJgSk2zPXD59q93v2ZVsAqs7tN4UkNnIj/2IiPdHRy7FlLPTZGudHpVqwJDLVxN
	 EY8FMPE5tYSbLC4DRqwvZSNcTSxh80103ugVj+PEuTF7Lne2qSptYhsi7tYhWmSk7e
	 yRtmAwXLJdko4mUazmIizJ4/dPp+i8caG5aD8j6jzQXs1/XO9aV4TMtSs9QaqM2xu2
	 SJM4ypy0DA2jcZCw4zNwjR4106mBIkJ7WFcwsjcFdeuX9KcwCCFZIb/ALG0vj291Eg
	 DvTS2McD1gBpA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rb6OvEbAP1Bf; Fri,  4 Aug 2023 15:21:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BB66E40498;
	Fri,  4 Aug 2023 15:21:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BB66E40498
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5B0151BF2A3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 04:11:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CDE10401A3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 04:11:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CDE10401A3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MM_0kLFv3QYa for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Aug 2023 04:11:11 +0000 (UTC)
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [45.249.212.187])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 065184014E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 04:11:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 065184014E
Received: from kwepemi500008.china.huawei.com (unknown [172.30.72.55])
 by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4RHBdr2xFszrS75;
 Fri,  4 Aug 2023 11:53:36 +0800 (CST)
Received: from huawei.com (10.90.53.73) by kwepemi500008.china.huawei.com
 (7.221.188.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Fri, 4 Aug
 2023 11:54:40 +0800
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
Date: Fri, 4 Aug 2023 11:53:43 +0800
Message-ID: <20230804035346.2879318-4-ruanjinjie@huawei.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230804035346.2879318-1-ruanjinjie@huawei.com>
References: <20230804035346.2879318-1-ruanjinjie@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.90.53.73]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 kwepemi500008.china.huawei.com (7.221.188.139)
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Fri, 04 Aug 2023 15:21:40 +0000
Subject: [Intel-wired-lan] [PATCH -next 3/6] net/mlx4: Remove an unnecessary
 ternary operator
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
 drivers/net/ethernet/mellanox/mlx4/port.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/mellanox/mlx4/port.c b/drivers/net/ethernet/mellanox/mlx4/port.c
index 256a06b3c096..1c289488d050 100644
--- a/drivers/net/ethernet/mellanox/mlx4/port.c
+++ b/drivers/net/ethernet/mellanox/mlx4/port.c
@@ -176,7 +176,7 @@ static bool mlx4_need_mf_bond(struct mlx4_dev *dev)
 	mlx4_foreach_port(i, dev, MLX4_PORT_TYPE_ETH)
 		++num_eth_ports;
 
-	return (num_eth_ports ==  2) ? true : false;
+	return num_eth_ports ==  2;
 }
 
 int __mlx4_register_mac(struct mlx4_dev *dev, u8 port, u64 mac)
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
