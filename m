Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 507C375FFA9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jul 2023 21:15:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E61096109C;
	Mon, 24 Jul 2023 19:15:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E61096109C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690226116;
	bh=LrLmBJa0E8mZ8xL3fNHVFMG9YQALVIvc1AlT4grvv1c=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6hmdtW9OZoRCoCZYN+Lbc6O+PtruNUGb/MvTNMN2Hh25dH03DcUElIMsrvCKqTR7N
	 uCdyncRT7YDhTHF1Ygha4wefejjgJE7+me/Dfz+wGDe6ak14r5Y3YL4oigab1VuxLX
	 l7RjzIZVfvomKQ0tIISqZciBvIbpy3jljBO0PdxystvOBFoBkkQEDLRoO3bXX41Sd4
	 wCvo44RFuDgxoEkttdnnkRILACTGe9wcLKdjKp8jEd7IOAb4YHhNmoq5ru+p3dXEks
	 ZbwCbPWS1iVvTnF7wKVAALY+m9aanZYeAFExsf6XWYO3KE/FZVZpOk5monBMmLQfNX
	 P1kSuwefOjv2g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Uyvq6_9IDNEy; Mon, 24 Jul 2023 19:15:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 450F460AB3;
	Mon, 24 Jul 2023 19:15:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 450F460AB3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 368D71BF3C3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 19:15:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 09DCD41835
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 19:15:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 09DCD41835
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GiU7Wv8YsFcU for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jul 2023 19:15:08 +0000 (UTC)
X-Greylist: delayed 426 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 24 Jul 2023 19:15:08 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 76D7C41828
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 76D7C41828
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 19:15:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="371134696"
X-IronPort-AV: E=Sophos;i="6.01,228,1684825200"; d="scan'208";a="371134696"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2023 12:07:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="755426062"
X-IronPort-AV: E=Sophos;i="6.01,228,1684825200"; d="scan'208";a="755426062"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 24 Jul 2023 12:07:40 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 24 Jul 2023 12:07:39 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 24 Jul 2023 12:07:39 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 24 Jul 2023 12:07:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h0jJcDEhKx3Imhvukmk7UcimY2oByRBei1H5l6b/S44qflrowWdmGN1NylXj3oqL4yXyztfp0BQ6hT2U+e7AGL35kANO7ytGo4y8h0sEYrocB2bhicZ1oa+FOyMkVlq5esbYXgX7skbUP6uhPcA8vU+zjYh4Oh1PRAvlAy92Sh2LvlUHWA5ETo/w7wOp0zG0xFjSDN8kxKWIHYMpBE/6VN8uhEAa6AS17j9vTZULw7IxXMvibflNBgRTPGw0gvtBXOVqCWvxUyxePnQusbpc/seq/waUDZY/tXN2vICfcwvE/wD7zspO+tmVw0bPpniFapzeo+SKSTtJRgRnYWLW0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F1OHNBwkyZl0en8gtOv3sxIR86EBRjoLGHeAvJKeDHk=;
 b=kA1q4kTEw8dBCIZMx3ymKAC5qfXAE2UYx15PAY3qEDNsGpfWGaQpCdIURTEzYy8z1cgCtNGaLXe2SCWI2BjiengrmHTT6k1/BGinEweE6aLIUiJ6dBFyvSGSKRR+QfoEWMbW3T2/xJQ7huKQeLIhSWd7qwdzG9JxVrW3qeuQPo3wMb3prg8ZkZnbRbr1vOkUnv7Kf80iRqcXD2RKf76NUQZ6YccpawMlCjNbvOTVZwgbZjMZXjOrRDWOY76/klavmHjnIVhGuZLvRoHGhka3A+UVBq9gM/y1tv15T6GoypsOvO+iRR5wYuafZyW1ughLhhoh1i9XfK0hRuYx+Z81Qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH7PR11MB7098.namprd11.prod.outlook.com (2603:10b6:510:20d::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.31; Mon, 24 Jul
 2023 19:07:37 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::cb4c:eb85:42f6:e3ae]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::cb4c:eb85:42f6:e3ae%7]) with mapi id 15.20.6609.031; Mon, 24 Jul 2023
 19:07:37 +0000
Message-ID: <cfb8e919-7354-de1a-573d-1d8812116402@intel.com>
Date: Mon, 24 Jul 2023 12:07:36 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20230719220525.3153469-1-jacob.e.keller@intel.com>
 <85544f62-1269-d21d-c586-57a75a9ff362@molgen.mpg.de>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <85544f62-1269-d21d-c586-57a75a9ff362@molgen.mpg.de>
X-ClientProxiedBy: MW2PR16CA0027.namprd16.prod.outlook.com (2603:10b6:907::40)
 To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|PH7PR11MB7098:EE_
X-MS-Office365-Filtering-Correlation-Id: 94d48095-afbc-4fcf-3208-08db8c793ede
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jxd+nnnKvxYFZRd0gY0J/oTyQJzSHFMaKBk5tredMVK+BWaMwM75rdE2rsOvJAgnAiz1YujOLUbB0Qj5CQV0zrQ+UDnlmpdoHYKmymtg2EqR6bBFIlPs1AqLIg71kgLzgJ+s6kV0tGAzJS1Ok1emBfqcwqVWkxtMM6OBlL7BkvexLjqPogFvnbG7cpwn34cmOpqoj3gbZrQI4aW2IEVvsJ/kIYQt3Eko2aOykaON6LJak2odsV1T5bOsplWd3rHHK+x2mQkvTmXEExUuehJmKFXHmlW3EWdRW2436rbZdprheLfLmdPtvu4dI33KVWAifXu1wAlctvO3krHPzCZZgKkHW3tkHgLEpmxh54b8/Gge39Viq86iXYiFvqIvdedttJbffZ8fKWUkdnEVN/cdQ91G64mN7ixJGqs30jHWdjctD8ZuvdsTSD5SR82Ayy91e0psThlef6kSOUQyKXDrLf3ma/2nVT4yFBWOlsgpOzY/CsxfgZd21vYctYxsCNyBSClrJbJN1QPV/Fuuu9ibScZHp8nE2EPpWoJbFNjM08/4O4uHCFMu7Cdl2l2TIU6sqEHN5aXkm9BXOnXLKCgy/mOV+ynfiNUfNLMOxos59gDsr/0M0ED+pYLXU7UoDHOWUrnlDSllfHb0R234p5r0GA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(396003)(366004)(346002)(376002)(39860400002)(451199021)(8676002)(8936002)(316002)(5660300002)(66556008)(4326008)(66476007)(66946007)(6916009)(38100700002)(54906003)(31686004)(82960400001)(26005)(41300700001)(6506007)(53546011)(83380400001)(478600001)(186003)(2906002)(6512007)(31696002)(36756003)(86362001)(6486002)(2616005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TjFsUnA2eDdTQk41QXNXTlRSZ1pHUEplM0FBb09wVE4wRnFSMWVzZW9YQ21v?=
 =?utf-8?B?ZTZUeUsvVXNRUlRENWhBZW1DdjJ4elltcmRUS1FPeURicUhqUmJPQlJQMk1M?=
 =?utf-8?B?QlQ4TzQwZGtTL0tzMjNkUnVZZEtSZnh4VG5VMG0vRjI5ZTBxQW11d1NtVFpw?=
 =?utf-8?B?YjVENndhSTBQNDlpZ1JLWm9ySlpYQUpVS00ySjBNQUtTSWp4SHZmVnhETWF4?=
 =?utf-8?B?UmQyNEd0dFZlMjNWRUhXRUlCczk0WXVpUG1ocGdkQktBOWh2RzkxaVdzdlgv?=
 =?utf-8?B?amRyOWhXeHd3WjNwS3E0Zm9SVDJ4bk45bC9vcVZEZW1tZVR0dFBrNnJxUFRK?=
 =?utf-8?B?ZFRyT01aOGJ2dW9xanJ1RWxGUXI5Q24veGtFQ0s1NzF4RnV2ZlFFUUxCWEJQ?=
 =?utf-8?B?VFRJRXE0VHUraktZTXc0cHhIUkRkbFltV0pkYnJTK2MwQTM1TU5WaC9saVhN?=
 =?utf-8?B?U3hlZnI1Q0tGOXVSK3c5U1pUcjNmN3RiclZlak9kclltcisvc1BJME94NG40?=
 =?utf-8?B?ZGxraDR6dkJNTTFRRkFjUUZmWk1sbmtvSGdVMHBmNDR6SExpenYvS3lnTi8r?=
 =?utf-8?B?UWZ6a2h0NmxnL21jWTYyNFM0ZVhMLzhHTTA0eW83K2pCWHAxQkxyTlAvK0Nj?=
 =?utf-8?B?ZXNtQVFEdGk5K0ltMTJZUllSdnVXWXY3a1R4ZEJBUEhTRjhSMjdLdGhybVhu?=
 =?utf-8?B?eW9wb0tpekxvSEdlekY0QkswdDJURTY0Q2dDUEVFZGdTZUVSWm1ZTWJWSWxH?=
 =?utf-8?B?WmY5NURkejVqTkF6OWtpWGlmejR2bFluYlVBc1ZrWjRTN3lCb1lhUmVjMVdC?=
 =?utf-8?B?WE5Rc2M4RkpYRlZIVXBna05pUWwyaERpWGJYYWFuc01sVWRncDZGbzdmZi9H?=
 =?utf-8?B?QlFZVnF5VDQzN0ZkZHBVQnNkVU5GY0dhQ25RdWVCV3VhKzdPbnhDZTlvZDkw?=
 =?utf-8?B?eXl2dnEvMnZSZ0s0TzRnYXJLc2xCcitrTEU5djAwMkxHRnpjUjVQRWRranpZ?=
 =?utf-8?B?SGhQUk5rRU5tYzBSekNFMXpOdTdyUk1xaHJnQkYzMlFFa1ZXTkdyalZkMjlp?=
 =?utf-8?B?N0dHdXY5dEFwN2xzd2dPOEM2TVEzZzVGb0JkSkZDMnJjenpjQm85NTZMWnlm?=
 =?utf-8?B?V1RMMlZnNWh3djlNSmZNVWlaQ09WVnoxSFJMZkM4Y2JNeUJETTVsMkU5QU1L?=
 =?utf-8?B?TGZaUzgxVThDcVQwUkFRUGt0dTFzS2JMTkVyY3BqUTRpOUptbGw2OUo2b1VJ?=
 =?utf-8?B?czRWMi9FREI5c1ZaeWJqRGJrWVpzOGhMNG1VdG8wSzhNbXlmNlU4aWhNYUdp?=
 =?utf-8?B?TWpZdkIxc3hlUWRwMy9EbzQrbTU2ZXRzeTd6NGpwS2ZWUkZnVHR2aHVMY2dV?=
 =?utf-8?B?bmV5b0MzdWh2emxrRXBKUmtuRllyWXloUWFYa2ZRK21zMU95T0lvall0MmVq?=
 =?utf-8?B?aFhDamtFYkNNSGpRZVBITkV3dDc2QWNnaTU1ekpvSzlXVXBObndnSkMxdXhB?=
 =?utf-8?B?WDlTVVFlbDJ3c3NWN0hXbUZ1bDdDMHdqZXlva1huWERxRi9rbDRObmZkYVcy?=
 =?utf-8?B?a2M2VHZWK2dva0FqSkxsWW4wNFJSdStyRjU0NVNmUDFZaXN1SDk4TVE3VHl2?=
 =?utf-8?B?TkZTYlZaSzByZXp6WnhQZ2JRU0duNXdCaUUrTjJjaE5SQndVL2ZpWWxJeUE0?=
 =?utf-8?B?MXRqZmZXS3ZPWFdvUlA4cDdqdkFOc25XU0E2WEZoS3BRMmd4R3BhQWd2d2J6?=
 =?utf-8?B?ZmtlRFdUSU5CWFFMcUlMYkIzWHVzSmViLzVLbzFIT3EvYTZDZHFRdDhFRERI?=
 =?utf-8?B?c2VpWjY0MkdzY2JHV1B4blRBUldXYXR1SUdMQUVRQWpQUW13NXdtTk1rM29H?=
 =?utf-8?B?czg2blI1bS9tM2JqeXoxeFpQSVZlaFREMlhNVmhUaXQycFJBc1ZsRTRoM2Vz?=
 =?utf-8?B?SFdTbmVsWTVQQllQWElLV1RWRldlQjhjMisxbDl3K0pOSW85aVgvR1lXUzVG?=
 =?utf-8?B?Z3FCVGdWcDQ2WUNkSTR2TFZuVzRGWjl2YTg4ZUdJZUUxN21qVHhiMFUrYzVH?=
 =?utf-8?B?MmRraEd4QjRFTEYvS0J2TGJKSVNDQmN5eGhHTzVSc1JiQlJlR1RGUlZ5NC90?=
 =?utf-8?B?b2dZdTNMYmxTREVrSVhQZUFqbVlvNFNmR05VOUdhZ1FqWE9Uam0vWGNDRUpr?=
 =?utf-8?B?Ync9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 94d48095-afbc-4fcf-3208-08db8c793ede
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jul 2023 19:07:37.7872 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4LptkenwcDPmzbDQAm8wkL5/oSrZgJ0l/WNzh7KIp30JXzMVm3BK1yyoSMee0HK2AbKpYChA9ODOw9Q6Ss7jeO3jgmsxQ+YukOFEI3ssDP8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7098
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690226108; x=1721762108;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EiWA5H0Vx1tDKva+X8ssU9v/cRWdOejCtrL4ciA6BCs=;
 b=VwmQuX34VzozqOqnd5T+Fw6oSU44QeYdTN0wljOAAp7FLj3pTOoMhR50
 QQ7zHFXofw0AUVPcowEdXCHSYSl5ac5bkRsFkyf+jK8iINbX3s1qxx9Ii
 UBRuss7LN7nkwNHG39UcPl22e4FSvG9IfUZ+cN40Qisgpg/WWuQA3N2u2
 1aNZGemrag/u1Bof6/ICYRwWEw9FNOaPLbDWT3Rmflz5JvH5lpkw9IlRz
 WQp37OEVyOyn+8XZYbcinlXNmEeysdbM5UqwCWLwgRYOEytQ6c52ubq+R
 YYdVtuEAiSXc6NBPraPmru8TAIj3vFWc/p9YNbFZ08vjAvEirswaM2bZJ
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VwmQuX34
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/4] ice: PTP: Cleanup
 timestamp registers correctly
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
Cc: intel-wired-lan@lists.osuosl.org,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiA3LzE5LzIwMjMgMTA6NTYgUE0sIFBhdWwgTWVuemVsIHdyb3RlOgo+IERlYXIgSmFjb2Is
IGRlYXIgS2Fyb2wsCj4gCj4gCj4gVGhhbmsgeW91IGZvciB0aGUgcGF0Y2guIFNvbWUgbWlub3Ig
dGhpbmdzLCBvbmx5IGlmIHlvdSBjYXJlLgo+IAo+IEFtIDIwLjA3LjIzIHVtIDAwOjA1IHNjaHJp
ZWIgSmFjb2IgS2VsbGVyOgo+PiBGcm9tOiBLYXJvbCBLb2xhY2luc2tpIDxrYXJvbC5rb2xhY2lu
c2tpQGludGVsLmNvbT4KPj4KPj4gRTgyMiBQSFkgVFMgcmVnaXN0ZXJzIHNob3VsZCBub3QgYmUg
d3JpdHRlbiBhbmQgdGhlIG9ubHkgd2F5IHRvIGNsZWFudXAKPj4gdGhlbSBpcyB0byByZXNldCBR
VUFEIG1lbW9yeS4KPiAKPiBUaGUgdmVyYiAqY2xlYW4gdXAqIGlzIHNwZWxsZWQgd2l0aCBhIHNw
YWNlLgo+IAo+IOKApiB0byBjbGVhbiB0aGVtIHVwIOKApgo+IAo+IEFsc28gaW4gdGhlIGNvbW1p
dCBtZXNzYWdlIHN1bW1hcnkvdGl0bGU6IENsZWFuIHVwIOKApgo+IAo+PiBUbyBlbnN1cmUgdGhh
dCB0aGUgc3RhdHVzIGJpdCBmb3IgdGhlIHRpbWVzdGFtcCBpbmRleCBpcyBjbGVhcmVkLCBlbnN1
cmUKPj4gdGhhdCBpY2VfY2xlYXJfcGh5X3RzdGFtcCBpbXBsZW1lbnRhdGlvbnMgZmlyc3QgcmVh
ZCB0aGUgdGltZXN0YW1wIG91dC4KPj4gSW1wbGVtZW50YXRpb25zIHdoaWNoIGNhbiB3cml0ZSB0
aGUgcmVnaXN0ZXIgY29udGludWUgdG8gZG8gc28uCj4+Cj4+IEFkZCBhIG5vdGUgdG8gaW5kaWNh
dGUgdGhpcyBmdW5jdGlvbiBzaG91bGQgb25seSBiZSBjYWxsZWQgb24gdGltZXN0YW1wcwo+PiB3
aGljaCBoYXZlIHRoZWlyIHZhbGlkIGJpdCBzZXQuCj4gCj4gTWF5YmUgYWxzbyBtZW50aW9uIHRo
ZSBleHRlbmRlZCBkZWJ1ZyBtZXNzYWdlcy4KPiAKPj4gU2lnbmVkLW9mZi1ieTogS2Fyb2wgS29s
YWNpbnNraSA8a2Fyb2wua29sYWNpbnNraUBpbnRlbC5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IEph
Y29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPgo+PiAtLS0KPj4gICBkcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0cF9ody5jIHwgNjYgKysrKysrKysrKysrLS0t
LS0tLS0tCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDM5IGluc2VydGlvbnMoKyksIDI3IGRlbGV0aW9u
cygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2lj
ZV9wdHBfaHcuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwX2h3LmMK
Pj4gaW5kZXggZjE3NGJhYzU4YWJhLi42Y2FiODc1OTU2OTAgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwX2h3LmMKPj4gKysrIGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHBfaHcuYwo+PiBAQCAtNjMzLDM0ICs2MzMsMzEg
QEAgaWNlX3JlYWRfcGh5X3RzdGFtcF9lODIyKHN0cnVjdCBpY2VfaHcgKmh3LCB1OCBxdWFkLCB1
OCBpZHgsIHU2NCAqdHN0YW1wKQo+PiAgIH0KPj4gICAKPj4gICAvKioKPj4gLSAqIGljZV9jbGVh
cl9waHlfdHN0YW1wX2U4MjIgLSBDbGVhciBhIHRpbWVzdGFtcCBmcm9tIHRoZSBxdWFkIGJsb2Nr
Cj4+ICsgKiBpY2VfY2xlYXJfcGh5X3RzdGFtcF9lODIyIC0gRHJvcCBhIHRpbWVzdGFtcCBmcm9t
IHRoZSBxdWFkIGJsb2NrCj4+ICAgICogQGh3OiBwb2ludGVyIHRvIHRoZSBIVyBzdHJ1Y3QKPj4g
ICAgKiBAcXVhZDogdGhlIHF1YWQgdG8gcmVhZCBmcm9tCj4+ICAgICogQGlkeDogdGhlIHRpbWVz
dGFtcCBpbmRleCB0byByZXNldAo+PiAgICAqCj4+IC0gKiBDbGVhciBhIHRpbWVzdGFtcCwgcmVz
ZXR0aW5nIGl0cyB2YWxpZCBiaXQsIGZyb20gdGhlIFBIWSBxdWFkIGJsb2NrIHRoYXQgaXMKPj4g
LSAqIHNoYXJlZCBiZXR3ZWVuIHRoZSBpbnRlcm5hbCBQSFlzIG9uIHRoZSBFODIyIGRldmljZXMu
Cj4+ICsgKiBSZWFkIHRoZSB0aW1ldGFtcCBvdXQgb2YgdGhlIHF1YWQgdG8gY2xlYXIgaXRzIHRp
bWVzdGFtcCBzdGF0dXMgYml0IGZyb20KPiAKPiB0aW1lc3RhbXAKCldpbGwgZml4LgoKPiAKPj4g
KyAqIHRoZSBQSFkgcXVhZCBibG9jayB0aGF0IGlzIHNoYXJlZCBiZXR3ZWVuIHRoZSBpbnRlcm5h
bCBQSFlzIG9mIHRoZSBFODIyCj4+ICsgKiBkZXZpY2VzLgo+PiArICoKPj4gKyAqIE5vdGUgdGhh
dCBzb2Z0d2FyZSBjYW5ub3QgZGlyZWN0bHkgd3JpdGUgdGhlIHF1YWQgbWVtb3J5IGJhbmsgcmVn
aXN0ZXJzLAo+PiArICogYW5kIG11c3QgdXNlIGljZV9wdHBfcmVzZXRfdHNfbWVtb3J5X3F1YWRf
ZTgyMiBmb3IgdGhhdCBwdXJwb3NlLgo+IAo+IEnigJlkIGFkZCAoKSB0byBmdW5jdGlvbnMuCgpX
aWxsIGZpeC4KCj4gCj4+ICsgKgo+PiArICogVGhpcyBmdW5jdGlvbiBzaG91bGQgb25seSBiZSBj
YWxsZWQgb24gYW4gaWR4IHdob3NlIGJpdCBpcyBzZXQgYWNjb3JkaW5nIHRvCj4+ICsgKiBpY2Vf
Z2V0X3BoeV90eF90c3RhbXBfcmVhZHkuCj4+ICAgICovCj4+ICAgc3RhdGljIGludAo+PiAgIGlj
ZV9jbGVhcl9waHlfdHN0YW1wX2U4MjIoc3RydWN0IGljZV9odyAqaHcsIHU4IHF1YWQsIHU4IGlk
eCkKPj4gICB7Cj4+IC0JdTE2IGxvX2FkZHIsIGhpX2FkZHI7Cj4+ICsJdTY0IHVudXNlZF90c3Rh
bXA7Cj4+ICAgCWludCBlcnI7Cj4+ICAgCj4+IC0JbG9fYWRkciA9ICh1MTYpVFNfTChRX1JFR19U
WF9NRU1PUllfQkFOS19TVEFSVCwgaWR4KTsKPj4gLQloaV9hZGRyID0gKHUxNilUU19IKFFfUkVH
X1RYX01FTU9SWV9CQU5LX1NUQVJULCBpZHgpOwo+PiAtCj4+IC0JZXJyID0gaWNlX3dyaXRlX3F1
YWRfcmVnX2U4MjIoaHcsIHF1YWQsIGxvX2FkZHIsIDApOwo+PiArCWVyciA9IGljZV9yZWFkX3Bo
eV90c3RhbXBfZTgyMihodywgcXVhZCwgaWR4LCAmdW51c2VkX3RzdGFtcCk7Cj4+ICAgCWlmIChl
cnIpIHsKPj4gLQkJaWNlX2RlYnVnKGh3LCBJQ0VfREJHX1BUUCwgIkZhaWxlZCB0byBjbGVhciBs
b3cgUFRQIHRpbWVzdGFtcCByZWdpc3RlciwgZXJyICVkXG4iLAo+PiAtCQkJICBlcnIpOwo+PiAt
CQlyZXR1cm4gZXJyOwo+PiAtCX0KPj4gLQo+PiAtCWVyciA9IGljZV93cml0ZV9xdWFkX3JlZ19l
ODIyKGh3LCBxdWFkLCBoaV9hZGRyLCAwKTsKPj4gLQlpZiAoZXJyKSB7Cj4+IC0JCWljZV9kZWJ1
ZyhodywgSUNFX0RCR19QVFAsICJGYWlsZWQgdG8gY2xlYXIgaGlnaCBQVFAgdGltZXN0YW1wIHJl
Z2lzdGVyLCBlcnIgJWRcbiIsCj4+IC0JCQkgIGVycik7Cj4+ICsJCWljZV9kZWJ1ZyhodywgSUNF
X0RCR19QVFAsICJGYWlsZWQgdG8gcmVhZCB0aGUgdGltZXN0YW1wIHJlZ2lzdGVyIGZvciBxdWFk
ICV1LCBpZHggJXUsIGVyciAlZFxuIiwKPj4gKwkJCSAgcXVhZCwgaWR4LCBlcnIpOwo+PiAgIAkJ
cmV0dXJuIGVycjsKPj4gICAJfQo+PiAgIAo+PiBAQCAtMjY1NywyOCArMjY1NCwzOSBAQCBpY2Vf
cmVhZF9waHlfdHN0YW1wX2U4MTAoc3RydWN0IGljZV9odyAqaHcsIHU4IGxwb3J0LCB1OCBpZHgs
IHU2NCAqdHN0YW1wKQo+PiAgICAqIEBscG9ydDogdGhlIGxwb3J0IHRvIHJlYWQgZnJvbQo+PiAg
ICAqIEBpZHg6IHRoZSB0aW1lc3RhbXAgaW5kZXggdG8gcmVzZXQKPj4gICAgKgo+PiAtICogQ2xl
YXIgYSB0aW1lc3RhbXAsIHJlc2V0dGluZyBpdHMgdmFsaWQgYml0LCBmcm9tIHRoZSB0aW1lc3Rh
bXAgYmxvY2sgb2YgdGhlCj4+IC0gKiBleHRlcm5hbCBQSFkgb24gdGhlIEU4MTAgZGV2aWNlLgo+
PiArICogUmVhZCB0aGUgdGltZXN0YW1wIGFuZCB0aGVuIGZvcmNpYmx5IG92ZXJ3cml0ZSBpdHMg
dmFsdWUgdG8gY2xlYXIgdGhlIHZhbGlkCj4+ICsgKiBiaXQgZnJvbSB0aGUgdGltZXN0YW1wIGJs
b2NrIG9mIHRoZSBleHRlcm5hbCBQSFkgb24gdGhlIEU4MTAgZGV2aWNlLgo+PiArICoKPj4gKyAq
IFRoaXMgZnVuY3Rpb24gc2hvdWxkIG9ubHkgYmUgY2FsbGVkIG9uIGFuIGlkeCB3aG9zZSBiaXQg
aXMgc2V0IGFjY29yZGluZyB0bwo+PiArICogaWNlX2dldF9waHlfdHhfdHN0YW1wX3JlYWR5Lgo+
PiAgICAqLwo+PiAgIHN0YXRpYyBpbnQgaWNlX2NsZWFyX3BoeV90c3RhbXBfZTgxMChzdHJ1Y3Qg
aWNlX2h3ICpodywgdTggbHBvcnQsIHU4IGlkeCkKPj4gICB7Cj4+ICAgCXUzMiBsb19hZGRyLCBo
aV9hZGRyOwo+PiArCXU2NCB1bnVzZWRfdHN0YW1wOwo+PiAgIAlpbnQgZXJyOwo+PiAgIAo+PiAr
CWVyciA9IGljZV9yZWFkX3BoeV90c3RhbXBfZTgxMChodywgbHBvcnQsIGlkeCwgJnVudXNlZF90
c3RhbXApOwo+PiArCWlmIChlcnIpIHsKPj4gKwkJaWNlX2RlYnVnKGh3LCBJQ0VfREJHX1BUUCwg
IkZhaWxlZCB0byByZWFkIHRoZSB0aW1lc3RhbXAgcmVnaXN0ZXIgZm9yIGxwb3J0ICV1LCBpZHgg
JXUsIGVyciAlZFxuIiwKPj4gKwkJCSAgbHBvcnQsIGlkeCwgZXJyKTsKPj4gKwkJcmV0dXJuIGVy
cjsKPj4gKwl9Cj4+ICsKPj4gICAJbG9fYWRkciA9IFRTX0VYVChMT1dfVFhfTUVNT1JZX0JBTktf
U1RBUlQsIGxwb3J0LCBpZHgpOwo+PiAgIAloaV9hZGRyID0gVFNfRVhUKEhJR0hfVFhfTUVNT1JZ
X0JBTktfU1RBUlQsIGxwb3J0LCBpZHgpOwo+PiAgIAo+PiAgIAllcnIgPSBpY2Vfd3JpdGVfcGh5
X3JlZ19lODEwKGh3LCBsb19hZGRyLCAwKTsKPj4gICAJaWYgKGVycikgewo+PiAtCQlpY2VfZGVi
dWcoaHcsIElDRV9EQkdfUFRQLCAiRmFpbGVkIHRvIGNsZWFyIGxvdyBQVFAgdGltZXN0YW1wIHJl
Z2lzdGVyLCBlcnIgJWRcbiIsCj4+IC0JCQkgIGVycik7Cj4+ICsJCWljZV9kZWJ1ZyhodywgSUNF
X0RCR19QVFAsICJGYWlsZWQgdG8gY2xlYXIgbG93IFBUUCB0aW1lc3RhbXAgcmVnaXN0ZXIgZm9y
IGxwb3J0ICV1LCBpZHggJXUsIGVyciAlZFxuIiwKPj4gKwkJCSAgbHBvcnQsIGlkeCwgZXJyKTsK
Pj4gICAJCXJldHVybiBlcnI7Cj4+ICAgCX0KPj4gICAKPj4gICAJZXJyID0gaWNlX3dyaXRlX3Bo
eV9yZWdfZTgxMChodywgaGlfYWRkciwgMCk7Cj4+ICAgCWlmIChlcnIpIHsKPj4gLQkJaWNlX2Rl
YnVnKGh3LCBJQ0VfREJHX1BUUCwgIkZhaWxlZCB0byBjbGVhciBoaWdoIFBUUCB0aW1lc3RhbXAg
cmVnaXN0ZXIsIGVyciAlZFxuIiwKPj4gLQkJCSAgZXJyKTsKPj4gKwkJaWNlX2RlYnVnKGh3LCBJ
Q0VfREJHX1BUUCwgIkZhaWxlZCB0byBjbGVhciBoaWdoIFBUUCB0aW1lc3RhbXAgcmVnaXN0ZXIg
Zm9yIGxwb3J0ICV1LCBpZHggJXUsIGVyciAlZFxuIiwKPj4gKwkJCSAgbHBvcnQsIGlkeCwgZXJy
KTsKPj4gICAJCXJldHVybiBlcnI7Cj4+ICAgCX0KPj4gICAKPj4gQEAgLTMzMjYsMTQgKzMzMzQs
MTggQEAgaW50IGljZV9yZWFkX3BoeV90c3RhbXAoc3RydWN0IGljZV9odyAqaHcsIHU4IGJsb2Nr
LCB1OCBpZHgsIHU2NCAqdHN0YW1wKQo+PiAgIH0KPj4gICAKPj4gICAvKioKPj4gLSAqIGljZV9j
bGVhcl9waHlfdHN0YW1wIC0gQ2xlYXIgYSB0aW1lc3RhbXAgZnJvbSB0aGUgdGltZXN0YW1wIGJs
b2NrCj4+ICsgKiBpY2VfY2xlYXJfcGh5X3RzdGFtcCAtIERyb3AgYSB0aW1lc3RhbXAgZnJvbSB0
aGUgdGltZXN0YW1wIGJsb2NrCj4+ICAgICogQGh3OiBwb2ludGVyIHRvIHRoZSBIVyBzdHJ1Y3QK
Pj4gICAgKiBAYmxvY2s6IHRoZSBibG9jayB0byByZWFkIGZyb20KPj4gICAgKiBAaWR4OiB0aGUg
dGltZXN0YW1wIGluZGV4IHRvIHJlc2V0Cj4+ICAgICoKPj4gLSAqIENsZWFyIGEgdGltZXN0YW1w
LCByZXNldHRpbmcgaXRzIHZhbGlkIGJpdCwgZnJvbSB0aGUgdGltZXN0YW1wIGJsb2NrLiBGb3IK
Pj4gLSAqIEU4MjIgZGV2aWNlcywgdGhlIGJsb2NrIGlzIHRoZSBxdWFkIHRvIGNsZWFyIGZyb20u
IEZvciBFODEwIGRldmljZXMsIHRoZQo+PiAtICogYmxvY2sgaXMgdGhlIGxvZ2ljYWwgcG9ydCB0
byBjbGVhciBmcm9tLgo+PiArICogRHJvcCBhIHRpbWVzdGFtcCBmcm9tIHRoZSB0aW1lc3RhbXAg
YmxvY2sgYnkgcmVhZGluZyBpdC4gVGhpcyB3aWxsIHJlc2V0Cj4+ICsgKiB0aGUgbWVtb3J5IHN0
YXR1cyBiaXQgYWxsb3dpbmcgdGhlIHRpbWVzdGFtcCBpbmRleCB0byBiZSByZXVzZWQuIEZvciBF
ODIyCj4+ICsgKiBkZXZpY2VzLCB0aGUgYmxvY2sgaXMgdGhlIHF1YWQgdG8gY2xlYXIgZnJvbS4g
Rm9yIEU4MTAgZGV2aWNlcywgdGhlIGJsb2NrCj4+ICsgKiBpcyB0aGUgbG9naWNhbCBwb3J0IHRv
IGNsZWFyIGZyb20uCj4+ICsgKgo+PiArICogVGhpcyBmdW5jdGlvbiBzaG91bGQgb25seSBiZSBj
YWxsZWQgb24gYSB0aW1lc3RhbXAgaW5kZXggd2hvc2UgdmFsaWQgYml0Cj4+ICsgKiBpcyBzZXQg
YWNjb3JkaW5nIHRvIGljZV9nZXRfcGh5X3R4X3RzdGFtcF9yZWFkeS4KPj4gICAgKi8KPj4gICBp
bnQgaWNlX2NsZWFyX3BoeV90c3RhbXAoc3RydWN0IGljZV9odyAqaHcsIHU4IGJsb2NrLCB1OCBp
ZHgpCj4+ICAgewo+IAo+IEFzIHRoZSBmdW5jdGlvbiBuYW1lIHN0aWxsIGNvbnRhaW5zICpjbGVh
ciosIEkgYW0gdW5zdXJlLCB3aGF0IHRoZSAKPiBkaWZmZXJlbmNlIGJldHdlZW4gKmRyb3AqIGFu
ZCAqY2xlYXIqIGlzLgo+IAoKSSdsbCB0cnkgdG8gY2xhcmlmeSB0aGlzIGluIHYyLgoKSXQgdHVy
bnMgb3V0IHRoYXQgb25lIG9mIG15IGNvbGxlYWd1ZXMgYmVsaWV2ZXMgdGhpcyBsYXN0IGNoYW5n
ZSBzaG91bGQKYmUgb24gbmV0IGFzIGEgZml4LCBzbyBJIGFtIGdvaW5nIHRvIHNlbmQgdGhhdCBm
aXJzdC4KClRoYW5rcywKSmFrZQoKPiAKPiBLaW5kIHJlZ2FyZHMsCj4gCj4gUGF1bApfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4g
bWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1
b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
