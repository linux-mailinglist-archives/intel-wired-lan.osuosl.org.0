Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC9D4A7E38
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Feb 2022 04:07:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 153E781452;
	Thu,  3 Feb 2022 03:07:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z8MpuXnZ1n7k; Thu,  3 Feb 2022 03:07:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 04BFA81447;
	Thu,  3 Feb 2022 03:07:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9D1721BF47A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 03:07:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7E3C7400E9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 03:07:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uSEvPAzLoXOU for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Feb 2022 03:07:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4702A400A9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 03:07:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643857634; x=1675393634;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4wDe7KAeMRC2BaZwjOgQtt9aArfNQa84wXfLhc4NoTo=;
 b=Y9Xv075XptYvKmGN2TK2mHJ103qnVAFk8efD6VEylxCSb+Pc9mx8rjg1
 OwigeEAJG0j9ceB5xuVXOFtCWm4Kkw7APiKy1TccTwyLFZMalan7/8LEq
 208ZWlviRNB5UFYdoL5DqYa+8WTCOXQhgAoiXWZAZwlJ8w7eMIIrV3pIo
 6B9+b8fUqGpJ1SaZcZcmDlC25v2adNhoA8ZXr7Jq97KEL6om2+Thlc6bs
 GKMSagB7zrAYbnsLONqcpciz+TBoUNAjPTpAV/wCqPBDHRaXFFXAhI348
 dEFTE/zFKAIOe+yTrRyXpU39hdE8gE/d5tYSKbRj80QT+VodR62bR2fMI Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10246"; a="246900678"
X-IronPort-AV: E=Sophos;i="5.88,338,1635231600"; d="scan'208";a="246900678"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 19:07:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,338,1635231600"; d="scan'208";a="631203492"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga004.jf.intel.com with ESMTP; 02 Feb 2022 19:07:13 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 2 Feb 2022 19:07:12 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 2 Feb 2022 19:07:12 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 2 Feb 2022 19:07:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eJxxg3jAmi7/rwb1zWT8T+Y5FdX0+zmv8YfbKHtGiGizSq+3fnzJMp6NxdbKCdjPdyIv+OtONLdZYoFQXgqRyFq/UYHhnmEdpUWkYTIrbOvDI2xXR9UqAusE/saB56M8retYRXZ9LP/XxGdv0mr0SoFli2RBN8yBzEu+BVLbuy7t64on3OG8LGdzjSJ+MKh/p0XqcI38HG01zOUITVVEiNduov0mYob5jMP3cBemMRWCg9o8Xpc45wO1mu20xsHOeVZChRk0mRB25DRLUKGjLek4Jtm6E0/ys5CT++znfgqgsP6sX4hFVOAXpE996t97nqbjphwREgpS7fp2d8E2BA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DYy/r0MTOc4hekNwSL6abPLqqvnrj2K+N+riw5HcGgY=;
 b=h0kmBc5cx7EWRjH5U0AYiQbERkLrTjkuQMu3xWs7Lw75B2WLzzpuBcK4IEe2NFH3BSs9Y2FfkcMMIViZhJxDPP6JYmeFDXCh5vPJgfs5HqAA75WV1MphTYbmNnDc16ShiyT3rAWncFXBBJW+0ACQAaGYGBJq1ihbZPo3fspLODHLToFT2nLMwmq6t4vOyEDUnkw3xTch7SJRVl1Qu5BpXTMqThm7Sl1hDRYjJdqLqkcJucIR0jqofu7sj5/A9KxJbbRUllhZSMNfzFfFPZuv4/+iUTchdYAsGv2+1RVPKCS1gW0BK3UMN4k9k2DF0xxGGYm6eXoTMZP9j6FMKvnoIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from CO1PR11MB5186.namprd11.prod.outlook.com (2603:10b6:303:95::14)
 by CO1PR11MB4850.namprd11.prod.outlook.com (2603:10b6:303:9c::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.11; Thu, 3 Feb
 2022 03:07:10 +0000
Received: from CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::3d01:b3b2:d2f0:5be1]) by CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::3d01:b3b2:d2f0:5be1%5]) with mapi id 15.20.4951.012; Thu, 3 Feb 2022
 03:07:10 +0000
From: "Brady, Alan" <alan.brady@intel.com>
To: "Lobakin, Alexandr" <alexandr.lobakin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 19/19] idpf: introduce idpf
 driver
Thread-Index: AQHYE97ZgsWHIAdO9k+XsQ5nBXsT5ax43diAgAhNkRA=
Date: Thu, 3 Feb 2022 03:07:10 +0000
Message-ID: <CO1PR11MB51868C7F24F8C0EE3F243C2E8F289@CO1PR11MB5186.namprd11.prod.outlook.com>
References: <20220128001009.721392-1-alan.brady@intel.com>
 <20220128001009.721392-20-alan.brady@intel.com>
 <20220128200819.31570-1-alexandr.lobakin@intel.com>
In-Reply-To: <20220128200819.31570-1-alexandr.lobakin@intel.com>
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
x-ms-office365-filtering-correlation-id: 248cae56-e21b-403e-7adb-08d9e6c2450b
x-ms-traffictypediagnostic: CO1PR11MB4850:EE_
x-microsoft-antispam-prvs: <CO1PR11MB4850D16E09397FAFD25D4B808F289@CO1PR11MB4850.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:549;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JqBSRoLbzNZhtDM7xOe8/0T4P+M5+gnoamlwxykSBPtJcxk9ZXSAoiPrpxFAixk4vqvH1nTXI6pJUH7Vym183ix755bKIy71KoSNxv/iRy0ASN/JsZI7eKqtDiaToMwOdSqjmFGpQuSJ/MJW15PC05du6kUkRMaCv7lzTgicoNtdFcEuasLQ/CKxZFbYQJrc0AstZlKw1HiTliFlgVUkVDfUpX1/Hr8T1WFsDTpKBo6+n0OfHDgoa0vAZekh1w7iIY84432iLem+PWOfh2Tw/iyizsUv1czjT8uzwNgN9uPhyhcWsM/XRn6oaku0v+lWqX0y/WeNTnbQjln3MdRpxRB/jggyY3cEzNfvLnwVI5MQCbUIOtJ7VKUb41Cz6fJvpfb+iQ4n7T5A7QbQFsP/peuc4jx4SDmQe9Gd2P+8daXW91/AX2nmq7dFLnpPbGRyf73Bfzp7Bet5M96SKeovosW/FOfsaHdWQA3YAGOIXYw2GvphK9sMR4y7X+QCPpT2yN9vQW8ds+LPHXfdjL6zJTkRxOLE2S4M21SbAJkODYuXORmk6X2CTyarbqEjNM0VUXdau3r+R0lTudIAWVlEqQDEYJAP91x31473BP/cXpC9OlsiZGSbSKVtPu70m/X93az+lkkqLgl0f+wIYI2G5rTbBolbkn/7OYIh6XlgSR68dN+7hvFCg88ekhymU37gND6xpc+v7m+ZQ/JpcSNlZec/PY9HKyCgVFbGj2AaXNO7w5wErj815QW+Wmudo6t7VEnRT6NW8zAatJ7gg1BAjRo/cjhuhMM65rtf6RMjyB89x65Xti1drkeOtrAVFT9HjYCvlHA5dW1M+A5GnoiTGg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5186.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6636002)(38100700002)(107886003)(54906003)(38070700005)(33656002)(316002)(9686003)(7696005)(6506007)(71200400001)(53546011)(86362001)(186003)(122000001)(66946007)(8676002)(508600001)(82960400001)(26005)(83380400001)(5660300002)(8936002)(30864003)(66556008)(66446008)(66476007)(76116006)(64756008)(52536014)(966005)(2906002)(4326008)(55016003)(6862004)(559001)(579004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?wh7UgsZTdf0IGwMpa9spnjbXrooUsUJfSn8WYDGsySnd2ZthUriEKSBqbSBk?=
 =?us-ascii?Q?bPaxEWlA4nFY+JSHZ/MrAVgRvPtlsdDh2sPzfvdJQYwFCbxpp9lQBUP7Byd2?=
 =?us-ascii?Q?fz3KMqTdWYKfPyRBlIhsS2gnVjBdO/KZOrbJPovT4OCpAGoCYrNcZCBI44CP?=
 =?us-ascii?Q?78mydQpSe8SVvIAhzbwwW0zT0s+3O7N7Ci+0OKtdcXEvIUAZlx7xwMFKXSC0?=
 =?us-ascii?Q?kRVPi3cKleCV5SrTltOEoJzUsW5Z1TfkIQ5yG5AlfCY7WPrUEucpXTpltyj2?=
 =?us-ascii?Q?LOcOnT/zWxfx2kEPxKnAcEl18HIHLs1L3WgPF/BIkBJu05+Y0O2uty4Byyty?=
 =?us-ascii?Q?9Lj0SJ3XQA5ioT6S0BIvOM9oFpVx59gIDl97ZoUw9ZIYirG91Y3JE1qxoCcr?=
 =?us-ascii?Q?e8Swy40e/OlXx7J6lUfpXIc8P9oFQda8VUOfp5hkpTovSHEXjbphxsTmD5Eu?=
 =?us-ascii?Q?RF1DZnHHxSQ2q7L0YXdGNf71FlFqyCw3LAEMRX4WqAOdpIzNLA2jL21vep3a?=
 =?us-ascii?Q?W/8OErt+pHIwDvoxmaB011t78GVDv8piXZ40UVPNEj5KcV1cYIdhEKTChyH9?=
 =?us-ascii?Q?OREV0bt/RihpQ04oo7gXi3cOmDl92t1zs32Df1+4mEqgCmDYi42BGD3SqgV2?=
 =?us-ascii?Q?VtmktnfXojKKnSx8hRGPPdOm7VtRqRwW6PjSaNTbzgm71BoAr9uoV7Ufmv5Z?=
 =?us-ascii?Q?p4ozhJDok9+othieK+3iHHFKdYMydRZzIZ/hyObtZGzzrcNwUT9hDtpBzlQV?=
 =?us-ascii?Q?ydlAn0ka/ppMCKUYdagf/zQathbu8ZBuQOJUCnPG2dBepPIX94mQOC5TsAlD?=
 =?us-ascii?Q?S9sS1o0mP4ctmUogQbGPy9CAzgC1w5rXDfI04htoyHSB9uMPcFrYRKnj+v+7?=
 =?us-ascii?Q?EnuYt6xRleeB/jyNhslwvZMSDodwCzf0SJ/9nzH0QWTzNKMRxWnwtQ696IHS?=
 =?us-ascii?Q?2JGi13mOq21cdTtI7DNnnJlZSs6S8M16UNi4JvolReI/W/403meQIaWG4W7d?=
 =?us-ascii?Q?b6GZ7jN6s9+I9kjdN9IEvk1c+pvGcuO4+mLYK2HBFgLYoa9qyIqSM5auV+/q?=
 =?us-ascii?Q?snq2rs9TlFYDw/fpl/gqVmgEAaWYfeKze0DOi7eIq5tL8BQ89UtQRIWkYdXD?=
 =?us-ascii?Q?IkCnxtjFbhppmrGhKiuQ99AWlLNG2McqOGmiXiHQXpmrvQilip5fCcFQ1FoM?=
 =?us-ascii?Q?1orbft95CWr4rHGRA8FR+OJxuSl9VUvX5HnM6swORHVxlccbUiCUjiMSaTpM?=
 =?us-ascii?Q?BbdbGsVblE1Ly0DiuoNBpeROHVOoX1QpKHv15G3KCvZaoWJi25dwvedpD+NH?=
 =?us-ascii?Q?kPhjN2+SfTtmqYmxLPo1Hj+mtNvOmo0DJ0pa0+OC+gAgcx+2R91XttR4cF/8?=
 =?us-ascii?Q?A1cDT4EMFMAf8kjbrayAM8nCc9XVg46vTLEeIFHVUA3tB3yNx4//nNBskiuT?=
 =?us-ascii?Q?1DMZyRv9ouD/IM+k6oCUbNwW/tzyYZ/n+AkLRi2XEmqQgdrxkf54HOFhxT2n?=
 =?us-ascii?Q?ILI6fVRfworMlZRfYvm+Wu0D/K3A9/v7soebwSG2yyiDRdM0T6uPdiK3wTZQ?=
 =?us-ascii?Q?osc4da2U6+vaJOdd5IUZeK8jYNCsbnYnq2VGQIN7WGMoyhOIWJEgvslj2AZf?=
 =?us-ascii?Q?gST47pgC9u15iXQFOcgpy7k=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5186.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 248cae56-e21b-403e-7adb-08d9e6c2450b
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2022 03:07:10.5435 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HnB80lF7WROQR36bItcSWLGzzLxt49U1vBybpUxwHb3fBqqwy2gOd8xEN/zsPg6w3yDMdtLZVBerfOxxdVClGA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4850
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 19/19] idpf: introduce idpf
 driver
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
> Sent: Friday, January 28, 2022 12:08 PM
> To: Brady, Alan <alan.brady@intel.com>
> Cc: Lobakin, Alexandr <alexandr.lobakin@intel.com>; intel-wired-
> lan@lists.osuosl.org; Burra, Phani R <phani.r.burra@intel.com>; Chittim,
> Madhu <madhu.chittim@intel.com>; Linga, Pavan Kumar
> <pavan.kumar.linga@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH net-next 19/19] idpf: introduce idpf
> driver
> 
> From: Alan Brady <alan.brady@intel.com>
> Date: Thu, 27 Jan 2022 16:10:09 -0800
> 
> > This adds the idpf driver which uses the iecm module to provide common
> > functionality. Device specific behavior and registers are defined here
> > and handed off to iecm which takes over the rest of the flow.
> 
> Ok I missed that before, so I say it now.
> Multi-function networking devices (Ethernet, SFs, VF representors, RDMA,
> storage offload etc.) nowadays kinda *must* be based on top of auxiliary
> bus. Otherwise, maintaining of hundreds a direct call with recursive
> dependencies between modules and stuff will become a burden.
> All of the mentioned functionality will be added to the driver(s), that's a
> fact, and as these are new drivers, it's way better to start off the right way
> now than to bug your mind on how to refactor this later.
> 

I suspect a refactor now will actually be more painful than later for other reasons and I believe we have other motivations for not using aux bus in this. It is however worth considering but we need some time to discuss. Will reply with something firm after some internal discussion.

> >
> > Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> > Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> > Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> > Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > Signed-off-by: Alan Brady <alan.brady@intel.com>
> > ---
> >  .../device_drivers/ethernet/intel/idpf.rst    |  47 ++++++
> >  drivers/net/ethernet/intel/Kconfig            |  16 ++
> >  drivers/net/ethernet/intel/Makefile           |   1 +
> >  drivers/net/ethernet/intel/idpf/Makefile      |  15 ++
> >  drivers/net/ethernet/intel/idpf/idpf_dev.h    |  17 +++
> >  drivers/net/ethernet/intel/idpf/idpf_devids.h |  10 ++
> >  drivers/net/ethernet/intel/idpf/idpf_main.c   | 140
> ++++++++++++++++++
> >  drivers/net/ethernet/intel/idpf/idpf_reg.c    | 130 ++++++++++++++++
> >  .../ethernet/intel/include/iecm_lan_pf_regs.h | 131 ++++++++++++++++
> >  9 files changed, 507 insertions(+)
> >  create mode 100644
> > Documentation/networking/device_drivers/ethernet/intel/idpf.rst
> >  create mode 100644 drivers/net/ethernet/intel/idpf/Makefile
> >  create mode 100644 drivers/net/ethernet/intel/idpf/idpf_dev.h
> >  create mode 100644 drivers/net/ethernet/intel/idpf/idpf_devids.h
> >  create mode 100644 drivers/net/ethernet/intel/idpf/idpf_main.c
> >  create mode 100644 drivers/net/ethernet/intel/idpf/idpf_reg.c
> >  create mode 100644
> > drivers/net/ethernet/intel/include/iecm_lan_pf_regs.h
> >
> > diff --git
> > a/Documentation/networking/device_drivers/ethernet/intel/idpf.rst
> > b/Documentation/networking/device_drivers/ethernet/intel/idpf.rst
> > new file mode 100644
> > index 000000000000..973fa9613428
> > --- /dev/null
> > +++ b/Documentation/networking/device_drivers/ethernet/intel/idpf.rst
> > @@ -0,0 +1,47 @@
> > +.. SPDX-License-Identifier: GPL-2.0
> > +
> >
> +=========================================================
> =========
> > +Linux Base Driver for the Intel(R) Smart Network Adapter Family
> > +Series
> >
> +=========================================================
> =========
> > +
> > +Intel idpf Linux driver.
> > +Copyright(c) 2020 Intel Corporation.
> > +
> > +Contents
> > +========
> > +
> > +- Enabling the driver
> > +- Support
> > +
> > +The driver in this release supports Intel's Smart Network Adapter
> > +Family Series of products. For more information, visit Intel's
> > +support page at https://support.intel.com.
> > +
> > +Enabling the driver
> > +===================
> > +The driver is enabled via the standard kernel configuration system,
> > +using the make command::
> > +
> > +  make oldconfig/menuconfig/etc.
> > +
> > +The driver is located in the menu structure at:
> > +
> > +  -> Device Drivers
> > +    -> Network device support (NETDEVICES [=y])
> > +      -> Ethernet driver support
> > +        -> Intel devices
> > +          -> Intel(R) Smart Network Adapter Family Series Support
> > +
> > +Support
> > +=======
> > +For general information, go to the Intel support website at:
> > +
> > +https://www.intel.com/support/
> > +
> > +or the Intel Wired Networking project hosted by Sourceforge at:
> > +
> > +https://sourceforge.net/projects/e1000
> > +
> > +If an issue is identified with the released source code on a
> > +supported kernel with a supported adapter, email the specific
> > +information related to the issue to e1000-devel@lists.sf.net.
> > diff --git a/drivers/net/ethernet/intel/Kconfig
> > b/drivers/net/ethernet/intel/Kconfig
> > index 754dc7677ad5..93c8883c22ad 100644
> > --- a/drivers/net/ethernet/intel/Kconfig
> > +++ b/drivers/net/ethernet/intel/Kconfig
> > @@ -387,4 +387,20 @@ config IECM
> >        To compile this as a module, choose M here. The module will be called
> >        iecm.
> >
> > +config IDPF
> > +	tristate "Intel(R) Data Plane Function Support"
> > +	default n
> > +	depends on IECM
> > +	help
> > +	  For more information on how to identify your adapter, go
> > +	  to the Adapter & Driver ID Guide that can be located at:
> > +
> > +	  <http://support.intel.com>
> > +
> > +	  More specific information on configuring the driver is in
> > +
> <file:Documentation/networking/device_drivers/ethernet/intel/idpf.rst>.
> > +
> > +	  To compile this driver as a module, choose M here. The module
> > +	  will be called idpf.
> > +
> >  endif # NET_VENDOR_INTEL
> > diff --git a/drivers/net/ethernet/intel/Makefile
> > b/drivers/net/ethernet/intel/Makefile
> > index c9eba9cc5087..3786c2269f3d 100644
> > --- a/drivers/net/ethernet/intel/Makefile
> > +++ b/drivers/net/ethernet/intel/Makefile
> > @@ -17,3 +17,4 @@ obj-$(CONFIG_IAVF) += iavf/
> >  obj-$(CONFIG_FM10K) += fm10k/
> >  obj-$(CONFIG_ICE) += ice/
> >  obj-$(CONFIG_IECM) += iecm/
> > +obj-$(CONFIG_IDPF) += idpf/
> > diff --git a/drivers/net/ethernet/intel/idpf/Makefile
> > b/drivers/net/ethernet/intel/idpf/Makefile
> > new file mode 100644
> > index 000000000000..85846620bc9f
> > --- /dev/null
> > +++ b/drivers/net/ethernet/intel/idpf/Makefile
> > @@ -0,0 +1,15 @@
> > +# SPDX-License-Identifier: GPL-2.0-only # Copyright (C) 2019 Intel
> > +Corporation
> > +
> > +#
> > +# Makefile for the Intel(R) Data Plane Function Linux Driver #
> > +
> > +obj-$(CONFIG_IDPF) += idpf.o
> > +
> > +ccflags-y += -I$(srctree)/drivers/net/ethernet/intel/include \
> > +			 -I$(srctree)/include/linux/avf
> > +
> > +idpf-y := \
> > +	idpf_main.o \
> > +	idpf_reg.o
> > diff --git a/drivers/net/ethernet/intel/idpf/idpf_dev.h
> > b/drivers/net/ethernet/intel/idpf/idpf_dev.h
> > new file mode 100644
> > index 000000000000..dc146161f884
> > --- /dev/null
> > +++ b/drivers/net/ethernet/intel/idpf/idpf_dev.h
> > @@ -0,0 +1,17 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> > +/* Copyright (C) 2019 Intel Corporation */
> > +
> > +#ifndef _IDPF_DEV_H_
> > +#define _IDPF_DEV_H_
> > +
> > +#include "iecm.h"
> > +
> > +int idpf_intr_reg_init(struct iecm_vport *vport); void
> > +idpf_mb_intr_reg_init(struct iecm_adapter *adapter); void
> > +idpf_reset_reg_init(struct iecm_reset_reg *reset_reg); void
> > +idpf_trigger_reset(struct iecm_adapter *adapter,
> > +			enum iecm_flags trig_cause);
> > +void idpf_vportq_reg_init(struct iecm_vport *vport); void
> > +idpf_ctlq_reg_init(struct iecm_ctlq_create_info *cq);
> > +
> > +#endif /* _IDPF_DEV_H_ */
> > diff --git a/drivers/net/ethernet/intel/idpf/idpf_devids.h
> > b/drivers/net/ethernet/intel/idpf/idpf_devids.h
> > new file mode 100644
> > index 000000000000..7bf8eb64b76a
> > --- /dev/null
> > +++ b/drivers/net/ethernet/intel/idpf/idpf_devids.h
> > @@ -0,0 +1,10 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> > +/* Copyright (C) 2019 Intel Corporation */
> > +
> > +#ifndef _IDPF_DEVIDS_H_
> > +#define _IDPF_DEVIDS_H_
> > +
> > +/* Device IDs */
> > +#define IDPF_DEV_ID_PF			0x1452
> > +
> > +#endif /* _IDPF_DEVIDS_H_ */
> > diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c
> > b/drivers/net/ethernet/intel/idpf/idpf_main.c
> > new file mode 100644
> > index 000000000000..da5e668beabf
> > --- /dev/null
> > +++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
> > @@ -0,0 +1,140 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/* Copyright (C) 2019 Intel Corporation */
> > +
> > +#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
> > +
> > +#include "idpf_dev.h"
> > +#include "idpf_devids.h"
> > +
> > +#define DRV_SUMMARY	"Intel(R) Data Plane Function Linux Driver"
> > +static const char idpf_driver_string[] = DRV_SUMMARY; static const
> > +char idpf_copyright[] = "Copyright (c) 2020, Intel Corporation.";
> > +
> > +MODULE_DESCRIPTION(DRV_SUMMARY);
> > +MODULE_LICENSE("GPL");
> > +
> > +/**
> > + * idpf_reg_ops_init - Initialize register API function pointers
> > + * @adapter: Driver specific private structure  */ static void
> > +idpf_reg_ops_init(struct iecm_adapter *adapter) {
> > +	adapter->dev_ops.reg_ops.ctlq_reg_init = idpf_ctlq_reg_init;
> > +	adapter->dev_ops.reg_ops.intr_reg_init = idpf_intr_reg_init;
> > +	adapter->dev_ops.reg_ops.mb_intr_reg_init =
> idpf_mb_intr_reg_init;
> > +	adapter->dev_ops.reg_ops.reset_reg_init = idpf_reset_reg_init;
> > +	adapter->dev_ops.reg_ops.trigger_reset = idpf_trigger_reset;
> 
> Why not define static const reg_ops for idpf and assigning it?
> Filling plenty of callbacks inside functions are generally discouraged.
> 

Seems reasonable, will check.

> > +}
> > +
> > +/**
> > + * idpf_probe - Device initialization routine
> > + * @pdev: PCI device information struct
> > + * @ent: entry in idpf_pci_tbl
> > + *
> > + * Returns 0 on success, negative on failure  */ static int
> > +idpf_probe(struct pci_dev *pdev,
> > +		      const struct pci_device_id __always_unused *ent)
> 
> Again, no __always_unused for function parameters.
> 

Will not fix.

> > +{
> > +	struct iecm_adapter *adapter = NULL;
> > +	int err;
> > +
> > +	adapter = kzalloc(sizeof(*adapter), GFP_KERNEL);
> > +	if (!adapter)
> > +		return -ENOMEM;
> > +
> > +	adapter->dev_ops.reg_ops_init = idpf_reg_ops_init;
> 
> Why not just directly assign callbacks here? Callback for filling more
> callbacks?
> 

It was mostly following the pattern we had initially established for setting up vc_ops, which does have a good excuse to be callback to assign callbacks, but you're right I can't justify doing this for reg_ops, will fix.

> > +	set_bit(__IECM_REQ_TX_SPLITQ, adapter->flags);
> > +	set_bit(__IECM_REQ_RX_SPLITQ, adapter->flags);
> > +
> > +	err = iecm_probe(pdev, ent, adapter);
> > +	if (err)
> > +		kfree(adapter);
> > +
> > +	return err;
> > +}
> > +
> > +/**
> > + * idpf_remove - Device removal routine
> > + * @pdev: PCI device information struct  */ static void
> > +idpf_remove(struct pci_dev *pdev) {
> > +	struct iecm_adapter *adapter = pci_get_drvdata(pdev);
> > +
> > +	if (!adapter)
> > +		return;
> > +
> > +	iecm_remove(pdev);
> > +	pci_set_drvdata(pdev, NULL);
> > +	kfree(adapter);
> > +}
> > +
> > +/**
> > + * idpf_shutdown - PCI callback for shutting down device
> > + * @pdev: PCI device information struct  */ static void
> > +idpf_shutdown(struct pci_dev *pdev) {
> > +	idpf_remove(pdev);
> > +
> > +	if (system_state == SYSTEM_POWER_OFF)
> > +		pci_set_power_state(pdev, PCI_D3hot); }
> > +
> > +/* idpf_pci_tbl - PCI Dev iapf ID Table
> > + *
> > + * Wildcard entries (PCI_ANY_ID) should come last
> > + * Last entry must be all 0s
> > + *
> > + * { Vendor ID, Device ID, SubVendor ID, SubDevice ID,
> > + *   Class, Class Mask, private data (not used) }
> > + */
> > +static const struct pci_device_id idpf_pci_tbl[] = {
> > +	{ PCI_VDEVICE(INTEL, IDPF_DEV_ID_PF), 0 },
> > +	/* required last entry */
> > +	{ 0, }
> > +};
> > +MODULE_DEVICE_TABLE(pci, idpf_pci_tbl);
> > +
> > +static struct pci_driver idpf_driver = {
> > +	.name = KBUILD_MODNAME,
> > +	.id_table = idpf_pci_tbl,
> > +	.probe = idpf_probe,
> > +	.remove = idpf_remove,
> > +	.shutdown = idpf_shutdown,
> > +};
> > +
> > +/**
> > + * idpf_module_init - Driver registration routine
> > + *
> > + * idpf_module_init is the first routine called when the driver is
> > + * loaded. All it does is register with the PCI subsystem.
> > + */
> > +static int __init idpf_module_init(void) {
> > +	int status;
> > +
> > +	pr_info("%s - version %d\n", idpf_driver_string,
> LINUX_VERSION_CODE);
> > +	pr_info("%s\n", idpf_copyright);
> > +
> > +	status = pci_register_driver(&idpf_driver);
> > +	if (status)
> > +		pr_err("failed to register pci driver, err %d\n", status);
> > +
> > +	return status;
> > +}
> > +module_init(idpf_module_init);
> > +
> > +/**
> > + * idpf_module_exit - Driver exit cleanup routine
> > + *
> > + * idpf_module_exit is called just before the driver is removed
> > + * from memory.
> > + */
> > +static void __exit idpf_module_exit(void) {
> > +	pci_unregister_driver(&idpf_driver);
> > +	pr_info("module unloaded\n");
> > +}
> > +module_exit(idpf_module_exit);
> > diff --git a/drivers/net/ethernet/intel/idpf/idpf_reg.c
> > b/drivers/net/ethernet/intel/idpf/idpf_reg.c
> > new file mode 100644
> > index 000000000000..d0ea6c495c62
> > --- /dev/null
> > +++ b/drivers/net/ethernet/intel/idpf/idpf_reg.c
> > @@ -0,0 +1,130 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/* Copyright (C) 2019 Intel Corporation */
> > +
> > +#include "idpf_dev.h"
> > +#include "iecm_lan_pf_regs.h"
> > +
> > +/**
> > + * idpf_ctlq_reg_init - initialize default mailbox registers
> > + * @cq: pointer to the array of create control queues  */ void
> > +idpf_ctlq_reg_init(struct iecm_ctlq_create_info *cq) {
> > +	int i;
> > +
> > +#define NUM_Q 2
> 
> I'd like to see it defined outside the function and with a bit of explanation of
> what that is.
> 

Sure will fix.

> > +	for (i = 0; i < NUM_Q; i++) {
> > +		struct iecm_ctlq_create_info *ccq = cq + i;
> > +
> > +		switch (ccq->type) {
> > +		case IECM_CTLQ_TYPE_MAILBOX_TX:
> > +			/* set head and tail registers in our local struct */
> > +			ccq->reg.head = PF_FW_ATQH;
> > +			ccq->reg.tail = PF_FW_ATQT;
> > +			ccq->reg.len = PF_FW_ATQLEN;
> > +			ccq->reg.bah = PF_FW_ATQBAH;
> > +			ccq->reg.bal = PF_FW_ATQBAL;
> > +			ccq->reg.len_mask = PF_FW_ATQLEN_ATQLEN_M;
> > +			ccq->reg.len_ena_mask =
> PF_FW_ATQLEN_ATQENABLE_M;
> > +			ccq->reg.head_mask = PF_FW_ATQH_ATQH_M;
> > +			break;
> > +		case IECM_CTLQ_TYPE_MAILBOX_RX:
> > +			/* set head and tail registers in our local struct */
> > +			ccq->reg.head = PF_FW_ARQH;
> > +			ccq->reg.tail = PF_FW_ARQT;
> > +			ccq->reg.len = PF_FW_ARQLEN;
> > +			ccq->reg.bah = PF_FW_ARQBAH;
> > +			ccq->reg.bal = PF_FW_ARQBAL;
> > +			ccq->reg.len_mask = PF_FW_ARQLEN_ARQLEN_M;
> > +			ccq->reg.len_ena_mask =
> PF_FW_ARQLEN_ARQENABLE_M;
> > +			ccq->reg.head_mask = PF_FW_ARQH_ARQH_M;
> > +			break;
> > +		default:
> > +			break;
> > +		}
> > +	}
> > +}
> > +
> > +/**
> > + * idpf_mb_intr_reg_init - Initialize mailbox interrupt register
> > + * @adapter: adapter structure
> > + */
> > +void idpf_mb_intr_reg_init(struct iecm_adapter *adapter) {
> > +	struct iecm_intr_reg *intr = &adapter->mb_vector.intr_reg;
> > +	struct virtchnl2_get_capabilities *caps;
> > +
> > +	caps = (struct virtchnl2_get_capabilities *)adapter->caps;
> > +	intr->dyn_ctl = le32_to_cpu(caps->mailbox_dyn_ctl);
> > +	intr->dyn_ctl_intena_m = PF_GLINT_DYN_CTL_INTENA_M;
> > +	intr->dyn_ctl_itridx_m = PF_GLINT_DYN_CTL_ITR_INDX_M;
> > +	intr->icr_ena = PF_INT_DIR_OICR_ENA;
> > +	intr->icr_ena_ctlq_m = PF_INT_DIR_OICR_ENA_M; }
> > +
> > +/**
> > + * idpf_intr_reg_init - Initialize interrupt registers
> > + * @vport: virtual port structure
> > + */
> > +int idpf_intr_reg_init(struct iecm_vport *vport) {
> > +	int num_vecs = vport->num_q_vectors;
> > +	struct iecm_vec_regs *reg_vals;
> > +	int num_regs, i, err = 0;
> > +
> > +	reg_vals = kmalloc(sizeof(void *) * IECM_LARGE_MAX_Q,
> > +			   GFP_KERNEL);
> 
> 	array_size(IECM_LARGE_MAX_Q, sizeof(void *));
> 
> > +	if (!reg_vals)
> > +		return -ENOMEM;
> > +
> > +	num_regs = iecm_get_reg_intr_vecs(vport, reg_vals, num_vecs);
> > +	if (num_regs != num_vecs) {
> > +		err = -EINVAL;
> > +		goto free_reg_vals;
> > +	}
> > +
> > +	for (i = 0; i < num_regs; i++) {
> > +		struct iecm_q_vector *q_vector = &vport->q_vectors[i];
> > +		struct iecm_intr_reg *intr = &q_vector->intr_reg;
> > +
> > +		intr->dyn_ctl = reg_vals[i].dyn_ctl_reg;
> > +		intr->dyn_ctl_clrpba_m =
> PF_GLINT_DYN_CTL_CLEARPBA_M;
> > +		intr->dyn_ctl_intena_m = PF_GLINT_DYN_CTL_INTENA_M;
> > +		intr->dyn_ctl_itridx_s = PF_GLINT_DYN_CTL_ITR_INDX_S;
> > +		intr->dyn_ctl_intrvl_s = PF_GLINT_DYN_CTL_INTERVAL_S;
> > +
> > +		intr->rx_itr = PF_GLINT_ITR_V2(VIRTCHNL2_ITR_IDX_0,
> > +					       reg_vals[i].itrn_reg);
> > +		intr->tx_itr = PF_GLINT_ITR_V2(VIRTCHNL2_ITR_IDX_1,
> > +					       reg_vals[i].itrn_reg);
> > +	}
> > +
> > +free_reg_vals:
> > +	kfree(reg_vals);
> > +	return err;
> > +}
> > +
> > +/**
> > + * idpf_reset_reg_init - Initialize reset registers
> > + * @reset_reg: struct to be filled in with reset registers  */ void
> > +idpf_reset_reg_init(struct iecm_reset_reg *reset_reg) {
> > +	reset_reg->rstat = PFGEN_RSTAT;
> > +	reset_reg->rstat_m = PFGEN_RSTAT_PFR_STATE_M; }
> > +
> > +/**
> > + * idpf_trigger_reset - trigger reset
> > + * @adapter: Driver specific private structure
> > + * @trig_cause: Reason to trigger a reset  */ void
> > +idpf_trigger_reset(struct iecm_adapter *adapter,
> > +			enum iecm_flags __always_unused trig_cause) {
> > +	u32 reset_reg;
> > +
> > +	reset_reg = rd32(&adapter->hw, PFGEN_CTRL);
> > +	wr32(&adapter->hw, PFGEN_CTRL, (reset_reg |
> PFGEN_CTRL_PFSWR)); }
> > +
> > diff --git a/drivers/net/ethernet/intel/include/iecm_lan_pf_regs.h
> > b/drivers/net/ethernet/intel/include/iecm_lan_pf_regs.h
> > new file mode 100644
> > index 000000000000..52ffe5c4a7ca
> > --- /dev/null
> > +++ b/drivers/net/ethernet/intel/include/iecm_lan_pf_regs.h
> > @@ -0,0 +1,131 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> > +/* Copyright (c) 2020, Intel Corporation. */
> > +
> > +#ifndef _IECM_LAN_PF_REGS_H_
> > +#define _IECM_LAN_PF_REGS_H_
> > +
> > +/* Receive queues */
> > +#define PF_QRX_BASE			0x00000000
> > +#define PF_QRX_TAIL(_QRX)		(PF_QRX_BASE + (((_QRX) *
> 0x1000)))
> > +#define PF_QRX_BUFFQ_BASE		0x03000000
> > +#define PF_QRX_BUFFQ_TAIL(_QRX)
> 	(PF_QRX_BUFFQ_BASE + (((_QRX) * 0x1000)))
> > +
> > +/* Transmit queues */
> > +#define PF_QTX_BASE			0x05000000
> > +#define PF_QTX_COMM_DBELL(_DBQM)	(PF_QTX_BASE + ((_DBQM) *
> 0x1000))
> > +
> > +/* Control(PF Mailbox) Queue */
> > +#define PF_FW_BASE			0x08400000
> > +
> > +#define PF_FW_ARQBAL			(PF_FW_BASE)
> > +#define PF_FW_ARQBAH			(PF_FW_BASE + 0x4)
> > +#define PF_FW_ARQLEN			(PF_FW_BASE + 0x8)
> > +#define PF_FW_ARQLEN_ARQLEN_S		0
> > +#define PF_FW_ARQLEN_ARQLEN_M		MAKEMASK(0x1FFF,
> PF_FW_ARQLEN_ARQLEN_S)
> > +#define PF_FW_ARQLEN_ARQVFE_S		28
> > +#define PF_FW_ARQLEN_ARQVFE_M
> 	BIT(PF_FW_ARQLEN_ARQVFE_S)
> > +#define PF_FW_ARQLEN_ARQOVFL_S		29
> > +#define PF_FW_ARQLEN_ARQOVFL_M
> 	BIT(PF_FW_ARQLEN_ARQOVFL_S)
> > +#define PF_FW_ARQLEN_ARQCRIT_S		30
> > +#define PF_FW_ARQLEN_ARQCRIT_M
> 	BIT(PF_FW_ARQLEN_ARQCRIT_S)
> > +#define PF_FW_ARQLEN_ARQENABLE_S	31
> > +#define PF_FW_ARQLEN_ARQENABLE_M
> 	BIT(PF_FW_ARQLEN_ARQENABLE_S)
> > +#define PF_FW_ARQH			(PF_FW_BASE + 0xC)
> > +#define PF_FW_ARQH_ARQH_S		0
> > +#define PF_FW_ARQH_ARQH_M		MAKEMASK(0x1FFF,
> PF_FW_ARQH_ARQH_S)
> > +#define PF_FW_ARQT			(PF_FW_BASE + 0x10)
> > +
> > +#define PF_FW_ATQBAL			(PF_FW_BASE + 0x14)
> > +#define PF_FW_ATQBAH			(PF_FW_BASE + 0x18)
> > +#define PF_FW_ATQLEN			(PF_FW_BASE + 0x1C)
> > +#define PF_FW_ATQLEN_ATQLEN_S		0
> > +#define PF_FW_ATQLEN_ATQLEN_M		MAKEMASK(0x3FF,
> PF_FW_ATQLEN_ATQLEN_S)
> > +#define PF_FW_ATQLEN_ATQVFE_S		28
> > +#define PF_FW_ATQLEN_ATQVFE_M
> 	BIT(PF_FW_ATQLEN_ATQVFE_S)
> > +#define PF_FW_ATQLEN_ATQOVFL_S		29
> > +#define PF_FW_ATQLEN_ATQOVFL_M
> 	BIT(PF_FW_ATQLEN_ATQOVFL_S)
> > +#define PF_FW_ATQLEN_ATQCRIT_S		30
> > +#define PF_FW_ATQLEN_ATQCRIT_M
> 	BIT(PF_FW_ATQLEN_ATQCRIT_S)
> > +#define PF_FW_ATQLEN_ATQENABLE_S	31
> > +#define PF_FW_ATQLEN_ATQENABLE_M
> 	BIT(PF_FW_ATQLEN_ATQENABLE_S)
> > +#define PF_FW_ATQH			(PF_FW_BASE + 0x20)
> > +#define PF_FW_ATQH_ATQH_S		0
> > +#define PF_FW_ATQH_ATQH_M		MAKEMASK(0x3FF,
> PF_FW_ATQH_ATQH_S)
> > +#define PF_FW_ATQT			(PF_FW_BASE + 0x24)
> > +
> > +/* Interrupts */
> > +#define PF_GLINT_BASE			0x08900000
> > +#define PF_GLINT_DYN_CTL(_INT)		(PF_GLINT_BASE + ((_INT) *
> 0x1000))
> > +#define PF_GLINT_DYN_CTL_INTENA_S	0
> > +#define PF_GLINT_DYN_CTL_INTENA_M
> 	BIT(PF_GLINT_DYN_CTL_INTENA_S)
> > +#define PF_GLINT_DYN_CTL_CLEARPBA_S	1
> > +#define PF_GLINT_DYN_CTL_CLEARPBA_M
> 	BIT(PF_GLINT_DYN_CTL_CLEARPBA_S)
> > +#define PF_GLINT_DYN_CTL_SWINT_TRIG_S	2
> > +#define PF_GLINT_DYN_CTL_SWINT_TRIG_M
> 	BIT(PF_GLINT_DYN_CTL_SWINT_TRIG_S)
> > +#define PF_GLINT_DYN_CTL_ITR_INDX_S	3
> > +#define PF_GLINT_DYN_CTL_ITR_INDX_M	MAKEMASK(0x3,
> PF_GLINT_DYN_CTL_ITR_INDX_S)
> > +#define PF_GLINT_DYN_CTL_INTERVAL_S	5
> > +#define PF_GLINT_DYN_CTL_INTERVAL_M
> 	BIT(PF_GLINT_DYN_CTL_INTERVAL_S)
> > +#define PF_GLINT_DYN_CTL_SW_ITR_INDX_ENA_S	24
> > +#define PF_GLINT_DYN_CTL_SW_ITR_INDX_ENA_M
> BIT(PF_GLINT_DYN_CTL_SW_ITR_INDX_ENA_S)
> > +#define PF_GLINT_DYN_CTL_SW_ITR_INDX_S	25
> > +#define PF_GLINT_DYN_CTL_SW_ITR_INDX_M
> 	BIT(PF_GLINT_DYN_CTL_SW_ITR_INDX_S)
> > +#define PF_GLINT_DYN_CTL_WB_ON_ITR_S	30
> > +#define PF_GLINT_DYN_CTL_WB_ON_ITR_M
> 	BIT(PF_GLINT_DYN_CTL_WB_ON_ITR_S)
> > +#define PF_GLINT_DYN_CTL_INTENA_MSK_S	31
> > +#define PF_GLINT_DYN_CTL_INTENA_MSK_M
> 	BIT(PF_GLINT_DYN_CTL_INTENA_MSK_S)
> > +#define PF_GLINT_ITR_V2(_i, _reg_start) (((_i) * 4) + (_reg_start))
> > +#define PF_GLINT_ITR(_i, _INT) (PF_GLINT_BASE + (((_i) + 1) * 4) +
> ((_INT) * 0x1000))
> > +#define PF_GLINT_ITR_MAX_INDEX		2
> > +#define PF_GLINT_ITR_INTERVAL_S		0
> > +#define PF_GLINT_ITR_INTERVAL_M		MAKEMASK(0xFFF,
> PF_GLINT_ITR_INTERVAL_S)
> > +
> > +/* Timesync registers */
> > +#define PF_TIMESYNC_BASE		0x08404000
> > +#define PF_GLTSYN_CMD_SYNC		(PF_TIMESYNC_BASE)
> > +#define PF_GLTSYN_CMD_SYNC_EXEC_CMD_S	0
> > +#define PF_GLTSYN_CMD_SYNC_EXEC_CMD_M	MAKEMASK(0x3,
> PF_GLTSYN_CMD_SYNC_EXEC_CMD_S)
> > +#define PF_GLTSYN_CMD_SYNC_SHTIME_EN_S	2
> > +#define PF_GLTSYN_CMD_SYNC_SHTIME_EN_M
> 	BIT(PF_GLTSYN_CMD_SYNC_SHTIME_EN_S)
> > +#define PF_GLTSYN_SHTIME_0		(PF_TIMESYNC_BASE + 0x4)
> > +#define PF_GLTSYN_SHTIME_L		(PF_TIMESYNC_BASE + 0x8)
> > +#define PF_GLTSYN_SHTIME_H		(PF_TIMESYNC_BASE + 0xC)
> > +#define PF_GLTSYN_ART_L			(PF_TIMESYNC_BASE + 0x10)
> > +#define PF_GLTSYN_ART_H			(PF_TIMESYNC_BASE + 0x14)
> > +
> > +/* Generic registers */
> > +#define PF_INT_DIR_OICR_ENA		0x08406000
> > +#define PF_INT_DIR_OICR_ENA_S		0
> > +#define PF_INT_DIR_OICR_ENA_M	MAKEMASK(0xFFFFFFFF,
> PF_INT_DIR_OICR_ENA_S)
> > +#define PF_INT_DIR_OICR			0x08406004
> > +#define PF_INT_DIR_OICR_TSYN_EVNT	0
> > +#define PF_INT_DIR_OICR_PHY_TS_0	BIT(1)
> > +#define PF_INT_DIR_OICR_PHY_TS_1	BIT(2)
> > +#define PF_INT_DIR_OICR_CAUSE		0x08406008
> > +#define PF_INT_DIR_OICR_CAUSE_CAUSE_S	0
> > +#define PF_INT_DIR_OICR_CAUSE_CAUSE_M
> 	MAKEMASK(0xFFFFFFFF, PF_INT_DIR_OICR_CAUSE_CAUSE_S)
> > +#define PF_INT_PBA_CLEAR		0x0840600C
> > +
> > +#define PF_FUNC_RID			0x08406010
> > +#define PF_FUNC_RID_FUNCTION_NUMBER_S	0
> > +#define PF_FUNC_RID_FUNCTION_NUMBER_M	MAKEMASK(0x7,
> PF_FUNC_RID_FUNCTION_NUMBER_S)
> > +#define PF_FUNC_RID_DEVICE_NUMBER_S	3
> > +#define PF_FUNC_RID_DEVICE_NUMBER_M	MAKEMASK(0x1F,
> PF_FUNC_RID_DEVICE_NUMBER_S)
> > +#define PF_FUNC_RID_BUS_NUMBER_S	8
> > +#define PF_FUNC_RID_BUS_NUMBER_M	MAKEMASK(0xFF,
> PF_FUNC_RID_BUS_NUMBER_S)
> > +
> > +/* Reset registers */
> > +#define PFGEN_RTRIG			0x08407000
> > +#define PFGEN_RTRIG_CORER_S		0
> > +#define PFGEN_RTRIG_CORER_M		BIT(0)
> > +#define PFGEN_RTRIG_LINKR_S		1
> > +#define PFGEN_RTRIG_LINKR_M		BIT(1)
> > +#define PFGEN_RTRIG_IMCR_S		2
> > +#define PFGEN_RTRIG_IMCR_M		BIT(2)
> > +#define PFGEN_RSTAT			0x08407008 /* PFR Status
> */
> > +#define PFGEN_RSTAT_PFR_STATE_S		0
> > +#define PFGEN_RSTAT_PFR_STATE_M		MAKEMASK(0x3,
> PFGEN_RSTAT_PFR_STATE_S)
> > +#define PFGEN_CTRL			0x0840700C
> > +#define PFGEN_CTRL_PFSWR		BIT(0)
> > +
> > +#endif
> > --
> > 2.33.0
> 
> Thanks,
> Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
