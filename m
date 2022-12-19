Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C56A165078D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Dec 2022 07:31:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 361744016F;
	Mon, 19 Dec 2022 06:31:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 361744016F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671431479;
	bh=MNkA8Q76M3uLH6a5fbHOggcP1g978FSCvkoP2nRHWxU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=frjF0bb8B3ysmz+D2dkKE3B+BKOUDq4mbj9qAsGd9f6hqre8HuPHd/pbhLTW+hkG2
	 qL6a5fsB9Uj+CE+vbbzgQbBBY2VOyfn47zRFR/NyKyCIaK8E82G06pP+CFxbnTVl0E
	 zibVSbQ7b5ShQfDEFDEmjUY4pRnQOipZF3fQMAWJ0TFuOeuJFv6h1/XdcYXhfBnJXK
	 cY+y3EhOIPGni+ZMzBqlQAwID0xA6nwMK+A6SXWi5mj83D/lyQXreXppU3GAX4yzcN
	 S/AhnpQt4tlRJIBfCvMu6+FY+euDjsNhrViTIVMLckGmYcATdXhlEwln1tUjEE+ayO
	 YVD4VQlG/Gv0g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e3tyvBg0SCZW; Mon, 19 Dec 2022 06:31:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DF67F400F8;
	Mon, 19 Dec 2022 06:31:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DF67F400F8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C4AF61BF318
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 06:31:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A5EA6403C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 06:31:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A5EA6403C5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vFosvFeo1D6C for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Dec 2022 06:31:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CC0E0403AC
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CC0E0403AC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 06:31:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10565"; a="346372564"
X-IronPort-AV: E=Sophos;i="5.96,255,1665471600"; d="scan'208";a="346372564"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2022 22:30:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10565"; a="713902167"
X-IronPort-AV: E=Sophos;i="5.96,255,1665471600"; d="scan'208";a="713902167"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 18 Dec 2022 22:30:57 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Sun, 18 Dec 2022 22:30:57 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Sun, 18 Dec 2022 22:30:56 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Sun, 18 Dec 2022 22:30:56 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Sun, 18 Dec 2022 22:30:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PJobahzzqpZA13IFIjXk2v7kANLswonDXiFWb6sIBzvYIv5QUGX1XJNqlF1Qgx6iL/PgBZ+FwnCP5GAMyxk21jHpSj59qFcF9rnf275ACBm+Ox7dzQrfgul3ZFSkoXlcrRmQFIBsihjxLLzlW7Fe9UARaUdl7IZ5BfepiSpFfwzV7XeZCYlXg70g8Lq1YTqEi4nHCX8G4W22K32XQGOQPkEzZ3P7FbtqCG+ueF/1Q+a9YxHBMUKHMe/vWcUscsd2Uc+yN4rKUEo735qMHlY8iten4kDkkmm0wQV2t0ab6qHA7v/PelSJAfAHPU1BxBLcM0eQHgOJBa15weBrJ6Ux8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3t7IZv/KEY3s+8MnbmnK4JAk/mlZHC71DebxsOfQL2U=;
 b=Lyg2wkCk0PrGsdLyrdnH6cGRCjwQZt43be65pa5iEIW7gbF6FpA+gx1WQHxIGjn51g3xQp5tV1gjU0emxCaXUXg/402isG9pRVHnFhFOMCEAbm9/lfzoc5Ivt9GdNA6j29SfXyI08ZC22A0/GXEQKsfj9bpZi/wjvcEi09nBjMqwxrfeu2z/7+HqOsocFac65I3yh+mOYt0xZlI0sQLWoLNRLXMwtpAIh16//71fVFd+9RU0XsnTxk/pFBh9hpfDaZ7CCOKBmaKyaWTMjrCs+kqGg67hW9IbAvPussfjZeO/Qh4HMJjkaBhSusLT7EQ45HFnFXxYVZEaW6nnSbCSOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM5PR1101MB2235.namprd11.prod.outlook.com (2603:10b6:4:52::15)
 by DS0PR11MB6541.namprd11.prod.outlook.com (2603:10b6:8:d3::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.16; Mon, 19 Dec
 2022 06:30:53 +0000
Received: from DM5PR1101MB2235.namprd11.prod.outlook.com
 ([fe80::90f:cf74:29e0:2d34]) by DM5PR1101MB2235.namprd11.prod.outlook.com
 ([fe80::90f:cf74:29e0:2d34%6]) with mapi id 15.20.5924.016; Mon, 19 Dec 2022
 06:30:53 +0000
Message-ID: <a752422c-4630-e53d-c9cd-cc9ed866f853@intel.com>
Date: Mon, 19 Dec 2022 08:30:45 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.6.0
To: Kyle Sanderson <kyle.leet@gmail.com>, Linux-Kernal
 <linux-kernel@vger.kernel.org>
References: <CACsaVZL6ykbsVvEaV2Cv3r6m_jKt04MEUOw5=mSnR5AYTyE7qg@mail.gmail.com>
Content-Language: en-US
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <CACsaVZL6ykbsVvEaV2Cv3r6m_jKt04MEUOw5=mSnR5AYTyE7qg@mail.gmail.com>
X-ClientProxiedBy: FR2P281CA0180.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9f::9) To DM5PR1101MB2235.namprd11.prod.outlook.com
 (2603:10b6:4:52::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR1101MB2235:EE_|DS0PR11MB6541:EE_
X-MS-Office365-Filtering-Correlation-Id: d1590dbd-7146-4b88-e23d-08dae18a9409
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pIK1mI6WvYjnwgwb79PW81jxLEEKZ5U+o3v/UqT92skx4EKLeIK19wnTlAvvKx807vM0a3Z6KbsUILlW+uNhtxFVFL+gRDKaG40AVoZlTbVFm8siMF4rEE+EVvX2RL8kdd/9Nkfqkt08X3pFdcBWu2jAVWkHPf+bDI4xQb+sD6MwdyP1ctstM4dfVJJTlf8Jpl6OzsVALLJjOUa7lgnRYaFha/46T5nWCnJwYUG+P4CBOqhcVOqNzTg6V38ahR8XR0DNWO+YhtNEc7yCVWwKK6PdgVs1ixdKaJaCHRGYluXTtOFudttcCIal1Le15Q9WpQa+phZim4LHR4H5MmErt6EbE/JhvZClRQC/WpL0g4Nx+N8z7m18GQr3EdrBVx5/WpeUmzKEhsmqd2eInFamJvAD4j38vErcmCYSdsm75IJMPlRQJ5KacuSKfzORRTv2T+Td7OoqFAAKZ7KTEoMHgjxJTrd1RcOFimHGeIlylqmagxwKRZg6pewbaiXHddcPvuWoX7LU5xihsC8VQhf7yHITL6gNoaCwn/kr4i6OkL9Etdbuh8KLQfPmcdJzgEGne1bOu7dneF+Co+yLdfZJf5qNl6qauyFfyZ535yFN+MZlXNiOCq7h+X+rRWa6wC6qioxt+rPvjChV6GAdo2s59VN6lMJNLcywX5PBFpIdNpbxATPNS6dtXhdcC6TwqDMy50fjtzMiVX4veWjYXWyjqbBBtTyZb2uwDcQwH26vVqJuBVvOi+yonMb3v7lzI7SL
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR1101MB2235.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(396003)(346002)(376002)(136003)(39860400002)(451199015)(8676002)(4326008)(41300700001)(82960400001)(38100700002)(36756003)(5660300002)(8936002)(83380400001)(2906002)(53546011)(6506007)(31686004)(6666004)(478600001)(966005)(6486002)(86362001)(66946007)(45080400002)(31696002)(54906003)(110136005)(316002)(26005)(66556008)(66476007)(186003)(6512007)(2616005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TkdYYXV0MklucGlxeGY3NGZRUFdHVmFKa0Z4TWF0eHl1S0pvRjRoYjNFMTR4?=
 =?utf-8?B?dVBJUlRyaVV1Z3dkQlFMRGx0b0luM3BwQjZvTUFjRktLV1ZQamRzQ0ZjWWhR?=
 =?utf-8?B?dmQ2YmlGMjZWSTVObkgrQ3hhT1NoUitLMktEc3RHTGhzWW50aFFmeUVkQ1Vv?=
 =?utf-8?B?OG12OUtTUXpIa3BqN0lIdmNnUkIvaGk2ekIxTDFtcnIrcFFaRHd4VkdoRFg0?=
 =?utf-8?B?b1dmamVCcHRxOW12dkUrdnV6aHRaMVRJT2QxS2RucU9BdGREVENWRHJJNDdq?=
 =?utf-8?B?S1YvcDljdHVKSGVqRFg2a3NqcEpEU0Y3RHl2VW9VZkxDakp5UlJuNHJKRWhm?=
 =?utf-8?B?WjJJM1pLeXhkb2luNEZPZDVSUDNkdmxSRHRpQWRWSXdteHlwMmpjQnpTNkQy?=
 =?utf-8?B?Q3BOM29EY1ZDdFRTUTFMaVVJb3RhYTBicHgrTFdSSXZuS2ltSmxMTWQydjBI?=
 =?utf-8?B?TGY2bGgvZzc1MHIxNGZTWG8xbW9ndGNzc1V6S0hJWXZhZDJSM1gvVDVFcU5T?=
 =?utf-8?B?U1dxODNSSzFXcFFjSUJZbWdMR1lIU2lSRjJtWkpVR2JYSUh5VlNqVjZRSmxV?=
 =?utf-8?B?cFFtSWQzVUxsbGh1TTAyL0Y1eVI4Vy9DVWdoczZvbnF3R1llMWVMYnU5OGxG?=
 =?utf-8?B?RHJ1bWR6Uyt1SjdvYm80cWlldklCcXV5NnZsTEJNU08wcFJUS2NxOEZTTllH?=
 =?utf-8?B?VU9nWTlwd3Q0dmJPVmFpUWtZUzRhTmxUdkV1T1Z3K0VUdTFrVHZXd2N0YXZJ?=
 =?utf-8?B?ektPWXFScnQ3YXp1TlNrNVZBaVZFQmV1Y0JvVTRUM3JtT2NLS0FrYjZNTVRs?=
 =?utf-8?B?SXFtajNTUllLZjl6VitwdlFkQktYVmR2SU83djFsTVBGbnNsRDhmUDE3SUQ4?=
 =?utf-8?B?UGZOdE9WUlFlcEZSdE42ZGIvdlllL3JOMmlQMThmUFNrZG9HOTd4bzNTbllm?=
 =?utf-8?B?aGo3Y0t6N3hjbHkxZHpxZ3NXQ2ZBKzBoUVF1M2VUNHBSZzZPb0lMc1JLWlRL?=
 =?utf-8?B?MnpPenhGeTVqMWNoc3d3Y0drVURqcTh4bzluamMrTDhaVTkxcCtBa0VxSVk4?=
 =?utf-8?B?VXBTVm1qNyt4dStqejVmaVlmeXBkSiswbGRzVEpXdVRlUGVrTEF6d0hwTnRX?=
 =?utf-8?B?TnorZGhUT0FlV09WL3BkdWF3VGF5aXRHV1IzSkRrMUlhaHhkVGVCL09LZndl?=
 =?utf-8?B?RHlqYXlpakx4UzFYbWdnQjh6Ym5Ya2tnTHRSV0VFYUVpRS9SaExJdjlFYUlj?=
 =?utf-8?B?akFLRVJFREhRd1RMYVQwRklIRE9ydnhLOFV4RGZ2KzloNGdreHFwVHJrY280?=
 =?utf-8?B?L2pyWCtEbXhrR1FrYm9CWVZlZXlYQlJqd3pXdkp2ZUpXT3dzU1lZV1BjaGlu?=
 =?utf-8?B?U0lLZWNzVkVoWDZXZEVXTE4wMnpwN3Q4VnpBYTRBdHRXSlN5YWo2bkYrNEQw?=
 =?utf-8?B?ZjJDZHNtN2FyYjZLT1hkckNKZWltSkdGUHFmTzRZQnJhZjAzaG1SaktiSWkv?=
 =?utf-8?B?dFBqeTFWMFQ1bmVyeUxWcFAxdXRFM1A4RWk3cEZJd2tzczZuRUtzT1h0aDNk?=
 =?utf-8?B?TDIwVHVVNVlKek95a3lYbHR5WWxjcnJMUDNJVEVTTzJvSitMVVZaTmM1cGdp?=
 =?utf-8?B?M05iV0hPRVg2eVZMNldNZDZoNmxicmFXNGF3OXB1cVdza3MrSzJRZS9PeGV3?=
 =?utf-8?B?RkxJRzRrUjJ0dW1xM2tTcGQ2NTdwdkp3Ym10MDUvRTVSOUJ2WWE3ZldSdHFD?=
 =?utf-8?B?YjdkY2JHdWNjOUJla21sNHgvUy9XY1htTCtkem15MnMyZEpPNDE1bklQRzNG?=
 =?utf-8?B?dERYZnhlWEFTd0d1R1hQdE1qbUJHdnA0V09KQU5vN0R3b2NWMWxQTm1jTE1S?=
 =?utf-8?B?S0JhWmdOSTlOM0thOW90VGhBUzlGT0pmbktBTTh5RXNQY1QwaTBpTjhvc09D?=
 =?utf-8?B?MDZaMU5Ldnk5ckNtZ3YyT3o0ZlZaOVZVVmlaR3RUejFHazd2T2lMaTd4bW9V?=
 =?utf-8?B?eWdEM3BpcUhWR3BKRmEvT1dBa1ZwTEovNDhkSHVaQzA1LzRHM3NjM1FRTlJX?=
 =?utf-8?B?dWw4OHl0SStTbUpDZzRmZHFlN0MzWFZxYkg0dG82ZHJpaG9qNDBSeU5oZjhZ?=
 =?utf-8?Q?L26F5l9U48P3pG9fcEBn9m2Ko?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d1590dbd-7146-4b88-e23d-08dae18a9409
X-MS-Exchange-CrossTenant-AuthSource: DM5PR1101MB2235.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Dec 2022 06:30:53.4571 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DaMCs2K8F9xj2wz4b1xBMqHEFxc0kwFSPQS9BLKw6IVOioTAlzLGAd7agybDAt6dlGx/DGtDmRdM15T0P5Ns6Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6541
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671431470; x=1702967470;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uBDU3CpSTWIp5lBiVixjWVqtVvqAyk1u0e0Ft3jEL38=;
 b=EHqSkizxRM4GguYNkUMXodfjl1//nto0K9UKvPDGUxWrGOvAAS9PeO7r
 wP7XJ7jI8MSQxsB+UEMg76brIQDcVQrVFSzDcsCYwwKXIrjpC0RdyzkrG
 nWIzb6u1OOb/ualZbeJSKxWf/B8aV5zji2/t8hIwp9lX1rDYYXB6bnjos
 AeUuf2hQxIRyGHKKfWKAcYg5mmbAnWt3hiRfrFsErE+IldTF0Fx9/vHIE
 osg5L4MocPvrpy26I0eaNdxTv6mDvWEgZzTTNqzsgDHtrE9EM2N9h318f
 Dhwb57D6hTiKI1bllVgaphM7nQH4IplXQWT9tyxbSU+1sq17S1u3h5ohz
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EHqSkizx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] igc: 5.10.146 Kernel BUG at 0xffffffff813ce19f
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
Cc: netdev@vger.kernel.org, jesse.brandeburg@intel.com,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com, "Ruinskiy,
 Dima" <dima.ruinskiy@intel.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, "Avivi,
 Amir" <amir.avivi@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/16/2022 00:28, Kyle Sanderson wrote:
> (Un)fortunately I can reproduce this bug by simply removing the
> ethernet cable from the box while there is traffic flowing. kprint
> below from a console line. Please CC / to me for any additional
> information I can provide for this panic.
What is a board in use (LAN on board or NIC)? What is lspci, lspci -t 
and lspci -s 0000:[lan bus:device.function] -vvv output?
> 
> [  156.707054] igc 0000:01:00.0 eth0: NIC Link is Down
> [  156.712981] br-lan: port 1(eth0) entered disabled state
> [  156.719246] igc 0000:01:00.0 eth0: Register Dump
> [  156.724784] igc 0000:01:00.0 eth0: Register Name   Value
> [  156.731067] igc 0000:01:00.0 eth0: CTRL            181c0641
> [  156.737607] igc 0000:01:00.0 eth0: STATUS          00380681
> [  156.744133] igc 0000:01:00.0 eth0: CTRL_EXT        100000c0
> [  156.750759] igc 0000:01:00.0 eth0: MDIC            18017949
> [  156.757258] igc 0000:01:00.0 eth0: ICR             00000001
> [  156.763785] igc 0000:01:00.0 eth0: RCTL            0440803a
> [  156.770324] igc 0000:01:00.0 eth0: RDLEN[0-3]      00001000
> 00001000 00001000 00001000
> [  156.779457] igc 0000:01:00.0 eth0: RDH[0-3]        000000ef
> 000000a1 00000092 000000ba
> [  156.788500] igc 0000:01:00.0 eth0: RDT[0-3]        000000ee
> 000000a0 00000091 000000b9
> [  156.797650] igc 0000:01:00.0 eth0: RXDCTL[0-3]     02040808
> 02040808 02040808 02040808
> [  156.806688] igc 0000:01:00.0 eth0: RDBAL[0-3]      02f43000
> 02180000 02e7f000 02278000
> [  156.815781] igc 0000:01:00.0 eth0: RDBAH[0-3]      00000001
> 00000001 00000001 00000001
> [  156.824928] igc 0000:01:00.0 eth0: TCTL            a503f0fa
> [  156.831587] igc 0000:01:00.0 eth0: TDBAL[0-3]      02f43000
> 02180000 02e7f000 02278000
> [  156.840637] igc 0000:01:00.0 eth0: TDBAH[0-3]      00000001
> 00000001 00000001 00000001
> [  156.849753] igc 0000:01:00.0 eth0: TDLEN[0-3]      00001000
> 00001000 00001000 00001000
> [  156.858760] igc 0000:01:00.0 eth0: TDH[0-3]        000000d4
> 0000003d 000000af 0000002a
> [  156.867771] igc 0000:01:00.0 eth0: TDT[0-3]        000000e4
> 0000005a 000000c8 0000002a
> [  156.876864] igc 0000:01:00.0 eth0: TXDCTL[0-3]     02100108
> 02100108 02100108 02100108
> [  156.885905] igc 0000:01:00.0 eth0: Reset adapter
> [  160.307195] igc 0000:01:00.0 eth0: NIC Link is Up 1000 Mbps Full
> Duplex, Flow Control: RX/TX
> [  160.317974] br-lan: port 1(eth0) entered blocking state
> [  160.324532] br-lan: port 1(eth0) entered forwarding state
> [  161.197263] ------------[ cut here ]------------
> [  161.202669] Kernel BUG at 0xffffffff813ce19f [verbose debug info unavailable]
> [  161.210769] invalid opcode: 0000 [#1] SMP NOPTI
> [  161.216022] CPU: 1 PID: 0 Comm: swapper/1 Not tainted 5.10.146 #0
> [  161.222980] Hardware name: Default string Default string/Default
> string, BIOS 5.19 09/23/2022
> [  161.232546] RIP: 0010:0xffffffff813ce19f
> [  161.237167] Code: 03 01 4c 89 48 58 e9 2f ff ff ff 85 db 41 0f 95
> c2 45 39 d9 41 0f 95 c1 45 84 ca 74 05 45 85 e4 78 0a 44 89 c2 e9 10
> ff ff ff <0f> 0b 01 d2 45 89 c1 41 29 d1 ba 00 00 00 00 44 0f 48 ca eb
> 80 cc
> [  161.258651] RSP: 0018:ffffc90000118e88 EFLAGS: 00010283
> [  161.264736] RAX: ffff888101f8f200 RBX: ffffc900006f9bd0 RCX: 000000000000050e
> [  161.272837] RDX: ffff888101fec000 RSI: 0000000000000a1c RDI: 0000000000061a10
> [  161.280942] RBP: ffffc90000118ef8 R08: 0000000000000000 R09: 0000000000061502
> [  161.289089] R10: 0000000000000000 R11: 0000000000000000 R12: 00000000ffffff3f
> [  161.297229] R13: ffff888101f8f140 R14: 0000000000000000 R15: ffff888100ad9b00
> [  161.305345] FS:  0000000000000000(0000) GS:ffff88903fe80000(0000)
> knlGS:00000 00000000000
> [  161.314492] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [  161.321139] CR2: 00007f941ad43a9b CR3: 000000000340a000 CR4: 0000000000350ee0
> [  161.329284] Call Trace:
> [  161.332373]  <IRQ>
> [  161.334981]  ? 0xffffffffa0185f78 [igc@00000000f400031b+0x13000]
> [  161.341949]  0xffffffff8185b047
> [  161.345797]  0xffffffff8185b2ca
> [  161.349637]  0xffffffff81e000bb
> [  161.353465]  0xffffffff81c0109f
> [  161.357304]  </IRQ>
> [  161.359988]  0xffffffff8102cdac
> [  161.363783]  0xffffffff810bfdaf
> [  161.367584]  0xffffffff81a2e616
> [  161.371374]  0xffffffff81c00c9e
> [  161.375192] RIP: 0010:0xffffffff817e331b
> [  161.379840] Code: 21 90 ff 65 8b 3d 45 23 83 7e e8 80 20 90 ff 31
> ff 49 89 c6 e8 26 2d 90 ff 80 7d d7 00 0f 85 9e 01 00 00 fb 66 0f 1f
> 44 00 00 <45> 85 ff 0f 88 cf 00 00 00 49 63 cf 48 8d 04 49 48 8d 14 81
> 48 c1
> [  161.401397] RSP: 0018:ffffc900000d3e80 EFLAGS: 00000246
> [  161.407493] RAX: ffff88903fea5180 RBX: ffff88903feadf00 RCX: 000000000000001f
> [  161.415648] RDX: 0000000000000000 RSI: 0000000046ec0743 RDI: 0000000000000000
> [  161.423811] RBP: ffffc900000d3eb8 R08: 00000025881a3b81 R09: ffff888100317340
> [  161.432003] R10: 0000000000000001 R11: 0000000000000000 R12: 0000000000000003
> [  161.440154] R13: ffffffff824c7bc0 R14: 00000025881a3b81 R15: 0000000000000003
> [  161.448285]  0xffffffff817e357f
> [  161.452123]  0xffffffff810e6258
> [  161.455938]  0xffffffff810e63fb
> [  161.459746]  0xffffffff8104bec0
> [  161.463526]  0xffffffff810000f5
> [  161.467290] Modules linked in: pppoe ppp_async nft_fib_inet
> nf_flow_table_ipv 6 nf_flow_table_ipv4 nf_flow_table_inet wireguard
> pppox ppp_generic nft_reject_i pv6 nft_reject_ipv4 nft_reject_inet
> nft_reject nft_redir nft_quota nft_objref nf t_numgen nft_nat nft_masq
> nft_log nft_limit nft_hash nft_flow_offload nft_fib_ip v6 nft_fib_ipv4
> nft_fib nft_ct nft_counter nft_chain_nat nf_tables nf_nat nf_flo
> w_table nf_conntrack libchacha20poly1305 curve25519_x86_64
> chacha_x86_64 slhc r8 169 poly1305_x86_64 nfnetlink nf_reject_ipv6
> nf_reject_ipv4 nf_log_ipv6 nf_log_i pv4 nf_log_common nf_defrag_ipv6
> nf_defrag_ipv4 libcurve25519_generic libcrc32c libchacha igc forcedeth
> e1000e crc_ccitt bnx2 i2c_dev ixgbe e1000 amd_xgbe ip6_u dp_tunnel
> udp_tunnel mdio nls_utf8 ena kpp nls_iso8859_1 nls_cp437 vfat fat igb
> button_hotplug tg3 ptp realtek pps_core mii
> [  161.550507] ---[ end trace b1cb18ab2d1741bd ]---
> [  161.555938] RIP: 0010:0xffffffff813ce19f
> [  161.560634] Code: 03 01 4c 89 48 58 e9 2f ff ff ff 85 db 41 0f 95
> c2 45 39 d9 41 0f 95 c1 45 84 ca 74 05 45 85 e4 78 0a 44 89 c2 e9 10
> ff ff ff <0f> 0b 01 d2 45 89 c1 41 29 d1 ba 00 00 00 00 44 0f 48 ca eb
> 80 cc
> [  161.582281] RSP: 0018:ffffc90000118e88 EFLAGS: 00010283
> [  161.588426] RAX: ffff888101f8f200 RBX: ffffc900006f9bd0 RCX: 000000000000050e
> [  161.596668] RDX: ffff888101fec000 RSI: 0000000000000a1c RDI: 0000000000061a10
> [  161.604860] RBP: ffffc90000118ef8 R08: 0000000000000000 R09: 0000000000061502
> [  161.613052] R10: 0000000000000000 R11: 0000000000000000 R12: 00000000ffffff3f
> [  161.621291] R13: ffff888101f8f140 R14: 0000000000000000 R15: ffff888100ad9b00
> [  161.629505] FS:  0000000000000000(0000) GS:ffff88903fe80000(0000)
> knlGS:00000 00000000000
> [  161.638781] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [  161.645549] CR2: 00007f941ad43a9b CR3: 000000000340a000 CR4: 0000000000350ee0
> [  161.653841] Kernel panic - not syncing: Fatal exception in interrupt
> [  161.661287] Kernel Offset: disabled
> [  161.665644] Rebooting in 3 seconds..
> [  164.670313] ACPI MEMORY or I/O RESET_REG.
> 
> Kyle.
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
