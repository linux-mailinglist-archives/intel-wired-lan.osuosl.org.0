Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 64CB18FF27B
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Jun 2024 18:28:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C624642469;
	Thu,  6 Jun 2024 16:28:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qzh6yc9IVSeV; Thu,  6 Jun 2024 16:28:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 02CE842448
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717691292;
	bh=p6SoUnzKNM8McSgm/Q/5leVGjC4sBScyuA2sAO6+SHc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bPXYlW9wUCRgvWDDlzwKmrGFIFjMATjC7J6w7fz+8hYhjLsBMfT2kLz8PVbwZHo52
	 DTlceHcT1SOs7+0+3QhD9sTlyL6E9zU9y4OiyWhbLxLXA/rlkCmRSJKXXrOQ2q6i5v
	 KTLUlAVw0jWH0K9Fioe8bUByT77ROcksXX9knyRtqjLBHY+3gjggH73IcVKNvUX655
	 LFOeiIfK67ZTpwn9pC8pFprtBKb37y+0NEYKM+ujlygsYfB86blZsPUqi81ApJVidE
	 WDgtiOOWfC/bHe5rZ4BAhc7sKc4B/8DDu/80L8ocNkXlIfWbV9/bwj8jYVYz4XftKT
	 sjAeaZVInWaJA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 02CE842448;
	Thu,  6 Jun 2024 16:28:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7D4C31BF580
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 16:28:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 753FA40448
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 16:28:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H3KQbbqAw-8Y for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Jun 2024 16:28:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=jesse.brandeburg@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5053D4032B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5053D4032B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5053D4032B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 16:28:08 +0000 (UTC)
X-CSE-ConnectionGUID: fu+xQi8MR/Co95djQ5XmSA==
X-CSE-MsgGUID: 8/kL5a3jRyynqzTMaz6DsQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="39779327"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="39779327"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 09:28:07 -0700
X-CSE-ConnectionGUID: W1pi5cKoRmG40ztkE5x0+w==
X-CSE-MsgGUID: R4kga8QFTKWvXn858Q0WWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38104393"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 09:28:07 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:28:06 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:28:06 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 09:28:06 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 09:28:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IpNuMSF/Elx9786B0vJcWeCDcji6vjbgkDV+ofF1sMyemgfRFVh4trTixoICKkMVpscC2/oKB2NjBUSsG/gzCMFc8phzma8lh0VCTu8KStBtThwm5e7m5IbK747whz+/1MX9QU2QyKe8rfQwJKTagD2m9ixNiM1NFO7cdmSPyKU81EcjPt5nDx6R++2yu413Fgb5/61iJqckDEuNZOrbx4uz1UItX1WAm4KFF1o9ti024JHuHz/0F7cGCGeQ9SbbsknEV2iu+Sn4a+t6SAMDRiA9VG6vFhLn+YKCWyW4fUDRlUjZ0kDxRI9V5Zxqu17OQug5Ve+vEXTutIaPbxGbdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p6SoUnzKNM8McSgm/Q/5leVGjC4sBScyuA2sAO6+SHc=;
 b=TcytfjuAg/XfcMkUPPMmfoVLOi1C42af/DYDCWfl6PnnBqB7fZh+RNju0blfj1TYcEmW4bFjrcyp9XMBEdddLm+NPcpLJNJhJnAnilvgb/TJvaqTlbJJjn1QN+w9c2ms99F4K7Pt07C7uiYu0Z4rwQL2ci2UE/5J78a/jZ26w+mPMD2lEkHTX1/i3imxM6TjXbp1sS36eJyRH5H8eCXFsZccNWsqB2xNBqH9uqRVHY9G7+orb0bxbo7rfTMcngEwvXpx9fhvK4eafuAvFEzAgYgJhlBFJZ9tybdDe7e+zHZpEzi8QLstIylH8eSNYTi3KD5LutyxHOYEhrYQ1ZRSOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by BL1PR11MB6051.namprd11.prod.outlook.com (2603:10b6:208:393::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.21; Thu, 6 Jun
 2024 16:28:02 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::c625:ce3f:cb4a:db14]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::c625:ce3f:cb4a:db14%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 16:28:02 +0000
Message-ID: <a8017376-900c-4ad9-bdfc-ba0d711491d5@intel.com>
Date: Thu, 6 Jun 2024 09:28:00 -0700
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
References: <20240604221327.299184-1-jesse.brandeburg@intel.com>
 <20240604221327.299184-2-jesse.brandeburg@intel.com>
 <20240605174802.0add2109@kernel.org>
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
In-Reply-To: <20240605174802.0add2109@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0155.namprd04.prod.outlook.com
 (2603:10b6:303:85::10) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|BL1PR11MB6051:EE_
X-MS-Office365-Filtering-Correlation-Id: a9b57523-0684-4aa2-48f5-08dc8645a2ef
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|376005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Z2Vzem9pZDZKbm1JZlJJWS96SlkydnY0OTQ0OXovQXJSN0NSN0ZzYXBsNEtw?=
 =?utf-8?B?OG1MaWFiUEpqcDFtNmlmTlFMRGRuMmxrdThrWEFSYVppS0tKdzhiNXQrMGh2?=
 =?utf-8?B?d3prNjBaaFUwT29YYm50M3pLYXVGZktvN0Z0YlBVUUNhNGpxdWNjOUNaU0FK?=
 =?utf-8?B?WVNXRmJkZ1JsV1lvVEtPTmx0WjlVOURRNElhQzNEYXJ5SEdETkM3M3hIYW1k?=
 =?utf-8?B?Z2cwa0hWOVRxY2l1RnkrWDVZZ284TmdMWXhWMVJET0NuaWJmZ2J4eTJSNjVq?=
 =?utf-8?B?ZkRNK2RMNHArY2llR2l6SC9XKzM3OXVaajVyMGtJV2JoK3ZBcEZWL2pVM2JV?=
 =?utf-8?B?dFZqeXUydVBtenA1K1BnUzBxeEY4cWM0Q0FkaDUzeDcvTUhqK1BERFJoMGF0?=
 =?utf-8?B?V2h6WkxqQXVIRSt0MTN2NTJBWEt5L3ZYVU1JWVNET2ZWR2Fpb1ZCdklLZStB?=
 =?utf-8?B?VVhteVBCWlgzOTkvTmJpZVJhTUVvd2ZxRmxGWFluWlorUWZLUmtMQWVDY2M4?=
 =?utf-8?B?YmRJemYyaVpwTkYvR1FRV1VROWlkZFVFRzdGQ3JqMWdXWFhsSVNweE9XUmV0?=
 =?utf-8?B?Um80ZWp2bnpDUmIrcHZqNjlwWWxGMmJkY2FkUm41anBZYlNIbWlEWXJpelYz?=
 =?utf-8?B?STVmdVhTZTB3dzBQZnFERDMwS0ZRWHEvQnR5alhwUEtqbHFQMEhDWkZkL3NU?=
 =?utf-8?B?WnJIUytNbHJkbTRJWHlRRXRKc09ybmhwbkZTeFFhSEtsdHU5eDJkVC9MZkQz?=
 =?utf-8?B?WTVIcFNIRW1KRnAvc1FCNG4xR1BpeUsxM0xCY3dPMUI5eDdCbWJaWkNjR3JC?=
 =?utf-8?B?M2t2ZHd6SWVGbXF5Q3drQmpZRU9va1llcEhUUTRycGt2eElGeVBXME51MUM0?=
 =?utf-8?B?RWphNk5jOGNPbDR0bkRsM2xndkNkd01KNUVtWUliR2orWndIOUJsR0J1TXdP?=
 =?utf-8?B?TmVGU0dNdTRLaXpOTWVUOThkamFkWHF6VEJYNlZVeWwyMjNrbUpaQVdacHlt?=
 =?utf-8?B?bUZmc1gza2xvT3JiWVk4TjJwS2lvekM4Y2JTQVFWcnAzaE85QjJFenZSYzNC?=
 =?utf-8?B?QU1ZWFdTM01MOW5CK2o2Yy9OTURqN0g2REFqTWNpS0RnbGxDaFpEYzVyRzVU?=
 =?utf-8?B?bEVtSTRYR2tIeVVBZ1NZY1V3RnU5MGUrQlN3WGRKcTlpOWJHZjF3Y2xYa0Yx?=
 =?utf-8?B?M3A1dURhWjg1bUhNNGV0MDB0RzlzeGNJb3FMWmxmakd2NXprTEg1NHZGZlZx?=
 =?utf-8?B?SmJaWGE0VDk2NEJ2WWRmSXBMTWd1Qnd4WVdjNXVVWmR2R08vaGdNOEx5Yk9F?=
 =?utf-8?B?aGZRek5KM3EzWXQrVUdQWnJ6bG5GWURYdDdZNDJvSXR1MDlBTTR4dlBBZXhz?=
 =?utf-8?B?d0xZSXlYa0lhdWZHUmE3MlIvVVZ4Y3VKOVcyUXJ0VkhpYldoQUNoZWp3b2J0?=
 =?utf-8?B?VWRJY3haeGFoZmJ4R01GQVp6a252em9RWGdxZlhLWHRhSlhJMWplQ3pieEor?=
 =?utf-8?B?UGgvVGVpRGh4V1hxeVRjRTlpS1d0TklEajBGUmtNSnNPZlFoeXpRQ2VRb1Fi?=
 =?utf-8?B?UmxMNzZBTFBmR1ZhYjQxMG9IU3NYOXVXdzFZcVllMHM3K1JnUW83OGVFT0FN?=
 =?utf-8?B?bGhjN1NiYkZlcVQ3Qmt6b1BRQnB0K0d3NWdWaEZzWWdJeXFMUGhMNUY4aTlH?=
 =?utf-8?B?dVpiR3h5YktEaFVaZGlqN1dkUm80SXpMeTJRYkRVK3pyZVZEbGtyVmdWWFF0?=
 =?utf-8?Q?PNxRDjZkpZT/7da7m52Sd28ZitJJkT2BIJ083Bg?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?alcyTEZUZkNsNmJIWkFndkxJMzQ5RVZRenBFdFJwd1JaM3dvU1ZiaTVwSXBp?=
 =?utf-8?B?NzhyYjJtZmlJKzV0SnFzcDRsclpxazhYOG9iYTAxb2FRdkVKUThSbTRlR1lG?=
 =?utf-8?B?Qk9WeG9lK0lQUWpnRjF6K0RvM25maWlyYWQxWmQxWGx4T2M2TkVRV0trK0Zl?=
 =?utf-8?B?ZDl6R1hhK2RnR200SmpmK3YrWXpMd1h3YWNTLzFGN3JNK2cycW8xOUNDNU5S?=
 =?utf-8?B?SEZ3VXU4L1hGQ04rYVFUR0graHgvLzhsR3hPVjFxSmcrNnJSWTUxaE8ySHpJ?=
 =?utf-8?B?U3FmYWpjbVBheUlSZ0RXTmhsR24xM0JhajVWQTJYczA4TERYN3llNHd2Ymhr?=
 =?utf-8?B?Um9SZFMwZkxzWXFMR3NpcFFFV09LWnFHT0FzZEhmSEd1Rms2YW5oaitmNFkz?=
 =?utf-8?B?NGF4MVphR2dHenpVTXhMOVFzOGxsd09GczgxWTcxWEJxeXZzdkI0WW5kREdL?=
 =?utf-8?B?N2RqZUFEOUp3Uzh6c1lLOW4xWmhPYWJUcGg3a3BDMXlWaDlKSFBLZ2luWWcz?=
 =?utf-8?B?ZDFRR3ltY0Y4c00vdHc4SGZsRHdJTTRlVGU2RVI2VWNSTmp6MkEzR2FPWVE2?=
 =?utf-8?B?MXVyUXdVd21Wam5mZlBrRjV0Y3BvcllhTEFrK1hqbTJIakxSbE9OejdQRWM2?=
 =?utf-8?B?KzgzYWZWa0JIWno2YmdaT20xWENwbXhOdEhUeEFqcmZCZHRpaEsyWWcrd1I2?=
 =?utf-8?B?UVJrYnVWTjZ6cUR2dVAyYUwvOFNJcVpyL0hZaUIvUG1SNEU3Q3B3d2x6VExX?=
 =?utf-8?B?TzJPRnhLUlFyelpqSzVvYTAzcHBQZjd1aEY1a3p2dUVxV1RRSG5EQXpIYVly?=
 =?utf-8?B?WVBYUzlhZWQxTk1xYzlEdjVnMk0zalU2aHNvdEh3cUE4aUNjUlJyRHc1MGdM?=
 =?utf-8?B?UHVobEpTWWRReVNtZlh0dXZiQmVlVTlyanhkUWNvR0JBSXV4N3BJbC9RZmZZ?=
 =?utf-8?B?dGp1NHBhSHl4eTJHWk5yb2IwMDJZR2VPczBUNTAvTDNvbEgrYmt0cnlXaXJp?=
 =?utf-8?B?MFY4cGt0aDJCZFFnWnRCS3F5dnY5a1hMeE0xUEZJNGxhSFJ3NCtLV0pKcnNZ?=
 =?utf-8?B?T0NRMytDOFQ3a3NXSHhSS2FPTk1ZVzQxOHF5cEhOVitHTml1VkdHUzZqZndy?=
 =?utf-8?B?dXhpSmM2QUQzeFhvZFZ5aXpqb1JTbWNDYmhGclZEQXBsdFVma0t1aXI1NG5a?=
 =?utf-8?B?WlFSUkVzcXJWNTRlbDYzRE5hN0lFUnQ5SFRnWi93MWN6TytjRWVxcnowR1B4?=
 =?utf-8?B?V1ZvK0luVUhtZ0RkcFhQbVkvNFFVak1LaERYZ3pIaFJhZURXK20vSVhubllq?=
 =?utf-8?B?aWdoTGNnL2FZaVZGQVpHVzJqbGNQWGc4OCtPT1ZaSWR3RlpsdEtRaDhYZjVM?=
 =?utf-8?B?UndwY0hmTTQzVDI1Y2UxR0xEeUpnTHA5Zk9vV1YremUyRWp4Q0hqcWVsQUFO?=
 =?utf-8?B?S2lBNURLTXZDZWFHWXRpY0IzUUpObzc4bzloL0JIdUt0M3JDSjFrenhOOS9Z?=
 =?utf-8?B?enB2QytzWm82aU1SbVppK1RGc214amRKZ2ZFWHRMaGgrYS81bWI1azI4ak5B?=
 =?utf-8?B?VnV1aDZoeFd4L3MzZjMvOGRsR3g1cnRTTno1NFNRWjFlVmU3WmpUVlhpdDh0?=
 =?utf-8?B?eXlaSnFLL3BYSTc1WXNXOUt2VTVzZGxwbkhiN0N4TVRwVjkySyt1c1R5bUJm?=
 =?utf-8?B?c0hSTlk5eW1naWgrZTZwU1UySXhrWnlFYzlCRU15RWI5Q3puU1hhYkZ5aDFa?=
 =?utf-8?B?MUUvQkNJbVNKWDdLOFgwOEZERWpNVk5hRTFVWmRQNWI4bkhSSkQ4MWlJRmlS?=
 =?utf-8?B?OFhXRDYxbGpRVTlyOC9wS2U2bGR2TFRQVWtSY1ZSSmx0OHlIOU9yL3hFRDZQ?=
 =?utf-8?B?SXpjS0JLMlFEN1FJc3VNSmI5Wm9UdHR4TkpuOURmRHlFZFJEb3cvaURDbmRC?=
 =?utf-8?B?Z1pqbzI0R3FCVkNpMXI2TjVEQXA3QWxHSzFZQStJSmxjamZlcHpjL2xPcnli?=
 =?utf-8?B?Yi9lbURNUW81ckJGOTVxTTc0Rm9VbWRXbTY4Wm9RbHI0VHZXcVg1UzFudU15?=
 =?utf-8?B?VFZlWGlwRk4zT1U0R28rdlgrWW5QSlNaZFhqa3E2ZjY1QnhMMW1RdUJSLzBp?=
 =?utf-8?B?Y3NCRjBUbUx3NnJhQ2lRTGJ3MnFJWmVYZ3E4SDIrb3NKL0I2K3o5MzlPcmxN?=
 =?utf-8?B?SlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a9b57523-0684-4aa2-48f5-08dc8645a2ef
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 16:28:02.5405 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 295IZasaeZpjZpCYbkrvgce7VHl+7pelQv6Bet1Lpdror8DyrAD+meFH8SyURlSilBX+F/YFAe0CuSUIvKIJ7UUi9E1Rblhy/ofVxzr6UGk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6051
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717691288; x=1749227288;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rZasSUfxkOVr/LTSd8UjI9GdxWA76XbZnYBM4na4E/s=;
 b=UIHqc+SPadfU3YsEek65goJswJ4SOAN7hxR5fV6qhwiFj/wPE0AkoIws
 kmKKbbZOcD2OhdGgM54ZPlrBfjc5qeLXcH5eap3wMWSWUUmE1BSJlNvSo
 ma1fJr35JG4jWPOvsHYQiWSx17PmtRT/JDqZxrIhwLYJRQpUvexC3flTM
 7i0m0bzGseRSSq0vU8nrvOmcORilKzK4sV+8eKauS6t0U2+1kDLR7OzWw
 EKYD58ftMTNeG5uF46S8luskMq6uTfa7s9wWEpkX2cTg310VpFde6D3yt
 AM+UHWtkBmwSEo097I7y6hMdz64yfw0jrm5NpMKHpJeOxsiA2zLhX7eDs
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UIHqc+SP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/5] net: docs: add
 missing features that can have stats
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
Cc: linux-doc@vger.kernel.org, netdev@vger.kernel.org, corbet@lwn.net,
 intel-wired-lan@lists.osuosl.org, Jacob Keller <jacob.e.keller@intel.com>,
 Rahul Rameshbabu <rrameshbabu@nvidia.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/5/2024 5:48 PM, Jakub Kicinski wrote:
> On Tue,  4 Jun 2024 15:13:21 -0700 Jesse Brandeburg wrote:
>> -  - `ETHTOOL_MSG_PAUSE_GET`
>>    - `ETHTOOL_MSG_FEC_GET`
>> +  - 'ETHTOOL_MSG_LINKSTATE_GET'
>>    - `ETHTOOL_MSG_MM_GET`
>> +  - `ETHTOOL_MSG_PAUSE_GET`
>> +  - 'ETHTOOL_MSG_TSINFO_GET'
> 
> I was going to steal this directly but:
> ` vs '
> so I'll let it go via the Intel tree :)
> 

Thank you Jakub, I had to stare really deeply at that comment to
understand "backtick vs single-quote" as for the longest time I couldn't
understand why you were quoting the word "vs" - sheesh :-)

I didn't even know/remember the docs required backticks vs some other
quote looking thing, it never even occurred to me, so thanks for calling
that out.

I'll send a v2 with the fix so Jake can pick it up while Tony is out.

-Jesse

