Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E87377292A
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Aug 2023 17:27:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3CDE940A01;
	Mon,  7 Aug 2023 15:27:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3CDE940A01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691422069;
	bh=o7v/GkS73b1zs9LBbAd2yXcDj2uqKwt6/tThIf4wtVQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fyiWCDoI6REXq6aUP/76iTnnG2I8zxY2BokU9Jyro90VZLobz5ZhOSGSWg/HwgZrD
	 O1EGI4DtSp+FdXglMCHRlvlJttbmGBgxEq6wD458fGwP8lAijAufJFRgKyOGtyQH00
	 BdrGl3jE9SYyDlAX1UpjPRD/Rd0qSOYkDND7REoKJ0dyCD58fvYYXjrf99rs8tMqim
	 bf+PUVa542X9t4AHYGnhyhQ7IjTgLxEB1uafP8Z7pbLSPCCKOtZ5mUzBwURA+lXC8n
	 uGDHR+vJWRjdLXjVy7kwKA5u97mkDeApIbemjrZHx7I8dE6a5KLPWBh8ryhGjOi46h
	 mo3dBpjjhGs4g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5SYM2nOr59C2; Mon,  7 Aug 2023 15:27:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 84D7940A53;
	Mon,  7 Aug 2023 15:27:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 84D7940A53
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 592461BF869
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 05:00:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A50C34055E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 04:59:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A50C34055E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1oLlXDensCdh for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Aug 2023 04:59:47 +0000 (UTC)
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [45.249.212.187])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E0A294036E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 04:59:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E0A294036E
Received: from kwepemi500008.china.huawei.com (unknown [172.30.72.53])
 by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4RK3xM2nf2zrSFk;
 Mon,  7 Aug 2023 12:58:31 +0800 (CST)
Received: from [10.67.109.254] (10.67.109.254) by
 kwepemi500008.china.huawei.com (7.221.188.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 7 Aug 2023 12:59:39 +0800
Message-ID: <815f4639-7a21-4438-b9dc-0b36f9b08b17@huawei.com>
Date: Mon, 7 Aug 2023 12:59:38 +0800
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
 <20230804035346.2879318-2-ruanjinjie@huawei.com>
 <15759f98483947999393a25b857bc4fe@realtek.com>
From: Ruan Jinjie <ruanjinjie@huawei.com>
In-Reply-To: <15759f98483947999393a25b857bc4fe@realtek.com>
X-Originating-IP: [10.67.109.254]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 kwepemi500008.china.huawei.com (7.221.188.139)
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Mon, 07 Aug 2023 15:27:25 +0000
Subject: Re: [Intel-wired-lan] [PATCH -next 1/6] net: thunderx: Remove
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



On 2023/8/7 9:39, Ping-Ke Shih wrote:
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
>> Subject: [PATCH -next 1/6] net: thunderx: Remove unnecessary ternary operators
>>
>> Ther are a little ternary operators, the true or false judgement
>> of which is unnecessary in C language semantics.
>>
>> Signed-off-by: Ruan Jinjie <ruanjinjie@huawei.com>
>> ---
>>  drivers/net/ethernet/cavium/thunder/nic_main.c    | 2 +-
>>  drivers/net/ethernet/cavium/thunder/thunder_bgx.c | 2 +-
>>  2 files changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/cavium/thunder/nic_main.c
>> b/drivers/net/ethernet/cavium/thunder/nic_main.c
>> index 0ec65ec634df..b7cf4ba89b7c 100644
>> --- a/drivers/net/ethernet/cavium/thunder/nic_main.c
>> +++ b/drivers/net/ethernet/cavium/thunder/nic_main.c
>> @@ -174,7 +174,7 @@ static void nic_mbx_send_ready(struct nicpf *nic, int vf)
>>                 if (mac)
>>                         ether_addr_copy((u8 *)&mbx.nic_cfg.mac_addr, mac);
>>         }
>> -       mbx.nic_cfg.sqs_mode = (vf >= nic->num_vf_en) ? true : false;
>> +       mbx.nic_cfg.sqs_mode = vf >= nic->num_vf_en;
>>         mbx.nic_cfg.node_id = nic->node;
>>
>>         mbx.nic_cfg.loopback_supported = vf < nic->num_vf_en;
>> diff --git a/drivers/net/ethernet/cavium/thunder/thunder_bgx.c
>> b/drivers/net/ethernet/cavium/thunder/thunder_bgx.c
>> index a317feb8decb..9e467cecc33a 100644
>> --- a/drivers/net/ethernet/cavium/thunder/thunder_bgx.c
>> +++ b/drivers/net/ethernet/cavium/thunder/thunder_bgx.c
>> @@ -957,7 +957,7 @@ static void bgx_poll_for_sgmii_link(struct lmac *lmac)
>>                 goto next_poll;
>>         }
>>
>> -       lmac->link_up = ((pcs_link & PCS_MRX_STATUS_LINK) != 0) ? true : false;
>> +       lmac->link_up = (pcs_link & PCS_MRX_STATUS_LINK) != 0;
> 
> lmac->link_up = !!(pcs_link & PCS_MRX_STATUS_LINK);

Thank you! I'll improve it sooner.

> 
>>         an_result = bgx_reg_read(lmac->bgx, lmac->lmacid,
>>                                  BGX_GMP_PCS_ANX_AN_RESULTS);
>>
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
