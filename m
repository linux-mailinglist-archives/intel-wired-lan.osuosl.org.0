Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9654CD1663D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jan 2026 04:05:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A6959412B2;
	Tue, 13 Jan 2026 03:05:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wuJ5MgO38PVD; Tue, 13 Jan 2026 03:05:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E0FA0412B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768273522;
	bh=9c8O9eOCKm6tsRPoZZ6AR/PQCoInzWm5adk619YSfLQ=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xTKnKLciJtc/vGPcqLbYNlzC5BIFgemmpDUiaR2tv71qyAOH51qAouovwp492vWtP
	 b3tRqUxQ9fzih1gMdb8ygo+i7Fu3hKGsQrMq+AdSPX+AkYOwY9Knw7ctNs9k0PQjtL
	 hP0B5L86Jou92bTfnqYWZuPW332Q0nXpk0b+yM5gGLHzceAWbOP5XSE6SI0Dhg6lK2
	 fIneQRGHMev9MqRjt9mju6ibfF+N3zYIfj5Lyd03bFgB0nI90F65p5nWGYhtxNWvVG
	 TsKHxKqqgM5bsLLI8jgMr+44kHMML1R2sG5yw3cMsBPFvmYdEgsX8V4u8tZ0hxS/do
	 6Ctt462rq1djA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E0FA0412B3;
	Tue, 13 Jan 2026 03:05:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7CADF18D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 03:05:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 582EA84069
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 03:05:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sd1nWWQcknmG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jan 2026 03:05:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3EF8E814C0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3EF8E814C0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3EF8E814C0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 03:05:19 +0000 (UTC)
X-CSE-ConnectionGUID: 9+YPUftASreoO6to3jOB8Q==
X-CSE-MsgGUID: BFFJhJR+RQGJHujIJZh3mw==
X-IronPort-AV: E=McAfee;i="6800,10657,11669"; a="69631990"
X-IronPort-AV: E=Sophos;i="6.21,222,1763452800"; d="scan'208";a="69631990"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2026 19:05:18 -0800
X-CSE-ConnectionGUID: ymA+u4l0Sz2ZboHSJWYK3A==
X-CSE-MsgGUID: jygWflqDS7SN9fzD6P0ZMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,222,1763452800"; d="scan'208";a="204352603"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2026 19:05:19 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 12 Jan 2026 19:05:17 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 12 Jan 2026 19:05:17 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.19) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 12 Jan 2026 19:05:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AZPyptY2cgLcJv6bGxTUORjLfmmDgXqV/609YsOCEQcyT5CfG8KHx76riF4OZNDq5qk23DBKlsvPdVJ0Up20muy6eH2Odd5TQYs0732vsIslvqx6gmpgr5BGGSo+5Je8bUJGl+xQPm3Tn+/k+UOlcdRPZGWWk+Q6LGju/wNHUmOQx/MiYBP6arCNCTta52Gn4ocrEqDVcAnDlNTuSyHWsIwsc/1N3dYHWOXTUYM3INUY1BesD5YC1Hp0E3WCirQsVnDs7n/5MCc6R/5wSYjtIOUJH9CQH9Q4wr5nF6odavPEfZ1FrS/9OWlDaUznOmxAcYe75OePPu+O1bz1ziaI3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9c8O9eOCKm6tsRPoZZ6AR/PQCoInzWm5adk619YSfLQ=;
 b=F27iYgwxd14/hXAM65kc18Dl0PpooKgpQIdUsVb5MUk+DtTHaagJWG7AAeUwzrIoHImqMP7moLzsyJKJJiwUJj7VnrL+dgV1vBj4fcA86aVY5Io27hdpFnU9tYOqGgeFlo1zsSCzErZTsl55AU8NrEHrY/vQ0v8suV+NTR/YCmUoAaf5QghYjtDS4rJ63nAbnhcxHqRIaiR06EIqo8QjEVVylvJhoEcakP53S7jnf7SuZ9b1FhTYfGC/RPOcjwN+qpPQOCoe581y/t1pJHiV9s8I6unRLRG2oZHZU3MSvS+E6Rd/9LEmDAi5N7JYH8VzyS6tuOxniSMg3cty4RsmOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9013.namprd11.prod.outlook.com (2603:10b6:208:57c::9)
 by DM4PR11MB6263.namprd11.prod.outlook.com (2603:10b6:8:a6::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Tue, 13 Jan
 2026 03:05:15 +0000
Received: from IA3PR11MB9013.namprd11.prod.outlook.com
 ([fe80::112f:20be:82b3:8563]) by IA3PR11MB9013.namprd11.prod.outlook.com
 ([fe80::112f:20be:82b3:8563%5]) with mapi id 15.20.9456.013; Tue, 13 Jan 2026
 03:05:15 +0000
Message-ID: <1e905400-da08-47e8-af6e-91c24e3166e4@intel.com>
Date: Tue, 13 Jan 2026 05:05:13 +0200
User-Agent: Mozilla Thunderbird
To: "Wenger Jeremie (EDU)" <jeremie.wenger@edu.ge.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
CC: "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>,
 "przemyslaw.kitszel@intel.com" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <c8bd43a3053047dba7999102920d37c9@edu.ge.ch>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <c8bd43a3053047dba7999102920d37c9@edu.ge.ch>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TLZP290CA0002.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:9::8)
 To IA3PR11MB9013.namprd11.prod.outlook.com
 (2603:10b6:208:57c::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9013:EE_|DM4PR11MB6263:EE_
X-MS-Office365-Filtering-Correlation-Id: 206d5da7-2fcb-4073-845b-08de5250931d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cExmbGV4b0ZQc3k3MmtCbW56TFdNVUE3NUJLYXVzZFREQW14WTdTUmdlcXVO?=
 =?utf-8?B?ZG5HZ1JjU1cvaXlEeS9ZSW1mTW0vUTY4V2VjanRncHFjUnRGREpzcXJyRjFk?=
 =?utf-8?B?NitJMDMvTXYxbEZzTXNXbCs0L2FjdlFpM3IwbS8yV2xMbExrYThPeDdQWVoy?=
 =?utf-8?B?WHFXTFlaN2NpcHJHblFGaURxTlkvSDhGWUFlVUs5K0RCemsvM0t3VmJ1Q2Vy?=
 =?utf-8?B?YUN3bGlzUlpPRHBPNmcyVFpwSklYNjZhblZ3VnIzWHJ1ay9RS0JFMHZOZ0o0?=
 =?utf-8?B?L1F1K3BGTzM4UitPNEZSekkxbFRMNk8rRXZNZDlObEU1VDV5ZTF2QmRqcHBK?=
 =?utf-8?B?cWRZZWpzYTVDeGRHbXFnUFFZdFpMaHZBNjlDWFhocUFJK2VzVWVTNnJNdVdn?=
 =?utf-8?B?R2lmK2pLM3NmL2FXMG5QdW9SUGs3dStmSjgvMG84UUk1eU0waDBmN2FieC9N?=
 =?utf-8?B?U29Kam1wcFlmcFRRbjFjRXFsajIwQWFBRytLa1Z4RG1Gc053N3djK2xHQ01G?=
 =?utf-8?B?bVE2OHpTRjRXbDFUOXVYVnNUdTFqa01BRXlZQ2NOM2hmWXlybU5xQUsvbXE2?=
 =?utf-8?B?anA1ZTBRcTAyWlNrUmprVXhYTTV4ZXhmYkRWS0pvUGVxS0xJUU1lbzJoVDdt?=
 =?utf-8?B?alNvanppREhwODBFU2ZaMmRhKzUwWmhLRU10N080dXV2V01Bbm80bWhISDF6?=
 =?utf-8?B?TXgwUUlMcnFzYythTnRvczJNbnR3cTJXQUxxaXdseUNKWGpuZFRESlU2WE9R?=
 =?utf-8?B?LzYxbjhIdWRIMFdEMG5FVXFIVlVaVnBvWmJCelJXamJPVEpseXNVRloybHpy?=
 =?utf-8?B?cGZ3c2ZPU2l3Tk0vaDZZRUo1WDI4c0plV1A3UUw0d1luU0JKUEo2ZmRtRnJk?=
 =?utf-8?B?SURrQUVKdVdLS0I0OUdyWE16b1FEUHA4K3o1eWR3ZzF4TDh4Vm1IajFHUFpy?=
 =?utf-8?B?MWJ4TXlIK21lSGYyc1Vic0dIQXdndXV2aFBBOFNpeFlPRDhvR1NhZ0txbnNu?=
 =?utf-8?B?bFBZZ1FQbWlaQlQzalhuWU0vdC9MWlE0ZFQ3ZDJ3SVJOdnN5M2ZLQ2lGb0Ju?=
 =?utf-8?B?S1V6YXAzVWpnajlWYTFvS3QvU2FEd29Rb0IvdG5abVNVNW8ydmdhOS9tQzls?=
 =?utf-8?B?bVpwM3hOcFNVYllIRHQySTBvTk05M2dGaEV0cnVWRkdXNjZaVUVlTGg2NWxL?=
 =?utf-8?B?Y1Q5U1FVOWwwMmhva3NNNFZjVjRkQnZsWEdkbTdJL2ZSWGVBQzZuS2pvZit3?=
 =?utf-8?B?dU1vU0pKT1RpMmdaQlBUelpYdHNOcW1pWjFCcHFqRGc1M1NNbXgyNnVLU1pE?=
 =?utf-8?B?QXpwcjVHcFZIMFdIUHp3YWwyMmZwRnhMYW45ZVR4RlBTRFk2MU9CUlJkYmFV?=
 =?utf-8?B?d1hIYm53SW9OdWtjaXljT3IweDlDcWw4eTdseERNcmFRS3luVnJiZkZMWCtY?=
 =?utf-8?B?TWxZMFFvSi9KSi9GM2NiODRFTmZCMnJGemxJUnhiWWJXbkV2dDNzbGJOWGpt?=
 =?utf-8?B?Q0hHUDQ1WmgxTjlxZGNYMnJhVmF1dUNYL2gxMVV0emFNNTc4RHJvRFVDLzlW?=
 =?utf-8?B?NTNEdmg3OG9EUVpRQVY5ZklIVTRCQ2hucm9YNEZ3ZmQxdXJLckhTUzNRTFE2?=
 =?utf-8?B?bXN1Wll4cWlEbCtIVytGNjkzUHZCRXpCVGllZjhQZnlob1lKTURvMzBMbE5V?=
 =?utf-8?B?WjZwT3B0ejczLys3b2podmcrcXBIWnpyMzF3MFBYZk9tUUdUT3hheldwdVdl?=
 =?utf-8?B?UDk3U1lzYW1XcjlPMmZza0hjV0RLMVBwN3BHZEtFeXFMOFFtdGRlR0U2VDNk?=
 =?utf-8?B?d2RrMGJEMXlwcXVSTUp3emFhUkx0Ymo3bWRkeVV6TDNoL3VMU2dESDhDbjVa?=
 =?utf-8?B?dm1tNGg5TnlWLzkrc1lmVktBR1BTTW0xR2xjM2dnTUR2bnlPTnYwRlFBUEFZ?=
 =?utf-8?B?SVpZbTBzVVlRaVNjZnoxZHJwNGNjK0gwT21DdDg3YlYxcDBMOWJ2SGpSZUVo?=
 =?utf-8?B?TFgrUW1vNUlnPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RDhxRVdPR1ZjVmd6RkxjSzg1Qk83YW0wLzVWcXRuYThkTEpjbTBlWkUwM1Zt?=
 =?utf-8?B?dFdiYzMyNlBsQkh4YnhpT1oxMUVqRTN6WlBIZ3pwU285MC9BeUpCR1F5SGhm?=
 =?utf-8?B?VTl4WU1aZUkrM0lYZGIxWXgzaEFYVXhVdUdoVitZazJ1MC9GWkVQaTZFSTdZ?=
 =?utf-8?B?Y1RhaE9uaDd4TFlxSFJ0RXpTVDVBUTdiSEtieHJKNktGSFFuSkZYc0FQYzVW?=
 =?utf-8?B?UjdiYllZVDlQdDJFWTRTSUtVcnI2UUNMMUhCU0J0OWNHSys2bWl4RlhYMlpt?=
 =?utf-8?B?clBqY2xPS1owYW5kM0FRNXBvdzVYVlJVcnJ2Z3M4YXBLZEVxdDU3Nk1oT240?=
 =?utf-8?B?aGcxNGVEQmM0L28zdFpETVB1Y0o0cWlQNmxWc01pcFJvRnl1eVhEeU5nNU9V?=
 =?utf-8?B?bzhscmxLTzl1Z0pVOUZJQ2xlRUVyalEvYTVBQlBnRGZjZk9SWGZBTjhjQXZZ?=
 =?utf-8?B?Y2xHNXQyTXl1aDFTNDh3R2tNcUZESmdnRGNMTnIra0k1NG5HK2NjTDRwNEN3?=
 =?utf-8?B?NHVvUU1YK04zU3JIMllkaTJkZ3I1Q0ZOM09rcE9EQ2dBeW5FbWgvWklUdE5l?=
 =?utf-8?B?ckYrcjh0T3NOWGNBeG9GM294eDkxMEVYQUVkekxNK0lRRFA3M01CRkhuazVi?=
 =?utf-8?B?dDVvOG1kMU51MG5PUkJzTEpVVWpjbThoajMydnM1d215dlBTaENYWmhOYll1?=
 =?utf-8?B?RVVhdkxSM2FTMWpUY1hOU1RhTUNwYzJ1LzF6aDdodCtxYnNzOGdwSk4yY0po?=
 =?utf-8?B?akU4bUs4c3NhZjhSejc0ZXd0YThVYS9QbGtLR1J6ZityaDEzcENrcXU2M2lO?=
 =?utf-8?B?ekVhTEZBU3hEUFg1NXJiellDUXFFSjBua2hFN2xGUTd4M2dlYTRhRUxhVTFQ?=
 =?utf-8?B?OURNeWdPaDVzOHhIWnRrZ3BxS016b3lHalJZMzlTTEVtd2xSbnBaSlBaVTIy?=
 =?utf-8?B?VHV4aHJnTklhdThhZnd6S0lHOTlQNWlsVng5Q3JJWjlPZnJQYWZ3SHlSZ3lB?=
 =?utf-8?B?Nlh0WFM0SG9EQUgwY3hhUnhqbEdDcE0zMnV5TWVIdTI1QnA0QnlPaGRhdDll?=
 =?utf-8?B?YXNOQ2QrazYwU3FBMWs3WkJyZ0VxZHp0czFhZ3ZTbXNYUVFBOWZTNUVLU3Zs?=
 =?utf-8?B?KzF6VnBRN0w1emdlcDcwN0pLYTlERVRHZ05KR0JJcE9mdDRBZ2pSM1BGeDBw?=
 =?utf-8?B?M3ZubmNyL2FqZ0FBQXVJZlpLV2pUZUJ0OGN3WEZuYUVzSkZoYWd4UWJFVE0v?=
 =?utf-8?B?eG8valNMcGxTamFMc3BpdkhYbTg3VER1STNsWk1UNkFFOGhmSDd0bGxmMElO?=
 =?utf-8?B?YlRCN1NNR09kRldjcU9NRWxibnBFQUNodDRDWnF6aXY0OFRlY1ZMcHBPRW8r?=
 =?utf-8?B?RzBGOSt6c2Z2SXVIVHNnZkVHa3hCdGpwZ2RRdE1oa3dKeWJodFYyY0lVUFlt?=
 =?utf-8?B?UkwvWUk4QURINXllQ21IUDhKb3BaVVBYckpDZ2VDZWNZNkE2cDJhbk50TzQ5?=
 =?utf-8?B?L2hVOVUxdUVDYlJnM1J4WG04TkFwNUFQeEFuMHVpZVdnNEFKM2ZSTkhSckVS?=
 =?utf-8?B?Y3U5N1pnbUMzaVZxa3ltRDBlaGgwTDdmZWM0TVV0M0daQTZNMEdzMm8wR0hK?=
 =?utf-8?B?V2JmbjY5VnRldEh6QlFkZjhuY2hnL3VFOVk5MXpYQVh0L1dsV2tmbWtpcmJD?=
 =?utf-8?B?MHZpcENuQ3lJOHFMMkhaUVNuaTRrVVlDdkR6SHo1bjVaeHFVUTQ5NTRHOFZj?=
 =?utf-8?B?M3UzRWxWYmdUZFQ5N2RVc0E3VFFwdVRGT3ZjMnhzRm1LSytUL3djZGYxSHc2?=
 =?utf-8?B?aS9lQnd4OGNCZE1jU3ZyM0x3c3UzNXVtdVFWUDZkaDVabGlxWHM3ZUM0YzFF?=
 =?utf-8?B?WldPTHQ1R2xXME4xa1ZMc3ZuQnZkcGJzOWFXVkM1NFdMUFhnVEllVEpPS0lP?=
 =?utf-8?B?SHpLVGJMeWZGSlYyNGlXVnlWcFdJdkV4VjN2ckFwMzhRZ3A3UUN3bnNCZ2ZW?=
 =?utf-8?B?Zk80RDhHWnJIOE1HTHhoN3dlZWxEMG11aUM2MUZnenJFWUVFMDkvVHVuY2xx?=
 =?utf-8?B?VHlTQnF1WDY0U240cktBUjhTcWZJa1pkNy9OMTIzSnFoajBWZ0JGYWoyd0ZS?=
 =?utf-8?B?eFhqK0czOW5HK1AzckN4eGFTY090bWNOcWxkUkgrOEhKSVBtU2JiSFhUeEFj?=
 =?utf-8?B?bVlMVnpBL0NyZUJ4NjhuUzVEeXI0KzhneXQ3ZGQyK3N5a1RLakE5T1Y1TUtF?=
 =?utf-8?B?Q3JCZFZSRmE0VnFsRzdzZis4aWx1dlkzZHliQm9RL1UvbFNYS2Z0eWlWYkFU?=
 =?utf-8?B?YmV0V2pjakhpajU2K0dHTWhmUFlZSmpGbmR2UkU0ajZkbkt0NDVGUT09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 206d5da7-2fcb-4073-845b-08de5250931d
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2026 03:05:15.5522 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nTQ8drn2pS5nB5rdm0ONcNRFPkx/KAKv7AIm7oDNGCeYnDtjRrldYf/iAc0XozqhSpMqUnp1RbSg0gq/gwYnd9bxVcseCmxDSqEs3dZ7Pfw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6263
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768273520; x=1799809520;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xdhAW5ceDvB1hrtbxGKqPsLZHiO8LrduE1KdN8VQ/eU=;
 b=K2gU0sprpcRE/ARyW9JJH7TBOIjuyWLPjvZR9eACOWzbGHPPKvakojhN
 VQdiG7GbQOkXw9uOGHrmIo5n5ObNIH1BHqdnL8rIg02srhfeIMxhbIt8p
 mztpnLuGkdLtPa293tlEben9UIVap6E9/iknYDGXTgLbGtl2RBWzBz/C4
 wJziOQVp6NKI28MHfoOsOXwDOMeynpWUXjK7t/eJKkyvMN5WiWCqSIMBJ
 6nhbbDf0CVyI3lMW3IsicuocN7y9tOwdoFy6X4XZUzhJl+D75dhwQTcTU
 BD/JAQvGZTazfouDuYRLX8V47oG+nP0H2dmAoYMWpWyOUglvYVPiC4pYh
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=K2gU0spr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [REGRESSION] e1000e: RX stops after link
 down/up on Intel 8086:550a since v6.12.43 (fixed by suspend/resume)
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



On 1/8/2026 4:15 PM, Wenger Jeremie (EDU) via Intel-wired-lan wrote:
> Hello,
> 
> 
> I would like to report a regression in the e1000e driver affecting an 
> Intel integrated Ethernet controller.
> 
> 
> Hardware:
> Intel Ethernet controller [8086:550a]
> Driver: e1000e
> 
> 
> Summary:
> RX stops working after an Ethernet link down/up (unplug/replug cable).
> TX still works. A system suspend/resume reliably restores RX.
> 
> 
> Regression range:
> 
>   *
> 
>     Working: v6.12.22
> 
>   *
> 
>     Broken: v6.12.43 .. v6.18.3 (tested on Debian 12 backports, Debian
>     13, Debian sid). v6.18.3 is the most recent kernel tested so far, so
>     the regression is likely still present in newer kernels.
> 
> Symptoms:
> 
>   *
> 
>     Link is detected (1Gbps, full duplex).
> 
>   *
> 
>     DHCP DISCOVER frames are transmitted (confirmed via external packet
>     capture).
> 
>   *
> 
>     No packets are received (no DHCP OFFER, RX appears dead).
> 
>   *
> 
>     Booting with the cable plugged works.
> 
>   *
> 
>     The issue is triggered only after unplugging and replugging the cable.
> 
>   *
> 
>     A suspend/resume cycle restores RX immediately.
> 
>   *
> 
>     Using a USB Ethernet adapter (r8152) on the same network works
>     correctly.
> 
> Reproduction steps:
> 
>  1.
> 
>     Boot with Ethernet cable plugged.
> 
>  2.
> 
>     Verify network connectivity works.
> 
>  3.
> 
>     Unplug the Ethernet cable.
> 
>  4.
> 
>     Plug the Ethernet cable back in.
> 
>  5.
> 
>     Observe that RX no longer works (no DHCP OFFER).
> 
>  6.
> 
>     Suspend/resume the system → RX works again.
> 
> This suggests that the PHY or RX path is not correctly reinitialized 
> on link up after a link down event, while the resume path performs a 
> more complete reset.
> 
> 
> I can provide additional logs, ethtool statistics, or test patches if 
> needed.
> 
> 
> 
> Best regards,
> 
> 
> Jérémie Wenger
> 
> 

Hi Jérémie,

Your issue sounds very similar to the issues that were addresses in this 
commit:
https://github.com/torvalds/linux/commit/3c7bf5af2196087f394f9099b53e37569636b259

Are you able to reproduce it over the latest kernel 6.19?

