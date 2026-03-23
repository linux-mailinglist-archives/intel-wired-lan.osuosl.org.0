Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4DBpJrxZwWnbSQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Mar 2026 16:18:20 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DAAD72F61E1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Mar 2026 16:18:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 359008228E;
	Mon, 23 Mar 2026 15:18:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o7ULTdVvGxmz; Mon, 23 Mar 2026 15:18:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5341A82316
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774279097;
	bh=hioj3wKALlVfRKQ1RyVekM5YjaVyeGr6N+Me5VgvQLY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ds6MDIepHPcE1dYlABTQgTyvFJo3+f90a4DXtVXcsnltS+sm/6JTKycZ84ddkOpCH
	 6Ab16TkVVWfftJTHLqLuou61fRJjHiAhNfRmqTa757aTzbHAAnd+smq1wyde1Jywue
	 ymcRegB7DR2PgZ3ZdBI34VtSRzYF5ZSbgQexH9OKnPQHp1/DODj5Q+w1X3PpigtjHp
	 pA0DnsFnnKSNZ8ND5oaUb49n2HgYzbnPRBczHHsId6oc1EmRcOVfg5xroJp5GroeJX
	 zjNqM2NsNE25U0g+6Wn+Z4TLCzINQ0YHII4jAp7qyF7yHGcuBBE2yecBFOXnBnq50a
	 qHFbQdvCtcMOw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5341A82316;
	Mon, 23 Mar 2026 15:18:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5AE98F4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 15:18:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4C1F5607D6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 15:18:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F05TFnxmLj0J for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Mar 2026 15:18:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6848D607AB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6848D607AB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6848D607AB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 15:18:15 +0000 (UTC)
X-CSE-ConnectionGUID: j4YNYAj8Q2KNbzUdDb1ctg==
X-CSE-MsgGUID: RQhD03gyQNKabfw1tHvR9w==
X-IronPort-AV: E=McAfee;i="6800,10657,11738"; a="86646973"
X-IronPort-AV: E=Sophos;i="6.23,137,1770624000"; d="scan'208";a="86646973"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 08:18:15 -0700
X-CSE-ConnectionGUID: inXFJxzuR7SwOTrpfnxz5w==
X-CSE-MsgGUID: vZiEHdNSQiGqN7oD/+h3zg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,137,1770624000"; d="scan'208";a="219677678"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 08:18:14 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 23 Mar 2026 08:18:14 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 23 Mar 2026 08:18:14 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.22) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 23 Mar 2026 08:18:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OXKMCO9fDuIHYTbt94AOUw69tbKooJ6qeqKlkNTMcDhtLGHOGvGJwZ4qfvC2nlayHh0hX8oukTe3vDg80XqxJRNLfmUwN5fM1lTHRET8JWDPoQA2kAQi1QsAmnE9x8/LbsnhAmEz5xziNTZoXGqhkepwQdassjAc3nR0YSUhKg4YaGpYYA8IfCKcmZ2fHNyCivbmK70zSuRr5RMatCKaLGYhCkNPx3xtSVSGZcIQjpvIuO9Nc7n2qr6EPuMXpEjPRNZjDVkDXkPgABahCeJaTqFAaLUIt5vqhx09XdCpmXE01+lQ6/8XvyPNyBdZEiYdR55rEzB8G5ullPkmE4b0XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hioj3wKALlVfRKQ1RyVekM5YjaVyeGr6N+Me5VgvQLY=;
 b=bfh7QCTRsiRf4t8c7jkAJ0iE4a/SPiGWtY9FLlymxfg9LLRGRlVIJuEfLVEMKW+u8nYerAJ86Rz0qFrTjDeIutyqxSOFfTYM6VPs2bSRIR06dMeuTFZd6pK6wH5oD+OHMUqL5hnAdfN6WiWqrgChCLbaQkovzXojHo2ffwGA+rqWPtAfOAZWRuJZVkBdSI1xuZ/b9KF7KH7HA/MqEnpAfof/Gqzb0bC8Hb5GoGnJ3+W1J4iZ+i7chUFWBqo1dX25wDRdH7UzKeWO6a8FRZC+26jqIbjmUGa8RquPFHyuAZCHYXI+fTGWzPeEGOqP17r44FQz9Tpc1j1qxXeKx10v1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by DM3PPF96964A2A1.namprd11.prod.outlook.com (2603:10b6:f:fc00::f3b)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.12; Mon, 23 Mar
 2026 15:18:09 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311%5]) with mapi id 15.20.9745.019; Mon, 23 Mar 2026
 15:18:09 +0000
Message-ID: <4bfa0e2b-47be-45b6-ae32-1fad3d184392@intel.com>
Date: Mon, 23 Mar 2026 16:23:04 +0100
User-Agent: Mozilla Thunderbird
To: Jiri Pirko <jiri@resnulli.us>
References: <20260323132136.13191-1-przemyslaw.kitszel@intel.com>
 <fc7iebxveew5yi2trlpumcmugwzerixdm536kvgp5hlxmm4zw6@vmcbn76n7fvt>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <fc7iebxveew5yi2trlpumcmugwzerixdm536kvgp5hlxmm4zw6@vmcbn76n7fvt>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR03CA0051.eurprd03.prod.outlook.com
 (2603:10a6:803:50::22) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|DM3PPF96964A2A1:EE_
X-MS-Office365-Filtering-Correlation-Id: e26affc7-e1e4-49f2-078b-08de88ef63d5
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|22082099003|18002099003|56012099003|7053199007;
X-Microsoft-Antispam-Message-Info: OzZL4Xp7Bs0eCPznIl4cr80f9MpPEN1n3FzREc/xOCcJHuVtqd7Yoo4dLQglZL1xGEvOhJmR9OMNHEBvbhtO8uhijjoOIXctJgvWE1cUoUd5H3fhrOxtySnoW4xFDqqxLr/R5Ve0p395tgDTfyJFeZvm1MkZ6myt/Q7DEYbbDQM0b4gNv72bIEhQwbe5XMZX3eBp4Ta8fAfPVDiuLez6oSaFqoOySYz/AihFOLO/pwxqpljzq/CTXRhJfAxr0RSCalgvJlhdq2Yzy7L2CVw9vB9d6D2TGJGEBwBELPOS/iiuxv2iV1VaTsQNdR9G3+R/gpDYTrt+nTby3R4vsnLQVoQTdUsre3YQzGD26v4dh5ULqe4eAC5DqxxgTbv3hotP1mK6OIaMkf3ccwUEgWd42HBLWg5rk4CRj4ct8tmOByt6AuM0yddq3Jky7vxeZ6Cf9//ws78baV6Vugc4KtqHwgP5GuaptRrFE5/fId3clT8BC+tmgi0HTxXyNt/yJqmvp1M/kaJci6nC/x1XjWm5ZAa+gx5nbU8u4dRkrV2dxseIgBt05IPhNUt/MTTagNhIM0J1uyRtinSzs5hmc/YaN4LPNWbSwxMMcC8OeJ7KhiOUqofN3LvocjtZmiE9cLjMbZvsCrmKBDGBZuJvArnNA+COwSKH3Qq+kbM2+CKHLIIRa1u2Xhr3DwH53To7ecqx5L+n0KzinZ8yFIMJ5OpiWjv8Q6eh7UH7jBtMGCw6bR8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(22082099003)(18002099003)(56012099003)(7053199007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NThnRHdTK2Q1TGtoeS84QTA0dEI0TVJRWG0vS0kySlExRDlTQkdnalNxQVRn?=
 =?utf-8?B?ZWFuTnFMM2R4T0tLZThRcFVNN28vb2NteEtGTWd0QnJxd3F5Z0hkY0R4T2li?=
 =?utf-8?B?OE5JQ2ROc3ZsM0EwRkxIZzRzSzBsQ1hyUEpQU1YweGFicnh1UTdSZ20ra0ow?=
 =?utf-8?B?b3pyMnVTdzRIKzhtelZ4UkEya3NsQml4SGRmV20yaHVycklYeURlR1VkRWw2?=
 =?utf-8?B?Q0RCNmp1ZzhlTGpiUDFTREFtdzlwSmh2T1ErWEROdUptdXVLbGRoS1Jwb2tD?=
 =?utf-8?B?bEFXTGozdVJRTW1LSXFHVndWam1rajNzVFZxSk1YWlMvZFhJRzBMek1tbkFI?=
 =?utf-8?B?Rk1TM1M4SWJFMHIzbkpIOEQ2YVZlaFJ1OTJPTzRBMUJiK1lWQ3VSdlVXY1pE?=
 =?utf-8?B?TG5SWmNTYnVQeW5wMEdJR0VEQ2tySThkUHJHYmFZZy9OOU9odkVLdzdpTDU1?=
 =?utf-8?B?MHlWaEpBZXliZ3ZZL3Z0dUJYODh1M2hDUGxBUitqdTZhZGgvR2RvKzA0bmxj?=
 =?utf-8?B?N2EyTThHUFdVQ2VtSlVaK0tDSlpmaEhnbUpCR0hiYk9YbXpJeUFwbW1xdzgv?=
 =?utf-8?B?Y3ZmZG15b0F0L21razJ6bE51VXhsUU1RdzR1YjVSUFNVYW82aHhWM1VNM2dx?=
 =?utf-8?B?bHBGaFM4Z2VrcnB6cnRsQzk2aWsxd2s1RHBhMTQxUnVEV25rRm1OclgzS1lK?=
 =?utf-8?B?amJpQW9wWGsrakorR25HM1ZRbnE5TmpvOUxFNXFsOGNkRWREczdoa0ZDTENu?=
 =?utf-8?B?b24zQ3BwMEVhZmI0cTBFeUdsUnhXWlVYNyttQytFSVI0eENTbEhucTBLQlZz?=
 =?utf-8?B?SlQ2Nm5FaWE0U1Avbjl2Y2VaejNZbjVSWFZuRXdRcE9oWElYQlBQd2hmYUN4?=
 =?utf-8?B?OFU1UVZ0akp5VTNtMnhrV3lFQlBXZ3grYTR2enE2ZEJ3d0cvVDdiNkJkR01B?=
 =?utf-8?B?L2dMZUF3emhLTkVjV3dwbDlYaDhKQjV0LzRBS041MThKRDV0VFNyY1RyZnZu?=
 =?utf-8?B?K0EycWd6SHpoWE9UNCtFckdhcnc5TDV0TnhUOW5MUkhaZDVsTGFNcEh4K0NQ?=
 =?utf-8?B?eUhXSFRYcHFIWWVnaG9FUTJqLzZnUEczZUduNWh5S0tISVY2M0JkcE1QaGpP?=
 =?utf-8?B?N3I0SExzTTZnWnNxam5XVXF1MEVpcUpRR0RnSTFhSFYxODJ1M2xTSTdMSVM2?=
 =?utf-8?B?cHpMSTFSM2hjQnptZHlBVWhuWHNvdDBjd3VqdnpSZEd1cTI4bVBZREZsWXVL?=
 =?utf-8?B?Zm15RFlUOUM2V2ppMG9kcVFYcnV0N2FFOUR0WjhiWjQyakhhN3owZmV0YWtP?=
 =?utf-8?B?RkZDKzd6aE12bTBwOVFZWXMraVF5NW5SS3JST2w1Mmc5SFhGNWxLRnZKK2JW?=
 =?utf-8?B?Mzk2MGpPMlVLZ2xDaFB3b0ZDRG9rTzZQeVVWYVF6Y0M1eXB3NGgzaExtby9l?=
 =?utf-8?B?bGF5VjRJd0tONU5oRkt5QWVxb0d1ck80UW1sMTVQNE0xaEtYb25Melg4SUJ1?=
 =?utf-8?B?dDViY3lWNERoQndzTVBJc0V0WnVLT0Y3ajdOQUcva2hlYXFjTmxhSUhxN2NJ?=
 =?utf-8?B?aTh4NDlYTGM1WFFEbHVtUEpRSEVEMXRyQWhVVHhBZzZIS2IzNW5QbHBoNDg0?=
 =?utf-8?B?aUl5QTd5ODB4c1dMUUxzUFZYOThXY0llUDBabkJqcFd0SE5VZ2NUS2J6T1g3?=
 =?utf-8?B?UEs0YkJseldOVElvdXJVMlo2N0psRytndFYydmF1SW83QUJwRUFFWGtVOU9T?=
 =?utf-8?B?RlZreDBKeHlOZ2hsWnFmSWdTdFRDaGRvNHF5UFRCS3F2N1R6cnRLUFc0ZXNs?=
 =?utf-8?B?dEJoNE9wTEJjVkNMZE5ObWxud29SM1RhMjFjaklXTGlXNUoxci84N2tnR2Zj?=
 =?utf-8?B?c1pFZlVFUXV6ZEw2bHdwbTBZODArTXNiblVFUHZVUGUwdVRrZWE1MXB5YWt2?=
 =?utf-8?B?cVY5TjdiYTYrTjB1QUdlUko5a3I2cGJpbVNkaXR5UnRWWEg1RU1RWllzZ3dZ?=
 =?utf-8?B?N1JlZ2JuQmhpR3Q3WUdORGVBVFU3OXlsU25kNnN3b0psTDEyUXpTWWhYZG9w?=
 =?utf-8?B?SEY3ZkFtS0EweXE3TGtmbjFvT0d3ZDJBMTFJWkxsdGM1c3VlVy9saWoxUXdZ?=
 =?utf-8?B?OFRnSkhzaHpEOE1PTWx2aWJOb1R5VUlvdk9iZTY4cTlPQTNqY2dWME45eWRN?=
 =?utf-8?B?Wi9QS1AwbWcramhac200MkhwMm83QVIxU1RYdWZ0akd2K0U1YzlQcGRlVDFS?=
 =?utf-8?B?TFpaRU9OenZSdVRxSktQdGxJbU5iVzlYczhucGlkV1pXTER2YkU2UlpYR2tZ?=
 =?utf-8?B?a0VkK0VaY0FTYVd6RHZqZHFYYmkxV2Q0bXBVSGpMN3FiZmZzckwvYkg1MFV5?=
 =?utf-8?Q?J8pkiqjejnHRtQcI=3D?=
X-Exchange-RoutingPolicyChecked: C0KRZIro7Xj702VcURKJqO1REZl5WRSJAD6kxUWNDbFK1bEwUIUVsimpw6LKlHeam2PY3CA9s1BHA60Ftt9JWm20ZfbSDT5sRF9f4FDtw2+9sWKugX8uBh/Db1J64UAibZyW3Kj7R01eSpnVathUAvr9Dy/PkhAWj37/tfgtBIkHVThEnR+viChMX/7XO4ye2DAoeiiE0JuHP9luol/xOg3sgyHy5e6i29cnzq6sjk3LFc+EKgAVIndrgNt5MbU4OhTmZkc2qPOy2xjUAHYgdKHGCATxIKISRt8zYiSykh9hNxxebdiifIUua/Gsb0+ZL0gG4QV/DX0DiL0JaTrQ8w==
X-MS-Exchange-CrossTenant-Network-Message-Id: e26affc7-e1e4-49f2-078b-08de88ef63d5
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Mar 2026 15:18:08.9758 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DaK3GZYq2/82pvrzbonBMVxyyBA907fxhdp6iuRRM28CFOyCQJF/kBhBx3u1lAWlNfGYjBu6fHZDK9N2TGWUr4EbAkCQGpiJ3zXDqV28sjY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF96964A2A1
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774279095; x=1805815095;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=z5oDSX2HW4aGW7lEfpssym3+mxzy5rQYRdvkqOoqcLA=;
 b=FRVNUoqev2+UscJcveov4ctaRGmYybDAzKTV1gwHjhfPce+UM/ButulG
 9mbTcEDlTybrGRB4a4f9Xr5ROV/rQlwNwltVkoh2fc0Ldork/QN+rDJ7T
 +2aYF0vjs6jo7XQ1UqoZYYFx4GG/F2M2eol6bH/Fl/gJpRtdn5O+CBhq1
 FekcKO6i/XDJ4N47BVjHeVKpN0k8cnKkVsBxnlRcuofskNjKcP3Xnffhh
 LHmXIQw7Gb/BshTe0rXbuZqGYQ0truyJkhzxIyWqOjlt/wAaXQltGJx/H
 UGcLhxwVl5/vgkdlUo/GptbzMELWrprsxgb5qIM/qG+JZ0BZpV4ntMjtz
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FRVNUoqe
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] devlink: unify
 devlink_shd_get_priv() into devlink_priv()
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
Cc: netdev@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Simon
 Horman <horms@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Paolo
 Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:jiri@resnulli.us,m:netdev@vger.kernel.org,m:edumazet@google.com,m:horms@kernel.org,m:kuba@kernel.org,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: DAAD72F61E1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/23/26 16:03, Jiri Pirko wrote:
> Mon, Mar 23, 2026 at 02:21:36PM +0100, przemyslaw.kitszel@intel.com wrote:
>> Unify access API to shared devlink priv data with normal devlink.
>>
>> Thanks to Jiri Piro, we now have ability to create shared devlink
>> instances [1]. Introduction series have added usege of those for mlx, but
>> without priv data attached to the shared devlink.
>>
>> Current API makes it possible to access shared devlink instance's priv
>> data:
>>
>> 	void *devlink_shd_get_priv(struct devlink *devlink);
>>
>> but it is easy to to forget (especially during rebase from "before shared
>> devlinks" era) and call:
>>
>> 	void *devlink_priv(struct devlink *devlink);
>>
>> which even has the same signature, so it's hard to catch the error.
>>
>> New proposed API unifies both calls into one, without any increase in the
>> observerd struct size. (Alternative could be to store additional pointer,
>> set during devlink_alloc).
> 
> You should use some AI corrector :) too many typos.

faux pas instead of faux bus, apologies for the most shameful of typos
("new machine"-kind of issue)

and thank you for looking

I have one more trivial related patch, will append to v2 tommorow

> 
>>
>> Unexport the less convenient API call.
>>
>> [1] commit 411ad0605875 ("Merge branch 'devlink-introduce-shared-devlink-instance-for-pfs-on-same-chip'")
>> [1] https://lore.kernel.org/all/20260312100407.551173-1-jiri@resnulli.us
>>
>> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> ---
>> sorry that I have not mentioned it during [1] review, it got obvious
>> for me only after working with the code
>> ---
>> net/devlink/devl_internal.h |  4 ++++
>> net/devlink/core.c          |  3 +++
>> net/devlink/sh_dev.c        | 11 ++++++++---
>> 3 files changed, 15 insertions(+), 3 deletions(-)
>>
>> diff --git a/net/devlink/devl_internal.h b/net/devlink/devl_internal.h
>> index 7dfb7cdd2d23..abbe308ee9bd 100644
>> --- a/net/devlink/devl_internal.h
>> +++ b/net/devlink/devl_internal.h
>> @@ -58,6 +58,7 @@ struct devlink {
>> 	struct mutex lock;
>> 	struct lock_class_key lock_key;
>> 	u8 reload_failed:1;
>> +	u8 is_shd:1;
>> 	refcount_t refcount;
>> 	struct rcu_work rwork;
>> 	struct devlink_rel *rel;
>> @@ -72,6 +73,9 @@ struct devlink *__devlink_alloc(const struct devlink_ops *ops, size_t priv_size,
>> 				struct net *net, struct device *dev,
>> 				const struct device_driver *dev_driver);
>>
>> +/* Get private data from shared devlink instance */
>> +void *devlink_shd_get_priv(struct devlink *devlink);
>> +
>> #define devl_warn(devlink, format, args...)				\
>> 	do {								\
>> 		if ((devlink)->dev)					\
>> diff --git a/net/devlink/core.c b/net/devlink/core.c
>> index eeb6a71f5f56..4c97e2e2c073 100644
>> --- a/net/devlink/core.c
>> +++ b/net/devlink/core.c
>> @@ -232,6 +232,9 @@ int devlink_rel_devlink_handle_put(struct sk_buff *msg, struct devlink *devlink,
>>
>> void *devlink_priv(struct devlink *devlink)
>> {
>> +	if (devlink->is_shd)
>> +		return devlink_shd_get_priv(devlink);
>> +
>> 	return &devlink->priv;
>> }
>> EXPORT_SYMBOL_GPL(devlink_priv);
>> diff --git a/net/devlink/sh_dev.c b/net/devlink/sh_dev.c
>> index 9b7456d64b57..450e3218759e 100644
>> --- a/net/devlink/sh_dev.c
>> +++ b/net/devlink/sh_dev.c
>> @@ -31,6 +31,11 @@ static struct devlink_shd *devlink_shd_lookup(const char *id)
>> 	return NULL;
>> }
>>
>> +static struct devlink_shd *devlink_to_shd(struct devlink *devlink)
>> +{
>> +	return &devlink->priv;
>> +}
> 
> Can you rather have unexported __devlink_priv() above existing
> devlink_priv()?

makes sense, will do

(this will not remove the need of devlink_shd_get_priv() in sh_dev.c,
as the struct devlink_shd is defined here)

> 
> 
>> +
>> static struct devlink_shd *devlink_shd_create(const char *id,
>> 					      const struct devlink_ops *ops,
>> 					      size_t priv_size,
>> @@ -43,13 +48,14 @@ static struct devlink_shd *devlink_shd_create(const char *id,
>> 				  &init_net, NULL, driver);
>> 	if (!devlink)
>> 		return NULL;
>> -	shd = devlink_priv(devlink);
>> +	shd = devlink_to_shd(devlink);
>>
>> 	shd->id = kstrdup(id, GFP_KERNEL);
>> 	if (!shd->id)
>> 		goto err_devlink_free;
>> 	shd->priv_size = priv_size;
>> 	refcount_set(&shd->refcount, 1);
>> +	devlink->is_shd = 1;
>>
>> 	devl_lock(devlink);
>> 	devl_register(devlink);
>> @@ -137,7 +143,7 @@ void devlink_shd_put(struct devlink *devlink)
>> 	struct devlink_shd *shd;
>>
>> 	mutex_lock(&shd_mutex);
>> -	shd = devlink_priv(devlink);
>> +	shd = devlink_to_shd(devlink);
>> 	if (refcount_dec_and_test(&shd->refcount))
>> 		devlink_shd_destroy(shd);
>> 	mutex_unlock(&shd_mutex);
>> @@ -159,4 +165,3 @@ void *devlink_shd_get_priv(struct devlink *devlink)
>>
>> 	return shd->priv;
>> }
>> -EXPORT_SYMBOL_GPL(devlink_shd_get_priv);
>> -- 
>> 2.39.3
>>

