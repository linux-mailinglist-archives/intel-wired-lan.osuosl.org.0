Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB0B7492E1
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Jul 2023 03:02:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D5F0A403E5;
	Thu,  6 Jul 2023 01:02:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D5F0A403E5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688605353;
	bh=2GtPO+HVx+y05lVDqsEGapEGFD+kRZKcRheSzXVbvT4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Oqy+hcSdRyAC4beAh4rJzMECkIqiCDpQaluLmCIbhvqumjvAkj6/eQLs5SXntYEmi
	 e7/OW2ph+ONUdstMGOiklFYpPhCbq72eHRvL5xV/B+iMjWme/qhbyg/lGsWHJwT1nA
	 OVEShvMR/HRYiEjpnYY8ZacGT2HwyA5WhfBfJBxNTCxPMW5bKFta7Yn+YmBz2NtZW+
	 NOWTd66hYkJRsGiIlZUCuRATIkoiYIURJZ1ALnO9HmnJgZmZ9fCGrFJyOG/Wn4w0fA
	 pxj5hx2XNdYEcuIzIoLtzYWmddVi4tTtlsR8uMsGKCyPeKOlEYEw1RCXJ8nMOqXKvE
	 dH4ZN5dXoDDZg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hThoV2awZuCR; Thu,  6 Jul 2023 01:02:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 74DDA4029B;
	Thu,  6 Jul 2023 01:02:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 74DDA4029B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 792381BF95F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 01:02:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5D9E94029B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 01:02:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5D9E94029B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0hJR7W5c9-Aa for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Jul 2023 01:02:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 28150400DC
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 28150400DC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 01:02:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="427158302"
X-IronPort-AV: E=Sophos;i="6.01,184,1684825200"; d="scan'208";a="427158302"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2023 18:02:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="809442120"
X-IronPort-AV: E=Sophos;i="6.01,184,1684825200"; d="scan'208";a="809442120"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 05 Jul 2023 18:02:23 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 5 Jul 2023 18:02:23 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 5 Jul 2023 18:02:23 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 5 Jul 2023 18:02:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fosv+ydCdqAOQ2JhmAPvaFHPrA3SD+oTGLH8R/cxPiBPtKn6cC1erfI7cWWK4LCH+8rkEtAuECV7a3shfBdC93gYrVRx5UViVitS6sXs6j7D+ThQxV7TZZ6e+c9u0Rg8GUSGddekKzE3unHdJLqEeK+KdYLfIa3bBDzlRXyD1WeMFm7oNldQ8IHQbiz8WpkH6ghgqSvpNz4TwwoujotNuPszzWpJ0d5M4kESfBHeTS6fuV//af4GEP8PURpm5rfw4m9ENunhr+uw87BoZQprSL5oKQO3nW+Ml8c0cwxsRpeoyKLQH4SBfCRvK4h0bIsH1JfL6XFWX0sACZqgWA/JhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=73Y2HbhcBUdi85A8g/obCvkcJ6TjlgJb8UHNRDGhOR0=;
 b=NvzIh/DPERLTpepyYIIz9GCUqIaZjCKQuxWCiJ/kgINuArxacbJ073ZqA4n8tIBsW0uRA2167vvA7om083XDbgXNDAP5rM51fqgSLm+nz3E5TG5zrAE8omVNoEjeOT+2PnxNMXQ3051o0vZYov8oobii3AC/kx7TGYhybPXTOq/a31zsInxTyKLmBmduCab4rvlSb+tZOPF3c5MrDG35nTqZMY+04YCSjcOUnY2MJcQtBjBpXCepCmGr1g5Y+N3PttXy83ulRoB5LFBuEUsIgb3N3+kM++qfN/k8/KvduFpyIvc/YfwSejN52X9J5V2cV0GRYw9xQe8+dYjeYLsIJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by DM4PR11MB5536.namprd11.prod.outlook.com (2603:10b6:5:39b::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.17; Thu, 6 Jul
 2023 01:02:21 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::57f1:e14c:754d:bb00]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::57f1:e14c:754d:bb00%5]) with mapi id 15.20.6565.016; Thu, 6 Jul 2023
 01:02:21 +0000
Message-ID: <20cf4be4-0a58-b37a-54e1-49c200c75d56@intel.com>
Date: Wed, 5 Jul 2023 18:02:19 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.12.0
Content-Language: en-US
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230703074409.102367-1-jedrzej.jagielski@intel.com>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <20230703074409.102367-1-jedrzej.jagielski@intel.com>
X-ClientProxiedBy: MW2PR16CA0007.namprd16.prod.outlook.com (2603:10b6:907::20)
 To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|DM4PR11MB5536:EE_
X-MS-Office365-Filtering-Correlation-Id: 6c4cb8eb-228c-432f-91bc-08db7dbca72e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YRcC50ANYc6HNSeaAgt02VhMSzHU4l5Mu83xxXdpbR2ODw+FcSiQW77zDuMvspWa24qIQDlusVNSBDHxcNnWRJr2BN7duq0hVFHuNRDcsMwRw6cIafT8ljTkExDzDO3iGHmiJoQdebXFOy4VWTWfq+xIP4E0vPD8wqRV41yQzkyTaqocwhZP2wTbsu6+F4m6YxQtEFgpHb4ZFKovjYuSaMjqrlzr6l6vqcoqxfRIAO7UXeXtX/3fS/3djNe2DQamP25isp8kMnlIHGmXW+TXzukB5mh5CwjHn+CbdJycJJCOPTUI+AhFKMKRyamKkDjaD1G1jFrhmO8+0i4XwNJi7r9STHU3YMr+p5Pa9h7L2wfH9m2BO90pcbaM3y1a8l9JOnQspjw2PtrAmZvZyrhWBtNslTBoKdt33uA3zFcDJvlssK3BT/p7L7XNZvrNoajzZqOwiwevLHY3A6ExM4PSh3Ag9zdU2dWKquQ/LhDl5tbyGOIrv3AhQGDebzZFR6voaTEGUsAl2TX45ETiDIJY4J5avO8R3lXMkPTs/xAPZRBMbG5MJxke9PRW8PRujRRuRSoPVKgslLMO4uF5UA4TjmpQGq80AEXQsl/QwM62/Hi8sSpvNinQQihghQJAu8wB
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(136003)(346002)(366004)(376002)(451199021)(186003)(478600001)(82960400001)(6512007)(966005)(26005)(6506007)(53546011)(107886003)(31686004)(86362001)(2616005)(316002)(83380400001)(66476007)(38100700002)(6486002)(66556008)(4326008)(66946007)(5660300002)(8936002)(8676002)(44832011)(41300700001)(2906002)(31696002)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UjBxeHRtVCtjVFVTM0xXcTZRZkJUZTF4aE5vd2lFZDRSU3BER2FnWFF1bzls?=
 =?utf-8?B?OFE0b2tmdmNDVm4zTU1ud1k0RGs3SHYzcTl6ZXFCZWQ0dkhvYlJFb1lPVk1O?=
 =?utf-8?B?WjMva2xpcVZ6dGxmS0lVTUphNzFWWUJWcE9idGg3VE9sVGYrQTJNL1dROE9N?=
 =?utf-8?B?NGpMR2tNUFdCSU5BNm5WUjNwRnJrR2k2UUE3UUl5ZGpmOFR4ZDFiNVYzSGVF?=
 =?utf-8?B?dk1xT1UrcXoxSjUzbVNmSWpUbE5heGZkNGcyaitwa0wrYzFwZHl6S0JQRS9T?=
 =?utf-8?B?ZklqQXMwZmFTNFZ4Qkw1SHEvU1JFdDRVTGpZdDRVM1h3bGtSZjE1UTV5eERY?=
 =?utf-8?B?Nk9iVzA5YzlzMWVxZU9zdklwa09uTHp4ckxoaE9qN2dWODZicE55Y2ZMaHRC?=
 =?utf-8?B?c0dIRllRZWZoenNFb2JQYVNUMWVRMExEb0dpVjNSU2VMSlYyVXJEYWpRbS8r?=
 =?utf-8?B?UExHc0t1UVc5aFZ6ZXE5bTJFNDJmTjRyTm1USUxBRmord0lXbWtMcEM3SFFy?=
 =?utf-8?B?S041RE9uVElSRXREVW9JZjBWOXE3ZFZBZzNyb3BWNWQ1UU1lSmx4OG1IS29J?=
 =?utf-8?B?dlE5Q0hLcDlxUUlUNjRaWTB1bTZnRHE4RFRLMXk3RTM3L1gybkV1eTd1RzhH?=
 =?utf-8?B?VDJGWWlGL2Fld2cwVnBIdzRTN05CZWtJdVkyWGJnK2VzWXdZMHZZNEMvUzAr?=
 =?utf-8?B?b2dGVm8rUkRwbGUrMFNldDhuL0hMUU14YUVIMkRQWWUyakt4VG1zNlpxNHdw?=
 =?utf-8?B?ZzNUWWNBTnN1aUNtaVROL2FSNGdwVmdmM1Rxdjl2cHFXYUhId3BudDBxdmJW?=
 =?utf-8?B?bTA4RWNPQWRZQklvVVBJcm5YRVBwQkx1Zm9DeFFGWEt6cWNhY2NXdEZUblBK?=
 =?utf-8?B?VXVMbktTc2FpcUNDOFI5NVFtWkFrbVcxT0wvMnNZTFQ4aUtrbXNQeHhrZVRT?=
 =?utf-8?B?VnBQeDFpeGxpajZZelp2bTJqTEtJMytTeklEOUlBTkpuSkU0Qm44dTVMNFVT?=
 =?utf-8?B?VE5wQTdIeHhtYStTRlVQcjZFQ2lDV1J4TGh3aGFLOXh4aG1QeThqTUQ1VVpY?=
 =?utf-8?B?RFllVkk1TGpEM012bjFqcHNwQXh3eXY1YUZmYzNPajg0am1OTUhjaWVvNytN?=
 =?utf-8?B?ay8yWmNIRlpkOFBvcGhvQXY3Z3BqZGV0Mjg4VVJMMDFidmxtK3Qra3YvU0hw?=
 =?utf-8?B?ZlN2cjllZlBlckdsTzZqNnJDY1cwMzlERURrc3RNWUNsNEZneVdTbjMrVmdq?=
 =?utf-8?B?dHdyVWpqdjY0Z0VjQms1dkVwb1I2SlRBbE11QS9IZW9tNi9rVUlUaFN0NmE2?=
 =?utf-8?B?dDh2dlhDcElndkhYOEx2WVppYmlZZGdwTDhEVDdlN2VSMGFkYWI0MHVvUmJJ?=
 =?utf-8?B?K2Q3bmVmM3QyMjhhT3haZ3RyV2FaUTQ0aFRHZlhUWE1iaElpdFI5bk1yQWJq?=
 =?utf-8?B?NmxkaTFiak9mVW1iMC9ROUhobHZITkwzTkllWGppTDNTcEJBTzZYQVpncUU1?=
 =?utf-8?B?OFNaNUo1MmZMQ1RjV1dFQk9ua1N2eTdBMHUzRm9qZzJIWTI3d3BoNHV1WUFm?=
 =?utf-8?B?b29ncmVodXlHTVhoMExESFRkb2ZQTEVRUDB5SzVPVXJiVWs3aVBhSlJ0VVY4?=
 =?utf-8?B?R2pQTmo2aWk2VVU4Zzk4ZmVacDNlUHBJbCt3UVRmNytJVzVqQ0lqTlp6YzMx?=
 =?utf-8?B?ck5NQ0hHS242MDZCcW1lbmU2dmRiMkk0cWZaRVJoUU1BR1c2dWJnZ1hhOEJs?=
 =?utf-8?B?TDNkZDVZTkRKc1V6ZjNuS3B1ZWlvWXFKYUhkQUMxQmxoRDZqR1RtdEx6YkVu?=
 =?utf-8?B?ZVhraVJReXBSNVNnZndOSFpnV3NYd3FnRTY5TVp1anpMcXMrR0pmR3J2dkQ1?=
 =?utf-8?B?bWNKd1lOTjZwS1pJaTBOVjByMEQ2aFZrU0ovT25ZRjhuTFNxSHJtd25aZHI2?=
 =?utf-8?B?UlpWN3pzNU9hc214UW9YR3dwSHJDT0JxaDVLb0FIclNCU0tQUEUrYktEMmZk?=
 =?utf-8?B?SWhMcDh4UkJMYU5JMlBvYmJwOEt2Y25HQTdDSU9EYjI0VzY4V2E2bVI5QmVK?=
 =?utf-8?B?YVZ5ZnJKWHYwbldwWGp2aGJsQWViM1JjQmIvbHpoL2tWdyswU1kwRUVlcDUr?=
 =?utf-8?B?ekg1VTk0Y3pnMU9tb0F1U3lkU09IczQzR0FNWjZUa0pZRTNqOEs3cnFDYllZ?=
 =?utf-8?B?MEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c4cb8eb-228c-432f-91bc-08db7dbca72e
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jul 2023 01:02:21.6401 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0/h9983maLM9Pj50nzsREE6eq6XzkP9IksU+EyC+Li/UCXQaYA/COCtAqvs99B0MCKz8SGBHhUXqPUujmMLPJOFaM5b47X3c4qa2sgT6IWM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5536
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688605345; x=1720141345;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=imx2qqyjfc0SheSB1ZPZtQae/EHx29i1klHx6fawul4=;
 b=Lyv43VbDf6kz3KX4guRmQOYMiGgywo97yB1yr3KAnrPyLLn1b+OpvuvO
 AsHGfJtffoin6Ems/gX/oyn/nMlDV+m5+QgMkxpq88Y+DxjzWjc2fSu88
 jzDF8IkKoLzlKtMaLRc3dBvv1+mj0uv/zjkJRSzNdSD1o8PNRZHhq2pAp
 wC6vTWc4y8rAz9brMCFQaei0fsM7UAqESzAno+EzRoUobp3xi0bBzwdl9
 eTmJ7/1a9hw59pZTGpYULv01orrb1+46m/8UkoP5/SWGlBoeHeAQPY6Zp
 IS6uy/XYhzsZx7r3AepdJ+o5OVtHv9ziCR9e/ABOouaVHoLXtwFJAAC49
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Lyv43VbD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: Fix memory management
 in ice_ethtool_fdir.c
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 7/3/2023 12:44 AM, Jedrzej Jagielski wrote:
> Fix ethtool FDIR logic to not use momory after its release.

s/momory/memory/

> In the ice_ethtool_fdir.c file there are 2 spots where code can
> refer to pointers which may be missing.
> 
> In the ice_cfg_fdir_xtrct_seq() function seg may be freed but
> even then may be still used by memcpy(&tun_seg[1], seg, sizeof(*seg)).
> 
> In the ice_add_fdir_ethtool() function struct ice_fdir_fltr *input
> may firstly fail to be added via ice_fdir_update_list_entry() but then

may first

> may be tried to being deleted by ice_fdir_update_list_entry.

s/may be tried to being/may be/

> 
> Terminate in both cases when the returned value of the previous
> operation is other than 0, free memory and don't use it anymore.
> 
> Replace managed memory alloc with kzalloc/kfree in
> ice_cfg_fdir_xtrct_seq() since seg/tun_seg are used only by
> ice_fdir_set_hw_fltr_rule().
> 
> Reported-by: Michal Schmidt <mschmidt@redhat.com>
> Link: https://bugzilla.redhat.com/show_bug.cgi?id=2208423
> Fixes: cac2a27cd9ab ("ice: Support IPv4 Flow Director filters")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
