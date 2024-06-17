Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C93590BCD5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Jun 2024 23:19:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DF9BC60AE0;
	Mon, 17 Jun 2024 21:19:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1UccX6AB9VZj; Mon, 17 Jun 2024 21:19:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A7BEF60AA0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718659182;
	bh=uQoScJoCiKnhyGr3tZ0nAPXjjEIm1T35WI+f7dtKAeI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nRAO+DcI23O3bKTAkOQRAYSGrSniRx9n768WDLsKGDPwc8/Stis/3Cwl7Y2QjN/JH
	 7lEeIUQg+LlHYqaEsILMaABcnSlhswhffdbQQ0v4Pka4HtJbggCU2v30Dxe0xphxx7
	 PI0RsOzcTowEW0zmqlTW0Sbe9FLcl2YaIVg20iudxjAcZuT7OyIt4pv5X3QioIWg3l
	 x0jeaLk8uTYhgSA10QBX1N29isekELPZUIxAyGQ6B7Qcya6Iau7TbhxR1UVGCeSoCl
	 KaEgTGfUqBuWkhC+mj7DkVX6Wdbz+KhVp6jPMmX3mO7EIPT/S36bUvRiO+7TvMWXwt
	 HGGwI4xtI2yrA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A7BEF60AA0;
	Mon, 17 Jun 2024 21:19:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A7B861BF28F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jun 2024 21:19:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A0C13608DD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jun 2024 21:19:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fAHEEpIssnkN for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Jun 2024 21:19:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=jesse.brandeburg@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4EA6A60594
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4EA6A60594
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4EA6A60594
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jun 2024 21:19:38 +0000 (UTC)
X-CSE-ConnectionGUID: Mb9Bz6rwSIWnJQ+ZK+obxQ==
X-CSE-MsgGUID: 0STc8vakR4+a2FB5ZXnVXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11106"; a="19365852"
X-IronPort-AV: E=Sophos;i="6.08,245,1712646000"; d="scan'208";a="19365852"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 14:19:38 -0700
X-CSE-ConnectionGUID: 5wN1Xk9GRm+lLIDFWICBxA==
X-CSE-MsgGUID: hyOFb1GjTZK22McFARIffg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,245,1712646000"; d="scan'208";a="72076061"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Jun 2024 14:19:38 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 17 Jun 2024 14:19:37 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 17 Jun 2024 14:19:37 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 17 Jun 2024 14:19:37 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 17 Jun 2024 14:19:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iMGcdqkUBC9JOc4OqQw3EG/UdqdwpMm3yhB1trQmQUgmhZ5N2zrLBIyYnyUkLN9chj5iGguTEaNQID/dMupFguAgvz09iRL9ul02091LzZ8tuRL2Pj4s3j9uLf1mNMoIDbnggEGpe7GbHjyA2e2TttGfisTS1w9w0hLl2TViCda3hC3bLkphDlbnMqNejxBY2dU5Cu9DqjwTNB1cSpU0TlnE17trJGPYBwd4BemK4IUNKnifgmWfs/dPHWpXk4gXmodTjZ6cK7MJRHI3ynhR3RjmReZRjv7H6H+xrZU60fGOjn0jIFuBGat1oUuZTWHEmd0LGP9hZxgKKhkqvgcbJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uQoScJoCiKnhyGr3tZ0nAPXjjEIm1T35WI+f7dtKAeI=;
 b=HnclS4OWftC8YtxPj6giCqBHi7oBN+ayLrJwBITgTMbpr+CPCWWRmI4kh+Y+BW/0zyYCJ+QC+o89aw3orEkZZ2mcalTmq+L+8IcEhNOfL45zlY1OLME6AtNFkBfpcnN5gdvTPWyPTbMdW1TL+0zNuvxKXcTcSUqx4wpoZJq/5/3QKOHYe/NcFpEb/9RM5Wd6g+71D4eSjl7qCUbbylnFrh7fsuJemez/ZYNRze2BQAoxWQyBd8GWOcxKNIw2GycdWJoUd4c4RGXhuTCFbHXLaXHSaTQ63wV9Ot74S4rCr8rkOBGnOQYTULcHZTPycN+IB5k3mZAdgrRWr6rGp9UhyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by DS0PR11MB8000.namprd11.prod.outlook.com (2603:10b6:8:128::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.27; Mon, 17 Jun
 2024 21:19:35 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::c625:ce3f:cb4a:db14]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::c625:ce3f:cb4a:db14%4]) with mapi id 15.20.7677.030; Mon, 17 Jun 2024
 21:19:35 +0000
Message-ID: <383764d7-711a-4c1b-b188-0fe8d70ebb82@intel.com>
Date: Mon, 17 Jun 2024 14:19:33 -0700
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20240617190759.2378532-1-jesse.brandeburg@intel.com>
 <2dcd7086-5b7e-4582-9e70-358015ca2b89@molgen.mpg.de>
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
In-Reply-To: <2dcd7086-5b7e-4582-9e70-358015ca2b89@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR03CA0139.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::24) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|DS0PR11MB8000:EE_
X-MS-Office365-Filtering-Correlation-Id: 85a21440-f08d-4c81-bf66-08dc8f132ffa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|1800799021|366013|376011;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dGZxZ0dvb2RraTVUcnh5b3Q1UmEyOXUwYVcwWkIzSUdLLy9iMDdUNHRPbHVP?=
 =?utf-8?B?eE9vbkVWRUlBdGpFWno4emNvMGY5eGVxL1lOVHFwREVwZGtvRUpJRUl4bE5x?=
 =?utf-8?B?Zi9WVElOOFhIanhwdGNLK2pNR3F6ejZSTEZESkUvazF3aHIweHlMZXN4WkJL?=
 =?utf-8?B?VHhUbjZva1cwQkJlZWtwNTR0L3lPaVhadzdBQ0ZrdUJ1UXhSYmtsNkplOXZl?=
 =?utf-8?B?UDZERUFCTVlhU2M5eUxzcTZJTWowLytpYmVzb2M2bDZLNWtyU0RxUTArdFVY?=
 =?utf-8?B?eFlvai9aTGxuNFZhcGdHTGg1aDRiSzNLbjdFc2tzUlVndlNTaTI2Um1IUjVB?=
 =?utf-8?B?Vit6ZkhFSFdtb2kyZTMrKytXUUNkYmZiSUErZkJGWDJld1pISlBTeUEwb3Zl?=
 =?utf-8?B?OU1HbDRkM1hEMGRxeUxwVm5zTDFzelk3VmxQS2dGRnYzOEJwejJNS2ZDYWF3?=
 =?utf-8?B?NFRjZHkyNU5KSmdlcGE4V0h2elJvZklBdTh0SDdPSGE3dkt5SUU1dlRTeG5h?=
 =?utf-8?B?OGxNVTZjMG12UGdWTXBzSFNMckh1MHRqcmNyeWZvRTZMeHBJTHlFTzdOd2VV?=
 =?utf-8?B?YnRFRTluOGlzNitia3ZaZk9aYkgvWmluUFJXekxtcEF3ZXVRNytxTU40M2Fi?=
 =?utf-8?B?dkt4RHlvdk1HTGRGeUgrVDUxdWhEd3hNR2FCMnB3eWEvYm5YTGw4YlpONy92?=
 =?utf-8?B?NUxOb2RQVmFQNkJxR05ucTg1QVpST1lZZGlkVnJZTlR0WEFlRTIrQ2c5V0N1?=
 =?utf-8?B?MjNmY3hnNG8zM1RmMC9LVi9WMzhjSXRxdXRQOFE0ZFRXNHlXdTBSMjdNYzBN?=
 =?utf-8?B?c1pRRVE3RlhsR28rN0xqRGJmUHh5RG1xY3hzeDhjdW80ZVNsZjErM25ORXdy?=
 =?utf-8?B?MUxtaW5JVmJwSnlJeTFCWTJoY0lJODhTUDhhTG1QUE9EQXc0cjFCSzRHM3U4?=
 =?utf-8?B?ZXV0cFFCWEZNNFVwbGxFRnI5S2s5NjBVLzNhNnZJSEhvSk1Mdmk1NzZ0WEpI?=
 =?utf-8?B?RTIrMUVCNDZhQlpGZ2JkTXJ2WEQvNkwyK3IweUYrRUVrYngzaGNKOU45UmdE?=
 =?utf-8?B?d2FsL2xRRGY2dzIzN0pEMlUrMFdoTDIreE9OcmdIMXcwT1BrVDR0bVhZVWFF?=
 =?utf-8?B?RnQ1dlFSQWdQVkN5N1dkMkRuR245RFNDc0NIbjlWZVRveGhLK0Q1d1ZZZWNV?=
 =?utf-8?B?VmJoV0w5VTkyZkQ4V1BIQ0tHYks2OWJxOWdneC84SGpPcm1jVkJwSXBDRSsr?=
 =?utf-8?B?bzcvVWVaQVgyNGx2ODM0YjFpaU1qd2FkRWcxbSthN0h1ODZucVhKZXpnaURE?=
 =?utf-8?B?RmNZZk04dHhLcGJ0VFNDY09mbW8zd2gyN2U1ZWNPWWg2K1ptbUg0SjdDMnVt?=
 =?utf-8?B?VjdYUmVpcmdFbng5ZVBTc3pITkQ4enFQUnk5Z29GdWZUNkZDakQ4KzJYcTgx?=
 =?utf-8?B?ck1zMkJJUmhuOEpGcm1yWmtuZGJlT2FQVlVKQXdjWEZSRmJiRy9xYkQ2blov?=
 =?utf-8?B?ekIzZXNSNXBOSUhQdHVsNTh6SWRFb3Q3aFlaY1ljcTJmMEdXdGEyS1E2VDd4?=
 =?utf-8?B?aVFsSlg5K0pWd1YzWTlRUUdzalFMZFBUNEJkUkRKdzJvNit3UHM1SmJPU3E5?=
 =?utf-8?B?Vmc2UnEvM2NSL3FEZUpPQzFaR0JYNDY5cUpNNVhwTk1UWUZrVnVVeThHeENu?=
 =?utf-8?Q?oiC+viyUuDUc7vBg+AyY?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(1800799021)(366013)(376011); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RVNSWitGVjhvMjRBbmQ3NzlDS0pNY3E2NHZQUUs3UFFML3ArRDRwY0lzUEhJ?=
 =?utf-8?B?NFlCaXVKODRMUXd1THBHYjRnRlBNRGpUUjFZQ2tTUDJYTk5VMGIxZ0pQVW5n?=
 =?utf-8?B?MmlJK3NKMEJSMTJTcEU5WXcrV2t1NkVraU50S1AwTk5BZFQ0Z2JDQkY0WnhB?=
 =?utf-8?B?dlB4NzBGeDR2REVvYmlkVmx4eG1OdTQ3c1ozVHMxcnVGMmlwUWs2VzVkTXZV?=
 =?utf-8?B?REcwZC9weWJoVmUzaU1pM1hqM1RmWlpCMEZ2NVgxZ3FtSXRsRUJjM1pJNzMz?=
 =?utf-8?B?aEZCQTl6NnptYVFlTnFOaTllemR4YTRNUWlnc2pNV0o3RDVRa3Z5Q0NOTDNk?=
 =?utf-8?B?UGhRVFYxYzFydDJZMUFSelJMSXFraVhON3JJang5RFY3dENyejBjOGRzNnZn?=
 =?utf-8?B?K2NiQkM4eFdqd2tKTldTaHd5S0Jld09LOXYxdkhoT0s5b2VYTmNkck1YeVAw?=
 =?utf-8?B?Q0hNOXBnN2lZdXZhT0toajUwU2Y0eFhhY1NPdE0ybmI3SjRIeHpkdzZXQ2xT?=
 =?utf-8?B?MzNCa1BwOG9sRG5hQk95S2VFczluSXIzN1pGVkw3clhrOElPUWZGZTR2Ymln?=
 =?utf-8?B?M0ZOeERFUGdRUzV3U1lpOWJWQzhBYnhOZmRiRkYrQUFkdE1uYTh3N2hacTMw?=
 =?utf-8?B?bjluTEt6Tzd4OTByRHJVR2lCQVFXVjgybTM2Slp0SVB3dnJEZTJ6Z08vK0Y3?=
 =?utf-8?B?QVJLc3lkQ25pZncrcWsxSU5sODJCMmxqaDZnTHNpbXphK1VsM0k5d0pBQ2dv?=
 =?utf-8?B?MFJVRjdsUUl1a2x6S0F2dFFzeVN4N25HSU5oTUN0REdXbFR2KzB5YlR0dkww?=
 =?utf-8?B?aUdkZmJmVE9ldkRMV1FYdi9lVDBFU0RZamlOekhybDZFb0d2VUtKbWJ5VXdD?=
 =?utf-8?B?TzR3UGorclAzZWozb2t1Z2czYW1vZnhCckRtZnVwNlhXblovdXNIa0t4Yk5J?=
 =?utf-8?B?TmhacnlGcFg4VnE2MW5YM3pIemI2cXFrRzhtbTVKTmFqcHRSa05kMFpDSnN0?=
 =?utf-8?B?S3pqbkhYMkJ4dnUrYkdqYnc3TFRESFVpdkFMVHdIeWgxRlVsRmszazVKRGoy?=
 =?utf-8?B?WkNJRW5ycXFUbTZvMWtFTzBDcVFsSGhMUytXV05WaEVMQlM2NGdJU1YzL3No?=
 =?utf-8?B?c2dUcEdHZjlNT0N2QVViODMrYm9XNHdpcWN4cWdDQkFVWGp6ZUhPOFpNVFhs?=
 =?utf-8?B?OWhUYTcxVVZlZFBaK1F1MFcvZEtuekpOQVlES0Frck9rZTRDMFVjR2xkemE4?=
 =?utf-8?B?WFRXUHRnZUVPK2VvZ1cxazh0a1FqVVFoYzJEYjZlM2I2QlBQa0M0S1JXZml1?=
 =?utf-8?B?RVRxblpwY1ZKVWlVK3hZazhQUEh2NFpzY1g3VFViQXE1cTdjTnl6QWM3c1Fu?=
 =?utf-8?B?SkhidEJ3eTU4MXNuMVFzTC9Zeis3ZVNXL2tqdzJjaThoVitNeGh6OUFEdSs1?=
 =?utf-8?B?YzM3ZFZ2VW52N0E3MFJoWWtmYVdBaDBvcmF1QllhQ2h0Q1FjdHVrMWtxYVF1?=
 =?utf-8?B?Y21yTVlmcG5mMW9QdEpWRVo1bUVOSWZTNjlHU25VWHBhY1JXVzJINmdodUhL?=
 =?utf-8?B?VjdlYzErRkI4bVNlL1VWa0o1K0N1SGJURHMzTHFtT3pla2hnT2VaMmpxck5r?=
 =?utf-8?B?bHo4cHFLTnFlaU1GVU8wTzY3em1LUld3WHpDczVyRWJSRHlBeUNWRkVFeWNH?=
 =?utf-8?B?UzAvNDR6MDllbmlRRzR0dFRKUldERlB5VkFMMDJlaG41RVY4ZGtqLzJGOXFB?=
 =?utf-8?B?Q3VKL0lVUWxpNGxpRFM4RGt4bVhWOEtMdzNmWkw1SWozWHM5djBnUEpZRzV3?=
 =?utf-8?B?MHhubjBWckp3UGMrTmZjeHcwQnNWK1B3OWFUek95TEFZREE1RkQ5RkdIUlZv?=
 =?utf-8?B?OW5WWXhIMy9YVDd2R045UDRKbThrQUhNeldBQTZ3djNNaWFWWFNyY25qdGtw?=
 =?utf-8?B?aTlENHc3ZWw3WFVDcTZQVmRRemNRQ0VlY3hYSzd6UUhhb08xWTdvcm1qaUpj?=
 =?utf-8?B?R2daS2Y2M0cvZjhlMXN4ZlBMbnYrbG5jSXhOdTU1azFjN3UzQ2J0NHQ3OUJY?=
 =?utf-8?B?ZEFJWGhKMlRKbmJtNFo2elZXYUtITTUyVVN3dnVYYWpNbzJMU0xHaFgreGFy?=
 =?utf-8?B?NmcvbUx4Zk90dElnRmpyZFpRR01PNzQxOUh6RDZEV1VKczdIN3lsMGdXbnFP?=
 =?utf-8?B?Ync9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 85a21440-f08d-4c81-bf66-08dc8f132ffa
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2024 21:19:35.3140 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Bn+W67fFsJUp1oBAui9cnJVT1Jbee08NukmbPcYHxMJIotMYvoVAWKVGTnzgOjhbTtjSuYyLpAHF1ZH+Ehj6e1kthS9hitmrGNyP4Ug51zM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8000
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718659179; x=1750195179;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/vtc+A0kOaK/CM2EZ9A9D1KZhlj9nHh+IDRBJfAbdFo=;
 b=DBtUsaxA2wHgE4puL0sSGRIBFHo7Ik9vJS3j05SuP43S3IBMR7d1XXTJ
 ABpoejBOicfkfD0FzC4eb4NgH+wQBXrPg702vSW2KU2VsyWVKFPEZ9RMM
 k2EFE9JOLbC5G1haii0hdi2wjckgJO+G7gdq/DlGd2k0XaSLnetapoJV1
 J0gm+K4Xw9gvLR9x0NRPJGAXoMgoqzMzl0GMx4Gnba0dCag9Zcmx6FfYT
 U2oRb7rYL8/2vj0G0zqAnhMY4me1V6NhPpINqzI4N0qq5LI8wecL1DveP
 s4TaYMJ8XjA8cbyFXty0QkHaSXgpGtfAMHymB/L06NopVy0OBnnyVNAfR
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DBtUsaxA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] MAINTAINERS: update Intel
 Ethernet maintainers
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/17/2024 1:29 PM, Paul Menzel wrote:
> Dear Jesse,
> 
> 
> Am 17.06.24 um 21:07 schrieb Jesse Brandeburg:
>> Since Jesse has moved to a new role, replace him with a new maintainer
>> to work with Tony on representing Intel networking drivers in the
>> kernel.
> 
> Maybe add the names to the summary/title:
> 
> MAINTAINERS: Intel Ethernet: Replace Jesse Brandeburg by Przemek Kitszel

Thanks for the feedback Paul! I am more comfortable with the "summary
subject" style instead of the "detailed subject" style. I also looked at
a bunch of changes to the MAINTAINERS file, and there isn't much
precedent for putting names in the subject (there are some examples but
not many)

Do you have specific guidance you can point me at that I may not be
aware of?

>> --- a/MAINTAINERS
>> +++ b/MAINTAINERS
>> @@ -11050,8 +11050,8 @@ F:    include/drm/xe*
>>   F:    include/uapi/drm/xe_drm.h
>>     INTEL ETHERNET DRIVERS
>> -M:    Jesse Brandeburg <jesse.brandeburg@intel.com>
>>   M:    Tony Nguyen <anthony.l.nguyen@intel.com>
>> +M:    Przemek Kitszel <przemyslaw.kitszel@intel.com>
>>   L:    intel-wired-lan@lists.osuosl.org (moderated for non-subscribers)
>>   S:    Supported
>>   W:    https://www.intel.com/content/www/us/en/support.html
> 
> Acked-by: Paul Menzel <pmenzel@molgen.mpg.de>
> 
> Thank you for all your work, and good luck and much fun with your new role.

We appreciate your feedback and reviews, and thanks!


