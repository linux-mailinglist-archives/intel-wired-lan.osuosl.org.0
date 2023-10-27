Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6329D7D9FBB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Oct 2023 20:20:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E5EE5404A4;
	Fri, 27 Oct 2023 18:20:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E5EE5404A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698430803;
	bh=h7+mnY7aTaiyrwreA6AzdHlhPPVUG8/2V6HluzokT8Q=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YvVo0lYRaBqppeFC4HtBQThZfo2jZvnj4PGqsEUpIueGjNZueoh3RBh497LxIU1zC
	 DAE5GToZXaD7PKfqtf4+mGSsxXOYkPCtyV/iYX4tfj5t2LaMFBSJEHfvZ5Y6tRPLQw
	 2pL99Gd7F55H0Tp6/F9qoZFvq6AG6/kLSBLtAGVfi3v/YdVpYbSFtKdwoE1qN2JMAL
	 qGpaw2QRPMwIolhRg5/5+xbyOV9H/hRhgQh8CYTWeSs6ChpcUpV5eOUxObjvMrF/+J
	 FK+3QBep/dRH5PQA3QeoooA61u/gcMQQRjfqCeiGPkqmCnvmc1sWGIia6jYzVq2vdo
	 SNRrriRkhxBjA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ieDWjZSBurZt; Fri, 27 Oct 2023 18:20:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9DE2F404CC;
	Fri, 27 Oct 2023 18:20:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9DE2F404CC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9640A1BF344
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Oct 2023 18:19:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6CDD84021B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Oct 2023 18:19:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6CDD84021B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cZ9mnWVkgYu1 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Oct 2023 18:19:56 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7240940210
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Oct 2023 18:19:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7240940210
X-IronPort-AV: E=McAfee;i="6600,9927,10876"; a="474067970"
X-IronPort-AV: E=Sophos;i="6.03,256,1694761200"; d="scan'208";a="474067970"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 11:19:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10876"; a="709482689"
X-IronPort-AV: E=Sophos;i="6.03,256,1694761200"; d="scan'208";a="709482689"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Oct 2023 11:19:54 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 27 Oct 2023 11:19:53 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 27 Oct 2023 11:19:53 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 27 Oct 2023 11:19:53 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 27 Oct 2023 11:19:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kxqtK8z8DegoTDqOET6adhrOPXrs737JNz3IZcedRyt5Hqy7lCM4W/pkEiALq5DWm/hR64vlRJGIQ7icYUCUTq0UDCaK0YtxDljSfw+0kkH+4WX6bXi4j0Q49RwrfUn6RWcOw9TKNfNL+ATFXD6h5ACwhH15//qTmoNjpY7mbYUdWvPRT3yudonQ1B4KfyCrPjkjmhA16ksPkyQzU9AOcGyuxCa/qOUZsEhcw8U/cyVgFDnlZypOgc6zF9vxXxVSom5i2GMlGNtJ6WwIQUyAp2WHS4+WxkmC/09GbS4hC76xjZjEzFLTD9jveRAUlQAzXooieUer7Wmve50q0d8blA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x83GAMmger/VNrBDusKYGjfs47AGieTK/LP72MR9Y9E=;
 b=YjQ6Un3o+3Jp/XraVT0+PUzpj8eJFz9KGtzVyY5Na29xenPpf8L48vFZO5k/wryyVaQwnvzM+aWJiTKgJWOa1M1cQWz/wgcX3hAUERE3c+1lCcajRCpheUuNeV6kxQFWHP1igXq4+asoatkof+pyVhisIEcbGn+MuD+RzohkbgzskRZIVD59HtqoOHS89KYWSEIsSWe9R41yvlTr9skiipiH7rGg5dPy4X+eGbJDTlHTZg7j4Oyb5gjVl8/Xz7wlJctxvil+cBMjZUgAk6X4RSCwHE8Jyjxgo/9zBXlZ3pSWfDH53Z65LU7m/FHzuCbWZNhNgYtV64DXC0HqTlQRCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH7PR11MB6606.namprd11.prod.outlook.com (2603:10b6:510:1b1::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.33; Fri, 27 Oct
 2023 18:19:47 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::2724:db16:fe7b:2ffa]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::2724:db16:fe7b:2ffa%6]) with mapi id 15.20.6933.024; Fri, 27 Oct 2023
 18:19:47 +0000
Message-ID: <05897b07-ac2c-4770-86ec-c44296a24587@intel.com>
Date: Fri, 27 Oct 2023 11:19:45 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20231026105955.282546-1-karol.kolacinski@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20231026105955.282546-1-karol.kolacinski@intel.com>
X-ClientProxiedBy: MW4P220CA0026.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:303:115::31) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|PH7PR11MB6606:EE_
X-MS-Office365-Filtering-Correlation-Id: 8ee27e10-45b6-47cf-37a9-08dbd7194d42
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4eMSy1Ld/Erd/nCjHWs1m6ndEssvKbKdj01Q4RNRMfedUaZTRBmU74gHzZPzoPI6dACwjQBtguiY/iGS5IY4TUzVPZ8eFuvGs6/7Vw4bK1+8F8BXjx6HDVO4X9ckDrsfFvDCLT7Sa5LEQ7JG03KV74C21lYuwAqNhcfQTcJCxk7IAclYQHhgfG6RvmiAzJ6aEdQLaCQEwJB7XEaWL6MMjiL08sa1Ky3ETN5fckCTD06SyOKbSYU6kAvlzA0OT6jOxXwAWAfUgAo0AX3DR3Z30UnyKnqb0JsNk2VemT/nVYkDFYdJhvP1E6Bi4gFA/VX8W3/EFmyozlQJ6+F+da1DXtT48ndSZr+AykEjZi6/vhdFUR/5XrDExvLPDIEFILAsEyATHMnXL/fiQ2QYPrfiFfkl+EYVuc4HfaPQZtPO1Mio2ESGFr8kn3eTA1kxaxawAoVJJMWgyIoNNwEB/S58u/wH7Zq9Qfzqc71NCUiI0YZux/zTZncS0bUIGxXJ54XiA+tYoOv3CVequxC/ISrKPezQffqYmz7PjPYymF9uwJtHztX/BtSPjcvStQqzxstBmzb0MjVIjnBq0CYQiBFYVbN2GAFleQmIFjdimsLuN+F2QRicbPks83RxM12yci7notg5RH8zR4MMAjmm6RBHwQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(366004)(39860400002)(396003)(376002)(346002)(230922051799003)(1800799009)(64100799003)(451199024)(186009)(8936002)(4326008)(8676002)(41300700001)(2906002)(5660300002)(53546011)(82960400001)(6512007)(6506007)(36756003)(83380400001)(2616005)(107886003)(38100700002)(86362001)(66946007)(31696002)(316002)(66556008)(26005)(31686004)(478600001)(6486002)(66476007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eXcyMkhXOWtPSTNHUFIyM29INElTVWVLNWQ4NGY4M1hhNUdSeU1kRHhNaFJJ?=
 =?utf-8?B?Q0txMFhXUGhaZlNjY1dvK1N5WWRtY011VUJva2hkakc0Y0ZhekNJcS9zaTFs?=
 =?utf-8?B?aklod3R1UXk2aHpDNnpEajNUajZBY0Q3ZjNvY2RkT1BsOG0zRDE0Vk41RklR?=
 =?utf-8?B?c29mOHpXYUtxaFJTRkRKUFVxRVUvNnhHRVN5TkRWeTJTUzc4ZlR1V04yb0dl?=
 =?utf-8?B?Z1VqT044WnRIaXc1UW9mdi9ZZElIWXM4L1BvQk5VOU1aZWN6S1Z0emRab1Zq?=
 =?utf-8?B?UjAyNVpoVVVMeVVITnIwNlBRbVJXREw0d2YwTUVYOHU4c0pYQS90ZW11US9a?=
 =?utf-8?B?OXJlc0FaeUJ5SlB6SE9tUmcxK3JTYXpaVDQ0VTNjd1Bna0ZRalBTZS9wdk4r?=
 =?utf-8?B?Rkx3czBla2lQRXlsbzl1Mm9kbGdlUURpSUdMWTc3bGJEaC9sUStyTXBmdGFX?=
 =?utf-8?B?dVZveXIvK1Q3Vm04cVA4QWdjai9YaWxJbUZjbGt3emhqOVR1WkpWR2JPR05Q?=
 =?utf-8?B?NzlWQ0YydkhYQzFFUkN1OUZTM0RTSzdqZzhpN1dxRnRheE9LK2lYR3RyU2JI?=
 =?utf-8?B?NmlxeC9sNnJqVElhOWFCK2liZWpiUlpRWk41QkRqWmhGN1hvb0VJSXdCNlBj?=
 =?utf-8?B?M0xpM0toM2psMXVKMGxCa284OTVvTHZsUUJyWkU0eC9XTmhBTEpkR1Jid1lD?=
 =?utf-8?B?bnRJVFcwTVNDdFoyUUtORjVXUXVKSXY2N0FNYlFaemIvR1lXTXIvYUpmTkpK?=
 =?utf-8?B?cWZoc2hacjFHNlJGUC9pRFFIWVBFeDQ4R1NRKzhWeTJNS1ArUjdscnVLdEYv?=
 =?utf-8?B?NGFpbndHR213aE1rYzByVCt2SkI2UG9VMUNJRi9GbFZVVEIxN01KZ2pDaGIw?=
 =?utf-8?B?Q0oyK2F5MzBrZFNNSHBaV0p5dHU4Ni9LeGRYd1NYL3VxQUdOUGQ3YmYrbVNV?=
 =?utf-8?B?d21LbDlPdTRHb21nTFJhakIzcDZobXMyUGtka1VMK3Z3a1prSklMcHNtVUNu?=
 =?utf-8?B?bU9wRGthd2RSZ0xGRVFaTitzMTc4Mmh6aGFoNWR0QUV2b2Y4ZEVqYnc5aEdZ?=
 =?utf-8?B?cVBoZDdjNUJ3RXRkVnFTelFWK0NHUGMxTS91am9NZEdaZHpMcm5vNy9xNzZu?=
 =?utf-8?B?TkJuRmFralRpVnNaUFZNaUJ0S1dXRGgzVmh5K045Nm9iTzU0ZUV6dW5lWVh4?=
 =?utf-8?B?YVg0RC9YWVpGclAwVGdnYTNmZFd0QWFjYnZ6YWt4RTNqZ0VqeWVPckZieGVX?=
 =?utf-8?B?eVAyN2R6em9rUzBiUk5pcnpBSDRLY2l2OTg2NnNFbjh1My81YVplS3p5NGZj?=
 =?utf-8?B?NDl0a21rZ3ppcisyQWFjUWZwczlKRzZqdkxraTJLa1U2VTRJU2tNRjhiUmNp?=
 =?utf-8?B?NFZyc0NYenFCTXRiSlBrYkxWbVlzWXczWlhqNWpoeG53OGROQ2l0RkFUZis4?=
 =?utf-8?B?ZFk3UjJKTU9FQWp4bk1ObkU4UzA0MldZbHJMY3hMMzJVRXg4eHZYQVByNlpQ?=
 =?utf-8?B?NHZMQXp2VmVnM3l6WjhQdWVxTXh3S1pRdnUyVHBtZ0VsR25pQTRlVk91VkFs?=
 =?utf-8?B?ang3ZjhnY1Z3WDA0WkdVVTcyQUc2Skl6RytMRW1TUklYdUJKcUVrbEVaSDNh?=
 =?utf-8?B?M2orZmptQ3dVVDhDTjlKa2NXeWlKME5tdlk1dmZNSkx0UWFNSjNtUU1RTkF4?=
 =?utf-8?B?OXJybzMwemM2bDBRRUFvWlF2cDVqRS9Eck9pYm9oY0J4UUNXMUtKQThPdzht?=
 =?utf-8?B?YURYZEtGT1pGSXdqOFBQV3IvK3R2Q3lSUTdMcmNlTzIwZ05hTHRYODloazNr?=
 =?utf-8?B?NE1jdTkvU1pCMnRtak5lbnJZWDZESE1iUUhqOHliZ0hqUWczbk5yN0NiMnpT?=
 =?utf-8?B?bStNTHJWR0p1cmRjY1gxMlcxeHgwc1dVU0hSUTM1MExiSHI3OCtFZU5rQ3oz?=
 =?utf-8?B?cmJCc0dqNkhEWUJ5emFmU1hreTgyZ044UlZJQUVDSHJ5bGRzQ05PM3Z6N3Np?=
 =?utf-8?B?MFVhZDBwMC9GdjVyVmpSKzEraXFDeTBYUUF4cTNSdHVuVmVqT3VOek4rclJW?=
 =?utf-8?B?U3dOc1VZc2oxNWtJN2lmdHNXZ211R2tkSnF3dDJmcWtjMkc4TEZua0NBMUg4?=
 =?utf-8?B?cDVNZUltZjR2NEsxbUVjYzlKTUNMNUdKOW1xMlFHMVVxb0ZMRHJrT1BlaDBl?=
 =?utf-8?B?V0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ee27e10-45b6-47cf-37a9-08dbd7194d42
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Oct 2023 18:19:47.4505 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5gmsKpl94XCAiG31CmmCsJuBrCFjEpJwHU+gzDSlkm74y1Bva3blrB2aXXP3eV+PEzJmrn+uCkAxe81VEw6rY0FDFh1VuTX41HWxWVs/s5k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6606
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698430796; x=1729966796;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/8D5JsnOgv1JXoxuiWb0T6RqB54OPNDZshWoy1P9iYM=;
 b=RdSHNKVpedFe0fuZ/RSql+5cKCeI6n2EMhsmIqhBKhQMCMPjtgUXFlXK
 sTRWGuKK6OYysBL3s9HqXGCRcvHz+XEL6J09OolTghBn8NYdSATbEtdkn
 F97X0akFQ4gG+VqfK7FeLQjUEFqLKfhDvglKzsAwfCUzauBmVzmGpdolF
 VutITSgZD6ib19s7X3LDw59MDmf/0ueRRk7leVXArZb0teJ31vYmh2hlv
 wgPO9WTyuhK0niuC+WH6Q8NP9N/wy66m5FmRh1SQPob+cQ78Csohv9E30
 uJ/YMw7KB02oA17108VtaV0pSuXtxbxXpTghglpEYKEXEuY1n8q/yCLtp
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RdSHNKVp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: remove unnecessary
 discarding of timestamps
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>, anthony.l.nguyen@intel.com,
 jesse.brandeburg@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAxMC8yNi8yMDIzIDM6NTkgQU0sIEthcm9sIEtvbGFjaW5za2kgd3JvdGU6Cj4gRnJvbTog
SmFjb2IgS2VsbGVyIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+Cj4gCj4gVGhlIGljZSBkcml2
ZXIgY3VycmVudGx5IGRpc2NhcmRzIGFueSBvdXRzdGFuZGluZyB0aW1lc3RhbXBzIHRoYXQgYXJl
Cj4gaGFwcGVuaW5nIHZlcnkgbmVhciB0byBhIC5hZGp0aW1lIG9yIC5zZXR0aW1lIGNhbGxiYWNr
LiBUaGlzIHdhcwo+IG9yaWdpbmFsbHkgYWRkZWQgYnkgY29tbWl0IGIxYTU4MmU2NGJmMiAoImlj
ZTogaW50cm9kdWNlCj4gaWNlX3B0cF9yZXNldF9jYWNoZWRfcGhjdGltZSBmdW5jdGlvbiIpIGFu
ZCBsYXRlciBleHRlbmRlZCBieSBjb21taXQKPiBkNDBmZDYwMDkzMzIgKCJpY2U6IGhhbmRsZSBm
bHVzaGluZyBzdGFsZSBUeCB0aW1lc3RhbXBzIGluCj4gaWNlX3B0cF90eF90c3RhbXAiKS4KPiAK
PiBUaGUgb3JpZ2luYWwgbW90aXZhdGlvbiBmb3IgZGlzY2FyZGluZyB0aW1lc3RhbXBzIHdhcyB0
aGF0IGV4dGVuZGluZyBhbgo+IG9sZCB0aW1lc3RhbXAgdXNpbmcgdGhlIG5ldyBjYWNoZWQgdmFs
dWUgb2YgUEhDIHdhcyBhIHByb2JsZW0sIGFzIGl0Cj4gY291bGQgcHJvZHVjZSBpbmNvcnJlY3Qg
cmVzdWx0cy4gVGhlIGNoYW5nZSBkaWQgbm90IGRlc2NyaWJlIHdoYXQgc3VjaAo+ICJpbmNvcnJl
Y3QgcmVzdWx0cyIgd2VyZS4KPiAKPiBUaGVyZSBhcmUgbm8gc3VjaCBpbmNvcnJlY3QgcmVzdWx0
cy4gRXh0ZW5kaW5nIHRoZSAzMiBiaXQgdGltZXN0YW1wIHdpdGgKPiB0aGUgbmV3IHRpbWUgdmFs
dWUganVzdCBtZWFucyB0aGF0IHRoZSB0aW1lc3RhbXAgaXMgcmVwb3J0ZWQgaW4gdGVybXMgb2YK
PiB0aGUgbmV3bHkgdXBkYXRlZCBhbmQgYWRqdXN0ZWQgc3lzdGVtIGNsb2NrLiBUaGlzIHdvbid0
IHByb2R1Y2UKPiBpbmNvcnJlY3QgcmVzdWx0cyBvciBwcm9ibGVtYXRpYyB0aW1lc3RhbXBzIHRv
IGFwcGxpY2F0aW9ucy4gRWl0aGVyIHRoZQo+IHRpbWVzdGFtcCB3aWxsIGJlIGV4dGVuZGVkIHdp
dGggdGhlIHZhbHVlIG9mIHRoZSBQSEMganVzdCBwcmlvciB0byB0aGUKPiB0aW1lIGFkanVzdG1l
bnQgKGlmIHRoZSB0aW1lc3RhbXAgY29tcGxldGVzIHByaW9yIHRvIHRoZSBhZGp1c3QKPiBjYWxs
YmFjayksIG9yIGl0IHdpbGwgYmUgZXh0ZW5kZWQgdXNpbmcgdGhlIG5ldyBQSEMgdmFsdWUgYWZ0
ZXIgdGhlCj4gYWRqdXN0bWVudC4gSW4gZWl0aGVyIGNhc2UsIHRoZSByZXN1bHRpbmcgZXh0ZW5k
ZWQgdGltZXN0YW1wIHZhbHVlIG1ha2VzCj4gc2Vuc2UuCj4gCj4gVGhlIHRpbWVzdGFtcCBleHRl
bnNpb24gbG9naWMgaXMgdmVyeSBzaW1pbGFyIHRvIHRoZSBsb2dpYyBmb3VuZCBpbgo+IHRpbWVj
b3VudGVyX2N5YzJ0aW1lLCB0aGUgcHJpbWFyeSBkaWZmZXJlbmNlIGJlaW5nIHRoYXQgdGhlIGlj
ZSBoYXJkd2FyZQo+IG1haW50YWlucyB0aGUgZnVsbCA2NCBiaXRzIG9mIG5hbm9zZWNvbmRzIGlu
IHRoZSBNQUMgcmF0aGVyIHRoYW4gYmVpbmcKPiBtYWludGFpbmVkIHB1cmVseSBieSBzb2Z0d2Fy
ZSBhcyBpbiB0aGUgdGltZWNvdW50ZXIgY2FzZS4KPiAKPiBJbmRlZWQsIEkgY291bGRuJ3QgZmlu
ZCBhbiBleGFtcGxlIG9mIGEgZHJpdmVyIHVzaW5nCj4gdGltZWNvdW50ZXJfY3ljMnRpbWUgd2hp
Y2ggZG9lcyBkaXNjYXJkIHRpbWVzdGFtcHMgdGhhdCBvY2N1ciBuZWFyYnkKPiBhIHRpbWUgYWRq
dXN0bWVudC4gVGhlIGljZSBkcml2ZXIgYmVoYXZpb3Igb2YgZGlzY2FyZGluZyBzdWNoIHRpbWVz
dGFtcHMKPiBqdXN0IHJlc3VsdHMgaW4gZmFpbHVyZSB0byBkZWxpdmVyIGEgVHggdGltZXN0YW1w
IHRvIHVzZXJzcGFjZSwKPiByZXN1bHRpbmcgaW4gYXBwbGljYXRpb25zIHN1Y2ggYXMgcHRwNGwg
dG8gdGltZW91dCBhbmQgZW50ZXIgYSBmYXVsdAo+IHN0YXRlLiBSZXBvcnRpbmcgdGhlIGV4dGVu
ZGVkIHRpbWVzdGFtcCBiYXNlZCBvbiB0aGUgdXBkYXRlZCBQSEMgdmFsdWUKPiBpc24ndCBwcm9k
dWNpbmcgImdhcmJhZ2UiIHJlc3VsdHMsIGFuZCBkb2Vzbid0IGxlYWQgdG8gaW5jb3JyZWN0Cj4g
YmVoYXZpb3IuCj4gCj4gUmVtb3ZlIHRoZSB1bm5lY2Vzc2FyeSBzdGFsZSB0aW1lc3RhbXAgbG9n
aWMuCj4gCj4gU2lnbmVkLW9mZi1ieTogSmFjb2IgS2VsbGVyIDxqYWNvYi5lLmtlbGxlckBpbnRl
bC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogS2Fyb2wgS29sYWNpbnNraSA8a2Fyb2wua29sYWNpbnNr
aUBpbnRlbC5jb20+Cj4gUmV2aWV3ZWQtYnk6IFByemVtZWsgS2l0c3plbCA8cHJ6ZW15c2xhdy5r
aXRzemVsQGludGVsLmNvbT4KPiAtLS0KClRoaXMgZG9lc24ndCBjb21waWxlIHdoZW4gYXBwbGll
ZCBvbiB0b3Agb2YgZGV2LXF1ZXVlOgoKPiAuLi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Y2UvaWNlX3B0cC5jOiBJbiBmdW5jdGlvbiDigJhpY2VfcHRwX3JlYnVpbGRfb3duZXLigJk6Cj4g
Li4vZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHAuYzoyNTA5OjI6IGVycm9y
OiBpbXBsaWNpdCBkZWNsYXJhdGlvbiBvZiBmdW5jdGlvbiDigJhpY2VfcHRwX2ZsdXNoX2FsbF90
eF90cmFja2Vy4oCZOyBkaWQgeW91IG1lYW4g4oCYaWNlX3B0cF9mbHVzaF90eF90cmFja2Vy4oCZ
PyBbLVdlcnJvcj1pbXBsaWNpdC1mdW5jdGlvbi1kZWNsYXJhdGlvbl0KPiAgIGljZV9wdHBfZmx1
c2hfYWxsX3R4X3RyYWNrZXIocGYpOwo+ICAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgo+
ICAgaWNlX3B0cF9mbHVzaF90eF90cmFja2VyCgpUaGFua3MsCkpha2UKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcg
bGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
