Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DBBFE4A7AE8
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Feb 2022 23:18:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8B6274161F;
	Wed,  2 Feb 2022 22:18:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KJNs8Q2Itzq3; Wed,  2 Feb 2022 22:18:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C1B3E40208;
	Wed,  2 Feb 2022 22:18:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C04281BF5DE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 22:18:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A8BCF83E81
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 22:18:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S0ij7CL308-A for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Feb 2022 22:18:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1A78A82628
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 22:18:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643840300; x=1675376300;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nGt/Cbtod0gb/i0qnPkqZQu68NBtqyz9nCzORytW70U=;
 b=Vzimm87om40F3Xp3Z2Sl+Mh8rQJ3/OqZombOQSlYeMtdzwEFpWRfTavy
 j34xSSnTUE0h3jrZmH7NUjOU/BS7XUymYuqtx80cLjfjLhW05sgipnRMb
 Izw7mI4Xcd6gm3qixQ9XxmteNxwmxLgYnVp+DvIExKhlaBsODd6MOjLTE
 33xPIUp2FrjRp4fcQTLxyX5CK5U7lLk6h1EdW2aD7TqgIRyeBayqA2gUb
 /mKv+/u9nZqfPSfI3AlMavHPPAKU58JQCE6GUuELT8ApSdRiRp7xzOjoE
 OEjE3zp6tF8NTEaVLcyvG7T2kfW9Tk4Tj5xOCNez5JOiTM5uinP6WDw3d A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10246"; a="308758260"
X-IronPort-AV: E=Sophos;i="5.88,337,1635231600"; d="scan'208";a="308758260"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 14:13:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,338,1635231600"; d="scan'208";a="480269728"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 02 Feb 2022 14:13:55 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 2 Feb 2022 14:13:55 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 2 Feb 2022 14:13:54 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 2 Feb 2022 14:13:54 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 2 Feb 2022 14:13:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iQ67F1EU3a9FXIq1WbScRHmdcNYHpA5g/7WNOwYnrEWtMVdgYS+ydbULylZy/9pL0jc4h25+c1kWmYVejxdmBzAqpoxxELWFF/X3YupzE42x9TiLdzqJwwV3BrpTYrYM7zMl6mc38/wrN5OQkZX/El9EG+rXax5rN18PtqKXBpMYmkYWOcYWSWUk+DC3MpwbzJa+2k2esXEfYazbwsxWcw0xErMh3RiS7DPlRNLqJ5LlHy2XzPdlniTJSz7PyI0ejDbnmtoogZFsMYX3JGKVoW82LgM5h9kMITI7pZgi9PMnsUqpNJShEScoZdnkdbDKf3knvipb68Kl4x3eVK0FFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TyKlUdTw/zj5zAaDJVOO0riXB6yKnZZK3Dzs3l4p76k=;
 b=ixWkELpVlndWLX2pdX/UFaNcvXKrDqzyGeMUV6CbzRyE4FaOAgNHIfEsyzn6cfp4xXjPLtoH6NJ6RDtoVDcvmpQW9kXYdHgiCVkBOH/iQnpYtCZf6gdtIGmcbB8Ki5NSrFstM5NXnHuNA6fSmJIcOeT/VW5rVcdiOrhciwJaM7kQxccatNvvSCTkD01YvtEIPUZBgZAurLHvJg/laYG0oJrCqnfgZddBGs8tozteSOgMAonVQXVSX3FwuoJnu1wvagCksg76rcaftrPWoHckiR9KLTHlzwBeVbM3jzD7c4QNqgalwdCd1xa/IETnVc9E9tr1kMAGkD0hOSZT1S3EOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from CO1PR11MB5186.namprd11.prod.outlook.com (2603:10b6:303:95::14)
 by CH0PR11MB5691.namprd11.prod.outlook.com (2603:10b6:610:110::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.11; Wed, 2 Feb
 2022 22:13:53 +0000
Received: from CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::3d01:b3b2:d2f0:5be1]) by CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::3d01:b3b2:d2f0:5be1%5]) with mapi id 15.20.4951.012; Wed, 2 Feb 2022
 22:13:52 +0000
From: "Brady, Alan" <alan.brady@intel.com>
To: "Lobakin, Alexandr" <alexandr.lobakin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 01/19] virtchnl: Add new
 virtchnl2 ops
Thread-Index: AQHYE97V04/eP/EYvU6Bu24y1XBh+KyA3JPA
Date: Wed, 2 Feb 2022 22:13:52 +0000
Message-ID: <CO1PR11MB5186B4F2861DD07DDB1B239D8F279@CO1PR11MB5186.namprd11.prod.outlook.com>
References: <20220128001009.721392-2-alan.brady@intel.com>
In-Reply-To: <20220128001009.721392-2-alan.brady@intel.com>
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
x-ms-office365-filtering-correlation-id: 17449033-a79c-4ab4-cc4d-08d9e6994c03
x-ms-traffictypediagnostic: CH0PR11MB5691:EE_
x-microsoft-antispam-prvs: <CH0PR11MB5691F78142429808950A7F0D8F279@CH0PR11MB5691.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Z2ITGmkbVbJglK8xn6a1lAqddw5n90jbBRuwEkgPPeHN4zDrMMmafzWclN+IEgpbdz9aaQcqxv5rheiC1Qyrw1oK9Z/hT9Lv+iP3Gbkzr7eiMD8Yc0PTZwoMNttt9DZQtWAB0VCsBeNLlaVP8B1+nGOQlViA0LLelgVjtC1Mydf0BU9fXSE2y4l1aTwLHgLyQdaNR9tkPbzmoxVdmin6iT5AVqgVWMBpaJKfumYAAfYlHY//6dNAsi9VanCWnR1qmdKL48O93YWm/xSMoUHoxMANRHt1FvEzVcSFXzl/BHVOMIAmdfiXd+1kApV9iGWEWpet5SsAhah9b7pSmr1uY/pIcFoknd7I+jkTdy6UKFypXOWJaNvgacBsBWwAUX4/iXIcIQ9gEnjiqDcwqY5cC52TgvvL9YNatzyGbkNafk9CMiRQ/10reDAXEuK6aZaQwEepu/F0s2IAWKnhvrbl2Nqym8fEmNRkAkYriSPqk4jHJ6YBZ+LjwjmrwvjPV5oJrgpRVVls+4vyLwI78N5nO/RoHSUo5L+Mou6gbk5lAGBRjB6nVujNrngWJKgo+6QUIvvuK/FfVPh03DEbz4OgSZjF+iVFHlT6BGZRv8JUbZiasZQKYU2YQmTciDDi8zGk2H7ADX+HWKLiDdFD4/WzwDrayzM0SFd9Xs9Ma4LP4ZBYEvkRvWtnVcryHaraPFt4eG1K30CsjZtyhDFWyotaaw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5186.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(83380400001)(186003)(82960400001)(38100700002)(38070700005)(316002)(55016003)(26005)(54906003)(122000001)(6636002)(4326008)(6862004)(66446008)(66946007)(107886003)(7696005)(66476007)(30864003)(33656002)(5660300002)(9686003)(8676002)(66556008)(64756008)(8936002)(508600001)(76116006)(6506007)(52536014)(2906002)(53546011)(71200400001)(86362001)(579004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7C83ZI2w2bzp/hoYOTrEnY7rPb/f7/fjOHQ28BLvqZmycGvK8xfYT7fRsEIu?=
 =?us-ascii?Q?WZWartkTByRMUWqOqNzf67ZWEsnfKVfmNOwmWriykXF/LIiuuNi8pedkjJOM?=
 =?us-ascii?Q?sTb7530TmWniIgIgq1JEbjMLqSVbSA1UorhrNMINMWLTUNJMdoSucPidHKJR?=
 =?us-ascii?Q?45OetlEdvXExEA3hfpk8ArAjv8HVMcRcL/q0Gh8pKo5NxsEBsijLE/sPqBkM?=
 =?us-ascii?Q?GKM1qbpcrYoQsqFGXb+fR4vGetBze402+Zhn73cPuWFQRli1GgNFh2OoJH6v?=
 =?us-ascii?Q?bulzVcnXwV2rMrj0gpKcgdN3i93FYPplg2wJ0cByDW/i2dsr+x3YBp0N191J?=
 =?us-ascii?Q?cVFLlNLKJYMFUFlZ/2dYCBj6vZ54CEi2/mwoYBCzWgHZ0azThBLRzOOwCyZK?=
 =?us-ascii?Q?SikahW2/DCrnrRTwo+jljEBTdWhv4xJvg/6Zgyt+a929uJKab8kxzZygIV37?=
 =?us-ascii?Q?QD8V1914iByULU3yfYLFWJJIdOh5cIL5jTheiWzX/rWviU0LCZwo2VUGtHbB?=
 =?us-ascii?Q?BRYzE/NC/9JOWRBMNahAHHFJgSKsjDQDkza9o9PvXJPR0xQYvZ1gdFmuot+l?=
 =?us-ascii?Q?6hkup71wMSc1ZoAemdBbv0TEMbcG4irVzcj8hstipcI1Sbt4g5DnGknnceP6?=
 =?us-ascii?Q?0aoqL4d8y1SQIPffSfJqVcI4DA4uMnKqfIN/WcJMfRJ1Ve0D63AZlIIj1Lw2?=
 =?us-ascii?Q?n0+AaXRnPLCntBscGw3aXs+WfcbMiZ/wo/vAk8neljSTd39qu5Ue21xXb8DN?=
 =?us-ascii?Q?bA5AJFzcK5MhPhuf4tLB21yntLQ+5OmKtFqkqBqiov6PuEN8ery6+FiCYT63?=
 =?us-ascii?Q?qEizYShSYUssMGqAC3o4OWkOOh3roD3RH1ogjLGNYBNNBqWzYDfsWVsipbNx?=
 =?us-ascii?Q?qVeY0OosfzQE2VnYZef7zq6tZfubRyYDludVGs0xQ9mBqSGfUyVm03cNYuIK?=
 =?us-ascii?Q?f4FSbptGckRwyFwFMefxt23EIolIHD5+oWJE2OYVNW3PG8AbHdYJTdU2VJwY?=
 =?us-ascii?Q?HUppk5l41weX+QUUUH+/14hoC9rzpGt1QxZ6IHhsXRkLs6DsIcwC/3VBkuew?=
 =?us-ascii?Q?vAj2DOQLFE6/KROWp3aXvsMPSzPuvbJMHynhKAE1vYXAJTN0G3ulb1wh/3YE?=
 =?us-ascii?Q?l5OGVOVaFccrH1xpmgkOJXcvLDr4yZHgG4Ald1C85QX/4TVRrzxosyH/9bnA?=
 =?us-ascii?Q?a8/U8OQMOT0W0fpIbrRqh3Tlgxa0hQ74A+quW6ECEq4PTQ50QtVF4f9yvFmq?=
 =?us-ascii?Q?ZUdQ4wYZORWAmWpm0yAZSWkta+hOtjIODNisoFhXkW1QKlBwTil5l8ZjwUhY?=
 =?us-ascii?Q?5f7xWnK9EJfUD6ptEdySOw2XxTqD+aquLSJTJcGPkAI+LzIh/0bnzYef+nPb?=
 =?us-ascii?Q?Q7cG+668yEJva+TrT6i7QzNJIPlkZgBq+A/Am9eZ9u8/ZnTsR5XhiAgm9YLq?=
 =?us-ascii?Q?K88yBnhrI9zFd2mel84ICNcW8DVvOIUUddUG2RSXtTYG2EAV8Qt3YLeRJy0l?=
 =?us-ascii?Q?BQNGxD+4IxxV269Hk20uOnsziiFEzJx9QCaljdlx7XMIbiicviDgesT3Te7+?=
 =?us-ascii?Q?3vCRX1rHASEDXYQNaaGX9gsGmVe7LWGDVGnKwj8gE9+D9C/diVe3Vj4JUjYb?=
 =?us-ascii?Q?yaHL98VWCz3gfRbrG8kYErw=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5186.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 17449033-a79c-4ab4-cc4d-08d9e6994c03
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2022 22:13:52.7931 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fzVTE3qEJhxGDHr5caOnArjcMC+rXIa1b2KlCnsLLWlE8XDY5GqVoyUDqPd0Rvyucp7G8+2L9qqdyMcWZXcPDA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5691
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 01/19] virtchnl: Add new
 virtchnl2 ops
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
> Sent: Friday, January 28, 2022 3:48 AM
> To: Brady, Alan <alan.brady@intel.com>
> Cc: Lobakin, Alexandr <alexandr.lobakin@intel.com>; intel-wired-
> lan@lists.osuosl.org; Burra, Phani R <phani.r.burra@intel.com>; Chittim, Madhu
> <madhu.chittim@intel.com>; Linga, Pavan Kumar
> <pavan.kumar.linga@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH net-next 01/19] virtchnl: Add new virtchnl2
> ops
> 
> From: Alan Brady <alan.brady@intel.com>
> Date: Thu, 27 Jan 2022 16:09:51 -0800
> 
> > This extends the virtchnl interface to add new virtchnl ops and
> > defines needed to implement virtchnl 2.0.
> >
> > Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> > Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> > Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> > Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > Signed-off-by: Alan Brady <alan.brady@intel.com>
> > ---
> >  MAINTAINERS                           |    1 +
> >  include/linux/avf/virtchnl.h          | 1507 +++++++++++++++++++++++--
> >  include/linux/avf/virtchnl_2.h        | 1243 ++++++++++++++++++++
> >  include/linux/avf/virtchnl_lan_desc.h |  603 ++++++++++
> >  4 files changed, 3237 insertions(+), 117 deletions(-)  create mode
> > 100644 include/linux/avf/virtchnl_2.h  create mode 100644
> > include/linux/avf/virtchnl_lan_desc.h
> >
> > diff --git a/MAINTAINERS b/MAINTAINERS index
> > 0d7883977e9b..5685d64afd76 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -9602,6 +9602,7 @@ F:
> 	Documentation/networking/device_drivers/ethernet/intel/
> >  F:	drivers/net/ethernet/intel/
> >  F:	drivers/net/ethernet/intel/*/
> >  F:	include/linux/avf/virtchnl.h
> > +F:	include/linux/avf/virtchnl_2.h
> >  F:	include/linux/net/intel/iidc.h
> >
> >  INTEL ETHERNET PROTOCOL DRIVER FOR RDMA diff --git
> > a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h index
> > 2ce27e8e4f19..aee5e2677e1c 100644
> > --- a/include/linux/avf/virtchnl.h
> > +++ b/include/linux/avf/virtchnl.h
> > @@ -14,8 +14,9 @@
> >  #define _VIRTCHNL_H_
> >
> >  /* Description:
> > - * This header file describes the VF-PF communication protocol used
> > - * by the drivers for all devices starting from our 40G product line
> > + * This header file describes the Virtual Function (VF) - Physical
> > + Function
> > + * (PF) communication protocol used by the drivers for all devices
> > + starting
> > + * from our 40G product line
> >   *
> >   * Admin queue buffer usage:
> >   * desc->opcode is always aqc_opc_send_msg_to_pf @@ -29,8 +30,8 @@
> >   * have a maximum of sixteen queues for all of its VSIs.
> >   *
> >   * The PF is required to return a status code in v_retval for all
> > messages
> > - * except RESET_VF, which does not require any response. The return
> > value
> > - * is of status_code type, defined in the shared type.h.
> > + * except RESET_VF, which does not require any response. The returned
> > + value
> > + * is of virtchnl_status_code type, defined here.
> >   *
> >   * In general, VF driver initialization should roughly follow the order of
> >   * these opcodes. The VF driver must first validate the API version
> > of the @@ -45,7 +46,21 @@
> >   * value in current and future projects
> >   */
> >
> > -/* Error Codes */
> > +/* These macros are used to generate compilation errors if a
> > +structure/union
> > + * is not exactly the correct length. It gives a divide by zero error
> > +if the
> > + * structure/union is not of the correct size, otherwise it creates
> > +an enum
> > + * that is never used.
> > + */
> > +#define VIRTCHNL_CHECK_STRUCT_LEN(n, X) enum
> virtchnl_static_assert_enum_##X \
> > +	{ virtchnl_static_assert_##X = (n) / ((sizeof(struct X) == (n)) ? 1
> > +: 0) } #define VIRTCHNL_CHECK_UNION_LEN(n, X) enum
> virtchnl_static_asset_enum_##X \
> > +	{ virtchnl_static_assert_##X = (n) / ((sizeof(union X) == (n)) ? 1 :
> > +0) }
> > +
> > +/* Error Codes
> > + * Note that many older versions of various iAVF drivers convert the
> > +reported
> > + * status code directly into an iavf_status enumeration. For this
> > +reason, it
> > + * is important that the values of these enumerations line up.
> > + */
> >  enum virtchnl_status_code {
> >  	VIRTCHNL_STATUS_SUCCESS				= 0,
> >  	VIRTCHNL_STATUS_ERR_PARAM			= -5,
> > @@ -92,6 +107,9 @@ enum virtchnl_rx_hsplit {
> >  	VIRTCHNL_RX_HSPLIT_SPLIT_SCTP    = 8,
> >  };
> >
> > +enum virtchnl_bw_limit_type {
> > +	VIRTCHNL_BW_SHAPER = 0,
> > +};
> >  /* END GENERIC DEFINES */
> >
> >  /* Opcodes for VF-PF communication. These are placed in the v_opcode
> > field @@ -136,11 +154,14 @@ enum virtchnl_ops {
> >  	VIRTCHNL_OP_DISABLE_CHANNELS = 31,
> >  	VIRTCHNL_OP_ADD_CLOUD_FILTER = 32,
> >  	VIRTCHNL_OP_DEL_CLOUD_FILTER = 33,
> > -	/* opcode 34 - 44 are reserved */
> > +	/* opcode 34 is reserved */
> 
> Here's a gap between 34 and 38. If you decided to comment gaps, it should be
> mentioned as well.
> 

Will fix

> > +	/* opcodes 38, 39, 40, 41, 42 and 43 are reserved */
> > +	VIRTCHNL_OP_GET_SUPPORTED_RXDIDS = 44,
> >  	VIRTCHNL_OP_ADD_RSS_CFG = 45,
> >  	VIRTCHNL_OP_DEL_RSS_CFG = 46,
> >  	VIRTCHNL_OP_ADD_FDIR_FILTER = 47,
> >  	VIRTCHNL_OP_DEL_FDIR_FILTER = 48,
> > +	VIRTCHNL_OP_GET_MAX_RSS_QREGION = 50,
> >  	VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS = 51,
> >  	VIRTCHNL_OP_ADD_VLAN_V2 = 52,
> >  	VIRTCHNL_OP_DEL_VLAN_V2 = 53,
> > @@ -148,31 +169,206 @@ enum virtchnl_ops {
> >  	VIRTCHNL_OP_DISABLE_VLAN_STRIPPING_V2 = 55,
> >  	VIRTCHNL_OP_ENABLE_VLAN_INSERTION_V2 = 56,
> >  	VIRTCHNL_OP_DISABLE_VLAN_INSERTION_V2 = 57,
> > +	VIRTCHNL_OP_ENABLE_VLAN_FILTERING_V2 = 58,
> > +	VIRTCHNL_OP_DISABLE_VLAN_FILTERING_V2 = 59,
> > +	VIRTCHNL_OP_1588_PTP_GET_CAPS = 60,
> > +	VIRTCHNL_OP_1588_PTP_GET_TIME = 61,
> > +	VIRTCHNL_OP_1588_PTP_SET_TIME = 62,
> > +	VIRTCHNL_OP_1588_PTP_ADJ_TIME = 63,
> > +	VIRTCHNL_OP_1588_PTP_ADJ_FREQ = 64,
> > +	VIRTCHNL_OP_1588_PTP_TX_TIMESTAMP = 65,
> > +	VIRTCHNL_OP_GET_QOS_CAPS = 66,
> > +	VIRTCHNL_OP_CONFIG_QUEUE_TC_MAP = 67,
> > +	VIRTCHNL_OP_1588_PTP_GET_PIN_CFGS = 68,
> > +	VIRTCHNL_OP_1588_PTP_SET_PIN_CFG = 69,
> > +	VIRTCHNL_OP_1588_PTP_EXT_TIMESTAMP = 70,
> > +	VIRTCHNL_OP_ENABLE_QUEUES_V2 = 107,
> > +	VIRTCHNL_OP_DISABLE_QUEUES_V2 = 108,
> > +	VIRTCHNL_OP_MAP_QUEUE_VECTOR = 111,
> > +	/* New major set of opcodes introduced and so leaving room for
> > +	 * old misc opcodes to be added in future. Also these opcodes may only
> > +	 * be used if both the PF and VF have successfully negotiated the
> > +	 * VIRTCHNL version as 2.0 during VIRTCHNL_OP_VERSION exchange.
> > +	 */
> > +	VIRTCHNL2_OP_GET_CAPS = 500,
> > +	VIRTCHNL2_OP_CREATE_VPORT = 501,
> > +	VIRTCHNL2_OP_DESTROY_VPORT = 502,
> > +	VIRTCHNL2_OP_ENABLE_VPORT = 503,
> > +	VIRTCHNL2_OP_DISABLE_VPORT = 504,
> > +	VIRTCHNL2_OP_CONFIG_TX_QUEUES = 505,
> > +	VIRTCHNL2_OP_CONFIG_RX_QUEUES = 506,
> > +	VIRTCHNL2_OP_ENABLE_QUEUES = 507,
> > +	VIRTCHNL2_OP_DISABLE_QUEUES = 508,
> > +	VIRTCHNL2_OP_ADD_QUEUES = 509,
> > +	VIRTCHNL2_OP_DEL_QUEUES = 510,
> > +	VIRTCHNL2_OP_MAP_QUEUE_VECTOR = 511,
> > +	VIRTCHNL2_OP_UNMAP_QUEUE_VECTOR = 512,
> > +	VIRTCHNL2_OP_GET_RSS_KEY = 513,
> > +	VIRTCHNL2_OP_SET_RSS_KEY = 514,
> > +	VIRTCHNL2_OP_GET_RSS_LUT = 515,
> > +	VIRTCHNL2_OP_SET_RSS_LUT = 516,
> > +	VIRTCHNL2_OP_GET_RSS_HASH = 517,
> > +	VIRTCHNL2_OP_SET_RSS_HASH = 518,
> > +	VIRTCHNL2_OP_SET_SRIOV_VFS = 519,
> > +	VIRTCHNL2_OP_ALLOC_VECTORS = 520,
> > +	VIRTCHNL2_OP_DEALLOC_VECTORS = 521,
> > +	VIRTCHNL2_OP_EVENT = 522,
> > +	VIRTCHNL2_OP_GET_STATS = 523,
> > +	VIRTCHNL2_OP_RESET_VF = 524,
> > +	/* opcode 525 is reserved */
> > +	VIRTCHNL2_OP_GET_PTYPE_INFO = 526,
> > +	/* opcode 527 and 528 are reserved for VIRTCHNL2_OP_GET_PTYPE_ID
> and
> > +	 * VIRTCHNL2_OP_GET_PTYPE_INFO_RAW
> > +	 */
> > +	/* opcodes 529, 530, and 531 are reserved */
> >  	VIRTCHNL_OP_MAX,
> >  };
> >
> > -/* These macros are used to generate compilation errors if a
> > structure/union
> > - * is not exactly the correct length. It gives a divide by zero error
> > if the
> > - * structure/union is not of the correct size, otherwise it creates
> > an enum
> > - * that is never used.
> > - */
> > -#define VIRTCHNL_CHECK_STRUCT_LEN(n, X) enum
> virtchnl_static_assert_enum_##X \
> > -	{ virtchnl_static_assert_##X = (n)/((sizeof(struct X) == (n)) ? 1 : 0) }
> > -#define VIRTCHNL_CHECK_UNION_LEN(n, X) enum
> virtchnl_static_asset_enum_##X \
> > -	{ virtchnl_static_assert_##X = (n)/((sizeof(union X) == (n)) ? 1 : 0) }
> > -
> > -/* Virtual channel message descriptor. This overlays the admin queue
> > - * descriptor. All other data is passed in external buffers.
> > - */
> > -
> > -struct virtchnl_msg {
> > -	u8 pad[8];			 /* AQ flags/opcode/len/retval fields */
> > -	enum virtchnl_ops v_opcode; /* avoid confusion with desc->opcode */
> > -	enum virtchnl_status_code v_retval;  /* ditto for desc->retval */
> > -	u32 vfid;			 /* used by PF when sending to VF */
> > -};
> > +static inline const char *virtchnl_op_str(enum virtchnl_ops v_opcode)
> > +{
> > +	switch (v_opcode) {
> > +	case VIRTCHNL_OP_UNKNOWN:
> > +		return "VIRTCHNL_OP_UNKNOWN";
> > +	case VIRTCHNL_OP_VERSION:
> > +		return "VIRTCHNL_OP_VERSION";
> > +	case VIRTCHNL_OP_RESET_VF:
> > +		return "VIRTCHNL_OP_RESET_VF";
> > +	case VIRTCHNL_OP_GET_VF_RESOURCES:
> > +		return "VIRTCHNL_OP_GET_VF_RESOURCES";
> > +	case VIRTCHNL_OP_CONFIG_TX_QUEUE:
> > +		return "VIRTCHNL_OP_CONFIG_TX_QUEUE";
> > +	case VIRTCHNL_OP_CONFIG_RX_QUEUE:
> > +		return "VIRTCHNL_OP_CONFIG_RX_QUEUE";
> > +	case VIRTCHNL_OP_CONFIG_VSI_QUEUES:
> > +		return "VIRTCHNL_OP_CONFIG_VSI_QUEUES";
> > +	case VIRTCHNL_OP_CONFIG_IRQ_MAP:
> > +		return "VIRTCHNL_OP_CONFIG_IRQ_MAP";
> > +	case VIRTCHNL_OP_ENABLE_QUEUES:
> > +		return "VIRTCHNL_OP_ENABLE_QUEUES";
> > +	case VIRTCHNL_OP_DISABLE_QUEUES:
> > +		return "VIRTCHNL_OP_DISABLE_QUEUES";
> > +	case VIRTCHNL_OP_ADD_ETH_ADDR:
> > +		return "VIRTCHNL_OP_ADD_ETH_ADDR";
> > +	case VIRTCHNL_OP_DEL_ETH_ADDR:
> > +		return "VIRTCHNL_OP_DEL_ETH_ADDR";
> > +	case VIRTCHNL_OP_ADD_VLAN:
> > +		return "VIRTCHNL_OP_ADD_VLAN";
> > +	case VIRTCHNL_OP_DEL_VLAN:
> > +		return "VIRTCHNL_OP_DEL_VLAN";
> > +	case VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE:
> > +		return "VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE";
> > +	case VIRTCHNL_OP_GET_STATS:
> > +		return "VIRTCHNL_OP_GET_STATS";
> > +	case VIRTCHNL_OP_RSVD:
> > +		return "VIRTCHNL_OP_RSVD";
> > +	case VIRTCHNL_OP_EVENT:
> > +		return "VIRTCHNL_OP_EVENT";
> > +	case VIRTCHNL_OP_CONFIG_RSS_KEY:
> > +		return "VIRTCHNL_OP_CONFIG_RSS_KEY";
> > +	case VIRTCHNL_OP_CONFIG_RSS_LUT:
> > +		return "VIRTCHNL_OP_CONFIG_RSS_LUT";
> > +	case VIRTCHNL_OP_GET_RSS_HENA_CAPS:
> > +		return "VIRTCHNL_OP_GET_RSS_HENA_CAPS";
> > +	case VIRTCHNL_OP_SET_RSS_HENA:
> > +		return "VIRTCHNL_OP_SET_RSS_HENA";
> > +	case VIRTCHNL_OP_ENABLE_VLAN_STRIPPING:
> > +		return "VIRTCHNL_OP_ENABLE_VLAN_STRIPPING";
> > +	case VIRTCHNL_OP_DISABLE_VLAN_STRIPPING:
> > +		return "VIRTCHNL_OP_DISABLE_VLAN_STRIPPING";
> > +	case VIRTCHNL_OP_REQUEST_QUEUES:
> > +		return "VIRTCHNL_OP_REQUEST_QUEUES";
> > +	case VIRTCHNL_OP_ENABLE_CHANNELS:
> > +		return "VIRTCHNL_OP_ENABLE_CHANNELS";
> > +	case VIRTCHNL_OP_DISABLE_CHANNELS:
> > +		return "VIRTCHNL_OP_DISABLE_CHANNELS";
> > +	case VIRTCHNL_OP_ADD_CLOUD_FILTER:
> > +		return "VIRTCHNL_OP_ADD_CLOUD_FILTER";
> > +	case VIRTCHNL_OP_DEL_CLOUD_FILTER:
> > +		return "VIRTCHNL_OP_DEL_CLOUD_FILTER";
> > +	case VIRTCHNL_OP_GET_SUPPORTED_RXDIDS:
> > +		return "VIRTCHNL_OP_GET_SUPPORTED_RXDIDS";
> > +	case VIRTCHNL_OP_ADD_RSS_CFG:
> > +		return "VIRTCHNL_OP_ADD_RSS_CFG";
> > +	case VIRTCHNL_OP_DEL_RSS_CFG:
> > +		return "VIRTCHNL_OP_DEL_RSS_CFG";
> > +	case VIRTCHNL_OP_ADD_FDIR_FILTER:
> > +		return "VIRTCHNL_OP_ADD_FDIR_FILTER";
> > +	case VIRTCHNL_OP_DEL_FDIR_FILTER:
> > +		return "VIRTCHNL_OP_DEL_FDIR_FILTER";
> > +	case VIRTCHNL_OP_GET_MAX_RSS_QREGION:
> > +		return "VIRTCHNL_OP_GET_MAX_RSS_QREGION";
> > +	case VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS:
> > +		return "VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS";
> > +	case VIRTCHNL_OP_ADD_VLAN_V2:
> > +		return "VIRTCHNL_OP_ADD_VLAN_V2";
> > +	case VIRTCHNL_OP_DEL_VLAN_V2:
> > +		return "VIRTCHNL_OP_DEL_VLAN_V2";
> > +	case VIRTCHNL_OP_ENABLE_VLAN_STRIPPING_V2:
> > +		return "VIRTCHNL_OP_ENABLE_VLAN_STRIPPING_V2";
> > +	case VIRTCHNL_OP_DISABLE_VLAN_STRIPPING_V2:
> > +		return "VIRTCHNL_OP_DISABLE_VLAN_STRIPPING_V2";
> > +	case VIRTCHNL_OP_ENABLE_VLAN_INSERTION_V2:
> > +		return "VIRTCHNL_OP_ENABLE_VLAN_INSERTION_V2";
> > +	case VIRTCHNL_OP_DISABLE_VLAN_INSERTION_V2:
> > +		return "VIRTCHNL_OP_DISABLE_VLAN_INSERTION_V2";
> > +	case VIRTCHNL_OP_ENABLE_VLAN_FILTERING_V2:
> > +		return "VIRTCHNL_OP_ENABLE_VLAN_FILTERING_V2";
> > +	case VIRTCHNL_OP_DISABLE_VLAN_FILTERING_V2:
> > +		return "VIRTCHNL_OP_DISABLE_VLAN_FILTERING_V2";
> > +	case VIRTCHNL_OP_1588_PTP_GET_CAPS:
> > +		return "VIRTCHNL_OP_1588_PTP_GET_CAPS";
> > +	case VIRTCHNL_OP_1588_PTP_GET_TIME:
> > +		return "VIRTCHNL_OP_1588_PTP_GET_TIME";
> > +	case VIRTCHNL_OP_1588_PTP_SET_TIME:
> > +		return "VIRTCHNL_OP_1588_PTP_SET_TIME";
> > +	case VIRTCHNL_OP_1588_PTP_ADJ_TIME:
> > +		return "VIRTCHNL_OP_1588_PTP_ADJ_TIME";
> > +	case VIRTCHNL_OP_1588_PTP_ADJ_FREQ:
> > +		return "VIRTCHNL_OP_1588_PTP_ADJ_FREQ";
> > +	case VIRTCHNL_OP_1588_PTP_TX_TIMESTAMP:
> > +		return "VIRTCHNL_OP_1588_PTP_TX_TIMESTAMP";
> > +	case VIRTCHNL_OP_1588_PTP_GET_PIN_CFGS:
> > +		return "VIRTCHNL_OP_1588_PTP_GET_PIN_CFGS";
> > +	case VIRTCHNL_OP_1588_PTP_SET_PIN_CFG:
> > +		return "VIRTCHNL_OP_1588_PTP_SET_PIN_CFG";
> > +	case VIRTCHNL_OP_1588_PTP_EXT_TIMESTAMP:
> > +		return "VIRTCHNL_OP_1588_PTP_EXT_TIMESTAMP";
> > +	case VIRTCHNL_OP_ENABLE_QUEUES_V2:
> > +		return "VIRTCHNL_OP_ENABLE_QUEUES_V2";
> > +	case VIRTCHNL_OP_DISABLE_QUEUES_V2:
> > +		return "VIRTCHNL_OP_DISABLE_QUEUES_V2";
> > +	case VIRTCHNL_OP_MAP_QUEUE_VECTOR:
> > +		return "VIRTCHNL_OP_MAP_QUEUE_VECTOR";
> > +	case VIRTCHNL_OP_MAX:
> > +		return "VIRTCHNL_OP_MAX";
> > +	default:
> > +		return "Unsupported (update virtchnl.h)";
> > +	}
> > +}
> 
> This static inline will result in bloated functions and text (code). As it's far from
> hotpath, it should be moved into a C file.
> Moreover, all those could be defined in an array to reduce text size even more
> and compressed via definition.
> 
> #define VIRTCHNL_OP_STR(op)	\
> 	[VIRTCHNL_OP_##op] = "VIRTCHNL_OP_" #op
> 
> static const char * const virtchnl_op_strings[] = {
> 	VIRTCHNL_OP_STR(UNKNOWN),
> 	...
> };
> 
> const char *virtchnl_op_str(enum virtchnl_ops v_opcode) {
> 	/* Will be NULL for not defined codes */
> 	return virtchnl_op_strings[v_opcode] ? :
> 	       "Unsupported (update virtchnl.h)"; }
> 

I'm concerned about adding a C file and the complexity that will add but we will take a look.

> >
> > -VIRTCHNL_CHECK_STRUCT_LEN(20, virtchnl_msg);
> > +static inline const char *virtchnl_stat_str(enum virtchnl_status_code
> > +v_status) {
> > +	switch (v_status) {
> > +	case VIRTCHNL_STATUS_SUCCESS:
> > +		return "VIRTCHNL_STATUS_SUCCESS";
> > +	case VIRTCHNL_STATUS_ERR_PARAM:
> > +		return "VIRTCHNL_STATUS_ERR_PARAM";
> > +	case VIRTCHNL_STATUS_ERR_NO_MEMORY:
> > +		return "VIRTCHNL_STATUS_ERR_NO_MEMORY";
> > +	case VIRTCHNL_STATUS_ERR_OPCODE_MISMATCH:
> > +		return "VIRTCHNL_STATUS_ERR_OPCODE_MISMATCH";
> > +	case VIRTCHNL_STATUS_ERR_CQP_COMPL_ERROR:
> > +		return "VIRTCHNL_STATUS_ERR_CQP_COMPL_ERROR";
> > +	case VIRTCHNL_STATUS_ERR_INVALID_VF_ID:
> > +		return "VIRTCHNL_STATUS_ERR_INVALID_VF_ID";
> > +	case VIRTCHNL_STATUS_ERR_ADMIN_QUEUE_ERROR:
> > +		return "VIRTCHNL_STATUS_ERR_ADMIN_QUEUE_ERROR";
> > +	case VIRTCHNL_STATUS_ERR_NOT_SUPPORTED:
> > +		return "VIRTCHNL_STATUS_ERR_NOT_SUPPORTED";
> > +	default:
> > +		return "Unknown status code (update virtchnl.h)";
> > +	}
> > +}
> 
> Same here.
> 
> >
> >  /* Message descriptions and data structures. */
> >
> 
> --- 8< ---
> 
> > @@ -538,17 +851,17 @@ VIRTCHNL_CHECK_STRUCT_LEN(6,
> virtchnl_vlan_filter_list);
> >   */
> >  enum virtchnl_vlan_support {
> >  	VIRTCHNL_VLAN_UNSUPPORTED =		0,
> > -	VIRTCHNL_VLAN_ETHERTYPE_8100 =		BIT(0),
> > -	VIRTCHNL_VLAN_ETHERTYPE_88A8 =		BIT(1),
> > -	VIRTCHNL_VLAN_ETHERTYPE_9100 =		BIT(2),
> > -	VIRTCHNL_VLAN_TAG_LOCATION_L2TAG1 =	BIT(8),
> > -	VIRTCHNL_VLAN_TAG_LOCATION_L2TAG2 =	BIT(9),
> > -	VIRTCHNL_VLAN_TAG_LOCATION_L2TAG2_2 =	BIT(10),
> > -	VIRTCHNL_VLAN_PRIO =			BIT(24),
> > -	VIRTCHNL_VLAN_FILTER_MASK =		BIT(28),
> > -	VIRTCHNL_VLAN_ETHERTYPE_AND =		BIT(29),
> > -	VIRTCHNL_VLAN_ETHERTYPE_XOR =		BIT(30),
> > -	VIRTCHNL_VLAN_TOGGLE =			BIT(31),
> > +	VIRTCHNL_VLAN_ETHERTYPE_8100 =		0x00000001,
> > +	VIRTCHNL_VLAN_ETHERTYPE_88A8 =		0x00000002,
> > +	VIRTCHNL_VLAN_ETHERTYPE_9100 =		0x00000004,
> > +	VIRTCHNL_VLAN_TAG_LOCATION_L2TAG1 =	0x00000100,
> > +	VIRTCHNL_VLAN_TAG_LOCATION_L2TAG2 =	0x00000200,
> > +	VIRTCHNL_VLAN_TAG_LOCATION_L2TAG2_2 =	0x00000400,
> > +	VIRTCHNL_VLAN_PRIO =			0x01000000,
> > +	VIRTCHNL_VLAN_FILTER_MASK =		0x10000000,
> > +	VIRTCHNL_VLAN_ETHERTYPE_AND =		0x20000000,
> > +	VIRTCHNL_VLAN_ETHERTYPE_XOR =		0x40000000,
> > +	VIRTCHNL_VLAN_TOGGLE =			0x80000000
> 
> Any particular reason for reverting this? Upstream maintainers would most likely
> ask the same.
> 

Unintentional, will fix.

> >  };
> >
> >  /* This structure is used as part of the
> > VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS
> 
> --- 8< ---
> 
> > +
> > +static inline const char *virtchnl2_op_str(enum virtchnl_ops
> > +v_opcode) {
> > +	switch (v_opcode) {
> > +	case VIRTCHNL2_OP_GET_CAPS:
> > +		return "VIRTCHNL2_OP_GET_CAPS";
> > +	case VIRTCHNL2_OP_CREATE_VPORT:
> > +		return "VIRTCHNL2_OP_CREATE_VPORT";
> > +	case VIRTCHNL2_OP_DESTROY_VPORT:
> > +		return "VIRTCHNL2_OP_DESTROY_VPORT";
> > +	case VIRTCHNL2_OP_ENABLE_VPORT:
> > +		return "VIRTCHNL2_OP_ENABLE_VPORT";
> > +	case VIRTCHNL2_OP_DISABLE_VPORT:
> > +		return "VIRTCHNL2_OP_DISABLE_VPORT";
> > +	case VIRTCHNL2_OP_CONFIG_TX_QUEUES:
> > +		return "VIRTCHNL2_OP_CONFIG_TX_QUEUES";
> > +	case VIRTCHNL2_OP_CONFIG_RX_QUEUES:
> > +		return "VIRTCHNL2_OP_CONFIG_RX_QUEUES";
> > +	case VIRTCHNL2_OP_ENABLE_QUEUES:
> > +		return "VIRTCHNL2_OP_ENABLE_QUEUES";
> > +	case VIRTCHNL2_OP_DISABLE_QUEUES:
> > +		return "VIRTCHNL2_OP_DISABLE_QUEUES";
> > +	case VIRTCHNL2_OP_ADD_QUEUES:
> > +		return "VIRTCHNL2_OP_ADD_QUEUES";
> > +	case VIRTCHNL2_OP_DEL_QUEUES:
> > +		return "VIRTCHNL2_OP_DEL_QUEUES";
> > +	case VIRTCHNL2_OP_MAP_QUEUE_VECTOR:
> > +		return "VIRTCHNL2_OP_MAP_QUEUE_VECTOR";
> > +	case VIRTCHNL2_OP_UNMAP_QUEUE_VECTOR:
> > +		return "VIRTCHNL2_OP_UNMAP_QUEUE_VECTOR";
> > +	case VIRTCHNL2_OP_GET_RSS_KEY:
> > +		return "VIRTCHNL2_OP_GET_RSS_KEY";
> > +	case VIRTCHNL2_OP_SET_RSS_KEY:
> > +		return "VIRTCHNL2_OP_SET_RSS_KEY";
> > +	case VIRTCHNL2_OP_GET_RSS_LUT:
> > +		return "VIRTCHNL2_OP_GET_RSS_LUT";
> > +	case VIRTCHNL2_OP_SET_RSS_LUT:
> > +		return "VIRTCHNL2_OP_SET_RSS_LUT";
> > +	case VIRTCHNL2_OP_GET_RSS_HASH:
> > +		return "VIRTCHNL2_OP_GET_RSS_HASH";
> > +	case VIRTCHNL2_OP_SET_RSS_HASH:
> > +		return "VIRTCHNL2_OP_SET_RSS_HASH";
> > +	case VIRTCHNL2_OP_SET_SRIOV_VFS:
> > +		return "VIRTCHNL2_OP_SET_SRIOV_VFS";
> > +	case VIRTCHNL2_OP_ALLOC_VECTORS:
> > +		return "VIRTCHNL2_OP_ALLOC_VECTORS";
> > +	case VIRTCHNL2_OP_DEALLOC_VECTORS:
> > +		return "VIRTCHNL2_OP_DEALLOC_VECTORS";
> > +	case VIRTCHNL2_OP_GET_PTYPE_INFO:
> > +		return "VIRTCHNL2_OP_GET_PTYPE_INFO";
> > +	case VIRTCHNL2_OP_GET_STATS:
> > +		return "VIRTCHNL2_OP_GET_STATS";
> > +	case VIRTCHNL2_OP_EVENT:
> > +		return "VIRTCHNL2_OP_EVENT";
> > +	case VIRTCHNL2_OP_RESET_VF:
> > +		return "VIRTCHNL2_OP_RESET_VF";
> > +	default:
> > +		return virtchnl_op_str(v_opcode);
> > +	}
> > +}
> 
> Same here (array + compression). Since v2 ops start from 500, array indexes can
> be shifted by this value.
> 
> > +
> > +/**
> > + * virtchnl2_vc_validate_vf_msg
> > + * @ver: Virtchnl version info
> > + * @v_opcode: Opcode for the message
> > + * @msg: pointer to the msg buffer
> > + * @msglen: msg length
> > + *
> > + * validate msg format against struct for each opcode  */
> 
> --- 8< ---
> 
> > --
> > 2.33.0
> 
> Thanks,
> Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
