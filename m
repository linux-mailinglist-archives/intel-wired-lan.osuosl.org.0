Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 513165F5D95
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Oct 2022 02:17:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 642BC60FF6;
	Thu,  6 Oct 2022 00:17:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 642BC60FF6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665015436;
	bh=5kvkETvMRVdLb2nk05GeGEUinfNyuadVfMDh2gWTzoo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FJUXj0a+1BFVc2XYufAbczzAOOM17bJIUYhksjneR1Rh28SxsF3bCllWmakJMQ5+b
	 30WtaHKc87iWHgxUrJRGP0upYgjrbdKu2uG+xLLIrrnZipxrnNJJpP7R5c75Gngo0X
	 dvuewHxIFDfT/v6mtux11ywB6qwbYkj+MUrkDu7Q8XQ+Pw/kSwHFqv3q+JS2+FrFQ9
	 /7IJ384GvkMFCUlkh8RhDCAwfbxIvx5t/KLByOsF1whJ37ShwSaIiObruWaSBm2f/0
	 /Adb582YPL1tqrtqPCJGy9SiA7yLFKFqSzGik3TEY36nUuwAaYhoSTWwkABWU6ncJc
	 AQcLJRMsqzKxg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jvwe-VFAYAof; Thu,  6 Oct 2022 00:17:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2BD3B60FE8;
	Thu,  6 Oct 2022 00:17:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2BD3B60FE8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C8F091BF356
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Oct 2022 00:17:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A669A417C8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Oct 2022 00:17:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A669A417C8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zk04va01JjYS for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Oct 2022 00:17:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E9849417B6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E9849417B6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Oct 2022 00:17:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="389594732"
X-IronPort-AV: E=Sophos;i="5.95,162,1661842800"; d="scan'208";a="389594732"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2022 17:17:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="657717248"
X-IronPort-AV: E=Sophos;i="5.95,162,1661842800"; d="scan'208";a="657717248"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 05 Oct 2022 17:17:02 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 5 Oct 2022 17:17:02 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 5 Oct 2022 17:17:01 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 5 Oct 2022 17:17:01 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 5 Oct 2022 17:17:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eq2Bg90qbdTtXnZ1h89qjNG95MKFrL+GJL7gsh5LmWQC99DU22cdV2ktyRC2sFPUirSWmgly7AMAgTkrhT78S0eC7HXFSf0IV2DsGq+OmrgwcSqDW1Y3J+BQXGBSCLnjMqpWovJZhjSYrLMC05k7gjU6qqyPef19bhpYAFBECKDolSo/jOCjEFQB94/PP01M/loXQ8K8LA9coyFhLha1dbXjjN5eCmTyxDCpROygGDkVd6rAfOOdv5XDhisiHZH4+YMXl8zDmGRbwRHgIc5+5bybGze84gN+04slYEk/JHCUVaJ+bWr2+ewEDB9+J9VVbtRlP0x2LZGeJrbWDqYsTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7b8sefECkrMDECaTzzygDP5OC/kTyc+h2lNfA/x4zvg=;
 b=PN9dHMb9SaP2kDzbfjeqWU1YcIThxzwJ3gYPKaPj1QG0vmh+ru8Co57iao6uJMfWWYm4AMQpzVHdsQSMNCSY8eKkEZOMSqzg/A/86oye4kaqNN3yMh+dnVnuxTUTUz3tyLvQeL6Ht0gD8zBi2kclaaqabLApLOLo5IEAVnBVDNHcqvFJ+Pfwc8JgSGjJyTq0/274uZ4y1UzLNSsL9Ong5WZpIWgS6V3CWKJjhago6F3ixWJ+s4dPcGtSJpwRKIZ0nAbwd2/WVEi0SebzdHMBhpHcaKBQoj+HZ8uKkxcoj+S9ccPwuvJFJfX+kPCQ2pl55JrIES+G0uE5B4vgJLJRZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB4886.namprd11.prod.outlook.com (2603:10b6:510:33::22)
 by SA2PR11MB4796.namprd11.prod.outlook.com (2603:10b6:806:117::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.24; Thu, 6 Oct
 2022 00:17:00 +0000
Received: from PH0PR11MB4886.namprd11.prod.outlook.com
 ([fe80::65f0:bb9b:623e:49e]) by PH0PR11MB4886.namprd11.prod.outlook.com
 ([fe80::65f0:bb9b:623e:49e%6]) with mapi id 15.20.5676.030; Thu, 6 Oct 2022
 00:17:00 +0000
Message-ID: <0cdcc8ee-e28d-f3cc-a65a-6c54ee7ee03e@intel.com>
Date: Wed, 5 Oct 2022 19:16:56 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Content-Language: en-US
To: Joe Damato <jdamato@fastly.com>, <intel-wired-lan@lists.osuosl.org>
References: <1665004913-25656-1-git-send-email-jdamato@fastly.com>
 <1665004913-25656-3-git-send-email-jdamato@fastly.com>
From: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
In-Reply-To: <1665004913-25656-3-git-send-email-jdamato@fastly.com>
X-ClientProxiedBy: BYAPR01CA0056.prod.exchangelabs.com (2603:10b6:a03:94::33)
 To PH0PR11MB4886.namprd11.prod.outlook.com
 (2603:10b6:510:33::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB4886:EE_|SA2PR11MB4796:EE_
X-MS-Office365-Filtering-Correlation-Id: 6d483dc2-5b84-4f45-e158-08daa7301626
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4TUdhgN5lkRBM2GWN8fPof5OlWGLx/afzbGi3NrPt6KPFYWO+xNeg8/hJR5ll8/sOS2FH7F193cEOx95rjTalEi+4yT0wN8KXTLErn9JFc90jYtRrqPGJzWZp3Mee/MHvJiPpPfH+KNEo8Oj1JFE1+A8bkoZbVhB6c3bZuD+q+mxpAFf0PmhhIu0nqw0hzu+NXOUjobqN3PftneVr46DiiE82dvoG2li8E4sk0w2Kj4RZc6WJEW4mTFSnXrMX2d9MUoa+SDFvbIM2mCkwIMsQiGxAjXM9CmQuW5f+aEVdTOc8fIS/FEF3xD/1pYpp9LxwDfidR5v+iNjPTI5xHf2Hha3rkb+ZQDlNE4tJuIkqDfry3xVKtfRzidkrGgqCJ6Zq3kOhewHpnmGMFlVm3aqR1q3stVSVulROIUp/DS21+18c2xVib9w2P3La7rjYFeb1/CdWY1oshi3rECQWrCHsNAclmgFBlSAi3c+TNBM+MUeGEcozxDUHLYgsJCc6x6Gm9tk88yzZmW2bqFLvthf2I0dMdwdLEidfcJXUsIOcF9tr8irpinVo7AM8A0Li2p/3oT4NWUlq56F2quY/t8ecyxhrSGQpVcOJWhiCxq4cJXsj+g9Os6RiulCzWp1TUFruRd0mHHodS5FzYIgwg2xeJaStQP3Rjs2xxMEz5zOMr2hUtpQGmPEnH8JoTUuFmuvyNkbE0xVRCV8J65YSNTkLXnxUFMl+om01Hty7jVnshqEyAnwh0OO4ZKfjfFWn6H1h7hWmyRBa1eiuUOdTY/Tk8ElptUDCeyjVgOVoN5NEP4GyG2c6xKVjfPiTCa7dAxL
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4886.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(396003)(376002)(346002)(39860400002)(136003)(451199015)(83380400001)(186003)(2616005)(82960400001)(38100700002)(5660300002)(2906002)(8936002)(4326008)(8676002)(41300700001)(66476007)(6486002)(478600001)(6666004)(107886003)(26005)(6512007)(6506007)(53546011)(316002)(66556008)(66946007)(31696002)(31686004)(36756003)(86362001)(43740500002)(45980500001)(309714004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bUJVTjdILzRTMEVFVDQ2YXh1U1I3Qkt6cU9UZ0kzaHF4TkRkK21RNVQ2RWdn?=
 =?utf-8?B?ekpSOG9lQjdMTTcwV1VzaTVlNk45a0EzT2dzTUtvUjl2VXl2OVhIOCs3QmFS?=
 =?utf-8?B?MlByaDFqaCtTQVQ0bnd4RCtFdlJLb1pha2IwSTROc0dQOVkrUGZ0WGJ5Rm1S?=
 =?utf-8?B?V3k1K0NQak5PUDFvZTFHYmdzM3F1dS9rNzZnNlc5RkhPQm1IU3QrdlpoMjJ3?=
 =?utf-8?B?WWxCVUJjbWFLMWg0c1A1VThJSWxNQTh2R1hQKzNqTGVJZFk4M2ZDRklhOTVG?=
 =?utf-8?B?d0cyMkd1cFUrZEhmYjRoTEpmTjVrUzhCUlcvUExYOHNORW5OdkdWSE9jbm52?=
 =?utf-8?B?cVNsd3M4WS9FYlJ0N0N4NzFnamJ2bXBlVS9MaGJWdnd6eGtnc2VKeVVML2po?=
 =?utf-8?B?TnpNM05rVU9WTU5KSGpHdUppYjJBZ0dxdGt4Nk1GdUIvZFVYQjBOVFZoeHFs?=
 =?utf-8?B?YVJTRHhyUHNQR29CdUlOV2xkcEFjMHpvL3dmM2l4K1crT0VhT3FGMjZwRXpZ?=
 =?utf-8?B?QVVDZWo2RHA3UkpPaGR1ZjlxR0JxdW5sQ3hJWjFoTTJTRnM2dkY1NUQ4YWxs?=
 =?utf-8?B?TExtd3dLKzAyR2FPTitOcENHYjNqUjZ1WURYSkx0NlZrRFRGbTFiRm9VaUh6?=
 =?utf-8?B?OVBtbzZSVDRqcjA1d3g1blFhTnN4a0hTZ1hKWnkvZ3psSnFDMEhuSXhnanNZ?=
 =?utf-8?B?WTVybHhPNUE4UG5EYWt5RGpHcE5QRTJwQWprZ0pKSm9uQWMzU2toR2pxZU5B?=
 =?utf-8?B?KzdiRG9lYXZJQk12OVdDS01MWWYrKzlUR3F4T3NKYlFrbzVJZjFiV1h4Y2tY?=
 =?utf-8?B?dkpqelc4YmhmLzduRFJ1WHZwVUVOVnpBWEhiZXY3R3ltVW82T1lQZzY1bmhP?=
 =?utf-8?B?cXpTWHJRaFhQQ2xEdE50NXkwTC9HNTZzTkFmeXR2dW52N0VrR3N1TnorU1ZZ?=
 =?utf-8?B?WWNwdnlMRFBtYTNwaEZoMkphMmF5dWhhdnlQU2F4VzVlTGYvK2V0V1lqeHpI?=
 =?utf-8?B?RG5KU3VWZDdaU3g5aFNodDlseUhNS2FMK0xwOE9wNVovVUxPU1U5MjRHNndO?=
 =?utf-8?B?akZSZi9uSXlhTFpQTTVsTkQ3aTV0UDVsazluaXVTY3A3bHRCUXFqK2FjeFZJ?=
 =?utf-8?B?eEYzZEpoTEtSbS9HUTFHQUhhS1ZRMzVIcHVnS000cEdUeXNyQXFuVWt2YlR3?=
 =?utf-8?B?ZFY5U29DMWdzTVM0YW81NnNNNVBESVFKWTA3RkFxcTRVUStJSVZFanN3STVa?=
 =?utf-8?B?Zzg0RVh5YkhaNmczQWtqSTBnQkR5MDVLMUduS2QvSG1xQlJSc3hpS3hzUm9B?=
 =?utf-8?B?c052S3VBTXlTNmlucDhWdzZPaTQ4UnRwZ0NnTTcyR01jUEVwcDUvcjVoaGg5?=
 =?utf-8?B?aURIbEh2bW1iU2NMcXdHbnlmZk9oMUZVTWJxdjJFK3g3bS9CQ0syejRiVnVE?=
 =?utf-8?B?bjAydVV5QVp0R1VMZ2tDS3ZianQvY1pwZG5KdTJRNlhlMFBQVmlldG1MYUh6?=
 =?utf-8?B?SDUwaGFPSVh5d2cvUHVYb2tWN3hSYzNBQ2VPU0lQbkdXQ0JOTWowanBqd25l?=
 =?utf-8?B?T1BudzlHT1dxZDA2V2JDSHh3N2pwSVJZQXpHejhTTklqaVorc1JPakIxaXRR?=
 =?utf-8?B?a3ZNVDFEZ2NXSllNL0E0ZXNqeHlXbmExeWlETm1rcHRyaVhuWEhJeFJLYkhS?=
 =?utf-8?B?WUpMaHZORXRZRmJ3K2Z3eU5DZEFUTkpXcEJ1cEhqTVZuSmdZZXZHL29Md1kr?=
 =?utf-8?B?eHEwTVIzaml5TjdkLy9EcDcxQmR0RTB6ZXJJZjBiVWdlME1sbDBSaGlnZVZk?=
 =?utf-8?B?WjBGRVhZWWRhRFJBaGxOdk9TTDF1em9tSllKZFVENnVQOWh6QW8ycjRZaEtR?=
 =?utf-8?B?dXlkY2xLNkRRR0xoNWdmR0tDNGs2WVlJaVdjbE5OREFsanF1OVg4cTk5QXRn?=
 =?utf-8?B?Sjk5Qlk3azE2amRhcU1xSWd6bDhvQlZ5RHlqRU1Wb2krYXpoNEsxdEZIVUN2?=
 =?utf-8?B?NDVFM3hYTHRFSVZZUWtqcS9uN01qMVcySTdvc2hsanQ4b1JaLzhCdWx5WUJK?=
 =?utf-8?B?OGJuNy96ajFLV3NvWDRsS2t1ZUU1dGZPTEtPTFQzbGZZUkhNUkdwRVF4cVBV?=
 =?utf-8?B?a1hoRGp3QVZmWVFUc3BGOGpJL3FEOGpsQmsyaW1uZC9DUm9tRlNEd0pGejRB?=
 =?utf-8?B?U3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d483dc2-5b84-4f45-e158-08daa7301626
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4886.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Oct 2022 00:16:59.9980 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uwhJnCCQapvWwDeXmw5LDc1Di1zoz3s7++SFrMJEYXS2WnjmfZsGjKkB5TiUat3/dc2kXbL7ng70kbHf2GxvVLjbh7/t6BclJgNhFsWOe8E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4796
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665015428; x=1696551428;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=R+lW0TY45kgGN+GKO/yLTrwJXsBFNE5OoTZf0TFNc3M=;
 b=ibBAjpbSBA2DjB7WyEbXuVmtsuV+DXcGIMCZYvBUrx9hWKJRTkPoII15
 3K522xFbpkntignnGaTnd2z84VqQmldJ6vpDBxEZx0z6t3lTO8HQu8xag
 ZJwqrbNFFNw5KpywNZ1vZBMkdSjkwKxoRryX0580hLCmo2Q9bxsP2lETS
 32sGNkHEiXFj5KOvufDwexFOAkfUP1iPb/1EKaiPvN3KXwRkYP23a3B0E
 59+zjlHHVtNOMqfx2db4KBm3uI9UmSOFe1K4MV0l8S1bM8LsKXBWUtRvh
 dk0utCXObe+lzk59CZPlJFivthbIb+UaQXd7BSnTrHI3AEb+wxTjiX2Ux
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ibBAjpbS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [next-queue v2 2/4] i40e: Record number TXes
 cleaned during NAPI
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
Cc: netdev@vger.kernel.org, kuba@kernel.org, davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTAvNS8yMDIyIDQ6MjEgUE0sIEpvZSBEYW1hdG8gd3JvdGU6Cj4gVXBkYXRlIGk0MGVfY2xl
YW5fdHhfaXJxIHRvIHRha2UgYW4gb3V0IHBhcmFtZXRlciAodHhfY2xlYW5lZCkgd2hpY2ggc3Rv
cmVzCj4gdGhlIG51bWJlciBUWHMgY2xlYW5lZC4KPgo+IExpa2V3aXNlLCB1cGRhdGUgaTQwZV9j
bGVhbl94ZHBfdHhfaXJxIGFuZCBpNDBlX3htaXRfemMgdG8gZG8gdGhlIHNhbWUuCj4KPiBDYXJl
IGhhcyBiZWVuIHRha2VuIHRvIGF2b2lkIGNoYW5naW5nIHRoZSBjb250cm9sIGZsb3cgb2YgYW55
IGZ1bmN0aW9ucwo+IGludm9sdmVkLgo+Cj4gU2lnbmVkLW9mZi1ieTogSm9lIERhbWF0byA8amRh
bWF0b0BmYXN0bHkuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQw
ZS9pNDBlX3R4cnguYyB8IDE2ICsrKysrKysrKysrLS0tLS0KPiAgIGRyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2k0MGUvaTQwZV94c2suYyAgfCAxNSArKysrKysrKysrKy0tLS0KPiAgIGRyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV94c2suaCAgfCAgMyArKy0KPiAgIDMgZmls
ZXMgY2hhbmdlZCwgMjQgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3R4cnguYyBiL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV90eHJ4LmMKPiBpbmRleCBiOTdjOTVmLi5h
MmNjOThlIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQw
ZV90eHJ4LmMKPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfdHhy
eC5jCj4gQEAgLTkyMywxMSArOTIzLDEzIEBAIHZvaWQgaTQwZV9kZXRlY3RfcmVjb3Zlcl9odW5n
KHN0cnVjdCBpNDBlX3ZzaSAqdnNpKQo+ICAgICogQHZzaTogdGhlIFZTSSB3ZSBjYXJlIGFib3V0
Cj4gICAgKiBAdHhfcmluZzogVHggcmluZyB0byBjbGVhbgo+ICAgICogQG5hcGlfYnVkZ2V0OiBV
c2VkIHRvIGRldGVybWluZSBpZiB3ZSBhcmUgaW4gbmV0cG9sbAo+ICsgKiBAdHhfY2xlYW5lZDog
T3V0IHBhcmFtZXRlciBzZXQgdG8gdGhlIG51bWJlciBvZiBUWGVzIGNsZWFuZWQKPiAgICAqCj4g
ICAgKiBSZXR1cm5zIHRydWUgaWYgdGhlcmUncyBhbnkgYnVkZ2V0IGxlZnQgKGUuZy4gdGhlIGNs
ZWFuIGlzIGZpbmlzaGVkKQo+ICAgICoqLwo+ICAgc3RhdGljIGJvb2wgaTQwZV9jbGVhbl90eF9p
cnEoc3RydWN0IGk0MGVfdnNpICp2c2ksCj4gLQkJCSAgICAgIHN0cnVjdCBpNDBlX3JpbmcgKnR4
X3JpbmcsIGludCBuYXBpX2J1ZGdldCkKPiArCQkJICAgICAgc3RydWN0IGk0MGVfcmluZyAqdHhf
cmluZywgaW50IG5hcGlfYnVkZ2V0LAo+ICsJCQkgICAgICB1bnNpZ25lZCBpbnQgKnR4X2NsZWFu
ZWQpCj4gICB7Cj4gICAJaW50IGkgPSB0eF9yaW5nLT5uZXh0X3RvX2NsZWFuOwo+ICAgCXN0cnVj
dCBpNDBlX3R4X2J1ZmZlciAqdHhfYnVmOwo+IEBAIC0xMDI2LDcgKzEwMjgsNyBAQCBzdGF0aWMg
Ym9vbCBpNDBlX2NsZWFuX3R4X2lycShzdHJ1Y3QgaTQwZV92c2kgKnZzaSwKPiAgIAlpNDBlX2Fy
bV93Yih0eF9yaW5nLCB2c2ksIGJ1ZGdldCk7Cj4gICAKPiAgIAlpZiAocmluZ19pc194ZHAodHhf
cmluZykpCj4gLQkJcmV0dXJuICEhYnVkZ2V0Owo+ICsJCWdvdG8gb3V0Owo+ICAgCj4gICAJLyog
bm90aWZ5IG5ldGRldiBvZiBjb21wbGV0ZWQgYnVmZmVycyAqLwo+ICAgCW5ldGRldl90eF9jb21w
bGV0ZWRfcXVldWUodHhyaW5nX3R4cSh0eF9yaW5nKSwKPiBAQCAtMTA0OCw2ICsxMDUwLDggQEAg
c3RhdGljIGJvb2wgaTQwZV9jbGVhbl90eF9pcnEoc3RydWN0IGk0MGVfdnNpICp2c2ksCj4gICAJ
CX0KPiAgIAl9Cj4gICAKPiArb3V0Ogo+ICsJKnR4X2NsZWFuZWQgPSB0b3RhbF9wYWNrZXRzOwo+
ICAgCXJldHVybiAhIWJ1ZGdldDsKPiAgIH0KPiAgIAo+IEBAIC0yNjg5LDEwICsyNjkzLDEyIEBA
IGludCBpNDBlX25hcGlfcG9sbChzdHJ1Y3QgbmFwaV9zdHJ1Y3QgKm5hcGksIGludCBidWRnZXQp
Cj4gICAJCQkgICAgICAgY29udGFpbmVyX29mKG5hcGksIHN0cnVjdCBpNDBlX3FfdmVjdG9yLCBu
YXBpKTsKPiAgIAlzdHJ1Y3QgaTQwZV92c2kgKnZzaSA9IHFfdmVjdG9yLT52c2k7Cj4gICAJc3Ry
dWN0IGk0MGVfcmluZyAqcmluZzsKPiArCWJvb2wgdHhfY2xlYW5fY29tcGxldGUgPSB0cnVlOwo+
ICAgCWJvb2wgY2xlYW5fY29tcGxldGUgPSB0cnVlOwo+ICAgCWJvb2wgYXJtX3diID0gZmFsc2U7
Cj4gICAJaW50IGJ1ZGdldF9wZXJfcmluZzsKPiAgIAlpbnQgd29ya19kb25lID0gMDsKPiArCXVu
c2lnbmVkIGludCB0eF9jbGVhbmVkID0gMDsKPiAgIAo+ICAgCWlmICh0ZXN0X2JpdChfX0k0MEVf
VlNJX0RPV04sIHZzaS0+c3RhdGUpKSB7Cj4gICAJCW5hcGlfY29tcGxldGUobmFwaSk7Cj4gQEAg
LTI3MDQsMTEgKzI3MTAsMTEgQEAgaW50IGk0MGVfbmFwaV9wb2xsKHN0cnVjdCBuYXBpX3N0cnVj
dCAqbmFwaSwgaW50IGJ1ZGdldCkKPiAgIAkgKi8KPiAgIAlpNDBlX2Zvcl9lYWNoX3Jpbmcocmlu
ZywgcV92ZWN0b3ItPnR4KSB7Cj4gICAJCWJvb2wgd2QgPSByaW5nLT54c2tfcG9vbCA/Cj4gLQkJ
CSAgaTQwZV9jbGVhbl94ZHBfdHhfaXJxKHZzaSwgcmluZykgOgo+IC0JCQkgIGk0MGVfY2xlYW5f
dHhfaXJxKHZzaSwgcmluZywgYnVkZ2V0KTsKPiArCQkJICBpNDBlX2NsZWFuX3hkcF90eF9pcnEo
dnNpLCByaW5nLCAmdHhfY2xlYW5lZCkgOgo+ICsJCQkgIGk0MGVfY2xlYW5fdHhfaXJxKHZzaSwg
cmluZywgYnVkZ2V0LCAmdHhfY2xlYW5lZCk7Cj4gICAKPiAgIAkJaWYgKCF3ZCkgewo+IC0JCQlj
bGVhbl9jb21wbGV0ZSA9IGZhbHNlOwo+ICsJCQljbGVhbl9jb21wbGV0ZSA9IHR4X2NsZWFuX2Nv
bXBsZXRlID0gZmFsc2U7Cj4gICAJCQljb250aW51ZTsKPiAgIAkJfQo+ICAgCQlhcm1fd2IgfD0g
cmluZy0+YXJtX3diOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
NDBlL2k0MGVfeHNrLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfeHNr
LmMKPiBpbmRleCA3OTBhYWVmZi4uZjk4Y2U3ZTQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3hzay5jCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaTQwZS9pNDBlX3hzay5jCj4gQEAgLTUzMCwxOCArNTMwLDIyIEBAIHN0YXRpYyB2
b2lkIGk0MGVfc2V0X3JzX2JpdChzdHJ1Y3QgaTQwZV9yaW5nICp4ZHBfcmluZykKPiAgICAqIGk0
MGVfeG1pdF96YyAtIFBlcmZvcm1zIHplcm8tY29weSBUeCBBRl9YRFAKPiAgICAqIEB4ZHBfcmlu
ZzogWERQIFR4IHJpbmcKPiAgICAqIEBidWRnZXQ6IE5BUEkgYnVkZ2V0Cj4gKyAqIEB0eF9jbGVh
bmVkOiBPdXQgcGFyYW1ldGVyIG9mIHRoZSBUWCBwYWNrZXRzIHByb2Nlc3NlZAo+ICAgICoKPiAg
ICAqIFJldHVybnMgdHJ1ZSBpZiB0aGUgd29yayBpcyBmaW5pc2hlZC4KPiAgICAqKi8KPiAtc3Rh
dGljIGJvb2wgaTQwZV94bWl0X3pjKHN0cnVjdCBpNDBlX3JpbmcgKnhkcF9yaW5nLCB1bnNpZ25l
ZCBpbnQgYnVkZ2V0KQo+ICtzdGF0aWMgYm9vbCBpNDBlX3htaXRfemMoc3RydWN0IGk0MGVfcmlu
ZyAqeGRwX3JpbmcsIHVuc2lnbmVkIGludCBidWRnZXQsCj4gKwkJCSB1bnNpZ25lZCBpbnQgKnR4
X2NsZWFuZWQpCj4gICB7Cj4gICAJc3RydWN0IHhkcF9kZXNjICpkZXNjcyA9IHhkcF9yaW5nLT54
c2tfcG9vbC0+dHhfZGVzY3M7Cj4gICAJdTMyIG5iX3BrdHMsIG5iX3Byb2Nlc3NlZCA9IDA7Cj4g
ICAJdW5zaWduZWQgaW50IHRvdGFsX2J5dGVzID0gMDsKPiAgIAo+ICAgCW5iX3BrdHMgPSB4c2tf
dHhfcGVla19yZWxlYXNlX2Rlc2NfYmF0Y2goeGRwX3JpbmctPnhza19wb29sLCBidWRnZXQpOwo+
IC0JaWYgKCFuYl9wa3RzKQo+ICsJaWYgKCFuYl9wa3RzKSB7Cj4gKwkJKnR4X2NsZWFuZWQgPSAw
Owo+ICAgCQlyZXR1cm4gdHJ1ZTsKPiArCX0KPiAgIAo+ICAgCWlmICh4ZHBfcmluZy0+bmV4dF90
b191c2UgKyBuYl9wa3RzID49IHhkcF9yaW5nLT5jb3VudCkgewo+ICAgCQluYl9wcm9jZXNzZWQg
PSB4ZHBfcmluZy0+Y291bnQgLSB4ZHBfcmluZy0+bmV4dF90b191c2U7Cj4gQEAgLTU1OCw2ICs1
NjIsNyBAQCBzdGF0aWMgYm9vbCBpNDBlX3htaXRfemMoc3RydWN0IGk0MGVfcmluZyAqeGRwX3Jp
bmcsIHVuc2lnbmVkIGludCBidWRnZXQpCj4gICAKPiAgIAlpNDBlX3VwZGF0ZV90eF9zdGF0cyh4
ZHBfcmluZywgbmJfcGt0cywgdG90YWxfYnl0ZXMpOwo+ICAgCj4gKwkqdHhfY2xlYW5lZCA9IG5i
X3BrdHM7CgpXaXRoIFhEUCzCoEkgZG9uJ3QgdGhpbmsgd2Ugc2hvdWxkIGNvdW50IHRoZXNlIGFz
IHR4X2NsZWFuZWQgcGFja2V0cy4gVGhlc2UgYXJlIHRyYW5zbWl0dGVkCnBhY2tldHMuwqBUaGUg
dHhfY2xlYW5lZCB3b3VsZCBiZSB0aGUgeHNrX2ZyYW1lcyBjb3VudGVyIGluIGk0MGVfY2xlYW5f
eGRwX3R4X2lycQpNYXkgYmUgd2UgbmVlZCAyIGNvdW50ZXJzIGZvciB4ZHAuCgoKPiAgIAlyZXR1
cm4gbmJfcGt0cyA8IGJ1ZGdldDsKPiAgIH0KPiAgIAo+IEBAIC01ODEsMTAgKzU4NiwxMiBAQCBz
dGF0aWMgdm9pZCBpNDBlX2NsZWFuX3hkcF90eF9idWZmZXIoc3RydWN0IGk0MGVfcmluZyAqdHhf
cmluZywKPiAgICAqIGk0MGVfY2xlYW5feGRwX3R4X2lycSAtIENvbXBsZXRlcyBBRl9YRFAgZW50
cmllcywgYW5kIGNsZWFucyBYRFAgZW50cmllcwo+ICAgICogQHZzaTogQ3VycmVudCBWU0kKPiAg
ICAqIEB0eF9yaW5nOiBYRFAgVHggcmluZwo+ICsgKiBAdHhfY2xlYW5lZDogb3V0IHBhcmFtZXRl
ciBvZiBudW1iZXIgb2YgVFhlcyBjbGVhbmVkCj4gICAgKgo+ICAgICogUmV0dXJucyB0cnVlIGlm
IGNsZWFudXAvdHJhbm1pc3Npb24gaXMgZG9uZS4KPiAgICAqKi8KPiAtYm9vbCBpNDBlX2NsZWFu
X3hkcF90eF9pcnEoc3RydWN0IGk0MGVfdnNpICp2c2ksIHN0cnVjdCBpNDBlX3JpbmcgKnR4X3Jp
bmcpCj4gK2Jvb2wgaTQwZV9jbGVhbl94ZHBfdHhfaXJxKHN0cnVjdCBpNDBlX3ZzaSAqdnNpLCBz
dHJ1Y3QgaTQwZV9yaW5nICp0eF9yaW5nLAo+ICsJCQkgICB1bnNpZ25lZCBpbnQgKnR4X2NsZWFu
ZWQpCj4gICB7Cj4gICAJc3RydWN0IHhza19idWZmX3Bvb2wgKmJwID0gdHhfcmluZy0+eHNrX3Bv
b2w7Cj4gICAJdTMyIGksIGNvbXBsZXRlZF9mcmFtZXMsIHhza19mcmFtZXMgPSAwOwo+IEBAIC02
MzQsNyArNjQxLDcgQEAgYm9vbCBpNDBlX2NsZWFuX3hkcF90eF9pcnEoc3RydWN0IGk0MGVfdnNp
ICp2c2ksIHN0cnVjdCBpNDBlX3JpbmcgKnR4X3JpbmcpCj4gICAJaWYgKHhza191c2VzX25lZWRf
d2FrZXVwKHR4X3JpbmctPnhza19wb29sKSkKPiAgIAkJeHNrX3NldF90eF9uZWVkX3dha2V1cCh0
eF9yaW5nLT54c2tfcG9vbCk7Cj4gICAKPiAtCXJldHVybiBpNDBlX3htaXRfemModHhfcmluZywg
STQwRV9ERVNDX1VOVVNFRCh0eF9yaW5nKSk7Cj4gKwlyZXR1cm4gaTQwZV94bWl0X3pjKHR4X3Jp
bmcsIEk0MEVfREVTQ19VTlVTRUQodHhfcmluZyksIHR4X2NsZWFuZWQpOwo+ICAgfQo+ICAgCj4g
ICAvKioKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBl
X3hzay5oIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3hzay5oCj4gaW5k
ZXggODIxZGYyNC4uMzk2ZWQxMSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pNDBlL2k0MGVfeHNrLmgKPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
NDBlL2k0MGVfeHNrLmgKPiBAQCAtMzAsNyArMzAsOCBAQCBpbnQgaTQwZV94c2tfcG9vbF9zZXR1
cChzdHJ1Y3QgaTQwZV92c2kgKnZzaSwgc3RydWN0IHhza19idWZmX3Bvb2wgKnBvb2wsCj4gICBi
b29sIGk0MGVfYWxsb2NfcnhfYnVmZmVyc196YyhzdHJ1Y3QgaTQwZV9yaW5nICpyeF9yaW5nLCB1
MTYgY2xlYW5lZF9jb3VudCk7Cj4gICBpbnQgaTQwZV9jbGVhbl9yeF9pcnFfemMoc3RydWN0IGk0
MGVfcmluZyAqcnhfcmluZywgaW50IGJ1ZGdldCk7Cj4gICAKPiAtYm9vbCBpNDBlX2NsZWFuX3hk
cF90eF9pcnEoc3RydWN0IGk0MGVfdnNpICp2c2ksIHN0cnVjdCBpNDBlX3JpbmcgKnR4X3Jpbmcp
Owo+ICtib29sIGk0MGVfY2xlYW5feGRwX3R4X2lycShzdHJ1Y3QgaTQwZV92c2kgKnZzaSwgc3Ry
dWN0IGk0MGVfcmluZyAqdHhfcmluZywKPiArCQkJICAgdW5zaWduZWQgaW50ICp0eF9jbGVhbmVk
KTsKPiAgIGludCBpNDBlX3hza193YWtldXAoc3RydWN0IG5ldF9kZXZpY2UgKmRldiwgdTMyIHF1
ZXVlX2lkLCB1MzIgZmxhZ3MpOwo+ICAgaW50IGk0MGVfcmVhbGxvY19yeF9iaV96YyhzdHJ1Y3Qg
aTQwZV92c2kgKnZzaSwgYm9vbCB6Yyk7Cj4gICB2b2lkIGk0MGVfY2xlYXJfcnhfYmlfemMoc3Ry
dWN0IGk0MGVfcmluZyAqcnhfcmluZyk7CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVk
LWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLXdpcmVkLWxhbgo=
