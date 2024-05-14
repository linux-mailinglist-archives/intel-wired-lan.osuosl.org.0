Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE698C5CDB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 May 2024 23:30:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A164B82416;
	Tue, 14 May 2024 21:30:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GqUj3XfwdWCS; Tue, 14 May 2024 21:30:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D7AE482389
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715722252;
	bh=ClFs4tNGTz5gHl3ybo/oo50G48tPJppwj+FcJgrvJ3Y=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=P30PQ3W3uQYA7TgSPglE0wQWUk7p3ciraO+9ymFR4A8JUYxftCGIafN/6eaPd6kTG
	 TIQpH2mku8i/EYkWMA5VeT4rDb7hmH08/t+Ot8OOKBH6MCKT4/KOKNIj2VMCVyt3K6
	 sq+DHam7+TcL0+L2LImgz+xjYQ1mi1ic9WTr08kMPMb2bk03LuI7L4AY+cgfuQaKsn
	 n5kNWcex2ypcGqFeAJnZJCwMJHElbAkoOk7JeZ5Vkp587Lb+yITj63Rvk8SPy0kcX+
	 WpdmbWUL4XUqv4wPI0BU/vj4pAyabwSarnkrlAz/icE+3sw2adiF74QT+1ib2sXKlO
	 ncCLpuc0RQaDg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D7AE482389;
	Tue, 14 May 2024 21:30:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CDCFC1BF42D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2024 21:30:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C62EC8238E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2024 21:30:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mwlelE9foewu for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 May 2024 21:30:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EC67982389
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EC67982389
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EC67982389
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2024 21:30:49 +0000 (UTC)
X-CSE-ConnectionGUID: DmCXaGH8TOenw2GY1utJnw==
X-CSE-MsgGUID: qM5uXgofT1KnThhxtP5fVA==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="29225176"
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="29225176"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 14:30:48 -0700
X-CSE-ConnectionGUID: F9T7OJviRcOzkZgarUTkmg==
X-CSE-MsgGUID: dAoaYQSXS1uL9HCCl+xGxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="30875341"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 May 2024 14:30:47 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 14 May 2024 14:30:47 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 14 May 2024 14:30:46 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 14 May 2024 14:30:46 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 14 May 2024 14:30:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bs/wY82KMEVG4AqNowQabWFBxw2/cE/Gvmvi4qbr3gFnsTvTKa1GdGGvSjQLpdhbRdWlIAKVP7d8nVAcv/rdpCxx4owQQEpHhNa0L0GzZQKWx4+x4Q4dWNjzpCM30S22S6kogD9IacGwf7rhi90tHfyzFbkJz4q+32J8XbPtItAQvspCkrqVJ4w+QXr47jKzHe+Aa55kKEx7wHcQ+WeBKemeHw+BFokyKm8tk/XMAgM7pgSgQKfVVcqeK4Ijahh06PLIsIG2qtfn+c9LDlIo6w7KQkWHIeFfy4fLQHgXynM5GpMbBubXD9pWEDqWjbWQjwQEXiviVsIZ3dkXiTjjWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ClFs4tNGTz5gHl3ybo/oo50G48tPJppwj+FcJgrvJ3Y=;
 b=Q6WDLY1ni23jyNQIiF1Le701W3t2kgmhJ7jgNLSNKuOyxuU2l1kzeuiR4egNCgos20b2Y3E4gs9t6sOznCvFR9tTDbxNAtK97QwTzVOUQDKVIuoQBsiy92TxyqH0AJLBqLcqZR+UW4ewCpDdeIgtwnHyTRepjqX+J+8I5m5ZdQihT+BHRdVqPTTVNQrtJLRH1Pm62NZx7ZrCzlDyG+pvG7nUmgkle9lQJkhc//rpR4/YguMQO3XkFFa7hPqpzLffOnppb7aJ2MJVLywJjv49wkQGzrPRxWkI5XtFAMfDpl9BG4YCNC90xQGPenhYZWDmw7bwdCQpY7g0kzcjc6II5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH0PR11MB4920.namprd11.prod.outlook.com (2603:10b6:510:41::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.55; Tue, 14 May
 2024 21:30:44 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.7544.052; Tue, 14 May 2024
 21:30:43 +0000
Message-ID: <83bc01e5-12ab-4f0e-9e3e-323b0c147d63@intel.com>
Date: Tue, 14 May 2024 14:30:42 -0700
User-Agent: Mozilla Thunderbird
To: Thinh Tran <thinhtr@linux.ibm.com>, <netdev@vger.kernel.org>,
 <kuba@kernel.org>, <anthony.l.nguyen@intel.com>,
 <aleksandr.loktionov@intel.com>, <przemyslaw.kitszel@intel.com>,
 <horms@kernel.org>
References: <20240514202141.408-1-thinhtr@linux.ibm.com>
 <20240514202141.408-3-thinhtr@linux.ibm.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240514202141.408-3-thinhtr@linux.ibm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0311.namprd03.prod.outlook.com
 (2603:10b6:303:dd::16) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|PH0PR11MB4920:EE_
X-MS-Office365-Filtering-Correlation-Id: b61907d9-2e6a-4ef3-92c2-08dc745d1c6c
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TXNGWWJRb1VXY1hWUm5EaWdPK3pTZllnSlBrdVRydk5LbHNibzhSRU5oa1Iv?=
 =?utf-8?B?NG11RDFqRzVMQnVtdlBiS0dMMndIWWR6TDRVTFF5TlJJNDFtSjFZZHhmM083?=
 =?utf-8?B?VVJlVEFhYlI2alU4K1RiTFQ5ODBnK1lnK1A4WEJKU04zRDhvTHpGQTZoS1lT?=
 =?utf-8?B?YVFldk1uSVdZV21BOTR3YWJLcXNtN1l5a1RvbEZkUllEZktSL2x5S2U5dzky?=
 =?utf-8?B?dkJqVklWWE1wUjFCaFRYMG1tdCtQTkcxSUdJWnlhUXExOHkvSFA2eHRqUllD?=
 =?utf-8?B?RFNHcVVYTzlTSk96OTZMK0JhNXFZeDkwb2svd0lCb0lFTHNDRHFBSmxUSXc1?=
 =?utf-8?B?aCtxUk9UVFZtSmc5d2dOb280QW1YTlBBT0tINFpoeURLSzJ0bDgrOUpENEV5?=
 =?utf-8?B?ZlNub1Vrd091azFKQTN1eFJwaXpIYld1c0ZsVkZOcEVHMTFlSU5hYzgwUDMy?=
 =?utf-8?B?WmZrV3ZDRlIrNnBrWUd1amVaZ3hCempQaG5yY1ZxZldDVytiWEwvNGJiaE9u?=
 =?utf-8?B?RjV3eDR3NFdnZWg3aVV3STVMQk9IUHQyMXBMOXRvMDJuaXpHY3NZUE5wcmZN?=
 =?utf-8?B?bUZjejdoWVJjRHZlOHphTU5NSDluOEJoTEk3L2s0bDJtd2NzWVp2UjA1Qzh1?=
 =?utf-8?B?UkFPNVJtOEZHaUt1TGFlYVMvTzloMTNyMGtma25Ob1ZPekNUa3g5allON2tY?=
 =?utf-8?B?Uk1ybU41MG1lWnkrSUxHZ2ZIZXZadjVpaTBTaDFtVUpSSVJlbkJSVG1nUFF4?=
 =?utf-8?B?L2JtUnJRenAwVWkzNS9lWi85OTdYV2lXYVVGZWJ1WnhqSWZsV2dqb1pYcTh4?=
 =?utf-8?B?RGM5QWFiazlMSVJnV3BnT1NhWGV3cm9wdGt3UTFoSjliK3dPeGYxRXBXWFNK?=
 =?utf-8?B?WnVmd0QxbDZPQTl5U0FVVmNQZVVUeUUvUHBNZW1WTmhTUUtNM2tFMy9aMmNJ?=
 =?utf-8?B?NXk5NkJxa0k2b0FLcWNWaG83bGxYaTRDbmd1Ujh0MUZxUHZMakZ3Um5VUjFo?=
 =?utf-8?B?TGhXZVVJTjgzZnhmN3RXQjcxYUVHL1owU1VBZlM2SG9KZmhuVWhTWW1xcW9R?=
 =?utf-8?B?Z0VueWhUUlRPSnJaUDV5Y3RDNndTREoyRDMzcEppSU91YXhkNDVJamUwKzdp?=
 =?utf-8?B?ZzJocXVuYjZaQUlyajU2ZlY4a0JRUHR1cjNRUEFWOWs5clNQSmlmd0RNcVFT?=
 =?utf-8?B?R1lYeStBTlJMRS9hT0tWTDJVY0JmWmVNN0RXYlhOeTBCMmpTYkhFbThGTTJO?=
 =?utf-8?B?YVk4aktHRVBxQjhTZitmSHVGMDlKblF6YTJLdnZ1V2ZtV3pKSWxYM3NmNlRn?=
 =?utf-8?B?R1dZUnE0M3BIRWNhZG1EZkU4cURmcERSNmN4bnB5S1NQYjB6WlFpazZXTDJk?=
 =?utf-8?B?cHd3aEVsTzhHWnZkc0h0UlFvWnpJaWFTZVJhT3M2MFVBcDlUaU1OblBlcm1O?=
 =?utf-8?B?Q0lqd1hQZXc0cEZWWHBHang3VDMvSFI2WExvTE5HalI3MTA4NEZvT0ZEdENl?=
 =?utf-8?B?Mjg0SHk5M1lYQ1FvVlh6c0hlem9vSW5wSG9ibmV3OHVpQXFsTTcvODM0aGhs?=
 =?utf-8?B?UUwxcnR4a3lvVEZJcVVlRDZoK0x4Ym5DbmZnd3cxdFAxa0FIKzlLbW5tVjNU?=
 =?utf-8?B?VUd6a0hxZDFTMEhTcExUZkc2cEZsK2hoeXBWNU1SRUlUU1A4eExUeUJ4Q2ZW?=
 =?utf-8?B?d1pkaTdGQjhKaVlDbHc4YXNTenNpSmZra0dZcjJPSS9kS0tsNWtKcDl3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TWxaK3FHT2dWTlNRUkJtdkdiSklGRkpreW0ydEg0ZUFkWGNHcjhmeXpKeXE4?=
 =?utf-8?B?bExSRVd4TFBPdkticWVvNEtPeGhtZkh1S2hyYTQ2MlhTaFpELzV0SGVPYzJN?=
 =?utf-8?B?L0xXVzM4R3Y0UTlENmlpWlBzNmpkRjhaTHFEOStaalhTTEtYOHdVSW9qSkFj?=
 =?utf-8?B?djVybVlaSU55R1Vhb1prY1I2Y0dkK1lWNWs3enhtYThSR0FTc1VjNUZrY2E2?=
 =?utf-8?B?dUlmcmd5S3hVY2dBeEc1ZU9MK0p0YmFVdUZWYU5NQUh2Y0hvRFpmRU81cnJN?=
 =?utf-8?B?R0FyKzZDWURneEFaWnpsVTltcVZaZTRONjJFT0VzUElvdjczN29MQk01YVBC?=
 =?utf-8?B?MzRGMnkwSk9XSS9PRy91Q2NBMEwzOVNDckMwNytSNHp5TWR0eVV5ak5MOVJR?=
 =?utf-8?B?V1l3bExHZGFwdFcydm9LeFlyajFjVnp6eC9FSlZJd3NEamtUUmtmWW5GWTBm?=
 =?utf-8?B?aWhiNDVQbjBNbkhiM0hobUR5ME1iM0ZBZC9oTTYwMGJFU3pwZFd6cXlMV3p3?=
 =?utf-8?B?eVFmSWZ4RlYra2hyL2trTy9zTm9BalNtK0FnZER4ckhBWkMwcW9sY2FLMHlm?=
 =?utf-8?B?eEpBMm9BaXA5cTg5YXJJc0N1ODhiSk5nWDdVZGgrMG51NjUwN2tYRUFvM0Mr?=
 =?utf-8?B?bDBBd0d6dlprRUJMbXg3ZkxpNktXNGVHdzgwendPdldBZkpoU01JNEpwMUUx?=
 =?utf-8?B?V3BtL0tMVnZIQVJoWFplMXRsSjlHeGh6SzRycHlvemFyUDh3dnAxRFd1Q2tv?=
 =?utf-8?B?bEN0cHF4K2JXQ0xrUkN4OHBMVUxMcGQvNVl3cDMyWGZrOUlVbDhsakx5bE1n?=
 =?utf-8?B?ejZadWd6K1V2Tms5YmZpWlUyQzNqc1dxUHJtM0dwNytxck0zbHdOMGtQdUtW?=
 =?utf-8?B?REtUeGhWNnlJeE1nZFk2TlpkMEQ3Wnh0ZXRyVmxKOVNZZ1Zwb1BVTnF1b3kx?=
 =?utf-8?B?SDlnT1RvT0RpdExkeks2Qy9JWkR2SUlvT1kzTVR3b2xBZVVpZDNLL0Y5bXBU?=
 =?utf-8?B?WEVtYmFSOVZpVFN5MzV5T2R2SVdtUVFNQXlWaitjNnV3MTd0UDBmM2ZaUVYr?=
 =?utf-8?B?WjQ3SWhXaHlrRG4xdzhjOHhHOUJDKzlMRmNaYnRESUdoYjN6YlRYZ0V2elpt?=
 =?utf-8?B?WkVSL21XVGcyQUdQNXBhN1Y5dVRRSllxbjBYR25jT2NVQXNMZTd1SkRBckht?=
 =?utf-8?B?TEZVaGNTWm5HcWkzTThYR2FPVGZ1aXVhREhINGIxS21CRjJ1bE9rMm1GNXQ4?=
 =?utf-8?B?bC9nK3MxZlIxNXB6WjlVUWdmNHlsVElwNTJramNiTWMzNE0wb1NFQkZYakVV?=
 =?utf-8?B?aDY0c0NSODkrRGNRRmVRb3JyRGQrVWhnNkt2WkZyMXFPZFE5bWZWSzlBOFcz?=
 =?utf-8?B?S2VnTzZ0ZWZUZnI1YzNIYTUxVmZpdEJSZnBaemNaa0dmWnVZS0tJbEN5N1Ev?=
 =?utf-8?B?NjhBcEhkdVpyb2w0MmdiVFRqTUdLTnU4bXZLM0xxejgrbzNjQzdCWExKQWVt?=
 =?utf-8?B?eG42NGNrV1NEWVo3YUVXcVgrQXpSM1dJQnVjWk5sWTJKTzJlK0RxTStYRExs?=
 =?utf-8?B?NTBrdXhkRFBvUll3VUc4WjFPWVhEdmpnS2Zqakh4ZkZsQjYwQjI1M2hwL1NE?=
 =?utf-8?B?OHhtckZWcVBMby92SjZUUVhQU3gzakxvbkUvU0hDWmhOUlJoM2lFWGpEQUM2?=
 =?utf-8?B?UExBbzJGZjRmN3ZaVlVZbzRxdndhc0lldnJmUlZrbVQ3RVNDckFYM0tMMUpS?=
 =?utf-8?B?WEVLNk9hZ0paYlFFRkxCQW5HOTQzMXJ5VEdObDBYcEZzYmdIV1lvZnJQcE85?=
 =?utf-8?B?OHA0emw1eWVNOXZxcjdrdWxTVkFrSjc0bzNFa2gvN0x0RGpMWDMweWdVdWhr?=
 =?utf-8?B?K2Q1ZnBVb1hKU2MzNGYxNnN4ZmdJSmtaTWtqRUF3ejV4UHhHenJrWmxpRisw?=
 =?utf-8?B?eTdPU29zWFBCcG5pV0xISFdGL2RQNS9zVDNRcjZQVEFyckQ3VmJXbW1ra0dI?=
 =?utf-8?B?UnBnclB1cFJ5MEFVNUl1aVk4eWttYVFnYkRlVENsdFlBRVBPMEhDZjdiejk3?=
 =?utf-8?B?cFVIT0pNU01CQVhNMHVXMjJlLzZoNkdSLytCZ3pZL2xxWTZaZ0pRakxyWHhD?=
 =?utf-8?B?Z3B4UXJnSXV5c3N4RlVrcitiSkVjbnYvUVk5L01odU1kb0RxMkFyUXRFb2Jq?=
 =?utf-8?B?ZEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b61907d9-2e6a-4ef3-92c2-08dc745d1c6c
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 May 2024 21:30:43.8272 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PTYPHE3ykegfgmAsVhGGTctoGkSDVKv0fXnJVMqhPXHtehWA23vbEVUfymhTpBjb7MDwZziGfCjWu0dhQanviqQuAkwXPJiBfRdoUkKANwA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4920
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715722251; x=1747258251;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zUt3ICWBnL0CEjtstf1LdsDRb3jEsbah4//I+LHKt2g=;
 b=HCX8CbSROQD2raS7iE3uPJU6G1gt6VykKMZO8iFqZu2mszt7M/O3DsHZ
 G6ILMfbBiE4ytL4jI/SoMlrJZkFAd9I4AVfwe7LfVCavD6agcMJiXFOUo
 Met97It2oLm82qwrTeJ2w51O099uJE9INFAFMGFMqWqly2+BS0v3PhBFN
 sMUjfGP5/pp72ldFiDQyeovDxEvbog4zmWBqBanJRgiMvfrCYBbGb6kSu
 ZqI3N3C8mLzB0REWx1NcaPrVvumXdJqU2B3WDKhUu5tRKMVbvsDl/xORb
 N7a1Nngi2rYXawAiu9a7ncuglxSEjRCw6PRWvnP5t0uDVldnTgyrxaffx
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HCX8CbSR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net V3,
 2/2] i40e: Fully suspend and resume IO operations in EEH case
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
Cc: intel-wired-lan@lists.osuosl.org, edumazet@google.com, pabeni@redhat.com,
 rob.thomas@ibm.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/14/2024 1:21 PM, Thinh Tran wrote:
> When EEH events occurs, the callback functions in the i40e, which are
> managed by the EEH driver, will completely suspend and resume all IO
> operations.
> 
> - In the PCI error detected callback, replaced i40e_prep_for_reset()
>   with i40e_io_suspend(). The change is to fully suspend all I/O
>   operations
> - In the PCI error slot reset callback, replaced pci_enable_device_mem()
>   with pci_enable_device(). This change enables both I/O and memory of
>   the device.
> - In the PCI error resume callback, replaced i40e_handle_reset_warning()
>   with i40e_io_resume(). This change allows the system to resume I/O
>   operations
> 
> Fixes: a5f3d2c17b07 ("powerpc/pseries/pci: Add MSI domains")
> Tested-by: Robert Thomas <rob.thomas@ibm.com>
> Signed-off-by: Thinh Tran <thinhtr@linux.ibm.com>
> ---

Thanks for moving this info to the commit message.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
