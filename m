Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YIv6FI/vfGndPQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Jan 2026 18:51:11 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D56BBD748
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Jan 2026 18:51:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C7CE240D8D;
	Fri, 30 Jan 2026 17:51:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sEiMZhjCKHny; Fri, 30 Jan 2026 17:51:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 26D1940DB0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769795463;
	bh=k1fzs5dpzgjjPdb2jtBh4ORCKPtx2XytCYXg35p8X7Y=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nVz0Iqxt0/wXKXGSpG9OQ+SCRGI43QTooy4sTVOXf1h+uIAzm7QHRBJ9FMs7zLtAe
	 t903iZpKmk9Icxrs0KDdomBKQZCi5OWaurXJfJEAF5BYuQ6Q7Eztkhuo7AYe4isb9u
	 /c8VynZyZDe2fFrNhNOffvgvuXqFShqeATJSPXFpu1qha1x4AZs40u6/qS625ShFAu
	 LvcCvGshx4lFXT8Z6SXPvD524pPEAjf8I5y2MeYJSET7mJcW0d6VfTvJPAcp+Rn/ck
	 cBl0vsIB0ioZzNqGo1zv+BBWkOWYd2+qQEmrAJN7h01Dg0bWpvBikEejSG3xflWOzd
	 S0du8GDUNjB9Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 26D1940DB0;
	Fri, 30 Jan 2026 17:51:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1EFB31A6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Jan 2026 17:51:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0289A4005A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Jan 2026 17:51:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cw9WpF_LLpZH for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Jan 2026 17:51:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DD6404004A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DD6404004A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DD6404004A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Jan 2026 17:50:59 +0000 (UTC)
X-CSE-ConnectionGUID: KOEtYNF9ST693ZDNOIN5DQ==
X-CSE-MsgGUID: OuBlr/GtQXSr6UWUWhx4aw==
X-IronPort-AV: E=McAfee;i="6800,10657,11687"; a="82474575"
X-IronPort-AV: E=Sophos;i="6.21,263,1763452800"; d="scan'208";a="82474575"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2026 09:50:59 -0800
X-CSE-ConnectionGUID: iVDXjHyQQYeFnQO8bn1PQw==
X-CSE-MsgGUID: Hi8TSSadT7Sb97qoFs87uQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,263,1763452800"; d="scan'208";a="239635105"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2026 09:50:58 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 30 Jan 2026 09:50:57 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 30 Jan 2026 09:50:57 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.43) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 30 Jan 2026 09:50:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Q63Tx/kouXWjS4zAyheSRHOdvaiiT9y6nY54PzNhEoqebpUxQWayQymaRupyyEHw2joJ+yYRwbJp7pLi2EsDoF+7LCx3kHtChIWrqmFfIvXM1mGob6XoMPVIVyXei3aymwAS3labqDoPiZwRwD3z9LlXpAFOw2Mx0WMltt+2E+WezBJeVHhKFDD1C4/0bvefSKTtrGYu1IkU5QsVInEPO3SSauSX7qYeFJJD7ddEjmeZFPjHdCVKUjQpnL4LE7fpmnJ+ph2MnrtRewotOIrdUVrRWjKkQWnUFB0FQkozxmh3y0qI9lBIeJvQFkUc8jZGER5k9nvV2+J68y4jxXw+Og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k1fzs5dpzgjjPdb2jtBh4ORCKPtx2XytCYXg35p8X7Y=;
 b=iqPXSRNAhO7WXSMEEm/aXHUFUFNT+RkevBdEoAiUab46EtiMU/L3+RdPpQazxGJ7btwrm/u7UxiUPSjOnZNoU8Wc/stzo09bf2q5IpQLNBiExehpDAkLVzo+YLnEFUbWk7HpNs1H2+XtrywPk2uAAfZmTe47NzX/9ntTLECSAjix+90COeooYFjM1DRyQoxldMkOoAXlTv9EywE+VSZxva9mwhEXorMjVqlNfw7zYEIB25aBXtayLuI3XLzxAc3dJUlLzQW9MLZSONJsdu3m6zt97bb1BpOq+kIheqsB2Ha3n0NkJ+n9Ild0c6JD2z4su/UXerRSUNunFLY0IO2DCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH3PPF7A88A980A.namprd11.prod.outlook.com
 (2603:10b6:518:1::d32) by CH3PR11MB8344.namprd11.prod.outlook.com
 (2603:10b6:610:17f::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.12; Fri, 30 Jan
 2026 17:50:54 +0000
Received: from PH3PPF7A88A980A.namprd11.prod.outlook.com
 ([fe80::f7b3:4461:b4f9:1a0]) by PH3PPF7A88A980A.namprd11.prod.outlook.com
 ([fe80::f7b3:4461:b4f9:1a0%5]) with mapi id 15.20.9564.007; Fri, 30 Jan 2026
 17:50:54 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Vecera, Ivan" <ivecera@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Jiri
 Pirko" <jiri@resnulli.us>, Jonathan Lemon <jonathan.lemon@gmail.com>, "Leon
 Romanovsky" <leon@kernel.org>, Mark Bloch <mbloch@nvidia.com>, Paolo Abeni
 <pabeni@redhat.com>, Prathosh Satish <Prathosh.Satish@microchip.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Richard Cochran
 <richardcochran@gmail.com>, Saeed Mahameed <saeedm@nvidia.com>, Tariq Toukan
 <tariqt@nvidia.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Vadim
 Fedorenko" <vadim.fedorenko@linux.dev>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-rdma@vger.kernel.org"
 <linux-rdma@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 4/9] dpll: Support dynamic
 pin index allocation
Thread-Index: AQHckgkh0ckIojTtSUip01MtbmccKrVq/cgg
Date: Fri, 30 Jan 2026 17:50:54 +0000
Message-ID: <PH3PPF7A88A980A3B69C3F4AAE8DFE1CFDFE59FA@PH3PPF7A88A980A.namprd11.prod.outlook.com>
References: <20260130165338.101860-1-ivecera@redhat.com>
 <20260130165338.101860-5-ivecera@redhat.com>
In-Reply-To: <20260130165338.101860-5-ivecera@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH3PPF7A88A980A:EE_|CH3PR11MB8344:EE_
x-ms-office365-filtering-correlation-id: 6c5c3829-b2df-4676-5ad0-08de60281d7b
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?vAPJdtjkQ7ypZlUatkYC3l6W/PFsYgLeEMsHaTLHNhmOd9m084nvJ8E0NM+E?=
 =?us-ascii?Q?x7jTliEGdxeF431MXr6FaXwwmHsWWU1kNO2S02Wg79qt3xLFWSGSQ00CD3rj?=
 =?us-ascii?Q?lEKvw/gISVqecoXRNBtp0gdTvuzLpEsOgJufBiVtJrdmRxe8SFQj6CgMdeJ5?=
 =?us-ascii?Q?DiCp9YEl5UYeyvBI3ZBZ0O3n7BDSv0Ic0hpCG70Yi2job82HTJs/2ptwC85X?=
 =?us-ascii?Q?xOx4X3Ijms7X1214890CWnkwPLyIiQBxspIS55FUQlpz0A330UfIs1uoMGIu?=
 =?us-ascii?Q?kGv1NrU51cAvIRI0foGtqgitVq9bHg2L2fE6cLHdXme+hxDjkMtCD/fWTUrb?=
 =?us-ascii?Q?98gECbVfLQoRQghF1ycpOcAwKKbPHgmJZgLTob6BHS/R1Kqr3FgPIMgx3Prk?=
 =?us-ascii?Q?9ZuumSqlzUUUEZBHPkNv0ERDBRvd07ppxPv5qoKxB/LxqmrErvVKy/YXmIBo?=
 =?us-ascii?Q?tHChtxdryaPSSuQ+SJ++wbRJz8x4Bd4ii4VetTZBw9YGaUj+BQL3RDTONqrg?=
 =?us-ascii?Q?XikdPhhzH5/DkdN1OJZ3o4L6MmtfupV0tCNVULyVXX7HHUfpI+9jtBZ0fD3M?=
 =?us-ascii?Q?RXQn210PIUe/fN4Zj973xFaanSAGpGPx5tigqgIPdNg2r6aK2HZfKK3d22cU?=
 =?us-ascii?Q?I6YHGeuBraQbUFKQ3Te37MoPPTyrIFvflDaej2ysCZprli6UB6eCDX6NDx/S?=
 =?us-ascii?Q?0cIFxuu/UvVigafO74lEmywOvmdwIGTmJto22oOl4KU9ksp4FiN+FuXNoEp2?=
 =?us-ascii?Q?ZYA3Yk4ThbXq/M7aJy3aS+6EHgks4Du2217gkKLZtgLBzNXdGWGl8IjJX2Ey?=
 =?us-ascii?Q?J8oZLCUSXRzyCAGbPU+0lb35IvMVw7dBTIFe2mrkBDZo91Un2sh8YZBQntBz?=
 =?us-ascii?Q?Ur7VWTqiWNrhcv6yKCZofa57u7NG7jyRfIizngoTJ2VmfakLdbLlQJJbo0Qr?=
 =?us-ascii?Q?hPvKEUm+mii6Taf1swfncsfB4IYi2jeFWUqZTbegh+0Uc5dDzsHvgczth505?=
 =?us-ascii?Q?dbSC/YELzuztGZBvTt8SKNGGK+dT+Db0i5hHXKYcPC+c+pis4+hKcSF8hN2b?=
 =?us-ascii?Q?3KaFRWQpNcUrDSLB0nI4BZsnaLJUlMtYFsN6xtbyHvtZa25gjzvECm13RvYj?=
 =?us-ascii?Q?N9JzNE5QzJLpGNB4JFQrK0evXrtpvR1yvpHdahKZGfBk/XUTtVKOiCNeoZ9g?=
 =?us-ascii?Q?sLzezkCfaDP8EhwljGYtMSG1567WasyZme1A64hkUq+lLk4FogC99IkkdaB/?=
 =?us-ascii?Q?OOTabGyjNVR6lKBu/RDTfGJBLk6xC62zzNy/I5PTF1hEYu6j/8kaouLbIYei?=
 =?us-ascii?Q?Buw24AV87o5mSYTJ6iJjlTP7eTfSfF15kvKwGchxjYECUheXgerSYN/YsZbW?=
 =?us-ascii?Q?asOOjIwiPUcFSum0wVQyhVSEf4+XOoQvsP4QlFa4dW263gNmt4gJkzR6sL8V?=
 =?us-ascii?Q?GrECsgXRCOBVpBqYO+reKIuNw5UqU0ATS6WkcSEicFNCMJZ89Bf3jlK9JxSq?=
 =?us-ascii?Q?y011MD1hpfnr3Hnae7HQn5FP/G6q0uzRAU2zXSf+4Z8uDmBduRJNP+gGTz6G?=
 =?us-ascii?Q?yCYUB5WJZVX8fZH/p/zKwBaFQ+R1BuP9Z2c4ssPAMfXgN+1ealbzZuwojif1?=
 =?us-ascii?Q?pczwp4LmYBOg9bBZCfPDAls=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH3PPF7A88A980A.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Mx5Rn8+QzpRGEDwyVEyzPVmOS0neHrJI6l+KrV47W3IXZFr0jKMrVr9EZxGC?=
 =?us-ascii?Q?tR88IMsBBK0Na6UXEalxoqKBdupJaOlo7ikJxWTgt/wAB5YZm3kThtSXGYdf?=
 =?us-ascii?Q?et/ILEK5qxxP8Fexd8qud5DUYUCMhW5kHJljv1or6aZSYGNMtB9TrixH7lVe?=
 =?us-ascii?Q?U7nmyBOIQIC4Aatrw75v8AlRFrx2FkpAhGXJNkw1E2+8An7Y5XU34M0zw/M/?=
 =?us-ascii?Q?0HkEOLELQIOToASqtOarqQmobjq/4P5esR+9pRm0WCdNT4M/y8dznG71USJf?=
 =?us-ascii?Q?JfIYpf0WBB/1OsJAfmpqmzhNm1I+FiqJfsEWHzb91xImT2HBSZLRGqRB9DdO?=
 =?us-ascii?Q?9b06uGAplgqJcvDI7Hm8dvekobWLr2cNcMMTy+NAh7pTe9sinqrYmnflvq+C?=
 =?us-ascii?Q?uWcpZlSJtrYhFQ4letEcyq6GnMO485bt5lKriSmo3oM1nuZNg/7EPeuuAAoY?=
 =?us-ascii?Q?d2ZosWQqw3jAyFy95I9R5/54xux6w9rRwnYpjXd0Xvo+Uvh4HbKbg+D1jzHm?=
 =?us-ascii?Q?6HOmugrooknHo26UVpfmdUHXvytLoMGLXjCEqyheCeIUhejaidenWKSfvBiR?=
 =?us-ascii?Q?qFNUHn7X8eNqz58hT89vtjo71r54oFMtKnJ/2aw9/gBeenSwyotlQbvaZy0T?=
 =?us-ascii?Q?VAhg0ktJ21jJ9+Fi2Ol67AOGuCwYkDItYlXzFluql3vgds8sOsd/JR/muFOv?=
 =?us-ascii?Q?vjqbvv+CSn0O3ki8pBfhSjb7y5kEl7fL5sUMz8q+IvRV7eZmH0N9YsICZlEo?=
 =?us-ascii?Q?GUCeq9HL9UU4mbqt8wPSDI9PUOVzifY4MgcvP79iaGuVAYc4CprmDHaEN6il?=
 =?us-ascii?Q?W5psj7czXZCrPx6JtyMeJajoM9odCQJq6AlvDrJSOZUkWaRc99i9BW1NhvD3?=
 =?us-ascii?Q?AaYeckOV+CjNetjowCcD52mwgOqgHQQKMREOuVLm10VVeATgN9FsVLEk0PZD?=
 =?us-ascii?Q?F0k7tHBHlloWs8FrcYLfozb10e+oydJx3p0V3FDdjgub5hLAYRI/xjE8HT57?=
 =?us-ascii?Q?/nPvevq/icUPPnrrlJCZCptKpVhBNIjvY0MPBnuhpFojVOpH023XrPe6PKRR?=
 =?us-ascii?Q?JuctUEziklD5oB3Ip0cEssbnILyLqFCerkcJ2QUViTRpHWjTBKt3qSIwQrcl?=
 =?us-ascii?Q?IEQ5RYP1i8Jl66DavsLMwsXgBnZsB/7zdWIT8i6WeX7GEWCpViPgUruuCCNL?=
 =?us-ascii?Q?fOz4ogEbV85sm+uocPY3RXRMi0y39DWgY+s+6zWJCgPTvZ3NpVXwDw9LSkWY?=
 =?us-ascii?Q?QHVkYBifWobbpP/sm7SdXabGVXy0s3ZhoSuFskhrUjC1KdGLVFPSmNRcr18p?=
 =?us-ascii?Q?YVN7qo4QvtVsHez80HkMgXJvSmEZucUq5YwFV0Edq/XYnZjZFCxGoZpyhb36?=
 =?us-ascii?Q?FLhvBY7pYPSMXZhOEThwvmtZr7l16RLIZ8i2mGPfIFvFfrzZ/3ueengIbK4G?=
 =?us-ascii?Q?yVC+ArOOgLsM2wo/6jRsff56o+mgFIqdbnpEKG/4but32toKWRjkKy1jSrVR?=
 =?us-ascii?Q?G4Rs8yg5PkkcCWlqYeYVumnSAuhWuQ/qnz1g0FUMWcp6lAXKfFCwTiY5onGA?=
 =?us-ascii?Q?BTcOyleHY22JxtbH6v1Ozd/oPi9M4ht9zF0lAUeErC1mqqOOTyg4Pz4VEXNj?=
 =?us-ascii?Q?S9CqoZpUUsRGBt4zmvSoTnei3EgDIk8S+vcNAY60npboQbZk5nNATNCa58Ya?=
 =?us-ascii?Q?H2Edu6wkZv2OODNg3//IC+PFtrsV80E919Xg2lwNtyxCtO7yQ/XYnk0H6QKb?=
 =?us-ascii?Q?Lwh8IOLhNQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH3PPF7A88A980A.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c5c3829-b2df-4676-5ad0-08de60281d7b
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jan 2026 17:50:54.2520 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nBkXy0xo9HTt+eN2zg5Kay5asWiMjFBi/Qfw7IkW/63YjVKNFNlwi0W95I3sx1Vu8U2u5ti+43eMCi2EXK27a4HQ0WKPmR6u7v2EL1XdM6U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8344
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769795460; x=1801331460;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pgAgs7CSQLNUldAWS7obzI6Jb9rZyU9r9o1d6tmTSYY=;
 b=kpT8/e9uZo0De3xJaXWXiC71602G64a+bqaTtsSFXjWxe4IooDC2iyNw
 JvAHHnUkGp8Y4zOIFgSSJAoRCa37DlJSY/VP/zOqWoPxcC1DRXrfCS00+
 EwkRlN1vgRNMj+RH5hgER1R52rXSKCauhXeYcmtMli0OLYxuv2ikxY3eG
 bWeH5sh6Cw52gfl3xrARRQNz1v/JSCD2AgTfon+Ij2pSZmcOILqgnRkZ5
 osad499XvFIxr6ihxbgJYVVYK5cCerHfMfnK0yuF9XdQyFZzmh2N3+EJC
 9nw8kuMFkIMGJIte3ZlB9vN8gT3sQpnikQlEyamMpakcOqCRBMHkYSn8v
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kpT8/e9u
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 4/9] dpll: Support dynamic
 pin index allocation
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ivecera@redhat.com,m:netdev@vger.kernel.org,m:aleksander.lobakin@intel.com,m:andrew+netdev@lunn.ch,m:arkadiusz.kubalewski@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:jiri@resnulli.us,m:jonathan.lemon@gmail.com,m:leon@kernel.org,m:mbloch@nvidia.com,m:pabeni@redhat.com,m:Prathosh.Satish@microchip.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:saeedm@nvidia.com,m:tariqt@nvidia.com,m:anthony.l.nguyen@intel.com,m:vadim.fedorenko@linux.dev,m:linux-kernel@vger.kernel.org,m:linux-rdma@vger.kernel.org,m:andrew@lunn.ch,m:jonathanlemon@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,resnulli.us,gmail.com,nvidia.com,redhat.com,microchip.com,linux.dev,lists.osuosl.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,intel.com:email,linux.dev:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,PH3PPF7A88A980A.namprd11.prod.outlook.com:mid]
X-Rspamd-Queue-Id: 6D56BBD748
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Ivan Vecera
> Sent: Friday, January 30, 2026 5:54 PM
> To: netdev@vger.kernel.org
> Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; Kubalewski, Arkadiusz
> <arkadiusz.kubalewski@intel.com>; David S. Miller
> <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub
> Kicinski <kuba@kernel.org>; Jiri Pirko <jiri@resnulli.us>; Jonathan
> Lemon <jonathan.lemon@gmail.com>; Leon Romanovsky <leon@kernel.org>;
> Mark Bloch <mbloch@nvidia.com>; Paolo Abeni <pabeni@redhat.com>;
> Prathosh Satish <Prathosh.Satish@microchip.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Richard Cochran
> <richardcochran@gmail.com>; Saeed Mahameed <saeedm@nvidia.com>; Tariq
> Toukan <tariqt@nvidia.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Vadim Fedorenko
> <vadim.fedorenko@linux.dev>; intel-wired-lan@lists.osuosl.org; linux-
> kernel@vger.kernel.org; linux-rdma@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH net-next v3 4/9] dpll: Support
> dynamic pin index allocation
>=20
> Allow drivers to register DPLL pins without manually specifying a pin
> index.
>=20
> Currently, drivers must provide a unique pin index when calling
> dpll_pin_get(). This works well for hardware-mapped pins but creates
> friction for drivers handling virtual pins or those without a strict
> hardware indexing scheme.
>=20
> Introduce DPLL_PIN_IDX_UNSPEC (U32_MAX). When a driver passes this
> value as the pin index:
> 1. The core allocates a unique index using an IDA 2. The allocated
> index is mapped to a range starting above `INT_MAX`
>=20
> This separation ensures that dynamically allocated indices never
> collide with standard driver-provided hardware indices, which are
> assumed to be within the `0` to `INT_MAX` range. The index is
> automatically freed when the pin is released in dpll_pin_put().
>=20
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---
> v2:
> * fixed integer overflow in dpll_pin_idx_free()
> ---
>  drivers/dpll/dpll_core.c | 48 ++++++++++++++++++++++++++++++++++++++-
> -
>  include/linux/dpll.h     |  2 ++
>  2 files changed, 48 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/dpll/dpll_core.c b/drivers/dpll/dpll_core.c index
> 4bcffe3507cd7..b91f4dc6bb972 100644
> --- a/drivers/dpll/dpll_core.c
> +++ b/drivers/dpll/dpll_core.c
> @@ -10,6 +10,7 @@
>=20
>  #include <linux/device.h>
>  #include <linux/err.h>
> +#include <linux/idr.h>
>  #include <linux/property.h>
>  #include <linux/slab.h>
>  #include <linux/string.h>
> @@ -24,6 +25,7 @@ DEFINE_XARRAY_FLAGS(dpll_device_xa, XA_FLAGS_ALLOC);
> DEFINE_XARRAY_FLAGS(dpll_pin_xa, XA_FLAGS_ALLOC);
>=20
>  static RAW_NOTIFIER_HEAD(dpll_notifier_chain);
> +static DEFINE_IDA(dpll_pin_idx_ida);
>=20
>  static u32 dpll_device_xa_id;
>  static u32 dpll_pin_xa_id;
> @@ -464,6 +466,36 @@ void dpll_device_unregister(struct dpll_device
> *dpll,  }  EXPORT_SYMBOL_GPL(dpll_device_unregister);
>=20


...

> --
> 2.52.0


Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
