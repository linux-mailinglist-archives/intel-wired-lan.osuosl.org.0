Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A05EE4A7AE6
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Feb 2022 23:17:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4FC0C40A3E;
	Wed,  2 Feb 2022 22:17:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id am22Q5ypfgBz; Wed,  2 Feb 2022 22:17:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DC70140A3B;
	Wed,  2 Feb 2022 22:17:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 14C1E1BF5DE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 22:17:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6CB1A83E05
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 22:17:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9YNNha3GMuAi for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Feb 2022 22:17:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4710783E81
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 22:16:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643840240; x=1675376240;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6II3FfOg1EADZ8IHDMG+jRPaWdW7LRkeJxKX2b2MFEM=;
 b=I7FwaGnuKWT/LMZFrxGHRboeYiviROHu8QvDFyx1P96OJkYu+ccTt04o
 FSMzSUAF0hvGZsEWDkU29NehcafMoaKFG5uFL7cEFa5FCaPgFAFX+4V9s
 l4AacM3AfpWRWwYl2xPZfuHOmuS/XnlLtjAYsrMvrcfn+ISDT7+RdKzid
 0OcpoHtFFhR3kcl40aAQ555TuA4OTw8hnNvjS2MX2LwLXEA90iwhYLVBd
 pEZcnjuD1eHCN7E0X+i19ifHXKt7WktQyQhHK9/5oKd5c1eXmI1L5Y12b
 khlgjMp+rJlh17gMBv+xIg7/K3InLBg3HZmHBByHhlsa/gzlrCmGA6igA A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10246"; a="311336118"
X-IronPort-AV: E=Sophos;i="5.88,338,1635231600"; d="scan'208";a="311336118"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 14:16:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,338,1635231600"; d="scan'208";a="699102545"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga005.jf.intel.com with ESMTP; 02 Feb 2022 14:16:34 -0800
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 2 Feb 2022 14:16:34 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 2 Feb 2022 14:16:34 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 2 Feb 2022 14:16:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m/AWDLsfGmk5ixGZyvYy1db4cLOQmyqaYGVr/M9yPXnfrxjCOkG4SgK74U5J0fiDDDBnplOaQhIGjmQHZr8TlG6dMuSKTgv8Nwxi/7KyQ9axkcb/bIB0EPHiTO4xz7R72CVjwTveLS0mG62qQ/0Xb7FWMnOlthl4ASKncYRKrWcFhGk3Xbn4Zu+LyLK2/0i/Pt7wNUAC3IYZOVaGV8zAEpoFQq/WgQOGtFHfpymQ5BeBiK0/2yjwzXTo4MshC2UOEpfpSMVabWShDvB41dEnUgjR9pV2y8zEGV4HVv7fZOQzDk/Z8bTnby1B6JVKM3GrR/QKXaukt0Vp0YatopvIJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K1q1TTB48WvcHa7v1vZko3UBpaIX2D7pLfzJkjwmUF4=;
 b=ehihTM5uccqDBDwux8Mzn8eD8rhcp5B5jrKN8rSYUBj1eH/18jaAYBrFSMpwBV3wv8yQAyqtEvCy3fwT+y1Ed9piChfoW2fJ1dPldaWZD7ud/iPHAbpT1D9QlRQU10Nd0quWmvM3v8tH9LBIlDtG4wQ7sVI+P8OoelPfqr51eRHeoRA+NHQ5jPh+O5pR+hZtFXYzF8lLwnobpUte+c342Wdrto4R58v+R8Q1RYQJQh9AZMmU11D36UN8+RSno0wLoIPUeA9UES1XQQfzK4HjGlxOwq+2us6hx1n8rSgPYIZgFxKZ+xuea4itWVk6Ixg4d493CLVK1tfoec5J8371fA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from CO1PR11MB5186.namprd11.prod.outlook.com (2603:10b6:303:95::14)
 by BN8PR11MB3843.namprd11.prod.outlook.com (2603:10b6:408:88::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.12; Wed, 2 Feb
 2022 22:16:30 +0000
Received: from CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::3d01:b3b2:d2f0:5be1]) by CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::3d01:b3b2:d2f0:5be1%5]) with mapi id 15.20.4951.012; Wed, 2 Feb 2022
 22:16:30 +0000
From: "Brady, Alan" <alan.brady@intel.com>
To: "Lobakin, Alexandr" <alexandr.lobakin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 04/19] iecm: add api_init and
 controlq init
Thread-Index: AQHYE97YRa01f2+p/EuTRTcc8O6KfKx4WAkAgAiFILA=
Date: Wed, 2 Feb 2022 22:16:30 +0000
Message-ID: <CO1PR11MB5186D7D39D0B56FF4AF263A58F279@CO1PR11MB5186.namprd11.prod.outlook.com>
References: <20220128001009.721392-1-alan.brady@intel.com>
 <20220128001009.721392-5-alan.brady@intel.com>
 <20220128120924.20808-1-alexandr.lobakin@intel.com>
In-Reply-To: <20220128120924.20808-1-alexandr.lobakin@intel.com>
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
x-ms-office365-filtering-correlation-id: 930573f6-a211-4741-f4ef-08d9e699a9ef
x-ms-traffictypediagnostic: BN8PR11MB3843:EE_
x-microsoft-antispam-prvs: <BN8PR11MB384353749D7D0A3EB8CD5B448F279@BN8PR11MB3843.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DZ/qEqbnNVEWFRZm68rtS+hpuOU9Gs/dJVlj1f8zm1fwUCmnp0O580SQDGnIq+mxHDGvEvhuTFGuAxCssGlTEaH3A5aM4OP7gRpdFXTVE4QZOD6rJwZLalkujDAASnyULY8c8y63e4KDTOASanXMja5/s2zx3XbRiCmRHIYmR5xl+MswmWtqv8h+Teq8vTGeAdExCAxFhh2U8aEyPQA9HHqjmST+qR9tMvcY8lKwjCeIGJHgV0bSj3iusAcbpRfPp954BvmLkGxhgSfs+bH2SL8woZk8WBdmzsAXR4KEXsb76t7u7/h3zHSuqiSfrivX8K5NXXXJNAC1lLIPMiv9FS+QYOalKwMF/ceIRKRLMun5H2k6bSxOw+quc5lp0P+juxFfhh+hMR1yyamHpObpBxsRFamm0H5E0tUTL0dP9ASlFxHdWY4jTpIPIsEbNFgSCKTk1T3eGlsNDKVTE1p/3XawvN9yXiVvpDtIq3pcw58L2JtPmEbd2I1g+0+bwjYt/GEn/4qQYzrgnxtXB7GI1flVV/YCg8Yvw0WlGdk9aZZzKUZ12gXQd4Q5QaEfTsUcOmCpTHNW96fqM4DddtLxZrknBF0vg1zL8LJpBKGdtr3YLCyHdq5nLo3iYU4mUqPNefN1Ptl9GDR+93+7FN9odmjMIeU2XnGLIZwZL7ro61561cfas6ugUFfIwnyd0j+/6IdnjO/K1gBJtICltgSzvA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5186.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(86362001)(55016003)(54906003)(6506007)(7696005)(186003)(38100700002)(508600001)(316002)(83380400001)(6636002)(2906002)(52536014)(8676002)(71200400001)(33656002)(122000001)(5660300002)(9686003)(82960400001)(53546011)(64756008)(66446008)(66556008)(66946007)(66476007)(6862004)(76116006)(4326008)(26005)(107886003)(38070700005)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Du0KfyD/VKvvb9yijP1YKO2NH2U12FkJl3oMqeYddFlkab7VZec3gL1P4Did?=
 =?us-ascii?Q?JR2u/ZEY0zEMHmO+7OHtFQigbfImpxJQghjWTNW+HEXvZlljXnThHFb4F9WP?=
 =?us-ascii?Q?ZmZfJ57uDzPcTFDftk9OdNMZ1/YZMbv4TlserXIf1AQZTsPAAn8YRZfdpyV8?=
 =?us-ascii?Q?5ITWBA1JDD5LFjPSjBAEUOelC42hbIz5+/ys4HW7YpeiT2vliGPozDOy21zn?=
 =?us-ascii?Q?h4jnMFnbvMzEbynEwE7SGg0JLuA51jlrVkZVSEoKXDX91FXQQKmMqgemhMF7?=
 =?us-ascii?Q?VwC3GSZdHCMB09bwdusay8dPx2cQvu9d1TaxIRt/bNq60OsvNOlmc4nO+XYE?=
 =?us-ascii?Q?mBDNBDK+YTPmawWUSOPz0v848iwzhX6VLr8OWxA6CDKL1SwpciN7e0jqcdqO?=
 =?us-ascii?Q?nEw8h4B8MwL/GEiKb9a1QAL3JdaqPHo6PXaKHi5DItJ8q3aelH8b4bEpGMit?=
 =?us-ascii?Q?VszXmQYMuXpND/RIu+GbvJLeT0EZVj62/bDAKe+ktFJHxCIOiIP7WFslusH6?=
 =?us-ascii?Q?TRAms6fofRxaOQuf9x3vyojcXIUCFzti1omLV+FH+av3kn/ua0sb/5nWcVUC?=
 =?us-ascii?Q?rUKFEl5DN0ovJdzHHcmFnMMxlXrlftCDK+VYHB7oF6JrkaUg4AiK6D2ltvcp?=
 =?us-ascii?Q?MCwuSMmaYkjCzBAYb1DEB1cd4ZkTpJgRA3f+ED7cpz9gyOunc2wkTWoOfZ0Y?=
 =?us-ascii?Q?xKsv4svUTq76lyXWYI/wdbUrMJE2ba4CJZt/obUsXtdOY5kO9hH5axs4ckM2?=
 =?us-ascii?Q?JJspCQR7UCsl0I5v/lhIFqcd6IeX4tU0qycO+Q4n/kshhuSQLTWASXqrDEbg?=
 =?us-ascii?Q?ahP9n8S40J2DKiKY9VUxo7HNV3brP5PAfZsmMHSlVyeQ2hb/xzraNwEy1OvX?=
 =?us-ascii?Q?ESjBGso7gNgNLylN6dTVr8ZtEEChgvDZnd0pcE8x8LKttOD/fg1yzhx3tWGR?=
 =?us-ascii?Q?u1U95XzrjRbSOPbvTr9gzRFU+TNPbfMY9ytAgo3EVH1/zEFHKYgDdo50fjAN?=
 =?us-ascii?Q?rk78U7xWaI+jHzLbCPozvNDA1spGVPQVRKkmsnPXrY68EPUbpgCPb67F6+hL?=
 =?us-ascii?Q?vKPzpCd/q9wVHmykx8cIfdy1qjTclu4syM3d3PBGpWA05Hk+IRXngkYRoN6L?=
 =?us-ascii?Q?be67SQuSBYerouuIm93xMPfMqzIp3vUDKpVAiLTMfB1aPLmNtpgn4bPORbL6?=
 =?us-ascii?Q?OogG9RkXl+8LvqvRVNbnJooqW9ZOKtPL6NN9P/Jihr3vE1zWR0+hWUyWekYI?=
 =?us-ascii?Q?kgSgibBYWfS2RuKhDuJunRmYUCS9XrK5dLm4c/fdJZ3bZSoX8U5jO834NmWk?=
 =?us-ascii?Q?2//5ug9NpkthQCuIw+HgApdeJfyVNPwp+PaJyXyEDq9ppWyVIQxyOpbXzK/y?=
 =?us-ascii?Q?fyGvBc+y+Nqp2/NoMFo+EzZ2HWqPvwl5LEYIU1dOWbXcQjYequJY72zI3ZsA?=
 =?us-ascii?Q?7CtyVyf+tF8CK7zy07kT1BwiKYZzWQo4mUi4JWpv7ReKX6z1g/ExR+D2sv/h?=
 =?us-ascii?Q?Ze4sD6/YqKBybCRAyQHo13sGgcN+uHh+nN2siv454HNPchBCsy0zUcPh8gkY?=
 =?us-ascii?Q?wfump8LTq//ytImKWSNSxnPbvb0gt+zwPkZDepKEHQIFQZCZ59DL+zH9HOGw?=
 =?us-ascii?Q?E9cAoK5p5pAS9htfCebCJAY=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5186.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 930573f6-a211-4741-f4ef-08d9e699a9ef
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2022 22:16:30.3533 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TCmvyNtm1oJiZVKwSlL+DJ3oDjEsRkLVfJFswC8c4SPaEYskHPtan6oxPlnEhIp8McHkKYwSVVle6cCxy9N0QA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3843
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 04/19] iecm: add api_init and
 controlq init
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
> Sent: Friday, January 28, 2022 4:09 AM
> To: Brady, Alan <alan.brady@intel.com>
> Cc: Lobakin, Alexandr <alexandr.lobakin@intel.com>; intel-wired-
> lan@lists.osuosl.org; Burra, Phani R <phani.r.burra@intel.com>; Chittim, Madhu
> <madhu.chittim@intel.com>; Linga, Pavan Kumar
> <pavan.kumar.linga@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH net-next 04/19] iecm: add api_init and
> controlq init
> 
> From: Alan Brady <alan.brady@intel.com>
> Date: Thu, 27 Jan 2022 16:09:54 -0800
> 
> > Initializing device registers is offloaded into function pointers
> > given to iecm from the dependent device driver for a given device, as
> > offsets can vary wildly. This also adds everything needed to setup and
> > use a controlq which uses some of those registers.
> >
> > At the end of probe we kicked off a hard reset and this implements
> > what's needed to handle that reset and continue init.
> >
> > Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> > Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> > Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> > Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > Signed-off-by: Alan Brady <alan.brady@intel.com>
> > ---
> >  drivers/net/ethernet/intel/iecm/Makefile      |   3 +
> >  .../net/ethernet/intel/iecm/iecm_controlq.c   | 649 ++++++++++++++++++
> >  .../ethernet/intel/iecm/iecm_controlq_setup.c | 175 +++++
> >  drivers/net/ethernet/intel/iecm/iecm_lib.c    | 191 +++++-
> >  .../net/ethernet/intel/iecm/iecm_virtchnl.c   | 172 +++++
> >  drivers/net/ethernet/intel/include/iecm.h     |  52 ++
> >  .../ethernet/intel/include/iecm_controlq.h    | 117 ++++
> >  .../intel/include/iecm_controlq_api.h         | 185 +++++
> >  drivers/net/ethernet/intel/include/iecm_mem.h |  20 +
> >  9 files changed, 1563 insertions(+), 1 deletion(-)  create mode
> > 100644 drivers/net/ethernet/intel/iecm/iecm_controlq.c
> >  create mode 100644
> > drivers/net/ethernet/intel/iecm/iecm_controlq_setup.c
> >  create mode 100644 drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
> >  create mode 100644 drivers/net/ethernet/intel/include/iecm_controlq.h
> >  create mode 100644
> > drivers/net/ethernet/intel/include/iecm_controlq_api.h
> >  create mode 100644 drivers/net/ethernet/intel/include/iecm_mem.h
> >
> 
> --- 8< ---
> 
> > diff --git a/drivers/net/ethernet/intel/include/iecm_controlq_api.h
> > b/drivers/net/ethernet/intel/include/iecm_controlq_api.h
> > new file mode 100644
> > index 000000000000..5f624f005d33
> > --- /dev/null
> > +++ b/drivers/net/ethernet/intel/include/iecm_controlq_api.h
> > @@ -0,0 +1,185 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> > +/* Copyright (c) 2020, Intel Corporation. */
> > +
> > +#ifndef _IECM_CONTROLQ_API_H_
> > +#define _IECM_CONTROLQ_API_H_
> > +
> > +#include "iecm_mem.h"
> > +
> > +struct iecm_hw;
> > +
> > +/* Used for queue init, response and events */ enum iecm_ctlq_type {
> > +	IECM_CTLQ_TYPE_MAILBOX_TX	= 0,
> > +	IECM_CTLQ_TYPE_MAILBOX_RX	= 1,
> > +	IECM_CTLQ_TYPE_CONFIG_TX	= 2,
> > +	IECM_CTLQ_TYPE_CONFIG_RX	= 3,
> > +	IECM_CTLQ_TYPE_EVENT_RX		= 4,
> > +	IECM_CTLQ_TYPE_RDMA_TX		= 5,
> > +	IECM_CTLQ_TYPE_RDMA_RX		= 6,
> > +	IECM_CTLQ_TYPE_RDMA_COMPL	= 7
> > +};
> > +
> > +/* Generic Control Queue Structures */ struct iecm_ctlq_reg {
> > +	/* used for queue tracking */
> > +	u32 head;
> > +	u32 tail;
> > +	/* Below applies only to default mb (if present) */
> > +	u32 len;
> > +	u32 bah;
> > +	u32 bal;
> > +	u32 len_mask;
> > +	u32 len_ena_mask;
> > +	u32 head_mask;
> > +};
> > +
> > +/* Generic queue msg structure */
> > +struct iecm_ctlq_msg {
> > +	u16 vmvf_type; /* represents the source of the message on recv */
> > +#define IECM_VMVF_TYPE_VF 0 #define IECM_VMVF_TYPE_VM 1 #define
> > +IECM_VMVF_TYPE_PF 2
> > +	u16 opcode;
> > +	u16 data_len;	/* data_len = 0 when no payload is attached */
> > +	union {
> > +		u16 func_id;	/* when sending a message */
> > +		u16 status;	/* when receiving a message */
> > +	};
> > +	union {
> > +		struct {
> > +			u32 chnl_retval;
> > +			u32 chnl_opcode;
> > +		} mbx;
> > +	} cookie;
> 
> One field union? If it will be expanded later, please unionize it only then.
> 

Will fix

> > +	union {
> > +#define IECM_DIRECT_CTX_SIZE	16
> > +#define IECM_INDIRECT_CTX_SIZE	8
> > +		/* 16 bytes of context can be provided or 8 bytes of context
> > +		 * plus the address of a DMA buffer
> > +		 */
> > +		u8 direct[IECM_DIRECT_CTX_SIZE];
> > +		struct {
> > +			u8 context[IECM_INDIRECT_CTX_SIZE];
> > +			struct iecm_dma_mem *payload;
> > +		} indirect;
> > +	} ctx;
> > +};
> > +
> > +/* Generic queue info structures */
> > +/* MB, CONFIG and EVENT q do not have extended info */ struct
> > +iecm_ctlq_create_info {
> > +	enum iecm_ctlq_type type;
> > +	int id; /* absolute queue offset passed as input
> > +		 * -1 for default mailbox if present
> > +		 */
> > +	u16 len; /* Queue length passed as input */
> > +	u16 buf_size; /* buffer size passed as input */
> > +	u64 base_address; /* output, HPA of the Queue start  */
> > +	struct iecm_ctlq_reg reg; /* registers accessed by ctlqs */
> > +
> > +	int ext_info_size;
> > +	void *ext_info; /* Specific to q type */ };
> > +
> > +/* Control Queue information */
> > +struct iecm_ctlq_info {
> > +	struct list_head cq_list;
> > +
> > +	enum iecm_ctlq_type cq_type;
> > +	int q_id;
> > +	/* control queue lock */
> > +	struct mutex cq_lock;
> > +
> > +	/* used for interrupt processing */
> > +	u16 next_to_use;
> > +	u16 next_to_clean;
> > +	u16 next_to_post;		/* starting descriptor to post buffers
> > +					 * to after recev
> > +					 */
> > +
> > +	struct iecm_dma_mem desc_ring;	/* descriptor ring memory
> > +					 * iecm_dma_mem is defined in
> OSdep.h
> > +					 */
> > +	union {
> > +		struct iecm_dma_mem **rx_buff;
> > +		struct iecm_ctlq_msg **tx_msg;
> > +	} bi;
> > +
> > +	u16 buf_size;			/* queue buffer size */
> > +	u16 ring_size;			/* Number of descriptors */
> > +	struct iecm_ctlq_reg reg;	/* registers accessed by ctlqs */
> > +};
> > +
> > +/* PF/VF mailbox commands */
> > +enum iecm_mbx_opc {
> > +	/* iecm_mbq_opc_send_msg_to_pf:
> > +	 *	usage: used by PF or VF to send a message to its CPF
> > +	 *	target: RX queue and function ID of parent PF taken from HW
> > +	 */
> > +	iecm_mbq_opc_send_msg_to_pf		= 0x0801,
> > +
> > +	/* iecm_mbq_opc_send_msg_to_vf:
> > +	 *	usage: used by PF to send message to a VF
> > +	 *	target: VF control queue ID must be specified in descriptor
> > +	 */
> > +	iecm_mbq_opc_send_msg_to_vf		= 0x0802,
> > +
> > +	/* iecm_mbq_opc_send_msg_to_peer_pf:
> > +	 *	usage: used by any function to send message to any peer PF
> > +	 *	target: RX queue and host of parent PF taken from HW
> > +	 */
> > +	iecm_mbq_opc_send_msg_to_peer_pf	= 0x0803,
> > +
> > +	/* iecm_mbq_opc_send_msg_to_peer_drv:
> > +	 *	usage: used by any function to send message to any peer driver
> > +	 *	target: RX queue and target host must be specific in descriptor
> > +	 */
> > +	iecm_mbq_opc_send_msg_to_peer_drv	= 0x0804,
> > +};
> > +
> > +/* API support for control queue management */
> > +
> > +/* Will init all required q including default mb.  "q_info" is an
> > +array of
> > + * create_info structs equal to the number of control queues to be created.
> > + */
> > +int iecm_ctlq_init(struct iecm_hw *hw, u8 num_q,
> > +		   struct iecm_ctlq_create_info *q_info);
> > +
> > +/* Allocate and initialize a single control queue, which will be
> > +added to the
> > + * control queue list; returns a handle to the created control queue
> > +*/ int iecm_ctlq_add(struct iecm_hw *hw,
> > +		  struct iecm_ctlq_create_info *qinfo,
> > +		  struct iecm_ctlq_info **cq);
> > +
> > +/* Deinitialize and deallocate a single control queue */ void
> > +iecm_ctlq_remove(struct iecm_hw *hw,
> > +		      struct iecm_ctlq_info *cq);
> > +
> > +/* Sends messages to HW and will also free the buffer*/ int
> > +iecm_ctlq_send(struct iecm_hw *hw,
> > +		   struct iecm_ctlq_info *cq,
> > +		   u16 num_q_msg,
> > +		   struct iecm_ctlq_msg q_msg[]);
> > +
> > +/* Receives messages and called by interrupt handler/polling
> > + * initiated by app/process. Also caller is supposed to free the
> > +buffers  */ int iecm_ctlq_recv(struct iecm_ctlq_info *cq, u16
> > +*num_q_msg,
> > +		   struct iecm_ctlq_msg *q_msg);
> > +
> > +/* Reclaims send descriptors on HW write back */ int
> > +iecm_ctlq_clean_sq(struct iecm_ctlq_info *cq, u16 *clean_count,
> > +		       struct iecm_ctlq_msg *msg_status[]);
> > +
> > +/* Indicate RX buffers are done being processed */ int
> > +iecm_ctlq_post_rx_buffs(struct iecm_hw *hw,
> > +			    struct iecm_ctlq_info *cq,
> > +			    u16 *buff_count,
> > +			    struct iecm_dma_mem **buffs);
> > +
> > +/* Will destroy all q including the default mb */ int
> > +iecm_ctlq_deinit(struct iecm_hw *hw);
> > +
> > +#endif /* _IECM_CONTROLQ_API_H_ */
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
