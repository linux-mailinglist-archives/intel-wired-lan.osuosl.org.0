Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C16FD28555D
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Oct 2020 02:22:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 66025871AF;
	Wed,  7 Oct 2020 00:22:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7une6DZUjp97; Wed,  7 Oct 2020 00:22:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 88456871AA;
	Wed,  7 Oct 2020 00:22:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6E15F1BF989
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Oct 2020 00:22:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 660B7203FE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Oct 2020 00:22:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id djAtWeKr5SpF for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Oct 2020 00:22:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by silver.osuosl.org (Postfix) with ESMTPS id ED4BE20029
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Oct 2020 00:22:22 +0000 (UTC)
IronPort-SDR: 6AbYom753yYOUv4MRizwOYKZww7mDWHyCJ7yjac+RBmri4zOpHlZ1iis/4Gex14n91SLOnwLEb
 YLBB0ObgIS5A==
X-IronPort-AV: E=McAfee;i="6000,8403,9766"; a="162142876"
X-IronPort-AV: E=Sophos;i="5.77,344,1596524400"; d="scan'208";a="162142876"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 17:22:22 -0700
IronPort-SDR: DvCmojcT81aeIG0IliV5mIpW5yPTikQVLzX59/y8AQg0KWIfy9MN+JXWJO8NJmFW63NuveqCd6
 l5zG8HMn64eA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,344,1596524400"; d="scan'208";a="527687698"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP; 06 Oct 2020 17:22:22 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 6 Oct 2020 17:22:21 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 6 Oct 2020 17:22:21 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 6 Oct 2020 17:22:21 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 6 Oct 2020 17:22:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kfDX7jVKesTFdviHnb0YVsil16ERBh3goQkXUjfEAvfw/041Zc55CpAKgKSVSGdsXvD+VMvMqG8ick+wceuRdzzSlZ8yxYdfsy+/fWnECxJ+1tNmvNkozFwtpD1WMmso0rgvSDMrcNms/GtRvYB5WZD/exO2GGaepdxSEWqU/qmOYABYnmTgfPooAsxDhc9BgTY3JzwjMpZN2crP9SB9L/Z9iuuUob36WffWsnhxT2ca6eSrd9vr1MjiqhxhO0BzAhGSF3vP6CekS+MM7dGQHjoHbtOuAx3SzaWoXvqonAGI0sdSMyhG2/ZnjzPcFJ/qFDaxaISbR6WQZxwSVQ/44w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sN/dB+APqWczAqOEUeoVL1II2Dj5UW3Pcags+ZKMbHE=;
 b=mdGHQ1eOp4wPSNqa3X4TeBwD5tmy0qdSCg0/X7FiwDg6ALNpUdwxeZ0E5XZh1WDx7Xgo/KWMsqj/4iGuKNq/+y6IvUDMn82bFc7z7yTt+JtcrXWem41isEjosmD+G+mbDEdz/6l3RsfsmiOZouni6QiMx+8ezsdhUt7+zWCntWO9wN6ouWSAps44jjh7UbSrriiq65TuGShvfgydfFAdXypKuREmNM6QoGIlxV8o9Doh7gCpPHgV3xXHNz1J+jqSDIQPzDoyD3u9Wf8jdHe6DvwZHsEwE1ABVFN296lZgBM0Wthy3jyaY7zXClqaJ0rpHYWNezZABzy6vOSoeqMg9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sN/dB+APqWczAqOEUeoVL1II2Dj5UW3Pcags+ZKMbHE=;
 b=ORHuqxI+n3LoJ3yDL8VVlPmZmztPxwvxDXxqWBjBBGBqievTRZj0jcuacKSNuc5q5d63KneXrd4hsq2oI651DZtTzf+1MVDKSgfIrjMUPEEtaA8Ny/lBodqPLt76xqIMPS5Yyqf0PeFpSzQpP8n/7ghVXDNn/xPuokAUeULxIGQ=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB4673.namprd11.prod.outlook.com (2603:10b6:5:2a4::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3433.35; Wed, 7 Oct 2020 00:21:52 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::bdb7:3e5f:8eec:d340]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::bdb7:3e5f:8eec:d340%7]) with mapi id 15.20.3433.045; Wed, 7 Oct 2020
 00:21:52 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: Mario Limonciello <mario.limonciello@dell.com>, "Kirsher, Jeffrey T"
 <jeffrey.t.kirsher@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 3/3] e1000e: Add more Dell CML systems
 into s0ix heuristics
Thread-Index: AQHWlVGQNCC2JTiqu0ySgmetkcxf3KmLU4DA
Date: Wed, 7 Oct 2020 00:21:52 +0000
Message-ID: <DM6PR11MB2890D867948806FF79EC94E0BC0A0@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200928044024.7595-1-mario.limonciello@dell.com>
 <20200928044024.7595-4-mario.limonciello@dell.com>
In-Reply-To: <20200928044024.7595-4-mario.limonciello@dell.com>
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
x-ms-office365-filtering-correlation-id: 757c4b99-e3c8-4d4c-55e0-08d86a56fdb2
x-ms-traffictypediagnostic: DM6PR11MB4673:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB4673B81E34816303167E66F5BC0A0@DM6PR11MB4673.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yg3CUo33IuQpU+8V3r7yPEIIo7BficEL8YQjY9LIEsu7PPtloHtSfeCmgKU7TRNbUMgWjU/GeMzHpIhQ2wG7/hHXzysz1g3CRSlDqT+8lGknQu0yXIg2pC2v1KGUv8R/zmB92A7j+vFHCFEQDwVkVXi1ZT4qxWkLGVA5MsyS5ecBSafDgOiTNqQ8F3FmgRYo9zPmrbDdZGX1yhff9btbMgp4jia+qqfEwUo8AlXmiijfx2ZqjGBUtiGfQE2a7dMGibA72Wh740318I2TymNVoaO36U7oQ80Hfjc2QtYOENZ55wHzKPxcZBYud4RymN58e05LakwTj1CxB7H9Dgjo+cqj+d5o4Hj6GcG8FvvK9X1nrbIRFWV2Xhq48zmaKRh8QZqzVm81l4b84d83rNKdoLRWdAxq81t45zh5FNAyMJx477b1d1tcAlOhRq50XMLVcqvcPYSVtGwf+oOCT6pbYQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(136003)(396003)(346002)(366004)(376002)(66946007)(478600001)(8936002)(33656002)(86362001)(4326008)(186003)(7696005)(6506007)(26005)(53546011)(83380400001)(83080400001)(966005)(316002)(54906003)(110136005)(52536014)(9686003)(55016002)(66556008)(64756008)(5660300002)(76116006)(66446008)(66476007)(8676002)(71200400001)(2906002)(32563001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: cDmjMYnHPo0JOdf9uZQlTkPfd9JXUWphYWoTQV1BRinNCOpUR7eGAH1rco0eaBCov8AG7ECaSPOyGoOF6y/W8SL5h86OMXbhQHrRFrFKXyVARBS+uRaU1OcxAAtXvOcp12lP9lsnEAsSHL9YuVUkNo/y7xVkkvD1mmsxHdZ/lL86IOId7a0ohWSkgQPXQLOk3E3bKwLYQrZpSoEAz/3Qb2FbWOScM28LQ7zN9JOF5Tqv3TsFA8YniF9hwHDYT3PDrJeCV3niVUISkHQVYUdPiG34SG7n1xYN/RYNqBCkSlv1gvJvSFE5HfoXlTg+uoRnDYBiClgL4g4fQos8lHJm1/NP548iCRbd1G1z2gYwO8LGsIV8WH98n5ndfonBwQXr+Eq8lK/hoT5ielpeLVER/re1j7oWOzQ2slcnF+HAAyP7W2s8gJWXHBRYNLSc/YDI8kaoyWt7T6LwdUBUleWTM8ZxVV/cP4Nu+w0j/tKUWEub3mzBLMyJOuRHJk7MMlAbPdH5evxYMU3ddh9UN1+9D4XJvK7+FQXewrmROnrYOnenCG6fTXBobVeqmRkEZUEXZpmiKLlgX28aM5RUURzHXrHbIWDvNZp6WMvZz/a3S/GkCj5cLVb+eicFOAxVeb6JSxlXJ0MjUe4taWuvQAdk2A==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 757c4b99-e3c8-4d4c-55e0-08d86a56fdb2
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2020 00:21:52.7620 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5zj3itp/rffz8vcu23G8UDuV1GrgQ/y/aOpdYLKOqliFkLhbKz9a1wo1k53r8ZdnwXthAqB9b/cVzigeFQrd5w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4673
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 3/3] e1000e: Add more Dell CML systems
 into s0ix heuristics
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
> Cc: Perry.Yuan@dell.com; Yijun.Shen@dell.com; linux-
> kernel@vger.kernel.org; Mario Limonciello <mario.limonciello@dell.com>
> Subject: [Intel-wired-lan] [PATCH 3/3] e1000e: Add more Dell CML systems
> into s0ix heuristics
> 
> These comet lake systems are not yet released, but have been validated
> on pre-release hardware.

Same basic question as with 2/3 of the series, would it be possible to get someone who touched / validated the code on the pre-release hardware to provide a Tested-by: to this patch?

> 
> This is being submitted separately from released hardware in case of
> a regression between pre-release and release hardware so this commit
> can be reverted alone.
> 
> Signed-off-by: Mario Limonciello <mario.limonciello@dell.com>
> ---
>  drivers/net/ethernet/intel/e1000e/param.c | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/param.c
> b/drivers/net/ethernet/intel/e1000e/param.c
> index 58e6718c4f75..fe3157c8aa4a 100644
> --- a/drivers/net/ethernet/intel/e1000e/param.c
> +++ b/drivers/net/ethernet/intel/e1000e/param.c
> @@ -273,6 +273,27 @@ static const struct dmi_system_id
> s0ix_supported_systems[] = {
>  			DMI_MATCH(DMI_PRODUCT_SKU, "09C4"),
>  		},
>  	},
> +	{
> +		/* Dell Notebook 0x0A40 */
> +		.matches = {
> +			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> +			DMI_MATCH(DMI_PRODUCT_SKU, "0A40"),
> +		},
> +	},
> +	{
> +		/* Dell Notebook 0x0A41 */
> +		.matches = {
> +			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> +			DMI_MATCH(DMI_PRODUCT_SKU, "0A41"),
> +		},
> +	},
> +	{
> +		/* Dell Notebook 0x0A42 */
> +		.matches = {
> +			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> +			DMI_MATCH(DMI_PRODUCT_SKU, "0A42"),
> +		},
> +	},
>  	{ }
>  };
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
