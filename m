Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A4B14A7AE5
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Feb 2022 23:17:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DE65D83EA8;
	Wed,  2 Feb 2022 22:17:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ncgYUcU2wnd3; Wed,  2 Feb 2022 22:17:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BA08883EAB;
	Wed,  2 Feb 2022 22:17:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1F98D1BF5DE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 22:17:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9C2CE83E85
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 22:17:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9NOR3uYsTSXG for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Feb 2022 22:17:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3C6D682628
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 22:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643840240; x=1675376240;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=T5ECRwccyTIdwWkRq3FuNC3youzp2Ii5fl4ok+sJBFI=;
 b=RKyDEoo/r5TKZ6P7HyJeFR99+oT8EesoIvSo2d8+CyQy9Sn+H5tw7eIa
 DLuACZ1zxtUGV76vpxCG3bGh+JX8gDXOiWBxAquSEjC59970ub4ZqnjcV
 ZT5aMWaUzYVb/+cH1A8efqhORUsvNMnSN3qJ3qLxAP9ERMP4a+FUYrqr4
 KKIgbTlYDyj8jlsu80P7AWpij8tfz8iHtJujcWb9K+Hod3Zhs2Ge6N6lx
 PZYUAsDji0G6Ji9KKGCZ5gR74xnEqddVfjn4UyThKoAli4+g/lLv6iOwn
 dNGRCAkC8fKofTcsJvW6hLWDZdmr77teepAwIflTqxhVnE1qxsKtG8WXh w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10246"; a="247983336"
X-IronPort-AV: E=Sophos;i="5.88,338,1635231600"; d="scan'208";a="247983336"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 14:15:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,338,1635231600"; d="scan'208";a="699102260"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga005.jf.intel.com with ESMTP; 02 Feb 2022 14:15:45 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 2 Feb 2022 14:15:44 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 2 Feb 2022 14:15:44 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 2 Feb 2022 14:15:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Emq9XqvrUc8xpQneXCeqFUQo7J73RcxJNUs08Z4zWl0zskphU++JEY2iDRQaPZeAeeBbEoVMPg0JgwB9jRFOndkbJDpjSphzXxENyFTpEocbI27P1r2Bm+TFfPXukQ/+KXFXiAyg+OPdcVT1vCTDYu+RjN9IGh2UGKRklZnfLunlhZyeXuy4wfpwIIBuPfcB1HeLdN1lWhZES1n6nx5azPGjglEcjNU1SV2/VhVAmNUQjEI0hk7llqqM1JyZVTviSPe3CLgcIxTZjQd9D3w8/CqdF7DU3DfN+pI/FSbEj+4VRqkv5eVP9MM4GPmv1Ng4l9soFPq7EyjrU5OdHcenYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mmUsGbhoXBSwvkP32pHgdq1izBt+J1RBuFzxVwCA9Gw=;
 b=D1K/0qCENRLSY57xjCqBsagwmnP+xdhwA0mF3tN6JLLI7H2ynX7hw2BpLcLPB3wMfSjH1pbBoTGKpQycU7iw70tUmeaj4A1TJhsP8m6+Zxuhu6lGpK+QsS7BvIlzZa4Mhif/YwzTE6lHohhU3Dw6hGOPlSfgZnKviB/2eJXe1W/lPA3nyV7gMWzASkYIs1baaRnscN6Abc7Il4xjx60fft2Q0PmWg7YVy7016c7h2gfe9Ty+PA9R4VJz0xvcuFG5azNBF7LJh4yh+Tgn/Gfd3QIOeIMV6aYeA3Yt1fiAUGO69kgKA7rvF5onbOoCuwi0JxPtKOa9CPx6azCJDwktIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from CO1PR11MB5186.namprd11.prod.outlook.com (2603:10b6:303:95::14)
 by DM6PR11MB4217.namprd11.prod.outlook.com (2603:10b6:5:1de::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.12; Wed, 2 Feb
 2022 22:15:41 +0000
Received: from CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::3d01:b3b2:d2f0:5be1]) by CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::3d01:b3b2:d2f0:5be1%5]) with mapi id 15.20.4951.012; Wed, 2 Feb 2022
 22:15:41 +0000
From: "Brady, Alan" <alan.brady@intel.com>
To: "Lobakin, Alexandr" <alexandr.lobakin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 02/19] iecm: add basic module
 init and documentation
Thread-Index: AQHYE97P+xgP0L96iEuzkw7w8eI81ax4VFWAgAiIR7A=
Date: Wed, 2 Feb 2022 22:15:40 +0000
Message-ID: <CO1PR11MB51865C73F8AF6B89D91364748F279@CO1PR11MB5186.namprd11.prod.outlook.com>
References: <20220128001009.721392-1-alan.brady@intel.com>
 <20220128001009.721392-3-alan.brady@intel.com>
 <20220128115609.20470-1-alexandr.lobakin@intel.com>
In-Reply-To: <20220128115609.20470-1-alexandr.lobakin@intel.com>
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
x-ms-office365-filtering-correlation-id: 5d2f6306-f8b0-419a-2853-08d9e6998c8b
x-ms-traffictypediagnostic: DM6PR11MB4217:EE_
x-microsoft-antispam-prvs: <DM6PR11MB4217FDF3F3D2B06161CA382F8F279@DM6PR11MB4217.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IsL0K2JbdHMM00Pi6UaBuD1e5qDyvLdV0tXzWYL6Qzv5DQAWROcU/XpCOACo3o1Rouj6+7aaf2zS3OxR8YrBk6Y0e8NSZVKrxs6suBBpANCqCB6v1BNGvAmP8DeP4N9+X8RNntMOI+zO10YwrIwmpHCw4qKi9Zn8lpYNCItyI1Q57zYY+NInagXZfmuH3d8tsyN1ONVq/eCQMX58WXukqe9OXDmVinC1CxXxrFwfHqoCjpU8XuCDRXIxRnhCz+aqHfwqUEzO0+OOl/2nlHv+ohFcDvWWhS9o25C8jJ8kDSjfur4mG5WJPXW+jZSMb3epe2yeMXxHQrhXx5e5fm5PEGqmh5ZW3mECcZ1U2lm9QW4Xd9HH3rVYjuPyuzBLziXQz1NEF5xG+P5inSMhncvFqsjZOMgcpCRa8xG8QjCDFps+3XAETHoIG3qdYLTnbi03emqLBiNPaJaTeMYNlaAtkaeTI09KHyqwN8hO17Te4ikQ7vtsQUKRPxNSgrwLxGiL+LFIEKMGFONJ+LN88qmv5sMW/Brm7fCscNFbVtwjOxHQX+okQl2JonzD9WlvCnUs5o/IukLlTI4flBcxIC8NAOB7K9NdZxddzIkpOhE+zieztJiKOqtHVjCWMqYjXjRgH3XBKwkYvSFQFiGtoqCWBPNBCDpwSFtND+YKEFmsFkHOQdszVfvg1NwoHu2dOjSGZkHM9n84tVA1FdO1+vYKYw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5186.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6506007)(7696005)(508600001)(53546011)(9686003)(6636002)(55016003)(33656002)(83380400001)(54906003)(316002)(6862004)(38100700002)(52536014)(4326008)(5660300002)(82960400001)(38070700005)(86362001)(30864003)(8936002)(66556008)(66946007)(64756008)(66476007)(66446008)(76116006)(122000001)(71200400001)(26005)(186003)(107886003)(8676002)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Z/TCBWMw0lnGmi119GOZxST4fwTIa5hqeiKZJvvnrb3XByfsNxjj/Ld4175q?=
 =?us-ascii?Q?sWJsUg6D25TV6p1OF0caHcdb66YFf2k+e1PxaUYMT9pfGMIUxxK7pfA6/qjW?=
 =?us-ascii?Q?D+IVSlhA9Frq9AGbWFmVkYihLd+3Ff77FhU6zpkJY3svqdeLVEYddNGOzvDv?=
 =?us-ascii?Q?98SPKwkT7u65qccT2vFq/a07y0Clq6E2DuVaFWVw1XEZNdLPcqvnPYdcWwFO?=
 =?us-ascii?Q?HM6qNgNDGTUT5K34+tGmdL/eutJGOAWIObViY59lNfI92ZVvnQipx5CKd0yj?=
 =?us-ascii?Q?3x/PPRKroH61hzzzDM8DU7l7VtAAaeaGh4A/YAa8u0LaLwS0w5nmzaFicRzR?=
 =?us-ascii?Q?DHRqHOWktI6Ztb9+cCVJC57eBd0hvBC0oQ0PTTev0LfI6Ldd2c1iH3x8a590?=
 =?us-ascii?Q?4AJ7hOEIr9URcpHAgoEGv3pAKfLXvwFkBXxcXdzz7ys5UIQDr9SIcVE+g0Ba?=
 =?us-ascii?Q?Cr3jEKrf/0Hxo/On6mYmfutCqI1zRuwxPt51Yip8vMFJzIItY34myLTkr52J?=
 =?us-ascii?Q?EDMGcz71IiYms9OF8XEXS0wvVS4NcTxAfgQn798R0aQXmzAe31B0v9sP8tFI?=
 =?us-ascii?Q?G34SiPV42ilkhC6k/+PHNcAOgEvRzZs6ekQj67PRpMdyGx20OYP9Qh5es7Np?=
 =?us-ascii?Q?E2+IYekKUNB0x9/U44mWjBcDWT1uGE8KA3/nq2PER0sK9auQ76jj+oMLA13Q?=
 =?us-ascii?Q?5vncZyf1jqpJOQ/nj79E4MDIY29lt0vQY7WuepTcMPbnVxgsn2L40Hqq9yU6?=
 =?us-ascii?Q?pnBgz3hABxcVqtkFgKKqn/ggeqFv1l61AkTpyZF78CSTy9YC3gynKKMKKfVB?=
 =?us-ascii?Q?YYmZzCW/StfPCjaXxwnb9VCDNzr2zUvZnSBVaXCOJnrXUbcxjs7SQ0fZ07M8?=
 =?us-ascii?Q?XsCJBpNcp7D2q9CGutpoNoyEJ8b5crgO78trGb3LiZHfucSfI+xJf2ggJ82v?=
 =?us-ascii?Q?lsedbj9H+kRAxTxD7ZAlsZItxVZ4UhFGOvj8Edp/JU6HWw2wOgd1hDQu5gS9?=
 =?us-ascii?Q?YV8wljckrqIxLMnt6rW25A8blQhOA4cVoIgYZGvx3wNwbsmUVXSPfpN4xB9P?=
 =?us-ascii?Q?MX3fs3RoJ3aeqaV53fJjJR/fMK6AvRNLN9eXS4t/+EKElpY3gr6NSE2hNA6N?=
 =?us-ascii?Q?ZmdBdslg/AEfG3zOj3w+cC6DhEAMlfQ7xsfF7uIUxX++mq6in56yuwGXyTRo?=
 =?us-ascii?Q?aczbnep8LsuC8KEa0qyojleWKL542+W9kmb0kTFHgADCnyxcvZLOnGPOjOkl?=
 =?us-ascii?Q?0JguGG02B7Vds6CqqKblVjW2LJD5M0CSdWU0QGsdMU7pO7Dhbpy3loGNklqC?=
 =?us-ascii?Q?NExwpjIqS9lMPzIm3Yp5JMRbyEQqPPmIZdoRTabPO3TU+V9rfYJT64xCGqxr?=
 =?us-ascii?Q?iAcmwz5WOmfQS/nsO8FFbUhrufBRUoIZSj0/s66smG1RL6t6D8Hxs6cQBilF?=
 =?us-ascii?Q?Wzq2/HKZTtAo5j4MlWrRPsaHMOq89ZmBWGLp1CpKP6gO/qaaIRfCiZoBE5Pa?=
 =?us-ascii?Q?rCPlaIMkiwKXF8VtBFSiCFYD0vV9MaBarv3DSalW1Kz6jFBjb5aE6h3COcLx?=
 =?us-ascii?Q?kJsfgzqTEHFOztassEoNKkHuffAbCTrhMmof0NfL6E0yq2X6EuhyjZK/WEUv?=
 =?us-ascii?Q?pDhVqjykes78iswQYfAQh4k=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5186.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d2f6306-f8b0-419a-2853-08d9e6998c8b
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2022 22:15:41.0544 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LcoyieL6fZlHsWyZDPeY3ff1LWtRfCNs3oA7ST43RozqRXFsDIBiM9mE3NqwD7/bz1JmjIxE7LsIA3ShDPJmbA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4217
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 02/19] iecm: add basic module
 init and documentation
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
> Sent: Friday, January 28, 2022 3:56 AM
> To: Brady, Alan <alan.brady@intel.com>
> Cc: Lobakin, Alexandr <alexandr.lobakin@intel.com>; intel-wired-
> lan@lists.osuosl.org; Burra, Phani R <phani.r.burra@intel.com>; Chittim, Madhu
> <madhu.chittim@intel.com>; Linga, Pavan Kumar
> <pavan.kumar.linga@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH net-next 02/19] iecm: add basic module
> init and documentation
> 
> From: Alan Brady <alan.brady@intel.com>
> Date: Thu, 27 Jan 2022 16:09:52 -0800
> 
> > This adds the basics needed to make a kernel module and documentation
> > needed to use iecm module.
> >
> > Signed-off-by: Alan Brady <alan.brady@intel.com>
> > Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> > Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> > Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> > Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > ---
> >  .../device_drivers/ethernet/intel/iecm.rst    | 93 +++++++++++++++++++
> >  drivers/net/ethernet/intel/Kconfig            | 15 +++
> >  drivers/net/ethernet/intel/Makefile           |  1 +
> >  drivers/net/ethernet/intel/iecm/Makefile      | 13 +++
> >  drivers/net/ethernet/intel/iecm/iecm_main.c   | 40 ++++++++
> >  drivers/net/ethernet/intel/include/iecm.h     | 10 ++
> >  6 files changed, 172 insertions(+)
> >  create mode 100644
> > Documentation/networking/device_drivers/ethernet/intel/iecm.rst
> >  create mode 100644 drivers/net/ethernet/intel/iecm/Makefile
> >  create mode 100644 drivers/net/ethernet/intel/iecm/iecm_main.c
> >  create mode 100644 drivers/net/ethernet/intel/include/iecm.h
> >
> > diff --git
> > a/Documentation/networking/device_drivers/ethernet/intel/iecm.rst
> > b/Documentation/networking/device_drivers/ethernet/intel/iecm.rst
> > new file mode 100644
> > index 000000000000..5634e3e65c74
> > --- /dev/null
> > +++ b/Documentation/networking/device_drivers/ethernet/intel/iecm.rst
> > @@ -0,0 +1,93 @@
> > +.. SPDX-License-Identifier: GPL-2.0
> > +
> > +========================
> > +Intel Ethernet Common Module
> > +========================
> > +
> > +The Intel Ethernet Common Module is meant to serve as an abstraction
> > +layer between device specific implementation details and common net
> > +device driver flows. This library provides several function hooks
> > +which allow a device driver to specify register addresses, control
> > +queue communications, and other device specific functionality.  Some
> > +functions are required to be implemented while others have a default
> > +implementation that is used when none is supplied by the device
> > +driver.  Doing this, a device driver can be written to take advantage
> > +of existing code while also giving the flexibility to implement device specific
> features.
> > +
> > +The common use case for this library is for a network device driver
> > +that wants specify its own device specific details but also leverage
> > +the more common code flows found in network device drivers.
> > +
> > +Sections in this document:
> > +	Entry Point
> > +	Exit Point
> > +	Register Operations API
> > +	Virtchnl Operations API
> > +
> > +Entry Point
> > +~~~~~~~~~~~
> > +The primary entry point to the library is the iecm_probe function.
> > +Prior to calling this, device drivers must have allocated an
> > +iecm_adapter struct and initialized it with the required API
> > +functions.  The adapter struct, along with the pci_dev struct and the
> > +pci_device_id struct, is provided to iecm_probe which finalizes device
> initialization and prepares the device for open.
> > +
> > +The iecm_dev_ops struct within the iecm_adapter struct is the primary
> > +vehicle for passing information from device drivers to the common
> > +module.  A dependent module must define and assign a reg_ops_init
> > +function which will assign the respective function pointers to
> > +initialize register values (see iecm_reg_ops struct).  These are
> > +required to be provided by the dependent device driver as no suitable default
> can be assumed for register addresses.
> > +
> > +The vc_ops_init function pointer and the related iecm_virtchnl_ops
> > +struct are optional and should only be necessary for device drivers
> > +which use a different method/timing for communicating across a
> > +mailbox to the hardware.  Within iecm is a default interface provided
> > +in the case where one is not provided by the device driver.
> > +
> > +Exit Point
> > +~~~~~~~~~~
> > +When the device driver is being prepared to be removed through the
> > +pci_driver remove callback, it is required for the device driver to
> > +call iecm_remove with the pci_dev struct provided.  This is required
> > +to ensure all resources are properly freed and returned to the operating
> system.
> > +
> > +Register Operations API
> > +~~~~~~~~~~~~~~~~~~~~~~~
> > +iecm_reg_ops contains three different function pointers relating to
> > +initializing registers for the specific net device using the library.
> > +
> > +ctlq_reg_init relates specifically to setting up registers related to
> > +control queue/mailbox communications.  Registers that should be
> > +defined include: head, tail, len, bah, bal, len_mask, len_ena_mask, and
> head_mask.
> > +
> > +vportq_reg_init relates to setting up queue registers.  The tail
> > +registers to be assigned to the iecm_queue struct for each RX/TX queue.
> > +
> > +intr_reg_init relates to any registers needed to setup interrupts.
> > +These include registers needed to enable the interrupt and change ITR
> settings.
> > +
> > +If the initialization function finds that one or more required
> > +function pointers were not provided, an error will be issued and the
> > +device will be inoperable.
> > +
> > +
> > +Virtchnl Operations API
> > +~~~~~~~~~~~~~~~~~~~~~~~
> > +The virtchnl is a conduit between driver and hardware that allows
> > +device drivers to send and receive control messages to/from hardware.
> > +This is optional to be specified as there is a general interface that
> > +can be assumed when using this library.  However, if a device
> > +deviates in some way to communicate across the mailbox correctly,
> > +this interface is provided to allow that.
> > +
> > +If vc_ops_init is set in the dev_ops field of the iecm_adapter
> > +struct, then it is assumed the device driver is using providing it's
> > +own interface to do virtchnl communications.  While providing
> > +vc_ops_init is optional, if it is provided, it is required that the
> > +device driver provide function pointers for those functions in
> > +vc_ops, with exception for the enable_vport, disable_vport, and
> destroy_vport functions which may not be required for all devices.
> > +
> > +If the initialization function finds that vc_ops_init was defined but
> > +one or more required function pointers were not provided, an error
> > +will be issued and the device will be inoperable.
> > diff --git a/drivers/net/ethernet/intel/Kconfig
> > b/drivers/net/ethernet/intel/Kconfig
> > index 3facb55b7161..754dc7677ad5 100644
> > --- a/drivers/net/ethernet/intel/Kconfig
> > +++ b/drivers/net/ethernet/intel/Kconfig
> > @@ -372,4 +372,19 @@ config IGC
> >  	  To compile this driver as a module, choose M here. The module
> >  	  will be called igc.
> >
> > +config IECM
> > +	tristate "Intel(R) Ethernet Common Module Support"
> > +	default n
> > +	depends on PCI_MSI
> > +	select DIMLIB
> > +	help
> > +      This supplies needed functions to device specific device
> > +drivers
> 
> One Tab + two spaces instead of 6 spaces. And one Tab is 8 cols in the kernel.
> 

Will fix

> > +      implementing common module.
> > +
> > +	  More specific information on configuring the driver is in
> > +
> <file:Documentation/networking/device_drivers/ethernet/intel/iecm.rst>.
> > +
> > +      To compile this as a module, choose M here. The module will be called
> > +      iecm.
> > +
> >  endif # NET_VENDOR_INTEL
> > diff --git a/drivers/net/ethernet/intel/Makefile
> > b/drivers/net/ethernet/intel/Makefile
> > index 3075290063f6..c9eba9cc5087 100644
> > --- a/drivers/net/ethernet/intel/Makefile
> > +++ b/drivers/net/ethernet/intel/Makefile
> > @@ -16,3 +16,4 @@ obj-$(CONFIG_IXGB) += ixgb/
> >  obj-$(CONFIG_IAVF) += iavf/
> >  obj-$(CONFIG_FM10K) += fm10k/
> >  obj-$(CONFIG_ICE) += ice/
> > +obj-$(CONFIG_IECM) += iecm/
> > diff --git a/drivers/net/ethernet/intel/iecm/Makefile
> > b/drivers/net/ethernet/intel/iecm/Makefile
> > new file mode 100644
> > index 000000000000..d2d087ac71e9
> > --- /dev/null
> > +++ b/drivers/net/ethernet/intel/iecm/Makefile
> > @@ -0,0 +1,13 @@
> > +# SPDX-License-Identifier: GPL-2.0-only # Copyright (C) 2019 Intel
> > +Corporation
> > +
> > +#
> > +# Makefile for the Intel(R) Data Plane Function Linux Driver #
> > +
> > +obj-$(CONFIG_IECM) += iecm.o
> > +
> > +ccflags-y += -I$(srctree)/drivers/net/ethernet/intel/include
> 
> Common includes are usually being added to include/linux/. Files outside include
> directories are usually considered "private", i.e.
> used only inside a particular folder.
> 

Will fix.

> > +
> > +iecm-y := \
> > +	iecm_main.o
> > diff --git a/drivers/net/ethernet/intel/iecm/iecm_main.c
> > b/drivers/net/ethernet/intel/iecm/iecm_main.c
> > new file mode 100644
> > index 000000000000..7c09403c6918
> > --- /dev/null
> > +++ b/drivers/net/ethernet/intel/iecm/iecm_main.c
> > @@ -0,0 +1,40 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/* Copyright (C) 2019 Intel Corporation */
> > +
> > +#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
> > +
> > +#include "iecm.h"
> 
> Quotes are used for local includes. For includes from the search directories
> please use <>.
> 
> > +
> > +#define DRV_SUMMARY	"Intel(R) Ethernet Common Module"
> > +static const char iecm_driver_string[] = DRV_SUMMARY; static const
> > +char iecm_copyright[] = "Copyright (c) 2020, Intel Corporation.";
> > +
> > +MODULE_DESCRIPTION(DRV_SUMMARY);
> > +MODULE_LICENSE("GPL v2");
> 
> "GPL v2" is a deprecated identifier and is not recommended for new modules.
> Just "GPL" is enough and means exactly the same.
> 

Will fix

> > +
> > +/**
> > + * iecm_module_init - Driver registration routine
> > + *
> > + * iecm_module_init is the first routine called when the driver is
> > + * loaded. All it does is register with the PCI subsystem.
> > + */
> > +static int __init iecm_module_init(void) {
> > +	pr_info("%s - version %d\n", iecm_driver_string,
> LINUX_VERSION_CODE);
> > +	pr_info("%s\n", iecm_copyright);
> > +
> > +	return 0;
> > +}
> > +module_init(iecm_module_init);
> > +
> > +/**
> > + * iecm_module_exit - Driver exit cleanup routine
> > + *
> > + * iecm_module_exit is called just before the driver is removed
> > + * from memory.
> > + */
> > +static void __exit iecm_module_exit(void) {
> > +	pr_info("module unloaded\n");
> > +}
> > +module_exit(iecm_module_exit);
> > diff --git a/drivers/net/ethernet/intel/include/iecm.h
> > b/drivers/net/ethernet/intel/include/iecm.h
> > new file mode 100644
> > index 000000000000..f66f0d7db8e7
> > --- /dev/null
> > +++ b/drivers/net/ethernet/intel/include/iecm.h
> > @@ -0,0 +1,10 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> > +/* Copyright (C) 2019 Intel Corporation */
> > +
> > +#ifndef _IECM_H_
> > +#define _IECM_H_
> > +
> > +#include <linux/etherdevice.h>
> > +#include <linux/version.h>
> > +
> > +#endif /* !_IECM_H_ */
> > --
> > 2.33.0
> 
> Thanks,
> Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
