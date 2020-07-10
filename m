Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CB8C021BF2E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2020 23:28:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7F88B87FA6;
	Fri, 10 Jul 2020 21:28:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2auVC6JmdIPV; Fri, 10 Jul 2020 21:28:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CB003880CD;
	Fri, 10 Jul 2020 21:28:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AA1D01BF3ED
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 21:28:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A5C8F86AB2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 21:28:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 45OJRB41zLc3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jul 2020 21:28:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F1E2E8692E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 21:28:43 +0000 (UTC)
IronPort-SDR: VPtw/8HoH/7mXMr0y2sxEZ5wkOU3J7oDdxXiflY0eyeQDJC5yRPYsIKoDSiHdqGaZ3eGaLRv8g
 qe/OiMhkcT0A==
X-IronPort-AV: E=McAfee;i="6000,8403,9678"; a="209830263"
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="209830263"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 14:28:43 -0700
IronPort-SDR: caItuScZzzVxMCDaYzdgzuJNdT9sOnFCkUeqTJyGQg6UJpkA6/rQ4LoWseSQOwPrlLZqQifOfk
 vKLQ+xAyqttw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="324812239"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga007.jf.intel.com with ESMTP; 10 Jul 2020 14:28:42 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 10 Jul 2020 14:28:42 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 10 Jul 2020 14:28:42 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (104.47.38.54) by
 edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Fri, 10 Jul 2020 14:28:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mn5rFB6oWhe5SATYJAuXlAO3qwvB4XSZG8LAWsyoTmJ38SOxo/GFK6BHtbOn4hbBUv/mn3BQHexo2KSNpcAJLIoPba9cUP1zfxAqp/IS2lahsmJfrDA1tpsirNesFBmjWgT1axv+sF5+zKEUUMO3woXNBouHIVe38hRujvPy4vqd32tjHznvgnJTZlwCCSw2mq0mxD1ceaFeMc/4RVHC7Q3jQZbhzo0H8vI9APIQEvxChhUZbbq8+9A0wIUNO6NQd6ugA+tjWXOR4aLEQ8kXvZJSPYAxPtvzNmnw+sFa7XF1gRDKlAjcLh1k73z8ZRQ1vp4C3Ja8IsYwloAv3v0nRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=24zwDfYI2hgtrhMyXqrkgQyRSaxa5qoqLLabZCvCq5w=;
 b=B3ElQmw68/QxIrDzjUPVwWyggdPd6rr33oHul7iABW4Irj28lhh1iiKSmuiG08mLjaZ+ax9HfjbQ6Ho0YYVX3wRtl5toO56ZzP+sCYsaiA5runQQ3Ovq/9SiWzN/FPRVV9vzlU2sN+hEYqu6zITXx/GXGTG1399VnzrPbEDYN66NqZruNlJuF8wSrG/WwnI5n1M009HH/yJshfab9sOh7ORmS/Ox+vnEEXILelIV1acAnP28Ru2w5kO5IPSOFzSaDzAXOTZJJIEYF0kQkqxCyrb45YgPiy2QsHRmvjijMy0rnbutIwznwT95dZI0LWVh71rkH9ToooAbSoLOpoXH6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=24zwDfYI2hgtrhMyXqrkgQyRSaxa5qoqLLabZCvCq5w=;
 b=UFoMo0yn9Y7kWgWOH4BXliqViCnkcRyr1xyM4Qs6XAiKMnbYNNLFADtobhy4/HPr/6+FSQfjFcuDOw6odJK3Wfbb6Yjsfg0A6looEu1QZ9l0iKlkQaZFYPBEwUGO9y0o77CbCG/wepsvpKJVHZSdKQX7TI4BheJsmo/fF34NwZE=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN8PR11MB3699.namprd11.prod.outlook.com
 (2603:10b6:408:83::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.23; Fri, 10 Jul
 2020 21:28:41 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3174.022; Fri, 10 Jul 2020
 21:28:41 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S48 v5 14/16] ice: Add GTPU FDIR filter
 for AVF
Thread-Index: AQHWVlX0whvpY707u0CcERVSFkQxfqkBVWEQ
Date: Fri, 10 Jul 2020 21:28:40 +0000
Message-ID: <BN6PR1101MB2145BAC53B1497F559ACB24C8C650@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200710010644.33817-1-qi.z.zhang@intel.com>
 <20200710010644.33817-15-qi.z.zhang@intel.com>
In-Reply-To: <20200710010644.33817-15-qi.z.zhang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [71.59.183.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 232df2cc-d259-4675-7595-08d825183753
x-ms-traffictypediagnostic: BN8PR11MB3699:
x-microsoft-antispam-prvs: <BN8PR11MB369934604DC09EF26AD0C3038C650@BN8PR11MB3699.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2887;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ujJ5CUqHKnio4sQJkCJQrnDce1I0wG5Oc6cfLsyM9a/wPJ5+wAEWN9tHmP8rNdfa9zrq9MJyE51zEU2EwW6I7W+6L3MfsRRlBAfexQVhFpXWwcmMiKahWinopMOKSUn4k8F2UtIhKqzc2/u0ZEGZ0ZOAyKjdowAZsX3AZnOFqg6B/i5hN18seQsPXEYeJaa5+Rm3iN3FSTKhl4xpD8OnAlHedmM5KozSXEu/8wtPeGB2UelFtn/WBz3HcJgwzvYXGGkymQQGaCTNhQJUwhZ8eF0Q8vejlFefH6RQPK4bJRg/fh0U7cq0DwVzjNQUxKuvpWDRPjM+yI+aUwoX6xdkLA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(376002)(396003)(346002)(136003)(366004)(316002)(66446008)(64756008)(66556008)(66476007)(71200400001)(76116006)(66946007)(2906002)(83380400001)(9686003)(7696005)(33656002)(86362001)(478600001)(53546011)(26005)(55016002)(5660300002)(52536014)(6916009)(8936002)(6506007)(4744005)(8676002)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: vf59euDl0g4RDUnGTkvg9ChsAIZaa5xhPc85APmk20LPVdDut7wEle/Ob/A56jzoLD1n6jWynDNqNiSXKbP7C6WwIFRfOx8g6Wne3+CVuI6qoSVK1a0XKqpIAuvdIGyo614vHBymrZs0/iKbNTjdQoNn77f+fO6rijmw7G/W4Wlm/r/LmcN8iGeeWyc3mHYQjIdwdc5PPlzQZTI1HiGZXSlsNCz29J4i+8uyTeV6JWYMwLHXR7rHzglIK7bOI+69llChsMfJBk5jrFyA+FiX0un675agZg/SNISNugGsSO9A7sU22jV2A4nZRwASF1m/HSF1qef/Wdnlt8BWLzEdGGmIsF1Hkx39p1R46j4R24F2Qgkv9VCnjyyZTyCoV6Jn2ibE7rZboKt6YNZErw9ccodf/jL/C6efk9yWHVr/Jwf+BQt7sRCr2elZr1YZ7q+/bHFeuHHlrJuaNr/NL17+ooj1CxfHXFIIh5PG7W05p+O8EOnPlMm06u+ipWYJ6A0m
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 232df2cc-d259-4675-7595-08d825183753
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2020 21:28:40.8775 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: h1DydmcjA8d81aOqlP8Ew2CeVM9EASkkXtEBkW/mOkyuD8cOir8F3iDR3kE2zS9WaWFKrhl4KQR3O7/pZ+CfFdw0CRj5LqzyjXo97hX4hSo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3699
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S48 v5 14/16] ice: Add GTPU FDIR
 filter for AVF
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Qi
> Zhang
> Sent: Thursday, July 9, 2020 6:07 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>
> Subject: [Intel-wired-lan] [PATCH S48 v5 14/16] ice: Add GTPU FDIR filter for
> AVF
> 
> Add new FDIR filter type to forward GTPU packets by matching TEID or QFI.
> The filter is only enabled when COMMS DDP package is downloaded.
> 
> Signed-off-by: Yahui Cao <yahui.cao@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_fdir.h          | 21 ++++++
>  drivers/net/ethernet/intel/ice/ice_type.h          |  4 ++
>  drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c | 74
> ++++++++++++++++++++++
>  3 files changed, 99 insertions(+)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
