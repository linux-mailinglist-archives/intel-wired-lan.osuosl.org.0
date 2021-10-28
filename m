Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27FF343F348
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Oct 2021 01:01:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E97214047B;
	Thu, 28 Oct 2021 23:01:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y_KhMcxqQmQq; Thu, 28 Oct 2021 23:01:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C3F70400CD;
	Thu, 28 Oct 2021 23:01:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 218331BF3AA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Oct 2021 23:01:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 063D94060E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Oct 2021 23:01:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PS6JGD-ZoVoD for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Oct 2021 23:01:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 83EC140607
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Oct 2021 23:01:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10151"; a="291375291"
X-IronPort-AV: E=Sophos;i="5.87,191,1631602800"; d="scan'208";a="291375291"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2021 16:01:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,191,1631602800"; d="scan'208";a="448158205"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP; 28 Oct 2021 16:01:30 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 28 Oct 2021 16:01:29 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 28 Oct 2021 16:01:29 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 28 Oct 2021 16:01:29 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 28 Oct 2021 16:01:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kxPjEoap0C4tbljsugwEvcis5bEHLNW0zuKiOqCG08Q0WpNU+hu4Jv830s5X6q/kgJM/psEFi3RhMq7C1OAl1o/20rNHRksmL0KH7TsgmeXnj6KSyRyD5Ae9QUAGxB0vfo4pyC+DSJslHGFSfH7wRzHmpStriyyt+RcP6PENw54T3dbwWDfs9skuTNqkzu13Zj+PBikcD3yuHkIg4BvuPNs4nIqUK1Re/3vIds9T4ndkcL03t3ZiEK1hIjNYZd7VoguQ8P/Fdx7ep0338aF7132y7QyEXsg6dVlC2OvHstynEPk7GxcOPlwHcgZmS0PPF43LSUWAACJ8EUewclrifg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O1Z2bhdGMkpnDvo3LSbs41LPB6KJr9DRN+IGgAVJjuE=;
 b=AGd7RWavQRR2Ib5Kburl5kpJ8wy8e4u7xUe5U9Vwukde4lVo7eqGZVjFkCQU8EdCamcwn0BDsPpSIIGb2ATeDGzaspBx0nTzh40hdeBL+V56GlkuHNE6ugBJcrEDbnDNMQs2nWXPm52OoS8U9gBdYPqT5BGP32AP4ePNfbzNTSARlQXq2gvZfsTmN82D+qRZ94P1b7taHbBbVRYCVSIoayJXXin0EAnPpHK7fr62m/12o2h3zy4gZ01aCsGFod1Z1sXdnLBuRXk6Ukp6XL13ohZ2YrYPI0Bot7d8iNNROPP6bSx4jcCmAsRLY9Lwe6Rl3l42BzyLZtH5HWEGg6w8ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O1Z2bhdGMkpnDvo3LSbs41LPB6KJr9DRN+IGgAVJjuE=;
 b=v6WVJneh5bchhlbeWOAoWXVLBUNXezHoL8xWqgpPjrLx9AaLhP3/HYrjD7VPYTpTuuzBx6MzQJMf94TK50lpnbBENRyinRzaZCvP7694R7+O0qmmcr0Cv3+zQ9cMYcR2aXqplWgZniqXwDAfSxgyKrcHrf0bsW+WhjSuo5Y+dR4=
Received: from MWHPR11MB0062.namprd11.prod.outlook.com (2603:10b6:301:67::34)
 by MW3PR11MB4731.namprd11.prod.outlook.com (2603:10b6:303:2f::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.14; Thu, 28 Oct
 2021 23:01:28 +0000
Received: from MWHPR11MB0062.namprd11.prod.outlook.com
 ([fe80::c12:f29c:4bb1:ee32]) by MWHPR11MB0062.namprd11.prod.outlook.com
 ([fe80::c12:f29c:4bb1:ee32%6]) with mapi id 15.20.4628.020; Thu, 28 Oct 2021
 23:01:28 +0000
From: "Michael, Alice" <alice.michael@intel.com>
To: "Maloszewski, Michal" <michal.maloszewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] iavf: Fix adopting new combined
 setting
Thread-Index: AQHXy0qpJWpjRNTMFE2KDM9Mu9J2PqvpB/dw
Date: Thu, 28 Oct 2021 23:01:28 +0000
Message-ID: <MWHPR11MB00624E2C73773F8865759A11E4869@MWHPR11MB0062.namprd11.prod.outlook.com>
References: <20211027155156.54453-1-michal.maloszewski@intel.com>
In-Reply-To: <20211027155156.54453-1-michal.maloszewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 29e3055d-cf3c-4637-8bb1-08d99a66e00b
x-ms-traffictypediagnostic: MW3PR11MB4731:
x-microsoft-antispam-prvs: <MW3PR11MB47315D94C2F29EC7535E1E39E4869@MW3PR11MB4731.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:873;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uMKlzg+GB+nI8VkhGs8ZcCFdA78cuoEOf68ISCsEnPWweE3Ab637iwJGtEY/5TJJU17POFIyguV76foWwU4pA3A6tV5uhgOUAFao7prtYKqpnkQy5cnup6R+c7CKvhFJNccf8WKawSF1uh/OtaRMJL01xmw5A4y75lSgkHjdMasCfpLxUNT8gwOAQYc5+kSbU2UCYy/YzHBfhzcejmFRjmKBCp0jRB+bBktGLccTG7AH1MA0XUQRn93QDXa1r0CkULxHCx3F4lRB58GRZct8jdEBxbJaA4757UGZiFp10PwrecGrCy3HrGQ9JLBiIywBE9ZA/w/Aru9FXnwpoiVX/VUxkKGc2vzny2sYT3vcBfTF9i/vyjD2DmVY6S9AsvxT3Q8yB19zqK/dmVg0Lvu5twJVGVF7dBuPxWy2JHq3cr+MoEh1dLSXIZpjfMnReFkg6eq1BWd4on0r3RAaxB2Q5se80xX8c8j50Yx+tnEqLPj1/fTem01tImehFWYvj1dl8JSyb3kgykpBkSdHPKOPwLi3/fbTy+pfTy39TfY0WSvg+AHFHcFG09GVtck0KOwU10Y2jaKywKjNCO0BS+qxMGvCAscVXdft2NJ7c82pp8cVXbUMP7AR7jsqorOLwekquFQQlDtKP+zWvbZcWhW411f68oN1YuenzLikIn93NJfb3F9dXmkw9IUnwteTHFGV/5q5JbLdqHUgpLJvwhv51FxhwQ+KPFXA9cNMH7OPtK7hKjmvmmC8/8UfCeQnZir5hD/HyhE/BG6EgVXKwl5CahAFnEN8BMqg9C+ImHyfZ9U=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB0062.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(6506007)(7696005)(33656002)(53546011)(107886003)(186003)(55016002)(26005)(83380400001)(9686003)(316002)(71200400001)(8676002)(110136005)(8936002)(38070700005)(66556008)(966005)(122000001)(66446008)(64756008)(86362001)(66476007)(2906002)(52536014)(66946007)(76116006)(38100700002)(4326008)(5660300002)(508600001)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?nDyKUdfyrTsQ9RmtlGlHHlvkHiwDpdcpwGrQkKx2iTqzycBrQs8jE7Da99mC?=
 =?us-ascii?Q?MQ9/qtmrc3jGUdOEvjmzH0OcOEzfdICIZ6mRJm/ppmn9SsTHgckEKHbEfPhH?=
 =?us-ascii?Q?Zmm6B/2NnMkfmpGRtOn+dDeWsKjWh/KrwbclsRo8IXrzJjhkkt2bk/V8GzNd?=
 =?us-ascii?Q?sj2jOVAnHk4d4m5xkNPEawifwnTq4TWlTPti3UuwgmdzKeY4bW93rXNpiVXN?=
 =?us-ascii?Q?9CsTv5+Dz7QeEBhes1JIWVutQZja2jY4XWT4c+pkuaxh3lB4Cp/TAFBFzSQC?=
 =?us-ascii?Q?5gFuaeMYEPtDxWuf8SXH+mfNsM/TiY8I+Ce+yuUfX4dxcDXM4xADgidZ+RTC?=
 =?us-ascii?Q?v2qdxw/ARKFORTabYSLv55wO3Q4XNNs5ljrbTJGFXrZhCznLBhp+LJdwp2ad?=
 =?us-ascii?Q?XIecoAFe9DOpH2ljf3NgZ3e4xImQP87k68u0hIcdgzJBS2vRZOm9JKyyztLG?=
 =?us-ascii?Q?OL7Dxq8A4jBR5lVnxmORNR2ZUJfLwT6A4j7b6YOXAOlBy27jNmNrbqp22mtl?=
 =?us-ascii?Q?C4geV9fymSeMFiuJEWov89F3gBKY/YfJORywd3/t8w54N9o0NKM1YxtVDgBL?=
 =?us-ascii?Q?8j02A/Uw7slIXV01XaM9hmcNZoLhgK07jOM9VvOEPWPmKoLSY5SXRG+gpICQ?=
 =?us-ascii?Q?2cv/Y3v6UK4NPPuqLe+YdUm7dVsRvYeoCW5faYlpFvegvuHaYizdc8m6dJRv?=
 =?us-ascii?Q?x1OQ2pIwqoj6RlOWiT6m8rCHwucxj16qXx9CjNJ8oOv0ZtzPS++a/xeTnqaW?=
 =?us-ascii?Q?/UGTZ5STPU+72vPEd5m82Dvnws6FqZLbvi/Ue+ZAbSMPeE2EY6Ynf6T86ZCm?=
 =?us-ascii?Q?s/gp8IEupmW1eN4sV5RO4bf4P89o5VpdVo9odmr2tgH6LOitXoojkdKab4rz?=
 =?us-ascii?Q?ikus18w6SBvgQJfpNQzOUyZ2fbpxq+m+4cLxChkO7777t7p2enY5e8vrf+HL?=
 =?us-ascii?Q?/oXI8D9UMxHkmiUxXh39DypjaLG7VwhW70zxWD0yqQyFIkG7eY65fEq5viTs?=
 =?us-ascii?Q?JyrQxHgpSUV2RJ2lzcJSoP+RY5Y/DRkr3Zvq3gOxdTF1uyPk8RbMVmMb2kPZ?=
 =?us-ascii?Q?QJx77MNNZT1/PivFKZ+WWYhFXGLp3o7o3WKlRT52uNssPEcw4IW1DFHsh91u?=
 =?us-ascii?Q?V0jyMiUkjmdJ9iP0AoDOTaYPZWkO+BFLJOaB/uN+SdGEDBlzr1Ag3oD64k3J?=
 =?us-ascii?Q?VRbEz+DT/hTaVoHvJ62hmEGDVqwKVwJrfCGM7TZVxkqy9fc2wGSCrGgHyZQg?=
 =?us-ascii?Q?mOOevitZJffg9ZcnkWa48l7T3xDwnlsSA+U5RauFLtfO1P5d2ehn4YcLjMml?=
 =?us-ascii?Q?ylI65yOJN0SY0RCGqFK/TPOjxc3Af9OUtrWxY6sjR3pD+9+OqNtA+Rtgukai?=
 =?us-ascii?Q?Ula6c4D08b6LeaI4S8uwcAfgZNsUywyQENOGECImyMRwHvL1tPMEAwMrc4FT?=
 =?us-ascii?Q?qoOSxT4TVoom9jYZnQtOh3ITFgbBMlNNaMm+95XBzYN7qJi2gVlulUz9Oy9A?=
 =?us-ascii?Q?slX/H0RabmA7855Y20itaHu3ZPDPnYPWgz4mjhjVywOdn2jzEq1m+uDIrb/F?=
 =?us-ascii?Q?WpnodStKrk4L/TpqId8XxmJyHsu6vfj8vOBItgrZa3tFQj7zzWdjsj0xL/kD?=
 =?us-ascii?Q?lP+9fcNgPJj2/Y+WKkKG4Cw=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB0062.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 29e3055d-cf3c-4637-8bb1-08d99a66e00b
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Oct 2021 23:01:28.4131 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rUiXhl+pOqNzhiGZQexM3/ejt1yyDALrbW/n0RX9g5TCBT409UAQjWUfmHVkgXII9WoQmA0duQ2IniWfZxwHfg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4731
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: Fix adopting new
 combined setting
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
Cc: "Maloszewski, Michal" <michal.maloszewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Maloszewski
> Sent: Wednesday, October 27, 2021 8:52 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Maloszewski, Michal <michal.maloszewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] iavf: Fix adopting new combined
> setting
> 
> New combined setting is fixed adopt after VF reset.
> This has been implemented by call reinit interrupt scheme during VF reset.
> Without this fix new combined setting has never been adopted.
> 
> Fixes: 129cf89e5856 ("iavf: rename functions and structs to new name")
> Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
> Signed-off-by: Michal Maloszewski <michal.maloszewski@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 14 +++++++++-----
>  1 file changed, 9 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 80437ef26..355f98924 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -2233,7 +2233,8 @@ continue_reset:
>  			 err);
>  	adapter->aq_required = 0;
> 
> -	if (adapter->flags & IAVF_FLAG_REINIT_ITR_NEEDED) {
> +	if ((adapter->flags & IAVF_FLAG_REINIT_MSIX_NEEDED) ||
> +	    (adapter->flags & IAVF_FLAG_REINIT_ITR_NEEDED)) {
>  		err = iavf_reinit_interrupt_scheme(adapter);
>  		if (err)
>  			goto reset_err;
> @@ -2304,10 +2305,11 @@ continue_reset:
>  		if (err)
>  			goto reset_err;
> 
> -		if (adapter->flags & IAVF_FLAG_REINIT_ITR_NEEDED) {
> -			err = iavf_request_traffic_irqs(adapter, netdev->name);
> -			if (err)
> -				goto reset_err;
> +	if ((adapter->flags & IAVF_FLAG_REINIT_MSIX_NEEDED) ||
> +	    (adapter->flags & IAVF_FLAG_REINIT_ITR_NEEDED)) {
> +		err = iavf_request_traffic_irqs(adapter, netdev->name);
> +		if (err)
> +			goto reset_err;
> 
>  			adapter->flags &= ~IAVF_FLAG_REINIT_ITR_NEEDED;
>  		}

This chunk seems to be what is producing this error, please fix this and re-submit;
>> drivers/net/ethernet/intel/iavf/iavf_main.c:2288:3: error: this 'if' 
>> clause does not guard... [-Werror=misleading-indentation]
    2288 |   if (err)
         |   ^~
   drivers/net/ethernet/intel/iavf/iavf_main.c:2291:4: note: ...this statement, but the latter is misleadingly indented as if it were guarded by the 'if'
    2291 |    adapter->flags &= ~IAVF_FLAG_REINIT_ITR_NEEDED;
         |    ^~~~~~~
   cc1: all warnings being treated as errors

> @@ -2321,6 +2323,8 @@ continue_reset:
>  		adapter->state = __IAVF_DOWN;
>  		wake_up(&adapter->down_waitqueue);
>  	}
> +
> +	adapter->flags &= ~IAVF_FLAG_REINIT_ITR_NEEDED;
>  	mutex_unlock(&adapter->client_lock);
>  	mutex_unlock(&adapter->crit_lock);
> 
> --
> 2.27.0
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
