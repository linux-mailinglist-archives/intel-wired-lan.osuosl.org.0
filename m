Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CCxMJWxUd2nMeAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jan 2026 12:47:56 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DEAD387CE8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jan 2026 12:47:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2664760B9D;
	Mon, 26 Jan 2026 11:47:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BVDJTsogejAI; Mon, 26 Jan 2026 11:47:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1D30760B9E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769428073;
	bh=2L4PZLU799D6yDVKwiKcTXaSQbU6pLb+nIvEWS8fAc0=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uJuseD9ID8f6lsD0n1xvFDx6WQrxNao0lGcXapjbLm+kl9id5tJrkBzVYB26QUY/z
	 ZS5EQ9ErWX+VbgoEaYXl7A0h9pUNzUSg4vTv8rjY+2SCqt3itrh6j0Hx2Xe6wxHhZD
	 nFB+Q1MC05beZuoi/rXyvvdW5ZenePqw4tQisTchJ74J4l4ZcN3s1HP1OtFFFqnEu3
	 aUI2tn23tNQsd0PzFqO8PVoHInvMf9BwpM5sve127H+olJSfFQar+P0pvJgg17o6Xa
	 NdrkTtf79KUktawdXHlV2liXg446TWjt8qeWGFo/PSZF+jzrj1DGT4cyCWcm0rC+mJ
	 d7HyS5A2JhisA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1D30760B9E;
	Mon, 26 Jan 2026 11:47:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 616781CE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 11:47:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4653D60B9A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 11:47:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8UZaOHrqKKBQ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Jan 2026 11:47:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=avigailx.dahan@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F134260B7B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F134260B7B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F134260B7B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 11:47:49 +0000 (UTC)
X-CSE-ConnectionGUID: spMjS0NdSxS0+ktkrjV9qg==
X-CSE-MsgGUID: lyV5vYiXQLG4CEfsnSY/rA==
X-IronPort-AV: E=McAfee;i="6800,10657,11682"; a="81322363"
X-IronPort-AV: E=Sophos;i="6.21,255,1763452800"; d="scan'208,217";a="81322363"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 03:47:38 -0800
X-CSE-ConnectionGUID: o8x1szFKQamM2GrAWfHhfQ==
X-CSE-MsgGUID: TFCd+xmwTxiStnTxPcP2Rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,255,1763452800"; 
 d="scan'208,217";a="208011341"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 03:47:37 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 26 Jan 2026 03:47:36 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 26 Jan 2026 03:47:36 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.59) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 26 Jan 2026 03:47:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tJFbPjPB5QTsa9YQFH/o+vzpevhffH9i01CyN3E5GYV3VinPQmgAKiRuTuqH3BgGz/PCm4HKG8aa7GxGuYl48I2nVc/BjzNLeXOcXG4NXO+ATn1yyCMcgiGEB6KcSkd3wHDEpQJpcJJoNw40+lXJtrPGIVgn1LfTWGZ7ZR4HwEbDIEx2aVuqOm6dTaqEHQXfOL/3xyePeP76U1oC6bxWu5wZNqGC1b6AXqw+uT7x3gOVggjr+ftXf0i3p9B20lMUwPO/x20sFDLLe5RYQrAHhkPgOfWL/2Y/LDy/iS+vXj+boGRC+d73sse3E88sgINweFqPYHPm4gJRPHS5ylICPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7rKJlCcxdY+ZwYMRj6QpWe1cd2H1Aioe7svNBdjwPis=;
 b=nr9rEK8t5M5JPfHQ24FopmBwzNGa9qvyOSC5LEBmt+9VSzxhSgFWQJ6M1wqlD8tpDDGQxaMJyGTbTUfzJkFh5vgkMh+t85g8N3NRKxJQ8kYrc0eyaEW5kSiePnSRj3aKu0gVWvFlu/D1OUyPumOLQFg+pFOXSbGdY7+HidDba/rsIIUDDeZMmWvemKWLP6GNYilv5Zi50KBHKdG6aHmNmorHt4KcBLPCGzC+f2mSY+KEsCjSA2eeZgO1XVeQf1CBGP0rVInaE9U9neguufvHHqB92Bui/Qc+yz13nw3G5yWpkJv5iy8XwoaoiQhq0XsRgj7dUmpsh7Ha+WST8NyqGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA3PR11MB8021.namprd11.prod.outlook.com (2603:10b6:806:2fd::21)
 by IA1PR11MB6468.namprd11.prod.outlook.com (2603:10b6:208:3a4::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.14; Mon, 26 Jan
 2026 11:47:33 +0000
Received: from SA3PR11MB8021.namprd11.prod.outlook.com
 ([fe80::a8b3:7565:9b2d:6789]) by SA3PR11MB8021.namprd11.prod.outlook.com
 ([fe80::a8b3:7565:9b2d:6789%3]) with mapi id 15.20.9542.010; Mon, 26 Jan 2026
 11:47:33 +0000
Content-Type: multipart/alternative;
 boundary="------------dQ13MYZBwr4nAd25IQgx4RKV"
Message-ID: <f47a7c84-c22d-4dcb-9c46-d852ac4e361e@intel.com>
Date: Mon, 26 Jan 2026 13:47:26 +0200
User-Agent: Mozilla Thunderbird
To: Vivek Behera <vivek.behera@siemens.com>, <aleksandr.loktionov@intel.com>, 
 <jacob.e.keller@intel.com>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>
CC: <yoong.siang.song@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20260120075216.2260333-1-vivek.behera@siemens.com>
Content-Language: en-US
From: "Dahan, AvigailX" <avigailx.dahan@intel.com>
In-Reply-To: <20260120075216.2260333-1-vivek.behera@siemens.com>
X-ClientProxiedBy: TL2P290CA0004.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::13) To SA3PR11MB8021.namprd11.prod.outlook.com
 (2603:10b6:806:2fd::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA3PR11MB8021:EE_|IA1PR11MB6468:EE_
X-MS-Office365-Filtering-Correlation-Id: dee419ce-2c8e-4f89-ff2b-08de5cd0b13e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|13003099007|8096899003|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YlNCbDFtZlhDUWNDWDcwMHJleWcveUwxK0hPRDBEOHp5VXQxbzRBeUQ5am1G?=
 =?utf-8?B?dmRnclRvYmZKdFJFaVRyTGN5cDkxWHUweGo2TG1vYll5NFA2cEFsNWJFdjRO?=
 =?utf-8?B?d3FWWUZ4QWpNS3lMMWFqeWs1Qm5qMmM0SU8zVjdnZmlXYkRWdTRsbi9TUnRt?=
 =?utf-8?B?TVJ6Wmg4eTc0NTlKK013eVR2ZGZJOVdmM3ExamZPblNVd2hNUktLQkc5ZFBy?=
 =?utf-8?B?TDhzT1pGYzZESUpzR3NyaXVWZ1Ura3BHQnJnaHNJMkI2cnJHZ3Z5SU9tdGc4?=
 =?utf-8?B?R2JXUkxCQzkxSDVIWkJ3YlhmY1VEWTF4UjlDbWhxRG1tdnBFVi9qZ1BKVXBl?=
 =?utf-8?B?MmxpRDhLckFtRDhJMVBtYTMzSVhsKzlwd3R1aS95ckJFeVBiSC9kUFQ0S2kw?=
 =?utf-8?B?NzdUcnFoRGdSN0tESXdobmRRQXZBQS9yWkhPRlNac1BoNjhZR1VwVml3T3BX?=
 =?utf-8?B?M1krbFJDaGtRTktlcUVac1YyQmpvdWF3em81dnN1TEtCYXdseFJTMEVTWFYw?=
 =?utf-8?B?cjE5NUFzWVdlUUxZb1hNS0lzOVJMUE5nWkJJZWdSNGlnUGkzbmRlOVRCRGt5?=
 =?utf-8?B?WDRKakI2V0pMVnZwU3ZUWEZzcFBQSjZhWVNHZStNalNoelpoZ2J1dGx1aDNM?=
 =?utf-8?B?KzRwdEZWSDFVVlltMGlrZFNhZHBycC9rOURMdHFJWjU1NkVYNktReVcwcWdH?=
 =?utf-8?B?Qy9xaGpZUkpZTXhaMDBsVHhNVjl3dHplenVuODA5Vmh1bFViNndCY0ZTVTFj?=
 =?utf-8?B?ZGttbkZtZ3gwd3pzcUFncEx4UjRkb0FOR05oRDdaZ1dCTk1oS0JIQktXVmo4?=
 =?utf-8?B?N20xODg2NlFOaVlOSzFPemNkZ04zRnNZLys0Mm5ZZHZvNjVuL2ZWY21MTVMy?=
 =?utf-8?B?ei9PQ2kwdkZnc3duTDltV0VBZUpMd3NwUzVtSUh0QzdnejdPMnZYblUxZlBl?=
 =?utf-8?B?S0M1anlGQ2tZOEJLbGJXNjU0QjQ2RGN3aWhLSi9yZEIvTnNGT1B2UDlZMVlU?=
 =?utf-8?B?WXRaNjhGNUdMMS9UZ0FaSkQ2OTBMTGpzL3JBUzVXcXV4cG91UUwzVmMrV1Yw?=
 =?utf-8?B?bVlid1h0QkpLOS9OWmxMOW9sVVhiMVdjdGhoU3ZndDRRY0ZkZG1zREg2cWZo?=
 =?utf-8?B?Z2NPaUZrK2RKVllUWW80NCsxZGUyMzFNU0Nvby9XRXpyT2xHL1JPZ3p6TFlt?=
 =?utf-8?B?SmlSNUxJRHUxYVQ2V3FWWngvYmJRWUlYdGN6UnJKSkQvckFlallVZjkrc2JH?=
 =?utf-8?B?NG1mNjBiUWE1NXEvNFpxczFlQWRweXJkS1JDRGJDd0VIQSt0OG9PK294YXUw?=
 =?utf-8?B?dTMxYmZuOXVic3RuM2Irb3c1MHpHd0NyZWdMeHJUSnkvc3JYTkRzYVBJWWFo?=
 =?utf-8?B?L3pyd1FIejVNaG03TXJHN05tSSt5Q1JseUZnU2VSdzJyMnRWWUtJQk5nL25M?=
 =?utf-8?B?WU5BSVhEYUVaNDFVOG1LTlQ4NTBaRWtPZDlINm5mcUpqeHk2SlI0OCtUaFBn?=
 =?utf-8?B?SG9pbGMzTVVjSkY4azdCQmVENFJqTS9mb3ZBWk13ZGJyWmlXQktQb2VNYXBU?=
 =?utf-8?B?MTdzOXgrMWhUaDJXcGpvZGZnRTFBOXBmVkk4Z01GYkQyNE1RUWlYWFRiTktN?=
 =?utf-8?B?c05STE5FMjVob0VIUlo5Rk9aQ0xaaS8ra1hXLzBSSVArdnBCRGcrdW9pMjBZ?=
 =?utf-8?B?NUdGeXhndDQ3bUN4dFRva0R6QTdmRWhBelY0aVJNRGlyeGVCVWk2NFhEY0RP?=
 =?utf-8?B?R09JUW5IcHR5NHY5SmFGYUsvTjJWdXRlZGNydzhsc3hQcldIM0dsT3FNOStu?=
 =?utf-8?B?QXpvc05lTDVUUVRQU1J2NkZhQWtGTDgvOGZTUEZJZk5rcTI4SHVVOWR0K2F0?=
 =?utf-8?B?RThtUHdiQ0hpOEhLOGVXaEZCWDExOGhmVXhaSVJyTDlrcUpja3ZiWHpWclRE?=
 =?utf-8?B?dnczaW1hNHN1ekJtSVZPYzQySGc2Q1pacTJ5Q0J5dk8rbTlCU1R5RmVuQWZk?=
 =?utf-8?B?SEdYQnRjMHI0aWptYXk1STI1ZmpHOHpCUmpmMUlMb1lhYVpEVzdnNXo2Qkhz?=
 =?utf-8?B?aU9XNG84ZGlaQVRObXRWUnA5eUxRdlp4M1Y4WERuUjFqNmZTa3UxMXF4M1Y2?=
 =?utf-8?Q?zzyQFbXnqITJUOI6f9lju+OmK?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA3PR11MB8021.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(13003099007)(8096899003)(7053199007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bXFOVUJGbFcxWnNmdnRYWDR1eWdHdUtYS0VMOFhpRVFsS2l3TzFMWVFRclpw?=
 =?utf-8?B?L3oyanV2VjIyZlN4Yk9jajZWMFFweVY2dmV3TDJ1d3BNM3N1bWxxcWFSMHd5?=
 =?utf-8?B?Q09NelF1dTRnL0RNMkdLSzFCeVhyQ0RoMjROalViMit6TWlydk5Kdzh0cEpG?=
 =?utf-8?B?YzhVeXVQTkJmYWQ3OXRCVWp1Yk1FZml3Z3NFeGI0d0p0aVZkdjFZazNacmtW?=
 =?utf-8?B?a0xUK2ZYbTNBS3pMaWhBeWtRbmYwNWlPQTB5VW1rWXhsbEc5WmsreCtnOWFo?=
 =?utf-8?B?M08ycDB6MWs1d0tKNmxxMi9lei9BbzhVdkZoKzZDSjFyUUxYajFiU0Q4M1U4?=
 =?utf-8?B?RXVaMUFUdkxVc1c3dVN4THhWK3dHL25mUjh2YTJjSnA4b2E4QnNTbGQwVHQ3?=
 =?utf-8?B?RjBXeTdaaHdJZURvck5BR3VGL3ErL3E5Q25JVHRTUzlBYWhwa25jdHFPVnhL?=
 =?utf-8?B?Rnc5eEFwckpLQ0ZpamM1STRxMk5XL2pCOVJqa2lGZjlvc1h3SHZ1ZHJuS3Fu?=
 =?utf-8?B?b2RtUFMya1JnZ3BuK29Ia0pSWjF1Sms5K3dJNWJ5R2FVYWl6cFF1RkdsNTNB?=
 =?utf-8?B?cnhzcHk2M1JjeVJEVjdqQjU2SXBjY3VhU0NCSEV2RGJ6WnQ0ZlgwL09adHFZ?=
 =?utf-8?B?aVBNU1l5dDVRSWttU3hpRndTTnd4STZhbWdwZHdsZzhrZ2JteDQxWjByMjlV?=
 =?utf-8?B?WmxIeGR6U0VQbHdtM2dGWXpqM0ZCQVlLZlh0V0duWlJXMHBMSzJoaTUzK1Rx?=
 =?utf-8?B?a1N3K0wwalV6SDBTSTVaNGRWNG9uTEZKODRNZzhlZmVPblRiNnRpNkxJL1pj?=
 =?utf-8?B?Z2dNcmFzRFZQSDhpZ1FVV25oYmZqWUZPWVpuMkpGR0orRHlQbDBlS0pjMkFP?=
 =?utf-8?B?UGpLdWh6WnZ5dWc0OWx3d0gwUzlwbUsyTTdTNTFaNW5kSURMWnczT01WSytV?=
 =?utf-8?B?V3Q4UGpIRm5uTzh4cnNHbVNpNzdsOHdaM2ZsVFliWUJTbUtFMnl6SlQ5dkdD?=
 =?utf-8?B?M2lOZGIvNVQ3SWdQOWdBVFlsNXNkQk5HbDJOZGNnek4wei81UUxOYTllSVp1?=
 =?utf-8?B?elJkVldGVmtQQVY4S3N5S3JVdEVqZ1pRNGxGanZBL1RXUVpuWVowTlROR3Rw?=
 =?utf-8?B?WmM3REpHMzBPUUdNcWpuajFWV1NRVHF3SWV4NEFreldNenlhQW44bm1JNkZH?=
 =?utf-8?B?NW9OQTdZSy9wRzFXV0c1ODArTWcwdjRwK3dBQm5pZTl0dlRITjZUcTNKV3l1?=
 =?utf-8?B?NDJSVU1Db0gyajNrWCtUWWw3QlpRcGlXY0cyZWYzRUZjNXpWalVSYm9pbU1I?=
 =?utf-8?B?SVBxUVAzWm1hTlRpTmtldjg5Y3UrWGYwTWdBRTFiVjVkZHA2V3F5dEJZaDFL?=
 =?utf-8?B?Z1MrNURWaGxyZ1hHQ2oya09LTXFSVCs0TWwydUZ6UlE2SzhIaUVBb1ZLZzUr?=
 =?utf-8?B?SjVVOW0zS0NIc052N2FqQm1MWkFUWTBhSDM3dkNoVWVoTXZSSlRaeTVXWGNH?=
 =?utf-8?B?ekMvMFk2elU0cXBXZWlsY2k1OWdLdi9DUElmQmlvdXRSY2RBSmlrQTJaSU1U?=
 =?utf-8?B?bVVtV2pkbXhLakJaK01BZFlJWjdhbmFHK1F0US9YckJnVHpMNWZzekwzK2ox?=
 =?utf-8?B?cCt6M1pSMUhKRHFmUUxwYjVGUWxGaG43NFFwVllMSFJYN1hVTCs1djVvNFpS?=
 =?utf-8?B?U3NaS3RIei9FTVdXT2ErQ3d6Wmw5ck9iangrRDkzWDBZKzVRMm9uZlIrL3lw?=
 =?utf-8?B?N0NDaE9zaVB5Y2luQmFDSnNsc0xHbWFjeHZUY01Jbzc2a1I0QjBGR0p6cDJ3?=
 =?utf-8?B?NytrdWxSR3J3am9aTzh5MWpxTjEvS0RrOUVRMFRnR2dvWXJSYndWWkh3S2lM?=
 =?utf-8?B?VDVhVi9HTUk0OU1uMHdrdCt0VXdBMm1ablduUUJTUGl6TUEvaFUyWlUzbFNk?=
 =?utf-8?B?ZVQ5OHd5aFo5YjExWTA5aGowYzgxUTVucS83ZFd3L3Riam1nUkd4a3B2TVYy?=
 =?utf-8?B?bGFmbmlkY3oxM2paUk11K1hCQUZqclAvNzFIbFh5ZDVvRnZKTHdVUldiVW9H?=
 =?utf-8?B?eWYrVGlzWWY5U28xSVpiQ2NFYmJVV1hDdUpiTDNZYndWYzhQa3lwNWF5QStE?=
 =?utf-8?B?bU9PU3BIZ1g5TldqZThIRnZjQ0dRcnZwWmZqUDdqWXVxTjAxRk9QM2NBOGZP?=
 =?utf-8?B?OHFFeU1QaEJjeEp3SSszKyt1bWtjZnpidFZKOUwrSjM4bnBmWFkyVTJSVks3?=
 =?utf-8?B?a1RkVG1tL0YxN0VNdkx3aFZ5aDBoY280eXhoWXBhNURnVkpOZDJDTmYvRlpa?=
 =?utf-8?B?QWxVOElZVkhtSGNlU0d5bGZYVEs4V0tuV1pGdzMwQUIyTjVFaTcxUT09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dee419ce-2c8e-4f89-ff2b-08de5cd0b13e
X-MS-Exchange-CrossTenant-AuthSource: SA3PR11MB8021.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2026 11:47:33.2678 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GLwk5ucizZq8EGr2hJIpO6N2PEVfLjDi4MoOZBfSxf0S6s32zdBOtExPhjnKpkAuZsIKmhZgqHaUaddZOpskeL26HH3vleVvKLFXnKrFOD4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6468
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769428070; x=1800964070;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=+2IMX/YQbh2ug0xhUcwaEzAvrdWoj4nqiCblUKRPxjY=;
 b=Ie14iBD0A8h5MRW5GJvHnnR6ufQ+Zit/xpQYYKLAvYvxxq3UwwX9iyVA
 pbNkLjr8GeAZzFw7sZWw+3ig0pLtRgMJHNSFfTr+tAhvk6EROlioliVGN
 /F7hhfxOeq02m2L56FEpE9Z9cZ12yfsIq5QKNy8Kfe9u4HwCOTI5l90Ks
 oZfnqACPCCUsvVi5+eOGmANlhlBtTzliT3N/JAb/fNolwTYL0wWi2DG2J
 HDEHkNF+WvcluyWuVaVbnRITDHXXfjLtAKc9MNsXZc8ez+Z1zE+kg6fIx
 RATlp+c+UVnIEx67JlYmRkbQAYpBH9wQZmpuzOk3wsgjXeEuABAUJQXr4
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Ie14iBD0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v11] igc: Fix trigger of
 incorrect irq in igc_xsk_wakeup function
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:vivek.behera@siemens.com,m:aleksandr.loktionov@intel.com,m:jacob.e.keller@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:yoong.siang.song@intel.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[avigailx.dahan@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[avigailx.dahan@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,siemens.com:email]
X-Rspamd-Queue-Id: DEAD387CE8
X-Rspamd-Action: no action

--------------dQ13MYZBwr4nAd25IQgx4RKV
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit


On 20/01/2026 9:52, Vivek Behera via Intel-wired-lan wrote:
> This patch addresses the issue where the igc_xsk_wakeup function
> was triggering an incorrect IRQ for tx-0 when the i226 is configured
> with only 2 combined queues or in an environment with 2 active CPU cores.
> This prevented XDP Zero-copy send functionality in such split IRQ
> configurations.
>
> The fix implements the correct logic for extracting q_vectors saved
> during rx and tx ring allocation and utilizes flags provided by the
> ndo_xsk_wakeup API to trigger the appropriate IRQ.
>
> Fixes: fc9df2a0b520 ("igc: Enable RX via AF_XDP zero-copy")
> Fixes: 15fd021bc427 ("igc: Add Tx hardware timestamp request for AF_XDP zero-copy packet")
> Signed-off-by: Vivek Behera<vivek.behera@siemens.com>
> Reviewed-by: Jacob Keller<jacob.keller@intel.com>
> Reviewed-by: Aleksandr loktinov<aleksandr.loktionov@intel.com>
> Reviewed-by: Piotr Kwapulinski<piotr.kwapulinski@intel.com>
> ---
> v1:https://lore.kernel.org/intel-wired-lan/AS1PR10MB5392B7268416DB8A1624FDB88FA7A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM/
> v2:https://lore.kernel.org/intel-wired-lan/AS1PR10MB539280B1427DA0ABE9D65E628FA5A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM/
> v3:https://lore.kernel.org/intel-wired-lan/IA3PR11MB8986E4ACB7F264CF2DD1D750E5A0A@IA3PR11MB8986.namprd11.prod.outlook.com/
> v4:https://lore.kernel.org/intel-wired-lan/AS1PR10MB53926CB955FBD4F9F4A018818FA0A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM/
> v5:https://lore.kernel.org/intel-wired-lan/AS1PR10MB5392FCA415A38B9DD7BB5F218FA0A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM/
> v6:https://lore.kernel.org/intel-wired-lan/20251211173916.23951-1-vivek.behera@siemens.com/
> v7:https://lore.kernel.org/intel-wired-lan/20251212163208.137164-1-vivek.behera@siemens.com/
> v8:https://lore.kernel.org/intel-wired-lan/20251215122052.412327-1-vivek.behera@siemens.com/
> v9:https://lore.kernel.org/intel-wired-lan/20251220110009.137245-1-vivek.behera@siemens.com/
> v10:https://lore.kernel.org/intel-wired-lan/20260117150753.2088857-1-vivek.behera@siemens.com/
> changelog:
> v1
> - Inital description of the Bug and steps to reproduce with RTC Testbench
> - Test results after applying the patch
> v1 -> v2
> - Handling of RX and TX Wakeup in igc_xsk_wakeup for a split IRQ configuration
> - Removal of igc_trigger_rxtxq_interrupt (now redundant)
> - Added flag to igc_xsk_wakeup function call in igc_ptp_free_tx_buffer
> v2 -> v3
> - Added 'Fixes:' tags for the relevant commits.
> - Added reviewer
> v3 -> v4
> - Added reviewer
> v4 -> v5
> - Updated comment style from multi-star to standard linux convention
> v5 -> v6
> - Resolve formatting issues highlighted by reviewers
> - Try to include version histroy as defined in netdev guidelines
> - Included review suggestions from Przemyslaw
> - Added reviewers
> v6 -> v7
> - Included review suggestions from Przemyslaw missed in v6
> v7 -> v8
> - Modified sequence to complete all error checks for rx and tx
>    before updating napi states and triggering irq
> v8 -> v9
> - Included review feedback and suggestions from Tony and Siang
> v9 -> v10
> - Introduced a simplified logic for sequential check for RX and TX
> v10 -> v11
> - Improved explanation of implemented logic in comment block
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 34 ++++++++++++++++-------
>   drivers/net/ethernet/intel/igc/igc_ptp.c  |  3 +-
>   2 files changed, 26 insertions(+), 11 deletions(-)
>
Tested-by: Avigail Dahan <avigailx.dahan@intel.com>

--------------dQ13MYZBwr4nAd25IQgx4RKV
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 20/01/2026 9:52, Vivek Behera via
      Intel-wired-lan wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:20260120075216.2260333-1-vivek.behera@siemens.com">
      <pre wrap="" class="moz-quote-pre">This patch addresses the issue where the igc_xsk_wakeup function
was triggering an incorrect IRQ for tx-0 when the i226 is configured
with only 2 combined queues or in an environment with 2 active CPU cores.
This prevented XDP Zero-copy send functionality in such split IRQ
configurations.

The fix implements the correct logic for extracting q_vectors saved
during rx and tx ring allocation and utilizes flags provided by the
ndo_xsk_wakeup API to trigger the appropriate IRQ.

Fixes: fc9df2a0b520 (&quot;igc: Enable RX via AF_XDP zero-copy&quot;)
Fixes: 15fd021bc427 (&quot;igc: Add Tx hardware timestamp request for AF_XDP zero-copy packet&quot;)
Signed-off-by: Vivek Behera <a class="moz-txt-link-rfc2396E" href="mailto:vivek.behera@siemens.com">&lt;vivek.behera@siemens.com&gt;</a>
Reviewed-by: Jacob Keller <a class="moz-txt-link-rfc2396E" href="mailto:jacob.keller@intel.com">&lt;jacob.keller@intel.com&gt;</a>
Reviewed-by: Aleksandr loktinov <a class="moz-txt-link-rfc2396E" href="mailto:aleksandr.loktionov@intel.com">&lt;aleksandr.loktionov@intel.com&gt;</a>
Reviewed-by: Piotr Kwapulinski <a class="moz-txt-link-rfc2396E" href="mailto:piotr.kwapulinski@intel.com">&lt;piotr.kwapulinski@intel.com&gt;</a>
---
v1: <a class="moz-txt-link-freetext" href="https://lore.kernel.org/intel-wired-lan/AS1PR10MB5392B7268416DB8A1624FDB88FA7A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM/">https://lore.kernel.org/intel-wired-lan/AS1PR10MB5392B7268416DB8A1624FDB88FA7A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM/</a>
v2: <a class="moz-txt-link-freetext" href="https://lore.kernel.org/intel-wired-lan/AS1PR10MB539280B1427DA0ABE9D65E628FA5A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM/">https://lore.kernel.org/intel-wired-lan/AS1PR10MB539280B1427DA0ABE9D65E628FA5A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM/</a>
v3: <a class="moz-txt-link-freetext" href="https://lore.kernel.org/intel-wired-lan/IA3PR11MB8986E4ACB7F264CF2DD1D750E5A0A@IA3PR11MB8986.namprd11.prod.outlook.com/">https://lore.kernel.org/intel-wired-lan/IA3PR11MB8986E4ACB7F264CF2DD1D750E5A0A@IA3PR11MB8986.namprd11.prod.outlook.com/</a>
v4: <a class="moz-txt-link-freetext" href="https://lore.kernel.org/intel-wired-lan/AS1PR10MB53926CB955FBD4F9F4A018818FA0A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM/">https://lore.kernel.org/intel-wired-lan/AS1PR10MB53926CB955FBD4F9F4A018818FA0A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM/</a>
v5: <a class="moz-txt-link-freetext" href="https://lore.kernel.org/intel-wired-lan/AS1PR10MB5392FCA415A38B9DD7BB5F218FA0A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM/">https://lore.kernel.org/intel-wired-lan/AS1PR10MB5392FCA415A38B9DD7BB5F218FA0A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM/</a>
v6: <a class="moz-txt-link-freetext" href="https://lore.kernel.org/intel-wired-lan/20251211173916.23951-1-vivek.behera@siemens.com/">https://lore.kernel.org/intel-wired-lan/20251211173916.23951-1-vivek.behera@siemens.com/</a>
v7: <a class="moz-txt-link-freetext" href="https://lore.kernel.org/intel-wired-lan/20251212163208.137164-1-vivek.behera@siemens.com/">https://lore.kernel.org/intel-wired-lan/20251212163208.137164-1-vivek.behera@siemens.com/</a>
v8: <a class="moz-txt-link-freetext" href="https://lore.kernel.org/intel-wired-lan/20251215122052.412327-1-vivek.behera@siemens.com/">https://lore.kernel.org/intel-wired-lan/20251215122052.412327-1-vivek.behera@siemens.com/</a>
v9: <a class="moz-txt-link-freetext" href="https://lore.kernel.org/intel-wired-lan/20251220110009.137245-1-vivek.behera@siemens.com/">https://lore.kernel.org/intel-wired-lan/20251220110009.137245-1-vivek.behera@siemens.com/</a>
v10: <a class="moz-txt-link-freetext" href="https://lore.kernel.org/intel-wired-lan/20260117150753.2088857-1-vivek.behera@siemens.com/">https://lore.kernel.org/intel-wired-lan/20260117150753.2088857-1-vivek.behera@siemens.com/</a>
changelog:
v1
- Inital description of the Bug and steps to reproduce with RTC Testbench
- Test results after applying the patch
v1 -&gt; v2
- Handling of RX and TX Wakeup in igc_xsk_wakeup for a split IRQ configuration
- Removal of igc_trigger_rxtxq_interrupt (now redundant)
- Added flag to igc_xsk_wakeup function call in igc_ptp_free_tx_buffer
v2 -&gt; v3
- Added 'Fixes:' tags for the relevant commits.
- Added reviewer
v3 -&gt; v4
- Added reviewer
v4 -&gt; v5
- Updated comment style from multi-star to standard linux convention
v5 -&gt; v6
- Resolve formatting issues highlighted by reviewers
- Try to include version histroy as defined in netdev guidelines
- Included review suggestions from Przemyslaw
- Added reviewers
v6 -&gt; v7
- Included review suggestions from Przemyslaw missed in v6
v7 -&gt; v8
- Modified sequence to complete all error checks for rx and tx
  before updating napi states and triggering irq
v8 -&gt; v9
- Included review feedback and suggestions from Tony and Siang
v9 -&gt; v10
- Introduced a simplified logic for sequential check for RX and TX
v10 -&gt; v11
- Improved explanation of implemented logic in comment block
---
 drivers/net/ethernet/intel/igc/igc_main.c | 34 ++++++++++++++++-------
 drivers/net/ethernet/intel/igc/igc_ptp.c  |  3 +-
 2 files changed, 26 insertions(+), 11 deletions(-)

</pre>
    </blockquote>
    <p><span style="white-space: pre-wrap">
</span></p>
    <p><span style="font-size:inherit;">Tested-by: Avigail Dahan
        <a class="moz-txt-link-rfc2396E" href="mailto:avigailx.dahan@intel.com">&lt;avigailx.dahan@intel.com&gt;</a></span><span style="white-space: pre-wrap">
</span></p>
  </body>
</html>

--------------dQ13MYZBwr4nAd25IQgx4RKV--
