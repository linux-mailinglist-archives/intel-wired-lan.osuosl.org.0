Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6402B806FBC
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Dec 2023 13:31:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3A38E8301D;
	Wed,  6 Dec 2023 12:30:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3A38E8301D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701865859;
	bh=9FpPS8ebmdtFGCcSANLjCOf/Jd40XRv3hqi7nEI4glY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=O/OM9Vr++23wirsXs/gUv6VdaseYab6Px7BzSErCBJBbs3e/Jw7SIy6h7tpF95pMc
	 J46HvlxStIABwSakaP8Cz0f3312KAbl93AWqD13jgYNF1XwkdtucK5N3nL7Fs/1Jci
	 XEUR7lHVPMjWhMsB3wb5Cr+eij9pfxox0CHhTOB1Ia5IUsRekpRZix7g+TqWjNuxBZ
	 OijNS689nFcYUYdvG7mdptsvGbjfy7puMTuPKYak7Df11sHXHKtm7SvQsBeSn38cqR
	 FfSuBuPfzJJm/iKsJQukEElSmqXqFPv/mLPTQRi8U+mD+x04GLN02Ua/j8oN7ZiJi0
	 z9q5RjoiB/6Ag==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KzoQMd6sIjhJ; Wed,  6 Dec 2023 12:30:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EA25482B53;
	Wed,  6 Dec 2023 12:30:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EA25482B53
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 32D571BF34C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 12:30:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0570F43652
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 12:30:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0570F43652
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D2NbpWCgjYpq for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Dec 2023 12:30:51 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F36504011D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 12:30:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F36504011D
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="391224467"
X-IronPort-AV: E=Sophos;i="6.04,255,1695711600"; d="scan'208";a="391224467"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2023 04:30:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="862095983"
X-IronPort-AV: E=Sophos;i="6.04,255,1695711600"; d="scan'208";a="862095983"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Dec 2023 04:30:50 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Dec 2023 04:30:49 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 6 Dec 2023 04:30:49 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 6 Dec 2023 04:30:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kXq2Ff/BeBaJie+nvjsmWG/5yhh1YIoO/OzKyRSVdgXhC2fOoGDEiifngmCy+JdRYN2vuWDoud2ozNpApz0JFbumjPbSTjU4EBZq4psYjO5hMej0sHulPbjO9HtIxyBCsKH32WVOPYm+O86fZMPcpssSi9ZyzoiT8etFPvvnzUzRoOGr4lk/n5e9vK1HXIPzxxGs1gfVFo3hnvOAf+8VIz/ZJQ0S3y5oY/P1roDGTuN/FORCrrQ8wnWppP6+5UP2Oz0wgh98zxhh4zMeHqTaUxcUBxJPuSQ6rPYwb4hArwC7V3cDSdC3ddAZHsTo5pKZ3ypWwl65Ao9PK5qUfU6Iow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gGWhlRmXJKDGJX0Br4b8Cc/N3iVRB97AiLDF4pgZym0=;
 b=LC+owzfcc0okQOecAFCrlD9DriqhGBg3uMeZD+cZc6F4zJKEUOy4zBBzXojojcj/TDZjwF/eMqT3ZsyOzy8fmG3pE6Vo0COMZ3FzukK0swAMyvDD0V85aRahodymZ2VF2n4MYQoQ8FrGXt6JK1YvDfXI/rfsNPZ9ohhRL48Y9BappPpxRDxe+THAe9dv5l7oqcXHGYUbnyF0ylMqE311PoAtk4IDk50klAVbBBLrEmguAljMsUL0hlHxMBcHviif1w4hbYGh7UeSjTkTN8f/fLsO+ivXUxYvtQW9j60QruF3bWJ5L878hmzTcKFNnqMpns+U8BYa5FLAOCdrVQkDrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV8PR11MB8464.namprd11.prod.outlook.com (2603:10b6:408:1e7::17)
 by IA1PR11MB6219.namprd11.prod.outlook.com (2603:10b6:208:3e9::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.34; Wed, 6 Dec
 2023 12:30:47 +0000
Received: from LV8PR11MB8464.namprd11.prod.outlook.com
 ([fe80::c851:ea8d:1711:a78e]) by LV8PR11MB8464.namprd11.prod.outlook.com
 ([fe80::c851:ea8d:1711:a78e%4]) with mapi id 15.20.7046.034; Wed, 6 Dec 2023
 12:30:47 +0000
Message-ID: <7cddc9b2-53fd-4ef3-ac43-f80600c2b854@intel.com>
Date: Wed, 6 Dec 2023 13:30:42 +0100
User-Agent: Mozilla Thunderbird
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20231130055540.12692-1-lukasz.plachno@intel.com>
 <20231130055540.12692-2-lukasz.plachno@intel.com>
 <a47ee305-1318-3b32-bf26-da6342ca4513@intel.com>
Content-Language: en-US
From: "Plachno, Lukasz" <lukasz.plachno@intel.com>
In-Reply-To: <a47ee305-1318-3b32-bf26-da6342ca4513@intel.com>
X-ClientProxiedBy: GV3PEPF000000DF.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:144:1:0:2:0:11) To LV8PR11MB8464.namprd11.prod.outlook.com
 (2603:10b6:408:1e7::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV8PR11MB8464:EE_|IA1PR11MB6219:EE_
X-MS-Office365-Filtering-Correlation-Id: 97530f08-e6b9-474e-d5e7-08dbf6572c35
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pgme9m+gs9iNfdz44VnM21fzhHr0XexK8ZFYO8hm8nShqp8jcucQQAIrZ30rTo4HnipH8eT2O+sN0yvS3rjEA5xD88C/ogkplCzmIB6dU5IwF0oIc7cxNJ4OHHR9UcqHm97SCHoC/+qqIVsiwKEcy4rElDFxuXO/mROrLX7b6uzW2ArwnXeocYRQa5/OKTifRNSJN4sCIIvkL/Gzm0b2F8ZfiNKGM9QV2whyg8+8AkK1wylQsiCk9Ma2i1x3MuaeGGrUri49q+lgLpwNXbmC1CL6yuubJ1OWLu9keQdwzR5EhuHp4Pg1Hmloe9anAipdEkSS/TIpyMADRzMJtn1zPxpASc+sLEnU/SSjE+etnpCklWzBT5kPwiTsq2csm5zroMuhSLHUoVKqSXWZxGIIHis9kJSZBBEl+zylRUZVffBbqMJ6iLhSjgNFGr72zUfDpTTMmvl7R3ZSrdlQWqUYj9muFIA2fN15VgAVzbn5VGhyRjOIrg6+0SeZsoK+ue4pmeJeIx4keQQaFWRM7vrCdPf8uRL5/+OaQ8dIeoweZPl+5xnp2a9Da/A1ZoYOAI1jlpXSAnWC7HxxUAXnXKn+pLUsZen+lZ1bYXStnquED+eM96WcgwRtnXTFnEzjRHHRvoZ0mUE1lu+ODfqcMf1pUmqgo0bfGSN/Zli4z6AYYZr7Rxl1Lzds9gTmA5dQYtST
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV8PR11MB8464.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(346002)(39860400002)(136003)(396003)(230273577357003)(230922051799003)(230173577357003)(64100799003)(451199024)(1800799012)(186009)(66946007)(316002)(66556008)(66476007)(6486002)(478600001)(6666004)(5660300002)(36756003)(41300700001)(2906002)(86362001)(31696002)(8676002)(4326008)(8936002)(38100700002)(2616005)(107886003)(83380400001)(26005)(53546011)(6506007)(6512007)(82960400001)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dmpISTg0aWxRc1MyRm03S1dMZnlpYjFhalVVQ1djNWNiUUVpNHY1aGlYQTlC?=
 =?utf-8?B?RDRwUlRReDlBNXdteUJpdE0yekllbmJFWkRnOUc1WUVGMVpUQjVnNm1lWFho?=
 =?utf-8?B?UWVSczhOcTVDUUNVOWQ1MFR2MVY5M1pEbXR1YVJBeGZnbHdyWXUvZ0FxVjh0?=
 =?utf-8?B?Uks2ekRyYU15djNDTmxCcWxmdU9HdlEwN0lYK3E1a245U0RsYzZyTE9pZUR4?=
 =?utf-8?B?c0EzdzFxZnR4dFVtZUFqS0VWNlRGbzExVDlITE5Iem5aZHM4ZlhOOUd2WmZP?=
 =?utf-8?B?NWg4aEFLTjBMVTl3Qk5RN3M1c3VyeU0yY3UvS3Q3NXdkZnpzSnIyNVVJeDc3?=
 =?utf-8?B?ZE16SGJHdzJqdlkwSUNVblhOVVFTZXhBbmZzNzVNanRrWXIyWTlVcEJaY3Yr?=
 =?utf-8?B?V0V4UHB6KzhPSUYydDNEaUg3YXBjelEyUkRVRWw2dWpuSXQyN2FhNzZLMVkx?=
 =?utf-8?B?MzB6Smp2Wm9TTW0zQVU2SjN4SVZxUnFjQUJ1QkxiSXNTN2x2WVROM0ZYYzd6?=
 =?utf-8?B?bzBZQjc3RU5oYnpMeGM1YnN1VVB3c0ZzMEVhcUtCNGNPL04zVjVaazRWUVRM?=
 =?utf-8?B?ckdFYnFBYVVtekJiK2FPU1RhZVgvcnRvdExiYnVVZ3NmRzl5a1lnTXRZVEFi?=
 =?utf-8?B?d2pGR29TdG5LZk9IY1pOYkdNc0VuNG1rOURqNHFZVEVNb0dRaTBVc0RzTlNV?=
 =?utf-8?B?SWFwaUVFb0k5NGVDZVpEbWV4YURrZ1I4M0Q0YTMzZG1kMStPU2cySEx6dWJF?=
 =?utf-8?B?L2wxeG1vRTJNNUVsUXIxVG9tQWcrQW1vSmdqVEVjTS9EVk0wQmZKNUNaTW9q?=
 =?utf-8?B?VE44WC9SeHpHYmxjMkRsQ09renBWZXpsOGdvNllOTHphSHZsU0NNWXlxVWRE?=
 =?utf-8?B?Ky9Ham5SQThINzlNeXhRc3VJV2pYUGhaR3d2eEFhcHh5OVNERUtZVkpVQ3NT?=
 =?utf-8?B?UjhhYmN6QUcyUDFuMUhkOVdEU1BxbmhOUG03ZFBRUjV0Wk9IMC9LWCszQ0pJ?=
 =?utf-8?B?R0VOeE85Q2YyR1lrOFlhdUxadmpzZS93TkppOWN0amkzVllrQ3FBblk0eHF1?=
 =?utf-8?B?OFdxSFl3YmZaeU5DV2FuTkNPMkdCY0U1Q1RteC9URmxIMEIxelBBL3Z0Mk9P?=
 =?utf-8?B?THdMei9Nd3gvOUUzY1ZLN0ZzZHVjZ1dSSDBXT1Z6S05uSldIcENvbWlPMUhU?=
 =?utf-8?B?NkVNZVF0UXIxaTF2bE92aVUxVlkzOCtzRCtnQjBmRXQ3OHlYZTVLQytOS2N0?=
 =?utf-8?B?RXlBODBJQmlVVlc3QTg5U1ZEbUx0b1RZN1V3akh1bThDUWxrUUlDbFFGdU5h?=
 =?utf-8?B?TTc0YWdxMnc4bWhESHNKK1NpeTV4dXBaWXVHSlpOcFNWVTMyNDlEMzliR2Nn?=
 =?utf-8?B?UkdXWVlZcjBxU1JIM0FORlVPUmdvTVRqL09jR2NIZHI0S2kybHhtS0s4UWJv?=
 =?utf-8?B?TTBGQkpRNkVudEhudUhVYUFnOUdTR01kRnBIU1FDZW1yUERFYkN1aVJ6ZHZN?=
 =?utf-8?B?WjdvS0xhazFlU1RxRnlGdTVYcmVidkZZb2w1cStLRXBIemtyaERPSEtQTU93?=
 =?utf-8?B?cEJpRkl3aXZ2K3dLQys3SFcxN28vSmhIUUVCU3JKdEpIOUxuV2VjTVU5SGF6?=
 =?utf-8?B?UFJDSWVUSEFXeW1neHJIMGRhbDR5bkNuZXhxODRTanFCcUJTbTFIOXE2VElQ?=
 =?utf-8?B?dFV1Y1A0ZDV4R3oyb20wU2FXSHFyRFh6Q0lQTmswYkFCVmd2b0lCR2dZV1Fi?=
 =?utf-8?B?dU9ERWFvV0xjQkZlbG1sMFYyWTFHNmxTUTVWV3J1RDlONTArUm8zamx5K0xR?=
 =?utf-8?B?eHBpYUg4bVpqMGFZVHhLNGdiN0tVMi84VTN4UXNkTERLenV3cXQ2OGhKVmZE?=
 =?utf-8?B?Sll4NmYxNEJqZndNV3dCd0dmU3hxWGpncVZ1Rk9rcXVIVnZ5dFVWMW01S2pu?=
 =?utf-8?B?Y04wNndDWFovZFRnZVY0ZDNVbC9Hczh2ODB6R2RFZ2lrY2tKQXpia2J5dmFV?=
 =?utf-8?B?ditJZDFGaS9VMmpoNlM0dU1Bc3RSZDcxUDlKM1pYcFpWZStLbnlUN3VLVldK?=
 =?utf-8?B?MTRQVTF5YU0rQWJ2TW1KVm9NZVg3QnQ5a0VaaVo5NTdaN0ZiSThTM2w5ZVQw?=
 =?utf-8?B?cWVSd21leFVucUZlN2dzZEc0cmFkb0lLL29DNytmV3Z5RjdVenZoWGhjTHZV?=
 =?utf-8?B?ZVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 97530f08-e6b9-474e-d5e7-08dbf6572c35
X-MS-Exchange-CrossTenant-AuthSource: LV8PR11MB8464.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Dec 2023 12:30:46.9597 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oN7odOVQmVvC7a5FvNyAxZKcxRoDzMQfQ4AsZQd4GX55ZTWNLxuy6kOJM3ZpldqJdVvq51YstgulfjBWgKlPYcEdsZrhMmG1nDC6U+tJVCE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6219
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701865850; x=1733401850;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yIiHuheXG84mh+C2DbN1w8N7m/2Qm5QmxG2qg+yjKZQ=;
 b=K5Shr9iwaFG9sezAa2IO7ig3F+I49JK52EZWUmJUyVDSIybCcvVU/Kmv
 dqzO48M/U+YzuVQC7bM91kFgaYY8Wk9hj1ILdwYG6NwLccx1WKPc7jnwU
 ArdsJteahuORcZLTAkpQT5MuR60Yu/diPVBGAuPF42yA7Q66eihFj+qHD
 b00MuzKI2R16YBsHXHgT8MY/P+btrsXPsPvpat0vJXJxXtTqckDbEkpbO
 jQYTt3RruCQigQTjQoHhWjUR/UWHq9KiT5L8MPG1odI8b7QL3ssQ6MnD3
 Om0rnuo6uifEhsVFY9HIX549Wsu7fZ/FJ/Q6UqTAcsebNSKrbt05qI2Dl
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=K5Shr9iw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/2] ice: Remove unnecessary
 argument from ice_fdir_comp_rules()
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTIvNS8yMDIzIDEwOjIzIFBNLCBUb255IE5ndXllbiB3cm90ZToKPiAKPiAKPiBPbiAxMS8y
OS8yMDIzIDk6NTUgUE0sIEx1a2FzeiBQbGFjaG5vIHdyb3RlOgo+PiBQYXNzaW5nIHY2IGFyZ3Vt
ZW50IGlzIHVubmVjZXNzYXJ5IGFzIGZsb3dfdHlwZSBpcyBzdGlsbAo+PiBhbmFseXplZCBpbnNp
ZGUgdGhlIGZ1bmN0aW9uLgo+Pgo+PiBSZXZpZXdlZC1ieTogUHJ6ZW1layBLaXRzemVsIDxwcnpl
bXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBMdWthc3ogUGxhY2hu
byA8bHVrYXN6LnBsYWNobm9AaW50ZWwuY29tPgo+IAo+IFRoaXMgZG9lc24ndCBidWlsZCBjbGVh
bmx5LiA+Cj4gLi4vZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9mZGlyLmM6IElu
IGZ1bmN0aW9uIAo+IOKAmGljZV9mZGlyX2NvbXBfcnVsZXPigJk6Cj4gLi4vZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9mZGlyLmM6MTIwMzoyOiB3YXJuaW5nOiAKPiBlbnVtZXJh
dGlvbiB2YWx1ZSDigJhJQ0VfRkxUUl9QVFlQRV9OT05GX05PTkXigJkgbm90IGhhbmRsZWQgaW4g
c3dpdGNoIAo+IFstV3N3aXRjaF0KPiAgwqAgc3dpdGNoIChmbG93X3R5cGUpIHsKPiAgwqAgXn5+
fn5+Cj4gLi4vZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9mZGlyLmM6MTIwMzoy
OiB3YXJuaW5nOiAKPiBlbnVtZXJhdGlvbiB2YWx1ZSDigJhJQ0VfRkxUUl9QVFlQRV9OT05GX0lQ
VjRfR1RQVV9JUFY0X1VEUOKAmSBub3QgaGFuZGxlZCAKPiBpbiBzd2l0Y2ggWy1Xc3dpdGNoXQo+
IC4uL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZmRpci5jOjEyMDM6Mjogd2Fy
bmluZzogCj4gZW51bWVyYXRpb24gdmFsdWUg4oCYSUNFX0ZMVFJfUFRZUEVfTk9ORl9JUFY0X0dU
UFVfSVBWNF9UQ1DigJkgbm90IGhhbmRsZWQgCj4gaW4gc3dpdGNoIFstV3N3aXRjaF0KPiAuLi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2ZkaXIuYzoxMjAzOjI6IHdhcm5pbmc6
IAo+IGVudW1lcmF0aW9uIHZhbHVlIOKAmElDRV9GTFRSX1BUWVBFX05PTkZfSVBWNF9HVFBVX0lQ
VjRfSUNNUOKAmSBub3QgaGFuZGxlZCAKPiBpbiBzd2l0Y2ggWy1Xc3dpdGNoXQo+IC4uL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZmRpci5jOjEyMDM6Mjogd2FybmluZzogCj4g
ZW51bWVyYXRpb24gdmFsdWUg4oCYSUNFX0ZMVFJfUFRZUEVfTk9ORl9JUFY0X0dUUFVfSVBWNF9P
VEhFUuKAmSBub3QgaGFuZGxlZCAKPiBpbiBzd2l0Y2ggWy1Xc3dpdGNoXQo+IC4uL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZmRpci5jOjEyMDM6Mjogd2FybmluZzogCj4gZW51
bWVyYXRpb24gdmFsdWUg4oCYSUNFX0ZMVFJfUFRZUEVfTk9ORl9JUFY2X0dUUFVfSVBWNl9PVEhF
UuKAmSBub3QgaGFuZGxlZCAKPiBpbiBzd2l0Y2ggWy1Xc3dpdGNoXQo+IC4uLgoKSSB3aWxsIGZp
eCB0aGF0IGluIHYyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5v
cmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQt
bGFuCg==
