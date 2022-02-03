Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 073FE4A7E21
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Feb 2022 03:56:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7EF544158A;
	Thu,  3 Feb 2022 02:56:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YAX2twDUvNBs; Thu,  3 Feb 2022 02:56:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 78E8840942;
	Thu,  3 Feb 2022 02:56:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 287CB1BF995
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 02:56:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0A21A400E9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 02:56:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TQZheYPwE3Gu for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Feb 2022 02:56:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8959C400A9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 02:56:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643856966; x=1675392966;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WJZ1WjJZDhy4QJyBERPPb45MAjMKFuuGcCg98dlqtYQ=;
 b=eQQpqZkBmr4JZV1lc1pVcySfyVjKVdQZ/yhESn0GKoqJCkL8IWKdaUc5
 kdFue+XgvyuNp1DIosrbfEYoeYoK2q/c8rlTe8WWyKVzbZxpyqP86ECi3
 CM66JWTdyp+H18429YtmBDGOvpDycGD9MqoCSjSL8kM5egiREri3KhmxJ
 SjNcSxFrb9AUxFFECIIaepg9ioHI/5TzE2vGbdEpsfiA/tDRlky8i427P
 TxXqWQUwyEP+ZJXnEn5hSZB4PAugK2MvX7Gzal8W2Htn8ILqPbrMpASt9
 PWFKUOBpd2ZLKKbuxIh6LW5GYtldG/fSUKpMzdJBGqOrD3kpB1yk4cq/k w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10246"; a="248018109"
X-IronPort-AV: E=Sophos;i="5.88,338,1635231600"; d="scan'208";a="248018109"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 18:56:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,338,1635231600"; d="scan'208";a="769487333"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP; 02 Feb 2022 18:56:05 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 2 Feb 2022 18:56:05 -0800
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 2 Feb 2022 18:56:04 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 2 Feb 2022 18:56:04 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 2 Feb 2022 18:56:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IDHHfsZYCk1A4Lb9AKZR8H8cNdM0Pj8v/uCD4iCTCRQbrc4SDFoIUTzvLEkrIB7iEDDLdf8OVIaa+MefrtM0hf6RBTQpMyehWBHpHak46bygjlW43yCCWgNIsg71w7dzHU0vuhdxOUpWL2PtzyeN70W7/ZTov9DfcLC5pVS4gsddS81/qlKav+aPzosd0L6mBqqchKyfg/hyySy7LBRQLiM++02VUAI/d4/kIxeeydTsu1MGNpZbGR0/AEEeMnKf5OMVjOTZ+RtxnoodjyOesYNsk7kYpUB9TyJI2RqDbVFWE5oXtIk4NsAm4XFWq9xDHrALGesO/BEvrMvkcO2Mwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=50uyPxnnK/xVBln1jdj5MhzJU8e4X2b+oZryC/bP/qg=;
 b=hyaVzuXPWhFQaerKO7tlFu7TOfoUgeK3lDQEuoitY7KF52WhzcatUpbsQRU+J0AR5CoxjP1+dO0sH3yL4DySildo3S3grSoIRyTjTSyrOAYT1yIzB4ATt0/aRGQPCPwR0P2z9ofvH3YVpOl2F9Lekl7TBjLOajc7HbPkfMq3+4RfSI9wWFACWm3u0y4Vvjw9xZwFSPSqTqQvZlnCN2Ca/xgeJG/5uM861ECGYY9p0oVMvlZd1ZZGaJ3ZGpd7/d8bm5H/P2hBRe6Tj2Tby61KlEK4RAf/W4DYnvnNMwskadkME0qm3P89RZRr/5dETQGj5BzoXION+phDz+lV3UfKWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from CO1PR11MB5186.namprd11.prod.outlook.com (2603:10b6:303:95::14)
 by CO1PR11MB5044.namprd11.prod.outlook.com (2603:10b6:303:92::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.11; Thu, 3 Feb
 2022 02:55:57 +0000
Received: from CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::3d01:b3b2:d2f0:5be1]) by CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::3d01:b3b2:d2f0:5be1%5]) with mapi id 15.20.4951.012; Thu, 3 Feb 2022
 02:55:57 +0000
From: "Brady, Alan" <alan.brady@intel.com>
To: "Lobakin, Alexandr" <alexandr.lobakin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 18/19] iecm: add advanced rss
Thread-Index: AQHYE970wer9tEapSUWBw+zsTVDkoax42dUAgAhQwNA=
Date: Thu, 3 Feb 2022 02:55:57 +0000
Message-ID: <CO1PR11MB51860C64005BE3D05A0D72A18F289@CO1PR11MB5186.namprd11.prod.outlook.com>
References: <20220128001009.721392-1-alan.brady@intel.com>
 <20220128001009.721392-19-alan.brady@intel.com>
 <20220128195358.31333-1-alexandr.lobakin@intel.com>
In-Reply-To: <20220128195358.31333-1-alexandr.lobakin@intel.com>
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
x-ms-office365-filtering-correlation-id: e4a592c7-c933-45aa-74dd-08d9e6c0b3ac
x-ms-traffictypediagnostic: CO1PR11MB5044:EE_
x-microsoft-antispam-prvs: <CO1PR11MB5044EB83D57CB06E5EFB0AB28F289@CO1PR11MB5044.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1468;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nIehApfJytM2xvRxMZDFud5KO2n6jur97fQ9hu0caNRqOm9TiEyVsSv9nYcNi34zLcRxEfQBLKHJgeD7GLK1eBFjrmfF3ys5NBfAmjhyPbBeUsQ9mPAIkn8Ow+pzTdQQMJfpxLv2QX9VJOppdZeRpkeO7JzAT2Quaz3cR23/Ma5nVzJehD0jvDsc0HpaAjpmoYfMuDLRlSLfSeMFwg2aSUseVEifHzk5J8iCz6Mfn4CieWMmzuV9yFpDoVyI8d1MnUvljW0wr+1iJbhZF/ycDvz95FSpF+zH1oB6EkNZoVUrsC58IyLdUFwfmb/OJ+fVWAPxRyXmZ2NpxD9Lk+TF0CPLdui8oJ3cEoSRky1YgBfnDzVvWA1bZvpBE8kMWwWq4PrEoONqQZAUs5bDab2Sp/8SJnNoXyZvjA1yEvyqbc7slhf8RoEOiaKXRQN1g1cfRrqaTpQcI7qIw1u0vGI8gh1GAZ2xm+71mdL7GN+PQm/wrE6IhCSXoDdMOglL/ZoxqYkxRRQMruhxQSIY36hRnXVysER/eyC0QXFoXbz9hMd6GwH868vIkuzgozDn4H1++Ht952f/ubyuPouWmU8FsOuAml4SH5TMQ1W1uCqnXbh8//54uEPuBNokTkJatpo4THSegpwzur+p5G3F5OVInMDvF6Py+SjO54KWA9vNkhuXexSz8KFPTMrO4Npjmmc9FaGocAeroik30REl3JXeCA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5186.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6862004)(8676002)(76116006)(71200400001)(53546011)(66446008)(64756008)(54906003)(7696005)(6636002)(4326008)(8936002)(2906002)(66476007)(66946007)(26005)(52536014)(6506007)(66556008)(508600001)(186003)(83380400001)(107886003)(38100700002)(82960400001)(86362001)(30864003)(33656002)(9686003)(316002)(5660300002)(122000001)(38070700005)(55016003)(559001)(579004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xPQEj8icyz2N3UvLuuwbPkpmPBR6bSYgZzMfQ31xcDkbsQjPegRVTMZefO7N?=
 =?us-ascii?Q?pfPzEZS8b0PWzzDtD+OClOYk5iBi9OGCKdkxu2jvlPuGt4pCT+9SoewPTOxp?=
 =?us-ascii?Q?qHEnxdL3D2YZQCbYJB/l2Z9PbR75s0CGdro49Ro4p0Ara0GJUZqn5UDIjv88?=
 =?us-ascii?Q?N9Pf1HgNN3ztH77ojzeIhTd4lr79YuWeyIsinl5vzIh5ZJyCYPATsOvxOsOg?=
 =?us-ascii?Q?LA3QyLDGefF0mApM3kT88J3KDfz/XteR4MzxPLQoVN0RLatt4td9sqOc0kzG?=
 =?us-ascii?Q?dUWeedjMGyhEZ76ywtaACxso1j4oksiKctXB39o9DWB5B31yir1QTGirw5PZ?=
 =?us-ascii?Q?oae84Lenao+z3M7SNBFJTxg2NC4kJa8PacAdkH3VPxeThqrxyZNTOcAPugjL?=
 =?us-ascii?Q?K84RomugHFv1NxzlLppc+ACxLi5RIj7uNcTYUYDcYyQo74EpvGor3cJK+F8k?=
 =?us-ascii?Q?nptm/7nj+sJoQTMtBULRIwCBuwJEne00AxoHdXBl03evD8CQCqbWEe2gG6Sg?=
 =?us-ascii?Q?lBoOKypHN/djAs6ndjIFVIk3I2m7lE2hw5ln6OwLJTPIJYV/ErTOEor6H9He?=
 =?us-ascii?Q?RlPQVH5BEbTp/qXcasrDqgtSQ+yatipJzeACz1rJpzPWuSqVgjs8LcRbVxau?=
 =?us-ascii?Q?JgeZKDW2hSSaWQVBRVpLlk/qgr1Et7ZzoglYW+LVfiatF1/ydP0F99KjK3JL?=
 =?us-ascii?Q?1lAXbuAkZv+xs2/qKPFBfVNq+F4it1d/DZYZ5XGlGwjiJgfsrCPpbb2Lt1+C?=
 =?us-ascii?Q?z/s/Z0eFEHxIv21WQwU7RRJo+fAVi9SIuPnrM8fydZn5AUppmanIKkUALAMg?=
 =?us-ascii?Q?PFN58a8jSVHpxa+1dcjANKSbbsSib+SsVejbaq9rrs7WGAOfBq9HLduVOqcl?=
 =?us-ascii?Q?FB7+fLC/TQHYDrCYVW/LdO0h7nsyCD3TGlIAVjLwlRw09L50aRkBKGbYVoqk?=
 =?us-ascii?Q?5Qsgq6TpTaDTl4LFHR+SQm5JP6nrCKJp8KOs9hbrQYXGF+J2oyDL5rlCB8G7?=
 =?us-ascii?Q?5mtJQr5CAfKgLdNNNq+KHX8O0BfDn8TiJ+E9W4HpJ45+Iivhqdgb7FcSmuMu?=
 =?us-ascii?Q?1hID2qzzAo7lowYGHaQrLy+iORTbzpqUXGjTvA5DycMUXo5Gnx8tc4Y6qKLS?=
 =?us-ascii?Q?j7Y6pprGJURSEToaH0TYjULF55sJHkO4KGn6yCMW48O3B9+mXSDt4JvjKBG4?=
 =?us-ascii?Q?DLl1Nsx8cwiXbUqPX2Cnqseb1zrEiyTq7GrzzUyiRSYqxA5eag5WwC7QzG43?=
 =?us-ascii?Q?pTnsPztvI6Uk6mGLqsN7s44uNM2j2myYsKQI+yY2bQFGKpSEhFwtRdGqpXZi?=
 =?us-ascii?Q?VjnUx891sx2JFPqwWyCsk+kkh6TlNPO6awHuR5R+OpVgUlydygYa0zJC8kju?=
 =?us-ascii?Q?xx5Z9qT5fUiSYtjFwSmV3KLmKW9a0dhf6HeUwp/KPb0zh5+/xlgSKY5sbXO1?=
 =?us-ascii?Q?Ao/E6rvljWhMeJYPisFe3d/tI6Au2KnUqY8Ckg1prsM+pVSTZsJkHfBawTvt?=
 =?us-ascii?Q?hulaFG1fCGGMJ4AQpMJzamunIFco+foUu798ONx7cmlVFnoUfgnoQ0KeZqO5?=
 =?us-ascii?Q?RwO4XX5DrnwobCKyeeXo8H9jmdN9zHTdbcG3ZtPeHfcHMXyfXzE3NCA7R+9P?=
 =?us-ascii?Q?+xdLp0cBuvheM7p/y2q1hPA=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5186.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e4a592c7-c933-45aa-74dd-08d9e6c0b3ac
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2022 02:55:57.1231 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FnK7DKJBRXH8UHzl+FDVn24hMZChheSVAbpFowiruqiq5Ogsl5HxXQ03VGoP7Uy3v8lOla+Zo6lIUoyqzTcD4A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5044
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 18/19] iecm: add advanced rss
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
> Sent: Friday, January 28, 2022 11:54 AM
> To: Brady, Alan <alan.brady@intel.com>
> Cc: Lobakin, Alexandr <alexandr.lobakin@intel.com>; Wang, Haiyue
> <haiyue.wang@intel.com>; intel-wired-lan@lists.osuosl.org; Burra, Phani R
> <phani.r.burra@intel.com>; Chittim, Madhu <madhu.chittim@intel.com>;
> Linga, Pavan Kumar <pavan.kumar.linga@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH net-next 18/19] iecm: add advanced
> rss
> 
> From: Alan Brady <alan.brady@intel.com>
> Date: Thu, 27 Jan 2022 16:10:08 -0800
> 
> > From: Haiyue Wang <haiyue.wang@intel.com>
> >
> > Continuing with advanced features this implements what's needed to do
> > advanced rss.
> 
> I'm sorry for not mentioned it before, but most of the series'
> commit messages are poor and would probably get rejected upstream.
> If they were explaining at least some very basics, it would be better. Even
> better if there were explanations of some tricky code that happens time to
> time.
> 
> >
> > Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> > ---
> >  drivers/net/ethernet/intel/iecm/iecm_lib.c    | 547
> ++++++++++++++++++
> >  .../net/ethernet/intel/iecm/iecm_virtchnl.c   |  71 +++
> >  drivers/net/ethernet/intel/include/iecm.h     |  73 +++
> >  3 files changed, 691 insertions(+)
> >
> > diff --git a/drivers/net/ethernet/intel/iecm/iecm_lib.c
> > b/drivers/net/ethernet/intel/iecm/iecm_lib.c
> > index d11413cb438c..baa1e312652a 100644
> > --- a/drivers/net/ethernet/intel/iecm/iecm_lib.c
> > +++ b/drivers/net/ethernet/intel/iecm/iecm_lib.c
> > @@ -1013,6 +1013,52 @@ static void iecm_remove_vlan_filters(struct
> iecm_vport *vport)
> >  	}
> >  }
> >
> > +/**
> > + * iecm_remove_adv_rss_cfgs - Remove all RSS configuration
> > + * @vport: vport structure
> > + */
> > +static void iecm_remove_adv_rss_cfgs(struct iecm_vport *vport) {
> > +	struct iecm_adapter *adapter = vport->adapter;
> > +
> > +	if (!iecm_is_cap_ena(adapter, IECM_OTHER_CAPS,
> VIRTCHNL2_CAP_ADV_RSS))
> > +		return;
> > +
> > +	if (!list_empty(&adapter->config_data.adv_rss_list)) {
> > +		struct iecm_adv_rss *rss;
> > +
> > +		spin_lock_bh(&adapter->adv_rss_list_lock);
> > +		list_for_each_entry(rss, &adapter-
> >config_data.adv_rss_list,
> > +				    list) {
> > +			rss->remove = true;
> > +		}
> 
> Redundant braces arond an one-liner.
> 

Maybe will fix.

> > +		spin_unlock_bh(&adapter->adv_rss_list_lock);
> > +		iecm_send_add_del_adv_rss_cfg_msg(vport, false);
> > +	}
> 
> Invert the condition for -1 indent level.
> 

Will fix.

> > +}
> > +
> > +/**
> > + * iecm_del_all_adv_rss_cfgs - delete all RSS configuration
> > + * @vport: vport structure
> > + *
> > + * This function will loop through the list of RSS configuration and
> > +deletes
> > + * them.
> > + **/
> > +static void iecm_del_all_adv_rss_cfgs(struct iecm_vport *vport) {
> > +	struct iecm_adapter *adapter = vport->adapter;
> > +	struct iecm_adv_rss *rss, *rss_tmp;
> > +
> > +	spin_lock_bh(&adapter->adv_rss_list_lock);
> > +	list_for_each_entry_safe(rss, rss_tmp,
> > +				 &adapter->config_data.adv_rss_list,
> > +				 list) {
> > +		list_del(&rss->list);
> > +		kfree(rss);
> > +	}
> > +	spin_unlock_bh(&adapter->adv_rss_list_lock);
> > +}
> > +
> >  /**
> >   * iecm_remove_fdir_filters - Remove all Flow Director filters
> >   * @vport: vport structure
> > @@ -1099,6 +1145,7 @@ static void iecm_vport_stop(struct iecm_vport
> *vport)
> >  		iecm_remove_vlan_filters(vport);
> >  	}
> >
> > +	iecm_remove_adv_rss_cfgs(vport);
> >  	iecm_remove_fdir_filters(vport);
> >
> >  	adapter->link_up = false;
> > @@ -1332,6 +1379,27 @@ static void iecm_restore_cloud_filters(struct
> iecm_vport *vport)
> >  	}
> >  }
> >
> > +/**
> > + * iecm_restore_adv_rss_cfgs - Restore all RSS configuration
> > + * @vport: vport structure
> > + */
> > +static void iecm_restore_adv_rss_cfgs(struct iecm_vport *vport) {
> > +	struct iecm_adapter *adapter = vport->adapter;
> > +
> > +	if (!list_empty(&adapter->config_data.adv_rss_list)) {
> > +		struct iecm_adv_rss *rss;
> > +
> > +		spin_lock_bh(&adapter->adv_rss_list_lock);
> > +		list_for_each_entry(rss, &adapter-
> >config_data.adv_rss_list,
> > +				    list) {
> > +			rss->add = true;
> > +		}
> 
> ...
> 
> > +		spin_unlock_bh(&adapter->adv_rss_list_lock);
> > +		iecm_send_add_del_adv_rss_cfg_msg(vport, true);
> > +	}
> 
> ...
> 
> > +}
> > +
> >  /**
> >   * iecm_restore_fdir_filters - Restore all Flow Director filters
> >   * @vport: vport structure
> > @@ -1380,6 +1448,9 @@ static void iecm_restore_features(struct
> iecm_vport *vport)
> >  	if (iecm_is_feature_ena(vport, NETIF_F_HW_TC))
> >  		iecm_restore_cloud_filters(vport);
> >
> > +	if (iecm_is_cap_ena(adapter, IECM_OTHER_CAPS,
> VIRTCHNL2_CAP_ADV_RSS))
> > +		iecm_restore_adv_rss_cfgs(vport);
> > +
> >  	if (iecm_is_cap_ena(adapter, IECM_OTHER_CAPS,
> VIRTCHNL2_CAP_FDIR))
> >  		iecm_restore_fdir_filters(vport);
> >  }
> > @@ -2219,6 +2290,7 @@ static void iecm_del_user_cfg_data(struct
> iecm_adapter *adapter)
> >  		if (!adapter->vports[i])
> >  			continue;
> >
> > +		iecm_del_all_adv_rss_cfgs(adapter->vports[i]);
> >  		iecm_del_all_fdir_filters(adapter->vports[i]);
> >  	}
> >  }
> > @@ -3633,6 +3705,481 @@ static int iecm_setup_tc(struct net_device
> *netdev, enum tc_setup_type type,
> >  	return err;
> >  }
> >
> > +/**
> > + * iecm_fill_adv_rss_ip4_hdr - fill the IPv4 RSS protocol header
> > + * @hdr: the virtchnl message protocol header data structure
> > + * @hash_flds: the RSS configuration protocol hash fields  */ static
> > +void iecm_fill_adv_rss_ip4_hdr(struct virtchnl_proto_hdr *hdr, u64
> > +hash_flds) {
> > +	VIRTCHNL_SET_PROTO_HDR_TYPE(hdr, IPV4);
> > +
> > +	if (hash_flds & IECM_ADV_RSS_HASH_FLD_IPV4_SA)
> > +		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, IPV4, SRC);
> > +
> > +	if (hash_flds & IECM_ADV_RSS_HASH_FLD_IPV4_DA)
> > +		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, IPV4, DST); }
> > +
> > +/**
> > + * iecm_fill_adv_rss_ip6_hdr - fill the IPv6 RSS protocol header
> > + * @hdr: the virtchnl message protocol header data structure
> > + * @hash_flds: the RSS configuration protocol hash fields  */ static
> > +void iecm_fill_adv_rss_ip6_hdr(struct virtchnl_proto_hdr *hdr, u64
> > +hash_flds) {
> > +	VIRTCHNL_SET_PROTO_HDR_TYPE(hdr, IPV6);
> > +
> > +	if (hash_flds & IECM_ADV_RSS_HASH_FLD_IPV6_SA)
> > +		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, IPV6, SRC);
> > +
> > +	if (hash_flds & IECM_ADV_RSS_HASH_FLD_IPV6_DA)
> > +		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, IPV6, DST); }
> > +
> > +/**
> > + * iecm_fill_adv_rss_tcp_hdr - fill the TCP RSS protocol header
> > + * @hdr: the virtchnl message protocol header data structure
> > + * @hash_flds: the RSS configuration protocol hash fields  */ static
> > +void iecm_fill_adv_rss_tcp_hdr(struct virtchnl_proto_hdr *hdr, u64
> > +hash_flds) {
> > +	VIRTCHNL_SET_PROTO_HDR_TYPE(hdr, TCP);
> > +
> > +	if (hash_flds & IECM_ADV_RSS_HASH_FLD_TCP_SRC_PORT)
> > +		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, TCP,
> SRC_PORT);
> > +
> > +	if (hash_flds & IECM_ADV_RSS_HASH_FLD_TCP_DST_PORT)
> > +		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, TCP,
> DST_PORT); }
> > +
> > +/**
> > + * iecm_fill_adv_rss_udp_hdr - fill the UDP RSS protocol header
> > + * @hdr: the virtchnl message protocol header data structure
> > + * @hash_flds: the RSS configuration protocol hash fields  */ static
> > +void iecm_fill_adv_rss_udp_hdr(struct virtchnl_proto_hdr *hdr, u64
> > +hash_flds) {
> > +	VIRTCHNL_SET_PROTO_HDR_TYPE(hdr, UDP);
> > +
> > +	if (hash_flds & IECM_ADV_RSS_HASH_FLD_UDP_SRC_PORT)
> > +		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, UDP,
> SRC_PORT);
> > +
> > +	if (hash_flds & IECM_ADV_RSS_HASH_FLD_UDP_DST_PORT)
> > +		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, UDP,
> DST_PORT); }
> > +
> > +/**
> > + * iecm_fill_adv_rss_sctp_hdr - fill the SCTP RSS protocol header
> > + * @hdr: the virtchnl message protocol header data structure
> > + * @hash_flds: the RSS configuration protocol hash fields  */ static
> > +void iecm_fill_adv_rss_sctp_hdr(struct virtchnl_proto_hdr *hdr, s64
> > +hash_flds) {
> > +	VIRTCHNL_SET_PROTO_HDR_TYPE(hdr, SCTP);
> > +
> > +	if (hash_flds & IECM_ADV_RSS_HASH_FLD_SCTP_SRC_PORT)
> > +		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, SCTP,
> SRC_PORT);
> > +
> > +	if (hash_flds & IECM_ADV_RSS_HASH_FLD_SCTP_DST_PORT)
> > +		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, SCTP,
> DST_PORT); }
> > +
> > +/**
> > + * iecm_fill_adv_rss_cfg_msg - fill the RSS configuration into
> > +virtchnl message
> > + * @rss_cfg: the virtchnl message to be filled with RSS configuration
> > +setting
> > + * @packet_hdrs: the RSS configuration protocol header types
> > + * @hash_flds: the RSS configuration protocol hash fields
> > + *
> > + * Returns 0 if the RSS configuration virtchnl message is filled
> > +successfully  */ static int iecm_fill_adv_rss_cfg_msg(struct
> > +virtchnl_rss_cfg *rss_cfg,
> > +			  u32 packet_hdrs, u64 hash_flds)
> > +{
> > +	struct virtchnl_proto_hdrs *proto_hdrs = &rss_cfg->proto_hdrs;
> > +	struct virtchnl_proto_hdr *hdr;
> > +
> > +	rss_cfg->rss_algorithm =
> VIRTCHNL_RSS_ALG_TOEPLITZ_ASYMMETRIC;
> > +
> > +	proto_hdrs->tunnel_level = 0;	/* always outer layer */
> > +
> > +	hdr = &proto_hdrs->proto_hdr[proto_hdrs->count++];
> > +	switch (packet_hdrs & IECM_ADV_RSS_FLOW_SEG_HDR_L3) {
> > +	case IECM_ADV_RSS_FLOW_SEG_HDR_IPV4:
> > +		iecm_fill_adv_rss_ip4_hdr(hdr, hash_flds);
> > +		break;
> > +	case IECM_ADV_RSS_FLOW_SEG_HDR_IPV6:
> > +		iecm_fill_adv_rss_ip6_hdr(hdr, hash_flds);
> > +		break;
> > +	default:
> > +		return -EINVAL;
> > +	}
> > +
> > +	hdr = &proto_hdrs->proto_hdr[proto_hdrs->count++];
> > +	switch (packet_hdrs & IECM_ADV_RSS_FLOW_SEG_HDR_L4) {
> > +	case IECM_ADV_RSS_FLOW_SEG_HDR_TCP:
> > +		iecm_fill_adv_rss_tcp_hdr(hdr, hash_flds);
> > +		break;
> > +	case IECM_ADV_RSS_FLOW_SEG_HDR_UDP:
> > +		iecm_fill_adv_rss_udp_hdr(hdr, hash_flds);
> > +		break;
> > +	case IECM_ADV_RSS_FLOW_SEG_HDR_SCTP:
> > +		iecm_fill_adv_rss_sctp_hdr(hdr, hash_flds);
> > +		break;
> > +	default:
> > +		return -EINVAL;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +/**
> > + * iecm_find_adv_rss_cfg_by_hdrs - find RSS configuration with header
> > +type
> > + * @vport: vport structure
> > + * @packet_hdrs: protocol header type to find.
> > + *
> > + * Returns pointer to advance RSS configuration if found or null  */
> > +static struct iecm_adv_rss * iecm_find_adv_rss_cfg_by_hdrs(struct
> > +iecm_vport *vport, u32 packet_hdrs) {
> > +	struct iecm_adapter *adapter = vport->adapter;
> > +	struct iecm_adv_rss *rss;
> > +
> > +	list_for_each_entry(rss, &adapter->config_data.adv_rss_list, list)
> > +		if (rss->packet_hdrs == packet_hdrs)
> > +			return rss;
> > +
> > +	return NULL;
> > +}
> > +
> > +/**
> > + * iecm_dump_adv_rss_cfg_info
> > + * @vport: vport structure
> > + * @packet_hdrs: The protocol headers for RSS configuration
> > + * @hash_flds: The protocol hash fields for RSS configuration
> > + * @prefix: the prefix string description to dump the RSS
> > + * @postfix: the postfix string description to dump the RSS
> > + *
> > + * Dump the advance RSS configuration  **/ static void
> > +iecm_dump_adv_rss_cfg_info(struct iecm_vport *vport,
> > +			   u32 packet_hdrs, u64 hash_flds,
> > +			   const char *prefix, const char *postfix) {
> > +	static char hash_opt[300];
> 
> `static` places it into BSS. If multiple cores call this function at the same
> time, it will mess up.
> I'd just kzalloc() a buffer and then kfree() it.
> 

Hmm yes this is suspect, will fix.

> > +	const char *proto;
> > +
> > +	if (packet_hdrs & IECM_ADV_RSS_FLOW_SEG_HDR_TCP)
> > +		proto = "TCP";
> > +	else if (packet_hdrs & IECM_ADV_RSS_FLOW_SEG_HDR_UDP)
> > +		proto = "UDP";
> > +	else if (packet_hdrs & IECM_ADV_RSS_FLOW_SEG_HDR_SCTP)
> > +		proto = "SCTP";
> > +	else
> > +		return;
> > +
> > +	memset(hash_opt, 0, sizeof(hash_opt));
> > +
> > +	strcat(hash_opt, proto);
> 
> Consider using strlcat() please.
> 

Will check.

> > +	if (packet_hdrs & IECM_ADV_RSS_FLOW_SEG_HDR_IPV4)
> > +		strcat(hash_opt, "v4 ");
> > +	else
> > +		strcat(hash_opt, "v6 ");
> > +
> > +	if (hash_flds & (IECM_ADV_RSS_HASH_FLD_IPV4_SA |
> > +			 IECM_ADV_RSS_HASH_FLD_IPV6_SA))
> > +		strcat(hash_opt, "[IP SA] ");
> > +	if (hash_flds & (IECM_ADV_RSS_HASH_FLD_IPV4_DA |
> > +			 IECM_ADV_RSS_HASH_FLD_IPV6_DA))
> > +		strcat(hash_opt, "[IP DA] ");
> > +	if (hash_flds & (IECM_ADV_RSS_HASH_FLD_TCP_SRC_PORT |
> > +			 IECM_ADV_RSS_HASH_FLD_UDP_SRC_PORT |
> > +			 IECM_ADV_RSS_HASH_FLD_SCTP_SRC_PORT))
> > +		strcat(hash_opt, "[src port] ");
> > +	if (hash_flds & (IECM_ADV_RSS_HASH_FLD_TCP_DST_PORT |
> > +			 IECM_ADV_RSS_HASH_FLD_UDP_DST_PORT |
> > +			 IECM_ADV_RSS_HASH_FLD_SCTP_DST_PORT))
> > +		strcat(hash_opt, "[dst port] ");
> > +
> > +	if (!prefix)
> > +		prefix = "";
> > +
> > +	if (!postfix)
> > +		postfix = "";
> > +
> > +	dev_info(&vport->adapter->pdev->dev, "%s %s %s\n",
> > +		 prefix, hash_opt, postfix);
> > +}
> > +
> > +/**
> > + * iecm_adv_rss_parse_hdrs - parses headers from RSS hash input
> > + * @cmd: ethtool rxnfc command
> > + *
> > + * This function parses the rxnfc command and returns intended
> > + * header types for RSS configuration  */ static u32
> > +iecm_adv_rss_parse_hdrs(struct ethtool_rxnfc *cmd) {
> > +	u32 hdrs = IECM_ADV_RSS_FLOW_SEG_HDR_NONE;
> > +
> > +	switch (cmd->flow_type) {
> > +	case TCP_V4_FLOW:
> > +		hdrs |= IECM_ADV_RSS_FLOW_SEG_HDR_TCP |
> > +			IECM_ADV_RSS_FLOW_SEG_HDR_IPV4;
> > +		break;
> > +	case UDP_V4_FLOW:
> > +		hdrs |= IECM_ADV_RSS_FLOW_SEG_HDR_UDP |
> > +			IECM_ADV_RSS_FLOW_SEG_HDR_IPV4;
> > +		break;
> > +	case SCTP_V4_FLOW:
> > +		hdrs |= IECM_ADV_RSS_FLOW_SEG_HDR_SCTP |
> > +			IECM_ADV_RSS_FLOW_SEG_HDR_IPV4;
> > +		break;
> > +	case TCP_V6_FLOW:
> > +		hdrs |= IECM_ADV_RSS_FLOW_SEG_HDR_TCP |
> > +			IECM_ADV_RSS_FLOW_SEG_HDR_IPV6;
> > +		break;
> > +	case UDP_V6_FLOW:
> > +		hdrs |= IECM_ADV_RSS_FLOW_SEG_HDR_UDP |
> > +			IECM_ADV_RSS_FLOW_SEG_HDR_IPV6;
> > +		break;
> > +	case SCTP_V6_FLOW:
> > +		hdrs |= IECM_ADV_RSS_FLOW_SEG_HDR_SCTP |
> > +			IECM_ADV_RSS_FLOW_SEG_HDR_IPV6;
> > +		break;
> > +	default:
> > +		break;
> > +	}
> > +
> > +	return hdrs;
> > +}
> > +
> > +/**
> > + * iecm_adv_rss_parse_hash_flds - parses hash fields from RSS hash
> > +input
> > + * @cmd: ethtool rxnfc command
> > + *
> > + * This function parses the rxnfc command and returns intended hash
> > +fields for
> > + * RSS configuration
> > + */
> > +static u64 iecm_adv_rss_parse_hash_flds(struct ethtool_rxnfc *cmd) {
> > +	u64 hfld = IECM_ADV_RSS_HASH_INVALID;
> > +
> > +	if (cmd->data & RXH_IP_SRC || cmd->data & RXH_IP_DST) {
> 
> Braces are actually *needed* around bitops. So,
> 
> 	if ((cmd->data & RXH_IP_SRC) || (...)) {
> 

Will fix

> > +		switch (cmd->flow_type) {
> > +		case TCP_V4_FLOW:
> > +		case UDP_V4_FLOW:
> > +		case SCTP_V4_FLOW:
> > +			if (cmd->data & RXH_IP_SRC)
> > +				hfld |=
> IECM_ADV_RSS_HASH_FLD_IPV4_SA;
> > +			if (cmd->data & RXH_IP_DST)
> > +				hfld |=
> IECM_ADV_RSS_HASH_FLD_IPV4_DA;
> > +			break;
> > +		case TCP_V6_FLOW:
> > +		case UDP_V6_FLOW:
> > +		case SCTP_V6_FLOW:
> > +			if (cmd->data & RXH_IP_SRC)
> > +				hfld |=
> IECM_ADV_RSS_HASH_FLD_IPV6_SA;
> > +			if (cmd->data & RXH_IP_DST)
> > +				hfld |=
> IECM_ADV_RSS_HASH_FLD_IPV6_DA;
> > +			break;
> > +		default:
> > +			break;
> > +		}
> > +	}
> 
> 	if (!condition)
> 		goto here;
> 
> as well (-1 indent).
> 

Will fix.

> > +
> > +	if (cmd->data & RXH_L4_B_0_1 || cmd->data & RXH_L4_B_2_3) {
> > +		switch (cmd->flow_type) {
> > +		case TCP_V4_FLOW:
> > +		case TCP_V6_FLOW:
> > +			if (cmd->data & RXH_L4_B_0_1)
> > +				hfld |=
> IECM_ADV_RSS_HASH_FLD_TCP_SRC_PORT;
> > +			if (cmd->data & RXH_L4_B_2_3)
> > +				hfld |=
> IECM_ADV_RSS_HASH_FLD_TCP_DST_PORT;
> > +			break;
> > +		case UDP_V4_FLOW:
> > +		case UDP_V6_FLOW:
> > +			if (cmd->data & RXH_L4_B_0_1)
> > +				hfld |=
> IECM_ADV_RSS_HASH_FLD_UDP_SRC_PORT;
> > +			if (cmd->data & RXH_L4_B_2_3)
> > +				hfld |=
> IECM_ADV_RSS_HASH_FLD_UDP_DST_PORT;
> > +			break;
> > +		case SCTP_V4_FLOW:
> > +		case SCTP_V6_FLOW:
> > +			if (cmd->data & RXH_L4_B_0_1)
> > +				hfld |=
> IECM_ADV_RSS_HASH_FLD_SCTP_SRC_PORT;
> > +			if (cmd->data & RXH_L4_B_2_3)
> > +				hfld |=
> IECM_ADV_RSS_HASH_FLD_SCTP_DST_PORT;
> > +			break;
> > +		default:
> > +			break;
> > +		}
> > +	}
> > +
> > +	return hfld;
> > +}
> > +
> > +/**
> > + * iecm_set_adv_rss_hash_opt - Enable/Disable flow types for RSS hash
> > + * @vport: vport structure
> > + * @cmd: ethtool rxnfc command
> > + *
> > + * Returns Success if the flow input set is supported.
> > + */
> > +int
> > +iecm_set_adv_rss_hash_opt(struct iecm_vport *vport, struct
> > +ethtool_rxnfc *cmd) {
> > +	struct iecm_adapter *adapter = vport->adapter;
> > +	struct iecm_adv_rss *rss, *rss_new;
> > +	u64 hash_flds;
> > +	u32 hdrs;
> > +	int err;
> > +
> > +	if (adapter->state != __IECM_UP)
> > +		return -EIO;
> > +
> > +	if (!iecm_is_cap_ena(adapter, IECM_OTHER_CAPS,
> VIRTCHNL2_CAP_ADV_RSS))
> > +		return -EOPNOTSUPP;
> > +
> > +	hdrs = iecm_adv_rss_parse_hdrs(cmd);
> > +	if (hdrs == IECM_ADV_RSS_FLOW_SEG_HDR_NONE)
> > +		return -EINVAL;
> > +
> > +	hash_flds = iecm_adv_rss_parse_hash_flds(cmd);
> > +	if (hash_flds == IECM_ADV_RSS_HASH_INVALID)
> > +		return -EINVAL;
> > +
> > +	rss_new = kzalloc(sizeof(*rss_new), GFP_KERNEL);
> > +	if (!rss_new)
> > +		return -ENOMEM;
> > +
> > +	/* Since this can fail, do it now to avoid dirtying the list, we'll
> > +	 * copy it from rss_new if it turns out we're updating an existing
> > +	 * filter instead of adding a new one.
> > +	 */
> > +	if (iecm_fill_adv_rss_cfg_msg(&rss_new->cfg_msg, hdrs,
> hash_flds)) {
> > +		kfree(rss_new);
> > +		return -EINVAL;
> > +	}
> > +
> > +	iecm_dump_adv_rss_cfg_info(vport, hdrs, hash_flds,
> > +				   "Input set change for", "is pending");
> > +
> > +	spin_lock_bh(&adapter->adv_rss_list_lock);
> > +	rss = iecm_find_adv_rss_cfg_by_hdrs(vport, hdrs);
> > +	if (rss) {
> > +		if (rss->hash_flds != hash_flds) {
> > +			rss->remove = false;
> > +			memcpy(&rss->cfg_msg, &rss_new->cfg_msg,
> > +			       sizeof(rss_new->cfg_msg));
> > +			kfree(rss_new);
> > +		} else {
> > +			kfree(rss_new);
> > +			spin_unlock_bh(&adapter->adv_rss_list_lock);
> > +			return -EEXIST;
> > +		}
> > +	} else {
> > +		rss = rss_new;
> > +		rss->packet_hdrs = hdrs;
> > +		list_add_tail(&rss->list, &adapter-
> >config_data.adv_rss_list);
> > +	}
> > +	rss->add = true;
> > +	rss->hash_flds = hash_flds;
> > +	spin_unlock_bh(&adapter->adv_rss_list_lock);
> > +
> > +	err = iecm_send_add_del_adv_rss_cfg_msg(vport, true);
> > +	if (err) {
> > +		spin_lock_bh(&adapter->adv_rss_list_lock);
> > +		/* We have to find it again to make sure another thread
> hasn't
> > +		 * already deleted and kfreed it.
> > +		 */
> > +		rss = iecm_find_adv_rss_cfg_by_hdrs(vport, hdrs);
> > +		if (rss) {
> > +			list_del(&rss->list);
> > +			kfree(rss);
> > +		}
> > +		spin_unlock_bh(&adapter->adv_rss_list_lock);
> > +	}
> > +
> > +	if (!err)
> > +		iecm_dump_adv_rss_cfg_info(vport, hdrs, hash_flds,
> > +					   "Input set change for",
> > +					   "successful");
> > +	else
> > +		iecm_dump_adv_rss_cfg_info(vport, hdrs, hash_flds,
> > +					   "Failed to change the input set
> for",
> > +					   NULL);
> 
> It doesn't really look good. You could pass `err` or just `bool success` to the
> function itself and print those there.
> 

Fair.  Will fix.

> > +
> > +	return err;
> > +}
> > +
> > +/**
> > + * iecm_get_adv_rss_hash_opt - Retrieve hash fields for a given
> > +flow-type
> > + * @vport: vport structure
> > + * @cmd: ethtool rxnfc command
> > + *
> > + * Returns Success if the flow input set is supported.
> > + */
> > +int
> > +iecm_get_adv_rss_hash_opt(struct iecm_vport *vport, struct
> > +ethtool_rxnfc *cmd) {
> > +	struct iecm_adapter *adapter = vport->adapter;
> > +	struct iecm_adv_rss *rss;
> > +	u64 hash_flds;
> > +	u32 hdrs;
> > +
> > +	if (adapter->state != __IECM_UP)
> > +		return -EIO;
> > +
> > +	if (!iecm_is_cap_ena(adapter, IECM_OTHER_CAPS,
> VIRTCHNL2_CAP_ADV_RSS))
> > +		return -EOPNOTSUPP;
> > +
> > +	cmd->data = 0;
> > +
> > +	hdrs = iecm_adv_rss_parse_hdrs(cmd);
> > +	if (hdrs == IECM_ADV_RSS_FLOW_SEG_HDR_NONE)
> > +		return -EINVAL;
> > +
> > +	spin_lock_bh(&adapter->adv_rss_list_lock);
> > +	rss = iecm_find_adv_rss_cfg_by_hdrs(vport, hdrs);
> > +	if (rss)
> > +		hash_flds = rss->hash_flds;
> > +	else
> > +		hash_flds = IECM_ADV_RSS_HASH_INVALID;
> > +	spin_unlock_bh(&adapter->adv_rss_list_lock);
> > +
> > +	if (hash_flds == IECM_ADV_RSS_HASH_INVALID)
> > +		return -EINVAL;
> > +
> > +	if (hash_flds & (IECM_ADV_RSS_HASH_FLD_IPV4_SA |
> > +			 IECM_ADV_RSS_HASH_FLD_IPV6_SA))
> > +		cmd->data |= (u64)RXH_IP_SRC;
> > +
> > +	if (hash_flds & (IECM_ADV_RSS_HASH_FLD_IPV4_DA |
> > +			 IECM_ADV_RSS_HASH_FLD_IPV6_DA))
> > +		cmd->data |= (u64)RXH_IP_DST;
> > +
> > +	if (hash_flds & (IECM_ADV_RSS_HASH_FLD_TCP_SRC_PORT |
> > +			 IECM_ADV_RSS_HASH_FLD_UDP_SRC_PORT |
> > +			 IECM_ADV_RSS_HASH_FLD_SCTP_SRC_PORT))
> > +		cmd->data |= (u64)RXH_L4_B_0_1;
> > +
> > +	if (hash_flds & (IECM_ADV_RSS_HASH_FLD_TCP_DST_PORT |
> > +			 IECM_ADV_RSS_HASH_FLD_UDP_DST_PORT |
> > +			 IECM_ADV_RSS_HASH_FLD_SCTP_DST_PORT))
> > +		cmd->data |= (u64)RXH_L4_B_2_3;
> > +
> > +	return 0;
> > +}
> > +
> >  /**
> >   * iecm_pkt_udp_no_pay_len - the length of UDP packet without
> payload
> >   * @fltr: Flow Director filter data structure diff --git
> > a/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
> > b/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
> > index 94af45c36866..c05baf12515c 100644
> > --- a/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
> > +++ b/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
> > @@ -2799,6 +2799,77 @@ int
> iecm_send_add_del_cloud_filter_msg(struct iecm_vport *vport, bool add)
> >  	return err;
> >  }
> >
> > +/**
> > + * iecm_send_add_del_adv_rss_cfg_msg: Send add/del RSS
> configuration
> > +message
> > + * @vport: vport structure
> > + * @add: True to add, false to delete RSS configuration
> > + *
> > + * Request the CP/PF to add/del RSS configuration as specified by the
> > +user via
> > + * ethtool
> > + *
> > + * Return 0 on success, negative on failure  **/ int
> > +iecm_send_add_del_adv_rss_cfg_msg(struct iecm_vport *vport, bool
> add)
> > +{
> > +	struct iecm_adapter *adapter = vport->adapter;
> > +	struct virtchnl_rss_cfg *rss_cfg;
> > +	struct iecm_adv_rss *rss;
> > +	int len, err = -ENXIO;
> > +
> > +	len = sizeof(struct virtchnl_rss_cfg);
> > +	rss_cfg = kzalloc(len, GFP_KERNEL);
> > +	if (!rss_cfg)
> > +		return -ENOMEM;
> > +
> > +	while (true) {
> > +		bool process_rss = false;
> > +
> > +		spin_lock_bh(&adapter->adv_rss_list_lock);
> > +		list_for_each_entry(rss, &adapter-
> >config_data.adv_rss_list, list) {
> > +			if (add && rss->add) {
> > +				/* Only add needs print the RSS information
> */
> > +				process_rss = true;
> > +				rss->add = false;
> > +				memcpy(rss_cfg, &rss->cfg_msg, len);
> > +				break;
> > +			} else if (!add && rss->remove) {
> > +				process_rss = true;
> > +				rss->remove = false;
> > +				memcpy(rss_cfg, &rss->cfg_msg, len);
> > +				break;
> > +			}
> > +		}
> > +		spin_unlock_bh(&adapter->adv_rss_list_lock);
> > +
> > +		/* Don't send mailbox message when there are no RSS to
> add/del */
> > +		if (!process_rss)
> > +			break;
> > +
> > +		if (add) {
> > +			err = iecm_send_mb_msg(adapter,
> VIRTCHNL_OP_ADD_RSS_CFG,
> > +					       len, (u8 *)rss_cfg);
> > +			if (err)
> > +				break;
> > +
> > +			err = iecm_wait_for_event(adapter,
> IECM_VC_ADD_RSS_CFG,
> > +
> IECM_VC_ADD_RSS_CFG_ERR);
> > +		} else {
> > +			err = iecm_send_mb_msg(adapter,
> VIRTCHNL_OP_DEL_RSS_CFG,
> > +					       len, (u8 *)rss_cfg);
> > +			if (err)
> > +				break;
> > +
> > +			err = iecm_min_wait_for_event(adapter,
> IECM_VC_DEL_RSS_CFG,
> > +
> IECM_VC_DEL_RSS_CFG_ERR);
> > +		}
> > +		if (err)
> > +			break;
> > +	}
> > +
> > +	kfree(rss_cfg);
> > +	return err;
> > +}
> > +
> >  /**
> >   * iecm_send_add_fdir_filter_msg: Send add Flow Director filter message
> >   * @vport: vport structure
> > diff --git a/drivers/net/ethernet/intel/include/iecm.h
> > b/drivers/net/ethernet/intel/include/iecm.h
> > index 0aab41cf982c..c7be8c88f9b3 100644
> > --- a/drivers/net/ethernet/intel/include/iecm.h
> > +++ b/drivers/net/ethernet/intel/include/iecm.h
> > @@ -432,6 +432,74 @@ struct iecm_channel_config {
> >  	u8 num_tc;
> >  };
> >
> > +enum iecm_adv_rss_flow_seg_hdr {
> > +	IECM_ADV_RSS_FLOW_SEG_HDR_NONE	= 0x00000000,
> > +	IECM_ADV_RSS_FLOW_SEG_HDR_IPV4	= 0x00000001,
> > +	IECM_ADV_RSS_FLOW_SEG_HDR_IPV6	= 0x00000002,
> > +	IECM_ADV_RSS_FLOW_SEG_HDR_TCP	= 0x00000004,
> > +	IECM_ADV_RSS_FLOW_SEG_HDR_UDP	= 0x00000008,
> > +	IECM_ADV_RSS_FLOW_SEG_HDR_SCTP	= 0x00000010,
> > +};
> > +
> > +#define IECM_ADV_RSS_FLOW_SEG_HDR_L3		\
> > +	(IECM_ADV_RSS_FLOW_SEG_HDR_IPV4	|	\
> > +	 IECM_ADV_RSS_FLOW_SEG_HDR_IPV6)
> > +
> > +#define IECM_ADV_RSS_FLOW_SEG_HDR_L4		\
> > +	(IECM_ADV_RSS_FLOW_SEG_HDR_TCP |	\
> > +	 IECM_ADV_RSS_FLOW_SEG_HDR_UDP |	\
> > +	 IECM_ADV_RSS_FLOW_SEG_HDR_SCTP)
> > +
> > +enum iecm_adv_rss_flow_field {
> > +	/* L3 */
> > +	IECM_ADV_RSS_FLOW_FIELD_IDX_IPV4_SA,
> > +	IECM_ADV_RSS_FLOW_FIELD_IDX_IPV4_DA,
> > +	IECM_ADV_RSS_FLOW_FIELD_IDX_IPV6_SA,
> > +	IECM_ADV_RSS_FLOW_FIELD_IDX_IPV6_DA,
> > +	/* L4 */
> > +	IECM_ADV_RSS_FLOW_FIELD_IDX_TCP_SRC_PORT,
> > +	IECM_ADV_RSS_FLOW_FIELD_IDX_TCP_DST_PORT,
> > +	IECM_ADV_RSS_FLOW_FIELD_IDX_UDP_SRC_PORT,
> > +	IECM_ADV_RSS_FLOW_FIELD_IDX_UDP_DST_PORT,
> > +	IECM_ADV_RSS_FLOW_FIELD_IDX_SCTP_SRC_PORT,
> > +	IECM_ADV_RSS_FLOW_FIELD_IDX_SCTP_DST_PORT,
> > +
> > +	/* The total number of enums must not exceed 64 */
> > +	IECM_ADV_RSS_FLOW_FIELD_IDX_MAX
> > +};
> > +
> > +#define IECM_ADV_RSS_HASH_INVALID	0
> > +#define IECM_ADV_RSS_HASH_FLD_IPV4_SA	\
> > +	BIT_ULL(IECM_ADV_RSS_FLOW_FIELD_IDX_IPV4_SA)
> > +#define IECM_ADV_RSS_HASH_FLD_IPV6_SA	\
> > +	BIT_ULL(IECM_ADV_RSS_FLOW_FIELD_IDX_IPV6_SA)
> > +#define IECM_ADV_RSS_HASH_FLD_IPV4_DA	\
> > +	BIT_ULL(IECM_ADV_RSS_FLOW_FIELD_IDX_IPV4_DA)
> > +#define IECM_ADV_RSS_HASH_FLD_IPV6_DA	\
> > +	BIT_ULL(IECM_ADV_RSS_FLOW_FIELD_IDX_IPV6_DA)
> > +#define IECM_ADV_RSS_HASH_FLD_TCP_SRC_PORT	\
> > +	BIT_ULL(IECM_ADV_RSS_FLOW_FIELD_IDX_TCP_SRC_PORT)
> > +#define IECM_ADV_RSS_HASH_FLD_TCP_DST_PORT	\
> > +	BIT_ULL(IECM_ADV_RSS_FLOW_FIELD_IDX_TCP_DST_PORT)
> > +#define IECM_ADV_RSS_HASH_FLD_UDP_SRC_PORT	\
> > +	BIT_ULL(IECM_ADV_RSS_FLOW_FIELD_IDX_UDP_SRC_PORT)
> > +#define IECM_ADV_RSS_HASH_FLD_UDP_DST_PORT	\
> > +	BIT_ULL(IECM_ADV_RSS_FLOW_FIELD_IDX_UDP_DST_PORT)
> > +#define IECM_ADV_RSS_HASH_FLD_SCTP_SRC_PORT	\
> > +	BIT_ULL(IECM_ADV_RSS_FLOW_FIELD_IDX_SCTP_SRC_PORT)
> > +#define IECM_ADV_RSS_HASH_FLD_SCTP_DST_PORT	\
> > +	BIT_ULL(IECM_ADV_RSS_FLOW_FIELD_IDX_SCTP_DST_PORT)
> > +
> > +/* bookkeeping of advanced RSS configuration */ struct iecm_adv_rss {
> > +	struct list_head list;
> > +	u32 packet_hdrs;
> > +	u64 hash_flds;
> > +	struct virtchnl_rss_cfg cfg_msg;
> > +	bool remove;	/* RSS filter needs to be deleted */
> > +	bool add;	/* RSS filter needs to be added */
> > +};
> > +
> >  enum iecm_fdir_flow_type {
> >  	/* NONE - used for undef/error */
> >  	IECM_FDIR_FLOW_NONE = 0,
> > @@ -878,6 +946,11 @@ void iecm_vport_set_hsplit(struct iecm_vport
> > *vport, bool ena);  void iecm_add_del_ether_addrs(struct iecm_vport
> > *vport, bool add, bool async);  int iecm_set_promiscuous(struct
> > iecm_adapter *adapter);  int
> iecm_send_add_del_cloud_filter_msg(struct
> > iecm_vport *vport, bool add);
> > +int iecm_send_add_del_adv_rss_cfg_msg(struct iecm_vport *vport,
> bool
> > +add); int iecm_set_adv_rss_hash_opt(struct iecm_vport *vport,
> > +			      struct ethtool_rxnfc *cmd);
> > +int iecm_get_adv_rss_hash_opt(struct iecm_vport *vport,
> > +			      struct ethtool_rxnfc *cmd);
> >  int iecm_send_add_fdir_filter_msg(struct iecm_vport *vport);  int
> > iecm_send_del_fdir_filter_msg(struct iecm_vport *vport);  int
> > iecm_get_fdir_fltr_entry(struct iecm_vport *vport,
> > --
> > 2.33.0
> 
> Thanks,
> Al

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

