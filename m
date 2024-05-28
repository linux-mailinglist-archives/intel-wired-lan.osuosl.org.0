Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 490D08D19DD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 May 2024 13:41:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BD970405C1;
	Tue, 28 May 2024 11:41:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RRQ5kthNbXid; Tue, 28 May 2024 11:41:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D71D940250
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716896460;
	bh=aD5Y6TM83U7BG2YhhRNf7cDmrA0w2v+gGQP4XMFbfQY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=K/tw/3BF5o7PdbqdWS9hbpALHLv6nD71uhoTcUruXmx6qPvrb49xb4jxnXmfSL4P3
	 zDlcIFYhnwhWTU4MYX938W1iguiUOStH65SC9cXaJqqk81fYAaZj+kz2MVzLNz4rzi
	 eXSN1Cwv6WJPQVIyjJCIQG+0hWRbYooynHJhvTvDlBs6sJp5skEkfB3MdTqLGwzQbO
	 vEDtL31M/Zh2qhDcpzEkY7kTtD/Vo8b86d9AJcDFAKVqwcG+asJ5tCKgAT/O38Z4UI
	 Ab+L2BPKvkvU76yxMA9n7XkSt1O4ggxz6D64v8QlFoQpiSwwr8SlzTICUzsph/taRZ
	 k3Z2z8CTm9c/w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D71D940250;
	Tue, 28 May 2024 11:40:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0C3571D2736
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 11:40:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EAD9E81D68
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 11:40:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lwqAsK0deZ5Z for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 May 2024 11:40:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1D75081D65
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1D75081D65
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1D75081D65
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 11:40:54 +0000 (UTC)
X-CSE-ConnectionGUID: xgdDZgDST+mCfbCWpikL5Q==
X-CSE-MsgGUID: GOaAqmj+SrSwFuNyjb9cHA==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="30758843"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="30758843"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 04:40:54 -0700
X-CSE-ConnectionGUID: 1xoDXO0GQkGveJFN/CotLA==
X-CSE-MsgGUID: YLmOiUfwS9WXn0w+Fw0K8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="40011173"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 May 2024 04:40:54 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 28 May 2024 04:40:53 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 28 May 2024 04:40:53 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 28 May 2024 04:40:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QV2Z+9kYJgosKAqGYwTPRNWVmtMM2sJPyJfNrdF2ns1FxT4W1uMLwL3ClrsminxaEgT3yIznpv1aCvowXoT1vpVsP/r/8d2Th1uQMxgYNxFjkTivFsgpeM2d1b+RkSLeDLQRFiFy7+dzapWZVN97zTs3hw4uTQrYzW7s0GJaqmMVr2bDRxQZd18aXE60O7+Yl0nQkQ8cvUSSDp60UsyKDkHzV8GGeKFzs0pCE+8pP7eOlLDWq0+TzlABYMbAcnvU4pCnJCjYTmTQI0hfKO9KGqQLuhDbkRzk/fzCbCbWIzV00M92ObGVn+OP+NcS+woD72w2OPrp4c3W2RB0tilnOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aD5Y6TM83U7BG2YhhRNf7cDmrA0w2v+gGQP4XMFbfQY=;
 b=XlyYoW4CQNeosGPx7R9/y0kAhqbCJX4LCrhwk+Wrz15nlcfU1Z5L1eOGpNuumUftSUd9sQY/KOrFgxlRI0DAbXkTHGruqMoTfwJfaLUZkY0NOToQuuICC4uJcUfoXw1g5Zptk5dK8dKBp/Jnm5wtBqZny8gLOA8F1R8w6sZcGIZAJP0Y0OvcH5KNwvR8jf5weICwDB7El/zjo6ifvWka+QmLw9H1/qYjLVVgKcMHSy86MUgQQpODa+sbypOuw7sO9XyZ1XNIjvzwCTyaUIB/weKgLQxXBM8LrH5KdQUAnp5Lny5bgbYHvWxaNrqoqdH1rDtxRKRaePJFeqTfNtXG2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5399.namprd11.prod.outlook.com (2603:10b6:208:318::12)
 by SJ2PR11MB8372.namprd11.prod.outlook.com (2603:10b6:a03:539::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.29; Tue, 28 May
 2024 11:40:50 +0000
Received: from BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::b8f1:4502:e77d:e2dc]) by BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::b8f1:4502:e77d:e2dc%5]) with mapi id 15.20.7611.016; Tue, 28 May 2024
 11:40:50 +0000
Message-ID: <ab859328-21e3-470d-b444-1bc505094ea6@intel.com>
Date: Tue, 28 May 2024 13:40:46 +0200
User-Agent: Mozilla Thunderbird
To: Wojciech Drewek <wojciech.drewek@intel.com>, <netdev@vger.kernel.org>
References: <20240528110132.483447-1-wojciech.drewek@intel.com>
Content-Language: en-US
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Organization: Intel
In-Reply-To: <20240528110132.483447-1-wojciech.drewek@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DUZPR01CA0309.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4ba::9) To BL1PR11MB5399.namprd11.prod.outlook.com
 (2603:10b6:208:318::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL1PR11MB5399:EE_|SJ2PR11MB8372:EE_
X-MS-Office365-Filtering-Correlation-Id: f250070f-2486-499b-71f8-08dc7f0b0642
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|1800799015|376005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Mjlka0ZwMmVCcyt0YjZKbzEwZnE1ejZkdlMwSTU4WWVsaTZLR1QzQVYvekhy?=
 =?utf-8?B?Y2c2S1NVdVVONDladlczZk41clNieDlsSWthVWlzdUl4TzZKMG9jYjd5dVNp?=
 =?utf-8?B?bkthdXVVOCtQZ21DMWVwbXRmUFVYK2VoNDJWTWNScm1BZWtwYzh2cjU2MGVm?=
 =?utf-8?B?b1NmS3JrdTlFWGFCeU8zZlFGcDV3cXljY0U3d1FTN0dQQWhhQlZIZ2NxR3Jp?=
 =?utf-8?B?SzR3TmpjVzlHWmZvVHRGOVpoSXYxK2puS2RsVFNKdmtIT3p4UHV3NUxFMHZK?=
 =?utf-8?B?cUZqVno0aE5ZUzl4d0s0bFUyTmpSTnpLa1dvM0lhYUxmaysyUFpDVmdPTkVz?=
 =?utf-8?B?d05PVzNqVzRqblRVQVVjSnB5YnN3ZVI5cGRwd3dhRmJuQ1ZpZXRGblZBeTZx?=
 =?utf-8?B?ZTZZU0V2dTZlMjNNRFUrTEQ3R3dnbGcvcWpwU0UwVlcwZm1pU1Y5UzVNN1lh?=
 =?utf-8?B?cStIN21mN0VkZy9EMTRSSDVNSUQwbExZWTRzZkREenhManl2SUI5aXdOMGU5?=
 =?utf-8?B?K1JGUk1yUlh3Y1RxYnRLVnAzaU4rbkNlQlNIUGFXR2tTQzBmWEI2ekR2WTVI?=
 =?utf-8?B?L01sNUhMNEF1eURPdFdtWnZIMVI3Mk5zSEZGM2lCM2ZFNlJVeGh5QzJkVWVO?=
 =?utf-8?B?SWRSdEp5Y0ZiWWhuZTc0UWVWZFRLWXVFaFdDSkI1dG9vVGdkWHM1cEJTYlQ2?=
 =?utf-8?B?OTN6ZHVXcXdkaVN0Uyt1clJuVWgxd0h4TXpPbk1ybnQ0dSt2NEdERGo0eGpB?=
 =?utf-8?B?VCtNWEE3T20xMXAraG5TclZvV1JoQytpeEtxTm55TExhY1poN0FLa0lEU2xq?=
 =?utf-8?B?eVgzdStSUzk4V05IM0NqYVE5TnllNFZMeWhEOTczVHJ2OGRRVzc5TlRYdXVt?=
 =?utf-8?B?V0RMRlcrT3hEUFBoTmI5N3E3M1hlVG1tMmFZcWxRWFZNR3VNbFV1d2UxYTVO?=
 =?utf-8?B?Z0pNQkY5U2JGR2JsS25wdnBjMzhMd1ljUlNRckxnaXRKZWF1aTNQTURYUkZz?=
 =?utf-8?B?WTlpNmJZeWthOTI1RkF3cGtYOVJZd3VJcG9vUE5kUFlRYWVKNE1NRE5rQ2dm?=
 =?utf-8?B?TWxrenJLb3Yxak1tMWl5Um9xU21mLzJZdEY5QzVIc3BSNzZ4bGVNZlZwcVkz?=
 =?utf-8?B?Y1liNVdQSVhYbzlPTzc2SUxnTXdIYWxIS3M4c3o3OVhxL2Q1QjZqMXhvUmNh?=
 =?utf-8?B?Z1NnVkQ4NDc4V2hUdk9GbUYzbTY4VjRra1JLbUphOUFGemFUa1hqdlNTaUE4?=
 =?utf-8?B?Q3BFNjc2ZzBaYkNMaFd2VEc2SWM0TEdjcy9URW02Mkw1cjBZV0tiSy9LY1cz?=
 =?utf-8?B?VTlob2wwZGgyY3dFSU51aUw2UnlpUzVUZHBjOHdIanNzdGtjT3QrQ3dvQ2gw?=
 =?utf-8?B?bFNvNE9sVWtONEJlTmxKaEppR3NvNzdVVUVDS24xdEpuWTVEbEkyR0xtSDNE?=
 =?utf-8?B?UmNzT2RyNExlS09SY1pleExnaytoNHlnS2JXTHpDZkhubi9WajEzSFE2OXNE?=
 =?utf-8?B?OU45blBBSHRFaHpObmprUENtamtZdk9TeGZkNFNtb1h5V2lVZkthWU9QWGxt?=
 =?utf-8?B?aXJnZmZsTWlHcG5LeWxCZnZ1QnBBRVRDUGdIaXRjQ05nWE1wQXFxV3ZJdWRK?=
 =?utf-8?B?cmhkVk94NUduNkNkMFhLWTZsdHQ4OVFVYlB2QTREaDBCUjJBdEExU1JLRzhz?=
 =?utf-8?B?TlpGQWtEVEFlNmhLMFI4RWRpajJlY2NUcHk5ZDhPZm45dGErQmQrS3V3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5399.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q0V1am1KR3NKWXJtTmpVWEdPQTREZUxwY0duVk9JZzRsdWJaM2NBcExIZzNV?=
 =?utf-8?B?a1V0N1hlS0xRUnV3QmxpU0g4a2JPMkd3RUd6cEx1STMvMHorUVRMUEpBcndp?=
 =?utf-8?B?Y2l1d3JJbWs4Qm9iRm5TNFpaVWFsSG9KTVVyQ055dFgzUnl6b0xSbVcyQjht?=
 =?utf-8?B?ZDk1WlRTbm50VGhJL0RDSk9wN0FTcjRjZG5wbnB1d2xtSVN6eUMra0ZmL1Fm?=
 =?utf-8?B?cFoxclZ2RDFVNkJBUmloeXdpeE4xUUtMNnpFVWN3Zlg2NXg5bTlBSzJQazVE?=
 =?utf-8?B?ZXNBVVgrTXlnWEhDVUhpd0hmUFFJdFptSk81RTNBbC91K2M5VmNwWkIwdTJY?=
 =?utf-8?B?dlpNSnNSanVjMm9DN3BJc0RCQTNEYStmbzluNFRkUjdwbVZ3bnhRZzZoVTFE?=
 =?utf-8?B?b0l0cFdMV00wcE9ZUWZyVHVWWUFxeTJLL3VRLzBVY3UzQmhmdVhydWpZMmNR?=
 =?utf-8?B?TGZOVWJ1eERYdlhic3lOYVhFTVM1b3pOeDlLZ3U2c2pHbmFxVGxOQVIyVTE0?=
 =?utf-8?B?dzBjcHVub0ZxNFdTdmFHdjIxRy9rMnhZYUczcGpmNGxIdFo1NkpkMVlHNTZq?=
 =?utf-8?B?Zk93R0ptK1RtOUF5ak9XMkZXU3RGcEVSMDN5ZHdZZVFFS1lPcGJ2cEhMR3kw?=
 =?utf-8?B?V1NrNmVKcjJwTlVjMTV5bTZqaUhtYkVORURxM2lDdWhEMUtYWFR1aTQ5TFh5?=
 =?utf-8?B?dlhrTm9scmwwQm5Tb1N5UHM1VmR1aG5ub2hDRUk3VGNKb0dCS0wrWm9iZ3B4?=
 =?utf-8?B?OUZCVW8zNDlPNFRYYUF0MlFnSlRlYUYrYVZVUjdNT2FUSjJ5V0xlL2pNSHB4?=
 =?utf-8?B?NGkvc3o5N1AyUnF4enJod1ZISWFKb1NQeklJQXlZWGptd0FGMlNPOU5nb3Vz?=
 =?utf-8?B?OHNTZ084YWlIYkJRbTIxYTZvT05LMDU2a0dRK0pBZ2YyZE5jS1FXVWN5ODQ5?=
 =?utf-8?B?T3BKRWRKbnJ6TEYxUmRJS3NJUjE1Zm1vY2xrNU9JNnpuT3Z3WXZaL0ZLRXdI?=
 =?utf-8?B?NTRqTk9YdHYzQXhtNG5hdWpLZ2g5L1FqNEZWM2Y0Wm13dnp6Sjg5Z0JiZEhK?=
 =?utf-8?B?NjZpYk4zSTIzZGU3R0szdVoxVlB1ZW5VSFlHTXpIS0xDVmpUdWRERjRoSEFM?=
 =?utf-8?B?V1VWcGlCT3ZQdHYwMGF3bXhBNEVjSXpBUmQ0VXcvcEREZ1pHSXVmUSsxRHRn?=
 =?utf-8?B?Nmt3K1BuWnloWTRJSWp1bjh1RzU2ZUVaSm9DTWh5d1dGdnoya2JvZjIzVEZa?=
 =?utf-8?B?Z0h6aFAzVnk1RTdjS1BnbUpnL0t2NXI5dHkwekFjbitENFlLZmVYYUZQL00y?=
 =?utf-8?B?M1pGTGxIMmUxSkRLcjB2OENJSlFxNndpQ25BR0lzRllpd3hFWXY4VFNFY1Y1?=
 =?utf-8?B?QU9rSWx1RUxVZUlpd1M0ODhBTlE1TUdYVTJ6WURXMEErLzZmRGlIMEp6dm9B?=
 =?utf-8?B?b1BaVkM0bnpZcFB5ZFpVVGw1RkR3VzI1MmdyeUgvTisvbEFLNmpNYllrek0y?=
 =?utf-8?B?VEYrN1pXKzlMeThrYmo0RWcyRW1OT0dKR1c4bzZEbUFEVGlLMHc0bStVNXJU?=
 =?utf-8?B?UjAzSDJhcElsUmNQUmhYTmV5QS8vZnBwcWR5WEJJYkdMdjhTS0pxRjNpNWNa?=
 =?utf-8?B?RGQwM3UxTGxJVkRpK2RSRW03NmRtUmdRc3V3d2FKY2lFdTlnNzduZ0dGNXRs?=
 =?utf-8?B?bS8weUhnZ0hvYlVUWkNnTDMxRExFUXFEY3VRZDYxUDNKVCtXT281RGVwb0sz?=
 =?utf-8?B?SXlmaFNMdTZHNlZ3K2Q5THZaYkVoWjczNUpadGt2L1R4TWFFK2xNZHdWTDlh?=
 =?utf-8?B?Y2s4RkJaTy90amgyS3dkQWNGYkwrR2pHRVZjY0tKYlp5OFRzZm80WmZvdHFQ?=
 =?utf-8?B?MDRtNXpjbmp4Q0ZqL2NUR0F1OGFwNEZtK3dVQ2VEWGJneEtHT2RjWkc5L3BI?=
 =?utf-8?B?QjBVbkYyNWYwK3Vma3F0S0owMmhwMHV3YXRya0pMSlNHaVpDOTVkT1BnSVdm?=
 =?utf-8?B?clNtbllUZk9Hb3d4OFV0bFB2YUJSbnpkMHFDd0w2R0ZRS3oyd1pVMGJVbHJW?=
 =?utf-8?B?U211eUExdjBBblNuRTE5d1YyT0FhTWN4TC9BU3VCRGFUUElZQjhEV0k0RmVh?=
 =?utf-8?B?RDRxRi9CUmFKR2JLcXc2akFzazdPQzMrS01jUmlUVVdvdks0VmVMT3czRU5w?=
 =?utf-8?B?NkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f250070f-2486-499b-71f8-08dc7f0b0642
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5399.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2024 11:40:50.7443 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0zJmeSmJXkH2CIgfoutJMiiMz5Y6WSzMLJjY3cUyTehetqDFWSu4kLKao+D9/zATG4YsQqYpHM2c7RCmOu9KtA4gRAvEgBf8xHeA9okQOww=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8372
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716896455; x=1748432455;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9zjedeNmQPc5bt2Bh3AQoekGaWhdCKxs9Hvr4lO1Mww=;
 b=bfSinQYEMM13bYLJlnqSG741L2MUg1mZ1uB/gyxtg3mflqxIF88LTpKP
 +6XhnpaePax+d/aPJIkQxwlaFFvDea2TQvdeOMsyeopdSoua97fOlL3qA
 ArWFapGt1DhtZuaI4oaEjtBCKZqk3PEH7DCR0brGyZzLMI0RrQ1p4c4xc
 wqPte7qs574h7+xqRjzOgbEPBZSQmizETAe/L5nidtdXU4kz0ibBBDV8S
 oGf33EaNStyJUeltwpiFw+NV/Mvbpsn+jOMkx75bImjjHu8Np+iFapJHM
 Y6MTg5ITgq/8xg3e4bGMBDyPwtpAT4p9YqhVLCdLhlq51LpP3rvQw48oz
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bfSinQYE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: Add support for
 devlink loopback param.
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
Cc: jiri@resnulli.us, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/28/2024 1:01 PM, Wojciech Drewek wrote:
> From: Pawel Kaminski <pawel.kaminski@intel.com>
> 
> Add support for driver-specific devlink loopback param. Supported values
> are "enabled", "disabled" and "prioritized". Default configuration is
> set to "enabled".
> 
> Add documentation in networking/devlink/ice.rst.
> 
> In previous generations of Intel NICs the trasmit scheduler was only

Typo: trasmit

> limited by PCIe bandwidth when scheduling/assigning hairpin-badwidth
> between VFs. Changes to E810 HW design introduced scheduler limitation,
> so that available hairpin-bandwidth is bound to external port speed.
> In order to address this limitation and enable NFV services such as
> "service chaining" a knob to adjust the scheduler config was created.
> Driver can send a configuration message to the FW over admin queue and
> internal FW logic will reconfigure HW to prioritize and add more BW to
> VF to VF traffic. As end result for example 10G port will no longer limit
> hairpin-badwith to 10G and much higher speeds can be achieved.

<snip>
