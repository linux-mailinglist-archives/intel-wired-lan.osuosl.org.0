Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yJg8COuL62lBNwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Apr 2026 17:27:39 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D7AE3460C43
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Apr 2026 17:27:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B2D7884CAE;
	Fri, 24 Apr 2026 15:27:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1mE8_xo7Nysw; Fri, 24 Apr 2026 15:27:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1D6FA84CAF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777044455;
	bh=ivNp9ZuyQFnvXLV4vMeAlw/7SxUI7JVn9GnJsDcdlR0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vVD29lPE2TDEqo268A8eCXhuSJhnYPnaIbMl8sL8Hj3ExYA1h/vN/f9hBvxWo38y2
	 zcmAHj5/mQqtZQT4AsQ5JChMvateWkuodU7itp95bA1RtJb/ztAdA0kt/KJkOypk9K
	 EXq10ZEWe06EtxHMnmZo9q6btKLv2XijV8Qp0f8UHz/fiETKSHLNVnz8jnSh1JQs/S
	 OmfvAlPwZ4YMcuXjpHwXcL4U68jjmDYe7wYm0QlX2fx3FOSRDqm6CS9YL64Yh73TOu
	 TIEpYGz1KrH0kCJVmJm2yHanMDImpykhede3Rr2VrVWVTzifsZZ/AGu+AbbSl7sme2
	 vTJMZoIDFp4pg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1D6FA84CAF;
	Fri, 24 Apr 2026 15:27:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 368A2206
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2026 15:27:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2885D84CAA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2026 15:27:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4KD46tmkT3_n for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Apr 2026 15:27:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 43C4484CA9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 43C4484CA9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 43C4484CA9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2026 15:27:32 +0000 (UTC)
X-CSE-ConnectionGUID: mhG7k+bXSAaubDvUoPRSgQ==
X-CSE-MsgGUID: KsCvfau0Sy+SWcx8r5QxSQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11766"; a="89489485"
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="89489485"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 08:27:32 -0700
X-CSE-ConnectionGUID: LRk1ufgJQlq/Bj4cpeCKKw==
X-CSE-MsgGUID: x7A5Qh8tQSCBvYzJH6+AkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="228404675"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 08:27:31 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 24 Apr 2026 08:27:30 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 24 Apr 2026 08:27:30 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.60) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 24 Apr 2026 08:27:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aFsMdhMhCha48+JR7JOMAgNb8qWu0GbqwEivumnsdVutdN8FPWMXEVBL8vjs17gCsP+J1yN5zJSRqk4mN+ltdCtF88AU05qAWqxwLlhcumGMmLxm6PNQ7KV54pSNTDatE42LdDh2sTboKgx6Kmu8ZODe2MiQbF/rF1iGfuY0lWLGILINSJQrAySudF5iz27cIPtVrGCSx1nwHg0zFrEddDX//J8znKIE/8cHTVJb03mQM7LOkScQAWUiEp3SgCym8vO0Dhig8EgVco3DbWeZ2SgrWDTf1CFKSdlVXLboPQpn3FnA451mE/OLcYMe/XY0lx7qzC1eELa/RVv/rWfCLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ivNp9ZuyQFnvXLV4vMeAlw/7SxUI7JVn9GnJsDcdlR0=;
 b=T5ix7NQTnQhWnTUPzlzV3MqUWVOybExNY71dmftTVrAeXI8+lGcGqtnql9pMekk+kUgDdYlqD8n7Y6yIwhCZG2/QD8K/x4aM4UrZ9+XJIFQIHfxWdiId7lwMpqjuaoN5yyVP2TWwkKWB7Kr/WAkM7e8JWqhQIceqsPNk/lYNujquYljDAk82bEizOPF+V7pg2qE6HdMCWJa/Y2f1M9nXiOGrt82o5TJ2z7pB13LiEHEEyyEk+lbqMrhlLnYMDK/HAp+3vu9TSGy7nWU8mv4sLVRgrilzmjeyoikfTFhvSuPAYROis5kmLR2zZNw3HBdGMU9imhHVeFJD+aHj/WfBWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SJ2PR11MB8540.namprd11.prod.outlook.com (2603:10b6:a03:574::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.22; Fri, 24 Apr
 2026 15:27:25 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9846.021; Fri, 24 Apr 2026
 15:27:24 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: KhaiWenTan <khai.wen.tan@linux.intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, "Choong, Chwee
 Lin" <chwee.lin.choong@intel.com>, "vladimir.oltean@nxp.com"
 <vladimir.oltean@nxp.com>, "Gomes, Vinicius" <vinicius.gomes@intel.com>
CC: "faizal.abdul.rahim@linux.intel.com" <faizal.abdul.rahim@linux.intel.com>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Tan, Khai
 Wen" <khai.wen.tan@intel.com>, "Looi, Hong Aun" <hong.aun.looi@intel.com>,
 "Abdul Rahim, Faizal" <faizal.abdul.rahim@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 1/1] igc: skip RX timestamp
 header for frame preemption verification
Thread-Index: AQHc08OD/II+GdNj/kGx3L2SHzcPQbXuVhrA
Date: Fri, 24 Apr 2026 15:27:24 +0000
Message-ID: <IA3PR11MB898621435FAC13D3B95499D1E52B2@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260424075907.310456-1-khai.wen.tan@linux.intel.com>
In-Reply-To: <20260424075907.310456-1-khai.wen.tan@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SJ2PR11MB8540:EE_
x-ms-office365-filtering-correlation-id: 6709e05b-19f3-4ed4-8ac5-08dea215fc90
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|921020|38070700021|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: wiHJzpnjbLFkSelixvijfBStDpxMAX1pmGeCwcZxL40+qAdbFDzxHB6OotM0WanNXFZcczhsNVlfDP4SLE6wgXw6wZqz3V0A9CviqgnQ57vsRj608o7k7/+9c/C2Dc079g+cw3LEDedQvtJYFXEYRAd3c3PX2L4N3ELRO/GyYASTR/t09Zvl18pH5pufG9oKGu1GwPnkPxE8zK8UCeIl7OgrjX2SpfpIovijZ/vz9viwG1TWCsi6Xp8AD9hLRvt+PxUBetILZEz0QrBJ+jVQG6F/H5QfOLx7SehThpCUX4fIb1uRgvvyWktBi/CuelAb2l8FnF0zVZ9oiALwVbqbJ+d3vUNgiXhey5Ewq7OAmfG94/ETaStGgS1afTc2uRPIEn4JMiCbZIBTvMUyqeAnKqS6YP0+RyhLYu81XfnjNEVYN4wSf3zJQo+sBRz/LBiXSCvdGtJ3S5HASFefq+YN84DBPURKD0XZv7+wkJDyTC9/N5lMGafVGtIqQI/XGqfazdq8YC9jBQ4SsaiSinslSrd3Qv0GhQZ2RYxp40/R5nRotc0YH4n24epyGBjMGRDCyyAQSs35GkqOcn03FQLSEkqWStqgTHpda/v58Trl0+Zq1NPTTMZennxFt+FTqRHBTmlkrkdjvSYxPHryyRLEuP8djq097zK+wLrFBafIpJuMIA8qcqqIXRzR8kJyWiNCxe7rOvmRb6k4SGSnSwOITi7GMBrd8CwaZDpfA+6wqL9BFx7d7cKTjXk7ZYc3VjqjM0DawvCt4/Wr+33p/18qc4oRLrmWLMUh+tyP6T+VtSv8CFMMwCkHREkhN0LDEy7Q
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(921020)(38070700021)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Dg8MJJVlUF67wYdmDa15ytzqRvCZvoK6+dFusqGhy6g/sak/s3lLTOCHBqpy?=
 =?us-ascii?Q?lSN7A4dtHJQpHjbZ7Xyu33DbG3I7pIfFVTEBDnBzuwSqu7ebbLMWUFbcBgD9?=
 =?us-ascii?Q?4hweATeAD3L78O5Fh99uckIZpCg33+DyZYUyVA1XC6GGmTkivADzZ9tzUu7g?=
 =?us-ascii?Q?V9QCLUOqHmqS/rR6Ia8E61/lKvl341DtA/TRSpKOBvI6y5D1bnjtHPttSut8?=
 =?us-ascii?Q?LnNTFoo4FtyRnwX4AkaTjp/zaz08PaKPQh5I4Bh5NTCyCfAJzPeKbbcI3KgQ?=
 =?us-ascii?Q?oRcJ8QNnccx4XQU2hs10g3B4kOrcPtliKa7SeA2kXxTNTNcNE0Eo2+ucDNAa?=
 =?us-ascii?Q?vDTQTnl+i7GbsaU2ySW0LpFXBBBfbALWLoYQqUBPLi3nw5e9mGhutQ4U9H+O?=
 =?us-ascii?Q?vPJe7mmgCNmhDMTyNuD2OsksJ48utVuCeDEmRlQ6yVbwPuB8dh/oGyyros3V?=
 =?us-ascii?Q?9x4HxwJ1XGjBZobOs68wiwQyhKUDApbmTFCeQhZ69DqP5a9nTnaKo0zM8kXs?=
 =?us-ascii?Q?X5J1W1/Xpfl9+th1zHLpznQorpeixaPp5u4gb4eGYfIWJDsBufWjwYuUl7xC?=
 =?us-ascii?Q?e7BkSHuf1hzes2eZBzcNEqC/Br9RQLxL6uOrtt1gJG3cfoRfMYB0bH1PMFFG?=
 =?us-ascii?Q?k6eU3N9i6mM+/wEW8Gq6sj9GbSu99q4IdoraXm0jgvWMjxicmWo8Jtbh56XG?=
 =?us-ascii?Q?4NcZFPmaeKDORpf1JKC/Yh6upaAU6tuJnuFesYyjxkxjUpkTRrrGGyYxVBKJ?=
 =?us-ascii?Q?UHr0o79EAQyD3h8BGQJbge9WyH/ij64pivDJtNLumGXauBShkbh76pCyqNhO?=
 =?us-ascii?Q?+yL0RSguGO7VApY5Q9GNVV17gEB/i1NNEp8jVnCIuXdEbBuhc0PnRMMpV3m7?=
 =?us-ascii?Q?Az8vWyIG1C4ooadaHXR1UxQMZ69mYgfUjwG0sKC1jib4Jyf0iPQuvakwLvxK?=
 =?us-ascii?Q?1WdCzRA5sYXcLFADPo+aEU2ajJB6NiGvhsEHjYluYdyE6gsXh+1xltwyKGL2?=
 =?us-ascii?Q?NzBxGVFcwCUGidwL+6B8ePUGItGlMN3o2r7zCTCkxyRE1VHvo1mM2yKRmXfx?=
 =?us-ascii?Q?iPbef15Gz+FxrfgE/+38D3Zm1xSYsClD69786T/M0XkybL0vXp+I4VQ45WeF?=
 =?us-ascii?Q?/5JL9iNr/EiQTsl0F+SksHagqsliLXeAwbfwz8aJ6haKmS313E/RAAlw8nrB?=
 =?us-ascii?Q?5fWr1hP4i6GJvy4zR5xzB7GgKRBetIIoV567WqWD6xYZ+3nSnQFBaHQsPBks?=
 =?us-ascii?Q?XgsjnmRbsha9jo/QpCh0ia00GFDoAFggc51KOEBhhR1ETozQ9wAgYImZX82p?=
 =?us-ascii?Q?K6HLZRpr6QACSGawed61/j9E1jLoNXrkOl6u19hMW3uj/pcF1zIicRHYTQPA?=
 =?us-ascii?Q?du+CxCxmSngTF2NTTy+Uo45WvdIYkxibw0xNBEIA9o5foxTO1YGI6zFfEHVq?=
 =?us-ascii?Q?5VP6extNGEOzSZmJqNuWIe+ISqgoEgay3p/CNYWhpd+VMw2xkyPRgQk2EOdn?=
 =?us-ascii?Q?glwDhsG5vOvO2EPf91YWD08uqwKM+IXx2IYOSVQZHutxDht49DXCiJbX2LHf?=
 =?us-ascii?Q?VQmLWd2xEtLoQhsWq2ynkHMIoyKwFvMqloF3QAtSJBeof5Tnw4MM0sihuVTP?=
 =?us-ascii?Q?lKcxo/5N0xkA0X8yTVbzabLIkZQDybb9lhp/hqxHJLisI642aPvxBbylbGlz?=
 =?us-ascii?Q?o5T4pwsxLJMBAm+/gW80OaCBg7951SmiK98qBsbPvLbM2JxFJGev4POwrcBT?=
 =?us-ascii?Q?AH0zO4iiVjcmCBhpoDLwOOh4Nw54GR4=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: AIVFwjmnkTZ9hKapP5qb9zszO6oNpvkV/bqEL+O+TPwCDQYxgln9luxPFXznIIiA4MF5GiOUixESmCQvtQ4ibgEgs0sGOzP7UlJ4XJninBWjQvA6bKPvyYgl1lvYCuytGS+r+zo4B5syDAMrizPZqd+lUvJvBWBA8Wuc34Sr1xeapEgJotzBK+3hlOYPSlZlolI7wKK8XZYu2oJkWa6mnXmYA1kBEMx2IwS/ySsrAgsWWZRG9sSQL+o+LKGDj/o0DC++/w5Nu6ckY6phXEtB4yFohvH3xRIly/bdGrWFFrzzHrYZWdJtEodRtEbJrGjG/IHU5p0VVTtQSZqmLFokmQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6709e05b-19f3-4ed4-8ac5-08dea215fc90
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2026 15:27:24.7590 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EG27i0iXA0mjzI60YcFMgvI1qC+QsN3nZZHhDWjLguuZraVwJ3URuJcin9t3iVWK9XNrV8/2EzieOA8swjaq1bnB7bXthmdBdSYZ4B/gMCM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8540
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777044453; x=1808580453;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CCMRAMP1kT0WFgdThz1c423Hfz7j0wtM//ub26PZAR4=;
 b=YTfZ2hCUqbE0KwNnGoPCllw15JtyYD0X7R+dheFnmUh+Qw2bo3/CMgwu
 wYoIttwK4Oy/y8SeHQ7ueHiafM6uUVZB+sBeJfUvDdS7lFNGIYvn848FG
 ytbcwj36AdR9flsgrxrx/r2lanSQVzx8F5LocEWQ3Mo8nu6ewkDEWFBkF
 jAvvKceeKY9J7EATXnBprNb9VZnb/sPeDvobdwT3KTSZPd8zkuoL+1VxS
 bwFZQgUHNk+TgHTfx9+zIbZqGZAXYodUnauaCTIRR5nU6XZBBjiETsT29
 scY2oVlJgZgOgE+6+ZPlbi1hjgzFX5Aafh3cSNdUWWqUn2PcE7UyDG0Hr
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YTfZ2hCU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/1] igc: skip RX timestamp
 header for frame preemption verification
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
X-Rspamd-Queue-Id: D7AE3460C43
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:khai.wen.tan@linux.intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:chwee.lin.choong@intel.com,m:vladimir.oltean@nxp.com,m:vinicius.gomes@intel.com,m:faizal.abdul.rahim@linux.intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:khai.wen.tan@intel.com,m:hong.aun.looi@intel.com,m:faizal.abdul.rahim@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
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
	TO_DN_SOME(0.00)[]



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of KhaiWenTan
> Sent: Friday, April 24, 2026 9:59 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
> davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> pabeni@redhat.com; Choong, Chwee Lin <chwee.lin.choong@intel.com>;
> vladimir.oltean@nxp.com; Gomes, Vinicius <vinicius.gomes@intel.com>
> Cc: faizal.abdul.rahim@linux.intel.com; intel-wired-
> lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org; Tan, Khai Wen <khai.wen.tan@intel.com>; Looi,
> Hong Aun <hong.aun.looi@intel.com>; Abdul Rahim, Faizal
> <faizal.abdul.rahim@intel.com>; KhaiWenTan
> <khai.wen.tan@linux.intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net 1/1] igc: skip RX timestamp
> header for frame preemption verification
>=20
> When RX hardware timestamping is enabled, a 16-byte inline timestamp
> header is added to the start of the packet buffer, causing FPE
> handshake verification to fail.
>=20
> Because an incorrect packet buffer is passed to
> igc_fpe_handle_mpacket(), the mem_is_zero() check inspects the
> timestamp metadata instead of the actual mPacket payload. As a result,
> valid Verify/Response mPackets can be missed when inline RX timestamps
> are present.
>=20
> Pass pktbuf + pkt_offset to igc_fpe_handle_mpacket() so it inspects
> the actual mPacket payload instead of the timestamp header.
>=20
> Fixes: 5422570c0010 ("igc: add support for frame preemption
> verification")
> Co-developed-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> Signed-off-by: KhaiWenTan <khai.wen.tan@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
> b/drivers/net/ethernet/intel/igc/igc_main.c
> index 8ac16808023c..c470d2354ce8 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -2649,7 +2649,7 @@ static int igc_clean_rx_irq(struct igc_q_vector
> *q_vector, const int budget)
>  		}
>=20
>  		if (igc_fpe_is_pmac_enabled(adapter) &&
> -		    igc_fpe_handle_mpacket(adapter, rx_desc, size,
> pktbuf)) {
> +		    igc_fpe_handle_mpacket(adapter, rx_desc, size,
> pktbuf +
> +pkt_offset)) {
>  			/* Advance the ring next-to-clean */
>  			igc_is_non_eop(rx_ring, rx_desc);
>  			cleaned_count++;
> --
> 2.43.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
