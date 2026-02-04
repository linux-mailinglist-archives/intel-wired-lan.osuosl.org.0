Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aEZ0Mk5yg2mFmwMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Feb 2026 17:22:38 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 10837EA23B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Feb 2026 17:22:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B6C7E60F90;
	Wed,  4 Feb 2026 16:22:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZeztNPW7WK95; Wed,  4 Feb 2026 16:22:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E6B3060EC8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770222152;
	bh=CNJ+JfS2K+bOH1P25LAomJ4h6N0lFnrUklKxpyrgLpg=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0HN0iD+cUMX35OaV04pE2J64oSHDPpIH3Uadw0wE7MS6nztZkFVzycb7EYoQKRzp5
	 ZChGljICpUi9iJWhH7hBjb8VlfOm2mRqADpYsdQaDscL2Io0hEM+Fj+Xki8Yv2q3vE
	 1SmgCZthoF4hz5grAh7G7R/kkpo+BLHUNpSPgaB7IiMYsokZMzxB/0oqQZdATYsoft
	 hEr0OCUXSE3di4xtY91PuZ5kkWsb0Nnioz3GsaMOAtJRAzje1Sy/w/nSuV1X+fQvmI
	 Vd80aDs6RU+O2yG5Qr8Pv3xz35aIAf4XEVrhYMEe1qEpF5rlBOTgISPwZC7HKrCwBx
	 kLW3794e+aRtA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E6B3060EC8;
	Wed,  4 Feb 2026 16:22:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 4059CF5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 11:45:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2314B60903
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 11:45:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l2zQ5ipxm_0B for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Feb 2026 11:45:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org ED71A608AE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ED71A608AE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ED71A608AE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 11:45:50 +0000 (UTC)
X-CSE-ConnectionGUID: J7FVVfN9TNand14E8Yixsw==
X-CSE-MsgGUID: zOQ92S33Qa+lOK20gxbRWA==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="82022420"
X-IronPort-AV: E=Sophos;i="6.21,272,1763452800"; d="scan'208";a="82022420"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 03:45:50 -0800
X-CSE-ConnectionGUID: r9hFGxVnTNGsiXMwTmTVqA==
X-CSE-MsgGUID: +kkqqYUyTmuSjJn/cKbUJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,272,1763452800"; d="scan'208";a="214677879"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 03:45:49 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 4 Feb 2026 03:45:49 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 4 Feb 2026 03:45:49 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.45) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 4 Feb 2026 03:45:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kJqt3FKPG8Up6ECWwILNrGKi6sSd1VCqWceeD8o40Tjwupi5rxKOuDbPW5hnWHjNYQqAu+OMLmxp2VOaHXETyYDt6e7B479TfYHIsus7SUxhVdaX11E4sFcH9Q2K4jx4SQOmPh38cLDxUN67p61osAse/Kc34Nd4cO06Yk0nVu2ziDsS7YTiLu+GJpRXtqpFhIJBPkkAjajADi0SuCa5898MYJidTd4HkEU4A6zi++xYLclIw6FKVQWHotj9GKLP49irKrsepXoOS2n9oLEJgvaJTHl+FxqqcsMQ+YX0soviQS/I6P2esnR645CT99DAxkCBv49XtgoNvp+oOvBeFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CNJ+JfS2K+bOH1P25LAomJ4h6N0lFnrUklKxpyrgLpg=;
 b=awfVnZmkxkvYa+sSXqikIU7nF0FnXCPVr5vyDz0EWuJW0PoBGv97FBOmTY+3Y3HaABZEEcK7vCjnfkBOGQ04YzCqDbRnpLZr3+99X4TQ87z+HiOzPYzn8Q4ujLHe0Kd2VecKyQunZGvkRTExfxVGGld6AysPd+YOZ8VuBgHAuWJl0Og/TaS7Xd7YCrBSdPkSpMBVNXBp5im8KxsmAHiBtL1Or/vBWLzkqPeXAomOOpZ+7xveTU0FNuIlidqsjB0rvElSgsL133K+COpkTBJhKb5NqhInWAlRBC60PT1bvW8uwuAvbWojFu+wt97vt1wF9apFZycKUefHCMPC8Jexuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by PH7PR11MB7606.namprd11.prod.outlook.com (2603:10b6:510:271::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.13; Wed, 4 Feb
 2026 11:45:45 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c%4]) with mapi id 15.20.9587.013; Wed, 4 Feb 2026
 11:45:45 +0000
Message-ID: <6aae1545-1968-41dd-941c-ff961782e173@intel.com>
Date: Wed, 4 Feb 2026 12:45:40 +0100
User-Agent: Mozilla Thunderbird
To: Larysa Zaremba <larysa.zaremba@intel.com>
CC: <e1000-patches@eclists.intel.com>, Maciej Fijalkowski
 <maciej.fijalkowski@intel.com>, Natalia Wochtman
 <natalia.wochtman@intel.com>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>
References: <20260112155319.75122-1-larysa.zaremba@intel.com>
 <20260112155319.75122-7-larysa.zaremba@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20260112155319.75122-7-larysa.zaremba@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU6P191CA0012.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:540::12) To LV8PR11MB8722.namprd11.prod.outlook.com
 (2603:10b6:408:207::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|PH7PR11MB7606:EE_
X-MS-Office365-Filtering-Correlation-Id: 039a77ea-1fe9-4980-1e2d-08de63e2ee63
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bWgzNmFDQnJZSm1lUzFyWWZVNmljZGhZODh2NU9nOGM0STNXQjVVMlJSSkxa?=
 =?utf-8?B?Mk9LVnZlVzF2V1A4cW5wNUQybVN3aFNZK1RXcGZaeUJBdm5QMHAwNDYyblJi?=
 =?utf-8?B?cFdoYVlNTXVFSUR1QkhqdWluM2htRkdXZWN3L003a2dkaDFCRG5BNVhiSW9h?=
 =?utf-8?B?OHNGMFIxcVY1bnFodmlqM0JpWjdWR0FPMlRCcDlrTURRR3d0K1NZa3prcElP?=
 =?utf-8?B?M2UwdzROaGRnclJiQmE1WkV2VUlJS0l3L1NKZFFXdDVkSFpCZGJsK0xqNEFm?=
 =?utf-8?B?Z0l0RWorRE5mN3NDdGQ3MlljaG9WL0JQOEJWTE1ZTTQzYlhtcUQwTVVyR3Vz?=
 =?utf-8?B?bkNSOE1BNHNpRVFzc21YdDF1QWVrUzRWaTZpYzNJdFg5eTAvY2lucXp5cFll?=
 =?utf-8?B?a0Z1OFdRd210L2hmWXhYNDZZYjRzQmZDL2daZjBJREV2SXRTdGUyMTJnZzE2?=
 =?utf-8?B?S1doMGpKWE5GQmQzMjlEOU80NnpNcU9ZZFhEdmRPdEtoS2pYMURCdjMzcCtz?=
 =?utf-8?B?ZkZvdldpTGJHTThPaWF1TlpLWFA2NVJhL0w4eFExVjhjdXdsTEl1a0M0UG1I?=
 =?utf-8?B?cDZlRE5handyS2prMkFaRDhrYXNqNWI4TGlKc2VZNTVUOC8rdGZ1dVdaNFI3?=
 =?utf-8?B?aHRsTkxPOU1lU2Y4NnhRQnJWWUNnczdoMDZHSUJ0aG9CcDBSYnB2bExpYUZt?=
 =?utf-8?B?cUVuWGZpTEpIUXFnWmEwMXJFUmpNaGsveWw0RmRuK3g5VWV1UTcvZWtzMVRL?=
 =?utf-8?B?eVdwMnVrWkMvMVlTb1FCZDVNYzlvenlrTDVwcVZtVjVLbmIyYUk2OSszTUti?=
 =?utf-8?B?ZEkxcTdoZHVRSytuT0pnOU9ORlBZOTEyTjkvSHJQdlNIM0o5dDE3b0htTkNx?=
 =?utf-8?B?T0tpMk5wRGZ3TFVJbkNBdEdGS0JyMzZRcnkvN3gyV0VrZVBlSzlQU1B6b3Bl?=
 =?utf-8?B?VXBJWC9Ed2VRY2ptbStKUVc5cHFlNzR4bmNoUDdLcXRybVp6N2ZYaTNiZjY3?=
 =?utf-8?B?d0MwOWM5aFRtc2RBYkc1bFhaYTgzbC90WEI0azFMTXJneWNUQ0RraDRhOEdB?=
 =?utf-8?B?WDhZQXpYK0t4Q1lVSlphNHhzUGx5S2F5b3JYYmxOSk5iN3lTSE83YmdYdTl2?=
 =?utf-8?B?WEdZMnlzVEF6RHdiM2FCTlluZTlXTm1iTFYrNlZST1NZTmVoY1FpMk5STlFD?=
 =?utf-8?B?VjZYMC9EYUVlTkNjNFFQYTNmWkxRUmlaQXB6RlptSVVJK2puMEJhOGJvU0la?=
 =?utf-8?B?YTZDM0VKdG5QenQyZFRIbmw4UHJscFJXMXlTM0xlRXFxUnhPbFZaODFRQUJp?=
 =?utf-8?B?TTFhNENsb1F0elZ1cTVNemVvWloxTWF5dzFXL1daQ1dvZm1HZUpMQTJ0eTNs?=
 =?utf-8?B?NktONUpSWUVQYUxURm1VWEM2dDJRTWhhSUliQnl3RzdaQUFsbTRiZThVU3RQ?=
 =?utf-8?B?NE9YREFQY1hITFoxSlhLVkw1TTEydWxDVDVlVlVWOW9vcXgxdHhGYnNONXZO?=
 =?utf-8?B?SHRuc2VYVkVoMkJuOUxySTZkajJOOTR3ekw0Z0VjU3I5SnJIMTNUc21ZTkVa?=
 =?utf-8?B?bUZXMWxiQjZpMGdTbEdBRjdsem1HQ3N4WnIvTStXZHVEWjNvbXZvVW1iTnNr?=
 =?utf-8?B?MVN2YlI2K1UrMjFvVWtqUFZkWVkvcFJEdXFsVEhmamdUM3JteDhqeG1ZMnhy?=
 =?utf-8?B?aTFaaXRoZWgwaGg3NDRnYXRoNjhLQUsrWDlBdVVwckc0RFFiTkRNbVE1NS9V?=
 =?utf-8?B?YnZmeTZXYzE1azZLZWc3V1A0RXdlS1dxY0RwbjByQ1BOT1dsVmg0ZTVMZEpX?=
 =?utf-8?B?djQzd2YwSEhBTityL0JiNUplQ0hHMnp5RWpBVHNzOUFOSG1BT3M2d0UrT2k0?=
 =?utf-8?B?eUhxWjloSXpQV2pKck1SNExwa3djMVFVY3RMUGNtVUU5aVMxT2dZQklxRlVP?=
 =?utf-8?B?aWY3REVRcFcyeVBQRHUvMGc5RzU2VitFd0JzNnQyNkpFZnF5anV0QkFaczN6?=
 =?utf-8?B?dFJVRktyUTh2SXRmdDBBTjUxeHVMQVluZnFwaHRBeVdZQ2UwT3dVb3k4OVYx?=
 =?utf-8?B?NDF6a05JVVROM2dWVmZCM2E4Zzl3bFYrYVF3aXRjR3dDVnpPdWRRbHlZbDdk?=
 =?utf-8?Q?39Ic=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QWRWQ3VxN203OEljNUcrL2lER295STdoVnpvaTN0WHNhVGZyWTBySFEzYjh0?=
 =?utf-8?B?YWxZeVBPNnl6U2oyZ3o2ZlVqeExJR2dTWFR0a0JmaXBOamFVZGlYa3E3bEQz?=
 =?utf-8?B?L0dkc3FYNFRQVkNuTGdxSi8vR3JGalBmUEZGd0lvV3N6NkloQ1BOQUJPUVox?=
 =?utf-8?B?T0MzWGlHOHB2SzZ6dmx4YVNQK0xDN2Q2TlZEVVJTTFozY280VFVRNm1mbWtS?=
 =?utf-8?B?cFZRbWNMZkFSVG5ISkVPVVlvTHMrNHVMUTU4bEpyUzM0UnB6UzNLek1Ta0d6?=
 =?utf-8?B?UnF3NjUrTm5lN0VvdGtuZENiQXRMbGJFOWNzaVZCMWFkbzNMa2dHTjUxKy9S?=
 =?utf-8?B?VWhJR1B6dE1zMGpQVTZyRHJsekNCb3Y0anFUWlgzQUl1K1czRk9UN3VEVFlr?=
 =?utf-8?B?S1JDNkh2aER5Q0EzZ0szQlUyeFA4cEtzUDdvc3o3ZHdxUEQ3Q3NseFd6d1Nh?=
 =?utf-8?B?blcrd1hOcWpMV0s4amFJSEU1OUFtR3M5cHdCdmRzRUE2SDJWdmlPWWg0b0VC?=
 =?utf-8?B?dC9NZ3JEMmxCcmlhZU1pWGYzZitzMWtidG5wd3NFNFlDS2lyMFlnK2UvaU9T?=
 =?utf-8?B?TGhoVk9KdVhnUi9sb0lwdXhPQ1RySGo2Z01KckExeTlJdnBTbk5oQWNrVW8y?=
 =?utf-8?B?RWFINzkxR3UxYy9vc2ZWb1h1OFdadVd6R25kWTJJR08xaHNwSVdNcmZoNW1R?=
 =?utf-8?B?V2tkbllCaUxwSlZrM2xoaUhXLzd6NDB1R2Z6elRSSWxqYVUxYTRQd08yeW1z?=
 =?utf-8?B?ZStCVHRCbWNZcW9TWUhUalNkajBhcGh4STg4NXp1bnNSUzlkYXJlSEFURE4x?=
 =?utf-8?B?SWUrUWtTdm1LMDZrRWU0U0ZjWUlhL2l3Q0NOSU9OYWx0cTdHVTlMWHl5NFMw?=
 =?utf-8?B?Q011b2RTNFQ5SFNpRGlPNklnT2VmOERpRTFFZ094TkNzMGU4TXpBT1NpNmdO?=
 =?utf-8?B?akZaK3cwcXVCN3hMRm1QNU43ajFvQndDZU5OTjF3QzFSdDh6OXZmQThDV2xk?=
 =?utf-8?B?U3FKK3hoaGdyUXRHMDBJRk5TcFdyYnYyT25MUGtxcXJnT1g2UXA0MjZHRVhQ?=
 =?utf-8?B?L1o1L0daV2VXTk1nSnRmQ1R5djhseVNUbmdMM25qbGZFSXpOQlkxS0NoV0Jm?=
 =?utf-8?B?ZVVGNXg1c1hGbUkxNlAzeW9uZzBheWlPNGxSNlVRNDRmSkNkREorOGlkUzBY?=
 =?utf-8?B?RFFtYitBeDAwUzh3cERaYXU2Vy9rQzA5UEpyME5yamNza3o1enhtNU54NzNw?=
 =?utf-8?B?K3RPZXc4V0RBQ2RyalBEWnlLZEFOWW1jS29lRm9IYzJWcWQ4ZXVNVkdGS0o5?=
 =?utf-8?B?OFhuSWVickY5U0FldmwzbWVHNWJGS2FqSGxIaU5Lbi9kWHMvcW1tckpFdms3?=
 =?utf-8?B?aFhJQzF1cUNxdmJsMlU3NXNUOUM0TC95bWlDYzJXRFVPME1SNGtKUWwxck9n?=
 =?utf-8?B?bEpRK3E4TmE0dEhyenVrTGo5cE1nT0FKNTczZnNzc1loOGdTVHpFMktaYVdv?=
 =?utf-8?B?SDVMN3BjTGMzRFBVV1JyNzRvc2FsY3lSTjlUZHpaNUdWQ1IwY2RMRUFKbmdH?=
 =?utf-8?B?WG1Mc2ttcVJDM3YwcklVNjVsdWs2MGgrWXVzQmI5TzF3TEx5SHdvanRaR0oy?=
 =?utf-8?B?cnBNSkRHaWdwZndWck5QeWIzYTJOYzcybStHSTY0SVd0b1orTndOREVpcjNS?=
 =?utf-8?B?VlVnejNuamJmaW8rdCtwcTdjKyt5MTU4TThZYmU3dFRBbFd5dFFGTE5kTno1?=
 =?utf-8?B?amtRNTBJRTNTWlJKdytWb3RVSXpBVEhFTHc2aDdybmZ4T0oydm02bHRVR3E1?=
 =?utf-8?B?bE9hMXhEbTYvWlhVT2FDcnM3bnl4d2o4VTVnb0JaNXFXM1dCbnRoQkhSb3ls?=
 =?utf-8?B?RWZydEpUcUk1Y2RlKzJoMFBrT1NaR0l1QzVsb3d6eEpLeE42QXVmVTE4Uzkw?=
 =?utf-8?B?cXZlR2N5d0hPNEd6OGZLVTVCRjYrcVFkWGVrQ3hQZFk5bEtEZkF0enFuNERY?=
 =?utf-8?B?M3JSVzdTQzZYcU5wZkczNTN6QTZoSVR1NnIxN2w4clFOV1o0TTk5TU1Od29B?=
 =?utf-8?B?dFltWnNlWUUxaTlCazZYQ1NhOWdPL01HTEdMWlNWQ3gvTTBkWmZBc2Z4elpR?=
 =?utf-8?B?VWNyNkRFdHlZU3pDZDZZeUpZV1hYUERVbk0yMGM0L3l4S1A5WURTcjg2Wk9P?=
 =?utf-8?B?eC9qQ3pEQVlQMTNCVS9iQ3lRTnlEckxsS2kwWTdCMlg4OXZlTDZGdnlRSW5i?=
 =?utf-8?B?Z3lWZDhvbCtPT0o1bmtCZlhwUmxOYk4xbGdpVjhxRUF3S0MycjFoUTZjSjl6?=
 =?utf-8?B?QXl4NmdsV3kvYzFleDVUUWJOV3JxYmJaV1RWdGF2emdVNllPcVhvNGF4Tk42?=
 =?utf-8?Q?bkJEVoQMD0pKD5wM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 039a77ea-1fe9-4980-1e2d-08de63e2ee63
X-MS-Exchange-CrossTenant-AuthSource: LV8PR11MB8722.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2026 11:45:45.5442 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TVX8I1ubTs/jMTJIFu7eiRWqZfTnOrcOU9uQVpM3Q8hhbsYlkzMeijsEe14c088bIVs9ytbyl9uTBQxlFfKZnpqmpDs4ll8mjcJSaYhVPdE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7606
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Wed, 04 Feb 2026 16:22:28 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770205551; x=1801741551;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6TqBqApt8duFSdAYFdfUj45+MFUUXmtstZKe7mg0OUQ=;
 b=gIHh4s9Hddry4Ccfmc5mQYvxdUKkWGupksO0eu/5pEtKDNadYELtGTbM
 TeMKeV/92vKiJZGbdQ9m15XrQsy3fDJJpdU9XwWNTQzvWqcVJVFDSxeI/
 1MbGDvZH2dlDy4lBl/2FSax4re8TPJNcznoWNuTt2ccNmshsrW6xmka7s
 SjwrzAzSGaQfkjHG6XIcC8hfZhmz9vANQlbe2qDqV1UnXnq/33kOYttVU
 t8T01AVbLyhUHPP+Rsh2l0DuQ5PMxNSUZS8n/PWUttxXzAn9XNoeeDv1Z
 uc8ti5kfJHMasecLuLnWISuVo6SC7xKSCVBxltw35GdLo/qORSY4VKI3d
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gIHh4s9H
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 06/10] ixgbevf: XDP_TX in
 multi-buffer through libeth
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
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:e1000-patches@eclists.intel.com,m:maciej.fijalkowski@intel.com,m:natalia.wochtman@intel.com,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[aleksander.lobakin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksander.lobakin@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:mid,intel.com:email]
X-Rspamd-Queue-Id: 10837EA23B
X-Rspamd-Action: no action

From: Zaremba, Larysa <larysa.zaremba@intel.com>
Date: Mon, 12 Jan 2026 16:53:11 +0100

> Use libeth to support XDP_TX action for segmented packets.
> 
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>

Thanks,
Olek
