Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YEJ1BvFLemkp5AEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 18:48:33 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AE4FA72C2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 18:48:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A963C607BC;
	Wed, 28 Jan 2026 17:48:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZUeV91klBEy2; Wed, 28 Jan 2026 17:48:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0E558607BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769622510;
	bh=VivOoVZOY86+0Cv4f8822JGOKb1uOh7K5SjH1qB1XsU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qZAwUNcbUYDv5G8wnzqxFYBQ1UPssLi302hLgvWZHXLX9QEiroxGiaCeUqA5LbQXE
	 RzjUSUMt1G4wOy78eJ9/Mtbxgevq0RMUnDdDQXWfs4rNFP/oarNGcPxlA77qfetXk6
	 CIHYPquVlvlv8EvTgxurLyT+WOui8pvzuJZD1iqzVlAUqMMrk0aoriMsncY69P6iin
	 r51Y3D0o3DU/fbU57zBQ6xTHc/6+sGntTAxNSEyolTY1//5VIvVUxWBHEU87aTBuY2
	 rzmwRS7R+KEQ21UbhKQRBP3syqGMrwGOM7x9Qhm8dkXvnMg1bD5CUsulMeySEoDEm6
	 OzLeGS8kENx4g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0E558607BE;
	Wed, 28 Jan 2026 17:48:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id C80DD1AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:48:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B8E0B607B8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:48:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VHPsSdL7OaO4 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jan 2026 17:48:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C439760788
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C439760788
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C439760788
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:48:26 +0000 (UTC)
X-CSE-ConnectionGUID: jwdrdvRJTG+VTsX2IU+25Q==
X-CSE-MsgGUID: ORQr8v0KTFqIkR/KsSz81A==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="74468089"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="74468089"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 09:48:26 -0800
X-CSE-ConnectionGUID: DDcIFABETz2Cv2dkp8o+Gg==
X-CSE-MsgGUID: 19a/t84uRGeQMeFJx8wG4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="212824847"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 09:48:26 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 09:48:25 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 09:48:25 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.14) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 09:48:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sPxqekDpUl4w+qTlAoGAd2VP5H5KihgUtgm0zIr9gTrpbVEiHDtQCVregAihrqkDJMYyhFKaIkV+mylRi2LFI2wIwP6Mp/GzFwOVNow6N67XPr4LOF/jZ7nFoIzp0RYFHzENiNnjKXnQkDdjfx/HMCkp4nvq1zvj1NYOkNVI63Jf1kd/KZtEWrx9czGt55yOxbQ7jrctL3i5RYuJhdpDE+Y7tJmv54eFYK8Xd2ny65mI8dfatqCWYitChn6yl0QEJml2mDm8LKHPb6gXTxLqsretXnJzNft1fFd1aBD/XhL7R1K9bmqnlVzZeLXyFwd8AFeTpomBRKqteawvYkOt6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VivOoVZOY86+0Cv4f8822JGOKb1uOh7K5SjH1qB1XsU=;
 b=jGI1/GGgJNspiUgFEaosNYZUsWtXTVnWl3RGpGZbhi3UZZQOLzkZa89bbxcejNppf2kQ3XQ7dSauFL7RD+J98tAPQobW1btKJslkTU2OWXWxfc0bAo8LQHYdaM00zdwkWhRX9rfE3y4mbIxnQwhIrDSEk1jM1mNj6hpFODZoq9rBlhesPrKx3FTCDM+vqpuGhNKQP6uDUtuzawgr7th3ki9KLUYmBsakAxPHIbvLrfKO4CTqlS8p1/38hd0fhXzjwfxR9Vli3dLisWQa1seDbDx7gyzyO+g4HukMC1cPFJGYXxNyFpbGYhFyhOT1ztnfqo/PGYExyqoiZrGcSIwm8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by IA3PR11MB9160.namprd11.prod.outlook.com (2603:10b6:208:57a::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Wed, 28 Jan
 2026 17:48:21 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.010; Wed, 28 Jan 2026
 17:48:21 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Linux Doc Mailing List <linux-doc@vger.kernel.org>
CC: "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Peter Zijlstra
 <peterz@infradead.org>, Randy Dunlap <rdunlap@infradead.org>, "Stephen
 Rothwell" <sfr@canb.auug.org.au>
Thread-Topic: [Intel-wired-lan] [PATCH v2 17/25] docs: kdoc_re: don't
 recompile NextMatch regex every time
Thread-Index: AQHckHZzK9Gh4Agl/06HlD3Pf7r43bVn25+A
Date: Wed, 28 Jan 2026 17:48:21 +0000
Message-ID: <IA3PR11MB898636F700F53CD38A0A8BE4E591A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <cover.1769617841.git.mchehab+huawei@kernel.org>
 <0eabdd8b9c895230b98b289ab3352303b816858e.1769617841.git.mchehab+huawei@kernel.org>
In-Reply-To: <0eabdd8b9c895230b98b289ab3352303b816858e.1769617841.git.mchehab+huawei@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|IA3PR11MB9160:EE_
x-ms-office365-filtering-correlation-id: ef467e8f-ff38-48e2-9cd2-08de5e956d8f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7416014|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?TjFPUWEvblgvZnp0dlFNQUZ0TXFnUnJkVGVJQXVxbHBHVDVTc3Y2bVFNb1Fl?=
 =?utf-8?B?cEh1RFlPTHRyRHUwdzVVTU9sdXpCbCt2TVBSUjh6KzVmRmJySWUyYWk1QWFi?=
 =?utf-8?B?ekZweXJCUE1KWUhsc3RkcU5uRHloYVkySG5NSUF6VWgxQjYzd2hRS2tibXlo?=
 =?utf-8?B?VEV4TzY2MjFqMFdvOEprNGRKdGRXNXY1YWl4emFEdXhLSVYwekYxSWFMSUor?=
 =?utf-8?B?Y0lXMmtlRk1BZ1RUN09VSTh3NHdxbXdHQmV0bUtIRGg0RmZYRS9rZTAzamtl?=
 =?utf-8?B?MEQxZlAxOVJQTnFkNGdvLzVaYk9QVmJpUTBIVkdrUTZUUzBDUUM3SjlYZmdD?=
 =?utf-8?B?T3hPUUxRR1VpTzN3RTNYZHZoSlF6Y1V3RWlNbDMzWEdkQXRKd04rZWZLU3JC?=
 =?utf-8?B?a2dSUXIrT1g2TG85UG5XVmpGRTlJb1pXL0xxZ3Y3MkpteFVLSk94dFRWVWVH?=
 =?utf-8?B?d0dvbGZ4QmVxWSsyZERNTi8ycE50VWpmOGxzQkU5MGxTQVpBdm9vcndSU2VB?=
 =?utf-8?B?c2xsbStmbDg1WVFiNklXSVJOdk43eDdQMFhFUjJSc0l6aHJiSUFBdlptRmU4?=
 =?utf-8?B?WnBzZFhhcjFvejVubjJFaG45RUdpTjB6empDUDA1cDFpeVMyTnBUNFppdElq?=
 =?utf-8?B?UW5QSDI1ZWtZWjdrRWxLalFPNEVNazdIaUJMenJtQWhKUFFvUFYvaXZ0Y2ts?=
 =?utf-8?B?bXpaVXRjcDRMRzQzeHRKWmErRkEzdVpzYWFtbWtvMG1ndDQxNUwvZTI0MlVP?=
 =?utf-8?B?ZDk4WFgvcnF3aTZ6Q09HZTZ5NjV6VUdkbktoLzhDaUxpd3FIRVZpTzYreTVD?=
 =?utf-8?B?N3hsZjA3SWxBaStRWHFWQXo1aFdyNWJ6a04zbzZoZFRlVVplQkxndW1jVXVh?=
 =?utf-8?B?cGRNMUtPWUNPR0xGUG5sa1Q0akMxV3lJczg1OEdPWmVDY2FGYnJHVSs3ZGlV?=
 =?utf-8?B?MlFFKzF2ZVdTZVo5VnJOdTloNWZRalVWSDZnZFBKbEE5V0xaY25kWnN3dGxm?=
 =?utf-8?B?QVE2N2FvZHhXcEkxallqUWNvZ28vd0N3bUw2RmE4RjdGQ2E4SzlWT1JtWGhO?=
 =?utf-8?B?NFIrTVkrV05JcFpVeVNPTzNtM3BiTGJIQVpkd1drMEJDYzRvM3Z4bTB2NzNw?=
 =?utf-8?B?YzdUbGhOMkFaYzJZT2NHMWdyNmkwNGIvWmpsUXZZWUMzc0pJNklWcktKQzdZ?=
 =?utf-8?B?Y2RvcjhONEd3eitTdkc2WDRJWSt4azZYNGFudVYwUC90ZHlERkEwOG9EUTIw?=
 =?utf-8?B?YVFZTEdvakloK3Zpako2TUpGdmpqR0JueEJjbE01b01rUUdLdm1SSXdYRzNm?=
 =?utf-8?B?MmVKa3pKR21PZ0s2dXYzTWZxaE96T3htdkx3WnBjQm83eUVFOFNkZXJpUVgr?=
 =?utf-8?B?YTgvaW9oa2NhT3hHTnZuSUZxZUFGdklvZXJnNDJieWdRNEpwTmlqaXd1d215?=
 =?utf-8?B?Y3pLQi9KaEQrbk1KSDFRRi80WU5HeWZudlNraVE3RytaT21jL25CT0Nhb3VV?=
 =?utf-8?B?M2h2em5VMHRSVWliSENlN1hjaW1ONDMvV2xRRGE4UmVOWm80NUlKN2ZxU21n?=
 =?utf-8?B?ZCttbStjeXZwV1lyZjRoSlhpL2Iva2JFV1VJUk15bFZ5N3dGazFKeFhxOGty?=
 =?utf-8?B?Qlh4cHY1UVlSaHF0S3dJUU5PckZRRjloTGVRWVRWd0RQVW9CekVLWTRSVTFy?=
 =?utf-8?B?SkhDejVOK25qc0JDRUIvRFVrWkhZaTRXVHk1K2ZZTmFVbmZ5ejVzQ0dFUnNv?=
 =?utf-8?B?TDM0clV4U0Z6UXE5RllWUlBHTmZ1U0YwVmxybDRWOTJCY3o2YmpPS3FpSUQz?=
 =?utf-8?B?T0Z2T0hjT0s5YTNwWUZzd1lRTVhFTUQvb0hMRVBpWGt2NWozd0dXOFU4NC9u?=
 =?utf-8?B?TGs0U2Z0OThSQmVUcTlrNHpIbE9lMk83Wi90eDJGdFk5ZURDblZYRmV0VjNG?=
 =?utf-8?B?b1VDL1BacEtGMVZXV2paVmZzVjFaMGxiUkRnTmptb3Y0cklTWmlqQ21NeThI?=
 =?utf-8?B?N0RrSFVXT25WWm8rbkUvZ1ZKTVVJaVdxQ1c3WVNBbW5NcXNVWjUyMXhGZTJ3?=
 =?utf-8?B?T1VlZ24xZDE4S1QwZmh3Zy85QXhoSlZLbXgrN3RPb1ZUY09LdDVUZkhvc3VV?=
 =?utf-8?B?YktKRFBockJyTGhSa3BhK3dqb0JiUTU3endGdWx5R3J0R3p2SmxwdjlQVmhk?=
 =?utf-8?Q?VokW8px1SI4yICXxvs2vu8E=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7416014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UXFsNWdvRXU3YlFRVEU4aFVoUU9xWStNUjRXVVovRk9rdGluYzZpUUFZbUZr?=
 =?utf-8?B?QmlMdDQ3QU1XU214OEV0ZityRnlaanVqck0wQjFzVkxvL0FhdHZKM21oeDRr?=
 =?utf-8?B?d01WUGp0aTllUS9qZnRKNmFqd2lHMUZQS0hjY2pXYUg2YlkzZzNIV2hFaGY5?=
 =?utf-8?B?YkxIOWRyNUl2aG9MYTc4VkQ1eXM3bmJUdFlPRWlZMEZCOFVNbHRaNXA4VFhq?=
 =?utf-8?B?YmlpSEIrdHJpT24xY2FNUTVCTE53TjVFaEdUazhhQ0lRTTd0VXQ0c2JqaDAz?=
 =?utf-8?B?cXpNTWxXQnVHSEFzWmhQellOS2ZiMWlBME9LSGk4OU91aHN6dkpYL2xyNG5G?=
 =?utf-8?B?UmQ4RmZqZHBrOUpRTXMxVm5OR0E2aGh4a0RDUGZzczVVZmljMEk3WmExUlI4?=
 =?utf-8?B?dmhGMEhQS1ZxRTVCZE14b3FBdW0vL1dKdDY4Uk9ydmh5SW1zSzFSeUtBbHlx?=
 =?utf-8?B?eXdpNWtYL3l1VUpWbTc1L3FvWUwwRE1GOERFV09jYTRjLzRXR2R5M0Rwd3cz?=
 =?utf-8?B?OVU5S251WWJDN1dqeFhqVzBsY3QwbmpVaFpGSGJ4RXRLOVJqYnlERVNwRkxm?=
 =?utf-8?B?L0pLN1N3cGdOc0xHNG1HRFcyODZvSUx6ZGtjaTZrK0FUSjRrYTcyVWRVbXV3?=
 =?utf-8?B?Rit3VjVYWFM4RTNqaHlZZm12NVZ6SGlFSWFPVHJPY0tvb3BCNUhPYjZSRnVG?=
 =?utf-8?B?bTNSZUZsbHBvWTlTcTF3NzVGcmU1bDlMZUtZRWVOeTFaMllQemRPbnU4WlZH?=
 =?utf-8?B?MDY3aUhFV0hmUGFudGVXUkI0dkV0NWVQUTJWQTg4RCswWnZ3ZFpxbkNML1d3?=
 =?utf-8?B?WmdSd1h5Q3Z0UkFtcHE0dXhYVGhjV1Eyd0tkMGtROWVqYlJvYUlEYS9XelRv?=
 =?utf-8?B?bU5wMUZ1REJxcjhTVy9tMUdibGwrNWJHeXJQcndGQnk4S2ltQlhjWTdMOXBW?=
 =?utf-8?B?V0VVWGdRRGRlZ2RhYjN5WmNGbjlxS2Q2VDV6SWVOSmF3WFhNc3psUFh1c1Az?=
 =?utf-8?B?TURDVHFhRjN2bWhwWGZpSDQwMkRLUXhBMWd6Mk94UVBvUS8wQk5VY3VtZzlX?=
 =?utf-8?B?K3dhQUt4WFJwQThxbnVkSnVHbjBtNmdCQ0pxeXZiV1hNVWF4T011MnFJeS9q?=
 =?utf-8?B?b0ZLYXlqSnJISUhsMGVQS2JGeEptZ0FFWUtmSEhpMlVkYlBEVnpLZ3pIWEJo?=
 =?utf-8?B?WU5DeDgxNTNBL2RySGdVbW1GOWNqdURGRnhjc095aDlzd2F0Z2NUVFJVZ0tt?=
 =?utf-8?B?MHA3WTE5dkJwUEZ5WUc1Z0RSSmM3T3NEREFRUzlyamtzUGRkT1p0c2hINSs0?=
 =?utf-8?B?d0N6RFIwK1lhTnl6dWNtNXE4VS9ZbC85ZDgxam9tTFk0ZHRhb0JVbTFwZnNU?=
 =?utf-8?B?SmN0bjkzTmNMYjlsYi9sT1BGaExyVFVqSHRKVlhUZHNUalo3bTJYS0E4OEho?=
 =?utf-8?B?MmdqaXVQbmw2bVZCbVFTUjQvZ2ZqdEJwZzdjQmdkMFdRNnA4YmR4RXhVR2lP?=
 =?utf-8?B?R0hWRW9zZlJKdlFwMkh0THlvQ3l0MmxVK2Z6bjk1clAvTmtiNCtWdnFLL0NZ?=
 =?utf-8?B?YW1GWVpYUm4vQXl0WlE2RzBNZjVIb3doSU9vUngrTUp3Qk03NnFVRnhWcjJi?=
 =?utf-8?B?eVQyaEJwd1ZFNnA5QVdXMlBkeFVxaHJ0VHZEa3VPMy8rUXhRZ0crSTFMbHhV?=
 =?utf-8?B?U3NVT2xHS0cvVXdnbXBmMnNHdmN2NjBLbzRHS3ZrTGdYanhQLzltVC8yV0Mr?=
 =?utf-8?B?dmxxMmREZjNwdlJoZ3NhU281b0NlREw2NjVxVzJkeW4wc3FldzdQRzZ0dXJC?=
 =?utf-8?B?RHNoMkZadmcxU0Rld01ESGVlNnNldTMwYkxUSXRnNW5Ld0J6czlGdUExM29z?=
 =?utf-8?B?TGpoVlU4UFk1NS9UWlhtQVl6bWJsc2JHQ2J0OXlpSVk2N1ovaTJWZEtYS3U2?=
 =?utf-8?B?Szl3T0FOMUtDL21zMXYrcXRMeExDQVlGUFV4b2x4anlmUzhJL3V6cFdCZlJw?=
 =?utf-8?B?UWFrMitEdkQzeTRHSmlIQ01WeHY5dHc3YTVPZzd1KzE1TmtpS0ppWUFtMHdC?=
 =?utf-8?B?R3A4NTduSDZzeitmNUIyTVIrd3RkUmI5eml1SUlNMFU3ZElFODc5UUprNm1U?=
 =?utf-8?B?cXdFeTBtN0dQNFRlMERKVm5SOEVDRXFNdW9nb1NaenVRNnVjTjdmWVVrY0Zl?=
 =?utf-8?B?aWRoYkZITVZjOS9mYnR0b2huc0F0R0ZvMXNlSmdnL0plQzZuSUFYV3VSV21q?=
 =?utf-8?B?VTFWSWJSa0pVa2c5TTlHS0JZTnBvdTBZUmNDdGpzMjlRZnUvdHdxcHNmLzdR?=
 =?utf-8?B?KzJmNHI4NTNTM1dzK3lGY3VJUDhKK3pkM1ZjanVvK1ZLdGhQT0ZQQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ef467e8f-ff38-48e2-9cd2-08de5e956d8f
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2026 17:48:21.4418 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: C7SNalNyxAUCtZay7vYaHiNirTHNZHRcF4ebekTpt6kzmL4aWvQQ/it6rfUgdP59FsPsSADSBWt4/wjVgaP7EK6kjCg1wEMQjSk0Asc4VIg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9160
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769622507; x=1801158507;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VivOoVZOY86+0Cv4f8822JGOKb1uOh7K5SjH1qB1XsU=;
 b=Ajw7SyqI3JXjhhnosqCdDOALaDkbFAWOm/jUJZXnZv+NUDtq7wWUBKEb
 I7QZncolr7kRL6leaUWdRi8N/mWa1Tf8q18y+FRrJ2JM7xLHGgNiU6gPq
 JeUeLc7+hFOT0PLzLTuG9M3wt1EQ7AJ04oA+JsbDSQ/bOCVKhhIBrhvgz
 Qaq1oUI+WtlaG0l95ExeMdB4tbX3g4RTYvCEWxpQqwvV/gALvcQTASjjF
 G5Sxe2E/3lCYCrVV6LZ+l7DMLMX2+6YBYBlv2jXubIpxXcUp3ct39bS16
 e6RAcl12Q/rOqAadz1mAfrI0aCjMtSRUmzEDWp/hzIvGrl501ZZhPjvDX
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Ajw7SyqI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 17/25] docs: kdoc_re: don't
 recompile NextMatch regex every time
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
X-Spamd-Result: default: False [2.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:mchehab+huawei@kernel.org,m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:peterz@infradead.org,m:rdunlap@infradead.org,m:sfr@canb.auug.org.au,m:mchehab@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,auug.org.au:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,lwn.net:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid,infradead.org:email,osuosl.org:email,osuosl.org:dkim]
X-Rspamd-Queue-Id: 4AE4FA72C2
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTWF1
cm8gQ2FydmFsaG8gQ2hlaGFiDQo+IFNlbnQ6IFdlZG5lc2RheSwgSmFudWFyeSAyOCwgMjAyNiA1
OjUwIFBNDQo+IFRvOiBKb25hdGhhbiBDb3JiZXQgPGNvcmJldEBsd24ubmV0PjsgTGludXggRG9j
IE1haWxpbmcgTGlzdCA8bGludXgtDQo+IGRvY0B2Z2VyLmtlcm5lbC5vcmc+DQo+IENjOiBNYXVy
byBDYXJ2YWxobyBDaGVoYWIgPG1jaGVoYWIraHVhd2VpQGtlcm5lbC5vcmc+Ow0KPiBicGZAdmdl
ci5rZXJuZWwub3JnOyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbGludXgtDQo+
IGtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IFBldGVyIFpp
amxzdHJhDQo+IDxwZXRlcnpAaW5mcmFkZWFkLm9yZz47IFJhbmR5IER1bmxhcCA8cmR1bmxhcEBp
bmZyYWRlYWQub3JnPjsgU3RlcGhlbg0KPiBSb3Rod2VsbCA8c2ZyQGNhbmIuYXV1Zy5vcmcuYXU+
DQo+IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCB2MiAxNy8yNV0gZG9jczoga2Rv
Y19yZTogZG9uJ3QNCj4gcmVjb21waWxlIE5leHRNYXRjaCByZWdleCBldmVyeSB0aW1lDQo+IA0K
PiBTdG9yZSBkZWxpbWl0ZXJzIGFuZCBpdHMgcmVnZXgtY29tcGlsZWQgdmVyc2lvbiBhcyBjb25z
dCB2YXJzLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIDxtY2hl
aGFiK2h1YXdlaUBrZXJuZWwub3JnPg0KPiAtLS0NCj4gIHRvb2xzL2xpYi9weXRob24va2RvYy9r
ZG9jX3JlLnB5IHwgMzUgKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLQ0KPiAtDQo+ICAx
IGZpbGUgY2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKSwgMTMgZGVsZXRpb25zKC0pDQo+IA0KPiBk
aWZmIC0tZ2l0IGEvdG9vbHMvbGliL3B5dGhvbi9rZG9jL2tkb2NfcmUucHkNCj4gYi90b29scy9s
aWIvcHl0aG9uL2tkb2Mva2RvY19yZS5weQ0KPiBpbmRleCBmMDgyZjgyYmFkNjcuLmI2ZTExZWUw
YmUyMSAxMDA2NDQNCj4gLS0tIGEvdG9vbHMvbGliL3B5dGhvbi9rZG9jL2tkb2NfcmUucHkNCj4g
KysrIGIvdG9vbHMvbGliL3B5dGhvbi9rZG9jL2tkb2NfcmUucHkNCj4gQEAgLTgxLDYgKzgxLDEz
IEBAIGNsYXNzIEtlcm5SZToNCj4gICAgICAgICAgc2VsZi5sYXN0X21hdGNoID0gc2VsZi5yZWdl
eC5zZWFyY2goc3RyaW5nKQ0KPiAgICAgICAgICByZXR1cm4gc2VsZi5sYXN0X21hdGNoDQo+IA0K
PiArICAgIGRlZiBmaW5kaXRlcihzZWxmLCAgc3RyaW5nKToNCj4gKyAgICAgICAgIiIiDQo+ICsg
ICAgICAgIEFsaWFzIHRvIHJlLmZpbmRpdGVyLg0KPiArICAgICAgICAiIiINCj4gKw0KPiArICAg
ICAgICByZXR1cm4gc2VsZi5yZWdleC5maW5kaXRlcihzdHJpbmcpDQo+ICsNCj4gICAgICBkZWYg
ZmluZGFsbChzZWxmLCBzdHJpbmcpOg0KPiAgICAgICAgICAiIiINCj4gICAgICAgICAgQWxpYXMg
dG8gcmUuZmluZGFsbC4NCj4gQEAgLTExNiw2ICsxMjMsMTYgQEAgY2xhc3MgS2VyblJlOg0KPiAN
Cj4gICAgICAgICAgcmV0dXJuIHNlbGYubGFzdF9tYXRjaC5ncm91cHMoKQ0KPiANCj4gKyM6IE5l
c3RlZCBkZWxpbWl0ZWQgcGFpcnMgKGJyYWNrZXRzIGFuZCBwYXJlbnRoZXNpcykgREVMSU1JVEVS
X1BBSVJTDQo+ID0NCj4gK3sNCj4gKyAgICAneyc6ICd9JywNCj4gKyAgICAnKCc6ICcpJywNCj4g
KyAgICAnWyc6ICddJywNCj4gK30NCj4gKw0KPiArIzogY29tcGlsZWQgZGVsaW1pdGVycw0KPiAr
UkVfREVMSU0gPSBLZXJuUmUocidbXHtcfVxbXF1cKFwpXScpDQo+ICsNCj4gDQo+ICBjbGFzcyBO
ZXN0ZWRNYXRjaDoNCj4gICAgICAiIiINCj4gQEAgLTE2NSwxNCArMTgyLDYgQEAgY2xhc3MgTmVz
dGVkTWF0Y2g6DQo+ICAgICAgIw0KPiAgICAgICMgICBGT08oYXJnMSwgYXJnMiwgYXJnMykNCj4g
DQo+IC0gICAgREVMSU1JVEVSX1BBSVJTID0gew0KPiAtICAgICAgICAneyc6ICd9JywNCj4gLSAg
ICAgICAgJygnOiAnKScsDQo+IC0gICAgICAgICdbJzogJ10nLA0KPiAtICAgIH0NCj4gLQ0KPiAt
ICAgIFJFX0RFTElNID0gcmUuY29tcGlsZShyJ1tce1x9XFtcXVwoXCldJykNCj4gLQ0KPiAgICAg
IGRlZiBfc2VhcmNoKHNlbGYsIHJlZ2V4LCBsaW5lKToNCj4gICAgICAgICAgIiIiDQo+ICAgICAg
ICAgIEZpbmRzIHBhaXJlZCBibG9ja3MgZm9yIGEgcmVnZXggdGhhdCBlbmRzIHdpdGggYSBkZWxp
bWl0ZXIuDQo+IEBAIC0yMDIsMTMgKzIxMSwxMyBAQCBjbGFzcyBOZXN0ZWRNYXRjaDoNCj4gICAg
ICAgICAgICAgIGVzY2FwZSA9IEZhbHNlDQo+IA0KPiAgICAgICAgICAgICAgZCA9IGxpbmVbb2Zm
c2V0IC0gMV0NCj4gLSAgICAgICAgICAgIGlmIGQgbm90IGluIHNlbGYuREVMSU1JVEVSX1BBSVJT
Og0KPiArICAgICAgICAgICAgaWYgZCBub3QgaW4gREVMSU1JVEVSX1BBSVJTOg0KPiAgICAgICAg
ICAgICAgICAgIGNvbnRpbnVlDQo+IA0KPiAtICAgICAgICAgICAgZW5kID0gc2VsZi5ERUxJTUlU
RVJfUEFJUlNbZF0NCj4gKyAgICAgICAgICAgIGVuZCA9IERFTElNSVRFUl9QQUlSU1tkXQ0KPiAg
ICAgICAgICAgICAgc3RhY2suYXBwZW5kKGVuZCkNCj4gDQo+IC0gICAgICAgICAgICBmb3IgbWF0
Y2ggaW4gc2VsZi5SRV9ERUxJTS5maW5kaXRlcihsaW5lW29mZnNldDpdKToNCj4gKyAgICAgICAg
ICAgIGZvciBtYXRjaCBpbiBSRV9ERUxJTS5maW5kaXRlcihsaW5lW29mZnNldDpdKToNCj4gICAg
ICAgICAgICAgICAgICBwb3MgPSBtYXRjaC5zdGFydCgpICsgb2Zmc2V0DQo+IA0KPiAgICAgICAg
ICAgICAgICAgIGQgPSBsaW5lW3Bvc10NCj4gQEAgLTIyOSw4ICsyMzgsOCBAQCBjbGFzcyBOZXN0
ZWRNYXRjaDoNCj4gICAgICAgICAgICAgICAgICAgICAgc3RyaW5nX2NoYXIgPSBkDQo+ICAgICAg
ICAgICAgICAgICAgICAgIGNvbnRpbnVlDQo+IA0KPiAtICAgICAgICAgICAgICAgIGlmIGQgaW4g
c2VsZi5ERUxJTUlURVJfUEFJUlM6DQo+IC0gICAgICAgICAgICAgICAgICAgIGVuZCA9IHNlbGYu
REVMSU1JVEVSX1BBSVJTW2RdDQo+ICsgICAgICAgICAgICAgICAgaWYgZCBpbiBERUxJTUlURVJf
UEFJUlM6DQo+ICsgICAgICAgICAgICAgICAgICAgIGVuZCA9IERFTElNSVRFUl9QQUlSU1tkXQ0K
PiANCj4gICAgICAgICAgICAgICAgICAgICAgc3RhY2suYXBwZW5kKGVuZCkNCj4gICAgICAgICAg
ICAgICAgICAgICAgY29udGludWUNCj4gLS0NCj4gMi41Mi4wDQpSZXZpZXdlZC1ieTogQWxla3Nh
bmRyIExva3Rpb25vdiA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+DQo=
