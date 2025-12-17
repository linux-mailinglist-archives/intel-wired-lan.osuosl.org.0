Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6862ECC83BD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Dec 2025 15:37:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 16E3640E6D;
	Wed, 17 Dec 2025 14:37:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Coc4kpCtoniK; Wed, 17 Dec 2025 14:37:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 85FF640E81
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765982251;
	bh=ua9V3PPgTatksiLuTGS8ixPr1NteIIGHVMaUuk5koVs=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WIAxrNZmFkwgJhSuarbsGPN6XPetRGdc0ZM/ZGnNPuYvurmk3pZ7IbrZGtQXysio6
	 mEufd3FtdXMLzLtbEoIX8QT9JlTsfT92P1pnFxpy6cGfwcuZ3eEqagLZ+eWuWrY85T
	 swCpb32JaPv4wDeUjOgC2XoKXh2sNjgPv72VnO98j150kyYEY+idVF9t+PBborq2KJ
	 o/Qeijdk8pD0J5/jkNILHQSPY0YJ18OA1E1ZfKWQ8e4CJl34T1Ojay5aESplNj1ACa
	 CvDCWjDhQiZ8ZxMINL+7tdAWxcBCPriVlK3NthhyAJ3v5fd2T7CSxZy+mGnkjXhnRK
	 ougciPKLBZRvw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 85FF640E81;
	Wed, 17 Dec 2025 14:37:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id BECD3372
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Dec 2025 14:37:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B0AE7836F0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Dec 2025 14:37:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yfpU0PC4Rctp for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Dec 2025 14:37:29 +0000 (UTC)
Received-SPF: Permerror (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org ECD67836CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ECD67836CE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ECD67836CE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Dec 2025 14:37:28 +0000 (UTC)
X-CSE-ConnectionGUID: ZJeV1DKpSKuEm0H+RamlKg==
X-CSE-MsgGUID: XMU6BQ6/REysYQ/bAP13uQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11645"; a="71776368"
X-IronPort-AV: E=Sophos;i="6.21,156,1763452800"; d="scan'208";a="71776368"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 06:37:27 -0800
X-CSE-ConnectionGUID: sKMIU6GhT4uwagsaH6Wc1g==
X-CSE-MsgGUID: cjf9PIoESeataWOl9M1e9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,156,1763452800"; d="scan'208";a="229380065"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 06:37:24 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 17 Dec 2025 06:37:23 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 17 Dec 2025 06:37:23 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.29) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 17 Dec 2025 06:37:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qP/NlXsLxYczAISjhENFlUWZdOsg209ixZCpSukMevaZXNeKAKQXeHNpEa/20zET3zbc2PnJKh7rFqrYkFukbErx96gKPqW9yZbU2h88AbB72PFATSUY216plz1g16uxPUwTc+RKolOfU9NKjcSWQg6CV9bU6hk9dJ9bOKaf/HVTI7fGFBbnD66YSN2JIlvZn4H2IScCx2KkRWeKBqxWuxq0ajm296Lmar5AWwB/jgUltuuGbXk8JW/YDxJb4oux/oG5VZjXERgf/or3sIqEI7hUCgBbDtXfGL/UimdJnQAe2LwT6duPkLcmJMLVy3VDLw6Tajaeoi2eEt7HPUk/3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ua9V3PPgTatksiLuTGS8ixPr1NteIIGHVMaUuk5koVs=;
 b=vk6o+DY8QcZPrPW5h49LizW+lQGKV6MhkJAVpzOKTtGQ0Cr5fLmLgdxcSNbNDKBu2wt1ikE14zLyDjMJOsdmvbiwHA3tE85WfH7LVEIvFfbfB/xbXj2s9nuo21BlaKAGmdVAfc5mAhKuxvbDpa87PMCdJaorcwbDcwmhn4RcoKjIzGaYj7OHiAdNwPmQmr5markGtikt26DX2ajoFO2g335HG45MUDWnBfahOQ6rSTgZGkUbsTzuV79HA/JMpyv4SP4IVrnzyX2BF+7Hc1d7h4WFXDr0CgTMOB9ORkq2XfL5FvD3vWeeu9Eq8NKDT63Dr0WAos/rjJa5L0+sGVeFNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by DM4PR11MB6528.namprd11.prod.outlook.com (2603:10b6:8:8f::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.6; Wed, 17 Dec
 2025 14:37:16 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%4]) with mapi id 15.20.9434.001; Wed, 17 Dec 2025
 14:37:16 +0000
Message-ID: <e4946f5e-49a8-4e52-832b-b2e62d7d2e0d@intel.com>
Date: Wed, 17 Dec 2025 15:35:52 +0100
User-Agent: Mozilla Thunderbird
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: Mina Almasry <almasrymina@google.com>
CC: <netdev@vger.kernel.org>, <bpf@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, YiFei Zhu <zhuyifei@google.com>, "Alexei
 Starovoitov" <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, "David
 S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, "Jesper
 Dangaard Brouer" <hawk@kernel.org>, John Fastabend
 <john.fastabend@gmail.com>, Stanislav Fomichev <sdf@fomichev.me>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, Richard Cochran <richardcochran@gmail.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20251122140839.3922015-1-almasrymina@google.com>
 <c2580ef0-3e44-468d-8675-203de5c82ac9@intel.com>
Content-Language: en-US
In-Reply-To: <c2580ef0-3e44-468d-8675-203de5c82ac9@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR0502CA0021.eurprd05.prod.outlook.com
 (2603:10a6:803:1::34) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|DM4PR11MB6528:EE_
X-MS-Office365-Filtering-Correlation-Id: 1ed89d9f-b992-40ca-220b-08de3d79c5f2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TWhzN3RveE83Wnc4OGhJSENoR0tJVHdiWGtpVkRKR2JnUjlMWFkrdzdCRlpn?=
 =?utf-8?B?Z3BXc3ZKRU1VbGNiTTdmWnU4anlkY3pzRUNMWWd2K1Rvd2ozQis0SFpRNGh4?=
 =?utf-8?B?SWwxcVpZZi92a0NNL2E0VFdjcXJ0NzZYVmw1OExUOWV0MkVHeW5UUUVRMVN2?=
 =?utf-8?B?V0RyWFl5WWphWGZ0U0w4S1JHc2NnQnBQVk5BR1o2VjY1b0RLK1RaSGZXdG5Y?=
 =?utf-8?B?NTdEc09NaXZ4c3RuNTJieTRhMGJ0VWlocTNVelB0Nnd5MFFTcTFiQVRHWFM3?=
 =?utf-8?B?UkdyemZoSjV2SFRLTnVYN1k3U2hpbW1JWEFJSVVYMFhOazFiaGNRQjN3N2hM?=
 =?utf-8?B?M2lRU1M4SERySTRZQWJEa1J1MVBhN3RYWTJZb0c1V3FPM1VXckVVRDNpcGwy?=
 =?utf-8?B?MEZLRnBuYVVTOC91a0FWcUNJTm9WVVV2K0xoMTl5ZnZESzlIakJXbHZuZXBL?=
 =?utf-8?B?bW50eFdEMFpRVXJCSGlHb21FTVlyTmR3c0JNUHA2UUxudW9YSlNXQjRoRWkx?=
 =?utf-8?B?QzA1S3NwNmI4SzJ3U0JNOHMzUUtQZG95bkdyci9Rbm1lMXJyc2VpQzhtcVpW?=
 =?utf-8?B?clZiQTYxSWoxazI1RTcyL2ppc0IyS0xoNTgzS25uL2FsUDc0d2RUVG5pOUtR?=
 =?utf-8?B?SXo3dktiam55akM5dFk3TVlCUGhieFZnK2svMW5kR1hUQW5jWGg3N1JqSnl5?=
 =?utf-8?B?UjdWY1l6SGZQVHEvRERmTm82NlpaWXQrQVd5NVV1ajBVQXh1RVpIZTVqWFF4?=
 =?utf-8?B?NnhMUUJqRHByZUdvaUtIRyt0U25JcUtTaTllOUVka0hUT2t3MFVBUTQ4aGV2?=
 =?utf-8?B?S1lhSElaNjdQUnNtaExtMW1tdjVDekNIbmRqOVZvVklHOUZOcVRSdHV6QmNp?=
 =?utf-8?B?T3JlVDQ0SnZaVUE2SllpSjhuNEkxMUpVMzVJNEVyVTdOY25reVh0YUdkZGFx?=
 =?utf-8?B?YlcyT2dOdTE5U3A5YkdweTVFUEY2K0hTSDlqVmpIa215VlRSMzJTWXMxZEZi?=
 =?utf-8?B?SG5HV2RqdmErTThwYVRSSng5elVRV3BoUldzQjFZY0RnUUwvUEFBZ09Pc2xs?=
 =?utf-8?B?TjZZekNRVGQ3ejhiVWttRGVPR0FXdGVIbnE0NDhDb0RSWVZMY3ZhRkFDL0RW?=
 =?utf-8?B?TXRpdjhKYmxyVFZ4T3JoMFpUcDFlT1dtc0VrTjJKWDhyeGRCUDh1L2Z1L0Jh?=
 =?utf-8?B?T2NNMjg4eEIyWkZWNjJuTW1SQnBmK1Jkck9oS2ZPRjA5TVk2Mm0zMHNRMTQ0?=
 =?utf-8?B?ZDBBWG5wNHRMYitLaVdQM2Z0K2RseVVQeU9wUTJXWUNoeE5kdkJWcENDeHRu?=
 =?utf-8?B?RFRiVzBpa1N3K1FTWFhtdkhlMlZFQW9nRDJOUlFVdjNGVCtBUThRc2p5OHor?=
 =?utf-8?B?R2pQeWFhUHpMdTVXL1VDL3ZsS09DbDdJMmg1S3p4Y3FkcytNa3ByNFo1eGVz?=
 =?utf-8?B?cHF3VStxYXh6cWtSSlY4QjNqc1hjRFBDSCtoaEJJVU8ySTZibXVvRlNxVlZv?=
 =?utf-8?B?SG9xRFdzaFJOZzRNcXRVdzZrTEd6cGFOUWFldUY1Y0JrVzR5bmVFcDlNTDd1?=
 =?utf-8?B?Y2JMY0UxcHJ0alIrOEU0b2U5OG1ZSi95RE0zdTN5Q1pLVFRoT0thRnBrTExF?=
 =?utf-8?B?VEtlWmZCNGZsNjdEeVFLaWlSckRveXBIZW5QNTk4SUg0MW13T01lMldSZEt1?=
 =?utf-8?B?ZWp5WlFScjBXcGFSNzIwa2htSjBieTRpYlpwZ2poS2NuVTBVQk9GbWk4dXhH?=
 =?utf-8?B?K1NYaS9NSlBFUmZNK241OE5qdkQ1dVJqUUdTVXBCUmc2YkIzNGI4cFRwLzc3?=
 =?utf-8?B?TWExUlkwb0NZS1ZyL3lrb3NzaGlnUzlIZHI2b0h3UWtVeWF5cFpGRllZY2lS?=
 =?utf-8?B?NklvOW0rNlozbTZyWndyUVhkU3VJSVZnWWlyVzJ5S25rUTRUMTBiV0IvYmFK?=
 =?utf-8?Q?5RQvuMoo4iEiGvd/Jl3jDQqg0l9CIcwm?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aHQydkJIVmF0SU0vWG5IaHJmaFM2WHRJakRuR1dxUDBOMElWOWlOeC9mR0Ex?=
 =?utf-8?B?U25aUjZ0VHFadW1uLytxYWkydlFKbEcxRFVzSG01dk5rR1NtdE5DWi9GR2lT?=
 =?utf-8?B?UnRtazZOYW9ldk5ONlA4dGk5WW51eEcrTUFWd2ZrUml2TVYvYk9zcDB4Z0tz?=
 =?utf-8?B?ZW9EKytwTnJHUWcwY0Jha1J5UDRXcnpNMkxGaGV3aDVtek5QNDMyZTY2ckl2?=
 =?utf-8?B?cVNWczBITjZoSktOYVFZVDRsZVk4ME5jeDQzK1VUOVRlMGtlMnJvZTFwUWtt?=
 =?utf-8?B?Yi94YVdyMUQyTTlPaVR0WGdJZkZHMHJQMmdwVTZlZGJXTGxlTmNLUGdlZ1dr?=
 =?utf-8?B?MENVUnkwZVNVcGp6OTE0cGVWNlhWaVZqTnVXWjFnWTFKc25ET0VyMjdNekRY?=
 =?utf-8?B?V2hpeHlsZ3o2c0U2S0dsNFVNb0I5OVZMTVZyTlF4bGZ1c0JuemdBRW94OTVQ?=
 =?utf-8?B?a0E3QVdKcHF4VmVGRlc2UEtaZjAzUngwK3RtNEhSTEJpVkNUKzdyWi9Od1ZK?=
 =?utf-8?B?RHE4cnhsUjFmSlpHcGNub1dKZzJCcFh3bWNtRlFMRU1IcGtwK01wdW82aE9s?=
 =?utf-8?B?ZWZPWXV3Q254eHVhWWpndU40b09QcnMybVBTeEoxb2xYZEVDVE9XbldFTSsy?=
 =?utf-8?B?QnNEZTJKdGpQaGRjVFdWb09yU3J2bC9DdFBESzg0QXhETFFoZWpBd3RGK1B0?=
 =?utf-8?B?bndlVFNxcExnVXBOYlJwb2JsTTdUYXA2aUZ3akpIMFFtN3NaTXNFQVpXY2V3?=
 =?utf-8?B?SDRQWFZQMUFLSXVIKzJjYXVLWG1mMmFNakR1TTRneWRPYkJJZitCYUZiS3dV?=
 =?utf-8?B?N2gxQ2dOamxEejVnYVVNYWtCbWdGYnZZNlpVT3dpMWdQSERrWkpuTWVnS2lz?=
 =?utf-8?B?Y0ViMGQ4RzdJZzNRNDZlajVGRnlJRXdJZk5LUG9tNElhSmR6OTg5VzkvWVk2?=
 =?utf-8?B?aDMzRGw3My9vVDJXV3JXQWJkeFRNRm1KdktaV0hyN0dKWDJZbFQvQVBwSFl6?=
 =?utf-8?B?dkNjVG9oeDVPYzJjYVdyRi9JQ2RFNXNSZXRRbzZVUHJEbzNoUFI3TFR6Uy91?=
 =?utf-8?B?U3p2eFQzczdOR1NYWWViRzdJTjNxZzNrWU4vRmdQbWVyb0srZi9IOGVOOTFt?=
 =?utf-8?B?bk51MGdSSWNjWWl1b01nci9RUTZDTWlwT1AxYVQyeUxoeUlGc0JUb2RSVlRZ?=
 =?utf-8?B?S1BBR0J1MGdGaFZHdXc4WjJwRTh2dVJFczh2dXBVdUFoSDYrMlVaRStHVE9u?=
 =?utf-8?B?cmZQSENtY0lqNk42YzVpdWJiRjdnc0ovL3ZYb0hXVDY2Yi9reG54bVhNdFRR?=
 =?utf-8?B?aEg3RTJGTlJmSFgyVXBpelhuNTRCOFFwbVZhVSs5cUk0T1dWaWVXOTFGRUp3?=
 =?utf-8?B?d2JmV2llNldHQWdxSlliSVp2QkVJYmdlNmdoQUQyemdEaTlMdWYwNnVZT3NC?=
 =?utf-8?B?ZUdJbXE0MG5IajJIQ1pLT1lKaFRIMmNxUElCeE9PWTVLOGZiZSt5OFVwWlJp?=
 =?utf-8?B?eXc5SSttQklXYUlrbTRQR1hnUFIwQU1nQVZ3OTYzOUNmY0Q1RHZqUmRiQjNw?=
 =?utf-8?B?bVhGNm5iVGRCakQvYkZ6M2tGbWNmb0RmQVJPMVlkakgySk5UbkpPcUh2eUpi?=
 =?utf-8?B?N0lvVTVZc2svUGtNU1BzTEQ1QVpoWUFhZ051eThWL3daNm1zaG9DbVdOUE1H?=
 =?utf-8?B?b25IU0o5NFA4WkNYYmt1bWRJcjRqVVF5S1haeCtPS2R1TVpSc292bVA0aVBs?=
 =?utf-8?B?WWFDZWs1ZlpXbHpWaVcwdkRFTUF4Rkl5S2JnQU5vVmp1cHRLdDZNenF5WkxN?=
 =?utf-8?B?WlBraDJMcitrV05tUTl1Tm85Snl1S0w0Y1hMa0VIaWxYSS9VMlFnYVh0ekVl?=
 =?utf-8?B?SktLYWdLaHF6LzVaZXJaMGNmdlVOdE94M1pxK2dQaWZ2eFZwY2VpNkZwVjN5?=
 =?utf-8?B?M2pEUXFqMlE2MSswdytBSTRHMk9teElDaHJNVWYrRDFyVTNyZHhUdHJlUjhK?=
 =?utf-8?B?aTB2ekV3QTBCbS9yR0JiQVZCaUhBMjFza2NCVVdLT1RCSDhBWEVtNExrMjJZ?=
 =?utf-8?B?Umw4ZkllOCtucEkza3lJeklKZnFYWnVOdmovNXBHOWNEMG8xOWRLNHVwTEdM?=
 =?utf-8?B?VmI1L0FXT0FRQVN4ZXRJUWwyV1h4dEFCbjdEZXBlQ2dib2FTVURVcjhwNmgy?=
 =?utf-8?B?Snc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ed89d9f-b992-40ca-220b-08de3d79c5f2
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Dec 2025 14:37:15.6789 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YcmpODG1jqieZeQIkpuivM/2zE7u2Rl9EzpcDfaD83XuVdxpG3WQXzTBv9+9H77hEteLeqvb6jJE04UXxf/CLetpBSovvGNPVbgTlufa6hc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6528
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765982250; x=1797518250;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=akTyNKalMZ3GXynKmkzUBe24MOa7iR+0B4zQOlZF9tI=;
 b=AQnAsUCpgz9Mk5Y6yGG32C0unT3RgskbCeo/KvzRF5gXLpDjF039aoJh
 Kd0mSLQsuMe8xDrsgvnaLdQvPq20dGQWS9ADyramBBf5V+oegZoUzKLTU
 I/wnKAGyi3QtrnX/JMUJFP5E8YW88xJV54BP0y6MZFuz+Hj9RAyPaQPEe
 1IL6KO7Xpj3TQv4xxVtiY451bto+3HUvVq9tfCM/VnHploO03B4btAixG
 Mj88Qm/n+wl7vj1cIrtLfdh9t1MXvU5LKrCHxbhw0rgGIYJQ6c9lh48qw
 +GhfxSHbhXiRqSsQvjDr1M1ps2iH6AiCgTj4sVs6LlelZ+sJoXPm/BcJw
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AQnAsUCp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] idpf: export RX hardware
 timestamping information to XDP
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

From: Alexander Lobakin <aleksander.lobakin@intel.com>
Date: Wed, 17 Dec 2025 15:33:40 +0100

> From: Mina Almasry <almasrymina@google.com>
> Date: Sat, 22 Nov 2025 14:08:36 +0000
> 
>> From: YiFei Zhu <zhuyifei@google.com>
>>
>> The logic is similar to idpf_rx_hwtstamp, but the data is exported
>> as a BPF kfunc instead of appended to an skb.
>>
>> A idpf_queue_has(PTP, rxq) condition is added to check the queue
>> supports PTP similar to idpf_rx_process_skb_fields.
>>
>> Cc: intel-wired-lan@lists.osuosl.org
>>
>> Signed-off-by: YiFei Zhu <zhuyifei@google.com>
>> Signed-off-by: Mina Almasry <almasrymina@google.com>
>> ---
>>  drivers/net/ethernet/intel/idpf/xdp.c | 27 +++++++++++++++++++++++++++
>>  1 file changed, 27 insertions(+)
>>
>> diff --git a/drivers/net/ethernet/intel/idpf/xdp.c b/drivers/net/ethernet/intel/idpf/xdp.c
>> index 21ce25b0567f..850389ca66b6 100644
>> --- a/drivers/net/ethernet/intel/idpf/xdp.c
>> +++ b/drivers/net/ethernet/intel/idpf/xdp.c
>> @@ -2,6 +2,7 @@
>>  /* Copyright (C) 2025 Intel Corporation */
>>  
>>  #include "idpf.h"
>> +#include "idpf_ptp.h"
>>  #include "idpf_virtchnl.h"
>>  #include "xdp.h"
>>  #include "xsk.h"
>> @@ -369,6 +370,31 @@ int idpf_xdp_xmit(struct net_device *dev, int n, struct xdp_frame **frames,
>>  				       idpf_xdp_tx_finalize);
>>  }
>>  
>> +static int idpf_xdpmo_rx_timestamp(const struct xdp_md *ctx, u64 *timestamp)

Also please put this function *after* rx_hash() to...

>> +{
>> +	const struct virtchnl2_rx_flex_desc_adv_nic_3 *rx_desc;
> 
> Sorry I know it's a late comment...
> 
> Could you please you the optimized descriptor structure from idpf/xdp.h
> instead of the regular one? To be consistent with the Rx hash timestamp
> function and give more room for optimization.
> 
>> +	const struct libeth_xdp_buff *xdp = (typeof(xdp))ctx;
>> +	const struct idpf_rx_queue *rxq;
>> +	u64 cached_time, ts_ns;
>> +	u32 ts_high;
>> +
>> +	rx_desc = xdp->desc;
>> +	rxq = libeth_xdp_buff_to_rq(xdp, typeof(*rxq), xdp_rxq);
>> +
>> +	if (!idpf_queue_has(PTP, rxq))
>> +		return -ENODATA;
>> +	if (!(rx_desc->ts_low & VIRTCHNL2_RX_FLEX_TSTAMP_VALID))
>> +		return -ENODATA;
>> +
>> +	cached_time = READ_ONCE(rxq->cached_phc_time);
>> +
>> +	ts_high = le32_to_cpu(rx_desc->ts_high);
>> +	ts_ns = idpf_ptp_tstamp_extend_32b_to_64b(cached_time, ts_high);
>> +
>> +	*timestamp = ts_ns;
>> +	return 0;
>> +}
>> +
>>  static int idpf_xdpmo_rx_hash(const struct xdp_md *ctx, u32 *hash,
>>  			      enum xdp_rss_hash_type *rss_type)
>>  {
>> @@ -392,6 +418,7 @@ static int idpf_xdpmo_rx_hash(const struct xdp_md *ctx, u32 *hash,
>>  }
>>  
>>  static const struct xdp_metadata_ops idpf_xdpmo = {
>> +	.xmo_rx_timestamp	= idpf_xdpmo_rx_timestamp,
>>  	.xmo_rx_hash		= idpf_xdpmo_rx_hash,

...keep the alphabetic sorting here.

>>  };
>>  
>>
>> base-commit: e05021a829b834fecbd42b173e55382416571b2c

Thanks,
Olek
