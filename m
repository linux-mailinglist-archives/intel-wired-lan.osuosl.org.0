Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A13587861C4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Aug 2023 22:52:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3194A82119;
	Wed, 23 Aug 2023 20:52:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3194A82119
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692823953;
	bh=SDax7/cU72hwFyegDiYQCRKvl+lW8OUWBKUqlykA2Xc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2XdFuXtP7OiK/9PWyWqw1X9XVQr7pxi5C/66/qY4SBk2qGEkzdQJujs67a8m5kF88
	 7VKnrWKF+ZZpAUGl9rklePQj2NglhGkjDheMHc/7DrEwvMA14NwAONpLDgR7vP5Bjj
	 SR7isLuZK4VAxTE43oFrXEe2cg1KDyCj+4ymLkCT8/q0yoccTpjIWJGfg7nGYJS6Un
	 87iNWEX70ZrkY8RLa9J6Vmks/KKH4zLl1c4JMAs6aH6mKFE7tB8XsiRSO4mJfwY6Tq
	 LPNJ5Sz7SjpDmaAp01cCvF7ZiuXQ/6SkbysthStHs7/y2nbIxPyO0I9TpDj2bVkhRg
	 IWws9MFx2wZjA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O_-NuE1qcGpi; Wed, 23 Aug 2023 20:52:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E747E82118;
	Wed, 23 Aug 2023 20:52:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E747E82118
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 41D121BF2BE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 20:52:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 138034057F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 20:52:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 138034057F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TyTNjCnCZp5Y for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Aug 2023 20:52:25 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CA61B400BF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 20:52:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CA61B400BF
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="440623088"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="440623088"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 13:52:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="771855827"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="771855827"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP; 23 Aug 2023 13:52:23 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 13:52:23 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 13:52:22 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 23 Aug 2023 13:52:22 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 23 Aug 2023 13:52:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VkOAJXkQv0KHSF3urkNuQ6DRJJWw+up6TglqlW9aoX4zf0IpZLm6zBTp2gLwNzMIZWEJY+OrmMCi42KxoL4KNuTUWf2iyBvPunuXTB5a+my8L2SGKgAy2I//OxN5ERhNQvBCAw+heM2oOLYyaMAt38GfbNhvg9MdkhLdAIYHLXDJRb7jd5izTlix04Vfm+qCAq1UyPxZsSSBqhsJpPlA1Ylm/nAVyB38kfFHVGwhOH3LzGGFE1QoJNCwnhtl4yy0qA4CqK1CgMxy4xV3yN29L25rtMnLs2aZFEhIO2t9OCcrkpImrf1hd5eQqFIls7M5no31ndO+qnhuSaHIX7m6DQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U4BCxR7Czmaa8STqxvex66uO4Vz4E7KQoOMva/MnOFc=;
 b=eEIJ+lHGpN7yEkhd8Hhb23J+d5C86lum7JMYPH2edrvdfA/q9vOeoKe8S4r8u8NgrWz1PHu4ixivcbh9YICITQNbaBsXfx55IRcQsIBMK+aX7SBYGuWLbCNiZgazOUq1Ql9tYGOTxOqqHz5I0PCmt9jIjw4YNpku6YRIGQvXZI/Q4hPOD8a/NCgVn1o5iwDbKFuYYByq1aYAYcp85WS2wZ7DEdF64MCty02PPMDbZSb/DLLmdZkkcXpfVqPZL2463zLRN5LG2hpfYNwtsJw6DshH2i+3K/Q3Kqt/dLHb2TFbwl42A6MnS0PyBLAI/fZNkqyCm6b3qS3lsEn3m+uFIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by PH7PR11MB6980.namprd11.prod.outlook.com (2603:10b6:510:208::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Wed, 23 Aug
 2023 20:52:20 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::c45d:d61e:8d13:cb29]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::c45d:d61e:8d13:cb29%3]) with mapi id 15.20.6699.026; Wed, 23 Aug 2023
 20:52:20 +0000
Message-ID: <33c1819b-7c26-ea3b-a8a4-9b14cde425d5@intel.com>
Date: Wed, 23 Aug 2023 22:52:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: David Laight <David.Laight@ACULAB.COM>, 'Kees Cook' <keescook@chromium.org>
References: <20230816140623.452869-1-przemyslaw.kitszel@intel.com>
 <20230816140623.452869-2-przemyslaw.kitszel@intel.com>
 <1f9cb37f21294c31a01af62fd920f070@AcuMS.aculab.com>
 <202308170957.F511E69@keescook>
 <e8e109712a1b42288951c958d2f503a5@AcuMS.aculab.com>
 <3f61b3bc-61d4-6568-9bcb-6fd50553157c@intel.com>
 <8c5fcd66086a4354b30f15dd488a9fe5@AcuMS.aculab.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <8c5fcd66086a4354b30f15dd488a9fe5@AcuMS.aculab.com>
X-ClientProxiedBy: FR0P281CA0207.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ad::12) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|PH7PR11MB6980:EE_
X-MS-Office365-Filtering-Correlation-Id: 3a3d53a5-083f-4670-86ed-08dba41ad7cf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ykZl8xyPxKfJFykcXMhQdOOTpthLwhH9CcnlDpYwKUVxrBsnH17HyTSWgGhwuKNOz+zua67zXpX346q1AfaP3wy04bjm4endxtIGWDi+cL9I2ArYmH74XfdRaE83uQEzL/DtAXrYeT5ethCaGCIX6cnWUzLuXaWhsuE5vMaDiieyxsxvQAd4+dByQWWqLK1dBSS7Cu5EhwHZ53YY3lmO5d3hPqUav3kPf3/Z28VuWIoDl0PvuScuUbiS1hEnM2Yy1fiDwG5OK9ZRmSnELHYVtTtSJaR3n/GJthAZkTuMVERI5tHmksqdnSN9TqPhAE+Hz9WNk8TcPOAoYk4oR9C+YCZcvCfvxr0eWOO/huU3yiMS3VbwNDMbuHP0yZUO0c7Rqu5vvebZ3V/sZcgV2OROVQ7fvxuYB5dqvE7baN+TVdlHeAjSFV5MK7k6YEmb5sFdcoU9UnHqFUi7fTD1ORZgq2y4pIK2+xN9gmbb3caq/DTrdaLqkcsBpbpPLgMBvF/yZR8kql6CqJziRMqPujoOmEyUDhsheLfwosXNVdYacwQC1bKCwa7B8aRa5haXKBX9X7SzcwNz8uAfpPZQm0QafLd8YJGP2opid4fcUhuCPI4ESzgEckcORHnIe5pNTs/iMPgJo4HY1VGkTIp/CypzxA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(39860400002)(376002)(366004)(346002)(186009)(1800799009)(451199024)(54906003)(66476007)(66946007)(6512007)(316002)(66556008)(82960400001)(110136005)(8676002)(8936002)(107886003)(2616005)(966005)(4326008)(36756003)(41300700001)(478600001)(6666004)(38100700002)(6506007)(53546011)(6486002)(2906002)(31686004)(31696002)(86362001)(5660300002)(26005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UmtkSVhpN0E5cEJEa3hXOEc3VXNKZEM1bDF0bVJ4YlREMjE1M0JmU0VXL2ZF?=
 =?utf-8?B?Yk43N1hFcWM5R3VpdWxMWkhRQzdzMUZuSVhvTnFxOWlGSWtGUHlTRXUvZU1U?=
 =?utf-8?B?ZTg3bGJMZnpPYmdrNjkwVXJlQk9pSXh2WkZvWnBwZDZYanBEdUs4TFhid2Ex?=
 =?utf-8?B?bjRQQWZiYVFFQ1RiUlpYYmMwTHB3MG55N25UUzhkU1dXa1NlU3hCdUFvR3BE?=
 =?utf-8?B?bHFUODJhOGNONktiVGI0c0xSbTgzRE9wRjV6MjBtK0VxNlJML09QSXBMMXow?=
 =?utf-8?B?Z2QzVkZ3bkY1aktaak96bXFNVUE0SkFMajZPL2N3aGlxTmtqQTY2OWJnWk5X?=
 =?utf-8?B?VzFNSEo5MENuU3NLZ3FHNkhGMTBtaFZ3UVZ4Y29jclJNcnBpd0p1ZjZYOFlK?=
 =?utf-8?B?L09vaHowUHNlcEJ3d3MzRDVveGQrUEhTMG9JejdxajhiYW1OOXhZY3pyeEtv?=
 =?utf-8?B?UmFhaE5HbnJHdVFrSUNHV0lYQTFWa1ZVVHl6ZUJvL2dPN1ZJRExDR2c0ajB1?=
 =?utf-8?B?dkZpVk1XamQ4NFNwR2Z4VkdDVjVSZlRRNGgwc3BXbDZxNkNrMWx0QytoTExo?=
 =?utf-8?B?cWc1am9mQ1krTWovc3JtN0E3ZkdjK0dXNkd5WmE0dTluTW1xM3lBZFhYZGhO?=
 =?utf-8?B?bzc0VTExSFNyTE9sRDdxQXg3d0ZTMHBqdTcwYWd6My90NmdGamxsL0RZNzhm?=
 =?utf-8?B?RXNPTFRCdWJFZ3pFN05zZ25ZM0xsVFRZWVhlSWFrOUg3dHJyWEI1RG1KM1Ev?=
 =?utf-8?B?cjYxSVF3YUhDekFCaENpcEpyWHNnbDI2L211MDRZZWMzU2k2QTJSeWVtMFZM?=
 =?utf-8?B?WDRnZ2U2U3ZucW1Wd2Nkd05PRmxDd3dWZnp4eURUaWM1MjBpSCtBdlUzbXFS?=
 =?utf-8?B?RDE3RGNMVnlrYzZmbkM5UlJHckR2Rm9kZ2tHcE1uVG5HOXIxcWR4NjViZWo5?=
 =?utf-8?B?TjNJemU3alg1ajAvU245YVdKeGd0SjVjemhqRXI0SmxtL2ZUeTJERXp6RnMw?=
 =?utf-8?B?Z0w4eDFLUXhXdDlRaDVTd08xNC9lSlgvSW5RVU5DQkl2TDlkY3FueU5HRG4y?=
 =?utf-8?B?NW1YUGFib1o5TFpuMDJjVnF3dWU4VFpNRVNhRzVhUjJkK25BMjRXVjdJT0RK?=
 =?utf-8?B?dnJ6KzNsS05Wdy9RYmV2Z2xPVGsvekVKbFNLdlhyZk9jcDlVK0xaUExGV2Rl?=
 =?utf-8?B?QmhmNzJ4M0w0YWxNSHA1RFlKYXgxVzY2TWZFalI2OERaYjkzUGhRVXIxd1RZ?=
 =?utf-8?B?V29oZ0FZZm8wM1VJa2o4NVlpOU1IU0lJVnM1OWJQTUtWTVgySUtIK2NIMnpi?=
 =?utf-8?B?Yk1VMkZHRzRsc2RwWk1zWXY4Zlp4MTAwU3ZEWDZjZkVrdDBJN2wxSHAzSWJU?=
 =?utf-8?B?ckZEcGpOTGUzSmFuR2phcGlINlU1Y01oUm53WVA2MTFCcDlFZUtZcjFJZzQ0?=
 =?utf-8?B?dlZJNXpNQWdNNnlZbmlOcm1YRTJXZ3dzVVI5UW5CLzd2d1ZvYlU0S2lEN0J1?=
 =?utf-8?B?dW1qaEc5UDNyMGFSOXNOWkVZK2o1SUJPVThSYjRTdVFCVUdYbFh1NXZnZjN6?=
 =?utf-8?B?TmlwTWZNYzFBbUdLaUNnK1NyRFRaVnhCZ2hiYlQ4TFV3QmlmRXp0bkhiZVM4?=
 =?utf-8?B?TS90SlpSbmVvLzBVRWFjbnhNRXFTaFBBcHNDbFowNDBKa2hveUlqaFpKV2g4?=
 =?utf-8?B?cHIwelZGNHZsMFdDSkV0YWJDSm1YelU5YXk5d2NYbGw2ZEVqOVRDODVmbk05?=
 =?utf-8?B?WHZTSXEybCtCcnZ5V3VrMUNaYjVORW5sS2hkbjFnS0FoT3JaakZZTGFFbVZU?=
 =?utf-8?B?clZNOURDZ1kwWW1pTllvSHFTb0lSdEh0QlJQU1BDN3ZHRHBZL2tUeHBzY3J3?=
 =?utf-8?B?ZHEyQTNENC9kWnFycXI3cTZrZUg5V2ZnS2pWQ1JIUXl6UXpzUVFTeG1GVE9y?=
 =?utf-8?B?YWczejlwUHE0bHFuUStacnh3bU1CYkZOMTlrUEVwd0UyYzFTT2Rybm1nOUhQ?=
 =?utf-8?B?dXZLQlh3VW5seUZKdjRFb3k4NEpkN2kvU0FVZjhPdy82L1JoYTBlZVZpc3BZ?=
 =?utf-8?B?dGhieGF0RHd1RkFlekZrNTdvZTZCV3VkcE5hM2t5K0JLV3dIdHNGb2hiTjEy?=
 =?utf-8?B?RlBpVVFGMklPcWJVMjJpa09JcmdYSXU5elBqaElRd1hoK0JtWjQwK2tMaXVH?=
 =?utf-8?B?NkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a3d53a5-083f-4670-86ed-08dba41ad7cf
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2023 20:52:20.6573 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0f3y8yjQSyxkHDeiVJYKEVMg5meEmb1/Rv1f7fD0iPKtbtrl9ay6O/w6JEncJO0YK0LT1hAbMTgd9GKRJIiJtAstyaK6+Mldrer/faeW+vM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6980
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692823944; x=1724359944;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=S/ag/4pvJ8z6I+fmEqJeaf1aOv3+u16/DPJHGWTFhGg=;
 b=NfXCozficnVeAHAkzPdaSVhf0N7f0JDz+8aSAsnXtg3/uKohC27sI9pQ
 UFmM9/He8rMJySxhQ+SxoH1ylE4giz5B/gYeZSJhDvDdlqsMRAahvHATW
 oTsAspg17CDcMUdHIDMkYwsOfwsP0MRRQjRB0UIYVtenIa6Qfn/O+HaJk
 3t/4CM53T9Cmsx09v/XnjTaJ1qzI3jgm31dyt56XM8GhhgW6JO3qCIM6B
 5uy8DX8n7vIJdcpQ72J8HEXRJUUkKNQCET90SA1hLKu2h4q47K8Cw+6RO
 GsVzGKCaoT6Xvl2Fz8PMQgClq0D+CDnKRs9H7zqr7g1A1fcFdsmzb6N2z
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NfXCozfi
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/7] overflow: add
 DEFINE_FLEX() for on-stack allocs
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Steven Zou <steven.zou@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/18/23 12:49, David Laight wrote:
> From: Przemek Kitszel
>> Sent: Friday, August 18, 2023 11:28 AM
> ...
>>>>> I'm not sure you should be forcing the memset() either.
>>>>
>>>> This already got discussed: better to fail safe.
>>>
>>> Perhaps call it DEFINE_FLEX_Z() to make this clear and
>>> give the option for a non-zeroing version later.
>>> Not everyone wants the expense of zeroing everything.
>>
>> per Kees, zeroing should be removed by compiler when not needed:
>> https://lore.kernel.org/intel-wired-lan/202308101128.C4F0FA235@keescook/
> 
> Expect in the most trivial cases the compiler is pretty much never
> going to remove the zeroing of the data[] part.
> 
> I'm also not at all sure what happens if there is a function
> call between the initialisation and any assignments.
> 
> With a bit of effort you should be able to pass the '= {}'
> through into an inner #define.
> Possibly with the alternative of a caller-provider
>   '= { .obj = call_supplied_initialiser }'
> The 'not _Z' form would pass an empty argument.
> 
> 	David

Thanks, makes sense, there could be also DEFINE_FLEX_COUNTED
(or DEFINE_FLEX_BOUNDED) to cover Kees's __counted_by() cases.

Would you like me to cover/convert any existing code/use cases (as with 
other patches in the series, to have some examples/actual usage of newly 
introduced macros)?

> 
> -
> Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
> Registration No: 1397386 (Wales)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
