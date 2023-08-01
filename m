Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A3D076B719
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Aug 2023 16:19:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 535AF40467;
	Tue,  1 Aug 2023 14:19:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 535AF40467
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690899573;
	bh=oWYbC6WskZHvGqBJXUowf3ZwPyC3UxDRW8i+ffay4k0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bud8Cmi0OJu3tP6g8fBGPDzA8L5mEpntC2B7N0LRBV6sPn5KUC41cgPEmhot62anP
	 HsyvGMDZpbf4gEW7QnIyRvYYeTKG7PNd1p3EkN31Te+KX9ZhXpRPCoJdEE/KDPqMT8
	 2N4cYTy5W6/cTSAdJ6LWg7uA2QPG8PE4r5Gh8AY/RsJSPaHcRDZxNnqVw988mlW43s
	 sR3b5oIP1odPYk3KiY27xk8AOXtJRvlCeVB7BjtjL/Q4TmtjyiTHjxIf5AzwFITZn8
	 kGhB4hlsRBNFD4AAgYY5U9LGsdBJp9sr1g3m0EOqsloS54okuGonyshLEJPSnRtMWv
	 WOcSQv/3e2AhA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P7nCbJAoxLNI; Tue,  1 Aug 2023 14:19:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 710A640142;
	Tue,  1 Aug 2023 14:19:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 710A640142
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 859341BF2AA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 14:19:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6894481F2E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 14:19:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6894481F2E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Enk-N-uvTKoI for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Aug 2023 14:19:16 +0000 (UTC)
Received: from mgamail.intel.com (unknown [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8CC848145F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 14:19:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8CC848145F
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="372941139"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="372941139"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 07:19:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="722495912"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="722495912"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 01 Aug 2023 07:19:00 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 1 Aug 2023 07:18:59 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 1 Aug 2023 07:18:59 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 1 Aug 2023 07:18:59 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 1 Aug 2023 07:18:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OfsWU9xYhNotsz6woU/VGhuQHp1nRUOwwFNn0YkLQVajyHmkqe/A/MXEh+W3ujr6Xil4SODwA8rWrjcFqKr55OV6XayzGTXEbO+MxK6CVTlOjtQgpekDMh4j0sYRghvZPNSrrOAGi9T/kC/vPYQsuoimOMJX8NEL3jSci6hrDYtijAIuA3A5dy1jy4NOnaAJ0MXf/ApJ3ZmZ7i3k4gkLxNxEV61gd60cnn5W2ylDgc0cuUiMapuUolfCJcDriUrhLnnvJugoHIP9DxbkVmAIZvlZUt8QXvFEni7pPgptrJhZGpqzsPLoE8AUHtYQ7Qx3vmJ+EW3YgszB+zpNJ5hBEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JCHCwLcWji6QBukG6117E3iJ+vRn1ZrFtuSrvUkY29M=;
 b=Okq21VZNUSvm2pARpxY3zpJ9E2sFjKQQDHfY+NsGuTr/AoM8zpsXsnCrRtpr0GP841gEvmYcsxxcSB6yAqkMbFXhYd8moSR5ymNvd9BrX4gRj4D/I9QrJT25fYSU16eAAvDT7AxfOpqlPd4TUZ1gkJRRXEguS3OSAZ/KROs24vH1FMACT7JZ+sqRfSdSYztr7SpaqUVNWNAyCSYyiJsopaHWzu+b6EWgAJozSoQfCLJ7llAppvFbCnfTkC7LGpeNWz3DqLF9RxUq7+0+csE02yjMiHfWx/xVsbarQQcJxvZgU/zMbCycegLBW38BwmxPhUdNJFqbGd1xEjQ8NSoPIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3674.namprd11.prod.outlook.com (2603:10b6:5:13d::11)
 by PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.29; Tue, 1 Aug
 2023 14:18:52 +0000
Received: from DM6PR11MB3674.namprd11.prod.outlook.com
 ([fe80::7f4:c05b:358b:79c4]) by DM6PR11MB3674.namprd11.prod.outlook.com
 ([fe80::7f4:c05b:358b:79c4%7]) with mapi id 15.20.6631.034; Tue, 1 Aug 2023
 14:18:52 +0000
Message-ID: <47815c47-b8dc-6d37-b869-0fba22e3a71b@intel.com>
Date: Tue, 1 Aug 2023 16:18:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Alexander Lobakin <aleksander.lobakin@intel.com>
References: <20230801111923.118268-1-przemyslaw.kitszel@intel.com>
 <20230801111923.118268-2-przemyslaw.kitszel@intel.com>
 <d4d5324c-8d4b-b2e1-78c8-5c3015b5c03d@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <d4d5324c-8d4b-b2e1-78c8-5c3015b5c03d@intel.com>
X-ClientProxiedBy: FR0P281CA0083.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1e::18) To DM6PR11MB3674.namprd11.prod.outlook.com
 (2603:10b6:5:13d::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3674:EE_|PH8PR11MB8287:EE_
X-MS-Office365-Filtering-Correlation-Id: 21f0114f-351a-4d68-4f5e-08db929a3b3c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lpK5uCFyIFt2MmsSO3XoR/0okENjh/YrtefHOqg8nb9mPRfzxVWKY1Ij6lAFPEoUMepbTIQeGs/RoMkZfrX0Ca3GX1WNWzqXwFOl75xIgMXPtR6d3rKxsvuXntMkKbQlEWoeaOzLW2MZxz06JWCiDVGDrORCsrdyLh5HK3VAXqIntexlhYEWv8qtEg9ktArce4p1XMr3W8A41NyrqN/nSi0y0Pk7H3QCsvpm6eIDLYjz8hiu6I6cBOgETr0wx8kI0Q5+yCRxirMAnjFfgkddePcb3LGI3/XI+WnI7rIU5ErW3sE4e/318CHUMOv2/dCkQNS4HAxrqgw1NUbjKB8VasP4UsK+wdN0XRzgx79biUmOmFNArVXvFtIkoQl9IPqNnjbTl1g6WgLVGG1kLJ1pyssOlARjyVsZNNmKr9/yEBfcOkuXjDJOOhRz54c+R2BTDpdOH/YlLVAl0cXquekF1vbsoWYb7iIsaKa8p31tl/KRdBykIoqwufsD/0WImxtglc+Bbg6TsKBZ3YQbT/RxNn1g3KnKJi7c1YGC/SxEph0T4ib2cF2+yJYU8iY5R65eug2Cid+RYXbedss/PT2ebt/bEoU4dHSFuAEu9LFaWYtMGsUWEOoalAWpXjoeIlLrxTl72dOmWyCoxJYEUVchIQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3674.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(366004)(396003)(346002)(39860400002)(376002)(451199021)(2616005)(83380400001)(66946007)(66476007)(86362001)(31696002)(38100700002)(41300700001)(66556008)(5660300002)(36756003)(82960400001)(6862004)(316002)(8676002)(4326008)(8936002)(6512007)(6486002)(6506007)(6666004)(186003)(37006003)(26005)(6636002)(54906003)(478600001)(53546011)(31686004)(2906002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WVlUc08xaS9pQlZRWG01QTgyZkd3OGd6SW1hOEFPQWNWWTB0eURubUNwMzlW?=
 =?utf-8?B?VkZQT1p6RFYrbnBIVG50Q1lvMWUyUktVYWd6bzRDT01nb1BlKzQ3NHZWSmRS?=
 =?utf-8?B?TFZXZW5VT01EQ0ZRcnVLMStaTXdxOVE1dmMwMlBwNUxWNWg3TWdhbEQ2MWpS?=
 =?utf-8?B?SzFaNkdEdUt6dlorajlEOUZ1endvMnB2eVFRRzZyVVRBUUdBS0c5cWY4MVFB?=
 =?utf-8?B?NlNKZGJxQ3JpSUFEZUwzMnI3VCt0dmRLN256QkZGR3hEVmRxdXZBQWNvSVM2?=
 =?utf-8?B?RExIMVE4RjhuSGR0SStpK3Mzem40aHcwa25NaSt5ai9mMmE1bWNJQk5WdENo?=
 =?utf-8?B?T1lrRmlBYjF4dW9KZFc0NHBYbUoxZzBjQjh2QmpPbEovcEtuSGZVWlpqWFBh?=
 =?utf-8?B?UlVDZTlPKy8wSkdBenhuQ3I0U2lXNFl2QS8rUkZvam02OGlUQTFSdWJvTUFk?=
 =?utf-8?B?OFJIWmF4UWlLSjVpdUsrYmVHRzBneEhVV2QyZkcvNVJqVUZNVERpR1ZBNVVw?=
 =?utf-8?B?bW4rT0IzaS9JQ2YrNTdPb2tFbnkwMkZybFhDWVRUYldSMWlRK3lEd0JuUTFV?=
 =?utf-8?B?S0dhbUZjTjJVWTF4VHZJM3ptYXI3SkszM3dGMi9heDdodmErWElUK0MvL0R0?=
 =?utf-8?B?UUQ5UVpLNmtDaTAwWjU4Vlp5bHlLYUE2RjhrMHpSdEhCVEU4cHBRZnN2VGZ5?=
 =?utf-8?B?cGg1eC9lV3Y1TUN5YzdoSDZhT0RjSVBZcVErUjF3eXJTd3pOb01aSE9vRnBo?=
 =?utf-8?B?aU1EWW5odjhkUDQwZ01QY2hOaC81bXRLa2FWdXZ3ZXpyTlhwRTRNM2UxZHg2?=
 =?utf-8?B?VTNudE8xNThVd2pwUVhPSDNuMU4vRi9YVkhTMEFGYXJiRWNPQW9peDN5eU0y?=
 =?utf-8?B?djNUTEFqWEtCaE9OcGZ4L1JQQzlxTDZ4eTNBTHI4Kzh5QmFrS0ZQNW10b0gx?=
 =?utf-8?B?bTNzb1pjODdCOWE4dEI5V3hONjdoaHQvRGs3VDBiSTZERG9pTTYvR2NHUzlH?=
 =?utf-8?B?REpVMWhzUzhLTW44Y05lM3cyby9kQnRIc3FESkhuNzhHTDlXa0pWTVRyRGgr?=
 =?utf-8?B?Zi9pUDJuOVVYV3VHa0NtRVlDZVRoRUMvTy8ySE90OThYRElLdGVwdHhFa1NZ?=
 =?utf-8?B?bXNtdFI4bmRSaTJBSExtY3haVlY1WlkyN2F4aHhLT2IvY0VPdkx3NGJBTFdq?=
 =?utf-8?B?aGVLVWxueFpBeDhieHBvS1loT1F3SmNVQkxUQi9XREZacFJNZW95ZjNFOHdI?=
 =?utf-8?B?M1Qvejc3QlY5ckcwZGpXRW9EYVdkTTRVWS9EWmpRWHVXUzZpbFM3RHlzdVhk?=
 =?utf-8?B?dTZBU3M3aFV3ZkkwV3VWeUlCY0VNblJaRnIwek1ZelcwNFVqQjlaT2F3amEy?=
 =?utf-8?B?Y3NYemVVc05ZZUVaLzBOd2M5TFNGZGYwTGRQTFRUcTVJMmFPenRTYldveGRu?=
 =?utf-8?B?bmRTVitQbW5tblNhMGY2Um5JUElTM2trUGVwZElKV2IzMG1iVGdVWnBqS2dR?=
 =?utf-8?B?Z2xObnowOUdSMWxCc01Za1ZKTXhKRTdqWjA2RkVtcjIyU09VcjZWeS81ZUh5?=
 =?utf-8?B?NHFDYlRrQWZWSnpBM2U5R3ZIT095bUxHWkxQcUNnWEthZ3BQaG9NdzNpTXBQ?=
 =?utf-8?B?azJwY1BTN1h1alJldkNMMUE3alc5TFdkR1d4OW85MUphVzhmMlpTaVY4Q3Vi?=
 =?utf-8?B?UWxzdHQ4bWFncDk2U2x4Ty9qeGJhQkgxTHRVMWR3SHFRQ3JoUU1UeWcvdWlS?=
 =?utf-8?B?bUk0TkZQZk53eWZZMU9vazFEVGhMTlZrSTVWTTVHd3Q4MC9KWFdTUlRwc3NN?=
 =?utf-8?B?cjBZSFVYUFN2anV6VndlVmNTSnQzeDlqRENYTFJIRjZWNlo0eTN6ZU8zZjlI?=
 =?utf-8?B?aE5EUytxU1FSOGNJbVNGTXV0VXJGYm9ZeWpGNzlvL2I2bkdWRlpTRUJCb2Jz?=
 =?utf-8?B?OWk4dzhYSnBZZ2ZJL3ZuZ3hiZmRrRzMvSHBVZHNVSkt4R0RZTjF1dnlKTGNQ?=
 =?utf-8?B?Vk5pc0NCUDZpcndUb0RkK3VEdC9qMWJ6dVErVUlCZllxT1pka0hZczJXK1VB?=
 =?utf-8?B?WG4vYjJ3N1BhSTNsNGdIamlEbWNLMjhVMTU4alV3MERYekxkdHpaekgrN3c3?=
 =?utf-8?B?eUtQRzdIOUw0QmpVNFdHNUplWmFHeFBEMmxoTG50UFZhNE9FTURIZlY4aUZ2?=
 =?utf-8?B?NkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 21f0114f-351a-4d68-4f5e-08db929a3b3c
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3674.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2023 14:18:52.2274 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QWyNhGelbdEaEpv+6/zxVDNf8E8Lv52dpkGL3ujLBHI30OI2f5tTSg5ZbFKz1TC2YWJ1APHxKLuGM0EIWBNOou7NzjOFbP7NnFdBQvVZAE0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8287
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690899556; x=1722435556;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=66qorFpoNCRfQL94vpUrMao77oPmrACFEvpnYvioIUk=;
 b=U/4TUj63YVjGjfeeMz70f8tSs/pXVp/2T+ReByLctpW5KRfLyzh91ToE
 fFON39H7uiN0gLFRA8vI2p7qqkw6UJeRVtXnk+7LjKovQR8vRPnVZCZAw
 DscH749m5vcp7Oa1PNpR3OHGW/jfvCgctMjEoSxKFabd+Fh7Wx1zSNXU7
 PuDRtSKMBnDzCc4LmfWNG6VqmT0/oLAgTfuysdtGwmZmsiH0XJvZ33tfp
 MmHl/2G/i0LIApmg1Qqb61t6zHpHFAjYGG1LBoGqOG7euSiqfSrHjmAKA
 30Hd0CX0INUOqNypQtaEemvST/eXDUoegdp6iyjiu0jkbZ1bfO/RuFTYN
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=U/4TUj63
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC net-next 1/2] overflow: add
 DECLARE_FLEX() for on-stack allocs
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Kees Cook <keescook@chromium.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/1/23 15:54, Alexander Lobakin wrote:
> From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Date: Tue, 1 Aug 2023 13:19:22 +0200
> 
>> Add DECLARE_FLEX() macro for on-stack allocations of structs with
>> flexible array member.
>>
>> Using underlying array for on-stack storage lets us to declare known
>> on compile-time structures without kzalloc().
>>
>> Actual usage for ice driver is in next patch of the series.
>>
>> Note that "struct" kw and "*" char is moved to the caller, to both:
>> have shorter macro name, and have more natural type specification
>> in the driver code (IOW not hiding an actual type of var).
>>
>> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> ---
>>   include/linux/overflow.h | 14 ++++++++++++++
>>   1 file changed, 14 insertions(+)
>>
>> diff --git a/include/linux/overflow.h b/include/linux/overflow.h
>> index f9b60313eaea..403b7ec120a2 100644
>> --- a/include/linux/overflow.h
>> +++ b/include/linux/overflow.h
>> @@ -309,4 +309,18 @@ static inline size_t __must_check size_sub(size_t minuend, size_t subtrahend)
>>   #define struct_size_t(type, member, count)					\
>>   	struct_size((type *)NULL, member, count)
>>   
>> +/**
>> + * DECLARE_FLEX() - Declare an on-stack instance of structure with trailing
>> + * flexible array.
>> + * @type: Pointer to structure type, including "struct" keyword and "*" char.
>> + * @name: Name for a (pointer) variable to create.
>> + * @member: Name of the array member.
>> + * @count: Number of elements in the array; must be compile-time const.
>> + *
>> + * Declare an instance of structure *@type with trailing flexible array.
>> + */
>> +#define DECLARE_FLEX(type, name, member, count)					\
>> +	u8 name##_buf[struct_size((type)NULL, member, count)] __aligned(8) = {};\
> 
> 1. You can use struct_size_t() instead of open-coding it.

with ptr param, not feasible, but otherwise, of course will do it (see 
below)

> 2. Maybe use alignof(type) instead of 8? Some structures have larger
>     alignment requirements.

Sure, thanks!

> 
>> +	type name = (type)&name##_buf
> 
> In general, I still think DECLARE_FLEX(struct foo) is better than
> DECLARE_FLEX(struct foo *).

I have started with that version, and that would prevent your question 
no. 1 :) So there is additional advantage to that.

> Looking at container_of(), struct_size_t()
> etc., they all take `type`, not `type *`, so even from the consistency
> perspective your solution is not optimal to me.

The two you have mentioned are "getter" macros. Random two from me, that 
actually declare something are:

#define DEVICE_ATTR_RW(_name) \
	struct device_attribute dev_attr_##_name = __ATTR_RW(_name)

#define DECLARE_BITMAP(name, bits) \
	unsigned long name[BITS_TO_LONGS(bits)]

Even if they don't take @type param, they declare variable of some 
non-pointer type.

Both variants have some logic that supports them, and some disadvantages:
ptr-arg: user declares sth as ptr, but it takes "a lot" of space
just-type-arg: user declares foo, but it's "*foo" actually, so "foo.bar" 
does not work.

I have no strong opinion here, so will just switch to pure-type param.

> Thanks,
> Olek

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
