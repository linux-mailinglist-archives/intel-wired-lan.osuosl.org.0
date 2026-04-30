Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uOnIF6cL82mSwwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 09:58:31 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA6149EF9D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 09:58:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4FFDF84AF6;
	Thu, 30 Apr 2026 07:58:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fG59pNYU_BWn; Thu, 30 Apr 2026 07:58:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9AF8C84A7F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777535908;
	bh=5RLa+CbHtjEIVsdAlz97A4N/ZWgcGU+m2kViPtYTqj8=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZBnkZBEgAt9AFf8wGqGiqVAZYcjje3HAjxCyTNNPjSgtZm3ij3XmrBX+vfcYNs52/
	 BZllCdNsRXHfCNEGOYqIawd2tPVi/qVWVP0/MbuG8MbzNiDWvj6ROVuISJsd1b5AHQ
	 hDS2aYt6txrVaG2oszRTpnl7sSrbLLJsuqbDgs0re7viOcYObZxoIchSr0KlB6iC9T
	 j/8J6jZGOPEIdCEvf+HYE/vca9fR8Zn3LqmQGu35xl7Tr0jfjKm4OyQoa3eBHhJkV+
	 9iI6GAeyFv6gGR8v17okfu1hE+KcIoLVYieFKRCHfJgQWlkbEk0yThUfryMkcjT7FB
	 bPEI7VGffoO2g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9AF8C84A7F;
	Thu, 30 Apr 2026 07:58:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id E476618F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 07:58:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C935861BBF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 07:58:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9ZN2U3JnrI_Z for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Apr 2026 07:58:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=avigailx.dahan@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A4CCC61090
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A4CCC61090
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A4CCC61090
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 07:58:25 +0000 (UTC)
X-CSE-ConnectionGUID: gNRpaGhcSl6L/cNi5yojpA==
X-CSE-MsgGUID: BdSI4YPWTX6y99aBSA9CFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="78669646"
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="78669646"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 00:58:20 -0700
X-CSE-ConnectionGUID: onpzzg1iRoCnNe3VJrRokQ==
X-CSE-MsgGUID: rg31K5n3SQG0ZXDoXgFsow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="230160772"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 00:58:18 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 30 Apr 2026 00:58:18 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 30 Apr 2026 00:58:18 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.70) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 30 Apr 2026 00:58:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YL/JRO3yM1jDXcl4+yZdY4vOkOWypUkcsmium9V0p6oAKhMxSJXdra2O7FQTrSiOP0csGRZ8D1s+TkLgvUao8ZoOJNcHLnlBcHh35WM389Vx1yg8DCdmrz+2MBevNL4ljeRcFAV8MWPTz/2EN73niw1aASUrmU0palDLfQVconWutmWR0LJbO7MZlEVs35VC0D5vfxBKWqE3CYwbJfjwn2Of9ZYGUOrSzgfMR1rHMNKADjQ4IooRlPJP1xaPSXElVtRNrlZwTkfxKdXuGXn18ziiEO0JK6JwG4YMp8kgGIJIaQbRFcm9P8ZwXFlF3TyI8zPNv2Y175jRUvYF/rMBZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5RLa+CbHtjEIVsdAlz97A4N/ZWgcGU+m2kViPtYTqj8=;
 b=EQZF2O930LLrV30ZXU0QKqKMpxaFLudYcuoK5ilmcosJJvdz/Qk2pKyVPoAFDpyAYP0cSTTMQ2K9DGBp6ZXw5FbKJCpWB9r93BE5Rux6j7VAIQtx+rcN5O+K+4gdZibbTKTl0sWrw4KwH8E6dwFJd7coe6zEiR4qFJa5vmT+7ZeD/Rf+ReKbBMCtsZqQhvrcX/x1Jwux7gzAaZoC62HhX784hYlPc6Qn65xhVm8AwEfE/zx3PonMkej4rPFjx1g891d+hyWiZkln3zpXrJhMjzLmj8HElESc400F7A5sYb0H7Uv7U7xOUDzdG9uhwykKK9Gqvg6QD9A04rP7z6jWAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB8013.namprd11.prod.outlook.com (2603:10b6:510:239::8)
 by PH7PR11MB5983.namprd11.prod.outlook.com (2603:10b6:510:1e2::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Thu, 30 Apr
 2026 07:58:14 +0000
Received: from PH8PR11MB8013.namprd11.prod.outlook.com
 ([fe80::26a5:58f7:7e5d:5572]) by PH8PR11MB8013.namprd11.prod.outlook.com
 ([fe80::26a5:58f7:7e5d:5572%6]) with mapi id 15.20.9870.020; Thu, 30 Apr 2026
 07:58:14 +0000
Message-ID: <4d1db513-8b3f-4a74-aaee-3748e8c820e3@intel.com>
Date: Thu, 30 Apr 2026 10:58:05 +0300
User-Agent: Mozilla Thunderbird
To: Kohei Enju <kohei@enjuk.jp>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Choong Yong
 Liang" <yong.liang.choong@linux.intel.com>, Vladimir Oltean
 <vladimir.oltean@nxp.com>, Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Chwee-Lin Choong <chwee.lin.choong@intel.com>, Simon Horman
 <horms@kernel.org>
References: <20260417193223.291093-1-kohei@enjuk.jp>
Content-Language: en-US
From: "Dahan, AvigailX" <avigailx.dahan@intel.com>
In-Reply-To: <20260417193223.291093-1-kohei@enjuk.jp>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL0P290CA0003.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::18) To SA3PR11MB8021.namprd11.prod.outlook.com
 (2603:10b6:806:2fd::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8013:EE_|PH7PR11MB5983:EE_
X-MS-Office365-Filtering-Correlation-Id: 2286837d-9ac1-4cd3-8e16-08dea68e3acb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|366016|376014|1800799024|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: l2BDqJs/cWXPfYNDXznWpfHeHPZgpDqiq2WxbayRyCDXKs4+AuAxEH6r0nqmcpMD7EedgTqei2Tg2lEOKkAZ4HJSqewsaE5/7P4ZqDBpLYWkQPz5fUtAy48vVX8cZPnHLKfIs0pyr2ALHjdQnyQEj1X4o5V5cZDA2WRvX8O4n722poMCr8d86reTFvxMI3w5HYvjU40QU9cCbGzZZjNkZvIg6Dsvg+E3HJzAtcZhlT/ab7pgprSYdGxm2UfHyRjFyNvVKVs+xW9ByeFC82hM0Qe9Rkfd9H3EPqiHg+NgDSb25o4uwGAL1ogMgAl4AVLXsY7+n9TxbNhL1fMiYNvpvwPrgdJlT2bFIBz+r0cppYoHUagOvCbj8Y9mAq2txhoxHsbRIk09nQWsEMZ8/vpi1QtH7JtLEXCzIuZQH9NswI7Q0uWTrY3ebWI4GBEk76b7Y/LyaXQyCaXH06R6BHJiFLb9Uj9LJgq+VncWWhuSZt8IyK/MruyMO7SvOXlm2Qw401Ur0QPWTTnCji6MwThPy2c+QCSUwnmbU7cNGbPQU8BHUQwNwVGDER6gmtX4pe3ZL7OGsMxQUSV8CQB0e5FjaJ3HKVFTE+LaUe5V9TGqIsOH7dr8cO/ScPFZg+sZWXrIqYEpUn14RnXnAS7C+1e2LzRJLUP1si7yURU4dqYQJnSUUGfd5rJd7K2wbWlyDBih
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(366016)(376014)(1800799024)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bmc4R2M3RlAzMjZrQ2d5d1JJbi9wSndadFd2Skk5R1dheUU1WFdxR2RyOE5E?=
 =?utf-8?B?OTMzMWNYOVhOWVVXWUdOL0EvT3dEKzUxak9XTHZMS1Z3Z3AyNk5ybjQ2eWFV?=
 =?utf-8?B?SzRWU2d0S0lmQy9GaExncm05aE9XNjdwczJKd09jSEhrMTFtaUorenR5OXdh?=
 =?utf-8?B?eTM4aVByQjZiSHUrcEZENC9LQk55VEhFd1VZbFVtQ1FXdTR3Z2hWL0dQMmNi?=
 =?utf-8?B?SWpFNFdTU1ZOSjhTTm8xR3dGbmgrNjdma2lKKyt2ZWVhN0hwbnlnNmFJWDNB?=
 =?utf-8?B?WGZlV0JXWjRBZEZoMnpCRzRzVFUrckozcTh5MlpHbkhNVHRGa1V2MG1KR0lM?=
 =?utf-8?B?dHVTQmNHeGFIL1lwejBHVGlMRiszeVZCNUp5Y3ZLSGpTbkRmSzBXVlNNQmdu?=
 =?utf-8?B?LzE4QjhmK0F2bnlvNFh0TjhUcm12M0ZVMXRydGNOSXVuQTF5Ymk3S1pzZCtr?=
 =?utf-8?B?OUxuZUhPTFl1NllGaUZEeTVScGpyQWtsY1BRT3hpekdnNW1HUlNLcVFTcXBT?=
 =?utf-8?B?TjJRTnlEODNzMktxK1pHejhFTUNnZFQ5bG4yNnFqSG5nejFqNlFXcVgzT3RF?=
 =?utf-8?B?cmF2K2p0VUppOSttVjJmU2NSaFpxdllqUmJ2QUFGSkhQWW0wWVEvQ0RGL0VS?=
 =?utf-8?B?bW5rUHRIT3VZNHE0MGl5eU5vSTYzd3I5ZmZMWXBsOUxXN2phVndsWU5ieTVk?=
 =?utf-8?B?QXZZcmpxcDVJNVdpOGsyUEhXYm13VUhzZWoxRkxXeVNzWmErSWxpN0hvT1JX?=
 =?utf-8?B?TnJQQ0lvZjFWZjRYVnFiYW15bjdzQm1zRUJpcVU3dEllVGoxZFFlYkZqRlUw?=
 =?utf-8?B?TEc2QVIwZkplYndEa0R5SjlnWU50VU9UbWxxYVdxUGZ5R29uZGh2QkpqS1RC?=
 =?utf-8?B?V0JMZ0NjbElmVXp1VGYwV2RXN0RBTmxsM0lqZHkyOUNqNjBPNjFTRHdWeFg0?=
 =?utf-8?B?bTZ5ZUdzTFdGSzhKc2twY2VKd2RsbWgxcDBTbkdwY0grVmVTdUNYd0NrdGpU?=
 =?utf-8?B?c1BrWTZ4aUdFRWxkSmNDak5lbEI3aEwzaGtRTVVTMmNBU0tVMXRIOUsrUEI5?=
 =?utf-8?B?N1UwWERXT1d4OUR1TmkxZUVZSENiZkFubVZWblR3NUZYcGRXRGZPUC9rYjlC?=
 =?utf-8?B?aW5rdS9uWnAvdFlIYm9wczY4OFNmUU4rWG43QkRuN2xjTVVCZkV3eXlRRTZm?=
 =?utf-8?B?Z1Z4UnVsWHFTVkRSSEFUeFQ4MFRVT1BuYk1MTGUrcGlDemF0MHpSQS9XL2VF?=
 =?utf-8?B?aWdUT0pnTHFFTkZGLy9jRWFSSVpHOTZHTzluN3VsZGF4RTRNeTBrRTdiYklM?=
 =?utf-8?B?dWZtSmQyZHp6SmJscmNRclZoTDhmdE9pbnNOU1c3dU1EaXFDeWY1SEdNMDZ1?=
 =?utf-8?B?Szh6d0x2SlpWRjJPZnIxaHdwMkFndUVmWXRPNGFWVnpZbW9jamxWc3FtaGw1?=
 =?utf-8?B?dXpwWWI0djJrSG1BMmZHcGtNaHpsS2pyN1h4OEhGRTJiY1lBUVdpUnY3dVk3?=
 =?utf-8?B?VFZxVlg0b05JdWdrVFFzSnVTYytLVWFQWDQwekNRaUpFY2QwUFJnclZYTWMr?=
 =?utf-8?B?Z2FXUFFneFVIV3JFMS8wVklmbnNXaG5XaWZUWmYwSGk5c0poRUFUYXNzdGxn?=
 =?utf-8?B?czVFcWh2U2c0Q2ptN21oVnltUVI1TThOUitTWTRGVzJYTHdxcVlIV0o4UGdx?=
 =?utf-8?B?QzlGTE5CWlRGdi9DYXIrNzE1RGJsY2xaMzUralFjRm5MQXhoMysycFZJWVox?=
 =?utf-8?B?SjM3M1NtRGY5bkQ0NFpFUkpXMkR6MEJiRTVlYWNzNnFZWTdHcSt4bDZ3OUtk?=
 =?utf-8?B?dWlXaWwrN0J2NkxFamM1WVY4SDdkam96SGRyTE0zMEdqdHQ5N0o0MmQwNjFs?=
 =?utf-8?B?N0ROM1RoY0N4aVR1djZ0YjBITU1WU3BSUDYxUlpYdWN1SWY2M0hheGtLa2FG?=
 =?utf-8?B?VUN6R2IzMittMy9weUtFcU1rWENSUnZ2Wld4dUhYalh5SUNsZC8xT1NubERV?=
 =?utf-8?B?UUFLUnVOdDVOaEZCbndaRGFUVGFpakIxMkFzRDQxR0VheXdIQ0pDNEtaemM2?=
 =?utf-8?B?d05yc3FnSHVJQ2FXR1dZR0Y5WjI2ZTNaQjY2NXBqdCtFci92WGhYZVE3Znlj?=
 =?utf-8?B?TTVrWHc0RFRUUHFPSEc4NExLZER5RmFXUktVYnBNUkkrSHBRbm1zM3J2QU03?=
 =?utf-8?B?bUFSTkUxekF5bGo2UWNyb1N1QVhHV2xOcFlHb2VTZERXTmVzQ0VBRzh4L016?=
 =?utf-8?B?blRmSkJUelZWdXRDbk45RzBwTC9HSkIzUnVEeU1MejNKMXVXczhGVHdrZlAx?=
 =?utf-8?B?eXhMeFNicnpCdXFVVzJxbkR6V3NpR3BabTdEa0NKaUIwWnhSazlpMnk0OVZZ?=
 =?utf-8?Q?KLUa6USKKSAOarw4=3D?=
X-Exchange-RoutingPolicyChecked: rMETLBG51JjtJCFST14x4xgGwS7Sear860RHVdFrUl0f4LtJ1LutZDWORjch6i/xR+tqnXROsNSOeDcQ2UJeWGQXNpY3w+x8zDYG45bJW1g+mMhMnWy635C7WaSMFx0dGUUfkg/Y/G0H8WYY4zNlvaV4Fb/gNk8PJbNKBAR3JYnKfeFk6jh/kEvWC10oaEaHbUueaGDCMASsQs86As8WuNCWipZQyfy1avQ2pcACo88YvdIigRJCTfmL24WkF6JiArP5HCW2AmocATehPlA0oA9/8MMU9PrOmGn0qWkoO9KHAx81etN4+a4LmTplfq0Xgp7aBeD2hPTfRA5qjurEvg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 2286837d-9ac1-4cd3-8e16-08dea68e3acb
X-MS-Exchange-CrossTenant-AuthSource: SA3PR11MB8021.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Apr 2026 07:58:14.1203 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DwQ+Yi71xprjN79y/nZZcbCKn+M1VsmFezxOLXxGonF8IjV/8r/g+8LLlCyk6+YcirB0mwAs2n1I3YOzX7LCY+dOSex64Nd94+9iiD/O0Ys=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5983
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777535906; x=1809071906;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lSPNSMBDPNDffaaQ/lT8If+FOpUEQVOaDrDTQupTHK8=;
 b=MwIsbE/EVggXb9b5pBGdtl7yY7pjVic2VbiVn597OnVCKZaAdeUaS6rM
 kd2j1hzHlMtxfIlTIMYaNgbs9cNCaOQSMF02lwSaBFDf7wA8PLPFuq55E
 WyxYCfQGloy7HjUQTcskY/T0NZzvRVunf8GJ88p3AUC5XkxGAqeHd0MJA
 gZtE0loqLnxpjioTF8ye/fzQNCb0PuA8UmcPGa/aM8wQCfvRIleouiya3
 l/wfFYlBheH3xNj+5rY3byBrizJdK1nGl+E7AusZACsbrVcYhS3/ycaLM
 EInJ8tNe5+DzsomPJC59VI3VS4MzFBE+OULD+enklJX5s7VPjxoL280WO
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MwIsbE/E
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] igc: set tx buffer type
 for SMD frames
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
X-Rspamd-Queue-Id: AFA6149EF9D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kohei@enjuk.jp,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:yong.liang.choong@linux.intel.com,m:vladimir.oltean@nxp.com,m:vinicius.gomes@intel.com,m:chwee.lin.choong@intel.com,m:horms@kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[avigailx.dahan@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[avigailx.dahan@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.935];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[enjuk.jp:email,sashiko.dev:url,intel.com:mid,intel.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]



On 17/04/2026 22:31, Kohei Enju wrote:
> Sashiko pointed out that igc_fpe_init_smd_frame() initializes
> igc_tx_buffer fields for an SMD skb, but does not set the buffer type:
> https://sashiko.dev/#/patchset/20260415025226.114115-1-kohei%40enjuk.jp
> 
> Since igc_tx_buffer entries are reused, a stale XDP or XSK type can
> remain and make TX completion use the wrong cleanup path.
> 
> Set the buffer type to IGC_TX_BUFFER_TYPE_SKB.
> 
> Fixes: 5422570c0010 ("igc: add support for frame preemption verification")
> Signed-off-by: Kohei Enju <kohei@enjuk.jp>
> ---
>   drivers/net/ethernet/intel/igc/igc_tsn.c | 1 +
>   1 file changed, 1 insertion(+)
> 
Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
