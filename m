Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E7BC510AFC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Apr 2022 23:10:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 540C941719;
	Tue, 26 Apr 2022 21:10:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zjwYiRJSrSfV; Tue, 26 Apr 2022 21:10:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CA21B41695;
	Tue, 26 Apr 2022 21:10:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 48BFC1BF59C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Apr 2022 21:09:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3566A830B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Apr 2022 21:09:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HMkG0f3rDm3u for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Apr 2022 21:09:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ABFB9830A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Apr 2022 21:09:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651007394; x=1682543394;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=6n6kNw4R+iSlrj/uQabLCg5v6mvanUdJX+G8NSLrcNo=;
 b=I8UFbvq8jkMgf6ykWHkGEheqQxdWOmy26JwaqpYyPfTKeEefCg1Zxzm0
 1yo6/8hpgUFNAGOQQ//E0R8dmZxieV/sjhb6pik2qMDRDYU/nDP8kFRh7
 7vz179n8f6X/oAh+M0Bxd/Im/4kYQtJILluF1H0Kmkbni/VG76cWLRwr8
 PoL2e5MWrsoQmIw2Kvgj9d7RyuIMLqM/OIi22W2Qm66z7j3Ostsl5f/hi
 91tvh7z/lXGnQiEp4qg3oFZM+4jR+KIgmZeHxGJy4kEeAzdm1VFWlaMGn
 iDpf3Kfn1ttXbEumEICe/4fz8lEnRDzTQmngKxpNRQ28o9XR62ki8AYa0 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10329"; a="246287818"
X-IronPort-AV: E=Sophos;i="5.90,292,1643702400"; d="scan'208";a="246287818"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 14:09:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,292,1643702400"; d="scan'208";a="660878673"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 26 Apr 2022 14:09:53 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 26 Apr 2022 14:09:53 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 26 Apr 2022 14:09:53 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.48) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 26 Apr 2022 14:09:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JEd7dRPamh1StHeYNPlMpXWJr/nUoOfdqmvZKYwtkw/LCfj5QNS78pWV8l33cIdWnbFoyDGsznwSm/bFj7gFeDrDOjn+a5+s9OIOdZZaLTUxxnrIIc6s2zlvDgD2bXANL2mIO3bgzL2VYdmdrzh4WQcj8DKq23Y0nQgA1AOcSdd5HXm8pND7Cf5YZ3TKui+AZyLx3ZfATniXGUsF+ndE8V6JeJge1xtbKj6GdFltnqDP9/1jN/9Fk3abXxsrxV5Qbrttn3k2re64PeL10Nh5PmMOklHpriZb4qxU3RiGmCpAW22nypZLLLQ70y7DDd+ilHix+iBuqpbx8J7MdE0dyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bfN5pxyIoyaMq69JlIe7Cc/gopWLo42kWE2Rvj1DWTk=;
 b=KAvDTX9r0YmNDK28XUL0RlUXlpYI2TxTaVDekwkpvvmH9sXk18zn91TQNhYVQM24HzLOIvu+8SZFlGxkQD0tsvJCwI5EunrYAztw4q5iPaF067CyyGOOHkTNPSouhBFVujtxtiO0G2EiGzs7eefN701HLodxy3JxIr0KyZc3WZuPk8SECcA9zRp+Pl21U5Y5yqVnMPrPCapCT+TMuFAX4yEvwU5QSEtSI7L9lkJRTp+voWYoD4yvWT/LDzGkDiBIy9g4P7IfsIQQlrNLcazlkvcUTb8qZhwukH40Cv+XnIBtYhmqCPTBREsOeNdo30RFF/H1fXy8KtR2OMDz3KKbLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by BN7PR11MB2788.namprd11.prod.outlook.com (2603:10b6:406:b2::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.13; Tue, 26 Apr
 2022 21:09:51 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3%6]) with mapi id 15.20.5186.021; Tue, 26 Apr 2022
 21:09:51 +0000
Message-ID: <b04bceb5-3523-a034-b99b-c4acb847bc64@intel.com>
Date: Tue, 26 Apr 2022 14:09:49 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220426123556.3041070-1-karol.kolacinski@intel.com>
 <20220426123556.3041070-3-karol.kolacinski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220426123556.3041070-3-karol.kolacinski@intel.com>
X-ClientProxiedBy: BY5PR17CA0006.namprd17.prod.outlook.com
 (2603:10b6:a03:1b8::19) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 01f09727-aa63-4de5-4dc1-08da27c91a80
X-MS-TrafficTypeDiagnostic: BN7PR11MB2788:EE_
X-Microsoft-Antispam-PRVS: <BN7PR11MB27881C7B1CFD5A43237506F8C6FB9@BN7PR11MB2788.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LMz2El+4wsQh7ylB39rjj8l7hHjAddvhvUbSMf9XVKdO3Rsp9K+pdfUitqyD8oOpOfOoQcXM+MPYCOFXyUoSf0SOAk4M85GlOnDCG8x/VMXXoH6LLpfLBqM8XMp+i39CIt0zgFMWKYPl4vWmJs941XUY02kTC2hGWuOhS8QSzf3JY+uT4PVRcHFeA6mmq1R/QC6VmJR9kbFmi74gO3B861V8tEwQyvynKZTe8RbFuKcMJo+oQEBvShe8m4AapwGq6eicP/j6wLqW610oLRw+iUmsUQCje5HKmfgZpajMu0sgXt2To49d6gpt7C4TKryGPWDrXagkHMS/eW2X4OAISHVA0dLM1Vx2p9r2lLgPLeSCVLHiXxm71Kxheu2hWs/pG/+M3fCpgt1VlkC5jBCvl/a7qZ+O35/Cmr2FdVdnXnqyoIPc8s1L+sxn49Iuozo7gfhhZyZczOlxaK7j006NRkzC/EfxsZlzBtE4CcIv54AEt4Zs2to6PIKN/EGYIfRSe4v0h/kWa6DDwdgWqGMzcAZ8KZOO6vpxgmmV1mQ+qWVHGZSaQmdu1dkFiBgh74GtRXwPK8Bpe45w6rcysE61fWKSjrEKPvNDTEFlkKy9s23QDiGRZhXl0oA/vEqsyXGKi63/bR8qLtlcnlpqhW21qUftGqkwN6W++uth5CVs+fCLPE+YVAYSWXMSxVupiRIZbD5caioWSCVFELOkEvfv/rtGcPI8bH08sw/vAdAdNMCCWhEBrxfPSwuk6ZhzniEs
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(186003)(5660300002)(508600001)(82960400001)(86362001)(66946007)(38100700002)(8676002)(31696002)(66476007)(6512007)(66556008)(8936002)(2616005)(83380400001)(2906002)(6486002)(26005)(316002)(53546011)(31686004)(6506007)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WWx5RE0rdTA5bXdjaGhGQUlZZ0JaYW5SMHNQU04zWVZ3Q1ZJNHJWUHFRcWUr?=
 =?utf-8?B?NW1LNjFkRUhwem1MVUVraUJOZGlKeGVaZlVrdlQzVDZnWWkyRC9ualczckor?=
 =?utf-8?B?aXJpa2ZIUlBPbHJDQ1NINlRFcEw4OTBpY3VwMG5RN0Rlc1hVUVU1N3Z0ZjlT?=
 =?utf-8?B?d0VzRE9mVmhpaEVyc1dydDIxcGxDcW5ZMXphNHhuMENBQnJCZzhUMjc0Q1Fk?=
 =?utf-8?B?SHRGV0o3bnA2RHlFeWkzbnYrN0hZSzNDNHIxdmJNM0xKZjJTRmlGZ21HNU84?=
 =?utf-8?B?Vmo5K0JwbUl2L1hYdUQyNkZjd3JJTm9KMU8ySkdNVlBJVDdxQUlwV2lpMkkv?=
 =?utf-8?B?TnZ1WjNudmUzSnMzd2FhUHpGanNoaitONzhiVVM4cDNyYi96Y0tHazVvNm5B?=
 =?utf-8?B?aHNKVkhjVGQxNE9rUTFvc24rSUNZYi9scDBCYUVseXkyZFNNSjlFd3d4dDRR?=
 =?utf-8?B?NkZlYXRuR3QyOXl3OWVsLzFLNlNodlFReDBtWmF4WEo2RWhkT0hMTlh2UEJN?=
 =?utf-8?B?MEZINVBsNWRzMU9KeG94ZUZCS1RESVhuOW9IenBDblArNkJBM2NaVytxYnFS?=
 =?utf-8?B?ZDdGeGVtekIzcWdDZWU1Tmh1ZDJxcnhPRmJ6MjdUUy9DZDExWFNpRllzeW4y?=
 =?utf-8?B?SkZ6NlJTTUVXUjFZU2krd0RWek11MmFBdU5ZUnJ2ZG9NQWhranRkUHQ2ZmFD?=
 =?utf-8?B?S1R2NHJmU3Y1WERybXRHVngrN1VObnliNE91SndpeUE3NGJqMXFNZlFnMHp6?=
 =?utf-8?B?dEtQbThuNWdtS2NoUldZTGtuanV6WXp4ZFZwU1RQeHpBRXk0M04yZ1ZaamlC?=
 =?utf-8?B?R2RlcTczK1lDWlhPM0QxeHZzVnBldjk3dmZSQmRXWFdHb0ZrYlU2d0RBSHdt?=
 =?utf-8?B?V0NTYnpGT0tUMitGZ28zT0grNXNjbVlrcXppQloyWWJaV2dYSEs0RkVDRVFu?=
 =?utf-8?B?bE9kTW51U2pHaFpBM1VlWllPK3l2SUplcWVhem05eFNVREhHSFBnaGVwcU9C?=
 =?utf-8?B?U252aUMyZTZWUlk2SzlWSjZnZml1YUQybVV2Uml2WW1Mb3QyK0FqNTJXN0lD?=
 =?utf-8?B?UHJ4b1BURWpKbytTVHZVenVXNHd2UWtuYTlYQzluRlFac2NPRlRpRVdvSzNX?=
 =?utf-8?B?dFowOVBkbWsxa242WDhuSXI5bmMxbVFUUHBmQTgxV2FOVkQzSWpCYnN3QUFL?=
 =?utf-8?B?d3NRaWMzaFhYQjdYOUc5L0dRRWVsVUcwVExUb2xZSVFCVldwTFVRM1hMbnl2?=
 =?utf-8?B?NEdaOHc3NWs5UThDS3M1OTYxbzltRlNlYXpQbEdrWGVMWlpDbFd0bUFSblZJ?=
 =?utf-8?B?NGoxUnArNFVHaFFvYTRrakFLZ0p6VFJVM1VMMEFmVlFEYUltS1hlcVV4RTVP?=
 =?utf-8?B?bmxITDc5MDF6dlQ3S1BhMXRORFNvL3h5M3M1OWlJa1hOSlU2NmFVT1RpSUM3?=
 =?utf-8?B?eEdpTUlQS0tsN0g5aHdvYkUzVmVWWjBJajJRTG1INHBBNUFYVHpKOG14b2FP?=
 =?utf-8?B?RDJmejZOS0NKek1zSk5RNzZEbWk3N3NvdjdDUUtGZ050bTVHQVBzamZiTjRk?=
 =?utf-8?B?NE9MMDQ4cnhuM0pUR0MrN1JhZmJLS2YzOUxub1IwQ3QxNDUxZjVEQktLbHJq?=
 =?utf-8?B?NzVTL1c2b09JV1puWWtVaU1XcmNqVmlTdnozbWJnZlpOb3NkYlFPUElSeXZn?=
 =?utf-8?B?UU95NmpoL0ZuUFh1VVRRNklEdmM3TDRmVXk0Q1VNQUdDdE9nQVBwOUZWenA3?=
 =?utf-8?B?MFJWazlyUG1TQU5BMDNPK2xzU2FyNUpwUjhEZ1BjelhNM1ZEZExkK3lycy91?=
 =?utf-8?B?OEFEZlRvdWczQkVoa2FnaEx0STY0RGdQdk1JTnpRYmVHUmcrYmxlM2RkcXFk?=
 =?utf-8?B?V29zeTc3TU05NlVSL0x0VnMrMDRVaFBrMmM0b2R4WEZlWjJURGladC9JT2k3?=
 =?utf-8?B?S3pNRU9SYUJHR3BueHhZNTY2bXdyU2xyTlZuenBLR2crdU9hS214MFlWQVNx?=
 =?utf-8?B?ZXFkN01TbzBsSmtKY3ZDWGVWekZ5MkFpVlZueUQwcVg3enhQS0h3ZXRBWEZE?=
 =?utf-8?B?eU9vRGhpUVBBZnlRMTI1ZWQ2UUtsZnZKOGoxN3l5YmhZVVBtRmt4ZVppSlFB?=
 =?utf-8?B?cVRnVDJqOVlONkl1eFVOZWJRQUZDekJQaEI1bkE2azRUV2t0S2NhTDB3WUxn?=
 =?utf-8?B?WlNPMnJvM0RRYkZEdEdybDBsU3pwbEUrUENnVWw4WlZLU2poT3AwZkx0TmFD?=
 =?utf-8?B?M2FoZVN6ZjZZYU5RRFdnZjQvSUpqS09wMHJEQVNxU0drR1JHdzdQeHdReFJD?=
 =?utf-8?B?Nk1PazhBL2ExWmEreWg3ZmxGc2JzbE1iRDFQUUhrbFRmL1E1YlA5U0lNaXZx?=
 =?utf-8?Q?TBMDvYyo3mkebdbk=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 01f09727-aa63-4de5-4dc1-08da27c91a80
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2022 21:09:51.4434 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ol88QVYfgUemNyeX2AZzNhiHGBnzFk36KJmQjcf+UhtHVMaOqT3SQlDp5szN7o7KzIauErMft3mRSeDluexGznCTdGmMsf3XzMl4errbsr8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2788
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v3 intel-next 3/3] ice: add write
 functionality for GNSS TTY
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ck9uIDQvMjYvMjAyMiA1OjM1IEFNLCBLYXJvbCBLb2xhY2luc2tpIHdyb3RlOgoKPHNuaXA+Cj4g
K3N0YXRpYyB1bnNpZ25lZCBpbnQKPiAraWNlX2duc3NfZG9fd3JpdGUoc3RydWN0IGljZV9wZiAq
cGYsIHVuc2lnbmVkIGNoYXIgKmJ1ZiwgdW5zaWduZWQgaW50IHNpemUpCj4gK3sKPiArCXN0cnVj
dCBpY2VfYXFjX2xpbmtfdG9wb19hZGRyIGxpbmtfdG9wbzsKPiArCXN0cnVjdCBpY2VfaHcgKmh3
ID0gJnBmLT5odzsKPiArCXVuc2lnbmVkIGludCBvZmZzZXQgPSAwOwo+ICsJaW50IGVyciA9IDA7
Cj4gKwo+ICsJbWVtc2V0KCZsaW5rX3RvcG8sIDAsIHNpemVvZihzdHJ1Y3QgaWNlX2FxY19saW5r
X3RvcG9fYWRkcikpOwo+ICsJbGlua190b3BvLnRvcG9fcGFyYW1zLmluZGV4ID0gSUNFX0U4MTBU
X0dOU1NfSTJDX0JVUzsKPiArCWxpbmtfdG9wby50b3BvX3BhcmFtcy5ub2RlX3R5cGVfY3R4IHw9
Cj4gKwkJSUNFX0FRQ19MSU5LX1RPUE9fTk9ERV9DVFhfT1ZFUlJJREUgPDwKPiArCQlJQ0VfQVFD
X0xJTktfVE9QT19OT0RFX0NUWF9TOwoKSSBiZWxpZXZlIHRoZXJlJ3MgYSBtYWNybyB0aGF0IGNh
biByZXBsYWNlIHRoaXMuLi4gRklFTERfUFJFUD8KCjxzbmlwPgoKPiBAQCAtNzQsNyArMTY2LDcg
QEAgc3RhdGljIHZvaWQgaWNlX2duc3NfcmVhZChzdHJ1Y3Qga3RocmVhZF93b3JrICp3b3JrKQo+
ICAgCj4gICAJLyogUmVhZCByZWNlaXZlZCBkYXRhICovCj4gICAJZm9yIChpID0gMDsgaSA8IGRh
dGFfbGVuOyBpICs9IGJ5dGVzX3JlYWQpIHsKPiAtCQl1MzIgYnl0ZXNfbGVmdCA9IGRhdGFfbGVu
IC0gaTsKPiArCQl1bnNpZ25lZCBpbnQgYnl0ZXNfbGVmdCA9IGRhdGFfbGVuIC0gaTsKPiAgIAo+
ICAgCQlieXRlc19yZWFkID0gbWluX3QodHlwZW9mKGJ5dGVzX2xlZnQpLCBieXRlc19sZWZ0LAo+
ICAgCQkJCSAgIElDRV9NQVhfSTJDX0RBVEFfU0laRSk7CgpTaG91bGQgdGhpcyBiZSB3aXRoIHBh
dGNoIDE/Cgo8c25pcD4KCj4gQEAgLTIxMiwyNSArMzA3LDEwMCBAQCBzdGF0aWMgdm9pZCBpY2Vf
Z25zc190dHlfY2xvc2Uoc3RydWN0IHR0eV9zdHJ1Y3QgKnR0eSwgc3RydWN0IGZpbGUgKmZpbHAp
Cj4gICB9Cj4gICAKPiAgIC8qKgo+IC0gKiBpY2VfZ25zc190dHlfd3JpdGUgLSBEdW1teSBUVFkg
d3JpdGUgZnVuY3Rpb24gdG8gYXZvaWQga2VybmVsIHBhbmljCj4gKyAqIGljZV9nbnNzX3R0eV93
cml0ZSAtIFdyaXRlIEdOU1MgZGF0YQo+ICAgICogQHR0eTogcG9pbnRlciB0byB0aGUgdHR5X3N0
cnVjdAo+ICAgICogQGJ1ZjogcG9pbnRlciB0byB0aGUgdXNlciBkYXRhCj4gLSAqIEBjbnQ6IHRo
ZSBudW1iZXIgb2YgY2hhcmFjdGVycyB0aGF0IHdhcyBhYmxlIHRvIGJlIHNlbnQgdG8gdGhlIGhh
cmR3YXJlIChvcgo+IC0gKiAgICAgICBxdWV1ZWQgdG8gYmUgc2VudCBhdCBhIGxhdGVyIHRpbWUp
Cj4gKyAqIEBjb3VudDogdGhlIG51bWJlciBvZiBjaGFyYWN0ZXJzIHF1ZXVlZCB0byBiZSBzZW50
IHRvIHRoZSBIVwo+ICsgKgo+ICsgKiBUaGUgd3JpdGUgZnVuY3Rpb24gY2FsbCBpcyBjYWxsZWQg
YnkgdGhlIHVzZXIgd2hlbiB0aGVyZSBpcyBkYXRhIHRvIGJlIHNlbnQKPiArICogdG8gdGhlIGhh
cmR3YXJlLiBGaXJzdCB0aGUgdHR5IGNvcmUgcmVjZWl2ZXMgdGhlIGNhbGwsIGFuZCB0aGVuIGl0
IHBhc3NlcyB0aGUKPiArICogZGF0YSBvbiB0byB0aGUgdHR5IGRyaXZlcuKAmXMgd3JpdGUgZnVu
Y3Rpb24uIFRoZSB0dHkgY29yZSBhbHNvIHRlbGxzIHRoZSB0dHkKPiArICogZHJpdmVyIHRoZSBz
aXplIG9mIHRoZSBkYXRhIGJlaW5nIHNlbnQuCj4gKyAqIElmIGFueSBlcnJvcnMgaGFwcGVuIGR1
cmluZyB0aGUgd3JpdGUgY2FsbCwgYSBuZWdhdGl2ZSBlcnJvciB2YWx1ZSBzaG91bGQgYmUKPiAr
ICogcmV0dXJuZWQgaW5zdGVhZCBvZiB0aGUgbnVtYmVyIG9mIGNoYXJhY3RlcnMgcXVldWVkIHRv
IGJlIHdyaXR0ZW4uCj4gICAgKi8KPiAgIHN0YXRpYyBpbnQKPiAtaWNlX2duc3NfdHR5X3dyaXRl
KHN0cnVjdCB0dHlfc3RydWN0ICp0dHksIGNvbnN0IHVuc2lnbmVkIGNoYXIgKmJ1ZiwgaW50IGNu
dCkKPiAraWNlX2duc3NfdHR5X3dyaXRlKHN0cnVjdCB0dHlfc3RydWN0ICp0dHksIGNvbnN0IHVu
c2lnbmVkIGNoYXIgKmJ1ZiwgaW50IGNvdW50KQo+ICAgewo+IC0JcmV0dXJuIDA7Cj4gKwlzdHJ1
Y3QgZ25zc193cml0ZV9idWYgKndyaXRlX2J1ZjsKPiArCXN0cnVjdCBnbnNzX3NlcmlhbCAqZ25z
czsKPiArCXVuc2lnbmVkIGNoYXIgKmNtZF9idWY7Cj4gKwlzdHJ1Y3QgaWNlX3BmICpwZjsKPiAr
CWludCBlcnIgPSBjb3VudDsKPiArCj4gKwkvKiBXZSBjYW5ub3Qgd3JpdGUgYSBzaW5nbGUgYnl0
ZSB1c2luZyBvdXIgSTJDIGltcGxlbWVudGF0aW9uLiAqLwo+ICsJaWYgKGNvdW50IDw9IDEgfHwg
Y291bnQgPiBJQ0VfR05TU19UVFlfV1JJVEVfQlVGKQo+ICsJCXJldHVybiAtRUlOVkFMOwo+ICsK
PiArCWduc3MgPSB0dHktPmRyaXZlcl9kYXRhOwo+ICsJaWYgKCFnbnNzKQo+ICsJCXJldHVybiAt
RUZBVUxUOwo+ICsKPiArCXBmID0gKHN0cnVjdCBpY2VfcGYgKil0dHktPmRyaXZlci0+ZHJpdmVy
X3N0YXRlOwo+ICsJaWYgKCFwZikKPiArCQlyZXR1cm4gLUVGQVVMVDsKPiArCj4gKwkvKiBPbmx5
IGFsbG93IHRvIHdyaXRlIG9uIFRUWSAwICovCj4gKwlpZiAoZ25zcyAhPSBwZi0+Z25zc19zZXJp
YWxbMF0pCj4gKwkJcmV0dXJuIC1FSU87Cj4gKwo+ICsJbXV0ZXhfbG9jaygmZ25zcy0+Z25zc19t
dXRleCk7Cj4gKwo+ICsJaWYgKCFnbnNzLT5vcGVuX2NvdW50KSB7Cj4gKwkJZXJyID0gLUVJTlZB
TDsKPiArCQlnb3RvIGV4aXQ7Cj4gKwl9Cj4gKwo+ICsJY21kX2J1ZiA9IGt6YWxsb2Moc2l6ZW9m
KCpidWYpICogY291bnQsIEdGUF9LRVJORUwpOwoKSSBiZWxpZXZlIGtjYWxsb2MgaXMgcHJlZmVy
cmVkLgoKClRoYW5rcywKClRvbnkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFu
QG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtd2lyZWQtbGFuCg==
