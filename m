Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E9EA33A74
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Feb 2025 09:59:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8F33D80E52;
	Thu, 13 Feb 2025 08:59:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7es3-RQyf3dM; Thu, 13 Feb 2025 08:59:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1BFA980E3B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739437175;
	bh=eN/TBhT8p8Q05UVkg1H7KyuCjPw4rsWHodMGGpoqZUo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UuctzU9u55oDltwZak2hktR+MzF+uFrxHfMBSG91Wyt/wpKinhdmgtMIsTM3OI30H
	 eYh3Rlee3bwTMEqBcBmU/NTXi3jsG0tJKT9v7GP4Q1DsEhj2VMVfAXZRMco30X0IkV
	 j1GXAW2djqYJeZmwLTc6m0QoTNjVYpr6cdJr9C4L0XJqROkanvE2D04L1mOB8US/JP
	 ftwO6OHIGOpgY2TzyMx7AgGefrjfQ0YOFI57fsmoE4sY8Y3RgZsZhQAQoazgNchAGk
	 /wtzPDcGYUo0XIEZGzXmIepauPSQsBSlC4n8RIwCSNY6ge8lXM5muhZ5VR/ue1Gw3o
	 E2H4VP/HJ12eA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1BFA980E3B;
	Thu, 13 Feb 2025 08:59:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1C31912D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 08:59:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F2ABB40CD1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 08:59:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1S19Y5zddabm for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Feb 2025 08:59:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9513F40CCE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9513F40CCE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9513F40CCE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 08:59:31 +0000 (UTC)
X-CSE-ConnectionGUID: Z3uIHRsBQRWj5sAiCtREAw==
X-CSE-MsgGUID: hiIm2RPkSbug9TBzwPlcHQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="42964092"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="42964092"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 00:59:31 -0800
X-CSE-ConnectionGUID: 4nNv02rlSLi6C5Dz9QR2Ww==
X-CSE-MsgGUID: jvp/Gg34RYG/ggmMHXgP8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="112850045"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Feb 2025 00:59:31 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 13 Feb 2025 00:59:30 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 13 Feb 2025 00:59:29 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 13 Feb 2025 00:59:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SqTJxE6PBvNbMGoEQGNw9QWx1HdV9FRPdDMArKaDCsEHBxKEYxT5l3gLIGtGEWOQP2kooHF8v4UnjWH8Up7jk3fqtpt/N+p5DzEqzuM4LM9Wj3IW2H5XzismZZGnKheNb9kuHr3cZfmDH59RB2rwkaI3Jv2O7DkZAbRcdXipsIv4Q4CpV+U0N/MECaKCqdGMcNtp4BPTnqBDEt8eoyZHLfbuLgUtD5QA+PbG+IEtjJ7uMTTMclGLPLXDuDeit2VaWAKX2JcE+gEERyKd3yryt9eqlkmABNZGQmRik9iNYT7xeJs/VDOMaFe/XYrZr/tBLZgQshQCdqMs8MZ1RVoSCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eN/TBhT8p8Q05UVkg1H7KyuCjPw4rsWHodMGGpoqZUo=;
 b=J3UG1mVNvogp14z6lkiCVufFq4OKU35TOb8CHFpYE/aizEmgNs8K2Y9HJwNYUhHBcB9tsuJFHpYwDcscEFUUk/aE+ywuuWgfRu8zCoj7yin9ynSaKEFBjiUc3mfkze+0qtiye4dqDI69f5cEGFr8qvY31WAJkEcOsShcVberwwC0UgIPXs/aAg5buLzDFZDyv3gGwZtGH1daS5uhsjpGszZIbL2Twnqi7O9PNEFYdM0XPPQBjhVDzEKRCkDBuSCUHNPUcKyb2FaBwIE04qKps5Q4CcqT8RGuB4rtv3Avtacpu/QdRhWdk8mX6tyiZGpXOgEsVYZIxlE0BPBcwOjVLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by MW5PR11MB5905.namprd11.prod.outlook.com (2603:10b6:303:19f::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.23; Thu, 13 Feb
 2025 08:59:11 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b%4]) with mapi id 15.20.8422.015; Thu, 13 Feb 2025
 08:59:11 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>, Faizal Rahim
 <faizal.abdul.rahim@linux.intel.com>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S
 . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Simon Horman <horms@kernel.org>, Russell King <linux@armlinux.org.uk>, Alexei
 Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Jesper
 Dangaard Brouer <hawk@kernel.org>, "John Fastabend"
 <john.fastabend@gmail.com>, Furong Xu <0x1207@gmail.com>, "Russell King"
 <rmk+kernel@armlinux.org.uk>, Serge Semin <fancer.lancer@gmail.com>, Xiaolei
 Wang <xiaolei.wang@windriver.com>, Suraj Jaiswal <quic_jsuraj@quicinc.com>,
 Kory Maincent <kory.maincent@bootlin.com>, "Gal Pressman" <gal@nvidia.com>,
 Jesper Nilsson <jesper.nilsson@axis.com>, "Andrew Halaney"
 <ahalaney@redhat.com>, Choong Yong Liang <yong.liang.choong@linux.intel.com>, 
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, "Gomes, Vinicius"
 <vinicius.gomes@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "bpf@vger.kernel.org"
 <bpf@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 0/9] igc: Add support for
 Frame Preemption feature in IGC
Thread-Index: AQHbe4nF2+gnF/KRKkCyIZ/pEhrKVLNEPF3XgAC3gIA=
Date: Thu, 13 Feb 2025 08:59:11 +0000
Message-ID: <SJ0PR11MB586651473E7F571ECD54B13BE5FF2@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20250210070207.2615418-1-faizal.abdul.rahim@linux.intel.com>
 <20250210070207.2615418-1-faizal.abdul.rahim@linux.intel.com>
 <20250212220121.ici3qll66pfoov62@skbuf>
In-Reply-To: <20250212220121.ici3qll66pfoov62@skbuf>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|MW5PR11MB5905:EE_
x-ms-office365-filtering-correlation-id: 3cd4f840-15db-4de7-d4aa-08dd4c0caeea
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?fZReJGqTr54Z35s1697oCbzLt5wblj3UTpnJJFPQs8TzAQ3ijEiM1s28WGKo?=
 =?us-ascii?Q?ca8zkTlnBLavwV5x9kkCcUIG7gQo9A9G4MTssummM2v//IuG11iz7Te4IZp/?=
 =?us-ascii?Q?2yYOAR50uKjWLGa1lPvsFK/2DpO1ccv64tAag+FLpw39nvU9qRnms2Bj0Vs/?=
 =?us-ascii?Q?SYfKcQc5gYOCBbjwAliXRRPDPcC7kNwgTwijgTuJXWkdJokoVpCITXtaB8EB?=
 =?us-ascii?Q?4lPsSKEQ0vK3TDnL9O3K8WiaV0EfFXUtaRwPwfhNOYKrTG/KPZBpntgh+NDt?=
 =?us-ascii?Q?iazYaC0d0ypQKo7i1cvVv0pNEuCVc1Z1TJyOPz1j6/4Li653+5bNOdrf7U3c?=
 =?us-ascii?Q?5lwnHe7JfcQ4mFD403FUgG7QOQ/kq5Qv8o9mmSnRi9qxZGtPV457RAFYgZX8?=
 =?us-ascii?Q?kpJ5Hr4q1yEK8UWxwayv0kE83PRX8lqzItO41z9LHtht82dErLHqCkg8OJ+f?=
 =?us-ascii?Q?i0Q1AVmqlwLWo4WBQg7LTPBWrsYiwgWHeIRhED7U9gZt/5fi175FI+AolLnb?=
 =?us-ascii?Q?q+/502ZYXJEeaxX4VTFgvmnE7IHHfBxPOHGc2V3RHeXipEygJzD5OqhqZ9/0?=
 =?us-ascii?Q?8RvYx5dLhSJH3XEiCMYxk68bA8EI0Ff/eppHW5E8mH463lCrIk1hRVxmKq0W?=
 =?us-ascii?Q?Sk6QhkhJ/A17O76UCnYTCodxFlY4w1mHOKz3tkfTddOZaOkF5OLW6PzvxNFW?=
 =?us-ascii?Q?HMsvMUkBhPyK5i3wxs4rtaJ6zssMX8VsRgMNDPSs9g8N1UhP8o932UkIM9Yf?=
 =?us-ascii?Q?ZtGovdwLcuy9oZFWvhnblnZ0KTFlyJEcsMTdgs4T8p8fiSxAmBOEcfmWC5XB?=
 =?us-ascii?Q?98NUa5aNRYOyplcwtuvfELgk9MoNd5AeYC0qjG15lTc4XdrHB4st0vWc2MIk?=
 =?us-ascii?Q?NsOEWfluX1209s80s7KRJkxcnzRRU71/+cN2h5FT19rXFvD2tBIjjWIrKZxF?=
 =?us-ascii?Q?FANA/yjrk60/tV2l2rswXS8OSOmfyh9qguym8rJRumPW83RHxNk2MccLKFYA?=
 =?us-ascii?Q?waz6hMEJJdiuJ4knTwovnNo4VgWAoqHeEIf7pnL0SBwiBfLQ/TK0wxucaTVE?=
 =?us-ascii?Q?Z4kie49cyHCjHceTH8yMm0doYMtlJZT0oyUp5igXhvxCnebFA1KjPThPfb/o?=
 =?us-ascii?Q?ydgaPrp4madLoMbX3zyX+Nbvu7LhrprXVhOoR1kwr70aEbr3qJzuRkudARCf?=
 =?us-ascii?Q?pvT2K4tJ4IW3iRqFqCYDY8w6iNvOeA5T44o6OvrhyZQhw4knJ1pyvdPTrqz3?=
 =?us-ascii?Q?o6rtLbfM4kl7njo8B+q3XMOYE8GyAbaVdRUxxRO52G3NfaHoFBbEXOaprNIA?=
 =?us-ascii?Q?Ej8Y92AC58P4wqQQFYRp54gX4/My/5fIHxVwd2kHJB12pJtYEXp6AfqNE61O?=
 =?us-ascii?Q?IKweQWyQmIpKW+b9iz/1JM+o7/GVcsG4m1co+2X2hjryzz+MEfWN+c13xJZT?=
 =?us-ascii?Q?f9CBSnA0WNqg2q/P18k20Njw+JCtIqTVa6Gtm8FXSwe7ECIIkMIaBQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(38070700018)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?G78b0AI5Wjeg0CzUKSldEwR9l2eXglQ5TslT5V3CJv9burC26TYczja5yeQ8?=
 =?us-ascii?Q?xAWGWLhmwLyJiyURIqzNUnrzsduJum0m4CKLJC7+4QKslBDWUrWFjVlYg+Tj?=
 =?us-ascii?Q?ZwZdThm9YriWp8FuP6fI8FxzgZZBt49EOcqk7QL+VovqrDjTvSb2czD/qLh2?=
 =?us-ascii?Q?UNQ4JeAnfOFzBRtdXRW0UTXNt4lfwUFx/nxX4hyVOah8YLj5nEGm3/FMWNlN?=
 =?us-ascii?Q?I2XBLIo8vHCK82qLTkPE9/sewIIZnEAiPaEwmPesHFOJ62QjZOygYDHVx/yw?=
 =?us-ascii?Q?Z9/ouWXcyg5fvV7PdieyCk+ILN0q7zJWgXHe9jNI93xyszgjABZXHhxcJt5t?=
 =?us-ascii?Q?B+OdZTbg1vWNomCRaQJYgaWvv2GShsl5LafXRbn1u5dceAYadbIgadA2LIGU?=
 =?us-ascii?Q?iESRE3JXq1RKf8jj3ds78weOc0RxDlWT8IggrapXC29SeGvu3iz9cl7KdwL5?=
 =?us-ascii?Q?Msjh5tlqXLbfvBDJp7LEor/QpwPf3SR8LtMA3oNg8P1XlGnt9tysklQgSTxz?=
 =?us-ascii?Q?AEy8s+gIRR5C2WGGSBR+AF+U30pS3vIszRv1n+MmGBjGKuHwN8OMMbNkpjiy?=
 =?us-ascii?Q?YCGwcYlZuQCO+xi0hDgCwWXLKaO1GGMTxGPzV/QaC3fkndHsJSQK8o/mwCgy?=
 =?us-ascii?Q?fjblFObz4eamMZRrAT6Hcqy9HsGm+VW6lK9Rqm8BOPErvQJPTrChgqW9o2D2?=
 =?us-ascii?Q?9Alx8M87C5YbB6eicB1kKuV/7S72H+6TajWjEAIgJLBwAs2O8+dXqy0PIeSs?=
 =?us-ascii?Q?4lZ6xTIs9OUtdpdDOvYrBydUWeupIouPGVdMo3cUHacXMFwg7S1iSF2V5CUA?=
 =?us-ascii?Q?v5NojPM4TnPhFz+fIPx/y69ASj68CvjfIO/LqgKPQJRG/Abl/dxYMMwnWLil?=
 =?us-ascii?Q?rB/mUDUAiU7cf6P4PaNAfQR77kNuprLGGIhA09Idwcw55Fvbyq07ow3yrYiz?=
 =?us-ascii?Q?vSoCZeC9EKyGlCDREV9PjAPdQ7hVQqZG4ESlw0hPM4l/yQs37HX1TdhJOKOA?=
 =?us-ascii?Q?7jR1l+oy65D+6TO3lMjgSchFDr7WEzlj5dJwutNxqUnwWx+oHaaTfeeREGEy?=
 =?us-ascii?Q?NLNJd4A+0eLrNlJ3f5r/wjDCgoAdFmJebfojwd81JYsNAfbd1zpnp8kRTX9N?=
 =?us-ascii?Q?1smTdsLZ/smJyZYF/VASyKnHVW1BRMnqtV8a7HFBbsfxufubM7gp0giSAqRG?=
 =?us-ascii?Q?jxePuVlJ9/bzMiiP908YYpjU1fzITBOvn9Kp542V5uSnUuwCTUmRaw9q4z/j?=
 =?us-ascii?Q?3RsgaOiZ7ZBvqAvjWvNd5ljJ73lxkrRTmorzVbmy+Qey+kv1aga7B5aNrIPX?=
 =?us-ascii?Q?pm55fdXlVJNkLyxx1fRnDTCOIe/ZSufJGHenxvSQGgkuW03/GYxWHGVArZyx?=
 =?us-ascii?Q?Sre3QjhA4OZJSKNLU7AWw5abIk/lADEkRWKIOEZs/X+OJvUnz6gaOmyZybcb?=
 =?us-ascii?Q?gpk6ntKvMUpAEs0xC821TUJHHEPcoY/h0RTiEhFc3ihn0X4kf7O7NtuBsHBe?=
 =?us-ascii?Q?l9rEPZQL+uT6sKMCJTyxIMO4QS2AI9EIogXWmK4zPghCMdf5DvovES6QFs3g?=
 =?us-ascii?Q?qAtuy/HMjvA5BYz6YJIeVFTqP374lvE6uTqPs1MBxzqJ/MFnSmv32A667ocF?=
 =?us-ascii?Q?WQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3cd4f840-15db-4de7-d4aa-08dd4c0caeea
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2025 08:59:11.4192 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: F3BBzM8+cCv2LXPn8pl9ijXMeH/zsBnNExLMzXGqp+J+sGxDeOZFq9SlD9E9adg+BYjyOqERCHBU41WDpdESyVwx5ANzm//aa0KPdz5mG30=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5905
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739437172; x=1770973172;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=epkrVTXEcdvy1RfuYYiv++2F2Oa0uTm5whk6v31IkGs=;
 b=NVoPqNshQuq3JHVCVIKB/uGbRxNCs/YUp5LAqVUuFK/Y/qCKPJ0b75fk
 PfWPBVFmpV3J5u//n4Gtz6Gf8DWdfQP1nZZLAg1Rv0nEOgymg9Lhzwvsz
 pI0mZJs5nfVlRNLfqxk66G4CauWru/BQbMPkvUmOo/TupwTgxA57AxJ4p
 tY73n1Mfic3sRs+bpid4A3/5qOM+Fjpcay1ux4RC350WJ33vjnt16NJUU
 5qZqYHlkw/KSBqOjPHE3tCDKF9k4KamUKU5eu2QOQ12Kj3l6TveTQQ2gC
 DRTKPygEoLn6iu/sWiT0uuOIaH9SGjec2bsd3VuwDDum2bUUY/SbWDvyT
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NVoPqNsh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/9] igc: Add support for
 Frame Preemption feature in IGC
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
> Vladimir Oltean
> Sent: Wednesday, February 12, 2025 11:01 PM
> To: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> David S . Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Maxime Coquelin <mcoquelin.stm32@gmail.com>;
> Alexandre Torgue <alexandre.torgue@foss.st.com>; Simon Horman
> <horms@kernel.org>; Russell King <linux@armlinux.org.uk>; Alexei
> Starovoitov <ast@kernel.org>; Daniel Borkmann <daniel@iogearbox.net>;
> Jesper Dangaard Brouer <hawk@kernel.org>; John Fastabend
> <john.fastabend@gmail.com>; Furong Xu <0x1207@gmail.com>; Russell King
> <rmk+kernel@armlinux.org.uk>; Serge Semin <fancer.lancer@gmail.com>;
> Xiaolei Wang <xiaolei.wang@windriver.com>; Suraj Jaiswal
> <quic_jsuraj@quicinc.com>; Kory Maincent <kory.maincent@bootlin.com>;
> Gal Pressman <gal@nvidia.com>; Jesper Nilsson <jesper.nilsson@axis.com>;
> Andrew Halaney <ahalaney@redhat.com>; Choong Yong Liang
> <yong.liang.choong@linux.intel.com>; Kunihiko Hayashi
> <hayashi.kunihiko@socionext.com>; Gomes, Vinicius
> <vinicius.gomes@intel.com>; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org; linux-stm32@st-md-
> mailman.stormreply.com; linux-arm-kernel@lists.infradead.org;
> bpf@vger.kernel.org
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/9] igc: Add support f=
or
> Frame Preemption feature in IGC

Please start commit title from slam letters:=20
Igc: add ...

> On Mon, Feb 10, 2025 at 02:01:58AM -0500, Faizal Rahim wrote:
> > Introduces support for the FPE feature in the IGC driver.
> >
> > The patches aligns with the upstream FPE API:
> >
> https://patchwork.kernel.org/project/netdevbpf/cover/20230220122343.1
> 1
> > 56614-1-vladimir.oltean@nxp.com/
> >
> https://patchwork.kernel.org/project/netdevbpf/cover/20230119122705.7
> 3
> > 054-1-vladimir.oltean@nxp.com/
> >
> > It builds upon earlier work:
> >
> https://patchwork.kernel.org/project/netdevbpf/cover/20220520011538.1
> 0
> > 98888-1-vinicius.gomes@intel.com/
> >
> > The patch series adds the following functionalities to the IGC driver:
> > a) Configure FPE using `ethtool --set-mm`.
> > b) Display FPE settings via `ethtool --show-mm`.
> > c) View FPE statistics using `ethtool --include-statistics --show-mm'.
> > e) Enable preemptible/express queue with `fp`:
> >    tc qdisc add ... root taprio \
> >    fp E E P P
>=20
> Any reason why you are only enabling the preemptible traffic classes with
> taprio, and not with mqprio as well? I see there will have to be some wor=
k
> harmonizing igc's existing understanding of ring priorities with what Kur=
t did in
> 9f3297511dae ("igc: Add MQPRIO offload support"), and I was kind of
> expecting to see a proposal for that as part of this.
