Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BAA9CB94BF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Dec 2025 17:42:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E245E411C8;
	Fri, 12 Dec 2025 16:42:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BIB4d9o8q6dR; Fri, 12 Dec 2025 16:42:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 52CC04118A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765557745;
	bh=VIHiZQXUK5h0gUdEu5JRvteujuZ9IwXgZSuJNbyJptA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DezGjjunufaFSzOaNlR0NcSWrWHlPk1ZkmTk6T95poV6ZFR2zWTEl9xiUVeQJhDq9
	 YcE/FnnI5BLvziYD7yURWBe3E2TGYD9Wx6Yy0saheuiZRI19jZn1fK8UBiE2feVsgX
	 NhOlOE7CZ3pR3FbzXKk7q1lHQakM5L45E4WlCUjGHCJozCrc5DlBAVaXGYhi7qPHgi
	 /fHIVxmwxjvQ1IS3rOi/ss76Iq1hgv4Rrw8Oklo2nXcPY1LjKp9XoHPAPXTTEWHVPX
	 g+dtVdoS9Wm5/6OAa+5DXg3GsF+4cmoPHndOW3rTo6J4EyllQ3wbcwfzMD4EpTLeSV
	 9mg2kDCN1q24w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 52CC04118A;
	Fri, 12 Dec 2025 16:42:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 135512C6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 16:42:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0111260B22
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 16:42:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id leA0WPDZobEw for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Dec 2025 16:42:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org ECADF60B1B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ECADF60B1B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ECADF60B1B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 16:42:22 +0000 (UTC)
X-CSE-ConnectionGUID: REQ0D9fkSzeYEP8Nj8n6sQ==
X-CSE-MsgGUID: YnrMC/NTQ0ONO+30nO/KaA==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="90214255"
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="90214255"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 08:42:22 -0800
X-CSE-ConnectionGUID: 8PCAqNzrTUeO9ogza8rviQ==
X-CSE-MsgGUID: KfVscQGsQUGsWl0Ex6ZRZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="202211421"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 08:42:22 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 08:42:21 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 12 Dec 2025 08:42:21 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.24) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 08:42:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YprurQqjONEu5f8KWV5JwIGlJhtbzIBAgZuxOAl3/YmD5WVibMIWTegEMYLuWYHnI8QPdHJuDwCNORvkG5aRumicc5Uv6I12y8qV+ZyZdaCtRK9x8SM1ku6aGFJ1GWt454gYazbuE0KbpCBMUDO0DBkv0Kni3C93yX6w3tqB88zkyyucC81FHrbkJw0UHVHhwarDBmIJdsoyT5DQbkm3i2+ljzvT5BucnMQ31hPCnNARgmTexIvYz+dYZBQVC/CkImGMnUn8YZr/VPwhlnaUGl6KEwAgywBAumrfMqR0PnjIiiMpa49Jzq9l/2i9Mu1YNwcwnEwPRJNRmqZ9HXr6Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VIHiZQXUK5h0gUdEu5JRvteujuZ9IwXgZSuJNbyJptA=;
 b=XfH9EKJGRgsUVCloqfbO4QKoaZg23uMrNieED03w3tFj1yTUnU2rcF2hlnptdt4e++rlu89KKu2+qCgWvbUlBLNnJyVGgtPh4guNgO9NjQp2ZgGge/R9P2bDJtHsFfzCLC2kp/+C/8xSqGeFvqRkEu7nYsIVfqk9eJADCQkjMyRxy2uvB3hsV/c0yb7jsuPJAG7WQX7tTztEkkcQ068ibYZxxL7rKVl9MuwOUhJgLR2gSwW0pUHIzOm75N1eyycrG0xcboD3S2aBNiUy6WOdXtUEFbeMoT1y2y3oXmRaT9sHAtWoaoV+D7Ox/SOG/GcvSUL8hm9b8jhXuIMiCvyLXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by PH7PR11MB8480.namprd11.prod.outlook.com (2603:10b6:510:2fe::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.12; Fri, 12 Dec
 2025 16:42:06 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 16:42:05 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: Simon Horman <horms@kernel.org>, "Joshi, Sreedevi"
 <sreedevi.joshi@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, "Tantilov, Emil S" <emil.s.tantilov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2 3/3] idpf: Fix RSS LUT NULL
 ptr issue after soft reset
Thread-Index: AQHcXXL+bg44xioZrUGVSWpaJ8CFB7UGa7OAgBfllUA=
Date: Fri, 12 Dec 2025 16:42:05 +0000
Message-ID: <SJ1PR11MB62976A2AD74C059B23A9D7349BAEA@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20251124184750.3625097-1-sreedevi.joshi@intel.com>
 <20251124184750.3625097-4-sreedevi.joshi@intel.com>
 <aSg5zR-6ZYXBuIVd@horms.kernel.org>
In-Reply-To: <aSg5zR-6ZYXBuIVd@horms.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|PH7PR11MB8480:EE_
x-ms-office365-filtering-correlation-id: d2eb1999-0be6-4bdb-33a6-08de399d6287
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?xBcTPaGss8XixblpTuyEWJz0ph/vqtnwG/9cOwKCiuqhmKbfvIp4TYgc8+kA?=
 =?us-ascii?Q?pqC8eE33gVkM3wv+fgnKuEz28SV439BW+y+DfE9uOwRROJ7+Azo6JT9B7VKm?=
 =?us-ascii?Q?SjXUssB4PRQGm7ubWl9n994rHdh+srTyN+yAjF87TmrsZU8LnWZvI5hQzhT8?=
 =?us-ascii?Q?KPMMEkpXryvQMPxrZk+2EBU/mQWkcVY2W+F/XlFgYsOe4bvaOT4KrHpgeFS4?=
 =?us-ascii?Q?ZDe+kY4X2mR7tZDPBkUWY7xLnhelw5B/PeykRa8fTQz5290b7TT3AwK9GNf7?=
 =?us-ascii?Q?BkCNln6xpgjCsDcyizmo2YzfvpA4klh4+vg7uXrj/QSqD468XE26i9TbiE/o?=
 =?us-ascii?Q?OOKU9moYLnRLnK5FdTRdBywKd3VhKMdsQeP29eiR+r6cYpgV7UhdSDxOitsp?=
 =?us-ascii?Q?j39nx1tKcHLy+t0ptlmcm94LEdFiPPKmzfMLfhAUZ9pZAaVmwIp+vYfsJKX4?=
 =?us-ascii?Q?E4Zh4P4atK5GFWKe2kC+2BxpS5nQB1zFtwkqaUQtgDNyT7Mk+YclRWnfXKYV?=
 =?us-ascii?Q?O046+85YTqFVCW6/km+ESbHNW439//YF4qUXQhQjaoGSvgvgf3uJQgIfypML?=
 =?us-ascii?Q?los368Dum4e1QUZcugZnj5goOavu5bv7Vtk6O9wLjnLKCx2ZxLmm9VuTvU7r?=
 =?us-ascii?Q?Z5IcmiffwKigkYLtU+wyS43enU3/QqJihz+Uc6B/Ekctr9e7uSqpJm21WQE3?=
 =?us-ascii?Q?ObSIPepOcv2gYHpkTzySZyzXmhCpmQ4wFlwuUhS7T5fFGIGmh9Ui9Aor1dWN?=
 =?us-ascii?Q?QECa4QDDruKanB5rZ9wpiCdZGkuD5HXEbOwJ7EvF7ibWcigLzJaC+f723obr?=
 =?us-ascii?Q?0ZbsRFAw7yNLxXjNoq/zZf3k+C4H76SAY+jQdZcnHBQ1py91jPhe+MnAx2n8?=
 =?us-ascii?Q?puLVbtXCYb428zuJyEyC81JC8mV8wMgYfc6dbFCONxvCDKRV+imUu+zaiEoG?=
 =?us-ascii?Q?7grwJaF7kxgxxLpzr2Mg5Rp95jfSsggpdfs6RNFRKC4SvXKUMoFMomTxpoeV?=
 =?us-ascii?Q?4EzBBBVd1af8hbOMxpNcdHZF0N9uFpi4sMN0xOIut1CCIEjtGLwR3ADdeVDD?=
 =?us-ascii?Q?Um3aoC2RCyAc5yLJpUmYgA+HhuBoB/8butSQsNo88Dx7n4dnoqHWCNzRDXnS?=
 =?us-ascii?Q?kqM5O2A+QuoCddli8EMPrz42/1EoJAr5zUVSW+5+2Be8AXPwaEPaKprNxIPf?=
 =?us-ascii?Q?//7c0F8xxmCrc6SfwLqLVe2Br6f8k8Q8dud/lzCeaG9FKWbS0oax8npmMUIz?=
 =?us-ascii?Q?vutYSyF0VFyLvbqH5UcgM7zn5JXPJ4y/T8NMwBAdESkP60FhR88Tj9qVTu8o?=
 =?us-ascii?Q?chuFwcHAYN0c78r3syG5+NK2HQF/3Rh4wQkvdEam9ZgU8vlLG2AW3ldjTNH1?=
 =?us-ascii?Q?DmgFl3YqXxXWs+Hc7wZCTlpL3ddINpjWJp9tPLPtG3TDLiCqKKxs/97GT4Ja?=
 =?us-ascii?Q?TWwps27dwi9iOxqFgh1X8rJjo+t36TSQjhCn5nzzDBBfTLdt5LOjDUsi5P7B?=
 =?us-ascii?Q?doUbDbiq2iWh0NeCDlKJ3el1MXw6ctWPYElR?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xJO9VF7iOz2pHS2ciPbfJSqlOTCWp8xk4J+DVpy43FWTlTP1jgZXv5NiQXsR?=
 =?us-ascii?Q?xRzzossCtmT1lYnNb8KBlaYkPpl+bpiSceODPJJFpU4+4By03CAXsFwTRS6I?=
 =?us-ascii?Q?Jn0j3E9RaPZeqqh2iDgs3NbW9043xdZ7e9SpUD3VFlXsNfo11DLZijJvNLXG?=
 =?us-ascii?Q?FS6XaBp09DtNf8yqw+MkDD4NJ8LY4TBhKBQ04pYplHXQ8UsoPd873YPASLVb?=
 =?us-ascii?Q?HQNqs4HffwxYEO8we8FEmnFxMrvGQH4SIC5gvDbSrvT/FyR35Ucwz6LO+t34?=
 =?us-ascii?Q?lvURWVxZZ7dUpgpT14fHPu0H195IQAw7vByPhM/gLwONrGJsQ0aUK/9S57lT?=
 =?us-ascii?Q?HR+9HYmQOwsPkqurriz6sQE/vY+XXPlLdPOnU0WvCO9JKagHaashNwcqTctL?=
 =?us-ascii?Q?WdkT7rWnvSZ+KKe5hSH5ZTR+RG3l1QwD479xLueji0Jmqj0oaT9nzezkC6yn?=
 =?us-ascii?Q?1mHT8KJA+kmidxxtndXdLOwOOBwspV3jm3YXa9uTlfbNGr4ne0NzSvo+MH4h?=
 =?us-ascii?Q?zJGbV/9fBUlZ8lZhHIPBM9tsioBQQdahQDuy5EkxUW2F8n2CB430j7noFfXs?=
 =?us-ascii?Q?GJXL955G2Sul+MwySNXbTdn4tIjUiJN4iU5fMVFZBjRybqx6xDtb5AffAZxG?=
 =?us-ascii?Q?aUAK6Td8YAZmqkze1kw4eNPy1btNEASa8gMpkk8gZAHdYNM6b4brppBOwzgG?=
 =?us-ascii?Q?8/I5w+IeHkKQWqgibXPTZC88avx2ciPHjzdQV9rAPcCTYsajHJxbX4++lDuw?=
 =?us-ascii?Q?x5bVsVAT23UuLSJQTTrVi79gIfXyFqGty4iY9H+Q21EykJP2hqVG1xvp4935?=
 =?us-ascii?Q?rK3VWNU8gRbunVK0CrSIXVY2LaAFCKzLzGdyrP6rst3tjNH9zTr+Lq7Eyw5t?=
 =?us-ascii?Q?WkmZ7X/Mr5Wz1fVoToSJXp4HQuBikofskQCbuvdVdgCGCxLdTiNwcqNDE8/W?=
 =?us-ascii?Q?kJqy2p/8k1+xOsT/luOxDTfI5Ez7IOxFGNW77ufREWqdFGeV8Qn4nxoXILp3?=
 =?us-ascii?Q?GXrcuMEzV5myw1PCwVYaYnPGm4tv3Iwh3MLdQqlgmu1JAqiHr6qju3HrCiy+?=
 =?us-ascii?Q?pkgtpww0atI96Df57lI2ThKyNIJa/UxuMNiAPXJ/C6ebPbtAO88G8kWQFJPN?=
 =?us-ascii?Q?zngRxwFhD2hCG8rKDnCAkEgw6ky+SgCB/X7AJ7ctUGMZC+YP+znGCS9FSDHE?=
 =?us-ascii?Q?22WAh/qaC7PGyNYYaeqo4m2OBDjbQnR1KacebdKEKBGBCZSvTNKZRA8OkqGR?=
 =?us-ascii?Q?wJiHnGnSYzsdQT4CnwILWmaNEBmgbbs2uH3HHvs9a4RS09IRwozUuhfi/pCs?=
 =?us-ascii?Q?hT7YDDr00I4c7rE74LQt2/kzYIV244hzEjrwdOsjA6ZmHWAWH6WrSlqlXWyJ?=
 =?us-ascii?Q?Bs/IZjtvE694Kt+w3HwWTrYvi9LIbt3omdfYu7daNzFBuG4OJziKtbjX0czh?=
 =?us-ascii?Q?LWpP5F0Aq2OJcY71iKZAvotlclO2+268f6f7NbF5h/AdZ8vmvCZOeQee8SKw?=
 =?us-ascii?Q?lQDLnneeBi+SLo2HkSgWw4SWfAbPsWH5jyZWD9gbrgb8/47cVGR5R0NEGDuR?=
 =?us-ascii?Q?amNdKuqoWgbtE4slxQoeShbUDCPfJ1BEa9lp/CrV?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d2eb1999-0be6-4bdb-33a6-08de399d6287
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2025 16:42:05.8666 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: J7oV3VUDHo/hEGVVARifpjZzhG+Coe6TxZMvBvd5TE65E3NjbNzErkJ0Grd+pLHvCyCmdWShhoz0X0ypqwXFqw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8480
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765557743; x=1797093743;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0wKgFRMIEhHtv8VIjdmKUysXd+5Mk6XXGQ3YjGkHRj4=;
 b=OBHOixpOwDjO54R6vGhwyvDOj7YTQJloQhEMTomo1aMdtxCcFcNsDK9y
 krb+yTxl1T271AWsvQj12/cLwPFXss0Lt61NRqXOdV97R0V0fBdAT/Jg/
 P30RAw3McOMrKlHMAdVM5y0E4aoSPeAaFymTyDmsebxQ4rp39pIFVUBAL
 4it8bGIa2AIweVEWLY+rFZvfEBuDs7ELbXabcdd955Fz3VyhUleZWpre2
 t8d5jnPdgfmwepZH2PHNmfTQjSVRxQ4vhvQQgE+URqD1nZ2ORyaIx2BGt
 uFBDzutO4BfrSm7kPciHWVFv4LdkHvbKc3yrkoZYylwD7P1vOIVEegiDI
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OBHOixpO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 3/3] idpf: Fix RSS LUT NULL
 ptr issue after soft reset
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Simon Horman
> Sent: Thursday, November 27, 2025 3:45 AM
> To: Joshi, Sreedevi <sreedevi.joshi@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Loktionov,
> Aleksandr <aleksandr.loktionov@intel.com>; Samudrala, Sridhar
> <sridhar.samudrala@intel.com>; Tantilov, Emil S <emil.s.tantilov@intel.co=
m>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 3/3] idpf: Fix RSS LUT N=
ULL ptr
> issue after soft reset
>=20
> On Mon, Nov 24, 2025 at 12:47:50PM -0600, Sreedevi Joshi wrote:
> > During soft reset, the RSS LUT is freed and not restored unless the
> > interface is up. If an ethtool command that accesses the rss lut is
> > attempted immediately after reset, it will result in NULL ptr
> > dereference. Also, there is no need to reset the rss lut if the soft
> > reset does not involve queue count change.
> >
> > After soft reset, set the RSS LUT to default values based on the
> > updated queue count only if the reset was a result of a queue count
> > change and the LUT was not configured by the user. In all other cases,
> > don't touch the LUT.
> >
> > Steps to reproduce:
> >
> > ** Bring the interface down (if up)
> > ifconfig eth1 down
> >
> > ** update the queue count (eg., 27->20) ethtool -L eth1 combined 20
> >
> > ** display the RSS LUT
> > ethtool -x eth1
> >
> > [82375.558338] BUG: kernel NULL pointer dereference, address:
> > 0000000000000000 [82375.558373] #PF: supervisor read access in kernel
> > mode [82375.558391] #PF: error_code(0x0000) - not-present page
> > [82375.558408] PGD 0 P4D 0 [82375.558421] Oops: Oops: 0000 [#1] SMP
> > NOPTI <snip> [82375.558516] RIP: 0010:idpf_get_rxfh+0x108/0x150 [idpf]
> > [82375.558786] Call Trace:
> > [82375.558793]  <TASK>
> > [82375.558804]  rss_prepare.isra.0+0x187/0x2a0 [82375.558827]
> > rss_prepare_data+0x3a/0x50 [82375.558845]
> > ethnl_default_doit+0x13d/0x3e0 [82375.558863]
> > genl_family_rcv_msg_doit+0x11f/0x180
> > [82375.558886]  genl_rcv_msg+0x1ad/0x2b0 [82375.558902]  ?
> > __pfx_ethnl_default_doit+0x10/0x10
> > [82375.558920]  ? __pfx_genl_rcv_msg+0x10/0x10 [82375.558937]
> > netlink_rcv_skb+0x58/0x100 [82375.558957]  genl_rcv+0x2c/0x50
> > [82375.558971]  netlink_unicast+0x289/0x3e0 [82375.558988]
> > netlink_sendmsg+0x215/0x440 [82375.559005]
> __sys_sendto+0x234/0x240
> > [82375.559555]  __x64_sys_sendto+0x28/0x30 [82375.560068]
> > x64_sys_call+0x1909/0x1da0 [82375.560576]  do_syscall_64+0x7a/0xfa0
> > [82375.561076]  ? clear_bhb_loop+0x60/0xb0 [82375.561567]
> > entry_SYSCALL_64_after_hwframe+0x76/0x7e
> > <snip>
> >
> > Fixes: 02cbfba1add5 ("idpf: add ethtool callbacks")
> > Signed-off-by: Sreedevi Joshi <sreedevi.joshi@intel.com>
> > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> > Reviewed-by: Emil Tantilov <emil.s.tantilov@intel.com>
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>

Tested-by: Samuel Salin <Samuel.salin@intel.com>

