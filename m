Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EC2A52551D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 May 2022 20:48:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C42278133E;
	Thu, 12 May 2022 18:48:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PXrcIdUrykEB; Thu, 12 May 2022 18:48:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B8BC88133A;
	Thu, 12 May 2022 18:48:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8EA211BF578
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 May 2022 18:48:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7B3D160669
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 May 2022 18:48:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xDhD55xwgt6G for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 May 2022 18:48:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 385E9605A9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 May 2022 18:48:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652381295; x=1683917295;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hg+MaUeFopVOr37uYSJSiYmfEvnQShrQCbPUoeGgO3Q=;
 b=naBR6p3z+A3/HgacyhMpYLRJjLhR6upNOsbeItfQ3jE+uXaDp/4oKKm4
 mKWvcRkC0BDs1gwHdSF/+eqPW+jm3JhXU35N/R7fw9ecWRi3AYei00ya8
 v5OgyiO0rUkhxEld9tFSCzIL7c9UehFJSuQtB0nuIs7fzdhmHbHXcp/p0
 1KuafiSpa+1yr9sKnk4Zc79Eq90qlfua3xP2006dSUrMxNRCZUnAS8xGX
 Ze1urMe9g7iF3p1MjuMWVOBS8NO6nPIcLFNMrnIn7f00GlY1kCPhNzNRF
 2KfDjLChBh44GFqnzDR5QHrphREB32dYzslIyyXq/L3rsLNMF3gVEq4t4 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10345"; a="250636289"
X-IronPort-AV: E=Sophos;i="5.91,220,1647327600"; d="scan'208";a="250636289"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2022 11:47:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,220,1647327600"; d="scan'208";a="624531156"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 12 May 2022 11:47:58 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 12 May 2022 11:47:58 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 12 May 2022 11:47:57 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 12 May 2022 11:47:57 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.44) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 12 May 2022 11:47:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZvuOUf8QRCtVoTjx8Ct84c/m32sYktUjYlUXS71vBlndCpnfxlwtyDc15LTuh0lwJK12NqdZoQIU5M/5FRpUujGDadyV2n+6WN5/HDQGon8DvybCKtY4Df4jkVtdBQ2hMVDlEQIbYsJU2T7b8AKJYC4k88QWY3Bx+IzBY2YruFpTnt75wxBXs3uArGSeaisj2APG0CX448TmM+IcM4nTz0A2Z+OZXBhA9399OJnAoHp+OthB/KS90uWYzbWYM/dyuu87B3WFfMmbH1ZVGsmrsSFdDxdKXRX0ud0a3hHVHwAdYbnCHVrunGq8EMMb3u/I7rJhXvYsQDa0iB5fw2iqDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y32H6GbTrj9eSXhqrPmXZhHCn+ExRMOXVpF7SfdPUls=;
 b=A07OLBZ0IJ59lfnlLfi/mlwnboeEhP8R52QoDuYYZNhCiXMiyOO1Z0+5J//gZwjR3Q8mLNuosO6JumS8YwkJtPX7WtAF9sc2zKuRwxZDGz+XS97XXi8mFQ3TVCFeeMn73lF9xa8i+YZxlriPsdUhzlQV+TY6DD/fvsD7qqOhOLODNTQiJxcwryo1ghU7KCBM9lFgo6rfyjy8X0zQ3jAHAP71QO7RvJ+dI27z1m/EgRwD5NXc0Px5rMPTDxhYiqiWwepky8SHLl6i7BTB1baVxTuNFPaCWGuy1+b4AH8XOG9cRBDNkikPzAFKeAJ7P+e4+oHcVwZSYkbF8Dl3XTStiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB3224.namprd11.prod.outlook.com (2603:10b6:a03:77::24)
 by SA2PR11MB4874.namprd11.prod.outlook.com (2603:10b6:806:f9::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5250.13; Thu, 12 May
 2022 18:47:56 +0000
Received: from BYAPR11MB3224.namprd11.prod.outlook.com
 ([fe80::99e4:a24a:d119:5660]) by BYAPR11MB3224.namprd11.prod.outlook.com
 ([fe80::99e4:a24a:d119:5660%7]) with mapi id 15.20.5227.023; Thu, 12 May 2022
 18:47:56 +0000
Message-ID: <5581f364-a0bb-7bfb-afb8-6a8986234eec@intel.com>
Date: Thu, 12 May 2022 11:47:53 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: David Laight <David.Laight@ACULAB.COM>, 'xiaolinkui'
 <xiaolinkui@gmail.com>, "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "jesse.brandeburg@intel.com" <jesse.brandeburg@intel.com>
References: <20220511092004.30173-1-xiaolinkui@kylinos.cn>
 <3a5a6467b24a46ce8e05fb8a422baa51@AcuMS.aculab.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <3a5a6467b24a46ce8e05fb8a422baa51@AcuMS.aculab.com>
X-ClientProxiedBy: BYAPR08CA0032.namprd08.prod.outlook.com
 (2603:10b6:a03:100::45) To BYAPR11MB3224.namprd11.prod.outlook.com
 (2603:10b6:a03:77::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d520dcfd-e54b-4ab0-5a9a-08da3447edaf
X-MS-TrafficTypeDiagnostic: SA2PR11MB4874:EE_
X-Microsoft-Antispam-PRVS: <SA2PR11MB487485D8E8186FBC4E89DD5DC6CB9@SA2PR11MB4874.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QDW4BMRzU638K4r+dJbbRG1OMxJojzkTrqyT4Aw3KLRSdEQs0mM2aajCpsA81ZqMA4UwgCJtjzGs9gahEq01qIOwnNGS3v8rokevfqdfqftv+OSwD00qJM+n+nzUXXhGxb0y4Q9mOlG5xybXg3AmbzglmwSQQ5nNoIs6SGs0cyUmrBmZzvdpxH/2vPrCavmPAcHbplebfRQHOZgSpQDJQcmzhc8y6aCQiIYpKrrD4tb99vOId8KUNwxbzqizRH9iZPdzjkuBdjwPCSXyEhlFGYa0MYCgkAzUUrSaZUoqhjac+h84SDudwNn7SngLK6qO7uAU2oOR0Mx8EJhGS3jVD7Njfv2PN2dNdn4z71etRVlHeAvPZpW28+6rZeRjNWk6AXH+K3Ke25s77Gb/BWNvRMncPp57QQIVeeiA06mMWAkNGJ5oClYpr0jkE1xAehFKjezfvDbpRtbRPS1fuFgyeUrwp3hskPT+794tZNgNypl5de8fidZKiJZZ+EF8OVchk3AoH2FbekBRSpk+4NC+kgRJE/5NTr555TYcWKNyooYN8pGTtghVOHC/SMl8dFyo1WjikKqh4KxRff9fKJ2T/UsV1nYi5GoDswA7R8uymI3DgEWwc9bWj5pVXJ1XEfx/C0hH7lVQ312x8VpxrGlvHGIhKvq2fWWmVMA5f+etIWJl50zS3GzkoxTO2kQutIoQrQ9Ouji29krdtaM+GxvFFqrRDEPvi3jc0dOxr552tLMKpvoIMKulUe6OldwVejo+
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3224.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(7416002)(31696002)(82960400001)(186003)(83380400001)(508600001)(6666004)(2906002)(8936002)(38100700002)(6486002)(26005)(6512007)(316002)(110136005)(2616005)(6636002)(54906003)(53546011)(66946007)(66476007)(66556008)(6506007)(86362001)(8676002)(36756003)(31686004)(4326008)(5660300002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VWd0WXlWWDBEcGh2aHZndXVvbTNTaWdvYm9FMmcwYlB0OTRZN3lmV0htVllm?=
 =?utf-8?B?VzRjT3Z4cXVnaVhIWTNQdWc3Uk03RTVUUHREd3ZhSGc1Q0FyNVhaSFh5VVhp?=
 =?utf-8?B?VlRwSWc4Vlc3bUhQNTBsdE4vc0VxcGdPMWVHWHhlaHd2ZzVtSnBrMENxUUtY?=
 =?utf-8?B?TUE3engyejhwTXBnYXR4ZzZ1aWRsc0JBTk5WOUplODIraFAwcHFlejkva2Vt?=
 =?utf-8?B?UG1kZVdpeWtwZFJoeW1tOTJOaVpQQTgvMHRiMy8yT1pFc3JXVHMwQXVOTnEw?=
 =?utf-8?B?bnpXREFaSU1LSVFDK2cwd2hKY2ZmdzRDSnNiVElUTnNhc2tvTlk5cWRzZHYr?=
 =?utf-8?B?aFBNZjFpTGYzV0tZKzdkcktOcGpmdkRXaEIya2JjSFc4NnFTV1A2OThvSkV4?=
 =?utf-8?B?QXZJVnZJSEVpOEU5N0JwbU5UWldsZjRTbkh6cXV5ZmYwZ0YzV1BXVHVyR2xI?=
 =?utf-8?B?eldURVFyOXllTzRSZjlrWWRtV1hid3JER0g4WE12Wjg1aWMyVUUyVXQ2REJq?=
 =?utf-8?B?bG4zSGtjaFh2R1BhU0tXK2VrNWk5NjJpYnBxYUcvaFFOL3BkZjVVelFEMUt5?=
 =?utf-8?B?QXN3dmI5d2tLbUt4eXRidzRvRUphVlFQSXh2VlBMVmxOY1pIQ29FUUplcURL?=
 =?utf-8?B?dW50WjZxRk4yZDN2bVJhYUZQZjIxVE1nV1FwMGlzdVNjbjF1MnpHYWxsVjFE?=
 =?utf-8?B?U01vbjMxMi9WVHVJd0pvZzA0Vk1GK0MzaFlCcks5Y1hNSm9Ud1lYNENnLzdZ?=
 =?utf-8?B?WEs0ZmkzLzZ2T1VJUzZVSVp4RmZHM3FncCtTRE9CUm9seEhnaFYreG9LdDQ5?=
 =?utf-8?B?QTgwSU9kTHkvZzdJbUNrUVhFemZ4VjNDdksvc0FQamFwRHZlN3h2YjZoNDFl?=
 =?utf-8?B?SlBodzVmZkoxemJYejNDaVZuTXlOQnVuLzhuRjN3Ukl5RE5KNVJRMFRJYU9B?=
 =?utf-8?B?ZitRNUlrb1gxekZYSTkxNlkydS9FaE0vSG5uRERYaFh2dSt3aDBxaEIxaWJF?=
 =?utf-8?B?akwzUEhUUDlzZVo0Ui8zK1R2ZHFaWWJTcUNXVjdHV2YxL01LRy9LTHFJTHBT?=
 =?utf-8?B?NHBmdzFkNklvdXgyaXJwSldKTERYNU1RYU1WWk8rUlBXVnVJZitnZHJnN1d2?=
 =?utf-8?B?eWd4YndnUnpmQlZyL0VXaVJ6eUU0am1rU3c4aGdJNGp0MXo5blJxaFNyZFBs?=
 =?utf-8?B?TU52d1BER3dsRjZ4ODdRWlpGdmV4elhUdkU2c21UeGZtZU5sWEJ2czNHdGpa?=
 =?utf-8?B?Z3VEandlZVpRMUpybnZxUnh2UjA4TisyNkxIS1pCaGFTUHQxSkpZQWlUaDR1?=
 =?utf-8?B?WFU5NW1tS1pOQzFxVk94MkZOWGF6K0Fady85M0hMZlowUVc5V0ZMa29NM0x1?=
 =?utf-8?B?ajJjRUlleGl4bnhFS0t0MEJaQUJLb0U3d0RvaElrSHowZlZQcmltRWlaaGNo?=
 =?utf-8?B?R0RNcm1lMHF2Smw3ZXR4SGxPOERWY3lyNmVBclBuUHQ0SUUxSWprcFcrZGRx?=
 =?utf-8?B?MGJTWWdCUTA3MFBMc05ldm1lbjM5RW5xS3VxZXh1YmxBK0J3TC8yeVoxU20y?=
 =?utf-8?B?QVl5Vi9CSml5MUhCeGRqVmY5TzBIbjBuaVI5dVpITHFoaUdZZEp6WXJSS1hv?=
 =?utf-8?B?b2hZRmRWUEZaTTVOWG1BT3NYc3d6WHI3NTlBSnpWSnlERVhaMjhtU3NFRVda?=
 =?utf-8?B?bzNiUlFDNW8xd3RoaHpvWTl1Z0huNlV5bW9ZRmFZM2NCbmxwTnh2SnQreG9z?=
 =?utf-8?B?WmpYZFNDalczVUpiWVRPV3NrcHBrN05XdGhaOGZFRkVZY1NKM1o1TTVNUGd5?=
 =?utf-8?B?M04vT1ZldG81djhPczhSWFNGOVYycUdMcS9lci9TWWhUQnhpYTNKQk5YVTJ3?=
 =?utf-8?B?Z0hkZHV5VTVQZEd6QWJLNkV3ME52Wkhka0VQc0ZpRFpCUUhlS1dhbUs3S0Mz?=
 =?utf-8?B?SFRBY3dlWmlrY3NERXZJc1FPaXNnSHlHREV6NHlOZklPMFNtb24vZWE0VkQ4?=
 =?utf-8?B?L0kydkVZbk5obFhuTWxLTkxHV29vS1EzTUx3emlJUGdET3hjUm9OVVRwUmRZ?=
 =?utf-8?B?Z3FNUEFpSVFwTmN2UnFPVnFsZjB4UW8vVkViNkgyNHVCcW9iRUlBUGE3OHlP?=
 =?utf-8?B?U1ZCNmNYREFPbXVLNWdqWXZKUGFQbHRCZTBYVi9XcHFaKzVZeHJJNi9pekpG?=
 =?utf-8?B?K3llTVUwTmtyQXphT21HRkpxWmUyZjZNRm05TlcwMjRNWHp6RFhVUmphNGlr?=
 =?utf-8?B?b2xTclBqSDZ2Q1hhY0k4MTQ4aUQ0cGl3Qzl2elNsblRJMkVKVjJtN3VMOHZL?=
 =?utf-8?B?UitkSWt1NTdaaVl5NVlwdi8vVWNHQjVkYnNUNzYwUmRqckVNblZmSU9uWjM3?=
 =?utf-8?Q?r/hH441m+Qia++Yw=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d520dcfd-e54b-4ab0-5a9a-08da3447edaf
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3224.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2022 18:47:56.3235 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CU029iT2DKM5fjtD+VTGv8/z0LIynmOjWBT5UKk9bMRIKkuJvGQuptKUn3RbxvIcPKA7tyXwHkWzr93XskmSiK8EwvA5128p7oGX/KeWpJQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4874
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] igb: Convert a series of if
 statements to switch case
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
 Linkui Xiao <xiaolinkui@kylinos.cn>,
 "edumazet@google.com" <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/12/2022 6:14 AM, David Laight wrote:
>> From: Linkui Xiao <xiaolinkui@kylinos.cn>
>>
>> Convert a series of if statements that handle different events to a switch
>> case statement to simplify the code.
>>
>> V2: fix patch description and email format.
>>
>> Signed-off-by: Linkui Xiao <xiaolinkui@kylinos.cn>
>> ---
>>   drivers/net/ethernet/intel/igb/igb_main.c | 12 ++++++++----
>>   1 file changed, 8 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
>> index 34b33b21e0dc..4ce0718eeff6 100644
>> --- a/drivers/net/ethernet/intel/igb/igb_main.c
>> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
>> @@ -4588,13 +4588,17 @@ static inline void igb_set_vf_vlan_strip(struct igb_adapter *adapter,
>>        struct e1000_hw *hw = &adapter->hw;
>>        u32 val, reg;
>>
>> -     if (hw->mac.type < e1000_82576)
>> +     switch (hw->mac.type) {
>> +     case e1000_undefined:
>> +     case e1000_82575:
>>                return;
>> -
>> -     if (hw->mac.type == e1000_i350)
>> +     case e1000_i350:
>>                reg = E1000_DVMOLR(vfn);
>> -     else
>> +             break;
>> +     default:
>>                reg = E1000_VMOLR(vfn);
>> +             break;
>> +     }
>>
>>        val = rd32(reg);
>>        if (enable)
>> --
>> 2.17.1
> 
> Are you sure that generates reasonable code?
> The compiler could generate something completely different
> for the two versions.
> 
> It isn't even obvious they are equivalent.

It seems like these just happen to line up this way and appear to be two 
different checks; one as the bail out for unsupported MACs and the other 
for register reads for supported ones. Combining them seems to muddy 
that distinction.

Thanks,
Tony

> 
> 	David
> 
> -
> Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
> Registration No: 1397386 (Wales)
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
