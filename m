Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A788082C4C0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Jan 2024 18:33:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B548283DD9;
	Fri, 12 Jan 2024 17:33:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B548283DD9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705080792;
	bh=eSMYrzaaYIRnn8/gzxBrU1dxzT379lG94eevfQqNRME=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FtFFyOC4gKZViLDdQwtsy7mSjPgDbCNM058nLEMzcf72xr2kY5nViq2ILZqNFVCRY
	 jn6JmoC0ncIXp61p9m5/nKK2ZDS1MAfQbxrJykrUrpQUlmqsfcJhfMqEH9/dyKH7Zz
	 Uw8TuYzfof74nFYNgAn61mJbk0Uvju20xiKvmX50K/KnkoHkq9tXRErUgnR7XtoAF9
	 X3SU8/5C4G80gAyWe0BRE9RYrVFktYuyvPycOt6l9bL50F8hH/yfEqndb8OWd/6DVu
	 bZfHD9zekmnnfjS3JFLnGRw+OUKZUCOxLjl8dSKbgMl/J8uYrOWnD3XYrab5enGuPs
	 GG4w/RZkOIvOw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XwZvL0wp86V6; Fri, 12 Jan 2024 17:33:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B2B6E845D8;
	Fri, 12 Jan 2024 17:33:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B2B6E845D8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CC54B1BF309
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jan 2024 17:33:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AF05D40363
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jan 2024 17:33:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AF05D40363
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Kw5_9jrcFNCC for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Jan 2024 17:33:02 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 80E56401C2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jan 2024 17:33:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 80E56401C2
X-IronPort-AV: E=McAfee;i="6600,9927,10951"; a="6601242"
X-IronPort-AV: E=Sophos;i="6.04,190,1695711600"; 
   d="scan'208";a="6601242"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2024 09:33:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,190,1695711600"; d="scan'208";a="17458220"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Jan 2024 09:33:01 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 12 Jan 2024 09:33:00 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 12 Jan 2024 09:33:00 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 12 Jan 2024 09:33:00 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 12 Jan 2024 09:32:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JnA4CussX6eWAQ0XFx2rXOYic4QG3iypYa3m97j0ZoDNgfvVu0wUHKKvbpMzM1bbLRJGi5PxJfwcc2NgI1QzN/4MCKroOxMYdZB15szcDi1ek45HHtCNnxyuEjPSQjBhhiomlX6LqbqR28igPQdY++K38IfGR/tKPiEW7ywuTuIgSns3haFKYmfJvtQy2dBbJlmdIeKJXFaD76txSuiXbvsHJXkNqBuDJPj3Xab+5aOIh8fygyarvpPL+c9Hknxhtoc1qPzdRg6z0o6KZYpKD2qYPG1dDu3y4wvpymV/iKVskIR8mCetGaj+9GgFG7D6uATH0YXvpS7EqRSN0WVcKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eSMYrzaaYIRnn8/gzxBrU1dxzT379lG94eevfQqNRME=;
 b=aLsAeV2XfoHW27paIlyrHBQKjMoxsEICTS0CMJRBV098b1FBisjIB2KDZEAI22RbAQ5+saA4xWbV1a8742nSYDIsulDP8kdAjjPx4KF7nFHtxkz3SyZzgrKcuw1G30FXEpvvZv7DRQ0CRWhb9+CLDz2MZ9hnrTyWwrigb9HvYd3kxNtKHQL/IXhOhp/AK6ukLqgXCXyzm2pikH3Ng0I4uz40ufDMvU7GDOfsWItV0h6q2kUjnnArrzmEUoX6Hvc5PUsHUYnn3nJncg0aT8Ofcxk32SXed1x5zrxQkovkZrQDMwH9OiGPgGY5JxFx8Y7nBKYhVgopniLJpERx7c7mxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by SJ2PR11MB8346.namprd11.prod.outlook.com (2603:10b6:a03:536::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7181.17; Fri, 12 Jan
 2024 17:32:58 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::5fa2:8779:8bd1:9bda]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::5fa2:8779:8bd1:9bda%3]) with mapi id 15.20.7181.018; Fri, 12 Jan 2024
 17:32:58 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v5 iwl-next 6/6] ice: stop destroying
 and reinitalizing Tx tracker during reset
Thread-Index: AQHaQjD94X+bdExT0ECD7zTB5ARdJLDWdeOg
Date: Fri, 12 Jan 2024 17:32:58 +0000
Message-ID: <CYYPR11MB84298F6B4DB7888F7CBF0532BD6F2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240108124717.1845481-1-karol.kolacinski@intel.com>
 <20240108124717.1845481-7-karol.kolacinski@intel.com>
In-Reply-To: <20240108124717.1845481-7-karol.kolacinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|SJ2PR11MB8346:EE_
x-ms-office365-filtering-correlation-id: e1e8c6c5-0511-4f01-8bac-08dc139484b3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4x0eagxwFe/Jlt0VljVnGbEONqT0gDjofBT+jUjhHBhRTRfjg/x75CsvVoQOgEgJSroJoou9tdBQoJBhnaK01zIah7kfT+HXqRuhhpVtgRyPjnhwYVRGywuySNioohZ+2p9NbUaWFPKf7zrB0umFxhF+AGq780n8Q03Sxfr5nyKFyN6UV9PlkWzQubeLRYIH3kfe48HE1/XW/TlOgeDpaDQThCacL5sextyP8G+nt8DX1THWQ7YwtD6ekdyMbzDze0hoTGNeI4tl0TfR0l7TmQwAKLMjnQHdKw4eMLQuUHkKOozkglq4mnvXfHEGrBl4cANmlhokxV6R/hlP4xW3Ynmnf0KeFPbWwIZkJ8nLblav43tItfhZ3TZz/ehK5LrFvkJN2iYdzsxQ6RxsWgIkCXp3FK0d2mDLlEOmMZMPYgcPKL15R7Hviu2y2ypeu/VR5NgO3jw5oU00q6czQ0HW3gKxA1MCFBCOoAwwJUgg1TWKiBujMl65GF5PZzy3MKAzaxkD90UEqQBs2/cajV3NBCsfJ4MLZj4FavyvKYleWYimmkwyCYEAff8cgIghVGLCHdGaoYkVrpdW/0s7ZbV/MZv1E0l0czvBXhG0T4RCAb7j8y9xD5IsZqXkcKFyLSPl
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(39860400002)(376002)(136003)(366004)(396003)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(53546011)(38100700002)(66446008)(82960400001)(316002)(41300700001)(2906002)(86362001)(33656002)(54906003)(122000001)(6506007)(66946007)(110136005)(66476007)(66556008)(7696005)(478600001)(9686003)(5660300002)(4326008)(64756008)(52536014)(83380400001)(107886003)(26005)(71200400001)(8936002)(76116006)(8676002)(38070700009)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?l9D37cZ7Wf0rbgKtatp+uxHXa1MojnVzMS0LJA9jj8fBTcajvu4nEXB+sJYb?=
 =?us-ascii?Q?u/yMcn6v+jPRuNvzBDmKS8jRqczA5u+m6Ot94wa/zWF4+ps9/JzsZL5yvg/E?=
 =?us-ascii?Q?CUmDxzynRaCHiHJOoK5+o5u/nHVA3+KRb0nkffsW0ZPyUYbEuo07lUXFBg2+?=
 =?us-ascii?Q?sk/9ycAzRMhjeELmVBdaw3QjuLeReXf39JYjMKxpXbzu63TDs8Qa0PmYhhDT?=
 =?us-ascii?Q?ZeH4aAay+hAX1BENMtXCrC50XfS5Il5S59J+LYqPVQbyJImrHp58hh7ipaHC?=
 =?us-ascii?Q?ZbjWe7M8htrhzRwlFhSmsfUk3dpJA8y4/FS1GS08O1ZQHd2jtaEmXiP+wgz0?=
 =?us-ascii?Q?4kSZpT2ddqmJrPulIJ0ixDDNttQFO8wFDv1KrjVeWhpi2Zhn3ihdwtSY2HFG?=
 =?us-ascii?Q?oDt11TCdHOGyd+Sp32LeDx/6F4qO4icTQAnw5X3Fij281/3VmMOfd3XB8Je2?=
 =?us-ascii?Q?YrnwOHD27IHPq+0A9ltpKZ/JXE3u0B/jv8Gg/G7ox0oAml66oM1JEC2hKQBm?=
 =?us-ascii?Q?HG3RKBviPKbWXnJArvS7Jec7lqGQQvRaiFztvXWceqoWuJyfZbepWJQX5N8f?=
 =?us-ascii?Q?8OV+EOp0f3dc4dfWdYXkm76WuNDzCfaQEV0uKE4C374Z9HudMIwQIrkmuO3e?=
 =?us-ascii?Q?Nfle7A+29CznqyO7UlKb8oEP8OnnWq5BuTCdhElr2a955Bj/Tc2CH0SnjYxL?=
 =?us-ascii?Q?o4tD3XIGjtLAJS1SgxXs499N6KvJgAfoY1aBoYNlwXjYAcadE1JSpeGVE3X1?=
 =?us-ascii?Q?tUqCj01s8X7S81YLpBYs9mDj32mLRHF3JVSRCqiJVgDf7FLL/AvY9lpIIwkg?=
 =?us-ascii?Q?9mb0GXNyBd2kUnCscoL/1Bfh+QdSPg4oF/eEsNCCMay9c3XGEFGIiykg3xrt?=
 =?us-ascii?Q?XMVZAQXS+o46QAOvI2msURiBBIopFOW4A1ZQwgJCZf5JgdBXdLYPI2C+2VfG?=
 =?us-ascii?Q?3KOgGhmiOg8UXUyj0fKQGMkVX88esDiHafvirwT+Twcb02yNGf3vtUBVCibC?=
 =?us-ascii?Q?kPvgtGfvdy2RHY+O0GBzAsfk7+iXONP7fgoLPvOM7QJJvRGMy4NPNmwxkStJ?=
 =?us-ascii?Q?PJe7rJwHW3maPVDf0n7t+4A/V4fVsJpvCcODP25K2zCc1bDxuWbxEdUq5Kl2?=
 =?us-ascii?Q?t0G3MrLjFredmi5Sz6J8Ajm3rZYV2YMwiOr0Yv1f6qY3sOpFA/zTOJSdtQLG?=
 =?us-ascii?Q?un809c3WwKt5pxdMBwYBQAMJeV08vuWJKGJnnz5SWv9IiJsyMq+Ppxi1+Y0c?=
 =?us-ascii?Q?k7eySOW004yC+3xuUr/+ypXq5dz17goAuoTo5o/C0inLbeOmrsKQmYn+GdBw?=
 =?us-ascii?Q?P91TmYWjKQIozd86gxi4CIFes+xYdehiCZXwo6BXXAcZFtRVPCAu1mBUXkY8?=
 =?us-ascii?Q?Xgus57eGgKe/cJhugPwRVl+DlUIGgLlkFYeWKQuzgx8LOerO3oIkDTpTrUZq?=
 =?us-ascii?Q?/eRCqS8pbv1YxaRh4clkYYS8UBbaw924D5bPAnIzZgSHHfO1CLFwliKeAuLd?=
 =?us-ascii?Q?Vw3WPuYx+qycet5NU31taaPRGoRuMmZpn+Fh+9YKvsnM4OARtZVo/Agbstdu?=
 =?us-ascii?Q?oWth2tQ0el5GsJ+aY5ekdF5dRTlRSq+q0w+RiU8Z/T2VpHXn45Ox3KI52M7S?=
 =?us-ascii?Q?yg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e1e8c6c5-0511-4f01-8bac-08dc139484b3
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jan 2024 17:32:58.1633 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OrWhQNo9wMxYrFyc6YYrH5vJ91xMyYFtZPsFudUydNof1vjO5X6xdtMhYg8aZhJcKjpzVZlUi4sdKlhTtdgbNM6/dGy54Lpljp/8AbZaXEQSAXsVYccZpgOBXZuCDi/M
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8346
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705080782; x=1736616782;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7zQvKrvv6xX9A1FHnyV0KL2UtBMUL4q73CWKc7ePB6s=;
 b=dEBEZFSFlBXLjsbjJfPfzR0tGskXow6+DjAfMLR3E2MJzVPdOKv9BG6n
 C1AyMZkBhrihp8ZsJzJq/vo4FY4CF6pe95YQOHsORIkmB0wxnzdgy6sxc
 7bs6y/qA77i+qRPdEf60PpxjcOSz/12XRtf7PdrTgA97FdBznLc7KxEd9
 smoP07ausJ7R+9N5Yg6ssMqn4OwEbIuU5ZTJFzHmA9txessjMjx+inbU4
 gfyhN85Zd22zdNcDATPwJG8nSxoyirVn+vjEn6EuMFU5V1drwTrAI1azI
 IKnqmSu7CVTeXDu0dAZtR5RmTPckDDyxsXPRmzzYbytmudUdQRjO7MIRl
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dEBEZFSF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v5 iwl-next 6/6] ice: stop destroying
 and reinitalizing Tx tracker during reset
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of K=
arol Kolacinski
> Sent: Monday, January 8, 2024 6:17 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Keller, Jacob E <jacob.e.keller@intel.com>; netdev@vger.kernel.org; K=
olacinski, Karol <karol.kolacinski@intel.com>; Nguyen, Anthony L <anthony.l=
.nguyen@intel.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [PATCH v5 iwl-next 6/6] ice: stop destroying a=
nd reinitalizing Tx tracker during reset
>
> From: Jacob Keller <jacob.e.keller@intel.com>
>
> The ice driver currently attempts to destroy and re-initialize the Tx
> timestamp tracker during the reset flow. The release of the Tx tracker
> only happened during CORE reset or GLOBAL reset. The ice_ptp_rebuild()
> function always calls the ice_ptp_init_tx function which will allocate
> a new tracker data structure, resulting in memory leaks during PF reset.
>
> Certainly the driver should not be allocating a new tracker without
> removing the old tracker data, as this results in a memory leak.
> Additionally, there's no reason to remove the tracker memory during a
> reset. Remove this logic from the reset and rebuild flow. Instead of
> releasing the Tx tracker, flush outstanding timestamps just before we
> reset the PHY timestamp block in ice_ptp_cfg_phy_interrupt().
>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 33 +++++++++++++++---------
>  1 file changed, 21 insertions(+), 12 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

