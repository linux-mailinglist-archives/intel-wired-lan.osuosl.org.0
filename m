Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A54428FF4D0
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Jun 2024 20:39:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2A4F741782;
	Thu,  6 Jun 2024 18:39:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N9FBnkvrfR9r; Thu,  6 Jun 2024 18:39:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3E88B4179F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717699178;
	bh=/jfVRk3yBOJN7qvA0oqvYobUX84T6vgooX+CBZ1nH24=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eoZYpN3b0c7TlmgvDDvcGVKaKxczXos3P/ALfdlMWFyQ1VlW5RZxAgAZ0PmkO/jn+
	 ZEUSoKw/qMOZwvrMkVJ/DlS2oNXIvUL+ZPEggpxt+bX34qgVSwIRuh9TjuzukBsMBU
	 Kmc8LjtVuvI0izCHz+xqLujk6eZ4oqGUh3UOJ5OUSNehN7ww3iSUZGw/xwDKqFOp/5
	 m7Ye8sievY7y2AcsqRSCbk9xUR2tPwcCTjwmkvmTf4pbVeZzaw6HRxepOKAm4sxh3V
	 g/s4WKTf6rh4GHddFio4I1Vg8J514KQlUVRvlItr4iJkBwivOfiSLjQJIPwP8y9bnh
	 t/NSI2Am6R46g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3E88B4179F;
	Thu,  6 Jun 2024 18:39:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7F0C81BF592
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 18:39:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 76180401C2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 18:39:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HnR00-4-9TKm for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Jun 2024 18:39:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 649A5401C1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 649A5401C1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 649A5401C1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 18:39:35 +0000 (UTC)
X-CSE-ConnectionGUID: mdxjPediTOqFtDSv3Myyzg==
X-CSE-MsgGUID: AFOOhmXHQjCXNdqQvxYptg==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14348368"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14348368"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 11:39:35 -0700
X-CSE-ConnectionGUID: kaJpXjNlRoCM0Wqxc0wM2Q==
X-CSE-MsgGUID: xG0W65BDTRKfEF6Wo0rv2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="37919576"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 11:39:34 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 11:39:34 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 11:39:33 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 11:39:33 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 11:39:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QAi7CWwB9PIE1ptOeM/jLK3eIHpHvjb4Nl1I0Rxlj7wvMNYtlFUdqr0lcnBOZfhuCInzwO9ehrWJXIpkY/cPx2GY7dLceayojPQVv5UbR6+sapvl1/XKUnNwmFnc+YdiYtuKKXq5Lo1LLfyiBOdBDwMgt68axB8SJYD8bRjt9y/s0Lo1Ep7iWUqj8PLQDL3JW8iLIqn2gM+PfuYXiImJGT0qvTw0Nao9gRzDVrlwt9RS2rruJb1rdjl9H6a+//lMJodBtfsV/f/1BN+8S/ACimatyZ1S+I2hlHUjiMWY76Q4eDn5OBUF1Bq9GsUB6TqD3l6S+2rAmfuZllr/s19H0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/jfVRk3yBOJN7qvA0oqvYobUX84T6vgooX+CBZ1nH24=;
 b=QonpgUa+UHSzV2SaucDCAekKKSFvCz1ixUoaJqFHknUnak3Y/ldirm4yDHdU1B0X8kcTUNbHAIyNVQYvIKli0yAlt98v8AlY74QNNL12+2Ny4OCAK1jYJE/mDr6Ouh/VTwabGdVC0pCs4yrOAHD7DkhSktv8tCQXQLb48I5HrhyeraftQfKJ80EzQ6K460V797UqjaJ8IRD9OSAuXEWeKbL6yxLoNLpkz4gVX4V5h6v0q4zjSrGs4snekJ2uUyc3lP65VpGy/LrCGER2UuFx5ZSx9bkjDvEdfQKfdLQYUoaspEKHI3YGC7GnGMxj7NJYYmGHnBOh8Yy4MbG2agYebg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DS0PR11MB8717.namprd11.prod.outlook.com (2603:10b6:8:1ab::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.33; Thu, 6 Jun
 2024 18:39:26 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%3]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 18:39:26 +0000
Message-ID: <7b0b1d22-b64f-481a-8647-edcb1e9211b7@intel.com>
Date: Thu, 6 Jun 2024 11:39:25 -0700
User-Agent: Mozilla Thunderbird
To: Andrew Lunn <andrew@lunn.ch>
References: <20240604031020.2313175-1-jackie.jone@alliedtelesis.co.nz>
 <ad56235d-d267-4477-9c35-210309286ff4@intel.com>
 <1dbb8291-9004-4ec2-a01b-9dd5b2a8be39@lunn.ch>
 <c12ffb8e-0606-442b-810a-69bf65624bf9@intel.com>
 <12b1febd-a634-43bb-8edf-79ccb4f9e3aa@lunn.ch>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <12b1febd-a634-43bb-8edf-79ccb4f9e3aa@lunn.ch>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4P221CA0019.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:303:8b::24) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DS0PR11MB8717:EE_
X-MS-Office365-Filtering-Correlation-Id: 252d403e-1cb6-457e-b613-08dc8657fe2e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UXFaK0QyNzN6RmVLaExhQlF5VkVhWSs4NmZMaGZaVmphRE5layt4cDdyQWJO?=
 =?utf-8?B?S2lHR2NhRGlLa1p2WXkwTkM5WStpT3ZnUU0vOFllYTEyUnBYVzYybXV3ME1J?=
 =?utf-8?B?VHlkRmVUMGVXdGFXeTlSaUJUYW5aWUpqY1hYd1JjSjZqNzNCdTVHaFF5NHQ5?=
 =?utf-8?B?UERrZUhjZ1l5NE13cTNTdEJBREFNcFFnRUlNTGdUTFZJUFJxM0VHeU9hNU5Q?=
 =?utf-8?B?NnVzNkVyNkVtZUgxdzhYVWhFV1NCVzdKeHFQK3RWMC9SMzRwTTFjWGVIejFq?=
 =?utf-8?B?T0c1U3VSWUVINjlORCtzL3g3RGVzSFBUNHk1TU1PWjQrM28vbnR2UTYrYXJK?=
 =?utf-8?B?T0ZnQWZtZEY4T2twL0lQQVRTMTZDSjhBTDdLVVpITWxnSWU3LzBXTm90SFRx?=
 =?utf-8?B?Z3ZCQnJudzdLYVpEZjVDYzNIbThHbHgyMUNOR2NRSU9GRmY4eFJnMmQ2TTJw?=
 =?utf-8?B?OG1ON2s5cnNqdzJRdGR1bGQwRmEzRTJpdmZ4ZktEMkNsWEh6Uk9ySHZqQjFo?=
 =?utf-8?B?TVA3b0Fkcjl0REpWSHplOXpjVHdsYmZnZ3dBdktwVVB4MTV3cXV6Vi9uTkVX?=
 =?utf-8?B?dUJKQzByQnExRS9VaXFIZG1zUWZTcFpsZ0lLY3RoQ0pMUXpiU29hQm1MbzhJ?=
 =?utf-8?B?WEFKdWFhTnJxZ096eUI1dzFkU2ZET1luSE9TWmhZSHRHMmd6TTk3bWY4aGMy?=
 =?utf-8?B?dEtzUlpidjVDaDRXM0ZkMUM0RkZxTnIvSDlVclVBL2FvV2lDR3RtbjZrT3d4?=
 =?utf-8?B?dStrdDBDbzllRjhveEorRll3Y1R3VnhIMG1OOCtGR0ZQTXJBZjBZZmxhcnpB?=
 =?utf-8?B?N2hYSlI3SmVBY3REWDZ4ZmpldjFtbldHQjJtVkR2YTcrL2JvZkt2em4wUnF1?=
 =?utf-8?B?MUxhUXlPVEJFMERyc2RwNldLRUZ6Y09sSlFnT05ZK2RvNzluUW12b1BSNndk?=
 =?utf-8?B?cHlOLzFOZmhOSVJycE9hQm1CV3NGVENSRFkvL2ZRVHNqbkNmZnJQRlZlZEgz?=
 =?utf-8?B?cS92enZqeEhiT2pZY08yS01sN05EUnJmQ0F3SjVmTGFQN3lpc3FCcnc0Q2tS?=
 =?utf-8?B?UlA2d3UvbGtoenlOVXlFckw0Z0ZRb3Y2Q1JxOU1yaHNRZllFYVdER2NiZmtt?=
 =?utf-8?B?UUx1cmkycmM0c1ZMUVhrbHA2T29GMFNCaU5qQ21jRGJtOHZ4aEhhdnpJQm42?=
 =?utf-8?B?SFBGYjNlRGNmaWtya3U2OFJyKzkwSWIyT2lSRUozdG52NWJsV1NLd2tlaHc5?=
 =?utf-8?B?TEZmM2NlYzZTa1VDUDFDSHBhM2NRSVp0djBYU0tGZUxOay9MK1BDcmovVnlX?=
 =?utf-8?B?WFVuTHZvTkVVUm8xR2I1ekorQXQ2RytrSjFSSFFyaTJRb0tMVzUvc2RKdEwz?=
 =?utf-8?B?UWpJVWZKMUR5MTJGbmcrd1pGMVEydks2N2ZpZ01JWkkvZGpGL3BpK1ZzeC9B?=
 =?utf-8?B?RmtrRHNMaDVLNnVDU3BCRko4Um8rRnlUTVl3RHJaTTRFWUZLTjZXTnBTWlFX?=
 =?utf-8?B?ZDVLL1lFdFpueUQzbTJLL2dxcHh5V1hGR1h5Ukc0cWNTQWlzbVpkTFJwSFhY?=
 =?utf-8?B?dWVPRDJFeTZRcEowcTBwUjlheThlbUJQZ2Mra1ZHMVFOS2cvT3hFdTFzeTM5?=
 =?utf-8?B?RStoM0RWcmZad29YQ3VTeUt4Q1F5VjhGOFgwMG5obitBU2FvWlIydkF3MXRr?=
 =?utf-8?B?S1BhTTZ1SkdDdHRTYTBPWE1IMDdwcTBYakZicHdVM1NpaGlvcVdWeEEvajVq?=
 =?utf-8?Q?Zx3y9cVMPZpBQxbzC9IAlFile3+GPIDQFTXcxwv?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VHJjTXV5czVZWm04di85eEtkUlE5eGg1eElaMjFraVJoU2FKcUp6S3I2dWM1?=
 =?utf-8?B?Y0ZBTkg5VDljYjNiL0RRYzBRaUpPbmxCNEd2WmNWOVhtT3hMOGpuUmFLOFV3?=
 =?utf-8?B?M0ljYjJFS24yelgzSHVWVmo5VGFCaGRHbmk3dXdkT2hGdWNycjBwWnJPTVlx?=
 =?utf-8?B?eVhGa1pZNWw3dkdoOG1Hei82MDVDRmJrTVAvT0Zja2I0TVo3SEJsL2M3VzJ3?=
 =?utf-8?B?c2tFMUZVU1ErNFdWUUJTV2oxVEd2L1RFWkJ4Y2hMUWU4MmsvVWlFQnRaYjg5?=
 =?utf-8?B?bFdDcmxNaWFnR3ZCa0NQQUdnMGdmYXA0cXdVa2N6V1EzUjNMVzFhcEtjdjRE?=
 =?utf-8?B?YnBKQXpWTWZ5NlVKbUNjQUpyOFRmRDdRWGY0L2NrNGFzSCtGT1R1czZLN0VL?=
 =?utf-8?B?VWphcWt1MmY1Y2FCSE1UMnZ0NUhuZDcvZjh0SHBBN2xUZHk1KzJyQlZqWXhX?=
 =?utf-8?B?RnlWeHFvMHZHRHhvd2JYRVJPdGYweXpHVFA4YkJTZGxRM25CQ2NWbyt3N0xs?=
 =?utf-8?B?QjlTclpqRHpsVmd3cWphK0t4NXlldytvQ2RiY05LSjkycFh6WFFRVnZmZ2ZK?=
 =?utf-8?B?cHFTUEJ5SVdhZWs2alhRcUhXYjZ4VmNpeGZTK1pPRkdYY2ZzMWxueE81M3E0?=
 =?utf-8?B?NVV1RnVIY2Q1R1N1UEdsdC85MWZQV2Q1N2NoVDVNZW9Bc3czdDNUNEpRdDhD?=
 =?utf-8?B?a2dPZlA4V1U2VGRpYXI0SGxxd2lDcVp3UHFvQW84SzFVaVdjM2ZzQzRsd3No?=
 =?utf-8?B?aVVXWkJIazJkTEQvQmYyOU1WRUhZZjdwbERhUjlJTnlkQWhtamVieThwdDdS?=
 =?utf-8?B?dUVQMFljUk5LdTExOUhQalV0NWNtSjU3S2hlMDBjdXRrNXVkMCswT25IUXFa?=
 =?utf-8?B?U0I0ZmxPSVhtTitOQlk4SkdQQ21nY1U1SmxJd0VnRDdvbzVRc01lT2szQnNR?=
 =?utf-8?B?K1JsVXlwd21jSEZlMmUvbFJIdHhHL2I5N1YvclVKZXh5SVJXS05wbkI1dkVN?=
 =?utf-8?B?QnRrRHRHcmFaaitxVnZUM3NFeTNLTWloTzU1c0U0TC9kcXZFMzBoVE04REEz?=
 =?utf-8?B?cXc5Y0MwdjNzem1VQnU4T3VRNTE4Zjk0Y09OUUpWZVd5Uy9UZHdNNUVYQ3VL?=
 =?utf-8?B?UUFzZ0RXQXAxOGdPMXhtWGdBeUxMb1Z2bVZCUDZPanUyZTJRU0VmVW53UnNX?=
 =?utf-8?B?b2cyR3drMStTeEN0WnpHRW5raEZOWTBrZGRLM205K1I2dW4zdjd1YzlKUDVs?=
 =?utf-8?B?N2JhbC9kYnJJTFhZNEpvdmVTNlJuYTZHbm5wbmhaQnBFTnJqM1EvQWx2YVNI?=
 =?utf-8?B?SktsVVVmTDJkQ3BOVEZMRyt1UzNoWFg5WGQ5QVdCb0VJYXEyb3ArRytPVFE2?=
 =?utf-8?B?SXZDM2Y2cG96UjgzQ3g4d3d5WjVnWjNwVC85RmZkK2N2ZGRyMEpjeE90ZWFv?=
 =?utf-8?B?TnhabzdZTldjb1lxU2d3bHV2Nm5sVks0VGZzNFlrSUQ1dXB1OTRhdUxPNGps?=
 =?utf-8?B?Y05qVmhtbjIyOWU5SWU5V2lKN1BjTWlIbjNvMzNZQkxpNEt5SzNNZmMwZGtt?=
 =?utf-8?B?RllXaVh0YWR1S1V1RStvell3K0dpdTZ5TE14d25ydDczR0doajl0YW00d3Vr?=
 =?utf-8?B?VmMrNzhpSiswR3dOd1loMG1uVDVsREt4b2wxMUQ0WDVLaWRLQU5xVWhkaExn?=
 =?utf-8?B?dHQ5bnVYQ2U2WTcvQVJwbFpRZTVqZ1ZwVUxBOHk0OE1pdE5UN0l5QVo0M2Vu?=
 =?utf-8?B?Zjdwdi9lQjI0NUViUkFTbEpWRHM4b3F6T1ZqOGRUejFGb3IrS203Y3NFcFp2?=
 =?utf-8?B?ZlhKanZ4QzIxWUliM1NOU3JjUmhjTnJTSlE4eEV5MERvZHBNTGEzQVpuTVN0?=
 =?utf-8?B?YXY1VDJvMFBrcGFRMThvTDNrRjh3NzhwTGt6ZVMwU2l2eWMxWGNRak1RRUlx?=
 =?utf-8?B?K3lreU5QbTNyS2Q0ckROWTBJald4QksyeS82eVk1YktGUVBDZmlKTkszVS84?=
 =?utf-8?B?ZEtsTzZhdnFVOHlRVjRDWWNPRGovWEU2bWdJZVpyMjdNT0ZUUWtzem5oSkZ4?=
 =?utf-8?B?U0xUd2NuTEpYeUVVQmJoQTFvRVV2VGlJR2lod1YvbDdsWldiaFc1clpXbGVj?=
 =?utf-8?B?d0g3UUdnMjJYaWlBcExoNTg1MDdpemVxVkd2Z04rTkphTmExSGJ4dTdFZS9h?=
 =?utf-8?B?cFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 252d403e-1cb6-457e-b613-08dc8657fe2e
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 18:39:26.5443 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7f84xcsEHjwKNFRQTKsRzjtvLQlLD8gli1Kq1hEKEpYVwY0VPinGBj2m0Sa5PbBax9KEDFD4X28cuXZhndjbUyUunTBIENJBd1FuhycSjtE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8717
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717699175; x=1749235175;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=i7OIo7y/NWHhwwqgEXZWhAqc70T7kSCkWWQ0sZHk/A8=;
 b=epBa/ETwlpyoeMiEL2ZxPAnYq/F2QpGr0h4W+aYej6AA73+WM/imTZa0
 ePo5CR90/sWAK6rZomkxHddTatg3uSXuT4HEoeq2mNcCdF9neJqEGX7Y+
 Db8UyLTMaZ8sP7ZrU2QUAQd1uzNSxMS2X1slyfx9vK5y5UL6a9v6KXbhr
 osbpnHO0FEHHn4cyNHs19H8KCfWBrEQTBR/bOC1lfnOkTfXFZlriwPXQD
 FcZf2IdJoWDqYjnLYE2ckuSNUlgnFTSXeiuNvKxkBHFRQXmPz7PPTYosv
 oFfNFkXJxyzk3TXo8+xXvJjStwQ4BLLxcoUODK4BWInNekQLU1MzZ03Ws
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=epBa/ETw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] igb: Add MII write support
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
Cc: jackie.jone@alliedtelesis.co.nz, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, chris.packham@alliedtelesis.co.nz,
 anthony.l.nguyen@intel.com, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 6/6/2024 11:31 AM, Andrew Lunn wrote:
>> Yea, its extremely easy to break things if you don't know what you're
>> doing here. So its more a question of "are we ok exposing yet another
>> way root can brick things?"
> 
> Many MAC drivers allow it, and we have not had complaints. It is not
> really something i'm a fan of, it in theory allows user space drivers
> for PHYs, but it is full of race conditions so in practice unlikely to
> work reliably.
> 
> If you are worried about it causing additional support issues because
> it gets abused, you could make it taint the kernel. That makes it
> clear all bets are off if used. For the use case presented here, a
> tainted kernel does not matter, it for lab testing, not production.
> 
>       Andrew
> 

This might be a good compromise. I don't feel too strong either way
regarding tainting the kernel. Adding support here I think will overall
be more helpful than harmful. I like the tainting idea as a way to help
reduce support burden and flag that something like this was done.

That being said, I don't think I personally have a problem with the
patch as-is given its intended use case so either way from me:

Acked-by: Jacob Keller <jacob.e.keller@intel.com>
