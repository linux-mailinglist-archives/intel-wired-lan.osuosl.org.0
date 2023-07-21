Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1281775D087
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jul 2023 19:19:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A49D441821;
	Fri, 21 Jul 2023 17:19:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A49D441821
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689959992;
	bh=KcgIqIJd9iSZrm91nay3x/V/ck3+BiAd+0VQ/hBpSrU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dC0X7pQQtngPRyb5SVD91KSl8kTGB8jayaljit5mUjAPcBeyySS+/2FkdMkk+5Cvn
	 SBYQpoqqXYeT+QYD1v86pLEVD1+UZxIjq1R7HlxTcw0e8Wi+k5YGmBMfKoVqj5hcYc
	 MJjkOUt7YWYHc5Tuk9Re3obM3dElS/xgFWXP4RYWIGtLRVwkFIOMIbkS0Z7v3/snpN
	 mFsPca2kEVn0R+B03CA02vIU+MPMfXMGjqM/kYlKj/NBnNXF8IbeHAP1oagO2xH/E8
	 bIGoYKFM+q2epXLnbvpa4c+ZZE9UJ60c9Lqw+2jy4RfIhoA7Yj+I9f1Wj6LpBAhO0O
	 6A49Y4+CeqSew==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pW9w60aDbitA; Fri, 21 Jul 2023 17:19:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 822C34060D;
	Fri, 21 Jul 2023 17:19:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 822C34060D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1CB7F1BF982
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jul 2023 17:19:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E6B5C41F28
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jul 2023 17:19:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E6B5C41F28
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DELKGC7RYKG9 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Jul 2023 17:19:44 +0000 (UTC)
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 89B6341F17
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jul 2023 17:19:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 89B6341F17
X-IronPort-AV: E=McAfee;i="6600,9927,10778"; a="347365470"
X-IronPort-AV: E=Sophos;i="6.01,222,1684825200"; d="scan'208";a="347365470"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2023 10:12:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10778"; a="795024433"
X-IronPort-AV: E=Sophos;i="6.01,222,1684825200"; d="scan'208";a="795024433"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 21 Jul 2023 10:12:56 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 21 Jul 2023 10:12:54 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 21 Jul 2023 10:12:54 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 21 Jul 2023 10:12:54 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 21 Jul 2023 10:12:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S2VpxVxzvXT+LXdPpaB+pkW1qBo7TPoK6elwdu3KyO1VqN5yYeFpc7C4TWG2yT7QelFUZw7r5mRN8C7RjiFhMqbz4KO0eGUjkaQSQ6cIkZDiE6Ol9n+Ew/rF0L3ZDg4T7uDQNlnHyhW5bsX5McMIKL/YC5XayrjeJhTCK/qnu/VB7NXfpqYR3I9wPIltp+xa9NcXGhlMfDTWTfH7qpD7MrAwfvei9BhDH8hZYtUr4M+X19bzTdj9CYeAWUNgFp7FCvboed+nBgpOml168/ldYSunng3rrzGlUrAn/fbnAFpPwErldKtJMm7Sc47C2JHGAhyXSE/jLtc1T6R0Siif+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dh4N47eWE01nHjU4826PN1KN58ib4k0eF6PLgfdEFpU=;
 b=PgRCPLUeoJiqrpu76nXX39iX/AY57i0n7yuCnjs8WCxfrYp+i6N2BqSIr1XVdAfrKiqmC0tigGgXukrlV1uVmZMXTuRChjdHle904SsIhKw7/VRA3WoIbkM3vr/F8aNbNipCSNTpCCuB96Ndy4VA3ME7F7K6TveYapxm3BdwcaC/q19NrvJmTxNFCwjKUreJQ0VxFq9UddIf0k89oDkss+IaFrAa7P7j+kzf5PMCpWCi9tl94usmVelvbgl+7ZRuZ4D32Fwq58L4CoXIVWSuVmhXAHsJQZHHhRD/e/cL6RP2xTC/32MQzp5ZYrAwX+rduFz7nAc0MTte21O6AVptPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by IA1PR11MB6076.namprd11.prod.outlook.com (2603:10b6:208:3d4::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.28; Fri, 21 Jul
 2023 17:12:50 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468%6]) with mapi id 15.20.6609.024; Fri, 21 Jul 2023
 17:12:50 +0000
Message-ID: <4472b54e-79bf-8c1c-485b-88fc8bcb1e00@intel.com>
Date: Fri, 21 Jul 2023 10:12:47 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: "Eason Lin (3383)" <easonl@portwell.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Neftin, Sasha" <sasha.neftin@intel.com>
References: <484b485adfa8430bb1436479d915bb81@APTEXCH01.APT.local>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <484b485adfa8430bb1436479d915bb81@APTEXCH01.APT.local>
X-ClientProxiedBy: MW4PR04CA0193.namprd04.prod.outlook.com
 (2603:10b6:303:86::18) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|IA1PR11MB6076:EE_
X-MS-Office365-Filtering-Correlation-Id: f8925720-d020-4ef4-a831-08db8a0db623
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: eW83H/Q7zT3UFjbCAnRD1wV35FC0qaOl32pIdCfH54ARqIszhnGGFqzg/3YgE5SW1Yflm5W5R/hiKbE8a9RJzS9Y//F9MGDA3lQU8fZwW/MlDsya12MtjFD9KKOJ2KiUw5Yl7qBlg+5lqWZNfNegtnAHvTCmoLjdfm6fjV325TYz+qtbRjKnmQxW1zn9N1MGbQTMNNJAAY2w2ilKm5FdgvHiWIusRv12/89DstfjWAAUaZxOREXnvOefom5uhtGNQBk4fJltBQyKZhfLiJWRdPBXWsaHSiQXi3PgKfkBtj77gpAHYNa4MhAOcOYEaDAElXeuPiCf/DZrHXEedlCwj1u688LBZbCd0Bt2cxoOECmAW7/HLZeS2KUg7OqyoISOO68jGKcvDzZDHaVpwKgkPMe+jLTO250kDuGx/IA+vhLvcXFLuJBVA5KcAzMIT+OFK5kziM3y42CbD+KPxU6+csRDt2DLjMNWfiiidRwGafZnxkvoXnenV8XT2dW1hkdNR0gMVNkKxrfFPo/xEczXhm1Uo/EhsHn7W+wCdwQ5xXzmCMWdXQHR3n250FozaIhmZrvFuir6nP+GJUtvipkjOY/kuEgL3kaiE+mHRECMykaMnQCvRaEkhvnBPpGxQMr7BE27T+5ya94ZiEyH3R2Fcg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(346002)(376002)(366004)(136003)(451199021)(31686004)(478600001)(6666004)(6486002)(6512007)(966005)(110136005)(83380400001)(36756003)(86362001)(31696002)(4744005)(316002)(2906002)(53546011)(186003)(107886003)(26005)(6506007)(38100700002)(6636002)(82960400001)(66556008)(4326008)(41300700001)(8676002)(66476007)(2616005)(8936002)(66946007)(5660300002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Vlg5ckFIRUxzcjdOU2l4WjBteTQ2QkI2Z2FiU0ZyN1N4NXhCRWhxUjI4dnZO?=
 =?utf-8?B?bzZmVURCdDJMNTZQZHlxV2Jja3BKZkFLU3QwK1JKdHRjMy9kZER4dFZaNk5O?=
 =?utf-8?B?azk3VXR1QThlR293bTgxM3RaY3ZqbzlUVk1zQnlWTkRjbGN5RGNLMFRRNmI3?=
 =?utf-8?B?dVJOcEE3TWRTRjFLaTNsQUpnZE9tdUI0bGhHZjcxMG5ka0xKZWk0aC9SVnpI?=
 =?utf-8?B?R2ZSdFJtUjVtcDdtQjlYNnFPbHpPL2N2Y1ZTb083TDF6WlVEVFh4OXRlT2wx?=
 =?utf-8?B?YzZ3YXpicXlpNzBUWUp4YngwWWdEQVdHL243dFNyY2pIVW9mSC93eXJyeFRR?=
 =?utf-8?B?VHVJNmp6SmpORFJtQW1NMFhHQ3RZMzdNT0FpL3Q3cXpmTTJmTjM2Z3VwK2E5?=
 =?utf-8?B?UW9VYjVibE41UFNxQmN4c2NVN2tYMENPa3JBcHhwYnNDVllGTVNGeFhQVkxK?=
 =?utf-8?B?QUlrSVdUVmsyUVFXSDQwZXlNM25qeWlQUHhGak9LNGNjdGFGOG9aNWtjTk5i?=
 =?utf-8?B?bER0SkVMS0RyVUJXNWJXWHozYnlVMWZRTEMzK3daWUQ5djgzWnBxTTN4dTBq?=
 =?utf-8?B?OTEwY2ZveVRGZnREZzl3VXZEbmdZSXFLVEl1eFpGV0t2SzNYeTlEUnVXL1lt?=
 =?utf-8?B?SnZhRjVVWGN0TjlOdWQ2QUE3clRRUVFuOE4zcjhBQW9INEJBc1A3RWZUSURt?=
 =?utf-8?B?U1RCRVhmUzRvTjJmSHhZWERCTUZMZnBveG1OSGtuUE5LUnAyalNocFFTZGd5?=
 =?utf-8?B?NG50NHUwTmZsODRNM0EwUEMrakVjTGZVU0t4S2tXRTVGVldIb2NneGdoMllh?=
 =?utf-8?B?bHhtcm13TU9IWHRSOWZ4dGhybk5VSW5RTjdoUDFqSWovV3hBZ3lsZysvYm5m?=
 =?utf-8?B?cVlmT2ZIL2kzenBTT3I4QnBlUFJvUmFVTTFwaHQwQmhCcXJSWW1lb1BSa2pM?=
 =?utf-8?B?aWE0SzJtWktDZnIzclVXbU0yYjkvZFA1SitsWXh6RURaZW1XR05ESUU3dGxx?=
 =?utf-8?B?c2pqQUkrOGl6TitiWFZ4OWpLRUIxYXFnNzlxTWZhMGRIRmFMb0hOV0lWQ25V?=
 =?utf-8?B?K0g1MGhielcrblVYbDNpSFMvWCtCNml2WjdocVA2YldLMDJGcHlPdG1oWUcz?=
 =?utf-8?B?VlVRajJVREpIVFhpZk5HSk9VNU1aU3hkd2orbWdwWi9qREpLWjJ0OUk3TTlL?=
 =?utf-8?B?Tm5HaFpTV2F3d3RtUEtIb3pFUGtVSlZJVjltMXRaK0hUNUd4ZHQrWXNmTU1Z?=
 =?utf-8?B?ZHNzNVN0Z2NrdnBtQldza0dFSE5pR3I3d004RnVuVVRGcTh2V0ZwUkVFQ2Ur?=
 =?utf-8?B?OGRGVlB6YWVMVzQ1YlJUTmY2YU1aYTRyZ0drOUtidVV6VWF3YXE2UTRmL1FZ?=
 =?utf-8?B?aGNjRXV5QzJFMTJWK1R6NENsVXBiemlzUzhHdlY3OE1xakxmWlR0dm1aSzBl?=
 =?utf-8?B?YUdFa21iQWQ3bjdIdWpSeUUya1dVZVQwU0hlamk3blkrZmt4ajdHdnlVemtF?=
 =?utf-8?B?VEhMMk5pdndnem9FWm1yV3BMNlpVWDdjcjZ6K1VXdTFuRUJNQkdDSU5hc2p6?=
 =?utf-8?B?T2hPeEFCelhxVVN3b2NaY3R2MmNNeE9iY3BuOWhUVEZKRWo0WmtvMWZQSE9K?=
 =?utf-8?B?MXBhN1pvTzlMam90d1NqRkV1OUZDL3hGSTlOZ3IvUEJQaWZvMVBjcVRmR0lD?=
 =?utf-8?B?ZjFVMjZEWVVaSjBlamc2Sk1EeStxMzdyYlliNlRpNjFOaEtqWTdMSk5TOEdB?=
 =?utf-8?B?L2NiYWxjTFdyYmExNTE3QnJmZTFnOE5iMDBkQWE3dEJPd2tPd2g3NmUvRDIx?=
 =?utf-8?B?OHh4SFZwSlhER2Z5T0xsazdSbDE1V2xuejFDYkphVHo4Y1RHT0ljOHB5RmF5?=
 =?utf-8?B?UVE5MFE2Yko5eUpTMW9jRUJUQ0p1T0xpSmlpUEF4b1ppM1k4V1hjbzh6Lzdo?=
 =?utf-8?B?ZG1mN2lUQmVoZHpRM0VaM3NUUVppVmgydkY0dFBQS1BRL3djU3BJVE1tVnY4?=
 =?utf-8?B?UzZLc3BRS0RxSE9GT29nOGk2TElNcnBOaFBEc04yTGF1OG4rWHJYTEVielpr?=
 =?utf-8?B?RlZzdTM3RmRtb1cxLy9KSmNmWEFXNTR6aXkxN3BDRlBMY0ROanRmcFAyRXZX?=
 =?utf-8?B?R2tDVTVXSE8vbDE4ZENLdUVvTDZpbTlGMUNuaHFjUUk1SFBSV2x4VkV3MkZi?=
 =?utf-8?B?Ync9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f8925720-d020-4ef4-a831-08db8a0db623
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jul 2023 17:12:50.1062 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: H0esk+3chIyTqPdEOCnYK/n724yGp2aI9QrWBUEhwFq+HKHjDj1EsMRAzGRg2WEmfNJWnStB6IdDYvU85OQJ81JLzeCjg/1LGbLMNyahBXY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6076
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689959984; x=1721495984;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+S+eewcbs1hmUrcsbk2l2GH8Cv3piVL/qJ2k9JDCRGc=;
 b=m5/1KxapCPoOdac/azTe2OAfMfZX/yvXXBNhTDx4GIF+xIWJJK65jSBQ
 uQLqhZfCrx2tgO5EAxzI5LU7LJi7X4uqWOM4r2ridqQ5tpGcAbWo9t6Zo
 OfE+B40+GW4YMYgK8+FDWryOdNqEBuYWqX+W7zfE3kIjYro+e15WZ6smN
 HkHG9z9tCyvvLuFkFDZkwzd0FDXM5Sj4LHFWlCwcTKpLXfaSvQDKV+mb1
 A5aDzXIEFsrO4pdQvthGzY3Uf/lqs7tzYOox8EV4qjrxKvjgJXrO+eEvn
 KwHGEKRG8UU37UBcPrYNMhsHrDwzelzkJACBEr5mg9WXg1Z6TWfZj1xzX
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=m5/1Kxap
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Ubuntu Kernel 5.4 to support Intel I225
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
Cc: "jesse.brandeburg@intel.com" <jesse.brandeburg@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 7/20/2023 5:07 PM, Eason Lin (3383) wrote:
> Hi Intel Ethernet Driver team,
> 
> Hope this note finds you well. This is Eason, a Technical Project 
> Manager from American Portwell, and here is our website in case you want 
> to refer. https://portwell.com/ <https://portwell.com/>
> 
> We know starting from _Kernel 5.8_ Intel i225 can be supported. However, 
> is it possible that you can make _Kernel 5.4_ to support i225 as well? 
> We have such request from certain customers, so would like to see any 
> possibility.
> 
> Are you able to consider it? If yes, of course we can discuss about term 
> and condition, plus any fee incurred. Thank you so much and any of your 
> response will be appreciated!

Hi Eason,

The Ubuntu kernel is not something under our control. I would advise you 
check with Canonical/Ubuntu about enabling i225 support in their kernel.

Thanks,
Tony

> Best regards,
> 
> Eason
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
