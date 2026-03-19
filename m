Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gPgsMv3Ru2k4owIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 11:37:49 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A281F2C993C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 11:37:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BD548409DE;
	Thu, 19 Mar 2026 10:37:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LmprPRVpqlRk; Thu, 19 Mar 2026 10:37:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1A31940982
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773916665;
	bh=+dWorr/dJN7xCVHqDF13iE7l7+KnxCAQRlfLgQSGXM0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=c3B0aomYCLTPG3CNh9FXOY6YePqWLU4ltJcnh/ZcC/V/EIEkSjcA1e2pSqPyE3MJo
	 KyCZMorAEQ9t8BCmcwnXLx1gum+bIZYuAu8Qe+RYfVwcvm6bGnEe9Mn0OGyzgYcvtl
	 N73H5eiWfCpHURhK0QsGwzoPJSo90c3wGJQJSyGbsBcm5JuxMTilGQ7qQmvpVfA9Tc
	 8tft0a19T12ffWxwcqXu2U5mexQQb+TvtdlFWRZXhpf4KQZTmFV3it295a/fXqmTRR
	 IA1xibOO/wKAcChiiK77Lhmf52nPHWMWbQzbCOUIC8uPXy3BzL5CDMgCvy1oUsB5iP
	 7pkCiuXAjPQuQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1A31940982;
	Thu, 19 Mar 2026 10:37:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 494B01BD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 10:37:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3AC6340940
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 10:37:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q6DcOZj4Ge4E for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Mar 2026 10:37:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=patryk.holda@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 74E9E4091C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 74E9E4091C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 74E9E4091C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 10:37:42 +0000 (UTC)
X-CSE-ConnectionGUID: lnUuDBpQSvClH9enVsZW2g==
X-CSE-MsgGUID: GVmWEFCoTZOfDJtkDUIdtQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11733"; a="73998552"
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="73998552"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 03:37:42 -0700
X-CSE-ConnectionGUID: Z9Y1pYImRCqGiIQf2LwWKw==
X-CSE-MsgGUID: +3uqetkgQAy162L4FML4mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="219894044"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 03:37:41 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 19 Mar 2026 03:37:40 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 19 Mar 2026 03:37:40 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.50) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 19 Mar 2026 03:37:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nV2f+bzG2Y1zqkp9q31X8LrXEXlIvPCsz0M1fcq2cpJ8hdW1vb2mlq767f05gwIJmL8NjZ9UOroicfqiJA7C/OPyPmTqCLegdoQ/N2esTSWxwtlOdVZQu3B6V0vgRDRQFXVzyPeZd6fbuPGpBQCMrYi3JIOJISSvIoyTKWwyUyrM3b3CE5u636iF03+NpSeuA26rn3MT+7S95Ie67pTmHQki9J5Qz3tTOm25VUqoiz//dJXZYyhVdp4eKneED+UN5pfNmvC8W7S8ib6FILJDILp2mf2NRgPKYMFUTIfBxaqcux1JCUfgaNzuqi00IcsaQxeyulvfm7hKBtEQUBBf/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+dWorr/dJN7xCVHqDF13iE7l7+KnxCAQRlfLgQSGXM0=;
 b=FJUkKt1wbvtx80jJmKfkDgQchv6hykkOfhTjaPA2Zc0j6uoLtn7ppTg2heoVU16KkZMxx8VWPk7jjdIqwC65C2TaHPDmNGVB7FAMAxTN3vS9udaKaRGvGFPDKu8zqzDtvL7wqmZkJ3Funx5A/UE2yR4300OffpfhT6U2lC5lBQqzLXzTgFtX+k7VWiSKNCHPqkxe+Hcn3T8WShmbXWhSZKczo2TS545JCbNIkkjnSiogdtGTpFyXtNpQEVGXEzuxbnbxB49ueW82sZ97MrNq1ZyKtnWe+3FeHKWsxD/dbMUwApYoe17/+GvXCzsWIXchNvTPh3a4dnVAHr0WoC1XUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9301.namprd11.prod.outlook.com (2603:10b6:208:573::20)
 by CY8PR11MB6916.namprd11.prod.outlook.com (2603:10b6:930:58::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.19; Thu, 19 Mar
 2026 10:37:28 +0000
Received: from IA3PR11MB9301.namprd11.prod.outlook.com
 ([fe80::714b:7d3e:aa0:104c]) by IA3PR11MB9301.namprd11.prod.outlook.com
 ([fe80::714b:7d3e:aa0:104c%5]) with mapi id 15.20.9700.010; Thu, 19 Mar 2026
 10:37:27 +0000
From: "Holda, Patryk" <patryk.holda@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Oros, Petr"
 <poros@redhat.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>
CC: "Drewek, Wojciech" <wojciech.drewek@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Eric Dumazet <edumazet@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Simon Horman <horms@kernel.org>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, Jakub Kicinski <kuba@kernel.org>, Paolo
 Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 2/2] ice: use
 ice_update_eth_stats() for representor stats
Thread-Index: AQHcm/TA94F6OT9T00SDoZU2J8y3pbV+ujkAgDcmirA=
Date: Thu, 19 Mar 2026 10:37:27 +0000
Message-ID: <IA3PR11MB93014B1B216D582FB773CABB8A4FA@IA3PR11MB9301.namprd11.prod.outlook.com>
References: <cover.1770882260.git.poros@redhat.com>
 <27c3027a6cc22b565e2a741bbf5ee7d3382e80d7.1770882260.git.poros@redhat.com>
 <IA3PR11MB89860309716B8F26B066FE10E560A@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB89860309716B8F26B066FE10E560A@IA3PR11MB8986.namprd11.prod.outlook.com>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB9301:EE_|CY8PR11MB6916:EE_
x-ms-office365-filtering-correlation-id: 833a7ea1-7efc-46e6-e41b-08de85a3844b
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|38070700021|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: a8kKYAlfQEtWkWTpUdaLCt3cPXOJqM1R1dJAyVweAaNgdwWU7cXWcupeWgSf1EQcQ6Dz/xQ1C8+GC4lDE0P68oNSkRdBBZvVQyGskWJMSKGPFQLzSXrHXY26vgK9YtcvRPhgYdSEgl5lbW8Gsv5b2wkPWN6jNSX6hdX88lvS0JwSAJTD70fm2BCd+Szcvn3qI6ALQfBvuWI+rvl1mqCGcAjtwmgLuD9rScMemeP5efyQvc/XZEq1gLQUScbSKnididz/Yd2JNPQsCqG3gA9Q0TANBfkCJc/C/R/eZu+dyfNKmoc/H8xanrFN40/BeE+wnxFZ2lrnh5+1hDgOoQ0ROEYeHBYQMslXmJZc63w6IyliqSesepEpihC814zzUWh7lA8LmZNXxINBoG5xAy7ZFDYCokwdbSn/0kNgdSdkNErqiZYxV1MJz8GUJlT4D64HP9WLfazfN0TMC1FRWsxJ5eXHFDhcEKaatx2flGcYPsIZXsQclYX9RTl4GPvvg3vYLUQaDb3qKTJhuG4CPQMlDsCa8sRalPYiSPzhHRvbQGjZkmRMprGBosZEaVzLqxnKpvU3U51bNb9ZHUyFoK4kRQGs+ZllfwffqV2jWRS3ThDxf+4HdWmwxYed6LAvwWn2fqW+7txdjFtumZf2MEErlToCjhGzhfaXrutR3x0OVnydWZ/mie+9amvmUinnjeTIeugXa7zRUEqKV8qSWfGe9fCHSzbe6BSGzjweR+mOADMPO/Hco8dhFod8gsnUeMoin4RxNb7xNxyCNuN71xwYe5apPgqfS1S+lcozZb4K7zc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9301.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(38070700021)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MUl5aG4yNjVrNXF4ejRFenlkVUdNVEFXME1UTXNKOGYySXVCdW1iMjdOaTFS?=
 =?utf-8?B?bTRDa0NSc29xeE9meHVPRUVzY1hIZTlDOGtWdytLaVJNbGtoaXgrUHVramtZ?=
 =?utf-8?B?WmhWTkc5cVdSaFhRR092anh1SnJicTdObW9jVlMwakkrMXFLbkJxYjVTWnd6?=
 =?utf-8?B?c29xa3F6RmVTZXlVNXM4R2tYcFhCQXhLQzBYSk5DTnBPdExobEpDUnJRZmtO?=
 =?utf-8?B?dXhqbnZQamN1RW9MWjRhRzljYzV6MUV6SzBnbWdFUURIWnBRL21mWEFDV2xB?=
 =?utf-8?B?cnpZLzNNWU5nVGU4b0toc2p6WENZaWEwenlObm1KOVkxZ3VJaEdGRVo2M1M5?=
 =?utf-8?B?dUoyMWw0RVNjeEpCbHc5bFVLci8xTFExWHZTZkN2cXprdHJNblA1b1pNRmlW?=
 =?utf-8?B?UVZYblVRUFdDQWFZUlEydFM0YkhiWExRTHlYS1FaUkFOc01pZ1FVQ2c0T2RB?=
 =?utf-8?B?RTV3MUs5cVFENjErQmV0eE1jeXU0WXdwdEpqb2VPdVV4a2wrY3JieTRFKzRV?=
 =?utf-8?B?ZG8vcHM1a1luNjVKcWVIamh3eUxhMkFFaXJndlhqd1Z0NC9tbjRodEJBNEJm?=
 =?utf-8?B?OE5MRkc3Yi9vOW5LeEw4RVJpVm1kN3dkODRodTlneEZkZlVsYXRoZXBJYUhC?=
 =?utf-8?B?T082dEhzQng3RHdHVlcvMkVTWnlFUjErTE9raktSampJRjFXMjRRNVBKM2lM?=
 =?utf-8?B?cy9OK1M1NnVGNEEyVU1TQVRJdUlkcGdtbXhpdjJhRVlTbXg4SVhxZHVZdGEw?=
 =?utf-8?B?ci9RV2pNMTBtT3JzTlE0cEEwaVJJVExaZVd5VDFEYXlsTCtJdVNuMzl3YTAx?=
 =?utf-8?B?WTl5VjZSNkhJM3p6cHhhK1Bldkl3SnlISzhGRzd2MWpJZFRNdm50dWNiZ1ps?=
 =?utf-8?B?Z2JqL1EwakdRbFJtZ3BMZEdxRmVPRkozNU80U1l3bTdVTnNNeWdvUUQ4ZCtN?=
 =?utf-8?B?SFZ5amtwUncwYi9URi9QYVBOMkg5NEN6NnAxMElPVktmL1BzeXBBSUVKcXls?=
 =?utf-8?B?QUFSQWt3YURVVjlIODhoZVNIbG13QmIvdFNJSi8yR1V4Qy9qbnYxam5neXdM?=
 =?utf-8?B?S3dwWHVGVUZCdUo2aktySXp4bWYzN0lseDB4WmtCeVRZdDRyYkZFR2x0QXd5?=
 =?utf-8?B?Zlk5d0JDRUhEZlQ0VnpQU0RyQU5WRzlObWtuTWtxM0IvbWxwKzl3V0EwYlFN?=
 =?utf-8?B?QnlVVU50MmtKOWhzOFBXczNCd2FPVm9CYU5hSjg4b1pNdDl5aW5ac2NzZUJl?=
 =?utf-8?B?Zk1kTC85MG1SclhVV1I5S2VITzczR09sNG9RY0RKOHVjd09QL3VFVDlTSEs5?=
 =?utf-8?B?MUpvMnVvSGRFcEcycGRjLzd4aXlmRk56bDhtdE9TTDF5SkRMVG9kQTRmZHZs?=
 =?utf-8?B?NHBLK0haTGd3TjhYYld2TGpzWDJlL0RzVzJkcFQrNVl4OS9GYlVmcWp4SkR4?=
 =?utf-8?B?RlVKdWJENzNyTFRabnRtODNtcnVubldDTHJDM05oZUFLUFJhVjVhcVhrcTM5?=
 =?utf-8?B?L3V6eTJhUE9yNld4emlMR3RwaDVXaWVWOTFyNzQ4TTMrYStOTnlvTXMvSTdr?=
 =?utf-8?B?SEtjMERGRTVDYTZQY2trd0NxSWV1a0dVMngzNTBYZHBTOUo5Z1J6d3U1VmJn?=
 =?utf-8?B?RVdkY1dNQVMyZ0hZMmxDNEN1bHRlRTk3dmxnRXE4SFo0MjIySWlKTGpxcXdT?=
 =?utf-8?B?aVVpTGtKSHVFKzY2U3lNbTFCRU1KeGd1UWcvZDVUd2t6TnVHVnlZcGtFSmJK?=
 =?utf-8?B?Z2FoZ1VWNy9LMDRqcTNyWjV2dlVYZ2szb2tQZWRBYXIydHlwSjBjM0FjbGk0?=
 =?utf-8?B?eGcwZmpqaXBUVjE5eTFndFplZlFYS0ZBb3AweGpjc3hvN3pFM09weWR4eWxk?=
 =?utf-8?B?VmN1bVJxd1dtSVNWSVR1aVJNQmtEcExSYmdJbkZwZk5jSlVXOUxYTGdkRnRt?=
 =?utf-8?B?V0NtZXdZOS9LRTAwWHNlSWg0dDMyV3VJbVZqenVrNUpTbFlPSE45OUpNMytR?=
 =?utf-8?B?MFE5Ty9CMFJjZS9PK2tGVWR0dHRJRGpwN1dsMm9uVGRFUlhZYXI1Tk1mUTVp?=
 =?utf-8?B?ZFJweG5ZWi9aWTQyejZJb1U0VldMQjc5RjdUY0RhMUdROHZ3YXdEQ2tSNDlC?=
 =?utf-8?B?Z1B0VEJHZWNtVXZ1VDRicDBYaHV4bTFZSVFnYnJTUUtlREtMZEJiYjV4TXo0?=
 =?utf-8?B?Z0Y0UG9lbXRsL0FTUHhESXU3SHpNcyt4d21uQXFYNVAvVHNBdURZOWxZa09R?=
 =?utf-8?B?STdEYXJQdDJza0RrMWNxdURUYTdvd1prY0NCZU5sVmlzUDVNaE9iVVZ4QlUy?=
 =?utf-8?B?eUZmd24zYXdjN3Qzblhpc2dPWmx1bml2eHBPZXBqTTYrWFdFSmxWdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: igARmpzQ6USYTziKpJXYSAtLo2Da2G8zrU99akqUbgRi8gGeDOF5pGiODiSXq93YaF/gRpSQXaudgor3/W+FGJXPXfzA8tpC02iKzNPqn9ckWJxKUzJbT7Jf7Lli8Wa+XPJ9gboST6G2rKQXOM79Uq/Vs49E1qbrBuIKyOvYznDhJjLljwSVccr9jVGNDB5tg4hcPT2FjCRiL5oPjCW9WXeibM888H+KKYN7qCSSX27IdnVpL7qw/plUCSxNpCx0pYsUm5RaOKMSpQvMq9vBN77EUGscS1jEE/sGbE6zrbpKOnus9r5ybHU6X2DyTJphKmtT+z8IXRKgO/oLC6fh3A==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9301.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 833a7ea1-7efc-46e6-e41b-08de85a3844b
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Mar 2026 10:37:27.8886 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zuAJwlMJqyY+NbDBcS8DY+J/wovo2HiBvgo2vOUqmOSjYDq4xDe5NFGUe4gkn8oFaK9QLKM3LxKJqnlABvEwDw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6916
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773916662; x=1805452662;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+dWorr/dJN7xCVHqDF13iE7l7+KnxCAQRlfLgQSGXM0=;
 b=W3yqrRVll1NKB+teCYfedaIJmwevJ9Xxb+Na6WqwyAR5hEJMbFq918z5
 lNCzwmO08BwY3iD1RkoffMaEeB7W+vVv3zFvccGMnl0jSMXCodJIB7BWs
 u1APiidKCaEeVazAxCp3wta0juJHO9ZaP3qNYoPSCVWWZzym7KKCFWvlG
 Tlua7i646AGcoX8BeNP8XZkEweRQHIM2hqgDCB06024P0yloRvPffqOdk
 iw1jGcD6UuGPzA5pvteqoXYneM+eKc816Xdj7h4YU/QHG5Tpq07bsQdfM
 mT1x14MJQDluWWI2dUPR0rObxcQL4Ke1Nm+ETcTYy847zBDKoaTTvPjGv
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=W3yqrRVl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/2] ice: use
 ice_update_eth_stats() for representor stats
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
X-Spamd-Result: default: False [1.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[patryk.holda@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:poros@redhat.com,m:netdev@vger.kernel.org,m:wojciech.drewek@intel.com,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:michal.swiatkowski@linux.intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[patryk.holda@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: A281F2C993C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYgT2YNCj4gTG9r
dGlvbm92LCBBbGVrc2FuZHINCj4gU2VudDogVGh1cnNkYXksIEZlYnJ1YXJ5IDEyLCAyMDI2IDk6
MjUgQU0NCj4gVG86IE9yb3MsIFBldHIgPHBvcm9zQHJlZGhhdC5jb20+OyBuZXRkZXZAdmdlci5r
ZXJuZWwub3JnDQo+IENjOiBEcmV3ZWssIFdvamNpZWNoIDx3b2pjaWVjaC5kcmV3ZWtAaW50ZWwu
Y29tPjsgS2l0c3plbCwgUHJ6ZW15c2xhdw0KPiA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNv
bT47IEVyaWMgRHVtYXpldCA8ZWR1bWF6ZXRAZ29vZ2xlLmNvbT47DQo+IGxpbnV4LWtlcm5lbEB2
Z2VyLmtlcm5lbC5vcmc7IEFuZHJldyBMdW5uIDxhbmRyZXcrbmV0ZGV2QGx1bm4uY2g+Ow0KPiBO
Z3V5ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBTaW1vbiBIb3Jt
YW4NCj4gPGhvcm1zQGtlcm5lbC5vcmc+OyBNaWNoYWwgU3dpYXRrb3dza2kNCj4gPG1pY2hhbC5z
d2lhdGtvd3NraUBsaW51eC5pbnRlbC5jb20+OyBKYWt1YiBLaWNpbnNraSA8a3ViYUBrZXJuZWwu
b3JnPjsNCj4gUGFvbG8gQWJlbmkgPHBhYmVuaUByZWRoYXQuY29tPjsgRGF2aWQgUy4gTWlsbGVy
DQo+IDxkYXZlbUBkYXZlbWxvZnQubmV0PjsgaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5v
cmcNCj4gU3ViamVjdDogUmU6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV0IDIvMl0g
aWNlOiB1c2UNCj4gaWNlX3VwZGF0ZV9ldGhfc3RhdHMoKSBmb3IgcmVwcmVzZW50b3Igc3RhdHMN
Cj4gDQo+IA0KPiANCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+IEZyb206IElu
dGVsLXdpcmVkLWxhbiA8aW50ZWwtd2lyZWQtbGFuLWJvdW5jZXNAb3N1b3NsLm9yZz4gT24gQmVo
YWxmDQo+ID4gT2YgUGV0ciBPcm9zDQo+ID4gU2VudDogVGh1cnNkYXksIEZlYnJ1YXJ5IDEyLCAy
MDI2IDg6NTMgQU0NCj4gPiBUbzogbmV0ZGV2QHZnZXIua2VybmVsLm9yZw0KPiA+IENjOiBEcmV3
ZWssIFdvamNpZWNoIDx3b2pjaWVjaC5kcmV3ZWtAaW50ZWwuY29tPjsgS2l0c3plbCwgUHJ6ZW15
c2xhdw0KPiA+IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPjsgRXJpYyBEdW1hemV0IDxl
ZHVtYXpldEBnb29nbGUuY29tPjsNCj4gPiBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOyBB
bmRyZXcgTHVubiA8YW5kcmV3K25ldGRldkBsdW5uLmNoPjsNCj4gPiBOZ3V5ZW4sIEFudGhvbnkg
TCA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBTaW1vbiBIb3JtYW4NCj4gPiA8aG9ybXNA
a2VybmVsLm9yZz47IE1pY2hhbCBTd2lhdGtvd3NraQ0KPiA+IDxtaWNoYWwuc3dpYXRrb3dza2lA
bGludXguaW50ZWwuY29tPjsgSmFrdWIgS2ljaW5za2kNCj4gPiA8a3ViYUBrZXJuZWwub3JnPjsg
UGFvbG8gQWJlbmkgPHBhYmVuaUByZWRoYXQuY29tPjsgRGF2aWQgUy4gTWlsbGVyDQo+ID4gPGRh
dmVtQGRhdmVtbG9mdC5uZXQ+OyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZw0KPiA+
IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV0IDIvMl0gaWNlOiB1c2UN
Cj4gPiBpY2VfdXBkYXRlX2V0aF9zdGF0cygpIGZvciByZXByZXNlbnRvciBzdGF0cw0KPiA+DQo+
ID4gaWNlX3JlcHJfZ2V0X3N0YXRzNjQoKSBhbmQgX19pY2VfZ2V0X2V0aHRvb2xfc3RhdHMoKSBj
YWxsDQo+ID4gaWNlX3VwZGF0ZV92c2lfc3RhdHMoKSBvbiB0aGUgVkYncyBzcmNfdnNpLiBUaGlz
IGFsd2F5cyByZXR1cm5zIGVhcmx5DQo+ID4gYmVjYXVzZSBJQ0VfVlNJX0RPV04gaXMgcGVybWFu
ZW50bHkgc2V0IGZvciBWRiBWU0lzIOKAlCBpY2VfdXAoKSBpcw0KPiA+IG5ldmVyIGNhbGxlZCBv
biB0aGVtIHNpbmNlIHF1ZXVlcyBhcmUgbWFuYWdlZCBieSBpYXZmIHRocm91Z2gNCj4gPiB2aXJ0
Y2hubC4NCj4gPg0KPiA+IEluIF9faWNlX2dldF9ldGh0b29sX3N0YXRzKCkgdGhlIG9yaWdpbmFs
IGNvZGUgY2FsbGVkDQo+ID4gaWNlX3VwZGF0ZV92c2lfc3RhdHMoKSBmb3IgYWxsIFZTSXMgaW5j
bHVkaW5nIHJlcHJlc2VudG9ycywgaXRlcmF0ZWQNCj4gPiBvdmVyIGljZV9nc3RyaW5nc192c2lf
c3RhdHNbXSB0byBwb3B1bGF0ZSB0aGUgZGF0YSwgYW5kIHRoZW4gYmFpbGVkDQo+ID4gb3V0IHdp
dGggYW4gZWFybHkgcmV0dXJuIGJlZm9yZSB0aGUgcGVyLXF1ZXVlIHJpbmcgc3RhdHMgc2VjdGlv
bi4gVGhhdA0KPiA+IGVhcmx5IHJldHVybiB3YXMgbmVjZXNzYXJ5IGJlY2F1c2UgcmVwcmVzZW50
b3IgVlNJcyBoYXZlIG5vIHJpbmdzIG9uDQo+ID4gdGhlIFBGIHNpZGUg4oCUIHRoZSByaW5ncyBi
ZWxvbmcgdG8gdGhlIFZGIGRyaXZlciAoaWF2ZiksIHNvIGFjY2Vzc2luZw0KPiA+IHBlci1xdWV1
ZSBzdGF0cyB3b3VsZCBiZSBpbnZhbGlkLg0KPiA+DQo+ID4gTW92ZSB0aGUgcmVwcmVzZW50b3Ig
aGFuZGxpbmcgdG8gdGhlIHRvcCBvZiBfX2ljZV9nZXRfZXRodG9vbF9zdGF0cygpDQo+ID4gYW5k
IGNhbGwgaWNlX3VwZGF0ZV9ldGhfc3RhdHMoKSBkaXJlY3RseSB0byByZWFkIHRoZSBoYXJkd2Fy
ZSBHTFZfKg0KPiA+IGNvdW50ZXJzLiBUaGlzIG1hdGNoZXMgaWNlX2dldF92Zl9zdGF0cygpIHdo
aWNoIGFscmVhZHkgdXNlcw0KPiA+IGljZV91cGRhdGVfZXRoX3N0YXRzKCkgZm9yIHRoZSBzYW1l
IFZGIFZTSSBpbiBsZWdhY3kgbW9kZS4gQXBwbHkgdGhlDQo+ID4gc2FtZSBmaXggdG8gaWNlX3Jl
cHJfZ2V0X3N0YXRzNjQoKS4NCj4gPg0KPiA+IE5vdGUgdGhhdCBpY2VfZ3N0cmluZ3NfdnNpX3N0
YXRzW10gY29udGFpbnMgZml2ZSBzb2Z0d2FyZSByaW5nDQo+ID4gY291bnRlcnMgKHJ4X2J1Zl9m
YWlsZWQsIHJ4X3BhZ2VfZmFpbGVkLCB0eF9saW5lYXJpemUsIHR4X2J1c3ksDQo+ID4gdHhfcmVz
dGFydCkgdGhhdCBhcmUgYWx3YXlzIHplcm8gZm9yIHJlcHJlc2VudG9ycyBzaW5jZSB0aGUgUEYg
bmV2ZXINCj4gPiBwcm9jZXNzZXMgcGFja2V0cyBvbiBWRiByaW5ncy4gVGhpcyBpcyBwcmUtZXhp
c3RpbmcgYmVoYXZpb3IgdW5jaGFuZ2VkDQo+ID4gYnkgdGhpcyBwYXRjaC4NCj4gPg0KPiA+IEZp
eGVzOiA3YWFlODBjZWY3YmEgKCJpY2U6IGFkZCBwb3J0IHJlcHJlc2VudG9yIGV0aHRvb2wgb3Bz
IGFuZA0KPiA+IHN0YXRzIikNCj4gPiBTaWduZWQtb2ZmLWJ5OiBQZXRyIE9yb3MgPHBvcm9zQHJl
ZGhhdC5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9p
Y2VfZXRodG9vbC5jIHwgMTQgKysrKysrKysrKystLS0NCj4gPiAgZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWNlL2ljZV9yZXByLmMgICAgfCAgMyArKy0NCj4gPiAgMiBmaWxlcyBjaGFuZ2Vk
LCAxMyBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZXRodG9vbC5jDQo+ID4gYi9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2V0aHRvb2wuYw0KPiA+IGluZGV4IDM1NjVh
NWQ5NmM2ZDE4Li4wYjg3NzU2MjFmMTU2NyAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pY2UvaWNlX2V0aHRvb2wuYw0KPiA+ICsrKyBiL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS9pY2VfZXRodG9vbC5jDQo+ID4gQEAgLTE5MjYsNiArMTkyNiwxNyBA
QCBfX2ljZV9nZXRfZXRodG9vbF9zdGF0cyhzdHJ1Y3QgbmV0X2RldmljZQ0KPiA+ICpuZXRkZXYs
DQo+ID4gIAlpbnQgaSA9IDA7DQo+ID4gIAljaGFyICpwOw0KPiA+DQo+ID4gKwlpZiAoaWNlX2lz
X3BvcnRfcmVwcl9uZXRkZXYobmV0ZGV2KSkgew0KPiA+ICsJCWljZV91cGRhdGVfZXRoX3N0YXRz
KHZzaSk7DQo+ID4gKw0KPiA+ICsJCWZvciAoaiA9IDA7IGogPCBJQ0VfVlNJX1NUQVRTX0xFTjsg
aisrKSB7DQo+ID4gKwkJCXAgPSAoY2hhciAqKXZzaSArDQo+ID4gaWNlX2dzdHJpbmdzX3ZzaV9z
dGF0c1tqXS5zdGF0X29mZnNldDsNCj4gPiArCQkJZGF0YVtpKytdID0NCj4gPiAoaWNlX2dzdHJp
bmdzX3ZzaV9zdGF0c1tqXS5zaXplb2Zfc3RhdCA9PQ0KPiA+ICsJCQkJICAgICBzaXplb2YodTY0
KSkgPyAqKHU2NCAqKXAgOiAqKHUzMiAqKXA7DQo+ID4gKwkJfQ0KPiA+ICsJCXJldHVybjsNCj4g
PiArCX0NCj4gPiArDQo+ID4gIAlpY2VfdXBkYXRlX3BmX3N0YXRzKHBmKTsNCj4gPiAgCWljZV91
cGRhdGVfdnNpX3N0YXRzKHZzaSk7DQo+ID4NCj4gPiBAQCAtMTkzNSw5ICsxOTQ2LDYgQEAgX19p
Y2VfZ2V0X2V0aHRvb2xfc3RhdHMoc3RydWN0IG5ldF9kZXZpY2UNCj4gPiAqbmV0ZGV2LA0KPiA+
ICAJCQkgICAgIHNpemVvZih1NjQpKSA/ICoodTY0ICopcCA6ICoodTMyICopcDsNCj4gPiAgCX0N
Cj4gPg0KPiA+IC0JaWYgKGljZV9pc19wb3J0X3JlcHJfbmV0ZGV2KG5ldGRldikpDQo+ID4gLQkJ
cmV0dXJuOw0KPiA+IC0NCj4gPiAgCS8qIHBvcHVsYXRlIHBlciBxdWV1ZSBzdGF0cyAqLw0KPiA+
ICAJcmN1X3JlYWRfbG9jaygpOw0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS9pY2VfcmVwci5jDQo+ID4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvaWNlX3JlcHIuYw0KPiA+IGluZGV4IDJhODRmNjU2NDA1ODI4Li5mMWU4MmJhMTU1
Y2ZmMiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNl
X3JlcHIuYw0KPiA+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcmVw
ci5jDQo+ID4gQEAgLTIsNiArMiw3IEBADQo+ID4gIC8qIENvcHlyaWdodCAoQykgMjAxOS0yMDIx
LCBJbnRlbCBDb3Jwb3JhdGlvbi4gKi8NCj4gPg0KPiA+ICAjaW5jbHVkZSAiaWNlLmgiDQo+ID4g
KyNpbmNsdWRlICJpY2VfbGliLmgiDQo+ID4gICNpbmNsdWRlICJpY2VfZXN3aXRjaC5oIg0KPiA+
ICAjaW5jbHVkZSAiZGV2bGluay9kZXZsaW5rLmgiDQo+ID4gICNpbmNsdWRlICJkZXZsaW5rL3Bv
cnQuaCINCj4gPiBAQCAtNjcsNyArNjgsNyBAQCBpY2VfcmVwcl9nZXRfc3RhdHM2NChzdHJ1Y3Qg
bmV0X2RldmljZSAqbmV0ZGV2LA0KPiA+IHN0cnVjdCBydG5sX2xpbmtfc3RhdHM2NCAqc3RhdHMp
DQo+ID4gIAkJcmV0dXJuOw0KPiA+ICAJdnNpID0gcmVwci0+c3JjX3ZzaTsNCj4gPg0KPiA+IC0J
aWNlX3VwZGF0ZV92c2lfc3RhdHModnNpKTsNCj4gPiArCWljZV91cGRhdGVfZXRoX3N0YXRzKHZz
aSk7DQo+ID4gIAlldGhfc3RhdHMgPSAmdnNpLT5ldGhfc3RhdHM7DQo+ID4NCj4gPiAgCXN0YXRz
LT50eF9wYWNrZXRzID0gZXRoX3N0YXRzLT50eF91bmljYXN0ICsgZXRoX3N0YXRzLQ0KPiA+ID50
eF9icm9hZGNhc3QgKw0KPiA+IC0tDQo+ID4gMi41Mi4wDQo+IA0KPiANCj4gUmV2aWV3ZWQtYnk6
IEFsZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0KDQpU
ZXN0ZWQtYnk6IFBhdHJ5ayBIb2xkYSA8cGF0cnlrLmhvbGRhQGludGVsLmNvbT7CoA0KDQo=
