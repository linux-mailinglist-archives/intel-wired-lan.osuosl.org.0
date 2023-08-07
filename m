Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D231772929
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Aug 2023 17:27:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BBC8940BA7;
	Mon,  7 Aug 2023 15:27:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BBC8940BA7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691422064;
	bh=Xlj6EDtBJRdyFSan2x42RlvYo/CQHOJTKyKZXafCmNg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hhzYPvBQaQ9F2RhJT5c/eoz6ipNnLCVfdiGC2pjQvDPDr8jMqSLwVHSN2YxiWYbjW
	 F+kWnw9iPlQZkIyoTGuW9UZUaNa3ku6O+WpXi5jU6O0XhfEMGRoIbYrqpRhuAASrPa
	 tzVB84kZDCK+jcto0Ep8LHT4BgMtiVS5Dn1DueCf0ywRU2VQgq05+zTRCpWvN02N2J
	 ECKBFU6+mv/ci3Cazv0V73a+dt1VNZygE38R9yMDTnOvRcR6hSpbqTHrDMtjR9R/YB
	 X27OljY1oFRBcg/c1xmAbipQnnbc6g43WiE6WX51RtR2FGT1hO4uQ4B93+m2j5RsFW
	 YRpfw26PcxeXg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eLolLro1tS-3; Mon,  7 Aug 2023 15:27:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 34EE54064F;
	Mon,  7 Aug 2023 15:27:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 34EE54064F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 196941BF869
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 05:00:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 60CBB81471
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 05:00:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 60CBB81471
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8ybFKcIZ8NIZ for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Aug 2023 05:00:14 +0000 (UTC)
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [45.249.212.187])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5A8568140D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 05:00:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5A8568140D
Received: from kwepemi500008.china.huawei.com (unknown [172.30.72.57])
 by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4RK3xx5pCXzrSG3;
 Mon,  7 Aug 2023 12:59:01 +0800 (CST)
Received: from [10.67.109.254] (10.67.109.254) by
 kwepemi500008.china.huawei.com (7.221.188.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 7 Aug 2023 13:00:09 +0800
Message-ID: <e694d4ce-037a-45c7-d2c4-67ede755a73b@huawei.com>
Date: Mon, 7 Aug 2023 13:00:09 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Content-Language: en-US
To: Ping-Ke Shih <pkshih@realtek.com>, "sgoutham@marvell.com"
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
 <u.kleine-koenig@pengutronix.de>, "mkl@pengutronix.de" <mkl@pengutronix.de>,
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
References: <20230804035346.2879318-1-ruanjinjie@huawei.com>
 <20230804035346.2879318-4-ruanjinjie@huawei.com>
 <fd3e9bb40d12421caaddda7279aece7a@realtek.com>
From: Ruan Jinjie <ruanjinjie@huawei.com>
In-Reply-To: <fd3e9bb40d12421caaddda7279aece7a@realtek.com>
X-Originating-IP: [10.67.109.254]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 kwepemi500008.china.huawei.com (7.221.188.139)
X-CFilter-Loop: Reflected
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



On 2023/8/7 9:41, Ping-Ke Shih wrote:
> 
> 
>> -----Original Message-----
>> From: Ruan Jinjie <ruanjinjie@huawei.com>
>> Sent: Friday, August 4, 2023 11:54 AM
>> To: sgoutham@marvell.com; davem@davemloft.net; edumazet@google.com; kuba@kernel.org; pabeni@redhat.com;
>> jesse.brandeburg@intel.com; anthony.l.nguyen@intel.com; tariqt@nvidia.com; s.shtylyov@omp.ru;
>> aspriel@gmail.com; franky.lin@broadcom.com; hante.meuleman@broadcom.com; kvalo@kernel.org;
>> richardcochran@gmail.com; yoshihiro.shimoda.uh@renesas.com; ruanjinjie@huawei.com;
>> u.kleine-koenig@pengutronix.de; mkl@pengutronix.de; lee@kernel.org; set_pte_at@outlook.com;
>> linux-arm-kernel@lists.infradead.org; netdev@vger.kernel.org; intel-wired-lan@lists.osuosl.org;
>> linux-rdma@vger.kernel.org; linux-renesas-soc@vger.kernel.org; linux-wireless@vger.kernel.org;
>> brcm80211-dev-list.pdl@broadcom.com; SHA-cyfmac-dev-list@infineon.com
>> Subject: [PATCH -next 3/6] net/mlx4: Remove an unnecessary ternary operator
>>
>> There is a ternary operator, the true or false judgement
>> of which is unnecessary in C language semantics.
>>
>> Signed-off-by: Ruan Jinjie <ruanjinjie@huawei.com>
>> ---
>>  drivers/net/ethernet/mellanox/mlx4/port.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/net/ethernet/mellanox/mlx4/port.c b/drivers/net/ethernet/mellanox/mlx4/port.c
>> index 256a06b3c096..1c289488d050 100644
>> --- a/drivers/net/ethernet/mellanox/mlx4/port.c
>> +++ b/drivers/net/ethernet/mellanox/mlx4/port.c
>> @@ -176,7 +176,7 @@ static bool mlx4_need_mf_bond(struct mlx4_dev *dev)
>>         mlx4_foreach_port(i, dev, MLX4_PORT_TYPE_ETH)
>>                 ++num_eth_ports;
>>
>> -       return (num_eth_ports ==  2) ? true : false;
>> +       return num_eth_ports ==  2;
> 
> It should be one space between '=' and '2'.

Thank you! I'll improve it sooner.

> 
>>  }
>>
>>  int __mlx4_register_mac(struct mlx4_dev *dev, u8 port, u64 mac)
>> --
>> 2.34.1
>>
>>
>> ------Please consider the environment before printing this e-mail.
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
