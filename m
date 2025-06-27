Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E43AEB8AE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Jun 2025 15:17:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2A22A80821;
	Fri, 27 Jun 2025 13:17:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OcmvpLW14DnA; Fri, 27 Jun 2025 13:17:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6D8C78083E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751030271;
	bh=SLAsc4oO4U9D262E9Rt5N8xqcfPUtCkjaqdMdQO9Ugg=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SZq5oW1lQQ7nh4ONOCJRb1G3UBPpAaZ8TY54r87fj7NJ/CKR982oKZK8SFGVmfvzS
	 waips9OV8NIH4X8hyDgzzDH/X5YYroiMbTtZ0GN9splSllwh1L49YnUDVQblGWpMNG
	 ebj6fE7BM6esj/X33iRO5eno6obOvG8tMvygCMcnQH+6UfkZnRRAPXY/OTwHMH9v0e
	 3gMbAXJT8Uf0PC11sgAeT32HFHruJid/oDzX9/OeSQt1WUPkf4HCZn2n4zef+w1nYx
	 TDcJyVeXN2OffHI0oUFe2zicxSCgrT4Zw3yh6QBH2m1BPRSFSMr/DzENKro5B9hvwj
	 VY6r0HGH/gWVg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6D8C78083E;
	Fri, 27 Jun 2025 13:17:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 71BCA11A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jun 2025 13:17:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 62C0660D71
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jun 2025 13:17:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kbjKRFiu4AYt for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Jun 2025 13:17:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7B0BA60BFF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7B0BA60BFF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7B0BA60BFF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jun 2025 13:17:49 +0000 (UTC)
X-CSE-ConnectionGUID: Mm5KZYRsTnukx2vdjRfR6g==
X-CSE-MsgGUID: UAE77VhAQ92YDyEYfurgig==
X-IronPort-AV: E=McAfee;i="6800,10657,11477"; a="53309242"
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="53309242"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 06:17:49 -0700
X-CSE-ConnectionGUID: huD5H0M7RZmgqxec6ZZ6zw==
X-CSE-MsgGUID: djlJSEAATAyiQQYx24bTOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="157092407"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 06:17:49 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 27 Jun 2025 06:17:48 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Fri, 27 Jun 2025 06:17:48 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.64)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 27 Jun 2025 06:17:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VplYhKktX4F0UX1AKoIaCrtl4he18qefF6ZUw5PtIx3TvKwEJWJsnYJcFg1fM5fvCNjMyPMSFG839eiZK+/dK5Iz6AW/CjTydq/TvhppSugiCkMj32cPohrFlf03CnCYXmJndwhPc023E6D9WdGHIL0khyAC5osY4SBW/zPonuaoeZezGiKRUnMf96AwvB38qprxN3nr1faKDqPmzETdyPe7tsG6TXuvltk7irJ7V7VmxnJTibITKEVvQyn8FXEu8f2zSoRb/ccVORju71KrXBUS720qmBilza6/N+Ht11OiMLbvnVPhfDa+e8f18q8Jb56EEMaf+146cGteO//xnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SLAsc4oO4U9D262E9Rt5N8xqcfPUtCkjaqdMdQO9Ugg=;
 b=MECd4kV8jDNeWD9elxOfTYGMkQkWd2Xr2vpf/BlMmFAI4Zdj8H3QmHUBSjWml7ufwcWom/ugaRdmxOhTw/RWDeCHAqmlnGKzDla0pPIng/ppG7yL65bQ92hBMPp0qz+53xdDdAy+tZjJ9bWM31yLF0vRec2QRY8crC/iEK6VXFUi0AOR3E179gKXnUI1XbneZkhiyW4A2VLeWhowDi+G2FTda3D7l5p3JjzL1XdoB4BIt6ntJ1+LItoiSAYELCEb/0/gUSXdQ7URPeLD27+tAqzS9JjR/729NDfeHO+Wmr6L1R0rbsM4VJfA8U2kz1UZSrgwqeTdzRo3qztklMcoSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by IA1PR11MB6075.namprd11.prod.outlook.com (2603:10b6:208:3d5::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.28; Fri, 27 Jun
 2025 13:17:45 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%3]) with mapi id 15.20.8857.026; Fri, 27 Jun 2025
 13:17:45 +0000
Message-ID: <4e88f5dd-05ab-4465-83c9-9c4d4ebcf3d6@intel.com>
Date: Fri, 27 Jun 2025 15:17:41 +0200
User-Agent: Mozilla Thunderbird
To: Joshua Hay <joshua.a.hay@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>, "Madhu
 Chittim" <madhu.chittim@intel.com>
References: <20250625161156.338777-1-joshua.a.hay@intel.com>
 <20250625161156.338777-5-joshua.a.hay@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20250625161156.338777-5-joshua.a.hay@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU7P190CA0007.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:10:550::31) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|IA1PR11MB6075:EE_
X-MS-Office365-Filtering-Correlation-Id: 3f37ff7d-ef10-416b-e298-08ddb57d011c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZkU3QThtWkZEY1JoTE1wVlhzWXhjT2FaZ25Da2JHTmNUWEtRck9QVWhYZUNw?=
 =?utf-8?B?TzJzd1BSQ0ZSRHVzdDJpUFU4QU5vWHJPZHBVbGpNejZ3NnF6My84K3JoNWFy?=
 =?utf-8?B?emRnRC9FeGNxT2ZEVWl6ZjlGNkRTSEd6T0JScDNnLzZpTFJpMkRUWHpYWTlG?=
 =?utf-8?B?RStRTlg1ek1ickxJMm0rQXhHZmlIVGpDRHR2cUlxMWs5a09NM2FSTWxhUmcy?=
 =?utf-8?B?dEtkMkFXbDBLaVNmdis3bkNnZDhpMXRNWHIzc0VyOUI2SGZacmFqanN1S0kw?=
 =?utf-8?B?cEJMblhDdWJKcThKTDdvakRqeUlaeTF5SWhGeExUV3pMeWRObmw0azFUQVAy?=
 =?utf-8?B?YkhSaUE1bnVXUWZWOUdqRytLeUpRTWlLWDM1dEhOQUViemFicnlUZXpESDBv?=
 =?utf-8?B?S3hYdjRNRWJpUW9qSXdwRm5MR0hNZlpEOWgzZUo5NlVtTDBBNmIwZlBLWW9j?=
 =?utf-8?B?RUdzQVMzZ3Zob1VpNTYzN3JXV0NZMmhabGljVXJiK1JoclVFcVN6dUVFYlR3?=
 =?utf-8?B?OGZmTjYxZ3VpK0U0YUJnd1VPb1FjeXMzeFhoS0FzLy9UTTAzaTVHSGpKdE9Q?=
 =?utf-8?B?VW9TUWlUbVZxZCtmVzFGTEplNDFjaWJGSVZSN2RrNzJlOVcxUkxkZU9pNVoy?=
 =?utf-8?B?YVZEVExXTnJFUlRBeGljVkYweHROalNmemVFTVl1TzlOVC9BTm9tWVJQQ29S?=
 =?utf-8?B?dFBUeDNSa3RMY0ZrQzlwSFltblI1SDBhcUx2cXI0Y25hYThrcnBpblg4MXdP?=
 =?utf-8?B?djZKeGhCUWZ1cFZRa0dHVDQrYW51RXBaN0R0YTZ4eTUvMkpYVlJOMGF3N1VS?=
 =?utf-8?B?Wk5NMjJKUEVYaWUwdUtKSStCSzFTa0Z1Rk94QkY5aVVocFVJc0NsYWJDTWxr?=
 =?utf-8?B?TXpvdlFkRlUvT3JmanFkRFFmemJvVXV6WE51b2hrZW0vVUxIYWN5Vk9IVVU0?=
 =?utf-8?B?L3pmZkpSMy9jWU1nQmRUU0JmdTVxWGNpb0FCOXhOTmJFTmN2WXIyZi8vQTN0?=
 =?utf-8?B?VnVqTFhhSVdhRDlKZ1dEcjBGdldFVGJQSERqbllHVkQvL1VWS3FNR0hobk5U?=
 =?utf-8?B?Q3duL1lTQmt5MFBNUWltUTN1d0tpejlPMnh0RE5Ld3pjR3Noa1c3MVRiU0k5?=
 =?utf-8?B?ZGc0NG1ldTRtSnNIRitrWDZoZGVIRnQzQU9jeVVyWXVoSTdTekthaHRRUlRD?=
 =?utf-8?B?QU81ZzZoVERjMmJ3Sk1NaW5sVmovN2VtdUQ4alFtQ0VGbGJ5SUlCQ3laUHdZ?=
 =?utf-8?B?bVZ2VjNXbTcyWEhLZE9vQ1FweWw1K1hSK2J1clMzZWVDQ1RxSnlLRUZXUW13?=
 =?utf-8?B?VStiUVhNZy9HWTgrMTZtV1VjQXpOc3dTTTdrV2wwbU1vS1N0WEFLRjl2dEVS?=
 =?utf-8?B?MU1Oc3pnTElHY1NBYXJQYjlwQS9JbWlPQklCUFhYTlBMekhBblByRXN0aWlZ?=
 =?utf-8?B?dElkdUxrQ3BidG9tU0VkM1ZUbVIvemlacmVkbU51dXlkbUQ3U20vZCtmUmd3?=
 =?utf-8?B?Wk1yd3RpTm5wU0ZGd2JYWVVMSEJteFdPNTZYT216ajREWkwzRStUcWV4b0FW?=
 =?utf-8?B?eEJOa0l5OXNqSzd4ZGdYZXVjQWJCQTZZcUFJcmgrKzRxaFMxUk1tb0cyZ0hw?=
 =?utf-8?B?UEZ2elNJMEZFWGR2NTNNak9qdU1oNVBlUEEyeE1JZ1lHZ0lUTWQxVFVpOU1L?=
 =?utf-8?B?dC95V2cvVDFjc2NKdHc2TU1LRWFtZDJseHVMZyt1a1k3M3dwMzZCaDhkSHU2?=
 =?utf-8?B?VWZsem54SUdGbmhVbkFYd2NwcHpJV3lwbXNwNXJkNlUrNStVZ3RwUWlWcEpu?=
 =?utf-8?B?anRHaU1zOFl1emRhVW5hcTZzMDhCMngvcmVnRUVhNklmMXJnSzJTVnF5dkY1?=
 =?utf-8?B?LzZack9uQlczWDU5MnAyVTFGc0NqQ1ZIbndkakxHT2FEQ0E9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OHRXZ1JMV3dNd1M4MnE0dlRNRGdyMkRMdjgzVTNrL2M2VFhlZk9SMENOTFRF?=
 =?utf-8?B?M2NHakRaTmtpbXpOaUpOekttTFc5V3UxU0ViUm5PbWdCM1Z5Q0E1V21xUSt1?=
 =?utf-8?B?Sk03MWgvSWNYUXRWTlRvN25rNmFKMFg2d1N0UUlYNDN2Q3RvY3VsWU5tMVgv?=
 =?utf-8?B?RURzaDlBdW1MNVB3Y2FaSXVKQ2hIWG9BZzNUNWRUM0xNUEt6eUNTbnI4d3J2?=
 =?utf-8?B?MzR2bjdQaTgwRUJEUGxFZ2V3b1ViTWkvR0l6eVhQM3FacGZ1dlBBNlBRSDNp?=
 =?utf-8?B?SzBpM1RTZkJ6d2lxbXhEZXFjQWlGSnpWZlRsUUZucFkxWGpmUXR0L0gyclAz?=
 =?utf-8?B?TldGSHFhV0lISnFIMXZXK0RIU2c5czhGejlGaGsvbllwSDJNU3BlaFNnNWxH?=
 =?utf-8?B?dUdZcjNsMmg5amExQ3hqVXBCN1BXM3cwSUFFRmloQkV5dkFrMVd6Y3RFWHBB?=
 =?utf-8?B?TTVJMlVFMkdyaGU0dnZhRWZ5WDNVT2haWUViYncvSEJlUENDZWhwU1RtOEYr?=
 =?utf-8?B?bWlrdDZBenQ1ZCtyNUtwVDlwcHhLZGxnemhjNVQxam9hV1NHbG5xbEZrVE5q?=
 =?utf-8?B?L3RSNnVYU2VXNDlkQXhsK0huQnlQSFR5ZWU1TkNyaWZzeHd0bmE2Z3Bvbm5L?=
 =?utf-8?B?STZpSUw2Q00xYXMwWHVDbXZEMHF2NmVFbWxDUlZIRFlYUktsRnZjSytqYm1r?=
 =?utf-8?B?bndrcXhrM0pYQlZrUFpKOEZKQnZVUFpKRW4wRXNlakJLM1JUVjE0a1dhOHlY?=
 =?utf-8?B?UUdiY1oyYkNwNG9sam5UZEozZkhyMlZyRlpscWtITFBXSE04U0Z1N2pVRUln?=
 =?utf-8?B?YlVGNGp5YXhURlp0enNvQnBqQmN3T3NTaTZBVTRTVjRTY2pGQ3gxSXQ2Y05P?=
 =?utf-8?B?VVlzOG9iVzJheUlaOVNMREdzcUgrWE5RRlhTRUxoV0pYSEdRQ2dWRkMwRHBG?=
 =?utf-8?B?UzFBeDlxWmRyOW1JdXhRQjdhZlhqa0YvSGovb2JoYjNqM0lzdXBWb3ZxZG5q?=
 =?utf-8?B?R2VFYnBvQmJha2lLTjF3TndvVWNUejVsaUtoazY4TWM2NGdrdE1WVlp0VWlT?=
 =?utf-8?B?L05aKy9URFF6OFNlaFFpaTMwRDB1ZmZkSkNEN2ZTc0xRRks0bkFwRXRBby8w?=
 =?utf-8?B?MDZ0SFNRV2d5VE5nQnk2THc4NS91V3BvMXF5M0VhM3RoM3NnWk5NL0lDSU96?=
 =?utf-8?B?aDgzRTNhMHBNNDRRZTljaW5HZmppclNVNTRwaUFBTjNJNDdsWGg5NGp0OFMz?=
 =?utf-8?B?a0xDVlRON0xUeUdSZVpwVjNDQytYb1ZTcFdGY29Za0MrQ2ZCV0xoK1I5SE9v?=
 =?utf-8?B?T1RhUjZXSGxqYU9vYWRua0x4eURrb2Y5N3Fvek1jUWhyVGRiV0tObHVITUd4?=
 =?utf-8?B?NXJwcDBwUmJ5cGRUM0hyK29TY3lQdzB5OTFKeFhXUUpsYVlzUk1XY3hnby82?=
 =?utf-8?B?Y2lKNGdZSmErWEdUYnRvVXZmQThIT1E5MWZNczBoOEZhMjUrR0V4eVdlQUUr?=
 =?utf-8?B?NDQ0QmMzVHJYZndvZGM4c1Q1RVJIQ2w3VlY1Y3gzU09qQWFWQTBSOXdTWmNq?=
 =?utf-8?B?b3Z5WUJxNXNYWDRHVER2cEVKVE5uRWd3UzFzRDh5M1BIQzg1RVhEa2kyUDF1?=
 =?utf-8?B?QWdXSlhQL0JiMEUwSXR0bUJxS1VLb0RnUWUxenNEZXB0Wlk0bEZ6SkVTcVkw?=
 =?utf-8?B?ZXhLZ253Vjhva0dZTSswWG9pWGNuclJLS3dvVjFFSm5kZWVQLzczSGQxNUUz?=
 =?utf-8?B?bCtYN3JMQ28wc3UyOU4vQ2U4OHYwMVZFdWhoTnovMFErZ1dzMG9lUjdYajRm?=
 =?utf-8?B?TFhRUGQ1cDAraEVQR09yR0thWDZlWnVHYWp1Wm9BQmtGTGQvRzJWMlB3c29O?=
 =?utf-8?B?NVdsd0ZZMzJSaHdoRkRJQ2NSUUc1Y2pWRDczSnBOVHJXL1NDS1BHR2dFTGdj?=
 =?utf-8?B?dTVzUEZ2TENlTlRMU0o1WXdmMk1XaWE1NDNTeDRqU3pBOS8wMUhsSS91bDF2?=
 =?utf-8?B?b0RpeUNVaUVBRko5R2ZpdHJkakgxeGlvbkFtbDJwZ2ZNaEJ6ZTkrNDMwNm5x?=
 =?utf-8?B?dzZWVU1TV2orM1g1cGsyd0l5UmFHc25uSk9QR1dXR1VzV2hBbFhkazRnRmhs?=
 =?utf-8?B?VFBZdFVBaUU5alpuQ2sySSs1ZjIvb2o3Tk02d2Q5akJubXJUWTBVMDhPRWc3?=
 =?utf-8?B?dmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f37ff7d-ef10-416b-e298-08ddb57d011c
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jun 2025 13:17:45.3493 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: twDwHiobAOkDce54C3YGs7oCJRMGwAgamUBgZDKjuwIcun9DzrZAKYxVpkblNpGLPeXaStwVTQtzXrj5zoMs42rJtC+cGyDxxjor1XwiwkE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6075
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751030270; x=1782566270;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=96G/U/lKtKJvoMomttQzkfrhrsi0AgOX227YPqZx8X4=;
 b=ASCDrZsmu2Qx+G1qzn9rpTquw0GYGRxid9ksKxCruyU8lbFks1gJS+mR
 4b/k9hmmUcSgIJajjDdWEkqUgXASJ3tR3HVjuekH7zJYJma7rCegHr74f
 fY2IpqzrvNXxtZp0K0EjdLT4vjBdbvGj84l/S1rKkTejssD0yHvr0wWZV
 lzVoRZ2BUR/KxdLOM1k5dfLIEkE9NnF9eyzIG+5oxvtEzIERb3P/kK3Bm
 i7Qe9Llg4H3Z6hchroyzsHxxzwSMtr8DH8pYUZZpEEHIsXxvq7+MKDW4f
 yELIRAK+4tItlW6DWZamW/9P7ync+tV/0X+wtHNMo+ceO6t60fq/ZKv89
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ASCDrZsm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net 4/5] idpf: stop Tx if there are
 insufficient buffer resources
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

From: Joshua Hay <joshua.a.hay@intel.com>
Date: Wed, 25 Jun 2025 09:11:55 -0700

> The Tx refillq logic will cause packets to be silently dropped if there
> are not enough buffer resources available to send a packet in flow
> scheduling mode. Instead, determine how many buffers are needed along
> with number of descriptors. Make sure there are enough of both resources
> to send the packet, and stop the queue if not.
> 
> Fixes: 7292af042bcf ("idpf: fix a race in txq wakeup")
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> ---
>  .../ethernet/intel/idpf/idpf_singleq_txrx.c   |  4 +-
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 51 +++++++++++++------
>  drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  9 +++-
>  3 files changed, 44 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
> index 4c1d7235a073..d8216bb13019 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
> @@ -361,12 +361,12 @@ netdev_tx_t idpf_tx_singleq_frame(struct sk_buff *skb,
>  				  struct idpf_tx_queue *tx_q)
>  {
>  	struct idpf_tx_offload_params offload = { };
> +	unsigned int count, buf_count;

u32

>  	struct idpf_tx_buf *first;
>  	int csum, tso, needed;
> -	unsigned int count;
>  	__be16 protocol;
>  
> -	count = idpf_tx_desc_count_required(tx_q, skb);
> +	count = idpf_tx_res_count_required(tx_q, skb, &buf_count);
>  	if (unlikely(!count))
>  		return idpf_tx_drop_skb(tx_q, skb);

[...]

>  static int idpf_tx_maybe_stop_splitq(struct idpf_tx_queue *tx_q,
> -				     unsigned int descs_needed)
> +				     unsigned int descs_needed,
> +				     unsigned int bufs_needed)

Same (and everywhere else).

>  {
> +	/* Since we have multiple resources to check for splitq, our
> +	 * start,stop_thrs becomes a boolean check instead of a count
> +	 * threshold.
> +	 */
>  	if (netif_subqueue_maybe_stop(tx_q->netdev, tx_q->idx,
> -				      idpf_txq_has_room(tx_q, descs_needed),
> +				      idpf_txq_has_room(tx_q, descs_needed,
> +							bufs_needed),
>  				      1, 1))
>  		return 0;

[...]

> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> index a79a6a89c5e3..2d4846793f5a 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> @@ -116,6 +116,10 @@ do {								\
>  #define IDPF_DESC_UNUSED(txq)     \
>  	((((txq)->next_to_clean > (txq)->next_to_use) ? 0 : (txq)->desc_count) + \
>  	(txq)->next_to_clean - (txq)->next_to_use - 1)
> +#define IDPF_BUFS_UNUSED(refillq)      \
> +	((((refillq)->next_to_use > (refillq)->next_to_clean) ? \
> +	  0 : (refillq)->desc_count) + \
> +	 (refillq)->next_to_use - (refillq)->next_to_clean)

Just make a static inline.

>  
>  #define IDPF_TX_BUF_RSV_UNUSED(txq)	((txq)->stash->buf_stack.top)
>  #define IDPF_TX_BUF_RSV_LOW(txq)	(IDPF_TX_BUF_RSV_UNUSED(txq) < \

Thanks,
Olek
