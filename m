Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF10875D07F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jul 2023 19:18:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 035124060D;
	Fri, 21 Jul 2023 17:18:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 035124060D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689959920;
	bh=W5AKrUotXp/RSbKKV1kAgGtH4VxhQgQdMYkGsq7fKZg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Vg7y98uZQOjkWg29SXEFz2piDYiyp8Uqk+0zkIo5+PExLun7MSbAzqjyHdQ/QjZMH
	 VMBKcxJBeU/YlfwDt4Tc07122FereYo8RzavmDBX+Tsonl3zvvOJ+MAhaXemqXe6y1
	 xp3xozySHTV5R9CEAmdEyVr/olOlbjHEylxTYnV1n+fH+NA3qa5KVbseDwXH1pVWij
	 0BsR+m5xW+s5C0GUh6qIfxNRSZP+ZPS/NsilK3gYMjMTRCNlxzWUIJp5IiozNQZQUT
	 r59YJuYe1jOkPj2a3ZojYm9nb/HcjXpJU1HA3X3twS7xeGuRVUBarr7AvWOtmAamus
	 g4QM8hcY5cnGg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GQ7hZqsPqkJf; Fri, 21 Jul 2023 17:18:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AA747405CB;
	Fri, 21 Jul 2023 17:18:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AA747405CB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A18EF1BF982
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jul 2023 17:18:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7BBC183AAB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jul 2023 17:18:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7BBC183AAB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8tiBF9MHLir4 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Jul 2023 17:18:32 +0000 (UTC)
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7B98083AAA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jul 2023 17:18:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7B98083AAA
X-IronPort-AV: E=McAfee;i="6600,9927,10778"; a="357066574"
X-IronPort-AV: E=Sophos;i="6.01,222,1684825200"; d="scan'208";a="357066574"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2023 10:15:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="868298933"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 21 Jul 2023 10:15:26 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 21 Jul 2023 10:15:25 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 21 Jul 2023 10:15:25 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 21 Jul 2023 10:15:25 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 21 Jul 2023 10:15:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OvsRr48k2qr/VRxZnm38xFG0v48MovLu5yEhuutWTcmR/QwHW1dV6QH0DVx3eraEHjaksQdVEyLwMdEfZrxWwjHeajyWL7elrhPVTljOrvHZQpdQaTUV2/tW3p/SNVnCK3zOizx9/rdg8fypOhnLFkVLZYClkRyI5Hb/IKhW0QJklHxV8RfVN7QYrLfNvUnhqP+iP4fUWUMVnJjnP/xQE2i/KQPHW3wTnXzn8I0wcJztQQfimUY8FvjzarIY90QoyOWyEAn4Rwq4IW+1rky/cN6ANBfTUpgVNmh/t3asXPfbbIci+fDnj80KM02dLLSZBCBQMjc7Ch4AEQlQIz/3/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vX2KNK3C1hq/MD9cEu6EMk6MjRk5QMyV6y1tUDsLRUQ=;
 b=UXqAxw+IROl0L5n80zRtonRxYV6MJt4JUUribfIFQxgcwVYo5vBApb6yaor+z0sT6NQRHZt2/RIGY1GSeT4AJUqUdcEuHia/hTU7cA0n8i8MlXJ8Up20VT9trwwt/bFpnlr/ZHozDsCKgP7DxNPDo+sJ4AtH8BoDlToK6OQ7S43Fl0JUv1bE+9XIQJ6n5CPNrHDLbvWGQVI9kBKbDCAiZj5cgyt4m6eH3lnARWqEG3yTgqYojZ3RLB6HXnwbQ/HGL8AA2MdYZ7Vi/iWPlkUwEfsUpvWNwYDeOAhp/4+3UXdd0bZ+P5IGungqdM7ZvuAZMWAc0UEabG66OYkjGQI9Jg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by CO1PR11MB5186.namprd11.prod.outlook.com (2603:10b6:303:9b::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.32; Fri, 21 Jul
 2023 17:15:23 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468%6]) with mapi id 15.20.6609.024; Fri, 21 Jul 2023
 17:15:23 +0000
Message-ID: <a4a27096-d231-631c-141f-6aee3b660cdc@intel.com>
Date: Fri, 21 Jul 2023 10:15:20 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Alessio Igor Bogani <alessio.bogani@elettra.eu>,
 <intel-wired-lan@lists.osuosl.org>
References: <26d9aed2-6eba-9f19-3948-8d6fb8c9768b@intel.com>
 <20230720145029.19674-1-alessio.bogani@elettra.eu>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230720145029.19674-1-alessio.bogani@elettra.eu>
X-ClientProxiedBy: MW4PR03CA0045.namprd03.prod.outlook.com
 (2603:10b6:303:8e::20) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|CO1PR11MB5186:EE_
X-MS-Office365-Filtering-Correlation-Id: 88a7ba9d-9f0e-40d2-a235-08db8a0e1188
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: p+nbx1/JnLLIQGc+j7kn4weP05aKj5E86Y9EWM1tCkOAF7nUuOLRaqcpYESI/M7HgSlMI/eff7o8GDleSCMyDyHTquK0n159jJWTXcfRF2QXnXYDe+YF7tYiEdbGLNlzzgv+L5Lu8oEkrQu04GtHKINpBIxMqQaoLWCUSnHhBhPxizodv9sER2sZZg1vFrz8EBggecARx92gWECWpHnVkD+OhxEuWsJypTD8z67GSpQx8GYsrwlQyaT+LxsPQtX6Tf3/UhNXP64Ckh1JJ0KIpaQMdb/+/bqC7h4NlRvxlpF3l/cJ86XiToNZPTSvHdRoWRjwGMXKgcz5JQyjToRu4jcYrI5jx9VcFhTGRa0v7W5Gre2AmPDqJPKsQU/J9pm0VYbLarjgc3VhnkOfbsPdwa8AcfeVntcnELkNntlmXiqeNjipEabDKv1avq8hhCl9tYKB8D7DBf0wu2WZpFN0LFHjifWnEK6C3Wb3DgvoxtBc3CTmzKDTobkRqQPqHdNHIdkLt5fJu1kvYcZz8M2k+myNbSjBmvO3dGaNbyMYIMcshVMhsch4eHNEJbIlyWnvYVQu2iiimsuZNZbOaSiVsg3HSA0tDTku/42/Wds57SM5VmCb62vZASoVJgzxXdTJHdWIMV9vako0Lf8UeHr13g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(366004)(376002)(396003)(39860400002)(346002)(451199021)(41300700001)(6512007)(8676002)(8936002)(2906002)(66556008)(66946007)(6486002)(31686004)(86362001)(66476007)(316002)(36756003)(2616005)(5660300002)(38100700002)(83380400001)(186003)(26005)(31696002)(82960400001)(53546011)(6506007)(478600001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Nlk2MHBzWjFVdlp6QU5QNnBsT1NHTlAxZGRxNEl2RE0rOGgyZXhRMVdrTDZS?=
 =?utf-8?B?cE5JeWRDTklFTUFSTndDY3gxMEhVR2h6QXlKTW1pSUx2NGZzbFN4Rlk0Qk9U?=
 =?utf-8?B?NkJnZHk0c0NPTmxNdUxhbHJvTkUwMzkyN2JsaFRWUXJaOUdUSlNHTmtORzVM?=
 =?utf-8?B?UXlzZ3E5WmJ4WDVnWjNPUzlGZUwyYVllL20yQlN3WkM2c0FxcFVKVTMxWWNY?=
 =?utf-8?B?RTM0eHd3S2plckE4dmJVbG9TZkV1Nko3ckNQVTVvZWxzamIzUUZ6TC9wMEJs?=
 =?utf-8?B?cDZaTEEzRWtETDZMeWlUcVEwSFZIbXhleUFEVUZCQUJJVU9VSVVTOXc0T1pa?=
 =?utf-8?B?cEh5WDdiZXlmZzArVkFZeVpseHZ0ZUU3NHRXdlJQc24yTjlVd1p3TTZmeUVD?=
 =?utf-8?B?ZE1FbENZTENpbnVTaVd3SWVxUjZFenF4eGk2Nlh6SFErckl6ejI1ckd6Mmlp?=
 =?utf-8?B?dWVWYjRpRU1aZHJrRUYveEdKb2dXU1BvMmFseUNGM3pseGR2TkVxdkxwYTV0?=
 =?utf-8?B?dUpQLzZhSkNJVFNJVVRJL1RjWjVnQ0hWMGFJb0pIdlVDUW9pUGF6VTdEVlhN?=
 =?utf-8?B?blhxdXFUUVB6aEhIL0g3aUEyN3dyRlprSEJEVXFpZmxIdHdPcEJGbWFHb0w2?=
 =?utf-8?B?UWFrWlNja29TOE1UdG0zZWpDRVFBRE8zdFVZdlJRVUF3ejJRSmhjWlNOekgz?=
 =?utf-8?B?OXBMTGZWWlR1blNIMkRlUmdRYWZEZ05zbUN2QU04RXFqZnlHdE9CdVk4T3NQ?=
 =?utf-8?B?TEhMVStzcjZqOGlJT05LTXQ0MHZYV2JhWXFIMHNLellqckdKNUkyM3dXRWJh?=
 =?utf-8?B?Q0ZaaS9CTDFLTHVZSmpsdHZITzlJWmRUYjE3OTBlVGpuWjNMUlFlTWltTXYw?=
 =?utf-8?B?eTZEOVlKemxGdUg1OHNjS3ZqVmRxZlI0OTR5NzZ3WC95SytSSmRtVUYyeEhj?=
 =?utf-8?B?N2d3ZnRoa2F2ODMyTUVKeXYydmNVNlFtMzFDd29ielIyNTZGUWhPbVVVaVJN?=
 =?utf-8?B?R0VuU09DRTdCSmhabjJGcWNIQ0cyTHBuSVlZNVVlRjFWQ2dMWlZycWRJcEtv?=
 =?utf-8?B?d1pnUTBKNWU3QURqRGN5TkxFcDhhMGFRNkU2TDYweHlKenRPcDM4QXd2eDV6?=
 =?utf-8?B?cDlvUzhpMGFXejh4emlRRTd2UW5QZWJZb0xDdy9lclVaZDQwb3pUakVQamxy?=
 =?utf-8?B?R0JveHJBK28rWlAwcE5SYmNzZWpvL3VHeGxaV09hRlh2UURXaENzVHZJaS9m?=
 =?utf-8?B?cStHdzNzTVcxWFVrZ2VjMktwMTFJWmIrcTFLNXJ3UUpBY0o5Tk5teW5IbjIr?=
 =?utf-8?B?MHE2a3dYMy9zNHZIaVR0OFZWZWVuNlRrbEVoOXM3OU92eEZJMFBLWTM5aS9t?=
 =?utf-8?B?RUsvcEVEdDNza1dlZGVhQ2FhdzF5aG0vSWxoZEQySWxWZE9CTHpGNFQ1Qlda?=
 =?utf-8?B?YStnUWpIWTZOQzE4WFk1cFhtZHUvbVFxSGYrK1E0VUlNbGpLRXNjaWFvSkRY?=
 =?utf-8?B?RmRQY3RJYzJHK0tXa1hVb0VnTXRyZ25UOGYyWU5DS1czeDIzeE9OZUFLR2Qy?=
 =?utf-8?B?SDI2ckh2OThpNmZSWUc2QmhBWmE4dEtLMHFXYjVNRTIrNmNianIyWGxJSnFu?=
 =?utf-8?B?S1YxRG9tRWZRSisyUFJrL1BhTllqb1NMVnNtU2ZWc1kwNGdIWCtmcm8zQlFN?=
 =?utf-8?B?V2xNWWppbkllRjJFWDVPdFNNU01OY1JtT0pseFlYWmtzVW9xZlVtbXpUNlpt?=
 =?utf-8?B?SzZQWkdFdWd3OVBvVzZjRGJUcDAyTkJmVzZFK0NoVk03Nk14bVFnRzdYekFT?=
 =?utf-8?B?b0tEcjk0cG5OQ3p2WnI2dnZ0RUNNcGFURjNKS3JFR3ZCbXNrR0NaaG5SSEZ1?=
 =?utf-8?B?ZnBJajBJQm0vOTFZY0xodTZESFZqektod3FmazhxVnY2QXkwN3lHenFWTGhi?=
 =?utf-8?B?aldQWVlBQVdhK09PZ1RpSjBRV2p2VzBYUk50UUhLVFJTMHZVbTF0R1QxNDdp?=
 =?utf-8?B?d1hzRkZEU3BnUWJpc1kra0xheGp6K2RQeCtnbktGOC9hc1FXQjNVVTE4c3lu?=
 =?utf-8?B?TGVTaWszdVB4Tjg1dHFzQURPVTlRNjdsKzdJMkdqNzdBemVqUysvYXhpckVx?=
 =?utf-8?B?VDlSMUVDRWF0Z0FWWVBPRDNuaHJsc1JHMmxnR2hjTFVibFNrQmtBWnhlNkZ6?=
 =?utf-8?B?dVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 88a7ba9d-9f0e-40d2-a235-08db8a0e1188
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jul 2023 17:15:23.3878 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BcQ+8sTMINzQyn3IUTblyACdchkXmVoNCpEKDSnI/dchboZe7qF5gN+9NoBCYUaYRtPdrZbxbK2BLisY1SaS+T+Uopgxr/OwPM+xAtQuPcQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5186
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689959912; x=1721495912;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=WPlTurVtxXY/Vdl/rwU2FnMMyM+JmGJqPZgUtTwDk5A=;
 b=DS2wsQZsDa61H8B1GHGH63nrDMqHKEbj7Kxou146AO+IrVyOiZXUsgno
 6jwCEwXjhIUoWlC3kBTedkywdfjvbvIBv/jkUkp7sFdvsTNfcDxleVxTH
 gsyyZsbArP42pDkDoK0kKU6OD5nigpDw/4qe60GQ4C+tdUxE63bytDfDz
 eHXuYeNGFrT/5yLK7uMC2mjKJ9DXewqV90kTvY72IdsECUxuYQbcgNiLS
 ypWbcfsbzfnMz9YAS9d2TWfidB9SRCirz7EUHwSgk3T8+0t5eihg5mmVU
 Pr8NcGx+wZag7D0EVLBBcf4Rddz+DPqGsheBxpp5WEAX8Avw0DVjv3Q/I
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DS2wsQZs
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] igb: Avoid starting unnecessary
 workqueues
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

On 7/20/2023 7:50 AM, Alessio Igor Bogani wrote:

Please designate a tree for your patch (net or net-next). As you have a 
Fixes, I assume it's net, but please be explicit.

> if ptp_clock_register() fails or CONFIG_PTP isn't enabled avoid starting PTP related workqueues.
> 
> In this way we can fix this:
>   BUG: unable to handle page fault for address: ffffc9000440b6f8
>   #PF: supervisor read access in kernel mode
>   #PF: error_code(0x0000) - not-present page
>   PGD 100000067 P4D 100000067 PUD 1001e0067 PMD 107dc5067 PTE 0
>   Oops: 0000 [#1] PREEMPT SMP
>   [...]
>   Workqueue: events igb_ptp_overflow_check
>   RIP: 0010:igb_rd32+0x1f/0x60
>   [...]
>   Call Trace:
>    igb_ptp_read_82580+0x20/0x50
>    timecounter_read+0x15/0x60
>    igb_ptp_overflow_check+0x1a/0x50
>    process_one_work+0x1cb/0x3c0
>    worker_thread+0x53/0x3f0
>    ? rescuer_thread+0x370/0x370
>    kthread+0x142/0x160
>    ? kthread_associate_blkcg+0xc0/0xc0
>    ret_from_fork+0x1f/0x30
> 
> Fixes: 1f6e8178d685 ("igb: Prevent dropped Tx timestamps via work items and interrupts.")
> Fixes: d339b1331616 ("igb: add PTP Hardware Clock code")
> Signed-off-by: Alessio Igor Bogani <alessio.bogani@elettra.eu>
> ---
>   drivers/net/ethernet/intel/igb/igb_ptp.c | 24 ++++++++++++------------
>   1 file changed, 12 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_ptp.c b/drivers/net/ethernet/intel/igb/igb_ptp.c
> index 6f471b91f562..8165232052c8 100644
> --- a/drivers/net/ethernet/intel/igb/igb_ptp.c
> +++ b/drivers/net/ethernet/intel/igb/igb_ptp.c
> @@ -1390,18 +1390,6 @@ void igb_ptp_init(struct igb_adapter *adapter)
>   		return;
>   	}
>   
> -	spin_lock_init(&adapter->tmreg_lock);
> -	INIT_WORK(&adapter->ptp_tx_work, igb_ptp_tx_work);
> -
> -	if (adapter->ptp_flags & IGB_PTP_OVERFLOW_CHECK)
> -		INIT_DELAYED_WORK(&adapter->ptp_overflow_work,
> -				  igb_ptp_overflow_check);
> -
> -	adapter->tstamp_config.rx_filter = HWTSTAMP_FILTER_NONE;
> -	adapter->tstamp_config.tx_type = HWTSTAMP_TX_OFF;
> -
> -	igb_ptp_reset(adapter);
> -
>   	adapter->ptp_clock = ptp_clock_register(&adapter->ptp_caps,
>   						&adapter->pdev->dev);
>   	if (IS_ERR(adapter->ptp_clock)) {
> @@ -1411,6 +1399,18 @@ void igb_ptp_init(struct igb_adapter *adapter)
>   		dev_info(&adapter->pdev->dev, "added PHC on %s\n",
>   			 adapter->netdev->name);
>   		adapter->ptp_flags |= IGB_PTP_ENABLED;
> +
> +		spin_lock_init(&adapter->tmreg_lock);
> +		INIT_WORK(&adapter->ptp_tx_work, igb_ptp_tx_work);
> +
> +		if (adapter->ptp_flags & IGB_PTP_OVERFLOW_CHECK)
> +			INIT_DELAYED_WORK(&adapter->ptp_overflow_work,
> +					  igb_ptp_overflow_check);
> +
> +		adapter->tstamp_config.rx_filter = HWTSTAMP_FILTER_NONE;
> +		adapter->tstamp_config.tx_type = HWTSTAMP_TX_OFF;
> +
> +		igb_ptp_reset(adapter);

This concerns me that the PTP clock will be registered before 
initialization is complete/ready. I would prefer to see cleanup being 
done for the error case; have everything setup for the register, but 
remove the workqueues if we failed.

>   	}
>   }
>   
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
