Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3848C7808C2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Aug 2023 11:37:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EF8F84193E;
	Fri, 18 Aug 2023 09:36:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EF8F84193E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692351420;
	bh=Qco/IZVrgmOPsmxFNfGxc/EEfuZucYdhgySYRUwUPek=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xzcamGOXyBPFpCXPbZ4Z2mYSVpgn8I00vAtXckOvws5enYlSLsLJLGlma0pZTlft/
	 ZVRT4t7cXl204v6U3S0UPbXPgWlWDjSAfxYGvxW1lbit6CUQDCqgSSqFE/+9i+DO0A
	 ZzeXsdR72HqhZAczRISkeAkldh4ftLfZngTksj0bDALEM5dzcEi0yGm67g0HcPIkBc
	 SOjtYap8BOBFTqYHYjfoHVpDxH7+hKqW+cODy3NEVveR35aWm8XLDm0lfdwxOneQ11
	 O4XulYa2AZZ4PbxmpuX1F5Arzvcc4YiXBbAKLWtlH9c4W64MO0b3vHRpev+fA/rBpf
	 0lKmprrzNUrAg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nZU_6J8SCZrZ; Fri, 18 Aug 2023 09:36:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C7575418D8;
	Fri, 18 Aug 2023 09:36:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C7575418D8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B54951BF369
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 09:36:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8A74040985
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 09:36:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8A74040985
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 79iZ-vukbaaL for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Aug 2023 09:36:52 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0236240062
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 09:36:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0236240062
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="436972018"
X-IronPort-AV: E=Sophos;i="6.01,182,1684825200"; d="scan'208";a="436972018"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2023 02:36:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="878627009"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP; 18 Aug 2023 02:36:53 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 18 Aug 2023 02:36:46 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 18 Aug 2023 02:36:46 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 18 Aug 2023 02:36:46 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 18 Aug 2023 02:36:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jy0VXwDtmOsyqTquL+6sLf5tg5NBKx0DWZfr9+18KPXJKUMx+Az9TtpSOhjuQsbdYhMIMbmJKPet6Ywcixo6qOEbfD8WptC7z+DChKY90A2zXPe99gozYSX8gFB1o2FEJYfqFrbv1VYt17H99dCqHYhpHZjOTRYCmA/5PsJe9G1oYbvQGcPDJoGjRuwaO6FhfFBcfqEtCrTrSuVDfOUJC4aOEXVwRXNzLqQWelHDzsXNapl74mtiUr31U71+o491vyiphqG5TYccUvWbYVFJva75liKuPv/ZZSsTFA8C9jFIJd1lszNbfCxiOKvqOoOP6bCLCnIyelaXAsY98vaSuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uJDUoIL3e4i1stsFE//B3q2IgBMgdnNeN8cGtaVIO9o=;
 b=dNIfNzY8ci68CvC4ZzQ5fz1yVZ8e2Y7aB4y7ebWR0sGflg+5+88jP3nizGsWMbQTgxzxfEJNDSx3TdyIcJ1wkFL5mjhOy7JHjEeN5rhOUI94ir13fiz8zLFKy1mvGjXSFnJgZtjbS30WCXaGPhmiDut9QugZIpNbo4YY4bFuP7R5i7X3S024s1QnqLqupP4bJgPM4vhEnh6l9lsVQu0sdJYAsXyRR/38ULEytH+7E6OxXkilERVS/DGwPaF+vRCv7i7D9DfxHLTXNoccxyNwG39yB8uSGl9el3qM3Vg29N1evT5Ezpmw/JSy/T2RJn2CS5GyNeRBLXosxkd+2ycdiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by SA3PR11MB7978.namprd11.prod.outlook.com (2603:10b6:806:2fa::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.31; Fri, 18 Aug
 2023 09:36:44 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::c45d:d61e:8d13:cb29]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::c45d:d61e:8d13:cb29%3]) with mapi id 15.20.6678.031; Fri, 18 Aug 2023
 09:36:44 +0000
Message-ID: <4e6a5cee-4ebe-7cc7-28de-2d7af55a9fce@intel.com>
Date: Fri, 18 Aug 2023 11:36:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Jacob Keller <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
References: <20230817000058.2433236-1-jacob.e.keller@intel.com>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20230817000058.2433236-1-jacob.e.keller@intel.com>
X-ClientProxiedBy: FR0P281CA0205.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ad::19) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|SA3PR11MB7978:EE_
X-MS-Office365-Filtering-Correlation-Id: 2d8eda07-3107-46be-7d0b-08db9fcea217
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: D8xE9h5DMEGvRxEKVs3z30BZNYcYmekHk1OjsaQwOEsE0xQ3p/j4wiRJVneoTJEMIDdBXitLc8R/qxED7cMsao8PCXJlmphbenKSxpTlGXQaEWOGU880IR2OaPg/X/ouM1KEtmiaEEi1IeDSxYx6vaD+1s+S0CWwKAKtzPmifssfoZry2dzrbu2hKmcKvDWEj4Or/ut88EQV4Yypavhoz1nbzmXEkD9rluzkXIjIOe8yJSIwdI8Ney375Ht3uLBnep6Uw1PEOL2kuz7qvBXWm1JiNcqByg4VSP83IoDpYgOrgGrOn+P2tFp4U1d6lQ5ONiRVBj0G+CSoek12gK/q24dMa2aAdeorzHJihXlovsXDKtXK5QJ5xZBMQDSlnSOb1aUrmiZJ+sj7vaM5pM3l1CquNm9vN/85XZixSqOxjVOXfjnIrDEWY95P7WUm+Zz07IUXYrUzPzR0Q9UqoP/VEIW7i6h0kF2ppRO4SFrdz2DftqYlWQlZDFERgpAW9w1MSmsYy+GlTCF59DXJvkKlwRlruDQYx6ItNed+U7eh1tSoLr/Qv+m+3ib7DZ1Agt2NpTXi8dksRjT/euvs362FMsp+ago5imc7XBEx+zsXNwRncLkiWoYtJJPoao2xihpbh0Boo0cesoCW1cXt+RQM/A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(346002)(136003)(396003)(39860400002)(186009)(451199024)(1800799009)(36756003)(86362001)(31696002)(31686004)(83380400001)(4326008)(8676002)(53546011)(5660300002)(8936002)(2906002)(41300700001)(26005)(6486002)(6506007)(6666004)(2616005)(6512007)(478600001)(316002)(54906003)(66946007)(82960400001)(110136005)(66476007)(66556008)(38100700002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cCsva3pRYzJPRzE0c2s0b3B3S1RaS2oxTzBkNm9wQlpIVDhzeUc2M21ISTRm?=
 =?utf-8?B?bXpXWnFwb0EvY2xCaG02WVkrRHVsZm1sdnhTREtTZWJQYWRaZXJudHk3czNS?=
 =?utf-8?B?OEpudjdjTjQ2ckFkeUpDVkRaNHg1aytFbUJGL1dhTVpjWGlrVmNYY01OaU95?=
 =?utf-8?B?VmMwNDBlQWdmQUFwTm1YL1BHZUNEZ3hWelBPdkd4aStiTU4rM2hHZUZPS2h0?=
 =?utf-8?B?UDJ0aVNHNWVKSndVYTg3T2lNRmtvamhteDBEK1NEdVU2WVc1ais5eW9HUUxC?=
 =?utf-8?B?dzF1YWJPNWcwd1NNQlNZOVZITm53aEpFVjhtQnEzQ2pPY1RpUEovVWMwSlV2?=
 =?utf-8?B?YjJEVklmS0pwdFIxOXVocTFyRm1CTkR2eWZEcVR2L081a1I2blhTUVhJTzMw?=
 =?utf-8?B?NDNhUGkrN2FzV0lxMjdPSFA2T1pRL24zaVhQV1BRN0pLNkZ1ejhyQ3dvRnNp?=
 =?utf-8?B?K1hxQjE1YWdHcG9udi95NCtOamY3TzViUFNhVjBwYjQ5cisrbHhja29YTHJY?=
 =?utf-8?B?bDBKUnVmZ1NMT20rVXBmT3gzWmNYSVZuNFF0aTFIMlBaYms5cUhNR1hPSmQx?=
 =?utf-8?B?aDNjdG5XM29XRFRLWnlaSmZxRXVVS01pOS9rNnZhL0dtWk5FYkViUlFibk9Z?=
 =?utf-8?B?RHNBTTlyUEg3bCtzNjltZ2xyZCtwMXVqWm51cSt0N0xZamhIaHJqRDdnem5y?=
 =?utf-8?B?MVNvbWdOT0d5VHhIV2szQkMzUGZ4VjZ3dk9UM0NtZ1pLUXJ4Y3JEN1luaFQy?=
 =?utf-8?B?bjNEWDFoV3B1VWhDM3diQ3BvV2JjV2QrRk95NUNmYXozeThJRVlyUm9nbStR?=
 =?utf-8?B?dU9GbXBXM1BDd1hkVnhZUEV6Z2s4VTdzNmcrQzRHN1JsaWd2QjRDN2tzMW16?=
 =?utf-8?B?QW4vQ0VmcTVUcHJhSEVnRGhrajJqakptdnZXQ1BZUENET0RFTXhBL1U3c1Fr?=
 =?utf-8?B?K1pyS1BTTUNCL2NWbFRmYXF6elBEZFBhaGlsTjY2WUhuSkZqeVQwbnhrZk9P?=
 =?utf-8?B?UlVVZmhFQy91MmZJQVo5ZGptdlF6K3NzYkxoZnZzeUZSMmZNZGNCa2Y0a3Bk?=
 =?utf-8?B?ajExR0VSSlB5b2dxakNBMXI3eHYvSjBpMGJMNGUzMm55U0Jiekt2RGFvbWEx?=
 =?utf-8?B?OEFLejFBeHYxajhISFlqM0xYdWVqcnhPeTRMR3pzQWtlQjVzRkkzZTA5clo4?=
 =?utf-8?B?Uno3Q0tibFBiZFY1bjY4dkEwb0d4NGpJekdkaUt6SjQ0TGpUQUFmV24rN2Vz?=
 =?utf-8?B?Q25PdHNSZmp3RGthUFBPbmFaL3dVaWRRcmtQZjEzZmZrMHlEdkdJK2t1Mmhp?=
 =?utf-8?B?UzZUOVllZlVzYkVTTFV3STdTaTR2VmJRZ3NVQ2Nwc01NTHdhcGc1blBWNU9W?=
 =?utf-8?B?MDlNRnBUUlI1QTNzbHdMUjJJRWd5SW43Z1Q0Y01lalZ0d0Z3WEFLam9vY0NV?=
 =?utf-8?B?UVQyWkJTbVBTYjJVYmozS1NNaDFxcWh4cHB2QUtZS3hEMnllRlVxam5URmdi?=
 =?utf-8?B?RlRKM3E1SldOaDdlOUhVL083cHVGNTJteUdiTm1TU3FoK2Q4RHdNdmdLVDhG?=
 =?utf-8?B?M0s5MWxIWStJdmZqTllRT1Y4c1NWKzdtNFJodmRCL29xRlAweFA3T2N6Rzdt?=
 =?utf-8?B?R0Yya3AwVXZSOXh0dC9XcTRLZWpUNS9jaFFtT0poQkVyUzBDMG5xeHQ3OTIy?=
 =?utf-8?B?VUw3UmloOG1uSVJ6RHNGcTJYZjRHSS9KM29KSnkxeTFOL0NmNGpuMGhnRGxD?=
 =?utf-8?B?MXkwY1NPUnVKbm9maXYzZ3N4d1JiQ1hiL2NMRUQ5cHptUlhERTBFYnJ1ZHdC?=
 =?utf-8?B?L1ZtS1J5cHU0RGJWbUQ2L3dpeTFJRStPWmV3MXlzVlFQczRxVnRpWHJSc05h?=
 =?utf-8?B?dkQ2d3RQWkVNcDFJRU1CWE1KUS83UjB4NEkwcFVtR2tmSlFWZHQxdDNYV3dK?=
 =?utf-8?B?NkM1N05lSXFjdmgrd0FVeG9BM0VkeXV4WU9CRnRuY1lJNUJjenozNC8zSnNH?=
 =?utf-8?B?VWprZGZrODhiWWs5OWdhVnVmQWRJS1RtMGNBbGtPZXJyRVdsTmQzSnpsU3dE?=
 =?utf-8?B?Y2pIMThDM0ZOdU9YMnV6clZQc3ptdDNwejZETUM2VVJKOU5vQ0l4ODRWbTRP?=
 =?utf-8?B?eGlHeTBGeXdLcmptM0g3YUkzQS9pRWdCSk5nR2FxS015ZDNtYXo3N0JGcGNZ?=
 =?utf-8?B?VlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d8eda07-3107-46be-7d0b-08db9fcea217
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2023 09:36:43.7865 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MSTY5OGo6kzy6OzRsCx5u/XicQ9ITs7bbKVq9tlmInlE4LCUwWW/PlmOVXKDCulZvN1pOgshBMmhVzKNNdud9W++ulZGlum8CZ+exc0+XNc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7978
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692351412; x=1723887412;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GXjzHa/mh/ophMZMIBS+P2sammYAnYmRFO64KoDxbho=;
 b=nTgpa4kYfxomXBBdim0dY9B4N/JHWBjFT2OqHVafS1RdfCWfvztCFSo+
 u2l1bnjRYXku3Q10PvGahdMQw6bnsr3ORGiz6If3vmA5gj/ySGbVNdf2E
 oSyslF20wZEYVFved611XKHN6OU9LE0orTRuP0ZlYChaxtEsu6+/t+BKU
 uDIzIaryLC0NNPQHYEwTcEtvJAwga5rQyagUu0trW49Bq2yhJSjLhaWwG
 0OEc8wM3w+1JBIcriC8JB55wrDZJjWfxyhu2u3nx1FuBpFNm9dbgbC0CU
 hvIAt/X9FVQ3mhnCZ4wrs7AZu3uGy4CLY4ICWn1ZTEGKi+38iUrUntD0o
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nTgpa4kY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 0/5] ice: refactor PTP
 feature flags
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/17/23 02:00, Jacob Keller wrote:
> This series refactors and extends the feature flag detection for a couple of
> PTP feature flags. This includes ICE_F_GNSS and ICE_F_SMA_CTRL. Instead of
> blindly assuming the feature is enabled on all E810-T devices, check the
> netlist to confirm that the feature is supported on that device and
> platform.
> 
> For SMA control, this allows the driver to fallback to the fixed pin
> configuration that is supported by default E810 configurations when the SMA
> control is not accessible.
> 
> For GNSS, this ensures that we do not attempt to read the GNSS portion of
> the device if its not present, avoiding some unnecessary warning messages.
> 
> For ICE_F_SMA_CTRL this could be seen as a fix, but given the scope of the
> code I decided that its next material. I think of it more as extending the
> feature capability to support pins on more platforms.
> 
> Changes since v1:
> * add a patch to fix E810-T pin counts when SMA is disabled
> * use FIELD_PREP in ice_find_netlist_node
> * reduce scope of variables in ice_find_netlist_node
> * remove unnecessary local variable in ice_find_netlist_node
> * rename "present" functions to use "in_netlist" terminology, and move
>    them into ice_common.c
> * call ice_is_gps_in_netlist_e810t() from ice_gnss_is_gps_present()
> 
> Jacob Keller (5):
>    ice: remove ICE_F_PTP_EXTTS feature flag
>    ice: fix pin assignment for E810-T without SMA control
>    ice: don't enable PTP related capabilities on non-owner PFs
>    ice: check the netlist before enabling ICE_F_SMA_CTRL
>    ice: check netlist before enabling ICE_F_GNSS
> 
>   drivers/net/ethernet/intel/ice/ice.h          |  1 -
>   .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  8 +-
>   drivers/net/ethernet/intel/ice/ice_common.c   | 77 +++++++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_common.h   |  2 +
>   drivers/net/ethernet/intel/ice/ice_gnss.c     |  3 +
>   drivers/net/ethernet/intel/ice/ice_lib.c      | 11 +--
>   drivers/net/ethernet/intel/ice/ice_ptp.c      | 12 +--
>   7 files changed, 101 insertions(+), 13 deletions(-)
> 
> 
> base-commit: 361b86237e1afbf2c3be7cb604b6aac6f8b8c38c

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
