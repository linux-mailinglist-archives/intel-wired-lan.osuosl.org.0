Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F09F969D0C9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Feb 2023 16:40:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7EB06415BF;
	Mon, 20 Feb 2023 15:40:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7EB06415BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676907654;
	bh=mlLdGLdUNOOjs4cYaMxqdBhB47bdItVTuEUOJeDu+JU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YTXHVF3/ftXY3OhKQ1C8Ml3uZzy5y9aIOEwn8sXgpK+rRaYJbv3glkmly49YJhzyd
	 MQHjvXEMYRvizoVK+BYdGoqe3MQRIMSP7pEcCLLoSKlGFB/SK4Ga3a7i7L3DzgKv/5
	 0Chj9/lRXCYJ8YVC1JGvtD02NgnrkcyxBGrtbeqq2ekvFdsgXXUnFVkYPUxISjxW8w
	 F8rGvyL3oWZPDvj4n4CAbXNhg9nawHr8LTNjo/OEpgVcW7nr0ThyFJUwGL+LjZlm/b
	 xUvZkN1pG4jUfdV+V1nVKz/36EbphUjrC1iAaDNr1YBBtryGOGMcfHd/pfch9Bosnd
	 E+hb5kBOEb91w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5jwJbi18aqKe; Mon, 20 Feb 2023 15:40:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B882D41608;
	Mon, 20 Feb 2023 15:40:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B882D41608
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C24A01BF3BA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Feb 2023 15:40:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 971D881EE0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Feb 2023 15:40:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 971D881EE0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XrSZRcMcgla3 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Feb 2023 15:40:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 68DF781B14
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 68DF781B14
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Feb 2023 15:40:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="330143070"
X-IronPort-AV: E=Sophos;i="5.97,312,1669104000"; d="scan'208";a="330143070"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 07:40:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="664674045"
X-IronPort-AV: E=Sophos;i="5.97,312,1669104000"; d="scan'208";a="664674045"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga007.jf.intel.com with ESMTP; 20 Feb 2023 07:40:44 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 20 Feb 2023 07:40:44 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 20 Feb 2023 07:40:44 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 20 Feb 2023 07:40:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DdQmy/Q9XGkl1LF9KcA272v0SFoKa/kfQS07+JGffWPZMdKuflAiThWJ22+hmdQsStQV2Br8pgzUgyzU+mZzT7wJrmUgxZF6jSmugTqaEyroo0ll/gyy/+KYSAtmW+N5Tqi8laYSd+LHAOZ+pfFDqWpb/085J/cla4BBWht3FJlerVvK5+hVh5h5AGSkuG10xhTIPOGq8Xt8vUImOVFU5dl+dCkrNN6uk4eD6plzh+J+OgCIh9B65amnAvYOK0H2lUhYyEWrBQhljNehbJq1oePAq1kX6zUUCqwnaNcLzrGS9/7rM6ttUTaC0ylyxq/Ovw6bRyIUDUZ+EE7WK3ztPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dMagXdK457bw5xf8OGZ+zkR9BjDOHBL0UUik1pFjTT8=;
 b=FrRrt1BuG4ahfHJCLTbOu4B1NRD5lC06s25Yh9zLJHIXnsMmBTsWrmY2r4xC2eXRXmxzyMfzC1/lFIld/ZVBohmXwPp964YlJC/xXxd9bhJXXn4UBkPaftN+ifyHPDDLcSn3OkT7prV90HY8sqt5fIbGgkbTdQfYSapykBz3pVnbVEKueODdKUtOnpwPn+IrgYxJajP4JAedP92TJzIJFpM2EXTv/T6qDLGff49PRZnTU/Zfuk+l6dmM5x83jqlmEBjAUROi0dYIxesHZyfm7+9UVLdGmuY4hIA8bI9wrbbsxs7dsmlTvpCtkniqXYruYY0ya9K9PA/sXfPyV970ng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by LV2PR11MB5973.namprd11.prod.outlook.com (2603:10b6:408:14e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.18; Mon, 20 Feb
 2023 15:40:39 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::3ff6:ca60:f9fe:6934]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::3ff6:ca60:f9fe:6934%4]) with mapi id 15.20.6111.019; Mon, 20 Feb 2023
 15:40:39 +0000
Message-ID: <74330cb7-bf54-6aa0-8a07-c9c557037a31@intel.com>
Date: Mon, 20 Feb 2023 16:39:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: Jesper Dangaard Brouer <jbrouer@redhat.com>
References: <167604167956.1726972.7266620647404438534.stgit@firesoul>
 <af69e040-3884-aa73-1241-99207aa577b4@intel.com>
 <fe613404-9d1c-d816-404f-9af4526a42a3@redhat.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <fe613404-9d1c-d816-404f-9af4526a42a3@redhat.com>
X-ClientProxiedBy: FR0P281CA0056.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:49::6) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|LV2PR11MB5973:EE_
X-MS-Office365-Filtering-Correlation-Id: 1ea08a9a-ddd8-4b3d-065f-08db1358d11e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: sE8mNocyrwvfob06Kf/p080hhy7UuoVx83NciCHNNE+Bwuc2AlGpknkyS10zdqkNraNPjN6RDMkkFcWuOcuoQ67/InGu4HSI9mkrpRylKJPItswzlny0NE652r3/iULK8eO+zf5XwteZaWc+ouz+0tA6wNMUe32zxyA8A60hQN0/CWakPXGqWHMESFyihHngEaSx2VLgn7CfefSb91ofYpMyQh01vtlQi71AHyFDDHWzifv/XqvUgnWc93pox+Q5TlVCa7B5i4Bx011sR12ucV9Nq+XHIJQq2BnEI7KapMWl4Z48ggPepm35A7v2wOIJYNY/aI2zKdbZvYW7TZ46GbdAkj0Wq9PE/fnbJ7vLOwrAWU50PDmlPuIRJXxobw8Bzt3/++l0AYZAm2327xEECxEFm4bBgS/Z4pLNcPsxfl5N4wfY6IWUb1kmZc78p0TnIVzwXPVXxGRkfMRA5FcddFo/lzyzKnQrlyaF/zI+1Qsk6AxpIOuqZh2BeQ3tWqfg2WzCDoTSuJWbaTX0pfbAyOMHWlRohWph0wo8gJor6mtW+InFVldhp5B6sJN0Q0CxFIWNab0cTfIxFay9i8IImFFJyzzWQ4SG/12i/jn07vZquVNuKjsXPDQL4ZYbnDuImPvBbCFt9naXbYbPalqJCNuTFSoAkCzRXYqd2fREkF9HUqzcQfB/f7jJj9/1UQ71lF3d5oC1ezzAb2NoYG2dkmCC3O9XzcCmWTmFRc8LACk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(376002)(136003)(346002)(396003)(366004)(451199018)(38100700002)(6666004)(2616005)(26005)(6506007)(186003)(6512007)(83380400001)(66946007)(66556008)(7416002)(66476007)(8936002)(6916009)(2906002)(4326008)(5660300002)(41300700001)(6486002)(316002)(31696002)(86362001)(82960400001)(478600001)(36756003)(8676002)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Nm9VQ2FDdFl0eEVsS3gySjNFWFNZczVxbHZkSU0xa2lCVjIzSTlsY2NUY0ky?=
 =?utf-8?B?V0RXdldKdVNKeDhSWlZFM2FJdWhPeEhudE5EUWU2ckVNTW5pdFBoNG9ZNU84?=
 =?utf-8?B?RFJDaFN6R3dUQkM0VW1UQlpmSTNxaFc0WmVlMk41UVJJbGRGdEZzR2RWbktu?=
 =?utf-8?B?TzA1RS9rYWIyN21oSU56RjQ5S2o5c3U0VUZzQjJBYm1PQ0Yvdk8xRGY1L1d5?=
 =?utf-8?B?Q1BwZG9WTE1lLzF2VjhDL2VOU0M2ejdnTVN1MktpSU9WbDI5UXdpSGxZRElV?=
 =?utf-8?B?WGl3UWR5K1pJdlNtRElvVXl2YlBGdlFzdkg0bHN5d3ZjUTJBYzM2Rjl3UUFl?=
 =?utf-8?B?MmZKUzYzdlNYa0VCaXVmNHlYRFNPZzlPb0xta0FDc243WmxMTjBuUWhYZXF3?=
 =?utf-8?B?OUxSSkhpbmdlZ0lCbHprTElNMHJ1eGZrSU1EaFFUektwUDBXdVQwTXlxUFRL?=
 =?utf-8?B?TUpHK3liSVNFU1RyNGhNYjBQSUMvSHZDamV0T09BeWorSWFnQkhRZ0l1ZFpp?=
 =?utf-8?B?eDZRTWdUUDh0OTNLNWlVaVY3ZTZtNjBURkhMN1dKUDU0WmtwNzdBYTJhWDZ6?=
 =?utf-8?B?QmErS01LR3YzZ0pDMGg3MjQxRkxDcjQ5NW1vZ0xjaGtaeDZpN3ZERlVKK1pk?=
 =?utf-8?B?RXBhV3VHL0p1OTJIUWVPZHIyRnR3cHp6TFBNSUZ6aGg2b1RXakxrbnhicEhi?=
 =?utf-8?B?eWJxR3FxVDBlaHpVeWEzbXEwNEJqYUNNRjkvMG1ZazI3TDNqNmhqbXFKbEsz?=
 =?utf-8?B?MkRsRGgrcGVqa2htLzdsTGl5YnN5UDN0WThpK05WMXF0aE85QVRZTG9lYUhl?=
 =?utf-8?B?RTJrKzRqUVVySGtNeVJFdExHV0pDdW9sWHJiT1cxK25LZkdnSUJlN2cxMVhC?=
 =?utf-8?B?MzhwVUgwNUFiRml6RkY4SUI3bjZDcWp4ODAwZUZRN3dveWFPRnZndjNKOFU5?=
 =?utf-8?B?NjdyUmRHeUpWcE5wREwyYmR3R0JuOG85cHVkV1A5dXFOTTRxQkhnbUVTa2hD?=
 =?utf-8?B?ck8rODdERWtGa0VqL1Bhc2s3NXpOYlFneVZFVk01bmdWRmRIWnovSlU4enpp?=
 =?utf-8?B?bGEyZnJBNjdxMzB2WG1MRnhWWlI4MXV5SWpIQXJzVEZJZFVZbGhvUjFGWTdr?=
 =?utf-8?B?N1NFRTZabERnVEdkbFQ5NVo1Z1JOa0RoY3VYdStLeU1jK2lyM21QMUJLdUNR?=
 =?utf-8?B?aExjU1ptQUVvaDNCd3ZOWlFXenB4S0FVYWV5bnh1QkZnOElwMzhMY2MrTStZ?=
 =?utf-8?B?bzJobFd5RGFTdjExQTNpOEFleVJoWVdJTzg0SlUvRjFaVjAvTGdCTWJQVitT?=
 =?utf-8?B?aUVCRUZHZThBNlNCeUxWMGgzdVg4dERKYWcxSHZJcDh5eU0yWVNUaWQ4U3JB?=
 =?utf-8?B?b0pFMFlqQnlRMTlRTnRMUVJkTEZQMVZrUUxnWkJnYzc0dVJPYWp2ekpybFZY?=
 =?utf-8?B?UnNpelpxazBEa25OQXFmU1gwUG93TjZaT0RqeXpFWENKcHFhUXFMcUlCQlVO?=
 =?utf-8?B?Z2pNMjFoeG90bUpCTU5yajJOaDFlWDdQME9PRjRDT09lQzhZeUxHc1dMQUNx?=
 =?utf-8?B?K0d0M3JXYkFvV3NVT3lFa3RiRUkwL054aU84ajN2VXVIamFIN0lMOHlkWXQ5?=
 =?utf-8?B?WUlNbXZyTWhFQXdkSlFjdit3WU5tSGcySWpQNjBYVitvQkdOdUdzR2hwWGow?=
 =?utf-8?B?OVlTeUwwOFQvOGFUS0VHcnNabDRWN29jZTlCeU5JZGxiUW5sVmhteks1THUz?=
 =?utf-8?B?UXBHSjYyaWlZanFmTnN1azdxeENpbjBPOHNsYVdFck5iNFhHTWNYbmxlcGdR?=
 =?utf-8?B?eEUrb0lCLzE1UWo3SjRLOVRSSmN0aEc5NjNVVng3T05ZWUpJVElGTkhOVUhE?=
 =?utf-8?B?RTZzNmRNcHBaUVh2aXJtbWcwOFBFUVV5S2dLVmVFZkRuUDhBSnpsOXk2cUJ2?=
 =?utf-8?B?cDg5QjIxT2MyeTRpRWJaVDByWXJ1OGcxYWFoT3NSMkZqQzlEL3Uvck9BRXVI?=
 =?utf-8?B?dzVoSCs5ZFJmME0rSmpGUGRzSnFGeDZXY2tyNTZmRXB1VE5uZXRQS3BFeGhl?=
 =?utf-8?B?bFcxdkN0Y3MvTWxlY0tzTGQvRlNkTzhZTUtSRUhJMWd1TUY4bTFpeURHOC8w?=
 =?utf-8?B?dzJYd0pOUkVvMWRDV2F4Y1Mrdyt5aEFUR1ZsVTFNZHQrbkN2UmhGem9aK000?=
 =?utf-8?Q?ZSn8TRPaRbA59FM0v2tyJ7Y=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ea08a9a-ddd8-4b3d-065f-08db1358d11e
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2023 15:40:39.2793 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ac3jVxL/J5w2ltsziD4Yvx5zNaatLk1NhYwbdLaCm/VWgUlwCkKUhGPJqtBwWH2DUKPT03qAQThVREzsze8cN8tNWHp4fnHfqZPtvUPpePQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB5973
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676907646; x=1708443646;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=b/TGW+8fHu5msJjFt5uAXIR/0Z/23AKJ5rSdCEje3Vs=;
 b=L/ZHHfXgHtWMMFKpPYq56SWcp4LRoo5wzQqooR1fvR/LrIwCVD9aKX+g
 JRn5WiENltvJIQd1CmTX019VNRHLPeDvj3p9iJB3kNBs6wU3itCKVt4x5
 4df9u1DV4cNc8mnW5PlejER6yE5YN2zRFywAGVwVgpIgQyhj7GKd/C+Gf
 l+okLYkRHnVOgkEbpnTFdtHFJCpJiBUVi0Sv85dA+0paxPK0n6d3odS+N
 tvcQMlBVwO3BkjPOMDjtf2R/g9UxE1OeDDi90OQJOop0cbt3n0lLllM/L
 t2bHe/JOlzvvhDWZxBbRtlMaSfR7TYh1HJhviqAroXzYFAjg4tLd6FQcf
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L/ZHHfXg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH bpf-next V1] igc: enable and fix RX
 hash usage by netstack
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
Cc: xdp-hints@xdp-project.net, martin.lau@kernel.org, daniel@iogearbox.net,
 netdev@vger.kernel.org, ast@kernel.org, anthony.l.nguyen@intel.com,
 Stanislav Fomichev <sdf@google.com>, yoong.siang.song@intel.com,
 brouer@redhat.com, intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogSmVzcGVyIERhbmdhYXJkIEJyb3VlciA8amJyb3VlckByZWRoYXQuY29tPgpEYXRlOiBU
aHUsIDE2IEZlYiAyMDIzIDE3OjQ2OjUzICswMTAwCgo+IAo+IE9uIDE0LzAyLzIwMjMgMTQuMjEs
IEFsZXhhbmRlciBMb2Jha2luIHdyb3RlOgo+PiBGcm9tOiBKZXNwZXIgRGFuZ2FhcmQgQnJvdWVy
IDxicm91ZXJAcmVkaGF0LmNvbT4KPj4gRGF0ZTogRnJpLCAxMCBGZWIgMjAyMyAxNjowNzo1OSAr
MDEwMAo+Pgo+Pj4gV2hlbiBmdW5jdGlvbiBpZ2NfcnhfaGFzaCgpIHdhcyBpbnRyb2R1Y2VkIGlu
IHY0LjIwIHZpYSBjb21taXQKPj4+IDA1MDdlZjhhMDM3Mgo+Pj4gKCJpZ2M6IEFkZCB0cmFuc21p
dCBhbmQgcmVjZWl2ZSBmYXN0cGF0aCBhbmQgaW50ZXJydXB0IGhhbmRsZXJzIiksIHRoZQo+Pj4g
aGFyZHdhcmUgd2Fzbid0IGNvbmZpZ3VyZWQgdG8gcHJvdmlkZSBSU1MgaGFzaCwgdGh1cyBpdCBt
YWRlIHNlbnNlIHRvCj4+PiBub3QKPj4+IGVuYWJsZSBuZXRfZGV2aWNlIE5FVElGX0ZfUlhIQVNI
IGZlYXR1cmUgYml0Lgo+Pgo+PiBbLi4uXQo+Pgo+Pj4gQEAgLTMxMSw2ICszMTEsNTggQEAgZXh0
ZXJuIGNoYXIgaWdjX2RyaXZlcl9uYW1lW107Cj4+PiDCoCAjZGVmaW5lIElHQ19NUlFDX1JTU19G
SUVMRF9JUFY0X1VEUMKgwqDCoCAweDAwNDAwMDAwCj4+PiDCoCAjZGVmaW5lIElHQ19NUlFDX1JT
U19GSUVMRF9JUFY2X1VEUMKgwqDCoCAweDAwODAwMDAwCj4+PiDCoCArLyogUlgtZGVzYyBXcml0
ZS1CYWNrIGZvcm1hdCBSU1MgVHlwZSdzICovCj4+PiArZW51bSBpZ2NfcnNzX3R5cGVfbnVtIHsK
Pj4+ICvCoMKgwqAgSUdDX1JTU19UWVBFX05PX0hBU0jCoMKgwqDCoMKgwqDCoCA9IDAsCj4+PiAr
wqDCoMKgIElHQ19SU1NfVFlQRV9IQVNIX1RDUF9JUFY0wqDCoMKgID0gMSwKPj4+ICvCoMKgwqAg
SUdDX1JTU19UWVBFX0hBU0hfSVBWNMKgwqDCoMKgwqDCoMKgID0gMiwKPj4+ICvCoMKgwqAgSUdD
X1JTU19UWVBFX0hBU0hfVENQX0lQVjbCoMKgwqAgPSAzLAo+Pj4gK8KgwqDCoCBJR0NfUlNTX1RZ
UEVfSEFTSF9JUFY2X0VYwqDCoMKgID0gNCwKPj4+ICvCoMKgwqAgSUdDX1JTU19UWVBFX0hBU0hf
SVBWNsKgwqDCoMKgwqDCoMKgID0gNSwKPj4+ICvCoMKgwqAgSUdDX1JTU19UWVBFX0hBU0hfVENQ
X0lQVjZfRVjCoMKgwqAgPSA2LAo+Pj4gK8KgwqDCoCBJR0NfUlNTX1RZUEVfSEFTSF9VRFBfSVBW
NMKgwqDCoCA9IDcsCj4+PiArwqDCoMKgIElHQ19SU1NfVFlQRV9IQVNIX1VEUF9JUFY2wqDCoMKg
ID0gOCwKPj4+ICvCoMKgwqAgSUdDX1JTU19UWVBFX0hBU0hfVURQX0lQVjZfRVjCoMKgwqAgPSA5
LAo+Pj4gK8KgwqDCoCBJR0NfUlNTX1RZUEVfTUFYwqDCoMKgwqDCoMKgwqAgPSAxMCwKPj4+ICt9
Owo+Pj4gKyNkZWZpbmUgSUdDX1JTU19UWVBFX01BWF9UQUJMRcKgwqDCoMKgwqDCoMKgIDE2Cj4+
PiArI2RlZmluZSBJR0NfUlNTX1RZUEVfTUFTS8KgwqDCoMKgwqDCoMKgIDB4Rgo+Pgo+PiBHRU5N
QVNLKCk/Cj4+Cj4gCj4gaG1tLi4uIEdFTk1BU0soMywwKSBsb29rcyBtb3JlIGNvbmZ1c2luZyB0
byBtZS4gVGhlIG1hc2sgd2UgbmVlZCBoZXJlIGlzCj4gc28gc2ltcGxlIHRoYXQgSSBwcmVmZXIg
bm90IHRvIGNvbXBsaWNhdGUgdGhpcyB3aXRoIEdFTk1BU0suCj4gCj4+PiArCj4+PiArLyogaWdj
X3Jzc190eXBlIC0gUnggZGVzY3JpcHRvciBSU1MgdHlwZSBmaWVsZCAqLwo+Pj4gK3N0YXRpYyBp
bmxpbmUgdTggaWdjX3Jzc190eXBlKHVuaW9uIGlnY19hZHZfcnhfZGVzYyAqcnhfZGVzYykKPj4K
Pj4gV2h5IHVzZSB0eXBlcyBzaG9ydGVyIHRoYW4gdTMyIG9uIHRoZSBzdGFjaz8KPiAKPiBDaGFu
Z2luZyB0byB1MzIgaW4gVjIKPiAKPj4gV2h5IHRoaXMgdW5pb24gaXMgbm90IGNvbnN0IGhlcmUs
IHNpbmNlIHRoZXJlIGFyZSBubyBtb2RpZmljYXRpb25zPwo+IAo+IFN1cmUKPiAKPj4+ICt7Cj4+
PiArwqDCoMKgIC8qIFJTUyBUeXBlIDQtYml0IG51bWJlcjogMC05IChhYm92ZSA5IGlzIHJlc2Vy
dmVkKSAqLwo+Pj4gK8KgwqDCoCByZXR1cm4gcnhfZGVzYy0+d2IubG93ZXIubG9fZHdvcmQuaHNf
cnNzLnBrdF9pbmZvICYKPj4+IElHQ19SU1NfVFlQRV9NQVNLOwo+Pgo+PiBUaGUgbW9zdCBpbXBv
cnRhbnQgSSB3YW50ZWQgdG8gbWVudGlvbjogZG9lc24ndCB0aGlzIGZ1bmN0aW9uIG1ha2UgdGhl
Cj4+IENQVSByZWFkIHRoZSB1bmNhY2hlZCBmaWVsZCBhZ2Fpbiwgd2hpbGUgeW91IGNvdWxkIGp1
c3QgcmVhZCBpdCBvbmNlCj4+IG9udG8gdGhlIHN0YWNrIGFuZCB0aGVuIGV4dHJhY3QgYWxsIHN1
Y2ggZGF0YSBmcm9tIHRoZXJlPwo+IAo+IEkgcmVhbGx5IGRvbid0IHRoaW5rIHRoaXMgaXMgYW4g
aXNzdWVzIGhlcmUuIFRoZSBpZ2NfYWR2X3J4X2Rlc2MgaXMgb25seQo+IDE2IGJ5dGVzIGFuZCBp
dCBzaG91bGQgYmUgaG90IGluIENQVSBjYWNoZSBieSBub3cuCgpSeCBkZXNjcmlwdG9ycyBhcmUg
bG9jYXRlZCBpbiB0aGUgRE1BIGNvaGVyZW50IHpvbmUgKGFsbG9jYXRlZCB2aWEKZG1hX2FsbG9j
X2NvaGVyZW50KCkpLCBJIGFtIG1pc3Npbmcgc29tZXRoaW5nPyBCZWNhdXNlIEkgd2FzIChJIGFt
KSBzdXJlCkNQVSBkb2Vzbid0IGNhY2hlIGFueXRoaW5nIGZyb20gaXQgKGFuZCBkb2Vzbid0IHJl
b3JkZXIgcmVhZHMvd3JpdGVzCmZyb20vdG8pLiBJIHRob3VnaHQgdGhhdCdzIHRoZSBwb2ludCBv
ZiBjb2hlcmVudCB6b25lcyAtLSB5b3UgbWF5IHRhbGsKdG8gaGFyZHdhcmUgd2l0aG91dCBuZWVk
aW5nIGZvciBzeW5jaW5nLi4uCgo+IAo+IFRvIGF2b2lkIHRoZSBtb3Z6eCBJIGhhdmUgY2hhbmdl
ZCB0aGlzIHRvIGRvIGEgdTMyIHJlYWQgaW5zdGVhZC4KPiAKPj4+ICt9Cj4+PiArCj4+PiArLyog
UGFja2V0IGhlYWRlciB0eXBlIGlkZW50aWZpZWQgYnkgaGFyZHdhcmUgKHdoZW4gQklUKDExKSBp
cyB6ZXJvKS4KPj4+ICsgKiBFdmVuIHdoZW4gVURQIHBvcnRzIGFyZSBub3QgcGFydCBvZiBSU1Mg
aGFzaCBIVyBzdGlsbCBwYXJzZSBhbmQKPj4+IG1hcmsgVURQIGJpdHMKPj4+ICsgKi8KPj4+ICtl
bnVtIGlnY19wa3RfdHlwZV9iaXRzIHsKPj4+ICvCoMKgwqAgSUdDX1BLVF9UWVBFX0hEUl9JUFY0
wqDCoMKgID3CoMKgwqAgQklUKDApLAo+Pj4gK8KgwqDCoCBJR0NfUEtUX1RZUEVfSERSX0lQVjRf
V0lUSF9PUFQ9wqDCoMKgIEJJVCgxKSwgLyogSVB2NCBIZHIgaW5jbHVkZXMKPj4+IElQIG9wdGlv
bnMgKi8KPj4+ICvCoMKgwqAgSUdDX1BLVF9UWVBFX0hEUl9JUFY2wqDCoMKgID3CoMKgwqAgQklU
KDIpLAo+Pj4gK8KgwqDCoCBJR0NfUEtUX1RZUEVfSERSX0lQVjZfV0lUSF9FWFQ9wqDCoMKgIEJJ
VCgzKSwgLyogSVB2NiBIZHIgaW5jbHVkZXMKPj4+IGV4dGVuc2lvbnMgKi8KPj4+ICvCoMKgwqAg
SUdDX1BLVF9UWVBFX0hEUl9MNF9UQ1DCoMKgwqAgPcKgwqDCoCBCSVQoNCksCj4+PiArwqDCoMKg
IElHQ19QS1RfVFlQRV9IRFJfTDRfVURQwqDCoMKgID3CoMKgwqAgQklUKDUpLAo+Pj4gK8KgwqDC
oCBJR0NfUEtUX1RZUEVfSERSX0w0X1NDVFA9wqDCoMKgIEJJVCg2KSwKPj4+ICvCoMKgwqAgSUdD
X1BLVF9UWVBFX0hEUl9ORlPCoMKgwqAgPcKgwqDCoCBCSVQoNyksCj4+PiArwqDCoMKgIC8qIEFi
b3ZlIG9ubHkgdmFsaWQgd2hlbiBCSVQoMTEpIGlzIHplcm8gKi8KPj4+ICvCoMKgwqAgSUdDX1BL
VF9UWVBFX0wywqDCoMKgwqDCoMKgwqAgPcKgwqDCoCBCSVQoMTEpLAo+Pj4gK8KgwqDCoCBJR0Nf
UEtUX1RZUEVfVkxBTsKgwqDCoCA9wqDCoMKgIEJJVCgxMiksCj4+PiArwqDCoMKgIElHQ19QS1Rf
VFlQRV9NQVNLwqDCoMKgID3CoMKgwqAgMHgxRkZGLCAvKiAxMy1iaXRzICovCj4+Cj4+IEFsc28g
R0VOTUFTSygpLgo+IAo+IEdFTk1BU0sgd291bGQgbWFrZSBtb3JlIHNlbnNlIGhlcmUuCj4gCj4+
PiArfTsKPj4+ICsKPj4+ICsvKiBpZ2NfcGt0X3R5cGUgLSBSeCBkZXNjcmlwdG9yIFBhY2tldCB0
eXBlIGZpZWxkICovCj4+PiArc3RhdGljIGlubGluZSB1MTYgaWdjX3BrdF90eXBlKHVuaW9uIGln
Y19hZHZfcnhfZGVzYyAqcnhfZGVzYykKPj4KPj4gQWxzbyBzaG9ydCB0eXBlcyBhbmQgY29uc3Rz
Lgo+Pgo+IAo+IEZpeGVkIGluIFYyCj4gCj4+PiArewo+Pj4gK8KgwqDCoCB1MzIgZGF0YSA9IGxl
MzJfdG9fY3B1KHJ4X2Rlc2MtPndiLmxvd2VyLmxvX2R3b3JkLmRhdGEpOwo+Pj4gK8KgwqDCoCAv
KiBQYWNrZXQgdHlwZSBpcyAxMy1iaXRzIC0gYXMgYml0cyAoMTY6NCkgaW4gbG93ZXIubG9fZHdv
cmQqLwo+Pj4gK8KgwqDCoCB1MTYgcGt0X3R5cGUgPSAoZGF0YSA+PiA0KSAmIElHQ19QS1RfVFlQ
RV9NQVNLOwo+Pgo+PiBQZXJmZWN0IGNhbmRpZGF0ZSBmb3IgRklFTERfR0VUKCkuIE5vLCBldmVu
IGZvciBsZTMyX2dldF9iaXRzKCkuCj4gCj4gSSBhZGp1c3RlZCB0aGlzLCBidXQgSSBjb3VsZCBu
b3QgZmluZCBhIGNlbnRyYWwgZGVmaW5lIGZvciBGSUVMRF9HRVQKPiAoYnV0IG1hbnkgZHJpdmVy
cyBvcGVuIGNvZGUgdGhpcykuCgo8bGludXgvYml0ZmllbGQuaD4uIEl0IGhhcyBGSUVMRF97R0VU
LFBSRVB9KCkgYW5kIGFsc28gYnVpbGRzCnt1LF9fbGUsX19iZX17OCwxNiwzMn1fe2VuY29kZSxn
ZXQscmVwbGFjZX1fYml0cygpIHZpYSBtYWNybyAodGhlIGxhdHRlcgpkb2Vzbid0IGdldCBpbmRl
eGVkIGJ5IEVsaXhpciwgYXMgaXQgZG9lc24ndCBwYXJzZSBmdW5jdGlvbnMgYnVpbHQgdmlhCm1h
Y3JvcykuCgo+IAo+PiBBbHNvIG15IG5vdGUgYWJvdmUgYWJvdXQgZXhjZXNzaXZlIGV4cGVuc2l2
ZSByZWFkcy4KPj4KPj4+ICsKPj4+ICvCoMKgwqAgcmV0dXJuIHBrdF90eXBlOwo+Pj4gK30KPj4+
ICsKPj4+IMKgIC8qIEludGVycnVwdCBkZWZpbmVzICovCj4+PiDCoCAjZGVmaW5lIElHQ19TVEFS
VF9JVFLCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDY0OCAvKiB+NjAwMCBpbnRzL3NlYyAqLwo+Pj4g
wqAgI2RlZmluZSBJR0NfNEtfSVRSwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA5ODAKPj4+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYwo+Pj4gYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYwo+Pj4gaW5kZXggOGI1NzJj
ZDJjMzUwLi40MmEwNzI1MDlkMmEgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pZ2MvaWdjX21haW4uYwo+Pj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWdjL2lnY19tYWluLmMKPj4+IEBAIC0xNjc3LDE0ICsxNjc3LDQwIEBAIHN0YXRpYyB2b2lk
IGlnY19yeF9jaGVja3N1bShzdHJ1Y3QgaWdjX3JpbmcKPj4+ICpyaW5nLAo+Pj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGxlMzJfdG9fY3B1KHJ4X2Rlc2MtPndiLnVwcGVyLnN0YXR1c19lcnJv
cikpOwo+Pj4gwqAgfQo+Pj4gwqAgKy8qIE1hcHBpbmcgSFcgUlNTIFR5cGUgdG8gZW51bSBwa3Rf
aGFzaF90eXBlcyAqLwo+Pj4gK3N0cnVjdCBpZ2NfcnNzX3R5cGUgewo+Pj4gK8KgwqDCoCB1OCBo
YXNoX3R5cGU7IC8qIGNhbiBjb250YWluIGVudW0gcGt0X2hhc2hfdHlwZXMgKi8KPj4KPj4gV2h5
IG1ha2UgYSBzdHJ1Y3QgZm9yIG9uZSBmaWVsZD8gKyBzaG9ydCB0eXBlIG5vdGUKPj4KPj4+ICt9
IGlnY19yc3NfdHlwZV90YWJsZVtJR0NfUlNTX1RZUEVfTUFYX1RBQkxFXSA9IHsKPj4+ICvCoMKg
wqAgW0lHQ19SU1NfVFlQRV9OT19IQVNIXS5oYXNoX3R5cGXCoMKgwqDCoMKgID0gUEtUX0hBU0hf
VFlQRV9MMiwKPj4+ICvCoMKgwqAgW0lHQ19SU1NfVFlQRV9IQVNIX1RDUF9JUFY0XS5oYXNoX3R5
cGXCoMKgwqDCoMKgID0gUEtUX0hBU0hfVFlQRV9MNCwKPj4+ICvCoMKgwqAgW0lHQ19SU1NfVFlQ
RV9IQVNIX0lQVjRdLmhhc2hfdHlwZcKgwqDCoMKgwqAgPSBQS1RfSEFTSF9UWVBFX0wzLAo+Pj4g
K8KgwqDCoCBbSUdDX1JTU19UWVBFX0hBU0hfVENQX0lQVjZdLmhhc2hfdHlwZcKgwqDCoMKgwqAg
PSBQS1RfSEFTSF9UWVBFX0w0LAo+Pj4gK8KgwqDCoCBbSUdDX1JTU19UWVBFX0hBU0hfSVBWNl9F
WF0uaGFzaF90eXBlwqDCoMKgwqDCoCA9IFBLVF9IQVNIX1RZUEVfTDMsCj4+PiArwqDCoMKgIFtJ
R0NfUlNTX1RZUEVfSEFTSF9JUFY2XS5oYXNoX3R5cGXCoMKgwqDCoMKgID0gUEtUX0hBU0hfVFlQ
RV9MMywKPj4+ICvCoMKgwqAgW0lHQ19SU1NfVFlQRV9IQVNIX1RDUF9JUFY2X0VYXS5oYXNoX3R5
cGUgPSBQS1RfSEFTSF9UWVBFX0w0LAo+Pj4gK8KgwqDCoCBbSUdDX1JTU19UWVBFX0hBU0hfVURQ
X0lQVjRdLmhhc2hfdHlwZcKgwqDCoMKgwqAgPSBQS1RfSEFTSF9UWVBFX0w0LAo+Pj4gK8KgwqDC
oCBbSUdDX1JTU19UWVBFX0hBU0hfVURQX0lQVjZdLmhhc2hfdHlwZcKgwqDCoMKgwqAgPSBQS1Rf
SEFTSF9UWVBFX0w0LAo+Pj4gK8KgwqDCoCBbSUdDX1JTU19UWVBFX0hBU0hfVURQX0lQVjZfRVhd
Lmhhc2hfdHlwZSA9IFBLVF9IQVNIX1RZUEVfTDQsCj4+PiArwqDCoMKgIFsxMF0uaGFzaF90eXBl
ID0gUEtUX0hBU0hfVFlQRV9MMiwgLyogUlNTIFR5cGUgYWJvdmUgOQo+Pj4gIlJlc2VydmVkIiBi
eSBIVyAqLwo+Pj4gK8KgwqDCoCBbMTFdLmhhc2hfdHlwZSA9IFBLVF9IQVNIX1RZUEVfTDIsCj4+
PiArwqDCoMKgIFsxMl0uaGFzaF90eXBlID0gUEtUX0hBU0hfVFlQRV9MMiwKPj4+ICvCoMKgwqAg
WzEzXS5oYXNoX3R5cGUgPSBQS1RfSEFTSF9UWVBFX0wyLAo+Pj4gK8KgwqDCoCBbMTRdLmhhc2hf
dHlwZSA9IFBLVF9IQVNIX1RZUEVfTDIsCj4+PiArwqDCoMKgIFsxNV0uaGFzaF90eXBlID0gUEtU
X0hBU0hfVFlQRV9MMiwKPj4KPj4gV2h5IGRlZmluZSB0aG9zZSBlbXB0eSBpZiB5b3UgY291bGQg
ZG8gYSBib3VuZCBjaGVjayBpbiB0aGUgY29kZQo+PiBpbnN0ZWFkPyBFLmcuIGBpZiAodW5saWtl
bHkoYmlnZ2VyX3RoYW5fOSkpIHJldHVybiBQS1RfSEFTSF9UWVBFX0wyYC4KPiAKPiBIYXZpbmcg
YSBicmFuY2ggZm9yIHRoaXMgaXMgbGlrZWx5IHNsb3dlci7CoCBPbiBnb2Rib2x0IEkgc2VlIHRo
YXQgdGhpcwo+IGdlbmVyYXRlcyBzdWJvcHRpbWFsIGFuZCBsYXJnZXIgY29kZS4KCkJ1dCB5b3Ug
aGF2ZSB0byB2ZXJpZnkgSFcgb3V0cHV0IGFueXdheSwgcmlnaHQ/IE9yIHdvdWxkIGxpa2UgdG8g
cmVseSBvbgp0aGF0IG9uIHNvbWUgd2VpcmQgcmV2aXNpb24gaXQgd29uJ3Qgc3BpdCBCSVQoNjkp
IG9uIHlvdT8KCj4gCj4gCj4+PiArfTsKPj4+ICsKPj4+IMKgIHN0YXRpYyBpbmxpbmUgdm9pZCBp
Z2NfcnhfaGFzaChzdHJ1Y3QgaWdjX3JpbmcgKnJpbmcsCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHVuaW9uIGlnY19hZHZfcnhfZGVzYyAqcnhfZGVzYywKPj4+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IHNrX2J1ZmYg
KnNrYikKPj4+IMKgIHsKPj4+IC3CoMKgwqAgaWYgKHJpbmctPm5ldGRldi0+ZmVhdHVyZXMgJiBO
RVRJRl9GX1JYSEFTSCkKPj4+IC3CoMKgwqDCoMKgwqDCoCBza2Jfc2V0X2hhc2goc2tiLAo+Pj4g
LcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGxlMzJfdG9fY3B1KHJ4X2Rlc2MtPndi
Lmxvd2VyLmhpX2R3b3JkLnJzcyksCj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgUEtUX0hBU0hfVFlQRV9MMyk7Cj4+PiArwqDCoMKgIGlmIChyaW5nLT5uZXRkZXYtPmZlYXR1
cmVzICYgTkVUSUZfRl9SWEhBU0gpIHsKPj4KPj4gwqDCoMKgwqBpZiAoIShmZWF0dXJlICYgSEFT
SCkpCj4+IMKgwqDCoMKgwqDCoMKgIHJldHVybjsKPj4KPj4gYW5kIC0xIGluZGVudCBsZXZlbD8K
PiAKPiBVc3VhbGx5LCB5ZXMsIEkgYWxzbyBwcmVmZXIgZWFybHkgcmV0dXJuIHN0eWxlIGNvZGUu
Cj4gRm9yIG9uZSBJIGp1c3QgZm9sbG93ZWQgdGhlIGV4aXN0aW5nIHN0eWxlLgoKSSdkIG5vdCBy
ZWNvbW1lbmQgImtlZXAgdGhlIGV4aXN0aW5nIHN0eWxlIiBvZiBJbnRlbCBkcml2ZXJzIC0tIG5v
dApzb21ldGhpbmcgSSdkIGxpa2UgdG8ga2VlcCBhcyBpcyA6RAoKPiAKPiBTZWNvbmQsIEkgdHJp
ZWQgdG8gY29kZSBpdCB1cCwgYnV0IGl0IGxvb2tzIHVnbHkgaW4gdGhpcyBjYXNlLCBhcyB0aGUK
PiB2YXJpYWJsZSBkZWZpbmVzIG5lZWQgdG8gZ2V0IG1vdmVkIG91dHNpZGUgdGhlIGlmIHN0YXRl
bWVudC4KPiAKPj4+ICvCoMKgwqDCoMKgwqDCoCB1MzIgcnNzX2hhc2ggPSBsZTMyX3RvX2NwdShy
eF9kZXNjLT53Yi5sb3dlci5oaV9kd29yZC5yc3MpOwo+Pj4gK8KgwqDCoMKgwqDCoMKgIHU4wqAg
cnNzX3R5cGUgPSBpZ2NfcnNzX3R5cGUocnhfZGVzYyk7Cj4+PiArwqDCoMKgwqDCoMKgwqAgZW51
bSBwa3RfaGFzaF90eXBlcyBoYXNoX3R5cGU7Cj4+PiArCj4+PiArwqDCoMKgwqDCoMKgwqAgaGFz
aF90eXBlID0gaWdjX3Jzc190eXBlX3RhYmxlW3Jzc190eXBlXS5oYXNoX3R5cGU7Cj4+PiArwqDC
oMKgwqDCoMKgwqAgc2tiX3NldF9oYXNoKHNrYiwgcnNzX2hhc2gsIGhhc2hfdHlwZSk7Cj4+PiAr
wqDCoMKgIH0KPj4+IMKgIH0KPj4KPj4gWy4uLl0KPj4KPj4gVGhhbmtzLAo+PiBPbGVrCj4+Cj4g
CgpUaGFua3MsCk9sZWsKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3Ns
Lm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJl
ZC1sYW4K
