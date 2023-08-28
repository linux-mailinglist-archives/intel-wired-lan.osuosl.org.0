Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F8478A623
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Aug 2023 08:57:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0C9A340590;
	Mon, 28 Aug 2023 06:57:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0C9A340590
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693205852;
	bh=AknggZy36TCKO9qgLP6qK/QhS2TdxagmMPRZOpzaIBI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hfPeppdg0ERr5dyTm9kc74+C1S/Jpa8bIRriX6v3b2FxCCAGZY1vR6pXo9oQfLnz9
	 +FGxOzKIzI+bcybwfgtajZ5wy1PBEaTTVHUAiYqlrx5GXfpAcNLw6yClFebDAZsKVc
	 k+xATxpjpB00PxJIpWOVsSzi1T7M0+6jRvmYPhVJmf73G9HRu2+vPxGMobJC4gF9+M
	 C2zjTdamErHNctti/qtwowHSHmvp9gQnGhlR5xvON9l9MM46qZ05B/ByjCQ2ujPjZB
	 5UhArEpgHXQY+/timbpxzbgXR2SIKyNd94K8EBvOaSiBbgAZ/e6Cfu9yKAxM+rn051
	 wkqSF0VnYuXrw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PUNpsoTShsjT; Mon, 28 Aug 2023 06:57:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D293F4053C;
	Mon, 28 Aug 2023 06:57:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D293F4053C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 320A61BF5A2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Aug 2023 06:57:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E05B581E11
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Aug 2023 06:57:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E05B581E11
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fYCWKf99Euvc for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Aug 2023 06:57:24 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 426B381CA7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Aug 2023 06:57:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 426B381CA7
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="377762250"
X-IronPort-AV: E=Sophos;i="6.02,207,1688454000"; d="scan'208";a="377762250"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2023 23:57:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="1068929947"
X-IronPort-AV: E=Sophos;i="6.02,207,1688454000"; d="scan'208";a="1068929947"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 27 Aug 2023 23:57:22 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Sun, 27 Aug 2023 23:57:22 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Sun, 27 Aug 2023 23:57:22 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Sun, 27 Aug 2023 23:57:22 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Sun, 27 Aug 2023 23:57:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LVrRrAC0JiHsAxUOM97qu4qAzCjxbRpiRe4ShjqQIn62HN1sKGLRN92kkZPsKnZ0U6X96h4q1fSYVPteqAZRK3nWrieg25mOep7lJineCYmV7Rt77qH2MWpLA+BFJ6OwALcaqH96P8ECHdbGP8NflwiR6H8Y0YGXuKBaltMSzchOlYNkIUxawyAsD36v2+CN4LzSV9S6T0K3YS+c2xWTV/6eN8VFCrdRenocDmXLIdSW0LHDX7/6nkbsR540IdRB3SWdM7x7BlIS03DiiMYd9ghpMHEkd/IhoFiU2dsPkzCCBEz1vykwKBlnttEVL4ncy+SjdOypf9WuEhICWu9emA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HJhM0pNWVIuAbDo8MYQud9JCY4W56yEAr1Lk+z6fxYA=;
 b=KUch3U9jA3g1nH50OZ4q+CDmLdbxOULJAj+LWnmIoVxMfE9Osexo+c/5RNClc2BArNNTY02m5/susV/hX3SIim61yWzUQLRP4xJtbhSiQ9H+na0JbTUGzQcF+OZcQH4lrhLML+VRRZUUgau143oq9Y7GtcCXvUQyGhLAdW0FKH1m8GP+7zuR7fPg4dKwvEVxIWEcWC5Mc3yc+ZGcgmQqYGM8wetmVX+No6bnmI7big1N7jDnwjE1LRBMbZYqK7PV5ldry3ZfGnbhKUIeJHDQ8dxo+6SYRIpsmijAhNX4TyHeaAPetDM0DbVV0C7SOhxVxXYhLwclsfD+oZj2PsPqWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3723.namprd11.prod.outlook.com (2603:10b6:5:13f::25)
 by LV2PR11MB6048.namprd11.prod.outlook.com (2603:10b6:408:178::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.34; Mon, 28 Aug
 2023 06:57:20 +0000
Received: from DM6PR11MB3723.namprd11.prod.outlook.com
 ([fe80::ce6:bce1:eaf8:ad80]) by DM6PR11MB3723.namprd11.prod.outlook.com
 ([fe80::ce6:bce1:eaf8:ad80%7]) with mapi id 15.20.6699.034; Mon, 28 Aug 2023
 06:57:20 +0000
From: "Guo, Junfeng" <junfeng.guo@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 0/3] Enable the raw flow
 filtering for FDIR
Thread-Index: AQHZl1e+CXaL5DIcMkeafjydxGh9kq/6aN8AgAVfhnA=
Date: Mon, 28 Aug 2023 06:57:19 +0000
Message-ID: <DM6PR11MB37233BAA89EFE6E6597FEE61E7E0A@DM6PR11MB3723.namprd11.prod.outlook.com>
References: <20230605024453.2378898-1-junfeng.guo@intel.com>
 <9e3378aa-625a-b5c7-995e-75f532a16102@intel.com>
In-Reply-To: <9e3378aa-625a-b5c7-995e-75f532a16102@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3723:EE_|LV2PR11MB6048:EE_
x-ms-office365-filtering-correlation-id: 00c68521-55d2-4182-75be-08dba79405f1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wk/bKLam87hzqhP3xWkrpL7mKlpVWvAG4QB/QFlsuyj1EswxAj5T+sbh4qkz2Q9VkqJKEaeNi2F//f33M0PVF+IPkU1RkEZo4c/swP7F37zRgPYv8FnB1nRfWYhC+16rDPvFKMfq5Z8BkZBXr3AWqCdVSsMQ74BZauJ0dFy+IAaphV9fAKSSzJpYMRq7LJ/5i2hfc/7wSsRtqTR47h2H8fyzPbfUG59rqYLt7qkI4sYZMNIHgK8B6x8XFivbf5KrZ1NiaZKEW1VvHfRg95mbJbhe/vPekbaqzVIwT9ghIV2n3QMfcdpFvnTegwX0G7ExQT+9I1U+iF1jKa0Iqp9QrlntRssFbS2DK9Kr6TWXodCmTZSNjWtPpHPCuMosOfBmB2lKQnQLfInG80g4qifs+AvUkzkJjhcPxLBFo7mJU/Lbp0Qfyl2qMZeeYoWDOT51yADtZ1miWaUl4Uj5vzXUKlUWvRStaer0uqmdY33+sWOlzMWAowkOzxHk7YkOV2BNwmnuwPem13zDJxgZCASbLpIcLD2QsZWWpVyna7PT20Zx5u4xcwgdA4vQ/vBRw4N3jwXkvIqh5hW0/GhFbeHncdQMMij9vC5NSdmX8/ag2uE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3723.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(396003)(136003)(366004)(39860400002)(376002)(451199024)(1800799009)(186009)(83380400001)(478600001)(966005)(122000001)(26005)(107886003)(9686003)(53546011)(6506007)(7696005)(71200400001)(55016003)(86362001)(5660300002)(2906002)(33656002)(76116006)(316002)(52536014)(38070700005)(82960400001)(41300700001)(64756008)(4326008)(66476007)(8936002)(66446008)(38100700002)(110136005)(66556008)(8676002)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YmpvUDJXWVdEclBFbk8rOENhZE5PTXkyOTEwY2k5MVUxMnRTWFF1Qy9tT0NU?=
 =?utf-8?B?K2JxTHdrT0FTNWQ4NWVxc044QUpvNmV6S2NjdHJvSFBkNHdReVhOdW9JUFEy?=
 =?utf-8?B?WUd4eVVhdjZ5dkR1eDhMeWxJVVRId1Fsdm9DRmE1WllKTVZuZFB3SnppQy9r?=
 =?utf-8?B?UEdCbXNBV1k5SFZ0eGpjMnFMOVBnSDZXTHZJTXpjQUhmT1UxWGQ1SjZzRVpO?=
 =?utf-8?B?eDNRYURqRUZMdUhoeVl4dkVFRnJRN3FsTkVLTGdNTVFheEEzT3YydCszb0RW?=
 =?utf-8?B?MXFucEJvaUhhb2l4VUdvZ3k2L0RxdHNMSUlXU2oraUxHYXJUUDFGSVNIVVB0?=
 =?utf-8?B?bS9jTWJBc0pPdUhEbVVtNXJaVWNiUS83bVBZYndtNkpjMEdRS3Q2Vzhjcjcv?=
 =?utf-8?B?c3ZvVW1hUWJQdTQyM3ppWUdIdk5rZFo0OHgxZmxacFVLdU1mMWJUWEx6MmMx?=
 =?utf-8?B?bXBVWGNzekE4OFdoQk4zb24vcEFoRHJxTVZHdHNmRktLMVNTOWRyVlBxZHhD?=
 =?utf-8?B?bVBIcnVCZ1VYRVA3ZTZvb1ZEdUUyZGNZQWgvc2NCZDNmMS96VStySG43N0RQ?=
 =?utf-8?B?VVZIby9UTXlTaFRoLzRYczZRaHRLQzlEQkFpbDdSUytJSm1vQTlVT3Fwa2xm?=
 =?utf-8?B?OEQyV2IwTnhLb09lNzdoeTZKZFVQdytqZGRZN0dONWVndzYxTTgvV0VaM2ph?=
 =?utf-8?B?cnNUSHZuS3hpSzlDQXc0OU1uTGpYUytzMC8rTGRURzl0bnR2SHhzcS9TcCtn?=
 =?utf-8?B?eHpFemRBUU1HT25wbHZEV1R4MG1IMHR0SWNESjFSaUZHNm01Qk0vVS9Xbkg4?=
 =?utf-8?B?QURmWmRldG51NlZRVTBWSTF6K05wNkFrK2dUVFlGcW5QM3FacllZTC9uZTVr?=
 =?utf-8?B?M05ZTUFza2JSd2ZHZ2taRHgwb293VnpWZlhIU25mRVBDc1dlZE8wV2k1Y1hX?=
 =?utf-8?B?ZEVRQ1E1NWY4QjIvOXFrdTJTVnQxQXlhaFVaQjlEcnRCYmNVUDM0Tm1iRDlN?=
 =?utf-8?B?UDlHWXZ1UnZUM2RrMm1Ud2pWcy9rbTA4QmxWZVBYQlZ1YmtUY05aVVlYZXo3?=
 =?utf-8?B?dG1rdXJ0dkRvdUpjaUR0Z3RuVXR3eWxKU1d6NTA4WVZYQUo0YzV5VVl5RnZx?=
 =?utf-8?B?UlhwYlpvamNLY0FTNElSU3V2ZmJkbGdWL3dpSVczKys0bWp4eDZHM3Z5Y3Bv?=
 =?utf-8?B?L2VWekhBWE5SYVhTWXlFSDhzcDVkcmhVTC8wZFdoaGt5bXgrR2p5anZFS0Va?=
 =?utf-8?B?Uk9lbHJzdGs4eDQ3SFJ1bThVSUtRU2R6aldtNHFwQ1l5VVBIS2FvM3BLVFZ6?=
 =?utf-8?B?b3pPOHpSRFF5ZWpkQmUzU0V3N2tKS2l1SFV5UGltMFNBcHNWK3NaR3hYZ1NI?=
 =?utf-8?B?VEtJc25NZG1tWTBkV1N5TUYrSndYT1l0TXpTekRtaEV5aFNOeDdmUTNacVpF?=
 =?utf-8?B?VlFmdC9UaWxWUU5WQkk2VHFVOGU3bkM5UlNaME8vWlBlZVQ4aEdrdk05RXN3?=
 =?utf-8?B?WWRUb2xDZFl0MU83bnUxMHRyNGs3TktCbUVPN1hFTWtJU1Brd1cwTm8xeHBI?=
 =?utf-8?B?dWYvaE5lSEYyY3pDL2EwY0l1aE9KWldiOXAzc1ozQ2FUa3VmbnlaNkZGc3U5?=
 =?utf-8?B?ekhSUnAxaEpqNnQvR2RybWZVb2hzT0UzLytqaGNId1hXNDVRRVB5NnAyc1VK?=
 =?utf-8?B?dVhzS2ZXNzBjVis2bEUyT0lpQzM3UHhwS25TbnliYndkaTJQellYa1N5cWw4?=
 =?utf-8?B?dzhIZ3RaMWZaUXRkb2pjK1gwL3dLL1RqaDdZV2RncWhVN1F4ZXB2T1IwZVNZ?=
 =?utf-8?B?TnBwK1BGZlh5V2srOTFFclNxRUVmcUU2dmowN2pYZHk1d2FEM0RNOHdrcUto?=
 =?utf-8?B?WjZpaythK3lUOUlOcEJYQnFHQXY4VjRlN2lmWjVhYTJ6TXhEenlITEpWYjQ0?=
 =?utf-8?B?dFpZLzJxaFc4NHZLMlpyNDR1L1dDTC9INXc1V1pkVnkyVEhBN1h3a1NQbzdW?=
 =?utf-8?B?QU9rTWpNSUQrcGkrOXhYRjl3N0k1bWhjdzRYYXVHT3ZHZG9hQWpRV21LM3c2?=
 =?utf-8?B?eEpSNEN0dXY1SU9XenVSc3c2UWhUNFNldyt0TTVpT29UemlWZnZZR3YzZE9p?=
 =?utf-8?Q?4+TsQ7+yD0Gct/Hdn/CcQhcCI?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3723.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 00c68521-55d2-4182-75be-08dba79405f1
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2023 06:57:19.9150 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JB+C88e7hu+e+GdtpbBP/V4sygylk1G8O+ZPWQLojX/N3Y0fneBxq2muUmQIilozLbkPoCnULA7AKjnlLwo58Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB6048
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693205844; x=1724741844;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HJhM0pNWVIuAbDo8MYQud9JCY4W56yEAr1Lk+z6fxYA=;
 b=QO7zFE38JQqiQGe4X5PTuGeLNR4iLMtjkj/TsPzhE6LzjPfTbrjpVQBO
 ifjgqeewHFik5QCd37rVy6A0+QC6b+ldgfN8WEVYCJ78Xm67LBjdcZXX1
 eJffUglpPKz/oKWhtt1YM2Q1Zwjj9FVBDXZKsXX6DFkk+fEc1VhDbEcDs
 BMBB7XZipM79povfO4dNvJ2w9sSRxECVRsOHhX9L92xG/XZ7D1ZeAUV1R
 5GIB9R7k8qV8MxGbMihGxKonmZfqiRL0qhXCrZplKiMp4537yLMUCF99N
 lV6v03/EeqCnhZwYHKT6aMWXSs0cJDWQ086BM2A+Sl1KfVOKaHeQCG240
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QO7zFE38
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 0/3] Enable the raw flow
 filtering for FDIR
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
Cc: "Zhang, Qi Z" <qi.z.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Sent: Friday, August 25, 2023 04:45
> To: Guo, Junfeng <junfeng.guo@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next 0/3] Enable the raw flow
> filtering for FDIR
> 
> On 6/4/2023 7:44 PM, Junfeng Guo wrote:
> > This patch set provides a method for applications to send down
> > training packets & masks (in binary) to the driver to do Flow
> > Director (FDIR) filtering. Based on the Parser Library, these
> > binary data would be used by the driver to figure out the
> infomations
> > that are needed to create/destroy the FDIR rule in the FDIR stage.
> >
> > With this patch set, the raw flow filtering for FDIR could be enabled
> > to allow new flow offloading features to be supported without any
> > driver changes (only need to update the Dynamic Device
> > Personalization package).
> 
> Please do not send patches that are dependent on other code until
> they
> dependencies have been applied. Otherwise these can not be checked
> properly [1].

Sure, will keep this patch set unchanged here.
So we just need to wait until the base patch set is approved and merged, right?

It'd always be appreciated if you experienced seniors can kindly point out the mistakes directly during the code review!
Thanks!

> 
> > Junfeng Guo (3):
> >    virtchnl: support raw packet in protocol header
> >    ice: add method to disable FDIR SWAP option
> >    ice: enable Protocol Agnostic Flow Offloading FDIR
> >
> >   .../net/ethernet/intel/ice/ice_flex_pipe.c    |  98 +++-
> >   .../net/ethernet/intel/ice/ice_flex_pipe.h    |   5 +-
> >   drivers/net/ethernet/intel/ice/ice_flow.c     | 109 ++++-
> >   drivers/net/ethernet/intel/ice/ice_flow.h     |   5 +
> >   drivers/net/ethernet/intel/ice/ice_vf_lib.h   |   8 +
> >   .../ethernet/intel/ice/ice_virtchnl_fdir.c    | 448
> +++++++++++++++++-
> >   include/linux/avf/virtchnl.h                  |  12 +-
> >   7 files changed, 678 insertions(+), 7 deletions(-)
> 
> [1]
> https://lore.kernel.org/intel-wired-lan/202308232207.mbURs2VO-
> lkp@intel.com/

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
