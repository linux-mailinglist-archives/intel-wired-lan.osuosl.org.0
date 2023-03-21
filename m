Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 141016C3B8A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Mar 2023 21:16:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 912A0611DE;
	Tue, 21 Mar 2023 20:16:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 912A0611DE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679429813;
	bh=wZhBFweKQ9HNPs9jci9Q2XwPMuoB23yR9cpi6DbyGJ0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xdZFzw8gLF+ylkC70dIC+DdFtwj2qG6tpEqroAoPr6mVaW76spLBkz3vim7i/5bbX
	 IvhqqIr2EUGdhGhKQUnMzcjU60u55dt8tvGrw1Vxrafv33a6VBM6mOTSkHvF4R2pGx
	 b1mko8s0keO7LaZF0BaYF1WZhkOc5PlfymlMzLj0V67VVSbRrn1GzoeulqOCQQuyMD
	 HwcX+3dV8SCtlgOenPsu4LvGDK9HQCSfKS9EauonKTP50I5NaIXjcl6/oFL8cRKyOt
	 623U4FCzi4xoIesvWScIlqwECfb7FWAN1W223zrfaUnBlXTAe/rsSsJwmZoLIPYdMK
	 FhuCOB/7/GOoA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2oTeDUMblTWu; Tue, 21 Mar 2023 20:16:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 80CB361127;
	Tue, 21 Mar 2023 20:16:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 80CB361127
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2E0C41BF357
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 20:16:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0749E4051C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 20:16:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0749E4051C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vOWeDKIoXE3R for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Mar 2023 20:16:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 307E9404C8
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 307E9404C8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 20:16:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="425342977"
X-IronPort-AV: E=Sophos;i="5.98,279,1673942400"; d="scan'208";a="425342977"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 13:16:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="746018521"
X-IronPort-AV: E=Sophos;i="5.98,279,1673942400"; d="scan'208";a="746018521"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 21 Mar 2023 13:16:46 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 21 Mar 2023 13:16:45 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 21 Mar 2023 13:16:45 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.48) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 21 Mar 2023 13:16:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BPS3dHm2PMYPTwYiwLqHcPXMsMjxD4cK5PRc/TBNS0N9bpJDcFNmMMrZWHM5XLYRXaH9YbH+aKWzz2BK9CxJIIaYzGj2pfEz54b7DAV6OhfFbnIcBsJmCBnHt3o8qpjId8d806VFS/zyNEY0V2F40ucpQeP7OAMBmPP9iGnRwVZDbNbHY0A7WlRNwb38EeQPrwo4ynG9VIDOh3DaNWsozlvxq2Xu6aqCKue7GYYQZPVDNRea3RtMaWz22pJ05xIuKqxYNpjfhiRq9wt+ajayVkio364ZpcHHX6MhE8vf2R8WTYC+4G+jKT+uFq7SOUTI1Jlnr7grXCFoXD/soh2npA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9YrPK+38JgkfdPPJnLk0vyWA2X6h5FpOsXD0SeRAC8I=;
 b=Gggz5DCAlygwd0bNYQSfu036RSsu+p8AfDhYaeyJhqI5zukzDLmpha69v1u+t9fHjrpuDDUminF3azr4aSVL+1hSJlB6/Kt+PWoizsr8Bcscc628Cn0t9cpeYF/D7xztOCSYKu8eoNVuy5TZA4PPHJRP1ClIzlDfpKJWVkgqdhwvVV3B91b8ADIJayEsOHi0RFyQtqZVbMLQV1Bx4NzGkTSWmVXvOrzYpx3l506hVa+asaR+Ju8PXR73e27YBX+yf4BGpe5SahJdIQEiK/TT/9zI8RTPzQP+QXMm0wFVY9gcvdi8xxAdnWvX0v82j34tQfG1sHOgj6ufdb8RX2zvfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by PH7PR11MB8251.namprd11.prod.outlook.com (2603:10b6:510:1a9::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Tue, 21 Mar
 2023 20:16:13 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed%4]) with mapi id 15.20.6178.037; Tue, 21 Mar 2023
 20:16:13 +0000
Message-ID: <d1f0c025-a427-3ffe-9e4c-8ecda89d5e53@intel.com>
Date: Tue, 21 Mar 2023 13:16:10 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: "Su, Simei" <simei.su@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20230321065658.699675-1-simei.su@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230321065658.699675-1-simei.su@intel.com>
X-ClientProxiedBy: BYAPR07CA0028.namprd07.prod.outlook.com
 (2603:10b6:a02:bc::41) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|PH7PR11MB8251:EE_
X-MS-Office365-Filtering-Correlation-Id: 4fd799fd-f1ca-49ef-62de-08db2a491e48
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: oKHtsKVCeU4n6kLm/gHuvk7OyOwpZAcnhsG3Spt6lr5IVvnCsq2AH1+LISi9ytAKW1a9ue/g4rbVpSMAWlWB02K0ceA90JMfB9wh0sks81VUkGM5IEZkz9qnB2E6houUGf3gfeLTOkk8STtlVBUQnwCyh+oRUbk5gEtV6ywXoxnmsvEapzqS+MqUiqLy5s4ofhwQtpdycnjJDHUiK3l8TTsYKbcIDwP6zVfat5MtLLvTWiv5mJSSYIJ5xJ0zn7Dt2cSqblygEMyxZdgjOdOxt/THo912QmnpOBYlHrHmXAYthjOLtDIPg0YUbo+O1JIsOocJR36Z1PpxkFmn9pX4RpZk44Ivvf4/upfp/pNX0qDs69z/NLj3cRIfYXSCsR132+zjqzoG2eA9JO4MmHudlGn3DWnEu3N8+9Dhp7aM5FFhQR5gC6nmZ9Dt2RyBTNqsmnoowexxaoZwmYoMLrtzp8SOdGNj7J+cqr6ZFVmjNn09Vf9MMFvmCtUjGgE6kGXy2dFrnisNARh6VmR/TkH/2MfLUUH6YN+FNeNEKLzw5CQyL71q9Megd1zXpbtRsS5c+fb2hk2bR+VXwATzFJPbLoDSsNNu/pw+5EA5pxw88+3vBSrkHhzZvo23GQYoH7PPh4Cj70MTdQNXlgoc2hrPEBOSI5svMpx+RgE1XUyC6d2sRD9m37cOCKJdhgIUJOSHYUR2XMnkbNU9IyIiiNL8dtMg7/7idl0qI20Z+c+PsDA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(39860400002)(376002)(136003)(346002)(396003)(451199018)(66476007)(478600001)(66946007)(31686004)(8676002)(83380400001)(316002)(41300700001)(66556008)(6486002)(2906002)(26005)(53546011)(6512007)(6506007)(2616005)(186003)(31696002)(82960400001)(86362001)(38100700002)(8936002)(5660300002)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M3YrOGMvdHRrL1VsUG9BV2E4NmUrb1ZrM2hscURJSCs2V3dEV2IwczliTEJp?=
 =?utf-8?B?MXVUNzViUEdNaktMZ0JIcHZJeFdJK2hmQ2tnVEQxU2g1amZJUjNuS1dmVERS?=
 =?utf-8?B?MlpjZzBMKzhYVmYvSVdhZE9hbkJLUkhYRkRjb0Y4TUdPL0dJMmhKK3ZWTUdk?=
 =?utf-8?B?TGphNEdaQmNyc0ZORm8rQ1ZhcURyTXBvYVlFRUREMHlOTTlDaTVKNXR2a1Y5?=
 =?utf-8?B?Z2RCYXZ2RDh0cjVuV3dPelphcEx5ZlhoRGZZd1A4NGtLNUFDWmlHNHVJSFZI?=
 =?utf-8?B?ZkR5M1ZyWnBlb2NhR094NHh1SzRMUEFzTk4xMmNqbCtRRXVGNDhCd0l3M0xa?=
 =?utf-8?B?b3FqeDhGeEsvUjV2NFZHQmZuU1YycHRob1hBNFdTaXJjVG1TTmhrK1hsbVRn?=
 =?utf-8?B?enE1RzhLdnZXQmkrY2dVc1BnVFJJZXd6TjNSRzZIMUNURzduQ3JJY3k2UE8z?=
 =?utf-8?B?VFNmZ25tVitoaTNoK2lRbzRNa0R0Y056R3pZQm9UMStXano5bmVuSVo3UG5x?=
 =?utf-8?B?akU1c0pua2J6VTRkWUM0TnJoOENOTUxzYkZiOElGNHZqbWxVVzQ5TGxueURu?=
 =?utf-8?B?dnNWZmhrNW9hNDV2bkQzVktrMUs3UXhSTlpSbERGZnFlY1dUaHZkMXZ1Z0JE?=
 =?utf-8?B?TWYyRjlocFdEczhrY0NBWGFCWE1Pa1RiVzhHejdkZlFTLzV2UVRpdlhnSjVs?=
 =?utf-8?B?OEI0Qi9IWDVsUVRWNGFWUG0vOGlMYjljczkyQ2x2eW4rcXpoNnlDOTNmM0ZC?=
 =?utf-8?B?bU80MzNrVFhXWlF6Yk9WaVNHMm92V2pCV3hYWndHTHhPSzFaNStLdlNEUzdS?=
 =?utf-8?B?d0VwZ0NURHdkZldnWEZLcTdLZFNqaU9LSjE4SjNpL1ZuL3FEaEVLQTZFSXpP?=
 =?utf-8?B?Q2p6OTBzOWY1cDkrNERLTlROOFhkT1lYakRxS0tvdkdmV0tQeU1YZmZCQ29r?=
 =?utf-8?B?WlVlTkJ5V0sxZVkwcVBJaGNEUmRBQmdUK1FSZUFYdEFCbFA5MU5ubGt5U2o5?=
 =?utf-8?B?bVl3Y1BxeTQ4ckFwSmpxbXR2dnhEUU5ORXp6TVgwOUFveHF0TWxaRFBibkFF?=
 =?utf-8?B?a2xQeHZMRnFsYk1aVy9RMlhVZERKalY1T1U4ak96Wko4YjlRTXFlUWpaUnpL?=
 =?utf-8?B?OEhqNmJod3lucFpPczFOTjhpd0xSZTh2azJlVWpsMlhqTE9oRFUrOWF6R0xH?=
 =?utf-8?B?eUZKMzhuKzdGTGlHZjlWbGowZ1NIOWZIeFZpT3lkWFA4UkV4TTdud3A4c21y?=
 =?utf-8?B?Z0pSUXJFYmYzYytuZEJKbWRMRWZPSWRxTTM4QzViRTVuVUVaVGVFSHFiVUdF?=
 =?utf-8?B?MXZVbEpHOWdIV3F6VjJBV015Si9NTCtGc2lRK1A4SUxGNERmY1F5L0liNGZO?=
 =?utf-8?B?d1pnMFFUMVFpTTNoOEtqN3dLNGNRWmtwaFdFMFJ0QjY5SE5sOUUvM1pOeTZI?=
 =?utf-8?B?dS81M2tIRXcxSUFwN016QUhudHR1eXFVdmJiSitlWjRTK3laZ0tzSlcxYlQw?=
 =?utf-8?B?Myt1Myt0MHBpc1JVOXE4dDdEVjlTWTBvcmxZWGI4bEVJUEZJeUozUVRaRkJC?=
 =?utf-8?B?QmhWOEJ2aWZVaVlicEh3UG1oTDNseUdmUkc3MklBMzMwN2h0VWE1RTNjek1h?=
 =?utf-8?B?cGZ4T1V2ZjJhcWJmV2dmV1o0a1Rnc2Y1QmRkYzNiZ3pPNm5XdWJLVWJWT3BI?=
 =?utf-8?B?T05aVGNjR3pWNjJ1RWhaM3MwOFd1RWV6dHkzYkZCb05VR1dLODU5OVVXdk9I?=
 =?utf-8?B?bGtNYUFBVXdLQUxVanR4elhkcWF5bUhOWmxwcm9PQythNnhtRG5HMW12ZkNz?=
 =?utf-8?B?MnF5S1JadEZDZjB0TG01bnM2bFNTTkR6bi9jWHVJaE41UkJUbmR2VHJWYnZX?=
 =?utf-8?B?Q1ByTTVUSkdwTTdsQkUxSGExVHQ0enhsTklkdVFCSGdyZldrVytyWHY3ODhR?=
 =?utf-8?B?MVNWbnBvT0VsM3dyalQ4OFVRczVvSm1pZE9mUEZwZHEwR0VKMnNnYW80Qklp?=
 =?utf-8?B?NTRJcjlGeDRwT0J6OEJ1SWJoTlVkMHh0aFV3bUhBem9CKzA1VHlROWhQRE1T?=
 =?utf-8?B?eHg1L1B6TlZRa3F0SDI3MndyTHROTS9GTUpNTVhGY1BBeDJSZGUyRnNLbWlQ?=
 =?utf-8?B?S3ZwdXFKdU96eWtENXRWT1JMdFhUZWVqazBBdlJuNlJ0Qm1GNmFwUFMySVgx?=
 =?utf-8?B?d0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4fd799fd-f1ca-49ef-62de-08db2a491e48
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Mar 2023 20:16:13.4127 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5RhHJd1CpOy6dizCQRAhLDCmD1sYwm1Wf8vFq3guCKpgHWl31RQUVN26+JcMutmpdYsVVw7KCgr6TOf3qtWyWI31oH1k5g+nxQ06pMbZomY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8251
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679429807; x=1710965807;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=CsnDQ1Vi3reO0AC7iOZpsxf7MEMSFlyYY/CzT1C3Z24=;
 b=gueHSqmCpgwcCcti5J3u/e14iTI8d+sNXxO06NdkMdbRdLlz7uRl6ukP
 wKMG2pHXitW2KJwHOtpg8+4/1bxNHJ0HnMzC4eJYFBbydI+zK15KJ2Qqb
 vPmCokZsRrGww8s144fjX9X5kUWrNpTm2HEjJO/BQyS/KltXO/IQ89E4s
 8WttgzvfNPN2X5QafpzGMZCft4RatdSXYVe5iXTSc+cieolwpcYiRymbz
 r0j9ghxkyUNmkZSLHheVbq3d2kfbKL0qdy3rnhjpEQ6B2YctvdEdAhKqw
 OBpIJZXvlp45ynag+tbc8FGtGf4pjvsmaw7h6Uu5jSgj5oa88oo336pZX
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gueHSqmC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix wrong fallback logic for
 FDIR
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



On 3/20/2023 11:56 PM, Su, Simei wrote:
> When adding a FDIR filter, if ice_vc_fdir_set_irq_ctx returns failure,
> the inserted fdir entry will not be removed and if ice_vc_fdir_write_fltr
> returns failure, the fdir context info for irq handler will not be cleared
> which may lead to inconsistent or memory leak issue. This patch refines
> failure cases to resolve this issue.
> 
> Fixes: 1f7ea1cd6a37 ("ice: Enable FDIR Configure for AVF")
> Signed-off-by: Simei Su <simei.su@intel.com>

I believe your git configuration/author needs to be updated.

WARNING: From:/Signed-off-by: email name mismatch: 'From: "Su, Simei" 
<simei.su@intel.com>' != 'Signed-off-by: Simei Su <simei.su@intel.com>'

> ---
>   drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c | 7 ++++---
>   1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> index 60c9da4aac1d..c03e4a7ae80b 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> @@ -1812,7 +1812,7 @@ int ice_vc_add_fdir_fltr(struct ice_vf *vf, u8 *msg)
>   		v_ret = VIRTCHNL_STATUS_SUCCESS;
>   		stat->status = VIRTCHNL_FDIR_FAILURE_RULE_NORESOURCE;
>   		dev_dbg(dev, "VF %d: set FDIR context failed\n", vf->vf_id);
> -		goto err_free_conf;
> +		goto err_rem_entry;
>   	}
>   
>   	ret = ice_vc_fdir_write_fltr(vf, conf, true, is_tun);
> @@ -1821,15 +1821,16 @@ int ice_vc_add_fdir_fltr(struct ice_vf *vf, u8 *msg)
>   		stat->status = VIRTCHNL_FDIR_FAILURE_RULE_NORESOURCE;
>   		dev_err(dev, "VF %d: writing FDIR rule failed, ret:%d\n",
>   			vf->vf_id, ret);
> -		goto err_rem_entry;
> +		goto err_clr_irq;
>   	}
>   
>   exit:
>   	kfree(stat);
>   	return ret;
>   
> -err_rem_entry:
> +err_clr_irq:
>   	ice_vc_fdir_clear_irq_ctx(vf);
> +err_rem_entry:
>   	ice_vc_fdir_remove_entry(vf, conf, conf->flow_id);
>   err_free_conf:
>   	devm_kfree(dev, conf);
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
