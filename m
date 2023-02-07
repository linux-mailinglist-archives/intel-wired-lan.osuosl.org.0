Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DB9AA68E0DD
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Feb 2023 20:06:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6E01B61042;
	Tue,  7 Feb 2023 19:06:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6E01B61042
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675796773;
	bh=5fJB6GsDPZK99gL94gAFgKs3dH3PdMJdWJkSVkv04eI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=72GnBVWK4shErjjQqJB3rWyG8u9aZJQC2RLC6V9x8RqV1lh3IZnBsCa7CKeMaWKST
	 Fdjf85hiSuOHvMMO3ZhVwMcgv1hK3TUIPy6Cf2GOST+AI8l/p2J46XsSil2TsjNqHz
	 OKmOQb6YwX/IBt2GVoX8+Kn23madoq97F3GE8wfE1jysoXjnf+7KrUh/EaTCv6KjG4
	 h+vUQNi2qADeG0c/ct6mOtbczVfO3M1Paep0s0KPOM7BPFoFv/F/AsRgD3o7U+g1RX
	 VS8ZWoOUu8CW+yL62kjUW7+QZC8cdMEX5kZGujirHyKlQiGjkB3M8ljmQrp+OWKFkx
	 FSEcwT0zMaB1g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PQ3YOdWn9m13; Tue,  7 Feb 2023 19:06:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2435F6103C;
	Tue,  7 Feb 2023 19:06:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2435F6103C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D29C81BF470
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 19:06:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B6FF96103C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 19:06:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B6FF96103C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mGHxOOM1AiSE for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Feb 2023 19:06:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A043761033
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A043761033
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Feb 2023 19:06:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="329620418"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="329620418"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 11:06:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="697394501"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="697394501"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 07 Feb 2023 11:06:01 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 7 Feb 2023 11:05:56 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 7 Feb 2023 11:05:55 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 7 Feb 2023 11:05:55 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.43) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 7 Feb 2023 11:05:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZcTuCft1mGxmSGOWhsnh5qbztPDXZlZPu7pExX3bD2nd0dsnXkIBkG7r20PIHnG5fuxhpK73v5ZPrp42eJYOwvFZDog4Rntk3qS8a4/olkuCvwOi6FlpZbpfIaz4MBHX0hq8cLD+pKSb/D5oPNwABlBz6IFncD4fEcM9jinO6ruuvYS+vtY+2PdLLy8rl9UPFvqdEurRTRNPf6r9AJYXsBQ8THab0p8bytBltJaTPBPaUYCNEnGuLUj08VbsovLYVYH7haOMwVEuiLvpjXa+OnoJR40MG9/6WrpkOXxuzHY37m70y7CmaxViDM9XPlkU0rAYthStceO6zemqRludxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wlLqCaFxAt7XYLKEciCVmR0jl9aBamzsCJNekKiXbu4=;
 b=PlbbWPAt0JAFePy8ryaoJWHyBSaFMr/jtKKVTQkMNyjH6Qli9jlXYme4t9wamO6fk6p+MiMsOyGPi5VAUUo72RYhJ6Jp8NxqPFRLfzpCFgSL1dkIP0DfOXaUphQIZ+LeSdyJgM+z+zQpo+E+k1N1tDpE8uMfhm+zVEziJRZIgEC+8TzP/le0NkImgbXmI8T06jcE2gwZEKy/flweOKQUhCyxBbf/e/lqecuw+tSBBKCV+2dDQI+LOx6IwJDEthcIb/jJAzRZ+nmFXUwRohMvyyqGvmklUoztwI4oo/7TTj5BCTX60RW/6xfFmf1hs/cSZcZqe9Akb7jx23M/Fa2H6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by CY8PR11MB6963.namprd11.prod.outlook.com (2603:10b6:930:58::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.35; Tue, 7 Feb
 2023 19:05:54 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::c743:ed9a:85d0:262e]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::c743:ed9a:85d0:262e%5]) with mapi id 15.20.6064.036; Tue, 7 Feb 2023
 19:05:53 +0000
Message-ID: <766b645c-1719-755b-1c66-40a221072294@intel.com>
Date: Tue, 7 Feb 2023 11:05:52 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20230206235436.2254802-1-jesse.brandeburg@intel.com>
 <9a4bfdd2-14aa-33ed-3386-e4a80f03db7d@molgen.mpg.de>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <9a4bfdd2-14aa-33ed-3386-e4a80f03db7d@molgen.mpg.de>
X-ClientProxiedBy: BY5PR17CA0025.namprd17.prod.outlook.com
 (2603:10b6:a03:1b8::38) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|CY8PR11MB6963:EE_
X-MS-Office365-Filtering-Correlation-Id: dca08ec2-18e4-476c-dbbd-08db093e55e5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: sdjUpAS3Duj7hD/ZmRB1LyKyR1cWIMmVzSSK6mD0sQeVrJ/wWct11GI0EU/jEdgtar08SdRZqwsYyFGmdBMEWkmP9xB+12pUm2B/xwvMxdhB7gx1WAC5Fed9Pt6+P3V03E/S8XLigNUhymR3iT9Lx4w5tm/4Dg5cL2KrvSvNor5jJCvCf1H++ZrwKzRs0o/l8tjNekVh/hItfgt/ytpa0vXs4vJi2MLQ6e88LxjiwxugtWzv69s1ecdcuJjS0fxwW8uXYtqBmYhejIlmGmeBxsDyWqzJYU3dGrrFQuPngQTYZ4uZVG0aheP2E6/Wm7ud66ZCFKh9Vx+YjZShCSXLZM7nUKSQuQOHTNuVgWb7YjviY4K7eYhVO21VVd/oQf6v6UnQYf5imOMzBcYA8F2IxSSpzujGBeGjjmxQEqZkCw//jeAywhS7UoRQt6H57B4VOBm+6wYpzrIJ2ZDHYC2KDowRJPzeymOQ3q/RxFEf5VW4YjFzSSeewsCEjHcAZhrPBizEuHyivHS6Gdcc1xJSekg0ZfZlFxsuOyTLW8WNRtMcGU8QwPhjCIU7FCzM9QRwheSg/EURo/TRT4ot7ccqKdz+j3fM6gBAbdn6RY+3HolTg3j5an0GqeGDjvqI42s42jJxELgz/uA+r0ibWVH3cjvE8HMOzqEgRKApNzMXDH/iZ+j5q1OTepiyIWiMfh8rbesiLs7YEqxQHxT9UipccAE7vai0JEQDgl6fljfyN+Q=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(366004)(346002)(396003)(39860400002)(136003)(451199018)(2906002)(8676002)(66476007)(4326008)(38100700002)(66556008)(83380400001)(6916009)(66946007)(44832011)(82960400001)(31686004)(31696002)(41300700001)(8936002)(86362001)(5660300002)(6512007)(6506007)(26005)(316002)(53546011)(6486002)(478600001)(186003)(2616005)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Nk5GYkNMWnd5dHkvQnZ2NmQ2VnI0NmhseW9SSnpUWXRPdHZ1Y21tTGJCQUpI?=
 =?utf-8?B?U0dqWU5LWWlEMysvN3RteGk3T3VNcnEwNWdBVnlWMTJoU2JGLzZ4a0k0MUxQ?=
 =?utf-8?B?eGlkblAxOWU2N3ozZTFzYVBWL05YM3ExVS9qN1VKbXpFQmQwd2RpQVNUR3NB?=
 =?utf-8?B?ajZlMWpzcjdBNEZ5MWxIbjI3eU1BKzFuQXVFa0hlaW82VXRYK1FqdlpiTjds?=
 =?utf-8?B?L0l1aEsyMzdMeVdseUkyQ3lRbWoxMFozeVpZM3pjSE5PM2VLR2N6S2szU3FF?=
 =?utf-8?B?RjlHK2EvUC9HQ3gxWkx6cVp1VHlrRWZ6NHlxNVdmRGY2MHhmdzU0eU13V3NU?=
 =?utf-8?B?U2xRS3gxYTNCOUdxUzRkdEVVOHVBZkNTalE1TldDMTVvK2cxS0NpcWxRcXBY?=
 =?utf-8?B?ZVlHVXJTcFZGMFRtQzkvUlgyM2tlUHVudjZKYWlRUXlGc09sakRFdm1vQk1D?=
 =?utf-8?B?OWhzbEJoNkNCY25NZkxabVg2UEhnQkpNSWFPNnlMeGhSdWJvR21aNFA5dWda?=
 =?utf-8?B?R0VjK0dGd0JCajJmWmNkUElVdnVOaURHQkRKbERobnM1QkRuYzhqcGxYcncv?=
 =?utf-8?B?ay91Zk1rWUV2a0tFK0pFWi9kUWFmT2UzTHhRdjRGaFpiT3NSUnVhYk9NTFFn?=
 =?utf-8?B?OEVFRlp4aVpoWjQ5YzVPYUdWQ0paRnQ4dVdtYVJTRFFGbFV6NENrd3ppTUkx?=
 =?utf-8?B?TUx3cVBoNTZaOTFQOHVtU3pTSUZrZ2NNZzZOaXFEOVN3Vnc0TzFBcXc1T25x?=
 =?utf-8?B?T29RUDBhczJibk5VRGlUaGhJM2NYcXRJMDNKWUIxbEZIaHVnSjRlN05oY0Ns?=
 =?utf-8?B?ZzBYWmY0d3lGUGZlV2V2clZRcEw5enNWWEpJMWZ1VTR5MmZQTk5zZDZuRklk?=
 =?utf-8?B?UEtod3NMRVdHT0h1cWNkY1pKb29yaVZMWWtSWVJhVXFuUGlCZ05ReUlJc1B3?=
 =?utf-8?B?VlpuRDdQcnV1VmRPa2pYY0JZang1NUhwbkhVNmsyeXhTY3hkWml1b3A4NEsx?=
 =?utf-8?B?WTQrOUFYRXJHaGd3ZjZpTkpUT2xlNm9HNTlLSms2MlVETkJ1YzVtc3BBYUxP?=
 =?utf-8?B?RUJWVW4zQjVTN096Y1VvS1pFUVh0VHlGVjh6ZXZYdFdha25NTWtsdUsvc2VS?=
 =?utf-8?B?bzdxd3FjOWMzdndFbU5KenBPSjdqZ2VYOWN5K2FNK0Fpc2Z4TGFrSEN2Vmxl?=
 =?utf-8?B?b0FwNWNhdkhRZUlGTVBLMHFDOW1ITWlrQTNyck90ekJ1Q3hLWlZyYnUySTA0?=
 =?utf-8?B?WW5HZkdpSHhMbHFHZEM3QVJqbEZncThLT1RiY2hTUDFOUVJ1ajRsdnRwODNx?=
 =?utf-8?B?YVJhaTBKdEsxNEE0WmlVeFlsNzdRcWR1NWJ2T0tWZ0ovREQwMkwzYXY0YTI1?=
 =?utf-8?B?YzRqbUtsclIrbmhuMVRucFNDbWdZZFFic1FDSnBVSktSVm5qRnpQY1IrVXNz?=
 =?utf-8?B?Z0JtM3NyY1B0VVZKMUhvaVRRd1BOYjFGUkQ0ekcySDVBOVRUZXNsV2h6eWUr?=
 =?utf-8?B?a1VjRDNrcTFuVkl6Z3dGY1FNeDY2b0FiRGdsVEtPUHdBUjhueU1vbXdTcTdM?=
 =?utf-8?B?T0Z3SEl2T2RxWG5HbTRGcEZHQjloTE41RyswYkJpcXE3SmQ4aTcyY2VEUkhU?=
 =?utf-8?B?amVCbjFlaGZyUFVwN0RMaU1JWGoxVmxHOFlkVlJ2cW93SmU5L3VyU244MTQv?=
 =?utf-8?B?ckE3UEZXT05NREFOWFc2R2RURW5oOUx0WVhxV2VVMHRrYk5RYWR3eS9GaFdn?=
 =?utf-8?B?cFJDUE9JUEZWckpvaDRHMDFIaFhSSklmcStXdWVmWXE5RFNHV2VDa1JMRC8x?=
 =?utf-8?B?USszb2cvVUpIUjZDREtoT0xmOWljcE5tOFp2a09NZ0xDK3g3ZUpnTkZLNS9t?=
 =?utf-8?B?K2JxYjFpek5VMDIrMy9oUU5mcmpPVFNXaHJZU242ak9YWFBObWxrS28xeng5?=
 =?utf-8?B?aHUxaEZkL3FXTS9OTXVJNDlIUkxYOUlncFJTbWFRUUxLekl0WHQ0dmkxQ21E?=
 =?utf-8?B?Ti94b0VNVVlGSWYxTGRpd3VCeENKSWIzVmVSV3Z2SmlLZS9JV09UbE9vZVE5?=
 =?utf-8?B?aEhWNmR3UEI0RXQ5NExKRk4wZDZWZ2J6ODV6RHBFVlJaUFFYdW0wTnVDeTY0?=
 =?utf-8?B?Z09CVUptVnllTXdxOGxTWVZINk9nRzhrT3RpMlhxcTgvWjR5RGU0SERRblFh?=
 =?utf-8?B?TkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dca08ec2-18e4-476c-dbbd-08db093e55e5
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Feb 2023 19:05:53.8525 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XURlw4lFJwOD4Kt/4cdEQCMk/xLG6LnwOI2pGq9K7YL1GFu18sTz8ipPGeYb95h6pu5E/Ja2m4lOgTnVnmthBWJpzAmVbmyGYAYK+6g6Ypw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6963
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675796765; x=1707332765;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lwVkMlJLHqF9kuROJ67cnRl/n/sMaEUWlrkgwEhT3tw=;
 b=OrE+2BuOabUZCI5wHtr7+qIBVJmEzIdR4Kff21MoD/ZJS8E/Rz/T0aTa
 g66A+CkMySaUqvh810J2VHEszLlLaP/0IPYoCG8zGA1KSWa0z3kR24UBC
 a8txXLTC0tImI5Po1D44HTPTaBoDZWLx/waXprCD8Qs9KDhgD/FyO84mS
 BpbWDaz7Hdsgcys8aGdvTV9QENtyLDkx8UeUrvsoEWOND39A1w1JMSp6g
 1Tqmc88sw/QVxDeF9qcwrBCYBB2hxCBQtg+rz4LfUEuawJzbGE98ECdD2
 I1z/5PROd+ILpzFXmK5xII8M9+KgPDBwOsO/IVThWIjnMaPGgB0FKl2jI
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OrE+2BuO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: fix lost multicast
 packets in promisc mode
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMi82LzIwMjMgMTA6MzkgUE0sIFBhdWwgTWVuemVsIHdyb3RlOgo+IERlYXIgSmVzc2UsCj4g
Cj4gCj4gVGhhbmsgeW91IGZvciB5b3VyIHBhdGNoLgo+IAo+IEFtIDA3LjAyLjIzIHVtIDAwOjU0
IHNjaHJpZWIgSmVzc2UgQnJhbmRlYnVyZzoKPj4gVGhlcmUgd2FzIGEgcHJvYmxlbSByZXBvcnRl
ZCB0byB1cyB3aGVyZSB0aGUgYWRkaXRpb24gb2YgYSBWRiB3aXRoIGFuIAo+PiBJUHY2Cj4+IGFk
ZHJlc3MgZW5kaW5nIHdpdGggYSBwYXJ0aWN1bGFyIHNlcXVlbmNlIHdvdWxkIGNhdXNlIHRoZSBw
YXJlbnQgCj4+IGRldmljZSBvbgo+PiB0aGUgUEYgdG8gbm8gbG9uZ2VyIGJlIGFibGUgdG8gcmVz
cG9uZCB0byBuZWlnaGJvciBkaXNjb3ZlcnkgcGFja2V0cy4KPj4KPj4gSW4gdGhpcyBjYXNlLCB3
ZSBoYWQgYW4gb3ZzLWJyaWRnZSBkZXZpY2UgbGl2aW5nIG9uIHRvcCBvZiBhIFZMQU4sIHdoaWNo
Cj4+IHdhcyBvbiB0b3Agb2YgYSBQRiwgYW5kIGl0IHdvdWxkIG5vdCBiZSBhYmxlIHRvIHRhbGsg
YW55bW9yZSAodGhlIAo+PiBuZWlnaGJvcgo+PiBlbnRyeSB3b3VsZCBleHBpcmUgYW5kIGNvdWxk
bid0IGJlIHJlc3RvcmVkKS4KPj4KPj4gVGhlIHJvb3QgY2F1c2Ugb2YgdGhlIGlzc3VlIGlzIHRo
YXQgaWYgdGhlIFBGIGlzIGFza2VkIHRvIGJlIGluIAo+PiBJRkZfUFJPTUlTQwo+PiBtb2RlIChw
cm9taXNjdW91cyBtb2RlKSBhbmQgaXQgaGFkIGFuIGlwdjYgYWRkcmVzcyB0aGF0IG5lZWRlZCB0
aGUKPj4gMzM6MzM6ZmY6MDA6MDA6MDQgbXVsdGljYXN0IGFkZHJlc3MgdG8gd29yaywgdGhlbiB3
aGVuIHRoZSBWRiB3YXMgYWRkZWQKPj4gd2l0aCB0aGUgbmVlZCBmb3IgdGhlIHNhbWUgbXVsdGlj
YXN0IGFkZHJlc3MsIHRoZSBWRiB3b3VsZCBzdGVhbCBhbGwgdGhlCj4+IHRyYWZmaWMgZGVzdGlu
ZWQgZm9yIHRoYXQgYWRkcmVzcy4KPj4KPj4gVGhlIGljZSBkcml2ZXIgZGlkbid0IGF1dG8tc3Vi
c2NyaWJlIGEgcmVxdWVzdCBvZiBJRkZfUFJPTUlTQyB0byB0aGUKPj4gIm11bHRpY2FzdCByZXBs
aWNhdGlvbiBmcm9tIG90aGVyIHBvcnQncyB0cmFmZmljIiBtZWFuaW5nIHRoYXQgaXQgCj4+IHdv
bid0IGdldAo+PiBmb3IgaW5zdGFuY2UsIHBhY2tldHMgd2l0aCBhbiBleGFjdCBkZXN0aW5hdGlv
biBpbiB0aGUgVkYsIGFzIGFib3ZlLgo+Pgo+PiBUaGUgVkYncyBJUHY2IGFkZHJlc3MsIHdoaWNo
IGFkZHMgYSAicGVyZmVjdCBmaWx0ZXIiIGZvciAKPj4gMzM6MzM6ZmY6MDA6MDA6MDQsCj4+IHJl
c3VsdHMgaW4gbm8gcGFja2V0cyBmb3IgdGhhdCBtdWx0aWNhc3QgYWRkcmVzcyBtYWtpbmcgaXQg
dG8gdGhlIFBGIAo+PiAod2hpY2gKPj4gaXMgaW4gcHJvbWlzYyBidXQgTk9UICJtdWx0aWNhc3Qg
cmVwbGljYXRpb24iKS4KPj4KPj4gVGhlIGZpeCBpcyB0byBlbmFibGUgIm11bHRpY2FzdCBwcm9t
aXNjdW91cyIgd2hlbmV2ZXIgdGhlIGRyaXZlciBpcyBhc2tlZAo+PiB0byBlbmFibGUgSUZGX1BS
T01JU0MsIGFuZCBtYWtlIHN1cmUgdG8gZGlzYWJsZSBpdCB3aGVuIGFwcHJvcHJpYXRlLgo+IAo+
IERvIHlvdSBoYXZlIHRoZSBjb21tYW5kcyB0byBlYXNpbHkgcmVwcm9kdWNlIHRoaXM/CgpXZSBk
bywgYnV0IHRoZXkncmUgcXVpdGUgaW52b2x2ZWQuIEhlcmUgaXMgbXkgcmVwcm9kdWNlciBzY3Jp
cHQuCiMhL2Jpbi9iYXNoCgpzZXQgLXgKI3NldCAtZQpzZXQgLW8gcGlwZWZhaWwKCiMjIyMgc3lz
dGVtIEEgc2V0dXAKREVWSUNFPWVuczI1OWYwCmlwIGxpbmsgc2V0ICRERVZJQ0UgdXAKaXAgbGlu
ayBhZGQgbGluayAkREVWSUNFIG5hbWUgJERFVklDRS4zIHR5cGUgdmxhbiBpZCAzCmlwIGxpbmsg
c2V0ICRERVZJQ0UuMyB1cAplY2hvIDAgPiAvcHJvYy9zeXMvbmV0L2lwdjYvY29uZi8kREVWSUNF
L2FjY2VwdF9yYQplY2hvIDAgPiAvcHJvYy9zeXMvbmV0L2lwdjYvY29uZi8kREVWSUNFLjMvYWNj
ZXB0X3JhCmlwIGFkZHIgZmx1c2ggJERFVklDRQppcCBhZGRyIGZsdXNoICRERVZJQ0UuMwoKIyB1
c2luZyBsaW51eCBicmlkZ2UgZG9lc24ndCByZXByb2R1Y2UgdGhpcyBidWcKI2lwIGxpbmsgYWRk
IG5hbWUgYnIwIHR5cGUgYnJpZGdlCiNpcCBsaW5rIHNldCAkREVWSUNFLjMgbWFzdGVyIGJyMAoj
ZWNobyAwID4gL3Byb2Mvc3lzL25ldC9pcHY2L2NvbmYvYnIwL2FjY2VwdF9yYQojaXAgYWRkciBm
bHVzaCBicjAKI2lwIGFkZHIgYWRkIDIwMDE6MWI3NDo0ZDk6MTAwMjo6NC82NCBkZXYgYnIwCiNp
cCBsaW5rIHNldCBicjAgdXAKCiMgdXNlIG9wZW52c3dpdGNoIHRvIHJlcHJvZHVjZSB0aGlzIGJ1
ZwpzeXN0ZW1jdGwgc3RhcnQgb3BlbnZzd2l0Y2gKb3ZzLXZzY3RsIGFkZC1iciBvdnMtYnIwIHx8
IGVjaG8ga2VlcCBnb2luZyEKb3ZzLXZzY3RsIGFkZC1wb3J0IG92cy1icjAgJERFVklDRS4zfHwg
ZWNobyBrZWVwIGdvaW5nIQplY2hvIDAgPiAvcHJvYy9zeXMvbmV0L2lwdjYvY29uZi9vdnMtYnIw
L2FjY2VwdF9yYQppcCBhZGRyIGZsdXNoIG92cy1icjAKaXAgYWRkciBhZGQgMjAwMToxYjc0OjRk
OToxMDAyOjo0LzY0IGRldiBvdnMtYnIwCmlwIGxpbmsgc2V0IG92cy1icjAgdXAKCiMjIyMgc3lz
dGVtIEIgc2V0dXAgKGNveW90ZTMwKQojIyMgIG1ha2Ugc3VyZSB0byBzZXQgdXAgcGFzc3dvcmRs
ZXNzIHNzaCBCLT5BClJERVZJQ0U9ZW5zMjU5ZjAKUkhPU1Q9Y295b3RlMzAKc3NoICRSSE9TVCBz
eXNjdGwgLWUgbmV0LmlwdjYuY29uZi4kUkRFVklDRS5hY2NlcHRfcmE9MApzc2ggJFJIT1NUIGlw
IGxpbmsgYWRkIGxpbmsgJFJERVZJQ0UgbmFtZSAkUkRFVklDRS4zIHR5cGUgdmxhbiBpZCAzCnNz
aCAkUkhPU1Qgc3lzY3RsIC1lIG5ldC5pcHY2LmNvbmYuJFJERVZJQ0UuMy5hY2NlcHRfcmE9MApz
c2ggJFJIT1NUIGlwIGFkZHIgYWRkIDIwMDE6MWI3NDo0ZDk6MTAwMjo6NS82NCBkZXYgJFJERVZJ
Q0UuMwpzc2ggJFJIT1NUIGlwIGxpbmsgc2V0ICRSREVWSUNFLjMgdXAKCnNzaCAkUkhPU1QgcGlu
ZzYgLWMyIDIwMDE6MWI3NDo0ZDk6MTAwMjo6NAoKIyMjIyBiYWNrIHRvIHN5c3RlbSBBCmVjaG8g
MCA+IC9zeXMvY2xhc3MvbmV0LyRERVZJQ0UvZGV2aWNlL3NyaW92X251bXZmcwplY2hvIDggPiAv
c3lzL2NsYXNzL25ldC8kREVWSUNFL2RldmljZS9zcmlvdl9udW12ZnMKc2xlZXAgNQppcCBsaW5r
IHNldCAkREVWSUNFIHZmIDcgdmxhbiA0CmlwIGxpbmsgc2V0ICRERVZJQ0UidjciIHVwCmVjaG8g
MCA+IC9wcm9jL3N5cy9uZXQvaXB2Ni9jb25mLyRERVZJQ0UidjciL2FjY2VwdF9yYQpzbGVlcCAy
CmlwIGFkZHIgZmx1c2ggJERFVklDRSJ2NyIKc2xlZXAgMgppcCBhZGRyIGFkZCAyMDAxOjFiNzQ6
NGQ5OjExMDU6OjQvNjQgZGV2ICRERVZJQ0UidjciCmlwIGwgc2V0ICRERVZJQ0UidjciIHVwCnNs
ZWVwIDUKCiMjIyMgYmFjayB0byBzeXN0ZW0gQgpzc2ggJFJIT1NUIGlwIG5laWdoYm91ciBkZWwg
MjAwMToxYjc0OjRkOToxMDAyOjo0IGRldiAkUkRFVklDRS4zCiMgdGhlIGJlbG93IGNvbW1hbmQg
aXMgZXhwZWN0ZWQgdG8gZmFpbCBpZiB0aGUgYnVnIGlzIHByZXNlbnQKc3NoICRSSE9TVCBwaW5n
NiAtYzIgMjAwMToxYjc0OjRkOToxMDAyOjo0CgojIyMjIGJhY2sgdG8gc3lzdGVtIEEKIyBleGVj
dXRpbmcgdGhlIGJlbG93IGNvbW1hbmQgd2lsbCBicmluZyBiYWNrIHRoZSBwaW5nCiNpcCBhZGRy
IGZsdXNoICRERVZJQ0UidjciCgoKCgo+IE1heWJlIGFsc28gbWVudGlvbiB0aGUgbmV3IGRlYnVn
IG1lc3NhZ2VzPwoKSSBkb24ndCB0aGluayB0aGlzIGlzIHdvcnRoIHJlc2VuZGluZyB0aGUgcGF0
Y2ggdW5sZXNzIFRvbnkgZGlzYWdyZWVzLgoKVGhhbmtzIGZvciB0aGUgcmV2aWV3IQoKCj4gCj4+
IEZpeGVzOiBlOTRkNDQ3ODY2OTMgKCJpY2U6IEltcGxlbWVudCBmaWx0ZXIgc3luYywgTkRPIG9w
ZXJhdGlvbnMgYW5kIAo+PiBidW1wIHZlcnNpb24iKQo+PiBTaWduZWQtb2ZmLWJ5OiBKZXNzZSBC
cmFuZGVidXJnIDxqZXNzZS5icmFuZGVidXJnQGludGVsLmNvbT4KPj4gLS0tCj4+IHYyOiBhZGRl
ZCBmaXhlcwo+PiAtLS0KPj4gwqAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9t
YWluLmMgfCAyNiArKysrKysrKysrKysrKysrKysrKysrKwo+PiDCoCAxIGZpbGUgY2hhbmdlZCwg
MjYgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2ljZV9tYWluLmMgCj4+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNl
L2ljZV9tYWluLmMKPj4gaW5kZXggNWY4NmU0MTExZmE5Li4zYTVmOWMxNWI2OWMgMTAwNjQ0Cj4+
IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbWFpbi5jCj4+ICsrKyBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbWFpbi5jCj4+IEBAIC0yNzUsNiAr
Mjc1LDggQEAgc3RhdGljIGludCBpY2Vfc2V0X3Byb21pc2Moc3RydWN0IGljZV92c2kgKnZzaSwg
dTggCj4+IHByb21pc2NfbSkKPj4gwqDCoMKgwqDCoCBpZiAoc3RhdHVzICYmIHN0YXR1cyAhPSAt
RUVYSVNUKQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIHN0YXR1czsKPj4gK8KgwqDCoCBu
ZXRkZXZfZGJnKHZzaS0+bmV0ZGV2LCAic2V0IHByb21pc2MgZmlsdGVyIGJpdHMgZm9yIFZTSSAl
aTogCj4+IDB4JXhcbiIsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoCB2c2ktPnZzaV9udW0sIHBy
b21pc2NfbSk7Cj4+IMKgwqDCoMKgwqAgcmV0dXJuIDA7Cj4+IMKgIH0KPj4gQEAgLTMwMCw2ICsz
MDIsOCBAQCBzdGF0aWMgaW50IGljZV9jbGVhcl9wcm9taXNjKHN0cnVjdCBpY2VfdnNpICp2c2ks
IAo+PiB1OCBwcm9taXNjX20pCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcHJvbWlzY19tLCAwKTsKPj4gwqDCoMKgwqDCoCB9Cj4+
ICvCoMKgwqAgbmV0ZGV2X2RiZyh2c2ktPm5ldGRldiwgImNsZWFyIHByb21pc2MgZmlsdGVyIGJp
dHMgZm9yIFZTSSAlaTogCj4+IDB4JXhcbiIsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoCB2c2kt
PnZzaV9udW0sIHByb21pc2NfbSk7Cj4+IMKgwqDCoMKgwqAgcmV0dXJuIHN0YXR1czsKPj4gwqAg
fQo+PiBAQCAtNDE0LDYgKzQxOCwxNiBAQCBzdGF0aWMgaW50IGljZV92c2lfc3luY19mbHRyKHN0
cnVjdCBpY2VfdnNpICp2c2kpCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
fQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVyciA9IDA7Cj4+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdmxhbl9vcHMtPmRpc19yeF9maWx0ZXJpbmco
dnNpKTsKPj4gKwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8qIHByb21pc2N1
b3VzIG1vZGUgaW1wbGllcyBhbGxtdWx0aWNhc3Qgc28KPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgICogdGhhdCBWU0lzIHRoYXQgYXJlIGluIHByb21pc2N1b3VzIG1vZGUgYXJl
Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIHN1YnNjcmliZWQgdG8gbXVs
dGljYXN0IHBhY2tldHMgY29taW5nIHRvCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCAqIHRoZSBwb3J0Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqLwo+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVyciA9IGljZV9zZXRfcHJvbWlzYyh2
c2ksCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIElDRV9NQ0FTVF9QUk9NSVNDX0JJVFMpOwo+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGlmIChlcnIpCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBnb3RvIG91dF9wcm9taXNjOwo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9
Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCB9IGVsc2Ugewo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCAvKiBDbGVhciBSeCBmaWx0ZXIgdG8gcmVtb3ZlIHRyYWZmaWMgZnJvbSB3aXJlICovCj4+
IEBAIC00MzAsNiArNDQ0LDE4IEBAIHN0YXRpYyBpbnQgaWNlX3ZzaV9zeW5jX2ZsdHIoc3RydWN0
IGljZV92c2kgKnZzaSkKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIE5FVElGX0ZfSFdfVkxBTl9DVEFHX0ZJTFRFUikKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHZsYW5fb3BzLT5lbmFfcnhfZmlsdGVyaW5nKHZzaSk7Cj4+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH0KPj4gKwo+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCAvKiBkaXNhYmxlIGFsbG11bHRpIGhlcmUsIGJ1dCBvbmx5IGlmIGFsbG11bHRpIGlzIG5v
dAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICogc3RpbGwgZW5hYmxlZCBmb3IgdGhlIG5l
dGRldgo+IAo+IEFib3ZlIHlvdSB3cml0ZSAqYWxsbXVsdGljYXN0Ki4gU2hvdWxkIHlvdSB1c2Ug
aXQgaGVyZSBmb3IgY29uc2lzdGVuY3k/CgpUaGlzIGxvY2F0aW9uIGlzIGFjdHVhbGx5IGNoZWNr
aW5nIHRoZSBhbGxtdWx0aSBmbGFnLCBzbyBJIHRoaW5rIGl0J3Mgb2suCgo+IAo+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgICovCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmICghKHZz
aS0+Y3VycmVudF9uZXRkZXZfZmxhZ3MgJiBJRkZfQUxMTVVMVEkpKSB7Cj4+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgZXJyID0gaWNlX2NsZWFyX3Byb21pc2ModnNpLAo+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIElDRV9N
Q0FTVF9QUk9NSVNDX0JJVFMpOwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlm
IChlcnIpIHsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG5ldGRl
dl9lcnIobmV0ZGV2LCAiRXJyb3IgJWQgY2xlYXJpbmcgbXVsdGljYXN0IAo+PiBwcm9taXNjdW91
cyBvbiBWU0kgJWlcbiIsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGVyciwgdnNpLT52c2lfbnVtKTsKPj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCB9Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH0KPj4gwqDCoMKgwqDC
oMKgwqDCoMKgIH0KPj4gwqDCoMKgwqDCoCB9Cj4+IMKgwqDCoMKgwqAgZ290byBleGl0Owo+IAo+
IAo+IEtpbmQgcmVnYXJkcywKPiAKPiBQYXVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdp
cmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLXdpcmVkLWxhbgo=
