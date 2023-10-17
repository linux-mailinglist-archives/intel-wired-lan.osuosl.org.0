Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D595B7CCAEE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Oct 2023 20:43:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6CE3541EA6;
	Tue, 17 Oct 2023 18:43:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6CE3541EA6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697568196;
	bh=RqYXhlPMzmBHNvN0Hle4Qi6wjpJXN6kFDvNTrmvw3js=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PeqSy+0N4qsyfnLtxDKNro/oNSJ/lHUkAyEjQPTYiDzCjkHPtc8kNuiNH0jjJFxuQ
	 1Qmd05m+WmR7RSY9fhxvCsIW5l5onc53/Ax9dThGpkWRUCrx90Sh9zvQZW0c29TjVT
	 G4QsDlSeLztFkKWUN5TAc1hHig2H7ElFZKDjMbkZvdeqy7uaTACaidOw29YO8ffrCr
	 xp9m01oCwAL8pMEUXZCVNoZdyejJ8nmX2GHgicwPQx60x9mG4/cPhdYSgZorCJaEna
	 UWkrg0TrtKgaM8GcSG926gfQ0RP3FveNcr8+br4+kDxFiNDzx3P/7KR+4m+lcq2bag
	 JMYzmkTCt/YAw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d9KAQGR0_ztX; Tue, 17 Oct 2023 18:43:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3E03641E8D;
	Tue, 17 Oct 2023 18:43:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E03641E8D
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 740A91BF300
 for <intel-wired-lan@osuosl.org>; Tue, 17 Oct 2023 18:43:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4AECF41E90
 for <intel-wired-lan@osuosl.org>; Tue, 17 Oct 2023 18:43:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4AECF41E90
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XV1_WjD6VEa7 for <intel-wired-lan@osuosl.org>;
 Tue, 17 Oct 2023 18:43:09 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E3DA841E8D
 for <intel-wired-lan@osuosl.org>; Tue, 17 Oct 2023 18:43:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E3DA841E8D
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="384735596"
X-IronPort-AV: E=Sophos;i="6.03,232,1694761200"; d="scan'208";a="384735596"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2023 11:43:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="756243485"
X-IronPort-AV: E=Sophos;i="6.03,232,1694761200"; d="scan'208";a="756243485"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Oct 2023 11:43:07 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 17 Oct 2023 11:43:07 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 17 Oct 2023 11:43:06 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 17 Oct 2023 11:43:06 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 17 Oct 2023 11:43:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=noYQwmIUTjeCqHNWoWna4b+0w+fZwKXQx310bsDVEZvWB0c+7zszCfrekyB2e9tOQuBF8gpg996ZbQxd3Jyud79Ju1Hf0phawZ1k4b6J7xVsU4KMzVFVCam7b185zCyu/ia1wf6ol/0N2pv48J74TayOhKc7z60F7QaS0S5MKkStd3R/g3TVAQ9pPhbH12tcdRww1U7yUtxpKTLihhhVZIj69luoNpJT/n1kM96hIVNVRMa8ZN8IUxACQ+QRctOGqclOAhq92ZssrHYOfZhDEi/nIQ8DK3bLYVDeNAyA0zrMw22GroAZRw3IqtcDNcI+I59BRvsGO2O79s1RQ6FSpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GVsIt4wqOtbzzPLg4qniAdQGBHYWzZj5x8u+sAqmyz8=;
 b=ci/Zvl5EfJQWYd0kN2hRT9AqehzcRK68F7iU8JsTqhZnEs2hhgWI4/IB6JkVmo2ZYo0hxtuv6SS/JyN1EPWl40989R8eM3N+VA2dZNEbuaYk8xGT92MU+E5MCIUWqdAzLgKhbEek0+DJZvCg0wu6Zso+jCQ8GnafjaLG4xPvetQ+drTXj9hbwP9A4sXdpcEfBJa7ZXZInON9F1ci5+9EHAiEIK0vRUeQDgTllPjjT1D/Af0qx5HQBh3YOoG1c+/ex/9iriq6pagyXxDW1XeqHKVcEXTDLM38/lP8RTehID9FjIamK6CvpW93xHB5g8c6uPga69Bus0NWIaQ1eZX0pA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH0PR11MB5141.namprd11.prod.outlook.com (2603:10b6:510:3c::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.21; Tue, 17 Oct
 2023 18:43:04 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::34a7:52c3:3b8b:75f4]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::34a7:52c3:3b8b:75f4%4]) with mapi id 15.20.6907.021; Tue, 17 Oct 2023
 18:43:04 +0000
Message-ID: <fe25782c-ab9b-4adf-9c06-47fcc0afd631@intel.com>
Date: Tue, 17 Oct 2023 11:43:02 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <20231016164849.45691-1-mschmidt@redhat.com>
 <20231016164849.45691-3-mschmidt@redhat.com>
 <957a0b7a-4cbd-4333-af83-1c7750452316@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <957a0b7a-4cbd-4333-af83-1c7750452316@intel.com>
X-ClientProxiedBy: MW4PR04CA0190.namprd04.prod.outlook.com
 (2603:10b6:303:86::15) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|PH0PR11MB5141:EE_
X-MS-Office365-Filtering-Correlation-Id: 033e6440-a2e0-4e66-7e93-08dbcf40e58f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dBj3t8RKBuhkPvQyWzyYA1ePc27oRpJJ+XP0IT0XbGLusyGs96ngc9eVwxkNFL9Z/zt3Wlni8/CHceggmwlDGQwKFzlt3PKaupre+TFBhVy6wRUbH9zYMg4P7pOnzrJxIpGKaudXdzQiSjaPALWSbolshAgHi8bAU7xflVZ6a6X9KlEKx7+UTWrUZczG40Wg4VrevF1044bv8Vt+DtnzDbwlvDUy0q0t+5GSc3JYvNuHnSGVP3SxGV3YdamgJ83/nyFjUvY2fn8sTKjOy+4QYfcAfFs1zZa3lOoDtuXANXuqCtRsmVqY9DBK7VoH3WOxqsEsJ6dZE5YHZBY0ob1nkuc/WXBGtKpGDP5hTTu4J/ZPh8bZfKX7BA3FRsrn6275GFE/p9SeYoiBw3yFIfMUPT2fSjST2bNbVHuSjcd/26mrW7Qnw+wuzdhmF+E6GYfUPQ/2M5Ks9SjMIY7F4Vj9ee4uWWLOaUzaB65tdMkAaGyRcHk9aPQzQRqefz1deL335sgMpj18sxd9Tup6WLoyP+C4wRNYlf19gxjfy4GD0YoHLoC02mrxknn9Di2WNytOPIgCeT3CgC4msjBP3axD+6/2Vl9ZCibqmr/2sJqSk03JtJt2sS8ZTDRXrA/zuyvTgv5dcXEyBBqQ9LsouS7Xzw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(396003)(136003)(346002)(39860400002)(230922051799003)(1800799009)(186009)(451199024)(64100799003)(31686004)(6512007)(6506007)(2616005)(53546011)(83380400001)(26005)(478600001)(6486002)(38100700002)(41300700001)(36756003)(31696002)(86362001)(82960400001)(2906002)(8676002)(5660300002)(8936002)(66476007)(66556008)(6916009)(66946007)(316002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Vm5xeXM1ZW9obUdyTlFSdVpqVStDaG00dDkyaCtLMHFSbnJTZ3hkNjhTUHBa?=
 =?utf-8?B?MWhXQkVXQk9ZY3l6ZWhFODdMd3BPQVh3YzljUktsUGJXcitTNE1lNW9oQjlB?=
 =?utf-8?B?VEdQb2ZTa2QxZE5raWhmMW10YmpWaWhvYldidG1ZK0UvQVg1QmFYc3BnYUxX?=
 =?utf-8?B?b3VKdGFEdThWRit4K05ranZnSlV6MEhicDI1dUVhMk40VkN1ZnV5TUorVTQ0?=
 =?utf-8?B?eVpaN1YvM0RZOWsyU2ppR2JMUlJlT2hjZG9kcm56blMvZDRGUC9reGlDNXNi?=
 =?utf-8?B?MGM3T01yampFSFRreUtJU3JXU3ZGR0d0ekxycTB3MngwRVBhbk1hOGFSaG9s?=
 =?utf-8?B?b0EwVFhMTHN2RkQweVlnYTNhMmIvaG5BWXZXNGRYcjJscHZScHNzWEVEa2JR?=
 =?utf-8?B?QTdJbVo1ZkJUOUN5MHQwTGlYOVQ1SFQ0VlJlMXlsb3k2UVcyVk1QeUdzUVg5?=
 =?utf-8?B?S01LYjUxNHlkSkJpbVVISEI3QlAyNERDZ2hUVVRwQzBtSno0V21pcWdnMHNj?=
 =?utf-8?B?TFk5ejRWaUVZd0YycWMzd2NJb2hoekNmZ3VRTUxFV3dYL2x6VHdLRm1nb0xp?=
 =?utf-8?B?NFp5NHFSNzlzdzhtZUJvYXdPNmNDZXh2aXhzVFUzVXdXZUozVGtwUiszVytz?=
 =?utf-8?B?b21HYlE0S1czOWJVUDNtME1jbnRHTDN2eWx4YysyMHpVd3pUVW9BYnoyKyt2?=
 =?utf-8?B?amZrQkhTWmhPRVRzd0JhQWtKSHJSeGZxTTNSWGdCVnJ6T2tHdjlTQnF3cEp4?=
 =?utf-8?B?U3g2ODZVVWJXR1REaVQ4RTZuTXd0K2V4V1BGTWYwYno2dzB1ZXR6YmR2QkpY?=
 =?utf-8?B?RXdOQkhZY3IxMjFEUjZ3TVJnbGZESXVIeFoxWEd6WlBVS3N1NnlhUVd2RnhC?=
 =?utf-8?B?RWZYajVnWVByQ0ducjJwVTJZa3JZRW1LYkg4RFF0Qi9RT1JTczJydEFoNmZx?=
 =?utf-8?B?KzFVUkZ3ak9yYlJPUlpreTJ3bVJBT1Vtb2ZEYjd0K2NNLzFWYVNMd0pkOE9P?=
 =?utf-8?B?V1pLTmZHbjB4T3dENzhSU3l3KzNWL21ta1FOYVRrU0hBZzV3UkhSTGdudTdD?=
 =?utf-8?B?RTFsYnhOcUZMbjlVM2M1KzBmbFZMSDFoVkRZSjEzaUFzU1JuOEtUYTFPYlVP?=
 =?utf-8?B?dDAya0xxc2kvZittM2VCRmp6eGcyZGlNUThmMEVEVUhhQlBub2s0bVVseHV5?=
 =?utf-8?B?ZmFuVzJmQWRmN2oxc3NsWm9WQ2NJT0p5ZnArTDJ1THNkTkxIV3ptc2FHZ0ZW?=
 =?utf-8?B?UmdMcDg0dzlRVzhLM0kzM2t5SXI2RzV5R3pMOTZHUlRJU1lncVhKZXc2RjRz?=
 =?utf-8?B?Mkw5SDg3cG5nS3AvdUFKRmJyK0JVcXd0VHNIOSs3eG5IcGZUMUFacnA5VXJ0?=
 =?utf-8?B?Y0pUcHIrKzNlZ1NHbGo4L1habjI3M1B5amFlWTJCc2VzWEcxTzNZTkU1YUJP?=
 =?utf-8?B?NlZzWWI3bFVibVVQUWFrWjlVVFNzZUMwd1AwcFhKdnlTVHNQMGh3K2hLdnVG?=
 =?utf-8?B?c0ExaWFUY2txSER6S2ZHQnZGbFpxZTBUWFJleGQvYXRSZFBsYktHNURzMXkw?=
 =?utf-8?B?NHZnODBoSjRjMDV6VHdZVWJ3UmgrK1NjdFo5ZDFlOS9FV1ZSUFA5akV4Q2ox?=
 =?utf-8?B?MVZhcEhNcXZOa3orV3o4TSt5dG5ubWFaVjV5bEtGeXNjVHFUeXJqTUpTMzdm?=
 =?utf-8?B?MmVNcUt0Q1RUYVF1WTI4Y1ZhaXRKRDFrUU9KNTRhMitrODYrMDRsWWt6TXds?=
 =?utf-8?B?THNhUStQbm5sdXlqeTU5UXpWaFJIeHA2T3h1WkVGZkNiVDdQeS8wMWs5cUp0?=
 =?utf-8?B?S2UwcDFPQlBuOXh1MnJxTzBSTmM3cTVYUVRWY2JmVDJObHRhYmQvV3hVZ1hm?=
 =?utf-8?B?Mkt6cjdpankzNlZBOXBlRndvdTk2WVZJOUZUVytsSUlMYjZwTk9JM05pUGtm?=
 =?utf-8?B?U2FBYWJHU000UlArWVJlVW1MM3Y0em5aYTBlTjJ1U25aZldsOUpjbzBYL3o4?=
 =?utf-8?B?NjdZZVRFSStETk9GTys2QTNVWDFUY3dpMzExbXJXVkY1MlNldnRGZFhlRUNt?=
 =?utf-8?B?UTY0SE4xVFJlRmZ1V2hQbmcyUHdCcG5GY3hwWUxnb1FaRTJmSkZYUzBxZFJ3?=
 =?utf-8?B?SGdUSVBHUE5QYjZwRzdTOXcwRXhLOG83SEF0anpCVDNMMUJldGhSa0VRamtQ?=
 =?utf-8?B?dWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 033e6440-a2e0-4e66-7e93-08dbcf40e58f
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2023 18:43:04.0099 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 47o3UWeNjJhm4Alu7MlVc4imNG12LKBldPRSngxjgJrdF2Pkr+Udx5/20NS3vnvLn9Y6oAsONnRrNEpPolrwMzMfWUGHI5sJtjs+9pVelwU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5141
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697568188; x=1729104188;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=fFplNfUtcFSeQxKi5imHxF9AtrdWb7wHTBG8RB52wR8=;
 b=QJfhOCFnoEzQM+3Pw31gadzNTvFOV26pwFU47pZ61XJyX9EN2xMYbpKd
 wsmk054ybepFdezQOaERsHMMFAUTOY9cYOjwL0sCG6sUN8u2Q9xb4jtPM
 6ylFRfoBrFlu408aAPlpWpJD4jIfYiE0JR/xxgA7ZBuVgzT+liZI19sCc
 32+NiFFu89T1vbzqEquvA0OsA8qGLYOgGWMqTgH+QKyJrFCQVLqQN7yQy
 Bzr7Ilhpcs6lEqr22n1y0NM6unmQmELjL7JUekXLZOHoORXDr+rPs2evc
 MnccWp08Isf/ICZtuQYHdBx0Xjx9s0gqs2QyDKlnxySJjDtsQmLCECfk3
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QJfhOCFn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/4] iavf: use
 unregister_netdev
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 10/17/2023 10:33 AM, Jacob Keller wrote:
> 
> 
> On 10/16/2023 9:48 AM, Michal Schmidt wrote:
>> Use unregister_netdev, which takes rtnl_lock for us. We don't have to
>> check the reg_state under rtnl_lock. There's nothing to race with. We
>> have just cancelled the finish_config work.
>>
>> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
>> ---
> 
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> 
>>  drivers/net/ethernet/intel/iavf/iavf_main.c | 4 +---
>>  1 file changed, 1 insertion(+), 3 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
>> index d2f4648a6156..6036a4582196 100644
>> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
>> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
>> @@ -5171,10 +5171,8 @@ static void iavf_remove(struct pci_dev *pdev)
>>  	cancel_delayed_work_sync(&adapter->watchdog_task);
>>  	cancel_work_sync(&adapter->finish_config);
>>  
>> -	rtnl_lock();
>>  	if (netdev->reg_state == NETREG_REGISTERED)
>> -		unregister_netdevice(netdev);
>> -	rtnl_unlock();
>> +		unregister_netdev(netdev);
> 
> This appears to have two tabs still, and thus be over-indented, as
> unregister_netdevice was indented twice due to the if statement.
> 
> I can fix this locally when applying it to Intel Wired LAN dev-queue.
> 
> However, if a v2 is needed, please fix this when sending.
> 
> Thanks,
> Jake
> 

Oh, for some reason I thought the check against reg_state was also
removed. Please ignore this comment.

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
