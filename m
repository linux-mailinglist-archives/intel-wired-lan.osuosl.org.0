Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACEBA80DCA7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Dec 2023 22:12:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 65D8D41A3A;
	Mon, 11 Dec 2023 21:12:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 65D8D41A3A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702329160;
	bh=vLNcaM+lWpcWHQqHbjz/CuhpwP2KFn3u7v20205vaOQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QhB0klli5f1YBIVNGma3rLzeZY/nw+igj4QcGPeExeE97Am1+G0ca04yeb0Ir/qxB
	 TY8QcWYDbTDp5dgfyeehIWCOrFUo4qHXScW7T0K6eCixMTfl73ZblI0aCFrQWmAGAh
	 lOKTGOI02anMazsSsQAaajVnzhu1cWQUMSgzRKtyaeytbEhQCAouLNEL+9Xip9aXEv
	 rCjmrHrBherlAXeRG037+S2lhQMKmYXQ7pzOCu17nVQNPdNDpNt9E09Qr7iFv/+pt/
	 ssCMESfUsc/9ADhcSjXBmIc/bO9Sho3VelcRAIyD5vaeV1eKfDUpvv7An8JxV30LTa
	 TZu1jmaUZ5c/Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bYMBFzqrYLkF; Mon, 11 Dec 2023 21:12:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 01347400E2;
	Mon, 11 Dec 2023 21:12:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 01347400E2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C08571BF3D1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 21:12:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 961E960E3B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 21:12:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 961E960E3B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u5I8_DIOcPXB for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Dec 2023 21:12:33 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A6D0360D78
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 21:12:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A6D0360D78
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="13405470"
X-IronPort-AV: E=Sophos;i="6.04,268,1695711600"; d="scan'208";a="13405470"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2023 13:12:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,268,1695711600"; d="scan'208";a="14659690"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Dec 2023 13:12:31 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Dec 2023 13:12:30 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 11 Dec 2023 13:12:30 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 11 Dec 2023 13:12:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HopAAHz72znO2epDesPIbfTFbYgunn9yHCV0QTj/a1DoTIzjHhYPwuZcRjqjOHWnHnaMUXEkx3hRZcMBiVgFGl8WH6ETHnRyPYn+w5LJXlgSy2JTv+cbX/tv5El4grfDtGivKqMBpJ/yN2EOpjcAOStz+39KjB+fEy5rRTAusI0TBY+f4jzoQF8CDB1s+kIOtsRAhW9aPDBsoPmNikosDEX7T+X3raAQAUCuCaroQgfskmsOXEIBCqSOSjSRfW40GPa2eP/7iCSlFfaRkxRIzdHjI/S3PnUr3+YXA5I6AfmxgemxTMadQG/6a0bCbUvDV/tkykSfwL3OCA0BXqQ5UA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wuuQ0JiBH9ZnPRzuOJBW3PuLPlILW9PpWGyMf3opE6c=;
 b=asNW6DywhkFR6nH1ar/jPw9Ds3cKfyALX549iAUFN3kz/6k7c2mc+wRUTkkitk0VonbLW+RFwEmN9sF1cNY+YsHv4taXkdZFT1tmTDVwsj0Dr+SgzEg0dWUDBDcse7JSbQIUcNjvpXEM9NfNbt1LV0mOestQQHeExDzv7raBHsc6ePa+dqf3ozTKxbQIJ2tJPg5VQTwB+vsauht/5QnifVY/JZSvy6/dJCjxYk5qhJu4pujUkg2Lgdx1CTGseLZymZTZpLALmPTHgPPyzeceFfTLpP7Rj6kaRiCX2KMiCJTMiWg9liTFUq6dK+8p8LXiKPpenWknfUITnZwrJSSFxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by MW3PR11MB4585.namprd11.prod.outlook.com (2603:10b6:303:52::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.33; Mon, 11 Dec
 2023 21:12:27 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::11e1:7392:86a5:59e3]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::11e1:7392:86a5:59e3%4]) with mapi id 15.20.7068.031; Mon, 11 Dec 2023
 21:12:27 +0000
Message-ID: <c74dd960-7fbf-2c05-5ee3-7e9839b238a9@intel.com>
Date: Mon, 11 Dec 2023 13:12:24 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: "Ertman, David M" <david.m.ertman@intel.com>, Jay Vosburgh
 <jay.vosburgh@canonical.com>
References: <20231207182158.2199799-1-david.m.ertman@intel.com>
 <bca6d80f-21de-f6dd-7b86-3daa867323e1@intel.com>
 <MW5PR11MB581150E2535B00AD04A37913DD8AA@MW5PR11MB5811.namprd11.prod.outlook.com>
 <21390.1702078254@famine>
 <MW5PR11MB58115CC6EA72622E87CF586EDD8AA@MW5PR11MB5811.namprd11.prod.outlook.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <MW5PR11MB58115CC6EA72622E87CF586EDD8AA@MW5PR11MB5811.namprd11.prod.outlook.com>
X-ClientProxiedBy: MW4P223CA0009.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::14) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|MW3PR11MB4585:EE_
X-MS-Office365-Filtering-Correlation-Id: 231548de-95aa-4824-d6b8-08dbfa8de0c5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Zx7zgmQJ5tFym1VldhG3HghTWDpotcj3veDgANUMgvLbpspdjZjNosZd5WXOWjOhCYw28qEnyIvwAV+VKaqFRyb5DfMDjwRZx1k8E66Y9RwuSYzw1MR9gkg4dLd4KyA0PMcRl9S0ny9fDPzVsO725YeNG6irx0gg3P6XVIttW+986BYCHkHIQsAHJSVrhzA3Oo7xRI4oKbADTkVR2S/hnmjnSN/7tPlyT1mL08pFeis3Yn0PUXfxWIicv/pyH1ufN323uJSzy06XTkxMovQiBo9dvs+P5pQjQNiQQiNzzKMpZ5RxymCSmzFP8sTgrXl0qCyzq5iJ+PHzRnB/YXafvngxfb8L4pF/k2vTOojq71/iGeYXqNUTcEMRGeoKG8dszOSyI2BcOcLRSUkQBvy7OSTz/MWG1mB1XYOO7al6uMFyh9LweGjk9vynrh/djso8fIO6Vg03alhEx+lVwhlmlCPVNTaIMURUyhGyiyI+LXvSqbWpKjJ9HCkwMkanlQvZy7kNuFoofiFYS4hInNf/aLTgXYvsHhYgUheKTFrSspu3uYbndePD1guAw+NBAyUSgxJAG0tyeBxT/aEfOfTUIVWgd889VldtKKzAg4fxySymNIYCH6fC/1S4MC0XrBupdeVaNV8oVC1/LM7gU5pYOg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(39860400002)(136003)(396003)(366004)(376002)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(6512007)(53546011)(6506007)(26005)(2616005)(5660300002)(36756003)(66946007)(6486002)(66476007)(66556008)(54906003)(4744005)(2906002)(31686004)(82960400001)(478600001)(41300700001)(86362001)(8936002)(8676002)(4326008)(31696002)(110136005)(316002)(38100700002)(6666004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bmdmL2tOUTBzQVdZeThlMWNjbk5ZTmZzUHhVYm1qSjJyM1JXbkVEZEI3dmhE?=
 =?utf-8?B?ZnV0aGYvREpGRUVOckl4SW9GNEw3NlJ4WFRpbTI4WTl1Wm9vRy9PZXFsbERT?=
 =?utf-8?B?MXZSWjUwZFdaVGFPcDJnclpVbG92Q2xvQjQxVDk0dzEwdjBDNGtxZ2dxeHVa?=
 =?utf-8?B?OXR2d0YxZG0yU25QSVE0QzVrTkw3N2FKQjh4QlNMc1lucEJ6MWs3YUFtUUhF?=
 =?utf-8?B?M1lNazllcnhNN2ZVekVIRXVyK1FmRU9WVFZmdzQ0UmxEYUllU1BBN1ExS0d2?=
 =?utf-8?B?QmUyKy9JMVV6alEzZnJldDltUFJKSExFRGdGMWRjOWNWcTVRU1Fsb25JemtG?=
 =?utf-8?B?U3RreTYvMDNjTW5WSUgzV3lleE83aG1KeXNjVmtJbzRtbFFyUVkxcGxyM1Zz?=
 =?utf-8?B?djVrdlNOcjBOSkRSRWdoWnZ1bTlaRVMxQzFJQStJV3lXdHRXRGdNV0VoY0Ft?=
 =?utf-8?B?N3B1eWV5ZWxPYW9wTVhQNWQ4dkRuanJTK2pQVmNmVzNDSFBWdGh0Q05JL1NP?=
 =?utf-8?B?RFVlTE11OC9hT2ZHL0Y0L09sNW8xWWo2L2V6REltaGMrWkhBOWIvNlJOTFBD?=
 =?utf-8?B?d3BmeStZZ2FZRkRrcy9ZeC92RFo3ZTRCQzBTMUQ4NVhVUXJzcyt0R2lCU2tI?=
 =?utf-8?B?RmVtckh6eHZ2TzI5QzN1eTcrcHRaMHlHOThqZVpRTm1ablV2UmVYQWZjcnBO?=
 =?utf-8?B?NkpQSHE5RklwZlBsT0EvYW03ZXd6SStwMi83ZzIrVG1Pak5jQ2FMR25IdHJU?=
 =?utf-8?B?aGVPUXJTMmgxeDEvazg4ODdQZkZwVzlVeXEwTEhnZGdwYll1OHVnc0hxNzNh?=
 =?utf-8?B?cEEvZS9vWDNrYjBhbU1Wb1pXSXlCZ1NxY0V5cnl6bXFWM2NOM1N5RFo4eTZ2?=
 =?utf-8?B?a1p4YnduL2VVeklnZHg3TXVqRHhtSVVQYThsYms0L1phV2hEbXdta3hOb05O?=
 =?utf-8?B?UzdKbnlGVFp4K1laUm9SYUI3TE1BWEhCdGptN3ppZTR6YXJEMnQyY2JqOGcy?=
 =?utf-8?B?eTYxaS9tMjM1SkVscEQvUkZkUTFic2FqTE03L293RnZKak1BaU5OeHBiV2xE?=
 =?utf-8?B?SStGRThmdFdhdWFYMDBoVG45YUlCNmNNckdYaG9wTzRLYWFlUWIwMVRkWWk5?=
 =?utf-8?B?TTJjY09jejk0SkNyZm1BZVhPNVFKUVIrRStqQVhieTB0N1NvbjBWc2ZBeTJH?=
 =?utf-8?B?WDdudTVYazMwY0ZtM3BBRDJaWU55Y0NnVjVkT2NGdUwyOGF1dVM0dmJGN0dy?=
 =?utf-8?B?ZEswSFZGVmlMc2JxaXpFbDl1YlFEZ0l6TGNhQ3JIVTRzZm1pSmVGUVBvd0Zm?=
 =?utf-8?B?ZGxCdjVyWm1oY1NFVWY3bFpwek9TdDJyWkJmb2w5cHpUMi9vT0hjY3FNTVps?=
 =?utf-8?B?QURqYXIwMVFhbzRnODc5eEpxbWtBZll0OG84YnNYeFM4aDBoeUxzditlalRn?=
 =?utf-8?B?TkZLZ1haaGpLNGFuendHVEFhc1VvVDUzRHVxZzhWbmowK1ZIcFdGUmRuQWhh?=
 =?utf-8?B?ZUhZV2RUcUgxb3J0d3QzOFYxaHY0dzk3Qm90VHNVT2h4bE1QM1Q2bk80YTFs?=
 =?utf-8?B?eU5LTUJsRUNva1JMMVVBRVVibGZzVklqbEh1bkVvVDhUemFOV2JpUXFoZFdX?=
 =?utf-8?B?ZVg3VjVOdDV5bFlaWHFxSHpyT1Mwc3BuN1U4aU9SeDZIUm5aYXczSHozRUFz?=
 =?utf-8?B?Qi92NWljRHU2N0pFNnhPblpwYWFQdzEvYlE1ZlRCQnduTHZicnhiUnJ5ZE5Z?=
 =?utf-8?B?QnlGTTYzR0hRT2VrMlFMWkx1Q0h0dStSeEppUWZ6dDk0SXN4SDVreG5wNzdt?=
 =?utf-8?B?MWlKNlVtMnlCV2trV25sVDlBQWc0cTZHQWtJc3BlNUtFeVZsNXM1L01PTWov?=
 =?utf-8?B?OUQzM0lLWWFPeFEyazVQZ3B5VzN1MTlab1NxWWg0T1NwMm1oNWdNRk5mYkh5?=
 =?utf-8?B?UjMyd2pyd0R0Mm42UElkZFBheFRoUWFidWhzL1Q1bHlVVEE5K08xMHBMbU13?=
 =?utf-8?B?WnBoSmdjUUVYWjErNDQ1Tjhud2QzTk9SbnVXZk9IWGFSUjIzZVRqT1Q2aHYx?=
 =?utf-8?B?bnBNekxIUnNGc0g2bnJuL2RPa0xlUXpJYnlPSnhsTXlkbEl0K2tyYWdqQnVR?=
 =?utf-8?B?SHpsY2RHYWltenZqUHN4YUZEczVVcUVIdDBmeGk3Um1ZQXk3WndxdzcwUmxI?=
 =?utf-8?B?SHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 231548de-95aa-4824-d6b8-08dbfa8de0c5
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Dec 2023 21:12:27.3331 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0FJ0Cgdeum8rPQA9/xwEa2ZjpV3HDfhH80dhUPJSzHQRsXuHBAUK8CMf8R1BnMk+nB3GrtEiN3xDXLjTO9t6mg7dDHonf55S87+H3HHzAC0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4585
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702329153; x=1733865153;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DEXfLlm3Odjm6tUUwx/7DqzV/zFLg2sFKwhIYdabVT0=;
 b=hz2ySON1WmAj1bsVfZWMboNP2MqNKSm2c+9cbGQo4ajISHJBIVjW+B80
 363aej1itcz/s7U5s0R+hBtbu6EUc5ADJld96WsE/P7REhOdN1GpypjIL
 klm26jZ+PusMFNAcis9DTSgoHWGfrHvEbedaFi5rfWy6ruVT1XQKkUJTg
 j8ok513PKcMVHZ+a9fm+xXr2KaGV75n+1iETKU883hcOQuJxVa2QYqLDj
 Xj9HwFC5LB8TYLRgCzChz6wg3v2ab6bJX5JpgyaT1lQu1odNaPxKAaOIQ
 Sa+2wBu5/EzBnfNsa3cftdtqrRNXRtEHu2igmNafr/pP2mw1ZgVmOp18T
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hz2ySON1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: alter feature support
 check for SRIOV and LAG
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
Cc: Robert Malz <robert.malz@canonical.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Heitor Alves de Siqueira <heitor.de.siqueira@canonical.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Brandeburg, Jesse" <jesse.brandeburg@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/8/2023 3:46 PM, Ertman, David M wrote:
> 
>  From your description, it is plausibly related to this patch.  Looks like we should also
> send this to iwl-net.
> 
> Tony, do you need me to do anything to facilitate this?

This applies ok to iwl-net so we're ok in that regards. I do need an 
accompanying Fixes for net though; I believe it's bb52f42acef6 ("ice: 
Add driver support for firmware changes for LAG")?

Thanks,
Tony
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
