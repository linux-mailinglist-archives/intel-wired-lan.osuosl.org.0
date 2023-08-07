Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57ABF772924
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Aug 2023 17:27:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E1BBC40A53;
	Mon,  7 Aug 2023 15:27:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E1BBC40A53
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691422055;
	bh=tTzL7drsrWsSycRe+tOp9HNQHBY7QS4Kn2N7XlbkTqc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=78Cs458WjIc4tkPQRuOJmh16Qh0HLjsNhstFkRPqF26+xI1kWsFnASNrUUFifjCDw
	 eNWn+UgvojoTkVKwxe/Yem49tmdBQZ6AwWRHavJviU1vRF6L1eavGncy30whfVLXMu
	 dzevcPkJ+Dpu2Lg7TWTnACn1XKKZvj3LpdHCdpzQYlLy94RiyU31M7MDgb/JSQpN4T
	 wwhb1SHasepW2EV6sBSNQj7BRjJJG9V2dATLrG7W9fHuq9JQi0kSol8QnYkyEqOVOc
	 ntUmOGmDvIGniO+rhwaNqBHNGsMEo8U9LKJVxBSczza5f3ttcNJGBZ3duRw4xI/qb0
	 eViEV2u5V7p1A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qVE5cqQ0TUjA; Mon,  7 Aug 2023 15:27:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B39B640A01;
	Mon,  7 Aug 2023 15:27:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B39B640A01
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 12B071BF32A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 01:53:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 14DCB60B9C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 01:53:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 14DCB60B9C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mzfbP3TaSyXm for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Aug 2023 01:53:19 +0000 (UTC)
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4B66660AC6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 01:53:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4B66660AC6
X-SpamFilter-By: ArmorX SpamTrap 5.77 with qID 3771fdYB3029494,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (rtexh36506.realtek.com.tw[172.21.6.27])
 by rtits2.realtek.com.tw (8.15.2/2.81/5.90) with ESMTPS id 3771fdYB3029494
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=FAIL);
 Mon, 7 Aug 2023 09:41:39 +0800
Received: from RTEXDAG02.realtek.com.tw (172.21.6.101) by
 RTEXH36506.realtek.com.tw (172.21.6.27) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.17; Mon, 7 Aug 2023 09:41:34 +0800
Received: from RTEXMBS04.realtek.com.tw (172.21.6.97) by
 RTEXDAG02.realtek.com.tw (172.21.6.101) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.7; Mon, 7 Aug 2023 09:41:33 +0800
Received: from RTEXMBS04.realtek.com.tw ([fe80::e138:e7f1:4709:ff4d]) by
 RTEXMBS04.realtek.com.tw ([fe80::e138:e7f1:4709:ff4d%5]) with mapi id
 15.01.2375.007; Mon, 7 Aug 2023 09:41:33 +0800
From: Ping-Ke Shih <pkshih@realtek.com>
To: Ruan Jinjie <ruanjinjie@huawei.com>, "sgoutham@marvell.com"
 <sgoutham@marvell.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "jesse.brandeburg@intel.com" <jesse.brandeburg@intel.com>,
 "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>,
 "tariqt@nvidia.com" <tariqt@nvidia.com>, "s.shtylyov@omp.ru"
 <s.shtylyov@omp.ru>, "aspriel@gmail.com" <aspriel@gmail.com>,
 "franky.lin@broadcom.com" <franky.lin@broadcom.com>,
 "hante.meuleman@broadcom.com" <hante.meuleman@broadcom.com>,
 "kvalo@kernel.org" <kvalo@kernel.org>, "richardcochran@gmail.com"
 <richardcochran@gmail.com>, "yoshihiro.shimoda.uh@renesas.com"
 <yoshihiro.shimoda.uh@renesas.com>, "u.kleine-koenig@pengutronix.de"
 <u.kleine-koenig@pengutronix.de>,
 "mkl@pengutronix.de" <mkl@pengutronix.de>,
 "lee@kernel.org" <lee@kernel.org>, "set_pte_at@outlook.com"
 <set_pte_at@outlook.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "linux-rdma@vger.kernel.org"
 <linux-rdma@vger.kernel.org>, "linux-renesas-soc@vger.kernel.org"
 <linux-renesas-soc@vger.kernel.org>, "linux-wireless@vger.kernel.org"
 <linux-wireless@vger.kernel.org>, "brcm80211-dev-list.pdl@broadcom.com"
 <brcm80211-dev-list.pdl@broadcom.com>, "SHA-cyfmac-dev-list@infineon.com"
 <SHA-cyfmac-dev-list@infineon.com>
Thread-Topic: [PATCH -next 3/6] net/mlx4: Remove an unnecessary ternary
 operator
Thread-Index: AQHZxodwyq+yd8Ng70KD3Dr7pngH66/eE0hg
Date: Mon, 7 Aug 2023 01:41:33 +0000
Message-ID: <fd3e9bb40d12421caaddda7279aece7a@realtek.com>
References: <20230804035346.2879318-1-ruanjinjie@huawei.com>
 <20230804035346.2879318-4-ruanjinjie@huawei.com>
In-Reply-To: <20230804035346.2879318-4-ruanjinjie@huawei.com>
Accept-Language: en-US, zh-TW
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.69.188]
x-kse-serverinfo: RTEXDAG02.realtek.com.tw, 9
x-kse-antispam-interceptor-info: fallback
x-kse-antivirus-interceptor-info: fallback
MIME-Version: 1.0
X-KSE-AntiSpam-Interceptor-Info: fallback
X-Mailman-Approved-At: Mon, 07 Aug 2023 15:27:25 +0000
Subject: Re: [Intel-wired-lan] [PATCH -next 3/6] net/mlx4: Remove an
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



> -----Original Message-----
> From: Ruan Jinjie <ruanjinjie@huawei.com>
> Sent: Friday, August 4, 2023 11:54 AM
> To: sgoutham@marvell.com; davem@davemloft.net; edumazet@google.com; kuba@kernel.org; pabeni@redhat.com;
> jesse.brandeburg@intel.com; anthony.l.nguyen@intel.com; tariqt@nvidia.com; s.shtylyov@omp.ru;
> aspriel@gmail.com; franky.lin@broadcom.com; hante.meuleman@broadcom.com; kvalo@kernel.org;
> richardcochran@gmail.com; yoshihiro.shimoda.uh@renesas.com; ruanjinjie@huawei.com;
> u.kleine-koenig@pengutronix.de; mkl@pengutronix.de; lee@kernel.org; set_pte_at@outlook.com;
> linux-arm-kernel@lists.infradead.org; netdev@vger.kernel.org; intel-wired-lan@lists.osuosl.org;
> linux-rdma@vger.kernel.org; linux-renesas-soc@vger.kernel.org; linux-wireless@vger.kernel.org;
> brcm80211-dev-list.pdl@broadcom.com; SHA-cyfmac-dev-list@infineon.com
> Subject: [PATCH -next 3/6] net/mlx4: Remove an unnecessary ternary operator
> 
> There is a ternary operator, the true or false judgement
> of which is unnecessary in C language semantics.
> 
> Signed-off-by: Ruan Jinjie <ruanjinjie@huawei.com>
> ---
>  drivers/net/ethernet/mellanox/mlx4/port.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/mellanox/mlx4/port.c b/drivers/net/ethernet/mellanox/mlx4/port.c
> index 256a06b3c096..1c289488d050 100644
> --- a/drivers/net/ethernet/mellanox/mlx4/port.c
> +++ b/drivers/net/ethernet/mellanox/mlx4/port.c
> @@ -176,7 +176,7 @@ static bool mlx4_need_mf_bond(struct mlx4_dev *dev)
>         mlx4_foreach_port(i, dev, MLX4_PORT_TYPE_ETH)
>                 ++num_eth_ports;
> 
> -       return (num_eth_ports ==  2) ? true : false;
> +       return num_eth_ports ==  2;

It should be one space between '=' and '2'.

>  }
> 
>  int __mlx4_register_mac(struct mlx4_dev *dev, u8 port, u64 mac)
> --
> 2.34.1
> 
> 
> ------Please consider the environment before printing this e-mail.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
