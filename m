Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 125E174D2DD
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jul 2023 12:07:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 63D7060E76;
	Mon, 10 Jul 2023 10:07:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 63D7060E76
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688983667;
	bh=vmcMIci2+kl8AMWw6qpGYmQzfMYR0Lt5Ap5mgihBMKY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zZSQ1YWRFRrY4HqwCSFdCVRwl2ln2EsnbHgE+cf9LGZUPKNfr4+gOG+yjgzkZBRF7
	 D68RlYSbM3DJTF9oh67NnPcLAegtT4lmkxyAeWOeIeYhj/Uoa5MYzPN49aoSAIzLrs
	 2ukFOs3rhMBjYlasmlItS7fsr0bWxoi637Vu9b0XF4FAGOzVJsrQ/pPe4NasaPqn4n
	 Xqp06dXC146DYtf48UfnjV5XNRN7SImEZ5WhHBQKGQCK/JestDnQXUYj2LYsbzAH5q
	 7QOxY0zzR5KD++TAxglp9z3WctS9gOzvTFd+jWs2K9C9iDK5snjlMaTAAWf6FOB+j5
	 O2LIsPBvTEDKQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LXP1VZo9A7ve; Mon, 10 Jul 2023 10:07:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 10D2E60A66;
	Mon, 10 Jul 2023 10:07:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 10D2E60A66
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 74E4E1BF362
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jul 2023 10:07:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4AA69814B8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jul 2023 10:07:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4AA69814B8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ylm4A5MUKGaM for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Jul 2023 10:07:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 627D9814B3
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 627D9814B3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jul 2023 10:07:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10766"; a="450664079"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="450664079"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 03:07:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10766"; a="967377064"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="967377064"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP; 10 Jul 2023 03:07:34 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 10 Jul 2023 03:07:33 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 10 Jul 2023 03:07:33 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 10 Jul 2023 03:07:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iNcdlrun2G954jTSym6YN9E5JddPTj5sUDu91fnajDVTz8Bnrbci39lsQXEVji+coqWnT2xGazb7itSSwNLx86U241kzt99fwh0n8uVhWDsmqfhnBltGFz/6KOnI909vGWCFReIZOJxSiOQI8ZxUe5lA7gGILA9FEwKlp2c2wvSEMjmeqew9wxZAezRHejSSG0EPSbM1plIJixb8kOjvWn67tp6co5Sl2jqpNv8ngxZXOiVvNRxT2Cl3qSuYhX+XwmdUhgTCkFvadq7wuCRkgsFCDD3hP50GgyV2PhEsjzO5U8yiXI3NEQBVLCpV7SBcy1LBI6/YfJ+HnrdTSEtl1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MD34pAQTcKt0jfKNYQg/hiQP51gywIvikGcwQiLjM00=;
 b=kFPumWeFIrTLdCXZGW0kQXUmUe4Nk1Vy7bDvlE7fZ6N1YEjtyLMzOvpV5fvsC5uX0iXWOgetuFExRpCUyAU1+JhFyo3oRHkT4ouTzz78WwIbq2C9TaUlM4a1QAEP+BUq/fZ/EqLN5vCMd+d4dP5K2XLx94Fs4ktt77tuRP73UiYVKPm9znKmSZzuCiVkwNX36bueQk9nivQHapNZRst/2GsqYth3AllKNhmbDdAZwyhTQcmbDZ8pcNFg9FL4cKUFSQRkwhTW2pLpyYCmTUCru6EO2hX/8oEwTSb++ACACfRZMymBZJtEvcwIzkfACbUsWFtIEaMskpaiGf8eybwJ9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 BN9PR11MB5418.namprd11.prod.outlook.com (2603:10b6:408:11f::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.30; Mon, 10 Jul
 2023 10:07:31 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::24bd:974b:5c01:83d6]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::24bd:974b:5c01:83d6%3]) with mapi id 15.20.6565.028; Mon, 10 Jul 2023
 10:07:30 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Thread-Topic: [RFC PATCH v9 00/10] Create common DPLL configuration API
Thread-Index: AQHZpc/u2XBvfmJQckCFu+3HjTH4RK+edcOAgAF/xCCAACKYgIASxLqg
Date: Mon, 10 Jul 2023 10:07:30 +0000
Message-ID: <DM6PR11MB4657751607C36FC711271D639B30A@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20230623123820.42850-1-arkadiusz.kubalewski@intel.com>
 <ZJq3a6rl6dnPMV17@nanopsycho>
 <DM6PR11MB4657084DDD7554663F86C1C19B24A@DM6PR11MB4657.namprd11.prod.outlook.com>
 <ZJwWXZmZe4lQ04iK@nanopsycho>
In-Reply-To: <ZJwWXZmZe4lQ04iK@nanopsycho>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|BN9PR11MB5418:EE_
x-ms-office365-filtering-correlation-id: ad7b0ee5-4b6a-485c-d0ef-08db812d78fb
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TZDiaE3auUiys4xHdypjUA1Jz3gKRc2tcyFFvZNP9jNoQl86MUCiVDtJeVhYMkjKSh30sNURlxNmvR+oTCzA9gfCyik+ppxTg56+wK/G9OKvmuxBFOUsjiCTKYEfyGQe7hr/VIAqaMZZjGVDBlf41lTXyouZWBOwYqcQ0ZlwUXINmK/YkFyuUeWRhqXQCGeASVZ+16qv5S1zZ468lTS+S/iM3wE7CPTP2CIek9GygscDVtDBzalN5ha2PzFuGy9GDil9UIQu30QpXhENZLzU8CukkvobZkxlCetxtO4qARb2lVJRsud9Ap10pdlvUN94KGyaNq5pkcPF/wt8c3JWC1pbA/g8KFrOHs3+cJXzc7BZKqOZAls0iKr55OJMoyfOw7uvCnjD9BRRtuQoGvQRbb7bkilPBuGfUfDHG/pX8kmNO6sFdGT+4MR2nusj23zwLxahD1ylrR11zBoFKARj+3IYzq/GkJIL9cHnE2LXunjpMO2ce3F64Y7pGwGvlDkq3vdgcjmjpeRcqOsIpR6TwfEbCH4/XM8LA/fAMvGOxYZzi8uyTjOmbggk/pQzHAA8c0JOfPsRQ8wtzpkXa2pyTwJ/7GyH0T+lLWZjGT11iXc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(39860400002)(376002)(396003)(366004)(346002)(451199021)(186003)(9686003)(26005)(6506007)(83380400001)(41300700001)(4326008)(6916009)(64756008)(66446008)(2906002)(66556008)(7416002)(316002)(52536014)(7406005)(66476007)(5660300002)(8676002)(8936002)(478600001)(66946007)(7696005)(76116006)(54906003)(55016003)(71200400001)(33656002)(122000001)(82960400001)(86362001)(38100700002)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OmjZR3YfLsIXeAjDOz7CsuqpkSFcKVTRbrnLwoG2wJ1J3a7xKUQ5H3uL4/eE?=
 =?us-ascii?Q?dGkUFZ33IxbVOzksRqI2vMwOOyp4mTEWivjPIx6/kO5Y9HrDm/om40GOLFnP?=
 =?us-ascii?Q?OVr1Yks+znERt+jx6H/sDxB2DhqCMTvCRZd5JOce67+GfEpN6s7m+w3ivcsO?=
 =?us-ascii?Q?UiztBjKx06AYpBLNSHw/uTlFs8zqtWSWeljfmSY1hEjjC5u7BOvUPEZkbvBn?=
 =?us-ascii?Q?cf3ewV0ggJTJZ9/lJZcLRz05qASD+bCY2Zrqsn03plDApOQgSg7xv+SNtk0x?=
 =?us-ascii?Q?WaTZPISpxlXGN7r+4ovY1vYmKvLyLuXTtDnG1xH/PqykmSjyJHDMHLAToM5n?=
 =?us-ascii?Q?tleR4UnoZGy+9zZ2cjDkxQzEjsu663CQzwhiM5PnE60DSaUBPFeQzn5MtLw1?=
 =?us-ascii?Q?YfCzIxyO9GQRXkiWYxcwZ3HEtMOjJvwWlV/h+8Fv468AWkZ0rvvFFQBfhhz9?=
 =?us-ascii?Q?0qYeaUqzSGtbvPGyZ358kTo7MoZHduczjlCtQefzZReOI30NXsxsjaKjT5GV?=
 =?us-ascii?Q?peWPC/XSooQGRyQ/7B+tv3+vBwt5U3rAb6+5JN1O2gjnYEZ3MPE3RhUObtmA?=
 =?us-ascii?Q?gc9YQK89feMgNFDkiLKzGVl52atCY4WFDgovqFPIOy/dtx9635Tvbm3zQ570?=
 =?us-ascii?Q?IMzzYH4aL89FJazBzt0tkKgZdQbhKOxgDsD8ooR6f30mSOpiIOTguZnKSBiq?=
 =?us-ascii?Q?O2j3A5jBohHU9YZklpIQHfvDfV6+dS7um4Lps9VyPQtGpb074kkOLu+I5Z/Q?=
 =?us-ascii?Q?NS3pMxXjtDb5SRyOM7MTmhFKHSSRZf1Gu9eXnls0KWaFFtmO+j+9I8bXqgr2?=
 =?us-ascii?Q?ixN960ZdCVjdFJNCmdlZ1li3JcoKTjcRhO2+kr5b08EXCEuxVlfOKWkzFzVk?=
 =?us-ascii?Q?+nJJGS6IuT/rdPvq1WMSuADhVDKDhVBUsCuNT4Wan2Z8wj4DRKrCREDOfg+4?=
 =?us-ascii?Q?bo3Pkl/Tvs2rGO67r2CDkLVw2H9GHQN1TIc17+Sedm/oE1PEziMDY0StWH+H?=
 =?us-ascii?Q?BpbUDHhvAhaFmqn7gRfgv14VWsVVDm83KY7NwQGelAmkq1o0t48k9fXmekHI?=
 =?us-ascii?Q?BbBb6GETcl1EetW+tORTMYNYo6bW0QCXgwu5QaIe0hBdbsGXXdVxJntPJ2Yh?=
 =?us-ascii?Q?98jJSHP9DVp8BKK55D8kM3vR7o/IFEwVcrkyL02q6zpJz7LhE9va68QdfNCk?=
 =?us-ascii?Q?GyD+8xqRblgNM2eqPVLAwhyFFaZwTCtXy/VI18KDYLbnAWr3fqm+gQpm3le+?=
 =?us-ascii?Q?7Evk0uo+br2jDSn/sF0GBl1bEz6OeZDkfowMNQe7Azr2Z8aYdJoNoM9O44Zy?=
 =?us-ascii?Q?Pc6Xv4+pKEyCMBqwGuseWyQSZc4kmiznDAR4BE4Ux3GpXmK8Hoh6xKI1tTzM?=
 =?us-ascii?Q?ldRdSZtS6LdXdhknuhqmTOjzqQcsm5MSfCzLJgzSlcZ4GFOs3ycdKanCVlB1?=
 =?us-ascii?Q?pg8VgCj4OxL7189y0GKvEd8VYyH6aC+vQJpFtZyCpQqlQ/qka2UJQ0+4M+pn?=
 =?us-ascii?Q?w5/RfG+lerO8l+fAsxpRJZmKmzbu34jowlX3wQFiEBhQUaDyYrjTIbnJSUqk?=
 =?us-ascii?Q?ni2KMKKaUAZt3mi4aSFw3zYl+YhrM5LjUQ6hoGRgd0i04C1u5uT5xfUu2vgt?=
 =?us-ascii?Q?iw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ad7b0ee5-4b6a-485c-d0ef-08db812d78fb
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2023 10:07:30.6276 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: V60y/U/T035uTTnGh7kl8qtNBD99VufpEewWZV/4L6yMwQrVJfBM1GXNvFZ7/8j8x6RV9TznfRXU4KILeJErhaV9zsuhJQL+oklM8Qt91xQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5418
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688983656; x=1720519656;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pQPpwwD3tRKoqNO641NKpQ0husu/XjFomkd+E0J/3PQ=;
 b=dwpkyHybF1j0Smfe7mnFBhEJEnDLvhmtVG+ZVpNr3qLVSPkfBv5UNH3z
 3SPh29Nbjxa3lndXVBTBCZC486Km8XBI2NWn/DSNvCUto5jxX6A5lzSBH
 DNSex3qCfUrNS9yIHVv5A6jzf0uX12IHz5XUkm5fvuCb4VmHTFJtGW+oo
 GoE9ShYUw3MpJ0CCUuTC+rtOo9iJvlFj1j0zAC7Jn4XIe71goR6+h94sE
 JsIk/J9Ii1Yg8SNczA+Jjc5fsmZXKWu+RVmL9p/4fZfht41xyC5imfmDR
 ZMCfwRz9nTA1Zg0q/13BvaKIMHL1kzjyZ+IStDS8E4OusxguBuJ+L6ZsC
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dwpkyHyb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH v9 00/10] Create common DPLL
 configuration API
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
Cc: "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "mst@redhat.com" <mst@redhat.com>, "razor@blackwall.org" <razor@blackwall.org>,
 "phil@nwl.cc" <phil@nwl.cc>, "javierm@redhat.com" <javierm@redhat.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "benjamin.tissoires@redhat.com" <benjamin.tissoires@redhat.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "lucien.xin@gmail.com" <lucien.xin@gmail.com>,
 "leon@kernel.org" <leon@kernel.org>, "corbet@lwn.net" <corbet@lwn.net>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "masahiroy@kernel.org" <masahiroy@kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "vadfed@meta.com" <vadfed@meta.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "airlied@redhat.com" <airlied@redhat.com>, "vadfed@fb.com" <vadfed@fb.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "ricardo.canuelo@collabora.com" <ricardo.canuelo@collabora.com>,
 "arnd@arndb.de" <arnd@arndb.de>, "idosch@nvidia.com" <idosch@nvidia.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "claudiajkang@gmail.com" <claudiajkang@gmail.com>,
 "kuniyu@amazon.com" <kuniyu@amazon.com>,
 "jacek.lawrynowicz@linux.intel.com" <jacek.lawrynowicz@linux.intel.com>,
 "liuhangbin@gmail.com" <liuhangbin@gmail.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "nicolas.dichtel@6wind.com" <nicolas.dichtel@6wind.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "axboe@kernel.dk" <axboe@kernel.dk>, "sj@kernel.org" <sj@kernel.org>,
 "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>,
 "linux@zary.sk" <linux@zary.sk>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "ogabbay@kernel.org" <ogabbay@kernel.org>,
 "nipun.gupta@amd.com" <nipun.gupta@amd.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "andy.ren@getcruise.com" <andy.ren@getcruise.com>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>,
 "jonathan.lemon@gmail.com" <jonathan.lemon@gmail.com>, "M,
 Saeed" <saeedm@nvidia.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "Olech, Milena" <milena.olech@intel.com>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>From: Jiri Pirko <jiri@resnulli.us>
>Sent: Wednesday, June 28, 2023 1:16 PM
>Wed, Jun 28, 2023 at 11:15:11AM CEST, arkadiusz.kubalewski@intel.com wrote:
>>>From: Jiri Pirko <jiri@resnulli.us>
>>>Sent: Tuesday, June 27, 2023 12:18 PM
>>>
>>>Fri, Jun 23, 2023 at 02:38:10PM CEST, arkadiusz.kubalewski@intel.com
>>>wrote:
>>>
>>>>v8 -> v9:
>>>
>>>Could you please address all the unresolved issues from v8 and send v10?
>>>I'm not reviewing this one.
>>>
>>>Thanks!
>>
>>Sure, will do, but first missing to-do/discuss list:
>>1) remove mode_set as not used by any driver

I have implemented in ice (also added back the DPLL_MODE_FREERUN).

>>2) remove "no-added-value" static functions descriptions in
>>   dpll_core/dpll_netlink

Removed.

>>3) merge patches [ 03/10, 04/10, 05/10 ] into patches that are compiling
>>   after each patch apply

Hope Vadim will decide on this, the thing is merging in two patches
doesn't make much sense as there won't be any linking until both patches
are there, so most sense it would be if 3 are merged into one, but
then we will be back to one big blob patch issue.

>>4) remove function return values descriptions/lists

Fixed.

>>5) Fix patch [05/10]:
>>   - status Supported
>>   - additional maintainers
>>   - remove callback:
>>     int (*source_pin_idx_get)(...) from `struct dpll_device_ops`
>>6) Fix patch [08/10]: rethink ice mutex locking scheme

Fixed.

>>7) Fix patch [09/10]: multiple comments on
>>https://lore.kernel.org/netdev/ZIQu+%2Fo4J0ZBspVg@nanopsycho/#t
>>8) add PPS DPLL phase offset to the netlink get-device API
>>

Added few things on this matter
- 1 dpll level attribute:
  - phase-shift - measuring the phase difference between dpll input
    and it's output
- 1 dpll-pin tuple level attribute:
  - pin-phase-adjust - set/get phase adjust of a pin on a dpll
- 2 pin level attributes:
  - pin-phase-adjust-min - provide user with min value that can be set
  - pin-phase-adjust-max - provide user with max value that can be set
- a constant:
  - DPLL_PHASE_SHIFT_DIVIDER similar to DPLL_TEMP_DIVIDER for producing
    fraction value of measured DPLL_A_PHASE_SHIFT
- implemented in dpll netlink and in ice

>
>You are missing removal of pin->prop.package_label = dev_name(dev); in
>ice.
>

I didn't touch it, as we still need to discuss it, Jakub didn't respond
on v8 thread.
I don't see why we shall not name it the way. This is most meaningful
label for those pins for the user right now.

Thank you!
Arkadiusz

>
>>Thank you!
>>Arkadiusz
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
