Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 99AE477DBE2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Aug 2023 10:13:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DFDDF811FF;
	Wed, 16 Aug 2023 08:13:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DFDDF811FF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692173618;
	bh=Piwc0SzpW09gROfy7GSeEM2s/7gE4m9degeCbhjE8zc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=63kmn9tr30eROgDXZRheBFAcMFGeSp89bLQWmH40ncaVjpQVeQ9brp1DkwxTf4OVY
	 JamrYoeijMFXnKejcuKf84Lmu1BsdoPN8K0yQUm0/vsA3HgiYUn/8XgHMmRHrw54xs
	 4hp4d6k7ZU6BuRe85uUR2mE6ek1HgZ7tx/gLMfh3N128yNws//M/oHCgEm4dS9lnvI
	 vgLwhFunOAoIqUrJoky4715vhpaBEOSSt7G0/3L+PZl6Jy9GEluPVVbV6oK593dMHI
	 QjUVUkPGADnzCVyvmsO7Ophe+UyfrwOvSmVTCRhEbxzL7UcPQD2XJ5a+8zzoSMhyR0
	 8jZLBejah6xkA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dHxZseYEe3iQ; Wed, 16 Aug 2023 08:13:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CFAF481299;
	Wed, 16 Aug 2023 08:13:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CFAF481299
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7ACB71BF400
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 08:13:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 573D640869
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 08:13:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 573D640869
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 02O851iFUu9N for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Aug 2023 08:13:31 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2AB19407D7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 08:13:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2AB19407D7
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="375244605"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="375244605"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 01:13:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="727677581"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="727677581"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 16 Aug 2023 01:13:30 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 16 Aug 2023 01:13:29 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 16 Aug 2023 01:13:29 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 16 Aug 2023 01:13:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GPEsxsni3dlDTsk+4CMvXizTi8pFyaATCUBkY44kc+y+AWjVlR3v/yr6tGSZsOLpDW4K6AIlTTvQa/Ontz0EaHFhaOaE2OQesc+haYx2f7OAwtsQCwUXHxxUAxrDLW1uge7f2mnm8msVcYARR2Od2aTYoYvqjR+oNkDM3O4BmP3qFWk22E2JwBK8DleQARYyWtsBffp8mob7GVCMlxQ23GMG7TugW5iU0mmF2AOfKKjJqNOMltj9SE0XmCA4Xlc3mzARgisAH5mj78OvyDCVx/jyaRGXauVDoS6K5pNi5zjwq2Sf/W9NXkFMDvLW8+I5X3rGjcNZtl6qkWffSF6LLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ivieH9TzQGEyjmZD1n+Y8ImaX0XFak/cvvGzrBL73s4=;
 b=OLLxp/KwjttM+CnxWL8XGY+4HKaYFPeCXld0u/Mcbgvh9b4U5F9drk9Fc0ptIQBs1jtOikmJ07CTOqe0JMmPgGkc+sb8VroAsnW97H0KmrCCdq+bnXKkQX6JMlB6wwzflRJQkp6lNB71oJwA/q+xcdRXsiil72XYAf4N3cPMpd0sooktST5w4ggbwzwHgLFaX2q6LtM3Z+hGFNTEml3+larlbgWy9z0nmIQxP1ttN/cKYoEsza6tSgQOSmgC0ouEjm96bejpVmNJwdAKASLhYWRi17VwhITrtCzLPU0fZXtICgthPpSEPZrkR//gLHhhPif6w9FT0+Vj8aj8jTtmVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by IA0PR11MB7211.namprd11.prod.outlook.com (2603:10b6:208:43f::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.26; Wed, 16 Aug
 2023 08:13:26 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::c45d:d61e:8d13:cb29]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::c45d:d61e:8d13:cb29%3]) with mapi id 15.20.6678.029; Wed, 16 Aug 2023
 08:13:26 +0000
Message-ID: <1a78f84b-f84f-7acb-2a87-6b47cd427912@intel.com>
Date: Wed, 16 Aug 2023 10:13:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230816010705.1360446-1-jesse.brandeburg@intel.com>
 <20230816010705.1360446-2-jesse.brandeburg@intel.com>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20230816010705.1360446-2-jesse.brandeburg@intel.com>
X-ClientProxiedBy: FR2P281CA0116.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9d::9) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|IA0PR11MB7211:EE_
X-MS-Office365-Filtering-Correlation-Id: 6e837466-96e0-4f77-1ad2-08db9e30aa46
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uQE5ofdREPOGz358VP9RDMmOyed8FsTVmgeTPF++QChhJKjr8H9gQ1YOzKvG7ZGhAX68Wfa2ahdlr3c/uoPRZVfIDeUbzceJW4lQhELA68ccqa+sDgCYnASu+4GpR0xBSLGUYcBbePTRwdZRvFNHFswuH1tcJWmVk9l5ejENa076dBU5aucAKIRrHZ7caisfFqfx//2YLeTv4ATnQxVKPkYh2sKUU0rvx1HjV1HXGPeHVEifL13EAPUPR8Ezk5eUphBVLtLRsP4PT3PSmvCwsSPfWW2VjcsNlS+IH4NgHl3bQELyKPbfgFsvz0EGzyLYMy0KfVqHYDTxwH5GDNl+C1YLgsKuhKr8zE7NGluRHLgaqFaHc6XPsc8cViK2wfpC6ABDDsuwNLtTI9+KWsUxTup9VYa9yNiVzfPOiYc4hLN0LDtt7a3lHN1w4b8WOYO/km/rpE1PPe6EjR3SBQmcZlkYGEATaQkX/ZX1ztLTN9NfQbfv587kAwGX1x34Y2FFCYh265O9hcU78rfVao1cepyauWUT2LXA6ZuQM9TEs6H8AQC0/fhsZzowDulrtg5UyGKV/EprP97aJWMlBh4VhhQCG1BruSjP0Wah0+NahTc/A25wBWAYsPQB9zW8JvpTODOIA5gJLIx7Zu+holssOQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(39860400002)(396003)(346002)(136003)(1800799009)(451199024)(186009)(6666004)(31686004)(66476007)(66556008)(66946007)(6512007)(6486002)(6506007)(2906002)(478600001)(26005)(5660300002)(2616005)(83380400001)(41300700001)(316002)(53546011)(8936002)(8676002)(38100700002)(82960400001)(36756003)(86362001)(31696002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YStjUlRUOElLRkk4aXduWG5CbDVGbFpISzFkVEUxWkxyVU85MU04aTJzckpU?=
 =?utf-8?B?ZVJWUlBEK1JoVi9pcGRZYzFrbTgvYWZxSngxakRRT2NqN0tqdWRRcElxaTZy?=
 =?utf-8?B?VnVlYWtHMVhsVGRKcVFEbVpjZTJWWU9WUFZOVmhFZVNZVG1FbVp0c3pzdFJu?=
 =?utf-8?B?K3Z3eDBkWURwNVNVT0xkbHJFZmNhMCtmeEFwVjZmdW5UNm90SHB0WjRaYTNy?=
 =?utf-8?B?OHZZY0Q0OFZUaWJGdUpkWi9jTzhzRGtGUFlGKzZETjhFTm15R2haS0dpQUd4?=
 =?utf-8?B?cGNwaVl4U1M4MDhxMnZZUUkvTm90ZVhGL0YxV3RMMExPd3NGL2VOcnRMbTNj?=
 =?utf-8?B?QTlxYjdZWFMxUzFIOXFqaFl2ZjVpVlRVaVB0K0RVNWFrUy9SV05abS96akwx?=
 =?utf-8?B?SCsxM201dFUyODJFY3BDN3J0TnhtSWJvclBNTnlvK2tGSlIvbHNGQUw0RGZy?=
 =?utf-8?B?TlVCU3BMM0JYemJKSHkxdXNraSt0UUxRRFkvbnRQajRBdWJ0d0k3RUluWUI3?=
 =?utf-8?B?Q2E3MlVDT0NYbGR1cllZbDQ0OGtkWEtEYzFjRit0cFVxSm5LMmhOblNzekxT?=
 =?utf-8?B?UVVUdHErNGg4dXN3ZFk5YzF3eVh0Mms0QmZISXJTVVRxdlhDMlNwSTcwMEZz?=
 =?utf-8?B?MjJ4cnJXMkJnODFibzl0em9RTzF6Y1lja3hQTEtWQXlETFBGWExHeTFTSFpt?=
 =?utf-8?B?dFAvUnJOdmdjYStnazJoaEczN1pXNDVEYlpPVjBJejFWWlIxVFpER3h6bVNp?=
 =?utf-8?B?QkZ3aE8wYy9JRmQ1dkptNEdZckQySlE5VEVRd0hMU0tWRmpOYlZCUXVvUlFR?=
 =?utf-8?B?anI3Ylc0c1kxWENJdklrNUF4aVJUZC80c2lkZVIzQWdFQWFXQ3NoWUV0bUpn?=
 =?utf-8?B?aGdpbDFVS0taTnlDZDUrWXVMRzZuM0RFSmdOdHhOZTVTR3ptY0llcHlSS0hr?=
 =?utf-8?B?bC80V1FLOVFYTU5teU5uc2orbGRSSXRLc3M2UEgwb3ZxY1NCNmlCZHArbXhq?=
 =?utf-8?B?aDZDZVIvenM0QmxETVJUb29jV1J4Y3BkdkxyWEdaTllHeVRZaFI1Um90WDhW?=
 =?utf-8?B?RGdpZ09jcURpR2IxQjJnUEhubEtDZExMKzJ0L1hCRENObjhUYnpXOTJidlg1?=
 =?utf-8?B?TlFVQWxValJyait6NldDQ1Z3SUxCSGN0aVE0VXpJMGxWbTBlaGtweEVuWjl3?=
 =?utf-8?B?cHAvOExaeE9JSjJ6cnluUDYvaVozRFFyK0ZHclVXOWwrM21zU3RQL1U5Z0tF?=
 =?utf-8?B?eDArSEtLdURFUjlUQ1dtNWtMOUFvOTRIblBqay9NUnUvOWswd2t6bUpHUXFh?=
 =?utf-8?B?M1IrS1F6aDV1VGoyMzRSRjhzOTN1c3E2QVNRZWh2NnVGdGJYQzZ5UDM4ZTRE?=
 =?utf-8?B?OTJCRmxscXk5OXFIZXEraTVSSWUwRTJnS3hWT1NXajREQ3o0clg5U0hnbW13?=
 =?utf-8?B?bmdrbEJsSXdGLzd1L1lJK21TeEM2aWtMV3NHd2liKytSenlSWENRSkJoQW9r?=
 =?utf-8?B?V0M3MjAwL2tSS0M3c2JCU3JjRXZNRDhrQlhLUnMrTVNxOFEwKzYzWlVub1lj?=
 =?utf-8?B?dWdOVGJWMCtVSnp4R2tiY1MwNU9RandYTkx4cCtDTHlRNWViQi9SbmUzclZW?=
 =?utf-8?B?Qy9lZndKT1VyWWQ1ai9KUkt6RDc1OEU0QS8wZ1ZoK3ZHU1hZVDZGWk9YRlJt?=
 =?utf-8?B?dmUwS0V0bENpTkdqaWJ4SGdDbjhoZ3lHbGtXcmNiM2JPMnBNQmh5dnNQZmt5?=
 =?utf-8?B?eDBEWVVqN3JuZXlxYWFvYTBSVGFOTmUvbUlBSjEwUzFKN2d4R0JleW5zeUVq?=
 =?utf-8?B?MnBoUllad1U5WWIwRkJWeXVTbDRueVVZL3JlL0I3OFFaYnFyYjdxV2FOUldY?=
 =?utf-8?B?NTVFamFmMDQvM1l1Q1JyZERESnpybHpnNHI2L28wQUpWVnVyanNVZ25HcHMr?=
 =?utf-8?B?a2dPT01WQ3QrbFViTHVqWFB3YWxJZmVyb254T3NCTnBpYndIOEc2NklQWWpn?=
 =?utf-8?B?Z1Z1ZXZIa2t2aXpvYnlTRXZwamhZWFArejdobWM2TzNMZS93VlZyV202VllG?=
 =?utf-8?B?QzUrbFQweFEyMG9BamczRjZPeFFnb2pTNENuRiszbzZZSDNUUjBlTk5rR3BF?=
 =?utf-8?B?NnBSZnJvMEN6NVZIY1NVRzZXVXZSRHhILzdBQ2RrcDc1UVhsZVRIR0hNMzVD?=
 =?utf-8?B?UFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e837466-96e0-4f77-1ad2-08db9e30aa46
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Aug 2023 08:13:25.8046 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4d9D9Cp5oUVp5aeocwoo9Aoev2Yn17y4tF1serHl1IsVEQDXe3Xcdu3Lo7v8ytvnmeofqYcfbSPWInCvbhTZ5BnhB+Lt0kyldEXdkvkLue4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7211
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692173611; x=1723709611;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=2q7ghl+zt/lFN16twkbN+9b0OMw/TdgxztsZBiPoGrc=;
 b=HburJPqSIWhoAEuuWKtlV3KcAqxBH87ptT7wQS0fLVoSTH0daT6E23nG
 0rjBzsrgdnR+jlWIacQgusWAhcpEtGW6E5w1uvqI4cxTS0IGVMKR/8Ugj
 2tjy5FmXxSQ3XuiQU0kVDgS96uVssXiFT2X5yyE+xOw8h5E/N0eynT1Mp
 5nITGJcA5URYdZLDdUh2oMFiTHyIyXfTv49DpzQg6bpABkpeOMFmHQ5iN
 7MdmqdrCci3onvrVd/2dr5WqY/Z5yVgjAv3A1Z4qMRl9iRXQPX6lyNJpZ
 L1w5d7KwDXV2HIGGviPzQ3QukXMHlLeJyhlqdphfC7Gm0GM+WCaJtU3fb
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HburJPqS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/2] ice: refactor code to
 remove unused variable
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

On 8/16/23 03:07, Jesse Brandeburg wrote:
> Upon review it was noticed that there is an unused local variable that
> is using another unused define. Remove all the unused stuff from the
> function and header in question.
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_gnss.c | 5 ++---
>   drivers/net/ethernet/intel/ice/ice_gnss.h | 1 -
>   2 files changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.c b/drivers/net/ethernet/intel/ice/ice_gnss.c
> index 75c9de675f20..026bfa71204f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_gnss.c
> +++ b/drivers/net/ethernet/intel/ice/ice_gnss.c
> @@ -85,7 +85,6 @@ static void ice_gnss_read(struct kthread_work *work)
>   {
>   	struct gnss_serial *gnss = container_of(work, struct gnss_serial,
>   						read_work.work);
> -	unsigned long delay = ICE_GNSS_POLL_DATA_DELAY_TIME;
>   	unsigned int i, bytes_read, data_len, count;
>   	struct ice_aqc_link_topo_addr link_topo;
>   	struct ice_pf *pf;
> @@ -149,11 +148,11 @@ static void ice_gnss_read(struct kthread_work *work)
>   		dev_warn(ice_pf_to_dev(pf),
>   			 "gnss_insert_raw ret=%d size=%d\n",
>   			 count, i);
> -	delay = ICE_GNSS_TIMER_DELAY_TIME;
>   free_buf:
>   	free_page((unsigned long)buf);
>   requeue:
> -	kthread_queue_delayed_work(gnss->kworker, &gnss->read_work, delay);
> +	kthread_queue_delayed_work(gnss->kworker, &gnss->read_work,
> +				   ICE_GNSS_TIMER_DELAY_TIME);
>   	if (err)
>   		dev_dbg(ice_pf_to_dev(pf), "GNSS failed to read err=%d\n", err);
>   }
> diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.h b/drivers/net/ethernet/intel/ice/ice_gnss.h
> index 75e567ad7059..7a35903d619c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_gnss.h
> +++ b/drivers/net/ethernet/intel/ice/ice_gnss.h
> @@ -5,7 +5,6 @@
>   #define _ICE_GNSS_H_
>   
>   #define ICE_E810T_GNSS_I2C_BUS		0x2
> -#define ICE_GNSS_POLL_DATA_DELAY_TIME	(HZ / 50) /* poll every 20 ms */
>   #define ICE_GNSS_TIMER_DELAY_TIME	(HZ / 10) /* 0.1 second per message */
>   #define ICE_GNSS_TTY_WRITE_BUF		250
>   #define ICE_MAX_I2C_DATA_SIZE		FIELD_MAX(ICE_AQC_I2C_DATA_SIZE_M)

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
