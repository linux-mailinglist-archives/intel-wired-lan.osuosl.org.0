Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC8B5890C9A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Mar 2024 22:40:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9610D41809;
	Thu, 28 Mar 2024 21:40:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 90tu4sNJvGXb; Thu, 28 Mar 2024 21:40:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AF59F4180A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711662023;
	bh=WpBWM0c6+0m5J+2GMV6JS/Ah3LW7pYd1bVahBzXEHdg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FStv+BdQeXRSVaAZscFAv613ykScJUUpqIJeJ6LRu9wRhTQQu6zy84i9GzA0NPpHs
	 HJAfDzun3JrWcuojAFJy2ecsX7B2gwOI/08ydIpr37ziWYI00/dPUTnly6jDry47wf
	 gSEBGYLzBt6eJ2zmKxx1afOrAh9rHrWJ0rFYE3E33TdWOVKfFfZMBcpmbycY9Lpqgb
	 lDomZ0vNjyXAwNoEHX7RJaYnqbr5Nc/qDuB4gPfaDBinOfwJMhciajp0Ci6R2vHSa0
	 RlkDfW3w/ylQZV33myBwBToWPvcjYR9dmtUl0nE1zJl4mTkZ0SpikGnrTG7APynDix
	 +MFtO0s7ivuLg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AF59F4180A;
	Thu, 28 Mar 2024 21:40:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1B0341BF38A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 21:40:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0706D827BA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 21:40:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SivKUvv1SyYb for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Mar 2024 21:40:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org ECF2D827A1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ECF2D827A1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ECF2D827A1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 21:40:17 +0000 (UTC)
X-CSE-ConnectionGUID: lCVVAC3sTba/APxk+1g5NQ==
X-CSE-MsgGUID: 4byAVE+rQQaH0pdmJovSwQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="10631978"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="10631978"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 14:40:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="47747831"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2024 14:40:17 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 14:40:16 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 28 Mar 2024 14:40:16 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 28 Mar 2024 14:40:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Uvnv3iuKAMBEiu6rLyPGuRcGm2HflvqPvvc1RbZ1fXPx7p13S4YL+Ur2WMEodMGvYvsmex7TL+Ldt5IqBmHnas2ZCj22Dno9LQYbTSHf46UHxty+UcznoSIKw/cguy4WAek8ouKTLrsJbQ1/vyFNUDJfg1i84lXRoGF7Y8aR+o91nOL86ZgNBezbWmvhEYnqyiO1kcfdN1InyGQ2/+n85nJqKSdIsDcUt2ESmAIKhEU8HXU2qh1ksuDnC5RRC2qksBwW7XhGLBuE4YEPC0EWEdCwrpnX3jzRuvbYqk0Zd+9WX/SYWXndf3Waw2z8Icxc+rkx8a2a8uaupRViycqHrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WpBWM0c6+0m5J+2GMV6JS/Ah3LW7pYd1bVahBzXEHdg=;
 b=BR9k7BtVIyGY4mtDCbY3Vh8nfHqKU/NAuDRidSke63CV0uuZN1i1toQmF2a0I/k6qVOqaLujt0O4MCA0DwOGSzY6VVvSStQ73UNHvUAEpm518C8fBGKYUpoM4er7m6N/drt41+9ZSqy517o4XGGqppqKap404jMyTfC2fVPhNlupKzRiXAtR49TQuWPyWD/nBWQ7dRa3XePP8Rq/cGcfKoCzHIzkuxtogp1KY4QJ32I5GbFtuH37RWGa4vsURqmfi4D2ER12W0rBmjG9MFYSSUCBQk26G3ClCwf9NNAM82sc2ACCTpELO3D/qVpIxuwCz1G1I1EeGD6y5S+1qHv7+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB6449.namprd11.prod.outlook.com (2603:10b6:510:1f7::17)
 by LV3PR11MB8481.namprd11.prod.outlook.com (2603:10b6:408:1b7::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.32; Thu, 28 Mar
 2024 21:40:14 +0000
Received: from PH7PR11MB6449.namprd11.prod.outlook.com
 ([fe80::c8f:b939:aa0f:717d]) by PH7PR11MB6449.namprd11.prod.outlook.com
 ([fe80::c8f:b939:aa0f:717d%7]) with mapi id 15.20.7409.031; Thu, 28 Mar 2024
 21:40:14 +0000
Message-ID: <dc8d9997-c1cd-1270-0d16-81e7532eaf80@intel.com>
Date: Thu, 28 Mar 2024 14:40:11 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240326143042.9240-1-mateusz.polchlopek@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20240326143042.9240-1-mateusz.polchlopek@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0163.namprd04.prod.outlook.com
 (2603:10b6:303:85::18) To PH7PR11MB6449.namprd11.prod.outlook.com
 (2603:10b6:510:1f7::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6449:EE_|LV3PR11MB8481:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: X8GK6rjEP3LPFhxs5IaVf24ZT5dNNEO9BNIXFG7fQ8yxTAQCZjyGoLDdi8ZC8KRR4dpS/IN3AAlocpkDIEY1R9wxLWYVdSKaiOo1LMx35H6rXYbsopA7TZE/QEtXiGvYke2dt1XpKXa3B+0EV7+W62TZOmwcBt0CQgEbcvnqJT7N0SVqJFvO3li0MUpyVFrCOFi98IEdqBNcxONWAvDULOdVUfhGizji37tPaJ3fz42Lndi1MC1R3OBXLJmpEy2ax1L59yt2zu84oUGZw8KBlvcxnikbVmF/XmM/9P/gTUAup6+3sr8u3tgtx8SXTUB8hRErAt3pA/VC+MQ4hwhzoxrbajUpYbPSQlHXfKd3mw2TKFQCexFZ02vIYRh99hofX2PG+jivOTZ8QVfmcgCeYkjTf599yHgWDUxcCVK1IY+hLvRaxVxABCjjZpCriS8jueoWtJom+Qp9nU9YuEECDAyagZMyZo+wFf+NrMjSWs01nrYzNZcEw6vqAJ1EwieW7IJ1ftBUd0hHCNVK0Lgq+DjckzyepbEcotCgPnB6pbwISUByNJUau8zyHBem1pHbqilurCPLJJNU0NhSHY6gMXXsZLbkVXKjncPNfcFS7u8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6449.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UWc4amE5Mnk0dCtCTjFFN0NldjlzMUZvbFlJbllod0xlVHFvYi8wVm9qd1Jj?=
 =?utf-8?B?enJVcFFKWCs3TDFueUhlaUs5UEJFVEtYUGZiWXBjKytnTzZvWWpSSjVaS3Vq?=
 =?utf-8?B?V3BCZnkyU214TEdyb0N2WXNSdVZKekpNU3U3S25WTmdXdkZKNlpldEJ5bGt3?=
 =?utf-8?B?bkU0dGtRWlJVdWF0TFhTSnQ1MTdNUm10eFRXY0FVQnBZWTRua09qbEhma2dH?=
 =?utf-8?B?N3d0R1NIS096eVhCZ3VBa0VYNEpsRmNKS2t5UmVaYnlPYnlWRjRRWC9YZUZG?=
 =?utf-8?B?Vll4Qmd5cHAyQzY0VGFDcnYyUnNlQ09ZUW5BTUt2dVNMbWNQczdZdHlLcys1?=
 =?utf-8?B?dFQ1R2loL2tWdEhPamN2dGIzcTBXeVBlTE1Tckg3VUVrN3QxRnp2N2xCTnVT?=
 =?utf-8?B?VkEvejFlU3dDK1QwcW9hWjhveUN0N0huOW9ZMzlYUGZGQlVmNGl0MDN2TGhC?=
 =?utf-8?B?V0xOODBXNHpWcHdkS2hJSXhhUER4R1pHUDZQS0JqUVVpcnMvK3NpS1ZjMmZO?=
 =?utf-8?B?RFZKMmNUejNmckJPWDJPMExGcGdGd2x5QkkrbVREd3JpL1FkdFEzMkxMWllh?=
 =?utf-8?B?cTJrRXN5UHZPSnFOU0Q5NnpIa2RHNENVYm1jS2E0cHF2ZDlMTzZsaG5xdTdD?=
 =?utf-8?B?MmxOREFJRklHZXU0dFMxRDVvMUJYalZQaUVMdGttdkdMT2p2dEtiSW01YXFR?=
 =?utf-8?B?N2Jtc0RSMzF3bk9CL0drSG5KeVVya1VySlBKcnJBTERVeDFpOXFZdFlnOFZz?=
 =?utf-8?B?YTBvMzNxbEdWOHNmUU0yYWxPZkZVZWIxRUJJYjFUVXRuQWxmTHlRVmI4d3Bv?=
 =?utf-8?B?eUpoRVFkNHczVko0Zm1SQXpJbHVGYWptTlVTaTQ4V1g4bmlVS296ZkpXM1l4?=
 =?utf-8?B?WDRkWmlMVUZRcFcvOEVGSFNHWE1QZDhsNVZwYkR5a29jNzQraU1OalR5TXZH?=
 =?utf-8?B?QWFEVDIrZHFHU3I4d2VyUWdMSTNvdUNhdXpyUWF5akdsN3BhalR6M0dDQVgv?=
 =?utf-8?B?ZVp3K1RWVEZtcWM0OG5mUGtmWTJiSW94QVpidGh6Q0lvWkd2aytGK2NnL2t0?=
 =?utf-8?B?QmRzYzJ5WUpOVEJDZ0E2dEdqZUQ0Tzc1WTQzd0tmdXkvMnBxL1ZKMG5IR2dE?=
 =?utf-8?B?VWVYY1FLSXBzdEVKeUlnRm9LQVl4ME43UWYzVDlTZ1U3VHJqb1FZdFBUTUZI?=
 =?utf-8?B?aW9EWEhLcGs4SFpQVDFHVUYzcGU1ZXJ3b2wrT3VjTmFUdXR4MzZXT0liai9k?=
 =?utf-8?B?T0pHck1CMXdjRVdLc2dFZXVWc3dOYy95SkZ2dHFFUEJnZ1hUR2JRZFNwRTA1?=
 =?utf-8?B?OGlHczZTNWpjMEh1S3U4VVpESzBZOGliSkU2WjcwbXB0QnNibHZFWjdpZ3c1?=
 =?utf-8?B?TVNjNFgxbFpKVEpkdE00QmxDbXovbWc1ZnVrdVJDczlBRzJJNmxUa2JLU082?=
 =?utf-8?B?ZWJmOGNvNW5TUTR4M0NONWxPeWtOM3hnUGZLMERPNk16YVRweUE0RGxjYUdV?=
 =?utf-8?B?UVlDZmIrdTcxMUs0MG1qTEtNS1pnb0F2NDE0YWhJWTBsbUU4L1NHUlFoNVBo?=
 =?utf-8?B?KzM0NVdtTVFwYjR4cFluTWRkMkNteDdWR21EcWF2WWZvSFZsWjVjeFBUUDl0?=
 =?utf-8?B?U0JlRUJ6dXowWjRDVTUzS09pM0RhQm12MjRHWDFMK3FCckRyeFlUODNkb2dn?=
 =?utf-8?B?Q1BCMFlmb21RSkxNVjR4WmtBdnArU0I4YW1TZlE3QWVJcWlDcVRKRXY1WkRM?=
 =?utf-8?B?ZGJ5cUtqY3FoQW5ZZjBRUlpjS3dKQzlhZWpBOEtWekd4SUtMRUovQS9YdGdn?=
 =?utf-8?B?ME92WTJib2oydGdVWVVwYzhMOTdTeC84K0FqVmhnT2NqQkZCVFFmUDBYSXA0?=
 =?utf-8?B?OTdzK2ZPQVFyZXZnZS9rOXkySGZPRTlSWEVCUEpzYlpmK0Z1QXd2OGZUc3RI?=
 =?utf-8?B?ZzJOSHVEOXNObzdlNnZyR3pIM1VOS3Rva0wrOU1Rd3E2R1Izc1NCUkNjUjds?=
 =?utf-8?B?cWxpQXZYNytrNUVsdUFrRnJQS3YzNWdDdTNqdjFVU1N4bnNGRDBicWdxcWxN?=
 =?utf-8?B?S1ZPZGNpQU1ISjQvYzZvQ0R0b3hnYk41ZEtBbkFzcS8vRjR3aUxtbm1tc3p2?=
 =?utf-8?B?M0htb0ZiMHB6aEtCb3ZkQmRsdm02Qkd6azNIZHczWFU0akF6dGx5Vmc5Rnl2?=
 =?utf-8?B?U1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b28bea31-e5b3-4140-47fd-08dc4f6fa706
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6449.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2024 21:40:14.3328 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: esZ64yjOalNuOSESfns/oVnqbnGIAVnayYjed68y1TixIVoc49Cr2JOVkH4hxW129E9wCffOnRhFgfcmbpxKixyQS00Rjee4UfLVMXeMZZI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8481
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711662018; x=1743198018;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WpBWM0c6+0m5J+2GMV6JS/Ah3LW7pYd1bVahBzXEHdg=;
 b=DudOXb1jrvlgujDqvvFk6eYbKwnBcfbra6Wxeoqvyd1gW7XQBTKOc9BZ
 dJoCnHYqnn5R9G/wMXsND5hwAgppD3xj8xwRVdA3xwoIFjw/d9/NMwSbt
 mc/+DPqhZIWrYMXGA4BT3hKACJMg9Yn2RES+2hq0ZuRobVVquiHDNQP1p
 18+5GcaRjcSBLsfhdDraNXqVyC+wVX/C4PCoP64Svy+LqQrXDxBqayRNo
 u2iuw6OJ/aAAF9i6TQH/D+yxZNAVCB7dit8H9QdDQ9Uyi0OrX19q8CEaW
 YWtos9nsz5LqZZcLNrxQOFNKdKO02kj9MRNWcsvrMWSRDRAoYE+22m+QB
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DudOXb1j
Subject: Re: [Intel-wired-lan] [PATCH net-next v8 0/6] ice: Support 5 layer
 Tx scheduler topology
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
Cc: andrew@lunn.ch, jiri@resnulli.us, michal.wilczynski@intel.com,
 netdev@vger.kernel.org, lukasz.czapnik@intel.com, victor.raj@intel.com,
 horms@kernel.org, przemyslaw.kitszel@intel.com, kuba@kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 3/26/2024 7:30 AM, Mateusz Polchlopek wrote:
> For performance reasons there is a need to have support for selectable
> Tx scheduler topology. Currently firmware supports only the default
> 9-layer and 5-layer topology. This patch series enables switch from
> default to 5-layer topology, if user decides to opt-in.

This no longer applies after Michal S' series was applied
https://lore.kernel.org/intel-wired-lan/20240325213433.829161-1-michal.swiatkowski@linux.intel.com/

Can you please rebase and resend?

Thanks,
Tony
