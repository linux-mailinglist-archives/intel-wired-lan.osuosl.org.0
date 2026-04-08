Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MKCEDx7F1mlDIAgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 23:14:06 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 911983C3FD7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 23:14:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9DAE341069;
	Wed,  8 Apr 2026 21:14:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ujCeKSqzh1Z8; Wed,  8 Apr 2026 21:14:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9E0EB4106C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775682842;
	bh=F0S0K2uqgMu08sUnktlCiRqGLZr9k1L4k3MWeS6d2qc=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=aAowZdg42XuZf+hWzo/3Ufbs+gedYU37hK4YAXt9+aX+vlyysiCN8hYnIRfN6H8Jc
	 4keRzzuQcwrg9v19cENosQtF/3cPISEW9728LcRfu3+eEg2eS1NumsI1aA6JvdUNCd
	 /bIYmQ26qNrbxxrQ0RrsfV0/Bmj2nROVMZk67t2Zh96TASUZ3XJVg4ODG/vs55ycx4
	 YlolucLln316BrNT5PIViUP2mDQlvg5E1+0k/HtSZGpIvhHUTbKWW9YEucPNXKLMba
	 L1cZiqsO3AGYqVAXy4BfiLeHag1RE9KZnkFhrFoByHzuqJPS94Jn89wG5Je1OaESTN
	 1IcgxksAVP8Vg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9E0EB4106C;
	Wed,  8 Apr 2026 21:14:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id B41392C7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 21:14:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A59BB401A2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 21:14:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HqzA1ueudURY for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Apr 2026 21:14:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E21AB400D7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E21AB400D7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E21AB400D7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 21:13:59 +0000 (UTC)
X-CSE-ConnectionGUID: UDQtLPsOSiG9IQBQAbxYXw==
X-CSE-MsgGUID: YLyqtNI4RyK0wq8yNOwC+Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="76583083"
X-IronPort-AV: E=Sophos;i="6.23,168,1770624000"; d="scan'208";a="76583083"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 14:14:00 -0700
X-CSE-ConnectionGUID: ibWD17u8Rbe437mWLu30sQ==
X-CSE-MsgGUID: 6FT/OV3YT22136iU3b60bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,168,1770624000"; d="scan'208";a="227586401"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 14:13:59 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 14:13:58 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 8 Apr 2026 14:13:58 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.65)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 14:13:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Z+nXz5X37DWobVoJn1oMMr519KsE2YuRBcDMdZ7gpJogUXp7EmnnQajdFfnOtLTz7v2mrQFxkjvDeA284ItwY52fb4iDOdCGgfCyCfJRAOs5+AbGrHGnrKGkyoze9DSTAaOSNbags31kD40QvrCYxHEcTTyH4V982sORE8asvFLGsNQZdiLuWvCmK1O4CJP2RQy6zVfNw8jLlA3l/1ZofcE8qC2+LGvInuUnQzYed2zlU5xqsDnkjtRMdMHOlneVIrce74jU2KbR9pjfJmV3Jvko53EAXIUDRHESbvTeuUv2jjykvDWWqWENMvaVmky7LXmkC0tl4h2iXiDN8Uu7VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F0S0K2uqgMu08sUnktlCiRqGLZr9k1L4k3MWeS6d2qc=;
 b=FxSmA1P/751JrqILru/sk68/b8bsVVxfCCU/bej2biNhFvaEdId6kXGAttTqWO+NhfFSIiKDfbDHxutIacRD0hz631Eb0spCgC171mQ2sRrAmxsyN7Ct3oxC7uSAV5zaoJiWdbvOj9JoxSSluUBasLLKAAaralMtIyZJMp3DQqeDgCirzABSlojMTsik3kqENULn8rtJaNeCcILytTTHAtYpG9qmbXnF+hOCjakCnOWhfXvcPFS9De4YV93v6ujvskp4ByW6lru40NF8m44F8SuMm9PiYLezxWMFlVpoej2z7sagnqr6vuuDqMhM0QvNHbLzYibsEjTaL9pwg1wqMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8230.namprd11.prod.outlook.com (2603:10b6:8:158::21)
 by PH7PR11MB7449.namprd11.prod.outlook.com (2603:10b6:510:27a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.20; Wed, 8 Apr
 2026 21:13:55 +0000
Received: from DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40]) by DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40%4]) with mapi id 15.20.9769.016; Wed, 8 Apr 2026
 21:13:55 +0000
Message-ID: <ada0ab49-842a-4a7e-9854-0a997987c0e5@intel.com>
Date: Wed, 8 Apr 2026 14:13:53 -0700
User-Agent: Mozilla Thunderbird
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, Leszek Pepiak <leszek.pepiak@intel.com>
References: <20260403054321.3791392-1-aleksandr.loktionov@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20260403054321.3791392-1-aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0294.namprd04.prod.outlook.com
 (2603:10b6:303:89::29) To DS0PR11MB8230.namprd11.prod.outlook.com
 (2603:10b6:8:158::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8230:EE_|PH7PR11MB7449:EE_
X-MS-Office365-Filtering-Correlation-Id: 5a7b53ce-3679-4d2d-f5ce-08de95b3bdef
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: ngJxK/5Qq82Mtd7l1AlxEyGh4tKjnC1ErlEcxZ7HnhIlrknn7EFQLEGoTeIlM5DeUkkUvaKU/E/wOM7sU0m+I0rHDL6pkYrLCum7SUKmn4M4TH0M/1IZP9Kqm49x2bwiNWHjub4sjdzeZuauQiOwan3mK0EiHorVYv0nAWwzQ+diZij4se4v4MIf2yufYHS81BgfzVQIWX9UN0PHywkR7lMBgtZZDhMkRLilXyRj3f3iJv87sN1g7gBPK7dg3rfl6pssxIYZVZJ9Q2DvzHmWO1QgEIuRhcfe7gXXuPI7/+L0DWVYRuZTUwbWqvzxldFHDvlylCp0AZBf819sJv2FkDVe7bNuwnLKzDXO9d+UPn2gUXRnW3Xw7+45vWKgQ1x41VMfY+Q6WclUtjHvmERBupDQfJWiX/L1g0eqAeUbGVceL5mV4jV27CTJ0m/Ml5hibu6ZjRafqDl1qo/CG3Sp7JECaMs4aoPv6W+q5htnweEzCs5Qlz0bECdwwkxfs5yaIZJJ9LVCJGeTNXmZn7b+ft/76PQOxboT+cHZVIQy8DVFJNrvWPujSm5upLmB415wOrv+INaGpRoG4mOHXj9G9JE6GGCz+xhdskDOsoqM4tEvM4Toem0TsrPZA0COypdardqRRLfuzhynK/OjCt4IXvG3LQtySZm1ELgIfUHJW+xoRd6aJmL3tgBmAXMzdFaEmbM0xnIwG4+Rs6aB5jl9fVOuKzRVoWfYYYVSkR8cb9E=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8230.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QjVVQm5iRGs1Z09BQzZjMWZRZWd4dCtSTEdYUkhuUVF2VS9HWXE1K0oxZnRo?=
 =?utf-8?B?NDNYWFBNTFdzSldQWS8rK0Ztdk9SRCtzMWJ6dXZvNFk5RzBmNEFrMnp0Mnk5?=
 =?utf-8?B?V1VQOU9ZWi9QeEdQUjk0MnZIVVBWM29mSVZpTSt5OGU3Qm01RThGTzIybUg1?=
 =?utf-8?B?aVBHTzd2ZitFUmNYMjZ6d3ptZHVvOHg3N0tCcUp3RmhHcHV6b2tLSkJMN25U?=
 =?utf-8?B?TGpFbXZsUVJNUUFNeXd0K29Hb3hDZURHTmRVNzdGNy9kV3BTb2hZbk9kUnRT?=
 =?utf-8?B?Tit3N0N1T0ZGMFpYbFZ5OFZXVGRISVcxTzd6aWhXOXFmUW5NdDBnTFZaOU90?=
 =?utf-8?B?Wk4yWkJWV2hjNzFJRStYM0Z2TDd1QUpxNE1UclRTWUFNdkY3Ymx0U3BBNTVF?=
 =?utf-8?B?SjcyNlpkSUJTZ3lxL0x0VDhaNzVqdEJ2L2V1ZVV4Ym9JbnlyY2NLK3VyZE9M?=
 =?utf-8?B?aDhlZTh4MnJoWVNCeC85ZXU3Ynd0QXNYUTJFU0ZNRzBJaG5jeDZOdUFzVEh5?=
 =?utf-8?B?R1RndTZBNTJBblJ6Ti9LOFdsUFBCMGgzSms1ZXJmMUgyMlllZUJpS0czZmlk?=
 =?utf-8?B?T2xNREdCeHpDTHRvc2wwd3U2RWxwVDZwQjVPU0ZTYUwzaUN4eEtnKzVHZlJC?=
 =?utf-8?B?Z29mRzNLMjJnN1ZDTmVWWTFFanB3QXduVzRiUGthejlvR2NON3FqNGp3UEpE?=
 =?utf-8?B?VHlTN3dMZlpFcEx4QmFCWDJBclAvTDNseWFoUVNRT0c0UGJrLzR3R0U2WXJX?=
 =?utf-8?B?ZmtGZllPK21uY1VDY1RqRWozMjhhV1poWVFSZXhZZ0tQcHV5TVQ5c0tBNDVz?=
 =?utf-8?B?alBVY2NpS1lkcHBvL2hkRFFab1MvbVNQUUJIRERKckM4YXRweHlqMUMrbDBt?=
 =?utf-8?B?SFZEUWlMeFB0KzQzMG9tazNIRTVLei9oV2w1WTJ4THBHcW14MVNONUV1K0NN?=
 =?utf-8?B?NFdBZUpLQ1Ryd2ExUm1YYkRSNGNIWFdqSVJwbXg3TWxZQ0lvM01vK1FueDQy?=
 =?utf-8?B?cncvVE5CT0U2OENlOVF6Sm5UbzBSRlVDZjNxL3YwanRySWk2UXE5eWZsalUz?=
 =?utf-8?B?cFpKeGFDSEd0UUQrOXlOWHluRHJOOERvV1NlSUxFWGZYeGh2ci9WY1ZYcWxt?=
 =?utf-8?B?ckszelZ1WldqeXNaaVhmVlEwbmpsdWlNU1RyRXlrRnNkT3k5YlNudFBHd0NZ?=
 =?utf-8?B?U0J5dnZTZVZhMk9VUWhCU1ZMcnkwcDN4VEMreDdwd1pOczl0ZUEweVdOZzF1?=
 =?utf-8?B?ZHF0Q0VLWGhlc1JJRHNvc2U5UCtvTUdQNnRBS0NsakF3T0ZFcHpGRW83Rjly?=
 =?utf-8?B?eUtSQnVES1I5U2I3QUxZaGw0R3BKdWE2NzBHcUdEV01vUmxsL0phKzBVNC9R?=
 =?utf-8?B?WUQ3S1FudFB5QldadmF3cExxYzA4Z3JFd3N2UFloVjdLVkF1U0NheFc5RVFl?=
 =?utf-8?B?UitCazc4MFMxRnVGUEhEcHB5SE8vS2lQTVBQQjZMaG5xRDQzcUUrM2JIRlly?=
 =?utf-8?B?T3ZMM2xscm1veVdlbjVhNHpSOTM3NlU3cXZPbUNJbW5BTmwwZ0tRREEzUnlD?=
 =?utf-8?B?OEF0SEJVSW0wRCtLUm9odDdFSXNuU3lQS3Frci9uWDY2Znd6NGVWeWJZZURB?=
 =?utf-8?B?MUN6SUNiNGR0Sy9HbU10ZlF6Tnd1TUI1ZndGREo2ZVZQd3lNVGRKUlJVTkE4?=
 =?utf-8?B?aFNKeXFRQzd6Uis1V01SQXVHQmo2QkFTbXdHWmh0dmNIK1BYZ0ZCNGxTQTB3?=
 =?utf-8?B?ZExFdDVzcTlZMmhIaHQwcFhvZGk3TkRGN1VMai9YRjRyb1Vzd0FMYkYrMVk0?=
 =?utf-8?B?cGNyMnordGY5RGhnM242QTIvK0VNT0hxNGV5RHFuQ2JUdFU4WVNwenRxcmxp?=
 =?utf-8?B?aExrMm5VNXhqVENKZUlCOE0zOFNPVUNudit6M0V5WTBJSHUvTkh3N09iWDhi?=
 =?utf-8?B?SGVFTnJwOVJzMjFvdGlRbEszYzZHK2cyak5tVmNGYWJjTlk5NFpJdWF4eGhG?=
 =?utf-8?B?TmEwU21rSVduZUJ2WWNMVys0bFBJQWRCd0NGMmQ0ZGtxbEt5NUpOaXdLNGxU?=
 =?utf-8?B?WG5mZHNLTjNWTFZzR3U1YnpCd1hGZFNVV0tjRy9hZFpHdkJMYzBrQWF6MllB?=
 =?utf-8?B?dVo5Z0VVUDc0VFh3QmQ2bUFjN3RKaER5Y0NneVY1NmozMllmZlk4NHQ5ejVz?=
 =?utf-8?B?cGZRUXpVcjQrSkFiSVFPUkxIUmMxT0VCMEg0QzJhcGZPbFlxZUpHTTBmZXVv?=
 =?utf-8?B?UXNwMVg3TDJlb3hhRUtsTnFmTnFsNFE5Slh5anZGc0Q1dTdMK04va0ZPd3Ey?=
 =?utf-8?B?anpIRmU4VHc2RXcrWWhEZkpFWWZFWkxpTTMrWkJwRy9jUXRmaVJScC9PKzBC?=
 =?utf-8?Q?QPbykC/l0Ykxnrhs=3D?=
X-Exchange-RoutingPolicyChecked: BkjObu81dxyUIYN7IO1ZAuLUjFtKjB78EJlaDPYr3Pr1bIa6TkjCyRQKUQS4kdHlql3zjYCkpdG759UTr4p04YMkjwD2TFCWlUwPh2l30HsXe4ptCslUENXTYHC2yc5o5HmetESXEH12mjb6DDTw463+mpNZ9Brqk8bD1qhxaqzU0NUMCl0gCh6pCmRY0Y3ITSpBDVziR2wqC1mcoi0rfnpAAsDLGpnC1hiNSDo7rLUyDb9dW3wTL5piiR9nosrE2uU/3wqP1BTpkX2+IhvG+4MxVSAJ8gMijWZTYStIG5x5iWeoUhjPAGxJ7UY1PX7Xr7cmqsyLulnOy+B+2Ietzw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a7b53ce-3679-4d2d-f5ce-08de95b3bdef
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8230.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2026 21:13:55.2827 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bXuVDaGqDkDJTSS13uEh9jWVxQDFXZ7/jphw7wS787zr8p9VQTfvysb4K3qGjHH+ibroGbH/VN3tw2nj8lnLvv0mXxeiDZyZFVNWwhDHvJE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7449
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775682840; x=1807218840;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HctfifufVRa6JSdDAcf0duwDjE37Bg3SMAOQYZ3soeA=;
 b=MkquQnVYMWbyfNpsmo2R2Us/PdzNxfdpWSsjhqpu8Gh6GEdIHUzamq5f
 UI+hZHgGLZqC8tcZaylZUhNMFrX83H+Av8vWhBwhMLjC6kJT9ynjwlsne
 DaIhDU18qcKa1VnZDuJmhN390g/xX1b36H9JCJay1i1i6u2QYQhJbi7cT
 PlyFN1pRZfai4Gy6J1JMAfjwO9HxaBCcfcPLB+xBJfg9vQ8w8zrtqXuhx
 pEKRFaGH67oxWiWaLUvbCzzwbfEByPosIh3tXr93dNAyz97JWVyB4FHUA
 A9mGhNs0MIx9ZWOS/ddSjT3Affv0HzRTMZfAoJqYn5/3sDhOZLqWrz86X
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MkquQnVY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] iavf: fix kernel-doc comment
 style in ethtool ops
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:netdev@vger.kernel.org,m:leszek.pepiak@intel.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim]
X-Rspamd-Queue-Id: 911983C3FD7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 4/2/2026 10:43 PM, Aleksandr Loktionov wrote:
> From: Leszek Pepiak <leszek.pepiak@intel.com>
> 
> iavf_get_channels() and iavf_set_channels() use the legacy `**/`
> comment terminator and embed the return description in the body text.
> Convert to proper kernel-doc style: single `*/` terminator and an
> explicit `Return:` section.

My inexact check of iavf shows this:

grep '\*\*/' drivers/net/ethernet/intel/iavf/* | wc -l
248

scripts/kernel-doc -none -Wreturn drivers/net/ethernet/intel/iavf/* 2>&1 
| wc -l
336

Since this is not in the context of other changes and this resolves <1% 
of the issues, this doesn't seem like much of a net gain. If we're 
looking to resolve kernel-doc warnings perhaps fixing 1 file at a time?

Bonus points if we can remove boilerplate ones :)

Thanks,
Tony

> Signed-off-by: Leszek Pepiak <leszek.pepiak@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> 
> ---
>   drivers/net/ethernet/intel/iavf/iavf_ethtool.c | 13 +++++++------
>   1 file changed, 7 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> index 8188dd4..425acbb 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> @@ -1846,13 +1846,13 @@ static int iavf_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd,
>   	return ret;
>   }
>   /**
> - * iavf_get_channels: get the number of channels supported by the device
> + * iavf_get_channels - get the number of channels supported by the device
>    * @netdev: network interface device structure
>    * @ch: channel information structure
>    *
>    * For the purposes of our device, we only use combined channels, i.e. a tx/rx
>    * queue pair. Report one extra channel to match our "other" MSI-X vector.
> - **/
> + */
>   static void iavf_get_channels(struct net_device *netdev,
>   			      struct ethtool_channels *ch)
>   {
> @@ -1873,14 +1873,15 @@ static void iavf_get_channels(struct net_device *netdev,
>   }
>   
>   /**
> - * iavf_set_channels: set the new channel count
> + * iavf_set_channels - set the new channel count
>    * @netdev: network interface device structure
>    * @ch: channel information structure
>    *
>    * Negotiate a new number of channels with the PF then do a reset.  During
> - * reset we'll realloc queues and fix the RSS table.  Returns 0 on success,
> - * negative on failure.
> - **/
> + * reset we'll realloc queues and fix the RSS table.
> + *
> + * Return: 0 on success, negative on failure.
> + */
>   static int iavf_set_channels(struct net_device *netdev,
>   			     struct ethtool_channels *ch)
>   {

