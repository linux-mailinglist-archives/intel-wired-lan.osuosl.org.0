Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B90C79C8C4F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2024 14:59:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 60217407A3;
	Thu, 14 Nov 2024 13:59:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eaIwVLKZRU6N; Thu, 14 Nov 2024 13:59:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E3826408AB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731592770;
	bh=ltH9pQmfYvmr6GMbg6dtH52SjITyYEERNP+L4KLL8l0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Nan8qR6qY8ExOJH0y5cUpcvPAdJS1vY9VV6v+9Vjf7jUhi7HF+uJ+td6aXWefktwt
	 LSkl2wxMPl8gTXYUfBJjrhUVjw7MMg+VZQrAKB+YUN7Py8M4Gwugali6d0tYbfPz4P
	 F0ZOOfx/GmGZG1fphrh5yDETMqwQFxwY58to5tI+7gnZcB50eKM5P2OgRBJmh1bCkc
	 S2bFq0YXdNg2X12bllp0UZCUPT9EOtQ04Qs2IJ0EONwx55j2VcGPYlquEiW4mIaN3U
	 B1NeKom1nGLu78UtzS3w5xFjR4Mqlhp4R3b6GuCaG0wTjatjAsv6lwQBGjiJr8Sx3R
	 tcn2WY2seAksA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E3826408AB;
	Thu, 14 Nov 2024 13:59:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id B2070972
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 13:59:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9212C43012
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 13:59:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XIuNOS8mci2Z for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2024 13:59:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 94A3343013
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 94A3343013
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 94A3343013
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 13:59:26 +0000 (UTC)
X-CSE-ConnectionGUID: PeFTTgnLQ5OoP2ZFyNOU+A==
X-CSE-MsgGUID: T44z/t04SsC5bBMqbmBAaA==
X-IronPort-AV: E=McAfee;i="6700,10204,11256"; a="30919758"
X-IronPort-AV: E=Sophos;i="6.12,154,1728975600"; d="scan'208";a="30919758"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2024 05:59:26 -0800
X-CSE-ConnectionGUID: ZAfUG5DSQ8aF09jd4Mb2Ow==
X-CSE-MsgGUID: hB237LgjRgSsjAmg2saGXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,154,1728975600"; d="scan'208";a="88605585"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Nov 2024 05:59:26 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 14 Nov 2024 05:59:25 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 14 Nov 2024 05:59:25 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 14 Nov 2024 05:59:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CsU/3ivxtkWkBdt5LoarXbtZ3EIkidH30rgBs68FEr2QplbuCFj7QNMpQeFR/B0P9er44VtZx+FuZOuTKJyPWBAv+n/G6Kkj9wo7Fx5NAcek3IgJ+lTt3nsvQs0KwajFq7MOtIiKlagN/98RqULVxK/mOx+Tb5LFJ/7MoxsBxpVv8tX/okrDeg38EOxpAqueGJWiPyEaI1xQPz4a/5yc2vu4GdyKjVV1Qgldimr2Daqzgs/2EqUgnDj3VnpyAG+WVlpdqX2a5qnE37g5nfcu0+01olA2JTiLG4YnfzKtkgQQmZWEQc0PR8xPV/7j5OYECAN+up+bvurF8OfAaXzx4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ltH9pQmfYvmr6GMbg6dtH52SjITyYEERNP+L4KLL8l0=;
 b=KjCbPs7D+inME8KVU4xQ6ev7QVxhL9ilBncpPjJZzKKtv5Al3+WBUgmheIVI/em4FlLBgf9FCUNV7PKc74w6OLWB1hXRtTdsstayCmcdGk4u9VDIbyz0+i1E3TuHTwasHW2swJDjDXJexEYn4jBBRB8UDsf1DxNSXYsKRs+WwFIT0T9tdlzjBdt7cT2X5dffz1W2v+NP1fDLHTRdrqsWUGrm5J/yMiCSv/ucNrsNZsCpL0EpXueoZdNcER5qB+Z+zKbe4WdIP5mK8qHeYm4T2u/RGenaW2ylfbypIkbdKbKv9mDaNxMe60xTZ2OiFNVIb8ZdDZM19Gfj+LZWxmecwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by LV8PR11MB8678.namprd11.prod.outlook.com (2603:10b6:408:20b::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.29; Thu, 14 Nov
 2024 13:59:23 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%6]) with mapi id 15.20.8137.027; Thu, 14 Nov 2024
 13:59:22 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Greenwalt, Paul" <paul.greenwalt@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Greenwalt, Paul" <paul.greenwalt@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH linux-firmware v1 2/3] ice: update ice
 DDP comms package to 1.3.52.0
Thread-Index: AQHbMjBcdS/EAZx2vk+HtLl9yywxc7K21hGw
Date: Thu, 14 Nov 2024 13:59:22 +0000
Message-ID: <CYYPR11MB8429F635CC8D996FF0175646BD5B2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20241108223643.2614087-1-paul.greenwalt@intel.com>
 <20241108223643.2614087-3-paul.greenwalt@intel.com>
In-Reply-To: <20241108223643.2614087-3-paul.greenwalt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|LV8PR11MB8678:EE_
x-ms-office365-filtering-correlation-id: d501d463-c540-4170-a032-08dd04b48b01
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?olr8MjMzr5QVZyuCktXDtQX6NPm/evyON+2DePZUD+p+fHIJMlbtNla+VW4O?=
 =?us-ascii?Q?3MTYGkxzmifRftdTRXSvcZooPoC2vFlPVG73XSNyDjHoD7I1d1dlM49qg7NT?=
 =?us-ascii?Q?9QUVnlfmBfF/WjX7ALaD6skfkIpQiskdX4fqc34+dYAEtQ5C2U2yDh/seShE?=
 =?us-ascii?Q?Ash/k7TeidbwmJxjTQS9TGpPXHrMnzI9I1C9fpfzTx39qREhAADbManvide1?=
 =?us-ascii?Q?vAjXPfXyznTf+ENNGRYn6gxUFk7+qNeL8VdIDZNF+xIyUn5fTulPzeaEv9Zx?=
 =?us-ascii?Q?SjX8KGKnjCnFV7x+V5/ZYeLLK5de/RALdhmNST/KALHnUT4rTgQoSBl5EZq3?=
 =?us-ascii?Q?cfQh8gyheJrK0cKNV05gaSXaqBO6d5nUr3KhF6D3mRgQmG1zU8Rk5asbhmIp?=
 =?us-ascii?Q?NWEHYl0uzqyyFYfi4dComCl/aKyOKmbqEzw5Rp+o+qxpE7O+ZetbJ2V7lngY?=
 =?us-ascii?Q?KXbsJ522+6D1MALDvTz3px+KjXaxdgn22eHETeqwpCqCU/1fmCVgT5QZ7law?=
 =?us-ascii?Q?JRwkGbqUTBq+HYeq1/eVrLQHbbtIG3tlU2z859s6Z5ulw7ybCysWsYnjrqyX?=
 =?us-ascii?Q?Kxok5U8wrGrq+FvDZp45OnWsSPSJXWlM9RuzwA37Xb69qF4n5Od6ut8DYXFN?=
 =?us-ascii?Q?YYcRfZ+UymvgnIII9vEKESoU+0JFoVXdo8RtvUpL1KRRXnqRpEJdGdv8QAUf?=
 =?us-ascii?Q?I64gmb4ocOvD3L1DFjMScThKkAJjKTJM1DdIJKcPZX1N3iuUdmtMyLSxwwif?=
 =?us-ascii?Q?K99NAse8SRFol4ZAwB510UnRLEmhKM1ZJUDOPnd5gXrpnG+wASLi6EsmK8Hf?=
 =?us-ascii?Q?ReA0K70+goeb2yp8oc8TwzcOdkVV6q98lyHDJA+dckq0RRv2lTLgCsP/tpDe?=
 =?us-ascii?Q?umVcj+5pE4ffyoPW0ivInkjDqCFUURX6jnwJYAU84KZ0p0ixMt1xfOR0XOsn?=
 =?us-ascii?Q?EjUdD/LMTPvGaqIRS+ddPw+E3sTBNMOChoCPGkUXZh4vcnYlq8ZVu0ZbW1p3?=
 =?us-ascii?Q?5qrTBef2ooFdDlb1zC9VkGkmgZRo9tazJvoaEAvthRNsfKI2MPhDMsc5wRU4?=
 =?us-ascii?Q?OavQVT3eMscQxUq+tZYynUnD3w3aqYV+wSZTiqr5P395Xe41EbwEc3tSVq4m?=
 =?us-ascii?Q?H+jQSqOYzWcuSwAnlCwhuG9OCe9eXmy+4MI2Bmbq05GAj+JqgjpDdLmNnBO/?=
 =?us-ascii?Q?06i6rH3vNmdLHLTvR95XrRhtmdcCkcnYHbIkj6EmRQrw0z2BpfX/wGoknQ9r?=
 =?us-ascii?Q?eiNcoFNqzTeYp5q6ohD4Q7uhgBFCkKqp/ucvxeefbmmKZnWdOEawaKRWwVYX?=
 =?us-ascii?Q?oB+0fQ1ODEA0v+2F1XQt7pQ7apXmHVvvq0K0eqR0qlRskRNqrug+6Ntp/3nQ?=
 =?us-ascii?Q?8eUW8ck=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fxLEYvgZl7M2VJMPOdqcW4o6rp5Y0pakA821qKDu4LuQ1oJofjCzOXMNyRXB?=
 =?us-ascii?Q?7vxkmzSuW3CFNI3BGgv50amBYEXvB/Izx2lqFPvJiWMnMgNLc+Oo7QOwc31r?=
 =?us-ascii?Q?f4pd7EwhM7w/AfexNvy2p9lPCqeTsZzoUfUFGUPpH465s2RDLVYnXbfOgsf5?=
 =?us-ascii?Q?Y1DBqh4SR0mWYopf4VC/95HX7X+uTqrRMmkCYlFFrnSILiFZJpiIGSvMFXgC?=
 =?us-ascii?Q?4H8lMbgteXCHWvMYw8witrdFX+ifDaIQSjlJnO2/75RUSuq23nQxeNk1EccS?=
 =?us-ascii?Q?DDS3lwqQM3LYQFMVklAt8afJlNOF2QU2N8Rym9eLzfbFb1/DvKAHzcu/UK0I?=
 =?us-ascii?Q?QOhPCBfJD8HCvVvHSBrB7sAMHuwjZIUh3a/7x3KRWLWBRvuRad73DGitwGF8?=
 =?us-ascii?Q?lRDyzhjI0cPFpNkpcqfdbedAfWPfgQUghqfFr/oIKX6ZB4LzWbZOIovnoSES?=
 =?us-ascii?Q?REzCE+V1y506HPC4YAJFJrnvx1h6Du16iHJ643PztmKHAALnDGMWaqZhvNin?=
 =?us-ascii?Q?WQvaSGaJHa4Kjr9+VFqvFGZo5Z2zE4uD3STF794VXAhpH1wd/2YXIQGtKaAA?=
 =?us-ascii?Q?zwl/5Ytre8ZHWbceEtMNuu/Bl68oNU0qI09owup9K6n9rTwJe+jOns1QACA0?=
 =?us-ascii?Q?YG0NJdwCaKcvO9VyfvFv70YD/pEPlK3mkMyhlNdMGarWHVGFYCcZSFJ0meb6?=
 =?us-ascii?Q?5LvGl2VLFZUefEx8ifWzC0DerXOWHB5s8iyO6NfyxgPFd7rDR4rz7VL168xj?=
 =?us-ascii?Q?1cphs4f5666yd+u2BeaAG1e8cmORiLD9fRAxod1XWQ8mhAg1XxctnGNUgjr0?=
 =?us-ascii?Q?J4QABCgYVpWPd8Lk4If6DqYa+IPBs+TW5tkygVdupktnNWNIpb2fzHIuSX40?=
 =?us-ascii?Q?lm1CVCBmZ/UQI59N1ZBPVGUYN8dINssCLpGeJqyr727Xrbqj/ZaMMEv0jv+B?=
 =?us-ascii?Q?+RjydkCnR0rbrKEnOLDM3rw09nl5aQHNxpaApyI0wxyavo4RN0cRJWIv6YK4?=
 =?us-ascii?Q?zIaZxgqAN16od2rTA0Pr1NJfPHI9opVQHszPwnWLXBRrqPE3Fixz/YKrRPuc?=
 =?us-ascii?Q?+r27kTcIvDK7iTsXAi55HQTZQa2nFoPguNCUkw+84uIHzWaAorZ4dzpStQqp?=
 =?us-ascii?Q?o2JcwqtYkKv1wwGtB6HFhZANOxOISt+8kNis4u1lQHnPH8jKWtBwv8Ouqisd?=
 =?us-ascii?Q?BHm4pGaXr3An8vQB44R1DJ/CSTEFDJuoCwVXPMiwiREmmFpJwTXaT76ETwnm?=
 =?us-ascii?Q?6kG3usQbHyXfJ9J+FX6dmchoIO8nn6vGM/7WVNoPTrM/DLtR77IPj+W1JsrE?=
 =?us-ascii?Q?UCKebi3ciEOKwKsgzlkcCf25Ql9PJOoQSPnjebuP6z7wcB5M9Sw7CNwq7dig?=
 =?us-ascii?Q?zKX8/E1z2soPITdVGs6BquCTcCV2Ugnl/c4KWnOxyN7Z2S6AmJI5MdnOhc1D?=
 =?us-ascii?Q?IArmAPqrJe/ggLJlLDvMg9TC60GJzaaxkgZLDqZsHSyF8OdopwfNB9MSOMHq?=
 =?us-ascii?Q?AqcNP0hajpiIMj69k2oHooadiygbYpqJC6ki4wyhNUJE0g6wxdeiDkZdEc8C?=
 =?us-ascii?Q?66hSADqRIKV7uhTP+Qnx8V5y7eCQVc2JQFqNU1Liwu1/QCBxGWXxr26pWxjB?=
 =?us-ascii?Q?Eg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d501d463-c540-4170-a032-08dd04b48b01
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2024 13:59:22.9110 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3Uc+QfTsgiWadvEI20Ky2WEoICNFJ3j4X21JDRt90iLXYhAcM3AOT5A59Xn6QwIEIOQ+JZj+UPatw1dbAUHTp2f6YUuqqcogxrMqiB59h+OGfelNkJioorqt8ajwCJHC
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8678
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731592766; x=1763128766;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=V7ILIXLqn/tO3xjrMI/zwA2OTs58k1+GYyQkfhAYC+o=;
 b=AgpaHh1mThV5IJmsB8rD+RvUjNO3A941o8w6MkonXF36y4Fn9wmEl4gu
 hiiP3iwnfdqlbvYL+9Rz7ouBuoBi6oaxXqW0Up8FeKSpIXI0qUymuOB95
 pwpFuhFki3Ru/RY1dyyexT7Pftd2/wv/zEOC9mJt/jw7paXXGW/0zePf9
 5Yqbj4+sL6jCpEAqfD3TH+pi8Xbp3GlUC1VP0lHsswkEUIfxJojpsQaAQ
 FysuQxDw0oOao8w7RI2bU+tfLmb1tyH3Y51MKVmlKtN2er5AqhirKXKxV
 HBvmDwgfH1ECJNH967Nx8XvUkfpdoKJStbDPNwXHsLjD8z2bfxiU6D2R/
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AgpaHh1m
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH linux-firmware v1 2/3] ice: update ice
 DDP comms package to 1.3.52.0
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
aul Greenwalt
> Sent: 09 November 2024 04:07
> To: intel-wired-lan@lists.osuosl.org
> Cc: Greenwalt, Paul <paul.greenwalt@intel.com>
> Subject: [Intel-wired-lan] [PATCH linux-firmware v1 2/3] ice: update ice =
DDP comms package to 1.3.52.0
>
> Update ice DDP comms package file to the latest version: 1.3.52.0
>
> Highlight of changes since 1.3.45.0:
>
> - Add support for Intel E830 series driver using a dual segment package
>   with one sgement for E810 and one for E830, which increases the package
>   size.
> - Add support for 192B max header length.
>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
>  WHENCE                                        |   2 +-
>  ...ms-1.3.45.0.pkg =3D> ice_comms-1.3.52.0.pkg} | Bin 733736 -> 1434500 =
bytes
>  2 files changed, 1 insertion(+), 1 deletion(-)  rename intel/ice/ddp-com=
ms/{ice_comms-1.3.45.0.pkg =3D> ice_comms-1.3.52.0.pkg} (50%)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

