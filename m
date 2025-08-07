Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6643FB1DCF9
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Aug 2025 20:22:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DFD4F40535;
	Thu,  7 Aug 2025 18:22:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cYpC0WcOSaMH; Thu,  7 Aug 2025 18:22:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2F36A4051D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754590920;
	bh=r1z5yExG2nHgNuM/VKLM3wNFDAXXIHgHYCRrowmIqho=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HAPlx1dmECIxhvH73+OdRW3v/T0LZxozqMIliFzZINR7frptZ9z444woxRM0AH+4X
	 e6gHNNr9wQ4Com2AbxqU5DMC2p+2O8lOAWpNvonrNRUL97zLxMtdq08v5AZwMG4Tl/
	 zrr8mhDvMwJKcJ3wF7Es1QEbnMCOSIfvykVNGMNYQPLKLhb4oDepAyiHlDoMbkvKQx
	 F9Aofr8NvPuAF1jxxl90wsGJtKGqy+q6TfB4xtY2HF1F/Fjzz+rpUQqwqse7ktrUbJ
	 Nk+S/yPuylL7MFUVtzHWXumKiQUiiW7UzVcB1IoYOE5cGusZjok0R4YA8k9MFC+NDR
	 wx8+IDJrkTzxQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2F36A4051D;
	Thu,  7 Aug 2025 18:22:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id B925A10A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Aug 2025 18:21:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A9D94400BE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Aug 2025 18:21:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YYVxm8DyfsA2 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Aug 2025 18:21:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0A7B240087
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0A7B240087
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0A7B240087
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Aug 2025 18:21:57 +0000 (UTC)
X-CSE-ConnectionGUID: AdK2/nxaT3mD9wXHbCdaXA==
X-CSE-MsgGUID: qvgLQzPMSiy1jETXK13cjA==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="59553641"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="59553641"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 11:21:57 -0700
X-CSE-ConnectionGUID: aVVwA+vgRmGiau1jlBVsCA==
X-CSE-MsgGUID: zPKtauyzQs2ZHiUTUCfFvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="165473696"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 11:21:58 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 11:21:56 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 7 Aug 2025 11:21:56 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.49) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 11:21:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZYW7gPUcX35R6hk10Y4LmvfKD67ShjJFR3lLHxGQWABl6h7VbCMzGO6eI5rSPrW5mquLl6+heEO7msB1GmRwCmIRpcZlUhjHPXHMzFyby56+tRKUTjkx5+A80wT6rt15Ce35FnoGD883EfvaEjJhO0/obiOHjRMDH/IT3G9Q9oJDCDS8fYskZBz6JUMI4lcWeO/hOypD8PqO5zv3M4pYdy0SSYE1Ufp747s9oman+B2etDe6T6a0YQ3nr65fr6j3XUTp79T4KzwNoGaTJ9Q/QAeWFJSRFSxr1BN/NLjwTkj3mWgdGm68ZK+4Xn1MCFCvH8oQX8Ldz7bUO0WCK6SVIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r1z5yExG2nHgNuM/VKLM3wNFDAXXIHgHYCRrowmIqho=;
 b=lh8oulO/Atq6iOwRRWkO4QeD1kkfOQwDXpVPKfAF7Zr6M1l1aja0H7BignDhze/Ek7MOvI1ofOvaBtpziaFgBFzJhgzxKFOAJQD25J2B1droeocqpYOPjVuqwFivIVhf+O85Wejg7TzAmZ1HvVa1FM2uNV761MufHUTsr4EhiAy1AadjVbblh4DKOUtljxjSxKCXwBdeCAqVktxn4M038CLYKuSF5P0fDqKKjgdAUE3JqY8Fs08giGSBenWGM6lwsFxjHCukNNHE8yDgcQ32HoJ8rYn4xTBd+aNMi0eP48WzQ2OFXaiDHh5FnhSGezbkFV5gwhjfEnO7dbqOVIpS7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by SA3PR11MB7533.namprd11.prod.outlook.com (2603:10b6:806:306::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.15; Thu, 7 Aug
 2025 18:21:49 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21%5]) with mapi id 15.20.8989.017; Thu, 7 Aug 2025
 18:21:49 +0000
Message-ID: <edf9b3af-86b0-496b-a306-5d61e2abc092@intel.com>
Date: Thu, 7 Aug 2025 11:21:46 -0700
User-Agent: Mozilla Thunderbird
To: Lukas Wunner <lukas@wunner.de>
CC: <davem@davemloft.net>, <netdev@vger.kernel.org>, <nhorman@redhat.com>,
 <sassmann@redhat.com>, Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
References: <20200723234720.1547308-1-anthony.l.nguyen@intel.com>
 <20200723234720.1547308-5-anthony.l.nguyen@intel.com>
 <aJRFvuh8F-jQd0rz@wunner.de>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <aJRFvuh8F-jQd0rz@wunner.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW2PR16CA0031.namprd16.prod.outlook.com (2603:10b6:907::44)
 To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|SA3PR11MB7533:EE_
X-MS-Office365-Filtering-Correlation-Id: 2d6fb8a8-451a-4f91-283c-08ddd5df4624
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?d0lKaTJOMUlEc0cvOVRIMytiQVZBakFNU2ZBaHdOSUl1OUpSNVdLVVYrZjJO?=
 =?utf-8?B?TU0xMnAzbDlvSHZPMk15dFZJOG9vc0QwdEJUalJ2SGpWaThqUmpjcHlCQkZh?=
 =?utf-8?B?OWVJc0Y3bUhwMFJMdDZBL1NtNFppOWFlcU1CNkxFcEV0MDI1SU1pWHRpeVp2?=
 =?utf-8?B?NzlmTnRUNEhiVFVGT2tia3NBdUhVRWVyS1pmbFdaSFZCZSswOVR2VmZsQWZG?=
 =?utf-8?B?OCs1OW9FR0g0UzhsSlVrMGw5MFRKK1l1NkhaZEVSTmYyUzJpNllJZ28vVDBK?=
 =?utf-8?B?RDMrdHRPUEhEQkd6Qk0wbGpacUdGVmVIZm5FQUZrek9ydW02eXlZSEM3WXo0?=
 =?utf-8?B?Z1BhSnNpeGxNWG5GV2JETnlxcnE2R3FOSlhFL25xQ0MrZ25LYmx6TlJaa0o4?=
 =?utf-8?B?ditlRGRkZDd5cFpWeDB3NnZwaXZNa0pYTGxGRnNHSk1IdzAwWXBMMGFJMkNX?=
 =?utf-8?B?S1BuQ0FtWmtwTC8ydHhFbUcyMFc3bGcvUTJWOFNtdkkxWjk4bEVjdnEyanBt?=
 =?utf-8?B?L2tUUnhyWWxVTTRtWWM0TCtZQklvMDkzSXNOT3g5SCtkMEErSnJ5d3BJL2ZS?=
 =?utf-8?B?Tk0zOTZ6SjhjMUtMY1RqUUh1MXlWUVFEd05VbkpOZE1NRmY5Z1JtK1BhZlJ6?=
 =?utf-8?B?ZUdOMVYzOEkwd0xTNzZ3VktONm5jdEhKNjFyNk8wTis1R3JCQ2xkMnNnaENr?=
 =?utf-8?B?Q1FUQ0JES0VZQTdFVkRvSysxVDhEdXRwbDFtM3NBNVBzTUMrLzZrbllkdExR?=
 =?utf-8?B?TE5GODZISlcycXpUWTRSdFZGdkw4Sk5DU2svWUFHNlFhMmlVQnkyb01WT0hw?=
 =?utf-8?B?VzBZdUxIN1V2NWpnS3RhWC9nS3ppdG5ONDlxRFppM2xCdHI4MjgwRGQrTGVF?=
 =?utf-8?B?QUh3MlZVUllabW5ZR05kaERPeU5NV1ZuYU1pUTJIYXY3TkRJSGVtTEgrTXkx?=
 =?utf-8?B?bW94cTNjZWk3SXdFQUVwQTZjd2wrU3pFeGpPOXNJL3NpUkpxalRYOWJ5TFhS?=
 =?utf-8?B?L0Jla3RteTFBSVlFY1ZCSVBwVjJVTndMMGVHdW93YWw2S1JVRWI3bVpsTzF5?=
 =?utf-8?B?SjJmLzR5bDlFZGlWdHVOVHV6M2NGVmVQMDZyMGtQSEFLRHByc3FZUnJkUkl4?=
 =?utf-8?B?LzIyNHlPOW83a2VJZkJDSjRDeXJwdHdnNjVGLzBQNlBMZzZjV28vVGdDbUJK?=
 =?utf-8?B?b2dVRFZxY1ZiTExvM2hBRUpzY1E2a1ZnbjlsNlVTbXZkUGJSVDkxN1NGdTlO?=
 =?utf-8?B?MWp5WGYrbWRXY25qcktmNjhWQlBteXNyV0xLaVFhUFhpOHovZ2ZFNURUaHQ4?=
 =?utf-8?B?cERPZE84ZnZ0Z2pzemtaM3NhaTJkV1FPQXl4UXJNV0hKTEY0SThjMlRUb25M?=
 =?utf-8?B?Z2J0L2g4YWUzeTd2cTRTN3dZZjNGdDljRTdrYmRJUk1rUkpZRkM2YUZZMnlO?=
 =?utf-8?B?TUp3WVdSWmk1ZFVGOW9tV3AvUCtKTmhoK1hubWlpeFdMRDVleGt6b1NDbmdu?=
 =?utf-8?B?L3pMcVVKSGdTSndoUjlqWXU4Y3M3R1VYbUNjTlJzemZRbHcrU3FBRXgya1ky?=
 =?utf-8?B?dkN4NFk2UTZSRjR4SFRYcE9vQVVwSzdhc25zS21iM21Id3k5MXpmSG5ROGpk?=
 =?utf-8?B?OWlURVNRcHlMd0pZL3oyYUdPMStRcVY2VzlBSUVHeURISDduTmY4bnV6TjVH?=
 =?utf-8?B?YWxFVjlqY2M1WS9xQXZyUlh3TnFyZ1UrUzhydkhHS1g2Q1MyZnE1Sm1ZcVAz?=
 =?utf-8?B?b1dIMGJoMHdpZVhSYWROSHBZRW42dG5IUzJ0REFkMm1nQkNXdFMrTzRFRitB?=
 =?utf-8?B?K3A3UkZpc2dhdGcxYThtN3hMZEFxTXJxV2tTYnRnOEluZE84QkJPSklFMlM1?=
 =?utf-8?B?K21FcHc5OXNWR3ZWd0IyNC9oeXBmTzBYK3d6QkFOaFFTSWdzZ3JJTHRFYnF2?=
 =?utf-8?Q?bq9BEKYA9AI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SW9PWlJabzEvYjNQbTZrWVhlUVFGd1FiNG9nMXlYMlRuTzZxZzNpSmdrT3Zy?=
 =?utf-8?B?SFdLbDVQeTJBVGZJZElZb1V3TE03SVRkaXRPSzZ5T0VvZ1NmNlNnK01DUWU0?=
 =?utf-8?B?YUs5QjU1eVp1WnZXbGJleTl2ejVaZUY4bzc3TlJJdEtqd2ZXWHlVYXV4cDN5?=
 =?utf-8?B?aWllY1NGUXpJQ2ErT0JVc2VHMDdJWks5cnA4RzQ5WnhPcnZQWEM5YTV1ZFdw?=
 =?utf-8?B?OGI3S3dwUTJaenFjNitBK0lIYWxGc1MrK0RWcStVRWl0V2NiTThKQU9oWldN?=
 =?utf-8?B?OEU2L2x5Wk9xTThNSjFxeExIYks2TVJPV2hHejJiL3lxT3RZUFFLTkp1U2Ro?=
 =?utf-8?B?NStVbm9BMjB4VXRGSzhOeFlTZ3hQYUJKOVR6TUZLZG8wd1dFWkVRdU5abGRv?=
 =?utf-8?B?Y1oxT2xSODNDZy9lVmw5SW9FMVo0K2VBZWV3Ym1jUldiZ3RHTTZiaGVlUnNs?=
 =?utf-8?B?WEg1TG1hK1NIeFY4VFVnWkZhNUVvamUrakdiU2xHRFNjQ3VQNTlXOFpHTzlQ?=
 =?utf-8?B?bFlvcHdqZk5EcDMyUmE1OVNWL3VaVEV3dDlPRWpGTzJlWFptaFl4NkNJRGp3?=
 =?utf-8?B?V3dDZTNYaGQvdDJrWlhRdk9WSG9UeXNKTUFiUUxxZTJtU0x4MGphNTh3bzFT?=
 =?utf-8?B?K1JVK1NCNStBWjVUYm1wK0hMQ1RTRGVCM0xPeGhTNCtrNTM3U3R1Sy9kUDJr?=
 =?utf-8?B?RmRKTk1OaXg5eWpGNUEzaTNrdFpValFsNEY3ME1nNW9xWmZRRG9tcEtyZkNp?=
 =?utf-8?B?QzRHZFh0d1loeWZuTjhXN2cvbTQrNU9wa2hiM2xxOUt2VVBMNC9tNllBSzlo?=
 =?utf-8?B?OC9ta0ZDSUVtSEdBT2QrSmhqRWxLUnN2ZHlaOVY2akF4U1Z6L3AzNDQ4SnRQ?=
 =?utf-8?B?Y1hlYTBnbU1oV01laDVmMUoxMWJkWjhXd3UxN3NReUF2d2FBVTV4SlliSXhh?=
 =?utf-8?B?MHVVVGtXb3RCYXE5NDRYYXR0UEpKcC9yZW14eUpMNlVHVExod1FlOEZRcG84?=
 =?utf-8?B?TDh6MWh4clAxbzdHVlJPZWtJS0pyVlBuTTVrVTZVRHVkakQ4eERGK0JaeDh4?=
 =?utf-8?B?cTBrVUJ2Z3pYSTlLSWJQZmxOY2R4VE1hOGp0TTUzSkM1bmFVYnl0RTJ1QlVX?=
 =?utf-8?B?UTRRNTN5TVczcFFoV1E5RzdKUWJicmVhOFFDQS9iL210S01POHJ3ZFJSL3VV?=
 =?utf-8?B?SWhOMHc5QTNXTSt0bDAzMDZWd0hkekYwSXg0WjZONTJuUnd2bXNqaHI5cUxB?=
 =?utf-8?B?em1oRXBybnpjbk11WkU3UC9zNVZFc2dFNEpVckE1RWtoOGRPR290T04xWVhr?=
 =?utf-8?B?Ukd1WHhlS3NaaEplVFQ4Z2RZYVpWbDBFUVhlOEZ5UjhzM2p0WGIzaTlTS2lB?=
 =?utf-8?B?cHpJM3VSU01qN0hOdzFOWlZ5aE16NFFFTU9XQzBsY1U2UUlXNDBmQys1M2JY?=
 =?utf-8?B?SEppVGxrRDA3akNTR0VWMCtPWjFxdmtsNHRFNjlPQ3FPRUVGSWhKTVBDaTlk?=
 =?utf-8?B?Qld1UGE5ckt0UDN1R2JrcHRKUkJXOWYrU2hIQjJldys3NjZVSE5Zb0xXc1h3?=
 =?utf-8?B?VHpsRDVpRWdUc2tvVnR4bmkya1NxVjhtN2lqMXRuNkRLb1NlaW1qQ2ZiRFRR?=
 =?utf-8?B?dUNyeGtWSFpxTlhpVTY5clJkZm5TVENzNTNnRmlNa0xxOVZ2UWxMZVdqRXVt?=
 =?utf-8?B?SXhUeVBQWDBUQ24zdGhxcHhEVDV2L3FGV1FheWJ4ZFRwU2JkY2ZhbGdlQ1F2?=
 =?utf-8?B?SUQ4Um9qejY4NmpCYmpNNi80QnBhVHI2OUh2V0d0TUZ0ZFcwUXFOZjgyU2Ft?=
 =?utf-8?B?NnJEZWFUVkpEMmhtVFBKZ2hZMlduYVJsRlQyWk9rdUM2RDhsWnpTekZPanRQ?=
 =?utf-8?B?Zk5EbXoyN1J3VEFFcVh5WVc4SXBOQitQL3FsamtuSE1uNXBheGZlaGhjLzVH?=
 =?utf-8?B?WUpRZjhQRmEyWHI5YWUyK09reFJ6eWhWVzlnVERYOXEwSmg2TVluNHhRUDVk?=
 =?utf-8?B?dlR1YTNyQzFFL3ZlcFFGYll6NjdPV0hlQ1A3UCtHL0wvc2hSSVN6YjgxeDBw?=
 =?utf-8?B?TXJ3RlZwWmtpZ1BjeUFGakZlbFQrM1F4RzEvZWh4b0ptbmRudGQ5SkkxN2h6?=
 =?utf-8?B?ckc0WGl2bndzRHNBVGxkS0FyZXdMcVFuMk5sSXFCWDZvUFhwMGRSYytRY3hH?=
 =?utf-8?B?ckE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d6fb8a8-451a-4f91-283c-08ddd5df4624
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2025 18:21:49.0680 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: czz1CPKLaeVnyxK8kjR6ojrWMEEiMkxbWtn04GWjItMPIKP6AnRbEC8wi3czNjyVAt9GW1bHP0MRRozOByRLjUAwh3RyhJSOS71VzBErEFM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7533
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754590918; x=1786126918;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uEJoS7h7sG0yudUxkyYynKLRB/d0KWTmc2PLgXmeeGA=;
 b=A1t1Sy/LzedJ5Ukxc0jF/vvrCo3fBuTnJcDbrPTQ4aCgpTWrNJoJpwCi
 kXYDCkVhjI3lvHgwSPYrMf11F+GXrV91dxHWbOAxFbUqdP6dlve9mLxxV
 Wjgxl7q734XwnU1DRmGx6B/WrsyLC8um/HbnSG+bU7CUkSQQpt6cQe7ed
 mTYKfAfhacvCdoQTvSSvauqJfpu+tqreO1ssIKgRd+eNKC9aqNeHVuzrL
 QrdiEjtmpnfZjSGtacXkPyHtH4k+r5lPCpEYlfroKvFIdhSDJzdNZMGFq
 fZxoRR3liOGrbPNcNCFbSaHlwYl8yG3pReJGdpU1Ec0bDGXmnnrb5YPdg
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=A1t1Sy/L
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-next 04/15] ice: Add advanced power mgmt
 for WoL
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/6/2025 11:20 PM, Lukas Wunner wrote:
> On Thu, Jul 23, 2020 at 04:47:09PM -0700, Tony Nguyen wrote:
>> From: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
>>
>> Add callbacks needed to support advanced power management for Wake on LAN.
>> Also make ice_pf_state_is_nominal function available for all configurations
>> not just CONFIG_PCI_IOV.
> 
> The above was applied as commit 769c500dcc1e.
> 
>> +static int ice_resume(struct device *dev)
>> +{
>> +	struct pci_dev *pdev = to_pci_dev(dev);
>> +	enum ice_reset_req reset_type;
>> +	struct ice_pf *pf;
>> +	struct ice_hw *hw;
>> +	int ret;
>> +
>> +	pci_set_power_state(pdev, PCI_D0);
>> +	pci_restore_state(pdev);
>> +	pci_save_state(pdev);
>> +
>> +	if (!pci_device_is_present(pdev))
>> +		return -ENODEV;
>> +
>> +	ret = pci_enable_device_mem(pdev);
>> +	if (ret) {
>> +		dev_err(dev, "Cannot enable device after suspend\n");
>> +		return ret;
>> +	}
> 
> You're calling pci_enable_device_mem() on resume without having called
> pci_disable_device() on suspend.  This leads to an imbalance of the
> enable_cnt kept internally in the PCI core.
> 
> Every time you suspend, the enable_cnt keeps growing.
> 
> The user-visible effect is that if you suspend the device at least once
> and then unbind the driver, pci_disable_device() isn't called because
> the enable_cnt hasn't reached zero (and will never reach it again).
> 
> I recommend removing the call to pci_enable_device_mem() in ice_resume():
> The call to pci_restore_state() should already be sufficient to set the
> Memory Space bit in the Command register again on resume.
> 
> I cannot test this for lack of hardware but can provide a patch if you
> want me to.

Hi Lukas,

Thanks for finding this. If you'd like to submit a patch for this, I can 
request our validation test it.

Thanks,
Tony
