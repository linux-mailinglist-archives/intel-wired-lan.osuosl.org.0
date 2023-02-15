Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 33DF369842C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Feb 2023 20:09:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9074960BE6;
	Wed, 15 Feb 2023 19:09:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9074960BE6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676488190;
	bh=Eo+/L57/6mZuTXoTCZoEg9N/6B3pKiT6UKlICWtDimE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=N8XDracRP5t5yoRNHN0D82l5+5/le07iCjzjVTBqYBkYmkYsKe6xoSLBl2ufFaIp2
	 D6J4E3knnSW/EzvAehAr9NEUuw3Xf4eMUpoz6ci9NJ9Cp0D1fDZ+v6ykl3FbGn7eda
	 t3sQXSZRm9U3ET2hUpVdx/kOo96815jkAg2lky9eolbsfdzLvU3ISkBfhlRems9xje
	 f0NbuFG90+iu/7dQrjUUK3pPZYL6tYXnyApemyYW4uepfn+EWUrfngBfHJvS6ByVU/
	 joQ8Rqwk3nxv5p1FLeaZut7Ni/m1sWIUz/TjOlt2AFigAg3QPqF0L12jDKKj4g3ftB
	 1g7un+WNYbxXg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kns7JzZW1aRw; Wed, 15 Feb 2023 19:09:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9113861017;
	Wed, 15 Feb 2023 19:09:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9113861017
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B434A1BF396
 for <intel-wired-lan@osuosl.org>; Wed, 15 Feb 2023 19:09:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8BB3B81970
 for <intel-wired-lan@osuosl.org>; Wed, 15 Feb 2023 19:09:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8BB3B81970
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m7PtfU5-L3Te for <intel-wired-lan@osuosl.org>;
 Wed, 15 Feb 2023 19:09:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2F756817C3
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2F756817C3
 for <intel-wired-lan@osuosl.org>; Wed, 15 Feb 2023 19:09:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="332832514"
X-IronPort-AV: E=Sophos;i="5.97,300,1669104000"; d="scan'208";a="332832514"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 11:09:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="733497647"
X-IronPort-AV: E=Sophos;i="5.97,300,1669104000"; d="scan'208";a="733497647"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 15 Feb 2023 11:09:39 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 15 Feb 2023 11:09:38 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 15 Feb 2023 11:09:38 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 15 Feb 2023 11:09:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MYD0w8qs8aTdU9vV/tPfKgd4pfv/jEegR8BB5u8A/KBFgc91rrygYuTP7p5NnWWeXJ7YNpeVsHh3yTPVE3lvy7ltuWsg+a5GOvO6kuFB6SX82aG4iJc8AxQ4EZUJsPgspQW9VpCPNxhkFAVPK23me3ss4wy1G2lL9TdMNw0ReeqrwS2wMlC5p2JiTlbHZq877Cst8vEYSM//ojNZME4ppQ+DithZaFgtd4oU/CczVTuqJYhlGwyBp0vDGrd6S/T0KEzaUGYJ9DRxU9GTQduorvgR0eRc6Luoh/LGMKhB55ajW5/r/FyDyPak0MKzGa5aurmagMSpXY9JffAZI4oMRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gZdpBYmmbJzKDdZj4F7DiZOl9IHYXv2V0SRgI+qAPDs=;
 b=Ft074EyN2aw7qx5NiGCRc+bHSrmfzcpQJMj1cp+WQbKIvAZBKHY97MV3eXWERjBlWdzpq1hUi3LjRvhfkY/C4j0i9q5uAQvT/uDy9Fj+N9eBe4CKgt0dyVCbHLk62qTmpowAnvjE5jDBZfTNqyspFNTJZeEo6lJ83dzurkMh6i6r0HV+OxnQiEEd9XOiWlD1LyRED1FdpS7zrc5femheo5g91KBK3Cnl9WVyXuuTeesKQZm6L9lgoUEREiXMGbYcLBVJsM9tgmGLl1oe0WCoMr0munsi0xNPOFu6VJ9zJt6k1sy3cJ/ehcNy8lwqutylPIW27+0DzGM7lqmAPINWiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by CO6PR11MB5634.namprd11.prod.outlook.com (2603:10b6:5:35d::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.26; Wed, 15 Feb
 2023 19:09:37 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed%4]) with mapi id 15.20.6086.026; Wed, 15 Feb 2023
 19:09:36 +0000
Message-ID: <6981bde6-b836-42a3-5a07-bb2fe21705cc@intel.com>
Date: Wed, 15 Feb 2023 11:09:33 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 <intel-wired-lan@osuosl.org>, <vinicius.gomes@intel.com>
References: <20230208054517.5615-1-muhammad.husaini.zulkifli@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230208054517.5615-1-muhammad.husaini.zulkifli@intel.com>
X-ClientProxiedBy: SJ0PR05CA0116.namprd05.prod.outlook.com
 (2603:10b6:a03:334::31) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|CO6PR11MB5634:EE_
X-MS-Office365-Filtering-Correlation-Id: c1ddeedd-fb23-4f38-0dca-08db0f882dfd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gVbLm4NX4yjAY9hBcoAwEPCB8Zwy0f/n8IwiJvYTBL0SA5+QTvdZYfV0hYzbLkNw4zqgJKkKYCAHomb7l3kdI7hm4gwuIJnV2xqTf3uzx9PXEkRnqFVeoEYtsnUE0aAmkrdAHbYplEWjmUXZzWDd0449TptKa8rwV17A8mKNjw1v9ygN4co+9V9yhgs3IIqhFQ0fmR38dGTxl/9FkkIefxTEPXac6fNfhMN7CtTe4GLYvYo8ZYq8rGoN/4MKUh1Om2WgA1ocvyujqFCda0irIHf92FjV12WHP9y4mzj9qyc+PLT6FY4T4Cogn4ba3Nimeuv5P0UNBI5YlHYUBz8B10Jjl5SUppJdcD/x9d6FcAdeBFYAqgT9Ww8DCwnbZH3cwj7U2oTH0Jsbkugqty8B8OEyxWAgUFPjOzRYWJrjO0X6ZnbFRFxyUMcc7lG9QMlSl9mXvuNx6NH5TrFE1d5wxDzYL6zC41hTipaogUfotgGAO7eNF4UNUbln4p2jraDstksrZ4/xMvCXmZ2IrRex0F7veHGJ+ren6Mi/oAlFIB0DUd7UUkGaJL1PFArWeD1YRPD7PEc/6f4Iie/baV7RoH0RAQi0Gtfq6+r9Ko8DGGZUHnntpMY6dHc7PyIJ0t3paTo9ry8PkX3h8Web2sTc8/MZ5v2v78WMdE+iVlo/oFvxx5PJEmrsg3LMAkLCOn7R/Zh/ASdDiQkaCdRqzAskrj5r4vdk9CvAzTdkHjl9SBA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(136003)(366004)(376002)(396003)(39860400002)(451199018)(6486002)(966005)(53546011)(31686004)(6506007)(6636002)(83380400001)(6512007)(478600001)(6666004)(2616005)(316002)(41300700001)(66946007)(66556008)(8676002)(66476007)(8936002)(4326008)(5660300002)(38100700002)(4744005)(2906002)(36756003)(82960400001)(31696002)(186003)(86362001)(26005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T0NYOTZ6NDFCaW9RVGs5cVNJSHZDSk8rVU1Wdk9nWnBmYll3SE1FNFdWZFp5?=
 =?utf-8?B?RGg2RkRBRWRlb3Z4bS9HVWJJZi9XOEZCL20wU2ZkTmdRRkI4RFNwR2hPUFlN?=
 =?utf-8?B?SS9pVUxHdXZQWVE4cUlFRGxVTW95blhuemwrZXJVbUtveEFGOEpEZjNxQVVG?=
 =?utf-8?B?aU5YWlRhTVprQzFIN1JXVVEydVFwQWpuNzk4VnhDbHRjQjZiaUhsTmZqam1J?=
 =?utf-8?B?N2ErTVdoK3I1b3lRU0E5bWU3NllNSk5Lc2lQZVp3Z20rQ1F4eCtmTUJLSXlJ?=
 =?utf-8?B?eFFVRUxWMVZvZ1BJMjhDSDZkVm1oc0RIQUhzQ2FXWGRMK1lRcTYxcDVzK0do?=
 =?utf-8?B?TDhwWEppVUR4SGcyeHZsNW9wcVBFZDN1R3FuQjRMK25ZMUNGRFljTXZYcUE2?=
 =?utf-8?B?Qnd4ZXh2U3B3cGZtTVB6NncwTXp3NG10UDB2eVpGbldqU3RxSHAycmhnR3JJ?=
 =?utf-8?B?SWhJLzZhRnV5MU16MDlkSUtPQUI5bWpOSk82K0d0aHJoUUdkcUFpbFUwVDdS?=
 =?utf-8?B?cGZ4ajRPbWRUbUxMNzRLeXpyckV1U0wrcmIvQ1pyc0ZFZUdCOVpuSm9EbnJl?=
 =?utf-8?B?UkI0cy8rZE1WQS8vSmVRNlhLNlo4bXVKZGhHbUdMKzV3ckVmNWs0ZkU4TGlu?=
 =?utf-8?B?eWRueEhhdkRUckpIb0VHZHFyOEY2Y1hCL0RCZ2xKbjRNbUVReTd5Vm85RkhV?=
 =?utf-8?B?OEx2Y0hRQ1BPSDdxTXVqQVNzc0QzUmF3RzhuQ3hNeCtDWFRuOTJYbkE1Z3hh?=
 =?utf-8?B?eW5UNEVYdFRoQjRJdTdFUGtRSkcxLzBiM0tiVXJGcTZmZ2t0TEl1eVJMZWwv?=
 =?utf-8?B?bkZlRmVjZmZZM09OSUJxSFMxUUJHVnpmQ1JuSTRoYnJMM3dxdS9zZVB2dW43?=
 =?utf-8?B?VmpKQXJ4dmRXemUrVStLSjIrbDVLZkxrMXlMMjNvODVISmRrR3ZQMjd2K0Rn?=
 =?utf-8?B?QS9hdENBaVBGUng5ZExuV3FWdGhxc2JaL0xYaEw2TzFZSWJEV2x3TkFBVysz?=
 =?utf-8?B?T1ZXTnFoY1ZlTGdOc2FFeGtsL2Z3eDJEbTZaWjRwbHhtaWVKbDZMbS83MWhh?=
 =?utf-8?B?UHd6TjJaV3J1cmRMNDEwMUpUTEo0QkdDU2JUVWxWSzRiQUh0Wk9vOEl5OWo1?=
 =?utf-8?B?RXd4b2J3ZEhYZm42YTFEZnlZUE9WWVRMczZtb1BSOGJEUVhHenI5dEdLN2NZ?=
 =?utf-8?B?eG9UNVdJOHBtV1FxSUlkMjV4NGppUnFuOFh2aDdPRlJtbGo1cWI4VVpxSWJ6?=
 =?utf-8?B?QXBXYkx6ZzB0WmJyZGZwQVorc3UycG51RE1wK0lkZWx6aVpzZW9RN09NZEdm?=
 =?utf-8?B?eU84a3NqQUp0WmhGMTN6Sk94VkVlcStNQSs2L0Nja0VZM2dhdTJpd2dLemJM?=
 =?utf-8?B?MHdCb0l6bDlzVXY5ay93dDNvYmt1eFlRNDNUVFFMVzNUSGx6N3BKdGRvaHdP?=
 =?utf-8?B?MDlMRzdNNTUrdFBKaTEvQWhBWkF4N2g2d0ZaQzRCdnJSTUJBTjNQb00wMHNG?=
 =?utf-8?B?MjhyQ0piWjBFQlVYZmtWUUg2ckR0Q1hjZzAwUmt4TE55TlhVV0RhSTBYOFNB?=
 =?utf-8?B?ZUFOdThLMGYrZWJhYzhJR1Z1aGUwOWkxS0xYSVRMOU51NlV0M24zVnMzTHpZ?=
 =?utf-8?B?Y2gwdmRONkJ5Y0UyNUY0VHJmdStmVXBHU0dMUUI3SDZSWmY3cEVsU2o5OWJr?=
 =?utf-8?B?YmtXY2dhUDgxS2MvUEczL24wU2VGdktwdStZdmZ3ZWxNMDVzUXRSYWZUT2NZ?=
 =?utf-8?B?ZjFaNm1KdzE2MDF1bnlBNnFORVdmQ1pZOG5yTy9QTU1XNkhJMWxoMGhzK3Ny?=
 =?utf-8?B?UGdyQkxuK1NqckhIZkJtUmxRWXkwVE4wSGk3WTNJc1c3TU00L2tqV08xUjFC?=
 =?utf-8?B?Ykg3MFMvNm16ZE1NSjNvTXY1OGd5Z2dsNUtHUTA5dW9pK1hzcnk5ZDFPSHp0?=
 =?utf-8?B?dFMrc2MzcjZpRVdqa09XMWt4bU9hbWFtaHhKS1RVRGpzUFhaekl5SDgvSllJ?=
 =?utf-8?B?R0xIbjFtQ0ZHSTRNdDNEMkdvcHlLTnhYUkFFRXQ5aVpCR3dJQ0pVSFhGRDJn?=
 =?utf-8?B?YWhKYjRha2RxUVBWZ0VWdDVwVFFCMllpOWNUbXZnZzdydU9mVTJrN3laVDRz?=
 =?utf-8?B?RzdJR2pWa2pjR0pSaEppb3padTB2dVc1NUIvNytTcXZCZUN5SUtRandPUlpp?=
 =?utf-8?B?MVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c1ddeedd-fb23-4f38-0dca-08db0f882dfd
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Feb 2023 19:09:36.7241 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Z0SbRwpG74uagJ1TCpeiJ+ml7MmG/Uno9AilRqa+MdnsnbhLr5WZWdEz6obnOFRSyu4eI+NMMzmeHTg1iMSYBlGnA/x5bjwISXWs+kPC9ME=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5634
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676488184; x=1708024184;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=J8qLL/b7iKphydtQ0gP4S28RkYd6+Oi2edo5QTQ9ppA=;
 b=RkDv7mFIUaHcrYvQMxzFfnNAtd47tt7PUBkcnbczFM0/uhSB3p1dT9/o
 QkkD8F+PTeavQ2lvDu04v/hTRpuXssxOOXIinf0MS+toHAKpUpr/ZxnZ3
 U80Z9nO5H7Y0AIH1WZGxYp7RP1hkJteKG7HeedzwXPoXTcuUPy+Zl6Mat
 OYXJskZmL4igIlnGtqb+xDUBREqmtjjxCEawedhMIRSbGqE7ICYyeo6fA
 0grpGIPX60sIk90ev21J+Y6ZkgZuGCQ49uoT534qxexRUHITLreRbKAw3
 c31BXf8YLwo1DMzqrE1ATkB9DozHPsUZ8oHXrZUH/Iy+qfVN3LPpIhkVp
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RkDv7mFI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] igc: Fix qbv counter not
 zero during 1st GCL enrollment
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



On 2/7/2023 9:45 PM, Muhammad Husaini Zulkifli wrote:
> The counter is experiencing some problems as a result of recent updates
> that prevent the controller from being reset each time the TSN config
> is disabled because the BASET L/H value will always be increased rather
> than zero. Previous condition is no longer valid anymore.
> 
> The TQAVCTRL[bit0] register is used in this patch to check whether the
> existing GCL is being reconfigured or a new GCL configuration.

Since the qbv counters patch [1] is not accepted yet, please squash this 
patch into that. I've dropped that patch from the tree so you can update.

Thanks,
Tony

> Fixes: 1d1b4c63ba73 ("igc: Remove reset adapter task for i226 during disable tsn config")
> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>

[1] 
https://lore.kernel.org/intel-wired-lan/20230208054517.5615-1-muhammad.husaini.zulkifli@intel.com/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
