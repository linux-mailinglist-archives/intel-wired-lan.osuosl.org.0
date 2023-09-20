Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CDEFE7A7968
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Sep 2023 12:36:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5BB2183906;
	Wed, 20 Sep 2023 10:36:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5BB2183906
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695206178;
	bh=vByQO3JuuEKZuU4HhGlEdtXHeRy0Zu8WWHhYWVSeNs4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=j+j7XFHWlt1kycPw29dxS+yeWoEsx4cJMRO1pm1vtKcKep6a0KXvmG2coipa5pLRU
	 ui65sHD0V9ZeNixAVp+gUipt5beZJGVK3uCXvkxG27kgMUMbd5L2+LJ3iSoc4wLh0B
	 LZQfXWd6BIO6vlGloDWXGxgGnddUe0ONVJ3BEC245mR/gnXOAntrUAeO555slNKbL8
	 ttnmNYOUIYHD+KNMvlYn4Ruc23apKiNCxaXnSLdLYtdRieMeVs312GG4uhlWlsOHvW
	 dskNp957TV+iokwoybpDuxDBJ+Kni+FMM5Wdv3iildZsM3GWOn0/S9h/cfhVg0C+Tg
	 0VuoBFZk4OFQQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kpifo8pUldjG; Wed, 20 Sep 2023 10:36:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 97438821F8;
	Wed, 20 Sep 2023 10:36:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 97438821F8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BA9721BF470
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Sep 2023 10:36:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 961C960B9F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Sep 2023 10:36:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 961C960B9F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id deFCWUL54JDb for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Sep 2023 10:36:08 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3DB2760769
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Sep 2023 10:36:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3DB2760769
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="384032628"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="384032628"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 03:36:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="812094495"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="812094495"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Sep 2023 03:36:06 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 20 Sep 2023 03:36:06 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 20 Sep 2023 03:36:06 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 20 Sep 2023 03:36:06 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 20 Sep 2023 03:36:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IP+aJcybYDF+97Qwe9gFTpMHgiVt8S02rNA32mQ8KwsRz0LWOQw/O4sFJexBJ4Nmj1uarFMBkVR99Jps0B0Xw+CkkhFuKgl7DnJB4ePmnPN67HBhKfkqLbGnzqo8QMXsmM75R2crC+U2KtzgB2u/bwTb6MxGVtPa88xfyRHfdI3GIfwjj8ZFZgbZgVg+zfW1GgFz6lSly6n0AClozWjgA12vRh6GRxN0k1Z93byAWSbIn4d4JczykHvVpmjxN7nFkUMt4Fre11lPdQ3vRh52LN9RWWSg6pLcHt9i8WSSeFJe0MKdBpBQW9Wceggqe7MiRMR1mi4dyoBIiH1jbaHSFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R1Iv5cMW3NSQCZTR2htxEk+swyiDJK3ZILwU8rQlMdg=;
 b=aYtIjYcmOi8+zBCCRRNGs6rnNQhImIRMSpAKOvp2/AMQi7ejtwrhc41acPXMY1PIWXFEQWt5Rbp3yYagwFiEb7xZ+EWl8cj2RlO1X2c3xRPivMfYa99tFviNczIg8Zd4bHxtVWqSKU5D04W7/jMll42+kL7xiW7vVEjJ7lo+iEQHXsQa0LXrup59wu7XgUAcIh50rBp8C1mRXU11tL2hRDQh8vUH5E/2qrTaCELCP8KUY8gFOz6sFvIVIg0QH+4K71bw3/f8wYSm6KVGlls7wC3+Zno/iZSoK0kFcz5tmhbSiynKJBLjvEHh15lOGV5vEL9+b5c5QYblwmkxrP/4MA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by IA0PR11MB8335.namprd11.prod.outlook.com (2603:10b6:208:493::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.21; Wed, 20 Sep
 2023 10:36:00 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::7666:c666:e6b6:6e48]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::7666:c666:e6b6:6e48%4]) with mapi id 15.20.6792.026; Wed, 20 Sep 2023
 10:36:00 +0000
Message-ID: <3299d418-9f11-da7c-2dce-f23fef67eee2@intel.com>
Date: Wed, 20 Sep 2023 12:35:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Jacob Keller <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
References: <20230919233435.518620-1-jacob.e.keller@intel.com>
 <20230919233435.518620-3-jacob.e.keller@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20230919233435.518620-3-jacob.e.keller@intel.com>
X-ClientProxiedBy: FR2P281CA0164.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:99::14) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|IA0PR11MB8335:EE_
X-MS-Office365-Filtering-Correlation-Id: b1a441ff-d39e-491e-59d5-08dbb9c56154
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: p45CM8leEyndbOoc2pje4wteVY4SadanadsLwjygdI8d8H0km6h+rMcHR2B9B5NdaomUlDp0IXWmJAChut3m0wZmCwo5nS2IUBBHxlmwYw59khu+3Dt4dxp4RMZGxeA3ZZzX+NdzaAIZAkfuxVF2Ex3tCWOCzb2k4OL98IFDYhTWmBD3Blfm2RBiZRwgf1VQNyLNh0OfyF8ZdoGBR/C1uWZjCMuUVz+vF6nEJdv5Ws32i6ASJ8biD7Cq1YySFKxDp4vrTCJjtiMZruVpVEJ/8fb+GxazE9TA0ID7MkNYkVj3UTibn/9IyGaEu4YOD8wZeO6HikKmdVdLFOTno/DYnaEVLzZ9eM23elSXJpqHGLosB4qnweBfHvXitFIPtZheZj6DdEkm53YxzdXrFVBNolWb+ndPMHbXOfjjxrK2Smd0NvVNDkd0FrXmpyVprOahMtq2+CHL54gBtei9UOH4kv6cb7noQNaegAXT0QRcYgqmJZyRsQf3NTAVdupuau1AB7jKa8OZ4ep+zEf2vDCQBmuZjZDdlXpakkmAl3l1kQGVfebA2gpIMUWXz9qKacBqaUC7Vj+/vBjWPZVS8wIEx9vs/hubgTawr6LyFmyaIjIXxBIAvODy0Lk1PG0N4meqvUXCH8P0zLidk1MEdsH3Xg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(376002)(39860400002)(366004)(346002)(1800799009)(186009)(451199024)(83380400001)(6486002)(6506007)(6666004)(53546011)(5660300002)(26005)(66476007)(478600001)(6512007)(2906002)(66556008)(66946007)(316002)(110136005)(41300700001)(8676002)(8936002)(4326008)(30864003)(36756003)(31696002)(107886003)(38100700002)(82960400001)(86362001)(2616005)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c2gvOTRGL3Z0ZU1QeGlFVnVJWU1IS1U3Y05YR2QvaUxIU1VUTVQ5dlhGZjhE?=
 =?utf-8?B?TU8ydTZqazJDcUs5SklHZnZ4WkNRRTZDYXpiNTYxcWZsV3Y2WGFad2JaejlK?=
 =?utf-8?B?VGdRTFZvTnp2c1FtRTRsQ2x2UkZpWUFTZEM4UDlBY2hRQW9lYXRKUlBiM1cx?=
 =?utf-8?B?VndVdGhWcVFXUURxQTlpckdwNEhKZUZHcnRRdjlhWDR2MzB2ekhoRFZrWUNI?=
 =?utf-8?B?Ulh6S1dFd3hORm9TMmxEa3pNUFkvMnlYcUcxcXlPK2dEMHpKaUNqMmJUeFNX?=
 =?utf-8?B?NE9uWUFvanpmcFRJSGw4OXd1bFJsRUp2V3VvV2orR3pwMzNHNlFiQi9IS3Qw?=
 =?utf-8?B?UHBPZ21DZHRPSkM0d3BEVURmVFVYWmZKcFJiQVhuWXhvcCtNUlB2ZkptQVZ1?=
 =?utf-8?B?Qno3Umo4dTduRzVnZXhUWUlJTlFOcE03RENuSVU3OC9PV1pLR0xwS2dQR2pH?=
 =?utf-8?B?QXZQUnE1MjdYSUo0REZnVW5sVStZRjRoQnVPQU1sVllKYjk0M0Z0SS92MUNH?=
 =?utf-8?B?UmhLYWFxWWxwQzdaVzFlVi9tUHVGUXJZeDVmZ1dWdTE3WHR4L1gwYWdVV29X?=
 =?utf-8?B?QmgxNmFRTjZ4TkM4L0tzMlZwVmdFaFNaNy9pL1BJUHhxSlhGY3V0S1dXb1NG?=
 =?utf-8?B?YmdNc29wZ1Z5SUU3N1ZXRWRNRm5TMFNtSTlOQ2NONExhYzdMZHpSRlVZMEw1?=
 =?utf-8?B?Y1VyNDJaWEwxR1FXMmhHOFd2NGQrb0plSGx0REErc0htR0puV0gyUGxPTWJk?=
 =?utf-8?B?QmZ3aExOY25zWDRBNnJHVFAxMnVrV1VNdU80S1ZjZEk5M1FXTlZiT00xWWNa?=
 =?utf-8?B?Y1A4dkZrV2tsd3JneXlWNVF2Y2ord1Z0Tkg5a2ZGS0ovUkdUTEE3R1VMS0Jp?=
 =?utf-8?B?MEc3SHdCL3hVN2NrY2ZNWnNpNFNxVUxodjJXNHZoZjd0YUxMQzVWaWRjb2I3?=
 =?utf-8?B?K2FzeFFUcHFUakdSVFFQVU9sWldFb2p2NUU5Z3FHWDhvZU91RUdIYWp6SXNO?=
 =?utf-8?B?Y1dQOG5kbks2MVAzYjJqb3J4QkNSTW1rZ0dpaFZSNndaN0o1dTBabFV4U08r?=
 =?utf-8?B?NkJOVC96MDZyanJ3NG9UOWNCQXNKbVJEV2NIdm1JMkxVOGlEU3QxK3dtWXA0?=
 =?utf-8?B?b2FabG1vOVJLY2QzOEdqaE96b0txdjVVSGZTcXBQc2dmT3FwdDNzRWlXZ0Yy?=
 =?utf-8?B?bU5PZ29oRVpVT3ZUS1RsWTRqMGdKODArV240UUdhZHlMZWdIL0h6TU1TWjAr?=
 =?utf-8?B?NFczaEJkY3VpeDhJalJXcFJLZ1NyazVWbWtFcVN2RzFmNjJJK1pPV3lUWHFB?=
 =?utf-8?B?VFJRWlpZUlNwSFhQeXFSUEE2VVN5SVQxNnBGMkQxVVNKUGNKaEYzTGtVMFFm?=
 =?utf-8?B?OHZuemlRb01kSGdrNzY3YnRoc0xtejFQU3FsdW9YWHQrN25YRGNHdUc0NmRl?=
 =?utf-8?B?Tis5bm1BWFZaTTFIZnZHb0h2cDVOK1ZEMDlRZnJ5ZWx2U1dUU0grbjVib0E1?=
 =?utf-8?B?MlRKVFBBOFo1aW1BTzJxb3lYRVUrZjJSeDZQRzlQQ29LL0ptWFU3MjZMRjhS?=
 =?utf-8?B?Q2NteFlrNkJpdGRldDErNnE5QnhRREVMRDBCdGttQjE1ZDJaMEVJbFZFUnEw?=
 =?utf-8?B?WVFpOVZpa2dNM1V6OUdSZFF3RGhFSktISVdSMmtzOG1ucG9uREpLYWpZYnNu?=
 =?utf-8?B?RWcxTkU5S3BLUVYzOXdvcVpvQzRrMlhiWFF0cmRIcUlsK0JVMjlpSXIwSG1C?=
 =?utf-8?B?Umhma0x1RzM0TnFVS1l1UUphL1orMWU4bU5MRkgxek01S0Z2YVB0WnRiYS8x?=
 =?utf-8?B?cG9HaVNyWFR2ajNsZElVbUFyM3RLcmZpUkZQZS8rMUNsWXlsU3NOWXdrUlQv?=
 =?utf-8?B?aDZrc3B6WmtSNzNzb21DMWlQQjIxVmdRZmUranplRGdJTHRMSjZxaWNaMU1o?=
 =?utf-8?B?aERCaW9UNFhHR1B4OFJTblVqa2FTeXprdzM4aDd0Qy9YK29JYTRGUWFvdEFo?=
 =?utf-8?B?ZSt5UEREd2xDMkVCODBxbVcvNXRYckJHU0lHTm5GL1h2alpiUm9UQ2NENXc1?=
 =?utf-8?B?SzNwbDhxemM2S2J2cjBRUDk5bCsveEUvNGVBc1o0MU5oUnI4cFVkWEpNY3A0?=
 =?utf-8?B?cmtZc3luTWlLNzJ6WEkyci9ScnRMbzY3MTVYQUNzbk1hNTdVSVRmVDdRcXR2?=
 =?utf-8?B?a0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b1a441ff-d39e-491e-59d5-08dbb9c56154
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Sep 2023 10:35:59.8294 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +0bPy0pRjTJq9LvKEIM2CDIeAGUcTduRlcsKyQLwMsTjFB/k4SciQArzFHgYLOfEOAlQkKLUU7YTYly9rlgaEWdnwkxWaoMr+/PA4yOvspc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8335
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695206168; x=1726742168;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FkzrzaY3FRXaKOPscBMHw/OGMaFCYQzitCMWH/qgP24=;
 b=RyxXI5+cZeWXVk4USJLNFUFBo89ojPVlXBtCmVxdoXgqW6lbQQ9RR8nf
 BAGHOAjtUZkvXBvJsJac6+ZQwBM96ta/bpPUU27CovSDgbq+0y11dBGh8
 hR8SGrTPlpZXwykJCeVzcHiUhqcjiM1ZOKjch8Z3C4x3XaGnY9ttzcV96
 Gb9NnpmXVzQRV/F4gDpbcYhg6H/PDpDjVxCzqQWMHDliIFnK81Ji8FXSg
 Lxc/oj0xFu0uGBPHDyUuWHOxApKTMTWDgnvNz7e5uTiCCKNcUsSZml6cr
 zdmMJvYlAXz2eWc2vJON8kzScWzGDLwB/mNFzIIiwo0mNXZ9xNIkuFSTy
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RyxXI5+c
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/4] ice: move netlist check
 functions to ice_common.c
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
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/20/23 01:34, Jacob Keller wrote:
> The ice_ptp_hw.c file has a few functions which check for whether the
> device netlist has a node indicating hardware support for certain features.
> These checks don't really make sense to be in ice_ptp_hw.c. In addition,
> their names could be confusing as they just say "is_present" but really are
> checking the netlist.
> 
> Additionally, these functions are only compiled into the ice module if
> CONFIG_PTP_1588_CLOCK is enabled. They are used in ice_lib.c which is
> unconditionally compiled, so this can result in build errors if the PTP
> support is disabled:
> 
> ld: vmlinux.o: in function `ice_init_feature_support':
> (.text+0x8702b8): undefined reference to `ice_is_phy_rclk_present'
> ld: (.text+0x8702cd): undefined reference to `ice_is_cgu_present'
> ld: (.text+0x8702d9): undefined reference to `ice_is_clock_mux_present_e810t'
> 

You have two commits that combined are fixing a build error,
one of which is realatively small (1st in this series).
Could you please combine them, if only to provide Fixes: tag?

> To fix this, we need to define these functions outside of ice_ptp.c or
> ice_ptp_hw.c.
> 
> The ice_common.c already hace ice_is_gps_in_netlist. Move the similar

hace :)

Codewise it looks good, I recall some of the code already :D

> functions in ice_ptp_hw.c into ice_common.c, renaming them to use the
> postfix "_in_netlist" to match the GPS check. Where appropriate, also drop
> the _e810t postfix as well.
> 
> This also makes the ice_find_netlist_node only called from within
> ice_common.c, so its safe to mark it static and stop declaring it in the
> ice_common.h header.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_common.c | 66 ++++++++++++++++++++-
>   drivers/net/ethernet/intel/ice/ice_common.h |  6 +-
>   drivers/net/ethernet/intel/ice/ice_lib.c    |  6 +-
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 66 ---------------------
>   drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  3 -
>   5 files changed, 69 insertions(+), 78 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index bcf7d9c56248..12c09374c2be 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -477,9 +477,8 @@ ice_aq_get_netlist_node(struct ice_hw *hw, struct ice_aqc_get_link_topo *cmd,
>    * netlist. When found ICE_SUCCESS is returned, ICE_ERR_DOES_NOT_EXIST
>    * otherwise. If node_handle provided, it would be set to found node handle.
>    */
> -int
> -ice_find_netlist_node(struct ice_hw *hw, u8 node_type_ctx, u8 node_part_number,
> -		      u16 *node_handle)
> +static int ice_find_netlist_node(struct ice_hw *hw, u8 node_type_ctx,
> +				 u8 node_part_number, u16 *node_handle)
>   {
>   	struct ice_aqc_get_link_topo cmd;
>   	u8 rec_node_part_number;
> @@ -2552,6 +2551,67 @@ bool ice_is_pf_c827(struct ice_hw *hw)
>   	return false;
>   }
>   
> +/**
> + * ice_is_phy_rclk_in_netlist
> + * @hw: pointer to the hw struct
> + *
> + * Check if the PHY Recovered Clock device is present in the netlist
> + */
> +bool ice_is_phy_rclk_in_netlist(struct ice_hw *hw)
> +{
> +	if (ice_find_netlist_node(hw, ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_CTRL,
> +				  ICE_AQC_GET_LINK_TOPO_NODE_NR_C827, NULL) &&
> +	    ice_find_netlist_node(hw, ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_CTRL,
> +				  ICE_AQC_GET_LINK_TOPO_NODE_NR_E822_PHY, NULL))
> +		return false;
> +
> +	return true;
> +}
> +
> +/**
> + * ice_is_clock_mux_in_netlist
> + * @hw: pointer to the hw struct
> + *
> + * Check if the Clock Multiplexer device is present in the netlist
> + */
> +bool ice_is_clock_mux_in_netlist(struct ice_hw *hw)
> +{
> +	if (ice_find_netlist_node(hw, ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_MUX,
> +				  ICE_AQC_GET_LINK_TOPO_NODE_NR_GEN_CLK_MUX,
> +				  NULL))
> +		return false;
> +
> +	return true;
> +}
> +
> +/**
> + * ice_is_cgu_in_netlist - check for CGU presence
> + * @hw: pointer to the hw struct
> + *
> + * Check if the Clock Generation Unit (CGU) device is present in the netlist.
> + * Save the CGU part number in the hw structure for later use.
> + * Return:
> + * * true - cgu is present
> + * * false - cgu is not present
> + */
> +bool ice_is_cgu_in_netlist(struct ice_hw *hw)
> +{
> +	if (!ice_find_netlist_node(hw, ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_CTRL,
> +				   ICE_AQC_GET_LINK_TOPO_NODE_NR_ZL30632_80032,
> +				   NULL)) {
> +		hw->cgu_part_number = ICE_AQC_GET_LINK_TOPO_NODE_NR_ZL30632_80032;
> +		return true;
> +	} else if (!ice_find_netlist_node(hw,
> +					  ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_CTRL,
> +					  ICE_AQC_GET_LINK_TOPO_NODE_NR_SI5383_5384,
> +					  NULL)) {
> +		hw->cgu_part_number = ICE_AQC_GET_LINK_TOPO_NODE_NR_SI5383_5384;
> +		return true;
> +	}
> +
> +	return false;
> +}
> +
>   /**
>    * ice_is_gps_in_netlist
>    * @hw: pointer to the hw struct
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
> index 59969f702dae..4a75c0c89301 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.h
> +++ b/drivers/net/ethernet/intel/ice/ice_common.h
> @@ -93,11 +93,11 @@ ice_aq_get_phy_caps(struct ice_port_info *pi, bool qual_mods, u8 report_mode,
>   		    struct ice_aqc_get_phy_caps_data *caps,
>   		    struct ice_sq_cd *cd);
>   bool ice_is_pf_c827(struct ice_hw *hw);
> +bool ice_is_phy_rclk_in_netlist(struct ice_hw *hw);
> +bool ice_is_clock_mux_in_netlist(struct ice_hw *hw);
> +bool ice_is_cgu_in_netlist(struct ice_hw *hw);
>   bool ice_is_gps_in_netlist(struct ice_hw *hw);
>   int
> -ice_find_netlist_node(struct ice_hw *hw, u8 node_type_ctx, u8 node_part_number,
> -		      u16 *node_handle);
> -int
>   ice_aq_get_netlist_node(struct ice_hw *hw, struct ice_aqc_get_link_topo *cmd,
>   			u8 *node_part_number, u16 *node_handle);
>   int
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> index b96fbf76ca6d..6e70d678f323 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -3995,14 +3995,14 @@ void ice_init_feature_support(struct ice_pf *pf)
>   	case ICE_DEV_ID_E810_XXV_QSFP:
>   	case ICE_DEV_ID_E810_XXV_SFP:
>   		ice_set_feature_support(pf, ICE_F_DSCP);
> -		if (ice_is_phy_rclk_present(&pf->hw))
> +		if (ice_is_phy_rclk_in_netlist(&pf->hw))
>   			ice_set_feature_support(pf, ICE_F_PHY_RCLK);
>   		/* If we don't own the timer - don't enable other caps */
>   		if (!ice_pf_src_tmr_owned(pf))
>   			break;
> -		if (ice_is_cgu_present(&pf->hw))
> +		if (ice_is_cgu_in_netlist(&pf->hw))
>   			ice_set_feature_support(pf, ICE_F_CGU);
> -		if (ice_is_clock_mux_present_e810t(&pf->hw))
> +		if (ice_is_clock_mux_in_netlist(&pf->hw))
>   			ice_set_feature_support(pf, ICE_F_SMA_CTRL);
>   		if (ice_gnss_is_gps_present(&pf->hw))
>   			ice_set_feature_support(pf, ICE_F_GNSS);
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> index 5619644d5da7..882dfdad0021 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> @@ -3556,45 +3556,6 @@ int ice_clear_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx)
>   	}
>   }
>   
> -/**
> - * ice_is_phy_rclk_present - check recovered clk presence
> - * @hw: pointer to the hw struct
> - *
> - * Check if the PHY Recovered Clock device is present in the netlist
> - * Return:
> - * * true - device found in netlist
> - * * false - device not found
> - */
> -bool ice_is_phy_rclk_present(struct ice_hw *hw)
> -{
> -	if (ice_find_netlist_node(hw, ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_CTRL,
> -				  ICE_AQC_GET_LINK_TOPO_NODE_NR_C827, NULL) &&
> -	    ice_find_netlist_node(hw, ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_CTRL,
> -				  ICE_AQC_GET_LINK_TOPO_NODE_NR_E822_PHY, NULL))
> -		return false;
> -
> -	return true;
> -}
> -
> -/**
> - * ice_is_clock_mux_present_e810t
> - * @hw: pointer to the hw struct
> - *
> - * Check if the Clock Multiplexer device is present in the netlist
> - * Return:
> - * * true - device found in netlist
> - * * false - device not found
> - */
> -bool ice_is_clock_mux_present_e810t(struct ice_hw *hw)
> -{
> -	if (ice_find_netlist_node(hw, ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_MUX,
> -				  ICE_AQC_GET_LINK_TOPO_NODE_NR_GEN_CLK_MUX,
> -				  NULL))
> -		return false;
> -
> -	return true;
> -}
> -
>   /**
>    * ice_get_pf_c827_idx - find and return the C827 index for the current pf
>    * @hw: pointer to the hw struct
> @@ -3708,33 +3669,6 @@ int ice_get_phy_tx_tstamp_ready(struct ice_hw *hw, u8 block, u64 *tstamp_ready)
>   	}
>   }
>   
> -/**
> - * ice_is_cgu_present - check for CGU presence
> - * @hw: pointer to the hw struct
> - *
> - * Check if the Clock Generation Unit (CGU) device is present in the netlist
> - * Return:
> - * * true - cgu is present
> - * * false - cgu is not present
> - */
> -bool ice_is_cgu_present(struct ice_hw *hw)
> -{
> -	if (!ice_find_netlist_node(hw, ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_CTRL,
> -				   ICE_AQC_GET_LINK_TOPO_NODE_NR_ZL30632_80032,
> -				   NULL)) {
> -		hw->cgu_part_number = ICE_AQC_GET_LINK_TOPO_NODE_NR_ZL30632_80032;
> -		return true;
> -	} else if (!ice_find_netlist_node(hw,
> -					  ICE_AQC_LINK_TOPO_NODE_TYPE_CLK_CTRL,
> -					  ICE_AQC_GET_LINK_TOPO_NODE_NR_SI5383_5384,
> -					  NULL)) {
> -		hw->cgu_part_number = ICE_AQC_GET_LINK_TOPO_NODE_NR_SI5383_5384;
> -		return true;
> -	}
> -
> -	return false;
> -}
> -
>   /**
>    * ice_cgu_get_pin_desc_e823 - get pin description array
>    * @hw: pointer to the hw struct
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> index 6f277e7b06b9..18a993134826 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
> @@ -271,10 +271,7 @@ int ice_read_sma_ctrl_e810t(struct ice_hw *hw, u8 *data);
>   int ice_write_sma_ctrl_e810t(struct ice_hw *hw, u8 data);
>   int ice_read_pca9575_reg_e810t(struct ice_hw *hw, u8 offset, u8 *data);
>   bool ice_is_pca9575_present(struct ice_hw *hw);
> -bool ice_is_phy_rclk_present(struct ice_hw *hw);
> -bool ice_is_clock_mux_present_e810t(struct ice_hw *hw);
>   int ice_get_pf_c827_idx(struct ice_hw *hw, u8 *idx);
> -bool ice_is_cgu_present(struct ice_hw *hw);
>   enum dpll_pin_type ice_cgu_get_pin_type(struct ice_hw *hw, u8 pin, bool input);
>   struct dpll_pin_frequency *
>   ice_cgu_get_pin_freq_supp(struct ice_hw *hw, u8 pin, bool input, u8 *num);

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
