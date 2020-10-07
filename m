Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B497228555A
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Oct 2020 02:21:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3575785F7E;
	Wed,  7 Oct 2020 00:21:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n1WMoKPdlN0M; Wed,  7 Oct 2020 00:21:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 00E0885F8C;
	Wed,  7 Oct 2020 00:21:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 187861BF989
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Oct 2020 00:21:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 133CC85F66
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Oct 2020 00:21:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4zs7Qj3Uafmg for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Oct 2020 00:21:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1D2B385F5C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Oct 2020 00:21:29 +0000 (UTC)
IronPort-SDR: HPipL2urdPUlsu8+eAZD7Amjb9VbEv9NiEvwpjcxf00CRb6UD5R0v4oG7LJfAGIS+NDdWhssgR
 npK9l5H1BOgQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9766"; a="152528747"
X-IronPort-AV: E=Sophos;i="5.77,344,1596524400"; d="scan'208";a="152528747"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 17:21:28 -0700
IronPort-SDR: MziRcaTsOKZjXZk+zmHYpVhUORH1ETDNTJoIcLW/ve4V8BgenPeonZoyrr3HwDOsTFcHbKHIy0
 KNCOhPRKyYIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,344,1596524400"; d="scan'208";a="527687277"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP; 06 Oct 2020 17:21:28 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 6 Oct 2020 17:21:27 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 6 Oct 2020 17:21:27 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.105)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 6 Oct 2020 17:21:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xl6VLBYvebZ+96cIUQTY1TOUmOjjxqTKb8FAkViiTsLSeYwfIF12w1oLtBlcHgjte9zwzqekqC7WHAPyLtdRLFZTHUAuyS2aSijktIdlSCuyI9Qoso4cHN2qzyVGgLARG+V2tqpM+8FAPxElX7WvBI2kvfs79jBplMTLLE5G9PPXqIl0CjnIqajoNUcJT0K0t+f3qAvrZRYF7iEuL6NJUMFrURn3VUXGfNkY8EU6P2zLWjnc5UYMQGDGCtigZyu+DWr6C2xXFivNtQwqBG7JPpbALbD51HEndinNN/IuhkZ5YxekvwxeLzXHI7TsG8VUe/1IC767PhSyfxhG71GMsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HGwHJtAgCrFex8rSgiYzYVTwMOiq3wMelNaV3yyChJQ=;
 b=j6KMIY8K5/TKQUr19JQl1g0j80BIUJHhT1AYZCD2xsW0MVtftPgvSRyxFv0mHGzhbs06XLSOxP5cFMpnwmNptUzJB2POpYp/dOlltPHqH4kLxe4HSbltKziINYA0eMQn4q8kwpXABLh30vQyZ1RgqxogyyQbHwBiUAbdw91wskEhbXyYbksUgPitAf2xSNdZeIPaTnXrVBSRNJcRr3yPNtkxsRQWVcXMt5WW2jUTtYAbXKo9uYRY1ivqKDYiXwcNodqGzvA+F3y+1WxlMG1I4G+KieKUiYGveTtHRu0keivURvq7B/3OKCZpt26AImVNkl8tB/N7NIF3Rf2Lfhazng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HGwHJtAgCrFex8rSgiYzYVTwMOiq3wMelNaV3yyChJQ=;
 b=k3LbboTRoA9ZcprhzHgo9K6H6IhQt6WUrm1iZhyc0kIiTEazz+3loZa3QT5RzcVNctTw6bbtRa4lKmC6n8BoLzzbnVf6O+9pQbvMgeA2dGFghA7lep32kOIPBlBNgW/XkwrPPh4o6p4SJ6OP2fG6BgLG8CbLVJGn2Vc1jeQTfLw=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB4673.namprd11.prod.outlook.com (2603:10b6:5:2a4::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3433.35; Wed, 7 Oct 2020 00:21:26 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::bdb7:3e5f:8eec:d340]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::bdb7:3e5f:8eec:d340%7]) with mapi id 15.20.3433.045; Wed, 7 Oct 2020
 00:21:26 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: Mario Limonciello <mario.limonciello@dell.com>, "Kirsher, Jeffrey T"
 <jeffrey.t.kirsher@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 2/3] e1000e: Add Dell's Comet Lake
 systems into s0ix heuristics
Thread-Index: AQHWlWQ1Klkytgcwh0is6KJPY3WyxamLVECw
Date: Wed, 7 Oct 2020 00:21:26 +0000
Message-ID: <DM6PR11MB2890F9ACE2ACF01E52A1ADBDBC0A0@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200928044024.7595-1-mario.limonciello@dell.com>
 <20200928044024.7595-3-mario.limonciello@dell.com>
In-Reply-To: <20200928044024.7595-3-mario.limonciello@dell.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dell.com; dkim=none (message not signed)
 header.d=none;dell.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.177.49]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b639b0da-53bd-4ac1-13f3-08d86a56ede2
x-ms-traffictypediagnostic: DM6PR11MB4673:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB467358858E1365A51B75B378BC0A0@DM6PR11MB4673.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1468;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: B7T4w6kR3RoBFkymxry67AAjuq4MvlH9Ss1/3fk2EQzNAdD47PWd7soSmS24y34t8Ty2j5fW9R+/69qydrhEQEgk6PcIyETyOHZQYaXRNQB5ZD0fCaRbQBV7hOEuwbrcBfvmCSH0hjH3YxjXfRbfRqTzZFm2khnHSe+Cw/h4PCmRaAA84CzUoY1k4doVrVB0Q9BcniNyq2pYNpxmr7hMoAtZ8fUttuPF0PF8S0IrgffUgK4txBdjbabAgNu5Yt7mPHyINgmJTCFM0cFISvxwNS5+PZgjG6Wpa+iMW4I0nkE7hJsRTvmpSAkZyxI3cRhWPiVRvU7k1yVf14hgnX2GnX3NzJFdevX7j4r5KNnDEEOMTQ5zZ2TB+jOyLQcR97SDG6yQ8AayKqrwJNfiK53zJzoYadA55kXtqLoHkaN3/y2GbPKsHV8kgG7oag32yL7oVL3Jj/KwCc3chpZUNlR1rg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(136003)(396003)(346002)(366004)(376002)(66946007)(478600001)(8936002)(33656002)(86362001)(4326008)(186003)(7696005)(6506007)(26005)(53546011)(83380400001)(83080400001)(966005)(316002)(54906003)(110136005)(52536014)(9686003)(55016002)(66556008)(64756008)(5660300002)(76116006)(66446008)(66476007)(8676002)(71200400001)(2906002)(32563001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 0lxW37MZ/LBakhQ6iEvolncDZoR4LG0NhKVaNM2ciRH1pDhf8mL+z33+AZZuO9/c4oKLQok9qcv5q5dD7c8dJyL2W/jP23bW24+OkojNYPXMh3+MQR5SOTfGaLsXiT/rfSACBfcBvNeA+DpcCVcm/j51BPyiwI3fYBuhcnBB0qnxLDTtvuXIPIO/Dl370kRzoOTtNwBQFJK8yOCFErBkQkfz7Teai731EIWuEq9C3Suw1ludVJgYuDNoWmXrcTABAbe45GM9o5IG8EgGO0Zpktr7eOYZ0V5Pxqa/dBC570uDpLjCRoEHCqJcO8cGJYh646txnZYKFAJxDsB7ctu88+Etln8K3vqlhr0AxlzzODVrCkzH4Tp9Lq2rG59zZo62WsHgpfI1W4idHOS20Eql36zpLLriU8JWD/ns5EJhBaKP1P0gBoOPuVXxdv5TyBN2WJL43hSo8P9n43cbzco1LXqey5s28Pps2GsUoX+IcwUbyubI2WuIgDVI675bXpYLmec49fE33i6hvt1YrvAMBPlDiQbTgbI1dOGvgw3RWj4L8VOE4RL2g2edZNapaC0IBSwg4s9/t6mqFTKsc4wfudlOjzefBkKC3Xxc9LGOeY4mO0ZNtMkmeiRyQtdNzt5ubFD3S0sAZRJ7385/mnnjMQ==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b639b0da-53bd-4ac1-13f3-08d86a56ede2
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2020 00:21:26.1654 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1l/9C2k4QYU4o8cWJskUEHtYiwFIm5r6NxTW+qPd7agClusi3aD4pbkVwSztQk0jSS0Q4mSPwLMbznsvlVevIg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4673
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 2/3] e1000e: Add Dell's Comet Lake
 systems into s0ix heuristics
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
Cc: "Perry.Yuan@dell.com" <Perry.Yuan@dell.com>,
 "Yijun.Shen@dell.com" <Yijun.Shen@dell.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mario Limonciello
> Sent: Sunday, September 27, 2020 9:40 PM
> To: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: Perry.Yuan@dell.com; Yijun.Shen@dell.com; linux-kernel@vger.kernel.org;
> Mario Limonciello <mario.limonciello@dell.com>
> Subject: [Intel-wired-lan] [PATCH 2/3] e1000e: Add Dell's Comet Lake systems
> into s0ix heuristics
> 
> Dell's Comet Lake Latitude and Precision systems containing i219LM are
> properly configured and should use the s0ix flows.
> 
> Signed-off-by: Mario Limonciello <mario.limonciello@dell.com>
> ---
>  drivers/net/ethernet/intel/Kconfig        |  1 +
>  drivers/net/ethernet/intel/e1000e/param.c | 80 ++++++++++++++++++++++-
>  2 files changed, 80 insertions(+), 1 deletion(-)

Is there anyone who touched this hardware with this patch willing to provide a Tested-by:?
I am happy to do regression / sanity checks against other e1000e based systems, but do not have access to these devices.

> 
> diff --git a/drivers/net/ethernet/intel/Kconfig
> b/drivers/net/ethernet/intel/Kconfig
> index 5aa86318ed3e..280af47d74d2 100644
> --- a/drivers/net/ethernet/intel/Kconfig
> +++ b/drivers/net/ethernet/intel/Kconfig
> @@ -58,6 +58,7 @@ config E1000
>  config E1000E
>  	tristate "Intel(R) PRO/1000 PCI-Express Gigabit Ethernet support"
>  	depends on PCI && (!SPARC32 || BROKEN)
> +	depends on DMI
>  	select CRC32
>  	imply PTP_1588_CLOCK
>  	help
> diff --git a/drivers/net/ethernet/intel/e1000e/param.c
> b/drivers/net/ethernet/intel/e1000e/param.c
> index e66b222c824b..58e6718c4f75 100644
> --- a/drivers/net/ethernet/intel/e1000e/param.c
> +++ b/drivers/net/ethernet/intel/e1000e/param.c
> @@ -1,6 +1,7 @@
>  // SPDX-License-Identifier: GPL-2.0
>  /* Copyright(c) 1999 - 2018 Intel Corporation. */
> 
> +#include <linux/dmi.h>
>  #include <linux/netdevice.h>
>  #include <linux/module.h>
>  #include <linux/pci.h>
> @@ -201,6 +202,80 @@ static const struct e1000e_me_supported
> me_supported[] = {
>  	{0}
>  };
> 
> +static const struct dmi_system_id s0ix_supported_systems[] = {
> +	{
> +		/* Dell Latitude 5310 */
> +		.matches = {
> +			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> +			DMI_MATCH(DMI_PRODUCT_SKU, "099F"),
> +		},
> +	},
> +	{
> +		/* Dell Latitude 5410 */
> +		.matches = {
> +			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> +			DMI_MATCH(DMI_PRODUCT_SKU, "09A0"),
> +		},
> +	},
> +	{
> +		/* Dell Latitude 5410 */
> +		.matches = {
> +			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> +			DMI_MATCH(DMI_PRODUCT_SKU, "09C9"),
> +		},
> +	},
> +	{
> +		/* Dell Latitude 5510 */
> +		.matches = {
> +			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> +			DMI_MATCH(DMI_PRODUCT_SKU, "09A1"),
> +		},
> +	},
> +	{
> +		/* Dell Precision 3550 */
> +		.matches = {
> +			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> +			DMI_MATCH(DMI_PRODUCT_SKU, "09A2"),
> +		},
> +	},
> +	{
> +		/* Dell Latitude 5411 */
> +		.matches = {
> +			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> +			DMI_MATCH(DMI_PRODUCT_SKU, "09C0"),
> +		},
> +	},
> +	{
> +		/* Dell Latitude 5511 */
> +		.matches = {
> +			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> +			DMI_MATCH(DMI_PRODUCT_SKU, "09C1"),
> +		},
> +	},
> +	{
> +		/* Dell Precision 3551 */
> +		.matches = {
> +			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> +			DMI_MATCH(DMI_PRODUCT_SKU, "09C2"),
> +		},
> +	},
> +	{
> +		/* Dell Precision 7550 */
> +		.matches = {
> +			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> +			DMI_MATCH(DMI_PRODUCT_SKU, "09C3"),
> +		},
> +	},
> +	{
> +		/* Dell Precision 7750 */
> +		.matches = {
> +			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> +			DMI_MATCH(DMI_PRODUCT_SKU, "09C4"),
> +		},
> +	},
> +	{ }
> +};
> +
>  static bool e1000e_check_me(u16 device_id)
>  {
>  	struct e1000e_me_supported *id;
> @@ -599,8 +674,11 @@ void e1000e_check_options(struct e1000_adapter
> *adapter)
>  		}
> 
>  		if (enabled == S0IX_HEURISTICS) {
> +			/* check for allowlist of systems */
> +			if (dmi_check_system(s0ix_supported_systems))
> +				enabled = S0IX_FORCE_ON;
>  			/* default to off for ME configurations */
> -			if (e1000e_check_me(hw->adapter->pdev->device))
> +			else if (e1000e_check_me(hw->adapter->pdev-
> >device))
>  				enabled = S0IX_FORCE_OFF;
>  		}
> 
> --
> 2.25.1
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
