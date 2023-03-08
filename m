Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BA0016B1481
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Mar 2023 22:52:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 46F4681FDE;
	Wed,  8 Mar 2023 21:52:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 46F4681FDE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678312337;
	bh=VVaejHx1dIPWn8uM+TdZsqFS9BwlhKknwGXTuRpYVp8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4lid0Y0lUcdwxLrw0Vwx07Npr0dFWUd7wtZn/uYetOKP+/A5vS81Mz4ij39GSzAc1
	 6xMWvuHwXhgQhHSLm3gVB+a8Duz4yuADSPhahKwvapSC7OTRTBGY+0gpUiooPk42V4
	 8473eTEsgg7WWy3X/fkEW6iiDg3gZqtj4twlopJDE9U4NRbNp9DMSTpQQQ7MSkIkiG
	 WXgQzSt5wjcr+eAAF2twLtJox5+vxzREZMMbvcLEufKAKPJlCG4VFYlK4Snf3zcduV
	 aCupVKGljtykrIc1xm1OXSc66A/KDp9c8eIQZgpUsuhVxYyGLcSsYD9Pt3a/H4HYVl
	 MIirn0Ltv8TLA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iX8kO8NXvCdk; Wed,  8 Mar 2023 21:52:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2F2EC81FD4;
	Wed,  8 Mar 2023 21:52:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2F2EC81FD4
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 13F971BF287
 for <intel-wired-lan@osuosl.org>; Wed,  8 Mar 2023 21:52:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DEF0641867
 for <intel-wired-lan@osuosl.org>; Wed,  8 Mar 2023 21:52:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DEF0641867
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id snKr0pN0qxPY for <intel-wired-lan@osuosl.org>;
 Wed,  8 Mar 2023 21:52:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B36E341862
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B36E341862
 for <intel-wired-lan@osuosl.org>; Wed,  8 Mar 2023 21:52:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="398863539"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="398863539"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 13:52:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="741274072"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="741274072"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 08 Mar 2023 13:52:08 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 8 Mar 2023 13:52:07 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 8 Mar 2023 13:52:07 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 8 Mar 2023 13:52:07 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 8 Mar 2023 13:52:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n4TJRwnw+/KqBdkk8MSgw2F9bmUTLECAeFG8hO+hMAH1+mBJiMCsNbn3Iw25hbmjqJzM6K7E9HkN2ngloPjm9P0n1N1vro4FwgvMAIRqHJQp+c1ofr124nQRi4VCwHGC4wYHTc6zm4UJy7t0mjC0oaR0yF1lVgh7MiqwaBXWAZD2eXBJ7UwgeGLjcODLRiw6yrtvsGV5V0PZzsnr5uz/LqrjVOrAp9EwtCiX8l8bpnWPMW7Y0IRqnCHY6IxWfBNy07BRvRBtQDE4TulD3uNXkSxLMX4+lEp/cjdCl6wBiBhms9gUnR+8dWGJLQxtw4UPQQvljIhRnsYveuk5LEQHqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p2L8t5QaW7tRExi01bt5Jx36Qe3DLD/nQfnShAMWIRg=;
 b=QsnT4f8HYiaTJ674Nfue+tqNZAH108fbLiZBhh7F/9LY1M73RJNHJlOEs01sBKHPKcHtAmjiJV18/jpjY4lprW9VujJqRypqRG8qBMIRmPuSZ1KfD6eDdJxqcdb7Li8yzOA3fTsuYSXOY+2Urk2IGt53fPn3s8qmDR6m0xvWtLgcoWuu0E8Ntty5FRmDnRXcI19KsiUZAP/HgTYXiGpuQPtAEXngwDz/ASaZN8l4+PdvOB6tebB14ykjUvgXKzzEjpLM5FlgEu9BWGVP87TesBEdEzIiGd+xuVKBcCcQQoWYuI/ch12gY8L4y7ae+O8W2C+0cUZ44T+CI1RnXNSHhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH8PR11MB7120.namprd11.prod.outlook.com (2603:10b6:510:214::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.17; Wed, 8 Mar
 2023 21:52:05 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::a54:899:975c:5b65]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::a54:899:975c:5b65%7]) with mapi id 15.20.6156.017; Wed, 8 Mar 2023
 21:52:04 +0000
Message-ID: <e129c0dc-d6d9-9b56-da0d-69d3d8764d30@intel.com>
Date: Wed, 8 Mar 2023 13:52:01 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To: <intel-wired-lan@osuosl.org>
References: <20230308103651.794904-1-andrii.staikov@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20230308103651.794904-1-andrii.staikov@intel.com>
X-ClientProxiedBy: SJ0PR03CA0125.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::10) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|PH8PR11MB7120:EE_
X-MS-Office365-Filtering-Correlation-Id: 6c4d17ae-f8f2-4640-7435-08db201f5a8a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NXnSRwU1O41iRr/9T19H7RaxR2wa2YhFYAJ7tu0dpJl2nI8Ey4OiHdUhQR3LkoH6oJ9Iea9cUBHF1OWJIOAVcRT2QmVMpRiw/jqtX7IFpeAKYlrkInDOxBW3+BhdwjbkVxxlJ8Mm/HSRN1vw4wYmyD+vsoUTp+7EcLhGrSj87SHJLTpflVMlLmlbO1eUxuem1XDZe9dD9BtpDIXmFl2hg+AhiL+T8NkO0TD9+cTw5qtfz6TzwzeouP+nflqqfgfGees6CNgYMVJ1E/oj38BC13byLoqTLY21HG+rINXbG3aIZjxbhU+Tw6wEkjcjPaRgRWFoEFK1iCzX34iH8TMZOlY8bmjpiGhY2ArD4NKHoWhzWvAIguEka/7gO4lDP5A3HRhtpZ+4bfo25iKQ26tZZkuWsatqJMNFocg/aYYLh4W0bdb4Qi09ct2hBZyO1skCpV1AkkJ7d6rEkHDUX47iLPfsjYPyJV+48g616yAHzWN6pFszvpqT+Z7hVDwK+dr0Zdgh6zTd9/JoImjun/yJxLJy8WHaXq1lph6PnwjvckHkQ6AYBKCzEy2zfrsIB2Yp+SfL60VHISiSIVt/ONpdxbVB0asRgks4F2R6OXZKjmFr82JRwh+wvvoZPzRsn2De0l82NYGPxBe39cGVy8U0bO5HS2E9srxl+wo3ma3d9fMDGkg7tPPBTbWWOTnFHiygofFJBiTaVUMLEhjNNs5gWOB02+GqicTlfcnLbdVtLVU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(39860400002)(396003)(346002)(366004)(376002)(451199018)(31686004)(6666004)(82960400001)(83380400001)(36756003)(26005)(316002)(38100700002)(478600001)(6486002)(2616005)(186003)(6512007)(6506007)(53546011)(41300700001)(5660300002)(66946007)(66556008)(66476007)(31696002)(2906002)(6916009)(86362001)(8936002)(8676002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bVBKRnlab05vOWc2dTJSNHFEY3pXMDhSNDlESDVLbnNnR005M05PWktPbTlh?=
 =?utf-8?B?OE5tNmw1aWkwem9qOUhqUUFTZEdhSWFmYml6TWF6K3Jndm9vQy9qMEIzcHdO?=
 =?utf-8?B?cm1LanRSMzJyMGMvMjAzODJ4Y043WTFmTjlYRng0YUhUQldYNFV3YzlRamoy?=
 =?utf-8?B?RGJaNG5tMTk0clB4TnJVY1FuSTJvRTlOa1YxTTBBUjJqMEZHZUZnTFU3M0R2?=
 =?utf-8?B?Mm8wMDR0NmtsV20vL09mYUo4YXkvSFBhTnNnYUhoUTZJZkl5S3pUb0pTUjJO?=
 =?utf-8?B?NVFxSitIQ0krVGk0c2V4NkRWcjc0RjQxQi9KTGlmT0VnL3pqOHVUaWQ3VXZL?=
 =?utf-8?B?cVFKakhySWM4NlkyNjBzOGhtU21hWTQwNDZxTk80L2tvai9Oa0JmQWN6RVBK?=
 =?utf-8?B?aDdtdzZ0ZTNkQ1huRmt3b3Nsenp2U0VRbGFwL0xXcDdWaHFMMTNjRTN2MWFV?=
 =?utf-8?B?OXZ2UFlJM2UxendFUFZCT2psWW5WejhpWnNsaHlJdFgxSXNOcUNwTEhMZmg2?=
 =?utf-8?B?SGVDaUxvbEk0QVBzYzIraFliSEJmZmlxUkczKzRYYVNIN0xVdEk3Wk1BTHVl?=
 =?utf-8?B?M1BMSDRKT1pwTFAyNzZnbzN0RDNUdWNCTFNMUUR3cllFd09hZ2FHSTNzMlFh?=
 =?utf-8?B?ajRvczVVeUNGZUwzVWpKbnd1TlFxcGlJL0k1bUFQaHZkWXNCU3YydDdmNHU1?=
 =?utf-8?B?VWhTZGdSYysyellZN0RXeUloeDdqUUxpMmRDNkd0SncxUU5GZnRtNW5JbEpK?=
 =?utf-8?B?ZzJ0TWZRaXhSbGhHZUVwR1BtbUJUL2liN2FVL0t6MlZSbXh2NFhKTkFwM0h0?=
 =?utf-8?B?dFArNlNCNkt3Ui8zcEtLd1ErZEdGNmZPYjBzQUJheklzWTdVVmZjaFlDNEJj?=
 =?utf-8?B?N0IxblpFZ3pTQjU5ejc0cndWYlZHck96N3plVmp1YWp0d2xodE1VRkNaS0J2?=
 =?utf-8?B?QXM3ZkNGV0ltR2wyU0tSQnhCZnk2RTZZcnh1N3ljQzlWSEVFaFhHUGNUdXE0?=
 =?utf-8?B?WGs5ZDBMYnIrdWFtc0taZmpLcGFaV3lFVkw1OUVHVWhyRzRrMjAwald0dHZI?=
 =?utf-8?B?TU5ob05DNGJ5ZmpxWncvdnY5ZUdKWGc1WXZrNHArZ3lGdGJFbHQ1dmROTSti?=
 =?utf-8?B?S1MvL2thK1h0K0oxdDB0bHlHN0l3ZERRUTg0OXVFQzBXdzVSbWxHK1duaTMr?=
 =?utf-8?B?ZEJJaHBpcXZjQWhWWnErQ1lVOFR1MWx6MXNlalJDWklPV3pyaU5zdWFxU1lr?=
 =?utf-8?B?SEoxRGxvUDZtT0FyRHB6dWF3NmZ5MDlsTFFhODhiUXdneXRIVEpDS2xSVGdC?=
 =?utf-8?B?MkV6dzhpUTNhS0FhQU1USkozL29vWitBMXNrMkVJQzBFYk5rTzgzOEI0REVx?=
 =?utf-8?B?dm01eE5yQlB3bG9VeHJpcTU3dW1hRWhRL0R3RkpDeW9sdU1rSGJsZGMwMjRV?=
 =?utf-8?B?cHF3MnpsRGdzWDhLV3RJUjF2dC8ycTFEUTFqVUYyQm54TXlrWjNIL2VtYXYw?=
 =?utf-8?B?VzUzLzIwZ2hENzZESmtZTlpkN2RzU1dxeTJwVmxNajUrMnpzSHNGRVJEYU8y?=
 =?utf-8?B?QUtwQ0ttbm5FQ3haS1RPZXlFczZlYkFZdFZMYmZFNjhvNjZnVU45dUJBME9L?=
 =?utf-8?B?Zm5CVlVvQkRVQzhxT294SXp5RkdYcDZtN21VNUVxVjV0Skx1Nlptb2RTbitH?=
 =?utf-8?B?ekxocW1mR0RzQWxUc3A0Z0liUnArdUNXU3lETVNLd3RuOG9ZSUNGRjZvTVkr?=
 =?utf-8?B?aWFKZklKOFZxcTZmZ2dMQVZpRkgrMFFkK29lRFNSU3dxQmhkUGxxSk0wV2Zq?=
 =?utf-8?B?OExZTllRQ29sTU9wZHFoVVFiL0xQRC9sRkVlVkJvNGIwQkFZVUNUdGZSa0JJ?=
 =?utf-8?B?cXd0TlBTTitHbk5jR3l6cnlmNWIyMHUxK20xTk1NK0VlM3NsUXFBRDlFUnhR?=
 =?utf-8?B?WWpKZnR1RWVCUVRxSFczKy9DaXB3Q0s1OG85VDE3bjlVWWRhcnphRC9LUEUz?=
 =?utf-8?B?N3FkeDF1amErdW5rdVdBSmdGMUlENHMxZjJ1RmlOSXc1MnBSOFNsWC9xYjZY?=
 =?utf-8?B?N3hpZGxWVHhZV1J2K3VBazh6Sm16TTBLRFcrcS9wOUFnckE4NDd3S1dJRkFo?=
 =?utf-8?B?aVkrQlB3enFGV2k2eE55WHF5U2RvekUycUtSdTF6ejQyU0pGUjZSc3lwZkRC?=
 =?utf-8?B?Y3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c4d17ae-f8f2-4640-7435-08db201f5a8a
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Mar 2023 21:52:04.8635 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AmSQQLub6oU5ppHbYrH3RRjoEIOb+IN/zuM+hefQwX005MXM9G4BhzKvdr6h86L7Rb2fOPh/svdchuKcBeqTUa4X1BZcBM6gRGSfZYskaZ4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7120
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678312329; x=1709848329;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ALkP+MHZkAQ8CLJhMom2z6Ur8kCcLzB1vAUmJ6oWyWw=;
 b=fyr0soQ6CrOCl1nEzu+v07oSew6oNV623UQshjh6nzx1MtQIHcemUiKN
 Gfg+/YBTlNWv7inaHrgkN8FbblHK3uLz7TlFRrrSyGZjx3CWSahCoeJm1
 Ih4QvQmN/nPrFEzisAJGFiQB8697bglwP1S+JSLcQJUjS6Q/rBuQzb7hg
 k2OLXTR7WZxUoYaW0hRHmbzs84yGUslOJiNE2+FsRFbdL3tZRy2Uah1PP
 E4F0kc/VI8PoJU2c8OsKEXtSgppqY4WkOa92ciGmeEdzQxe1ozL260q3a
 DxU8GOeFp1+rc5yVr78V1GBg1aOZw+Z9putomh5arOlW7ypnpxUYD8Hg8
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fyr0soQ6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] igb: refactor
 igb_ptp_adjfine_82580 to use diff_by_scaled_ppm
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



On 3/8/2023 2:36 AM, Andrii Staikov wrote:
> Driver's .adjfine interface functions use adjust_by_scaled_ppm and
> diff_by_scaled_ppm introduced in commit 1060707e3809
> ("ptp: introduce helpers to adjust by scaled parts per million")
> to calculate the required adjustment in a concise manner,
> but not igb_ptp_adjfine_82580.
> Fix it by introducing IGB_82580_BASE_PERIODand changing function logic
> to use diff_by_scaled_ppm.
> 
> Fixes: 1060707e3809 ("ptp: introduce helpers to adjust by scaled parts per million")
> Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>

Thanks for this. I missed this function when doing the refactor above.
This change looks correct to me.

I'm not sure this would qualify as a bug fix sent to net, but:

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

> ---
> v2: Changing target to net-queue and reflowing commit message
> to fit 75 characters per line.

The subject still says this targets net-next, but I think that's fine.

> ---
>  drivers/net/ethernet/intel/igb/igb_ptp.c | 11 +++--------
>  1 file changed, 3 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_ptp.c b/drivers/net/ethernet/intel/igb/igb_ptp.c
> index 6f471b91f562..405886ee5261 100644
> --- a/drivers/net/ethernet/intel/igb/igb_ptp.c
> +++ b/drivers/net/ethernet/intel/igb/igb_ptp.c
> @@ -67,6 +67,7 @@
>  #define INCVALUE_82576_MASK		GENMASK(E1000_TIMINCA_16NS_SHIFT - 1, 0)
>  #define INCVALUE_82576			(16u << IGB_82576_TSYNC_SHIFT)
>  #define IGB_NBITS_82580			40
> +#define IGB_82580_BASE_PERIOD		0x800000000
>  
>  static void igb_ptp_tx_hwtstamp(struct igb_adapter *adapter);
>  static void igb_ptp_sdp_init(struct igb_adapter *adapter);
> @@ -209,17 +210,11 @@ static int igb_ptp_adjfine_82580(struct ptp_clock_info *ptp, long scaled_ppm)
>  	struct igb_adapter *igb = container_of(ptp, struct igb_adapter,
>  					       ptp_caps);
>  	struct e1000_hw *hw = &igb->hw;
> -	int neg_adj = 0;
> +	bool neg_adj;
>  	u64 rate;
>  	u32 inca;
>  
> -	if (scaled_ppm < 0) {
> -		neg_adj = 1;
> -		scaled_ppm = -scaled_ppm;
> -	}
> -	rate = scaled_ppm;
> -	rate <<= 13;
> -	rate = div_u64(rate, 15625);
> +	neg_adj = diff_by_scaled_ppm(IGB_82580_BASE_PERIOD, scaled_ppm, &rate);
>  
>  	inca = rate & INCVALUE_MASK;
>  	if (neg_adj)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
