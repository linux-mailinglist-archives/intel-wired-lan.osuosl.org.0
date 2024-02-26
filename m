Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 731358680B4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Feb 2024 20:17:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8CF8181EE8;
	Mon, 26 Feb 2024 19:17:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SUSWjt1qovBY; Mon, 26 Feb 2024 19:17:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BBBC981EE4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708975022;
	bh=Z/TZa54PGaX94YFrLAEN8Pu0Eq2ii8t4cxgVmR4Ln+8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6hzHHvdUEuC3Vlkz7SLOC9xmKPJngg8dHMrIcPbH5zENT284F4jZRIoCkN66RzygG
	 /pRKBRavnjkTZgUEkSzBKg3hwiEtoTEPhjoEP/TkuSaCaz8BA5vWFcT5pr4D78TxHb
	 rnO7PeEyFgT7jtzdMMc3toDPRKu7GgQ4CKGvXa4MNKDVJQZzNSBwcPbiKAt5PCZThB
	 8qObkXMozPtt7uVVcvHvKAk4JbHQNRnZjbaKpl5JeSwzW68y5/8UNv9gEI6+S1A6Pu
	 YoJd4ePm++Bk9fheEK8v5Op0jJ72fqeKe/BpFXvf9Lv70ojS55cL43qehrY4tWU7mq
	 XR0LVDmeC3r/w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BBBC981EE4;
	Mon, 26 Feb 2024 19:17:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B6C571BF385
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 19:16:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A215481EE5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 19:16:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3juErW5hEalW for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Feb 2024 19:16:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5060F81EE4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5060F81EE4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5060F81EE4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 19:16:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="20827637"
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; d="scan'208";a="20827637"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 11:16:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; 
   d="scan'208";a="6981618"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Feb 2024 11:16:58 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 26 Feb 2024 11:16:57 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 26 Feb 2024 11:16:56 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 26 Feb 2024 11:16:56 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 26 Feb 2024 11:16:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QQv3kaAi/u1sboyuU7TMHXvAn86uhL/f/PM+w4o7XbAM44bMHwMGr+37XPTZFz5tekr0CCkMZsKx1A4/dFwL8OwzYBrj0tfINeVBIVtqyOXgU7WjWHgHfl+P3wnrOez/6+QwNZiAjqi5W0tj0f8dpkVgbSjsuwtD/fxXiwEsEH8rvGgJhMPB/YQAZ4SCEWm1rXME7A6vCdMpR/eaTo6a8a7Fc0elYbRreWwHcFhtdScgbD5DPx9Yb2IH7Pk0JGWZjgOZZ4Pd+dG2MfjXNmkZhJX4fIgebNC2HxkKEOg9QzCE8TUR2mlQK5j6RkLkLTzr1Nx8W+lax7Fq0bfM5I8qCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z/TZa54PGaX94YFrLAEN8Pu0Eq2ii8t4cxgVmR4Ln+8=;
 b=aMG6vdgUoCyIRjL9lfomrlPjB/VGrlhkmj41ObEJ0YqEGGyziS2ZBro9UuG6BgtcS3qCScyCGRDv6FXgOlfMA1R6Reb/hgJnf5UpqvUlyyx7dHLvwCHsq5JogW1T+SZLzxTb4cEWP7GiVtWERCdv94k7rYDO2XsqWaGJnQF+t1TaNQi/Riz1mFhmdhsxrQrqq7Klg0nztZKv+Q1cgOHbuJRurteguHEsJvTFvnHi54euRkiLD8det0sS73N47eexK0AKGA/Nk5V8wcKe7bS1w/yLjJ3w4wjnzA5R3t0kUkqEu4FrmuqCa4tOD8S3H6G1p9JaXDb9qfByLTCmRmChfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SN7PR11MB8066.namprd11.prod.outlook.com (2603:10b6:806:2df::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.23; Mon, 26 Feb
 2024 19:16:51 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::b383:e86d:874:245a]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::b383:e86d:874:245a%5]) with mapi id 15.20.7339.007; Mon, 26 Feb 2024
 19:16:51 +0000
Message-ID: <83a3cc75-a8c8-446b-a083-0ef62134d850@intel.com>
Date: Mon, 26 Feb 2024 11:16:49 -0800
User-Agent: Mozilla Thunderbird
To: Michal Schmidt <mschmidt@redhat.com>, <intel-wired-lan@lists.osuosl.org>
References: <20240226151125.45391-1-mschmidt@redhat.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240226151125.45391-1-mschmidt@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0127.namprd03.prod.outlook.com
 (2603:10b6:303:8c::12) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SN7PR11MB8066:EE_
X-MS-Office365-Filtering-Correlation-Id: b134c45c-0734-4e07-c2cc-08dc36ff7c68
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: M5T1kvv6UaVCnZxRc9WTxAKIdsekiMXbfISVpflIOLSajNrploioN8PvFAIQ4vUEa87BvdwXU2lUHD4qlohFsLJ7s9oUvSH456WuOxrGjFGeAmBXqV1n+3tb/t8ngs3w8neG9UvC7wxe97Bahi9po0uaVEetBlAtmzZXCyDRT3fdXnzLPSMJKtzUwYdsq+7ekULsRIhSaN4OvsWYPI492PFxOex4SKvjF7GvtmRObbfaXIrhgnA4RpFzZwmOuBfqcxliTH/ppnvnlN2jkdlqizg2DEQUWyAKIECOPJUt84/abKMYtUyf5SFzLRndo4niwLPu+4dHSWrTTlxdkJdQWCltKteFjf+91jPvf6m1EHqLnVdVwaUsNIQMfI6lgDiWVTSYb19iNX7qWmCEyprTuO2+8EiTdC2LlTgmJ5ZNNpt1wodMOuM/dXYSTD+6zDMO52ZVgAzXnKDTdZtcW/5eXirB/m0Ue98LtlxyNAGSx7E9mqvU8e+L3TC2nmLkPwda/zubk//EFA8y/LdPBXdsA5+ojuOKbU6m3xzCT3BseZw2Lfd8z9zXZnrIDIhylph/t+fxaydU53O6q8rVHCjfO8SuOqmTmKF99r/pUeEb9YWQxpZW/w3SHXkvTBk/DA+LjZC3y2itp7Q0lgMNV+Jt7w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eGxDbXMrK1pJSHdXOFNoV1lSN2lGTzViYVNja3g5QVowQ0dwMTQ5b2w2bGNK?=
 =?utf-8?B?dkVNNFdnK0piTVlFa2hiZ1UxQUNxTFlaaEhLeWw5djlaM0QwTmdGMldDeGRW?=
 =?utf-8?B?ZVhrY1drNmQvb25zL0ZFaU12MUFnVG55Y1p1dkEvVGh2cWlkaklXRlFIYkFJ?=
 =?utf-8?B?S3BSNUpWSS91SUxKVHNCUTZGaXplQjNYQXBqRFpHbFVwU1lEakJPcE1Udkwy?=
 =?utf-8?B?WUpCQ2t1YUphMXpLT09IL3NFQi9KOWRCY1BRRzZxY05MbEs3M0tDMUVzeDJq?=
 =?utf-8?B?RmZTZmFoMFRybmpSOGZFM3lnSTJQVmRaNE5adjBZUGE4WEhnL3hLSit4c2p6?=
 =?utf-8?B?Z2p5UUlPS293NG95b2ZzK2poQzFKZXdacWJCNHZnVmtuSjJWbzdpVHNSTXRY?=
 =?utf-8?B?UkNkNWVDWG9LRWdubGc5R2pyNGlWaFgxVkZMajZVN2JHOHZaZ21mUitiaVlw?=
 =?utf-8?B?dUQ3MW5jbUlJd1gyWldjV0hveHloNU5Pd3dNazA4MTdpU3l4Z0FXcDVJYzdx?=
 =?utf-8?B?NVJiRTgzeEtZSjJ6UEgvNTZQc25pcGcrSTZQYWZiQld4T0grb085eEVWYTg0?=
 =?utf-8?B?cjdRcTRSQThMQ1U1THVJc1hNOVBwbXRZZFUyaHV2cHYrVG5Ya29UQUhNMEh2?=
 =?utf-8?B?R3lhWnhOdUpwa053TTFuZUltNmZiVVhqaVhLN0ptczZtcStoU29wWU93VThT?=
 =?utf-8?B?cEEvMWRJeEhTSld3d3V0TFJQT0NpaitSdWFlVzJvUHdiam5MdWo2SE03dEsx?=
 =?utf-8?B?VTZRcXpFZVhNMzVNWjVzVXgwODk3dERBOXVoTjR4RXhvbXJ2dFJsNVFRVm5W?=
 =?utf-8?B?RGpHR2Rvbm05VG01ZHhJeUlyWU53YWxnTzZzd3MyanBvRi9XdnRwYUlOb2tj?=
 =?utf-8?B?YnN1N2pvTnFJbE5QZFBZUFQ5cmVSUExvWm5qQ1NZTkhnNEFCcXorQVJaRjZh?=
 =?utf-8?B?SlRlaEx4MlkyeDVydUtwLzJCUjJucVpkL3VyM3dVR0RNK2lJZFV0QzFDODQz?=
 =?utf-8?B?NmEzSkJ1cjNFWGZvclBoMFcyL3Q2YVlTaDVsMCtDMzBPVUtpeVhkL1Y5RURS?=
 =?utf-8?B?NGpBcFdGeTNkdldwa3FYcEpVVGV4Sk9qb2t2V2FUbE5UTXQycCtOMVc0dW9r?=
 =?utf-8?B?WUJIcitUZEJ0dlJUbXVEaWRhNFNCZFFmMkxVNzY3Vzk5Z1JHMGYxRzdMSXpn?=
 =?utf-8?B?UWVCMTQwZytzNGpYK3dQaUpCVDY5QkhSNzlrb0xJZE90aGgwcFlhdW5PRFZL?=
 =?utf-8?B?OHhKcmhrMTk0UUVLWmR2YmZjNStFT1d1M2tITEJqaWMrVXNKRjRid1NkRTB6?=
 =?utf-8?B?MG82VnloQmtpbHpJbHZ0UFQxbFlhdWY1OXd2ZWlVQmEyUGtFd0ZhY1ZwaThm?=
 =?utf-8?B?blhySDg5ckFXMVAycTRQYmFsQitHUlJvdFcxV0pXcjVBU1RyekJMTngwc2cr?=
 =?utf-8?B?WnVacGhsbWhTRXZzc1ptMFM3bnZrQUtSUnBPdjNDMEVnSjlPWUw2YUw4bzVu?=
 =?utf-8?B?QmxrYnBUNzRlNldndGtLVXltUmx0dE8wUktvbEpkakJjTVM4T2VaUHFqZDFp?=
 =?utf-8?B?bUNTNE9KY2wwdUtlUXNqQmtTakVpZ1N6Y1RxMnVuN2lVdFREMWVibWZ4THVH?=
 =?utf-8?B?bWR1c3ZSMmg4VlZnS2d5VFNtVm53ZVh4Z0FsZmNHb25YOHBWMGIvSGpMT2cw?=
 =?utf-8?B?YUF0Sjl6TzlEbkJ1UFY2QmZYU2pxdFRyMDRLVzNJOWxqb2cxUFN6WmZkdEk4?=
 =?utf-8?B?QXNvenNlUWpjdWJxZ21RM01NSCtidldIdnFlQncrb2NUdW1XT3BBOHg0dFln?=
 =?utf-8?B?OWdCMmtTd3FsZUVvdkkyV3lVVTBNZ1ZCUFQ3NFZtNWU1bWxsMlJ2MDRQMUVE?=
 =?utf-8?B?SnA3My8wdHU4SXBNenJZT2dIK2s3LytmSld2U1ZrTnl2Q21LSU9tN3dsNTUr?=
 =?utf-8?B?OE55R2FwMmN3eEVkWmxUSUxOT1grbkFzSHk2QzZQek9TSVJvRDg4YTU3N05C?=
 =?utf-8?B?d1RzMzZpTWxCbnpvQkJRNitMbzVwQ25KYWhkQlEyb2xZZnN4UTkyUXBtSWhz?=
 =?utf-8?B?cG1yRFZCSTE0NnErUEdiaFJBUWNzcXhnMnhoMVkxTEJDbGtsQWJ1V2VnZERN?=
 =?utf-8?B?QWEwRFp6WDFpbm91OWw3WFBNZHVHWkhuSS8wVFEyY3VaZUlHcDFiZjRiM3VF?=
 =?utf-8?B?Y3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b134c45c-0734-4e07-c2cc-08dc36ff7c68
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2024 19:16:51.2382 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pxiyLN5unmE0qJiHrs10SIZkcpkmL5ulSDJm5y26fFJ9swI5fSN+oTeEAIqICguK4d2ciUWuehYofD1aDI2Vz71kDyrfbLAUcpab/i5VkYs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8066
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708975018; x=1740511018;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ik0SK8LAv344VJdUS6kNgRu4IDg8/JO4eGXXJeBFaO0=;
 b=mI+kBXPoFB9EzuGhH8xLRCzbl/a+JdmhbhNsAEY0JFowSUZmznd55ahe
 AcfwVRsFPHRtbpiLIoUEqr9TzbV7DqtjtiaIwiap+xtVEOQpG64ZoVpcS
 p4qiG86QHqrJyF5KfsslIl5UrIA5SPOebSPLKVBmv9mvMSgvW7e53ONQ9
 NlUWN0z7te71p0RAI01tj8mBXOVxEcgQ5f1IL8SgrDS/aitH6q3wf+FZI
 vWT9VPiCX6M3AdUfVZShIbkCTrPa6HkRBTqdaJEp3vTOFk1fegM5JTKnW
 nUCTheU2M9s5CE2oZT4GRNXrY1BSYjj+kpN3Y994ci7F8YkAVycRVsRlQ
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mI+kBXPo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/3] ice: lighter locking for
 PTP time reading
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
Cc: netdev@vger.kernel.org, Richard Cochran <richardcochran@gmail.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 2/26/2024 7:11 AM, Michal Schmidt wrote:
> This series removes the use of the heavy-weight PTP hardware semaphore
> in the gettimex64 path. Instead, serialization of access to the time
> register is done using a host-side spinlock. The timer hardware is
> shared between PFs on the PCI adapter, so the spinlock must be shared
> between ice_pf instances too.
> 
> Michal Schmidt (3):
>   ice: add ice_adapter for shared data across PFs on the same NIC
>   ice: avoid the PTP hardware semaphore in gettimex64 path
>   ice: fold ice_ptp_read_time into ice_ptp_gettimex64
> 

Glad to see some fix and improvement in this place. I had been
considering switching the hardware semaphore entirely to be a shared
mutex instead, but this direction also seems reasonable and fixes most
of the issues. We could actually extend this to replace the semaphore
with a mutex in order to avoid the PCIe transactions required to handle
the hardware semaphore register.
