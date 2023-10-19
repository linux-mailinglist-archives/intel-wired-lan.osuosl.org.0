Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C3F47CF3CC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Oct 2023 11:16:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1A06F83BC7;
	Thu, 19 Oct 2023 09:16:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1A06F83BC7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697706976;
	bh=wj8juyIbpJk3HiTa0GGB5xluOqpUdsikIk6Iueq5GiU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=80rGi7cJmfxIuiAVGkbu4f6dU2zUUYGBLBBrM1meZFWX3j36Rci2yiGl1nuy6OU8J
	 3m2f7ggAaOuKYHXap8nX9C21fUexZ+h/Quk7ol3Bz0cVJNULCUxjdixX1gtIOYeKkZ
	 0Fg0a3ahyMaoJ0PePhadcdiUxo7BvS7ykFyjtiPojQ32aY8Q2QimS/zRsHvp/e5iMu
	 wDGZoA/Sdf+AGQzda2T6GCbjaC4dw9fCOixByylgMcIkw1De7V4034tM/4i1j/GOwu
	 Eo5331UH2WBcrQeLHzh5JRXfzz6C6lf4ePiahTO3TypMCy9R7UP4rd7loK+M1T8KN7
	 8YTry2Z/DYxEg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VnD-nsV4o6Fv; Thu, 19 Oct 2023 09:16:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D6ECE83B93;
	Thu, 19 Oct 2023 09:16:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D6ECE83B93
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F1D351BF479
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 09:16:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D57B24214B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 09:16:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D57B24214B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xvispsn45UhC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Oct 2023 09:16:07 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9365E40922
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 09:16:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9365E40922
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="383431181"
X-IronPort-AV: E=Sophos;i="6.03,236,1694761200"; d="scan'208";a="383431181"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2023 02:16:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="880568851"
X-IronPort-AV: E=Sophos;i="6.03,236,1694761200"; d="scan'208";a="880568851"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Oct 2023 02:16:06 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 19 Oct 2023 02:16:05 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 19 Oct 2023 02:16:05 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 19 Oct 2023 02:16:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ROl4KpzN7RMzLSjepBocVok4tuGRb6MsspWOiVjzCdB47VkdCoqJIOraZTLvYMhuyblG9ckX9xqSiXXE47BrARm/qy+fTM2ZeFoXf6d+UGk45fM5kS7wvNn2HuuTXpTaBkIycKcIefKAhyawhw/89NCXZZ0gH+GVRy0Yc4hrVVJ9OAR3auETZPTxlMjAXrCq6UxE0dYllVI2QMAt9kWQrnZSjytHa3d0oefn+LGg07HtwiqJZqW+z+e7xDB1KNN0ne1fiMFt3oVDCy9crSXEXVuUM2mIbSlLuZ07agEN8vDTo2Z7kigcQe5S3R4SFuphvKEqSKmsHtL4abIRyXnLAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=81pv9QsoBeedfunAMIoWHUFh+RDDYY/L1mtWUCKsrnY=;
 b=VuRuW8zss6CUG7WIOxIELuNrgDZVBtlYKXZkLIbBle56RfKxp3ayW2gAzyINkvmfw5mI7EwxbhKTaTtcY3n5zSA4ykl+4OSXZ0rtffUtMtyBxomeRuHeAlOQM3HBpv7ctNtrShY082fczXXs72T9y6+Z3mEDJfzDAdZ5JwZrh+XP2mJN1jfPP0tN3jSW6smfli9Mmtbp2SfkdY4iBAKdVuQMTKCJ3xkDYP8QA30rOL8znjTvNA2GKslwY/uAfBjFafsu9PFTWBKV2fAmPc1dYPNMF2p+0U07cc8e7RfT1l1tWtqMuLlmFnK1SFz0EuWWoXbHFjBljeIpquxyWo1ZVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by MN0PR11MB6057.namprd11.prod.outlook.com (2603:10b6:208:375::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.26; Thu, 19 Oct
 2023 09:16:02 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::7666:c666:e6b6:6e48]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::7666:c666:e6b6:6e48%4]) with mapi id 15.20.6907.021; Thu, 19 Oct 2023
 09:16:02 +0000
Message-ID: <1802984d-6083-ca37-afa2-e2c3c38de69e@intel.com>
Date: Thu, 19 Oct 2023 11:15:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Michal Schmidt <mschmidt@redhat.com>, <netdev@vger.kernel.org>
References: <20231019071346.55949-1-mschmidt@redhat.com>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20231019071346.55949-1-mschmidt@redhat.com>
X-ClientProxiedBy: FR0P281CA0040.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:48::11) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|MN0PR11MB6057:EE_
X-MS-Office365-Filtering-Correlation-Id: 7b2966f4-be84-490a-10ba-08dbd08403dd
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: D2tMATDvFolMAxWU+NptGNmCr3+ItR8m+Uty1or4cIs07RpijdccTY7I0hS9Kno4U0R2Zuc1Xf0QomqvU6dRXR/6lspiDAyKXIoOWWPEFE46q71NImUnKOrLqwdFd2UcDc6+3o1ighhCiCPHmq9S/ctZ3JxPtqTVJOYQbrWc18bM0yiJvAmmo9VS7B5kqM8TEjoRPhdDabh8fWf4PWi9bjgPNnWqQZjITLOVhU46+iq5NDivVCR+SMZWFGd314PldLSLKLrTA017ExMxL6FzOEnr6ZjBGqcaddUm/5Uo3jqhByECoZ7zd3uTmW7Lf3CLSlSfcDvUyRzUUunys8iKWxKwImYugXi3DvbDWlT1BI/TA9AhRfQRY2Q5nNbxW+skSTGRR8+ADlIoqVQ+Nz1ENLyCnmMIUm0BNU2/7x9QLtfZCerBS7g29cUJdFYPApxg+lWF2WLY0kcA4pDo9wn9HGqplMg03pw5pbyLL0yK42DrN3rFopoAX8kP/eQiBiTdDt248lBS6eerK2dBOZFg+ENY6IByhQBtho2srT2Y1wZNAB6Io0Hop8xnpBWMIE7uAtiz2dieMlknxT/vcmihKm3zBG8eKXCjlCpF3FMNYl8xPcRbC8+kZi1tIJ8Dm05Ubs3DxFKgmXEfU5Zrym6CKA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(396003)(136003)(39860400002)(376002)(366004)(230922051799003)(451199024)(64100799003)(186009)(1800799009)(5660300002)(4326008)(8676002)(8936002)(53546011)(6666004)(6512007)(6506007)(107886003)(36756003)(83380400001)(2906002)(26005)(2616005)(38100700002)(82960400001)(31696002)(86362001)(478600001)(54906003)(316002)(66476007)(66556008)(66946007)(41300700001)(6486002)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SWV4d2pvaERvekxDaXZCem9ldkV2YlhRM250Y0xxaTlpZ3cwUGFMRWZPdzdm?=
 =?utf-8?B?OU9pRTVLRlBQVlhyVmU1eUNNeURnUHhkUHIwVTd4UVhXM2ZKM3F5ekRKYWR1?=
 =?utf-8?B?UXFWMVJEeDdqNFFJNjhoTTJ0Q0JOZldmQ2krdXc5eCtSSnpEUlc5ZFJrUGlC?=
 =?utf-8?B?WFg3T0xZS29acUNyT0Q5TzJ0SWFTTW9rTXc4VitzNHlSNGdCY3dIQVZIZHFz?=
 =?utf-8?B?Nm5WOVZoaGxXVk5rV0xqbGRmQ1N6TlhDUE1KQ2ppNVowN1lWWVRvSkZDVFFw?=
 =?utf-8?B?Y1dOa3B1ZENQUk9lMHZJZVduRkNrRzBiMjJUTThlSlRpcFBFQUQzbGoraFp4?=
 =?utf-8?B?cEdhaUxENWNaYURmWWVYSDBkclMvek5zQjhReWpIUGVKeEFDTk5kYXJudTRz?=
 =?utf-8?B?WENVdTBzSmpHMlY0Z1hYWTVuZkpKRG9Id05JM0tXdHBDbURGRm1uSnkvZU1r?=
 =?utf-8?B?L1M2eXFWQi82bWM4OFlxYUFScmcvdEVEVmpTc2RHSTk3Rlo0VUlCSkhmY3Yz?=
 =?utf-8?B?UE50b2JTcDVKd292K1ZUWFBQSURRZUVUOVdKQXFxSkxMcGpTa3dUQTg4TG1S?=
 =?utf-8?B?c3ozMEpuanVVL1BQTGdLVVBtZ0ZDU0pCYzlqOVFVVTBENDhza2hVejBZdjV4?=
 =?utf-8?B?UVhpSjlYVWJCVlk2ZW5ZWVJNd3AzZGpNV3czZCtNOEVrc2Npc0tKeCtETG9n?=
 =?utf-8?B?dGF4eFc0ODA3a3VVY3BUT2dzUjl4TFN0L3ptdFByeTlUNDJ0NDRqWlBiSklv?=
 =?utf-8?B?M2MyL2tOa3ZaR2NPWDc4R09OaUZobzltbDBUemNKQjFWMzdIQlIvSjhETHA1?=
 =?utf-8?B?aHpBZTFiRjdKZ0ZuZ2dpOEw5Q0xVcUpCSVY4c0ZLVW5UYjVwMVRib1ZYYWxm?=
 =?utf-8?B?MUxlZkIzKzVvdTdORExOMGdwTzFhaTJuTlNRUzlkRlhTZWRKSEMzWDlCUTFw?=
 =?utf-8?B?NVExd05RK0hlV3VTUm81YUhSK1JCcFNEQTFJemI4QUpjb3A5ZTJtakZRdXJ5?=
 =?utf-8?B?aGh2RGhxZHVPTDc5Qmh3MjU3c0VxTUM1dWZRL3NLWkNla0gwbDJFUVZQVGty?=
 =?utf-8?B?eCs1MW9yTmxvazBiYzBJa3FJS1pqTHJYbUNUVWd2WnYwM2ZQSFNaSWFpTmk3?=
 =?utf-8?B?c01vM0N5L1p5Ri9VVTZheFFpK2EvNm13eXV3WWdhSEptQ2kyNUdWUm9LNDJz?=
 =?utf-8?B?TVBEWnZOZktWa01JWmFJeG5SdzI2ajRCbkV3YURIMHJLSFRjMEZyQXV4OTRo?=
 =?utf-8?B?OUh1VkZLMlVYVmpSSDIzRnVjR05PM2ZHSHptbUFianNldFNNV09lL0d2WU9M?=
 =?utf-8?B?ZzAxOUFuZEZjQ1lvTU1OS1dZYWFycVEvZEpGa1ltV085enE0eDBnL01Zaktj?=
 =?utf-8?B?Sy80ZDJvaTdaS2xYcGlDOTdscTM0Sm1uRi91cGxidWtsUW1zRDBjdjhnYVIr?=
 =?utf-8?B?bW5sd0dUUUpFeVpWSXZLZENhOTlsM2tvckNRS3dOYTlpblhYVmR4TWFnOHdM?=
 =?utf-8?B?Wk5nMWduOWlPa0tRTGxKMjJwbkpySHJtczZLclMzRlhRbXB0bWJpdFpxS1R2?=
 =?utf-8?B?RVQvZTNHSFpuRWZDVnJEZUV0OTZKYkJHcjhzcGw0MDZsS3VLY09XZzVmVUsz?=
 =?utf-8?B?NjloWlh6OVEzYjYxVE9KNmxOQjdXQ2FzU2VOSzZyYlhpTC84YnB3aWVhRHNF?=
 =?utf-8?B?bWNzaVBuNjA0cXV5SU5zQTk0YW5TL2JFRTVtWGpEY29uTzExM1NZYzRhdjZn?=
 =?utf-8?B?RVlVWElVMDdtQlNMMkdZRFBDdU44RHkyb3pUenlWdHUvZVVBbnVJb24ybm9v?=
 =?utf-8?B?R3BJMlB0ZEVRVUhWUkx0MExXWDFYdVBNaVlRdExoekg4QVFCYkUrQjVGaWl5?=
 =?utf-8?B?WEVSSDNZcHJIZktnSEEwYmlEZVI0cnJTOEw5Rm5NUmxvYW5hNW1jS2lHeC9E?=
 =?utf-8?B?YUVjV2JJczI3bFZwakp0cEVXaThyMlJoL3ZZNXRhcm9pL1FSdDIvUjVXaS9i?=
 =?utf-8?B?UU9iZ2lkM2JQay9LQVo5TzJkRWZteXJrTkd4M2xIemFZOUxPSFh3T0x6b1NI?=
 =?utf-8?B?aE9KSGY3K3UvbzBxUzcwL29JREJEUWxYNWZ3RGhENzN5N2ZFOVpzZFc1V1BI?=
 =?utf-8?B?aTFoaDVyUVYyMGpoaWJyem1OR0cwa1VpOXFoRERYcDNwYmVjck1IcktxMmZC?=
 =?utf-8?B?L3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b2966f4-be84-490a-10ba-08dbd08403dd
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Oct 2023 09:16:02.4533 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RjAvrsVFTSVz0KPGMekuAnocxH0hhYil5pxXdm7hYaUC1QgQKOxwMInRoUjyXaibEky5itOFyYTz7hSi0KWP6fMsFnkNMTXKm2410QMb600=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6057
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697706967; x=1729242967;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5x/ff0hX/RqpJ/7QagRFCozNon2D84u3Ea7GcBY5gxA=;
 b=RjcFmZLRJuyR9fCxeb4ZlapVmZXGjqKu25NqdiRsEgTOOfmSfprxo9zA
 HbDFRiWBTZU5+O9eRsf32p9NE5FfXixGxqPe4AOnHIBi7CA6APZWHtNc6
 qrdSPYmNqCTl1kDx3dkA997QHRF6bxm0IqNoXg/NW1ZKCvLT34MJykh52
 /ZbnBjKQdsOYjgkPXtq5L2MsoF4vhs6jp9j3VXBera781IL2YugQqmal6
 Z1DZDdU1GokgVPqAUwYzQwwMfKGu5GRLNevnLTAVlJ3T2ch+NWElRvw1E
 1msOyf0lr2FIFu9ueRiBtJrI2yQ3oD7glgt+3EzqbFx72m1T+zDrzk0OD
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RjcFmZLR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] iavf: initialize waitqueues
 before starting watchdog_task
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
Cc: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 10/19/23 09:13, Michal Schmidt wrote:
> It is not safe to initialize the waitqueues after queueing the
> watchdog_task. It will be using them.
> 
> The chance of this causing a real problem is very small, because
> there will be some sleeping before any of the waitqueues get used.
> I got a crash only after inserting an artificial sleep in iavf_probe.
> 
> Queue the watchdog_task as the last step in iavf_probe. Add a comment to
> prevent repeating the mistake.
> 
> Fixes: fe2647ab0c99 ("i40evf: prevent VF close returning before state transitions to DOWN")
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> ---
>   drivers/net/ethernet/intel/iavf/iavf_main.c | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 6a2e6d64bc3a..5b5c0525aa13 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -4982,8 +4982,6 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   	INIT_WORK(&adapter->finish_config, iavf_finish_config);
>   	INIT_DELAYED_WORK(&adapter->watchdog_task, iavf_watchdog_task);
>   	INIT_DELAYED_WORK(&adapter->client_task, iavf_client_task);
> -	queue_delayed_work(adapter->wq, &adapter->watchdog_task,
> -			   msecs_to_jiffies(5 * (pdev->devfn & 0x07)));
>   
>   	/* Setup the wait queue for indicating transition to down status */
>   	init_waitqueue_head(&adapter->down_waitqueue);
> @@ -4994,6 +4992,9 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   	/* Setup the wait queue for indicating virtchannel events */
>   	init_waitqueue_head(&adapter->vc_waitqueue);
>   
> +	queue_delayed_work(adapter->wq, &adapter->watchdog_task,
> +			   msecs_to_jiffies(5 * (pdev->devfn & 0x07)));
> +	/* Initialization goes on in the work. Do not add more of it below. */
>   	return 0;
>   
>   err_ioremap:

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
