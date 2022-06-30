Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A509356126E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Jun 2022 08:27:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7E03441B3C;
	Thu, 30 Jun 2022 06:27:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7E03441B3C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656570421;
	bh=INX/J4Q7jythRb7Ink9XmAFDFKmNTf7o9iQXVosgM28=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jc5HcM92kmDcqESNu/B3LdaHIgssm6FpjJW49dfpXt2XhbLM27oCp60NfsN9fPoNR
	 VEwqo7wH4sDty8XHjLKT2dkzkxUEl8ds/UGakZVfrQykDdGST6lqMinT4AvhUt0U2O
	 wP8iFST5w3k766EQHLXU1YrtlEfFliU8TiKntoQbnk2oLngo9j14eH6Mn8EAF+pB8H
	 QlgUyEP7TCWM1dCA90wrhAcCbX6MJ9IW62hHtWcU6ucvaCBo+sV6LrOVCnt7Fl+oZe
	 NNf3g7N6SeAJ1/IW0d6qXox/+wGD1VGMTODJK2MbJubFaHcqNwg/OHbJBZgR7YDCvZ
	 wsViHWHONxJeA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hFh9CBIlpggp; Thu, 30 Jun 2022 06:27:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EA7C9417B0;
	Thu, 30 Jun 2022 06:26:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EA7C9417B0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 166841BF3D1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jun 2022 06:26:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D97BA41A6F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jun 2022 06:26:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D97BA41A6F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iysZj2XocBEO for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Jun 2022 06:26:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 95FA8417B0
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 95FA8417B0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jun 2022 06:26:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="343946224"
X-IronPort-AV: E=Sophos;i="5.92,233,1650956400"; d="scan'208";a="343946224"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 23:26:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,233,1650956400"; d="scan'208";a="917916819"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 29 Jun 2022 23:26:52 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 29 Jun 2022 23:26:52 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 29 Jun 2022 23:26:52 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 29 Jun 2022 23:26:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K16c+k8e6PtUeDi+hIJJXNwkGFBc0YMuFqVx3SLv3IhcrdJtKx0VUX8uPgZrvEcUQbJdAxfZzZw2UfSCehHH1BsWrhrJBI2PB55aBfzhRuiqZsGTzDGSzXD806vH86sbHo3h+xJ3GY33B3mg6NCK8iN3e6eTFC0GbXMIZvWL+PKnyRr6O5j0g7zm/27olqPNen9YW4ZR7atM6kWoUlf5rtBIaWFTHn+Nly5R+RFz5T5JmfTbSKi+IoE7fAYsMJQhEboRJkZH373MJqQUbFl62sQV9gCbSMk+vZ6pGllbKCBjgrFaOr2+OeJ+EF3HQsZuHLBeZTEJjjLLhLaK9H6C+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VoHaBZq7PrxnZfomm1JfV+MDus7u+IdomlvAuCuPTSk=;
 b=Jo8b2T5obFiB8Xmc0W5Z9Trncf1YCmX3bSh33vLDpuk/LGj9DyZbuQUziQc/8QQHu1B7ogVyGsXhfJeTTV3CK/tBhrLcYZ8rVfKaWeDr4SuC4/6BmnIaXm9V5z+0IPI0hpPZvNwGK6cQiJwtpYtZUQP6mx04IRv5q3N7GMOQlrJCFJeFjDKqkVDJCiOhrLCZLszDbYcGxbNkH6fbWbfyzFLxw2IJ9PGX/3q8VQv/XkyL8+xxNKOKwwDXNkxP9WT+uTEXj0UfVfvDy5BGZz0LRNpae2q3P9ItJoYimh6Huj7nx6nZObBmrxIo2ISU6EkmSt9/7r5kaN0QIpJS0hrYIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3413.namprd11.prod.outlook.com (2603:10b6:a03:8c::29)
 by CH2PR11MB4246.namprd11.prod.outlook.com (2603:10b6:610:40::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5373.18; Thu, 30 Jun
 2022 06:26:50 +0000
Received: from BYAPR11MB3413.namprd11.prod.outlook.com
 ([fe80::d4ee:f58d:c323:67d8]) by BYAPR11MB3413.namprd11.prod.outlook.com
 ([fe80::d4ee:f58d:c323:67d8%5]) with mapi id 15.20.5373.018; Thu, 30 Jun 2022
 06:26:49 +0000
Message-ID: <d08ea861-6794-7721-7485-95886e2f32f3@intel.com>
Date: Thu, 30 Jun 2022 08:26:44 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.10.0
Content-Language: en-US
To: Zvi Effron <zeffron@riotgames.com>
References: <20220628104354.4195-1-anatolii.gerasymenko@intel.com>
 <CAC1LvL2vO-A2nV7H8-eMabiAf4_PQbsFMwVDpJbW3BLwe_vFOw@mail.gmail.com>
From: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
In-Reply-To: <CAC1LvL2vO-A2nV7H8-eMabiAf4_PQbsFMwVDpJbW3BLwe_vFOw@mail.gmail.com>
X-ClientProxiedBy: AS8PR04CA0042.eurprd04.prod.outlook.com
 (2603:10a6:20b:312::17) To BYAPR11MB3413.namprd11.prod.outlook.com
 (2603:10b6:a03:8c::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b146536a-4e6a-4e56-7d2c-08da5a6183bd
X-MS-TrafficTypeDiagnostic: CH2PR11MB4246:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: X1KOGLrPD9HvjrMQo5PcyZ5RE3motI7RWfL3SWRhLtUkiRQXdWv40YHp3ehagQG+PROHdGR/9OyLa7LzwVaPKOLF+f73N5HshSZVHpQekju9STtdQLF98t3UMZqlx772TE0JI8M/BAxFi7w+wZWK7P0Gu66mFtPeLMtKDr+DstBtsUfZVhg9507bflRNTExRvz/6fMRQdN4+wEus1XjJS/o3vQpoZfJyh0QLjSfnwAto0Yin46woqwTU9gTU3kbz6+bzOf8WQYRT2x0KbEEdBPwlzvETzyOB4UgVx04UsOi2BISsmIu8VjsGq2xoIf4uLKreNaKIM732VcDna7OXJAfJQoujzspSSfM7cdKhFk4OinRk4j3gLtqkO7RorWxKxkLPoKLx9NfuMJLrh+LRSoT4RjnZVrmFcUd8oNK2d5l3HmCCl0RHa3fp7QjRSv0+3uajOGkXG4zN/VBbRaxjNfWBXfJbi721oCGCCmTkUXL6CJJuWXR6MDgyjIxj4xpwIwDM0jnZ7ai7nIGlIeQwmR4xyAkhIO0CqOU436+mXkAwqGD2HfDl5msmtbpOFryuH4PTNFA3Y5zhGQFtUg+5HVEIODNoPE4fsUTKLdtb2KeN9FUyIEgZX4XKbmplrJxmXAPXsUstprWedJ0xca8y8GXPw7phU2uHvp/P+bmW24HrIAC744zUCqjgNYZaFeYo9ASzT/32y+nOq4FpOx8Obi6nMhbMLFrrQfVGxCko4R4vJ6Nm97RtmIKvNUFWA5/7WM0VZ/O46JwnImWQRn4qtBKYE4/STRKxSZMrbdqCJ4GrmE9Sg3INBAjz/IBo2WsaTIV6WNOlzkI+6WqtX7LykMtMHOn5gNOGW8OW9/ufJ37VpnvoCYpRfKHnGsc5HmBqMv0EvwFvBI05X+SNCkfICQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3413.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(39860400002)(376002)(366004)(396003)(136003)(8676002)(4326008)(66476007)(26005)(53546011)(8936002)(66556008)(107886003)(6512007)(82960400001)(66946007)(38100700002)(5660300002)(6916009)(186003)(54906003)(31696002)(316002)(83380400001)(86362001)(2616005)(36756003)(41300700001)(31686004)(44832011)(2906002)(6486002)(966005)(6506007)(478600001)(6666004)(168613001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZU0xVTRRSGxhdVZwWjhxa2plTWU3aFN3dFRHRE1IOGRRZWhCTlRRYUNSOHdv?=
 =?utf-8?B?TTQzSnN3b1VJUmp0UXdxanF1UG9RdXZoMzdjd0tSc3RYRk1zZVVhamM5OXFr?=
 =?utf-8?B?K1ZvOVRNMHNCa0hJb3hJLy9HblZ2cTh1WktTYjhKTWEwbXpiWHlXMTBLOHk0?=
 =?utf-8?B?bDJSRFBMWUhpS0gwUGJ5b0VoYTdSWnk2LzFFRS9uM1BSYjdHM1ArTCs0S1BR?=
 =?utf-8?B?MmRrYVJhdGdGUU5aNzc1N1hJYkY1dW5DbjlZbThrODFNMmpyZjBrNVlYWW5T?=
 =?utf-8?B?Z1QyYis0anNtcUtJVFRvdjRDSXF2RzFweW9tWU1hdVZmVVhVNVhQS2xhMUNZ?=
 =?utf-8?B?NlpQN2x4b1pDMURvUlJmNmY2blNBNmx6NWFrQ0d4MDlrd1lQRHg2MWdGbjkw?=
 =?utf-8?B?c3E3R2w3VGFudkc5VVpxU0w1ekVoS05NYVNvRE9lQUlLWTVSN05jUjJPb0ZR?=
 =?utf-8?B?VGl4aDVmYzVNVzBqdllBcWFxUHBMM3lOWC9KT1dHckZGMnZpbFp1MENJSHUv?=
 =?utf-8?B?dDc3RHFYTzFlR0RhY2VsUDdzV0JYd2ZEaTIweEtKTHE4M1NOenZUbmdtRW10?=
 =?utf-8?B?c0pNY1lLRXFocllXMEpld3EyK3BNeTRmK1JLZVovRFlVVzBWNitCc05CdURH?=
 =?utf-8?B?SFVSVTRzaUp3UnkyTFFvMkVndm9FRDZVZk1yVTNwZXlnQWU1ZlVqMndHT3ZG?=
 =?utf-8?B?bUZ6S2FEYVlFUUhkVHA1aDBHSHU4WVFqWjF4NWM0UWpWRElmRWl2L2FnOUtQ?=
 =?utf-8?B?SjFqZTJFSlJNUGxWdkZKaDFYZFRiMlBhaDVyeVdiSElUY1JJdG40Szh5SFBX?=
 =?utf-8?B?ZnFtWW5kZmdBUHd6bWJnWlBhelhoT3RKb0hydHo1M1lkbHNuQ0paclFuSklp?=
 =?utf-8?B?U1dISzFjVmVtRE5XTXpPTjcwWnZoTVBuUjUrVmdzL0VLeUpRcFFoSTEvQzFW?=
 =?utf-8?B?ZGdBcUY2UzBnRzBkVTk3TmNrcUdzY2dFZUU4aVdqMkFpQ21JNWswZzBaMENN?=
 =?utf-8?B?ZEZ4QW8wbUR0MExibkpPbnFxK3QwbXlaU0dTdGVLV3dXcXZlU2RXb1RnWnZN?=
 =?utf-8?B?eS9hQitSWlpzaUtCTzlTeTB3R09PbjNMZU5sKzNNMW54OVArN2FHL3diVnk4?=
 =?utf-8?B?T2xBV2YzTzJRQk43cFZmNENCRWlWejhWL3pZQkRQMGtTK0NsVnJMdUpHT2Q1?=
 =?utf-8?B?U0x2VzFyd3pPa2hDZEJHaFZjK3JFb0poTFYvaTJ3MldYbHNwZElRditBcjZN?=
 =?utf-8?B?Y3lSRGlnLzNPdkpjRVgzbTV3NERtVHZuLzRxSDhjbnV4THNMNzNVaVpjVnNj?=
 =?utf-8?B?RitmN1dJSExweTdlUWNpL05jNUlWZzlDOVRDUTlFVUJFT0NabHpSZHJlQ2dm?=
 =?utf-8?B?WjA1OTNkNVAvZGQyQ2swa1BETnlidFJ4eTQzWTByanhGWmpQNjJSUVpuMks4?=
 =?utf-8?B?bGRzTnlqZnMrcVgzREpaSGhRQzB0NFNLRk55K2xNaWt5YnVMMk93NCtseHVa?=
 =?utf-8?B?TUdnMThIMGxtZUhYRXJwekRwUXV5c0RzZElZOExmaDFBRHBRQXZ1MDN6ZWtn?=
 =?utf-8?B?VmI5dm5WMzMzNGZjNittUEVqSXhmN2RPc21zd0tRdHBsYm5qaE1ZTmhiRUtP?=
 =?utf-8?B?UmRtYTJYbk5sdG5RN3FhSTNOZHdLTXFtZStCdzR2OUk5OGJ0M0xOMWwwMGJI?=
 =?utf-8?B?MlRZOHZReUlhVDVpUllYUmJNWFMwbmNFTytESUp0SFc1dGtPQzFXYm9admxr?=
 =?utf-8?B?STRYOFRKRWRzR08rTWNDeGRUTWdMMUdYbXBGbEhHMDF4TmJLUlFUeTdkbWlN?=
 =?utf-8?B?dFZDVkM1dmd2NHV2RFNDK2RxUnRsL3JEYUpYSitLT3Z0TFpiTGdEdnF6amxt?=
 =?utf-8?B?d05MTnM4akdwQmRySUczTTNXR1lEblg2YmJLRHY3MGdXVG1CZ2NoSW5hYits?=
 =?utf-8?B?cEN5bWVCMFRvV0p1N1Yyc0crcSszWG96VU41Q0NoMElnQ29PU0ZQTFcvTHll?=
 =?utf-8?B?WVFwMU5kalYxZ3laMkpQU2ZhMlphT1lHRkdIRzlTajFMdFQwYzF0TEhKazBR?=
 =?utf-8?B?WXlRRXYyU3dEYTdERnQ0cHppRXpNWU5mSEM4ZTVQRlVjaVNJMUduNFhPMlZE?=
 =?utf-8?B?ejg5dEkyOXRackVYTEN4K2VaSXhBRUplZ1BlckZCdVB3TXE1U0ZKWWl1UUpa?=
 =?utf-8?Q?mBAsKyypKvH0OT/EmQRK5vs=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b146536a-4e6a-4e56-7d2c-08da5a6183bd
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3413.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jun 2022 06:26:49.7563 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GiDnOusklJc94GVtwQ8ZQz48aLSdEqTf3sZzvSJtvIfCSgOaY3GXmuA5/YPPQqATtOAD+pKpX4i5no1xt8rXAQmyVRZ8cejeed5HIxBzUgs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4246
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656570413; x=1688106413;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sb5piFvMW2OpKcr71ib7Bto6MpNN995KEDNaLmNbW+E=;
 b=L7D2bgN4XyjDYqm56noESY/vTA613JIBGDQwsMPNZiUnBN9Vpm9Puppt
 yPW0Dbok2TipjLu15y6xgPHFBS0eiJI7LzKLTCXkXrgp6R8mQv1UVUz/0
 3OvvbJtgtXjYj7cUfkZyoVTfiku/eKaFcceJqLcvKDRV+NX9nEsfxnT1V
 XxPV4G8a8hFjuCyYIN4viRU/b3XrO/cH1EJTFvspYSIzn2pyfeeDY2mQc
 CwWOY5P8R0ZRZq90QCStPCusGp0t5PDlAJzhtV+YmnaqvkbEQ6GwFVjY8
 33ZeQuMhMpc0DpI+YlDpZFSERyVuXfVY94udVa61gs39Jcfum8P1VyXAl
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L7D2bgN4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/2] ice: FCS/CRC stripping
 control
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
Cc: intel-wired-lan@lists.osuosl.org,
 Jesper Dangaard Brouer <brouer@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 28.06.2022 22:36, Zvi Effron wrote:
> On Tue, Jun 28, 2022 at 3:45 AM Anatolii Gerasymenko
> <anatolii.gerasymenko@intel.com> wrote:
>>
>> Implement possibility to change FCS/CRC stripping feature using
>> ethtool command.
>>
>> Having FCS/CRC could be useful for:
>> - network sniffers to inspect FCS/CRC correctness
>> - for benchmarking use cases
>> - XDP programs
>>
> 
> Have you thought of exposing this through the XDP hints paradigm that Jesper
> is working on? That could make it available to XDP programs that want it
> without breaking those that assume they won't have it, allowing both programs
> to coexist on the same machine?
> 

No, this hasn't been considered, thank you for the idea.

> 
>> Anatolii Gerasymenko (1):
>> ice: Implement FCS/CRC and VLAN stripping co-existence policy
>>
>> Jesse Brandeburg (1):
>> ice: Implement control of FCS/CRC stripping
>>
>> drivers/net/ethernet/intel/ice/ice.h | 1 +
>> drivers/net/ethernet/intel/ice/ice_base.c | 2 +-
>> drivers/net/ethernet/intel/ice/ice_ethtool.c | 5 +-
>> drivers/net/ethernet/intel/ice/ice_lib.c | 21 ++++++
>> drivers/net/ethernet/intel/ice/ice_lib.h | 2 +
>> drivers/net/ethernet/intel/ice/ice_main.c | 73 ++++++++++++++++++--
>> drivers/net/ethernet/intel/ice/ice_txrx.h | 3 +-
>> 7 files changed, 96 insertions(+), 11 deletions(-)
>>
>> --
>> 2.25.1
>>
>> _______________________________________________
>> Intel-wired-lan mailing list
>> Intel-wired-lan@osuosl.org
>> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
