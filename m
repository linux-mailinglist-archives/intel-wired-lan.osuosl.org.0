Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E0E477292E
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Aug 2023 17:27:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B7A7540A98;
	Mon,  7 Aug 2023 15:27:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B7A7540A98
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691422074;
	bh=2ZoXzYvFiiYZXgGxlYbAtxBEc9yMo7plGq5k22BX2xU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fFCp1mFGSltk+E/CY4rv5MWeTvC5FXxkd4DPF9NfilWdWF77cCqczY4V7omzLFCGq
	 1wDwhyLHm9GbCTCvrtIQ3aRUdU2Q0Jxn8XecnPQkDrvSkZAArpAbtJXffGpy7AWMKq
	 hBXwOh6xYCux8IFVUgFKJwFGdoQyCWj1pYlN7lJmSvMKCOQUUbs2e4eKOiVBSeuHtn
	 rTZBwzbDP01o9GdtEZgAtKF3Y9QozLomeniwS1W36TijmCvLACzxaPTM1ydLUeA2Wh
	 xaSfVS3y6WoK8tR16ht3bMYZNpeJMJ/rU3F3nPpnhG8fuXAiy2uSwYLHWbSr5nBZRh
	 GCHSg5eXRXMnA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8R9qrhX64nY9; Mon,  7 Aug 2023 15:27:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E46D1404FF;
	Mon,  7 Aug 2023 15:27:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E46D1404FF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 02A921BF909
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 05:00:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 176C08140D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 05:00:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 176C08140D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C12pNSkQPjVi for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Aug 2023 05:00:43 +0000 (UTC)
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com [45.249.212.189])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0025C80966
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 05:00:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0025C80966
Received: from kwepemi500008.china.huawei.com (unknown [172.30.72.55])
 by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4RK3wY0dzpz1Z1Y9;
 Mon,  7 Aug 2023 12:57:49 +0800 (CST)
Received: from [10.67.109.254] (10.67.109.254) by
 kwepemi500008.china.huawei.com (7.221.188.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 7 Aug 2023 13:00:35 +0800
Message-ID: <e4d0e004-e436-6a43-17d2-96c0fe4dd551@huawei.com>
Date: Mon, 7 Aug 2023 13:00:35 +0800
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
 <20230804035346.2879318-7-ruanjinjie@huawei.com>
 <f72991b36d6a449ea5cf476d438bcd1d@realtek.com>
From: Ruan Jinjie <ruanjinjie@huawei.com>
In-Reply-To: <f72991b36d6a449ea5cf476d438bcd1d@realtek.com>
X-Originating-IP: [10.67.109.254]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 kwepemi500008.china.huawei.com (7.221.188.139)
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Mon, 07 Aug 2023 15:27:25 +0000
Subject: Re: [Intel-wired-lan] [PATCH -next 6/6] brcm80211: Remove an
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



On 2023/8/7 9:42, Ping-Ke Shih wrote:
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
>> Subject: [PATCH -next 6/6] brcm80211: Remove an unnecessary ternary operator
>>
>> There is a ternary operator, the true or false judgement of which
>> is unnecessary in C language semantics.
>>
>> Signed-off-by: Ruan Jinjie <ruanjinjie@huawei.com>
>> ---
>>  drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_n.c | 3 +--
>>  1 file changed, 1 insertion(+), 2 deletions(-)
>>
>> diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_n.c
>> b/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_n.c
>> index 8580a2754789..8328b22829c5 100644
>> --- a/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_n.c
>> +++ b/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_n.c
>> @@ -27351,8 +27351,7 @@ static int wlc_phy_cal_rxiq_nphy_rev3(struct brcms_phy *pi,
>>
>>         for (rx_core = 0; rx_core < pi->pubpi.phy_corenum; rx_core++) {
>>
>> -               skip_rxiqcal =
>> -                       ((rxcore_state & (1 << rx_core)) == 0) ? true : false;
>> +               skip_rxiqcal = (rxcore_state & (1 << rx_core)) == 0;
> 
> skip_rxiqcal = !(rxcore_state & (1 << rx_core));


Thank you! I'll improve it sooner.

> 
>>
>>                 wlc_phy_rxcal_physetup_nphy(pi, rx_core);
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
