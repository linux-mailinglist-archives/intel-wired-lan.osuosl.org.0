Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E9713D041FE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 08 Jan 2026 17:02:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A843C40B95;
	Thu,  8 Jan 2026 16:02:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OA9YiDnlf7Pg; Thu,  8 Jan 2026 16:02:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2AFFE40A4E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767888149;
	bh=qz4fBuO6GHWPgpM8P9UXBYDdHPShX018x5/fzQkZvBU=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FGM2tS4kbtxmtatxjEV3P496xFFZB8kcZ6+iThvH9JA7MXWbPqGHS2y3fgneUgmyG
	 MiUtBGIDPXXMO/qpIHFuae8s3WvvwyB9dOjflt31bs45ap8T6BAv++9k1d6osoaAgl
	 UXZFZInL74DegDidHOxlPH7ByuQ8XpW3mLfjxyFMhgzm3s6b8D/39IY5piB+9a3rLL
	 CFAmbBj90halQ4exFEtuUo3IrnTAe1l7TQx0t2C6s7Mx5ScCGb8mZipNl771k0a21z
	 1RUst2LyDSyeAyuMGjy3Ki6Eaiz4x6taZHxHwuOc3oa5+DH6tqrRrd+/1FPHW9k98f
	 m3U1Ec2K5TWng==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2AFFE40A4E;
	Thu,  8 Jan 2026 16:02:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id A537B436
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 16:02:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8BBB2409E2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 16:02:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j5Sc_r0AvnmR for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Jan 2026 16:02:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org AFAAF4098E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AFAAF4098E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AFAAF4098E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 16:02:26 +0000 (UTC)
X-CSE-ConnectionGUID: a2gH+s+qQ6uNziwgu0jLsA==
X-CSE-MsgGUID: MhJ1v2rlR1iNqrmwDxyW2w==
X-IronPort-AV: E=McAfee;i="6800,10657,11665"; a="86683786"
X-IronPort-AV: E=Sophos;i="6.21,211,1763452800"; d="scan'208";a="86683786"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 08:02:26 -0800
X-CSE-ConnectionGUID: 108q21N7ShW5whbpPcJN6w==
X-CSE-MsgGUID: vW8ge8BeS0yRXuT1tKedug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,211,1763452800"; d="scan'208";a="233944833"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 08:02:26 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 08:02:25 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 8 Jan 2026 08:02:25 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.66) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 08:02:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qHEAzcIfndPnw73UV9GQCRBPZHMC11YIWEvUoivezXET51mc12sIwiUlE475GuWHfvVd8FN62F9GZEhj2wNFiRrEh7lIVIwmxfeYYPf1yrF9vcq4/MMRWRzJZWK5uAZL3/z2vtcrI/6LFowLU18Y1hqdoZ0iYE6+vsCEYhaWyv0N45OnFKKivxM5VA0Y4L8wmBUpqnj94e+gPPGetVmeSiWcef9SLPVILhlKMaS4QJFnJw2rBATu/MkuNefMaei0jHr3GjPbE11XC4TrmEeETwTah4InA2PRDv7lS1RiwQDQgcyloI1kPCA9Lk555rJKejR2EaR8kuTGxLhxjHbnuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qz4fBuO6GHWPgpM8P9UXBYDdHPShX018x5/fzQkZvBU=;
 b=Vzc/kd9B6C6jQ/u4rNEmr52Kmd1QoEd9MTzwTvsFEofCN1+bMAJU6BefwN1U/bnXNp7gvcQVi/sKJFdo5VPv0rrhOoM+4X7Vw0AxZ6bCw5agd0ijp6+l9AQVDFKVV99E6xH6E8WDjKuf6nep+pqeJgd01q/npPXVjfuX+JST2du+yTKPbDpXYo+w10w1qd2FHy4JChghYfZQmdr0F8irC0bQCFwjIwDZnbT/6HefZeOYmaNneJRgIjowjqNp5cule6FszuUZsWoEW76919wHqK3O+B7tiMDg0WZFZllyRAcXLHZKR35xhPnwp3wNI+OH77faOIILjKarSReiuXQHVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by SA2PR11MB4988.namprd11.prod.outlook.com (2603:10b6:806:f8::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.4; Thu, 8 Jan
 2026 16:02:18 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c%4]) with mapi id 15.20.9499.002; Thu, 8 Jan 2026
 16:02:17 +0000
Message-ID: <c65ca5b7-4121-41c4-a5cc-3df2644339a7@intel.com>
Date: Thu, 8 Jan 2026 16:59:06 +0100
User-Agent: Mozilla Thunderbird
To: Pavel Begunkov <asml.silence@gmail.com>
CC: Matthew Wilcox <willy@infradead.org>, Byungchul Park <byungchul@sk.com>,
 <netdev@vger.kernel.org>, <kuba@kernel.org>, <linux-kernel@vger.kernel.org>,
 <kernel_team@skhynix.com>, <harry.yoo@oracle.com>, <david@redhat.com>,
 <toke@redhat.com>, <almasrymina@google.com>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>, <andrew+netdev@lunn.ch>,
 <davem@davemloft.net>, <edumazet@google.com>, <pabeni@redhat.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20251216040723.10545-1-byungchul@sk.com>
 <aUDd9lLy76sBejrP@casper.infradead.org>
 <37b642bd-9f26-477e-9fca-1e3c931c0efb@gmail.com>
Content-Language: en-US
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <37b642bd-9f26-477e-9fca-1e3c931c0efb@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DU2PR04CA0177.eurprd04.prod.outlook.com
 (2603:10a6:10:2b0::32) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|SA2PR11MB4988:EE_
X-MS-Office365-Filtering-Correlation-Id: b9c264ae-b939-4b3f-cf10-08de4ecf4c20
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?K2hmdmRIT3FtSVJGUkxLelZtdTEzSlVwbDd3NEFyaXR3S2pOdi96UTJxM2Y3?=
 =?utf-8?B?Sk85K1NUSXhOVnBIcGZtRENqVGE1WXgwRk4wa0RsV1JaMTV6MTJIWXNhdVRU?=
 =?utf-8?B?eDk5SEVpeTdCQ0c2ZUlSMmozL285UFBMRUdZRzlhSzd2TjV0RHJVNUp1U3Nt?=
 =?utf-8?B?M0JUYXE4bkpVaUR1c0Z4dE1FdGptQVd3NCsyd1UzRWluVVc5Z0JlZHdYeCtN?=
 =?utf-8?B?QmNaNEJTTHBSeWtvZ3FsSWl4Yld0MGlEd2V0U3RvTjY2emdzSlZ2M2dWNGpH?=
 =?utf-8?B?bkpnckN6T3BVOUJoS3A5cHJlK0lzVWdzQ095VmJhbi9wYjM4TkxHVnBkTWRI?=
 =?utf-8?B?cDFGL2wvdlk1NENsYXFsVDdwOVBmbWFndDluaktPOWdIYzk3RUxjSmQvZjNE?=
 =?utf-8?B?cU50Q2pFUlhQMTRodjc0SUhiSHYwKytQVXBSTHRqa1ZpSXFVOTlPRVBVNnVw?=
 =?utf-8?B?ZG0wN09hSnd3ODkyUy9jenQ3QWVrclBRZGwvVzNxTGp2ZUVOUUpNRzRmYndr?=
 =?utf-8?B?aWRzaGtSWU9HdWhRbXR0dDh0Q2lTa3NSWEJ1VFo4M2JDQmZHdGs1WDRVZHhM?=
 =?utf-8?B?Vnl2NGZTdUpNbStjTGU2ZFZyMGJqOTdKelhCMnN4NkhITzYxRWpCMGh6dHFj?=
 =?utf-8?B?R0NJR3Z3ZDRWRFdKdFBxbFZCVFozOWc3OWtxRmRZblhZVHpLcGtHeS9GVExM?=
 =?utf-8?B?MFhSSmVGYjQ3ZkNqMFFKT21yOFBobHVOZnBPWGtraktQaEV6WWZGZloremhI?=
 =?utf-8?B?QmRnaWpZSHIvcEwwckpoTk5UcE94T21kZEtod0dnU3hsKytZMGlaRWRKM05R?=
 =?utf-8?B?V2JvVG9RMm1vTkU4N3VpSkxzMFAvQTNEOFRSeERKSTJOby83MEZGY0JXdVFx?=
 =?utf-8?B?bTV5dmpBU1RLYkVLOEJkajUyM3hzdWt0dVVUOEgzZ2ZYTVFhZUNCZkxpckx2?=
 =?utf-8?B?M2h4WUR1Q2RwWU9YdmxCSkttQzBJemRJZU94MGpkb0lLbEtXRk1haGtBNVlP?=
 =?utf-8?B?UnlBQ0pxWG9GeVcxNFNDSkVBYmhPd3JKaU5VS3MweE16S1B2aXp6bUEzR1ZR?=
 =?utf-8?B?M0htQjhLK0J2MHBpajRUQ0RhNWttL0kyVVAxbi9EMnlhbVlBbEpBMThMM01j?=
 =?utf-8?B?RkQ1YnBTSy91NmFsbVM1UnYrdTVzR3EzRThZaUJhOHN5VUJKNnJrbU1SUDIx?=
 =?utf-8?B?Z1lUYm41QklmYUlHV3N3SW1VbGZ0T1kxMVVPczJlMVFqMkx0d3Y2ZUZHdWVE?=
 =?utf-8?B?VDNFOTVwSzNsNG1YWERRTHgrRUg1SXVaWHZ2eE11SzB4K21KYnE5R1dZZXRX?=
 =?utf-8?B?R04ycVo4UlVzU1p2QlBWdFBSc0dpM2xPZUV5NUQ4bnlhWHlLTHl4RStzNG5Z?=
 =?utf-8?B?SlcvcGdDWHJYRG05UTZyREVhWXZ3Q1AxUkp0eEcwVnZMQTZFUEVvUVFQZnFG?=
 =?utf-8?B?NHRxbktWUEh6SGZwNkh3eG5YSnlVcTVvakJUS3RGNUw2NjBBN01zVG80N09q?=
 =?utf-8?B?Wm5RcVM3S0ZmNGNDNWZsMUlvdGF6NFlmZFRoOGFERjlybzZTNHREa29vQWt6?=
 =?utf-8?B?RTVjYWF6VCtUdW45QnFPT1dyM2tXeU5uUWNkWEx4NTZma3ppL2hYQ2U0Q2dS?=
 =?utf-8?B?YnFtc1hWTWphZXRuTTE2ZUxlbVZTR21KZ0lndTVJQThZOHRHZVNLTVZQVTR5?=
 =?utf-8?B?YW5rRDdLdm5NWEhFOXRRTk4yQ1VIY2RkOG1OdU9UN21uZ1hEQ1c1MGRxaXFU?=
 =?utf-8?B?Y1VGa3JoQkdzUTAvZWdyelM5VjJ3bTNQVktVQkRkeDVQZkl6bENSVFJwNmFN?=
 =?utf-8?B?ZHFYNHhoRWt6QzVseitobHBGcVEvZHhuSkZJbGFQQ3hNR01sKzRWb3c1Y2Yy?=
 =?utf-8?B?TFNTUWxraWpaQUhna2oxY0tpTk1LOURkTXRBcVRjWVkyeVN2dXFRTVhJNU9B?=
 =?utf-8?Q?EiUQhU63qKNQe9BzhMuzRLdmX2Le4z+y?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WGpHM1FpUjd3ZnNCamhpS1RVdWNSd29BLzIxTVAxeVNWK2NCYnl4WGEzZEJq?=
 =?utf-8?B?c3RpSlVZTTVZaVFiQTh3enhoQWJSSkJmSnpNTkN5WFM5K1p0QzlnSmFKZ2Qr?=
 =?utf-8?B?cjB3bThsMnFQakpBem5TQ1RKWWpqWEFyWlJobGxFUXdjdDRwcHE1Z3hMNlov?=
 =?utf-8?B?NHVzWk1tTE5meFR2YTVLNlE4Y3Q5ZjlQajJaOWQveURDZVZmbzJBQ2FSQUt6?=
 =?utf-8?B?WVJ2SXlicVVOcXFnbU9zUmg5WWt6VFRtSkp5WittOFhQQlBRSlE2dnJwZk9k?=
 =?utf-8?B?K3JrOUpXRGZHNzVwQldyT1hqd1YzaFUzalhReEZMMXpOUW5BV2dSc0UwdStt?=
 =?utf-8?B?SkZQbnoyUGpPTW9STFFreXFDUkd5bmNkM2gxa2VJUC9sT3RjbGMzeHhsaW9K?=
 =?utf-8?B?RnRZS2xCTlRuZ2Zod3p5NjFOSVg2Z0hDOXA2L0plSEFVSVdmamNkTzF2dzhP?=
 =?utf-8?B?d1Judk03S0x1NTA5dFZPRWwvRWtDaEVhTFFNUjEyVXJpSk8wQ3VCRzdicExQ?=
 =?utf-8?B?OG00b2tuU3JzSE5NOVZyLzlFWnBQaU1OQ3VYQmxjcUwyanAzMFZDeDZSTjhK?=
 =?utf-8?B?N1lhSHh3cmx0cmZyKzdLVzFhZEg1Sy8xZ0R0TGp6WHlhdFRGeitBTWxXYWV6?=
 =?utf-8?B?ZlpaaXNIZzVhU0ZlWXIvY3lpVGFQQzhzWWxTVy90aVNVTDBIVDdNMTlYS3gy?=
 =?utf-8?B?RUdIVDdNSzYrTVFnYkxodktLaVBmMVJOL3RBZ0RLaUpsNnI3dzJUdHBIUlZ3?=
 =?utf-8?B?dGNublJ5OUwvOVFKcnRZNTcxNDZpZXFRVmFMMmR5ZVo4TXovRllpMnRCMkFm?=
 =?utf-8?B?YnhkK1l2VGt1Rm9palFQdUo3UzkyM09XWjdUVVpWOUJRekVGRXA3QzVYRTk4?=
 =?utf-8?B?Y0k2dk9DVXpiWmpka0d1VVlHNTBxRGpGd1MzM1gxR0NQcTZ2RnUwWXNaMGRi?=
 =?utf-8?B?L0NhY1ZvTGEvNmhxc3BJTDF0Um9EZ3JCbXdWVDM1QmRSV3dTc1hHbTNtTGlo?=
 =?utf-8?B?ZU1INGhSNnRtYTh5b2RQUkhpSXNIQkZJdnRiY3k2NGY2eXMxV0F6aHhLNTJm?=
 =?utf-8?B?R2x6MUpBeTN6amJobkMwQWs4bzFhdmpUVGVnajdMNktEVEpoYW8vSjBDU0s0?=
 =?utf-8?B?eWlta1k4QTFmd3Rwby91dUxRSm15SzBNcURoZWd2TmZ0OTUzNnVWQnFNdjln?=
 =?utf-8?B?bjE2MFBWdS9XbDR2b0hpdnhxU2pZUEdDVmhHVklnM0dHakhhQldVV0RIbnZu?=
 =?utf-8?B?bEZGdVlOWDFxYS8rcVFHNnpaS0FLZEI0OWNyT0xWLzNKdlpzR0ExcjZPKzdJ?=
 =?utf-8?B?Y2hBS2xqeUROWDc2dElJNWJmNVNSRmJlbjZzUnpGeVB4akVTV0dCSk16cGw0?=
 =?utf-8?B?RGRJZlFzdUgzMlVtWVhqaHBUTG96bC9Ma3lCN3FrNkIzQWUzMzUvRTRVc1Fz?=
 =?utf-8?B?cWpDVVVCb203QVdLS0dOSENiYUZBQzRFZ2dJb3J5WStzQUM3RTk3bTZNdjdj?=
 =?utf-8?B?V0xTc2szaENKV2d6V01pYy90QmVreVp4NTBJbjQ3ZStlOVRSRjhEbmJwcy9q?=
 =?utf-8?B?cmJ4VEJWTGRVVGYrUjNSK2kvTW96QkI0N214S0hGWURwZzJLd1V5OFVERGVa?=
 =?utf-8?B?eVpkY0NhZ0dxNUUzeHpmSHFHc3k5SDh5ZkdKWHU2b0orRGpvZVBGdEwyRHc4?=
 =?utf-8?B?R3lKd3p5ZmJHYmNFSG9veUZXdnJYNC9XUktVLzFGdEpWQnFjdHBPL0QrTEQ2?=
 =?utf-8?B?ZWJoUUNvSDVBeXRHa3BVWHQreFViOUdJTmg2TUlnMEdQQXBvK2ZPNXRET1p0?=
 =?utf-8?B?QlAxOTFQM1c1RFBjZTJkQzBxeEcwVi9ZZGErd045enRJMHVES2FnMlJYSS9E?=
 =?utf-8?B?alF3ZXhGRis1UVM0cjZqVDNEOWxvalZoMXRJQVVMZlVQQ0Y5YkxLaHhKRXpU?=
 =?utf-8?B?eEJsVjlBaHJtUklzbFhtaSt5cXNQdXM1ajJ1K3RIZ1FHSnVTYmc2TkUyYk91?=
 =?utf-8?B?ZXNldHFzWFZxenhKb1dVQytrajRLU2crekZOOXJxMkRzaFVSUGhEdGhuTnUr?=
 =?utf-8?B?UUFSMlNJTTFaNm12NjEycjN5ci9TQ29COHg1QXFPT0lWYThMcUxrQlhpbXlE?=
 =?utf-8?B?eWVJaFhMUEw1Y0V1YitZN0Nub1VlRFk5OWlvamlGZEIyWWNXRExZa2VCc2F1?=
 =?utf-8?B?VllGbnVJOUhDVDcrQ09Kc1krQUNFSnFiTHRhZkVNeFVESDAzNEFpT2FaM2kv?=
 =?utf-8?B?MWdGNm95QlE0UVAvakl1VUJrZzlNYWduTEQyeElIUk95N1o2TFp4M1d2aFNT?=
 =?utf-8?B?bGR6aUlIVVRnMFlVWk9ORzd5cTg5K3JJUlNQRzlmLzBVaTRDcXlGV2NRM0NU?=
 =?utf-8?Q?T/xPPFK9ZPaGbaVQ=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b9c264ae-b939-4b3f-cf10-08de4ecf4c20
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2026 16:02:17.9140 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: irSKHUWGUinLsgbd2VbRJWe/oBmj7Tr42ui3E+PU1klkxV4Zjt8Jw2PdQ19cBIUo6MKalsi2JIYM+I5/MFfRXEfRZkRW2z+4CzeDhsRuDQk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4988
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767888147; x=1799424147;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Wr1tb9mP+KSMybuNV/PKdTcvermedxTVcz7XWCzyWYA=;
 b=WjIOJgUfqabyDvHe6MMDFziHQZw1wznuLmhh+Z63vM4dTNu8C8goYmgP
 Uzxtzv3FMnMY0R2zHFT0twax3OxGe+TEuR70GgUjVfYF6oAbEeWVTTUsL
 7hLJ2oX4HLbyLEveC1Rfc3sFg4aZtiRYT/KmPGntcxHzO1FV0ZB3A3qjn
 flT5XdRxl39jsWqHfFBrjLxpRcrKjLQ8LB7wIdWJgigdFvI/OKLvMohXC
 5M1puGZIzrxRt/Bay5AVjq6G4OxDk4+LuESPcASrRTjmNnKJQ84X6eBgh
 QDnThimpjNQ+w84bF7wNiD49NM2mXjVCCzagJSn+9ET3sQfDfe59cMQpF
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WjIOJgUf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: access @pp through
 netmem_desc instead of page
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

From: Pavel Begunkov <asml.silence@gmail.com>
Date: Wed, 17 Dec 2025 13:11:28 +0000

> On 12/16/25 04:20, Matthew Wilcox wrote:
>> On Tue, Dec 16, 2025 at 01:07:23PM +0900, Byungchul Park wrote:
>>> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
>>> @@ -1251,7 +1251,7 @@ static int ice_lbtest_receive_frames(struct
>>> ice_rx_ring *rx_ring)
>>>           rx_buf = &rx_ring->rx_fqes[i];
>>>           page = __netmem_to_page(rx_buf->netmem);
>>>           received_buf = page_address(page) + rx_buf->offset +
>>> -                   page->pp->p.offset;
>>> +                   pp_page_to_nmdesc(page)->pp->p.offset;
>>
>> Shouldn't we rather use:
>>
>>         nmdesc = __netmem_to_nmdesc(rx_buf->netmem);
>>         received_buf = nmdesc_address(nmdesc) + rx_buf->offset +
>>                 nmdesc->pp->p_offset;
>>
>> (also. i think we're missing a nmdesc_address() function in our API).
> 
> It wouldn't make sense as net_iov backed nmdescs don't have/expose
> host addresses (only dma addresses). nmdesc_address() would still
> need to rely on the caller knowing that it's a page. An explicit
> cast with *netmem_to_page() should be better.

Sorry for the late reply. Holidays... Happy New Year everyone.

I agree with Pavel. This loopback test always operates with
kernel/page-backed memory. I believe it's fully valid to explicitly cast
to a page in such cases and work with it. This is also more clear to the
readers after all (IIRC I suggested this piece of code when Michał was
working on the ice conversion).

Thanks,
Olek
