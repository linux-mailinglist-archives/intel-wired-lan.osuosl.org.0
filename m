Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 11FCA50A9E6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Apr 2022 22:24:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4A19A6F5AF;
	Thu, 21 Apr 2022 20:24:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GZTPQMHVTjy1; Thu, 21 Apr 2022 20:24:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3E9E760B2F;
	Thu, 21 Apr 2022 20:24:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F2F431BF3DB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Apr 2022 20:24:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E3F9540A9C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Apr 2022 20:24:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qgWXeGwuHSmO for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Apr 2022 20:24:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 20D9840C57
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Apr 2022 20:24:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650572670; x=1682108670;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0J1lPNrgAKlJXrmI3hnGYZRpPyHHTs4/V6Pwo/LXaiM=;
 b=mbSs51nH2f1alibJRiFnShTkE9a0XJhxi5Lq6oTCfGVft3cGJ7QYZ3kK
 krSc5LCeKDH4cWlQDpF5m0USvlT7Qxqbpivsq/EkKSh6T7iLpAkEmXFmh
 NcQJaEMoMpUBaRGYfD4FkH6KUtGaCgkMniHmbyf0EbQIqoK2lepLNSuF6
 XEsL2WUBmXHiYg+QO3ATdFXbajzWtjfJh2l5bsU1D8uhKVMZyIXxS5Mv7
 52HliBY2UK7ySMaes+jKQUdghKI0WCVLMqzydPgpmb5CRwveyAKlyNa4x
 dnk1Z/0faDn5n4/RUo40M4DuKe7F2V3YL0Hw6/S/GA/CLn2wNL1h2MlGA g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10324"; a="289587134"
X-IronPort-AV: E=Sophos;i="5.90,279,1643702400"; d="scan'208";a="289587134"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2022 13:24:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,279,1643702400"; d="scan'208";a="658685945"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 21 Apr 2022 13:24:25 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 21 Apr 2022 13:24:24 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 21 Apr 2022 13:24:24 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 21 Apr 2022 13:24:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aJoE+pSqUAKdSy4t/tcg8Bu9J8JvmAYFwO/xm0tny/6Abq+4b+WJh0VDuH5p2eXT8m5uXWXzB48tjLasCBI5raQYYoztPeMb2q+eDqSNqnyeXnnmCNgKvETx6Yr6uzta9aGapuI90Opn3pK6APiRkQhQiytfbJHkWWdoRg886eRA1PEz6ATfWJ69fscGMtOslhFnEGF7N1L3VqHOGIWQ7Nhl+IrZAQxDTjyat8Uals/mRgsuCjPLxWgJhTwTcMM0o/TJKYCn1kqqmegInhlnha4pFs8jOGxMIyYZTlyY52wWYB3YGhU5yj5XxdA8mJR+wqGGaZzrbmUPll5F1PKBpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LC7YAmwc/7cPPguU3/EwzPiq1inVjR4YR/K2cQjRd88=;
 b=Txz/tmOLM3Ksi6v04QR1GDikNoC3PmZUubL4jEjLHkaO8q0C6/rA+r9aA8kM/4i1YgHVSHAWNlxXKLReL/V2Tu2SGcuzZZ0zy5sahs1Ing53tOFCtXfxcQ+jy8BjsbcOTtos1i5CziEDOyxVSQpAxfUQYo86eE4O6MtNPfz28P/pjH1/WrxfwvcdZU3hFMNvk7raqhPoBKT28Gso8GpuRKBNEPlue9+ymo/M7E7prwmyYpuGRUHtQ99OZRRsybbSa8YIhDKKbDJlsA1lYVLOTjmxRgl6ilmk6rtnEtxVl5YOziTpfS7zUMwAvDfucqOhB+1mvedBtOAvYrLyEioFoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by CY4PR1101MB2278.namprd11.prod.outlook.com (2603:10b6:910:18::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5164.20; Thu, 21 Apr
 2022 20:24:21 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3%6]) with mapi id 15.20.5186.015; Thu, 21 Apr 2022
 20:24:21 +0000
Message-ID: <ccb8e7f0-c038-c525-0902-47c321c19a10@intel.com>
Date: Thu, 21 Apr 2022 13:23:53 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: <jeff.evanson@gmail.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Vedang Patel <vedang.patel@intel.com>, Andre Guedes <andre.guedes@intel.com>, 
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>, Jithu Joseph
 <jithu.joseph@intel.com>, "moderated list:INTEL ETHERNET DRIVERS"
 <intel-wired-lan@lists.osuosl.org>, "open list:NETWORKING DRIVERS"
 <netdev@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
References: <20220420012635.13733-1-jeff.evanson@qsc.com>
 <20220420012635.13733-3-jeff.evanson@qsc.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220420012635.13733-3-jeff.evanson@qsc.com>
X-ClientProxiedBy: BY5PR13CA0029.namprd13.prod.outlook.com
 (2603:10b6:a03:180::42) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9563c60e-060e-4c68-69cf-08da23d4eac8
X-MS-TrafficTypeDiagnostic: CY4PR1101MB2278:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <CY4PR1101MB22783EFBBFF0E20C396E9548C6F49@CY4PR1101MB2278.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: i3jZ7lZF+U8rkWVfNsTmEups6AejAkh7TQ8Dm8iunWnoCC/Y1GQ8bhdc8oWwo7kzf16TtRE8JxAM82s/BjRgUczg58KZcJ4QFADmFe1HdRNJ4/peLe03tBTrbY6lWJRhWomfe3IdOyGwEcA84sR3kk7WqKxjsIFaHdLp+Dr9zfCWoQudti7SgmHfiq0fZn+8Wb9a24rpEgbwstpRgJUEs8X6+zhTeGnBj6R9Ox4ULhJWVbt85pZvbfJe1bCS9Q67mLe53xcSLHL6NBZT+YvWoOtkMvov+G9WVpEwDjIvSRpKnXbpiFdB46GB6O4Mh507vEMEZ8xEGpGwTdWLo119rIngjwhnLnpoN3tgO2e3DHVhrnvhTPq00ShgIIs3W7qpLLnxRh8Sud4CnUi72J0WrHsFq0PBGK6/okDFozS2PNwH09PU+X63p45KYJ+PMhjePwDKf6aYTO/5OugC64vLf/V96q8kpqzmjA0lRMerqkq54arGscuoKlmcUZeKC3+VkxoRsfc7rPQ05BtPEBE3bhbdz9nM2wfbiduN5vn4/vQOhMmoVocGtN1nWqHiFyNxr1kdo0+W0zo2fJBIeBj+maZqA11kLOvDTlpJtSvfrTbON2B968QSR4CA3XBpDxTeJzJvoz00d9zcCW4Jqao0xutvXSrXnPBkrrKd/vBz355cyPWFNCKpv9IQ6IBqJvwdOLNjjwMOhQjvyNh3eHOibjlYoxjGgm7wnzFzcgnjkO6y5FpiIqlNS8Z+w/nmxhtWg6KQ09ic97O+gGMbP4ORzxTb+fUYmb8ecMPM+1/ulgcOA6ymAC3W4FqRNZUWv1fwYD1UBte7sGpUL91C9g72s/MwpoOK9SeUYWKkwjObNwk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(66556008)(110136005)(38100700002)(66946007)(66476007)(26005)(2616005)(508600001)(8676002)(4326008)(6486002)(6666004)(82960400001)(316002)(966005)(5660300002)(36756003)(2906002)(53546011)(31696002)(31686004)(6506007)(8936002)(86362001)(6512007)(921005)(186003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y2RsWHFpb3ZpRFUrZVQ4dkFoZytXL3BpZUs1TFcvbnJiMkJYS1BPc2FGOUcr?=
 =?utf-8?B?UlFoakpFRXF4VjVsTEJ3dUprK1ZGdUhONDdqbmg2QVc5cU1qN21KS0lGbE94?=
 =?utf-8?B?SUVrS1hNMitPY2RmdU8yV3B6aFRqN0h6SlNhdHVQVzVwQm5GWnhCYVJVdDNt?=
 =?utf-8?B?ZnFHbnJldHgxVmN2QUZWN0wvUnZaUkZPWk5FZDc3VGtSS0M4MEsyYnZmdVpm?=
 =?utf-8?B?czUrWFlHVlRrSDNHSjBsOVEzb0RhMXZRSEx6V2k0d2JmMmRoUzYvdm5PVTNl?=
 =?utf-8?B?aUlhRGhGWlFpTUVDaFdVUlhXTG4zRGVLU2I1NzNqZTVyUlI4RlpmTHFpSkUz?=
 =?utf-8?B?aUp0MGRBd1Q1OXBNQzBhU2JySHFxeW5VcWFIM2pKWEk4T0JUQTN6bndQTVow?=
 =?utf-8?B?ZXRxelNkcmlRZkRYM21UTXVWblBOUG1tNFcyVTU0a2NBOEdTZmdwWTdyaExV?=
 =?utf-8?B?MDNPU2hWaEhVbjEyRXFwVCt0NWR4UzMzQzdSbGdScUxBQ0I5bmVYalVMNjd1?=
 =?utf-8?B?T2k3Z2dnTkNoa2F1d3ZUOUQvQThpWXVKUmlkMFFiRUFvYUtOMEtxWGp3M1Jv?=
 =?utf-8?B?dmZGeVM1VVREWGlwaVRmcjBrOXViMkVDR1NpTkJlVFp4TTNDME5nQlc5ZS9s?=
 =?utf-8?B?alpyMHN3NzNURHZ6bVJ1Z1JKQk9GeHQwMTRpUG56UW9ZUWZOUDlrRUkzVklT?=
 =?utf-8?B?alRmb05QUXp4aVJZNmRXOHY2VXNZZEZCUHN2Nk9vNFF1NGdwdE5pRlZ4ZnZh?=
 =?utf-8?B?dHZpbklZb29uVnZtcmI1cFRocEdaVWN3WkZXRzc3RktETjc5ZU9ZQWh4ZTRw?=
 =?utf-8?B?OG9vYUt6cjJFWFFDdFI1emJBS1g0aUV5UkpiZnQvM2puTm9HeDM4b015T09B?=
 =?utf-8?B?TFVHWmFlWU95cWl2SmxzSU1SaytiUXczZUZrcWcvQWJ6RUxOMnlBUUhHYmZJ?=
 =?utf-8?B?b3RsTzQ4Y3NtYnVZbHJKSFdXQkJJRHc3b28yNkVlS25vYjJFdklkTXI2VGZ1?=
 =?utf-8?B?bmdNTGpicG5zRVdaWHlhOVZiZUVUTlNFY21wTTBBaU5IQStTQTdUT215eUJ4?=
 =?utf-8?B?dGh5L3Npa21QU0N6UjJuc1hlSmNOQnVoYVFSQ0c4L3NYbjRxMU44bG5xMjJi?=
 =?utf-8?B?VE9UUzhzQlFwaFdLSTlRQWowZzFnTUhkVmpvcTdUL2xDUnUyMEF4TGNtdDdk?=
 =?utf-8?B?Y214bGhKWVp1NDFBandNUkxnUXJhbFJ0cUY0T1hUQWRnSXZlWTE2VmlSSzcy?=
 =?utf-8?B?b3lpWEhFU0NCOGtmSzEvcHQrRGhBelZlU0FCcWt4d3NtcmVZZUg3eDdGVmw5?=
 =?utf-8?B?NWFRSWE2cHdDaG4xZVFHQUVoa3VxODUxZFRXamtmQlI2YmpHNmZHbit3SUtr?=
 =?utf-8?B?M3lacDYzTXhMU20ybzBVYk00Um5vdDEzTlR5M3Q4MkxQQ1Q0U2FwbDlSbmx2?=
 =?utf-8?B?R0NBZzY4NlAwWW5zNVdrbWt4SEdyc1ZTLzFReEFwUk5hUUE1K0tZeU1qYnA5?=
 =?utf-8?B?NDNkZmlmNlZMenZKNlp3dGtxL1c5VW11blluc2NvRS8rSXhMbHhhTEk3c2tM?=
 =?utf-8?B?bXV5VG9zbldEREM4NGpSdlk0bVRDbDVrTitVRnRsL1dsa1hiNit4UDJOTzJD?=
 =?utf-8?B?S25BaGtIUkE0bWdBd1FFVEpTWUFiOTc1VW85bmtQUGRlYlhoa3VteXMxUDUw?=
 =?utf-8?B?c3pRQWErYm5UeWNjT3JaQUNwa2dLQUd2Zy83NnZhRHZLbjFycTF5dFJsclZN?=
 =?utf-8?B?dzR4cVVrOWlZWEIwSnpOVUhidzNCZDArMmovSTJlUlc5cVlZYXBieVVBNzZr?=
 =?utf-8?B?Y0xDcVJYdkFXMktZcmlqNFhXRXByQ08wYnJVa0Q2clRQR0VjYnVVTGpzcWFT?=
 =?utf-8?B?WVZxeWdYdUhzVFM0UVZHUW9ZOE52RHdKMWNQV09hOERpcXpPQ1gwVXJ3M1dD?=
 =?utf-8?B?dS9jV3B5V052Sk8zNjlqSWhWMmFGS20wcmRaSWFncXBiYmpCbXc5WWJjamJn?=
 =?utf-8?B?b2dweit1aDM4N2xwZU5rMmFYbnF5ZmNCOFdSZkNzK1c0Zi9La1FieEVhRWNX?=
 =?utf-8?B?dTB2SXFXTitTbXhaSEhJci9HdTVkdUNJS3NiNTBKanVmczExb3plS0JHVlNk?=
 =?utf-8?B?UFN6Wk9XbTNkaXhhOUEzZXZuS1ErWHdOZXdnUEZUY2V5Qk90dzMwNEo0eXFu?=
 =?utf-8?B?MzF3WFZJbmM0UnBQaFh1UGsxY2tJUFpjRTBkNzNTeFVBQWY2UjdzeUJXajR6?=
 =?utf-8?B?NG9JdGdpcUppM2twakpyOUd3MUIrWDZTaHBsT1dyMFZ0U29Yd2Z3VWMvNkxh?=
 =?utf-8?B?N0dDWU9UTGVONk85eTVHMTRnV0orTWtyN2tBVVJRdmdPaFpNdEI5eTNvVGdG?=
 =?utf-8?Q?JPopNAxF1Tgt06k8=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9563c60e-060e-4c68-69cf-08da23d4eac8
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Apr 2022 20:24:20.7419 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QfMJ0kMGFfeRPURYIJlzY1e+Nb7bZtk0+2BP6DTTKR23Kc2N6yNNJOr7gMSuFIl7kbgy2ZmxZoSTWykQnwU/YL2kMm8uBCCMC/hEDyTgPhw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1101MB2278
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2 2/2] igc: Trigger proper interrupts
 in igc_xsk_wakeup
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
Cc: Jeff Evanson <jeff.evanson@qsc.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 4/19/2022 6:26 PM, jeff.evanson@gmail.com wrote:
> From: Jeff Evanson <jeff.evanson@qsc.com>
>
> In igc_xsk_wakeup, trigger the proper interrupt based on whether flags
> contains XDP_WAKEUP_RX and/or XDP_WAKEUP_TX.
>
> Consider a scenario where the transmit queue interrupt is mapped to a
> different irq from the receive queue. If XDP_WAKEUP_TX is set in the
> flags argument, the interrupt for transmit queue must be triggered,
> otherwise the transmit queue's napi_struct will never be scheduled.
>
> In the case where both XDP_WAKEUP_TX and XDP_WAKEUP_RX are both set,
> the receive interrupt should always be triggered, but the transmit
> interrupt should only be triggered if its q_vector differs from the
> receive queue's interrupt.
>
> Fixes: fc9df2a0b520 ("igc: Enable RX via AF_XDP zero-copy")

You're missing your sign-off; same for patch 1. Also, there's a handful 
of issues being reported by checkpatch [1]

Thanks,

Tony

[1] 
https://patchwork.kernel.org/project/netdevbpf/patch/20220420012635.13733-3-jeff.evanson@qsc.com/

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
