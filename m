Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 721C8737E2C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jun 2023 11:16:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BA27660F4E;
	Wed, 21 Jun 2023 09:16:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BA27660F4E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687339003;
	bh=UcoTH8ajgrhszDqmimOciO2Vi+PaZhFf0Cvo78aZFb0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yfbPKOpFm8iXnNzJ18/7l6F5SQr9CG07rGZf6vKHFjWiCSetXpy7ZVQdXEzvrm03m
	 bbAvb29h148cPNv5alNwcqZozUOTnYR33PJRluHHHei2oQ38jNvsCr109VhutSI8/u
	 vbJrgXapbjRhTWlekO63yroP6GrfkW7WEArUeXv2FsEvOrSViXJxH8vEm53R4D5kR0
	 F4iRTqQT3iiTyt8Nb4l3x1L70ZgQe0EBW8Q4eMtdSkkfFjl0HyPwBtRvLnvDHSqpfl
	 ZXFMh2VFx2+NSckbR+4cmT54NRR/N+Kt5giv58UrcTsu0hF8m2nama1jcs4P9QPvdS
	 N2Jf97KVTw0lg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YhVRxDaKOBrn; Wed, 21 Jun 2023 09:16:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 72B6960EF2;
	Wed, 21 Jun 2023 09:16:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 72B6960EF2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CD2B91BF4E5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:16:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A27C841DED
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:16:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A27C841DED
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mHL1bIgoB55G for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Jun 2023 09:16:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 67C3D41DE4
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 67C3D41DE4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:16:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="426072266"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="426072266"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 02:16:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="664582464"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="664582464"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 21 Jun 2023 02:16:35 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 21 Jun 2023 02:16:34 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 21 Jun 2023 02:16:33 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 21 Jun 2023 02:16:33 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 21 Jun 2023 02:16:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LCuSisxEwSjlaSumgOv7gToBfThnED/NvvfjOG2ISxV6GzLPzI9I9b0SZCj0QD8YqbBXRNaJQ6DaJbA+hqUqPBvymNKiaS/xPy4Dng0cT5t0E24gHdRw6O8Jfkuy1m+ekw9FBIIhw9nQKK4GbfpWn9EM93uBN6BRD1C4F3lqFXEHeLyWseYf7deJWqIBqZuFnHwDipPYmhp7vSAtiaHO50wxvbItMvJFYx5Un6X4V95DKR/arJQyMWjX+9n0FrSdIirqDQc/5+pQG3TsXJFFDrwIjVVNcmrf3Ljsp34J9+vZh9IxkF35GyjyTkzhF0oNyGZOJqCg2qmqqcz0AGngrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JeKNaYUkll+Qec84QjKMAuv1r5ZWIX2FBQvrH71dMeY=;
 b=h0UEZEa/tCtg3Umj8tmeNjMZdRrJEDrGDhy8y+N1NYccKDNI8PYeHMAKdgFSfpADFfCrPEItXtzDaS/Kr3G7OS7zic8QcaSg0Lt5za8hCfqz/B9lrEnoQVJeFAbw+qacumUAEt3aW/sQSWqlKsI2QCweioldys4N84gZ6VLs5BVgUKP2pVA9l9GhNoLXoZkBJzckmEzmUYZWg0wUs8mQTxYvcUCvPHg/USSS3YLNws/9GJ9fKg5g9+NA6WNx+Mr1RhVwtzWKdIXKA7qRvWewaN/V165BlHAgb2+hGHpjADeQaBWcg/A2nDFdFoYkNqHyfn+9x3VSzCevmwD38Qg+1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3047.namprd11.prod.outlook.com (2603:10b6:a03:8b::32)
 by BN9PR11MB5404.namprd11.prod.outlook.com (2603:10b6:408:11d::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.23; Wed, 21 Jun
 2023 09:16:28 +0000
Received: from BYAPR11MB3047.namprd11.prod.outlook.com
 ([fe80::66e8:b847:cd10:10ec]) by BYAPR11MB3047.namprd11.prod.outlook.com
 ([fe80::66e8:b847:cd10:10ec%7]) with mapi id 15.20.6521.020; Wed, 21 Jun 2023
 09:16:28 +0000
Message-ID: <30e05bf7-54ab-733b-f924-fa8ac49a3bf1@intel.com>
Date: Wed, 21 Jun 2023 17:16:21 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.11.2
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230620100001.5331-1-lingyu.liu@intel.com>
 <20230620100001.5331-2-lingyu.liu@intel.com>
 <85ae556e-4038-2618-c8be-7ca035daa024@intel.com>
Content-Language: en-US
From: "Liu, Lingyu" <lingyu.liu@intel.com>
In-Reply-To: <85ae556e-4038-2618-c8be-7ca035daa024@intel.com>
X-ClientProxiedBy: SG2PR01CA0140.apcprd01.prod.exchangelabs.com
 (2603:1096:4:8f::20) To BYAPR11MB3047.namprd11.prod.outlook.com
 (2603:10b6:a03:8b::32)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3047:EE_|BN9PR11MB5404:EE_
X-MS-Office365-Filtering-Correlation-Id: a2468379-05ab-4e97-19cf-08db723831d6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qKFgYSJ5wEvx1IEDkq4sBohse8VXrBo5F1+D8fzdCaqFf84jDjUVwgoQaDBgRIVKlAZ5NswBk4IbDIXCluvXy0af6vpHQ91Pj6zUgmVIj+uj9vQ3uK086xQzSpRcQtb+eYy7roz1Rxsiqq2r6sG7YvxIeqWEiEQjmMYR97hMpresHTGrgND0nI7fnXUcv2Q71pExnKfvEMc6dQz7BNs8pmjQzWLanpfVsTMqzqNEDy7RwUHsTlkr4YTDwtOKkZRY2HiJZ03h7RKgMpzhwgzn4AFqK1BOBFkuG8gcTsrRcLeQKCRuL2pZY2HXYT+nV6eucsAYr/R05OxhX4nfin9SsXP4baB6GTTsPqoyehya32/XZXsfS3FJBXKa6oAh7r2hHJikz9TIlaDGHdz9hCcX+iNhi1ppOnyandlUoKNZdFIbPcEGUGdpILRpWURdGFkojfBTTgrAhsllAIPoFtMJGLg3OP/DiqsSMqn+PJHgqTo4g2lakqa3ITW0jqWGDDKSJdtlWQ1/RYvy3irCzfAv6LOZ5gtlNFiIION6hMw7i5/qxzKzrscqVYwjyutKG1/sjYDGF5VP09v9fJ1yjHTT7rFpLt4zo+AMeMWBFkxU4b7KLERqFZ32KvhEvP7RLFqDJd26TVa76/Fu2YNv3ILmFw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3047.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(366004)(136003)(396003)(39860400002)(376002)(451199021)(83380400001)(478600001)(2906002)(2616005)(186003)(66476007)(66556008)(6512007)(66946007)(6666004)(4326008)(316002)(26005)(107886003)(5660300002)(6506007)(53546011)(8936002)(6486002)(41300700001)(8676002)(38100700002)(82960400001)(36756003)(86362001)(31696002)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZHJua0xnR01jQ0duOHBVajJMc3BobEZxcGFnWjFVKyt3M1VWT3hnK0NLNUFP?=
 =?utf-8?B?N0hCaUo2UEJKQ1JvMCtVenNxN0xSNHVRNDgrbkNzRStKVk9ieVJTWHNBS1B0?=
 =?utf-8?B?dEcvQW55VW9mdVJpaHFYWm5scHY4Y3VlbDBwbDdrV1pIampVY1ZiZlEwWWhQ?=
 =?utf-8?B?UVg1bDJWWWlIV1kxTlkxV1FnMjlUTlZCYk5jbHdxZkY0OVZyc21MdEhmYWhF?=
 =?utf-8?B?UUtaYlhiQzdFVVd2cmVuQm9yVXlwV0dIS3NQeklSY1dKV1IvM2hMYTZ4N0hW?=
 =?utf-8?B?cjl2WlFtUjJoSnl1VWoxcVF4THpxYXdmMnZDcERjNXlYajdNM3J4YlJWWVJa?=
 =?utf-8?B?OTdlUkZoQnV4Wjh1WFBzMXpuQmxVclUvYlFZdDc4Nkdha2Q1MWxFWW5YTzdr?=
 =?utf-8?B?REUrSGorQVJ2TFp3TEI5YVMyTHRqTHVFZnRJV0F5WU13NjBNcEl0VWt6TUF5?=
 =?utf-8?B?djNoVVF1TEt0dEZCMk9NOHJ0VmMwUWF0MUlxRmxXcTRMeWVFSU9KQlhTMlZI?=
 =?utf-8?B?dHVwdkMvcHRSRC9QNFY4a20rYklYTGRmTElmZzRrZUxNTFpvUW5abDQzSnFV?=
 =?utf-8?B?QVpqMHRseWpiNXB4MFlFVUFIZTh0dnZHY3BrR2V2MTRmZ3BqSzRYTkJ0TFpH?=
 =?utf-8?B?ZkEvSThZTCtDT21WU0l1OTk3ZjNNUjRKSjdQOXV5VGlWV3d6KzVjai8welBi?=
 =?utf-8?B?enBvMXFoSEEvVllsc2dqSEpEZGdieVRkVlg4YkxoN3IrbU1ScG14TlFoOUVU?=
 =?utf-8?B?OTBFZ1IzU0x2WHV2VEduV21PeWY3czEyNzhFTFgrWHRqM2w2Yk5KYVRLNUVs?=
 =?utf-8?B?YTFiQnhzN1psWFhNUDVybzlXV3BSTjVhNE44c05uZ2xKUGtOWUJ3bUNQWW45?=
 =?utf-8?B?QUxHVDBHMXoyZDhCV1pYN2NWL3h6Z2JOT0xkQnpoM01CeUc0Vi9TLytpUTlI?=
 =?utf-8?B?enRTRzNqNDI3OXdneDF6NzJzWlZ2OHhZZUdFTzZkYlNpTmJlY1NVbUJPM0Zj?=
 =?utf-8?B?WlFEdE5PM01LdjlPR3V4Tkd1RkN6c3I2OVVQRFFFVjFmTlJrUCsrWlhmd1Q3?=
 =?utf-8?B?clh2d0NsZFNjR3VPYXl2NjQ4VTgvdXg5UUFGT2taSEczL25rdklHeW1RZGN2?=
 =?utf-8?B?NDBtc1NCVFc5V0Nwek15TnNZTmFUd3lLaFhzQWprOTJjbU1TRmE3SHZ4R2pR?=
 =?utf-8?B?OFdCQlpRMmFMVlBZQ1pwN09hVXRvYzNtOExLRzh6WnRleXEweHQwT2ZKTzl4?=
 =?utf-8?B?OGM3Z20vRS9DdWRMejJ1RkpaTlJpeldSOXZHR1dZZllvT0p0RzVrMFhNTmhl?=
 =?utf-8?B?c0tiRDE5U1pMVE53ZlU0cGFtSlZQZ3Zmcnc5UU1UU0oraWcwNnRpZWhTZk9B?=
 =?utf-8?B?aHdZbkRxT2Y2NmR3OHFzU0hGK2pBcVNYVWxPd01TdjYvQ2NmMHI0c3lJL3lH?=
 =?utf-8?B?TFFreUtPOEF5eWgyZ2dRRDJWeTdsWlBlRXNNTkwxcWpOdnRwL0YxUGJYT0tG?=
 =?utf-8?B?NEQ2ZXJnOEpyUm5Qb2U3c2ZMQVN1VFI1L3dsZnQxQXpURUgzRmhUdm9ZZmZU?=
 =?utf-8?B?QUR0WkpVeGJMUFkwS3V6UjRxQkhLK0pDVnRpNk5xL3AzSjdwTjVSMnhVRVpO?=
 =?utf-8?B?bVAyY09NUWNXSjc5RkpIWi9NNldZOXpuSzN4SU1CUXFIallRaWVVNWlxd09U?=
 =?utf-8?B?dnUxZGZrMXdKSjY0TnY3QUFHR1JzZXRwQkV6OThWV2VwSUw5OEtBMlB3cnBz?=
 =?utf-8?B?WVVsQzFveGFrcGtobWM4a2NpWUUySmR2UEVnWjdhZEsydjFDOXhCYlo3VWk1?=
 =?utf-8?B?bjRuZ3Qyd2FnWVhPbG0vUDA2cDhTOUkrRmdrSlh0djZvUmhSWmlqSE5ub2F3?=
 =?utf-8?B?ZUlZQUdSbkpyNEJtNUlXa3FoOElLVXhXQkRjc1NGZ3BOUkRyR205OEp3b0Vr?=
 =?utf-8?B?ZG44Q0h1QSthcWlyQ3gzQ0pCbjdVcFJSRkJueVc4RWlxS1BzZkxKUDFEb0Y3?=
 =?utf-8?B?Sk1LNFord2x3OWdna25yNEFZVlpBMmUyT0tmckYvK0FaaGxuMUZhc0RDY2NT?=
 =?utf-8?B?Z1JZSUtCK3o5cXFoMndLMDZxdThySnh6OHZIUFZxb25HYVRnSGF6OHBselRD?=
 =?utf-8?Q?5vWtoUE1vxg90FVERqsPijYUs?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a2468379-05ab-4e97-19cf-08db723831d6
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3047.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jun 2023 09:16:28.6351 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4uRT81JL4lDk8gDSgNVQoPpI7Jh/WjQhQ2Jkgmp+9kuJ7d7D5FrhLGt8Af91GNVlAqtm5BkWrzfGyZQva6/OxQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5404
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687338996; x=1718874996;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BXMPoYireYy5vVEfqNP8LsVJw7vfsQpOgGidqCt7Mlk=;
 b=G9llkPXlGwKX9pB64BrnKkuIblQoncgzbK9j57LPnymSA3jV6puQ7DYQ
 Qq8mELbuUhHZYhHFnnqVpAre6BS5u8adOe8JJEtpy1QRIbHvL+VGgio4Q
 mvIVXPrGVUGurTLmBLGm6cF47ffY5RFWKbruxuYGPxrNlj2VItVdzfefK
 mtUkJQMO2S0Z9XIpISomGmnEtb+18QnS5mCsgfcdailVZUSv02c1EQ4ft
 R0RS54Rvn/4YZX936oxcRZiJ37TUnc+aZfWDTIRyCceK5GhwzWh9wdN8i
 evEcxd2Dk/apa+M0sJm+zSdRWJ6APJ65WYjAMi6Nd5RDf0oMOqK91XFsr
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=G9llkPXl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next V1 01/15] ice: Fix missing
 legacy 32byte RXDID in the supported bitmap
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
Cc: kevin.tian@intel.com, yi.l.liu@intel.com, phani.r.burra@intel.com,
 Xu Ting <ting.xu@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ck9uIDYvMjAvMjAyMyA3OjA1IFBNLCBQcnplbWVrIEtpdHN6ZWwgd3JvdGU6Cj4gT24gNi8yMC8y
MyAxMTo1OSwgTGluZ3l1IExpdSB3cm90ZToKPj4gRnJvbTogWHUgVGluZyA8dGluZy54dUBpbnRl
bC5jb20+Cj4+Cj4+IDMyYnl0ZSBsZWdhY3kgZGVzY3JpcHRvciBmb3JtYXQgaXMgcHJlYXNzaWdu
ZWQuCj4+IENvbW1pdCBlNzUzZGY4ZmJjYTUgKCJpY2U6IEFkZCBzdXBwb3J0IEZsZXggUlhEIikg
Y3JlYXRlZCBhCj4+IHN1cHBvcnRlZCBSWERJRHMgYml0bWFwIGFjY29yZGluZyB0byBERFAgcGFj
a2FnZS4gQnV0IGl0IG1pc3NlZAo+PiB0aGUgbGVnYWN5IDMyYnl0ZSBSWERJRCBzaW5jZSBpdCBp
cyBub3QgbGlzdGVkIGluIHRoZSBwYWNrYWdlLgo+PiBUaGlzIHBhdGNoIGFkZHMgdGhpcyBSWERJ
RCB0byB0aGUgYml0bWFwLgo+Cj4gUGxlYXNlIHJld29yZCBpbnRvIGltcGVyYXRpdmUgbW9vZCwg
cGVyaGFwcyBzdGFyaW5nIHdpdGggIk1hcmsgMzJieXRlIAo+IGxlZ2FjeSBkZXNjcmlwdG9yIGZv
cm1hdCBhcyBzdXBwb3J0ZWQgaW50IHRoZSBzdXBwb3J0ZWQgUlhESURzIGZsYWdzIiwgCj4gb3Ig
c2ltaWxhci4KPgpIaSBQcnplbWVrLCB0aGFua3MgZm9yIHlvdXIgdmFsdWFibGUgcmV2aWV3cy4g
VXBkYXRlIGluIFYyLgoKPj4KPj4gU2lnbmVkLW9mZi1ieTogWHUgVGluZyA8dGluZy54dUBpbnRl
bC5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IExpbmd5dSBMaXUgPGxpbmd5dS5saXVAaW50ZWwuY29t
Pgo+PiAtLS0KPj4gwqAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV92aXJ0Y2hu
bC5jIHwgMTIgKysrKysrKy0tLS0tCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMo
KyksIDUgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlX3ZpcnRjaG5sLmMgCj4+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWNlL2ljZV92aXJ0Y2hubC5jCj4+IGluZGV4IDkyNDkwZmU2NTVlYS4uYWUxZTA5ZjA4NzVi
IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3ZpcnRj
aG5sLmMKPj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV92aXJ0Y2hu
bC5jCj4+IEBAIC0yNjE1LDEyICsyNjE1LDE0IEBAIHN0YXRpYyBpbnQgaWNlX3ZjX3F1ZXJ5X3J4
ZGlkKHN0cnVjdCBpY2VfdmYgKnZmKQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgZ290byBlcnI7Cj4+
IMKgwqDCoMKgwqAgfQo+PiDCoCAtwqDCoMKgIC8qIFJlYWQgZmxleGlmbGFnIHJlZ2lzdGVycyB0
byBkZXRlcm1pbmUgd2hldGhlciB0aGUKPj4gLcKgwqDCoMKgICogY29ycmVzcG9uZGluZyBSWERJ
RCBpcyBjb25maWd1cmVkIGFuZCBzdXBwb3J0ZWQgb3Igbm90Lgo+Cj4gVGhpcyBwYXJ0IG9mIHRo
ZSBjb21tZW50IHdhcyB2YWx1YWJsZSB0b28gKGVzcCBnaXZlbiBhbGwgdGhlIGJpdCAKPiB0d2lk
ZGxpbmcgaW4gdGhlIGxvb3ApLiBQZXJoYXBzIHlvdSBjb3VsZCBicmluZyBpdCBiYWNrPwo+CkJy
b3VnaHQgYmFjayBpbiBWMi4gVGhhbmtzLgoKPj4gLcKgwqDCoMKgICogU2luY2UgTGVnYWN5IDE2
Ynl0ZSBkZXNjcmlwdG9yIGZvcm1hdCBpcyBub3Qgc3VwcG9ydGVkLAo+PiAtwqDCoMKgwqAgKiBz
dGFydCBmcm9tIExlZ2FjeSAzMmJ5dGUgZGVzY3JpcHRvci4KPj4gK8KgwqDCoCAvKiBSWERJRHMg
c3VwcG9ydGVkIGJ5IEREUCBwYWNrYWdlIGNhbiBiZSByZWFkIGZyb20gdGhlIHJlZ2lzdGVyCj4+
ICvCoMKgwqDCoCAqIHRvIGdldCB0aGUgc3VwcG9ydGVkIFJYRElEIGJpdG1hcC4gQnV0IHRoZSBs
ZWdhY3kgMzJieXRlIFJYRElECj4+ICvCoMKgwqDCoCAqIGlzIG5vdCBsaXN0ZWQgaW4gRERQIHBh
Y2thZ2UsIGFkZCBpdCBpbiB0aGUgYml0bWFwIG1hbnVhbGx5Lgo+Cj4gSSBoYWQgdG8gZ3JlcCBk
ZWZpbmVzIG9mIElDRV9SWERJRF9GTEVYX05JQyBhbmQgSUNFX1JYRElEX0xFR0FDWV8xIHRvIAo+
IGVuc3VyZSB0aGF0IHRoZSBjb2RlIGlzIGNvcnJlY3QgKGl0IGlzKSwgY29tbWVudCBhYm92ZSBo
YXMgY2VydGFpbmx5IAo+IGhlbHBlZCBtZS4gUGVyaGFwcyB5b3UgY291bGQgYWRkICIoYW5kIHNr
aXAgY2hlY2sgZm9yIGl0IGluIHRoZSBsb29wKSIgCj4gYXQgdGhlIGVuZCBvZiB0aGUgYWJvdmUg
c2VudGVuY2UgKGFmdGVyICJtYW51YWxseSIpPwo+ClRoYW5rcyBmb3IgdGhlIHN1Z2dlc3Rpb24u
IEFkZGVkIGluIFYyLgoKPj4gK8KgwqDCoMKgICogTGVnYWN5IDE2Ynl0ZSBkZXNjcmlwdG9yIGlz
IG5vdCBzdXBwb3J0ZWQuCj4+IMKgwqDCoMKgwqDCoCAqLwo+PiAtwqDCoMKgIGZvciAoaSA9IElD
RV9SWERJRF9MRUdBQ1lfMTsgaSA8IElDRV9GTEVYX0RFU0NfUlhESURfTUFYX05VTTsgCj4+IGkr
Kykgewo+PiArwqDCoMKgIHJ4ZGlkLT5zdXBwb3J0ZWRfcnhkaWRzIHw9IEJJVChJQ0VfUlhESURf
TEVHQUNZXzEpOwo+PiArCj4+ICvCoMKgwqAgZm9yIChpID0gSUNFX1JYRElEX0ZMRVhfTklDOyBp
IDwgSUNFX0ZMRVhfREVTQ19SWERJRF9NQVhfTlVNOyAKPj4gaSsrKSB7Cj4+IMKgwqDCoMKgwqDC
oMKgwqDCoCByZWd2YWwgPSByZDMyKGh3LCBHTEZMWFBfUlhESURfRkxBR1MoaSwgMCkpOwo+PiDC
oMKgwqDCoMKgwqDCoMKgwqAgaWYgKChyZWd2YWwgPj4gR0xGTFhQX1JYRElEX0ZMQUdTX0ZMRVhJ
RkxBR180Tl9TKQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAmIEdMRkxYUF9SWERJRF9G
TEFHU19GTEVYSUZMQUdfNE5fTSkKPgo+IENvZGV3aXNlIGl0J3Mgb2shCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5n
IGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
