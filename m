Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6119D6740EF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jan 2023 19:29:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8DEA48237B;
	Thu, 19 Jan 2023 18:29:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8DEA48237B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674152947;
	bh=ntXXOZoh4BgVo/jf7Um6pgbNvjrfQ6K5jMb8AeiwHGY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Yhj8BnskhcTt837riO9LAS8XatxKbd9CRdTvYRd0XOaFeoHMG6f27tbf+MO1XP+gS
	 WxfbLZy1cTOxGpg+kV+CXiHauVgyJx4iRWSzVO1O8DMR3fIvpt/AHPCfhnG+CukH4L
	 5L61QLrWAx+eeRLrAVkA1NpijsYz5/8hQ8+1Ll9Nd+0VvH0/zPDwNSnqNjaU7rNmHs
	 Mn/Lii5Fe4yYwh65DSwVnhiRKkRP32c/WTCYv/OduDww2EnE/wemO0S9P72V7AG5rr
	 Ifb5DpFNwQJMbUEJ28NoXCLz8SI8ez+qGtN9aBZQkHg6C09oXNGa43aLmDYOYiBiUB
	 K1qpfxXKN757Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ewrn8Dp0Lxup; Thu, 19 Jan 2023 18:29:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7022582291;
	Thu, 19 Jan 2023 18:29:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7022582291
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D9C441BF33E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 18:29:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C1A508188A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 18:29:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C1A508188A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZllOHHIfw1jm for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Jan 2023 18:29:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 00F1C81583
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 00F1C81583
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 18:29:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="387742696"
X-IronPort-AV: E=Sophos;i="5.97,229,1669104000"; d="scan'208";a="387742696"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2023 10:28:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="662206855"
X-IronPort-AV: E=Sophos;i="5.97,229,1669104000"; d="scan'208";a="662206855"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 19 Jan 2023 10:28:43 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 19 Jan 2023 10:28:43 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 19 Jan 2023 10:28:42 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 19 Jan 2023 10:28:42 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 19 Jan 2023 10:28:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SP89jO9smI92g4Bu/K2SMx1ZTAosvTdldjdXSEVOy1mHyBEgeRzgEgGf4xs0Wxvc6UkBRwcoQu2zm3mlz4t/hGCmZVPGJtm4nOm3S78zRsy1rttPEtvAcX/eGVaews8x+yklWImjYnSv8orYu99hF2L9nejMhuf9CoYOPOxc0IYCsSEUOKXMvDSsIz39GXZsc2Jq6+g+0l1nH8Mv3opvow7AEoK/DxwsHPQvr1aJ90tUao7v4oApPXiDxy6XrMKYvmbfP2Oje8sPh/kWdy93/jT+AyheMi5oH5jNWv5DviLhoJQRvqcySgPL0wkMCjzl0pPPP/Tc8/BQzKhmNuXZLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1TMxSMDq86QKfhu/r82I74KgXTJKaPNqhjxslvxMKtI=;
 b=CHjhrlWI4kVaRtRWsqqSrGcbPqofosfS2RI4GKGeeI493+Z6rQR/eR/SronOAaJh4hEKNTR3jfo830hFhLSxX3tj4+f9XKAojE/sdeBa+exfsdcNGBbrYtSggHHOKSdLRcqBsgqRHOZ5gb/2XfiO+xxwA6emkv/Fy4xWWdzYI8ezqwMqWCLVFE0XaMD/wJJgDVfYKc+mOgviCx0jF+VnSQF1pyIuT8/xbaROOu50wbiQAi7j+MrldA3KXKUE0JIbzxgc+VSDKnnpz9lR6XWzStc75r+WdCyciVt91i/x50v9iroQnjnDNRYxpNEXHJ0dfR9zqXg1a27usSe8DzpiGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by CO1PR11MB4786.namprd11.prod.outlook.com (2603:10b6:303:94::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.26; Thu, 19 Jan
 2023 18:28:40 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4700:1fa1:1b49:1d5c]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4700:1fa1:1b49:1d5c%7]) with mapi id 15.20.6002.026; Thu, 19 Jan 2023
 18:28:40 +0000
Message-ID: <3c13ca84-0cda-c53c-3ebe-0fb0b3fb790e@intel.com>
Date: Thu, 19 Jan 2023 10:28:38 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Bjorn Helgaas <helgaas@kernel.org>, <linux-pci@vger.kernel.org>
References: <20230118234612.272916-1-helgaas@kernel.org>
 <20230118234612.272916-5-helgaas@kernel.org>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230118234612.272916-5-helgaas@kernel.org>
X-ClientProxiedBy: BY3PR05CA0054.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::29) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|CO1PR11MB4786:EE_
X-MS-Office365-Filtering-Correlation-Id: 62a52fa5-096a-4c95-4b0b-08dafa4afcdb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uQbyxZF8PHgJuWRE1tAoZ5J6tmISy/LcIsvOyCmMR46r4uhf1jaZOO6fo2Fj37NO+dQvo7yi2r00oz+JL794pNiodSK96GcjFczuEqdPnE6SUM6PXO4evlYce+z0wCZDrFZJXj3H7xqOC3c1OUk9lm50OJU9zLzSWId5A+RqBt7Uay143ZQDC3rMVHBUQesDAwwbiDBpRdakMz1w1SbhTDEnsrBhNKHWi3pVZF+cWYpCFWGDcJme6OPk1zmm1U05Mv+oJ+sNsgIP4Qnq4ticoQ0PsF0asF/dasVwFwEI6qU2aASN+3g8zZlpAPBy6Nb6ZvJRpMh45zTyHauzjO3qw67RMM40bAu1EXvjNCtfrkTMqgw0zQv10geoIVLQqyY5JpG92MuSWf1hcKrKD1h7VqyFo4cPJ1w7AhTqGiY1Uj7b+POZB4LuipPVFq8iD1ZCxX8YZwfGpGN36uacFGRvX1Z6TcVfvKwgMU3/6t3ZW7pyeU6USYEb+1cB8tO1JbwRlwDQmxNhViJs+9AjPjkOSXTmEJKmX4I0kKL/EGJsD1yCYH2KyEcjUiiueUZXTtgIsXJQavmPZBQPPsSOkYJ1YH403BBgl4xJxfoVkqqUiVDRIBAye9osDfiZfIHKG8lJ1s2dZGjAb2PbQ4CmGfOYelDr3l1BjnYRCQlhToZztA4No0Fovr5RKGKvzAHhwog0mdpfiT/4B2/kYmLCREdDTOpjJTRZBojlReu2wdgV8dY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(396003)(376002)(346002)(366004)(39860400002)(451199015)(31686004)(8936002)(5660300002)(316002)(86362001)(36756003)(6486002)(478600001)(6506007)(53546011)(31696002)(2906002)(2616005)(83380400001)(54906003)(66946007)(66556008)(38100700002)(66476007)(4326008)(8676002)(82960400001)(6512007)(26005)(186003)(41300700001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WnVSMm5nZlNFbHFJZHJnaVlpNTFRaVJhODdKUDNDSHU4ZU95RnBtWk94Vlh1?=
 =?utf-8?B?SUQxQUVTZ0JvcmVuTGhLdDJaWjNIanZBbFNpZ2w0OTVWR2ZYSDRFQk05MzdR?=
 =?utf-8?B?a0JxM28yYWpqRnJDUEZpM0ZDQjVhYytqc1g0VDA1ekZ5ZHlPWXBGbUZDN2Zn?=
 =?utf-8?B?WU00VVpKb2Uxc09TUGI1OEZ6TjU3NDlWMGNiS1NFaTlJenNLSmVCWEdRMWpH?=
 =?utf-8?B?eUY4RVhjOXAxbFlHT1pCY3k1bjM5SXUxTDlQTHFEb2F0bHJRdm5hb0EwWUVG?=
 =?utf-8?B?TjdrVnU4U2svUlJZY29TZ0lOQTB0YkxlaUc0VnllczlGVDdMWjRqVks2dTVv?=
 =?utf-8?B?U1pvOW5nMTl3ZXBFenhaRHBLN2Zyb1ROeWJLR2FuSGtsOXVlcjh3NTlSaHZV?=
 =?utf-8?B?N255L2xkWnVZcXljUjRhZnd4Y3AzYWxOdDdRL0t3d0NaNTdqRG0xVVdKV3dj?=
 =?utf-8?B?aE1WR01wNGNlSTdER3VmV2szZHNSNjdqWE0wc204SExmd1REbFg2MVArcHoz?=
 =?utf-8?B?Z0pwSjRZdUJLVmpMMFEzd2JVdFdZY2VyV05mVGxVVkY2UWdodC83eHBpLzlz?=
 =?utf-8?B?MGJTeW9XZEQzbDM1MFcwQ084bzJENno3emxJaU9tOTRqdm1TVzJFdThPVktR?=
 =?utf-8?B?SExxd2U2bTlHaWs4ZWdVWExUS1p5cVduQitZeGFWTmpkN3VDNUNRY0dtWTlw?=
 =?utf-8?B?U0tkRHY2M2JoZ2NtYkJIY2JSRGk0c1c0MTJXNUpYVjUzRU5zL05BSlpVTk9u?=
 =?utf-8?B?Y1QrSFJWSnZsaWNDc29tNmFRbjQzYjRwYitPUUVub2lLOWllV0wrcm0zSURR?=
 =?utf-8?B?Y2g1YlFrSTlRU2g0V0xJZWZJNzcwZUtlVVlodXUxVFFqN3BPeFdtYVlKMGRL?=
 =?utf-8?B?MTVJM1IrVmNYNENPUDJkK1d5Q2VnQkVVTjdtOXkzS3U5Q1E3TmdtQlRJd2px?=
 =?utf-8?B?QUNraVdwNldRMHZPN1F5RURNNTZ6OGQ1RVVRRjZDQitKaDhQZ243dGNYMnRi?=
 =?utf-8?B?VWtWVHNQQkdIQ3VXZ2czMy82Z0hkK3BaWHVzVml0TGs1Yzh6dklneDR3M3ZR?=
 =?utf-8?B?NGhReEo4WjRLWnZMTUg4aXRlUnhtcmhpRE5zODNxeVBiYm5MU2o0RGo4eSs5?=
 =?utf-8?B?Nkk1aHpua3Y4b3V1UFUxeTYrOTEvdVlVMWRzdmRkd2g0bkZOcVhLK0RhaTNu?=
 =?utf-8?B?SUkvdVBqdHI5aEpPSnhaaksweDA2UGhGdkVRN3hkUVRLL1dHTEVKQnJkY2JU?=
 =?utf-8?B?OUszUExWVHZGV2xBZGlqK1hXTUdZbGZwNlh3OExxUnRyN01yVHFSbWtOZGpH?=
 =?utf-8?B?ZzEzQkp5MFpSK0VzV1NRWkpabjNtdFlvbEdqZitYTm9KZlNPRHdTKytheUw2?=
 =?utf-8?B?aHk5NlNLRXgzQVpEbzhmZk1LeVh4eEdtWENEamtIdHlqcjJGd3Ribnlkd0NI?=
 =?utf-8?B?ZHh0YnQ0VEFtaEIxVXUyWEg4QnYwN053T1QzM3JCVlZaeUJucWdxNC9jNGsw?=
 =?utf-8?B?VFhQWnpGQTZWZUxic1diajV6Y1NaWktjMElhM01HditXcmRoSmo3Vjdpa0Ry?=
 =?utf-8?B?QkdTcWhlV3ZWNVJSV2N1cDZ6VHExcnpXc2QzQmI1NjF2d09ONXFDOXkvcyts?=
 =?utf-8?B?azJ4MjQyOWVSN2l0cmV3QXExK1plR3JJVko0czBTQ282MXI2NFhDNkVBTkQy?=
 =?utf-8?B?QkJkbFJsRnZUQ29FVzVkRW11UE5HT1lyTmNxcTR4TEtVanZOVWE0WEpITWcr?=
 =?utf-8?B?VG81VTF4bnFtdVA1aDVvcnlINzRUL1pXMktYMmRDNWdJNm9Zcy9pdWxuYjJt?=
 =?utf-8?B?SS9ndXd3SGZ5dXM0TXFDeUxzY0dWL3gzOUFtT1drNWhEUnJkVkFTYWlSS05u?=
 =?utf-8?B?U2Z3MHhjdGJJZHRlQXRaR1NTbDZlcGpDMUx5OFE3c2lJY2JsYlJRT0svNFI3?=
 =?utf-8?B?ZFBpQ0pkT1FEVzJWVmhIOEc5bG9pRUsrU2Q5aTJ0eWlSa3g4b2RsOFZaT1E1?=
 =?utf-8?B?RlBNUEhja2VrcW5RaWpSY0RuWGx6VUpWK2RxWDJ0MTZnYUJHLy9nV05WNUc1?=
 =?utf-8?B?aXhBQ21pbE1QK0FVNlg1M2s5VnBIL3JOc1ppMVZVWTRTSzhqdkxZT2tVd1Bp?=
 =?utf-8?B?RmZlRGhaWnF2N2F2c2sxOVJTSE1KcVIrWkFPYks1MTFpdGx4TnZhVTZxY3Jt?=
 =?utf-8?B?YXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 62a52fa5-096a-4c95-4b0b-08dafa4afcdb
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jan 2023 18:28:40.5756 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lre1fxbC4HqCW7iJUDaVOCR12J/I9jUru3/TtT4TrS3gyZSLW12JqKXZdBAdx27CSISY+qvpu+/gMzuyvLyoANhLZPHv9i0ESQWkb4wvdkE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4786
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674152941; x=1705688941;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HUrG3W55HXp1YAEBzVXHru75Elvb5K7qRuQ48dUS40o=;
 b=XfSLRqpYghmfSwCWcOHKeF3baJKkMNZUb7vLlmPBQTrSJ36rOymwK3Ia
 p6su42gVFZEOY5otJXdiI8MlFWthcOi+9zlVp2QlLT/mFK5bb2iBCPuh3
 4TUTrV6ga+C+HLXsqA/MYndWlX7tCX93zzDeNGff6wVz/YZBzDTZRQB6K
 XkQ3XGirrL+8qRBKAPziJJc/2awSff2wwa+xQGH3ArhF691J4iLSjzGwh
 ukP/MIJTbHZGlpAVbMdre9rEstdIjhbOP7+vcaMbGlmsTqGqpAcJM8rFV
 ltgGVMHcerDcfeDZri7WMXOl7kax/0+wBKOHijKOehhg3WHQ6+JnKKfde
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XfSLRqpY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 4/9] i40e: Remove redundant
 pci_enable_pcie_error_reporting()
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
Cc: Bjorn Helgaas <bhelgaas@google.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/18/2023 3:46 PM, Bjorn Helgaas wrote:
> From: Bjorn Helgaas <bhelgaas@google.com>
> 
> pci_enable_pcie_error_reporting() enables the device to send ERR_*
> Messages.  Since f26e58bf6f54 ("PCI/AER: Enable error reporting when AER is
> native"), the PCI core does this for all devices during enumeration.
> 
> Remove the redundant pci_enable_pcie_error_reporting() call from the
> driver.  Also remove the corresponding pci_disable_pcie_error_reporting()
> from the driver .remove() path.
> 
> Note that this doesn't control interrupt generation by the Root Port; that
> is controlled by the AER Root Error Command register, which is managed by
> the AER service driver.
> 
> Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
> Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> ---
>   drivers/net/ethernet/intel/i40e/i40e_main.c | 4 ----
>   1 file changed, 4 deletions(-)

Reviewed-by: Tony Nguyen <anthony.l.nguyen@intel.com>

> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 53d0083e35da..43693f902c27 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -15589,7 +15589,6 @@ static int i40e_init_recovery_mode(struct i40e_pf *pf, struct i40e_hw *hw)
>   	timer_shutdown_sync(&pf->service_timer);
>   	i40e_shutdown_adminq(hw);
>   	iounmap(hw->hw_addr);
> -	pci_disable_pcie_error_reporting(pf->pdev);
>   	pci_release_mem_regions(pf->pdev);
>   	pci_disable_device(pf->pdev);
>   	kfree(pf);
> @@ -15660,7 +15659,6 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   		goto err_pci_reg;
>   	}
>   
> -	pci_enable_pcie_error_reporting(pdev);
>   	pci_set_master(pdev);
>   
>   	/* Now that we have a PCI connection, we need to do the
> @@ -16218,7 +16216,6 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   err_ioremap:
>   	kfree(pf);
>   err_pf_alloc:
> -	pci_disable_pcie_error_reporting(pdev);
>   	pci_release_mem_regions(pdev);
>   err_pci_reg:
>   err_dma:
> @@ -16366,7 +16363,6 @@ static void i40e_remove(struct pci_dev *pdev)
>   	kfree(pf);
>   	pci_release_mem_regions(pdev);
>   
> -	pci_disable_pcie_error_reporting(pdev);
>   	pci_disable_device(pdev);
>   }
>   
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
