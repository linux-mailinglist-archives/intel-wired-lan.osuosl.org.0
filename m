Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uNAoIZo+e2mNCgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 12:03:54 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AD7A4AF59E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 12:03:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 081BA60872;
	Thu, 29 Jan 2026 11:03:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IP4OCTYtFeYt; Thu, 29 Jan 2026 11:03:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 30F4160874
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769684630;
	bh=MHUdeMrh0owa9gE7onbAMvD8KH9YU8zM/hl4dzz4IRk=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=s2X2tuKAZVDa2H+9fb+5lEHmVkvrcjkE11OCY1++q6eBrWJuCBR6HccWghkIXEpuj
	 XgA7DFa8LTCVlwyg+fOvtn94Ab8l3oeGMkxnKqOs/nVEcceG9+VHkNovIT9isSbMDg
	 8OHab3fGB8fArs8NRozBASBSbBMhraN6V9Hoyky4YlIO1Y0gn3mXaWHntDNxnzN51C
	 1GhsTY4cYyqDF8LjqjXxqe8n893PtxYOzjKkk/RmARpjrUFHyzpB09Fb3PjT7APPiT
	 b1kbNtWkPZf6dBdik+Er8hcEqlqbKbBayWrbXyTnD37ZaVtSB2gdSvxcUI23cBLyiO
	 trw257NOPNHmg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 30F4160874;
	Thu, 29 Jan 2026 11:03:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id D814C118
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 11:03:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BC74460872
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 11:03:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GVb3JcUCFQUv for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jan 2026 11:03:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A36B560816
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A36B560816
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A36B560816
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 11:03:46 +0000 (UTC)
X-CSE-ConnectionGUID: UbFT++lTRCShLzam1dlgCg==
X-CSE-MsgGUID: tdg8yfYETCqO0bFESjteHw==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="81234499"
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="81234499"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 03:03:46 -0800
X-CSE-ConnectionGUID: z2FgJgvuRAKt/RCeskHKig==
X-CSE-MsgGUID: g6EzF8LKTXmmjHqfHXJK9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="213510654"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 03:03:46 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 03:03:44 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 29 Jan 2026 03:03:44 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.52) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 03:03:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uomSUZKbDIWAm85B8ucchiYbQ5NmvCkClmAWUSFhHOzeGr0T2btMWCSUziWcK4opU42puyy4ZuINaIqsuoelzCRQnMVpjFbLk4Ch1MfPtznQm8bab8PraLAKEv0lrPLxbA4/M51gym4ue0B4hDo45rBMe+9KZrC1T3VPj0tDwpkelC6Aym0mPCtrViLf6yMwGkU6jP0v/czBefMcNr6fYo61ES+468sRqznc8NH59NWhKGfaR5TisCEgezCt4Bm/MHe1QqFU5qvdDCRFF2XAPvWfPx8wV+VVBrVZTQMON2ujBiVKChH/sz6xLzk+5orNiJAjpEBGH4PSb39Rxv8cqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MHUdeMrh0owa9gE7onbAMvD8KH9YU8zM/hl4dzz4IRk=;
 b=ArfAdtOnfiXDYeIq3KgyZY+47cj1AQv5+h7OhyWcryP9mphXUTcTj2q8mBwe6a2y6BqP1Xnuos0XigB24jqW/BvOiFXk2N4zn/7XgITm7AAzWRVxxkV8ii4pIZqZg4bz8/Z2OnRtbPIbBRGKJu4v21NCKSzB7Ts5HDc7AKfjwL+7arJsgHmUKmT3xZwZDE4vGqkyo7hDwx436esDQyEIACxAFZS4PlqIm+n567D4gMvKA0KceOVVnmog0A6p9SmwW+GyXDy6kvypuJsDe0tCJOnJxdC6tbiKQC77/+kK0Zj4WfK9PI9D9SmFO26wVGJRoX6MK3/Pg8MVnuci+dInLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by SJ0PR11MB5152.namprd11.prod.outlook.com (2603:10b6:a03:2ae::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.10; Thu, 29 Jan
 2026 11:03:35 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c%4]) with mapi id 15.20.9564.006; Thu, 29 Jan 2026
 11:03:35 +0000
Message-ID: <93f55dd6-44a5-4309-aed1-30e352cd2825@intel.com>
Date: Thu, 29 Jan 2026 12:03:28 +0100
User-Agent: Mozilla Thunderbird
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: Przemek Kitszel <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Jacob Keller
 <jacob.e.keller@intel.com>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>, <nxne.cnse.osdt.itp.upstreaming@intel.com>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20251204155133.2437621-1-aleksander.lobakin@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20251204155133.2437621-1-aleksander.lobakin@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU7P250CA0023.EURP250.PROD.OUTLOOK.COM
 (2603:10a6:10:54f::11) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|SJ0PR11MB5152:EE_
X-MS-Office365-Filtering-Correlation-Id: d996cf54-55c2-43a9-8969-08de5f260c4f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?T1NQYzJSZ2FDbStxNWd2VWxteGNkRnB0Ly80cE9ZVC9FeWlnYVlTSVNjUldz?=
 =?utf-8?B?ci9EbkRWRllFRlYrZTQrYVJtYkJFU0JNOTY0My8rNEE1WEFKakdOVzd0U1BN?=
 =?utf-8?B?SHJ3ZFlhbTFEMHg3WFZIM0Z6dTZWdi9EK2VYUDRKU3NaSUNuQWdJaGxCdENO?=
 =?utf-8?B?UkJxNUN5WXNSTUpHb3pVODVPd1BxWC9DSjRVVUtiQUJWbTQvb0ZHL2tCV2U0?=
 =?utf-8?B?NFpBcHFFWjdJZmhBUTA2OS9SWCtqTGZyQU1LOEJwc1NPNWRsMng1UVdUSm84?=
 =?utf-8?B?ajdnTnk0a0ZldGhERCtQa0ZLZkJyb1Z1Y1dSZU5CbGtBckxXbUNTUzhBVnA1?=
 =?utf-8?B?Z3ZnRk9FTmY0RXUzV1ZkUkF2aXR1SkxXbW53L1FYVi9SR1pJSlNFa2NsWXNv?=
 =?utf-8?B?T0N6WW45ZXBvdkRRWWcvNlh4OHBJSFpieTNOUWszOGdEaG9xSUU0TVVRd3gv?=
 =?utf-8?B?S25mdTdEOVQ5bTgveWxFMHJZT1JXbGgwWUZ1NEFyYzdrRm13bUl2Q0VRUW1l?=
 =?utf-8?B?OTlCbGJVWVhOaitOOFJCeDBncStLRENySEtjdWRSbFFqUStjekVjRmJ6K2VH?=
 =?utf-8?B?cmdDeWFocmNCNWxDc1hPRGFUdUdoZGRKWVJaSWk5ZnNqV3BZWlpLb0dIOWlq?=
 =?utf-8?B?SkpkZnZpWFFmS05hYVQ1SkZhcmdiZm5MRERrMkdndTdXZnBxZi9ZdHlPdW40?=
 =?utf-8?B?eTFJNXlrbnpiR21QanVVZVdrakNlNWNSS0h2c3hQZmJ1M0RqZjJvQUorNjc5?=
 =?utf-8?B?ZEtkWUM4SWlUNys2Mi9hT2VuY3dwN3pub2tJNDFRWWtRWS9SRkZHdzJLdzhS?=
 =?utf-8?B?M3dKVUJCd25DNTFFVkZIM3h4ZG1ESkhULzl4cXFETHJIMFJwcXZESTVCcFhj?=
 =?utf-8?B?YW9DSzdqNU14V2xrSDY2OVhpaXBpekNMMmY3QktsU2xkWUNacnBiVVhUdFQr?=
 =?utf-8?B?WUZRNjQ4b0g0Sml6YkVUZ2RTSTVqM3RaSWd6VnIxK0V2cjN0blRNaEZlS0ti?=
 =?utf-8?B?WEZWRjdHL1pmeGsxRWlMeHM1cXl2TW9HcGxhMmNKK2xORDhXL01hMmlUcEJq?=
 =?utf-8?B?N00wd3JVK1MveGJQdWlpSFYzemd5azlXcWlQZFRPNjBUcGhqNE5XK2dqdjZi?=
 =?utf-8?B?eVpld3NHTGwwR1ZKb28yODFGSStla2d1dmVBZ1JqQUpZVXNod0ovMnF5QlJL?=
 =?utf-8?B?VUxDdjlKQ0ZLVXQ4TU9jVTRxOVpsWWFBT2IvbEk3Sm1pblVEU0JGUnRiMHdl?=
 =?utf-8?B?am41QnBuVXRvanBka2E0OHg0bXZMUmNqNHgvM01lSlBTL0hiN3lKbEY4dG5x?=
 =?utf-8?B?dUVZYTBRRkQxYWJxM0VmMnlLQTFDNEZCVUhWNW04UUFTUlBaNjZuQm4wNGNH?=
 =?utf-8?B?OVJoQ2ZuUlVzMXgxblNSeFdaZTRWUjQ5VStUNkdQMWZxMW5JRDFTU21QMm90?=
 =?utf-8?B?OHRhVUNXZERPU3NQOHpvYjFnRnh0YnV2ak5CUWJINGpGaCtqTmt0aENpK2cx?=
 =?utf-8?B?UmFmTjZwdWNITW1aeHdEaE5seXg1WWhNNGNzWDRXcmY1STJwQkJXZjNqUWhv?=
 =?utf-8?B?bW5rOXpqUVBZQ2ZxLzcxZDh6L0xMdm1jMWtiVXRKcEVKKzVtVEszWHdSMEQ2?=
 =?utf-8?B?aW91Z2QrL2JaekMrSjdFb29WdktSZlVzOXYyK1FiSnhzQjkzekdvbEM0RS9D?=
 =?utf-8?B?VytETVpOcmRUMU13RTR6eDRMaGg3elpUbk5GQlNINi9sWFB5WkZiM2xvVGxE?=
 =?utf-8?B?eVVMUEFLYzg0bS82c2o3eEh6VWlIOEp0Mlc2WE1oazdiRUVDdVRNWW5WY1FI?=
 =?utf-8?B?Qm12WktPODQxNUhQNVNHN1NKU09WUlg3M2sxVDNaQkRkYVZiY2tJbnJEenkr?=
 =?utf-8?B?TkVjSHpiUmFnMXpoeHhBWEw5SUp5MVZTTVU0eVgxQ0c0K2xqakUxRUxRS0Jz?=
 =?utf-8?B?QnhmbStEdlNuVmxuc3dGQWxIYWdBc3BsZDRlL1pQdWNvS21QbnN4VE93ai9r?=
 =?utf-8?B?ZFNrVnVyejB0UyttU0FLcHJ1SlVQUUZIQ2hVbXp6WW5FZzE5RHk1ZDIvSmpT?=
 =?utf-8?B?S1hGbzZJcUVLV09pbDFFYitISitEbTluck0wQ3owcktlc3lrVlg2Ym1GN280?=
 =?utf-8?Q?COes=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WDcvZkpxME5ZYzF1d0hzeFdsNFpjdEcwN1hFT3BiWldhRk1IQkVGelloeDZB?=
 =?utf-8?B?M3lIYW9YbHZzTGhtaGZqa05VQzhBeC9wa0dhQ2p0VUNYaDVTUFdncFlPVkcz?=
 =?utf-8?B?N1ZkRjNCM2plWmliRllMb09UZVVadFIzQlVTQ0JPUlY1dzVaK082bENKeUdM?=
 =?utf-8?B?V2ppc1BoZHpTVVRTMDhLaC9TMnN3SzdwZE9jVklDNHdQcld3VDVwdGxSa003?=
 =?utf-8?B?eHVhbGVCVlVQWm9uUnRONkR3emthMWgyUmVaOGVDUnlpQVBMdWlHeWlHT1I4?=
 =?utf-8?B?djd0bi9MYTM3SVVMdXRlZGYrWVFGTlFMT21mdGNZUkl3TEI5dlhmVHNqYzJV?=
 =?utf-8?B?cGNjV1RYVTRVc1J1bHdOSzgwQzRwcTJkYysva0VhTVBTZ3pzU2hDZlFSOGVw?=
 =?utf-8?B?a1BtNDZKam5haHJ5Z2FaSkdQK3VuUkU0YWx3MW1XKzdMNE1zTGlzN2NBdXFX?=
 =?utf-8?B?cjlQWVpISGo4bElKSFZSa2N1ZkxsOW0zNlVreWg5RXVrNURscEF3MElsRUxT?=
 =?utf-8?B?U1JjSTZNeDh4QWZGVllpS3RnS1lWSE1sbDU4dEdrbnFYaDRIUitFSmVSVGxp?=
 =?utf-8?B?bmFibmpOQ2Nha1MzaDV6THExaTBDWVR1ZU5VRTcwOXFlcU1nemN3dDVZVkNw?=
 =?utf-8?B?RnNLS3F5Ty9nR1RoRVRhRzhGK0g4c3NteFUzVTJHWHAvMnZzTFpsWEgwMjBF?=
 =?utf-8?B?NVBTeS9aTHRMQlZRUDR0ZUdvR25OK0I0a2IyRExtLysyK21wckU1ejlzdWRs?=
 =?utf-8?B?a0tNZlMrY0tzUXYwMlJ6NDlUTm5VUHB0bDRNZWxFRzV3NjU1WVlEQVU3L01J?=
 =?utf-8?B?azJVZG9qWWVlNjFJN2J4Y3pUTzFPaUlSZmFWTkJORmx5QktVTnR2Vy9MWDJD?=
 =?utf-8?B?M3hOcTFNYS8razRhSER1dit3TDd6TXQ5RGFRU3BBTUR4SXhwajRLekFBZDlu?=
 =?utf-8?B?L0d4b2hiWmpZNHJYWm9uZXg4d2V0YkZxY3FlSmNCTWZNZDM5NWcwMk51bSs1?=
 =?utf-8?B?THlYR1JSVkMwaEd6ZXAvelk5LzJ4bGR5bWwzWVZiODVOM08ySjB1aFo2dlVV?=
 =?utf-8?B?L3VYTzRCRngxaU5Vd0pMYlBwaCtQTGpLVUZkcEUvUk03dWtYTCs4YWJBaXE2?=
 =?utf-8?B?T09IL2o4VC8xZkEwckJwY1grcWZ0Tko2T0ZHQ2h3TWtyT29yQzBmNnExRXZN?=
 =?utf-8?B?ZWFyYWY3Ry81MVhCdE11ZE9EVXRLdE5YVUttNTRHdys3eFdBSmpGekhMenF4?=
 =?utf-8?B?V2szWllaOSsyRmFwMlNrUjRHV2JpYy9WWkNHd2o4clQxbko3UTNlU0FMOVZM?=
 =?utf-8?B?ckJYWGovYjBKNVlRSHVlRC9HL041bm1CWGNQNDhoSXREczM2dVB2SEZycUNU?=
 =?utf-8?B?ajlpaWd0am9GdURvVkF6UWFydUZmTmlaRUQrVDYrOENvdGc4M1hZN0Z5RXI4?=
 =?utf-8?B?R29xbUVJMWoyaDhLdGs4UUFpOENIcVNKaVhManlsMlFwK08vSHd4a3dvVlBj?=
 =?utf-8?B?SHgwc20yeVdRencyVWlsSGFKQjJySzk5bnNzb0xhQkRocVdBdWxMalp3Z0cy?=
 =?utf-8?B?Q05UTmdjVnFvWTJ3d3BDYmVMU2toMWhiNVV3OW8yaGxrM1JPSTc1WGQwb1cz?=
 =?utf-8?B?bVZVSVpQLzVmYXZuWFdGbkQ0TVNvMmlGeC8rYVNMTGJIdGpSa0J0K3BRbFlV?=
 =?utf-8?B?cTRJekc5TWI0eVBKbFN1aVdxZ0pGNXVob0JENTI0M3lNcjMzVVBXNmNYKzYx?=
 =?utf-8?B?OEhQVlFrbE1vZlk5d29pei9OWllYSTUyM2k2V0dkK1o4aDdydC9ENGdrWkFK?=
 =?utf-8?B?NTVqQXVmNFhmalpJOU1PL0hNMkkvSkgrWkRKMEtiSVVNQmhRNXlSN29WK2s5?=
 =?utf-8?B?cDFTY0dyNmRTZzJ3RnRuZVZ3K3FweDFTSXVSbElKZEtYQWJQRmcxRDNYRjNR?=
 =?utf-8?B?RE9wR2FoeHZxTXowV0x0YVVqSDV0VnNvR2dPK0ZNTEVaNU9MSVhRUWpqa3B6?=
 =?utf-8?B?aktTWkc4dlZBTkJJQUtuRFd2dkFCelFneGJ0cGNPbFQ1d0tCOWF3azNPbFRN?=
 =?utf-8?B?VWpmQVF1VUtpSnZnQVloeUFia1h2alVJclRYUmdZSnJPU05NZko0M0pGZzNm?=
 =?utf-8?B?OFdKZnBrK21IRTd2M3FzK055c2tIVkdDcDJPVzZHNyt0aVREdDVwWC9JOXJr?=
 =?utf-8?B?Ymw3VzJrRUN1Q1ViQjNDTlBPdmp4QkNKUGlIQkw2bGpQMGhyRmt5TC91cHJQ?=
 =?utf-8?B?UlNvdks1MEhVbmdUSHVzektJVDJ1NWp2NkFCOHV0bDFpNGoxNS9RWUk1QkdO?=
 =?utf-8?B?VXVUTDRRUzFoUTJGUE9xU2J6cDlwTkg0REE4bUs0MUZIS1pzQ1RETkJJUCt0?=
 =?utf-8?Q?R4fFY1va7Qn4g0Ug=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d996cf54-55c2-43a9-8969-08de5f260c4f
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2026 11:03:35.5016 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hp7d5plaLzItcT20j5Gs588+6FUre/iHw6ULs2Kb7WX4tvRaqmlEuwGDEHHMsRQY6yzXtE45rDQdsf4wQg/cr28yF5pC7hyFWXDG7AW5ixs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5152
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769684627; x=1801220627;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Q9ck2msIV4HCQWTPJJcVAGuCA+H0NrSoTM8bG6wh6AY=;
 b=H19UJArrZTE/NHFvZU6GDqecLD36Qk8zdbkkQ9CRrnpG9NMMg0Lkp/hH
 YJH2d9nGn6h1/TNG+YuZ7AaOX/ZkE7jT+1z6gd0Ez6JnzyXsutVEmyl7L
 3lGYb7+SWKCbNA9RHwF+mGw1LOstwZ52I4Oh8v9hnaQBfSmYuOqs3nwPw
 nBZEH6uC6em8GxNKfUEHRN0YKwD8CgxqCX4WfAh4B1/HNmQyy/TN3/ycU
 RVj8s71cfoplULgPSYsHnwDF85PRyk10MG9i49dFyO5BQdTAmqa3b+Bwr
 aXnDm+y5ahKegJgVLNp8CDo4kmlmi+F0aGJQPAZPL7XhNtzI6NpyNc85M
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=H19UJArr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 0/5] ice: add support for
 devmem/io_uring Rx and Tx
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:jacob.e.keller@intel.com,m:aleksandr.loktionov@intel.com,m:nxne.cnse.osdt.itp.upstreaming@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[aleksander.lobakin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksander.lobakin@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,devmem.py:url]
X-Rspamd-Queue-Id: AD7A4AF59E
X-Rspamd-Action: no action

From: Alexander Lobakin <aleksander.lobakin@intel.com>
Date: Thu, 4 Dec 2025 16:51:28 +0100

> Now that ice uses libeth for managing Rx buffers and supports
> configurable header split, it's ready to get support for sending
> and receiving packets with unreadable (to the kernel) frags.
> 
> Extend libeth just a little bit to allow creating PPs with custom
> memory providers and make sure ice works correctly with the netdev
> ops locking. Then add the full set of queue_mgmt_ops and don't
> unmap unreadable frags on Tx completion.
> No perf regressions for the regular flows and no code duplication
> implied.
> 
> Credits to the fbnic developers, which's code helped me understand
> the memory providers and queue_mgmt_ops logics and served as
> a reference.
> 
> Alexander Lobakin (5):
>   libeth: pass Rx queue index to PP when creating a fill queue
>   libeth: handle creating pools with unreadable buffers
>   ice: migrate to netdev ops lock
>   ice: implement Rx queue management ops
>   ice: add support for transmitting unreadable frags
> 
>  drivers/net/ethernet/intel/ice/ice_lib.h    |  11 +-
>  drivers/net/ethernet/intel/ice/ice_txrx.h   |   2 +
>  drivers/net/ethernet/intel/idpf/idpf_txrx.h |   2 +
>  include/net/libeth/rx.h                     |   2 +
>  include/net/libeth/tx.h                     |   2 +-
>  drivers/net/ethernet/intel/iavf/iavf_txrx.c |   1 +
>  drivers/net/ethernet/intel/ice/ice_base.c   | 194 ++++++++++++++------
>  drivers/net/ethernet/intel/ice/ice_lib.c    |  56 +++++-
>  drivers/net/ethernet/intel/ice/ice_main.c   |  50 ++---
>  drivers/net/ethernet/intel/ice/ice_sf_eth.c |   2 +
>  drivers/net/ethernet/intel/ice/ice_txrx.c   |  43 +++--
>  drivers/net/ethernet/intel/ice/ice_xsk.c    |   4 +-
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c |  13 ++
>  drivers/net/ethernet/intel/libeth/rx.c      |  46 +++++
>  14 files changed, 325 insertions(+), 103 deletions(-)
> 
> ---
> From v1[0]:
> * rebase on top of the latest next-queue;
> * fix a typo 'rxq_ixd' -> 'rxq_idx' (Tony).
> 
> Testing hints:
> * regular Rx and Tx for regressions;
> * <kernel root>/tools/testing/selftests/drivers/net/hw/ contains
>   scripts for testing netmem Rx and Tx, namely devmem.py and
>   iou-zcrx.py (read the documentation first).
> 
> [0] https://lore.kernel.org/intel-wired-lan/20251125173603.3834486-1-aleksander.lobakin@intel.com

Current status from the validation:

* io_uring tests pass, except for tests which try to setup RSS Rx
  contexts -- after recent changes in the kernel, seems like at least
  some of our drivers return -EOPNOTSUPP when trying to configure RSS.

Tony, did you have any related reports or planned fixes?

* devmem -- only the Tx test fails, may be related to our complicated
  .ndo_start_xmit() logic in ice, I'll investigate this as soon as
  I get some details from the val.

Thanks,
Olek
