Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF846543F43
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jun 2022 00:38:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9807640A62;
	Wed,  8 Jun 2022 22:38:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6toEF86ouKuK; Wed,  8 Jun 2022 22:38:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 70EC740297;
	Wed,  8 Jun 2022 22:38:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AE9C81BF873
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 22:38:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 97E7A40297
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 22:38:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ontRabxpma0Z for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jun 2022 22:38:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8B05E400A6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 22:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654727885; x=1686263885;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Hngb043kUOp71vNfpMdyR2si98SwQd28NAM3smPh0M0=;
 b=YRe5b3DdgaJqFjWvRfB3ID5sC5//1Sxp1X2Sa5I9Cgw/hx5I39vOaekU
 lC3NzQs+65vpYmACVCCVZoDx8ccbbtGQKXEi39inwCsXMVcBT0Arg3LOr
 iDsD6aHUqut4ZY1BvO+HHiWPdIKb+gJUFK2Mp6XCiS7aKrHmfl6ynS2Ax
 jkkkPReU4z3pc0hHKKCw1+IvAtkXX4SZP4bWO2Yfu60wNhBL20D8WYu3v
 vPzlUQm6wdfqt4i1gpFHpc/ug+mGL8hi8xEyI0maAqreZ3gNoReuT57Ii
 F0R7+TitCXSn5XCXZRwNmXXCyO7KbXfqz65OjVy2D2rI96w7EOt2WrBYv w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10372"; a="341164911"
X-IronPort-AV: E=Sophos;i="5.91,287,1647327600"; d="scan'208";a="341164911"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2022 15:37:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,287,1647327600"; d="scan'208";a="683608654"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga002.fm.intel.com with ESMTP; 08 Jun 2022 15:37:55 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 8 Jun 2022 15:37:54 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 8 Jun 2022 15:37:54 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 8 Jun 2022 15:37:54 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.102)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 8 Jun 2022 15:37:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VCnLo1N/hjhQ7IoPKFEkCgtC0Z4SNw/YXLe80o2yDCtN62wLHGErYMyZ+1vIYvGJJVfgUdF9XIR9W99USvvkekHrtp+niD8nFfXbs8pGQ4c8vc+2JipDgBjxXMfiWEi3Af5cXQVT003A7HsUX7XWtPElETDHYEbRjLe+DEudZ/X6r+5kkg7G9pmJTZ9R9xGkzbI7rxtGnoaIm+yRltI6yEscj2/S15sNETcGiEtf/ird+i9t4kXVWrTzKsaxp7+l5gTkO57QOumnf54/0wjdt/KdchhzeOMJ57VfQoWWoEmMuUUMOex4WnJAGgAg+RFBmROSJWh5OlW9n8rtQYUY8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=57pFmUfdNcQMPtR60Xhj6ZYz6qlMko9VXi8Np53g/Nc=;
 b=H9clEH6sF3eK48TeiE/vp0rdB0CULv/pI0RQcEzdCJFzf5H4POM0jGnI+ngSgXaqdnJnmld37bMM0BxZKlIDrnTbtaNxNJhenV7q7RHugz0PM78uncq6BNjffdTnnahrCwdqT5GFi01RYEOrMprGRrlAtGrHn98phFBNAdaJtXd5Lu41wMqw4LQmEn9Exw7jF21bQQBTDwq5FxiRBqGDozEbx7nJX//JgAmV9vRWLIoUE2lvariyFiUPCpNxmJpPLR+HRRgVW2F4kd6GDr5KytalmvCgdmnp2AqDFdAOn7L+Tbf5BSpGiGKISPWk/khvlX/hosF3j4CzvGF4uPdCxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by BN0PR11MB5711.namprd11.prod.outlook.com (2603:10b6:408:167::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5332.12; Wed, 8 Jun
 2022 22:37:46 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3%6]) with mapi id 15.20.5314.019; Wed, 8 Jun 2022
 22:37:46 +0000
Message-ID: <e8a1944c-28d5-191f-43c4-9d095e908a91@intel.com>
Date: Wed, 8 Jun 2022 15:37:40 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Jun Zhang <xuejun.zhang@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20220606153535.3574930-1-xuejun.zhang@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220606153535.3574930-1-xuejun.zhang@intel.com>
X-ClientProxiedBy: MW2PR2101CA0025.namprd21.prod.outlook.com
 (2603:10b6:302:1::38) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 10444974-be48-4ead-4eb3-08da499f821e
X-MS-TrafficTypeDiagnostic: BN0PR11MB5711:EE_
X-Microsoft-Antispam-PRVS: <BN0PR11MB5711C2DC8E2541AE4A9C57E4C6A49@BN0PR11MB5711.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FgvCSJB3M2qW03buwCL+PxUG/BkcMgUuqXvopc63mOuVHVUhdIx9ccMFJ4aruqH0z1HhbZKm8OV9zcz+/mvoJm8hYgOnKYQP8H+QvdaXtSD0gfqc/gpjTh1rjSkK03+JcChlMgb2TJFmcQLRGaaInIA0SZenr9FTNY/QRGdNj1UzxqW6Sn07CSUuVgrjTZyx8pQgi0wkt+08BDdr0Mx4g34Iq5My3NA08UpUC6A9s2LXMH7nOgKjZwT9LaI1fd3dR8QvHESaPUIQep3c6mJctH/vxoURxqWbYYHIBUjtq88q9gZhM0WuL0X6TppP8y/hx/6SbXaGacxfRgN06BQMW1LBAIs0EMoSLPN7awAaDJnnhq0pIRIlY++SlPGnvfLZtpii9vKxaPnToDQF6sVcGl2QLGj7PsZIBkF9JNTSmnz2KVmFaayw5m/33WyVcd6amRiG0eF8WrTEJQTjet41UvKTltAmFu25x/hGmMLxD51HYADmgt4dAVP+fgdCKmCVvDKnJwHZCsL8jn2Lc2bjRnQRtdr2y2In1gYxhZ6B8n0s94wsYhBq1m46EGSPFPCG5KgJpvZtv906Ccy9QFwy4ZvpTcfbW4z9DBXBcmh+THyeLb+6yEmVug6fuphs7A3uzaCSBm01DAIy/hmP3VhTNzw2XGbZMlvJKMiiioUjfwDI5rgbdpjN4oaam40kXeMP3Q0elpuehPHb+oO9P9xPag2H8mujdLME95y788AReqVhCVDBkaDSZ8TdBNV18y3hnVPep9FHui8TTouoiH2omIzVNbV7kXIvfgm5CpH+1BA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(107886003)(86362001)(38100700002)(186003)(36756003)(316002)(31686004)(53546011)(6506007)(83380400001)(2616005)(31696002)(6512007)(26005)(8676002)(66946007)(2906002)(6486002)(5660300002)(508600001)(66476007)(66556008)(6666004)(82960400001)(8936002)(4326008)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QzB5TmxSZUxha1hyQjZlbVRVQUhMR1BmaittRE1vOE9SdzNwcVVHL0F0WWNP?=
 =?utf-8?B?VHZxcnd0dml0bGJiRXZySzlqRHVZNDB0UE1NR3pwTzlHSURLZ3pDZGFLQ2l5?=
 =?utf-8?B?Tnptaks4WktvRCtDQXpUUDNVczlKWk1wMTZUSnJnbXV6aDVBby9tVmEyVEFa?=
 =?utf-8?B?UW8yMHdvU28yRFFUS2FkcEtpRkpWSHRiSE94Q0VSUjF0ZXNqYStwQmtwTTRF?=
 =?utf-8?B?cU1RWDRkRUZha0FTQnJLY1VFcUIwV2VvQXFKRlNvUVdJQ25mbnVodXdYckJT?=
 =?utf-8?B?QlpjM1V4MmJ6NjY1WHZXdGxGcjNwdVVMczU0N2NzbFdPa1BseUNSbHBndFhB?=
 =?utf-8?B?T0xGNnBJM3JZWkhvQ0hnZzhYTWRPUVhLZC9haUMzWDNjWExDdWl0RzhFZHFQ?=
 =?utf-8?B?ZE9OM0dBL093czRQdkhjbUlJUVdtQmYrdFlQMmNrcGplMmU3aW40N1lTODhx?=
 =?utf-8?B?QUV5ODlXdFN4b1lFZG1pc0ZEVS9PWkM1dnJ3clUxdWdqL09yNEVKRFREV1A1?=
 =?utf-8?B?ckRXTlJrMGdlcW9xMjRJbmFIS2l5S0UySVdicnQ1cHpmZTVtWHNwdWR1bG9F?=
 =?utf-8?B?aVZIVnFTaFZtV0UzZVhMeHBiQzZoc0xJSG14Z0ZwcGRYcUgxanpIN0szdEhp?=
 =?utf-8?B?YmNFajZDWU5TWkY1VEF2YnEwNnh1TEF0K1B5OFhzclEwY2U1Ky9ONVV6Q2du?=
 =?utf-8?B?TFBVeFFrYUd2Yy9aV1JVKzJidWxTQy9lT3pQRVA3aDNFNkNEYTJDeU90cTBx?=
 =?utf-8?B?TGJ5cytIMFk5YlAwRHVOaEhTQmlxUUdzdGpYVTZwQTdFMjJvTmlSU2tDOWxJ?=
 =?utf-8?B?UlBnVTNRMzJZVUJWQ0hycTBEU3p4aUhlUks2aXBjajB3NENuakthck9GWW95?=
 =?utf-8?B?ci9TaEtxSnRGVDBmWWVwNU5ZbkJhOTVCMzVUS2cyb1BqeWxJT1d4dlJVeEdm?=
 =?utf-8?B?MzdXNkVEUGUzRXlMejI1cHpjb0ZOaldvSHphQXBMcXRtK0E1NDV3blVQS2dq?=
 =?utf-8?B?dGsxUWxBY1B1TkNnUmpWV3pRb21HKzFQVkt5T3JPdGdXNm1ZNWwxZ0N3VUU4?=
 =?utf-8?B?RjRSYTFCYU0vWlBRcFJXNEpkM1ZvczZ2YzVLWi9ZcWcxWVRWVytlZGxDaS93?=
 =?utf-8?B?TWtQMEhXcjFrWml0Z2FKSG5MVmFPbmZGcmlQTnVId3d4dEZnMDkyWFVwbkhz?=
 =?utf-8?B?OFp0SmJtYzFLRUI4TGJpalQ4ZUlLMDZEeEYyMEVrMmlaejQvZkNBT0s5QWlL?=
 =?utf-8?B?UWlOUldsNFVnVVRsQTc2ODlYTmhGM0dVczFVSGdxTzRPUkJwYWdjdk5taFB4?=
 =?utf-8?B?blk4RHVLU2t0bXFSWTd1N0kxRUFWYXF1M1ZqK3lJSHNiOWdqVUh4TnNBclNX?=
 =?utf-8?B?dU5xUk5yUWpCMkd3Vm04c1RNcllwOG1MdWs0Ry9FdUVOZ043NGk2UzZ0OXZG?=
 =?utf-8?B?M1NCU21TTEVVQVc0VDNLU0lyRDVJcTNzNDFMdjNmWTQyQUlKR2s5WlR5QURk?=
 =?utf-8?B?ejJLNjBqZkVpcmRFdld2NndHNzRHNmRFOXAzUkNxYmhqdlZNc3ZDSlorZTFj?=
 =?utf-8?B?QU4vbVFpRzk4dVIyU2FmeGVKaUJYTFBlRDd5T1B3MEZ3WGIwelBqM3A4Yzlt?=
 =?utf-8?B?NGxxMUtidDAzd0RKSStTWnJldjFtcjQxbWJKeEMrYkxmb3Fhblh4QWd6YUln?=
 =?utf-8?B?MjRINlVPUE9TVHlaS0xCbUpGSXNDUjRhYlZjUUo0UUUrWXlNb042NG9qQk05?=
 =?utf-8?B?YTdCUkxOUmV5YmJCcUMwTFdJbGYzM3pEb3RGd2QxUkI1aUVMaG5md0hVWXpp?=
 =?utf-8?B?QWlvMEt2S2FOemYvd21GaFE2RVNZbkFpV0xBTmN3OUdZaUZEcFIvaE5ycSs0?=
 =?utf-8?B?YW9ibUlBa1FGM09wNHl2d1JpdmtxSXJhOTI2aU5NREtqclM2eWc1VVJUMFdM?=
 =?utf-8?B?blhEekYwVkNxMXJDbXVHUWI5K3lGeUpMTFA4WjFrWG4rdXV2NjJsdlk5UHlm?=
 =?utf-8?B?Qlp6VnpHZkMxYkc3c0o4MmtHQjJ3OFUxVDFxTGt0clFMdDZNY3FRK2t4L2hW?=
 =?utf-8?B?WHJEcEJ4dmRVRjZNVmdDKzdtUy9JS24zSzJNVi9hYTNYR0tWSnl4VVFDVWxD?=
 =?utf-8?B?TDdnbHlsdkhnSm9RUDFrcng0eFM3cWxucE9DRDJ1ZHR0RnRKajZqN25zVXAv?=
 =?utf-8?B?SDZvK2EzcVhkczkveG9aRG5EWGZaTlpWcFgrbFVTQkErci9xamxlSGJYNEdB?=
 =?utf-8?B?ZVBseEpwNWdzTnI4OFVqM05QOTh2SG0xQSs0eEJXNml4MUNuYTZPWTZjT2xl?=
 =?utf-8?B?VUM0M253dDBKRUV6eHY4c0c4VjVsYmdkWVpLMW1sSEtCWk1heVdVSVRJQm9E?=
 =?utf-8?Q?i6fJtrzr3nsYjUc4=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 10444974-be48-4ead-4eb3-08da499f821e
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2022 22:37:46.0185 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RGvevZKJB200r+6hUJ4gnCN4o54mE+nhkrVaQxIGo/fsADKnNwxVFduNOaXh4p7vpzMDUbbNtL/QgYR9g7zC6DCJhAQ2CGbJHaAUrZwsvMc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR11MB5711
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: Fix max_rate limiting
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
Cc: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 6/6/2022 8:35 AM, Jun Zhang wrote:
> Fix max_rate option in tc, check for proper quanta boundaries.
> Check for minimum value provided and if it fits expected 50Mbps
> quanta.
> 
> Without this patch, iavf could send settings for max_rate limiting
> that would be accepted from by PF even the max_rate option is less
> than expected 50Mbps quanta. It results in no rate limiting
> on traffic as rate limiting will be floored to 0.
> 
> Example:
> tc qdisc add dev $vf root mqprio num_tc 3 map 0 2 1 queues \
> 2@0 2@2 2@4 hw 1 mode channel shaper bw_rlimit \
> max_rate 50Mbps 500Mbps 500Mbps
> 
> Should limit TC0 to circa 50 Mbps
> 
> tc qdisc add dev $vf root mqprio num_tc 3 map 0 2 1 queues \
> 2@0 2@2 2@4 hw 1 mode channel shaper bw_rlimit \
> max_rate 0Mbps 100Kbit 500Mbps
> 
> Should return error
> 
> Fixes: d5b33d024496 ("i40evf: add ndo_setup_tc callback to i40evf")
> Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
> Signed-off-by: Jun Zhang <xuejun.zhang@intel.com>

Who is the author for this? If it's Jun, your name needs to be first. If 
it's Przemyslaw, the author needs to be fixed on the patch.

> ---
>   drivers/net/ethernet/intel/iavf/iavf.h      |  1 +
>   drivers/net/ethernet/intel/iavf/iavf_main.c | 24 +++++++++++++++++++--
>   2 files changed, 23 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
> index fda1198d2c00..0bd516ecebef 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -93,6 +93,7 @@ struct iavf_vsi {
>   #define IAVF_HKEY_ARRAY_SIZE ((IAVF_VFQF_HKEY_MAX_INDEX + 1) * 4)
>   #define IAVF_HLUT_ARRAY_SIZE ((IAVF_VFQF_HLUT_MAX_INDEX + 1) * 4)
>   #define IAVF_MBPS_DIVISOR	125000 /* divisor to convert to Mbps */
> +#define IAVF_MBPS_QUANTA	50
>   
>   #define IAVF_VIRTCHNL_VF_RESOURCE_SIZE (sizeof(struct virtchnl_vf_resource) + \
>   					(IAVF_MAX_VF_VSI * \
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 57c51a15bcbc..27a39d86268d 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -3411,6 +3411,7 @@ static int iavf_validate_ch_config(struct iavf_adapter *adapter,
>   	u64 total_max_rate = 0;
>   	int i, num_qps = 0;
>   	u64 tx_rate = 0;
> +	u32 tx_rate_rem = 0;

nit: Please arrange as RCT.

>   	int ret = 0;
>   
>   	if (mqprio_qopt->qopt.num_tc > IAVF_MAX_TRAFFIC_CLASS ||
> @@ -3423,12 +3424,31 @@ static int iavf_validate_ch_config(struct iavf_adapter *adapter,
>   			return -EINVAL;
>   		if (mqprio_qopt->min_rate[i]) {
>   			dev_err(&adapter->pdev->dev,
> -				"Invalid min tx rate (greater than 0) specified\n");
> +				"Invalid min tx rate (greater than 0) specified for TC%d\n", i);
>   			return -EINVAL;
>   		}
> -		/*convert to Mbps */
> +
> +		/* convert to Mbps */
>   		tx_rate = div_u64(mqprio_qopt->max_rate[i],
>   				  IAVF_MBPS_DIVISOR);
> +
> +		if (mqprio_qopt->max_rate[i] &&
> +		    tx_rate < IAVF_MBPS_QUANTA) {
> +			dev_err(&adapter->pdev->dev,
> +				"Invalid max tx rate for TC%d, minimum %dMbps\n",
> +				i, IAVF_MBPS_QUANTA);
> +			return -EINVAL;
> +		}
> +
> +		(void)div_u64_rem(tx_rate, IAVF_MBPS_QUANTA, &tx_rate_rem); > +
> +		if (tx_rate_rem != 0) {

I believe the preference is
if(tx_rate_rem) {...

> +			dev_err(&adapter->pdev->dev,
> +				"Invalid max tx rate for TC%d, not divisible by %d\n",
> +				i, IAVF_MBPS_QUANTA);
> +			return -EINVAL;
> +		}
> +
>   		total_max_rate += tx_rate;
>   		num_qps += mqprio_qopt->qopt.count[i];
>   	}
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
