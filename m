Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B901D861370
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Feb 2024 14:58:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E18588364F;
	Fri, 23 Feb 2024 13:58:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tuNu4Xmp_h_Z; Fri, 23 Feb 2024 13:58:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F0E14835E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708696721;
	bh=7x3UWIy0mSL7iUKLyzL03+x+Py0RMIXVwAuAnzMyfGA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BT+0RQPiaZ4rJSmdgkJZ8I22E9GBZ8e729/jfj9Y6uUZPnVBS3fK29ZZ0/fSowyjd
	 qgVQTG+/oDMApwllIHGXVzuBPpkM89O/WshpxQesZuqC/g28B3g56DuonSrOQmI8gd
	 ehibVbdhA4AdJF1X6WOGsAxdwwvCAvDqwMVgpPUolnw84xYKVlZXGwTP0uy9lWIq0+
	 S1xYfd70dRyx/LQ7R5e5bx2m6STIN+h1MbH3j1zj54kMxf1LRG4TuZxbUulhDdzRaI
	 GluQDIWT/vNGXjm8/4O1hBYN3lIjCpFzZGxVmqunZ/NMXGju8k9cf19msv3WrzN0qH
	 IoZtYe4+mbAtQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F0E14835E9;
	Fri, 23 Feb 2024 13:58:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 46D1B1BF341
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Feb 2024 13:58:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3FEE08364F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Feb 2024 13:58:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5_W0UEldc88v for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Feb 2024 13:58:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9EB6383611
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9EB6383611
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9EB6383611
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Feb 2024 13:58:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="2872857"
X-IronPort-AV: E=Sophos;i="6.06,180,1705392000"; 
   d="scan'208";a="2872857"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2024 05:58:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,180,1705392000"; d="scan'208";a="10576046"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Feb 2024 05:58:33 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 23 Feb 2024 05:58:33 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 23 Feb 2024 05:58:33 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 23 Feb 2024 05:58:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=duBkSTIEdTsYn564LSWCTVMiCA4a3VoMhRiNPXJokKdAUjkhN75O/G8dbmWPI6WuNbQ1P3KQlmO5Vr9CP/VbgYnjhxlYvbMWrazegdGO6iRpehezKlX6hxSwuWECurJFDDuDyH+vZRwn1qVivqeXQzECtb683D/5AN7ibtoGSarScp0IVS6XXz46nsFTg1PwV0FiWUlRpwKYJOHZBofLbJzD8fw4N8IxqWzm+CXRyGU60VViz+3+moGMApqJymbmOkIA18/yNFswt7cluwhc8RwgTU0ewr4rpmxW7TJ1ZM2fbFTPleBG378XIw1VuPZoe6VQbI12uMq126fHf8aHNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7x3UWIy0mSL7iUKLyzL03+x+Py0RMIXVwAuAnzMyfGA=;
 b=F6E4H1YI2Tc7hAmPLepWFE/JWT+DEsVJ1/Ou1Qw0yLl86cg/W3AFtGdlJth830kxcgkCCEAICf/k35SHfIx7/j3g8i5V0TReTOhc7jgR/59hrWv3yZAar4dGE5VBUtws3viD6dwaA2mWVpfr5vD4/l0WIeqKorCcCNsOeo5lB0e0Q2Wz1ChuejyKgf3MMawn8R0su5UhJuuijBqv3P1G5WAJUuGRzn1yp68ueSjH9mxE8FSPbl3phJVSFMm0TXOyNrFdNggzj1//Ezm7o/2WoXAkaichRrtw3nlGq2a4Sxn7siUfHh2J3sff7Y6oaMFFjkfynsd520UuaKYqcrdVXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by IA1PR11MB8176.namprd11.prod.outlook.com (2603:10b6:208:452::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7316.22; Fri, 23 Feb
 2024 13:58:31 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::b1b8:dbaa:aa04:a6bf]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::b1b8:dbaa:aa04:a6bf%7]) with mapi id 15.20.7316.018; Fri, 23 Feb 2024
 13:58:30 +0000
Message-ID: <fdeefe2c-d91a-4b4f-9b1b-7f592394aab3@intel.com>
Date: Fri, 23 Feb 2024 14:58:24 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: Christian Rohmann <christian.rohmann@inovex.de>,
 <intel-wired-lan@lists.osuosl.org>
References: <f38a6ca4-af05-48b1-a3e6-17ef2054e525@inovex.de>
 <7bbe621e-52cc-8111-bec7-70632900c3b0@intel.com>
 <e1b2f012-7e0a-4167-bfa9-026d49f1b45b@inovex.de>
 <1ec34cee-bfab-4dc8-81eb-9a9688b9a61e@inovex.de>
 <df3b33f3-8f78-4c94-854a-dd70a8b5fcd3@intel.com>
 <ae802f16-d425-4377-82f5-b72f8efac0de@inovex.de>
 <5ff11c63-d1db-4a8c-a496-99e17acc273f@inovex.de>
 <0ffd1e6a-35ff-4868-a15d-d0f12c5c9720@intel.com>
In-Reply-To: <0ffd1e6a-35ff-4868-a15d-d0f12c5c9720@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR3P281CA0049.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4a::22) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|IA1PR11MB8176:EE_
X-MS-Office365-Filtering-Correlation-Id: 87ed274f-d108-4b34-9c6d-08dc34778445
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xMQABwXSeR3m6T/NNaem9Gi48zHdm01U8ro40kK+P/SZwhy6sNkob/pCGVx1ztJJvTB84Ze3BlfdXa67qAo7GlFv4Tmq4z+hFdkRhwt7VsYr3smqROo140FGU8EbYGhCL8rqUtWIARjA7wYbgG5CKyokK4JSjeknpEt/VPHIWmySGJLIQvoaovVNZgZDslI8zi7CcNMYd3FXehrtQR35DAWu51ZNErWXjjx2+Kwzaom44DVX8usjq/RP3xgEnNItUIpjvNYT4Hgh7rn4NoBGcqpmm9sYp4a6dX4cDrOYKqLsZxCM8X4uSmSZNw50h2TMKc1z2WbgSxnJ0IEm2Ax/HoZ07tdstg6IdeF40VbHlcERLf/j48GUY/XLBVu2GufsqtC2IEyqptu8dz0ugc7gSijGxLwnqH4ZwrcWEkQVMUmOp6TiSXpzbm0AMi5I6AD2KiNgaCLHBJT8eREdUlapNtst4hUpERgtBVDtLIOZt6L20jWl1kDh68iNrwia2XpcJa/CPxZvRYRFV7ff+OUuq79Qiwjp7yA57voHkaJYCQQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dXJsTnpSWkwvSDkxamVRelMrcHBJaW4xVFJHQ3JvaGVsb0N4ZmRKRGdVMXhr?=
 =?utf-8?B?QnVYNkJxOGN1WlAwMWZPSytNNlJXK1dFOGRUblNQMDI5QmdwZWt6L3NRWitr?=
 =?utf-8?B?QmFZOXdWZUJVL3U3QmFxRURNeFlDbytlRUpZQ3hHSHg0SUhTWWFtWmFsdkdD?=
 =?utf-8?B?ZFJyQ3JjY1VGNWszQmMrL29tRmNMemhGYUhDZkM2dEs1TWovR2djYTRHaCsx?=
 =?utf-8?B?dVFnb1NwZnltUXRDT3FNSXljMmZ1ZzgzS3QzN1pRVVJHWWV0a2NlaGZYRmNl?=
 =?utf-8?B?YnU4YVAwSFVuWVBaZTJMVWtNUElKN0lhenJYdTdWemlzaUxKeXZyRXhKY0Zh?=
 =?utf-8?B?dGt3bC9zdjYycDc0aGJMaTVvTlBPVjlmWVZBOUxVVnR4OHQvcy9ybFgwOEpC?=
 =?utf-8?B?NVZ0UTgvVUpmUWlHWS8rZ3pncVhDTlEyZHNpM3N3YXN6aU9wQUJkTkVMMVJP?=
 =?utf-8?B?b2VQMlBIdmhuTEY5aTg4ZU1CNi9PRnZKa3NlbzVHdFBId280Q3ZGaUFHK3o0?=
 =?utf-8?B?ZWF5UmdyTXl6SmF2aW5lYTlPb0R0SkNXYnVYWExwYjlPY014SHBqTnRHcXNt?=
 =?utf-8?B?K2Y2SmFjMzkxNzlYOCswd2FDZzhZa2RuZWJ5OXp4bEhKRGNvblQ5NUJlbElW?=
 =?utf-8?B?M3pkTVVpRnZXcFpibDNmN3NjaVBQNmxKNkliTmRXUmdTa2Y5RmZxWktMTENP?=
 =?utf-8?B?SWdxQ3krNVpVMU9OOGJ4UmpVNzdsNkZTZjhWVHQ1blFNdEpZRTJ3aUVZb0Y0?=
 =?utf-8?B?ZW1yWktKTmxnMDZxZTdhV3lpWUJFVlRPdWFvazcvSDRTVnZscERWNEtWSDYz?=
 =?utf-8?B?Z2ZMclRKZ1FEQ2d6K3E5Tm03d05aSm8wY2hTSFpzUW9kMDl0MUdRTURQd0Ur?=
 =?utf-8?B?RytCa2JNNUlVc1hXMEhhd1ZHSVFQOWpENzJGYmlhaEhWT0thQkI0VjRqaVRR?=
 =?utf-8?B?dVRFL1pjU1ZsbEIzUjI5aWIwYlJXVmlwME5wYVJ5Wm5yTFhYL0dBazFTL1lv?=
 =?utf-8?B?MHYzN3Brei95M1FSZzVoL1BIa21Ba29Rb2lDc0FnaUpNS0JWdGtDSnhCclZQ?=
 =?utf-8?B?RFlrRGQrM2tPNWppeW9ISmxqV0ZlelNwVUFZY1FjcXZjZ1ViWU1ZLytJNzJa?=
 =?utf-8?B?dlFkclY4TWRhdEhpbU9Oc0llL0NJWE5ENXkrbENEQ2kyZXk2UUk1VzNPL3Yv?=
 =?utf-8?B?eTFvTzl0VS8yancydHY0Z1gwL2Q1dmZvcytIa0lRdXRRN2R5VWtuVnoyUXFi?=
 =?utf-8?B?V2hvL1p4bUs4dzVqWVMzZVNHNmhPNDAzNS9BMWl1QnJDZi9VSjBLckZrckpi?=
 =?utf-8?B?bFh5cHJRcXAyZ0x5bzFtM0RBUWFYL0dwSE9KR2prc21JcHFjOWFIR2pTNUh1?=
 =?utf-8?B?M21vdnhCU0N3bkd0SHg2NEZsWEg4RUx0ZUV2OXNzU3NxRC8xL2hmQnFpQkht?=
 =?utf-8?B?ZFpaaGE2TjM1dWVsQjZPWURPd09iSCs3bVZQb0NHa0RPZlpVOUpLM1BvQUZ2?=
 =?utf-8?B?OTlJQjczTGxFaXhOS250R2lDV3dkVit2N0lPNFlaV1VFYWIxMDUyd3ZWOFVV?=
 =?utf-8?B?dkZhM05NemRoOWpocU1QWk5HcGs5aVVvMFQrTklJWmRmV3Qwajg0MUdKZFNE?=
 =?utf-8?B?SHhHelpReGkvUnVWUnRsd0FSdmNzY0k2UmdYbWhReTRVTStFdnlZUVdLOTgx?=
 =?utf-8?B?bVIzOTRTUFprdi95d3pkb2R0NVhiR2RqakNKQ0poZEd2aGV4OEpCWlErT1dv?=
 =?utf-8?B?SEJXTGN0aDJlNFJQK0N4ZUs1a3VmNWJvaUY0Ymw4TnY1c3V4RnE0cmRtUG9z?=
 =?utf-8?B?aE0zRGdIUnlZSWx0Tm1QZ3NkaGllSlhvQWVHWnRSTFNqbG5CVmxnaVJUWWJ3?=
 =?utf-8?B?VWI3ai9HSm1SWklUMjVYTENKZlFSdkRPVUo0WEI1bDM5c2NyNGZUS2cyN3h1?=
 =?utf-8?B?OVgxaTd5ODZ6VUVmTUgzazd6cUFRMWNkNnh6UzlnbUVCbTQyYnRWbTJpdW83?=
 =?utf-8?B?dkVSVWRwOHpZWEd5VlJLckZvaTR4dS9oZllrUlhiSEZ4TnJ0YkZmYjJvMHNF?=
 =?utf-8?B?Q1RINEdycEU3ajVFejdkVTNUcERIcGphcGtDblJDQ0RyVy9oVS9rL2tIc25y?=
 =?utf-8?B?SmRrSE5pQlRVUjBnVVcrOUlTbHlwWHlRLzkzeDhKLzZML2haOW5nMy9RcDVW?=
 =?utf-8?B?UkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 87ed274f-d108-4b34-9c6d-08dc34778445
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Feb 2024 13:58:30.6018 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +Mdrykc+wTCZJkJhOo21C90RECP0UYy0sSK9PiigH3ML5cJK/t3DELyJmYNBxlYe+q59QO6kIcjkgpxNi0j4MmiX64R/Skv7S2Es1TiCm7Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8176
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708696715; x=1740232715;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DzHBgu2oA0l1nR2ygIXzK6LYu/c43Vdg4l6cw0wOOYw=;
 b=R4Bs4JHB8u0Hzzy61tNNaKYnk4YMlI6GkaLF4EQqVQdFFWsiSx9sdXeN
 +7v8ByCbGNR7/JBdM5uzDA64yzQuiYJTVL/osmMMeaxa8Zfn3cMNAb2gj
 hVnqM9f+AoYkKjvwkuEN2aD6QdfBUxBoJ95a8Vn8jlGO077XEQOqqmV5S
 uJpM7+auCbXaxzX+nvTgkD0QHY7kj3ef9Natextjrvzaxs4esuDK7hSmk
 H3amRlge1Ir1ika1jsUAgvU/SaTsB1rNjicVW2DP817BsbQvm+yDodnPQ
 FKSv1ySARQfqsZUnLdX2FlMa0iniHqFa8v9nXEr/X6uMuz/8PhLfmMGJY
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=R4Bs4JHB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Counter spikes in /proc/net/dev for
 E810-CQDA2 interfaces (ice driver) on kernel >=6.2
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, leszek.pepiak@intel.com, "Czapnik,
 Lukasz" <lukasz.czapnik@intel.com>,
 Nebojsa Stevanovic <nebojsa.stevanovic@gcore.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/30/24 14:25, Przemek Kitszel wrote:
> On 1/30/24 09:30, Christian Rohmann wrote:
>> Hello again Przemek,
>>
>> On 11.01.24 16:07, Przemek Kitszel wrote:
>>> I plan (and my manager agrees :)) to work on this ~now
>>>
>>> So far I have found a few bad smells to fix in related area, will work
>>> with Ubuntu as main test setup for that too to increase a chance of
>>> repro.
>>>
>>> Also, just from the code there is no obvious bug (even if there is about
>>> one patch around stats in 6.1 ... 6.2 range).
>>>
>>> I would also check exact Ubuntu kernel sources (not just "upstream"). 
>>
>> Were you able to find anything in this regard yet? See my further 
>> findings below.
>>
> 
> [Ben changes]
> By looking at the commit range, this time also for iavf, still the only
> obvious candidates to look deeper in are two commits by Ben:
> 2fd5e433cd26 ("ice: Accumulate HW and Netdev statistics over reset")

I believe that I have found an issue in this commit, I will spin off
a fix soon (will go through our usual process defined at Intel "Network"
group). I will CC you for our internal review too (if only to give
a chance of earlier testing).

> 288ecf491b16 ("ice: Accumulate ring statistics over reset")
> 

[...]

