Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E08778443
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Aug 2023 01:45:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F0F8341DB7;
	Thu, 10 Aug 2023 23:45:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F0F8341DB7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691711113;
	bh=znp3tDZ6hBxUcQyBQYCuB4+QquVdavb1UofONqvGmMk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3b5PrXxkQSdxT+rZgWiEn6vqjqXkh9075T5NtBH/m+F1b23fqmAVbaZ6/dkcVQgOf
	 G6Ct7HxU3fkWdRHJQuTW1nceJ3EbRATxn4nAo+q2yfZ+GHCuOLviulXL1VDd+hhaOT
	 DuW9fWfwo7G6uV/IxFfNWHJsO5b8HOpFcOY4ACQHYLQw0p51V0DDFUFHg9inCNm3yV
	 Gs2OD9awbH4y0Qft+9sGtvM/9BMlSp7wCnuO7J6WWlwKZUMPKGjH2hiP7sixpRBCuR
	 rp71uPHnVo7LMpEvlSX7bbNit6Qrz0X/yRgAcZsQL8Cf1R9adQobBaFrZELMZPI9fk
	 60CJnbtUYVlYA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4_Ux4wkHiX5i; Thu, 10 Aug 2023 23:45:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9A8EF41DA6;
	Thu, 10 Aug 2023 23:45:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A8EF41DA6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0E7CB1BF5B4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 23:45:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D935640144
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 23:45:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D935640144
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Kz3w29uIMRd2 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Aug 2023 23:45:05 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EF88940012
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 23:45:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EF88940012
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="369023230"
X-IronPort-AV: E=Sophos;i="6.01,163,1684825200"; d="scan'208";a="369023230"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 16:45:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="682318974"
X-IronPort-AV: E=Sophos;i="6.01,163,1684825200"; d="scan'208";a="682318974"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 10 Aug 2023 16:45:03 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 10 Aug 2023 16:45:02 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 10 Aug 2023 16:45:02 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 10 Aug 2023 16:45:02 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 10 Aug 2023 16:45:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H6mRhggXsMtRuA8BHZfdeIzHmR7+9RsYx0FQVPtNk4W+zN1ghBekdMNCh8WAZVdhhOckx/DOZmHvKqatwoWV5wdy16Xh42WlCF2p0R4TStmpsvTDJAuDVDZY8s1UCMNxnAy5pDcakXRfm6xoqokdtOn2XSe0kUZANXwjk3sZd2+QsZ3WUlkAl8VpFqje1fFWI8TRl+nB5mb0K7yPQNlTqIE/iiLa4TGxfvQDZldBOI+Os8q/civSV6Tf/xu5fpvh3pMwQhOC+baqOsa1geP1Fufcm4P90s0eZvAJJRy73JJQ9/KkmrYCXlLAhB4mt1F27ifDq4KJ0Q5n6oGESQZZ1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yd2L2hflcvET+j9l1RtzEI5g+PQiddAvnmbzSK+TPYE=;
 b=jotyXUTume7siyPcO2fIBZZTZqGt2LnkMXlPIqinjAZkezz63g21X6Dq5k5c88kOBBMIE63VLMoITcUU1p4NdbNR92+fVKtOWA7jmGU/7reVXZ3CTCdT5Nr26QNz7emcWjE431zjqD5JVnLw7qyjjN0PCM+AxZq/zrDQPhScya1ENRdwNwuhM1iAZj6UbjvWksDfN/NBCw71IHmNWNtuRsXWT+noSOYHIJgV8jlQF4XzDq36sbem7GkLc/ASgVmpxulblQ/TTaKfsUh9sGdQJwrorww+SjccS/zH6bPv1Y+GQw7PNe37yO2/8zWpCNQven/rMyKjPUHrq4zXcJ16Wg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by CH0PR11MB5426.namprd11.prod.outlook.com (2603:10b6:610:d1::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.28; Thu, 10 Aug
 2023 23:45:00 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::9c1c:5c49:de36:1cda]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::9c1c:5c49:de36:1cda%3]) with mapi id 15.20.6652.029; Thu, 10 Aug 2023
 23:45:00 +0000
Message-ID: <e09cddf6-3207-b913-ad51-e283b3ebefa7@intel.com>
Date: Thu, 10 Aug 2023 16:44:58 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.14.0
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230810002313.421684-1-jesse.brandeburg@intel.com>
 <16c05f6d-e971-b487-6eb8-ba5e2bcd658e@intel.com>
Content-Language: en-US
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <16c05f6d-e971-b487-6eb8-ba5e2bcd658e@intel.com>
X-ClientProxiedBy: MW4PR03CA0108.namprd03.prod.outlook.com
 (2603:10b6:303:b7::23) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|CH0PR11MB5426:EE_
X-MS-Office365-Filtering-Correlation-Id: 7a46568b-725d-4420-efb1-08db99fbcfb0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VTohO7WORemV9hXMmE5yo8GZX8k5ELbSEixMXj2/NoIUF8BTXAiWZahPJ5iEKT25ObiFPijhbjdgubAx3riN5F/qvYRGNOh8cromJ0rQ/rFSSrxL6lGfzeJdv1YtO1m436aS14+egsgZnxvdhafCY3SV75s5oAOSun4XETnku7vT/ZLVvRD0qmqnIUNTtLFrtRPfLB5Z85qOH5OTzZrQK6hvmc88aXRFhF+xIjjU5BWstBbT1eGcLmeaOg2cnPlRYvSt1hGrZTbssAjfQCipvgzsS6Y2lfari2q2peUMwz2wSLk/ZdcKE+mnUm6LXlrdBIzO1eDZNO1la9IKuXgyMA40GB88Iv0g2b4brQ8zIFVFOpoaREat1VwbidyNwiRqx60xh76/t3y4nAzds/HBWfPDeo8YtVpB3Pb63YDU46PEZ/NugqvmTLo3UypJU/j5f8NX2FVFCyGUSgqodzF/HFjRI7a5zwbw/C2Y3/kNiz4uujbxE4DePcu1rBC2pedOCxpcIRQLAOi/LtqwhDNaUUoAwLUe9NgNN/Hnle+TJpC44HqIpEemZP4FiEXZqyyi42xTyCULKF8YBMAn3TA7svLjPqPLxQqMnQox1i/IngZPXd1yrs6iB5Wsk9vmcUzoyedrIwsv+m9F6jB480u+ww==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(346002)(396003)(376002)(366004)(136003)(451199021)(186006)(1800799006)(4744005)(2906002)(41300700001)(5660300002)(316002)(44832011)(8676002)(8936002)(36756003)(86362001)(31696002)(82960400001)(31686004)(38100700002)(2616005)(26005)(53546011)(6506007)(478600001)(6512007)(4326008)(6486002)(66476007)(66946007)(66556008)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YUwycFJ1TnNOOWVIdEJaUklib0xzc0ZWNnpVZTU5MDcwelBJbzJvRTU2WS8r?=
 =?utf-8?B?S0tOTnFSY0pSVzltVnVITktoSTZMMDZnRmwrYVlDZkRyWS9weWM0WkxZQ1Zy?=
 =?utf-8?B?VWpjYlR2VzhvSHp4K0ZlL2NteUR5SHV4bzBEdHV2OXVnZWh6bWk1a2dzYy9r?=
 =?utf-8?B?bDBFSUxleTE5aVQ0Z0RkQ21Ka2ZDa0FYR1QyRWVNUUZOTmZtMjZIeFVVRkl3?=
 =?utf-8?B?bUEwTXZjQWZENlUvOCtkS212Yjl2eGVua2toUGNMeGEyUnY5c3paTUZEd0RD?=
 =?utf-8?B?WTE2RHFaOCtmODRsNVkrWHI2cmhKSGRORnJjYnpvK2ZaZE0yMVoxeUFVem02?=
 =?utf-8?B?NThjdDM5UHVJOHF6TXBHSVU0RFc4eVBieCtEOW0ydW4rSGtpaGVFYlA4Nmdn?=
 =?utf-8?B?dDhSR3QzKzdqMnJ5eXI5UTBmdkJDMnBrUkhQcmpoaFRaQ2kyaDhkNHA0cjd5?=
 =?utf-8?B?MW5GWDJKNWNuUXh3aysvZFNScFFTUS9mMUFSTnhDM0RpQllNajFhN0NBMzIx?=
 =?utf-8?B?WTNJWUZJcXJnVWNESG5KRG1ZVXREY2lFUUF5M21nUHZGSVBwRjJZZDRrOGJR?=
 =?utf-8?B?ZDlKbmE1NTFKeXNvV2RaUkpxazUxbUpmdk5rYlgxVWF4dVQ4N3UxSHVKZjJH?=
 =?utf-8?B?S1pya2plTC9kdzFGNVJvZTR1YjVGUHZ0QTdEemdsenVmRnJKazlnejdnTFZ5?=
 =?utf-8?B?dWxObTVhdU1wNm5reXhTTnN6bFB1aTBQcTJNT3llSzdtZHhMOEhQMEo2ZTIx?=
 =?utf-8?B?MGh5YXNMeWpkSndrc0ZXTHlGM0g1TEFucEt1VFVKR0EvbDdBOUtyelczTVJJ?=
 =?utf-8?B?b2dueHZCcGNhTlBvN2xKSmNYOTZwRzBjNUI5T0F3NkM2MEQxUFhGTXN0dmZC?=
 =?utf-8?B?OGRpUjZVa1V2ZFJOMllqaXBWa1JIMURtM2JvQTJaNXJjcWQraHY1TDMzenRh?=
 =?utf-8?B?RCtLUGpjcEErZEJQMzBubk1UR0cwTW5MTVErSy9SOTI1czAxdjlQQXVpU0hz?=
 =?utf-8?B?VmVETmJVQ3BtZkRCUlJQMmlXNHNvbGJUS1cwQnNqMTV4R1oxMk5yODBCQldt?=
 =?utf-8?B?Ykx1N0NhT0pEZ0tONjJ3N2QwMjZXYVNxQnR1QmpTWjZDNDZzdEdveW9TSUNv?=
 =?utf-8?B?ZjNlWVhncU1TOG9wcDl2RHpSK2cydXFrWGxNSXlLRzN0MFlETHJFYmkwK0oy?=
 =?utf-8?B?eEN2TXdzVExwc0Z0NGxsMHdGeDlZU1dadGJYWjRIczk1Ty8wZGZqV3Ywa3VB?=
 =?utf-8?B?dURvb1BpWkZhVllMK3ZOSU8vTUpUWk93bG9aTVZnWEpHOFkxMWNUZE9sOGpM?=
 =?utf-8?B?cVNDeWI4bUx0OWk0VkMyQ1dZRi91SkVZMUdrZWt4R2RSTjAvYTZDTkxqS2JB?=
 =?utf-8?B?UUFieExrVWJNZVF2dkV4czQ1T0hySkVReEUrRDkwMGRsK0poaHk3NXlCRHZa?=
 =?utf-8?B?ZlZjR0hSSjl2cmZCWEJtUnIvUVJVNFhWN0lPb0dZczJ2ZFhCeVl1d3ZMOGpT?=
 =?utf-8?B?VjlRbUNMa1RpYWtHN3ZuZWlGWEltUXhHcVU2YVNxbDhCWGlXRXBiQnpLUWVN?=
 =?utf-8?B?Ukt1VlQ4MTFSenl3MEFsajJ3YlpkR0xlR1lLQTJuUDIxank2K2w1U3AvRnho?=
 =?utf-8?B?b2ZIS2lDSVJwQU1pZDB2QVRCMEk5SnRhYTlGRGd6ZE9UU1JycWZxa2ZPY1A0?=
 =?utf-8?B?RzRIT2J6UGtLWWVueVRXcE14YUVacUNBWFFhVkwvKzVpMGRXYTJiNEVIWVQ0?=
 =?utf-8?B?VG9rc1QxZEFkWVBoQkNKdzZJOVRpQjNoRHdBcjNJdlMxaC9VYnhiY2VhQkdp?=
 =?utf-8?B?TURSVDdnb3piVTRDWEV0YVZYSC9RRnBNRHh1SkhldTNLVUM5T25KVkV1aUZu?=
 =?utf-8?B?ajVPSHV1TEV1QmxScnBzUFhiM0lhUXp3UERUOThQM0pNT1ZQWnB1YlQ1K1Zw?=
 =?utf-8?B?NlJvYjRpNGswSkN5b1Z2bVJTcmsveWhIUmg2RnhsbUs1MVRlSWZXRm15TWww?=
 =?utf-8?B?K1dDNTNkcy9sKzZqaHhHalNPaE85cGhtL0g1ZzZ5NkRhN0J4UklKOEZteGRW?=
 =?utf-8?B?Z0lHTGs2blNQZ29LUktrK1RLR24wTU8xazNCVkVFL2VhcUhlUGxEeU53Z3pW?=
 =?utf-8?B?dEZLY016d2dBajFlbWw2clIrOGtCS0hJRElCY0V3T3NxT1ppQkFGNlB2UGpF?=
 =?utf-8?B?S0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a46568b-725d-4420-efb1-08db99fbcfb0
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Aug 2023 23:45:00.4423 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AOfJwYwinVYuIFUm9rtgbzLyfjo7tyo9MSRTllJFf7AC4RqOrLNsopRVDd1z/UTHD/TrneHKWLctkrDYQYm3NMjGnk+l0te57r9e7mqrn9I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5426
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691711104; x=1723247104;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=o4Ig6Ef1IGmas+e9Rg2Cwi3lbhNE1EbhQXodoUpiRZU=;
 b=XWtYWz5PZ/Hu6ajM5Uml/pNe4AuW6i5EUHpxAVBEI9UYxnmqidEVvQm4
 MgBdqJTOJ8mJuieTGFhOPxN1chWAa8hlISvyUFTaP/DxprJyDg3x0ubxj
 +fcAcJWAGrPfrho++J0Vw0MWKUWksdUdY/97QThxADE5Qkt7YL154+tpe
 G+6VODOv9tiGeOzh3LWfYy0FNwcSRxaWUN+EClKwzJwIfKSPYkY1amEjE
 xvvOaMOhAkZmYQFczOGxPuRUrUZnl+mUMgKZqVVCCWJU1kvR8Z8S5sJyW
 PLfjlftXMiaC8IxjLEpLhleM7ltAYDOizNo1HlQ8YOwsMJSbLR1FGAu+Q
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XWtYWz5P
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix receive buffer
 size miscalculation
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
Cc: netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/10/2023 2:33 PM, Tony Nguyen wrote:
> 
> 
> On 8/9/2023 5:23 PM, Jesse Brandeburg wrote:
>> The driver is misconfiguring the hardware for some values of MTU such
>> that
>> it could use multiple descriptors to receive a packet when it could have
>> simply used one.
>>
>> Change the driver to use a round-up instead of the result of a shift, as
>> the shift can truncate the lower bits of the size, and result in the
>> problem noted above. It also aligns this driver with similar code in
>> i40e.
>>
>> The insidiousness of this problem is that everything works with the wrong
>> size, it's just not working as well as it could, as some MTU sizes end up
>> using two or more descriptors, and there is no way to tell that is
>> happening without looking at ice_trace or a bus analyzer.
> 
> This should have a Fixes: ?

Dang, you're correct. I'll send a v2.

Thanks,
Jesse

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
