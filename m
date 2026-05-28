Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2EuQGXEzGGpwfggAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2026 14:22:09 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 81DD35F2033
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2026 14:22:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 10BF084ACD;
	Thu, 28 May 2026 12:22:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X7iD0ajCcQ6m; Thu, 28 May 2026 12:22:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8538284A9C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779970925;
	bh=qyk9W+1ajn0eg86q098BB74rGBT8swGidkAtpoEmzXo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6CDU2rqJRvRDW9Rv2arjcIgK1parDtolbrb3MtnKgcaswFHt32IHnRytHBEoJSvZ1
	 znArQK1JT0wR5z6Z1AWVmbZDtAYHOAsLpjinJ4awSQhYhyt5MD/zrwmBL3vulI+290
	 /NsGhlWCrIXpp/zherh9c44SLg0wishKbUgj9jeewdfFpEQru0ptMpGaq5h8FI6K+S
	 6iWmof8mFjQ3V307kdn0aFQsPUmpkJklMRGk8XsSxWJ4ZhXuB7prmK8jg70BuvX7TN
	 MeZT6U7rpT9wtShwcXvz3WaZQorx5cGkzNMh6NI+97j382P7JG6y+sI9OSKBKHwlng
	 eoSmimF/IALcw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8538284A9C;
	Thu, 28 May 2026 12:22:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7A444A21
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2026 12:22:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6997D40376
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2026 12:22:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dJHdkQg3usUE for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 May 2026 12:22:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 76EEF40375
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 76EEF40375
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 76EEF40375
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2026 12:22:01 +0000 (UTC)
X-CSE-ConnectionGUID: fVcoJMRpQ2uEnMTPrUovxA==
X-CSE-MsgGUID: mhT6migWRhyERUI5M+bjsQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="106262685"
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="106262685"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 05:22:01 -0700
X-CSE-ConnectionGUID: oQh9F9ZKS3CDWqcm091IOw==
X-CSE-MsgGUID: YN12ZTr2Tt6pmlZ+RJlRew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="266438033"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 05:22:00 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 28 May 2026 05:21:59 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 28 May 2026 05:21:59 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.13) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 28 May 2026 05:21:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Z3YNxWioCTyZUbpshNozO7cAywvnLXBv6cGWSDzQBeJ+1IYUGzp/7L6M14FP43eYvJ8zXpJnVcFkP/sC1YlqN0m8cAeAnTdwu0Qffh9uvykyPy45/A841a1eiyNIwKoKS1RgQzRnzxwJqvTaB9INZG7w2YKpkofIbYdUI1WhPhHJSAC8NyJA4Cy1EtLxw3qepaXiTw2Z2AwRz/+eLWVLM15D2jQGpVjUHWO9L5Eby16jTq8vLv690Ux9Te8O620Wt5UKkWqe0lKumaK+Gp8VV1idsGa6zMB4Cf7u0h0IjPPOpjsovUfpVSfjym8GNa5IAwxTM2MWySnTK7W7xKGjfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qyk9W+1ajn0eg86q098BB74rGBT8swGidkAtpoEmzXo=;
 b=MJ/ISsvg54X0f/3f1xdQ+8akHIwnNSrO4/aGKI7269uI+f5pxJ2OGA5+noCZT2/uzGic88tZDTqJiOvZ/i2SCl81K1rbtqVSNzyO6NhJ6Lcl4Q5p/cKBrxWm8ldhLq8RSC7kUsHBnGzC5hogJO2xliXhrCGY6W3etJ65V8YiSSwh0NGwH+mohiS7nAlgtcAOIKffC61Vqr4dD3clTs5kNR5obXATfU8qAry5S5GD1hCUM1uCvyTqFto2hvLWxLpATh4P2MzvJaKiyEu8o/x/O5kBEcEXLO1srzoSPhRR9l6hD2rAIfdrj9zYIeTo2uVYR0PGfQfh26pDVxa7ey+97Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA2PR11MB5034.namprd11.prod.outlook.com (2603:10b6:806:f8::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.11; Thu, 28 May
 2026 12:21:55 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%6]) with mapi id 15.21.0071.011; Thu, 28 May 2026
 12:21:55 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Vecera, Ivan" <ivecera@redhat.com>, "vadim.fedorenko@linux.dev"
 <vadim.fedorenko@linux.dev>, "kuba@kernel.org" <kuba@kernel.org>,
 "jiri@resnulli.us" <jiri@resnulli.us>, "edumazet@google.com"
 <edumazet@google.com>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "donald.hunter@gmail.com" <donald.hunter@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "horms@kernel.org" <horms@kernel.org>,
 "Prathosh.Satish@microchip.com" <Prathosh.Satish@microchip.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "davem@davemloft.net" <davem@davemloft.net>
Thread-Topic: [Intel-wired-lan] [PATCH v11 net-next 8/8] ice: implement E825
 TX ref clock control and TXC hardware sync status
Thread-Index: AQHc7POxAYoGuxQWY0KvzqYOcVpjMLYjXrFQ
Date: Thu, 28 May 2026 12:21:55 +0000
Message-ID: <IA3PR11MB8986FE74C2D81A583F9B3546E5092@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260526093419.639220-1-grzegorz.nitka@intel.com>
 <20260526093419.639220-9-grzegorz.nitka@intel.com>
In-Reply-To: <20260526093419.639220-9-grzegorz.nitka@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA2PR11MB5034:EE_
x-ms-office365-filtering-correlation-id: b027c06a-3370-463e-8eb2-08debcb3b4fc
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|11063799006|4143699003|6133799003|18002099003|3023799007|22082099003|56012099006|38070700021;
x-microsoft-antispam-message-info: 9yr/6blAOD+Qt8IDwdNp5OKiZuGo9eXb4Dk+21xwJfM+MZ5TvPlGMAtZsnzFC9heLv4ILqhB4JEWNtDbHbqMto7FujiBaazqoYt60ZxLAxf0oifLJhjPgPXx21NWpOXsC+s3K4G9vk8gvDGa+MAh/QWixqUHX+IL3t3PK4zr0TiYMDYMeKkMBlh0YgO3HaPywASSY2etCe/IWZY84a41rtG7doOyPhAyEgtYod3rP7eeHKYiuQJu2VDBfPpFgiHHRoCLCHRCjQVAxr3JBsUclvg6/GiCu6s23DExREYPhUIn/UadRqaJYFG9Y+ME5Ah2VcPT7u+DFErGLyowLJhqD6VBxzF0T1oPhKy3Ua/y9jc8FdDOazH2Gt193H54PSL0z/jF4JbVDiXlj4zomvrzOR35i5B53k1z/7vyW7Ps0S5nhElW/k5npmYNd48KNDTKCuViPLzST1PV86pjvlitaKFxdBUQXKRjn1+HZCtwkV69QJnWhl5iOdI6ACPGTtKH/dKNw9hadqQac3wT1JgxJawjOILzXI52fYTDb2XaJXD3AkEjGSWQ2+8uXJPJF5L/5/5apw/5RAszPbM0Oxx0OEmQrYwy9COoxwXV5G2jyfkeVLJzbQx/gYXREfYQTiNQNwLSGeqx71poffugeUBfoGBE+eRpZCeBz2KEDJoy60ohNCRyxEdnBJR8jnO1bG9kjav7EhMjjBUzGqg2x6LMp0QROqiqcAmfyWm1C4wx2hLU+uAD2CRT4wLLdQQ3mQZZ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(11063799006)(4143699003)(6133799003)(18002099003)(3023799007)(22082099003)(56012099006)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Oc5bAKNCY8D1PgTyit6XoRlp4vgNKc241jmLXqaWUKEVG/BApqi2eymO/iCy?=
 =?us-ascii?Q?X2NHcEzyQIKzPYj996B9CogXBFrV7c9lttaAnmLsSsiWZ5qJc/Mr8Z2DuA+O?=
 =?us-ascii?Q?yX8YB1Lt4lOMYyPfg9Q96UENk7CCB3t/TV/4Q+HTC4iOb/sZ6ZtFEf4XAIs2?=
 =?us-ascii?Q?l7xYAVQWb2KYJhldIvDLdXUV2GfaPPHhur/7ImSSXN9UkcM9SeYbklO/5lXm?=
 =?us-ascii?Q?JAC88JCU9QE1Y7ChA3zDLT0aUzGl2xQAHkFvCDwZSeVG76KdtpN/gUv6/+2W?=
 =?us-ascii?Q?Qg/KQmva3S7NwyrBMB0fy/ptP41SzYiE6D86DNESJQVLuQjxR1sFc+xTtsB1?=
 =?us-ascii?Q?BQUseHruYoYqifBHWRhNY1KYFhyDUMgkGjckRoMBJviYV81nDVLFviu+e+8s?=
 =?us-ascii?Q?uhZdKPy8h5R85qBLle3yDbV05DdO5P09Jtu+j/hA/wuZh+iX70cS8T2ZbDqA?=
 =?us-ascii?Q?sovdMf9KQXTleq228FgajyjmYdX2kBFcXmZj6JJMMclN9twqmk88+OKIbUxo?=
 =?us-ascii?Q?y/DLLQq+KdSspkaSjioFVq1O+/qNGNnIVoMCy5NR1Izx5SzbVVJiFibgCiFl?=
 =?us-ascii?Q?yESGxyECjUxJXK4PQUr7J0HiSvjj8DTHDu2NsxSbNm2fHR+BYqkG0AmjCmVj?=
 =?us-ascii?Q?IXUZRey8AocqeKNysW3wUnYIqX0xjVhdtquRLNIJ3ML0ojjwKXmqogYIM8F9?=
 =?us-ascii?Q?jaQrYMaIO01XiYLX5V8FYhm+53nOwhBQy1UuXMEgY5m6Zc3THqZ/WSXoa6jw?=
 =?us-ascii?Q?sGNN3zTixuyCW5Rd1bIKYzj8E6allxw546an2cIsHluyZYfYzDdYLuNX9HCJ?=
 =?us-ascii?Q?ACTRSwiYLBZLaR/MQdrsbbqxe9ceAzu5QRFPC1tQlWux4wN/+fRY4HOnnYwF?=
 =?us-ascii?Q?r5puQ/87fq0V8Yu9VN1YTgsyQdaqUwttZyltnNylv/IwW2v+l/qUvq7fp6Ph?=
 =?us-ascii?Q?IuP3Ei6jwz4uFZn/38yFarkUkgIy2tNb3AIB4cGx9RnraoF8JiBMrVbuAylG?=
 =?us-ascii?Q?XPwkI2Hi0/Vl4ADPuh1cacoilaBYdQ46O3vAmbHVZbJVWTtpnGxp4fRayOOq?=
 =?us-ascii?Q?s+gnobbj0MuyDtCCw8erp7CvxSqLD1drFWxYc8JlurAm9yd/ReQJSy/tzdrb?=
 =?us-ascii?Q?Jgny92fVu6rU5OGDoT5JVU+sbU4gk70xIhX27nTu+HMVvCcaVNrqy/TlAJuu?=
 =?us-ascii?Q?bMl7mwmeLILeePLJCVt/GrzamFohqrm5Olsa6m2kj2wCcZFDf32Ri3jqowuC?=
 =?us-ascii?Q?ibja+Hq/heQVe2QinYrmO3cc5VsAV0xG2pR0FbQI9jynVuqw3pr+JwuCZ5Pg?=
 =?us-ascii?Q?0tYS4MxbC7+NTq7yMMJrtp+/ww0eoYDBaobz9K/Dj7lC4Cwmr6qE3d/vxu1J?=
 =?us-ascii?Q?Rg3di2rjdYKrufXRvkyjbByv8obiwbyO+sJgbNJ9SX2tM7eRrpxMtMlYsWec?=
 =?us-ascii?Q?x8o2Z8l+h+IHaolract/YUJ3LOJdOY3GDZqSY2TPmpbg7UeXVT44T0uOeVkB?=
 =?us-ascii?Q?s0GoBDj656ZwL9hW+0CfXxuuD5aSQk+MtHACv2AJcG9G7eOg1rAudJ8chc7X?=
 =?us-ascii?Q?lND5fdSmt7thtPLN1fA4M8LcdElzmrRUolAJus7Z1c/L5pmdi17rG6PMKcJf?=
 =?us-ascii?Q?UzQQmlFiKKj+kqxr/bmJnH4MgFW0Km+inhW7RhY43HS58LU9luj8u+0Yn3Pb?=
 =?us-ascii?Q?RH0aCMSGndSkmeOrV46TSqrFll8HtxtxzlTSJXZQ7x3AaA9m9lvfNaCfqcXc?=
 =?us-ascii?Q?8WBKd11dx70VW9emz8JMITa59vdexM8=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: cYA+0bjIjwt+T/I1MnikTclNTKnNlVCxGsYVojlNN+zHTRR0KYAnNJieOXWCvmD22p2oQN+d5XuCemDv86b0bkFY8Z5C6Ha4iooV9SxVF8++1k7Ao4ey3TebrkskKq5BEvSL0MB75M+NrxqbTP1OUwitFZg6uqrS5VnBATLOxxQKHUm/IFJU+7bB9JE2LpfqTjTTR0zhcpV/PJsSqxopjtoeERFLyvH2C7fkpoRKNp6sdtXe2KdT4vM/+BC9ba0x3WVnEOJP7f3WbYpWg9kszj8bF6Nzc6pBS9fc72Jnb4UsmaHjuktP6h4jkkjCCEyzlW5yf4H46uElHqsUnla4Sg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b027c06a-3370-463e-8eb2-08debcb3b4fc
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2026 12:21:55.3909 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uaUmZ7k0Wf3th8W+RFh5v572XyFVdk0mMUKx5WiQZ8w9cvjTX/aNDFykGo347Upwa3agws10VwehtVNuxCo2bu8VAZJY4f69qgL4AVKpP8Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5034
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779970922; x=1811506922;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pRZIgAZIntrGZueRuXZbHRbvZkDskqRt1xwSra03dmk=;
 b=d4uO6LR5dqeAb2J0y5/45F99g09IY+yCBLMvF20Yvy60r648Uw+NUCT6
 dIg1xwO3Ehl2X7f5zW2JVfQAiiCESfRgy8IPXR49u6uVeRYRFByguadlw
 GkqPT2TzMj/c+Yt0U3A18cggxSQaU0w2r8jHNBprDL1C7PcZSjFGIJk0a
 Ltk2uF1xrupngoCsVPRyQ5TOrT5da59R8V6df29maACcAIFJuI8me5kli
 aNaCTdZGSNFJslSn85H/3V/h1uPnD6p+Nnx4th0EDuJ4YewdrYuYJ9bw4
 GeQbEYq9s3n2eyNZlAA4W2d2vgv2sCpZ820WlTETxdYDsdr6lDCaFiDpY
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=d4uO6LR5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v11 net-next 8/8] ice: implement E825
 TX ref clock control and TXC hardware sync status
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:grzegorz.nitka@intel.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,google.com,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 81DD35F2033
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Grzegorz Nitka
> Sent: Tuesday, May 26, 2026 11:34 AM
> To: netdev@vger.kernel.org
> Cc: Vecera, Ivan <ivecera@redhat.com>; vadim.fedorenko@linux.dev;
> kuba@kernel.org; jiri@resnulli.us; edumazet@google.com; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; richardcochran@gmail.com;
> donald.hunter@gmail.com; linux-kernel@vger.kernel.org; Kubalewski,
> Arkadiusz <arkadiusz.kubalewski@intel.com>; andrew+netdev@lunn.ch;
> intel-wired-lan@lists.osuosl.org; horms@kernel.org;
> Prathosh.Satish@microchip.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; pabeni@redhat.com; davem@davemloft.net
> Subject: [Intel-wired-lan] [PATCH v11 net-next 8/8] ice: implement
> E825 TX ref clock control and TXC hardware sync status
>=20
> Build on the previously introduced TXC DPLL framework and implement
> full TX reference clock control and hardware-backed synchronization
> status reporting for E825 devices.
>=20
> E825 firmware may accept or override TX reference clock requests based
> on device-wide routing constraints and link conditions. Because the
> final selection becomes visible only after a link-up event, the driver
> splits the observation into two complementary signals:
>=20
>   - TXCLK pin state reflects the requested TX reference clock
>     (pf->ptp.port.tx_clk_req). After a link-up, the value is
> reconciled
>     against the SERDES reference selector by
>     ice_txclk_update_and_notify(); if firmware or auto-negotiation
>     selected a different clock, tx_clk_req is overwritten so that pin
>     state converges to the actual hardware selection.
>=20
>   - TXC DPLL lock status reflects hardware synchronization:
>       * LOCKED   when an external TX reference is in use
>       * UNLOCKED when falling back to ENET/TXCO, or when a requested
>         external reference has not (yet) been accepted by hardware.
>=20
> Userspace observing only pin state therefore sees user intent, while
> lock status is the authoritative indicator of whether the requested
> clock is actually selected and synchronizing. This matches the DPLL
> subsystem model where pin state describes topology and device lock
> status describes signal quality.
>=20
> TX reference selection topology:
>   - External references (SYNCE, EREF0) are represented as TXCLK pins
>   - The internal ENET/TXCO clock has no pin representation; when
>     selected, all TXCLK pins are reported DISCONNECTED
>=20
> With this change, TX reference clocks on E825 devices can be reliably
> selected, observed via standard DPLL interfaces, and monitored for
> effective synchronization through TXC DPLL lock status.
>=20
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/Makefile     |   2 +-
>  drivers/net/ethernet/intel/ice/ice.h        |  12 +
>  drivers/net/ethernet/intel/ice/ice_dpll.c   | 172 ++++++++++-
>  drivers/net/ethernet/intel/ice/ice_dpll.h   |  30 +-
>  drivers/net/ethernet/intel/ice/ice_ptp.c    |  37 ++-
>  drivers/net/ethernet/intel/ice/ice_ptp.h    |   6 +
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c |  37 +++
> drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  10 +
> drivers/net/ethernet/intel/ice/ice_txclk.c  | 320 ++++++++++++++++++++
> drivers/net/ethernet/intel/ice/ice_txclk.h  |  40 +++
>  10 files changed, 646 insertions(+), 20 deletions(-)  create mode
> 100644 drivers/net/ethernet/intel/ice/ice_txclk.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_txclk.h
>=20
> diff --git a/drivers/net/ethernet/intel/ice/Makefile
> b/drivers/net/ethernet/intel/ice/Makefile
> index 38db476ab2ec..95fd0c49800f 100644
> --- a/drivers/net/ethernet/intel/ice/Makefile
> +++ b/drivers/net/ethernet/intel/ice/Makefile
> @@ -54,7 +54,7 @@ ice-$(CONFIG_PCI_IOV) +=3D	\
>  	ice_vf_mbx.o		\
>  	ice_vf_vsi_vlan_ops.o	\
>  	ice_vf_lib.o
> -ice-$(CONFIG_PTP_1588_CLOCK) +=3D ice_ptp.o ice_ptp_hw.o ice_dpll.o
> ice_tspll.o ice_cpi.o
> +ice-$(CONFIG_PTP_1588_CLOCK) +=3D ice_ptp.o ice_ptp_hw.o ice_dpll.o
> +ice_tspll.o ice_cpi.o ice_txclk.o
>  ice-$(CONFIG_DCB) +=3D ice_dcb.o ice_dcb_nl.o ice_dcb_lib.o
>  ice-$(CONFIG_RFS_ACCEL) +=3D ice_arfs.o
>  ice-$(CONFIG_XDP_SOCKETS) +=3D ice_xsk.o
> diff --git a/drivers/net/ethernet/intel/ice/ice.h
> b/drivers/net/ethernet/intel/ice/ice.h
> index 725b130dd3a2..f72bb1aa4067 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -1155,4 +1155,16 @@ static inline struct ice_hw
> *ice_get_primary_hw(struct ice_pf *pf)
>  	else
>  		return &pf->adapter->ctrl_pf->hw;
>  }
> +
> +/**
> + * ice_get_ctrl_pf - Get pointer to Control PF of the adapter
> + * @pf: pointer to the current PF structure
> + *
> + * Return: A pointer to ice_pf structure which is Control PF,
> + * NULL if it's not initialized yet.
> + */
> +static inline struct ice_pf *ice_get_ctrl_pf(struct ice_pf *pf) {
> +	return !pf->adapter ? NULL : pf->adapter->ctrl_pf; }
>  #endif /* _ICE_H_ */
> diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c
> b/drivers/net/ethernet/intel/ice/ice_dpll.c
> index 1b193e0c35ab..fcc70a7add3b 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dpll.c
> +++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
> @@ -4,6 +4,7 @@
>  #include "ice.h"
>  #include "ice_lib.h"
>  #include "ice_trace.h"
> +#include "ice_txclk.h"
>  #include <linux/dpll.h>
>  #include <linux/property.h>
>=20
> @@ -19,8 +20,6 @@
>  #define ICE_DPLL_SW_PIN_INPUT_BASE_QSFP		6
>  #define ICE_DPLL_SW_PIN_OUTPUT_BASE		0
>=20
> -#define E825_EXT_EREF_PIN_IDX			0
> -#define E825_EXT_SYNCE_PIN_IDX			1
>  #define E825_RCLK_PARENT_0_PIN_IDX		0
>  #define E825_RCLK_PARENT_1_PIN_IDX		1
>=20
> @@ -2615,6 +2614,82 @@ ice_dpll_rclk_state_on_pin_get(const struct
> dpll_pin *pin, void *pin_priv,
>  	return ret;
>  }
>=20
> +/**
> + * ice_dpll_txclk_work - apply a pending TX reference clock change
> + * @work: work_struct embedded in struct ice_dplls
> + *
> + * This worker executes an outstanding TX reference clock switch
> +request
> + * that was previously queued via the DPLL TXCLK pin set callback.
> + *
> + * The worker performs only the operational part of the switch,
> issuing
> + * the necessary firmware commands to request a new TX reference
> clock
> + * selection (e.g. triggering an AN restart). It does not verify
> +whether
> + * the requested clock was ultimately accepted by the hardware.
> + *
> + * Hardware verification, software state reconciliation, pin state
> + * notification, and TXC DPLL lock-status updates are performed
> later,
> + * after link-up, by ice_txclk_update_and_notify().
> + *
> + * Context:
> + *   - Runs in process context on pf->dplls.wq and may sleep.
> + *   - Serializes access to shared TXCLK state using pf->dplls.lock.
> + */
> +static void ice_dpll_txclk_work(struct work_struct *work) {
> +	struct ice_dplls *dplls =3D
> +		container_of(work, struct ice_dplls, txclk_work);
> +	struct ice_pf *pf =3D container_of(dplls, struct ice_pf, dplls);
> +	struct dpll_pin *old_pin =3D NULL;
> +	struct dpll_pin *new_pin =3D NULL;
> +	enum ice_e825c_ref_clk clk;
> +	bool do_switch;
> +	int err;
> +
> +	mutex_lock(&pf->dplls.lock);
> +	do_switch =3D pf->dplls.txclk_switch_requested;
> +	clk =3D pf->ptp.port.tx_clk_req;
> +	mutex_unlock(&pf->dplls.lock);
> +
> +	if (!do_switch)
> +		return;
> +
> +	err =3D ice_txclk_set_clk(pf, clk);
> +
> +	mutex_lock(&pf->dplls.lock);
> +	/* Only clear the request flag if no newer request arrived
> while
> +	 * the lock was dropped. Otherwise leave it set so the re-
> queued
> +	 * worker run picks up the updated tx_clk_req value.
> +	 */
> +	if (pf->ptp.port.tx_clk_req =3D=3D clk)
> +		pf->dplls.txclk_switch_requested =3D false;
> +	if (err) {
> +		/* Roll back the requested clock to match the current
> hardware
> +		 * state so that ice_txclk_update_and_notify() does not
> +		 * misinterpret a future link-up as a failed switch.
> Only roll
> +		 * back if no newer request arrived in the meantime;
> otherwise
> +		 * the re-queued worker run will apply the updated
> value.
> +		 */
> +		dev_err(ice_pf_to_dev(pf),
> +			"TX clock switch to %u failed, err=3D%d;
> reverting\n",
> +			clk, err);
> +		if (pf->ptp.port.tx_clk_req =3D=3D clk) {
> +			/* Capture pins for post-unlock notification so
> that
> +			 * userspace observes the requested pin flipping
> back
> +			 * to DISCONNECTED and the effective pin to
> CONNECTED.
> +			 */
> +			new_pin =3D ice_txclk_get_pin(pf, clk);
> +			old_pin =3D ice_txclk_get_pin(pf, pf-
> >ptp.port.tx_clk);
> +			pf->ptp.port.tx_clk_req =3D pf->ptp.port.tx_clk;
> +		}
> +	}
> +	mutex_unlock(&pf->dplls.lock);
> +
> +	if (old_pin)
> +		dpll_pin_change_ntf(old_pin);
> +	if (new_pin)
> +		dpll_pin_change_ntf(new_pin);
> +}
> +
>  /**
>   * ice_dpll_txclk_state_on_dpll_set - set a state on TX clk pin
>   * @pin: pointer to a pin
> @@ -2626,7 +2701,9 @@ ice_dpll_rclk_state_on_pin_get(const struct
> dpll_pin *pin, void *pin_priv,
>   *
>   * Dpll subsystem callback, set a state of a Tx reference clock pin
>   *
> + * Context: Acquires and releases pf->dplls.lock
>   * Return:
> + * * 0 - success
>   * * negative - failure
>   */
>  static int
> @@ -2635,11 +2712,36 @@ ice_dpll_txclk_state_on_dpll_set(const struct
> dpll_pin *pin, void *pin_priv,
>  				 void *dpll_priv, enum dpll_pin_state
> state,
>  				 struct netlink_ext_ack *extack)
>  {
> -	/*
> -	 * TODO: set HW accordingly to selected TX reference clock.
> -	 * To be added in the follow up patches.
> -	 */
> -	return -EOPNOTSUPP;
> +	struct ice_dpll_pin *p =3D pin_priv;
> +	struct ice_pf *pf =3D p->pf;
> +	enum ice_e825c_ref_clk new_clk;
> +
> +	if (ice_dpll_is_reset(pf, extack))
> +		return -EBUSY;
> +
> +	if (state !=3D DPLL_PIN_STATE_CONNECTED &&
> +	    state !=3D DPLL_PIN_STATE_DISCONNECTED) {
> +		NL_SET_ERR_MSG(extack,
> +			       "unsupported pin state for TX reference
> clock");
> +		return -EINVAL;
> +	}
> +
> +	mutex_lock(&pf->dplls.lock);
> +	if (state =3D=3D DPLL_PIN_STATE_DISCONNECTED &&
> +	    p->tx_ref_src !=3D pf->ptp.port.tx_clk_req)
> +		goto unlock;
> +
> +	new_clk =3D (state =3D=3D DPLL_PIN_STATE_DISCONNECTED) ?
> ICE_REF_CLK_ENET :
> +			p->tx_ref_src;
> +	if (new_clk =3D=3D pf->ptp.port.tx_clk_req)
> +		goto unlock;
> +
> +	pf->ptp.port.tx_clk_req =3D new_clk;
> +	pf->dplls.txclk_switch_requested =3D true;
> +	queue_work(pf->dplls.wq, &pf->dplls.txclk_work);
> +unlock:
> +	mutex_unlock(&pf->dplls.lock);
> +	return 0;
>  }
>=20
>  /**
> @@ -2651,10 +2753,21 @@ ice_dpll_txclk_state_on_dpll_set(const struct
> dpll_pin *pin, void *pin_priv,
>   * @state: on success holds pin state on parent pin
>   * @extack: error reporting
>   *
> - * dpll subsystem callback, get a state of a TX clock reference pin.
> + * TXCLK DPLL pin state is derived and not stored explicitly.
> + *
> + * Only external TX reference clocks (SYNCE, EREF0) are modeled
> + * as DPLL pins. The internal ENET (TXCO) clock has no pin and,
> + * when selected, all TXCLK pins are reported DISCONNECTED.
> + *
> + * During a pending TXCLK switch, the requested pin may be
> + * reported as CONNECTED before hardware verification.
> + * Hardware acceptance and synchronization are reported
> + * exclusively via TXC DPLL lock-status.
>   *
> + * Context: Acquires and releases pf->dplls.lock
>   * Return:
>   * * 0 - success
> + * * negative - failure
>   */
>  static int
>  ice_dpll_txclk_state_on_dpll_get(const struct dpll_pin *pin, void
> *pin_priv, @@ -2663,11 +2776,18 @@
> ice_dpll_txclk_state_on_dpll_get(const struct dpll_pin *pin, void
> *pin_priv,
>  				 enum dpll_pin_state *state,
>  				 struct netlink_ext_ack *extack)
>  {
> -	/*
> -	 * TODO: query HW status to determine if the TX reference is
> selected.
> -	 * To be added in the follow up patches.
> -	 */
> -	*state =3D DPLL_PIN_STATE_DISCONNECTED;
> +	struct ice_dpll_pin *p =3D pin_priv;
> +	struct ice_pf *pf =3D p->pf;
> +
> +	if (ice_dpll_is_reset(pf, extack))
> +		return -EBUSY;
> +
> +	mutex_lock(&pf->dplls.lock);
> +	if (pf->ptp.port.tx_clk_req =3D=3D p->tx_ref_src)
> +		*state =3D DPLL_PIN_STATE_CONNECTED;
> +	else
> +		*state =3D DPLL_PIN_STATE_DISCONNECTED;
> +	mutex_unlock(&pf->dplls.lock);
>=20
>  	return 0;
>  }
> @@ -4674,10 +4794,30 @@ void ice_dpll_deinit(struct ice_pf *pf)  {
>  	bool cgu =3D ice_is_feature_supported(pf, ICE_F_CGU);
>=20
> +	/* Clear ICE_FLAG_DPLL under the lock so that any new caller of
> +	 * ice_txclk_update_and_notify() observes the cleared flag and
> +	 * returns early. In-flight callers that already passed the
> flag
> +	 * check hold txclk_notify_rwsem for read across the out-of-
> lock
> +	 * dpll_*_change_ntf() calls; the down_write/up_write barrier
> +	 * below waits for them to finish before pins and the TXC DPLL
> +	 * device may be freed.
> +	 */
> +	mutex_lock(&pf->dplls.lock);
>  	clear_bit(ICE_FLAG_DPLL, pf->flags);
> +	mutex_unlock(&pf->dplls.lock);
> +
> +	/* Wait for in-flight ice_txclk_update_and_notify() readers */
> +	if (pf->hw.mac_type =3D=3D ICE_MAC_GENERIC_3K_E825) {
> +		down_write(&pf->dplls.txclk_notify_rwsem);
> +		up_write(&pf->dplls.txclk_notify_rwsem);
> +	}
> +
>  	if (cgu)
>  		ice_dpll_deinit_worker(pf);
>=20
> +	if (pf->hw.mac_type =3D=3D ICE_MAC_GENERIC_3K_E825)
> +		cancel_work_sync(&pf->dplls.txclk_work);
> +
>  	ice_dpll_deinit_pins(pf, cgu);
>  	if (!IS_ERR_OR_NULL(pf->dplls.pps.dpll))
>  		ice_dpll_deinit_dpll(pf, &pf->dplls.pps, cgu); @@ -
> 4706,6 +4846,12 @@ static void ice_dpll_init_e825(struct ice_pf *pf)
>  	int err;
>=20
>  	mutex_init(&d->lock);
> +	/* Initialize the txclk worker and its notification rwsem
> before any
> +	 * code path can fail: ice_dpll_deinit() runs unconditionally
> on
> +	 * failure and calls cancel_work_sync() / down_write() on
> these.
> +	 */
> +	INIT_WORK(&d->txclk_work, ice_dpll_txclk_work);
> +	init_rwsem(&d->txclk_notify_rwsem);
>  	init_completion(&d->dpll_init);
>=20
>  	err =3D ice_dpll_init_info_e825c(pf);
> diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.h
> b/drivers/net/ethernet/intel/ice/ice_dpll.h
> index 85e38752056d..103ba3e49068 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dpll.h
> +++ b/drivers/net/ethernet/intel/ice/ice_dpll.h
> @@ -8,6 +8,8 @@
>=20
>  #define ICE_DPLL_RCLK_NUM_MAX	4
>  #define ICE_DPLL_TXCLK_NUM_MAX	2
> +#define E825_EXT_EREF_PIN_IDX	0
> +#define E825_EXT_SYNCE_PIN_IDX	1
>=20
>  #define ICE_CGU_R10			0x28
>  #define ICE_CGU_R10_SYNCE_CLKO_SEL	GENMASK(8, 5)
> @@ -126,7 +128,8 @@ struct ice_dpll {
>  /** ice_dplls - store info required for CCU (clock controlling unit)
>   * @kworker: periodic worker
>   * @work: periodic work
> - * @lock: locks access to configuration of a dpll
> + * @wq: workqueue used to schedule DPLL-related deferred work
> + * @lock: protects DPLL configuration (see Locking below)
>   * @eec: pointer to EEC dpll dev
>   * @pps: pointer to PPS dpll dev
>   * @txc: pointer to TXC dpll dev
> @@ -142,6 +145,28 @@ struct ice_dpll {
>   * @input_phase_adj_max: max phase adjust value for an input pins
>   * @output_phase_adj_max: max phase adjust value for an output pins
>   * @periodic_counter: counter of periodic work executions
> + * @generic: true when generic DPLL ops are used
> + * @txclk_work: deferred TX reference clock switch worker
> + * @txclk_switch_requested: a TX ref clock switch is queued in
> + @txclk_work
> + * @txclk_notify_rwsem: drains in-flight TXCLK notifications on
> + teardown
> + *
> + * Locking:
> + *   Acquisition order (top to bottom):
> + *
> + *     txclk_notify_rwsem (read)
> + *       -> pf->dplls.lock
> + *         -> ctrl_pf->dplls.lock
> + *
> + *   - @lock serializes all DPLL state mutations on this PF. When the
> + *     controlling PF's lock must also be taken (e.g. updating the
> shared
> + *     tx_refclks usage map), acquire pf->dplls.lock first, then
> + *     ctrl_pf->dplls.lock. Skip the second acquire when pf =3D=3D
> ctrl_pf
> + *     to avoid recursive locking.
> + *   - @txclk_notify_rwsem is held for read across
> + *     ice_txclk_update_and_notify(), including the out-of-lock
> + *     dpll_*_change_ntf() calls. ice_dpll_deinit() takes the write
> side
> + *     standalone (not nested under any other lock) to drain in-
> flight
> + *     readers before pins and the TXC DPLL device are freed.
>   */
>  struct ice_dplls {
>  	struct kthread_worker *kworker;
> @@ -168,6 +193,9 @@ struct ice_dplls {
>  	s32 output_phase_adj_max;
>  	u32 periodic_counter;
>  	bool generic;
> +	struct work_struct txclk_work;
> +	bool txclk_switch_requested;
> +	struct rw_semaphore txclk_notify_rwsem;
>  };
>=20
>  #if IS_ENABLED(CONFIG_PTP_1588_CLOCK)
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c
> b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index 36df742c326c..380833a24327 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -4,6 +4,7 @@
>  #include "ice.h"
>  #include "ice_lib.h"
>  #include "ice_trace.h"
> +#include "ice_txclk.h"
>=20
>  static const char ice_pin_names[][64] =3D {
>  	"SDP0",
> @@ -54,11 +55,6 @@ static const struct ice_ptp_pin_desc
> ice_pin_desc_dpll[] =3D {
>  	{  SDP3, {  3, -1 }, { 0, 0 }},
>  };
>=20
> -static struct ice_pf *ice_get_ctrl_pf(struct ice_pf *pf) -{
> -	return !pf->adapter ? NULL : pf->adapter->ctrl_pf;
> -}
> -
>  static struct ice_ptp *ice_get_ctrl_ptp(struct ice_pf *pf)  {
>  	struct ice_pf *ctrl_pf =3D ice_get_ctrl_pf(pf); @@ -1328,6
> +1324,9 @@ void ice_ptp_link_change(struct ice_pf *pf, bool linkup)
>  			}
>  		}
>  		mutex_unlock(&pf->dplls.lock);
> +
> +		if (linkup)
> +			ice_txclk_update_and_notify(pf);
>  	}
>=20
>  	switch (hw->mac_type) {
> @@ -3090,6 +3089,21 @@ static int ice_ptp_setup_pf(struct ice_pf *pf)
>  		 &pf->adapter->ports.ports);
>  	mutex_unlock(&pf->adapter->ports.lock);
>=20
> +	/* Seed the per-PHY Tx reference clock usage map for this port.
> +	 * Only meaningful on E825 (other MAC types don't expose tx-clk
> +	 * selection). No locking is needed because this runs during
> +	 * ice_ptp_init() before pf->dplls.lock exists and before any
> +	 * link event or DPLL callback can observe the map.
> +	 */
> +	if (pf->hw.mac_type =3D=3D ICE_MAC_GENERIC_3K_E825) {
> +		u8 port_num, phy;
> +
> +		port_num =3D ptp->port.port_num;
> +		phy =3D port_num / pf->hw.ptp.ports_per_phy;
> +		set_bit(port_num,
> +			&ctrl_ptp->tx_refclks[phy][pf->ptp.port.tx_clk]);
> +	}
> +
>  	return 0;
>  }
>=20
> @@ -3318,6 +3332,19 @@ void ice_ptp_init(struct ice_pf *pf)
>  			goto err_exit;
>  	}
>=20
> +	ptp->port.tx_clk =3D ICE_REF_CLK_ENET;
> +	ptp->port.tx_clk_req =3D ICE_REF_CLK_ENET;
> +	if (hw->mac_type =3D=3D ICE_MAC_GENERIC_3K_E825) {
> +		enum ice_e825c_ref_clk tx_ref_clk;
> +
> +		err =3D ice_get_serdes_ref_sel_e825c(hw, ptp-
> >port.port_num,
> +						   &tx_ref_clk);
> +		if (!err) {
> +			ptp->port.tx_clk =3D tx_ref_clk;
> +			ptp->port.tx_clk_req =3D tx_ref_clk;
> +		}
> +	}
> +
>  	err =3D ice_ptp_setup_pf(pf);
>  	if (err)
>  		goto err_exit;
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h
> b/drivers/net/ethernet/intel/ice/ice_ptp.h
> index 8c44bd758a4f..c4b0da7ce20e 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
> @@ -144,6 +144,8 @@ struct ice_ptp_tx {
>   * @link_up: indicates whether the link is up
>   * @tx_fifo_busy_cnt: number of times the Tx FIFO was busy
>   * @port_num: the port number this structure represents
> + * @tx_clk: currently active Tx reference clock source
> + * @tx_clk_req: requested Tx reference clock source (new target)
>   */
>  struct ice_ptp_port {
>  	struct list_head list_node;
> @@ -153,6 +155,8 @@ struct ice_ptp_port {
>  	bool link_up;
>  	u8 tx_fifo_busy_cnt;
>  	u8 port_num;
> +	enum ice_e825c_ref_clk tx_clk;
> +	enum ice_e825c_ref_clk tx_clk_req;
>  };
>=20
>  enum ice_ptp_tx_interrupt {
> @@ -236,6 +240,7 @@ struct ice_ptp_pin_desc {
>   * @info: structure defining PTP hardware capabilities
>   * @clock: pointer to registered PTP clock device
>   * @tstamp_config: hardware timestamping configuration
> + * @tx_refclks: bitmaps table to store the information about TX
> + reference clocks
>   * @reset_time: kernel time after clock stop on reset
>   * @tx_hwtstamp_good: number of completed Tx timestamp requests
>   * @tx_hwtstamp_skipped: number of Tx time stamp requests skipped @@
> -261,6 +266,7 @@ struct ice_ptp {
>  	struct ptp_clock_info info;
>  	struct ptp_clock *clock;
>  	struct kernel_hwtstamp_config tstamp_config;
> +	unsigned long tx_refclks[ICE_E825_MAX_PHYS][ICE_REF_CLK_MAX];
>  	u64 reset_time;
>  	u64 tx_hwtstamp_good;
>  	u32 tx_hwtstamp_skipped;
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> index 2c18e16fe053..8e5f97835954 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> @@ -486,6 +486,43 @@ static int ice_read_phy_eth56g(struct ice_hw *hw,
> u8 port, u32 addr, u32 *val)
>  	return err;
>  }
>=20
> +/**
> + * ice_get_serdes_ref_sel_e825c - Read current Tx ref clock source
> + * @hw: pointer to the HW struct
> + * @port: port number for which Tx reference clock is read
> + * @clk: Tx reference clock value (output)
> + *
> + * Return: 0 on success, other error codes when failed to read from
> PHY
> +*/ int ice_get_serdes_ref_sel_e825c(struct ice_hw *hw, u8 port,
> +				 enum ice_e825c_ref_clk *clk)
> +{
> +	u8 lane =3D port % hw->ptp.ports_per_phy;
> +	u32 serdes_rx_nt, serdes_tx_nt;
> +	u32 val;
> +	int ret;
> +
> +	ret =3D ice_read_phy_eth56g(hw, port,
> +				  SERDES_IP_IF_LN_FLXM_GENERAL(lane, 0),
> +				  &val);
> +	if (ret)
> +		return ret;
> +
> +	serdes_rx_nt =3D FIELD_GET(CFG_ICTL_PCS_REF_SEL_RX_NT, val);
> +	serdes_tx_nt =3D FIELD_GET(CFG_ICTL_PCS_REF_SEL_TX_NT, val);
> +
> +	if (serdes_tx_nt =3D=3D REF_SEL_NT_SYNCE &&
> +	    serdes_rx_nt =3D=3D REF_SEL_NT_SYNCE)
> +		*clk =3D ICE_REF_CLK_SYNCE;
> +	else if (serdes_tx_nt =3D=3D REF_SEL_NT_EREF0 &&
> +		 serdes_rx_nt =3D=3D REF_SEL_NT_EREF0)
> +		*clk =3D ICE_REF_CLK_EREF0;
> +	else
> +		*clk =3D ICE_REF_CLK_ENET;
> +
> +	return 0;
> +}
> +
>  /**
>   * ice_phy_res_address_eth56g - Calculate a PHY port register address
>   * @hw: pointer to the HW struct
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> index 10795d023f44..16b1988e993d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> @@ -383,6 +383,8 @@ int ice_start_phy_timer_eth56g(struct ice_hw *hw,
> u8 port);  int ice_phy_cfg_intr_eth56g(struct ice_hw *hw, u8 port,
> bool ena, u8 threshold);  int ice_phy_cfg_ptp_1step_eth56g(struct
> ice_hw *hw, u8 port);  int ice_ptp_phy_soft_reset_eth56g(struct ice_hw
> *hw, u8 port);
> +int ice_get_serdes_ref_sel_e825c(struct ice_hw *hw, u8 port,
> +				 enum ice_e825c_ref_clk *clk);
>=20
>  #define ICE_ETH56G_NOMINAL_INCVAL	0x140000000ULL
>  #define ICE_ETH56G_NOMINAL_PCS_REF_TUS	0x100000000ULL
> @@ -795,4 +797,12 @@ static inline u64 ice_get_base_incval(struct
> ice_hw *hw)
>  #define PHY_PTP_1STEP_PD_DELAY_M	GENMASK(30, 1)
>  #define PHY_PTP_1STEP_PD_DLY_V_M	BIT(31)
>=20
> +#define SERDES_IP_IF_LN_FLXM_GENERAL(n, m) \
> +	(0x32B800 + (m) * 0x100000 + (n) * 0x8000)
> +#define CFG_ICTL_PCS_REF_SEL_RX_NT		GENMASK(9, 6)
> +#define CFG_ICTL_PCS_REF_SEL_TX_NT		GENMASK(28, 25)
> +#define REF_SEL_NT_ENET				0
> +#define REF_SEL_NT_EREF0			1
> +#define REF_SEL_NT_SYNCE			2
> +
>  #endif /* _ICE_PTP_HW_H_ */
> diff --git a/drivers/net/ethernet/intel/ice/ice_txclk.c
> b/drivers/net/ethernet/intel/ice/ice_txclk.c
> new file mode 100644
> index 000000000000..5230081c53b9
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/ice/ice_txclk.c
> @@ -0,0 +1,320 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/* Copyright (C) 2026 Intel Corporation */

...

> +#define ICE_REFCLK_USER_TO_AQ_IDX(x) ((x) + 1)
> +
> +/**
> + * ice_txclk_set_clk - Set Tx reference clock
> + * @pf: pointer to pf structure
> + * @clk: new Tx clock
> + *
> + * Return: 0 on success, negative value otherwise.
> + */
> +int ice_txclk_set_clk(struct ice_pf *pf, enum ice_e825c_ref_clk clk)
> {
> +	struct ice_pf *ctrl_pf =3D ice_get_ctrl_pf(pf);
> +	struct ice_port_info *port_info;
> +	bool clk_in_use;
> +	u8 port_num, phy;
> +	int err;
> +
> +	if (pf->ptp.port.tx_clk =3D=3D clk)
> +		return 0;
> +
> +	if (IS_ERR_OR_NULL(ctrl_pf)) {
> +		dev_err(ice_pf_to_dev(pf),
> +			"Can't set tx-clk: no controlling PF\n");
> +		return -EINVAL;
> +	}
> +
> +	port_num =3D pf->ptp.port.port_num;
> +	phy =3D port_num / pf->hw.ptp.ports_per_phy;
> +	port_info =3D pf->hw.port_info;
> +
> +	/* Hold ctrl_pf->dplls.lock across both the usage check and the
> +	 * enable AQ command so that two PFs racing to switch to the
> same
> +	 * (phy, clk) cannot both observe clk_in_use =3D=3D false and issue
> +	 * duplicate enables. The tx_refclks bitmap is updated only
> later
> +	 * by ice_txclk_update_and_notify() after link-up, so without
> this
> +	 * the check-then-act window is wide open.
> +	 */
> +	mutex_lock(&ctrl_pf->dplls.lock);
> +	clk_in_use =3D ice_txclk_any_port_uses(ctrl_pf, phy, clk);
> +	if (!clk_in_use) {
> +		err =3D ice_cpi_ena_dis_clk_ref(&pf->hw, phy, clk, true);
> +		if (err) {
> +			mutex_unlock(&ctrl_pf->dplls.lock);
> +			dev_err(ice_pf_to_dev(pf), "Failed to enable the
> %u TX clock for the %u PHY\n",
> +				clk, phy);
> +			return err;
> +		}
> +	}
> +	mutex_unlock(&ctrl_pf->dplls.lock);
> +
> +	if (!clk_in_use) {
> +		err =3D ice_txclk_enable_peer(pf, clk);
> +		if (err)
> +			return err;
Local PHY clock was enabled above via CPI but
enable_peer() failed.  Function returns error without
disabling the locally-enabled clock.
Isn't it a problem?

> +	}
> +
> +	/* We are ready to switch to the new TX clk. */
> +	err =3D ice_aq_set_link_restart_an(port_info, true, NULL,
> +					 ICE_REFCLK_USER_TO_AQ_IDX(clk));
> +	if (err)
> +		dev_err(ice_pf_to_dev(pf),
> +			"AN restart AQ command failed with err %d\n",
> +			err);
> +
> +	return err;
> +}
> +

...

> /* _ICE_TXCLK_H_ */
> --
> 2.39.3

