Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 206277E5582
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Nov 2023 12:28:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A0E6C81E66;
	Wed,  8 Nov 2023 11:28:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A0E6C81E66
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699442937;
	bh=EkrbfC4s9VsXQKZkFRUA9cQHssvDncVDPVlBxnECO7g=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qftWVak7fIt/x4LKKcDtQ/hyYcyw3Irz2w2sRANS7OKDogUQa30ITOXypaK5uXOlD
	 6ue1TAeSrYYTULFG5on0pKXrBKy1xKedPCrrDyVA67Z2Duat381lYfyN0sLTarKT3d
	 ZZZMJtBkXlWrBmsBlDjntB/7KPS81lFJCV2ObVFPEPnC9z/CVs0ALiUzO6MDv+jOa+
	 UkMfP7OaCdLjA5C+UxI6tyuGu0zdyVVoqu8sZSpPirY8DwHRMQOH2bNKinr4o7Gw6r
	 115PxBxkY4DmpdgOoWodKDMO/ybi+9gda/ZzCAxHR+e/pmUrC3+AMz9OBWL6OkOz72
	 DRfzJ6OhBvexQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n6E9amP0COaE; Wed,  8 Nov 2023 11:28:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8184A81E52;
	Wed,  8 Nov 2023 11:28:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8184A81E52
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EF68F1BF2B1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Nov 2023 11:28:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C631381E52
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Nov 2023 11:28:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C631381E52
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NceQEyqdc18f for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Nov 2023 11:28:51 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8FABA81E4F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Nov 2023 11:28:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8FABA81E4F
X-IronPort-AV: E=McAfee;i="6600,9927,10887"; a="2689261"
X-IronPort-AV: E=Sophos;i="6.03,286,1694761200"; 
   d="scan'208";a="2689261"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2023 03:28:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10887"; a="756523698"
X-IronPort-AV: E=Sophos;i="6.03,286,1694761200"; d="scan'208";a="756523698"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Nov 2023 03:28:47 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 8 Nov 2023 03:28:46 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 8 Nov 2023 03:28:46 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 8 Nov 2023 03:28:46 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 8 Nov 2023 03:28:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QhrJjTatEERTZNM+vEF+lBkHUFZn4H7lNHqlDxMuywkpYI09yxytQdnuXtqI3mQfkHNaA3nC0Py5adSXymU2O8oEaguLbj/cZnc9uz33K1r61bRqkrsz4ZQzF8NdPerPpuk18qQgImnwpr4ZFSpKkD6FtmhDL6nDNr4miR5kkDSfDTeEGLkD6AzMhmaqYELv8dAyXtXw5zytLg3zd10nQUqQT9GBoQhPVtC2rT08km3MlAb8G+vNALvtzopUqj8mkon1fC4kbmEtvmQreK1MTvcb19V7eSCr+Xt9Nm3HSig2jWaj0/BLkK/35ll8i7zK8Se1jYsMwpqvNRjum+tKYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Se8A/T++kTdAGHXNWxA41cToNY5oQhfLY9tdxcOruZ8=;
 b=nOH7ww3YTkw2mMK5AOJZimiv7b8+25BrXIxJp5rXLsuCumRXfroi+5bjCgWO4IXLcVCowcA1K6VEZrL5xEw/u3YRE3ru+YCfyYzp/sAShlyISpJDS9ou+fV9+Q9BvSj2d3Qa3RC8fH7mtlqnCnWBJB0Zx0jYvT6c1RoQTcigLBsMX9gcKL4COR4/f5wkIwtfXIMNit+7+NSVqic23V5bI/287BsrCWuvdyaMnWbccYYyZyT51hvUyytT6t+qLXtL4x38ivd8Pnzb9JZMggplo2bjBVvoenTpWEyGibYtgC3hu8DSe2JChuq+BnNPwXrTtjUFzI33sBRNKP4Fda3/3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by BL1PR11MB6026.namprd11.prod.outlook.com (2603:10b6:208:391::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.28; Wed, 8 Nov
 2023 11:28:44 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::4bff:ef3:3532:d7eb]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::4bff:ef3:3532:d7eb%5]) with mapi id 15.20.6954.029; Wed, 8 Nov 2023
 11:28:44 +0000
Message-ID: <bb27edad-077f-85ba-89b8-f8d9faaecf57@intel.com>
Date: Wed, 8 Nov 2023 12:28:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Dave Ertman <david.m.ertman@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20231107173825.1853492-1-david.m.ertman@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20231107173825.1853492-1-david.m.ertman@intel.com>
X-ClientProxiedBy: FR4P281CA0305.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f6::14) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|BL1PR11MB6026:EE_
X-MS-Office365-Filtering-Correlation-Id: 7a166a12-e13e-4346-94f7-08dbe04ddd56
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GxRi4+HirG+93UPfP+ajCeSuXl9e7xVhd+tJ8izSnOSxswy7Jq2tp0hU2D/XD3YRRDHeEBGL7rQW/P5rvRLjt4t0V2ruoCNfro+d89M+Ta5P/OIZG8kbyy2wdmGUrVq4FXMwm90lFAaQzbtfS7x2qR/N77zBiNoEVssYFUoHrIpTNOV/tvq7LzF7dwKMFlccOVAmkl5Awk3cVGn6GFi0qUaUVVPicTEyVlkIYK4fvE1MrCO0rBzZ+pjyI9eiAgHIXhpEHc0ZO4UsWW8CrbZ3opM3j1DHin+hnYvkgt+LZ6VxwomRfE/eV8umoUnFdrxgWz6v3O/VHaX4SL7rXIg6zHYBiNEo8Pu6mzRcn7YgRLcUoTMPUFullf1vn2L4rK/sat0M4yE5ZCqL7ewv4WSs3mZIusbNy8C+8B83LKnuPWYuG+T3MmmehdTDnISAF5k3QQJwiTpBTa3Uo6mb5+WWsdX4JBKQWbLgLXF/Wn+qSL7ziLsGyUBhWwdvnN04HH6TiEkgkhVtyDcB74Vm3qph3W3TTQ/21wzNETH5l4QhsgrjO72rSvZ2Es4SXjrYGfXcgP3IBnwFIM7NhnfJDKy2HVQyZeJIR35/28O1sFM1AWxIopoKL2f96W45qx3bVIJCvg74KA23vjdz0OwN/oiewA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(136003)(396003)(346002)(366004)(230922051799003)(186009)(1800799009)(451199024)(64100799003)(31686004)(82960400001)(6486002)(6506007)(66556008)(53546011)(66476007)(6666004)(66946007)(31696002)(6512007)(86362001)(36756003)(478600001)(26005)(38100700002)(8676002)(83380400001)(2616005)(8936002)(316002)(5660300002)(41300700001)(2906002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SWplR1pWMmdPTHluSXV4UUpkUDZqZTRKcjBjS1BKK0FHMVBYQUVvMEJSZklL?=
 =?utf-8?B?MjBqM21vTlAxOG94SVlOMjFJS1I0dnd3VUh6dFlhMEgrVGg4VTNoYnBVMm1K?=
 =?utf-8?B?ZEZ2QWNDaEdqUDhmY2NFSGMzTWk1ZWlGenFzUHhaQUpQUFBZSDNrSzFNS0tN?=
 =?utf-8?B?RTFVaFRYTnZtQnZJb202UjFFTU5kWXhJVEpZRW1SMzAwaTBDWlMzQmpidFRa?=
 =?utf-8?B?eXpWZm05M1F3Y2xqem02OU5tWUdvNGJJbnVMVlF6VVRqK3VIclJodkFpa1F3?=
 =?utf-8?B?MVBUanF6QTkvR2FvOUNpRU5OQWNjN1YrUG1aRk9HaTZaV0MrV0llUzRiay8z?=
 =?utf-8?B?L1d6NW44dWtlZU1LVFNtTnVOa1VyOHRseDdqbDVNbldFV01WcHN5ak0ybFFJ?=
 =?utf-8?B?T0h3TFI2WXlpQlp5VnpHdTN0Z0F5U0ltR0xPR2NzM3dNbkpOTC80RVFtVExj?=
 =?utf-8?B?dzNoTWN3V2E1Q3lDTWxkcHNrTjJTSndHWGZpZkM5V0Z0aGFhTjF1SFJqZkJC?=
 =?utf-8?B?ZmtScnZHNHkvVmdITmtqbW9pUDVDSFlHaUs4a1dTbEoxQ3RrRkdqOEwrcUx3?=
 =?utf-8?B?NzJSZFkyMHlDZ3BkZ3JqNU5hVHorSzdxTTVMRGFHZHpKeHEzZFM2RC9ERmcz?=
 =?utf-8?B?VWZDbjlvbUtjM3dZWmRidzhmeXBBRFdSQjNza3NaS1B6V2Z5K2FDM2R0Zzlw?=
 =?utf-8?B?OXExRHRzN3ZnT1M3czBRVXRVSGluRklqUjVZbFhha0JIWHdLdWpVWnIrQW1F?=
 =?utf-8?B?KzZnTjduVlRSc3FpVGZRSjkxQ2o5NkVybml1MnROdHdScG5SRzJsWHIxOUI2?=
 =?utf-8?B?SEFlTElWblJPY0JFWWsxVmx0Yk5XM2wrQ3YrMEtQRGhYVGErNkc1UzRqRmpx?=
 =?utf-8?B?bVJLRklaT1dvaFNSd1Y2M0dzSVd5TUdIbURxakZycDM3dXdjMkFvMElrMFMx?=
 =?utf-8?B?eXVjV1lZOUpXbGUyTGQwRlZyZEdxaFczQ1JSdVhXTHJJam1hZzBUVVpPWll0?=
 =?utf-8?B?Vk02RWhnUzBRRklrVjBDRndydkFIam9TeklOdHhPVzJBcnJja0hoM2RIYUgy?=
 =?utf-8?B?dmtyYmYwaTh5SzZSVStKOU56N0FxL1VuemNCMys1NzkyRVVjMkNWb09EUmU4?=
 =?utf-8?B?Z0M3THJ5QVo4UUxrUFdyZ2R0TGtkMW93OEo0SzFremZRb0RibThFUE41a3RK?=
 =?utf-8?B?OWZRVlhGSFFrZHgwY1NkRW1VVDIzYmgwdGtrcDBSKysycksxZ1dud0lsQjY3?=
 =?utf-8?B?My93dGNML2w3cmtmazdiYnF3bjhPSWR1cTZUT2JuWG5mTHNJejZjYXo1Qzdu?=
 =?utf-8?B?OTAvemR1VGc0a1NnQmtOMVR2aXdDOVZBQ2txTFZVeVQ0ZGozM3VRTjVPeWdU?=
 =?utf-8?B?R3F1bCtBVDdqdnVaMjRvbzJhZHMrUnVBSTQ3b0JJY2NkTlgySHQrdno4UVF6?=
 =?utf-8?B?THU0Lys5emhsa0dmYm5OSmpkMWJaNG42WXhocDhrMEFTanc4bi92S2lDdStR?=
 =?utf-8?B?NlQ2bTEvWkxPajh5cHdsWGtrUUtVNjc1Q1AyWDZBOVg5Y0ZmemdzSllxclIx?=
 =?utf-8?B?OEdWVWgxQjRGaEpNOFNYenMySUs5b1BieDBWa3ZxbWdlbGxsaXEybDM3SHh4?=
 =?utf-8?B?RWZOMlc0aW9FV0E5ckwrc0Q2VkdGK2FSYkw2SjVwOHBGNlNCdEpCV1d4OVpE?=
 =?utf-8?B?b3R1UmpQMUtYL204disvQzY0UVR4Sk1VNlduNlpjd3pGZW9nUGo5Y0FyMXJL?=
 =?utf-8?B?WXY2cGhSeUlBcXJjRFEyWE5GeDcxL3M2czg5VkJEZGdEa1Z2bGZqZGVDM25N?=
 =?utf-8?B?RUlPVS96YlAvb1E3eFhjalFFNWZDSlF6THRRY2hlWGZ3YzM3NkhjcjdTbTJD?=
 =?utf-8?B?TzE1L2pucDR1d3pvMms4d3RJSzVsaUwvSEE4c2hZaGUwVzJNUU1SdlNqVDlh?=
 =?utf-8?B?aGZXVHBuRGMzbEdxN2hvdHdPNzRnUkFjcWFkWlVNVlltVFFsaEZOeTV6VHVt?=
 =?utf-8?B?TE44R20wekZqV1ZVbXhtazg1QTRNM2hSQjJOaElNaExMd3RTUmdsOU1qd1Q0?=
 =?utf-8?B?bHhQbnpXaC9KRkkzUkxROTBiU0JRRVgzV3VSNVdiY0wvRUp5RGJnQnBVL1VO?=
 =?utf-8?B?aHViTEN4T2J6MjVLZUZHTEQ0MUxpc3h2NG5YcXV6OTNOczZ6cHhMUHRhMjh4?=
 =?utf-8?B?c3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a166a12-e13e-4346-94f7-08dbe04ddd56
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Nov 2023 11:28:43.4466 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9wwHAp8yOPBVAGnWq3RvErk2kpsVnXAa/dRxj9TNgYyYJEfiq9nCA91aD6fbxE8VDotkowwASf95L0TRLYKyQuX95mNf54nWoQzTezgIDow=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6026
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699442930; x=1730978930;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=EnaGT8fQn0qiS05KZKtYtG2zqkaAFtZNmjAzQf3oO+I=;
 b=gpHGlUunB+FIx5vbv6OkG2KhJkJWZ5Q+pgmWKhriSlGnVu3G/a5fsb4W
 OO0TtICP+c9DZh/MtA7pw++GlUMG+xTiwMKhh30pWcc2ddF2Sxw54kkVs
 Y3fTIUljUjxCB5DmkDL3y5xrDWqeT8iw3lvs6XVmHV8ir2qzH5fCZUPbn
 fAN9q9aG7Sxyh3NiNHNHrTCkxIyUOgNLPiwSqA8qVl9MZC+J9eWz2Dg85
 RFahNDqlTpBy8RFGkZLlYge9eocjQSGxXuEkQTCIh/TzerfT46PCK+zXo
 j0bsAwNnaz3qbE/mrLezI0D5DwKK6TcgEB5FMGCL7/TSMsxp/AAUAtNBu
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gpHGlUun
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Fix VF Reset paths when
 interface in a failed over aggregate
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

On 11/7/23 18:38, Dave Ertman wrote:
> There is an error when an interface has the following conditions:
> - PF is in an aggregate (bond)
> - PF has VFs created on it
> - bond is in a state where it is failed-over to the secondary interface
> - A VF reset is issued on one or more of those VFs
> 
> The issue is generated by the originating PF trying to rebuild or
> reconfigure the VF resources.  Since the bond is failed over to the
> secondary interface the queue contexts are in a modified state.
> 
> To fix this issue, have the originating interface reclaim its resources
> prior to the tear-down and rebuild or reconfigure.  Then after the process
> is complete, move the resources back to the currently active interface.
> 
> There are multiple paths that can be used depending on what triggered the
> event, so create a helper function to move the queues and use paired calls
> to the helper (back to origin, process, then move back to active interface)
> under the same lag_mutex lock.
> 
> Fixes: 1e0f9881ef79 ("ice: Flesh out implementation of support for SRIOV on bonded interface")
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_lag.c      | 42 +++++++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_lag.h      |  1 +
>   drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 20 +++++++++
>   drivers/net/ethernet/intel/ice/ice_virtchnl.c | 25 +++++++++++
>   4 files changed, 88 insertions(+)

you should carry Reviewed-by (and Tested-by if provided) tags from
earlier versions and from our e1000 ML too,
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

in the future you have to also CC netdev ML and main LKML for ice
contributions
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
