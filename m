Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mHCXDxZghGng2gMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Feb 2026 10:17:10 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 80837F07A1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Feb 2026 10:17:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1B551408B0;
	Thu,  5 Feb 2026 09:17:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EbnK59La8AhD; Thu,  5 Feb 2026 09:17:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 88BA540CEF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770283027;
	bh=EM/L7W5R/Kj3SjD6sxGrq9yYB3rc+/vnxdDORYkkmMk=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9vBLMlAOxjreKAujfI37hT1RHxPGBfKO5anuYNsjSdaYxMZsXBVH7vwBEfKSnS6gl
	 4gPqkGAYKDJ9LivdzsOsod5FYlLNyDp1y8Ysyk2sUJSWYe7N6II5Tfz/dsJFZwF1m7
	 gysDsuP8SlEJmJ/ZQtHqALANG1m1r8ZD09rdORwpj4mKYtsHFXlzmr8a+Kf3pHPxrO
	 6eQE4yedT/UEFEPOu4ki55y9sACxPx99VvyE9853FL1YQoqcPl+zE4aEQ/54hTqw0F
	 nBJcXo/pgK0tfnWC/vLs/CpWrPaaM4X2XACx+9ZhWw2rW3243IQsT4CTIpFxCc6b5M
	 /nrdm43xvAw0A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 88BA540CEF;
	Thu,  5 Feb 2026 09:17:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 356C317A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 09:17:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 173B74073B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 09:17:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hXoYWsW8KJbs for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Feb 2026 09:17:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4B47C40088
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4B47C40088
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4B47C40088
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 09:17:04 +0000 (UTC)
X-CSE-ConnectionGUID: DDO5N3m2QgqE4LunW3NxKw==
X-CSE-MsgGUID: 0+K0VqH0SN+Fa75qK+3XDg==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="82848807"
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="82848807"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 01:17:04 -0800
X-CSE-ConnectionGUID: 6an6RpIuTkC2qUVngDiMiA==
X-CSE-MsgGUID: 1e/jPabhS3uFIAtoMbCEKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="241097472"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 01:17:04 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 01:17:03 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 5 Feb 2026 01:17:03 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.50) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 01:17:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HhN7qp+w7RDQ189OI3+BeWvV692BhK8OGssqB5BY2zoaA3ntbE2+fVAgOP0ymVD7ZU1A+sySi0C8vbPRsXNtL8+M9OrdVSI/SvNIew3g6+x8wTJxmxT6gEYe4aBkcn3gFVELSpgh5PBiHBYIquDiy4iOEufCU3hMYH5j0TfT2qSYdeeHXsU9K0Q0z9f2tIa076w3mwqQFU5mXYH+nvRHNRaj0BfYMNmVFxoYyHtFDUl6ra6l78IN5GF2S4mNewnmOcs8I99DqbLi3Liy2CotwPGOaXnMiKnI88/bzn2p/V6p9cC9QdAsEnvBxTW+ZgbZiK8IXbZb3AxyLmZcrPMykw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EM/L7W5R/Kj3SjD6sxGrq9yYB3rc+/vnxdDORYkkmMk=;
 b=WH4EeTb9mBHp+3W2m0JIMaAMAdnsmcp7vbLnRYBUN/baTULqagFCdMXEM1OkYLViJyjcZHqoTBX2t1dr1+SYska8PwwH3NeIaH7bB/zU1z2+dK3BEuqk6GJ3NXTvfMZI8JqUZ6L0ussOsoHnSKhzjUullj4mYB3S2ZzwaSVU7bGL6uvTVPODttQZFOs/tpgKdzLsOumDRZjDYSLf1gQShLGVzjunxvzvHomKGo99kxXKnC/cl57UCaCs1Y4fQSp3usSBNCXvt6moCXu4/g3rxKDI10dfExPDcqDnROKMlhxli43EyZ7yuTc4UYZ8/V2eKTvw8UXL8jbQGEmzqTe5fA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF814058951.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::36) by IA3PR11MB9061.namprd11.prod.outlook.com
 (2603:10b6:208:57c::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.12; Thu, 5 Feb
 2026 09:16:56 +0000
Received: from DS4PPF814058951.namprd11.prod.outlook.com
 ([fe80::1fee:366b:ed73:b459]) by DS4PPF814058951.namprd11.prod.outlook.com
 ([fe80::1fee:366b:ed73:b459%5]) with mapi id 15.20.9587.013; Thu, 5 Feb 2026
 09:16:56 +0000
Message-ID: <caf4b292-5fd0-4ced-bfbb-1ea4b99dca24@intel.com>
Date: Thu, 5 Feb 2026 11:16:50 +0200
User-Agent: Mozilla Thunderbird
To: Kohei Enju <kohei@enjuk.jp>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 <kohei.enju@gmail.com>
References: <20260205085030.60080-1-kohei@enjuk.jp>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <20260205085030.60080-1-kohei@enjuk.jp>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0007.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:2::9)
 To DS4PPF814058951.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::36)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS4PPF814058951:EE_|IA3PR11MB9061:EE_
X-MS-Office365-Filtering-Correlation-Id: 8e370ee2-8322-4056-ef58-08de64974ee2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Y1owZ2VtUzFKQ1hza1lEekErNkN1UGRlY1dNRmdranYvRWRxeXpNbmFnaitQ?=
 =?utf-8?B?d3FBTTBabWZ4MVhMQ1F6VEhkdis1bTRmbUkrVnF4eVh1c0hDNXhPSUdxalZx?=
 =?utf-8?B?SGVuaWNqSUxGVFgvWEJ3OFBYWWVPYWVWYTFIM0JFQlRqajVPWnF1YkxKMFky?=
 =?utf-8?B?V2JsSDk3czhyUFZESDFjZzVOZ054czcyVWdrd3VSa3VKSVdUb2dmcDU2Q1kv?=
 =?utf-8?B?aFF5UEcwcXVnSUM5SUpyMzBFQ25OeEdRbzdyUVlRS09vaTNSWUFRRHJ6MHVt?=
 =?utf-8?B?ZHc3T3FudFR2dzVBcGxjS1oyb29xdG1FbitWajdDNnZvaWxWRS9FeVpNSWJi?=
 =?utf-8?B?MnFrcFVrcUIzUkczY0FvVytIcTc0MUh4b1hjSCtFRzlXWHVMQTY5ek1GZ082?=
 =?utf-8?B?ZFNiWTFKWGZjNHlrQ1ZlSzJsSVF1TGcya1NrS1hkNjRkMW5uZ1k0UzJCQkhW?=
 =?utf-8?B?dXQwR3Uxc2ljQTN5NjRST1EwR3FtNEF5MEJVYkdldm1YeFBPWHBZS2llNmRJ?=
 =?utf-8?B?S2JabG5NTGd6aW14Zk0reTRGNXhXSmhNNDRSVndkRDRwUDFIR2x6WSsrdWdv?=
 =?utf-8?B?QlFmOWt1eENZQTNwalBwTjJ1V0JpVGZzQmo3Z0NBS05VQXRXYkwvZUUzYkkw?=
 =?utf-8?B?czJJMHBQaXU0UDh5eTVtdXVvWGV0d2VqSzV1eUZVQ2JRbWlNa0U5L3o2Wkp6?=
 =?utf-8?B?QzZxbHZlWStKMHE5bnpCeXJKaWh0UVJVR3Jua2dyQ3RldFMrYmRobDVLbnZD?=
 =?utf-8?B?bThjaG9vOSsvTUtuT2Q0UThTYkJDNUxnZXduWWZ4dHJ3c01HUlBmenFxNGYr?=
 =?utf-8?B?MGMxOTRkMThHQ3BtUVZDeHBEZ3ZQN2VxcXV6U2NmMDQwZ284T05TUzZseDVh?=
 =?utf-8?B?bHBlNEpFWkZFYklFemQzLytiRko2d3BoemY2ZXZvcmZqT1NrZGNmWEI0TjB3?=
 =?utf-8?B?dlhRY3RZTWppUjlSTDlZM2dsUHZteGpaSGl0anRybEhkQVB4ZllxenpzK1hG?=
 =?utf-8?B?QmhxY240S1p6Qkw3RWxJekc4M0d3eWNDcFRNQ0VzNzhEUXBaZlZSL05YR0h1?=
 =?utf-8?B?aEpERVl2aHl4Q0dTcGRJMWo3OHFLb1gxRFpSZVVLK0l3djdwanlIY0lKTlJz?=
 =?utf-8?B?cVpWejl3WkVIdkorVjFsN1N0U09FRUg0WEhXUzFGaTJHdmU5ME15WEE0U09q?=
 =?utf-8?B?aVdZbS95Wm8vRXMzdmFQcjFpTENicm81NVVORGdKQUFnYkdoODB5QjFTTTlE?=
 =?utf-8?B?a3B4YXJLY2hvbnhZOGhIcWFHK2FVNkYyOHBpTTBPa3BzSHhrazZXY2daS3VG?=
 =?utf-8?B?a0ZDZTdsU0ZETFZkakxLamRIU21ONTAyVEVnaEhjYnh3R2xROEtyRGlIa0py?=
 =?utf-8?B?dk9NTldtV252NUI4SmVDTkhZWEJHdUVWWHRCUTk1Y3k2OWhjSDBUMGZIQWFC?=
 =?utf-8?B?YmdUL09EY3dNNXJjVzhtVkJTNWtYWlc0UmRmdDZwWi94K3d3M3J0UnlaWGtx?=
 =?utf-8?B?bzV1NWxJNDhXd2s5ZHRpU21vdXEyN1phUFFwWmppdWJycVBsSW5JMWJXNGM3?=
 =?utf-8?B?TTVsVnRzd01iT0JuVXozMjJCOUQ1RzArZ3pWdnVQQVVTMDRZWXVIdDZUYlcy?=
 =?utf-8?B?RTRLRlJJS1pMM0lHL1pSSk5WUHRBY092Q0NVN0dZWUE2RFJqaHUzZzR4elBa?=
 =?utf-8?B?L2w3S2FjMEhhazhNUldPeit0bG11RVRJbUNhRHo4ZWplZGd0QzRZQ3VSTFVE?=
 =?utf-8?B?VW9QWkplU2Y3UGJGQXArUGtoYi9waVROZWkzYXRvVEtxaXRqM3hSS0d6Vklj?=
 =?utf-8?B?SGxQVzgyL2VaQ3h0c2grbnV6ZlR0dFVibEYwRVNkU2FROEFWbStvSDlZMlR2?=
 =?utf-8?B?WHhUTDFsckhvdlhpV3dGaVRmNUxBSUVqaG11SmZ0VXVBMzRKQURsUm5zTzhv?=
 =?utf-8?B?OUhETTBaREQ5NVpEVFRKYWkvRWUzaU90V0g2a3h5bXRaSnU1MVVNUUhQa3FE?=
 =?utf-8?B?L1JuTnFHUmx0UWdUYlRoOTJ3QWwzakRKMlNmNS9qZkp0aEJDdTlqbHp4c0g4?=
 =?utf-8?B?MmZJaUcvcXBuVEdWSmhJcjkxMk9xS2lQcXpDYm5IUVBBR0VWM0F1ZzNkVGgw?=
 =?utf-8?Q?WmVU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF814058951.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dWN3ZFA1anZkbjJ3eDU2eWYrcldKbGhuZG9sdzE3dkllZ05HU202SGIrL1Q2?=
 =?utf-8?B?WW41bFBDemlFVkFhZHdwbjlBNXlUdTVSVldJcEYyQU1CNDY0NjhLMldkUStN?=
 =?utf-8?B?VURGNTNRdDhTeU9DeVlKSHN0YW0yZkJSRFF4czFXNE04eEpPVlc0RFRSSmZN?=
 =?utf-8?B?OEJBa2N2UTNkejBzaitURW5YMUlUWW1mVElJb1JRdUdUeE9LOGZveEc0MjBE?=
 =?utf-8?B?cFlDVW5YeFF4SDBNWThTRWFUU2wvNWR6RGZNWFQ2NWJ0Y3o4Uzh2aVgxa0Vv?=
 =?utf-8?B?Nyt2S3U4ZXZZaVRSTEQxU3Mrak1iOHlNZmsxOEZ4RWZvcnJReE5pUmdjY2Fu?=
 =?utf-8?B?VGJIZFp4YmV2MVFMMVlLNXNpY2owOGFmcUo4WGVhMUxNem45bitjZUp3U0Rw?=
 =?utf-8?B?T3BDMHgrWkczL1BIZ21IREtaSjVQY3ZwbzRkWVVubTBIblZYRDEwRXNpTklS?=
 =?utf-8?B?UTZ2R1VBN1FKOUVKUmNOSExMNU1DcHBCdHRaWG5oTEtVVnY1dGxnclFKbHpq?=
 =?utf-8?B?Y3B1bDlrQTZTS0lhcDlCcFdMSTl0aDQ4ck5UWnp6R0Q1eUJZRzhhZjBDbkdE?=
 =?utf-8?B?WWFKVXdvU203OXBVVWoveEdmeld0Zm9XZW1VRkNyekoyQ1hldmhiRFlQNzFZ?=
 =?utf-8?B?VUJYU09BRzZxR2RaVmZUOThOZzVCRzlvV2F2aFRISHFKZUpSSUpHTmxyaDR4?=
 =?utf-8?B?YXUyRVQ5enRaSGdHTGt4Z2tVd25NVEhrNnB2RXk5NnNUNE9BeXo3ZDBzWlUw?=
 =?utf-8?B?bVUxK0w0QU4zaXhReWRHL2JLWDRPY0tzWnBLZWNtQVo0T2lROUZIS1JKT3NG?=
 =?utf-8?B?RUF2dUNwWDludmxMR3EyTys3djExUTMvZDBaWHJldDlWRUhKQlhJamNRUDZ4?=
 =?utf-8?B?SEdxZHc0VHNHWUx3M09vR1pRRmUxbHZONyszZmZVSnJLVFBKVFVjWXhMdVYr?=
 =?utf-8?B?SnZxbHVqVlBvVWlZMW9FYkdOaW5kMVJJR2Jtcm1aa0RFVHpUeWJTMHBGd296?=
 =?utf-8?B?czNMcXBINE43SkVzZjU4enNUajkwUmgrbHpBMXpSL0lDQW5ObXFxSDNEampN?=
 =?utf-8?B?NHpzaUQ4YURnUngwUktLWWtJbHE2a3ZlMTM5ZnhHcEYrMldvSzMrblhwWFBT?=
 =?utf-8?B?d2Rzb3pQZlQ0NnNhRGczV2RlYnV5QkNtb2ErV1V1N2Z0b0w0Y1BPSU1Uek14?=
 =?utf-8?B?NEJWNGtHa3U3QnVFeXpWSElMU0JCTlM5RFdQbURNZFVCdHpWUzhKNVY5WVZs?=
 =?utf-8?B?NkZicDdNQ0FSYk5NYVhZNEdGQnpsWGJ4Vk1yQlRpR3ZGdWVjcEQwWldZMGFO?=
 =?utf-8?B?TEJVcWZOWkNUSkhTVmw3TEY4R3laazlod3Noc0JkaS9xNGFaUkZSY1NxcWg2?=
 =?utf-8?B?cTJCYXM3L3ZQUjl1emdZVXpRbjdBSjZ6dzFtRkdDVHhabGMzdm5mMWoydkJX?=
 =?utf-8?B?M0FQNnZ6L3JyRlJwSlhveFhEbUViVmhscjFpb3Z1VnY3UnBSRytkUmNCaWg4?=
 =?utf-8?B?bWxUbHRORkJIREFhWEdxMDJQanpKTDRDcFFVWE4vZHpDLzRndGtDWnVFVjJH?=
 =?utf-8?B?ZmtSRUJNcks3T0ZFQkpOeG5oS0p4SDNCSmViQzBDK2c4Umx5TEd3T1RkeDY0?=
 =?utf-8?B?NEJZKzhmNVdiTnlZeXVzMzNmRmo0ZHFxZWloaXdVTE9CeUdOY3Z1cDlNT2hO?=
 =?utf-8?B?V0U2TnlMNlFtL3U5WWt2UndWY1dvU1hsWFZUT3BsTmVNMEg3RFdrYW4rUmRQ?=
 =?utf-8?B?ME5kc2ErSngxcW9OU2JWTnMxM1loWWNEek4vZ2dtL2lYRERqL1N4elZ2UXhk?=
 =?utf-8?B?VHhHaHREeXBpL0RxbHpleUxGbU5tc1psZ0w0L0lkajB4Z096ZDFpNkFlZmpi?=
 =?utf-8?B?amduZXZlOWVmWVhFZGNDL3BpWXl2OExGNGFXTlRBcERqbExKOGJKZ0M2Y1Jk?=
 =?utf-8?B?RTFKSnpMWDFhU0g1aDludzdBUGdtM2JsdUM3L0YyVzh6ajN3VVF6WVJ4Y0tT?=
 =?utf-8?B?TjEwYVJoWklkd1VyVTk4SFNrdzZIRGlZN2VhVXFHaHhIR0thVXJjbXVaUGNL?=
 =?utf-8?B?cll3S0JGb2ErdlhaejdrTUFmNXpSSC9ZN2tqbnAxRjFWci93VkM2VVVjV2RL?=
 =?utf-8?B?TWJNaGgzL0tldHV3bllCcERabElxcjZoZzErOWtZRlViZ09oWGVCd3JjdjZa?=
 =?utf-8?B?UitsNFkzNUM3U3F0SGlMUm5qdjI3SDlxbnJPUFpIZTY0dTVYTm9jZkNTTkxV?=
 =?utf-8?B?Qi9uR1kydW56NGErdGZib0xyc0UzYXhYQSsxUnRSU1pXS3dPMVF5VjBJWitP?=
 =?utf-8?B?UU40dUVNVTJZdDFtSEY2dXlJN0hibE5OSnAyS3NNRmk1bFpJd1FwWVNQNVVq?=
 =?utf-8?Q?c53vKoiyguF3Qzwo=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e370ee2-8322-4056-ef58-08de64974ee2
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF814058951.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2026 09:16:56.2049 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9mIH77+1PZj8amG95MCinMnBbe/5wo7pnd5MX36goj5mYIUCj/+zFwqmTLWDGjPzFYQJz71sHdFBKBvAA2QV/K7CrolPPd/lvgNsZwgr33k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9061
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770283025; x=1801819025;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KEdkT20i8yBICwqVzBw71iOAo3rcmqTd2cdl3ioKZjM=;
 b=E+jhpIM48A4b3G9tPc2sLKec6DWvLUG+KXKdlVpnbjJJBrTiD9plm9Kv
 O6cphW8TELN/06I7yQgdjbKlMe1tG+Ne+yfZf08DZqbvBIc0OtzMo7ytt
 cW/anz/3LVLTVOPsF24BK1tCwhPpVkWZ9L0181qIVNbWyEEZoX7vp/8aW
 B/hCwODtDn/IsO1iUqEr7D6c+Iiyt297mInLPhQrKR9Gz/zxcIFh4Mnvr
 m5KKmX4YYlq3dfUb0kvidzBZYSzWGGw/U7iPuOjudlMlvtV/bZheeyoCj
 2EYyAN9Rvtahn0M/UuAShYc5UaqUJJGQX7wYL4OG2Bd66P0d0HPnm3GY0
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=E+jhpIM4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v1 iwl-net] igc: fix null pointer
 dereference in igc_eeprom_test() on NVM-less devices
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
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kohei@enjuk.jp,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:kohei.enju@gmail.com,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[vitaly.lifshits@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vitaly.lifshits@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 80837F07A1
X-Rspamd-Action: no action



On 2/5/2026 10:50 AM, Kohei Enju wrote:
> On devices without NVM, hw->nvm.ops.validate is set to NULL, therefore
> functions that perform EEPROM-related operations such as
> igc_ethtool_set_eeprom() and igc_probe() check for NVM presence in
> advance. However igc_eeprom_test() unconditionally calls
> hw->nvm.ops.validate(), potentially causing a null pointer dereference.
> 
> NVM-less devices may not be common but possible, so add NULL check
> before calling hw->nvm.ops.validate().
> 
> Fixes: f026d8ca2904 ("igc: add support to eeprom, registers and link self-tests")
> Signed-off-by: Kohei Enju <kohei@enjuk.jp>
> ---
>   drivers/net/ethernet/intel/igc/igc_diag.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_diag.c b/drivers/net/ethernet/intel/igc/igc_diag.c
> index a43d7244ee70..973d26a5a6c9 100644
> --- a/drivers/net/ethernet/intel/igc/igc_diag.c
> +++ b/drivers/net/ethernet/intel/igc/igc_diag.c
> @@ -158,7 +158,7 @@ bool igc_eeprom_test(struct igc_adapter *adapter, u64 *data)
>   
>   	*data = 0;
>   
> -	if (hw->nvm.ops.validate(hw) != IGC_SUCCESS) {
> +	if (hw->nvm.ops.validate && hw->nvm.ops.validate(hw) != IGC_SUCCESS) {
>   		*data = 1;
>   		return false;
>   	}


Hi Kohei,

Thank you for your patch.

Since there are no NVM-less devices I suggest removing the flash-less 
code entirely from the init flow.
