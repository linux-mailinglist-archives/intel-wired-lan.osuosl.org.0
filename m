Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2981C817DE0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Dec 2023 00:09:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A861A409F1;
	Mon, 18 Dec 2023 23:09:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A861A409F1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702940945;
	bh=BUMI4TFSRVuqUEMX6tJ5lTJrkXL8l8wRlLVs98ZwkQQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QNEBK2FYtqBDJgFcbxrT3BHkNU8WZq4ZVMRqzL/Lj9y+TD7apuJZE4eMJpDhoKXaW
	 72me+mgHmZnopXmOS5qH3o8QtEc5L5cY/sEjtzA6OqYMF+Ka5RQnVRy1q2KxkVBJDw
	 eSz5a3eR0eFezSKPNWnWnKYs8zEoP5hHthGxSflIjqs0FiyrynoslU8lFTmsZdigxI
	 0trfnmWAAoDRuqi5MWbH92vhfU/UWBTrIVE8najwSyaG8sVBhHwIKd9RvW4i/lKiNw
	 jbMTEnJclBWctcU/9CX5X43vFjD3RA5f3v5uicKWn/7ncDuiCukFwbJPlkDy+bNQOc
	 qb/fvETl1uZWA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mKJ6VV5qXG21; Mon, 18 Dec 2023 23:09:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8B92840976;
	Mon, 18 Dec 2023 23:09:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8B92840976
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EA19F1BF3BD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 23:08:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B9B81402F5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 23:08:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B9B81402F5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QBUlJoxe2UHO for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Dec 2023 23:08:58 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C65F5400F3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 23:08:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C65F5400F3
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="2673507"
X-IronPort-AV: E=Sophos;i="6.04,286,1695711600"; 
   d="scan'208";a="2673507"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 15:08:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,286,1695711600"; d="scan'208";a="17367627"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Dec 2023 15:08:58 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 18 Dec 2023 15:08:57 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 18 Dec 2023 15:08:57 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 18 Dec 2023 15:08:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VZmFsPfp0qggxxyMZgnTAqGjFMOVvQm8JVEZ0AnHvvAXzo5QK/bt2C8DLC7s0e/1Xu29Mz76Vm+eILhUAV4mPWic8Xwm2FVo5DwylmsxC/a5IRVGN75bWbOmJtilcngySe4t7fSpiAQk4ns4J4Aerj5ziu4IYrULpDBDqsokPygQ2IwkYBQy27zjv3yrY0+mTsZ+nP8LLrpTzVmQo+HiV5UsCJxWkHnxUj17kcbSfFk4qwgK2peGVHwqX6tjAwikkVz95gQp3wqGFH2XHryUkYymBJmEOwcX8mfgzsuTftTHTz0s0lya0fMUPPiJ6BF6vuRMHXirLTjnM6voGLCM/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VCyblbB+N5ZDx8uYg85q2NRsGQ2/D0ABuaWHtAnpGM8=;
 b=eyI+1LAm+DmkCK+0gd8xxQ/ynzL2kU3Nta8hqiaSd2XZSpfYUrbcdGNHcTkRIOpTqlS6DCpSUUrXfes/jM+pKk8D0yq3jH2O9RHuA+4eucdAFrLfRvYQiGixOnoqpxZtBo1Q+YCA2upoKICIMN77BPZ3y6vf9W2i+E6a3KRG0K7267xRJel9uyQKmW5YY88bAtIKRMKjzAtUqC3aavCFBmwTUp1ruTZ6FwjWVcDKlImd6aOrpbVHL2+lLqhk4v7B3XhgyT2+Ruk6aGxmQjOCu1UofwZWougcKv50227TuFMHu2CeDNa0BGD/bDy/UOPicezzjq8+Y9sEQbdsQ4LNNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by SN7PR11MB7993.namprd11.prod.outlook.com (2603:10b6:806:2e5::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.37; Mon, 18 Dec
 2023 23:08:55 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::11e1:7392:86a5:59e3]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::11e1:7392:86a5:59e3%4]) with mapi id 15.20.7091.034; Mon, 18 Dec 2023
 23:08:55 +0000
Message-ID: <fe2e6077-0f0a-816f-19d5-912408e23da8@intel.com>
Date: Mon, 18 Dec 2023 15:08:51 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20231214141012.224894-1-aleksandr.loktionov@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20231214141012.224894-1-aleksandr.loktionov@intel.com>
X-ClientProxiedBy: MW4PR04CA0052.namprd04.prod.outlook.com
 (2603:10b6:303:6a::27) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|SN7PR11MB7993:EE_
X-MS-Office365-Filtering-Correlation-Id: bf3490bb-64b8-43f3-f4d3-08dc001e4ea0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lDaw7Vi1Ksf/xvY4HpDv9f+0+IwC/nLCd6kE75kccTeSaqziyzmt+V2l47LFSadi2k/qSHRBRyMbfaIf30Dbkx42ulAfgaXwDEu2HkGIE3caW0MF6ytmHNU8RdcBv9TVuA10wASWmIJMSNeQW/UDKSWpliPUrhCfmhwkiPjKIUsKjRGGDsG0pcXMQHWguIktCBqwN4PvcFO8hTd5V82HgzlvN3oVR5ipwb2zlic5EqpsyQ5tRUVR55knvCmb4OEyClztfUgekT/OKpazJc5shGSMtms6QVTMUyW4h8Fk7PSfelkL9Gq1n+IGrC9mombjg9zkEMuUd4KjLfeTIlRzr9KqrRorECmQ9BxGAas9NGFZEE91Kmm606DRKkCJjNwcORd+Wo65wD5VbvRH0gtrkBUZ1IdU9RJVpsP2qXnUIxZubQxD9wH77Ah3m9UzIcoPVF1Acx6ra/vf276OeyU+wHS1eT3GhgE8cw9Y//b3mJOjcLZ2QS5kA0F5uvw36kIOmLml41nRhShhNb3jPgoJLeDGD8HDCaq+fQ5Se37dqmd/5LWVqB5yS6eHM2FDj5uqBjjWGw2RyoYeQse+TiadmrnVuM48hHJfwRVjc/AU0fxQAhIhrWNjdhSOxjSzUkTr/TRV9oc02MbA3UWcYnukZw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(39860400002)(376002)(346002)(396003)(230922051799003)(186009)(64100799003)(451199024)(1800799012)(31686004)(86362001)(82960400001)(31696002)(36756003)(38100700002)(107886003)(53546011)(26005)(41300700001)(2616005)(5660300002)(478600001)(6512007)(6486002)(2906002)(66556008)(66476007)(6506007)(6666004)(4744005)(66946007)(8676002)(8936002)(4326008)(316002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T28vVmQxa001WXdJSHhpMzB1dWNqVTRBUmh2S1Z4UVN4ZFFsMU55cHpZQzN5?=
 =?utf-8?B?T3J2SmR1K2xiQ1liVkpCN3lHUUxUQVZLZ1BRTktYcFJUbEJJWUgzR1VGbmlh?=
 =?utf-8?B?ZkpueUoxb0lwL0JVMG5lenNiLzB4SlVjTVFIdzB0KzBUM2NDK3dzdEdGcm9W?=
 =?utf-8?B?NG4zTzdpY1psUVN0ZlUrRmlXMjdrMk5yMHdwSDBoWFVYZzh5cVI2SkZDRDZD?=
 =?utf-8?B?Vy9HSlRDMEZIaTlUMEk1Z2NBYzNhK1E4TENKaVh4cUc4cThBYU15dm5IS1FG?=
 =?utf-8?B?enlBN1IrdXl5TStCclptTHluL2F2MlI2eURETG8zbTZWSlFIRzdWZ0lYSVVL?=
 =?utf-8?B?cmVXbXpXZm9GbXliN2dhaFNNaG1OdlQ1TjFIU2Z4ZTBLY1hmbjNhZDJNa2pS?=
 =?utf-8?B?VERBY01jZVlPaTRvTjByaEpyY2FOamhBWWRLSWR2ek8rY2xUNTNYYkxpc1ZF?=
 =?utf-8?B?L3RUbTBIcWJKTTBRN1dON1lEK25rUWsvVTlwK2hxcDVXOVZ4UkxEdkJxVW5v?=
 =?utf-8?B?VGtLa3BQQUpBcVpOaEtGc2tIYTJaVDdFeFhRUHVqanU3Mmp5dnB1Q3NYOWE3?=
 =?utf-8?B?bGRXQ3N6V3dBcXpFOFRMMmp4bWQ1N1ZHYWhmMFR6UDhnL0hJZ1FvOXhlRUhv?=
 =?utf-8?B?RnNUUGUybXRPNUtMS29Fa0IzV1dFN05xczh3VHRWa0d5eGZLTlUzSmNyOGpB?=
 =?utf-8?B?c2NjVXdvczZIWHVuWFBQd3lQcGlIWHZwSEo0YUZnR3V5TkhLM1YwOHk4bWVC?=
 =?utf-8?B?WUdKOUJacWR1R05IL1RhakttS0JrbDFBYkczM3dDb0NYYmorZk1VUlp6c2NW?=
 =?utf-8?B?T0pQMnVoNDh4ZDZDOXJ6YzBMMjZ1OXNyTHZpakdnZ2lhcVRuQWJwTTludndW?=
 =?utf-8?B?dmNuaFJHcjlEdVVxMmJMTlFUYnJnSWtMaDNZN1hZTmNIa2hFNi9wbHlYeTBX?=
 =?utf-8?B?WFBhL0pEc2sxWFY0U1BIcm9ET2JVRTE5bGprQU1yYm5mOEphaW9ETU1ER0Fw?=
 =?utf-8?B?aitLZ044QUp1MXBJZ28zSHFETDZ5bmZXRUtpcCt4TmxKMlVwbUhGMEpvT2tP?=
 =?utf-8?B?dW9reXBQZ2xZZnEzMi9zRnRwekdjc2FiTjViaVdtbVlSSUF4MGZLM05tMHRH?=
 =?utf-8?B?d2FhUnIxK1VJZ3pXYWZxaU1rMUJ4SjMvaGpBSUdWQTQ4YzhPTzdoZ3REbzhJ?=
 =?utf-8?B?dldSdVZaUzRuZzVJb3RPSDhnaGhhQko3MlNtb2gwZDdyTHhuWmx6ZjNQWnlB?=
 =?utf-8?B?RTFKSlFYWTdBTVd1MXdTekJKZXVqTG1NN0JmTm9YUnp4R1VGTUlhWDlXZEtU?=
 =?utf-8?B?SnpCQlAwSUNDZWF1S2MwcUpUM2FqUzl5bncxeEd6WG1sekRvbFo3Kys5SUV0?=
 =?utf-8?B?bGFPbkQ5UzFGQlVYajJMeEEzQjA0dmZ3U05iNTlVK3hHUEUrRDREQkZvc3FK?=
 =?utf-8?B?bm9rV21ON0N2bXRuTVFaZEVFVnd3ZDJQRk0zQzdpRzhVU1FsaWw4ck1YelIr?=
 =?utf-8?B?ZCtySjd6VVhMMk54YllveVZEWGNwTXlyZHNzMys2QS9NWlZIUVVmbkJBNDY2?=
 =?utf-8?B?VGkzMzRnSWdxVjhMdkVLdzRmaWlxay9QdVFrckc4NTFpUno3VkNHb2hjYkJr?=
 =?utf-8?B?OEVLMHBFRGgzNyswR1BKYzBUN0JYRSs3aFphK0N3RThPT1BuMndqZm5LWGUw?=
 =?utf-8?B?OCtWWHhURTBDMElmdE5KejhpQ2NQcFR5K3hrYkQ0bllOZktSN2FwbXhZUDdz?=
 =?utf-8?B?VFdVTTZjUVZuQ0ZRTElLSG4rbXpiTG5ITDVnMVF3VnUzWmkxQmRQNGw4eDZ3?=
 =?utf-8?B?NkE4djU1R2VLWi9ZRzEzQU8zRDcvWkpvd1RFRldDMXZXVlFBdlN0MzNqVGpp?=
 =?utf-8?B?ZnJ2bUp6OXVVVmV2c0d1RW8xM0pVREFoQmlOSThPMjdIRTRvMEc3dXV0cmpy?=
 =?utf-8?B?WjZXMVNObXg1OVdDUDZ3cDZ0YVgxMktTM1VTYW53VlF6S3B4K00wd2QremF1?=
 =?utf-8?B?Vjk1UmtRMnppNk5ZZGNWb0lBWUhQSGJaNFpJT08vU3B2bHhITWlXeFc5Kyt6?=
 =?utf-8?B?dml0djg0NFFoelBLTm9GT1RZLzE5ZzBnNHg4SGZpdHRaUE42eTZtZXNXZVVI?=
 =?utf-8?B?d1pERDlnczBsU2IrNUU5T2xVMVI1RzhGemxSZS9ITWtqK2lXZzlLVURTZGlq?=
 =?utf-8?B?WHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bf3490bb-64b8-43f3-f4d3-08dc001e4ea0
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Dec 2023 23:08:55.0132 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QCpzQ5doxMu2X7Voag5wFbK1akFziJunkX/FaDfAGKZf6ZZZzMuoITzCvqHn3qoRzR/PfWjftUfIPVYWhJ8+2T3rnrRpZGslGv02jMc8S44=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7993
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702940939; x=1734476939;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=w84LvSW6j2v1zuQqlLIuvQI2jAxo4UlHvI0gBzTFj68=;
 b=b7a4+qHroE8SUDmSqwYQJex0n1QmCgjo7vH/dVbLn+opYzukefTZ/rzc
 +BS5Qkn0xmoNpkwUBV1B5dvjMe1vRgnuraevfKtN2hrY7FZ9GWmevReWY
 q1QStHx9+jE4fKOxeEzDXBHbmS3rN5hbXtlUkqj8mMQyTkG6yXdlIrX2g
 PPZPAdXlSP/GkJaNfdCF+cCO8i0dcrnTVyg2wTOwg2i23SDz5saWwDlBO
 RhMGPQ1AjhoZN6RSX6s+42bgmwf8aAbuoINWgcQ0DaUJYSTa0dmp+0OqA
 lal8AaSzA9mtmq/eQRVE04SGa0eO0qCJ2SqA8YeCoGrQZvd2Vg9+1o9n8
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=b7a4+qHr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] i40e: add trace events
 related to SFP module IOCTLs
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
Cc: netdev@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 12/14/2023 6:10 AM, Aleksandr Loktionov wrote:
> Add trace events related to SFP module IOCTLs for troubleshooting.
> 
> Riewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>   src/CORE/i40e_ethtool.c |  5 +++++
>   src/CORE/i40e_trace.h   | 18 ++++++++++++++++++
>   2 files changed, 23 insertions(+)

This doesn't apply.

Thanks,
Tony

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
