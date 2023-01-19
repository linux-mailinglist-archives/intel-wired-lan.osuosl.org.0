Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D1D06740E8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jan 2023 19:28:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0523E411C6;
	Thu, 19 Jan 2023 18:28:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0523E411C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674152911;
	bh=zTph8J6WaegB2Wk0+Z7Dx8NORSibuGZ3VT5eKFkiCVI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zXf49BHoKdLhC+YGLS+NkyFpEpRGj0H7n3VZ0b4YvaoIlLzhkpbv9Uoz34wlFwZKk
	 WxejRKxpFpbULU5iAVMPjenqlV+9ZfmK+m0eMCmvIqJIECtntuQ8yhCxlZwr4PuZyh
	 Ds7Tyb1ItARJ2DgGLg21h7XubBwAs2s4StOeESgkr3EfxyFtxY68omjrzx98rP5fi3
	 p51LFsAuh4zE+yct75p1YQlZ8ew1GpAYZBI99/CiLcXfN1l0p1198JuQ0+yGKGpFh7
	 DeBs2LC8Y2edumF6qqjSRDKbkDzn56BwXCtH38ifivR+PoLamLZkxTwPmjkyr12mMO
	 WBFc3EcbI66ag==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lYG8ifp9mQFD; Thu, 19 Jan 2023 18:28:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 928A841735;
	Thu, 19 Jan 2023 18:28:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 928A841735
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 641CD1BF33E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 18:28:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4A85960F47
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 18:28:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4A85960F47
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WUlq3Yyg9VS2 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Jan 2023 18:28:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 57D2560D5B
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 57D2560D5B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 18:28:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="324062681"
X-IronPort-AV: E=Sophos;i="5.97,229,1669104000"; d="scan'208";a="324062681"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2023 10:28:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="834085073"
X-IronPort-AV: E=Sophos;i="5.97,229,1669104000"; d="scan'208";a="834085073"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 19 Jan 2023 10:28:21 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 19 Jan 2023 10:28:21 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 19 Jan 2023 10:28:21 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 19 Jan 2023 10:28:21 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 19 Jan 2023 10:28:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Erx6658B89QhF/TgL+nnwF9LtRUV+31SMTgswFWDRw3ybpl6YD6lWLmrAK64QATYuU36ftSTeApDDUaAgc1bipPOtpc1IHVbD1W1QmJTwDeeLsS3b3HZPJBTJpVd9nPskfNmmGOhQnKdM+Dgp/wSpwSrPdgDUeIAZQO4ol03aN2Vk6Fk9S8I4pN/6fepthBxd76LTNnhuNm4aJao6qXf2sUBvG3Sggdiz/MtqwrCPeJGpgHvEYPj5kXElbpTRPsHVlSKSZ2t+oYpQKqbw/mZxkXKjukcVcVpZ696yefJY/fsqzSr5HKapaMMk9I7XI6fyWFE6USdEO1Rr9ZJQ32xXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r/q9Ksx+UEv7xMKOLFdxqJYAKe2zn383nUIrco4bLk8=;
 b=lwBPliW8UqZJwFfHrLnZ1d1qvCoa9PxK0aIr7l2VobG07t27B3VHrL5+2dUkXedISNKGoPUodhQC2roCyzolnsKfEXCT7pXou1/JQl8xPb/0yyPXRtmor3tAuAkp3J67dIbcnJ3HKa5IE4ZGf4gajk2/HYW3XiYP5rVXR7MET7yzLNS7j98R8tNg80oICvWUaPajAN3X0iXN2dpaSichriZ0t55iicBx3kBcGaSQvpaHmtq8fg4rnb8DmMwFiS7ZgFmTM+RPc8bni8a4xVa/yeOf2jKIOdih3khYXw0zJx+igyKe13GzC0Y42U9ltieir590+Fl0nWJIDbqjVdflSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DS0PR11MB7410.namprd11.prod.outlook.com (2603:10b6:8:151::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.24; Thu, 19 Jan
 2023 18:28:19 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4700:1fa1:1b49:1d5c]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4700:1fa1:1b49:1d5c%7]) with mapi id 15.20.6002.026; Thu, 19 Jan 2023
 18:28:19 +0000
Message-ID: <4274cde6-3a64-e549-a833-3930732c756d@intel.com>
Date: Thu, 19 Jan 2023 10:28:16 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Bjorn Helgaas <helgaas@kernel.org>, <linux-pci@vger.kernel.org>
References: <20230118234612.272916-1-helgaas@kernel.org>
 <20230118234612.272916-3-helgaas@kernel.org>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230118234612.272916-3-helgaas@kernel.org>
X-ClientProxiedBy: BYAPR21CA0021.namprd21.prod.outlook.com
 (2603:10b6:a03:114::31) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|DS0PR11MB7410:EE_
X-MS-Office365-Filtering-Correlation-Id: 5fa0938d-c268-458c-5859-08dafa4af033
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FFrYHqsKtaB+JiXvST+hq1PjfUVn7EinXYOkbyyD2pZWyi0t9omjU8ayfoir+ZYu5Unx8Y1yjUdVia+4hOv9jtmS4vGZ78MKcn9HdYZbYtYG7Q8yWFbzvLaKG6dPw13YoH71iwxwd1oEBZWjRZRTnD1Cc1OVlUNkLactq8PcnbV/BpweMU3I/n3LK5FCI881q8s3lk0mVXgJxyRALWZdmN3EiDEQbdhfMIGnZX2v4yzzxvjFrMP2Zxezgc5W+DQbv6uoFt5wdEQygJoLbhY4RM4+MoKvdeSPLnpEBGONNd8Vhp7D+TnTGIQEMzU5ukOM7WkQc+KyyAQG02vEyFcNg8rGGws/r1gpXJ134N7CSup9TvY/pZ/YiIONp0tLNGn7uRwwKF8tgF39zGomaxNZ/X/zxUnHu8y3VZcHASFWouLXfJHMDokS4oqKt5+BLTEmPGKlxrNuiBzQU57VrxARGLfFlZZzJIOTdiM9N2+lO93t8icQ1+X26XqNJp+XuHBTwmB4yIWlAHynZTScQUr+PlJY+KktxQFVVlHKIhKoMFIveiko5LRHOFPSHOAqA7qH+sT/gxFx97xAtbr9y+iIrW0ufrAFEurFT6DvkJga3RGRIh2O1pJJmEQNZrL6nabon8aWOSMWqPjOvRyXnFEvlkl+P/FgCjLLUkOTrNnrTjq3bG5ZIZMSLZUO4FisYMSzHEbE8nR67lQ54nxtR2WCYS16hgqLJ8/7N5Ymmc14M6k=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(39860400002)(346002)(136003)(366004)(396003)(451199015)(38100700002)(31696002)(36756003)(82960400001)(86362001)(31686004)(2616005)(6666004)(186003)(53546011)(6506007)(6486002)(478600001)(26005)(6512007)(5660300002)(8936002)(2906002)(41300700001)(66556008)(66946007)(66476007)(54906003)(4326008)(8676002)(316002)(83380400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UUVYZ2d2elcyMUFzbjk2NDc3Wjk1c2VEYzJCQ09qMWlUQk9Cb2RaR0Y5a21h?=
 =?utf-8?B?eTJxeSsvck5ERmVmaVF1NURRWXlUQk9lN2U2L2IxUXFXTzFhci9IbXRFbGFv?=
 =?utf-8?B?Rlcya25aN21aclQ2UlRITEkwMzNvN1BoVTUrRjBHaVI2VXV6eU84ZncvREtr?=
 =?utf-8?B?bWxjRUpER2pSNzdlMS9NRlRaY3RMUjZSUHA4c3dsZkNkSUhQVWd3VHh6N2pC?=
 =?utf-8?B?SmFwNUdlTTNnWDJ2RTRQUkMxb0pDR1oyakVZekZzZWJIcklrSXd1M0J0ZHNz?=
 =?utf-8?B?Wk9OWEZKVHE1ZzdvaEwzdVZFcGk4M3dTbzRSQWN3dHprOEdSNWxKRmEwS0w2?=
 =?utf-8?B?TmZtL3o0ZFVONmljUXB1YXNxRCt6N0c1eTZmM1BpUGZFaThBanBKWHBQanV0?=
 =?utf-8?B?WktmalBEMzN2QmJ6K2FzcjE5SDhsR2ZGcUpmem5ENlhTbGdJTWZ1WlU2dTdt?=
 =?utf-8?B?a2o1VUk5VjdtdmFpbC9uU3RvTWxkdk5PU1RKYVpEMHRQZDNPU0l5a0xRa09s?=
 =?utf-8?B?N3A1YlYyN0pIb3VBSTBsOG1HcDU5TC9XTEM1bUNvb2dtay96QVhWaURURnFU?=
 =?utf-8?B?bXM1eEIzK3BXR0h2RklvZmNqcVZiMXlWZU5TTERabDFwQmZONHl4MHZZclRt?=
 =?utf-8?B?Ui93SlNQWk54cFRRU0JGdnNKZWkzMFN6d0w0NmU4MU9RK2NydHBoOGlqNEpt?=
 =?utf-8?B?MERObmtpb1pxc2l2N3JaVVZNdHdFUnZWeTMxS3hqNXRCYlRhRFFuem9iT3hq?=
 =?utf-8?B?SFZZY2kyUFdSK2dqWkZ4MkdOaHZtZmp0R3BpYlcrcXB2YTJzNkpOWWl4RkYr?=
 =?utf-8?B?RmI2NGp1NWpXK29QbXpoM2tCVFh1TmEvdXFoUTlidzUvOWxMT1lCb0RjNWFU?=
 =?utf-8?B?OHNvRGM4OTNXanppeUphUXRsdGdnM3BuMEJlbWRmcmdJQy8wU21RNWJIV0pr?=
 =?utf-8?B?bGJMSVhqSTgzSEdNZ0ptbkFsK0p2K0k1eUNKT1Z4V2dVaUJWWTcxUVBZUWVt?=
 =?utf-8?B?NUw1UzltYUdlcG9zblQ1c0RzOXRRckljV1NNbUNlRHV5QUNTL1ZPL1RDVTAv?=
 =?utf-8?B?bHB3dVArcWJtL01XR1N3UmE3ek1tcnJnVlZDMzhXUWM3N2pjdkpZTXVVOWdp?=
 =?utf-8?B?WG9XYVRmbnlDcW9CQzhYc0RRQ1pkVXZ1ZWgrODQ4QUlrVTFsbTV1TUorL2Zt?=
 =?utf-8?B?V3E1Q1lHS00xNXM0bDVsT2pXdlh3WCt3dFRQY0N4RG5XQm9pNVkvc2pEWHJm?=
 =?utf-8?B?OFR2VVJvb0tJUHcxM3llQkRkK0kydlFjWUx0SExzWG5pd0xRejNTVDRFLzVh?=
 =?utf-8?B?K3pqcWJuNE4rZjh2VThrZFE1RTd3Vi9zMFdVRmFJOXdnK0pSWlozUkZqV0Vj?=
 =?utf-8?B?QjZJNFFvR0FvUjUyNHZoRk1Gc1dVQ2t6K2swVHQrd1hGQnM1VDlxMnIxMWFt?=
 =?utf-8?B?Rzc5WnBDWTdNeGdqVDdiMVVNLzRvRVR3dWdKeCtWMkRqb1RYVnNUSi9kSVcr?=
 =?utf-8?B?OGg2bkNkY3g4UlluRHpDaENYSmdXQ1VqR2tCYXRkUS9MMU5NcUJaN1NqVnlw?=
 =?utf-8?B?ZUlJQlUxUFcrVXZGcDhTM1AvNGQxcHdzaUlUVm5Fci9UOUxwcW5mQkI4ZjRq?=
 =?utf-8?B?dHZJTzlFaDRXNmpSa2IreEtVMGphYjNJY1JreGgxQVBkU1EvRnEzRFl6TzNI?=
 =?utf-8?B?aHlyOHQvczJjMkdWb2swdHliWDNUdTFDU0VrRDhuOWRjaGduTjJILytnWHJt?=
 =?utf-8?B?cFljd0RkVWMxM3NRakRrTno4R1JkTWZoQzliVnk1SWpDMnRxNTlPMytuNEgv?=
 =?utf-8?B?MWliTjZXK2Vva3cwKzZxbXUycG9FN1BLMVc4Q1RESy9VNTJTNWdhWjBTWWRI?=
 =?utf-8?B?cXFNcEdZbWNBN1p1T3NIYXY5NGkyZEVidGFoZlFLRVpzSDJUaDdXZXNwZ0dm?=
 =?utf-8?B?RXZyRDNOUUpjcFpDeEZFcFRFUDFBNWJMYmJjRFdsV0IrVnYwSmtJTWRzK0wv?=
 =?utf-8?B?SVp5Uyt1MVRSenE3eGNFSUZYNUoyVUxRcEY0UjUvQVNBOVMzYnB0Sm14R2Vo?=
 =?utf-8?B?cW5FSk53aG11ZGZ1dmJHRTlyL0N3YUt3ajhuN3hhQ3dSTTBBdGRHcmZwZ1hy?=
 =?utf-8?B?ZnVybFZpNlJqMi9RakxoVGlKT2lmdVZRUjJpekRBMzhNNzJFN3d0RGtqTSsx?=
 =?utf-8?B?enc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fa0938d-c268-458c-5859-08dafa4af033
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jan 2023 18:28:19.3267 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kzVzi3+75m/6YTVLhhXVgoVp3S7fc5JLGEnyIE/279qVpZx1hUarMYrecZ6kgSUvdxhTNpQa06o3HvNuK8LZawgMVeb5TWKeAKG6mEMUK1Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7410
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674152903; x=1705688903;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CQ2Nf8yavAI9u4qzA+nXj3hnQKwG+Qlz7j9K6T3yjHk=;
 b=ZjZpAZ5KD9MP0/qmbZiw6UGHAN8mnlAiq3Sc/LZ75SQMxGRnsJ2Z2aiP
 2Bfh01ReTCzBxu1ZWWpUbn93rAVvYy4liJTL+OnZ2s/sLBYBasD93TQoh
 U7UZU9j4yFiV3W+D470x7KcIFIO0MKCW618Dv2IKRoVi24e3VOrNfR2Fq
 qdfuS1R4GMkS7nlfYktceGDfkG1YBxcaBqKqVUSuxFYP0Lu4iBzTDJD2L
 d7kskqbhZeYI1ZQ8whZ20vs6LEDbbYwk43KJSkx41cYHgkumGpW2PCAjD
 5kM1vf8NK2fnSMOc00tuU6ULTRo6uTHtCjmVyDdBe0eeA23ryDr+NabJD
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZjZpAZ5K
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 2/9] e1000e: Remove redundant
 pci_enable_pcie_error_reporting()
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
Cc: Bjorn Helgaas <bhelgaas@google.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/18/2023 3:46 PM, Bjorn Helgaas wrote:
> From: Bjorn Helgaas <bhelgaas@google.com>
> 
> pci_enable_pcie_error_reporting() enables the device to send ERR_*
> Messages.  Since f26e58bf6f54 ("PCI/AER: Enable error reporting when AER is
> native"), the PCI core does this for all devices during enumeration.
> 
> Remove the redundant pci_enable_pcie_error_reporting() call from the
> driver.  Also remove the corresponding pci_disable_pcie_error_reporting()
> from the driver .remove() path.
> 
> Note that this doesn't control interrupt generation by the Root Port; that
> is controlled by the AER Root Error Command register, which is managed by
> the AER service driver.
> 
> Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
> Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> ---
>   drivers/net/ethernet/intel/e1000e/netdev.c | 7 -------
>   1 file changed, 7 deletions(-)

Reviewed-by: Tony Nguyen <anthony.l.nguyen@intel.com>

> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 04acd1a992fa..e1eb1de88bf9 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -7418,9 +7418,6 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   	if (err)
>   		goto err_pci_reg;
>   
> -	/* AER (Advanced Error Reporting) hooks */
> -	pci_enable_pcie_error_reporting(pdev);
> -
>   	pci_set_master(pdev);
>   	/* PCI config space info */
>   	err = pci_save_state(pdev);
> @@ -7708,7 +7705,6 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   err_ioremap:
>   	free_netdev(netdev);
>   err_alloc_etherdev:
> -	pci_disable_pcie_error_reporting(pdev);
>   	pci_release_mem_regions(pdev);
>   err_pci_reg:
>   err_dma:
> @@ -7775,9 +7771,6 @@ static void e1000_remove(struct pci_dev *pdev)
>   
>   	free_netdev(netdev);
>   
> -	/* AER disable */
> -	pci_disable_pcie_error_reporting(pdev);
> -
>   	pci_disable_device(pdev);
>   }
>   
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
