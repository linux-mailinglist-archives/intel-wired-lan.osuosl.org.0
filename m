Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E43A733B26
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Jun 2023 22:48:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 01DD2842FC;
	Fri, 16 Jun 2023 20:48:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 01DD2842FC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686948498;
	bh=dGjikw7cthYzSQhE/wEg94bapqn2E2uajh59lFbw5Jg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ak4zytUqEnvW3Zt97XjLmolFjkt1b/7CNRzb+QhKd6dkJGK0HaL6RfX2fG07FSG5O
	 XoMpHDN9OzpHp4X11peowlJnnHzAnQ1uVuHWhg761MKVk+nw7/s/5GXRfFD9YrFvNz
	 UjXJJHI/uICbGWtpxTSpegsA8GoIS/ikCeXHK+n9i5DQoJq/hKVr5KaZruq0tg9wM2
	 Q9hNEm8ETQmb2iGEAuc6CQWe8Hx4xdGyALcdyCackVP8facLdnKYZLVpWXEaXB4yo5
	 BO8Toe03woEFXiI+Mek3VfulDe9Yat6+/vHhiTW1K2f/D9coVEgAhz8VycHRZxXaJE
	 DJRGor+HxEEQg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wX3z_cW52Men; Fri, 16 Jun 2023 20:48:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CF19B842FA;
	Fri, 16 Jun 2023 20:48:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CF19B842FA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6B6A11BF97E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jun 2023 20:48:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 39D6860A74
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jun 2023 20:48:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 39D6860A74
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pA2-JrvVzCO7 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Jun 2023 20:48:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 572DD607C9
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 572DD607C9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jun 2023 20:48:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10743"; a="445690296"
X-IronPort-AV: E=Sophos;i="6.00,248,1681196400"; d="scan'208";a="445690296"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2023 13:48:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10743"; a="663319515"
X-IronPort-AV: E=Sophos;i="6.00,248,1681196400"; d="scan'208";a="663319515"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 16 Jun 2023 13:48:09 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 16 Jun 2023 13:48:09 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 16 Jun 2023 13:48:08 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 16 Jun 2023 13:48:08 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 16 Jun 2023 13:48:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L6vd+fbq1DaageSmftgstBl2NqgAcRANzAJGfXKVWZqgoLIzb+wXxWlYj3w02PvPBTZSkc8V3mQM5WOh2WFg7aMOfvhdSN5cxZxW6NflSs7M2O8fq6T95pT2CEBo8s2SMDgx0lztTUv2p5xQqsWYt1175Tuao+/lRhyP/XYqpGGMG9Z1C2vOmoUpPdJchbypDWYgttO+AQ1K1gPBfwAvyxkUR3oRNFKFT7nJysNgLH0jaRozrn5VB7rc1bLZLf8/6jmxkk5bgRiXWnXW+DJKLCMviKN5U0iX+DJipSNJK9y5AOvzVbbcOPOZ+btMQpi+/l3G5ehiwxfbLAzJg4bdGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gEPLh04uJ2OX/gJIBEM2f7VxGl3D6f4P7FsyiusFzW0=;
 b=hUPa5v28ITXejogfF1mwsVfnU8PBa5dkb9KVaC8c2H5pbmiTx3+kK4AxTLnz4BpacqV9JRJek+MNHYZ53H1KPhmBlv+GGiZVF4GSYiTpMQDStAOFdn0/lGmDyc3IzTept0bJyx8jNTiIkSlO1oV2qs/3K6U7YHonn3vdaJpvauy5WWahRsvsugAHtNL0Xa/a1fqpn67eZfc9g23HzkbD2IVHjcRJiMkXrHcN4PqXvtFo5lC3oZiclRPW5LrhVPCgjgh2YegaxhXsHGm3/H60Ab2JXtvx4SJLnSrXcTDZIUmy6+iARzTPd1QCxlrowaYigQoe0uPnN4cVhO3gWrFxDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SJ0PR11MB4990.namprd11.prod.outlook.com (2603:10b6:a03:2d8::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.29; Fri, 16 Jun
 2023 20:48:03 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bdec:3ca4:b5e1:2b84]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bdec:3ca4:b5e1:2b84%7]) with mapi id 15.20.6500.029; Fri, 16 Jun 2023
 20:48:01 +0000
Message-ID: <ce07a11a-20eb-dcb9-22e8-489333a0799c@intel.com>
Date: Fri, 16 Jun 2023 13:47:58 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Dave Ertman <david.m.ertman@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20230615162932.762756-1-david.m.ertman@intel.com>
 <20230615162932.762756-6-david.m.ertman@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230615162932.762756-6-david.m.ertman@intel.com>
X-ClientProxiedBy: BY3PR05CA0055.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::30) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|SJ0PR11MB4990:EE_
X-MS-Office365-Filtering-Correlation-Id: 49c58828-397c-4644-e11c-08db6eaaf99a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dP2NXN47FqirvadCyhyNUH/Y8bMD+AJzorKa65XpsJwOcJmhFbSgWgH1U5n+TWg301LH0h8RGXSv+S7myRzMZmD6t3lD3poaBTIJaXGIo2/kmf1sMfJZyZGLAJnjS8N7Wz+TrKhBrh84ZSKvMLbQdQCK5RhzZ672JXVS680Tqm/mxjp6T1+mBIIZ+gSry6L89OcynT1oCsuinrE8rhhdVhjOE2+wMAr4L4eD+R9HphqIjcgeQIo2twMGwBcGmDHZfxeitMNKWqNgo/D9xe4Lc3H0LzN2fM1i6z91nEoUuREzgV+FZ6nvLtTHAkBEtNnK5rNQb1/gBxoCBs3RRifjYjKKD5UkGf+4DdTLDWKAw+2BhsisGwhkDcGepV4jtcYk7lZGCGEzqhjhpR7PJMOwU5VIJsvzE3wlFvUwEqAtc7+Xk4JeaHd9c/aWFyFaYO3yl+CWdyi/UtFWwM1AujcgOKTUPtcT+qTHFGSFLsa09mouVd+YbAdNC39Y7WiqYDQnBlUdbBUf/5YtrBKENdFj+ZIARpGJAOTma+AkNIjqix4LmjaFnTCG4xrsoM0Lh1iAvcj3aihyQ1QV2xtl+cON1HvVdq/Lk7ODkqBJuUuaKe+2NNQpQTmtlhZPCgAp5AgQULJSO8I+opG1269B84RkKg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(136003)(396003)(346002)(39860400002)(366004)(451199021)(38100700002)(2616005)(82960400001)(83380400001)(2906002)(36756003)(41300700001)(8936002)(6486002)(8676002)(6666004)(316002)(5660300002)(31686004)(4326008)(66476007)(66946007)(478600001)(66556008)(86362001)(53546011)(6506007)(186003)(4744005)(26005)(6512007)(31696002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZUcvQytCVms1Rnc0ZkY3R29ldCtnYlFnU3NBK0plYisyaUNGVDFoSjBVS2My?=
 =?utf-8?B?ZUsydXNBSEIwNDY0SUFWS01INGZsclVsdzV0b0dXSkpiRnZyM3ZjZnhWRDlI?=
 =?utf-8?B?Nko3VVFyZi9pYlc3a1FwVFcvN0RQbzVyT3hwNmxEbUV4cXc3bFJhNSszZHNp?=
 =?utf-8?B?THZyeUdKMzZ4SThuR1pQc1JHQnhNRWI4cVJNTGVaOTA1UndJNjNCT0krK1Az?=
 =?utf-8?B?K0dJSEFQdmdpL3FWblhncWFWbkFZUVRDaWYrbzM2M01ZYkRvd3VQVmFXL1Zi?=
 =?utf-8?B?VTdXTFFCU3puUHZKRENheEhHeVlDLzBuQmJjZnJrQUtKWWpMN1Q4bi8vQzNX?=
 =?utf-8?B?TmR5Wk5scm81dktlNnp3blFKenhtL0VLRytwU1Z4YzlLdjRKbHd5NUt3dkk2?=
 =?utf-8?B?RWdNZ2FJVWdNR0tlbUdvSmNqWldtRmFCSEtmeStRY3kwYTJEa1ljczR6OG1i?=
 =?utf-8?B?Rm85aGJWd0VrRHZNKzNtUE1GN1NMTmdsSzgxS3F1Ym54ZEhOMTdoYXhJN2Rx?=
 =?utf-8?B?dlZUYTRoTitLYXUxSFdTQ2Y1VlRjakNrRkFRQUVEL1lZNWxCcTRQazBiTDQx?=
 =?utf-8?B?YjkyYVUzWjdUZ1RaVHZCaFcvUTF3c3MrRVp6YjZRTXljb1k1K2p1b0l2eEFQ?=
 =?utf-8?B?a1hjNVpPMFFJTUh4VDBSQ1NYUFBBTnE3blBRSFVZN2NIV2dqdWlsRFZ2QlRJ?=
 =?utf-8?B?MEpXOVpsb25NQkR3M1dmaWVXVk9YWER3aXJ3ME1CVnhOdVhJNjVFKzZlNFgr?=
 =?utf-8?B?WlNVeTBLd0dXSzl4WGttK3hrSVorYTdqeTg2TTdvNXlsOVF1QjE1Z0x3bTFY?=
 =?utf-8?B?Y2t1Y294MFVXQXBQa1VPSzZXM0JPeWVaazVkejZlbUthNkllL085QmxDZ0hl?=
 =?utf-8?B?NzViM1d1SjVLNjU2WHpiR0QxM1djZkYxYW9ocVBpM3RxalI1Nm9zbjNkTzRG?=
 =?utf-8?B?NXVkVGxEVmlGSnBlREJYNndVSW5DOVd2TTFvL1QvOE4zRnQ5RUZQeitObkNs?=
 =?utf-8?B?RGdiNVk4TTl5U0k3NE9XMkZzbWRaeTc4Yi9oNHRZU0swMExqN0RlZFpqc284?=
 =?utf-8?B?S2o3ZWxoaDY4UjgwR08xRnloc0d1WGxzdFU5U1dmZExuSzF6akUvOHU3NXB5?=
 =?utf-8?B?cHI5bGRRRVBteTdaZVdhcEtsbUxyRGF6TlRDV0x0VDJaZCsrQkU5akJYbXR0?=
 =?utf-8?B?c2RTUWVrZUJ2bFRXWGJMQVRrenZ1V0ZpUXhBaXlRVTNtTS9ldFNCUFdmbnNW?=
 =?utf-8?B?djNsdmZkdkozTk1wb0FVQ2ZvRlNLYTRBeDBtdmVtTE9LV05mZktSeGc1dndv?=
 =?utf-8?B?aCtpS1Aybmc0ZHFjMzB3aUFacUQzUjN0b3F1UDlJeFFjTDcyYlRoV2NzSjZa?=
 =?utf-8?B?UmUrbHp2MnlIOXQ4Snl4NjlCQ1lGVGcrajBsTmJTTVpSRlNnM1hIMEtvNkl6?=
 =?utf-8?B?b0ZTM3pQbWFTcDVEY2tGSytVQ3VSVmNoeWZFMStmNDdvdHVhYXJhSjhoeDB0?=
 =?utf-8?B?RDkySURFVFREdWRuUURoNGlRVXlrMW9ieTEvajY3a21naitDWHNkdWlFUUJD?=
 =?utf-8?B?WU9FK0s0YjlXWEZOOXhOVjZmeHBLZHMxVnpicTFlVVQ5OGNraWhtbWRSOVZG?=
 =?utf-8?B?Q2pLcDZlU3U5VGRMRE5mOFdDUitOak5PK2dwb1BxdjczSStNeGw5NEdJd0xO?=
 =?utf-8?B?QjlzazBrN2tTU3QyNUhDSzBHeGYrMzZFTldCWjhaOFh3c2Y4SXZDb1kwUU5G?=
 =?utf-8?B?Mk9rbW96aHJycys5VVRkemtCZ3E2cmcxQzgzUndwbEVZRTJDdmFaQ004dDFn?=
 =?utf-8?B?dHA4bUViYkhQN1lDK2luYm5HQTJlcGF6L2tKVDFJOEdDUVhwS29lc1JubXZh?=
 =?utf-8?B?K2xsM3Bha1NHOWMyS0p5aU1RUXdyWWdtczJBSTlvQ1BPdEZRcTBXOFJVWmp5?=
 =?utf-8?B?M081MGpzbkFYdkNZT3RrM2ZQYU96czk1THV6Z0krRGhlZDhQV2I4d0JtaHY0?=
 =?utf-8?B?R1d3MHcrbkN4SHl0dHZBdFNhenNTMCtPdUQ4Zi95ZEVaT2dYMndsRWlIVFI1?=
 =?utf-8?B?RFdXcWJKYjQvallGRUlML2duSkdsdThub1BhV2lKN042YVFmaUFsSVpQNm52?=
 =?utf-8?B?QmVBdUI4eEo2Z0hzanBiYzR6THJqeW01dWZvSGxtMU5ZMTVCUlpFOENyNTdi?=
 =?utf-8?B?b3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 49c58828-397c-4644-e11c-08db6eaaf99a
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2023 20:48:01.6550 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: y8J0Tx641kV6jA3yhjFNA4MmQ5GUfzXr7GNNboGzZaDf6FtS/yc0esawzWgere61nJl8lLRbXvuysuAV4jJ9Iv9fweofr28kV9fbPYVPbj8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4990
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686948491; x=1718484491;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=28/TFo+RTBM5s0Mhe6ZDmrwX7nT/F1xEtOl3d+JuKLc=;
 b=D8HzvhujWD1bypnvvmb2BrSvVraUrBJt6xhzPCoZB17hhs+AS5Vovb9i
 c74WtsuGHGsgN3RlqhQ9r4C5KRqHxUg/b0MRKEEc6qThV93e4r0ZlCUJ1
 zLYUqvOSgVA3cGWagjppJ2Pw4Vi5T1dhuDo4crxnyie+iPq+aYmMV3Xhu
 qjpFkk1X/MvlyOdzOxhuea/NvbDWLM/PsGGa4Fl43dYgF0kpqRTa2XmEY
 m6WJiyPx6y1XiLBBOEbcBZCOChw3UeNVJScnIJmSsFu1hx4nN1URlbzg1
 GgOCd10W36y526jGiWKv5rxtkx35NdH2SmfqjixxwjEA56zBmXgizZlDl
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=D8Hzvhuj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 05/10] ice: process events
 created by lag netdev event handler
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
Cc: netdev@vger.kernel.org, bcreeley@amd.com, daniel.machon@microchip.com,
 simon.horman@corigine.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/15/2023 9:29 AM, Dave Ertman wrote:

...

> +static void
> +ice_lag_monitor_rdma(struct ice_lag *lag, void *ptr)
> +{
> +	struct netdev_notifier_changeupper_info *info;
> +	struct net_device *netdev;
> +	struct ice_pf *pf;
> +
> +	info = ptr;
> +	netdev = netdev_notifier_info_to_dev(ptr);
> +
> +	if (netdev != lag->netdev)
>   		return;
> -	}
>   
>   	if (info->linking)
> -		ice_lag_link(lag, info);
> +		ice_clear_rdma_cap(pf);
>   	else
> -		ice_lag_unlink(lag, info);
> -
> -	ice_display_lag_info(lag);
> +		ice_set_rdma_cap(pf);

pf isn't being assigned. Clang reports:

+../drivers/net/ethernet/intel/ice/ice_lag.c:657:22: warning: variable 
'pf' is uninitialized when used here [-Wuninitialized]
+                ice_clear_rdma_cap(pf);
+                                   ^~
+../drivers/net/ethernet/intel/ice/ice_lag.c:648:19: note: initialize 
the variable 'pf' to silence this warning
+        struct ice_pf *pf;
+                         ^
+                          = NULL
+1 warning generated.

>   }
>   
>   /**

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
