Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E527C41F5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Oct 2023 23:00:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DD4D8812DA;
	Tue, 10 Oct 2023 21:00:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DD4D8812DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696971611;
	bh=vNrE0OkoyvkQqC5U8pvYZsvCsBcACUrqI04W8WQJas4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZNCLTIQT3xKvAjq+EWarvoaS9zy8zCHVg9WY+t1KZdYrSzsjO5jI4beR/h6JcHvWW
	 L/2wornlODqP5zlEADxMSpmAg7apLEA4hZ5l8/3dRVhxESrgb6cLRKfSaLBvdpeq3e
	 DLs5bIQxFjhpflLYm1kEG4Hn7tlAiS5v/0/39FpQ3N2kmfn0/yXZRBxfKxIUGPDscR
	 UbKieYUPOF/MbOM9Eee16r/h575wo6+D4+LVheIBlLMnAYUhI2mGYlbHcp58fdTUTq
	 WYzaxvcfguwFmbkn6hxkU3QKfBWUq9rvBPvVV5IkbD33KnzUJQIh/cW61xHFPtFct9
	 1NXx2NhbB6tDw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TmFpIVWNT4F2; Tue, 10 Oct 2023 21:00:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6CE2481299;
	Tue, 10 Oct 2023 21:00:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6CE2481299
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1A0871BF389
 for <intel-wired-lan@osuosl.org>; Tue, 10 Oct 2023 21:00:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F2CD160BFD
 for <intel-wired-lan@osuosl.org>; Tue, 10 Oct 2023 21:00:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F2CD160BFD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HjMKdRq_R_BT for <intel-wired-lan@osuosl.org>;
 Tue, 10 Oct 2023 21:00:04 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 340B060ACD
 for <intel-wired-lan@osuosl.org>; Tue, 10 Oct 2023 21:00:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 340B060ACD
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="383374542"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="383374542"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 13:59:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="703441994"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="703441994"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Oct 2023 13:59:56 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 13:59:55 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 13:59:55 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 10 Oct 2023 13:59:55 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 10 Oct 2023 13:59:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mb3MCNMoDU04lMQE4BN71muGVdYkA1xs5Ib5Op6ZwUkb2yPuUUiZHenm50M908rH1RGowlWmQY2eWwBIO2FKQkPoTJszbwp2WazWV5Uk0A2qHQDGe3rpez6r55y22Q+ImFd1/aTTHHaVqvQmRb+adiR+n/dBxYLj1Y6DOzMtNxRwKjgymERm9QtSMlmYJ3TZwJFHqFVleyABGR9+YEOUfwJ7qX9qsnaoSuiFnUhNl1+AFZEX4gjFhpWC9UFIs0IR43iprKZygIp1yFr9pYnez9JKUNUO/sm5XZpDfn/x63GyfV3caHvl+oMuIwhGhtlCEAYcQlv61dObRYw5uK2Qbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PFFihMmR8pbOjkeXXiOc5JqlqRW2AumDUuL5dimmON0=;
 b=HhGGc2r9YLNwu7HPiPHwrn94py7GrsGPHB29AiA0yeVfUvtdvv3AYk+JcaziYiytOqQc42q67ZjqvJEklWETJ2XRDZLK0vnkiOX/E5wFeqlPv3Q+2ULj6OItfxOe7XrfV6B7wcgM4Qdiqj3u+9n6+qPeBfMxJ8k0oThTcJxS90z1uCcqJvY45khhPSMkkd4npdrVuaoGe1NnqpT+BrCeG/vl46R6k16aKp9qx2LrT7Vc+g5yD6h7tdZrSmzSD6igssZ3023Hf0whY81zs61M9NZTvH0fXW7SRXPKLAfR9Cpa4SeU1nQZc9pfupbDSbQMzHdh+eaHBBUXFpt90A7n4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH7PR11MB7480.namprd11.prod.outlook.com (2603:10b6:510:268::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.37; Tue, 10 Oct
 2023 20:59:52 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9654:610d:227a:104f]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9654:610d:227a:104f%5]) with mapi id 15.20.6863.032; Tue, 10 Oct 2023
 20:59:52 +0000
Message-ID: <e947e8b7-6591-2d56-f46c-52652cb6994e@intel.com>
Date: Tue, 10 Oct 2023 13:59:51 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <20231005091517.4630-1-konrad.knitter@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20231005091517.4630-1-konrad.knitter@intel.com>
X-ClientProxiedBy: MW4PR03CA0212.namprd03.prod.outlook.com
 (2603:10b6:303:b9::7) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|PH7PR11MB7480:EE_
X-MS-Office365-Filtering-Correlation-Id: a2feb384-94ba-491b-50f4-08dbc9d3d961
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VTgyjRD66UUnapPjQyNZLK0+dkX2SEb+iWN11NqMkwKteGOvDl1YBTDmnBiMlPI1cq14qH7bW92ErkVIg8b8/fcGsNEY1EHB5RxHajYY8B2UnM1obKboVwUFss0Jgzvwr7mpGA6ioM0DBgqM6yaRIexjRtB2CullLNsKTNwEoDmptXEjIcULYQD16AfKwQWHL9at/oia4xFS3SIf7akCUiY038EiVqVvgehOx6sReCDXvSxVFCrjrkISAfXe9A4ky9tpyv2/vaV+0arpfWwOrKyCLopNqdD3w8omBSE9VnZA4qPIy+6wKBq5C9JPX8fcRwZDZp7uME4m0kBBeoOs3AQo96CFgts7EseKj1wR1tc5s0eLbwldbGiWdmU3jDTx35qNcqbyWMaIzSLEWWYQ67GPSR7fuX5zwB+VlrrLSYV0p48ycx6vBKivfzv/eqkErB7GhENqp5RG56sJ9xaZLXsITutBgGxPMAB86XWjG0Ekd+Ek7zdVbznSoz8XR8KA5o2ES6MxJuHeOta4yLQXag0V7jhL3z3NB+8az7owOCmufHARbY10FgZBv8FFznxZIHutzR5VS7IAYIMqohTUHk8KAzo/ZA4ZjkVhtcdiCkWONPZZtPlskcfJE0gP7NKfgHRO8ezEufLW7ehiOGbhyQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(396003)(376002)(346002)(366004)(230922051799003)(186009)(64100799003)(1800799009)(451199024)(31696002)(6512007)(53546011)(6506007)(478600001)(2616005)(6486002)(26005)(83380400001)(2906002)(66476007)(5660300002)(316002)(66946007)(66556008)(6916009)(41300700001)(8936002)(8676002)(82960400001)(36756003)(86362001)(38100700002)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Si9SVmw5YXpvREJhWTJtemZ4LzF2SmtseUJQVk5IMDZWTC9ocFJTcFllcVJV?=
 =?utf-8?B?em42NXVDOXg5c3UxT1BPNUhQeStDZm9QbmY4RXhhT01UZVJuMGxCdXdyTEQ5?=
 =?utf-8?B?YzdGWjRLSFU3WWlOdjRyVkEwQ3JJMWRHRzdBZWprSWNVa1FWZ210eEZjcFFr?=
 =?utf-8?B?N0k2SmJYUGhtVGJKa05sYjJnOHFxOFRLL1B5a2xTWVlMOXk3VjZ1OGdyQUxM?=
 =?utf-8?B?dXRXVmJGUWFDMHY3cFA3ZFpUNFYzY0d0Ty92V2M0ZjdkNUMybml0WUxvOCtP?=
 =?utf-8?B?T1dFbWQ3WjM4VXBTVHlKYWdRd0FVTmxZdXpFMWdBMy90Zk9ZQ1VXZlB2Tnkx?=
 =?utf-8?B?UEtqQUovN3N6bzJOK3pqaWpjQnB0a1M0WElBdzlvcnZKVTB4L3FycTlIdkpr?=
 =?utf-8?B?ZCtDN2x1VWxSL0phTUwvMXhTSnVVN0g0L3cwdk82ZXFmWDNwdFhsVHh3SVZr?=
 =?utf-8?B?Ui9NRk1TWGtJcUZVRlBnV1MvM0ZrbytTRFZwdE9Va0tNUnhPR0o5TURBdW0z?=
 =?utf-8?B?cTBiZjh1VjA3YlczQzNmWHozbmp6WWtmRVp5MTZVWHhzTEt1c3Q0YmpGRHA5?=
 =?utf-8?B?UEFvekxyckIyTTBpWjZmR2IzaUN4QlJHVCtHcVVTN1hpZDdVdnpaS01mMlRC?=
 =?utf-8?B?UzhZZ1dTWUZYeDJyOTJ3M0pmRjNQZXB3MjVQeTNsM3FQS0QxR3VGa1Z6SHFj?=
 =?utf-8?B?RnozOE5NUy9sQ0FaUWJrZEpsSUt1RE9GSUkzN2JZTHRzdG9OSGpwd2R2TEpH?=
 =?utf-8?B?UzR0eUdFNFRXb21jMG9BVWV5OXc5RlRCSmdQYmUydzdWcHExdlFYS1l5SDZH?=
 =?utf-8?B?bkVXVzhyTUZJaHpqdVVva1pjOGF1U1VDTmlaZDJBbG1CQU9zc3NSS0tLQWV3?=
 =?utf-8?B?UE9SSm1yOUpCbWdJVVN0YXZwTGVjSlRreGYrMU9wWllLUXdCZUdaelVlY1kv?=
 =?utf-8?B?NDMvcWJUcHRpMURoWFh3NkJ3aDUrZURETmV0ckZpVzJRUW5CRFB5aUFZd2kv?=
 =?utf-8?B?SElzRFhKMzR0cHNRMmpSMG1DWXRoYXk5VjliZm5PYTByZUVGWkx2NUsyQjFr?=
 =?utf-8?B?SjNaY3loVlVHTVEzTG1tSURtRjZxc1hlL0U2SU5qaHpVaHN6NWY4OTQ4ZkQv?=
 =?utf-8?B?TldCS3ZXUWRoQWIyNjBqc1UvcGQ1c0grcnlKRjBmV0ZxcE1HL1liL09vS0Rh?=
 =?utf-8?B?c3VWaHFsUHNhdGZaNC9LODYyNml0NmpTVDEvZk9aaS9teXlCTjB2eFBnRHJZ?=
 =?utf-8?B?ZU5pSndjQUdYVmlaZjR5Y0szR1Vhb21qcWRQOGhrWVhybDIyOXVJZWxITWpP?=
 =?utf-8?B?SG5XVlE1S2JaUVJBZXhyMTV2ZzlkUEVlUEJid1lRUFN6WTQ5TU9EVHpLQ09C?=
 =?utf-8?B?TjdIRkJHekJFZXhvQklIME5pVHI3TGY0TVNxSjJWNUo5SUJYb3FwclRueUoz?=
 =?utf-8?B?bjBWTE9SVkx0eXIwdzY0UWVjRzB5M09PdGxNOTRPSmExSG9ZVlBDYkVNL2VU?=
 =?utf-8?B?MGJaK20yNGRFdjIvS290eS9xd3VudEd4V0NLNHlCeWQyU3VMdkVuS3BkUko4?=
 =?utf-8?B?Y05yQkdScXRrcDY4dFRnMytMeWhQMW14T2RRM1B3NCtYWGNxRC8vTmZ5YjNR?=
 =?utf-8?B?cmx6ZEljTzhxa0wzbW5ONytCa2FEemFOMVgzRW1rWGJYU3pwSE9ISUl6VEJM?=
 =?utf-8?B?R292TisycndmbVBDMUFHTW1LNXk4bTRkUGk5TndsbER6VytIK2tjTGJXZ1Ju?=
 =?utf-8?B?dmhiWUcycUM4R21iZlBvWHZhN29WNkxpL3RCUDRPdTdPdmZnT1oySHVhaG1v?=
 =?utf-8?B?UUdsNDZkczFKb0dNcmkrZFFlZmRvRUUyWGFUTUNkVEZCemd4WU4xcGp6bUww?=
 =?utf-8?B?blZsV1Uwd2laMENqejJ3Ump3bGFZY0ovbTNsWndDZ2ZyMnN4bi8yVXdQS283?=
 =?utf-8?B?WFZmalY4amE1UFUwc2lCMEJnTFpVNnN5d1A0MzBxNXhhUkUxd3RLRXIvU0xU?=
 =?utf-8?B?aW92UkprMHRsaHVOUE5mWTBNOEJqakNuWlFsYnQ2bWU5a1NXZlBXemdqNjkv?=
 =?utf-8?B?c25OYzlYdVAxTjA2bDZiM0xPYU9zTzg5ckVLWjljQlhHU3lYaW9HLzZWS3hU?=
 =?utf-8?B?MmNoWUk1WFN4TUc3NUFLSElZNWI4SExiamtrYmFmL0ZxNi9RV2taNjJTZmhJ?=
 =?utf-8?B?S2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a2feb384-94ba-491b-50f4-08dbc9d3d961
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2023 20:59:52.6422 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GDiHHnFf5h6BGm5kRB9gKuWTHelN8IizzUdJam4zcHl/hrLQgUO4YXM0CrQXiqJtb49i5UltU9arQ9YJsNw6w13+CHHyhySikL8h7GJlJyA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7480
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696971604; x=1728507604;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=IuXVnHZ55pwEm/KeYW+uHU0xHe3aEqXBT91TzR2717w=;
 b=TQoAbD6JiXZ507b3g3rhYw3qa71ctBtmpkTQ4QIkHHD1ou+QNlpgGx5l
 MdOKMvQGvHlbfu0b0PMdqPPpZduAs4GD61g8JoY/VPzcHV4U5CBj8ym/G
 CwpqCqWlm8aEyGuKmyVS7tsDwDHamFOCV+Vq2I/j8TJtAOCKfFRaYnxRs
 9TWE0aboCUC5TneVA96+u56qt/xlxXU+LIt4IOwvOVfn8/c/kHV2aBqX7
 XgIxcAq5qP704Ihu6CKLU9h9woa8HVSyiwFNh1kCTTcCBWNF0X+iP0dB+
 Ts0QV/vZPJcaX+BwLnRDtNst7aTYGfmiuvUSnmS6jaSTS/MCkDVG9mip1
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TQoAbD6J
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: read internal
 temperature sensor
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAxMC81LzIwMjMgMjoxNSBBTSwgS29ucmFkIEtuaXR0ZXIgd3JvdGU6Cj4gU2luY2UgNC4z
MCBmaXJtd2FyZSBleHBvc2VzIGludGVybmFsIHRoZXJtYWwgc2Vuc29yIHJlYWRpbmcgdmlhIGFk
bWluCj4gcXVldWUgY29tbWFuZHMuIEV4cG9zZSB0aG9zZSByZWFkb3V0cyB2aWEgaHdtb24gQVBJ
IHdoZW4gc3VwcG9ydGVkLgo+IAo+IERyaXZlciBwcm92aWRlcyBjdXJyZW50IHJlYWRpbmcgZnJv
bSBIVyBhcyB3ZWxsIGFzIGRldmljZSBzcGVjaWZpYwo+IHRocmVzaG9sZHMgZm9yIHRoZXJtYWwg
YWxhcm0gKFdhcm5pbmcsIENyaXRpY2FsLCBGYXRhbCkgZXZlbnRzLgo+IAo+ICQgc2Vuc29ycwo+
IAo+IE91dHB1dAo+ID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PQo+IGljZS1wY2ktYjEwMAo+IEFkYXB0ZXI6IFBDSSBhZGFwdGVyCj4gdGVt
cDE6ICAgICAgICArNjIuMMKwQyAgKGhpZ2ggPSArOTUuMMKwQywgY3JpdCA9ICsxMDUuMMKwQykK
PiAgICAgICAgICAgICAgICAgICAgICAgIChlbWVyZyA9ICsxMTUuMMKwQykKPiAKPiBDby1kZXZl
bG9wZWQtYnk6IE1hcmNpbiBEb21hZ2FsYSA8bWFyY2lueC5kb21hZ2FsYUBpbnRlbC5jb20+Cj4g
U2lnbmVkLW9mZi1ieTogTWFyY2luIERvbWFnYWxhIDxtYXJjaW54LmRvbWFnYWxhQGludGVsLmNv
bT4KPiBDby1kZXZlbG9wZWQtYnk6IEVyaWMgSm95bmVyIDxlcmljLmpveW5lckBpbnRlbC5jb20+
Cj4gU2lnbmVkLW9mZi1ieTogRXJpYyBKb3luZXIgPGVyaWMuam95bmVyQGludGVsLmNvbT4KPiBS
ZXZpZXdlZC1ieTogTWFyY2luIFN6eWNpayA8bWFyY2luLnN6eWNpa0BsaW51eC5pbnRlbC5jb20+
Cj4gUmV2aWV3ZWQtYnk6IFByemVtZWsgS2l0c3plbCA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVs
LmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBLb25yYWQgS25pdHRlciA8a29ucmFkLmtuaXR0ZXJAaW50
ZWwuY29tPgo+IC0tLQo+IHYyOiBmaXggZm9ybW1hdGluZyBpc3N1ZXMsIGFkZGVkIGh3bW9uIG1h
aW50YWluZXJzIHRvIENjCj4gLS0tCgpUaGUgbmV3IGljZV9od21vbi5jIGFuZCBpY2VfaHdtb24u
aCBmaWxlcyBsYWNrIFNQRFggaWRlbnRpZmljYXRpb24uClBsZWFzZSBmaXguCgpUaGFua3MsCkph
a2UKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
d2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczov
L2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
