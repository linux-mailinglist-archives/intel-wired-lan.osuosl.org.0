Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36E2B878EFB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Mar 2024 08:06:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 086E0404C3;
	Tue, 12 Mar 2024 07:06:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5G7xxhJC5o68; Tue, 12 Mar 2024 07:06:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D1E4A40472
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710227168;
	bh=0Ei+SJ6ZVG4N4WpGR33OZ1fBHqCIqnVxW8RartKlLaM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=r4xvWFeMBhwG8lnrhYbCGRjHy2amFi5XlLg8pjx92IpiXl5QuxDY3F22KBFSrjs5X
	 T/xqPUCAQsLeeR3NpGtpKA0O3bWiKjk7hJBASUZw7Zflm4SK9afTNeeuRh+9uAvO3k
	 V4KQjjsM4liquNrwED4UW9Abp/9lNPYeZzp1HUbktzFqtJsG+CO9DIWRDGoTC3D1/H
	 oZNdzPIvhxQMdXfUW311TYNbqePM8kt7lohKLI3m2zI4cpgLCZJ65VY9MNYLl6S01Z
	 Hd/r5Fodyc8pqH5FjnsoLSi1REMbBnLZlFdHvokhoQvs5cSZ4HyH8ihtgZvhvG54vm
	 rxaU+fLa3h7pw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D1E4A40472;
	Tue, 12 Mar 2024 07:06:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 869791BF2B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Mar 2024 07:06:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 72530606EC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Mar 2024 07:06:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WJLHJXtaWadW for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Mar 2024 07:06:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 239ED606D3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 239ED606D3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 239ED606D3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Mar 2024 07:06:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11010"; a="5094486"
X-IronPort-AV: E=Sophos;i="6.07,118,1708416000"; 
   d="scan'208";a="5094486"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 00:06:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,118,1708416000"; d="scan'208";a="48881801"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Mar 2024 00:06:01 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 12 Mar 2024 00:06:00 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 12 Mar 2024 00:05:55 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 12 Mar 2024 00:05:55 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 12 Mar 2024 00:05:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JSEgZ6Q8LyRE4gDYlkxhAd+SFpcoMMoYwYQKBXkvsS8WMiSIdA2GsP9IeaLSjOtGuSRe17G07XfyrYxo0RuVU56Vm5EpZl8LYzAZAoJ0St44xW8+u0RZ1frtz1PJmMtGc27nJBQM9kvaaWdLYSWvFavzT80A4pgWm9gfrmTPQzcAikpl6yBaNSPV3IzV4rwqH/FXggDtYZXUQ8CdVqVvL5NUID9G7Z/xfgVY3vR78sIS9w6s7/9I3Y+ZH5Fyc7jre5LD6zEia4WkGPEhWQjTVJbsIyxWdnSPPJuqhvIGWHHVsqpWp2PetZyNd2fWfXTR+y/N1D2f9188UbyFDhltyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0Ei+SJ6ZVG4N4WpGR33OZ1fBHqCIqnVxW8RartKlLaM=;
 b=SvUXaOacQiJfgZsGTwCY6aO4a42sJhkYTkFl6cZIzv40+5kJa/ZOp2T/Nzg1SUvaOaQKwbwRsgiVBZdL+Y9kLoWNp0rOqOw7VYibmiggFKBuQOLQEtgPYmgvHnKhHOpzt4Wx3g8LtQTirzWUyG+ltDZ6MXBJkGepe6w3kiGKEV3DqRaWoYz/+9jouIurF1cbGLU2n0pT7SPMlcBx48qrOLA1uoitqW+q9DlyilANaXED18IfMrRwm/Vq5kJqVzxu544kCdSKwGmzeLDgn4CdBiDYvkuwL59IVqPpGT2Bn7myVX1Y68ARb6lEBM4EwKyGvT3y5RtUOi1t5l+nOsblzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by PH7PR11MB5888.namprd11.prod.outlook.com (2603:10b6:510:137::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.17; Tue, 12 Mar
 2024 07:05:47 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::618b:b1ee:1f99:76ea]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::618b:b1ee:1f99:76ea%5]) with mapi id 15.20.7386.015; Tue, 12 Mar 2024
 07:05:47 +0000
Message-ID: <90885522-c035-4ed5-9971-e2a7fc94ef19@intel.com>
Date: Tue, 12 Mar 2024 08:05:40 +0100
User-Agent: Mozilla Thunderbird
To: Zhu Yanjun <yanjun.zhu@intel.com>, <anthony.l.nguyen@intel.com>
References: <20240312061520.4112782-1-yanjun.zhu@intel.com>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20240312061520.4112782-1-yanjun.zhu@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR0P281CA0015.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:15::20) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|PH7PR11MB5888:EE_
X-MS-Office365-Filtering-Correlation-Id: 5f237a28-080a-4972-04d0-08dc4262d7f5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: eGp419ABf3/z4fErrPB79o5Zr0Fir7AZpxNkFSCPH4M45kquiPTn4yrrJ9JBzjcRjcrYCaQtnkW4Iq1smqoOV0/zRnR1W5P4e0igeAtX/HN5C+0DjA7QiVkPXVH+1a3DdxJYurFVDX5L7vhLdtrVkEQSv6oGjw5jbAXAVjkt/XGtj/09g+2WFj+DIvS3b0W+DG7PSv2Zc4XwADt2mLeLNSsEPpSjzEj4wG+4Yx8MBkWlL31AjGOLC0Hakf4z+g18sYSE/NN0bJs4p/80EpEtVGqn1nBFur1uYrhfJZTjPt7GjYW1kuCSYKpbNAH2eK604aDC6/y60ZS4aLS606hBmjbt4o7kyqobM88kE3f1J0fnjvwd1l2/4cM9e6IbyMp4vZTblxIDapCC9JsrlNUH1bc1wANJZxxUPsshaDASvBMigj7T0awF778/T1c7C78DewoXbppt0ueiXhlAyGv1Yattnx5QE0pMm/yWJU9EZy8LFExQ27ETB6b2ooZ6sIXKmWUvvcywjYZkSfLwu5nolnsO8IgRZrYe6in1mxRGTeEzXT8SRtWKUjqRxgi0MGO61e5phqncR2bmN632CTMPWzExnZNAJeXyM086uOC78zg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aUJ5Y21kekljSmROWnY1NHFsVmRuUmhqWmtoV0wyQVZMSVZJcGwrOGhmcCs4?=
 =?utf-8?B?SzhmUW0wRkttMGQyVWFyODVNUzJySkZGdVIxV0VWMGNvTjRmYlgyTGMzbXlh?=
 =?utf-8?B?djhoVXN6RjIzdjFnR1FoRUdTNXlXVTQxSHhsMWlSNmV0dFFrOUF1OGpUQUtR?=
 =?utf-8?B?S1hzVUhiY0JxbmM4bzdURmJSVUJoUVRBdzNDUVVxczlCQUZqNGpPTytlRURh?=
 =?utf-8?B?OUMzdjArR3IxcHp4eldaeU93bFJPZDNQbjhhVG03NTBaUVZTcXJMU1gwbUcy?=
 =?utf-8?B?YUwzbHpCTllHVjlySWFNVXV0NjUxU2hOcjVzRlY5U0FsQ1dWa3Q2cVJuczVH?=
 =?utf-8?B?NXUwV05US1FoTFQwWklQK1V6NVRzNHdNMEowQlczbzBDOXFGOVZTTWdVOXFy?=
 =?utf-8?B?cm96M1IyK0xoWlB0dEpUVGhOZmVEbWVXcjlTYm5keklxaCt6Z2hSbVBVRkpM?=
 =?utf-8?B?QW9WR1Yya3RES3JUVk8zSTNwNW44R0dselVpdjEvL21ZdFo3d1ZxNUtTQnF6?=
 =?utf-8?B?c2E2eFFMU0owNWhvcEdiQXRMdTgxZDBhOHdyeWFxNFpBeWtDM2krcUkwMEVi?=
 =?utf-8?B?bm8xNzNBaEFlektCU0xEaHJQanNvS3BsTWhnc0VsNkhWQ0orSjl1UjI2Z3gv?=
 =?utf-8?B?dFZaNjFkbDRYSzF4Q3g3R29GNGM5QTIyQU1TVThwNXN0SVZhUy9WbXhYRWs2?=
 =?utf-8?B?ek1CV2wwTGY3M25uMnpxSFNHMkZKSWFxNHoxNDhRREFvd1NDUnk5eHZTOHBJ?=
 =?utf-8?B?emFRQytkQXN0Yzlmays4alhJb01QZGZjSlcxWldOTmJrcnVJMVE0aFZWZEtC?=
 =?utf-8?B?ejZqSUtkc1dGZkgzenZmM0pGc01sdjJHV1J5MGlzd25qK215OGptSkNTK2pN?=
 =?utf-8?B?ckx6cXJoMWhnM2VnOEJoTTdjZFFGbnFUYU1IdFFQaGVESTRIZFY2NGttakpl?=
 =?utf-8?B?ZVA0L0R4L3BvOGRTdFRia0dEOW82eGQ2Zlhnd1FJc21jZklpSWFPYUt1SnFa?=
 =?utf-8?B?QmhEbmpraVg5WHdNS0c0N1dpV0swNGU2UEw0eHJWU3QyYi9EeEdycGxyTVFE?=
 =?utf-8?B?TE4zVUdvcUMyRzZVZ1hEOUdxMHo1dHNSM2dSL01XUVN1Wlc2NUhYMm1yKzNx?=
 =?utf-8?B?MEdOK3dNVnFCL3c4dnUwTG90NnR5eEF6dklYVVBCM1F1Y3BzTFFjWXNINU1B?=
 =?utf-8?B?dlhmWG9nVnF6QmRQN0c0cTJ2ZmJ1cURicWs1MkVwRjZEMWRKNStpeTYxMHlx?=
 =?utf-8?B?dDMvanF5K2x5YW54RkRCWmpWMWR0RFQ0aUFTQzF4M2hua1NsTS9GQlkxd2Zx?=
 =?utf-8?B?OU1tdXZLUHdta0xyMUZIRXNyRDlSR1lsNUN6elNSZ25aQkdGa21admdaWng3?=
 =?utf-8?B?WUdNd1lBMC8xTWVIeG1jcGZCSlJVTFZjVFU1dlRUNG41U1FzT1RkVk9kNFFO?=
 =?utf-8?B?Rkx0TXdnd3lkUElmcFgvWWI1MmFiL2VVblFaU09KSCtFaFYrLy9wc1JZZzdD?=
 =?utf-8?B?K25nR1gwdWNmZmZTaE5ZZ1RiQmZ5ZVNkak1qK1JlVkNhUFlEZVVrK1dseTBF?=
 =?utf-8?B?ZjRMV2krdThjd0RXRmNlUzR6QUhvcWFGNGJOWFJhb3JjZUZPczBaU3FCMmps?=
 =?utf-8?B?R1kzOUtJNTEycEVuMFNLeXhOOXhLQ3pHWVV5bTJUY053SVRuL0VzK3JyN0o0?=
 =?utf-8?B?ZXdwYWFDY3VVZWdvMFJ5RmlCQjlaK1J6NnBvUVNlbUtjY0duK2JOR0NFT2pF?=
 =?utf-8?B?RzZrbjVjYTI3NnBCLzRNUlptUEUrSVArL2gyUjZIMnVYNk9CQVpEQklVZzJa?=
 =?utf-8?B?anBaWWxBMzdBRVA4d1NiVXo2b004ek5aOVhUYjZWVXEra2U3cDVnZ01YTkhr?=
 =?utf-8?B?Nk56NngyZ2lkYUc0c1BKbTd5QkNlcXl0RitGY29RbnJsOEZlMnljY0Z2QWtK?=
 =?utf-8?B?dFBzWk4wVVNyODV1ZHFNbDZRZFRRbHhaRE02OVBSYkpKVjlyNDVwWEhWMFkx?=
 =?utf-8?B?c05FdUZMS3ZuV1ZDRVVxRnNueW5HVmQxQWV0bEpkODljaDNJeEgzRnAzQ1l4?=
 =?utf-8?B?dXNWVW9kYjdwN2w4eUJ4bWNjVEMxWFBYVUVBTHIyYjRya0s4a0xVZHRJUURI?=
 =?utf-8?B?UVBBMUs0MEU2WnpyODlUTW53MndmRmZXRWJHUlhWWU9WcVdxcEtlaGJBaTFw?=
 =?utf-8?Q?MtCP/9WzvDZY4uNV1LFUceM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f237a28-080a-4972-04d0-08dc4262d7f5
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2024 07:05:47.7981 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QcIKsbHqFGXcrjORpO73HaUEI56672ZggFZ+7ditV4fA1Q3O6qOhGcOxkLWcT/KRz/9RPJizqE8ZEFIp4chaaX3Y12hDISjBVmyPpJn+FfI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5888
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710227164; x=1741763164;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AobBWRqWwtCMM7eE1RWV69woOELUPBbiuXqHpoVplgU=;
 b=nNo8UT9/SE3hEyuLWjGF+rcYTFNz0ugNr+ZtfEBdVcm+C7Chd5VQuVdX
 sjXOr6jmyVrqxoeJ8s4UX8UD85Al2UgqeILyZ2gFNE3n5IUNj42+vO5dV
 NS5xCWFtMljXSwKj5dIZ/lgqdtNpGrFgYaVY0Ov0E6o53xFW6EHzonfOh
 FDrGAUB8RcnEHKG9Bscxh0x9YEJN7WT4epj9pmbc3TSggL0jL+bUec0hP
 Ee3xrmfoHUl/ELTanRQ9qRe4KJzV53fHiNBZ116feyD2ulbLQDo2TGlZ0
 2GOxB+4k605WtZi4S+3XT20H54J7XTey6NsoO5X4W6wIqzsdVS47hezAg
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nNo8UT9/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 1/1] idpf: Clean up the vmvf_type for
 ctlq_recv functions
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
Cc: netdev@vger.kernel.org, Zhu Yanjun <yanjun.zhu@linux.dev>,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/12/24 07:15, Zhu Yanjun wrote:
> From: Zhu Yanjun <yanjun.zhu@linux.dev>
> 
> In the original source code, add vmvf_type to ctrl_msg for ctlq_recv
> functions. These new types will be implemented and used. But currently
> these types are not used. So remove them.

This commit message is hard to read.
Also please try to use imperative mood, and avoid phrases like "this 
commit", "in the code", as most likely those are implicit.

Please also wait with your contribution for next window opening.

For Intel Employees this internal wiki could be useful:
https://wiki.ith.intel.com/display/LADSW/Common+faults+when+sending+%28a+first%29+series+upstream

> 
> Signed-off-by: Zhu Yanjun <yanjun.zhu@linux.dev>
> ---
>   drivers/net/ethernet/intel/idpf/idpf_controlq_api.h | 3 ---
>   1 file changed, 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_controlq_api.h b/drivers/net/ethernet/intel/idpf/idpf_controlq_api.h
> index 8dee098bbfb0..e1b6ee87ad95 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_controlq_api.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf_controlq_api.h
> @@ -37,9 +37,6 @@ struct idpf_ctlq_reg {
>   /* Generic queue msg structure */
>   struct idpf_ctlq_msg {
>   	u8 vmvf_type; /* represents the source of the message on recv */
> -#define IDPF_VMVF_TYPE_VF 0
> -#define IDPF_VMVF_TYPE_VM 1
> -#define IDPF_VMVF_TYPE_PF 2
>   	u8 host_id;
>   	/* 3b field used only when sending a message to CP - to be used in
>   	 * combination with target func_id to route the message

