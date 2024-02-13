Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF54853196
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Feb 2024 14:18:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E2D40414BC;
	Tue, 13 Feb 2024 13:18:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i71eTj4YbhXC; Tue, 13 Feb 2024 13:18:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DEA1D41495
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707830302;
	bh=W9/jePyS1soF27uDDWciMkcqevnxeWkcAZP0kgI9Snc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BYjTQHI9vP6+oTo9X+0sFKLa/Abed0UxZXbb7g29aojpyjO1mLG5UYb/RGGSK0UVq
	 iXNcmb/K+PjyD/RPrTlB/28orIxM/J4u0Su5iKfChghNVkxIFQwUPuTnMHeOSyfRbH
	 FpoDbAIU7RRcWss3dsQH8a8a9I76XW3nwMQ2sUgHvykFBGdF1SVV347zEpPdo53Y56
	 kdDGqL2bgA07G1hd01e9Uz+MR4szcJUXDx52ExqdlcmUwlr/bLQTxP+UpWmwGmr0BT
	 ptQ6e00/UIIH2OLbgG3jzo9Ay5N+8C84PB0VhDhndXAcBn+HR2iOBSJpDmt3H53cfB
	 G8tZoUqZ84P+Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DEA1D41495;
	Tue, 13 Feb 2024 13:18:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4EEA21BF406
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 13:18:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3A4114136C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 13:18:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fgMjwDv7ceRu for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Feb 2024 13:18:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=134.134.136.20;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 482DA410E7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 482DA410E7
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 482DA410E7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 13:18:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="396269731"
X-IronPort-AV: E=Sophos;i="6.06,157,1705392000"; d="scan'208";a="396269731"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 05:18:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,157,1705392000"; 
   d="scan'208";a="2926056"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Feb 2024 05:18:05 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 13 Feb 2024 05:18:01 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 13 Feb 2024 05:18:01 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 13 Feb 2024 05:18:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lb0Viy46+g/s1+XHqn7tYrNi68001ALWxfj30zQH7ZcN8XWah+o4igdaRpnOLEUyWu40/hMTBYyKMJYdjw7whH2jXQ3722fdfd2ntTtJJt8ntgmJNViqT2MeQ88T2l7htK+wo6F3wyTHOImp1bS9t7RgTD7nmEhytTgTgBLJlwCOrWGrRDN+nQ0jH573tM0vX6PXpXd391nDIy3HxmZZTQH1h6pcJXd5HE3ag9cJnQLDK3XcX47if7KQxW0jxZYv3WKL2n0BGlUagq6M7Myuazx56NeCXVYTDYmtVb9k07RA4RFofWPKI1KF0TO2bkjebFPyrP8ZC1XCLyvQS7IrPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W9/jePyS1soF27uDDWciMkcqevnxeWkcAZP0kgI9Snc=;
 b=ZcrZLxB572kHBeJy6avusgwHmeE5Mx2KEvvu/v86rMnS+yD59u/iKEiuw2a/V3nxmVsIp4Rk7SC/5UBunHuliNNpBXeg0D+SDZKrxIMz9Rzt23aQYvgQM5KdeGIUvddfv0+JELUJkVLQyLadie95iokoFjRefsBhDfwG8MVSf7Bkz2pzioVzbZ3XhMm7qvtLzmFsqNawz+sO2htZJPKOxbTkioANq8B90pOuXBSw3rmokVdjiHlQDzKeDLkoTCS0y833qDzRf6okgUym4a9iZJ2HXC5K4sLl1BPIf3zge4uU4hAUDZ2l01yf2fruSKKy7r5Y8JwbQVBpEbd3RfzBFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.39; Tue, 13 Feb
 2024 13:17:58 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::c806:4ac2:939:3f6]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::c806:4ac2:939:3f6%6]) with mapi id 15.20.7270.036; Tue, 13 Feb 2024
 13:17:58 +0000
Message-ID: <2e3001f8-a079-4d44-863f-979baca3b38c@intel.com>
Date: Tue, 13 Feb 2024 14:16:47 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Alan Brady <alan.brady@intel.com>
References: <20240208004243.1762223-1-alan.brady@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <20240208004243.1762223-1-alan.brady@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA1P291CA0012.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:19::9) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|PH7PR11MB5981:EE_
X-MS-Office365-Filtering-Correlation-Id: d9a6a50d-ad28-441a-0efb-08dc2c963290
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WythwNEQitdBSkCaIzmapXpOZRAWXuLPt/Evn3acZWBjUjuNBEZqHt1KBD2RVpffMOF4jee2vYSoHKdC16Lv42dB+W2DHZIqbm0Rr64idqEqg6b3Avy1AE1Exc5OO5topsnyxkfk6gPuB+VrElAPRZJbcE2NZgO5P/3+amHrpmUaxpX+ZdQmoLfj2/4EVa/yYabL7fLyx4MqRk/EPS/+7iaNs4/rK55A1aQPawpIeQBg7kMIDvRO58CwBvbizJsHUXrjZFq1yMK5Zdia+smmzzh3CkVoB0sgIpaeYCUMjwGgKFp9AJayhQUXsyT7GDub+LwknbTTW/sHIGfYYxmhDEiNPOFCjPpMEeqw9sf6T2rPUCE4aip+UlBfe1dUhRrKlAAaufe72Gc2jRId1R7k7slztwy2tvdxQdC505yZ1oGpOlOFAQbf31TEB21RBB2nXq+lGxe1EFPd2jrnyr5NFZDZ7xJrdrDmwRlgMhFzWnHL34Lx8exH0f6iQ/zGC1itO23D0eiBmRXHfp5E+Cii39Zed1YyJ60vOnjKB3bv+rfl2ZknwM5T+80ZXvMcJJ7Q
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(136003)(39860400002)(346002)(376002)(230922051799003)(1800799012)(186009)(64100799003)(451199024)(31686004)(4326008)(8676002)(2906002)(8936002)(41300700001)(5660300002)(6862004)(82960400001)(86362001)(83380400001)(31696002)(36756003)(2616005)(66556008)(6636002)(66476007)(6666004)(66946007)(38100700002)(316002)(6506007)(54906003)(6486002)(37006003)(478600001)(107886003)(6512007)(26005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dldaeXl3QWo1a1JWWG9LYUZoRGVlZ3kxMFVRS2FIb1JXcVlYRGl6ZkRzMlhi?=
 =?utf-8?B?K01pZHBxamtHdkV1bW02QmtlQ1NwMjJLenF6WDZWYkduc0RvZVVSQktzVnI4?=
 =?utf-8?B?ZWp2em9FSm13RjliRXA4N05vMHo2RUF6SnA1dlF5aVdVZnUzb3YrZXl1VnF5?=
 =?utf-8?B?VWNaTGtjOUxVT0dFems4N3crMldjTUd0VVBSajY1TzFVZ0Mza2dsdG5makNk?=
 =?utf-8?B?N1BkaVhhZWxJc3BSb2diQy9yUUMvTFYvdUs5OTYwS2Vlcm51WCt2WThuR0JC?=
 =?utf-8?B?WDZZaW1ENGYyalpVV0VNeisyZ1Jic3VkQ1cvRUM1dFBYVlg3a0h2elNkTG9K?=
 =?utf-8?B?bVJGNEkzK1VmakRxVXI3V0pvZTBzSHMwRVVWay9jS1ROUXRsV1VlNUVKSFBR?=
 =?utf-8?B?TUU2THkxZzc4SnpYb1hJTWRhYnNJODUvUElhL1Vsb1BudlM2NTdOQ0wwcDhq?=
 =?utf-8?B?QWVKa3V4a3llMUpwL0ZhQVJ5NlJScWVnNmNYNmhjdzZNZ1JyRVhCZDFjSldK?=
 =?utf-8?B?ZXExamRYeGJxZldrQWRtdzk3MWx4WlNoZHN0bXlSTG5jYzNuVGZGNVEzSEd4?=
 =?utf-8?B?ME5Uek1wdUFzWVhEcE53ZXZCeVdmSFo1dzVoQitMaG4ybzFIbmo0T0VIMEtX?=
 =?utf-8?B?YXlJZDd0KzQ1Tm5JYkM4a0FCL1dxSkJES0REMExyK3ZHRXhLSTAvSmc4T09M?=
 =?utf-8?B?anZUdk80ZlRNaFdDMitDSmVnMEZFVlB0Z1hmN2J6OUg4a3lFbmxyR1RQMzB6?=
 =?utf-8?B?MXpIWENMa3RGdlNMRTVGUWFkQjFxc084MWFGTkVkQWd2VUdmbitVbVY1V1FR?=
 =?utf-8?B?TkMwSXFFSWF0OVFJdlYzTFRhYmVsMFNSb0k5eUhCWit5SWhCUnpsbXBzZEpT?=
 =?utf-8?B?MW9XemE2K2E4S1pPUWJPOHVnN2NuYzhPVCtEcWQxdHVCeE9QdEswOXFuZjBh?=
 =?utf-8?B?Yjc2MVMrZHYxN3RTb3hOdkVqWTV6eHIwMUp1c3o5Z0NUcXNLYnBpcGtEdk1k?=
 =?utf-8?B?aE83Tnc3WEhOdG9yWmpTQ0U3TGpaSWM3cG1rZkpWd3dQYnVtVjhLTm5JY0ow?=
 =?utf-8?B?Y2Y0ODZZUlZlaVZ1R3Q0aWp4NlpnbFRqc0cxR2RFLzMzcTB5V2lobnJkbmw2?=
 =?utf-8?B?N3RGNVNha2JlYS9wTGQxTUw0Q1llZ0VCVnBDTlMzb2NWYlZVeVh2QjgyOVc3?=
 =?utf-8?B?ci9NZlNoTVlFS2tQWllDY1haeTd0WWFxMEtwQ3U0Yi9VMkpjWWxXUlRPc1VH?=
 =?utf-8?B?RXljc2NMNkRzUXExSTdBbEo5MHdTMmFEazlWNWo2QTczMldULzczTFhoSDlI?=
 =?utf-8?B?cWNPbVhONnhVTlc3VUQ1aC9zMFl5TXh2c1FMT2dSZ3RCREJEL2M5blpzWjA1?=
 =?utf-8?B?Vzd1cTh6VS9jUzYvR2c0bzRPbVY4ZTlWWU5BQ0NUL2RKc1M4dHlEQmhOdWRK?=
 =?utf-8?B?NHhJTXN3SWwzMzNOUGU4bHpiaWVVYVU4WE9XMmFFeVFXVVVXQy9jbkE4NnAr?=
 =?utf-8?B?YVFDMUIrbGEzQ01tWUJ0eXA3WnVKWTNYZGlJQ0d2Zkg3L2NjVmFSUFJUK1By?=
 =?utf-8?B?MEpSY0wvc1NyMlBjZ0NROVp5MEJDTE1qWTNrS3NQeXB2eHhWcTJmbnB1bi9w?=
 =?utf-8?B?YzNwNmYvYlhFSlFZY1h4K01mVVdzclQ5NDVtYzFsUHdvdDNCeFNoMmJKMlZj?=
 =?utf-8?B?d1dJdy9taGlad0RpQnlOWThvREJHUUVGQldYZmVZVGpzWVplbTZpaStrbExa?=
 =?utf-8?B?NmQ1TjF4NGpXT1UvVXQ2RjVGNVZlN2llVHgyTmQ4T3NzQUFnSDF1VDVMaldP?=
 =?utf-8?B?WjhZSFdnck9tUkdwNWlLNG5HTDlLcFVQemhNeWRTandqWUFCc00rWjgyMFM5?=
 =?utf-8?B?cC9CZ0FPSS92VVBtMW4vbmlPTlM2WHpqd002TTJud2VOL0loOUZSeUt4L3g0?=
 =?utf-8?B?T2wwZHNCMStzTlVlR3N5czVWZzFZc040clc2QXI5SkczQ0VYVFZ0Q3pKZlhj?=
 =?utf-8?B?R3Z4VXJwM2ZnOW5pMTgxU2ZZZHJwTjN4WitWcmt4UmZQc2tZa2lxSkZ5ZjRu?=
 =?utf-8?B?NUNTWVNEU1h1RGhkZVlWQ1V4ZkMvUFFPWUR0MjNGZHNLb25XVVVXQkhORmlP?=
 =?utf-8?B?THZFQnNsK1JUQ2J1UlRlKzRzUWVSTDk0TytFWTVjN3VxN1FQSWhTSTZ5cU95?=
 =?utf-8?B?Vnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d9a6a50d-ad28-441a-0efb-08dc2c963290
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Feb 2024 13:17:58.7207 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HRd9d0Ckidy00YVGS8FKeClHsI0JaOJ/XUsx82AcVTMvdpuf1F9ChQktvrIGB2E6BRE8HXev+7vvBcRQ9MlT7sHRtaTim76yQflw9TcTmYg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5981
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707830298; x=1739366298;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yWOixlbkwSjfz5X93rAoIY91CVuUil4ppqcg3qf2Js0=;
 b=LMv+rJAl/mpX8hjpKz5snRXZVk4tlXz+9GfCjKEu76fclvwzRhseIBhi
 eyzLlhoZftu+cXDF+6zTfVudSWBMX4x+LjmxfiqbO28e6JK9B3qcauo6K
 F4N9MNmCZKZWBsKmwMD0a3Or0j3gFMS53MM+EWttkDixTSbFzs2zX9+dA
 4UlUCZAQ+RVuoYLBUdncLhgF42QxcF6Hdhc2kHPwT4ku7BES9imh8V+Mu
 kTC4RfPvhEuVNKyeYRENrO/tEEkGW39g0TVUwQZIlRgykgjUeEXtgzWHk
 VSaX2qGQtYRPfk5NOSo954o/iIz+9n9Jy+goQAOcwNNrB1Fkq1KdZmvAD
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LMv+rJAl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 1/1 iwl-net] idpf: disable local BH
 when scheduling napi for marker packets
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
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, Emil Tantilov <emil.s.tantilov@intel.com>,
 netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alan Brady <alan.brady@intel.com>
Date: Wed,  7 Feb 2024 16:42:43 -0800

> From: Emil Tantilov <emil.s.tantilov@intel.com>
> 
> Fix softirq's not being handled during napi_schedule() call when
> receiving marker packets for queue disable by disabling local bottom
> half.

BTW, how exactly does this help?

__napi_schedule() already disables interrupts (local_irq_save()).
napi_schedule_prep() only has READ_ONCE() and other atomic read/write
helpers.

It's always been safe to call napi_schedule() with enabled BH, so I
don't really understand how this works.

> 
> The issue can be seen on ifdown:
> NOHZ tick-stop error: Non-RCU local softirq work is pending, handler #08!!!
> 
> Using ftrace to catch the failing scenario:
> ifconfig   [003] d.... 22739.830624: softirq_raise: vec=3 [action=NET_RX]
> <idle>-0   [003] ..s.. 22739.831357: softirq_entry: vec=3 [action=NET_RX]
> 
> No interrupt and CPU is idle.
> 
> After the patch, with BH locks:
> ifconfig   [003] d.... 22993.928336: softirq_raise: vec=3 [action=NET_RX]
> ifconfig   [003] ..s1. 22993.928337: softirq_entry: vec=3 [action=NET_RX]
> 
> Fixes: c2d548cad150 ("idpf: add TX splitq napi poll support")
> Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
> Signed-off-by: Alan Brady <alan.brady@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> index d0cdd63b3d5b..390977a76de2 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> @@ -2087,8 +2087,10 @@ int idpf_send_disable_queues_msg(struct idpf_vport *vport)
>  		set_bit(__IDPF_Q_POLL_MODE, vport->txqs[i]->flags);
>  
>  	/* schedule the napi to receive all the marker packets */
> +	local_bh_disable();
>  	for (i = 0; i < vport->num_q_vectors; i++)
>  		napi_schedule(&vport->q_vectors[i].napi);
> +	local_bh_enable();
>  
>  	return idpf_wait_for_marker_event(vport);
>  }

Thanks,
Olek
