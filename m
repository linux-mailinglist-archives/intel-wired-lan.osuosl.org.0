Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 01322705178
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 May 2023 17:03:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8C29A418C9;
	Tue, 16 May 2023 15:03:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8C29A418C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684249407;
	bh=y4K5h9JvXPhwZe7mfr0LICd5ojszhyu51F71Pns5l0k=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=q0QhnAxsAkXS4dZ8NKLQPK5WhSzjAS76GaMkybdafMabellj0byYL4rjkcDmumfzt
	 7Q1l3nu7VqDOCE0+m3xEouyt0LCUlINpUqMmLyRlH+PPMZyMop9YSd0QsaNAaGNOrl
	 Rz+gRkiIHb6+uRXwJ1oVMLiBR54HqHrM72M+2wlPxQotOonEyY7KShkjjfBLInfu6r
	 wK9ONs4X4lXyDkHY/C6vUgMyu/nxu45BrM96+ImCpR1+s2Nwfnag4zLURXHqE3r5hC
	 wkAKm8cxdvV/L3u1Sb2fbJT6Ya7yEgyu0PXMYRHT9mSS0jv6JsXBMDGM0XSLrn92tN
	 qXJLwqlJUXakA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1W3w8j71xczk; Tue, 16 May 2023 15:03:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1B40640330;
	Tue, 16 May 2023 15:03:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1B40640330
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4EA781BF285
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 May 2023 09:38:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2367040588
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 May 2023 09:38:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2367040588
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I_6ABiXCfnfV for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 May 2023 09:38:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E430C400D1
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E430C400D1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 May 2023 09:38:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="354597839"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="354597839"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 02:38:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="704333157"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="704333157"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga007.fm.intel.com with ESMTP; 16 May 2023 02:38:33 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 16 May 2023 02:38:33 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 16 May 2023 02:38:33 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 16 May 2023 02:38:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xx5cR/ojbKZcporMDKUaPfDJZEeRpTaUAEb8j4yLkkyPMlBrmP0bzq1xn3OdyJkCBJN55cyw3shJRDFKpkDVhSSVAS11gswXr7OHqNfnxtF6Q+z1tqcMZzhRTCmnTr+udUM3fnpAoDjwbzNQQW+iy5tnr40gknc1tK06i3wXE4V50Puwu9o2C/h5FV96k+VhnewL6EGUOwsjnIPWcFXD45nLoGxwzQ0Y8gc3H9rjnCI9QFVTz5ioHhzrEKhFd91dsaWl5pJH1L74oQChp16J6MUumviymAuOGUPnUC7YUWRxDf1RuP/VlXgSrPymyvsc35wV5lowXRhDsJe7tVdX5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xxKn+s2beRHDqY49PRn4TB1ZBbZb2Lb20i5QJ0m2EQk=;
 b=EJ/IVJKGZDdLzPuHrjpU+gmDKmqn9jLia0UXKrpM3JpOrJGjCTw9oi6z5M5oHfk9oQO7x+3hNJa1i7olEK+CmcQ/Bt4j1o31IVLiXL4tYS1fa3gyW3rVkKByyxPSQ9JRNAMB6pdW+Ro1ekNIinlIRAG4aOvpQGJIKkEFJN+Ls/giKqodJLuilIygmtpnOBRFhGrfaOjYk+2+95Vvhq5mbPmCiWXMPX3J2c8IGZvQu/4yrpgymS+CX/F2+rNBhB0vvDdKsMZU0vbQJ93vR1jC7Y7YaaUU2vEIrLp51PcWZNpthgXYHqzFohsB+UvsX3rbnKk90O1eL7GV7ESwAV2DUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by BY1PR11MB8078.namprd11.prod.outlook.com (2603:10b6:a03:52a::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.29; Tue, 16 May
 2023 09:38:31 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::175f:f4af:3803:700f]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::175f:f4af:3803:700f%6]) with mapi id 15.20.6387.033; Tue, 16 May 2023
 09:38:30 +0000
Message-ID: <0117fe92-d1ec-96f9-5ef2-a19082cb3e79@intel.com>
Date: Tue, 16 May 2023 11:38:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Piotr Gardocki <piotrx.gardocki@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230515150015.239205-1-piotrx.gardocki@intel.com>
 <20230515150015.239205-3-piotrx.gardocki@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20230515150015.239205-3-piotrx.gardocki@intel.com>
X-ClientProxiedBy: LO4P123CA0459.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:1aa::14) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|BY1PR11MB8078:EE_
X-MS-Office365-Filtering-Correlation-Id: 2589a14c-f6bd-4961-4540-08db55f14ee2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pfLsyVDW+l9Kl60LF4V98oA5aK4irZK7gtt8Ajuhilq9JbJ0XH/FIqn4jVytA5ll3gmCsYKcF23pmcpB7L5kVnuQZlpgs/x2Q8nPDAtIZmd7DT1wjoVeHdVPjRQ/ms0XO/jMXBZjFg3cxSB+dOrghoVCpzXnDlElt2d875XtrX9kJj7H61axLh8pJVBQ77Rxgs5EH//gcxdECeMRjZw38Re7N8S/xYZWI1Fzj7fGFE6HhdaT1BUKMoUG2GU6c+Be7ndfEwF7CXODRcD1ozrMqGUktIAU6m3WaLAePnjNCP/npl8ukmJfmgwb4mHyIsdcbZPrcId+iO+Cso257GJM3D6Ctwb4yht1mGz806Wm60M/J+gA5J8h+FvXxm8f3p5+QCfsHFe1+3YbcOD4ITyd8SfQhkiE98xvx3SYOFaLtT0vjRD31OpnZ+L7F3PmGAMumIemGiEZJNznoKGzHkbiXypjaqW73JIhee+L2btZPvY0roL29dPjHpCZSd/14c/hPi0H3e+ACfD9kKqAUOvXOFFl+hHWWeGBF0NHo+l9d5Eyls4yLsZvPtK11ZiTAkHDzpomIlwO4NC+Nk3vBgnxVnWhMm1U+HZtAM4fObZsWDXGqENIieM+yjxjPmIeAzGkIevxZ3la/OtnFyPmWUBvAQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(136003)(376002)(346002)(39860400002)(366004)(451199021)(83380400001)(66946007)(66556008)(86362001)(478600001)(2616005)(53546011)(6486002)(6666004)(186003)(5660300002)(6512007)(8676002)(26005)(31696002)(6506007)(8936002)(4744005)(2906002)(36756003)(4326008)(41300700001)(316002)(82960400001)(38100700002)(66476007)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T214M3RmK09iZjlRckhrbXA1VXJUOWtmY3VMZE9ET3BrZmZxWDhlUWtPVXls?=
 =?utf-8?B?R2hQYmRWZG9RR2F4bVI0VzJ5SGtWbjdobmZpSVN6c2FKWEhOOUtQZE52QzBQ?=
 =?utf-8?B?WVN6MzJaYlZXeCtnWU51M3F1SjllNWdoMk9kZm9TellyMlY5QWx6Mm1sZFVv?=
 =?utf-8?B?OVlxYmsxU1ovdHFPQkZUMUwydTg5NE11U2ZwaFRyN0N3bVFpQ3QyNTRUeWl0?=
 =?utf-8?B?L0xHSFRNMnZVVW9ibVpQUW5YZm1hRGI1bVZzRXZFVnhDMFRQRmhWdjYwSnJo?=
 =?utf-8?B?R25CTEdJREFFdXlOM3lYOFRSa013VXo4VVM3VXc4QVZid2JidXI4d29qKzNo?=
 =?utf-8?B?R1dtaG5aVURtOEJLenlOZWUyQkdudGFIZzFZemRCdk5RQ0o0dVFtaGsxeXlm?=
 =?utf-8?B?cmdYajVMeFEwNHFOMVpVQTNEU1UrRC9CSmwxbjgvV1NzcTRqcGRhejZyYjk1?=
 =?utf-8?B?QlIwWHorUzJORFJNL3JNUC9WdURLUkZuNXhDR3ZwTjMxcDRiV1owNHRRQmg4?=
 =?utf-8?B?WC9tOVZDb2xzUUgwN1J2SU9BeVcxczBGcHRSM3Q0d1pDN0tEL2NNOFlOQkNv?=
 =?utf-8?B?a3NHRy9BQzRWaFFybTBjZmRna2RKNXFuOCtQZXJhUzM0RGNpd3FLY1llaUZJ?=
 =?utf-8?B?TS81WWo3MXQ3U3JKemNwaWJ2R2krUm8zRFFNWDhjMUMra3UybVFacUZNSzF6?=
 =?utf-8?B?UGxsTkRXcXNYaGF5RWdnRjV0SzRLSkVmQjNLUUZ5Zk9nbDN0MmdCekRkZ2Zo?=
 =?utf-8?B?aGN0MkFQZGRTdjdSQkxtSEZGTG9WODB6WDBkTlpjRHBpSG9yM0FTNkI5Z1Fh?=
 =?utf-8?B?ZWVNL2JXR0FDSGpTY253Y3BSdWVaNGxBNXVzVG1LbVhLZGt6bXUrSkF0N2F4?=
 =?utf-8?B?L1NWUFpNQ3ptdVB3aXEwVi80Z3NkVWtoYno0N1RYWWlNZjJ0OXFMRGJ1OXMr?=
 =?utf-8?B?MDlPV1E2VWJVcXNKMUIxOVpqSGNVYTU3ZE1FaGpWQ29uK3pFRG1KTEF1ckw5?=
 =?utf-8?B?M2ZPMm0xSTlxOGVBVEpRbDZTR1NjaU4rSWxwaU5ENGFMOFVweUxhOTZ2TTV4?=
 =?utf-8?B?Z2VYR0p0bGQwT1pIOXEvcTF4Mk9qdXptYSs1WlNRQUdLRDF4Ym9hbnZwVzBJ?=
 =?utf-8?B?bXhVdXMxclNySGxIT0h3M25ZWjhURWhOMTdkSkRJNmJBNzNrWWFobTZDNkJV?=
 =?utf-8?B?V1Rtd3NGRU0wV3ZoVjVuZEtwMTI4YUNmNnVhWlpBMkhNa2o0OFFXM0R1ZGtW?=
 =?utf-8?B?U1lDcjExVUVPWTlXKzRZcHVGMG4xNlEvMktyUS9pRzVmeGJWRlFRcTFITHQ4?=
 =?utf-8?B?UmlueWphVFNobDN5QmdIMGJVZTRqR242ZGYrbklhdGVSeEQxU0UyQ1lvcmF4?=
 =?utf-8?B?N0xxSGZ1Y0pPNC9CY2lwbFRTRXhwWHJLaFJ2SUMxVVlyeFhYa0lLN25NSWtm?=
 =?utf-8?B?NWowbkxEMlpBK25wN1NETWFWTi9WSWRtZTFZUGNTMi9rVk5NWWNycGlZS3lq?=
 =?utf-8?B?UVdkbUV5bnVBVW5oM3hjQjdnNzduYmloRnVBTGRlSzVkMUZpMUlra3pKQ2w0?=
 =?utf-8?B?MjRFaFVsSnN0d09oT2ltNWVYTEVwdVFjc0tlM2Q3bXJDUlFJNHZ0aE9BTkFC?=
 =?utf-8?B?L0dmS1RUM3AxU0h3cGZ1elhYTW1xQ1VtamZTbDJJQ2JXVkw5S0Zjdmd6SGlm?=
 =?utf-8?B?eDM0UlpNcDFtaFI1dkJiOStjeVc5dlljL29lamljT3pNT3UrQjhvYS9ZR2Nk?=
 =?utf-8?B?M2NYdDZjeTk2ZUVqZ2pZSjVKTWFHYVdhRkIyWnR5MzVNZWQzNUQ3NEJnRWJB?=
 =?utf-8?B?L2hLVWZ6eWxndkN0SXRnS29CTDEwcWJPVlRGUVZxVlFCQ2dSdkZTVG52ZkNF?=
 =?utf-8?B?dmpTUCtzejhIL0UzcDVxMEttWmdVNG9KZTVYd2tVcUFzYTkxMEJKbSsrc1Zv?=
 =?utf-8?B?RUZNTE1JbGsxQ1JQNDh5UmFsNWdrSzdsQlkvWVc5Z1hIM2U1RzRRTnArY3JO?=
 =?utf-8?B?Z0ZPcXpRWmRBOXlWMWpZOHk4OEl1UTQzOForc2tKcXZkbUtLbGZDZmpuQUg4?=
 =?utf-8?B?Z3c2SlRFc0NxQ09BWHRLcVRBTEcwblMrczJLUHZIcm85UXdxdjhQYXZUOG9x?=
 =?utf-8?B?RW1Ob0Y0c205MnVqSURFZ09mMXl3MHdKUkpJZnR4UFVwNDI2bWN1RHB0WTNr?=
 =?utf-8?B?R2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2589a14c-f6bd-4961-4540-08db55f14ee2
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 May 2023 09:38:30.7426 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MQW9i+nNn5hbOe+td0UD8z3IBw/YNt0CpXXveaYSdLWeo0X7kigph/zCToCGPw4BjzUtnM5YVMdggekpx+tU66DYH9lhquUX4lTt+2MtoPM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8078
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Tue, 16 May 2023 15:03:12 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684229914; x=1715765914;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FPP8M7tOBnDIOA9yPmg2SdnMLxqMw2KW2oZkSEmgFg8=;
 b=kMui6KOZhyq+60SQMk5NHqe4SDbF9dS3+JOjflBcklJ1u0obvCJIcw1w
 0/WUjIiJz+cyCTaGKEAQiRjA8cK087/tdfeuQN/t3e+DVLDyd2u5u5Fa8
 0AyIuoGwO1Q3NGy7Jojvo43l0U6oMCN5xWkxJr5dkv2Kwcko9jwFqkUcJ
 g4GuBFTYP3tJA3wcK8W50oN2ohKPpsQkM/5yoK40ncU9JgceIAk/tUcA9
 j9BlilEvpVPcKbO12GGoHsMefDz4Wgwn4EYIScgn24LQ8nIrcTbuzadoX
 a2oe2zK/D6MdiCnjFou/ep0gjfQuZdbyjNv7FKvpV5fF5WC/b/QGUdlls
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kMui6KOZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/2] iavf: fix err handling
 for MAC replace
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 5/15/23 17:00, Piotr Gardocki wrote:
> From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> 
> Defer removal of current primary MAC until a replacement is successfully added.
> Previous implementation would left filter list with no primary MAC.
> This was found while reading the code.
> 
> The patch takes advantage of the fact that there can only be a single primary
> MAC filter at any time.
> 
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---

You have to add your Sign-off too, please repost.

[...]

> -		/* Always send the request to add if changing primary MAC
I think that there should be a comma at the end of line here

> -		 * even if filter is already present on the list
> -		 */

[...]

Ack
--
Przemek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
