Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6616E815F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Apr 2023 20:43:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 64471607FE;
	Wed, 19 Apr 2023 18:43:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 64471607FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681929827;
	bh=x3DhyE8xfjmnymtpyxWzeMwBTfvbSHujL6bUF1H5P7g=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CL3M+dGVXwkh9/2uVdvrVahDQmRy3nEdsCGNBsYlBIyo0wdyMqwGONIFGijB0lS6U
	 IeNy2EYlxV5/oVyV41jHNu9RxPXhVq9QCRvM+iNuwoU9e88mTcQS8444H33yJBjKDC
	 XSDesqPKllAzZtsM6+/AwXl33kgm5WNu6Z+1eHaTfpASjnIDlR7ts9bVqc7var4/V8
	 44J4NlWgzqnS9+fx+D76CaOX0zih6KYatULIvikclhDdWZpLQHl/0Rge2iMWmimnee
	 KSPJZJ7YjwMiQfrJbSyUKSVKBIxvSRcPA7FcWKU8oBcbJV2piDr2kkB43vWENXix5x
	 c5WZ+WeTh30kQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9pstEBhRIvPg; Wed, 19 Apr 2023 18:43:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F306E60B5C;
	Wed, 19 Apr 2023 18:43:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F306E60B5C
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D1CB41C4335
 for <intel-wired-lan@osuosl.org>; Wed, 19 Apr 2023 18:43:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A67C3819ED
 for <intel-wired-lan@osuosl.org>; Wed, 19 Apr 2023 18:43:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A67C3819ED
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tj7T5O4zIfag for <intel-wired-lan@osuosl.org>;
 Wed, 19 Apr 2023 18:43:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CCD8D818BE
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CCD8D818BE
 for <intel-wired-lan@osuosl.org>; Wed, 19 Apr 2023 18:43:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="329707445"
X-IronPort-AV: E=Sophos;i="5.99,210,1677571200"; d="scan'208";a="329707445"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 11:40:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="803008474"
X-IronPort-AV: E=Sophos;i="5.99,210,1677571200"; d="scan'208";a="803008474"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 19 Apr 2023 11:40:38 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 19 Apr 2023 11:40:38 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 19 Apr 2023 11:40:38 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 19 Apr 2023 11:40:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T/7wMIi6l9Smrs/tL15xog89YP7GvgvRkB8ijdym5CcfwK+36aRb1ISy02P96pFGW3DsEeW0rEmTCQ6dU3tNObNqHjFD1qS8+XkIA1HWBLPuMam20VlLf5/VgPL3Iciee1iSzqBHd3JbIJaHRH7EnBzjSR8/kNET1zF7XYjns3qT9/BepiJkmK/J4b/oPTCeUJ/j2nE805bxmGH9Uzvdkm53UVnAQ8qzkcpygdjgHgeDaQSGsxwCgq/0iXLc1C8W/+XCHzsiv/VRm7RXv69AjeVGI5IbXI+9TNBgCV0Mn48ErgmUEdOTQIinef2YSriwC9BEzkBpEBac9D8E++6CfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lYz/Nxj0xjV1viaEDmwZyQWU/kDNvkTrUqPLTPrPB9A=;
 b=ks0f9JyxdZrQKkr/Id3PfXKsJhNJvOA69aUMRRwh8//2OeOCVrqnvZRAJ1dyTM9lOze5NwUdc4H0gbNXTjHErkHOjqRRaapH/nOCPkSLI40pLZ9bsEMsrK4V3P59bOVptm065sSJZ9vTh9dd3tINQhNwNv3p5zMAbVAOeM+JmdYdVXLpvjOeDWMqO9Ou87U3JJhf0WAi8vR1eKv8KoEMJqtxqmZllwduybMl9RtM4NmetLL8WTGeC6CHK9NgnAfN5xc1K9svNVd8bJaledjF5bydCnbuCMZE63vf7vCjro1ySj8LckojIcrR2STg7ElC1uK95EN4BleBwJNVxXLRZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CO1PR11MB5060.namprd11.prod.outlook.com (2603:10b6:303:93::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.22; Wed, 19 Apr
 2023 18:40:37 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::6222:859a:41a7:e55b]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::6222:859a:41a7:e55b%2]) with mapi id 15.20.6298.045; Wed, 19 Apr 2023
 18:40:37 +0000
Message-ID: <02fc024e-40ad-d5e7-2824-3cdd742ad9bf@intel.com>
Date: Wed, 19 Apr 2023 11:40:35 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <20230419115006.200409-1-kamil.maziarz@intel.com>
 <20230419115006.200409-3-kamil.maziarz@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20230419115006.200409-3-kamil.maziarz@intel.com>
X-ClientProxiedBy: BYAPR07CA0026.namprd07.prod.outlook.com
 (2603:10b6:a02:bc::39) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|CO1PR11MB5060:EE_
X-MS-Office365-Filtering-Correlation-Id: 39878108-6657-44ac-2757-08db41059115
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IWhlNDwpVgQFL40b88epAb34wP4hJk/UNMe5pjOKW7KqrmK1FafFpTH4y/crwZd1oeWVFbk2YJDkPjj0id166QtGWeDu9Xl7EhgrrWOI3BF2ng/wkcf0ueLd2+a+MqyMrFHqKP1QCigD6k3IgAdzx4XFxZHkTaOf/XPOWUjrQoXiT2UAVMBh59+7nj9u0Tm5renHL2BKZSY1hBHxM0UFVm2XdFbtS7q3waLe9VeAYd5aYKAzUjnKC4IyPUCkaldj7vUxo23zSu4dp1VPfAlbmNbI642g23ogpb436cmFF5d7TvOIgVbIVEeA5EHQE0RgbpguKxmPS3dr3DJHwuF2YOX2boNyCBPnoELbGBz8kzFvL/KlH4zVaOsXHRxq4AaovE8+j9b/o3Cw+UCFKmA9NvmQ5p7ZtLBG5jVLAMZKxPH8VTlpIF8Kn7ZxhHB0+eHrK4mKNmrHVVaP5doltMp9C8D2B/QEprYtPpNsriUM8ZOIWZLdF7W+29jUkyXJN3jLav6tuJe4Me341YiR8uNkQR2WdKFlsl13Mr6XI6GSTmgE8UT6Pxc0nuGXqwttjkRAjhPi+DXuV9hXcx5Grwvk5J4+mvvobqBaVkY2afHQdNXP5jprnfjG4TXJXOgng9AYcGRRonUlA9B+GUQPstbsWg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(136003)(376002)(346002)(366004)(451199021)(31686004)(83380400001)(478600001)(2616005)(31696002)(6486002)(6506007)(26005)(6512007)(82960400001)(6916009)(66556008)(66476007)(41300700001)(66946007)(53546011)(316002)(186003)(5660300002)(38100700002)(8676002)(2906002)(8936002)(86362001)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R1JRS25BekxESDI1amJwWENoZU05eldXSXdyOS94Mlc4QlUxTFJSbjhBb2dZ?=
 =?utf-8?B?V1kxOFovbkMveUd6OHpGS245aHM1alZ2Wk11eWE4NWI1UGR0WEVyZ21VY2Rk?=
 =?utf-8?B?SUFteWk0Zm1FRWVmNTI2dHZ0Zm93QU5KN0VWb3J3eGZDQUpIMUZZU2V4MHho?=
 =?utf-8?B?SCtab1hYZVhGVmYrMTIzY2hkajlpTWdTalN2N0ZBNDlKaWF5MWZWTFZsYVB4?=
 =?utf-8?B?NE1sdW9LNjN0eS9sY0taaGpQT0wxZGdNWGNXUlVlSThJek91M1ptcEN1M1F6?=
 =?utf-8?B?VzdrQnNsL1VPYm9rNWhoOHB2cjZkNGJYMU05OUFDcnV2VVVJbFNmZ21xeWdL?=
 =?utf-8?B?K0VRWUVySXQyMUhUditHN25GUUJTanRSaS9kWTZlWjFuWWhzeDF2eXowUThD?=
 =?utf-8?B?U2N5cnZFQWhKeURHQTh3T0FlRW1nOHFwOURxSWUvK0J1TUR4ejRzeEdZVytQ?=
 =?utf-8?B?djUrbTNEK0pBWmFCTGlZYm5JRDhwZlZNOGh2Umx0bTFjMXZiYUxMWHo5OE0z?=
 =?utf-8?B?dnRFVnd2dHFFUmN3UzhjT2c1MHhpeXJCREh4dldqTVBVanI5b0VRaGsyRHhN?=
 =?utf-8?B?OEJOL2lUdGJSN2Q5dzhDTDd2K3hkS2RxVFF3TVI1a1Vsc3JMbTk5eUlMRmxR?=
 =?utf-8?B?TG1rT1VSdGFoTVk1cDhQNnB6RE95Yi9HZDJHeWpEbGJhb0ZXQ29Ob2V6ckFQ?=
 =?utf-8?B?cnR5Tm1hb2VkYU5JZFRqRzR3MEFvbTFCSzdlUG56V0IxSWw5dmFBdXhiVlBh?=
 =?utf-8?B?d0E0S0ZDZDVTN3EySFJNeHFESlRvM29VV2FUaGZmNTJDakVKSG5iSnppTGFV?=
 =?utf-8?B?RnVHRTFRN3MrOTlIK2dyc3BZZlF1RCtKZGhOakQ4MEhxZVZxUnJDZ2N4ZDlr?=
 =?utf-8?B?SHJHRGJUNVJqOHpWZERPeThGbWx6WVNiM0lBdXBsT09DaFhjM1poVEJRcTFu?=
 =?utf-8?B?akozY3JmdzZVYVJFYjR2R2RFT3BlWU1zZlJFRXhQb280QmNSUEQvZjZDbTdo?=
 =?utf-8?B?OC81bUg1TWtlbXR1di9mK1JVdGlXZ0RZQ3pGNkpJK0pVb2MvM3pvb1plOU50?=
 =?utf-8?B?ZCtMMFB2dFZ4UFNNWDdkVXNOVG5XY2NDTys5cWpmY0RzZFBOOUh5WHZtcFhQ?=
 =?utf-8?B?T2ZaL3p1TVFzSUhqcXdNRUhPTytkS0J0ZGl1Z0NTWFZqVXVDbW41SlZZbkwv?=
 =?utf-8?B?RWdSK2FnNnp2Nmp5dU5rM1VTcHZrK0UxYm5meCs1SUtCQTFOMUJqWjgrM0ZJ?=
 =?utf-8?B?bmdzcEZLUEJZNzh0dnI4QnVlNWJQRVV2UmJCUkpIcGVrTElPRmdSdFUrQ0tC?=
 =?utf-8?B?UUFUdC93bTJQdk9FK25PZk8vcXBxQlVmWFVFL2JEenJYY1BtNVk4WXJCbmN0?=
 =?utf-8?B?WEp4NGRpV2xlc3lmeDlaV3FTb0hGWVJQdEdxUXV6ZTdYZ09JTW9PckhXSEpQ?=
 =?utf-8?B?eVl6eWI4VDBBQi9lRVg5S1UvdVZSVnNYZ2RWVWc4eFRCS3BiSUFSUUkycG1T?=
 =?utf-8?B?U0VVR0ZaL3ZwL081ZnE0SVpjTnpGRTFVMWJCaTlQTnk0cTlCWFRBN2k0M3Zp?=
 =?utf-8?B?bUlNOHVWV0haUUZRU2ZuTS9sb2VZdFhjTndnWVN0aFlkSko4YnVmaklkNjVv?=
 =?utf-8?B?K2lOTjBJRFFuYnU5UDBWV1hVWHhqcTdZNUVuRUhKR3BjR1d2VHB0UjlEcjUz?=
 =?utf-8?B?bkF1Z0VIcE52WUdhR1dYUVJQSFArdSsrWHordFhnWWRBUUZzSGdDc2V1UlJT?=
 =?utf-8?B?NEo1aklxM01hOURVUnpmNWtDSmI3Ym5UbUZFeW1kLzZOM3MvMnN0K3h3WTVV?=
 =?utf-8?B?K1FyaXkyM2tLUDdEd1kzbm02RHhvazdWSVBHZTVUaTkzUmFKY3QzbVV3d2tC?=
 =?utf-8?B?S0RBczNOdnpzbGNrWWNKZkgrTVdhaUFUNlFqT01hWkJQQU03WDBaRUtoVlMz?=
 =?utf-8?B?bXpaSElmYmRTcUp5L0tKSTlvVmZuYzRkOGtIL1hQMklRQXB0eWp0bkptYUZ4?=
 =?utf-8?B?b0xTWlhwVWQxWnBrVm4vaTYrUzFYT3lwWWZRcGFzVkdmTXJFeXhieW41MVVS?=
 =?utf-8?B?S1dhdHlFZWlaQTB1b0dNUU1RS0x5aC9oaFQzb3JFbEdPQ3FySkRjbVVhUzZY?=
 =?utf-8?B?WmNwbXRVbVd1Sjh2eEpzcC9kR25Lb1JwWkxQdXBBRXpFelVzbjZJa2lpUk52?=
 =?utf-8?B?VHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 39878108-6657-44ac-2757-08db41059115
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Apr 2023 18:40:36.9944 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 34defFUavE2/HggxQOkzIfoLDVJSU/kDE23ox0XFb6wtox8U6n4AlpetPNTihTbDKak9LaPVw39qwGVuSQaytjeRtH9rxSbL++3d5h40y/s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5060
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681929819; x=1713465819;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=LYn7zO+cYxOHM0Xoq5hXyUjjkvaiYeMJD993JJyFcbY=;
 b=DBHYLjGHNFwoudcDUtSPTRv3xuK2eNrU6/Wto/5tAsuEDXKEX/zp7Mg8
 KmG5HlBMpay4fj38b3LT3f7LpyGqbCa3KK4diUbrANYu+fnclkEjdHrA+
 nzvFsByZJ1T3xWhoYN06w8rzd7gHySSPTqhFUsM3FuNUbU0biOORPTvcH
 pXezVEpMQ/t/oe72s7lAliMJg2T42oqsvigW578ui+2+prRhdV/u7sapz
 /BWRNGe8IAEPhmGarUAxFm14H6g+6g7uHD/82dyXRQXmG2B74PDfbTraI
 IqQ1nO0FTXB8ZwQbSNok4fxRKiTLv7gNojh64o/Kfj8m3PY43egoNlhIE
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DBHYLjGH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3 2/4] iavf: Don't lock rtnl_lock
 twice in reset
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
> Some ndo/ethtool callbacks are called under rtnl_lock. If such callback
> then triggers a reset, the reset task might try to take the rtnl_lock
> again, causing a deadlock.
> 
> Callbacks that are sensitive to rtnl_lock are scheduled when the drivers
> are unable to obtain the rtnl_lock in the reset flow. This ensures that
> the reset task does not attempt to double lock rtnl_lock and avoids
> the deadlock.
> 
> Before this patch, a deadlock could be caused by e.g.:
> 
> echo 1 > /sys/class/net/$PF1/device/sriov_numvfs
> while :; do
> ip l s $VF1 up
> ethtool --set-channels $VF1 combined 8
> ip l s $VF1 down
> ip l s $VF1 up
> ethtool --set-channels $VF1 combined 16
> ip l s $VF1 down
> done
> 
> Fixes: aa626da947e9 ("iavf: Detach device during reset task")
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Co-developed-by: Dawid Wesierski <dawidx.wesierski@intel.com>
> Signed-off-by: Dawid Wesierski <dawidx.wesierski@intel.com>
> Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
> ---
> v2: no changes
> ---
> v3: Instead of the flag, we are using the rtnl_trylock in the rtnl_lock sensitive functions in the iavf_reset to avoid deadlock.
>     Adding the scheduling functionality so we can update the netdev later in that case.
>  out:
> -	netif_set_real_num_rx_queues(adapter->netdev, pairs);
> -	netif_set_real_num_tx_queues(adapter->netdev, pairs);
> +	if (rtnl_trylock()) {
> +		netif_set_real_num_rx_queues(adapter->netdev, pairs);
> +		netif_set_real_num_tx_queues(adapter->netdev, pairs);
> +		rtnl_unlock();
> +	} else {
> +		queue_work(adapter->wq, &adapter->set_interrupt_capability);
> +	}
> +

I guess there's some merit to doing it inline when possible, but I'd
argue for simplicity of just always scheduling the work item. The
trylock is at least safe. I'm ok with either approach.

>  	return err;
>  }
>  
> +/**
> + * iavf_delayed_set_interrupt_capability - schedule the update of the netdev
> + * @work: pointer to work_struct containing our data
> + **/
> +static void iavf_delayed_set_interrupt_capability(struct work_struct *work)
> +{
> +	struct iavf_adapter *adapter = container_of(work, struct iavf_adapter,
> +                                                   set_interrupt_capability);
> +	int pairs = adapter->num_active_queues;
> +
> +	if(rtnl_trylock()) {
> +		netif_set_real_num_rx_queues(adapter->netdev, pairs);
> +		netif_set_real_num_tx_queues(adapter->netdev, pairs);
> +		rtnl_unlock();
> +	} else {
> +		queue_work(adapter->wq, &adapter->set_interrupt_capability);
> +	}
> +}

The delayed function is now in a thread where its safe to take RTNL
lock, (since no one is waiting on a different lock/lock bit/etc) so this
should just be "rtnl_lock() / *set_real_num* / rtnl_unlock(). I don't
see the benefit of re-queueing here. The update won't take long so I
don't think we're going to be starving the adapter work queue by locking
on it..
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
