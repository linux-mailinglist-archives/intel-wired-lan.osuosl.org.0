Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 90A4A858602
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Feb 2024 20:11:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 423EA61043;
	Fri, 16 Feb 2024 19:11:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y2p0lobpgvJo; Fri, 16 Feb 2024 19:11:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 62C0661160
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708110715;
	bh=npleEUwKL0uWrpeqnBIKUQooQ9TKvaJcECX1guf/1fs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=92O/ZKhoibdDR+yPM9gv82HA6kg4NcNFJS5kfVs+0CrIhVbMVz81JiIt8TnlKatOp
	 bA91RhqVkyqiPy//GTG89sApiVa6LTM4AUg34Aagp+y0/xslODa6LFSZYUz010HcAy
	 zqf+ItQMmYtxCgmHW54hbIr3OyynqcwKilml7WQu7kQ28CIv2R0nGum8Rrvn2/ekKh
	 g9klnpolzt5N8+Yy6CBVhZXg7gfyngh5Qw8DzPqih+IhGoLGVEXxYWNHcQiCql72JF
	 mD/5suGIoEIggfSYQH3AHPnEmySzYix0L+RMZyHRiirsUnZCYAkc/ZDt8Bzvk3p0HQ
	 3TW+tTyxPruSw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 62C0661160;
	Fri, 16 Feb 2024 19:11:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 44ED71BF34D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Feb 2024 19:11:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3050B840AA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Feb 2024 19:11:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RIf5harXjFk2 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Feb 2024 19:11:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=jesse.brandeburg@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9A24B840A1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9A24B840A1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9A24B840A1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Feb 2024 19:11:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10986"; a="12962794"
X-IronPort-AV: E=Sophos;i="6.06,165,1705392000"; d="scan'208";a="12962794"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2024 11:11:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,165,1705392000"; d="scan'208";a="27073902"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Feb 2024 11:11:50 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 16 Feb 2024 11:11:49 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 16 Feb 2024 11:11:49 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 16 Feb 2024 11:11:49 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 16 Feb 2024 11:11:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VbN0XrVdXqykHxW5x05bNh9RukQR81MSCdzJ+Iw0WyFjIAZRicdYeEZ+dmGc9oC/5a/6VuueAC3QYjZW+p1mmos95y/1IUBjsdK34ks2GwTVuUxrrbLdlKG2HEZHk0rUzmPyRGnUEuccJQ69nnQ+yfPeaYviw0nNmyyS7tqCeBtwt9MFq9X9aA1/EzJZKp/uwZw6XCD39YX21wJWEEZ/k8fj+t3KhxGJJd+6KlTDWFUPDQHbFxbS0UVhyW55t+2iDDDTtClSlHvn8pqcQjKxqy584aZVw8Ba3+CUQFlGVqin/lv4zqBIbNVez8/GPPSXcQoGV1MmcHURbAz3dxZEBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=npleEUwKL0uWrpeqnBIKUQooQ9TKvaJcECX1guf/1fs=;
 b=ERYM3V4GZjeZOweplPiaD8HP2VTkYw+QB5lOZ9A1hVKZUZMFLClPP4mKOs6+n0OR4SMcgq9GTqhya+v3fTdomIYJz6hUgKop5s3Iij2n9k8b/d8JwQWe6bHepEwclno0L92uV1CbuRoTHv0xLV4IML43XFiyXBgfaiW884qmS27Fmg39tcTN1lCCf5BHhapR7YUDexy+S5QDKfDn5i6vU9HyVEXdQEUM+g6e6pHQwRDMHWr06GdfLqQNAvIscrizeh/Kea+ShrN29PIpzl/0O2W93EcBfoB5fdGzPmt+lRCA04Ovj1LFClyb7atEgfrQgdfMBvxO8K8VEXm4hhpHFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by SA1PR11MB7132.namprd11.prod.outlook.com (2603:10b6:806:29e::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.31; Fri, 16 Feb
 2024 19:11:47 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::50f4:1fc8:bfc1:706c]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::50f4:1fc8:bfc1:706c%2]) with mapi id 15.20.7292.029; Fri, 16 Feb 2024
 19:11:47 +0000
Message-ID: <ea08fe87-0a95-443f-bbd8-8db12895fd99@intel.com>
Date: Fri, 16 Feb 2024 11:11:45 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>
References: <20240210021000.2011419-1-jesse.brandeburg@intel.com>
 <20240213181350.1755f669@kernel.org>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
Autocrypt: addr=jesse.brandeburg@intel.com; keydata=
 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
 /fnLfll98Nhx
In-Reply-To: <20240213181350.1755f669@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0372.namprd04.prod.outlook.com
 (2603:10b6:303:81::17) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|SA1PR11MB7132:EE_
X-MS-Office365-Filtering-Correlation-Id: c59714ef-2bbc-4b88-e29f-08dc2f231f0e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jgWgOd+Je+TX3qusZ8elLV9tvz0pOY4b/2r1fOCYro66WL6H9pRUWUBQ2lqSx16ROQbVQt1zUTc3hQI13vURexraBl8m98oY998NH+kvLfflHfiqGf+lwezoAI/yxu2ZbDIazC/qZQYYsjnTo5F4gQGhJt2mulciUENuV+rjhvaPJF30oFkcu75BDYCUkXKIyRAIacnnaEZAFPNDOw5hdHxu6C3wlnNcXfTBnuE/gMkPr8nGC7E5jA1fOJ9QmnntxXfLMe2gQTw96toKKNk9RQs5cGkHFeEZMsAThnRbZGEmh7lFiQ+G2HPPcCxC5w30IGG1nn1UZAJZcHJ7Za8W1aPx6f1CLoOABP13UmSC2AOgA8vSxWC+ydOhcN8FUkunvQguf0YUAJloMf6VWSNx1a00T7rcxUE8t0+BlSC6OqT+u9SWigSkZuACF6K+OMfSQnI2y7VEPprhI9FKEM9zVfzuhTOsaMbQXawALWg+9d+0dN9S7JS9pwS2v5NZlwXBLwklrxhB1q66/D16Tn30CVvtQQ5zeUt3OQs3pkA5Rcl+GPDw0E96/vu60YxFJDK4
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(396003)(136003)(366004)(376002)(230922051799003)(186009)(64100799003)(451199024)(1800799012)(31686004)(6512007)(478600001)(6486002)(41300700001)(4326008)(5660300002)(8936002)(8676002)(66556008)(2906002)(7416002)(44832011)(6506007)(316002)(53546011)(54906003)(66476007)(66946007)(6916009)(2616005)(36756003)(31696002)(82960400001)(86362001)(26005)(38100700002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c3JkQ3dwTU0zcjgrZzR2bjZWblc5aE9KdVZsakVrZUx2bWU3N0hCNnB4UnpG?=
 =?utf-8?B?QktvcktNNmZRbWJmV1VYY3ArbEVBb01oNzVVQnZoZTJNaEJyLy91L2V2QjBr?=
 =?utf-8?B?bGtSY3NXOXJEMmVZdmV2SkxYKzRkSlpCVHM5S21VQ1U2bkdYNDUyRFVXZDU0?=
 =?utf-8?B?VVE4OVh2a3hBaXg2cWNnTEc1N25FRzFkTlJyL09JQUtYb2ZLRTVlU3JyUUZU?=
 =?utf-8?B?UkVLVmt6cFNQcjQyY3c1RU40emFuTU1pNWJldDk2RnNneXhvZWtkOWV0cnVJ?=
 =?utf-8?B?L01vb0FZVlg5U0J2MytySmdwNWRDQ0taL0hQdFlYVkg0Wi9OeFZidmJLMHR0?=
 =?utf-8?B?Ukl4c2NWdFI4NU4vTVdtSWM3UXVyYVhCTDZzdldTb2J6eklMdjUyL3hHMlU3?=
 =?utf-8?B?SnpSeWcvUStzdllhQVdmZ1p2U085eHJxUTRKSlZGckNlVnJlY0h6OXVIOE1M?=
 =?utf-8?B?QjhyeUVkQWllTnlMbG95WXJWZzlXb29ieEJ2ZGkvZXNHTVI2S1hpTExSNks2?=
 =?utf-8?B?SEFlZkIwaXZPdzVaOGtHbi9SUGFPTHh4b3NMNnJhanBIcklYemlybEFabDJq?=
 =?utf-8?B?d0EvSmljZmZuOWEwSDdmVG1Kc1hKYy8yZldXd2tDY3JNSUV1MFMxcHQvRnRU?=
 =?utf-8?B?aSs2Tk8waW5EY3NqR2dyQlo0T0JOOWQ5NFlQT0lSWWs4VEZsUWRKWlhrZDhm?=
 =?utf-8?B?bEV5eFBNb2dTVVQyWVlFN3JKaXA0c0ZSMWlxSUFqS1JVK0NKVmt0OTlQUmRz?=
 =?utf-8?B?R2V1Q3h4QkdJem5vbkJkdmY4VHgxWTRBQUw3K3pTUHB5di9tYUtDZDZ4cGJs?=
 =?utf-8?B?WWI1UERyWXpOemg3QnNjVjVBaFYrUkpmcEtyVkg3am5rbDhWVGwrenk1OFY1?=
 =?utf-8?B?bTc1aWhNT0Q3UjcyK3JMNnQ5U3JVWEREb1RyQ2VHeUhIaG05dWpGU0hoTlFO?=
 =?utf-8?B?bkd5WXdFRG5wNnAwY1R2MnZBano4UnZTeEZ0Mll0WXhSK25Ta1BKVndHRllv?=
 =?utf-8?B?OXNKTk9DMjBDVGFLOWpnT0Y3QkpoVjhYZ0pEZnVtUEY2TkZ2a21adXNmWHh0?=
 =?utf-8?B?Mm5TejBMbHBUV09tcFdEbkgwRUdoYlBvZHRmYStBSXA3Z1ZHSXE5cSs2MEI5?=
 =?utf-8?B?dUFtRmsxS1ZBNjQwejhFMThOK0VVY05CMnQyUlJUL1F6MEU4dU1TWFoycHhQ?=
 =?utf-8?B?WDA4WGRaOWdveG9mVmlPSWpYd1ZKT2p1cHBKTTFISVhERTIzTTFubEdKT3Jv?=
 =?utf-8?B?U3ZmRnF2NDQzMVUwM0o1OTJHUmRFTjk0Y3FnTUp4T1BxOWZCSDU2TEMvV3E0?=
 =?utf-8?B?U1ZUM0dEc0xEME0vRGtZK2NEcmpFU0JLeCtqK2FRMUd2MitzeVZkM29taksr?=
 =?utf-8?B?eEk4aEhiNU9lUU9XNlNvSmREZkxXeWdIMmIxUFA4NUEyaWhWZGo2b081Kzkz?=
 =?utf-8?B?a0NYeG0vQXdLRGRyQzVzajdQZUNRY1BRdHJFVWhFV2JlelBCQkJlQ0kxMXM5?=
 =?utf-8?B?VVo5UytFd203VGt5aTdZQnhKdkRmdkdwL2JWYlZ0UjU0VVR1R3FLdnBjZjho?=
 =?utf-8?B?STZvWVBWVkpKUTNBN0l2N21WazBBL0xjWVpDajBmMFdDQXFHcThsSElHNXZD?=
 =?utf-8?B?YXFnVDh2NStydmc0WnBVOHp6U2cyMzFPbkFIUHJuR2N6ekhrZjFLai93T1My?=
 =?utf-8?B?cWJTUFlmTHc3Wm1UVGVWZUxOSkk1WnJUSkdhMEJaSDJvT09SMzVSNmMxOFRU?=
 =?utf-8?B?NFN0b1lwZkZPQ09VekppTExibzBtQ3lMNWtZUVZydDFyZjV1aHY1a3ZEdW8r?=
 =?utf-8?B?NnIvejI5WG55UDQyWjZjclhIMDd2bUk5QVdKWDFZSUcyQU9yL0RXMW5XN1Zt?=
 =?utf-8?B?Q3dxK2pYQklURVdTTHNvWkVaT0xxRWJRbks3YWovWXY5N081U3FTdktIUTll?=
 =?utf-8?B?QVdBT0kxK0p0QzR0ZGc3QlhwZEo4NUVkdkxpcEljMXNEaE4ySXdUcjd2SHF0?=
 =?utf-8?B?TVdLclE1Q0FvOXFCQU40UTFKYVQ5Z1Nickd6MnBwTno2Q3dWMlRvZnZvTFk1?=
 =?utf-8?B?OTJVemMwWXJSTnZhUWtOczBiR01FaXJZUDJYMndTSEhwRU1hcXdUUjJzUzJB?=
 =?utf-8?B?S2d6bUc4b3JhMDZ4ZTNnRU5hTFJmT2dod01vV0x2YkVTOWVKQzJFT2IvaVZu?=
 =?utf-8?B?V2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c59714ef-2bbc-4b88-e29f-08dc2f231f0e
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2024 19:11:47.2701 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aEP/ZfJlBYwQDn6rMciAB/m9zFNuwLgV3DKe7FbXg6mA8O4lToUMsDyX+bwTsQum1IJVsdrWBCJrNSwliTc+tP+ftKU4YtIWua4xgU1kG5M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7132
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708110712; x=1739646712;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=F0rNe3jqnGpushVZDMmuDFNtHcr1y4+/IJ+G8GgmyI8=;
 b=HZDfMpDrdUSBBqKBbnpKrxf2cnt/f+XxJJ49WuFxlbMwsDJqWaZgYQfV
 N+0pjNHrOSxfwxIxDWfsyIrtNhyMkuLJGBo9xRf160MqUYMdAtD9s8kAK
 m/jGIqAezN5cAbiMm1Beu9+swWdz3KYq/dWUKGROh/bKQwmCMy6mtd1pW
 5xC0jci+QfeoDkm9u0age8oS8QQiTTyNQhGQxjz3jAWKr/i/YhXChcgCG
 t/NfQL1lgxC2nGBsxtnRs7cec2DNJtRspc71aqDmg3ITP+HD+Up8JIe9O
 dloZAWrSbBBvEk6Vee4Q3+2MQQ68ANs2e7EZYCjD9Eela3aNdNrGiu9ip
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HZDfMpDr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH RFC net-next v1] net: rework FCOE and
 RFS ops
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
Cc: Kory Maincent <kory.maincent@bootlin.com>, Ariel Elior <aelior@marvell.com>,
 Manish Chopra <manishc@marvell.com>, netdev@vger.kernel.org,
 Richard Cochran <richardcochran@gmail.com>, Maxim Georgiev <glipus@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Emeel Hakim <ehakim@nvidia.com>,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Subbaraya Sundeep <sbhatta@marvell.com>, Raju Rangoju <rajur@chelsio.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Paolo Abeni <pabeni@redhat.com>,
 Sudarsana Kalluru <skalluru@marvell.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2/13/2024 6:13 PM, Jakub Kicinski wrote:
> On Fri,  9 Feb 2024 18:09:57 -0800 Jesse Brandeburg wrote:
>> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>> @@ -10416,14 +10416,11 @@ static const struct net_device_ops ixgbe_netdev_ops = {
>>  	.ndo_setup_tc		= __ixgbe_setup_tc,
>>  #ifdef IXGBE_FCOE
>>  	.ndo_select_queue	= ixgbe_select_queue,
>> -	.ndo_fcoe_ddp_setup = ixgbe_fcoe_ddp_get,
>> -	.ndo_fcoe_ddp_target = ixgbe_fcoe_ddp_target,
>> -	.ndo_fcoe_ddp_done = ixgbe_fcoe_ddp_put,
>> -	.ndo_fcoe_enable = ixgbe_fcoe_enable,
>> -	.ndo_fcoe_disable = ixgbe_fcoe_disable,
>> -	.ndo_fcoe_get_wwn = ixgbe_fcoe_get_wwn,
>> -	.ndo_fcoe_get_hbainfo = ixgbe_fcoe_get_hbainfo,
>>  #endif /* IXGBE_FCOE */
>> +	SET_FCOE_OPS(ixgbe_fcoe_enable, ixgbe_fcoe_disable,
>> +		     ixgbe_fcoe_ddp_target, ixgbe_fcoe_ddp_get,
>> +		     ixgbe_fcoe_ddp_put, ixgbe_fcoe_get_hbainfo)
>> +	SET_FCOE_GET_WWN_OPS(ixgbe_fcoe_get_wwn)
>>  	.ndo_set_features = ixgbe_set_features,
>>  	.ndo_fix_features = ixgbe_fix_features,
>>  	.ndo_fdb_add		= ixgbe_ndo_fdb_add,
> 
> If we'd be having a vote - I personally find the #ifdef far more
> readable.

I hear you there, BUT, the gain in "no mistakes" in CONFIG_FOO={y|n|m}
compatibility is non-trivial in my mind, *and* it removes all the ifdefs
around functions and a bunch of code from the drivers with
__maybe_unused etc.

Would it be less ugly if I used something else like a macro per
function/line?

Also, I was trying to migrate this ops subsystem "to start" and then do
others, so there is a larger discussion here. The PM infra already has
this kind of mechanism (see SET_SYSTEM_SLEEP_PM_OPS(),
SIMPLE_DEV_PM_OPS(), etc.

It also allows the compiler to discard the unused functions at link time.


