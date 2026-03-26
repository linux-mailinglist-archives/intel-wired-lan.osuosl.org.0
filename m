Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iLixEkLgxGnz4gQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2026 08:29:06 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B878330726
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2026 08:29:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6057A608C7;
	Thu, 26 Mar 2026 07:29:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zRUYwt46Ec4o; Thu, 26 Mar 2026 07:29:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AF42D60870
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774510142;
	bh=Onhv8oZfrGBb4V9JZD5uunPAy0bKT3IBYgBTfSTq3uQ=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QQSGCVXf6fgvPO6OQCdh6w3N4aRc8er7r1mCnwT4lmmHUtwOu8ttRBqwScCFQsZ+y
	 ScV/1/hPUdQc6UHZW4sJlWCj+vSTLJVUP3pVgaL2HunjCb0vZ0UGwA244Dd84ctfdK
	 PTJh8b+cWDEw3EQUMQOVvL2RJwPXmsDUN62O0ohD2J8nnXP0sXnQ/Io2dFEtrMOQU7
	 AB9M4APFNV2TeoiILVkT8bmeA+Bm34BuCj6sWLrSFn8e/3wzOxK4HBuQXmwIOTJwh4
	 OJEzfc3JrhHPmyvM65tzSBGyfmh0flzYpeUAfl//9iB6TMhr0jJXN5aNLJPnCCrs+/
	 OAzzMm8ecABHA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF42D60870;
	Thu, 26 Mar 2026 07:29:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 60ADFF5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 07:29:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 520F6811C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 07:29:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lw_Jlt7pPx6A for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Mar 2026 07:28:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 839D4811BF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 839D4811BF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 839D4811BF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 07:28:59 +0000 (UTC)
X-CSE-ConnectionGUID: woJpHdHhSMCD8ohM2iMZTQ==
X-CSE-MsgGUID: Hi/tfT9iRuepqs/v9YKplg==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="75522823"
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="75522823"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 00:28:58 -0700
X-CSE-ConnectionGUID: h/lXAVAbTSeV8MztubWyRA==
X-CSE-MsgGUID: rYhqM0bfSA6wajWl1h3Lvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="229855206"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 00:28:58 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Mar 2026 00:28:57 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 26 Mar 2026 00:28:57 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.65)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Mar 2026 00:28:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nHmaGl25DWebkx/nvmFizcVx/QepPWDt6/UMSBvh2jyTd9IKSoHvfMqVTIPz2o5Qire56jEYL8OUb0hM7xb/X1OuGJPR8teGUfmTId/JYyCak3GbN/f1rAJaEq6bI9fuw9+eeDw1ir6XNt723ZLcrWCTtpw0jhz97ZdFyFPKkWY+eaKe+6Sjrq3fW8QsxoVE8DbtEANpRG4fesU9wexjY73zvx0FBeYMw5d3KgnEMUjdcb5kRuP8Y4oyvdS2+LRi894dnud5zDryQfM3VXFq2xHQ7GOWrMAD/IjoZUcVBPR/xiUjmBxWlS7OtnXQWGgfvwIMzrSKlK1M5D3aK9vSxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Onhv8oZfrGBb4V9JZD5uunPAy0bKT3IBYgBTfSTq3uQ=;
 b=UZ8yIXIGU7sMncGnvoV5keAvkZfNKRKZV3lL2NKT+B54VfhqX3GbEP5vCgo9ogUcMLY01OlKC6zlseyxsJX9XfkM9F7hmaslPrzDycpv0mgmTgKuVFdODtwYXPwEOM80wF69cLwOENQXqd67hu9GtWMA2xndhDBrVEAsxVMaPyuxn6P4hvj8V4yAIyqGqc719uirWmkJLAv8dAxwop5zBgnYcf+YmAW6EpAEOt16e11UDY8KXLXpI2qXHGkWylQfR2dBp8nZvXRMWUI6RV+ddQd0zriYZszK+8y9irUwIYWAyLvcPYQfOUFSkYJU3dO6n/uVfrDWADkqaAQyV1KTJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DM3PPF341F90799.namprd11.prod.outlook.com (2603:10b6:f:fc00::f19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.19; Thu, 26 Mar
 2026 07:28:49 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9745.012; Thu, 26 Mar 2026
 07:28:49 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Agalakov Daniil <ade@amicon.ru>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "lvc-project@linuxtesting.org"
 <lvc-project@linuxtesting.org>, Daniil Iskhakov <dish@amicon.ru>, Roman Razov
 <rrv@amicon.ru>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 2/2] e1000e: limit
 endianness conversion to boundary words
Thread-Index: AQHcvGp4+lneq3oTPUKtds4fnaKmg7XAa37A
Date: Thu, 26 Mar 2026 07:28:49 +0000
Message-ID: <IA3PR11MB89860C93C05BD46F0BDC3E71E556A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <a70a49a0-43f8-4908-993a-50999bf0dfa8@intel.com>
 <20260325151615.1407182-1-ade@amicon.ru>
 <20260325151615.1407182-3-ade@amicon.ru>
In-Reply-To: <20260325151615.1407182-3-ade@amicon.ru>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DM3PPF341F90799:EE_
x-ms-office365-filtering-correlation-id: 135a2e60-d8a1-4b16-bf44-08de8b0952b6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|56012099003|38070700021|22082099003|18002099003;
x-microsoft-antispam-message-info: VLbN3JtSINCOSxXXaACKe+uBLg9AgPtaB00dTQMT3DlhXQm2URmDEML5Wtbr3gWs/nAaKcrxiygo1/xR8/oULkzQlqpmZ3Ld6NecHPxoCsSvG3lPYKqDnsjVsvLTXktymAMAyb46k9hjH0FPpNJzaK3rvjtuWY7tlzXveSQukh2dk+B4bihiY476m3WrR+wP/cCFET3NsT/xJYk03UOiA1X9h2IUwhtm+fJUuQj0jkERg/InfWFM95THo5111/fT2hV6H4Syy4c6SFCwXbE343A83ByaVkIWQXd2Bm6a9BiKbPGg4o8uVh/RWtrU4a+OjzbVBnKsQaE2WeV7F9xRozTTHBDrO22md5xPofaIQDJ/10X8Gkx9BaeTfD/PwSsticXPiHSuQa/t3Lk9i8d8jnFoRjrsMNf6/mGFBif+KhMgCDEzeRnwAriR3+dLfvTInVA70gP0/auuX4haCsbUosNeICobVsJ7Qbo76sNHf+nqKrid4kI3vFV0ZgSK9QicH/FxsIsodEpXggIkwh8Qus4zGtKTCzjW6NtOHIVLLGtkmAP7/Oq7pggEsrr/Y7NqSbAvVIN1mVPOc7sv2QdWfwEjnr8Z71A518wKh0yf2fdmg/YwTjMXbo4A+MFBiqSLlj2ztpQhflxQgvZpwpwdre68KtzYOC5t8JJTKKUxmGreV+PaFZz8Kq7DPvNTg56kCwzyVxNg/+9Tcdfk4RSAlK+jeJIecL2C4zZkpPVnq3EaIr+I0mR31r+6icIYE4w5sd+qJzAuMDLEtI3Z961YTTt6UBwBl8eLsxjH3UcW/Iw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(56012099003)(38070700021)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?84bnSW98XKqBKiD3+lLsaPTC+VjL3Zk0pNHLOXiw3KZZOSa/+z8W04+XZNYW?=
 =?us-ascii?Q?1qEVYJAC704LZP4flH8o5JzR7aXsvGOjfVRIureUm2ZRrzU8l/AljiOBybgq?=
 =?us-ascii?Q?lv/6BjI3AtWif2etQiki0l3ICcsYJ8WJwmgXQmX+XqiMTuAwJYO4l3RK3MZj?=
 =?us-ascii?Q?SufQbgrLAu2dk94ajN2o2N3kINAl3QXtmR/u136nDBgycKL+Ixf3iEg6idft?=
 =?us-ascii?Q?IG56xfzdlgIK7deQsbSNsjH0I2JKbm7uKt+Tb1Tx1iydVvrN0prMOaEUG1Fp?=
 =?us-ascii?Q?k53khB2y/OkqUT7SERLp1Dczd5cqFe7D9imJtbENhrHh54cUWzy5hDy/o/m1?=
 =?us-ascii?Q?Tuss2MsU8SlNmeRBNzQFmiHOMIqugFP5Hnnk/0lhKb+i4tLeM63K49OJRJCs?=
 =?us-ascii?Q?8sIKuacdCHB4T9/QtojIXOdKtNUWwb5+FKgDzOJ7Ym9DC99Q4qQF3TXCJbdC?=
 =?us-ascii?Q?b7GUVYCDaMs8J0pKkt20Go3CyVYkf2VJ+g/wuyLMcCS0lADrGm+tM3KgFY8h?=
 =?us-ascii?Q?rc5HP3wIfSmigIkCEpt64cPJRF0SJ9XJQUmg9DQ9N9K2hvukMO6gPhUo5spj?=
 =?us-ascii?Q?TVzbd6lrynmxHH+U9jUdoK6had+EHZwZvJDGDwRtJ0diSVv8Lq8Et5P6itIc?=
 =?us-ascii?Q?Sx37R/zBmksVysK2MFguvK21aWUbo8h76qX689buO+ckPBnkl6tFUQxMZuqd?=
 =?us-ascii?Q?Fgs6p6N2OxhHfA1WG8fooWMSYRwcl8f/Vf4LSFKX2dnGmNsBfVnVT/VNsU25?=
 =?us-ascii?Q?T4feuYe8A8lNnqonIXkVNklINhlAhqXLbZGeU/RXq8ebUC2UoWF8GcHA9BrN?=
 =?us-ascii?Q?1GJZCRVqSt/t0kSSnAbirNfbaHZ7HyC1y0IkOeI0ckBm7jAaRzRofT9Shrak?=
 =?us-ascii?Q?eUmQKySIMs1lD1OvO0Rq/JZ2FRFJueLHnPJ9lvcAQwaWg2nnMj3OHBEvdXju?=
 =?us-ascii?Q?HrMb8M79NlV/rhzXzLU2oh4yTPCGZ6L/kRcM/FX5hfh6NFfMXuEgCv5wrVUf?=
 =?us-ascii?Q?tdaumRjQMqnMW5N477X7CioY7XVL9kosSDPe+MBeqIaG8tmBgd/wIkXScpuv?=
 =?us-ascii?Q?Rnxkgi+2FmQBEESk5Ljl6UBTycRf7AVXhTlyVpRp1Dwek6m/5Wpx9ZqZcnIh?=
 =?us-ascii?Q?1jMLT3CirK+dM68uYfSVdE9DfG+yu0nIryxZa+ARaU7dUJ2cy3Fe0uSlRVYD?=
 =?us-ascii?Q?I+L6gXhXaSR+sJrw9i77GHELr7OYUg1kjV0KWdDs5QGdsEhEnjUWM5lvqrxR?=
 =?us-ascii?Q?O2MvX6ruqSnjdjWSMJQv+/HIFcrlsUq7qWXJcZSYjJu7MMZz9P2pEq2A8Q25?=
 =?us-ascii?Q?Op3XQOOVv/F84ogOJwPmDhPsYZt8tyDcD/Vp8fHs+gPbvMagXTC337QRBk5W?=
 =?us-ascii?Q?7E3spD9084QezTF3kg8NiaUtiFb0Hg+jap/LtuQeQq0IOk1dHp07HIqVm+ZM?=
 =?us-ascii?Q?c+73Kbe8lR3tPC0ZnwqMlNmU2LLEgbhSeB+v4GGIBPN1jRisFnqx0HksbxBh?=
 =?us-ascii?Q?pgLh/V+NZp4FKMVHvzrQ1QFGWSthLDLFfobVaI2TDVByxVMFvBZmsLlv9jxw?=
 =?us-ascii?Q?cZhyoXa/9nywxAfMS5AgoGRBDSSCz4M14Lf4L3jQgzNomZrem6HV6lOTGiIF?=
 =?us-ascii?Q?NQ12AyqJ8IkRe1avqdtDuLZQ5g91l3gKs7GPItv9jrFcuYFWB+rSaUnsCM/4?=
 =?us-ascii?Q?6DA4Kw4Ft/Lf3tF+YSPoDKdvqLw43xl26hMZL3d/qzn0g7NGdF3vn8XTcnPt?=
 =?us-ascii?Q?3+wGvuVYrxOaaBNbe7CcoZlqhTalOiU=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: YuKKPdVQtu7b1RwsV+FPVT5aeonG1xsH9+BBt7xHUlYWfUXUMtR6hzIgCm0BrwKRdIChm01FGbX3mvrTDKsHjFP1HVJWCHQ61UjhjgUqPsRsINn4xkL+Nu7v/WtSQDtGQ1GcQ/DTDg5PRptDzfzNK7z6Q7oH3OZY8dTfbFI5TdWe5ACbC6yd0HFsd3sK+5kxYMFQhG8qGtJfWh6jXTGTecjKiMXPlMazHBCDokI5IyA5UDvb7Zuj+h+4JKs4lF+SOCg0AxAO13eqsgD+nir2yS6AJGeB92TdQO5M2sCFStK5OHsm9rJbqR2FjQQuggE8TCc1fZILilsYlwoeYrGAuw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 135a2e60-d8a1-4b16-bf44-08de8b0952b6
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2026 07:28:49.1270 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tSCMA1Zut8NB4Ezw6s7eNbErLnbU0ODDNIkLXGqCoY7+C7xxMc8hbrLTJgnnTt6B48+p0VPF+dsSZqz7hfVBC45baNrOIeh6iV06MN1Vlf8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF341F90799
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774510139; x=1806046139;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mbFvzZ/zF9DWq3fJsHMNAUyH9bli39N98avjsZYgKqY=;
 b=JgcmJ3smUdVMG0429w6/38/8hml3W/q88nCKsORpJM4cFz2zN/blTNTO
 SceaOIwN9xGHDWY36ZRAi+wvvHVsT2gKws2SVCQxuDQuk5+Sei5MSI3pL
 RPMUH5k6yxjBfTqif6DGPO8hZj2+0i2RGC+xWHgSywMS43WwZQIVyjiQT
 NXLPBQMaTASNWoThKzgz6JwJ23tuB0ndmvXZzLFtmUXN7oP6wZN6OACpX
 eVV5UaZrlwLg2JY5ZrTN/oTAJIxXxsMsjWx2FuP325YQ4b6VQrmfflRso
 gy2DNwd3iBh5mlMNIHsFbpIC4PaLJ5tj7U7iH0ylQRZ8CDv+LkkNDYv4X
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JgcmJ3sm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 2/2] e1000e: limit
 endianness conversion to boundary words
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ade@amicon.ru,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:lvc-project@linuxtesting.org,m:dish@amicon.ru,m:rrv@amicon.ru,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: 7B878330726
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Agalakov Daniil
> Sent: Wednesday, March 25, 2026 4:16 PM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Cc: Agalakov Daniil <ade@amicon.ru>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org; lvc-
> project@linuxtesting.org; Daniil Iskhakov <dish@amicon.ru>; Roman
> Razov <rrv@amicon.ru>
> Subject: [Intel-wired-lan] [PATCH net-next v2 2/2] e1000e: limit
> endianness conversion to boundary words
>=20
> [Why]
> In e1000_set_eeprom(), the eeprom_buff is allocated to hold a range of
> words. However, only the boundary words (the first and the last) are
> populated from the EEPROM if the write request is not word-aligned.
> The words in the middle of the buffer remain uninitialized because
> they are intended to be completely overwritten by the new data via
> memcpy().
>=20
> The previous implementation had a loop that performed le16_to_cpus()
> on the entire buffer. This resulted in endianness conversion being
> performed on uninitialized memory for all interior words.
>=20
> Fix this by converting the endianness only for the boundary words
> immediately after they are successfully read from the EEPROM.
>=20
> Found by Linux Verification Center (linuxtesting.org) with SVACE.
>=20
> Co-developed-by: Iskhakov Daniil <dish@amicon.ru>
> Signed-off-by: Iskhakov Daniil <dish@amicon.ru>
> Signed-off-by: Agalakov Daniil <ade@amicon.ru>
> ---
> v2:
>  - Split from the original bugfix series and targeted at 'net-text'.
>  - Removed the Fixes: tag; limiting the conversion scope is an
>    improvement to avoid unnecessary processing of uninitialized
> memory.
>  - Improved commit description for clarity.
>  - Note on e1000e: this driver already contains the necessary return
>    value checks for EEPROM reads, so only the endianness conversion
>    cleanup is included for e1000e.
>=20
>  drivers/net/ethernet/intel/e1000e/ethtool.c | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c
> b/drivers/net/ethernet/intel/e1000e/ethtool.c
> index dbed30943ef4..785d89477c43 100644
> --- a/drivers/net/ethernet/intel/e1000e/ethtool.c
> +++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
> @@ -583,13 +583,21 @@ static int e1000_set_eeprom(struct net_device
> *netdev,
>  		/* need read/modify/write of first changed EEPROM word
> */
>  		/* only the second byte of the word is being modified */
>  		ret_val =3D e1000_read_nvm(hw, first_word, 1,
> &eeprom_buff[0]);
> +
> +		/* Device's eeprom is always little-endian, word
> addressable */
> +		le16_to_cpus(&eeprom_buff[0]);
> +
>  		ptr++;
>  	}
> -	if (((eeprom->offset + eeprom->len) & 1) && (!ret_val))
> +	if (((eeprom->offset + eeprom->len) & 1) && (!ret_val)) {
>  		/* need read/modify/write of last changed EEPROM word */
>  		/* only the first byte of the word is being modified */
>  		ret_val =3D e1000_read_nvm(hw, last_word, 1,
>  					 &eeprom_buff[last_word -
> first_word]);
> +
> +		/* Device's eeprom is always little-endian, word
> addressable */
> +		le16_to_cpus(&eeprom_buff[last_word - first_word]);
> +	}
>=20
>  	if (ret_val)
>  		goto out;
> --
> 2.51.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
