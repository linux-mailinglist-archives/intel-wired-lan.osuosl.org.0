Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id u/oxL2g9V2rGHwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jul 2026 09:57:28 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1106175BA85
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jul 2026 09:57:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=NUrC9m4v;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7944880C24;
	Wed, 15 Jul 2026 07:57:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tazlr4iWFwAv; Wed, 15 Jul 2026 07:57:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B4C3780C2D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1784102243;
	bh=41N8npMdO32fBzd238ytDnh4ZTaWpqbLJt2ZneEylys=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NUrC9m4vZ+cMwrouBaZeANhPfESKK+iOm/P2u+nPj3B8l+biRxuxXDC9q/eSUQU97
	 YYXNRoBBmlTR9wCbQ30KCjwfipwQgypoxRtEciDSmBooBh2KUsEb7aNwK6qZbceo0r
	 ED7zG3pEmn6da675mLu/gjca9P2fkRBJlt1wAjQ+fK/nDdZsDbq7IqBYZ5vCcwf/fv
	 3kO7jvwcyYBn9fYVoC3l4/kAhzItngqQjn2LNaJD2HgZay+HMgKk9ajITyEBfYAEJ6
	 Lwe+HzfhRhld97JoGYpKvms/jE5t4DfLs5S7FoRHwSff+ZZ4bW2LSpO4S/ICJoichk
	 jCh+6F0yEilNg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B4C3780C2D;
	Wed, 15 Jul 2026 07:57:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id BAD4049D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2026 07:57:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9DCC160640
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2026 07:57:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rpFbEcNUjDgH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Jul 2026 07:57:21 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=dima.ruinskiy@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5DC4F605F5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5DC4F605F5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5DC4F605F5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2026 07:57:19 +0000 (UTC)
X-CSE-ConnectionGUID: iZ+inM+8QWWCOzDe4Rr2ow==
X-CSE-MsgGUID: w652kpmSQJCcos7Onm+r3Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11847"; a="107527613"
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="107527613"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2026 00:57:19 -0700
X-CSE-ConnectionGUID: rFrqptZ0TJmtYRE4YMxAog==
X-CSE-MsgGUID: nc2rKPqhTz2KoFSB01yyqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="260400968"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2026 00:57:19 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 15 Jul 2026 00:57:18 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 15 Jul 2026 00:57:18 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.35) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 15 Jul 2026 00:57:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U2kJ2Jef74CjVWUJ8Pqqn7OT6g9HMWC5lajY3bxWzVSF3vZT6XNOcVFITY9t8IAp5d60/4G6CFcEBLtaoPp3ZxA7gsyXa4wvFv1oVLqOkpfHNncWO30trg94O+06oscnqPWjoRW3iYnKELvVQUvwaoy7Azv+hAViOswVXlb9naqOTxa5c7XL8iCVVGHuq9JKmRAp1o0jdQyAgBnx18vCSKJlppmbSgi4JQF+W+BsljpoMfg2rmbkRcX2as3j2MfBY6tQvRlOQXILpElG6tK3pZfqIzAMNOBsqLnTBVs1ClWT/gyOGJAu+ZX2jRycXo1D/46gh/CDxU+22O5h4oRZlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=41N8npMdO32fBzd238ytDnh4ZTaWpqbLJt2ZneEylys=;
 b=W37SKxRSI0IMDvW31rRGtS7lDxL2gYdXyXKz7bgSfM8IuBGwLs2m3CZ7gni6ekmNQg10Of+4uuDkGm2xbqkL7xa52hISgBHjaX/7TSmyFumSTxh3mnP3H/7RhQNtCbKSPJUvrDB7SkciTakKhG2grZwjG0fxCGbExfU2W3oQ5hgV6GtUp9gwdmHPCl/o3wpPyD4rF838QXoyndou3TS5qdaqGXQVdLQr5nGMfP/Df9h2CypCvPpwL/+f9WC/tVALpmC5A3fAodZcqVG3OxIAbjfL8VVTm165EMHloOfdszWIaCUKwJZ2Ae1JOmB7xeT//2Cd/uXNvCEk6Ur5JnQp9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB9519.namprd11.prod.outlook.com (2603:10b6:208:5d6::8)
 by SJ0PR11MB4848.namprd11.prod.outlook.com (2603:10b6:a03:2af::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.202.19; Wed, 15 Jul
 2026 07:57:10 +0000
Received: from IA1PR11MB9519.namprd11.prod.outlook.com
 ([fe80::a3e0:3591:1c17:3b19]) by IA1PR11MB9519.namprd11.prod.outlook.com
 ([fe80::a3e0:3591:1c17:3b19%4]) with mapi id 15.21.0223.008; Wed, 15 Jul 2026
 07:57:10 +0000
Message-ID: <0e28b9d1-ab9e-4934-b939-81557f6495b5@intel.com>
Date: Wed, 15 Jul 2026 10:57:04 +0300
User-Agent: Mozilla Thunderbird
To: "Chia-Lin Kao (AceLan)" <acelan.kao@canonical.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20260618073324.1843310-1-acelan.kao@canonical.com>
 <IA3PR11MB8986B77F49DF672178FEE4BCE5E32@IA3PR11MB8986.namprd11.prod.outlook.com>
 <c3030882-55c8-486f-8ff3-571d001b99a1@intel.com>
 <ajiHH-RaHUjgraMh@acelan-Precision-5480>
 <1d6c3aae-c9b1-42da-b5fa-6f8ee9ebcae1@intel.com>
 <alcd_FnUdrQug5cm@acelan-Precision-5480>
Content-Language: en-US
From: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>
In-Reply-To: <alcd_FnUdrQug5cm@acelan-Precision-5480>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0027.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::11) To IA1PR11MB9519.namprd11.prod.outlook.com
 (2603:10b6:208:5d6::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR11MB9519:EE_|SJ0PR11MB4848:EE_
X-MS-Office365-Filtering-Correlation-Id: cd2c3bd8-8308-4a0a-ece1-08dee246ac34
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|23010399003|921020|18002099003|22082099003|4143699003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: Vw0gplxz4ovTAaUoU0K6j/TGPj4OljjA3wTnYT1BBm3jSQ5zzUB6y+wvkccELG8NojUcYeShrs6RhxNEvBeWrz8qIRrVfG0TycGs94jSplXsgc6RiikHSjlslSCFO1WCO1SQZ8n/a8OuOZv5dt7eV18SXTxV5w9Yry0jFAfMNirMMCtre/KIT3EKi+UuxLnLQ9lAQNYMNy+d1wiwgndmAb2e2AM5aaMIXPBtYLalvPUGTqZVhuJEDT1+KBI9ewyywAlH2KUFeIStm1X8pUxdSLOkHqnb6WK0uhpG3RaSyploblC68nE7pua276PfQMaWTRrBvBhkNLvy1ahHkuNDwJsz05lxN911nerfhRR/WJlwgFq59jrLqSGOKqyc16pa0w76CBCH5HRfq7GYNTlrySPqTaaZnJrv91dZ1ggWQzxRLxRN6YCAtQKdVop4hySN1xgLhvl/tnfe4p4NYeFEh+zpjSeaGjWLF39lovS1Kwe68a1OKzqoaUKKmgqiIuLctuiNA8ml+cA43x2vymdYHDfy6l+sDGQ35kiEbhC2EDko83pBqXd27HmINVHUj8ShHP82g8xWuyYzLneVG0X55+NTf04alyAppU4sx6jUirpc0GidAivpz1g9/Rtvdean9jTDXejwbhNr5T1trpFfPEiL+hWZia0fTMZeX84nOZA47PixOU4a/FfDUgD0aEPAnQgDbSGdzGcICXRhGZp5xQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB9519.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(23010399003)(921020)(18002099003)(22082099003)(4143699003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eFFlYkFpbHF4dVl6c3psK3MyUWx0T1pqSDB2aWJlMkl0bWt1NVhaMmVLakU4?=
 =?utf-8?B?b29CVnpYM1djRmFpQ3l0eTBPczNvd0V6RXFoL1ZMc2w0K2p1RGt2K2JqM21h?=
 =?utf-8?B?YVhtNmZTejBxVUEwVy9mbXZWM3RnVlhyVi95dTMwc2VHTVB5YTU2WTkvZ09H?=
 =?utf-8?B?RndZVktJTzU3cjlDQitibEs0OGVwTTlFRDVQcTkvZ3lSYXJEcGNRRnVUUnpB?=
 =?utf-8?B?UTAwVTc5ZmR6cGtFVk4xaUJ1dDd1K0I3Z1I1VHg3WTcwNmhWSWJzcC9FZjdr?=
 =?utf-8?B?VGhNNERnbDVvV3FHNXVpN0Yyd2UvZTZuLyt2YzBnS2kwVVR3c0NSL3NsMU1l?=
 =?utf-8?B?S3p1aVZaRzF1bC9FYVQzN1doSEhQNzVhaWZCMkJITW9pZm9JbUZHb2pRR2Jq?=
 =?utf-8?B?L2xOT1BiMnRxQzU1RkgwWmZGT0pIY1dIQTVLNHF1a1ZpaTNXVEpTVGwzVDJu?=
 =?utf-8?B?TTQ2RnVabDRpMUR6Q0tLYkdZK1YySmh5UEJHejlFaUVCS1lCMStrSWMrWHdt?=
 =?utf-8?B?VFUzaGp1eEVkb3ZKWFVtRm95UlR2ZnNHUjdQRVJWV3ZXSE0zcHk2VitBSEln?=
 =?utf-8?B?TXRGK0RrbkxkYThiVmliUzRGTUxnZHA2QnkwOTBZTS9sUldpNEQrSHZIdS9I?=
 =?utf-8?B?U2psa1YyUWJzZGd0TzRaaG16L1hON3RsTnBiSG83M0s3WUJlWHo1bEdaWlZj?=
 =?utf-8?B?K0lWaVVVTE5lSUl6VGI2dlJHTUNuYWJ0czJ0VkU2MGxQZFd1SUdwMVJQVkVB?=
 =?utf-8?B?Y2hqOE5uRWNnMXNHTkRwSEM2YXBFeWQ3WVQ3UWtQS3VjRnFMdmZZcjY4WlpW?=
 =?utf-8?B?czlicnNmSEdDOWxidUtUcWphbEhQTVlJQ2pLVllTYkZ5VXZXVWh5Wm50eUhZ?=
 =?utf-8?B?cmgrSlorMkxLd0JVemxkam85YVZYN2tlMEdEeENyTXVtcUdrczV0RVd1UGly?=
 =?utf-8?B?SkVFQlIrRFUvQ082aFZOUUorZThxY0Q2MmNHTm5DQzJ2eTlnTGdIV1JVSEox?=
 =?utf-8?B?MVU4NDIrUFFIYlFsdGlKTVhnUkxraHY4aUxzbCs2M3R2ZVcxU2hoUThHUTZQ?=
 =?utf-8?B?ZEhrc2xsVktUKzRwT1ZkWUxQd3NEc1RpTnQvZlNvTkhsYWxjcVZQZDFsNE0x?=
 =?utf-8?B?TWc3N2doUWxYZzBUZ3F4LzFwaVFFalczWHlmUnF5ZW5wR3RDVlRqcEVUNFZQ?=
 =?utf-8?B?MXFyTW1TdXlJOHAvdXpoblBzNUwyZitnQ2lKVEJ6RHpuU2krT3BRaEVwZjJz?=
 =?utf-8?B?bG05Nk10dEpBd0VYOHFGRmJ3OUJ2d2ZEQWdSMTRCV3dJckFUZ2RrZDZSSDZK?=
 =?utf-8?B?b0RZajBGS3RReThoY1RsWVdzQ2xCVGRkZVlvMnB4WU5XdnVVUXZwa3Y5VVJr?=
 =?utf-8?B?M29DVDIrVSs5VWs4NEtWMm05L09OUnI0dXdlNHJJUTJrd0lvMWwzall6Wm1w?=
 =?utf-8?B?ZGM3RDcveEplYXh6bUQyQzlPVzFUSXF3eUp4RDdOYUtjMUwwcDB5UjNiRG13?=
 =?utf-8?B?aFJvVEFaTHE4d25VbVlsRTNxc2FvL1BSL3p6SGg4ck81azVzMDVic2QwSTMv?=
 =?utf-8?B?bXUzOWFGNGxJYVZ4RjdFTS9odHZMV1QvYWI2MTNkS2VLRDgrZ0laSFFOZW53?=
 =?utf-8?B?NGF1a0h2WHNwUk16cGg5alZBUC9kL1gvRXdPU2dMVHlOeit3MUN2WUtFQ0JX?=
 =?utf-8?B?alNjcWhUK2Nralp0SCtUN2FZNWVQTUlrSVdvc2I0bkg3Rm9GY1JKTUVURXRs?=
 =?utf-8?B?b0htbXcyKy9xZ3I1cERHUmdVN0U0YXAveVVneGE2ZUR5azFsMTNrSW8yRVpQ?=
 =?utf-8?B?SE9QYXNiUE1JSGZ4R2hZV3V1Uk11d2ZXWFUyZGtiOGZCTk44YTV2SE5BUjZx?=
 =?utf-8?B?VFYvL1BzaU5OV2Q2ajlEQTVNMVcyeUpOZnRXYWtKMDRwUkdodk5kMHE2Zmpm?=
 =?utf-8?B?VmlKcHhUc2pKMzBMNUlteTh4cU55K0g3S0lEb1dEK1ltcVBoK0ZaWmhZd2k3?=
 =?utf-8?B?YXE5clJIS3YyUGFUak9tRklvUDJFWHFuM2owdzFVVjNvZkwrRks1UkthU2kr?=
 =?utf-8?B?RFViaXJ1cWI4ZjJaTWxIUXNRdnFhS0l1dHQ3Ti90bXpwWUVGVS94Q0tyWmVz?=
 =?utf-8?B?NmhtdnFURlIzNm9od2w0d3NHemthYUhhM0lEb0Z6R3NpcWROdWQzUDdib2hJ?=
 =?utf-8?B?cjFEblNoRUZUTzhWdlVXSFFJcHBjVFF6aDBrV3BQYjBIL21odGFjNitzeGpR?=
 =?utf-8?B?U3A4ZkE4cDJBL1dYMW4wcUoxSUpuUm1Zeko0Q05ORVNBeHAvR084aXJBem01?=
 =?utf-8?B?ZG9GN1B5THM2TFFpc2tpOUx2eHpkVkFHeEJSK1RWYkNyeXBQRStZM0hEdlhX?=
 =?utf-8?Q?eju5tLFZm/3uiwJo=3D?=
X-Exchange-RoutingPolicyChecked: GmUkKAOs7wTB13MZy6+6aE3nh902mQ44VtTxGve2U8UmeXqXdt8PXl18cJDRHNRH76JDLPbb5TuOnnTboQwZwoVnrfLXsGe6uOAq3f2IzhLVt7+TCUakSMi9FrhAVlzHJJv4g9w44aLYX+ESdMB/d/YEHFxwgfF94tqLBE4fBabr+gwveiKhwSGLdIXntH1O0If7D2Cghjfx8zCU3Chzp/MSLG1yOqjju8sBMaJ+gDeGIT+y6OWKLOl9cnGzV3AdqeC4+uo+GE/wGJonjaZMI+AiBgPbyT8stDkznqcjVaF757VO2QQrCWdWLdUmY56jGE+LYGUKcZVGXZOq43+a3A==
X-MS-Exchange-CrossTenant-Network-Message-Id: cd2c3bd8-8308-4a0a-ece1-08dee246ac34
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB9519.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2026 07:57:09.9851 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4/T7LvRayXPxbZHmEA6LwD/aKvQGTRESuRHuJqhsK+v3WjkwF+uLYKB6gV6BgOGc3nWx6zG7CVlFmp6Ba9W1tg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4848
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784102241; x=1815638241;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=wRWzVLqxSRgLtAaO3pt4KuXuAfd5sqypPm/OYFo+wm0=;
 b=XfWtc1fWaCav/dNSn+uOI0ve5wAF7wB6qNlOgwE/a5P7hWyz1ZuYHq13
 3LWh6QCYY5skjAwT8AL1TeE6pFVBMDNZNMhQDrp9cjwqPaB5MthPDzvDu
 Y/tUHiT3XOiARePdQVbSsJlsksOlmQWZ6si02SBAhE3Q9wTGpaTPloBux
 MT+lbfAvYFAKCqXGEYJQTPFxF8Y31QUeWfhyRJcbmoo/PYNwMhkei6I5h
 ftiFEHYsna9uK6rbEKr2UY5og41LX8zUXOZ8iaTtSCQzafY6C5hT4EgU9
 O7uQeMqJx58XYNd3Xl1IYLjb6SCKyQSlocQgLS0dbDUNi53wLynPeZ+h6
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XfWtc1fW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 1/2] igc: Wait for MAC passthrough
 after reset
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[dima.ruinskiy@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:acelan.kao@canonical.com,m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[dima.ruinskiy@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:mid,osuosl.org:from_smtp,osuosl.org:url,osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1106175BA85

Hi AceLan,

>>> I wish we can detect if the MAC passthrough is enabled, so that we
>>> know if we need to poll for the MAC address.
>> Unfortunately, like you I am not aware of any way for the driver to know
>> whether MAC passthrough via FW is enabled. Because of this we have been
>> exploring a simpler way to support this feature via ACPI objects (which are
>> set by the BIOS when MAC passthrough is enabled and are easy for the driver
>> to query). I know some vendors have already implemented it, and I am
>> currently drafting a patch to send.
> Any good news about this patch?
The patch is here: 
https://lists.osuosl.org/pipermail/intel-wired-lan/Week-of-Mon-20260706/055944.html

I tested it on my setup with MAC passthrough enabled in the BIOS, with 
good results; no community feedback yet. I encourage you to try it. 
Lenovo and Dell laptops should have the capability.

>> The mechanism I have in mind does not require BIOS support - the I225/I226
>> FW already supports the required interrupt, AFAIK - it merely needs to be
>> enabled in the igc driver. With that said, there still remains the question
>> of how to notify the network stack above us that the MAC address has changed
>> post-probe - and whether it is even supported.
Looking at it again, this may not be as big of a deal as I feared. If we 
can call eth_hw_addr_set at any point in time to change the address, 
then we should be able to do this in a response to a FW interrupt. I can 
try to draft a patch for that, in parallel to collecting feedback on the 
ACPI approach. These are two different means to the same end, and some 
solutions may implement one but not the other.

--Dima
