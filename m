Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90A2B11EF80
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Dec 2019 02:28:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5047088852;
	Sat, 14 Dec 2019 01:28:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fQmvI89DYoBa; Sat, 14 Dec 2019 01:28:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 51A6A88844;
	Sat, 14 Dec 2019 01:28:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E256D1BF346
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Dec 2019 01:28:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DDC2A8825E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Dec 2019 01:28:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ugT-HirwxiSr for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Dec 2019 01:28:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EB2FB88156
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Dec 2019 01:28:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Dec 2019 17:28:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,311,1571727600"; d="scan'208";a="211606969"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by fmsmga008.fm.intel.com with ESMTP; 13 Dec 2019 17:28:19 -0800
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.250]) by
 ORSMSX107.amr.corp.intel.com ([169.254.1.58]) with mapi id 14.03.0439.000;
 Fri, 13 Dec 2019 17:28:19 -0800
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: Manfred Rudigier <manfred.rudigier@omicronenergy.com>, "Kirsher, Jeffrey
 T" <jeffrey.t.kirsher@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH] igb: Fix SGMII SFP module discovery
 for 100FX/LX.
Thread-Index: AQHVqtTQxyErkmuhq0agmnaPVtZva6e45akQ
Date: Sat, 14 Dec 2019 01:28:19 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B9719B49A@ORSMSX103.amr.corp.intel.com>
References: <ef7b98c8-0ce4-4f84-989d-28b5a29d4831@EXC04-ATKLA.omicron.at>
In-Reply-To: <ef7b98c8-0ce4-4f84-989d-28b5a29d4831@EXC04-ATKLA.omicron.at>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNTdkY2RmZGQtOWE2YS00ZDc4LTg4N2UtNDIxZTQ5NjM5MmU0IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiNEl6eUJIK25UVmh3VjMzdHNCbkFzSTA3WW1nM2ZsdnRnS3ZaUjVid1VtYlNQMnFYMEgxbzBmVVQ4eHNGemQ3ZyJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] igb: Fix SGMII SFP module discovery
 for 100FX/LX.
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Manfred Rudigier
> Sent: Wednesday, December 4, 2019 2:40 AM
> To: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>
> Cc: Manfred Rudigier <manfred.rudigier@omicronenergy.com>; intel-wired-
> lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH] igb: Fix SGMII SFP module discovery for
> 100FX/LX.
> 
> Changing the link mode should also be done for 100BaseFX SGMII modules,
> otherwise they just don't work when the default link mode in CTRL_EXT
> coming from the EEPROM is SERDES.
> 
> Additionally 100Base-LX SGMII SFP modules are also supported now, which
> was not the case before.
> 
> Tested with an i210 using Flexoptix S.1303.2M.G 100FX and
> S.1303.10.G 100LX SGMII SFP modules.
> 
> Signed-off-by: Manfred Rudigier <manfred.rudigier@omicronenergy.com>
> ---
>  drivers/net/ethernet/intel/igb/e1000_82575.c | 8 ++------
>  drivers/net/ethernet/intel/igb/igb_ethtool.c | 2 +-
>  2 files changed, 3 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/e1000_82575.c
> b/drivers/net/ethernet/intel/igb/e1000_82575.c
> index 614130a6ba1f..30e77f5406cf 100644
> --- a/drivers/net/ethernet/intel/igb/e1000_82575.c
> +++ b/drivers/net/ethernet/intel/igb/e1000_82575.c
> @@ -530,7 +530,7 @@ static s32 igb_set_sfp_media_type_82575(struct
> e1000_hw *hw)
>  		dev_spec->module_plugged = true;
>  		if (eth_flags->e1000_base_lx || eth_flags->e1000_base_sx) {
>  			hw->phy.media_type =
> e1000_media_type_internal_serdes;
> -		} else if (eth_flags->e100_base_fx) {
> +		} else if (eth_flags->e100_base_fx || eth_flags-
> >e100_base_lx) {
>  			dev_spec->sgmii_active = true;
>  			hw->phy.media_type =
> e1000_media_type_internal_serdes;
>  		} else if (eth_flags->e1000_base_t) {
> @@ -657,14 +657,10 @@ static s32 igb_get_invariants_82575(struct
> e1000_hw *hw)
>  			break;
>  		}
> 
> -		/* do not change link mode for 100BaseFX */
> -		if (dev_spec->eth_flags.e100_base_fx)
> -			break;
> -
>  		/* change current link mode setting */
>  		ctrl_ext &= ~E1000_CTRL_EXT_LINK_MODE_MASK;
> 
> -		if (hw->phy.media_type == e1000_media_type_copper)
> +		if (dev_spec->sgmii_active)
>  			ctrl_ext |= E1000_CTRL_EXT_LINK_MODE_SGMII;
>  		else
>  			ctrl_ext |=
> E1000_CTRL_EXT_LINK_MODE_PCIE_SERDES;
> diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c
> b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> index 5acf3b743876..50954e444985 100644
> --- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
> +++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> @@ -181,7 +181,7 @@ static int igb_get_link_ksettings(struct net_device
> *netdev,
>  				advertising &=
> ~ADVERTISED_1000baseKX_Full;
>  			}
>  		}
> -		if (eth_flags->e100_base_fx) {
> +		if (eth_flags->e100_base_fx || eth_flags->e100_base_lx) {
>  			supported |= SUPPORTED_100baseT_Full;
>  			advertising |= ADVERTISED_100baseT_Full;
>  		}
> --
> 2.24.0
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
