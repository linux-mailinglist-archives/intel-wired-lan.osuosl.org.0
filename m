Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF7E964871
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Aug 2024 16:30:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 00D1F418D2;
	Thu, 29 Aug 2024 14:30:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2QVftQ7PERTv; Thu, 29 Aug 2024 14:30:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D3DB6418AB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724941844;
	bh=z2y+M++AOMHYg8ipALAKkFWoOnGnvctf5aEiWB6d3Ks=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8jm1/wvw5OtQEAjN0nDXopEexBfN2uauxv6DGWgxQ6y/MIF9EXeUvvpKIX/wNBJ9n
	 NJ/HeHlUfPCpHqKhPT2aHqPGVHA5GBikSIIkRfFQodeImKxRwYzccQ1mHUxpE8l0Ht
	 QWGn3XAwRqHmevSPAbha/ktSzp7R1quMc9fAGkSOR1YufaKJHVBC/REioneEk+wy88
	 +km0KWt9pJRlgHuasbCcU3IddB2p5VY1eTKJoGtEsdFyOsjH5r/IRPC8zUz9olXa9a
	 RSQ/81QMLC38Pu6Vwza50HffVu/kOSw1jtaFcTZTfHh9ZgV8sHUPfrzuql/2ywTLEx
	 vEbxkzaHzwkVQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D3DB6418AB;
	Thu, 29 Aug 2024 14:30:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B25941BF31A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 14:30:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9DC9A41884
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 14:30:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0FQ9b8uCrr7n for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Aug 2024 14:30:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7568D41883
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7568D41883
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7568D41883
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Aug 2024 14:30:39 +0000 (UTC)
X-CSE-ConnectionGUID: gk4wmqTLTS+Oo4cUoHHgHw==
X-CSE-MsgGUID: ZO1xQk8rQUqpiezOcemPsA==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23700046"
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="23700046"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 07:30:37 -0700
X-CSE-ConnectionGUID: TIaauv8cTdO0jP4ijD8qOA==
X-CSE-MsgGUID: N+acOEqaRrmj0wX8XM6Vew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="94406222"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Aug 2024 07:30:36 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 29 Aug 2024 07:30:34 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 29 Aug 2024 07:30:33 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 29 Aug 2024 07:30:33 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 29 Aug 2024 07:30:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=u04hLShc08xi41nrZj7vcVWPVAuKgAkPTWlnkPf5ra27J0pefU7+KtC7XWLFrk/sssvuAXS+CfELhIkbwJaeP+HptAH+bIM6oIq9aAvbVVKIj9KrkJqmk8v4Q/Aj/Q473LwLC7sT9OlVSglh4FY6rE/k4Hw1f+fwQrz9XTxKxO6E+oeL2ZHK7jcAo+VDsjSAH7zerxqZ9jzK87iYnOVJz6TTb5me+Sm/pWqS8AIsjEs8A2ADa5iXLzjLJvWErb2IuX8HlFSp7lgpPB3IJ/xFlvem62TtNmrQbI8W3nNJMK33Ujkpc13nK+5bsgI8IrsPDaCKClFJLkRRvL/m2LbGvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z2y+M++AOMHYg8ipALAKkFWoOnGnvctf5aEiWB6d3Ks=;
 b=x1kJDFGOXWTixMBU0MJSuh9LRRTxOEiBfs1UqyFe5cq7plbunoc2h9Vo1Y9/ER36Ub9KiQ88A/72zNslIiGCklJ3aztyYsUrWvPBmyAu+ORw32hORSF5+DexAxomIIlAv4kgjG44qHoMD0C3Bf5KkYs4iu+OUcy0muELo88TLzEeRRD7vitBKnzpyOeSEBtQ2hEsDVDVGoYLHmsdcpeKb8eE/h/dJ0PWFfBYfeYUKjz/0zkS2bzk2MK5TrFUvyz0AgoweK3A7yvCoMrqgJPWzYfFsWCut99n0UarqUM8oFS16wQOYn8mtbV8mxs9oCYAZcO/hSxjZO8cyvbCF6Wb5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by DM4PR11MB6504.namprd11.prod.outlook.com (2603:10b6:8:8d::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7918.20; Thu, 29 Aug 2024 14:30:24 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%4]) with mapi id 15.20.7897.027; Thu, 29 Aug 2024
 14:30:24 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Jiri
 Pirko" <jiri@resnulli.us>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3 2/6] devlink: add
 devlink_fmsg_put() macro
Thread-Index: AQHa889lOEDLCliVW0GhUv3Xqj0Wo7I+WB4g
Date: Thu, 29 Aug 2024 14:30:24 +0000
Message-ID: <CYYPR11MB8429EAD8C07CA713BE83DBD9BD962@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240821133714.61417-1-przemyslaw.kitszel@intel.com>
 <20240821133714.61417-3-przemyslaw.kitszel@intel.com>
In-Reply-To: <20240821133714.61417-3-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|DM4PR11MB6504:EE_
x-ms-office365-filtering-correlation-id: c6125044-18dd-41fb-217f-08dcc8371eb2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|1800799024|366016|376014|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?LQz09lzUoMjg0DNCwqoSc7jtPYFq6DN2d7J0BYLZCwSrPzWmSeHlKe1t7R/a?=
 =?us-ascii?Q?YWUULmxQK7qmF7f9/9Ut/SSEQrA1sCULKnpoh75jPJzm+VD4qkCr6ic+zaTe?=
 =?us-ascii?Q?r8adxb0yqxax1MEVDZieCWfda9URXahgrLbsbymwuFufSJP3OdLhYGaWUuyA?=
 =?us-ascii?Q?CMAoOAzCCpsvqQILVRfk3M23iNqj1LY6pRvRawDDS/hNdHiuFqEJAbN7O8ZG?=
 =?us-ascii?Q?77nH0pvnrr4/HNJfV9BAwdFUizG7U739cRNEIsg4BNar7Um5BbJjQmgloJHC?=
 =?us-ascii?Q?6F4LfEAU5WGDwM+wK6AtO+wbka9DQBF+BiQrpm6owvVH33jPop5WRmbC+ouP?=
 =?us-ascii?Q?ExMISSv/CGzVsBq3JtNTGd9la0qmGoOuz5S1qe17flGAifPHxPk23ejEMo5I?=
 =?us-ascii?Q?9ASBdGs1Fa3xQYex188rV7RMVPTiEsi7cWSzHAJ2uRZqi/ONowpcNLglkrgY?=
 =?us-ascii?Q?hH6JE8baoQSLfOqmP344F5dku4fV8hHH3Fq4yw0mungg+tp3lGRDnQdqA4Ta?=
 =?us-ascii?Q?qELLUOimuzaBMbrujF1oDHyGtolCD6S3AkfDjJQp176tRNbfn+d9TNcLGzue?=
 =?us-ascii?Q?VQxO0qhv/sk31+YaxuzhyYabqJ3Vdo2VsCyWWlkQB0+hLFyDgUEgHOcYbpIa?=
 =?us-ascii?Q?lxF3GgffWEHHWsA4n3w7T/gyQ7mS4O1S4VEfiaYzygPLsWJpONLkr5LDgWi2?=
 =?us-ascii?Q?rTxChluZ8+fHnVxTDU/dXryywirNI6P/0mQyFevhOK6d1tLXGiAH/C+pPQFE?=
 =?us-ascii?Q?YmV9AQZ/rPDYYKnkBsSTMB0UPtRkqAJxG3tOYPNNk5RZbM0sAHNn9TvceEJT?=
 =?us-ascii?Q?zwzZcJ/D/JHY513bgY8LOAI1qkin9pTZPohiFKsoUl8KHlBZ34pG0F5hyk86?=
 =?us-ascii?Q?OHUImY+Y6L/lcoYCkX+bnTg3cP/oMrYsVj9diMTLrpp2GIz6DJjUuOSWLDul?=
 =?us-ascii?Q?ZJyv3UwZv3zbP+IAjut4VxNx7uTAjWTB0OMWk5MwKWAeo+LZS2dAQL3glUNe?=
 =?us-ascii?Q?TzYkmstXvHak/s/v+21bQ1U+r7X0WF3EbtfJE4aSgqS6dKfKWWADii7NHOIW?=
 =?us-ascii?Q?q4qTMknNGor+6NI/Gj5dXkuFESU0Cnw/uu/dwN6xlUm9f79LhlX3udMxciK2?=
 =?us-ascii?Q?CXjjMwos7WT+dli3wKPhIAh9Rrz23d11IaFC+qH5WV4PQZcj5UeHAHj74Eww?=
 =?us-ascii?Q?PatyeNbz7de/ziWgifqT3bNTvnnckXcV8Kx9T4dxOl3X+70DP+bBCeJ0MWkk?=
 =?us-ascii?Q?OWTswepcmAO8hFmZoq/LPSMOFA69XmlFnC/TqML2ffvAx1myYGg7nzxHnFr9?=
 =?us-ascii?Q?/ARYegylC74b/4K2A0E5rfQj3J8HWIUFYZv3InZd+Em4LDcmSS9f/4mxVSxP?=
 =?us-ascii?Q?8U/WexB2LzRAvMlCSAeCqJAd2j3GDAI5dMpyKQTGablCRXtmMA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(1800799024)(366016)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?n96iGiGlhbl8q1QQ74TOg9Q23kDdIYIWNM3cXnT/rsnuR+cSUnFcAnrJ4LWB?=
 =?us-ascii?Q?ZRrPO08M0NoW2DUQzoIrqtrcYOU8E508QZ9h81FUDF19EdnQqlnkz61iY6Qn?=
 =?us-ascii?Q?+7eZK0gcstMc5cfPsTbawADbF7D8CslpsXm5i8+O8B0wuOfZt0cg9StdddK0?=
 =?us-ascii?Q?Cce/0LwiOegJ6c5RZ0IAE541Jk5fpN+OAS9DFaPEF+o24oVntgrHPUYxKhwA?=
 =?us-ascii?Q?xIkUWM3X0Jo4JyG5Iz+JnT7q2tLDwP7Z+yys4Kc88JbPdeKpogRFwEp03cP/?=
 =?us-ascii?Q?KB9aBakSO7xZ9zXjlNfs+Qn62K8cFO7CZEwGJ0xX5Ca21nv9nZyehbDPYdxW?=
 =?us-ascii?Q?N22/q3N1Duf0yMJjYl9ipcJO3/g3xd33Tr9s9v0gYtadV7a95yWLSSEVusfN?=
 =?us-ascii?Q?NtI4PRP3QS8ztNRCBW7HkZq/LVCx4VweHRG7hMA1ZhoZ3PHmG6tY4bpoSmLz?=
 =?us-ascii?Q?7Ft2Cba6oCYrC3Imnx320DJE0S/NnUNW98LFSl7rlJykQNJiLWmTAsRVja2l?=
 =?us-ascii?Q?2dn4sriVi6HdXTdw1y8Gwr6tjYcY2apF8lN0Bvb7ruUtbdNSpuJ7cfTlBsmj?=
 =?us-ascii?Q?+fo7qy8kcErD422U+XZc8hofKDwRx9k+G60qTEPiSKZTN4M/y7/JEuECMu7Y?=
 =?us-ascii?Q?TEc41aIBCwQyP4+JM8/a8A+OicJOxc9YAi2Pkzc2jkVKlRMvuM+Oa20GXvQT?=
 =?us-ascii?Q?EPFd7UHOo5hMiTHeyrSUlGqb7vZoyBfQ/qltBhC+XwAY2beb1gBXMY2vzmIz?=
 =?us-ascii?Q?U9i+fuL7WqOXPXVN8TBzH0qWAdvTQD6irIHNNvZDvSUPVvJ8A4LbWzNqSNYC?=
 =?us-ascii?Q?ji49ecy9WXvOGvNfxtpp4dT4S3j5UuaIWbpdCOd7azV3BYy/j3EufG73/uuO?=
 =?us-ascii?Q?nBFR7qCuo7mcRJOsgCBPDhsixNIzZV/5B0xWmqfuHmf6+adLQgUbWgctXx4C?=
 =?us-ascii?Q?3IEGGJg4bT+DLmcdfxdXI+KV53kmNQM+FvsymCp92TV7yh5HP9o8n+cM0ROp?=
 =?us-ascii?Q?njUDJdUX9m8M02Twqm6jB8H27UshRmrtDzFQvTp9St5TOWiIoOcPa8OIsdz8?=
 =?us-ascii?Q?e0y2x1jxZDKtrv4vWsjL2/Q4GRd/3B0EMKbENweqAi16vxa4sr6DSNbdPgZt?=
 =?us-ascii?Q?/6T3dA3UnKoponGLgSAAyK25BsMnWWKYnLT4Cm5l0BXAQzpQn0GWp/YDBMnO?=
 =?us-ascii?Q?mUBlxvaxaogULuPhHniZJCX4BtO//YA/uzyD/6VYh7JPdBAEA2vCb7uR9Dnm?=
 =?us-ascii?Q?GmCXH9e+8bEbePJ3/WBxWQc1e0ebEBB6PrjaoesS2GiM6RZhGyhd6og4vBqQ?=
 =?us-ascii?Q?9my9S3ucp09oGSyPhc28zdO/KPbYkUD3hP+fcFBf/0aCIj/siL/488MhQT2f?=
 =?us-ascii?Q?Y+KLrWzASvXqh83ZYi/mw7O5W964P27FyFpAP/mX2nLVbaabZUe19MISzIqT?=
 =?us-ascii?Q?awvW5+jGhiNG7T0y+gmFwJJFp1a8FDfLLUNR+0nU1CQL9JnN3t8EucXloG4W?=
 =?us-ascii?Q?DWPqXIntsg9YnBXIjRP/FhXstboeNl6lRhbbjo/5SQXJaEZycMyUD5V3Akyh?=
 =?us-ascii?Q?eGoYSIqfZiINAXblNxL64MPXcZ59E8BYzdQmxz1Rr8VPFN0DOjvdLdcf7ME2?=
 =?us-ascii?Q?Yw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c6125044-18dd-41fb-217f-08dcc8371eb2
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2024 14:30:24.3281 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XhuGbGydmqEZZ9UldGlnhDZUaK05ScWiS1RAFO6l4WNFr1pu7rW/6eVMxkkKnKWLWr23+ARWhcoDMTU54JR+Zmvlh3EFYllKCuNPRN7jyDA/2452d5TL5rMh39jmAclW
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6504
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724941839; x=1756477839;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1regTFyWDg8LINju5xG3EL7SspGPck8xkJdc3hkD88E=;
 b=BrBjbLm2fVLSGuZGXNRYAgMU8OrBhRLfpcWmp5teIyMLdCP99RBn37Zo
 S3a9ctIqw46YJXOaxJzOWlJySHc0OE3222cSNg7tTvV28HvSORjkL7pM9
 3Os5b3jmSNXO1BMsokNpmdE+J0T06BPD0XdgMF+ETCqd5ywDL4byrOQZQ
 tSrJ3dSbbwQhHc1L6oIjNh9jN4ctBDgH1Wm0N9Dcsx6jTdntrYzZXrvMw
 22/bqWoDExxAuAScHZN92bHLN39WzbyDp/YKL5B2GSwi5Jf03xVRKqWF4
 6c5mSPN2ig/JcnmRFm2r5dm08EUdsP6HM1IBfGCMxK/tJTjT6z40vmPCP
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BrBjbLm2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 2/6] devlink: add
 devlink_fmsg_put() macro
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
Cc: "apw@canonical.com" <apw@canonical.com>,
 "willemb@google.com" <willemb@google.com>, "Drewek,
 Wojciech" <wojciech.drewek@intel.com>,
 "dwaipayanray1@gmail.com" <dwaipayanray1@gmail.com>, NEX SW
 NCIS OSDT ITP Upstreaming <nex.sw.ncis.osdt.itp.upstreaming@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>, Jakub
 Kicinski <kuba@kernel.org>, Eric
 Dumazet <edumazet@google.com>, Simon Horman <horms@kernel.org>, "Polchlopek,
 Mateusz" <mateusz.polchlopek@intel.com>, "joe@perches.com" <joe@perches.com>,
 "lukas.bulwahn@gmail.com" <lukas.bulwahn@gmail.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 Paolo Abeni <pabeni@redhat.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
rzemek Kitszel
> Sent: Wednesday, August 21, 2024 7:07 PM
> To: intel-wired-lan@lists.osuosl.org; Jiri Pirko <jiri@resnulli.us>; Nguy=
en, Anthony L <anthony.l.nguyen@intel.com>
> Cc: lukas.bulwahn@gmail.com; willemb@google.com; Drewek, Wojciech <wojcie=
ch.drewek@intel.com>; dwaipayanray1@gmail.com; netdev@vger.kernel.org; Polc=
hlopek, Mateusz <mateusz.polchlopek@intel.com>; joe@perches.com; Eric Dumaz=
et <edumazet@google.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com=
>; Simon Horman <horms@kernel.org>; Jakub Kicinski <kuba@kernel.org>; apw@c=
anonical.com; NEX SW NCIS OSDT ITP Upstreaming <nex.sw.ncis.osdt.itp.upstre=
aming@intel.com>; akpm@linux-foundation.org; Paolo Abeni <pabeni@redhat.com=
>; David S. Miller <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH iwl-next v3 2/6] devlink: add devlink_f=
msg_put() macro
>
> Add devlink_fmsg_put() that dispatches based on the type of the value to =
put, example: bool -> devlink_fmsg_bool_pair_put().
>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>  include/net/devlink.h | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)


