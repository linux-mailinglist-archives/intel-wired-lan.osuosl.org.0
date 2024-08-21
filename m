Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C05F2959FE9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Aug 2024 16:32:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 73BEA403CA;
	Wed, 21 Aug 2024 14:32:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I4rSH_xV94yG; Wed, 21 Aug 2024 14:31:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F31E74031E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724250719;
	bh=uVUQrSoCGqg+VGJ8g7ynNtMOdQKPw43tEWTavm91368=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=T9AAFwrQE+DJr7hhb6Xjr3MpQdV2UU8CcGAfGV67n8IcCJhZsC20hqERgLwLuoRTD
	 BAoXx+9lDou1v6YAHI1uegPkZebTGoUgMFJadIgWvlpfVjz2D8ZoFJMh3jFO2vcCdC
	 S7lSfNucPR3f4E9lx2M/erDff51k1LGsaRsO5OykUQQyyRyv1KY199L7IL2WEAeohP
	 DJLlQEsb0UHswKsoIxfUReUALTdsU/9RrSO6mBjHBnGGz+084duyGU5ctGwxgZMJDU
	 J6LZRfCX8XRG/XQGDbQjB1OaPnpgkLdkZtITbW5J+N/Z17sSCl/3JjLpeWvHSzQjTy
	 +njqa80bgIzpQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F31E74031E;
	Wed, 21 Aug 2024 14:31:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DC4031BF3D0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 14:31:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C7D634013A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 14:31:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E912faO6xkN2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Aug 2024 14:31:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8540140136
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8540140136
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8540140136
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 14:31:56 +0000 (UTC)
X-CSE-ConnectionGUID: CWISdt0vQIO/wK1XykX/LA==
X-CSE-MsgGUID: 349cxsO/SvOMkWTXPIUFwg==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="45138928"
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="45138928"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 07:31:56 -0700
X-CSE-ConnectionGUID: 9+HFJSEaQWSdFRrhnoD6qg==
X-CSE-MsgGUID: 4XN29ceCRfCF9Nv7tKRtPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="61642183"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Aug 2024 07:31:56 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 21 Aug 2024 07:31:55 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 21 Aug 2024 07:31:55 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 21 Aug 2024 07:31:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OvVwyjDGBg8VoCFZd4aFFjFwHd/Fu5hsacxqEb5pIjn+dR6e1B2SdqOXz7eX5IHrGXceyd8lKwsSOgqt2sp4ntO/XQqHYKs81cqlPrdc7ulGgQx9KSDVNQ7Zrz5YI+mlgN+BIPbZr47m+TGbD5IcSy3jINKfXWsz/ipB6MKT6jAz3pAKFGG1z0/HKtHdlKEbLI5l39WI30NNkekzwlLU+n3Ub/JbcvcMa44nuietFBj0AIk6i3421p5WuLIX2KQKnfnepftf0ei4hQ87DsOa4T2RiwGJnatWVB9WJsSpUbRZXlZVBIqylV7nyE/f453Bs/ARZCcYWY8Af8J5kt3dMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uVUQrSoCGqg+VGJ8g7ynNtMOdQKPw43tEWTavm91368=;
 b=oEURWRwbIr0cfZMUcPTz3plO7k3Yu6C7EYnU+NeM1B3kYiGi1udzKzzRiG418XAM0iiXz2NFpxpAL4JihPp3Xx7RIEUEgPzBakw17yN+hPt1ttfpyuZ9/WiZJnRlTq0UYzdtJWiDxXgrsiuSfQIvmp5pjt1leQcacBlNYbUXSKTEo3xUizeLZZM6ChDLk/QpGLMua3OXM8TzwhXa7Ciq2Cy8f6OjYzlH/CvKfd5P+sBABwMDIK54I04BGHnY8mMblemobrOIDbJG8iXyuwWifvVx+0fG8T/1Gq9RjSJrop3+LdfmH62G4Rb7vzF2wbQXoCAZlmHXCkiyKroAz1w69Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by PH0PR11MB7541.namprd11.prod.outlook.com (2603:10b6:510:26d::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.19; Wed, 21 Aug
 2024 14:31:51 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%5]) with mapi id 15.20.7875.019; Wed, 21 Aug 2024
 14:31:50 +0000
Message-ID: <9e708174-d6c0-4b8b-9a0d-5807463d6c43@intel.com>
Date: Wed, 21 Aug 2024 16:31:45 +0200
User-Agent: Mozilla Thunderbird
To: Wojciech Drewek <wojciech.drewek@intel.com>
References: <20240821121539.374343-1-wojciech.drewek@intel.com>
 <20240821121539.374343-8-wojciech.drewek@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20240821121539.374343-8-wojciech.drewek@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MI0P293CA0005.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:44::19) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|PH0PR11MB7541:EE_
X-MS-Office365-Filtering-Correlation-Id: ca210bc5-6bdd-4ab1-6f11-08dcc1edfeae
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VDJpMDhvU0R1U2VQRXRGYmt5WjZSMGdxTGo4STRuVDBRSFBYNmRCL2NYTkpw?=
 =?utf-8?B?bHhScDlRY2crNlZrN2lEWGNPMW5BeStIdEQwK0R2d1JVYmhQWmsvNmlCRTVt?=
 =?utf-8?B?RHJkVExrY1lqNUx1bGZ6cXo0dVgwRVRzUEFOTFQrR2xWS045Wm5lRVI3cWsy?=
 =?utf-8?B?a2IzdENjL3psZXVKOHFYSlhYKzNzU1dDcGdJNFRGQjNGdmNoOVI2WHdzcHRR?=
 =?utf-8?B?ZHU4NDB4TmVKYndiaXd2RUZCL3dQbkhwaFM0NVJ0V3NIQndjQS90RWE4RnVS?=
 =?utf-8?B?c05YMXBrRDdrMVY4QjMrZll0RUVoeGlJaUlVK2RWb3VPSmM3OWovZVZiS01w?=
 =?utf-8?B?NSt1UDBrNjNVdkJDZUoyNGovc1A1WUVsZ0pYakZUZk1wUGJuSlJEMjg0ekwy?=
 =?utf-8?B?RWtidXpXdytUNkdIRXdnWUlZdVpHWFgzamRDVlgzanRnYmN6UFozcVZYTDFq?=
 =?utf-8?B?bFhON05PSGJ5dG9wUThSS29xZXZlVFhBU0pTRnRkdHBHb1V6QXd2dFV6NXJT?=
 =?utf-8?B?RWk5RzRxRGMya29RVzNmczVZcjQ1ZVIwOUg5bVZ1UWRJOWh1Nzc2U0RPT2hj?=
 =?utf-8?B?M3ZwRzlRLzE0ZnVyTld4dVo3Y1FRZGs5QkJoTUkzZEF3dy8xczl4dnd6Lys2?=
 =?utf-8?B?dnJlQytEbHZoZlF0SmxpemZKbmY5dEJiVU14K2t2TnpHaFAvWWVWR0NxejhL?=
 =?utf-8?B?Y2kyT05XZGtJMFduU0RSRUtIWWJkL21CUUcvbnVGSUVhU1hCc0lRM083ZkQ1?=
 =?utf-8?B?VE1HOWg3OFFMbEZSckVmdHZlZjliSklKYkRoKzBkcXRTZi9JTU44T3FBbWRT?=
 =?utf-8?B?SGZobzlRZU1CZmYvcmtGMC9ocWkwUmM2cGhZV2R5VGhUVFJHdFZ2cks4YXZ1?=
 =?utf-8?B?RHZlUjcrNXBkOTlVNFBZdSs5VHVXQUthTUtUamFscmlqc2tKcmMwNmUzOWI3?=
 =?utf-8?B?Mkd5Z1dSWW9MbDNLQ1JJdTRaamJtdldOT1U1VTBVTlRZZTUvU0lnR0JxMlJ2?=
 =?utf-8?B?MW5ST242WFJqZEtBVFBTdjZ1bmFIcVR5TUZwNmU4MHNwVWZXaWwyVFE5a3hv?=
 =?utf-8?B?YUNNU0tlZjVTNFJmaGcyam05eGlHQkVaQ2EvWUF3cUVSZ1k1R0hkcXM2ZGYw?=
 =?utf-8?B?V082NkV0dEluSU95eS94dTlnR3grOXpocW50WWVoWG9PWVdLUXhEelExZCsz?=
 =?utf-8?B?OHpnRXdDektDdkpHYUxUb1d6S1NIbHllN3dpQzhYMHBrWnlEdHEyTHRlMnBO?=
 =?utf-8?B?eUJ4S24yeGhGcU01SkhwTXRWZmc4dG4xMWJiNkVSalpNYTJyVisvMktkM1Jh?=
 =?utf-8?B?YlVOZUVsUWNSVlFJMnpRQXNnS1AvSjVEYUZ4Z1NOVTBIY2xzQ0tEVzZKNmVD?=
 =?utf-8?B?aUp0bmdpSVVVSHk2L0JiY0V5amROOXNmUk55SHhyYjJDRkhpL3Jld3llYm4x?=
 =?utf-8?B?QjEzb1I0RytQeVZiWjIwb3B4YmIrMEhqWkU5WHlnMEZ4eXNpcUtIcG1Ybkkz?=
 =?utf-8?B?OVNEWDVTOC85U0c1ZHljRjZjcnhRQk82aURhTEM3Wnc4VVpDTHl5L1FCYzcz?=
 =?utf-8?B?b29LUzBodlYrWjVTMFBmYTZPdHVDcURpb2pTSkJKZ0M1T040TTAyOE1FRWhy?=
 =?utf-8?B?Y1lHU0hsYWFmL0UvVzVQZi9RSmlINmdycGJOMFdoeFNFekpNTkhQZy9Wcm9t?=
 =?utf-8?B?RUFGcHZKNkJ2cHBQYUJ0ZUNjSXJPOWU0STZuSU56dzVhbkE2REdLTFVRTlEv?=
 =?utf-8?B?WTBhNE5yRy94R2M2aDdJeGFCK1EwSmMrdmFUL2d2K0dIcHZIUTBKOWxGb1lx?=
 =?utf-8?B?YmdwbTJmckQ1Y0U5SzdZZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cFV6dFFlelNqSFZxNi9BRkFHU09KQ1JzNjlWNXllZzdSVFdLRWM4d3lLYVBI?=
 =?utf-8?B?WHlnbzZSQXhjcTZLWHZMeWNjTVAyWFFVRll4Q2ZuSVEyOVpOVmx6SDZVcE9a?=
 =?utf-8?B?a0VYTTg5YnFqd2dsZFIydjRXVnJlNEw1WkdjMCtEZk8yYzBXTHZYWlJyUGF6?=
 =?utf-8?B?Yk5BQU1iejVRb1J4MHd1N3crS2tINC9zV0dlVzVBdXdqaWI3b1pmOGZjTDZO?=
 =?utf-8?B?cHJNSitQL3pxMFVmTGprRktzRmMzdjBLQmh2Tm5iVTdpVzRmK3F3ZXc2ZERr?=
 =?utf-8?B?eFpDNlQ0enlHSURlRlBEZ2wvb2xoQmxTdjdqdDBkK3lETDdtUi9OL3lGYTFx?=
 =?utf-8?B?bUIyNnBDZ3M5cDJ3aVlNUkhBU09IMUtYWm51ZnZRTFBuZ2kxOW9UNDM3SER4?=
 =?utf-8?B?L1Y2VUxlcGtMRVpjeVNHN2c0U2dDcVgzR3h3bnRhMnFweU5IbXlHRG16anNn?=
 =?utf-8?B?STNGaktycTcwSGJEcEQ5WngxcWlGWXJXUzVWSVRxZnNuenZ6QTJKUUt1N3h1?=
 =?utf-8?B?cmJhTTVOa2wzVGdhNlE0aytuQmw5NFhyeWJudWwwREVqM1lub2VxWnlwK1cr?=
 =?utf-8?B?cUFucGJSWEJKcEFCTTB5TFRmV0srbUhoS2d5dkdMYWFmSk1ibkxUWVlxM1l4?=
 =?utf-8?B?MXl2YmR1YnVLUHlSUkVkdGFhM252RnROT2o1YjliUVFvekxTdG4vZkFGMnFC?=
 =?utf-8?B?eU5UYkVVbEt4RXFUc1ZIblNQaDJhWXJQZ1lGYU1lQWt4bUJrL3pPM21jd3RK?=
 =?utf-8?B?MFI1TVJvSVVxUVBZS1BxY2pON280N01GS1ZLOGF4QVlrazFpQmRRcTlVNmFB?=
 =?utf-8?B?MUU4Z3hIN3JOZzgrMlpJSWkyWkhMT3VZVXZYYk4xbzY0QTgxczhMRFJ0d1Jz?=
 =?utf-8?B?RURURWFKQjRuREhCR1hiZUtocWp2c2pnQWtjcElIRERYckpxdkkxTmYyUC9V?=
 =?utf-8?B?aW9oU08wTUljKzd4Zjd2cFo1NlRKb1BqdkhYWHh2K3dCdEc5c25RQ0JvWG9y?=
 =?utf-8?B?MVV5d2FEbHBCUzgxUlJteS9pVUpvL3NoZit3N3g4RE5xSkJYQ0NIZ1ltZHRS?=
 =?utf-8?B?TjZseFQzdER2YkYxZGJqd2hOVVMzOGlIN0dPNDFLUFdjekIyZEk2azF3QUpF?=
 =?utf-8?B?VnNCM0tWTTZ3Y3k3ZUJmZUZ3Y2RBNUMwckxYa2FPMmhKSTl6TGN3WExrRmt2?=
 =?utf-8?B?L25WaWNsNGx3dzFtWjRUUTlOQzk0b2o5WHFlTmRVR2pSWFRXWmlMVVZsRWlJ?=
 =?utf-8?B?a1d4MDZ1MklHTFFGUy9wTTFmeDd2OHBxemFHV1p2K1JFRXJ4Qmp5SElOU2hY?=
 =?utf-8?B?UStNMmYyMldhWlE3RTVtYWxiQlIzcSswMzdQb0xXUlFuMDJmdmJyUjJtM1gy?=
 =?utf-8?B?M0lqaWIrcStwOStQTG1MMUVDc3k3QTRoWklpZUlGSmI0UHF2RFc3MmV1NFpF?=
 =?utf-8?B?Z3ZQREhzeFArYjNKZW9zM3N0VE42LzY3QlJ2M2c1YjA2VDJ2T0hPRnJheUY4?=
 =?utf-8?B?Z2ZrcWQ0U0JVTDNHM2prbG5wQzVXNGR5R0ZZUXBOMHVZRmtTaDdRVFMxQzRu?=
 =?utf-8?B?WjZnZ1VEZTRzYTRGK3dTWWJaNnBBWGFucW5lTm9qVmtWbnVvSzh0OUE2OVNi?=
 =?utf-8?B?SzdIK01PL0ZDK0lEdVhubzVENlFMdy9aVjRMQzVJVTVhRFdabDlIVU1DS1Uy?=
 =?utf-8?B?N1NLTlpDd2VYQW5IVnZQWEZsc2kzSWJkNUxvbVprTEVkVGd3RW1vbjlPT1JI?=
 =?utf-8?B?NCtydllsU3JnOE1KK3hMcHZMa25XM1RNcmkxR0VUb2RYajBKSWM1RExIRzlN?=
 =?utf-8?B?d2ppZVpqZWZja2MzTXJLU3QvNlFzVWNScUNuK1ZxY3RWSGZHbXlXY2Fya01o?=
 =?utf-8?B?b25teCt2L3ZJS1A4bkgzeTEyM0k4QncvZFBrZzdBbTNqYnpsT3ZSTy9XMmdB?=
 =?utf-8?B?VW1JMDZzWEJybExZTWhqUmpaVGFIdE96b0NLN05oTUhndHUydDhjUFV5UHE3?=
 =?utf-8?B?WnhzWGFZRUdlK3dJTmZGYVJvNHFTdDUybENCdjRQTHU5NkVIOTF2OG1SMEY0?=
 =?utf-8?B?VHhQTUpRZlp0OXBMRlNFVEFhQjJmb2lKSkNIaEV1aHc5QU9hTzN4Q1ppMm5F?=
 =?utf-8?B?WHl1QUdjZ1pIV1BNMVdkUUdrbUcvZWl4b3p1eTZXbVFOWFh0MzEwZzQ2T2tN?=
 =?utf-8?Q?Y3jekCRv+v7Iy1AvLBWBw1I=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ca210bc5-6bdd-4ab1-6f11-08dcc1edfeae
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2024 14:31:50.5256 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +A2Oq0oEcdV/TvZPzEdw/mKxZ8Kp1LVa6CUJfhvhFHSO076/XrVeKWwLEuChCvWDDbmpaz8ROf1PRZZhTOAmQtYv23Pb3cZZ4ybCJLFG63s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7541
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724250717; x=1755786717;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xCuxdx42d0LFD3GopKGOlQDLWLx0v3Y3U7PjvLKDYvs=;
 b=IguFpHsxTDfXfkuQfm6LU++MMxJ8doZYXKqn6Q4v3/3bOOKJ9SPo+yL5
 APJbEGaH5ILMyGi3KT9tbQiEnHOQRScceHpWSW4IWv5qLJoxMq3zV9Vbl
 zHs/pjC1j0VIdX5BRgzf49J3I7+UhjiHLJiK3rGG0UF2CDoTU5xA0jqm5
 Ull2sLzdN+5ch7MrBIWEWbzfTTiKGChCKQvldzfrbwRUYpU2OgKTT/wg4
 jAXsQsOwjLcadFgCIdmwW8bVqLywTMRRqfSZOb6Faqtszm6OsmNffqvFH
 Fj8jEogE+O2r+zfNIjjmNuoDBPHInDd+xHTbMwGcV0HvSzZUtYmjG7Y5v
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IguFpHsx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v10 07/14] iavf: add support
 for indirect access to PHC time
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
Cc: netdev@vger.kernel.org, alexandr.lobakin@intel.com, horms@kernel.org,
 kuba@kernel.org, anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Wojciech Drewek <wojciech.drewek@intel.com>
Date: Wed, 21 Aug 2024 14:15:32 +0200

> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> Implement support for reading the PHC time indirectly via the
> VIRTCHNL_OP_1588_PTP_GET_TIME operation.

[...]

> +/**
> + * iavf_queue_ptp_cmd - Queue PTP command for sending over virtchnl
> + * @adapter: private adapter structure
> + * @cmd: the command structure to send
> + *
> + * Queue the given command structure into the PTP virtchnl command queue tos
> + * end to the PF.
> + */
> +static void iavf_queue_ptp_cmd(struct iavf_adapter *adapter,
> +			       struct iavf_ptp_aq_cmd *cmd)
> +{
> +	mutex_lock(&adapter->ptp.aq_cmd_lock);
> +	list_add_tail(&cmd->list, &adapter->ptp.aq_cmds);
> +	mutex_unlock(&adapter->ptp.aq_cmd_lock);
> +
> +	adapter->aq_required |= IAVF_FLAG_AQ_SEND_PTP_CMD;
> +	mod_delayed_work(adapter->wq, &adapter->watchdog_task, 0);

Are you sure you need delayed_work here? delayed_work is used only when
you need to run it after a delay. If the delay is always 0, then you
only need work_struct and queue_work().

> +}
> +
> +/**
> + * iavf_send_phc_read - Send request to read PHC time

[...]

> +static int iavf_ptp_gettimex64(struct ptp_clock_info *info,
> +			       struct timespec64 *ts,
> +			       struct ptp_system_timestamp *sts)
> +{
> +	struct iavf_adapter *adapter = iavf_clock_to_adapter(info);
> +
> +	if (!adapter->ptp.initialized)
> +		return -ENODEV;

Why is it -ENODEV here, but -EOPNOTSUPP several functions above, are you
sure these codes are the ones expected by the upper layers?

> +
> +	return iavf_read_phc_indirect(adapter, ts, sts);
> +}

[...]

> diff --git a/drivers/net/ethernet/intel/iavf/iavf_ptp.h b/drivers/net/ethernet/intel/iavf/iavf_ptp.h
> index c2ed24cef926..0bb4bddc1495 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_ptp.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf_ptp.h
> @@ -6,9 +6,13 @@
>  
>  #include "iavf_types.h"
>  
> +#define iavf_clock_to_adapter(info)				\
> +	container_of_const(info, struct iavf_adapter, ptp.info)

It's only used in one file, are you sure you need it here in the header?
Or it will be used in later patches?

[...]

> +void iavf_virtchnl_send_ptp_cmd(struct iavf_adapter *adapter)
> +{
> +	struct device *dev = &adapter->pdev->dev;
> +	struct iavf_ptp_aq_cmd *cmd;
> +	int err;
> +
> +	if (!adapter->ptp.initialized) {

BTW does it make sense to introduce ptp.initialized since you can always
check ptp.clock for being %NULL and it will be the same?

> +		/* This shouldn't be possible to hit, since no messages should
> +		 * be queued if PTP is not initialized.
> +		 */
> +		pci_err(adapter->pdev, "PTP is not initialized\n");
> +		adapter->aq_required &= ~IAVF_FLAG_AQ_SEND_PTP_CMD;
> +		return;
> +	}
> +
> +	mutex_lock(&adapter->ptp.aq_cmd_lock);
> +	cmd = list_first_entry_or_null(&adapter->ptp.aq_cmds,
> +				       struct iavf_ptp_aq_cmd, list);
> +	if (!cmd) {
> +		/* no further PTP messages to send */
> +		adapter->aq_required &= ~IAVF_FLAG_AQ_SEND_PTP_CMD;
> +		goto out_unlock;
> +	}
> +
> +	if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
> +		/* bail because we already have a command pending */
> +		dev_err(dev, "Cannot send PTP command %d, command %d pending\n",

pci_err()

> +			cmd->v_opcode, adapter->current_op);
> +		goto out_unlock;
> +	}
> +
> +	err = iavf_send_pf_msg(adapter, cmd->v_opcode, cmd->msg, cmd->msglen);
> +	if (!err) {
> +		/* Command was sent without errors, so we can remove it from
> +		 * the list and discard it.
> +		 */
> +		list_del(&cmd->list);
> +		kfree(cmd);
> +	} else {
> +		/* We failed to send the command, try again next cycle */
> +		dev_warn(dev, "Failed to send PTP command %d\n", cmd->v_opcode);

pci_err() I'd say.

> +	}
> +
> +	if (list_empty(&adapter->ptp.aq_cmds))
> +		/* no further PTP messages to send */
> +		adapter->aq_required &= ~IAVF_FLAG_AQ_SEND_PTP_CMD;
> +
> +out_unlock:
> +	mutex_unlock(&adapter->ptp.aq_cmd_lock);
> +}
> +
>  /**
>   * iavf_print_link_message - print link up or down
>   * @adapter: adapter structure
> @@ -2093,6 +2151,39 @@ static void iavf_activate_fdir_filters(struct iavf_adapter *adapter)
>  		adapter->aq_required |= IAVF_FLAG_AQ_ADD_FDIR_FILTER;
>  }
>  
> +/**
> + * iavf_virtchnl_ptp_get_time - Respond to VIRTCHNL_OP_1588_PTP_GET_TIME
> + * @adapter: private adapter structure
> + * @data: the message from the PF
> + * @len: length of the message from the PF
> + *
> + * Handle the VIRTCHNL_OP_1588_PTP_GET_TIME message from the PF. This message
> + * is sent by the PF in response to the same op as a request from the VF.
> + * Extract the 64bit nanoseconds time from the message and store it in
> + * cached_phc_time. Then, notify any thread that is waiting for the update via
> + * the wait queue.
> + */
> +static void iavf_virtchnl_ptp_get_time(struct iavf_adapter *adapter,
> +				       void *data, u16 len)
> +{
> +	struct virtchnl_phc_time *msg;
> +
> +	if (len == sizeof(*msg)) {
> +		msg = (struct virtchnl_phc_time *)data;

Redundant cast.

> +	} else {
> +		dev_err_once(&adapter->pdev->dev,
> +			     "Invalid VIRTCHNL_OP_1588_PTP_GET_TIME from PF. Got size %u, expected %zu\n",
> +			     len, sizeof(*msg));
> +		return;
> +	}

	struct virtchnl_phc_time *msg = data;

	if (len != sizeof(*msg))
		// error path

	adapter->ptp.cached ...

IOW there's no point in this complex if-else.

> +
> +	adapter->ptp.cached_phc_time = msg->time;
> +	adapter->ptp.cached_phc_updated = jiffies;
> +	adapter->ptp.phc_time_ready = true;
> +
> +	wake_up(&adapter->ptp.phc_time_waitqueue);
> +}

Thanks,
Olek
