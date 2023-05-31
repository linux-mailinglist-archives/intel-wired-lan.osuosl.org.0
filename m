Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC4B71865F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 May 2023 17:30:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 964E481F4B;
	Wed, 31 May 2023 15:30:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 964E481F4B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685547051;
	bh=Jh+XvzsBo/TaEtXh1wvNgv6v+rSFmtGDt/4grV0H+XM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GOLAIiYHHPJg/zemeVJvwZnnIqeGXOI6JMu9GXoEHFl3XXOo4SYyX71ZUslG68amf
	 RiFst9gikZBHKqNPU1pxtwaHjz8nckR/IfCMzLzfh5LQm2Z/lFNUuqYB478WBIWys0
	 Xn1vi0McPR6vp8NmWZRjeKzduHLUGARQ8MUoChfVDE26cqd3SYBagLb8xYS1XyxczW
	 UBXVXoUnfUFGqJxqkS5e95eq4BNLsQi+1kKOid8UZTusyMU/Lx9tj7iUyFW89N6Ws5
	 7Q0k316td39jmGax7nGAfKxJHXs5W7THw52cNwawdLagEbbb8IH2m/xePSUt8PGWy7
	 vmJN5vYxOLi6g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rZVtL55nQnzn; Wed, 31 May 2023 15:30:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 44CD281EC5;
	Wed, 31 May 2023 15:30:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 44CD281EC5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0F4C51BF5DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 15:30:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DA8FD60BE7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 15:30:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DA8FD60BE7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Yxfmbl3jzIF3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 May 2023 15:30:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CDD4F60B71
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CDD4F60B71
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 15:30:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="421043328"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="421043328"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 08:30:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="819362796"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="819362796"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP; 31 May 2023 08:30:41 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 31 May 2023 08:30:40 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 31 May 2023 08:30:40 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 31 May 2023 08:30:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RaOLXIXBMvSCO/IMxbmx4XEBSarjbOsqXlQVglXZtAzrR6z8vtNpumHuBhfxIbNsAcuj8KnAhHyfIjTmzt+X0GIjqzCS0GB+FCFx8otumHciAiDZPKuIZad1XRVvlIePq0FtyIlc8Rj9z3IRZ/bFhBAJuTbhtCEiJfMNzkElwb5QdqPYb5D3z3ZYPIGxu0AL2U7w2HEkJuv7fZbzWfGIckAGH+7AQeUEJCk6uOYG/gjgxxsp0pqjHwaJaU5k7bKayaf2qo5QFYcDzKlR2fz/02xmFxBFb5LWzHmgbVc4GmCCwXNmrwTqXgTNXGbD3GLkQ3F1T6u9fSL2gq94nn3WMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ueya3HYWuDg8pZ5t0rv4V8P3FlBl4DJZG8x6fIsXIsU=;
 b=YvNxMLrF1bmqoHD+Uy+Cy93thUaML88V7f6A2qH873psr178A4eeBj9NjSzbe7Cm6wZMtt0/ATaLlgKtY8nnpa9Ij/1GEES6/fubr4CH+TeVK53uHClDjLQ10YUMjQzFOeTZGm72iJYUvW69QE0EMdZFdHQi52cqHSbCgtLM12jkSFZQ1Z1iMxLriO0rcoz23YFAXBkjxWEdLRhbteHLXww79cOR3M2vteUCJbtgCHmMFvCRfsER//d9bZq76NThewi7WsSlYlNiiuukBnofgsX/PepZtU7IYSj41/Eci0B8jEnA6axIbbaR8/Hc9ag4aW6tFEQ4kxEyF30+ZG4L0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by MW4PR11MB6691.namprd11.prod.outlook.com (2603:10b6:303:20f::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.23; Wed, 31 May
 2023 15:30:38 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::64d9:76b5:5b43:1590]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::64d9:76b5:5b43:1590%2]) with mapi id 15.20.6433.022; Wed, 31 May 2023
 15:30:37 +0000
Message-ID: <ca5098cc-6c02-d825-4365-4daca3b4f63f@intel.com>
Date: Wed, 31 May 2023 17:29:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: Alexander H Duyck <alexander.duyck@gmail.com>
References: <20230530150035.1943669-1-aleksander.lobakin@intel.com>
 <20230530150035.1943669-7-aleksander.lobakin@intel.com>
 <81d8da838601a2029e97937a952652039285cb4e.camel@gmail.com>
 <a6a29f13-68ae-c7f3-e4c2-30e23eabc888@intel.com>
In-Reply-To: <a6a29f13-68ae-c7f3-e4c2-30e23eabc888@intel.com>
X-ClientProxiedBy: FR0P281CA0169.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b4::11) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|MW4PR11MB6691:EE_
X-MS-Office365-Filtering-Correlation-Id: 621da703-893b-49d3-3652-08db61ebfbdf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CUOwFnVFWUihgfLyQ6Yk9fuq5cgDGisDBq1WAW4OjiO5QDGvWhJuTfIoF07bt9vf1RSfR8slZVhGdtX4UMijQ9t9yiA8hk65V93ScjHxtEFq88V3rKzNwF+AjuOJilex5/ywakSCAbQEQulVjs2jZcOtFqKLBi5H4+1LPK9Or4jBes2IzwnYhcpRrfwmjA7dVEhwq1Yy8XoRNDnAHGxKwSzpETVMsDM7Ns4IAnhOAVGadqZy29wX4ca3tliXnMT3ecownWfwByG0wG+YNFbr40jgqW6HBrY8wQ4kbDvGcoNkW/EqjzYyc91/7a/UCWgCj3yZa8WmOBiN47U5vIWHAoKnMILGUf6pvKxEeDGU78B/IvtO5lLiRZYcym+4/LwLsxM6F5K2qmSErxPCd0b09CcGTSRcmjpo6aKstJAGKbe6IMi6mQBMbFOqbF1JSN2hqNNZyFAVEWgk+/N0BYogrt8vREBcDJeYM6jIyPiNUtJdYQrgluwRfYbyBPNJSx+ltxFF8N79H5aK9iJE//yEhrGbukPx8AUPHBpOukN2+hJWJGtv81EPl8GIW37E0/d1nViZI9AfsXICo1ta+R3/2zf6pX2WpOX5b/vZF/ULPOepR+Y4yFKc7/izMxO6teOq65LmVr6nduXhNhubIiUJnA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(376002)(346002)(366004)(136003)(451199021)(31686004)(6486002)(66946007)(6916009)(66476007)(66556008)(54906003)(4326008)(316002)(478600001)(86362001)(31696002)(36756003)(186003)(6506007)(6512007)(26005)(83380400001)(41300700001)(8936002)(8676002)(7416002)(2906002)(5660300002)(2616005)(82960400001)(38100700002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NzVlQ0xKWFJqb1hHcFBUUDl2VzM2M0lPRUp2dE9QTU54TTJ3U0JWc0lLZkVH?=
 =?utf-8?B?ejF5bUExVml3Mi8xUWZmRmpCUG9ZZWcvMlBTM3orL2wrSEJmejJGaFpTYnJ2?=
 =?utf-8?B?L3JNaWhsVkJLUmRNYmV5OVBWdk5DS1M3Mk1uLzl2bWRGeEVCa2NUNUFYSC8y?=
 =?utf-8?B?TVczbU81YzFRbnI4cE1RbXkyOGJuMkdCMTNGV2Y4VGEzbmV6T3FuZU4ydzJm?=
 =?utf-8?B?V3hOSGtjTXByMFV5K3ZQdGdKN2ZSRFI1bW9FSzFQaHBFNHU1enE0UTFEdnNi?=
 =?utf-8?B?RThTVWRLRWhZUVhxWTM4MG5aejNKbFFwT04yOFZlOWtUTFMrblZvVUhTUVZG?=
 =?utf-8?B?NGlhcG5jbExZU01YMzN3c1VHMDI5NjhHb3Q0T25BaEIzQm1XUFJYWVN6UEk0?=
 =?utf-8?B?ODFFRWd4VzNvQjlISVgxSTZkbjE4QmtTcWsvRmhxNkliaWlNMURyQ2xoSTZ6?=
 =?utf-8?B?c2d1Zzk2ZUVHdkV6Mnl0dGJvMFMxRzdFcjB4U2UwMFl0UFJGdmhlLzhXakRz?=
 =?utf-8?B?eFFnUStoVVY0MVJBazRZbFVqMm1mamVZOUFKZWpJMzEvbXQzMHBJTkpodUFX?=
 =?utf-8?B?VW1xVGRqLy8zQVJvdmlnM0YzVVFZekxqUHNTMStQTS8yT3VINExlb0dNMkp4?=
 =?utf-8?B?eXBIVzFHZUVFUWRsWXlaK0VHWlZWMUhVNDVURzQvanBqWXVIQmo4RGE4NzZi?=
 =?utf-8?B?bFBFS3dwUEwwWEpEVzc4eGx3bnkzdHhla1FURDZ4NFNIVFVEcmh2Vm0xUDJs?=
 =?utf-8?B?bjgvYjZ5K1pkTFNodVRqV3duU0M0K0RlU2RNamJyTnVYaGVHQTlJMjVDZUxr?=
 =?utf-8?B?UHlXRUFORnpMa05RMVFVdDV0QmR2R3dGRjdBbWhOOGRxb1FaS1pmZ0RuV1FH?=
 =?utf-8?B?SFZVYzV3SHM2cVMxZ3JheXJrSnBQTHJnOVRsT21lck1ReE0zZWh1UEJON1Zh?=
 =?utf-8?B?N2lyZ2FFa1Mzam1KNWdaTDkzQ0tRZzZwbEVCTTRLOWtFaWZLWkpSWWdUVXpu?=
 =?utf-8?B?d2ZtOXJuVFJKWTlZWHY1RkpBcWx0VzhEOTR0bmE3cE1OcUxHVjk0cjJrbWFr?=
 =?utf-8?B?TEpTWVVjUVd4cTJCVFNhYWJQWk9LR3BRenZFeERSQ2RGTHQrNHVGUjVGYkFj?=
 =?utf-8?B?eG43VHdqdXRHN2dkSlp3cEdXQkpGV2JzMWRvL1Y2UzhjQWFrRHNSYVdraUt6?=
 =?utf-8?B?T2hLcFBXbEdtZWNCbHFEMTdPZzVWK3FSOGdkQ1JaaU9GdWRjenRtQmVvY1o1?=
 =?utf-8?B?U1I1c2FnV3VYQjVORDBZSFpkUCttcVE1TEJIMml1VXExdUl0dDJYZURFRjha?=
 =?utf-8?B?QmhqWHl1bXRaSW9FczhYYnk0QktzU1l1M2ZRMDB0L0M0TUVFaFQ5bFJJdmU2?=
 =?utf-8?B?VHV1SmVCYUMxWGFHdW1lUnFjYkxQNWhZSkhXd2ZqSWg5MFlmQzFHVjVta0d2?=
 =?utf-8?B?VHpud3RYNVgxSnZEbGYvUy9ZSm9JNEowUnVycitzNWlNQllJeW5XR242U1pP?=
 =?utf-8?B?WU5ONnRGSDV4VkJBalhQdWIrT0M4cFM3UHZnRTduVThOUHR2b2l5dU1rRk9i?=
 =?utf-8?B?MGlyTlZxUGd5bVVHYkpOSFNRZXByblJEeE1VYzhWN0o1b05PSWtQc01HQytK?=
 =?utf-8?B?QjZFVTlCNWZuYjFFV1UwYlhzdkRSR21ibFoxMnU1cVdnM1Y5d0ltK1JTbXYz?=
 =?utf-8?B?ZXV2YXFuWEJGZzRHVG9UWmc3NkJNdVhvZEJWYnBIVGVpR1RYVm1lNHRZRk05?=
 =?utf-8?B?Zk9DcFVZcVdSNk5TdnJLNldEbGNtdkV2YmMvQ0xGSE1LSmc2TVhQbU5DRnV2?=
 =?utf-8?B?OWZObkN1Z3RvbEF5cUQwdTdHWEkxQjE0KzJ6Y0VoNnR3Qm1YY1VrRjVpUEJw?=
 =?utf-8?B?R2s2bm1Yc2d2RFNXejV3cVJteTNYYU55NEdjRmRKdGRmbVcwK2IyaSt1N3o1?=
 =?utf-8?B?MzV2Z3JjODRWV0VTVkh4cU9vZU5sWXJ0WDU4VjU5YkxaR3ZvT2pFNVJCZkpj?=
 =?utf-8?B?dGhoYTgvakFvbHFGcUFydGJpZzJvN3JNWUlCNjN6UXc1cTNaajhaYlJGQVNp?=
 =?utf-8?B?bjE3WE42M2k2QkRwWTBOSW9obklUcTUrTEZOSmVwZzNnaTViL2MvbWVWWXV6?=
 =?utf-8?B?a2piQm1CcEtvbEFWS3l2MEFKY3g1UlY2MWxITnFmeWpocXJRL0V6SnNPYUx0?=
 =?utf-8?B?M0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 621da703-893b-49d3-3652-08db61ebfbdf
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 May 2023 15:30:37.6598 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZWUBwnGayQLcCaj2DCDK8ZbgQybw4OgQZfnOR0bshqrJPoE8ug9Z9Db+obabsv6BNZJAht4tX2GPrkQedfm5Umq8ya88uYh/9xZpHUzbHB4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6691
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685547042; x=1717083042;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NyKkc1yf/WAjVdLXMvFBs2vmV9cJEgzsa9lPvU017fk=;
 b=kop5S3lg9wFVBFUqL137N3drAtRIzEpRpUNE8q6AZSLwLwSDLZaM69mZ
 IKSCVcUBDAF7Qs8j3KVQdcN9ZXEy0Jqey1o8yJfdZRcXBXbeODqN+Dfqu
 ujNOY4K5wMmqbMuJX80ILxw8V/n0TyNay650i3JIci3pvGDNCMfiBwxm2
 zh7AOzJuVENhe37JfMJVOMEkR6Sug1AnSyhsbJ7CK87ZKH3i/UGi6MSO6
 RopYAIKcpjLq7hUsqCWrUmw93+/R7XzWx1mOl2I0+3AzQJzbbin54aWHl
 jV3RRQjTDKbJtO8UC09rMCELb/PMVX51e+6A6D0ZzX6HnHNsDN6zZnW2H
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kop5S3lg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 06/12] net: skbuff: don't
 include <net/page_pool.h> into <linux/skbuff.h>
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, Jesper
 Dangaard Brouer <hawk@kernel.org>, Larysa Zaremba <larysa.zaremba@intel.com>,
 netdev@vger.kernel.org, Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 linux-kernel@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogQWxleGFuZGVyIExvYmFraW4gPGFsZWtzYW5kZXIubG9iYWtpbkBpbnRlbC5jb20+CkRh
dGU6IFdlZCwgMzEgTWF5IDIwMjMgMTc6Mjg6MzAgKzAyMDAKCj4gRnJvbTogQWxleGFuZGVyIEgg
RHV5Y2sgPGFsZXhhbmRlci5kdXlja0BnbWFpbC5jb20+Cj4gRGF0ZTogV2VkLCAzMSBNYXkgMjAy
MyAwODoyMTowMyAtMDcwMAo+IAo+PiBPbiBUdWUsIDIwMjMtMDUtMzAgYXQgMTc6MDAgKzAyMDAs
IEFsZXhhbmRlciBMb2Jha2luIHdyb3RlOgo+Pj4gQ3VycmVudGx5LCB0b3VjaGluZyA8bmV0L3Bh
Z2VfcG9vbC5oPiB0cmlnZ2VycyBhIHJlYnVpbGQgb2YgbW9yZSB0aGFuCj4+PiBhIGhhbGYgb2Yg
dGhlIGtlcm5lbC4gVGhhdCdzIGJlY2F1c2UgaXQncyBpbmNsdWRlZCBpbiA8bGludXgvc2tidWZm
Lmg+Lgo+Pj4KPj4+IEluIDZhNWJjZDg0ZTg4NiAoInBhZ2VfcG9vbDogQWxsb3cgZHJpdmVycyB0
byBoaW50IG9uIFNLQiByZWN5Y2xpbmciKSwKPj4+IE1hdHRlbyBpbmNsdWRlZCBpdCB0byBiZSBh
YmxlIHRvIGNhbGwgYSBjb3VwbGUgZnVuY3Rpb25zIGRlZmluZWQgdGhlcmUuCj4+PiBUaGVuLCBp
biA1N2YwNWJjMmFiMjQgKCJwYWdlX3Bvb2w6IGtlZXAgcHAgaW5mbyBhcyBsb25nIGFzIHBhZ2Ug
cG9vbAo+Pj4gb3ducyB0aGUgcGFnZSIpIG9uZSBvZiB0aGUgY2FsbHMgd2FzIHJlbW92ZWQsIHNv
IG9ubHkgb25lIGxlZnQuCj4+PiBJdCdzIGNhbGwgdG8gcGFnZV9wb29sX3JldHVybl9za2JfcGFn
ZSgpIGluIG5hcGlfZnJhZ191bnJlZigpLiBUaGUKPj4+IGZ1bmN0aW9uIGlzIGV4dGVybmFsIGFu
ZCBkb2Vzbid0IGhhdmUgYW55IGRlcGVuZGVuY2llcy4gSGF2aW5nIGluY2x1ZGUKPj4+IG9mIHZl
cnkgbmljaGUgcGFnZV9wb29sLmggb25seSBmb3IgdGhhdCBsb29rcyBsaWtlIGFuIG92ZXJraWxs
Lgo+Pj4gSW5zdGVhZCwgbW92ZSB0aGUgZGVjbGFyYXRpb24gb2YgdGhhdCBmdW5jdGlvbiB0byBz
a2J1ZmYuaCBpdHNlbGYsIHdpdGgKPj4+IGEgc21hbGwgY29tbWVudCB0aGF0IGl0J3MgYSBzcGVj
aWFsIGd1ZXN0IGFuZCBzaG91bGQgbm90IGJlIHRvdWNoZWQuCj4+PiBOb3csIGFmdGVyIGEgZmV3
IGluY2x1ZGUgZml4ZXMgaW4gdGhlIGRyaXZlcnMsIHRvdWNoaW5nIHBhZ2VfcG9vbC5oCj4+PiBv
bmx5IHRyaWdnZXJzIHJlYnVpbGRpbmcgb2YgdGhlIGRyaXZlcnMgdXNpbmcgaXQgYW5kIGEgY291
cGxlIGNvcmUKPj4+IG5ldHdvcmtpbmcgZmlsZXMuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogQWxl
eGFuZGVyIExvYmFraW4gPGFsZWtzYW5kZXIubG9iYWtpbkBpbnRlbC5jb20+Cj4+PiAtLS0KPj4+
ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9lbmdsZWRlci90c25lcF9tYWluLmMgICAgICAgICAgICAg
ICB8IDEgKwo+Pj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ZyZWVzY2FsZS9mZWNfbWFpbi5jICAg
ICAgICAgICAgICAgIHwgMSArCj4+PiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvbWFydmVsbC9vY3Rl
b250eDIvbmljL290eDJfY29tbW9uLmMgfCAxICsKPj4+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9t
YXJ2ZWxsL29jdGVvbnR4Mi9uaWMvb3R4Ml9wZi5jICAgICB8IDEgKwo+Pj4gIGRyaXZlcnMvbmV0
L2V0aGVybmV0L21lbGxhbm94L21seDUvY29yZS9lbi9wYXJhbXMuYyAgICAgIHwgMSArCj4+PiAg
ZHJpdmVycy9uZXQvZXRoZXJuZXQvbWVsbGFub3gvbWx4NS9jb3JlL2VuL3hkcC5jICAgICAgICAg
fCAxICsKPj4+ICBkcml2ZXJzL25ldC93aXJlbGVzcy9tZWRpYXRlay9tdDc2L210NzYuaCAgICAg
ICAgICAgICAgICB8IDEgKwo+Pj4gIGluY2x1ZGUvbGludXgvc2tidWZmLmggICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHwgNCArKystCj4+PiAgaW5jbHVkZS9uZXQvcGFnZV9wb29s
LmggICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAyIC0tCj4+PiAgOSBmaWxlcyBj
aGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Pj4KPj4+Cj4+Cj4+IDwu
Li4+Cj4+Cj4+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9za2J1ZmYuaCBiL2luY2x1ZGUv
bGludXgvc2tidWZmLmgKPj4+IGluZGV4IDU5NTE5MDQ0MTNhYi4uNmQ1ZWVlOTMyYjk1IDEwMDY0
NAo+Pj4gLS0tIGEvaW5jbHVkZS9saW51eC9za2J1ZmYuaAo+Pj4gKysrIGIvaW5jbHVkZS9saW51
eC9za2J1ZmYuaAo+Pj4gQEAgLTMyLDcgKzMyLDYgQEAKPj4+ICAjaW5jbHVkZSA8bGludXgvaWZf
cGFja2V0Lmg+Cj4+PiAgI2luY2x1ZGUgPGxpbnV4L2xsaXN0Lmg+Cj4+PiAgI2luY2x1ZGUgPG5l
dC9mbG93Lmg+Cj4+PiAtI2luY2x1ZGUgPG5ldC9wYWdlX3Bvb2wuaD4KPj4+ICAjaWYgSVNfRU5B
QkxFRChDT05GSUdfTkZfQ09OTlRSQUNLKQo+Pj4gICNpbmNsdWRlIDxsaW51eC9uZXRmaWx0ZXIv
bmZfY29ubnRyYWNrX2NvbW1vbi5oPgo+Pj4gICNlbmRpZgo+Pj4gQEAgLTM0MjIsNiArMzQyMSw5
IEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBza2JfZnJhZ19yZWYoc3RydWN0IHNrX2J1ZmYgKnNrYiwg
aW50IGYpCj4+PiAgCV9fc2tiX2ZyYWdfcmVmKCZza2Jfc2hpbmZvKHNrYiktPmZyYWdzW2ZdKTsK
Pj4+ICB9Cj4+PiAgCj4+PiArLyogSW50ZXJuYWwgZnJvbSBuZXQvY29yZS9wYWdlX3Bvb2wuYywg
ZG8gbm90IHVzZSBpbiBkcml2ZXJzIGRpcmVjdGx5ICovCj4+PiArYm9vbCBwYWdlX3Bvb2xfcmV0
dXJuX3NrYl9wYWdlKHN0cnVjdCBwYWdlICpwYWdlLCBib29sIG5hcGlfc2FmZSk7Cj4+PiArCj4+
PiAgc3RhdGljIGlubGluZSB2b2lkCj4+PiAgbmFwaV9mcmFnX3VucmVmKHNrYl9mcmFnX3QgKmZy
YWcsIGJvb2wgcmVjeWNsZSwgYm9vbCBuYXBpX3NhZmUpCj4+PiAgewo+Pj4gZGlmZiAtLWdpdCBh
L2luY2x1ZGUvbmV0L3BhZ2VfcG9vbC5oIGIvaW5jbHVkZS9uZXQvcGFnZV9wb29sLmgKPj4+IGlu
ZGV4IDEyNmY5ZTI5NDM4OS4uMmE5Y2UyYWE2ZWIyIDEwMDY0NAo+Pj4gLS0tIGEvaW5jbHVkZS9u
ZXQvcGFnZV9wb29sLmgKPj4+ICsrKyBiL2luY2x1ZGUvbmV0L3BhZ2VfcG9vbC5oCj4+PiBAQCAt
MjQwLDggKzI0MCw2IEBAIGlubGluZSBlbnVtIGRtYV9kYXRhX2RpcmVjdGlvbiBwYWdlX3Bvb2xf
Z2V0X2RtYV9kaXIoc3RydWN0IHBhZ2VfcG9vbCAqcG9vbCkKPj4+ICAJcmV0dXJuIHBvb2wtPnAu
ZG1hX2RpcjsKPj4+ICB9Cj4+PiAgCj4+PiAtYm9vbCBwYWdlX3Bvb2xfcmV0dXJuX3NrYl9wYWdl
KHN0cnVjdCBwYWdlICpwYWdlLCBib29sIG5hcGlfc2FmZSk7Cj4+PiAtCj4+PiAgc3RydWN0IHBh
Z2VfcG9vbCAqcGFnZV9wb29sX2NyZWF0ZShjb25zdCBzdHJ1Y3QgcGFnZV9wb29sX3BhcmFtcyAq
cGFyYW1zKTsKPj4+ICAKPj4+ICBzdHJ1Y3QgeGRwX21lbV9pbmZvOwo+Pgo+PiBTbyB0aGUgY29k
ZSBhcy1pcyB3b3Jrcywgc28gSSBhbSBwcm92aWRpbmcgbXkgIlJldmlld2VkLWJ5Ii4KPj4gUmV2
aWV3ZWQtYnk6IEFsZXhhbmRlciBEdXljayA8YWxleGFuZGVyZHV5Y2tAZmIuY29tPgo+Pgo+PiBD
b25zaWRlciB0aGUgcmVzdCBvZiB0aGlzIGEgc3VnZ2VzdGlvbiBvciBhICJuaWNlIHRvIGhhdmUi
Lgo+Pgo+PiBJIHdvbmRlciBpZiB3ZSBzaG91bGRuJ3QgYWxzbyBsb29rIGF0IHJlc3RydWN0dXJp
bmcgdGhlIGZ1bmN0aW9uIGFuZAo+PiBqdXN0IG1vdmluZyBpdCB0byBuZXQvY29yZS9za2J1ZmYu
YyBzb21ld2hlcmUgbmV4dCB0byBza2JfcHBfcmVjeWNsZS4KPj4KPj4gSSBzdXNwZWN0IHdlIGNv
dWxkIGxvb2sgYXQgcHVsbGluZyBwYXJ0cyBvZiBpdCBvdXQgYXMgd2VsbC4gVGhlCj4+IHBwX21h
Z2ljIGNoZWNrIHNob3VsZCBhbHdheXMgYmUgc3VjY2VlZGluZyB1bmxlc3Mgd2UgaGF2ZSBwYWdl
cyBnZXR0aW5nCj4+IHJvdXRlZCB0aGUgd3Jvbmcgd2F5IHNvbWV3aGVyZS4gU28gbWF5YmUgd2Ug
c2hvdWxkIGxvb2sgYXQgcHVsbGluZyBpdAo+PiBvdXQgYW5kIG1vdmluZyBpdCB0byBhbm90aGVy
IHBhcnQgb2YgdGhlIHBhdGggc3VjaCBhcwo+PiBfX3BhZ2VfcG9vbF9wdXRfcGFnZSgpIGFuZCBt
YWtpbmcgaXQgYSBiaXQgbW9yZSB2aXNpYmxlIHRvIGNhdGNoIHRob3NlCj4+IGNhc2VzLgo+IAo+
IEkndmUganVzdCBub3RpY2VkIHRoYXQgdGhpcyBmdW5jdGlvbiBpcyBleHBvcnRlZCB3aXRoIG5v
IG1vZHVsYXIgdXNlcnMgLl8uCgpeXl4gcGxzIGlnbm9yZSB0aGlzIG5vbnNlbnNlIGxvbAoKPiBB
bnl3YXksIEkgZmVlbCBsaWtlIGl0J3MgYSBnb29kIHdheSB0byBnby4gVGhlIGVudGlyZSBmdW5j
dGlvbiwgYXBhcnQKPiBmcm9tIHRoZSBtYWdpYyBjaGVjaywgY2FuIGJlIG1vdmVkIGFuZCBtYWRl
IHN0YXRpYy4gQW5kIHRoZSBtYWdpYyBjYW4gYmUKPiBtb3ZlZCBvbmUgbGV2ZWwgdXAsIHJpZ2h0
Li4uCj4gdjQgd2lsbCBoYXBwZW4gZWl0aGVyIHdheSBJIGd1ZXNzLCBzbyBtYXliZSBJJ2xsIHJl
cGxhY2UgdGhpcyBwYXRjaCB3aXRoCj4gdGhhdCBraW5kYSBjaGFuZ2UuCj4gCj4gVGhhbmtzLAo+
IE9sZWvCoApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0
dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
