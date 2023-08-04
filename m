Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F193770449
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Aug 2023 17:22:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 08F9C40531;
	Fri,  4 Aug 2023 15:21:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 08F9C40531
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691162519;
	bh=Z/WCRpvGhS/FNfkoTsdjD4RdOo03tP9v2900R3XD9ZQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=51liF164MDSHCtKzZ81uTAprD4At/jv460tT2yHJ6qFwy6BQutkiPIgD6qIf/t+xk
	 bxVt4ucTIxTZUloK1iBh4lsiu0jveyEatiPz88Ioe3+IluFj4mvT+eAehMdLhiXHdf
	 wIoS3OhYnowlql1nycyOTqvjdacjf4WHPEYEk3RLAfe6LCoPrP39ZAQeQdQIV+9kuq
	 wEGVJjmXD6h1DvSV6oUWyx4w3w5FttIMWrHsxJk3+NE8rOPyTLmVkv038wqgU43tNK
	 CecWfvxPfvcBprfFbdS20yOjou58g94yAsS/kbHWN3I92uOcOa7c0fZQfcRydodSfW
	 EdiFmP6U88PuQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q3EYYYUFoKy1; Fri,  4 Aug 2023 15:21:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F1D7E405B0;
	Fri,  4 Aug 2023 15:21:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F1D7E405B0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5F8091BF2A3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 04:11:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C214760BBD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 04:11:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C214760BBD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cTLTX44BKruM for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Aug 2023 04:11:12 +0000 (UTC)
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [45.249.212.187])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0860A60F3D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 04:11:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0860A60F3D
Received: from kwepemi500008.china.huawei.com (unknown [172.30.72.53])
 by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4RHBdp61jnzrS6X;
 Fri,  4 Aug 2023 11:53:34 +0800 (CST)
Received: from huawei.com (10.90.53.73) by kwepemi500008.china.huawei.com
 (7.221.188.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Fri, 4 Aug
 2023 11:54:38 +0800
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
Date: Fri, 4 Aug 2023 11:53:42 +0800
Message-ID: <20230804035346.2879318-3-ruanjinjie@huawei.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230804035346.2879318-1-ruanjinjie@huawei.com>
References: <20230804035346.2879318-1-ruanjinjie@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.90.53.73]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 kwepemi500008.china.huawei.com (7.221.188.139)
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Fri, 04 Aug 2023 15:21:40 +0000
Subject: [Intel-wired-lan] [PATCH -next 2/6] ethernet/intel: Remove
 unnecessary ternary operators
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

Ther are a little ternary operators, the true or false judgement
of which is unnecessary in C language semantics.

Signed-off-by: Ruan Jinjie <ruanjinjie@huawei.com>
---
 drivers/net/ethernet/intel/igb/e1000_phy.c | 2 +-
 drivers/net/ethernet/intel/igc/igc_phy.c   | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/e1000_phy.c b/drivers/net/ethernet/intel/igb/e1000_phy.c
index a018000f7db9..c123c9dd6a49 100644
--- a/drivers/net/ethernet/intel/igb/e1000_phy.c
+++ b/drivers/net/ethernet/intel/igb/e1000_phy.c
@@ -1652,7 +1652,7 @@ s32 igb_phy_has_link(struct e1000_hw *hw, u32 iterations,
 			udelay(usec_interval);
 	}
 
-	*success = (i < iterations) ? true : false;
+	*success = i < iterations;
 
 	return ret_val;
 }
diff --git a/drivers/net/ethernet/intel/igc/igc_phy.c b/drivers/net/ethernet/intel/igc/igc_phy.c
index 53b77c969c85..a553e9d719e7 100644
--- a/drivers/net/ethernet/intel/igc/igc_phy.c
+++ b/drivers/net/ethernet/intel/igc/igc_phy.c
@@ -93,7 +93,7 @@ s32 igc_phy_has_link(struct igc_hw *hw, u32 iterations,
 			udelay(usec_interval);
 	}
 
-	*success = (i < iterations) ? true : false;
+	*success = i < iterations;
 
 	return ret_val;
 }
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
