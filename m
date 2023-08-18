Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 857FD78105A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Aug 2023 18:29:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AE9F8840B5;
	Fri, 18 Aug 2023 16:29:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AE9F8840B5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692376168;
	bh=J9tZZ+9SMo4ukkFYwEQ6iUyyd3HYk9CPYxAh7OYQgsE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=urJPMpobbm7NzdzSpF7T+zcrUmiIet/Hka27I/R+bpa8HKDVJcV5O5WFaFioIFdmY
	 Wx1FlDUQwUSYodcdabq/S9IsvDiv2NREzdn2e/rN9PfyaRcs7Y9uWt+7g+pELTsXoP
	 HGNnK1go9gthL6YURtYaiTUB4y/H9pXOFyTBJ56ey4iExBdK8NDiABo+aOaR85dAut
	 TXq54JLvht66KLML+OkfyUaonDi02fDAI18vmuN9+rvY8mZGg9XyZjx8ZNq5J9zzN8
	 SKYhiBlIaJw/RyC7au6irLOzPjPlnzpfnC1KbwIOjQOg0SjfD6SwKm9qopzcXk85sN
	 kVM01ejzneoUQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9HUmRjpXukoo; Fri, 18 Aug 2023 16:29:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6A7E883D0D;
	Fri, 18 Aug 2023 16:29:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6A7E883D0D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 083CE1BF3F7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 16:29:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D55B760EFC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 16:29:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D55B760EFC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hUYRJbDU3RN1 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Aug 2023 16:29:15 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3B2FC60EEF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 16:29:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3B2FC60EEF
X-IronPort-AV: E=McAfee;i="6600,9927,10806"; a="375915599"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="375915599"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2023 09:29:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10806"; a="908936925"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="908936925"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 18 Aug 2023 09:29:14 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 18 Aug 2023 09:29:13 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 18 Aug 2023 09:29:13 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 18 Aug 2023 09:29:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KU2Bxtzr9dTTDUIRG5zUlS8TOzuBVliVDgDCAtANGLShtmZoZRlwrTNnkVGIGuXyEYYtokpiYnwiyziDh2Adk/zxEPgEwBl8/AcJP4ZFUiH1q2j77zx0RV/CEtvRHdo8xigBE8SPBgm74vI2Wqku4K8y2GqQAocOqSULBJPspsmGQ6H8ssL+xid8EQL2duf74qPJrfFLvXJctxjDDA0a/nq4BpTL3+NfBwlguhQjFWuUZYBmSxxparLmZkoz3nXHOR17UIgVo43523Cl7dE1GUxk2coaq3imBN87W7pQw00zCpfDDDMkBxaU+xu080hGf8z+Fazi7lKjCnq9vU3zhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UR4Np2pj7JJCDXIDSGbPc3x2QO5hSjidBccxT+UPRaA=;
 b=d13CAOmqLaSmy3TnfR5jYpDIB2jADZJJe3+i98D7/2IEc/mPzQQjh0rv2LXwb2mLlyM/WlTjJpDIT49QGExPya2tqTGesV+Ep/sL+zZFN89nbgX9SI/aPPUrzJZA3H9e0zTNgqphHlcSNg5NkH8EySVkaICENZ1nqh0PLTXdjwvDdTQNgfumJh36H7Qs83fdcy/f68o1GxqcKsHEAreLJ3it2yWH5upFrN2NT/TMUhE8zYod3ISu3U2gMVR1ZrZJzvGVEgKXz6/CdLsGrmoLr1JtKy1S7+f7xNrZKt1dOPSdhPk7rZYygWf2oY6z4DKtJjQVZKycxaMtTRx0RQUlNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5140.namprd11.prod.outlook.com (2603:10b6:303:9e::21)
 by IA0PR11MB8302.namprd11.prod.outlook.com (2603:10b6:208:482::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.31; Fri, 18 Aug
 2023 16:29:10 +0000
Received: from CO1PR11MB5140.namprd11.prod.outlook.com
 ([fe80::7349:947:dc4c:fc8d]) by CO1PR11MB5140.namprd11.prod.outlook.com
 ([fe80::7349:947:dc4c:fc8d%4]) with mapi id 15.20.6678.029; Fri, 18 Aug 2023
 16:29:10 +0000
Message-ID: <22cd24d2-6f15-560f-1a5f-f78054d05f40@intel.com>
Date: Fri, 18 Aug 2023 09:29:08 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Andrew Lunn <andrew@lunn.ch>
References: <20230816235719.1120726-1-paul.greenwalt@intel.com>
 <20230816235719.1120726-3-paul.greenwalt@intel.com>
 <240678ed-221f-4893-a410-140c9f4f4674@lunn.ch>
From: "Greenwalt, Paul" <paul.greenwalt@intel.com>
In-Reply-To: <240678ed-221f-4893-a410-140c9f4f4674@lunn.ch>
X-ClientProxiedBy: MW3PR06CA0003.namprd06.prod.outlook.com
 (2603:10b6:303:2a::8) To CO1PR11MB5140.namprd11.prod.outlook.com
 (2603:10b6:303:9e::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5140:EE_|IA0PR11MB8302:EE_
X-MS-Office365-Filtering-Correlation-Id: 09611c12-2f2d-48d7-86c0-08dba0084085
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7FwQxB0s5bbqVrVC1tDATx/TQsTIdkju5Yl5RBWjfd93+QKsMfKB7Mt/93saSfa2K13+heXfRArjqzBLoPWQP4xI9M/gkcxyxEi8/SBrAhDchwF8S6oCb1/koJD+6Of8wAwHmL8tp6pENnnqp97Hd0sNZ1blDZ8GKw0ArC5Wln9Qau9WXloxDmjngmMoJf9hST+LpDcRl3is55F4nOs2LHbdfvpZCGk0YqCFjVVkahFibS+f6GaikcuFXpmslJLNoa1z3eus3hm4rFLZREvU120saeX89uZZGnRPv75KWRGxJzug9NbyINzhISc8SYX8rd/+3wQ6xOQGWkuRkNLCazPdf/loEkB14nIk+MKoqU7AoZu/Bj8xBMD75dgrZrWKy/UEKfi5DiDtjiT9Tk94Y487Zpim5KWOCJL5xzO23myoCc0koeXtSEb7RBWsk0sOh0Tj6v+nRcEX0hM4IXnLLVFgRaaxR04kZr9UUPIdjtl+yuMb9Igs89XGm6guGzgkImnAXfMRBie7/90PsBs3eQd1aPZUhg8qEwVfOX3JJJ8Xw+saDf3UcERsLZwZRtS6iQGiDX1l4NPIWoYdf2spgPubq8sWXKdtII0vcwhmRv54Xyi/6iy5UmmhH2P3YsmCvB6Jz9I/QPw4o72Z0g3OIg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5140.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(376002)(39860400002)(346002)(366004)(136003)(1800799009)(451199024)(186009)(6512007)(6506007)(53546011)(6486002)(38100700002)(31696002)(26005)(86362001)(36756003)(82960400001)(107886003)(2616005)(6916009)(41300700001)(2906002)(316002)(4744005)(66556008)(66946007)(66476007)(54906003)(5660300002)(8676002)(8936002)(4326008)(31686004)(478600001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a1haenpiUFAzOElNWlZ2a04vU0c0T3VVRllOREdNRjFIYXFKRUVodEZPYzFv?=
 =?utf-8?B?NUkzd3c0M0YweXpsVUplSW1uQ1hrMkdUejFPWW5XalE0a0gxL2paL3lEdjYw?=
 =?utf-8?B?WnpDK1pTWEpUcGhXZlpzVFF1NytUeGZUOUkwZllZdlZNNHAxdDYvRjFiNmZv?=
 =?utf-8?B?bUJwSDdjTElNNFg0SzhZNUJkVllFcEhPcHk4aHJpd3E3SmxiZjEySHBNZEt4?=
 =?utf-8?B?UU5vblo4ck5TMGVlY1BZdWE5b1FBekp5Ukp6MFp6RWxhb2JsS250emE4aWhl?=
 =?utf-8?B?K3JTYXBaY296UnlXcWxXd1FhU09XMkNMZWQreFZFOVdrK1c5YVhGamswUnBD?=
 =?utf-8?B?VnN4WGRWQnNXcjJhQXJQV1RlQ3dYWXJqVWlrTnVkMC91d3poZG85dlZPWTFD?=
 =?utf-8?B?V3NvK01QWEIzSmFXcDhlOFRKTnU0NEFTQy9zT3AvbTB2cEN5b2cxUmo3Sm5s?=
 =?utf-8?B?T1B0Q2k2QnBtWThlVzN0K0taQ0xNQzh1ejhCTUxmTUIzY0QrUTBLUjR5c255?=
 =?utf-8?B?Skp0RWN4Q1NadkVvU0NlMEdra2pELzBGMUozNW1vejBwbFBCaU9lTTZHTVRv?=
 =?utf-8?B?aTM2ZXZiYWpPK3R3S05CRmpnNnpIUEZSVk1QLzRiNFN6SzQ2YzdESDNTUU5k?=
 =?utf-8?B?cnFsRUhSenhtVHZoSlhIRmFwZUZUcGY1b3RUNlJGb2QvTXFEQ09CV0RVeHRD?=
 =?utf-8?B?cy9RRmRqcUJLWm4xZnJXM0l5TTlMZzJ4cCtBdEVYcGgrTklPKzdiN1QvaVhR?=
 =?utf-8?B?cDZsaHF1ZkN3VWs4eTJsUE9zeFlzQlRrSXFYR05zQjRYRkRJR01SY2d4UWgv?=
 =?utf-8?B?TGJld1Y5Y1dvN0NRQ0VRMWcwMGkyTW9WNWFXSlBtZUdYR0J1Y0QrSnQ2VER5?=
 =?utf-8?B?TVMwNG1ldmhZWmh5aC9acVBaRHN3cG9pSEtxa3JRVkhnR2lqYmk5b0lzUXBz?=
 =?utf-8?B?MzdvdENJZWdYb2VaZmoxMjlFN05Da1FjRGNNaUVtUVVtNGhuTDVPc1hyUFpY?=
 =?utf-8?B?dDNiYlZ1Z05mSHZtSEU1a3Y0c1pDSHd6N05JaTdMbXhQOHYxZWdNc3VDUity?=
 =?utf-8?B?NmI4bUo2NDdFS3Z3U0ZWaXpXdWNsSG9wTzZJeUxiTWFTME5sZ3Y5NUlLRlVI?=
 =?utf-8?B?UmF2Kzk0OHZjbk1IaDBYRTNuWC8rdHFVYzlUYTA3bnR2dUttdVBQMzRka3N2?=
 =?utf-8?B?dFpFbTFuWDJxZ1loVzlnR2dEUlF5ejVDQWZCU3BmZVpmUFNXbU5weDNKaFky?=
 =?utf-8?B?QkpUU1piSUxFUGEvRHNkaGk3enZxNGp5ODVMejRlNXFLRkszU1lEWkI1c2I4?=
 =?utf-8?B?WlNpdGlDeDU3dkNOSkVDNGpBN1I4MXlqYmpJWUh0MENoS2ZDVHp5VVNNRnVz?=
 =?utf-8?B?bVk3MFlNV0d2bkN2Yms3QnJpdGgxRHVnN1hCb1lmUTJHcnlnUkdieWQxbjd6?=
 =?utf-8?B?UXJvRXFwdzdXQ2VRNFhwOVY0T0NxNnZmOFlKaUEyL0FLNjdZYkJTUUNtbjM1?=
 =?utf-8?B?OXRzVUxyUExvNFJzdXM3ZUUyaUpreWNIWTRJZEdpMjdLd1dhWG5HdVpubVlN?=
 =?utf-8?B?NDJBK2IvQXpDRXk2NGRWTm9BMDl6YzJ2Nk5kdjZ6eElYS04yamZkaFFOalZY?=
 =?utf-8?B?SklLdlBGbURzWTJHbmRpNWZmWlpTS0ozQ3FMRGFreUZENVhzWDhJRy90WWJT?=
 =?utf-8?B?cHJKNmJycWZqTGs5TjhhWWRQMUtyVTVsVlhQTkhWbjVwVGc1c1ZpZHl0Sml2?=
 =?utf-8?B?cHdRek1XT3RWMWdudHdLditMWmNyS0FON0Vra3BGZkJ2L3FmbW5XYTN1Um5l?=
 =?utf-8?B?ck9iNDFzMWxVYjJzVmNkNVdQUHdQcHJSVW9FV2V3TTZXOFRVWG5XZTVBWUJK?=
 =?utf-8?B?STNxWXk1eDg3M0s3ZE9lYXRsVDNHVFlPb2lwSXN2cEtOczYwai9CV1o2NlRq?=
 =?utf-8?B?SVJQL0FVTFhLcm1kc2JoRTNkWERFQndubEZLRG91Qkk3dko3ZG12QWppOGR6?=
 =?utf-8?B?SDQrV2g5OEV3WnNpdjhIN1NTSFh1K1dKdC9ETUZQL1ZPaFdLVml6dk5CeGJO?=
 =?utf-8?B?ZEtRSldaRHZVaXJkaEZaS0pCMnUycy9Ed24wd0YwZnpSZDhzRWN4Y0F0TTJx?=
 =?utf-8?B?RzZtZnZCcWVoRERXMDJ0U2twbmhWekU1aE1BN0hhd3dMNUJxTjd5VGNOcjBD?=
 =?utf-8?B?SVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 09611c12-2f2d-48d7-86c0-08dba0084085
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5140.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2023 16:29:10.7672 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ofIRErC8SujOCaay1MVU3rm+eGShdC+qfLIHRg7yQA19IEknzIU+78EOIOEUXRR9X0mFq3C8+nbhauhVmBtNxTGqzEwXL72P7A433Rj8dfE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8302
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692376155; x=1723912155;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AMcTtBVCCpmL62GbbR0/AP5gsC3ecM91G1D+iEVb52k=;
 b=LYLvWPAgAKavmPk9xB4ggLDevOzbv69jccICs1IieusyOPGHLZHfqtTZ
 W5fmGHkxwpEogvHPxQgXXkdCI6QpXDPGIoUbQe/s8Upd7sK+RwElTQgy9
 qPxQ9EhTaHvLa2SbrpwWDdy6H19HAQVb/zmNDg3tijl5apCcUgyBvoXbD
 wbQG47cU4uziCvrMvBRp3OJ7aNsipvTHD7URAmPZUoFpzbvFh0xNYSCAn
 RU6vAIlaZt2+lwk9wJ9fQDUG/c3Vo8LbU08NTBnmfIlnTBI/yPcyQlIWm
 XKRyfGKTbjpV/4HrqI9YKUmCAVGb3Gvxl1NTBBzbMUbU25JRnX0STRV50
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LYLvWPAg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/7] ice: Refactor finding
 advertised link speed
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Thanks for the good idea Andrew, and I'm working on a solution.

On 8/16/2023 6:00 PM, Andrew Lunn wrote:
> On Wed, Aug 16, 2023 at 04:57:14PM -0700, Paul Greenwalt wrote:
>> From: Pawel Chmielewski <pawel.chmielewski@intel.com>
>>
>> Refactor ice_get_link_ksettings by using lightweight static link mode
>> maps, populated at module init. This is an efficient solution introduced
>> in commit 1d4e4ecccb11 ("qede: populate supported link modes maps on
>> module init") for qede driver
> 
> Could this actually be partially shared with that driver? Some are
> identical. Maybe a generic implementation in net/ethtool/ ?
> 
> 	   Andrew
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
