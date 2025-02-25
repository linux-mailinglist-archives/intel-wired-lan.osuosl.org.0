Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 39ED3A442D8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Feb 2025 15:33:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ED99360A40;
	Tue, 25 Feb 2025 14:33:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fAhIQA7rExfT; Tue, 25 Feb 2025 14:33:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CDE116090A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740494032;
	bh=nIrEJfGICaAcqyM7d5teCxeyU9CuPN/bpUxnXot32bo=;
	h=From:To:CC:References:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9tFq7pGmpqmIANlbAyCB2gdZMBrUkHR5YX3t7opaQvqCgpaiSrUknzm9B0OOulm81
	 Wx8BEM8cd1sfeggAVMeoHjw1yHqfOXGjBcWXvmU6yUVEKfM83vfDplTCUUFou6u8fy
	 fpQ+PzKdskzSl3Dzl5DtqpdRfrfSFKnejghqF9sNbbq2woNveuJHHdi/di7Ksk5Icy
	 OPfBEcmjkRAmDeC1dH3O94f5IiymQNbkzOxhS70i0tqSajDNHOj2C+tUnHEIchpCO4
	 E2eNAbGPoEqdHTcvwvFJwDALrGuZFaTGCZ+3pQWMIl8f6kUwqMSGt3rryW5s8x7KVU
	 ncQrsrfQOaPow==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CDE116090A;
	Tue, 25 Feb 2025 14:33:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id EAEDA2019
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 14:33:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CF32381EC2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 14:33:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ufV7uPZpoqgN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Feb 2025 14:33:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B3ED881ED7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B3ED881ED7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B3ED881ED7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 14:33:49 +0000 (UTC)
X-CSE-ConnectionGUID: 5nJkRqGeQ+GZp+CpqloKZQ==
X-CSE-MsgGUID: h8TbBsZYQrCa5fr/lvWDvQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="52724484"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="52724484"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 06:33:49 -0800
X-CSE-ConnectionGUID: A9vavK6eQ1iR0FqB0R8Qrg==
X-CSE-MsgGUID: wEBHlFffRYuCT2L5oIdmoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="116259119"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 06:33:48 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 25 Feb 2025 06:33:47 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 25 Feb 2025 06:33:47 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 25 Feb 2025 06:33:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Udt+S1KyUqTUAUvAFqBC/Wn3aZLLvAiVd7Tn0W9C/V0oMDDt+i9Z+2buhx5A1rDvFl5O4pQyM38FI5bVPseR5Z76ogHMTZCK0EMmR1CH54BhjgDaSHKQjiJohyg0eYYRNwVlECgJI2OHrDJp6jW8dHkyoa+Fpb7DTGyBtOXJ2C3McyGmeRMIM75Ky/yzI7VMThegzP4AFnTnEaqz05aXczRjFXUsWrMw6pgqZbaxbLd/VsIxs1OcAnOmCiHjfeKrwnuMawSQy5bJdw7g8fQkc0K8hZDSNibAmaGqifrkCD6wPC7x22peHF6NASspNpenMQsTi0vo/6qr/jhID8Ot0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nIrEJfGICaAcqyM7d5teCxeyU9CuPN/bpUxnXot32bo=;
 b=wY3DJqTZTHfgwaHI/da/NR/chMwBjX7/gcoWT4xwylui3cNTERUNyQbpwz/r83ejewujeIL3N+NLpCNOOTj+9QPerBGieEkAxMxl6Ads/uqiA1/zrZormTB6q3QjiM32z9LmcOFHQvpSKYznXlO9UhVzq7jOzkMEhTsywQyMeSxIQQJVTrp4E4mXtYr81ZUnm9l8wqd/31atAI7nDbXC8blIOnoDyeo0+tFttxzp0V8sxXpfkLycVYfo4HXjCoMWTA4GxIdaZvsiUDNZcClyeIW6MaqhyGfXgHZEAzHlwHKKHH9X+cfe5wbuaEYKm5QjBe3OYeuJLs9AZAGGvxh7HQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by SJ2PR11MB7456.namprd11.prod.outlook.com (2603:10b6:a03:4cd::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.18; Tue, 25 Feb
 2025 14:33:44 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861%6]) with mapi id 15.20.8466.016; Tue, 25 Feb 2025
 14:33:44 +0000
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: <intel-wired-lan@lists.osuosl.org>
References: <20250224101218.1915949-1-vitaly.lifshits@intel.com>
 <d18bf142-9185-4c81-8f9e-67f772bbddf4@molgen.mpg.de>
Message-ID: <8f661265-374d-e7c7-e16f-db07bee529f4@intel.com>
Date: Tue, 25 Feb 2025 16:33:39 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <d18bf142-9185-4c81-8f9e-67f772bbddf4@molgen.mpg.de>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TL0P290CA0007.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::11) To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|SJ2PR11MB7456:EE_
X-MS-Office365-Filtering-Correlation-Id: f05795c4-8096-44ad-8239-08dd55a96804
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OE9GSldOWjZGWmFpQlpHZzZvNFR2R0Z1amJEM0tIQWhySUVJNXdaNGxjdjV2?=
 =?utf-8?B?UVZmb2RRWFdncDlwb0NYa0Z1RWY1VmdoaHBXNjdSK1VhUkFKNkluUEduaFhl?=
 =?utf-8?B?UzdDMGVLVVp3ZEVVcno1QkVCZ3lsUWs3dTFaS2NPaDYwMjJvbWhtejhWaDFW?=
 =?utf-8?B?ZWZUS1BnbCtZWW5HS1ZHOE9uQUtuL21rQTcyRjFUSjhUNUVXVk41dGdFckVi?=
 =?utf-8?B?Y2ZGbXpxcktyRzBBSXh2bXdIN0JWSytMTk9LYnRidDgwOE5ldmplRGo0Y2Rt?=
 =?utf-8?B?bHlmMDZMSC8vMzJPdzJ3c3d3MG13YTNYVVhtb1R4a2w5SG81bWZWSysyUEtS?=
 =?utf-8?B?VG5KWURPb0JCT0N2UC9ZOG82ZzJ5Q1BxWnZ4UDVPTGRtNjR0SjRYWTJDdmU1?=
 =?utf-8?B?U3huaEZxSitxREJ3akgrcUJSbElod2dHRjNtZXhPaUc2WWVvNXhEVGNTQVhn?=
 =?utf-8?B?RFYzdUw3dHNQUk8xc3ZKbjRNOUZ3VW92K0FoWGpsTi91Nmxjd1Z4Y0pjUE5K?=
 =?utf-8?B?QmJXQ05iRC82V2t2ZXJ4TjBtc0diME10Y3ZVb2tITDN5N1IycFFrV1dwOGpq?=
 =?utf-8?B?NFRudHRVa0lhS0Y5Wm5IdXFYbi9GNEZGYTE2YURSZ2t6bG1HdDZ0OWl3WlZs?=
 =?utf-8?B?OGFxNENaMHJLM1JoMFV2ZjFnanBPWnhvOW80NnhKc0tOV2FORDFyU3hsb1My?=
 =?utf-8?B?WDhNZnREMEFOU05LVXRwZkV2ZHc4YnUxaEFUenhSUjRSR2VURFU2anE1aTN0?=
 =?utf-8?B?NWlpY1hHT2dIK3NtcHQ1YnJzUHYvc2FqWnhYL21QUjBwWjQ2WXZSaFhxRFZZ?=
 =?utf-8?B?bTBnZkFKc2lFenZPeG03ZHpVTW5pN2JqVnVwQ010YVZZOUxxazdGRHdUV1hz?=
 =?utf-8?B?Nm9naEZMVFlBL0poS3A5UUNTclI3VW1Tc2dEbEp3UTFoa3NyOGRaNjZSZXho?=
 =?utf-8?B?V0Mvc29FNTV0bmVrK0FkUENqVURJNHluRFpETHNVakJSUkI4V1o1bndrOVk2?=
 =?utf-8?B?K1VDVnNPR0VYS3VPSWhGYUk1RWlaK1c0WXIvN3RKRXY5MGtvd3ZhcTE1L2xz?=
 =?utf-8?B?OUpMQUVzdmxpZS9OMVhZTUJsYVlGdndaa1hNODdZU3lUQnlQSGtQUXVQazlk?=
 =?utf-8?B?NUxkTldTVDRSQmNpckJnYjZ1SVRYYnJCbkxKQXRZMzR2TjA5K2ljRmlnUlVI?=
 =?utf-8?B?OGQzYlN5Mk01aUpiWHNseVllV1VJczVFWlVVUUgrZlZjUnRqWm1mMzV0WS9q?=
 =?utf-8?B?S0crYzU5OXF2KytoWEc2L2dseENzWTJhV1k1cGNvSW1IWWg0WmkyMFRMS2Nt?=
 =?utf-8?B?NUl0RXd1cGFJMmp0RmtvSjZqdGdoeC9JdXZOY3lxaDVMMWIvUEZGeGVEUEJR?=
 =?utf-8?B?VTdiL293V2xPSlRLMjlFRVdrL2grTzBudEtwdmdQQ2dqWHk4RTQyOUxuZDNL?=
 =?utf-8?B?NDhwbkFOU1Jtanh4OEtmYzNEZWVESE10djZiTHErQlppamp0eXlwTmxFc25X?=
 =?utf-8?B?Ukc0Nkx3aE5RV3BqTXM4MkhRNG5rT0lCU3pjZXhkVFQ1R0wzdDJkL0lzeTcr?=
 =?utf-8?B?UUZzb3U0N29DRVl4aGVlT1I1OHVJZFVwb2hIMWhIRkYvVGZob3Q0cFdaRGw3?=
 =?utf-8?B?Y3I1MHp5L0Jpc3RNWG5rU2dVdTRYVG53MTVRTnEwQWY2aDIyYmJrQTY4SWd5?=
 =?utf-8?B?dU80ZGN4dzdhN2t6TGFqbFFmbXBWRkVjQngvQUVYZ1N0L2hZU0RxaE13Sk1j?=
 =?utf-8?B?S1hPcFpyNlZLclRVQVlmVUdlWVRybXEvMjhpU1AzMGdtWUpDRURTYkpRZ0R6?=
 =?utf-8?B?K0JveG1YalBmQ2U0NDlvTzBPSS8wRGk3d1FqdVM0OWtlWEw0VmFGVTE0Sjl5?=
 =?utf-8?Q?4SVekaKPx09qi?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NHMwUWtwWnNBS3BnczVOSERLWk1tUFZkakVHQlRpdlRhNXd4NmRhQUFMODZQ?=
 =?utf-8?B?YUR1Y2tVeE9Na0c2UjkyVzNGRk9LZWxCVGdqcVFVVjVqcVpWVC9BU0t4djky?=
 =?utf-8?B?STNoMFdNeUk5T1d3NEszY3dhUzN4RmxaY2RTcEUveVZ0WWtIaVp6UTR3ZHN5?=
 =?utf-8?B?VDFHT1dXV1BkMTVZNWh5bHMzUWZ1cU5oTjFkeVcxVmpUaFgzYnNMRENTZ0RI?=
 =?utf-8?B?ajk2UVZmUHQycmpVd1RUSWFobHd5Y3poY0EvekpNaURTK0ZiRGFqNENnWWpB?=
 =?utf-8?B?TmZUa0Q4QVRqNGxVNkF2VUR0SzFES3ppTUs5cnUwSC9RdXJaRm04eGo1cVJW?=
 =?utf-8?B?S1dBNDNITDMvcWhZbXhuUEt6cW4xMzZObDVQNm9TVXBLdDROU01kZWJhakhi?=
 =?utf-8?B?NVZ3WjlHVFVsNnBkMjNPM29ENmk2SFRidnlhdVdUY0hBR3BmQWJ2T3YwUWZB?=
 =?utf-8?B?dUw3OVFQRkY4cytsaFQ5V290V2laUW9wRFluYlRkelYwd3NUSzhYd2tIU3h3?=
 =?utf-8?B?RmVNQU1UTElMNCtUK3RSUGpUK0RTM00rMEV3QlJQZTNwSWZvNzNMckJDMEJy?=
 =?utf-8?B?WkVOZTVVbWNvUUkwQjZrcTEzbzJkcDNQQU9qMjNBdHZKeGc2S08wOFEwcUhZ?=
 =?utf-8?B?VXQ1ZUJDZ3g1NXdacC8yUHNiL1FmU29xRmZ2WU1kWmlSUjBkOHJmbzREZ2xt?=
 =?utf-8?B?eUV4SjRwSllNSW9qMHMyakU5emVob2lSVFdyQXZpT2d0RmxaaWd5Z0MvclpT?=
 =?utf-8?B?Z2s3L2U2RTRHRWFHdnBadnZiWE5YZTArb2hZVW9hYmNQZ0ZLZDBONkZXV1NQ?=
 =?utf-8?B?Z2pJdVd6T3FGTjVNNnVrTFNFMUVPbFE2YjBsNm1hQUZVNFVBL3pUc3VSRmg4?=
 =?utf-8?B?M2ZzTXFHUnNORGh5VmpBZHNTZXRtOWxZdmpIa2g4cjFrQWorZytjWTJyaEY4?=
 =?utf-8?B?WFNJa1hjdmZEY21VM2ZpZm1vZXNobnk1K20yRTdXSXNzTmNWMUQ2MkQyMVFB?=
 =?utf-8?B?MnF0U2RMVHI5YVVZbTh0NHg3LzNXclJKREFnNXVkRTBXWjF6Y3pRcmloWXc1?=
 =?utf-8?B?V205MCt6SnJEa0FENzlmRUNYMnl6dGFwWkErMDViaklTRnBCVVZHOVA0bVZL?=
 =?utf-8?B?YWpwWUwvcWk3TzdQbExva2QrL0pia2d3cWhsNnlnVGk0Y21jN0hvUlBMZkg5?=
 =?utf-8?B?QUFNbGdBaVdEOVgxN1A0YTdjSHVhMkc4Y0VVV3kzYXhmMlZCOU50dVFuQ3po?=
 =?utf-8?B?YjZ0aHYzczU4ZUlGWmlUNUw1RVpBL2dubzRYNE41aTdtVjhCeFhhTDNTNktI?=
 =?utf-8?B?QlYyaEVsV0Y1RCtsS3hseXJDL1BaRVFCdWFBd3k1aFNWZU5LcmNlQ3NPSnJJ?=
 =?utf-8?B?elFlSE0veDBQWFFRZENCaHpKRkpQYVNETGdmZHROUTJtL3FIblJqQXVYR1hT?=
 =?utf-8?B?YlE3WmI4NHhmSE9SZEE1QURYV094ZlZvTEV2SklReXI5bWlDQzRuUVZvbkZh?=
 =?utf-8?B?S1NxTjd5Slk2alZ5VlpsYzdCOExEd0dtaUxGUkttcThsMlFkOUlrL2ZWQmU5?=
 =?utf-8?B?c3NzS1Mvc3ZqWGYzVnJwK1FHYXZwQ0VhSGlZU1FHc0JFS1Y5c3lpZjg2YUVm?=
 =?utf-8?B?KzlKWG1BMlNncjZGNkNwKzF0eHlZcWZ1NTdFa1A1NXJ2KzRSUUl1eVNTdzIv?=
 =?utf-8?B?Qy9lYnJFakNIUUJMV1ZvMTdWdkNHSCsvUldvSjZwbWE1K2drQWFUdm9USVdX?=
 =?utf-8?B?bTBmZ3M5L2NYaVo1ZXJJVS84Tzkzc1VvN3dYRlNLQ0xWMDV1aXhBLzhRcXNR?=
 =?utf-8?B?ZUQ4c0sxM1cwR3hUVTFRYmZBb1BaZ09lWG93SmpZYWpvalo2NU9QVWVaOHVy?=
 =?utf-8?B?aGhxZ0lXMlJYcXlReFBtak1BWUlZV1c1c3pDUDBEckpsckVRZS9kK2l1a2Jp?=
 =?utf-8?B?SWJnay9pUVFEOVNZYmJFR2FSeGI4U3VkYldwODBKc0QwaVBjdnY0OEcxM0hW?=
 =?utf-8?B?cVdiM1RjUW1LLzNGVTQ5NWZvSzQzTTRuTmZNY1NTOW1LQTgxQzRHRllQUzZp?=
 =?utf-8?B?RXdJUGRLSW1EUHd3VFc3TXdRVVMvZFl3OTlDeEZadXdGZXVpYWhWQytNSEFk?=
 =?utf-8?B?YXQwTmRxNzlTWnRXU3pKMmNnMVVseHpJUGdlUCthMmlDRSttdnZVUEIra29z?=
 =?utf-8?B?cWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f05795c4-8096-44ad-8239-08dd55a96804
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2025 14:33:44.2111 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IQIwcQ3i9c9pvE20s0+9NJbSorm3Hy9BODUYIiktB04eG/CysCCujv4l7aa0OBhO+/YYfXGBo0psYgcqWmvF6NCkH3o18G5z8uHzm7CnP58=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7456
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740494030; x=1772030030;
 h=from:subject:to:cc:references:message-id:date:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fhbQ5JUwch67Ntao6QEsvINSl/8P1NqHUCCpK2yzAyo=;
 b=BoZHXRw0libvXY29vmNWFSC8JeC5EzcHtvqqFaEhsRlyLX1+0kiI3gsW
 qPX7FLCnJ9C4R3TMvscTwyDCPFu7VU6qrBhlKp7JWLT5SH6DA6fI17ULb
 huS8DJNSZMHRaqwCfvGbwezE2KUPv67LlOThMLThqMcHPpIdj3T0xRGJa
 Ik3Kk4aGHyyRV8TINQeYuuAnE/F0xFjzq8bMyF3YOX9CQ1JIWN6UDfzu6
 Dv1o5EQpwSJEWRyacUFVflaJAAhWgPALJmhyGQPaw4is3KcICU1FxJm5x
 aXkZG6JxQEhaDw1vKAWzjJebD5Yg2SLKhvYx7g3SZ0BIg4pnkYHsXG53j
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BoZHXRw0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/1] e1000e: change k1 exit
 timeout on MTP and later platforms
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



On 2/24/2025 3:53 PM, Paul Menzel wrote:
> Dear Vitaly,
> 
> 
> Thank you for your patch.
> 
> Am 24.02.25 um 11:12 schrieb Vitaly Lifshits:
>> LAN devices starting from Meteorlake the interface between the MAC and
> 
> Meteor Lake
> 
>> the PHY has a different frequency.
> 
> The sentences reads a little strange. Maybe:
> 
> Starting with Meteor Lake, the frequency of MAC and PHY of the LAN 
> devices differ, cf. datasheet X section Y.

Will be fixed in v2.

> 
> Also, I’d add a blank between paragraphs.
> 
>> This caused sporadic MDI errors when accessing the PHY and a rare case
> 
> cause*s*
> 
>> of packets corruption. To overcome this introduce a PHY K1 exit timeout
> 
> Does Linux log these errors and corruptions?

In some cases yes. When there is packet corruption the user encounters 
packet loss or re-transmissions on the wire. Both result in a lower 
performance.

For MDI errors, yes there are be error prints to the log.

> 
>> reconfiguration in the init flow. The exit timeout is reverted during
>> the hardware reset, thus, it is required to be called in a few places.
> 
> Excuse my ignorance, but what do different frequencies have to do with 
> the exit timeout?

I'll explain this better in the v2 version.

> 
> How did you test this?

Ran the failed flows and made sure that the issues don't reproduce.

> 
>> Fixes: cc23f4f0b6b9 ("e1000e: Add support for Meteor Lake")
>> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
>> ---
>>   drivers/net/ethernet/intel/e1000e/ich8lan.c | 78 +++++++++++++++++++--
>>   drivers/net/ethernet/intel/e1000e/ich8lan.h |  4 ++
>>   2 files changed, 78 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/ 
>> net/ethernet/intel/e1000e/ich8lan.c
>> index 2f9655cf5dd9..d3636433938e 100644
>> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
>> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
>> @@ -285,6 +285,46 @@ static void e1000_toggle_lanphypc_pch_lpt(struct 
>> e1000_hw *hw)
>>       }
>>   }
>> +/**
>> + * e1000_reconfigure_k1_exit_timeout - reconfigure K1 exit timeout to
>> + * align to MTP and later platform requirements.
>> + * @hw: pointer to the HW structure
>> + *
>> + * Assuming that PHY semaphore is taken prior to this function call.
>> + *
>> + * Return: 0 on success, negative on failure
>> + */
>> +static s32 e1000_reconfigure_k1_exit_timeout(struct e1000_hw *hw)
> 
> Why limit the variable length?
> 
>> +{
>> +    u16 phy_timeout;
> 
> Please add the unit. >
> Why limit the variable length?

I am not sure that I understood your question here.
phy_timeout will hold the data from a PHY register, that has a size of 
uint16.

> 
>> +    u32 fextnvm12;
>> +    s32 ret_val;
>> +
>> +    if (hw->mac.type < e1000_pch_mtp)
>> +        return 0;
>> +
>> +    /* Change Kumeran K1 power down state from P0s to P1*/
> 
> What is Kumeran?

It is the interface between the MAC and the PHY.

> 
>> +    fextnvm12 = er32(FEXTNVM12);
>> +    fextnvm12 |= BIT(23);
>> +    fextnvm12 &= ~BIT(22);
>> +    ew32(FEXTNVM12, fextnvm12);
>> +
>> +    /* Wait for the interface the settle */
>> +    msleep(1);
> 
> Any chance, of polling stuff instead of 1 ms sleep?

No, there is no indication for this.

> 
>> +
>> +    /* Change K1 exit timeout */
>> +    ret_val = e1e_rphy_locked(hw, E1000_PHY_TIMEOUTS_REG,
>> +                  &phy_timeout);
>> +    if (ret_val)
>> +        return ret_val;
>> +
>> +    phy_timeout &= ~E1000_PHY_TIMEOUTS_K1_EXIT_TO_MASK;
>> +    phy_timeout |= 0xF00;
>> +
>> +    return e1e_wphy_locked(hw, E1000_PHY_TIMEOUTS_REG,
>> +                  phy_timeout);
>> +}
>> +
>>   /**
>>    *  e1000_init_phy_workarounds_pchlan - PHY initialization workarounds
>>    *  @hw: pointer to the HW structure
>> @@ -327,15 +367,23 @@ static s32 
>> e1000_init_phy_workarounds_pchlan(struct e1000_hw *hw)
>>        * LANPHYPC Value bit to force the interconnect to PCIe mode.
>>        */
>>       switch (hw->mac.type) {
>> +    case e1000_pch_mtp:
>> +    case e1000_pch_lnp:
>> +    case e1000_pch_ptp:
>> +    case e1000_pch_nvp:
>> +        /* At this point the PHY might be inaccessible so don't
>> +         * propagate the failure
>> +         */
>> +        if (e1000_reconfigure_k1_exit_timeout(hw))
>> +            break;
>> +
>> +        fallthrough;
>>       case e1000_pch_lpt:
>>       case e1000_pch_spt:
>>       case e1000_pch_cnp:
>>       case e1000_pch_tgp:
>>       case e1000_pch_adp:
>> -    case e1000_pch_mtp:
>> -    case e1000_pch_lnp:
>> -    case e1000_pch_ptp:
>> -    case e1000_pch_nvp:
>> +
>>           if (e1000_phy_is_accessible_pchlan(hw))
>>               break;
>> @@ -421,6 +469,16 @@ static s32 
>> e1000_init_phy_workarounds_pchlan(struct e1000_hw *hw)
>>           ret_val = hw->phy.ops.check_reset_block(hw);
>>           if (ret_val)
>>               e_err("ME blocked access to PHY after reset\n");
>> +
>> +        if (hw->mac.type >= e1000_pch_mtp) {
>> +            ret_val = hw->phy.ops.acquire(hw);
>> +            if (ret_val) {
>> +                e_dbg("Failed to reconfigure K1 exit timeout\n");
>> +                goto out;
>> +            }
>> +            ret_val = e1000_reconfigure_k1_exit_timeout(hw);
>> +            hw->phy.ops.release(hw);
>> +        }
>>       }
>>   out:
>> @@ -4888,6 +4946,18 @@ static s32 e1000_init_hw_ich8lan(struct 
>> e1000_hw *hw)
>>       u16 i;
>>       e1000_initialize_hw_bits_ich8lan(hw);
>> +    if (hw->mac.type >= e1000_pch_mtp) {
>> +        ret_val = hw->phy.ops.acquire(hw);
>> +        if (ret_val)
>> +            return ret_val;
>> +
>> +        ret_val = e1000_reconfigure_k1_exit_timeout(hw);
>> +        if (ret_val) {
>> +            e_dbg("Error failed to reconfigure K1 exit timeout\n");
> 
> This differs from the log above. Use consistent error messages?

I used here the same convention as in this whole function.
In addition, in the v2 version I changed the e_dbg to e_err so it will 
be printed as an error anyway.

> 
>> +            return ret_val;
>> +        }
>> +        hw->phy.ops.release(hw);
>> +    }
>>       /* Initialize identification LED */
>>       ret_val = mac->ops.id_led_init(hw);
>> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.h b/drivers/ 
>> net/ethernet/intel/e1000e/ich8lan.h
>> index 2504b11c3169..dffc63e89ee2 100644
>> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.h
>> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.h
>> @@ -219,6 +219,10 @@
>>   #define I217_PLL_CLOCK_GATE_REG    PHY_REG(772, 28)
>>   #define I217_PLL_CLOCK_GATE_MASK    0x07FF
>> +/* PHY Timeouts */
>> +#define E1000_PHY_TIMEOUTS_REG                   PHY_REG(770, 21)
>> +#define E1000_PHY_TIMEOUTS_K1_EXIT_TO_MASK       0x0FC0
>> +
>>   #define SW_FLAG_TIMEOUT       1000    /* SW Semaphore flag timeout 
>> in ms */
>>   /* Inband Control */
> 
> 
> Kind regards,
> 
> Paul

