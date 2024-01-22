Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B214183752B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jan 2024 22:26:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4717341A40;
	Mon, 22 Jan 2024 21:26:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4717341A40
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705958782;
	bh=bvxS9jnUy3OrB1qPea3honxUlo/IWRj4+BbWBY2/sns=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yROe8bWDKlsk+YSeK2s0uXt6/V0yyoUz0M5ZCFHYGTFLjFvI7tNMPNxkmFXM57ue2
	 UZaM8buV8dnA7FIzbk74j+rXgihsrQ0SAaMemFSf7otHXqh1aidVgT0TxV97/aWkJe
	 n91+E3j6gHkBGzVR5E8opBcNn7pvvjLpz1ku1Ua3YmktG6InyVSP75KSfpiSjRJyvr
	 DVzJvmCQerx3PYvIFzxTXZH1TgQGCG8KqKptYl7Nwpvzf/5lbWO4Ptbg/2H0VKS2CB
	 zH52FCCMkRu1Xq6/6+IX4UVEw8FpX9YOH07OGwnXBFId49jng98+dXdvhmhvmRsuod
	 hmtql6nEXXlWg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bCr34ZjjPlPS; Mon, 22 Jan 2024 21:26:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3A24841A32;
	Mon, 22 Jan 2024 21:26:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3A24841A32
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C60F21BF3A4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jan 2024 21:26:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9C49282513
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jan 2024 21:26:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9C49282513
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xixUQVb0EOsy for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jan 2024 21:26:15 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 22 Jan 2024 21:26:14 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E7036824CE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E7036824CE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jan 2024 21:26:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="1217441"
X-IronPort-AV: E=Sophos;i="6.05,212,1701158400"; 
   d="scan'208";a="1217441"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2024 13:19:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,212,1701158400"; 
   d="scan'208";a="1342315"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Jan 2024 13:19:06 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 22 Jan 2024 13:19:05 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 22 Jan 2024 13:19:04 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 22 Jan 2024 13:19:04 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 22 Jan 2024 13:19:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hdhfPy7sL1C++Ln6POtZ3qFVg58EYETKGQaXgasPJ9Kpapd2nB65ZKKnkXJohoPjLrtqe7nR8HtYPNMQ94Ahr4BhYnCcFGDZIrls2KuHE6k7eSMkRSbdrbL09VMi9K+pcpOx6N1D3qH9mpamU63ohC4TVjlq2lrzV/Kap3YiXb+ROnQG53ULEbBBlNrHXaCvKpizoxlfmejEVdB1iv0DHCDkQ8YvZLvXsLJVZDfJjI3i2Us+hk/J9R5XN3lH4H3VTpTfi5ABa2JGjXzn+EYbZ9MZO2t0QIUMCvbrYzazpJfQEsi8/8xe61mYEneqv8RoQ2dWLvNkgninubQOJQ0d2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bvxS9jnUy3OrB1qPea3honxUlo/IWRj4+BbWBY2/sns=;
 b=bFp/Ju8LYKpYMKxdY4Qjw781Sb26PgyVafD+Q96W7CcTrxipIUCdQ/sMEXKOHgseMp4TnN3zNy6Io4jKubQKSwHROBmFahsc3tzZ7Y2XbCnxmgl9JhZnzXcR+3Yu7v9QaaWXyKfJZVBjvDJHLyVDQ8CHSDGS7bEjoXuw9UtbCGjAynnNi7B3ldoTsDy3copP6Tpf4V0skca/vx7QvQ8PaWrNc6I13X/tw8yKbORpuUsx5/rqJwyvyCLSextnXTmNv4ekrcU47jTx1prj49+rEG3SH5lYoDvxCcMuvyZwUkUrP1JqFcxCkjzff2On+mGJN2pqZFgYHE39NHpcxso3VA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by SJ0PR11MB4992.namprd11.prod.outlook.com (2603:10b6:a03:2d4::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.34; Mon, 22 Jan
 2024 21:19:01 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::c164:13f3:4e42:5c83]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::c164:13f3:4e42:5c83%7]) with mapi id 15.20.7202.031; Mon, 22 Jan 2024
 21:19:01 +0000
Message-ID: <e1fc9c7e-20fd-76ac-15e5-b50dcfc1ae9d@intel.com>
Date: Mon, 22 Jan 2024 13:18:57 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240118134332.470907-1-jedrzej.jagielski@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20240118134332.470907-1-jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0097.namprd03.prod.outlook.com
 (2603:10b6:303:b7::12) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|SJ0PR11MB4992:EE_
X-MS-Office365-Filtering-Correlation-Id: 0432cba1-e4ee-41bc-8e4f-08dc1b8fc13f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AaW44A37w/iTwMmgYtT3gn6Mi53HmCHwypW96gXB9ZTxaLqZVR+OkdRH+G4tKLZrOaPwhooag73sA4cZJUKQKytSpKNF/WMosYw1TXfwHo2fGT0tq7KqCVV6+hgWyGTU4+UueSTcJP3t45L8ChFOVNrhL1JgzevrnVa7uT7VAu4VUiHFFDv3LzdWMDYxdqcWvXFMmJfYqv7Bxo6Haqh4grqr2g5ZIjEjtrxSnKRv90pBni8iatY8pwiSmiuR0zHX3czPIHmGL+7hnWrlzyqbGy5QRwLNTM6iJ1bKY8+ePmxSK7gPCUAwAzW4eMOnbXXOOPwTN9S0ORQpkn8i8oKe8NNC63OF/5pT4cvnacjRXV/9LWyufb1Fx64LhPP2BQAUVc07hT5mmhCZ32mLXyrLZeuHAQ0vFYAsplY5BUirDOggPttYPvtSf9VeAbzKjysVQl1uclVV34q5lUivf4IY8T2bwyK9AcbKOzzxRmZ29Cdv8b1NFXvVAYPle9+ouSHXZytvlAv3cBkcukKxW2X5+XgbZeYpn+iLH5KUmFA9+Yzyb7/xgpASNBP1Gqzke6T+6Jn0kJpTAylST8YhBZBeCsWeIv8DPRiDzDF8MmZOavaEf7EaU1QEXsQvL1QD2yoNkW+L7q+VQF7zso+H4/VrigrTdY1he+bZEtHAglrCrbSk0avFn5h+jQX3BzZKo8xZ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(136003)(39860400002)(366004)(396003)(230273577357003)(230173577357003)(230922051799003)(64100799003)(186009)(1800799012)(451199024)(31686004)(31696002)(86362001)(53546011)(6512007)(6486002)(478600001)(36756003)(83380400001)(107886003)(2616005)(82960400001)(38100700002)(26005)(2906002)(4744005)(316002)(5660300002)(6666004)(6506007)(4326008)(66556008)(66946007)(66476007)(41300700001)(8676002)(8936002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d3J4ekErRUtQMnI2aEdYU2NZZTdHRDlBdThPSXlORVpVWWhhbUF6RkZwSm5Y?=
 =?utf-8?B?NGRWUjgzNUUwL0Y0dUF1TU1rbUlSbkVRZkJ2QmNlWWt5Y2ZsNGMyQTc1cjlR?=
 =?utf-8?B?RUgzdHN0TUowRXRQUnRoQm9xUTNYR1QyRDh5cVNRVTgzR1JlbmExNXhHZlVu?=
 =?utf-8?B?S2VKckJBcDFGZ0JhU2tSWEJaajhYcFYzTzZLeXRPL2d6NDNucEJSa2cvVE9p?=
 =?utf-8?B?WHlDRERrVE92YmlwS1BCMWxmTzVqQ2xTUUw2N1FuNnllZHRsZzl0NDJ0cDda?=
 =?utf-8?B?T2w5NzdJTjBzcllNS0JtbkptckZ2MlZRb2tGN01pL0F3TWdwT0NWL291TnRh?=
 =?utf-8?B?dFJtZ3FsaGptaS81eHlodk0xWnBWNGRWbnJHOStWdnEzUXgvay9Qam4wTzdC?=
 =?utf-8?B?TXVqRjJFbWNtMUdlWnhIa2lzSEpVd3RwMFM5b0dSM1N4OFhiUTEwckU0TUpR?=
 =?utf-8?B?VFFsWXJMRjFkNWFmYmlBYlRwdENUMXNUc09PTlJUdUJQK01rRDZRcm1jRjQ0?=
 =?utf-8?B?THg3a2lPTmlNOU1OMDB4TDkzV20yc1lZakQ0VUkrUXhWZDJaVEIrUGhTZWN6?=
 =?utf-8?B?N29ENklaVWFjdzB4dkFXWmRKZ2NRRjVsNVVrRXFIVTNjTjJYZWdKdkJkME9Z?=
 =?utf-8?B?MTVQanBRNnRCdWNsMy9lRXFWNSsxYllVclBnK2g1dHpFS0pmbnQ3ZFhZWUtr?=
 =?utf-8?B?ZzB4eHF2d0JDcWw1L2xaYkdoZVB1R1owYlNCanZHN3FwZk5wRnZEQXc0R0NO?=
 =?utf-8?B?Z2NlSDAwWmJBT0JOWnpjWmtDVytSSGc0TDhVR1liNGw4S0w1TG10Ym80ekZU?=
 =?utf-8?B?am9BVzY2d3NZVndaTVVHeGdYS0R4RXNFY2cvSEpUSzRiNjBTWHFGNFdSbzZi?=
 =?utf-8?B?VmF2KzFPQ1lFeUloRjJHeTBxOStSTEQ3SzhGRit3UmdYZHBPUGJma1FLZ0k4?=
 =?utf-8?B?dGthamZTbWxCd1R2M1hYMGdIZU1nYkJIbDZSYzJNeHB2TWNYZTQ0T2NzLzdR?=
 =?utf-8?B?U3NWcjNHVUFuNi9TWDFVeWVMSGorTkFtb05xL2Jzc3llc0JWdWMwZzM5Y21R?=
 =?utf-8?B?RVFPcEllckJOUHAzU1pQUFdXY0VKbFdCL2lvYWNvd0taZHdMUnY5cEhmVEpF?=
 =?utf-8?B?SFd2dXBsSW5zWkVOaFR0dkJmL2dVOFBnSDQ1VlpVTUtUWmJvajBtVWppUElt?=
 =?utf-8?B?b1JMdnRuZ1hIR1Ryc1dEQ1ZwTzljcHQwQng4QkdkRVJ0SW1OQlpQY2M4ZHAz?=
 =?utf-8?B?Rll3bEdTYnFzTkRoOEV2YWl5ZHh5YnVmSURnS3Ird0xSc3U3d080VEcxWGE5?=
 =?utf-8?B?VU95TXFGRkhZVDNDU0RZNWk2cm1oUXUyU1BXMWpXREF0NElxcG03WlFuNC9G?=
 =?utf-8?B?UTJsQWhENFhVRmF3c0hKdWFFdUxKWjR4ZHUvY2RiK1FDb0s5bVBFOU9TcThR?=
 =?utf-8?B?a0dPQXZRUXhzVmV3SkZOSzg2b1hHNGxQdnd1aVQ1UjZObWtwdWg5NVpIYm1F?=
 =?utf-8?B?ajRnZEMzSmpaUm1IN3pmTGpHdE01dVdtenFNMHdHM0FxRy9qVXBGZ2MvaFYw?=
 =?utf-8?B?OVl5U3FMWjNoZFBQTlhQZGYvNlh2VjJEU1JMTFEzRU02dHVaNEJEYUh0NWlI?=
 =?utf-8?B?S003RHJ2V3RHS0w4azBuNnN5cEFsVEd5K3JQYTBlbjN6VTdtZXRzZjFJRTkz?=
 =?utf-8?B?L3VNSWVOL01mcjZud0xDR1MxS0NqdzBxY2hiRWVJY3k0M3dnOEpiZURLVitn?=
 =?utf-8?B?L3Y4YjY4REZYRUFlM01xajRFVTBQdGxPOEpuUFl6UHhJTzErdFZWNmM1UUFn?=
 =?utf-8?B?K3BoOXRQQ0lUT2dSNGxTa1JucTNLOU1acHFac01IRTY4NUVGeDBJZytTR2Fr?=
 =?utf-8?B?OG5LV0l5Zk14QVFoY0Y4a2pCZm9kWU5ZVEk4Y203NXVqdERqNGdSQ2c0QUtj?=
 =?utf-8?B?b0FXNUd3RXdCTmdMVnhVRFpJeXNrMlpISC8rWVllWFlSNVl1cCtDMlY4VFd0?=
 =?utf-8?B?NTFGeC80Wm4zMGh1SGNDdUxKZFU2ODVlTWxEQklSWVQ1ZENQS251YkhHZGJK?=
 =?utf-8?B?RlkxUnN2TElYZXN2OWxnTElnMjZ2NmVkZU1XL21KWEN1dGsyekZCWHYwRXIz?=
 =?utf-8?B?MXY3dlg2REtsbHIrTmVtY2ZVNlRPUjdWN01WY01YZ3RNY3ExcUpDMVJWVERM?=
 =?utf-8?B?OVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0432cba1-e4ee-41bc-8e4f-08dc1b8fc13f
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jan 2024 21:19:01.7905 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3vaVdfH2LINtZnPCLlBW3MKy4wjw5D0oNkRR2ZmawZbQmfqfeGCznxsXzUYq+MDhDk68WwImMkdhQYpR+FRnulFvqBTNMNc0p5gjyQMQ0dQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4992
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705958776; x=1737494776;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+Fv6M5HtLA/4T/gDTDOu7NiZzxS4S/WWujrdg2mAzOs=;
 b=NttwmbACqI359kd5y2gWdB7c4Jup9wg+KJ0/Qe+K+CfBJvnrJql2SStr
 zDRevfhgcuxG5OP7/M18m+8ue3Y3H6ubwXhWk9XIWSgxZQuNrFw3AOlC6
 utPKCz/Rt333rSWzB58v+tP72LgQoeaKY/H5+lqWvn0MOvISd7Y5cZKRi
 S6Uya3PQtskt415O43fm0w6aV/kbZrXUTud0vxRDsuQHilGnYvTbsCPRO
 y0D1ipkALK5l/U/I/PqBrQMWbN6KSBgV8xTB9UzF84MXFQ1yx62mGyvTu
 rrFv/Vast31mOiOP8sKHYBbZzZ9CPVLJPto4bt9e/8VHKTQ61kJrEXtQz
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NttwmbAC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 1/3] ixgbe: Convert ret
 val type from s32 to int
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 1/18/2024 5:43 AM, Jedrzej Jagielski wrote:
> Currently big amount of the functions returning standard error codes
> are of type s32. Convert them to regular ints as typdefs here are not
> necessary to return standard error codes.
> 
> Suggested-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>

There's various checkpatch issues being reported:

CHECK: Alignment should match open parenthesis
ERROR: space prohibited before that ',' (ctx:WxW)
WARNING: please, no space before tabs

Seems like a number of these can be remedied.

Thanks,
Tony
