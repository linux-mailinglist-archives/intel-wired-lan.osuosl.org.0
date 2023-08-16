Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E35C77EDD8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Aug 2023 01:33:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0E9024176B;
	Wed, 16 Aug 2023 23:33:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0E9024176B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692228818;
	bh=OMx/Ceu3QphniGN84LnUMa8I3RPJEfX9f/bRa9b5PkM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7WSE5x2eYEmgx3z/9qApw/4iXROf+UrvN8CNDVpANaM3hvZ8IYo06VWSDak7qsU6+
	 YX4dhWX14JFYPF1Zsv382x43qWeHe0e8Nz+frGrdkaCm1Dw/g8ST2JIZkrYmjuUGEW
	 u7Bll1Uu+O0JqfGJ2l5ePO4SlTK+3vjk4l2cFxYBamKMneyGXVYW6GGF0z9omvHqm2
	 q6HQgnHRTtH19UmtiKO3nRqFDnSqsJeQT7dTw/l0WF3wGB2LFhIWVVLaexFnFrfeyA
	 qucHi2N0WcNMBip08iqZvK9X6J3hy+2MhxGLEMpz+43aQGTtE58Zz//8oXMmGNirld
	 5x5eRyckCpPaQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FbN2g_Vme9iW; Wed, 16 Aug 2023 23:33:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7F2A44176C;
	Wed, 16 Aug 2023 23:33:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7F2A44176C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BBD741BF2AF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 23:33:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3629A808A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 23:33:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3629A808A8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IxK3M7gz-ajb for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Aug 2023 23:33:28 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8FB0683AE6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 23:33:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8FB0683AE6
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="371563528"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="371563528"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 16:33:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="734420608"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="734420608"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 16 Aug 2023 16:33:24 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 16 Aug 2023 16:33:24 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 16 Aug 2023 16:33:24 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 16 Aug 2023 16:33:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EQSgAKZiLW7bnFT1pnzE2Ejf3ei/zU0hpQKtyqv9pgTX+NaQlm0yYEUwPjE9J+DlGQFKXkG1PqYVEtFNTzSC/dKnGClUyS3vuD2wOQN9FDMiKwAKF1nQc0zr2nX84RB8+QCkETLOzlQ7u4IEFLsH0RNsdO7Sm2ksoUEDXpgZRas5eTtIIrsIs0sKava8qSFywASBKouktjL5gm4fHlFlOi/OS1fXnKmCnYGD8GdlBe8hGhx8tzSEjijnWVPXAznCNPF/N42sB8E7OyU3uhEGXP+ZPBxkzEG9Jj2nTewQJO0pT8FrtmQvJD6QcTiIwWlfFEDzC5znH/Vq/STpUwHlxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VhKXpcgz+VP85Vh7UGNnZiURPgcUcOBnnxhVwDUVPrE=;
 b=RpCmrd74m+TDfQSSt+Os1T0vDA3J5IUb0Ria0d5+eVkh4CIBjwg+lXWI7E7ZbyF6qknNGzwBitIQCAJ/J1Xs/RsCpA48CpUFEiyVdfOZVHx5x5PbYIpHvcM7s6+npCl4IgTxirGp348UXrDLYEIN2KIN2k/Q9eFHvAnB/BWVgVEElvwzJbBhW2k1ORu+v3YY+iRJPzGZ6/uBjKF395Bk+GSPvGBq+ALsEPBMu80SdZN1AIx0yMjKoRHvEP3ese/nb6eh82oA45MtknIOWE8U0BrKe7TDi6gH6N/98hqzIfsaMZ/BDA7cLZPKVRchmbEwgnaku31cfcyBKz+p+VLbyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DM8PR11MB5624.namprd11.prod.outlook.com (2603:10b6:8:35::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.29; Wed, 16 Aug
 2023 23:33:22 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::6a23:786d:65f7:ef0b]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::6a23:786d:65f7:ef0b%6]) with mapi id 15.20.6678.029; Wed, 16 Aug 2023
 23:33:22 +0000
Message-ID: <4a1bc6e6-0668-e9ce-59b0-d365c5e4d1c7@intel.com>
Date: Wed, 16 Aug 2023 16:33:19 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
References: <20230815223551.1238091-1-jacob.e.keller@intel.com>
 <20230815223551.1238091-4-jacob.e.keller@intel.com>
 <546e415b-d34c-f4e1-a8f5-e3c13bf03cdf@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <546e415b-d34c-f4e1-a8f5-e3c13bf03cdf@intel.com>
X-ClientProxiedBy: MW4PR04CA0033.namprd04.prod.outlook.com
 (2603:10b6:303:6a::8) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DM8PR11MB5624:EE_
X-MS-Office365-Filtering-Correlation-Id: 681ccfa7-e0ac-48b7-4794-08db9eb12df9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: oYwsDSa1oCU5MpXO6IXYuxo+VzK7rR84Epg0uHWJiNbN6JVwEfTH251ct7Qj8Ytrtc7HQHQwBk4sv6ZzU9Z+cpSjT6pVnq4IDpILVuJudi4R4PPNedt4EE3nbj9skVa8dERkVvUySXAnRxBx5HOkmj4K0MUmgMos0zMVyc/F5UWmFMdboetIvHWiktF591NF3hUxBSlqLRZiVXlPIxNP8qFFSUuj3bz9a6HfMMUwrJW972V/3jkG6IUZ4O9Pr6d857U6xl92MygPsh+6CnKENLMcJEXwK80kkYCxXkCBQVA+kmHt/D1H25jxRkEiSY9gUBFIlW4mOVzsTxWA20KybQ/NRgZbxzpHnBGQWKJISAzewDg+nEMBUEGM//7PBSsTa8QNkAqrVQGyBZXXr6VcoQmDfR5XBdlGwpqtRiDPaRIK5gYKxChvnv4Hng/22xSr6ZhmbCVBY6FpD4OQVLS9KyAuLglpZ27kM0FH6Fe35Qag8lqz1okmqCAEiWxV8NDC+Mwnp+MHZlhESoFUNDZuem/i3PMVXiyiEgCAxWGkTvC9BxXj2ByYzToXuw96xcbXJ4j1rUZB+tKkd1q06Tx8OnN69xJm9OiomH0NAo1iIoALFZ2ddFe9jeHvM++v1V/sH/4AgHKrlqeKyhEEe4dUoA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(136003)(346002)(366004)(376002)(451199024)(1800799009)(186009)(316002)(54906003)(66556008)(66946007)(66476007)(110136005)(31686004)(5660300002)(41300700001)(38100700002)(8676002)(4326008)(8936002)(82960400001)(2906002)(83380400001)(26005)(478600001)(86362001)(53546011)(6512007)(31696002)(107886003)(36756003)(6506007)(6666004)(6486002)(2616005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Nnl0UlJVeXhnN1hTZGc2cTF6ZmdTcjdYb2tGTDQ2WVRzWGdvY05peWtESWwv?=
 =?utf-8?B?TDFaUThtb0xzOE9QOVBmYXN4OUJzSUt2aXdlcFQ0d2hGQ2ZvcXkzSnRzRU5Z?=
 =?utf-8?B?Qk9qMlJ2RFNQNFg4Z2QxeEt1UEM4dDdzRWZiL2FTZ1haQnBBVGl2WmJwWjNJ?=
 =?utf-8?B?Myt5U241c2JRSzc5VDd4NUpTN0gyNFUwNE9WczZtQzh2N1JoMCtxVWVOaG1r?=
 =?utf-8?B?RjVwbm1ZMGRyQThEaXlhTWNEWER6S3QrRzBNSGNiTm9iKy9hUitFaE5KTnZP?=
 =?utf-8?B?UW9yV2Q0bDVrMHl3VHIzQ1pnNGl2SWY0S0E5UFJKYXJRVzZTNHpKQWdNR2xZ?=
 =?utf-8?B?RmtaZVpRT3l0UVNNOWo0VlFOTnZJdHdlSzd4ZUMybklvbnZLSW1nb25hVDZD?=
 =?utf-8?B?cGdybzF5T0pzUGk5VTgwWThrMGlDcUxsQzY1bUoyZDJQeS8zOW9uT0JndkVZ?=
 =?utf-8?B?NVlyT25MNmJQTHRkTjR1UGVObkt1Szl5WDAyd09KT3dJZGcxWDYrNlllbG8z?=
 =?utf-8?B?TzJMK2JFTGpDQW9MazB6bVN2bmIrbUg5R0tPdGtKelV1a2dzZ3hoRFFqU0Zk?=
 =?utf-8?B?ajB2b3lGMTNhTWU2OUhUbTBrQ1MvOFFoTU1NOEh4azF6YVJ3Q0ZqMFZLcjZ0?=
 =?utf-8?B?enFPRGo5ellYWldCN2hXWHpYYmJIV3J2YW4vKzBTMittQVI0ci9hZGs0bHhT?=
 =?utf-8?B?RDNrdDJNWEdCcCtHRy84NXJXZVdCRGdzTVdKYTZQZHIvMG9jdnphR1UwWFJU?=
 =?utf-8?B?UXp3eDc0eVRFc0IxVzJBS2pGS2VqdXg0V2dqNU85Ky9yQTN3cmdtYUE0YkVh?=
 =?utf-8?B?aklMM0pDV3VNL0t1NUpTSUxUZEtHTkwraUxyQW5hYi80d0tMTDU2NDNnd0hw?=
 =?utf-8?B?VzZZSHgxb2xGTGVSUSt1QnJIQ2Vqc3RBSW9ib0htQndxdnpaNkVCNUhrZkJG?=
 =?utf-8?B?VUM3QVZjcHFaYkxybWk1OUJUT3B2VzJudGx4Q0dIT2V6WTNEN2hYVWo0N1N2?=
 =?utf-8?B?dFQ1SFVEQTVjZHpJU0g2R010ZGJYNXl3WTZaRVpBb0NyajZKVmRSWXBDOXha?=
 =?utf-8?B?U2wzbXhRT0xyOW5LV3NzcXIwNHNsVERoWFJza3VNcDJVM0lWWW5PN29kSkZ0?=
 =?utf-8?B?UDFMclVOTmZScGFxWlVCM3VxUHRyRVJxc1ZTTlBDRjBFNSs1a2dKazVTZ2pv?=
 =?utf-8?B?RWpXb0d0cE1aMzVpU1h6SXQrSHRYeU8rbWlKWERlQWp4UVc5ZWxLZjRzbDZp?=
 =?utf-8?B?YnlFMmpienNidUY5M3ArdUdoakxkSXlCcVNnb1Bqb1A4cmNCZ3JacGN6UXpL?=
 =?utf-8?B?NzNRa3dFMGN6TDltNWFUSExaaDFKd2ZhL05hbDV5Q3VYWk52NGgrRUozQnVx?=
 =?utf-8?B?MlY4OE5CSDNkejEyYzJqKyswV3FSa1lEQ1d3M04xb2N2aU1NVmQyVXZRV2NV?=
 =?utf-8?B?RmNtREQ3U1VKRllTbHdFRjVsM3N0L084NGo4K21zdEF5SzAvaE0wU2o2bUNI?=
 =?utf-8?B?TWdDTVdzN2pORDZqZjI0UlB2ajUyQnpnU2xPcGhpZXZjdEZyZXVLbWNDVWtu?=
 =?utf-8?B?RVRHSkFqcncxbjFWSCt3bTZQZVJzc0tKN3hQbTdyZkpLMGlnU1pGMi9NcGFo?=
 =?utf-8?B?enVhaHVnbU9IaGxFbFpQMFpNYTY2LzBMUVltL3NiV2YrNVZjWWZNc01hNTZG?=
 =?utf-8?B?VFhWWEZobk8vK29kOWZueTFkS2U4bjZLZ0ZmNGp4eTVWUHUyU0VoVzFBS0Fr?=
 =?utf-8?B?ai8ra0tVejFMczEzVTMrR3lvQTE1U2JZeEhtZDVqUXRyT1F4cURIUXQ4OVZp?=
 =?utf-8?B?cHFEV09DOTZQUWIvakZ0NXRhS3QwZzVhS3owUHlXMjZISkIzUlV3Z2QrWUdv?=
 =?utf-8?B?N2ZIQXMxSk5lWHpzeHNlTFNVZ1JYclRrYm9xQ2lleXIzTnoxVjZBeHVIZUJ5?=
 =?utf-8?B?QmxZRjVBd2pzVFRlQ2NYWFc3NHRZN1ZUY2VzUGhSLy85R01YUDBHbHBpQUk4?=
 =?utf-8?B?UnYzbkpyc25aUk5DcE1kKzdXTEttZ0k2UTd6VHRTVGo1T05CS05VSWc2WUVr?=
 =?utf-8?B?M2ZPNUtzRlhTVEtaVml5emIxMGFZTHlhZjlDUkJzQk5TZWJwVU1kUTFucmpG?=
 =?utf-8?B?bmgxV3Q4a3ZTcisvcGxEdGF1Qi80WHVrWFhrWHRJYkZPeThWRlFaTUMrVGRk?=
 =?utf-8?B?WlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 681ccfa7-e0ac-48b7-4794-08db9eb12df9
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Aug 2023 23:33:22.2416 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: J0peIEL4WtmjgnmffFYMRznN4tOM6NHMycN79xgkzWdahziKFAt9yyj49oBMWFmxXUOYsrVNI/Km5lhcwWH7fGOFSunpAnn8lU/o5aYGbF8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5624
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692228808; x=1723764808;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rfSghVYSUiZlAW19N9xsKUx1KUWhtUO9qHf/Nii7LFc=;
 b=TKHLJQ1+444wOauzL1RSDLMe4hx036Uvmxnb0t9PXGoBN+B84jITZ+82
 AJZGlTptDdhhLy9bDtC7RmWpLdSIOnWO5TwRWSSQPYGvDFH+ARtMRLRel
 i0YLnjiDxPFsqS9COWsI21cjjra3gmfxbprYnlHyvBLBdaeaXv4h0hv+y
 ok2z06N8oEk4ndrZ1O2X9pPGCxN3uCPFTkM1o1SRL5A5FgfULeHVBaP+3
 zq8leOflnAMRNxn0i5PWJE69PeYceIijlznXyU0uvn3tWnZaIMJVSc8vQ
 RxMKFlP5Wj6iMBmxSVWOseg/IvhI9FKiPDMo3kc0oosTtVxs0LsnFg3y7
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TKHLJQ1+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 3/4] ice: check the netlist
 before enabling ICE_F_SMA_CTRL
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/16/2023 3:54 AM, Przemek Kitszel wrote:
> On 8/16/23 00:35, Jacob Keller wrote:
>> Currently, the ice driver unconditionally enables ICE_F_SMA_CTRL for all
>> E810-T based devices. In some cases, the SMA control access is not
>> available in the netlist firmware component. In such a case, the driver
>> will fail to setup the SMA pins. When this happens, the driver prints
>> "Failed to configure E810-T SMA pin control" and forcibly disables all PTP
>> pin configuration support.
>>
>> This results in failure to use even the fixed pin capabilities of standard
>> E810 devices, resulting in reduced functionality.
>>
>> To avoid this, check the netlist for the SMA control module before enabling
>> the ICE_F_SMA_CTRL feature. If the netlist lacks this module, then the
>> feature will not be enabled. In this case, the driver flow for enabling
>> periodic outputs and external timestamps will fall back to the standard
>> fixed pin configuration.
>>
>> This allows supporting the software defined pins on a wider array of
>> platforms.
>>
>> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> 
> Overall it's a nice series!
> 
>> ---
>>   .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  6 ++-
>>   drivers/net/ethernet/intel/ice/ice_common.c   | 46 +++++++++++++++++++
>>   drivers/net/ethernet/intel/ice/ice_common.h   |  3 ++
>>   drivers/net/ethernet/intel/ice/ice_lib.c      |  3 +-
>>   drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 16 +++++++
>>   drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  1 +
>>   6 files changed, 72 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
>> index 90616750e779..82c4daf0a825 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
>> +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
>> @@ -1367,6 +1367,7 @@ struct ice_aqc_link_topo_params {
>>   #define ICE_AQC_LINK_TOPO_NODE_TYPE_CAGE	6
>>   #define ICE_AQC_LINK_TOPO_NODE_TYPE_MEZZ	7
>>   #define ICE_AQC_LINK_TOPO_NODE_TYPE_ID_EEPROM	8
>> +#define ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_MUX	10
>>   #define ICE_AQC_LINK_TOPO_NODE_CTX_S		4
>>   #define ICE_AQC_LINK_TOPO_NODE_CTX_M		\
>>   				(0xF << ICE_AQC_LINK_TOPO_NODE_CTX_S)
>> @@ -1403,8 +1404,9 @@ struct ice_aqc_link_topo_addr {
>>   struct ice_aqc_get_link_topo {
>>   	struct ice_aqc_link_topo_addr addr;
>>   	u8 node_part_num;
>> -#define ICE_AQC_GET_LINK_TOPO_NODE_NR_PCA9575	0x21
>> -#define ICE_AQC_GET_LINK_TOPO_NODE_NR_C827	0x31
>> +#define ICE_AQC_GET_LINK_TOPO_NODE_NR_PCA9575			0x21
>> +#define ICE_AQC_GET_LINK_TOPO_NODE_NR_C827			0x31
>> +#define ICE_ACQ_GET_LINK_TOPO_NODE_NR_GEN_CLK_MUX		0x47
>>   	u8 rsvd[9];
>>   };
>>   
>> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
>> index 2652e4f5c4a2..9eeda3f5aa75 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_common.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
>> @@ -2503,6 +2503,52 @@ bool ice_is_pf_c827(struct ice_hw *hw)
>>   	return false;
>>   }
>>   
>> +#define MAX_NETLIST_SIZE 10
>> +/**
>> + * ice_find_netlist_node
>> + * @hw: pointer to the hw struct
>> + * @node_type_ctx: type of netlist node to look for
>> + * @node_part_number: node part number to look for
>> + * @node_handle: output parameter if node found - optional
>> + *
>> + * Find and return the node handle for a given node type and part number in the
>> + * netlist. When found 0 is returned, -ENOENT otherwise. If
>> + * node_handle provided, it would be set to found node handle.
>> + */
>> +int
>> +ice_find_netlist_node(struct ice_hw *hw, u8 node_type_ctx, u8 node_part_number,
>> +		      u16 *node_handle)
>> +{
>> +	struct ice_aqc_get_link_topo cmd;
>> +	u8 rec_node_part_number;
>> +	u16 rec_node_handle;
> 
> I see that you are using separate variable to 'do not touch' 
> @node_handle param if it does not need to be updated.
> But perhaps you could consider to just pass @node_handle in place of 
> @rec_node_handle below, and have less code?
> I do not see any non-null usage of the field anyway.
> 
> (rationale: our code is so self-similar that I needed to check wheater 
> you are basing-of recent changes by Jan&Karol or re-doing them ;)
> answer: we are fine here :)).
> 
>> +	u8 idx;
>> +
>> +	for (idx = 0; idx < MAX_NETLIST_SIZE; idx++) {
>> +		int status;
>> +
>> +		memset(&cmd, 0, sizeof(cmd));
>> +
>> +		cmd.addr.topo_params.node_type_ctx =
>> +			(node_type_ctx << ICE_AQC_LINK_TOPO_NODE_TYPE_S);
> 
> I would FIELD_PREP() here
> 
> and perhaps convert @cmd scope to inside the loop, that would enable = { 
> .addr.topo_params = { ... } } declaration
> 

I couldn't find a nice way to make the .addr.topo_params = { ... } to
look ok, so I opted against it. I did reduce variable scope though.

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
