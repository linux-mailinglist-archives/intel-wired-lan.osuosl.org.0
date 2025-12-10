Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 91EB3CB40FC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Dec 2025 22:28:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EE855846BE;
	Wed, 10 Dec 2025 21:28:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eCLfuG6-IkvR; Wed, 10 Dec 2025 21:28:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 49B28846C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765402102;
	bh=oU8mEgRTq5lnqm7tNjfcTgTooik31BBz74hm16oJlbM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=74KZrh/gU+McdxYAvO4iz3BqULl9pFh07Ozb0JdA0bQdknER95Ppt5Xa8jO+SK4Ud
	 CJjyNLaVacC+kLut1h/w2ORwJQmR047A6wdaBVi2Tgzb/w2TBTlzoFpJxfzJQ7fQOG
	 bPn1r/vrevqp1Gcs/XCerm034YdHGMUOrHQRYsuaa2ibaHk2J0SnKQEHzkeouzpkBl
	 AesNRmFn4luVLwnuILiyvFXvR6sJN4n42Ecqz2nF48noEEAUrXlAsVMMjkGL32oXFE
	 xJvlzYe7W1lBwLSwqxrzxJa58JafnpnzJPlTSq/7EvR8dbVngs111fsIV5byveX3Hg
	 YatslrrhC6lDg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 49B28846C1;
	Wed, 10 Dec 2025 21:28:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id AB65D2C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 21:28:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 90DF5846BC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 21:28:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OcJw0MEItvKS for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Dec 2025 21:28:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 433188469B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 433188469B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 433188469B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 21:28:18 +0000 (UTC)
X-CSE-ConnectionGUID: Q+CgJqcSSOWRC49k+Kb9Pw==
X-CSE-MsgGUID: rQrD49o/QP+1wmRn1YZM3w==
X-IronPort-AV: E=McAfee;i="6800,10657,11638"; a="78850927"
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="78850927"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 13:28:17 -0800
X-CSE-ConnectionGUID: eF1jyt86Sieu3qSFRMPycw==
X-CSE-MsgGUID: 5H0O4KFxQ/2Fax5KQAu0Qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="201544114"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 13:28:17 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 13:28:16 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 10 Dec 2025 13:28:16 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.3) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 13:28:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HWkhZuqDrS21+IHkak77B1mfdsyoeZhFPCCwtQmeVV1aleO3bME3DAJqRpSt2uA4Lb2lYYihR9IRugGFj/5uAn5415uNHPlQiXGTScQqYtdvVlSzjXKsCUeParRUIAHt8JBzX+J6E+vmAsqLZfZvio/8y18dzzRBsTyL5RvqSMT9lcW9FY1YDRBGaczXyEf9odZ0yTFkHZBMajaURBWF1SydI/cg8QVeE2+oJqjZ4UCU9SB8BLFifN3fj2yzF1R19zQiFN/20UZ4QYwjwsB6NxOTu5cBk6Xl/kLfgDrFyLHDXTcVeNpBY6F3BjPmp8qPeVuLwA98zRHKrBlShfd/gQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oU8mEgRTq5lnqm7tNjfcTgTooik31BBz74hm16oJlbM=;
 b=VESYB6Fszz5P1pHuq3R1cE/yi4Y01X07WK+puPBQnFCG017H3iUIsRdhPt+5R8Negu+DYuqV16SzwGvIDJ0V6ND71zw4BaTeu6R0S6qvQnzI+XBHimAQSaGlE846O6dIysTLjTk2AkH3howtV8jidZUCDlPeoHLCtUuWWBcfGH3uN+MKN4nPEdPFGgFwTX6JcNGtNDxqecwlZWvjZ9Mw7hkM/MMwRSIxDwbt/9ETnjNwJ0rOw4mp1Afb8MVTPhFtGkuJciiGomAWBDEhM4d5QkoYWgwPvuQQ9rFuJEhgBQOFIACL5zimREh2Ltju7LwV2H9dcSVz1tkGlRJBnQ8buw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by DS7PR11MB6293.namprd11.prod.outlook.com (2603:10b6:8:97::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.7; Wed, 10 Dec
 2025 21:28:09 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.9412.005; Wed, 10 Dec 2025
 21:28:09 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, Brian Vazquez
 <brianvv@google.com>, Brian Vazquez <brianvv.kernel@gmail.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "David S. Miller" <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: David Decotigny <decot@google.com>, "Singhai, Anjali"
 <anjali.singhai@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Tantilov, Emil S" <emil.s.tantilov@intel.com>
Thread-Topic: [Intel-wired-lan] [iwl-net PATCH] idpf: reduce mbx_task schedule
 delay to 300us
Thread-Index: AQHcUoTa2JzCgyraWkyhb3o3J5JeDrTvBToAgCyMG6A=
Date: Wed, 10 Dec 2025 21:28:09 +0000
Message-ID: <SJ1PR11MB6297802AB885096DB4103F819BA0A@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20251110205837.3140385-1-brianvv@google.com>
 <IA3PR11MB8986267ED702B8F54DD47D33E5CCA@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB8986267ED702B8F54DD47D33E5CCA@IA3PR11MB8986.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|DS7PR11MB6293:EE_
x-ms-office365-filtering-correlation-id: 10c2dea1-598a-4f07-cbad-08de3833041f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|38070700021|921020; 
x-microsoft-antispam-message-info: =?utf-8?B?RGVCNlZTZTNXajFaRVc0YUJoV29EL1JTNlhxcUhkWUVkQ2RPenN4cERrTGlq?=
 =?utf-8?B?RWdWdjcvOGo0U091QXcrdEZDNG1XTWFzbnNiVzhBRE5XUmdWbzBxdW1XU3B1?=
 =?utf-8?B?amN6TVhWM0pYMGp6V0hNVlJmUFE0T0NMUmRSeVpMdXRuZ2Y4MENaSWFlb25Q?=
 =?utf-8?B?VEhOWTV1VlB2Wm9wZzNGdGRHMnpTMnhSNWE1ZWFDR3JHWHNCcnVKcEtydTh2?=
 =?utf-8?B?ZTcya1NYdGlUVEYzb2ZTNmNSM1E4a0JjTitHR0JKQXY3cG1sUURhcnE1b0hz?=
 =?utf-8?B?cVFWNFFTSG0rYWNKMEo1TkVWMjBLbThtVktlWG9FNWw1TEgrK0U5d1NzT2x4?=
 =?utf-8?B?cmxMS3M3UUJLcnRBczU0bXN2VEJyZGFoZW12eVFtN1MwRXFCZlZ2eXBjcmhr?=
 =?utf-8?B?anRXdnhwYXlLZFd6RTFHb2s1dERCc0R4NHRwUGhwcC9qK3M2L0RqK3pRZkE5?=
 =?utf-8?B?bWxUbDY0Z1hXWlRRLzRkZkljVW5KVWJpMUFtOXJSUzBZeXllUXJ2U0RnVjhX?=
 =?utf-8?B?U2FuOTI5RzJLWk5QUTdOL3d2aWtmOEVHNklMWklobjVCQThtakVBOHY1b0Uz?=
 =?utf-8?B?b0lTdThKS0hGazYvaVFLQmR5SVJhSG0xSGZUUzR2ZFpqZVhoVk1tTnJzUWFu?=
 =?utf-8?B?LzBYZEpxTUk5UlpWSnk0dU5LTllHQ1lSWDFrQ0RWeTBkejgvcVQ5dVlYTTBS?=
 =?utf-8?B?SlAxSDNJOWhTbG5iSGNtQWFKSGF4RE5iOUJ1eVRRYkxoVFA5WEZBcWFadnBX?=
 =?utf-8?B?VjRkdHl2MHk3eGNmRWkvRE10b2NoVFVxWE9HSGY0Rm84bE9oa3JSSHZsWGJM?=
 =?utf-8?B?SEUxM0EzY2FHVjhld3J5cXhGd1ZzdWI4YzE3OEd3dXlDRmVFVEU3MWNoenhh?=
 =?utf-8?B?bFhlaHB1SDFTZnNxcEg5OUQ2TmoyZldYQVd1U3J4THpEUGpEZzh6TEpaU1Z2?=
 =?utf-8?B?dWtpSGdMRTI3RHkzOXFIMHVmd1hZcjhaSWdzcVBPbUJyOUlvSDloWG5xWFha?=
 =?utf-8?B?L285MW41Q20xMms5djN4cDJHUVhUNTVRbzQzYksvZG1SQU9ZLzlsS0ZPbWJY?=
 =?utf-8?B?ajVJYi9yNkpLMG1yWExtdWI4TkRoOUthQ0g5TEVJejd4VWxST2s1TURnTi8y?=
 =?utf-8?B?b29EZjZWN2NjUVRWNE1BVlFKOC9UYlJnNUFUZmFhdTJYOFVaZDhDcFRodTZP?=
 =?utf-8?B?UllxRStYSUFsdU1FQ042cTkyeHk0cmptTkVZQ1ErRm9ibWgzaEdnV0pRTWpn?=
 =?utf-8?B?VzNkNnljWnZpN0Z6Q1NNY1kwUTdYWmUrbHMxS3FTRm9UckU4ZEt1eG9vVm9n?=
 =?utf-8?B?R1NyWitqSlNrdFlJQnZZSDlXZXRCVW1ra0Z5UEVVaHc0K09xSmhCRmxtM2lS?=
 =?utf-8?B?bzlOY0ZCSXBNTW5sRUNJNGNyVDhYTEFKRGJjUWN1Rldra09QellkWHIxampt?=
 =?utf-8?B?U2drQktwUEFvWXk3UXUreWxrK1VaMDRRMXVNU1hJaEhRdmxJSXZ0eHFjWFFx?=
 =?utf-8?B?SjdiSW1NOHdhVW5FcEl2dHRXRzZTa0RuZFBMOFZIdE1Pc09kZldRU1RZL0o0?=
 =?utf-8?B?UGdaYm96QXV4czFpTXdydmdaN1kzd0FZblh1bE9xRDY1ei9JSllRenNsWjJj?=
 =?utf-8?B?MGc3ek8xbGg5L1JKVmQ1ZkN5bHBGQ0RPQlZJREJZczFvOWN5SEM2TzY5N1Vp?=
 =?utf-8?B?OGdqVzFTc1E5MVI3NmJvR1NpQS9hNEI3Myswd05FajF2YUpsOWVGQ3p5RVpj?=
 =?utf-8?B?YUF1YXdzZGxCY0ptaGl0dGlwZHF4bmZ3K0JNVW1MQ25wb0tCQUwvQ1hmMTJl?=
 =?utf-8?B?UHF5cjRCdkk0blZ4aThqbDVJU1pQUHcrTVViNm9KSnFjV0JZdzhtVEptRUh2?=
 =?utf-8?B?QVJBZG5nV0FZZ0hmSlFoTk1uZXEwL1lCQ1dpcm53VEx5MkdZNVZPajh6U1Mv?=
 =?utf-8?B?d0RWK0liNlZvL1dWRXpZRGVqbUljOXRSSS8yZk93UWtwYVVBaklxYzhvTGxK?=
 =?utf-8?B?OU43VytJdEtJcnNFR2M0MEN2UFlhUG9RUmJnSEVMa3owK3pkb2xGT3dMdUlp?=
 =?utf-8?B?UTRzclNiNzg4ZjY2TzJzYWpJcDJibFdwZ0FhQT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(38070700021)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?K2lrcTltS1E5SUVYUGhZcTBpajB4c05EK3BWK2lEZVR3VmQ0b2V5TmlCdTFy?=
 =?utf-8?B?MUNWdG8wMU9hZWluM0FQOG04QnoyVlJNWHhPdzVZcGdkQ2J5SzFGZXl6US96?=
 =?utf-8?B?WWY0OStjUWNMREhYSEV6RCtkRzJ5WElJUzFwVEgwNUxITmNvY0xLYWpjeFgw?=
 =?utf-8?B?NHpueHUxVnhIcFMwWE1LZ2dWMG15QTdoUmFXaW5tenk4bVdFcTRPTzVsK0xh?=
 =?utf-8?B?RUxpVERibFM2UVlBbmZaa3FrU0tlNUw2N3dVeXBzeTl0b1ZiY1pnY2FLOVdK?=
 =?utf-8?B?aTFiczFmV0xYQ2k0QS93QThCTjBLZUhGRXNXTFRiVTNCMDlHVXRiRUpuMGVj?=
 =?utf-8?B?anlBTkJRTnR2MmJiSWErMUh4ZEcyN2NpYktLZTFsbC9BVjVMVG9tRTM0TjF1?=
 =?utf-8?B?MGMrSWRDUU1CaUZQSE5YRzg2U0Y0YmQ5eEpXMGNtQmFvZGtwamE0K2dBTE5M?=
 =?utf-8?B?ZEkrOVVOWmJFQ2EwdHhVc3RmTmgwY2Rhb3phYnVOLzZweVdvQnIxdjJHSWEz?=
 =?utf-8?B?TmNqRTdnL3B1R2ZQV0xoeWNMbjF5bjJpMGtTbHd2cDVNVFpObERSdTdLeks3?=
 =?utf-8?B?MWU2clB2dE9iaHplb0RxQTZicm9kdGdtNmhkYkJEQVdSbkRYdlBjMjBaSTE3?=
 =?utf-8?B?K1EvS1lqdE40bjg2QW1DcHlyL1J6bWNPSDY0eGM1RVBnRThtZGJnaUJPTU9j?=
 =?utf-8?B?RFhPL21HT1BxN1ZvYlVJR290WlRTV2VsbWFvVFQyZmpnREZON1g0VlZXWDBL?=
 =?utf-8?B?RzJ0VWFSLytaeWRtTk94eWpRMlFYbW5PcDRMZ2hCQlVmNWJUeUZTLzlqUWRm?=
 =?utf-8?B?azZWRU1kY21VS2ZwQ1l1Q1FkSHF1VllqSWpMaG5yZ3Q4U2ZrNi96cUJqazVp?=
 =?utf-8?B?YjczMXBrTVdWM3k5SEk3ZFZxTWhTNjFwYW4xeXhRTkIrd29jc1NDVVdDU0pJ?=
 =?utf-8?B?VWxKZ24wYVIrcExwTnIzZVFCZ0dYdVFZTG5WbWUwd1F0UXdnZUVrRjh3WHpl?=
 =?utf-8?B?SjA4cExUZC83aFFpZTA2V3ZEUkQxd3dOUzdyNTNHK0h5Rm1IMVJQbW45eW0r?=
 =?utf-8?B?eHNxcE1MU2o3K3U2WEo4cUJDSHU0SVNudmJuNy84S1oxeU51NU8rOWs4dU5s?=
 =?utf-8?B?bmpyaUxUUmhBQ05VazBhM3lnZEhkTTlUamNTMXZhTGRDNHAwbnRFcWl6dE1D?=
 =?utf-8?B?T2VGWVQwRTdZNE0zWmdXalVieDJjdC9YS2N0VmN2VlByZnJYN3pKcFRMSWpX?=
 =?utf-8?B?ck5rRFFCSTZuT2VuV1RMdlFIQ2NJWlJZWUhwcXBxRStFTzlqRHpIc3ZZNW1M?=
 =?utf-8?B?V29Qck1HNzhpamlTRGR5Rm5lVzFrS04xNWloQUFzYlduRTArajFyTVEwU1VU?=
 =?utf-8?B?bWZSU1dEVExTaDhkdHo0SXczOGp1ZGtVNEF6WW1na1JRZG92K09DTXhDUVht?=
 =?utf-8?B?cklTVlE1eXp4VUVQV0dtYlZ0eTErbkxDTzl2TWJvb2hQUjgxMUFXdnlDd29i?=
 =?utf-8?B?RGRVbXdPcUxuTTN6NHhuWksrQ1BjUkIrU2F2YzRjR1IzRTFOTThLSk45d2Yx?=
 =?utf-8?B?d2lPa1ZKelhQM1ZybWdtQk5rbjEvcGYzajVzNFRJM2p1bTJ3QXNRc2JLN1lK?=
 =?utf-8?B?ZTR0SEpkVkFMN1BURXFmMUNEeDZ3bGFqaGZXYThEdmU0enpNZEhWdnJUTGo1?=
 =?utf-8?B?OU8vQTcwYU1yelpFUWRYdExoSlZ4YWROUVA2YmxYdkI5UVZwRmN6YnlRcFBm?=
 =?utf-8?B?cnZqalhOQXpndXF4M0crRGtJMktmZkhZajVPcjFzU2FueFpWM0ZuQjNrWW40?=
 =?utf-8?B?cmM4bnRSaUtxcmlMK0w2dGtqVWlZWThaMkVrUlJ2N1hiM0lyRnNPenlqQVc5?=
 =?utf-8?B?T3BPZjFhRGhMRUo5NnptOXFTTVJuM1FpOUs4RWFmQnp6alhpcWFLR3FaeVRZ?=
 =?utf-8?B?eUNkQTNxQ2lwcnNWa0NYT3VpdjQra1ZJQS9xNkx1QUpEUVN6TkpkMUcrZzdr?=
 =?utf-8?B?NGhOd3diNE05S25pcHUrSHlMQWVBU1M3SkdHeWpCdXdUcEpSMFdESFN3WHBX?=
 =?utf-8?B?a2cxQk43MlBGMXQrcmsxRGdtbzBtdEZBcTdTeEIvQkFKM2FtcnFhdDlZVUg1?=
 =?utf-8?Q?huF2qN5a3VWHtjd1kSKNN08EW?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 10c2dea1-598a-4f07-cbad-08de3833041f
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2025 21:28:09.6300 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ehQzFKi/ioj6rdCAealYBZVS1xtATXzw3egBoVxMYIfCPLg/esTKl8V/sW2Z+q1Yk49Y6cczbVcbVCj0dyJaBA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6293
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765402099; x=1796938099;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oU8mEgRTq5lnqm7tNjfcTgTooik31BBz74hm16oJlbM=;
 b=lqLRijCtjmtsk3UJCHNzRXw6d8KaqRnVPvUlVQtPodTWLdLeWx3mYfON
 evqE3F77ZHSq06J+PC0tBLNpH9x4MCKWCPVR1WjVIWYFzQYt0IVN+VNJ6
 TzAMycwkNApfC3gX1n6qvtXbBCMTHvP2tQ6R6fpLucjkfQ84+r6B1ZTqR
 vAtOpv53WkzoQ6MMJTBehfiX8Gy75b/oX9DAGC73WbQk3BLaEfrSDq1/L
 43JPpz/NUfiahERmreVIocP15cFFl7y3XPGA6i7wN0jHqvBob+KMhVJox
 5cQLX5j/T5IweMJmpqllpChAd6g+9Qo+RWp4E8acHrWa2ZtZp5QcC8OoW
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lqLRijCt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-net PATCH] idpf: reduce mbx_task
 schedule delay to 300us
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZg0KPiBMb2t0aW9u
b3YsIEFsZWtzYW5kcg0KPiBTZW50OiBXZWRuZXNkYXksIE5vdmVtYmVyIDEyLCAyMDI1IDU6MDYg
QU0NCj4gVG86IEJyaWFuIFZhenF1ZXogPGJyaWFudnZAZ29vZ2xlLmNvbT47IEJyaWFuIFZhenF1
ZXoNCj4gPGJyaWFudnYua2VybmVsQGdtYWlsLmNvbT47IE5ndXllbiwgQW50aG9ueSBMDQo+IDxh
bnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcNCj4gPHByemVt
eXNsYXcua2l0c3plbEBpbnRlbC5jb20+OyBEYXZpZCBTLiBNaWxsZXIgPGRhdmVtQGRhdmVtbG9m
dC5uZXQ+Ow0KPiBFcmljIER1bWF6ZXQgPGVkdW1hemV0QGdvb2dsZS5jb20+OyBKYWt1YiBLaWNp
bnNraSA8a3ViYUBrZXJuZWwub3JnPjsNCj4gUGFvbG8gQWJlbmkgPHBhYmVuaUByZWRoYXQuY29t
PjsgaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmcNCj4gQ2M6IERhdmlkIERlY290aWdu
eSA8ZGVjb3RAZ29vZ2xlLmNvbT47IFNpbmdoYWksIEFuamFsaQ0KPiA8YW5qYWxpLnNpbmdoYWlA
aW50ZWwuY29tPjsgU2FtdWRyYWxhLCBTcmlkaGFyDQo+IDxzcmlkaGFyLnNhbXVkcmFsYUBpbnRl
bC5jb20+OyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOw0KPiBuZXRkZXZAdmdlci5rZXJu
ZWwub3JnOyBUYW50aWxvdiwgRW1pbCBTIDxlbWlsLnMudGFudGlsb3ZAaW50ZWwuY29tPg0KPiBT
dWJqZWN0OiBSZTogW0ludGVsLXdpcmVkLWxhbl0gW2l3bC1uZXQgUEFUQ0hdIGlkcGY6IHJlZHVj
ZSBtYnhfdGFzayBzY2hlZHVsZQ0KPiBkZWxheSB0byAzMDB1cw0KPiANCj4gDQo+IA0KPiA+IC0t
LS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSW50ZWwtd2lyZWQtbGFuIDxpbnRl
bC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gPiBPZiBCcmlhbiBW
YXpxdWV6DQo+ID4gU2VudDogTW9uZGF5LCBOb3ZlbWJlciAxMCwgMjAyNSA5OjU5IFBNDQo+ID4g
VG86IEJyaWFuIFZhenF1ZXogPGJyaWFudnYua2VybmVsQGdtYWlsLmNvbT47IE5ndXllbiwgQW50
aG9ueSBMDQo+ID4gPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgS2l0c3plbCwgUHJ6ZW15
c2xhdw0KPiA+IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPjsgRGF2aWQgUy4gTWlsbGVy
IDxkYXZlbUBkYXZlbWxvZnQubmV0PjsNCj4gPiBFcmljIER1bWF6ZXQgPGVkdW1hemV0QGdvb2ds
ZS5jb20+OyBKYWt1YiBLaWNpbnNraSA8a3ViYUBrZXJuZWwub3JnPjsNCj4gPiBQYW9sbyBBYmVu
aSA8cGFiZW5pQHJlZGhhdC5jb20+OyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZw0K
PiA+IENjOiBEYXZpZCBEZWNvdGlnbnkgPGRlY290QGdvb2dsZS5jb20+OyBTaW5naGFpLCBBbmph
bGkNCj4gPiA8YW5qYWxpLnNpbmdoYWlAaW50ZWwuY29tPjsgU2FtdWRyYWxhLCBTcmlkaGFyDQo+
ID4gPHNyaWRoYXIuc2FtdWRyYWxhQGludGVsLmNvbT47IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5l
bC5vcmc7DQo+ID4gbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgVGFudGlsb3YsIEVtaWwgUyA8ZW1p
bC5zLnRhbnRpbG92QGludGVsLmNvbT47DQo+ID4gQnJpYW4gVmF6cXVleiA8YnJpYW52dkBnb29n
bGUuY29tPg0KPiA+IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtpd2wtbmV0IFBBVENIXSBp
ZHBmOiByZWR1Y2UgbWJ4X3Rhc2sNCj4gPiBzY2hlZHVsZSBkZWxheSB0byAzMDB1cw0KPiA+DQo+
ID4gRHVyaW5nIHRoZSBJRFBGIGluaXQgcGhhc2UsIHRoZSBtYWlsYm94IHJ1bnMgaW4gcG9sbCBt
b2RlIHVudGlsIGl0IGlzDQo+ID4gY29uZmlndXJlZCB0byBwcm9wZXJseSBoYW5kbGUgaW50ZXJy
dXB0cy4gVGhlIHByZXZpb3VzIGRlbGF5IG9mIDMwMG1zDQo+ID4gaXMgZXhjZXNzaXZlbHkgbG9u
ZyBmb3IgdGhlIG1haWxib3ggcG9sbGluZyBtZWNoYW5pc20sIHdoaWNoIGNhdXNlcyBhDQo+ID4g
c2xvdyBpbml0aWFsaXphdGlvbiBvZiB+MnM6DQo+ID4NCj4gPiBlY2hvIDAwMDA6MDY6MTIuNCA+
IC9zeXMvYnVzL3BjaS9kcml2ZXJzL2lkcGYvYmluZA0KPiA+DQo+ID4gWyAgIDUyLjQ0NDIzOV0g
aWRwZiAwMDAwOjA2OjEyLjQ6IGVuYWJsaW5nIGRldmljZSAoMDAwMCAtPiAwMDAyKQ0KPiA+IFsg
ICA1Mi40ODUwMDVdIGlkcGYgMDAwMDowNjoxMi40OiBEZXZpY2UgSFcgUmVzZXQgaW5pdGlhdGVk
DQo+ID4gWyAgIDU0LjE3NzE4MV0gaWRwZiAwMDAwOjA2OjEyLjQ6IFBUUCBpbml0IGZhaWxlZCwg
ZXJyPS1FT1BOT1RTVVBQDQo+ID4gWyAgIDU0LjIwNjE3N10gaWRwZiAwMDAwOjA2OjEyLjQ6IE1p
bmltdW0gUlggZGVzY3JpcHRvciBzdXBwb3J0IG5vdA0KPiA+IHByb3ZpZGVkLCB1c2luZyB0aGUg
ZGVmYXVsdA0KPiA+IFsgICA1NC4yMDYxODJdIGlkcGYgMDAwMDowNjoxMi40OiBNaW5pbXVtIFRY
IGRlc2NyaXB0b3Igc3VwcG9ydCBub3QNCj4gPiBwcm92aWRlZCwgdXNpbmcgdGhlIGRlZmF1bHQN
Cj4gPg0KPiA+IENoYW5naW5nIHRoZSBkZWxheSB0byAzMDB1cyBhdm9pZHMgdGhlIGRlbGF5cyBk
dXJpbmcgdGhlIGluaXRpYWwNCj4gPiBtYWlsYm94IHRyYW5zYWN0aW9ucywgbWFraW5nIHRoZSBp
bml0IHBoYXNlIG11Y2ggZmFzdGVyOg0KPiA+DQo+ID4gWyAgIDgzLjM0MjU5MF0gaWRwZiAwMDAw
OjA2OjEyLjQ6IGVuYWJsaW5nIGRldmljZSAoMDAwMCAtPiAwMDAyKQ0KPiA+IFsgICA4My4zODQ0
MDJdIGlkcGYgMDAwMDowNjoxMi40OiBEZXZpY2UgSFcgUmVzZXQgaW5pdGlhdGVkDQo+ID4gWyAg
IDgzLjUxODMyM10gaWRwZiAwMDAwOjA2OjEyLjQ6IFBUUCBpbml0IGZhaWxlZCwgZXJyPS1FT1BO
T1RTVVBQDQo+ID4gWyAgIDgzLjU0NzQzMF0gaWRwZiAwMDAwOjA2OjEyLjQ6IE1pbmltdW0gUlgg
ZGVzY3JpcHRvciBzdXBwb3J0IG5vdA0KPiA+IHByb3ZpZGVkLCB1c2luZyB0aGUgZGVmYXVsdA0K
PiA+IFsgICA4My41NDc0MzVdIGlkcGYgMDAwMDowNjoxMi40OiBNaW5pbXVtIFRYIGRlc2NyaXB0
b3Igc3VwcG9ydCBub3QNCj4gPiBwcm92aWRlZCwgdXNpbmcgdGhlIGRlZmF1bHQNCj4gPg0KPiA+
IFNpZ25lZC1vZmYtYnk6IEJyaWFuIFZhenF1ZXogPGJyaWFudnZAZ29vZ2xlLmNvbT4NCj4gPiAt
LS0NCj4gDQo+IFJldmlld2VkLWJ5OiBBbGVrc2FuZHIgTG9rdGlvbm92IDxhbGVrc2FuZHIubG9r
dGlvbm92QGludGVsLmNvbT4NCg0KVGVzdGVkLWJ5OiBTYW11ZWwgU2FsaW4gPFNhbXVlbC5zYWxp
bkBpbnRlbC5jb20+DQo=
