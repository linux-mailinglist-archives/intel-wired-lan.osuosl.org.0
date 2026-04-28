Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OORFDKt18Gk4TwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 10:54:03 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 88950480A52
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 10:54:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2EF29837EC;
	Tue, 28 Apr 2026 08:54:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wCOscfgqQUx3; Tue, 28 Apr 2026 08:54:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8F41C8380B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777366440;
	bh=GWylkI5zzkghC0JRT+AI2SsUulQJqnPOi8aa81ejw9Q=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=b8lbWqQCoQuyh44Sb1AIw3+MAFd59K0HC13S1ZRxy6en8DPFmVeUbtTsZBXeBiWL1
	 rivDed34EaizdofewpGKIwLRdtzuWnJP4O0QrlaV9e53F3zVHgmpz1MiDvkDfV1o/U
	 MJnx4Um+350CspiU/1N70RjAaLSw3yp8QOnt3TJyBkV9x1Pgpw5/l4ZYBCg0iOhvKE
	 th8r2oVo9jbzRc1UQ5AfA/rUaQlR7xZl6V+CCWfge4bFAgeRC4deJ21G3mrJglRTav
	 n3J7gqGE15k2+RxTnMQ31QHnYI/SnhcHFEYzTnSNTF7YVh5IDFQGUwW0OHx3pTKXaQ
	 vWZY83/E2WR0w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8F41C8380B;
	Tue, 28 Apr 2026 08:54:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 832A623D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 08:53:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6229D60F1B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 08:53:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z0q7HiP1GxQ3 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Apr 2026 08:53:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 986BD60B85
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 986BD60B85
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 986BD60B85
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 08:53:58 +0000 (UTC)
X-CSE-ConnectionGUID: GCEu2R2sS123nwNUTWuAvg==
X-CSE-MsgGUID: nhnEEP+tR0qDCgrhKU+HwQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="89358213"
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="89358213"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 01:53:58 -0700
X-CSE-ConnectionGUID: FCQZSLfFQye2qOhCjXs53w==
X-CSE-MsgGUID: +He1N9O3QteXEVaEwAoyPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="229540028"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 01:53:57 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 01:53:57 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 01:53:57 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.62) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 01:53:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ELp0ZW8RdWdy1KaKhLK/LrbTjtuppvfCPTPusqYedbr2ooUe6wicDBm0K4sppwtQsx3MWsHDbjyzDDLXAY0FeUWC/805uvogt7Dha/hpzVlcNPFZeKy+ELcTH+471ly15NqpET5qtYru2RAZ/9Iqno2hpd67VxvWXkhzSfmRszqrrBEkNg2r15tAsxNzUT2Vn0N4ejpLe055mAMhw0D1B6tVEeHL8h/94DZ1VpUMQY2cCM1J5aUasRPmHj6vGaVOM0YoAAxrjvs7FiyjpngEbiMhRoKTaaFQeG4ZfYrAtrMxe2my8IP9fsuIwOcRXWs3kVeFxxa1XeaOi6jMyCNKMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GWylkI5zzkghC0JRT+AI2SsUulQJqnPOi8aa81ejw9Q=;
 b=Vr6FuRq9SU0K6ezOOSDuYiD3KgcmBO283nztsPyDwJEdpnlIWak4sVRSkxIed7nowSOm4pGuCc8V/3v5yp9kX4Hnr9uU7lVdtwiQ3Ylo0C3jNRCqmdRAGZAR9ODo7+ZhfcMVG9ATqEr323DE6/h4NMWzTtzSp4EaXU+vizqsVo4xlL9ieneoLWSs0r6A0hR9+qMYK4wGKc5YLy69h54aHae1rQgX51l7bKGv4t0261MxE6g3t5dLKYB2oEa6K1C9WBk1PYfOh2xhV0g8oacgWP8F6fwjBOy0V68dOD4mZ5SyO8FikqHpXC7G/dqLAE/FvwOV531EqiKW0OHjpFILEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SN7PR11MB6850.namprd11.prod.outlook.com (2603:10b6:806:2a2::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.17; Tue, 28 Apr
 2026 08:53:47 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9870.013; Tue, 28 Apr 2026
 08:53:47 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>,
 "Hay, Joshua A" <joshua.a.hay@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Shanmugam, Jayaprakash"
 <jayaprakash.shanmugam@intel.com>, Jiri Pirko <jiri@resnulli.us>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Richard Cochran
 <richardcochran@gmail.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "R, Bharath"
 <bharath.r@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v7 14/14] ixd: add devlink
 support
Thread-Index: AQHc1ujvdSCdh+JozEiRAPC91rbLa7X0Krwg
Date: Tue, 28 Apr 2026 08:53:47 +0000
Message-ID: <IA3PR11MB8986407D74E9DE59F31B7AB5E5372@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260428082654.44364-1-larysa.zaremba@intel.com>
 <20260428082654.44364-15-larysa.zaremba@intel.com>
In-Reply-To: <20260428082654.44364-15-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SN7PR11MB6850:EE_
x-ms-office365-filtering-correlation-id: 672ced0b-925e-424f-8802-08dea503a914
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|38070700021|56012099003|18002099003|22082099003;
x-microsoft-antispam-message-info: KYQWwBnG6IC7why/Qp/vzAkbO4asnTgYoC3CyP/V6NVu7u5tBoEl/pQVCV6MmR9uVVnelIx6IsDv1K6/Fi1kCD0ne4PX0iU5zHMI7zr9kKxEZ2wIXRqz2Dvmm6XscQhDQ2N4Xh/lh1dZa4jcyzv4bRFuIQCcax4tRv8hsF2Y7Lrt/knJ5BOtJrdmDSCHG9a6qnCAY/WafGfmRzFyj2iAu++MypF4Wx/URdPRx4RwnBQ4xy2Y9+b0suJJcTo6DDgVTmNoWgmUQaWOX1Fg8o+bEUAmoqaSAyaChL43sUDXmj9ubYjlljOv0yUEM0pHCJUKTPSv3kpxIHMaoSr7KT9lHuw70LMpz13y535ER3izDXlx9faoh+DIfrTG8cxhefdqhtiX0rcxQRhR7TtdOnWAspqLUVJ8uk0VR4m9pN+nJuw8xrcUOjcJX8WPAcBFXEfUqZ65Q4Eg2ZEZsZIY4e5lDwDMGaUn34hhqUB80LiwHjngRQOGeswD/qb1n8UfZ2VMl8m3FaokDYrion+vT92VGW2V8UlIRcoBybfHy745aUgZXwJikZ33H4JPMNUoFc51WIzyIS3HDl8cBTRYmf1PYLFX65A9ubwCDJmKZwe1vSvhkxeGNua3p5YsYR643Aqh+Tc5JUozaPQ/vVdn2/PCUBDRPaT6Y8gLH/seExtY5Q4dE016Pf9CgOY1IZr61VoaY7vCxNRs7/a0vreddwnomnuDypmPVRkPl6RUVwD9yimoAwQ4nV/Ps175jFU/jlHEXbAu260W0U5LdhR0GtTX7i6GsRSpsXWTzhWBCS89cAM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(38070700021)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+cMxzfMSHAwN+9Gc7jlD58MtmTx/6tiQ0qqBvA3G17dUvDxS74fmdq4XUFul?=
 =?us-ascii?Q?nrGUrG6liuhWBIifc0kHjIHkNEdjT+4J2ijdwjaZB9LpO+CjQrQrTrvdFsJd?=
 =?us-ascii?Q?vLET6YzjhRH/VPignrmWu6eGdydmlaC7S5goE0X1u4gnTAN+Ijrx6zzAFjia?=
 =?us-ascii?Q?sGh+T0zDrHaZlBwH9T2Y5Y8+VyCMor3kLqlGVdg+cMWFgtlbi8wfKWzZ/tr2?=
 =?us-ascii?Q?d+eXxOfAIr6aCmTLe/W96EmmKUEuNm75n/lT12+rTrMPZnkwkMOhveqeSVGY?=
 =?us-ascii?Q?2yf9cdGISS/SCdKa4xmrQWC1xhX3/4FScTXEGq0PxyTo9TNXMk9Z2lYfX86D?=
 =?us-ascii?Q?9L2qibx5ZYh10vK2ww5gAlTvbJq68rSHyODKUZnCJRYpyhLDLWFG+vD2QQBY?=
 =?us-ascii?Q?dAQfY7z0FKN5+bBzUhS8eCMzxncTwtyot6qTXmiOGzDm1tDu5znyLqcG+8wo?=
 =?us-ascii?Q?wrzSCLWH2lQRUT8OndvqMpmCk7iS0ikXprMWzbKBfjhMBeE1wtHW70ROc9ow?=
 =?us-ascii?Q?lB6zyOJWIrvsOT/O4oujJ82TCtB7XnOCiAj9BCqOtuBO8p60OH9621PWQevc?=
 =?us-ascii?Q?Cz7rCFC2gljkrkl0w322jlcWG7aKinlERvkCV3t03zr3yM3Dvd5nzlICgazZ?=
 =?us-ascii?Q?kZvtVVaLa8R61Iwt+84ol+hxUj5UNRVjsE5IqMdRrjMo0hckfWljiy4MR8Jb?=
 =?us-ascii?Q?ITgjiSqRgVmAZdhuYGurg9IhqrXWRAG6ICdSFjaLS8OjYngVDC26Mlc0kF2J?=
 =?us-ascii?Q?cFc9CGxWUqfvqHLLNEgUHqFHMegFfJPyRddCRO67e9hcOxnQBQ3quiqK3nWv?=
 =?us-ascii?Q?+7Le17udoK5aHSs1MOnvq7weXqi8Tgv9fkaoaqKyfCjwS7jNYjuajCRumYQk?=
 =?us-ascii?Q?pBtIoJ0ayK1rvzEPuFVKpCWEkg4XTkWhF6+i0O3cx5Ug3NWaEhWp5QAYbcR2?=
 =?us-ascii?Q?dmVOCN9b1qdhJfbSOO1fF/KWfe0ziu42DoG0Y4viiUq7YmN8Z30nAPDAttYB?=
 =?us-ascii?Q?d+FjxUVF5vKfzcvwB8TIExX/wlFcyTc5YrV2nMaKXwLsJNaPdhfj7xfF7+/+?=
 =?us-ascii?Q?OUghnMNA4ZAxsKfIzdPKTTXqCYTDjFdGjjFn8xiy6PUUCSWjVoMbqKYvXO56?=
 =?us-ascii?Q?QfQU5G7Xp40O8DiLCEIcmU05Y2/CE0eL01aQltvauxyKSxoJ3DGaqZdTh2yo?=
 =?us-ascii?Q?ZT+vGQYiRzO6aG7dxLSDc5c3G1q5M5V1vhCT5umGtms9wGSS1+IKUm4DOdA3?=
 =?us-ascii?Q?OhXWLvWS5L7EeTdE4VUbsyJIYCzy0rwQyKMh9CKAIev5iP/qQGm1t4WUJeGs?=
 =?us-ascii?Q?AUZtV37razoAN8w0m35OmtgsJ8nqHbTG6QsFlIO5xCIW2PS+OEcXSZepeh46?=
 =?us-ascii?Q?TAcLdtlqUSrrtCndWO1lSLIQ347WkUD2qhty7RnyOa/3o3T5fW9SCVQTqv/K?=
 =?us-ascii?Q?eXJ9hFoHER2lAfXcb2NZq0ffGW1KiYiHUogFtWPF8tbS26+UM+jBCf6m4dUT?=
 =?us-ascii?Q?3Qqnv5wrDZPqbve1NXcetvulWOXpCA3kPQ8xWov9yWk/fHzix1D5yDtX5yXb?=
 =?us-ascii?Q?tcrIECjs6Tkqqp388JDac0mM6PCUPDKZV80qTwArQ77RDqz4gyhotKNEpMKZ?=
 =?us-ascii?Q?mkeOCGIi/evR6dwWVievZPLZEYvC1d61j8V43XHQriydO/v+vl6fc6L02HBK?=
 =?us-ascii?Q?6Sm1f5CFdEZtf2Y2MnoUnxpIBv4NqfFoVOwo5A92QFKbK+rFeC/ijoKZcTGI?=
 =?us-ascii?Q?uEkaepaEbX8dhJXabDzm6D5yVr9qArg=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: ADKYaIiXHTLjacrg5wRTEEmMjIcTMPEMsIjj+YPJx2/de+1Q46zzd6Z0YJDyoaG6OH3avzgqQoCw6V8Kt/NCpsZ12VTD9IWJ/ER36U9lIMg343iJyqr0Y5AEHtDqIMwS+GtIpm//5KIgF+c3VN73Y3uy+yBqCuDfEt49LwirKJnvFf2R9tEoU0nieUoQOGjFaol8HDU1me5gWMTIT2YxM5IrUEHslmKGmD71omnHxUCO9aDCse54yiwBMOpaghm8PXAlHN/9m+kEgVFxuswGWeJO7mbfF+ttPd2viMpEbdZkVtIQRZ/8/mWT63NBbBwYfBFjPBHbpuTZfb4b+fBlMA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 672ced0b-925e-424f-8802-08dea503a914
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2026 08:53:47.2960 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CXPZtXqfRebHs12r6ffvw7916e1V91DzxP18qLkbb5TAzWbApi8BxQxvTQg2Vx96xaPpxK4xOkxG2/k+qvlZQkswOgbJjFNB6QZe7F9QDSE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6850
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777366439; x=1808902439;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SZXX/ImguTg6GgqgT5teV0T+u9V1VtGxutpW+fwgi6I=;
 b=Dah2IAxSM2SBV3d7P9N8BV2KNy05NYbCj3is6f1KzZ/aP8iTPz4JsUWZ
 Pvqy0JdjIm8YmtxuOxqskocwYoU/JbAhS7U0PZe+rsC2srdrgb+yi5cUJ
 kPzu1C3Z6YZMlwOzv4pjqU3FqN9dX5oeQXvwmA+vDn5X14FgM2LJ0vxJO
 Kyadn9VGiFnSg/6dmNVw2SnqtdXzIlrXirAaQc0RvKmglaLTSkINxrAQg
 +fyUjtpQFgTpY/impmMr5JZkG7GOiUYZxm2t9zDLds7TfPCxGagiMFqIF
 nIaBXENM3NWhG9v/eeZFuduLQ7pBVBhH4AuNJ976RK2oaDTd0yDJlJknL
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Dah2IAxS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 14/14] ixd: add devlink
 support
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
X-Rspamd-Queue-Id: 88950480A52
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:anthony.l.nguyen@intel.com,m:aleksander.lobakin@intel.com,m:sridhar.samudrala@intel.com,m:michal.swiatkowski@linux.intel.com,m:maciej.fijalkowski@intel.com,m:emil.s.tantilov@intel.com,m:madhu.chittim@intel.com,m:joshua.a.hay@intel.com,m:jacob.e.keller@intel.com,m:jayaprakash.shanmugam@intel.com,m:jiri@resnulli.us,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:richardcochran@gmail.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:netdev@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:bharath.r@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,linux.intel.com,resnulli.us,davemloft.net,google.com,kernel.org,redhat.com,lwn.net,gmail.com,lunn.ch,vger.kernel.org];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Larysa Zaremba
> Sent: Tuesday, April 28, 2026 10:27 AM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Samudrala,
> Sridhar <sridhar.samudrala@intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Zaremba, Larysa
> <larysa.zaremba@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Tantilov, Emil S
> <emil.s.tantilov@intel.com>; Chittim, Madhu <madhu.chittim@intel.com>;
> Hay, Joshua A <joshua.a.hay@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; Shanmugam, Jayaprakash
> <jayaprakash.shanmugam@intel.com>; Jiri Pirko <jiri@resnulli.us>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Simon Horman <horms@kernel.org>; Jonathan Corbet
> <corbet@lwn.net>; Richard Cochran <richardcochran@gmail.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; netdev@vger.kernel.org; linux-
> doc@vger.kernel.org; linux-kernel@vger.kernel.org; R, Bharath
> <bharath.r@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v7 14/14] ixd: add devlink
> support
>=20
> From: Amritha Nambiar <amritha.nambiar@intel.com>
>=20
> Enable initial support for the devlink interface with the ixd driver.
> The ixd hardware is a single function PCIe device. So, the PCIe
> adapter gets its own devlink instance to manage device-wide resources
> or configuration.
>=20
> $ devlink dev show
> pci/0000:83:00.6
>=20
> $ devlink dev info pci/0000:83:00.6
> pci/0000:83:00.6:
>   driver ixd
>   serial_number 00-a0-c9-ff-ff-23-45-67
>   versions:
>       fixed:
>         device.type MEV
>       running:
>         virtchnl 2.0
>=20
> Signed-off-by: Amritha Nambiar <amritha.nambiar@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Tested-by: Bharath R <Bharath.r@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  Documentation/networking/devlink/index.rst   |  1 +
>  Documentation/networking/devlink/ixd.rst     | 30 ++++++
>  drivers/net/ethernet/intel/ixd/Kconfig       |  1 +
>  drivers/net/ethernet/intel/ixd/Makefile      |  1 +
>  drivers/net/ethernet/intel/ixd/ixd_devlink.c | 97
> ++++++++++++++++++++  drivers/net/ethernet/intel/ixd/ixd_devlink.h |
> 44 +++++++++
>  drivers/net/ethernet/intel/ixd/ixd_main.c    | 16 +++-
>  7 files changed, 187 insertions(+), 3 deletions(-)  create mode
> 100644 Documentation/networking/devlink/ixd.rst
>  create mode 100644 drivers/net/ethernet/intel/ixd/ixd_devlink.c
>  create mode 100644 drivers/net/ethernet/intel/ixd/ixd_devlink.h
>=20
> diff --git a/Documentation/networking/devlink/index.rst
> b/Documentation/networking/devlink/index.rst
> index f7ba7dcf477d..f0c077843fa7 100644
> --- a/Documentation/networking/devlink/index.rst
> +++ b/Documentation/networking/devlink/index.rst
> @@ -88,6 +88,7 @@ parameters, info versions, and other features it
> supports.
>     ionic
>     iosm
>     ixgbe

...

> --- /dev/null
> +++ b/drivers/net/ethernet/intel/ixd/ixd_devlink.h
> @@ -0,0 +1,44 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/* Copyright (c) 2025, Intel Corporation. */
> +
devlink.c  has:
> +// SPDX-License-Identifier: GPL-2.0
But devlink.h has:
> +/* SPDX-License-Identifier: GPL-2.0 */

Why?

> +#ifndef _IXD_DEVLINK_H_
> +#define _IXD_DEVLINK_H_
> +#include <net/devlink.h>

...

>  }
>=20
>  static const struct pci_device_id ixd_pci_tbl[] =3D {
> --
> 2.47.0

