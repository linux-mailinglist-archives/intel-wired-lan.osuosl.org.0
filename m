Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48FCC709E4E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 May 2023 19:36:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 28C4942CAC;
	Fri, 19 May 2023 17:36:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 28C4942CAC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684517788;
	bh=X8CE/ljHh+v8PR6eNZIh1iodSE3OmSs7YlFa3sYknwg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=q3V0mWP+kkqN8XGBW4igz4yftKtpkalGo1AsibKbGsoAKB0dZWuczGNbFMfuk/kij
	 7K6V0LOdzK/Fsjnt/5tAfjCQmrKFI5uzvGdw7wa1q5mku5pp+BG2mIvmVxq9LP14SK
	 +yslh6/VcCHWIcvLFd5gvYz4Uq5FlJgob5/vkuazVFZO3CfHLIPbeDXXBuy9RzTeOL
	 g7wBVrgzfoRQwUNjJOQ9Og2h764sRKF0mxulVPpVfumfqDiVrthpS8FqvU0l0bT6Us
	 kXYmsOfwKKVtPVrZDY6af0179og+AJ4grVh2xIuX9Hu3PSWyQNicAG0IlhEsv9v1rh
	 8F//UkEGlo99w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ijk0WBDAl_r8; Fri, 19 May 2023 17:36:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A007542CA4;
	Fri, 19 May 2023 17:36:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A007542CA4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 45B6F1BF40A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 17:36:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2AA2242CA4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 17:36:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2AA2242CA4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5X_Lf8kV_mWW for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 May 2023 17:36:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0D15940543
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0D15940543
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 17:36:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10715"; a="332797211"
X-IronPort-AV: E=Sophos;i="6.00,177,1681196400"; d="scan'208";a="332797211"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2023 10:36:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10715"; a="735587917"
X-IronPort-AV: E=Sophos;i="6.00,177,1681196400"; d="scan'208";a="735587917"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 19 May 2023 10:36:05 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 19 May 2023 10:36:05 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 19 May 2023 10:36:05 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 19 May 2023 10:36:05 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 19 May 2023 10:36:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GC9SqOXf9NBcgVpV5iK7r0mhj9Q58HIt/V0bmtStQRdBzyKkq+B+AVQOqFPDdcLgTKiCV8mfvOHBnlUar2Dr9Y1QLSshWUNB2gaiM2tNmwW6Fv8ORt/xsyAqvKdRaP2YCdcMRoyS+iwzNz/H+FMdA/qcZZV1k3FKXbqxgtmX7CW/Z6o4xo/cbBDkZzYf/I35qwfyIBJCe+IXoznSmZPLHEiph0AtPse1xMxYR9UWgdi1NT/G3+JeVni/IXUgbSe+IEVl1vPk3oyAHiZx0m6I2ZbYuSsNZSim6bED9x034pxG23bryn/M4vs8oHbeopEHhOuwl0D15icPlax4c8VSlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Tjx9P0tbYFB4fI3iZdS0Ma/FxwIZoxGvp1xXjF4gG68=;
 b=juXPfrfSnBHa5JdZbp1hEhfNkXH/DWhuJE1oojH1JfElYNycIjWsE9OXTOljOWpCH1JfeJvfyNVG01bf/+Em7MM79V3oCZTwuRfehm/XnOVeMnUEIEaYTuC6b9m4R4l1KMzYIcDXgfVfnAlBuwfMcbJRWUwVSkMn2jOHXUMPXROb4Fifr5DynHOYIs10/jj9bP3m5zH174cK7EaPS4n5K19CZp5eEpkD6VLyygw5SEpCebyO6oVdlCZoqjZjKBpCJb6+j3RkR6MEKd0M9OW2uvubHCqTyOwMhUmy6uLWof6eIKiRwHTQoUwu4ZxMFbadC18QkPTaJ8335zfP9m11ng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB4886.namprd11.prod.outlook.com (2603:10b6:510:33::22)
 by SA1PR11MB8542.namprd11.prod.outlook.com (2603:10b6:806:3a7::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.21; Fri, 19 May
 2023 17:36:03 +0000
Received: from PH0PR11MB4886.namprd11.prod.outlook.com
 ([fe80::bc17:d050:e04d:f740]) by PH0PR11MB4886.namprd11.prod.outlook.com
 ([fe80::bc17:d050:e04d:f740%4]) with mapi id 15.20.6411.021; Fri, 19 May 2023
 17:36:03 +0000
Message-ID: <bb44cf67-3b8c-7cc2-b48e-438cc9af5fdb@intel.com>
Date: Fri, 19 May 2023 10:36:00 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Content-Language: en-US
To: "Michael S. Tsirkin" <mst@redhat.com>
References: <20230508194326.482-1-emil.s.tantilov@intel.com>
 <20230512023234-mutt-send-email-mst@kernel.org>
 <6a900cd7-470a-3611-c88a-9f901c56c97f@intel.com>
 <20230518130452-mutt-send-email-mst@kernel.org>
 <dba3d773-0834-10fe-01a1-511b4dd263e5@intel.com>
 <20230519013710-mutt-send-email-mst@kernel.org>
From: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
In-Reply-To: <20230519013710-mutt-send-email-mst@kernel.org>
X-ClientProxiedBy: BY5PR04CA0008.namprd04.prod.outlook.com
 (2603:10b6:a03:1d0::18) To PH0PR11MB4886.namprd11.prod.outlook.com
 (2603:10b6:510:33::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB4886:EE_|SA1PR11MB8542:EE_
X-MS-Office365-Filtering-Correlation-Id: 33c16601-911c-4f9a-9111-08db588f84c6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SG4urBQG0UDC7jHNLwUg6KuTqe51VjSJhG5mRhqZv52zUdRcYXE0rxqJVaiq5idVkSH7C462rUmgmz52ZZk/F3vKuGWLQxtk+fFsSF9dxHVW/QIisORHIdjj5jIA/SbYdBSEx/XNUzykeXq+Xvyyn9CEeBHbaowJLM15/bSYUK6SoOLm7AtzQwkqbc1HA5xGqxChnSbaHkfdI82pWMKJN44h+SMQsadTxyUGR0BMAs5NZJazOTgfKdX2ggKPCI2fP+LWTXzMDBJetnit+xgEiC5dz47plQqYkNWIQLs3F/THUximqy03iPKKw+61BfFUaxZT7OXjHj6/6oEKb+0y5atHSkbguB42LmQT+SKn68uzyNnX05Bwf5wWZJgLSKyYaB1AjIkxNk6ichrRGIYs6GZdKkWjm5FCyizdybsglSPSzs3If9WfjQQFsfWQoYG0zXgXYpOkeKENNr6KFbMww3uSYziBZMd/wAOl6DiRWJ8b3iSWRC/asTitVlJjZeVq1S1cTG/zQk9cGen5V4jYje6992ywnG01nWv/Iqv30yiQUlJQMV+LcEdtWU4NQD/LUGLZmz3J+KIaBGjoObsdEiHDVCs27pxOTGDoik9i4S3heCAjz6+JaLAnTExKJhnmFv9B/8Fnk+bpxvglUdkkLx+xo0oUN5jYbjJQrTiPKjw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4886.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(39860400002)(376002)(366004)(396003)(346002)(451199021)(31696002)(86362001)(36756003)(2906002)(31686004)(6486002)(53546011)(83380400001)(6506007)(107886003)(26005)(6512007)(966005)(66946007)(6916009)(4326008)(66476007)(186003)(82960400001)(66556008)(54906003)(7416002)(41300700001)(316002)(2616005)(38100700002)(8676002)(478600001)(5660300002)(8936002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SUNnVG51Wjl3Z2lUcVRrZjZwYVFQbGw5cFJwMTNHdUthbk9kU3paZHJmNURG?=
 =?utf-8?B?eG1FZ3A4c1VnK0FjNExEMTBKSDQxVE5hNjArY3R2M0owaTA5aTBjK09iV01r?=
 =?utf-8?B?YWZQNENzMVFyU0EvL2FEN0JaY0pqRWRzYVgxRHdVYTJRUGRLZVN2YUxvdFBI?=
 =?utf-8?B?ODJ0OWo0Q01zUFJQbS9NTTNJTU5WNHZJR2RWc1JqUGMrb1pxSEdXODBqUWNW?=
 =?utf-8?B?SW5oQk5WOTgyUitqRDczN2hFVzJLMXRBQlFpNEN0TGRON00wbElaeTMvbzBZ?=
 =?utf-8?B?eVRvK1VQR0owSFRiWDI2V0pjRkpNMmtvRWVPZzdwcUJ4ZUZialhHTHZFV3U4?=
 =?utf-8?B?YW8vMDNtRWJ0OFdGNDhFYnZQSm5abElBeE93aWZseXhocVhKM2c3cTJ3VWV1?=
 =?utf-8?B?UnRqdDRuVU90VlhEa0gzekJRMGVhaStUS1VUWGFBMm1mU3BtalVQYVBnTnRP?=
 =?utf-8?B?d2drZjU5RTQrc3kyUWg5aTZUWWYvRGJ1cm1mbkhoeEZzVEJnbUlmd0ZmaExk?=
 =?utf-8?B?UHFISmpNbXNjQXorRGovY2VZUHpQUnNuM2VVSVdGVnNSM25CdjVzMWVNQjJx?=
 =?utf-8?B?MFZFcERaN0x6SGJhc1UvUXA5RXl3L0JmRmJlN1c5a01uZEQ2N1VaWUhDZXVK?=
 =?utf-8?B?VDlybS9JRzFtMm9lbHBlN0dKNXVRQVV1dTRsVGVvL1hUVXo2SGpnaXh1M1ND?=
 =?utf-8?B?K2Rob1F2WVNMNEpqS2Q4MU1iL3BYMVcrbm5BS2d2MFd6ZFJQVER6ZkJPTC9a?=
 =?utf-8?B?QzN0bkIxM282QUFIcUhDVTIzZGpGaDVDcC9INjlNaGZHclFzNC81cE5lSjJj?=
 =?utf-8?B?cjRRSjVzb255RHNEemVzRWxIVUhwc0JpMmpTVmxlbERWNkVINVFCZWp4WUdx?=
 =?utf-8?B?WFJKTUNFN0NPSHFZdXVxRmNSbGJwVlEyejF6ZGpwQVhrOUlaWUt3OXM4M3Rj?=
 =?utf-8?B?cVRSNUUwRjkzaUVsQ3RJTUJnZzliS2dzSktMQW4vMXdod1hOOFdUblg0RXp5?=
 =?utf-8?B?QjF2S01oZEdGemNUVENzV3Juc3JpNlNHdGZVcHhObW9lWWxjMVVXOHVoYnBU?=
 =?utf-8?B?REtsUUVPa3pxWG5xK3prbVhCNlJRWnVmSEtCLzgzcDMxNkRxMS84T2hoR3JO?=
 =?utf-8?B?RkpEcFRuVU1idFRsN1I5anVDRHNOa2FQVGhUZXdGeDY5SS9TYkwxaXNVVmVB?=
 =?utf-8?B?TFdmdnVQTHkzTXdkY0ZYUE5ENFl4SEMrdzVyT2tBTytVZDBtRU5zQ1hFRkFm?=
 =?utf-8?B?MTcwYVNDc01jRVl5SzhJQ2dINmNwcHpMaENaOGpQL25Hc1VmWjdzNkNaeGYy?=
 =?utf-8?B?a1E0aEtKTXQ1Y0tKdm5EeStjL09PUnE1Zm5EK0VhQzg0Um9TYjJGMG5PQ244?=
 =?utf-8?B?ZnRPWGpsMDNkNnBPZTVHZXVmOTFDbmZXcHVMTmVGK2tMVERKVXFiZGhIaUJv?=
 =?utf-8?B?K1BZaEYvaUFBWWJGNlpUSmdNN253am16ZXFsUElPQktpdy9SYklhZVJZenB5?=
 =?utf-8?B?bWU1OXEzQlMwU0FhNGRTc0dBL2pVd05zNUJ5V2x0Wnp5K1plbk9xc2xwbU56?=
 =?utf-8?B?b2d4SE1uMFhpKzNEdHBKS0FzK1BiNVNoWG5SVWJsRnk4eVRZQWo1bW9vdE5C?=
 =?utf-8?B?ZzNwVzhQc3B3akhTSjF6WTJST2NFaUxGOVpTbkhHL0FVZkdKbFdZNVpkK0pu?=
 =?utf-8?B?eEh4TUIxY3hjdzlEam9FODNDcGp6TU15eFpqeHpsMkZrdTdpTkZyNHRSb0FC?=
 =?utf-8?B?TU1jSzJ4QTBZdEJXb2hWd01wQ1dKdTg2WjU2RGNYTnc4cDEyN1lHSUIycEUx?=
 =?utf-8?B?M202WU9PRSsvNnZoK0FqSWw4WjZYRGNwQ2NEckd0WFBsNU9SR3N1OEhsN2FQ?=
 =?utf-8?B?SklhaytIVWpUdkhpOUk0T2Y2eTA2cGQydVFQWCt5WGpDMW5sMzRpd0trZmVj?=
 =?utf-8?B?T3BlSyt0WXJpUVllQ05TOTdwVWxqVFR0Q21GKzJxaEJ3NU1DblFDbGlSVFVx?=
 =?utf-8?B?b01JM0djM3VvUTR1ZUVURytZbnhXdXM0ODFhTmIrTzhtc21yZEhjaFJqOW1E?=
 =?utf-8?B?ZW1SRjN6cUJMUUFFK0YrbkorektxS2M5b1huenFPZEM2ekJmWHY4MTBFZE5Q?=
 =?utf-8?B?K3Y1ZzZkMTkwckpDUjhGVzBUMHdPU0lVZlI0TzBvejJkVTZlaG1yN250RHhZ?=
 =?utf-8?B?bXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 33c16601-911c-4f9a-9111-08db588f84c6
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4886.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2023 17:36:03.5903 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LCoNZE3T9Tn9K7GF39sQ1Seam2VOfBEIeZHF0gbzYUnVvclMqK+jNCS5+IXn6FLmKzV37NmLRP7JGrF+IISujkzz3KyVZD9ByvGveo9AXaA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8542
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684517776; x=1716053776;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Z8DFOhwJb1c0Rtsh1VHZMH6qj4JcvVfVaV3wUkZGF/U=;
 b=kscR9CReOteuG+WPdo/lxORkkXzU0X/C/JBfN4SbxLwOWH9GcYADigfY
 TDPCquoo14wMtLFkMe9893ocljyuLgNk/yyBnG2KNPN9/aNYxWwNkbAHy
 6Vr3J8HcWNbkOX9H/YxaBtWPUiQIezF9uLF7B/3bVWn6RaFX7Qs8roiZs
 qCA0znfolmXOBguXVFxPfmk2Td2DUF7J0tS6EIoUT30UIzg60mYY3R7kS
 TvZLj9xYeLmKEQ7mGDHro2BE5mvKHgtgqDRNA37PLeMsDURT9O9581fA7
 rqYacUtRb8/a4l9An13dp+A3TVRwIlTYnGQUDpAgJPZB3JPmXeNQv6EXR
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kscR9CRe
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 00/15] Introduce Intel
 IDPF driver
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
Cc: willemb@google.com, pabeni@redhat.com, leon@kernel.org,
 simon.horman@corigine.com, jesse.brandeburg@intel.com, edumazet@google.com,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 anthony.l.nguyen@intel.com, "Orr, Michael" <michael.orr@intel.com>,
 decot@google.com, davem@davemloft.net, shannon.nelson@amd.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/18/2023 10:49 PM, Michael S. Tsirkin wrote:
> On Thu, May 18, 2023 at 04:26:24PM -0700, Samudrala, Sridhar wrote:
>>
>>
>> On 5/18/2023 10:10 AM, Michael S. Tsirkin wrote:
>>> On Thu, May 18, 2023 at 09:19:31AM -0700, Samudrala, Sridhar wrote:
>>>>
>>>>
>>>> On 5/11/2023 11:34 PM, Michael S. Tsirkin wrote:
>>>>> On Mon, May 08, 2023 at 12:43:11PM -0700, Emil Tantilov wrote:
>>>>>> This patch series introduces the Intel Infrastructure Data Path Function
>>>>>> (IDPF) driver. It is used for both physical and virtual functions. Except
>>>>>> for some of the device operations the rest of the functionality is the
>>>>>> same for both PF and VF. IDPF uses virtchnl version2 opcodes and
>>>>>> structures defined in the virtchnl2 header file which helps the driver
>>>>>> to learn the capabilities and register offsets from the device
>>>>>> Control Plane (CP) instead of assuming the default values.
>>>>>
>>>>> So, is this for merge in the next cycle?  Should this be an RFC rather?
>>>>> It seems unlikely that the IDPF specification will be finalized by that
>>>>> time - how are you going to handle any specification changes?
>>>>
>>>> Yes. we would like this driver to be merged in the next cycle(6.5).
>>>> Based on the community feedback on v1 version of the driver, we removed all
>>>> references to OASIS standard and at this time this is an intel vendor
>>>> driver.
>>>>
>>>> Links to v1 and v2 discussion threads
>>>> https://lore.kernel.org/netdev/20230329140404.1647925-1-pavan.kumar.linga@intel.com/
>>>> https://lore.kernel.org/netdev/20230411011354.2619359-1-pavan.kumar.linga@intel.com/
>>>>
>>>> The v1->v2 change log reflects this update.
>>>> v1 --> v2: link [1]
>>>>    * removed the OASIS reference in the commit message to make it clear
>>>>      that this is an Intel vendor specific driver
>>>
>>> Yes this makes sense.
>>>
>>>
>>>> Any IDPF specification updates would be handled as part of the changes that
>>>> would be required to make this a common standards driver.
>>>
>>>
>>> So my question is, would it make sense to update Kconfig and module name
>>> to be "ipu" or if you prefer "intel-idpf" to make it clear this is
>>> currently an Intel vendor specific driver?  And then when you make it a
>>> common standards driver rename it to idpf?  The point being to help make
>>> sure users are not confused about whether they got a driver with
>>> or without IDPF updates. It's not critical I guess but seems like a good
>>> idea. WDYT?
>>
>> It would be more disruptive to change the name of the driver. We can update
>> the pci device table, module description and possibly driver version when we
>> are ready to make this a standard driver.
>> So we would prefer not changing the driver name.
> 
> Kconfig entry and description too?
> 

The current Kconfig entry has Intel references.

+config IDPF
+	tristate "Intel(R) Infrastructure Data Path Function Support"
+	depends on PCI_MSI
+	select DIMLIB
+	help
+	  This driver supports Intel(R) Infrastructure Processing Unit (IPU)
+	  devices.

It can be updated with Intel references removed when the spec becomes 
standard and meets the community requirements.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
