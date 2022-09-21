Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 333685C0109
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Sep 2022 17:22:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CC1BC4161B;
	Wed, 21 Sep 2022 15:22:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CC1BC4161B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663773776;
	bh=bO3bJBP2mCBPNITaPenbIKvF/MflU1iNXMsIYW9vrMc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1qxVqxgvKX72BM9bRnfQLuVbAYt4E6lPeNG8fK9C4wD6dPLcmJND8EFen9Ws2kKbk
	 OheR6I8uw1KgAhTCd2rqFetmKcJM9ves1Xzw/TCeHufEfmbcA3fJiKRMC310QwG4qq
	 ckeG/KEu0Chuc36Z59WfxnBiO4QusOK3vyfIvJ+wvXojh5F+UMlh44fJhD4h1ez/HC
	 DzU0mCk4uobs709e9g+BrmUiLIU3pfS8qycv1D+awTOKJzZCnzXvTn7QPWBxmFhRqe
	 eU7BQa6bmSxNmPpvy/LDjgiY8E7RArWEHeqPgfvOvL6bukQfD9wvpAa1ccgXChK3MW
	 gV2APO42KMBvQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XV8VI4y6eLPV; Wed, 21 Sep 2022 15:22:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 36C2141575;
	Wed, 21 Sep 2022 15:22:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 36C2141575
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0418E1BF429
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Sep 2022 15:22:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DEBD38175A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Sep 2022 15:22:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DEBD38175A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UZSLe0DxPNBH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Sep 2022 15:22:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 95CC881656
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 95CC881656
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Sep 2022 15:22:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="279758187"
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="279758187"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 08:22:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="745005667"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP; 21 Sep 2022 08:22:39 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 21 Sep 2022 08:22:39 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 21 Sep 2022 08:22:38 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 21 Sep 2022 08:22:38 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 21 Sep 2022 08:22:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AzQ7pF9HssJFUR5B1W3HeLAPjpvYdU4EuTN8ViXeKffqtCVFxXPL5WjtR71MpkxVtJDyzBlTlgCucwO0V64E4tkbhw8CSBLIvZRPSPdMCkgZPAVRYXOFnCx0IUj8WmnYFcZnnc1N5KVoQkHRPNIhhiY7wM4M4Te4qWPj0ePCb38Q6NKMhkAZdzU2ZdVtUvRw6MjpMk1zJ8G4ayrDlC62oN7MuQpx88qYnGv1jlFFgtBw/oP0QHGJc4UvWb/wGeFPH8V7zMiSMa5GevTE5vsnG5zFK8O0NX3aevMHY0+Cksx1nZ2MRs92WZHzPdn3GXqrBJLTziBiPZ/LhDPl8u3AXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RmO45H5x7TqIJdr/dWpmDOG3H7l8lTnuZln4sQe6TTw=;
 b=UvFouSTnc9EIh1yzRwRWlKwpWAuGh536NYBLNQdm5rq2fpZ3xgNAGEuPFjhk+nof8RSZAkUD/EmCtNMfWdGVgNqofu/dyO7YW+5XXC6ZCmWu17h2SWqRhghS1UZFuaoMSQO+qBkyFpNWy0hlHVJv46rnNlGtO5Q7TzxWQacJ54qkL/0rPtaqQSTH5olbAWS14IJXmQufcNPTGznP9+wdtYjMSjeO1JQ22aNXwzSDbU+bwhLAJ4RdMwS935V+KJzYA81uErvX9uTTnz6XAwY+vsCwxECSJw9PwdOSzyIVB6jy5rBi/kFRaulWi2Oo39xvkAeX58O4qwdC7qfbDXKW5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DS0PR11MB6398.namprd11.prod.outlook.com (2603:10b6:8:c9::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5632.21; Wed, 21 Sep 2022 15:22:34 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::a422:5962:2b89:d7f5]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::a422:5962:2b89:d7f5%7]) with mapi id 15.20.5654.016; Wed, 21 Sep 2022
 15:22:34 +0000
Message-ID: <c814110c-4dae-462e-daea-de25ab29e176@intel.com>
Date: Wed, 21 Sep 2022 08:22:31 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, Michal Maloszewski
 <michal.maloszewski@intel.com>
References: <20220917004009.77412-1-arkadiusz.kubalewski@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220917004009.77412-1-arkadiusz.kubalewski@intel.com>
X-ClientProxiedBy: SJ0PR13CA0062.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::7) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|DS0PR11MB6398:EE_
X-MS-Office365-Filtering-Correlation-Id: 5903ca3d-afc8-483e-8a3f-08da9be51bae
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FoszOiJiZ2vSgs3F260BKDN11si9ERVeXhYwbHvdiifGgt5mK/RZ7n9zzMYJQXxWPB79pm0a40Y0nvBmNmGXm/Vfg9bfNZkuAEkyM6dkKhMS0qy2rhCTTsp6WSMTYU7ETZy32YeJbkJcbL2RmabtC35HwsUsavdchv5pgZNOdQwuip1JeGS6Q5il258Ws6n9WjcyARgacULzvciLfaI0HOYd3m8blPhA+xZ9DVkULP9EzS0IcEi7f8R0e243ZQknt1+HCV78n51lLi1RhzoBIgpgUsYLE/K0HJDQVd+sNPxI+4aU70ZUKG7opjd+u4I/CwjIr2qXo7wNVTnaxjMitxP3GkEi9L3MdzTvgXaDh+5DU4TG+5wv5lN2sZ71I7hpjDd5i2J4CHK1PwVQZU80D71+R0QmIALdE13puU/ya5qd7euXSXp3oodupfR1iYRjCdi5bNUfPhwXTgL3ZfrCqAPYP5R+5XaAHGREL/y2AZi3A15+bt/+L1nVuo+g0ncCatSiQvd12AI/sLGHeY6Mx5h3w0Uc3xzBthwXfDZALCYTLVWjR8HLaBz2nioUxh0LcRfPYYK1aKNNlpQXhVyFpRa1cOeaV7Hs/NCzqJ21KnQmlI/ajDDAUg7i29jTNExXwZEelDkoWxzB2BieSN1WP+qEPaIEgy+/e6eR6k0ovfQ4/st6VOllqsdRRobBCUiIh8P9CWFVu2eY6tffx/Dybga2y2DHheq3ieWsjxs9pX7IjgnrGACQhMCmCbxISA1dd998vykhGC8VBqzVOryE49Ei0DIX3/k4PIwqXFBGvr1QX4q7fLNB4D6P/t6/cpY04BdjiBCSpUu9d+DSUipvlg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(376002)(39860400002)(366004)(346002)(396003)(451199015)(4744005)(8676002)(4326008)(53546011)(66476007)(6506007)(83380400001)(66946007)(66556008)(6636002)(6666004)(2906002)(2616005)(107886003)(41300700001)(86362001)(82960400001)(110136005)(31696002)(38100700002)(316002)(186003)(36756003)(26005)(6512007)(31686004)(966005)(8936002)(6486002)(478600001)(5660300002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?amZDRmhMa21BMzhTYVpWWWlVNGpxUUZZZHJaYUY1MWRJYUhucDJhenJjVytJ?=
 =?utf-8?B?c0RuQUFQOGhWQ09pdTNvVHpjaVc3YmZYQzc5QnlKTnlvd2duc1BBYVB3MDJt?=
 =?utf-8?B?VDVKenVaVVo5SDJOTE50YzJwMlhjd2d5bEUrazNmWlUxanVVRWpyRU1zWFpp?=
 =?utf-8?B?UkJ2cGs4OXlvaDVFSFQrUkp3VXBKQzQ1cUZBcWxsNzNJVTF1RXRJNFJxSjRp?=
 =?utf-8?B?MHBjQnFqbUFvaWN0M3pKU2xOZnFtVllXZmF5V2pLa0V3bE5DT2Y3Y3RneTho?=
 =?utf-8?B?amRhVFY0OFRQM2pRSG9UZjdzN29OTUxja2dHTG5uQ1lXR3krQUNyMWNLV1dR?=
 =?utf-8?B?UldsT3EyZTNTVGdnZHk3N2dPWkF4azJmd3dNUFZOVWVnY0dCZTdXdms2cUNJ?=
 =?utf-8?B?SVcyTXpXZE9hZzQ0YmpzcHhUVmYrTW5mUlhUWEFnRVU5RGhBak5HQUxZZmxs?=
 =?utf-8?B?ZllHNmtsQS9BK3pQOWlMbU1LSThiOWwrT1k5blNLTzA1cmRHVWhDZjBaZHFX?=
 =?utf-8?B?WDhkNGlXMFp2WEE1elE4NmFVN25RSUlrRG1DTmNoZHkyVnhuZTZPOE5rMnpD?=
 =?utf-8?B?TEJjR3J5d2N2RkJQOTJwcjFISWlvUG5jRHdzNE9nYmVGSjNsdzlWNHJJT2E0?=
 =?utf-8?B?MmlMSHlJUnFXQ1VERDFmV21Uc2pkTXVWQnRDY1c1NGZwR1A3VXZQTEp1TmUw?=
 =?utf-8?B?bkFOUjhzT0xkN0NnRVlTdHRBY3JoRTRDMkhua3Zjb0tBbzNKWUk0WFNZUHAx?=
 =?utf-8?B?aHIvQmxOU2pZb1hra1krMHoyOHFIZHF3eExzc3V5MzdwbStVMnh2V05ZQWpQ?=
 =?utf-8?B?TTdTeEU5cmlyQWJBQUEweTY5U2ExS05OSDRJM2hCaXhpRktYRkxRNXhwZkhP?=
 =?utf-8?B?Q2xnZTl1YUxmdXhtQVd6ZkdwRlZFQXhVZnZFSDU4VndlMlpOUlQ2REFZWmcx?=
 =?utf-8?B?WFpGUVVaSjNoUno4amtSNkE1eExFRVN2Y0x1YnY3VU1kaDcyV2FqUlhWNjFo?=
 =?utf-8?B?NVpFcm1KeEQ0bnRkVkd4aldmK1o5SVA3SGhrNWM4T3NMZ0xGZDZET3NVMzk3?=
 =?utf-8?B?Wm9ZTEpDMHBFV3lWS0VPdGFYaWp1NUVjNzRVWnJCd21CbndPc096UVpxZ01K?=
 =?utf-8?B?SWRmeDhmME1zTWl2VEo5aWttN0E3c1U3RFp3VjJVMjFCbHN2cnlCNGxUUm1q?=
 =?utf-8?B?MHQreitMcDUxbllZc2txU21GOXp0S3ZVNlZZUHM4b0pQWW5RTjZUSkFpN1dv?=
 =?utf-8?B?aWhzMVpuKzhxUzQ4emFtRno0YmVGWFpOUng3RTRsNkl5Q0JQNW9vUDM0ZHhH?=
 =?utf-8?B?MXhpRmlKdkZmVFJndkovT3NEblNsTUNtSXVLWVlpV041aWNueFJ4bVAxUVRY?=
 =?utf-8?B?dzBmbnZ5c0dHR1lkWkNXYTlOZjUyZEJGcW5LUGNSbmRvY3NOY0l0dEpVM3pU?=
 =?utf-8?B?L2FiUlhjTlkrMTVlQyttcWkrSmF0WVR3M0lMY2RKeS9Qa3NEQ0RLZDVuNG94?=
 =?utf-8?B?bUhISEtqdWdORzAva0FrRlJuTmYva0puOXkxczRoYi9iYWFOTkVWMzZMUnA3?=
 =?utf-8?B?RlBRNFZrdkEzOE5BRnljNWpkcHJUNVBlQm9MUDJoUTdSRVFTOTN6dTJVVWps?=
 =?utf-8?B?L09mNDVRWjFsV1J4N1NyRUw4RllQZnlUN0hVUW55T3FjK0dWNVUvR2pBUVQr?=
 =?utf-8?B?QzdpbUM3T003NDcwU0VCYlU3Z0gyRUZZSzFEQ1h1bkdBWG83Y0ErSlpJM2Rz?=
 =?utf-8?B?SzlLQnRoNktYdzlUay9SeHF1UkgxMGxObnBKb05uVUxnMVBFYnUvSVphbFB2?=
 =?utf-8?B?VHdNVXMwQzhWcC9aTmgycDk0TWhBRFFPU05razhobnlQdXdZWmRWMUlPZXZl?=
 =?utf-8?B?UVQyS0V4QnVHRWpaNWQvOGdiSGxMcGhKNEE5eW0zSHpLalNrS1IwUVlZdDUv?=
 =?utf-8?B?T3Z4N2Q2UmNtQjE2cTYySG1xYXNsejZXZ0hRS3V0S3ZocHFCaDIxUTdLZ3Fi?=
 =?utf-8?B?S2dBdUZSejU4dWlGMHJ0a1AzWmhxUndtNEZtOVZxRXMvbWZXOUU3RFpmRi9I?=
 =?utf-8?B?QW1RRFRkeUpvb1JvUTBzYklkY2lOUmZsekR5RkdGVTZRZ1VpZmdyR1RKQnpV?=
 =?utf-8?B?MDEzdzZtYTNUazNyTlFEUUVFTG1mbkszMnhWRzVieHJ1VGs0aUlDSitIakww?=
 =?utf-8?B?RFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5903ca3d-afc8-483e-8a3f-08da9be51bae
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Sep 2022 15:22:34.1836 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RNJG0P55DxEhpXYLEWqwZ93evOtgyHNlZrWkWuTG+ov/1sBFRT1PEgyuFN8AhYNXF3/VXvddQLsShqJSRw63xjLDzars5jsWK7uaRgQ60ro=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6398
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663773768; x=1695309768;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=373YhRAd3cMsEw85vKw4mzxz2h66yg+v4P117QOM7i0=;
 b=O171rGBIT4Wqda+gg/VrkY4LC4ljIJ0OeJ8IuF6cX99COXM1j+ONZV5l
 Ap3E68VTd1NoYhslZer21agX+wgmTDhtsydP9X/nqbSvR9mQBV111+zJ2
 NA3jl8uaZ91Es/REg0nUujezrZv7aUWsY3qCpn7VcM9Gc4xS7OCI2D8Ko
 bnFcqgZIMJvkmE4QcvTEClEva+VqTnMYQxaB1o0iDVyNEhaUFPPCLeePn
 3FC/+8w2tgqSuFDSRki+Zmo+xRjLx0VwxLeTRscxgZfk2CJE67tdrySQ0
 86NZL2YYfkwbyn/OBb1/5z1t91cqi1+JSkz0HAuYLaXCL9GlhvEb+OKot
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=O171rGBI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ice: use GNSS subsystem
 instead of TTY
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 9/16/2022 5:40 PM, Arkadiusz Kubalewski wrote:
> Previously support for GNSS was implemented as a TTY driver, it allowed
> to access GNSS receiver on /dev/ttyGNSS_<bus><func>.
> 
> Use generic GNSS subsystem API instead of implementing own TTY driver.
> The receiver is accessible on /dev/gnss<id>. In case of multiple
> receivers in the OS, correct device can be found by enumerating either:
> - /sys/class/net/<eth port>/device/gnss/
> - /sys/class/gnss<id>/device/
> 
> User expecting onboard GNSS receiver is now required to explicitly
> enable CONFIG_GNSS in kernel config.

I'm dropping this due to the lkp reported issues [1]. Please fix and 
resubmit.

Thanks,
Tony

> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>

[1] 
https://lore.kernel.org/intel-wired-lan/202209211139.VPM7En0j-lkp@intel.com/T/#u
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
