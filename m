Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 23426C2B4D7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 03 Nov 2025 12:24:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CAF6E60D89;
	Mon,  3 Nov 2025 11:24:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id znT2mBE61hmg; Mon,  3 Nov 2025 11:24:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E040960DED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762169054;
	bh=qk7X/zAMt4L2mQln/iCjeGbwQ7d1d7Tg7Ny8r646Pc8=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=caGpkvaBzf3FaW3OxG8AkJqrEjUy89KlYXNvnw2WKvNAUEyLgPnhHyJ5yc9p5vO2i
	 alIflmvpJcoYGZZVfGkcluZqTF06KtdwunPjm1h3v7pRSvaS3Xazz3hiV8sjldgFLD
	 Qhf7VSzeVJulDjclicm7KJemSEevGgj+qvMofOrK72cxUfuX5XnYxF5Z+lHLlHzFbn
	 Tio5smEc61J37+lBHg6YHCCRuuZrVPjK/S6qpIRuRmMTjTycNuOu1h0slSmjFGJcDh
	 yEG/vfk2DySp9rrcjBrL6uctAGs3zcZtaqQQGvKQxEHGucaSN/XFXs74qbqqrffvMG
	 GPB0bEtH/DFDw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E040960DED;
	Mon,  3 Nov 2025 11:24:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id BF7F81A6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 11:24:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B1820404AC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 11:24:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DR8uFtsazzi4 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Nov 2025 11:24:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 880B3403AF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 880B3403AF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 880B3403AF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Nov 2025 11:24:11 +0000 (UTC)
X-CSE-ConnectionGUID: jSXL81vFQaGFMTQ7fHSFkw==
X-CSE-MsgGUID: LwatvnGjQjaPpSXOcQOG8Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11601"; a="63256477"
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="63256477"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 03:24:10 -0800
X-CSE-ConnectionGUID: kZcbXyVVSQOdQc0DpRoW/Q==
X-CSE-MsgGUID: db8krbrMRm6Wq4wwSF0Dwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="186134031"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 03:24:10 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 03:24:09 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 3 Nov 2025 03:24:09 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.43) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 03:24:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HpQDtOBinlEMNPpS0EeFcSSVyj5uheey4dHbGCn4mnerfs3FymRLEzX7BH1BRwriXT9SotBbuC1SaBBLxjUmyPePWfgHHBW5et11GteflDMii5h2b+9hewSLhXGyJtisOXocBU7Bb667TAmvZpo5LRqL4E8m6ticySuvRa0MHNVDkW8qhISE44/wGr+yZud6cGJPQF1Kno1PGdwZBju2Z9LKtoqxh/q+VLrePyulCjoXoD50TrOuXM4iNLeTtLVHpTv69MQCXuSsT7vcNxDVJJMApoiRMHKKzCiPEVSWsnweX1YPuMeSVVg8b6bOo8iFjPq268Wfuc2E1UFBoW1wfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qk7X/zAMt4L2mQln/iCjeGbwQ7d1d7Tg7Ny8r646Pc8=;
 b=Q0EYo8ltFrdJhg0GiNyRluuiFUUB/ThmwPMgZ4vFyem313UDaaLaRmS6TW3O5XRIpq5lT5VTL88y3h3GXYDf5LTLZNKWzrzQ3ubTS4zmH64aFG+lZKFxp6B4qm/Bdp68hbsNYJMHw6paEkADHKXtbwCbSIBuJ2PI7uz7omMrEgCJMomM9VcwemJLopRu2M5ouOcme9GT7Zy7+drR8urbr5VfuLqGn0hYONmIL4RaAqgqBnT4V//SNzKkX2ZOKVc7PgO/RI2+bpRtLgHcqU+bBeZ2hNHTXTZJO/lVOcHzNYAXa0L3icPA+8FnUcRldVI+TNt2IMk/YUxgzImeHnyIUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by LV8PR11MB8724.namprd11.prod.outlook.com (2603:10b6:408:1fd::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Mon, 3 Nov
 2025 11:24:07 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.9275.015; Mon, 3 Nov 2025
 11:24:07 +0000
Message-ID: <eaa98c4b-392a-4070-8670-7d29558da20b@intel.com>
Date: Mon, 3 Nov 2025 12:24:02 +0100
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, ALOK TIWARI
 <alok.a.tiwari@oracle.com>
CC: "alok.a.tiwarilinux@gmail.com" <alok.a.tiwarilinux@gmail.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "kuba@kernel.org" <kuba@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>, "edumazet@google.com"
 <edumazet@google.com>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "horms@kernel.org" <horms@kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
References: <20251103090344.452909-2-alok.a.tiwari@oracle.com>
 <05a823d2-231d-47de-89fa-9648e47cbfa5@intel.com>
 <ce91f141-102c-434d-a8c4-1d8e7ab5181d@oracle.com>
 <IA3PR11MB8986A6E0A4954131F3ECCE3BE5C7A@IA3PR11MB8986.namprd11.prod.outlook.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <IA3PR11MB8986A6E0A4954131F3ECCE3BE5C7A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DUZPR01CA0292.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b7::14) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|LV8PR11MB8724:EE_
X-MS-Office365-Filtering-Correlation-Id: 2db018d5-b1ac-40e6-3938-08de1acb807a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?R1FWQUJ2M2pDZ2ZNZUM2RnQ2a2JLT2VpNEdYcGF5Yi9pcXdsSm8rU3l0bERJ?=
 =?utf-8?B?c0haYjZXU3BrelBJQ2RjYVZuMjE1V1l6c3k1WXVFWFEwY1dtMWhCKzByZEsw?=
 =?utf-8?B?QWZFUWY3VFgycEFwN2pENldsZnpUZ2JybG9xRjlVR2RZKzlpSkFPUnV0VGpU?=
 =?utf-8?B?ZzVUdUNtZjFWN3prRkJSZXVXQVdlZXJZU0tJZW0vcVR4OHBCZk9sZms4eDY5?=
 =?utf-8?B?cEtIQ3VBN0tNR1IrRFl2RjV3MUpXS0Y5ODlCUDB5TjV3aVZ0N1FRSGlCUGpz?=
 =?utf-8?B?Z3FkYisrOWxTeVM0Z3VqYXNiWkU0eWcwbEsyQmZWaCtMMEIwa1ZON1pPZEtV?=
 =?utf-8?B?aW9HdzE1MUN4QWNMaEdtYkVKUG5OTDVmWU52M1VBaHBtYXJsS3c0bllxTS9O?=
 =?utf-8?B?VjdJdW1VTWQvVGVUaFdiWXBmN0dIeGwzdE5HMnEwVnBPeWw1Z1JyQ3V1TmFt?=
 =?utf-8?B?ZHFpL29SR2xRb3hiY253YmFxckZmMENQRWE3QytCdU1FYW5EaTMvZGMrcDFn?=
 =?utf-8?B?emhXZytUamFXL3ZKbTZJdnpRSG56QzFra282Vm8xMG5qS28zbllMdFl4Qnk3?=
 =?utf-8?B?NHFKdm1wYWorYzdDZjc2YWw5RnZ2M0Q3M0tFTHgvdGZLV2ZaVGREZGtoZXpG?=
 =?utf-8?B?M2dJbmZWWlZUZlpaMEJiVS9veHp6VnBHV25iSnVCZTI2TlZudi9OWlZiUTc0?=
 =?utf-8?B?R1hHeG93TGFqRVFabmphZmx5R2xaNWp3UnM3L2hkMXJoeVE4Y09CbC9IZGZy?=
 =?utf-8?B?S0FEWUlXQ2szZ2xMTkpFRGFsdnc1eThvS3NVVTdEbkJ2Tlp2QndPVGdzZXQ3?=
 =?utf-8?B?TWUvcEtZZEtxb0RETmlFYlFPb2tRVG1sMEMrZ0RVNGVIVXJUY05yb0VSV0lw?=
 =?utf-8?B?bUVOWnZ5aFVqRkdNQ3F3RExkTU1raUVvSllLZW9WbnF5Y004b0dhYmdTZndC?=
 =?utf-8?B?Q05uNTB3N29iNTFmL2xPanZLSzlQSEl0MWN6cVVrajRuWk5ORFZZWGpGVmlT?=
 =?utf-8?B?U3QxZ29pNWJ4bHp6dXJxeVJOVGhaQ1lnZUFWZHFLOWM0V0hjRmxrcmxpWVRE?=
 =?utf-8?B?d1I2TEUybXBpNlRXWDJaWHhlaVYyTVRudTRGM1YvcFlnK3B1eGU1cENtb05N?=
 =?utf-8?B?SW9hZEttcDhIU3VWRGdXNUtXR2lRZXlEb2p0eUZVbmprV0JXMS8wVWxNcm9X?=
 =?utf-8?B?K3VvYVY5YXVib0dTN0IvYmJtMURJMmtMWnkxd1lJSEVwZjFmR0krMFF6cGZI?=
 =?utf-8?B?dzA2R2ZBblkwREtjUDcvclVpR2lhNmppWGdlZ25kWkxTVFZ6cVQrR1l6dTFR?=
 =?utf-8?B?d2k0UWdxRjJnZSt4ajRsUWhEcHluSkw2RkR5ZVJFUFFKQ2J5dHJqYjMzUXFr?=
 =?utf-8?B?V3dHQmY0enRBTkZXTllwNm5kVEg1YUlWOUcvVVBFdzJ6WEF2SG5SQUp4UUN3?=
 =?utf-8?B?MkR5aXZuTkNoNitoWjB4OEVPSFZrTHk4MTUrU1dBSjlVVllramFVNUo3Q2FT?=
 =?utf-8?B?M0tCQjB4QlJ5aEN4MHhkbFBMSk9tSDFTc09pYVIvRHFsMEQ2Yk5JcU1zVkJF?=
 =?utf-8?B?OXNIK1llckFFUXdUbENuejBVVVc0NWJOck9KQ1RiWVQ2WmVUK3prdHVpaFdP?=
 =?utf-8?B?VDd6bTVBRGJxRDlyVm9LaUNuU0xzZW9QdjdERW9FZlI1UlVwYzBvcmJyNEZ2?=
 =?utf-8?B?cFFTNXdETlcxaVUzMW5OeE1NOXFvZUZwa3ZNZmRHSnJUcS9UWEhZMzFPTmJP?=
 =?utf-8?B?VktSd3Q1bFpRcWhTQVhFeUEyUUtmUk8yaDhxM1IvaEg5RFgvVjYzL29oWTVp?=
 =?utf-8?B?VFh4WldsbWJTRnpCbEVnanErSmV6WUZXUFZDcXdNUHdxd0ZOV2lEakwxcmNm?=
 =?utf-8?B?UVQ0amhNVEovRlFsNGpSK2F0T012MXQ4bmFhd3BlVzlmNkE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MGd4V2xpMXpkSTl3RDRrQUNGZCtuY1BvWGdMMXVmbVFGMnVScGZoc01oZ3V0?=
 =?utf-8?B?Rmlhby9Rb1FrY0NHUWhuMFIrdGF6VHNGUTZYMWo4ZzlmbUVDWVBCM2RFU01j?=
 =?utf-8?B?NXg2cks3czdoQ0t3QjRaOUxFdUFVNnc1bDZJcVN2MitMR0VoajV0Z2sxdW9p?=
 =?utf-8?B?clN6NVhoMFo3ME5FSUNDSFc5K25UL05qR0lPTFpGbTVpNzRGYWFESkpjNi8r?=
 =?utf-8?B?NXIyd1dOOFpoZ3NPaVFZb2hPalBWSzFzNkVrOC9QYlhxeUtlMzFqWDY3bzBW?=
 =?utf-8?B?TlZpdzhCcHRNQlFPQjFwWm5yRlBSSXhETXd2ZXZNQk8rZ0VuQWlmbC9NRFhq?=
 =?utf-8?B?OWN2dVpJeGIzVFpqWFFVWFd0aW9ZU29pS2hnNDlabk9TT3BJOWVZS3pHYlJs?=
 =?utf-8?B?Z0svZEp2MDJ2QU5SN3E3dlVLTzc5eEp1dnNzb29CUWFoNEpKZ0dUSXpna25W?=
 =?utf-8?B?cVVrdGJ4UDlmTU42Syt6R0NmTFJ4VWdNUXRoZDlWcUdtdXlqRmw2VGsveGxL?=
 =?utf-8?B?MURMTlB4Vk5QRUxTd25vakhST000SWFoSm1QQk4rZVA1Skt0MGV3aXJmNDVH?=
 =?utf-8?B?VlZaQ2l6eDB6bml5Q2NwRFJIUUd5UHh0WmU5NGk1U2lNNEd3V3BBcWxrdFhT?=
 =?utf-8?B?N1RlK1pKVGp1RGlpbVBLbXNMcmtvQUNHMWU4QS8rQXJvT21ENEtJaGxUU21a?=
 =?utf-8?B?SWFXdDltZExCMHE1M0t4OUowYlA4M2RDemY2c0tzZXZ3T0xiT3YraGViQytu?=
 =?utf-8?B?L0luYXFxZWZaWWM0WTA0V3p3SnFQUEpJVExoVnNnUDl2M1BaNmdJaGZzcmUx?=
 =?utf-8?B?T05xWVQrcnI0bytXT2hZMjRFTXVDOEovWG5sQzBETnZ3a0RnYTkxajZLZ05W?=
 =?utf-8?B?YUZuV1RhVGJQZy83dTREUTBlWjhsL0ZZMmZ4anNqTlBFZmhHMTY5dnJNRXFN?=
 =?utf-8?B?c3RjaDlwZVNZWm0yYTR3UHN0eWF0VEhBYlFEVXRhUlhNOEQyenpOcERodmsw?=
 =?utf-8?B?TzA3YWYwL0w2L3dIaDUyYklLQjdrWU9mL0FlYi8vWTcxdlpuVTNBR1FZbG9R?=
 =?utf-8?B?VnJYbWFiRkd1bEZ3OGNsVTJoZHIreU1jSnFPRldpcUtyNCtUVkxoOXMrUHQr?=
 =?utf-8?B?MDRhdmhmRDFFcmVVeERpYXpMN1FCY1ZYR3pNYjF4UXpPRWZRbjNhMG53NXlZ?=
 =?utf-8?B?bzc3RGFDRmcyK3NEMWtBU1NKWVZlOUNzbDZVemIzdWpjZHBIbVVhMHFCWlE4?=
 =?utf-8?B?VStPbFZubzFNMFZEbk43NWxSVW9QYnZqbW5WMWkyRmNPbG9ETmh0blVidExR?=
 =?utf-8?B?eUgvZkxqQWJyREEvS01pN2JxbHh6V1pnaEYxMnNiei9mZ29zMjFUZ3B3emhs?=
 =?utf-8?B?QmlqYmx2cXdwUk11TkFyRDNWdGJRVTVHYngvOEJNYVp1OEJRSFRnbGVlTmN3?=
 =?utf-8?B?NkhsZDdSc29IUVd4VktKek5lUklVcmZWVy9qV3RVSHEyUVRzYUpIN05GQURC?=
 =?utf-8?B?cW9kWkE1dW9NMGgzT0kwdmQ1TUNZQUFrTHRWVUpBdytWc2wyejJqVUhGUWpT?=
 =?utf-8?B?L3dxL0tNbVEvYzhhV0szWkJrM0xxOHBlZ2FEVGlXSDhieG1uYTNyeThwZkdk?=
 =?utf-8?B?V1RLMW9hU2Q4T2ltOXRBdng4M1ZubzNDOUxpN3AraHBrQVN3dk5FVVRTQzRr?=
 =?utf-8?B?ZzRheVVuZFpLTW1xZm5WMHdPUVNsR1phVVZuSlUwZUpsZGRvNm5GdDFoOTFp?=
 =?utf-8?B?bzgvekNPaE96NHM3TEp4M2RnUkllcWQwZm9WWmtsNEdVQ3FKRTBzU3FZMmpV?=
 =?utf-8?B?eVF3d3l1NE9XeGExdW9xWWd5NW5IRTdrUzI1ZUdsWGF4RU9BanVSNVZ5eDFB?=
 =?utf-8?B?Q1ozcWV0dkpvdmNjek0wKzdnbE5oR0dWd3ZIeE9pU1BNS25lMjRlendwUk9a?=
 =?utf-8?B?UGZKTnFxWWpFNm9JbEFLYXVYdkRQSiswS2JHSTlseWQxc2dPRTBZZ2poS0Mx?=
 =?utf-8?B?a1YrZ1FsMEhyYnRka0VJY2p2Y25vWitvNGkzNVMvaEpCZXIxWkNhaWpscXBR?=
 =?utf-8?B?Y3dHZXR0YUFKeWRsNzU1eXRrV0NFYW9QNXVRU1ZxV29uM1k1amZRWk9HZ3Q1?=
 =?utf-8?B?c05yaGNvaHdOMTNudVlUMEt0bjRjeEt4R1FObDNYYk1ZcmR4WHYxS0VYejdU?=
 =?utf-8?B?b1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2db018d5-b1ac-40e6-3938-08de1acb807a
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2025 11:24:07.1189 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uPUmYSzo1ApUDVez0mJXMe9nURMuMuL/ILYSH87VQtQ3UAqmhXir3cHkQrUjXZn5RV9l5rgM4plr+mfrA5hWLeNXk1Ag99v9OhwPytTOcko=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8724
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762169051; x=1793705051;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TTUJUe5BEzevA9pYM6LS65qkYNMCAoTCN9B5LMhUojM=;
 b=bFqh+XUHxQR4QxKHhkTpIUDVitj9s94tmgiCb7uPpl+11en7sfvRQAoL
 0uyIBWAdx0ST+PDCb+i7KVFDya+ywW+e3QmHmF6zcy3ln5w5bUzITYbOz
 gdHDm/R33iKoQDDmskAHyZVkwta0ztRL8a7eSGvDYxRIzRpjA8PY3ajJg
 Ms4XI8pjr68d/6OvQ3XNEHyAGPmf2cJa1emHUcLDeRCdQHymwjB4JctQe
 8NfBNebaukEuqm7Ot81fhfLVVTOIZLdVfCz12d0AXFqWnTyXSsuWY0mus
 bkuDGD/fpCg+wGX2kIGjIPp1s/q87oJwm1SFY/n/2PE/2L59q0FEfU7Ni
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bFqh+XUH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [External] : Re: [PATCH net-next] iavf:
 clarify VLAN add/delete log messages and lower log level
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

On 11/3/25 11:30, Loktionov, Aleksandr wrote:
> 
> 
>> -----Original Message-----
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
>> Of ALOK TIWARI
>> Sent: Monday, November 3, 2025 11:17 AM
>> To: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
>> Cc: alok.a.tiwarilinux@gmail.com; Lobakin, Aleksander
>> <aleksander.lobakin@intel.com>; Nguyen, Anthony L
>> <anthony.l.nguyen@intel.com>; andrew+netdev@lunn.ch; kuba@kernel.org;
>> davem@davemloft.net; edumazet@google.com; pabeni@redhat.com;
>> horms@kernel.org; intel-wired-lan@lists.osuosl.org;
>> netdev@vger.kernel.org
>> Subject: Re: [Intel-wired-lan] [External] : Re: [PATCH net-next] iavf:
>> clarify VLAN add/delete log messages and lower log level
>>
>>
>>
>> On 11/3/2025 2:57 PM, Przemek Kitszel wrote:
>>> On 11/3/25 10:03, Alok Tiwari wrote:
>>>> The current dev_warn messages for too many VLAN changes are
>> confusing
>>>> and one place incorrectly reference "add" instead of "delete" VLANs
>>>> due to copy-paste errors.
>>>>
>>>> - Use dev_info instead of dev_warn to lower the log level.
>>>> - Rephrase the message to: "Too many VLAN [add|delete] changes
>>>> requested,
>>>>     splitting into multiple messages to PF".
>>>>
>>>> Suggested-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>>>> Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
>>>
>>> thank you!
>>> just two minor nits, but the messages are good already, so:
>>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>>>
>>>> ---
>>>> https://urldefense.com/v3/__https://lore.kernel.org/all/47f8c95c-
>>>> bac4-471f-8e58-9155c6e58cb5@intel.com/__;!!ACWV5N9M2RV99hQ!
>>>> MulRvlOtC3JAON-O816_nR2P2geYBHDIx86XOr_i1afc9gjSrXfpcVwFmP6uM0p1-
>>>> kFN64zBSLjwS3XvTDQ6nJ5R2hyIaQ$ ---
>>>>    drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 12 ++++++++----
>>>>    1 file changed, 8 insertions(+), 4 deletions(-)
>>>>
>>>> diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/
>>>> drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
>>>> index 34a422a4a29c..3593c0b45cf7 100644
>>>> --- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
>>>> +++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
>>>> @@ -793,7 +793,8 @@ void iavf_add_vlans(struct iavf_adapter
>> *adapter)
>>>>            len = virtchnl_struct_size(vvfl, vlan_id, count);
>>>>            if (len > IAVF_MAX_AQ_BUF_SIZE) {
>>>> -            dev_warn(&adapter->pdev->dev, "Too many add VLAN
>> changes
>>>> in one request\n");
>>>> +            dev_info(&adapter->pdev->dev, "Too many VLAN add
>> changes
>>>> requested,\n"
>>>> +                "splitting into multiple messages to PF\n");
>>>
>>> perhaps it is too much bikeshedding for such a change, sorry, but I
>>> would rather remove the newline in the middle
>>>
>>> nit: another thing that I would consider is to differentiate the
>>> messages (v1/v2 or A/B, or whatever) for different protocol versions
>>
>>
>> Thanks Przemek for the feedback.
>>
>> I initially had the message on a single line, but checkpatch.pl
>> reported: "WARNING: quoted string split across lines"
>>
>> To avoid that warning, I added the "\n" and split the message.
>> I can drop the newline and suppress the warning if the maintainer
>> community prefers.
>> I just wanted to stay consistent with checkpatch recommendations.
>>
>> good point, I can adjust the wording and add version tags (v1/v2) now
>> The messages currently look like this:
>>
>> dev_info(&adapter->pdev->dev, "vvfl Too many VLAN add changes
>> requested, "
>>            "splitting into multiple messages to PF\n");
>>
>> dev_info(&adapter->pdev->dev, "vvfl_v2 Too many VLAN add changes
>> requested, "
>>            "splitting into multiple messages to PF\n");
>>
>> Thanks,
>> Alok
> 
> Thanks for clarifying, Alok.
> checkpatch.pl warnings about split strings are advisory, not mandatory. For log messages, kernel style generally prefers a single, readable line rather than introducing "\n" just to silence that warning. Multi-line messages make grepping harder and are rarely needed for short text.
> So please keep the message on one line, even if that means ignoring the checkpatch warning.

there most important rule is
"do not break (split) user visible messages", and checkpatch is aware of
that. Only then is "do not go too far with characters in given line".

> 
> Something like:
> dev_info(&adapter->pdev->dev,
>           "vvfl Too many VLAN add requests; splitting into multiple messages to PF\n");
> 
> Same for the delete case. Dropping the comma for a semicolon improves clarity.
> Adding version tags (v2) and adjusting wording as you suggested sounds good.
> Thank you.
> 
> Alex

