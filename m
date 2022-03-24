Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 822EB4E65D6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Mar 2022 16:10:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2757941C82;
	Thu, 24 Mar 2022 15:10:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zQBI27lLJ_BK; Thu, 24 Mar 2022 15:10:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D28BA41C71;
	Thu, 24 Mar 2022 15:10:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C2D871BF3D8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Mar 2022 15:10:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A8EFC4019B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Mar 2022 15:10:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P9SnRxgvbEMH for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Mar 2022 15:10:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EF5704011A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Mar 2022 15:10:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648134636; x=1679670636;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xxUYAU/CzdFyFfAygDLP5lZMo0E0mebdUJ3Cm2f1y7s=;
 b=NA9jyDdn/+7L78I1we6FSsuctba5VcsF5a4aMZddPhdrzi6xzMLOmcG9
 SAOKTui9PUGZ+or+zxhVjRpOvYroMlI5sz24sqsWMfvzAsAr+oCBrz1P8
 zteYgjXvj4MLydHAi0BGDJWU9m/nH0FBsnA3k5mJCgR9JuzI5HebUnbI4
 gmTjwngJDhRk54J/rDZsV6M7M43vPo+FoxV+oUNBlqPuWY4t9ZOK3WN1c
 KDzog9zIbUZHxEGyNNT9ht1PAgD1jBZ+2rBD+P/DpmqzAfBAB/tHLS75U
 4Q1L3NRpnDd3YMMZdpNHtPzyr5ViLazxVp39rD57nwcGXY2OAV5K/5veU g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="344833496"
X-IronPort-AV: E=Sophos;i="5.90,207,1643702400"; d="scan'208";a="344833496"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 08:10:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,207,1643702400"; d="scan'208";a="544683611"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga007.jf.intel.com with ESMTP; 24 Mar 2022 08:10:05 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 24 Mar 2022 08:10:04 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 24 Mar 2022 08:10:04 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 24 Mar 2022 08:10:04 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Thu, 24 Mar 2022 08:10:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jsARimxkbqmJEDz45QaynDn8vxZ3fZLKqQhWnBruQMMXIfJEXPXnEbTSBvOr8/G4tNCfdpVQ0f/1nCId39N1e2Ynuwp7t/4oVMdTXJMF8x828Z05nBr4/Or0Yzg4XP+saLOD4YzhcUKsZw7QG21FaZWzsOOUTJr4k7xyLlxcew3qZ71wY7/TazAXfCOdfW0fhHjEEuWw5LCzReMDPZHOEMn8bCm0tIbHUubN2GRsUhx4rbF09ZcyRVF3Wpe0mwr0rCqqecYYXsgeJc1RDRVDOaNM3q4eG0c/IP9DarfOgNMNaaaOu8JTLWVkc4rtKzdZPy8TR888ntW5rqsXeOnVJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HRPHTsSmYhJHPgSmFRQNAslyYyUH1WmXpVIbYj0vmi0=;
 b=YrQKv+7lvTlfJQ4mLWpA18UCpcXMBLYDCVK8eWJyViijFiHUfRiMU8AEpGxw+huMzsmewFBbNdyM2Wz3c644rIhKKcKaJcgJR6FlJeNqB6X0lx5Jdzd6ulopgSb0On1J2O9SqkkRZc/uO9fzxTL2VpABfG8imhwa403Y/EGAvfgwib4JX2WFcI//bXtU6ESvuhY9JY7fYI5HCb4C9gl3yVjvpaUw2UtM86dFjYI1MC4EHrSCRQRHhnNXn83fXwqCmZ24SZrBn4UqSzAD/2nTQzfAfnDoDC4F83EBwA/F+JohNWzcyNNBk3yinAs9bsFkZAjDil/RDqgzy/wA5D+bpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4787.namprd11.prod.outlook.com (2603:10b6:303:95::23)
 by MWHPR11MB1760.namprd11.prod.outlook.com (2603:10b6:300:10e::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5102.19; Thu, 24 Mar
 2022 15:10:02 +0000
Received: from CO1PR11MB4787.namprd11.prod.outlook.com
 ([fe80::d171:52df:cf0f:c1b1]) by CO1PR11MB4787.namprd11.prod.outlook.com
 ([fe80::d171:52df:cf0f:c1b1%6]) with mapi id 15.20.5102.019; Thu, 24 Mar 2022
 15:10:02 +0000
Message-ID: <1e0558eb-b1f1-edb5-e554-a41f2c160401@intel.com>
Date: Thu, 24 Mar 2022 17:09:54 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.7.0
Content-Language: en-US
To: Thorsten Leemhuis <regressions@leemhuis.info>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 "Fuxbrumer, Devora" <devora.fuxbrumer@intel.com>, "Ruinskiy, Dima"
 <dima.ruinskiy@intel.com>, naamax.meir <naamax.meir@linux.intel.com>,
 "Neftin, Sasha" <sasha.neftin@intel.com>
References: <6801d0ef-9620-0f61-c107-c2c5524952ef@leemhuis.info>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <6801d0ef-9620-0f61-c107-c2c5524952ef@leemhuis.info>
X-ClientProxiedBy: ZR0P278CA0108.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:23::23) To CO1PR11MB4787.namprd11.prod.outlook.com
 (2603:10b6:303:95::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: dd1b369f-8389-4ae7-aac3-08da0da85e5f
X-MS-TrafficTypeDiagnostic: MWHPR11MB1760:EE_
X-Microsoft-Antispam-PRVS: <MWHPR11MB1760AE54A5F5B0FA4240B65697199@MWHPR11MB1760.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KPkvvebtBrp0RicuOk6EOA7IZwDFVXAZq0NBEqtbeoyoyvIMrJRUE0wtYn+8HKNUbGcJ5bcreLqAwt8OCOeiw4RRKfrESzsCoE5IwY1ceq1bHmXAYXgA7GeKc3Vymd3raYtuap4C1ZQHZFsbNVAAXoKe+AbutJpNKoYKsfpqgOgZqJd2KwNCsN2BBb7gfouV3SnHl4V9BJTPNpnCktK9EEvbP7VD6Gaxx5Wx9HzMCvY/oGhk49qYW169gImmCF99kndqO5X+dW0u4fNKCR6x/e9d8SvyO/JlGcSBOFHZtkj/RQX3fU/B6frZ1WQ/s/YeJg+b9oPGYdu8OiuxEBiySzndgY/PdmmbOp8w9cQuFtQIRc9REbtPuOT2ExRzxzYEK45ugzByC/vuIRMted33P1qpbTXhXCY5CpFCkVkerAK+nDxHiAG9bD6oEnQXgzbAYrVPLRkLm4oFtvxm/IQW4eRaJb3BBdKi9lyzFUWW5/JtQsgIPuNHQYUCm216g/AnCKOn0ya78qA5ViaDOgmve0TFibGRbXJQWyapwXsbc2Wqs3QEUuNjNEk5wfA0SNyN/buhJo6fRoeBDpyWcAqLxbk9OYzXMIRQ4HU/+O5jAX9b885P9Dgj9cKoNt8+oBCR+1c7X9VfXiezPO7Hh59mLt8eh/JIfm5tQQHKTYQ7yc+1dRV9hdCy9eJUppLVWJB8PldzcXsUEzaL/yQnc5eWFhdo77uKQbi1B8wARmeNOmFmkmol0Un/iSqWCJfBi4ZmGl+a2p5qFLr486geVDF9cxsyMTVPbNr78IiiZJERgnF9XEkYF9RRRDBxGEuswMxJQE5zY1dOvDwX+1PFnXzBsA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4787.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(66946007)(66556008)(83380400001)(4326008)(8676002)(66476007)(6486002)(966005)(508600001)(86362001)(53546011)(6506007)(6666004)(31696002)(6512007)(2906002)(8936002)(186003)(5660300002)(26005)(2616005)(31686004)(316002)(54906003)(110136005)(36756003)(38100700002)(921005)(82960400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eU5tUHl3Y0pkYS9mZkpYQVQ4ZTJOWlkrOHZqN01KRWkrbzA0SjVsbnJDUm5M?=
 =?utf-8?B?Vm8wdW9qVTVEcldtY0p0YnhoZ1g1RTlyL2h5Skl5VnZBcFd2TU5kRGZVRWxi?=
 =?utf-8?B?QWhaRzFPNDBVZ1pEQkY2a0QwOGZvYzZjQVdYaURmSnRCaThONVRtSHZvZ2Y5?=
 =?utf-8?B?VjdnMWRUbm5UZkNsNDBDNGtBV0lYdThLLzJIelJYampzNG9pRCtxamZEL3pF?=
 =?utf-8?B?YUV3cGhOT1NJZVk5aWdTWTJ6Q2JWbFBlL08ydVNsQm5ndE1YODB0SnlpVlc2?=
 =?utf-8?B?Rk1aZ2JmNExTQVl6MjVVdzloRGVTeHMyb0dHanBzK3p4QW5XL1NHMjFyVUhZ?=
 =?utf-8?B?cHcxS29MZXRMVEI1V2ZUYWh1V3RJcitWQTc2OUNHTWdlWEREK1g4M0dLQUpN?=
 =?utf-8?B?aUg3dytiVlllb1F4c0VSbmRxeExySkdIeTU5eVlkOWZST3dUN0V6bzRPSFFo?=
 =?utf-8?B?alR3UTBaTk5hcFpLYUtQVmVwdFJGakVoQmtkZDZ6Rmk5QzEzQVduci8rNTZt?=
 =?utf-8?B?TXFha3BhOTBxOFVFYW83aFhzN3RCQ3RycDhvVWEzbngyWWZ5VFVnS2dydmpp?=
 =?utf-8?B?dVRRV296ejZ2OTRrQWp0ZlJWZEthS0IxVVpBOXp1b0ZvSnh2T2ZlWTN5cEIv?=
 =?utf-8?B?OWZncHdTd1Y1eHF4SVVpRWtSdy9KbGxlbUY3N20veW1ETzBSSzdhS1gzRXJN?=
 =?utf-8?B?SjQzZ3plY3N5TzZVN0E1ZUZETTMwRlZGTlkwNkEwcHhTZEc4WXhGSExaWG50?=
 =?utf-8?B?cDRSaGxEY1BEL292eS8zY29WYnlPTkZ4SXlnajMyQ01OdU1wKzBEQXhQUFNz?=
 =?utf-8?B?RVhpK1AyVXdTU3dPMHpvcUhTcVRieDNXNzhNcWQ5M3Z0MHBPU3FEcUQxa09v?=
 =?utf-8?B?MHRoY1F1ZWFMOXMzS3RoSVVjbzAraUcyaEhFT3dsZk15Qm1nc2VXWmhVSEsz?=
 =?utf-8?B?L0NQSHlQVlZ0bUE0dExGeTdBV0tEWG5QNmY4dmttYnpNNUZja1dUcWt1TW5m?=
 =?utf-8?B?cnFyWW9MbVFnNGYwUG95OC9TaG9KUlNjSWxnN2JKc3cyOVVlcXMxU2N4RnY4?=
 =?utf-8?B?REROVStxRlZ1U3NDcENvWVZwdGV3MXdFVUN2RnN0ZFZYYU03anFNcWk4UkVa?=
 =?utf-8?B?SnMvbGExTUtRdHMrZmMrbFdlS2xoTmVlVnY5TTU1YXVoZXIyVC9sOVo1TUtV?=
 =?utf-8?B?TDBDRUJDazlzMTVCOTdISnBXaFhPaGJrMnpIbVBlRzRhRVRVQmNwOGN5cGpX?=
 =?utf-8?B?K0dsNHdqck5taFNIaXl0dmYyVGtWZWtnZzRyL3FuT2RWazdUQWQ3WHJYaGVG?=
 =?utf-8?B?c1hVVndXRi9hMm5vZGxmajk1UlZRR2M5UXFRS3g4cWgrUEU1eVplamJQV2U4?=
 =?utf-8?B?b0wzSVV0TWJDc2EzNmxVK1N0UzVHM2lTRTlVaklmdnpvbEhsazR6VURxU3BX?=
 =?utf-8?B?a3EvRllTNE9oemdQTHBWMVJDNUtrSDhIVzlKQWsvL0FXamJDTkFNbFZLd3Mw?=
 =?utf-8?B?dFJzTlBPa3hVbGRMSzVHZ3RHVFVsbHVoWnZGcEEyR3F5Mm15TnZ2cG9RUWll?=
 =?utf-8?B?RzZTY3BtbEFYa2wzS2R6MFlNZUhGekpNMFl0SHBYaTBraTVXZ0ZnUTkxYjhI?=
 =?utf-8?B?eWkwc1pZdDJEeEZPZkFVTmJkQWVoMkhWUUEyYmhsT1VrNElxNCtXYUFhZDlL?=
 =?utf-8?B?U1o5eElhRXZVWklhaVZHTE9SaTZOSVp3ZUxJSE9vSXh3RDZHY244alBLdEFh?=
 =?utf-8?B?T0RNeHIwN3cyZURxU0JKRnNDZXB5MUdRb0VTRlh2aEJuaVNMa0lGek5GSGp5?=
 =?utf-8?B?b3Z2Z2dsREF3dHo5eTFBT0Mvdy9rSU5KcHpEZ0VBUzRxUWNOV09IazYvTG1p?=
 =?utf-8?B?L3NJZDlUL3ZRcUZDaUZDU0Uvd1FvTm9SNzBsaUorcHlmZGNuS1JVMjk1alM1?=
 =?utf-8?B?c09OandULzk1Ly9PZ3VVV3dhZ0hYRnVtRE5FMEJSTHNnVTVKMHU4OE5lcmN4?=
 =?utf-8?B?QkpESDdHV2pKa084ZTc0cU8yaVljcEpJY0EvSlpqellzVDRwdWpTODVRZzdY?=
 =?utf-8?B?VzhIajlwQTVDNWVJYVhVZm9rN2I1MEMzd09JUDZOMVhmNkE2bSszcC96Sm9E?=
 =?utf-8?B?MG0wSm5rdjNDTzJYQ0RPaXI1NFBGOS9BMWUwQ1NvUi9vK0pGdmorbEU0S2Zy?=
 =?utf-8?B?b3d3UzVicmYxd2EzMnI4azV4cG5hdTNiZ3gyYmZFNUh5N3BYQTlDeEl3aTdO?=
 =?utf-8?B?aHBzbFA5NC9QYzJrUmJ3THpWcW9SYjFoZXB4c2lvN2ZNNWVaQy9iejd3bEpm?=
 =?utf-8?B?NHFIeHNpMEJ5U3VXNlhjQzN1aTdqQlZmbWI2N0djcVd2QXNSUWRRdmY4ZzVo?=
 =?utf-8?Q?BjOaiIr1SGy2eOT0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dd1b369f-8389-4ae7-aac3-08da0da85e5f
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4787.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2022 15:10:01.8153 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6mblQSvLemFJnX0Rd4Bl0RiVPiNkEq3G6RNlZiLwPwgZWiMxt9YtEQDBpBv6BiGE7DcIUj2vc46ATlh/NfejYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1760
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] Bug 215689 - e1000e: regression for I219-V
 for kernel 5.14 onwards
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
Cc: James <jahutchinson99@googlemail.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 "regressions@lists.linux.dev" <regressions@lists.linux.dev>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMy8yNC8yMDIyIDEyOjM3LCBUaG9yc3RlbiBMZWVtaHVpcyB3cm90ZToKPiBIaSwgdGhpcyBp
cyB5b3VyIExpbnV4IGtlcm5lbCByZWdyZXNzaW9uIHRyYWNrZXIuCj4gCj4gSSBub3RpY2VkIGEg
cmVncmVzc2lvbiByZXBvcnQgaW4gYnVnemlsbGEua2VybmVsLm9yZyB0aGF0IGFmYWljcyBub2Jv
ZHkKPiBhY3RlZCB1cG9uIHNpbmNlIGl0IHdhcyByZXBvcnRlZCBhYm91dCBhIHdlZWsgYWdvLCB0
aGF0J3Mgd2h5IEkgZGVjaWRlZAo+IHRvIGZvcndhcmQgaXQgdG8gdGhlIGxpc3RzIGFuZCBhIGZl
dyByZWxldmFudCBwZW9wbGUgdG8gdGhlIENDLiBUbyBxdW90ZQo+IGZyb20gaHR0cHM6Ly9idWd6
aWxsYS5rZXJuZWwub3JnL3Nob3dfYnVnLmNnaT9pZD0yMTU2ODkgOgo+IAo+PiBbcmVwbHldIFvi
iJJdIERlc2NyaXB0aW9uIEphbWVzIDIwMjItMDMtMTUgMTM6NDU6MzggVVRDCj4+Cj4+IEkgcnVu
IEFyY2ggbGludXggb24gYW4gSW50ZWwgTlVDIDhpM0JFSCB3aGljaCBoYXMgdGhlIGZvbGxvd2lu
ZyBuZXR3b3JrIGNhcmQ6Cj4+Cj4+IDAwOjFmLjYgRXRoZXJuZXQgY29udHJvbGxlcjogSW50ZWwg
Q29ycG9yYXRpb24gRXRoZXJuZXQgQ29ubmVjdGlvbiAoNikgSTIxOS1WIChyZXYgMzApCj4+ICAg
ICAgICAgIERldmljZU5hbWU6ICBMQU4KPj4gICAgICAgICAgU3Vic3lzdGVtOiBJbnRlbCBDb3Jw
b3JhdGlvbiBEZXZpY2UgMjA3NAo+PiAgICAgICAgICBDb250cm9sOiBJL08tIE1lbSsgQnVzTWFz
dGVyKyBTcGVjQ3ljbGUtIE1lbVdJTlYtIFZHQVNub29wLSBQYXJFcnItIFN0ZXBwaW5nLSBTRVJS
LSBGYXN0QjJCLSBEaXNJTlR4Kwo+PiAgICAgICAgICBTdGF0dXM6IENhcCsgNjZNSHotIFVERi0g
RmFzdEIyQi0gUGFyRXJyLSBERVZTRUw9ZmFzdCA+VEFib3J0LSA8VEFib3J0LSA8TUFib3J0LSA+
U0VSUi0gPFBFUlItIElOVHgtCj4+ICAgICAgICAgIExhdGVuY3k6IDAKPj4gICAgICAgICAgSW50
ZXJydXB0OiBwaW4gQSByb3V0ZWQgdG8gSVJRIDEzNQo+PiAgICAgICAgICBSZWdpb24gMDogTWVt
b3J5IGF0IGMwYjAwMDAwICgzMi1iaXQsIG5vbi1wcmVmZXRjaGFibGUpIFtzaXplPTEyOEtdCj4+
ICAgICAgICAgIENhcGFiaWxpdGllczogW2M4XSBQb3dlciBNYW5hZ2VtZW50IHZlcnNpb24gMwo+
PiAgICAgICAgICAgICAgICAgIEZsYWdzOiBQTUVDbGstIERTSSsgRDEtIEQyLSBBdXhDdXJyZW50
PTBtQSBQTUUoRDArLEQxLSxEMi0sRDNob3QrLEQzY29sZCspCj4+ICAgICAgICAgICAgICAgICAg
U3RhdHVzOiBEMCBOb1NvZnRSc3QrIFBNRS1FbmFibGUtIERTZWw9MCBEU2NhbGU9MSBQTUUtCj4+
ICAgICAgICAgIENhcGFiaWxpdGllczogW2QwXSBNU0k6IEVuYWJsZSsgQ291bnQ9MS8xIE1hc2th
YmxlLSA2NGJpdCsKPj4gICAgICAgICAgICAgICAgICBBZGRyZXNzOiAwMDAwMDAwMGZlZTAwM2Q4
ICBEYXRhOiAwMDAwCj4+ICAgICAgICAgIEtlcm5lbCBkcml2ZXIgaW4gdXNlOiBlMTAwMGUKPj4g
ICAgICAgICAgS2VybmVsIG1vZHVsZXM6IGUxMDAwZQo+Pgo+PiBJIGZvdW5kIGEgbWFqb3IgcmVn
cmVzc2lvbiBzaW5jZSB0aGUgcHJldmlvdXMgZmV3IGtlcm5lbCB2ZXJzaW9ucyB3aGljaCBjYXVz
ZXMgc2V2ZXJhbCBvZGQgaXNzdWVzLCBtb3N0IG5vdGVhYmx5IEkgdXNlIHRoZSBtYWNoaW5lIHRv
IHN0cmVhbSBsaXZlIHR2IHZpYSBUVmhlYWRlbmQgYW5kIHdhcyBmaW5kaW5nIHRoaXMgdG8gYmUg
dW51c2FibGUgKHBpY3R1cmUgZnJlZXplcyBhbmQgc291bmQgYnJlYWtzIHVwIHZlcnkgYmFkbHkg
d2l0aCBjb250aW51aXR5IGVycm9ycyBpbiB0aGUgVFZoZWFkZW5kIGxvZ2ZpbGUpLgo+Pgo+PiBJ
IGZvdW5kIHRoZSBpc3N1ZSB3YXMgaW50cm9kdWNlZCBzaW5jZSB0aGUgNS4xNCBrZXJuZWwsIGFu
ZCBoYXZlIGV2ZW50dWFsbHkgZ290IHJvdW5kIHRvIHBlcmZvcm1pbmcgYSBnaXQgYmlzZWN0LCB3
aGljaCBsYW5kZWQgdXBvbiB0aGUgZm9sbG93aW5nIGNvbW1pdDoKPj4KPj4gNDRhMTNhNTogZTEw
MDBlOiBGaXggdGhlIG1heCBzbm9vcC9uby1zbm9vcCBsYXRlbmN5IGZvciAxME0KPj4KPj4gSW5k
ZWVkLCBpZiBJIHJldmVydCB0aGlzIHNpbmdsZSBjb21taXQgdGhlbiB0aGUgcHJvYmxlbSBpcyBy
ZXNvbHZlZC4KPj4KPj4gVG8gaGVscCBkaWFnbm9zZSB0aGUgaXNzdWUgSSBhcHBsaWVkIHRoZSBm
b2xsb3dpbmcgcGF0Y2ggdG8gY2FwdHVyZSB0aGUgdmFsdWVzIG9mIHRoZSBsYXRfZW5jLCBtYXhf
bHRyX2VuYyB2cyBsYXRfZW5jX2QsIG1heF9sdHJfZW5jX2QgdmFyaWFibGVzOgo+Pgo+PiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEwMDBlL2ljaDhsYW4uYyBiL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9pY2g4bGFuLmMKPj4gaW5kZXggZDYwZTIw
MTZkLi5mNGU1ZmZiY2QgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2UxMDAwZS9pY2g4bGFuLmMKPj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvZTEw
MDBlL2ljaDhsYW4uYwo+PiBAQCAtMTAxMiw2ICsxMDEyLDcgQEAgc3RhdGljIHMzMiBlMTAwMF9w
bGF0Zm9ybV9wbV9wY2hfbHB0KHN0cnVjdCBlMTAwMF9odyAqaHcsIGJvb2wgbGluaykKPj4gICAg
ICAgICAgdTE2IG1heF9sdHJfZW5jX2QgPSAwOyAgLyogbWF4aW11bSBMVFIgZGVjb2RlZCBieSBw
bGF0Zm9ybSAqLwo+PiAgICAgICAgICB1MTYgbGF0X2VuY19kID0gMDsgICAgICAvKiBsYXRlbmN5
IGRlY29kZWQgKi8KPj4gICAgICAgICAgdTE2IGxhdF9lbmMgPSAwOyAgICAgICAgLyogbGF0ZW5j
eSBlbmNvZGVkICovCj4+ICsgICAgICAgc3RydWN0IGUxMDAwX2FkYXB0ZXIgKmFkYXB0ZXIgPSBo
dy0+YWRhcHRlcjsKPj4KPj4gICAgICAgICAgaWYgKGxpbmspIHsKPj4gICAgICAgICAgICAgICAg
ICB1MTYgc3BlZWQsIGR1cGxleCwgc2NhbGUgPSAwOwo+PiBAQCAtMTA3NCw2ICsxMDc1LDkgQEAg
c3RhdGljIHMzMiBlMTAwMF9wbGF0Zm9ybV9wbV9wY2hfbHB0KHN0cnVjdCBlMTAwMF9odyAqaHcs
IGJvb2wgbGluaykKPj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICgobWF4X2x0
cl9lbmMgJiBFMTAwMF9MVFJWX1NDQUxFX01BU0spCj4+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICA+PiBFMTAwMF9MVFJWX1NDQUxFX1NISUZUKSkpOwo+Pgo+PiArICAgICAgICAg
ICAgICAgZV9pbmZvKCJlMTAwMGU6IGxhdF9lbmM9JWQgbWF4X2x0cl9lbmM9JWQiLCBsYXRfZW5j
LCBtYXhfbHRyX2VuYyk7Cj4+ICsgICAgICAgICAgICAgICBlX2luZm8oImUxMDAwZTogbGF0X2Vu
Y19kPSV1IG1heF9sdHJfZW5jX2Q9JXUiLCBsYXRfZW5jX2QsIG1heF9sdHJfZW5jX2QpOwo+PiAr
Cj4+ICAgICAgICAgICAgICAgICAgaWYgKGxhdF9lbmNfZCA+IG1heF9sdHJfZW5jX2QpCj4+ICAg
ICAgICAgICAgICAgICAgICAgICAgICBsYXRfZW5jID0gbWF4X2x0cl9lbmM7Cj4+ICAgICAgICAg
IH0KPj4KPj4gV2l0aCB0aGlzIGluIHBsYWNlIEkgc2VlIHRoZSBmb2xsb3dpbmcgaW4gZG1lc2c6
Cj4+Cj4+IFsgICAgMy4yNDEyMTVdIGUxMDAwZTogSW50ZWwoUikgUFJPLzEwMDAgTmV0d29yayBE
cml2ZXIKPj4gWyAgICAzLjI0MTIxN10gZTEwMDBlOiBDb3B5cmlnaHQoYykgMTk5OSAtIDIwMTUg
SW50ZWwgQ29ycG9yYXRpb24uCj4+IFsgICAgMy4yNDMzODJdIGUxMDAwZSAwMDAwOjAwOjFmLjY6
IEludGVycnVwdCBUaHJvdHRsaW5nIFJhdGUgKGludHMvc2VjKSBzZXQgdG8gZHluYW1pYyBjb25z
ZXJ2YXRpdmUgbW9kZQo+PiBbICAgIDMuNzQ5MDA5XSBlMTAwMGUgMDAwMDowMDoxZi42IDAwMDA6
MDA6MWYuNiAodW5pbml0aWFsaXplZCk6IHJlZ2lzdGVyZWQgUEhDIGNsb2NrCj4+IFsgICAgMy44
MjQ3NTFdIGUxMDAwZSAwMDAwOjAwOjFmLjYgZXRoMDogKFBDSSBFeHByZXNzOjIuNUdUL3M6V2lk
dGggeDEpIDk0OmM2OjkxOmFlOmIzOjdiCj4+IFsgICAgMy44MjQ3NjVdIGUxMDAwZSAwMDAwOjAw
OjFmLjYgZXRoMDogSW50ZWwoUikgUFJPLzEwMDAgTmV0d29yayBDb25uZWN0aW9uCj4+IFsgICAg
My44MjQ4NDldIGUxMDAwZSAwMDAwOjAwOjFmLjYgZXRoMDogTUFDOiAxMywgUEhZOiAxMiwgUEJB
IE5vOiBGRkZGRkYtMEZGCj4+IFsgICAgNi45NDkzMjddIGUxMDAwZSAwMDAwOjAwOjFmLjYgZXRo
MDogZTEwMDBlOiBsYXRfZW5jPTIyMzMgbWF4X2x0cl9lbmM9NDA5OQo+PiBbICAgIDYuOTQ5MzMx
XSBlMTAwMGUgMDAwMDowMDoxZi42IGV0aDA6IGUxMDAwZTogbGF0X2VuY19kPTU4MzY4IG1heF9s
dHJfZW5jX2Q9MAo+PiBbICAgIDYuOTUxMTY1XSBlMTAwMGUgMDAwMDowMDoxZi42IGV0aDA6IE5J
QyBMaW5rIGlzIFVwIDEwMDAgTWJwcyBGdWxsIER1cGxleCwgRmxvdyBDb250cm9sOiBSeC9UeAo+
Pgo+PiBOb3RpY2UgdGhhdCBsYXRfZW5jX2Q9NTgzNjggYW5kIG1heF9sdHJfZW5jX2Q9MCAhCj4+
Cj4+IGxhdF9lbmNfZCBpcyBncmVhdGVyIHRoYW4gbWF4X2x0cl9lbmNfZCBzbyBpdCdzIHNldHRp
bmcgc25vb3AgbGF0ZW5jeSB0byBtYXhfbHRyX2VuYyAoaS5lLiA0MDk5KSB3aGVyZSBpdCB3b3Vs
ZCBoYXZlIHByZXZpb3VzbHkgYmVlbiBzZXQgdG8gMjIzMyBpbiB0aGlzIHBhcnRpY3VsYXIgZXhh
bXBsZS4gVGhpcyBzZWVtcyB0byBiZSB3aGVyZSB0aGUgcHJvYmxlbSBsaWVzLgo+Pgo+PiBQcmlv
ciB0byBjb21taXQgNDRhMTNhNToKPj4KPj4gaWYgKGxhdF9lbmMgPiBtYXhfbHRyX2VuYykKPj4g
ICAgbGF0X2VuYyA9IG1heF9sdHJfZW5jOwo+Pgo+PiBBZnRlciBjb21taXQgNDRhMTNhNToKPj4K
Pj4gaWYgKGxhdF9lbmNfZCA+IG1heF9sdHJfZW5jX2QpCj4+ICAgIGxhdF9lbmMgPSBtYXhfbHRy
X2VuYzsKPj4KPj4KPj4gSSdtIG5vdCBzdXJlIHdoZXRoZXIgaXQgd2FzIGludGVuZGVkIGZvciB0
aGlzIG5ldyBjb2RlIHRvIHRha2UgZWZmZWN0IGZvciBhbiBJMjE5IHNpbmNlIHRoZSBjb21taXQg
bWVzc2FnZSBvbiA0NGExM2E1IGluZGljYXRlcyBpdCB3YXMgYWltZWQgYXQgSTIxNy9JMjE4LiBT
ZWVtcyBzdHJhbmdlIHRoYXQgbWF4X2x0cl9lbmNfZCBpcyBnZXR0aW5nIHNldCB0byAwPwo+Pgo+
IAo+IEJUVywgdGhhdCBjb21taXQgaXMgZnJvbSBTYXNoYSBOZWZ0aW4uCkhlbGxvIFRob3JzdGVu
LApJJ3ZlIGV4cGVjdGVkIGZvbGxvdyBkZWNvZGVkIHZhbHVlcyAobGluayAxRykKbGF0X2VuYzog
MHgwMDAwMDhiOSA9PiBsYXRfZW5jX2Q6IDE4OTQ0MCAoMTAyNCoxODUpCm1heF9sdHJfZW5jOiAw
eDAwMDAxMDAzID0+IG1heF9sdHJfZW5jX2Q6IDMxNDU3MjggKDEwNDg1NzYqMykKCnNjYWxlIDAg
LSAxCnNjYWxlIDEgLSAzMgpzY2FsZSAyIC0gMTAyNApzY2FsZSAzIC0gMzI3NjgKc2NhbGUgNCAt
IDEwNDg1NzYgKG5hbm8gcykKCkkndmUgc2VwYXJhdGVkIGNhbGN1bGF0ZToKZV9pbmZvKCJlMTAw
MGU6IDEqIG1heF9sdHJfZW5jX2Q6ICVkXG4iLAogICAgICAgIG1heF9sdHJfZW5jICYgRTEwMDBf
TFRSVl9WQUxVRV9NQVNLKTsKZV9pbmZvKCJlMTAwMGU6IDIqIG1heF9sdHJfZW5jX2Q6ICVkXG4i
LAogICAgICAgICgxVSA8PCAoRTEwMDBfTFRSVl9TQ0FMRV9GQUNUT1IgKgogICAgICAgICgobWF4
X2x0cl9lbmMgJiBFMTAwMF9MVFJWX1NDQUxFX01BU0spCiAgICAgICAgPj4gRTEwMDBfTFRSVl9T
Q0FMRV9TSElGVCkpKSk7Ckkgd291bGQgZXhwZWN0OgoxKiBtYXhfbHRyX2VuY19kICh2YWx1ZSk6
IDMKMiogbWF4X2x0cl9lbmNfZCAoc2NhbGUpOiAxMDQ4NTc2CmFuZCBzbzogdmFsdWUgKiBzY2Fs
ZQoxMDQ4NTc2KjMgPSAzMTQ1NzI4bnMKClBsZWFzZSwgbGV0J3MgY2hlY2sgaXQuIChJIGFtIHdv
bmRlcmluZyBpZiBvdmVyLWNhbGN1bGF0ZSBpdCkKVGhhbmtzLApTYXNoYQo+IAo+IENvdWxkIHNv
bWVib2R5IHRha2UgYSBsb29rIGludG8gdGhpcz8gT3Igd2FzIHRoaXMgZGlzY3Vzc2VkIHNvbWV3
aGVyZQo+IGVsc2UgYWxyZWFkeT8gT3IgZXZlbiBmaXhlZD8KPiAKPiBBbnl3YXksIHRvIGdldCB0
aGlzIHRyYWNrZWQ6Cj4gCj4gI3JlZ3pib3QgaW50cm9kdWNlZDogNDRhMTNhNWQ5OWM3MWJmOWUx
Njc2ZDllNTE2NzlkYWY0ZDdiM2Q3Mwo+ICNyZWd6Ym90IGZyb206IEphbWVzIDxqYWh1dGNoaW5z
b245OUBnb29nbGVtYWlsLmNvbT4KPiAjcmVnemJvdCB0aXRsZTogbmV0OiBlMTAwMGU6IGluc3Rh
YmlsaXRpZXMgb24gSTIxOS1WIGZvciBrZXJuZWwgNS4xNCBvbndhcmRzCj4gI3JlZ3pib3QgbGlu
azogaHR0cHM6Ly9idWd6aWxsYS5rZXJuZWwub3JnL3Nob3dfYnVnLmNnaT9pZD0yMTU2ODkKPiAK
PiBDaWFvLCBUaG9yc3RlbiAod2VhcmluZyBoaXMgJ3RoZSBMaW51eCBrZXJuZWwncyByZWdyZXNz
aW9uIHRyYWNrZXInIGhhdCkKPiAKPiBQLlMuOiBBcyB0aGUgTGludXgga2VybmVsJ3MgcmVncmVz
c2lvbiB0cmFja2VyIEknbSBnZXR0aW5nIGEgbG90IG9mCj4gcmVwb3J0cyBvbiBteSB0YWJsZS4g
SSBjYW4gb25seSBsb29rIGJyaWVmbHkgaW50byBtb3N0IG9mIHRoZW0gYW5kIGxhY2sKPiBrbm93
bGVkZ2UgYWJvdXQgbW9zdCBvZiB0aGUgYXJlYXMgdGhleSBjb25jZXJuLiBJIHRodXMgdW5mb3J0
dW5hdGVseQo+IHdpbGwgc29tZXRpbWVzIGdldCB0aGluZ3Mgd3Jvbmcgb3IgbWlzcyBzb21ldGhp
bmcgaW1wb3J0YW50LiBJIGhvcGUKPiB0aGF0J3Mgbm90IHRoZSBjYXNlIGhlcmU7IGlmIHlvdSB0
aGluayBpdCBpcywgZG9uJ3QgaGVzaXRhdGUgdG8gdGVsbCBtZQo+IGluIGEgcHVibGljIHJlcGx5
LCBpdCdzIGluIGV2ZXJ5b25lJ3MgaW50ZXJlc3QgdG8gc2V0IHRoZSBwdWJsaWMgcmVjb3JkCj4g
c3RyYWlnaHQuCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wu
b3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVk
LWxhbgo=
