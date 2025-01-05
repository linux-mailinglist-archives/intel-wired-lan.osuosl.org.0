Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 75007A018BB
	for <lists+intel-wired-lan@lfdr.de>; Sun,  5 Jan 2025 10:02:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EEFB480C73;
	Sun,  5 Jan 2025 09:02:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8nBSN9rIAJgp; Sun,  5 Jan 2025 09:02:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 31C0F80D21
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736067748;
	bh=n5Ksbf7nNP8NVOtehYWvi2qk1gQMDtVtEzZTI8mxam0=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1Ds3FKKugkxW0EIFcbuqMgBC1p8BHJFZD9Au44Ee9JMR109j/MAounigLe6cbLtt3
	 d/eL0CI/QDX6TS3lyvJs+Od19AZldgB3Y3OPSxNG7wXarFpqgbEFOvJ1m8VEADIto5
	 1912d47o4SW/hrY6JgZ2GF2Hrv6rOsnHG1Wy/Bm+C9u77yBKOQogPLljLjwKrYtvTL
	 hzFJr6Z4qdVezSIy8g/jKHS3aAidD5QlbEl609xgNoxGzYHVAniv+3KH4Gik+xM2P4
	 HqtVISnMo/zgq9ZQtX98Gc5/CUdv7ehgsfYg5ioNORnzYJjGj0zrfSBjekTKc64+Mb
	 BGEWam1JMFZNg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 31C0F80D21;
	Sun,  5 Jan 2025 09:02:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 12DBEDB4
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Jan 2025 09:02:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F423440F45
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Jan 2025 09:02:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u_PwCVyr9Srz for <intel-wired-lan@lists.osuosl.org>;
 Sun,  5 Jan 2025 09:02:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AD0B640EA2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AD0B640EA2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AD0B640EA2
 for <intel-wired-lan@osuosl.org>; Sun,  5 Jan 2025 09:02:25 +0000 (UTC)
X-CSE-ConnectionGUID: eVI44/oFTzO/O5NsJXLawg==
X-CSE-MsgGUID: G12PGBhSThevT/Tf4MKM/w==
X-IronPort-AV: E=McAfee;i="6700,10204,11305"; a="53657753"
X-IronPort-AV: E=Sophos;i="6.12,290,1728975600"; d="scan'208";a="53657753"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2025 01:02:25 -0800
X-CSE-ConnectionGUID: QLtM+CSxSv+2k86zDv2ptA==
X-CSE-MsgGUID: VeKmGVloTU2JOsQ6IzPWyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,290,1728975600"; d="scan'208";a="102350796"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Jan 2025 01:02:25 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Sun, 5 Jan 2025 01:02:24 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Sun, 5 Jan 2025 01:02:24 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 5 Jan 2025 01:02:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OwhV7xaEWeAurUBijnBnlwuc0FsFsDXVWgtBwJ7A/n30ySEwcXArzOYis0TL8D71AxTDaSIULa1+PeylQHwpt2ad/bICD82nikgVMqV87LgNnPGotUyxF1dC6DL8ZjnUOoHMhFmN6gfoS/ZAYJ9lri1mUkHVDwIEnR48O5sFQ6eJsnGpRxIykc3X7WpEWojQanHxEl/pH8iys56/hnJmJSPvLXDQWykNQ3ViO3vkJCWNRtwIzy+s6BYhji2tzLM2td/OgktMVoPjhIDSZmkuqZhL64/gXbLcIxGmCJNvf9fF07wMzn5kg8EMviHZt2HS/koQuRouje/+mfBn5hJZsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n5Ksbf7nNP8NVOtehYWvi2qk1gQMDtVtEzZTI8mxam0=;
 b=kA/fcyQ+uy/dv7d57LC2sqgdabRf7zWq4xWjdhfe8bNq8wSzNbnpvVnlvoYt6379oVGjUd0JWcB3q4QB2rlTCVhl7zbuqDdmfaMklL6LsO6drvguKMi2rPYjvJelPel0k69kO9FjtsjpMEZVokLO3t/S7yirqLjh6LzwkEEBo0+GJbnGnTH9t5RMZc8InILx/RYHCPWNpoACuR1G85169HtLeXmwRdxUXUc1TJ3R79huq1hll6D33lJWbWVSG3OLvOE7Y2opNhdChJIF1wFzUkNyqiqAuF49jXsofGz5mHagc+3mNOOzhHes2RuHhMNcrT5rYZ8Q9HnfzaRhrcmYog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by MW6PR11MB8389.namprd11.prod.outlook.com (2603:10b6:303:23d::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.16; Sun, 5 Jan
 2025 09:01:51 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861%3]) with mapi id 15.20.8314.013; Sun, 5 Jan 2025
 09:01:51 +0000
To: <intel-wired-lan@osuosl.org>
References: <20250102174142.200700-1-linux@treblig.org>
 <20250102174142.200700-3-linux@treblig.org>
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Message-ID: <8bc2fccd-e367-6049-3623-3ffef7e56af7@intel.com>
Date: Sun, 5 Jan 2025 11:01:46 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <20250102174142.200700-3-linux@treblig.org>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TLZP290CA0008.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:9::20) To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|MW6PR11MB8389:EE_
X-MS-Office365-Filtering-Correlation-Id: 2400e173-0e41-4deb-9fc7-08dd2d67983a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Z09SQkhjZFhUREU2eWJoQlZuLzhRUjZSWWNhd0dQaXZrSWgyaXU5M3FtN28y?=
 =?utf-8?B?a3J2VWlBWURReWI0NTZVbG51LytvOUwzWE96YUY1Ky9hODlXYWw2R1BEVkVp?=
 =?utf-8?B?aHFPZnVkQllTZHpaR2NsdlY5ZDZxazBrSGxWVnIyMFF6ZCtVZkV3ejh2M09a?=
 =?utf-8?B?YWM2MEhxeXUxaG9aK2FnK3FrNWlpeVlsMTNUK1pidXM4Zm1rckVKYzdCQzVq?=
 =?utf-8?B?UkZmdFdDUDVWTHV6bTJsMFpVYy9STEpPVVdKOFBqZDQzS1pkdTdESm45Sncx?=
 =?utf-8?B?cUljVHBiZTZoSWFuMERHVUhieFcyK2pEOFdUckxNelRkd1o5L21iYmV3RWR1?=
 =?utf-8?B?cVhsUXdMV0IyMWlkTS9FOUFncUU0ZUdrVThiSlNKcyswRDdSam1xQWdqWVBp?=
 =?utf-8?B?VE43TFUwYVRlM244cFJrZU1nY015aHNLOW1saWd4em5FOXN2Tk9IWHlWcnpw?=
 =?utf-8?B?SkhXTzEwOE1QL1B5Y1VVNjdCUVpXQUJDOTJiNmpOa1JKNGxneEpQb2Y1WTAy?=
 =?utf-8?B?VUVmOUVab3F6OFhVc2tINzRBZG84dG0xWiswUTE5YWczQTdWdkdsRE1oUlJI?=
 =?utf-8?B?K05INUU3enlkS0ZPZDl0dk5VcmErKzh5M1ZFK2g5eVQ1eWhnQllBK2ZjUXhX?=
 =?utf-8?B?VEl5RXMzOFoyUWR2V3cxSGtta3JIZi8vRVl0ZzFiU1V1Si83dVIrbGhvdHdP?=
 =?utf-8?B?b1Q3WFZ2Q0xZL1Btck5MR0dvTTgwcjMydnNSRHgrdHNadzhhNEQ4UW1CZSto?=
 =?utf-8?B?REpvYjk5cVd0ZDFySEs2RnBkNzBwN1IwTmNmQ0dPNUsyVnhHUFgrNThyalFD?=
 =?utf-8?B?QlB3U0dxeU0xMTVPRHQ1Z0diL2NOWlBPOEhNV2hHamtDK0JqWXluSTNzWGJO?=
 =?utf-8?B?c3U5T2ZVZlRadTZmNDZOVklONnA1ZUExR2UwNlR2RysvamEyUDRXTVZwMUtw?=
 =?utf-8?B?TmF4N0pMdFFkd0dXSlR0MnpmeHRGYXd4cVRwRnlyR2JwdS9uaEsrU0pyT2Zq?=
 =?utf-8?B?Kyt4cHU3MnllSEJXcVhnYTVTZWJKci9GSUZxbVpjRlRlYU55TlhpeU1PMDYv?=
 =?utf-8?B?cVdHbTBiM2tKNUY5YzFqTDkzVFhyWGFJaEh6UWtDcElzeXNFMmdjQnZtZUU1?=
 =?utf-8?B?Y2N5VUNLQUlQNGRsNFVZdFR6OHN5dmg1TVgrYSs1TmZpTlBwdVR6b0lnM0Qx?=
 =?utf-8?B?RWEyYk5SNTN1bk1JUjk3R1RiSG9jL0RFRU1GR2Z1T1I3cDVNWDNVR3p2V1ph?=
 =?utf-8?B?T3JLYTZNWmd1M2JBWTZ6dEZIZnE2NzI4RC9tT1pka05lWVh1cEJGVEVtUjl1?=
 =?utf-8?B?ZjFZRzhQTUlnV0hsQ3UzTnlMcElLbnpQTnhFbHhiZEt3QnRqbUlsbmlGLzJJ?=
 =?utf-8?B?Y3pib0ZBM1ZyZ3kvZXh1eXpQbUVUZjVWTk84dmR4Zmlxc3I4MG5nb1dqeXVu?=
 =?utf-8?B?R1hMSm9UaC9PZEdoVU9Xb1FyRVlqZ0pTVzBoSlMzYW91aVFxcytoWm5wbVRK?=
 =?utf-8?B?dGVPelh0NEdITTJZbjFRQnZhaUFKRVpUMnhkeHdURG44UlAyUVhlS2ltQkxm?=
 =?utf-8?B?Qm9OMUZsblBBbVFFUndOSGp1V0VhTWQ1ckpUbDRNczJxTHRCQzdjRXFZVW9I?=
 =?utf-8?B?TlI5VUUxaFRscHNHdXh3L1FWMjNMQ2pOMWJqY1B1UVhISW5FZzZGajB0ajlz?=
 =?utf-8?B?OHJFcjQ2Ni8zVWRITEMraHZldVlOWGU2TTRkWXo0RG9ya1J6WnFnOVBpNzJE?=
 =?utf-8?B?azZGUEQ1cnM3VC92c2EwcU5aYjcyQ1dFQmJZS1NaaUpTNTIvMGFjbDRVeXRm?=
 =?utf-8?B?L3VFTDVMbUl6RkRFUnNzQTViS09oTk5Ra0xBNTBJOGRVVytldUN4WDUzNzVG?=
 =?utf-8?Q?hUfScNnuh+L6d?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cUlhN0wyU0VNYXVrWW5TcVpnVitKcUcxOXc0R3JvSVJoRnB1L2VwUmtvc3VW?=
 =?utf-8?B?dzNWNlI4dGpmUG50cHhGUlhRUE91N0VZVjdKQUVGOStXUmNMQVQ3Tk1RaGtP?=
 =?utf-8?B?NW1pOC9VckE0cjNISGtKeGVyaU5vQVJwekQxZ1dmL0JBWXQxdWEvY1ZuVEJG?=
 =?utf-8?B?SGhKTGZFaUR1WFQ5SWVUZ1lBakI3bmdMZWNqTGU3UWxEVTU1eWRsVEpnNkQy?=
 =?utf-8?B?QmVJWDdTV2ZVaTkvRHZDNFpjODQ5OTlyVnY5L2tXUzIyaURITmFnOE1rZ3dY?=
 =?utf-8?B?T0FwekM3ejRJYXpJKzU0NGxOZlphZGZaeHViTzRKZDhsNG5iVFNpc2IxQWZn?=
 =?utf-8?B?Q3J6NEUxM1RUL3U2OTIvMktBY2x1akhpblljWUYrWkRVNHd0YUZ6Mk02VE5n?=
 =?utf-8?B?YW44dDVYa3c5MUhlUS9YaFo5VHpsaFFBYmNjNjJHb1pReGpTRmQxTlUvQllB?=
 =?utf-8?B?VVZWRmRiSXl0VTV0K1BhMytDYXE5MEk3eFB4ZnFVWm4xWXN1eFBJSjBkVFFp?=
 =?utf-8?B?elNMNzJPcS9ZSlc3ZENTQ3BHMXRtb3dnc1lCZVNVZVFLZlRKYjNxanBrNlVP?=
 =?utf-8?B?cCtTUTVOZmpmL3BHWDVjdEJEVWh6K2dPZGxlT3FUZVNIcHZFZ1R3aGNGSm9L?=
 =?utf-8?B?NTJ3QkZGczNJdFQyUno5dzF4RUtMNDR4MFpEVmRZcDNGSDRETlpuYVAxcWxE?=
 =?utf-8?B?UEhseWRpYWR0dC9QdSsxSmZibmJVT21LZXJNbUI2TndZWE8raHRDdGJNWjhL?=
 =?utf-8?B?RUViRGExTnhYdEk0allKbyt1dkVybE1UTlRkSno0eTBMMU9ycEZMM3JLcEg2?=
 =?utf-8?B?dGw3WVlGMG9FcklveTQ3SjByWUVoOGxmRE8rV3AzVkU2REF3L09rSmtGNkYw?=
 =?utf-8?B?c090bjQxbE9GWWhLektuMmxQenBkdm9pL3VaN2hWWmw3UjM5U3h1MGgwdi9k?=
 =?utf-8?B?cWJIS1RaQWxYN3RUM2doNENjbTNYQTZDWkFEdzlOTlFKcFMvcWVveGx0VThG?=
 =?utf-8?B?eDdZbENiMmZ0bEhYbFBMWm1iUWw3bkR1UjBIa2FjQWpMS1hoUjhwNUFxRCtm?=
 =?utf-8?B?emJoR3lCR3RrV005TTRVaEpHbHZnUC9nVXlrZ2F3VUVWNGZ2K2NNakFYbGdm?=
 =?utf-8?B?MTRscHdNMm1kVktaTk1vbVI0M3c5ODZ4M1gyVVp6K2owRDkxMXUyWGJiQ3Bj?=
 =?utf-8?B?T2ZINVRXa2tFU21qbERkWWYzaWFNTmorZytZL3drYXJpVE45TXhSdVBzNTVs?=
 =?utf-8?B?aUN2MldaQ3lZamhJYmpDR3AzRkV2WEVnZXZOTGozS0M4cjdERVN3anM3UjNY?=
 =?utf-8?B?VlJ5NFh3Rmp2ZW81WjFaK3Q0aE5MR0ZXZE03Mkl0Vk8xNDdtaVcvS2dsVVRi?=
 =?utf-8?B?Y2NrejNRTG5Hc2tOanlFcmJRclZFUmNyUjlrQlBJNXE3YTQvV051cXFKb1RP?=
 =?utf-8?B?c1dQd0xHM3dMTXpnV1paSE0zZjA4TDcyMUVEZVAxUk5iVGszWEQ2blJKSTFG?=
 =?utf-8?B?a0F1RlJEcjVSQTVNUDdZMHAwbGxVbFkzR3ZIcDNhRVF5ckhRUUw0cUs0Qldk?=
 =?utf-8?B?TU1lUU5qMjJ1dHQzQmpKaTg1cGRKQ1VndmhJUzlNcjJoMHBNLzIrSUpQTXIr?=
 =?utf-8?B?Nmx4WVNzem1DRENwTVI1VWFKNUJHL1UrMmpaRGh2WHJQc05KRUZqQ0grM0VZ?=
 =?utf-8?B?S2U0M2VDczRCUXlCM2hvWGVPRmhNaHJwUHV0OWFLL3djUzM0WmdGcUdnTlRG?=
 =?utf-8?B?NnZpQVFQbzMvUVlPVmpGdHZEamNCcE9NS2lrQnNGcVNsWGRFQlpBc0hhZ0l3?=
 =?utf-8?B?aXNDcUdPenhSRXdJOFJuTVFVNW52b2x4TG11a1pSY0pTTE5NL21uWG9CVFBs?=
 =?utf-8?B?ZkgyMGpRamc2bmdMdXBIQ0YwbGptWHBwT1MyaUNBSjRBbVdSeXdKSFNYUVNj?=
 =?utf-8?B?L3dJRi9LQVd4MkJsSnUzY3VQQUV5MDQ3aWZJQnRzcFJKZmE0UGt6ZFpzZnli?=
 =?utf-8?B?cUZ4MGxrWFU0endhbVB3d0FHRkdiVE9GZENNRTZNOGZ2bU53cHl1Z25JMjJ2?=
 =?utf-8?B?aGtGdlhaUVhKNHZDS0xiM3Bvc1BQbENXZCtJV3BoS1hBa1pNeUh2c1ArRTJV?=
 =?utf-8?B?TU44TnQ5b0RuNk43azBjQzBlTXNyUGxwLzJ2WTNLc0NHK2JTQkxodXREL1Va?=
 =?utf-8?B?UWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2400e173-0e41-4deb-9fc7-08dd2d67983a
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jan 2025 09:01:51.6151 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QQAbeUHa6layslBGUA4B7xIl7fh1QYNynQH6jM3ZmEDpNOPwtVy+TVZ8XmgEI2OLBMAGznx7s1smy85ifOuyGz8pMTw86dMUJr8jtEzDoJs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8389
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736067746; x=1767603746;
 h=subject:to:references:from:message-id:date:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=eZDRNyzWd7kHmsDzu6DkNTDK+FHs3yK35jKneDMTp90=;
 b=iXhI+6jLZ6ELxwYeVWMPTJgYzQwVKhyLC1FnzLNoHr4orGnuc3OowMot
 WPom2fCNaisYZ6IBgwfr4kuaGj6Fd7YwD1fz1M8enxDZXd/vODPpoSmDz
 buSmHu9JJhedCNoJa9sSj6vKd6Y/ia4hDqWbS4ZGrI22br0Ay6l4bp8L7
 CIyFo+giOSkgQkn5R27P01Rm7HXBy+G3e9pqff8P4yJO3mBjqoLB1GhjN
 gHIMFhq02J02MD1JIGdD1flHTZ4uq7ABw1Ip36N4cbwW0lZAKm38pPKz8
 upkOXDimMsBLzv/xUPFR3pMwLP0BDeeCTc47EtZ9MYeStEzRMEMwQohb7
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iXhI+6jL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/3] igc: Remove unused
 igc_read/write_pci_cfg wrappers
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



On 1/2/2025 7:41 PM, linux@treblig.org wrote:
> From: "Dr. David Alan Gilbert" <linux@treblig.org>
> 
> igc_read_pci_cfg() and igc_write_pci_cfg were added in 2018 as part of
> commit 146740f9abc4 ("igc: Add support for PF")
> but have remained unused.
> 
> Remove them.
> 
> Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>

Reviewed-by: Vitaly Lifshits <vitaly.lifshits@intel.com>

> ---
>   drivers/net/ethernet/intel/igc/igc_hw.h   |  2 --
>   drivers/net/ethernet/intel/igc/igc_main.c | 14 --------------
>   2 files changed, 16 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_hw.h b/drivers/net/ethernet/intel/igc/igc_hw.h
> index d9d1a1a11daf..7ec7e395020b 100644
> --- a/drivers/net/ethernet/intel/igc/igc_hw.h
> +++ b/drivers/net/ethernet/intel/igc/igc_hw.h
> @@ -281,7 +281,5 @@ struct net_device *igc_get_hw_dev(struct igc_hw *hw);
>   
>   s32  igc_read_pcie_cap_reg(struct igc_hw *hw, u32 reg, u16 *value);
>   s32  igc_write_pcie_cap_reg(struct igc_hw *hw, u32 reg, u16 *value);
> -void igc_read_pci_cfg(struct igc_hw *hw, u32 reg, u16 *value);
> -void igc_write_pci_cfg(struct igc_hw *hw, u32 reg, u16 *value);
>   
>   #endif /* _IGC_HW_H_ */
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 27872bdea9bd..9c92673a7240 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -6780,20 +6780,6 @@ static const struct net_device_ops igc_netdev_ops = {
>   };
>   
>   /* PCIe configuration access */
> -void igc_read_pci_cfg(struct igc_hw *hw, u32 reg, u16 *value)
> -{
> -	struct igc_adapter *adapter = hw->back;
> -
> -	pci_read_config_word(adapter->pdev, reg, value);
> -}
> -
> -void igc_write_pci_cfg(struct igc_hw *hw, u32 reg, u16 *value)
> -{
> -	struct igc_adapter *adapter = hw->back;
> -
> -	pci_write_config_word(adapter->pdev, reg, *value);
> -}
> -
>   s32 igc_read_pcie_cap_reg(struct igc_hw *hw, u32 reg, u16 *value)
>   {
>   	struct igc_adapter *adapter = hw->back;
> 
