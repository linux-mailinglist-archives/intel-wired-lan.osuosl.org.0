Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 746C7543FE0
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jun 2022 01:31:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F333C833DB;
	Wed,  8 Jun 2022 23:31:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 89niU8qBa2k5; Wed,  8 Jun 2022 23:31:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0EC49833A3;
	Wed,  8 Jun 2022 23:31:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3B4F01BF318
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 23:31:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2FF84833A3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 23:31:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IzckJ-hZfsEt for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jun 2022 23:31:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0708483396
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 23:31:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654731080; x=1686267080;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=VGG502a2p6vSNzMAn3zVkq5HpzmVnd8I/5+qEtNLgv4=;
 b=OAnkxnNYbju1cKpz8p98aZhuiUBNRz7MsW13U4x63VSctimsrFGcN5rr
 klzWFwKpXIeX/BN1tVu0u/2FGWQaq+yHH2UHVq5aGIU2HUmyxof+4RkJa
 4VxS70oXz7q5lKEo/Dd18nBjGATPY2rRHcohcxLRMTa+GS/cPW5f1i8mD
 T1U7NGBdgR7aA4Y/2FBGgMcpXJu2jSIRGq+9RHEzfNhDmYhOsonxdjXAv
 zKkqHwImijug/AaJ2UKu1/gg0X74Ds4slEAmkjhyvNh566DL/GnxpwEPh
 Qz66ZbP1FgIGLFVvjCUGa2xXDXiFR4cXcTxwCLzLcg4+RurfR0Ly2X/5k w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10372"; a="341176234"
X-IronPort-AV: E=Sophos;i="5.91,287,1647327600"; d="scan'208";a="341176234"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2022 16:31:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,287,1647327600"; d="scan'208";a="648903395"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP; 08 Jun 2022 16:31:18 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 8 Jun 2022 16:31:18 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 8 Jun 2022 16:31:17 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 8 Jun 2022 16:31:17 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 8 Jun 2022 16:31:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D4IP950O///8bqN5s6elezF/4CmnhBlGVPNvJ3by0d7527RJn/LU15o3sk9ehD7aXGqJrhTaUf0ymzBNByQARi/l6rXaUhvQzXVRam1M57uooc1zlh/yZx5LZC4IB43LlZrQAzbCI+2s+XR7szLExq/CiuwEcIL/75NB54CwnsBfWTGmRC730BfFMNiq8YsC5m+fWbCxB3/yPgoEuk6qldlgaZTc17ar6e7lUTEONS8xSXtdKpzvUFbplWyJ6OlikdxF7KTtsL14Zwdf8tAZKqDu9a98EvPUAdj9NxB/pT1LEtwj64UcrfOiBtqopI5QjfOo2Ge+8ALTgyCfat/nnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7q3/hwhDeLMxF9QMMIk0U7aje7FTMq1uJLvh8Pu5/Fk=;
 b=lz60Ohdo9XUTVQCNQoGb31Ac9qCIxVsq+2S2rCsBr22xL+RFkjjM1qIM900L+Vv+zWtJAX1xaWAqrKSr0OYFjuGixc2dha1sJvA4q6ciEmsch7r8ODSNmsSX6zV1K4s5PgE1pW3eOanp80puSZAqRBgNORGFogSbnV/G3a/jev5a0MEZuF3eoFvUSrZreMfu8IRtZYxWO0FlrPrJQIij70rNUdpL1EvxxQuIRSY5nZEh+28IXJqt2H1H81jA48mT+sZtc/h03xncFFPa38Tb0bvn3Qbl8BBYDTLawK3o4lzdb13T3nj6VmwGRIksFJY9XABBmHUhWjx3tTNm4U2hnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by MWHPR11MB1903.namprd11.prod.outlook.com (2603:10b6:300:10e::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5314.18; Wed, 8 Jun
 2022 23:31:16 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3%6]) with mapi id 15.20.5314.019; Wed, 8 Jun 2022
 23:31:15 +0000
Message-ID: <63b60a2a-a374-7e4f-2eaf-6bed67703f67@intel.com>
Date: Wed, 8 Jun 2022 16:31:01 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220608095337.2986633-1-jedrzej.jagielski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220608095337.2986633-1-jedrzej.jagielski@intel.com>
X-ClientProxiedBy: MWHPR13CA0041.namprd13.prod.outlook.com
 (2603:10b6:300:95::27) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d236a856-3a95-446a-98a1-08da49a6fa9a
X-MS-TrafficTypeDiagnostic: MWHPR11MB1903:EE_
X-Microsoft-Antispam-PRVS: <MWHPR11MB19034BA361135A21215355DEC6A49@MWHPR11MB1903.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5unWX49AP1m5QzTY21ApWeKLib0S3bqFMgolISYA8nPLJKe4e90B/dKBcXqH20437o4EwHookVuCS6DLpL/0mbd4yAoHrpTdsAGP0hLliqZOFM85RoL08+T9y5LH+/gyEhT70KWFjPi/fWbJIh4poou5qcThZa3NNZTp09iYSYIKfOS0c4PecBBMLSkF9OER6L4TvsD92oK43ObYPckBNE2J1HMyw49U3o+2C84aBfgtWmWZx28RPp6hYRNalf3j8BBVxa4pAic69KNB5bOb8pgJaLBlMQLaeTcjIzortoAF697pDQ60SoDABkGb5rOwc8bgq9zuX1KUspylZYt571YbRcsagt4xSsO1olEmmelJcXAiNlzrekg3rSPoORgJPESmaPm+N8CUJr/g2GDQTTp6aaM6jzhOUHS37KTctYJ7z6seG/+6Cbf2h9739I/5ijkkjrioFTISuuVhkKaNq7jF5CumHzjbiQt8Y7R3LojVCOaBwuWhanv3K8EliZys6DMPLiRs6P+inmpc8HnY512KL/ICQK1IYlhjAp60ROaRvj0r3hc/1HFcR+f/wRgqVCj+h126znTzciTiBBr7JC0xJ6TQGyaFpnGt0E4m/RTf6qF/kOxMa9yY1SEWsDq1OKReZbqPCcuq54leZ9a7Vu47vSjm2RAUYa1vBuZFclFKSickV2D4TVs7b77f1wKBd1ZgGZG29QgrU9qpoolu/yLKdFrzkKfO6/SUH6rVowY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6486002)(38100700002)(508600001)(82960400001)(8936002)(5660300002)(53546011)(86362001)(6666004)(31686004)(4744005)(31696002)(66476007)(66556008)(66946007)(2906002)(186003)(26005)(316002)(36756003)(8676002)(6512007)(2616005)(6506007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?enFpZGdNaktZMThqMTdOTDh2RHVWam5iYm56Zjk2UjBValIxUVFWNzJJK043?=
 =?utf-8?B?bkdjQk12Q3gxK0xvTkVaZHQrNVhxQnlad1lUanY2TnVGOUo0ejBCSzduc283?=
 =?utf-8?B?QnVLdSs0Tk9USG52eTgrZjQvbDc5OFdGQ2JOeWhHKzkxbTlsWitvdFoxTmlv?=
 =?utf-8?B?dSs2NUJDKytVbStoMWFsSGs2VkhtMTNDQklDS1o3VFgrMDVNMCtwZ29qb2Vl?=
 =?utf-8?B?T05PSENqWVg0UTVOZFcxSEM4RWsrc1V3SVNhRGhQeGJKU3lRbGJXVlRVS3ly?=
 =?utf-8?B?TE9KSytJajVIc3NkSzZNdEh1ZHIvK0RIcE8yTGpFWG5mTGp2VG9TMTRiYVFj?=
 =?utf-8?B?ZXROc3djM3lsQzZGc3NaN2pqTHFWejNWc0hPVFdIc2NqLzk1MWszdEdyV0xS?=
 =?utf-8?B?dVhZbXhDTXJOYkFpZk9MNUJDSkxEL1k3azVZQktYbWlHY0E5aTJlZ2dodlJ0?=
 =?utf-8?B?WHgxSGx4MDdncU05YitmMkpyU2N1MUpCdEJ6VTlhZUMwMUFTYlhRMVNLNUNX?=
 =?utf-8?B?Vml1Nm1vbDRjYUNKSXFsS0VCUktYbWoxRElmYk5xNm1NemU2cnY4SWphZnl6?=
 =?utf-8?B?SUttbTlzdEYvaXhaUm5Cc1hQVVRGSmR0UUxnSW9OUWRQWEVYOXlHMlcyOTlk?=
 =?utf-8?B?RUVDVUNLc3E5c0FMZHRBVFF5ZUVmalNjeXJ2UGFYVDhvRENiZWttTkFVeGJn?=
 =?utf-8?B?RllLREYveng5Uk5iY0VTZ0FWWkNSaythSXBoTTRQbm9tUytVYkEwR1lWVEx1?=
 =?utf-8?B?czMyeHp5OE00UW5IMCtwbWZ2K1NMdDV0RUNLdngxRFdaUG9lWThXVkNsSm5B?=
 =?utf-8?B?SWg5YTV0cFhlbFJQdWo4dFA0ZnRKSVlvdnV3a3NiMTczbURBRnIzdzZSanl4?=
 =?utf-8?B?RWxwaEtZVzRnSWYxQTRvLzRRVFAwaHNPcDByNUhERGYzVXdYai9YYWRCNUpa?=
 =?utf-8?B?aGZCTGtSSW9sOXBhamtGcUxNanlQN0NZMnFkblJlQnVqSmJrK3dQaSt3R2Yy?=
 =?utf-8?B?WWZNRHF1NVBQa2VFN3k3d0FmaEFRUlFrdUFFUlJIVEtzVzZKRTNIUGE4L2hL?=
 =?utf-8?B?d1lNVVFTelpibTJ6TUxZdE1oK1J5Y1RCN3NzRUhWakJYTkNFcWp2Y3lVd3c4?=
 =?utf-8?B?UVdneHpYQ3UzM2Z0aEpNb2pqVG0rYVRJSnJiTWVOdWh1NEJBejc5bUhURU5p?=
 =?utf-8?B?RzZMTmdmNGFDMVRXTzBQdVZNVC9FWlpDRmhEZEZ0d3hGNVBFMFFuWmdJSUdT?=
 =?utf-8?B?MisydmQwZzYxYkU4ZDRJaFNtL0w3MGlDclR2bnBWQll2YUZhZGZMV2d3MFpi?=
 =?utf-8?B?c0dOVUM4azRQdTh3a1Bla3JTODRVQWFwZUJ5MGxDOTZGWnlUQUVDRDczNnM0?=
 =?utf-8?B?M0hjcFdEeDlIWTJ1MmhkSDlodkFINjBTWit4b3pLV3BWaGVwNG8zK1dLQXRv?=
 =?utf-8?B?cVBhMzdLYURKZU50dXdGZmtNdWQzUGdsWE9jUEd1QkJOb1NjOVI2U2hTTDFK?=
 =?utf-8?B?WnR2Q2cvL1BtRy96OUEyNUtMeHB1VjdkZC84WW94VU1iWEdFODB4SEcyRVJC?=
 =?utf-8?B?dUUyS090V2VrZThlRlRjMUphZ05SQ1NPQ1JDWlJLUFpUZm0zMS9rdkY3MnhU?=
 =?utf-8?B?ZXVZZ290QU9GM3k3QUF0a2xzSDlxMjA1dHpudlhkUXRkUzBCdy9ZSzJDRUFH?=
 =?utf-8?B?WGVkbXUwbG1QTFVhY0lUbEE2ODdOVXBHNUFKV2xQcEVNWUhReUp1MkozWnFp?=
 =?utf-8?B?S1BzdW9Wb21vWmc0aHR6RlBqV3IzWTRYZnFpUTQzeUFqMUxyWkZTR2N3QURK?=
 =?utf-8?B?R1JKMmo0N3JwOTUvYjBEZ2FzS2p2Z0dPWklFRUtaVmJ4bEpJS1N4QW94U2wy?=
 =?utf-8?B?dE4vWTdiZHVyQ3RqRlEvZ2RHdGZEWEU4YnZaWlphbVRFT0xGOUJTNTdNWUk5?=
 =?utf-8?B?R0dhRUpaTUo4UmgySmFSQVd3V0gxY0FYM3JqbUtyQkt1TWZ4cGtYSzhKVmI0?=
 =?utf-8?B?aGd6Q1FUMmw1Yk4vRDRtK0JESWxoRW9FRFE0cm02WXFnMCsyY3pLcis4MEZy?=
 =?utf-8?B?RkJWQkRxMVJ0MndvMHF3ZG9LNVJnN0NuNjNnMlprM3ZSdnRNbXh4WU8yVFVE?=
 =?utf-8?B?d3FudFZKUFRtQTNYa2VTQTJaY01jaU1tSU5DOVc2d2EvMWtTNEsrRFRXZ2pG?=
 =?utf-8?B?Z2NXWkFkdm1wWGt5ck1GSHpQallEUGtIMUplTExMYkxzdXBobklPTHBjVlJh?=
 =?utf-8?B?Nlp0VmZFcnRXWjlXbmpoYUQrQnBzdVNUemxjMUI4M0tZMUI1djN1MGsvMjNK?=
 =?utf-8?B?MkxHdlh4SlVIcFdBbHkyR2QzUXlzUVFlWm5hbHhWbHoydFVPbDMrUHB3WHdD?=
 =?utf-8?Q?K/EoPYnsgTk7UCZ0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d236a856-3a95-446a-98a1-08da49a6fa9a
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2022 23:31:15.8711 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BqiKdBk6eqdBk3AkYeB40/K2PYrmlaXSdwuZJWCf1PUUc5C8p8hLwXoUDej8uBR/8GUqGxqioIVyD5pxSXr+cvFaxmw9R2gmmZfmfKWw7WA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1903
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v3] iavf: Do not modify queue
 number when removing iavf driver
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 6/8/2022 2:53 AM, Jedrzej Jagielski wrote:
> From: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
> 
> If VF has configured tc qdisc with number of queues less than original
> set and then the driver went in removing process, tc resources are also
> releasing. Attempt of modify real num tx/rx in this state is causing
> call trace, because kernel is trying to release uninitialized queues
> 
> Fix it by not modifying the number of queues when removing a driver

<snip>

> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -3471,6 +3471,9 @@ static int __iavf_setup_tc(struct net_device *netdev, void *type_data)
>   		}
>   	}
>   exit:
> +	if (test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section))
> +		return 0;
> +
>   	return ret;

How is this not modifying the number of queues? From what I can tell, 
this returning success if we are in remove.

>   }
>   
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
