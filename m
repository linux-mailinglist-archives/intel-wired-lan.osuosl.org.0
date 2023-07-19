Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02F36759C41
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Jul 2023 19:19:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DEC6241591;
	Wed, 19 Jul 2023 17:19:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DEC6241591
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689787165;
	bh=pwLchSLrMszPNEsu4DNm3zgnd0jOeBVrjhD1Z83rkI4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=s8rR70Kt2cc0k1Quae7Bu5GuFNC7tVboZ3YI/w2FMnxMzgeLWG0DsMr74B0AW8QVx
	 XNeyavgWMcxuCL5xC/woyI4llvEBCpF7/Z5mv+bCd5nMpitCPCJZk4KqAu3R9Uc3ZH
	 bLbjL2SyMD3J9NBVTKbj2JFNOnZ6730oaffmOvpkVbkEA01XO5QA17VCMfUyJwvvmU
	 8eYcg/z+SmKQ1i7QHVROTSV7uw5Nhy71swlCIJZfHS8S6v3gU2u1Uh0O6OGL4gxI7x
	 tQZUUIow9DSA4e7+YUODySIS/rik1uqn3NPicCBqBzEhKSTA50e2CbVBAaPe32YC4q
	 gNWmmsbysjiAg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TUK1KLirlwBH; Wed, 19 Jul 2023 17:19:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BA1254058D;
	Wed, 19 Jul 2023 17:19:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BA1254058D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8B0301BF333
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jul 2023 17:19:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6F5CD82030
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jul 2023 17:19:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6F5CD82030
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WssA-mzDvQxK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Jul 2023 17:19:16 +0000 (UTC)
X-Greylist: delayed 429 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 19 Jul 2023 17:19:16 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 992B68202D
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 992B68202D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jul 2023 17:19:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="452901526"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="452901526"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 10:12:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="727379702"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="727379702"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 19 Jul 2023 10:12:06 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 19 Jul 2023 10:12:06 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 19 Jul 2023 10:12:05 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 19 Jul 2023 10:12:05 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 19 Jul 2023 10:12:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MwPGxEoxcucqKE2qY3cHkSGRojmDGtE6IfiQw/j03VArbtUJWfoPxRjZANKDusjceO3uDcE4oD1f7BilK/uaRiZtlU17Wmxa6x2AdY0q0QMzNj3yWW0DKUuy7XI0fLss8zFEFdw5Da1ihuSB/UOLaiWcOkY0v+DaJU5oix+fiEJvQESqYtHE6faVA9GdIsmXAS8aSWQsk7miRqlRHb+rRjr6Fb80Z2W6ohxVCkjaaIM1wvhiRgn0UFcTLpF2+89L3heIbfVDFc8339TO1WlfKpoPhlEn5d0GAcYeqdANqrni3RUr2ImxElHTLg/dNdDk3qt5YSYpL+yHcc1IzFmBEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yKP/vUVySKbRZSFDIc6QmZS29ZHb9Ik7WraXpcgHl0k=;
 b=a0sDGIRfV+gTfwvoHKDNZPuKCmf8Xrus3DSOxfMefYNB1MRMUXBYvO4axtj2Gjf6gu+lxiQzVf61ME8Fo1U9n/UpM/2gpmR8ZU87Xu0jFgAHpuYCJqnV98XebEw/ZUgiDn2UPbC1DYD8jKhrwLm2g8qohJ+qflLaGXLDlf1ENhnuwqlEFEhsy8frslFx0EU6zXl2rWSxQ89j2UHQ4UHkwY9zPeclYx9vy577tDkhKSD1qEWdKdf6HOPPf14Jq8IsFBYft9LSBOf8bp/NiYhPdqnOu4fUK5Z24AU75gw0sGUO9Wm2ARSb2KdPig9aoLVCYIDiHG3s09/F2JimvcVkKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN7PR11MB6851.namprd11.prod.outlook.com (2603:10b6:806:2a3::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.33; Wed, 19 Jul
 2023 17:12:03 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468%6]) with mapi id 15.20.6609.024; Wed, 19 Jul 2023
 17:12:03 +0000
Message-ID: <6288bd96-8de9-b17d-2c7d-fd29715600fa@intel.com>
Date: Wed, 19 Jul 2023 10:11:59 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: "Zaborska, Olga" <olga.zaborska@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230717105812.298188-1-olga.zaborska@intel.com>
 <20230717105812.298188-2-olga.zaborska@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230717105812.298188-2-olga.zaborska@intel.com>
X-ClientProxiedBy: MW4PR03CA0248.namprd03.prod.outlook.com
 (2603:10b6:303:b4::13) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|SN7PR11MB6851:EE_
X-MS-Office365-Filtering-Correlation-Id: d467edda-06d7-4b43-b7e1-08db887b4573
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: sWPCQ3AyFmIY/bXoLfrXY/j2/+vfjKpKSOuXJ9SoKEvG+wW5kwWwoJFCBXVcfXUiV+E8rHrpZA0D6aB3r/v5hu8BtF0RD0A7Q5b6H7CnKDTH9bbefp8Ia08DbcTzVyghL8sTUf+mFECOQQAQE7SHe7cJskiPVTVL3NYXLFKw9rqRF8gmZSDv08KjRgbnAx1Qg4goYACUUidxtDQ2Jxi9X0iywQlhMdIzP7TugkbAUH14xuX87UzIk2q6U/HQZ4xO0mt74CaQXKFxgZbHzZ9nKJ2uhCkcpl7BPyeVejWoc5gIgXs16vcgwHwgp4+XXTC2YrUqPUqrT3Ic+l5eFmidrOmVoyg1KVBx2TGSUBTnpauLHu+RA97mMX2CiiF4a6Rg/zzu2xf6KulmPophrxMjJCjUwImfXwh0equXn7N4FpIp+or6+A0Jmrs0zldpMIRHsxijZjCfK32eBkfV37ciNj5mNBYo8Y3WgNckj94mtDz+7ElcR9Covs4iyA1xuBhFqrikb9FAnIJIXXGTjVjnrierxQo5tuXYqxFZYprqZfL/b8GWQYk89Dw9viYUs1XWsZjb3QSQuVQ5KS7cEb/bT7WpSzYkjsT3hCowuy3k5y/WPaFEzVdPXfIxvKNeQUxAGKCHjkQnqPmew5QL6pJMAw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(376002)(346002)(366004)(396003)(136003)(451199021)(66946007)(82960400001)(6486002)(41300700001)(478600001)(5660300002)(8936002)(8676002)(6666004)(66556008)(6512007)(2616005)(66476007)(316002)(83380400001)(186003)(26005)(53546011)(6506007)(38100700002)(31696002)(86362001)(36756003)(2906002)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WmJJMFVOZUV3UGUrYW9PdDlwVVFYekhUWURTbThrOE9PYU5ndDlVNlZvRjM0?=
 =?utf-8?B?YUZWMEZnOG5yd0tKY0Jnc0E4ZkhoczhZNWJDSkxtcmFIR29kdWhxMjJSOEZV?=
 =?utf-8?B?aXp6Rmdyenk2dmVhQzJ3T1VZTVM4Y21rb3k2OFZ5d29LV1VpY0xDYlhUVFIy?=
 =?utf-8?B?VnIzdWNYcTNsb3hNSGd4SzVVMmVCcmd0NHh1TWJ5OGFKKzl2R1NLU2d1dXRn?=
 =?utf-8?B?cWlrVXgvUlFUYXVubCs2YW5UbC9yTGNxT3pOT05iNlZzemtNbzZ4RTIrS1V4?=
 =?utf-8?B?VlNXeUZtanp5VDdobEV2c0pGQWFGYTNQdWtaY1VRRFdqTVN4R3BVbXhwMG52?=
 =?utf-8?B?U2xzSFBDcjdxQ2lMYXdFMkY1TUJ4YklhWGdJR3pvNll6eTBoM0tmejNwTkFv?=
 =?utf-8?B?OERwek5tMTE0UU1ScUlRSlBJVkdTaitMQW14WTNydUd3VnYzd0tjRnltVjBa?=
 =?utf-8?B?K2U3YS81M3lLN2hCQVBPVEpoT2ZITTB5UmtFdEZmWnBBaUVIOEVCTXZHRXNR?=
 =?utf-8?B?ZnRWc05Jcm9maFJmczQxQnBqRE1JRGdoQkRLdlNEcGJrUFR2OHlJMUNJSlhJ?=
 =?utf-8?B?QUdjQkRnZWpvWE4xYmlzRzR3cDFEbW5LOHloV1NCV094VmdNTW8vQkZLdjdG?=
 =?utf-8?B?N1JYcFRQbEpKMHdyVThHNWl0NEhzZ0VJeWo1dHA4TjR4R2RwN25ubi96Z2V5?=
 =?utf-8?B?aUUzNnBMakNodDg5Q0ptcEZOeUE5bXhtT0lFQk9IVU01S2YwT05taGhSWGFn?=
 =?utf-8?B?V1ovNjkrRDFVTkdYRFFsYy9ST0N4RTFqbzV2M0w1ZkF6U0xWaTM3cVVOSndG?=
 =?utf-8?B?TDM5bUNLUEFwdGJvRHZnK3FEemdXc3NRSE52TzF5MEJMcTBRc01lNzB4QUhp?=
 =?utf-8?B?MWtPbWVQbVFXazRhOG5RellqMVNxTzErTUZRTkRkdHFBMGZ1Smhta2txSHNy?=
 =?utf-8?B?K1ZhVFFXQWFSOTFYcVhlRWF4RzBkYU83d0NzV3h4RzJnSU92N1RIUXZLNGta?=
 =?utf-8?B?cnhHLzlHRm94KzdBWm5xZzNLSWVDZnZ6ZUoyaFBOcVhZOXI4UGlDVkc2bTFm?=
 =?utf-8?B?L2dDcFpLd0FHZ1lISmNwSVdZM1o5Slo3dkFaTWRKT3hOZVcwYWQwaVdrL05H?=
 =?utf-8?B?NUFubWYzZWIxc3ozZTY1S00xOXRBeVhoclMrSWVaZHVVSGJwVExibUdVNlp1?=
 =?utf-8?B?MjBCZEJ1dXhSdU1VWXRYSUcvSzl6S1NPbE1TcVNzUlFJYkxDc2k2Y29GM0pl?=
 =?utf-8?B?dWxuaXI0V3RURlkxYXVTVU83Ty9QbFZkc0ZaOEpIeHozNXN0bGcvK3diRW9J?=
 =?utf-8?B?WFE5SEQxY0pXa1dOaHFLUGNVTHlvTU1DSWFFVEVKZDNsRlBxcTF3VDRlc1Y0?=
 =?utf-8?B?R0JQL3JQSDdCTHVFUlcwdm9heS9DbmI3WllMZm1XV2c3NHVjQUJXeGY0QnpP?=
 =?utf-8?B?V2MzZjkyaXNIczJLNHpGclNWSjdCbnp4UkpLZWdTSFphTXJUaHNuYmM3WmNG?=
 =?utf-8?B?UWpodkRPUnlNTSs2K2N5ZS9paENHd0drYWN5cFlTb1BvcHkxWjRFbUM1WGVy?=
 =?utf-8?B?VVJRcmxMVHpTUUtRMWJTVXR6K2crZjErWktkN1dqcktLYU0vbUlDaHZQTDBV?=
 =?utf-8?B?U09wNDByaHYzZGluQUdlcWYzRDVWblJ4cytCK3BoTUdDeUxNOGE5ZWliVEIz?=
 =?utf-8?B?Y1BPVWw3RXVYd244Q2tubXVSTFFPeUUxcnlMNGIrOGlUMkNQRWtRelNtRG0z?=
 =?utf-8?B?N1FTa0VEamlhcGJuYWNuK1lkWk5QOG05M0V4ekFoZ09OK3h1WXlzQmVxeSts?=
 =?utf-8?B?U21Fcy84QXBlbXRJMUtjaUNFNitoL2lmOHRnQ3hIZ0crSDRNWW4rWkZmeExj?=
 =?utf-8?B?cnc4MjZwRCthNTBLWXJuSFltc1pRNDFZOHFPUnNIZkZvVWZFUjFaRDFOeDFD?=
 =?utf-8?B?cXhGQ0YySFVMM3ZxTThGMmd4RFhJNGkrY3AvSXAvN2REb1pHM0QyQjhNWERu?=
 =?utf-8?B?NlBvMnBSVDJFd3pQSHRQZFdzcElOa2pYeUlsMVd6U0hxS1F3d21zWVEvamZF?=
 =?utf-8?B?RFl4eFVwaXNPRFhyMTJSWGRiWkZvaDdnRzE4dU16eG1kL0JTVStFeldjTUZJ?=
 =?utf-8?B?U3BldFFCTm5yZmlpUmVLN3M4b2ZxTE9ob3FHY1kxaTg2WEx2b0IzSFJDK1lW?=
 =?utf-8?B?bEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d467edda-06d7-4b43-b7e1-08db887b4573
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jul 2023 17:12:03.3385 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dLPRtCQtZwweaLP0dJ5z1aeNqQu2CUEHhUS8VLJYXJ+K7NQfvDMWyIMSV0jtiI/OH1cvQnEYugig+7/yxN51sRGfD9eYZROD6kwGOymVkyM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6851
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689787156; x=1721323156;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=3VhdHMzJUqSAAPd2Z/PDVTp1Bv6RWwFRh4Idh5E+KqE=;
 b=L/hrDdeVOHv5IxfQYa47yJmUh6VpvvS/w7NDil+NGZOla/yfGse4e5yu
 QkRkLVgAKWOMBQ4eHPfCYfyVeRYOQMDaxR0af/fZudaZJDYWlCFha4s65
 vUQ8OUNPB5+Fs34DnZeuVDClQhAlVyRZZH+9TRFlp9psxn7xqvwsofzmU
 GGygGxyShCIaQJ736LjtQarOM19Nx7gQXYrBMvxLjeSqD8c21mWYcQhUM
 6EZacFL6O2gNMt06ssfvyQI6Lc278FXzAES3CZQJ1zWW+RydUTk/0/PcC
 uNcJMG+AqpGFmd+IiOpU1D8LzFIbA2Rl9V7S7tj3sEdsRJS49/Apisldz
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L/hrDdeV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3 1/3] igb: Change IGB_MIN to
 allow set rx/tx value between 64 and 80
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



On 7/17/2023 3:58 AM, Zaborska, Olga wrote:

Please check your gitconfig settings (and fix the author)

WARNING: From:/Signed-off-by: email name mismatch: 'From: "Zaborska, 
Olga" <olga.zaborska@intel.com>' != 'Signed-off-by: Olga Zaborska 
<olga.zaborska@intel.com>'

> Change the minimum value of RX/TX descriptors to 64 to
> enable setting the rx/tx value between 64 and 80. All igb devices can use as
> low as 64 descriptors. This change will unify igb with other drivers. Based
> on commit 7b1be19 ("e1000e: lower ring minimum size to 64")
> 
> Fixes: 0507ef8 ("igb: Fix code comments and whitespace")

Please reference commits using 12 chars (this and the one in the commit 
message - directly above this)

"WARNING: Please use correct Fixes: style 'Fixes: <12 chars of sha1> 
("<title line>")'"

These apply to all the patches in the series...

additionally, for this one, please use the Fixes that actually caused 
the problem, not one the last one that touched the code.

> Signed-off-by: Olga Zaborska <olga.zaborska@intel.com>
> ---
>   v1->v2 fixed commit title and message
>   v2->v3 fixed commit title and message, added changes for igb and igc
> ---
>   drivers/net/ethernet/intel/igb/igb.h | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/intel/igb/igb.h
> index 015b78144114..a2b759531cb7 100644
> --- a/drivers/net/ethernet/intel/igb/igb.h
> +++ b/drivers/net/ethernet/intel/igb/igb.h
> @@ -34,11 +34,11 @@ struct igb_adapter;
>   /* TX/RX descriptor defines */
>   #define IGB_DEFAULT_TXD		256
>   #define IGB_DEFAULT_TX_WORK	128
> -#define IGB_MIN_TXD		80
> +#define IGB_MIN_TXD		64
>   #define IGB_MAX_TXD		4096
>   
>   #define IGB_DEFAULT_RXD		256
> -#define IGB_MIN_RXD		80
> +#define IGB_MIN_RXD		64
>   #define IGB_MAX_RXD		4096
>   
>   #define IGB_DEFAULT_ITR		3 /* dynamic */
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
