Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IDQmK1UHe2maAgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 08:08:05 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 64FEFAC6EE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 08:08:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0452983CC4;
	Thu, 29 Jan 2026 07:08:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KV-LPKX8wQQB; Thu, 29 Jan 2026 07:08:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 68F2883CDB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769670480;
	bh=FNiikoLg0wkwQx1XeC+keouRBgaP4T6a7yn2GxOahL0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=n0cNCxvO6CxHCskkHwKjz5g9ZwJHd5XeHm0qnv1mLbcfnc0V114AOzRoks/hE/A8c
	 UyTEvejAsSX+ZwX4fhNgdECwS1v6SVGAkZJqoaEYNsZDna/KTPC2ykmiaOTo7I1euX
	 ek87vplblsGhc1b5nKKU31i+VqQesb713kiKYpzoKs1TLT+6ViYNIXR2y9gxXLb3W4
	 1RUE/kcyeQue9EcslwRqjepJchy7uw9ie8Ysxwf7/YSfOSKgLCmT/8Lt4wSjx1YBw2
	 /T9+DMnXKsi9bf5oOv17vZfcXr56FUkd6ujEVGGaeULJlqEjvSZvpmehwxq28ZSAZW
	 9HWNVuhJdQIug==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 68F2883CDB;
	Thu, 29 Jan 2026 07:08:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 56E5ED3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 07:07:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3ADDD83CD8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 07:07:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PsfjK0K1EXWd for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jan 2026 07:07:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 54F9583CC4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 54F9583CC4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 54F9583CC4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 07:07:57 +0000 (UTC)
X-CSE-ConnectionGUID: vfAl+d5jTrG6dRrUAdvQHQ==
X-CSE-MsgGUID: j1tHVo3UTySGbDq4bjoPrA==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="88473661"
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="88473661"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 23:07:56 -0800
X-CSE-ConnectionGUID: DcN3gqpnRQ2bfrKWZTBTbw==
X-CSE-MsgGUID: wZ5mwEW0SpqwB1IErQt+uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="213362219"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 23:07:56 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 23:07:55 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 23:07:55 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.6) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 23:07:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FaQgocbpspwvarAoEvjiBAi9AbI3zO8MLeMPNnjZBhoAhBEf5reeQJPck7a7cIAnvTi/h35Zdm6IPpmBJcIlkYRDClcFRc21xVykfpUgPMWJkHna5dk+EsHsKcU8KuZmUCs2s9EYIXmTF0G7dzjP1g0gDfPYaEQ4+CI334UWtN3mdBZhyPLiVi3PDhdMS7NgE5YNTldLWf0btcHsdv6xq4zwC76pe9OoDxhePnHN//PsUFV+o9FmqO8P5yy3r0FJDF0yfGb5OIpl0LWXl8rrJUTelhDN22DMGrzrUTYBhzCyKC7caUqM7YoShZnt+Ln5n8kcRmICMrtayuT50QNB6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FNiikoLg0wkwQx1XeC+keouRBgaP4T6a7yn2GxOahL0=;
 b=KjG9tiRtZlS3notwWBoah7vcyRgFg63FzlgQkM/33qtsSppSLY9tdwvk+1PLdUAWV5yYueULhtYXSgO3f85Y3E4hfhozoxF2jVnrtWLCdkNU7i0oI47C+YEYrcOMdYKX1aC4bWpOVBDOWJ3TgKpop4RBawmYDsRYC9dSoVhgyiiUGGC8qXnrp31zagiD3JtxE+Ysr0k9TPzijT+9k32GzLpIpQP5hRJj5HvH/kIfxYiM6oFRDD6yDuuT0qbv5vKhfMdWpipHqfzjgqZmEjborxpqt2i1CPm9LoBKkKYk4+5ch/gOfMhq7XVHyVdfpMEnpHJc+mKfX0wXEND6ULvqYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by PH8PR11MB6563.namprd11.prod.outlook.com (2603:10b6:510:1c2::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Thu, 29 Jan
 2026 07:07:52 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9564.007; Thu, 29 Jan 2026
 07:07:52 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "mheib@redhat.com" <mheib@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "aduyck@mirantis.com" <aduyck@mirantis.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH net v3 1/2] i40e: drop
 udp_tunnel_get_rx_info() call from i40e_open()
Thread-Index: AQHceDH3Too9ODD+c0WwFcFpzjUfNbVo2/Vw
Date: Thu, 29 Jan 2026 07:07:51 +0000
Message-ID: <IA1PR11MB6241DC627D84F32FCF7FB8448B9EA@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20251228194021.48781-1-mheib@redhat.com>
In-Reply-To: <20251228194021.48781-1-mheib@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|PH8PR11MB6563:EE_
x-ms-office365-filtering-correlation-id: b7b77268-5e1e-4c9c-ae2b-08de5f051e3c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?fAiiUuinTNz6J+/gD0FBMVG3MjLC3IsO5zRfpSOFzbtN0gG37ayZFwfmwM0B?=
 =?us-ascii?Q?PPNk234YjfVYSlz7bE/KOq3V1vclGAk0jJoa+GW7U5c4jRuoZJ/vy8fkmnxN?=
 =?us-ascii?Q?8SNEEoBEznf4rhKG3wLBNG+aDrNLLgbThkG2z/5C6MzS+GoWwmb8v7drh7p/?=
 =?us-ascii?Q?o1mYTbyt85f+Og70rvV1A/FE0i9U5zXaOtCV88uZU+qHo+Xuj4g+nsWiQcrM?=
 =?us-ascii?Q?Kg5E+NF8Hr8Zfa5ePlQCKBC1aOeZdhq6be7nyYjPir9muy56a59xXWDH9uHX?=
 =?us-ascii?Q?icV0e0HLukECzyWruyM2YCuRsKhUDFpJ1m/FqMtie6PQg/b7BkdrSVBpumq1?=
 =?us-ascii?Q?6UlFUc+DIwQwTPh1hPuckv23JtJS1Q6vMdFicHlOg+TFoR9gEpFXWnGmEcB4?=
 =?us-ascii?Q?ynRI61rLHbL9395x7dtMZNUNdYpCl/BYtH9w0ehTIcHwm7HIZIBi7tlzXmB7?=
 =?us-ascii?Q?zgxAf9QAkfA9V/vtIck2q+LKhmZTvd6E+MYUgx5vPwK2BeMdXvE8QK/DzC75?=
 =?us-ascii?Q?JPkx7tK8EOXNkPALA4dyPVcrfl4uVOXR8QMAOR8BPX8d+x/H8XXJVyRoLwaT?=
 =?us-ascii?Q?HZzCPFFUKGKqmGW4uDZDWSq42a3sLm2xkfm/zJ5ErmqSih7kaNI1vQb2r8Te?=
 =?us-ascii?Q?cinQ8y+vQg9bjlJ1gjPIDcbHVDKyimtnp4+GDV0gkWYD1L8SSro3obGRwxD0?=
 =?us-ascii?Q?/onjoWyeXGJRnZwQxNSDCNgB0ueRxIxcY8smkZMauHIJt/93J1XRBC3KJMxe?=
 =?us-ascii?Q?fiDw6ukQLGGAwyhKaqmNcT89+0fqe4HL4N2RFUBtRAKkicaV+rXr9enwlNef?=
 =?us-ascii?Q?DPEotW1JsVxLSpq2o9/KN4zykAICarc1L5z4zHFCZntk/+q/MavPxqNLZmY2?=
 =?us-ascii?Q?hes6hQTsPt2T0p1xo0mi5CuzajbOv1Oh6mbY9KHWb8aqr8eDRjmDy9YS512D?=
 =?us-ascii?Q?RS9CSJHEu+Ingg7gKyQJkV08WDucc4Bs0ez1Ob9YnBCTPAc0ubxEvBHYuwnf?=
 =?us-ascii?Q?xe5l/dAOgtJ/SClJNNe+get/EOzHCdKzWqcvU7TuYBOwGOtArQJqEUwcSERE?=
 =?us-ascii?Q?SLNrnTYf3xv6F8RHkU3wTYRf2hwhORdmA6dSTAsjBaHpIA1ktO/MeiFAmRJu?=
 =?us-ascii?Q?NzbehnCoe4X//B8qecEI9ngjaPsl8iJXss9ZISHzmQqDIvB9LDOHNg60sTzD?=
 =?us-ascii?Q?rcRpqMduM4KNM64736FpENu8ToKa/5LhcnhhJ+tqCPrpq19BSyBLrPo8gK3y?=
 =?us-ascii?Q?mY/HLzbPcheu+6p9Pj6Jxe55prRDxq33UeeFMqdL5+OA4zgQbYPZtdz9QMva?=
 =?us-ascii?Q?/flIaT3QAxQ2+yzwPQPR65Cw4736otUcGxbqYQyP1XMqMcvIOC7iJBs0Abq/?=
 =?us-ascii?Q?MHcMfW8PSn5YH8X+kxqjJQ94A9pcLTsSrT9H9Q4y0KPH9NBgmH0tyOaVncYJ?=
 =?us-ascii?Q?UcEvcD7oMLowGQddXdm0L3nzayVSD1KDkEmXhKtxX5n+I9Vu2EX/ZLjBJ0ci?=
 =?us-ascii?Q?YnB3NjPvhL+mieEwrDgAevm5xzsydrzTpNhthVu+MGrRjBkPQUFmMJ5e9JoP?=
 =?us-ascii?Q?RpJ4b1P1PeahXYTgQ2UDATAlzv2K7UjUx1rWE9XwIO+0p2Pk1Pr6wKbzOjKd?=
 =?us-ascii?Q?3Q=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CAHPQEbZhl2VyfP77jir/gGYJKulcvBt08e/aHhMDb8MsZqquitw3LLxWavA?=
 =?us-ascii?Q?lmS8CRM06mXeWvSNvgRVXJuZ06nx0n5S+7+dNjyjXBKrQkN3SptZcrtc3z9L?=
 =?us-ascii?Q?5FEu0BFrfjYvJJDHnDTxWMNiIVc0ytvKg30XxW+6S+u6zpoEpMPJRwolTTX0?=
 =?us-ascii?Q?m8am1KQSWksb4cVzIBt6O4hos4Ki7OS6czcBywCLLCqErvWiYD829849TBNh?=
 =?us-ascii?Q?plf9gVnG+QYnZ52EdsrdFyuRrX6fGVHNMYLoK1w39Md1q++BcN5MMU9uLs5F?=
 =?us-ascii?Q?ijgnjfQdc5nF2ijWgotmDoz3ueXie5l+aez1lF/FO2ApoFT0H2EC5jxca3EL?=
 =?us-ascii?Q?s04om8rUrx1JSe3gwBK7Zzd3FSaZmda7UwweKxZYH/uww2+Po5Uqmicv70Pc?=
 =?us-ascii?Q?rQ385qK9yWFRu+CAiV2SspUwAgo4v7AWcnDlzx6ivIfVsrZ6yK+pprxmjVrj?=
 =?us-ascii?Q?OagcXRtKMScbutGSKAuVEHe6ZPrNMZ98VG1qTeec7faJdxu2immtak2iCd+j?=
 =?us-ascii?Q?HKVPxxVP0FxUNGx30Spc2VkpkAlg269H9MqsKf8oFvM0JOwtxsLb3epcaAvl?=
 =?us-ascii?Q?gIr536ci/79dtIPaq7iLZlapHogbVmnnDk/lYutYNGoaEl7BM1Y4vyLSPyH/?=
 =?us-ascii?Q?I8Xi1W5qHtBaqNoSeMC6+bfXO6tTnWi+6tA5pCHNdG2TbMbqImhdk6Go1y/6?=
 =?us-ascii?Q?oIF+sp0MPQbhxqtw1u0QOtGjaWhjy0Tn7tDPJ6jhFeshGz7SIQz4aRtIhCcR?=
 =?us-ascii?Q?iS5OCWxm69dbTjvgKF3A0lOMw9NLwUsLWMRBkS77sQUYqzcB3Xx+WoXh6NPv?=
 =?us-ascii?Q?TPuqeszJLUkPcPzo1Ru8q8YfsmRRqDNMtaXpaqhWXpRtLdQcVSHLZLshJr/d?=
 =?us-ascii?Q?CmT/8CCJbNwwMXfcJfdHMIKMntiglj4FzUTOD1yjOEPixnDL0XZOM6lPEmH9?=
 =?us-ascii?Q?BecRvymigZN6vWX93hXav3cD+w1MlpI0aKUDCoP224coidTk4rzsAV31YQ6L?=
 =?us-ascii?Q?Op2P45cPGmPz2BbjShQ3Xn3J084oS4d74Uss/YELlKG7wPDGH5wrDWgOHfFy?=
 =?us-ascii?Q?6/mG3l5kyed+Cc7tbPbknQW7mEl680MeU+wBZGj97hIb0tutyElLMYsVqrCj?=
 =?us-ascii?Q?zC0vpfHq80wl3u1xhIKElqxtzfxP5PEPCmbKsnbURMnNI4vstuFdL1o31NHR?=
 =?us-ascii?Q?xsN6Bf8FNDgen/T0fyVztJ2dz/ylM2/VqRb7MYhtASG0Zi+Ltoec/FKhf2zm?=
 =?us-ascii?Q?n494PCrNugV2Qpt8H16GF5i5woXuLMZ3XaxEzIQezWjOuQVNa9A68gv3w7QL?=
 =?us-ascii?Q?ji5mMJocD4JHS0osMOZkAcVyRz4Y7G1l7IIEGe97Up9Lb+w6bLxnJTm6OciY?=
 =?us-ascii?Q?cQm7H5Yg317rfrJEH4+GrqVW2LyChWWk+hfh1dP23xoPReGFmxsET8Y6/Aph?=
 =?us-ascii?Q?vBtfI7dA/0BZ8chRZScEMhgO2dVPzFYogiGmNrY7qxW4Bx9bsmRJ2VUI/Rzl?=
 =?us-ascii?Q?Nd+1lOYdCHkuzsxyXOcUxwZuwXC+DbF6PI5jjXCLTmfpiVNeT8QkkmztgOZy?=
 =?us-ascii?Q?5MzE6Fc9dMpiBHn5CHGrUBdzxfp1CA/I0mKLRRV+Te8PToWT/hcjd8wqu293?=
 =?us-ascii?Q?oktnzjZl1HikgrnOaB6UaeesYi7D5HOCNvpuzbBM2rN1ZKfvf9xk8t+kU864?=
 =?us-ascii?Q?8rAPSCDc6AjGi9Sd9Rz69a4k9NV3hiyO3SDs3FnwvkuqbKzT?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b7b77268-5e1e-4c9c-ae2b-08de5f051e3c
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2026 07:07:51.9237 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nO5lKWs6EG5h0ce8ycgGjVMUw0lhX1Ag2LfrAskr6WzyIoXvmk4HO23s/8400cI8FWuzo6K0k8RHoDyZB8x3iQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6563
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769670478; x=1801206478;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BVtFEJE4SL5rMqonMPwllvXWhjXV50/U8Mn+9DU/0Xc=;
 b=ZKi8CHwIRpoY0cs8rQMXS6XylvgVyIQR0G1h9Z53WL4XtCsL6GzYVwkc
 Scl9pDbTkqyA0uJ34ygqKWb7sH8cFle0hdUK2CEbBlHCvYMKcyfN+rt/t
 g4w/WiXgYdSjUOOro/7v29+4KDvWXxZlCAMiTMfCEbYtzVfXWipPHvAtB
 5qtcG6TdJU4vRcDn/ncskPBirPrqdh9OMxVlB7Mlso/usGg8a14p7Oe+R
 Vk4DfkZoSW3FyyzGjJ6G6KML1Hhh6F5R9L3x7Mz2J6M6wu8VuoZy3uh11
 1StbUlXx4mtJ3wH7D3VHDEHX15+mRDl94RtuXkBNVi60euJO3la/i+yPT
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZKi8CHwI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3 1/2] i40e: drop
 udp_tunnel_get_rx_info() call from i40e_open()
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mheib@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:aduyck@mirantis.com,m:kuba@kernel.org,m:netdev@vger.kernel.org,m:jacob.e.keller@intel.com,m:pabeni@redhat.com,m:aleksandr.loktionov@intel.com,m:pmenzel@molgen.mpg.de,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:email,osuosl.org:dkim,davemloft.net:email,intel.com:email]
X-Rspamd-Queue-Id: 64FEFAC6EE
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of m=
heib@redhat.com
> Sent: 29 December 2025 01:10
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <=
przemyslaw.kitszel@intel.com>; davem@davemloft.net; aduyck@mirantis.com; ku=
ba@kernel.org; netdev@vger.kernel.org; Keller, Jacob E <jacob.e.keller@inte=
l.com>; pabeni@redhat.com; Mohammad Heib <mheib@redhat.com>; Loktionov, Ale=
ksandr <aleksandr.loktionov@intel.com>; Paul Menzel <pmenzel@molgen.mpg.de>
> Subject: [Intel-wired-lan] [PATCH net v3 1/2] i40e: drop udp_tunnel_get_r=
x_info() call from i40e_open()
>
> From: Mohammad Heib <mheib@redhat.com>
>
> The i40e driver calls udp_tunnel_get_rx_info() during i40e_open().
> This is redundant because UDP tunnel RX offload state is preserved across=
 device down/up cycles. The udp_tunnel core handles synchronization automat=
ically when required.
>
> Furthermore, recent changes in the udp_tunnel infrastructure require quer=
ying RX info while holding the udp_tunnel lock. Calling it directly from th=
e ndo_open path violates this requirement, triggering the following lockdep=
 warning:
>
>  Call Trace:
>   <TASK>
>   ? __udp_tunnel_nic_assert_locked+0x39/0x40 [udp_tunnel]
>   i40e_open+0x135/0x14f [i40e]
>   __dev_open+0x121/0x2e0
>   __dev_change_flags+0x227/0x270
>   dev_change_flags+0x3d/0xb0
>   devinet_ioctl+0x56f/0x860
>   sock_do_ioctl+0x7b/0x130
>   __x64_sys_ioctl+0x91/0xd0
>   do_syscall_64+0x90/0x170
>   ...
>   </TASK>
>
> Remove the redundant and unsafe call to udp_tunnel_get_rx_info() from
> i40e_open() resolve the locking violation.
>
> Fixes: 1ead7501094c ("udp_tunnel: remove rtnl_lock dependency")
> Signed-off-by: Mohammad Heib <mheib@redhat.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> ---
> drivers/net/ethernet/intel/i40e/i40e_main.c | 1 -
> 1 file changed, 1 deletion(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
