Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB1D5772923
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Aug 2023 17:27:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7A5FA40B72;
	Mon,  7 Aug 2023 15:27:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7A5FA40B72
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691422051;
	bh=KaiTwrLMi4nJhfY51y//ijfBFznzeFshMNX4Lvq4+rU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JvX0vNUWr02b5v9o0ydWC9nyspUZpvlmFBFqh9fcNVEIUXpMcmjOo6Mm4bt1Bz/To
	 7lCTuFc6HOjjrxMbmeMRVfPBsdwJh+NYI4A43l2DrAavh0GU1SK4iGrKy+VVKYxrsD
	 ND9qkXZ02GNlbH1BO9gFVj7z1bs0MgvyS+yZEllWgB/D/8pP8/gh1tsE9Ffhz2HtG7
	 AewnkTtRCAbe9kFi7fTQb6IBkJRA937de6309M0q/MQXZgsPy2OzyiXJ0xPiZ8XQcy
	 xnuyPDj0UrMVAdPW0kN2RNLQO/7jXSYBCe9uKQS5s2PFqGDtXC0l2i7tyGkXflIy7u
	 uV+aAl0XptiQg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lFWNa2cda5QY; Mon,  7 Aug 2023 15:27:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4D01B40A5C;
	Mon,  7 Aug 2023 15:27:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4D01B40A5C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3F6371BF32A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 01:53:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 959FA60AD8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 01:53:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 959FA60AD8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1DH-NlvZ_1Rd for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Aug 2023 01:53:18 +0000 (UTC)
X-Greylist: delayed 649 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 07 Aug 2023 01:53:18 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4EF9E6080B
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4EF9E6080B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 01:53:18 +0000 (UTC)
X-SpamFilter-By: ArmorX SpamTrap 5.77 with qID 3771hFiC5030517,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (rtexh36506.realtek.com.tw[172.21.6.27])
 by rtits2.realtek.com.tw (8.15.2/2.81/5.90) with ESMTPS id 3771hFiC5030517
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=FAIL);
 Mon, 7 Aug 2023 09:43:15 +0800
Received: from RTEXMBS04.realtek.com.tw (172.21.6.97) by
 RTEXH36506.realtek.com.tw (172.21.6.27) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.17; Mon, 7 Aug 2023 09:42:43 +0800
Received: from RTEXMBS04.realtek.com.tw (172.21.6.97) by
 RTEXMBS04.realtek.com.tw (172.21.6.97) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.7; Mon, 7 Aug 2023 09:42:43 +0800
Received: from RTEXMBS04.realtek.com.tw ([fe80::e138:e7f1:4709:ff4d]) by
 RTEXMBS04.realtek.com.tw ([fe80::e138:e7f1:4709:ff4d%5]) with mapi id
 15.01.2375.007; Mon, 7 Aug 2023 09:42:43 +0800
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
Thread-Topic: [PATCH -next 6/6] brcm80211: Remove an unnecessary ternary
 operator
Thread-Index: AQHZxodyLvV38Vq6lUarMSYN6WoMea/eE5fw
Date: Mon, 7 Aug 2023 01:42:43 +0000
Message-ID: <f72991b36d6a449ea5cf476d438bcd1d@realtek.com>
References: <20230804035346.2879318-1-ruanjinjie@huawei.com>
 <20230804035346.2879318-7-ruanjinjie@huawei.com>
In-Reply-To: <20230804035346.2879318-7-ruanjinjie@huawei.com>
Accept-Language: en-US, zh-TW
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.69.188]
x-kse-serverinfo: RTEXMBS04.realtek.com.tw, 9
x-kse-antispam-interceptor-info: fallback
x-kse-antivirus-interceptor-info: fallback
MIME-Version: 1.0
X-KSE-AntiSpam-Interceptor-Info: fallback
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
> Subject: [PATCH -next 6/6] brcm80211: Remove an unnecessary ternary operator
> 
> There is a ternary operator, the true or false judgement of which
> is unnecessary in C language semantics.
> 
> Signed-off-by: Ruan Jinjie <ruanjinjie@huawei.com>
> ---
>  drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_n.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_n.c
> b/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_n.c
> index 8580a2754789..8328b22829c5 100644
> --- a/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_n.c
> +++ b/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_n.c
> @@ -27351,8 +27351,7 @@ static int wlc_phy_cal_rxiq_nphy_rev3(struct brcms_phy *pi,
> 
>         for (rx_core = 0; rx_core < pi->pubpi.phy_corenum; rx_core++) {
> 
> -               skip_rxiqcal =
> -                       ((rxcore_state & (1 << rx_core)) == 0) ? true : false;
> +               skip_rxiqcal = (rxcore_state & (1 << rx_core)) == 0;

skip_rxiqcal = !(rxcore_state & (1 << rx_core));

> 
>                 wlc_phy_rxcal_physetup_nphy(pi, rx_core);
> 
> --
> 2.34.1
> 
> 
> ------Please consider the environment before printing this e-mail.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
