Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5246E8161
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Apr 2023 20:44:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1B8ED6FE6E;
	Wed, 19 Apr 2023 18:44:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1B8ED6FE6E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681929890;
	bh=gnJmHcOmHu1mUSz76pA0zeJZa53XmM6GKPVE/QHkynY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tEBu4bX/nTr+Pghx+swjFGqMvyKsqeV8Gru8nAiDeUt6qh7C3iaSoQAkDBiSCSrGW
	 JN/rdhQoMEm3l09/zax3jq4hJSD+ZzcE0cUF/p3Giycb5JlZmx7LO1EQdiOv8cLxuM
	 Zhhn8NnRLWQT0wHzw/2jCjFvXmqp5UzpzDrsdD1Xs7Z4wnlTjXmqBOtKiTBd2El1CA
	 OYON2O233XSn6ksK5GUh9TzLHuHMg39bBTqXYI5V2I519cWL+WLHgfNg7/9pmQeLwx
	 q/qUWPVNzYz3Ak/x1SJnjSb9ls9jj2eaEdlU5stXVIpIxnHuPf9DReYtX8EcbyOX7n
	 M4RddqU45nbTA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YfH0DhU8B_9n; Wed, 19 Apr 2023 18:44:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CF7FA60B5C;
	Wed, 19 Apr 2023 18:44:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CF7FA60B5C
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4C87B1C4335
 for <intel-wired-lan@osuosl.org>; Wed, 19 Apr 2023 18:44:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 205E281F06
 for <intel-wired-lan@osuosl.org>; Wed, 19 Apr 2023 18:44:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 205E281F06
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AsZPkbgYxDx9 for <intel-wired-lan@osuosl.org>;
 Wed, 19 Apr 2023 18:44:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5BD2781EF3
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5BD2781EF3
 for <intel-wired-lan@osuosl.org>; Wed, 19 Apr 2023 18:44:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="329707906"
X-IronPort-AV: E=Sophos;i="5.99,210,1677571200"; d="scan'208";a="329707906"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 11:42:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="803010779"
X-IronPort-AV: E=Sophos;i="5.99,210,1677571200"; d="scan'208";a="803010779"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 19 Apr 2023 11:42:20 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 19 Apr 2023 11:42:20 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 19 Apr 2023 11:42:20 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 19 Apr 2023 11:42:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gOD8eXaprSzfKhXCb7HhT7BDj4biOs/YbNKvaR46L9gbE8Jw/31iOJV02u7F9SEi4KfI7Y7gbqwrRhJi0HfelBJCC69lYhaKULw90L8NkbkAav2VatDTT3VWHi2MCXRMOO60otBVLy3fwTamSqX0m4UM0lq8NhbBM1BnSy/QDF70XbPfPRF9Nc4YDcMEQsvoVWAdPbwWswuVAuejPhJmnAlFg/yZA2OnwNe2XXMXJnwkpw+H5+AOqd2eWGn6V6ZYD843+Z8sl0KFvolZ5ebFCP3TrVVN/XZOf0mjgWBznwBXxD7vBMBzK07O+M0MhZySAPwc19jyR77z0Ibue7YJWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fl1ZMiULDtpQIz9cc1PYqjqoshlMpm8/bGY+5w0JthY=;
 b=iEC7iURouw2irb4velPlcc7JRwEVHpj8H3mbDALDboHvdjTYXe/H/JIlP1r8vj9KxnETp7t2z+/yM3LLSgKmayBJ22yJuuroJWdgj2hUecwDdIf3sjI8rMGy/GvoL8+/jRwGIXqlsh9rfH2buWyGWld+74Hyv08Zi0Si2gYz21TAnYk0IrEu9yBe3OlvRZbA0A+EFDNmt6qQYc9URDiA6zuXOQfFO/nARkTCMP2B/nvmykWibEUUTfXhtJaG5fIftom5X27WDtmnHqFm5u3BM/pXNAACPKlAfGKoKSRBERC5dyAh4M8LAshirz1MAegmCM7HyFKzJU+PneG1KRMzqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA1PR11MB6735.namprd11.prod.outlook.com (2603:10b6:806:25e::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.21; Wed, 19 Apr
 2023 18:42:13 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::6222:859a:41a7:e55b]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::6222:859a:41a7:e55b%2]) with mapi id 15.20.6298.045; Wed, 19 Apr 2023
 18:42:12 +0000
Message-ID: <73793dcb-c47e-41c0-e34c-a9de5258d385@intel.com>
Date: Wed, 19 Apr 2023 11:42:11 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <20230419115006.200409-1-kamil.maziarz@intel.com>
 <20230419115006.200409-5-kamil.maziarz@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20230419115006.200409-5-kamil.maziarz@intel.com>
X-ClientProxiedBy: BYAPR08CA0040.namprd08.prod.outlook.com
 (2603:10b6:a03:117::17) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SA1PR11MB6735:EE_
X-MS-Office365-Filtering-Correlation-Id: 8d22daa1-7377-4c05-9287-08db4105ca30
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FhLW9P+28fjM9miFpRjF/B8VhJl12otkwLJY/XqDEMOVR9GW2+6OWU89vbGDC6RcSlKQMs14CohHYdrVV+EeZJSGBrz9tmHM22/TZwPigy/A8RnvnxcCvGz/f9+3dTyBOqKiULDH/LJyyPWEQMCJTDaWX30DEhTkkdtxTs55NoG16Znf0zKQ31v/z/do2M4dwhxOhel9u+ca34siGSxv93g9fisLl9c7qzoLU1Tl/DAFG4Z2b19CZO2Lh2FOEX6ySJUJNhWux1sPiNtKMgXJWQ5y7vMjSd7qgRgrNzZwxzM/xxj/zELQw2NsMAp1Fv2zuct0XlJkQPi1PJVqXfQG/SR2K5x82kB0Qniz4CEsp8gjE04RrjN/mAySUHq3E0SFbtfJkCodSr6NEHXzjpvKu9/oZuuRr+WoQRC8sEhIjVRJfXQ+nMYdPEpNuqAp3zHi/FRiEfnr9GKJ7lbovKXv6NqRaOiWpjbXYOlPH90KinVB4Ns/ZbKwVI57t2gGn6P15xdoMcha8f0kbBYNWQRORK49SuF1k7OfaxjFb/GJv6sOFLL4CKxZry1PItqBarcRPk8xsKTkF3KruqOAvAcjH4hHWajoLYnAWLzRTsmHvZykx/WmzfMbnDqH52RQUCOW9oN64LP4E3+3clhV/22juQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(346002)(136003)(396003)(366004)(376002)(451199021)(36756003)(478600001)(6486002)(41300700001)(66946007)(8676002)(8936002)(38100700002)(66556008)(316002)(6916009)(66476007)(82960400001)(83380400001)(2616005)(31686004)(26005)(186003)(6506007)(6512007)(53546011)(86362001)(31696002)(2906002)(5660300002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NEM3cGlHaFlaVjhndWVZVFFDcEh3VjEwbmthQU5oYlFoOGlmQVB6K0g2ais1?=
 =?utf-8?B?WTN3Vk5UcGRSeCt4MzNSekJQNWNWTHp6YjFMWGE1V3NTclJTbFFDdE0vaDRy?=
 =?utf-8?B?dUpTenBuYUtxRzYvWHJYQW1FNTRCNFpYR041ZlZqanF2eGRnc2M3czFHOTV0?=
 =?utf-8?B?Wk9SOXoxdndmbkRzdjhvMXF4ZmlrUis2K2dXVmtzVWZLdVQ2ZGF5eHdhZ0NO?=
 =?utf-8?B?YlFwK0RpTW9DQVVmSDV0a1NUVkRra2U2WFBibDRacFZSbVpMckRyZTNVVndX?=
 =?utf-8?B?bitQNm96MTRIQzZkTjJsUHR6c0g3cm9KM2dON0NMeWVSR2lTa0hPeHpYQzBo?=
 =?utf-8?B?bUdKTU9xUU1mOXNnZkZRQVdDZUpCTW5mUzhXTjVPOGRtS200cEhSVW9NbVlC?=
 =?utf-8?B?Ui9aUlZFcXFrdEFoZGUxU0N5VElxSmJ1NGtXQUh6K1pmSFhEWHErUHFXQjJK?=
 =?utf-8?B?MkppQnlTMDNObUxNUXdTNWxTSnRJR293V0hZaWNXWmZFNlJyR3NsWDRGRDBN?=
 =?utf-8?B?M3JSaWFDemw2VGhzN1FvUmpOSG5KZGJ3QkI1MFgvb3pFSkNrb0h2T3BneTdk?=
 =?utf-8?B?eXExOW1MNGN6Y2MwYUtIajBHOFQwQnh3bjc5NDMwbit0YVFrM2dnTlhrUGwx?=
 =?utf-8?B?MFNKNVNhdXQ2dHhjaGsrZ2g0SjFmcVY3SjRnY2NqYU8vZnoyUVQ0aWE3OXc1?=
 =?utf-8?B?V1dKNUF2b1ZPZldGV2src1BzUng4UGhXZElNcjBRNk9tSmpPcUFWZUMwaklP?=
 =?utf-8?B?Nlg3Ylh3V1N5RUVYVzExNnB6dFk2a3hHNml5L2I0dk5nUHFkNmhWUDkrZkRq?=
 =?utf-8?B?YWJxRVZsSFdJdGJqenNnM3k3ZlFDVHg1bnV5VE5BQ2JwRDZpTWRLSmRBV3BF?=
 =?utf-8?B?bjZlR2FzVDZVaEJUUkN0QzgrY2g4M1NOYTJBNUtFRVV2OU82T1oyeWU1TVNx?=
 =?utf-8?B?VGlhRXhkdUpLV0lDOVBha0lQbFQ1UFJuTVg3Y0dxZ2tYcFpYRlBFUnB6RDFZ?=
 =?utf-8?B?c0dxOHRDYTI5WDA3RC9JUjE5NVM4QlBSb1NiZHJONVNhZkRqK0VHcnhBWWNC?=
 =?utf-8?B?YXVvUkl6Qjczc3Y3Zlc0WkhYNkI4MjZsbUYrM056MnpRV1lCbW50SitYTFdM?=
 =?utf-8?B?elFTMGJpYUx3Y09HNVloUTR6R2JxdC9WeU80WVQrb1haS1ZoMkdSeGViTmpt?=
 =?utf-8?B?ZFZPcXpWNEhWeGhQV0x2aXMwU3R3MjJEV0hQeXNWcWVWMDAxbDNSZ2xUdndX?=
 =?utf-8?B?QWtocndQOGNkb1k1ZFFUa01QZ3FReXdZZzlBODkrZ2JKUGlzWkN0VUdzcms4?=
 =?utf-8?B?aHR3aDdCLyt4ZzVTVXhwOVEvUFdESTFBYU1WVEJHRkI4OC9EVTJIWVdnWkZt?=
 =?utf-8?B?VUoxVTF4cUhJY1ZZS1ZzdUVRYnp5eStvY0QvcXZMWng1U1VkUVVtNlBWRTBu?=
 =?utf-8?B?eXZYeVV5eVNENy9wREExUloyRkR5ZWtIa0hFaU9MZXZmUGxyMEF4MHhWWXlS?=
 =?utf-8?B?aGNDWTFTY0RPZHY5OXZxWFJrVWVhSlBsUmkyT2NPWHlxaWpka2pmM2R6RjhU?=
 =?utf-8?B?ckMySXB3YU5GMjQzYnlaOVNsazE1dkJNaEVqd09SUHhEREVHK0kxdjArbk1E?=
 =?utf-8?B?YTRzM3ZmdlBEYlhkNkU5aWJuNjg4bHgrY1R0eXlXUmNxNHArZkVnRithYmlC?=
 =?utf-8?B?U1g5TzFMRms5S1EveUcyYzBiN2l4ck1nV2xhMkRpbDJyOW10QmR1a0JIT2RI?=
 =?utf-8?B?MWpibHRlVmtvSm5JK0VRREg3OFVVbmVmdzBsVmNzNW9BVVpRN1VTTWZkYk5T?=
 =?utf-8?B?VkZaQlpXWmNTcVBYQmpXU2RqTU1TRll5UTRRQUpjSmRvYzRYamxIZTB6ZUZR?=
 =?utf-8?B?NUw3SHJ0dFIzdG1TTURTS080OW5TMFZRRTczOXdBTDBtZzFaMWdoYVdFNHRz?=
 =?utf-8?B?bUw4Mi9lRnZuZDV1elVqT0tvSkwxUDBUMm1NYnc5M3ExL3pmZTk1MXYxTjhm?=
 =?utf-8?B?V3JOTDFEZUp6NVhlSkFURXF1UmJ3bGNUNDVXbWNlU3Naa0g1VjBvOUJIWTJ2?=
 =?utf-8?B?eWV6UFN4UUNWTWNXUUx4VEFFdHFlQzM1VkIxb2ZRakN1VXN2UDRqcE9qemJB?=
 =?utf-8?B?bHV1ZzcrTkFzL2h6cktxZXVQM1FvWHF6TUFEVWthUm9jTGFNejJiQ0hsYVlh?=
 =?utf-8?B?UkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d22daa1-7377-4c05-9287-08db4105ca30
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Apr 2023 18:42:12.8077 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VxgZLgBnNyGHzeB+304cAobucFJwq2tOUUc0ndttaPqGaJvYPBs8LI0S5EBMr2WVcpjxNkCofHa6M9bpgyWmSRtcS5B8Wa91i0w/ZXx58cc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6735
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681929882; x=1713465882;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=3fybvQWTM+Ne0qdn5o3GW7hrHAyh336ZTGzJsfm5+og=;
 b=Xqpan58LiVidg70V6y7ZXNsFPbXPnPJghSUN9vlp/B8T/M2MT6nYu8Od
 bG37SyO9BYY5bzusYiNG7dZGR8hN+zPb1p6xGpL8/bXNIh7NvaA73Ym4Q
 SEeJl6yv58FmQMCXJKK+pcevoDMFtrng6F4XpRL35IYm5w/u6r2Qpc+v0
 00RPIBGwyLtWm/dcOc0NmDKKlqoGzvR+oTTyJ/f87QAb4SxWmjtco3C+D
 WS8z8XT9kbzdsojiLI7Gpyl0Kh6Z6mBtTCVDqnrAu4qnn0zIVOumxhSP0
 eOgwEJrdLL20bQsZQZdFz8tuLv0IhCBQ1T6RZtusWnVWOgnKKRV2wyT0W
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Xqpan58L
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3 4/4] Revert "iavf: Do not
 restart Tx queues after reset task failure"
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



On 4/19/2023 4:50 AM, Kamil Maziarz wrote:
> From: Marcin Szycik <marcin.szycik@linux.intel.com>
> 
> This reverts commit 08f1c147b7265245d67321585c68a27e990e0c4b.
> 
> Netdev is no longer being detached during reset, so this fix can be
> reverted.
> 
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>

With the other fixes, this is good.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

> ---
> v2: no changes
> ---
> v3: no changes
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 16 +---------------
>  1 file changed, 1 insertion(+), 15 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 8dd488158961..8f13685ed2fe 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -2988,6 +2988,7 @@ static void iavf_disable_vf(struct iavf_adapter *adapter)
>  	iavf_free_queues(adapter);
>  	memset(adapter->vf_res, 0, IAVF_VIRTCHNL_VF_RESOURCE_SIZE);
>  	iavf_shutdown_adminq(&adapter->hw);
> +	adapter->netdev->flags &= ~IFF_UP;
>  	adapter->flags &= ~IAVF_FLAG_RESET_PENDING;
>  	iavf_change_state(adapter, __IAVF_DOWN);
>  	wake_up(&adapter->down_waitqueue);
> @@ -3082,11 +3083,6 @@ static void iavf_reset_task(struct work_struct *work)
>  		iavf_disable_vf(adapter);
>  		mutex_unlock(&adapter->client_lock);
>  		mutex_unlock(&adapter->crit_lock);
> -		if (netif_running(netdev)) {
> -			rtnl_lock();
> -			dev_close(netdev);
> -			rtnl_unlock();
> -		}
>  		return; /* Do not attempt to reinit. It's dead, Jim. */
>  	}
>  
> @@ -3237,16 +3233,6 @@ static void iavf_reset_task(struct work_struct *work)
>  
>  	mutex_unlock(&adapter->client_lock);
>  	mutex_unlock(&adapter->crit_lock);
> -
> -	if (netif_running(netdev)) {
> -		/* Close device to ensure that Tx queues will not be started
> -		 * during netif_device_attach() at the end of the reset task.
> -		 */
> -		rtnl_lock();
> -		dev_close(netdev);
> -		rtnl_unlock();
> -	}
> -
>  	dev_err(&adapter->pdev->dev, "failed to allocate resources during reinit\n");
>  }
>  
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
