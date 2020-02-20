Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B1D1653E5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Feb 2020 01:56:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 39D388685D;
	Thu, 20 Feb 2020 00:56:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xSphOVj-kWSQ; Thu, 20 Feb 2020 00:56:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 03B5C86762;
	Thu, 20 Feb 2020 00:56:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1F9B81BF9B3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2020 00:56:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1B2CD845D5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2020 00:56:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ybzMMZAuSetw for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Feb 2020 00:56:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3C94E845D4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2020 00:56:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Feb 2020 16:56:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,462,1574150400"; d="scan'208";a="254288035"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
 by orsmga002.jf.intel.com with ESMTP; 19 Feb 2020 16:56:15 -0800
Received: from orsmsx112.amr.corp.intel.com ([169.254.3.56]) by
 ORSMSX101.amr.corp.intel.com ([169.254.8.110]) with mapi id 14.03.0439.000;
 Wed, 19 Feb 2020 16:56:15 -0800
From: "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 1/1] e1000e: Fix typo in Alder
 Lake brand name
Thread-Index: AQHV5vDRmuB3FvZcTky9kXH9Oi7IF6gjQrJQ
Date: Thu, 20 Feb 2020 00:56:15 +0000
Message-ID: <61CC2BC414934749BD9F5BF3D5D94044984CD0DB@ORSMSX112.amr.corp.intel.com>
References: <20200219064951.43639-1-sasha.neftin@intel.com>
In-Reply-To: <20200219064951.43639-1-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v2 1/1] e1000e: Fix typo in Alder Lake
 brand name
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Sasha
> Neftin
> Sent: Tuesday, February 18, 2020 22:50
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v2 1/1] e1000e: Fix typo in Alder Lake brand
> name
> 
> Follow to commit e15ef7697361 ("e1000e: Add support for Alder Lake") Fix
> typo in brand name string. Changing a "one" to an "I"
> 
> v1 -> v2: make a commit message clear
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
[Kirsher, Jeffrey T] 

Since I had not pushed the Alder Lake support patch upstream yet, I just combined this patch with previous patch to fix the typo in the device define names.

>  drivers/net/ethernet/intel/e1000e/hw.h     | 8 ++++----
>  drivers/net/ethernet/intel/e1000e/netdev.c | 8 ++++----
>  2 files changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/hw.h
> b/drivers/net/ethernet/intel/e1000e/hw.h
> index 61a0c7cb9ced..b1447221669e 100644
> --- a/drivers/net/ethernet/intel/e1000e/hw.h
> +++ b/drivers/net/ethernet/intel/e1000e/hw.h
> @@ -98,10 +98,10 @@ struct e1000_hw;
>  #define E1000_DEV_ID_PCH_TGP_I219_V14		0x15FA
>  #define E1000_DEV_ID_PCH_TGP_I219_LM15		0x15F4
>  #define E1000_DEV_ID_PCH_TGP_I219_V15		0x15F5
> -#define E1000_DEV_ID_PCH_ADP_1219_LM16		0x1A1E
> -#define E1000_DEV_ID_PCH_ADP_1219_V16		0x1A1F
> -#define E1000_DEV_ID_PCH_ADP_1219_LM17		0x1A1C
> -#define E1000_DEV_ID_PCH_ADP_1219_V17		0x1A1D
> +#define E1000_DEV_ID_PCH_ADP_I219_LM16		0x1A1E
> +#define E1000_DEV_ID_PCH_ADP_I219_V16		0x1A1F
> +#define E1000_DEV_ID_PCH_ADP_I219_LM17		0x1A1C
> +#define E1000_DEV_ID_PCH_ADP_I219_V17		0x1A1D
> 
>  #define E1000_REVISION_4	4
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c
> b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 35f21add3732..fb92002cabee 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -7763,10 +7763,10 @@ static const struct pci_device_id e1000_pci_tbl[] =
> {
>  	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_TGP_I219_V14),
> board_pch_cnp },
>  	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_TGP_I219_LM15),
> board_pch_cnp },
>  	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_TGP_I219_V15),
> board_pch_cnp },
> -	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ADP_1219_LM16),
> board_pch_cnp },
> -	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ADP_1219_V16),
> board_pch_cnp },
> -	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ADP_1219_LM17),
> board_pch_cnp },
> -	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ADP_1219_V17),
> board_pch_cnp },
> +	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ADP_I219_LM16),
> board_pch_cnp },
> +	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ADP_I219_V16),
> board_pch_cnp },
> +	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ADP_I219_LM17),
> board_pch_cnp },
> +	{ PCI_VDEVICE(INTEL, E1000_DEV_ID_PCH_ADP_I219_V17),
> board_pch_cnp },
> 
>  	{ 0, 0, 0, 0, 0, 0, 0 }	/* terminate list */
>  };
> --
> 2.11.0
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
