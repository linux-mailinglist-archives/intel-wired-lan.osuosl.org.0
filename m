Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B3ACA3DE142
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 Aug 2021 23:11:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6482840368;
	Mon,  2 Aug 2021 21:11:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KkCeGQLTnoRF; Mon,  2 Aug 2021 21:11:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 69FD24036B;
	Mon,  2 Aug 2021 21:11:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E8EA71BF31C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Aug 2021 21:10:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D2CC64036B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Aug 2021 21:10:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DGTr2myw32QK for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Aug 2021 21:10:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8985840368
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Aug 2021 21:10:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10064"; a="200732841"
X-IronPort-AV: E=Sophos;i="5.84,289,1620716400"; d="scan'208";a="200732841"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2021 14:10:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,289,1620716400"; d="scan'208";a="510403136"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP; 02 Aug 2021 14:10:52 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 2 Aug 2021 14:10:52 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 2 Aug 2021 14:10:51 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Mon, 2 Aug 2021 14:10:51 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Mon, 2 Aug 2021 14:10:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IAjt6hqYe8Nqm105xMsnRmvv6JMiGQY1O1y1IIgfFLKRvDH1DQRnJKMQ1H8CQlooAVi5qbPMZXkZ+VSXguCdLi1ptclhULwUFoY5Dm0BQ91kQ3a78qmeFIPRb6MYi8onk2lbW2w68XLO4qvSZuiplVmzrz/Q59jHssneUlC4nFWzRgGOtF1S4IGesoQH1yWWgi1qtylgwwuBziBnHozGNZGMy2sLwJW0dG3QY+c+26CEsEKXx2Tj9gfBvRXkfvHnl/QlUj1VttPdJTJlOhCGXHsBlXur2Mhhzg1X6wdg6i+98v0/OxFMDMfZtydLT5m5vqajQwHnkdIOVpr1zuEcBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T0MY7kDTKYe8e81ShdVnkFt6oCwRn0G9/EJDCkzrIZ0=;
 b=hTh4ghrBpgCFLaXHhzsY0ipUJYq+VSMTH8o7BvvAMclFYkBJyTMQrjx7JphjaflAurTw6bJ7xaYMC6b6iaK1FtKBoyJBcVQ3Zac3syeqMFtwE2jMMLGFjVvAzcBcW5QuYPVUw69ke1S2ieotKCcm0GmCLcW3Y2eE5fohKrCCeCsCnXzHrJeEs3RUNJBerFHiYfPMsIpduT4CjEuJV70SkCWLgPIeM4Sdl3f/lSi5ou9Riwlb+Q8OWhMtK1y08kQE+Dg7NFsTAw19Q9MCiAwS6GPsQk2qYoZWi8byZcO9X147NykW30xSqGB5JQ8UAJnR86xDhXk8leynoiigdOQ0nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T0MY7kDTKYe8e81ShdVnkFt6oCwRn0G9/EJDCkzrIZ0=;
 b=ZWI6GdMFk0q3cvGzD3wRt4NrG3uFnKGvdS3ghuc7crasxGmm6cT3NwvoWDvaH0AVYSTqbcn+dqpOtF1GlntsyKm5seN1JzJz6921jZpA1Q4uQge/n86fDQ0GRV06p005Dh0Uyy3eEE34rC75SHHkZx52VtIXog/uDYusNJrLaeM=
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MWHPR11MB1518.namprd11.prod.outlook.com (2603:10b6:301:c::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.18; Mon, 2 Aug
 2021 21:10:49 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::bd85:7a6a:a04c:af3a]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::bd85:7a6a:a04c:af3a%5]) with mapi id 15.20.4373.026; Mon, 2 Aug 2021
 21:10:49 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Arnd Bergmann <arnd@kernel.org>
Thread-Topic: [PATCH net-next v2] ethernet/intel: fix PTP_1588_CLOCK
 dependencies
Thread-Index: AQHXh68Y1owt0G/CUEakzTAdq+RvtqtgbT+AgAAzuICAAAqYAIAAAknggAAFUACAAALNwA==
Date: Mon, 2 Aug 2021 21:10:49 +0000
Message-ID: <CO1PR11MB508981DD21005448829C014AD6EF9@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20210802145937.1155571-1-arnd@kernel.org>
 <20210802164907.GA9832@hoboy.vegasvil.org>
 <bd631e36-1701-b120-a9b0-8825d14cc694@intel.com>
 <CAK8P3a3P6=ZROxT8daW83mRp7z5rYAQydetWFXQoYF7Y5_KLHA@mail.gmail.com>
 <CO1PR11MB50892367410160A8364DBF69D6EF9@CO1PR11MB5089.namprd11.prod.outlook.com>
 <CAK8P3a379=Qi7g7Hmf299GgM-6g32Them81uYXPqRDZDro_azg@mail.gmail.com>
In-Reply-To: <CAK8P3a379=Qi7g7Hmf299GgM-6g32Them81uYXPqRDZDro_azg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5e3f6a9d-e5a8-4d92-9631-08d955fa00fb
x-ms-traffictypediagnostic: MWHPR11MB1518:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB1518A76D2AB5E77B3641785AD6EF9@MWHPR11MB1518.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: STHdXnH8NXErJIHwTVKb4GUJhs1ddEvMryexIbzUNO+hu9nbR4xn9ddmu6cErldy26UjUQJbXXJ2MZ+BTCi4sRFw+Xy9KplyMX1ovy0dPQSq4ReyiNMMaOKJ8wJn2tX+FmKHTU9+2Zq4BuIneBEPoPKRxb7L10kuPpvqK5HKe+5F5IikK4/9uU7i5bClFIkzHnm+OhhNNC83FaB45F+Hvro+OEU0PrxT+sYkldtv6sKHRH/DdgLZc0lxf/tw10KQ6ncbAkWW64S9/TVcmN6cMrViD4xNDu5qzybNeV55eyUrHCO/glQMC04mOba6vvBGAvuamRdoC59Jne6grsEfhj1TU/WkC7VvOnyOPJ9ECWC6EhPsKdn3Tm4hjY9fCK0aAM7ORTSwvNOavOsBXG1re3gCNth2eKNoI1LgdaB/SjmuFbVrwSCcVHxqv9Qpzd8jD5x+oOd6OTlJCw6zidThfnVIlqpVPeng62uA7Laqi0d6eMD5pxaLYJkFsj8kjrJ1C2GfMo+evM9hwpzXp0VHI+N8fyEre5+r6o7n5w5ZwOFN/RvS8vvE2tvpMHxMZbu9Ssh84mVzI16KTYPYw9R+IXjmZgp8iHx5ThmGgtlaQKsOuroLss3nqrYLp30s+6OOQkm20j1FkZ57ME/5kPpblGwl1rHEcSd6PvX0+hXjgcHhu95/esNJxi3acC9rquNgf21hvZ8V2nl/E2cMPcvx0Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(136003)(346002)(39860400002)(366004)(396003)(9686003)(2906002)(55016002)(4326008)(122000001)(71200400001)(38100700002)(6916009)(7696005)(53546011)(26005)(5660300002)(6506007)(316002)(83380400001)(54906003)(478600001)(86362001)(38070700005)(66476007)(7416002)(33656002)(76116006)(66446008)(8676002)(186003)(64756008)(66556008)(52536014)(66946007)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VTZuWVl0c1BBK0EydnF2Q3owVVpiWTBySVZ0ZVo0cTF4UlBUb1JSOWhpenFv?=
 =?utf-8?B?U0FRL2RIcWdlY1N6UFVIVng3Ylg3WmJzS21UNmFPeWZnb20xbDdBZzZCQUNB?=
 =?utf-8?B?cmVVUloxSEJxNzZvbEQzelJuZEcxV0hzOFZJY0VxcGJ2RUQzRHNZV3VZZWNE?=
 =?utf-8?B?QjA0Und5eFluWUU0bjgxVjlFQndMVXdNVEIrRlFkcXZnQVg0Sit4M3hwbm1r?=
 =?utf-8?B?bHNYYlY4U2FNL0JRWGpRTi9jQnJtcU0zUTh4V3U1VGFjMHVvU1VoRlBBNVkv?=
 =?utf-8?B?WWlHTXg1aEZnN0tUWitSQ3owMjRTYW4wTjN2WTRTc0U4dWpOaTJ5R01uektW?=
 =?utf-8?B?bHZPb3k1ZzVpRHhkclh6ZnordFIyUE1nb0xQTzIxazBzeXh1MG84NEdkdlNH?=
 =?utf-8?B?L1MveG5OZU1tL1ViQ29GUVZDWGNWVVlFS0JDOTZsSWllYmJBYkZHc2hnUGEz?=
 =?utf-8?B?SG53a1JhWE16VW4vMDZweDh5c3JkSks5T3hmNFc0UldnMU53dis5OFFmRndu?=
 =?utf-8?B?c2Q1SWZjd0gra2NtSkhxQW5KcFFmUnQxZkREQ2UrakYxL0VSL3JPTnFjbUZY?=
 =?utf-8?B?U3NmbTJhQk1GUW5laG0xbjdMSnlTeDdXWVkxQkkvYk53dXJIbW9oaExyWnlt?=
 =?utf-8?B?UWJBcHBTSmVONjNZWlk4c1ZucDBlUGtMK2lBQnd6bzdlVTRTMVVCNVB3SmEz?=
 =?utf-8?B?UE1GWTNCTE1sTFJ0QkcvaEVLZzQ1NFBtQWx0a01qS2ZUVXU3eFdqRzNNV21Z?=
 =?utf-8?B?dUtvK0dXMm93TjA3RXFMTUVyMmtWK0FjVFdUVEYwZXllaml2VmIvejJDZnd3?=
 =?utf-8?B?cjdueGNuNnAxZ0FpNElUbGN4aDZucGdEYWN5Zm5uRmNCaTgzY2VwTHVCK2Nw?=
 =?utf-8?B?MllISUJJSDMrWklVd3lwK2c5VWdoT1JsNnJOZXExd0NINHIxRWZXa0kyT3VX?=
 =?utf-8?B?QU80b2pwc2oyWTlqdkY2WEtiRVhmTThtUVJVWkFZZHY3aVVVcGF0REhTWUMr?=
 =?utf-8?B?WDYwcVVrRzNNYi9lMVk0R0xRM1ZvN0xlOVJHL3BHdkludDIxV2RTbzNJd256?=
 =?utf-8?B?SWtwQ3RscmNhQWEyY2tQTFRZMGNrMnRJRGo4M2k4VjBZUEZuSHNPOXNjODQv?=
 =?utf-8?B?WWJENW9wSkJZWnNpeVBKdnVTRVpXQ3JhcVREOVJaYURnMXQ1UEpEdWxFMUt2?=
 =?utf-8?B?bHE1RVVkUms3Zk80SS9VUzd1RzJZdFZBUEljOEl3K0I3SzdiaGFIZ0hWYURN?=
 =?utf-8?B?RXZ2bEdLZVJYcHBuMzNQekxtOGdkNXQxVUc1N1JBRVR2MmpQbHYyTjE4bFBh?=
 =?utf-8?B?ZEZwWThieW1OdnNoR1JPbG1ibUNCMXppcnJXQ1dWcWcwVVNmMGc2OHl4RzQx?=
 =?utf-8?B?a2x3RDhtS1Y0WktFR09kSlFMOHQvWGt2R3dTLzgxQkh0NzhuYTU3ckVobU55?=
 =?utf-8?B?d3ZvcVhVZ3VtSkRSaGdsVlkyNTJ3TEMrckprNTJsZGVUZFBuOW13QzhDZlhz?=
 =?utf-8?B?ZW43bEZwTWk0K3E2SXp4OVZPZ1VQZUkySmYxYmJFNC93Q2hSQ1ExZFFIYmZX?=
 =?utf-8?B?T0puaHBLa2dSV3dyV2w5Uy9EejhLWGdsRXRmelZNWk5UcXk3eEtTTnVaMkF6?=
 =?utf-8?B?aGVjMXFEUmtGRXVWemI3NWtLeFFyUE5ncC9Ha3pSa0NnamZ0R1VIblNtUE1M?=
 =?utf-8?B?R2JjbVlIYzhwQlhGeWlDU01IVVFyLzdDeUJSZUZhcStiSCtzL2xucW5VTFVT?=
 =?utf-8?Q?JskupHzp2kEX8uT7nU=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e3f6a9d-e5a8-4d92-9631-08d955fa00fb
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2021 21:10:49.4138 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RZijTTFfjPraiC4slNB1aalNniKGPuP0SMfLE4XJCjrt6z21d39i+gdnX009sm5EYUcVX7tiZoNzsqpEW886qDLARV7MkbMaXRDCCxJKwOQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1518
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ethernet/intel: fix
 PTP_1588_CLOCK dependencies
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
Cc: Nicolas Pitre <nicolas.pitre@linaro.org>, Arnd Bergmann <arnd@arndb.de>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Richard Cochran <richardcochran@gmail.com>,
 Kurt Kanzenbach <kurt@linutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Saleem,
 Shiraz" <shiraz.saleem@intel.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Arnd Bergmann <arnd@kernel.org>
> Sent: Monday, August 02, 2021 1:59 PM
> To: Keller, Jacob E <jacob.e.keller@intel.com>
> Cc: Richard Cochran <richardcochran@gmail.com>; Nicolas Pitre
> <nicolas.pitre@linaro.org>; Brandeburg, Jesse <jesse.brandeburg@intel.com>;
> Nguyen, Anthony L <anthony.l.nguyen@intel.com>; David S. Miller
> <davem@davemloft.net>; Jakub Kicinski <kuba@kernel.org>; Arnd Bergmann
> <arnd@arndb.de>; Kurt Kanzenbach <kurt@linutronix.de>; Saleem, Shiraz
> <shiraz.saleem@intel.com>; Ertman, David M <david.m.ertman@intel.com>;
> intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org
> Subject: Re: [PATCH net-next v2] ethernet/intel: fix PTP_1588_CLOCK
> dependencies
> 
> On Mon, Aug 2, 2021 at 10:46 PM Keller, Jacob E
> <jacob.e.keller@intel.com> wrote:
> 
> > > You can do something like it for a particular symbol though, such as
> > >
> > > config MAY_USE_PTP_1588_CLOCK
> > >        def_tristate PTP_1588_CLOCK || !PTP_1588_CLOCK
> > >
> > >  config E1000E
> > >         tristate "Intel(R) PRO/1000 PCI-Express Gigabit Ethernet support"
> > >         depends on PCI && (!SPARC32 || BROKEN)
> > > +       depends on MAY_USE_PTP_1588_CLOCK
> > >         select CRC32
> > > -       imply PTP_1588_CLOCK
> >
> > What about "integrates"?
> 
> Maybe, we'd need to look at whether that fits for the other users of the
> "A || !A" trick.
> 

Sure.  I just know from reading it other places it really causes a "huh?" reaction.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
