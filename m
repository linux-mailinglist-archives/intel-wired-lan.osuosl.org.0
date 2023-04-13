Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA5F56E1280
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Apr 2023 18:40:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 264B240606;
	Thu, 13 Apr 2023 16:40:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 264B240606
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681404022;
	bh=zLckqFWG6U/JT4XiulC1B0lS+UCt7LT4Wz8QI89uF4I=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6zeXuHAImSlI+GY9AhOiqQLK22JGCfSg5tf7AvZ/1e99qFOqYKWa84YMA2y/Z0Vco
	 FOCyJeQ7o0EECenIW07ofvlizWU0Xe0j+Av1xqQbOcOYo0tlzu+BvVnH+wdtyTdTYE
	 kBoulKh8mCiHxe7e0Rt34Zn0UimpdYD+H34A6I/GQTBGnx8FhaFMgG0k8byhGLJfrb
	 u6KOAmH2L9mrhsMdzRPyid9jADKRO/HgZE0uFArGNrE8M1b6z19UHeTAUzEAnvP2YX
	 JEhon3p+KG3DBoqMXyvoqpFXvePogs1I/Lz3qNbpYjBsvzdzrf/PRxfxG5xLInJJ93
	 HV5oSk/HYUIsw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YrauLLtMJT13; Thu, 13 Apr 2023 16:40:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2C3854000B;
	Thu, 13 Apr 2023 16:40:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2C3854000B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 60AC11C3E0D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 16:40:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 377FA83F36
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 16:40:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 377FA83F36
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 368dlU5wU3qA for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Apr 2023 16:40:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EBBFD83F1E
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EBBFD83F1E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 16:40:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="324589581"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="324589581"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 09:40:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="722130075"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="722130075"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 13 Apr 2023 09:40:13 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 13 Apr 2023 09:40:13 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 13 Apr 2023 09:40:13 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 13 Apr 2023 09:39:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VFKKRTN+FWRwACBGRMfOHgU4DMTY0P0VaWFkZHqlxA21e7nrMYaZatHgPDZHFmR010nAhTDBO7It2lkbCRX/T8lBQf14oQb4RJn9SG7wCMFWuF28JrPeVxzcY+bWwn+4w8Y8o4/g9P+46Sx5+YmFncF8OgzmtX42KfF7p764bNw9qUx5sQ1kM8/sSohM9ojhQLU/xulxoJuTWW/S7WBj8KdxlS8rRnxY/BcPcb32wcnQhIHOcZmEFk3t3Z8z/rwAqdbk+ZdFg+/aeTPC8MN86khAoVPRMr+x37GOqGHVA3LmvttvPKOmGa22S/sYR+cIhlqrXuOUOiNhpHvFsaFTgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B5tH/Dg3m4W87utoYPn/zJmKIslza5qQEDVgnUIg6v0=;
 b=ghCbxRNgmi0lz1gytroo1/3WG0NvY5rza8unkw/fSAmrAk90/TyEWGjyyRJqpj6NU30kn5CW37wtEC+m9+wM+ooHDd8c4na1UNvSAUd0KJENbc1l3sujYblqz0N1cD2HT5ao5Mwon4dFvO3ZdU71Ey7mD194F23YuI+MhUz1QhTdCUn4V81ZNuE/EWPM/Ycc0OOse+TiHbG/x2Xturr2DDfWgLxf2tTiPGBTNXL/8wz8CUpv0f6xbYE9dVunfaefhcvAjZkx7C/Kdm6K/qur/2zCmIuWkOLsQEjY6N+BvIlldL7tbU2P5kNO9J9K6y4A/6dZcsUb3YNMEh6KVQSGnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MN0PR11MB6136.namprd11.prod.outlook.com (2603:10b6:208:3c8::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.38; Thu, 13 Apr
 2023 16:39:36 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::6222:859a:41a7:e55b]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::6222:859a:41a7:e55b%2]) with mapi id 15.20.6298.030; Thu, 13 Apr 2023
 16:39:36 +0000
Message-ID: <5076f138-2090-921c-7f01-32211f27d400@intel.com>
Date: Thu, 13 Apr 2023 09:39:41 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
To: Jakub Kicinski <kuba@kernel.org>
References: <20230412073611.62942-1-kurt@linutronix.de>
 <1809a34d-dcf4-4b54-089a-a7be3f4c23e1@intel.com>
 <20230413090344.20796001@kernel.org>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20230413090344.20796001@kernel.org>
X-ClientProxiedBy: SJ0PR03CA0169.namprd03.prod.outlook.com
 (2603:10b6:a03:338::24) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|MN0PR11MB6136:EE_
X-MS-Office365-Filtering-Correlation-Id: aa5bfa5b-1e12-4873-96d7-08db3c3daacb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /bCBQhEbMYWNqCQ7d04bSeg91uSZWfXzJpctx/MErYWuyRcanTC84PpFrSZ0encfZQf9Zdn80ZFUPbfpYW1HcC/eOhMbqyEw1/7wqpLZerQzd+l/8NQrR/VCBhzHHcFORu+JOWl/rjCBDCPns7Oq4ZF7qsfbMgv1r8omljTAWtAH9S6j7EisD+paqYYUIkGSqWwNkpGt8ERAk+CzVgpa7RjWSXOAikgn/vX9bKvFBc/YoELmMZDkIM6CkkY3lQfRi38fRm7hsYBvMS5744owi9un35YHw+z07/U6N/DXaZEWPqBmPF/w/VLGMh5tXUB6b7eLcCQfQ2xTLAgX4BkTtTVTMiigqb01W0gZPpJ/dtzAjwKGanNzQ9zlmiV8AmZPIIUuXscgmg+/lv34O2pljP6HAr1qtpqEo+jrLgC+oELG1fHhKZxVbiRoGB6YTnlyyTHkRUi/Z4WRta5Jq4knLO3pSRHnOsnuHNP6zexocG1/iUP3Qk7VMkAoZZ5FJ6iNbFAa/He1mC/W1bgrrX3/TsAdBvWn19ENp1sBOjfkkGT6m3vXqcHY1GoFh7o5waRim6TNgrxMg96iTukCR2IsRThmfIj0jfcMw+W97Zk9yXJxAMa8v0UDEgl5C+YpN6UJmYuKSZsmspwj1V079j3RPQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(39860400002)(136003)(396003)(346002)(376002)(451199021)(82960400001)(31686004)(54906003)(66946007)(66476007)(8676002)(6916009)(86362001)(31696002)(66556008)(478600001)(38100700002)(4326008)(2616005)(186003)(26005)(316002)(41300700001)(36756003)(6512007)(53546011)(2906002)(83380400001)(6506007)(4744005)(6666004)(8936002)(5660300002)(6486002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S0Jhd3NEbndnSGpkS2ZyMnZ2YmxqYnpHVXBCazlnNDNUS0RLdGNqVnRkZFFX?=
 =?utf-8?B?ZXdBWUpOUUhOeUpSanBRSTZwUHFNa2ROMGRDMzY5LzBBSFdERVhyRUZJVlN6?=
 =?utf-8?B?VE42RnJmQzRwTnMzZHRVQXdMQXZKT1dKMHROK0RYZC95RC9ZMmhyd2llSXpH?=
 =?utf-8?B?ekJtNVNNNmF2VGU4MHRSUWxBUTJRbndkMHlKNWQ1d1h5MjE5T2xkS3hISlB0?=
 =?utf-8?B?U2lSRGI4TUVibXJUMElacm0yMVhaVEp6MUxkK1NmMVdSUWNYQWxVT3h2YUVN?=
 =?utf-8?B?T1BpVXc5OHhNbnRUV1VTeERlc3hzRnZodmdYcmNWVXVLMUFGSTNLTXdNalJW?=
 =?utf-8?B?MFlsSFRYK054Q1lOZGRCY3daUzZjQzkwSkJHL0h6dWhZYnU3VXBIL2JBd3FK?=
 =?utf-8?B?VG1RZXl3MDEzT00wd0dYcHJwRk9yOFQyNzJKUGs0K09QM213c212NUlaRmJs?=
 =?utf-8?B?b1RDekFNcGMwdEJiNkpoUWNVdXdORCtOQjZiYS84NmhocG55NzhKR1Q2RGlE?=
 =?utf-8?B?TElqb05GY3VVTGRwWEpiOW9Bcklra0ZxMkFFWDlFdFA5NFRZQk9lRHZwT2RB?=
 =?utf-8?B?RitVMUJmNW1IUSsrU0RpUHQvTHBaYjVSMVBiYytpcGIvb1ViTUxoN3VXam02?=
 =?utf-8?B?U1Zoc2UzTzlwYXF2RWxWYjJ3cldIWXRzYk91dExOT2xGZzNtYi9zbVNaKzdD?=
 =?utf-8?B?SUdMU3dhSUZLUi9iTkd1SVFnNmNleDZBdEd5RnUralhuMGsxckNQTlF5YnBW?=
 =?utf-8?B?czROdE1NcnltbUIxQ1FUaGdaSDdxeGFqQ05Lc3QvQ0NoN01waFM1ZlZpZU9s?=
 =?utf-8?B?c2RqVjduNy9qN0J4OGFBd29Zd2dzbUJpRWVVTDkwaGF4V284R1h0K1JkZ3lo?=
 =?utf-8?B?VHBJUG91bzl0czNSZFR4Y0ZYTnJEWEJBUXNaM1NIRHdlQWFsZzBvVGg0TDVC?=
 =?utf-8?B?SjNKL2hHcGJYRE9UcWt1SXc0UVlRcVE4N1hWenRHZVkwRHJHMXZqRTh5Z1do?=
 =?utf-8?B?V2EzbjA5em9CN2IzU3hQT3RoUUMyVjh4L1REOGFQWXB4OTVkK0FOTEEvaDBB?=
 =?utf-8?B?VjRsMWlyd3RFSTBIN2FCTnk0ZUozSk54NjY3c3JoRzJZZ0h1dHBxQVlWanJ1?=
 =?utf-8?B?cmtQVFhsUEFiNTBHMHJuNndYaWtNTEQvTDNFemNkUkYvYStMMmdQbnBUVm1j?=
 =?utf-8?B?Rnl5amw5TkZjdW1iWVpGaHNSaHhpMldUWkJxeVRLeWx4U0w0d05vczdlK2k5?=
 =?utf-8?B?bnN2YnhQeU1hVWd4MkoyWW5EalFTcitzM2ZHR3RBTjNaN3dZQW85cnZaZXli?=
 =?utf-8?B?UTllWVpGc1FSdTFRMDBzVGlGay9JMm5LUHNMY0hsWWJuTktaNHFqVWdRbmdo?=
 =?utf-8?B?d2ZXS0lMQXZaaFEvTG9zR2NnYkVsSVVRc2xlS245OS95NDlLWklnVG1zSXlj?=
 =?utf-8?B?ekMzUS9BWnRycFYvekNxb2ZXbzlOS05iVjhFcys4Vm1mYzZ4TzJ0aVRGUVF6?=
 =?utf-8?B?TmFucWdQZXM3MlcrbUExZzdSVi9PSzRoNTlDbVhGWWJXRW00ejZ1cUFZdFBy?=
 =?utf-8?B?WXgrNEFkU0w3MjJKcWRLVjRMTGZnWGRRR0YzTEFEcWhVUWpCRGhGMHpwS2Jm?=
 =?utf-8?B?RDlUa3prdkIzdk5uTGgveDFDZTBXTGhyd3JDLzYwRkVPRFhCcmdJdnllS004?=
 =?utf-8?B?aFJlUTJNb0FHVGEwaWJTSDVBM3c5MzFjeHFFYUVocS9XK1VhaTlOZGM4SFhT?=
 =?utf-8?B?T1hrd3k1ZnhoVFc0ajhZME8zTVhvL3cxWk85VTZ0bzdTS3FPYWV0QWlTQXFO?=
 =?utf-8?B?b2FFd2lFR0gvaC90ZFJuSDUrKzV2WHZNZG5yQkZ1MWhOR2RLY0M0K3NYLzZV?=
 =?utf-8?B?SzlZcjJCUjdoMW0wYmJLb0ZFUVpuWDZubVJWZW9OVHFLTUJsSTlyL2l6bnpw?=
 =?utf-8?B?SVE3cHhFM3lVSUV2eGVCQlRVdkpNd092Zk5PeTIvckVncG9YVEx2U1AyRW1M?=
 =?utf-8?B?ZGdHV2NZWTF0ZG1rN1lqUXFkRnc2aHcvdzNSZ3B4MUhPcU5yRzVwQzhYZlE0?=
 =?utf-8?B?d3NaWnZLRGpuaGV2YWVYSWJPWmNxalA0Z0xOcTJoOW4zbTJnVUdCRHJBcmp0?=
 =?utf-8?B?eFRkSUNIblBvcWUxUUxrTGFXYUZTV1hMQ0FqU2FjdTlGejJtclJ1d3RuamJk?=
 =?utf-8?B?U3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: aa5bfa5b-1e12-4873-96d7-08db3c3daacb
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2023 16:39:36.1986 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dcHDsxn8SMERFfvdhyjOu7dGVmnMhCMO1iZpQF0L/1mDJiaoOjXS5+/2pNlcFnCgjpgByrln7yv7Hnf9l0q+iDUfLD/o/mkCXXYc7VFPqoo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6136
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681404014; x=1712940014;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NAzJ/rOi90GNbJlUlv5wn6LD+XOVedN+KV/JuP4DzWY=;
 b=hRL5BtvGzbm6d202+0Mk7ZXL3S7LmkgLmNAlUMRbeH3FIe94Vb4PisZj
 yKSw/ut37QrAA1tMLIbkICYu5R8U4RPMkGekYsFRPRMZM0h/Hplf9DBMm
 pqyuYdKkhWtJG1xE/LoBAPHhEDm3dcR2e7F4yBH0SxC7oL0r3FOAjR1NR
 sYK3vZPgHnaHpa4kZHKw6pqHzSLGe0NDHgCY2fAgM4ZO8gPLfGc/g2zCf
 sCkJziBbo567iT72UkrXtw7VPtcB9MQ8QsUN60bmihsH12cvQO5UU35CM
 9zjSrBVG436ml4TyMWP25h7wQrEhj7qlChqxqPNIL5GkJybDXgEvtsvlu
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hRL5BtvG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] igc: Avoid transmit queue
 timeout for XDP
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
Cc: netdev@vger.kernel.org, Kurt Kanzenbach <kurt@linutronix.de>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Ong Boon Leong <boon.leong.ong@intel.com>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 4/13/2023 9:03 AM, Jakub Kicinski wrote:
> On Wed, 12 Apr 2023 15:30:38 -0700 Jacob Keller wrote:
>> Is most driver's XDP implementation broken? There's also
>> netif_trans_update but this is called out as a legacy only function. Far
>> more drivers call this but I don't see either call or a direct update to
>> trans_start in many XDP implementations...
>>
>> Am I missing something or are a bunch of other XDP implementations also
>> wrong?
> 
> Only drivers which use the same Tx queues for the stack and XDP need
> this.

Ok that explains it. igc has few enough queues they need to be shared,
but other devices have more queues and can use dedicated queues.

Then this looks good to me!

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
