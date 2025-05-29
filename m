Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 14266AC7766
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 May 2025 07:05:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5BCDF40E0E;
	Thu, 29 May 2025 05:05:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vbhumgqTc9hS; Thu, 29 May 2025 05:05:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D874740E07
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748495109;
	bh=JBN/YHBcgLEH36OevnEWLm3JIhiH3g8WzWncZte+TQ0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oqDeOaO9a3jtOcLvWPc07JyPR2NObieSsm7JQUzFP2lrn7RKjh4qxTfb6N1svQsOl
	 O48qgGUUzTgAg+OFf6xZaBFdKflcPPBpJteUnrgZGsGa80LdAeOi1/e6PrsS6dUKX7
	 bmRUdZubbcb95DUmge/Vn0wiBSzrpfPS7ivtMnp6apL45R71p8cCcfimdNTq3Hpf54
	 phiLJppKtNFSatUhMxeCaz2zXRbrop0J5vapZsH7nEIrR/JQwkV5ROU0AdTI/hBck7
	 YxrJuYpM8Q5kx8hmGrgEH5taLR/ZyJAH7DNdifkcPzfvxuCSahBBicZI0LGcuAJgYO
	 WyTBZl2gySf9Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D874740E07;
	Thu, 29 May 2025 05:05:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id BD26F443
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 May 2025 05:05:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A319B40D27
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 May 2025 05:05:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IpgyJ9I1R-EF for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 May 2025 05:05:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 01B7240DFD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 01B7240DFD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 01B7240DFD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 May 2025 05:05:06 +0000 (UTC)
X-CSE-ConnectionGUID: fZuIxx9WToifxn0qMY4svg==
X-CSE-MsgGUID: ns1H4PH6R7OLSuhgeVArTA==
X-IronPort-AV: E=McAfee;i="6700,10204,11447"; a="49789665"
X-IronPort-AV: E=Sophos;i="6.15,323,1739865600"; d="scan'208";a="49789665"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2025 22:05:06 -0700
X-CSE-ConnectionGUID: cCrhotX+TmG9ceu5ISw2AA==
X-CSE-MsgGUID: VF6YYxNnRQqetYCMvyyzsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,323,1739865600"; d="scan'208";a="144089466"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2025 22:05:07 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 28 May 2025 22:05:06 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 28 May 2025 22:05:06 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.54) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Wed, 28 May 2025 22:05:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QDra9BJwV0am4xtPuWFAEOq7v2BX0TqJiIUUng/KgmytVvGRPPM4o667c8h2DwdxQLGGz4++1JmQ7gz5VQRHQd+oO6qav/+VntwfWxuHw1hzoEy9uL5/LjY2AFWUaXdE8hlNM0bUOtXGowV3hiIeRNLK4WiWN6zuIOZmAwp4H7UEJ+/9ZOn4/soo5Xdc5e2PRPiNJO3YJkkwCtlHWii/QM8Egr4OID6L5M4AD7aJqLOlG9hLkAurDGC5zkzqKry6B2DsL84UguFmK4yQfpvCJrWkJQ3Gmdm71jB7nQ3eFmb22JCYiDAExjP8jZSW6PmFcYFGtdS4qdVAzCQBefxMtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JBN/YHBcgLEH36OevnEWLm3JIhiH3g8WzWncZte+TQ0=;
 b=sqPWbHuyXZHftCClieXsIeRc2a14E78iWlOTLJLX0wPAECq/2EJcKp3A0cheWjX1+4naz5bBzknCAaPxpRpI87z2igiCqD8YWAZwBFbQCtQGXT8rKE0kNKeTArVfZ+bXr4Fl/vWynzVHMSBWqni6jUUIQCjA6gjTN9t9H1VWydNn+nCPok9niiQj7IG1Xl/7CmuWhIoSKGJ0+YT+xPtyazMLqtLbIjk44WY9zUG9NdZK7eEzxZtho1AE8i9m8iX/0KNDQINhrnamusHQkrkvqzhe2aCWJr/MqQCQL1WX4Ar4MXSjcb0ySdRLcwxMkIs7KZuRWgBLkLlmeLmbzcqbzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5009.namprd11.prod.outlook.com (2603:10b6:303:9e::11)
 by SA2PR11MB5036.namprd11.prod.outlook.com (2603:10b6:806:114::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.31; Thu, 29 May
 2025 05:04:35 +0000
Received: from CO1PR11MB5009.namprd11.prod.outlook.com
 ([fe80::b03a:b02:c24e:b976]) by CO1PR11MB5009.namprd11.prod.outlook.com
 ([fe80::b03a:b02:c24e:b976%4]) with mapi id 15.20.8722.027; Thu, 29 May 2025
 05:04:35 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH linux-firmware 2/3] ice: update comms
 package to 1.3.55.0
Thread-Index: AQHbyzL2/KKA2H73TESu3poSu4FnOLPpF8WQ
Date: Thu, 29 May 2025 05:04:35 +0000
Message-ID: <CO1PR11MB50097AE3E86E4FD1CA7EEC869666A@CO1PR11MB5009.namprd11.prod.outlook.com>
References: <20250522160139.2662031-1-anthony.l.nguyen@intel.com>
 <20250522160139.2662031-3-anthony.l.nguyen@intel.com>
In-Reply-To: <20250522160139.2662031-3-anthony.l.nguyen@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5009:EE_|SA2PR11MB5036:EE_
x-ms-office365-filtering-correlation-id: ac9ddba5-21d3-4401-b280-08dd9e6e4e5d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?uT8OTIjY6AFAlu4rVbk46Q3FL5p5T8BtvbDYswXTybK1Lsl3l1TIVxdaonya?=
 =?us-ascii?Q?J1r2HmcNcX49RQLpQNgUmxttF2uPTGlHWAZcc5DER20GlwOqBwx9SWIkET/b?=
 =?us-ascii?Q?9vNw3ThCoIQZ1fzoSzNXI/4qfgY4kdccR2Msr5DT8CWlCIJd6MfwW9Fc91mq?=
 =?us-ascii?Q?I34sfnRfkS+0oB7A5lx0xYoKzed21d6h9NqVk+9JwbCulOMUCwb8zLm5Kg5h?=
 =?us-ascii?Q?d+A9DQqql0az4hl77RvZ4yzxj2YPqu0/WR6ArooDnkTOvJoISJenRnRadt3q?=
 =?us-ascii?Q?ursuasT1y1giX+kAratZRhxJKfH0GVSeSD+h9ZXtxY43jGuqA/AY3vf8z5ob?=
 =?us-ascii?Q?vmn4aNFJrWWRduvJt/oWA630oZ47K2iG/3S5XnMEwpUIMWCXsARSH0yFbFha?=
 =?us-ascii?Q?281cjDQz6z/hNK8+VgaH58vnce3aYdwY2Dg8UjaSByH2imGdDAYBe8JX8YsI?=
 =?us-ascii?Q?MdZ6LDw0iaclRXRC7rPHHDf4KkL+L592YOBDapVTM8HtajI+3ZnABRiGsjqU?=
 =?us-ascii?Q?kT0WUOMobr94he3SWyIBBOCY5qzJQgx+9V6X8Ncxr3it/vyey0gokU3zwXyi?=
 =?us-ascii?Q?yIuE44IHbfx6kKM4FY6HIGOlqD6kci5urUvIqzvg4G392qfL5x9IRsHz5vYq?=
 =?us-ascii?Q?hTfnK6eQ8PHWjydaPnvmZch+ym8+MWlfXbQmviQXfswArdLpNgNyFcZzpvmB?=
 =?us-ascii?Q?LNdGDXb9U4mY/OYw/L5Geb2IYU9Eem4MO5VlhEh9lr+c+X1KoQJ/0T1KuSF6?=
 =?us-ascii?Q?WsTINgAU3RtzqKc27g8RAzAW3cW3+lZhtX61ZgsBJolkABSvBfvlID5x7UIn?=
 =?us-ascii?Q?vYydQHFcWvt2IxgSGJsOck9ItUwbTa/RWU3MGbh9IC3gEu5gE8HgQ7Gnc9Cd?=
 =?us-ascii?Q?F+K/jy9GQDXkcL1JKOY5NB1CJuFm/vSb2pdcIIhXmZvwfhA/KRgpJCEk2Eez?=
 =?us-ascii?Q?mnJLxNmZgk5YhZtjraDhqjUdLBXEnpnQIzoCFOHbvVoMWCZxQfdrHRBE6W1z?=
 =?us-ascii?Q?mj84HTzX22gj2VWmOyPYgZjKqzoiOiQctAImvmjIGoVleO3gmFG15/ZH60C5?=
 =?us-ascii?Q?iU6+UMQklaQNNg05zZLV1SaDBe7g7/FUMqUjs6FcXSfwXQD4a0hAf2ZD+xEJ?=
 =?us-ascii?Q?Ht3IaGkgjNPAtw8g0+0jrXm22gm+Exz0nywA3qmzVkwt17lG/PnXs3XJWwHm?=
 =?us-ascii?Q?FF6Kgz/nSCMzagBdzEn5I/5A3hKF3Au9xRTLW13HR0zTaj7gVhHObrtkgOd0?=
 =?us-ascii?Q?RsAnrt2WJ0LqCf6kb2eGyXLI6ipdJCFvU/OOrU0Lqx+8kHwik5BOlLWbfUhB?=
 =?us-ascii?Q?E139e+UX2o1F7ZXac/tzD6TQqrItnSuqSPrvlI8wIvaI8lYWiED43aUYI8ef?=
 =?us-ascii?Q?6sY0ozxZOhpNO3hH/Ww6x4OaMzOX/lo8SHvzYT4OPygtIAHSTIhWnNyZmhn0?=
 =?us-ascii?Q?GOIjwW71YUsPQuZJHkR1dX5WsDy8aMGmfL/z0unVGatM7gB48zW04l2+0L7B?=
 =?us-ascii?Q?M0kl+h2Wnw8NUX0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5009.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8USBA89SoPfp6csAQLwByh84hvQyQt6LuCDegzLbO/JfUjRRUmJJp9vJO2SJ?=
 =?us-ascii?Q?rEFB6BUPKsQBdOOKphHP1xrRVcTwMpQ0R25XdTaILa7AQ56yugOAXD162YQG?=
 =?us-ascii?Q?IBFdVdECfegSUntNhUt2pULBMes3CUDrsgoQq+79r9jGK0ST2gXJP3q2E52d?=
 =?us-ascii?Q?3J5ZFLjlMJO40iTSIsAnK+IaLkeVAnutD2uZJYxhykgIPDXHvGQJQMZs5euU?=
 =?us-ascii?Q?CrOpApKtftsOAXuOcJX/U/+Y+xnU6a2pNW0Tr1edp74xTCgs1h8p+pUg76yU?=
 =?us-ascii?Q?ZdZmg8wOrDGV42iPWOUiP0d+0GrAw5Iaz52C54r8TrV192LE4XqSmgPyejsK?=
 =?us-ascii?Q?3ECICZF/Gvbvg0ae040njgi4OXEL6l7090rx1HExTP5R5OhCZ5nTwZHeIc65?=
 =?us-ascii?Q?By4u16/Eo3jZTDkaR/O9YdV/dindIdj7YIS3sd0EczUtAOA72a41E/P6Cwux?=
 =?us-ascii?Q?+jgS+gDISpL4xdwJUaeOH2JZANrZBVOoMl6Yi2FkyCZEmwDO8t5CjmUSRez9?=
 =?us-ascii?Q?C1IkyHofLDGt/e/EVojKw2fgmzCLqwbPnDXYhSq3Gn7+otdJq4di/5aoIswC?=
 =?us-ascii?Q?l49HIa1YLbkF8IpCSSS6NC32EnFuPL61FaXLfRAnRxScNB0ON5ivW21uGRii?=
 =?us-ascii?Q?P4i4B9VaCtMvKNo3pqJY8Wc+ln1DFJLzp6ID/olcpVM6EUcXejDkoXHpRopn?=
 =?us-ascii?Q?liSgqRkKCSWLi9Rl7VCkoF4C6dNBkpcdDjY4xFCukKjIVcoirhMpaczP3VEd?=
 =?us-ascii?Q?tGf1FffM7gp5jKyBJCZ7wCNLHJJ53SJnrFO/mFO1vPbi8P+OTNl8p14Bghh9?=
 =?us-ascii?Q?oCHWftfDTtgRPyp4GhERlFyBFzXOStkTeJwgT4iNwXHXcd00StdnijIpdO/M?=
 =?us-ascii?Q?0x6qdnsGACUrtI9JI8D/V9X5CZ7NSfhBlRyoIAPInfCbaC6lpnG9SKgOBKHd?=
 =?us-ascii?Q?gJlVevsiRAQlyrJ4s++xKQF/Vkb7ndEaRNYBf9clX7HH25eP+QtYd6CLWCXF?=
 =?us-ascii?Q?3MRgB3YpIxC4H/pqJSUa6pd5k+Za98rSaJJmcSFJrip5w9GoQlzE6vG8mouG?=
 =?us-ascii?Q?EJIRAvXWiNwKoPH+BdlIgQ6cJ1cDNITYX9UPV9Ymi44lJdU3RK9E9eQMpZKE?=
 =?us-ascii?Q?g8oNf4+v/YUa594vyoy9FGmmD/gR95qZQVIEcQdHOe+9GnQLjozqUx1GKnLO?=
 =?us-ascii?Q?3QqEwWwvvmxHKSOF/6HFHQt3YahjUlTruWSt2KUCm3Busl8iFfomOMxy/CeH?=
 =?us-ascii?Q?u1Alc4zyHfsMMePfdSj14UZR9Bqp15GN0KwjvT79gOMiRCDi9hDlJvzUfYFD?=
 =?us-ascii?Q?E2uUM8RhzPX5B3DOpQhwsWwY+K16OVEteQlk7bE8mPnNVXmRZNSs978OS8Y0?=
 =?us-ascii?Q?d7iMljrTQ2Cb1xfs57907Q87FViorrtOwIwqgoTxVdUqlAwzDym5CsOtLTzU?=
 =?us-ascii?Q?zxanWItxZBN2Fw7RlSZI89FTX0WT8HnZG5p9hnqrcu8cl5jXFB8vxZK42zkS?=
 =?us-ascii?Q?SbSmQDtN649/VebiFlSqHo/jCNZwIqDE6P5akPaOeO51A2STtP4pxEH5dfwl?=
 =?us-ascii?Q?2XZZKFK9LFgHKk94N5mPdSK/Qe+fUiJKuRNu71hmmDBrVoKtscYoxwMY9vwU?=
 =?us-ascii?Q?nQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5009.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac9ddba5-21d3-4401-b280-08dd9e6e4e5d
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2025 05:04:35.4327 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8ubA4JLSlo6EQtnK7dKtrjndFK4WJaVf5PoBKh6VheN711vQ7buAXpkP2QE7sSDOynunuSh/JIQ0dnD+/qxTdgxvpxJ6VOARpbB6xgIdIUA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5036
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748495107; x=1780031107;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=h5ozeHTzqkmAakmLmaA0tB5dhoYndBKtdBhvbBQ2RYw=;
 b=cpiNuawpjpfdfQXpuBllI8+M5Go/ZdNF+pwiqBKkRIKzV2st6gWJ2Ezd
 YqAQmgCtWHZ2HWiqTbCSRidlhJIiwR1HYrU8YlR6wkWqTGb2M49jpbQae
 KzXsYmaluRCCuKJ/fNh/Ju+C4phcF2kfgVp68d7BLr3cSnmzZ9fEEW21k
 DbCnPslEj1WVMHDtf961X6TOCbWl2xInNdzwn1rjJYLH3Tq32t3/cXgJO
 Gh+qp7FeAQOxFjZCaPf35EZp4MCe3FRpiO8Tdo8Nmqm8S5AqvpiuYXECB
 GJlGBeVOfjaqgWS9bKQHMnKoYS30QQ8MYWxIvRpLcGV09ZdqOR34l1UiW
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cpiNuawp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH linux-firmware 2/3] ice: update comms
 package to 1.3.55.0
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

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: Thursday, May 22, 2025 9:32 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>
> Subject: [Intel-wired-lan] [PATCH linux-firmware 2/3] ice: update comms
> package to 1.3.55.0
>=20
> Update comms package to 1.3.55.0 which adds support for E825-C devices.
>=20
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  WHENCE                                        |   2 +-
>  ...ms-1.3.52.0.pkg =3D> ice_comms-1.3.55.0.pkg} | Bin 1434500 -> 1434500
> bytes
>  2 files changed, 1 insertion(+), 1 deletion(-)  rename intel/ice/ddp-

Tested-by: Atul Pandey <atul.pandey@intel.com>
