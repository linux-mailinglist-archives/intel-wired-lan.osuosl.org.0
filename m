Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 69AE17900FB
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Sep 2023 18:53:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2AFF640302;
	Fri,  1 Sep 2023 16:53:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2AFF640302
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693587195;
	bh=C+Hi4txjXaeL4BmMfkciuUEp7SfD7YjC6kt6GaFYi30=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BbeBMeENzfFMzz0TWRsF56Ub0SgY7RLrVf05cOWph/477u6BpaWjAQZbhC8yfKSEb
	 3D18zAdKxtK4+2Kr85X4mVwFT6uuuACT4x5JsXIleIF9d+2cR5S4DTxpZNsMhG6LWj
	 U5hJZKWo9bVs3O5ffpK9Xd08HodRHxU3qmjiDLjH5meSZcEU8gm6lzOtWoJdFCZ/sC
	 QGV2QAYwD5lyBUT+86xMFUYakzJqsUW6jGdtjDUfZVxQPpvY8GDz7jpkg8ZsPoJWh/
	 cQCsR6hdvLHvnNX/jbkDgtJrQ+g6QzhupWrH9PKMzetnIYvSQwF41Jn5dlPgrtUbWA
	 wnieBluivttiw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7PdLKxHexzd7; Fri,  1 Sep 2023 16:53:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B15AA4014F;
	Fri,  1 Sep 2023 16:53:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B15AA4014F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8B92D1BF2C0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Sep 2023 16:53:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 635BE613C4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Sep 2023 16:53:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 635BE613C4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C0lLZvSMVpfu for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Sep 2023 16:53:07 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6D11F613CD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Sep 2023 16:53:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6D11F613CD
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="442660148"
X-IronPort-AV: E=Sophos;i="6.02,220,1688454000"; d="scan'208";a="442660148"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 09:52:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="689831794"
X-IronPort-AV: E=Sophos;i="6.02,220,1688454000"; d="scan'208";a="689831794"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Sep 2023 09:52:35 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 1 Sep 2023 09:52:35 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 1 Sep 2023 09:52:34 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 1 Sep 2023 09:52:34 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 1 Sep 2023 09:52:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AZDpFydNHWHWCVqEyaNEVueiqpOOEKApF2NGCDB6hS8DhAFUgXzB3b31z3Yrv0VENlEld3IYvZ9W6a3kJKNv0xuJ2z77HpFUsU995pDKfa1Ab4lwdFVnv5fYAdvN5TnGwU7/PKopIMrISkupHpU+dpTp5HlE/TthFbwdjDySsadOaGemsCTqbv+EaXeSa3ZOG4QbR9EcAUoBUum+p8ZGaLxSM9H8jvgoAM+3Z8o7wEoefDyPZzsK2QuhBOS8M/D0+hJSIjI5SvHSzgklJRbp18R2Bxphx0/R8PURW8cfzJGGfi5ikyo/v1IfqYbpyHQIQvYRjv5QIiOtEit1EmId0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SsINbttb0duvwjZNgriuf36GBEl8z+f+8s+fjp94R80=;
 b=CMDSwW3RPbLdAkvq5F1jEbcQNBf23QAWnFGUc2niNauODyVQx7GCqFUuMyx+TBFNxuGzHkXKcLDEg2TPH/9Oh7/vfzumNBdELt/GODO2cWJjY/YA9zzsRwh+2fw6EWaOdMc6Xam44S+MiSRzMC0p8ahy66t3Es3uYTrJEdPrJ6Ln/mY5gA4rYH8I7EkzoS7g4VvLFEFbt7Jcxpop/AWk4gwFGpCyOzVwPEwWreWHnZCFz6956CS94a/RK5HXU2GXk0MR4Q+HYklE35qtj4gr7suNHcdFWJKhsVUXcc2LAsf43bhJychE9LGldzPsfGQa1IYDNxHfYSOfGpQAUeH86Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by LV3PR11MB8457.namprd11.prod.outlook.com (2603:10b6:408:1b7::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.35; Fri, 1 Sep
 2023 16:52:33 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::3e89:54d7:2c3b:d1b0]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::3e89:54d7:2c3b:d1b0%6]) with mapi id 15.20.6699.034; Fri, 1 Sep 2023
 16:52:33 +0000
Message-ID: <1e1c444e-0186-01ec-b0ca-cb4e67a53751@intel.com>
Date: Fri, 1 Sep 2023 10:52:26 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
References: <20230831231859.3480459-1-ahmed.zaki@intel.com>
 <20230831231859.3480459-4-ahmed.zaki@intel.com>
 <PH0PR11MB57823008FBDCD411827287A7FDE4A@PH0PR11MB5782.namprd11.prod.outlook.com>
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <PH0PR11MB57823008FBDCD411827287A7FDE4A@PH0PR11MB5782.namprd11.prod.outlook.com>
X-ClientProxiedBy: FR0P281CA0087.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1e::12) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|LV3PR11MB8457:EE_
X-MS-Office365-Filtering-Correlation-Id: df65f6f8-dc65-4be8-3765-08dbab0bd634
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YtS6rJ28muZeHxqpkpABsUW5GXtGkKmfq/7V/KVQoYkscCFEsw9rQN6wTXG9sXFpcUUCtun90gbCG5lnG15lGRAU0B42xIwFZLxrOp3sA9Yk90EtSvi9B32/BLqfKZ+zM+lb+jO1DrS3108fLFcD/Gq0G0LqPd3NehaeljPJTfbInabdDHoQUrowJHFbz9EgOoqR5z4kWVp0epscRWKgyw5zxW0Q5A6KHtOBPgh1b5Jaxux2tF0bJkkZM8X3+cdFbjwlvAYMEEKpuvCIsJi/9GUfxV4+t5ev6xcKNSo3F62rDsZPIqoXq+EyAG8O16bYYS2eqQwJ1qCNMm+8PNzloKSXk4GlbkQWyQ5IxRQWaDul/fLLMRHptxxi9zGvGBBYsFWivIvJbT7FKMtk0hdhtz+aU+bq6Lw7WmU+8rYNELWyR0mEnXRiHT0Jk+OWisQwuHwOf3u37Kl2KdKioOAejNOYmN9T0Y7kI6hdrrliW57F1VP+RREKRXtybBTI72EsTajHE1arKUPAFyY5HQVQoeT0w/9aDlD69FPo8Nr05DsYYqEni/aQEjHYuvyQy7tlas+BGdrxDGYgqGloxDNBZk5ZxbX5oFBGJdddGwHyHz3XLG66jNnuiJdFg4ITQM19TN8Np7GVMc7ydtYA++edMA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(376002)(396003)(366004)(39860400002)(186009)(1800799009)(451199024)(478600001)(8936002)(6666004)(66946007)(53546011)(31686004)(110136005)(66476007)(6506007)(66556008)(54906003)(6486002)(38100700002)(316002)(41300700001)(82960400001)(6512007)(44832011)(31696002)(86362001)(8676002)(26005)(36756003)(2616005)(83380400001)(107886003)(2906002)(66574015)(5660300002)(4326008)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TXZBOU9KdE9KQUFZUHZ0ZXA1T1diaXEzU3BUa1ErdVlCa1RPSVE1UFhqUUJJ?=
 =?utf-8?B?bHVpb3BmemFEbEFFTURSQkYrclJWUjFNWk5MNjhZUEREOEY1QXpyVU9iMW1r?=
 =?utf-8?B?c3paajc2Tkt6Ny9kQlFVK3ZPVEhXczk2TllZdmlLZlY1R3BWeS9TYWg5d1Jh?=
 =?utf-8?B?R0FuZ0plNVNjYVU3MytJZ1ZEZHdnOXlqTnVjN2kzQnVQWU5NSU5GdHJucitB?=
 =?utf-8?B?WmpHbitVaVRzckpmZ0QzTGI0UEg3VkpHNFRKZlhhSDNSK083bjJmRHNYNEdZ?=
 =?utf-8?B?ZWRaaTlQTE5pSXVwUVdpanBEdHd0SFNxbDh1Vit0MC93djZLMCtTUU5GRTd5?=
 =?utf-8?B?bEhhT0NHUkFLSGFCaVY2MFJQT3l3eVBmdkRTcXpaWXRpczVlUzBrMUpEMDZm?=
 =?utf-8?B?THo3NSt4WHd5OFZmMnB5Yll3eXNxbUZ4Ly94Y2VENFdCNjNWNEFKYWNlNVBW?=
 =?utf-8?B?eEw2bDQwdm9uRWE2M2lGdlIyMERHTFdWM1h6azE1cnNVeTY0Zm5ya0RudEdx?=
 =?utf-8?B?N1dId2VlaEJyaTE4czBZTDY2dXVOSHcrMHpWZ2RGZG5TenMybEZWSkU3czlS?=
 =?utf-8?B?NFlmRDVzTUJzcTVydjZBSDc4ZitpZW9pVDdSSDdvaFNoUkZ6UitVUC9zZW1Z?=
 =?utf-8?B?ZkQybjdtZkJzUXE3VFBNVVlaN29EL1JBV0tYRnRVMzFpczFCNkRZOUJhd1ds?=
 =?utf-8?B?MW9hNEdEZzh2Zmt1aytSWXY5SFdKNHBxUHBnc3RzaEVyMzRCV2p0WTNaMGFl?=
 =?utf-8?B?VUlkSHNpa3ZNSWxLTEhzSG9DV29Jbm1qREZUQ2dCQk9iek56NGRXSVovVDc1?=
 =?utf-8?B?VVgxYWZPQXhVTSsvWk5MNUtaQWQvU2w3MHpGQllwM3Jld1laZ25NWFpJTnJl?=
 =?utf-8?B?RURYKzY5R1ZsQ1ByS0VsdjFFNTM5SWR3YnVKclBxRk8wdGZtRjlsYU0wT0xD?=
 =?utf-8?B?RFdPTWN5ck5BS1hNb3d3ZER0V2t4RjRuSmRUWGV4amFKVjhucStFUEQzNHhp?=
 =?utf-8?B?SEI4YUFvYjZZanRPUm9YeUk2MGFhYVNRY1RRNktDaVNjczArVUhERHFTaTJp?=
 =?utf-8?B?cEU5b0JiQzZLZFM1aVlaZDlBaGJvQkx4aHJSOThSMElyYjQ5TkZ3V1p4Rms3?=
 =?utf-8?B?Mzg5UE9tamJPbWVqYVBZeWI0SWdaS3k4VzkwWGlXaSttVTUrV3A2MUh3L0tS?=
 =?utf-8?B?dXdJSElSWWJKUnczM0cxbEdGTUdIUlpqcm0vV1NHelpWY1lUM2d5OS9aY3VQ?=
 =?utf-8?B?TmdIZTB5eDZwMlZaVWZwcTAybUJlaVZLUW5vNzU0RFdvU1hseE1BOFNLaUk1?=
 =?utf-8?B?L2taRUhCUTNoUkttWVk3L1VHZTJCQUZjZFdVRzAwQXkzUHl4cWl0UjY4aXNq?=
 =?utf-8?B?MzRmTHdhZnMyeUVpMWw1WUJ6MFB1bFJERFR3SGJTUW1TRTQxZGpkb21vUTNN?=
 =?utf-8?B?NG05RnFKcTJ6TjY1RDNzb1VKclVYSTE1Qzc2WVBTMWFjb0ZYRjRsbDN3WkdQ?=
 =?utf-8?B?RmhyQ3pWT0ZMRU9hbU1VeVByNFNaQ0tMM29odGhkYU5YbkhHd2FpNWNGaytp?=
 =?utf-8?B?YTVkQytoNUtTSFc2aEJhZEx1cU5KSnN4TklnUzRRWkZtaFhDSHk2Q3A4Wit3?=
 =?utf-8?B?Zzg3UGo1bWNXYURkc2xZSDNNbW9LeHhubGIyczh3WmNYVDhITk10S1dITkMy?=
 =?utf-8?B?WnZLaERQRWtnWDdrQnZEMFhzS1lLSGd1QTFNNnFRVEpmVEFZaFphbEZBUGpw?=
 =?utf-8?B?YzF1QjJ3bXFCNnRhc2JrSGlua3BpcXhVTUIzWmx1ZWhtdHp5NnZVZHJyc1Vl?=
 =?utf-8?B?TS9aTVVUbWNGNHV1d0VPTDVVMW9SVUxCWTdlbmdqckRyTzF1U2lOb21qVGF2?=
 =?utf-8?B?Q28xS1JpMFFnUHp3ZWJDenp1QnE2ODRRZXlOZlIvZEFka0hjdk9kVHd1NFoy?=
 =?utf-8?B?amJGZ0hyQnV5WUFtQllaNmVFQUo5ZWxkZllWYjhENTc0SzNwTnRXQ0pITmZ4?=
 =?utf-8?B?QnZPditSc1J6RnVjaVQ2dWRtTDhTZmJJOEYwV1dJcVZMbGdHZ0dkNVNiYkx6?=
 =?utf-8?B?S1lHUm56bDJpai9YTDBzZkMyUWlIWE44cktyQmlZdXF6SmR2V05iU0c1Z3Vo?=
 =?utf-8?Q?bddcIiA5r9QOF+9nTEX4Gp8L0?=
X-MS-Exchange-CrossTenant-Network-Message-Id: df65f6f8-dc65-4be8-3765-08dbab0bd634
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Sep 2023 16:52:33.2755 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7DOXx0At9hPXKGeCOz+DBRMEaT+hGXSwIR6kMvcNLuydpL979kdRWLWyvRnJPy7T1W5YyTNEHy9uv/qPm/QIiw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8457
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693587187; x=1725123187;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3jY6lXjedYuuuU4VKCmjYXyJWKz2vR8r2Bui028ANcM=;
 b=lzLYg3KhvCyLURnDpxV15Y94qC0ccnhbKzy9+wEentkx3QuSOAs8Q4TX
 O9w3Gocth6xlaoMgMnBvG9rnfNBZd0zlQqrheEin3hpW878TpQUlNGiY/
 vcGRg8ecszJd8lRiHLq6Iav5Khl7MH++RkxJVJpoxSWNTnPhk/WEHKW/A
 vyOtBxc8xuF8QNURza5WoSF1SxzskuKS/SaUIColYnUlUWIMIEAzyiOU5
 FJSbBoLOXfdLPGiMMEzgSnwslT1PMXX1etCqbCgLqxtiRTa4cvWNder0D
 I5ZusbrkUOe+fHPVTYBf/B6Ae0CyJG/nmNz2l8YiyvG73wazpgSFnG01S
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lzLYg3Kh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 3/4] ice: Fix VLAN and CRC
 strip co-existence
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
Cc: "Wang, Haiyue" <haiyue.wang@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ck9uIDIwMjMtMDktMDEgMDQ6NTAsIERyZXdlaywgV29qY2llY2ggd3JvdGU6Cj4KPj4gLS0tLS1P
cmlnaW5hbCBNZXNzYWdlLS0tLS0KPj4gRnJvbTogSW50ZWwtd2lyZWQtbGFuIDxpbnRlbC13aXJl
ZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYgT2YKPj4gQWhtZWQgWmFraQo+PiBT
ZW50OiBwacSFdGVrLCAxIHdyemXFm25pYSAyMDIzIDAxOjE5Cj4+IFRvOiBpbnRlbC13aXJlZC1s
YW5AbGlzdHMub3N1b3NsLm9yZwo+PiBDYzogV2FuZywgSGFpeXVlIDxoYWl5dWUud2FuZ0BpbnRl
bC5jb20+OyBCcmFuZGVidXJnLCBKZXNzZQo+PiA8amVzc2UuYnJhbmRlYnVyZ0BpbnRlbC5jb20+
Cj4+IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV4dCB2MyAzLzRdIGlj
ZTogRml4IFZMQU4gYW5kIENSQyBzdHJpcAo+PiBjby1leGlzdGVuY2UKPj4KPj4gRnJvbTogSGFp
eXVlIFdhbmcgPGhhaXl1ZS53YW5nQGludGVsLmNvbT4KPj4KPj4gV2hlbiBWTEFOIHN0cmlwIGlz
IGVuYWJsZWQsIHRoZSBDUkMgc3RyaXAgc2hvdWxkIG5vdCBiZSBhbGxvd2VkIHRvIGJlCj4+IGRp
c2FibGVkLiBBbmQgd2hlbiBDUkMgc3RyaXAgaXMgZGlzYWJsZWQsIHRoZSBWTEFOIHN0cmlwIHNo
b3VsZCBub3QgYmUKPj4gYWxsb3dlZCB0byBiZSBlbmFibGVkLgo+Pgo+PiBJdCBuZWVkcyB0byBj
aGVjayBDUkMgc3RyaXAgZGlzYWJsZSBzZXR0aW5nIHBhcmFtZXRlciBmaXJzdGx5IGJlZm9yZQo+
PiBjb25maWd1cmluZyB0aGUgUngvVHggcXVldWVzLCBvdGhlcndpc2UsIGluIGN1cnJlbnQgZXJy
b3IgaGFuZGxpbmcsCj4+IHRoZSBhbHJlYWR5IHNldCBUeCBxdWV1ZSBjb250ZXh0IGRvZXNuJ3Qg
cm9sbGJhY2sgY29ycmVjdGx5LCBpdCB3aWxsCj4+IGNhdXNlIHRoZSBUeCBxdWV1ZSBzZXR1cCBm
YWlsdXJlIG5leHQgdGltZToKPj4gIkZhaWxlZCB0byBzZXQgTEFOIFR4IHF1ZXVlIGNvbnRleHQi
Cj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEhhaXl1ZSBXYW5nIDxoYWl5dWUud2FuZ0BpbnRlbC5jb20+
Cj4+IFJldmlld2VkLWJ5OiBKZXNzZSBCcmFuZGVidXJnIDxqZXNzZS5icmFuZGVidXJnQGludGVs
LmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogQWhtZWQgWmFraSA8YWhtZWQuemFraUBpbnRlbC5jb20+
Cj4+IC0tLQo+PiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdmZfbGliLmgg
ICB8ICAzICsKPj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3ZpcnRjaG5s
LmMgfCA2MiArKysrKysrKysrKysrKysrLS0tCj4+ICAgMiBmaWxlcyBjaGFuZ2VkLCA1NiBpbnNl
cnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV92Zl9saWIuaAo+PiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9pY2VfdmZfbGliLmgKPj4gaW5kZXggNDhmZWE2ZmEwMzYyLi4zMWEwODJlOGE4
MjcgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdmZf
bGliLmgKPj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV92Zl9saWIu
aAo+PiBAQCAtMTIzLDYgKzEyMyw5IEBAIHN0cnVjdCBpY2VfdmYgewo+PiAgIAl1OCBudW1fcmVx
X3FzOwkJCS8qIG51bSBvZiBxdWV1ZSBwYWlycwo+PiByZXF1ZXN0ZWQgYnkgVkYgKi8KPj4gICAJ
dTE2IG51bV9tYWM7Cj4+ICAgCXUxNiBudW1fdmZfcXM7CQkJLyogbnVtIG9mIHF1ZXVlIGNvbmZp
Z3VyZWQKPj4gcGVyIFZGICovCj4+ICsJdTggdmxhbl9zdHJpcF9lbmE7CQkvKiBPdXRlciBhbmQg
SW5uZXIgVkxBTiBzdHJpcCBlbmFibGUKPj4gKi8KPj4gKyNkZWZpbmUgSUNFX0lOTkVSX1ZMQU5f
U1RSSVBfRU5BCUJJVCgwKQo+PiArI2RlZmluZSBJQ0VfT1VURVJfVkxBTl9TVFJJUF9FTkEJQklU
KDEpCj4+ICAgCXN0cnVjdCBpY2VfbWRkX3ZmX2V2ZW50cyBtZGRfcnhfZXZlbnRzOwo+PiAgIAlz
dHJ1Y3QgaWNlX21kZF92Zl9ldmVudHMgbWRkX3R4X2V2ZW50czsKPj4gICAJREVDTEFSRV9CSVRN
QVAob3Bjb2Rlc19hbGxvd2xpc3QsIFZJUlRDSE5MX09QX01BWCk7Cj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3ZpcnRjaG5sLmMKPj4gYi9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3ZpcnRjaG5sLmMKPj4gaW5kZXggYzBjM2U1MjRj
NTIzLi42MDJjMThlODIzYzAgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2ljZS9pY2VfdmlydGNobmwuYwo+PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pY2UvaWNlX3ZpcnRjaG5sLmMKPj4gQEAgLTE2MjMsNiArMTYyMywxNSBAQCBzdGF0aWMgaW50
IGljZV92Y19jZmdfcXNfbXNnKHN0cnVjdCBpY2VfdmYgKnZmLCB1OAo+PiAqbXNnKQo+PiAgIAkJ
Z290byBlcnJvcl9wYXJhbTsKPj4gICAJfQo+Pgo+PiArCWZvciAoaSA9IDA7IGkgPCBxY2ktPm51
bV9xdWV1ZV9wYWlyczsgaSsrKSB7Cj4+ICsJCWlmICghcWNpLT5xcGFpcltpXS5yeHEuY3JjX2Rp
c2FibGUpCj4+ICsJCQljb250aW51ZTsKPj4gKwo+PiArCQlpZiAoISh2Zi0+ZHJpdmVyX2NhcHMg
JiBWSVJUQ0hOTF9WRl9PRkZMT0FEX0NSQykgfHwKPj4gKwkJICAgIHZmLT52bGFuX3N0cmlwX2Vu
YSkKPj4gKwkJCWdvdG8gZXJyb3JfcGFyYW07Cj4+ICsJfQo+PiArCj4+ICAgCWZvciAoaSA9IDA7
IGkgPCBxY2ktPm51bV9xdWV1ZV9wYWlyczsgaSsrKSB7Cj4+ICAgCQlxcGkgPSAmcWNpLT5xcGFp
cltpXTsKPj4gICAJCWlmIChxcGktPnR4cS52c2lfaWQgIT0gcWNpLT52c2lfaWQgfHwKPj4gQEAg
LTE2NjksMTEgKzE2NzgsNiBAQCBzdGF0aWMgaW50IGljZV92Y19jZmdfcXNfbXNnKHN0cnVjdCBp
Y2VfdmYgKnZmLCB1OAo+PiAqbXNnKQo+PiAgIAkJCXZzaS0+cnhfcmluZ3NbaV0tPmRtYSA9IHFw
aS0+cnhxLmRtYV9yaW5nX2FkZHI7Cj4+ICAgCQkJdnNpLT5yeF9yaW5nc1tpXS0+Y291bnQgPSBx
cGktPnJ4cS5yaW5nX2xlbjsKPj4KPj4gLQkJCWlmIChxcGktPnJ4cS5jcmNfZGlzYWJsZSAmJgo+
PiAtCQkJICAgICEodmYtPmRyaXZlcl9jYXBzICYgVklSVENITkxfVkZfT0ZGTE9BRF9DUkMpKQo+
PiB7Cj4+IC0JCQkJZ290byBlcnJvcl9wYXJhbTsKPj4gLQkJCX0KPj4gLQo+PiAgIAkJCWlmIChx
cGktPnJ4cS5jcmNfZGlzYWJsZSkKPj4gICAJCQkJdnNpLT5yeF9yaW5nc1txX2lkeF0tPmZsYWdz
IHw9Cj4+ICAgCQkJCQlJQ0VfUlhfRkxBR1NfQ1JDX1NUUklQX0RJUzsKPj4gQEAgLTI0MjUsNiAr
MjQyOSwxOSBAQCBzdGF0aWMgaW50IGljZV92Y19yZW1vdmVfdmxhbl9tc2coc3RydWN0IGljZV92
Zgo+PiAqdmYsIHU4ICptc2cpCj4+ICAgCXJldHVybiBpY2VfdmNfcHJvY2Vzc192bGFuX21zZyh2
ZiwgbXNnLCBmYWxzZSk7Cj4+ICAgfQo+Pgo+PiArLyoqCj4+ICsgKiBpY2VfdnNpX2lzX3J4cV9j
cmNfc3RyaXBfZGlzIC0gY2hlY2sgaWYgUnggcXVldWUgQ1JDIHN0cmlwIGlzIGRpc2FibGVkIG9y
IG5vdAo+PiArICogQHZzaTogcG9pbnRlciB0byB0aGUgVkYgVlNJIGluZm8KPj4gKyAqLwo+PiAr
c3RhdGljIGJvb2wgaWNlX3ZzaV9pc19yeHFfY3JjX3N0cmlwX2RpcyhzdHJ1Y3QgaWNlX3ZzaSAq
dnNpKQo+PiArewo+PiArCWZvciAodTE2IGkgPSAwOyBpIDwgdnNpLT5hbGxvY19yeHE7IGkrKykK
PiBDYW4gd2UgdXNlIGljZV9mb3JfZWFjaF9yeHEgaGVyZT8KClN1cmUuIFdpbGwgc2VuZCBhbm90
aGVyIHZlcnNpb24gc2hvcnRseS4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxh
bkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLXdpcmVkLWxhbgo=
