Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6F/RJ6CH8GnuUQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 12:10:40 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E28794824A7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 12:10:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8F9F860F81;
	Tue, 28 Apr 2026 10:10:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ocseE5S576Uu; Tue, 28 Apr 2026 10:10:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F08C460F92
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777371038;
	bh=UdotxFy4WMqhXrZTAtZ2t3ubMf8ab1lCWqe6Lsfxyak=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=q4xcOchA+/ZOMaBN3pMhQSMoMTwnC11MePPb/GxbYCBwfFLM0QRngtJGyGwIuxAEg
	 exsXVqP7vxiacPWNrXrO3CLgsNhZt2Vi8C99gmlG4NBCyvzp+U44ASgC5P7uEtuq0C
	 X8hlhDS4xZPUnfdXr1o1+qVPu9f7n/rADV6zCek5OredY7vNm0eZuH8RZTst85iNp4
	 8FCaGomQtGoAdHzR6WJfw8yz2bnzoK/JXz2bpZIWGu56ZbSB5cNh5i62nscBYWNj2I
	 2YDFotPCq8Ef6xSUd0/tU9saC9IRD/W5arcsyAVYrPCXLgok7g1NJ3/BawBvJZhBz9
	 EdgOYoX/WUwjQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id F08C460F92;
	Tue, 28 Apr 2026 10:10:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id DD730231
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 10:10:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C3C148148D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 10:10:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gB3RquENERjm for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Apr 2026 10:10:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AE7088146B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AE7088146B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AE7088146B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 10:10:34 +0000 (UTC)
X-CSE-ConnectionGUID: cwCEjUF2SIKfTK8kd9F6Fg==
X-CSE-MsgGUID: sn4jKhJqR+q55lFq8RCy3w==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78258534"
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="78258534"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 03:10:34 -0700
X-CSE-ConnectionGUID: M74RYtHiQkG3aKuIUXiU3Q==
X-CSE-MsgGUID: 7XonI1TfRMWE7xH7HCUEow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="264301032"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 03:10:34 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 03:10:33 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 03:10:33 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.48) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 03:10:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VxHMtoHvWCXW1/uh0HbmhK+D8vIjtGA9QG1IBVxzN4AJDUiavoVqwkJwosMHSJOoiMfBl+fSpkpf9SmEn00QOqSJrj5r0tQRHU8hcGi9L7e0l53HV2VqKyv9Qb7RfBaJTyeuPvthf7PzZ/H4NntZbQZUFafrFGHCRX+TQ9M06Q1eHbOP0eq8+YLuomuFDkujRenLnygMxNW1ErbFPl4ezakSkBQykPsz2cUSiI71tCsTGS28FdrUo6pWu9SrjEyTEUejACOx7h3hmKIoig9vSRSMCQG4f5/E+tqMdqajGrcLVRdxhKOWYUGymrEnuDNr/PNZrwmRfdOam5WusJ0Ltw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UdotxFy4WMqhXrZTAtZ2t3ubMf8ab1lCWqe6Lsfxyak=;
 b=NOvXffWvkKgASUF6rxMMwzsFMHhrGYM+T8YwDtRdRH4mS4PdzOwfEz7QvocMahl7Bq/Km0c9pWW27GqPaMCgCSbYqAt8VD8xAISdaIukvKwXp/zhSvp6UYqsCoIrzJJoGoYuKlYNOFyQELU80QfNrFjeS4dJrYoZfSv6HFe8lbkdmIC0SnZQRttyyzVIS2qYQTKZ9eGaA/p+KIuHTY2HBMsqRinXh47fNmX58xL0+X5G4iFyGVpEJeRGswz/r05MED8bV4YWKsw3uI+uGzA6dk6NCZRqzYEktg5L5CFRV0x1qIwpw/4Qlb58PqFO+ziKPJ06R3KNleHsfKOzzUXcSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by MW3PR11MB4716.namprd11.prod.outlook.com (2603:10b6:303:53::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.18; Tue, 28 Apr
 2026 10:10:30 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9870.013; Tue, 28 Apr 2026
 10:10:30 +0000
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Burra, Phani
 R" <phani.r.burra@intel.com>, "R, Bharath" <bharath.r@intel.com>, "Salin,
 Samuel" <samuel.salin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v7 05/14] libie: add
 bookkeeping support for control queue messages
Thread-Index: AQHc1ujkGaoBb64f8Eeh7D6uZJtQ7LX0QI3g
Date: Tue, 28 Apr 2026 10:10:30 +0000
Message-ID: <IA3PR11MB89869A7A2DF0A72FA0838BDCE5372@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260428082654.44364-1-larysa.zaremba@intel.com>
 <20260428082654.44364-6-larysa.zaremba@intel.com>
In-Reply-To: <20260428082654.44364-6-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|MW3PR11MB4716:EE_
x-ms-office365-filtering-correlation-id: 357f5129-ff3a-4fb1-ba6b-08dea50e60c4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|22082099003|18002099003|38070700021|56012099003;
x-microsoft-antispam-message-info: rqIoz3BI9S0/+xfBm+fjaSsxBDDGrjNjI+goJ4eUPo6gWoGm2BErBgJDMiyuUxfXfgoAcKUWkqlyA9c3KKHEDFcv65smH1yQQSWjfs8Fzmt0Oy28R60YD0nUqXSw8eM0TtmLjB3Ryd+0+IYqo9tOwwG7EKMYsayg6nU5G7lkyzQcqRK/WJ/QJNZ32pPw9jusEvVnXYmgG3065FrrkEpmRDv4j09Cy/TxXCu9arzL8D12XyinoNsoYFvw2bNtsMTBupinhfHCmwJvtpFWIHRgiCqMMjOglZKugx49Oi7zDeVmP/7/2X/gTDtdb7FbT9XDC44wGSeIDvMNLW+HK0el85cnT1TKy/OsloxW5PTdFFCEoUo6a3LMpthgaCf7xX5nGp9St1DARn6lY8DGr3oyg3oiRro0R9vKKYsmClHPjE8Q45KxXcwmlxwyWPuk6X1CIl3fJ9SaxqyUiYlIn7NaEOwSUF15VlOGGy8Mh7FLM4I3+DEnbiHFZOrf8EiZJmLqD+Lg1VwV/Ytt9NHC72FMr8kz1l3satiMXpXbii00Y7Esby519DKF2a7fKOA3TnIrm8Oi5I1zugrUfMoacZ1KWMLD+bjMPflCnhtBoKF89GaRC+gnGJA2K3dOhisEgKCn1aZawlpQRzmbrsns6WsbVsl8qsGhZxTfLvesJocXAv1LVXKABWUxN+zaA0eVgvpovSXSmvlEpjijuk//E4PenYDSEPOdYQF3fkoy0Kt56E7tvcMFBJHAtYS/4tFl0sX4+woPUuFCGw0JoBj24/THxheymRmfNurlCpgWoLgwD/A=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(22082099003)(18002099003)(38070700021)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Oj7sIvSldyVro8LNnk2nE1FyR90EnEAHOJ9IV0duoV+N6gbkQVX5qZ2K6vJC?=
 =?us-ascii?Q?eekX3IQ/JVEmcBbej9J9ovMIGeZr9N++tv/P7pgs5IgIY18ecMrfWtW2gB+c?=
 =?us-ascii?Q?FdBuLxFWmZQHgf/8V0iE2FgIrOAATgroqzWYqZ9PLMP7OXa6Zj94LWZYl/aI?=
 =?us-ascii?Q?XX1Q59Vy6SZEBn/c7XWUOgVM06bmpqrcrMzC5PR3Oja37Aj0wT/SsLuhIVfo?=
 =?us-ascii?Q?UbiMpP8z8CfBiH9M4RdAvy8nFKkvqGt+QsXIbpfJfnIjXWn569fLnAZ/lViJ?=
 =?us-ascii?Q?a2KAjU+Vgl/8N2C9uuoOUbVFMMnKqgBJQC1tV7CEjzBqUkHbdXJ/s4vevDi1?=
 =?us-ascii?Q?uIpmdbIaAETDRPdwaGw4BuMFpKPRCtNMR5v33KmQMgSDnNMI1Ft7jXB3UzZt?=
 =?us-ascii?Q?4B5azBojg+CXr846KmnjhN44csznX42pK/JR4/P/EFfEFYwFyRM87VTbwJ5+?=
 =?us-ascii?Q?DANuWI5aekc0CKN9gESxKpRnH1uXTQ8CaSjqJHRYH+DDUjY3mD6nxasw9cvQ?=
 =?us-ascii?Q?9oB9W58NMIfKkXjyaiyQVri7nRv/WMVG8RgJbuxiP6fZMqJZ/g6LX3hnGwdL?=
 =?us-ascii?Q?88dAMzTZpLagFICLzXl89NJbj5XLPtvsB/RJpRVXMgpyBOFObyFx7j1Ua2Pv?=
 =?us-ascii?Q?z/dwkxZKy949TqWPdXGoPmyYB0bbEXOrnNXTnD2deMopUkRV1vDOZdaKa3Ce?=
 =?us-ascii?Q?i9PQA+eiVVsZCv80pzy7A85RNg3HeZ3CzqvCbh2o3+H+571R1N+e/6/hDimH?=
 =?us-ascii?Q?0sF/rKIRZRRaBcMifLK/pS65edAXOqygiz7PJ2m9A4xYoYHBHiTHzj3e5zDm?=
 =?us-ascii?Q?04QBjKnLcvDJltlgHLsCEq3Ps4X+FJGknAoMuWBHSTECoGlWkY4gNDa2auNE?=
 =?us-ascii?Q?Yh5YTyZl6Q2Axp8fDMPXtOYn0EQFdc/AGessXeMwlq6KyjOifL9btKHtP4ax?=
 =?us-ascii?Q?S5QAmPs+CwyJzcLodNeAYTdOd9yoPnC7/DX2Z5ekWy9O3FXvDOf+qkHFmNMP?=
 =?us-ascii?Q?xR1dV+O/drLhyV+j0JQ+CtIkDcqDIbhRc/4CrZfo6NXS6VhX6P1R72+GWTsZ?=
 =?us-ascii?Q?HhHVTSJ0HfBmxV/2lvxtaxgj9Bblhy9Yc8dzElRR9AdQefC5DytL2wAIssR7?=
 =?us-ascii?Q?X0CYYMW2T+jp7hT6mzGk+TPXQKY3Ncf9OqFZCfHZ+7Oh34resSFAw3mPb5kz?=
 =?us-ascii?Q?MdaYwqFtz0/T8fGN6qini0PTlY+v5cQUgvEk5JFtkcVmTEeUIhBX9+jpAeYP?=
 =?us-ascii?Q?JbRaGyahrQoiTtN79gvSCGJmZ0oN6EEQx81DDjvRKWLlEOlkwReW4b43CtVj?=
 =?us-ascii?Q?FUHvUyLmPUxZMSo8B2FRmxMkFNa2aRtfuNJOa22vJvuzabf+mSi9ZdxVRT2D?=
 =?us-ascii?Q?PJ8tOx+VegXejkEf86FpgauSx7ha7X2Eq3O8jcUhkQH9YRJ8W7mszBeTJPXl?=
 =?us-ascii?Q?ZA01UY5cRS22x4O6CxtvWe/QyeDVPmmPV2ldw1Wpalmof5cLofoYsQRmkJDc?=
 =?us-ascii?Q?N9xBGIcWQOGICgyv+/w/M3B+z7Vsr1SlNdXBMDpWyKky/m90Q2B7p1rkg6Bk?=
 =?us-ascii?Q?l07Zv1uUwQd/FUjrP0LX+JWv1rueP30eBK0+wIs8bO0NmUTOg/nBJQTCcv19?=
 =?us-ascii?Q?dXQhRn/WV67L4jP0AsK10vTgRanqPwsqLIVltxAiDp2HKJZvkwgSfncnueoj?=
 =?us-ascii?Q?QrlvkiDATzlSsisuW9chc97aNKxx222rbM5l7A3CZiBdM84hHKz8JC0ppt9V?=
 =?us-ascii?Q?RqszW6JYUpSjJglUdyMsR2/wSuEp/hM=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: jJaWxB6m4l4WHe5TLFOhp8NkXVi53crvEQO5O54nNC7QIm605ZTU0/6SlE6jZZW9oV9xVwawnSkfOP2YI51OTPBaZb/9udD/+eTVGm2x8xeJe7tpqvt2XJ5WlDhbiSAqwnT/Hq5TWGB1pUP3Rfx8FuikKhGs7mb0hV4Qqq8XXIVcRD4q9edbtmH3WYyal+yD4ZkO/Ud78y4n3kcW8cAwAncZzIAPKZN7pinL9srbt2XqiaYB2IHB2sz1MMBfqBVBKcJ9p+NUx6Kaqbnf0c10dUa0GhrJVVM/FxMj052Q2tZ8af6vNlcTR+u5Qv1aej62eJFVbhnxH7pRRE8y2hxs9w==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 357f5129-ff3a-4fb1-ba6b-08dea50e60c4
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2026 10:10:30.4658 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3pAJERUQrpqqALu1WhElGgZen29DQtf9oZarYfe/2/iE9AeI8ibtEml5oeFKT/V9TV/3LgJ2qU36GubOix6ZETvmj1xxGXGCXTTc0/IVDX0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4716
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777371034; x=1808907034;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Kz1xcZmKZhUSiLaVX+o5bkAU46ja8RLATHKqBXQ4Ans=;
 b=GL+E65M7NgCxyJ/NSq360mfdYcl6CAuSJnYlU1ItT8ejTDgTBpTlIYPa
 b2qj6fWR58cSIIJAcMugl9k+a4PruZW9/suWgzrP1ng5nMwZgUHiDAMlY
 0HFDOgayf1SCCd40uM1QbUed6sONaQLICkYrT9z4/zLS4CAf1tCXvCKKM
 yKs5Q0uD1ViCDlcso6DotMsPQdI3DpaCyEUJXp6kEkdDVzu7KBWfWbXCr
 /z+MtLdRdvAOzWgTeorwePh8t1Plp4lRZOL01ZJFfR3pHOy8ekLrMDzUT
 PmgVj8DD9VjuKea6CWX1bS+3NZfLHDQ2mV3tYv7bTDoEy+LIaWjW2G9gM
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GL+E65M7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 05/14] libie: add
 bookkeeping support for control queue messages
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
X-Rspamd-Queue-Id: E28794824A7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:anthony.l.nguyen@intel.com,m:aleksander.lobakin@intel.com,m:sridhar.samudrala@intel.com,m:michal.swiatkowski@linux.intel.com,m:maciej.fijalkowski@intel.com,m:emil.s.tantilov@intel.com,m:madhu.chittim@intel.com,m:joshua.a.hay@intel.com,m:jacob.e.keller@intel.com,m:jayaprakash.shanmugam@intel.com,m:jiri@resnulli.us,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:richardcochran@gmail.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:netdev@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:phani.r.burra@intel.com,m:bharath.r@intel.com,m:samuel.salin@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,linux.intel.com,resnulli.us,davemloft.net,google.com,kernel.org,redhat.com,lwn.net,gmail.com,lunn.ch,vger.kernel.org];
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
	NEURAL_HAM(-0.00)[-0.954];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]



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
> doc@vger.kernel.org; linux-kernel@vger.kernel.org; Burra, Phani R
> <phani.r.burra@intel.com>; R, Bharath <bharath.r@intel.com>; Salin,
> Samuel <samuel.salin@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v7 05/14] libie: add
> bookkeeping support for control queue messages
>=20
> From: Phani R Burra <phani.r.burra@intel.com>
>=20
> All send control queue messages are allocated/freed in libie itself
> and tracked with the unique transaction (Xn) ids until they receive
> response or time out. Responses can be received out of order,
> therefore transactions are stored in an array and tracked though a
> bitmap.
>=20
> Pre-allocated DMA memory is used where possible. It reduces the driver
> overhead in handling memory allocation/free and message timeouts.
>=20
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Phani R Burra <phani.r.burra@intel.com>
> Co-developed-by: Victor Raj <victor.raj@intel.com>
> Signed-off-by: Victor Raj <victor.raj@intel.com>
> Co-developed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Co-developed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Tested-by: Bharath R <bharath.r@intel.com>
> Tested-by: Samuel Salin <Samuel.salin@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/libie/controlq.c | 599
> ++++++++++++++++++++
>  include/linux/intel/libie/controlq.h        | 177 ++++++
>  2 files changed, 776 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/libie/controlq.c
> b/drivers/net/ethernet/intel/libie/controlq.c
> index 934721c98f34..5b06d797facf 100644
> --- a/drivers/net/ethernet/intel/libie/controlq.c
> +++ b/drivers/net/ethernet/intel/libie/controlq.c
> @@ -609,6 +609,605 @@ u32 libie_ctlq_recv(struct libie_ctlq_info
> *ctlq, struct libie_ctlq_msg *msg,  }
> EXPORT_SYMBOL_NS_GPL(libie_ctlq_recv, "LIBIE_CP");
>=20

...

>  #endif /* __LIBIE_CONTROLQ_H */
> --
> 2.47.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
