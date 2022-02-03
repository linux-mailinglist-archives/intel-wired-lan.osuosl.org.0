Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 145944A7D3B
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Feb 2022 02:07:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2C06E60ADA;
	Thu,  3 Feb 2022 01:07:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2izHrgozmLEO; Thu,  3 Feb 2022 01:07:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3323760634;
	Thu,  3 Feb 2022 01:07:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3194C1BF2BC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 01:07:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1169140569
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 01:07:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OB64bzUgLNdV for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Feb 2022 01:07:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1B49040297
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 01:07:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643850434; x=1675386434;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ox6kHOPyrtc2YcERgSGkruep3rAHxKPaAccTWRki60A=;
 b=YgOedPFOwM03HiWWKzKIuFGifgGzjyRPKhLiOh76d3yaPq540bfa/2KI
 3uonAh6dP2gY1luGUTU+7EmVrbxDTF0dG5m/TKFN+hE+AzyPo0WEgLtRr
 NbBA9QWQHcZ67H8kygBPOlYa4CRhbF5fNOlMnKA7eUKQTKXgObIBPsC24
 NVqt+iEvkeHXBgrZp0F1G9k5aqmMEr7dUVdm2o7MzxS2Ztq7TsQAzJQAm
 XB1tavuPeegD5vZyPGlLPxnI6wOFNY2TP4PIMhMNh46rgZhCPVBuI8JNj
 f4d8y4h3iu1TuYzDB6ceBkuCu8CiQ+7x+sm8nzP5vmWoqTR/Qw4kSMZE8 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10246"; a="246888109"
X-IronPort-AV: E=Sophos;i="5.88,338,1635231600"; d="scan'208";a="246888109"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 17:07:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,338,1635231600"; d="scan'208";a="483071814"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga006.jf.intel.com with ESMTP; 02 Feb 2022 17:07:12 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 2 Feb 2022 17:07:11 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 2 Feb 2022 17:07:11 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.42) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 2 Feb 2022 17:07:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=POhEb8JF8sXNylOY5lPhsxpkkRSCfgiylF0ig8FxoLORxm+uL0yqfg13QjHFHvok/DfpkuXix8p8GRGnIt84S3GA4Ew7wSZ99VE5qLDJWxQdRjF9/Pgix8Q/A5VmFH65fi7N0QgdfwnMQ8Metscj6I6jCa+skqabfQhWMVQE4G5v9ElNKRhc/B2HUCPCFdUFwnayACX4J5SkmpTUW05O8ofrZGO/GsHLI8D2gM1EsioUBiONgFX0JiasbtG3XAqOHW1FknUsmmPY+C2VK3ba7jVdL9fBwEnxApEGaA1Ot4+ibvGO0J9qj2lBx8rRpvNxj06HhzMzXRP+a/swaSD+0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iJqsez6KjdwHWeziJGM4rtSGii7nMwbpowLKFpa0t24=;
 b=SPhoRGdJgvm3NqWrZmnXQOU34TxbUCfZD14VCnAnrXXx894e9bq2QY5Y4G11foFpHdH5dY3/+FHNXSxw0oxnX+kTlyBX/NMDM92qtOStBVRTPZbH17PrA4wmklVNPcuQnPAfAU1XtpAFsZt5LeH5jaC6GZAcHAFQVu7nb9wwOs6fnfPBFmITp7aXqKolrlfyPdKFQBpX0//JHS52gk0Ydai4qLTHDqwm9IAVM8ylKrm7E2NCEYBd08g/vgDQ3zEPwUK1KGSwvV+8B7eGSXaXaabGc8hdc7bx+xOvaseOTmMOLiKAiFcivE50xnQ3nPWsTvvwhojlRBljWh07pNPRHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from CO1PR11MB5186.namprd11.prod.outlook.com (2603:10b6:303:95::14)
 by DM5PR11MB1899.namprd11.prod.outlook.com (2603:10b6:3:10b::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.19; Thu, 3 Feb
 2022 01:07:08 +0000
Received: from CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::3d01:b3b2:d2f0:5be1]) by CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::3d01:b3b2:d2f0:5be1%5]) with mapi id 15.20.4951.012; Thu, 3 Feb 2022
 01:07:08 +0000
From: "Brady, Alan" <alan.brady@intel.com>
To: "Lobakin, Alexandr" <alexandr.lobakin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 13/19] iecm: implement splitq
 napi_poll
Thread-Index: AQHYE97VMWkVAJ525EKwew+fF/O8Bax4tBQAgAhJ8hA=
Date: Thu, 3 Feb 2022 01:07:08 +0000
Message-ID: <CO1PR11MB5186937D2198CEAA43DD4E578F289@CO1PR11MB5186.namprd11.prod.outlook.com>
References: <20220128001009.721392-1-alan.brady@intel.com>
 <20220128173850.27818-1-alexandr.lobakin@intel.com>
In-Reply-To: <20220128173850.27818-1-alexandr.lobakin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 961540a2-86a1-495e-a930-08d9e6b18056
x-ms-traffictypediagnostic: DM5PR11MB1899:EE_
x-microsoft-antispam-prvs: <DM5PR11MB18997DBC623DB9A631D198008F289@DM5PR11MB1899.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nA6nmLQN3nz7hjNg4qSULDnZ9hsHdKdViEKBBKgx/0BeXUNNai4doKgcDfBqNzxZUz/3xLFUIVRzgw5/iq3WYJI9IaV+ifUJlNvOXrXcz2wmmo4y+bs0qIfVwizUCfv81M5KG6/y0NCIfeboCNCIuT1ZEdKvZgYk3wV0W0kESoDrTJYzAVQHesj8SMfe0jm/b7250HM/QsSYRjQAzUHJbz2kga8u0JlHQR6/hV8C/IDPDv6yjctJ1r5z3pQhHbk2S2+4y4IuqawacBmfVJWW5WPcvn1cnPA7fWm1A9f/mFYlrjBSwn1DX8t45Lbc+qaG5IpZ11MgXRl59GjuuGohmfiG4oi1P+pOk+XpM5xlnsggOviknM/r9pSmKBysjl5SzWCiuGhtJeQ8yI0CW0wsqAisySntpPmB7Y1AQNpFJkWY+S7pj8HcssdAl3XIBHQJLmNbXedpVe1DXCPFiw8w2mp4qQ2nvDT6j8IVLcIeHtiXMCv6tuT0XYRMPRdnB6NCkk7kUVDAzObvV1kNY2JvO8bq6fW4SKiGs8qDsnz0MuqyzmBP2UVcUtsviegsVH8bhejhWy4BFtCvqN9oytk6ojEQOJBuvxXNqV0VVQWfyXFBKPGooRwgd38lHVan7jzyU3SJIGi4w2oROpskPxzTgrRgxJKnajZxNlhFnyKnP0dmCjs+rzjXdnciatJIOIuEuC+fVtrrV/1qJu7nOPDoGY47xKI2aQhz9Pbt1lPEQn4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5186.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(33656002)(55016003)(9686003)(316002)(82960400001)(71200400001)(54906003)(30864003)(5660300002)(52536014)(2906002)(6636002)(107886003)(26005)(8936002)(8676002)(122000001)(66446008)(53546011)(38100700002)(66946007)(186003)(38070700005)(66476007)(6506007)(86362001)(508600001)(76116006)(7696005)(64756008)(83380400001)(66556008)(4326008)(6862004)(559001)(579004)(309714004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?El9+GJH9tYP5CO6AH66D68RyzItVpScIUl+zPn2vePrJou5L2kdw0MWmOmac?=
 =?us-ascii?Q?oYkvx0EgA8Jo6IQrpe0RYIKtbao5u+RjKhOKV2CppozjYaAKYUbQIiOtTjfc?=
 =?us-ascii?Q?B89oGw/LWjtDZU3/QJuGhRk9MgbtYe6Ieh/wyE1GToilt7x5PokzbPZc8pes?=
 =?us-ascii?Q?TU5xLPuK9C2ILSTuQsCSWfXmL+PRqI0LdlhrtMQ9sezN8eHeqTVOWnsoAdA6?=
 =?us-ascii?Q?mncV29V3x4ub2aEtvBTEUn8HvY47G6+gBJFW8aZ+8O4DXB9xoKQRicXxocFb?=
 =?us-ascii?Q?jf26HeZzgLyrslIY2BrC3goGSKgNZvaqYlZGVtRp3iJqE9QYOaqRYTqi1pI/?=
 =?us-ascii?Q?80Z1xTHRXNkkmjV/8m8SlsXWJhOGNqBeVI35DaYH4tHzGMwTWxfW0/weaGep?=
 =?us-ascii?Q?ELoKt5sHG5Jly/YzasnI3PSfHuDh1WoDksczrgKrjljADeZRn06OpBCqLmui?=
 =?us-ascii?Q?tlzBTf6cPV77q5lNqtCyHsPXfJvjmuDTwQxQ71QqrqRUb/xoicfWLWVU3+YZ?=
 =?us-ascii?Q?QZaL/GNVpKe0ivkcJg6WmPiqcDrS5dc5MQrTfGY8yrAPF2YoHN/V6+/OUXxo?=
 =?us-ascii?Q?0b2pDBG4aDdTs2Z1SL3AIP/CfhFLZ7BR2t/lksS9SS0KqkXhBF+JYjNe7plc?=
 =?us-ascii?Q?s6cvE8Lz4ZiSFuo9zMynRB/OHHDE0rrjD8EFdszODKOrxOMpWj7D6W4GupKN?=
 =?us-ascii?Q?KHmyT29Rg6kOo8m8ZZll6zC2Wgv/kS/sZZBmvDTu19J7tb0xgcEoAF/LInee?=
 =?us-ascii?Q?kbGg+VaCgn3WTGbC7+rnUcZ2qh7ntx+VwrLObUIA1C3uBUdXziG/pbo+jCrt?=
 =?us-ascii?Q?5i8PtIN+530YgaqBnFhqeuIG4U7jAUUlT5TZGOiA61NYNr3d7JuyBA/qIVLR?=
 =?us-ascii?Q?eTkRg6GQXz6y9eR1JmbRU/plJ338Sb8kSO8N+4uuDLw9IPUxJek/KamNPWqj?=
 =?us-ascii?Q?2mZGjbBgFSAE0ORBVFEoMcp5HNNjPaIjA7vNZDX5dc0VUeoncYFLU7z1LfWe?=
 =?us-ascii?Q?ITBAeRvCFztRSZhZ9R/nuCTHI9ZJl324zshOvr/BmSFFHXD0GgsyVruKgXus?=
 =?us-ascii?Q?EeNZtcplf+9AZWRuHZ6FedGWDOz1iKkqUd6u9Xom1VlAmPhSu7X015XBjWsE?=
 =?us-ascii?Q?EPmLA/qiuwNL6dVN66aA97VapLdc4YRVCv/xSSN32peVTIWEKJsU7YqUA+nv?=
 =?us-ascii?Q?TL6ExrspGuZyCi7FOtrFhusGC5Tl9NX8lbxaVWJEjevhx+rDyLjbP60t+j20?=
 =?us-ascii?Q?7snOeX9Egy6lIwvLBBR3Isw9hNkwK7byXiNr7DFk0aE3b+XovEpk3HtH+FrJ?=
 =?us-ascii?Q?W1/EzG3T2SdukEvlH2SQP+PKg5mmHVkO0I+LDiAlaK/5VzdOTVezGuEy6qfz?=
 =?us-ascii?Q?7b1bJiAkHG5r1iGnD+AhxL+N3GTpyBQ4vU/pEB9gfyC76lWVLUWBdjzxjFx9?=
 =?us-ascii?Q?EqCvlZhHc9zyBJ0CtjUjlrMvFRzTfFlk3HPQvAkM3a5iebaBxalwrjAAkEUN?=
 =?us-ascii?Q?rDS0CvbdbzF+zXNmNqRqUgykMrMQPWXRI/JORsbNWEonUTVH1sfxbH0DIFhU?=
 =?us-ascii?Q?+IObtm1ubzx72VqzkI4fTxPhF426jH9XCdxZ3xIZtFROvnp2ZZ5MJL4LWheY?=
 =?us-ascii?Q?Umbo4flGmeUggm3ocW4d82w=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5186.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 961540a2-86a1-495e-a930-08d9e6b18056
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2022 01:07:08.4198 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PHb5tJwmlLP/2UQOE8Tdxj8MwkidCbQx1Kl3VFUdzsBeaQzamhntEdJkt4EKpEvk+i77EU7hgLmI9GVJtc2mYQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1899
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 13/19] iecm: implement splitq
 napi_poll
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
Cc: "Burra, Phani R" <phani.r.burra@intel.com>, "Chittim,
 Madhu" <madhu.chittim@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Linga,
 Pavan Kumar" <pavan.kumar.linga@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Lobakin, Alexandr <alexandr.lobakin@intel.com>
> Sent: Friday, January 28, 2022 9:39 AM
> To: Brady, Alan <alan.brady@intel.com>
> Cc: Lobakin, Alexandr <alexandr.lobakin@intel.com>; intel-wired-
> lan@lists.osuosl.org; Burra, Phani R <phani.r.burra@intel.com>; Chittim, Madhu
> <madhu.chittim@intel.com>; Linga, Pavan Kumar
> <pavan.kumar.linga@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH net-next 13/19] iecm: implement splitq
> napi_poll
> 
> From: Alan Brady <alan.brady@intel.com>
> Date: Thu, 27 Jan 2022 16:10:03 -0800
> 
> > This adds everything we need to actually receive packets and process spent
> > buffers using the splitq model. This contrasts to more traditional queueing
> > models by essentially splitting a normal queue of descriptors and mapped
> > buffers into separate queues. This allows us to deal with both more
> > efficiently and also allows us to implement asymmetric queuing setups where
> > you have multiple completion queues associated with a single buffer queue.
> >
> > Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> > Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> > Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> > Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > Signed-off-by: Alan Brady <alan.brady@intel.com>
> > ---
> >  drivers/net/ethernet/intel/iecm/iecm_txrx.c   | 1468 ++++++++++++++++-
> >  drivers/net/ethernet/intel/include/iecm.h     |    4 +
> >  .../net/ethernet/intel/include/iecm_txrx.h    |   20 +
> >  3 files changed, 1490 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/iecm/iecm_txrx.c
> b/drivers/net/ethernet/intel/iecm/iecm_txrx.c
> > index 4b9288e1c254..85a82b58525a 100644
> > --- a/drivers/net/ethernet/intel/iecm/iecm_txrx.c
> > +++ b/drivers/net/ethernet/intel/iecm/iecm_txrx.c
> > @@ -218,6 +218,36 @@ const struct iecm_rx_ptype_decoded
> iecm_ptype_lookup[IECM_RX_MAX_PTYPE] = {
> >  };
> >  EXPORT_SYMBOL(iecm_ptype_lookup);
> >
> > +/**
> > + * iecm_buf_lifo_push - push a buffer pointer onto stack
> > + * @stack: pointer to stack struct
> > + * @buf: pointer to buf to push
> > + *
> > + * Returns 0 on success, negative on failure
> > + **/
> > +static int iecm_buf_lifo_push(struct iecm_buf_lifo *stack,
> > +			      struct iecm_tx_buf *buf)
> > +{
> > +	if (stack->top == stack->size)
> 
> How frequent is this? A candidate for unlikely() maybe?
> 

Sure seems reasonable.

> > +		return -ENOSPC;
> > +
> > +	stack->bufs[stack->top++] = buf;
> > +
> > +	return 0;
> > +}
> > +
> > +/**
> > + * iecm_buf_lifo_pop - pop a buffer pointer from stack
> > + * @stack: pointer to stack struct
> > + **/
> > +static struct iecm_tx_buf *iecm_buf_lifo_pop(struct iecm_buf_lifo *stack)
> > +{
> > +	if (!stack->top)
> > +		return NULL;
> > +
> > +	return stack->bufs[--stack->top];
> > +}
> > +
> >  /**
> >   * iecm_get_stats64 - get statistics for network device structure
> >   * @netdev: network interface device structure
> > @@ -812,6 +842,30 @@ iecm_rx_buf_hw_alloc_all(struct iecm_queue
> *rxbufq, u16 alloc_count)
> >  	return !!alloc_count;
> >  }
> >
> > +/**
> > + * iecm_rx_post_buf_refill - Post buffer id to refill queue
> > + * @refillq: refill queue to post to
> > + * @buf_id: buffer id to post
> > + */
> > +void iecm_rx_post_buf_refill(struct iecm_sw_queue *refillq, u16 buf_id)
> > +{
> > +	u16 nta = refillq->next_to_alloc;
> > +	u16 *bi;
> > +
> > +	bi = IECM_SPLITQ_RX_BI_DESC(refillq, nta);
> > +	/* store the buffer ID and the SW maintained GEN bit to the refillq */
> > +	*bi = ((buf_id << IECM_RX_BI_BUFID_S) & IECM_RX_BI_BUFID_M) |
> > +	      (!!(test_bit(__IECM_Q_GEN_CHK, refillq->flags)) <<
> > +	       IECM_RX_BI_GEN_S);
> 
> Please use FIELD_GET() and FIELD_PREP() for masks. This won't pass
> the maintainers.
> 

We've never had a problem before, I'm assuming these are new? Will check.

> > +
> > +	nta++;
> > +	if (unlikely(nta == refillq->desc_count)) {
> 
> Could be compressed into one line.
> 

Could be, but we'd prefer not to.

> > +		nta = 0;
> > +		change_bit(__IECM_Q_GEN_CHK, refillq->flags);
> > +	}
> > +	refillq->next_to_alloc = nta;
> > +}
> > +
> >  /**
> >   * iecm_rx_post_buf_desc - Post buffer to bufq descriptor ring
> >   * @bufq: buffer queue to post to
> > @@ -1670,6 +1724,398 @@ int iecm_vport_queues_alloc(struct iecm_vport
> *vport)
> >  	return err;
> >  }
> >
> > +/**
> > + * iecm_tx_find_q - Find the tx q based on q id
> > + * @vport: the vport we care about
> > + * @q_id: Id of the queue
> > + *
> > + * Returns queue ptr if found else returns NULL
> > + */
> > +static struct iecm_queue *
> > +iecm_tx_find_q(struct iecm_vport *vport, int q_id)
> > +{
> > +	int i;
> > +
> > +	for (i = 0; i < vport->num_txq; i++) {
> > +		struct iecm_queue *tx_q = vport->txqs[i];
> > +
> > +		if (tx_q->q_id == q_id)
> > +			return tx_q;
> > +	}
> 
> 	for (i = ...)
> 		if (vport->txqs[i].q_id == q_id)
> 			return tx_q;
> 
> No need to create a variable.
>

It would actually look like

 	for (i = ...)
 		if (vport->txqs[i]->q_id == q_id)
 			return vport->txqs[i];


You had another comment about adding a vc_ops variable where it was being used twice.  I'm not seeing a huge difference here and seems like splitting hairs. I think we would prefer to keep this.

> > +
> > +	return NULL;
> > +}
> > +
> > +/**
> > + * iecm_tx_handle_sw_marker - Handle queue marker packet
> > + * @tx_q: tx queue to handle software marker
> > + */
> > +static void iecm_tx_handle_sw_marker(struct iecm_queue *tx_q)
> > +{
> > +	struct iecm_vport *vport = tx_q->vport;
> > +	bool drain_complete = true;
> > +	int i;
> > +
> > +	clear_bit(__IECM_Q_SW_MARKER, tx_q->flags);
> > +	/* Hardware must write marker packets to all queues associated with
> > +	 * completion queues. So check if all queues received marker packets
> > +	 */
> > +	for (i = 0; i < vport->num_txq; i++) {
> > +		if (test_bit(__IECM_Q_SW_MARKER, vport->txqs[i]->flags))
> > +			drain_complete = false;
> > +	}
> > +	if (drain_complete) {
> > +		set_bit(__IECM_SW_MARKER, vport->adapter->flags);
> > +		wake_up(&vport->adapter->sw_marker_wq);
> > +	}
> > +}
> > +
> > +/**
> > + * iecm_tx_splitq_clean_buf - Clean TX buffer resources
> > + * @tx_q: tx queue to clean buffer from
> > + * @tx_buf: buffer to be cleaned
> > + * @napi_budget: Used to determine if we are in netpoll
> > + */
> > +static void
> > +iecm_tx_splitq_clean_buf(struct iecm_queue *tx_q, struct iecm_tx_buf
> *tx_buf,
> > +			 int napi_budget)
> > +{
> > +	/* unmap skb header data */
> > +	dma_unmap_single(tx_q->dev,
> > +			 dma_unmap_addr(tx_buf, dma),
> 
> These two lines can fit into 79 without wrapping.
> 
> > +			 dma_unmap_len(tx_buf, len),
> > +			 DMA_TO_DEVICE);
> 
> These two as well.
> 

Will fix.

> > +
> > +	napi_consume_skb(tx_buf->skb, napi_budget);
> > +
> > +	/* clear tx_buf data */
> > +	tx_buf->skb = NULL;
> > +	dma_unmap_len_set(tx_buf, len, 0);
> > +}
> > +
> > +/**
> > + * iecm_stash_flow_sch_buffers - store buffere parameter info to be freed at
> a
> > + * later time (only relevant for flow scheduling mode)
> > + * @txq: Tx queue to clean
> > + * @tx_buf: buffer to store
> > + */
> > +static int
> > +iecm_stash_flow_sch_buffers(struct iecm_queue *txq, struct iecm_tx_buf
> *tx_buf)
> > +{
> > +	struct iecm_adapter *adapter = txq->vport->adapter;
> > +	struct iecm_tx_buf *shadow_buf;
> > +
> > +	shadow_buf = iecm_buf_lifo_pop(&txq->buf_stack);
> > +	if (!shadow_buf) {
> > +		dev_err(&adapter->pdev->dev,
> > +			"No out-of-order TX buffers left!\n");
> > +		return -ENOMEM;
> > +	}
> > +
> > +	/* Store buffer params in shadow buffer */
> > +	shadow_buf->skb = tx_buf->skb;
> > +	shadow_buf->bytecount = tx_buf->bytecount;
> > +	shadow_buf->gso_segs = tx_buf->gso_segs;
> > +	dma_unmap_addr_set(shadow_buf, dma, dma_unmap_addr(tx_buf,
> dma));
> > +	dma_unmap_len_set(shadow_buf, len, dma_unmap_len(tx_buf, len));
> > +	shadow_buf->compl_tag = tx_buf->compl_tag;
> > +
> > +	/* Add buffer to buf_hash table to be freed
> > +	 * later
> > +	 */
> > +	hash_add(txq->sched_buf_hash, &shadow_buf->hlist,
> > +		 shadow_buf->compl_tag);
> > +
> > +	memset(tx_buf, 0, sizeof(struct iecm_tx_buf));
> > +
> > +	return 0;
> > +}
> > +
> > +/**
> > + * iecm_tx_splitq_clean - Reclaim resources from buffer queue
> > + * @tx_q: Tx queue to clean
> > + * @end: queue index until which it should be cleaned
> > + * @napi_budget: Used to determine if we are in netpoll
> > + * @descs_only: true if queue is using flow-based scheduling and should
> > + * not clean buffers at this time
> > + *
> > + * Cleans the queue descriptor ring. If the queue is using queue-based
> > + * scheduling, the buffers will be cleaned as well and this function will
> > + * return the number of bytes/packets cleaned. If the queue is using flow-
> based
> > + * scheduling, only the descriptors are cleaned at this time. Separate packet
> > + * completion events will be reported on the completion queue, and the
> buffers
> > + * will be cleaned separately. The stats returned from this function when
> using
> > + * flow-based scheduling are irrelevant.
> > + */
> > +static struct iecm_tx_queue_stats
> > +iecm_tx_splitq_clean(struct iecm_queue *tx_q, u16 end, int napi_budget,
> > +		     bool descs_only)
> > +{
> > +	union iecm_tx_flex_desc *next_pending_desc = NULL;
> > +	struct iecm_tx_queue_stats cleaned_stats = {0};
> > +	union iecm_tx_flex_desc *tx_desc;
> > +	s16 ntc = tx_q->next_to_clean;
> > +	struct iecm_tx_buf *tx_buf;
> > +	unsigned short gso_segs = 0;
> > +	unsigned int bytecount = 0;
> > +	struct netdev_queue *nq;
> > +
> > +	tx_desc = IECM_FLEX_TX_DESC(tx_q, ntc);
> > +	next_pending_desc = IECM_FLEX_TX_DESC(tx_q, end);
> > +	tx_buf = &tx_q->tx_buf[ntc];
> > +	ntc -= tx_q->desc_count;
> > +
> > +	while (tx_desc != next_pending_desc) {
> > +		union iecm_tx_flex_desc *eop_desc =
> > +			(union iecm_tx_flex_desc *)tx_buf->next_to_watch;
> > +
> > +		/* clear next_to_watch to prevent false hangs */
> > +		tx_buf->next_to_watch = NULL;
> > +
> > +		bytecount += tx_buf->bytecount;
> > +		gso_segs += tx_buf->gso_segs;
> > +
> > +		if (descs_only) {
> > +			if (iecm_stash_flow_sch_buffers(tx_q, tx_buf))
> > +				goto tx_splitq_clean_out;
> > +
> > +			while (tx_desc != eop_desc) {
> > +				tx_buf++;
> > +				tx_desc++;
> > +				ntc++;
> > +				if (unlikely(!ntc)) {
> > +					ntc -= tx_q->desc_count;
> > +					tx_buf = tx_q->tx_buf;
> > +					tx_desc = IECM_FLEX_TX_DESC(tx_q,
> 0);
> > +				}
> > +
> > +				if (dma_unmap_len(tx_buf, len)) {
> > +					if (iecm_stash_flow_sch_buffers(tx_q,
> > +
> 	tx_buf))
> > +						goto tx_splitq_clean_out;
> > +				}
> 
> Redundant braces, redundant nested ifs.
> 
> Also, it's actually an error, since dma_unmap_len() always equals 0
> for architectures which don't select NEED_DMA_MAP_STATE. So this
> should either check for any other signs of mapped buffer or field
> `len` should be present and defined with correct values
> unconditionally.
> 

We'll take a look.

> > +			}
> > +		} else {
> > +			/* update the statistics for this packet */
> > +			cleaned_stats.bytes += tx_buf->bytecount;
> > +			cleaned_stats.packets += tx_buf->gso_segs;
> > +
> > +			iecm_tx_splitq_clean_buf(tx_q, tx_buf, napi_budget);
> > +
> > +			/* unmap remaining buffers */
> > +			while (tx_desc != eop_desc) {
> > +				tx_buf++;
> > +				tx_desc++;
> > +				ntc++;
> > +				if (unlikely(!ntc)) {
> > +					ntc -= tx_q->desc_count;
> > +					tx_buf = tx_q->tx_buf;
> > +					tx_desc = IECM_FLEX_TX_DESC(tx_q,
> 0);
> > +				}
> > +
> > +				/* unmap any remaining paged data */
> > +				if (dma_unmap_len(tx_buf, len)) {
> 
> Same here.
> 
> > +					dma_unmap_page(tx_q->dev,
> > +						       dma_unmap_addr(tx_buf,
> dma),
> > +						       dma_unmap_len(tx_buf,
> len),
> > +						       DMA_TO_DEVICE);
> > +					dma_unmap_len_set(tx_buf, len, 0);
> > +				}
> > +			}
> > +		}
> > +
> > +		tx_buf++;
> > +		tx_desc++;
> > +		ntc++;
> > +		if (unlikely(!ntc)) {
> > +			ntc -= tx_q->desc_count;
> > +			tx_buf = tx_q->tx_buf;
> > +			tx_desc = IECM_FLEX_TX_DESC(tx_q, 0);
> > +		}
> > +	}
> > +
> > +tx_splitq_clean_out:
> > +	ntc += tx_q->desc_count;
> > +	tx_q->next_to_clean = ntc;
> > +
> > +	nq = netdev_get_tx_queue(tx_q->vport->netdev, tx_q->idx);
> > +	netdev_tx_completed_queue(nq, gso_segs, bytecount);
> > +
> > +	return cleaned_stats;
> > +}
> > +
> > +/**
> > + * iecm_tx_clean_flow_sch_bufs - clean bufs that were stored for
> > + * out of order completions
> > + * @txq: queue to clean
> > + * @compl_tag: completion tag of packet to clean (from completion
> descriptor)
> > + * @budget: Used to determine if we are in netpoll
> > + */
> > +static struct iecm_tx_queue_stats
> > +iecm_tx_clean_flow_sch_bufs(struct iecm_queue *txq, u16 compl_tag,
> > +			    int budget)
> > +{
> > +	struct iecm_tx_queue_stats cleaned_stats = {0};
> > +	struct hlist_node *tmp_buf = NULL;
> > +	struct iecm_tx_buf *tx_buf = NULL;
> > +
> > +	/* Buffer completion */
> > +	hash_for_each_possible_safe(txq->sched_buf_hash, tx_buf, tmp_buf,
> > +				    hlist, compl_tag) {
> > +		if (tx_buf->compl_tag != compl_tag)
> > +			continue;
> > +
> > +		if (likely(tx_buf->skb)) {
> > +			/* update the statistics for this packet */
> > +			cleaned_stats.bytes += tx_buf->bytecount;
> > +			cleaned_stats.packets += tx_buf->gso_segs;
> > +
> > +			iecm_tx_splitq_clean_buf(txq, tx_buf, budget);
> > +		} else if (dma_unmap_len(tx_buf, len)) {
> 
> Here as well.
> 
> > +			dma_unmap_page(txq->dev,
> > +				       dma_unmap_addr(tx_buf, dma),
> > +				       dma_unmap_len(tx_buf, len),
> > +				       DMA_TO_DEVICE);
> > +			dma_unmap_len_set(tx_buf, len, 0);
> > +		}
> > +		/* Push shadow buf back onto stack */
> > +		iecm_buf_lifo_push(&txq->buf_stack, tx_buf);
> > +
> > +		hash_del(&tx_buf->hlist);
> > +	}
> > +
> > +	return cleaned_stats;
> > +}
> > +
> > +/**
> > + * iecm_tx_clean_complq - Reclaim resources on completion queue
> > + * @complq: Tx ring to clean
> > + * @budget: Used to determine if we are in netpoll
> > + *
> > + * Returns true if there's any budget left (e.g. the clean is finished)
> > + */
> > +static bool
> > +iecm_tx_clean_complq(struct iecm_queue *complq, int budget)
> > +{
> > +	struct iecm_splitq_tx_compl_desc *tx_desc;
> > +	struct iecm_vport *vport = complq->vport;
> > +	s16 ntc = complq->next_to_clean;
> > +	bool clean_completed = false;
> > +	unsigned int complq_budget;
> > +
> > +	complq_budget = vport->compln_clean_budget;
> > +	tx_desc = IECM_SPLITQ_TX_COMPLQ_DESC(complq, ntc);
> > +	ntc -= complq->desc_count;
> > +
> > +	do {
> > +		struct iecm_tx_queue_stats cleaned_stats = {0};
> > +		struct iecm_queue *tx_q;
> > +		u16 compl_tag, hw_head;
> > +		int tx_qid;
> > +		u8 ctype;	/* completion type */
> > +		u16 gen;
> > +
> > +		/* if the descriptor isn't done, no work yet to do */
> > +		gen = (le16_to_cpu(tx_desc->qid_comptype_gen) &
> > +		      IECM_TXD_COMPLQ_GEN_M) >>
> IECM_TXD_COMPLQ_GEN_S;
> 
> Same stuff about FIELD_{GET,PREP}().
> 
> > +		if (test_bit(__IECM_Q_GEN_CHK, complq->flags) != gen)
> > +			break;
> > +
> > +		/* Find necessary info of TX queue to clean buffers */
> > +		tx_qid = (le16_to_cpu(tx_desc->qid_comptype_gen) &
> > +			 IECM_TXD_COMPLQ_QID_M) >>
> IECM_TXD_COMPLQ_QID_S;
> 
> Here as well, and in other places I missed.
> 
> > +		tx_q = iecm_tx_find_q(vport, tx_qid);
> > +		if (!tx_q) {
> > +			dev_err(&complq->vport->adapter->pdev->dev,
> > +				"TxQ #%d not found\n", tx_qid);
> > +			goto fetch_next_desc;
> > +		}
> > +
> > +		/* Determine completion type */
> > +		ctype = (le16_to_cpu(tx_desc->qid_comptype_gen) &
> > +			IECM_TXD_COMPLQ_COMPL_TYPE_M) >>
> > +			IECM_TXD_COMPLQ_COMPL_TYPE_S;
> > +		switch (ctype) {
> > +		case IECM_TXD_COMPLT_RE:
> > +			hw_head = le16_to_cpu(tx_desc-
> >q_head_compl_tag.q_head);
> > +
> > +			cleaned_stats = iecm_tx_splitq_clean(tx_q, hw_head,
> > +							     budget, true);
> > +			break;
> > +		case IECM_TXD_COMPLT_RS:
> > +			if (test_bit(__IECM_Q_FLOW_SCH_EN, tx_q->flags)) {
> > +				compl_tag =
> > +				le16_to_cpu(tx_desc-
> >q_head_compl_tag.compl_tag);
> > +
> > +				cleaned_stats =
> > +					iecm_tx_clean_flow_sch_bufs(tx_q,
> > +								    compl_tag,
> > +								    budget);
> > +			} else {
> > +				hw_head =
> > +				le16_to_cpu(tx_desc-
> >q_head_compl_tag.q_head);
> > +
> > +				cleaned_stats = iecm_tx_splitq_clean(tx_q,
> > +								     hw_head,
> > +								     budget,
> > +								     false);
> > +			}
> > +
> > +			break;
> > +		case IECM_TXD_COMPLT_SW_MARKER:
> > +			iecm_tx_handle_sw_marker(tx_q);
> > +			break;
> > +		default:
> > +			dev_err(&tx_q->vport->adapter->pdev->dev,
> > +				"Unknown TX completion type: %d\n",
> > +				ctype);
> > +			goto fetch_next_desc;
> > +		}
> > +
> > +		u64_stats_update_begin(&tx_q->stats_sync);
> > +		tx_q->q_stats.tx.packets += cleaned_stats.packets;
> > +		tx_q->q_stats.tx.bytes += cleaned_stats.bytes;
> > +		u64_stats_update_end(&tx_q->stats_sync);
> > +
> > +		if (unlikely(cleaned_stats.packets &&
> > +			     netif_carrier_ok(tx_q->vport->netdev) &&
> > +			     (IECM_DESC_UNUSED(tx_q) >=
> IECM_TX_WAKE_THRESH) &&
> > +			     (IECM_TX_BUF_UNUSED(tx_q) >= tx_q->desc_count
> >> 2))) {
> > +			/* Make sure any other threads stopping queue after
> > +			 * this see new next_to_clean.
> > +			 */
> > +			smp_mb();
> > +			if (tx_q->vport->adapter->state == __IECM_UP &&
> > +			    __netif_subqueue_stopped(tx_q->vport->netdev,
> > +						     tx_q->idx)) {
> > +				netif_wake_subqueue(tx_q->vport->netdev,
> > +						    tx_q->idx);
> > +			}
> > +		}
> > +
> > +fetch_next_desc:
> > +		tx_desc++;
> > +		ntc++;
> > +		if (unlikely(!ntc)) {
> > +			ntc -= complq->desc_count;
> > +			tx_desc = IECM_SPLITQ_TX_COMPLQ_DESC(complq, 0);
> > +			change_bit(__IECM_Q_GEN_CHK, complq->flags);
> > +		}
> > +
> > +		prefetch(tx_desc);
> > +
> > +		/* update budget accounting */
> > +		complq_budget--;
> > +	} while (likely(complq_budget));
> > +
> > +	ntc += complq->desc_count;
> > +	complq->next_to_clean = ntc;
> > +
> > +	clean_completed = !!complq_budget;
> > +
> > +	return clean_completed;
> > +}
> > +
> >  /**
> >   * iecm_tx_splitq_build_ctb - populate command tag and size for queue
> >   * based scheduling descriptors
> > @@ -2337,6 +2783,940 @@ netdev_tx_t iecm_tx_splitq_start(struct sk_buff
> *skb,
> >  	return iecm_tx_splitq_frame(skb, tx_q);
> >  }
> >
> > +/**
> > + * iecm_ptype_to_htype - get a hash type
> > + * @decoded: Decoded Rx packet type related fields
> > + *
> > + * Returns appropriate hash type (such as PKT_HASH_TYPE_L2/L3/L4) to be
> used by
> > + * skb_set_hash based on PTYPE as parsed by HW Rx pipeline and is part of
> > + * Rx desc.
> > + */
> > +enum
> > +pkt_hash_types iecm_ptype_to_htype(struct iecm_rx_ptype_decoded
> *decoded)
> > +{
> > +	if (!decoded->known)
> > +		return PKT_HASH_TYPE_NONE;
> > +	if (decoded->payload_layer == IECM_RX_PTYPE_PAYLOAD_LAYER_PAY2
> &&
> > +	    decoded->inner_prot)
> > +		return PKT_HASH_TYPE_L4;
> > +	if (decoded->payload_layer == IECM_RX_PTYPE_PAYLOAD_LAYER_PAY2
> &&
> > +	    decoded->outer_ip)
> > +		return PKT_HASH_TYPE_L3;
> > +	if (decoded->outer_ip == IECM_RX_PTYPE_OUTER_L2)
> > +		return PKT_HASH_TYPE_L2;
> > +
> > +	return PKT_HASH_TYPE_NONE;
> > +}
> > +
> > +/**
> > + * iecm_rx_hash - set the hash value in the skb
> > + * @rxq: Rx descriptor ring packet is being transacted on
> > + * @skb: pointer to current skb being populated
> > + * @rx_desc: Receive descriptor
> > + * @decoded: Decoded Rx packet type related fields
> > + */
> > +static void
> > +iecm_rx_hash(struct iecm_queue *rxq, struct sk_buff *skb,
> > +	     struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc,
> > +	     struct iecm_rx_ptype_decoded *decoded)
> > +{
> > +	u32 hash;
> > +
> > +	if (!iecm_is_feature_ena(rxq->vport, NETIF_F_RXHASH))
> > +		return;
> > +
> > +	hash = le16_to_cpu(rx_desc->hash1) |
> > +	       (rx_desc->ff2_mirrid_hash2.hash2 << 16) |
> > +	       (rx_desc->hash3 << 24);
> > +
> > +	skb_set_hash(skb, hash, iecm_ptype_to_htype(decoded));
> > +}
> > +
> > +/**
> > + * iecm_rx_csum - Indicate in skb if checksum is good
> > + * @rxq: Rx descriptor ring packet is being transacted on
> > + * @skb: pointer to current skb being populated
> > + * @csum_bits: checksum fields extracted from the descriptor
> > + * @decoded: Decoded Rx packet type related fields
> > + *
> > + * skb->protocol must be set before this function is called
> > + */
> > +static void iecm_rx_csum(struct iecm_queue *rxq, struct sk_buff *skb,
> > +			 struct iecm_rx_csum_decoded *csum_bits,
> > +			 struct iecm_rx_ptype_decoded *decoded)
> > +{
> > +	bool ipv4, ipv6;
> > +
> > +	/* Start with CHECKSUM_NONE and by default csum_level = 0 */
> > +	skb->ip_summed = CHECKSUM_NONE;
> > +
> > +	/* check if Rx checksum is enabled */
> > +	if (!iecm_is_feature_ena(rxq->vport, NETIF_F_RXCSUM))
> > +		return;
> > +
> > +	/* check if HW has decoded the packet and checksum */
> > +	if (!(csum_bits->l3l4p))
> > +		return;
> > +
> > +	ipv4 = (decoded->outer_ip == IECM_RX_PTYPE_OUTER_IP) &&
> > +	       (decoded->outer_ip_ver == IECM_RX_PTYPE_OUTER_IPV4);
> > +	ipv6 = (decoded->outer_ip == IECM_RX_PTYPE_OUTER_IP) &&
> > +	       (decoded->outer_ip_ver == IECM_RX_PTYPE_OUTER_IPV6);
> > +
> > +	if (ipv4 && (csum_bits->ipe || csum_bits->eipe))
> > +		goto checksum_fail;
> > +
> > +	if (ipv6 && csum_bits->ipv6exadd)
> > +		return;
> > +
> > +	/* HW checksum will be invalid if vlan stripping is not enabled and
> > +	 * packet has an outer vlan tag. raw_csum_inv will also not be set
> > +	 * even though it's invalid.
> > +	 */
> > +	if (skb_vlan_tag_present(skb))
> > +		return;
> > +
> > +	/* check for L4 errors and handle packets that were not able to be
> > +	 * checksummed
> > +	 */
> > +	if (csum_bits->l4e)
> > +		goto checksum_fail;
> > +
> > +	/* Only report checksum unnecessary for ICMP, TCP, UDP, or SCTP */
> > +	switch (decoded->inner_prot) {
> > +	case IECM_RX_PTYPE_INNER_PROT_ICMP:
> > +	case IECM_RX_PTYPE_INNER_PROT_TCP:
> > +	case IECM_RX_PTYPE_INNER_PROT_UDP:
> > +	case IECM_RX_PTYPE_INNER_PROT_SCTP:
> > +		skb->ip_summed = CHECKSUM_UNNECESSARY;
> > +	default:
> > +		break;
> > +	}
> > +	return;
> > +
> > +checksum_fail:
> > +	rxq->vport->port_stats.rx_hw_csum_err++;
> > +}
> > +
> > +/**
> > + * iecm_rx_splitq_extract_csum_bits - Extract checksum bits from descriptor
> > + * @rx_desc: receive descriptor
> > + * @csum: structure to extract checksum fields
> > + *
> > + **/
> > +static void
> > +iecm_rx_splitq_extract_csum_bits(struct virtchnl2_rx_flex_desc_adv_nic_3
> *rx_desc,
> > +				 struct iecm_rx_csum_decoded *csum)
> > +{
> > +	u8 qword0, qword1;
> > +
> > +	qword0 = rx_desc->status_err0_qw0;
> > +	qword1 = rx_desc->status_err0_qw1;
> > +
> > +	csum->ipe = !!(qword1 &
> > +
> BIT(VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_XSUM_IPE_S));
> > +	csum->eipe = !!(qword1 &
> > +
> 	BIT(VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_XSUM_EIPE_S));
> > +	csum->l4e = !!(qword1 &
> > +
> BIT(VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_XSUM_L4E_S));
> > +	csum->l3l4p = !!(qword1 &
> > +
> BIT(VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_L3L4P_S));
> > +	csum->ipv6exadd =
> > +			!!(qword0 &
> > +
> BIT(VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_IPV6EXADD_S));
> > +	csum->rsc = !!(le16_to_cpu(rx_desc->hdrlen_flags) &
> > +		       VIRTCHNL2_RX_FLEX_DESC_ADV_RSC_M);
> > +	csum->raw_csum_inv = !!(le16_to_cpu(rx_desc->ptype_err_fflags0) &
> > +				BIT(VIRTCHNL2_RX_FLEX_DESC_ADV_FF0_S));
> > +	csum->raw_csum = le16_to_cpu(rx_desc->misc.raw_cs);
> > +	csum->pprs = 0;
> > +}
> > +
> > +/**
> > + * iecm_rx_rsc - Set the RSC fields in the skb
> > + * @rxq : Rx descriptor ring packet is being transacted on
> > + * @skb : pointer to current skb being populated
> > + * @rx_desc: Receive descriptor
> > + * @decoded: Decoded Rx packet type related fields
> > + *
> > + * Return 0 on success and error code on failure
> > + *
> > + * Populate the skb fields with the total number of RSC segments, RSC
> payload
> > + * length and packet type.
> > + */
> > +static int iecm_rx_rsc(struct iecm_queue *rxq, struct sk_buff *skb,
> > +		       struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc,
> > +		       struct iecm_rx_ptype_decoded *decoded)
> > +{
> > +	u16 rsc_segments, rsc_payload_len;
> > +	struct tcphdr *tcph;
> > +	bool ipv4, ipv6;
> > +
> > +	if (!decoded->outer_ip)
> > +		return -EINVAL;
> > +
> > +	rsc_payload_len = le16_to_cpu(rx_desc->misc.rscseglen);
> > +	if (!rsc_payload_len)
> > +		return -EINVAL;
> > +
> > +	ipv4 = (decoded->outer_ip == IECM_RX_PTYPE_OUTER_IP) &&
> > +		(decoded->outer_ip_ver == IECM_RX_PTYPE_OUTER_IPV4);
> > +	ipv6 = (decoded->outer_ip == IECM_RX_PTYPE_OUTER_IP) &&
> > +		(decoded->outer_ip_ver == IECM_RX_PTYPE_OUTER_IPV6);
> > +
> > +	if (!(ipv4 ^ ipv6))
> > +		return -EINVAL;
> > +
> > +	rsc_segments = DIV_ROUND_UP(skb->data_len, rsc_payload_len);
> > +
> > +	NAPI_GRO_CB(skb)->count = rsc_segments;
> > +	skb_shinfo(skb)->gso_size = rsc_payload_len;
> > +
> > +	skb_reset_network_header(skb);
> > +
> > +	if (ipv4) {
> > +		struct iphdr *ipv4h = ip_hdr(skb);
> > +
> > +		skb_shinfo(skb)->gso_type = SKB_GSO_TCPV4;
> > +
> > +		/* Reset and set transport header offset in skb */
> > +		skb_set_transport_header(skb, sizeof(struct iphdr));
> > +		tcph = tcp_hdr(skb);
> > +
> > +		/* Compute the TCP pseudo header checksum*/
> > +		tcph->check =
> > +			~tcp_v4_check(skb->len - skb_transport_offset(skb),
> > +				      ipv4h->saddr, ipv4h->daddr, 0);
> > +	} else {
> > +		struct ipv6hdr *ipv6h = ipv6_hdr(skb);
> > +
> > +		skb_shinfo(skb)->gso_type = SKB_GSO_TCPV6;
> > +		skb_set_transport_header(skb, sizeof(struct ipv6hdr));
> > +		tcph = tcp_hdr(skb);
> > +		tcph->check =
> > +			~tcp_v6_check(skb->len - skb_transport_offset(skb),
> > +				      &ipv6h->saddr, &ipv6h->daddr, 0);
> > +	}
> > +
> > +	tcp_gro_complete(skb);
> > +
> > +	u64_stats_update_begin(&rxq->stats_sync);
> > +	rxq->q_stats.rx.rsc_pkts++;
> > +	u64_stats_update_end(&rxq->stats_sync);
> > +
> > +	return 0;
> > +}
> > +
> > +/**
> > + * iecm_rx_process_skb_fields - Populate skb header fields from Rx descriptor
> > + * @rxq: Rx descriptor ring packet is being transacted on
> > + * @skb: pointer to current skb being populated
> > + * @rx_desc: Receive descriptor
> > + *
> > + * This function checks the ring, descriptor, and packet information in
> > + * order to populate the hash, checksum, VLAN, protocol, and
> > + * other fields within the skb.
> > + */
> > +int
> > +iecm_rx_process_skb_fields(struct iecm_queue *rxq, struct sk_buff *skb,
> > +			   struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc)
> > +{
> > +	struct iecm_rx_ptype_decoded decoded;
> > +	struct iecm_rx_csum_decoded csum_bits;
> 
> Please follow RCT.
> 

Sure will fix.

> > +	u16 rx_ptype;
> > +	int err = 0;
> > +
> > +	rx_ptype = le16_to_cpu(rx_desc->ptype_err_fflags0) &
> > +				VIRTCHNL2_RX_FLEX_DESC_ADV_PTYPE_M;
> > +
> > +	decoded = rxq->vport->rx_ptype_lkup[rx_ptype];
> > +	if (!decoded.known)
> > +		return -EINVAL;
> > +
> > +	/* modifies the skb - consumes the enet header */
> > +	skb->protocol = eth_type_trans(skb, rxq->vport->netdev);
> 
> eth_type_trans() should generally be called *right* before
> napi_gro_receive() to still have caches warm.
> 

I'm pretty sure this happening here because we need to consume header before messing with checksum stuff but I'll have to dig deeper.  Will check.

> > +	iecm_rx_splitq_extract_csum_bits(rx_desc, &csum_bits);
> > +	iecm_rx_csum(rxq, skb, &csum_bits, &decoded);
> > +	/* process RSS/hash */
> > +	iecm_rx_hash(rxq, skb, rx_desc, &decoded);
> > +
> > +	if (csum_bits.rsc)
> > +		err = iecm_rx_rsc(rxq, skb, rx_desc, &decoded);
> > +
> > +	return err;
> > +}
> > +
> > +/**
> > + * iecm_rx_skb - Send a completed packet up the stack
> > + * @rxq: Rx ring in play
> > + * @skb: packet to send up
> > + * @vlan_tag: packet vlan tag
> > + *
> > + * This function sends the completed packet (via. skb) up the stack using
> > + * gro receive functions
> > + */
> > +void iecm_rx_skb(struct iecm_queue *rxq, struct sk_buff *skb, u16 vlan_tag)
> > +{
> > +	/* Adding HW VLAN tag to skb must occur after processing csum */
> > +	if (vlan_tag & VLAN_VID_MASK)
> > +		__vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q), vlan_tag);
> 
> Why can't this be placed into process_skb_fields()? This function
> becomes redundant then, and you could call napi_gro_receive()
> directly instead.
> 

Seems reasonable, will try.

> > +
> > +	napi_gro_receive(&rxq->q_vector->napi, skb);
> > +}
> > +
> > +/**
> > + * iecm_rx_page_is_reserved - check if reuse is possible
> > + * @page: page struct to check
> > + */
> > +static bool iecm_rx_page_is_reserved(struct page *page)
> > +{
> > +	return (page_to_nid(page) != numa_mem_id()) ||
> page_is_pfmemalloc(page);
> > +}
> 
> Please check generic dev_page_is_reusable(), it's almost the same
> (a bit more optimized).
> 

Will check and see if it does what we need.

> > +
> > +/**
> > + * iecm_rx_buf_adjust_pg - Prepare rx buffer for reuse
> > + * @rx_buf: Rx buffer to adjust
> > + * @size: Size of adjustment
> > + *
> > + * Update the offset within page so that rx buf will be ready to be reused.
> > + * For systems with PAGE_SIZE < 8192 this function will flip the page offset
> > + * so the second half of page assigned to rx buffer will be used, otherwise
> > + * the offset is moved by the @size bytes
> > + */
> > +void
> > +iecm_rx_buf_adjust_pg(struct iecm_rx_buf *rx_buf, unsigned int size)
> > +{
> > +	struct iecm_page_info *page_info = &rx_buf->page_info[rx_buf-
> >page_indx];
> > +
> > +#if (PAGE_SIZE < 8192)
> > +	if (rx_buf->buf_size > IECM_RX_BUF_2048)
> > +		/* flip to second page */
> > +		rx_buf->page_indx = !rx_buf->page_indx;
> > +	else
> > +		/* flip page offset to other buffer */
> > +		page_info->page_offset ^= size;
> > +#else
> > +	/* move offset up to the next cache line */
> > +	page_info->page_offset += size;
> > +#endif
> 
> Again, no need for ifdeffery, PAGE_SIZE check can be placed into
> an if statement.
> 

Sure will fix.

> > +}
> > +
> > +/**
> > + * iecm_rx_can_reuse_page - Determine if page can be reused for another rx
> > + * @rx_buf: buffer containing the page
> > + *
> > + * If page is reusable, we have a green light for calling iecm_reuse_rx_page,
> > + * which will assign the current buffer to the buffer that next_to_alloc is
> > + * pointing to; otherwise, the dma mapping needs to be destroyed and
> > + * page freed
> > + */
> > +bool iecm_rx_can_reuse_page(struct iecm_rx_buf *rx_buf)
> > +{
> > +	struct iecm_page_info *page_info = &rx_buf->page_info[rx_buf-
> >page_indx];
> > +
> > +#if (PAGE_SIZE >= 8192)
> > +	unsigned int last_offset = PAGE_SIZE - rx_buf->buf_size;
> > +#endif /* PAGE_SIZE < 8192) */
> > +	unsigned int pagecnt_bias = page_info->pagecnt_bias;
> > +	struct page *page = page_info->page;
> > +
> > +	/* avoid re-using remote pages */
> > +	if (unlikely(iecm_rx_page_is_reserved(page)))
> > +		return false;
> > +
> > +#if (PAGE_SIZE < 8192)
> > +	/* if we are only owner of page we can reuse it */
> > +	if (unlikely((page_count(page) - pagecnt_bias) > 1))
> > +		return false;
> > +#else
> > +	if (rx_buf->page_offset > last_offset)
> > +		return false;
> > +#endif /* PAGE_SIZE < 8192) */
> 
> Same here 2 times.
> 
> > +
> > +	/* If we have drained the page fragment pool we need to update
> > +	 * the pagecnt_bias and page count so that we fully restock the
> > +	 * number of references the driver holds.
> > +	 */
> > +	if (unlikely(pagecnt_bias == 1)) {
> 
> With 1532 byte frames, this condition will be hit 50% of times. It's
> definitely not a good place for unlkely().
> 

I'm afraid I'm not following here, mind elaborating? Keep in mind the buffer is 4k not 2k on MEV.

> > +		page_ref_add(page, USHRT_MAX - 1);
> > +		page_info->pagecnt_bias = USHRT_MAX;
> > +	}
> > +
> > +	return true;
> > +}
> > +
> > +/**
> > + * iecm_rx_add_frag - Add contents of Rx buffer to sk_buff as a frag
> > + * @rx_buf: buffer containing page to add
> > + * @skb: sk_buff to place the data into
> > + * @size: packet length from rx_desc
> > + *
> > + * This function will add the data contained in rx_buf->page to the skb.
> > + * It will just attach the page as a frag to the skb.
> > + * The function will then update the page offset.
> > + */
> > +void iecm_rx_add_frag(struct iecm_rx_buf *rx_buf, struct sk_buff *skb,
> > +		      unsigned int size)
> > +{
> > +	struct iecm_page_info *page_info = &rx_buf->page_info[rx_buf-
> >page_indx];
> > +
> > +#if (PAGE_SIZE >= 8192)
> > +	unsigned int truesize = SKB_DATA_ALIGN(size);
> > +#else
> > +	unsigned int truesize = rx_buf->buf_size;
> > +#endif
> 
> Same.
> 
> > +
> > +	skb_add_rx_frag(skb, skb_shinfo(skb)->nr_frags, page_info->page,
> > +			page_info->page_offset, size, truesize);
> > +
> > +	iecm_rx_buf_adjust_pg(rx_buf, truesize);
> > +}
> > +
> > +/**
> > + * iecm_rx_get_buf_page - Fetch Rx buffer page and synchronize data for use
> > + * @dev: device struct
> > + * @rx_buf: Rx buf to fetch page for
> > + * @size: size of buffer to add to skb
> > + *
> > + * This function will pull an Rx buffer page from the ring and synchronize it
> > + * for use by the CPU.
> > + */
> > +static void
> > +iecm_rx_get_buf_page(struct device *dev, struct iecm_rx_buf *rx_buf,
> > +		     const unsigned int size)
> > +{
> > +	struct iecm_page_info *page_info = &rx_buf->page_info[rx_buf-
> >page_indx];
> > +
> > +	prefetch(page_info->page);
> > +
> > +	/* we are reusing so sync this buffer for CPU use */
> > +	dma_sync_single_range_for_cpu(dev, page_info->dma,
> > +				      page_info->page_offset, size,
> > +				      DMA_FROM_DEVICE);
> > +
> > +	/* We have pulled a buffer for use, so decrement pagecnt_bias */
> > +	page_info->pagecnt_bias--;
> > +}
> > +
> > +/**
> > + * iecm_rx_construct_skb - Allocate skb and populate it
> > + * @rxq: Rx descriptor queue
> > + * @rx_buf: Rx buffer to pull data from
> > + * @size: the length of the packet
> > + *
> > + * This function allocates an skb. It then populates it with the page
> > + * data from the current receive descriptor, taking care to set up the
> > + * skb correctly.
> > + */
> > +struct sk_buff *
> > +iecm_rx_construct_skb(struct iecm_queue *rxq, struct iecm_rx_buf *rx_buf,
> > +		      unsigned int size)
> > +{
> > +	struct iecm_page_info *page_info = &rx_buf->page_info[rx_buf-
> >page_indx];
> > +
> > +	void *va = page_address(page_info->page) + page_info->page_offset;
> > +	unsigned int headlen;
> > +	struct sk_buff *skb;
> > +
> > +	/* prefetch first cache line of first page */
> > +	prefetch(va);
> > +#if L1_CACHE_BYTES < 128
> > +	prefetch((u8 *)va + L1_CACHE_BYTES);
> > +#endif /* L1_CACHE_BYTES */
> 
> Here's open-coded net_prefetch().
> 

Will fix.

> > +	/* allocate a skb to store the frags */
> > +	skb = __napi_alloc_skb(&rxq->q_vector->napi, IECM_RX_HDR_SIZE,
> > +			       GFP_ATOMIC | __GFP_NOWARN);
> > +	if (unlikely(!skb))
> > +		return NULL;
> > +
> > +	skb_record_rx_queue(skb, rxq->idx);
> > +
> > +	/* Determine available headroom for copy */
> > +	headlen = size;
> > +	if (headlen > IECM_RX_HDR_SIZE)
> > +		headlen = eth_get_headlen(skb->dev, va, IECM_RX_HDR_SIZE);
> > +
> > +	/* align pull length to size of long to optimize memcpy performance */
> > +	memcpy(__skb_put(skb, headlen), va, ALIGN(headlen, sizeof(long)));
> > +
> > +	/* if we exhaust the linear part then add what is left as a frag */
> > +	size -= headlen;
> > +	if (size) {
> > +#if (PAGE_SIZE >= 8192)
> > +		unsigned int truesize = SKB_DATA_ALIGN(size);
> > +#else
> > +		unsigned int truesize = rx_buf->buf_size;
> > +#endif
> 
> Again.
> 
> > +		skb_add_rx_frag(skb, 0, page_info->page,
> > +				page_info->page_offset + headlen, size,
> > +				truesize);
> > +		/* buffer is used by skb, update page_offset */
> > +		iecm_rx_buf_adjust_pg(rx_buf, truesize);
> > +
> > +	} else {
> > +		/* buffer is unused, reset bias back to rx_buf; data was copied
> > +		 * onto skb's linear part so there's no need for adjusting
> > +		 * page offset and we can reuse this buffer as-is
> > +		 */
> > +		page_info->pagecnt_bias++;
> > +	}
> > +
> > +	return skb;
> > +}
> > +
> > +/**
> > + * iecm_rx_hdr_construct_skb - Allocate skb and populate it from header
> buffer
> > + * @rxq: Rx descriptor queue
> > + * @hdr_buf: Rx buffer to pull data from
> > + * @size: the length of the packet
> > + *
> > + * This function allocates an skb. It then populates it with the page data from
> > + * the current receive descriptor, taking care to set up the skb correctly.
> > + * This specifcally uses a header buffer to start building the skb.
> > + */
> > +static struct sk_buff *
> > +iecm_rx_hdr_construct_skb(struct iecm_queue *rxq, struct iecm_dma_mem
> *hdr_buf,
> > +			  unsigned int size)
> > +{
> > +	struct sk_buff *skb;
> > +
> > +	/* allocate a skb to store the frags */
> > +	skb = __napi_alloc_skb(&rxq->q_vector->napi, IECM_RX_HDR_SIZE,
> > +			       GFP_ATOMIC | __GFP_NOWARN);
> > +	if (unlikely(!skb))
> > +		return NULL;
> > +
> > +	skb_record_rx_queue(skb, rxq->idx);
> > +
> > +	memcpy(__skb_put(skb, size), hdr_buf->va, size);
> > +
> > +	return skb;
> > +}
> > +
> > +/**
> > + * iecm_rx_splitq_test_staterr - tests bits in Rx descriptor
> > + * status and error fields
> > + * @stat_err_field: field from descriptor to test bits in
> > + * @stat_err_bits: value to mask
> > + *
> > + */
> > +bool
> > +iecm_rx_splitq_test_staterr(u8 stat_err_field, const u8 stat_err_bits)
> > +{
> > +	return !!(stat_err_field & stat_err_bits);
> > +}
> > +
> > +/**
> > + * iecm_rx_splitq_extract_vlan_tag - Extract vlan tag from the descriptor
> > + * @desc: Rx flex descriptor
> > + * @rxq: rxq to check the vlan flags
> > + * @vlan_tag: vlan tag to fill in
> > + *
> > + * Return true if error bit is set in the descriptor, else return false and
> > + * store the vlan_tag in the variable passed in the function parameters
> > + */
> > +bool iecm_rx_splitq_extract_vlan_tag(struct
> virtchnl2_rx_flex_desc_adv_nic_3 *desc,
> > +				     struct iecm_queue *rxq, u16 *vlan_tag)
> > +{
> > +	u8 stat_err0_qw0, stat_err_bits, stat_err1;
> > +
> > +	stat_err_bits = BIT(VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_RXE_S);
> > +	stat_err0_qw0 = desc->status_err0_qw0;
> > +	if (unlikely(iecm_rx_splitq_test_staterr(stat_err0_qw0, stat_err_bits)))
> > +		return true;
> > +
> > +	stat_err1 = desc->status_err1;
> > +
> > +	if (stat_err0_qw0 &
> BIT(VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_L2TAG1P_S) &&
> > +	    test_bit(__IECM_Q_VLAN_TAG_LOC_L2TAG1, rxq->flags))
> > +		*vlan_tag = le16_to_cpu(desc->l2tag1);
> > +	if (stat_err1 &
> BIT(VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS1_L2TAG2P_S) &&
> > +	    test_bit(__IECM_Q_VLAN_TAG_LOC_L2TAG2, rxq->flags))
> > +		*vlan_tag = le16_to_cpu(desc->l2tag2);
> > +
> > +	return false;
> > +}
> > +
> > +/**
> > + * iecm_rx_splitq_is_non_eop - process handling of non-EOP buffers
> > + * @rx_desc: Rx descriptor for current buffer
> > + *
> > + * If the buffer is an EOP buffer, this function exits returning false,
> > + * otherwise return true indicating that this is in fact a non-EOP buffer.
> > + */
> > +static bool
> > +iecm_rx_splitq_is_non_eop(struct virtchnl2_rx_flex_desc_adv_nic_3
> *rx_desc)
> > +{
> > +	/* if we are the last buffer then there is nothing else to do */
> > +#define IECM_RXD_EOF
> BIT(VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_EOF_S)
> 
> This is a wrong place to define anything, it can be easily
> overlooked.
> 

Sure will fix.

> > +	if (likely(iecm_rx_splitq_test_staterr(rx_desc->status_err0_qw1,
> > +					       IECM_RXD_EOF)))
> > +		return false;
> > +
> > +	return true;
> 
> This can be converted to an one-liner
> 
> 	return likely(...);
> 

Will fix.

> > +}
> > +
> > +/**
> > + * iecm_rx_splitq_recycle_buf - Attempt to recycle or realloc buffer
> > + * @rxbufq: receive queue
> > + * @rx_buf: Rx buffer to pull data from
> > + *
> > + * This function will clean up the contents of the rx_buf. It will either
> > + * recycle the buffer or unmap it and free the associated resources. The
> buffer
> > + * will then be placed on a refillq where it will later be reclaimed by the
> > + * corresponding bufq.
> > + *
> > + * This works based on page flipping. If we assume e.g., a 4k page, it will be
> > + * divided into two 2k buffers. We post the first half to hardware and, after
> > + * using it, flip to second half of the page with iecm_adjust_pg_offset and
> > + * post that to hardware. The third time through we'll flip back to first half
> > + * of page and check if stack is still using it, if not we can reuse the buffer
> > + * as is, otherwise we'll drain it and get a new page.
> > + */
> > +static void iecm_rx_splitq_recycle_buf(struct iecm_queue *rxbufq,
> > +				       struct iecm_rx_buf *rx_buf)
> > +{
> > +	struct iecm_page_info *page_info = &rx_buf->page_info[rx_buf-
> >page_indx];
> > +
> > +	if (!iecm_rx_can_reuse_page(rx_buf)) {
> > +		/* we are not reusing the buffer so unmap it */
> > +		dma_unmap_page_attrs(rxbufq->dev, page_info->dma,
> PAGE_SIZE,
> > +				     DMA_FROM_DEVICE,
> IECM_RX_DMA_ATTR);
> > +		__page_frag_cache_drain(page_info->page,
> > +					page_info->pagecnt_bias);
> > +
> > +		/* clear contents of buffer_info */
> > +		page_info->page = NULL;
> > +		rx_buf->skb = NULL;
> > +
> > +		/* It's possible the alloc can fail here but there's not much
> > +		 * we can do, bufq will have to try and realloc to fill the
> > +		 * hole.
> > +		 */
> > +		iecm_alloc_page(rxbufq, page_info);
> > +	}
> > +
> > +	/* We sync the memory back to hardware now to do as much work in
> this
> > +	 * context as feasible.  Hardware won't actually know about the buffer
> > +	 * until it's reclaimed off the refillq and put back into the bufq.
> > +	 */
> > +	if (likely(page_info->page)) {
> > +		dma_sync_single_range_for_device(rxbufq->dev, page_info-
> >dma,
> > +						 page_info->page_offset,
> > +						 rxbufq->rx_buf_size,
> > +						 DMA_FROM_DEVICE);
> > +	}
> 
> One-liner, braces are redundant.
> 

Will not fix.

> > +}
> 
> Here you set page_info->page to NULL in the first condition branch
> and check for it in the second.
> So it's equivalent to
> 
> 	if (iecm_rx_can_reuse_page(rx_buf)) {
> 		dma_sync_single_range();
> 		return;
> 	}
> 
> 	/* we are not reusing the buffer ... */
> 	...
> 
> but saves 1 indent level and generally more readable.
> 

Will fix.

> > +
> > +/**
> > + * iecm_rx_bump_ntc - Bump and wrap q->next_to_clean value
> > + * @q: queue to bump
> > + */
> > +void iecm_rx_bump_ntc(struct iecm_queue *q)
> > +{
> > +	u16 ntc = q->next_to_clean + 1;
> 
> There should be an empty line (between variable declarations and
> function body). checkpatch should've mentioned this.
> 
> > +	/* fetch, update, and store next to clean */
> > +	if (ntc < q->desc_count) {
> > +		q->next_to_clean = ntc;
> > +	} else {
> > +		q->next_to_clean = 0;
> > +		change_bit(__IECM_Q_GEN_CHK, q->flags);
> > +	}
> > +}
> > +
> > +/**
> > + * iecm_rx_splitq_clean - Clean completed descriptors from Rx queue
> > + * @rxq: Rx descriptor queue to retrieve receive buffer queue
> > + * @budget: Total limit on number of packets to process
> > + *
> > + * This function provides a "bounce buffer" approach to Rx interrupt
> > + * processing. The advantage to this is that on systems that have
> > + * expensive overhead for IOMMU access this provides a means of avoiding
> > + * it by maintaining the mapping of the page to the system.
> > + *
> > + * Returns amount of work completed
> > + */
> > +static int iecm_rx_splitq_clean(struct iecm_queue *rxq, int budget)
> > +{
> > +	int total_rx_bytes = 0, total_rx_pkts = 0;
> > +	struct iecm_queue *rx_bufq = NULL;
> > +	struct sk_buff *skb = rxq->skb;
> > +	bool failure = false;
> > +
> > +	/* Process Rx packets bounded by budget */
> > +	while (likely(total_rx_pkts < budget)) {
> > +		struct virtchnl2_rx_flex_desc_adv_nic_3 *splitq_flex_rx_desc;
> > +		struct iecm_sw_queue *refillq = NULL;
> > +		struct iecm_dma_mem *hdr_buf = NULL;
> > +		struct iecm_rxq_set *rxq_set = NULL;
> > +		struct iecm_rx_buf *rx_buf = NULL;
> > +		u16 gen_id, buf_id, vlan_tag = 0;
> > +		union virtchnl2_rx_desc *rx_desc;
> > +		unsigned int pkt_len = 0;
> > +		unsigned int hdr_len = 0;
> > +		 /* Header buffer overflow only valid for header split */
> > +		bool hbo = false;
> > +		int bufq_id;
> > +
> > +		/* get the Rx desc from Rx queue based on 'next_to_clean' */
> > +		rx_desc = IECM_RX_DESC(rxq, rxq->next_to_clean);
> > +		splitq_flex_rx_desc = (struct virtchnl2_rx_flex_desc_adv_nic_3
> *)rx_desc;
> > +
> > +		/* This memory barrier is needed to keep us from reading
> > +		 * any other fields out of the rx_desc
> > +		 */
> > +		dma_rmb();
> > +
> > +		/* if the descriptor isn't done, no work yet to do */
> > +		gen_id = le16_to_cpu(splitq_flex_rx_desc-
> >pktlen_gen_bufq_id);
> > +		gen_id = (gen_id & VIRTCHNL2_RX_FLEX_DESC_ADV_GEN_M)
> >>
> > +
> 	VIRTCHNL2_RX_FLEX_DESC_ADV_GEN_S;
> > +		if (test_bit(__IECM_Q_GEN_CHK, rxq->flags) != gen_id)
> > +			break;
> > +
> > +		if ((splitq_flex_rx_desc->rxdid_ucast &
> > +		    VIRTCHNL2_RX_FLEX_DESC_ADV_RXDID_M) !=
> VIRTCHNL2_RXDID_1_FLEX_SPLITQ) {
> > +			iecm_rx_bump_ntc(rxq);
> > +			rxq->vport->port_stats.rx_bad_descs++;
> > +			continue;
> > +		}
> > +
> > +		pkt_len = le16_to_cpu(splitq_flex_rx_desc-
> >pktlen_gen_bufq_id) &
> > +			  VIRTCHNL2_RX_FLEX_DESC_ADV_LEN_PBUF_M;
> > +
> > +		hbo = splitq_flex_rx_desc->status_err0_qw1 &
> > +		      BIT(VIRTCHNL2_RX_FLEX_DESC_ADV_STATUS0_HBO_S);
> > +
> > +		if (unlikely(hbo)) {
> > +			rxq->vport->port_stats.rx_hsplit_hbo++;
> > +			goto bypass_hsplit;
> > +		}
> > +
> > +		hdr_len =
> > +			le16_to_cpu(splitq_flex_rx_desc->hdrlen_flags) &
> > +			VIRTCHNL2_RX_FLEX_DESC_ADV_LEN_HDR_M;
> > +
> > +bypass_hsplit:
> > +		bufq_id = le16_to_cpu(splitq_flex_rx_desc-
> >pktlen_gen_bufq_id);
> > +		bufq_id = (bufq_id &
> VIRTCHNL2_RX_FLEX_DESC_ADV_BUFQ_ID_M) >>
> > +			  VIRTCHNL2_RX_FLEX_DESC_ADV_BUFQ_ID_S;
> > +
> > +		rxq_set = container_of(rxq, struct iecm_rxq_set, rxq);
> > +		if (!bufq_id)
> > +			refillq = rxq_set->refillq0;
> > +		else
> > +			refillq = rxq_set->refillq1;
> > +
> > +		/* retrieve buffer from the rxq */
> > +		rx_bufq = &rxq->rxq_grp->splitq.bufq_sets[bufq_id].bufq;
> > +
> > +		buf_id = le16_to_cpu(splitq_flex_rx_desc->buf_id);
> > +
> > +		if (pkt_len) {
> > +			rx_buf = &rx_bufq->rx_buf.buf[buf_id];
> > +			iecm_rx_get_buf_page(rx_bufq->dev, rx_buf, pkt_len);
> > +		}
> > +
> > +		if (hdr_len) {
> > +			hdr_buf = rx_bufq->rx_buf.hdr_buf[buf_id];
> > +
> > +			dma_sync_single_for_cpu(rxq->dev, hdr_buf->pa,
> hdr_buf->size,
> > +						DMA_FROM_DEVICE);
> > +
> > +			skb = iecm_rx_hdr_construct_skb(rxq, hdr_buf,
> hdr_len);
> > +			rxq->vport->port_stats.rx_hsplit++;
> > +		}
> > +
> > +		if (pkt_len) {
> > +			if (skb)
> > +				iecm_rx_add_frag(rx_buf, skb, pkt_len);
> > +			else
> > +				skb = iecm_rx_construct_skb(rxq, rx_buf,
> > +							    pkt_len);
> > +		}
> > +
> > +		/* exit if we failed to retrieve a buffer */
> > +		if (!skb) {
> > +			/* If we fetched a buffer, but didn't use it
> > +			 * undo pagecnt_bias decrement
> > +			 */
> > +			if (rx_buf)
> > +				rx_buf->page_info[rx_buf-
> >page_indx].pagecnt_bias++;
> 
> Line of 85 cols here.
> 
> > +			break;
> > +		}
> > +
> > +		if (rx_buf)
> > +			iecm_rx_splitq_recycle_buf(rx_bufq, rx_buf);
> > +		iecm_rx_post_buf_refill(refillq, buf_id);
> > +
> > +		iecm_rx_bump_ntc(rxq);
> > +		/* skip if it is non EOP desc */
> > +		if (iecm_rx_splitq_is_non_eop(splitq_flex_rx_desc))
> > +			continue;
> > +
> > +		/* extract vlan tag from the descriptor */
> > +		if (unlikely(iecm_rx_splitq_extract_vlan_tag(splitq_flex_rx_desc,
> > +							     rxq, &vlan_tag))) {
> 
> 81 and 81 respectively.
> 
> > +			dev_kfree_skb_any(skb);
> > +			skb = NULL;
> > +			continue;
> > +		}
> > +
> > +		/* pad skb if needed (to make valid ethernet frame) */
> > +		if (eth_skb_pad(skb)) {
> > +			skb = NULL;
> > +			continue;
> > +		}
> > +
> > +		/* probably a little skewed due to removing CRC */
> > +		total_rx_bytes += skb->len;
> > +
> > +		/* protocol */
> > +		if (unlikely(iecm_rx_process_skb_fields(rxq, skb,
> > +							splitq_flex_rx_desc))) {
> 
> You can define variables with shorter names to avoid this.
> 

The only variable I see here with a questionably long name is splitq_flex_rx_desc but I don't see a way to shorten it without losing information. Note 'rx_desc' is also a variable that exists in this context and `splitq_base_rx_desc` could conceivably also exist so splitq_rx_desc doesn't work.

> > +			dev_kfree_skb_any(skb);
> > +			skb = NULL;
> > +			continue;
> > +		}
> > +
> > +		/* send completed skb up the stack */
> > +		iecm_rx_skb(rxq, skb, vlan_tag);
> > +		skb = NULL;
> > +
> > +		/* update budget accounting */
> > +		total_rx_pkts++;
> > +	}
> > +	rxq->skb = skb;
> > +	u64_stats_update_begin(&rxq->stats_sync);
> > +	rxq->q_stats.rx.packets += total_rx_pkts;
> > +	rxq->q_stats.rx.bytes += total_rx_bytes;
> > +	u64_stats_update_end(&rxq->stats_sync);
> > +
> > +	/* guarantee a trip back through this routine if there was a failure */
> > +	return unlikely(failure) ? budget : total_rx_pkts;
> > +}
> > +
> > +/**
> > + * iecm_rx_update_bufq_desc - Update buffer queue descriptor
> > + * @bufq: Pointer to the buffer queue
> > + * @desc: Refill queue descriptor
> > + * @buf_desc: Buffer queue descriptor
> > + *
> > + * Return 0 on success and negative on failure.
> > + */
> > +static int iecm_rx_update_bufq_desc(struct iecm_queue *bufq, u16 *desc,
> > +				    struct virtchnl2_splitq_rx_buf_desc
> *buf_desc)
> > +{
> > +	struct iecm_page_info *page_info;
> > +	struct iecm_rx_buf *buf;
> > +	u16 buf_id;
> > +
> > +	buf_id = ((*desc) & IECM_RX_BI_BUFID_M) >> IECM_RX_BI_BUFID_S;
> 
> FIELD_GET().
> 
> > +
> > +	buf = &bufq->rx_buf.buf[buf_id];
> > +	page_info = &buf->page_info[buf->page_indx];
> > +
> > +	/* It's possible page alloc failed during rxq clean, try to
> > +	 * recover here.
> > +	 */
> > +	if (unlikely(!page_info->page)) {
> > +		if (iecm_alloc_page(bufq, page_info))
> > +			return -ENOMEM;
> > +	}
> 
> if (1 && 2).
> 

Will fix

> > +	buf_desc->pkt_addr = cpu_to_le64(page_info->dma + page_info-
> >page_offset);
> > +	buf_desc->qword0.buf_id = cpu_to_le16(buf_id);
> > +
> > +	if (bufq->rx_hsplit_en) {
> > +		struct iecm_dma_mem *hdr_buf = bufq-
> >rx_buf.hdr_buf[buf_id];
> > +
> > +		buf_desc->hdr_addr = cpu_to_le64(hdr_buf->pa);
> > +		dma_sync_single_for_device(bufq->dev, hdr_buf->pa,
> > +					   hdr_buf->size, DMA_FROM_DEVICE);
> > +	}
> 
> 	if (!hsplit_en)
> 		return 0;
> 
> 	hdr_buf = ...
> 

Will fix

> > +
> > +	return 0;
> > +}
> > +
> > +/**
> > + * iecm_rx_clean_refillq - Clean refill queue buffers
> > + * @bufq: buffer queue to post buffers back to
> > + * @refillq: refill queue to clean
> > + *
> > + * This function takes care of the buffer refill management
> > + */
> > +static void iecm_rx_clean_refillq(struct iecm_queue *bufq,
> > +				  struct iecm_sw_queue *refillq)
> > +{
> > +	struct virtchnl2_splitq_rx_buf_desc *buf_desc;
> > +	u16 refillq_ntc = refillq->next_to_clean;
> > +	u16 bufq_nta = bufq->next_to_alloc;
> > +	u16 *refill_desc;
> > +	int cleaned = 0;
> > +	u16 gen;
> > +
> > +	refill_desc = IECM_SPLITQ_RX_BI_DESC(refillq, refillq_ntc);
> > +	buf_desc = IECM_SPLITQ_RX_BUF_DESC(bufq, bufq_nta);
> > +
> > +	/* make sure we stop at ring wrap in the unlikely case ring is full */
> > +	while (likely(cleaned < refillq->desc_count)) {
> > +		bool failure;
> > +
> > +		gen = ((*refill_desc) & IECM_RX_BI_GEN_M) >>
> IECM_RX_BI_GEN_S;
> 
> FIELD_GET().
> 
> > +		if (test_bit(__IECM_RFLQ_GEN_CHK, refillq->flags) != gen)
> > +			break;
> > +
> > +		failure = iecm_rx_update_bufq_desc(bufq, refill_desc,
> > +						   buf_desc);
> > +		if (failure)
> > +			break;
> > +
> > +		refillq_ntc++;
> > +		refill_desc++;
> > +		bufq_nta++;
> > +		buf_desc++;
> > +		cleaned++;
> > +
> > +		if (unlikely(refillq_ntc == refillq->desc_count)) {
> > +			change_bit(__IECM_RFLQ_GEN_CHK, refillq->flags);
> > +			refill_desc = IECM_SPLITQ_RX_BI_DESC(refillq, 0);
> > +			refillq_ntc = 0;
> > +		}
> > +		if (unlikely(bufq_nta == bufq->desc_count)) {
> > +			buf_desc = IECM_SPLITQ_RX_BUF_DESC(bufq, 0);
> > +			bufq_nta = 0;
> > +		}
> > +	}
> > +
> > +	if (cleaned) {
> > +		/* only update hardware tail in strides */
> > +		if (((bufq->next_to_use <= bufq_nta ? 0 : bufq->desc_count) +
> > +		    bufq_nta - bufq->next_to_use) >= bufq->rx_buf_stride)
> > +			iecm_rx_buf_hw_update(bufq, bufq_nta & ~(bufq-
> >rx_buf_stride - 1));
> 
> 92 chars.
> 
> > +
> > +		/* update next to alloc since we have filled the ring */
> > +		refillq->next_to_clean = refillq_ntc;
> > +		bufq->next_to_alloc = bufq_nta;
> > +	}
> > +}
> > +
> > +/**
> > + * iecm_rx_clean_refillq_all - Clean all refill queues
> > + * @bufq: bufq with refillqs to clean
> > + *
> > + * Iterates through all refill queues assigned to the buffer queue assigned to
> > + * this vector.  Returns true if clean is complete within budget, false
> > + * otherwise.
> > + */
> > +static void iecm_rx_clean_refillq_all(struct iecm_queue *bufq)
> > +{
> > +	struct iecm_bufq_set *bufq_set;
> > +	int i = 0;
> > +
> > +	bufq_set = container_of(bufq, struct iecm_bufq_set, bufq);
> > +	for (i = 0; i < bufq_set->num_refillqs; i++)
> > +		iecm_rx_clean_refillq(bufq, &bufq_set->refillqs[i]);
> > +}
> > +
> >  /**
> >   * iecm_vport_intr_clean_queues - MSIX mode Interrupt Handler
> >   * @irq: interrupt number
> > @@ -2742,6 +4122,64 @@ iecm_vport_intr_napi_ena_all(struct iecm_vport
> *vport)
> >  	}
> >  }
> >
> > +/**
> > + * iecm_tx_splitq_clean_all- Clean completetion queues
> > + * @q_vec: queue vector
> > + * @budget: Used to determine if we are in netpoll
> > + *
> > + * Returns false if clean is not complete else returns true
> > + */
> > +static bool
> > +iecm_tx_splitq_clean_all(struct iecm_q_vector *q_vec, int budget)
> > +{
> > +	bool clean_complete = true;
> > +	int i, budget_per_q;
> > +
> > +	budget_per_q = max(budget / q_vec->num_txq, 1);
> > +	for (i = 0; i < q_vec->num_txq; i++) {
> > +		if (!iecm_tx_clean_complq(q_vec->tx[i], budget_per_q))
> > +			clean_complete = false;
> > +	}
> > +	return clean_complete;
> > +}
> > +
> > +/**
> > + * iecm_rx_splitq_clean_all- Clean completetion queues
> > + * @q_vec: queue vector
> > + * @budget: Used to determine if we are in netpoll
> > + * @cleaned: returns number of packets cleaned
> > + *
> > + * Returns false if clean is not complete else returns true
> > + */
> > +static bool
> > +iecm_rx_splitq_clean_all(struct iecm_q_vector *q_vec, int budget,
> > +			 int *cleaned)
> > +{
> > +	bool clean_complete = true;
> > +	int pkts_cleaned = 0;
> > +	int i, budget_per_q;
> > +
> > +	budget_per_q = max(budget / q_vec->num_rxq, 1);
> > +	for (i = 0; i < q_vec->num_rxq; i++) {
> > +		struct iecm_queue *rxq = q_vec->rx[i];
> > +		int pkts_cleaned_per_q;
> > +
> > +		pkts_cleaned_per_q = iecm_rx_splitq_clean(rxq, budget_per_q);
> > +		/* if we clean as many as budgeted, we must not
> > +		 * be done
> > +		 */
> > +		if (pkts_cleaned_per_q >= budget_per_q)
> > +			clean_complete = false;
> > +		pkts_cleaned += pkts_cleaned_per_q;
> > +	}
> > +	*cleaned = pkts_cleaned;
> > +
> > +	for (i = 0; i < q_vec->num_bufq; i++)
> > +		iecm_rx_clean_refillq_all(q_vec->bufq[i]);
> > +
> > +	return clean_complete;
> > +}
> > +
> >  /**
> >   * iecm_vport_splitq_napi_poll - NAPI handler
> >   * @napi: struct from which you get q_vector
> > @@ -2749,8 +4187,34 @@ iecm_vport_intr_napi_ena_all(struct iecm_vport
> *vport)
> >   */
> >  static int iecm_vport_splitq_napi_poll(struct napi_struct *napi, int budget)
> >  {
> > -	/* stub */
> > -	return 0;
> > +	struct iecm_q_vector *q_vector =
> > +				container_of(napi, struct iecm_q_vector, napi);
> 
> You can assign it later (before clean_complete assignment) to avoid
> this.
> 

To avoid the word wrap? I'm not sure I see the difference between letting it wrap and assigning it on it's own line.

> > +	bool clean_complete;
> > +	int work_done = 0;
> > +
> > +	clean_complete = iecm_tx_splitq_clean_all(q_vector, budget);
> > +
> > +	/* Handle case where we are called by netpoll with a budget of 0 */
> > +	if (budget <= 0)
> > +		return budget;
> > +
> > +	/* We attempt to distribute budget to each Rx queue fairly, but don't
> > +	 * allow the budget to go below 1 because that would exit polling early.
> > +	 */
> > +	clean_complete |= iecm_rx_splitq_clean_all(q_vector, budget,
> > +						   &work_done);
> > +
> > +	/* If work not completed, return budget and polling will return */
> > +	if (!clean_complete)
> > +		return budget;
> > +
> > +	/* Exit the polling mode, but don't re-enable interrupts if stack might
> > +	 * poll us due to busy-polling
> > +	 */
> > +	if (likely(napi_complete_done(napi, work_done)))
> > +		iecm_vport_intr_update_itr_ena_irq(q_vector);
> > +
> > +	return min_t(int, work_done, budget - 1);
> >  }
> >
> >  /**
> > diff --git a/drivers/net/ethernet/intel/include/iecm.h
> b/drivers/net/ethernet/intel/include/iecm.h
> > index a655e797f457..3cf2a2f0cb0f 100644
> > --- a/drivers/net/ethernet/intel/include/iecm.h
> > +++ b/drivers/net/ethernet/intel/include/iecm.h
> > @@ -12,6 +12,10 @@
> >  #include <linux/etherdevice.h>
> >  #include <linux/ethtool.h>
> >  #include <net/tcp.h>
> > +#include <net/ip6_checksum.h>
> > +#include <net/ipv6.h>
> > +#include <net/sch_generic.h>
> > +#include <net/gro.h>
> >  #include <linux/version.h>
> >  #include <linux/dim.h>
> >
> > diff --git a/drivers/net/ethernet/intel/include/iecm_txrx.h
> b/drivers/net/ethernet/intel/include/iecm_txrx.h
> > index 7ec742fd4c6b..086b0efc989a 100644
> > --- a/drivers/net/ethernet/intel/include/iecm_txrx.h
> > +++ b/drivers/net/ethernet/intel/include/iecm_txrx.h
> > @@ -638,6 +638,7 @@ void iecm_vport_calc_total_qs(struct iecm_adapter
> *adapter,
> >  			      struct virtchnl2_create_vport *vport_msg);
> >  void iecm_vport_calc_num_q_groups(struct iecm_vport *vport);
> >  int iecm_vport_queues_alloc(struct iecm_vport *vport);
> > +void iecm_rx_post_buf_refill(struct iecm_sw_queue *refillq, u16 buf_id);
> >  void iecm_vport_queues_rel(struct iecm_vport *vport);
> >  void iecm_vport_calc_num_q_vec(struct iecm_vport *vport);
> >  void iecm_vport_intr_rel(struct iecm_vport *vport);
> > @@ -650,14 +651,33 @@ int iecm_vport_intr_init(struct iecm_vport *vport);
> >  irqreturn_t
> >  iecm_vport_intr_clean_queues(int __always_unused irq, void *data);
> >  void iecm_vport_intr_ena_irq_all(struct iecm_vport *vport);
> > +enum
> > +pkt_hash_types iecm_ptype_to_htype(struct iecm_rx_ptype_decoded
> *decoded);
> >  int iecm_config_rss(struct iecm_vport *vport);
> >  void iecm_fill_dflt_rss_lut(struct iecm_vport *vport);
> >  int iecm_init_rss(struct iecm_vport *vport);
> >  void iecm_deinit_rss(struct iecm_vport *vport);
> > +bool iecm_rx_can_reuse_page(struct iecm_rx_buf *rx_buf);
> > +void iecm_rx_buf_adjust_pg(struct iecm_rx_buf *rx_buf, unsigned int size);
> > +void iecm_rx_add_frag(struct iecm_rx_buf *rx_buf, struct sk_buff *skb,
> > +		      unsigned int size);
> > +struct sk_buff *iecm_rx_construct_skb(struct iecm_queue *rxq,
> > +				      struct iecm_rx_buf *rx_buf,
> > +				      unsigned int size);
> > +void iecm_rx_skb(struct iecm_queue *rxq, struct sk_buff *skb, u16 vlan_tag);
> >  bool iecm_init_rx_buf_hw_alloc(struct iecm_queue *rxq, struct iecm_rx_buf
> *buf);
> >  void iecm_rx_buf_hw_update(struct iecm_queue *rxq, u32 val);
> >  void iecm_tx_buf_hw_update(struct iecm_queue *tx_q, u32 val,
> >  			   bool xmit_more);
> > +void iecm_rx_splitq_put_bufs(struct iecm_queue *rx_bufq,
> > +			     struct iecm_rx_buf *hdr_buf,
> > +			     struct iecm_rx_buf *rx_buf);
> > +bool iecm_rx_splitq_test_staterr(u8 stat_err_field, const u8 stat_err_bits);
> > +int iecm_rx_process_skb_fields(struct iecm_queue *rxq, struct sk_buff *skb,
> > +			       struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc);
> > +bool iecm_rx_splitq_extract_vlan_tag(struct
> virtchnl2_rx_flex_desc_adv_nic_3 *desc,
> > +				     struct iecm_queue *rxq, u16 *vlan_tag);
> > +void iecm_rx_bump_ntc(struct iecm_queue *q);
> >  void iecm_tx_buf_rel(struct iecm_queue *tx_q, struct iecm_tx_buf *tx_buf);
> >  unsigned int iecm_size_to_txd_count(unsigned int size);
> >  unsigned int iecm_tx_desc_count_required(struct sk_buff *skb);
> > --
> > 2.33.0
> 
> Thanks,
> Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
