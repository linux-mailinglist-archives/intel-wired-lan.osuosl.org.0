Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 53EE1AF9184
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Jul 2025 13:25:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B474C40C9C;
	Fri,  4 Jul 2025 11:25:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sCD9dMWDQoqm; Fri,  4 Jul 2025 11:25:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 116CB40CFA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751628335;
	bh=Iw+oPHBhPDnN/7iSMJYO8mYoSNBYZJ7fmPknYcCnIzA=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FxzhJOUXsE4fYbS4Pp0kqSlaKOp5NjQiS+EU2wRZn6Uop+1hkcGeVKCzxCBj5ciU/
	 u4al2y21h/zeDOeylqNo/5+CC6aEsvrE3/zBEpfsl9XKVvxKM4cGjU4lAvJReU3bgA
	 4RQIJ7fkvd21kajCY3u8jCzgpKnMUZ3mfiU3Pu/d+9HVbWhyPp6696g65lZI5hjv+C
	 5EP2Fhhhypqpgpy9AqgQkqBf5akY1QHzr+0pU8R8leVW5rz3SMtJMTllrfkmsv3LlA
	 MTnVNIpMFKS8qDoW5J/tfr2dPsL5j9MIrKG5h7kY8sjyILk/mee3Yom/vuEgiwK2sU
	 A/uoZ3glZ2X3g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 116CB40CFA;
	Fri,  4 Jul 2025 11:25:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3EE0715F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jul 2025 11:25:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 24EFD810EE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jul 2025 11:25:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9cRwSlGMRXEn for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Jul 2025 11:25:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 03E6E80F93
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 03E6E80F93
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 03E6E80F93
 for <intel-wired-lan@osuosl.org>; Fri,  4 Jul 2025 11:25:31 +0000 (UTC)
X-CSE-ConnectionGUID: BnBkO5e0RcKhOiJfQF3s6A==
X-CSE-MsgGUID: MicTR+BqS5i19no+2QKPYA==
X-IronPort-AV: E=McAfee;i="6800,10657,11483"; a="54062404"
X-IronPort-AV: E=Sophos;i="6.16,287,1744095600"; d="scan'208";a="54062404"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2025 04:25:31 -0700
X-CSE-ConnectionGUID: 7KGZlNlyRBeIWz8xQLZzBA==
X-CSE-MsgGUID: TXU4IWcGRwGocoPCOxNxyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,287,1744095600"; d="scan'208";a="154986556"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2025 04:25:31 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 4 Jul 2025 04:25:30 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Fri, 4 Jul 2025 04:25:30 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.61)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 4 Jul 2025 04:25:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YZ8HXwjIJmSYdOmB9bHCNELiHPhshyZreKRq6wi7A5IOOozOH6pJZZS9efXI61zY0HVEyf9sVXmco5BExjMcx18X9LGiDZFuqcEJiB2FYV9eM9hit7dUg2uzYJV5LdM3nAUFPPU9ebdUeb7+QkXmZuJJZ8T1GUYxkY+nTNpREll8h8I4Toh84vZu2diwBXwmK8PM3uAbNewFVY4tuxORwqPxuQLlpo4uPHFMCs37JA3Td2dkO5vwQ7R+nTskzIOpJsAzmYz3+qyR09Sqbn5k2IZSGJ6m4xzKPaaD7JjQ7VX2Mp7E/g6IARVEX1cqPOa/YRHnjhcfEHHbmF3qg7rI0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Iw+oPHBhPDnN/7iSMJYO8mYoSNBYZJ7fmPknYcCnIzA=;
 b=m4MpiIbSMdQJWiJEqwsgZTp6dKMziEijfA6i1/1NKW8SxKHBG73d1K+VRD1lK41mb6/qwLGO6ziyI7VVzbACeC0Nu23IVVCAL5rSmDjzXO6JRCGVDKWlkadYMUi4E93GESUVw0rr5Cmym9ys2ZxZG6HAw76PK+fFwsP2CHmFrVOj34f0HC+hNXd8Bc6yER5LIAMCfH3nQDy8OjT9CA2c4PmYSGayZ7ccQ4czIsQPND8Liru3Do6dv98BowQ/SHbU0IDdZCicAeVihBa2kAc9qY3r9puLaUp3xyTWlJUlPO78KL5FpM34MHQ7212KUCvP7D4HXjuX0M75aM2dDv/85A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by PH0PR11MB5901.namprd11.prod.outlook.com (2603:10b6:510:143::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.23; Fri, 4 Jul
 2025 11:25:27 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%4]) with mapi id 15.20.8880.034; Fri, 4 Jul 2025
 11:25:26 +0000
Message-ID: <ad3287ea-0bea-40e2-9d64-08d159e14026@intel.com>
Date: Fri, 4 Jul 2025 13:25:21 +0200
User-Agent: Mozilla Thunderbird
To: Masakazu Asama <masakazu.asama@gmail.com>
CC: <intel-wired-lan@osuosl.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@linux.dev>
References: <CAP8M2pGttT4JBjt+i4GJkxy7yERbqWJ5a8R14HzoonTLByc2Cw@mail.gmail.com>
 <e033eb46-ac78-4eb9-b27b-674a3ad48a2c@intel.com>
 <CAP8M2pHAv-kyNvvQ9L0oqRjThvdZT0ttYLAYVYV33MR3P_w+TQ@mail.gmail.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <CAP8M2pHAv-kyNvvQ9L0oqRjThvdZT0ttYLAYVYV33MR3P_w+TQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO2P265CA0158.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:9::26) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|PH0PR11MB5901:EE_
X-MS-Office365-Filtering-Correlation-Id: c6fc817f-7352-4e1a-7f9a-08ddbaed794e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?KzVIVENIU2hMREYwYU5qQjN2eFRxbVVlR21BTVQ1MnBjTVUvTCtZK042UG9v?=
 =?utf-8?B?MzhXMHBlWFg1bnJNOUREQzlVYWtwN2ZySFpRREtHbldMb1hjZWVMYm1pZEhq?=
 =?utf-8?B?UWlxMjUzYmRLRkEyVXBnMit2a0FBZEtYcTVWSEtUM0t2WGdzeHc2Q05wbVVZ?=
 =?utf-8?B?ellpV050MXlodVNjSGpiWHVSQ0RhN3V0VDlaU2Y2bmQyVUxsRGx2Nm5LSDE1?=
 =?utf-8?B?TDR0S3F4Q2RPZWMvMjZWZmxzdHA5M1d2UUhWcUFDODdsV1JUNHdDRWZ6VHBl?=
 =?utf-8?B?RmVDdlNzQVJvSHBkUFJ4U2w3YVJWZm5jUDB0V1RSM0htZU5TNmVDaC9nTUJp?=
 =?utf-8?B?cmRWeWFhYkpRdjBoSXJMUS9kSWgvVVhic0RWYXZmMnNRMnY1VUlkNHN2Mkhy?=
 =?utf-8?B?bDZhYXd2Zjdxb3Vxa0IwcEgvc0NyK0hhdGZTWVpNZG9iQTBjcTlNeWMzSzcv?=
 =?utf-8?B?TU5BRWo0aVpDQUNDWDV2YTY2azV4eVpNcDZXc0pzcGExcmUvVmh1YUtxNmVK?=
 =?utf-8?B?REdUL3hINFdTM0VkOFNUdFdOSW15TmRsN0ltRWpqMzgyK3RSNmpLY0RnQ0h0?=
 =?utf-8?B?MnpuUDlkQms3Y0lScGJFNjArOUozOSs4QmhDL0w2Z3g3eGQ5blZPR29XZElI?=
 =?utf-8?B?MkJMSldrcWFJOGNBbjYrNjUyc003VlJvaGFIVXY3aDhPVEJmL2JKTHR1K1Zi?=
 =?utf-8?B?MTNIb2xUZUczMll4TUtxb2lBbk5kZ1Z0djdDNDFveTdidWcydFlvb1FCRjVi?=
 =?utf-8?B?L2hDNnhEV3lHZXp2cm90ZE1seTNWcGZkUXhnRnNsSTk1NXNleXludEJUTUlG?=
 =?utf-8?B?ZFV2UjNXb2F5QmN2MFVBeUdUbThmcUFpMThBMkFZbXRrZVpBeWtXaWMzSjdr?=
 =?utf-8?B?M0hBL3NHNHNVODREbmwvZUlnK3IrMnpBT1BPN2R6dTBreW03R0RFbEdBTDEv?=
 =?utf-8?B?ZnNlTlRyOXlOZDNldlZ1M1RKeEd0U1JHQWRaNWZtcU9XK2YzUEMvdW5JY1lN?=
 =?utf-8?B?RjR2TngyTzZxanBMeVhUVTVOeGYxOXJRUktJaHVNZHk5Zlk4TzF2aTNWUHAw?=
 =?utf-8?B?dnVoN0I0bjRsdG1IYUhSQ08xdzdsTlBZWEJVem5RUGh0S2Z6N3VVUEQ5cExH?=
 =?utf-8?B?elNDTzBVVlRITWpIaDUzL1REM0YxVlgvUU1senhCWmVTdTZPaVpJRk05N1gz?=
 =?utf-8?B?SlNoZG9nUVFvRS9hQThSVjRTSjl1ckZNZDZpQ3ozZTVKSmxacDM5Q1JqNlRo?=
 =?utf-8?B?eTI1S0RkYjQzc3NYR08vL0VMT2FLM0p1WUxzVncrTkpTYk5uWGRxVnBaUWs4?=
 =?utf-8?B?SDExa3hIckNZYm52MWJzanNRKzAxR1R1cUZhYWlsZVZYKytpYWJBZkN5eGlH?=
 =?utf-8?B?M0tsSWlXVHN2dlgzR0pYWjRkbTdOUlR6TFovaFpSTDVwQ3d4amNyZ2lNWGVU?=
 =?utf-8?B?UmxjMjBhVFpVN3NaVFcxbmxuNXlESWVjaGExRUZFNDdkdktJeWtEZ2tYdHM1?=
 =?utf-8?B?b0ZFSU03dzQ0S1RqWFI1VlBwNTl0UTJoZndGeExXeVJyVVRocHN3SkQ5K0Vt?=
 =?utf-8?B?ditCU0paeUpYZlhPeVltRVlMOFppMWk5eHRBcjFoOTNaVDRWd0ZWSG1jUDRF?=
 =?utf-8?B?cTcxOWd0ZHlHUlFKVVN2VWlCTmNkWjdjajhnRGF3bFV1eWs4M0c5NThuZTB3?=
 =?utf-8?B?aE5xRzg4VEd5WjlqQmQwZGlCZkR6c3daeitNU0xXUjZwQXZRRk1sbWtUVHF3?=
 =?utf-8?B?bmFocXRHTEZhYnkyYk5hb3dXellLWGpMclFSWHdOWTh3Sk1qd2dHT2pKeFZr?=
 =?utf-8?B?RzB2NkhpYndwVWhqNk1LYTNyOUFiSFovZUVFdDJwcEdMYm41MnZDWTlwYWRp?=
 =?utf-8?B?SzRPUVZKemtxQURrTjdLOEZaUStMelpqM0YzbzJSUDFMV0FES1JnaWFlYmZN?=
 =?utf-8?Q?Dnnky+dhb9o=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WWFZMU0zMTBQSHduMzk5REpuZHhGRTlTS0h2aTJiZEh6Z0pzT0ZlbUxva0Zh?=
 =?utf-8?B?TEFHVXJwdjgvNjVkT09QMWx6cGJoNm5ROXMvNE1WVXZyQlNFREhodXE0dngr?=
 =?utf-8?B?Ry9RaHVBOHBkTkJiVDcrTys4M1FyVWdSSHhjTnhvU00zQ2ZGdFJmWXk5Zlo5?=
 =?utf-8?B?dTZaQjRhMkVsWDY5cW1FVEtIM09vV0hTUVgwL1NpUG1sR3AyMVp4TEFOQ0Ro?=
 =?utf-8?B?eDFhWUk4WHJvME4rYWlXRGJ3Uno4Rk41WGVGUm5HMjF3Rkw5K0YyRlY2bWw5?=
 =?utf-8?B?ZDhhK0EySFBJdERNYzlIKzl3R3Yzb1cwWHVQOWt4ZGgwQXoyaVI0SElROXRL?=
 =?utf-8?B?Tm9idXIrVWtXMlV0MUJLbklMWDZVV0tON1lWWWhjOFVqenpuajNDeUtYeXpy?=
 =?utf-8?B?Mk8zZlRGY3QyQjlpRXR1SjBCNzM5anBLak15ZWszQzRyRzFVQll4VURBeFBZ?=
 =?utf-8?B?L3F0a0pYak5MTWp3YUJHQVdLUmhlOTgrMmxjajRUK1lCVHplYk1IRHFwVnpS?=
 =?utf-8?B?c2NzVUtMVC9UZDR4cGJ5Z2pCQkIrZU9ZMUduY1g2WnlnYllWQkczdmV4aWdl?=
 =?utf-8?B?YytMSUFBQ2cwc3BTTm84RmtCZmZwZHp0NnF4TklFWUpBTE8yVThVQTRkcG5O?=
 =?utf-8?B?TGppdHNvZDlXREdnREtBODF3THFXZHNTdnIvSHRpdG1JWi8rVGhnbGRSN1hy?=
 =?utf-8?B?WjVpVTZCMEJjSnU2VFJLeUViMGV4TnN3RHlid01haFg4K3dWN3JubExHNUR0?=
 =?utf-8?B?WG1qRDE5ak0xUlExWnhvMzdnUS9iR2hvc1VJOC9uRTZZRURaZlZpQ2RIUENL?=
 =?utf-8?B?OGNVNENLczR4eGNkaVh6UVNra1pKREVsSGhDZkxwcUMwTmNuMjRBdkEwVXcx?=
 =?utf-8?B?amF6WU9hVzV6QkhFelZZMUkzdU1IZ09OUTBENEs5b1dBUVdTVW8xMlR1Z2F3?=
 =?utf-8?B?T0hrbTJ6TXp3U1VvYytMVjdmSmpzZFlWNWkvenFxeGlCU2tvTzcrVGhLWTJ5?=
 =?utf-8?B?cDZiYlRadmFWRjh1TlczRVlCWmludW5NeVJZOWtKL1hSQjZuM3BuTHpWQ0JI?=
 =?utf-8?B?L25jamVINitFRm0wc3RkSHNOdElsQ1BpRXFldmIxQlZYa2FJL3Foa3JLTVFj?=
 =?utf-8?B?MmZDWE9nYStZNEpUQVpRTXgvQ2pCM0FYTi82RVVwYUdhOXNLNmlrMXE0dFBN?=
 =?utf-8?B?STB5UGUzQXR3cXhNV20yV3Y2WGs1R0ZDb0FOTTRTNlUwQW9kQ080L0Mrblpy?=
 =?utf-8?B?dEV2UjZ4RUlwTEZtazNETDF1ZzVIYTZsbWJCcThlVTUvb0xhVGM3V21BK2Yx?=
 =?utf-8?B?Z2lvMGg3OEpFUG9kdmFRUnlmZC9BRXpKQ1k0UTZjQ2JaTERibW9sSXNXWFJT?=
 =?utf-8?B?MUVFN2xLZGxtU1Y4TkphODJ1U0tCYjl5VnkxRGN0WHpRY2hFTkFSVEZpZ1U2?=
 =?utf-8?B?eUVMRFJDRDNxcmw5NVl2elY2bHpYamtHUGFVdjFvdUkrenB5MFZqTlBSTmZM?=
 =?utf-8?B?OFRvNmYxbkN1cVJ2Y2ZUU3orNHgzOFFpeEdCMFA5S1BrRjRtL0JMNTFBa3FT?=
 =?utf-8?B?WlYxSXBFVm15azhIL2g1RVZUWDZyMi9paGR0RXV4QWIvK3h3WnJmWUc5Sm1k?=
 =?utf-8?B?TUk4YmYyUGg5Mkhwb0J0QWRWMTVkM2lhVWc0b3dza3NMQWIzRDYreWZEczdI?=
 =?utf-8?B?elh2QnlXeVB2N1hWTVJjRTFMeDJBK3RkNmpUcGsrT3JTbXVxb1ltV2ZnYVBH?=
 =?utf-8?B?RUFZN1dsRURWeTlTZE9YK0NvcEZjNzdnU2lPT2MxZDFIdkRBRmNwaDJDSk5S?=
 =?utf-8?B?eXEvVTRnNnBPZ08xSk9HTW1BRnpQY0FxWGJlL20vc0M4RE5TVndIYTZNbkNK?=
 =?utf-8?B?eHVkYXZsWGp1V0VLaVpzUHNYamFzSmxlUGpQYWJLZkFGRHJIM3NDUHV1MEly?=
 =?utf-8?B?MGQ2aXg1a0tJZVdTZXpMVFpJUHRjSTh1R3BvTzlZLzVvaVhZRkxRNDQwOEhY?=
 =?utf-8?B?elpGa1RFeXYzckd1dmVoa1EzeFhQYjdtKzdQajJSeWJ5ZHVYRmE3UUNkdlBV?=
 =?utf-8?B?STNnRkJyeSt0Qkk1enB1Rmx4bllJYm1tRnVGSldJUndhL0xDQkJ0bVBlNXBJ?=
 =?utf-8?B?YmY3YTI0NENnY0tpR2lHTDh6Zm1CYjFIRkZyU0w1RUI3WXZFNzRaQTF5dW9w?=
 =?utf-8?B?bGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c6fc817f-7352-4e1a-7f9a-08ddbaed794e
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jul 2025 11:25:26.4440 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: G5PN3eTHW5V4ShjvNOjYBOOm6IJ+Ns5Iw9qXKcwArNiSYE38lVoEj4ZkaHGwQNV711jijvzx5yQH65vqMBbTamMXEF8lbJlqhyCa+Ks3P4g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5901
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751628333; x=1783164333;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ruqMYkgkYcVSexKlS6gG8qzv4shjGq7azVLzewrh7c4=;
 b=ekR2uFVvRYwdY3qD7yt9fcEuPlJAjI4Mjifr+gm6Q+QZgK37X63yCGA4
 g8n4U0mRjTqbzRh1UbMCAmvTC5eeB0NXULvSEBWD/y0kfVrRKsM03sxDG
 p2RkFJWtBDcfBKdM3pD2A5eCLDRbFlytL/yJq+IFk4iRnMX9JCRU3coGi
 sELcOkaLBaLJJ//1Ik45+zQ9Ip7r0fDu88uN1BngXKFfsev3mTlEg1PP+
 AaYLamZcv6GrCgJ7F/8Nel7yiNgxv87B6Y+X2sNplwBsWxuenu6awx3X9
 JcLzC1NNsseT6zKgZSHc2CrebL5DUbBrnnx2PW7nSxq1mtKoie6lTxOyp
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ekR2uFVv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] The ice driver may rarely return incorrect
 statistics counter values
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

On 7/2/25 10:01, Masakazu Asama wrote:
>  > The first step is to check if the linked patch fixes the issue at hand,
>  > could you please give it a try?
> 
> Sorry for the long delay.
> It took some time to complete the verification, as the environment I 
> used for testing is not something I can access freely. I apologize for 
> the inconvenience.
> 
> I have confirmed that applying the patch 1a0f25a52e08 to the Ubuntu 
> 22.04 kernel (5.15) resolves the issue.
> I’ve attached graphs showing the transmit/receive statistics before and 
> after applying the patch.
> The data before May 30th is from before the patch was applied, and the 
> data after May 30th is from after the patch.

thank you! it's great that this resolves the issue

> 
> However, since kernel 5.15 still uses struct ice_ring instead of struct 
> ice_tx_ring, I was not able to apply the patch as-is.
> I had to make two small modifications to replace struct ice_tx_ring with 
> struct ice_ring.

for me it was just one place to change (but there was also conflict in
need of manual resolution, so that makes it "two small modifications")

> 
> As shown above, the patch 1a0f25a52e08 appears to be effective on 5.15 
> as well, so I would greatly appreciate it if you could consider 
> backporting it.

I will send this as a patch to stable kernel 5.15, CC'ing you;
I think that Canonical will pick it up that way too


