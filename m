Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 95252838D69
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jan 2024 12:28:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 22890812A3;
	Tue, 23 Jan 2024 11:28:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 22890812A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706009335;
	bh=Rxk1HoZ7DoczuX0gib6Vz4EnEu8pkcw6crS4aXKfXMA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tD/RjgrIRvuz2lYmqQ2CETuGLejIYrrHeiKxOozpSsQSMayGjELqAcOJH8HiFFcgO
	 3EKY9nH43LrubiHuVMM5ORSBBFyvm8G6LSn8qYpEtHONaEIHfs9a2CRdFLttMB5OLr
	 l6uWtMgcTnqrkROFUeuZgEmfS+JnQqgLJRnmhuo2qB5A4e5xCRvhlRyBgcN8ngp4OF
	 e9h3bTnTtlMypkcDYrz9G0tV7N7mmRoeP3EQSCG7Bu6eSa6vsXCzAmQD7Bb3TKL6Pq
	 3W5oGI/YkTyVWTiUEIYkfsqQI5h5pbQb/uC1wlANP7s2+mYbqH87tVPREBaUpBz+9J
	 CNqI2XC1wNNCQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jl1x75KwXSgE; Tue, 23 Jan 2024 11:28:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2E333813FE;
	Tue, 23 Jan 2024 11:28:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2E333813FE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8D6CE1BF3BC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 11:28:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 63A7D60B8C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 11:28:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 63A7D60B8C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D2hSj94KKlpv for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jan 2024 11:28:47 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B0891607F7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 11:28:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B0891607F7
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="8161007"
X-IronPort-AV: E=Sophos;i="6.05,214,1701158400"; 
   d="scan'208";a="8161007"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2024 03:28:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,214,1701158400"; 
   d="scan'208";a="1511068"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jan 2024 03:28:46 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 23 Jan 2024 03:28:45 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 23 Jan 2024 03:28:45 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 23 Jan 2024 03:28:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XtWNEnzRk+efxBZ0SZf9B+xpzUCyouN/T+PV4tT1z2Z2G1Mh9kV87Fi7vvyaJkVeVJ/QhAV5y/BNhiGo+Uwpn2Z/3EQSp3RUVE+F5Z2kgrxAq92WeH5Vz/zHZ54KOkz0uJ/VDWj8IeAtqofluJYuDFQbH464M9jX68ZcShp/jWbb+H4krK9n6P9PC2MZQroXXTyzncBDXTEMmhIjKwDmvPfjqX2dNArMto1fadJNYHD0d5gJwlUIMeTF8rAXscalD/Z1rdmbd9eINJjY78W0ocYZrW2dpF98LW1ILePHfYbetqBOpjQlk7soearGWd/ep7FAJ/7/cV+LPjpyEyjDJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Rxk1HoZ7DoczuX0gib6Vz4EnEu8pkcw6crS4aXKfXMA=;
 b=MXekmq9LQv6VHp4AAClRZ96tb2mm+M6SP/Tah0Jemnu748HnEXLTzieJ3JdS4kbopABYMlxAXua9tfPZRucVi71hQUqmBxthkVA+00h/MTXJQ+0naK5aRVHeBfkMu9WcYPRCU6QYOhMMsTDjc1SOpZ0nHHU1P150VYNxMG3wxF+aabPcWg1RrDBjzyAKNc6ULtJWFuPfKwmKqVuv9UzwmkSUuob6fuH4EZpOkUmLuDM5zZiTDIWPBGLPRipNRNB62qNuNrizrwc7uAl39zeREQ2p8HPR6s7sZQQxDpZ/SncWbxTHgvZ31koCWH7WpGIzVJvjb9h6WdNi1Cq/2S5Irw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by PH0PR11MB4935.namprd11.prod.outlook.com (2603:10b6:510:35::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.37; Tue, 23 Jan
 2024 11:28:43 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::b1b8:dbaa:aa04:a6bf]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::b1b8:dbaa:aa04:a6bf%7]) with mapi id 15.20.7202.031; Tue, 23 Jan 2024
 11:28:43 +0000
Message-ID: <db3afbe5-b6ea-425a-bf20-9a624aa959a6@intel.com>
Date: Tue, 23 Jan 2024 12:28:32 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Wojciech Drewek <wojciech.drewek@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240123111849.9367-1-wojciech.drewek@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20240123111849.9367-1-wojciech.drewek@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR4P281CA0230.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:e9::20) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|PH0PR11MB4935:EE_
X-MS-Office365-Filtering-Correlation-Id: 531d6698-be96-4f3f-6215-08dc1c06748e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 81FEPH37ztzLvCEAkNVZWsiqeAa3OTYRQeNBvrWOlC+2Sq3i/7vh+NqFAqYRlmXFTirrbWLbR1KpeEB7h2G0L7PFYWE1GE5a3cyOe8c8ekPVgza//3dPs/7ur8BZZ3xBc1hDV19ERKYTTBX93tyT860IP7n8poEJusQGei6H+zzNKbG/NOjVNsKzdvOmy1FKAthj2vjnwAj/xCVBU6RYnm5/DAu3uKQRrqkTvJ3WlZ6VdbgMRlLYq1ImhwJkSWT8a4rImB4TAKk1bA712MSEw0gyZJGtdlW3Oq32HEGalaIlbV2uZcH07cf97k4BJSQtAil2Err7jaM2cnZWNSTwYUaBKoc6m2zcOw13ZUtH8oxI8VJV8JxujvY+i6r7vvBhqKbwPboRnRZmzUjPQvU9LcxWTmvU8IAzevbyAsudkTZzrc5hboqfPgfHNAJoYbW5BlJIMtYv6ivzWBrWHWWz+J77Off+AIIh+2sk8OIpn+2GJ6i+5tT/E5ZH0ZGuaTNrAi8Z2Svcw4U8AFSalkxKI3z0Iy1GZq/vbvUsALnQWCyS0C7MxWDt3vOKG0gDdUkrJtu+Q1z8PJs3Gdp5fAb+NhnfnJ//qGrLdqIK79U07Yce8bsAuPZKeXFqCqSl5+1bwYdWJ6JdEWFsa3pnSUc4QA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(39860400002)(346002)(396003)(136003)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(6512007)(6506007)(53546011)(83380400001)(2616005)(41300700001)(66476007)(8936002)(8676002)(36756003)(4326008)(316002)(2906002)(5660300002)(66556008)(31696002)(66946007)(86362001)(26005)(6666004)(6486002)(478600001)(31686004)(38100700002)(82960400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OUN3bUhsTEh4bTRPb0x5LzdmU1Y3VVFwMFFtVGRvTVlia3N1NjhUOEhYdWlV?=
 =?utf-8?B?eE05d2EwREU4dktyeDdyTlNSb29LYStKSnFKSmp2MlArMnBwSEt1ZkJxWlJp?=
 =?utf-8?B?NXIrQ1FFYXdRb1FRU0t2YnJIdlFISUhMVzE2MDZac0JCUm9OdnF1Tm5DVFI4?=
 =?utf-8?B?YzlVdytJc3hIOXBpMklTbkxrakk4SS9KWExQMUFHZVMxUWJ4blRFRHNZRS9Z?=
 =?utf-8?B?ZW9mNWwwc0dycVZadnZPUXFQOGNXb3hnb0JjSmdYSzYxdGZReXgvdy9FQW8v?=
 =?utf-8?B?K0Q0bldiOUtoMmlDMDlrNWdnOEhmZUJQcGVSL09penYraEhuUWsyalZlSnJU?=
 =?utf-8?B?dUlLR1BxdU80bEZGVmFEOUs0amwxK0lzRHpKUUJoUU5rY01oOVo1T1NPK1lL?=
 =?utf-8?B?VnJxQkV5dGxScUowbVgzc2tSNkdrSkZyTitWMlc5ZTVMKzdNdlAreWRXMGg5?=
 =?utf-8?B?UHhUcVdGMnBIQzk0eWgvZE5RRlVCNEYwajlVcktkRERpekhzcTEwQnJqcjJE?=
 =?utf-8?B?SEZIY1Q0bVdIZjJTTFdDSE94Q2ErTkhoK0lYZEl4UnZYTDZpaWo5cEkyRk42?=
 =?utf-8?B?OEVEWVQyWWtVK0VXVHd0M3JMSUpmbmFzSHpzRk9tTXgybnNLWE9zWGJxN3h6?=
 =?utf-8?B?Nkp5SGZjcE9DRGY4eTdORy8waEh0YmNzR2NWYzVOVW8ySHFxMTZkT0JsMXhw?=
 =?utf-8?B?K1JXWWExYnk0OGZxOUVqUk92NVNGbHkyNmwvQ21PTlJaUlBoMDJNckxxK2pN?=
 =?utf-8?B?WXp3elZ4UEo1MDRCR0w0aDhkc092Z3VEb2UwRmVzWkRmVVpwSUpDVjVyUjdZ?=
 =?utf-8?B?bU9sdk4wYlhsMVk3dkp0bDUySmg2S3BCOVlEVEZCWVU1ZzNEbWdRdzZXU0VJ?=
 =?utf-8?B?Z2FJMFdlc0tCMFBOZlRjaXZRM24xOUNmWUplLzJkMWJPZ2JSdmR1NzlVL2NZ?=
 =?utf-8?B?VnZsVnB5L1dmN0paOCtiTE1ScCtzL0tuRnFjM0xhR2lhNVUrWDlxQ3loK1M2?=
 =?utf-8?B?QW1YUWRJT1B2UFg3cXcxQXR4TkJFLzdSNStBUSs4TkVxWWtVTWpKYUROTGR3?=
 =?utf-8?B?K2p0THBSdmY2OFhJbzVTOGh2czJyakhyUVVia3JPYmxENFk5NnJnTGpLREJD?=
 =?utf-8?B?cStONURyN1FFam1PZVpFeFB1WFcvNzA0QnB0MnVBaHd6ZkM3WFNieDc5SlRV?=
 =?utf-8?B?K0ZiMzU3MVJUNm5kSG81eFZsUkE1TnZya1RZRGcvZEpvdTZhYUdmc0VRN3pr?=
 =?utf-8?B?Q1pQNmlhM0hraDQxYzNsZHpOTnAyOGdML1M1eWYwcm9pM0ptWmlrMmN4Z2Y4?=
 =?utf-8?B?MytrL2ZZRDJYUElZUUhDa0MvWUpaSUpoL3dIaEQxZ2c3WXI2R2FkWmkvZVEw?=
 =?utf-8?B?d0p2STdKZWlWeC91bFVEODZsb3Q1NndzbnNLUTBZY3F2ZWZ3ODVpUHM0d2Nh?=
 =?utf-8?B?WFZvcmFPMk1RLzJrU2FmRk9qUlVBQ2x6WjZFbHJrVHJPQXhCMk5ibU1oRUtM?=
 =?utf-8?B?MlZNYngxb2M2OVV6Y2MyUlQwYW45R2o4SGo0dTRJU3pDakcyYlN0Z2YvU1Z6?=
 =?utf-8?B?U1d5cjU0ZHNkdGsxNnUxL29CTk9JdlExOC9VMVdQNW4xZFAyNFlNOGV0M3BV?=
 =?utf-8?B?a2hQNVpqQ0NmZ2d6OXlsbkQwZ1RFdHZTdDR5eUdaeUNmbmg4dzJOZXlmTmIx?=
 =?utf-8?B?T24rRkFoTFFGT2xKU2REb3dLK2NTZzdJUHlCR0E0QmRCV3NacXo0RGw2eGdv?=
 =?utf-8?B?Zk1vb0F3TTRqb0NuUXRIUGZlMGtaVDlTQUFmSjZhNk9TMDMwUkthTkRkT2hP?=
 =?utf-8?B?ZGpHcUc1OWZqNnJNNUpZdzBaT01obkdCaHpwT0FsSExWbjNJcDdKWnVoTUhM?=
 =?utf-8?B?Z1Qweldmdlo3OFBUbDcvSE5WMjVLM2dTWlRsZkdLZzFUcWY5OTcwSXdFK0VO?=
 =?utf-8?B?SzB3Nkp4d2E1bTVVQmxuZVh5WWRMRUhXZWZVZ1R0U0J5cTlnQnQrTGRFMUJ2?=
 =?utf-8?B?V2w5MEEwWTh3b3Z2bEt0VGxKWnh6ajZ6WmduY2g2bU9RNXAwZUhyRGFMVEhM?=
 =?utf-8?B?K2VGS21RSEFMNHdXV3NjVTYwQzhvNXNQRGZTekdIeGNGUUcrQ1ErNktYWlVK?=
 =?utf-8?B?T2ozMkd2djdOaDNwMlAwVkpMZlpabDViZXdyM0NjRW9MMmFlSkEyOHRSZFhK?=
 =?utf-8?B?Q0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 531d6698-be96-4f3f-6215-08dc1c06748e
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2024 11:28:43.2607 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yrDFHhoP3PN+vJwF39hMQwMf6S1cm0NR4e/u/ZT+EfcxvbgZ1ts1+yQQWdVlVKVTOcRUpSM743K/dbpQWQVc/K/40b/v5Hd/9gyucZRPiGk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4935
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706009327; x=1737545327;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UHn8rIixZy5jj/TyV25rWxCMo2jdvFI/Ec0jlkF2sh4=;
 b=Cf5mazSvBr35xi+xPPVU8bcRG8vFggJx+ZE8M/BoEIbJipsqhOXTikql
 HwxWTbTjF8DUpRl0RWt9wSeNdE+ik/LniagHpTSZ0J5k1j3qSsNWR+aAl
 JGj4zahL/a95/89G2NYr1OQPwZVrwdH/I6Ry5s0Z3KgMraXHd8li4DCHQ
 1D8Coq27dpzJo2YXvKNckbhI7uanHWnaSy0SMkYspvjxRCCdJfxLRcYRY
 MhRB7XeBvO3PMLN8i7tqoXXDETudC+Ze7/hQmUmVMMcMC4DGq1K5+wCsv
 gXp6A76mf9KTeE9ydY5uj6rtZQg1Qfqk0ylwfoJ5MPQST0bRUopxReGJw
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Cf5mazSv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: Remove and readd netdev
 during devlink reload
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
Cc: netdev@vger.kernel.org, jiri@resnulli.us
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/23/24 12:18, Wojciech Drewek wrote:
> Recent changes to the devlink reload (commit 9b2348e2d6c9
> ("devlink: warn about existing entities during reload-reinit"))
> force the drivers to destroy devlink ports during reinit.
> Adjust ice driver to this requirement, unregister netdvice, destroy
> devlink port. ice_init_eth() was removed and all the common code
> between probe and reload was moved to ice_load().
> 
> During devlink reload we can't take devl_lock (it's already taken)
> and in ice_probe() we have to lock it. Use devl_* variant of the API
> which does not acquire and release devl_lock. Guard ice_load()
> with devl_lock only in case of probe.
> 
> Introduce ice_debugfs_fwlog_deinit() in order to release PF's
> debugfs entries. Move ice_debugfs_exit() call to ice_module_exit().
> 
> Suggested-by: Jiri Pirko <jiri@nvidia.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice.h         |   3 +
>   drivers/net/ethernet/intel/ice/ice_debugfs.c |  10 +
>   drivers/net/ethernet/intel/ice/ice_devlink.c |  68 ++++++-
>   drivers/net/ethernet/intel/ice/ice_fwlog.c   |   2 +
>   drivers/net/ethernet/intel/ice/ice_main.c    | 189 ++++++-------------
>   5 files changed, 139 insertions(+), 133 deletions(-)
> 

Thank you,
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

