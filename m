Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A270F786C23
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Aug 2023 11:39:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9267D61395;
	Thu, 24 Aug 2023 09:39:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9267D61395
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692869943;
	bh=4s1D8ck0i02Z+HJPp/mYxT4uomt/Yn9gMUNSVs/52AI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jyVRDipsCvgJIqLhJk1uEioR43ln+TzsuO20GD83anm6jtEk5Gc8nG/aanHR9GkSa
	 LVuFqkRjA/oa85/97Xc3spWqmAk8sdzhGlVmW3gmaPTTo5eGiZhfVJLXI/4k43T75e
	 Phn5UxDjSZMJU/WGfrbCzKhLJ9c8gED+AAc/CY72ISfWXvTd9W1WQMNk+SsFd2i0fb
	 Hd/9f79bFr7zMfN7v9inWlZCm7PSBgsInoeza1b7/8yKc+89oXoo5kD3ucQNeU78MB
	 xTHva+uAdCp334IF2NNJF+unl7lxP81Y5noRf96ryzyRZOSNnuqPhqdaJlO/IYBAG1
	 xWmmOC3v2g7Jg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z88kIMaXU6BC; Thu, 24 Aug 2023 09:39:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 582E261393;
	Thu, 24 Aug 2023 09:39:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 582E261393
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 960741BF860
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 09:38:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 665C381344
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 09:38:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 665C381344
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y4mp-uKZPUQF for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Aug 2023 09:38:55 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B8752812E6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 09:38:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B8752812E6
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="373276039"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="373276039"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 02:38:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="766474665"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="766474665"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 24 Aug 2023 02:38:50 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 02:38:49 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 02:38:49 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 02:38:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hApfXGx+hZm/DZXwGLTAM/nnom0z8F1ZG/AaxdrP1DyoPkIyTo5/+V9uyPi5FDygxUN/H86C7KGNoT/t32UPnP4m7fo2dbAp4c+rzVTMs4F17IWkbp0JhV03w4mTG7635wq3nVwEzCBEy8Yt33VaM4gS+scLzH1fOk3yUANxgmE1V5+feZcwzS5rz/Qp57Kq6MK9mimoIzXPpNwD0Le9Ki3jAFzI1j9vUFmfG4rM/DnAS2L8zEAi64paOSpwCoWf+7wkxQXy2t/u1D+ZSIamdDvAzCC8C+PXXXeOQCMUrctVzQPDjVRNukJ5duyHcHAJSF2oeO8m3PhcP8kCYrXFpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PmIh8aQ9Bwzx2pWwTqg1km7I/lXnUJl09F34E9khFk8=;
 b=gIRH1L7OKWrO3d7t8BRJiO7QWu7VwNd2UcVOxHFl13T2QSKRS/x5bSp8fO5iAhggF+QIR22K38pqFAfAeGf60Z2bkb5H4B6FMu1ILqB0J/E1XNWsU7Mgn1SYf28kljXvhf8WqTX/hub1bY9BF9xjUiuHAk4YY+ksFie6RJAfRmW9Aqb+nGbKeMJbAXckUHEcwyJloo9YVf7PpOIVtFqHH18GLprrMjVb+1NLGmle2ZK58leMEuFLW0JXlI4moCF/+wC+Eyu8zdY9RzYMhLhL6nLcueY1zvdJ9yeVXa09XWdzjhQbFETmomK79S8lWIxJiBD1Yi7SZ3AO3k8lb/Fsqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3674.namprd11.prod.outlook.com (2603:10b6:5:13d::11)
 by CH0PR11MB8165.namprd11.prod.outlook.com (2603:10b6:610:18e::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Thu, 24 Aug
 2023 09:38:47 +0000
Received: from DM6PR11MB3674.namprd11.prod.outlook.com
 ([fe80::7f4:c05b:358b:79c4]) by DM6PR11MB3674.namprd11.prod.outlook.com
 ([fe80::7f4:c05b:358b:79c4%7]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 09:38:47 +0000
Message-ID: <8534aafd-b2aa-d26e-9e80-b64f45118ede@intel.com>
Date: Thu, 24 Aug 2023 11:38:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Wojciech Drewek <wojciech.drewek@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230824085459.35998-1-wojciech.drewek@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20230824085459.35998-1-wojciech.drewek@intel.com>
X-ClientProxiedBy: FR0P281CA0267.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b5::13) To DM6PR11MB3674.namprd11.prod.outlook.com
 (2603:10b6:5:13d::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3674:EE_|CH0PR11MB8165:EE_
X-MS-Office365-Filtering-Correlation-Id: 25aa9d07-a4e7-4ddf-3d96-08dba485ea63
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DrorGKAA9ozWeCzGILsLYB974/LPPijM9fRtukZmc97lBXih7M8eHhKzsSqLEySlVT4P/z3k4fz7jGCp1CIMBm5Hwsn5WZgWsc6yVx/9yTFbDCYXxfCtB0Y0lUMXt7lnD2tF3sz/GF4FqgqbfYdplqvj03aKLOOElRlDn/6CCxUmF6gkQx6DuAsWLmSir11p9ApEkIKlXdyzcj/6gcRzySSYQL3m9X4I/tjoaDAMOtdhuJ+M/mvs02252B7GOfh30uMJyNO16vEmxAXrffEMSKbMr2svxZJ2jookdXvAw+n6i3fIqkaEQa1PM94/Hfp+fx0ArwgggJ/an0fe5K6y2yH1dIOknIWy+/IwSU820/fUA3IGLR9fEElCc3gFOxEPXtImKTwgV9lChL+i0MRaqx6fg/c69VO5jMaelLVv/J2pFvzTTQpar8WwO0cV7nJzNwB9Wn/04bS4KwFXYIhz/lYrrpbC0c1U5bp8XVpTDcUFXsrmoWVQ33KQbzSVDsr22nL6xSBHShDSm3lo/P+1ABI84pl3xEmUrmOpxOF2yowro6q3vepWYm7V/Fgx6g8nr77kOVXddx9/MMRChAjgW5mVh+H7p2/D+8yvZl1tzipyJvl9qY6a799i9JyYiYelSXizTsbcrY983hqm8k0eHA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3674.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(376002)(366004)(346002)(396003)(136003)(186009)(451199024)(1800799009)(31686004)(6486002)(6506007)(6666004)(8676002)(36756003)(31696002)(86362001)(38100700002)(82960400001)(2616005)(83380400001)(2906002)(26005)(6512007)(53546011)(478600001)(66476007)(66946007)(4326008)(8936002)(5660300002)(41300700001)(316002)(66556008)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TWphZ0xUSVVkcGJqTERES2xLYnRPN0xpdTBsM1gvdG1NaG9mcGFZM3gvdWdo?=
 =?utf-8?B?VkRlY3JydGN2UElGa3Y5ZjF6SkJTRENhcWlmRnl6Y0ZnaDBKN1FxTkUyZ2pQ?=
 =?utf-8?B?Z3hIRm9WK3h3WGhVVkxrRFlDQmFTYUVzV1lycnZwVzJYQTRXTkM4VFFNMWtW?=
 =?utf-8?B?SnR5ZFRjejFGWXNpRFFUZVh6bFJaSVp6Z3JNTzBldG5BWmhDVzNzRUl0YlN3?=
 =?utf-8?B?c0dDcmxWYW9WaDRUR21qbVd4VDg5RUdWSE1yVDBwb2puL2grSS9WQTdPQ2E5?=
 =?utf-8?B?Zm43a0sybkRNZ2dNRlp3VWtzN3JYdlNaRndEUTdQOHlpdUtHZGlRZmlzTlM1?=
 =?utf-8?B?QWNnclp0Zm5nMituUkxFbmVuYWdVMmg3MnNQNE4zVW5sK1BybmZJNkdwL1Jx?=
 =?utf-8?B?dGhQSHk0Q01uUDZ6NXRFbThBOTFhalYwMTNBcEhqRTJUcnV4MkNKcUVDNVNN?=
 =?utf-8?B?TUdQTSt2T3paRVBCRldOZ1AyVFdkeEtQTllraVdjckNtaUpLTE5vcXVHYmtv?=
 =?utf-8?B?MTlXRGpBc2RaOWVZWXNlVGdMS3FTUGFUalU4eERJWjFEOEVKMi93dThlczBP?=
 =?utf-8?B?NjRtR1UvOWJlQ1FaWVByU21McEZ1YkR5ZUhnSUVlb3BRQXhJZVpRbE56WExT?=
 =?utf-8?B?ZWUrSlBoaTgrcG1YRi9wMXVlNFk0L0pKOWN2ZHpXWFZPcXlaeGhST25oMk1m?=
 =?utf-8?B?UFdQMTBpaHZYOXVKOHFGSlh0OXBqcVkrVTdqQUpWZTNJaERRRkVEdTBZNkRv?=
 =?utf-8?B?YzRCUWs1Q3VOekY2ek9GMTZSWHFWSFlQQnpOL1pKaHU5alRvRU5va29mOFAw?=
 =?utf-8?B?U3lYSFJiZlNSK01GTmhwZGlEamJqL3BzNng3ZnpJa09MbnBrdDBxMVdiMlZV?=
 =?utf-8?B?Y1N5UnVHS0xwMWE0M3JIWnJ4bjZHcHY5UkFYalI1cUhuejBmMG9oTHd5dHcw?=
 =?utf-8?B?NjJmamdoVmxlbklvYXpuZjlTR05kOExJZUZJK3hMMzFtNGJ5RFFUQVJEUlhn?=
 =?utf-8?B?Yys5Rks1Y0VDRExvd09UcHVZZXVDaWJQRXV3WXVaNXhydkdlbUpVczEyZUlZ?=
 =?utf-8?B?WjY2MGY1cng2Y2V0emNrbEhSMzJPMGJQME1VMkJMSDZDZ3laVkpuTjdZTTR5?=
 =?utf-8?B?dk5DNytwbXdJNUd0TjJWK3VBRnRHejhnN29aeG5YdEJVbXExT0p6dEtRRGh6?=
 =?utf-8?B?VjRwaHN1SldocmszYXpCdy9TRWVoVysrMFViN05uL1BOSlZGWDBDRStTQlcx?=
 =?utf-8?B?YTg5Rk9RTDFHak8rMHNXbVlPbFYrTEZZV0Y0L1N6UG5GSE5MenRSVUV0TWdB?=
 =?utf-8?B?UXh3MUFGUk1NN0RIVGEvejUrOCsrNmNuNEdTa3pjMnBCOFpvVDBSWW1Ody9C?=
 =?utf-8?B?ZUZNR2UweitGaTVUOFFUTjlqQ3FBQVZSbUE4OGNzT2ZzTDZOdGpnS0g2YXQx?=
 =?utf-8?B?cEFUOUdiZHpTanlRNnJqSkFzOGZVemdHL1EzcC95NCtsZUppSzNlY2NjZW82?=
 =?utf-8?B?UjFmK0xDMlB0dVF0OFM2S3E1RTVac0h5N09UNE41Sm14RnEwWUlqN2FUSjVY?=
 =?utf-8?B?K3NhVUFPMkxpajVoSnVKT2xnOElzZEVaWmtjbisxWlBSMGdvMTBvRGtwcWJp?=
 =?utf-8?B?dURKSkJWODFUamk1WGYzcnZFenFHYkZIY0FtSzI2Q3Jac3I4VGZzNzJoanM1?=
 =?utf-8?B?Rmg2YkxSSDZBQUY2VnRhYXdocU14L0ZWSTBLSEJOc2duc29JNzBRUjVhbjMz?=
 =?utf-8?B?K2RHSVg1TFhhTWl1cWN6TEtzZXlUeGVzcncxZzJtN2pZSUhudzZXQVNjcjdw?=
 =?utf-8?B?anB0T0FhRzE4anVqWUZiTFF6aDdSV1p2ZUhXOHo0NDdneFQ2UVFQb0dGbVlI?=
 =?utf-8?B?UHN1dGl1T3hsRFh5M3lMYWZ2bSt5S0hSZ3Zmak13bHFVdUEvZDAySW5DdXZh?=
 =?utf-8?B?SHh5Q3hYZlZKQmZ5SFVjNXF3V3VjNU1iejJyY2ZrOGFWTWtZbnVzU1VnM3lz?=
 =?utf-8?B?dUF4amM5b0V6Rmo1SzA0TDlIcThoeFBOVTAxVmVSZGFvKzg0eUZQTlpTMGVE?=
 =?utf-8?B?b0kyVEpCMk1BaU5BOHowdFNnUCtXTjVnVzdQQkpselJCS2hUTlNHd1JYdGNj?=
 =?utf-8?B?RWtUVHozYmQxWE1XVVVieXV0N2twNFRFcFdXd1Azc1VwSmsyNzE3dExtUUdC?=
 =?utf-8?B?TlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 25aa9d07-a4e7-4ddf-3d96-08dba485ea63
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3674.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2023 09:38:47.5254 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HIrT+U1mgSdN9V52yRAJyevWERSEpwjAmfq0aeZlXzwI2FOCF2kr8VWZiY80WAcO0vbatOID3Su7J28CxIXBy8HTpFhPZ3zZciuiDlg+Uz8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8165
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692869934; x=1724405934;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ukrjF/OFaG3f0Zdl2KSvLhxdHTU22sscPscGmLj7Ka8=;
 b=HTt7hyjhDvwmiV0AaSEA0jzaU9k65z0xa2WMDtI7axpBkzZfFjoj7o+F
 SRUF3Om/3k8OvZpLHleXNr1mEL0WYQ1Ud4PUrKmvG88lHrtOFZs/4eixv
 zVLEe+QaD8ijsvuXY+GHBW5A2M05J18Ak1ZksAzdxS4JB28qSJiwZzAUk
 NcCmrpVGi0bX10oBUFJgzqTckWvAtJEp+Zku9oWpPvG58omm89Kru/zLx
 roMnozkHxtXljW5ls78ZnkZmR/SP0WpZxE1mOADojm+Rkq4+PUpEN1/gh
 jJkNZEWILOEBb2JeNl6K0jsqdqxnxDuDQifbwOC7Pc3mgZcd2SoJtjn0v
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HTt7hyjh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Disable Cage Max
 Power override
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
Cc: netdev@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/24/23 10:54, Wojciech Drewek wrote:
> NVM module called "Cage Max Power override" allows to
> change max power in the cage. This can be achieved
> using external tools. The responsibility of the ice driver is to
> go back to the default settings whenever port split is done.
> This is achieved by clearing Override Enable bit in the
> NVM module. Override of the max power is disabled so the
> default value will be used.
> 
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
> v2: Move ICE_NUM_OF_CAGES to ice_adminq_cmd.h,
>      ice_devlink_aq_clear_cmpo doc changes
> ---
>   .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 11 +++++++
>   drivers/net/ethernet/intel/ice/ice_devlink.c  | 32 +++++++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_nvm.c      |  2 +-
>   drivers/net/ethernet/intel/ice/ice_nvm.h      |  4 +++
>   4 files changed, 48 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> index ffbe9d3a5d77..01eadeb46db2 100644
> --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> @@ -1569,6 +1569,17 @@ struct ice_aqc_nvm {
>   	__le32 addr_low;
>   };
>   
> +#define ICE_AQC_NVM_CMPO_MOD_ID			0x153
> +
> +#define ICE_NUM_OF_CAGES 8
> +
> +/* Cage Max Power override NVM module */
> +struct ice_aqc_nvm_cmpo {
> +	__le16 length;
> +#define ICE_AQC_NVM_CMPO_ENABLE	BIT(8)
> +	__le16 cages_cfg[ICE_NUM_OF_CAGES];
> +};
> +
>   #define ICE_AQC_NVM_START_POINT			0
>   
>   /* NVM Checksum Command (direct, 0x0706) */
> diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
> index 80dc5445b50d..2bd570073bdc 100644
> --- a/drivers/net/ethernet/intel/ice/ice_devlink.c
> +++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
> @@ -591,6 +591,33 @@ static void ice_devlink_port_options_print(struct ice_pf *pf)
>   	kfree(options);
>   }
>   
> +/**
> + * ice_devlink_aq_clear_cmpo - clear Cage Max Power override
> + * @hw: pointer to the HW struct
> + *
> + * Clear Cage Max Power override enable bit for each of the cages
> + */
> +static int
> +ice_devlink_aq_clear_cmpo(struct ice_hw *hw)
> +{
> +	struct ice_aqc_nvm_cmpo data;
> +	int ret, i;
> +
> +	/* Read Cage Max Power override NVM module */
> +	ret = ice_aq_read_nvm(hw, ICE_AQC_NVM_CMPO_MOD_ID, 0, sizeof(data),
> +			      &data, true, false, NULL);
> +	if (ret)
> +		return ret;
> +
> +	for (i = 0; i < ICE_NUM_OF_CAGES; i++)
> +		data.cages_cfg[i] &= ~cpu_to_le16(ICE_AQC_NVM_CMPO_ENABLE);
> +
> +	/* Do not update the length word since it is not permitted */
> +	return ice_aq_update_nvm(hw, ICE_AQC_NVM_CMPO_MOD_ID, 2,
> +				 sizeof(data.cages_cfg), data.cages_cfg,
> +				 false, 0, NULL);
> +}
> +
>   /**
>    * ice_devlink_aq_set_port_option - Send set port option admin queue command
>    * @pf: the PF to print split port options
> @@ -623,6 +650,11 @@ ice_devlink_aq_set_port_option(struct ice_pf *pf, u8 option_idx,
>   		return -EIO;
>   	}
>   
> +	status = ice_devlink_aq_clear_cmpo(&pf->hw);
> +	if (status)
> +		dev_dbg(dev, "Failed to clear Cage Max Power override, err %d aq_err %d\n",
> +			status, pf->hw.adminq.sq_last_status);
> +
>   	status = ice_nvm_write_activate(&pf->hw, ICE_AQC_NVM_ACTIV_REQ_EMPR, NULL);
>   	if (status) {
>   		dev_dbg(dev, "ice_nvm_write_activate failed, err %d aq_err %d\n",
> diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
> index f6f52a248066..745f2459943f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_nvm.c
> +++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
> @@ -18,7 +18,7 @@
>    *
>    * Read the NVM using the admin queue commands (0x0701)
>    */
> -static int
> +int
>   ice_aq_read_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset, u16 length,
>   		void *data, bool last_command, bool read_shadow_ram,
>   		struct ice_sq_cd *cd)
> diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.h b/drivers/net/ethernet/intel/ice/ice_nvm.h
> index 774c2317967d..90f36e19e06b 100644
> --- a/drivers/net/ethernet/intel/ice/ice_nvm.h
> +++ b/drivers/net/ethernet/intel/ice/ice_nvm.h
> @@ -15,6 +15,10 @@ struct ice_orom_civd_info {
>   int ice_acquire_nvm(struct ice_hw *hw, enum ice_aq_res_access_type access);
>   void ice_release_nvm(struct ice_hw *hw);
>   int
> +ice_aq_read_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset, u16 length,
> +		void *data, bool last_command, bool read_shadow_ram,
> +		struct ice_sq_cd *cd);

@cd param is always NULL, we could drop it
(not necessarily in this series)

> +int
>   ice_read_flat_nvm(struct ice_hw *hw, u32 offset, u32 *length, u8 *data,
>   		  bool read_shadow_ram);
>   int


Thanks,
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
