Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CEE7770446
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Aug 2023 17:21:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 383FF405AF;
	Fri,  4 Aug 2023 15:21:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 383FF405AF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691162506;
	bh=kte+Axk9mT8Whgh0XBuQLu2xRe3q23thP3UIvpZuADc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=I2gYvISdcvgcJmK1IqVcPUlQLjvPeLLJJHvAdNgaWwE0HC32cGxeB7wdnImngNMhx
	 4tl7dTlwD4qgYUiYCD+eesSc7+9yxj4WxFp3NFNTc2jToYFv9ujCnyT4lxjPlt6i3k
	 n7ftvmlHbA0KpUX88kOI3gRBDMzxSp9b0NJHjEtiokSdeL7GPUNtU8JQopPhZxbwTY
	 EBzw/3/ZY3ga6dcc1Bq5my5uIiL0njIq/y9k5potQR5q8kV0rOk5IeZyWhEalMZn2r
	 9P05NqtDdKAqifsEbzdop/teWSkFrNTzY1G/RqDSkOAZhV+iiHMNZqWdrtB+4WOshd
	 JNdf4txhmBRkQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HxQJXbZdjsLM; Fri,  4 Aug 2023 15:21:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3518440498;
	Fri,  4 Aug 2023 15:21:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3518440498
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8B1491BF2A3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 04:10:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8A88683449
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 04:10:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8A88683449
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aPFd7Q3vT5oa for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Aug 2023 04:10:46 +0000 (UTC)
X-Greylist: delayed 963 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 04 Aug 2023 04:10:45 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C76A383B33
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com [45.249.212.189])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C76A383B33
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 04:10:45 +0000 (UTC)
Received: from kwepemi500008.china.huawei.com (unknown [172.30.72.54])
 by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4RHBbq6wqtzJrHg;
 Fri,  4 Aug 2023 11:51:51 +0800 (CST)
Received: from huawei.com (10.90.53.73) by kwepemi500008.china.huawei.com
 (7.221.188.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Fri, 4 Aug
 2023 11:54:35 +0800
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
Date: Fri, 4 Aug 2023 11:53:40 +0800
Message-ID: <20230804035346.2879318-1-ruanjinjie@huawei.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Originating-IP: [10.90.53.73]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 kwepemi500008.china.huawei.com (7.221.188.139)
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Fri, 04 Aug 2023 15:21:40 +0000
Subject: [Intel-wired-lan] [PATCH -next 0/6] net: Remove unnecessary ternary
 operators
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

There are a little ternary operators, the true or false judgement
of which is unnecessary in C language semantics.

Ruan Jinjie (6):
  net: thunderx: Remove unnecessary ternary operators
  ethernet/intel: Remove unnecessary ternary operators
  net/mlx4: Remove an unnecessary ternary operator
  net: ethernet: renesas: rswitch: Remove an unnecessary ternary
    operator
  net: fjes: Remove an unnecessary ternary operator
  brcm80211: Remove an unnecessary ternary operator

 drivers/net/ethernet/cavium/thunder/nic_main.c               | 2 +-
 drivers/net/ethernet/cavium/thunder/thunder_bgx.c            | 2 +-
 drivers/net/ethernet/intel/igb/e1000_phy.c                   | 2 +-
 drivers/net/ethernet/intel/igc/igc_phy.c                     | 2 +-
 drivers/net/ethernet/mellanox/mlx4/port.c                    | 2 +-
 drivers/net/ethernet/renesas/rcar_gen4_ptp.c                 | 2 +-
 drivers/net/fjes/fjes_main.c                                 | 2 +-
 drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_n.c | 3 +--
 8 files changed, 8 insertions(+), 9 deletions(-)

-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
