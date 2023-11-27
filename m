Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD7C7F9D5A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Nov 2023 11:24:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8B97E4035F;
	Mon, 27 Nov 2023 10:24:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8B97E4035F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701080643;
	bh=cD2B45a15dm3YVEin5OLgeh95O3PfkmTfb2oSkSIGn8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ErfbAO2B8xTL85hdyKcD1842tyiuReOrx3Gzx9gVGs5zoEzyTg/tOHUgb1AapgrmT
	 77nIq+t/DeHfEV418SGtIKNQImXSbQ3D4KxB4lxi/LRxGNne3iJrdbUVEAt3zrWs6X
	 ZjhDgJ3R3gl1pEqFPrbUSHm5YSZdPhJ4lZu8miqQEh5VETCZoEXNYOOPPzW1T2GpTZ
	 mnBzLzL4HIOpjDU1jigQJHFhTzR8JAr+ZbhvBZgQKflcSdy8OtOOft+7g7lM3zNu8l
	 fTTQ2zbZYEQwOGvsgciT3io0/PgmtDI4puaQ0sIl9Xp1sLlRTT+h+bHbmdB/UghX9Z
	 gCR1l5Pu9cxDw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id imB2WwB0z4ha; Mon, 27 Nov 2023 10:24:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1553140346;
	Mon, 27 Nov 2023 10:24:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1553140346
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B32E91BF35A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 10:23:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 94405404D0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 10:23:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 94405404D0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EPuSXayN--IG for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Nov 2023 10:23:55 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3B609404B5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 10:23:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3B609404B5
X-IronPort-AV: E=McAfee;i="6600,9927,10906"; a="377709205"
X-IronPort-AV: E=Sophos;i="6.04,230,1695711600"; d="scan'208";a="377709205"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2023 02:23:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10906"; a="717987625"
X-IronPort-AV: E=Sophos;i="6.04,230,1695711600"; d="scan'208";a="717987625"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Nov 2023 02:23:50 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 27 Nov 2023 02:23:50 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 27 Nov 2023 02:23:49 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 27 Nov 2023 02:23:49 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 27 Nov 2023 02:23:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BZ3emNo0a6XlPBgwhnlfk11F2VICE2B4J64m6K1ot8rAAtRdDa9E0s8pNtfz7AUr2ax0/60VUqfv4qpdMbt+glCPO+MilfV00oWtEefUFU1JylZwrYf0ybJSSyrfcBPo5tG09gO2lsKwsyhI5Y8KYhxC+igYTndIVytFkIC4z1UnS7pJqgB8iGV/uGzIDWnBRpOiDh+p2VHLL1F3fWKcBh/q74kZHO7Nq5FJEag7JTNuktXFcAQToAyw8/xkTPSwen/O1ADWrGTdf/fmQ0xPAbYJdGnm5ccXnPXysBj0WalimJXnSWl9y3cns9l1PPGZIXNUIdZk/Y91HN0WeWRP1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KG+ASSNhGK5g6ajEzoJVvd46A5nVwGdgfZvLg/Xu+Yg=;
 b=SCdPK4nFDxDWHjop4pc/9J0qXBAmE+a4iA5ga82llRwpJttO6OvISwhMG8iDQ70nK6UDgISijW7JbYCeV+MHl5N+C/DQz60MYgPOMsJ2Y6lJcrhAWq/HF0HNNy2GhV2kkmfud7AP4tEV+pyEQx6yu3WpIlHwK3r/RIUjKBQbdyzaDBICIwdaf/o/soPDzbBpk19aE4Qb7mplKLnBguhzd/yFlqqp1P4fW+z3VOILNFiYqyUJgWLKZldB4BWzfba5s4a7drRCPEafueeYcZOzh7T6va+Rc54V4fdV2i533nLs3RhhN/CBwYSwK4VVjct9y0aLyXIDXoiIaK8Quzy4vA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by SJ1PR11MB6081.namprd11.prod.outlook.com (2603:10b6:a03:48c::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.27; Mon, 27 Nov
 2023 10:23:37 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::5112:5e76:3f72:38f7]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::5112:5e76:3f72:38f7%5]) with mapi id 15.20.7025.022; Mon, 27 Nov 2023
 10:23:37 +0000
Message-ID: <4ed82814-af9c-7e26-6039-304182240982@intel.com>
Date: Mon, 27 Nov 2023 11:23:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Jiri Pirko <jiri@resnulli.us>, Alexander Lobakin
 <aleksander.lobakin@intel.com>
References: <20231124154732.1623518-1-aleksander.lobakin@intel.com>
 <ZWRbusSZ4v0SuWmF@nanopsycho>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <ZWRbusSZ4v0SuWmF@nanopsycho>
X-ClientProxiedBy: FR0P281CA0257.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b5::20) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|SJ1PR11MB6081:EE_
X-MS-Office365-Filtering-Correlation-Id: ad1a4e5b-c5d1-48da-b750-08dbef32ea7b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wtScVDG1bk9NoyhwlD5WtptOpi/5ngmn/bE9bz39Qt35969D5C1SXJpWdyo1jVslLK9MR0UHY1vQ8qVRwH7bPCE/V+R3hkNZP/kZAdCPYT4lW45hc8u+HoUunO49oOI6e1wRrAcp5WhUrgq3gCFGGb2Qbckn6neb+tgmPH7MtDE69U0aLPHdkmz+R68xCr7igLuTMzaAHOXvxac2yns60d2ZJdzIFhHyuclk/dD4U+rYS8msQ55Y/4vlD1wXb2XCVXgb9czFd48hnb9n3JZ+uNB6lFVlgXF1eEvWV5QnknitbBnu0pYaTQ5bsRu/R3hvtj/Ed4QSsyFMAMrQdVM+bTiVGfhTShrYVGDlxlE1GNxmLOHBZSTPxbYIRCSJMe+yXU1LjrdExrtukPPgDdeMgZysknsccvNzRafRJXfWfQJ4rRKlS8IO2YO/Hedn86QLFrUpOwqtFdOpIwvQ/0EP6CNKoRXXuPCfUpFCtI8zFUQsf21357qfMEW9R3zRqLYHoF57NaPh26IqI5DbHgJ4iaPs+56ugLweMQEWK0xgo/wUYBq4gwyk85MhOmjQFwNFqf6tX71vWcW5agt6KJa33o/qYGeZxUgV3jEhyuy7U4TYtJsCwHcy48GDdT52gFWuvRX/vWGP+I4ZZXv8aw2JibMbKO5yhg+tVjfbFYhIHjvPt1e1dzsY3U98CUXlnYoA
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(136003)(366004)(376002)(396003)(230373577357003)(230473577357003)(230922051799003)(186009)(1800799012)(64100799003)(451199024)(2906002)(7416002)(31686004)(41300700001)(66946007)(110136005)(53546011)(6512007)(54906003)(8936002)(8676002)(316002)(6636002)(66476007)(66556008)(478600001)(6486002)(6666004)(6506007)(5660300002)(4326008)(2616005)(66574015)(26005)(83380400001)(38100700002)(86362001)(31696002)(82960400001)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bkt3WEJMcWpkLzZId09LajMwYTlnVVYveEdiM0JKRENIM0lHdG9va0h5dm1H?=
 =?utf-8?B?VmU5QXlIcUQ3Q3FWWmlwMGxyTC93TFZKQjBuMW05QllyZEpSZ0JLZEF5bVht?=
 =?utf-8?B?KzdlZ2ZBdFFtZ3Q3R09KR21aWXoxMkZJVnNEZVpPUVY5V29lLytISkRoWUdq?=
 =?utf-8?B?MkZxYzhQZUwvaC9sTHhFYkhhSTFCcWNueGhHbW5qMHJYckhmT3RoSHF3Wm51?=
 =?utf-8?B?NVgxdE42OGsyRWp1Z1puQTBTeGR4T0xIZVF4WG5MRytucXFENkpZQ0xrczFQ?=
 =?utf-8?B?SG82cFM0bDAxOUtkcDE2cm93Y215MENrZWNIbTJzdEVuU01MSGJhVzBVQ0Jr?=
 =?utf-8?B?eUQxbU1SNDlvZ3dZckJETFNXU3dXdzBIRlRVVmJSOUE3NFhNQU1TQ3Y3cUhm?=
 =?utf-8?B?WlRFM0JNQ2U5U29aell6M095Q0t3UXVKOUpXSGN3Q3JML3l3aDJWVytMdXR6?=
 =?utf-8?B?TUU4eDBMTlNEU2Ewb3VHR1d2cmZCVzRuT3lUWkdPQ3NKdm12d3QwY1VmalNJ?=
 =?utf-8?B?RHFqeGFWeWpoTFdlNmRVTUFzaTJLZysvSUswSjROOTFQRXdMR0hlc2ZPZDNo?=
 =?utf-8?B?b0pQNVE2RmJ6OU02OFdtT1dOOFFUeENpT2pWWUREL0lOUHBQOG1OQ0IraGwy?=
 =?utf-8?B?QVJZaVVubFJxMXhwQjVwTHdGbUVUVVNmQ0dtVnYrRG5UQzB3WVpwb3lmNEFW?=
 =?utf-8?B?VkxLQTFFSjFCYVNxenE1MWNzbm1QbmFMQWwyb1huWDVvOXRzdmJjY09MQStD?=
 =?utf-8?B?dDhCY2JsQ1AzRHlPMXZXb0gxWGJFQ0RMdzQ3Rm1MVlVhQk1Rbm9VMGlqNGhO?=
 =?utf-8?B?eHNudk1xZnpCdkI0ZFZiWFlKSWw3cG1tcFdPTmU2dGZSMFFIRXU2bk83T05m?=
 =?utf-8?B?ZU8rNnZWSHJQS0kxMU1iVUJwdWhYK0NqVmthTkU2SS9mNDNCaXZrVmQ1RlZo?=
 =?utf-8?B?TlpBTzVpVkhDZ2dNS0xHUmN5cVJjcVdZSkZUa2k0WnVjOWpkRlFLb1pXUC8v?=
 =?utf-8?B?Q3pLOVE1cUxLdnBrTVVnNDRIc0dKc2N3ZXpuQlphaHhMK2MvT2xIOXdrc2FK?=
 =?utf-8?B?OVFZeU9obmVYM0RtZitEakZNOVlHNFBVdTNqMzZFTU9jMUlFS1p4bCtoTVFB?=
 =?utf-8?B?YklPZC84SFI3NXM5Tko1VC9RR2lsN21FY3hDSUMvaDRhcjExa0QvYVdyQktB?=
 =?utf-8?B?MDFWaFZsd1I1V1pmWHMrVHdyaDY0Q2Z1TzlFa1lGcU12MXhvWjZDT2FOdmtH?=
 =?utf-8?B?ajJpVEhZUjN3M0FQVERIc2JabGVlOXhNRENkY2ZBUTBMaDZ4d3h3bHJ2ZU8r?=
 =?utf-8?B?WGVOZSt0Qm9lMU9Jcnc3TFpUNTVnMVFNbXlGVkZYeUgrc2c2dURoU3dhbGhO?=
 =?utf-8?B?QVNsbzIrZ2UrNlBEMkhadWg1ei9rTUI1c0dYM0VDNGdHYVB2RW9wU0hmUEdC?=
 =?utf-8?B?T3MrZlY4eTN2d3VhTlRBV3NtMUZWa0dYTDJUQ0pzcHo2V2hLTElnczZaamxt?=
 =?utf-8?B?bHhaMjRkTUo4TGU0VFljVzN6aWtaWGRhSXdkaExWK25YTEVQck9rRVlwK3do?=
 =?utf-8?B?eVZCdnJaV3NjUDlUNVY0alBBWVpSYkZDMHdmR0JFL3BGM2ZreDdFQXQwa1BB?=
 =?utf-8?B?bWk0OC9iS3RTUHdkQkJhN1Z0U1NPUmYvbHAzNmlYVzVqRHJaZkxWR29aRUY1?=
 =?utf-8?B?L3ZINmhXTEFIY3lNcmlhK0FOR2RtY0tmQnQ4bDR6VmRMTUxsY2ZOSEg1dlRa?=
 =?utf-8?B?WDdQa1ZiR1htT1phWlRrTFgrSGdyamdUa3E3MWIwcFFnVmpiT3BXRDc1dGVo?=
 =?utf-8?B?aEpITXQzcEE0SVg1UmR0d09OSmVFUDcxWnFXR2poS2lvcFZnaDJ4cnVYaEV2?=
 =?utf-8?B?bWYzVHVzY0JMSHRLOGFpQlliK3FmU253SVg5SjdwYi8zVENhTkZCUVkyZS9x?=
 =?utf-8?B?WWYvVkE1KzZHZUFvakVPVXozR1F5UXBhUExKYjVvOTNsLzdNLzNqcktqZTRh?=
 =?utf-8?B?cFdhaUg0ZUhJY056NkNtZStjcHhUNnNaeEU2SldhbFppc1pWSzV4Z2lGNk1j?=
 =?utf-8?B?amU3RjlYeTBnc1MrSVNMZDBPTm8rbW1IVGVqQ1k5MysxcHBUYVRGSlZhcTBx?=
 =?utf-8?B?MkVuNUE0b1JXcG5LK1VaYkJDaVFhRHNOTXU0MlV5anR5Q3N6eWpKcnhhcEtr?=
 =?utf-8?B?NEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ad1a4e5b-c5d1-48da-b750-08dbef32ea7b
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2023 10:23:36.7175 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vmZUw78b/E3o0LLbo/lq5UNaKLf/V45UmHF+mMCjGesFOQi8LkbGh2QHZjZhOGzAcq3sfiQ3atGoBGuJVw8C93UWco/raKT5J25TJJXi5ao=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6081
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701080635; x=1732616635;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DeFHSkyPNRvGHrBeEZjRDoZUJKVl7jE11AI5KsACMtE=;
 b=QbxuNh8MSwzUH+/Hou1fXuihQ/cDuIIjRIT6L0yi26jjCmUSlC0xqdh3
 ybIG9Uz3maoZL5biQ1kVZhx/Dnin+kK2CnE3Xoilg2tVKj4OAzTvrjCVP
 l6dEkAYsqiLM2mEMLoEn5YocbdLB/lgeeX/74EPWjE03wwTjCYwo4mucf
 i1dbE/JsfOGR0kygFG+1KxXYIWQ3vo9qPPO7iLpFeOHfrmXcwAuHAlAgS
 w4+5Np/Yi5gLXkKuwS/wrKaVdPgX8jK4YU1tl0hhdhEdMWXEw6W3HBqoD
 Qf9vy7+qKlxKIVnwHokqwpkCrQmMCyMEX1bou6qbfCsRMBSGVDLT8s8xR
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QbxuNh8M
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 00/14] net: intel: start
 The Great Code Dedup + Page Pool for iavf
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Yunsheng Lin <linyunsheng@huawei.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 intel-wired-lan@lists.osuosl.org, David Christensen <drc@linux.vnet.ibm.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 11/27/23 10:04, Jiri Pirko wrote:
> Fri, Nov 24, 2023 at 04:47:18PM CET, aleksander.lobakin@intel.com wrote:
>> Here's a two-shot: introduce Intel Ethernet common library (libie) and
>> switch iavf to Page Pool. Details are in the commit messages; here's
>> a summary:
>>
>> Not a secret there's a ton of code duplication between two and more Intel
>> ethernet modules. Before introducing new changes, which would need to be
>> copied over again, start decoupling the already existing duplicate
>> functionality into a new module, which will be shared between several
>> Intel Ethernet drivers. The first name that came to my mind was
>> "libie" -- "Intel Ethernet common library". Also this sounds like
>> "lovelie" (-> one word, no "lib I E" pls) and can be expanded as
>> "lib Internet Explorer" :P
>> The series is only the beginning. From now on, adding every new feature
>> or doing any good driver refactoring will remove much more lines than add
>> for quite some time. There's a basic roadmap with some deduplications
>> planned already, not speaking of that touching every line now asks:
>> "can I share this?". The final destination is very ambitious: have only
>> one unified driver for at least i40e, ice, iavf, and idpf with a struct
>> ops for each generation. That's never gonna happen, right? But you still
>> can at least try.
>> PP conversion for iavf lands within the same series as these two are tied
>> closely. libie will support Page Pool model only, so that a driver can't
>> use much of the lib until it's converted. iavf is only the example, the
>> rest will eventually be converted soon on a per-driver basis. That is
>> when it gets really interesting. Stay tech.
> 
> The world would not be the same without intel driver duplicates :/

:D

> 
> Out of curiosity, what changed? I always thought this is
> done for sake of easier out of tree driver development and old device
> support dropping.
> 

Some of Intel folks, with Olek as one of leading examples, really care
about our upstream drivers.

Recently (on HW-company timescale) Intel recognizes high costs of
current duplicated-SW model, and I believe we will follow more modern-SW
model where you apply such novel methodologies as code reuse via lib.
(Disclaimer: it's not an official statement).

OTOH our OOT drivers would benefit from libie too, but that was not a
driving force.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
