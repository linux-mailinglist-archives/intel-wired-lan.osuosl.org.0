Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D7D9C62B7B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Nov 2025 08:30:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2EEE680D62;
	Mon, 17 Nov 2025 07:29:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HRq62mbO6V5g; Mon, 17 Nov 2025 07:29:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8F3EF80DE3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763364598;
	bh=HEAHqPIBMWFq57pV4Vu9zLo28iO/nB7xnBOZmSvLKM8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=h7bsjElyejrAI2fLFVKQjtzhDubD6QKpqYAxMGKM5r256IQ3PXnnO/dop1QoNCpRv
	 t41t+EbKbvGUpDG3DRkbLT8J/yCDaaiSYSnWZLZbooh2+4B5WIpPcGaxIAIjtCIoje
	 jR3wyqJor5cVs82oYbe0n/i/qW0zL1LUhtvXbayujvKJbraAEAZhgmIB1B7rdNlrGe
	 r/CqkxIF8quVGJyq6xGoYzBGC3dGQM9VDnnMEnOd9HI1p4c0mF7ny9mPYgu1Q16jo7
	 JfzH0CapfR1SfoI/u9TW9obzUijf+UgLndvU75YdESRphcfrAzNkAx2PpkKcBj3izs
	 lT6zVuJ140Zvg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8F3EF80DE3;
	Mon, 17 Nov 2025 07:29:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0640E1A9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 07:29:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E0E924024E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 07:29:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JHsk7HtsgejJ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Nov 2025 07:29:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C1BD8401F3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C1BD8401F3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C1BD8401F3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 07:29:55 +0000 (UTC)
X-CSE-ConnectionGUID: 3J/iK+0JTx2l4PWqQHVkAQ==
X-CSE-MsgGUID: UagOzuyVTPS692flhy2AZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="65238314"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="65238314"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2025 23:29:55 -0800
X-CSE-ConnectionGUID: 9XPx/0WTRh2yQEI833TdUQ==
X-CSE-MsgGUID: sV2nODnbRku6Ntr5mcaiLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="194482925"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2025 23:29:55 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Sun, 16 Nov 2025 23:29:54 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Sun, 16 Nov 2025 23:29:54 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.52) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Sun, 16 Nov 2025 23:29:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HG2vofZpGTjAz/D7leMUg1DsAjnBeqgdUAuh3dPxc3TvcRj584l1NLfvNEOvSJFV03GEt5fiShQOjy0Ysz7DfpvW6W9qdxB44HyJcdtFZELi6YSsB4T3leGJjBMThZC3Zfm3iyAkfTjF3fWx+AqHT6EK1Kni1d5OYL17nM/n6nkTt6EZaCzFGQ0/Kp1dc7/+MzBx9+1wN0XV/q91OEz4Dr1WNGQsosGI1dvgVSASedLhMeF9pBh5acJk9ykhDqHhPyLHvwATf1rQrMoPXAyUuEfLzfV63QEzmcwTqU1lfIV0zOgyii4OOL48wHwhHz1XFMPX+s0oU+WfUh/ofmjS8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HEAHqPIBMWFq57pV4Vu9zLo28iO/nB7xnBOZmSvLKM8=;
 b=OL9Mh0okK4ioXCaajcp1+44tOGQbwMDiHELP7RZ4BTwx1+ElQMHJ+8b9dlwOCHJJRdtOtzmvkrt0FLJdDg5hQaSk9jG6ENQUfAKWGWCDIoqCNpa9RoLV4BUCjlTDakGw+j+tjPFyyuRXFQaf9ZYEtimIVcI0vz3aOphCCzvaG1EQDd3Cn/wvPVs1mAUpQiZuuSmXeUIZpHrSuuN/TGgFbzTyzrkQAh8gmGX6aplVKSn+e90tmRTbnr73peFAmjSup0nDAhPZk41kheBpWh1uYs3tdUTIQ1o8KMH4XqqndO/qorVnZIXe//2JKArN/mATuJUxneIeNq4xHQxoEt9jrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SN7PR11MB8066.namprd11.prod.outlook.com (2603:10b6:806:2df::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.15; Mon, 17 Nov
 2025 07:29:52 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9320.021; Mon, 17 Nov 2025
 07:29:52 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Tantilov, Emil S" <emil.s.tantilov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "decot@google.com" <decot@google.com>, "willemb@google.com"
 <willemb@google.com>, "Hay, Joshua A" <joshua.a.hay@intel.com>, "Chittim,
 Madhu" <madhu.chittim@intel.com>, "horms@kernel.org" <horms@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] idpf: fix possible
 vport_config NULL pointer deref in remove
Thread-Index: AQHcPFU56yLuuRBXd0q6w3ihdjPkhLT2rymw
Date: Mon, 17 Nov 2025 07:29:51 +0000
Message-ID: <IA3PR11MB8986DE491E4FFE7953A6C81CE5C9A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251013150824.28705-1-emil.s.tantilov@intel.com>
In-Reply-To: <20251013150824.28705-1-emil.s.tantilov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SN7PR11MB8066:EE_
x-ms-office365-filtering-correlation-id: 3eb054e1-3a88-4bb0-bf1b-08de25ab18e3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?AVhVsGAhCLxzo5ISvmSFfxlSocpuYP+i8L7J9XgiELRE3BDv5BwzoRfMolKG?=
 =?us-ascii?Q?EIyzKJ7Hl/3fvikyl/tsUXO8YP8pbneQOMYJhKY6qS+8hlIsqkrEDmn3o9Cw?=
 =?us-ascii?Q?XPj66ABYRjoEZlp8W0dgJwa5Z/P77l8NPqCAuIcprmKb+FR9PrUu9TqgLJ+/?=
 =?us-ascii?Q?pTv78tv/QmHHX7btVnGQr0tJVG2U4haFAqIszrr3y03pqDW0Qxcqjoo2QO8d?=
 =?us-ascii?Q?cZBcv4r7umWY0Udp2V9BwbQCL+Rl/LrF4/mx8AO3FP5Jes0FX5rBlD7BB0Ui?=
 =?us-ascii?Q?/36QMjXfBlO1F0kb606chnxtitqCnNUnQ/ZFkAVbbHeYIAFvKsgcjCjuPW79?=
 =?us-ascii?Q?JTpCX+nRF7L++ca5UH57GOYKkHOUUyJnckz6kwVQHgfkOFEFzwJcKXpKRpL1?=
 =?us-ascii?Q?y6pKoZiBNz2/NR3dDzLxKdjXTY78mWd1R7v5F0YrAlLRcwiUWkuXYc3PlNfF?=
 =?us-ascii?Q?ilAdv2lA0aEacaufK8SXEg2LPKiysOgrOT+S2qVboCOW7eNBKSqua7EWI25w?=
 =?us-ascii?Q?vs1R7hWbua6V03KND8Aj7i3CSZKMd4PgGdNBqYDQ76WPRj5M0CbavG/N5v6K?=
 =?us-ascii?Q?Mos9OqZh8t82GYETfeVBcoFM1ZhzrabKe1DS814aR71CL6luFdtz/wEqZL/+?=
 =?us-ascii?Q?YN4JpWHBpURCGUfbO7bxofmxcBbYaQLWDfcfijeoFv2TQfLw7MqH4BhHGU8R?=
 =?us-ascii?Q?4UM/45cd3j8/o7LwnN3kQinHe2Yx18cLtmq2ShDubfOBJfpfChL3UEqjYAXU?=
 =?us-ascii?Q?G0CQf1xjIypFr7sXic14MXNSrMe08b5Kkg+l0A+53Y1N4/jfCwknORlpUPIQ?=
 =?us-ascii?Q?hAUgmqEHhf9MQk0foTCSpZ125anEsCcreHVaOHa20UaHOc/cOD6m+JGxVJkC?=
 =?us-ascii?Q?M3rhG/VYRfwphVBrEhOANnsDx7cyi8PJuMsjo2siSTTUM0fptPe38v0vGYDn?=
 =?us-ascii?Q?87cOVvGwcZN5HP5XtS8BIEKHHPEy9vuEOH2dVEZojxrw8jfFF0Kqj/Mh2Gqz?=
 =?us-ascii?Q?DOAl9Oxp4oh2FmuGdtGXM7dylL3Dr92iyJicEHuig9e3PizYGE7sCqvkpSGP?=
 =?us-ascii?Q?v8gFXFrU4eCGh/aGdqkgegGwzDYamoz0FKdhXrDyt82Ci8u6euA3oHNJnIHP?=
 =?us-ascii?Q?slfmPt8gPWMo4CCVN07tHwNIn93orDiZr6xm6kpd86OcmWKANYvo7NGJny+Q?=
 =?us-ascii?Q?LwUF55EBAoQ9LSRdLfuYJDg8M/Rr9qq1bFnWHMnIlMlu83QKefyLU6A2C4D0?=
 =?us-ascii?Q?qodTRX8c/G7mKXvz3GkWM+6b2QCta580xYJ27n+Wfc7u/Hm7Rc9+sQ2oUiov?=
 =?us-ascii?Q?Jyv08EsbUdKETBCAUMmCvR7Y2LzzO0wxIcUls32ve3QrKJjs4GluqsU4EIVr?=
 =?us-ascii?Q?TuR/jaMoaI1LuHbEDKkViT4hCDOfcb1X9LqLj41tN+t5VbxmUNJF09/C+u9n?=
 =?us-ascii?Q?9yeiwd0SqltivrXJmROWgDI152XbwJa/ClBYb0ti3Nv2Vy6xFJzRV6vSBYO2?=
 =?us-ascii?Q?/MdlrPxOwKlDq+W6L0rVnj4R16zkTI3tN0vW?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(38070700021)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?74VJnIopwxw7TuZKCa05y14FH9s37lqoxUxYHa/I966euyUbpzm2i1vg9g3i?=
 =?us-ascii?Q?xx/e0XisbVxQjtnLm/QmB2Kqnp3awv5EvycwulVJ2W8LhpCaqt3Pqp04aBMF?=
 =?us-ascii?Q?D3n7R+z8jOsoJwv/EuFqxpBy80shZR5jNHBvj8ZWFAYLBqj+nCy9RKmNPrkU?=
 =?us-ascii?Q?DRJKvhev99znLKDP5poWgb/3Wyiv096GHP2JK9nUxJpKX7615KS7CkXMnc83?=
 =?us-ascii?Q?vw9sq6CoipdQYwIkjum3yJsvzMeMxlKcYNepQKxzci2Td5NYOyBlwsC3gbvR?=
 =?us-ascii?Q?2IzG23W8e2/zIgTd//pt+BXsKzMkvtgLcXAXRWh29gfqyzh5EiWK9Vyb2PgI?=
 =?us-ascii?Q?S5lMOloAfdp0pvAXMuGRyrZsUmZxGHO5lWCHU0kaXsMfZ1fLibqkkGvY80Ig?=
 =?us-ascii?Q?Oyt+Hej5Ojdyw3E6YA/zrYRHWGVOMPE99EIML8Xl1AIjrYgKL8UWyZcaGhZC?=
 =?us-ascii?Q?qXealKkeQ2Luk1e3ORG7SjYFrI+RQY+P2uDHJWZQRa1nhGt2jgzR24ZoX8nm?=
 =?us-ascii?Q?SnoQWdaP7lYu1ycbfC1ufj4f3RscA3PH4mAypbgLDoDUGkyFhRn4ySqoxiSQ?=
 =?us-ascii?Q?9jMEyYEi6JMQVcv7bABf7j0h8Ht5HcP+WxPDFsn9y/u0cSuAWt7x1N6O0WAo?=
 =?us-ascii?Q?lp1ZK3dnNC5RN+e5AvUfeutxRo+aoxGVllmkY80giLGxg3JMjpeQ+pK++L5w?=
 =?us-ascii?Q?Ntjr8S2XbWvp90KsMbd0vt1GZOtDCCJE3UdPKlBadGWCXw3iYieRdJpZgmD0?=
 =?us-ascii?Q?F/OnOFwy8FFQ0mcpmlS1gyS1L9wYV7JdrbpMLeuFkb+p6C2Vv6ipwVnTSzlU?=
 =?us-ascii?Q?9vYBYcfF9RDuwnxcwv4/ls37LyijlhXYoRMxnsE5q9XLVq6Q9UEJ9ceQ7GVY?=
 =?us-ascii?Q?Jd8SXHEoeUua7+vWI3TTn5gelDmuo/gXvIolqG+AtqT1Jo3mEwMKpQIhhK7m?=
 =?us-ascii?Q?3QgXzxD17WPENl8iCsJGRxj206hptx3NwAuOhK3rxVH6Wg0/4jpmGlIivp/m?=
 =?us-ascii?Q?hl5wJmSVmErVCWgPnA5EJDhrf3uu6Rrc0PseAW7IHwFWIVhD2pm10O8IYyHV?=
 =?us-ascii?Q?umDksM/CAgOqe6AQ1TvuFSOwMZT9uC4oYrCzzNb5ntVhTcU6PZ7iFV9Fge4Z?=
 =?us-ascii?Q?3Z+wHYn7blZBTpkoo6Wx43LnphNLd/KVEfUnGQ1wLci7rSxvdNXFm1/S4PAS?=
 =?us-ascii?Q?XhFBrFe+1j1F742Z4oMkdywgIrYQRDkbaMvXX8QRkWNT3NiUt8MWWJ218Pv5?=
 =?us-ascii?Q?07gHt+rvdKIGjn/RWLQG3LdD9uLXxXcNmBLm6hcaKSafg/uCxu012lsmpMB8?=
 =?us-ascii?Q?uIyEdeE0u4h5pevjh37fRlJvr/gkrLdlM8rzHVQnCIo22x4VB8zv+WE5DJNx?=
 =?us-ascii?Q?3brU7PObXsWhXKWUkscv2Mk7JibibGgPfLIpR6cOO7q3bI2D2XjWzEbwbDoJ?=
 =?us-ascii?Q?S69OCtBcJ/7TOo3q2WUcdoWHF51JitINg5S0sLAJcQxd58/RByeE0ar35FA2?=
 =?us-ascii?Q?zbfHDQrXl78ifzRPUkTND2yQ9thMkXjlabUIyPQVxsP3JHVzSEhYXcbJapQq?=
 =?us-ascii?Q?GO2LqqxhEHfBZSyUI9QB/6+C3gxbEW7d6+nu1psKO/adwGjL6dUwEzzPCdiI?=
 =?us-ascii?Q?uA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3eb054e1-3a88-4bb0-bf1b-08de25ab18e3
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Nov 2025 07:29:51.9942 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YjCCR87ejNIT1qwQ1AtX0Q0rTNWdkKP2XgA4MmedtJcfMXegVEYGK06XlKLqA7KGpMeL+8C9gndFRmz1MN4zBnOK0Um6FZyGxWq+YtRkdP0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8066
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763364596; x=1794900596;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bP6ehUHatOcL1VcSzZeVMviv2em5vJtdPQ1rcWMa1Pk=;
 b=n0k8NTu3fe5wiFAi85wVjsyKJHr0KKIxbrn6PtfYIaNwEvsSjaGznYwx
 xWnLhYlILWbIDX6ofvddxNDGaYUahzkrwiiR6qRBxn5G3HLiHlKwLvJ2A
 /Ia1VKc9P8H7JHMov2xpHjQB5//5XInTFHpWX3+bBvKFp2ju70nUZFzl7
 0vGZXhHuD5oM2YYAAut6vtlEsbT8cCU4R24xGxfmeOxnZzw5bl9mOg/Tz
 tTu9fHI0CJktejPcG550RVE1eNHuIsApyMq4PDx2UtilivV/5o0g3BC2b
 O+wGSuYoexaqSl3qPx6BVrWThb6DWl/qXgrxSBX2+f8BCAsw5dDwzcisU
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=n0k8NTu3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: fix possible
 vport_config NULL pointer deref in remove
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Emil Tantilov
> Sent: Monday, October 13, 2025 5:08 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; andrew+netdev@lunn.ch;
> davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> pabeni@redhat.com; decot@google.com; willemb@google.com; Hay, Joshua A
> <joshua.a.hay@intel.com>; Chittim, Madhu <madhu.chittim@intel.com>;
> horms@kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: fix possible
> vport_config NULL pointer deref in remove
>=20
> Attempting to remove the driver will cause a crash in cases where the
> vport failed to initialize. Following trace is from an instance where
> the driver failed during an attempt to create a VF:
> [ 1661.543624] idpf 0000:84:00.7: Device HW Reset initiated [
> 1722.923726] idpf 0000:84:00.7: Transaction timed-out (op:1
> cookie:2900 vc_op:1 salt:29 timeout:60000ms) [ 1723.353263] BUG:
> kernel NULL pointer dereference, address: 0000000000000028 ...
> [ 1723.358472] RIP: 0010:idpf_remove+0x11c/0x200 [idpf] ...
> [ 1723.364973] Call Trace:
> [ 1723.365475]  <TASK>
> [ 1723.365972]  pci_device_remove+0x42/0xb0 [ 1723.366481]
> device_release_driver_internal+0x1a9/0x210
> [ 1723.366987]  pci_stop_bus_device+0x6d/0x90 [ 1723.367488]
> pci_stop_and_remove_bus_device+0x12/0x20
> [ 1723.367971]  pci_iov_remove_virtfn+0xbd/0x120 [ 1723.368309]
> sriov_disable+0x34/0xe0 [ 1723.368643]
> idpf_sriov_configure+0x58/0x140 [idpf] [ 1723.368982]
> sriov_numvfs_store+0xda/0x1c0
>=20
> Avoid the NULL pointer dereference by adding NULL pointer check for
> vport_config[i], before freeing user_config.q_coalesce.
>=20
> Fixes: e1e3fec3e34b ("idpf: preserve coalescing settings across
> resets")
> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
> Reviewed-by: Chittim Madhu <madhu.chittim@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_main.c | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c
> b/drivers/net/ethernet/intel/idpf/idpf_main.c
> index 8c46481d2e1f..8cf4ff697572 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_main.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
> @@ -63,6 +63,8 @@ static void idpf_remove(struct pci_dev *pdev)
>  	destroy_workqueue(adapter->vc_event_wq);
>=20
>  	for (i =3D 0; i < adapter->max_vports; i++) {
> +		if (!adapter->vport_config[i])
> +			continue;
>  		kfree(adapter->vport_config[i]->user_config.q_coalesce);
>  		kfree(adapter->vport_config[i]);
>  		adapter->vport_config[i] =3D NULL;
> --
> 2.37.3

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
