Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LHobH3TaMWpfrAUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Jun 2026 01:21:24 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BFAA0695B3A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Jun 2026 01:21:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=K3VOPbub;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6AA586F5FC;
	Tue, 16 Jun 2026 23:21:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h5gwvgo4Yfmv; Tue, 16 Jun 2026 23:21:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D3B1E6F5F9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781652081;
	bh=l58RLlpkarFUOjYAUVJOzdvTeT9dcW2jcQZChkTne90=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=K3VOPbubcIqOmtPcluL8d3kap7pE//u32MGV0f8mZQyfo/62+tIBQCDDRpg4bGVA3
	 7it9MIaxFo6BRuITABDyyW8ovlDpNEpNJcIMF0ok/xNcdLo9wot+NL0+S9Kj6t6W5h
	 FHYRBAI/rGuSAFnxf4xNF9s7RK86xeoXrfz9l6TMq+7DFDjxhEaW053pQDWFpFIzvP
	 3rugzn2nRUYKJvSKdtnDgopFfCzR1u1D/j2xq5P4AiXNjlcxVp7S70bDG0gBpb/0EQ
	 CNAej2B5g4G2lN0hVZcmtRwsNgu9CVZ9GMtjyDdlRd7At8iGFH86kxCoZ1h1++b+Mf
	 xG7ZIknXyVHLQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D3B1E6F5F9;
	Tue, 16 Jun 2026 23:21:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id A1091347
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 23:21:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8606042EFC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 23:21:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ozSwjRKcjYEu for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Jun 2026 23:21:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D8EE042E64
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D8EE042E64
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D8EE042E64
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 23:21:18 +0000 (UTC)
X-CSE-ConnectionGUID: Oh+/j+U+RS+e7AdBHx4WoQ==
X-CSE-MsgGUID: B9fWwAVlTRiQiGoG/E4OCA==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="93925411"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="93925411"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 16:21:18 -0700
X-CSE-ConnectionGUID: swlh+KBfTYqqubYkgzkiaA==
X-CSE-MsgGUID: 3rs79BopTMy3M+/4prvm7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="286017992"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 16:21:18 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 16:21:17 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 16:21:17 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.26) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 16:21:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JjelGi45HS3Z5Wza/rtBah2mPBGwyXUTQ+MFTjor2IKfPwlaPOx4hpLZxWYtNGiGkgEzhq0FZdYfym3DIEwEcYG8Mwl11N/UlN02VrTwK6ekPV0Zi7O+bEYMMZu/7SbF1x5ksK8MxDsHRVPtVi4S4eALIMR0gDJXTgzoT1M6PP5feUnzL0OnjM42Ia4vIWmAKOvYriyzKvdHcLVeWS+K2yDi//vw6fIkovnz+NiHlB7vpS4HQAUPtp1QRo+Ed4+/rIxF5ot8pUpUinMZiKalT6KMDeQGeqv7tWGn06EMdTSbwS2Xat5RUOQWlfIlfbzqndYuV/piT3RXjRJed/JVDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l58RLlpkarFUOjYAUVJOzdvTeT9dcW2jcQZChkTne90=;
 b=oIZHcv43tjm3SGB+1r7WpI7CbwfOcHZTh908lwzpCpaFRVxBMwtv5ZxVw4QM9z887pCSSXPx5P7/RGBZ1jRd8GdFsLRK5dWFhIaaRrtPcKoTBXMlNtMzwCIX33Nh5/uFxjDJvlJryIZwzhvn5MRUrgj2YfGBOQ8NiSV4wokcEIZf6cWNTQhkd/KZdMs/CyN7sAcK189vI8nvh8J4S77fPUvHCfFO/lSRgiJVDa1K5CFPmYbkIzysXG+xdBoIIDG5lgG/e66eIoXDwP+o78cEiiBHHYFKRohQRI59/c7K+Z6ejx39IydMzJtgN/c7/wGo0sp/g5KjJ+lKrWIllJi75g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7381.namprd11.prod.outlook.com (2603:10b6:8:134::14)
 by MW4PR11MB7161.namprd11.prod.outlook.com (2603:10b6:303:212::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 23:21:14 +0000
Received: from DS0PR11MB7381.namprd11.prod.outlook.com
 ([fe80::4c39:dfe6:d6dc:6f58]) by DS0PR11MB7381.namprd11.prod.outlook.com
 ([fe80::4c39:dfe6:d6dc:6f58%5]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 23:21:14 +0000
Message-ID: <912031d7-5d54-45dc-b68a-6481729849f6@intel.com>
Date: Tue, 16 Jun 2026 16:21:12 -0700
User-Agent: Mozilla Thunderbird
To: Dawei Feng <dawei.feng@seu.edu.cn>, Tony Nguyen
 <anthony.l.nguyen@intel.com>
CC: Przemek Kitszel <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <jianhao.xu@seu.edu.cn>, <stable@vger.kernel.org>
References: <20260616155742.4052021-1-dawei.feng@seu.edu.cn>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20260616155742.4052021-1-dawei.feng@seu.edu.cn>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR02CA0007.namprd02.prod.outlook.com
 (2603:10b6:303:16d::33) To DS0PR11MB7381.namprd11.prod.outlook.com
 (2603:10b6:8:134::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7381:EE_|MW4PR11MB7161:EE_
X-MS-Office365-Filtering-Correlation-Id: 7d827f23-4068-47c2-d289-08decbfdf5a4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|23010399003|376014|7416014|6133799003|18002099003|22082099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: mKx/TaXOFw3+rGCMlVM2XNgIV+8jsL+NvMoDQklIz1uTOZnuKajUFQim8GcruwYTdLw30GBv0/ZPoTsk62wal+8Ofp6lpnDqTJIepLXoHaFCMSE7Qg9KdkQpgTWYyO0Lu4pUeI0NrmYfJ4k0Fu8LmuJw50VUhycv71Umu97+zxeI9/EItGOvejoZZwanE+uzRxlWm45l8wKbFDeFDQMUsixjKBWVpfBpt1N0oEufbx6x4lcqjY+FLgLJ13bBS9KmlIoB27w/rkINl+aBXqi0XAieyZ9NRwSB6oPZanTtkLUrSmNlHUK9aPRvw3qiJBrpCsecJStZLOkZNSeh2w8gteyra4TVdZhwrGs2Q1jZ5m3BwrifUPTGUo1oCpZTvgPLWbqFkSS5E/kVgDZfcXMWYtuDsDgSzfnsm6HaVFlf0zeLiApp67xKqkXTs6U8j7h/B0YAx6ibi9mv+8jNRntrpcm0Gpggo2pmU8TxO/6lZrqJHAWDCnCx+YUi2d0P2/a7HMl9ZfeXVzga+DkDp+du0oWQfoJZsbKYE6ACN5epTNoRegm7YaaQYA1weJFAIwWBRo1tjuNQyvknpZQbQAGLqaZGD+pD8jvvW8Hnpm+WwSQyfmD390yAUJPX+6TUoLt0qQE/vtwDQYP3IoQVc3dvthFPO4jyhmqCN2wxq6pscOC2P/xm0y/Hq4TyuBjXACyR
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7381.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(23010399003)(376014)(7416014)(6133799003)(18002099003)(22082099003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dGJlRnBEQ3FTdmlxVmtQTXhkckplcGlMb3dUTjJsVWNtS1hzZXR3Q01sdDZr?=
 =?utf-8?B?bnRlVEY4d3p1MjFpOCtuR1B6Zkx6MWhDenJWVk9iNG5VTEl0UEh6ZmxRRUxC?=
 =?utf-8?B?dlZHVGVDU3A2QlZpaEJVYUtIME8xc2hNWjhxYUR0dU1XNHBDNzZGemY5Mmxz?=
 =?utf-8?B?ekxabXJ2VHoxREpOV2hsbEhyRDBVRzI5UExNdkFoc0pkRFVJR25pNVY5cjhX?=
 =?utf-8?B?RWJMb0J2UlpINjZmTmlmYmQxMEN0UlkrV0dCMmFqeVhnQ0p0M284bGs3RGhy?=
 =?utf-8?B?TUtPSDIrKzFZS0h1NE8xbnBQNWpJdVZXMjZGUzRYZEtBWE5mc3NFN25rdGNv?=
 =?utf-8?B?TEoycXAzcjByb0wwVUlpT3ZhVHdtUm9vV1krYmhRVExQcCthL0hkdW5Xc3VL?=
 =?utf-8?B?ckZEL0pNeVZFNnZ5aE9YQkozcklGSmV5WnRGaDJiQU1SKzN3Nm9NSDduNG12?=
 =?utf-8?B?emc0VExSN3dkYVJOdzRRYjlkaUhxQkl4aFFrNEJwb1pvOFFOeVB5VTkybjBU?=
 =?utf-8?B?SjVWMnRKNzNZTG1UNnJ5Smo5OWkwbzVhbjJtVzM1OVN4bW5DMXoydURKMWJF?=
 =?utf-8?B?MDlzTHhacGxkWUpORFFBRkFITDgvMkJwUGs5RVkrYVplRTZVS09DZnZOVEZl?=
 =?utf-8?B?SHhUVDhHRzBwcEZoU2J2R3J1eW96dUw4OG85dXY4Z2owakFVRTNEQVZtWXhM?=
 =?utf-8?B?bXp2V2RXT1A2eWlDUTQ2dXRmNGtZYjVQWVRnMk5ENTNLMkRPanp4a21pdVM0?=
 =?utf-8?B?TFpva3dQK0FnNXc5aTBBYTlIT0RZREtLMyt2UTZ5ODIxRUtEVkhkUEdldVRo?=
 =?utf-8?B?YW1SMXBaY21QZEhGc1FDNnFzTG1jc2pTZkJsRk56azZMUVI0SWZkY3N3QlNO?=
 =?utf-8?B?Rmxyd2FLZ09hazBpeGhqSXljN01GUEI4eVV1UmxtNTVPL0hPVnJsSEQ5U0xU?=
 =?utf-8?B?N2tERnlWK1ZMUVN3MTNxbkR5RHdLMzBycGF4anNvR29kVDZYR3M1NlFsZWVl?=
 =?utf-8?B?dm1rZG9XYlBYd1Rocnp5YjdxaVZSSno4OGNTeHBwZDk1MVRORll0MFBNbHU3?=
 =?utf-8?B?bWZsVm1GN0hoTkpIUTd4bVlRTEgxQ1lLZWpIbm1nWTU0Zy96ZnFpYnlPVDJs?=
 =?utf-8?B?cHNSeWFISHpsdVNGWmRiUzBUNDcwckF2ak9hR2xZc1lxRHR0cmx2ZVNqZjBW?=
 =?utf-8?B?ZXdQZUFtem4vV3RjNDU4aFoyd1ZVUVpZdjhOTjNBQlQxM3grWnRRZUp1R3Ey?=
 =?utf-8?B?NFFaN2hRUGZDWUFqb2tiR3g4aStlYTI4YnFPcUF0bG83cmM4c2tVQ1ZDZlBB?=
 =?utf-8?B?VTkxcEt3VnM5azFmM1FmVTN4UEZLb0ZvRlpzOCs4T3lXbGhMMW45V0dtT3Zz?=
 =?utf-8?B?RVpzN1F2NUh1RjZPRENYMHV0WE1vb2JhUWxTTzlpVjZweEpkMU1xcUIyOCtx?=
 =?utf-8?B?Ty8xckxEQW14dkxGUlpUTjlkL0FNMG5sSTNTSXN6aFBmQkdRL3JBMGt4UFJE?=
 =?utf-8?B?NFFUSFNLWFJWUjZMVmRRK3d2UXdEQWpJdnByNU90Zk9mLzg3NThrV0VEVVE5?=
 =?utf-8?B?RC9INi9hejFHcHFxamx2V2lSNmFiMkFPTTdON3EzQ3pudEE4UkFKOWtrUVVk?=
 =?utf-8?B?MkhBSnNFaFRqWndhQnNTM0xMZHM0cGFYbGxUeWZDTmtieE9iN3I3b01Vb2tw?=
 =?utf-8?B?VXpnV1A0NEE1Mkd2cW5Fa1hVRTFVVWh6MEU3R0ZBRitXeERuYjd0eW9lQ3ZF?=
 =?utf-8?B?cURwU2crZGFSMTRFOXJVRENpSnRqSU5MQ28zYVlCTGp5dGttc05SZXBhYUdC?=
 =?utf-8?B?VHNTYUJoS3hxTXAzVC9VUDg2WUFTL3FrUXA2YUl4VE9vd2wvMm0wSndMV2Uy?=
 =?utf-8?B?bHY1b29lSjhZRmdIRU9XemxKN2xvQU5jL2ZlQ0hKVmV2b2Z2dFVuZ0dBTkcv?=
 =?utf-8?B?QmplZlQwSU16alBCbXhKSjNyT1JHd0htUUVDUllaV3ZROHdsazZaV1NNMHpQ?=
 =?utf-8?B?UnlLdGM3V2NyQU1NYVN4cFgzYWlCQUZJRFAzZkdVNVVxLzhrdFA2TmcySEti?=
 =?utf-8?B?UzVFM0VXRG4ya1FtUmVHSHNyOS8rQTU4L24rWE1uQ0JCeTdGUHBtL0IwSjd4?=
 =?utf-8?B?MDdFQW1nY1dkOGZrMVF1RVJNV2dwUi85TStVYlJrQkROV21nbUt0WUpGcVh4?=
 =?utf-8?B?TWZYTW8xbkZFQ1BxWjRzdEFEMGlNTDJORHFWK1hhYkoyRkhsc0grc1B6VmlY?=
 =?utf-8?B?REJiMDk3dm52cG9uUEJraFM5emhIbmlMNFZqdW5wREN4b1Q5QUEycjNOdzdR?=
 =?utf-8?B?R21mMjFxcGZhOWs1K3A4cG1mWW8rZW5PUWJCOWh0c3I3SHNGUnFKQT09?=
X-Exchange-RoutingPolicyChecked: pV7zpUYTS5skOh/d+H9UFSze+TVTs5P6a73pxvMaiQHh8VGkB/a4bFriAsHzQFw1jvavQ2fR9AJMzaYUnKl4AYNspMvo/MLY+fVrvMfBX9N9w/CO43kC5gwjCiFm51Jd+wPNMrXcEWJ55j51LOX7xqWVOVIp7u/UcmigxV2SMiQPU8uUOQwMvlPx29SFzXy04feqEmKY0nx5nmnrPY/woK5YkDa0IUaEJ2BlOrRpxHuVFl5MsOA1QSoJmeuOVTS7nsiLkx77H1JAvXWd0K+gsjxAjy8mqubG2m5KjXDm+yImq3/SJDWjwecbh4a2VjkvgiS4L+ai/YeLnfGmdW8+Xw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d827f23-4068-47c2-d289-08decbfdf5a4
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7381.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2026 23:21:14.2855 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kc3cwWtHNtYE8OR40/lKxWvuD317/i34p34bucYIbPaSlGdx6o8dwpis1+U5Cuc2WVlqPZtlcSbT3qgmU8kq+2VFzM/DgvtB3LHb07iXGJ4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7161
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781652079; x=1813188079;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mK/w692RiYoHjiBeE0EeiL5ONnJUmJaaTjp7RDzwtFo=;
 b=GIRdNFrLp897Ilx9ETzdvuDz1Z6n7og+815kzjjZv9rMcW7B+gF7uYQu
 GQDWKtrJIeFSTSfT3g85VbWmJw8YnPcyHv7POfxgwdoqKeib5Kb8ofH5/
 RI8mgUGgGcQ2/qrceVt+0R1dA9ap+fJgnmWiDKwhJAJNSQ51jJTabsxT7
 1PiZyjzQxzV9n0gLrWZBSMyj4yjSoLKkd4fDhWOx4ZckhtQxrPfBjJ3rf
 IAfjewPscn+dmw41B0k7oMurE/zZEp2HPwHsfuXF53/kCcsIowkbCimwL
 kKFQUowomhhsUG0EeG+WU+M/B3N0iETsGLCRfagRapSMmAk21oNLKShHZ
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GIRdNFrL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: fix memory leak in
 ice_lbtest_prepare_rings()
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:dawei.feng@seu.edu.cn,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:jianhao.xu@seu.edu.cn,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:from_smtp,intel.com:email,intel.com:mid,intel.com:from_mime,seu.edu.cn:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BFAA0695B3A

On 6/16/2026 8:57 AM, Dawei Feng wrote:
> ice_lbtest_prepare_rings() frees Rx rings only when
> ice_vsi_start_all_rx_rings() fails. If ice_vsi_setup_rx_rings() fails
> after allocating some descriptors, or if ice_vsi_cfg_lan() fails after
> the Rx rings were prepared, the function reaches the Tx cleanup path
> without releasing the initialized Rx resources.
> 
> Fix this by adding separate unwind paths for Rx setup failure and LAN
> configuration failure. The Rx setup failure path releases the partially
> prepared Rx rings before freeing Tx rings, while later failures first
> undo the LAN Tx configuration and then release the Rx rings in reverse
> setup order.
> 
> The bug was first flagged by an experimental analysis tool we are
> developing for kernel memory-management bugs while analyzing
> v6.13-rc1. The tool is still under development and is not yet publicly
> available. Manual inspection confirms that the bug is still
> present in v7.1-rc7.
> 
> An x86_64 allyesconfig build showed no new warnings. As we do not have an
> Intel E800 Series adapter available to run the ethtool offline loopback
> selftest, no runtime testing was able to be performed.
> 
> Fixes: 0e674aeb0b77 ("ice: Add handler for ethtool selftest")
> Cc: stable@vger.kernel.org
> Signed-off-by: Dawei Feng <dawei.feng@seu.edu.cn>
> ---

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
