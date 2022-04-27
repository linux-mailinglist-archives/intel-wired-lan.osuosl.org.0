Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AB1F3510D1E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Apr 2022 02:24:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2BBD06115B;
	Wed, 27 Apr 2022 00:24:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id toKV9MXuLqgB; Wed, 27 Apr 2022 00:24:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 235076115A;
	Wed, 27 Apr 2022 00:24:11 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 301E21BF57B
 for <intel-wired-lan@osuosl.org>; Wed, 27 Apr 2022 00:24:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2C36780ACF
 for <intel-wired-lan@osuosl.org>; Wed, 27 Apr 2022 00:24:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jFR9wY6f_JE6 for <intel-wired-lan@osuosl.org>;
 Wed, 27 Apr 2022 00:24:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 37497801D5
 for <intel-wired-lan@osuosl.org>; Wed, 27 Apr 2022 00:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651019046; x=1682555046;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=2gkmk4YzUxG0TEI3ZD5Rw5iO03C0TYDZxzXgZ/ggb9g=;
 b=VU7UwPtTvi4lhFoYQNBoDsVoDjPWLbvdbStbYerhKkkdgKN21zaTAq5a
 kJCl8+qRL0yTnd0DF2+vtL63O8rzxogrGDYvBR2/I5yMBSlhtK5Yyu3wL
 B9dlWHn2sFv5CVYhkW9L2J83l3EhgRTdltkq2imooGMTMGeW8Pq1Fmn1L
 N06Bzinl7wGg6UbCqOBCRDObanXYZTCLoohy+YkkDi4s+DOkTwvh299+3
 jQmVCx8gy6slSHijQ0Xylf1/RGwYoDZZW7H2zZeuZ5UfP6C6VOSU7QR3a
 rrjtheFbSlums1a+yH59PgbCMVIpOhRg06nIDT0jpGD4OmUJJlSdFIsqY g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10329"; a="265289270"
X-IronPort-AV: E=Sophos;i="5.90,292,1643702400"; d="scan'208";a="265289270"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 17:24:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,292,1643702400"; d="scan'208";a="807764967"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP; 26 Apr 2022 17:24:05 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 26 Apr 2022 17:24:04 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 26 Apr 2022 17:24:04 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 26 Apr 2022 17:24:04 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 26 Apr 2022 17:24:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NxHFJ5rjCo3R8/jzm9deY0jr35MPG1kx3Pdx7K2qrXAcYlJjOlNvVKWk6Emc8uHtF4LKYXcpk/0N65L7AKLLRhu5mfpw2dCfWX81b3edKNckW1LU84HW4yVmynh9p5iJLbLq/Z5Gu15Ymk5Zz6Ix1fpSTgwyLtl1d+gCMxc0L7QqCAQfdxowvhiJuKeSYoOYc6PDS87cr7flvci+cEKt7hk2Rm12xxJFX5U9quygsR/Qhv3vvr14IVU/sQX9lIPfleTevIk3N4NeVXyXYVpftth8GZ+uyhQcz3pJsIXofPzFlJ+gI6he9urVYE3gJ58bKgrI0zYmRWquvAJy/isIUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tbSAyxA3ZLf1S/ZI8CzVqVpHE+9UTggjgfqxHQdayXM=;
 b=PKXGWBP2uEARQN7vHOGoazHlwX77qiY4PAVpVlfLLsXUbgsUXbyw5GiiZ7FXsbrAtYg9htumQqO5W2lVEyb35KSYMUzSreYsK3BF2NDD2Msk65fWIKT11t+MfI7pC8ECxqwW8KGtaxLbNHopSZqoPvtBmTr2HVkmbEsvLP4R4H2X9bfZb0PHesn/FyUdA8TLs2fhKycjQT2I6afyMH2V4wGzW/CNQyn5ofVMeO96dX21156yjOHhQRChKi2+1Anf8jGl/rHSzie3KOn9gCgePtIiu1ic6IdnqYBMoVTaHyI/TSEjc8lCAIPc0+1oWN+FuFuDZd0VKJ8IvZYQCbfn8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by CO6PR11MB5604.namprd11.prod.outlook.com (2603:10b6:303:138::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5206.12; Wed, 27 Apr
 2022 00:24:03 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::317d:11f9:2381:a3a3%6]) with mapi id 15.20.5186.021; Wed, 27 Apr 2022
 00:24:03 +0000
Message-ID: <c149bf88-f63e-667d-6a00-cafd962018b4@intel.com>
Date: Tue, 26 Apr 2022 17:24:00 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
References: <20211222062201.36302-1-michal.swiatkowski@linux.intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20211222062201.36302-1-michal.swiatkowski@linux.intel.com>
X-ClientProxiedBy: SJ0PR03CA0238.namprd03.prod.outlook.com
 (2603:10b6:a03:39f::33) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 21ca52c9-805b-4636-a06d-08da27e43b6a
X-MS-TrafficTypeDiagnostic: CO6PR11MB5604:EE_
X-Microsoft-Antispam-PRVS: <CO6PR11MB56040AC3DD3C6137CB4BC660C6FA9@CO6PR11MB5604.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PlqH6xQESxljMAxOluYo8wvmQwy8WDKzmusb+dGgbQ/v5+fiqXgJxOrMeONokaoLZF5Jxi+YuuJRHivAOlIX4imraOtOzNFH5OwfhMIbOTaXxCaNMKH1g/Hkt8o8ka6Ol8i0eLNV08rK6Se+CmRGuPL1p5EtznRzThGFsOY4ZuvM0HRdHW2R3Mp2Dw8gRpNgEIrswDSfEz/DaGeugjV/3mCQBKb7kPEx9YAizIJ8lZyrYl2CencmuTq5JqwgDjkz54p6hKL30RODJx5zPWDDvIu4P2LgfZBXYWYrRPk2HEnuhcjk5v6tuBxkEUtdz0luB77toiBTiznvGb2xqs8L8dCA+HY+oX6g7IBclMkXj+6ViOAXT5WnfwbSMg6Y+3d2bj8UTpUewf3eMdyRQv7FwCNT8RKyEODx67XzuHqONuMw2P/K5pMUJzq5OUWYPD5XhkqVtfHBfjAjKiunaRUkmrJlDdkNwjiQmzAHJ2aUj7h9iMEQ4k3eqW7yrijguC/s7E5gVtHJlPcg0uUsO2bhoFJHSKwV9Emluymxx0wlLSCuZKthzPVLW+1g3Cin53jEZR5OFa3jsArQLr+ehUBNNuxWx3T71M212HbqAda2bBGdru14quuNSPEbzsPeKXjAUIvjvfo8tZxIuoXzv+Q+tyiSY/QOxY3zgY3z0nKkrLANf8bCue/EUHChAVXm0PJg4YNe9VQqZL43gxHZA9pqg7hwYSimKF3fayCTtSMKg5mcV5FLwQlZxspj5JjqvIUxuoEAIC9MYHI9iR+4OjWG69EnBQyve0M+mSGo4clPab78QRuzDgvme5EYKfsOkAAKFFjAoDvntWvkX95VVG2i/w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(110136005)(2906002)(31686004)(8676002)(86362001)(66476007)(316002)(4744005)(36756003)(966005)(6486002)(66556008)(8936002)(66946007)(5660300002)(508600001)(186003)(26005)(6506007)(2616005)(83380400001)(6512007)(38100700002)(82960400001)(31696002)(53546011)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eUkwOFNyaFhWZDZiZC8xYUtPQzNTb1lhTXVSVWRvUXJLRGRQc1ZjdG1NQTJF?=
 =?utf-8?B?RXI1eHBrZlFRT09UVktLUS9IM0Z6VWh1eEQ1WWFYWDkzYU1lMktQUWpwZlZy?=
 =?utf-8?B?V3Y4L2d0NndmcGhjeENPMFplRFZ4c1ByTmdlVFVGdEFRMU1QTStNc0k0aTNH?=
 =?utf-8?B?ZHpnaWFXamtIWkY5eTduTkc3VElucElYVUM4TnI4Nm1KMisvTFdxVEhWLzdQ?=
 =?utf-8?B?WldkdWRHTzN6N0tPbjVJNjB5Ni9sdlRNNFIwblc3Q09VcUxpR0toNUJUcDJw?=
 =?utf-8?B?MXhBKzdERHQ2TWFVY09IR1JhMDNBVUl2dXVaMFQyUGcvWnZrV09nTUZkQ1VT?=
 =?utf-8?B?dFErMzFybDJpK0twb2s4MGZGR2puY1BQdnVhVVppNTVnNjhiNVZSazQ1Y2Q1?=
 =?utf-8?B?L0VpZ0RUclRHZ2pVNXpjaFVGMnA4b0FUQ1NQL0IyUmNvVXJXWWtGeWNZUVJ0?=
 =?utf-8?B?Mko4ZGlNYWczaEJOQU1NYmJuN3c0a3F0UWs4dlpTSWMxQzJKMXFwQWNDbEZX?=
 =?utf-8?B?bWZyL0hvSnFKOVZtdDJhdVZZeXJjdDA1VXN5azhHT3Jsa2JHR0VPMGMyMjRB?=
 =?utf-8?B?NWphZDRBNHpEMHpIM0pjSlppbG1GTEtURGU2MzNKNDFzZSs0a01neTNGZFJp?=
 =?utf-8?B?NDFWVjVTYm9sVkFic1lFMndqQnUrbWhjc1UrTzBCRzZDSHhqUG5qVUU4SlF6?=
 =?utf-8?B?MkUvb3FrTlR0LzJkZnlFeUt5dHNBcWJPMjBHU0lORDZEWjBvOTRValA1K1pj?=
 =?utf-8?B?T2c0VDBwaXRSdGxuSnBMdVZLTE1meE9iTXVRMHhveEFSWVduNlczOFZvenBo?=
 =?utf-8?B?clp0NFlCbEFSL0ltSTZYRmJvWUt0Y0FOTEtQMkNpcVRkb3NOV0dGUE1kQXVY?=
 =?utf-8?B?cEJWZ3NONVllVVV3WXp2ZVpmbHpUekFKRU1iVVZYem51ZWV6OEluVk9LRTFN?=
 =?utf-8?B?QnNjUU9nelZLa09HcG5UZFppcTJhM1VDT1VQOHJhSVQ4R2pxczZRTTlwSmcv?=
 =?utf-8?B?L0lLWno1bTZlMVBVTytIV1BqTlBDSFA3ZUJlQStROEtzelRjeUJDV2dPRUZQ?=
 =?utf-8?B?SGVzKy9LOWxNSmx6Vm54TlpZWkpvTVcwcjVraitpRzk1U3QxR29IWkF1VzZ0?=
 =?utf-8?B?TzhJU0RFTFdveFpZajAvQXI2QS92d01FL0dKY2dJWWsrYkpRNmMwUlovcTBC?=
 =?utf-8?B?QURRYlV4eXU0NUdWc0ZCekxmV2k2ZU1weS9PcWJabnpqK2FSOG10Tjdyc1Yv?=
 =?utf-8?B?azZIb24yb2twVWZraXZpSnFXODVXSzdJbk0wdnBWTkh2VHY1eHYzODNQak5T?=
 =?utf-8?B?NkwyckhYQkErYXFLOUVsUXlzc0c2SmVpcEtTS1U3WUx3aFdzK0djbit1Vks1?=
 =?utf-8?B?Z1dWRXlkZmpMK2ZMczdvUHVTVE4xc0NBdWlyUXkzNFJlcjl2UnAxV2hzT2t6?=
 =?utf-8?B?TG9YNEJyeHlKS0NwaCtDT3laZytzOER1UnBpMzdMMitMR1l0L0FMMXg1WGZx?=
 =?utf-8?B?YSswUnIyN01PakxUeWEwcE9GaFVpSHZNYUZHaFpPY05ncnY3T0MzWnk4djU5?=
 =?utf-8?B?a0U1SUtOKzBzSmpCZDJyaWZZSHRxV0pXY1FKSXZPbG1XVUxOM1JOK3IvbFlP?=
 =?utf-8?B?SWlqRGJDbnJpS1IxTVNEeFQ3dmZWZG1FMytYSEdHcnQ2Z2JPaHMxNUhyODNM?=
 =?utf-8?B?c3lDcWlTenkwZ1NCaVFYcjc4NEY5L01vbklqZTBEa0FNdzBEMmVHWHVRS1Nl?=
 =?utf-8?B?SXhHcjBiQjdBQ0FzdlRraTBiQlJtbFlobHYzdWc2NmkyaVNoNXNLeVV1Tjli?=
 =?utf-8?B?VmEwV2FWWENvbWhTWGpzRHRibHFKdjdscm1JWlJsTWRYazdQSDBVZmJSUk1i?=
 =?utf-8?B?K3NnRDJCTlJzNVpTT0tid09rVU5rendiaDZnZ2hVOFZRZHpQU2FJMnpDNnhp?=
 =?utf-8?B?TVhkY2VkWVcycTZ1K2ZXMnV1S3BLYXVuSklqQzBCWGxGZmpKRnhmQTJINisr?=
 =?utf-8?B?MjR1UGFMZThEaW5sYWorQXdRdis5dStPOGNPdHk1djlRYWtWNWVYRUdHdkVs?=
 =?utf-8?B?OXZ6SFUrQ0tEYm5FQUZ4a0tUbDBQbTBjWVh5aGEvanVibHhwNGJ4dW1HaUI3?=
 =?utf-8?B?ME5rOE9EWm1FdVFMd2ZzMmNXNFo5K2U0bUxUczhydzRhYkNYcStpUTdJeXFB?=
 =?utf-8?B?SFpQeThFMTdBOTV2akpYTmhOa2dSYlpZZUtKTkVUUU9IUDVqRXhtM1FnMFll?=
 =?utf-8?B?VndXU0hJN2NZM3VJUmZPdk9ELzlwclRJRW0wOThjRnQwTzFIeWlHMFZ2RnlV?=
 =?utf-8?B?cFVhWmoyazA2cHNYOWN2dXoxVXFnMUZGanZZZVBiYThMQWhJZm5PVUNja01X?=
 =?utf-8?Q?70tJaOsxqYjiFuOA=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 21ca52c9-805b-4636-a06d-08da27e43b6a
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Apr 2022 00:24:03.2029 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AJnUYMeZm4qcj5S3X3nG0NcwGHwKHuuqppQ7TphsQoK8inSmFvbFcZeBsHGIQfodKiVCedRl7rfRBFpmhci7kfm0jkGzmcvpMB8WbCaWTH8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5604
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/3] refactor irq allocation
 in ice
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


On 12/21/2021 10:21 PM, Michal Swiatkowski wrote:
> The ice driver uses the old PCI irq reseveration API. Change the ice
> driver to use the current API.
>
> Implement a fallback mechanism where, if the driver can't reserve the
> maximum number of interrupts, it will limit the number of queues or
> disable capabilities.

A very similar implementation was already rejected by netdev [1]. I 
believe there's kernel work being done for dynamic MSIX allocations 
which is the route we should look to take on this (when it's completed).

Thanks,

Tony

[1] 
https://lore.kernel.org/netdev/20210113234226.3638426-1-anthony.l.nguyen@intel.com/

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
