Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43B288A98EF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 13:48:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BEF38415BD;
	Thu, 18 Apr 2024 11:48:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J8tdfWFbYnG8; Thu, 18 Apr 2024 11:48:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CE7EE415D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713440918;
	bh=Ds1+RRC2isQQP7IYJlsVJtdzJe38DAxtSYvBCa76fvs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WJZxZaKjp7e5SiWMgFyrAjhn3dhGus3nq7n608wuzfQBtuZCL5netPbN9X92RArSd
	 82X82Iw0shKyHnECRUYkcU58gX40wUN6uUCfli8hpxvPSvh7yYHKKtaUZswjQRIEu5
	 ClsbD5njV9KP52O3QfkaofTb6CLWwIgUudRLdJp7C5fyFCrXy/NfuoFa57Ll+telG7
	 hctfOG+PCUiJW21vqIRJ/V67f5kt+xd/LNPd0mpeI1hzmas7y5zUvU8oz5dwgZ8evr
	 n16m69YLvuoPhPhh9E8cu5xxb0RH6ZUxgE37CVy36rQwF3YDPa1FAK8V3FSrVlWaaq
	 SVtSWCrKA0WCw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CE7EE415D0;
	Thu, 18 Apr 2024 11:48:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9D24D1BF3F2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 11:48:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8EF0181FA7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 11:48:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V_tQlIPyIHvq for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 11:48:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BB76B81FA5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BB76B81FA5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BB76B81FA5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 11:48:35 +0000 (UTC)
X-CSE-ConnectionGUID: rlaTJSsdT4magb2mTC5v7w==
X-CSE-MsgGUID: S4FcFQylRbS+c7QocKGzGw==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="8817847"
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; 
   d="scan'208";a="8817847"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 04:48:35 -0700
X-CSE-ConnectionGUID: o5Az37WERB+U6oWpeJ5X9w==
X-CSE-MsgGUID: hWSRrB2ETRqnIWZAM0Nibw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; d="scan'208";a="22825252"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Apr 2024 04:48:34 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 18 Apr 2024 04:48:33 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 18 Apr 2024 04:48:33 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 18 Apr 2024 04:48:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CbWEmjSkNshKtku6tpz07P4ajaUGQ6L7il4CpWM1nlFLa7cv0uza7jGKexDxdlO6SMggdf7wrat1hYTbAzFD6l0SOqRsJecZJZileWnLQh/VTNeaYuAQL+DDJQZ4bH6QOXyvdYAdv4EKHwrl6C+7sMSv7bwdTsxyxxttd7GZEn2NG7RNEWjGHRoL4mRrsX5wpPNwH6KgZ3fumRsphB1oBL2nV5LJtWZWfiGLhG8bTrbsI9r0MB3iwCzbpZOxhiGl/1GjLKp/pWSzTaNKChvSq9mu7tOVJS8AU0lvzKYdRXBnk3Rb41pW+sJdGO1PoOcSZeuNWV9THaS+8KYhQIm9fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ds1+RRC2isQQP7IYJlsVJtdzJe38DAxtSYvBCa76fvs=;
 b=bjS6uM4eA4FLqr2MT2KAfrSsaYt57cJopiuVGvRD/K7pud3KzPIbo9dCJKbzc+h7i7Up6kWC/DdUWtY1rF+5GFu664V1s59gUGv+m6J1yMC+HwZQxLckVazdMz/jLvXsqdmCNTgIyUzUfD4HyK3t+OH8Uq+qHsGQPRcn4ftRG8N81iCRG37dfpxwIu0ACwo0J5JcQa70eO7zMQJEAtrO/MKZApqHTKF1Zc/Sqs+KFtiGY0BtQKmOJp9A5VZESq/frmWhrrhdhvRJ3M0NDMDfLVawn3RL/8x4I7zkVRz+QtcCQeEPyc76SJw1bKTscA6q81L7600PHZheV0ddQvCuIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by IA0PR11MB7377.namprd11.prod.outlook.com (2603:10b6:208:433::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.39; Thu, 18 Apr
 2024 11:48:31 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ac3:a242:4abe:a665]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ac3:a242:4abe:a665%4]) with mapi id 15.20.7472.027; Thu, 18 Apr 2024
 11:48:31 +0000
Message-ID: <88fc6454-01dc-4907-9b9b-702c9464c9ec@intel.com>
Date: Thu, 18 Apr 2024 13:48:25 +0200
User-Agent: Mozilla Thunderbird
To: Andrew Lunn <andrew@lunn.ch>
References: <38d874e3-f25b-4af2-8c1c-946ab74c1925@lunn.ch>
 <a3fd2b83-93af-4a59-a651-1ffe0dbddbe4@intel.com>
 <dc601a7c-7bb7-4857-8991-43357b15ed5a@lunn.ch>
 <ad026426-f6a4-4581-b090-31ab65fb4782@intel.com>
 <61a89488-e79a-4175-8868-3de36af7f62d@lunn.ch>
 <206686dc-c39b-4b52-a35c-914b93fe3f36@intel.com>
 <e4224da7-0a09-41b7-b652-bf651cfea0d0@lunn.ch>
 <cf30ce2e-ab70-4bbe-82ab-d687c2ea2efc@intel.com>
 <c6258afd-2631-4e5d-ab25-6b2b7e2f4df4@lunn.ch>
 <fb1a53ea-d5cd-45a1-9073-450f6a753f87@intel.com>
 <6514e6a9-3b4d-48ba-b895-a12c5beff820@lunn.ch>
Content-Language: en-US
From: Wojciech Drewek <wojciech.drewek@intel.com>
In-Reply-To: <6514e6a9-3b4d-48ba-b895-a12c5beff820@lunn.ch>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR0P278CA0198.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:44::12) To MW4PR11MB5776.namprd11.prod.outlook.com
 (2603:10b6:303:183::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB5776:EE_|IA0PR11MB7377:EE_
X-MS-Office365-Filtering-Correlation-Id: 22883547-4bd9-4128-ed89-08dc5f9d787f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mGWk6FCruRNq2CNq5d0xEN8lPB4zRn/YRkiVRZ6NpYIzhEbDcPM1fQIRF6uGJ2BCRd5Yf5COQYKQRSTLig2G/pejc+kr4afEfw3Q7+6jdi/aaJbmupbWmk9YnHtEsz9dJO4REGFhC6prl3HHMXd7skpOOvEY+WyWCvtl6NDoFQQycQBlL/G6H6jr1N6+wpgxQ69JEJcaASx2DsVRrVVjH8kxRWklcW+QQxabqzL+dxQdfYTBjcSNesH8/WfpKwMHn9bwJ3KWyEKQWa6oE35rJaex679rzMADd5JF2txi7c0tWZaTMKG/sMMt2RM+y0zwk6NaqZiLo0Lxvdbp4OBoA/NtajNjxNYA5+0CceoXZvQXgva2Zi+EXfd1JM3LkNljrjCicVBDlw7l/t9j5XrbKFarM0htvh1MCWNjnIF79Y8xZRtPQBG+oJyh1yi2O3rY2ItLN/t6HkZAFzcSI1aRgc9pPeQLAORTBlpbgfnV7OtTkyPIm4NgIrgeXEeh07MSLscbYvbCdmhlnculddyQVMDrzs9VPN2dDN83NIKi9PKkCIM/TE5ph0G/uTggnB4JGHG/hd45H9WrBixb9rQ71HTf/obeQYl5g1WM0L6Po4EavaSQyG4EcaIX9Zxz9ALUKxSIOBDXZwfSIWtWc5HrCc3WmNeskDSe71U+IcgKdGs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SjZzRVBUamsrK0xKaHhYVVUwRjY3ZVJxanNET1A5eWFEdWV3WE5UM2RJVkZD?=
 =?utf-8?B?bjlmSUlONnVwdnNRTi9VZ0h4Y2I3czQzcGFGcHVaY0dGUGx6dnZTbjBQVEpK?=
 =?utf-8?B?NS9pUm9iV3VJWVhweUNNWTNPTnNiVTNYQmo2SlF0TlIrSWtxOU1kT1FDa0tr?=
 =?utf-8?B?KzRTTWRMcmZpWEtoUmFTcFRUeTRxa1dIZ1lpLzNXZVR4U0ZHRVNoSkZRbEM5?=
 =?utf-8?B?WjU1UlhsWXRZaFQ1TXpoTzY4clZjcUNtRHZwa0tRRjIvK2U4ZkxzZ09QLy81?=
 =?utf-8?B?cU4yNFdEaFN3S0xNemo1NGR2ckNYekVMV3RCR1c4amMvRmVZemFLcVJ2d3NL?=
 =?utf-8?B?aXNQM0Zrb2l2SmxxcHZ4M3daVmpmQVhIUllOaWdZcldQRkxjRFJibEVQSHF0?=
 =?utf-8?B?MTNmbnJMQ09tMTFLM0VmaGpXQmVMemxLSnV1ckFCd3hHU0xpSzIrdGxIUlNO?=
 =?utf-8?B?dFVRUXV0VXdGRmhMZzV2bXh0RmpLdXl1WFVxdlVadk5HdThndjZ3TUgyTDlV?=
 =?utf-8?B?WnY4cjBTUEFYVEpXbDJ4aWUwZEdVckxQNHRlWkh3alVBelR1ZG56R0ZQdzJ2?=
 =?utf-8?B?eloyZm5iOTZvOTJqMFNFU3JBRFNFQlB2TEdTOTdSMGpRckN1b3djRE5ySUV0?=
 =?utf-8?B?U25yZlp4WHpWMXdCSGxHbWw3bkpSNnQwR0tTRm5udUhncTFWM3Y1SHZWZ2Jt?=
 =?utf-8?B?YVYwMVNMS2dTRWloM1hoUFRyK2dWTUh0VGlsUU0xdXd5a2JLN1M4eHh0bGgw?=
 =?utf-8?B?S21sL0lwK1FFK0FiUzhLYlBVT0Q0Z2hBdjgvRzJET0tOMWhoZk5TM3pkK0xK?=
 =?utf-8?B?OXJRektGOVhlUEN5aXlIYVJhOTJ1ejlFVmU4aGpWdDVZU08yNWtPTjdpWjZk?=
 =?utf-8?B?RzRrL2xZc3BYWFMwMFp1dVNnVkxrdmlmN0tFZ2NmK09SSi9kdFg0M2lIcW5O?=
 =?utf-8?B?Sy9vVkR6QlFPakpWTFErSVl6ZCtqemgwUWk2bDBTbDFnajhMSHVRWEgxV0lH?=
 =?utf-8?B?Qy96STdCdDBnUnZuZXRxTUpISzFhZkNQMGF1b2lPV2ZlU29IcjRhbEFtaGJv?=
 =?utf-8?B?dDljQjhVMmJXdTUwajZHclR1OG9YUytBVklFckFta1lBY0dXbmF2cTV5Z2F1?=
 =?utf-8?B?UFN6ZHpoR3R1Q1psYzVPYklNenpSaVFiNUY1YkhIbjQ5dFVtZHFNczhKVWJo?=
 =?utf-8?B?eW5aQUFtcFRmS0poREkzRlgvUWVRdUd2NGM2NkozT2pwWUQ0UnRoK1pWZW93?=
 =?utf-8?B?T1Qra1J0ZXNBVWQ3N1VzNm9UekFvZUFEb2J4K2dhZGF4akdPK1NsMkMrejgz?=
 =?utf-8?B?OFV2dGVJU2x4VkVtbXVRV3VqS3VvSGJOb0RkbmxLV01oaFVGZy9IeW9YOEVJ?=
 =?utf-8?B?T2w4dFI4ekJmczZMQWVUanVnQWJHb1dsQng5dFJoYkNLRTdSZW43VUY2THJT?=
 =?utf-8?B?dnY5Ykg1UCtGd2hpMVVlQ1p4M1pjejlJdlhBQUc4Y1dUNDNiWS9IdWJheS9R?=
 =?utf-8?B?WVFEQTRCQW43MFhsRDMxejBjTzdKeXR6TkF1TmpyUE92OEp3MlVYQ2czQ1Jv?=
 =?utf-8?B?SnVmNGJmVXMxaU0ySkVxRlhMK092TlF3RjlsMExvVEUvczAzdGtIeHdCeW1n?=
 =?utf-8?B?SHh0eUpvdlphc3lIOEwrWHBHS0ZWRXM3aHkzeVd2VjF2K1IwcFo0QzRsbDBI?=
 =?utf-8?B?aWVKWUhFNVdrSUFSY0EwZThzZkhRNTdSdWJFYmVEYUM1aXBxVUNmNTZHSXdz?=
 =?utf-8?B?WEphUHhlVVpNaWxaRDhkaHlqUE52bkM2QXJQL0ttc0wvMERlbjNBT2lEVlNJ?=
 =?utf-8?B?NW95NHFzRmRUYzVHQ2NVaDlmOWtzNnNtcm9KMm1QN1NrQiswamxzZ2VCMUJG?=
 =?utf-8?B?MVJnL1hyNWZhYVpNS0xCSGpKcU00VExZN2Z3dVRsdTJUY2d2YlpzM2JiaUtz?=
 =?utf-8?B?OVgvYTkyc3RZSXlhU2tvUUhKeTFoRy9lbUFFb2dZZXh0YzdvQ2NucWFjb2pa?=
 =?utf-8?B?MHlwTUpVbUYyRjlROEVILzlja245dVdoQjRKTERJWjhBMFhZMmc3bTJUa0Np?=
 =?utf-8?B?M3h2cDlzQngxVE1MNkxvTTNNWk9FZ1VGNjl3OU1hWER6RW5SUStQQUl4MHA4?=
 =?utf-8?B?ZjRpMS9yTkh6NWsxd0ttVzFzcWx6QzBsWGZQeGptOTAxV1dUMXE1V0YwbFQv?=
 =?utf-8?B?dGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 22883547-4bd9-4128-ed89-08dc5f9d787f
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2024 11:48:31.8540 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UGiebKC1I7b2zy16pYGOEjrpGPNKuaXPRO87m+sNI58Fx5ROHRN/QYpLE0CPIag4bwVZvvpM5MfC6TKCC+X/gA4d0x90XGJCGufMBAb9xFo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7377
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713440916; x=1744976916;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Xi8yI1HDoNBhJZ4DkkLFPG9q6lAm4t+BRzph/w+zfTc=;
 b=MoJ6Z+HZ0mLlNSsJtoaSNiRCXgT2HfnzVP3QqtL4wp3xmvaDDxdICLoT
 l8lla8m6W5j9T/PbE1okC+eRO8NodH/M0DVUWcXuVVdR0NIYLq7tTO5yt
 bD5kCCU41dqf2FLRTjn9iTyo9mPka+braxolaw5JHMi/aH1redP2RW0cr
 KbvXtVAl/Bu0xq8jpmkpnd2tD83WQUcyG0uJ5UoK5i/qpUiWIFVgXudNz
 j96eBuBeNAzEbW53s9YId1FYCE+glqnBJU/tZ6FLfVOlU1eoJrLGHkfLl
 nFbc58DAbsKdVuUw/nVTLvPGWFkZHAXr6zU3RrPZKJKnBJ3AGZiK0R7Ah
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MoJ6Z+HZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/3] ethtool: Max power
 support
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
Cc: netdev@vger.kernel.org, edumazet@google.com, marcin.szycik@linux.intel.com,
 anthony.l.nguyen@intel.com, idosch@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, przemyslaw.kitszel@intel.com,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 16.04.2024 00:03, Andrew Lunn wrote:
> On Fri, Apr 12, 2024 at 03:21:24PM +0200, Wojciech Drewek wrote:
>>
>>
>> On 09.04.2024 15:39, Andrew Lunn wrote:
>>>> This is something my current design supports I think. Using
>>>> ETHTOOL_A_MODULE_MAX_POWER_SET user can get what cage supports
>>>> and change it.
>>>  
>>>> This could be done using ethtool_module_power_mode_policy I think.
>>>
>>> All these 'I think' don't give me a warm fuzzy feeling this is a well
>>> thought out and designed uAPI.
>>>
>>> I assume you have ethtool patches for your new netlink attributes. So
>>> show us the real usage. Start with an SFP in its default lower power
>>> mode. Show us the commands to display the current status. Allocate it
>>> more power, tell the module it can use more power, and then show us
>>> the status after the change has been made.
>>
>> Ok, but do we really need an API to switch the module between high/low power mode?
> 
> Probably not. But you need to document that the API you are adding is
> also expected to talk to the module and tell it to use more/less
> power.
> 
>> Regarding the current status and what module supports, there is -m option:
>> $ ethtool -m ens801f0np0
>>         Identifier                                : 0x0d (QSFP+)
>>         Extended identifier                       : 0x00
>>         Extended identifier description           : 1.5W max. Power consumption
>>         Extended identifier description           : No CDR in TX, No CDR in RX
>>         Extended identifier description           : High Power Class (> 3.5 W) not enabled
> 
> So you can make this part of your commit message. Show this. Invoke
> your new ethtool option, then show this again with the module
> reporting a higher power consumption. The reduce the power using
> ethtool and show the power consumption has reduced.
> 
> Also, in the ethtool-netlink.rst file, clearly document what the API
> is doing, so that somebody else can implement it for another device.
> 
> Please also document hotplug behaviour. Say I use your new API to
> increase the power to 3.5W. I then eject the module. Does the
> available power automatically get put back into the pool? When i
> reinsert the module, it will be in low power class, and i need to
> issue the ethtool command again to increase its power?

Ok, I'll answer all of those questions in the documentation included
in the 2nd version of the patchset.

> 
>    Andrew
> 
