Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 59915A9C4D7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Apr 2025 12:12:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8366E80C37;
	Fri, 25 Apr 2025 10:11:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SuG7BOh1glyt; Fri, 25 Apr 2025 10:11:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A12A380CC6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745575916;
	bh=HFevWXEyztyEPORLzK48i0+RJx4H2GjVAMPdSMZ91RM=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cC2M1NXqBFm2RY5pjihOSFRaHrsb7WAshyW2EGqEXErQbKatmrER4GDNfnTs13Cjt
	 i7d6Xl77jloh0H+O+NNS2O9J6lNN+oWg5eQ9Fb+0eqlUWf78zYnUwkJxzleT/JrunR
	 RZqNJ8r1JIbrQUD4nSeRMgXTUwcflG4P9IRa2oR23/S8rru8MHvz3QvU46YIkn9xhk
	 QktzODP6nmCAc8/KVVaX+vaP3Ze0Jfv6a/5OkE0Oyr4ntq5PKaoAJJVK1LMZNud18m
	 /vG4OJ35IpTYIPfaE2Yw9ffv93Dk63MIwlLn5anILJGYS4HhJlBIX8DA9mBkax3k8t
	 w2+zgL/TWSgIw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A12A380CC6;
	Fri, 25 Apr 2025 10:11:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4AD2C127
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Apr 2025 10:11:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 315CE405F8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Apr 2025 10:11:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2ozOhDnhAvPP for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Apr 2025 10:11:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 59CA44055C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 59CA44055C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 59CA44055C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Apr 2025 10:11:53 +0000 (UTC)
X-CSE-ConnectionGUID: OEqAsQoLRJGirTNXo0IfRA==
X-CSE-MsgGUID: rFEqc9PBTpSHWTpM7XAvmw==
X-IronPort-AV: E=McAfee;i="6700,10204,11413"; a="57433075"
X-IronPort-AV: E=Sophos;i="6.15,238,1739865600"; d="scan'208";a="57433075"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2025 03:11:53 -0700
X-CSE-ConnectionGUID: ss4ckLMqQRyPWijGYck8+A==
X-CSE-MsgGUID: 9YqlLvU/RR+SRxpGRuXxBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,238,1739865600"; d="scan'208";a="133374812"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2025 03:11:52 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 25 Apr 2025 03:11:50 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 25 Apr 2025 03:11:50 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 25 Apr 2025 03:11:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bN53yW/+Wr1q+PPoSv0a4TgfKmpsiCTrauXy9Ws4OXTid8TZdTegmdirDszOEc4A+7Ujam+5bJz9RiJmUK1ImgQLDNVf/XQvu/F2ZWRu69F8CnKGmhRwr/dQLP2XWaZMXpjQF0GprmIwtTV4LUHnZys50ABYSbbGNnH/3Bx1QGF5RB6vpXPm41RUCUhuwpezYbEvvStKjks5A6pKlra6hAKIp5PsZJfIwekRZ8j0vbITXdAl5oZa/B1MeqlFlKGbesuUqpdXw9jN4lvuAY1OmbV+oIsTatF43Jh0LwNrC4xwmRWe6MHEwX8NlDLdV0fJPQwaFMLCkFFnW0gcl0Ckgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HFevWXEyztyEPORLzK48i0+RJx4H2GjVAMPdSMZ91RM=;
 b=KMpoi6NA+bMNE7dUomXf80VhdFETeHfMrPVOrG43/xIioty9Ohq6Owo06Skg6fVGah2X23dTtDuI3Q0yWx3UvekhyO7oj0AsbxLaoJjzeGtmfzbhFdNvMCuG1MmZQzHneR+FQMoKH0M8NFY0DQup4tBDK5vVnAfkXoAaeVa/7FQ4S4ksrhM+NZvzF3KJXi61nn9IpGSeBPwrK08zvPUEzVQSRI1psgburE6aDc5/n0GYee3E7px3r0QxGoA9WRqgJHo9m6NYKxC0nH3i1W3grv9d8fwl0/bUmOM0/qMYjFjrmUiV+i5bN05Ck1shRdew+mdj7CpF2jxv1AGYFcWB0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7540.namprd11.prod.outlook.com (2603:10b6:806:340::7)
 by DM4PR11MB7352.namprd11.prod.outlook.com (2603:10b6:8:103::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.27; Fri, 25 Apr
 2025 10:11:48 +0000
Received: from SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29]) by SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29%4]) with mapi id 15.20.8678.025; Fri, 25 Apr 2025
 10:11:48 +0000
Date: Fri, 25 Apr 2025 12:11:33 +0200
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: <intel-wired-lan@lists.osuosl.org>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, Jiri Pirko
 <jiri@resnulli.us>, Tatyana Nikolova <tatyana.e.nikolova@intel.com>, "Andrew
 Lunn" <andrew+netdev@lunn.ch>, Alexander Lobakin
 <aleksander.lobakin@intel.com>, Michael Ellerman <mpe@ellerman.id.au>,
 "Maciej Fijalkowski" <maciej.fijalkowski@intel.com>, Lee Trager
 <lee@trager.us>, Madhavan Srinivasan <maddy@linux.ibm.com>, Sridhar Samudrala
 <sridhar.samudrala@intel.com>, Jacob Keller <jacob.e.keller@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, Mateusz Polchlopek
 <mateusz.polchlopek@intel.com>, Ahmed Zaki <ahmed.zaki@intel.com>,
 <netdev@vger.kernel.org>, <linux-doc@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "Karlsson, Magnus"
 <magnus.karlsson@intel.com>, Emil Tantilov <emil.s.tantilov@intel.com>,
 "Madhu Chittim" <madhu.chittim@intel.com>, Josh Hay <joshua.a.hay@intel.com>, 
 "Milena Olech" <milena.olech@intel.com>, <pavan.kumar.linga@intel.com>,
 "Singhai, Anjali" <anjali.singhai@intel.com>, Michal Kubiak
 <michal.kubiak@intel.com>
Message-ID: <aAtfVAp38hKWtx-n@soc-5CG4396X81.clients.intel.com>
References: <20250424113241.10061-1-larysa.zaremba@intel.com>
 <20250424113241.10061-9-larysa.zaremba@intel.com>
 <744538a0-a1f5-48a5-b454-f1a2530268b7@molgen.mpg.de>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <744538a0-a1f5-48a5-b454-f1a2530268b7@molgen.mpg.de>
X-ClientProxiedBy: WA0P291CA0018.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1::15) To SN7PR11MB7540.namprd11.prod.outlook.com
 (2603:10b6:806:340::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7540:EE_|DM4PR11MB7352:EE_
X-MS-Office365-Filtering-Correlation-Id: 68447a3b-34ff-4648-0bc6-08dd83e196b7
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|10070799003; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WGZZckhkN0hDdzN2S1RhVS9iR0FNQm9teE5ETEs3U1NGMFIwMGxyR0taOE94?=
 =?utf-8?B?V0tYeUpYQUd4QlhwS2RnUVNLZi9jT0JZeHBaU2IwaWtFV3B3M3I5ZHZzbjEr?=
 =?utf-8?B?NWliWGZ3ZWNleTZhUjl2NVRpS0M3emk0T3c5S1l3b0ZpL2ZtSnR0UWtLdTgx?=
 =?utf-8?B?K3BPYklkaWRIMHlUcE5hWVRrYVY4Z0Y4UjBldXZ0Vm9QQWZxVm9VT1g1Um9m?=
 =?utf-8?B?U3VkbzFlZ1VrSG9GZXFKUWhuczBkdXphNHhOTDZyNVdhc2pwcmVoNjA2RDRU?=
 =?utf-8?B?cUVOL2FtNmJyaXYza3hBbG8xY0s4cFZnS3VTdXdVYnlmNk1sVGdiR3F1VHU0?=
 =?utf-8?B?Q3h3RFZnZGRscDI1RlQ4RjFzU3BQNlFwby9mdXJJNmdRMXh5VFl0Um9YK1NY?=
 =?utf-8?B?WTAxWTIrZWtBN3lXOGpuZ1hSQ1lTTWYrb2dXZWlRRDdGT1p1WGUxcjdxeDVn?=
 =?utf-8?B?a25WNzB4SlFTV1lIOHN1NDUwL0huTi96Y0pncCtRR2JsU29UUEkvWjdiVFov?=
 =?utf-8?B?Z284MzJkTTVZTEVvZUFJbWdibDhEUkVHZXRGRW92djByeno2dkV3WGJpcktP?=
 =?utf-8?B?bVE5WmxwOGIvRG5xVDNuaFRHMUJPd1A1bUdmU254bUFKRDRIN1FOMzdjQ3VT?=
 =?utf-8?B?ZW45c3JmbENTUDRmUmY1SFlhU2hkblRINW44U3ZNWEZNK1NMRzVpTFdPOENH?=
 =?utf-8?B?bTVmMDM1TXpRK3lXOWpua0lQSTUzZUFlVjg3YTIzVDRSSHcyVG5VcTVXZ2pR?=
 =?utf-8?B?aDVnZnhIaEdlQ3JCS2NPNENnUzFlZHdIRmorRFRoVUsxdGJGTUFTMHZJaTVR?=
 =?utf-8?B?SXdYOXdUVXdENG5hTmtWTTB4TS9BbnFiL0lGdEtHQko5cVAzYnJSaTJva3VI?=
 =?utf-8?B?WTcwRDU2dEpEWnFlbE9MSGJLelJXdGZwTkVVMU00V2hFYk15WXZDZWdrY0xF?=
 =?utf-8?B?NUJyNjIrU2pEK2ZmSndRSjROUXZ2R1JZVURtdWgrenNHWFVETUczY3ZZbEYv?=
 =?utf-8?B?azZ6cVRFeTl2WE9JRXRzT3JJZ2s2UW9HMmVUYVNuaFZXVGdha1Y0a2UxK0lu?=
 =?utf-8?B?S0M3SDdsMFgyTXVlMVJNenlsRXdLUldvZEJnaXlHZTVqUWt1bllEbjBkTXZZ?=
 =?utf-8?B?MzNFMzk5dXk1T0kyUklOamJjd3hpbjUzU0dqeitSOHU0Rmt4Z1YvNUZndk5z?=
 =?utf-8?B?UmFTRnFQVE1xUVVxdU9BV3VVM29FK1dhV3F5ODZvajdaNHNRWGxPNm5kTERT?=
 =?utf-8?B?MFI2ZXAxRE9sczB1NzJndklrRnNDd0ZVOUVZSU5CYmJXNmRuY21LeWdjcDdx?=
 =?utf-8?B?RWhrbGg4MTNzRC83Z2dKRlQ0cmhqeTVNTVViTERVTndRUUR2RHhPYWNudU1k?=
 =?utf-8?B?N2hvNXhpWGtlanFWQUJLMHppUFVWaElNTzFpSXBoWXd0VVlwZzRyM0piQWtK?=
 =?utf-8?B?aDFHYlh5SVc5WXVXckhPbVJWSmNhLzBOV05sS2RaU1hEM21CdFlEWUQ0b2pj?=
 =?utf-8?B?eWgvbVpDbklnWHJkbjVNMUxhQnI3MElMeTFKclRlTU9mWXFQOVkwWHVwOXFU?=
 =?utf-8?B?Q05QajUwR2FOK0sxRTd6bkpwVWpOZHN3d3dNL29CWGJwcC9vWFQ4c1RKanVM?=
 =?utf-8?B?aEovbmcxV1dLY2lsZjdITjI5L0VvRFJtTU1zRXh3dVI0ZEdPeURTQTdqMGV0?=
 =?utf-8?B?NDRFVHJLMU45WGdsUU9EdDRjeDNvY1duL042RG10SUd4N0JiRjd1eDJIakF0?=
 =?utf-8?B?ZkhXSmNDYWExemIxd09mdnBHL0xEUzI3YWRNbWhQZTZSaHRVVjBXYStTczBB?=
 =?utf-8?B?SDNuVVBCd1R4SWJOVGc0SWlhODY5M01peWJJNW1zWHRGRmR4NS8vVmRyek1J?=
 =?utf-8?B?ZmRCcWsxRFNodEcxNnM1b1UyS2VvczAzNE9mQnQ4cGZhb1RSOXFvTnNUbU9R?=
 =?utf-8?Q?64UJXZlHoWo=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7540.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(10070799003); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NHgrWGU1ZnR5RDlUalVXdmRqU040bUdHKzNqdHl0SE42REt3elg4RkhIWVAr?=
 =?utf-8?B?eHVOZDBsZWYyckVyc3kyby9aL1JOYXlpS2VTSS9SMVFGYUxLTmo4cllsRkcz?=
 =?utf-8?B?bHFIZ1NxTFN3bXRuSGhqUmpWSHBmWVE5RWhNaFJBbmZtMlI1TnBJaDJWQ0hU?=
 =?utf-8?B?R1dXWkk2eG5QeURwNkpXc0dOQ0lJMWRVc2NocVcxVUJyWjYvdURwdmxBb2w1?=
 =?utf-8?B?THZYU3lXVWJldTM1MzhkUHpzVWRtUldtQmNKWnFlbEk5UjJaRGdFdmpVSG41?=
 =?utf-8?B?Y1dmeFFobkdFUlFFK1hzd1puL2M1S0ErNFVUQUZlWnZFWGc0Umg4aVFzQlNK?=
 =?utf-8?B?QjhFSXN6ejZWQmdjMkRhMU9FNXViWWpPbHpLS2RxYkhsRHJ2dkJzU3RNWldD?=
 =?utf-8?B?Qm8yKzBodFI1dEw2SnZKZ25rWU85TlUxRmxmcll5eW5zbGJEekVIZWs0ZnNL?=
 =?utf-8?B?VkdIT0w5U1hzVjhnRXgyTXR5QUhCOTEycDFXRktoaTNTajVFK0JPdlk1L3Jw?=
 =?utf-8?B?M1VPZmxuOE05dzlocHkvV0lYbDFlOXd2cnhoVERWbEt0am9sdVFHckdIU1JZ?=
 =?utf-8?B?VVV1UngxZjRwMENpRWthR2NiQTRrM3RoVjlybkZKeC9neFZuQkhOMkRGRjFO?=
 =?utf-8?B?TlRtcHMrRmVqT2REZThHaEhqT3M5dHF6MWRsVDYxSjVIazVhRmVvdEVpZEJm?=
 =?utf-8?B?RGJRR3RTZ011WVpCU3FvU1lWUWRpekZHbWp1WDFidEtJdy9RUFBGSHdXTm1E?=
 =?utf-8?B?ZC83anNYUEs3UlpIemhaNzU5WU9RUzNzZU01RFdvbDZSS0tlUzQ0Y3hoS1BQ?=
 =?utf-8?B?dm5lNStQa013ZTdGeFpyY1RDMFNnYy9lbDRMcnFhL1VQd3pOTSsrYkNZT2Rv?=
 =?utf-8?B?MmtFbHdzVzJJWHdacmc3S1NHc3ZGOWErR2tMeGZKMVNvQlJvUHMrcSs1MlFq?=
 =?utf-8?B?d09KcEJQajdmOGpRbG5yZFhHZFdlSk5Ga2ZqVFNZTmVUdHFQVzY2RnIwZnJ0?=
 =?utf-8?B?cnhiT3M3N3FManFLV2M3cVR5dnVKOFNDdVAxRmU2QlNkOEptMjBuelR0NlJW?=
 =?utf-8?B?WWhpcU9Fb1NVdGpoTTRHQTVGbk02VlNzR3dDa2cvRzBxRWtiV245Sy9ST0pM?=
 =?utf-8?B?MExET2ZNMmpKbWN0WGJYZUg2bzR5STV5MElRNEZERVlhNmlhS2E5UUZvSURC?=
 =?utf-8?B?U2hyQ0hCcStQT0lZOWdpaXUvTzhXQ1pzZEVHNjE2eDg4SUR4R2FVQWJCRVJl?=
 =?utf-8?B?YXFpRU5scDJIN3o3emVDeGVaRzlIdHFXbFJ3MDZJanQyeTdqb3dVVWdtenNi?=
 =?utf-8?B?Wks0VGlXSmZkaVk0K05iYWJIc0tmeE0vRGplQzVtblFZNXFTekZVVW92MHkz?=
 =?utf-8?B?YnB3S3NzbnRBTlJUL1JjUTc2cDZzTVlPbURIa1ZqNk9xcVhxcEIza3YrM01q?=
 =?utf-8?B?VlcyWmtpb0o5bm4rN2MvVFN5cDJzc1JSSWxvY1VMNC9hYTFjdEtUNVU0a2JZ?=
 =?utf-8?B?bk55OEMwZGxpc2pLODZRb0ZiOXhwdmRqcjlKV09LSG9qd1ZQOFhtY3dSeUpD?=
 =?utf-8?B?SjFrTnJzWFJIelFaeDdOS3NJcG4yQ0VISzVtV1ZpdFdsclpYbHFoNFlZbTFy?=
 =?utf-8?B?Z29pVkdUMnQvZ0lHb3lXZTM1RnRmaVRRTG1uU2I1Z3hZU0JVcjcyS1lQaTA3?=
 =?utf-8?B?YVJEZnYxdDhndEFtTjJOdk5qUFFDa3d0Yit3R2dtVlNsTWU3M25HakdtTHl0?=
 =?utf-8?B?TlJ5Nk1mQVJEYlpjYmFCbkRnaGNjV2k3eVZ3Z0V2alNDczVvRVpEaTJZTWg3?=
 =?utf-8?B?YTRNTlVxemVnTEViOVNGU0NuTS94ODlSMlltT3pINUNST1RDT1k0SDhycHJF?=
 =?utf-8?B?L015RCs0bEV0ZVZ2QnpsSkptOXBtUTUxeEFHSWFFdXZweklmc3MzNUVnaUZP?=
 =?utf-8?B?VzVveXRuckJsQmlUbUM5SnVaOVRZYk40Q3dHM3F4SUJJT2lETUhqd0xGcEVH?=
 =?utf-8?B?dGRaT1RLNkhsT2ZHdHdoOUdMa3UxRGZEZkQ4bWt5blBVZjR1UFRXcWtvbStp?=
 =?utf-8?B?SmxNMUR4Wjl3M3RwNjJjbW1JaWhsaVhYS3UwSkVlWFNwbVA1VWM4aFY2NjZv?=
 =?utf-8?B?SzJKZGNDRmVTOUYxZStOcmxrNklFZ3EzWFEyQklwOHprcStYNjl3U21yZUlZ?=
 =?utf-8?B?a1NwRGxVcmY5Tjh5Lzg0cExGc2xGNjRNS1E1OW0rWUFzaFBVY0tqbFZtYzNi?=
 =?utf-8?B?bHE1UWVsNkFyblEzQmFOYWxZY0RRPT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 68447a3b-34ff-4648-0bc6-08dd83e196b7
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7540.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Apr 2025 10:11:47.8919 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tRgaquVQzJcJGzMxsR5W4ajveLdgCcO9bgONHjDppYNTd4GUwr2b6NHBOiZGfGjNCDxj9Y+7grOdosXvNQrF0eTnvyCIDJ8pdSP2zFPnhy4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7352
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745575914; x=1777111914;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=6YbuPoRsaoVg93fsSo3yUqOJrHnCuBRgt9funXFL7rQ=;
 b=Pq8an58tVT4LEVUaryEqzPBbxTyF9h+R+iqFyWqNFvrRukFY4DXoq+pT
 rfaJMCfxjVNtwFlKA2zGaQOGE92Qfjs/ISgk+rWWzcy70GQmHtIzMDDlE
 h12snRTT/zl8uGgQ4XrqQY42ypXR/8kv8Ojvy97hrQ9MdzzSfwLCjd4gJ
 nxUfdjTY2spJwQUhuhuPjY7oCgkHnaYbWGL7WMbsR46zk05lclH8ZC0/8
 AGCM831nNO3MRU1L5f5uRdqzuZD+VeDO4sovmzGR2GXcQ0EonSqo8cEln
 FT8uUXiN3zZYClnFu1QKQTM1B4dmciPMAoqXGOXbNsv7oNjXGt9YFY9zh
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Pq8an58t
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 08/14] idpf: refactor idpf
 to use libie controlq and Xn APIs
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

On Thu, Apr 24, 2025 at 05:32:17PM +0200, Paul Menzel wrote:
> Dear Larysa, dear Pavan,
> 
> 
> Thank you for the patch.
> 
> Am 24.04.25 um 13:32 schrieb Larysa Zaremba:
> > From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > 
> > Support to initialize and configure controlq, Xn manager,
> > MMIO and reset APIs was introduced in libie. As part of it,
> > most of the existing controlq structures are renamed and
> > modified. Use those APIs in idpf and make all the necessary changes.
> > 
> > Previously for the send and receive virtchnl messages, there
> > used to be a memcpy involved in controlq code to copy the buffer
> > info passed by the send function into the controlq specific
> > buffers. There was no restriction to use automatic memory
> > in that case. The new implementation in libie removed copying
> > of the send buffer info and introduced DMA mapping of the
> > send buffer itself. To accommodate it, use dynamic memory for
> > the send buffers. In case of receive, idpf receives a page pool
> > buffer allocated by the libie and care should be taken to
> > release it after use in the idpf.
> > 
> > The changes are fairly trivial and localized, with a notable exception
> > being the consolidation of idpf_vc_xn_shutdown and idpf_deinit_dflt_mbx
> > under the latter name. This has some additional consequences that are
> > addressed in the following patches.
> 
> (You could reflow the text above to have consistent line length.)
> 
> Also, how can your patchset be verified?

Just normal regression testing with kernel debug options enabled, a large 
portion of the touched code is covered by just loading-unloading the driver and 
doing a PCI reset, stuff like PTP needs to be checked separately, because it 
heavily uses control queue itself.

> Does the module size change?

idpf size does decrease, but overall size increases. It was 585728B for idpf, 
now it is 557056 + 16384 + 53248 [B], this amounts to +40KB of storage usage on 
systems that will not use ixd.

After
*********
idpf                  557056  0
ixd                    40960  0
libie_pci              16384  2 ixd,idpf
libie_cp               53248  2 ixd,idpf
libeth                 16384  2 idpf,libie_cp

Before
*********
idpf                  585728  0
libeth                 16384  1 idpf

> Is the
> resource usage different for certain test cases?
>

We now pre-allocate small TX buffers, so that does increase the memory usage, 
but reduces the need to allocate. This results in additional 256 * 128B of 
memory permanently used, but our ctlq RX buffers need to be of size 4096B anyway 
(not changed by the patchset), so this is hardly noticable.

The worst-case memory usage should stay almost the same + abovementioned 32KB. 
As for the timings, we are mostly limited by the HW response time, which is far 
from instant.

> > Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
> > Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > Co-developed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> > Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> > ---
> >   drivers/net/ethernet/intel/idpf/Kconfig       |    1 +
> >   drivers/net/ethernet/intel/idpf/Makefile      |    2 -
> >   drivers/net/ethernet/intel/idpf/idpf.h        |   42 +-
> >   .../net/ethernet/intel/idpf/idpf_controlq.c   |  624 -------
> >   .../net/ethernet/intel/idpf/idpf_controlq.h   |  130 --
> >   .../ethernet/intel/idpf/idpf_controlq_api.h   |  177 --
> >   .../ethernet/intel/idpf/idpf_controlq_setup.c |  171 --
> >   drivers/net/ethernet/intel/idpf/idpf_dev.c    |   91 +-
> >   drivers/net/ethernet/intel/idpf/idpf_lib.c    |   49 +-
> >   drivers/net/ethernet/intel/idpf/idpf_main.c   |   87 +-
> >   drivers/net/ethernet/intel/idpf/idpf_mem.h    |   20 -
> >   drivers/net/ethernet/intel/idpf/idpf_txrx.h   |    2 +-
> >   drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |   89 +-
> >   .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 1622 ++++++-----------
> >   .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   89 +-
> >   .../ethernet/intel/idpf/idpf_virtchnl_ptp.c   |  303 ++-
> >   16 files changed, 886 insertions(+), 2613 deletions(-)
> >   delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq.c
> >   delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq.h
> >   delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq_api.h
> >   delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq_setup.c
> >   delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_mem.h
> 
> […]
> 
> 
> Kind regards,
> 
> Paul
