Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CC05F903AE8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jun 2024 13:48:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2AD72405DF;
	Tue, 11 Jun 2024 11:48:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YMvivPcWga7e; Tue, 11 Jun 2024 11:48:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 858CC405B6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718106487;
	bh=STNzgtX7Mcxe47mxNv6KqZPejbD5AGPYziRfoeTdYPk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RPv3USc0X4E0L1yq6Y4Y91eaHRFdO6uv1u4GnUpYoBLUhAvmBhHcUBxbsRh/BBLdV
	 kZ6HHqEFEYryxLuTBHDCn0MHl/hd+EG0ZdmnaKVohA35RTTiSkp16jM2cXixZMTR4o
	 lmB+81gkeYIw4eszUnWQEiIhRj+4dYcRLTMu4pKQnQHVwDfBe6C9X0DlCyTzFi5CmG
	 P3qL/Pu/vHg2gJO3JZa5cixXoHeyTwUqqXJ+pfdsQj4tKIzo+wzbn5krK4imyLXOO7
	 bmQAunV1RRW9tn0clX5HPFwzH7S5k4UsKddCHw2sgWhwT2siXWvBU7Qu6GyPyb0KP9
	 /5az2N+VFX63A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 858CC405B6;
	Tue, 11 Jun 2024 11:48:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 657F91BF3B9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 11:48:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 46F2E80C89
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 11:48:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X0LOLjUjIOWI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Jun 2024 11:48:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D594580C7E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D594580C7E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D594580C7E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 11:48:01 +0000 (UTC)
X-CSE-ConnectionGUID: 2yJmFNZkR9SNDit9RTgQNw==
X-CSE-MsgGUID: uV1UKCdsTl+0oht/zDNIFA==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="25434661"
X-IronPort-AV: E=Sophos;i="6.08,229,1712646000"; d="scan'208";a="25434661"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 04:48:01 -0700
X-CSE-ConnectionGUID: rTU6owHeQxeIcgMJnOOfQQ==
X-CSE-MsgGUID: GM9ZNMcZQeiiKWIq5o0sMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,229,1712646000"; d="scan'208";a="70583411"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Jun 2024 04:48:00 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 11 Jun 2024 04:48:00 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 11 Jun 2024 04:48:00 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 11 Jun 2024 04:48:00 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 11 Jun 2024 04:47:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dPv20318sXzKNeWhZqIla80eHaOlLY4+yy4Ui8WaYNtY/pX8xoDJpoK3tahbJKGnCwKc2R89/JYUXf0EPIUN3TQp89YrN34Lvk+CMdk20g86Box1e39aKdozOn2fAxzBBS1zxS9oX+AWXPLuAuDWuotEaIzaV8JtW0Vf3jFhCtQzz9418/Kcz4tndSnDTI/Q9sEdn9CubN3htm1x8saacmX1ijdcRGU1mteANW2Ldmi6c6/AojrA9dtuPzqsOGj6UMLVzCPXraUw2H3b5rvzgAI59MZwG83Cv8SBzqgQnxTDqiHwtwMZh7g6y+ftQ5Nz550F37OF1w2Noe2hPdg8Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=STNzgtX7Mcxe47mxNv6KqZPejbD5AGPYziRfoeTdYPk=;
 b=aKjFOpavWESkxtsaDLoZCvCj7qYiXUwoavc2lPxQdpPPeN+sbTbTrVRpdPhggJe481VAv8gisdYEZDhgVgTWZP5AfwCR4W91FJ5g484UHnMwYQXiUWvkVpVOObzfLB5A8ExTXk/usGRk4PlR7M4DC3EtVYQQuzch1EaKXQVE3cKE3eAobHBXirafcusMYsVmmIzg1tJ19+Nt4Pqt2Q9X1q+Z7/boK9lJGj9bMabVBtGCKwNE5iDCU6h+Gx93PEFsPYGiz4Rd7BDvn2TJeS2rWnO+YvPZjGHSP9mthKeDkYwIMLJBweDKvrI0zUsMFb1DXss7klTQJ+Q6f5K+rAox7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV8PR11MB8722.namprd11.prod.outlook.com (2603:10b6:408:207::12)
 by CY8PR11MB7105.namprd11.prod.outlook.com (2603:10b6:930:53::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.36; Tue, 11 Jun
 2024 11:47:57 +0000
Received: from LV8PR11MB8722.namprd11.prod.outlook.com
 ([fe80::314a:7f31:dfd4:694c]) by LV8PR11MB8722.namprd11.prod.outlook.com
 ([fe80::314a:7f31:dfd4:694c%2]) with mapi id 15.20.7633.036; Tue, 11 Jun 2024
 11:47:56 +0000
Message-ID: <94cf16ed-709b-4cab-9325-52670db25902@intel.com>
Date: Tue, 11 Jun 2024 13:47:46 +0200
User-Agent: Mozilla Thunderbird
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>, Jacob Keller
 <jacob.e.keller@intel.com>
References: <20240604131400.13655-1-mateusz.polchlopek@intel.com>
 <20240604131400.13655-10-mateusz.polchlopek@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20240604131400.13655-10-mateusz.polchlopek@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR0P278CA0091.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:23::6) To LV8PR11MB8722.namprd11.prod.outlook.com
 (2603:10b6:408:207::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV8PR11MB8722:EE_|CY8PR11MB7105:EE_
X-MS-Office365-Filtering-Correlation-Id: 697911cb-866e-48ed-6f15-08dc8a0c55e6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?THRjYkRWeHM4R1VabHJpVWFqTThlWk9oVHVMaGlPc1NuVS9rRmJybnVycHZT?=
 =?utf-8?B?LzY1RE5tVlVCUDV6dTQ4RExRWDd5V0NTVTlrZUFQTEUvaXlNVnVPZjEvdXdt?=
 =?utf-8?B?Y3BydExjM2owQ0lFOEU0UUhxMTVXMi9LTG9nNVN1VFFsTjNNVHZWeVNCa2kx?=
 =?utf-8?B?ZDc2MXpaWFFwRHkwSmZrRkFyeE12Q2ZjdzYvZkZUQmlLZWFqa1VITi9ZWUZk?=
 =?utf-8?B?Tm03K0U4VzlOK2YxWXhGM1F2dE4wSDF3M08xamxKckppTStva0o3OXJab0pB?=
 =?utf-8?B?NEJTTkxtN0pjR2l1MDdtK2ZteDJLaE5XWHoyaUsrOXNCRWs5Q1lmNW9hcGZF?=
 =?utf-8?B?RzFyS01YNytHWVZSdmR6U2JjRGZjUk80UE9Sb0NwYkNFNUd0S0VkR1ptVmd3?=
 =?utf-8?B?N2pSOE1BVHJZbFEycUxQQUpHbi9ja3RZQ0FSbGEzdHhpc3lXZGdYWmVXZGxV?=
 =?utf-8?B?MFBkWkJ6NlovV2VKcG15V1N0K1JsdzhpcTgxK1Erc3BLbHQ3c0F5N21BRmhC?=
 =?utf-8?B?Tk5hQ1ZqUDZNbnJ5VjhMQmkvcEhtZjltTmJmSmFxMXNPV2p2cVp2MzJPdkJC?=
 =?utf-8?B?MjdxdWZDbTM5bTFtandOemtIaDlDcjRpQUZhMmprdGpEOTFPNDNLMzNBN3hV?=
 =?utf-8?B?S2RGaUdFTUp4dFVMUWoxRFdxTU1qNVprc0R3d3prdHJtY0pJckJGcVlmTWor?=
 =?utf-8?B?clV0V3kvQkRaa2JXTmM3QTRCekNOcTl6ak1EalVqVGdOZ3doenBQVnhua1Jh?=
 =?utf-8?B?U1VzcVFReXFDbnNtcGZiaEhDNzk4UVA3SDFmaFlCUXd2aUo0eCt1ZXJWbUx0?=
 =?utf-8?B?NjIyaDlIUlN4VEVhb1Z4a2Y2ZitBMTJHMGpFaFkzeDBjdmZTbllhV1FEeVpH?=
 =?utf-8?B?ZEUyZlZpY0lZNGZxaGNzQXZjbXJlOUFsVFlSZ2pLN1RWSmJ4SnVmajJvVmZE?=
 =?utf-8?B?UWtaTFZublMrZmQ2cHYxbWZqU0xRRThYcXNmOGUrOEZZdGtzUVREVkYyazlU?=
 =?utf-8?B?eW9wNDRaaWM4dUZqa2hqamRsakJZY1lSQURPb2pEbWtkUUEyNFlwbkQ3clRT?=
 =?utf-8?B?VGRUUzloRFBUT3pwMkdFUmU3UkFFTnpHR1NiZnpTazNrWDRPTkRsaklmNTdW?=
 =?utf-8?B?d0VaU3N0VGhhRm1sVGVXcmRhZm9pMkQ2WlVHdVh2NlRSNDBMdWxpRktuc1Y1?=
 =?utf-8?B?a0VJb0lJSlBDMFBzbjdZODBFalJoQ3FrOUs3Vzl5OThYbk42MzBQejJ4Uk92?=
 =?utf-8?B?enU2NDBMWDRWdi8xOGFLVlNqaE9kazkrMkZZVGdSVjNEY3NOVDQ3czBJdGkv?=
 =?utf-8?B?U0p6TnJPU2RhR2c0OE9aeERPSG96dXRlVFdQeU1yOGlBUVpHQTgxM0JKSDd6?=
 =?utf-8?B?WUk5bTkyRGszS0lJbzluaFd0MFdtcjZweGh2SzVEdEFlcDJ4VGNjajRySUNq?=
 =?utf-8?B?QzNoOUpTdmJycVFlcTJWYkJCV2tjRWs1MEIxelI0VytSUGtmQ1liWHFUOHdB?=
 =?utf-8?B?dHlZL2tRZWpmRlpOR2Z1QWlNdkhYaGpMOUNweWh0ekNBTVd3YkxBZ1FqOXhQ?=
 =?utf-8?B?QWtOV0JMeWlPK24wQW1HZVVtbDhXU0drcjBLWXF4aXR1bEhWNFFNeWI2NzB2?=
 =?utf-8?B?K3UwUExCMVZEY3NocVYreTRmUCtHa1FhcUxvSVhnNU96WHBPLzBwSURvWUdO?=
 =?utf-8?B?NXJIaTRXY0hPSmZpV1dPU3BTRlBsQUUyT245ODYxU2paZ3FvRmJjbEtyUnBX?=
 =?utf-8?Q?uLLB11720GkykVU6sx7MAr8Jwf2XryE5V9D9urt?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV8PR11MB8722.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MW41blRrVXZWRzdQbnFrTnRCc2U2amNRRUIrZUFCRDl6bzNwamJEbEppNDRH?=
 =?utf-8?B?TVRvb2pXSURsVk9NWXRpL0JWTzJyelA1b2dmMXBFZVhSU3o5T1NWWWkvTHhi?=
 =?utf-8?B?SFR1ZkltcVVRZXRlaDg3OWlFbmZ5QWxmcXZQcFBGYlJxekt4Zjk2R0NuSHVB?=
 =?utf-8?B?d21FT2pUdFg3clNhc04xKzBXaG45MWZJUTk4OVNwdjQ4NHVSRGROeHgvdS9H?=
 =?utf-8?B?Z1pJZHp1SERYeVZ2SU9rS2FlNWUzU2tSN3pVRzNxREk5VFBFaWR0M2p5MFBR?=
 =?utf-8?B?OHJUc3JJd01SaGhPZmlwZE1PbTdWdkxSSnk1Um9Kc2VCRG1iQTNEYkZFMWEw?=
 =?utf-8?B?aVJweEVsV000V3Jqa2Z6UkRpWHJ5YkdpcjVIbkpYM3pKQWJuK3U1ZFJsMnBt?=
 =?utf-8?B?dUxTVHBqZnluNjFBUlE4MXFzRmZYcUNkUHdDbDgrOE5VbHgxYWpUS1JUQTBv?=
 =?utf-8?B?aVovRXBhTDdudkVicGJhSkVha1JtVDVuMHhCYncvVWNMTG1BZDVxNE16S1hm?=
 =?utf-8?B?YWJvV2djdUYxMUFreTJHK2VNSTdNc0o4SkVocFJvRFd1aWxHQlJSaWkxcUpY?=
 =?utf-8?B?VHczdlhoNzZ5QkNpTmttdkdKTnV4ZzZmSWlic2piZGJGSHhaWmh2SkFyTXo0?=
 =?utf-8?B?eGJTbmVNLzNoY3N2eTRFaE9NZm9NNTlYOVhCQ2JWM3dyaGJJVVdQaS9Xajc5?=
 =?utf-8?B?MTVSNXBRZ2F1QjZTd285Z3Q4N3NOVXRlTVpwc2JacTFIeWVTYmNDd1ZrMWEv?=
 =?utf-8?B?bVc1amkrZldaQ2F2aXpnVC82VTlpOVZoZEl2ZFdCbGJsYzEycmFwYWQrVnl2?=
 =?utf-8?B?WkZQU1VVbHF2ZjBzQW1vUGJFcXN3TUZNN1VIVXl3ZEFIdGFFQndaUFlxWGhu?=
 =?utf-8?B?VVh4dFBnajZXYVBScE5iMjNlWGZOblZkaEI5Sk5HOURKUFFxM1dhK09ZakN2?=
 =?utf-8?B?TExzMlY1S0FHd2k1Yk04R3BoUytuOGpjcTFZWjZRN2hqVllXZUk4eEs3Zjcx?=
 =?utf-8?B?dElTTEZwSjZTQ3lsOUVTajc3b28rb1RaQW4vblc0T0VDYnpEOG0vaTFKeEJn?=
 =?utf-8?B?R2c5VEUwQ0xYYU1WWlcvZ0M1OEVJVEZvMkhnOFVwZnlnRk9kWlEvMGZGNmZ5?=
 =?utf-8?B?SnI1VGs3Y1dVQmVvdjVtZ3d0cGtPdTV0WlQ1MWFuU3JKRHRsSk5QLzRxcjh2?=
 =?utf-8?B?N2JkaWtJRmNGV0w4M0p0MXRubHVoNzZKakhCYzRZdEJ4VEVKazJzdTM4TnZy?=
 =?utf-8?B?Qkk3YkRCdDI0Vms3UjBNOGw3dkx6VkVCY2FtUVN0OCsyNlB2ZnA1eVRsQktY?=
 =?utf-8?B?OFJzRXc0dXFVaHFTNjhmZExrc0dNT2paSStyR2NOSW9oL1dMV3F5Q1cva0pw?=
 =?utf-8?B?RjN3VzNzbE01dUl1SnR4S3BxdWtBY0Q2cnJwSlNDeUR5OEZNQkg0Z2JLenF6?=
 =?utf-8?B?SjlFb1F5aWprRS92cnNKRDdNZTQxOWVFNit6dzZodXUvaXFLVTlsaExuTzZT?=
 =?utf-8?B?NWpVWVI1MTFUKy9pWlBEM3dYOUgyUmQ5ZzBid3dzZHdZZGNka2l0UGdhdHlj?=
 =?utf-8?B?MkpvbEZXVFp1bVFaR1BJWUVxUXhKYW9NUXI4M1EvWDJOeFNwUW1ZRVNTa001?=
 =?utf-8?B?TjdBWGtTNWcrZEhjUTRMK2REOEQvd3VMbHRtbnA3SXQxVmVNU2xaczlKNG91?=
 =?utf-8?B?WmVFTjFIMHp1UGJIV0pVd2FYTW5JUVZOMFNCamJiRFluR0ZxSWg2eDNxYU5V?=
 =?utf-8?B?cWR4WUdaNEFjSWZrVVZoaEtyNW1ZMFJ2UDdheTRzRWVaTWFMSTRZaC81VmR1?=
 =?utf-8?B?WFBScXRFNFgxVlZqQWdtVmh0V3llSkFveHAvWWFNVjFyVWlkRTE5cjJqbzBt?=
 =?utf-8?B?S3AyK1BvbG5mVVZ0TkdsZ2Z3ZUhnR0tXd2lUdHZOOTJsbFFHRmhtOWkrTFFI?=
 =?utf-8?B?QWxDT2ZyclhOK2t1TTJVWFBxVzNiV3BtVWl2YnpJdmJQd1duQzhyUzZiL2xm?=
 =?utf-8?B?NnZzVDBEa0ZnQ3pPQjZVTXdvdXFNWDFOV1VsV05ESndWVzZybzhaWE9YR0Jm?=
 =?utf-8?B?TWtrUG9kcWt3VUdQL3FyS1VFYU9LYitZL24vSlJpMXZER0FBcWRDeUlYUm9u?=
 =?utf-8?B?b09hUzQwT010bFFuSnBGTDkzeWJZWWNOY256TmRKbllmc25YOVhzSlZsc3dk?=
 =?utf-8?B?OWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 697911cb-866e-48ed-6f15-08dc8a0c55e6
X-MS-Exchange-CrossTenant-AuthSource: LV8PR11MB8722.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2024 11:47:56.7136 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4tGhOoKGOnpoFIQVmyH+CTPTXfkvdavcfBkfj6kIGEYokz/g+SyupwgxJqsVVI0/3VtRMMptaYgyzbUB2azLwEQfNpxc23oPvE/0OxfP9vc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7105
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718106482; x=1749642482;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qwytj1nd7kc1R/N2yc6ktpQuo6hEx05bCcKet/aIy28=;
 b=YzGEuVTfH0ceZONU1lleU1TArrdh2eLwYfNAPb5cICzwN/LGTKMxLrBb
 ClUrqF6CXs+DednSRa+ydj/Uufb4II4zEjYV0/ZLacYrPGqFKSDrgiZ24
 RE6Hhs1A9H8jQ+ePlElFD91ao5ikVUg4UH/A8JAI9d1ZniIgQc5oHOwqV
 0bVEDXng1nMjdcurT2T7+2bIdei4YCuLU7cyyFtG5sDdYFzkZqNREzl33
 AkIu+TSbttRaBPnnvifAjs/A+qQyqfsvPJ1zHEUMiESO97Xz/IJmuZf6m
 o7Z8o8C6GI61eVtlD//KvToakmPIpUwT+H6oZjvUBfD+cdtZDtsEibOF4
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YzGEuVTf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 09/12] iavf: refactor
 iavf_clean_rx_irq to support legacy and flex descriptors
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Date: Tue,  4 Jun 2024 09:13:57 -0400

> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> Using VIRTCHNL_VF_OFFLOAD_FLEX_DESC, the iAVF driver is capable of
> negotiating to enable the advanced flexible descriptor layout. Add the
> flexible NIC layout (RXDID=2) as a member of the Rx descriptor union.
> 
> Also add bit position definitions for the status and error indications
> that are needed.
> 
> The iavf_clean_rx_irq function needs to extract a few fields from the Rx
> descriptor, including the size, rx_ptype, and vlan_tag.
> Move the extraction to a separate function that decodes the fields into
> a structure. This will reduce the burden for handling multiple
> descriptor types by keeping the relevant extraction logic in one place.
> 
> To support handling an additional descriptor format with minimal code
> duplication, refactor Rx checksum handling so that the general logic
> is separated from the bit calculations. Introduce an iavf_rx_desc_decoded
> structure which holds the relevant bits decoded from the Rx descriptor.
> This will enable implementing flexible descriptor handling without
> duplicating the general logic twice.
> 
> Introduce an iavf_extract_flex_rx_fields, iavf_flex_rx_hash, and
> iavf_flex_rx_csum functions which operate on the flexible NIC descriptor
> format instead of the legacy 32 byte format. Based on the negotiated
> RXDID, select the correct function for processing the Rx descriptors.
> 
> With this change, the Rx hot path should be functional when using either
> the default legacy 32byte format or when we switch to the flexible NIC
> layout.
> 
> Modify the Rx hot path to add support for the flexible descriptor
> format and add request enabling Rx timestamps for all queues.
> 
> As in ice, make sure we bump the checksum level if the hardware detected
> a packet type which could have an outer checksum. This is important
> because hardware only verifies the inner checksum.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_txrx.c   | 354 +++++++++++++-----
>  drivers/net/ethernet/intel/iavf/iavf_txrx.h   |   8 +
>  drivers/net/ethernet/intel/iavf/iavf_type.h   | 147 ++++++--
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   |   5 +
>  4 files changed, 391 insertions(+), 123 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> index 26b424fd6718..97da5af52ad7 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> @@ -895,63 +895,68 @@ bool iavf_alloc_rx_buffers(struct iavf_ring *rx_ring, u16 cleaned_count)
>  	return true;
>  }
>  
> +/* iavf_rx_csum_decoded
> + *
> + * Checksum offload bits decoded from the receive descriptor.
> + */
> +struct iavf_rx_csum_decoded {
> +	u8 l3l4p : 1;
> +	u8 ipe : 1;
> +	u8 eipe : 1;
> +	u8 eudpe : 1;
> +	u8 ipv6exadd : 1;
> +	u8 l4e : 1;
> +	u8 pprs : 1;
> +	u8 nat : 1;
> +};

I see the same struct in idpf, probably a candidate for libeth.

> +
>  /**
> - * iavf_rx_checksum - Indicate in skb if hw indicated a good cksum
> + * iavf_rx_csum - Indicate in skb if hw indicated a good checksum
>   * @vsi: the VSI we care about
>   * @skb: skb currently being received and modified
> - * @rx_desc: the receive descriptor
> + * @ptype: decoded ptype information
> + * @csum_bits: decoded Rx descriptor information
>   **/
> -static void iavf_rx_checksum(struct iavf_vsi *vsi,
> -			     struct sk_buff *skb,
> -			     union iavf_rx_desc *rx_desc)
> +static void iavf_rx_csum(struct iavf_vsi *vsi, struct sk_buff *skb,

Can't @vsi be const?

> +			 struct libeth_rx_pt *ptype,

struct libeth_rx_pt is smaller than a pointer to it. Pass it directly

> +			 struct iavf_rx_csum_decoded *csum_bits)

Same for this struct.

>  {
> -	struct libeth_rx_pt decoded;
> -	u32 rx_error, rx_status;
>  	bool ipv4, ipv6;
> -	u8 ptype;
> -	u64 qword;
>  
>  	skb->ip_summed = CHECKSUM_NONE;
>  
> -	qword = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
> -	ptype = FIELD_GET(IAVF_RXD_QW1_PTYPE_MASK, qword);
> -
> -	decoded = libie_rx_pt_parse(ptype);
> -	if (!libeth_rx_pt_has_checksum(vsi->netdev, decoded))
> -		return;
> -
> -	rx_error = FIELD_GET(IAVF_RXD_QW1_ERROR_MASK, qword);
> -	rx_status = FIELD_GET(IAVF_RXD_QW1_STATUS_MASK, qword);
> -
>  	/* did the hardware decode the packet and checksum? */
> -	if (!(rx_status & BIT(IAVF_RX_DESC_STATUS_L3L4P_SHIFT)))
> +	if (!csum_bits->l3l4p)
>  		return;
>  
> -	ipv4 = libeth_rx_pt_get_ip_ver(decoded) == LIBETH_RX_PT_OUTER_IPV4;
> -	ipv6 = libeth_rx_pt_get_ip_ver(decoded) == LIBETH_RX_PT_OUTER_IPV6;
> +	ipv4 = libeth_rx_pt_get_ip_ver(*ptype) == LIBETH_RX_PT_OUTER_IPV4;
> +	ipv6 = libeth_rx_pt_get_ip_ver(*ptype) == LIBETH_RX_PT_OUTER_IPV6;
>  
> -	if (ipv4 &&
> -	    (rx_error & (BIT(IAVF_RX_DESC_ERROR_IPE_SHIFT) |
> -			 BIT(IAVF_RX_DESC_ERROR_EIPE_SHIFT))))
> +	if (ipv4 && (csum_bits->ipe || csum_bits->eipe))
>  		goto checksum_fail;
>  
>  	/* likely incorrect csum if alternate IP extension headers found */
> -	if (ipv6 &&
> -	    rx_status & BIT(IAVF_RX_DESC_STATUS_IPV6EXADD_SHIFT))
> -		/* don't increment checksum err here, non-fatal err */
> +	if (ipv6 && csum_bits->ipv6exadd)
>  		return;
>  
>  	/* there was some L4 error, count error and punt packet to the stack */
> -	if (rx_error & BIT(IAVF_RX_DESC_ERROR_L4E_SHIFT))
> +	if (csum_bits->l4e)
>  		goto checksum_fail;
>  
>  	/* handle packets that were not able to be checksummed due
>  	 * to arrival speed, in this case the stack can compute
>  	 * the csum.
>  	 */
> -	if (rx_error & BIT(IAVF_RX_DESC_ERROR_PPRS_SHIFT))
> +	if (csum_bits->pprs)
>  		return;
>  
> +	/* If there is an outer header present that might contain a checksum
> +	 * we need to bump the checksum level by 1 to reflect the fact that
> +	 * we are indicating we validated the inner checksum.
> +	 */
> +	if (ptype->tunnel_type >= LIBETH_RX_PT_TUNNEL_IP_GRENAT)
> +		skb->csum_level = 1;
> +
>  	skb->ip_summed = CHECKSUM_UNNECESSARY;
>  	return;

For the whole function: you need to use unlikely() for checksum errors
to not slow down regular frames.
Also, I would even unlikely() packets with not verified checksum as it's
really rare case.
Optimize hotpath for most common workloads.

>  
> @@ -960,22 +965,105 @@ static void iavf_rx_checksum(struct iavf_vsi *vsi,
>  }
>  
>  /**
> - * iavf_rx_hash - set the hash value in the skb
> + * iavf_legacy_rx_csum - Indicate in skb if hw indicated a good cksum
> + * @vsi: the VSI we care about
> + * @skb: skb currently being received and modified
> + * @rx_desc: the receive descriptor
> + *
> + * This function only operates on the VIRTCHNL_RXDID_1_32B_BASE legacy 32byte
> + * descriptor writeback format.
> + **/
> +static void iavf_legacy_rx_csum(struct iavf_vsi *vsi,
> +				struct sk_buff *skb,
> +				union iavf_rx_desc *rx_desc)

@vsi and @rx_desc can be const.

> +{
> +	struct iavf_rx_csum_decoded csum_bits;
> +	struct libeth_rx_pt decoded;
> +
> +	u32 rx_error;
> +	u64 qword;
> +	u16 ptype;
> +
> +	qword = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
> +	ptype = FIELD_GET(IAVF_RXD_QW1_PTYPE_MASK, qword);
> +	rx_error = FIELD_GET(IAVF_RXD_QW1_ERROR_MASK, qword);

You don't need @rx_error before libeth_rx_pt_has_checksum().

> +	decoded = libie_rx_pt_parse(ptype);
> +
> +	if (!libeth_rx_pt_has_checksum(vsi->netdev, decoded))
> +		return;
> +
> +	csum_bits.ipe = FIELD_GET(IAVF_RX_DESC_ERROR_IPE_MASK, rx_error);

So, @rx_error is a field of @qword and then there are more subfields?
Why not extract those fields directly from @qword?

> +	csum_bits.eipe = FIELD_GET(IAVF_RX_DESC_ERROR_EIPE_MASK, rx_error);
> +	csum_bits.l4e = FIELD_GET(IAVF_RX_DESC_ERROR_L4E_MASK, rx_error);
> +	csum_bits.pprs = FIELD_GET(IAVF_RX_DESC_ERROR_PPRS_MASK, rx_error);
> +	csum_bits.l3l4p = FIELD_GET(IAVF_RX_DESC_STATUS_L3L4P_MASK, rx_error);
> +	csum_bits.ipv6exadd = FIELD_GET(IAVF_RX_DESC_STATUS_IPV6EXADD_MASK,
> +					rx_error);
> +	csum_bits.nat = 0;
> +	csum_bits.eudpe = 0;

Initialize the whole struct with = { } at the declaration site and
remove this.

> +
> +	iavf_rx_csum(vsi, skb, &decoded, &csum_bits);

In order to avoid having 2 call sites for this, make
iavf_{flex,legacy}_rx_csum() return @csum_bits and call iavf_rx_csum()
outside of them once.

> +}
> +
> +/**
> + * iavf_flex_rx_csum - Indicate in skb if hw indicated a good cksum
> + * @vsi: the VSI we care about
> + * @skb: skb currently being received and modified
> + * @rx_desc: the receive descriptor
> + *
> + * This function only operates on the VIRTCHNL_RXDID_2_FLEX_SQ_NIC flexible
> + * descriptor writeback format.
> + **/
> +static void iavf_flex_rx_csum(struct iavf_vsi *vsi, struct sk_buff *skb,
> +			      union iavf_rx_desc *rx_desc)

Same for const.

> +{
> +	struct iavf_rx_csum_decoded csum_bits;
> +	struct libeth_rx_pt decoded;
> +	u16 rx_status0, ptype;
> +
> +	rx_status0 = le16_to_cpu(rx_desc->flex_wb.status_error0);

This is not needed before libeth_rx_pt_has_checksum().

> +	ptype = FIELD_GET(IAVF_RX_FLEX_DESC_PTYPE_M,
> +			  le16_to_cpu(rx_desc->flex_wb.ptype_flexi_flags0));

You also access this field later when extracting base fields. Shouldn't
this be combined somehow?

> +	decoded = libie_rx_pt_parse(ptype);
> +
> +	if (!libeth_rx_pt_has_checksum(vsi->netdev, decoded))
> +		return;
> +
> +	csum_bits.ipe = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS0_XSUM_IPE_M,
> +				  rx_status0);
> +	csum_bits.eipe = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS0_XSUM_EIPE_M,
> +				   rx_status0);
> +	csum_bits.l4e = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS0_XSUM_L4E_M,
> +				  rx_status0);
> +	csum_bits.eudpe = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS0_XSUM_EUDPE_M,
> +				    rx_status0);
> +	csum_bits.l3l4p = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS0_L3L4P_M,
> +				    rx_status0);
> +	csum_bits.ipv6exadd = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS0_IPV6EXADD_M,
> +					rx_status0);
> +	csum_bits.nat = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS1_NAT_M, rx_status0);
> +	csum_bits.pprs = 0;

See above for struct initialization.

> +
> +	iavf_rx_csum(vsi, skb, &decoded, &csum_bits);

See above.

> +}
> +
> +/**
> + * iavf_legacy_rx_hash - set the hash value in the skb
>   * @ring: descriptor ring
>   * @rx_desc: specific descriptor
>   * @skb: skb currently being received and modified
>   * @rx_ptype: Rx packet type
> + *
> + * This function only operates on the VIRTCHNL_RXDID_1_32B_BASE legacy 32byte
> + * descriptor writeback format.
>   **/
> -static void iavf_rx_hash(struct iavf_ring *ring,
> -			 union iavf_rx_desc *rx_desc,
> -			 struct sk_buff *skb,
> -			 u8 rx_ptype)
> +static void iavf_legacy_rx_hash(struct iavf_ring *ring,
> +				union iavf_rx_desc *rx_desc,

Const for both.

> +				struct sk_buff *skb, u8 rx_ptype)
>  {
> +	const __le64 rss_mask = cpu_to_le64(IAVF_RX_DESC_STATUS_FLTSTAT_MASK);
>  	struct libeth_rx_pt decoded;
>  	u32 hash;
> -	const __le64 rss_mask =
> -		cpu_to_le64((u64)IAVF_RX_DESC_FLTSTAT_RSS_HASH <<
> -			    IAVF_RX_DESC_STATUS_FLTSTAT_SHIFT);

Looks like unrelated, but nice change anyway.

>  
>  	decoded = libie_rx_pt_parse(rx_ptype);
>  	if (!libeth_rx_pt_has_hash(ring->netdev, decoded))
> @@ -987,6 +1075,38 @@ static void iavf_rx_hash(struct iavf_ring *ring,
>  	}
>  }
>  
> +/**
> + * iavf_flex_rx_hash - set the hash value in the skb
> + * @ring: descriptor ring
> + * @rx_desc: specific descriptor
> + * @skb: skb currently being received and modified
> + * @rx_ptype: Rx packet type
> + *
> + * This function only operates on the VIRTCHNL_RXDID_2_FLEX_SQ_NIC flexible
> + * descriptor writeback format.
> + **/
> +static void iavf_flex_rx_hash(struct iavf_ring *ring,
> +			      union iavf_rx_desc *rx_desc,

Const.

> +			      struct sk_buff *skb, u16 rx_ptype)

Why is @rx_ptype u16 here, but u8 above? Just use u32 for both.

> +{
> +	struct libeth_rx_pt decoded;
> +	u16 status0;
> +	u32 hash;
> +
> +	if (!(ring->netdev->features & NETIF_F_RXHASH))

This is checked in libeth_rx_pt_has_hash(), why check 2 times?

> +		return;
> +
> +	decoded = libie_rx_pt_parse(rx_ptype);
> +	if (!libeth_rx_pt_has_hash(ring->netdev, decoded))
> +		return;
> +
> +	status0 = le16_to_cpu(rx_desc->flex_wb.status_error0);
> +	if (status0 & IAVF_RX_FLEX_DESC_STATUS0_RSS_VALID_M) {
> +		hash = le32_to_cpu(rx_desc->flex_wb.rss_hash);
> +		libeth_rx_pt_set_hash(skb, hash, decoded);
> +	}
> +}

Also, just parse rx_ptype once in process_skb_fields(), you don't need
to do that in each function.

> +
>  /**
>   * iavf_process_skb_fields - Populate skb header fields from Rx descriptor
>   * @rx_ring: rx descriptor ring packet is being transacted on
> @@ -998,14 +1118,17 @@ static void iavf_rx_hash(struct iavf_ring *ring,
>   * order to populate the hash, checksum, VLAN, protocol, and
>   * other fields within the skb.
>   **/
> -static void
> -iavf_process_skb_fields(struct iavf_ring *rx_ring,
> -			union iavf_rx_desc *rx_desc, struct sk_buff *skb,
> -			u8 rx_ptype)
> +static void iavf_process_skb_fields(struct iavf_ring *rx_ring,
> +				    union iavf_rx_desc *rx_desc,

Const.

> +				    struct sk_buff *skb, u16 rx_ptype)
>  {
> -	iavf_rx_hash(rx_ring, rx_desc, skb, rx_ptype);
> -
> -	iavf_rx_checksum(rx_ring->vsi, skb, rx_desc);
> +	if (rx_ring->rxdid == VIRTCHNL_RXDID_1_32B_BASE) {

Any likely/unlikely() here? Or it's 50:50?

> +		iavf_legacy_rx_hash(rx_ring, rx_desc, skb, rx_ptype);
> +		iavf_legacy_rx_csum(rx_ring->vsi, skb, rx_desc);
> +	} else {
> +		iavf_flex_rx_hash(rx_ring, rx_desc, skb, rx_ptype);
> +		iavf_flex_rx_csum(rx_ring->vsi, skb, rx_desc);
> +	}
>  
>  	skb_record_rx_queue(skb, rx_ring->queue_index);
>  
> @@ -1092,7 +1215,7 @@ static struct sk_buff *iavf_build_skb(const struct libeth_fqe *rx_buffer,
>  /**
>   * iavf_is_non_eop - process handling of non-EOP buffers
>   * @rx_ring: Rx ring being processed
> - * @rx_desc: Rx descriptor for current buffer
> + * @fields: Rx descriptor extracted fields
>   * @skb: Current socket buffer containing buffer in progress
>   *
>   * This function updates next to clean.  If the buffer is an EOP buffer
> @@ -1101,7 +1224,7 @@ static struct sk_buff *iavf_build_skb(const struct libeth_fqe *rx_buffer,
>   * that this is in fact a non-EOP buffer.
>   **/
>  static bool iavf_is_non_eop(struct iavf_ring *rx_ring,
> -			    union iavf_rx_desc *rx_desc,
> +			    struct iavf_rx_extracted *fields,

Pass value instead of pointer.

>  			    struct sk_buff *skb)

Is it still needed?

>  {
>  	u32 ntc = rx_ring->next_to_clean + 1;
> @@ -1113,8 +1236,7 @@ static bool iavf_is_non_eop(struct iavf_ring *rx_ring,
>  	prefetch(IAVF_RX_DESC(rx_ring, ntc));
>  
>  	/* if we are the last buffer then there is nothing else to do */
> -#define IAVF_RXD_EOF BIT(IAVF_RX_DESC_STATUS_EOF_SHIFT)
> -	if (likely(iavf_test_staterr(rx_desc, IAVF_RXD_EOF)))
> +	if (likely(fields->end_of_packet))
>  		return false;
>  
>  	rx_ring->rx_stats.non_eop_descs++;
> @@ -1122,6 +1244,91 @@ static bool iavf_is_non_eop(struct iavf_ring *rx_ring,
>  	return true;
>  }
>  
> +/**
> + * iavf_extract_legacy_rx_fields - Extract fields from the Rx descriptor
> + * @rx_ring: rx descriptor ring
> + * @rx_desc: the descriptor to process
> + * @fields: storage for extracted values
> + *
> + * Decode the Rx descriptor and extract relevant information including the
> + * size, VLAN tag, Rx packet type, end of packet field and RXE field value.
> + *
> + * This function only operates on the VIRTCHNL_RXDID_1_32B_BASE legacy 32byte
> + * descriptor writeback format.
> + */
> +static void iavf_extract_legacy_rx_fields(struct iavf_ring *rx_ring,
> +					  union iavf_rx_desc *rx_desc,

Consts.

> +					  struct iavf_rx_extracted *fields)

Return a struct &iavf_rx_extracted instead of passing a pointer to it.

> +{
> +	u64 qword = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
> +
> +	fields->size = FIELD_GET(IAVF_RXD_QW1_LENGTH_PBUF_MASK, qword);
> +	fields->rx_ptype = FIELD_GET(IAVF_RXD_QW1_PTYPE_MASK, qword);
> +
> +	if (qword & IAVF_RX_DESC_STATUS_L2TAG1P_MASK &&
> +	    rx_ring->flags & IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1)
> +		fields->vlan_tag = le16_to_cpu(rx_desc->wb.qword0.lo_dword.l2tag1);
> +
> +	if (rx_desc->wb.qword2.ext_status &
> +	    cpu_to_le16(BIT(IAVF_RX_DESC_EXT_STATUS_L2TAG2P_SHIFT)) &&

Bitops must have own pairs of braces.

> +	    rx_ring->flags & IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2)
> +		fields->vlan_tag = le16_to_cpu(rx_desc->wb.qword2.l2tag2_2);
> +
> +	fields->end_of_packet = FIELD_GET(IAVF_RX_DESC_STATUS_EOF_MASK, qword);
> +	fields->rxe = FIELD_GET(BIT(IAVF_RXD_QW1_ERROR_SHIFT), qword);
> +}
> +
> +/**
> + * iavf_extract_flex_rx_fields - Extract fields from the Rx descriptor
> + * @rx_ring: rx descriptor ring
> + * @rx_desc: the descriptor to process
> + * @fields: storage for extracted values
> + *
> + * Decode the Rx descriptor and extract relevant information including the
> + * size, VLAN tag, Rx packet type, end of packet field and RXE field value.
> + *
> + * This function only operates on the VIRTCHNL_RXDID_2_FLEX_SQ_NIC flexible
> + * descriptor writeback format.
> + */
> +static void iavf_extract_flex_rx_fields(struct iavf_ring *rx_ring,
> +					union iavf_rx_desc *rx_desc,
> +					struct iavf_rx_extracted *fields)

Same for everything.

> +{
> +	u16 status0, status1, flexi_flags0;
> +
> +	fields->size = FIELD_GET(IAVF_RX_FLEX_DESC_PKT_LEN_M,
> +				 le16_to_cpu(rx_desc->flex_wb.pkt_len));

le16_get_bits().

> +
> +	flexi_flags0 = le16_to_cpu(rx_desc->flex_wb.ptype_flexi_flags0);
> +
> +	fields->rx_ptype = FIELD_GET(IAVF_RX_FLEX_DESC_PTYPE_M, flexi_flags0);

le16_get_bits() instead of these two?

> +
> +	status0 = le16_to_cpu(rx_desc->flex_wb.status_error0);
> +	if (status0 & IAVF_RX_FLEX_DESC_STATUS0_L2TAG1P_M &&
> +	    rx_ring->flags & IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1)

Braces for bitops.

> +		fields->vlan_tag = le16_to_cpu(rx_desc->flex_wb.l2tag1);
> +
> +	status1 = le16_to_cpu(rx_desc->flex_wb.status_error1);
> +	if (status1 & IAVF_RX_FLEX_DESC_STATUS1_L2TAG2P_M &&
> +	    rx_ring->flags & IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2)
> +		fields->vlan_tag = le16_to_cpu(rx_desc->flex_wb.l2tag2_2nd);

(same)

> +
> +	fields->end_of_packet = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS_ERR0_EOP_BIT,
> +					  status0);
> +	fields->rxe = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS_ERR0_RXE_BIT,
> +				status0);
> +}
> +
> +static void iavf_extract_rx_fields(struct iavf_ring *rx_ring,
> +				   union iavf_rx_desc *rx_desc,
> +				   struct iavf_rx_extracted *fields)

Consts + return struct @fields directly.

> +{
> +	if (rx_ring->rxdid == VIRTCHNL_RXDID_1_32B_BASE)

You check this several times, this could be combined and optimized.

> +		iavf_extract_legacy_rx_fields(rx_ring, rx_desc, fields);
> +	else
> +		iavf_extract_flex_rx_fields(rx_ring, rx_desc, fields);
> +}
> +
>  /**
>   * iavf_clean_rx_irq - Clean completed descriptors from Rx ring - bounce buf
>   * @rx_ring: rx descriptor ring to transact packets on
> @@ -1142,12 +1349,9 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
>  	bool failure = false;
>  
>  	while (likely(total_rx_packets < (unsigned int)budget)) {
> +		struct iavf_rx_extracted fields = {};
>  		struct libeth_fqe *rx_buffer;
>  		union iavf_rx_desc *rx_desc;
> -		unsigned int size;
> -		u16 vlan_tag = 0;
> -		u8 rx_ptype;
> -		u64 qword;
>  
>  		/* return some buffers to hardware, one at a time is too slow */
>  		if (cleaned_count >= IAVF_RX_BUFFER_WRITE) {
> @@ -1158,35 +1362,27 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
>  
>  		rx_desc = IAVF_RX_DESC(rx_ring, rx_ring->next_to_clean);
>  
> -		/* status_error_len will always be zero for unused descriptors
> -		 * because it's cleared in cleanup, and overlaps with hdr_addr
> -		 * which is always zero because packet split isn't used, if the
> -		 * hardware wrote DD then the length will be non-zero
> -		 */
> -		qword = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
> -
>  		/* This memory barrier is needed to keep us from reading
>  		 * any other fields out of the rx_desc until we have
>  		 * verified the descriptor has been written back.
>  		 */
>  		dma_rmb();
> -#define IAVF_RXD_DD BIT(IAVF_RX_DESC_STATUS_DD_SHIFT)
> -		if (!iavf_test_staterr(rx_desc, IAVF_RXD_DD))
> +		if (!iavf_test_staterr(rx_desc, IAVF_RX_DESC_STATUS_DD_MASK))
>  			break;
>  
> -		size = FIELD_GET(IAVF_RXD_QW1_LENGTH_PBUF_MASK, qword);
> +		iavf_extract_rx_fields(rx_ring, rx_desc, &fields);
>  
>  		iavf_trace(clean_rx_irq, rx_ring, rx_desc, skb);
>  
>  		rx_buffer = &rx_ring->rx_fqes[rx_ring->next_to_clean];
> -		if (!libeth_rx_sync_for_cpu(rx_buffer, size))
> +		if (!libeth_rx_sync_for_cpu(rx_buffer, fields.size))
>  			goto skip_data;
>  
>  		/* retrieve a buffer from the ring */
>  		if (skb)
> -			iavf_add_rx_frag(skb, rx_buffer, size);
> +			iavf_add_rx_frag(skb, rx_buffer, fields.size);
>  		else
> -			skb = iavf_build_skb(rx_buffer, size);
> +			skb = iavf_build_skb(rx_buffer, fields.size);
>  
>  		/* exit if we failed to retrieve a buffer */
>  		if (!skb) {
> @@ -1197,15 +1393,14 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
>  skip_data:
>  		cleaned_count++;
>  
> -		if (iavf_is_non_eop(rx_ring, rx_desc, skb) || unlikely(!skb))
> +		if (iavf_is_non_eop(rx_ring, &fields, skb) || unlikely(!skb))
>  			continue;
>  
> -		/* ERR_MASK will only have valid bits if EOP set, and
> -		 * what we are doing here is actually checking
> -		 * IAVF_RX_DESC_ERROR_RXE_SHIFT, since it is the zeroth bit in
> -		 * the error field
> +		/* RXE field in descriptor is an indication of the MAC errors
> +		 * (like CRC, alignment, oversize etc). If it is set then iavf
> +		 * should finish.
>  		 */
> -		if (unlikely(iavf_test_staterr(rx_desc, BIT(IAVF_RXD_QW1_ERROR_SHIFT)))) {
> +		if (unlikely(fields.rxe)) {
>  			dev_kfree_skb_any(skb);
>  			skb = NULL;
>  			continue;
> @@ -1219,22 +1414,11 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
>  		/* probably a little skewed due to removing CRC */
>  		total_rx_bytes += skb->len;
>  
> -		qword = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
> -		rx_ptype = FIELD_GET(IAVF_RXD_QW1_PTYPE_MASK, qword);
> -
>  		/* populate checksum, VLAN, and protocol */
> -		iavf_process_skb_fields(rx_ring, rx_desc, skb, rx_ptype);
> -
> -		if (qword & BIT(IAVF_RX_DESC_STATUS_L2TAG1P_SHIFT) &&
> -		    rx_ring->flags & IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1)
> -			vlan_tag = le16_to_cpu(rx_desc->wb.qword0.lo_dword.l2tag1);
> -		if (rx_desc->wb.qword2.ext_status &
> -		    cpu_to_le16(BIT(IAVF_RX_DESC_EXT_STATUS_L2TAG2P_SHIFT)) &&
> -		    rx_ring->flags & IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2)
> -			vlan_tag = le16_to_cpu(rx_desc->wb.qword2.l2tag2_2);

BTW I'm wondering whether filling the whole @fields can be less
optimized than accesssing descriptor fields one by one like it was here
before.
I mean, in some cases you won't need all the fields from the extracted
struct, but they will be read and initialized anyway.

> +		iavf_process_skb_fields(rx_ring, rx_desc, skb, fields.rx_ptype);
>  
>  		iavf_trace(clean_rx_irq_rx, rx_ring, rx_desc, skb);
> -		iavf_receive_skb(rx_ring, skb, vlan_tag);
> +		iavf_receive_skb(rx_ring, skb, fields.vlan_tag);
>  		skb = NULL;
>  
>  		/* update budget accounting */
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.h b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
> index 17309d8625ac..3661cd57a068 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_txrx.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
> @@ -99,6 +99,14 @@ static inline bool iavf_test_staterr(union iavf_rx_desc *rx_desc,
>  		  cpu_to_le64(stat_err_bits));
>  }
>  
> +struct iavf_rx_extracted {
> +	unsigned int size;
> +	u16 vlan_tag;
> +	u16 rx_ptype;
> +	u8 end_of_packet:1;
> +	u8 rxe:1;
> +};

Also something libethish, but not sure for this one.

> +
>  /* How many Rx Buffers do we bundle into one write to the hardware ? */
>  #define IAVF_RX_INCREMENT(r, i) \
>  	do {					\
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_type.h b/drivers/net/ethernet/intel/iavf/iavf_type.h
> index f6b09e57abce..82c16a720807 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_type.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf_type.h
> @@ -206,6 +206,45 @@ union iavf_16byte_rx_desc {
>  	} wb;  /* writeback */
>  };
>  
> +/* Rx Flex Descriptor NIC Profile
> + * RxDID Profile ID 2
> + * Flex-field 0: RSS hash lower 16-bits
> + * Flex-field 1: RSS hash upper 16-bits
> + * Flex-field 2: Flow ID lower 16-bits
> + * Flex-field 3: Flow ID higher 16-bits
> + * Flex-field 4: reserved, VLAN ID taken from L2Tag
> + */
> +struct iavf_32byte_rx_flex_wb {
> +	/* Qword 0 */
> +	u8 rxdid;
> +	u8 mir_id_umb_cast;
> +	__le16 ptype_flexi_flags0;
> +	__le16 pkt_len;
> +	__le16 hdr_len_sph_flex_flags1;
> +
> +	/* Qword 1 */
> +	__le16 status_error0;
> +	__le16 l2tag1;
> +	__le32 rss_hash;
> +
> +	/* Qword 2 */
> +	__le16 status_error1;
> +	u8 flexi_flags2;
> +	u8 ts_low;
> +	__le16 l2tag2_1st;
> +	__le16 l2tag2_2nd;
> +
> +	/* Qword 3 */
> +	__le32 flow_id;
> +	union {
> +		struct {
> +			__le16 rsvd;
> +			__le16 flow_id_ipv6;
> +		} flex;
> +		__le32 ts_high;
> +	} flex_ts;
> +};

I'm wondering whether HW descriptors can be defined as just a bunch of
u64 qwords instead of all those u8/__le16 etc. fields. That would be faster.
In case this would work differently on BE and LE, #ifdefs.

> +
>  union iavf_32byte_rx_desc {
>  	struct {
>  		__le64  pkt_addr; /* Packet buffer address */
> @@ -253,35 +292,34 @@ union iavf_32byte_rx_desc {
>  			} hi_dword;
>  		} qword3;
>  	} wb;  /* writeback */
> +	struct iavf_32byte_rx_flex_wb flex_wb;

So, already existing formats were described here directly, but flex is
declared as a field? Can this be more consistent?

>  };
>  
> -enum iavf_rx_desc_status_bits {
> -	/* Note: These are predefined bit offsets */
> -	IAVF_RX_DESC_STATUS_DD_SHIFT		= 0,
> -	IAVF_RX_DESC_STATUS_EOF_SHIFT		= 1,
> -	IAVF_RX_DESC_STATUS_L2TAG1P_SHIFT	= 2,
> -	IAVF_RX_DESC_STATUS_L3L4P_SHIFT		= 3,
> -	IAVF_RX_DESC_STATUS_CRCP_SHIFT		= 4,
> -	IAVF_RX_DESC_STATUS_TSYNINDX_SHIFT	= 5, /* 2 BITS */
> -	IAVF_RX_DESC_STATUS_TSYNVALID_SHIFT	= 7,
> -	/* Note: Bit 8 is reserved in X710 and XL710 */
> -	IAVF_RX_DESC_STATUS_EXT_UDP_0_SHIFT	= 8,
> -	IAVF_RX_DESC_STATUS_UMBCAST_SHIFT	= 9, /* 2 BITS */
> -	IAVF_RX_DESC_STATUS_FLM_SHIFT		= 11,
> -	IAVF_RX_DESC_STATUS_FLTSTAT_SHIFT	= 12, /* 2 BITS */
> -	IAVF_RX_DESC_STATUS_LPBK_SHIFT		= 14,
> -	IAVF_RX_DESC_STATUS_IPV6EXADD_SHIFT	= 15,
> -	IAVF_RX_DESC_STATUS_RESERVED_SHIFT	= 16, /* 2 BITS */
> -	/* Note: For non-tunnel packets INT_UDP_0 is the right status for
> -	 * UDP header
> -	 */
> -	IAVF_RX_DESC_STATUS_INT_UDP_0_SHIFT	= 18,
> -	IAVF_RX_DESC_STATUS_LAST /* this entry must be last!!! */
> -};
> +/* Note: These are predefined bit offsets */
> +#define IAVF_RX_DESC_STATUS_DD_MASK		BIT(0)
> +#define IAVF_RX_DESC_STATUS_EOF_MASK		BIT(1)
> +#define IAVF_RX_DESC_STATUS_L2TAG1P_MASK	BIT(2)
> +#define IAVF_RX_DESC_STATUS_L3L4P_MASK		BIT(3)
> +#define IAVF_RX_DESC_STATUS_CRCP_MASK		BIT(4)
> +#define IAVF_RX_DESC_STATUS_TSYNINDX_MASK	GENMASK_ULL(6, 5)
> +#define IAVF_RX_DESC_STATUS_TSYNVALID_MASK	BIT(7)
> +/* Note: Bit 8 is reserved in X710 and XL710 */
> +#define IAVF_RX_DESC_STATUS_EXT_UDP_0_MASK	BIT(8)
> +#define IAVF_RX_DESC_STATUS_UMBCAST_MASK	GENMASK_ULL(10, 9)
> +#define IAVF_RX_DESC_STATUS_FLM_MASK		BIT(11)
> +#define IAVF_RX_DESC_STATUS_FLTSTAT_MASK	GENMASK_ULL(13, 12)
> +#define IAVF_RX_DESC_STATUS_LPBK_MASK		BIT(14)
> +#define IAVF_RX_DESC_STATUS_IPV6EXADD_MASK	BIT(15)
> +#define IAVF_RX_DESC_STATUS_RESERVED_MASK	GENMASK_ULL(17, 16)
> +/* Note: For non-tunnel packets INT_UDP_0 is the right status for
> + * UDP header
> + */
> +#define IAVF_RX_DESC_STATUS_INT_UDP_0_MASK	BIT(18)
> +
> +#define IAVF_RX_FLEX_DESC_STATUS_ERR0_EOP_BIT	BIT(1)
> +#define IAVF_RX_FLEX_DESC_STATUS_ERR0_RXE_BIT	BIT(10)
>  
> -#define IAVF_RXD_QW1_STATUS_SHIFT	0
> -#define IAVF_RXD_QW1_STATUS_MASK	((BIT(IAVF_RX_DESC_STATUS_LAST) - 1) \
> -					 << IAVF_RXD_QW1_STATUS_SHIFT)
> +#define IAVF_RXD_QW1_STATUS_MASK		(BIT(19) - 1)

GENMASK().

>  
>  #define IAVF_RXD_QW1_STATUS_TSYNINDX_SHIFT IAVF_RX_DESC_STATUS_TSYNINDX_SHIFT
>  #define IAVF_RXD_QW1_STATUS_TSYNINDX_MASK  (0x3UL << \
> @@ -301,18 +339,16 @@ enum iavf_rx_desc_fltstat_values {
>  #define IAVF_RXD_QW1_ERROR_SHIFT	19
>  #define IAVF_RXD_QW1_ERROR_MASK		(0xFFUL << IAVF_RXD_QW1_ERROR_SHIFT)
>  
> -enum iavf_rx_desc_error_bits {
> -	/* Note: These are predefined bit offsets */
> -	IAVF_RX_DESC_ERROR_RXE_SHIFT		= 0,
> -	IAVF_RX_DESC_ERROR_RECIPE_SHIFT		= 1,
> -	IAVF_RX_DESC_ERROR_HBO_SHIFT		= 2,
> -	IAVF_RX_DESC_ERROR_L3L4E_SHIFT		= 3, /* 3 BITS */
> -	IAVF_RX_DESC_ERROR_IPE_SHIFT		= 3,
> -	IAVF_RX_DESC_ERROR_L4E_SHIFT		= 4,
> -	IAVF_RX_DESC_ERROR_EIPE_SHIFT		= 5,
> -	IAVF_RX_DESC_ERROR_OVERSIZE_SHIFT	= 6,
> -	IAVF_RX_DESC_ERROR_PPRS_SHIFT		= 7
> -};
> +/* Note: These are predefined bit offsets */
> +#define IAVF_RX_DESC_ERROR_RXE_MASK		BIT(0)
> +#define IAVF_RX_DESC_ERROR_RECIPE_MASK		BIT(1)
> +#define IAVF_RX_DESC_ERROR_HBO_MASK		BIT(2)
> +#define IAVF_RX_DESC_ERROR_L3L4E_MASK		GENMASK_ULL(5, 3)
> +#define IAVF_RX_DESC_ERROR_IPE_MASK		BIT(3)
> +#define IAVF_RX_DESC_ERROR_L4E_MASK		BIT(4)
> +#define IAVF_RX_DESC_ERROR_EIPE_MASK		BIT(5)
> +#define IAVF_RX_DESC_ERROR_OVERSIZE_MASK	BIT(6)
> +#define IAVF_RX_DESC_ERROR_PPRS_MASK		BIT(7)
>  
>  enum iavf_rx_desc_error_l3l4e_fcoe_masks {
>  	IAVF_RX_DESC_ERROR_L3L4E_NONE		= 0,
> @@ -325,6 +361,41 @@ enum iavf_rx_desc_error_l3l4e_fcoe_masks {
>  #define IAVF_RXD_QW1_PTYPE_SHIFT	30
>  #define IAVF_RXD_QW1_PTYPE_MASK		(0xFFULL << IAVF_RXD_QW1_PTYPE_SHIFT)
>  
> +/* for iavf_32byte_rx_flex_wb.ptype_flexi_flags0 member */
> +#define IAVF_RX_FLEX_DESC_PTYPE_M      (0x3FF) /* 10-bits */

Redundant braces + GENMASK()

> +
> +/* for iavf_32byte_rx_flex_wb.pkt_length member */
> +#define IAVF_RX_FLEX_DESC_PKT_LEN_M    (0x3FFF) /* 14-bits */

Same.

> +
> +/* Note: These are predefined bit offsets */
> +#define IAVF_RX_FLEX_DESC_STATUS0_DD_M			BIT(0)
> +#define IAVF_RX_FLEX_DESC_STATUS0_EOF_M			BIT(1)
> +#define IAVF_RX_FLEX_DESC_STATUS0_HBO_M			BIT(2)
> +#define IAVF_RX_FLEX_DESC_STATUS0_L3L4P_M		BIT(3)
> +#define IAVF_RX_FLEX_DESC_STATUS0_XSUM_IPE_M		BIT(4)
> +#define IAVF_RX_FLEX_DESC_STATUS0_XSUM_L4E_M		BIT(5)
> +#define IAVF_RX_FLEX_DESC_STATUS0_XSUM_EIPE_M		BIT(6)
> +#define IAVF_RX_FLEX_DESC_STATUS0_XSUM_EUDPE_M		BIT(7)
> +#define IAVF_RX_FLEX_DESC_STATUS0_LPBK_M		BIT(8)
> +#define IAVF_RX_FLEX_DESC_STATUS0_IPV6EXADD_M		BIT(9)
> +#define IAVF_RX_FLEX_DESC_STATUS0_RXE_M			BIT(10)
> +#define IAVF_RX_FLEX_DESC_STATUS0_CRCP_			BIT(11)
> +#define IAVF_RX_FLEX_DESC_STATUS0_RSS_VALID_M		BIT(12)
> +#define IAVF_RX_FLEX_DESC_STATUS0_L2TAG1P_M		BIT(13)
> +#define IAVF_RX_FLEX_DESC_STATUS0_XTRMD0_VALID_M	BIT(14)
> +#define IAVF_RX_FLEX_DESC_STATUS0_XTRMD1_VALID_M	BIT(15)
> +
> +/* Note: These are predefined bit offsets */
> +#define IAVF_RX_FLEX_DESC_STATUS1_CPM_M			(0xFULL) /* 4 bits */

Redundant braces.
+ GENMASK_ULL(7, 0)?

> +#define IAVF_RX_FLEX_DESC_STATUS1_NAT_M			BIT(4)
> +#define IAVF_RX_FLEX_DESC_STATUS1_CRYPTO_M		BIT(5)
> +/* [10:6] reserved */
> +#define IAVF_RX_FLEX_DESC_STATUS1_L2TAG2P_M		BIT(11)
> +#define IAVF_RX_FLEX_DESC_STATUS1_XTRMD2_VALID_M	BIT(12)
> +#define IAVF_RX_FLEX_DESC_STATUS1_XTRMD3_VALID_M	BIT(13)
> +#define IAVF_RX_FLEX_DESC_STATUS1_XTRMD4_VALID_M	BIT(14)
> +#define IAVF_RX_FLEX_DESC_STATUS1_XTRMD5_VALID_M	BIT(15)
> +
>  #define IAVF_RXD_QW1_LENGTH_PBUF_SHIFT	38
>  #define IAVF_RXD_QW1_LENGTH_PBUF_MASK	(0x3FFFULL << \
>  					 IAVF_RXD_QW1_LENGTH_PBUF_SHIFT)
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> index 2693c3ad0830..5cbb375b7063 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> @@ -402,6 +402,7 @@ void iavf_configure_queues(struct iavf_adapter *adapter)
>  	int pairs = adapter->num_active_queues;
>  	struct virtchnl_queue_pair_info *vqpi;
>  	u32 i, max_frame;
> +	u8 rx_flags = 0;
>  	size_t len;
>  
>  	max_frame = LIBIE_MAX_RX_FRM_LEN(adapter->rx_rings->pp->p.offset);
> @@ -419,6 +420,9 @@ void iavf_configure_queues(struct iavf_adapter *adapter)
>  	if (!vqci)
>  		return;
>  
> +	if (iavf_ptp_cap_supported(adapter, VIRTCHNL_1588_PTP_CAP_RX_TSTAMP))
> +		rx_flags |= VIRTCHNL_PTP_RX_TSTAMP;
> +
>  	vqci->vsi_id = adapter->vsi_res->vsi_id;
>  	vqci->num_queue_pairs = pairs;
>  	vqpi = vqci->qpair;
> @@ -441,6 +445,7 @@ void iavf_configure_queues(struct iavf_adapter *adapter)
>  		if (CRC_OFFLOAD_ALLOWED(adapter))
>  			vqpi->rxq.crc_disable = !!(adapter->netdev->features &
>  						   NETIF_F_RXFCS);
> +		vqpi->rxq.flags = rx_flags;
>  		vqpi++;
>  	}

Thanks,
Olek
