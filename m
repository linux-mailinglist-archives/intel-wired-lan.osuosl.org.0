Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C46B7A14CAF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Jan 2025 11:02:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A1ECD8301F;
	Fri, 17 Jan 2025 10:02:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dhIxgU-qY0eB; Fri, 17 Jan 2025 10:02:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8336B82E4C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737108124;
	bh=WNNm77fWr9IkQ7HbbhUOUWlYYNTR2uI7B66i2QsMvN0=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mDVhytMSGB0wT1yfBfKa4nfYdxxnbNn0u0phMFNnBqEAP3qpbBAG6vAzCTTDeXB1e
	 vr9BVjLnYz9c0SafcXUYJOEiQX8KxQcqxKQREovlTvkWJTt5Dcnicwbzq8sMzq5UHd
	 c+pxDpWrNxxhBOP71tIV/426gqMUTbvnPJDTpfzYShqtjNJLOcCGrYmS5m6e+ANkEo
	 NvKMPM5wug3WSUCjHxDr6bMLHqLN7puKwKPRlhqqzqhoM82MVE7TZdzSEHk90z/32z
	 WCKm6z2T8NyKUCalnnjBrcPw/5AnsqzF1jC/9waiQb+MJw0v68JZJ9Y0BSnKkfp0nu
	 PmKApPkejd9NA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8336B82E4C;
	Fri, 17 Jan 2025 10:02:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0ECC094B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jan 2025 10:02:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CAB01403C8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jan 2025 10:02:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rkrhiY_R3gEJ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Jan 2025 10:02:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 766A5403DF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 766A5403DF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 766A5403DF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jan 2025 10:01:59 +0000 (UTC)
X-CSE-ConnectionGUID: mqBInpQ7QIW7bqsS5M69wQ==
X-CSE-MsgGUID: Sx/Dg5BZQVGoIF5LUu2VHg==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="37652753"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="37652753"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 02:01:59 -0800
X-CSE-ConnectionGUID: OdowzC/bR3i4+5WOJmnTvQ==
X-CSE-MsgGUID: m3z5gjFWTO2lUzsvQYfnLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="105607563"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Jan 2025 02:01:58 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 17 Jan 2025 02:01:58 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 17 Jan 2025 02:01:58 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 17 Jan 2025 02:01:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ajukCye/1KGlEGFe42MIfkdexW/+ZvPYYhaYP1flk+3+0ub84MLJyN4YK5X9a5y3IEjButtWfPkPdbf91twzd4/J5WU7LufGIkK/a5AUTEOI4XS38SJhweEgPndIJg50ojBTJYZEvsvyXpmjBd9e9uVSq/djTJhiP3kUkNY7tmGg0n8ezorj6EWGzoJPsLcPp0/yYOjWgQgO1MeszILp9Xb8CZAEJTDWIQygRABTainpNxz9beFQLZ6EhwFJkgtZ/srkZwmNbBbCQGYB9e2hAmn5c66pDucmvdfNl6MeGE0XLa279/IrhqKutDZB2O6N7oa10v7a7Zkn28bBW1IFgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WNNm77fWr9IkQ7HbbhUOUWlYYNTR2uI7B66i2QsMvN0=;
 b=CyuQB8GxW/pVbjMfgrVFpHY713Iodsb4SWpi0tCyzXWNrxzDLRXJBIxdz+5IG4LOfazdO7xvtExu3HzmWQn1mes8rPJSeZxU7H/GihX/AwslP9g6f9pX4F1IzGOsS7Dhmos+kD2bWm22RCEWzD3bGrNFW4b3Scg1MLOmbYGneBU5DMLAfMnv028npeyECslTsbuHaXlVfS57Vpc6V4+n6JfKpgD5SAENmX8CFXNtDGKnBI9qTzfMZIbBzPpT6wPE5kwA/+CEmuO334/T9U1a2i5V4nDResK+DmqhxhU0RyF68pSNMVVjs0V4OSE8IFfxDwWWhLj7plIe6SxR7wOUAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by SJ0PR11MB6573.namprd11.prod.outlook.com (2603:10b6:a03:44d::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.13; Fri, 17 Jan
 2025 10:01:28 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.8356.010; Fri, 17 Jan 2025
 10:01:28 +0000
Message-ID: <fe142f22-caff-4cab-9f6f-56d55e63f210@intel.com>
Date: Fri, 17 Jan 2025 11:01:22 +0100
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>, <anthony.l.nguyen@intel.com>,
 <piotr.kwapulinski@intel.com>
CC: <andrew+netdev@lunn.ch>, <davem@davemloft.net>, <edumazet@google.com>,
 <kuba@kernel.org>, <pabeni@redhat.com>, <michal.swiatkowski@linux.intel.com>, 
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, Dheeraj Reddy Jonnalagadda
 <dheeraj.linuxdev@gmail.com>
References: <20250115034117.172999-1-dheeraj.linuxdev@gmail.com>
 <20250116162157.GC6206@kernel.org>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20250116162157.GC6206@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR0P278CA0082.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:22::15) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|SJ0PR11MB6573:EE_
X-MS-Office365-Filtering-Correlation-Id: 4d2d1b48-2fa1-4fcb-5c51-08dd36dde922
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UDgwSnlPTjJKODEzN21SWWllQ1ZIZFMvZXpRckFHVGprOE5XZlhKUVkxRVBX?=
 =?utf-8?B?dDJ6ZHlMM3Z2UVN4V0J0aGxFelRweHFpVURhZjVxdFBCbHBWWGowT0c2QmF1?=
 =?utf-8?B?cWtOZC9DVGMvNURDdTZPS1V1cG1yL2tkMFZDUHYvK1BqUTUwc0ZvcnR4dVUv?=
 =?utf-8?B?MDc2UzQwQmdqeXlEQ2JpaUhTb2p2N0tXZ2YxMVdKampnbDRlRkxKak9taXBR?=
 =?utf-8?B?YWIwaE1QcXNreFlQUnNDY3czUDhlSjZLVG1JcjdtRHhLS01YVDY1T01BRVZj?=
 =?utf-8?B?OFpMQ0txaHZsWm1DMTA5OW9FZ29Ia3FuMzZGYTg3V1ZFS1JmWXlVVG00T1pj?=
 =?utf-8?B?UW9hL1RSZjhEcitkaitpNEJVemxISHUrdXRIMThYbHdYY0swZXRyZFFOUGxY?=
 =?utf-8?B?Sm5pWjczWW5TanhMeWhTS0sydDQrNXd2YlZPZG5POEk1SEYxYmtzcXdFeW9P?=
 =?utf-8?B?YkNrZ0xjZ1RWcGIzd2tmYkRBNTh2eVliamFYeXFLVjJRZHV6ZjYzQ3RYTGZo?=
 =?utf-8?B?Sm16ODdFYlRLeHlnMzFBb2ZUMTBoQ0lnN3hCOU8zRm1FRURUdFB4dDNobzQ5?=
 =?utf-8?B?aU5vN0hUOFhIQWhRbWNIWjJjQ0RSdkd4WGFwc1orVFRPcFlCeWZyb3NPRUF5?=
 =?utf-8?B?eEY4SEVlNlQ1cGkweHhTbm4rOUFqbEVVdnRYSFp5dzZvaUlHQmNTVHpQZ1Y1?=
 =?utf-8?B?NlZVcVRjZFBmcEFDNlNzeThSVzZ0ZzJ0akRlZlkwV3p4WFZ4MTBYYzYxd1hT?=
 =?utf-8?B?eWFvcmVrMkp4YndwaHgySVVnVHVDWHI2TTVxMjhEMG5sNzhaZWlYZWJReDBS?=
 =?utf-8?B?WlhUTnB3NksveU1MM3JURUpwd1dtRUZpVWYvUk5kREpGYWdqSUhjbStic3cw?=
 =?utf-8?B?dDIwbW5UeXo3QVVvaUZxbmxWckRSNjQ3bnF5NUlkUUdPaGI2RDY5QTk2MnB4?=
 =?utf-8?B?MkViMlkxU3N2dzFoc2ZXa2NKdnlOMEZMWis1WXA2V1F1bXhIbTNISjRVcXhL?=
 =?utf-8?B?VHdleDZ1REpQL21UUmJUYzhMZktMeGhvbWRncHdrcVVDTW5BQzBjMDBYUXds?=
 =?utf-8?B?MXVtT1BLUklqVUUvelR0bGNGOE85aWpGUjJQWlYybzIyOVVXL0t4SWJwVDFv?=
 =?utf-8?B?a29jK0hzMlc0VFdqZXBDU1psWnFlVmpDcTJ3c2lWdmlzbVFtN1dQU2VvWXFS?=
 =?utf-8?B?SmkvK3lRODY1MDN0TGM2cVZJVUxCYk1Rc2l1ZWNNMWc0T2lyemczUEg0MjFN?=
 =?utf-8?B?YkxhT0hrcVRFNXdrN3hvNFlKQTFHcjZzbngwVGFNTncxVjg2biszQlNBUnVa?=
 =?utf-8?B?SHplZlNNL1o1Zll2d3pHZGlWR3FTOWllSzRKb1pqeGtnU2xYK0RYeVIyUTI4?=
 =?utf-8?B?OUhNaHhnYVRaemhodjJhNmhFSFVHV05LNjQwUWtqTGR6NThqeGJhVVFNSXZZ?=
 =?utf-8?B?NW1idXZtVXpxVWhkbkkrbCttVGhzbjJ4ZkdQWFo5bzMvNzR0SzlqUHY2U0NZ?=
 =?utf-8?B?RjJDUFR3OXhCdWczRTcrbW94MEVSL0d4OUxwb21lVWJzb3pEMHg0SkhTN2hJ?=
 =?utf-8?B?TDA4TGo2TWJ2d1FQMzdDb2ZwcExsRjVyelN5QjFpREVNdFdRbjNkNGpxczZ3?=
 =?utf-8?B?SE1BSWx1S2JuN2pqcW8ydWh4ZE5qRDhRTlIveDdzaE5QR2pzbWQ0eWcwcjla?=
 =?utf-8?B?V1dUb1BrTldYYkVMam1vRzNlSTJJT2tuRFd6cUlJUi8weENYenJmL29SdDBJ?=
 =?utf-8?Q?MLuQOqIp3vIN8PXp1ffPXVmFL5eBeN+ZQaLF+80?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R2ZGbEl2bVVUNU51a0hxbTdla0FJakJmWXlGTkQvZVFwZ2Z6NzNSUTJJTzBJ?=
 =?utf-8?B?Rm12WG1HU2k3NXZ1aUdOL0xObzJLNW5OL242a1pUTTVNenFoNWtBSWd4bGlS?=
 =?utf-8?B?dmxVRzBOVkJPN2dyNU82aFNKWXBIaUlRbFoxTDUvVldhOU1WRys0MWkyZW9B?=
 =?utf-8?B?SmJqYlZJaTdscWZENyt1SXlheTRQcTNVVjdWWG80Rng4ZlpsMDM3TDZLdmpo?=
 =?utf-8?B?dkhXOHFSTkpoUk0vLzdONXRlQ2gxTzBGMjdONGpUMnZPeDRTL2NobHJsZ0RK?=
 =?utf-8?B?NWRBNmtYa0dWWGZYK1FMRHVVWjM2TkV5SXFhY2V2dUNsYWFUR3ZrTTBXbVBn?=
 =?utf-8?B?T2NudzBZZ3ZmdmRvYXZJVlNFRHNBVUdsMGtEUkk4Qzk1R1F4b1kxTjBKdFFa?=
 =?utf-8?B?NGI3dEtSMGIzc0FYNFhYZGpwSk54NXFUUE5pR3drTzJ4aDNHdGYrL1ZMY3Bo?=
 =?utf-8?B?ZjVEdENvamlaUkhXMlVuREZpc2x0TlYyRlpjT1Y5L3RiNUVid2lDajIySlZi?=
 =?utf-8?B?Z1RUR05yWXNRZzFmODlhTXV0VWl5bUZZUk53c2FLakhXSnhkN3FjWEtCdmha?=
 =?utf-8?B?Q21WazFOR25PeXNqOTZiTndTeFpBN2MzQnc5MWV6SWd0R1FkQXJOdC9zazFx?=
 =?utf-8?B?UHJKcEZzS3dLQXNYelg1RzlWdnphLzVaS3BmODNtME0waVd0UC9aZ3ZpMG84?=
 =?utf-8?B?YzhvSGNvN296OUVYY00yL2VxdklySHFOdlY5SG45MFI1bHA4OEhreW5ibXBZ?=
 =?utf-8?B?VU90VlZ0a2Qxa0JVVWw0MW5PRm5aajdyZDA0M3RxRWJZK2ZRNDRYOTREbjB4?=
 =?utf-8?B?R05YUlM4MWVuQmR2TnN4V05jempxdGFLcnNQNUZpaGlwMVQrRGxmT3ZzcjFD?=
 =?utf-8?B?QWtONlFhdDM5cTQ5RWhCVnk4aDJPc0s0amR2V3BMMWNoVzdwS21FZDJNVW8w?=
 =?utf-8?B?Z0xSTWdvV083UzNoUXdDYS9XZkxFL3cvMndRdktrcUNPa3JQZlQ4TDdiMmFU?=
 =?utf-8?B?Y1R0ZVNzbExQa0FUM1ppTzFSUTlqdVZ3TVpjcjZWaFhJbnhGVHFSZ09BSkZ6?=
 =?utf-8?B?K0xYeDNBUzFOVUhxQ0JRaGpEd21hQ0hmZmdQdS83ZllMbmtrcWJ3d0NqakVv?=
 =?utf-8?B?T1ZzZmJhT2xMR2hLam1jdkw4SVFMb20zS0dndkdQUnp1UGJhQ3BaNm1XVmFS?=
 =?utf-8?B?bmkzT0NOQWNsL0VoK2ZkK0diaXFXTitneTNJS2dNWEF5cjdVRmpnVTBxejVx?=
 =?utf-8?B?bk1mRkpCNlRXdkIxdHZ1a2pvMG52VGozbUYwZ2VIcmlQWTVVTDBBQmRVbEdo?=
 =?utf-8?B?bzh6UE9XNlZrSlA0RFZXOUFnd1BpemRiZjVMdG9hTjdUQ1JTYXgwK3pmRDFa?=
 =?utf-8?B?dnlCd2orekhKc3BDVXlzL00raC9EZ3BSV1VQSkZ2VkVuT0ljZTU5QmJJb2RN?=
 =?utf-8?B?RURHbXZvdEd5OWlBTGNlWlk5WUw4Vk9HT3hSekxoa3FDZjZwU2JzdUlqTlRh?=
 =?utf-8?B?WFJzR2tJZklDT21iODFJN01wemMvNzJGVVAvZDUwVExhL05nWUtmSEdkSUxJ?=
 =?utf-8?B?UmxSOWxodng4TVgrNVhaV3ZUR2U4Q2Eyd1hYa1hBejg0WGpLdmljdWJ4RzV5?=
 =?utf-8?B?N1pGREtWMDhsUmZydGUvVFpkZzJ3WlZwTTNCTEQ5Y0tpb2wxRVVUaXBDNTR3?=
 =?utf-8?B?OS9xRWFCNFY5NENVRUxEWGFsTkZFTFBoVS9rQ2VGYmdWMTFucjU4YkRPNTdT?=
 =?utf-8?B?bFA0K2t0cXAzdnpBY3lGbDlqRWZlSmd0aFdKYlhJc2dNUlJxMDJaNldkb3BB?=
 =?utf-8?B?OTdtSTcvWHBjWVZuUFkzbEVxU21tT1ZHUFpWWk8yN2hMdWpZZkxjR0xIZ0t3?=
 =?utf-8?B?MEEyNVpxK293Q2ZyUFdXZWtML09ZcDA5WHBMTXY4MlZlbHRPVTNOQm1WbFN5?=
 =?utf-8?B?WW1lZzZjWkRCbXZ2TnNUS2hCSjNFQy9Ecm8rVUlqTEthcTNFR2k3SHVuUEcy?=
 =?utf-8?B?K1ltbkRHdkNtZ2xjY205WnBQd3I1WVpENzkzalFpWG9xSzZXZW1sWWxFR3R1?=
 =?utf-8?B?YXo2Z0Q2ZXVXUXJldWI5a3duUFBFRWVzenNTRDdFd3pRTTlDc2VvTVVNQXJK?=
 =?utf-8?B?UHNoMmNiMldBV0tDbjQ1Z2xFOHptSGd2ZlJzV1JkelpYOE1CTkdOekNOeHQ2?=
 =?utf-8?B?VEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d2d1b48-2fa1-4fcb-5c51-08dd36dde922
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2025 10:01:28.5190 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +GfZcnIaOvemd25Ovc3uz+IPT2RU2ZjiWlkKn0FUyaFN9AAtHekAYt8z6ygCuS/jlsRCmwAId9RoV530SN/Hyk19UJHeRa3F+y5xxhBR9U4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6573
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737108121; x=1768644121;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Cy7qxroc5wnL3a9yjjJ3mhIlwxyrFCgU5d5LjbXruHA=;
 b=RPzqjLVCtTF+vUbhEOqD+hyXqlDNn7gn58iczPPQHFLkg1ACNg5TyIj/
 SGgdJP2JFDvgu1dIi9iJw5Xj/tEVSGac/hAIgir4Ux9r5b3t9uyViSvfV
 5RBdjsersNNtdlhFtOCw1jFVx/JXthKO4jL+OoEOyYTKebzZwgl71TRox
 0KuHF4W4X5CGSr9aT4QovKZaQ0V53jyKx40fqB/ayXOGzPQ1p9qU4k91w
 WJSoHhp+mg0DPdvRizrFXlK7B2pRkKQ8i7NnMmj9M4+YzxCSUDV7yd8AR
 ST3c0QYVuVs5c+UYnAy0VK66hCrPOR6jWuhhS1MotDLYPKMo4Qo0nlbJ7
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RPzqjLVC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next] ixgbe: Fix endian
 handling for ACI descriptor registers
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

On 1/16/25 17:21, Simon Horman wrote:
> On Wed, Jan 15, 2025 at 09:11:17AM +0530, Dheeraj Reddy Jonnalagadda wrote:
>> The ixgbe driver was missing proper endian conversion for ACI descriptor
>> register operations. Add the necessary conversions when reading and
>> writing to the registers.
>>
>> Fixes: 46761fd52a88 ("ixgbe: Add support for E610 FW Admin Command Interface")
>> Closes: https://scan7.scan.coverity.com/#/project-view/52337/11354?selectedIssue=1602757
>> Signed-off-by: Dheeraj Reddy Jonnalagadda <dheeraj.linuxdev@gmail.com>
> 
> Hi Dheeraj,
> 
> It seems that Sparse is not very happy about __le32 values appearing
> where u32 ones are expected. I wonder if something like what is below
> (compile tested only!) would both address the problem at hand and
> keep Sparse happy (even if negting much of it's usefulness by using casts).
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.h
> index 6639069ad528..8b3787837128 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.h
> @@ -150,6 +150,9 @@ static inline void ixgbe_write_reg(struct ixgbe_hw *hw, u32 reg, u32 value)
>   }
>   #define IXGBE_WRITE_REG(a, reg, value) ixgbe_write_reg((a), (reg), (value))

Simon,

As all ixgbe registers are LE, it would be beneficial to change
ixgbe_write_reg(), as @value should be __le32, (perhaps @reg too).
Similar for 64b.

This clearly would not be a "fix" material, as all call sites should be
examined to check if they conform.

>   
> +#define IXGBE_WRITE_REG_LE32(a, reg, value) \
> +	ixgbe_write_reg((a), (reg), (u32 __force)cpu_to_le32(value))
> +

