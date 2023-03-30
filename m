Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CC5426D10EF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Mar 2023 23:35:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6D7AF84385;
	Thu, 30 Mar 2023 21:35:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6D7AF84385
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680212130;
	bh=mcZt42n5QyAIjJrl2XBnGWDNobv42nWjWX0+KWU5k48=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZmGRmJOoGgp4kTXQ/Bs9Q+DYro8zYb/3pneB3UHSJR7V61Dy2Aph++B3TMGFIyW4H
	 t4kG8tDpcLZTUJrFARnvt2EVpkPlnaZ1AoYt4LAML0tA4YWOvJEZoToyMymvQ73Wgr
	 jm6MHy+OudSwHIYW2SD5NC4obp3QrLDMdGyQiTBQeIjlSf7RAUnP1JI9jdDcuaf9oM
	 G4j6ocyj0Q7koGMITpt8JCGGmA3gc0XNDLDEqmpPPHaUzCkWnQ8fpq1sWMNYci+bF0
	 azIHC39zwD+wwLbw2ij6AXT7Zxu75rrzRYhxJuwinINoQk+wc0wiFj7ue9g6bKqAe+
	 eo2zy+ohS7FMQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id svmmIG0AT7XW; Thu, 30 Mar 2023 21:35:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 366C4842D3;
	Thu, 30 Mar 2023 21:35:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 366C4842D3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5E3231BF2C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 21:31:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 426F384138
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 21:31:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 426F384138
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fSF6PwX1iPZS for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Mar 2023 21:31:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C0DA48412C
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C0DA48412C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 21:31:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="338790848"
X-IronPort-AV: E=Sophos;i="5.98,306,1673942400"; d="scan'208";a="338790848"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2023 14:31:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="715168099"
X-IronPort-AV: E=Sophos;i="5.98,306,1673942400"; d="scan'208";a="715168099"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 30 Mar 2023 14:31:29 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 30 Mar 2023 14:31:29 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 30 Mar 2023 14:31:29 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 30 Mar 2023 14:31:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SwJcW75d3j6Fq/PqsDhLdJdFJ4OxToOnl4wWvHxdlCm3kdP34J5AzYqNFzgey0XafmDaOLdvjiQSQ7PK+zI158h8jMh1qPdWipZnaLZSQqZN19/dg7W+1KP6V5juWvM92xHS0EGzLoyzyfSv0W81d4Qmz7/MSnScCmUX0+DBqu9qHSnqgf1hFWFNmynNK9ZddeL7+Kz0NWHs9tSTzrvMS00ZdiaV8NC8dkveoee6pq9trR1qKtnFLhmXjtpn2yYPghN67VNtkmU6w33nYlwK/U6H+DWI4yEiF2f6b/bo2ZmngNhRD8Cjl7sVC9KmXkXz6a7Jx+sUW7YsCHqZBhmsTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=krCV3SAunqej8b4bP25wLgyWLZ2btiSlfuVQtLxVUDQ=;
 b=KwJIESQJ37DZVrMiFrLbzkMmGNlXp2rHdPBMwJQ68a79GkfQOUrdvV/e3qhvxtwrY22d1192q6p4IQeyEo39yeoy06r6umlUijYScq4JmDaZ64d5NbEd3KvpXkip8U70KoLEmTPE6Xm1jr9x8wax5y/MtjaVrT1S6Bi5/ViDEbwMrh+XcnVOFiwPLH8EUMWyAYX/WoH6TdgYWlPDzuvHoCo0WToW19FGWiVc8zlDt9Y+dW+Wt+c+nvDxypJfdpKJluhRAxSYlO+d3DtD6+rwbUUq+U4gx1lBR4xHx6KnyXJcYnc07GRrc4R8AnPwZLju7FMtIooPvwFpjjK98jCpRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB2599.namprd11.prod.outlook.com (2603:10b6:a02:c6::20)
 by PH0PR11MB5015.namprd11.prod.outlook.com (2603:10b6:510:39::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.20; Thu, 30 Mar
 2023 21:31:27 +0000
Received: from BYAPR11MB2599.namprd11.prod.outlook.com
 ([fe80::c76f:9b76:76c5:5ddc]) by BYAPR11MB2599.namprd11.prod.outlook.com
 ([fe80::c76f:9b76:76c5:5ddc%7]) with mapi id 15.20.6222.032; Thu, 30 Mar 2023
 21:31:27 +0000
Message-ID: <4f927158-3b84-c2e1-77d6-c616139e5766@intel.com>
Date: Fri, 31 Mar 2023 03:01:18 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.9.0
Content-Language: en-US
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20230329140404.1647925-1-pavan.kumar.linga@intel.com>
 <72691489-274c-8c3c-c897-08f74f413097@molgen.mpg.de>
From: "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>
In-Reply-To: <72691489-274c-8c3c-c897-08f74f413097@molgen.mpg.de>
X-ClientProxiedBy: SJ0PR05CA0028.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::33) To BYAPR11MB2599.namprd11.prod.outlook.com
 (2603:10b6:a02:c6::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2599:EE_|PH0PR11MB5015:EE_
X-MS-Office365-Filtering-Correlation-Id: 453a957e-4e8f-4444-32f2-08db31661e46
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Yzpy+s+jX6yJyqhr3du9hEk6dzUnFs+qYe/jY6Iv9IOYX3FJw0Mz8BLypgfRd5LFMKcksIdS75c56PcySULadc/LGn+ogqEK9JNtMlx/q1OY5l5twZKoGVpO3xTXTy3TpKJCcdrBzatd47Tvx8kMFNTi1P9B0ltAmBpfwocn3nwfN3S8b15VQtCsK7V0zofdkg9dzNDvyeOBJ23LnaspJsvfttOk+qYqKPQVQkFL4OwNJ/u/HaT7I5ofqvStDpN5PkmEdUb+DfCegHKqtFnj0zYwQyllgstmg+uANWJFy/jiita88yz4BsQW2Qv0hLAvYxg5cPQfdIqT6EWkrcC82JCU1WNZ6FdojinXS/mEWHrNs1Y5qWY/ABFB10/UfndvylmKqWzPNcYmmUEgCIsqXYKz6TjxJEBkKSwskm72TApblKlCccGiLZYTgTK1kFVoaN9bGUGi4NZzIeD+bqyCyuU/k/gtqxWEzOhuMfcaIlgW3P2VB3BrAxmOMqdNfdHtixP8ZjeBYmukSh2ggu++ME9zZylNW5a7PuADzhcDkAnN55EcLTbh5GiYmxt+TjV6L2hi2onKRwc+0szgmsgJEGO/eFJwP1jDp97odSKlmc+OFuxJalsUOfrUKzrqyoRWp4wV8StAembwbFtRccWDww==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2599.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(366004)(396003)(346002)(136003)(376002)(451199021)(478600001)(6666004)(316002)(5660300002)(36756003)(83380400001)(186003)(38100700002)(31696002)(82960400001)(2616005)(53546011)(6512007)(26005)(55236004)(6506007)(6486002)(8936002)(2906002)(66476007)(41300700001)(66946007)(66556008)(4326008)(6916009)(8676002)(86362001)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OEVXQ0p0U3VISGhKNUhJbi8zTVdhWGR5UlBId1phSko3UFF0Um1CRkpZQUZx?=
 =?utf-8?B?ajRjbWZmNUszRmtVcWYrNyswaktWR01KRGJTSHk3SWxLYWI5aldvaURTQVVk?=
 =?utf-8?B?VEFUVHBGQVRlVGh6aS80alhCZ2pwdlozcjhRMkZRdzN6cUF0RjFTRm5hUm91?=
 =?utf-8?B?aXFacGpIb21LcitXNVhjNjRnSTQyaCsxMUFXY0txME5Bc3gxTEVwL1RER2JL?=
 =?utf-8?B?NHd1L3JRS2NBa2JqYzd1OVhYVXZFZlhkMUExNnJwZVk1dksxVkY4UVlEaVE3?=
 =?utf-8?B?dGlERytWZzFsN2x3T3hucXE5c1JtbWV6cnpPT3lObWVpZlBDVFdTTExCTzJL?=
 =?utf-8?B?aHBqSStmU0lVc3kxSDd2Nm42Y0tubzNZbFpvTjZZdlpEOEVLTzd0eDd2ZVJV?=
 =?utf-8?B?OFFscnpsRko2aHFXd2F4dGx1KzR5SVF4Z0ZPUXYwQVUybC92Y1NEZlhPTzJt?=
 =?utf-8?B?SFUwRmRTZ3RqdGRzVEY5bWYvYlJROS9uQklzZjRnSlJrZFBCbFF2Y0t6M2N1?=
 =?utf-8?B?SlF5bm5nTy96bUZOVVVhQ2dRb0QwTllabUxFVmFZYkRBOW94RmpHVFExVEE5?=
 =?utf-8?B?QlhSWk9zYTRtZ3gvNzhlRnVFT3Q1OFZRUlE3R2hsSXpRK1ZQdHVZRnNhc1p3?=
 =?utf-8?B?eVp6ZWx4b2IwVFRlNFp1YTFhbUZRK3c0SUNVSDNoZEV0S2hNL0JIb094S2ls?=
 =?utf-8?B?TFp4QUZ4TlFrdDZvWUtPOXZ3ZlhXSVRNZkpPRTlaZkp6SkhXeDZ0eHE1bisv?=
 =?utf-8?B?M3kzZUxLSk9wNUNpdGRXSG5PRWNiRWppN3hNZjZkS3hTUkhDN05iNHFQNi9Q?=
 =?utf-8?B?SkxKWE83elp0STd1TG9ZVDJSek1ndmxLTDJsWThYTm5Yb2gvRFRpekhXRmpC?=
 =?utf-8?B?QTRmVHBqUnRZazRTcW8zSXRMeHJYdVR3KzBJekx4MzVuOCt4K1VmeUZHRnZj?=
 =?utf-8?B?QVBjR1c5OUhSaDVaMEg5WXY5ZVpTTFJJc3dWZlNWWWhKcHJmWW44OTB3NFRz?=
 =?utf-8?B?c3JadXpHZTdQeGNveUxjS1dXblFRaXBkTXJTcUJucHVIVjJQU3Npa1VreGps?=
 =?utf-8?B?YUFSa2dDeWdSNkdIaTY3Zy9VSGFRQVE5SFlDMlVYbWw2ZEZrNzBKYmFFTW9j?=
 =?utf-8?B?NjR0SFcwVGwwdnpXQ0k3dzBxT24rTElvblU5anlzeUtYblk0cTlNaVVEMUMr?=
 =?utf-8?B?TS8xNnQ0ZTVhWnFJTFVEMnFnUDZBWmR5VFBiUnNHa2t6QlBwNVFJK2hwaW9M?=
 =?utf-8?B?U2F3d2dMYkx5QkUzVElTbk9NS2l1K2ZXNXZ0elNDV3h0eHN1aWttWmljc2E1?=
 =?utf-8?B?VmZmY2tpSXJ0N1pxaDcyOEExWEpmSmZyMlRIRGpRSVhPTUd3UWNtVjNsUkoy?=
 =?utf-8?B?UTdIdis3YkFwbFkzd3BDV21QbUZFRGp3SUtZdUI3VWZuMjA4U0F5ZkRvZEgx?=
 =?utf-8?B?OUxZbTRheUFEdXNyVkZBYU5EbjZvK2NRV3VPZlZoNmJDTm5iKzJnS2ZDN2sr?=
 =?utf-8?B?RnNNdE5WQ0xkVC9CL200MjJ6OVNlZkYrb3ozaG1nYUtIRGtWaFA5UHFIZ2d3?=
 =?utf-8?B?Q2ZvZmZpVHJFay9KeC9malJqM3A2N2Y5dnFYNG9HSWFQUHlHamxGY2FDb082?=
 =?utf-8?B?ZHdsTlFwaE5Sb004blhNcFVyeVJKVGFSR3laVXl2R3lHZGJPb2kwSXIybEFZ?=
 =?utf-8?B?YlRqYUQ4dUxsT0FvK0g0UkFVamFYcDIySTlnUk9GY2RrNStjVU5DYy93UHh6?=
 =?utf-8?B?L21vaG5YOUdqVkJjbnlGQk9WakZ6RTc0L3FkT0Z1Kzg2dzVHak0vNmZzblB4?=
 =?utf-8?B?Z2R4YTduTFlVNHUvK05FTWl3L3NFT2l2dEl3Snc3N3lZbTgvWXZxTjNrb2d6?=
 =?utf-8?B?ZzkvVnJacmlFSkFtSkpMK0VQcmRMbkZIUThxUS9pRTdGd3hMQUJDa0h3bENJ?=
 =?utf-8?B?c3ZVUHM1UlZBY0k3eTU0aDBRR01TTElONnMwSU1oNE1aL0ttN2k5S0NDT0pW?=
 =?utf-8?B?eERCaDRiMUxqamZVZkRJUUllMGVjZi9DTlowYVN0ekRGbzZWMlg1QXNrakUr?=
 =?utf-8?B?ZzlYMlEyajhIUng5Qk9XcDU5MmVFVTBvdTQrRi80YUF6M0YwMDVXSGRpWGYw?=
 =?utf-8?B?aXlTTnVyUmd2bWg5OUs2cVlycjBSVFQxdGF2elVaU0dMbzFXYVB5UTBaT3dw?=
 =?utf-8?B?SHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 453a957e-4e8f-4444-32f2-08db31661e46
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2599.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Mar 2023 21:31:26.9470 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nb/OduQ2/sWZB6OMCz4qLOhns/wxXdvvNFTsrr2bEZrWHrf9lqi/1E9E15xjmws7j/BI4URjAyg4ViNnPsR8kMVWpJgCOP/F7bd5mZZ3ztQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5015
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Thu, 30 Mar 2023 21:35:25 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680211898; x=1711747898;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WDxIX3K0j+bHrTLCzs0YxGLw1rvzsV7J9VRo6sZb9W4=;
 b=aTJvITvXZtOu6V9OSGjp/Vxm9ywsyzAlorrlKMkLeCyxWJd/sIfhn0xy
 jlROMm76NwEA3T2OMTzz6UiNdtAvgSKTjp2uenQ23GVOL2wOb9a88/DIS
 K5vxL3mzWl0qkSlOQFk7EsAL8gWOAZURYX7IrbYmy86fEdYRclruKurwh
 GbN/M3sZv3MmglSBh0HkgXR/BBcc9pl8TvWCMwQJzv1Gc4vXja0YHCGRl
 GKHiPB294/jKDx/xy2jTQyCQFhPMRRZHUQFgPJLdtWN8dWCk80yuMR2O9
 N2oajhpLtzplyGXcOOWXeSreQRvOwRnmjlZiW5QABhW2Kg7qfX5LmYZbN
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aTJvITvX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 00/15] Introduce IDPF driver
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
Cc: netdev@vger.kernel.org, willemb@google.com, decot@google.com,
 shiraz.saleem@intel.com, intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAzLzI5LzIwMjMgOToxMSBQTSwgUGF1bCBNZW56ZWwgd3JvdGU6Cj4gRGVhciBQYXZhbiwK
PiAKPiAKPiBUaGFuayB5b3UgdmVyeSBtdWNoIGZvciB0aGUgbmV3IGRyaXZlci4gSXTigJlzIGEg
bG90IG9mIGNvZGUuIDstKQo+IAo+IEFtIDI5LjAzLjIzIHVtIDE2OjAzIHNjaHJpZWIgUGF2YW4g
S3VtYXIgTGluZ2E6Cj4+IFRoaXMgcGF0Y2ggc2VyaWVzIGludHJvZHVjZXMgdGhlIEluZnJhc3Ry
dWN0dXJlIERhdGEgUGF0aCBGdW5jdGlvbiAoSURQRikKPj4gZHJpdmVyLiBJdCBpcyB1c2VkIGZv
ciBib3RoIHBoeXNpY2FsIGFuZCB2aXJ0dWFsIGZ1bmN0aW9ucy4gRXhjZXB0IGZvcgo+PiBzb21l
IG9mIHRoZSBkZXZpY2Ugb3BlcmF0aW9ucyB0aGUgcmVzdCBvZiB0aGUgZnVuY3Rpb25hbGl0eSBp
cyB0aGUgc2FtZQo+PiBmb3IgYm90aCBQRiBhbmQgVkYuIElEUEYgdXNlcyB2aXJ0Y2hubCB2ZXJz
aW9uMiBvcGNvZGVzIGFuZCBzdHJ1Y3R1cmVzCj4+IGRlZmluZWQgaW4gdGhlIHZpcnRjaG5sMiBo
ZWFkZXIgZmlsZSB3aGljaCBoZWxwcyB0aGUgZHJpdmVyIHRvIGxlYXJuCj4+IHRoZSBjYXBhYmls
aXRpZXMgYW5kIHJlZ2lzdGVyIG9mZnNldHMgZnJvbSB0aGUgZGV2aWNlIENvbnRyb2wgUGxhbmUg
KENQKQo+PiBpbnN0ZWFkIG9mIGFzc3VtaW5nIHRoZSBkZWZhdWx0IHZhbHVlcy4KPj4KPj4gVGhl
IGZvcm1hdCBvZiB0aGUgc2VyaWVzIGZvbGxvd3MgdGhlIGRyaXZlciBpbml0IGZsb3cgdG8gaW50
ZXJmYWNlIG9wZW4uCj4+IFRvIHN0YXJ0IHdpdGgsIHByb2JlIGdldHMgY2FsbGVkIGFuZCBraWNr
cyBvZmYgdGhlIGRyaXZlciBpbml0aWFsaXphdGlvbgo+PiBieSBzcGF3bmluZyB0aGUgJ3ZjX2V2
ZW50X3Rhc2snIHdvcmsgcXVldWUgd2hpY2ggaW4gdHVybiBjYWxscyB0aGUKPj4gJ2hhcmQgcmVz
ZXQnIGZ1bmN0aW9uLiBBcyBwYXJ0IG9mIHRoYXQsIHRoZSBtYWlsYm94IGlzIGluaXRpYWxpemVk
IHdoaWNoCj4+IGlzIHVzZWQgdG8gc2VuZC9yZWNlaXZlIHRoZSB2aXJ0Y2hubCBtZXNzYWdlcyB0
by9mcm9tIHRoZSBDUC4gT25jZSAKPj4gdGhhdCBpcwo+PiBkb25lLCAnY29yZSBpbml0JyBraWNr
cyBpbiB3aGljaCByZXF1ZXN0cyBhbGwgdGhlIHJlcXVpcmVkIGdsb2JhbCAKPj4gcmVzb3VyY2Vz
Cj4+IGZyb20gdGhlIENQIGFuZCBzcGF3bnMgdGhlICdpbml0X3Rhc2snIHdvcmsgcXVldWUgdG8g
Y3JlYXRlIHRoZSB2cG9ydHMuCj4+Cj4+IEJhc2VkIG9uIHRoZSBjYXBhYmlsaXR5IGluZm9ybWF0
aW9uIHJlY2VpdmVkLCB0aGUgZHJpdmVyIGNyZWF0ZXMgdGhlIHNhaWQKPj4gbnVtYmVyIG9mIHZw
b3J0cyAob25lIG9yIG1hbnkpIHdoZXJlIGVhY2ggdnBvcnQgaXMgYXNzb2NpYXRlZCB0byBhIAo+
PiBuZXRkZXYuCj4+IEFsc28sIGVhY2ggdnBvcnQgaGFzIGl0cyBvd24gcmVzb3VyY2VzIHN1Y2gg
YXMgcXVldWVzLCB2ZWN0b3JzIGV0Yy4KPj4gwqBGcm9tIHRoZXJlLCByZXN0IG9mIHRoZSBuZXRk
ZXZfb3BzIGFuZCBkYXRhIHBhdGggYXJlIGFkZGVkLgo+Pgo+PiBJRFBGIGltcGxlbWVudHMgYm90
aCBzaW5nbGUgcXVldWUgd2hpY2ggaXMgdHJhZGl0aW9uYWwgcXVldWVpbmcgbW9kZWwKPj4gYXMg
d2VsbCBhcyBzcGxpdCBxdWV1ZSBtb2RlbC4gSW4gc3BsaXQgcXVldWUgbW9kZWwsIGl0IHVzZXMg
c2VwYXJhdGUgCj4+IHF1ZXVlCj4+IGZvciBib3RoIGNvbXBsZXRpb24gZGVzY3JpcHRvcnMgYW5k
IGJ1ZmZlcnMgd2hpY2ggaGVscHMgdG8gaW1wbGVtZW50Cj4+IG91dC1vZi1vcmRlciBjb21wbGV0
aW9ucy4gSXQgYWxzbyBoZWxwcyB0byBpbXBsZW1lbnQgYXN5bW1ldHJpYyBxdWV1ZXMsCj4+IGZv
ciBleGFtcGxlIG11bHRpcGxlIFJYIGNvbXBsZXRpb24gcXVldWVzIGNhbiBiZSBwcm9jZXNzZWQg
YnkgYSBzaW5nbGUKPj4gUlggYnVmZmVyIHF1ZXVlIGFuZCBtdWx0aXBsZSBUWCBidWZmZXIgcXVl
dWVzIGNhbiBiZSBwcm9jZXNzZWQgYnkgYQo+PiBzaW5nbGUgVFggY29tcGxldGlvbiBxdWV1ZS4g
SW4gc2luZ2xlIHF1ZXVlIG1vZGVsLCBzYW1lIHF1ZXVlIGlzIHVzZWQKPj4gZm9yIGJvdGggZGVz
Y3JpcHRvciBjb21wbGV0aW9ucyBhcyB3ZWxsIGFzIGJ1ZmZlciBjb21wbGV0aW9ucy4gSXQgYWxz
bwo+PiBzdXBwb3J0cyBmZWF0dXJlcyBzdWNoIGFzIGdlbmVyaWMgY2hlY2tzdW0gb2ZmbG9hZCwg
Z2VuZXJpYyByZWNlaXZlCj4+IG9mZmxvYWQgKGhhcmR3YXJlIEdSTykgZXRjLgo+IAo+IFvigKZd
Cj4gCj4gQ2FuIHlvdSBwbGVhc2UgZWxhYm9yYXRlIG9uIGhvdyB0aGUgZHJpdmVyIGNhbiBiZSB0
ZXN0ZWQsIGFuZCBpZiB0ZXN0cyAKPiBhcmUgYWRkZWQgdG8gYXV0b21hdGljYWxseSB0ZXN0IHRo
ZSBkcml2ZXI/Cj4gCj4gCk5vdCByZWFsbHkgc3VyZSBvbiB3aGF0IHRlc3RzIGFyZSB5b3UgcmVm
ZXJyaW5nIHRvLiBDYW4geW91IHBsZWFzZSAKZWxhYm9yYXRlIG9uIHRoYXQgcGFydD8gV2UgYXJl
IGxvb2tpbmcgaW50byB3YXlzIHRvIHByb3ZpZGUgcmVtb3RlIAphY2Nlc3MgdG8gdGhlIEhXIGJ1
dCBkb24ndCBoYXZlIGFueXRoaW5nIGN1cnJlbnRseSBhdmFpbGFibGUuIFdpbGwgCnByb3ZpZGUg
bW9yZSBkZXRhaWxzIG9uY2UgdGhhdCBpcyBzb3J0ZWQuCgoKPiBLaW5kIHJlZ2FyZHMsCj4gCj4g
UGF1bAoKVGhhbmtzLApQYXZhbgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBv
c3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LXdpcmVkLWxhbgo=
