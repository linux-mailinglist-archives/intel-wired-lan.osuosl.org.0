Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0184F6838D1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Jan 2023 22:41:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8599760C30;
	Tue, 31 Jan 2023 21:41:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8599760C30
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675201282;
	bh=NfIKKnQuJS73MCTytvGVg0ZkKXDqhPviRoPT7jcLzmE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IhgZr0m+SgXOBUqpjREAy+pOmOy903gOKU19eAJUzYumrj3wZi1P8ypd0t25cyzk0
	 p4qYDuJ+vkqtA4bUb94wgJOnQ/WN6rwhEXcoPibW6h9u3i5AfNI9zfY+CMFlEPmhxL
	 /zh4ExXmJ3RYSxhO+oNh6HLxCEa2okPj77MDD9RtO9F0DOY2qN+4Gbr+LaW1rYtnE3
	 zS09Dd7WwVc1bpNNRE+mWbFxx/CqodnedtbElo6UTRbEJ7imTm+9EqJwioiLBwkVIa
	 0QLIv1Z1FtNlQo3oxYpNcSm0Q0L97N04cSB8xSkoYsP92dpuRdXKqQMr6WmXGnMIqc
	 pGfF8sQLi+DAw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p7E64A2_B6tI; Tue, 31 Jan 2023 21:41:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 71FF560B1F;
	Tue, 31 Jan 2023 21:41:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 71FF560B1F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 29FBD1BF3FB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 21:41:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ED2818141D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 21:41:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ED2818141D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qY8jnDa9aV3q for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Jan 2023 21:41:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A6F5D813EC
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A6F5D813EC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 21:41:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="311593033"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="311593033"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 13:40:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="696985362"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="696985362"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 31 Jan 2023 13:40:58 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 31 Jan 2023 13:40:57 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 31 Jan 2023 13:40:57 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 31 Jan 2023 13:40:57 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 31 Jan 2023 13:40:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KFZ4I1CFC+6xS8tX70ZdVC/DHNfAxm98p4nDbV5RtgCdYw6gE0QllF4aM0XNgPoGLj5kHzsQQybH2ZYLEylTLAFBE1HVfnlDMmP49oUkfrVCX5iKA8C02cYVko0VcNObc9MxR3imfQnPsDgCYdxzsDllONFo9xcj1oRs62kgQ1+UL2rYLV6/MVCz09lE6eotPJncaeRAOLkRP8gq61/MbFywD8VtEi+jNWaa7+TaC6DHAmYhDIKbSEmbZ6brqQ9WQCmn+EZh7xqLNm9uZixFFiUR5YjZdJgp2dHW0PFqirulrda731y3nK91DErzIl3F0agX1CR8Gx9+79g2TOpWpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=55T1nHEDuiJ2gIdvDh15I4pZjjAnEyBtTKnZ3m5AfNI=;
 b=NWfuFvvu+M1kSzRS87l7OWaTZ/lhW457RCyDNcvgjxkp9MRPQp5/0mZSARit6yZB6GCf6aYk4/6xJ4WTNIaF57aCTvcH+ejUVDSbJree57ARNjqmSKkldJWUqdBAglPiudtcuMbtLm7SJoVygEsfDMfteh9k+2B5785O+IaXe2KD1TzS9tcIsPw7V/w98MHR+YHXwqZ3jqWN0d5gEMq4rYzeCf/3iDv06tJnhK01CU2AeWsxXNwUd1P37ecScZyrZSWtYChb80bexhzJTiLKsnvibWx3e1h76hhU6jIRGq9SaryixK1kNyMh3kIaVTosXk2B0ggoHt0tXlTNNCnXRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by BL1PR11MB5416.namprd11.prod.outlook.com (2603:10b6:208:319::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.38; Tue, 31 Jan
 2023 21:40:54 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4700:1fa1:1b49:1d5c]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4700:1fa1:1b49:1d5c%7]) with mapi id 15.20.6043.022; Tue, 31 Jan 2023
 21:40:54 +0000
Message-ID: <cee63d27-872b-cb4e-dfb6-93cf89e87b95@intel.com>
Date: Tue, 31 Jan 2023 13:40:51 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Karen Ostrowska <karen.ostrowska@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230127132410.2057599-1-karen.ostrowska@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230127132410.2057599-1-karen.ostrowska@intel.com>
X-ClientProxiedBy: SJ0PR03CA0268.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::33) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|BL1PR11MB5416:EE_
X-MS-Office365-Filtering-Correlation-Id: e97fd579-ff1d-4581-2b82-08db03d3d45f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: esXRznJaNBSmJVaXzE0NW4PfIzXPCmXxyT29kHb0GWtIqN1p/zwkrwoZE8HXJ5JaoXPXihnc+ogfSWQcCi9rrzAI7kb4MK1Cd8hKrK6k1uELuIZId2w2V7bzDTJW3PaTnIwXMg7MOIJm5Uip7DLrbhTzTtv95h6r/3yRbPw3tdJUELqmmfY0/bu6s45ReEvBRw80+UgTiaz6J73gCHHha8oAswzbkeshGPVJrLRr9Kd6Q2U+cM1G4xXwOBw63RZdDi7vLVeyuAAKalFjmzCUQC+kQK8YgRHRan2xgpYfnSPppk1pCwIGgQmyjlBjrDa/duOFw7Q4KRafLLixHbV0xo4DihqyFJ52ofdaiRvD2vVIbnWJ8SrwzJizPRtPJt49TGf616k07fP5mDFa0beYiamvhJvW38PstsCRnhPkdjBSW5c5NotgHMl1shkWUcFvQClty3YC4xSfSmm1HjnfGWPubQZ9U8vQQmSj3CNWKBg7JBU1YGMqO88+Inhe8pWaVAiVuIt3x2gR/e7djtX71M+OLeTWE3tbKZsKWFfjN1NMSwz3V8+Tz/wzHPf0h9jSnSvVd2lW4FcBnLqaPa+RtivS7YXyp9nUMUllipRAglC7dXU9oDxf2Vzg/rRrkVXU9O5l/V2juaLk8LcdzvKgMEF6RPIflU36/6EAO0dq94qDi9Db+l1lfcpK4YeoFfclPL0ZReaGEWN26MyRjk50V4C3G2hbmOyoUiZ+0KNSSTs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(136003)(376002)(396003)(366004)(39860400002)(451199018)(82960400001)(86362001)(5660300002)(53546011)(6506007)(6512007)(36756003)(6666004)(186003)(26005)(2616005)(316002)(2906002)(38100700002)(31696002)(66556008)(66476007)(31686004)(6486002)(83380400001)(66946007)(8676002)(478600001)(8936002)(41300700001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bUsvK3AyS3Z0SXlpZlEvZmZGUmU5SGNSd0xOcUNyVjl6RE9mWFNibDRlNDVI?=
 =?utf-8?B?Rm9MQTNadmY4Ri9DRHlpUDVFN1RydXp5bEp2RDdFOVhRVlpLZVdEcGVNcVFD?=
 =?utf-8?B?ZkFXNDVLUzV6WGhCNURoNjloY1c0d2d2UkNlVGUyMFZSeGhDY29qc3FhMnJ3?=
 =?utf-8?B?QjdTdUtuNlAvRTR4T2V5djZ0aFp4eXNKN1M3cmxwUDlCK25xcDBxWldEWW04?=
 =?utf-8?B?VUFwdlRGTlVRN2hxOERiNjJJbXUxMzBKV1F2cUtaUlBJOGdNVTlaYjd5MTFj?=
 =?utf-8?B?ZjFDQXh3c1RGcHVId3k2bEJBUlVMQTM1NG5Ob1A4Q2tPdUNjeW41SklWNi95?=
 =?utf-8?B?c1pFUEVyR05VMFZUdnUxQ291MURzclUveTVVdVpISzhhdVBPc0k4d2hIejEy?=
 =?utf-8?B?bklyaFVTVk9Wd2Y4NlVCak84VE9GQmJUcmJBUlhNRXhIUzdVcXcwWWQyR2RL?=
 =?utf-8?B?NVZlYkpZWVluR0ExNzltalA2M1VOWEoyVGgvY1hOOEJIcllFUE05UFlpRjhj?=
 =?utf-8?B?UE13a0ZqazJqZGJHYzMxWnZlN3QyV3d4bjRXeWdMTkdFVG56VUVBcDQzaDhv?=
 =?utf-8?B?bkNCTVRMMXpia21tdjFDbmVWaS9zdTBJYWlNeEd0Q1YrK3lTMGVGeENXR3c5?=
 =?utf-8?B?dGVDM3g0TThXdUpTTE5ZMXVReW95ZE5ZTXdRQ1hOcFhOSnB5cmhyMW5PVnZM?=
 =?utf-8?B?TWg0amw3dWJLN25SOHdKQVd5TFU3OFJITHg3eFRxdmMzSGJxNG81VVRWQXhR?=
 =?utf-8?B?N21tNEFKbitiTWlLQzNhQk9VMWVlRThmTWZMTVJDZkpOVHg4VG1TYkZpU0Zz?=
 =?utf-8?B?SzA3NjcxNWJXaWkyY2RzZVpMeDhaTWRQT2Y1SFJkU2JIWVlGVi90SEtqdDN3?=
 =?utf-8?B?RUc0T0hzM09zb2dYMzVlbHQ1TWt4TTMyaTMySXhvS1owMlRiUEh4UXVEZzVH?=
 =?utf-8?B?T2ZBNy91dkJxUlBwVE0zRE9XcVBPMU8vS0lzdEJ2OXRybE51Z05JY3dWbkpG?=
 =?utf-8?B?N2xVaktYcng5eDFqMGo2Wnh4Nys0MG1LMU1VRU5XOVFQb0Judlpwa3ZWNzd0?=
 =?utf-8?B?YjZTdDd4eHJ3V0tvM2xYZi9jTVkwRTFpRnIrTlR3eHdqV1grVDUxZnU3dFBK?=
 =?utf-8?B?Z1BuSmZUVXFmK0JJM29pbDdDWVp6aXdLSjNOVWpHcGs2ek8xSldsRkJHcis5?=
 =?utf-8?B?T3RCRzRjU3ByWC9KKzN0S3hRU29SR3ZBeE85UDMzQ3dxRGNNQi9yN1lZOTZ4?=
 =?utf-8?B?YXNjM3FEV0paMkdaR0RpS1I1SXhlQlF1Z2pwZlpVd3BieUxiR0QwcVlkcGhz?=
 =?utf-8?B?eWQ4ajhteUd6bDlla0hacExwWjlJUG9kSXA0QktzY0p1eUkvckFJcGcreklX?=
 =?utf-8?B?WFlEek9sR1p3OTl5YTRncDNEZ3I0eUxpSzVEUStRTU13Z20yTVc2WnMvTXlV?=
 =?utf-8?B?U25CT1llTlh1eklZRTdUNytEMnk3WGdpYTVSVGhZMjl0K0tDcXZlTjY1Q1pC?=
 =?utf-8?B?YW5HczZoL2ROeCtvTTNDVnpPeXptdkR0MzhSdTQ0MWNibEhFL1Zjcks5SEEr?=
 =?utf-8?B?STBQSVRkT1ZwT3hFNk5TQ0RhMjYvdEpVSWdvUUFFOUJWd0dhR1NlTDRWQi9E?=
 =?utf-8?B?MFlNT2hRanBreTRZVzNqSDI5dEdnSlNCT2hJNm8vSjVqY1pvaE1qYU9MWDFt?=
 =?utf-8?B?aEp1MUMzQUxSMmJkN2xSM3hGY1pRSUtqVkIvdWRlbGNFNVJBckxJOWExS1cw?=
 =?utf-8?B?RDNQTUZWeitFbjNDTzVNdW9qSlNxc0N0WVJwb3p4dld4Z3ViV1d1aUFib1VU?=
 =?utf-8?B?NE92LzBJTEo0UmRQZncxcTYwbWxQNDk3eWRrVWpCWXM0d0E4OVdtU3NpL2Zq?=
 =?utf-8?B?RHFFMEdxY2dCcWVNWDBUMkdVbkRHc0hwV09ZR0lmNC9nblAyRnRZMTNzajBi?=
 =?utf-8?B?aVVxc05VQnBnWllsNENOYURGY3FjQndla293a0Z1ZW1JT25TTnNhTGFGcXlo?=
 =?utf-8?B?NDZxc2ViTWdJQTFsd3Z0U0FKWVRCdkdOdGdYU0JWdnZyMEVaVGI3RFgzYnFk?=
 =?utf-8?B?cENJeU9qWDRkbkJYMmRBNitqbVIvRkJCQXYvRDJmaEg3NFJINzdVTmpjUUlW?=
 =?utf-8?B?a2d5cnJ2TEU3ZEd0dUtlV2NIRjBML1VnZGlBcmwwV2FBSTRGMkVxbmQ1RjVL?=
 =?utf-8?B?NkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e97fd579-ff1d-4581-2b82-08db03d3d45f
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jan 2023 21:40:54.2015 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Bx4f+hLpEVG5I1HAFxPslpt28Jdd8wLQF/0NA42Ai334df2dOivuhsQf6xBRQw5zOapCvW9xVGX4uC3AcFzt3KTqlLOghszdTUMrdXgY81U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5416
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675201274; x=1706737274;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Q1TBRj6s11B3Ydr7zao1TRP/Qe7j168BqhO+8gd+Iq8=;
 b=fHEU4FxO4qUjJwyOzgEk0EjtubQXlxlXRAXvP6XW/7wKHc+mkxNfmYAg
 0qZsURe4kgD6WFn7vYkhRH4EhBykIj0uvTj/3csox/JRkc+027A/GbQub
 rjVIoATmol/5iDRaMQckKZ35GqSHl+YNtRese0RJCLA1GAhHJ/g6R3e8v
 AxacDKuHGTP8Jjvhh2ZXHk1BSvjocfUwQHgei96UEbeMMfE7r0JO0Np7I
 CVkWSvCuz+7xMNmj9hpMV0ztfOuwcBgywy8dpL8TIyW9PwmacTDIuXZh/
 tZauZ4lKy9L2dycLdP6J8aWSppzzKzHh7x7cUOTovGCH1LDUiLAuybjH+
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fHEU4FxO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: Fix DSCP PFC TLV creation
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/27/2023 5:24 AM, Karen Ostrowska wrote:
> From: Dave Ertman <david.m.ertman@intel.com>
> 
> When creating the TLV to send to the FW for configuring DSCP mode PFC,the
> PFCENABLE field was being masked with a 4 bit mask (0xF), but this is an 8
> bit bitmask for enabled classes for PFC.  This means that traffic classes
> 4-7 could not be enabled for PFC.
> 
> Remove the mask completely, as it is not necessary, as we are assigning 8
> bits to an 8 bit field.
> 
> Fixes: 2a87bd73e50d ("ice: Add DSCP support")
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> Signed-off-by: Karen Ostrowska <karen.ostrowska@intel.com>
> ---

Applied, however, this should be a v2 (with changelog)

>   drivers/net/ethernet/intel/ice/ice_dcb.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_dcb.c b/drivers/net/ethernet/intel/ice/ice_dcb.c
> index 6be02f9b0b8c..789b99963910 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dcb.c
> +++ b/drivers/net/ethernet/intel/ice/ice_dcb.c
> @@ -1372,7 +1372,7 @@ ice_add_dscp_pfc_tlv(struct ice_lldp_org_tlv *tlv, struct ice_dcbx_cfg *dcbcfg)
>   	tlv->ouisubtype = htonl(ouisubtype);
>   
>   	buf[0] = dcbcfg->pfc.pfccap & 0xF;
> -	buf[1] = dcbcfg->pfc.pfcena & 0xF;
> +	buf[1] = dcbcfg->pfc.pfcena;
>   }
>   
>   /**
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
