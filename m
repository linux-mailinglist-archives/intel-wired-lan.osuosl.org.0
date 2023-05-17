Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B8570647B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 May 2023 11:46:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2F16340602;
	Wed, 17 May 2023 09:46:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2F16340602
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684316797;
	bh=2e9ma388UZ1AHvstbF4cLCHk0+eLYQMMTl0l15pz9rk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hBFxjleNwiIvlk81Xva6+1hKvmaLg/JhwUgtztyFXQRllP7ZoxwOkoPXGquPbTvJ3
	 4SZWYmuD4MnIsa1vQJLGIusKDgytPtr+mOx2zU/f9cQgK6f3Wgg7Ka5nDt4hwA7z5g
	 TNM1Je6SiRiImTdl4RPa7XTzLNX1YCyin+Z69fHkj9T+aJsChKgJU2G55khFC7xqJv
	 DhSoBV8GoN7vKg8apHXD4rL5m+YFHd31dNrueV79a7bIhbyevXtaGPf/veR78lrUQq
	 MHQOKjQpAvcX8XEUIW+zr/7E2jGJLooacv39uz1mYgAqznbSEde0NLa2AtKc530BLb
	 ReT4+b/Rp2i5w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ToJoka0bcuHy; Wed, 17 May 2023 09:46:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F00E340220;
	Wed, 17 May 2023 09:46:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F00E340220
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DA7B21BF584
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 09:46:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B192E82045
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 09:46:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B192E82045
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rLECDCmeD0xD for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 May 2023 09:46:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 090E482044
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 090E482044
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 09:46:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="331330391"
X-IronPort-AV: E=Sophos;i="5.99,281,1677571200"; d="scan'208";a="331330391"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 02:46:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="846046722"
X-IronPort-AV: E=Sophos;i="5.99,281,1677571200"; d="scan'208";a="846046722"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 17 May 2023 02:46:29 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 17 May 2023 02:46:28 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 17 May 2023 02:46:28 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 17 May 2023 02:46:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oSWgitj8BUaIg3tzrBbOmaSc1wX3vBH2MggHwJ7m5fHACW17ryQoySc3Nu/CH/8kJsRMsVQTb7od0oHCfXszVjNLbZMiU47zzz5371EW76PYbMjc4cr6VLBtHzymOW6aqcGcK8dtP/uTCrIPrS79/vhXsIrR98qK4+cCXdZvMtbfP7cyt/kAlUaQgCic/A60S2FneyGrowNy8CZ3454Y6G3nedPwNN9EOLCnu7xbTmawD8bKKu1b+n0zbpAQAILrxQadmAqvio5kQ/ZlcR5AaSGmEOjUF0VA/O0UzVRYbVQMHou9Nc3r5KdhKXEElye8m+d8dyCsqmwogkENcOAVSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gydiuk0oiz5hZXlquPA3coiytiFRnLZvrDh1ceyBXJI=;
 b=IMxRiKFm8lGa5UkiGZVi9K+vt3dumtWATvOAD2OCDpzBMnbTvs2HSBTXzdNPSWIuMu9RMAJwyEpQEQBTIZjM5/ZCv3FL0zCM0UZItL98mnba+3diirO9ywU13jUvTmvrN7v4n2h8eiGzj+HdGfRKoy0fZ9w7S18g0hfy11aZfqUIeT9sOD+/iElIG2vtuHl70rjuFsLBPrXBRjWVuYa9H4gFXBWGCEZqTn8LzPzKm4LQMBgq9xOgvxAOfaypSJVEPSYDJtsJyC6vQ/nn1tFnM80SJqwOxuHLxfyJEhikmOYEt7dFxHt0EwcnEUJPj+oVMrKt1MdpmKvc1xLQixp/hw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by CYYPR11MB8386.namprd11.prod.outlook.com (2603:10b6:930:bf::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.33; Wed, 17 May
 2023 09:46:26 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::1029:7958:5ad6:bace]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::1029:7958:5ad6:bace%4]) with mapi id 15.20.6363.033; Wed, 17 May 2023
 09:46:26 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Wilczynski, Michal" <michal.wilczynski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v11 3/5] ice: Enable switching
 default tx scheduler topology
Thread-Index: AQHZXMAhHe9PHAMqPkS6Xmcoug8SFa9egGhg
Date: Wed, 17 May 2023 09:46:26 +0000
Message-ID: <BL0PR11MB31229F9A5DEB26D237F35473BD7E9@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230322131227.244687-1-michal.wilczynski@intel.com>
 <20230322131227.244687-4-michal.wilczynski@intel.com>
In-Reply-To: <20230322131227.244687-4-michal.wilczynski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|CYYPR11MB8386:EE_
x-ms-office365-filtering-correlation-id: ee36262c-e42b-48af-f939-08db56bb955c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /yikOOeT+Xc6CPwYWCyAf59zp5u8hkb3cfQEVFRBytH//r1jew8DMYFTbmdlYip/XvbZbH7eUNS7wSjoPThBHNo2X3gEFq60A1CLiVv0MA58Q5L21jsz56zgBlRLvbd58jsIsAVRvV+Oisde8ZTpzKIH3BZcqQytCIHhlJpxjt5+ujZvMztVe5i+qzHeuVd8SkZLqYTwgMYrUvbtr7lDv6IgSjRD46n3hHlSEEFRJ7L5c4OOfqS+JrdJPJusLKwJj4jvHD/y6ge1NLD+Y8fn3CLHSSjYRK4ZgY/nsuXXomZQ4c5geDTjFD+CEdyzTr1e1/BCPu0njKmQUA4RDnI7YsCoEmDT7w725y8EmRua7iiP9sVu0dXHNX+Tz+kBRmp1JuEanZepffHWcpZif6AlAlJWyJ1QmHRIVhpUDm67egwEgPdALyM06u5myjE3yl2lIkPMpTRFXS7Y7HDfZlKYOh32QfXGj45O8I8XxtTnqVfeGjOMGQ2lrNNvblftZIj4NDk/TUBBGhYemmkeZ5R+d8yPiGrCZUJCiyvvyy1o8jA/6X/yleqNRp7RuhHLqFkRIcReOgztNlcqU0/3EhEz+UkFjt7h0e9CYJivaSfnWZIt+8SmW/j5LyUzimmzTH+d
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(376002)(346002)(366004)(136003)(39860400002)(451199021)(5660300002)(52536014)(8676002)(8936002)(186003)(9686003)(6506007)(83380400001)(53546011)(82960400001)(122000001)(38100700002)(26005)(38070700005)(7696005)(71200400001)(478600001)(33656002)(110136005)(55016003)(316002)(66476007)(66556008)(41300700001)(66446008)(66946007)(64756008)(86362001)(76116006)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4+t07p8k4X2xrqR9G8MD+doSeFm++2Qc3AY8nYnpxLi5JiM0PIzhnCewoqUN?=
 =?us-ascii?Q?Tq76BgS97GRxy3avNFead+pkXl+tvkjgYc5kEWkHZhxzYVb+1w4Y7Qpa5l5c?=
 =?us-ascii?Q?xA2eF2rzH6Ns3JlNTHx+de3iXecSIIr3YzDFTHNWvzgYLwFW8H7ix6r6ezDB?=
 =?us-ascii?Q?o+/8gTfOxul/a9CECwXdGRtoyXQtqYV0wFxT9Y3/4wiU5ntWGASNai7HDwJP?=
 =?us-ascii?Q?SJL4jPw6c6A90ZZ7TlkLJNIkaPXJOr0wTbHt4qyEabye2sD8J0gBm4KBPm73?=
 =?us-ascii?Q?Xtzsyd4sXR3gxa0kg95sihM7E3wcbe1/+GESmH6vo9954PrLtBUECq+zzjGr?=
 =?us-ascii?Q?Y8W2kxS57wkdkN53UqHW7Q1FfuQ8Ltowf5RKQdyvAmyDP/NnZoMhivklE0Tm?=
 =?us-ascii?Q?vFwqqDzIiHtrRSFCffcbZ/Bg6eJIf/bnHAKJNnvBZpz/0QUwyRCZjt04GnhH?=
 =?us-ascii?Q?EtgP+Y1p+ohkcyDjMuyLoHHEMZmH0mub01e5tKUOKctEBlvE5lD7t9oY0L7C?=
 =?us-ascii?Q?j9fG3q+WRBPKxK3CwsPRm3LIMb8VQFBOO2MHEO9r7WFBBZGDRD9/WJFUYNRt?=
 =?us-ascii?Q?d4rm3OZWtNNQk93ZbgpsIpAQNPrvm3q+GCsMackTC1iY2PobjU02MMRwNpOd?=
 =?us-ascii?Q?O0gEFjrpXnzSjuIn4Ca3GmaaB5JtHLBSXwA0ZfvwsD/7jp5oY0SCWq4PWmNH?=
 =?us-ascii?Q?21yBJuVFb5+Wt88FJ9wK5WCykLMR4EOcKxEYSl9Th/31PHqi2uXzkSTD7fju?=
 =?us-ascii?Q?1+2bVvjZjIEXSfqRuEIYYWVWko4yXZ0qBSR7Qc6cacosA/iXPJl23HmAvn6+?=
 =?us-ascii?Q?AEWrSi/fQFFhZPlMJk2lxCYbbR0Bab78a6j5GIy7/GXB524dtNrkoNWifqGC?=
 =?us-ascii?Q?FAScVgRIPikr2KMNXeTGx4aEtXdArrRMmMcCKHm8H98EyztHYvwVWw2LV/8V?=
 =?us-ascii?Q?XQsjbUV0Wjto/ptXLZsq4a6SBFS2B2BbgA2KY9ToqSsNJsWQEwLdt+xQnfyU?=
 =?us-ascii?Q?rvE3Dtfi6rCYXkQqComYCWITJizt40up9rxpJnF0FRCd6wGzjuHEy4R+AHxv?=
 =?us-ascii?Q?X3u9vrrL8fUe+dsxlacrFxBl9QwbSjHGWyST/pVdSyfJPpShJ7LIEanUXzWW?=
 =?us-ascii?Q?Zk6fs+BqtKnJr+Gv0UVlQoA1RmyXqIFo/gnfImBcUOc962HKnfs9oen5dv05?=
 =?us-ascii?Q?AF3h6vbLaa93sZjTYdkYSGTQICFYhEFFolbNOd2B4QagqOElYRIDyCX4q7aa?=
 =?us-ascii?Q?KOB1knbATBkygq/2zBCBB1M0UYsWEXGSNcBup1ME4QdErbNoWhZSkx3n265e?=
 =?us-ascii?Q?sEBkER7/C/JCo4zq6lm2Caf4f2XsiQBuYCeG6fXv4f4SFLk66c+iGcbxUMKI?=
 =?us-ascii?Q?xrQHvhkuh0YHiqBjuEwLXYO27VuCcCgauBtf5ANlPUm/JrCCzH86S9Bz2tjo?=
 =?us-ascii?Q?WwfWswj4b5klf3orovNaLLpyxnqMmKzQgqyEaeuW7iOASbLBaJvfLpcOQFiY?=
 =?us-ascii?Q?ycKLyRt8dJqtLZDpXfItbMHsMemxGDoT9P+sKBMvUMeJwlVhXQfgHxFwEMeC?=
 =?us-ascii?Q?jvA6F92etuCFGW2MVKpYO36iqOf3SD6KnqDbQZSuUKy8C7Fot6Zq1JD1FWQW?=
 =?us-ascii?Q?tA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ee36262c-e42b-48af-f939-08db56bb955c
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2023 09:46:26.7746 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2t8WLU2SMCTuSGAU2tuxzXXSOqXc3NMhnT7sSGNHQObgTXh6MqmnPsrnfkSnsuOYud04jFGLn3iLfR+7YXk6DLwh7FjLcpgpjwQn01+1UJQII4XVYsqUr0XLlKxJWUIW
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8386
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684316790; x=1715852790;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=gydiuk0oiz5hZXlquPA3coiytiFRnLZvrDh1ceyBXJI=;
 b=CMyaUJMqt/IFOCqm/CCoTfd8+qmzvCweROz3LmMqp1XRlfHekgJFitv7
 KOIB4V2Ji784wnKETJZGnEhZLDGkJEugqPtlPrPLe9+5lBmCubsgjRF35
 aD49RnliO5XkgqBrtNeLURVYxZd9cSWANu820yvUbsD95/L46B8Dy7Lqk
 xx55OYREajNy/CsDOQapraRXVcnl+/Oo5sIVLXbbxI9I2uymygcmmcz6c
 56nN27H+JmY8gQzzEkQzKQBTq9SzPsZOV2dpYNK60aAjwXggX5ApUZoUn
 hMTSYmuksoOJGv4ZhPeCwat4DDCZLOpaHGNx+tPq3bTlOKNpxOxF6zNAJ
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CMyaUJMq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v11 3/5] ice: Enable
 switching default tx scheduler topology
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Wilczynski, Michal
> Sent: Wednesday, March 22, 2023 6:42 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v11 3/5] ice: Enable switching default tx scheduler topology
>
> Introduce support for tx scheduler topology change, based on user selection, from default 9-layer to 5-layer. In order for switch to be successful there is a new NVM(version 3.20 or older) and DDP package(OS Package 1.3.29 or older).
>
> Enable 5-layer topology switch in init path of the driver. To accomplish that upload of the DDP package needs to be delayed, until change in Tx topology is finished. To trigger the Tx change user selection should be changed in NVM using devlink. Then the platform should be rebooted.
> 
> Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
> ---
> drivers/net/ethernet/intel/ice/ice_main.c | 106 ++++++++++++++++++----
> 1 file changed, 87 insertions(+), 19 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
