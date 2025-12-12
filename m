Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BB6C6CB8EE0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Dec 2025 14:55:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D3787837C4;
	Fri, 12 Dec 2025 13:55:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x7NhpQeqX3cS; Fri, 12 Dec 2025 13:55:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2D69483774
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765547738;
	bh=25wP/tvzol51HxRW3y/pMDOx5YtoQ2no/ULxU+59K88=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0giVAO+xByCoGImFGVAo6GzKCA3RFGM96spmfHg4rCFcf1NLcWD3/WA89tkTyD46m
	 pLH7jGkfZFrd6TbxLkrZhJXda0e1DMYUa93XSgAw+B19D64oLc2Lmt3kltPhhaPIP4
	 rJUjTZlauNDfINaES7AxrwDnLorv3xnCBApjOfKyeF8EkgTv+AegODe1wrOmmsEGhd
	 aj1VFs0TatVuvgu+c7dIOhlQM8eIcDxDTJOrkuTUvBNHr7sD+zwqKq7P2DymASGAKc
	 onRJlDb53Bfq0FWvrcPlG+Bq6Z00/gDSqg9R/OHgzH3t2QBj80LNziKyrFGJJv17OJ
	 4RXea52NpiS/A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2D69483774;
	Fri, 12 Dec 2025 13:55:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id BBCB32C1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 13:55:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AFCC460AEE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 13:55:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jwxNb2fXdJ08 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Dec 2025 13:55:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B3169605CB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B3169605CB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B3169605CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 13:55:35 +0000 (UTC)
X-CSE-ConnectionGUID: z1/BMBNySp6KacgQNWYmOQ==
X-CSE-MsgGUID: FMmrCUulRyWXRtCBl3DN3A==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="67592068"
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="67592068"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 05:55:35 -0800
X-CSE-ConnectionGUID: sOUZ6JYaT/iJs0MJwzGecw==
X-CSE-MsgGUID: Cq4n3GDWTIWbdsrGtxbJ5g==
X-ExtLoop1: 1
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 05:55:34 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 05:55:33 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 12 Dec 2025 05:55:33 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.18) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 05:55:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=M/u2mpHz8SKowIdrS9vw77pzeAnZ/BkQkYGtmGuSww2TAx8XTDtfprdgHdRBbWMjSeaxYN9lxU6TSyodtvyQO+SEySzxDUqHZkVtw0XQsOif5xgsaWcIe/8cUVkHNI14bfw6gbtFzc547PbP/o9J3AkYnHKxJkHFDo0UsBIAf3drgoXq+m37YqQ2Yx+2Xf7+S050z05iDUzf0mxXWAI2NDKhF5jJI68NK+uGMIO6DTivsyNCbfxpEwOjkD840aMI4TjDaXnKKnPAIPkaxttK79ghN2DS6RKye50ocU4Dvg15rGIPqoHR//hNH85L3g9rEjag5Gj/Gt41rzH+vUThYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=25wP/tvzol51HxRW3y/pMDOx5YtoQ2no/ULxU+59K88=;
 b=ayTJXPhw/+M3OtHN1BkRaWRHNMX+vOGj3day7xGpFHVhsVt1/BlxVOJUwa+AdydLkQYHIUBEEKZURry/S7d9KaGRye/MLga9uvXFiskVb6PcIzJZ+D5wQ/Mjpuvfg7Ac9V0bML+PjC8VyWfBmgTFGBGQYngzOL36PM188gJwBHwgvg2DLaS+IuWArZSh/USoD3HKrWAoZtXiVbx6Fj3pLq1iURwZxj4JnO3wyZtlxYWLl5jfUR/CUjXgAYWiokL5Z2Oug/cLnhdSpI+78K8jf41j6WE4YbZmE84a1f1OLDQcWnJjC0syvcEOn5zq3TQv4TcbwNf6xLW4nZSE2G+pPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA0PR11MB4528.namprd11.prod.outlook.com (2603:10b6:806:99::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.10; Fri, 12 Dec
 2025 13:55:31 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9388.013; Fri, 12 Dec 2025
 13:55:31 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Behera, Vivek" <vivek.behera@siemens.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "sriram.yagnaraman@ericsson.com"
 <sriram.yagnaraman@ericsson.com>, "kurt@linutronix.de" <kurt@linutronix.de>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Behera, Vivek" <vivek.behera@siemens.com>
Thread-Topic: [PATCH iwl-net v1] igb: Fix trigger of incorrect irq in
 igb_xsk_wakeup
Thread-Index: AQHca2ltvM2RMLA0kU2uwRdYrXPPkrUeA0Lg
Date: Fri, 12 Dec 2025 13:55:31 +0000
Message-ID: <IA3PR11MB8986039C808FEF65791C01B3E5AEA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251212131454.124116-1-vivek.behera@siemens.com>
In-Reply-To: <20251212131454.124116-1-vivek.behera@siemens.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA0PR11MB4528:EE_
x-ms-office365-filtering-correlation-id: a35b9cd4-9138-430d-72f4-08de39861d3a
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|921020; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Xdwiy8oAJIh/XKbZxM+XVyEodrXfSwekY5cDKZ2OI5cXC7Z9W9UIYGRxadBh?=
 =?us-ascii?Q?9GOonkuel1J3Fl2Zr8/OCo0CYIokUmy14xxzvEvp1juc7+VlXEZlkWr8AfFy?=
 =?us-ascii?Q?b4uds2NauQlptm0Kg/O68YR/Ie7r44S+kpLitYpFR2eyYhY4psLxMh6qOHT3?=
 =?us-ascii?Q?wHvFP+zLgnzCOVyA3+Ukm6H1oVuGWNkpfxDg7pY/VCo/NE5fBz1+CKNCmuF1?=
 =?us-ascii?Q?0Cswu73mvI0jgv5LtVwR65lFIQWstV8Sf1yZCMm2MfgFPaUqxjdTHK7eLJXG?=
 =?us-ascii?Q?8jipbWp9+iCSMdktQCbUL9SKRM0ZspRxqK+cgqNk9SIVXsu2/EFBE1UyrHWn?=
 =?us-ascii?Q?Bd5ZTkTyCQ8dGO6veZziQSPuH1TzxqjU7QLItgiyGcyDbD+b9MPiOgJ1cU5O?=
 =?us-ascii?Q?KvQC57BR05yBjQ9LkjwzXpZNcEhcAQIHrJO5qd8ciBi6MgSUa5LViRYLyOn/?=
 =?us-ascii?Q?k4dAPq5FCWtbyfOfN02WwZAcN8xgMHkcc8+HK2hPhjt7e7L2S6Mctp7+65Lp?=
 =?us-ascii?Q?WCh482PPS+k/GI+xB3o2VxHOYla2pqeFFFxRywlkmI/xB8e1k36exORq7WZT?=
 =?us-ascii?Q?rvTxvpnfJnQoELZz68RiiCZrGF3XSYYEpLOHHgtf+MXucINMINaoBpYleISv?=
 =?us-ascii?Q?t2UW7Y830ZeeGUa8WvpIFW/ex8pXXs4dl706NlwRLAhgpj+CLkVZExozG+64?=
 =?us-ascii?Q?3MzZkB2HYcCuNV8V06v1Cha/xfPZmk9D7rIf8E5a7I7RPrVi0fA6gf3oB5S2?=
 =?us-ascii?Q?aJOX/QziO9k8U+sPf0DC4YkDepCBveZ7jtaJTTSShkApJDhDbhtzZH8tqxgj?=
 =?us-ascii?Q?vi/bdl2MgiNb1PWBHrq5yp97FVQJGDlGX0pOqHHApjyiLj+qIcAG8vMiGOtP?=
 =?us-ascii?Q?WEswEFTQghj4ttgUlO5e2xej1893ZpBfqMv9bWEMKkqD/lnUU6r0hOy9BhlN?=
 =?us-ascii?Q?GKF09GMXMYOym+E5OQWeMDsHnc9D+Ig8xUB5rGNAlQny/JulPjmzPLARYjbA?=
 =?us-ascii?Q?7mPcUoU2N8CfxCyXA6FnJO7ZS+NZSGwUqTT9zWNrKOy9tvpo6Hu8NQ0Mx+wh?=
 =?us-ascii?Q?7TEnNS/dIh7P6eWqVt0vCQlUCiaRIjbxSlsRsOFTLZX12qCWYCZBGKWXecVd?=
 =?us-ascii?Q?5450EAE8Y4EGY6Z3P6+yHC9EVZBc2+2Q460K4Wcg/Cl0K/YU1EA2WFrmYGuD?=
 =?us-ascii?Q?1XA3+nZUvhKyJZ+Qbbwb7aJThRY9D57G7cVnq6Cm6pAlcInvk5VApJao+m9F?=
 =?us-ascii?Q?xaFgQttj1gf3QknjfEpEMQcLjpKtRcASv6ctl8b2Js3UA4xhEH7dJopyq/0d?=
 =?us-ascii?Q?EYM/7JUEkBPOKqpf7dbzFpyN6q1gNIIplJxznqh0S+MTo2d/iR0ecQdrHX13?=
 =?us-ascii?Q?e4ua2Se0nP/BRlY54q9kM9RoSuXFTacz2g+9WNObuTNHvfJTrjCkvAeXdQit?=
 =?us-ascii?Q?dJjCB8F/KJ6NkvcBmztXl0ijBwH3fc2dVpZoNhtzKSAxswdAt8crZ4GfEFcV?=
 =?us-ascii?Q?Vp9wDMWn7h9wHdVJSC82yWERwZqOq8CnkYOHwAKNV8Kt/o2mwOjUEkRSfA?=
 =?us-ascii?Q?=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(921020); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?UcDG7TcTJMaKgJv582MQnXs2LAB8MAhswFTtZ5V43wo0PfCyfViAN8VVmTAk?=
 =?us-ascii?Q?3vorUITBTrX3BmPyAs8JNjsFJVnY+brq1JOloEdHF4ofpGHIEk6tqwOfqTzk?=
 =?us-ascii?Q?rDHw4yyz7vIdsVAV2hXJSAnEf5JnnjS6Uz3DYggOtIH/bf73MfWk8Fxbr6UP?=
 =?us-ascii?Q?U799Wn7dVdUNaB9vY5jcFITl/MDqM8rWNJu0qYVRHlr6s4pfs3wd2hNAHvA3?=
 =?us-ascii?Q?n5Y8e0YCEYVPaSTRB2q8h57RY35X9gtnJ+XsrlZRFI2grEImqZiUHjL3d0tz?=
 =?us-ascii?Q?Y4w7qwrACKVyiQPk80MQpRu634wf0zpWVrWz+UNcj6nveT5hKxO2ctraYSKQ?=
 =?us-ascii?Q?tioYN/gk6sPcDFzc80kFu3XMWNzxuT4TCnulorVa1TIoz1b76sewWCnlfmtL?=
 =?us-ascii?Q?eAn44s5qUBE3NQ7a/kOhLvnuH8JzVkRtyt20h5N9N93SSDZuu4nc78FVaifY?=
 =?us-ascii?Q?HzEhPaVsf4027OT34ICye2XwE9mQzXS3F0qGoF32FcLKpEjN6rnsjjjZtTe3?=
 =?us-ascii?Q?FYH3KV+aJRWkuyBOhk1tWmLdLvJft/Gaxn65JYzicBk2bgzx3BGRgvSHpgx5?=
 =?us-ascii?Q?OZ8Tya6J58wT5PuQ0eU0Fcq06/uvibF0rM6oHR8N1jAD6Oc8aUOoc131zf0r?=
 =?us-ascii?Q?iFDSH9K7wrORB8ayNmt3quYYdudHRMMDTsqetGSRNAdbYvrm/GrL2hd51FtO?=
 =?us-ascii?Q?Vnxdiu6VYo1WX0hOepRbGX3bLXY5ILWum7T/dIaR9gk+YpfgMdJTE+pvsOuW?=
 =?us-ascii?Q?V+s3cMX8J3jRkf5PXBLPMarrsuSFZVn2EJ1ZY4gzpc9GR0z/mSUdGY2MKFVD?=
 =?us-ascii?Q?S1GuQkdhA5sd9Pa0i0jWYCeaPPd9WVIRCHkuHwLolBxDxQl9MeIBQ+PN4Uju?=
 =?us-ascii?Q?Vk6zbbmJicwax+EMene0J+o4ZCO3E0J4BKLSER1GsIQdi+w0524yM1lTRSuB?=
 =?us-ascii?Q?TnEEXwrtE858ZS0pGP+P5L89b0nnCzzcznSFkpO159AXDNtw7Jj5T1oyf7mU?=
 =?us-ascii?Q?3sYdEQ4p4kTvnS2feDs7elSbFJYoDba4cZjAW6UxGpLVVpW9dR/EFoX++tmu?=
 =?us-ascii?Q?HY+vwb5urLWb7CtFOj/dsPBvA5nnUS5fXrWTI4GbPOUBhW6V/Y7VB3GvqEIw?=
 =?us-ascii?Q?0t/ZlS/PWGxzigcXEVO/OfLx5D8NJuinQlug4EjpbQhD8CuLnJyiPpKYDlaf?=
 =?us-ascii?Q?f3SxveIeXJ6j21vCZ3a8XZhbUK3ogIAs08Rpnid/nl4PTbCCP3233IryNg1N?=
 =?us-ascii?Q?Na9TOQVvqZUvtEqm2+FTKjw23Y1ZOTiRLsOU8qxRmKBz9s45fLMYnENQjODl?=
 =?us-ascii?Q?Hv87dl6/mioiJc07ggJvOTtzOcPyQeb4Sl2Ja/oORb1Xe8R2Xu4GBBQqtR4O?=
 =?us-ascii?Q?W//rFiHdD5zPSi/C13UuLgJDWflazExSw6FRarlTUP5fcJlcoA5sRLqRb8x1?=
 =?us-ascii?Q?ZSA+CxcIho8H2eHDFnguveZdXDBZEIzU75laSYAxmX6nXdz7zQPv8pJv0eX1?=
 =?us-ascii?Q?ODKemsi0rFXGdkSjA9lbBq2hWp//2tbcwDfSD8Yo6Mk4OsEtLNoZ/3oew7Z2?=
 =?us-ascii?Q?ydar84SLOqS21B2GyRND96Xwi5N8Dzoy0LFCrJBpgtlBg2kj8BbGgNGXlqAj?=
 =?us-ascii?Q?6g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a35b9cd4-9138-430d-72f4-08de39861d3a
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2025 13:55:31.1371 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ld4OW9rp1pQyAB57rcnRQd3AdasNXXPU7rST3fGtsEUhk/pBQBohX38lc+WpLAQEG+KdPHhnrsOkN1Nd7I/+K0G79EmKHyeI+VEtnzygLxk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4528
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765547736; x=1797083736;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=j3B8p5aT8XFR6RYjs1nL4AmpkoQq/w7f1sEpiWmJ6GU=;
 b=IV0afcFGywif71AOb2fqHgSGPWpaQVzR1W2bEnex/2rys6PnkZIxYDEw
 dRWO69g6eF7TLssxraiUZcBqe751jcgaDHDmCIFSakdpXnMJ9k2AmWX3/
 Xpfz4vpXU5dLS6P4JrIgXRpJvJPbbP0EdMjlFuU1cRPsMKj7eV9tzlenS
 oNhl8usGZozeP/Ge8mDDZwAXLsal8TONA3y3cVBArdy96yKep98pV9S4s
 3fMC108YeQusrNakqKcnS5hRkr7a1aBBpKC7prNxGChwx628sfWrpF+VV
 qTx2+bjIDgSHf800Abo+JEvBfXKQATrO0P85JLsT1US2Ccg9cYY/IrPRZ
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IV0afcFG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] igb: Fix trigger of
 incorrect irq in igb_xsk_wakeup
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
> From: Vivek Behera <vivek.behera@siemens.com>
> Sent: Friday, December 12, 2025 2:15 PM
> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Keller,
> Jacob E <jacob.e.keller@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; sriram.yagnaraman@ericsson.com;
> kurt@linutronix.de
> Cc: intel-wired-lan@lists.osuosl.org; Behera, Vivek
> <vivek.behera@siemens.com>
> Subject: [PATCH iwl-net v1] igb: Fix trigger of incorrect irq in
> igb_xsk_wakeup
>=20
> The current implementation in the igb_xsk_wakeup expects the Rx and Tx
> queues to share the same irq. This would lead to triggering of
> incorrect irq in split irq configuration.
> This patch addresses this issue which could impact environments with 2
> active cpu cores or when the number of queues is reduced to 2 or less
>=20
> cat /proc/interrupts | grep eno2
>  167:          0          0          0          0 IR-PCI-MSIX-
> 0000:08:00.0    0-edge      eno2
>  168:          0          0          0          0 IR-PCI-MSIX-
> 0000:08:00.0    1-edge      eno2-rx-0
>  169:          0          0          0          0 IR-PCI-MSIX-
> 0000:08:00.0    2-edge      eno2-rx-1
>  170:          0          0          0          0 IR-PCI-MSIX-
> 0000:08:00.0    3-edge      eno2-tx-0
>  171:          0          0          0          0 IR-PCI-MSIX-
> 0000:08:00.0    4-edge      eno2-tx-1
>=20
> Furthermore it uses the flags input argument to trigger either rx, tx
> or both rx and tx irqs as specified in the ndo_xsk_wakeup api
> documentation
>=20
> Fixes: 80f6ccf9f116 ("igb: Introduce XSK data structures and helpers")
> Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
> ---
>  drivers/net/ethernet/intel/igb/igb_xsk.c | 77 ++++++++++++++++++++++-
> -
>  1 file changed, 71 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/igb/igb_xsk.c
> b/drivers/net/ethernet/intel/igb/igb_xsk.c
> index 30ce5fbb5b77..9f23e6740640 100644
> --- a/drivers/net/ethernet/intel/igb/igb_xsk.c
> +++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
> @@ -529,7 +529,9 @@ int igb_xsk_wakeup(struct net_device *dev, u32
> qid, u32 flags)
>  	struct igb_adapter *adapter =3D netdev_priv(dev);
>  	struct e1000_hw *hw =3D &adapter->hw;
>  	struct igb_ring *ring;
> +	struct igb_q_vector *q_vector;
>  	u32 eics =3D 0;
> +	bool trigger_irq_no_msix =3D false;
>=20
>  	if (test_bit(__IGB_DOWN, &adapter->state))
>  		return -ENETDOWN;
> @@ -537,13 +539,76 @@ int igb_xsk_wakeup(struct net_device *dev, u32
> qid, u32 flags)
>  	if (!igb_xdp_is_enabled(adapter))
>  		return -EINVAL;
>=20
> -	if (qid >=3D adapter->num_tx_queues)
> -		return -EINVAL;
> -
> -	ring =3D adapter->tx_ring[qid];
> +	if ((flags & XDP_WAKEUP_RX) && (flags & XDP_WAKEUP_TX)) {
> +		/* If both TX and RX need to be woken up */
> +		/* check if queue pairs are active. */
> +		if ((adapter->flags & IGB_FLAG_QUEUE_PAIRS)) {
Extra parentheses in if().

> +			/* Extract ring params from Rx. */
> +			if (qid >=3D adapter->num_rx_queues)
> +				return -EINVAL;
> +			ring =3D adapter->rx_ring[qid];
> +		} else {
> +			/* Two irqs for Rx AND Tx need to be triggered */
> +			if (qid >=3D adapter->num_rx_queues)
> +				return -EINVAL;
> +
> +			if (qid >=3D adapter->num_tx_queues)
> +				return -EINVAL;
> +
> +			/* IRQ trigger preparation for Rx */
> +			ring =3D adapter->rx_ring[qid];
> +			if (!ring->xsk_pool)
> +				return -ENXIO;
> +
> +			q_vector =3D ring->q_vector;
> +			if (!napi_if_scheduled_mark_missed(&q_vector-
> >napi)) {
> +				/* Extend the BIT mask for eics */
> +				if (adapter->flags & IGB_FLAG_HAS_MSIX)
> +					eics |=3D ring->q_vector->eims_value;
> +				else
> +					trigger_irq_no_msix =3D true;
> +			}
> +			/* IRQ trigger preparation for Tx */
> +			ring =3D adapter->tx_ring[qid];
> +			if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring-
> >flags))
> +				return -ENETDOWN;
> +
> +			if (!ring->xsk_pool)
> +				return -ENXIO;
Looks like violation of the API contract:
When XDP_WAKEUP_RX | XDP_WAKEUP_TX are both set, if RX can be woken but TX =
cannot, the caller expects a clear error with no side effects, not a half-p=
repared state.
Shouldn't we validate both RX and TX rings before preparing any interrupt s=
tate?


> +
> +			/* Retrieve the q_vector saved in the ring */
> +			q_vector =3D ring->q_vector;
> +			if (!napi_if_scheduled_mark_missed(&q_vector-
> >napi)) {
> +				/* Extend the BIT mask for eics */
> +				if (adapter->flags & IGB_FLAG_HAS_MSIX)
> +					eics |=3D ring->q_vector->eims_value;
> +				else
> +					trigger_irq_no_msix =3D true;
> +			}
> +			/* Now we trigger the split irqs for Rx and Tx
> over eics */
> +			if (eics)
> +				wr32(E1000_EICS, eics);
> +			else if (trigger_irq_no_msix)
> +				wr32(E1000_ICS, E1000_ICS_RXDMT0);
Shouldn't we use a combined interrupt bit or set both RX and TX bits here?
	wr32(E1000_ICS, E1000_ICS_RXDMT0 | E1000_ICS_TXDW);
>=20
> -	if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
> -		return -ENETDOWN;
> +			return 0;
> +		}
> +	} else if (flags & XDP_WAKEUP_TX) {
> +		if (qid >=3D adapter->num_tx_queues)
> +			return -EINVAL;
> +		/* Get the ring params from Tx */
> +		ring =3D adapter->tx_ring[qid];
> +		if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
> +			return -ENETDOWN;
> +	} else if (flags & XDP_WAKEUP_RX) {
> +		if (qid >=3D adapter->num_rx_queues)
> +			return -EINVAL;
> +		/* Get the ring params from Rx */
> +		ring =3D adapter->rx_ring[qid];
> +	} else {
> +		/* Invalid Flags */
> +		return -EINVAL;
> +	}
>=20
>  	if (!READ_ONCE(ring->xsk_pool))
>  		return -EINVAL;
> --
> 2.34.1

