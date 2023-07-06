Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C0050749A78
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Jul 2023 13:19:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 51CC0417BB;
	Thu,  6 Jul 2023 11:19:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 51CC0417BB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688642348;
	bh=pr5bkanGxFPA3P39fbGQYd5i8NubQsJbYjFsxoNTb4Q=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FYBHTcP33gicn2uxzhiMuxlzKRDI6ML8MyQHSVP7L+J+YPB4K0qRrhEYvBTTSVpfj
	 npIy57KCu6aJoQrofbvCu+YSyAHs3p7osdf/udqYF8JVUMSXc3pRZPjD3cISq+NU3J
	 LaU1AZNENdiWn8te53lgxaU4eTddx+XbFI99TiAEm5M5MXR3O3/Y2UffeKJTMnikxu
	 njfwikUza+VHPh+pbHUVp2jotiJwi2kB9RRuk+Jfqm43RyJKtuX9ouPvENI1lJj6J6
	 O5mp3LZNojO/htIfQ9ZaJQYTmRD+sUXwO3yEysiCSl8KeMjcvyPlXWhtlOCbeL4WnK
	 /zsBSg+HxMd3A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g0uhPuAat_vd; Thu,  6 Jul 2023 11:19:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 83D8C404E2;
	Thu,  6 Jul 2023 11:19:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 83D8C404E2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5A9841BF345
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 11:19:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 382E84155B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 11:19:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 382E84155B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Br34mvbHm936 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Jul 2023 11:19:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C913F404E2
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C913F404E2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jul 2023 11:18:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="427256384"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="427256384"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 04:18:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="722755749"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="722755749"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 06 Jul 2023 04:18:57 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 6 Jul 2023 04:18:57 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 6 Jul 2023 04:18:56 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 6 Jul 2023 04:18:56 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 6 Jul 2023 04:18:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a+WuM6YSqE8JaKOad08gEcFbPEqBXXdNZsUYOcbd4pewjXCmbBKYjsV6AtT0JXA6Sf5TPwrYg62rEEUmozt7xSYpAV4gY5guo8FgZTYrND41tcpwHvwrVdVqTvHAZumNLMyjdYoQvWTXYbKyBQLWmrp8ebLgqOh5TADYBRyiXLVMC8/OIO+E7bV6STzvq3pMfiJZB6aUaedJYXZM/QVLo6nzBwgI4sCVHg/QjwvOLLO8k8U1fKhNGiVzfcf4CS6blleLv8QlfLFm1gcowdPtHwfMTQoptDpDmBeSz4aE0dQrSYr3gd5Aaqrmv2tOtF2oppog4blpWPfTpGA6rd4ecg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LstDgzVhdZhI9afHNuHhjhQNxa7VeEVu0SDkCm9JsIg=;
 b=fkYgKKjCTSpEIt59rWc76irT9lg1rW/32arDrrlNmlL7sR4ncYgSYVKrzITe13ZPhObmB4BFTqaoejFQ6+3zO7R9EInxqN2rVYcsVCy5I1IQK5zx+NzQtQjh9n8rC7+tHg9ajwCmTXCMKnx1Vep3zGwl93id0JGf07ov/fltTUgEAVgC1jL0+oEvlpDUihoAKKZpMAl8XgifksTkBDhfke4rMnc3EOOkVr5aCNdKE1SC+Exfa/5SxbV+h+AshneBlN8aiocK427aCT5tx/NYXecDBWNmRuf5gDS1a4DH70ohF4HfCth6k44Dn0QLWMT5eebmrDOULK1sX36bptZAFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by SA1PR11MB8326.namprd11.prod.outlook.com (2603:10b6:806:379::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.17; Thu, 6 Jul
 2023 11:18:55 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::87ad:6b1:f9f4:9299]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::87ad:6b1:f9f4:9299%5]) with mapi id 15.20.6565.016; Thu, 6 Jul 2023
 11:18:54 +0000
Message-ID: <01ff6c19-aa04-857e-ad62-cd2171661281@intel.com>
Date: Thu, 6 Jul 2023 13:18:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Nebojsa Stevanovic <nebojsa.stevanovic@gcore.com>,
 "jesse.brandeburg@intel.com" <jesse.brandeburg@intel.com>,
 "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>
References: <efa5aab9-3f11-44d0-a6ff-fe60099a3fed.673e22aa-1b68-4a30-b3cd-5f214452578c.345b7c07-92f3-48c3-aca7-e9991e5422a2@emailsignatures365.codetwo.com>
 <VI1PR02MB439744DEDAA7B59B9A2833FE912EA@VI1PR02MB4397.eurprd02.prod.outlook.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <VI1PR02MB439744DEDAA7B59B9A2833FE912EA@VI1PR02MB4397.eurprd02.prod.outlook.com>
X-ClientProxiedBy: FR0P281CA0148.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:96::9) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|SA1PR11MB8326:EE_
X-MS-Office365-Filtering-Correlation-Id: b0b1e6b9-248f-420c-660d-08db7e12c8a8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RqUfyoof5ygm1Xia3hmdFME2RRScfwIBqQ93Ek1lzn98p1r77UKtQW2L9hmyX2lPJ5+sq9PpvO9zltU0+q7Leq5H1QndFjP8P74hLMV+rYcL9FdkHp5/jWLfoJ61wQyOO1XaRMggjF/6znCeLwreOeFKU1vKyGrP/4/jWM3ByD6HoZS6L/mZtv9Tkk8RU7BBPNAuWhN/IiXeeZyI8yJ6jy8A1OHFHM3OVdx5sX4VTfU12W6olos/xgwC2Gyyo2UoDnZwVR2yPoxRIiLWY1NHEJhaM0Gf0Bcx4KJXqIGy8c805/dl1oHG/rKedHye6FH3LJyMrIrSGT1nCjXK0Sf9sgrouDeg3l4WAj7UHXLdE9Cg53rDc2f4cdjvm0PZEFiwc8pWqR3Lx+udNeMMSGkMNHu+ETdUM618u/KBgiu68nC8HVSWmHzA6y/80GZOffH2GIooI3BJPXHa6Kgv1GUdDdkDzpb/e/7f2pOlgNZhF6UADhcZ+eQwZRi4N1AsWkuwuVUcdxTovajA8yoSl2pAHM1CyMshEUuhbnpvH729RfhL+5SOJHgQoAeEtWbakUsIyhOR2KlhE8xjHZ42qLEFoshgf42VL1J/d6p03Q2ptSZM5LFB1tQNxOhcguP6WhbE
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(346002)(366004)(396003)(39860400002)(376002)(451199021)(45080400002)(478600001)(6486002)(6666004)(110136005)(53546011)(26005)(186003)(6512007)(966005)(6506007)(2906002)(66946007)(41300700001)(6636002)(66476007)(66556008)(4326008)(316002)(8936002)(8676002)(5660300002)(82960400001)(38100700002)(31696002)(86362001)(36756003)(83380400001)(2616005)(66574015)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TGxHZ3YvL0JQdVlGbmZCaHgwV1NCK1F1NHJmS1ZJVWptQWQ1cEhLbXdVYzVr?=
 =?utf-8?B?M29YTzQ5bElTbkI2VHdIcThSQmpZL2NGKzMxTGlKd3RLaldSYitXWXVmaVA4?=
 =?utf-8?B?ZlYrRWlFWm5JelFzdE16Rnk2SlEvTTlxNEJHZFh1MWlXMm9kNkg5bEJPanp0?=
 =?utf-8?B?ZVdEOVcwcEYrY0F2NWNMSjBDcnhWYzZuSEVETjRmcmlYS1dIM1d6RWM1Ylhn?=
 =?utf-8?B?SWg3bTE3UTQ1ZjJQS09NT1JScGlualNwTXBtNURwWC8rT3V6bGEvVG1zS3NP?=
 =?utf-8?B?dWd6MkZ6cHRuZk5ITmRtTTBBQzdBZmJUUmZ0VFpTTy9DMDlZbW9UOEdGM0lq?=
 =?utf-8?B?UkgxVGtaRXVVajR1RCtFS3JUcnJxbXk2emtXNHNQcnBNZzhpTVUvNEt0Z3Ra?=
 =?utf-8?B?bEFzZ0UzeU5Jdk1iancvU0ZpVEl2M3ZXV2MwTHZFcSthWStmWldtQ3R4UHAz?=
 =?utf-8?B?UmhtMEZmNHYvZndYcjM4QjNmRFZ0QW1qdkI3aG5MOUhsaVRua1R4czlxSmZ3?=
 =?utf-8?B?Zmp0azQzTW1nZmtWelg0OTBrMDNyYmxGeXVKZzdjWnRvR3NaK09POTlzSGtW?=
 =?utf-8?B?a2ppM0lvLzB2V3llSy8yUEUyaEM5K1B1aVMyeDdGcFlxVVJOZDJBRGVMMndQ?=
 =?utf-8?B?NDAwMVRTRkg3cmFOa2J2YXJ5L3JmUGtNWTlmSlFVaEE2L1NKK0dnWUJKdTIy?=
 =?utf-8?B?cmlNeVc5bm8zM29jNWZGRXUwVmo0bmdvcXhRb01lZUZxM3BEbTJ4QkFvNEl1?=
 =?utf-8?B?MWtSeUFPMDdXSmdQSmE3eURuaitHTDRPVmdjT0x2MXFhbjE2M1ZrKzhtSHhv?=
 =?utf-8?B?UE15NjBsbkJwWTlLZU1rMzVoWndSRkJ5dU9FdFMxMmdpRUNkTG9za3VwQ1RL?=
 =?utf-8?B?bTlTK244VnpwK2F5RkNxV1VINHBjMGMwTGtaOFdtS3lGOGpzbFM1SWNMWEg0?=
 =?utf-8?B?MVp1cjB5Z09KUmhlSHRabnFvRElYQko0cmgrUjl6Tk9IUTBxMFAzSzFRQkFC?=
 =?utf-8?B?U1ZCbkxocHM0R2V5R3VSbU9vUklFZnlWa0xGNk5nMmNMNGhSb09iY1R5VUE4?=
 =?utf-8?B?ZWRremxFNDN3b01nK1FqYXZwTWVCTUdlL2lySzhPRWNpQjF1WHc0RUhJU3Jr?=
 =?utf-8?B?Q1JCWDA0SGF2czVja0hCdHFMYXYvTDBCVWRMTWRnaUdoZFQ0NlhrQXZzRXNo?=
 =?utf-8?B?elgxcDd0dy8xdmovbVZ4UkRNOHpNUGVBeWJxUWI2NGJjMUp2ZmthOEhxeHZ3?=
 =?utf-8?B?aDN4eDZNSkNPWVYwKzhicVlBOEttN2wydjhjRjQ0OWl6UFRLRVBIdlFnRDFG?=
 =?utf-8?B?Yy8wbmFpTnpRN3FhT1dpbEVoYmkyYkM1TDFZZytuWmRMZjY2U1ByZnlycGV1?=
 =?utf-8?B?MVdCL2JBWXJxUFNZbHRKbWRRRUxyUGhUa2VNcjlNcTRkUjJQMmNCUnpIMW1V?=
 =?utf-8?B?dXpUQWVMVkFwWTdvb2RYdnNHOEVaVmFsWHNBT1ZqWkVrMnJQb2FUeFNKV3hG?=
 =?utf-8?B?ZEE2bWl3NjVtQ09KT0ZyVzM3VzdYQldsS1ZvSUpobnZmVVl5MEovL2RycTlr?=
 =?utf-8?B?TWIxRTJEbWIzQlBsdnVuNzBua1lPRmtnUWxFSUE5bkd5YWw5RFpGK1dnV1Jm?=
 =?utf-8?B?TGdqLytuQ0xmNG9tb1BEQmdtUnpUdnlpRk9GVjA0MytHZXduVlh2TWIrY01z?=
 =?utf-8?B?OFhYczE3ek5SRjArODZRakR6QnpPcnFDYmtXZUY0R1MxN0I1QWkrSVlRWEIv?=
 =?utf-8?B?OTd1Szc5aXFPcU9wK09URTNHWWpxYlJzbnVJVHpqRGVlQ2F5SlJOQXJvcDEx?=
 =?utf-8?B?UktVcklFc0Z0b05vMDdGUGZEU1F4VGdQYWJ0MHc2YkNDRnlQbGNQampEWG5p?=
 =?utf-8?B?dDlVUlBvMGxqc216L1VKUVZVRGlDZnArN3ZqbEtiUXRSa2ViT250MWd3Q3gx?=
 =?utf-8?B?MWNvWDhMWUhmZGR3WlRnRmEyeDdzdDRZeXJpRDVRSXVlWG9NQ09QU1MyNFRu?=
 =?utf-8?B?WjFmNUZRendKRVp4M1dDaHVFZU5KZUZtVnY1cjZRTFdNeG5SamtVR09QRlJE?=
 =?utf-8?B?MmN2cDVoTTZxQ2YwTitlMzdnVlQ1cmlvTlBXSDNpWTIveVZTZ2dRRUJQVXNv?=
 =?utf-8?B?RkI4NC9NSFk0OU5PZnBNMUljemN2WExCZ3F6eWt3THBlQnYzbWkrQUdod0RX?=
 =?utf-8?B?T3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b0b1e6b9-248f-420c-660d-08db7e12c8a8
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jul 2023 11:18:54.6907 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HDISxQF0JtkRkpYvNsfCj1/Yt6TVshoWCYM1aekxlAJjA6OanfDHcgs/dBVn98d4LQL0j6yea66NKr+9blgMLEDUrPlScBpGE35z2zPKGXk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8326
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688642339; x=1720178339;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CdEIgHEaZCwhvTfshyuEWNLxKP593Oq5+MEORvWZxIU=;
 b=EHYjHJuyScDoNy+ufX75BC5QK6j/Hwf8ctfzIgVy2m2cH8qe295rFvsa
 cAtZCWTO+Q6sY43ldOU9grrExyiCCzWdb+CA1igCEz8DTNMyBIM6Lnkts
 ZNy5F9UNCDELwz6LnKfdlNIjWhN2j8y7yA2jdpdvr9UZkP5uM86QTsrwY
 gBPiHsrccuvp8quaY2J8B6njC0OLN4ouvUAlp8iDdxUGMNt1zV37ZYzx0
 yP7CWQg8iM6CNCbRbhbvvLwP2i0vaKdlSIPDqsC4ZTli1PBF0UyDTl877
 /Rc3O/Pfz9PRMZiIJZu04Wz5nyh+eVBYQ5SowbI4B++3Oy0qSaeVeLYPN
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EHYjHJuy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Bug report: Intel ICE driver
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gNy80LzIzIDEwOjUwLCBOZWJvanNhIFN0ZXZhbm92aWMgd3JvdGU6Cj4gRGVhciBtYWludGFp
bmVycywKPiAKPiBXZSBhcmUgZXhwZXJpZW5jaW5nIGlzc3VlcyB3aXRoIFJYL1RYIGNvdW50ZXJz
IG9uIEludGVsIE5JQydzIHVzaW5nIElDRSAKPiBkcml2ZXIuCj4gV2Ugc3RhcnRlZCBleHBlcmll
bmNpbmcgaXNzdWVzIGZyb20ga2VybmVsIDYuMiBvbndhcmRzICg2LjMuNSBhbHNvKS4gV2UgCj4g
dXNlIHZhbmlsbGEga2VybmVsIG9uIFVidW50dSAyMi4wNCBzZXJ2ZXJzLgoKVGhhbmsgeW91IGZv
ciB0aGUgcmVwb3J0LCBJIHdpbGwgdGFrZSBhIGxvb2ssIHdlIHdpbGwgYWxzbyB0cnkgdG8gCnJl
cHJvZHVjZSBpdCBsb2NhbGx5LgoKPiAKPiBJJ3ZlIGF0dGFjaGVkIHR3byBzY3JlZW5zaG90cyBv
ZiBncmFmYW5hIGRhc2hib2FyZCAtIG9uZSBzaG93aW5nIG1ldHJpY3MgCj4gY29sbGVjdGVkIGZy
b20gZmlybXdhcmUgdXNpbmcgZXRodG9vbCwgYW5vdGhlciBjb2xsZWN0ZWQgZnJvbSBrZXJuZWwg
Cj4gKG5ldGxpbmsgb3IgL3Byb2MvbmV0L2RldikuIEFzIHlvdSBjYW4gc2VlLCB0aGVyZSBhcmUg
c3Bpa2VzIHNob3dpbmcgCj4gb3ZlciA0MDBUYi9zIHJlY2VpdmVkLiBXZSB0cmllZCBjb2xsZWN0
aW5nIG1ldHJpY3Mgd2l0aCBkaWZmZXJlbnQgCj4gdG9vbHMvc2NyaXB0cyBqdXN0IHRvIGJlIHN1
cmUgdGhhdCBvdXIgY29sbGVjdGluZyBpcyBub3QgZmF1bHR5LCBidXQgdGhlIAo+IGJlaGF2aW91
ciBpcyBzYW1lLgo+IAo+IFVzaW5nIHByb3ByaWV0YXJ5IGRyaXZlcnMgaXMgbm90IGVhc3ksIHNp
bmNlIHRoZXkgYXJlIG5vdCB1cCB0byBkYXRlIAo+IHdpdGggdGhlIG1haW5saW5lIGtlcm5lbCBk
ZXZlbG9wbWVudCBhbmQgd2UgYXJlIGZhY2luZyBtYW55IGlzc3VlcyAKPiBkdXJpbmcgY29tcGls
YXRpb24uCj4gCj4gSG93IHRvIHJlcHJvZHVjZTogSW5zdGFsbGluZyBzZXJ2ZXIgd2l0aCBVYnVu
dHUgMjIuMDQgYW5kIEludGVsIE5JQyAKPiBmcm9twqBFODEwIHNlcmllcy4gSXQgaGFwcGVucyBt
b3JlIG9mdGVuIG9uIGhpZ2ggdHJhZmZpYywgYnV0IG5vdCBleGNsdXNpdmUuCj4gCj4gUGxlYXNl
IGxldCBtZSBrbm93IGlmIEkgY2FuIHByb3ZpZGUgYW55IG1vcmUgaW5mb3JtYXRpb24uCgpVc3Vh
bGx5IG91dHB1dCBvZiB0aGUgYGRtZXNnYCBjb21tYW5kIGlzIGF0dGFjaGVkIGZvciBidWcgcmVw
b3J0cywgCnBsZWFzZSBtYWtlIHN1cmUgdGhhdCB5b3UgcmFuIHRoZSBjb21tYW5kIGEgbW9tZW50
IGFmdGVyIHRoZSBidWcgcG9wcyB1cC4KCj4gCj4gUmVnYXJkcywKPiBOZWJvasWhYQo+IEdDT1JF
IDxodHRwczovL2djb3JlbGFicy5jb20vPiAJCj4gKk5lYm9qc2EgU3RldmFub3ZpYyoKPiBTeXN0
ZW1zIEVuZ2luZWVyCj4gbmVib2pzYS5zdGV2YW5vdmljQGdjb3JlLmNvbSA8bWFpbHRvOm5lYm9q
c2Euc3RldmFub3ZpY0BnY29yZS5jb20+Cj4gKzM4MTY0MjY3NzE1MyA8dGVsOiszODE2NDI2Nzcx
NTM+Cj4gZ2NvcmUuY29tIDxodHRwczovL2djb3JlLmNvbS8+Cj4gPGh0dHBzOi8vd3d3LmZhY2Vi
b29rLmNvbS9nY29yZWxhYnNjb20vPiAKPiA8aHR0cHM6Ly93d3cubGlua2VkaW4uY29tL2NvbXBh
bnkvZy1jb3JlPiAKPiA8aHR0cHM6Ly93d3cueW91dHViZS5jb20vY2hhbm5lbC9VQ0ZodFFFN0hC
MDk3YTFfTmZ2LU1hX1E+IAo+IDxodHRwczovL3d3dy53ZWliby5jb20vcC8xMDA1MDU2OTg2MTg0
NDU3Pgo+IAo+IFRoaXMgbWVzc2FnZSBpcyBpbnRlbmRlZCBzb2xlbHkgZm9yIHRoZSBhZGRyZXNz
ZWUgYW5kIG1heSBjb250YWluIAo+IGNvbmZpZGVudGlhbCBpbmZvcm1hdGlvbi4gSWYgeW91IGhh
dmUgcmVjZWl2ZWQgdGhpcyBtZXNzYWdlIGluIGVycm9yLCAKPiBwbGVhc2Ugc2VuZCBpdCBiYWNr
IHRvIHVzLCBhbmQgaW1tZWRpYXRlbHkgYW5kIHBlcm1hbmVudGx5IGRlbGV0ZSBpdC4gRG8gCj4g
bm90IHVzZSwgY29weSBvciBkaXNjbG9zZSB0aGUgaW5mb3JtYXRpb24gY29udGFpbmVkIGluIHRo
aXMgbWVzc2FnZSBvciAKPiBpbiBhbnkgYXR0YWNobWVudC4KPiAKPiAKPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLXdpcmVkLWxhbiBtYWls
aW5nIGxpc3QKPiBJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwo+IGh0dHBzOi8vbGlzdHMub3N1
b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgoKVGhhbmtzLApQcnplbWVr
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdp
cmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9s
aXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
