Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C9D772926
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Aug 2023 17:27:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3062E404FF;
	Mon,  7 Aug 2023 15:27:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3062E404FF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691422060;
	bh=ElDmo4EKtQAL6wpG0vpSVkHGEym2zCL3rklgJh4JkEA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Z0yaZBPvNugZ/AJiI1cL5spm8mVSQVnTxd7ic3XqiNBaBREXR5GHeRwP4xZa3T4Ld
	 plmU58LobjVnawymXgYgxwJQhYj/EJEHbhesNIUpwA34mjYnoLC70T/eb9dlnqCU7V
	 2OKgPZeZJHIcdJ2C6IMh1O0EJ5Huk8i2jj2zNbAKdatR1Ewi3txATUNFZst+PlJd4h
	 F3DIvT05mop3sMoZnjFkhVVbzyfS1yvzT154pdy51HLKZy83SKqyn8IdaV5GBdgr5B
	 WMNb/fCNIItmeH7gNs08ghRSquqoxOAGQaIG7kInYm7gHB/9YsUYHJluDQVgvMBoW9
	 BllbhCuYpR1UQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id agZSL3AHXVPO; Mon,  7 Aug 2023 15:27:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E6EA040AAF;
	Mon,  7 Aug 2023 15:27:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E6EA040AAF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2B6191BF32A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 01:53:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B192760AC6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 01:53:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B192760AC6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ztj7xwsHh74E for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Aug 2023 01:53:20 +0000 (UTC)
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
 by smtp3.osuosl.org (Postfix) with ESMTP id EF13860A99
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 01:53:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EF13860A99
X-SpamFilter-By: ArmorX SpamTrap 5.77 with qID 3771dYi55025316,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (rtexh36506.realtek.com.tw[172.21.6.27])
 by rtits2.realtek.com.tw (8.15.2/2.81/5.90) with ESMTPS id 3771dYi55025316
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=FAIL);
 Mon, 7 Aug 2023 09:39:35 +0800
Received: from RTEXMBS03.realtek.com.tw (172.21.6.96) by
 RTEXH36506.realtek.com.tw (172.21.6.27) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.17; Mon, 7 Aug 2023 09:39:51 +0800
Received: from RTEXMBS04.realtek.com.tw (172.21.6.97) by
 RTEXMBS03.realtek.com.tw (172.21.6.96) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.7; Mon, 7 Aug 2023 09:39:50 +0800
Received: from RTEXMBS04.realtek.com.tw ([fe80::e138:e7f1:4709:ff4d]) by
 RTEXMBS04.realtek.com.tw ([fe80::e138:e7f1:4709:ff4d%5]) with mapi id
 15.01.2375.007; Mon, 7 Aug 2023 09:39:50 +0800
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
Thread-Topic: [PATCH -next 1/6] net: thunderx: Remove unnecessary ternary
 operators
Thread-Index: AQHZxoduaAYTDJlTBUyphtGbEFvm5q/eErLw
Date: Mon, 7 Aug 2023 01:39:50 +0000
Message-ID: <15759f98483947999393a25b857bc4fe@realtek.com>
References: <20230804035346.2879318-1-ruanjinjie@huawei.com>
 <20230804035346.2879318-2-ruanjinjie@huawei.com>
In-Reply-To: <20230804035346.2879318-2-ruanjinjie@huawei.com>
Accept-Language: en-US, zh-TW
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.69.188]
x-kse-serverinfo: RTEXMBS03.realtek.com.tw, 9
x-kse-antispam-interceptor-info: fallback
x-kse-antivirus-interceptor-info: fallback
MIME-Version: 1.0
X-KSE-AntiSpam-Interceptor-Info: fallback
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
> Subject: [PATCH -next 1/6] net: thunderx: Remove unnecessary ternary operators
> 
> Ther are a little ternary operators, the true or false judgement
> of which is unnecessary in C language semantics.
> 
> Signed-off-by: Ruan Jinjie <ruanjinjie@huawei.com>
> ---
>  drivers/net/ethernet/cavium/thunder/nic_main.c    | 2 +-
>  drivers/net/ethernet/cavium/thunder/thunder_bgx.c | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/cavium/thunder/nic_main.c
> b/drivers/net/ethernet/cavium/thunder/nic_main.c
> index 0ec65ec634df..b7cf4ba89b7c 100644
> --- a/drivers/net/ethernet/cavium/thunder/nic_main.c
> +++ b/drivers/net/ethernet/cavium/thunder/nic_main.c
> @@ -174,7 +174,7 @@ static void nic_mbx_send_ready(struct nicpf *nic, int vf)
>                 if (mac)
>                         ether_addr_copy((u8 *)&mbx.nic_cfg.mac_addr, mac);
>         }
> -       mbx.nic_cfg.sqs_mode = (vf >= nic->num_vf_en) ? true : false;
> +       mbx.nic_cfg.sqs_mode = vf >= nic->num_vf_en;
>         mbx.nic_cfg.node_id = nic->node;
> 
>         mbx.nic_cfg.loopback_supported = vf < nic->num_vf_en;
> diff --git a/drivers/net/ethernet/cavium/thunder/thunder_bgx.c
> b/drivers/net/ethernet/cavium/thunder/thunder_bgx.c
> index a317feb8decb..9e467cecc33a 100644
> --- a/drivers/net/ethernet/cavium/thunder/thunder_bgx.c
> +++ b/drivers/net/ethernet/cavium/thunder/thunder_bgx.c
> @@ -957,7 +957,7 @@ static void bgx_poll_for_sgmii_link(struct lmac *lmac)
>                 goto next_poll;
>         }
> 
> -       lmac->link_up = ((pcs_link & PCS_MRX_STATUS_LINK) != 0) ? true : false;
> +       lmac->link_up = (pcs_link & PCS_MRX_STATUS_LINK) != 0;

lmac->link_up = !!(pcs_link & PCS_MRX_STATUS_LINK);

>         an_result = bgx_reg_read(lmac->bgx, lmac->lmacid,
>                                  BGX_GMP_PCS_ANX_AN_RESULTS);
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
