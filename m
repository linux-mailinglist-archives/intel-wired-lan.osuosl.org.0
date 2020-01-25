Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 02193149309
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Jan 2020 03:51:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 93D568715C;
	Sat, 25 Jan 2020 02:51:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y4lNYQ1bHKX5; Sat, 25 Jan 2020 02:51:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E55BF87159;
	Sat, 25 Jan 2020 02:51:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 51EA41BF406
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Jan 2020 02:51:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4D54F87148
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Jan 2020 02:51:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uGwYGr1D60Uh for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Jan 2020 02:51:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3A6408711A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Jan 2020 02:50:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 18:50:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,360,1574150400"; d="scan'208";a="428482541"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by fmsmga006.fm.intel.com with ESMTP; 24 Jan 2020 18:50:16 -0800
Received: from orsmsx122.amr.corp.intel.com (10.22.225.227) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 24 Jan 2020 18:50:16 -0800
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.147]) by
 ORSMSX122.amr.corp.intel.com ([169.254.11.253]) with mapi id 14.03.0439.000;
 Fri, 24 Jan 2020 18:50:16 -0800
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v3] e1000e: Add support for Alder Lake
Thread-Index: AQHVzr+c01gv/5DnTEyDN3CQRNPxi6f6tX+A
Date: Sat, 25 Jan 2020 02:50:15 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B971CC502@ORSMSX103.amr.corp.intel.com>
References: <20200119115713.12710-1-sasha.neftin@intel.com>
In-Reply-To: <20200119115713.12710-1-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v3] e1000e: Add support for Alder Lake
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Sasha Neftin
> Sent: Sunday, January 19, 2020 3:57 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v3] e1000e: Add support for Alder Lake
> 
> Add devices ID's for the next LOM generations that will be
> available on the next Intel Client platform (Alder Lake)
> This patch provides the initial support for these devices
> 
> v1->v2:
> Address community comments
> v2->v3:
> Fix minor typo
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/e1000e/ethtool.c | 2 ++
>  drivers/net/ethernet/intel/e1000e/hw.h      | 5 +++++
>  drivers/net/ethernet/intel/e1000e/ich8lan.c | 7 +++++++
>  drivers/net/ethernet/intel/e1000e/netdev.c  | 6 ++++++
>  drivers/net/ethernet/intel/e1000e/ptp.c     | 1 +
>  5 files changed, 21 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c
> b/drivers/net/ethernet/intel/e1000e/ethtool.c
> index adce7e319b9e..9e7881db7859 100644
> --- a/drivers/net/ethernet/intel/e1000e/ethtool.c
> +++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
> @@ -897,6 +897,7 @@ static int e1000_reg_test(struct e1000_adapter
> *adapter, u64 *data)
>  	case e1000_pch_cnp:
>  		/* fall through */
>  	case e1000_pch_tgp:
> +	case e1000_pch_adp:
>  		mask |= BIT(18);
>  		break;
>  	default:
> @@ -1561,6 +1562,7 @@ static void e1000_loopback_cleanup(struct
> e1000_adapter *adapter)
>  	case e1000_pch_spt:
>  	case e1000_pch_cnp:
>  	case e1000_pch_tgp:
> +	case e1000_pch_adp:
>  		fext_nvm11 = er32(FEXTNVM11);
>  		fext_nvm11 &= ~E1000_FEXTNVM11_DISABLE_MULR_FIX;
>  		ew32(FEXTNVM11, fext_nvm11);
> diff --git a/drivers/net/ethernet/intel/e1000e/hw.h
> b/drivers/net/ethernet/intel/e1000e/hw.h
> index f556163481cb..a1dbf8df1c70 100644
> --- a/drivers/net/ethernet/intel/e1000e/hw.h
> +++ b/drivers/net/ethernet/intel/e1000e/hw.h
> @@ -97,6 +97,10 @@ struct e1000_hw;
>  #define E1000_DEV_ID_PCH_TGP_I219_LM14		0x15F9
>  #define E1000_DEV_ID_PCH_TGP_I219_V14		0x15FA
>  #define E1000_DEV_ID_PCH_TGP_I219_LM15		0x15F4
> +#define E1000_DEV_ID_PCH_ADP_1219_LM16		0x1A1E
> +#define E1000_DEV_ID_PCH_ADP_1219_V16		0x1A1F
> +#define E1000_DEV_ID_PCH_ADP_1219_LM17		0x1A1C
> +#define E1000_DEV_ID_PCH_ADP_1219_V17		0x1A1D

Something seems to be missing.  After building and booting to the kernel with this patch included I do not see the a 1a1e, 1a1f, 1a1c or 1a1d device from modinfo:
u1519:[1]/usr/src/kernels/next-queue> modinfo igc|grep -i 1a1
u1519:[1]/usr/src/kernels/next-queue>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
