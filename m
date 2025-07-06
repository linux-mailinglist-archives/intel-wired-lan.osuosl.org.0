Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 827BCAFA4AE
	for <lists+intel-wired-lan@lfdr.de>; Sun,  6 Jul 2025 12:59:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 24DA181514;
	Sun,  6 Jul 2025 10:59:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WQLyEIYJmWiE; Sun,  6 Jul 2025 10:59:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9B874814C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751799548;
	bh=MNftCNBaEt5/t5mbED9hQsXbsAz2vJMT28hP6OXnHgE=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8HG6xu2dVvZP8XLXbpcooLMhTMmEU9ddDGEHBl7avYR0QhfCBl/wtp3/MoCdBOcV9
	 IZMvLMKvwm9OPKUWzD4heAs/mbLwXpVgQUil5iuzO3G8ImwE4Pv16XuwhyJJEQIqG3
	 UwMRdnjyqeOv0ed6PBGe0gFUgLw1XF90ttenGzHqxniIRz8wm0gfRcp3jLv6/1Ds/e
	 qfucuYNeS5Rs2tcZkbllLds2ehx371tS5d/p3o6YY1UuHEZ00ZqU7coJsiUV646y5P
	 iaI7nrd5Q3dUvceAAkCykad7u4wEYUA3aMaXHhKIFvX42vAy6ls2czvmzfGtQ4j/G9
	 0+Xpc4cza/IGg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9B874814C0;
	Sun,  6 Jul 2025 10:59:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4A8D715F
 for <intel-wired-lan@lists.osuosl.org>; Sun,  6 Jul 2025 10:59:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3C53D8149D
 for <intel-wired-lan@lists.osuosl.org>; Sun,  6 Jul 2025 10:59:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dTg3xhiSBql6 for <intel-wired-lan@lists.osuosl.org>;
 Sun,  6 Jul 2025 10:59:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=morx.bar.gabay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 836D581495
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 836D581495
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 836D581495
 for <intel-wired-lan@lists.osuosl.org>; Sun,  6 Jul 2025 10:59:05 +0000 (UTC)
X-CSE-ConnectionGUID: ZxGsjSKLRhiIiGippUfASA==
X-CSE-MsgGUID: dzFuAotoTGGcGFh1t3pR0g==
X-IronPort-AV: E=McAfee;i="6800,10657,11485"; a="65390627"
X-IronPort-AV: E=Sophos;i="6.16,291,1744095600"; d="scan'208";a="65390627"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2025 03:59:05 -0700
X-CSE-ConnectionGUID: jCw+o90eSMa2vNsHAsrpuw==
X-CSE-MsgGUID: E3+mFHTkRjiX4FyZ8kL/Mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,291,1744095600"; d="scan'208";a="154395334"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2025 03:59:04 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Sun, 6 Jul 2025 03:59:03 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Sun, 6 Jul 2025 03:59:03 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.44) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Sun, 6 Jul 2025 03:59:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oQPHhuL07H+tbU8ry7qaQbXzaXgAimslLQvnxI8CjTSz4+wyoXcPEhhr8OyS8rUFTSxSKMLwzOg0CNKW8NOl/t3z8fJ/f4kKiBdD4OOZtM4wIr31TbU9JyjXxp+mfJl/CyjVj91p4jydK1uWSoi8+19ZVG5ug0s2CKOJvCB3leCYRVkuZfkgn+Hjos7GuRcj4qIXM/XeCxNscAvwFrK8gCSwQadII9KlpZ3qhzxYn3DkjbflnpguIFdlzHIa1xI2yRNwJxdZho9DWkc15+SUgw9striMmbku6kYQgJdYGQ/nOctzPqyiyUsRVj6YT6JXQRpoxzmhFsz1QHVeMPtQvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MNftCNBaEt5/t5mbED9hQsXbsAz2vJMT28hP6OXnHgE=;
 b=Z/4KsF5VT7fZNRZEspdrUxwTnc1yQayidyQCjhSq9QhwqPWiVEDR436E6rTPCG92FhiOknxtixQH7V0E+7+leZPimQDopdsyUIEcvgu2ipl+4oSOoAyeL3dmFL9H7yfHSZQutRB3dUalhMMiampfEqLFe2Y1+s9RKotH0wKcC7OSq/L1AEKGB+tlww4VqEwzU8Jyw7U7Y8Gagcq+k4wklwPVxtvOetaWyBdLP2pAG3bP0BRWXZVab4flKBbrL2Of8qdsQH3zH6KXixAE6yit07dB9RKuZ6vR6rrghwoTJ0xded3rwfL8fLb9+MmQZJj70k5OeHvHKthoDYOaDODwEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6307.namprd11.prod.outlook.com (2603:10b6:930:21::20)
 by MW4PR11MB6787.namprd11.prod.outlook.com (2603:10b6:303:209::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.22; Sun, 6 Jul
 2025 10:59:01 +0000
Received: from CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14]) by CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14%5]) with mapi id 15.20.8901.024; Sun, 6 Jul 2025
 10:59:01 +0000
Message-ID: <f34de140-e01e-46a4-b3b8-4b6e7ba85b97@intel.com>
Date: Sun, 6 Jul 2025 13:58:52 +0300
User-Agent: Mozilla Thunderbird
To: Song Yoong Siang <yoong.siang.song@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, "David S . Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Richard Cochran <richardcochran@gmail.com>, "Alexei
 Starovoitov" <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 "Jesper Dangaard Brouer" <hawk@kernel.org>, John Fastabend
 <john.fastabend@gmail.com>, Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Jonathan Corbet <corbet@lwn.net>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, "Shinas Rasheed" <srasheed@marvell.com>,
 Kevin Tian <kevin.tian@intel.com>, "Brett Creeley" <brett.creeley@amd.com>,
 Blanco Alcaine Hector <hector.blanco.alcaine@intel.com>, Joshua Hay
 <joshua.a.hay@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Jacob Keller
 <jacob.e.keller@intel.com>, Kurt Kanzenbach <kurt@linutronix.de>, Marcin
 Szycik <marcin.szycik@linux.intel.com>, Brett Creeley <bcreeley@amd.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20250620100251.2791202-1-yoong.siang.song@intel.com>
 <20250620100251.2791202-2-yoong.siang.song@intel.com>
Content-Language: en-US
From: Mor Bar-Gabay <morx.bar.gabay@intel.com>
In-Reply-To: <20250620100251.2791202-2-yoong.siang.song@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0022.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:3::6)
 To CY5PR11MB6307.namprd11.prod.outlook.com
 (2603:10b6:930:21::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6307:EE_|MW4PR11MB6787:EE_
X-MS-Office365-Filtering-Correlation-Id: 734342b3-409e-4629-d978-08ddbc7c1d30
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|921020; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?V2x1MlZUbVM4QzdwbzRaTkEybkZtdnlabmdjbTBmRVM4RGI4d3VuUCt5Nmkw?=
 =?utf-8?B?QlZXTDRXN1gxREYrWFVVTE9MWEtNdVp3VkJ6UGJMZ3ZzZWpNandNb2JwSVlC?=
 =?utf-8?B?RHdwUUF3MURCeHRTRjJnVy9KTUVxTkFjNk56WGE1VGU1Mms0THZDdVEwMG1z?=
 =?utf-8?B?emh0eTk1TjVDVG9NejlGQWxnSnM1eVFLUitPeXFPUHpXeUxMRTh2enYxdDFZ?=
 =?utf-8?B?Tm93b1FLNVJGRFYzZ1VUUndQZkpxNnNNT0p1emFYWHpsL2RPaHhaN3ZSbjRl?=
 =?utf-8?B?UHJ4dGhuZ1hKYXh3a0hRZTl5aTc4aE5IeFpxTVNpRi9RcFVTVGR1T3lSeXRi?=
 =?utf-8?B?SUZGY0FVZFZMOGtma1FNZUF5QnRvRDNudzhsb0Fnc0dDMVlpU1lueUJPNk1V?=
 =?utf-8?B?TE0wK2dlMlBzKzgyYUxhanJzS3dYaFI2eU5mVnE5TWJTeUJuSVlOaElMZDRP?=
 =?utf-8?B?Skx0Z0xlaE5qb1BTWnRYRXpCYUJmd3BrbUVEemdhaVdZd3pmREp3c2VDWVBO?=
 =?utf-8?B?QS9mckNSNlR5OGFRbTdtLzFKdmdjS2lSNEhhcnc0T1MzOTV6ZXY3VG1WQURv?=
 =?utf-8?B?YmJGdlFhZXNnRzlzWEFGNlVKRnM0QkFRUUJOUVI3MUJleU5TRmpNMzl0dE1O?=
 =?utf-8?B?SGpWZGt5VjhMYVZoaTN4SVQzZEVpTHNWQ0FWNnBKRUJ3THJ4c25Bd3JXa1Fz?=
 =?utf-8?B?ejE4YWNxLzZLUThUcjFmbzJSbHZRSDl0ejBoeStheDZ0VDIvZWZMbkZvRy9p?=
 =?utf-8?B?b25nSWw3YThrL2FPd2dNMEFkNlF1cUdQbEVpNVdaUGtYYmMyQ1ZKblZXOFJi?=
 =?utf-8?B?elVDaC9kQjE2TkRGd00wZUZXTDdjN3BZZ2crTVJ3RCs2eGhsNkJETTRMZlc4?=
 =?utf-8?B?NDN1T1ZkcmgzKzhITStTendPK0ZDY3Q0Q3loN3lpT01hM1JLQ1VLOU13a0w3?=
 =?utf-8?B?a3d4bEgvNjI0OENsNG0zak81aUlEUlJXekM2bTRLN3dsZDRJekdobmltd1NH?=
 =?utf-8?B?UHVQUUQrTlVSNmFaV2dXNmx1QldGOGh1Y3Bra3ZBQnEyNU8wVnBCSEZzOHZK?=
 =?utf-8?B?WnJkaWtOZU9JT09NeFhCaUgvR3ErQXM1ZmMrdGlSbEJXVEtmemFKcGNJL2xm?=
 =?utf-8?B?UDZxQ3d1RW9hOWVIRlNEZHpWeDRsWm12SWNkYUJ6NlErd2JRMzZJOHlaSi9x?=
 =?utf-8?B?UzhIMWQrMXp4d1FWSEE4dE9XT0w5MitKcDZOOThWTlBnV1o2QkR0M0NyOVlL?=
 =?utf-8?B?NTBPd2krSnl0eVFpNHFGNVNqYWZPNytHczZnbTN0ckFDRXBXUER3a2RrQjE0?=
 =?utf-8?B?WVhJWmQ3a2hlRDdsNHpRbHlBWm9ncXlaNEU2RjM1NWFnUkZoaGwvOUUwNzZG?=
 =?utf-8?B?RU04TU9kQVpmanBJMTFYcmI3azdnckZ2SGlpZ3hybEhkcUVuVlNoUEo4ekdY?=
 =?utf-8?B?VG9Da0xvcUQ1bklPMUxiajFpQjhNQUpoNFFIMmthcjVxQVdoMENEUzF3UGFM?=
 =?utf-8?B?cnY0azd6NnM0dFUwKzZHd1BhQStXc3hQYXpvL3FQblRDVXVZdDNaOURWWHVK?=
 =?utf-8?B?T1BFL0VsYzlUYkdGQUp5UXY1WU83MkcwNGU3U1hHdSttbXJUbzZKZExidUFG?=
 =?utf-8?B?c2NsNGVhM1h3VWpWR0F2WTloZGRhYk9pckpOR2g5ZjAxOFgrNkpDUndqY2x4?=
 =?utf-8?B?MTJRakM2YzM1UFB2RVlDeWpkSU82QUVhRTFiMVBsQ0owS1FmL1BVRTFPWVlO?=
 =?utf-8?B?TGZqN1FhQTl6TmtBbm9VWStydnVsbWIzVjNJcjI0T3Y3dkEyZDh0QXVEa0RJ?=
 =?utf-8?B?cUhGVlBpMzNiQUVlRDlQT3RPU1hzVVRibXllU0J4a1h1My80TThINW8rc0NW?=
 =?utf-8?B?N29DY3VSaWY1ejZnbCt1MzJnRWs3bTRpVnhWaFp2ZmNTazVaLy9pM1g3SHdx?=
 =?utf-8?B?OXZZaUx6b1UrbVBTNmg4Qnh3TUZGRjlBMU9BRCtYTmpNQ09mMTh3YkVsZEx3?=
 =?utf-8?B?VGhrYUpWZUt3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(921020); DIR:OUT; SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZlN0OFY3Z1JsUXZEMVBFb2s5UVgwdW9VUHp2Rnp1NTdlZzM3MVk3SG9lUzND?=
 =?utf-8?B?eFlOczVDTmZ4ejhXY01BRHNzcVZyNUR4S1g2bmVXTmFJQlZjeCtydmNBREln?=
 =?utf-8?B?QXNBUUJvbWJqeUV6UFd6RnlUeW5VR2tWWnFGdHhTWkUrZjBLaVowQ0lyT3pC?=
 =?utf-8?B?ZVM2a29XZUN6U0JLTSsrQXQ2dGVTYnV5Wm4xaDBkTE5VUkY5bm55REgrN0tr?=
 =?utf-8?B?KzRxN01YdXpwdXF2SFJoWDc1YnF0OFdISHh3OThrTU5BL1hVNkl6SVZiam9u?=
 =?utf-8?B?dFNjd256Q2xxRnZld25la0M4TzhzZTRLR0dZb0wyVHQ4ZUdzenlJdEVmaHRp?=
 =?utf-8?B?djN4TXF3S2o5WmRHRlkwc0xnbzZkVEpvZThHQUp2SHhTZDZGa1l3cXlwcUQz?=
 =?utf-8?B?V041TFBSazBWa2U3QklrNUhtVWZCb29EYUh2aWxuTWZwUjJBWE93cXVFZjA3?=
 =?utf-8?B?ejhKRzRGNXZRVHhvUHpnenRPZ0NtMmJtdzgxY0FTSktnc25ZaCtmNmo2bnk0?=
 =?utf-8?B?TXZBV29GOW03eFRwYWxKVVVMS3dWd0tVcFVFd1hyRTQzRVBLcnhXVXl2NUp2?=
 =?utf-8?B?cWc3aktKNG02cU51YVRkN0o2azJyUUVyOERlNURYWjRpS2wzbGh1YXI2SzFr?=
 =?utf-8?B?MWV5eGVBVTZ3T1RoT1FGTjhwYkVzblc1QlV2aFdyTnVXaDJCT2pqUE9saWpo?=
 =?utf-8?B?WkxYeHpVSzBvREdLbVNxZkhqZk5hNVNieFlaZWF6YjB0SlA5c1NYSXVHam9x?=
 =?utf-8?B?RkpJU0JsVlU5TjU1SVF6YTl6c0FSUzB0eG91NkZyaCsybjhrck1oTzMvSHha?=
 =?utf-8?B?Z1Z0QWtRVVpXTVBXMTM1dElDajZKSzgwVG1QRjQ3STlSU1QvZWd0Myt1VEJ1?=
 =?utf-8?B?MTl4WnNib2JSb2c2cWpXVjFGdjJNdmJtYmJXTFNyTy8veFpOWE9zN3BnZEpI?=
 =?utf-8?B?c0I3YjFLNUxhS3R6YkpMaHdBdlY3QkV3bktLclpuNmlBTFZEWE80NjZ3eXkw?=
 =?utf-8?B?eHBHU2pYWHRTY1JSazRNaHdHeUhYQ1REcHNOTnNGb3kxeVJHRENFVXJHeXdT?=
 =?utf-8?B?UWJwL1JDU3REelRRZXdnWTZGa2VsY0NMc2JYbHUybW1ySkhNRFFjMm1OM0xZ?=
 =?utf-8?B?VUpEYzc3MzhyaVdEZm9yNFFKK2d3OERVYkRXL2dubFhheHNPVXloUk1HU2l5?=
 =?utf-8?B?dDVWdkUvS05UcG1WenpQNHZjV1ljQkF0K0VuMENnV0k2Q1loelF0ZnpQVito?=
 =?utf-8?B?N1FOZFY5WFZKaXBoUXQzUm90TUlZWUZjRlU1TDVyMk9hL251OXM3czhTWEIv?=
 =?utf-8?B?SHZ6Nk9BZmNybVgzYjlRUXJBL3E4bXNTQXk2MG8yM1ZhR3d5WXNWcWZyZUVa?=
 =?utf-8?B?eGhidTlFKzIxUTRsbkhMUmFSQkNCZUljQmY0a3FKblZucE5SV0crMjZyR2dL?=
 =?utf-8?B?R1AvK0dxQ0dKOVVtQVhVNCsyRjJtUEpMcjQ2RDdDNi9TLy9Tbkp6QnQzTFJW?=
 =?utf-8?B?REd3ZFJRQnlXMVk4dk1sUElJZGo5anYxcVcrTHlKeGcyVjQ4NXpkejZQQnd4?=
 =?utf-8?B?NEtOWkIzR1BYVUZyN2NtcndmZFk1MVAvTjZnUXpJcGwvN2ZyM2s5djRzM0Jk?=
 =?utf-8?B?cHA3aGRsUzF1WjFkSGwrdkl4U0lxc05xZ0dhaGlKcEQxNEw2bC96cklXeEQv?=
 =?utf-8?B?TzZ3b0Q3RE1RQ044Zkp6WmZSRVQ5RHU1YXc4eTFTaitrV2xKeFJWektPMkdn?=
 =?utf-8?B?ZHFjMGs3Vm4yYVdpTTU3NlZETUJqb2Fka1Z2SkRNRDZRbG5RSEZnSVorTHRh?=
 =?utf-8?B?cVhkRSt0cEw1dlhKWVZRTm1TTXE3OXFMeHBLK1ZCVld4WVFwRG9IMGk0aXk5?=
 =?utf-8?B?MEJzSk91dlpKbU9RQkpYQkZpMkM1cnFhYjc3bkJpRFNVNWp3eHFPUHlNbUFO?=
 =?utf-8?B?NFNFSG4xbi9sQnVhakg4N2x1K0x1bFg3SmtqclBSYklNa0J2cEFVdDhybnhY?=
 =?utf-8?B?cVpsZGFpN1BrWjRVbVJQM3NyVVR2cjlTclJReEF5cExnUktpVm1Fd243dHk0?=
 =?utf-8?B?ekZZMlN1UjFvQjBSbXFyRzVQSzN4Yk5NWWxFSmkrNzVmNHdlekRlTklRSXpp?=
 =?utf-8?B?TFduTDFIZmk2MTFYTE8yVS8xWldmUTZQVENXUU9mQ0c0QzUrOW1PcjlNajRj?=
 =?utf-8?B?THc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 734342b3-409e-4629-d978-08ddbc7c1d30
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jul 2025 10:59:01.2773 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8Ce6B+ayPVJ2JoAi5iGP82j5bcNj9mvVuO9UMi4cK51eMifBv4N40dBIXCQAoAgsyL1RSIymMwYUm35iQtfGde4LEvjD7WSbY6+gDaScv0E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6787
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751799546; x=1783335546;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lulD8Nh3jYnVTtyHYBsvtnNN390c99oJcZNQlMlB7Vc=;
 b=mwsjwZyp2WQtZd7UYQKH469+fOW+KszWt23FvTOEFhMnj/MSbR/mZTZ6
 p9MmI97xKYUE5ZglhwrMpwKSJyLe3bSIxcf4PPbwZtBphTRGFQffxvUHM
 O36gkpazICSF5+htSRXcNE33e+Ybby3/AtDOAvVdyeB2szoek3f7z+/J+
 bLVWqpelDoM7m3o7/kfOlTSyFrUOnFoSUB2PrvIiSQxUTYASm0MXOdORY
 dP599m3uOLi1z/0v6G+yp2ovhbL+4C3+GnRw144irzTAFjIq3cPuPfe6N
 1X2Fom00rXG2nCHqtn1NTq26+peuRBDfWGO+ulphPnMZowYM6augEVCjv
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mwsjwZyp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next,
 v3 1/2] igc: Relocate RSS field definitions to igc_defines.h
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

On 20/06/2025 13:02, Song Yoong Siang wrote:
> Move the RSS field definitions related to IPv4 and IPv6 UDP from igc.h to
> igc_defines.h to consolidate the RSS field definitions in a single header
> file, improving code organization and maintainability.
> 
> This refactoring does not alter the functionality of the driver but
> enhances the logical grouping of related constants
> 
> Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
> Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Brett Creeley <brett.creeley@amd.com>
> ---
>   drivers/net/ethernet/intel/igc/igc.h         | 4 ----
>   drivers/net/ethernet/intel/igc/igc_defines.h | 3 +++
>   2 files changed, 3 insertions(+), 4 deletions(-)
> 
Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com>
