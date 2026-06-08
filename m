Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id esdROyDbJmqglwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 08 Jun 2026 17:09:20 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 26882657D7D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 08 Jun 2026 17:09:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b="Mmh618o/";
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA21761BD0;
	Mon,  8 Jun 2026 15:09:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k9MlW4Lq2tL0; Mon,  8 Jun 2026 15:09:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 24A0C61BC3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780931358;
	bh=euYc36TxAy5iyFNSn8FJ4cIgCeRl4lXTZUysCZIrDIg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Mmh618o/tbQ9Ln3CsxM1ctMOcCS/ZZcuN0+Hod7fYP4W5HTKDb1hVUDAUwIsY+577
	 XXm9wgT9MyBhmt9aQMULXEGR3CX+1L8cYi0S7I+pSpgJaQKXTSNI6Xv611GJ8VRltw
	 QCqeFBU9HL/t0HlHKHkm4+LpT0+egYPHruLGZBf2x+ooy7U70Suebi+lw+UHPVLi+L
	 6Tw23iZL/9aCkF7qSLqic6w5eP7UYmt7TasMP3UI7P9hpENOcQamBnwmhAUSrBQNjU
	 8vPQOhr+gEEo362ip++prEIRNZYEsTTmZ0wQPgqvHmw0R3JowyBkflc4JJHhR49ZEG
	 0xuOVjvQLin4A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 24A0C61BC3;
	Mon,  8 Jun 2026 15:09:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id B61BC187
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2026 15:09:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A7FD961BBC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2026 15:09:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vw_Joyy7B-jB for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jun 2026 15:09:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DD76161BBB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DD76161BBB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DD76161BBB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2026 15:09:14 +0000 (UTC)
X-CSE-ConnectionGUID: rPeN/K7PQ1Gz6M/MVKeqlQ==
X-CSE-MsgGUID: da/38KS/TmqaGpJRlRpnGg==
X-IronPort-AV: E=McAfee;i="6800,10657,11811"; a="93057877"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="93057877"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 08:09:14 -0700
X-CSE-ConnectionGUID: Ua5RiAj3Tty/kgM3cy0uCg==
X-CSE-MsgGUID: Gm5JH4/ZQIyTL5d0Uco2aQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="275784553"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 08:09:14 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 08:09:13 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 8 Jun 2026 08:09:13 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.51) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 08:09:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gLuCjgFc5CTm7XXllML0ckdIFplddi7Cv5E+16P+tw1L9ZQk85egZVmZkyzQjRRR/tlCCrsdevlKCjaBI4UPsTt1cjMmCUrH5Jmjnol6fQvMXwzl0B0U70Rkn/CaUZdZye+s10NVw2QFoV9YgTS+pj95LJT+Ww6MGEOZUBuUwmM6hNr7AavvRhlNtAL7VSxUKVQfWzyqeu1f7mtYTC4Ny9ePB8FalhlJj7MNUWyQbop9wqU+KE9R1uR33nVFisxcEwZtWRNu3mGT1yLde36ZWkpi15HHv5t5mac/wAcAFqeA9yVuZTsBVsmJo0Vr21C6ZsS/6ge6TyenkX3eRUgKyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=euYc36TxAy5iyFNSn8FJ4cIgCeRl4lXTZUysCZIrDIg=;
 b=hy2kyM0hDuVjFuUbJyIMjy90wW53kOsRdhKR8pxCcc0wQycMTWy6P7lJLP+AmOrBeuq5a1N+3SvUwTHInRRixN26RBeo4wMmoSVM+7wRFWltq9RDRC5cS+yGk1+q93UwgxULY7V7O3AzvgFByPCh5sStTFm7HsKnN+3QAeEkoddlAIYhcpTCUDFnSjfHYpOeXD3CFiRcz2LLLn61UMjrAYdbLHSZln/tXuctfKFMlsQQBg1DQ6RwQcmxSm82wdA5aUX8VwmeLu9GG6ZZehMQn8lUPo7mFeaBaEv8DiF6ST6T/OONHrGpsXucIfY0w5ZZx6zsioo3W84oFH2S8kRzHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by MN2PR11MB4631.namprd11.prod.outlook.com (2603:10b6:208:262::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.13; Mon, 8 Jun 2026
 15:09:11 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%6]) with mapi id 15.21.0092.011; Mon, 8 Jun 2026
 15:09:11 +0000
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
 <bharath.r@intel.com>, "Salin, Samuel" <samuel.salin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v8 03/15] libeth: allow to
 create fill queues without NAPI
Thread-Index: AQHc91UDlxB5FG76KUSRC8TC+K0Ic7Y0wscQ
Date: Mon, 8 Jun 2026 15:09:10 +0000
Message-ID: <IA3PR11MB898696A64A76FDE3F50FDC98E51C2@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260608144127.2751230-1-larysa.zaremba@intel.com>
 <20260608144127.2751230-4-larysa.zaremba@intel.com>
In-Reply-To: <20260608144127.2751230-4-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|MN2PR11MB4631:EE_
x-ms-office365-filtering-correlation-id: 2d4a4b84-85e9-4e0e-f8b5-08dec56fe51b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|11063799006|4143699003|56012099006|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: VsoOFVZB59CR9IE1M1f0v0j1R/NRr9lXV/occ2dP2K6GF88eZDTzjv0OhqeIhGGn+SM188p/GiymopSI7Jmnec6N00NgHt3KiUytwQhBA+DD7hFPKtO8o6P8VOeJFGREEt9v7uJV/dPnOvgPogHClNnMlNf5dGEofMrZ5byx3Ol8HMGQDldcZAp43l7aImwhDAsGsZoGDMwvN7ucvZcAZEhCL7blJQxerKqjffBXAi2bXAXFCpavZh2/1KhzIrilgSdRMZrvFHE5airxX6pJ80mIzDn7N5aza0dzJdqJZ4h0qXZeRZ76WHcYUMwFQeXIMIu0tSujWr+8l4MlBQ5C1BOIY/I1WxbQTtqYYNenqSE9rH73t4sqqR/tMEceD/QwUFOdWH+txZK8+7t5tLE4Dw44IXC3UXXYbr2ldA8AgxU0JHmSMcy8EuWbSWGQok6xLJ+zTLWYAEZgmCtqImrUTO59FrTedF7Lnb+j+t+eJND5fDCPntA5OgNzZ5Sc5X6dNwnAeqpJyLARTSXQQpyW1ozmygFvliIwMDGEQpBlBvJKpyOvoPLmJdY9QZXocXzk7mH3vMiSzxHpX7+0PbyEflFS8tyeCvD/hpaE3h5erAnS2/1OTtzov29Q0cILpafvSZYIVrAdx1nggAvpDBOADX3Tg6K/l0F+KMtymmssmtdS65oobIIDmqFlNOtH6pW/daU1l5t1y66Uolw4bMLEnsNaVGuJy7SoTkK24NeEX4zhgNpoS6oCQBWLXizu1ejZ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(11063799006)(4143699003)(56012099006)(18002099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?H4/oQems+oSsdEE1bYGJHmDg3HBPDjTC8xLQfG3HcW8Zr+an5eBWBjc1cpSO?=
 =?us-ascii?Q?6RueVH1TcZoX0rBtGm/VcLJoFyHeLB2V7u/6Vsb5YjoqcL1K6CLaQgShbCPI?=
 =?us-ascii?Q?VxYLKt0GDVJU/z5FX5sB18xDKFf984GD6RDygRoIW+rAcIrBYcP1f83NKW91?=
 =?us-ascii?Q?b0xQqxbg/vbbFDW9SIpbY4v4dCl3ct4GwrtzHJADI4pyUbg0gqhS/WrPlo9F?=
 =?us-ascii?Q?9i7U66etDi0+2PISaHEo6CZqV2vnvp2dS0/OfFNmSFgxiiw+B5m3+WdX9AGA?=
 =?us-ascii?Q?h04K5/y5UBbFZDSZUhfLkrnWIpq50+qMktSvavgMei3Ib/k2j3LaK/RAgnRi?=
 =?us-ascii?Q?b0DC2Cw4Kd2mt8jqix0lP1HZKvJwsxrqosPG1J7hShucNZ7MwYm2AVSAM2Uf?=
 =?us-ascii?Q?aO9LRnkoYaYiQY6g2pfjKd9CUKf8bIzVqdkeqVNmQgbCZ6iKZwkhDFY0JWRx?=
 =?us-ascii?Q?15lYf5JrTEvzBwRo/26C80D7l+tY5t26MhPckXfHXnfYMe/oDfMuMjvL6PvS?=
 =?us-ascii?Q?yQDFZoBBFQL9qgwOwmrNIhvfO0WHybTnX+U+LQVNfk+MoTtJtuQewfVxKUyH?=
 =?us-ascii?Q?7huLKDbtjl8LcwGl/+Z76AbHKn3GotPoGY1qVUJszEKVWOr4ALaPAEA4bmGw?=
 =?us-ascii?Q?AsWgnKBkdbPST/u553KVaA8f6Y7tya6xAUy2VL40CeMZZRvNoFJq2r+GRZb5?=
 =?us-ascii?Q?9aBdseSSOBDtI/CgK6Q8T6wBLkmR+wEUCKnsA+gIp+AMjvEUTJEd2yiBebd6?=
 =?us-ascii?Q?V1D/KCKDCBBewzL6/1Af6WzAPTZFTUF51In5p67Bep2VOdt9OuD9fIfX3EGA?=
 =?us-ascii?Q?iowp+GF2h6P5l0X5ye/yj+n6y9KqOomOB5Ce8Zv/JaK7CyN/5N5zY1FOmJur?=
 =?us-ascii?Q?n9IVs/G7z1a/yIx2cE6M89i+XDSqkMxcOLf3zgpYVzN4lSAJQdybbXKtW7GD?=
 =?us-ascii?Q?o6t6cn31T7op5BDOd7BWXlx621yV5j9/Vsrw8bXoeA3AU2C0Igk8smuOdRGt?=
 =?us-ascii?Q?vwD1Jo5eezka6ou5WrWL2BYDLW3dWAebEbfBqVoF/3wb/Q9GfRwE8GslpTr0?=
 =?us-ascii?Q?oowW6vG3K/SNv/JIAl7dFe6hLE0iu3bTXQX1FncFegynpbMqw3G3ZOmWcLH3?=
 =?us-ascii?Q?ti7C8s4DbdnXzCL3UP/N6bdn2tBJ8R+x46dYm2i/pHvEqiiENy2d2mT55gBw?=
 =?us-ascii?Q?LgUFZCMYUhE6bQZ0QLPdwSOTlhyqUyJFL4DqjdIVEVfjqE925Y5q62oAi8CZ?=
 =?us-ascii?Q?S2bZ1mnjyrO2qwoAQ2ensqBFkECgxtyepqeQGHrAp7tvYFz5m0RTEEFMyIZs?=
 =?us-ascii?Q?/wBKiFM8aer8iJYtDEFYZ0LSD4WyfwUk7P9wNztn1YMxfGVKssqZX5iLItdj?=
 =?us-ascii?Q?+3Kr3Nl6btZQhXbSU/T12OE2LPIXgPkp6Li8Mb8ozhOnxmlj9xIjL7xq8itr?=
 =?us-ascii?Q?h+7eQGnj4eegrOxJCSSCMLvJ34sOD5Ld/VrO1Y6EknrGJT1iRjTwAaFeqaN9?=
 =?us-ascii?Q?yfqQWGBj7c5jwWTnrihH6IYyZq5FiXQzpp/nG36+5jqoPrZF7/PRnHVGT4rB?=
 =?us-ascii?Q?31Uwo8hTE+mVpICbtLpp90rS3US6SsHxHh9m5QPu755HYf739a0BcjetzTEF?=
 =?us-ascii?Q?8G7GOv+rC8CMkZqO7gSIOXpKNjMC2sS6s5E5Xu8E+sBARrceosOXwWyXZqti?=
 =?us-ascii?Q?SBomzDV4tK8aYFrXPCn1I2coVqNGjb9fLORP+T1qlAHDBWOrp4zFMtVmXRqt?=
 =?us-ascii?Q?WUKrD7WwPxu2GBG2NloOA8sNyxV9vRM=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: mrJ28wJkaXkigH+p1TwDHl9EmOr+YERMEqi5F4PVoKxCa+Scn2UlDQCGoonkfLQ1vkZ82RLLGngASj5rnnttEZjOq9Hc07LYNp1niQ3JxlWB1wfknYOLd/DRKn4a0YWfKQYX6CitMRaZLMdcmKIqTFW6qBTbsLavf8IFZPv0W3Dkt+xjReKsCTUu+yJAkn7jRM7lJs6V7y4J0/G8chEcIC+9zUajUEQVB7CLrDKXyepFDarHqcEeOO+/Rp8phemblETXkV2x4IZAwcEVBgkOvkqIuhvxq66SnDXp9lxZzbzVcENo0gDUr41cRafrPf2UmP6AztgA2co9/Y8khqDcvA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d4a4b84-85e9-4e0e-f8b5-08dec56fe51b
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2026 15:09:10.8954 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xM/w2KeKk0efeKudSnHplB60lUdSOyeEp//psv+stXhxWG6Gtcwn1xnTIuMJFF6yow/xHMqJfcACx0csQdJem2VZyAS+5uF1ZJskCWHeGYw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4631
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780931355; x=1812467355;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=I08mH+W2LOUBAVmtT8VKObfdwDEMSeAGhkc2Yyugk3I=;
 b=Hih3fy+Y4oOxzPzdX5BIrGz476LZsuwV6PNDD/47zhibxYvws5TOBJFu
 4NSv/tVATXRRsnNEH0LwBM2/Ur+jfR6jEVErtSkGxAqmMRX+wO+DuFVjv
 tZD+rAWzWmSQnUrJlnlK9c+Ow2CPvCyzvHuzFrEHcwCeG4Ipbr0ZYTIjZ
 zKUXfQ19Z9FjIdBVH+5uTe7unMlBYbDZ0KQg1E+u0QHQyMDaMeATk++kX
 vD+Z9+c2UGu6wKZ60YInswqfNcxZQ9uL9hrp8hLEzzPQcuHS0BcBZ6kvQ
 FgvVpJIT/2PD+dhdUvcCkB3ErPcr7udhS2IMB3urp+xtrucT8oDb4xrfK
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Hih3fy+Y
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v8 03/15] libeth: allow to
 create fill queues without NAPI
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:anthony.l.nguyen@intel.com,m:aleksander.lobakin@intel.com,m:sridhar.samudrala@intel.com,m:michal.swiatkowski@linux.intel.com,m:maciej.fijalkowski@intel.com,m:emil.s.tantilov@intel.com,m:madhu.chittim@intel.com,m:joshua.a.hay@intel.com,m:jacob.e.keller@intel.com,m:jayaprakash.shanmugam@intel.com,m:jiri@resnulli.us,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:richardcochran@gmail.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:netdev@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:bharath.r@intel.com,m:samuel.salin@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,linux.intel.com,resnulli.us,davemloft.net,google.com,kernel.org,redhat.com,lwn.net,gmail.com,lunn.ch,vger.kernel.org];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 26882657D7D



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Larysa Zaremba
> Sent: Monday, June 8, 2026 4:41 PM
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
> <bharath.r@intel.com>; Salin, Samuel <samuel.salin@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v8 03/15] libeth: allow to
> create fill queues without NAPI
>=20
> From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
>=20
> Control queues can utilize libeth_rx fill queues, despite working
> outside of NAPI context. The only problem is standard fill queues
> requiring NAPI that provides them with the device pointer.
>=20
> Introduce a way to provide the device directly without using NAPI.
>=20
> Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Tested-by: Bharath R <bharath.r@intel.com>
> Tested-by: Samuel Salin <Samuel.salin@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>  drivers/net/ethernet/intel/libeth/rx.c | 12 ++++++++----
>  include/net/libeth/rx.h                |  4 +++-
>  2 files changed, 11 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/libeth/rx.c
> b/drivers/net/ethernet/intel/libeth/rx.c
> index 62521a1f4ec9..0c1a565a1b3a 100644
> --- a/drivers/net/ethernet/intel/libeth/rx.c
> +++ b/drivers/net/ethernet/intel/libeth/rx.c
> @@ -145,25 +145,29 @@ static bool libeth_rx_page_pool_params_zc(struct
> libeth_fq *fq,
>  /**
>   * libeth_rx_fq_create - create a PP with the default libeth settings
>   * @fq: buffer queue struct to fill
> - * @napi: &napi_struct covering this PP (no usage outside its poll
> loops)
> + * @napi_dev: &napi_struct for NAPI (data) queues, &device for others
>   *
>   * Return: %0 on success, -%errno on failure.
>   */
> -int libeth_rx_fq_create(struct libeth_fq *fq, struct napi_struct
> *napi)
> +int libeth_rx_fq_create(struct libeth_fq *fq, void *napi_dev)
>  {
> +	struct napi_struct *napi =3D fq->no_napi ? NULL : napi_dev;
>  	struct page_pool_params pp =3D {
>  		.flags		=3D PP_FLAG_DMA_MAP | PP_FLAG_DMA_SYNC_DEV,
>  		.order		=3D LIBETH_RX_PAGE_ORDER,
>  		.pool_size	=3D fq->count,
>  		.nid		=3D fq->nid,
> -		.dev		=3D napi->dev->dev.parent,
> -		.netdev		=3D napi->dev,
> +		.dev		=3D napi ? napi->dev->dev.parent : napi_dev,
> +		.netdev		=3D napi ? napi->dev : NULL,
>  		.napi		=3D napi,
>  	};
>  	struct libeth_fqe *fqes;
>  	struct page_pool *pool;
>  	int ret;
>=20
> +	if (!pp.netdev && fq->type =3D=3D LIBETH_FQE_MTU)
> +		return -EINVAL;
> +
>  	pp.dma_dir =3D fq->xdp ? DMA_BIDIRECTIONAL : DMA_FROM_DEVICE;
>=20
>  	if (!fq->hsplit)
> diff --git a/include/net/libeth/rx.h b/include/net/libeth/rx.h index
> 5d991404845e..0e736846c5e8 100644
> --- a/include/net/libeth/rx.h
> +++ b/include/net/libeth/rx.h
> @@ -69,6 +69,7 @@ enum libeth_fqe_type {
>   * @type: type of the buffers this queue has
>   * @hsplit: flag whether header split is enabled
>   * @xdp: flag indicating whether XDP is enabled
> + * @no_napi: the queue is not a data queue and does not have NAPI
>   * @buf_len: HW-writeable length per each buffer
>   * @nid: ID of the closest NUMA node with memory
>   */
> @@ -85,12 +86,13 @@ struct libeth_fq {
>  	enum libeth_fqe_type	type:2;
>  	bool			hsplit:1;
>  	bool			xdp:1;
> +	bool			no_napi:1;
>=20
>  	u32			buf_len;
>  	int			nid;
>  };
>=20
> -int libeth_rx_fq_create(struct libeth_fq *fq, struct napi_struct
> *napi);
> +int libeth_rx_fq_create(struct libeth_fq *fq, void *napi_dev);
>  void libeth_rx_fq_destroy(struct libeth_fq *fq);
>=20
>  /**
> --
> 2.47.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

