Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 703D4B18255
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Aug 2025 15:18:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 275C5610C2;
	Fri,  1 Aug 2025 13:18:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LFlE1O87418W; Fri,  1 Aug 2025 13:18:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 507C660839
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754054295;
	bh=E74SjM/RNYdue5ZGK6AG8XpEyt792rHoOdJO+kHZ2mw=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ndlwUfhfA156Rjq3C0GCEWandhcTPy9rb0DspD9pYrqewDhNVnGLpP6TrAo+FujjU
	 de1pTnxt8QZPcHkZfmQhgLFBKVXASxHtt+EGuEh/ZkRKQtSoA1HeXhV+cm1klIdbT+
	 HlqI9jDm0X7NWSGT9t6ddBNEMrqnzWnoBapDmm/jD6IDPl2eJDbpOZ2Ah3LDKMSK7h
	 fPZAIcfMLbGcw4Kln8o+fNGJT2zI4C+LTxWzARr9lBHrU8oCzpSxffrWETKWnJu5Pd
	 JEyCqgmakGo0K0s1jTSlGwF3q/9qUL2WDVdxi1kSj30y1181kEE8a0m021qO/mQIos
	 zkbRkrToTXaFw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 507C660839;
	Fri,  1 Aug 2025 13:18:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id BA76C160
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Aug 2025 13:18:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B72B1847D8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Aug 2025 13:18:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C9MIJjrqxk0a for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Aug 2025 13:18:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CDD6A8484D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CDD6A8484D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CDD6A8484D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Aug 2025 13:18:12 +0000 (UTC)
X-CSE-ConnectionGUID: 9wug5sSMSxagL2m25Q1LxQ==
X-CSE-MsgGUID: EMDpLQyTQVu0Sf0owbFBrw==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="73857730"
X-IronPort-AV: E=Sophos;i="6.17,255,1747724400"; d="scan'208";a="73857730"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2025 06:18:11 -0700
X-CSE-ConnectionGUID: c59Twh+QSDOyx1CEPkekrg==
X-CSE-MsgGUID: 91KU8nP7TWmEW0vv1SkKnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,255,1747724400"; d="scan'208";a="168860631"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2025 06:18:10 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 1 Aug 2025 06:18:10 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 1 Aug 2025 06:18:10 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.43)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 1 Aug 2025 06:18:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cfGkdJFpYsLLrmey5NDBkEURPXrXiUOwyootNOnm9X6QDj6LrBQf+CuLzLRB+gpwL9NfCKTtq4MbfSRikhdBfkLiet6PHuYFtq3wdU7Unfti1qqUW+Ts9Lc5Y+Hvyt99fXi9zxYlLQZXIX0iMDEtR/y0G03sfBREKv+4rmrh/1nXtsqWtsDSy+EMA587nEjQwjniMNhq31jyh5GSthCQpZlWe2RYh/c0OTgjJ6LoLbx72laVbvhR0+qo9BsDsyU0QTeVClq0nyK1+shoJVSw0EkUTLk2ogPmYzrj845ZXgQIj7/ekpcbIxtGfWwa4jj8JLHY80OIYh98MaSgV6D87w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E74SjM/RNYdue5ZGK6AG8XpEyt792rHoOdJO+kHZ2mw=;
 b=mBe8itlHlfvdHlsCPAdEThZe2pP3GlamqFhSjyMWR1JFzKdq/R7BIeRxQN2up5i5sa6EiUo2ycecFvDQc21ChrmFIQ81avYDZbeBHdCbqKZDY8uBXNSlS30p1bdczEJZygWImp3uW0SpWx7x2BzK5huzGoOsKI4Cqe0URrF0g3v8YAMcbbcEk3uA9qGVlfxz2HMrReYx/DOXIH7oaTlZBXOT707/fh+xrHc3bCtkHUumI3nBvDEuSA+HQ+Ci6LbCCVP2+4A7FLF6gXCUAv34pNQJVQVp2wIHGcH2tH7HwGPeZ+9l/1Z7enHPEhpws01A8TSpmFrdMpsykmwUlEvXeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by MW5PR11MB5788.namprd11.prod.outlook.com (2603:10b6:303:198::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.13; Fri, 1 Aug
 2025 13:18:07 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%6]) with mapi id 15.20.8989.015; Fri, 1 Aug 2025
 13:18:07 +0000
Message-ID: <ff10e2a3-bd97-4c96-b7bd-f47289c9b0e4@intel.com>
Date: Fri, 1 Aug 2025 15:17:42 +0200
User-Agent: Mozilla Thunderbird
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: Kees Cook <kees@kernel.org>, Simon Horman <horms@kernel.org>
CC: <intel-wired-lan@lists.osuosl.org>, Michal Kubiak
 <michal.kubiak@intel.com>, Maciej Fijalkowski <maciej.fijalkowski@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Alexei
 Starovoitov" <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 <nxne.cnse.osdt.itp.upstreaming@intel.com>, <bpf@vger.kernel.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-hardening@vger.kernel.org>
References: <20250730160717.28976-1-aleksander.lobakin@intel.com>
 <20250730160717.28976-17-aleksander.lobakin@intel.com>
 <20250731123734.GA8494@horms.kernel.org> <202507310955.03E47CFA4@keescook>
 <8c085ba0-29a3-492a-b9f1-e7d02b5fb558@intel.com>
Content-Language: en-US
In-Reply-To: <8c085ba0-29a3-492a-b9f1-e7d02b5fb558@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU2PR04CA0008.eurprd04.prod.outlook.com
 (2603:10a6:10:3b::13) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|MW5PR11MB5788:EE_
X-MS-Office365-Filtering-Correlation-Id: b811b3eb-94ab-4ab5-07d4-08ddd0fdda8e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7416014|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UkRnR2xZWC9yUlZ3dHVtZ3FXOWlwSDZlcVZkMVhFQTF1NFFZU0tsYmFjVldw?=
 =?utf-8?B?OVZQZ0dkNEJxNWxORU4zZ1V6QkhuRGRLSHpEZWJ4ZWhxRnVFcHJzdUoxNHFl?=
 =?utf-8?B?dGRFb0ZTZHI1UTl1WXh4TFg1MVdzSGVNb0NYMVVLQmIrazF2NVMwOWlhbDg5?=
 =?utf-8?B?RXd1ekFFVm5hR3RreDlBWjAweVhVZ3RhV3FOZjlpTWZWVXcwUER3NjVaRlNh?=
 =?utf-8?B?MnBRNVhOZXhHM1psclZxU2FCY2ZLVzFJQk9FZnlhMFN6RXhiN3Z6eHFMRm1C?=
 =?utf-8?B?blIvUE1kNGZpVGxHR1diemZMTlhacWdVcVRqM2UzWDBXQmFmY2FSQ1VscE4w?=
 =?utf-8?B?ZE1NM01LVlZ1dXRQUVVNelg2bU9zKzVqQndIK21nNVFmSW50TjliTllnTDl1?=
 =?utf-8?B?a1I5WDJSVWo1bHRCK2cwS0o0eHhhK0NTR1Vwb3p5amkvdUNkS2dJOTh2TEVT?=
 =?utf-8?B?WGZ0VTFxdmwzdVdkSzlRa0Q5aVdvWUY0YmNodGp6MTQxVi8wRlpDZ0ZMVzVs?=
 =?utf-8?B?L21PUTJ6MDdacEk0NHRJa3gxZFFUNWFndjJMUER2V3c3L29zTlR5cVVhenRS?=
 =?utf-8?B?bXFDNlFRNXNVdUtBNVl4Rm5VeHB0bTNwV3JtMEJIajNzYzR4REJnZjEwMG1Q?=
 =?utf-8?B?dXl0WlVrZ3dQTVU2L2JXaWhNeERFYXplbUM0aEdLYlBGVHFuV1RWaUJiMy96?=
 =?utf-8?B?VEkzU0hZU2lDWlg5VUgxOEFCQU53eEVIb25jTlRqSmUzN01pUmUvdmFmMEFh?=
 =?utf-8?B?b0dacTNzL1NPZHl1TDZTQld1TkFibTczVlRUZ2xiYjBkZGs3SWFzdWR5cnhN?=
 =?utf-8?B?Y2x6V1dSS3A0SFFaYXNZWGI0QmZmWmI5ajl4YTl2L1ZnVWZ6OGRHQ25tcHE2?=
 =?utf-8?B?TU9UaUZ5eDY4RFlQM0FYdWgxS1pQa2plL2lhblM0M25wSEs2UHRXYWdhNS9D?=
 =?utf-8?B?dGhjVUpLTGw2cjViV0t6Tm94ZU1tZE5GQTZHZDMxbjFUd2ZWZllsQnVNR0FP?=
 =?utf-8?B?MHY5VW9QSmo5ZG96S2VVNzJRTnRlTzhkRTI5T1dJZkszcGZGUEI2M1YrOTVO?=
 =?utf-8?B?M01jdUZZb3Vvcm9JZFF4VmMvbEVxSmI5cUVpUStzVlJZekJ1Z1p2aW53Ui9U?=
 =?utf-8?B?NWlYdFdlZTkyWkYvaDgzVEYwSlFVUFdIOWIyT3FhNzUrY2tYaUVmR3JscGwx?=
 =?utf-8?B?MlV4UE5nWkIzcjhyRnF6N3dyR2llUGd5OURpeDladGYwcmp5VnJ0emllNDZR?=
 =?utf-8?B?akp2SDZIUDJhL0IySVV5NkY5MlBjR0hWZlBwNTZZcy9oSnlwVC82RTF1aVlx?=
 =?utf-8?B?dXFwR0NEbG9wem53QXljYkJtRDU5RVZJa2xCbk9HZFg3b2ZKK2pQTlJjUStC?=
 =?utf-8?B?SEdyZnpVWVU1SFhyVHdRL2wrMGYwdmk5V1FkNHFVRTNhNEZpSlNnWkdaY3Zl?=
 =?utf-8?B?aGpWZ0hQZi9DRWp6eC9PYkExSFZDSTVTRk80R0dwOWdtVG1zVTY4OUZqYXZa?=
 =?utf-8?B?NnltU0phMnlFZGFnK21TNlpSZDFUaEMrWEpjM1VtRlZIYXhjN3k1ZnJxaUth?=
 =?utf-8?B?aTVKQndKaEFQWUErTXNZTjVjQWZHKzRjN1lTQnFPR0syK2VKK0loR0lraE5K?=
 =?utf-8?B?UnplS1N4RU5PZytGZHVRMmd2eDJ3V0MyczhLOTVFYkpzdDNURjRVaWJSdVJm?=
 =?utf-8?B?Ty9mK2k5Znk1SzJFdEErbWVhc0JqQnV2V3JKQ0ZFQkxzVDlNTklVMitHUDlO?=
 =?utf-8?B?NHBJSzNuSm9qMEk0R0trRHBBcDh5TVBTWEtJWHoyeG14a3BOSlBEMkNuUW9h?=
 =?utf-8?B?WVBkUW5OK2FrSC9Bck0zL3JJdVB5bUJWMGtzZVJLTFM4MWQzbFN0bHBNVXNy?=
 =?utf-8?B?UVZmK3VyaDRGeG0xa3VudW1NUkYySWwwU2NBUWVpeldGZS9Jb0o4eWlBREpJ?=
 =?utf-8?Q?jc1HqTPeAY4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7416014)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WnFGSU55QXE3OUI2MGpXUnBMMVQ5MXMwNXdFNzNwTXdmWUluL0ZlbFBVV0dy?=
 =?utf-8?B?SXJYaXVTcnp2emk4NGUwcWpvWTROMDZQTmZGK3pxMlAxYnpKQ3pBYVpleWps?=
 =?utf-8?B?WDNYNTJpV1dVd1RZZStQNDV1WFIwWmtGUE5LSUc2RGZmM2lzRlhGWGpEV09K?=
 =?utf-8?B?YlBXaENFYTNJcFZsMVlhQ0lUdFE1aEdDMzFhNEpVRkplNnRvejd3bm03Ymox?=
 =?utf-8?B?MVRzQTlNUUxZWEZOSUNibXJuZUphU2NGVzNMd05RVitmNnFtR0ZGK3hYWGR3?=
 =?utf-8?B?UWJPUXltR3JPVTBJbVp2U0tSYndCeTNKZ1FOSllhRUxzWDY2Y2gzNThmaDY1?=
 =?utf-8?B?NWlIZlZwNFNBZ0pibnkwU1pTb3ZCVVk1SVlTTVVxREZocHhPbGkzQ2tlVnl6?=
 =?utf-8?B?WVJuZ3dSREFzUm5OdnlBMTE5ZGFLcTF5TTVXclBNditwbzV0RDNqdFNJRzRX?=
 =?utf-8?B?d0dNOGNMWlY5UVhQb2NjRCtwZzBHUzdSTDY3U2U0bGpOcnB6WUpYVlI0bmFk?=
 =?utf-8?B?M3FvaXNtNzZ2eHV0Snd3bDlVRUN2U3JxdDZ2UEdwTUVheERBcFFSRnRoYmRy?=
 =?utf-8?B?ZjBEZjJMdWFHdTlzZlpERFBTQ3RMbzRva2R1R3FFYVJKRGZ4bERYOWVnUDVq?=
 =?utf-8?B?R203dUtTWTQ0cFRORWl5emgyZklHR0ZWeXNpUVdSMmcrcEpmbHp1WjFNTUo0?=
 =?utf-8?B?cXc0b1dZMHlrbDNENmtwQlN2b1d0VzZJZGpGUkhrZXFuOFkwSnR1WDE3WHll?=
 =?utf-8?B?VGYxUnNMNElqcU5RK1ZkUVRqT0dHOHl4OWMxQm0wb3JrTHdLNHNjdzljaEJw?=
 =?utf-8?B?Vit1K0h2b3kzYmlIOUE3TFdIRkQzNS9oRXNzZFh6UFhlOVAybjF0bUVTTE5l?=
 =?utf-8?B?ODNqRXJTUzlDQ0FxL1ByRXFHc09kR2s1U29aMms4MTJQMFBFNHdMbkNkaTZZ?=
 =?utf-8?B?Tlp5eGRwUmF3azhhYjNiQmVQNi8zNDRWTFZ6bUcwZTBmc2tmbCttMUFpTmRm?=
 =?utf-8?B?SkhKa2lrSVZFMnRaWWJReGdJNkk1Y0F1dWxjcFg1ZWlaMXFRU0NYcWpQdHl3?=
 =?utf-8?B?L2NjaGlpc0Fhc1QwTzVaTnNHNEIxMHRveXoyQllESDBQUzZ6ckU4L2JaUWV3?=
 =?utf-8?B?UWZxdEdlWUc0VXlHNkdiVk1MM1Z6RnZ3ekNtdWRtV3JoL0N0dEpvOFdLZkdN?=
 =?utf-8?B?VEphdXQ3clRDWmp2T3cyc3p2ZVV4Y1NST2hZWm8yWlNIc3o5TVQ1eUdubE9s?=
 =?utf-8?B?VmN6ZGhKY2FjWGNBL1ZEcVZwSisvYzhKRjk0M2dCc1N3RlUzaXI0K1Vhemx4?=
 =?utf-8?B?VFR1TmVKb1RERS9POVl0Q3RXakpHR1ErYzFhdGQxSFMrdlA3NDdGYWsxT01l?=
 =?utf-8?B?WTk0dmI0TGlkOWdvMnpodHZZOXMxMWJwS1lyckJ3My9NNC91ZkNRVUhTR1dK?=
 =?utf-8?B?SE9KMzZxMmJTd3k0RDEwUWswY0xUbXoxQTQwbDI0UVlYeG5zYTQyOTlzV3JI?=
 =?utf-8?B?dVdOVGk0bW9PclFtK0UwcUd2SUFWRHpCWEJTNC9LOEhMb3hiZmpwTlBLc0Rl?=
 =?utf-8?B?MUZkRDZlRXVPZTB2NEkvM2RybGRlbEQ4VHlQVUhpaDNJWlVQdFZYOWFlczRB?=
 =?utf-8?B?MkxIU1JYOG5oRFdoKzhZd1dkaDdRb1ZOOW9BaXRyS2NDRVVNYm1JUDdYaUZT?=
 =?utf-8?B?bTUvcVNJMFllejBKblpJRE84VnpVdWY4a3RQd013QjNrOERMWWhVZG9XL0FP?=
 =?utf-8?B?THF2MFZDNlc4SDJMQ3FjZzFwN3ZIbzFuK0s3VmwwVkZOL0ZyaGZieDF3SHNr?=
 =?utf-8?B?YnFDR1VjTEdPcTJ2cDRqelBvakJzZ01COHZIVFdhbU5jOFRxZHROZEJXeGJ1?=
 =?utf-8?B?NjZVTy8vaGxRcDVvd0Fxb0JaSUYwY2xjcUFPSWRoYzF4cHNMTFRSZy8ydEJT?=
 =?utf-8?B?N0VEcGY2Q2tUdk9KOGNBc1gxaWFtTmxPQ3dTbVc2RTNJQWxXczB5eExCTnNq?=
 =?utf-8?B?N0d3NHM3N1J2TjRrWGRPdmJlS3NPcHREUWM1RG4wUGZWSGlIRWo1L0NUTlRT?=
 =?utf-8?B?UGh5bTF4S004K0NVQXFDM0U5clV5SlRPWDdGdVZReGVXTVk2Tnh2ZnhsYzhx?=
 =?utf-8?B?ckduV3I5L01tWXdZWldTSWplZUp4bXpRTncyVnJoVWVaUnVuTUl2L0k2OUZu?=
 =?utf-8?B?L3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b811b3eb-94ab-4ab5-07d4-08ddd0fdda8e
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2025 13:18:07.0469 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9bnRDdhTdhg2WG+vAof47yiLVJgu7bDnrkch3jWSkKpgYVZ62WaWEXQA+h/lxTvcnfWNOQy5zRJD13nD+GoUogN4Im7Zx16Ajfsp6cmjKsg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5788
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754054293; x=1785590293;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mlQzTcwX6eWwa5mK38+cZsjWfzvsIbHVpcTkZ0bu4UQ=;
 b=g5a2737y8sskjIfqhj7yP6yd57sdo76EVP4IC1/ZAup1H/lO3RplgE6N
 JkbLlbR+2Pj6W93jGLRPrZuPDgSjv4+qmiwDJxDOOYa7avLPS1Zcw5yZ9
 B3ZxvzWHRvJwASOOsm/l+rdv3ZfkBIBHYHEz97sm1uBLCWMpAof4xSE7I
 9ciamZCGwrMsnuJVv3jLdPyHLsPeSaw3WtHVZi155zgXct4NBVCw1QcOF
 KOXaXfhl31O6eW6JqVpIKkNIMJzO5rhg4VD3S71JQloKobQRGPAGPZbXH
 53qmkxCCpUX5CRHMQuMdrd0UTpLwmNVbucBxtPUPFS2y30Ic0nY5vTBre
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=g5a2737y
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 16/18] idpf: add support
 for XDP on Rx
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

From: Alexander Lobakin <aleksander.lobakin@intel.com>
Date: Fri, 1 Aug 2025 15:12:43 +0200

> From: Kees Cook <kees@kernel.org>
> Date: Thu, 31 Jul 2025 10:05:47 -0700
> 
>> On Thu, Jul 31, 2025 at 01:37:34PM +0100, Simon Horman wrote:
>>> While I appreciate the desire for improved performance and nicer code
>>> generation. I think the idea of writing 64 bits of data to the
>>> address of a 32 bit member of a structure goes against the direction
>>> of hardening work by Kees and others.
>>
>> Agreed: it's better to avoid obscuring these details from the compiler
>> so it can have an "actual" view of the object sizes involved.
>>
>>> Indeed, it seems to me this is the kind of thing that struct_group()
>>> aims to avoid.
>>>
>>> In this case struct group() doesn't seem like the best option,
>>> because it would provide a 64-bit buffer that we can memcpy into.
>>> But it seems altogether better to simply assign u64 value to a u64 member.
>>
>> Agreed: with struct_group you get a sized pointer, and while you can
>> provide a struct tag to make it an assignable object, it doesn't make
>> too much sense here.
>>
>>> So I'm wondering if an approach along the following lines is appropriate
>>> (Very lightly compile tested only!).
>>>
>>> And yes, there is room for improvement of the wording of the comment
>>> I included below.
>>>
>>> diff --git a/include/net/libeth/xdp.h b/include/net/libeth/xdp.h
>>> index f4880b50e804..a7d3d8e44aa6 100644
>>> --- a/include/net/libeth/xdp.h
>>> +++ b/include/net/libeth/xdp.h
>>> @@ -1283,11 +1283,7 @@ static inline void libeth_xdp_prepare_buff(struct libeth_xdp_buff *xdp,
>>>  	const struct page *page = __netmem_to_page(fqe->netmem);
>>>  
>>>  #ifdef __LIBETH_WORD_ACCESS
>>> -	static_assert(offsetofend(typeof(xdp->base), flags) -
>>> -		      offsetof(typeof(xdp->base), frame_sz) ==
>>> -		      sizeof(u64));
>>> -
>>> -	*(u64 *)&xdp->base.frame_sz = fqe->truesize;
>>> +	xdp->base.frame_sz_le_qword = fqe->truesize;
>>>  #else
>>>  	xdp_init_buff(&xdp->base, fqe->truesize, xdp->base.rxq);
>>>  #endif
>>> diff --git a/include/net/xdp.h b/include/net/xdp.h
>>> index b40f1f96cb11..b5eedeb82c9b 100644
>>> --- a/include/net/xdp.h
>>> +++ b/include/net/xdp.h
>>> @@ -85,8 +85,19 @@ struct xdp_buff {
>>>  	void *data_hard_start;
>>>  	struct xdp_rxq_info *rxq;
>>>  	struct xdp_txq_info *txq;
>>> -	u32 frame_sz; /* frame size to deduce data_hard_end/reserved tailroom*/
>>> -	u32 flags; /* supported values defined in xdp_buff_flags */
>>> +	union {
>>> +		/* Allow setting frame_sz and flags as a single u64 on
>>> +		 * little endian systems. This may may give optimal
>>> +		 * performance. */
>>> +		u64 frame_sz_le_qword;
>>> +		struct {
>>> +			/* Frame size to deduce data_hard_end/reserved
>>> +			 * tailroom. */
>>> +			u32 frame_sz;
>>> +			/* Supported values defined in xdp_buff_flags. */
>>> +			u32 flags;
>>> +		};
>>> +	};
>>>  };
>>
>> Yeah, this looks like a nice way to express this, and is way more
>> descriptive than "(u64 *)&xdp->base.frame_sz" :)
> 
> Sounds good to me!
> 
> Let me send v4 where I'll fix this.

Note: would it be okay if I send v4 with this fix when the window opens,
while our validation will retest v3 from Tony's tree in meantine? It's a
cosmetic change anyway and does not involve any functional changes.

Thanks,
Olek
