Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 781C78D50F9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 May 2024 19:26:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D5D8C41981;
	Thu, 30 May 2024 17:26:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JdXQO6zZio3M; Thu, 30 May 2024 17:26:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C4CFF41982
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717090012;
	bh=CpjqHlJBkBYLuQARWrAE2aQZ7kgKH2bR0830Ru6be9Q=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RzsKI1Ik+UqwHN/cMl2ndOXvoevx2bAFybEDQ1awrx/yr7I5dtZ1E6Rq3ix/1oS7S
	 nRPrD576ridj8A9TBtFX8pAHQmb2U4oCZg1uNyr1XMyhuolYrANrCIIaVl6Sxsuw/u
	 QKGYxNhATPR7USXk+4ivOrBsh2PhwCVsOSHaarX2xEA7YKtjIOMIxMzvxo9bL3TLLv
	 wrM9JkQ/Azo/EeQgvmoZ+hVFeQ8N2+vcFgwCiHMRcrsLqPlaQ3Hmwo8JitFC2PjrMS
	 9j0d/QXRAYRPgvVpwG6pq+YD6kXwrA/dJGH2OcCdEAXLmLKegaiIwZIIBT09cUnedK
	 oI2hQBLTQwI3A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C4CFF41982;
	Thu, 30 May 2024 17:26:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F05B01D4915
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 17:26:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E85B86104A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 17:26:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id efkJDUZEI6vz for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 May 2024 17:26:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=jesse.brandeburg@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3EABA6063F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3EABA6063F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3EABA6063F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 17:26:49 +0000 (UTC)
X-CSE-ConnectionGUID: X/fTbpU8QGOWsVpdOISEkg==
X-CSE-MsgGUID: ESR9y9YjSv+bhkZa8BNbsg==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="13788878"
X-IronPort-AV: E=Sophos;i="6.08,202,1712646000"; d="scan'208";a="13788878"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2024 10:23:40 -0700
X-CSE-ConnectionGUID: +hmYaZxnRxGdyYpHtxB9lA==
X-CSE-MsgGUID: 4urQW2keRrS3/mzmxKNqJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,202,1712646000"; d="scan'208";a="59061711"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 May 2024 10:23:39 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 30 May 2024 10:23:38 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 30 May 2024 10:23:38 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 30 May 2024 10:23:38 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 30 May 2024 10:23:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BpQmvXHndZKc0zzKoqqC6kmXd7Nlte394rcMMzQ24kuAdcYYKt1Al2HYCNuAnqUDDw/lT2mZI3le9sGVjFVntY89B4O7I9sIdAE4kXNjmnnyswICw1mvZX4XaF+KnxbeerZfrf/OcaPcexV+lVFb24uwKULTW1d7F47/0UwLBVm5rBBS865hN7aRyfSAJskaYtTHP4dJJs+9ZwISv2HA/lMOkmBqbmROxUbkKZlNeyNfqp/0QNum5ob/aWs+647ziypdPWWaG3c1wUPRecRbm+7N5An1zrtMmtCrEmuBkEsti3MNwkH56BXFjja7d1EtjjigD9hjyzc3TZqhgqwCSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CpjqHlJBkBYLuQARWrAE2aQZ7kgKH2bR0830Ru6be9Q=;
 b=kmtB4psGhLb95btJayqOMSJrlTCoXFkdpWB8RPOxcUiYI+DsUnT18yIOIQsbeeWwUqZ9L2LwPuPrIEFFAXl6sb/N+lQ5Gk2QkhQMdOjjGYS++c6wGHpxZtAx4eE072PVcdR0IgXvSg7mqZU4TSje4Q0ttFegO6vTzIwHvYJXqG8bDxefBMYQcfexj20wlZnnzX/S0Ofyj+WmOpgqO4VdSoZmEUBVFu+6eunqCXslL6RTYbd4dA5Tv8dc9C1lJa0oBu4QSxWKcYxlwagW9rOWg287mZbl1Z4H77pGw4lbgFKDUgQtEF6X/y7me81J5wY5tYXz0LeiF9WQGgpYHCiuGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by MW6PR11MB8412.namprd11.prod.outlook.com (2603:10b6:303:23a::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.22; Thu, 30 May
 2024 17:23:30 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::c625:ce3f:cb4a:db14]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::c625:ce3f:cb4a:db14%5]) with mapi id 15.20.7633.018; Thu, 30 May 2024
 17:23:30 +0000
Message-ID: <0ffceadf-730b-4463-bfad-136fdb38198f@intel.com>
Date: Thu, 30 May 2024 10:23:27 -0700
User-Agent: Mozilla Thunderbird
To: Paul Greenwalt <paul.greenwalt@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240530170617.837659-1-paul.greenwalt@intel.com>
Content-Language: en-US
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
Autocrypt: addr=jesse.brandeburg@intel.com; keydata=
 xsFNBE6J+2cBEACty2+nfMyjkmi/BxhDinCezJoRM8PkvXlIGZL7SXAn7yxYNc28FvOvVpmx
 DbgPYDSLly/Rks4WNnVgAQA+nGxgg+tqk8DpPROUmkxQO7EL5TkszjBusUvL98crsMJVzoE2
 RNTJZh3ClK8k7r5dEePM1LM4Hq1bNTwE6pzyHJ1QuHodzR1ifDL7+3pYwt5wowZjQr4uJXFA
 5g5Xze8z0cnac+NpgIUqUdpEZ+3XmI92hIg2fUSRPUTgm+xEBijBv2OlTjZpzVfH8HlXeGCT
 E98Vuofvn2pgTZyJWJ6o0I9JUlxO+MMtMPuwL7Br0JqZQvvf80EFxbXnk+QSudg0sZAAec0g
 TSGWb7513siAqvAhxGjIf0cs2hEzRXbd4cVMZKPV2uai5g2LUsnS8m+zx/fzCC+KefKcxN8r
 Fs+9jNj2TOwmqahJqRBwxQZujNC96pkCQYzZtuz5BA7IMxC12TtnbvtUL6ef7GZVMv6b+rpe
 RmWnLIfGJItWefcse66l1wPQPi6tXmzBN6MaEDyVL6umiZTy7dnltaXsFZPPLapuk0qRoQtC
 aIjjk5VaK16t6pPUCRDW1um2anxOYBJCXzHrnzKf09hBgjbO2Tk5uKRQHpTEsm+38lIbSQ2r
 YUfOckMug/QHW05t+XVC2UuyAdjBamdvno7fhLaSTsqdEngqMQARAQABzTBKZXNzZSBDLiBC
 cmFuZGVidXJnIDxqZXNzZS5icmFuZGVidXJnQGludGVsLmNvbT7CwXgEEwECACIFAk6J+2cC
 GwMGCwkIBwMCBhUIAgkKCwQWAgMBAh4BAheAAAoJEKaiMWVzwKZycZ4QAIayWIWvnV2PiZ0E
 Kt7NMvSB3r3wx/X4TNmfTruURh24zrHcdrg6J8zSlXKt0fzxvvX7HYWgAEXD9BoVdPjh7TDy
 du9aMhFCFOfPHarz8DdGbT8UpGuX8bMZyd16/7nMqoGisK+OnmJubPxID2lDmXDRbxROahNF
 0ZJVXd+mw44FefzyJigJnfXtwyDuIit6ludKAs2iW3z298PuL13wiiG8rg5hTdWANxcC6wEh
 sycdt1JcKO6y5wcDwBr/yDPsUKaQPZTxRyiBK6NmQEN4BXbcG90VSgziJDPuYQb9ZOv2d0lX
 yidkXe/U9SpTSEcC6/Z8KinBl/5X/roENz5gW0H27m52Ht1Yx6SRpA3kwdpkzd0r5dKLCOVQ
 IwrAec5oLZRQqrSVp9+6PH7Z7YVQzN52nsgioQT8Ke2yht2ehsaJ97k718XhIWACyJqqmo/k
 wkj+5aUAi3ZXVOw3TGOpsfuz50Ods8CtGDHsUFwKlH10wXxOFdTa4PG+G4LTZ5ptkdFzm2rb
 9GJF2CSUS3ZMbBAQ/PZf1WpGUXBpOJMyD2AbWJQKTNn4yYMskMbnr4sGxitj6NHI4unlyd28
 1FmaRbR98v66sXYVVSP1ERFS/521OwMvWkPNuPMpqZ1ir9Nq/kw4t+urpVKF7RR87yuT46Gx
 /h2NVEXa750f7pf2LfPLzsFNBE6J+2cBEACfkrEDSsQkIlZzFgAN/7g0VmjHDrxxQSmvuPmZ
 L9pI6B/nNtclaUBu+q3rKUYBJhOfMobsafKOV8jYkENqOXvOvpb21t8HJ0FgqpMs+VE98gkp
 BM+Nitd+ePRJNScB8DKFmTT97QLBB8AdTWGy1tCSncoqhIz15X4ALplQkIoCuxdKPEuTeiyV
 mJFwvS0pB/GdN8hQEddRIo3E61dtLmSCH0iw6Zd8m9UHoZdZLWjfG+3EyeQ2TK0AFU9GpxVY
 nJ8mDacZlpcq4mjbr4w0G2IyjGyO6iLHKdYe3lU5Hs7lxZGbtnGQbGKL9VimV4IkKsXmTE+4
 /Mi+hWNxFBbZ7f7DUO3B7mZOicxxf2dK+vioHUr9TkWFwXARPwQGlGc3nGPQBhfaso+Q0q+b
 ftLhcdVDJjfNXvptWK3HbXQDsnkZ61nOEvjHDjpLQyzToKTSRoDNvnou2d26l5Nr7MHsqgxd
 xRKIau5xOAqO87AWHnbof3JW6eO8EDSmAYNWsmBBWFO7bfcJLyouiPSkDpsUniLh6ZAHyljd
 tYLPWatBqzvj28tTnA++Jp1bKDpby92GXQE2jZJ+5JCT+iW6dGQwrB9oMILx4V0WAvFsZT4t
 bq1MdS1n0qZD3t4ogYVqmYJyiB5ubTngI+s+VhDw3KbdhURJkQQ8dmojVfJZmeEH3u/eawAR
 AQABwsFfBBgBAgAJBQJOiftnAhsMAAoJEKaiMWVzwKZyTWQP/AlWAnsKIQgzP234ivevPc8d
 MOrOFslJrIutYqIW0V+B6teIcr73lejBl1fWtxn0mGPiTdNg/tJ48uN8K38yDzpxxmDDaKJa
 GGW6VPRezSpreqFjoEIz5NtJOo2dl7iK/6y7bAdlAeQj2Dvwj7Y1lB/JIbw8yoDg5Xl8D2db
 I8hchtsSXs8bxReEP1BGGsg4uyceOUexa1vAIGy80JDobbcjRaAo7xdwCXQjfEoC5UJVGd8g
 k21zDAUw3Eh47qO216txWwvOi+fq9o0UnOOAJ0xTRnQt1r5rMxEa8nLlChgfOSAdvBfaKAkn
 lIeWKK9LuETsiLpbofrey42d3wUUXggHYleYr9gR/7kQze78OATUHcud00B6EnmGDTOpbykp
 fby8AwgfbmcGz3LzgoZM7W9fnAkfVRuBOF5ge48kZecjHGxE69VB9180Aq6Bo2QVBlp3Le0j
 97DvMAwMgzyvfHHBPV0B9uzfxyBcxc9bRHXk0IiVIjm2e4gR+5WdsgXFd867ezQr3EiIe+6U
 +k7ZSjyrj7tsJOk1tKAvQKvMlxfRecw/yJDcKwwBHgEXVEnKgbu/Ci+ikbqsLCBWbOWs6eYq
 6m1nRM6nj0pgRDHIOQIxdWEysPWgmY2xxHb4yUq5YWa5+xu59zXdG72FqGqN8+Mkdw+M9m4D
 /fnLfll98Nhx
In-Reply-To: <20240530170617.837659-1-paul.greenwalt@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR07CA0041.namprd07.prod.outlook.com
 (2603:10b6:a03:60::18) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|MW6PR11MB8412:EE_
X-MS-Office365-Filtering-Correlation-Id: 69e4fb47-ab4f-4e24-8b25-08dc80cd3961
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VXNkZWdGcHY0Sy9pUEVka2VLNDR5V2VuMi9PMDllTE9NZHRXNFUxRmFPV1Iw?=
 =?utf-8?B?NEtmcnhORHhmaGJVWUIyQ1JMeGR1aEJUVlM1Yk1pNVE2Z2tGbjZEUXFJbXh5?=
 =?utf-8?B?K29QaExHdkJINjhjemN6STRnU3dBZmhNSWNtWGRkcFpHSHp3eWZuaHhrdmNK?=
 =?utf-8?B?eEs4bUFqNkRhTXJqenkxbjJuQ2FBQ0pRT1lyY2JGZXVQVXR4L3NmaFJseEFw?=
 =?utf-8?B?RGJuZTJKZ0lFaVVTWnM3ckxKVEtkVUNPWmRZMXRRai84c200cFpzSXRXZXUr?=
 =?utf-8?B?Tk5mU2FEdm9teFFaczVYNUZ4NHYxRUlVWWtCNTBjMkhYWlk1dWtkS1lwRHRj?=
 =?utf-8?B?Ty9vVEM4ZGlPd0R0d2JWTFN1Ny9KRkwzMzlyZnh2SWFjODVNRnhSdDlMTk4z?=
 =?utf-8?B?R1BrRDRaMEJ3bHRkUHVzYm5vSlhhd281Nk0wZGNGMG03OFd4cWVUQUQ1NU9o?=
 =?utf-8?B?bzd0MTVWUGZqckExUWFWRjJCdFRobmxCNVhvcEVYOXh6RUFaRG5mSGV6N2hm?=
 =?utf-8?B?ZWt5blVJbThFUXFmZ1BMSk1mTHJRelZvZ1EvbGY5MHlndFFEaTR4YzY1aURL?=
 =?utf-8?B?OFhwQ1F1RjlXaHBTcFdpd1pBME9iVFV0RUtCMkxxUTVMWXozQ0wvZklqTXE4?=
 =?utf-8?B?Mks1WHpmdWlXZEtubDE0RGREYXZCVENJQ1g2NHowbkpBR3Jmb2tyVVg2dWlT?=
 =?utf-8?B?WFZNUjdVM2h5TWtMZTRBaVBXdkJ5WURMc29iNFEwbU5iMkRVbVdpVmRXQ3NC?=
 =?utf-8?B?L2c1allBRThkSHJjTlVSL0RNMVk1bklFcW00eTVKa2crQ3N2eUFzVk5GYU9W?=
 =?utf-8?B?NHloemdIY3JtS2tmTDdYUW5Ta1d2YVV4SXhqQU5rZW9nKzNmTHhkOFBFUFRv?=
 =?utf-8?B?WVd0OE1URmw0WHFScFk4cUVnbWhBRzhmWUlOeFFXWFVCUzJyd2hFMm9LRFdT?=
 =?utf-8?B?LzN0WHBvMUR4VGdtWS82aFFkZzNycVhPN2JVaHN4Ymp4TWdOT0dkd2Uxd2JM?=
 =?utf-8?B?SXVJOXpDQk1oU3IyblJpZEZSb29YUEFSU1kwOGVLa0MvWTNTeDcvN3FiREZm?=
 =?utf-8?B?M29naDVKUzNIMlhrRitVOHdBOXlTd2d2TVVJWGpoZVlFWnBTeElCRXQ1eHA1?=
 =?utf-8?B?RjRyM0NuZGxRMm5zL3l2eEhZZ3FNZWlmQ0JoTTlwN3pFWFV0WjY3WDRvNnp0?=
 =?utf-8?B?d3Z6dGZhNFZ6Rmx0Tkphc0hra2xDRE8xVTRMeTNQWGdSUFFjczdCa2tCYmla?=
 =?utf-8?B?SmZBL21SVTFYR1h6bWtyU28xUWNMTWRyN1BPdFpWL2loaklyV01tUFgwc1Ey?=
 =?utf-8?B?SCtScFRQcE11akc1SmlPZ09NSnhhUGF0M2RjK215SWdYRXE1cHMxMEpGQU5p?=
 =?utf-8?B?L1N5M2pkbXo5VjZFSXNPS1ZXMXJnUkprOVRTUzhpNGZWeEJZRi9kZjVoVW9q?=
 =?utf-8?B?Y3JmVE9CVEtqYSs3K2lkTzltMHJ1aVVhTWczNFpESVhyaTRqVzhYVGxhV21R?=
 =?utf-8?B?M29UeHpDUFlGS0tDYU1VZktIMHVoM0ZBbndOMmZCY21RbnBlK1RZa01OMVlU?=
 =?utf-8?B?TTdOMzdVVUhjMG4zSUxlWVZkTlFJY1ZRb1MrbU8vb0xDMWJ3ZjgvS20xTjBt?=
 =?utf-8?B?ZjhYRnZlTS8vQlBuekYwT3hvUzRQWUtob1F4ajJNaFIvRzNTaGtSNk0yWWNZ?=
 =?utf-8?B?ZmpFMEVFTUdwM2ovMFdIMjgrZkc0c21lNUlQSFJPRDZHVVBQSWU4NkNRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?REJEQ1dvczNFK05jN2xuZHc5TUxiUkhLZUV0MDFBTWIwWjdiR3JnWjNRQTBO?=
 =?utf-8?B?NURkUllubHQxMTZhM2RtT2FQZ1NOcGNJNFo1Wkl5QzI4M0tSdHM3NU02V3dS?=
 =?utf-8?B?ZmtLd0JIZzRtZXo3VzRZdVBNUnZZekd1eWJ4N0h3TmJ0YnFxWGtWOGtMeTZD?=
 =?utf-8?B?M3RHaUt3WXo5NEwremU0ZEpSUkk4dVV6aHdPWExCQWVCY2lwaVl5VlgyaVFL?=
 =?utf-8?B?YmtkMFArZUJiR28rQzFhWVRUTVQ3OSs4UUJwUnFhQkdxRW5iTTdONnVEY09w?=
 =?utf-8?B?NHFQZE40a0wwY2ZSaEt0QlQrZjUwOHMwMWk4VjhKZzdSVWFNblNHNzU5Qmdj?=
 =?utf-8?B?b0c4TnYwRVVjeG1US0k4WUR0ZkxOSjk2VzRlMXVTcjhZMk56a1cveU5SMkR0?=
 =?utf-8?B?WjBsSkszSFdXVHFmd0NHSkxFeGdPWlZCYnN1eTYvdW1laW5ZaExCQ0wxNnVs?=
 =?utf-8?B?L2dzS0VyOEh2Vm9oSWNSbkM2cG85YWtnekhISTRmbjdWeWE5dmJpTWpJRTUr?=
 =?utf-8?B?WGlwM016dnBSbUYzOEJDcWdRRmNMVW8zOVVOaFRpN1owQ3A2djNIYVhCTU5a?=
 =?utf-8?B?eWtwK05WamZUNUNEekVWNGtPU3k2Y2dVUzQvTExpeUVUeXA5cnhpZFZKWkht?=
 =?utf-8?B?L3lOK0hBSnVvaFhjQllGa0JMWVpWVldoWnl4bHA1R0NyME0vN01qTFc0QU9H?=
 =?utf-8?B?aHE2cFgrazJHOXpiUlhFeE4zYXdlYldMUjF2a2NEcVd1Y1N3ZkxGUlhwYlRP?=
 =?utf-8?B?TDJINWZwZm5odWl0cE1aL29JMGpuZWdpUnhlNGg4Qk5ITnBNaHVsaUdIbHk3?=
 =?utf-8?B?MTVJajlWejhDcDkwQUpVK0RTTVlWWFpNSG15eG9vMG1udTgrdnMvbmgrOVFS?=
 =?utf-8?B?empXeTYvZElIV1BOd2lvVDA5RzFPQldydGJLT20zVXgwdUlMSVZwMFdOYVRx?=
 =?utf-8?B?WnpXbDJreXZiT3lhZWhPY0JrODg1NndTVUp0RG9rYU41U2F3QnZWWGdXWFdZ?=
 =?utf-8?B?VGRKN08wTXBUUkgybmVIQXl6OEhUNmplZ3FGQzdNQ3VuR1FXUXRkYlhRVEVC?=
 =?utf-8?B?angvMkgxZ1lMQVF5UXIycmtoSTdBMjh6TVRTYytYTG9FMXlvRzY4Ynllam9r?=
 =?utf-8?B?ZmRleXBaeXgxMDNvMlVDVDQ5alltSWpmQ0NoRDVFQlZNYkpFOHhhNFhabTl5?=
 =?utf-8?B?SzNsUnhQQXNGRTM1RDBOSFVYbVdyNWRYeUNzeXB2Y2FmU0JpZk9adDN2VHI3?=
 =?utf-8?B?N25XNllFVnRtRVRYWmFPWFM1by9tdVhiVUUreVdISms4dzFlVXhjbFExQ1lW?=
 =?utf-8?B?a2RnU1duUjJLSjVWeCtpem9qQ3NFekxoeFh2dFdsNmYrYzlta0llYThyTmQz?=
 =?utf-8?B?MHQwbFZHTGpVK1YyMGtyeXh6eENNT09VWnNONzVBMHNvMEVpOVZkSklKTm16?=
 =?utf-8?B?ZWJjMy9kaXpHTTZ5bG9HbERXejVXVVpLSGl5bEZoaXdyUk4rakdJaWxCRHNP?=
 =?utf-8?B?R2t6S0FGSTluSWZEeUZra0dRRWFGeHBOYlJFNzBXejY0bUM5Q0x2UkQzeS9r?=
 =?utf-8?B?NDFjSk9JQmV2U21VV3hYL3IyUVdJVXRYM1FMalNVcWNYUmdrODc1c3Z0RlJP?=
 =?utf-8?B?citjaGwvS3EyZUFQQ3d2ZDI3eW1tVHhieGlkL1B1TDRsVWgvSVdCaUVVbXVz?=
 =?utf-8?B?YUJXc1FSaWZUcEFZWXZCWXNVTWNCUWpHdUZyc29oYlNhZXdSOXVBS0hndGhV?=
 =?utf-8?B?eFk0bUlROWdvNDlOMHBrbEdjOUhwSmxhbllKUWlzYllsU3dIT0hRcGZKUFNp?=
 =?utf-8?B?T2xoVEp1b0gzT3JtT2Q4RWppSzl3SFdNekFtaVdJRDB4cms3UjFmQWU4VDZ6?=
 =?utf-8?B?c2xuWksxQ1VnYWc0ZithRUlCVmluVC9LZjYyYUxXb3EvSG9oQk9Oa1k3Y2hN?=
 =?utf-8?B?ZUROVDZDVUcyNUFvMVBqanAzUFc5UUNBcWtXaVRRMkhtbHRhMnRocTY5bjY0?=
 =?utf-8?B?dDBBY0xYTDlQc0RVSHN1UXF5Yzd2SzE2SG5vaG1OTlJtUGp3a09xVUl5ZDl2?=
 =?utf-8?B?cDB1NjIvWmt2VHJGL0NXY243WFdKZGMvUCt1YmtYdFRETm5Jb2Z4S3RPNjFM?=
 =?utf-8?B?YkxIV0NQY21FYnBzOWZkN0gzd2JtS3g3N05paExwVFdwVm1mbUZrbmpOeFlL?=
 =?utf-8?B?V0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 69e4fb47-ab4f-4e24-8b25-08dc80cd3961
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 May 2024 17:23:30.0100 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NNf157XQmm5wWn1mApz/bPnbTaxSEWzswtJOPF1sYUX+0NP/+0s0X+YGrCiOS9Z4+LqfvDaleHu7Kp9v2ovBKdbUAjsPcPi6yRkftpvvo1I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8412
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717090010; x=1748626010;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bifOFGlh9HXWzQMbpRXx8rU+ZUWo0+Bp1YUFiXqZzC4=;
 b=oJDtT4hB/hXEj4UYGS0JwigE4EoSUwGH1cTK4s/5Itt0AS58GsLE+FjW
 NVHwgUZvVYCg7wJ2BTXzZaFIv1ot7YRR8TcMpd7YjoFxp8tSP4ChhK6YK
 yzVelAWj6aEdwS6JYkaS8sgvh86v2neo1InRKbbLiqSPcS9fYDe78PExy
 ivkVdh3lWSjgBTVYeDZFPL1CTurvKoXCyrCm59AYQBhFMAMH9i8hNPJzu
 gFP632K9nFg1oaYbtRd2TxmNKllEiER0N2TVw/eef1yLJG8O3sst1bR0v
 GwYED03H8zJq2u18jooT/FLNIB/VDN8kKc0nIOar52C9O5qAvJhd6ht3p
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=oJDtT4hB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix 200G link speed
 message log
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
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 5/30/2024 10:06 AM, Paul Greenwalt wrote:
> Commit 24407a01e57c ("ice: Add 200G speed/phy type use") added support
> for 200G PHY speeds, but did not include 200G link speed message
> support. As a result the driver incorrectly reports Unknown for 200G
> link speed.
> 
> Fix this by adding 200G support to ice_print_link_msg().
> 
> Fixes: 24407a01e57c ("ice: Add 200G speed/phy type use")
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>

Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>

