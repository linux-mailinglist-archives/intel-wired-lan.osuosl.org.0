Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BF75973712E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jun 2023 18:07:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5F7AD6136C;
	Tue, 20 Jun 2023 16:07:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5F7AD6136C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687277272;
	bh=q3XWb9ZaNCeIh14EzHMI0qtILdAMkVrLXSKYY8KjIgs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HqAzGxYr/0rF7qr3DjDV766LE/ekumtG0NCA7ccs2qxXC+8+8LCgZ5JYch3dMRBUs
	 UFDu7yj1KkfvFKIEuUts91//rBHpz353kKDsqnr7OWX98sBXwi9iIwqM3GI9jSdGc4
	 LPs9AxkG6ZPbAc57647ProOSMGJbDuCj2KxiZtuJd14DmwBhPH/yLPCMkmKTs2r0jJ
	 HCfm1ki+lJCUNfCsQeiw3Nkz6SYHxHBoqPgdfEwEWY3/4frnFAFfYUWM5kpFRKkMCK
	 TcuJQu8MZM5awXy88AXi1fw5f9I99R6LjkbVD4OIrnM+gAd0FglIX2Yojgjr/RF6ms
	 QyFhbT1BYmLQQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t2QDQ-XBgmhx; Tue, 20 Jun 2023 16:07:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2D63561246;
	Tue, 20 Jun 2023 16:07:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2D63561246
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 90B941BF48B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 16:07:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6505740350
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 16:07:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6505740350
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sGKz_r4YNAeM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jun 2023 16:07:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CEEB840247
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CEEB840247
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 16:07:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="344646001"
X-IronPort-AV: E=Sophos;i="6.00,257,1681196400"; d="scan'208";a="344646001"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 09:07:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="858634985"
X-IronPort-AV: E=Sophos;i="6.00,257,1681196400"; d="scan'208";a="858634985"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP; 20 Jun 2023 09:07:41 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 20 Jun 2023 09:07:40 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 20 Jun 2023 09:07:40 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 20 Jun 2023 09:07:40 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 20 Jun 2023 09:07:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DttUS/zUBP7yRD3Reh8UFKZJewUEib/Ss/pMrPexWQoTB0lgElcBEDE2P499OII1ttB5aUpzwDntW07GGZhmojVKEA5vkYvI2SLdLNKKC61JyvBsAU0LVo70KQsybDiDH7jaXV3zzyuQPxQQzatv5uGgLFSQ02y4KhMoKBPwGxcaj/N64Jgej3yfRHYf/qXCJ4nPdnisEfL4Mq5mK/kw1rpNIXVWWEHqt2U/YzEwOM5yun9ZA91t9I9G+62kQSgrOA8BD5nzRs670DgwKA6cdXo7+HbrJdc+9T+/0AHSskXztfXVdayQTr9DuXwZcCyfF4HxL87wghrXhbFnDnW1Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Jcif6sYEzPYkXvbIsUE7p7/L+UIPel2ulgStdK3lvSs=;
 b=Ms3b6S/2C8Xi3zw68t4GNs1FmSERaK0cE07azETeGzkS7+YKsboCN6yBpJy1dTlvED5Ls4FOCU2rq9LLQO+AypmRaoP8zMDbA4izSRiJarZyPdW+YpWQmBRASl9jx70AxYcfWt4z5s03Yn56ZLnchGpPMd43dgJE45eG/svi67GJZaD/7IE4P+ZJbF7ScPGOsocxLauQMDopcnGLHepnCx7t9idKE+LVNxBFXnnFZtWJqhErlaskfz/W0QK0Rg75J5N5RHhLyjBUhLjAd1Y1zii9LT9BX7tBoK/WNgCDq4nVu60r9TW0UWDRLKGoDTNB9LPUJLe8ki0WjfFg0zCh+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW5PR11MB5811.namprd11.prod.outlook.com (2603:10b6:303:198::18)
 by IA1PR11MB6441.namprd11.prod.outlook.com (2603:10b6:208:3aa::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.37; Tue, 20 Jun
 2023 16:07:34 +0000
Received: from MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::5e37:38f7:33d2:137a]) by MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::5e37:38f7:33d2:137a%7]) with mapi id 15.20.6500.031; Tue, 20 Jun 2023
 16:07:34 +0000
From: "Ertman, David M" <david.m.ertman@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 05/10] ice: process events
 created by lag netdev event handler
Thread-Index: AQHZn6anK+ryCN5cMUGAyaz+Sr7Z4q+N6FwAgAX63mA=
Date: Tue, 20 Jun 2023 16:07:34 +0000
Message-ID: <MW5PR11MB58114B2885360C1718DCC62ADD5CA@MW5PR11MB5811.namprd11.prod.outlook.com>
References: <20230615162932.762756-1-david.m.ertman@intel.com>
 <20230615162932.762756-6-david.m.ertman@intel.com>
 <ce07a11a-20eb-dcb9-22e8-489333a0799c@intel.com>
In-Reply-To: <ce07a11a-20eb-dcb9-22e8-489333a0799c@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW5PR11MB5811:EE_|IA1PR11MB6441:EE_
x-ms-office365-filtering-correlation-id: 698da8ad-c250-4449-2490-08db71a875d6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2imN4iSSZ0jeVpMIK/Q9SeX/WXVL2wZ85OkGEEQxCHkQfyiIqpbji4oNDRRmmGHqc/h6GdIQr4DLsHDBxC0iGz+gnaejvd25+w0Gfr5adcbBY52WA7WwsOMDGc1/P3efGnIBuXcqoDED4DnCPYiA9yEbJ0eSdcUBZb99cECWC6Tvt2ct6hA6ZIvr+0nstGe5xCKH1ZSlfggpEYhuXbFuRUnt7KdcL4rI+u0lPsDn+F8wRCXXgd2JSjiWPtEG+E1jft7XFQmKuepZMPb9gFShE2uwfvVqGNskoQjsjNFjW09ZrGiTOhFd6RFAQhONRomY9ZJmtmowwHSb2Q+qF13gcG5Ej8ozuKjC+xekAR1ELbAEmjvyklS++Ga+oifZp2cmxSWO/Bw+IYFBd/NP0/2HY19HbkOm0K/+zm2IqKRKMK6UUKQic72QjsB6Tv3aGtzSu3otZ3NFLfVKPrXYhmxMLC4G6k1AQyAR9m3P9qA7HnRk3G+/pxT8zkkKBeZ2a4cLtCJUVfhPGeKnXFriBaMAkk8QpGuFXXJRJ4YGUc8TYEQ1QZ9R3snA6Vg842bvBqoeYutSlnB7J8StW3dcGwwTnlZQE8N3QBHV8qIB80vPME/yJmrIShpbZhIa0UUbMyeA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR11MB5811.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(396003)(346002)(366004)(376002)(39860400002)(451199021)(52536014)(82960400001)(33656002)(122000001)(38100700002)(83380400001)(86362001)(41300700001)(8936002)(38070700005)(8676002)(5660300002)(66476007)(66446008)(316002)(64756008)(66946007)(66556008)(6506007)(53546011)(9686003)(26005)(55016003)(186003)(478600001)(7696005)(54906003)(110136005)(4326008)(71200400001)(76116006)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TmZYVE5NT28zUzVQUzhsUktJY3BDY05LZ015K0VFQ2VmSmVQdHVyRHFJaDJS?=
 =?utf-8?B?QmU2dEg3NG1YY0xDcmp0bzZKTnNVbjJUTmFseHEvbTY1QlZEU0RuMlVkU25W?=
 =?utf-8?B?eWxhMktLM0FRbkFGR2lwbG5LRVYyeHdkSkZTME5NMzBGMVFWLzVvUFB3QzJt?=
 =?utf-8?B?dTh2VGhCR010dkN3QzFuM3NEQUNJM0IxaE9MVmNMaDM1VE05QXlIcnJCOUhR?=
 =?utf-8?B?M3VIVmRLREw1YXZsV2NLd2x2S2tYZmdVVThoTnk0RU5rejh5UTBlQ1BWcmxH?=
 =?utf-8?B?WkhNbU9IRC9iTlFjbll0b0lwYXpnNjBYUS85eVdtL09kOFoxbGYrTGJLZVRj?=
 =?utf-8?B?MkN0d1ViV2R4VkNDRnh1d29HZjc1dG5TVTJQOW5pVmovdTdqRXAwNkthT1FF?=
 =?utf-8?B?a1FDNGxueUhEb3NDNFQvbTFUWlhlcVA0L1d1QkF2YWtjTXhvUFBRYlZXdU9S?=
 =?utf-8?B?OGlqUnhpV3lYSmhJcFdDMUdSSFhEbVZCT1AwZTBRSUdzUUcxSFNyTEZDdmNp?=
 =?utf-8?B?SFhUK213bUQvMWhCUkRTTHMwSEt2WjgydHk0YTRoRXJTMWNoRTRqb3ZsMXBu?=
 =?utf-8?B?T0QvQ0E1VlBmS04reUVkdGlRa25sNXprdnhHMjh0VVdYSllidyt4TkJ0K2R1?=
 =?utf-8?B?RkxPbk5zdWFKVXYyOVZsaGE4QW5tUVpuWkdNdXIyNTkzenZueGo0MVZORE1G?=
 =?utf-8?B?SVlwRzFZYVQvdStPcE5zZFUwMCsxQm9lY1NxTGkwMDliYTZGWjRJbmtSNjI1?=
 =?utf-8?B?aG1uWENCRGFJY25jL2pJZ1oxemN1VVBWdmhXc05XOGRPWi9ackxMV2gyMlBa?=
 =?utf-8?B?ZUppWldHQ1pKdzk5YmJuRWloUjRJQmhRdUxNQWtOaHF1a3F0YTdINllYMEUr?=
 =?utf-8?B?elVpWkhIWm1KM0Y2RW9PanJ4SVdpOWV1YWIwZTh0K0lVUERYK1JqcElzVnZ6?=
 =?utf-8?B?UDRhRWVMWWRzZE5JaWhobytKSVV0U1paV20razd0Y21lMllsNEJKN2hjY0lB?=
 =?utf-8?B?ZWVBdzhTazc0b1ZiL1dDTy9JL01Ia09nb2oydjBDTzRnTElwaTAvck00SmFv?=
 =?utf-8?B?cXVTR0hYajQ0MHREQThxSElaZEdwMVhnM29KQVMwTGRPeTU1RXo5N0o3dTZL?=
 =?utf-8?B?cmVJQUhRTTBiUFRoUGJJSkxxZnQ1Y1ErK0dod3l5K0pCcTllWFBPNUpaeWg2?=
 =?utf-8?B?VHFVTHNZazFJdyt4UWFXNTRVcVV4ZVJMYjJ1bCtOWHg2SXgvbXdKMWx1MkFv?=
 =?utf-8?B?NXRWamdNbGpiSXVzS1ZOL2tNTDNPRTVqWTNyM0dXaEhpSFNJc3VzMEpBVU42?=
 =?utf-8?B?cmhrZzZYZ3AxazVTc3p4Sno1WnJtTFF5dXc5ajBkbU1ITjVkSDNtOEFJZ0tR?=
 =?utf-8?B?aVBheXJuUTQ2Snl2bExhN2UrbkttbFl1N2JRZ2ZjRzhiRHluMitHdEpRa2dk?=
 =?utf-8?B?UGlDNVljdWhVa0tycUlJeWZFQVZXSzVEc3hOMXFOYWI5dVd0VWc3bkRCb0l1?=
 =?utf-8?B?ZkU3S2VFbm9lT3RQVEdMam5SVzZCUVZxbEJmVURmZEcyOHNnY1R3TStBUmxr?=
 =?utf-8?B?SkRnU3JaSi9QK1I1ZHlraTgyUjJhVXdKTVp2N0U4aEU3clUvRkNWeGxEM1Jv?=
 =?utf-8?B?d1BndlV3eC82cFA5enlza3ZrS0JBK05POEhkUU0wTENVWS9ENm9IZWtCQlUw?=
 =?utf-8?B?Vzk1TVR4VVdvdnpLOTNoS2RITVczTzlpdEF5b1BGbUk3dkZIK2dtbDRZeFlm?=
 =?utf-8?B?T29iV1JlRE91VVlYeWE4ZmE5amVMZWh5eXlFTE5SVHRVWmtwTjhzcEFxeWV1?=
 =?utf-8?B?UEQwcGpCVnZQeHp3RWJ0ZTUvRXV3ODk2WlFjc0poV24yMiswMWh4WEY3U1l0?=
 =?utf-8?B?M1lIU1ZQdENEWDI3aU10S0RyYnRDcHFxcm14M3V6WXUyOHA2UFA0SFJDWHBj?=
 =?utf-8?B?bHV6dUVheGNXcmEwUzFNVjhpZnhxUkprdFVzU0VwdUdxOExDbmxQcFpidWZI?=
 =?utf-8?B?T3oxUkdJeHRJUzIyYnA5Um9acnI0bnFhYTlzbFB4VmFXUWk5NjJ1aURUSHVU?=
 =?utf-8?B?R08rQm9EZzVFMHU1SkxxcXZXU29WMTdUTERkLzl3eVl3OGxiNTcrb29aWFhW?=
 =?utf-8?Q?RHKDd7MC3eUgcPRDYm3MF0U5P?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW5PR11MB5811.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 698da8ad-c250-4449-2490-08db71a875d6
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2023 16:07:34.8251 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gq4lhwEHfwGJDnnBKBGzkdTtkrCVAi38Ixoy/Lsb12WahX1yWtD44uM/Bjqv4SLofaSPQc0lLXJ/o1dDDjIVjqjk56S+ZkC2BA1yQWJwF5U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6441
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687277264; x=1718813264;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Jcif6sYEzPYkXvbIsUE7p7/L+UIPel2ulgStdK3lvSs=;
 b=XiCyLNyH87DloRPj3KjPbj6/RG8ue9L8Jm/XdXAk9XKFiGfF8+7jb+gt
 ROt8kVRqEVUu2EU9/NuL8qW2DDskq5dHQHpLdlLaGoxWPLeGZkIldkWjn
 2xvuinB6thtnRqc75hJTzGvrNypDwCnC5wKkvw4lQkV4loVgpv5KVFP0F
 r13PM5YgYRSFnepTwWhtw8W0c2W2Pw3VHUU/oQHSu4yhqIcXr1pAazfK6
 Okm00BLxJIbkqGBfoz5ey7Comt6KSD0ArgeAmEINflpgmgBsIt1W6RXAm
 jd6D2Ln/gl7kjHDp/3GRIBYQXEpIfgR7I/xOgwb/D3JhhnT3rGPY0Ejt1
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XiCyLNyH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 05/10] ice: process events
 created by lag netdev event handler
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "bcreeley@amd.com" <bcreeley@amd.com>,
 "daniel.machon@microchip.com" <daniel.machon@microchip.com>,
 "simon.horman@corigine.com" <simon.horman@corigine.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Sent: Friday, June 16, 2023 1:48 PM
> To: Ertman, David M <david.m.ertman@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; bcreeley@amd.com;
> daniel.machon@microchip.com; simon.horman@corigine.com
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 05/10] ice: process events
> created by lag netdev event handler
> 
> On 6/15/2023 9:29 AM, Dave Ertman wrote:
> 
> ...
> 
> > +static void
> > +ice_lag_monitor_rdma(struct ice_lag *lag, void *ptr)
> > +{
> > +	struct netdev_notifier_changeupper_info *info;
> > +	struct net_device *netdev;
> > +	struct ice_pf *pf;
> > +
> > +	info = ptr;
> > +	netdev = netdev_notifier_info_to_dev(ptr);
> > +
> > +	if (netdev != lag->netdev)
> >   		return;
> > -	}
> >
> >   	if (info->linking)
> > -		ice_lag_link(lag, info);
> > +		ice_clear_rdma_cap(pf);
> >   	else
> > -		ice_lag_unlink(lag, info);
> > -
> > -	ice_display_lag_info(lag);
> > +		ice_set_rdma_cap(pf);
> 
> pf isn't being assigned. Clang reports:

Fixed - changes out in v6

> 
> +../drivers/net/ethernet/intel/ice/ice_lag.c:657:22: warning: variable
> 'pf' is uninitialized when used here [-Wuninitialized]
> +                ice_clear_rdma_cap(pf);
> +                                   ^~
> +../drivers/net/ethernet/intel/ice/ice_lag.c:648:19: note: initialize
> the variable 'pf' to silence this warning
> +        struct ice_pf *pf;
> +                         ^
> +                          = NULL
> +1 warning generated.
> 
> >   }
> >
> >   /**

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
