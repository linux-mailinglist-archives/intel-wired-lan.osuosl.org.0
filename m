Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FC4389D91D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Apr 2024 14:20:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B7BC841509;
	Tue,  9 Apr 2024 12:20:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 60qT3khruJdJ; Tue,  9 Apr 2024 12:20:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 96CDB40B83
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712665242;
	bh=x9lib4P1hqyx8YNVg5a9qJji2+Jtjf4acH4Q7M2J73Y=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SMfVvgIZVyhJDuDDHXKfK8Ydy8ZkFmR6lne5sbku8jtf1RxoPbRuGA/ssZ7GMN3wV
	 GqvLiWVkovswhPLJZrWId0aej9+sjURIDPnuC6Op+Wq0vMwIKH65vPmRKxjZvN1mKn
	 TmSN9tqtOzGJ00v9PwWYSHIJcO+3WYebKfz26if0upH5ZHP/kYxQLR3M9GRxUolKHk
	 MZLRLig1GrhVdLR2QMj+3KItYHe0vgWEnuA8ohFBd8dygcHBb2XUvaoAPw4KgVvzF+
	 krjRMIR6mS6YagwYAIq4XSfgWvD4ZLJie0NIG7Y/PPYak7CIXCJm8raEfY9WKgabb2
	 Ew8vJp1yzK/uA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 96CDB40B83;
	Tue,  9 Apr 2024 12:20:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A518B1BF315
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Apr 2024 12:20:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 916EA81F1D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Apr 2024 12:20:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FX7_hSSusisb for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Apr 2024 12:20:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7084081F1A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7084081F1A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7084081F1A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Apr 2024 12:20:38 +0000 (UTC)
X-CSE-ConnectionGUID: s4BL3qO1RSyirM4ogSv5BQ==
X-CSE-MsgGUID: OSgOOah3RHGJ8ohXIMpdYw==
X-IronPort-AV: E=McAfee;i="6600,9927,11038"; a="33381318"
X-IronPort-AV: E=Sophos;i="6.07,189,1708416000"; d="scan'208";a="33381318"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2024 05:20:38 -0700
X-CSE-ConnectionGUID: cvIgl6HmTnSO5p6WUipv6Q==
X-CSE-MsgGUID: zFMvgADTTzSQPcp5JYIHAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,189,1708416000"; d="scan'208";a="20096994"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Apr 2024 05:20:38 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 9 Apr 2024 05:20:37 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 9 Apr 2024 05:20:37 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 9 Apr 2024 05:20:37 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 9 Apr 2024 05:20:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DfvZJ6KV4lX3DovBZsJ/ZuyLRWjxlrdgVztZXodSo9hWenu3CzU9HS0dmLCzis5+WBTiJKwlgFfBqFxmovZln+zu/gXV7JfJym/u3A867i9cDWoaUju9Cw61itNN2iBLQLZAn5nhTO/SBnZoTwECfzFbav4xbu0qkeqBaTG3lcZtkY77r9dX0VL+aKx8iwe//8rBYsgZHKA5s0x4K625WaY2GSKR4jtrgK2wjH2EqZvVdmyWkFfVrwHpLNah1VTiSuB+NRjfVme4K0iah+VFH9mOQB8iXtx7JJxetqo/6mRFjrRVg/TPkbfam3wVpX46o8XADFrrLR1wmIUUoak9ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x9lib4P1hqyx8YNVg5a9qJji2+Jtjf4acH4Q7M2J73Y=;
 b=RHORVA+Ua6twXsDVg5B6EvD3BSSZpKdyHoO8sDXBRnxJO3b73+Jo04rao47ikmwMV6W0OWAcGzYormpvnVrKCtb9HW0xpgi1tOSd3T4in7xPSY9qn6IeX03Dxvi/8jdUHqn/r3hJgJlfgxDGFu33fNy6FJJb4CFIZff+i2JMTExznhMbUDbpaSwA6+uTmGsInXqrS5/EpqlIzJyx3EMkx9xwaYTAXezBMSgttYHwh8Hun/yoqjveoWbw+gFr1ANfnkFIzKlVvTSUK6Z4L/gryP4WcpvWXBNU7ZUqSb4LIHYcK6ChSsw1C08LpxY3ggzqvvo6GUoHGvbPa5jNxCA1+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by SJ2PR11MB8469.namprd11.prod.outlook.com (2603:10b6:a03:57b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.25; Tue, 9 Apr
 2024 12:20:30 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ac3:a242:4abe:a665]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ac3:a242:4abe:a665%4]) with mapi id 15.20.7452.019; Tue, 9 Apr 2024
 12:20:30 +0000
Message-ID: <cf30ce2e-ab70-4bbe-82ab-d687c2ea2efc@intel.com>
Date: Tue, 9 Apr 2024 14:20:23 +0200
User-Agent: Mozilla Thunderbird
To: Andrew Lunn <andrew@lunn.ch>
References: <20240329092321.16843-1-wojciech.drewek@intel.com>
 <38d874e3-f25b-4af2-8c1c-946ab74c1925@lunn.ch>
 <a3fd2b83-93af-4a59-a651-1ffe0dbddbe4@intel.com>
 <dc601a7c-7bb7-4857-8991-43357b15ed5a@lunn.ch>
 <ad026426-f6a4-4581-b090-31ab65fb4782@intel.com>
 <61a89488-e79a-4175-8868-3de36af7f62d@lunn.ch>
 <206686dc-c39b-4b52-a35c-914b93fe3f36@intel.com>
 <e4224da7-0a09-41b7-b652-bf651cfea0d0@lunn.ch>
Content-Language: en-US
From: Wojciech Drewek <wojciech.drewek@intel.com>
In-Reply-To: <e4224da7-0a09-41b7-b652-bf651cfea0d0@lunn.ch>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MI0P293CA0008.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:44::13) To MW4PR11MB5776.namprd11.prod.outlook.com
 (2603:10b6:303:183::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB5776:EE_|SJ2PR11MB8469:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KoBrYyzl8116O9Y3EbdMs0mo2ba8YssSeWhTN9NpSsvfgmtUQPv7PfjuprriutN++/hgZab4PdZTDh/nEWSsmx26CPzSmmSgj8z7WygKa2WDP1uhvvoYfh1CzdXh1Rr3eeO5rPLgHrdoyMcVACmOftTESbam5jvkyODVw1YFoXicw5jA5kmokzzhlRfVQgJr1CQNsUIIpcMlW+63coXiP5xrhZaJoHxNAzqZt8HBkNNQPswIu/yFFNVqJLL/fTAfhVZdWmPwOSS/EDQ4l3+RybBZCDxl7Tny2tTq934AdXD0pI3fJKJkpKT3BNJdRvHaKMiotJBk4XPB8uL4SBeu6iEmay3a5WNZLXrc5YrgYJF1WL5pJUDT5lIMaIXdeTEmkoSIUFe2AL159YOImCPuTzWQx6mfS675C4h9VhgDBY9mKtNWR83+ybyfsr5OgabLIw7wR2C5zDLE3IjVAaa0MPaTJVyBmIZn37WkSwwsrZfCArYygv/GuKTZn81Xbvtc7EdZGVIOZPZkuWX+KXPlfWV9a/Y1IKtw0t8oN0LzBSxCe773N8YoDnbcstQL0iB/ySgw9MDJShvSErMpFVklfVinrWd9pIF5s3aASU1tUbfANLrwIA9/JVbWvEjA+N2U
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NUlVbkNaa1FxcXUzNVFHZTRSYTVuRjlKczdSSlR4N3ZXMXp4TGtRQzN0azdL?=
 =?utf-8?B?ZTRGUkZ2b0ZoRU9EckdGeXNuSDNlRjFKQkJuUkdzdFZxVFYxcjBmZTVhMTRT?=
 =?utf-8?B?VlpWV2Q1QUxHaGE2NE5wSHJCK0R6cytxcSt3eEFkUVlmemFsSUFuRHd5ckVm?=
 =?utf-8?B?eUFkdEF2ekhjVHM2N2FBdkJLTXZxZkU0aDJSZW9yVzcxa2paNW42VXRWSG1i?=
 =?utf-8?B?aEhmUVF1VjJTNEZkVVY5cmpPbGVpbUpLU0sxUFEzSjYwb1gvS0xNVFB5MmI1?=
 =?utf-8?B?UGQ2QzFjTjZhYWFTM3RHYTlac2xLY05YSDBKQVBjNzlDQzJMMkt3VjE3UXk0?=
 =?utf-8?B?T2szbFhXNkVEOWZCTGtvRVRFUVc3WlBjNUM0UHRHWUZ4UzdLTFVtRHhxYTly?=
 =?utf-8?B?L282NnRpRlRBNEdaZjdUTmw0aDhZRjBoWUxUYzMvVzdxbFNMQ1Vlblp2blN1?=
 =?utf-8?B?NzJyc1lXT2dhSUtIOU5hdU03T3laRUNFM1hCNStSazB6TWUyRGpHWXJHcGJt?=
 =?utf-8?B?eTUzV1kxSThPZVlFZTV5dWtYTWNFYkVKcXpmZHdScnFaRjdQbGlmUENsZ1Ja?=
 =?utf-8?B?UVdhNkk2UlJmZWhvc3dHOWxDY1h6Vnk5U0s5YlZETGNBcFJ3MjZ6Q3J6RnlT?=
 =?utf-8?B?a0JJVFp6cUg3bEt0cXVQOE92V1AwOEJNcUFDNm9SWGRvWDR1bWpVdkw4d21v?=
 =?utf-8?B?UUNGcXlxYmxyMXZWYVNIaWNJWjg0eEhVYU9tU1hZK0tHbnQvZmxkL2tGcVI2?=
 =?utf-8?B?VDZJcmhkN1dDN3hsYm9USU16bmZGaFVMZ2lxbGQzS0srV3gvS2t3ZWFqL0k0?=
 =?utf-8?B?dlB1NEkwTzZLN29vdmJ0T0FwUFFjUkR6NDd0MUdEaCtDeG94VktJZ21XN2JY?=
 =?utf-8?B?RzZHbVRteXVSdFpPcExuWndlUTBqSFJVWWlkMGg3YWM1VzJvSFhTRVBzaE13?=
 =?utf-8?B?WWs3d09XM0syN3ovOWNtVjlkWXJiaEpMclUySVZpSkxiR3M5ZExnLzRRazRu?=
 =?utf-8?B?RFhyMXV0S1o5MW5EcWRqbVZOYXFDZUpJZVlWK3ZTYU5WMGQ3bFBPYk1pNzZp?=
 =?utf-8?B?K2hRdjE1QXkraGE0TUNuNndUd3RKeWQvdHJhSDFIQmVGV2h0QXpndU5tT2wx?=
 =?utf-8?B?UDBwdnB2QldndFhycDRDdTdKb0lpSzB1bWp2WWNkb3V1TVZ2Q2ZrRnErUWRz?=
 =?utf-8?B?S2o1c1hweUlYdlBqTG9FRHErSXI1c2ZpS2RhLzYzS0xhRzZTbmRXSzAvTkNn?=
 =?utf-8?B?QWJHb3R0OFJkYWNTWWQ2aWJlbDVOV1BQTDRjWlZqTlJCOW0zaG9RQWNldjNh?=
 =?utf-8?B?YjVVN2lYVnF4UklYcXpEN2c0Nnd4eFE4SDVBSW5QZzA1ZWROMDhKMHdZZVJN?=
 =?utf-8?B?TEsyN2x6VjFJeWsza0pVcUl3bDNVbXk4elB0SHRUc3dVQ21GUzN6eDVMbUJo?=
 =?utf-8?B?WjZmUGloVU04a05XaHE0Q0ozL21YSElCMFpEc0R3UUluWFhtTVUxLzRaNS9k?=
 =?utf-8?B?ejRabU1ZZFdJNStrek9oUUpud2c2c0hGWTFBQTlFbWxVSGlVQkU3SVNhaGdD?=
 =?utf-8?B?TFpya3NrNGZwbGpCZmtSbEx5WDZlaXE1d2NhRWUxMVdrOEtRRkI4eElJZGZP?=
 =?utf-8?B?T1BZamxFaFRmeUdnQmxDUWpFME1iMDczVE1XKzIyMnY5UGtwaWRRUE5NOHZU?=
 =?utf-8?B?eTZFUHRGWnRLQW1uNGg5TS9mSFdiK1ZNZXF3eU1QVi8yVVh1UlBDWTZYOHVN?=
 =?utf-8?B?djdrMFVBRlJVUitjckVMWEN5ZWxubGZ6MnIyZlJBNkROVEtPZlBISkwzbjhn?=
 =?utf-8?B?UTNWeXhMVEJ4eVgvZys4Z1ZsbnlHSzNXU2Ixb3REMEh0MkdCQWFaU2x4emtG?=
 =?utf-8?B?clN2eGdVMUNrTTNqNVpPR2FDRmx0WG5jdTN3NzNNWXUzTnR1c1NBM0xwWXk4?=
 =?utf-8?B?aURnbUJwUGphNC95SmZJUyt1aUlCUFpDZmJ4d3EwcnVVeUZ4R1hlVkl6eGFF?=
 =?utf-8?B?T1BRSjNTT25hNXVFVVFralVNNml3RSt0eTBld09sbHp6SzZmL3dTZkFZcjRu?=
 =?utf-8?B?U244c0h1eUhZWFN6RGpwbjRkM3BrZUcxYVQ0ZE9SY2U4ZFA4aExjTnFTTFR1?=
 =?utf-8?B?TGVsMmtqSU1oa0VadWFFOG1QVlBCMEcwUWpBQnNNNUNOSVNMdVZKdnhYaGNC?=
 =?utf-8?B?MHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ee025e7-6858-43aa-186e-08dc588f721a
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2024 12:20:30.0418 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u/e8Gw56y0dgSuBZXIy0ka5y0qnInztnxTp2mM0doeCKX7IA0hUrtdYKVBxYt7nlkQttrIPhAmA9vboVqWgS7XiJYPYM5Tjbx6dp1OR5d+s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8469
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712665239; x=1744201239;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hW0vE201MZJsLeoqLedKSw+YFv1M/AfjWGCWMbtx1Ec=;
 b=S93/ecwhCT8FTyZ44LqJAOWl2LBKaTnjil+i/4Zpw6dMvw0T+wIunJ/T
 iP2hfgPKDcgZlmTnsou/3LVH1poX+FzAlRsJ0WUWTtI1UkPrQMHQHdNuT
 LJL9Qc7kcWEWLTrt38LyyZW0FJpC443iD35pbwAO34y08Ad/PLa30nTuo
 Blfw+rJlkFa29HH2U3Xgz26lrfDPQF/sV2M10yhiAYKw77h1J7VTLTyvc
 UemARoeE3p0e7kitIXQTHLTemtBMia0UkNXi4kBta0gqaBBXSimpUUAZq
 +OnBh4+Mt8xOwRi/U4MGFoPFtmlW/KU1Dn05LgHBjuxjSwqREmYQTpP30
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=S93/ecwh
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/3] ethtool: Max power
 support
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
Cc: pabeni@redhat.com, netdev@vger.kernel.org, edumazet@google.com,
 marcin.szycik@linux.intel.com, anthony.l.nguyen@intel.com, idosch@nvidia.com,
 kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 04.04.2024 15:53, Andrew Lunn wrote:
> On Thu, Apr 04, 2024 at 02:45:43PM +0200, Wojciech Drewek wrote:
>>
>>
>> On 03.04.2024 15:49, Andrew Lunn wrote:
>>>>> $ ethtool --set-module enp1s0f0np0 power-max-set 4000
>>>>>
>>>>> actually talk to the SFP module and tell it the maximum power it can
>>>>> consume. So in this case, it is not the cage, but the module?
>>>>
>>>> It does not work that way in ice example.
>>>>>
>>>>> Or is it talking to some entity which is managing the overall power
>>>>> consumption of a number of cages, and asking it to allocate a maximum
>>>>> of 4W to this cage. It might return an error message saying there is
>>>>> no power budget left?
>>>>
>>>> That's right, we talk to firmware to set those restrictions.
>>>> In the ice implementation, the driver is responsible for checking if the
>>>> overall board budget is not exceeded.
>>>
>>> So i can get the board to agree that the cage can supply 3W to the
>>> module, but how do i then tell the module this?
>>
>> I'd assume it is not possible, if the module consumes more power
>> than maximum than the link will not come up and error will be printed.
> 
> Take a look at the Linux SFP driver. In sfp_probe() is reads the DT
> property maximum-power-milliwatt:
> 
> https://elixir.bootlin.com/linux/latest/source/drivers/net/phy/sfp.c#L3030
> 
> When the module is inserted and probed, the modules power capabilities
> are read from the EEPROM:
> 
> https://elixir.bootlin.com/linux/latest/source/drivers/net/phy/sfp.c#L2320
> 
> https://elixir.bootlin.com/linux/latest/source/drivers/net/phy/sfp.c#L1929
> 
> The code looks to see what conformance level the module has, so to
> know if it even supports different power levels, and the registers
> needed have been implemented.
> 
> Later, the SFP state machine will transition the module to higher
> power:
> https://elixir.bootlin.com/linux/latest/source/drivers/net/phy/sfp.c#L1995
> 
> by writing a register in the SFP.
> 
>>> I would also suggest you don't focus too much on ICE. I find it better
>>> to think about an abstract system. A board with a power supply to a
>>> number of SFP cages, and some cages have modules in them. What does
>>> the kAPI look like, the use cases for this abstract system.
>>
>> My design for this API is to have an option to get and set maximum
>> power that the module in the cage can consume. It's not about modifying
>> module's power consumption, it's about setting restrictions for it.
>>
>> The use case is to let the user change maximum power in the given cage
>> (so he can plug in the module with higher power consumption). Before that
>> he will lower maximum power in different cage. Thanks to that the overall
>> budget for the board won't be exceeded. Does it make sense for the abstract
>> system you described?
> 
> So there are a few different phases here. The standard says the module
> start up in low power mode.
> 
> Something needs to enumerate what the module actually supports in
> terms of different power modes.

So, this is something that would require new netlink attribute.
From what you described, SFP driver is capable of reading module's
power capabilities so it could be implemented there.

> 
> Something then needs to determine if the board/cage can support higher
> power operation, that there is sufficient power budged. Budget then
> needs to be allocated to the cage.

This is something my current design supports I think. Using
ETHTOOL_A_MODULE_MAX_POWER_SET user can get what cage supports
and change it.

> 
> Lastly, the module needs to be told it can go to a higher power level.

This could be done using ethtool_module_power_mode_policy I think.

> 
> I would say the current Linux SFP code is overly simple, by design. It
> supports the concept of cage supplied by a dedicated regulator. There
> is no sharing of power across a number of cages. Hence it just ups the
> power if the board indicates the power is available and the module
> support a higher power level.
> 
> However, you have a more complex setup, shared power supplies,
> etc. The policy of what modules gets how much power should come from
> user space. So we need user space APIs for this, and a clear
> understanding of how they work. Please could you describe how i would
> use ethtool to go through these phases. And how do i down grade a
> modules power consumption to make more power available to another
> module.

I described how I see it for each phase above. 
Downgrading module's power consumption is not possible with my initial
design. You can downgrade max power for the cage and if the module
plugged in to it consumes more power than error will be printed and
link will not be established.
In the end it looks like we would need new netlink attribute to support
modification of module's power consumption.

> 
> 	Andrew
> 
> 
