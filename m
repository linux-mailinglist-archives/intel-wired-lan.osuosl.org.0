Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A571B18238
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Aug 2025 15:13:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 22DCC610C2;
	Fri,  1 Aug 2025 13:13:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3aXWBH7XktH9; Fri,  1 Aug 2025 13:13:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 620F46116F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754054034;
	bh=Aef5ev1eOnCjjTDgu+k5Vu6pwr/ZQxXNpxR/ZkSEDQg=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nixR6L0X/mMhGnQf5JqqBGV2sbFHwpaMRASigCTIA9LKP4jgtu4TYpEm1bbZZPEZO
	 yZEMm8LPKPPMeTqC2LIaPae1LgJ3JQa8pOQ6tn9bZdOLRCaA8veNvwRBrrURKdpkNl
	 ZYTO/1hNfUd9Zbs6uZFF3pqhK3z8NHV2WwKd/BQX6J7y+1OS0G3NFWWxyXRh0xLYDO
	 2jiOeKybPRn4uRP264v2qkbcDE7OJbXFitLN2wmAgXaYjdmXcV1acFPJDpnmjmXT+n
	 J8NkLFQhRxvoZaCvKOqzqk2pbKNGi6DY7roZOaFjRAk15rKmMy22xkjPYh/RtW35ih
	 7tShWhycSHp/A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 620F46116F;
	Fri,  1 Aug 2025 13:13:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 10F54C8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Aug 2025 13:13:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0E2A441332
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Aug 2025 13:13:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vNmRY2snRfLv for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Aug 2025 13:13:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 468E540F49
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 468E540F49
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 468E540F49
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Aug 2025 13:13:52 +0000 (UTC)
X-CSE-ConnectionGUID: kyUMHYJ+QeaVzvZshNXZLA==
X-CSE-MsgGUID: qIsIT2JcSiOj+h8PPJx2ug==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="56479642"
X-IronPort-AV: E=Sophos;i="6.17,255,1747724400"; d="scan'208";a="56479642"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2025 06:13:52 -0700
X-CSE-ConnectionGUID: cKYUEtNaSsmNewL6Wkm3uQ==
X-CSE-MsgGUID: ptrmMfJiThSD6mNKJmLQnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,255,1747724400"; d="scan'208";a="167824796"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2025 06:13:51 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 1 Aug 2025 06:13:51 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 1 Aug 2025 06:13:51 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (40.107.95.47) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 1 Aug 2025 06:13:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=X3w4SzgfWEQiSp13P4aMeLGHVeJ1nE/CPXXXBoNP/gxuyzxedssGtcixHl/2+8way8QXELwvdZcUXGGQKKAL/CyVFHnM53jz+yQ1Lu3mRzeQhWG/hfvoNz0alzPQUxOsvshp3hI8qUE46QAlh4pQfVIKntzXCvvP4jpH3Y/SyYNc+IRs4l3vlgaRbk5DSjemVSVb3z5P0zLaFV6b3ztS50OTV8E89FXXcGbgT/DIbHTxUDk9VxCaq/nEVsaq6ICbw7mB+kpQfnwzQj9EGWwi7WnkMzQohGfEC8BsWkiyRuSGaMQnfAmX2lz0NVVfsnsMG9Ckq6nDq1VO1ShQVVAxnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Aef5ev1eOnCjjTDgu+k5Vu6pwr/ZQxXNpxR/ZkSEDQg=;
 b=KvF9dY+O6JdTEDMPQG0NxyEauQayDpmb06wYul4BZo/1bw271QLEvSWnWMtOpCOjbBmnAKozvRNLbVfgV/JMh185m/D1SzWhihrCyKHFCBfKQu244h8RPWAXxfus0ouY65P6IyGlFDKBG3l3kcR/1449lNFLnm663It+rSFB/lrR8G72yhMkAc4UwS+taHmLKYP22hksHLnM0uePVWpdanaJgdjuynaRMmKJAgEKAnXoyXcisb0o1UP+3j9D6Kfbb/nDUzEIBdfrSLkhOiYBoI9+6NaTKbkgkxcgYEq1oFdrvxtpk2qDQRuMJJmA60vzmWczgsP0hEaGdxRUqYyyUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by SA0PR11MB7157.namprd11.prod.outlook.com (2603:10b6:806:24b::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.11; Fri, 1 Aug
 2025 13:13:08 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%6]) with mapi id 15.20.8989.015; Fri, 1 Aug 2025
 13:13:08 +0000
Message-ID: <8c085ba0-29a3-492a-b9f1-e7d02b5fb558@intel.com>
Date: Fri, 1 Aug 2025 15:12:43 +0200
User-Agent: Mozilla Thunderbird
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
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <202507310955.03E47CFA4@keescook>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DUZPR01CA0042.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:468::9) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|SA0PR11MB7157:EE_
X-MS-Office365-Filtering-Correlation-Id: 6e7f24df-77dc-49fd-3c13-08ddd0fd2875
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|366016|1800799024|376014|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OVFmcGIzRTNCMkg1cThJbytkQVZlOVVmaFRRT0RZWFppMGM2aHMrYUQyUW5L?=
 =?utf-8?B?V2dNTmdoZHQvOExLeVN3WUtLVTF3NUdRUXJsVGJRRE9RcU5GK0lxcm9KK2Y5?=
 =?utf-8?B?R0Q0bnpJb1dBSjJ3MCtEWG9jRlVxNGlvNm9zWVdPRjBKSC9NYXk4eDhaYmU4?=
 =?utf-8?B?R1Z3NUIzUmR1ck41N2dBRWNFQm1JVFFFLzZOSDJGeTdSUTMxaGordWhvd1ZD?=
 =?utf-8?B?UUtmVjVVWERZZDR0bFBYalVnMUxoM3F0czZkNVZTYVBXbVIwTnI1ZkN0Nkwz?=
 =?utf-8?B?ZHI3RmdldFRyanFOWVAraExTNWt3TG03Q2dwSzdWOU9pWGlFUnE5Tmd1S1BG?=
 =?utf-8?B?VDd4WjNnQUdBc1U5NXQyU3hxT2FvZ24vZVJiR2NLVXBFZUd4U3NWSkd2UnFh?=
 =?utf-8?B?NDB4Z0tvSkJ1Z0RnTFBYQ3A5Q1BBM0hReER3dG1NMVA1NCs1dXlWTm9UMXF0?=
 =?utf-8?B?NVRjaVE2Qm11YjRmTEkxY3FmQ2Mzam94YjgvVmNvWGtoaEdHQ09yMVFnSmU1?=
 =?utf-8?B?WEd2ZWtMSHpzM0p0dkh0VzdhME40Y0ZwTGRWaEdyTkpXK1hOOWg0MENvWkZo?=
 =?utf-8?B?NW1QeGtqaUJuZ1pJd3N0Z0poays4ekZXYjhCN1lOMWM3ZW4wQWpualVMOUJq?=
 =?utf-8?B?Z0R6WXQ3SmtYYWxYY2Q2bHJwekI2OXZMM0dtSUpOWFZ4dzB5TGJDT2prbis3?=
 =?utf-8?B?WWgxK1hlTDVkd1NBYzhCNGUwNjVqM3d2SjNKL3FqZjk4YWRWbExORlRIVmpn?=
 =?utf-8?B?RnJ1WkluQjFvZFoxaFhzdHUvcjJ3OEY1VnZrREN0a0l1RHF2enpHNHk1TTNa?=
 =?utf-8?B?dHFWVTJYZnhsSi9FMTFaSDVVVEEvR2dpMVZ4YVM2bWRYM0xMdzhVK3djOW5n?=
 =?utf-8?B?QVQzR1B0QjZqVWxuMk0xOUtlbHhhUEdXb29QZktrSlBIYkJVTnNaYmxwRzZm?=
 =?utf-8?B?TmdMVXVWV3hPRW8ySFVCQzJ1dnJXUFhhdi9EUXh2RnB4dk1wNFNkMlI4RFpQ?=
 =?utf-8?B?eEh3TUpBSzZJNjB1QzRMbzhQM0xMZXR5VWlqY1crNk1GNC9lRWpxQVdjQjho?=
 =?utf-8?B?V25lREFUODMrcjNDWm1BTnFkYzZkckg2NmtvdTJsZW5mZlpvdEVyOXR5bU5n?=
 =?utf-8?B?cmpFSXYwekpKQzh2ZmlPS1lUWmtiNEJia3JxSFdoNHNmdS9ZUXlZYUlrNjRv?=
 =?utf-8?B?c1JDc21qOHJtVWR4eXQ2TmduazRJOWFUU2hYOGJQY0JvdUg5NWovQ3l3bmRy?=
 =?utf-8?B?aS93bTNXVGljZjVEY2hBeUxjQk5CVUlTNXZzTHd6d2FmRkg2eVg2VStwU2NR?=
 =?utf-8?B?Nk1odkIveFV6R1lYVEJ0dTFmYW0xcEI5M3pKTWdQTGYzTHZwanBLMFZEWG9C?=
 =?utf-8?B?ZjBRU2Y0SThoQ2o5OTZuUVJZQ2ZjczZReGVUTXcvSTNYS3owQTJDUnBSR3E5?=
 =?utf-8?B?a0ZkeDI2NUlSQkRhOExqckdxakxDaVpOZWlyNVRZaHBreHdKZzZZYy9TU2lT?=
 =?utf-8?B?SU5aZ3NiNk9tN0xjeDRkTWNkK3Z4SWZiVDBzRlY2RlBPWW41c21lbFhMQ2lj?=
 =?utf-8?B?ckVweVRwemU2bVN2aVVEdFFWNGRHbFpUaXlnRFZRQURvZENoNlNybWdydGdr?=
 =?utf-8?B?d2hobEdWZ0pUaHR6dHZZSHM3L2c3bGdyWldUWFlyNDR1UmJXVm84TmNuTHZz?=
 =?utf-8?B?NHZUeGlPNDFNVEs1SXJ3MkZsL0tsOVhaT1RtSjh3R0NpRjl0cUdVdks2Y09t?=
 =?utf-8?B?RFhwaDNyWDhybVhFbys1MW1qZVJaejR4RWZ0dlR3bDBFZ0s3bnVSYThNR3Ew?=
 =?utf-8?B?TFVTZEYwNHJmK3ZwS0RweWhLeG1lOUtMbFVrdTlSeTE5WWluNkxEb3ppbkF3?=
 =?utf-8?B?UUdYNnRrY0txTi9tM0w5dTRCSzNWSFJPZEQ1YkJXS0NOOEdzUHlMSFF1U2tS?=
 =?utf-8?Q?pzm4GTF511g=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(366016)(1800799024)(376014)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N0JJajY1bnV4c3pmT0JKcEdVUHZ5Mm9KT0RUaVc0V094bUs4NFkxc2VDZisr?=
 =?utf-8?B?VUZuV25BTGszRzVJSERlS0Z1YWtkYXpTZ25VRU1SRFFJdHVyanZXYmtGSytJ?=
 =?utf-8?B?MllxTm9tN2tnWlN6aVpob1ZEUVQwOEdpdzVKK0hjdlFWRVpkeERGcmFuMVRp?=
 =?utf-8?B?aGRUNFc2c0ZTMitLWE9ZK2RTTUtpZWgzK1JhSmdUWnh1dnJ1cit3OGpoYXNk?=
 =?utf-8?B?SXlTeUw3K2J0dHlhM1k4ODF4RHJXZjZheU5GV252RmFSakppazVYLzlpMHVC?=
 =?utf-8?B?QWVBTzFWR0R6V3JJMVpSMnBhSmg5M1pkcTFXRnFET1hTY3ZDendpczZmYVk3?=
 =?utf-8?B?d011M0RFSk9PVG96SXI1STlaNlJ1WFNQNkNyU2QySGNVeVhaa3RpWFl3VnFr?=
 =?utf-8?B?VnphY3B1U1ExMEEybkttZWJrN0hoNHVHU3YwdEFCWkpSczRKbTZNc2EvMDFT?=
 =?utf-8?B?a25rdGRibXEzUUk0Z1MxV2xjNnY2T1pDbzBRWjl1b3BjZ3JMYjhjdG10bm91?=
 =?utf-8?B?ODFWNzU1RVJ6WUJZMFJqTUNoL1lNQW55RWs0KzVPSCtNOTd6Qmc4d2ZzV0x3?=
 =?utf-8?B?NTRuMFAxRWQ0a3MvTGtMM01XdE1TRkVsVnFEWVRNSjRINnpIUVg1cTgzb3Iw?=
 =?utf-8?B?MEJaQ3FRNUhlcVFnWEZsQWZFb3I5ZzZSZFBkRlpoQXYxU05TTXdEOVJUQU5l?=
 =?utf-8?B?SnFIcDRmUnZ1UmZ0cUZENXh1MUtHMS9xY1I5UVJUM2pFcFBnSlZWWWpobUti?=
 =?utf-8?B?bkN0eTRWV3BRQTNocnpSNHM4RzUwWTRiRm55OGJzc09OWXFTakVCZDRjbGgx?=
 =?utf-8?B?T0RWZDMveEh2aEJWZUVzUko4dmNCTTIzbHQ3ZVZERWJFRzFjZmVPb21NMG11?=
 =?utf-8?B?Tkd6L1ZBL1liT016OWtvTTJqOFhQMGt5TEhJWG1EYXF5VHFBczRQT2w1VnFW?=
 =?utf-8?B?L2thTDdmVkVwak9VVDAzNVlZU3kxckVKZ0dCczZHSGlVWmVuNHJKcitGQ0NG?=
 =?utf-8?B?V0I3c25uSVZUOTFKTndMWE5QeDF0R3RhaEtpamJoVGJkQ1BkcWxXK1paZXhh?=
 =?utf-8?B?WHViME82RWFmRjdxQ21mcmdkeDNhSzRMaVBOT1RycVd4ckt6L29FL1dwMk9r?=
 =?utf-8?B?RDNCaWNsNUJybS94djY2YnVBaXVPRWdCV3ZtM3IwaHExYUs0eDhrTkcvY1hx?=
 =?utf-8?B?NmJMcDZza0xjd3A1SHBtUElqdEZxUmxuQy9jMEw3MVQrajQrRjc3L28vQ1ZT?=
 =?utf-8?B?UW44WnBBYUx3ZE1hUkVwbnpxQy96c2dRREtHRXVCaUdnS1VGRG9ZZE1DMUNn?=
 =?utf-8?B?UFVzWFFPOG9SSXQzd3R6bjF1TVZrVDYwQU5FOGh5Z1NVdzEvMkNYTCtyTHhY?=
 =?utf-8?B?c1JiL2YvdkRnZ0dTQkVsZWRBb09McXhrK29uTndxVlIwUFgxOVRIM09OL2NW?=
 =?utf-8?B?akFsNUhlVWZmbk1NdTJ3M3ZKNGE0M0h3S1NSY0JBaGxJc3dNL2VOTHR4TGFX?=
 =?utf-8?B?dXpVWHFSWGpDS0dyWEc4aWRHNEM0R0srcHRmZ0tuSndBck0vYzlTdmJ4MC9m?=
 =?utf-8?B?YXUvS0ZQUE9DNitxRUU4VHhrWk1LcVl3ZzFmQ0F2cW9vL1VpUFE5SlZkalRa?=
 =?utf-8?B?QmRQdGYya0Y5R0J1NDJZOVpRS3pGNEdRamVCbEFLTXdBM2ZPWU5aWENqbEhu?=
 =?utf-8?B?RnZzb2UveHFlVmp2a05saWlOSW96eXRBSzRkOGRGZHVtWXBiZm10L3pWYVhh?=
 =?utf-8?B?VjVFTGJlOVUyWlFRcm9rWitYQVMydDJXQXhVUXhlYUpiclExOFRjNU9ENkNm?=
 =?utf-8?B?Y2Z2eXFXN2FhTGQ3b0tmRHdzZUNSQUNMc2hXOWZzUmNNVEd0NlB1dE5qbzBW?=
 =?utf-8?B?NURDTmtWUEdNWkJJRjd3QXUzczArUHhKaExXb1pkeU9scFAvdnZNTFhoMnNZ?=
 =?utf-8?B?RVVVdDdKZDMxcFVQcm9KdUM3ZDM2QXJkRVNSNWVrVTgzMFFKeWc4ZkhkRDNj?=
 =?utf-8?B?K2x6bGZRWHB5bXBsM2xiWklXTm5iazBtVDV3V29pU1BRV05JeW9SNlFNNk1M?=
 =?utf-8?B?NUpHRUlFZERhZGZ4SzlRSll2NXJvZnpwaG03WFRwNW1pMG1XbDh3NytsWHh2?=
 =?utf-8?B?cFVkWkc5K0Q5aTRLYVlkOEUyYUxCY0Z6dWxzQVAwUGtnYUZOdVNHZnpnSnps?=
 =?utf-8?B?amc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e7f24df-77dc-49fd-3c13-08ddd0fd2875
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2025 13:13:08.2979 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: L7/RBAxmYjMPkLDIB69j9GeVWEMWRz8JdNdKwzYr/YWcUsla/txQrTtPQyZiVGBp/IhFzYbv5cMR7UNMgMVFfrJs479d2aaBYqdh/QxG+OI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB7157
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754054032; x=1785590032;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xV0GHJYEqd/Ga9/+HKQ1ZoNVd6YUoupJYLcIcItAG0Y=;
 b=KMriVEm/pGWQSRxgGuj/X2O0O2qKut096ij3dgxrPORKlams7AM2bjzr
 bqbmBedV+mbLa2mmDLjX1Oh88WsgNEyJD4a2SmjWLnYmt9nYTHaakae24
 CdV7owycQLslCZ5aOF+g4ZLh4Zq7Nh766UXhfz3ZWR5Igu36LWWwCBTGg
 f9+fMuMgUlr9Er7t96oL/GEOMqZD2JdLRcOA7Ao7IMg6oGzle4RQASZ8T
 ZVNOtoP8GUU1q16E6qqV2a26Qa3tieSDSoOej0h6Xrqesu5CLnWQtoVgu
 GagUhdEhe53ulaJVF11CorbFDa5045Eu1+FqwcjMdDKZ8W0/RBXkOI6Gz
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KMriVEm/
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

From: Kees Cook <kees@kernel.org>
Date: Thu, 31 Jul 2025 10:05:47 -0700

> On Thu, Jul 31, 2025 at 01:37:34PM +0100, Simon Horman wrote:
>> While I appreciate the desire for improved performance and nicer code
>> generation. I think the idea of writing 64 bits of data to the
>> address of a 32 bit member of a structure goes against the direction
>> of hardening work by Kees and others.
> 
> Agreed: it's better to avoid obscuring these details from the compiler
> so it can have an "actual" view of the object sizes involved.
> 
>> Indeed, it seems to me this is the kind of thing that struct_group()
>> aims to avoid.
>>
>> In this case struct group() doesn't seem like the best option,
>> because it would provide a 64-bit buffer that we can memcpy into.
>> But it seems altogether better to simply assign u64 value to a u64 member.
> 
> Agreed: with struct_group you get a sized pointer, and while you can
> provide a struct tag to make it an assignable object, it doesn't make
> too much sense here.
> 
>> So I'm wondering if an approach along the following lines is appropriate
>> (Very lightly compile tested only!).
>>
>> And yes, there is room for improvement of the wording of the comment
>> I included below.
>>
>> diff --git a/include/net/libeth/xdp.h b/include/net/libeth/xdp.h
>> index f4880b50e804..a7d3d8e44aa6 100644
>> --- a/include/net/libeth/xdp.h
>> +++ b/include/net/libeth/xdp.h
>> @@ -1283,11 +1283,7 @@ static inline void libeth_xdp_prepare_buff(struct libeth_xdp_buff *xdp,
>>  	const struct page *page = __netmem_to_page(fqe->netmem);
>>  
>>  #ifdef __LIBETH_WORD_ACCESS
>> -	static_assert(offsetofend(typeof(xdp->base), flags) -
>> -		      offsetof(typeof(xdp->base), frame_sz) ==
>> -		      sizeof(u64));
>> -
>> -	*(u64 *)&xdp->base.frame_sz = fqe->truesize;
>> +	xdp->base.frame_sz_le_qword = fqe->truesize;
>>  #else
>>  	xdp_init_buff(&xdp->base, fqe->truesize, xdp->base.rxq);
>>  #endif
>> diff --git a/include/net/xdp.h b/include/net/xdp.h
>> index b40f1f96cb11..b5eedeb82c9b 100644
>> --- a/include/net/xdp.h
>> +++ b/include/net/xdp.h
>> @@ -85,8 +85,19 @@ struct xdp_buff {
>>  	void *data_hard_start;
>>  	struct xdp_rxq_info *rxq;
>>  	struct xdp_txq_info *txq;
>> -	u32 frame_sz; /* frame size to deduce data_hard_end/reserved tailroom*/
>> -	u32 flags; /* supported values defined in xdp_buff_flags */
>> +	union {
>> +		/* Allow setting frame_sz and flags as a single u64 on
>> +		 * little endian systems. This may may give optimal
>> +		 * performance. */
>> +		u64 frame_sz_le_qword;
>> +		struct {
>> +			/* Frame size to deduce data_hard_end/reserved
>> +			 * tailroom. */
>> +			u32 frame_sz;
>> +			/* Supported values defined in xdp_buff_flags. */
>> +			u32 flags;
>> +		};
>> +	};
>>  };
> 
> Yeah, this looks like a nice way to express this, and is way more
> descriptive than "(u64 *)&xdp->base.frame_sz" :)

Sounds good to me!

Let me send v4 where I'll fix this.

Thanks,
Olek
