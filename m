Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E84FCD4095
	for <lists+intel-wired-lan@lfdr.de>; Sun, 21 Dec 2025 14:21:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A700380BAB;
	Sun, 21 Dec 2025 13:21:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8-5cCd3qa5s5; Sun, 21 Dec 2025 13:21:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DA02180BC9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766323265;
	bh=ytzvfLK+dVUMWaErng1fJRsX78GWEkXlowbHoEkTYiw=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZLNj42hpQl4ZOz6R5PIuw19SZ8l4QyGLr5Paf1/0lTZii+WAnpvhW+6fiJyxltf/v
	 hp8OT1hGeggyaHlPhmW+2FpWP1l9g80V4d9B4lG/urYQoGqOEbIowqOKhv2dVych92
	 lcfAj3lVAszHBiLx7M6bluIsjz1M+SIegCNziAjJFPUiLQF4m8CNOHrEYMzstcT8ey
	 rQtbL3wfIvpZIG7nMq03h4XmmUWeJxF8+AAQL3+ZDDB47xCX+TuIxryeTQ6rVQ8FJf
	 2u1jvQgWWojv0bzXznN3Urzx07xsW0m92l/k81rkb9erimzz2uE8dDrlJw4Jvvi0MD
	 yFnLnRoLXAhvg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DA02180BC9;
	Sun, 21 Dec 2025 13:21:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id F19A1119
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Dec 2025 13:21:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CF95D4076B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Dec 2025 13:21:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NzagzWCNl52g for <intel-wired-lan@lists.osuosl.org>;
 Sun, 21 Dec 2025 13:21:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=avigailx.dahan@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E7D064070A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E7D064070A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E7D064070A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Dec 2025 13:21:02 +0000 (UTC)
X-CSE-ConnectionGUID: FK8b4CJMTwGiLDrucpCrtw==
X-CSE-MsgGUID: gpLIW/ZASn2OSrtqTA5Cqw==
X-IronPort-AV: E=McAfee;i="6800,10657,11649"; a="85790740"
X-IronPort-AV: E=Sophos;i="6.21,166,1763452800"; d="scan'208";a="85790740"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2025 05:21:02 -0800
X-CSE-ConnectionGUID: y+xSFdnYR/65gKJLKTxW2A==
X-CSE-MsgGUID: MZZr93qRS2e3LBZGLnx0NA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,166,1763452800"; d="scan'208";a="200184489"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2025 05:21:01 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Sun, 21 Dec 2025 05:21:01 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Sun, 21 Dec 2025 05:21:01 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.0) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Sun, 21 Dec 2025 05:21:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=te3Q56rPz+gALvWAL1/o7BigIo7bEhLWv59TLQNPHH31LcaVw/HjSi8vusTCcQIgkp10NLshT5CAgQFCMBuQZN/TojTWybA7K+CvBGFUaHBV5sZKfZgRfGn3WbqE+ulSjF6u29Mw8MUt/rneehLNbR8URFbZA5K0JJkdAmecQ1A+lJwo/3VIDurZ9F53jRk231QTdIH7Ujg58kfMPR06GdOT+wk0XlJAHIa9AR2aZH0QbluD25sDn5bW9o+Hb7xsFmcQH/BTM06kTB5MwlpzfshPXaAFq+FnHnD7pXm6s+Y29RBsI+vBZgIbavuoRn6jT0dpAEyK4UOQuFj90+2QnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ytzvfLK+dVUMWaErng1fJRsX78GWEkXlowbHoEkTYiw=;
 b=ymMcGVrE4GptO+PnFTagxbd0nt5vUSb8w9IXseCf7pCYRuHfmVOIqWIt+oE0ng6yhNSxbGsrz3O9Bg5ThBUvmTkqTeqF9MINt7wGzDYLiWpbbvmjSEtpEkKQlguhxN7THUHgQPBoIbQkHcVXgtKOuIBKnLHLKNxCZ4chVdge+7PkVqM8/g0h5em8WY45evPG3YXueG/vz0DhwTJEkN1wytO/noKOZwRK1l3s5fyiDk+Z8qOXpr9lPeB38VRIcWZIocLJ1csbOuD8uY1kPupm84Z5ZiSA031onBmH6kfBQytc7MN9MMZiwUysW13geAihx6UZuapteD3GEzC+GH5Zkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BY1PR11MB8032.namprd11.prod.outlook.com (2603:10b6:a03:524::8)
 by SA3PR11MB7533.namprd11.prod.outlook.com (2603:10b6:806:306::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.10; Sun, 21 Dec
 2025 13:20:58 +0000
Received: from BY1PR11MB8032.namprd11.prod.outlook.com
 ([fe80::f469:1c21:72a6:af47]) by BY1PR11MB8032.namprd11.prod.outlook.com
 ([fe80::f469:1c21:72a6:af47%6]) with mapi id 15.20.9434.001; Sun, 21 Dec 2025
 13:20:58 +0000
Message-ID: <43f866f6-0448-475e-9fa2-e79be1ca5fd3@intel.com>
Date: Sun, 21 Dec 2025 15:20:52 +0200
User-Agent: Mozilla Thunderbird
To: Kohei Enju <enjuk@amazon.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 <kohei.enju@gmail.com>
References: <20251025150136.47618-1-enjuk@amazon.com>
 <20251025150136.47618-4-enjuk@amazon.com>
Content-Language: en-US
From: Avigail Dahan <Avigailx.dahan@intel.com>
In-Reply-To: <20251025150136.47618-4-enjuk@amazon.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL0P290CA0003.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::18) To BY1PR11MB8032.namprd11.prod.outlook.com
 (2603:10b6:a03:524::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY1PR11MB8032:EE_|SA3PR11MB7533:EE_
X-MS-Office365-Filtering-Correlation-Id: fdeb449d-d6bf-4009-931b-08de4093c759
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TjE5QVlxeWNDQzBzWnhXc3o0ajlqK3A1NFRlSjdsL2UrS25Fc0tZUXBadmFy?=
 =?utf-8?B?RkFXbFUvQXRtdlF6eXduU0FMVnA3TzdNWlJER0tKVlhrMG9rOG96N0lFck11?=
 =?utf-8?B?TkVISnhESHJFV0pqNTRvR2c2UjhUb0NGdXNxbEVuSUpvVkJCcDVQR2lXM1Mr?=
 =?utf-8?B?alRrU3FuOXJxQU9lNUxGUlZqamhIWTFMVmlqbTZxVjRYSHVnWDdHS3dJaGta?=
 =?utf-8?B?RHRGdkVJMmx3aVF1VlJaY3RIK1dBd005RHMxR0tnVmZodzd2UmlHZlJIcU43?=
 =?utf-8?B?ak9hM0lrVkJjUkZ3QUdCTDRBYVM2V1dROWZpMzdwSnpwbllNalZKT1ZDWVBT?=
 =?utf-8?B?TVVDWU1Wd3JDV0hnVHQ1N2VvNXlBRk5BYTNyWE9MdnJiTkprdmVxeVROMGZ3?=
 =?utf-8?B?SExaOHNoYVNUVUNvYnc4dVNCV1RlNXg4dkRVNktkaTRXemhPU1BsTVFQc09M?=
 =?utf-8?B?NTk3VXlDcnJHa0VNVkF2aUliK0xrc09SRUlwME1vYUcxdWxHeTliRlUrVUhF?=
 =?utf-8?B?WHRDZFBQVGJPQldHazF2SjRLMG1ZQ0V3aUltZ3V6MDdUMXVodnJTUnJXN1dv?=
 =?utf-8?B?RnRrSjVBQXltOVhIcjBHKzBxZldIc3plOERGMTh3U3lMVFdaZFA5WTFtSWlk?=
 =?utf-8?B?T0RJYVVzTnJ6ZzZ1NjJoc05kRFZRbVVYS2N3WUdXNVFLMmNFQzJ6VVJZdUFW?=
 =?utf-8?B?NGVXeDN3Y01KcEhpZkNyYkV1NEhZMmdxNWY2Y0N5bW9tRStpbUtnemhJeDZ5?=
 =?utf-8?B?L2NITTJRdzVncG9mSWREOTdnNERmV3ZoK2E3Qk1SZWl1YzJ1U1FwbmVWSm12?=
 =?utf-8?B?dFg4N2RVWXRDWi94ZWU0cDJUMEFEOHI4cDM3a1hyWmtpcTFEa3hjdGR4VTli?=
 =?utf-8?B?d0FXMzJmSzJybWdKV2dTSzJwMGpybjVDTXQxaFQyY2hMb21zejBpMXBlY1ho?=
 =?utf-8?B?WDR1MlVYOE5CTHBKc1ZuZkRucjhxc0JjZnpnWDYzcC9uMGRhMEdLNENGZDd5?=
 =?utf-8?B?N01EUVpaUzFEOUJzZnlJdW1VYktJemFZZjFIS3ZmUS9MQzZmc0FhODFPc2ZL?=
 =?utf-8?B?QXdWSFpKOEl0TlQxenNnWTN2NFlaMlBvNUgyNVJKZGp3MTVad1BoZ2JzOWxK?=
 =?utf-8?B?c3RIZGZSZHBZWGdxVXc5TVp3QjZnUWYySXRHTEpmT1ZXZ0U5Q1hMQkFGdDRS?=
 =?utf-8?B?RWx4NW00TmU5NVFOeUFkOWw1OFB2OUlDVnFGTjA1VjA0RTF5Z2VoSTFiQWpH?=
 =?utf-8?B?YkxQN0w3OC9tVVlDcEFkaG54aXQxUWRkbUFDZkJ6RzdGZXhONTkzZFlGcC9v?=
 =?utf-8?B?Y1dLUFM3THJXUnkwbVFkRjNONGJTN0grNllyVmYvaVZlNENiMkFnQnpscmFq?=
 =?utf-8?B?TmVyN1ZyQlhFUE1TQUo3TXVyNjZ1UXdCYmZvMXo3MXJCaG9vcHZJNk1waVpt?=
 =?utf-8?B?bld2cHY4K2tuWXhXOEJtUWR4WXZLaGM2b3FBWW5LdEZMZnY2VngrMjd6dVdW?=
 =?utf-8?B?d3REWjd0TEVXdStmYjNqVUlEVjYyK1lIUWNya3FWK000c2JtMldKWVpkbFZa?=
 =?utf-8?B?WG1xc001cGlQcll6VlpKRVJJVFFjUGxORzNUcERIV3E3Q2d2elowS0tnZFVL?=
 =?utf-8?B?WGN5aXRwa2V2Rys4SDhwTGpndzl0eXE2bTFTSE9ra3JIYXlmVnh2cTRQSC9s?=
 =?utf-8?B?VVUrNWREbGJUcTNOWEcySmtYWDgzVTRMYmFodkJ0QXl1ZTQyZjhtVWNMeUJJ?=
 =?utf-8?B?am9WZkw3RFE1SWdiZWFTZWhOZGdGRkR5VjdsWm43ZWx1Q08yYkNxOFo4cWcy?=
 =?utf-8?B?UFRVaW52NWdmZHd4SVhSVzNJR0RDWnN1Y1RBb1dUK3VvNkxRblVTU1p6WHk2?=
 =?utf-8?B?MS9HbEFmY3k1ZDFIV0tHSXJ0UWd6T3FrbXkzSE41Vk5vaTBXcjJRRHpKaXhy?=
 =?utf-8?Q?PavlyDdvP0vJZEDSiUrrsIGZkkm3SIf1?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY1PR11MB8032.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WGVESlUxbWFKRGNBVzBKUXZ3ejZXNk93aFRvYkppWkdGKy9IWStnQkZZMHcw?=
 =?utf-8?B?V1F5dGd4ejdUNE96UUJLUkJXYTRQQ1NZMm5HakNLZ0RZY2ZHWnVjY3lWUHdl?=
 =?utf-8?B?T0VEMmFFbC9LUUs0R3htUytPU1c2RUt3Z2ZaMUh0MnkwVHBZWE16U0UwUUly?=
 =?utf-8?B?M1U2VFZ1djczQmpobWtQRDVqcVZ4eFdaNlhuSW9mdDQvWDU0THBvYWtvTjJv?=
 =?utf-8?B?b2sra3lMUWU0dVVXL0xQQW1GcjhWSWJ0RVAyRnBubi9DQm9nQzNtWWZsNkZZ?=
 =?utf-8?B?VnVDbzhRMTVlZnQwNWF2RCtINFJhUXk3Ly81NkhmakozRkRZOXpoelBNeUZ0?=
 =?utf-8?B?aFFIRXl4SUt4ZWxhUTFUK1dIMVQ2a2NIaGVlUnZDOHl6VjYyVElORE94a3Ry?=
 =?utf-8?B?ODdGK2JoeEwrWHpFeExZSU5xUHlUOGJ4R2hXd2cvWk5OL3VQT2VHTXBWNmJN?=
 =?utf-8?B?T2EwUDJONmo3R2IxSGM1L2FsbWlqaVQ1VEU1R1hJVHVrbldiQk5rb2FJRklq?=
 =?utf-8?B?anQ1b2hCQXBXdlpDeFdKcEJFajhRM2dNcHFQV0gwOFRIYlgxK0JmNWprWUxH?=
 =?utf-8?B?WmtlUlV3SHo2dkJQeERScUJTc3FaMFVGYW0zMEpKamV4VnJ1WmtGbVdXdE13?=
 =?utf-8?B?bUllaTltQ2hHeE1DbnR1N2xJcCsrbU14UnpqNm1LTzlrNVcyNnBaQjhyVDJQ?=
 =?utf-8?B?UDhsLzdTV0x1Tm0zUThvTU13VllDcmlETUZwbzdkdnBFWmp3QVBvUVRDMmhJ?=
 =?utf-8?B?WFJUNXYwcXNua2VPODZndGVSR0pHcmFnbmNoOWJFZFdwL1FhamwraEFPVGJh?=
 =?utf-8?B?akJtYU5vanRJeGVsa0c2REh0QXJobzVtSGFEWUVoeDRPUW9hekladVJhcmRK?=
 =?utf-8?B?VFQvRnY4Y2RwS3lFempYN0w3QXAwNUFiVzJycWw1OVpVMjBNbnlVVHRmcXpa?=
 =?utf-8?B?dFZ4WGhzSndWK3c5MEo5WFgzTFM4R1ZlMFhwRmFFYm9abGp6c2trNnZIM2ht?=
 =?utf-8?B?NUNLa2ZhR01BZXl3NUsyTXZKNEF4U1ZZclpNS1JlUldiTmlrZHV0b21RWkQ1?=
 =?utf-8?B?K1I0eWRtVThXa2FqZVFUZ1pJZ2IvcnFVNnBBbTlWZjFSVUpTVHQ5TWQyOUln?=
 =?utf-8?B?SVh5Q0RpRUtVNlk5RllYWFlHelRuQzErM2FYK2ExbS9pa3BTbVRGSnZnbG9r?=
 =?utf-8?B?VkdSWmtZMmp5aTZWNUpIcmNDUjYzYnhNN0RpR1dmOWFINjIzSVlJdGhZZkZl?=
 =?utf-8?B?bG10dGJiV3ozdXlFRTZDSVZFS0RGaE0wc1JuZ3VhRk04S3E4NnlHb1E4dDB1?=
 =?utf-8?B?Q1Ira2c3U3EwdHRLU1d6VkF5dmovTUlkVHpQaG5TdFFPcnFlVjNqdHEveXJh?=
 =?utf-8?B?VHEvaGFzSmFnZGZ0NXZwMTY2elJiT05WRjVGckZPc0c2d2dkU0hxU1lHWWVr?=
 =?utf-8?B?TzRoWkh2M3d3ZXArN0Z1eXh1K0FKcUo0U1dtbEZvNmd4S0p0aEJOU01EVVFa?=
 =?utf-8?B?QlkwRjlQSi8zY1lYMEF6bmc4dVBlQ3h2blg2RlY0YzY5UnJ0V0xoeUZHanZP?=
 =?utf-8?B?aGFudm00aEUvMjhFc1RLTlNoTnZucHlNMnZ1MWcyVWdQNFJZRUR1OU9rYlZt?=
 =?utf-8?B?MXhEeVo0dVIxdTlqUnpnMlE3Qjg0ZHdGUEhYeStPbmk0djlPcXVIS0ltaXJn?=
 =?utf-8?B?andXS1VXd0tIV3l2WkpaUnM3bzRRSEJYYXdDKzdKTW1mbjg3QlRCNXllaEpO?=
 =?utf-8?B?S2ZNbkVSZzBLQWg2bjVyV2piWEx2VDlRZVlvVmwwUXN0bVZYMzlZNEgwdHNv?=
 =?utf-8?B?RlJGT291UU5iYVZFalNXZXB3NkJtd1dsb1A1S21BNXpkeVBFSEtmQjZIclY3?=
 =?utf-8?B?ZGo0VkJ2ZlFBVEUzVGE3VlJOSFFxYzVsZjBhTU43RGJQVXF4YVUrRGk2QkFt?=
 =?utf-8?B?US9PZElxbDljSmdQbWcxRXNJTmQxWFJjMGF2S1lobmJCZ0xaejVuMkYrOGdX?=
 =?utf-8?B?QXR0bEhKNWtLRnNpSUlDSTFLMTNXbDA0cE5rb0NDY3hTUjV4cDNLQTN0eTV3?=
 =?utf-8?B?OVNUN1RFcng4RUdOYjRnSFRGRjBka0hLdHZacHk4WDBzYml1MXc4S01JVE12?=
 =?utf-8?B?QktaR2Z4bGNUYnRoS0Y4dEtJRXVpZmhJSEdITTBKTmRNQXFCSDU4L1VDREln?=
 =?utf-8?B?dDluOUxNa0NYR1ArTmtnTTYxaThFaWErUE50akZ4TThmOU94T3UyMzU3aWU3?=
 =?utf-8?B?d3JzRXdYRzk5V1BMb1RsNWEzRU1hV2JkYVIvb0VVVTVTS25tSDdUKzlCVnJh?=
 =?utf-8?B?Q3puVGViVExRY0cxUmRXZ3JnSjNLY252VTdZZ3lJakhxZndzM0RxVnJZdGdo?=
 =?utf-8?Q?zjOFrRvKv0ODJF2Y=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fdeb449d-d6bf-4009-931b-08de4093c759
X-MS-Exchange-CrossTenant-AuthSource: BY1PR11MB8032.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Dec 2025 13:20:58.5684 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kp8i3vWI17Kt+tM0PuwkAknuJRb8E4myUsT8lWynYT7kqmPKE61sEH4ST7Qx8J0KcD78l9J7SYfwJL2KSA8lV41gZ7e567Q2xrR6EmWKQRk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7533
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766323263; x=1797859263;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=A8MXwS4NWgKV9JRiHBHOqysT9T/64AfWQgpWSGvz+7M=;
 b=gmdkkFfmWsE7PXGALIa1BUiFPrrJLsjXXfBSMNcgrIyVwREb+f2/y1OR
 xlCIi+dO+iz/RVGBtjiomaNP9239ZJ1F5HuM4EqRYtmugF2h1IhRNaKO8
 KleT+qTxo6o8ikZEumdQZN1czzxGabEUyC2tBj09ZFcOxsTBCS/sZgiy0
 9bHgv2t2kUhdgyB+mUFi9fd2+KdjkJW1+f/uDrvBJtjaEEbG0JUpQ/XKD
 TXQBR9r7iO2+isx571LBqKrxRFAojRQFtiEfyGoV0n0SXJjfkPW1RA+sY
 MFuZ+MaNQ/0v26Drnoo1rhotiepI0bmouDGqWcpc0C/nug10Ws2RYrGu7
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gmdkkFfm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 3/3] igc: allow
 configuring RSS key via ethtool set_rxfh
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



On 25/10/2025 18:01, Kohei Enju wrote:
> Change igc_ethtool_set_rxfh() to accept and save a userspace-provided
> RSS key. When a key is provided, store it in the adapter and write the
> RSSRK registers accordingly.
> 
> This can be tested using `ethtool -X <dev> hkey <key>`.
> 
> Signed-off-by: Kohei Enju <enjuk@amazon.com>
> ---
>   drivers/net/ethernet/intel/igc/igc.h         |  1 +
>   drivers/net/ethernet/intel/igc/igc_ethtool.c | 31 ++++++++++++--------
>   drivers/net/ethernet/intel/igc/igc_main.c    |  3 +-
>   3 files changed, 21 insertions(+), 14 deletions(-)
> 

Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
