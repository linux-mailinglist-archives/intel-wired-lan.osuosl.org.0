Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3321A960810
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Aug 2024 13:00:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1E46A809EF;
	Tue, 27 Aug 2024 11:00:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O-eSnFqqBEOe; Tue, 27 Aug 2024 11:00:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D5D2F80C32
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724756406;
	bh=6Van/CL38FLNbeXVvigmtCjCfL53KOgODa1jZIczJNE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1LW2xX+/F7frWIYOAN3kApj4ok1e50/PYWij7My2q6mR2zsP1YD7bDl3sWw+Y/6c1
	 uoUNCxQfKfFhu/CV4HX/Nj2RQB4L9ENUVgG15hL2TGdbJFwOuTeDKoASzPBoOCnoNS
	 2jiUsFdsn2GIMI3jvqf68Q5aP0zDcBinLJVe/e40OEAyjX7pmMUrb7YGD0XE0LZF4Z
	 XFXQ3p9EHJUhd2vvCY5Hl5+sMebtZQ2Bf8YOLoKnDYZwUuxsFlgC3YQYLd389nFxyi
	 kytaX+6a2JILOjH+a4BYaPzJiv6W/zxrc/w423mjJN5lmSMxjvmRQuRebpuDeyJJnM
	 s253wK1ZaT3xQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D5D2F80C32;
	Tue, 27 Aug 2024 11:00:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0B87D1BF315
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 11:00:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ACF5260807
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 11:00:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F2F8e5ThBzcZ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Aug 2024 11:00:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 427C06068A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 427C06068A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 427C06068A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 11:00:02 +0000 (UTC)
X-CSE-ConnectionGUID: pbpMQSGVTbGcYSofF7HITw==
X-CSE-MsgGUID: aZp4AB7jS0uVt8e5xnRsgA==
X-IronPort-AV: E=McAfee;i="6700,10204,11176"; a="22818199"
X-IronPort-AV: E=Sophos;i="6.10,180,1719903600"; d="scan'208";a="22818199"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 04:00:01 -0700
X-CSE-ConnectionGUID: WxInjgB0S4y7jZhbMSEvsw==
X-CSE-MsgGUID: RZej7/prTrS9sbYS/LVtNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,180,1719903600"; d="scan'208";a="63541109"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Aug 2024 04:00:01 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 27 Aug 2024 04:00:00 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 27 Aug 2024 04:00:00 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 27 Aug 2024 04:00:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZGk0uqvog4TyrCZB2KZqJU+EjeU1MG42ZsZaMpdo0CcxvtPs84vabaPmVZAzRSfNJNLxcLd2mTYc21CyganJJ8kuEIQ7U39c3IGKQYZOeKwX7IlCTpsuUVbhtquEOBYHD42O15eQpf9DYL5G5ZcMgxqp2ahdtw+GheOzJGA5WeWlJC1W//Cupahk6tKE1nemEbhGXFblmqvpMLieymOcTA8sIXzSdvLNQyT7EzWalHG66GB0Y4MXE6/9byZtPj8vXRtUex3ybZRt1eGkH8agLb3g7YvXg9b/9cQK+QaouBzaR64RoNGNruW4Rmkn8ktOwinhUYkkw9B7gwVvDZ1h1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6Van/CL38FLNbeXVvigmtCjCfL53KOgODa1jZIczJNE=;
 b=eEEILzGILIbKci8QhqdAJsvjMrtTOULBHNuuO2MyUL75s+I3RKdWAAVNqSUp3fdYW003NRahIVpgrpNf4r1OhsOlTUhES0wiZGvHfI70dMjGNmB0ye6HtKnG/skxNioY3PBd3/sCRqr0BsA7Yh7ARuMyORF09gPGO2N6SIjPPYVB43ZSxoikVvaQ8bFT1W5ruZlZAE2Jj0q39w4NwJTwBIZinBa8oc2ru26n/llmK6KSDwjkS5jOQspYah7kqZG67AilyF/EPTqdmT5Wy9z7np9JrNHnVpBvk191ibxYXrb4NjTndsbxNptMU8jiUNuT+m2Sonptt+sbymfgQfASeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by SA2PR11MB5002.namprd11.prod.outlook.com (2603:10b6:806:fb::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.25; Tue, 27 Aug
 2024 10:59:57 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::4bea:b8f6:b86f:6942]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::4bea:b8f6:b86f:6942%6]) with mapi id 15.20.7897.021; Tue, 27 Aug 2024
 10:59:57 +0000
Message-ID: <213347f1-7af5-45a5-a9ce-448d98867d35@intel.com>
Date: Tue, 27 Aug 2024 12:59:50 +0200
User-Agent: Mozilla Thunderbird
To: Alexander Lobakin <aleksander.lobakin@intel.com>
References: <20240821121539.374343-1-wojciech.drewek@intel.com>
 <20240821121539.374343-7-wojciech.drewek@intel.com>
 <3278c207-b450-4ef0-b240-0fd4cfc0b1df@intel.com>
Content-Language: en-US
From: Wojciech Drewek <wojciech.drewek@intel.com>
In-Reply-To: <3278c207-b450-4ef0-b240-0fd4cfc0b1df@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR04CA0063.eurprd04.prod.outlook.com
 (2603:10a6:802:2::34) To MW4PR11MB5776.namprd11.prod.outlook.com
 (2603:10b6:303:183::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB5776:EE_|SA2PR11MB5002:EE_
X-MS-Office365-Filtering-Correlation-Id: 6b7f0a0a-3412-4048-3811-08dcc687635f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bnQxelkyczh5WjMrblNaN3JOUWNTZ0dpTFZWb1ZPM1ovNE45emh0NFQ5Z21p?=
 =?utf-8?B?VXNsbTVscDBLZEpCOWVIRWdnRkdyZEsvT1oxMGQ3TGZVOUJ5VGI3b1hlcVE2?=
 =?utf-8?B?M2Rud3BCbWhPZCsvTzlLUEVXbmltbFZ2blJ3ODhPVGJkK2hLVUt2eGozY1FD?=
 =?utf-8?B?bUN4M00yMWUwdWdkYUREWXptMklsM2pDOFp1bkRVY1RjSVZ6K2pIMnFpRG1J?=
 =?utf-8?B?OFpQWEg0SkFoSjdMSkQwODN4eGtFZmwva1JtQnRtZzladmJlSUQwRkxrUzhn?=
 =?utf-8?B?Tm5rdGtYUGQ5ZWRhN29VK3Rzd2xGYnBjczNNdnAzRURyMEtmY1NwUnR4V2VW?=
 =?utf-8?B?RWVUSlBrMXF2cDljU2w2ZStiWEwva1hDK0pVUVFtQkFQSEVER001Q1JtVUF4?=
 =?utf-8?B?RWszMkltaVUrM3VVcUZOUFoxcDFuUnl2RTJPc0RLYVZxdHFBamcralBjeC8w?=
 =?utf-8?B?djBHcHFkelNjZzMzRlJjZ3I0bE53K0NWcUliM3g2TW5ISEhvdHlIY05BdmZ3?=
 =?utf-8?B?eHJoTklaaEVGaW1SS0YrdkVxQkZ0Wk5KT3JUY3IyOUxUUmNmL3JNUTNSaDQr?=
 =?utf-8?B?Mm15RU9OZTlKQjV5UGhobjJwcTc3VkpISXJhemt6NWpBekQveHR4ZldhWnB6?=
 =?utf-8?B?WCt4VStuKzRsTnh5ZnByRDJ1WkRyeWdONEIvUG4wdXFGUEgwTzdiMnZxV1N1?=
 =?utf-8?B?MDVDMHZvTS9RNFZkSWtMTGdPVjVmSHM5OGZvZmMxZFMyN3MxazU4dUZGL3A2?=
 =?utf-8?B?QTJ0eTYrRk10dVgxMzBiOWlGWkdYbGd0N214emFKa0VZSmtFaCs0MzdCM3M3?=
 =?utf-8?B?enNsMDNreitnYWphemxJaEZyQ2lwUGNXUkVEeDdTMUFEZ3lTWUZ5OHhJOGJv?=
 =?utf-8?B?a1FEUElOakJBRDBmbmhTYzJCMjBrMEl4UjNKZTdyczJ0T282K1FSb1U4WmJl?=
 =?utf-8?B?SkZXbFY5UmhJVGtpcHYxN1QzUjU5c0daRTlvVHBMSXVKajk1ZCtMUEF0WEUz?=
 =?utf-8?B?TjZ3enlXSkFiYTBWcU41WExONytoRjZEYkxJYWhuYjcrZjBMYXNSTHBoV2VS?=
 =?utf-8?B?VTVVOUJxZ0pIWmFZZm1EUThoRENFbWFFUnZvK3dMRU5tZEVTU3VGaFpWdHN2?=
 =?utf-8?B?WmZybzFadTRFQkUzall4NURNdXd3MEFYdjdnRnkrYXQyZnp2K2Y5Ym5RcUxV?=
 =?utf-8?B?WW1RZW1HZjF4dnYyYThhcFBjaXdndnppL3JQWndNQ2tBTGVFYnhPMSt3SHRF?=
 =?utf-8?B?N09nV1pVd2FEdWVMN0I0NlhwRE5iYkpNT3NjOTkyQW5LcnNQcUdyK2d6NmMv?=
 =?utf-8?B?QllJWlUvMUdjUUU2WndNQzVKbWlqU1dRQ3YvV0YxMHlJU292MG9LTndNbFYv?=
 =?utf-8?B?blcvTlFjRUdiOHhZMllOaGNHM0NtQytSdUJnTlBkajNQTHpuUVUzSGVyZXE1?=
 =?utf-8?B?MFl1Q0dWanVEUHV6WlJ2aUdKNmRsMitXVXArU0VoemlWUGpGVGpYUnFDQ1Jv?=
 =?utf-8?B?T09XSWxma09SMVVlSVdTVmpPbGVIT3UyRTVZN1VhbWpTa0cwbDEzTTJ1Z2hI?=
 =?utf-8?B?bE1sNG9vSXkxbjBuUFczNDBNR003YldQZ3BvblcxRURxY1RFUnRvUEJiWXNi?=
 =?utf-8?B?cWVDdlNzbFV3bjhlNjdKcVNBSjZRcnNhZ2EwWVhSWGZnM3RSeXFqWFBkYS84?=
 =?utf-8?B?a1ZKL1FYdmhpM2dUSW5zdEJBT0NNU2FNOUd3cnVaYWUrM0dTa09zS2lBeG93?=
 =?utf-8?B?MFozVUQvaGRrSEdxOHdxeWdvQm1lb1dDSTB4bWNBQXA1bWRhclU0SnMxTnkr?=
 =?utf-8?B?eDNnMC90MWVIZzlIY3ZuQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MlYyL1l1TlA5T3NKaTNZc1BpRU1leGExMFZaQmRaMXJnbktmemUvSmh5c2FN?=
 =?utf-8?B?Q08zeHlHTHNYd3RqekdIYmtML3h1S0haa2YwZWRDLzczNGNTdnNqZHlYL1Rq?=
 =?utf-8?B?MXhLZFY4S3h5V0VNcGtnejh4TnVleGdTVkVPaWVkVDRzRUxoZGRqcmhrT1Rt?=
 =?utf-8?B?MEtXTUtaZmRkOEhycW5oWjZ0emk2MW9UblQ5RktPeXRZNnlhRFc4d1VIUVAr?=
 =?utf-8?B?cllnZzRzQmx5aG9ja0pzS3dnV1dEK080ZWRsdjZpNlp3Y0tOOVJmaHJvSXRY?=
 =?utf-8?B?aUhiaVF4bm5nbWsxQy9pTGFvRzNWanZrK2JCY0dOUUtSVi90SnZVYlkrQW1T?=
 =?utf-8?B?Y280UFNOUWUrMW5nMWwweE03NUpPeGNYUnh5c2JMWlhnQksyRmFON3J5USs2?=
 =?utf-8?B?OEZHL2c3Mzhoa1VOSlpjUTUyTGVQVHhtcXltWi9PbFJFSXBvRWVLV0RYM2tt?=
 =?utf-8?B?T2VVOVZlNk5Oc01Vak53TlJSaFN3RkpKWlMrVjFDWm54MUlDVUV2TGhIbG9x?=
 =?utf-8?B?d1lTeDAxNm0wM3N3WmEwRXBia0p3QlZMQlFra0kzYnU5VEJ4UHA4K0RRN1Vh?=
 =?utf-8?B?bEJQVXp2YitSN0dZSGFhSWFsdlJPa3YxWk9ZWUtDUVk5Z3hvS0RXZ3lRZWxx?=
 =?utf-8?B?bFpZWWFSOGlLZllNQTRvaElBUFltOUdBbjJzYnRuNGI0NytvY0cwNjQySzlB?=
 =?utf-8?B?MkpQazg1TmM3Y1k4UWNxbkJ0NGQ5eEhMRzE2NHByZVZBbTErY09hdEJKWUhi?=
 =?utf-8?B?Sjh6eGhyVFQ2Zis2bmVlTGJ0d2RtdWZpdS9DNUhLUzBhK2w1b3lTd2c2MzFr?=
 =?utf-8?B?djd4U0xja1MxUExmQS9ZbmxuTU5wY05VRWNvZGNHU0RVZTlBQ2ZzVmtROURh?=
 =?utf-8?B?b3BnSmFDYUt4NWF3ek5YcWg4aEZnZ1hSUVJXNlJId0pHTnZPVHZlSS9kNjg0?=
 =?utf-8?B?MU9uYitVTW5pVklmTkVLMlV6bFpuYy9OcTNzV0pPY3ZJdkpZSWpTbnZScno4?=
 =?utf-8?B?UllUMllHYUpPNHJsNDBmbFc4aGtPRnVsSGtXbUR2RnJDVmRsemdNb01MNkl2?=
 =?utf-8?B?eXZBTW9yVWIvanZNcE9KSTlCZEluS1BVZnkxRnZNZmRZcGRvYWpaYjRCRU4v?=
 =?utf-8?B?bzBVR0IyRzRBV0s1VkFsMG03SjZzWldNalUvQ3F0cXVVNmVoRVorclFkZTNo?=
 =?utf-8?B?TUZ6ZFlWblVuc0prRHBLa1lnRkdSWTZmZkJLdXZqZGJtVE1IUUF4Vld6elhv?=
 =?utf-8?B?U20zK0Nqd2ZxMENzak9qMVFtNGgxeENQQTJkSlJ1aytIV0dpNm9FK05IbDFm?=
 =?utf-8?B?TGM1Um5ScVhEZ0k2eVpZS3V4QUVKbGR6MXJSdStySC94OTAxVElSYTBxZERz?=
 =?utf-8?B?UFVHUVhnNHYrTGx6T2tZakFsNmhXWDRFR0J6RWpXWWlpS21lenBWaFk2b00y?=
 =?utf-8?B?Slp0NzMrVWg4djRZa1JhMndRVUlGL2F2ZmtkU3YzUjFIaVdxQ2kxSDJIYnZY?=
 =?utf-8?B?WEdZTWRtMklCUDdLWEhCbDRUT3dFMDlYR25TRDlKamNRNGZNaDhZT2F6UVBN?=
 =?utf-8?B?bTcrWG9Bb0wxS2NDaml5RXpaVXpkRS8rNVNYN01XMHZZekNJWXpWL0ZOaHNQ?=
 =?utf-8?B?YlNFWkgvUG04eVc5djBVZWxHVGwwMERmTGQ3dG55c2pOV3RmYTczRkRWZmxN?=
 =?utf-8?B?Z290eEFRU1BMZzh0K3pXNGtzMUkwRFRxVGRPb2xuNytSOHN0eWg5aFNRWDVD?=
 =?utf-8?B?K2tFNWpoMHk0SUNwRnRhOUFLZ2NoMlNJNy9MQWpJRVNrdEdWL1hQbEc3SVds?=
 =?utf-8?B?b2JCdytBeHNtN0V4NU8zblYrNU85ekk3S3JGNXZvSUoxK2NEVStxZVp6VUQ2?=
 =?utf-8?B?Rm9Xa1duMkxkSUhTbWN1ZkpVTlpmRU1JckxYQWg3RDBJOGZmRDhDSjk0NlJX?=
 =?utf-8?B?L0NOY0NCaHBGTFF5Ny94L3VVWjlQTlJtdmJZaFJ0SXU3akdXdCtzWjdITWFP?=
 =?utf-8?B?a0ZmaDRSS3JHTGRtZUFOYWpxb1JiZE1XMmdPem5aakg3Rm1FcitWKzFIQnF4?=
 =?utf-8?B?eGM4U2lnTWpmTUdCaWc1RUFBdzQrdlQwODlIL1Z6aVh5VThpN0F4MFZtelhz?=
 =?utf-8?B?dmV3TlNTRUZ0dG9WZ2dHUHkvN2FRakhheTNqYzI2Nmh6dWUvR1hmam9raHkz?=
 =?utf-8?B?ZVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b7f0a0a-3412-4048-3811-08dcc687635f
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Aug 2024 10:59:57.2208 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oH3w0SppZ9vQJLuzADWEDxLkF9n8LI0Bvsa0R2ASeSwgZ9RV8Wai+eMnklXL4IEpWr2CLWp7AghImoTYaDn+i7Hn2aDl+3lUT3zQzogvDBs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5002
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724756403; x=1756292403;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pxDDbL0n+X2zY4UzHzb0mcEC4bOmZAXhsATgi3I5kwE=;
 b=CcKjZcABD4swvmfnagmTZ7B8DuTC+lpUrUvMtpGI+oNIKyI56bhH1Irf
 +F2L1qU4pg9m8yuyWzhxUrEerc1jkl1T8ajpYxfhCbdE+dMoo9OcsNftE
 BwrY4/NZ29Qx6/a8B6MSochSXJU91K9Vu64z94unSghvZwOzXm9iq505W
 Xi1hlJXC8ZoROhbze1VZGvHx+WhSi3c1TMNmUNNReSdqVB39RAGyT9954
 +gF7EajQ62BnFW+IHUkEKe3/zRA2eafbRB2C5rdgNCCs3uh7pf8LylKN+
 rYVPBb0R+m1cn1W+EQtx2WRrnPW4+J0GtNttL5EDlR+WO2fOawf+4M6Xw
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CcKjZcAB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v10 06/14] iavf: add initial
 framework for registering PTP clock
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
Cc: netdev@vger.kernel.org, alexandr.lobakin@intel.com, horms@kernel.org,
 kuba@kernel.org, anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 21.08.2024 16:20, Alexander Lobakin wrote:
> From: Wojciech Drewek <wojciech.drewek@intel.com>
> Date: Wed, 21 Aug 2024 14:15:31 +0200
> 
>> From: Jacob Keller <jacob.e.keller@intel.com>
>>
>> Add the iavf_ptp.c file and fill it in with a skeleton framework to
>> allow registering the PTP clock device.
>> Add implementation of helper functions to check if a PTP capability
>> is supported and handle change in PTP capabilities.
>> Enabling virtual clock would be possible, though it would probably
>> perform poorly due to the lack of direct time access.
> 
> [...]
> 
>> +/**
>> + * iavf_ptp_register_clock - Register a new PTP for userspace
>> + * @adapter: private adapter structure
>> + *
>> + * Allocate and register a new PTP clock device if necessary.
>> + *
>> + * Return: 0 if success, error otherwise
> 
> Period ('.') at the end is desired at the end of kdoc.

Sure

> 
>> + */
>> +static int iavf_ptp_register_clock(struct iavf_adapter *adapter)
>> +{
>> +	struct ptp_clock_info *ptp_info = &adapter->ptp.info;
>> +	struct device *dev = &adapter->pdev->dev;
>> +
>> +	memset(ptp_info, 0, sizeof(*ptp_info));
> 
> Is this needed? adapter is allocated using kzalloc() I think?

I think it's not needed, adapter is allocated using alloc_etherdev_mq
since this is netdev's priv in iavf

> 
>> +
>> +	snprintf(ptp_info->name, sizeof(ptp_info->name), "%s-%s-clk",
>> +		 dev_driver_string(dev), dev_name(dev));
> 
> dev_driver_string() can be just KBUILD_MODNAME when it's called inside
> the actual module. It's mostly used when you need to get a module name
> from a different module or core kernel code.

Makes sense

> 
>> +	ptp_info->owner = THIS_MODULE;
>> +
>> +	adapter->ptp.clock = ptp_clock_register(ptp_info, dev);
>> +	if (IS_ERR(adapter->ptp.clock)) {
>> +		adapter->ptp.clock = NULL;
>> +
>> +		return PTR_ERR(adapter->ptp.clock);
> 
> Braino here.
> You first set ptp.clock to %NULL and then return PTR_ERR(ptp.clock).
> IOW, this error path will always return 0.
> 
> I usually use temporary variables to avoid this.
> 
> 	clock = ptp_clock_register(ptp_info, dev);
> 	if (IS_ERR(clock))
> 		return PTR_ERR(clock);
> 
> 	adapter->ptp.clock = clock;

will fix

> 
> 
>> +	}
>> +
>> +	dev_dbg(&adapter->pdev->dev, "PTP clock %s registered\n",
>> +		adapter->ptp.info.name);
>> +
>> +	return 0;
>> +}
>> +
>> +/**
>> + * iavf_ptp_init - Initialize PTP support if capability was negotiated
>> + * @adapter: private adapter structure
>> + *
>> + * Initialize PTP functionality, based on the capabilities that the PF has
>> + * enabled for this VF.
>> + */
>> +void iavf_ptp_init(struct iavf_adapter *adapter)
>> +{
>> +	int err;
>> +
>> +	if (!iavf_ptp_cap_supported(adapter, VIRTCHNL_1588_PTP_CAP_READ_PHC)) {
>> +		pci_warn(adapter->pdev,
>> +			 "Device does not have PTP clock support\n");
> 
> I think it's pci_notice() or even pci_dbg(). A device can miss PTP
> clock, but it's not a failure. _warn() is when something went wrong, but
> not as wrong as _err() :D

sure

> 
>> +		return;
>> +	}
>> +
>> +	err = iavf_ptp_register_clock(adapter);
>> +	if (err) {
>> +		pci_err(adapter->pdev,
>> +			"Failed to register PTP clock device (%p)\n",
>> +			ERR_PTR(err));
>> +		return;
>> +	}
> 
> Why does this function return void if there's an error path? To make
> sure the driver works even if PTP fails to register? But I think it's
> better to bail out if something failed than to work without certain
> functionality?

Most of the drivers don't bail out if ptp init failed, I'll stick to that.

> 
>> +
>> +	adapter->ptp.initialized = true;
>> +}
>> +
>> +/**
>> + * iavf_ptp_release - Disable PTP support
>> + * @adapter: private adapter structure
>> + *
>> + * Release all PTP resources that were previously initialized.
>> + */
>> +void iavf_ptp_release(struct iavf_adapter *adapter)
>> +{
>> +	adapter->ptp.initialized = false;
>> +
>> +	if (!IS_ERR_OR_NULL(adapter->ptp.clock)) {
> 
> Since you always assign clock to %NULL when the initialization failed,
> this could be just

Yep

> 
> 	if (adapter->ptp.clock)
> 
>> +		dev_dbg(&adapter->pdev->dev, "removing PTP clock %s\n",
>> +			adapter->ptp.info.name);
> 
> pci_dbg()
> 
>> +		ptp_clock_unregister(adapter->ptp.clock);
>> +		adapter->ptp.clock = NULL;
>> +	}
> 
> ...but I'd invert the condition to avoid +1 indent level.
> 
> 	if (!adapter->ptp.clock)
> 		return;
> 
> 	pci_dbg() ...

Agree

> 
>> +}
>> +
>> +/**
>> + * iavf_ptp_process_caps - Handle change in PTP capabilities
>> + * @adapter: private adapter structure
>> + *
>> + * Handle any state changes necessary due to change in PTP capabilities, such
>> + * as after a device reset or change in configuration from the PF.
>> + */
>> +void iavf_ptp_process_caps(struct iavf_adapter *adapter)
>> +{
>> +	bool read_phc = iavf_ptp_cap_supported(adapter,
>> +					       VIRTCHNL_1588_PTP_CAP_READ_PHC);
> 
> Maybe split the declaration and initialization to avoid line break? My
> editor says it would fit in 80 if you make the variable name shorter,
> e.g. 'phc'.

Sure, why not

> 
>> +
>> +	/* Check if the device gained or lost necessary access to support the
>> +	 * PTP hardware clock. If so, driver must respond appropriately by
>> +	 * creating or destroying the PTP clock device.
>> +	 */
>> +	if (adapter->ptp.initialized && !read_phc)
>> +		iavf_ptp_release(adapter);
>> +	else if (!adapter->ptp.initialized && read_phc)
>> +		iavf_ptp_init(adapter);
>> +}
> 
> Thanks,
> Olek
