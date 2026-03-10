Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QMAREZvMr2nWcAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Mar 2026 08:47:39 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FFAD24699D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Mar 2026 08:47:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B7077408F0;
	Tue, 10 Mar 2026 07:47:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ceHMNupiBDab; Tue, 10 Mar 2026 07:47:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2D8C8408E1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773128855;
	bh=UUB8FAqX29PtzmbdKRzRCbbcdYRUip8lKL02ArJ5+ts=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gvi877y1rASG1k5K5L5i5E874h1gpZ2e+/tCMUNQrCKgsUxnztX5bIpvbxmwZ+Tha
	 0H/ixlvPMNlJWWJyUWgRcozFDiepinRTWvOUtTbeTmXVKmk2kx3bXQFf+BO2xXpERu
	 L4XImn/xR0SirDtVNaz2vUtmb/TWVQHH6W3FmkIaebg8ysNasAp5vtO+eMPkKCAKvg
	 51d1yme+Dz/oEo8Hz/+adeVEmbjVEr1fAE+/fqFlAoak8x/1qyDhGCoYnvNQWTR5Lz
	 GOExpjdpGee4saf4fDgY/zTeFNRK9j/eZ7XZ3LyyzHM1bxi+Ip9WGpz7Z2qs8jGbBc
	 GLkd7kzU32+Ww==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2D8C8408E1;
	Tue, 10 Mar 2026 07:47:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id DB96A201
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 07:47:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D5A806132D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 07:47:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oErgM0DGCN6d for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Mar 2026 07:47:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CA4B6606DC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA4B6606DC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CA4B6606DC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 07:47:32 +0000 (UTC)
X-CSE-ConnectionGUID: m/qGGAawTui/vDx96SGTpQ==
X-CSE-MsgGUID: fZn0DU44RfSeb0etW/QG2w==
X-IronPort-AV: E=McAfee;i="6800,10657,11724"; a="84802804"
X-IronPort-AV: E=Sophos;i="6.23,111,1770624000"; d="scan'208";a="84802804"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 00:47:32 -0700
X-CSE-ConnectionGUID: WFXpH8z3R9+f5Yp1GVFJcA==
X-CSE-MsgGUID: OkuexWi2R5607YCHg2sO9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,111,1770624000"; d="scan'208";a="219980276"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 00:47:30 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 10 Mar 2026 00:47:29 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 10 Mar 2026 00:47:29 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.51) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 10 Mar 2026 00:47:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MM2Fky7tTiRYtdXL+pja9RUOY51YC6rsH9Hnlj99R6Luxg4eymtO7OCCi0AnBytuRPWQxr4Ebm3dy6UV285KMcEGVb4bg7FadalCDtjYd8SUmYCV+z5oRqhm844GvG92OFsL64t3FcNV1NvyrCVN8zeHCen0pUSN979yj1gHIautLwkCYoCScVwdfSNXWhPtNaRWgy9yHfpRk49WKZTQh6Ith9Opwq1VdLxiz1X5YUptyGWYWiX/HMlDzFnV3MbQGkMT0d5oX/SSJdN4NlFLNjAOTM+MUChRaNrIwbtTOv+8wNO8gz8BDToKICJKGuj4mJFaZCobfwXNRd3sR/rIow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UUB8FAqX29PtzmbdKRzRCbbcdYRUip8lKL02ArJ5+ts=;
 b=M/4mZzWf32E9d+7yx7x2KD8CpoRCQL++BuCa/iGs3NAVsw7T36oeqIStJ/EQcmHCd2PkVwrHaj8r6g06GLh894tWPVqeXEqAS2X1ldG9eqfzsEDnhvZC6f04lf5xPylWbnSNjyeNUdSw1caZLuX3Z8Ig+oCH/g0HAojXBWjcKMW7Ucc5DmSmeBlNvLrF/Y1c/ony7YyCm7p7aXeeCsk7sux/4L4CozeF6wYOSA9TV3B3CeoTEEp5d6SPnyJuCGrpT83L7nkp/aqqZQ3x7kI/toJkST2vnlogQFiytrFKHpGLfErdiiJeLKeKn8fqDniUHfwA3GonU2SOe4jc9RCfTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by BL3PR11MB6409.namprd11.prod.outlook.com (2603:10b6:208:3b8::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Tue, 10 Mar
 2026 07:47:25 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9700.010; Tue, 10 Mar 2026
 07:47:25 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Alex Dvoretsky <advoretsky@gmail.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "stable@vger.kernel.org"
 <stable@vger.kernel.org>, "kurt@linutronix.de" <kurt@linutronix.de>,
 "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net 3/3] igb: add XDP transition guards
 in igb_xdp_setup()
Thread-Index: AQHcra5EC3a4K48yFU6YxbguIBnPibWnaNJw
Date: Tue, 10 Mar 2026 07:47:25 +0000
Message-ID: <IA3PR11MB89862CE33EA56675FD66E8D8E546A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260306211310.1213330-1-advoretsky@gmail.com>
 <20260306211310.1213330-4-advoretsky@gmail.com>
In-Reply-To: <20260306211310.1213330-4-advoretsky@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|BL3PR11MB6409:EE_
x-ms-office365-filtering-correlation-id: b71ad6de-ba02-4d09-1857-08de7e794589
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: RH5jU25rMXOGmR2W4IWC2XFo4F3Mq3mcn7oxAiEwm6xChoRiB4pcmE91LY4Cfb+46NWaMyZVZI9/OuEZYEwVwLPYKTAlU+XdegVmYRLOdd59LnYUiiashOAdtzz71vnTbukco0t8WLmAIkBBtR89nUGopjbda6U+ZV3NVXxzNnit9caA6rbItNu0w/hWKYeK/wgxNM4JarJ06AyZEqWsnZgAzvt/U25UlmrDrsrnAYiC9A5AptPNexUJ+XLzjUYZ6DYJ1IUmBP90V/wCtelewCgqI2t4dveJ+yPrTiEWzAm+L1zuXj/cXgEagltT+beKm6iIqpt19BqIAz+r4dYnr3mkoIw/uNLFkriwCpQKSrYKog+Me5HurgjMX+/PKqMpBTw1J+XspOhnTGVYbpQ6ejb/jMJ68cAEMxyBnd1tjKTk2oKOthIxHfp7w1j0k8TCPPEEpRZhT12EOHhjsAKmlJDSzyx9BHKhTKKa2bg6V1/CNWiTwEXbvgvUv6p0BrTquTiGa7nSp7XUwXRjdl6L1Y5OXhDKK+EI0jD+4VeMfjccSJwfXAHl85JJL15D8KEIToRXGE0HFx3CNt7bdZfxP7NwfHxTssZnTl29ZVqlJCSUeKOrZhG+W/tws4Ku1c8bX+gSGUnc0mO5C5hzMN1MEE5S8/qXVfCFSFAQaiurMvGZRADC+IXkSkNrM4VnejrWN5SjcUxllLjYsQglreqV3n6yKi3DtD0RnB19MLh9T9aYCnivsV2+QPDf0RaxsVea7YRbOq/M8A+4chSYvlHriOAG82wdJL9hvmxu1yko7j0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lG9su8NMeAJRNX/VK1pc7h/OWEMb5MhscLdDOxHgXrsJYNQaHXwnLJ42LN0W?=
 =?us-ascii?Q?4NtWTYStAlj5svj2a0/4MtX1KICgKQGuLiKjdx+Q9lTfBqropJhSJb95rZAP?=
 =?us-ascii?Q?9wwUBjwnuoCM5fIJpHX1gYND326B2NsN6u32lwkcRx28fxYnUYYR01IJFDws?=
 =?us-ascii?Q?QnlBg/XQG+noWVmteM/ZuiEMlumyaNZ45eRT19aEf9At1SvpF9N6UYOpojpd?=
 =?us-ascii?Q?wqV7KRJNK3Nl+RDMcQ03YitIKVMk4O73rSzsb0n79uuhjGNMpLHLYIEZ9sDt?=
 =?us-ascii?Q?UtnmU6ExrL11b04vjmEGEA5x/1vmLaXiuilS4vc6YYEWPS9RHQcfK9Yr7d2q?=
 =?us-ascii?Q?+al4n8H8YO2f6EU/KgHylT/0bEyHdKDnpAwhSOHMqYd9cfMlNYhoWHpFqQpm?=
 =?us-ascii?Q?jFKMiy3d1ruN1FQ0KRjAvOM/oXC7+E383KtNNmsvAXVhX8vAUWc556j3xQVb?=
 =?us-ascii?Q?rG0Q4V/jo+m8+ujybhX5+6nwsncwGwaPBmERhvLd+RXDJ8sQjWxWnuOdNfnA?=
 =?us-ascii?Q?R00TWKAJQppM99ymMQf7nPp4kWywFrztkyj34dIR1M1ZSckhKTUM0j5SJrUk?=
 =?us-ascii?Q?H00brkKvR5VlgZd5h88Bfk0bs+evGlEEMpwAzxfMvC1oeCO5xtUgXtR3NPH0?=
 =?us-ascii?Q?YMeEJUDWu3CeJYNcmZBAXqL0k1uGtI2JVOjqYR6flyg0GkzWtEYiofDNnSt3?=
 =?us-ascii?Q?gMBj1xcZgT1X3nDyXHyZOu/rf9HxDDoLVp79f5gQ3/OYjOfibFDJV7VE72GY?=
 =?us-ascii?Q?gOcA2oW8qn+EP7m8ZF+w3WSEDCgCdBiA315jIzaez0Dkf+LzXEXMxODvuXE5?=
 =?us-ascii?Q?mdJJKA4miONb/AYhnWQm9V4zPKbG2LhdofOBtK7EpVLCOLMgBS5ts5mWPVdd?=
 =?us-ascii?Q?nArKvIKIaPbGJEho2JsA6rHLBbPIoMBPf6TbZ4Y7CNNO7GfTlSe97F8N+eI4?=
 =?us-ascii?Q?xOwEZ1sEnbD5MlcdJCeJlmtA1OBS8oaN7VPSrxZwdpK7JEubMkz09ppg9Bei?=
 =?us-ascii?Q?MQ3qksqExCzKAnfKpILJ9tFUVl5HHJwC5Jd5YNxSKTv1vIR+HJ/Jh33nRf2p?=
 =?us-ascii?Q?9TMLaxsO7UrnhLAWhcuIJ+5bWJTLFy3EmLNXoSlqHsHRVd41kx++h5Qpjm7C?=
 =?us-ascii?Q?BD2uKu3SiT0vVcpGVKDuYZg9662FZIXoNLRlC1hDnNT9N1QZRh9xCTPx4dsZ?=
 =?us-ascii?Q?61COiBV1IwwCgwr+1cof3TTSznMUFSO+HfzSD2HdO+XtxSIRXJvYcoYqRcEc?=
 =?us-ascii?Q?ozvqoNV5+ZDzgDYFsDzbjn8Fo1c748pyBiGvQYMpSTq5DKWtM71uYzYY94nd?=
 =?us-ascii?Q?tl4qw0Dfcg/kh0y7qREdRjSQK3F6oYMHbDT7dQbWhwGVrSkNh/jY/A5+zU+j?=
 =?us-ascii?Q?qGIZTM3n8Xbx0mbHKoWJjmQTeylACEX3m0/hcP1aw5jtUwMi8fCjxiSZvbAy?=
 =?us-ascii?Q?g5MHP3dZR56vbY2P6gvjl18KuIegLca4qeMiehDz72HiRjMA0t1q5eY71NzQ?=
 =?us-ascii?Q?CCGYF0nvmgM1sR3Jrq3ZlUIW5OG89y/NKLQvOdg7pqGefeo0t30D2RF2x1WU?=
 =?us-ascii?Q?VtSZfKUDUruFJr5ZqUnz1DZqbrNNvs+6hTjPiljd4nGLaa6sW0qTo0+48rKx?=
 =?us-ascii?Q?XiS1icsuRhDAPYXV2Zj7yGTFV9wpBcfCD/DyA1Ai0ReZeLTuuBdXLCURYcdJ?=
 =?us-ascii?Q?kXwUWHuG1wvQCzbFKdkxty0xeoFYmqfAI8vCdF60cPQjHGzC/26THN395tKg?=
 =?us-ascii?Q?2XVaunCXiHuZ9eI8kemIdSC/OEzI2s0=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: vC6tK1iHzedlGGYR0LjbhAVFGcFYAZ7is/JhzHez1bZWuOFY8ydlnLMGgelCZ9TchN/VXLWGF82yrHjWC3EL3ELmOEkFSovTFKqtsYhciDZrproEvKmjSgD5yFxzpfjD5skbDZ+IZVzb1Wmz/O+zMPAhhVTco+Ad9e5iB7tvZYl/5dlLv/CNckRtn7t5qmfye6C6RBLA7gDXYhQKXXjXqFh6g7X0splzGjuGjOx70cdfd6ec8m3+VyuHVFQteU1nOwbjfmXxBk7SvdjBLAidj69lvjVfdsLfvSMCpP2lZh8uyJZZAfHaettm4NlScp2Xla2CsYcF1cQ9Me9gIoCkxg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b71ad6de-ba02-4d09-1857-08de7e794589
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2026 07:47:25.5474 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ksMygpQE2FwAZZvOdpM4YgbunJo0CWUYhwOjh6/zFAxTziRt6785+ClQ187sLGS6/QLNqArcIjrOSMGDqwq5VDzDnQmDYjx/alhBrLkNBws=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6409
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773128853; x=1804664853;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1PazGrKLV4guyjePkujUHjXtOxRLfUKQ+hnNimXi298=;
 b=isCQWd/8tt/yjiv351Gnvqf/JtlzMW7TowAj+89RN5QllmII6UsJRy0E
 Y43gWS2cbLwnjhgF5kHOwKNd8WZZhfzzu9nksJZnOsJXLLyUli3Q5NLlx
 UOUaxbYEboQ/apVOl+xmKN7HH/zLxh/HlrrB8xFPE5kmyH3z396ZtwLMM
 adpCLONJ2S8/XjoS+mXzMvJdglqwHCUOMYpt/rxgP2qvXk27+mUNRbbzW
 7FDNrnIfbOCB9s6Gdv0i0OA44vpCzxtifyzofhO3yUhHcgWdVuPhaWT05
 Ep3NIMbT0rAk9erSD4U4pqBdpnWGIHLseWMsm+oWMzyqhfN5483U66NW3
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=isCQWd/8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net 3/3] igb: add XDP transition
 guards in igb_xdp_setup()
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
X-Rspamd-Queue-Id: 7FFAD24699D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:advoretsky@gmail.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:stable@vger.kernel.org,m:kurt@linutronix.de,m:maciej.fijalkowski@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,lists.osuosl.org];
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
	RCPT_COUNT_SEVEN(0.00)[8];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo,IA3PR11MB8986.namprd11.prod.outlook.com:mid,linutronix.de:email,intel.com:email]
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Alex Dvoretsky
> Sent: Friday, March 6, 2026 10:13 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; stable@vger.kernel.org;
> kurt@linutronix.de; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Alex Dvoretsky <advoretsky@gmail.com>
> Subject: [Intel-wired-lan] [PATCH net 3/3] igb: add XDP transition
> guards in igb_xdp_setup()
>=20
> igb_xdp_setup() calls igb_close() + igb_open() when transitioning
> between XDP and non-XDP mode on a running device. This has two issues:
>=20
> 1. ndo_xsk_wakeup() runs under rcu_read_lock() and may still access
>    the rings while igb_xdp_setup() removes the XDP program. Without
>    waiting for an RCU grace period, igb_close() can tear down the
>    rings while ndo_xsk_wakeup() is still executing. Add
>    synchronize_rcu() before igb_close() when removing an XDP program
>    to ensure all in-flight RCU readers complete first.
>=20
> 2. The igb_close()/igb_open() window leaves trans_start stale from
>    before the close: the TX watchdog can fire a spurious timeout and
>    queue a reset_task that races with igb_open(). Add
>    netif_trans_update() after igb_open() to refresh the timestamp, and
>    cancel_work() to cancel any reset_task that may have been queued
>    while the device was down.
>=20
> Note: cancel_work_sync() cannot be used here because igb_reset_task()
> takes rtnl_lock, which is already held by the ndo_bpf caller. Plain
> cancel_work() is sufficient: if reset_task is already running, it
> blocks on rtnl_lock and will check __IGB_DOWN when it acquires it.
>=20
> Fixes: 9cbc948b5a20 ("igb: add XDP support")
> Cc: stable@vger.kernel.org
> Signed-off-by: Alex Dvoretsky <advoretsky@gmail.com>
> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c
> b/drivers/net/ethernet/intel/igb/igb_main.c
> index ddb7ce9e97bf..9ba944bf67b4 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -2913,6 +2913,9 @@ static int igb_xdp_setup(struct net_device *dev,
> struct netdev_bpf *bpf)
>=20
>  	/* device is up and bpf is added/removed, must setup the RX
> queues */
>  	if (need_reset && running) {
> +		if (!prog)
> +			/* Wait for RCU readers (e.g. ndo_xsk_wakeup). */
> +			synchronize_rcu();
>  		igb_close(dev);
>  	} else {
>  		for (i =3D 0; i < adapter->num_rx_queues; i++) @@ -2936,6
> +2939,14 @@ static int igb_xdp_setup(struct net_device *dev, struct
> netdev_bpf *bpf)
>  	if (running)
>  		igb_open(dev);
>=20
> +	/* Refresh watchdog timestamp after reopen and cancel any
> +	 * reset task queued while the device was down.
> +	 */
> +	if (need_reset && running) {
> +		netif_trans_update(dev);
> +		cancel_work(&adapter->reset_task);
> +	}
> +
>  	return 0;
>  }
>=20
> --
> 2.51.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
