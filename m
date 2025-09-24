Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1DAB9A115
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Sep 2025 15:39:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5E418807AD;
	Wed, 24 Sep 2025 13:39:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cCyt5zcVCWZp; Wed, 24 Sep 2025 13:39:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8B2FC80847
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758721172;
	bh=AAGeHNbkagcSLqYiz+6s7SiBqJkxjhvAX6qlRrDuNdk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3AZVaSu8WiOhWPZ6QUQLyi7okmblpYRcbsXUPAQRA9nUaiGeDi8TsEpe78J+n0+ss
	 +yGyubGN4rZ2I1xC0p/VpDvkhvmk8guoH3Tss2WWwhQbCXxsrQ9RBGfYTng4SluAZi
	 BJK+UnlQN/FNDTOn8XrRn9xX5y2wvYG5Y8b4TeZ7q8cbJ5HwCyEBk36hlS9uiQ6ywO
	 7RgoaU9VEq1OiQtAfezA6EL3ovanGeQN9hUWSlSYZwIUM2AkgSeMQD7mWv2Pswrqf0
	 LsNYOXpvdcpCdhqKiGPoIT9GiuoYGpOCyjtrMXi9RHyDyeQZ1kYWMRmuD/oQuZkK/6
	 ORYmxdHS0jwCA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8B2FC80847;
	Wed, 24 Sep 2025 13:39:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id C48A1199
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 13:39:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C1D2840CEE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 13:39:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ebRC0nuvpLFo for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Sep 2025 13:39:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0E73840CE7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0E73840CE7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0E73840CE7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 13:39:30 +0000 (UTC)
X-CSE-ConnectionGUID: eWOPo8ecRkyeuJKwIesvRg==
X-CSE-MsgGUID: uGI2bqbaTGq9dxy2+iJiTQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11563"; a="48583118"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="48583118"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 06:39:30 -0700
X-CSE-ConnectionGUID: 2RFm2CgPQ/WSnimPoJnWGg==
X-CSE-MsgGUID: zbQHZdO2S6a8LATB0LBX/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="177433987"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 06:39:29 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 24 Sep 2025 06:39:29 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 24 Sep 2025 06:39:29 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.37)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 24 Sep 2025 06:39:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Vc1LA6zD8lr5/j3h40ZQXGcWKo5FPhZyrHErjuGd+6HBMVqhan35lRG7MTN3mLG5G1nXLv9c8lEG1W73dDkA+1iLqXNClNUpEQ+W923WFgzRVhMbfLt4JrCeKyK6KyY9aw4+lXp8Kh85doeEhcmJuUkk9Ei092Sm3yUJfd+fEC25UruszHmD25ieSzw3y8KOjsJVmJxaa1Iyxwp5cNA4tZTyVJzl46XVXoDfDA85mlAbSnU3sTiMSI6a6w7+Ykv3Q9Ddgd37vSHday3eIydipcvnhBgZlRTTBwy9rlAgesGzYImh8nAsPPnCvsozKJky8twYjETbTZ430pBt/nhXsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AAGeHNbkagcSLqYiz+6s7SiBqJkxjhvAX6qlRrDuNdk=;
 b=fi89oBuy9vl6xEEwu/gZQpEbT/4y80bKn60/9JnxSR1v3tA4LSDdIGuXfwc6Qf14sWvK3giqbKnHeEweS9AZgaa3AB6fsYASuw/M8VNVZOnbJTqdRydKrZMTg07vJVDL36b3XZ7kjx0hSTHt1ZURttx0VDSPipcJvfEnpZ0dvuIFuqfeCwR73yEuUNkuE9EtZGwPxalPMY2cpGZsOWH6enkgSVlN3jThPFc6QXjK7tENkctPA/fovUyWi4YlBG/Ong0PGAvD58iheH2KxGCbWuOV8zCTzW+8de80iyXlhUBKKqSOv3dgDZ1cyTQlN5jK2Gvj00CsEtzmJPnc5POa0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH7PR11MB7002.namprd11.prod.outlook.com (2603:10b6:510:209::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.9; Wed, 24 Sep
 2025 13:39:25 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9137.018; Wed, 24 Sep 2025
 13:39:25 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>, Jakub Kicinski
 <kuba@kernel.org>, Andrew Lunn <andrew@lunn.ch>, Michael Chan
 <michael.chan@broadcom.com>, Pavan Chebbi <pavan.chebbi@broadcom.com>, "Tariq
 Toukan" <tariqt@nvidia.com>, Gal Pressman <gal@nvidia.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, Donald
 Hunter <donald.hunter@gmail.com>, Carolina Jubran <cjubran@nvidia.com>
CC: Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Dragos Tatulea
 <dtatulea@nvidia.com>, Yael Chemla <ychemla@nvidia.com>
Thread-Topic: [PATCH net-next v6 2/5] net/mlx5e: Don't query FEC statistics
 when FEC is disabled
Thread-Index: AQHcLVB/HkbGJnsSD0iLcY+2AkGMUbSiVpSg
Date: Wed, 24 Sep 2025 13:39:25 +0000
Message-ID: <IA3PR11MB8986F2F97E7EE8011A255B79E51CA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250924124037.1508846-1-vadim.fedorenko@linux.dev>
 <20250924124037.1508846-3-vadim.fedorenko@linux.dev>
In-Reply-To: <20250924124037.1508846-3-vadim.fedorenko@linux.dev>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH7PR11MB7002:EE_
x-ms-office365-filtering-correlation-id: 10b32e46-75e6-4e6d-1f4f-08ddfb6fc70f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|921020|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?aXGnOOLXySvi/9iCVIGnXbKf8fQp6yFp22yarnkD85PV+kWELYBXGl9x/M8U?=
 =?us-ascii?Q?+LDvlj+H57mmwP6mxtDhSEWLoJBfwjdwnSU35+6Bc2gyXfw2VKtSUGc5YKM4?=
 =?us-ascii?Q?V/tHu5twcCbNzTAtVRVkvWndp5ZyTXcR9Lj7wgj6CLOBcGWvO2vSO7+zmCN3?=
 =?us-ascii?Q?YfJH/JBUBvfnGOjQaB5FA5qV2CD2zptQUU3phDgpk6GfyZn643SN4C4VxPYI?=
 =?us-ascii?Q?11Y6jG8UopAkwCnuZE9jqO8FkNQFsOEG5f8NZ61gD7Ybw81f7dOu7ikG2DIr?=
 =?us-ascii?Q?mdfATXxp8pCL61pmKxlyhpbtP1vRC01ehPmys2Lga5ad0EYcBJ8nvI2Cwtbz?=
 =?us-ascii?Q?H0ny/kXljvijuAEDgPwMUx2ceV0+N40A9szKyPR/oRIVdjI8b70Hu8vBUpS2?=
 =?us-ascii?Q?32Ka1bnA6DtZByaouzsKgmuzshoXOtD9kAECpUClNAcDg1BykzZTP7g6yacu?=
 =?us-ascii?Q?Q5Qb+lrXPeiCrYSy4MdY7KrRuip0xHWWl4vUid5Inge7/ybXmjWsehneZOW5?=
 =?us-ascii?Q?ki6XP9oSqAum3DnYHVl/0PwDjLTubauANzen04UAUIAgJUUvsqQmchIG3PHo?=
 =?us-ascii?Q?6lmjPg7FqO6cjU9yY2RMVAjvp7PRucgcQz54xfqXYJ55FKcddarvRmiZadwb?=
 =?us-ascii?Q?EyO+qvjcMkNIsIJZ7UOKAlv3j6/WnBdybGsvJ2QC9qFsGXEL4La+qEGBYNVq?=
 =?us-ascii?Q?ZAhwJdodFxdfWNzf0K1f2WvNyWeWG7rZ3NC9Xg02qwHoyeQYAzBau7tF9Jg3?=
 =?us-ascii?Q?UqEXdS99usc2m4DTy3R94i1MsSIZ56gZZ7HAC4uIxo4Y6D+O9252mBjGmygs?=
 =?us-ascii?Q?RrN+OKCg/iFy9+7iZWofL5m1QBYksN0SrKRD21a3sVXyv0p+W2Bia3yjojaC?=
 =?us-ascii?Q?rUlcJxdi3RzfaBmoLAo1d+SjP37VxxTaRWzflvp5mJ6bnQ5hyJEIRReq50zp?=
 =?us-ascii?Q?OC8mnQ9mWUsJUGvyMvWGr7gk8z8QTcjcJ4MRzV9ToEMlprKrbL/sqFYlz7c+?=
 =?us-ascii?Q?LJCUOhSSXpQOKsmJxo2cbXIR5nirQT2a2Koc95Uh9zgrtoodTq6WbATbpPgG?=
 =?us-ascii?Q?GQ2guNcLAsj4I8jMiZPETyXAYjxVP1KOLTBGo/HU/qTrvGg/BZ+Jy77qqpf3?=
 =?us-ascii?Q?033NO8bIjC6jX+VFrCHjiOjx1/7Jt8eWw6aSmD009YndIuDaMRqQHlbfbecA?=
 =?us-ascii?Q?4CIByGyv+SKY+TzNNmbG3A1Yh+H+Uh8Y64iHw/t2TTunqUNDT8Zf6XZ+HkKf?=
 =?us-ascii?Q?IWfJORdUugUBPCb3rrkiWYBy8P1Ajaim0u692ifhvnaxi21U2+09z6R7TmeW?=
 =?us-ascii?Q?4euB4bpnwLMW1wAOIIL2OAV52si7GnMcs723sonT+Yvi9xTEI/L1Z3TBnWH3?=
 =?us-ascii?Q?sVinVJl6Jwi+gYVzKzZQdotWnsLDHkPzRmk7Tjw7PciOKCq/5aVuGjSCebvD?=
 =?us-ascii?Q?z6NcKOiM6QUF5zfMIh5mXIIXOwwsezH4YZE6mI7tp3ugedqHDcRMcHmlBWeD?=
 =?us-ascii?Q?WfZky14Nu0SiJaB3X1gPhwJc2OXUAMVfbKyX?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(921020)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dn5NiMoZIPwDR4OgotV4EhGa8+OyyhTmkrxDMzbo2AQaixxySHRK78qLdExf?=
 =?us-ascii?Q?0ca1ArBD40H4EAs9rL9MPSmtUETwV0A2ZUTA0PAni1VEnOKeX0ZPrEOdcOGb?=
 =?us-ascii?Q?1Ll4Lu6nAgCInIRMck7zuEm1iKhgxrH6Z8HhMa97Ui2YemWaFHbKMniRT9jy?=
 =?us-ascii?Q?JWZJhM3dfyRL7rHqDCg2VMj/dntywF3DDr0S69OpyKd3V1G9DulOkNDeHtix?=
 =?us-ascii?Q?eVkkWAW6IlssRfmdoJM6D7IJLFQknTmG8YXTQgrgb32iGVs06CfrpbWbQgD7?=
 =?us-ascii?Q?cJUZ6efXZzSVzQAwg3/9MoQ3haowtbpkVozHR5/oxkdt00NmjR7gfSMAzbTI?=
 =?us-ascii?Q?rZVtTvr0/kXoJUA4BsCO7oFSoxuFV+Y1brkgiEns1TUxdvl0btpl9d8KofvK?=
 =?us-ascii?Q?ftDi+DR0GGrZAFVqbik25nxxN+VnqZt8zmMB7l68OsJqDjYL0J1kpGTEkuja?=
 =?us-ascii?Q?rXwjDcUiS+gGIKMSv1W9JBsPDklN2mJmtnZmxR2OzPXaoPUHAvuwF0WpRlWL?=
 =?us-ascii?Q?K0GyNZ/CSAUY4xhERnc8nt9KX83ZvgWBEerL/Tbu7JQy9pnYCn2+/aDOV3GD?=
 =?us-ascii?Q?b/RL1y86OCzq6Uf95iICm/XdWN8GA9lb0I6aLCjv67RUVgwXdt7rbJizX1kp?=
 =?us-ascii?Q?woKaSevXJGxZ+YwLtGzLUKC3p0JTyV7qpMYL7K6ATGfMwSAfG+T2Lkcsvl2d?=
 =?us-ascii?Q?37dErnFr7jwWIgXVYJFKNN9JfBvuW8MIy/P5nRJX4k+cUBDBx++hdbV9fK5t?=
 =?us-ascii?Q?7607MV4rpCoPkG6eT3NpYYp3W9O8xRBX3mEknQgKp7JnnVwradiwG35+YvtU?=
 =?us-ascii?Q?aGVQCju1vT807HPbGSYhbb3SB6To6CZQZ4MZze4On1TXXn7+Ex1h41UhibNK?=
 =?us-ascii?Q?mpLDB7J7jJmIu25NkVRXD71VBp1msX4H1n/tweXMe2SWO2iRWb1nXfw7cO1R?=
 =?us-ascii?Q?soAUX311+WmXYXPD1oxgPRMKIZPzoDURiqRAyW9DmFrvc+YvA16TPkp9j/cy?=
 =?us-ascii?Q?x5XkO/HOtFQY9smfwpbiQZKK5zuWZIv5D0eMgi6PgNnLlkJg0AcuqfkoLko6?=
 =?us-ascii?Q?hbqzbtLxBNXG0c00ybN9ycutZ8qnzTg8SU9DxtYQAY4z2QHLN1QcfZ3glU32?=
 =?us-ascii?Q?uHZiNhqC/1LKxaU3/ugH36iJWGEPV4KmP/OW5crzqbOuAzpKiKqFWe7l80fQ?=
 =?us-ascii?Q?y/RjjrFQGQN+TVdg4mw5f0PRX6FyQ/2XlBIVdAI9FP7nG851a866VGKSlH9j?=
 =?us-ascii?Q?OctCvm36jHIbrqgC9a+Y4OaEf4nqSLtMTs+C5nz3s5l3sjrrWrJZZlrHv8+G?=
 =?us-ascii?Q?Oxt2LI+4PaITUaDkW5h/F0pWoJ3Nu4OOVt7BjWfalBISlf0NwSdAWI9+Yais?=
 =?us-ascii?Q?Sl9f48xi2DvO1qoVvVd69VbHFhi/sRkRp+liK33waOSVpqzQ8o+xrwnPOv8j?=
 =?us-ascii?Q?jEByrXdBRqh34FhBLEVG55mu3yHhfNBLL80/9/iVEOb5/YFTIM6FgeoNNwmK?=
 =?us-ascii?Q?i4TOb13fvra6+c6DlIRzXmNd2ZB7xmN4FlC2zkhvOXlVj9CjUe5XfDy+griL?=
 =?us-ascii?Q?pMVEAmSSLHOl20VyY/sCw2BP4K/uASCqKge+rHea9zzgeZZHXQCYFAolMIus?=
 =?us-ascii?Q?bQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 10b32e46-75e6-4e6d-1f4f-08ddfb6fc70f
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2025 13:39:25.5887 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2MlMMCD0gfqtwYCb0NWpCAAFpytRbka7XZ1gqxQ0jfVX3yFQkGLXFOVSf5zs/loFV35MDDSgHssAx158yHLbsE/TN3SeuXQI27jsBvkJCVw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7002
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758721171; x=1790257171;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WGn/DArRhsQq1eCT5iARdyLaHdFAMORqUOPaPbq/I3A=;
 b=XZlSJfXDYpwysdEYaQDuHN34ngK0KGeLowSf7A/uo9XUpFvDkUSTXtEc
 zwDplhGmaYmFKx/FqHKudQ0wcQFFMFJcqQxloKy7+Bzb9K6GT1YfGTtWX
 OiywfCRUzRPDN4/9XAlLZkyy2V88aejWYBGngzLbNnhzQ9MHcsUd0QMfw
 WBXkh4iHQWxgdiNO2t7q2rdxGdcRbi3OdoARbdMwj0x1Z1pDbCdRdwZds
 NK85ZrMXo/JmsGbtGtD6elV9xpKkhoP375op7CaR6TGm89CDZ/OQsd2mA
 UEk/7wDFUKcNDbfpLvT67sJlNZJzXRDTkRmLrllxM3QNw7qZT2ftLwrbD
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XZlSJfXD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 2/5] net/mlx5e: Don't
 query FEC statistics when FEC is disabled
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
> From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
> Sent: Wednesday, September 24, 2025 2:41 PM
> To: Jakub Kicinski <kuba@kernel.org>; Andrew Lunn <andrew@lunn.ch>;
> Michael Chan <michael.chan@broadcom.com>; Pavan Chebbi
> <pavan.chebbi@broadcom.com>; Tariq Toukan <tariqt@nvidia.com>; Gal
> Pressman <gal@nvidia.com>; intel-wired-lan@lists.osuosl.org; Donald
> Hunter <donald.hunter@gmail.com>; Carolina Jubran
> <cjubran@nvidia.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; Vadim Fedorenko
> <vadim.fedorenko@linux.dev>
> Cc: Paolo Abeni <pabeni@redhat.com>; Simon Horman <horms@kernel.org>;
> netdev@vger.kernel.org; Dragos Tatulea <dtatulea@nvidia.com>; Yael
> Chemla <ychemla@nvidia.com>
> Subject: [PATCH net-next v6 2/5] net/mlx5e: Don't query FEC statistics
> when FEC is disabled
>=20
> From: Carolina Jubran <cjubran@nvidia.com>
>=20
> Update mlx5e_stats_fec_get() to check the active FEC mode and skip
> statistics collection when FEC is disabled.
>=20
> Signed-off-by: Carolina Jubran <cjubran@nvidia.com>
> Reviewed-by: Dragos Tatulea <dtatulea@nvidia.com>
> Reviewed-by: Yael Chemla <ychemla@nvidia.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
> ---
>  drivers/net/ethernet/mellanox/mlx5/core/en_stats.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_stats.c
> b/drivers/net/ethernet/mellanox/mlx5/core/en_stats.c
> index 87536f158d07..aae0022e8736 100644
> --- a/drivers/net/ethernet/mellanox/mlx5/core/en_stats.c
> +++ b/drivers/net/ethernet/mellanox/mlx5/core/en_stats.c
> @@ -1446,16 +1446,13 @@ static void fec_set_rs_stats(struct
> ethtool_fec_stats *fec_stats, u32 *ppcnt)  }
>=20
>  static void fec_set_block_stats(struct mlx5e_priv *priv,
> +				int mode,
>  				struct ethtool_fec_stats *fec_stats)  {
>  	struct mlx5_core_dev *mdev =3D priv->mdev;
>  	u32 out[MLX5_ST_SZ_DW(ppcnt_reg)] =3D {};
>  	u32 in[MLX5_ST_SZ_DW(ppcnt_reg)] =3D {};
>  	int sz =3D MLX5_ST_SZ_BYTES(ppcnt_reg);
> -	int mode =3D fec_active_mode(mdev);
> -
> -	if (mode =3D=3D MLX5E_FEC_NOFEC)
> -		return;
>=20
>  	MLX5_SET(ppcnt_reg, in, local_port, 1);
>  	MLX5_SET(ppcnt_reg, in, grp,
> MLX5_PHYSICAL_LAYER_COUNTERS_GROUP);
> @@ -1496,11 +1493,14 @@ static void
> fec_set_corrected_bits_total(struct mlx5e_priv *priv,  void
> mlx5e_stats_fec_get(struct mlx5e_priv *priv,
>  			 struct ethtool_fec_stats *fec_stats)  {
> -	if (!MLX5_CAP_PCAM_FEATURE(priv->mdev,
> ppcnt_statistical_group))
> +	int mode =3D fec_active_mode(priv->mdev);
> +
> +	if (mode =3D=3D MLX5E_FEC_NOFEC ||
> +	    !MLX5_CAP_PCAM_FEATURE(priv->mdev,
> ppcnt_statistical_group))
>  		return;
>=20
>  	fec_set_corrected_bits_total(priv, fec_stats);
> -	fec_set_block_stats(priv, fec_stats);
> +	fec_set_block_stats(priv, mode, fec_stats);
>  }
>=20
>  #define PPORT_ETH_EXT_OFF(c) \
> --
> 2.47.3

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
