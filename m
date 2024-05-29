Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF118D2946
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 May 2024 02:08:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8F601407F4;
	Wed, 29 May 2024 00:08:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k5-R69AP9QRn; Wed, 29 May 2024 00:08:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 41E0B406CF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716941300;
	bh=UWxhsOzhyfzUSoE5ILcnqHcxqf+Vr0ZsOlaEdzBBzVQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dnSeabvHf+cb8ARAai+BHNG+ubcB1Wt2r4iS3IzXRomC9oQeZ21iTrLrtiVAw4DOz
	 q68JA2BEwrI2cfpbAqWiSf63dS/82xR+42yaBk2qRdAFLpp9THZmwlP6JclNguYkK2
	 rKU4oq2GKtGhG7uxM3ERZK9ZfezOKmoc56ucDqqD75L9u+H5iXYncHgbOflFYyODeE
	 aHkkh+qCH3lBh4uNZraKMr4OSuumD6SgOZCrMGu5AL5rRGYdMd6vOYFQiLc3IRyTeC
	 ovwKaFxSMLmjBg1tHgQCSa/uKgowKHFkB8PHWYAfiG+VawWJExnczhcgSdHqUYoG6g
	 0eYB3zMdBpnMQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 41E0B406CF;
	Wed, 29 May 2024 00:08:20 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BA9B01BF335
 for <intel-wired-lan@osuosl.org>; Wed, 29 May 2024 00:08:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A31ED82045
 for <intel-wired-lan@osuosl.org>; Wed, 29 May 2024 00:08:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7x9plC4FJDSo for <intel-wired-lan@osuosl.org>;
 Wed, 29 May 2024 00:08:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6BC068201F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6BC068201F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6BC068201F
 for <intel-wired-lan@osuosl.org>; Wed, 29 May 2024 00:08:15 +0000 (UTC)
X-CSE-ConnectionGUID: zyqTk9mOREq8mwaWpfFspw==
X-CSE-MsgGUID: 098bkpYITaK81/iqfUTe2A==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13140210"
X-IronPort-AV: E=Sophos;i="6.08,196,1712646000"; d="scan'208";a="13140210"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 17:08:13 -0700
X-CSE-ConnectionGUID: U3wVIBYBTbO06T+//Yy7uQ==
X-CSE-MsgGUID: JOZORw0MRf2U5nZMlU5GZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,196,1712646000"; d="scan'208";a="35266209"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 May 2024 17:08:13 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 28 May 2024 17:08:13 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 28 May 2024 17:08:13 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 28 May 2024 17:08:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GUunZefiMJM10Cd7Qu8eMg8pjASMCjMjZRSd6OIPj++8MEocuffUWAT+VY7P9QdnvHXp9kh8vCLHRROgXmCbF/ErPm/cZq4Qq4Rg6AZn7EAy9+aIih8VTf6IdozFZCPlRl0zEAQF1vmTrUlCpBfn/pS7n0LDQNDUjasMBvEadykP2MjX8ANWV1kEWp5K/eYVMzbT87ouMxP3ybW4ojlQe+EZycbLjVgCiRfEhLNatl2WhH8aCsPuwachzhWoNnR5ugmTGFKq8O7AMPYSVSeNqEPoGWuBIigkBZJ8LtgtiU9fYJGWEzKwdzJP7jibkw3ZjYceu+qfIBH4sgzF1nilmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UWxhsOzhyfzUSoE5ILcnqHcxqf+Vr0ZsOlaEdzBBzVQ=;
 b=J9nBSD3KBTBl+AVzQJEgc5LWVJUBJfMnRUb+oNwGbY7deOaKbT3r5yCxqI4fO6rVH5JYQdwACq/cDHnvk8SydbUwenCnDiIAGeKjNhK7DBrGI8TUbV+Zala9l/sC7hTsM4ZGHM5fZZYeH4n/o8GX5x8BKknKobAUEVpXXrj9Zrp36ern+bWbBF4sibuxaFldzBj6FjMDOKlgD+hPJ7aaF8Qcg99EC8e7l5VC7BOZk6IDtvFsD6Z0/agfXXBE+cjFtROm0Enww2czx9zwllU7mFN4KjneU/QBabQYPwDHJuASYm+gU3nTDLsDFfk4IVj0JMO1B1K6FRIvwVUYZEtZGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DS7PR11MB6080.namprd11.prod.outlook.com (2603:10b6:8:84::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7611.27; Wed, 29 May 2024 00:08:10 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.7611.030; Wed, 29 May 2024
 00:08:10 +0000
Message-ID: <78f31614-58d4-4126-862d-9a9c72117f86@intel.com>
Date: Tue, 28 May 2024 17:08:09 -0700
User-Agent: Mozilla Thunderbird
To: <intel-wired-lan@osuosl.org>
References: <20240528100315.24290-1-en-wei.wu@canonical.com>
 <43e74464-029d-431f-93e2-809d64371c4c@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <43e74464-029d-431f-93e2-809d64371c4c@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0263.namprd03.prod.outlook.com
 (2603:10b6:303:b4::28) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DS7PR11MB6080:EE_
X-MS-Office365-Filtering-Correlation-Id: 4db3ab49-27d1-47d9-a493-08dc7f736ce8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NHpIN2tLL2RxZzV5ZUhnMjNNM2ovcHV3RSt5OWozd01yd1lJWmZza25VUVVx?=
 =?utf-8?B?V3ZOcE9kZlBXSUdOSldNYkxUTWFtR25ycTJVR29zOTd2ZVJDNWt6N0Zac0hY?=
 =?utf-8?B?ZlVwTFBadkloMnNlSzBJZjdMdjVNa3p1UkNucWh6WitaQ2tYMFN2MGx0Q1F4?=
 =?utf-8?B?ZDJabU9oT1NMdXFsd0pwNkRtcHRKdmkvM1BzRW9vbWp0RWU5ZXFGWDlnRkJu?=
 =?utf-8?B?N0ZWWUUrT3N1RmY4Z25rWHRoT2FpcDErakl4c3Y5MHUya3NNSzQ5UldTRFgx?=
 =?utf-8?B?Z0dUR3N5ZkZzeGF2L2NQWkNSc3FjdjU4RklVb3doczZiRU1mMyswRmNmUjVl?=
 =?utf-8?B?TE43TmRsOEJnK3hNM0YrTFZ0SU91eHA0Tmo5NnNtRjZpME9ZdTJHdjIwenZ4?=
 =?utf-8?B?c2krMWlCV3BHVlVMazJRQUM1VUs1bTVyODJCbDd5bXZRSGMwRWc0THdDWlA0?=
 =?utf-8?B?Q3pxRHdwR0FOMm9zVm44ZFNocFp2OWhXOElZc0F2WTVLelhwZlhQNmNrVnhF?=
 =?utf-8?B?L2tqd1VHTDY1dHFzbW5IMW9sSlJaNE5GVGsyRXRzMUwxS01LSkpJaWJRVDdm?=
 =?utf-8?B?cktIOGk1dGxHZDhxM3htdktnR3dXVjJZOWk2NVZkUWwwbG1SUWxCWVVxVTJr?=
 =?utf-8?B?TmEzb0RBbFJmM0ZJbWVobGdabWV2UUEzTkYrQVE3bDRMa05aQy9uVlR6UElX?=
 =?utf-8?B?cFVQL0JkOVBZenFJdzBabWF5MGo1eHZLc1BHLzBiem16Rmd5ck53cll0NWVs?=
 =?utf-8?B?ZmZOQ0FQOC92UzdkRFFKVHR5Vk5wOVBMOFVuU3FWaG5xMVEya09aemdQYm5Z?=
 =?utf-8?B?REpBQmhZenBzdHVtZWwzTWlaMDQvdVR6VSsvZWYwM3JoZXRWc25oOGFzZVpK?=
 =?utf-8?B?RjVKOGdyUlA1SERDUmViS1FoYVIzNmdDd3ZzTE1nNDByYkhyY1BONkpTSW4y?=
 =?utf-8?B?ZWw5MzNIbFlJaWdPMFM3dHNIQ0d0dzFLS0dJU1pyalFIeHFsYkF4MzZSc0Za?=
 =?utf-8?B?T05nN081OW8vQWw1S2FNTHNLZTdMRUc1d1puLzEyMEE2VU9lZ3RpSTV0dE1y?=
 =?utf-8?B?SFhDdTdiOFRhVkdqazQ0Y0prQ2RGVnloN3MzaGY4dk82RjJld1VybHQ4Wmk5?=
 =?utf-8?B?M2VOckI2R2o3MG1uSHlnZE1zYy9ZeEhtbXplVXBXY2xCYW5CRzJvU0xnblFT?=
 =?utf-8?B?UnVkYXZtNHE1QXZiN2F3MkJkdnp6Zm4wQW5VNDlLTkZiQ2E5UDE0T2dzR1FQ?=
 =?utf-8?B?V3NiY3RUMkhvOFQ4M25LN29vNkwrZmFYL0l6dFZEUHJvbWgzWG9VZlJNS01H?=
 =?utf-8?B?NlRkQXoza3lyeDAyUURKejFhcE94Z0ZQaWpSTFQ1aXI2RHpnZ21yVU5oUkpy?=
 =?utf-8?B?UUJnUnNld2NrMmRtWlBnSEQ1Q3hDTzNCQXBISWMyNThYSm1vbHpINHZhUmkr?=
 =?utf-8?B?VldON2hhZDJQam1kTWhpdmdYQjMrakEzUjdud1lxU3F6RThTRmNodEFMcW5H?=
 =?utf-8?B?R3U1dWFtUnZxT0hDKzVDN1JRRXFRUHZ4RnI5NU1venlBQnVLZWtmcmw3TVRh?=
 =?utf-8?B?a0lKdngvNUpRM3M2dUFWTHowK0l5cTJKbXNkdTBkUlVXdEkxa3lZakNHSElY?=
 =?utf-8?Q?DPwcX0WUny4F1+iP+JMn6yDZbfiNg8nJuEhBXox9tmSo=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L09jbzdlQjU3b3M2RWNJVzdpZHdqTUtsZUhMc1h6S1Vwd3BEbk1PV3VrY0J3?=
 =?utf-8?B?Q0tVUWRtUWhHWFI4MDVJK0xWb2t4bnhGeTUzaExVekZHTmJvdG16bm9JQUh0?=
 =?utf-8?B?RWJhS1ZpSEhNQVRqKzExbmRKVjR5ZGRyNE82TytBVk52dy9xY1lmbm95eGR3?=
 =?utf-8?B?VWZHZDE1cEU4amJnOTJSYkVlR2Z1ZVBQMnRSYkVVOVNEVEVFVThQRDRKcXBY?=
 =?utf-8?B?KzdPbGlnQkZlMkRZU1lEcE5GVExrRktRWngxQUttZk5VL2VrZmprcGZES01R?=
 =?utf-8?B?emNkbS9oMmFFTUZ6WGgxVHA4cmp2TFRCUkwrQTZMRk9UY1pNeXlGeGJWZE5Z?=
 =?utf-8?B?ZlRpdzdjb1R6YTNJUDFldm91ZEJvQlE5SFJKWTRCWTZsb2xFbldZZDFiY2NP?=
 =?utf-8?B?OE40eUwvTzJ5b29SOHBvWmVpSWdrSk9MNHhtb0FueUhHZmgrZzJTbkcyVmVx?=
 =?utf-8?B?TmY5UnpOdHJWVGhSSzVnMlhqaWRBTWFFaGRWNmVQSmFvTXdEYkZuWWdkSEZz?=
 =?utf-8?B?N3NFSzZwOUhBTFNwWjdGYjQ1RFE4SmxNUlBHOGJCZXBwVUpvRjllQ29QQldQ?=
 =?utf-8?B?RmxLNTZzbFo2NnFMN3dldEd4RC83bU1mbnNRcm10WEg2WDJoYkV6ZEtLN2t4?=
 =?utf-8?B?TW1tVU1yVmpFVDRQSDVFcndVT2dLeFhFVDdIbW5kQzIwRDZ2U3hON3lmVjdZ?=
 =?utf-8?B?UkNXZ2pnY1YxOW83aUpEWENhRitDQUtyVVFXVkVUSVF0L0lORXIvVmhaQ3BM?=
 =?utf-8?B?anRlbEFaNXcva3VLMjVyWmdMTytsRDV3bEhZZ2xJMU4rdjJIY0M5VWRwem1h?=
 =?utf-8?B?eXdUUk5OdTVoeEN1Ymk0WTlHRENPU1puZGpnNm9qZ1lzMGZlcFkxZGlKM20y?=
 =?utf-8?B?NHd4S3hJVngrT0JJTG40Q25vNkwyNTVEdkM1aTR5bG16L3ZGSVdzeUFWNWhM?=
 =?utf-8?B?WVNUcGRsYUZFSi9QVXpSNlVQRkw3REJWMW5YeG5NcEVoTC9sdGVYZTk0Y0Er?=
 =?utf-8?B?RkdUblVEbDR4Z2ZveWZ4UnJSaHRhK3ZLcHBoN2I0aVA1TkVqeEk1NDFHSUNz?=
 =?utf-8?B?K1FYa28wc3RmL3lja1Y2WjFpQVFRbktDSjNrWVd6eDdxcEMvbStTcXNad0ZC?=
 =?utf-8?B?TVM1cHUwb3RkelV2eUdZMkg4ME8zdkdLbk5LalNza2lBYnA2MW9sYWV2dWIx?=
 =?utf-8?B?SlRBRWFsMFYvVEZRZ1EzbmxJNnNQUEViSzdiSGxPNUl5ZTYwTkJpandXbUVz?=
 =?utf-8?B?WHo2ZUlzUVRJVnhaaXpPajRlRkZhUlE0QTlRNlFraGdOTi9MaGM2TzNPTHYx?=
 =?utf-8?B?UmJFcjlIN3FRSXg1WG0rQUd0VkRvU0I5cUpJejdSV3FLaU5uaUVCa1VvbXhO?=
 =?utf-8?B?SmM1WWFuZlR0Z2ZrR2t3aWtjN1pjU05UbGR5YllYWmdYQlB0eXo0aGQ4aE9Q?=
 =?utf-8?B?TEV4WGxqeUM3Y3FYSmdFMzdjSTJPOExwSnZVSkFhYUpNQU53MWRaM01iVmJE?=
 =?utf-8?B?OWZvYUpUUDkwMGxhMFcxL0M5U0RXZERMSWZYb3Y3K2tpZHd6SGljczRYUkdX?=
 =?utf-8?B?NkFyTm9JQ0htNGZONFVuYnc3NjRBa3hmcmlwQnJiZ1lxb2dPWjQ4UzRqZ0Rh?=
 =?utf-8?B?d1Jod1BmRCtHUTI1TVM3K1RhZUw1TytNRmVCZWNIcm1iMFZ6UlExakliY2RC?=
 =?utf-8?B?S09oK3hpL3N5TlJqOVRwY29MMmVYOERxb1B2TDl3SHk2WW50aG9MaXNYUENN?=
 =?utf-8?B?NlNoVmJwQ0t0NzBuYjJTa0kxSXo4cE5IaEFkNzFTcFBaT2Z4YTRxY3ZBVWJa?=
 =?utf-8?B?TGZNYlg5THFYcHFiNEkwUEwwdWZITERlNW0rSzVDczYrUXNhTHovRHNPQUov?=
 =?utf-8?B?MldqN21QcTBQSlVxaXlNMU9IRDd5c3M2M25teUpuc1JEM1hyUUVMazc5bWto?=
 =?utf-8?B?dXBwM3hXRDBjc0JXMkliWGM4TFdDaXFHVk9ualJtakphMk5ZOXNiMGJSTVJQ?=
 =?utf-8?B?MENaK3BvUXF4Zm1kRFhJZ0tXVHdwT3RTbXdOZzIxYzdQRmJBWVZBUkhIS2xp?=
 =?utf-8?B?L2Q2a0FYR1c1U2dlQ1Nrc2JPQkhWWXZiTXdTeUo4MDJTTExKQ1lkc2Q2SVZa?=
 =?utf-8?B?eGNMMlQ0WlVKWjdZTFRySXVLOVh4NmFuS1dpMzZUUFNnbDdkNmd0R0VNNUdF?=
 =?utf-8?B?Wmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4db3ab49-27d1-47d9-a493-08dc7f736ce8
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2024 00:08:10.5577 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1wNdX8tj7vZpzUizYB7yxZY/gKZZ7nx8Z52r3LjVxfGPVoXNwoRm27w/NRjyq9fV3N8900Z0BT2FgZuCrQHS+cVHaCTO8xNnE3KPyND4laU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6080
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716941295; x=1748477295;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=LJjeeauIjqvP2iuPo9zLaOv7vve2eSWip+QU1juSZbc=;
 b=EYNx8stI8lx7rPjOkBLZFrfIzhN9X9xAHGFycrp4m8hIzfdis3UY+Ptt
 qhbAAGrtFR2XdXAaKJMRzgXFlRAdCA5/BvNRC3bjQQlOuGmkkRtVKsMri
 ZLRT1N7elmk+Q159BtCq41WCm5vb9jio3fi4wCx8ESVfzOqc00z/HlbqS
 N1qO2D8wVNBAHQjr39RCzo6BB1kiiZrcJeA21RPGIXlBrn1Obs1LqJXy4
 zsKDcOg4YXLndnOMFFYDHn2tTiX8NBw5SYTJobH15pa/llZaJkJzbb+OC
 O9UvyxRXlZI6kSBX27mS3+YuEVt//5cORaGR6oTawuN9LVwliBUm5YdpB
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EYNx8stI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ice: irdma hardware init failed after
 suspend/resume
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/28/2024 3:43 AM, Wojciech Drewek wrote:
> 
> 
> On 28.05.2024 12:03, Ricky Wu wrote:
>> A bug in https://bugzilla.kernel.org/show_bug.cgi?id=218906 describes
>> that irdma would break and report hardware initialization failed after
>> suspend/resume with Intel E810 NIC (tested on 6.9.0-rc5).
>>
>> The problem is caused due to the collision between the irq numbers
>> requested in irdma and the irq numbers requested in other drivers
>> after suspend/resume.
>>
>> The irq numbers used by irdma are derived from ice's ice_pf->msix_entries
>> which stores mappings between MSI-X index and Linux interrupt number.
>> It's supposed to be cleaned up when suspend and rebuilt in resume but
>> it's not, causing irdma using the old irq numbers stored in the old
>> ice_pf->msix_entries to request_irq() when resume. And eventually
>> collide with other drivers.
>>
>> This patch fixes this problem. On suspend, we call ice_deinit_rdma() to
>> clean up the ice_pf->msix_entries (and free the MSI-X vectors used by
>> irdma if we've dynamically allocated them). On Resume, we call
>> ice_init_rdma() to rebuild the ice_pf->msix_entries (and allocate the
>> MSI-X vectors if we would like to dynamically allocate them).
>>
>> Signed-off-by: Ricky Wu <en-wei.wu@canonical.com>
>> ---
> 
> Thanks for the patch!
> 
>>  drivers/net/ethernet/intel/ice/ice_main.c | 6 +++++-
>>  1 file changed, 5 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
>> index f60c022f7960..ec3cbadaa162 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_main.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
>> @@ -5544,7 +5544,7 @@ static int ice_suspend(struct device *dev)
>>  	 */
>>  	disabled = ice_service_task_stop(pf);
>>  
>> -	ice_unplug_aux_dev(pf);
>> +	ice_deinit_rdma(pf);
> 
> I think this should be called later in the reset path IMO.
> You should call ice_deinit_rdma in ice_prepare_for_reset (replace ice_unplug_aux_dev),
> 
>>  
>>  	/* Already suspended?, then there is nothing to do */
>>  	if (test_and_set_bit(ICE_SUSPENDED, pf->state)) {
>> @@ -5624,6 +5624,10 @@ static int ice_resume(struct device *dev)
>>  	if (ret)
>>  		dev_err(dev, "Cannot restore interrupt scheme: %d\n", ret);
>>  
>> +	ret = ice_init_rdma(pf);
>> +	if (ret)
>> +		dev_err(dev, "Reinitialize RDMA during resume failed: %d\n", ret);
> 
> And ice_init_rdma should be moved to ice_rebuild (replace ice_plug_aux_dev)
> 

Yea that sounds like a good solution and shares some code with the
normal reset path.

>> +
>>  	clear_bit(ICE_DOWN, pf->state);
>>  	/* Now perform PF reset and rebuild */
>>  	reset_type = ICE_RESET_PFR;
