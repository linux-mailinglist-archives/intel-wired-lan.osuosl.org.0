Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4CM5HQvAAWrIjQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 13:39:55 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AD0D350CEF9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 13:39:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B181784467;
	Mon, 11 May 2026 11:39:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tufMtUODK_7J; Mon, 11 May 2026 11:39:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DBEBD8445D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778499591;
	bh=PwexM2fUJ7mH6J/NWh1ujo+/z4BEo0pcQjyEt18u5YU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fAGzdAt8bfoXCbZaCwJDS0gLDVySDZn6yFPXcRYMRfXVZibUDTIFaNZHL5qNmkDwK
	 3AV1J45YVF+FBEJCDfBFO7llnBIBUNMVUnDzEhfxcXdEwmo1AHnzayWH8Nyn0rNQ1f
	 ebrsA/CXrVTNlaX+f/gJhfJLuLX0S4WdiEJ7u6/qrFz/TPbiJOzHPmbrHfWrnRSUdJ
	 fB0u1CtJAbni5znPDkBwWV67cq5Jau7rcwLuXlMfXcqs3Gi77VyoeAHjMDjEOb3Xst
	 AEFJWM/Lmy/fkqq/tqKJGPc27nlDJxyYemO3DGkEG10BoUufY49mVNavGdg6O9nJLs
	 c3x3Blkv0favg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DBEBD8445D;
	Mon, 11 May 2026 11:39:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id B1ACE173
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 11:39:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A2D6584455
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 11:39:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vctylcvtPmce for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 May 2026 11:39:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D119A84452
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D119A84452
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D119A84452
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 11:39:49 +0000 (UTC)
X-CSE-ConnectionGUID: +gUZpnbCQuG5/klfbVttKg==
X-CSE-MsgGUID: 7NHXdVWfSCq0ys9DgGqAOw==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="81947531"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="81947531"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 04:39:49 -0700
X-CSE-ConnectionGUID: uHhxCTDeRHem/PHEdwvDjQ==
X-CSE-MsgGUID: 9Xntu6gsTsmtXfN+KmhxBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="267790160"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 04:39:49 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 04:39:48 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 11 May 2026 04:39:48 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.50) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 04:39:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gbpW+h40WmLYqm00PeS64sWl31udBNTx4kPjx6EXafgFSm2IB+0sJicon8vWO8H/EuUmjy7B/bYk6G24oBO95kUeNlnjAbd9xQUZ/ltR0ojkUYEp8BpTcOiAWwahoCsSzaaTImwnZWkmTlEGrOFxaAV/m1YYAUfD6qaxnun2gnoLE1XRyLRrBPflJez019KbhUmxi9oMiCDzKLdNcFclXNay9xyGZz+s5rfEGtvqd1lpIt0nKLpWUG+0wLPtbOcx2o05oBHiEcq34wllBfPGYGBY0n7bRqTnm7nJpthR9MjY0xvB4n7e9EWfmln0hZ9YSktpdKkheKyn3+q7i3XFJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PwexM2fUJ7mH6J/NWh1ujo+/z4BEo0pcQjyEt18u5YU=;
 b=LNdwFKrIwUe/gw2UzCm6ArEANswrYbBO+IWyB1z80yhmDymoJKmnae4UtbJ4PDbLtgeQJYRaIjYgflMAQ2MxLXtm3pxy8VMTp+ZeTm2irkvqO4iQins6+ny3jLgKiYsSBhei4dYY05IwVzhBmGy89UwK9p2RrV6FXtVTTkqYWwAD0W4Jt7i2AtC/3bvO2bJldKXWM/skvAgwTg3phrDrZYyPl83JeBoZz+TZhQptGL3RBiejvJ9+38awNCqaSL8uyeGzBugab+SxKTOuAoxDi6BDc6PD7WrMpKJZQsla+hwBKMMhXuLO2Jwzaw77LwXrjfBSrXiJMnRneT4f6D4+3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by IA1PR11MB6492.namprd11.prod.outlook.com (2603:10b6:208:3a4::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.22; Mon, 11 May
 2026 11:39:46 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9891.021; Mon, 11 May 2026
 11:39:46 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Simon Horman <horms@kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kiran.patil@intel.com" <kiran.patil@intel.com>,
 "sylwesterx.dziedziuch@intel.com" <sylwesterx.dziedziuch@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "avinash.dayanand@intel.com"
 <avinash.dayanand@intel.com>
Thread-Topic: [PATCH iwl-net 1/5] iavf: fix null pointer dereference in
 iavf_detect_recover_hung
Thread-Index: AQHcyxd9R3VFDzZvgEqgzP67vXw+ybXgFjWAgCjJPFA=
Date: Mon, 11 May 2026 11:39:45 +0000
Message-ID: <IA3PR11MB89866B3EE8301F74EEAC0C10E5382@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260413073035.4082204-2-aleksandr.loktionov@intel.com>
 <20260415124845.797759-1-horms@kernel.org>
In-Reply-To: <20260415124845.797759-1-horms@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|IA1PR11MB6492:EE_
x-ms-office365-filtering-correlation-id: fbf93504-c35c-4759-4046-08deaf52004f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|11063799003|56012099003|18002099003|22082099003;
x-microsoft-antispam-message-info: K504tRoss88KhIJkO8eJ6ncO6JjOOl+AQOYXSGjNvUuIw6owC4u+j7DIGmrXF+KRfnwzbVO2Thc3ih36l31MRbnM03lvukF7ESP/vYXEnfxmEu7zAAJd4Mhq6HsEU0viOqbqx7YLM71rGYtuwpmysVKwMFmbDSd5OHFu768NtnKhhYIceyZTaIXLwkNCxDlko9D+MPa12VT+Pinj8PJi0xfK+5ynhtTWHIs1Ew8yfJMmug3Zvx2/cFDo66d2WBDAuMDSbLmztt+dyG7KSyrOyvIoGiZLkkTuHfcL6h0IcMifgwGqelIfDjVZMKgQibcAEihnXESg8Yt3HWD9Xsz3N19ZLHHk2tbhRncqq1E3mJXA9eeTE4WGkvSJFtF0PirStBx0igx5kEM4IvCmcZPwTwgw+vPE2FL7A3pVpCPyOdYHQVZBNKWGmy5mXLK6ugXU1tP1OxfxEsxdKS4VikVR90jFcS2WhYYOXWRchjhTsV5xcsBJ4RlA3byahMMNA1w7Qtd5zWN2eQhxn7DTW2q+6y1Zjzq+FNiFxgKUZfXBZMUJ+NKFXlM/hu/Pr7h0Cc+rzk78pmc9dC4ChRuYhKC7TKt1JvY7yVlmg1weQRyyIUEv19/SLKGrHQ7IojCT9Cf39dPCBMS5RgaThOot13VKDHpXhtcCHW9TqvnOUiBN/tEp6u2uv3u1ZU89UVY3/pBv3MDdEPYcwONSUQJjG3L6Ow==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(11063799003)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+r+5AoKkWXVtw3StPe+ehzdAXm1+IjmfBK9TiTrfYvDEgWqt8RZLr7IQc81S?=
 =?us-ascii?Q?zmtpzwAYnP8n6CRicxcYaHbgQURKHNQ2jqRMt6mHMe3u9rJc1aJhx8/yHJz7?=
 =?us-ascii?Q?NNPivMveseeTIbDPBHqcwCNAZoA5RW5mw7nHOZPaZAWvhzOtGJ6wbVNC9ES9?=
 =?us-ascii?Q?UgR3MmUUdEWuLLM5yXvtLXrhkNe1vCi2EP9HixdO+v/9ZDR8KHNCY5OVOaob?=
 =?us-ascii?Q?UK9qV8eOpH2DEnkGdgtVxlJgsRXz1jXXlEZ89ZfxOzCYq30itrfU1HIDBv58?=
 =?us-ascii?Q?hh1YYeaI6i/SkV8e4J2ZOsHJYkjus4Lco8j7a57RlA7VrzE0kIkbQZEHPgF1?=
 =?us-ascii?Q?eL8sImQim8xHJ33VW1zZOlAntwuRlrUl/hA0Wsn8WgEIJvHaOPzgsbA4/xyq?=
 =?us-ascii?Q?CJuILSg0D55nBe0vtTxjERyt1nKvT6vKBMIXJiye2E5qjxJehyyFvwsmXIre?=
 =?us-ascii?Q?BXS6EQf/m4Hw3F0pUe4f7g3W0CdxCwIjPheqREYfkZ3LIHC4oNMJ+XfjV/GD?=
 =?us-ascii?Q?UlAxIJc6ZoaerqH0EZ7P2Rsv/Y9WJvoyCMckKUCfgXvwTdXNWPEDYnqr/rme?=
 =?us-ascii?Q?vXiM4f0/W/TkAC490pSPVOvKahqR230ceRLLwBeY3yJDMuqodguEXr/DMZ77?=
 =?us-ascii?Q?saG9Xqhie9bzbwKmMit7PWjLxPRGbGqMoWvemRPatQkkcr3lxANT1U4pyhUx?=
 =?us-ascii?Q?qSEYu80tNvi9KHb+KCZWitjz/CF8G9jzYLUjJO2CDpnYcRPDBFhhNqbuNEPm?=
 =?us-ascii?Q?v3I9N0FH8jm4+bbfc+mQCpFwgddoL5LfaWANZ9TDW7EtKfgwwfp110+SDeuF?=
 =?us-ascii?Q?MAd9lLgetWbrU9h/0hTPaNxcKVXGBH3jiN0mi+v45JpsjnkoiVvzMwHsxeqf?=
 =?us-ascii?Q?FmZGgYh3DkzFDWrxyFMVeNUirbseAnB0SADSHh4a6lKhRABqIaU2Jhl3yloz?=
 =?us-ascii?Q?UmdfQLNpA4F/uGu4muhtSzaFh2ryK/h7KM5uKCbWKGz2BncZFiivdBVrUG16?=
 =?us-ascii?Q?Lwq5kbRLwxRq0nXyQ4Tap8Z9EL+76W6ihfy/i2TNNXl8j9SwteH0iFO5ePVa?=
 =?us-ascii?Q?mVj3FQd5wmw36SbY1/vpLvHAfnMDnI1fW/R1B9dypenXAx7SLb7AzKD0Fp7N?=
 =?us-ascii?Q?ZRG4ct2r1cmLsxIGasWVqmIPTf8hKCECYCJBWmc4nKpk8r0CjjGTFr80Cu6m?=
 =?us-ascii?Q?Ewd/1yqS6rKJ3emyv6jnsFJ1IBYt3uP2jYE8SfiSWCz0KiOJPs9QfO7ZEh8o?=
 =?us-ascii?Q?d+FWaLjY8LLzyWgE+Z0sViCDGlUBwtqeouzwOD0qEXQnbIBybXtAXLDdUPYi?=
 =?us-ascii?Q?Qw5NlipKw2gOJBBol2Qm+Td1ndLuvLPI7gLzDytHIYZ74aBFEfIJlSYrKPwL?=
 =?us-ascii?Q?KtGrbCwEc+rHbJn1yyD6jlQnXPHZ4aLjPPL1E9pvksnUAlw4IKN8XYURemIt?=
 =?us-ascii?Q?8JhXleof/jQjo1mQM0vT3J0Mw2l78MKwvzSAz21nJlZKvD218KJmMKo9avp2?=
 =?us-ascii?Q?kbyepvTrG6JUAUoshBAb5evun338n02Y2R0mcwA306tVvd0T5YGJPGS5IVl7?=
 =?us-ascii?Q?Z5UnrVwViSMdPTXBF7WvX5Gf9GmYoavd1OLMHEq3hXOV+tkaxEB4U5zAODnn?=
 =?us-ascii?Q?QUCRL3+nAuEsz7uON0+0GLe5NUwIFzZMP8sc4wUXjpdLUMFC8VF6520Z426Z?=
 =?us-ascii?Q?K+jlfRAcdEKxJZ34QTsRTj8rIYNXU0kY7CFBkdQqdRunFVXUt1dtgsFXL0XY?=
 =?us-ascii?Q?cJFkq5rEhONZcRw/1oHG6MUQVATngLg=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: hh/n+Z+uzpqQ8PkVQmeSA3guA1im3zNojeHjvJUeetkufb1OXOJi2HolRdmijMRF8ENjeAat/xVcPdpSknyUNGVrh+D4I+fvilp8eTgibEhg7IpbbHBzTkXFxI25pwSSg5QiKqHM6v6p2fijATQP9r0yyduP+MELchRCkRGXWagLc0LZcCc/5Y+SjBRf742cmekWedEp6jczbtL6t8jwEQ1E7XlSvCdq1dYa/pyfUIWXkgIQL0ZZZ4DC3QpDe31ZxbCCgaqzZxani8UpKqo/y45EZWlRKYtwFYyGjH9CH0bUvBLSVTQRWOrul19ddecdJ4HTGWbYMb3M5YFvbiOxUw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fbf93504-c35c-4759-4046-08deaf52004f
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 May 2026 11:39:46.0113 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uX82hzh1ZADurbUfxl8oN4OWztNQW7tNhZZlmvwI+FkSIKS8S9qbknPsn8WWCWfOf3xRFwhiSYFIc4vNtyzFfjLTvqssUPnpnf+x3DiJlF0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6492
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778499590; x=1810035590;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=16wy8yhNX25uYhaDkFkuI5axC7ciHC9N1osMRysY9VY=;
 b=XElyhivCAai+Y+CDxNjQL+ReNmYCMDFGYto3Sx6Mosap7O88gLz73FKd
 8j2t5Ibm+Bb7KKHYYUU/rhKI0rE1JSwl8Oric+qvKUtCns8l/g2yQk3hK
 ch/LtH1/1P5pAKpktJsxC+bNdk89yOWVuKEYrqZmRKs3bNEPvRrgDOpNi
 8La2quJXmrbVrjNzo25j7ME9urZnFRim1x9cdRVp/2S7fJLShkIalPDjF
 Cxd74Z0KZOo403CaTvPZuHhedGhPJkaTpYm7Zg7gFKywa9dddDzEBTX5L
 W0X87B8CgvzDtLb6tAnj6sIB7vq4TquK/oBzEiKHppToNAEFT4vAWUQux
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XElyhivC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/5] iavf: fix null pointer
 dereference in iavf_detect_recover_hung
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
X-Rspamd-Queue-Id: AD0D350CEF9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:kiran.patil@intel.com,m:sylwesterx.dziedziuch@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:avinash.dayanand@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:email,osuosl.org:dkim,linux.dev:url,IA3PR11MB8986.namprd11.prod.outlook.com:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Action: no action



> -----Original Message-----
> From: Simon Horman <horms@kernel.org>
> Sent: Wednesday, April 15, 2026 2:49 PM
> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: Simon Horman <horms@kernel.org>; intel-wired-lan@lists.osuosl.org;
> kiran.patil@intel.com; sylwesterx.dziedziuch@intel.com;
> netdev@vger.kernel.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; avinash.dayanand@intel.com
> Subject: Re: [PATCH iwl-net 1/5] iavf: fix null pointer dereference in
> iavf_detect_recover_hung
>=20
> This is an AI-generated review of your patch. The human sending this
> email has considered the AI review valid, or at least plausible.
>=20
> For local reproduction steps see https://netdev-ai.bots.linux.dev/ai-
> local.html
> ---
> iavf: fix null pointer dereference in iavf_detect_recover_hung
>=20
> During a concurrent reset, q_vectors are freed and re-allocated while
> the watchdog task may still be iterating rings in
> iavf_detect_recover_hung(). Dereferencing a NULL q_vector inside
> iavf_force_wb() results in a crash. Guard against this by skipping
> rings whose q_vector is NULL.
>=20
> > Fixes: 9c6c12595b73 ("i40e: Detection and recovery of TX queue hung
> > logic moved to service_task from tx_timeout")
>=20
> The Fixes tag points to commit 9c6c12595b73, but that commit only
> modified the i40e driver and did not introduce the
> iavf_detect_recover_hung function.
>=20
> The bug was actually introduced by commit 07d44190a389 ("i40e/i40evf:
> Detect and recover hung queue scenario"), which added
> iavf_detect_recover_hung with the code pattern 'if (tx_ring &&
> tx_ring->desc)' that calls iavf_force_wb(vsi, tx_ring->q_vector)
> without checking if q_vector is NULL.
>=20
> Should the Fixes tag be:
>=20
>     Fixes: 07d44190a389 ("i40e/i40evf: Detect and recover hung queue
> scenario")
>=20
> > diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> > b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> > index 363c42bf3dcf..e7e7fc9a5c68 100644
> > --- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> > +++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
>=20
> [ ... ]
>=20
> > @@ -195,8 +194,11 @@ void iavf_detect_recover_hung(struct iavf_vsi
> *vsi)
> >  		return;
> >
> >  	for (i =3D 0; i < vsi->back->num_active_queues; i++) {
> > -		tx_ring =3D &vsi->back->tx_rings[i];
> > -		if (tx_ring && tx_ring->desc) {
> > +		struct iavf_ring *tx_ring =3D &vsi->back->tx_rings[i];
> > +
> > +		if (!tx_ring || !tx_ring->q_vector)
> > +			continue;
>=20
> The check `if (!tx_ring || ...)` tests whether tx_ring is NULL, but
> tx_ring is assigned as `&vsi->back->tx_rings[i]`, which is the address
> of an array element. This address is always non-NULL by C language
> rules, as noted in the commit message itself: "the compiler can never
> observe since an array-element address is always non-NULL."
>=20
> This creates misleading logic. Other similar code in the driver
> correctly omits such checks (for example, in iavf_virtchnl.c and
> elsewhere in iavf_txrx.c).
>=20
> Should this be simplified to just check the q_vector:
>=20
>     if (!tx_ring->q_vector)
>         continue;
>=20
Agree, thank you.

> > +		if (tx_ring->desc) {
> >  			/* If packet counter has not changed the queue is
> >  			 * likely stalled, so force an interrupt for this
> >  			 * queue.
>=20
> [ ... ]
