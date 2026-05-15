Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WBo8OJ8OB2oLrAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 May 2026 14:16:31 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3094254F4D1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 May 2026 14:16:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 30F7161246;
	Fri, 15 May 2026 12:16:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YAzzZ8C9t6Yk; Fri, 15 May 2026 12:16:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8D9BB61549
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778847387;
	bh=//70XLXL2p+yuX6ZQ+V0byoapbjK3jcAaO64VEPh9a0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oq/K3Z9/DxrrdDKSclFH57CUuGSNTl9DnhHa0JSraU55emFMYpL4MNHGkIFYczQ0S
	 ABWk4OfqjWyMFyGbqV/e4Drz3s+ogm9rtLU2Zd4C0oab0MyR+49WdYiUbftNGj05My
	 GFyVT2eabtmFIifGJ9EVPPyiEUeSmKdR61cKc4RmQd0wIHAIBIFrYTR+Vbla8+mpuU
	 +4F5P2VPuAqkDDZzzd3AALlGxpKc7uwb6nvAyKgExdhktgdETuKpds8n4EChFgIlDs
	 NqGP+/7v6kWl+BlfQHmCKGkJPq6S3VV9vfWs60KS6UEj6YYEunPBZB01Dmc2mkiSMy
	 A4MY7eTVZz2Dg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8D9BB61549;
	Fri, 15 May 2026 12:16:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1919436E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2026 12:16:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EB3D2841FD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2026 12:16:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JLNUdoOcPXbX for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 May 2026 12:16:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3E832841FC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3E832841FC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3E832841FC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2026 12:16:24 +0000 (UTC)
X-CSE-ConnectionGUID: fAtniCKaRoKAbnK/n7QNrw==
X-CSE-MsgGUID: uWpTc+fhTI6laBdPBlk4Ig==
X-IronPort-AV: E=McAfee;i="6800,10657,11786"; a="91186141"
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="91186141"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 05:16:24 -0700
X-CSE-ConnectionGUID: lPtSpxrzT16se5XDeePUuQ==
X-CSE-MsgGUID: VmiGT/CjQtGCZIZNi18B8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="237821530"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 05:16:24 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 15 May 2026 05:16:22 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 15 May 2026 05:16:22 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.37) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 15 May 2026 05:16:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J0dqQj/7IhSh6XCDm8JciPglo9Ub780zPwT/wvfWYy8Z04O8KrqdI1B7m9J8HxPWEoVAowFcqfpT1HbX0NT7xKPidc9FfXH7sgJrZ+/0Z4rZSWOerwOAkB0k57igEjT15n1ZxqtMqRR+E0IU0WmL916OxOOKDuS5aUBpszPG0vvgcKVavbPxnTmXnPBgI8YGjKFTIBggcmS+swmfrRMoXwMq5D6WvcxV8YN/NwoLDwKYe4+LY+nxlAInhlSUjna56SrUS9kvhb4FFuEhIGyH5pJ/7MZR4Frmj8U8NFHUX69sJ929v6DPn+kDKCpDUIhPjIyu9OXD4OsB/PHNSWwUrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=//70XLXL2p+yuX6ZQ+V0byoapbjK3jcAaO64VEPh9a0=;
 b=jgOEQtYc5qXCu/yoDkwFF4QLygmVf1PF8bgn+8OohiWgwre6Pg7x+rhOP1fovN+7FQR4tBO9RhzpqHVw719hFdx4SMcSyKVdQC23A1aZmXmYzAxhY+E/yJCN+yL6roeiHjLGUJPBstMFCfnB08TBRPfOwG1YfFPJnBgEgqI2xV1N8CzDLWjMX2iFRoSlK1uAtEg2SNKIDPyO1N8uRLeQG2bSfa3Zg3q0rUD1zTtcB5FCv2bSObIOPFh9FyBElq8WR3eckjeIk7dT80HiWITpktez2yiq8YhOP7IoMfUxYD+ewZ3D2chiOZ5m2WJBFlVJL3HkSqEKBOwZtBrte+nxMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DM4PR11MB8226.namprd11.prod.outlook.com (2603:10b6:8:182::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.12; Fri, 15 May
 2026 12:16:14 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9913.012; Fri, 15 May 2026
 12:16:14 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Vecera, Ivan" <ivecera@redhat.com>, "vadim.fedorenko@linux.dev"
 <vadim.fedorenko@linux.dev>, "kuba@kernel.org" <kuba@kernel.org>,
 "jiri@resnulli.us" <jiri@resnulli.us>, "edumazet@google.com"
 <edumazet@google.com>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "donald.hunter@gmail.com" <donald.hunter@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "horms@kernel.org" <horms@kernel.org>,
 "Prathosh.Satish@microchip.com" <Prathosh.Satish@microchip.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "davem@davemloft.net" <davem@davemloft.net>
Thread-Topic: [Intel-wired-lan] [PATCH v9 net-next 7/8] ice: add Tx reference
 clock index handling to AN restart command
Thread-Index: AQHc4/YesdtZilzwbUSAXEEiyymov7YPAPQg
Date: Fri, 15 May 2026 12:16:14 +0000
Message-ID: <IA3PR11MB89864A395C90131788565C72E5042@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260514225946.2885623-1-grzegorz.nitka@intel.com>
 <20260514225946.2885623-8-grzegorz.nitka@intel.com>
In-Reply-To: <20260514225946.2885623-8-grzegorz.nitka@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DM4PR11MB8226:EE_
x-ms-office365-filtering-correlation-id: d45a8336-8d8a-4ebf-fabf-08deb27bc232
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|38070700021|11063799003|4143699003|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: zIjiVw91wrioRgxa+rlbygjZ1GKkokd9kQMSERfJUeXyWsM+55GwoprdnRGtvwrjRmiKQvvH5XM5GPTxXDLHrTaehM8Hixhov9YmrYLIdQk9wU5EugGVGNgfo4nwdrVI8R+QF3e1H9K4rxhMCuUJLUN+MIx98su3c3cHyKabb5pvPkrWsgpY/X61JjvT0631egTZv1n0qLI84iPSM93l3c4QJ1VYcajlyw12Agci3yZZeuov/vBAZ4C2j+YibBK8L+IgJYB/8ixlAiq6rPHrwm+aJ2fx0qPI8yjgYjHuG4M6nJSgbZ/8lNgR3/BVyH81ie+F305syRS16eZXReqjuK7IbMEXOJESkYDIo7K1nMSaheimDpkUOlxxqrtIGfFndHRGEx2qtA2ow2NwmJJBgzIF58rhdRrzF71jiHt/toT+EtXZQs66RNVQ7/PxpG5eS3fIR/Y7Br3sQYcGUvME1nT+enqfSOHvTdt5pHzKrcgiJNzUXnt5AJnJpUUOioeG9amMFVZN6EDM/CL4Z65TXsVBB6i8axVQzrbNkkS4iiBm/Q4/vj19Cx0IUBLyPcH5HZq9I78Oo2oWwPQmwXrLIfwQArgiKrXqzKbWAmjEdUh8/fjmMnE/N4cg7Dg7gafHODsWS+DFhtdnFEAh+RhDqcPVHP9RUnynIpI2yvyMzibnNxDDD3kEDjhO88iWQPWMK6V3Toeq3ru9st9xtFuOV389esnfB2Fvva86cUmDltpQ5DqnwYUj3nSbnTAwQ30R
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(38070700021)(11063799003)(4143699003)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Oc12yW4oW8/AIYec2CiVUhhVbhbG2F5T1iQmOmeCL9cwNDn2TuI67GFqr8B8?=
 =?us-ascii?Q?X7Tue16IQ997NXwGsAqyfgJwaeYv3rtjfgYT+bINi475XvlXTZ5qG6PoOniY?=
 =?us-ascii?Q?WN1j9H9hIvZ2UPMAdemM14if4kFo9mqcJNd5Iir7pMNaPGyxzdDDJQiSi6r1?=
 =?us-ascii?Q?SrrZulpvDDraAbr9aP8igGSs7945Ob62q5ndYvxAbaGTCkEUSOPifWU/yi2c?=
 =?us-ascii?Q?682XKcocsWhY2OaaBC57EtHZGzArSSkeTZB7ux1m7BVgHAxSqf0yo9g8Hi/g?=
 =?us-ascii?Q?551+Eqaob+X/hB7Fpu3v5XG3xrz3cS7J3TZGM8WqS8xFdZl8F2NaK8PSdhO8?=
 =?us-ascii?Q?qG3lSroSabpZNT8sOMKbOSUyowNM5bOUJZDJDsCOAunk27UKUh8jkyLsEhnW?=
 =?us-ascii?Q?Y4oE+89cSlkd7TMpd9RznW5KW7vhY1Qmjtnnzscy8IlJsryy0q+dTVIsbMzc?=
 =?us-ascii?Q?6UrJO/esuR3a8gf23STOiRAv+HirMPy9R5k/Ok23BmchEeX3i/HBdP5lQFAS?=
 =?us-ascii?Q?8Q5K/rdD5unKKm2qlODQfnKiyNE1loSjRRnpYg/bK3stjDpqZHQd8+AMK42D?=
 =?us-ascii?Q?P2jbIjDmla2m7sdbCQqEYYeuPMzx0PjTIauMugzL3zspNOltyO5xwwAfqCnb?=
 =?us-ascii?Q?hiHrr08Ym44ZuyUroDPwcZS9Uu6yA34U7LmsdCP0soPDbdBlCx7yTKrtXY6b?=
 =?us-ascii?Q?Q+K8MHbzHZPYcG4Ef8UUcgSvw0Yq+taoCMUOo0gvvBVhLCUc4n4ZTk77G6xW?=
 =?us-ascii?Q?qQNaeOAmxLz3vgyAz+M6h6km4uz6AU0v0vvgRHqvzqQicHfcdG5rh56GoHbv?=
 =?us-ascii?Q?9PvZwyay92NkSHn8s82Uc7pCElYAa3QiHtWxFErNhfeXZaBWoRn7OxsqX4fu?=
 =?us-ascii?Q?l+qSMiT7+ZkRsFma1VIN2fY1YPjCS6fZm8VqI23O1p/Wi3mueQAOyCfvc5iZ?=
 =?us-ascii?Q?83ryxsV60zAoXvsRh3YAV9JIX6wXVnc1kGC4YE6k2ki3oKRssvBXrMJhKHrU?=
 =?us-ascii?Q?RaKEtNOUUK6/iHCfpqBBiADkGE/ap1dGI4mu8G3rQyLMcLDcx9CQnZL1O7DC?=
 =?us-ascii?Q?T/tTCtyjHlN90Z00t4coEmDWDuJfirMnfi7miiQPvaI/kZS5sSEAfwSzrUEf?=
 =?us-ascii?Q?whgljSmQOVEhk179vXRDFTrsEdQyIq5mqP8fOUB2zqapLQ8Q2MPcPLvOSLPu?=
 =?us-ascii?Q?DIy5VqTMtcmmDDbXlrNF7LKXFOQXhNPBZKzhPsAxL9o4/7hWLiY6cXeRA4Xq?=
 =?us-ascii?Q?MkKLw+RupjEFMnDMWOlxF7+PRglSnA+HiCrRIIsJij4T7NNhRSiYd//FIzNH?=
 =?us-ascii?Q?xnsq0rZOEEaEqZ7PpriEGvVP+ckYANeFKhEaM6uRc6CHsjETVfsn9S8ueCI0?=
 =?us-ascii?Q?x2vr+7XwlhjtGXZaEEul/uHmmebVN2llc1z89Kxoi+J2iH/L6v61VJMEAuqb?=
 =?us-ascii?Q?rWa8oUBpJ0oVkGiMMnY9AwsTPEcGmD5el+f2fkpXVuAl1ebtOWmrRce1B5KK?=
 =?us-ascii?Q?pCJocNNlNIVmLU2qr8At2icOomAqF4uaGLKfLR6pXB8xjs2nRQlBOQhwrW8k?=
 =?us-ascii?Q?+8/OZpn6C4jm6I4VrlP/IabILklXAYF9yl2V6uqwY8wQdzA5byXUJw01S/3I?=
 =?us-ascii?Q?NNSOk3oh6lanXFa0XIeeWBBqRQYAOsm/ygjq7godRJ/bKNiuQD2GvnBYiL1k?=
 =?us-ascii?Q?rRHk1/R03iW9c42tKFHgG68hDC3xD44l5MGtv3SAGe+oNajIS8d9vwITLoo/?=
 =?us-ascii?Q?+/texmLCRYGVUNEgvBUOY2Pv+czl6rc=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: uy4Ii43GNBRwCSV6UQw1riqI/lZMclW49XTL+ipNSPSgNpjLE9fxllI/tq4f6ZjFfE603q4LEUKMpXZWVk/mt62M2lyCXeTsz1exFXyE0qFR5MuP5rujB1ghryuRX3/14E5s1gPg++8CRW22vmrjPs14MhPjTWKcHhZ6hbvqrKsxOIOLak6G9gB6XepyNJzRpm/4F97Ejq5QnPy2JDn3UcNfLYHMCRxDN4Gwdosb3aB1xX7az5WXQQjNBO+tPzMHzqFU65QsMblpTAPkOaiZsoIStQ5luIzu1huYapOBvyuz27XtdjFVg6WoW3/v+6j/tO8Dy60EGGmDd8s90zBgbA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d45a8336-8d8a-4ebf-fabf-08deb27bc232
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2026 12:16:14.1687 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sn5vZVptH/ZqQ/HZx1X209yYZ5acQRJ4PC/DsjSnHRjq0F+vqIBEZAZ4AGmyE7kXJPVzp41B5BTgHqH8OTaFjyqk8aVLq850e+2WlTv1byw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8226
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778847385; x=1810383385;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ed7zP+4LyYRBuWE7eKm13RxvDCBJz9mS7+FkKmVfQ88=;
 b=aDtKP5uo7Hg4AFR9x+q7g81G6tVzHaG8wZl/Pl3FACIb+uQ1SrATgH8P
 d0uiDTmF3AxNFtYjM8NBJE52/OUkVlZBKeMI5ecnSFdqhmEpiWmbMzEbj
 OQLXqg0H8KQCH6p5fheOEPhhrN292GEJLaf6vaf8pjmmAjC2qBYlRyxCb
 1e9jdvProW8OCvxZuYNBGip9KDnU7mLjXYKTiok3vUGDQ9nkeK/4cWsQ9
 74A5p3hLMhrhJjCT1W95qMs/QVLQkXbwm4tdlUJ8Kmsjn2YPY1c6Xzvx+
 Sx2x/BF1aiWAzJ+Lz/ikCZUTSU+1H4mAuZOsoZpuTkV94Jzq3ehb1qWWc
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aDtKP5uo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v9 net-next 7/8] ice: add Tx reference
 clock index handling to AN restart command
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
X-Rspamd-Queue-Id: 3094254F4D1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:grzegorz.nitka@intel.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,google.com,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Grzegorz Nitka
> Sent: Friday, May 15, 2026 1:00 AM
> To: netdev@vger.kernel.org
> Cc: Vecera, Ivan <ivecera@redhat.com>; vadim.fedorenko@linux.dev;
> kuba@kernel.org; jiri@resnulli.us; edumazet@google.com; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; richardcochran@gmail.com;
> donald.hunter@gmail.com; linux-kernel@vger.kernel.org; Kubalewski,
> Arkadiusz <arkadiusz.kubalewski@intel.com>; andrew+netdev@lunn.ch;
> intel-wired-lan@lists.osuosl.org; horms@kernel.org;
> Prathosh.Satish@microchip.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; pabeni@redhat.com; davem@davemloft.net
> Subject: [Intel-wired-lan] [PATCH v9 net-next 7/8] ice: add Tx
> reference clock index handling to AN restart command
>=20
> Extend the Restart Auto-Negotiation (AN) AdminQ command with a new
> parameter allowing software to specify the Tx reference clock index
> to be used during link restart.
>=20
> This patch:
>  - adds REFCLK field definitions to ice_aqc_restart_an
>  - updates ice_aq_set_link_restart_an() to take a new refclk
> parameter
>    and properly encode it into the command
>  - keeps legacy behavior by passing REFCLK_NOCHANGE where
> appropriate
>=20
> This prepares the driver for configurations requiring dynamic
> selection of the Tx reference clock as part of the AN flow.
>=20
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_adminq_cmd.h | 2 ++
>  drivers/net/ethernet/intel/ice/ice_common.c     | 5 ++++-
>  drivers/net/ethernet/intel/ice/ice_common.h     | 2 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c        | 3 ++-
>  4 files changed, 9 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> index 3cbb1b0582e3..42878abac9eb 100644
> --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> @@ -1169,6 +1169,8 @@ struct ice_aqc_restart_an {
>  	u8 cmd_flags;
>  #define ICE_AQC_RESTART_AN_LINK_RESTART	BIT(1)
>  #define ICE_AQC_RESTART_AN_LINK_ENABLE	BIT(2)
> +#define ICE_AQC_RESTART_AN_REFCLK_M	GENMASK(4, 3)
> +#define ICE_AQC_RESTART_AN_REFCLK_NOCHANGE 0
>  	u8 reserved2[13];
>  };
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c
> b/drivers/net/ethernet/intel/ice/ice_common.c
> index b617a6bff891..ee7fa4654fe3 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -4124,12 +4124,13 @@ int ice_get_link_status(struct ice_port_info
> *pi, bool *link_up)
>   * @pi: pointer to the port information structure
>   * @ena_link: if true: enable link, if false: disable link
>   * @cd: pointer to command details structure or NULL
> + * @refclk: the new TX reference clock, 0 if no change
>   *
>   * Sets up the link and restarts the Auto-Negotiation over the
> link.
>   */
>  int
>  ice_aq_set_link_restart_an(struct ice_port_info *pi, bool ena_link,
> -			   struct ice_sq_cd *cd)
> +			   struct ice_sq_cd *cd,  u8 refclk)
Doublespace "*cd,  u8 refclk", everything else fine

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

...

> return
> --
> 2.39.3

