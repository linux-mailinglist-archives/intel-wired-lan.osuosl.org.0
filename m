Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D1CD694169
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Feb 2023 10:38:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C2535405CB;
	Mon, 13 Feb 2023 09:38:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C2535405CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676281133;
	bh=Eh/J0J64GZwGeNJHLL3HOmNsNdS5Stcfa20M/t3wr9c=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UMMHwBgEZaWsCr8akbFm1vylWqOX0tQLSRLY5bl4Hgf1TqmWqppVV5/LECN2dl9CI
	 fouTCTnLVYYO63zu6WNM3MNRGLN7uyGhJZFqXbvTUHSXCHZnhAJjxq7K2edt0bqnzL
	 wLwwynTStl7a2/Bbw80hpCqobkPZShzi9KCfeCEuCOCf3/7J1ilDxHYyKlpvj+gFqe
	 7azGvnPNG5DTRlLdrmoJtrpV2aqeO2w+uVIiPOAEB1AlCTcLATZJhqgWC6EWXUyCqT
	 llDg3uHJrPUIHXBEkcBxyr3xmnQIwFIrAZZEPXgszNjZTjIW+cNdiynUOT4xjyNYdS
	 lZhfHDE0k1aFg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L70IkKjEopTP; Mon, 13 Feb 2023 09:38:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 26A1E405BA;
	Mon, 13 Feb 2023 09:38:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 26A1E405BA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ED55F1BF3E8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Feb 2023 09:38:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D2B6C405C1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Feb 2023 09:38:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D2B6C405C1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VDiNNURern92 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Feb 2023 09:38:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 49D714010D
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 49D714010D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Feb 2023 09:38:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10619"; a="311214734"
X-IronPort-AV: E=Sophos;i="5.97,293,1669104000"; d="scan'208";a="311214734"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 01:38:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10619"; a="662117053"
X-IronPort-AV: E=Sophos;i="5.97,293,1669104000"; d="scan'208";a="662117053"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 13 Feb 2023 01:38:30 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 13 Feb 2023 01:38:30 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 13 Feb 2023 01:38:30 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 13 Feb 2023 01:38:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fw469uqEndvHiUSpeEfVcrvHp06dvXv07xHcfZp0DjfxhqcittR8wyoaOnMyhONTPRj+E3sY2PlFeyKGTT2ldcpFAAKtV0homDlp1M1MEbJB/aR0VqeofAnf37ZjDW+v0Zn8mGeelknKp8mpCdqrfSuxSX+81TSGCagAcG/zRizgaES/z8fALA6Y5oQGaDBlYXA76+SGDHsA5yboK4iF18ZD0baEjUn58nuSkV5VwFpMyMptbgEUr2hzEtr1GpD0wWgKELkur6CqlvBYSPlLsUVdkbDWsLNPDWnfTI3fa/G65uLFL3ZfoGHsULc7+RCMbWAuZvCYsJGCS/O5tztkRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XlBAmh7WzSOaeWxAVQ08rnfdgoGXNs0qeAX6CveDjQ0=;
 b=dPeif61DVb321XyVpdwSK3gjnLZ7sX0zm2QsV1K38z2HA0zzOiCimjSr1aZ0kv0xl+dQU+eJQNVv79Cyn0t4e0/6sgKpTHsD3vHPie2Hd0paTLHTqphvYdleAOEVJQOVALCoWWD0vOGBgeTTLZftc9qPweXIMgzfpZv+wBn5nt9tGPyHXkb5Bfj2uUFvKAmVL9k/qZWZsqyzkMnk/FhDau2qocyh8DeNcwIKjI4TyLGH+qyjY2I7ieN5hHfQfFP5rF3m+SEJ+eAfmnj/gm3b2l4EzJdKuZTAjuCBYdEyLsKkuHG4i68exvJWTEOoaEs+/qZw17A+lrQU+W6+JYLvIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by DS0PR11MB6448.namprd11.prod.outlook.com (2603:10b6:8:c3::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.24; Mon, 13 Feb
 2023 09:38:27 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::5a1d:f05e:aa47:f428]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::5a1d:f05e:aa47:f428%4]) with mapi id 15.20.6086.023; Mon, 13 Feb 2023
 09:38:27 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] ice: fix lost multicast packets
 in promisc mode
Thread-Index: AQHZOoaEC2a6i2ZrXUyiRey0PwKbA67DCLoAgADQnQCACM7EYA==
Date: Mon, 13 Feb 2023 09:38:27 +0000
Message-ID: <BL0PR11MB3521837D07DEC55A2E147F3F8FDD9@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20230206235436.2254802-1-jesse.brandeburg@intel.com>
 <9a4bfdd2-14aa-33ed-3386-e4a80f03db7d@molgen.mpg.de>
 <766b645c-1719-755b-1c66-40a221072294@intel.com>
In-Reply-To: <766b645c-1719-755b-1c66-40a221072294@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|DS0PR11MB6448:EE_
x-ms-office365-filtering-correlation-id: 24a4a11d-a6c9-4944-d025-08db0da60f62
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lNmdzpc8etm22wiBiDgk7l1LfYe/y0I68G6tqvJOOA44xsGL4pKDjMKyn0gLFb2aAL5Q84/bL01WGd+ijZiEh51S8WHOro5rKcpKNE3wh9skrzwtECw1KGbzV1bSVfYKcoGfq5Mll0QkonPUzUADHOeHF28U8KtocT0XvwR01ewxFmjOC2CCk7T1C6cdVNDNV5H3UOANcQkOlg/ht9xRRmxVxuDwk6Kty0T0NbvedAFTnCPvlfgmzGv7Sbt8fBKGYuowJGx5rHFLRRcKEqYNFPlofCyT9brfwYCQIXPxyO4Ps/pwVZ9xbxl5EeSvrO/jVi/GpffFWIzdPGd4sc0AG8m25nxw4rZ2z+qNFM1nBsXgcB0cjZkuklDRTrPAYi71/23CpgNXou9YrZKFwVzNricE6Cc1Z0/viH5KW7BkjUr55DYQsBN5jLkMCA539vv9+T2baFvjYGLjtan2FYkBOeJ56c8iyILPMGLjyQ9RD8sqjgW+0jOjYNopzfmAJAnN7ZK/n4SOtJLJxq8grADxklS8mQwAzVhaO/7unVQhb8SDUf8WEXCgN2peIDe0JXkwYVrAKdEwzGmQ78FgBU18zv04luJ5T9RNFgQQYYke62KiiXHTIkN3SttOW/0+3xB27ifSG5YMEt/6+7pmQYwXl3XVyKdnlcUPY5CxWVViqrJSfm4P/pXw/TIGZmTWtmNkRQV1cMgfo/lC2HKPDZI4Jg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(39860400002)(366004)(346002)(396003)(136003)(451199018)(5660300002)(26005)(186003)(55016003)(38070700005)(2906002)(4744005)(6506007)(86362001)(52536014)(41300700001)(33656002)(478600001)(71200400001)(7696005)(8936002)(122000001)(9686003)(316002)(66556008)(66476007)(82960400001)(66946007)(38100700002)(6916009)(8676002)(64756008)(66446008)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?R2J6VEpyOGFEcFQwNGtPenVHT1c4NGJhaVI5di9WNXBmQTVzUWlOekRqOEJl?=
 =?utf-8?B?RjZ2SFhwTWVsbFFpRmFhck9OaHVDUVNqOWhRMmtSeG80Vy9Hak82MmxsRkZ2?=
 =?utf-8?B?bkdMVnRBNy9saVJnZkVqekZTYmJVcmVwdHU3WGhMMmxYeFd2UkI3LytqTCtq?=
 =?utf-8?B?ZUg0Y2V6amdwcTBPcmxzeVludmR1UXpnSS9RWFpsZFRpYUZ3Rk1uZ3RETEtX?=
 =?utf-8?B?WFRwZGdUQW9xYnM0TDNBSDhuSzdlUU5LczhEWHRyK1hXQUdNZE9tbmFmSXdo?=
 =?utf-8?B?Qy9yNm9DWVRNbVpoOTNmaHUzVjhhc2RXWmRqUzNjMnlQTno0WlVoRldaTC9V?=
 =?utf-8?B?bitJcVFxV2lHRUV0UGpSaDhsQVNIQnp1L29sZFdZTTBGWS9JbXlvZlYyVy8r?=
 =?utf-8?B?MG0rMUdqOFQ2c05FU0p1anlLeU5MWmsvdlpoZnhZaHBCOU5IT1NiMWlyNFdp?=
 =?utf-8?B?UWR4ZEtCcWF1Tkp3L1lNbHZuNHBkZysyaUljWGY2R1dFeE1CSXFQQUJiVHIr?=
 =?utf-8?B?d1dYRjFCdW9TbERvTlRxUUVldFRWWm5mUW9GTWtpRFNOVUhEa0srMTY2SUZk?=
 =?utf-8?B?QWhjZFVrc1lhdllFd0dPN1RPMk5sbzVldDFxd0NJY0tIbEhjelJQTC9WNHND?=
 =?utf-8?B?bW5wZkpFNGhEcHlrcWxDdEl4WE9POFM2Wk4yUnZlajJSb045RDdFWWEreXd1?=
 =?utf-8?B?ZlNmbkxrYzd2bjdkNE9Vcms5TjNQM1VjZFg5TjZPeCtNV2RxdXN3ekl4UjEx?=
 =?utf-8?B?MmNSVnZ4RjdwODJuRXF1dWFGNG90aCt0VVBKNVcwQUxMS1MrSVFrWE80aEg1?=
 =?utf-8?B?dlFWSCtHRjdXd3hKNnJlQUtOOGZDV1cyVUZFaUh1aXNWaUlqWStqcWNJb3JW?=
 =?utf-8?B?N0RoRjZEOG5hU2s4bUJOakRCUkYyUHhMb1VxVHFEK1dGNWpNdUEzRFc0NmQ5?=
 =?utf-8?B?blRmN0U5WXBTT1JYeGdMVUliWlYrYkxncGIrOXYyTEg1YWFmaTE2YVhSMlpo?=
 =?utf-8?B?SEtObGptY25ocnJ3bkpXTHJoNm0zenhwVC9LSFZjR2FFNWhkVHdKbDZPRkYr?=
 =?utf-8?B?UHc0N2hnVkd1UW1Bc3FGbzZzNnNUUmhudmpNMUIrN3IxbnlPMmJnR2xYdG81?=
 =?utf-8?B?QUxBdm9mZmZyMmFEaW9qcjFQaXZvV3gxZ2xpY2FpOHIrL24zcU9IWC9EOXdP?=
 =?utf-8?B?UzVMVlJPSnB1bTkxL1A0bG51dUVubXB4R0tWYm9RTnlXWGU5YUhwM3BEYURm?=
 =?utf-8?B?TjNJbGFkWDBaMTNVMnVlNWZjZzEyM3RIVjByZHhWZGlnRVdPQm05SHlwdHBF?=
 =?utf-8?B?ZjRLSmJwRExTdTBYTkRqckZHbG0vbEJGaFl6QlBLVzMza29PNDNkSlA1dy9u?=
 =?utf-8?B?TDAzcWh0QXBqYnI2bFRFTkNDVFBkenllSjFJNXV5T3FtSStxblJUUzFEbWFy?=
 =?utf-8?B?L0dLaEFLSDhPMTFtTlROVzh5ZlhQdjF3MlFYb1FUSzJzQWJpczhZN3NZSFVH?=
 =?utf-8?B?TWZTb1JUSXczSHVTT1ExczBOUlh5YURPNGtSMkFtME9WRXd3RUlaSVZEVnl4?=
 =?utf-8?B?ZGNMcTg3WnNVemlHZysxb2RBKy9WWnZKSTIxMG0zbGwyNFhmRmVPUnBzRGFn?=
 =?utf-8?B?blVyYzEyMXc0VnJ6dmdwamg5T3JnNGwwUytvS20wa3E2cDhRNjBkeG1pRzhG?=
 =?utf-8?B?ZGE1dHI5d0JOc2hLTkx0dFIvZG9IalMrenp5aExwd1M1MTk1Z0E4elpibHpa?=
 =?utf-8?B?eFJ6Sm9ZcVlaTzQ3Tjc2MVN6dTdGSGRGZFZ5UnVYQS85dVorWlJvTVNSMHB3?=
 =?utf-8?B?dThjSlhEbXlNdUdENEttSmo2Lzdrdk4rVVVuWjdBd0h3TFhHMmVSbjhEQ040?=
 =?utf-8?B?Z0J5R2ZlK1B5ckZUYTdpa2ZOSndyMEF6REozZWY2a1k4VkkzU05sWS9tQkNW?=
 =?utf-8?B?TU5icVU3UEszU0VaSEZGWS9abnJudkxsemdsVmhqOHBZY25lV25HSDFNRmlv?=
 =?utf-8?B?NjFsdGxWUjFrbERiZnE4WTUvQmlTNUQzWWswUStoODA5TzFLbjc2OG9YS1Fm?=
 =?utf-8?B?Qnhhb3R0Q0lZS2dKaDlsbHN2ck5TQ0JORFFZZWUzdWlvMllaMWpFU29BalZm?=
 =?utf-8?B?dEpZY09MR0l3M2VhOWxKK05PK05LTlRvQjkvU0RVMVUrZEF4RFBuVEZrRkU0?=
 =?utf-8?B?NUE9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 24a4a11d-a6c9-4944-d025-08db0da60f62
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2023 09:38:27.6610 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dv8UDZmXm0qyeDG6e9THbAPEcvOy6Op3IrJyi93Zt8yzxFSxKyIyyjF/ifEt6ZAFXO6lL+b+kI03cwdUC2pRnCKLqBvM4QIxMXik6P59ZLU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6448
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676281117; x=1707817117;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=XlBAmh7WzSOaeWxAVQ08rnfdgoGXNs0qeAX6CveDjQ0=;
 b=LNtDNy0Aa7BZ5AEQdUwZ28geXQ6HC2UWMa8pyYLNRvRS3QRKcEDrsITZ
 erP39q3e4s02hc/kl4T37XnDBw4zbtFAE9P/yrrUqJJHl9pfhx85mSNr+
 PmSNp6+UtKpbO6/Cp1e62d96Yz7xUAtSKLqypv10dWFspPcUaQ7dDoya9
 4Pww9XXvkoMOz7817hMmoXNpAHzOCnmFSgAJsatTEObPiKx4e/m949J/V
 7o/8OWxS91eGwaiWSPzWT2a/06nwf2hK4cViXD7d2wji0d6nb7bwGbv6M
 b9GUJVzk2aiM+PRkOErcSUpSVnPr0KlWd1wFEN8ZxJUNYUoweURPR9uSs
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LNtDNy0A
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: fix lost multicast
 packets in promisc mode
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiA+PiBGaXhlczogZTk0ZDQ0Nzg2NjkzICgiaWNlOiBJbXBsZW1lbnQgZmlsdGVyIHN5bmMsIE5E
TyBvcGVyYXRpb25zIGFuZA0KPiA+PiBidW1wIHZlcnNpb24iKQ0KPiA+PiBTaWduZWQtb2ZmLWJ5
OiBKZXNzZSBCcmFuZGVidXJnIDxqZXNzZS5icmFuZGVidXJnQGludGVsLmNvbT4NCj4gPj4gLS0t
DQo+ID4+IHYyOiBhZGRlZCBmaXhlcw0KPiA+PiAtLS0NCj4gPj4gwqAgZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWNlL2ljZV9tYWluLmMgfCAyNg0KPiA+PiArKysrKysrKysrKysrKysrKysr
KysrKw0KPiA+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMjYgaW5zZXJ0aW9ucygrKQ0KPiA+Pg0KPiA+
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9tYWluLmMN
Cj4gPj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX21haW4uYw0KPiA+PiBp
bmRleCA1Zjg2ZTQxMTFmYTkuLjNhNWY5YzE1YjY5YyAxMDA2NDQNCj4gPj4gLS0tIGEvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9tYWluLmMNCj4gPj4gKysrIGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9tYWluLmMNCg0KDQpUZXN0ZWQtYnk6IFJhZmFsIFJv
bWFub3dza2kgPHJhZmFsLnJvbWFub3dza2lAaW50ZWwuY29tPg0KDQoNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5n
IGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
