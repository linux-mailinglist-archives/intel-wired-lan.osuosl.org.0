Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2HadJ1JLemkp5AEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 18:45:54 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E33E2A7194
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 18:45:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5C46E8266C;
	Wed, 28 Jan 2026 17:45:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id glZF-somWtvP; Wed, 28 Jan 2026 17:45:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8229682668
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769622348;
	bh=v4ijuQKF8aUBajLzzd6o/aaEs3JEmfwTB9pohkgq91Y=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5gFyBZaZxPjy4RbpiJgQS3ro5fgB/JQhtLg0X24xmAuMmlzZlgM+w2UDAFCjL7aS7
	 t/7Ps48N3Ijc6/fiLkGQbcdqRylvG/pjSWOuDUqYUf/AzceDcHiu6EEd8MDd517m8W
	 o1WJI6JXwM659X3caVR0EikL+Yb7yfWzYpEvEciVoZGg8loVri940kAaBV/pPzG86l
	 eSUIfFhb77zRZvfj/j11Q406k9kyBkZ5lfEXA6lXqzOU8o8bynZp3zgbLOg4iXEGD/
	 Tbl1bjEdfLz9yXmQpiqWW9fSlxBmD/ZzvOkRmwDBvNP0F67bcFTY8RmMBb/nawAbqt
	 Lrq0WawXj5u7A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8229682668;
	Wed, 28 Jan 2026 17:45:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id B7737118
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:45:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9B8CE40510
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:45:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KfDHHYlavrex for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jan 2026 17:45:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B96894043C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B96894043C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B96894043C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:45:45 +0000 (UTC)
X-CSE-ConnectionGUID: weIAJOhqRWO8mcp8XM5ytQ==
X-CSE-MsgGUID: eyyhpnaxTcul282agTFawQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="70897737"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="70897737"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 09:45:45 -0800
X-CSE-ConnectionGUID: SgQomUQ3TnWx9sXlB/6ZQA==
X-CSE-MsgGUID: TTIzESw9SuGjFCWLjpJamg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="213196518"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 09:45:45 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 09:45:44 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 09:45:44 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.56) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 09:45:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=A5AZzVtw7yNbt67NVe+mBx82dhh4wfNbQuNGbXnwwKnbdl0mBzHjjRI1awC8tO+TabGzAL/x9KQuDqatj+VN/TTKIkdFK0Q2iZ3NxHyKMMAuRwrQo5AYrKqVu4JxOgQ7JMOUib4+1bT6wP4I6iCu77T4ilVlvzTm4H4o5U7gXax61o15jYRFVSI3EL4p+Lrnk+x8N0PyXBeMDfKhsfmvE90T4Z1O0YXFYtes6y+S30952WXWzW4k95FpzUCtlYRWliI5UxH92Guy5GkJgKjGx/8yzVxDL2oETYWwWnUbUuWpWpbXvuLNycCZhDStnRad3UnQ/ygnesg2D/EyL9oXJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v4ijuQKF8aUBajLzzd6o/aaEs3JEmfwTB9pohkgq91Y=;
 b=QUKt4DrCCukpTTd0UQ9NG5k6jw7wtIyFTvP0LlCT/DCKzzBdWGWfPGfIJXwjeBf8oOpkHdMNbHVSf3+Xjlj2h48JrOidKobvN2zH335UL3bOIvivcuA0bQR9jbqrpAQj1dmvNzGpLuOkdleIOgnjTHnAIjb31LP5egJX+L7Fev10z8EgRPTApTX9Lioqn1MZYBY2lUioANWQ5pJwqcx18784iX28xuR/dRxunvs9/F5Fs6RXz7DK2rH4SY9HYZBiz94ScwCXYnjucfCNf4wVm8ly9i3R+gB9H09g/zmtFVHdpmpn+PBdB3+lhO/hQIUO/ZMnCX8/EKh99F7KN09Viw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA1PR11MB6991.namprd11.prod.outlook.com (2603:10b6:806:2b8::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Wed, 28 Jan
 2026 17:45:41 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.010; Wed, 28 Jan 2026
 17:45:41 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Linux Doc Mailing List <linux-doc@vger.kernel.org>
CC: "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Peter Zijlstra
 <peterz@infradead.org>, Randy Dunlap <rdunlap@infradead.org>, "Stephen
 Rothwell" <sfr@canb.auug.org.au>
Thread-Topic: [Intel-wired-lan] [PATCH v2 07/25] docs: kdoc_parser: fix
 variable regexes to work with size_t
Thread-Index: AQHckHZMYVITg8RdRUGHzxlQar3RerVn2t8g
Date: Wed, 28 Jan 2026 17:45:41 +0000
Message-ID: <IA3PR11MB8986A164B027CE2F8CA69D90E591A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <cover.1769617841.git.mchehab+huawei@kernel.org>
 <c70ee43b96895eba109110857be6b208de8c56f6.1769617841.git.mchehab+huawei@kernel.org>
In-Reply-To: <c70ee43b96895eba109110857be6b208de8c56f6.1769617841.git.mchehab+huawei@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA1PR11MB6991:EE_
x-ms-office365-filtering-correlation-id: eba2300a-204e-4f98-9e68-08de5e950e75
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|366016|376014|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?K2VydFV5R3JuejE1UnY1YmhuNGIvbnNsYmRCaTJiUzMxNXY4OWxmZThKNi9S?=
 =?utf-8?B?RjVCc0hMRGRWK1BDMW16YUJqd1NVZElUaFhJNStkS1FCSGVWekc1OEV6K05i?=
 =?utf-8?B?eGN4OThkY0lVcDd0bmRnNituQ1RZcXRxeGRQQWo1MFRab0lETlBaVXNCM2R5?=
 =?utf-8?B?VnBndjhMVUk3V0FEb1RxaTBJdStMTVd6S0dKVXBrbUJydDRnRWY3QnhvdmxC?=
 =?utf-8?B?NHVIUG9Ja1J6TWJiSUh2UDR0TmVYaDVNbFVPWTl5cm1Sd1c1RTM2YUZxY1Fr?=
 =?utf-8?B?Znk5U1pCZFhYdHV5eWw4ZEthNlBLOTZldE4wVzRxTEs2UHAxU01NaWVYSkV2?=
 =?utf-8?B?dURyNmU3OTRRN3MwSzVuTVNLcU91VEljQmoxU0plWVNkVkw1WTRBYUZUTXpM?=
 =?utf-8?B?a0tnTFBxZU1nRU1MRU9tM0NaQ01nRzhOaVV2bVFPWXJzay9qWTNnYUxRc2p6?=
 =?utf-8?B?NWNGZ0Q4ZGsyQ2h2UDBYeEgzL200eXJiOUl4clhvQVlBTXJJZm00c1d2TGd6?=
 =?utf-8?B?RmxPUGZjc256YWNBNU9HWTRzRXlpRmtnYXgwUi9NazlnVG5xVDF3YlVPanM4?=
 =?utf-8?B?MVNjVC9GVnQzUnRZQmhSRzQ1dVFoRTNQTmhOdzFQRkQ0bnh3eTRzMno0ZUFY?=
 =?utf-8?B?bUpsc3JKS2ZwdlNldjNUNUZSUXRxSVJrQ29KeDlKLzNVeTlpd0NLdDFJaVpx?=
 =?utf-8?B?TGFzMEI2eC9NeDE5bEZhaStrb1IvemMvWVBuT3FtcmVPbTYvYnFEQ2xqVmxF?=
 =?utf-8?B?SUZvK3RjSWZ2M1hhSngySDVRbzZ2RFFxa2NhdUtBOVpWZDdUOG53cktta0g3?=
 =?utf-8?B?SkZsNVhTTnM4VVZqRkUwbW5pUXNwMzBtM0N1dUttemNja3VVWkJWQTZ0aTdM?=
 =?utf-8?B?WlZEREQwaVV4UklhdUNpWmdBUXhRV0VSWGVNbFdwazhaR3dHWnozd3hHckwv?=
 =?utf-8?B?OHhuV0R0bHJtK0xNeHZlVEo1UGF4S2tIcWhKYU1hRE5mQm9JR29UTzh4Z3Br?=
 =?utf-8?B?emJtMzkwMGtsR0xVM0NpZEZsWXR0NGtyRWxkWGdhRTdZd2t6UDNuQVdtbTFy?=
 =?utf-8?B?TDB5dDk2RnQ2c0xib1RuUitEL0ZYSUhlcDhpNEpSVnpsZlRZWHoydVVUMEZW?=
 =?utf-8?B?V2h0VUcxRE5ZZVR0b3ZoNzJRTUhlcC9TZktBblh3OVpXWEFJbXBDaTVjYTlo?=
 =?utf-8?B?Q21QSHdNY3ZlNklvdDlEdU1EUTRTM1JhVTV0MFVNZ0l5MEpWR2xDK0pGQWxC?=
 =?utf-8?B?MURKclV6eExsSVo3R2d4NmNISElpVEJJdWd6bmNsN3ljYlpjS0ZkVGNjWHB5?=
 =?utf-8?B?VWpvWmxXekxzR3MwdTJPN1pSc0RqcXBlUmFKem9tQk9XS3RzL2RUQ3Z4U01k?=
 =?utf-8?B?cU1IRHVKamRpcjk0Q3lnem1nSTlUcEpzSThxN25HVGpTNUtOaDhHdzdLUC9F?=
 =?utf-8?B?NU4vSHhLaC9mZGovUWN1eGlvb2ZCdy9kY2JEWEltWnp4RzdMMzNVNGZSa0tD?=
 =?utf-8?B?cVNZem9obGc2MGVKakdDTFRSYUlkWTR5QVBRQ3hoU3ZxWXF1cldUS3RUNjFP?=
 =?utf-8?B?TkZhdTFpWmFGSUYrTUVydjBoVkJFa29xQnhxM2JyNVk4d29lTVZ1OVRrUHpE?=
 =?utf-8?B?WUtFZVRTYnFLb1VuM1cwSnBSRytuSFpBMC8yMGtRdU5EUHhYaS9uNzZaWmJX?=
 =?utf-8?B?MC9uRGoxM3FPK0FUVERnaU91dUo5bWJ3ZjRHNGVpQUo1VzFFKzBHK2ZKWWlz?=
 =?utf-8?B?cGpZQ2dIZnkxdE5tT21mdHo2Z0ZUSHpOWDQ0elg1QVJSVnEzQmZDMjFZdnRN?=
 =?utf-8?B?N3B0SE42RmZBbzdISUxEZlZEVWtPanlEVm5QYWdtZUZQTXk4VEMrdDBOU0x2?=
 =?utf-8?B?NVlDYUIyVE92TkpRcVlsRHBrVkxRZnY1R0Y2UEtXaGhyeWd2aTZFZUVjcnlJ?=
 =?utf-8?B?UXd3WlJZcVYrMno1QXdMZG1rbUJDbnpIUTlKdHFiNy9la2NxMkkzUGNqMkZV?=
 =?utf-8?B?dFdXcFo1YUlocUp3a043S2tWY1dKeXBrSnBQYnhmYStDMVlzTGVSVVhVZzd2?=
 =?utf-8?B?eUQyYUQ2bW9GSU1ZSHRqQlgwclVvM2xVRlpPQ3orakxRRk9uRXVabjBtMzFz?=
 =?utf-8?B?T1h2aHlKN0JhaGxsVHkvL3dwZTJvaWZDcUZ5K0F6UHBwcFY4RlJhNEFUVk8y?=
 =?utf-8?Q?3xVGD3a9wrViJG2ia1OvLA4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(366016)(376014)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cFYzWllvTmhMVFNISFg3VkZ4K0tCdFROWEtLR1dzS3MxaFFSSzVnY2xZdUJ5?=
 =?utf-8?B?UFFwT1JmUXlYRHJEWGpHanZFWjVhK0FRZUV6c0FVSUJyVmhyQ3F1eitSZE9o?=
 =?utf-8?B?NDhNS1RkNVZoTCtneHJUcm0yWklmaE1NRWc3NGVFZ3NtVzlhT0cvQnR1YXhE?=
 =?utf-8?B?WFRSRTdBbVZVN21JUk94TmdlVjR3dFlpR3U3cHJaTzFwbzRaekF4K0VUZS9w?=
 =?utf-8?B?dzNuK3lGNDlZYWFyZk1VY0NjRE1tVFRHeU5sZENEZW9YMGZ3Sm9BZEh0Z0xt?=
 =?utf-8?B?bDBNWUxaT2UydWxCdnhoRWtvdnNjVC9XWDNMV1puU0NsUXNNMTgvVDMrZWg2?=
 =?utf-8?B?Vm9zZXZ6MGpHa0JGRElMVTBzMzRqLysxTlZQcFFBWmNPRHlPaFRuenpURGxP?=
 =?utf-8?B?TnR4c1dBeDRyV0pPaHUzNHF0Zjh6MElhZjIwVUNmRHhYTVBhdW9paW56anB5?=
 =?utf-8?B?NGw5RFFCKy9STmpqOWtqVEJ2QWMvZFVHd1ZmUm1EUzVRNWxqK1phbUtMbFk4?=
 =?utf-8?B?bjlKUHBqUVVZUnl1c3pPUnpaWXB3Qmc0MzhlWUQ5UTRER1YvU3Q1ODUzS0l3?=
 =?utf-8?B?elhXTnhtNkE2QXIzSkUybmJGbytJaDNwV25JeFlaY1J1bWdhYk0wWGxLVlN5?=
 =?utf-8?B?VnB2TzZhS2JwQXNyd1VwVHlXTjJxZ2V5YnlPUUVlQ0NaRWJ3dTBuYnZmczNZ?=
 =?utf-8?B?WFFxUGI3OVo4cVI2SW1vaTljRlNnREQ5SlI4b2ZHTzJ0TzBTeWM1MXlqeFBt?=
 =?utf-8?B?MzNSMk9LQUFNTGJwTnArUEkrQWJVTE41M1ZOSXh2WjdnaUgxcDVBNFdOdkJL?=
 =?utf-8?B?WTdYWFVxdG1OUGNBVGxmcnY1ZkV1ZkppbVBmallPampyNHN2K3RmS1hOdG5s?=
 =?utf-8?B?R3FiZEhzK3haZGlCenhEb2dRNDZYRWNrMlk5dzNmazNqajdUL1ZPNmh1cHdv?=
 =?utf-8?B?QmhBREtrSS9WOUhJQkFMU2liQWt4Vm9rUU1VdGwyYU03ZkNSMjFaM1h4MFVH?=
 =?utf-8?B?V0NvSklzYndtMjBSUDVjZFNYNVBrdW8zOGFqQmtsalZWejJZQlg4dnhOcy8x?=
 =?utf-8?B?ZlN1bTE0dUNUcFVHSkZUQ2Z3c3EwdnRDQzFiaWg0RWNUNldmQ1p0RjN5b3ZS?=
 =?utf-8?B?OURTdXBoamkvMVY3YkxiNFhqWktaMGw4TnM2d1FkSFIwZVY1TTBXcVZoaTNZ?=
 =?utf-8?B?bG5uQ01JOUc4SkVCZ1lNOHQ0eVhDMm9MS29kditZMzRmUUd6TXVMUDczbm9v?=
 =?utf-8?B?Q2ozWW1zeDlOdzZoek84cDRpMVVkU0xvU0l0NUhUWTB5c1FlS1Zpd0RORzJi?=
 =?utf-8?B?ZjRrNXZFWlVBY2pKbFdKV3BZKzhWRlFmdWl6TmFuTitRbUM1R2FxelZSckdj?=
 =?utf-8?B?eCtnNThwSWxwMWNhekxrNUI4K3pLams3UDJ0OGJybGU1VHh3cW5qdG1NRGdk?=
 =?utf-8?B?aXF6ZmQ2eTVYYVFuWmh0eU1aTFF5OTFucHNQOElVWVV0ck1EUERtT3VNM0Er?=
 =?utf-8?B?WmRZOE9VUVVuT3VjblByWTl2aWJjbTlpM3ZMWTJOWDdFL01hcFgwS2NuVHdB?=
 =?utf-8?B?Q0t6S1JucFRuanNta1VybjBMR25vK3NyaitEUWZ3cGo2K2xwaDNSQlJDbkVl?=
 =?utf-8?B?TU5RQjU3M1JSZlY1Zm50bUhiUUxLMjdFK3ZrdUV5eWZuRklQdWVBSlo5enFM?=
 =?utf-8?B?R1VTQStuMXIzNE8yaHJMK2xNVlZ2UGN3bGdZNHVRNjFGUlZoZ3UweTVHUmFF?=
 =?utf-8?B?UXZleDNSemFoYU9rT2dDS3BEcVBpL01NdXdPQXFtTm9Ja2hrWXlKbEN6KzV3?=
 =?utf-8?B?aWJ2YzBqSStIc21sUWtyQU84ME56d2UxQ2xTQWFhMHRta09SMnJzc0hCN0hE?=
 =?utf-8?B?UnBEQjNycEUrRzErbzFGUUQya0NNRWJmdWwvWGI1MnpJWWF2MkhSUUhxb0pH?=
 =?utf-8?B?eVNwZU9VUWRXNlZ4cytxbjcyQS9BUnJuMUYwTXphYS8rZzNNNGZrd0UrUG5k?=
 =?utf-8?B?bEoyYXFYNWtMTC84djlSaEpEcjdURm5DUFJGMzVFVTVjYmhNa0tMUld2ZjN5?=
 =?utf-8?B?SE8wd0w1elQxQmtSL2tqVDl4Nm9VcWp5bUxEUE9TbjZGTFJEVlU2NEF1WXJF?=
 =?utf-8?B?Uys3MmxGT3FiM0FiV09PRm5EVG05WmJ2d1RpSEhpOEZJTVlDWVdhcmtweU01?=
 =?utf-8?B?NFl2SjZwNExWcDhXeFN0SDZ1SDY3SVNIN05WUFM1Q0NhY2Z0T0hOT0FaVGdV?=
 =?utf-8?B?anlzZzJYY0JRcmMvUFpHV1dTMUdZVS9oL09FZGhjNU9OVGYxd01XRzdIZDlo?=
 =?utf-8?B?NklUYUdBQzE5SFR2dTh6UWJwK3BvRkM4SGhsbGZDM01oS1lLTjlBZTlaNFFl?=
 =?utf-8?Q?KKWFm130PGZ5O5Rw=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eba2300a-204e-4f98-9e68-08de5e950e75
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2026 17:45:41.8393 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9QTkU+fwEcCnzoAFJk3eBaWOV4uCCZHh7/tD9XKfG7xoZt1rIoT796B5NCA1pZQyYI1UhJwU1b0NKflyEQOiQnKnr44YkEEiAOj4acHvAcs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6991
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769622346; x=1801158346;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=v4ijuQKF8aUBajLzzd6o/aaEs3JEmfwTB9pohkgq91Y=;
 b=IMqEGRWZefARaoXhrqYBg2PU/GYNURqL4QeQITsxjbmf3Tx3MJYpWbIC
 k79e13fxYGV7hqVQS6ZTJLL3uVS9USnWUFiysCB7mHCA8b03a+Aa1FKn2
 gVn0q+LkguCKD7av1gVLa5vtYUSKk3x/noLlgVUMc3GYnCm6erVfH5HRE
 +EZ6Kg7avpunoVBrg7d++RKNTYeNmajVNXTwuzfyVvio9DNGzecVJZ+MN
 fifoGgWBhJJhbDIEMkE4YKkWAQkYt3HqcGvZrbP8qTMxif6jSAnZDLkqx
 s+A1Z540MDBIjTPshH7KinEnllmFf9RPqBgVjMywTSW3XBxkysOxFhvi6
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IMqEGRWZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 07/25] docs: kdoc_parser: fix
 variable regexes to work with size_t
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
X-Spamd-Result: default: False [2.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:mchehab+huawei@kernel.org,m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:peterz@infradead.org,m:rdunlap@infradead.org,m:sfr@canb.auug.org.au,m:mchehab@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,lwn.net:email,osuosl.org:email,osuosl.org:dkim,infradead.org:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid,auug.org.au:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: E33E2A7194
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTWF1
cm8gQ2FydmFsaG8gQ2hlaGFiDQo+IFNlbnQ6IFdlZG5lc2RheSwgSmFudWFyeSAyOCwgMjAyNiA1
OjUwIFBNDQo+IFRvOiBKb25hdGhhbiBDb3JiZXQgPGNvcmJldEBsd24ubmV0PjsgTGludXggRG9j
IE1haWxpbmcgTGlzdCA8bGludXgtDQo+IGRvY0B2Z2VyLmtlcm5lbC5vcmc+DQo+IENjOiBNYXVy
byBDYXJ2YWxobyBDaGVoYWIgPG1jaGVoYWIraHVhd2VpQGtlcm5lbC5vcmc+Ow0KPiBicGZAdmdl
ci5rZXJuZWwub3JnOyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbGludXgtDQo+
IGtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IFBldGVyIFpp
amxzdHJhDQo+IDxwZXRlcnpAaW5mcmFkZWFkLm9yZz47IFJhbmR5IER1bmxhcCA8cmR1bmxhcEBp
bmZyYWRlYWQub3JnPjsgU3RlcGhlbg0KPiBSb3Rod2VsbCA8c2ZyQGNhbmIuYXV1Zy5vcmcuYXU+
DQo+IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCB2MiAwNy8yNV0gZG9jczoga2Rv
Y19wYXJzZXI6IGZpeA0KPiB2YXJpYWJsZSByZWdleGVzIHRvIHdvcmsgd2l0aCBzaXplX3QNCj4g
DQo+IFRoZSByZWd1bGFyIGV4cHJlc3Npb25zIG1lYW50IHRvIHBpY2sgdmFyaWFibGUgdHlwZXMg
YXJlIHRvbw0KPiBuYWl2ZTogdGhleSBmb3Jnb3QgdGhhdCB0aGUgdHlwZSB3b3JkIG1heSBjb250
YWluIHVuZGVybGluZXMuDQo+IA0KPiBDby1kZXZlbG9wZWQtYnk6IFJhbmR5IER1bmxhcCA8cmR1
bmxhcEBpbmZyYWRlYWQub3JnPg0KPiBTaWduZWQtb2ZmLWJ5OiBNYXVybyBDYXJ2YWxobyBDaGVo
YWIgPG1jaGVoYWIraHVhd2VpQGtlcm5lbC5vcmc+DQo+IEFja2VkLWJ5OiBSYW5keSBEdW5sYXAg
PHJkdW5sYXBAaW5mcmFkZWFkLm9yZz4NCj4gVGVzdGVkLWJ5OiBSYW5keSBEdW5sYXAgPHJkdW5s
YXBAaW5mcmFkZWFkLm9yZz4NCj4gLS0tDQo+ICB0b29scy9saWIvcHl0aG9uL2tkb2Mva2RvY19w
YXJzZXIucHkgfCA0ICsrLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIg
ZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvdG9vbHMvbGliL3B5dGhvbi9rZG9jL2tk
b2NfcGFyc2VyLnB5DQo+IGIvdG9vbHMvbGliL3B5dGhvbi9rZG9jL2tkb2NfcGFyc2VyLnB5DQo+
IGluZGV4IDY0MTY1ZDhkZjg0ZS4uMjAxYzRmNzI5OGQ3IDEwMDY0NA0KPiAtLS0gYS90b29scy9s
aWIvcHl0aG9uL2tkb2Mva2RvY19wYXJzZXIucHkNCj4gKysrIGIvdG9vbHMvbGliL3B5dGhvbi9r
ZG9jL2tkb2NfcGFyc2VyLnB5DQo+IEBAIC0xMDI3LDE0ICsxMDI3LDE0IEBAIGNsYXNzIEtlcm5l
bERvYzoNCj4gDQo+ICAgICAgICAgIGRlZmF1bHRfdmFsID0gTm9uZQ0KPiANCj4gLSAgICAgICAg
cj0gS2VyblJlKE9QVElPTkFMX1ZBUl9BVFRSICsNCj4gciJcdy4qXHMrKD86XCorKT8oW1x3X10r
KVxzKltcZFxdXFtdKlxzKig9LiopPyIpDQo+ICsgICAgICAgIHI9IEtlcm5SZShPUFRJT05BTF9W
QVJfQVRUUiArDQo+IHIiW1x3X10qXHMrKD86XCorKT8oW1x3X10rKVxzKltcZFxdXFtdKlxzKig9
LiopPyIpDQo+ICAgICAgICAgIGlmIHIubWF0Y2gocHJvdG8pOg0KPiAgICAgICAgICAgICAgaWYg
bm90IGRlY2xhcmF0aW9uX25hbWU6DQo+ICAgICAgICAgICAgICAgICAgZGVjbGFyYXRpb25fbmFt
ZSA9IHIuZ3JvdXAoMSkNCj4gDQo+ICAgICAgICAgICAgICBkZWZhdWx0X3ZhbCA9IHIuZ3JvdXAo
MikNCj4gICAgICAgICAgZWxzZToNCj4gLSAgICAgICAgICAgIHI9IEtlcm5SZShPUFRJT05BTF9W
QVJfQVRUUiArDQo+IHIiKD86XHcuKik/XHMrKD86XCorKT8oPzpbXHdfXSspXHMqW1xkXF1cW10q
XHMqKD0uKik/IikNCj4gKyAgICAgICAgICAgIHI9IEtlcm5SZShPUFRJT05BTF9WQVJfQVRUUiAr
DQo+IHIiKD86W1x3X10qKT9ccysoPzpcKispPyg/Oltcd19dKylccypbXGRcXVxbXSpccyooPS4q
KT8iKQ0KPiAgICAgICAgICBpZiByLm1hdGNoKHByb3RvKToNCj4gICAgICAgICAgICAgIGRlZmF1
bHRfdmFsID0gci5ncm91cCgxKQ0KPiANCj4gLS0NCj4gMi41Mi4wDQpSZXZpZXdlZC1ieTogQWxl
a3NhbmRyIExva3Rpb25vdiA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+DQo=
