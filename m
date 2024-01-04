Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DADA48242A5
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Jan 2024 14:24:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2417E404C4;
	Thu,  4 Jan 2024 13:24:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2417E404C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704374647;
	bh=y9zhqnwPMNiMmx+cDu6Dp7JpDerqEELiGg1YGhtnkIE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Lk7tydeAj2duB3f468hHmaHPusGYpEkTHLJHTFTcwMZ37xHmTguilhNx1qKUj0j7Q
	 c00lZX19PlYVZbUTH2aYxu12Wr7QdfNuMKlm2DNgt5L7sTwXDH5eRkqUGi1Gs+zXjh
	 CTGbSGkhI/YUqNcVQrPlyOJk0dt5rxZavSScljaAJ95UH+YiC8bthU5o5I8VC+e3je
	 PRF6Koa4VYOnZ+Yh6NYgUHirAaQ9lodke2vFNMzHXPlB+29/sGNWQfPkwFcfUN/+yr
	 h0nrdP6y2Z4OukY2j/cNLnc0fcGhOAkPlihVNZ+R7NQa+8TX+6J6168RH0lv7OlH4u
	 T9YHv6BqqX8mA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vYYaKqGHi3tU; Thu,  4 Jan 2024 13:24:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E584243565;
	Thu,  4 Jan 2024 13:24:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E584243565
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E37431BF37F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jan 2024 13:24:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B894C4354F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jan 2024 13:24:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B894C4354F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y7FD2oqDy711 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Jan 2024 13:23:59 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E8C9A404C4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jan 2024 13:23:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E8C9A404C4
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="10628026"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="10628026"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 05:23:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="809225690"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="809225690"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Jan 2024 05:23:57 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 4 Jan 2024 05:23:56 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 4 Jan 2024 05:23:55 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 4 Jan 2024 05:23:55 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 4 Jan 2024 05:23:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZbkdJBeByDi5jdTEWDX+Jilwf7IaPccF7NpzS/ANOOaUHkpp8xe44Be26iUcI8YloBLbYAqSror1MzRwmVIC7Arn/mzR3EwI7/sbju5V4847ey2qhnxTZeMmTFmTo5oXzDTSJQLildYk1hmKSOlefLaCr8+Px7CJlKDQru4/45Y4qs07Xw5H4rVS0hVK/uwvEIRRCAp9fPn2RJXvj6BWMysu3W8I24zC9ELz+d51P4jrufiGyDDo3do1BOzX3BcNqbRD/XXV3nropyZfat49AZ7KUYdmn6qDIHMVm77jmgXS/ykHSA4MLiv6jBWMkWFvjhlJhO+mNs2TfGLNhxjjjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y9zhqnwPMNiMmx+cDu6Dp7JpDerqEELiGg1YGhtnkIE=;
 b=dDP/ed9V0CEewKvhQgp7zbOCjkKZVMSo2BgNGqKCH/PVPYAczBDkrMoy8nQRWuvso2Xc7QlP2uoOjh9mT7ZWr41i6Ys9JjcptxQnpB7hlZk4gJ2MSzElnJ97n/D1HR2Whhwqn70aK3V7oflXPaIUksM/580OSWV0a13+96s+Fl/ir6wYeHMclPAn3cpfYUKEHxd52OgTFVhJ8svyC9o1HeS6OEcXQmqCjussmAP1T5nUhX8ItdU2x9H52++FdElK39c2/ButkEFl2vIHDq9+zOnFK5pibdKwLRzJSWWSTIxoyDbUEN7o551XhLmusXLjBUYd9Yar2SMq5//cQM9SpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by SA1PR11MB5825.namprd11.prod.outlook.com (2603:10b6:806:234::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7135.25; Thu, 4 Jan
 2024 13:23:53 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::3c98:e2b:aeff:5041]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::3c98:e2b:aeff:5041%3]) with mapi id 15.20.7135.023; Thu, 4 Jan 2024
 13:23:52 +0000
Message-ID: <ecbc363a-a7da-407c-941c-092546a3372f@intel.com>
Date: Thu, 4 Jan 2024 14:23:45 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20240104101904.18267-1-przemyslaw.kitszel@intel.com>
 <a27c1c87-4668-4166-9e0e-1005b2244f7a@molgen.mpg.de>
 <a15e6427-c7c5-44ec-b767-035f46649776@intel.com>
 <89022e98-a984-40a1-b59f-f2c3cfb36f54@molgen.mpg.de>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <89022e98-a984-40a1-b59f-f2c3cfb36f54@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR0P281CA0173.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b4::20) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|SA1PR11MB5825:EE_
X-MS-Office365-Filtering-Correlation-Id: 7a949cf1-92fa-4c7c-2f44-08dc0d2864b2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Fc/Av/IjdEx27isf/rImL5jiDcYqQgyCmIOeb6YrYpT6TsGPP4Fr2Y0Tw6SOdBVAHtwT2Mqxa2RhfJtZOV/uBMR+R2VM5Z+av5h8XYNDd1RC31ad9TeZByxoOvAH6axkcmTwnzXfXZGvFjyjj+F/L811+5gUc7aAYNfWc1b50ENWOzokZuX4llZfCfKWrHBG4JNVckeUPoN1etAiGoQw3YtO3j8AHWkqnSxCl568UWhNwM3Fp5L5xgVf0bgehcSdSL2AARegpf1cfnnWTJfh1MrfIUx7LCTpWlh3T+3zL1EeRPwUamS3ceYtk/ABckHn/rmsHHoAy19T5Dz5buipiX3qB5GgWy7zF6i2/9BJkIBYBJ8spAmLJY+N17vtoPHZlxL3nQfQANsdZjlk1xUnUvHwi65X2DpBJ0FAqw9rZLVe7Ns/p7NT3D1fRowTCPa2ggzESE+HLt2N55bfT4ADBOXnEkrixpeuhKmL2UocaQV1BHf33mW6a8fKFOJKLlaBaxV9YkoP7SwEHkQfVxgf0Mq3tXWUjs+1528QaRxnYIWbSrv0rFXBbm8hitpawpzvNOB+n8h2xhjJwk8LQSKFMXoVf2GZoe296LbetXrdeVPUiXQPZHdh85u85J4oz4PRIrbbsQwbDu4irXGWkK4Uyw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(39860400002)(396003)(376002)(366004)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(38100700002)(36756003)(82960400001)(31696002)(31686004)(86362001)(2616005)(6506007)(53546011)(6512007)(6666004)(26005)(6486002)(478600001)(66556008)(66946007)(8936002)(54906003)(4326008)(8676002)(6916009)(66476007)(83380400001)(316002)(107886003)(41300700001)(2906002)(5660300002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?akZ1MGVPeXVHcDdYOWFBQTY2NWhNU0g5UHlLZ3gxTE9ZZUZjL2QwbjJvZ0RY?=
 =?utf-8?B?eW4xQ1RGTEI5Q2dQVDZ0UE9Ea1NyYzZKenUybXFFd3hmd0lUQ3pnWVlXUDU4?=
 =?utf-8?B?cjdlUk9QaW1abCtCeGpGR01sTjVzclYvQ2hqcWN3VUYxMG9WRTVqY1plc3Jq?=
 =?utf-8?B?akdabndUbThnM2ZBQlRjbmNTUlo1VTlSMkNSMnR5cmxGTWhPa3h2RG85NVVL?=
 =?utf-8?B?Yk5hTzBxUWRlTG5ENTI5L01mazR0bXZVaE8ydjI1YkJiSDFNaU1DN0RBR2Qv?=
 =?utf-8?B?SVJjQSsyT0d6eDgwVnFxS2lQUnY2OFJ5RGFZOWhabzVrMGdsZjNTTXRCazNL?=
 =?utf-8?B?Q1E3VkFvYVFRbmlKM3NWQjYyWlVFOGFZb3poMFd5U1ZXMmcrR2l3dmlwRXRE?=
 =?utf-8?B?d3pQbFlMajRJZTBWVmdpR2NwNU5uS1BmdkZKZFpZMklrNFVLL3ZwZ0hVYUs3?=
 =?utf-8?B?a3oxVFY4MjNnQ2QzZ0JkUzVyNnZad0FWWk5TaDEwVmsxcEpORllldG5hNm5Q?=
 =?utf-8?B?Skt6L1NYN0p3a0lzOXp4QUl2SkFXbnlKNTd3SkJXMTdLM1p3YStvT1NUUFZ4?=
 =?utf-8?B?bkZHNVhLR1F5M0YzNUNvTjRLVWNCMDk5Z25NMlBBanMzWGluY0hEOFhCaDRE?=
 =?utf-8?B?VXF2QW91Vi9ITkludWVNZ0hOUjlNNi9PK1daMzFwOG9EcUpvblJwOTBrMHUv?=
 =?utf-8?B?NGFOVnZxbHk2WVRiblUzQTI2WUNGRDdRQjZvM1A1MTUvTEtwLzBtUWpmdUhy?=
 =?utf-8?B?c0lON3pBUVBReWtiQlByYXNma2tUZC9lOG5oT0lCMUZUZ1ZLSFcvUDE3R2dP?=
 =?utf-8?B?MVBwWmlBcktlKzJzQkd6SGNPRkI3ZzZkZXZRd0ZRT1BPVmErK3J4SnI5UTZV?=
 =?utf-8?B?ME9sMjhUbWtVRzY1QVQwN3QyS0ZrbjZLbGw5Q0UyeURhckNRaVFaazlaeHdw?=
 =?utf-8?B?OWZub0trTEtjaTZtVTJjMVR4dEJDLzRjK0NZOGhtam5ZN1E2ZUIvcE9zbFFq?=
 =?utf-8?B?cnpaUTdic055RTd4RHZENnYzNFN5SGxMTlhpTC9HeG5Vamp4SnRVTWJ1aGRi?=
 =?utf-8?B?azV4ZzJTVGdCVVlVSDZubzBibmhMTnh1RnVNcEJ1aDVKSklvN0Z1elJWWE5C?=
 =?utf-8?B?L0xIUDNicTdDRDJDc1UyYVZTWXNLVmM0K3NnR05kbEpvMFhKcDdRazVETTAx?=
 =?utf-8?B?RkdZcHRzQk8xcitsRENtc0l5ZFZzT1ROS1ZJQUE3OXRoQlFhejFzSXY3aTNI?=
 =?utf-8?B?Vkk5aFUvMkxISGVNUWN5L0U2MDUxR1RMb0NsUWo0Sm1semZmb21jUDdjbmRG?=
 =?utf-8?B?QWVaekFrQzQrc0FRNFIrQU42cS9JdFgxMmVZMW5WQm4xWXZVbVBqY1NCTlps?=
 =?utf-8?B?c2F5dEI4YjUrTndFSEhSaVA1cjhZdjBBc0Nad1Z5UE44NWN3UVBjUVZUSTdn?=
 =?utf-8?B?MW9BRGJ0WENhQ1E0N1IyKy9oWkN2dmhLckJlaDM0eC9adG04TVpiM0VwM2JR?=
 =?utf-8?B?eFdPSlJkalFtY3FxaTJYTjZwSnQyTWQ2OStzU09ZeXlPMUFRTHFKV2xiY1Ra?=
 =?utf-8?B?K2pzbHFoTyt5Zlo2UzJEUWh6Zm1wOXV4L2hmV3FaU0hlZWRpNVY1eVQ3dm5v?=
 =?utf-8?B?QnhmMDg3UnVScFQzeTJZSkN2K2xrV0F4VWR3SEZpYjhLbUxwazZGT3hoRk5S?=
 =?utf-8?B?OU1hUE5qMTVYVjdTMk9KeUVOK05EN0JjYWNZV3c0ODFxVzQ5Z2lSc1RnR1A2?=
 =?utf-8?B?bTBTUXFFTkRweEphbkQ5RjUxYVhJdEVTY1lSUEZZOEhub3hrVGlPRzVCWVNm?=
 =?utf-8?B?MWxyR0swcUFZNFZzNkJXU2V5RU02Y1lpdmxXT0RYYmtPaW1rMzNOYk9ZbTFs?=
 =?utf-8?B?cHBVOU1zR2ZoNUpZTS8xUEJXbThGeko3NVBTeFJBWUpmTWIyTCsxUmhucisy?=
 =?utf-8?B?QTZDaWtvUjgrd3Vxc3p2WVkzeHJMcVZVY3UvWm9abEhkWjBROWYvVXI5NVlX?=
 =?utf-8?B?TWQ0S2ZwUmVOYjN6amltbkd0NG4xb2w0Z3hvQ0lqMVNxTnJldWc1djlqTTd1?=
 =?utf-8?B?QXZQWkhpUWxKSDVGeDZjays4dnBRbDV1R0hKRlRyQkhPTElmVFV3NjVGMnd6?=
 =?utf-8?B?MkRlNEpsU2xJODVURWcvdmkzOWY0WGF6R0QwejN1cWtOUHZISE5jQjlqU3NB?=
 =?utf-8?B?REE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a949cf1-92fa-4c7c-2f44-08dc0d2864b2
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jan 2024 13:23:52.5891 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A8Beab/QD8AKE6/sFTzLo4lwwAqHrOqLZx3ME3kIOk0NlQZ41UJZzddNu7a15JqXcog9idxFqxD9mG3WsK4vkdm5Sb1YKyh5WYICExd2kAQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5825
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704374639; x=1735910639;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7x6NiJipyjfm9iAglGaQYL1DHrui+/2HuClPRH4T0qo=;
 b=FfH/FuoJO3/0MfAzUe+mmGzV8jvVH/N3Rky8fVb+u90yWEgndkivpFLb
 HyW+GHJd0ylFTRTyXnsNGNEqb2AbbZtSyk0LVD1vUjqAlhrSzrcOzhv1s
 v4m/FEaGjgxcVFjTkaINRQ8dju0BDP6ySNDe7cRqJkisjpbUNed81lTgF
 QXo6R763BKY4yUcj48l8Q82n/S/4Lv81ITTP8Yk4wSpoeDF4SWH1yWAZs
 N75z86Jr0I9HQYL03PUtzh7izSPBaIkeiabrne+TgdzDllIc14Ev1oiog
 lxRzKkmebxF8aM7/lRJycG/r2DZbvNdZ951KGXgle3vMuimzfIeJ45v8U
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FfH/FuoJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [linux-firmware] ice: update ice DDP package
 to 1.3.36.0
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
Cc: Shekhar Deb <shekhar.deb@intel.com>, intel-wired-lan@lists.osuosl.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Priya
 Limaye <priya.limaye@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/4/24 13:44, Paul Menzel wrote:
> Dear Przemek,
> 
> 
> Thank you for your quick reply.
> 
> Am 04.01.24 um 12:28 schrieb Przemek Kitszel:
>> On 1/4/24 12:16, Paul Menzel wrote:
> 
>>> Am 04.01.24 um 11:18 schrieb Przemek Kitszel:
>>>> Change log since 1.3.35.0:
>>>> - add support for E825C device family support
>>>
>>> The last *support* sounds strange. Maybe just:
>>>
>>> Support E825C device family
>>>
>>> or
>>>
>>> Add support for E825C device family
>>
>> thanks, will do
>>
>>>
>>>> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>>>> ---
>>>>   WHENCE                                        |   4 ++--
>>>>   .../{ice-1.3.35.0.pkg => ice-1.3.36.0.pkg}    | Bin 692776 -> 692776 
>>
>> [above]
>>
>>>> bytes
>>>>   2 files changed, 2 insertions(+), 2 deletions(-)
>>>>   rename intel/ice/ddp/{ice-1.3.35.0.pkg => ice-1.3.36.0.pkg} (98%)
>>>>
>>>> diff --git a/WHENCE b/WHENCE
>>>> index 06fb7a45aa33..43f3916638b9 100644
>>>> --- a/WHENCE
>>>> +++ b/WHENCE
>>>> @@ -6138,8 +6138,8 @@ Licence: Redistributable. See 
>>>> LICENSE.amlogic_vdec for details.
>>>>   Driver: ice - Intel(R) Ethernet Connection E800 Series
>>>> -File: intel/ice/ddp/ice-1.3.35.0.pkg
>>>> -Link: intel/ice/ddp/ice.pkg -> ice-1.3.35.0.pkg
>>>> +File: intel/ice/ddp/ice-1.3.36.0.pkg
>>>> +Link: intel/ice/ddp/ice.pkg -> ice-1.3.36.0.pkg
>>>>   File: intel/ice/ddp-lag/ice_lag-1.3.1.0.pkg
>>>
>>> Should the old version be removed?
>>>
>>
>> it is, see [above] that git recognized it nicely as a file rename
> 
> Sorry for being unclear. I meant, shouldn’t the old version stay as 
> seems to be done for a lot of firmware files in the git archive.

I see no reason for it to stay, willing user would easily dig it up from
history, and there is manual step needed if one wants to go back anyway.


> 
>>> […]
> 
> 
> Kind regards,
> 
> Paul

