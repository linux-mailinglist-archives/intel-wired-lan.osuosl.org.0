Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E89F3811C62
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Dec 2023 19:27:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1247761379;
	Wed, 13 Dec 2023 18:27:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1247761379
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702492057;
	bh=DRJsYNbx+n30j6487YnW4q656WVnoFth94lOsiWROrY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DQLtC7Y355rP3YWx3PRU/rrsM2YXyU03y5rFv10F1lu89QlPqYjThnBywX/9a3H7V
	 +RQZka7BxRQ/uVDuPNByglocZHxXfz/uVuT40NBAa6wOZyLwbwX+HoxWD3xO0WNWsk
	 0FaSR/XBWyiPUiugUewEvYHMbafVS6LrEtYin+b6Nx/8tEPmLah+AAY8Z7KQdTHLY+
	 f0AManwWEvzT71cdhq/RDIxB41hIam1NPwaxt3tQzGHf+s4CTRe3ZSwd0l1KxCmWyn
	 91v09YwcT4qYeCGNQylAhIHypAV7fjdGvUWnlEQQlvyonhsF3agIKjqsWJKGEPP00D
	 dpR/VP8ebBoDg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WyQ2tCoAG-l1; Wed, 13 Dec 2023 18:27:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DAF9560BF3;
	Wed, 13 Dec 2023 18:27:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DAF9560BF3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6D5A51BF47A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 18:27:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 469F540604
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 18:27:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 469F540604
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rCbcm5hv3pJv for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Dec 2023 18:27:29 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4E685400AB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 18:27:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4E685400AB
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="2181162"
X-IronPort-AV: E=Sophos;i="6.04,273,1695711600"; 
   d="scan'208";a="2181162"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 10:27:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="892112495"
X-IronPort-AV: E=Sophos;i="6.04,273,1695711600"; d="scan'208";a="892112495"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Dec 2023 10:27:27 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 13 Dec 2023 10:27:26 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 13 Dec 2023 10:27:26 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 13 Dec 2023 10:27:26 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 13 Dec 2023 10:27:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kdPshNcU6b8QGKMHAjoe4dJoEaGw4Ivn/F7Zl+biKHaJdt0FV0JxfHITOmcq0ZlgX4XZEd13gjoR5BzBSwEDxRuPFsGyJSEt/embqAX4ALTmtoS57INRNbXjXXBvdlc+Tg1S9eh3ssNt+eO4NBfbCZw86dt0+jzPeGTSF823fiLjurMI3mgjDjuoPrgHZMhald8Ul6pCXfS2kud9O9tbqU+WhjfD+vwU6Qh+WNYQvmbrvRRKhwbh+mF5pDo4as7L2cCwpeUyS0HV13TEamYTUipzWTVy2FvIK9S6PEMNilFqNaNeX+SknW9+odNURfulIJs3OwgIZL/lRPsBCyDmyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YyyhZ75BmN8aDixvegSBRsIOIc9LvlnyV46/O3aKKhY=;
 b=ASF1fhOkB0TlL8iIcwhj3i5YPQ4kCm9HqBorgpDlc5GeR+QsbeZbdxhn2evGzrCWNJZu5UDDv4wu0P/W345PfTsAG9eOj8M6NkGfNkaGDEwlsKmw/jVn8TW88ShAoMcVBR2c0zkKxiTWNCJ5zww5J25MxbHXQDoAGYtGSrdGXmPviHGqv3TNKkyojuv4yEfyFdGpLDBXBjglsckNfxkDqNteBNFjP+K0SfIZ6Yo5Dzth7U8Zjttg70hcb6p0+3tgyo7PE0Ssplv2PQbbtmg7ko+9ob+u06Zg1v3HXOJBlumQBoakXzIf8tc4WJlBFId0tOgplukgVA/m6FmHHhrOxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by SJ2PR11MB7597.namprd11.prod.outlook.com (2603:10b6:a03:4c6::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.26; Wed, 13 Dec
 2023 18:27:24 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::7706:285b:27d0:2c5d]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::7706:285b:27d0:2c5d%6]) with mapi id 15.20.7091.022; Wed, 13 Dec 2023
 18:27:22 +0000
Message-ID: <d5cc134a-b8ed-4d4b-96fa-de096c41ada0@intel.com>
Date: Wed, 13 Dec 2023 10:27:21 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Kalesh Anakkur Purayil <kalesh-anakkur.purayil@broadcom.com>
References: <20231206010114.2259388-1-jesse.brandeburg@intel.com>
 <20231206010114.2259388-15-jesse.brandeburg@intel.com>
 <CAH-L+nPi1yCP+18Z=UJj7E-jeV3W8aWnNXP49SDTVXWEErBqWg@mail.gmail.com>
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
In-Reply-To: <CAH-L+nPi1yCP+18Z=UJj7E-jeV3W8aWnNXP49SDTVXWEErBqWg@mail.gmail.com>
X-ClientProxiedBy: MW4PR03CA0237.namprd03.prod.outlook.com
 (2603:10b6:303:b9::32) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|SJ2PR11MB7597:EE_
X-MS-Office365-Filtering-Correlation-Id: 77685006-3510-4d3c-f8e8-08dbfc0925e7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IWi6TOwxkIRjeFY2vKAIP2oJg3WY57h12stN29gcdFLXUZFqQ38fNwTzEShPEyIV1crSqs0QyHSrNMiYlrh+qW7z3DhaizejmKNzQ46kdn//d0Tiz45uQjdZ4YjblJsERXpIbGyalinEz/OJnVggvEcl2/jbwbp2o8ASj3tf6MC41qRhQ8sRi6/9rzJgizaVGtxceDWD7OyTnPEy7A8xVyY9LbQOiv5dGkzolnf04E+apI6u86VDAfVh771wvoLerKO63jEh5GZPQNNPA3h6R3j8YUJqPQ36xtiLSHVz+x9LoUNgMZbBsA6kIWG3CvYF5vZqqBIVgVSpKO1vCR3OhtGzhLV95Gjgz7K8Pj37NL/7hFcVwsj6/Nf2KjNm7dCfr+QtPTHZTPDqRRalwGgrjtqvjQ6YlxkaBdKep3/5MCzyhADIRlfFfzFYcDEy/K2YuRR8Gh3oru/Hx02e2gJeV+tKt/4Krx1Bi1gTd4rc1+eG350QZWIgVDwk7HHCr1ov+xtY0UR99Z4nu6vvSZ975X/pgscJS5PKeVsIf+s3seVJgOZpq+7GzuANnj5exN+ahg1xk3Gx2tIkNQLxnAKPRQKGFGhD9mKmnP7DDYo9egT0xDaPVvh7weUm+KAJS8UfrUtWcQe+9TWXTqWvF+eXxg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(376002)(366004)(39860400002)(396003)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(66476007)(66946007)(66556008)(6506007)(2616005)(26005)(6512007)(36756003)(31696002)(86362001)(38100700002)(53546011)(82960400001)(83380400001)(41300700001)(478600001)(6486002)(44832011)(4744005)(8936002)(8676002)(2906002)(31686004)(4326008)(5660300002)(6916009)(316002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OWZJdjFadkI1L2EzOWVXUmxTT0lwMmdPRnN5dFYxM3Vzc3NjSXhtR0JBbFpq?=
 =?utf-8?B?OHNRVTNybFhjMVhvb241UWdJYjJ0eWwzUUg0VDFGRGZHd0VVbkVFRE12TkNX?=
 =?utf-8?B?Y0IvdDFPWGMyRkpEUHpVcGlYeDNDZkhYV0g4Q09pV3NRZjhVbnEvU1pRSVVr?=
 =?utf-8?B?YlRIZW5HdWpGOU03ZytyejBFVjNlcVJaTFpCNFdSSlByTGYvei9UbEZJZkR6?=
 =?utf-8?B?ZGJveXU5OG1hMEFZbFZuQ2RJK0NFMzhqZE5vYVhRWHZGQnpvQkRpMVZtREIx?=
 =?utf-8?B?VTNrcmFiOUlwbVZ5d2V4RHl1WGhVNVJTWU5KaHp5Y2FyUkFCYkZPQ1pWUXdO?=
 =?utf-8?B?Qm8yWjVTQmEzbStDcTljNXhXVDRaUlZKemUzSlU1N0NkT1JBS3NHb2pQR3NX?=
 =?utf-8?B?WjV1RWdNTzd0NHhKMmkzV0tvSnNweTBreXRTYUdtRHF4ZDhwNU9uMmZIb3FX?=
 =?utf-8?B?MTFIOExHU2VQcXZKYVBpdHpYV0syb2h1a1d3dHVxWjJ3Tm1lTXF4NzVuKzlL?=
 =?utf-8?B?VEczQzloWjZDNjVLM3ZkWVh1OXFLS2djM0ZZMjFaaG5qSVh0YWd5V2laKzBx?=
 =?utf-8?B?dmJwZVVyRm5vZlRxMWFxbW5sUGFoekFJMUVTTWJweDRXd2FlU1lBMTFNMjVK?=
 =?utf-8?B?VUhGamthdjJ3TG0wYXVGcGhoai9RN2JKWjFNc3BvTW9NbEVROW9id3hGTnVR?=
 =?utf-8?B?U0FFeEQ2L3dxYVEwMHlwdzNnT3l1QjJ6M2pVRW1EcjVGTGlReFpRUEVDWFJH?=
 =?utf-8?B?dXZGa0wxd01nUGdtVGtmd3V0aUxOcHNvOVVURDdVc0RnUjNVL3lYZUFmRGll?=
 =?utf-8?B?UEJEcGVrWEx6VXk2dmJxRi9HTm9qU3czTU8xcG1QanJ3eGpxRC93UEJrU3VE?=
 =?utf-8?B?NSs5ZDJ2SW9OSGFoZnlSUm1vMGtUTnhJUk93OUhMTEtIYUt1TDFQUktpc2tW?=
 =?utf-8?B?clZsbXZ2akRnN0phOWlETjY5MXAzYVYxdjFkN2M5SFdncEsxWW00SlVyS1hS?=
 =?utf-8?B?R1JSMEtaRjFKdzFCZVRaZ2E3THNzSHNUWm10VlRYNzMvOHozQitLR3lWMkxQ?=
 =?utf-8?B?Z28vb1Bqdlhkckd1V1c4RHpVVnZtWng0akNCbHBtS0hBZUV6SnJaa1FxOUZT?=
 =?utf-8?B?N2pYVVlZbEI1OWk5Y05BQnQ1SWNmSXR6bHlYd1k5dllnSitUS0EvTkh3UUZB?=
 =?utf-8?B?U2hwalhNNGxyUGNvRkNPN2tQVG0xYlpsSkc4bTNUWE5CemhKNTc1NUh0bG93?=
 =?utf-8?B?blJwNVZWMkJZVnJad0t0aUF4WURoYXpUUStGWngzNnpmOWZOQjcvV3hKNkpB?=
 =?utf-8?B?SWVHNys4VEwxeGt4THRKaTk5OWxjamF1a1J0cWhLMGJHSElFZkdOdmw5Vmli?=
 =?utf-8?B?YXE3VUxEdFNXN25PSENGVXhOUGw1anlmNjB3Rko5OUNFZ0xYUmZBQStZSzc0?=
 =?utf-8?B?bm45R0QvcU5zajJyN21XMUFhQmRxNmxsb0FteUg0TnIreEorMDZkZXRzUUY4?=
 =?utf-8?B?cXVFblA0RGpFUkNLMXAwU3dSRVJmZ2xxNXpjdmNLUXpCMHRqTktvQmxHS2Fp?=
 =?utf-8?B?R3JMTHFyNVFxbjd1OGFqRlFORFhiVFZBc3M5WjhQUXg5bHNTUnB2WWI4RHZE?=
 =?utf-8?B?ZnBQOU9UMXpaZXJHeXg1ZmJreDJlTVUyWTVsd2h3c0NMZjhuMWNCT29vc3o4?=
 =?utf-8?B?NXpBd21lYnRvSjQwU3U1NklaYlkyMTBBeW5GSVBCdWR0bEtqVC84akRCVFIy?=
 =?utf-8?B?aUFCemMycFdIUjBBejNZOE5mNVJ6aUF0ZlR3ZHhoT0xGR3dpanV1Z2pZLy81?=
 =?utf-8?B?c04wUDBieDZpSDF5aXcvcmpvWk5POHJPVEJodUhTRjR2eEh2MWpNZXppN1hl?=
 =?utf-8?B?OEJHS01aRFdmNUNMRnhyWWlMek9VUXpUbDBlNHhRWVNBbnRCS1lZTndSZ05M?=
 =?utf-8?B?aURadCs2U3RUVUdNYytBalNHTVVQRUpDOTFxQ0pONktkNENBMmdxOUZFUmxr?=
 =?utf-8?B?UWFzTEpYWVQ2WG4wby9mKytzbkozSzMrVTVjNUxqWXhEczRUMzVMc2RFb05m?=
 =?utf-8?B?UFpnOUlPOWVkREoyMjBhbUJvODduRHIzYXA0WVJyVzVwZDZ5anpQcXpsdnhI?=
 =?utf-8?B?cEV2ZlI2NzlqbWwycmNaTkl2V01IS1RlbkpDSFZsbm56NkpmUVZSRDM5ZGdT?=
 =?utf-8?B?QXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 77685006-3510-4d3c-f8e8-08dbfc0925e7
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Dec 2023 18:27:22.5181 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ScgBUhsqAFnIdZr1QydyCvTVQngIwN/mSSI5G8OMmArjYjF9cB1O9kfrB7Lmv8+1yYXuzLmbsW96qn7gUkr+j373APdTu+3HEXmqigRCbY0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7597
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702492049; x=1734028049;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hs21k34/IcOFEzM3GgBburXHXR2hHrg3bI9nKFOemGY=;
 b=m16aSQqmwK5A2ig0FfpcHEPerLATHdh4vGKGi61KSmqt+Imu0ci/wyKe
 FPfQBMcOTUtr2AiwEhM2j+eFLOA5nudUw7VzEvhtbMwKQyrL66ygH4GBm
 886XR0YHSBtia5GlvysyxRTohmWYubLh2TxxgDEY/G29t0OXKFxkNJmOU
 ZeD9TxDi+aaf41U5K8xPr+MisJbcHeb16mdnMFXcOBjKZbgbBVKyt+hXv
 6VqxYDlH0p12I05xB99m5r4gBhXDnIAk5MkIOeKeteiGeQNW2Kfd13qwl
 VOAcfro/t01joX49hfesIbtsvTPQ8cxPPHmh9SVbJ+sTxsH4SGfEa0EHs
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=m16aSQqm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 14/15] ice: cleanup
 inconsistent code
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
Cc: netdev@vger.kernel.org, aleksander.lobakin@intel.com,
 marcin.szycik@linux.intel.com, intel-wired-lan@lists.osuosl.org,
 horms@kernel.org, przemyslaw.kitszel@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

UGxlYXNlIGRvbid0IHVzZSBIVE1MIGVtYWlsLCB5b3VyIHJlcGx5IHdhcyBsaWtlbHkgZHJvcHBl
ZCBieSBtb3N0IGxpc3RzCnRoYXQgZmlsdGVyIEhUTUwuCgpPbiAxMi8xMi8yMDIzIDg6MDYgUE0s
IEthbGVzaCBBbmFra3VyIFB1cmF5aWwgd3JvdGU6Cj4gICAgIC3CoCDCoCDCoCDCoGNoYW5nZV90
eXBlID0gRklFTERfR0VUKElDRV9BUV9MTERQX01JQl9UWVBFX00swqAgbWliLT50eXBlKTsKPiAg
ICAgK8KgIMKgIMKgIMKgY2hhbmdlX3R5cGUgPSBGSUVMRF9HRVQoSUNFX0FRX0xMRFBfTUlCX1RZ
UEVfTSwgbWliLT50eXBlKTsKPiAKPiBbS2FsZXNoXTogSSBkaWQgbm90IGdldCB3aGF0IGV4YWN0
bHkgY2hhbmdlZCBoZXJlPyBJcyB0aGF0IHlvdSBqdXN0Cj4gcmVtb3ZlZCBvbmUgZXh0cmEgc3Bh
Y2UgYmVmb3JlIG1pYi0+dHlwZT8KClllcywgdGhlcmUgd2FzIGEgd2hpdGVzcGFjZSBjaGFuZ2Ug
bWlzc2VkIGluIHRoZSBHRVQgc2VyaWVzLiBJIGhhZApjYXVnaHQgaXQgb25seSBoZXJlLiBJZiB5
b3UgZmVlbCBJIG5lZWQgdG8gSSBjYW4gcmVzZW5kIHRvIGFkZCBhIGNvbW1lbnQKdG8gdGhlIGNv
bW1pdCBtZXNzYWdlIHRoYXQgdGhpcyB3YXMgYWRkZWQgaGVyZS4KCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBs
aXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
