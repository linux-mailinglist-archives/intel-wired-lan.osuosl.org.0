Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YNulGd5yhGnI2wMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Feb 2026 11:37:18 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AE22EF1648
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Feb 2026 11:37:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 120A640D31;
	Thu,  5 Feb 2026 10:37:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M0KqjpZC8r0p; Thu,  5 Feb 2026 10:37:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4A56040D14
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770287835;
	bh=4mkLej0UVhiuOav72WNwQA+AzLIRglpe002UUuNn54o=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NyuaL7KyhI15GBi82fey572LCxrPW+36yvKiB2SVO4swkUfzU/cQy7jK954KiIkpX
	 oUBn03Ag1V3taD84YnTtMV+Uxtw/HOdN1g2x4cDL4eX6hHNCFNvBshowWNmJRrJizc
	 f+O1rRAUi0QGSE4nqK+AVfCW4tUCmf/FYLaeskHl6q4l8A89dGnL7NJsmX/UfnPoB3
	 jv2tO7lmLb0/p/nE55DQk6zZWI6Lj/1HNv19u4lJ1y/74dDjZu2DKTYOmkoRhuO/xu
	 MJX+O7A34AWYOcquNGwOt2jKAxLdQ5cxyNotBUKVmEiiUz+R5C7BFmgYMSA9TrrjFJ
	 scJnHclEBpZMg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4A56040D14;
	Thu,  5 Feb 2026 10:37:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id C103017A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 10:37:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A5CBF402F3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 10:37:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jMauCUndKAy8 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Feb 2026 10:37:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 662664006A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 662664006A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 662664006A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 10:37:11 +0000 (UTC)
X-CSE-ConnectionGUID: Vy5qppzPSYKlsXYl/0QS2Q==
X-CSE-MsgGUID: qPayJheZRNqloaQYV6veRA==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="71473765"
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="71473765"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 02:37:12 -0800
X-CSE-ConnectionGUID: 1kAQPnaaRMWG+UpAPcVt+g==
X-CSE-MsgGUID: n1e5pMHjTTqV3k20ehY2ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="210511150"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 02:37:10 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 02:37:10 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 5 Feb 2026 02:37:10 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.49) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 02:37:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mS0fb6aLYiQVoG7it0JE3Pj+V+pILN/KNU5CF1/J9owFHilvki5fQ9MCQ0gRvXGGcrAhZntrTcLCMkN0OjC61/s3FoJS9SEyx5qp0MnZr+MgBPGzIEvAs2yfaPUkXA2YfcJp7zPpV2tDIEYLlO2MnkxPOiYqOi0Ts9g0ZzC809CjtRQhVDkEU4CsLDlzhMDgwD7h8TTaqSrcYV2HV8WIfmK2qophh712jU6Sw1+gU0tggYkO+uK+XRsvDqvqFSDVgSROeFiCtGBwq73iYlnbGYKhv2WfnEjoHrtN3bUbv2L3zlnD8AItdriUxTYE+AJ7szciUwtQQluOCERsnF81Yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4mkLej0UVhiuOav72WNwQA+AzLIRglpe002UUuNn54o=;
 b=JJvw/uacsUgX5zxNhkeWAX3NGFdxkL+YW8MITyxMe9lDelEZTBP12tI5bJEvL4H1tghT9ztiamc2lO9w1atdkGSc0KAimx9sfEy0G6D74JVcaI9QfpjaQWo6Ur7SAZ8qhB4swP7JkYxR90pnacAq0qK6C5DxdsTqIn17lV3LE3UPagZUUVaiAaFep4ySTxBFPhwoQjzHOHKjdr+gxCesuCXbsE4B+4YwKpIH2EDg+B7GpCEm7uFmN2MB2JEgip7nQicbXDXXfDLe8eYjUV4KgOzqRZyejmKU5/VVt1q+0Sn6hs1tUJx0BRuv/4L9Oj5kzVGa6PceLXLUK16cB4e40g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SJ2PR11MB7672.namprd11.prod.outlook.com (2603:10b6:a03:4cd::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.15; Thu, 5 Feb
 2026 10:37:05 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9587.010; Thu, 5 Feb 2026
 10:37:05 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
CC: Kurt Kanzenbach <kurt@linutronix.de>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Paul Menzel <pmenzel@molgen.mpg.de>, "Vadim
 Fedorenko" <vadim.fedorenko@linux.dev>, "Gomes, Vinicius"
 <vinicius.gomes@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, Richard Cochran <richardcochran@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Andrew Lunn
 <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "David S. Miller"
 <davem@davemloft.net>
Thread-Topic: RE: [Intel-wired-lan] [PATCH iwl-next v3] igb: Retrieve Tx
 timestamp directly from interrupt for i210
Thread-Index: AQHclnYXhLud46uHAE25c+QBK+gWd7Vz204ggAAFNYCAAAWzkA==
Date: Thu, 5 Feb 2026 10:37:05 +0000
Message-ID: <IA3PR11MB89865B46DCBEB496BE28703BE599A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260205-igb_irq_ts-v3-1-2efc7bc4b885@linutronix.de>
 <IA3PR11MB898652699383BA265C5747A5E599A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <20260205100347.ssTBDAI_@linutronix.de>
In-Reply-To: <20260205100347.ssTBDAI_@linutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SJ2PR11MB7672:EE_
x-ms-office365-filtering-correlation-id: 25e6eb17-1822-4f38-698a-08de64a2819c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?dnVseEsxYjBMeExrOGNxL0M4NjNLQ0FzQU5OaklFR1N1SG9ZaC9oN21SVExm?=
 =?utf-8?B?NXZsYUthWVNZaEFVU2g4aTljdCtvTVgwVkNOYnQzcit2aDM0WTEzbmdUdjdh?=
 =?utf-8?B?TVlxdmJVcUU2SHZ5cmcwYXR3R0ljTkV1TTNVTFFwNVQ4LzVISzF6eVVwQUdp?=
 =?utf-8?B?NldZZ2R5anZJMDdxRmkwbTJONFRUaDhvb1VMaUN4SG5JbUNSbFVlT3RIRG5Y?=
 =?utf-8?B?eXRIQ21FT08wY3FQamorTHhGV2tVYVhhVWhsSElkT2lwTk00R2VRMk5NUkk3?=
 =?utf-8?B?Q09nQUFkN2w3UTc4cjNWY2tJTDhXMkhYMVhUczlIdXRJL1Z4Q29aZlgrNFV2?=
 =?utf-8?B?UVVxNUR2by9rNGRpdjdOR3FWYW8wQUg3dTRhYVdPUVpsL010elpnTHNaMHpP?=
 =?utf-8?B?RGpNT2lpT3hwTUpRaU9XZGRTSkdBTE1BVldPSjZxcThSNTJSSUdHQnozZGsz?=
 =?utf-8?B?S2JTZUROS05ZdDlPbDZyRXUzSGI3MWhWY25Cb3RVWWpCNExZU2dLVS9qeWli?=
 =?utf-8?B?NllHNFZaMXRSdTVQRHBaRnNwa3hqcEJValZ0bmRyRGpURHJLT1pSVjA3UDVG?=
 =?utf-8?B?enBXVXlOb2NxZ2luY2Fya3dXdlFheDNiTE5CQWNrNUpuK2tJcmZYaW1qUGow?=
 =?utf-8?B?QzFLVHFjZVlEVG5YL0s4akcrK1RUTGdDQk9nSmkvQ2xUTmdKeDhWNGFlT1Vz?=
 =?utf-8?B?T25BWFliTTBJR04zOG8vL1ZJeStCWXNXMnJ3dDlvdmszK3hVc2QzeW10UTJX?=
 =?utf-8?B?SEJKdHVnSSthL01EWVBoL0w1MDRXb0RmTERXSTdaMFlpbUtpTWQ5aU1IVUZY?=
 =?utf-8?B?NlRva3p1NEFmcEl3enFCWjdCWGRrRUdPclE4bUpEUUpVNXlBdDZuZ3ZHRFdZ?=
 =?utf-8?B?V2ltTWdQcW9XeFo5dFpiNEZBQ1l4THA4TTIrWGpMWmpBcGQyVStrZ1IxeTBw?=
 =?utf-8?B?dzBTMlhkODZEYUtKWVYvNW5CcU1lQm1ha0hZOXNMNGpTV2lyM3FPeHN4Y0xN?=
 =?utf-8?B?a3A3VzdPUkJLTndBdHNMcGxhbkhqckQyNUE0U1ZRaW0wbUdJWmo2UkkvaG5o?=
 =?utf-8?B?ZHhIa1BqanRIamN3N2twdVRkVENhOFNQeVJ0NGdEc0g3TXFPYms4V2dGbng0?=
 =?utf-8?B?YVJ0YVpJQXpmMU8vNkhlU1dVOFNLTEtnclBWbXNnY3ovdGdmaW1JUnZidkY3?=
 =?utf-8?B?QmhkWlNrV3pqU3Z2Y092bWQ4RGFYYU1QQUVuK2h0anY5eWViQkRxUlR4OVpt?=
 =?utf-8?B?cDRveW5RaGprOWJOOC9KWDhyNTI3cG5tN1EzMmJaSHFNNkdHUytZOEdPd1Nr?=
 =?utf-8?B?c1FQS3FwNzNMYzZHblhDL3g5THVjVlJhcjM2ZzZMR08zNllUVHhabTJrZjJa?=
 =?utf-8?B?T1doOEFxWnlpT3VqTDh6VjU2K2xhRUlmUXZvYUd0WnJzUlkxblhVd0dyYUdh?=
 =?utf-8?B?V3VscWszV252WVhFOUZBcXhYRTNYME01N05FZE04K3FjQnR4cllUUWNMSHZM?=
 =?utf-8?B?SHYrMEhSclIwU0d2UWtLSEdxRVF2OVA1SDNCMnBtaVNzYnBuWk4yMlJyWTJZ?=
 =?utf-8?B?TTBKMnFFSE5yRlNoQ2cwM3M1K2pkOEQrdFpWczJKcDZMU1hXTnA2enhyWWNW?=
 =?utf-8?B?U1diK29TanhKZ1YzUnU3T3Q2ZG93ei9Ia0k5QUI0c1lhVEY2RGRCWmY1T043?=
 =?utf-8?B?QjdhL3VWYS9UekliTXJxU0R2U2kyajMxb0RzYnVlbUFSSVBRRDBDTFdObXBQ?=
 =?utf-8?B?M2M1Q3B2Vk9DR0lGd2VDb2lGTHJidERjMUFwaHU4YzV5R1dWTy8wTGVudW15?=
 =?utf-8?B?aXA1VHRnaFFONTNRSkltTDQrcUNkQ21wRTl3M3ZoUmNUc0xJOW40MWFXNTdU?=
 =?utf-8?B?cXg5Z29PM01NSjE1QjJBR0xLdHJRZUk2L3BqZGhjeXNmWlFIWHVGeFVYTUJG?=
 =?utf-8?B?MEtMTXlWTlNKazNtaVg4TnhvUGdBeTBUeFVFTWh4WTdFd3RNd1c1eHVobXZ6?=
 =?utf-8?B?a0FweG1UUXJjbUlJTjk4ejc1dy85M2dRT2h5VUN1UkNpSk9YYm9HS0wzbjU0?=
 =?utf-8?B?VXVrbEFYQWtDTGRieEUrbmMrSXh1QTZsTGprem03OXlISmU1SzNkVEthNUs5?=
 =?utf-8?Q?6J887AFwnwZdmB17VQBqtE+4s?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MGEvM1B0S3JwTWtLdGhRd2VKR1RpNXlyb3R1Mkw0SFR2eDJYNFM3eXNua2l3?=
 =?utf-8?B?V25tcHdmVkdOSWo1M0NQWU5kRlhXekNvSVRZWXI1UmJTVFBmMENiR1BvREkw?=
 =?utf-8?B?bW5vdDk1Ni9WSkZUbnN6T2RHRlYybmZDVUU0WjB3MWwxMEdwY1k1WjlCb3Z4?=
 =?utf-8?B?QUgvdXBCMVMrY2hQZnhKck1ueThMclZRS0t1aHF1ZDFVRC8ybkR5ajZLaDFC?=
 =?utf-8?B?Y3BMa2YwRTh2a3c5aXNGajFsZGJCZXRPZGV5blRRZVlwQVJrR04xSU1wTjN6?=
 =?utf-8?B?cHVOc1dXMlI1UXlmYVJEQUUyN2NhUmVmbzZaK1RaTjFyblJvamkySS9kMjVm?=
 =?utf-8?B?RGJCcksrcDJYVWZmZGplSFRtRWVJbzRRcldqdWdtSEVZOExpTTNPcnNDZWhz?=
 =?utf-8?B?S1h0ZVlSTnpJUlVQODV0TUs0Z0pETzBSRVJYbVZZZGMrV0lDMngzMXRobEsv?=
 =?utf-8?B?cmMxcUZWQnphRDZ4SnU1NFFkTGJYQ2kyS1N0bHlRc09MUWZlOS80ajNVUFJY?=
 =?utf-8?B?NWV0UVhTSEk4YkY5MFhTUFJtN2RzZWhqUWEzaFpMdlI4ZlRzYnNablJIa3ZC?=
 =?utf-8?B?RGxkbTVseHZhNkdkTlExejFmZThlU1N0MklpR0ViQkpHaFdCMGNvY01FaVNh?=
 =?utf-8?B?cndrV2xZMmpqOFdhbjdLNG9oZzBqUEh1YVZRYlNJR0ltbkZFcHdaUTNmcDlj?=
 =?utf-8?B?NUxncWljOTlYbGN6eGNVSktiYk9xenJXb3NxMW5CbnI4aG1VVHNMNVlVek5V?=
 =?utf-8?B?aml1dEdjYi91S1grbUtvVzVkSHkrTFBHWi95V01JSXBOSG9BbEM0STMrQ2d4?=
 =?utf-8?B?N0ZZenhJa3YwV29rY29jNnlWMFphYjd5MzFkU01CRnJWNGxiNmRhQ3FDbUhY?=
 =?utf-8?B?WGxXZGdnUUZSOGVqbXlNaFRHZlRwOWw2SzVvRERhOGlwYWlObW5OVHFjUTE4?=
 =?utf-8?B?UTUxNGpEb2MyRGVHclFoM0ZheWRxZ0NGUktrTzF6TjE5UWdaRmM2WU1SNmJq?=
 =?utf-8?B?dXloY2JQQkROVysyT1ltRDdxRWFpZUorck80THhra2cvT2Q4ajVFWEtWRVVI?=
 =?utf-8?B?ejdDSG5idGo2bWpKWnNLRHJBRENQaFpQcjNKSjNtUjZGamtvMCsxcWJuYkd3?=
 =?utf-8?B?KzdGRllUcStzaVcrQ0FhMUp2ODBjcFNSQWpEb0E5OGdMZXpKZmszcDArOHdS?=
 =?utf-8?B?NnZVQjFCaUVUWVNIRndiSmdvNGgzdUFqaGtER0UzczBqUHNWcU90dituRzRy?=
 =?utf-8?B?VUgrR0U5VlkwT0I0YlZvOGkreHQ0ZXBFZmwwUzY1SWdaWHd2TVduZ2gwZFBM?=
 =?utf-8?B?bTM1b3dJR0h5V0p1ZzVZeFEzcmtJRUQ0SENXQlFEamVPaUNQQkp6Mi9vS3ph?=
 =?utf-8?B?aHRGaEFWMm1DQnl6NDBCNjZJYWg5a3pHMDJGVFlIdTJTb28yVCtPanNlQ0Q2?=
 =?utf-8?B?NEw3MXIzOTdWWlJPUzN1Z3grS1hjQ2RxbHpJbkNmV0U2YTgrRUJKdEF5dDhD?=
 =?utf-8?B?WU1nVmNXOE5EcW9QUmM3cUlKZlZ6UlJkTlAxdEVWLzE3Znp2bXJlUjV1QURZ?=
 =?utf-8?B?d1gyYkJURkNRUW9ieGpYaWw1bWhpekJHcDh5MDlkQUN0WHNQcHdpZjJYTXRF?=
 =?utf-8?B?dzBQT2lpMWQxN3dBQ2dPRmtsZDVaMHZJQWNXc0pVbytzOUxRM3R4OTBURUZR?=
 =?utf-8?B?NjVwQkR5M0MzbmR1akp0dnNpcVRqd3N3M0xnSjRoaGFXOEROaGZsQVdWKy9j?=
 =?utf-8?B?MWQydXhTNWZaRDQzRDBIRGVFSXROcFM3SFZhYXpleDhtVUF5Ty9XKyttbVc1?=
 =?utf-8?B?TzZqU0p3UXh0TjVncUV6bVl1UnZSZWJPYzZzWFNuVEZSS01rcjN3UGM5UDhG?=
 =?utf-8?B?cGUrbG1OTW9xM2QxcUZpQ0lSSEtwbGVuVkV1Q3pRdkllSkFVdHFCZUFkZStX?=
 =?utf-8?B?cmhpRjF0MWtKSHJQTDBYOFVOc3JzeDNmZVhFNGc1Z21EVFFMdzlCNEpUTVNW?=
 =?utf-8?B?NDNWWkxBNHBoYnFKd1BhODhOQjhQSXNrUWJSZWsxdDljemJ5VW04cVFVWWkw?=
 =?utf-8?B?VUhxbVVNMDBPVE5XOHd1aytkcVBMYkdUaXpraVVVNndCVzFnVXRMNW9MR2FL?=
 =?utf-8?B?VHRDSnpvUWZ3c0Q3SjVDVXUrT0luaGNvMnZIOWpYdVhTK3ZtWGRJZTIrVEdH?=
 =?utf-8?B?YyszOTkyZkVxZThVTDhuQ1hIZ3pwSStzQVBiYU4xSzR6aWZlNVBxamFPbW1z?=
 =?utf-8?B?RnEwYko2dXFiMHZXdlhjVTZPcCtMUTFaU0lmdWlERG5UNkZOWm9EcDJKYkM3?=
 =?utf-8?B?eTdRWUQxWG5EdldRQ3l0MzZNd0s1RW9QWWZnQllHQU16TWc4cXVPbFoxRlA5?=
 =?utf-8?Q?xwIGH17HA4m5iCIc=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 25e6eb17-1822-4f38-698a-08de64a2819c
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2026 10:37:05.4987 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Jyue5cmE1MtJRyIz9UicyXbcH1sYtDxvWnlk5CmovCZB6hjQ2XlZ7tKo57JYhcNsllXGdRUaEuN3zYKU0V/RPkgLpuk39JAgXVGICmUDuig=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7672
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770287833; x=1801823833;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4mkLej0UVhiuOav72WNwQA+AzLIRglpe002UUuNn54o=;
 b=Mkqv0+HIgagw3KEbp2IWtwrJYOzm3OJmsYFhTK7vLbo/XOhSTApk5MhL
 4nPN4ax3IiBCxmfpSZ8hvKSptPVQLk2VchaJA8AE8pRQ8xuRj+GiwDRRi
 QsgYby2WtiHSbx1F7Hh+yn+t83t1kO1QXHa1JkjcLrVwPvoBVoP+vqqoT
 HAlCbwV4WSZx2VANEmCE0MLGiaCdkLhcwQwRufQ+MLCBaI6PgWGSdwf9h
 19aLGzqSaFRODGnuM76PlfW+QhCINvV9CxjJRPy/LTPJQUZeBiBbfRyZm
 d8od6f2t79UTPF1A6fkWJzT43L+jbVLsmFtdEpmlskP1lstgqNrqWUhjq
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Mkqv0+HI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] igb: Retrieve Tx
 timestamp directly from interrupt for i210
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
X-Spamd-Result: default: False [1.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:bigeasy@linutronix.de,m:kurt@linutronix.de,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:pmenzel@molgen.mpg.de,m:vadim.fedorenko@linux.dev,m:vinicius.gomes@intel.com,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[linutronix.de,intel.com,molgen.mpg.de,linux.dev,vger.kernel.org,gmail.com,lunn.ch,google.com,lists.osuosl.org,kernel.org,redhat.com,davemloft.net];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[davemloft.net:email]
X-Rspamd-Queue-Id: AE22EF1648
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogU2ViYXN0aWFuIEFuZHJ6
ZWogU2lld2lvciA8YmlnZWFzeUBsaW51dHJvbml4LmRlPg0KPiBTZW50OiBUaHVyc2RheSwgRmVi
cnVhcnkgNSwgMjAyNiAxMTowNCBBTQ0KPiBUbzogTG9rdGlvbm92LCBBbGVrc2FuZHIgPGFsZWtz
YW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0KPiBDYzogS3VydCBLYW56ZW5iYWNoIDxrdXJ0QGxp
bnV0cm9uaXguZGU+OyBOZ3V5ZW4sIEFudGhvbnkgTA0KPiA8YW50aG9ueS5sLm5ndXllbkBpbnRl
bC5jb20+OyBLaXRzemVsLCBQcnplbXlzbGF3DQo+IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwu
Y29tPjsgUGF1bCBNZW56ZWwgPHBtZW56ZWxAbW9sZ2VuLm1wZy5kZT47DQo+IFZhZGltIEZlZG9y
ZW5rbyA8dmFkaW0uZmVkb3JlbmtvQGxpbnV4LmRldj47IEdvbWVzLCBWaW5pY2l1cw0KPiA8dmlu
aWNpdXMuZ29tZXNAaW50ZWwuY29tPjsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgUmljaGFyZCBD
b2NocmFuDQo+IDxyaWNoYXJkY29jaHJhbkBnbWFpbC5jb20+OyBsaW51eC1rZXJuZWxAdmdlci5r
ZXJuZWwub3JnOyBBbmRyZXcgTHVubg0KPiA8YW5kcmV3K25ldGRldkBsdW5uLmNoPjsgRXJpYyBE
dW1hemV0IDxlZHVtYXpldEBnb29nbGUuY29tPjsgaW50ZWwtDQo+IHdpcmVkLWxhbkBsaXN0cy5v
c3Vvc2wub3JnOyBLZWxsZXIsIEphY29iIEUNCj4gPGphY29iLmUua2VsbGVyQGludGVsLmNvbT47
IEpha3ViIEtpY2luc2tpIDxrdWJhQGtlcm5lbC5vcmc+OyBQYW9sbw0KPiBBYmVuaSA8cGFiZW5p
QHJlZGhhdC5jb20+OyBEYXZpZCBTLiBNaWxsZXIgPGRhdmVtQGRhdmVtbG9mdC5uZXQ+DQo+IFN1
YmplY3Q6IFJlOiBSRTogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIGl3bC1uZXh0IHYzXSBpZ2I6
IFJldHJpZXZlDQo+IFR4IHRpbWVzdGFtcCBkaXJlY3RseSBmcm9tIGludGVycnVwdCBmb3IgaTIx
MA0KPiANCj4gT24gMjAyNi0wMi0wNSAwOTo0NzoxNCBbKzAwMDBdLCBMb2t0aW9ub3YsIEFsZWtz
YW5kciB3cm90ZToNCj4g4oCmDQo+ID4gPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pZ2IvaWdiX3B0cC5jDQo+ID4gPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Z2IvaWdiX3B0cC5jDQo+ID4gPiBAQCAtNzk2LDYgKzc5NiwyOCBAQCBzdGF0aWMgaW50IGlnYl9w
dHBfdmVyaWZ5X3BpbihzdHJ1Y3QNCj4g4oCmDQo+ID4gPiArCWlnYl9wdHBfdHhfaHd0c3RhbXAo
YWRhcHRlcik7IDwtQ2FsbHMgZXhpc3RpbmcgZnVuY3Rpb24NCj4gZGVzaWduZWQgZm9yIHdvcmsg
cXVldWUhDQo+ID4NCj4gPiBza2JfdHN0YW1wX3R4KCkgY2FuIHNsZWVwDQo+ID4gU21lbGxzIGxp
a2Ugc2xlZXAtaW4tYXRvbWljIGlzbid0IGl0Pw0KPiANCj4gSG93IG9yIHdoZXJlIGNhbiBpdCBz
bGVlcD8NCj4gDQo+IFNlYmFzdGlhbg0KDQppZ2JfcHRwX3R4X2h3dHN0YW1wKCkgLT4gaHR0cHM6
Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjYuMTktcmM1L0MvaWRlbnQvc2tiX3RzdGFtcF90
eCAtPiBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92Ni4xOS1yYzUvQy9pZGVudC9f
X3NrYl9jb21wbGV0ZV90eF90aW1lc3RhbXAgLT4gaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20v
bGludXgvdjYuMTktcmM1L0MvaWRlbnQvc29ja19xdWV1ZV9lcnJfc2tiIC0+IGh0dHBzOi8vZWxp
eGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y2LjE5LXJjNS9DL2lkZW50L3NrYl9xdWV1ZV90YWlsIC0+
IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y2LjE5LXJjNS9zb3VyY2UvbmV0L2Nv
cmUvc2tidWZmLmMjTDQwNzUgDQoNCnNwaW5fbG9ja19pcnFzYXZlKCZ3cV9oZWFkLT5sb2NrLCBm
bGFncyk7ICA8LSBSVCBtdXRleCBjYW4gc2xlZXANCg0KDQo=
