Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DAEF7915C50
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Jun 2024 04:35:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2EA884057D;
	Tue, 25 Jun 2024 02:35:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8bFKFbqlAk-Q; Tue, 25 Jun 2024 02:35:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2699E40582
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719282922;
	bh=I7EiyOXXVYQnPWAkt997Fw2qyAnldCONJH78aDCFiWE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=diFQqaR21GHiyTc1yQC1U2aShh2wFBszjC9OF8JDqv9eRc7CZo73/wI0puyYq9Y7M
	 FZlnLxFTLQayGKaLNGt0mj6TzGSvuKup4A4PqwK0d+YAnUON30A/GeSDoqB+RnMEhF
	 SftQoYu/pym7oWhGv7x1Q/5d2SLWSaDAFrxhnC+7HevmTnsfsheeRLjmLHpBmGP3BT
	 o7N+lgdQ/QpM4ySTPh9KCjXh1I6Ud9e+/erv9HQgufJ8+yZCedrZZjHuLfsaYG/h0p
	 OFL3jr2FPVZ9HO20LrJP6uMIP1wkTAlm5Ill2cWFLxZeCar1ZVlHVjVE7ELES3Szom
	 f1ZP4goDEX0Tw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2699E40582;
	Tue, 25 Jun 2024 02:35:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D18B71BF591
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2024 02:35:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C864E81471
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2024 02:35:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uyCoEslKRQyl for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Jun 2024 02:35:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E939D81138
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E939D81138
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E939D81138
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jun 2024 02:35:18 +0000 (UTC)
X-CSE-ConnectionGUID: +TtiSof0QDKygNDVMZfE/g==
X-CSE-MsgGUID: CKgHfcBORbmPcIah31yang==
X-IronPort-AV: E=McAfee;i="6700,10204,11113"; a="19177194"
X-IronPort-AV: E=Sophos;i="6.08,263,1712646000"; d="scan'208";a="19177194"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2024 19:35:17 -0700
X-CSE-ConnectionGUID: N7WEvRfSRNG0UyKrd64/kg==
X-CSE-MsgGUID: J97ePERURzq3F/wmGVRTDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,263,1712646000"; d="scan'208";a="43365457"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Jun 2024 19:35:17 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 24 Jun 2024 19:35:17 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 24 Jun 2024 19:35:16 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 24 Jun 2024 19:35:16 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 24 Jun 2024 19:35:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oA1KMEQUM//kAIHUNlX3bHYmRIbzh1ljM9N9c9J2lgdNPK0oLDTIwSBGjkfOW+TdXNbWmuN/EYuwP0nA2nren2IfZZltSd2QKaFDc7l6UlZIavY6rvCzN5PCVg+cCGKT7yAgldZ/kBpJwt6yej1Io968XJbL4U9b8kEQmLFG75aEs1qkXmuUEUcIHlG/VLkBDILtFEN89sO0g/K/vHiEhCZ0AfYoxPaj9xCjdnyMl6Z7erbkeshuzX+H39jt8Fd4jq1HfXjZc2Km+rzIFiDoJDdwBmw+Hiu/jTY8gYgxpelvTBG5ePHgOx05ucJbyR6mblueW0s9KY/goJmSOHfAZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I7EiyOXXVYQnPWAkt997Fw2qyAnldCONJH78aDCFiWE=;
 b=X1tXbQd1rr4E/uHSS4tyn6FnwKiD/BgkiUkXpYSTSSz+tY2Rs013YVlFwH5lJpn5zL5W7eLqUK+UhS4YP2nlwGMOgbSZhfxR2iIlYkD/pqvCoDP1a9mhFhpXfVxyStZmf0cXNCIkrq+gqTnPI52cNb0gX8803ROKlz6SKsMztkHvbPwzCUj/p6ZlzxPfrQ/wpTsF7DBKp6y4cyEOqgiHtj1WbYlGylip6cZBYCgpwl6tJ0WxwZnCv1IkyWo+fPteAtcoO8mG6xkpEdnMFeUfR29DfhmNAurEgbvTFzvyZaj38Mx6McAQKYPJY+HncSOXQyea/dkJEiP8iWmNuy0w1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by DM4PR11MB5328.namprd11.prod.outlook.com (2603:10b6:5:393::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.29; Tue, 25 Jun
 2024 02:35:08 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%6]) with mapi id 15.20.7698.025; Tue, 25 Jun 2024
 02:35:08 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Samal, Anil" <anil.samal@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3 3/3] ice: Implement driver
 functionality to dump serdes equalizer values
Thread-Index: AQHavlrGdqjmWJl5fEKxjN274kB40LHX0zgg
Date: Tue, 25 Jun 2024 02:35:07 +0000
Message-ID: <CYYPR11MB8429029B08C849A60591C379BDD52@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240614125935.900102-1-anil.samal@intel.com>
 <20240614125935.900102-4-anil.samal@intel.com>
In-Reply-To: <20240614125935.900102-4-anil.samal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|DM4PR11MB5328:EE_
x-ms-office365-filtering-correlation-id: 5780cc3c-3c14-43f7-68cd-08dc94bf6dba
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230037|366013|1800799021|376011|38070700015;
x-microsoft-antispam-message-info: =?us-ascii?Q?0Ga009z9c/daO+Op6G3syYh6VvhocsKs2j41s1rjUKB2F4L210H5cbn592Cw?=
 =?us-ascii?Q?O4gDhWLTvaZh02i3Mzikcdpdse7TMxzGGAFilJg+Uv6qQPwI7eVmt+vZMvbB?=
 =?us-ascii?Q?SCl7IFuTWPffUJ/tfskZC7XWb3Jize7x2jCjq3la677HrfkqBgl0dW1Ictjw?=
 =?us-ascii?Q?UF7Mr3KGE+lcdi4Ucr6D5cp+m1hsgHpLoYLCmZDraP2yWvxiVBPUoE54DRxt?=
 =?us-ascii?Q?3nATq3IoLgqXDl5+J7GcZ/pd2Sn2KClFPSdcY4136gBkTEfXrWECAenDVTBi?=
 =?us-ascii?Q?POgpDWYC59qtfLFWq526AA1ASbwZWgQxcN6OSxn8lKrsBZ+nv6vmHOtYQ6rS?=
 =?us-ascii?Q?CwyllL5ZedHsnttFfIujYWngHfBgraQn1FBCaGSSaWKHoq5hJo0TQWTGo7ru?=
 =?us-ascii?Q?IGqx4DQ8ykWj4cC/VLg9S4AWOB25sHWnrIKvcf1seeKwZOe1VzBZn4O78qu4?=
 =?us-ascii?Q?sXWKi3PQxZo0QNf9jd8ru94nwsMcahHlhQXZTBuMvlZudkSimwlsTaRQKIb+?=
 =?us-ascii?Q?dkezq7DuWe4F7vut3rMchUtFuUcD8nGRRk6/3DmCKo6p2mTxbJZQa/a2q6RK?=
 =?us-ascii?Q?5KxxsGmeKLtYMrFZR9csz9iz8pp7yppJ+uX7DPBwy3526/lDptwgWUBY3ynS?=
 =?us-ascii?Q?dsxbRG8u5KpkLKAFyqnA4QaZdgisaqM8Vri8+dFE2hVUXYaqu78NU0VFC/aA?=
 =?us-ascii?Q?jQIv/OgsNbq5HVxCIYNewycowAUT6OUOKLbZc1iUbOBntwbTBTnrr0maYY1U?=
 =?us-ascii?Q?2jdtqTp5QvMSfGASGp+hK2MF6rgVwcIucjCtRDCcZCp05ovCmW06xwqaB6nn?=
 =?us-ascii?Q?0avwqNISTBBjSAa2a+4hlvxpbxW3vmlIeBfCUk5UCC8vGPes0gC379D0UgGv?=
 =?us-ascii?Q?WYfI7H66FWzgHqqwE3DOIc0K+jYCNavgX4UEkYZUZYIIU46yDaQbSMZn0wKO?=
 =?us-ascii?Q?+LlHA8KX4EJ9l1+aLh8m5T0YAs55gYVHyUwirtPci/CFh04R/bIEPWIcOUAK?=
 =?us-ascii?Q?wPN+6zztTjuytpOcONc7fgp1gBvb1i95TKnHR7LcHtjHU5FQ30HtJr0LhHxU?=
 =?us-ascii?Q?Ba7t8rT01ng5C/KAeeD9M77+zjJp4QTLT25S76zu1LPo6Y87sf0hhuKlyMmM?=
 =?us-ascii?Q?CbsBfcFRFr7SqYOmQ4sfRAGR8WVp4xNlvHA8d9ZyfEpBxJVURYUk6tKU0Teu?=
 =?us-ascii?Q?95+i5n04FicYQGNE5kzr6gyawMCqh1Ceg4P2hJUtbDECNaR6r5kte6rqJ0kN?=
 =?us-ascii?Q?JzdCHLYgXRFXpd+Lc39xwQSzMniWu1x3/4b6mbHi+0HAdWtL64aUcHckwIfp?=
 =?us-ascii?Q?NfQiy/PCtIxZe0BZWgZSI7hrDc9h5KmyodfyHEg8WX8iVNSH0+JWIpg2xCjj?=
 =?us-ascii?Q?r5PpTFc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(366013)(1800799021)(376011)(38070700015); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?kS/MgN7iq2VFfsPLCZw30XV2yML3VjAZM/FS7A67PjArs1r7MRgHPMXnoSfw?=
 =?us-ascii?Q?HpJ69GnJwnobJyHUzQvw+tqBXqGwGxkY8nyh1UVlqQfwdu9TcENZst51C3QH?=
 =?us-ascii?Q?mc2tDlxeMsR3BNPlxMqS5J4i9LpzCgELsGiyMh/hA6DYl7a769jk7Df2xdHr?=
 =?us-ascii?Q?PeAmSO77Ax/Dtj4sATseSDHDZDykPmVGPx70iIIDD2pe29fp5t/74mMqy3jF?=
 =?us-ascii?Q?LXJ7C0lVbXpEogd2TFnh073b+/1DKWhrdZmW3NC6VazKpDWrb5s0cHgpwZgC?=
 =?us-ascii?Q?ybYBV25CdS9t6TV4TwlYv8S0TTVP04vaI571lYoOzty8qkCeHquVjW1Kh8Hm?=
 =?us-ascii?Q?DpJqjQwoFX83jlP0OnZlYpW7maYyAB7RN58XuPgUqK0DeQ6huSZs3agy6Evo?=
 =?us-ascii?Q?ZRbC57C0Le8KSsPMIpoEIJHKS2sFmaech/XLR3SH9Nh6lPeKjSqWuZtqrq9f?=
 =?us-ascii?Q?+1MOrgYAinwHpOFSta+FnTwfgoq0nrZcLt/MWFm4yOp1I3+y0q7k/Oe7opK7?=
 =?us-ascii?Q?1uEzm9XCz6U8DOwhMfoKKWhnMB5yWPc6XoBuL2S4N8A/h3GhShTQ2hk5bOUK?=
 =?us-ascii?Q?A7OM/HKrduay6Dsyfd5GxviSDr2Jy5ewBPn3jP0xuOzH/9DgiloOi0X6J8N/?=
 =?us-ascii?Q?XtyJBNceAUNtTVVecWAam02fS/L8uQpxxb4zXOkdEf3YpWMjg9Q0PmbTzas1?=
 =?us-ascii?Q?fv86/dme8ScDYe3hf2m18asTdC6P/n5MYg4HdiRG61f5H0ZNO1dTdC9DTRJe?=
 =?us-ascii?Q?/hr3ThFWXYXraLB0BwBT3Gi05nwbrhsedMuhrbzQxeg0VqlD6Nk3C8gYHqrz?=
 =?us-ascii?Q?/i6Mfded/xuhX1ZWen8PSscH0idT1cUHgb1Gtppi3bpGDq/fQPqNWNmogMKy?=
 =?us-ascii?Q?ABVPCKP9zPUIoIVTpeJmOCaPN9WVcr7lC3iaiSfvHSHR2f8A1ZLBeqp/QzrD?=
 =?us-ascii?Q?eYLgEWAa2DMYz0yoXu7VV/Yo1/vZoGVJh6lpXYHWNm5ve+8sR1d7nMNNZm0i?=
 =?us-ascii?Q?eZwHvOT//cl1M/pknbSesla2Bn08EKb4fI/deBBHBqF45wTCVzv9pOzerjjd?=
 =?us-ascii?Q?gAnMK3WqWd8E85Wzdj9+rcEQoqkQ+E9qDzcL4oOmh8ZVsBswHq+1k45102V1?=
 =?us-ascii?Q?qNDmZhdXo7y+NFsj+i5291MfbrXK0/icDCqVQtZ9B5/w4fkgxeQ3Grvna4FO?=
 =?us-ascii?Q?InsU2BHTzieXflS+zp7bEoUUgdLmXzIuGaS4vdZ/ApYEmWYdPKXYFc7TnmLX?=
 =?us-ascii?Q?4K+YC7nDZo0LuJTS8xeoIG0KCcx66PCbhsABpdTqyo7RW7H3Y75Ez2mAAJQc?=
 =?us-ascii?Q?4CpviCQ9w1yVaSUjenbukHxU/C09KsTtiTdBK2cPucxp+I90iGn2a7LAPKUZ?=
 =?us-ascii?Q?vEw3x/k6qS4024qniJFJs+Tl5wwYpUKmrQz4YRbugEES4sSaKu0rksJlNt5Q?=
 =?us-ascii?Q?I3VbxA4wfgJY2flkS/jk0HmOoWfN7e+HqoZVit3TI7moCTRK4eAMT0W5wUxy?=
 =?us-ascii?Q?X2RE0Z4DFIK92zKI/+UioQfiP+ALKVMvmms/lldd9VaoSMd3Jvrh7j0Smu+T?=
 =?us-ascii?Q?7p43XGzmX9OONr3JqFr7DHy3ePXWxLgZvBoZpTGR/xtyDunHbNSBYLqOI7/l?=
 =?us-ascii?Q?dA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5780cc3c-3c14-43f7-68cd-08dc94bf6dba
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jun 2024 02:35:07.9775 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ks87PEHXFZ6WB7WB2VkeuGkXEPVzB/d/IR/VfKqfUPTQELmJsFH/NqHrlU7b8q3R4dbmOiYV8oAAXeU8RXAqd9ZaZSXOZ0lmazQEXscYO8H+v+b2aDe6IH34hEIdT2Km
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5328
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719282919; x=1750818919;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OyKK8VF3IV98FHagN8BlcaZW41eldJWOwmuhp2/yVd4=;
 b=H+Q53VwMoHJa2GAWy52hNB+i/4xVmvMfJg9EkcCG5t0fYrxSiUGlqiGp
 TtdHimiXwYBVSU/H6NLn5nH1bJohDYNvID0aUpeku+hy9rnJ7m9BKjCnN
 V6NKg9nOyLOj+WiTqoBDhajqYoc5yLGQyExN+KFhWsX+uj0RGDA5PHpRe
 js/8Juar7n0mRZZsyWlNkwvJWqsudyaZUDK6QpxuX56n/SBJx9/WZAA4b
 xxvIrTw4tHeHVWfZB9qrf9b6ysLidP/KZuZvM0lc7RF0XhS0PCfFDW3ua
 Trto1TcP5phf1mH/X3D44NPBs/IkAUfiSggZsAD7Z4aa0B6g+ePZVml3p
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=H+Q53VwM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 3/3] ice: Implement driver
 functionality to dump serdes equalizer values
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Czapnik,
 Lukasz" <lukasz.czapnik@intel.com>, "Samal, Anil" <anil.samal@intel.com>,
 "Pepiak, Leszek" <leszek.pepiak@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
nil Samal
> Sent: Friday, June 14, 2024 6:28 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Czapnik, Lukasz <lukasz.czapnik@intel.com>; S=
amal, Anil <anil.samal@intel.com>; Pepiak, Leszek <leszek.pepiak@intel.com>=
; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Simon Horman <horms@kerne=
l.org>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v3 3/3] ice: Implement driver =
functionality to dump serdes equalizer values
>
> To debug link issues in the field, serdes Tx/Rx equalizer values help to =
determine the health of serdes lane.
>
> Extend 'ethtool -d' option to dump serdes Tx/Rx equalizer.
> The following list of equalizer param is supported
>     a. rx_equalization_pre2
>     b. rx_equalization_pre1
>     c. rx_equalization_post1
>     d. rx_equalization_bflf
>     e. rx_equalization_bfhf
>     f. rx_equalization_drate
>     g. tx_equalization_pre1
>    h. tx_equalization_pre3
>     i. tx_equalization_atten
>     j. tx_equalization_post1
>     k. tx_equalization_pre2
>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Anil Samal <anil.samal@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  51 +++++++
>  drivers/net/ethernet/intel/ice/ice_common.c   |  37 +++++
>  drivers/net/ethernet/intel/ice/ice_common.h   |   2 +
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  | 141 +++++++++++++++++-  =
drivers/net/ethernet/intel/ice/ice_ethtool.h  |  19 +++
>  5 files changed, 248 insertions(+), 2 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

