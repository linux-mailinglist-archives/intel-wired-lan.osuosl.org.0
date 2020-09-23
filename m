Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CAEB7274F73
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Sep 2020 05:13:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 16AA6204E7;
	Wed, 23 Sep 2020 03:13:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TIiNdmc+kzDe; Wed, 23 Sep 2020 03:13:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7A5A7204DA;
	Wed, 23 Sep 2020 03:13:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A4E4A1BF9AF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 03:13:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9906D855EF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 03:13:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 54PIreoKUB9x for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Sep 2020 03:13:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A06E68558A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 03:13:03 +0000 (UTC)
IronPort-SDR: +AMWJbAi98GngAfyREhkFjgekXUqS2FyfsRvEAXsZoq4fceCr5x8zizyDHWlKLjkkw56xicD4R
 cPpBuVyyoPTQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9752"; a="224921689"
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400"; d="scan'208";a="224921689"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2020 20:13:02 -0700
IronPort-SDR: zgSjZNrim/79g8eQjmf0yM38tsypWoU1mNjDadl1DZyv15XIiOtUCH5z274xH0qSAZ0Ng6+xGq
 HLBxeAuPyTuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400"; d="scan'208";a="322455674"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga002.jf.intel.com with ESMTP; 22 Sep 2020 20:13:02 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 22 Sep 2020 20:13:02 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 22 Sep 2020 20:13:01 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 22 Sep 2020 20:13:01 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.36.51) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 22 Sep 2020 20:12:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EBce1IOLKRIAHSzQbrdOUIkAYrvI+zLXsZ9kzBK9JzGd4/O2PAV6HWuqfi85AlXbdg0Q50x6vDJ8uCT9cSYYgewpbwPS/qaWt+VpeynISfUCjHVIr6jglIgQEyD6x85mktEViCMBOoKH7pINwib45WlfYZMssy1Sxk33DWjJogCuwmF+qDh1PcqJGDTdt7L/NG0O7Hh8w7lMDbxwOI/V29ChyGE0bgtgojKRLqqb+YIRu67t6M0F5+8m1v1gnu1w0g+NWI60/3VyWy4yS7QQVJ3FYe59hr4iKJdRCHcpdQNmRPOcNX4wHQHjISnzzvNjkmP+vTnHQ0s7VBgZCceNpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nBtdHfUgESUJbIEVB2sS3i189ObQYkkNgiTion7fQQw=;
 b=HqgRgYaEDt+B883BZHIGXQcJzplSAv0WXZVJ0jlsmKxOU1C0BFTuWiNRLV67BoddTDip40hlhCG2AbrU6c5+KA9rZXOEwdW50le9/MHYLmRAfLwnfTl+wq2zLsPkiDWLMXOSMa/KoYEDrSO/D2R6qrGOa1bLHzsCikfU79aAV6mhlS7VaaO7HUSb/LkZr4xdaGP95ssO5UkFaAnnhGTQPYGMdNe5SrRpiXG1JB3xnXoDpLAvBd9qDx+xqm4302tbhf2hNkTEgBXnj2h65Df++Pz06KcUH5mv6JWVEpQ4OQLwJRu319CUXB/hIQldpQA4UC7SqjR24CCS3GPA/RDpHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nBtdHfUgESUJbIEVB2sS3i189ObQYkkNgiTion7fQQw=;
 b=u4lA6EQknXXJj61Wwvp2+c1GK8yqbVuWAkREcxjBZYqnBQ8SAK7M9FO+W5RP3TfTEIGKm7qu/NNh5zVAtxuV4cXG/VfgY/HEUULx7Z3rGy823fP7dSLFwOsDVogaXKze24UdMvQIUTdAQN9916f7RL578+rp0mpLU+BxG4+H4XQ=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB4476.namprd11.prod.outlook.com (2603:10b6:5:201::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3391.19; Wed, 23 Sep 2020 03:12:36 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::8c79:e56f:7f8b:ebe4]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::8c79:e56f:7f8b:ebe4%7]) with mapi id 15.20.3391.019; Wed, 23 Sep 2020
 03:12:36 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [RFC PATCH net-next v1 03/11] iavf: clean up
 W=1 warnings in iavf
Thread-Index: AQHWh9pCLs12CqIpyEKMMRGbr+sR6al1nrQQ
Date: Wed, 23 Sep 2020 03:12:35 +0000
Message-ID: <DM6PR11MB28903AC381DD47E8D75BA4E7BC380@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200911012337.14015-1-jesse.brandeburg@intel.com>
 <20200911012337.14015-4-jesse.brandeburg@intel.com>
In-Reply-To: <20200911012337.14015-4-jesse.brandeburg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.208.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7d1ae700-6a5c-44ca-7b75-08d85f6e8570
x-ms-traffictypediagnostic: DM6PR11MB4476:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB447614B4474A3B4CBC8A2F12BC380@DM6PR11MB4476.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3383;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FZ+wQLfU57K3nO7HO7YGm7YiAKCIH7RKUYPv344wGlJuQmUkpLLGLP21zWN7xMNRAV1ppFcJCuE/e2qcBm7QbSfXEVOnkDDUqP1nycjgd/+4Vk/e6C1ay8OMhmxaMDn9B1Mrp2zJpVkXjbiuGBPmrf1JJFYxqwigTEsCrLFTqXR2Q8GyOI+oXnmI/7c5g1BSDypsGdE/4AgowJFTjQ2mY1SAiMpH+sxuwDTNlKpXh1vRA/FIHuL7qEWaQTr/L9Qt7RrFVK4FnNjxOW4R7WI/MIsDbVGdyU8Is1bAtmKsuckICJuv4Z08h+lGTt4b6y9M2LKD3ZB/471qxoT5DFCBzqNKt/u43+fGMzV/P4wmT85cd9cbyk9NbDRfAHGsQydY
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(396003)(346002)(39860400002)(366004)(136003)(4744005)(186003)(26005)(8936002)(86362001)(316002)(110136005)(478600001)(7696005)(8676002)(53546011)(6506007)(71200400001)(66446008)(64756008)(83380400001)(2906002)(66556008)(4326008)(66946007)(9686003)(66476007)(76116006)(55016002)(5660300002)(52536014)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: o0dkwUUB+abheEZTGRcTSWig3H1yjCYfgakjQWM/q7fjzNIEorOyDRGKWMrbHpd+OkiU699IiTDbetT0MnDHKM06eFRigxoueNB4k0TpYwgAtRGekDv8ar9TLca8UMLa1T7Y4FiCvygBrTYLesvW1lVqBxQWyPYsF7mjX+j/wLpPbDHOjgDgxUoWt0ANQBze2PetlvBM2aAfzaisoEJc+XVBE714oolGPSDe75yhWBld21bxqMKzVVKFuA3QG9tMaIk0DKPKg/VhO+FeQ9u2cbcuHBNn3e6XKGF6P8HkPNqCG3Hbp1lWzH0owOQy4Sq7UxsaYoP2oEKCJzYeZgr7OI3ATANzbAnSrHboyd4HSNWG9k6muEe9MD49+v/HV9SOSQ8rXjlMRgieFybVHNaFKQVa7mlS0bvslo2tb917iz2/1tdS88V/VUsCqo1Mnb3UtgsoM4yBM1UZUwNF+jtK3T17GM9WHmqs/sL60jrZVSN5rzUY4VJ/8LloJRVcrWYFm/mYpznj5rDg8/cp32by7vbiPnNcxikV8sPZpfRcPRaG6pzXRQavkFx5fd5MkyNsCRudVtLtAoKKDiTD1YSPovqcUIJ8DUNk7yjRL9n/oqMxaCEntMaEgVqdgcZ4+YoC3aIv67Ri5vVIiA1ZBuczhQ==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d1ae700-6a5c-44ca-7b75-08d85f6e8570
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2020 03:12:35.8330 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5AOmvuvjIdDdv+3o+i91i5ef7Rtp4cTuMZTMGSupMGD7C6gq7pQHC2WWqztaxf+cFdQIgFV8y2F/JPUuJVTkXQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4476
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next v1 03/11] iavf: clean up
 W=1 warnings in iavf
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
> Jesse Brandeburg
> Sent: Thursday, September 10, 2020 6:23 PM
> To: netdev@vger.kernel.org
> Cc: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [RFC PATCH net-next v1 03/11] iavf: clean up W=1
> warnings in iavf
> 
> Inspired by Lee Jones, this eliminates the remaining W=1 warnings
> in iavf.
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 24 ++++++++++-----------
>  1 file changed, 12 insertions(+), 12 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
