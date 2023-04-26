Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 461C76EF7C5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Apr 2023 17:32:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5AB1761532;
	Wed, 26 Apr 2023 15:32:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5AB1761532
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682523136;
	bh=xhh46x1JlR8gpfnfRsYMmBOOBVFj1juQSRyOd+T6KeA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zGUv2VY9ikxeeg8yd4hLSdM/ySGddDtZeKoRU5KqlfD9qcluWcTRMbbd1MyM462Kc
	 UnZkYlP7xqxt4qlLkZd9CSGImSiq0P8NK7mu6rVZLhq2PZDt7amZQc4Myv/mEwVuQt
	 /0dRCaCEQum7t0tse+5wlgKTnRXn/E9yVzC87sjphCe6W4kjbnyZnTEBkjfVSGl8Su
	 /cKjHwr/JJtbgsx7k+E7xKyGNIut42riYPRh73NQ/Zcgmom4eV00S1+AaH6qjzfbPl
	 2bNdwCBOztQU3wjXmicokXJ0fdfFyHKVok63La5rQlvm9XgVXLscG7VWikibZu/L5e
	 7V2w0xGyPhrwQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YQIZCAsm7Mjz; Wed, 26 Apr 2023 15:32:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 42A4F61527;
	Wed, 26 Apr 2023 15:32:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 42A4F61527
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 594311BF315
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Apr 2023 15:32:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 30DEE61527
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Apr 2023 15:32:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 30DEE61527
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IWpATrO-7OfC for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Apr 2023 15:32:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B916E60F46
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B916E60F46
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Apr 2023 15:32:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="331370594"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="331370594"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 08:32:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="1023658213"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="1023658213"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 26 Apr 2023 08:32:04 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 26 Apr 2023 08:32:04 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 26 Apr 2023 08:32:04 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 26 Apr 2023 08:32:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eAoTOf3BRCzqWzqb55R3svH4zLFpc7RV8wQny+LsLwPokZp42xTzN2CPm/fJ/IuB4VpQkg5NuF3/03xT77qIXHZhkiUnDVqdKIFyou3j5mYfCWbrJ6bj9jUXr1HikFsGjfZkqkcc3wGjdg8owddbOzKxXkfr0Yn+vGDUOfh/RUs5uuryq5o05zOqtC2upAb9uyGj024CZ2hW4jATfMUEfZ2SjXl49IqIk4tohd3pdH9ARKkQWFIm7NiBK6cD5OEjeISt7Pva5KEBzOtDNVzWfA5lZfhVHcKzxoNMhK+izQuV3P9faTsGmQzuPRMvrkQaQdc20ZoyllZY+Ft9hjGUlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Uh/rY0Q+n90P/m7007qfK153ZnaWrxEBk+TKcfMFLLI=;
 b=AQH24oMK7d3ALxfRoM7VmDY10WCiK6EOnedEoCLU88mJguYeXcFooHPn07P/UqWIgafi1VzNn40drI4TsrKRnLAZ2qxBt8zVUwRmIEBW97KB2vDwfRGQsOKp9RdTdIFPD0xPbT9+Rk8chXKmTXuBhPLU0XxkYEylUVP/HEQzcM18F9rouRvpq7KCRE4yYmc8sfl/M2Yenl9loRJsprJpakr2c7mJxzID0g9pwkDVPRoWAU0RtV0uGsLIYdFMAo5UIb9M/EXGA30TxhYODsxqlO0jgl8AMEyPy82tPce17vx5qAdEVIjxYEyaSu+GiusKX1XVSVSqCbszNaxQ0S/SNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by PH8PR11MB7072.namprd11.prod.outlook.com (2603:10b6:510:214::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6340.21; Wed, 26 Apr
 2023 15:32:02 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::4c38:d223:b2ac:813e]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::4c38:d223:b2ac:813e%5]) with mapi id 15.20.6340.021; Wed, 26 Apr 2023
 15:32:02 +0000
Message-ID: <e72018ab-cf1f-f50e-b43a-d50068ef5ff2@intel.com>
Date: Wed, 26 Apr 2023 17:31:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>
References: <20230417093412.12161-1-wojciech.drewek@intel.com>
 <20230417093412.12161-8-wojciech.drewek@intel.com>
 <ee3d3162-bba6-d65b-92d4-e44930b9110b@intel.com>
 <MW4PR11MB5776258BAC908BD75A739DF2FD659@MW4PR11MB5776.namprd11.prod.outlook.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <MW4PR11MB5776258BAC908BD75A739DF2FD659@MW4PR11MB5776.namprd11.prod.outlook.com>
X-ClientProxiedBy: FR3P281CA0039.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4a::11) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|PH8PR11MB7072:EE_
X-MS-Office365-Filtering-Correlation-Id: 4d14034e-9168-42df-2c3f-08db466b61db
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bzNTGHuR+fYCCRQ2JDD/ijuCDdaphcGZDfnXK5z0eIEa45+3kUrtfqu260SgmTTwqg8Y+Nt7MgXa8ra+oUEYS1CHLTLkf5c1J65zAfX4NvdYCvfzrXstO4df/01Sdg08LzNDS/uhxAVs3kpIH3rxZR49Trce2Q/fJpHDWB67COCgNPSlfuQPeJqyhB+rs9AX9D52xhnSFzIZONDBizgYwqy0H7eUylwO6hJ9LiSDeKc3aVGsR3bH8YMRWuzc8xzEGYxGx7boIcEcNUpmdjwqIpYl2fOs3YT1cQh1IO1MWta0mVhVuEop8BFp47HWkSL5R/kY7qnp3DxpTR23sz1oNiRRB6xK2jsErT4OiCO67HY6ZOZfRl+gPwp3h+nUTvok8BIQRbmThingyyhgAXZ6l6+KdBANoQRh3GZutaPa/R6pfcMP7hUwxRAA1pFpLZtlYrCJ1SgZaR3svWMmBHJ4rpFtH2+mB+6eHMlerlJeGKIi/KRZy0AdN3onOelspyYW9WrG7qYQtPErlVhw3CkQ0J41Q+OTPviR7+8ShnjbF+Sjgrec5KFWipHk+2AW8cRk9hzV265HbJe+BZNM5x1X72ECGGg93O0qcPaXFmI2wAKJypYnRENWAiQLVNdJhEuJZGiIOZgsx4m77NM9SPe0Sw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(346002)(376002)(366004)(136003)(39860400002)(451199021)(36756003)(86362001)(31696002)(54906003)(478600001)(37006003)(6666004)(6486002)(8936002)(38100700002)(6862004)(8676002)(41300700001)(66556008)(66946007)(82960400001)(6636002)(316002)(2616005)(4326008)(83380400001)(186003)(66476007)(31686004)(26005)(6512007)(6506007)(53546011)(2906002)(5660300002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NHArM1lsa2hnNGUzWUVPV1pGS3ByRnJPZnNKeVVzL2hlVmFlTGNYODRnUzRN?=
 =?utf-8?B?c3lBWHl4eVl5alFoVHVWUVNqa0pLVm1ibVJuN29yRWJCN1NKQ1NHc0k5dkND?=
 =?utf-8?B?UEsxSWtVOUQ0c2E3cHlJYWdvdGl6dVZuRGpNOFEvV0tiUmZuT2ppNHFqNndK?=
 =?utf-8?B?TUorT2VpbFZzNkZyeGVOcDdzRWM0NGozcUVVdDBxS1Zra2RhZ005ejB6dlY3?=
 =?utf-8?B?S2VJSWhQVTdlakltR2pISmlLTFBqWlQ4b1U4S2pWMnZhSzBWRUZDUHRhU2c0?=
 =?utf-8?B?UnRwV2hiOGduQ2tSSm0zSUQvRWtoUnFQemZxYzM5MGQ0aUFLcFJSV056TTVs?=
 =?utf-8?B?MjdIODFhNjhVVUVJN3RxNldoUExGbHAranBxUW9CWG9rSksxd04xalNXTyt4?=
 =?utf-8?B?bHJBbXpNYTNzNVJVa0p6Qm1hZDA1cTYwdmpqK3lQakNBTlAwY1V2alV6cmNx?=
 =?utf-8?B?T25ZYmoyWUg0U2hFNWxpaUYvbXBEWDc1NGJIdmdkU1o0d21ZcVlnRldBVHdt?=
 =?utf-8?B?NW5Za3hVeWt0VElHVUlKUFQ1R3RZT2UxWkVzcG5MazhoSnl6MnRkTjhNeGtX?=
 =?utf-8?B?c1VpSFowejV0SEVXYko1ZFVOdVRPeGk5SkIzOWhTTStsd0hvK3FwazArSWcy?=
 =?utf-8?B?aWVvTkRGTGRldkRHaGJ1S0tTK2Y1Y0t5RGpIbzJ4WWIxOEd6ZWNsSi9CYlpr?=
 =?utf-8?B?bmZjYXBLMHFOQzBsTXNTbWJOY1N0SVVtL3NkeW15azJkMTE5QkxIUUJDYUMr?=
 =?utf-8?B?Q01Zd2NRcFhjd0JSeG1XT2tPWmNYbW5vaU5BaEF4ckpyM0pnZmZ4cVF4aDBE?=
 =?utf-8?B?dlM2UEM5cklUWDdxRnJRQTgwRDFGMnFaL1lKbzNmL0pJdEc4Y0M1UmtBN2py?=
 =?utf-8?B?RTJQcXB0Y093TXVGRzVCU0d3SzVtVFU4amZXMm9kRDNIajlOTjJTRVV4ZFVr?=
 =?utf-8?B?dlk5Q1Y4REdzeU9FTVFnVmU2L2xockROR0pYSHFyQkJEbEY5MVZoSVhBVmpy?=
 =?utf-8?B?RVpjdlBJQWw3amVlNTlEY0xFNDA1RmRJUjR1MXE1dVBaN1lsQk1KbG5mR3lx?=
 =?utf-8?B?L2JnWldUS1dnWmhsSDZzZmNKOGdCVFltckN4Y1hmRUQzNnpXY1MzWU1HYnJR?=
 =?utf-8?B?REhXTTFpdUFqRkV5aG5aV2crTWVoRW9YSzlwQS9oWHBIcHBqN3VJRnJKM3Mx?=
 =?utf-8?B?UEgwejh3clBhY09iTVZuSW5QUDhGNFNad3UrMXFndWtXUEVZcjZzRldZK2xZ?=
 =?utf-8?B?MzY4ekFsem1YaUc2VzI2MVdmQlRYZnhxRkdzVmpoeFFFbWg3TWNIL1RzMGlk?=
 =?utf-8?B?YlRsVXArS3BHUlFwUWVlc2l3bVBFdFdQZitscjZkTGdOcWFIUVA4Rm5STHJM?=
 =?utf-8?B?d01tdy9MckU5Q0Q1NEJGMEtTbFlDOUFkUUR2NE9iZmpZQjc3MXFqanZsL1VI?=
 =?utf-8?B?MGFkSXd6cU1BTDlFd0ZjdHNEeXBiNVlybXlaODJUcUUxRSs1K3VxdGVscllY?=
 =?utf-8?B?NUlhK0hHa1J4d3hEUDhjUmZkSmxoeXlGd2l4WXR1QzkwY3BBQTI3aUNkZ3d3?=
 =?utf-8?B?TTlmL0QxNHNXWWlGZ0xGTWg0ZEp1dmlvK3hUelhPZ2JOeUtScmE0Ymw4Ym9E?=
 =?utf-8?B?ZnEvMWVrWnNnV2M5c0dTc1VuQTIrckd0ekpCUWpOU21xK1AxNEdMNnBQc3ZW?=
 =?utf-8?B?WXJ6Nm10U3huYy9WTkU3elRtamx5c3FoQ3dpUGZSNC8rTDhveVl2SFpBakJm?=
 =?utf-8?B?WGZRamtWVVZWc3dMK1JJUXorUW9pQkVZelRGb2JQSXUwaExaZUxGc2lPeXJz?=
 =?utf-8?B?S1phazNQR3Q0QzhzRkNFcGQvT1BBOUxNeGpaWXlrbHVRMkdlR2RWWXpTc1li?=
 =?utf-8?B?NVRNaDZqR1ovRVVxY0VhMW1LUVBoNzl3NUlpT2I0WE1tUllQTkZYRGpOb0Nl?=
 =?utf-8?B?dlNtRHE1ZVNTMTc5VWdOTlBXZVZ5bEl2RGdIdDc4emZNeWZmVU9XYm14bnRq?=
 =?utf-8?B?TDdaaUhZcUhNbEZQUVdEcEkyK2RhUHplb0VTUlN4OFFMWWNyRjNTZElLT2Yz?=
 =?utf-8?B?MWNLWExWSllKZjBNb1lPNFJZeVlqK2t6N1cwdCtJcitSdGRwN2tTZkJEdTJ4?=
 =?utf-8?B?Y3gvQU5ZOFMvSU51dGNkNC9UcytZM0RmMjh5a2tRTFo3VDB6bkQzNkVFcDNi?=
 =?utf-8?B?b1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d14034e-9168-42df-2c3f-08db466b61db
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2023 15:32:02.2886 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: epnHgn7gwoNnRB8xZpGs9GwxqNseHii4pnAJw0TV/OqDMZ91caV0ZcMpLX4cb6T8odVDct+Njxkp56MwAzwSD42GzVkm+EBHJLsHEdoo7Cs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7072
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682523128; x=1714059128;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=No/jmGqT1SPLOrT693rGkQX6ZiqFrZJ25hkUcJorcpk=;
 b=hs77VFpQ4/saRQvRS0OP5XxB+PyCCKKo4BYxsZcBWuZcWd1g/NjD8AB7
 JM5PrdgNkk3kugFAWGKkczkDxQyh4RoTYmm3lsFvU2nLmsKvT+Sz4xPHy
 rKDeYXshnGRv3k89Or3Vo+MPF8UK8UFauAJYbdbxLZdFWPfGsqklCw3RX
 Tcgi2ZiOeUaHsebXkGPhDz8HE0XAEkMveNikr8isiY27yKOWHVjbpE50i
 zV/BWgRWwz2QrNexQidqXedANhXEHpJ/vK+202pY7EkMegRVJRnkpY17b
 1hEVszkCrU1r5flFIK6HSwMeZGRCtRxHuKQkjpDdFyrqId70Gf56trVNW
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hs77VFpQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 07/12] ice: Accept LAG
 netdevs in bridge offloads
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogV29qY2llY2ggRHJld2VrIDx3b2pjaWVjaC5kcmV3ZWtAaW50ZWwuY29tPgpEYXRlOiBX
ZWQsIDI2IEFwciAyMDIzIDEzOjMxOjE3ICswMjAwCgo+IAo+IAo+PiAtLS0tLU9yaWdpbmFsIE1l
c3NhZ2UtLS0tLQo+PiBGcm9tOiBMb2Jha2luLCBBbGVrc2FuZGVyIDxhbGVrc2FuZGVyLmxvYmFr
aW5AaW50ZWwuY29tPgo+PiBTZW50OiBwacSFdGVrLCAyMSBrd2lldG5pYSAyMDIzIDE2OjQwCj4+
IFRvOiBEcmV3ZWssIFdvamNpZWNoIDx3b2pjaWVjaC5kcmV3ZWtAaW50ZWwuY29tPgo+PiBDYzog
aW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7
IEVydG1hbiwgRGF2aWQgTSA8ZGF2aWQubS5lcnRtYW5AaW50ZWwuY29tPjsKPj4gbWljaGFsLnN3
aWF0a293c2tpQGxpbnV4LmludGVsLmNvbTsgbWFyY2luLnN6eWNpa0BsaW51eC5pbnRlbC5jb207
IENobWllbGV3c2tpLCBQYXdlbCA8cGF3ZWwuY2htaWVsZXdza2lAaW50ZWwuY29tPjsKPj4gU2Ft
dWRyYWxhLCBTcmlkaGFyIDxzcmlkaGFyLnNhbXVkcmFsYUBpbnRlbC5jb20+Cj4+IFN1YmplY3Q6
IFJlOiBbUEFUQ0ggbmV0LW5leHQgMDcvMTJdIGljZTogQWNjZXB0IExBRyBuZXRkZXZzIGluIGJy
aWRnZSBvZmZsb2Fkcwo+Pgo+PiBGcm9tOiBXb2pjaWVjaCBEcmV3ZWsgPHdvamNpZWNoLmRyZXdl
a0BpbnRlbC5jb20+Cj4+IERhdGU6IE1vbiwgMTcgQXByIDIwMjMgMTE6MzQ6MDcgKzAyMDAKPj4K
Pj4+IEFsbG93IExBRyBpbnRlcmZhY2VzIHRvIGJlIHVzZWQgaW4gYnJpZGdlIG9mZmxvYWQgdXNp
bmcKPj4+IG5ldGlmX2lzX2xhZ19tYXN0ZXIuIEluIHRoaXMgY2FzZSwgc2VhcmNoIGZvciBpY2Ug
bmV0ZGV2IGluCj4+PiB0aGUgbGlzdCBvZiBMQUcncyBsb3dlciBkZXZpY2VzLgo+Pj4KPj4+IFNp
Z25lZC1vZmYtYnk6IFdvamNpZWNoIERyZXdlayA8d29qY2llY2guZHJld2VrQGludGVsLmNvbT4K
Pj4+IC0tLQo+Pj4gIC4uLi9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9lc3dpdGNoX2JyLmMg
ICB8IDQwICsrKysrKysrKysrKysrKystLS0KPj4+ICAxIGZpbGUgY2hhbmdlZCwgMzUgaW5zZXJ0
aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9lc3dpdGNoX2JyLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlX2Vzd2l0Y2hfYnIuYwo+Pj4gaW5kZXggODJiNWViMjAyMGNkLi40OTM4
MWU0YmY2MmEgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2Uv
aWNlX2Vzd2l0Y2hfYnIuYwo+Pj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNl
L2ljZV9lc3dpdGNoX2JyLmMKPj4+IEBAIC0xNSw4ICsxNSwyMSBAQCBzdGF0aWMgY29uc3Qgc3Ry
dWN0IHJoYXNodGFibGVfcGFyYW1zIGljZV9mZGJfaHRfcGFyYW1zID0gewo+Pj4KPj4+ICBzdGF0
aWMgYm9vbCBpY2VfZXN3aXRjaF9icl9pc19kZXZfdmFsaWQoY29uc3Qgc3RydWN0IG5ldF9kZXZp
Y2UgKmRldikKPj4+ICB7Cj4+PiAtCS8qIEFjY2VwdCBvbmx5IFBGIG5ldGRldiBhbmQgUFJzICov
Cj4+PiAtCXJldHVybiBpY2VfaXNfcG9ydF9yZXByX25ldGRldihkZXYpIHx8IG5ldGlmX2lzX2lj
ZShkZXYpOwo+Pj4gKwkvKiBBY2NlcHQgb25seSBQRiBuZXRkZXYsIFBScyBhbmQgTEFHICovCj4+
PiArCXJldHVybiBpY2VfaXNfcG9ydF9yZXByX25ldGRldihkZXYpIHx8IG5ldGlmX2lzX2ljZShk
ZXYpIHx8Cj4+PiArCQluZXRpZl9pc19sYWdfbWFzdGVyKGRldik7Cj4+Cj4+IE5pdDogdXN1YWxs
eSB3ZSBhbGlnbiB0byBgcmV0dXJuYCAoNyBzcGFjZXMpLCBub3Qgd2l0aCBvbmUgdGFiOgo+Pgo+
PiAJcmV0dXJuIGljZV9pc19wb3J0X3JlcHJfbmV0ZGV2KGRldikgfHwgbmV0aWZfaXNfaWNlKGRl
dikgfHwKPj4gCSAgICAgICBuZXRpZl9pc19sYWdfbWFzdGVyKGRldik7Cj4gCj4gSSd2ZSBzZWVu
IGV4YW1wbGVzIG9mIGJvdGggc28gZWl0aGVyIHdheSBpcyBvayBJIHRoaW5rCgpDb3JyZWN0LCB0
aGF0J3MgbW9yZSBvZiBteSBwZXJzb25hbCA6RCBPciBtYXliZSBJJ3ZlIHNlZW4gYSBjb3VwbGUg
dGltZXMKdGhhdCBlaXRoZXIgY2hlY2twYXRjaCBvciBzb21ldGhpbmcgZWxzZSBjb21wbGFpbmVk
IG9uIHRoZSBzZWNvbmQgbGluZQpiZWluZyBub3QgYWxpZ25lZCB0byB0aGUgZmlyc3Qgb25lIHdp
dGggYHJldHVybmAuCgpbLi4uXQoKVGhhbmtzLApPbGVrCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50
ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
