Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7B6898572
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Apr 2024 12:53:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 288A48136D;
	Thu,  4 Apr 2024 10:53:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y374gCEdHia5; Thu,  4 Apr 2024 10:53:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2DB41813D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712228027;
	bh=xYMu9pOJYAo7YF14TsKWjpchR+MSUKJfJnSilJ2Zj+I=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uzVM4wgTWLXXa3FrNHGYyrU5FJ02WGEHTNUKnvpFAzHCGxIsXhcB3Ae7R+3R0cAkC
	 bz/mS7PUnqmb1XEC78kyESMXBCpD4ppfL+eOxkHij/Epu7zvaCTXrEjsT9ua/cuePQ
	 1P6hz70jeUFOt2QEj8NFvMZJhH8yE5j2CsNpGYyMqqiHk5PLljycgtrlunmtgEjhqi
	 UKHibulEJpylseBWoIVkxG38xTjrcU2Zigz3kv8lBcj+43sKkvGVNeQlpthSeDvIOF
	 bbbAIjA/xWe3gdulcwBdmCDLkKRm4bJ6Qip+atG8t+qSmwV6wVqUqcXKNnkjcQaLP1
	 yFnsXVDJBvDag==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2DB41813D7;
	Thu,  4 Apr 2024 10:53:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4C6A01BF977
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 10:53:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 41B2B60F0D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 10:53:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V4kTMT2PeOfy for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Apr 2024 10:53:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 39DE46066D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 39DE46066D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 39DE46066D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 10:53:43 +0000 (UTC)
X-CSE-ConnectionGUID: AYdWlSQ7SC2jKhi91fYyCw==
X-CSE-MsgGUID: zIFB2vRBT4ax0qEdfZ3XCA==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="7610881"
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; 
   d="scan'208";a="7610881"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 03:53:43 -0700
X-CSE-ConnectionGUID: bT2JNdajS6C2pWUmOPUcWw==
X-CSE-MsgGUID: dkwXAZoSRLeKm+4+MkVWeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,179,1708416000"; d="scan'208";a="49963791"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Apr 2024 03:53:42 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 4 Apr 2024 03:53:41 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 4 Apr 2024 03:53:41 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 4 Apr 2024 03:53:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WI5eIF0UsrmX1Kq2K5UeOqCZGpcodQbYYBbiWxfDQ67gL6TB+ylY1cn34Wq/5sUoYbLEWnZyW0WnLzwemmC4oW6G3VyppUCFzAot+DDkgyGdqnV6fXLCWwWjDgaB/QtOXlsUt7nvmL7d2SzjYh4z/o1ogstbpiC1RHcl2lCV3+voRNEr6QSt0g7kBVsnWHgx//qC28bP4HdAcueI1Yxx7dRMeWoT0VyW573TJtyKDCxLxvsTQxnBwK5CiMXKg1WnN7C/AyihpmO3HBy06d5GVBqNqQKRt0NurX4YV2InVWFFlq6Fw/WLo92bxoIUZ7oC1LwGeWF0fG6ethE5yOMgtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xYMu9pOJYAo7YF14TsKWjpchR+MSUKJfJnSilJ2Zj+I=;
 b=e7N9nnLkHyTxZWLmm0RFaIPVxJn0iwWObqQonHOLd7eG/5QnhlPk3gtMWhG5eV9gdeCZJ867nEc7jTluOi+hxqwEu6ytWOV0GbBF1HwTWjjLc353Wm/Icy+4LbW0Z3WsQxyYLtYC7tRBw6V8Fp+h79SnchFydD5OC04d4IREijmqMsBwdaR9DChxeQ5UdG7FVROmfDWWq6ArVJerm4JLoypFjFaLmeTy2UxT+POTmoTybtMO2dkh8sgEcRNtx8DEucdPC4Qi7YIvoT7WBm8NgCkuOs/ANgM2ot/li5XqX0EvmCWbBKzM3JdIbMtfxgZA+NKHkel4bFQgxxcTPmH+MA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by SN7PR11MB6898.namprd11.prod.outlook.com (2603:10b6:806:2a6::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.25; Thu, 4 Apr
 2024 10:53:40 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::654c:d66a:ec8e:45e9]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::654c:d66a:ec8e:45e9%6]) with mapi id 15.20.7452.019; Thu, 4 Apr 2024
 10:53:34 +0000
Message-ID: <2f368e21-bfcd-4f36-b0ab-1498f2663552@intel.com>
Date: Thu, 4 Apr 2024 12:52:16 +0200
User-Agent: Mozilla Thunderbird
To: Karol Kolacinski <karol.kolacinski@intel.com>
References: <20240404092238.26975-14-karol.kolacinski@intel.com>
 <20240404092238.26975-17-karol.kolacinski@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20240404092238.26975-17-karol.kolacinski@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA2P291CA0018.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::13) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|SN7PR11MB6898:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nxfiNDEX1+RuMVFdYKwUqgK7OqEuY8wygN7O9mJfDU/1s424nxSdm6OnVT+zN4u+aNfM7WYWAgMFuQdqmkhZhDQ5oVSJJRcga92nlOfYyYvR1qwLiHQftqVIJ6jZmUwu2cv3tagA8Z0WX2fSI6wZBcOxgzs+zzDlkT1HuX+MBH2K1OzCOluwkmOqx2AVB/Wv/sJ16wzekQb1VdXLYu4mz4DXIxBps9A7yQBFJHE0o8N7Tmdq6LrtEBg0GCUQRVWUR+Jq3NnArdaPJV9KIwrldnrNkjqXk+8PY3UpNN1XLkgUVTPquGZgvrPCotoWDPQVQj5Iv2rxTTJByiNCZSbO5rNQGyfw/n63juctRPmb7YsnWdc6qdzA7oh5h04+R0UjWgqnyRmz2wliPfL5s7yuKLZdWeca2yWSEd90IPAE3zTp5MOKhgWmZdLF/ogDnllWAwPK1Nd9oftLaVaxWxJstjXSCGXHXvK/Mo+f/7m0Z/tNMfLXcrOWPMOIfeKqrsr8K0KcgemCi0GL/BVLG8WCjPRU5eTgj/KS9g9kGO3NFpU0xM9M0djUdI/kU36CptctWMPIIYn8DR4xx3FT/L72WdSN04txmuSOlCZ9eRYIc77PgHeL8ztp7bcKerAPm/2xw+dLAHQUjY2ka2a6dQDYYzrUPstejWhpOdgioBfO1iI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?amtkMUZtQ3NWdytFMFl2U3AwZEVrbDU3WGxEYzBtMExrNCs2M2cwaUZhQWRv?=
 =?utf-8?B?S0RNczlseis1SWZqTmg5NURWZzNuV25lckFqNEgzOTlsZjA5cEY5S09PUjhr?=
 =?utf-8?B?N1ZxaUliTU5mc3c3Z1BFcm1uYUVadDNJeVhrTHdKNFFYRmlGc2xKamhXckk5?=
 =?utf-8?B?bjhDMFpUZTlzZjFHTytERi9oU1JHaW50S0FYc2VWNTNmVCsxMFRmVjdpYXJ3?=
 =?utf-8?B?SHJ4VDc4Tno0eXl2NkozTnRsQU9lMkNGcnpkUWhpbWVlQlJjcDRCRTF5ZWRh?=
 =?utf-8?B?bFhHZVgxWlBhVmVoSmw1WDN0M3c1Y2xuS3JaeWlBZGo2ZnNiRko4YUtvVUlL?=
 =?utf-8?B?TkFHRm9Vam9OU3Z1eDlUWjhEQzdycTlaaVM2cUJOb21IU08xNUp1eHMvMTM5?=
 =?utf-8?B?SzczNUFRaVpsN2g0UFdvdmNCbG1BMlB6ZmpiMlU1VHRObkFQeS8vYVZ0Q1o2?=
 =?utf-8?B?WS9yVXFJRUt4ckNuZjZ1OCtaSkVuMCt0L1BFeHRIdDV1SjR3T3lWbnNJYkYy?=
 =?utf-8?B?NldWUERkR2k4VVE1SFcvLzRkeHBKQUg3VTMzbE1xYzFvUFpVcmhuUU1pS1ll?=
 =?utf-8?B?NFhkeVAvcm5SQ2UvRG41c3IxSUprVCtyZjdnRU9kSndJdUozeHNUNE82ZGtR?=
 =?utf-8?B?U0ZsWkx2c0RVN0twdGFpbHZmRkpta013bGY4WkMxc3IrWXJMT3RyQngxOTVF?=
 =?utf-8?B?MGhqMmErbXIvZk4wMER2bk9McUpWRG1VMUNtWkRQcHNXY3daWUV5cU15QjF2?=
 =?utf-8?B?NjMwem5QbWpYVjF1UzdwcE1sTmhmSHhJT0xpMGIwMmo4WmJ5STlnNlI0dFR2?=
 =?utf-8?B?SjlqZCtxeGRpYm1oSm1YYTg4NXhYam9hUkQrdlRPcWJTTTlyWlJaanJsanRN?=
 =?utf-8?B?M2gwYTM0alZVaTNNd1dlOXF5QVZmdDBXdlJ5MlRhQ1E4dmFyOHBUcThIY2J2?=
 =?utf-8?B?ZGdjNjkwNk5uTkpsbWVlVjd5V2diU3BsQk1LTldQZ2lYT1FFZE1WQW9Ca1Nx?=
 =?utf-8?B?NWErU0xuR2c2bVJ6NTh4ekd1K3pIQmJHci9GRVl2UmFxZTlzN3FBYWxxSXBN?=
 =?utf-8?B?L21TejhJVVc2bFMyZ0JLakJHQ29oYUdDelNVbDBCRUFDY0lwY0tUUmFVMFda?=
 =?utf-8?B?VktlZDgxNVM4OGNCbjNHU0hNYXhjR0ZiSE5TSC9mWTFHK09QblRPeGt5VDFz?=
 =?utf-8?B?U0IxVEZ6ZVYvWXBBQmNhYWMwTHNHVGhNZGkxMTVJQTJmK2RKQ3NtQUl0YkJx?=
 =?utf-8?B?a0xnZGxLYTEzOGVwMk0zVXpya2VtdzVXUVdKZlZJQkVNZlkxUlppc0NtaEww?=
 =?utf-8?B?dHpONlJmbDNhTFVubTh0NnpQaENxeHpLT0tWMzBKNGtpT0F3N1Q4TnNFcGx1?=
 =?utf-8?B?Q3pXV1A0c2JaakpZc1VEWXIrMVUrWGJyNTZHK2dwTmptYmgzU3B1UVlqVFpK?=
 =?utf-8?B?RlhpQjJIdjJZYUFKek94QW5nRmx6OWFNUFdYZGFWeWtscFZ5blUrajB2U0Qv?=
 =?utf-8?B?djNGdmg1Y3pydlM3Wm05Z3l1MlNFdHIxeExWeGZ0b0d4ME9tRVhseDFCam9O?=
 =?utf-8?B?Nko2YW4rS3YwWE1VNGlTOXZ3MDRlOWRONzNmaWhnT2J1bDdZd2hSZVlFY0tt?=
 =?utf-8?B?bEpDT3NNVTlkSHNsd3lwNEFHNUkrSCtWWlg4RDBKUmZEQytmVFZDcWl2UG5L?=
 =?utf-8?B?Wk1vQkNkS2tHN1hnUEhlcy9vaGExVlV3MStyb24vTWtPVXA5eWszRFhmUWlG?=
 =?utf-8?B?SzBHOWM5eUEwT2Uyc1hydThheW1DQldkRENNckJUVm15RmlTbGpaM2tJYzFx?=
 =?utf-8?B?VDdoMVpOOC8vTzFJVlVLMXhBeGlMeTZ6a0tzZ1M4NENLTGF1MW9MMGxmaVlQ?=
 =?utf-8?B?SmR0SytXTmMyYUtWVDZKQmprM2l1ZVdqNHV0NTJQNDAvMUFITm9QcnlCb2po?=
 =?utf-8?B?dk9odC9mMmdQTjJMMVNYSHRRWFFvQW84WWtPUklLR0lXYVpQM3BOd2ZsTEFt?=
 =?utf-8?B?RW5JOHdoNVBaK00weGh2bDlVZVlBSVdRZ1RuV3JOSkZVazcrTDlJd0pZRHJM?=
 =?utf-8?B?MzlEdktMSVRNbGZ6Q3hsWWJoV0d2dHoxcHdFYytwUVZjZmlXb1lGMi9hZlVu?=
 =?utf-8?B?VGQzaVNQSnNSeGlDOGd1OGtoRnVjcE8wRStmL0lQM1R4OExxNUFnK2dtSjU2?=
 =?utf-8?B?bGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 071f38bd-2ccf-415f-93fd-08dc54957968
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Apr 2024 10:53:34.4508 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u9QcTt5lEyy4djOSbHxZTIWKbnV607D0zd9s2vNJ8Zq01tLgKYxXP2oFCuqZbL7Zvnn1+Wyqhk4Sqpd0gMj+XAvltISLLlV4s8UzULhftlM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6898
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712228024; x=1743764024;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=d9Cv+Ra4CL+ZvaehSSKPFApHQoRU/5R7W+Q27Bos5j0=;
 b=BxAKUNpWb2Kx/X8SXMZqns+g34rDsAyw0UHiYZ3Xvy9FLkv0O/D6s1zV
 8CBk5c9mjd1kTLnWpNPt/kmE2t2gvlWHxkZJxpY833jRRXwgg8yfWSd6C
 QybqaQsC//13dmpyhwELSkHOUMJoVGzMKPRSCPw6yQCVC1SETyhZ9tdMm
 tg8bJeGLwdNjVxAswbvIM2Y9+tIuj6MYeAhPjaSzAANKroDmlM8iYJIGG
 8N9GVoEnmQ0mJLZAMbtAXxBmEUlkYj9LL3bvt9BkLTozIBi0OlJHmRxRl
 cWUbCX2tU6nUNu1rkedeGohaDCku8PWIbeE22CfX8zL/20iSqrQX5u0Qy
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BxAKUNpW
Subject: Re: [Intel-wired-lan] [PATCH v5 iwl-next 03/12] ice: Implement Tx
 interrupt enablement functions
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
Cc: Sergey Temerkhanov <sergey.temerkhanov@intel.com>, netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, Przemek
 Kitszel <przemyslaw.kitszel@intel.com>, anthony.l.nguyen@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Karol Kolacinski <karol.kolacinski@intel.com>
Date: Thu,  4 Apr 2024 11:09:51 +0200

> From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> 
> Introduce functions enabling/disabling Tx TS interrupts
> for the E822 and ETH56G PHYs
> 
> Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>

[...]

> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> index 0d8e051ff93b..6d92b5d6b4d9 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> @@ -2715,6 +2715,37 @@ ice_get_phy_tx_tstamp_ready_e82x(struct ice_hw *hw, u8 quad, u64 *tstamp_ready)
>  	return 0;
>  }
>  
> +/**
> + * ice_phy_cfg_intr_e82x - Configure TX timestamp interrupt
> + * @hw: pointer to the HW struct
> + * @quad: the timestamp quad
> + * @ena: enable or disable interrupt
> + * @threshold: interrupt threshold
> + *
> + * Configure TX timestamp interrupt for the specified quad
> + */
> +
> +int ice_phy_cfg_intr_e82x(struct ice_hw *hw, u8 quad, bool ena, u8 threshold)
> +{
> +	int err;
> +	u32 val;
> +
> +	err = ice_read_quad_reg_e82x(hw, quad, Q_REG_TX_MEM_GBL_CFG, &val);
> +	if (err)
> +		return err;
> +
> +	val &= ~Q_REG_TX_MEM_GBL_CFG_INTR_ENA_M;
> +	if (ena) {
> +		val |= Q_REG_TX_MEM_GBL_CFG_INTR_ENA_M;
> +		val &= ~Q_REG_TX_MEM_GBL_CFG_INTR_THR_M;
> +		val |= FIELD_PREP(Q_REG_TX_MEM_GBL_CFG_INTR_THR_M, threshold);
> +	}
> +
> +	err = ice_write_quad_reg_e82x(hw, quad, Q_REG_TX_MEM_GBL_CFG, val);
> +
> +	return err;

	return ice_write_quad_reg_e82x(...

> +}
> +
>  /**
>   * ice_ptp_init_phy_e82x - initialize PHY parameters
>   * @ptp: pointer to the PTP HW struct
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> index 6246de3bacf3..5645b20a9f87 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> @@ -265,6 +265,7 @@ int ice_stop_phy_timer_e82x(struct ice_hw *hw, u8 port, bool soft_reset);
>  int ice_start_phy_timer_e82x(struct ice_hw *hw, u8 port);
>  int ice_phy_cfg_tx_offset_e82x(struct ice_hw *hw, u8 port);
>  int ice_phy_cfg_rx_offset_e82x(struct ice_hw *hw, u8 port);
> +int ice_phy_cfg_intr_e82x(struct ice_hw *hw, u8 quad, bool ena, u8 threshold);
>  
>  /* E810 family functions */
>  int ice_read_sma_ctrl_e810t(struct ice_hw *hw, u8 *data);
> @@ -342,11 +343,8 @@ int ice_cgu_get_output_pin_state_caps(struct ice_hw *hw, u8 pin_id,
>  #define Q_REG_TX_MEM_GBL_CFG		0xC08
>  #define Q_REG_TX_MEM_GBL_CFG_LANE_TYPE_S	0
>  #define Q_REG_TX_MEM_GBL_CFG_LANE_TYPE_M	BIT(0)
> -#define Q_REG_TX_MEM_GBL_CFG_TX_TYPE_S	1
>  #define Q_REG_TX_MEM_GBL_CFG_TX_TYPE_M	ICE_M(0xFF, 1)
> -#define Q_REG_TX_MEM_GBL_CFG_INTR_THR_S	9
>  #define Q_REG_TX_MEM_GBL_CFG_INTR_THR_M ICE_M(0x3F, 9)
> -#define Q_REG_TX_MEM_GBL_CFG_INTR_ENA_S	15
>  #define Q_REG_TX_MEM_GBL_CFG_INTR_ENA_M	BIT(15)
>  
>  /* Tx Timestamp data registers */

Thanks,
Olek
