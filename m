Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B57DC9F696F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Dec 2024 16:08:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E08418132B;
	Wed, 18 Dec 2024 15:08:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6bfde6iV9zP0; Wed, 18 Dec 2024 15:08:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B425C841BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734534498;
	bh=jq8kkhGsGEiDGX31sh2rznwy4+JKyqgXamI2ZzsTRKM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yapI3IZpI3bO4ZZcPrpGqQqvjHpEH9lAn3RFDRDHHEarPE7aIQQC/PUsqCkJ8iDqH
	 spEjO1W3r2S/Li14JO/sOBpubC/mDIGTjcbuBJvGnXpDRoom+5tRX+7SKgF/O17Z0D
	 g3/UNbMJxOt4i804sE2GM3B1I4E3fhb00qI1/p7fpZ4ery2rNAu4tnOiQAbmZj1ji/
	 qf5VY1cwSm/43qLFTL1eLLkbyae6V+PSOux6jiYyayO8ctEu/pK7FS7snKuoWsndDT
	 EDAg8jvV8nz/dzGqcrAPjpu69WrEXR2QFH+5C+1mg/e4jd9+TA0juWgBMhh/Hiwb/E
	 LIs5G1cJjPErA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B425C841BF;
	Wed, 18 Dec 2024 15:08:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id C23DDC0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 15:08:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A134640624
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 15:08:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id POjpVfwQ3EJa for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Dec 2024 15:08:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 538EB4054C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 538EB4054C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 538EB4054C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 15:08:15 +0000 (UTC)
X-CSE-ConnectionGUID: vCB/IeJrSuOa22HP9AWISw==
X-CSE-MsgGUID: 3a2029ziSsu8Wb2R9XZgDA==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="57490129"
X-IronPort-AV: E=Sophos;i="6.12,244,1728975600"; d="scan'208";a="57490129"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 07:08:06 -0800
X-CSE-ConnectionGUID: r6HI6m2qRyuJXCTecx8FTg==
X-CSE-MsgGUID: 4UTEehU0T2CQV+smT0E2pA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,244,1728975600"; d="scan'208";a="128682322"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Dec 2024 07:08:06 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 18 Dec 2024 07:08:04 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 18 Dec 2024 07:08:04 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 18 Dec 2024 07:08:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jUjY8qUJLyq/zggHNditCm6vipLS55YOdq8CcrSDgc3SqBpp5jfRxuzr21Fd6+o8kKLnOE8DAIiRt/shLRHWHIakN9EYT6ENj/z5KbCONsnm77M13JsV9IGTRdIV0MmLu+2rsobpsw4BYhYU9y4fSZ9NlXIB/Zcg3KJbkfe7JeDAmiG82zRwVTc4ndmAcO8LFaovtoiOP8wKXbesgoj0ess8g5uX7fSdkGDeuYOHc/QGJQOnIbLELQ+Pe9hacgOT0y8+0/vfPxfaEF+1QAt0Hwo0T1OAch8KLOvcHKEx6MUlpcx9RLHkt8/BuodGTfnZ+TWMBg+Z0IxQo8akRJyvzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jq8kkhGsGEiDGX31sh2rznwy4+JKyqgXamI2ZzsTRKM=;
 b=PMiE/adUkUni/6YwIiQTV6qLc63wArZSIXtgGq97BuloOavideWHB95IdEgEeTt6jQla7CVuTzxQi0ExC3kgqNhNO6gvSqAR3m7LawP9kRxfTWSyz6sV9L2kNRJ1Llv2X5t8CnoR63x0pst1JFZb5PLWhflM9BUmwjYy38fv0QBVGPKzFb8RidhN6JUWNOCdbGm5DZyvbd/XSorJsPabcuw0lWwBaatQd2nAOWeNhQ7fPT+Q0fq1I2zqS+9GMDd+zIpTccIetCdjfaNNfL0V8W27HONFPN4ozAODTI/YxgnnZvb40dnrIgKdXmnv/MFcQLBWG9++cwzRxkyUwxyAKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5885.namprd11.prod.outlook.com (2603:10b6:510:134::22)
 by CO1PR11MB4978.namprd11.prod.outlook.com (2603:10b6:303:91::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.14; Wed, 18 Dec
 2024 15:08:02 +0000
Received: from PH7PR11MB5885.namprd11.prod.outlook.com
 ([fe80::b1f3:809e:5b8a:c46e]) by PH7PR11MB5885.namprd11.prod.outlook.com
 ([fe80::b1f3:809e:5b8a:c46e%6]) with mapi id 15.20.8251.015; Wed, 18 Dec 2024
 15:08:02 +0000
From: "Olech, Milena" <milena.olech@intel.com>
To: Simon Horman <horms@kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "Linga, Pavan Kumar"
 <pavan.kumar.linga@intel.com>
Thread-Topic: [PATCH v2 iwl-next 07/10] idpf: add Tx timestamp capabilities
 negotiation
Thread-Index: AQHbP/oCOLXQoexp/UG82XBQ8RX6U7LUpwYAgBeVQsA=
Date: Wed, 18 Dec 2024 15:08:02 +0000
Message-ID: <PH7PR11MB588506F083523298ADF85EF48E052@PH7PR11MB5885.namprd11.prod.outlook.com>
References: <20241126035849.6441-1-milena.olech@intel.com>
 <20241126035849.6441-8-milena.olech@intel.com>
 <20241203145610.GE9361@kernel.org>
In-Reply-To: <20241203145610.GE9361@kernel.org>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5885:EE_|CO1PR11MB4978:EE_
x-ms-office365-filtering-correlation-id: 882f4ae2-5e68-4db6-7f2c-08dd1f75c45b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?CkBMl5iwEeIShIZ62hM2IohVDVrUqgONN46/vWiiCLBCd3J95XcZJXZR2yem?=
 =?us-ascii?Q?q5f02chXQNF0nYWVTUcgsmY6WEQ0wZ6HhIM579UKHLU4oHggpXd2eKjUtxlU?=
 =?us-ascii?Q?W9mP/ucoLNl/QY+UH9ctG3dhsrgkaB1YRC8lWLjRC/tJ4fijQtaLD1RaNAbk?=
 =?us-ascii?Q?lxdeouNm2091ElfLrZ8H6Z3yRMs+bJd6C25jNbMhZtaklGkZSwOjARF7Rk8E?=
 =?us-ascii?Q?ZQ6w5imB6kDnqRN51iP+6KKFBG/nojJRIPDB9JKLH/8laH034D3+w2S7Xnd8?=
 =?us-ascii?Q?f/K/Hrb8dctkDhcmWNGPKQjsW7dVyo0WXOZaBKRnrrElHQ2OFkh0CHR1tzg0?=
 =?us-ascii?Q?+OZ9UsU/A+dsrRm/OKLgvcJwAtlk5H9ImueXgx8gINKcYyOHlKyWY7ADZAUk?=
 =?us-ascii?Q?UxHw0IhNjaiG6rbWdpzYZB8SRdDu1LLh+ZoBzHMiATViGCnbSNupfbDjnPOu?=
 =?us-ascii?Q?xvPmFOclkTutrc3W1OjUX4iDMeV4cCSXtLl+CpgtiJ1hWnFVw6sg10LnrbMp?=
 =?us-ascii?Q?Ae2tYDKhwQZ/Gk39lUztt3D2L744xkBHqAbs9jVWLFTdaU7EWLrAPa6Fxctj?=
 =?us-ascii?Q?1+Dyra+xzJdHJeSOI8cSRfkWBErjfudRdAyLheWFnixfAdN4EYiuPjM356Ud?=
 =?us-ascii?Q?BvWc9lUI8Tb3H1AmU8LPlCUxbllUINv3kpLikYqcsy1FKMN2eqwxUAhuDESS?=
 =?us-ascii?Q?+GsEpAgimUQpZzU+j7UyQ4nfeSCXDmVctL57x/WAauODSRwriOovDU08UEaB?=
 =?us-ascii?Q?E6Oh21Co0ocI0YoaF2p346ZOE4ID4YObPsMSmWdHmr3y0KUvdzBjtbWDztjm?=
 =?us-ascii?Q?LfKwRugcMwBwQMHn6JvNz+b8kNd6l5+c3GPyuTq4IMmzT4vdBlSp2bT2B8lO?=
 =?us-ascii?Q?dKZiZ3evqLNEZ+WADAsSs72vSzT7BumVXSmO08o0Uoy8g84n8loq5DMynfYa?=
 =?us-ascii?Q?KAS7XDmaCoZwJKBBoO1hZz8EbEhZgcDoxGbh9Ufju0mTUijY7MxByBQ728O0?=
 =?us-ascii?Q?zblwF8Qn6AWIlOAaRuGdJ2LGeJTPjt6r/PGpvZBKmMgnCO87FBu6fbi/VFvd?=
 =?us-ascii?Q?19X+bs7ve73whMf1gRqaIVQCPPf8KT7Ce0xnEfzg0D0RGrt0sk8Z66xbOzF4?=
 =?us-ascii?Q?ddP6GB5AJ4yeZpy7wvy+10EbEI3kU4NaD68k9roqBqxVlB4YiHAxpm77XWWT?=
 =?us-ascii?Q?uFIjx/FTiEWVYg1i9WCO8WimsDxBuZ2H8iUmiiYxuWuUdVkXvm2kNTFlDGe2?=
 =?us-ascii?Q?/N/PP8wpkT8oGUd2O9eaU/GzI6gA7nerLwYCxNcAfqMWsxON7RZK/8uFYOsu?=
 =?us-ascii?Q?LhmPhenz6zMfaDsIthZZnFZCsXrcnwWf+vTivOVDVqJxsk68KWb4jFEVpZOm?=
 =?us-ascii?Q?74ODIk6C/u0HBVM4brrBEzwwb4Ka3qe4NhWyR1VYYJM2RaLi0UG3WUPD2ttp?=
 =?us-ascii?Q?b9rSqMbQTbEWEtDgLgIekzOFZMtWBRFs?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5885.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?iD7vyF/kUQQCyZnGxdnoHwA9CBGkuqXRcKcEj7SBA8e/wtAhJFOfkx/4G07T?=
 =?us-ascii?Q?/ijBDh9JKLtBlNiPUi0FeSPk4ROTQvoIqE/jdTQGkDEcdbQxtiL+49m/pPEB?=
 =?us-ascii?Q?3U6IBlbLvjSQDxXycsvbGrS51Uv32QqQMW477jl/98oK9UN2wD+7/KSjpwsG?=
 =?us-ascii?Q?qHlzwB2kkwhih2+yB7+RPK7dhIL+nYEB1fiNcjC9rMkoJJbg227RbTOsD769?=
 =?us-ascii?Q?J5DNbfx3McGLwnJVQCxSqYGbzHHXwdoQSgcBewWHc9KDZ6xTZ4PLhNWaAlvw?=
 =?us-ascii?Q?nlCqUkQqrrz0Oyt8L9WNrsmO8HTn4Lx5oaJeQf3kES23+VHPe5uCMzd0Jls1?=
 =?us-ascii?Q?fMYI66BDnlrbYe7J865MzQWeC+hCxa9yEz+uj5w5oxfcWaCh9JzAGm5fF8Vz?=
 =?us-ascii?Q?mphnqmxHXGOprVJpCXXnadhXOVictna/Sql+j3tVlAEwJlCiI/Ip5+ZoQeQl?=
 =?us-ascii?Q?dJ+8yOO9B8IuZ83pSAb1+T4Tgce3HoH6HNMHMoSIybLIA/l6B6Y+HcWCZr50?=
 =?us-ascii?Q?OsQwo0NmqW2UI/iz0xd7a464pw01dthoeawmcFLlMVxpDfSPPxqUqJUXodKu?=
 =?us-ascii?Q?GXcCDOhRdxYuQ5L3jXI/f2SzLgUUG4vmHoMx/qB9uTEJPgnfWVS4WpNMsdgo?=
 =?us-ascii?Q?sxmNUjj5ihMu08pYj4BpE1iybmwP/lYShfI+8vj8HCEj5/JRd8NLofdoxVyE?=
 =?us-ascii?Q?QPPAw1E7Ep9FRoH0NW/pB+7rcf1BIL6St1+f4xLZSgK0/g4s0zGe32k7ZJqu?=
 =?us-ascii?Q?oPl8jsX4tYNRCKsXvT6V4jzZrVv3MOVyq0Yuh/BDIfdi4tbOdOLLYabXG4mS?=
 =?us-ascii?Q?OhHJX+dx19uKg+/tfK2PwGaVGJP5SokyCLtzwJZ9qiVMecTwn8C6ProRlIO4?=
 =?us-ascii?Q?/yRS/RI+33rfFRfHDnRePLXEEoozMJ2vEoyEiYUdehGmNb8CjMcsgE3cvUSR?=
 =?us-ascii?Q?kyJNkeuKF6hGS8/R+N+2RE7ynGcwR0GdBB7ISnQak5Jv5+EogSSLLzYaaj8u?=
 =?us-ascii?Q?zN2KhVrHN7c4HCHE8QzV0BtjI5wbyOKOJ/J424OJshlRWyZbB/WipI3q9o72?=
 =?us-ascii?Q?962QLPMnqbekMHreQzv8WhTe5B94CuksQ/FHkiNF/13bjV9CF8AzRqIU/Mhe?=
 =?us-ascii?Q?PQhpD7GpY082an0moDiZxsV7exOasFl0uO7QvjW93nek6c8TMJAcY+ipjLhZ?=
 =?us-ascii?Q?zCYZWiEC/pmoScf9LV0szofrsfjQEt81xKmmwUw3GytHlzUa/UyuAf1W9Uwm?=
 =?us-ascii?Q?wsZjbJQ7mDOUqaIo6f7amV5mnZnuD+keL3hhQvkNXNoUbR5lsBdfcPGRNiYl?=
 =?us-ascii?Q?KedNz+zm9Y9T8nn7rXjF5LfNzW3NV7oW/+HX//aQ2oOx6ZPwnbSbjXOuPe47?=
 =?us-ascii?Q?IO07QBe7MuMWi1ZQFeBJldgtpY53KfypD8Vk/PWty6uT8pluF4SQNFu25lti?=
 =?us-ascii?Q?FkQYIRCpBlUJ3KXDeZQydp0HfjAFwrH46OZThJAKicmXt17hofQ4Ns+rEJ0d?=
 =?us-ascii?Q?o5AY7SyC3H/LFd7UzlZrPxgSU4SpXH4cnzKBqxcpJVxqOt/9PeNIINv5h1A4?=
 =?us-ascii?Q?7dUcVTx+b0fTLaaj1zPAbCUtuFUvK3phQVyW0DsK?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5885.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 882f4ae2-5e68-4db6-7f2c-08dd1f75c45b
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2024 15:08:02.2348 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LRPhlfLTKCCyMPw3Xq5xm1Hio4k2DJh/z06L67xZqsjYFeLT7n+9t0uf7iFe0khF2EXznF77EZdwO5tgj70WLA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4978
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734534496; x=1766070496;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6Nf7OQYqvBE59DOmBeMvAyNoPY5Zgl8YNOCHhT4PudU=;
 b=bYXG2tgCjn82N7qBRFW5U0JD6Tk135/U6KyWWODm4ER+0zFOah+MueAQ
 0kzbAiU/VX6Nt9UmAO51oezMIqICn++YcYz4K2ZO2SRzrZFtjpSzX9Anp
 izO5EIJfm8CC9/9tKlveDSWAlEDhv46olfbHpMwpVwxaVu7onnVa4VIEv
 a3qLo4RnBnjyL2dO/aSyhEkyog0MbE4ETQN+PR8GAZpDbOMMNmlqxFlXD
 +CUTeaTNnrd72lYW0eRc9G+V/Jeq9lJ5fyiZ4yjU/mPNpaMCvpBSzzJXp
 jyEPOdlsu5OUkon4t6+tZcxrxIJ0e7i/DHDyg15XAfiP+2dkE9sVQejBt
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bYXG2tgC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 07/10] idpf: add Tx
 timestamp capabilities negotiation
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

On 12/03/2024 3:56PM Simon Horman wrote:

>> Tx timestamp capabilities are negotiated for the uplink Vport.
>> Driver receives information about the number of available Tx timestamp
>> latches, the size of Tx timestamp value and the set of indexes used
>> for Tx timestamping.
>>=20
>> Add function to get the Tx timestamp capabilities and parse the uplink
>> vport flag.
>>=20
>> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
>> Co-developed-by: Emil Tantilov <emil.s.tantilov@intel.com>
>> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
>> Co-developed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
>> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
>> Signed-off-by: Milena Olech <milena.olech@intel.com>
>> ---
>> v1 -> v2: change the idpf_for_each_vport macro
>
>Hi Milena,
>
>Some minor nits from my side.
>
>> diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.h b/drivers/net/et=
hernet/intel/idpf/idpf_ptp.h
>> index e7ccdcbdbd47..057d1c546417 100644
>> --- a/drivers/net/ethernet/intel/idpf/idpf_ptp.h
>> +++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.h
>> @@ -83,6 +83,70 @@ struct idpf_ptp_secondary_mbx {
>>  	bool valid:1;
>>  };
>> =20
>> +/**
>> + * enum idpf_ptp_tx_tstamp_state - Tx timestamp states
>> + * @IDPF_PTP_FREE: Tx timestamp index free to use
>> + * @IDPF_PTP_REQUEST: Tx timestamp index set to the Tx descriptor
>> + * @IDPF_PTP_READ_VALUE: Tx timestamp value ready to be read
>> + */
>> +enum idpf_ptp_tx_tstamp_state {
>> +	IDPF_PTP_FREE,
>> +	IDPF_PTP_REQUEST,
>> +	IDPF_PTP_READ_VALUE,
>> +};
>> +
>> +/**
>> + * struct idpf_ptp_tx_tstamp_status - Parameters to track Tx timestamp
>> + * @skb: the pointer to the SKB that received the completion tag
>> + * @state: the state of the Tx timestamp
>> + */
>> +struct idpf_ptp_tx_tstamp_status {
>> +	struct sk_buff *skb;
>> +	enum idpf_ptp_tx_tstamp_state state;
>> +};
>> +
>> +/**
>> + * struct idpf_ptp_tx_tstamp - Parameters for Tx timestamping
>> + * @list_member: the list member strutcure
>
>nit: structure
>
>     Flagged by checkpatch.pl --codespell
>
>> + * @tx_latch_reg_offset_l: Tx tstamp latch low register offset
>> + * @tx_latch_reg_offset_h: Tx tstamp latch high register offset
>> + * @skb: the pointer to the SKB for this timestamp request
>> + * @tstamp: the Tx tstamp value
>> + * @idx: the index of the Tx tstamp
>> + */
>> +struct idpf_ptp_tx_tstamp {
>> +	struct list_head list_member;
>> +	u32 tx_latch_reg_offset_l;
>> +	u32 tx_latch_reg_offset_h;
>> +	struct sk_buff *skb;
>> +	u64 tstamp;
>> +	u32 idx;
>> +};
>
>...
>
>> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/n=
et/ethernet/intel/idpf/idpf_virtchnl.c
>
>...
>
>> @@ -3154,6 +3157,14 @@ void idpf_vport_init(struct idpf_vport *vport, st=
ruct idpf_vport_max_q *max_q)
>>  	idpf_vport_alloc_vec_indexes(vport);
>> =20
>>  	vport->crc_enable =3D adapter->crc_enable;
>> +
>> +	if (!(vport_msg->vport_flags &
>> +	      le16_to_cpu(VIRTCHNL2_VPORT_UPLINK_PORT)))
>
>I think this should be cpu_to_le16.
>
>Flagged by Sparse.

Definitely! Thanks

>
>> +		return;
>> +
>> +	err =3D idpf_ptp_get_vport_tstamps_caps(vport);
>> +	if (err)
>> +		pci_dbg(vport->adapter->pdev, "Tx timestamping not supported\n");
>>  }
>> =20
>>  /**
>
>...
>
>> diff --git a/drivers/net/ethernet/intel/idpf/virtchnl2.h b/drivers/net/e=
thernet/intel/idpf/virtchnl2.h
>> index 44a5ee84ed60..fdeebc621bdb 100644
>> --- a/drivers/net/ethernet/intel/idpf/virtchnl2.h
>> +++ b/drivers/net/ethernet/intel/idpf/virtchnl2.h
>> @@ -569,6 +569,14 @@ struct virtchnl2_queue_reg_chunks {
>>  };
>>  VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_queue_reg_chunks);
>> =20
>> +/**
>> + * enum virtchnl2_vport_flags - Vport flags that indicate vport capabil=
ities.
>> + * @VIRTCHNL2_VPORT_UPLINK_PORT: Representatives of underlying physical=
 ports
>> + */
>> +enum virtchnl2_vport_flags {
>> +	VIRTCHNL2_VPORT_UPLINK_PORT	=3D BIT(0),
>> +};
>> +
>>  /**
>>   * struct virtchnl2_create_vport - Create vport config info.
>>   * @vport_type: See enum virtchnl2_vport_type.
>> @@ -620,7 +628,7 @@ struct virtchnl2_create_vport {
>>  	__le16 max_mtu;
>>  	__le32 vport_id;
>>  	u8 default_mac_addr[ETH_ALEN];
>> -	__le16 pad;
>> +	__le16 vport_flags;
>
>The kernel doc for this structure, which is immediately above the
>structure, should also be updated.

Correct, will fix in v3.

>
>Flagged by ./scripts/kernel-doc -none
>
>>  	__le64 rx_desc_ids;
>>  	__le64 tx_desc_ids;
>>  	u8 pad1[72];
>> --=20
>> 2.31.1
>>

Thanks,
Milena
