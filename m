Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0K/XFtsf/WlTYAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 01:27:23 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B1AFD4F0139
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 01:27:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0BF8D412B7;
	Thu,  7 May 2026 23:27:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ktdqfm2DhVYG; Thu,  7 May 2026 23:27:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 82337412B4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778196440;
	bh=9UcNT9z5qnUnfsKM/w/yifyXQAX79gr7H3S3GVHA/Lk=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=y0hKk88wlyL2DJtPlAdgY3N2vBrmrwDHVRHjLaYWvW1LopKppraJYM6zsgrCcX3u3
	 lpYw7lZUWC92g9Pm92uOEmI9AD1wdqdTStYaY0acgatMJr2PrYFnNqIANlxZFTDfO0
	 FQiYMEzljyArxOFh7DLUybfQdJMWzT1lrBJKpG2f+x4OFYlTrrkB5MJbEhnnEpS/bI
	 XH/8fPrwPVZJqdZjPaDvUJFnqNKeWc0Re4xRO4vlTqewcGrpNeST4TvjzXXDhJA/wP
	 XTIqyJ5gi3c1YeZgVogCUnHQVzU+arqu3pkp406U5IKIgzpBCxyyS7djN8VIgtc8/E
	 gm6GyQSMXGrog==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 82337412B4;
	Thu,  7 May 2026 23:27:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9ECA4272
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 23:27:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 90C9D412B0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 23:27:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5hmSA6y8ChtC for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 May 2026 23:27:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E875A412AB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E875A412AB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E875A412AB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 23:27:17 +0000 (UTC)
X-CSE-ConnectionGUID: uRhgBoNTRrmYbbLin4U7lw==
X-CSE-MsgGUID: zc0rZydySLeR41uH2IVUUg==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="83008840"
X-IronPort-AV: E=Sophos;i="6.23,222,1770624000"; d="scan'208";a="83008840"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 16:27:17 -0700
X-CSE-ConnectionGUID: HorsZeciRee+vAFUImFVaw==
X-CSE-MsgGUID: hrGeAaj1RJ62rBR8Zh4SDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,222,1770624000"; d="scan'208";a="235771974"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 16:27:17 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 7 May 2026 16:27:16 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 7 May 2026 16:27:16 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.13)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 7 May 2026 16:27:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VFpw734pXNZ89wWB4QwEhAtyWnj8AXXtqyik9HlClXsCXdN8xA9Y93X5awi7dgdQbnO+PWSGfVKfYXjtcOtQlekUmjt2IFZtyImqxQEnd6G7oPrzrAQLUsZYLvFdgxF9ZJ5kYbThgCTPWHvh1f3JTxyi8Pq1RMvsydMatZvR4qfyTvvNS6dycE2bWW21OXOEBR92ljpkMZBi183OCG5loGMdOAqRIP7/aDKf9fnuvBKCochdbPJBDqrSc4CctwLnZg7KjHp2HJKapQT7FX3isqSZaTJXnsfz3yEf9khRWuFENchOr8JTE/SjkjBF6N7DF8S8rtU6eMIuK6TulVqQ0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9UcNT9z5qnUnfsKM/w/yifyXQAX79gr7H3S3GVHA/Lk=;
 b=JwKJZQ+E5obpbc85Wvq/u8SCIImLGbE0nZK7waaEL76HzTk6JV41teuwJxjk4UVDASRxe1NGROperSTXbgVH+l8i90QtcgvmOsiInrM/tarq/4EQcdDqs1fYG0SgHMipio4GstlzSmNZqxFfJedDpG8tqpzyWTeV70+canw6On8V/arrgBupr/JQ1PsqlBmmkcQNihC1KLWjj2lWyDlBP2lNzCFoUpNkWeUN1JIg82fWcvV6e5SEWoBf/SPldqkNZW8Z1vpA5lHL9QlO+x/rONppQds7wZ68exbfMbWG7QHbspEogQ+RdLwS+W1XZG9Vl9zwrNWfiQphFZsqQ68Y1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7592.namprd11.prod.outlook.com (2603:10b6:806:343::16)
 by DS7PR11MB8826.namprd11.prod.outlook.com (2603:10b6:8:256::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.15; Thu, 7 May
 2026 23:27:13 +0000
Received: from SN7PR11MB7592.namprd11.prod.outlook.com
 ([fe80::3e09:8700:df72:37b6]) by SN7PR11MB7592.namprd11.prod.outlook.com
 ([fe80::3e09:8700:df72:37b6%6]) with mapi id 15.20.9891.008; Thu, 7 May 2026
 23:27:13 +0000
Message-ID: <4340f797-1e29-429d-a037-703a32b5b263@intel.com>
Date: Thu, 7 May 2026 16:27:11 -0700
User-Agent: Mozilla Thunderbird
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>, David CARLIER
 <devnexen@gmail.com>, Andrew Lunn <andrew@lunn.ch>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20260504062257.77460-1-devnexen@gmail.com>
 <2e4cc698-70da-4305-ad0c-b5258f029daf@lunn.ch>
 <CA+XhMqxjWOXVJXGUx5BE+U0S0SOOoSwaKu8eWigS=J5EfFejcQ@mail.gmail.com>
 <92b40e66-3f68-4d4a-b0cf-47b8aea5c72b@intel.com>
 <PH0PR11MB5902E858BB52D5ECCAA9F6FCF03C2@PH0PR11MB5902.namprd11.prod.outlook.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <PH0PR11MB5902E858BB52D5ECCAA9F6FCF03C2@PH0PR11MB5902.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4P223CA0002.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::7) To SN7PR11MB7592.namprd11.prod.outlook.com
 (2603:10b6:806:343::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7592:EE_|DS7PR11MB8826:EE_
X-MS-Office365-Filtering-Correlation-Id: e5433114-d54a-4f41-633b-08deac902b32
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|7416014|366016|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: udnD1oZGDkRGkxDcSODVObVCJUwqWFxRhioqTCPGfp9EpDkC8d3P6zUIOp9Ckqp77eZQPpRhM2Mi7kVTOC4Cg4I9z1KafZn/5DDF0k9kFeoS424n5MQ2o51I1ZuJ6i7Pz5UnABtiTJg6WiGZ5VAD28a6mjWgcqOjuUXK5HY7NlOe4S6dzt1Wp1pacDHmpvLDZSFC/uhO2itxZxaSXieWafu3ELDgsH4iPYg/6ys6YiBcgp0UGndaP3rkIE8YN2Cn5b3NWi+Vt67/UEBpjWgCpJTq7qe/UoCbOb9g4S4DTLyfm8gm4aHBkS0M7s3S/YAzemCNAux1mkEIx3VcUVP8zu+u9Dj5+7hNMBBisiZaI6RzinsD4Bcf1RsMQANfy+YdQNnTAnWBM5bX7o2Bf27lEcSSOknZMN2Fp635qdJuRoyXfKew2+R8ULCDdjw0BYiwexo1YaSFRDGSCvuR5HYhF8uZPqmx2d0EKsVBFGM1cR4hA7F8XYI5668XIeVOOXScNkkcuZ4hXMCCmIwsXDo+5GBsu1QUQk0xu/UGcF39IkfovfSK1E7COyx5lYlK7aXK181ys3QwFqI5uGvphIDCLaPLtNlHyvuYQ5J3cuLMOM059E1+Luw5MJtfKydHbbysb28FJm9mZ6cVpAM28dJH3C0P3O9vbn+IyuMjh6wXvvqY4SG7/vniAsxX94NeSRNY
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7592.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(7416014)(366016)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WlFOWVRYclJ2WUVqZ3drcUhCS2dKMlNVT3NJSHJaYU1XaTlSRWMrdC9UL2sx?=
 =?utf-8?B?eTNuNVpSVWpDajdKUFZGdnRTc3NTMFVIMjIvekpXcnhDNFVxMkozbkFTelJG?=
 =?utf-8?B?eUlNOTJSS2FPTjJjcWM0dWp1eE1nQmZFd0gwTWg1SjdDOFI3bTV6Y1c4UUFl?=
 =?utf-8?B?SWxDeU05Q21qOE1jNnRTb2hrUzlDYVYzK0FCRUtsOTd3RTJ4dXNOZFkzYkJx?=
 =?utf-8?B?clgzM0E4eEZTdkpOQ3hRNWxTci9EL1U1dkRwekFDS2hsemN4Q3JjbE9mNVlP?=
 =?utf-8?B?dmUvRndwblFId21ERkZ1bndEQmNPWmR4UlY1VC9NanlvajVHRE5RRVRJeHp2?=
 =?utf-8?B?TXcwZVFwRWVrenNKZElJbnMyQ01ROW9lTkNLckhESmVyU1NuZ3lKVFZUbEsz?=
 =?utf-8?B?NFZSYjNXNklpcjdhYWlveDhVTzAwdjg4V1U4Nk51SFpQUGRsdUxIM1VWWDN1?=
 =?utf-8?B?VDB0VDNNV0MyMnZIdnplMS83QTJ5QU5lUnh4cGlLUUpMa0Y2WThhQ1NMdWRZ?=
 =?utf-8?B?aE5SZ01aUURCN2NvejNPK2lMOVpTc0V4SWlpVzZvNG1NREJvdWR5Slk5dmtt?=
 =?utf-8?B?clU5RlYxOHBqV3pXTnpNK01nVENYb296bTF1VW1yd2ZjVXVkN1Y3MWpPcE9M?=
 =?utf-8?B?eGFuNGt6R1gzei9yZG9VZ0wrWXQ4OC9LcmFvclVzcU91dkZvNi9iRWhLUXlz?=
 =?utf-8?B?bE9ZaHhmeis0b0JhRi9hNFRjaEhoTlRjcWd1OVN6c0JxeHpPQ3MwL1d6V0NF?=
 =?utf-8?B?TDNFNGYxWm5RTmNsYzRmSndNV1ZHa0VxWHR3ekhINFg0Q25LVCttb2IycEht?=
 =?utf-8?B?eFo1RWtNaTZjQmdIdWExVklwZ2c1bk9wUkVTWG15RWZIOHhqTFZlNHNSNjAz?=
 =?utf-8?B?d09SdzlUSHFBdVpDNmtrWEt3Uk9NclFVRWlWTlhYajMrOUcvd3pQTFRzZ0Zi?=
 =?utf-8?B?VHRKNjVJSHE1ZXRYQjlFUExIZzNDUGFYc1loU2lWRHNQYjhRQ1hxb1lKeGlj?=
 =?utf-8?B?OHhQU29nNVFnWmd0Wmdka1puckFMd3p2NTNEWk1GUnA4cVpDT3BWRGZwQm82?=
 =?utf-8?B?T2p0Z3NTTUNmYlQrQ2V2ajdRWlM1dTBiZXB4UUFEbHFqOUplNUpnRFZ3QmQz?=
 =?utf-8?B?ZExOaUljN1prRkpTZkRnbE5URG16dFR2V3hGaG9uYzBkWVdtK2RkbTZVUG5L?=
 =?utf-8?B?bUd2cFMyOE1CMlJuMG54dHBkc2RDNS9PUEgrU3NHdFp3c2V6NU9XdUQ1NnZK?=
 =?utf-8?B?Yi94UmdwcVFtMUZ3STJqZitQcGp0Y2xOZ2dVVHg1V3ozbjluMm0zSDY3eWhV?=
 =?utf-8?B?enhjZm80N3RxZ3h4bjNEZm4rbmUxV00zZjlEN1Zja0JoZG8zZHdxT0Fiek8r?=
 =?utf-8?B?S0lMaUJTWmR3c3E4aVVjcTVabERvd2RyVU92MWkrUGI5dVdJSk5GVlpOQVpC?=
 =?utf-8?B?U28rWk5mRUQvSTJVSDVoMnYzMlMrWjhHSEtyQkRnNHd0czFhV1hqczh2TjN2?=
 =?utf-8?B?eVBINE1mZW5pRHlMNFJhZHA3Tld2dk04MGNiYnluU3QwaHdjcFNQUVo1Q0NC?=
 =?utf-8?B?RzY0TzVjOTNjRmZrT2dXQS93ejVSL0dCSll2U1kvb2xacVJob0pjVWIvMXlX?=
 =?utf-8?B?ajlnTDhjWldkM01TWjJaUVZ4UENVdnp4Y2JTVFZ0QkV5L2NPLzh2MjVMbU9t?=
 =?utf-8?B?djZJdTJyTW9LaWdCdytHdWJFc2VYZ3dIeW04aHR3cUhYU3FLNEVBcy85OUxP?=
 =?utf-8?B?TGE3eUhVMDFqWGFJamVoeFBYVXF2c3BFQjRpSm1WNGZUeENaSWhqZFpDa0ta?=
 =?utf-8?B?dStCeHMwZkZ4ckJDd0JaV1JPcDRYMzZQNUF5My9TeVVKYkFKV3VhOGhOYkwy?=
 =?utf-8?B?YUN4WThCZFBXYUViWU4rWFEyWU4xRzUxT09KLzM1S3ZhRllESFN0UW5tcjZJ?=
 =?utf-8?B?WWxKOWpBKzEzMHFJK1c3TG10bWZaZXo1N1A0bHM4TW8ybHMrV3BXWTkzcm1N?=
 =?utf-8?B?aFZ1Wnp6NHhwa0Y4MU0rbVI4TjFvTTlReFN5UUNuR3RMd3NJeCt1a0x5TzJZ?=
 =?utf-8?B?U0RhTG1oZE1kcTd4QkJhRElHNWd1blI2bVhWMG1ZUHQzOFpId1FMQ0VXSGpG?=
 =?utf-8?B?NFRUK2FjWG1obTgvVll0WTFIQ0FsSExaNkpZNDVOdEo2K2JXVzNianlXeVBr?=
 =?utf-8?B?KzJCd1FqLzB5U3gxaU9CL0pVSEFRb0Q4RUIzcWYwV1hCTjNQT3dNTW03Mkpj?=
 =?utf-8?B?NmUxL2kvN1FYeXhSSmpveXpMY2JyTGQzengzcVkzeTNmQ2hWKzlIcGRxbkpz?=
 =?utf-8?B?ay9rWm9BaDV2ZjBWN29XcmwwRXVERDd6Mld5VVg2M1Q3bE1VYkNiWFdyOHJF?=
 =?utf-8?Q?UPy1zxaP4gzhJ7Ak=3D?=
X-Exchange-RoutingPolicyChecked: oQ6c8bqA/7lqOS0TsRpcJRd3ls815cafxLV8cOGTIInp3BBw8YrPz0E4AHNtXU1qmD03QRunICuikPCfgjis5iwRhXoaT9shSKh6eDwgHWGY29Qn8vgT+p7eE+uOJSe6TCwoiUPaITEqSvgfxC6DJKw2ZpXxTlKha46GKz7s0mqS8l/aKryQbP1r8covnehtXoYU3grrLIcph9zULSFEnJVo70CtSi82oAdtAF+7wrkY5IJEzRw8k0V6P4gVovZqDLRhka1S2WTBK8Zwzlrj+YcNS1+jBRMMslhBGHEQvaqpEMHOS8XXNo2E0RUO/1SB1FeW82Fng4zHCrTfF5b97Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: e5433114-d54a-4f41-633b-08deac902b32
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7592.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2026 23:27:13.4613 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xEI2i7XE0vkDy+F0yPyAP/6UdV3bUFxd6kzNHOKTOaCyxUVs7NHFw7b9sYW/ZVx3mNf3X9pgTW0b/L8QhAnShRTo6O/74NhfT2DUPKzQD2c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB8826
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778196438; x=1809732438;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gZYKqYmUvWlbacUAig53RuSNAy7qz5b/pv+uYHN0Jlc=;
 b=G9xPIi1OtCr124SGmlFj/pJx8cg7Tqs1AjS0Wg1wCZDXQiTFKTPlKWS3
 tJc3/5RupXZeC7klB47sBJHUEhZx2KOBSlT7x724fPKzNz7rTun4LBaUo
 1r+x/O5r1puwlWzyAhOX8wRf4Pnl1MEMMWKqoFIf1VQPo3wS0BIUm+873
 qBwEkLTn29/YHOdTmCORYi8DFfU27Z61PiJxtTQrGP9aRQL3+COjItQ5Z
 +QdSr1TDVWAU5VQzBEIFRORxSINo6yi5Sd8HTWS46+zbAd9ooVzJu6dBj
 Owk04rE00A8UMIHyw34tWnxUDnFL+KREKEQVsJMJ15eVOKtIu9oEt5eN8
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=G9xPIi1O
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: E610: do not fill EEE
 lp_advertised from local PHY caps
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
X-Rspamd-Queue-Id: B1AFD4F0139
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jedrzej.jagielski@intel.com,m:devnexen@gmail.com,m:andrew@lunn.ch,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksandr.loktionov@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_TO(0.00)[intel.com,gmail.com,lunn.ch];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Action: no action

On 5/7/2026 2:50 AM, Jagielski, Jedrzej wrote:
>> From: Keller, Jacob E <jacob.e.keller@intel.com> 
>> Sent: Tuesday, May 5, 2026 12:13 AM
>> On 5/4/2026 7:05 AM, David CARLIER wrote:
>>> Hi Andrew,
>>>
>>>   No E610 here, found it by reading the code - the X550 path
>>>   (ixgbe_get_eee_fw) uses a separate FW_PHY_ACT_UD_2 activity and
>>>   ixgbe_lp_map[] for partner data, the E610 path just feeds
>>>   pcaps.eee_cap from REPORT_ACTIVE_CFG into lp_advertised. None of
>>>   the IXGBE_ACI_REPORT_* modes return partner info so that field
>>>   can't be right.
>>>
>>>   The set path goes hw->mac.ops.setup_eee() ->
>>> ixgbe_aci_set_phy_cfg(),
>>>   so negotiation is in the firmware. eee_active / eee_enabled come
>>>   from link.eee_status from the same FW, if those bits are right then
>>>   negotiation works. Can't say more without hardware, Jedrzej or
>>>   Aleksandr would know.
>>>
>>> Cheers
>>
>> Hi David,
>>
>> Thanks for the report and possible patch. The EEE support just merged,
>> and I believe the series has undergone testing. It is possible E610 is
>> significantly different from X550.
>>
>> @Jedrzej,
>>
>> Could you please look at this patch and the report from David and
>> confirm if we need this (or a different?) fix or if the code is correct
>> for E610 and explain why in that case?
>>
>> Thanks,
>> Jake
> 
> Sorry for the delay in responding, i just came back to the office an
>  i didn't have access to my mailbox.
> 
> After looking into documentation once again and checking it on my setup
> i see that David is right. What a catch, thanks! And sorry for my oversight,
> i was convinced that negotiated speeds are reported via that field and
> it somehow has not been exposed during my tests.
> 
> Moreover, looks like E610 currently doesn't report such.
> 
> So i believe we would like to have this fix, thank you once again.
> 
> Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> 
> Jedrek

Great, thanks!
