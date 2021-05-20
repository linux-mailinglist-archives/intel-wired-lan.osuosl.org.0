Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E9EF389F28
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 May 2021 09:54:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 73E4440198;
	Thu, 20 May 2021 07:54:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dJJLJp6ris7D; Thu, 20 May 2021 07:54:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 66BE440496;
	Thu, 20 May 2021 07:54:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0EC631BF3AE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 May 2021 07:53:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 08CE640190
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 May 2021 07:53:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5lfZmiBIC3n6 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 May 2021 07:53:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 279E1400AB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 May 2021 07:53:57 +0000 (UTC)
IronPort-SDR: nn+BcNXtWgm+Zay1Tg6vU92IrZ7QgYK+/vgKZYHWaLiFikDfPxOg/Q8ysHhvl1vLfULQBBDMZG
 ON6r1IqxMCjw==
X-IronPort-AV: E=McAfee;i="6200,9189,9989"; a="199218597"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="199218597"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2021 00:53:57 -0700
IronPort-SDR: rX20lvjpKsBvStrF5jTNxeiUtQfbDqCJ4tZTOjvmrOLdtBHUp7DdmmJprHMZhTLfAeI47fVpwk
 73yalPqnqjkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="473886650"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 20 May 2021 00:53:56 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 20 May 2021 00:53:56 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Thu, 20 May 2021 00:53:56 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Thu, 20 May 2021 00:53:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Te102BzPd+5OijMn3ArA7EnpjADeI0vGF/CRGpiqZ3nPB1sXGo8ugbWcbG57OZ+Uw3SHDlPDexvbW3tXsbQ5hdA47TIZcV0bpsS+Z719UGuCLFqHe5uY6SoAOvxDztaYVew1UXxuREhVV6R9+QmHsysECIB1OqGBBMdl52M5GHxPNsAPZN5puSaI/gYNfGiNJyNNDMq2/iicwatwHNNpjexx09TDlETa2e/Ircn7puV/ksrLWrw6LEFYRSXFz7YUB8PXDWTkvFWsk3tOm331TNIutf4Fugzp0JwcqFAopYkQDCNNwdGdMexwS5JlKA7b26rERurOUgCKUUlbfOfdSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s2zs0424HDlik+682mp3HfYf2TZ26io0DDELBSb5CgY=;
 b=nPHxkHQGmeDTfj4g/S0ZDvUpZM3WeoNCLJ/zlxHKtvF6hh8u5FDV1FdKcA6pnI+73ekfUMDZmQk+MFj98O+fmc/s/7uN+6yD3lEL11rThiicXr/o5vHpxRYXT3ZmPeWjPJ8VnbVf1dnzyMHgAwQbXHtOtRwq64xZRVEZ5u5o8Q6Mjrn31fLHcPBZOhFeJsHTPgo9GbyEKXowFiWbB+n031N1hKi4DFTFsb308wnWY4ZaOnf/UPc5G7EP3UQcksCdY4YV8RzPlIUol3ENhSBbFTnMCpnpJY0f7qqiSaMgiDGED766JKnLOKl9GXLrhvHV/TotWWy3onXV1XXCPlmJRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s2zs0424HDlik+682mp3HfYf2TZ26io0DDELBSb5CgY=;
 b=pY+RvNBnkaAohjgpXEvRxPnvMqEq/AkKSRQ3fytWRYrWWTnAagCAYI0o2NOKcVrIOlZP84VH1liLzEJW+YqYiHd2R73CfqgbIWUNzo3iPVD/BdposCVQOESJ5b6mosAElzn9rADIyhIDT86jGX/wzZ0ypyAwBffgUZ/0oWrTNYE=
Received: from CY4PR11MB1576.namprd11.prod.outlook.com (2603:10b6:910:d::15)
 by CY4PR11MB1430.namprd11.prod.outlook.com (2603:10b6:910:b::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.26; Thu, 20 May
 2021 07:53:54 +0000
Received: from CY4PR11MB1576.namprd11.prod.outlook.com
 ([fe80::8177:30c8:3373:c4ea]) by CY4PR11MB1576.namprd11.prod.outlook.com
 ([fe80::8177:30c8:3373:c4ea%12]) with mapi id 15.20.4129.033; Thu, 20 May
 2021 07:53:53 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH net v2] ixgbe: fix large MTU request from VF
Thread-Index: AQHXR9QUsVl0UpLZy02XuJtjeWawiKrsCr+Q
Date: Thu, 20 May 2021 07:53:53 +0000
Message-ID: <CY4PR11MB15763FA78C3CA0E2C68E6423AB2A9@CY4PR11MB1576.namprd11.prod.outlook.com>
References: <20210513084253.19964-1-mateusz.palczewski@intel.com>
In-Reply-To: <20210513084253.19964-1-mateusz.palczewski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [188.147.101.36]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2661f568-466b-4957-31f2-08d91b646a0e
x-ms-traffictypediagnostic: CY4PR11MB1430:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB14309253ECFD4E172D54D19AAB2A9@CY4PR11MB1430.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: j3jqPVyfwx4o3NcNtbPFUoLCQWkglnDoS5PGmY8cHtsVMtu8/lku4oE2yI7fqVVFUNeojFsCcHdohQPjA8QI4/Wlor4PRntJWDGtSu5rbn7J7Vs6/OMy4ronGw9ADDaRIe8pXwmAxJIimivh45sAeMSw9cO5qmmoVGxpMKyAOY9Mxj1I5J+YK/fBtSktJ6uONNnit+nwbOz9VBw+9nocBs2W2alI5qDrcFcftrpWBOXRmz69sZe8jDdqkpBj1WCdbe94pjubl0HYgPVd2DPiKxD5txH/f9z1fIVOw0RTo3Y5LjqW4JUM9L3S2ldvNI6Dr0wQQfaJh8Eh22Mj0axzZFjq4W+Gb+MPzL5NMNKuOlrzpj4yGoC7xwE1vnkjV9FNgwP1JhWDAqmbVDqrhqgCMnHxPqSODOYINUvToXrZLfm/bjrLLQTbHo5OAHo27+HJiMA0szbQEMOFSH2TS1Wev4Swl4z4NL/XMDzczjv3V0TBiC3GTRthf8qw+KA0dKQgs+06hpiDTmeBYwaEM1+D3ocSjfCC5ixKRTpFZ+s/z7U5plN8KnlvBbRfqk5559/ICghtNz78+CxDDia4syJp3o/y1IZiKt6GCsAmczmTSsQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1576.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(39860400002)(396003)(366004)(376002)(136003)(5660300002)(71200400001)(8676002)(83380400001)(66946007)(66556008)(66476007)(64756008)(76116006)(26005)(52536014)(4326008)(66446008)(9686003)(38100700002)(122000001)(316002)(55016002)(86362001)(107886003)(54906003)(110136005)(186003)(7696005)(6506007)(478600001)(53546011)(2906002)(33656002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?GRKw1Q4HigfcZT7egRfIuN4jd3CXi7Jd9OGPn9LVgng7k5jE8lkpswwrGyQh?=
 =?us-ascii?Q?6Mz3fqppn2CWESlQIihcP8SW2ipdTCOLWn5o0+8Q/YxM9pagZJDO4A0Eai6Z?=
 =?us-ascii?Q?+Ec6wYdxJAu/QoM3llfUvIyVjyiB64wlv4+cCFb0g5hXhUxRhmwgAM3huEz5?=
 =?us-ascii?Q?u3p0D6F4CZD8tiWY/z9SgxKIJv/k9THJe7Gu9pHmGdUxX1EL5wMpsIzdYdGt?=
 =?us-ascii?Q?gyYR3Be95ZvtHSULzz0lOEzBFhYVWzJDT6cake5LJgcEDcFHJm7ApDDgVxz4?=
 =?us-ascii?Q?aY6adNsg5j1o3jeQukXH769xgKjZO37k0Ges4l2J5yNhs0zHMZqznUt7NQKd?=
 =?us-ascii?Q?LB9AbZDWNYTdA4K7XxGw59HwEO3rUKX7CNGtlJd1Y05zgyL70Geq6lbG/PRT?=
 =?us-ascii?Q?6XC6luvtNOrDuMyY1pAj5k1NjYs2YDWjeDWZyF0p/cCqif+P9L3tF13zILzK?=
 =?us-ascii?Q?uM77j68lSoTpMJevjqhWoDOFWS/OLCFq6cOuliCOpTkOl3Sn7vrAySEbyMY0?=
 =?us-ascii?Q?SiNzPnhncVZA0XmxxxtF51HJNSi2ZsbDfjSdzj1/ag/ePkAzZlTZXoyE36Db?=
 =?us-ascii?Q?IB9EcUjOMRs5ggKI5PGZppjNR/wLJW5EzQGrCrI0i3CRw5sPg0R8aImbz9Ug?=
 =?us-ascii?Q?BRz3mpRUDnMaY3pGn5eyIhOsmtqKCgBM+ZHPYwn84md1+beRYVnpQ4HrFOdd?=
 =?us-ascii?Q?h//iviPHfLa8/tMBo0vB6Qk/6vaPhNHgRmWt1kddmkPbbPRmRQ3p+L1xw2T8?=
 =?us-ascii?Q?jsiSqLowbxhCzDMJpqu/Dqh+T/H5P7263hIj15chN5tl3GtoUbSl7tXCHTJS?=
 =?us-ascii?Q?conDc0X+4KqZEV4YJDlhu4S4a6rYzmqwFb4HFuqQI6YPmPj5x9bpUl1bNFRE?=
 =?us-ascii?Q?lBpfsN2mST/vBwLp6pbRh56xq2L5BoFFCzmWsgagKJgdnjDiEMfBw1gMJIz9?=
 =?us-ascii?Q?apQ9brHCCC75ZRRCtmxPuwlPluudVJd9U/rTftRx9/HSarYdhJXpoTieibg0?=
 =?us-ascii?Q?zzOB8+Xd+faqShmg8/ajSNbU2/QLMwZmMBsRYWLOu/GD4HF58lsKczuunyVs?=
 =?us-ascii?Q?0VgX4EiU1T9FHI2NX4KQ60pxsjcCbkrvb+MflRceZ5cEZ5+kfqejMJPppZJh?=
 =?us-ascii?Q?smlb7byCU+axF4n1Fx2P1pA5Cb4+JEga/TE7OjyOeZYEDEq7CdAGgwUS7PuD?=
 =?us-ascii?Q?TowOriE38KYsK/bSVTt49kaNHVlwdftyFY64Jg4UAYJpUm4r1PGBHGLlOkv2?=
 =?us-ascii?Q?BtIHbMdXGeB+h6P2o/s/hlMAHNa9K5+nqc4hStMIHYrs57Fm/W0Rub1b1Qy7?=
 =?us-ascii?Q?GSWzj1SSia2U0dex8nnkEaYe?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB1576.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2661f568-466b-4957-31f2-08d91b646a0e
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2021 07:53:53.8680 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gJ4YRtFXzCsIC/X7QBL7lFLu86ZCEu1aPRjDW2faiMfbhph5uDlpyzkxwQCxB0DOpO08++HXarcIu19Hnpad9qXA65yo/7JW5+9z3RzF71o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1430
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2] ixgbe: fix large MTU request
 from VF
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
Cc: "Rybak, Eryk Roch" <eryk.roch.rybak@intel.com>, "Skajewski,
 PiotrX" <piotrx.skajewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Palczewski, Mateusz <mateusz.palczewski@intel.com>
> Sent: czwartek, 13 maja 2021 10:43
> To: intel-wired-lan@lists.osuosl.org
> Cc: Wyborny, Carolyn <carolyn.wyborny@intel.com>; Jankowski, Konrad0
> <konrad0.jankowski@intel.com>; Rybak, Eryk Roch
> <eryk.roch.rybak@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; Skajewski, PiotrX
> <piotrx.skajewski@intel.com>; Palczewski, Mateusz
> <mateusz.palczewski@intel.com>
> Subject: [PATCH net v2] ixgbe: fix large MTU request from VF
> 
> From: Jesse Brandeburg <jesse.brandeburg@intel.com>
> 
> Check that the MTU value requested by the VF is in the supported range of
> MTUs before attempting to set the VF large packet enable, otherwise reject
> the request. This also avoids unnecessary register updates in the case of the
> 82599 controller.
> 
> Fixes: 872844ddb9e4 ("ixgbe: Enable jumbo frames support w/ SR-IOV")
> Co-developed-by: Piotr Skajewski <piotrx.skajewski@intel.com>
> Signed-off-by: Piotr Skajewski <piotrx.skajewski@intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Co-developed-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  v2: Changed hard coded 68 value to ETH_MIN_MTU
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c | 16 +++++++---------
>  1 file changed, 7 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
> b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
> index 988db46..75921cd 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
> @@ -467,12 +467,16 @@ static int ixgbe_set_vf_vlan(struct ixgbe_adapter
> *adapter, int add, int vid,
>  	return err;
>  }
> 
> -static s32 ixgbe_set_vf_lpe(struct ixgbe_adapter *adapter, u32 *msgbuf,
> u32 vf)
> +static int ixgbe_set_vf_lpe(struct ixgbe_adapter *adapter, u32
> +max_frame, u32 vf)
>  {
>  	struct ixgbe_hw *hw = &adapter->hw;
> -	int max_frame = msgbuf[1];
>  	u32 max_frs;
> 
> +	if (max_frame < ETH_MIN_MTU || max_frame >
> IXGBE_MAX_JUMBO_FRAME_SIZE) {
> +		e_err(drv, "VF max_frame %d out of range\n", max_frame);
> +		return -EINVAL;
> +	}
> +
>  	/*
>  	 * For 82599EB we have to keep all PFs and VFs operating with
>  	 * the same max_frame value in order to avoid sending an oversize
> @@ -533,12 +537,6 @@ static s32 ixgbe_set_vf_lpe(struct ixgbe_adapter
> *adapter, u32 *msgbuf, u32 vf)
>  		}
>  	}
> 
> -	/* MTU < 68 is an error and causes problems on some kernels */
> -	if (max_frame > IXGBE_MAX_JUMBO_FRAME_SIZE) {
> -		e_err(drv, "VF max_frame %d out of range\n", max_frame);
> -		return -EINVAL;
> -	}
> -
>  	/* pull current max frame size from hardware */
>  	max_frs = IXGBE_READ_REG(hw, IXGBE_MAXFRS);
>  	max_frs &= IXGBE_MHADD_MFS_MASK;
> @@ -1249,7 +1247,7 @@ static int ixgbe_rcv_msg_from_vf(struct
> ixgbe_adapter *adapter, u32 vf)
>  		retval = ixgbe_set_vf_vlan_msg(adapter, msgbuf, vf);
>  		break;
>  	case IXGBE_VF_SET_LPE:
> -		retval = ixgbe_set_vf_lpe(adapter, msgbuf, vf);
> +		retval = ixgbe_set_vf_lpe(adapter, msgbuf[1], vf);
>  		break;
>  	case IXGBE_VF_SET_MACVLAN:
>  		retval = ixgbe_set_vf_macvlan_msg(adapter, msgbuf, vf);
> --
> 2.18.1

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
