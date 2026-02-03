Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id PlInFqVIgWnqFQMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Feb 2026 02:00:21 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B947D3322
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Feb 2026 02:00:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A5F2F607D2;
	Tue,  3 Feb 2026 01:00:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BfYSdhDM94Ej; Tue,  3 Feb 2026 01:00:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DC26A6075A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770080417;
	bh=ieBicGvH4VCc5/bATCwY/qGMwnJpiyJb5lqL19wWLRM=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kJgZb7UD+KBOdvUErvgrd2/jSm9D1DS+wd1hL0aeeMHkT/it+U+7n8Cgdak5lT25a
	 lTOBqlRJhEbyLbzLIquVGEYI5WrpFGTAHKfVgw6tDam2dPYreeXmrz6Ot0e46YsSYz
	 hafldca2NUvprW8CamU84RiRVLJ51OXGIvQT/cAnGbqUFc5rr+S7Suj2ntpK55FzuJ
	 SwQO/TDAq9oFmn3xeEtGdTYChhoxqBvAspEood3I2MABpKq8VFpWMoInoFXEUir7Im
	 datvAMO6vLCtIL4LZO1zX1g+rPtr7yCSAVEFH8lCqITJnzHibVYZtC/2mM5O2CVT4M
	 lY/zzxT7DSJXQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DC26A6075A;
	Tue,  3 Feb 2026 01:00:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9CDF91A6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 01:00:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9648640A5D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 01:00:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oMX25ldrztKk for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Feb 2026 01:00:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org AD8A340A55
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AD8A340A55
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AD8A340A55
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 01:00:14 +0000 (UTC)
X-CSE-ConnectionGUID: BlkQ/ym4QFuLuR0XwKoyxA==
X-CSE-MsgGUID: xPyvgWaeTK+mqt/B1F2vzQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="70451517"
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="70451517"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 17:00:13 -0800
X-CSE-ConnectionGUID: SeTT1NQvTIaSLFLOC/xLKQ==
X-CSE-MsgGUID: uB1TCGTiQDKMH7KGYPj6XQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="247281534"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 17:00:13 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 17:00:12 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 2 Feb 2026 17:00:12 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.8) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 17:00:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gsXeF1NrzvlaggnZOW7CdIp5rwCD3h1vERfMPtELauk+qP/AGRZtk3hmO/NhEHZz6qwCo4xvLfQJtYFSguF+k/XVpUF9hU/0+1YEzxpbDVDyyvJKaRqf5+fjmj26xBnwIW6XzyklyWalVw8khI2LlretQWY/hqxIwo/aT7UjH7QhNCAzF2qxFTes67I6DxA24/cLNjNAoQqyOoOpYz5O52xcIXH0uej1s8mSbdumkP12xJ1CH0cK+4cRRGfmnCdCPiTO0F7aDR0YOu0wxRmXhrMg0uriMNwDwEt6Y9CQ01O5twR5jNad53KYRlHvFL1Q1ZUu7jZZxgs5sdJEHG6pCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ieBicGvH4VCc5/bATCwY/qGMwnJpiyJb5lqL19wWLRM=;
 b=uUbHVNpci8B7gMj2xlNhUqKMq0+7IRGWGbAkhGg9Zn3oXvVEqrdDInolGHJRiYxRIn12teABOuENOIVvF9HvAXWJT4XgAjqUGyhEA5xD6PNq8qDI4HED7UQocnvqA1BzpmuD//Hjb1rfUZJodsRjGxX6SpmwO5PSLhYs9/xzbMIA46sVLw8BO3UMgiO7aDaJ7CNC/5Iq6d+z8tqYdfxRuqhnYk2odjdQGQyarzmVrJperVVxtSdqIpNGzSTAalInNZjdZrGiFISnvcxdtRwAlDTzPwsOnu/Q7ZDQMyiBMa2wy31TcPRCkzl7MOzhjCU2UroPs8lEbuROZ0IzSreahw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by BL1PR11MB5979.namprd11.prod.outlook.com (2603:10b6:208:386::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Tue, 3 Feb
 2026 01:00:09 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%3]) with mapi id 15.20.9564.010; Tue, 3 Feb 2026
 01:00:09 +0000
Message-ID: <b064ca33-1d94-4c7e-b0d0-78430d8cd0ac@intel.com>
Date: Mon, 2 Feb 2026 17:00:08 -0800
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>, Petr Oros <poros@redhat.com>
CC: <ivecera@redhat.com>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, "Eric
 Dumazet" <edumazet@google.com>, Stanislav Fomichev <sdf@fomichev.me>, "Tony
 Nguyen" <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, <intel-wired-lan@lists.osuosl.org>, "Paolo
 Abeni" <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
References: <20260202084820.260033-1-poros@redhat.com>
 <20260202155813.3f8fbc27@kernel.org>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20260202155813.3f8fbc27@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0002.namprd03.prod.outlook.com
 (2603:10b6:303:8f::7) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|BL1PR11MB5979:EE_
X-MS-Office365-Filtering-Correlation-Id: b13c9748-11de-41a6-7f77-08de62bf940c
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|7416014|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YWFheGNqRXJiRUYwcVlKdC9ScTBYdnBHcUNyeWMvN3oxV0twbm1KMzdHUFVl?=
 =?utf-8?B?VFhHa1BQbkFlRkszV29lWlpvcTl3RzFPQ1FUR0RaR09hMkhjdXZScVp1UWRD?=
 =?utf-8?B?TTVaODdtakoxdmcwVzBKb2RFUlhhZXRYZkZTN3VNUW9EYnB3MXJyMGNZMWwz?=
 =?utf-8?B?RVhRemVPeWU2b1RCU1ZPL0tuV1VobXkxMUxVajNmaldBVWVaS1pPYzBDMnhJ?=
 =?utf-8?B?NGVibEdlcGFEeDc3dUY4c3B6dUdnYXliaEJDbldJTU1sV1pMK296aTBZTitJ?=
 =?utf-8?B?cTRUWWUzc0lHUTJtODRRbUp4a3JsOEMvd3pTV2RETldpWGdWaXc4UkJoRnAx?=
 =?utf-8?B?b2VkMjFjSTdZdXF1MUltTEtaZ3ZUQjRReFgyUCs5bXM2aFlzbzJ4R2hjUWta?=
 =?utf-8?B?cnpzLzZxcmR4T1M5enNzZThBWGZtSW1DQ3NwRCt5Q3lkNjJ3azhoU3lCMTQz?=
 =?utf-8?B?clgraVJaUHl1RVE1dmNIdE43Q2dZODJCOTkyOXEyWHZaT29DaUhEUWMwNkFG?=
 =?utf-8?B?MXRwRExaRkt1ZDdEdFZFbEhOUUJRbzJJenE3cXZJTEtWdXJ5aHlCQWZjckFq?=
 =?utf-8?B?eDlOeHM3RWNoKy83VlFSSms2bXZ0WjNYcHFsczhBL2NWYmVEUWhjR0c5aVBV?=
 =?utf-8?B?MWZRQ2E1UkNNcFlEQjVvdnRaSHVQQm51a1RRQjRqS0Frd3hIb2RVWXRVOGdx?=
 =?utf-8?B?SWxpZU9oemJYMDJFbnRRYU51M2hYYUpZUWwxTmpBWU00cXQ2TE5JRExvWEFJ?=
 =?utf-8?B?RUMxd2lJNENVUERmK01iQzB2Z0N0ZjM1SHl3R3Z6Zm9qU2tkaXZIVll3V1R3?=
 =?utf-8?B?MFI2S1FkUUkwYVpQZzRORHlhbHZzb0xOaDVFaDBKUG1vdWVncmFGMmoybDhH?=
 =?utf-8?B?TVgvREVnRnVjQkNRNFFKVlFLaXIrb2t4TWlNL3RCdXEzN3doRFNiMWtqRE1a?=
 =?utf-8?B?Ny9kUURGY09ZNjF5SzNnSStkaDZlZUJyNnlxM3dCTHE3UU85TTg5U1E3ank5?=
 =?utf-8?B?VlRXL3E3b3hpdzI3eWYxeTA5ZWVBNENIUUJoRW56Rm14Tm5ZZmFFU3MzMEFG?=
 =?utf-8?B?YVRWcFRvd0MzVldVQ1lZcGN4NkZMNUJ4bkJ3Rk9sSDJHbDRrbk9vQUtLYUZZ?=
 =?utf-8?B?ejE2Y0owZ2pSNzQzcWsvc3pWbG5oZUNpcTBLWHlSVFYvd0JBQTlsWEI3TTVY?=
 =?utf-8?B?UkFRL0NlS0xoVXhWQjdwWWZIemZpZkRDbHJCWGlFejVnb1h0bHZqU3dYYS9u?=
 =?utf-8?B?UG1pMXpNZ1FUQUtIY29RZTZIR3ZrUmtKeHpveEdVSG5hNXNMMm85azBidWY0?=
 =?utf-8?B?SXRqRWJQS2hZb3R1RTh3ekRDM2M1dVJTQlppS3RIcTBBbkVkYXdLc21kR2VB?=
 =?utf-8?B?Umw3VjJ6eGk2T3pMTXpVTTdFbkx4blVNcU1HdG5SUDV0UzZrQkZGMnF4ZFR0?=
 =?utf-8?B?cEt5YlFUd3NYZjk0Z1ZpTzRWNFh0MDM4QUpUY3V2TkxhM2JreENwUDV6RW9H?=
 =?utf-8?B?N1ZZdTRMd1Y4VUk0N21xVktKQWNhaHlaNlBQVFNrZnY3Ylo5ZDRMeFZXSW9T?=
 =?utf-8?B?WW4xUkVqU2djdU1RS3VVL1o5WG12NThBa0ExUHVyWDBMd00veXRjREwxLzBB?=
 =?utf-8?B?WURQSlFQY1htM3Zva0N2Sk5KTURQVGF5dUlQY3RvUDNYOWRaSnpVSnNXV3Mz?=
 =?utf-8?B?R0tIU2l0eE51MWUwclQ3dHpodTBqcFB0aUFBd0NKRlY3cStucFQ3TXpVODg1?=
 =?utf-8?B?TXlIeHM4NVVNYlkzeW1rendmZnh2QWJSNkdtRWE3VGVOSitXZWxObmxHQWNO?=
 =?utf-8?B?NTFqL1RGRDdKYnJheHh3M2p5K0pZbFNLdFhmMkdZSGhTMlp4dmxnNUhpQVFj?=
 =?utf-8?B?dmJNbEpYeE4xS1I4QldRUzNxK3JXblhweVFXUE5ldUpFajRUWS9OVXFBWHdY?=
 =?utf-8?B?ZStJdHNBZFdQcXJralhWcTNPblllVDBEeTQ0SXR3Y0dxRklDYTdBYU9VVzNF?=
 =?utf-8?B?aVN2R0pnOFNFZHhuOENXTGU1c1lna29TYVdRcGhJZE9zeGcxbnR6UXNPQjJP?=
 =?utf-8?B?Ly9ackFHNko4VE85ZWdGU2NqQnNaL2VMcUFJdEZ2ZjRRcExabXJOZk93V05s?=
 =?utf-8?Q?35TM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L1o0UURuUU1uRVpYZDlCTEFnVXM1dFo1a2o2QUwwVTZ5a2dWMTJpTUdqMFRz?=
 =?utf-8?B?aGh5bDhVNHNBM0NRT3JkQXBraG5sVzl1ZzMvc09mVks2WjVKTHJZL3p6TFhh?=
 =?utf-8?B?MDJRZThNUnp1eGV3aitaNzBWNDhKL1ROWGZwOTEzNS80WVAyWFJDbndkS09I?=
 =?utf-8?B?bHlyVFFFVTdSMVpYR2FCQW9hWG9NUWdweFZpUnZMOEhPQ3Z6SVJNRVQ5aWE2?=
 =?utf-8?B?NmRROEIyWGNhRlJPN216T2dzcFNKc2NxL0FCYy9GK1paQ0VGZHgvdXBlaUl5?=
 =?utf-8?B?d09IUmxqdG5RcktCbHBBMDdHZ3BHSEt3bkVrMzZSaGdvU1dDV2VZMC94SkFD?=
 =?utf-8?B?RHVPWXdWd0xmZTBBSmREVXgwdEUxM0pydzZGaG9PemIvS2hmaUFGMjBuUlRi?=
 =?utf-8?B?elhtV2dmWnJUK3FXMUtoR0tZWHZ3amY2bXhFd0ZMTWVsVTNmTWVYWU1vMWdN?=
 =?utf-8?B?TEUrd2orcWh3OVNRU2grYXo1T0lLYUMvL0pkSjg1ZnNPUjQwSENwV2Uyb3li?=
 =?utf-8?B?MWtVTE1zVDRPYmJFYTRvQWJUaFB3WkJveGlGUER1NFZ1elNxZUwyMU5uVFVT?=
 =?utf-8?B?US9rTy85NjNZak5sUUUrcUZvMTFaWkJ2ci9xR0ZYZUNqaG8zaThsK2RmaDJJ?=
 =?utf-8?B?eHRlUzBnV3dBRXl5OWl5Y2hyRnRBczc0ZnM4MnFPdFpDaGhFVDNGVDJ5Nmhp?=
 =?utf-8?B?eUtLMFZET2FvZWlFNzVSdGU0ck1tNXFzSXVWTVFRSDduZmdVUloxMTBiMHZI?=
 =?utf-8?B?b01FQTZxbVZTL0V2UkZZREF1ZEZVSHBCOHhmTEd1QnJjbmVXZVkwVXZ4NFZ1?=
 =?utf-8?B?N05uU2dOUU5weTRXOE1nSlU4YzduS1Q1c3hrNDhtVDVweS9vNjBkSTJvMW0z?=
 =?utf-8?B?VW9HSkJQT0VjQm1lZXdUa1NKbk5VcE8rQ0xLVVNXMkw2VW1Fd1BFdUtFaHRl?=
 =?utf-8?B?TmVpQ2ZCSDh4NnQvalRmTEhkZGtoczYwWllsL0hvTnZCSzZyUStiNnQ3dHpP?=
 =?utf-8?B?TjZkUm5MMGMvTG1Fc1JHN0owY3JNNzVsYXR2dWFJYUVjbm5MdURydm5LWDJD?=
 =?utf-8?B?eE1iU2Jlai9ERFVNcnJIRzQ5RVRFbnlQdWNpQmw2UDVmZnJuNDdISVlyWGx5?=
 =?utf-8?B?QURIMlg4cWVxVnpQc3RLYm5TMER2NEtiNVdnTlp1U0NDVmZzd0N5Zzh3WUN4?=
 =?utf-8?B?TzZSNmJFTTRCRzNleWkvRmxmVHNrVi9xaTNBNGdEa3ppWkxtU3BGVDBSc05P?=
 =?utf-8?B?WDBaakNhVksvcmthYVNjdUFEdFUwMFV2cytZdURobUREQm1TQVZ0OVo1SUIy?=
 =?utf-8?B?c1BZWWFiT3FqM3RaNFNEUnFzYnBGbkRORGF3RVNlaStJSGplYkxra1BocW8v?=
 =?utf-8?B?OTl4UXFkQXpremR4Y3BSUnZpWDFMa3VmVFBCbmFEMmd2UUlDY09MRER6UFVH?=
 =?utf-8?B?aFdBcm5BeDRPcEVjbzJ6Mm4zaURCN3NxR1BlRjR0dTFlc2FTbTBXYVVNZ0FZ?=
 =?utf-8?B?a3NPM3IwbWFQNWFSbFdoWnRJUXlkSlhaZEhDazNmNG5xMnhldThtVUNEblF4?=
 =?utf-8?B?OVVBSDRRU3JadFBCZlJUNnRVTmtQYWI3ZEpUL2RFTCs3U294VmNqNTZSaWJV?=
 =?utf-8?B?aFRhSVRlbFVXWkJmWXBLK21Fbk8vckhFMW4wZWF0aTJpRHdKK1oxWk5FakM0?=
 =?utf-8?B?MmxrUG9wTllMV3VUdjlRUWkrMnNnd1dxTUpmZGhJNk1VTkVTQjlQeHg2QU5u?=
 =?utf-8?B?TmNlMWRrbDJVbnF4RFhmblJaWXU2cXVEVElGS3o1MytVUjE5QVhYRUNUak5R?=
 =?utf-8?B?STA0RUpveVM3cGRjMUo3anNDbm1CejIxQ01wMmpURkdhcitleDBvRk1rWHo0?=
 =?utf-8?B?eVUySTNUemJKMmJyd1ZGZVFjREVmbFlINTltdjFtMC9SeHlzdm1vVkNLQ3dI?=
 =?utf-8?B?bEU2K25YTzg0SFk0WTBoNktDQ3E4RWZ5aDZIQ29teGQwQll2THFZUFZ2SmFk?=
 =?utf-8?B?K1JpRTd4WTViWWU1R1pxUm5HVmIzbms3ekF3RVVua0tLcUV1U1JsU0dreUps?=
 =?utf-8?B?c2JWcm0rMlF1d3hlNnlCc2NHYUhQbS80ZWpSM2hjYWxuSFFOa0JjbVFSQmNM?=
 =?utf-8?B?NDIxZXBiWU5jb3N1cDg1RVo1cXE0cXpEN2dzdE9GbXNJczB6UXFzTTduRTRY?=
 =?utf-8?B?ZFowYVIxNXhvdlJnenV4WHpHckJ3dkx4MXhUZFptR2ZIM2RRRDRMOVZVMmQw?=
 =?utf-8?B?SUZ4aWwzZDM5ZVdrLzZHNDl2dzk1VVNyYlM4YlN6QWF5Q3o2OGtON0pmV2Yw?=
 =?utf-8?B?SWMxQzhWTStYRmluZ05BTDhBZ2txdDBXemYyd3pYNXFXcGZ3NUJ4QT09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b13c9748-11de-41a6-7f77-08de62bf940c
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2026 01:00:09.7662 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MziZ3u6evRoR4soYHCHzDedhMCb5qSd0p1x+tb2Vsziat+4hhAlxVIAhwxkuXQWufm7S2RxZvYps2Sf8QODqYK9nyvY3FHOZf0Jw4ONBDE8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5979
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770080415; x=1801616415;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Fh5/W8EZeKLIEkfCeneE7h/To2UvnSk5dygHA/Y00mg=;
 b=f2IoinUUZrx54ZgD5uPK2SaojTl4vTY78Vp2v8mTG4P9B6eSzwoL1OGF
 uErZwBTnwAjPgdRttHo1QrxvcCDTKgLV9v5uHLjRqE8+CMH7FzuBHYcjS
 10Z5aRVzIt+chn5Ps5DA9Bb4ZX+jtPBc7xeFUDGJUheVG8td4jd+umsBY
 VXsYWNflr5d8hRhSPp5mJaYpoZHUVyq3prh70PeF3DO8fzLFiEJFixUi6
 pUxPlQstXNqnMpcjct7f/EM9KNa7c4rzp2/f9msmKliGojLP6G4+YsZMX
 m4+Yrxvx0Rt6We+pHbEl5L9xVA9OAINKEGRYNWNXjunwE4FcTBF2AofJq
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=f2IoinUU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] iavf: fix deadlock in reset
 handling
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kuba@kernel.org,m:poros@redhat.com,m:ivecera@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:sdf@fomichev.me,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.987];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: 5B947D3322
X-Rspamd-Action: no action



On 2/2/2026 3:58 PM, Jakub Kicinski wrote:
> On Mon,  2 Feb 2026 09:48:20 +0100 Petr Oros wrote:
>> +	netdev_unlock(netdev);
>> +	ret = wait_event_interruptible_timeout(adapter->reset_waitqueue,
>> +					       !iavf_is_reset_in_progress(adapter),
>> +					       msecs_to_jiffies(5000));
>> +	netdev_lock(netdev);
> 
> Dropping locks taken by the core around the driver callback
> is obviously unacceptable. SMH.

Right. It seems like the correct fix is to either a) have reset take and 
hold the netdev lock (now that its distinct from the global RTNL lock) 
or b) refactor reset so that it can defer any of the netdev related 
stuff somehow.
