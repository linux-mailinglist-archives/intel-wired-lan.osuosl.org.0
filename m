Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C89DCA6B2E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 05 Dec 2025 09:27:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2960940683;
	Fri,  5 Dec 2025 08:27:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XXDpOfteY2CX; Fri,  5 Dec 2025 08:27:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F0EA406BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764923223;
	bh=5qXcL5P6u1yIJS//kWsZESgd+zhI10dtmmljbOrX0JA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=E+LrkvLV3TrgrUmLyRMpCZMqKm24xOkWnjYjjGx8gBL07Uii8S9eSgS8EyYXJhtXc
	 WCgDz0itMAKwDrRARziOVrhGKy3pl6K+Abmy+P1bbZx3OXKkNTM4SLRJElvKanudxY
	 Lybmmoaqn1586lsUtuWcQDswqO734wIPslDX5PyxL7C6/ev54VRRxHfyABrErdmwMy
	 N7hAE8E+qf9f+3DDmKEmMjPAy6/BCoiZOUC4WpCihSjcIKf7VALWdGfuwn6X7fYlHN
	 aho5C2KIMFKspHFvJ8Ze3FWy36H2wEQmv/a1L+BkWCQ0rjQ26U3SY+z3/nHz19I/QA
	 eq0BpywYFru9w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4F0EA406BA;
	Fri,  5 Dec 2025 08:27:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 44E8D199
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 08:27:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3641E6081F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 08:27:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NYz8W1zokoNp for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Dec 2025 08:27:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CCD0C607E4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CCD0C607E4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CCD0C607E4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 08:27:00 +0000 (UTC)
X-CSE-ConnectionGUID: kvpnNiaYQvm0Ba9iUE/ZVg==
X-CSE-MsgGUID: 6K9A1yLgTtyGbZxixeZcEA==
X-IronPort-AV: E=McAfee;i="6800,10657,11632"; a="78420226"
X-IronPort-AV: E=Sophos;i="6.20,251,1758610800"; d="scan'208";a="78420226"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2025 00:26:59 -0800
X-CSE-ConnectionGUID: Rpokr9VYRHGo95v8z5iaog==
X-CSE-MsgGUID: 5k5rlCCrQ7uE+oGy8lofyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,251,1758610800"; d="scan'208";a="195475569"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2025 00:26:59 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 5 Dec 2025 00:26:58 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 5 Dec 2025 00:26:58 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.27) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 5 Dec 2025 00:26:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JHD03HEHS+xIg7E0peX1mpCbZ7HvEkyTrdWlucRroPTq0vrRphQM0i4G1djAD6ZGAtZUMmaDUMmxT60NrYrj4xudd0AEePvRQK3DqRhdNdgPcARxQNO7BDqob/jQ2oQslTE+IP3q8LpYroOzNU0PWjTzUlacap46Y5hYC89R67Pahv0pPgjy02/cy9sqMbEtZ4GGOEV114Rzr45/6lM3z6H2gS09oEyWkXlxInWNBAgjCHypLHiR1ZsQRVVRQYnKUMigo3jM1ZjpNLmAnTXvBJRKeVjDeg3Dy/FPn7UIZDeq5rXtl3HgmOdolfW9kAMj6znLy95Ljud6qK+bkl1tqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5qXcL5P6u1yIJS//kWsZESgd+zhI10dtmmljbOrX0JA=;
 b=TJC76WIVaiGyQcUqFWFkKvOcY94rimJuXqBrJ517xIXN0plvkJUDR3GJH0jOU2ltAWCDMWsoizxmsJW1HlCyt0s8LvDJ/Yd128PKvTF5vfnajw4s5+0lKp1T3KGlpb7nvPw1M7nkF/GDT3ZNGwCE5vFZtLBexkl5EE3MMKdRR9/DPgHnuhBoRvg9Vi6ZW8UytyzlLnjBX58QYKvc6R/7f20vjZMWrGb1hVoskc/q0Rlu9l9pNWt9voHpcdRHMeozIdUsM+7M0uG3pf9vc0VZZ56CvTDFBeUarSlcDJN/SkcDeE41E8zYkzoNrjBLn/0OP+7VwATfhroQ0snWAs1gAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SJ1PR11MB6274.namprd11.prod.outlook.com (2603:10b6:a03:457::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.12; Fri, 5 Dec
 2025 08:26:55 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9388.011; Fri, 5 Dec 2025
 08:26:54 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Jesse Brandeburg <jbrandeb@kernel.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Brandeburg, Jesse" <jbrandeburg@cloudflare.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>,
 IWL <intel-wired-lan@lists.osuosl.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Brett Creeley
 <brett.creeley@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] ice: stop counting UDP csum
 mismatch as rx_errors
Thread-Index: AQHcYxu8BMnAWu0KtUmfnkpkfCM/cLUSuvdg
Date: Fri, 5 Dec 2025 08:26:54 +0000
Message-ID: <IA3PR11MB8986697A94FB36E893C7E87FE5A7A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251201233853.15579-1-jbrandeb@kernel.org>
In-Reply-To: <20251201233853.15579-1-jbrandeb@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SJ1PR11MB6274:EE_
x-ms-office365-filtering-correlation-id: 3cfc7d12-cd1d-44b4-f3b7-08de33d80c89
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?+/AUD/TLOQ85NL+SBC6dnIo4FD0peOxEPFS8X4gjpAow1O/NZNDqgYWUlrxQ?=
 =?us-ascii?Q?p51WITN1lU3AJxwkCeU2tny5pRucyiA9Fo2VY0lIH2qggk70oc1ZKmCFSY/m?=
 =?us-ascii?Q?YsnCZGCMQqFuwZWfMZ9pZPHNxJYTbHl+9kq88N+V7CAcb/oJDgSuh2bfltMx?=
 =?us-ascii?Q?8GNcktvRGzOUyjIYClwgn/Ns/nSrJDy1UUExVpJJIgNqBaQoDNh9Ugqz21da?=
 =?us-ascii?Q?+OAsf5UGkQk84PAjYwSUP22JoMURKiSsuAgiMvzR5yPV7We4v1wLri4m5F8n?=
 =?us-ascii?Q?01SnPpFisRIspMVOXrVGip6CD+y2xIIAbUxWXWVfnowVzAdKlevHWm4FTkFV?=
 =?us-ascii?Q?iTTf79JtTgxlVyCU/2hdAcy8Fjq8ETOooq+KdDP1WNJRPTj8Xu45A/o+SPNb?=
 =?us-ascii?Q?Hm7xQamN3DKPt2dEDxGeTdJTsI5BdcnZzXGN2uJFJ6Cs3YAh/B9WnzDN7Dby?=
 =?us-ascii?Q?j//sIqYGTnE20oXbKyNIty2Cg6j45RLJ0drISJjSDzDSJtp4YDX58hz+6BeD?=
 =?us-ascii?Q?LxIt0Tv+cYLWyMvnt65sfYA7N+wN/w6TCvYcZzOWq3kc4ArbA7MZlzqnYtmQ?=
 =?us-ascii?Q?rdP2f6xYVSBUQIYZAJHc/uohDcGc5zuSAJ64rxOvBu1TEWnOKNvbD+13Rnqh?=
 =?us-ascii?Q?sAMeeWTFSgCRxN5xDJHnGsB11FofVf9ryeVPMtqUbQHRKh1lsYdcYTl/R/vO?=
 =?us-ascii?Q?F28E96F2plCa+hgl4iXmO5UKGeNe+4zm1PPCJbxRa+AN+hSQjX+Bg7kBlfk3?=
 =?us-ascii?Q?IV9z80CLghn/WnLvmWihmZi6BBTAv2aomY9ZAo0IioYWkvIgXLQ+LFR9ZceS?=
 =?us-ascii?Q?mam5rmVB4WKbvwPLFE/KofRuB6mlNFrHF6xts8PmJbTNH+3wr9JCHsBh/jtU?=
 =?us-ascii?Q?Cx5dPaFv60oBdY+4MS3zcpW/OgOfckrZ6sImOODU5FZ5DTYH2Rppe/t3wY3K?=
 =?us-ascii?Q?mMaXztJ4yIjFh4hYV2q4UTLgcCEEJ546CLGTbEUDgsGFR5l9bRKWBzaUfg8R?=
 =?us-ascii?Q?T0tHz11gTNuVIiFdTLz8zQNLD8pRBkFp5sm49C/wHVBMP+WWAVqyNeiqQuG9?=
 =?us-ascii?Q?5oqjydFeu8XaV6bqpU8zdmuYMHcLj1f3SBnKu5yksuOF82E5bVxWE5XAo8+U?=
 =?us-ascii?Q?nx7whVQc2F+wJoUT34Qt3jtiVGULuENLuRhOpdXh2FnQb2VeLsktX7JBZdqp?=
 =?us-ascii?Q?xUSfKAoknR0gYaMnBuT4LCdUnrkStlGho6GvokqHAmBAY4u8AnhZdyhoNacY?=
 =?us-ascii?Q?zPKWqunvBuHSGaoMkHSf14fgeGOOczzZMEvvC7KQgICXawt6GtAByMFTAzic?=
 =?us-ascii?Q?ynlilx7+ZfV2dGqQw1tX2kINVVhV1HpcdIoCgEcmQ5ZsX9fdGHOeiSiQHBYE?=
 =?us-ascii?Q?vmph+X2XBDUxDRnuPhiSZDrkz6g0VQM7ng4aaalB4Ugat01jCXuhCn5UIBHE?=
 =?us-ascii?Q?lcpsGdUQPO/zpvwQettTA6HixwOC8pOhVAERopUkIoBjRBb8X7NIow=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?MdTJR+z0ch1unX307hP4QmfWAUpN2YpRewBkqlrxXe9uERqZmJAer3HASik/?=
 =?us-ascii?Q?9PT988hYdUXxTw9P42FT/4BApO5c/ZIltjlGRciBorHsdysP4JaADK15XUY2?=
 =?us-ascii?Q?2yXcsmDVCtaFSSRxsjPmRx5Wg6rKmCH3y0Dt4lglVsFkq+CAmEMyI80r4mtB?=
 =?us-ascii?Q?+nzp2DhuVTYj0sQjJ3RmKnKwHjiQ6BZTfv0YFcaIphGdQo/M+CxYOM2FJhRM?=
 =?us-ascii?Q?qzNhQxGsiCf8d2rNPoROXeR4tZGYI9CqP8zqU3VTHJC1fTS/tUr0nUI/Rtiw?=
 =?us-ascii?Q?BkRFdjvHGrCYEqKJ+bbsP2sQj+psxmmETV13MBzAdUiEM54lOT21HHSZ4wn+?=
 =?us-ascii?Q?AWKuKo3Y6SIZF8Ce2pke5SxKI7GgelSpSmOiqWAqnev0PGaPsurpUVk4k2b/?=
 =?us-ascii?Q?k9qt1Ov5NbytiWaLJFO4enB43kCsYxzZgYCjzWmGKD6g566zQeQPXg332jUt?=
 =?us-ascii?Q?ATuBigbH28nxgWiMfnMPN+WF0JABE/zt14VgJSwPfa8PCuwauM+05njyoG7E?=
 =?us-ascii?Q?tzPun9vY+UsRbEWxnaObKlyJw3PhWWKVNOBNagz0uoD+J6B/shCVg7s6tdW3?=
 =?us-ascii?Q?k6qHyH2EyX3FWh5EzWFwwjP4xFtLRvdWXaRUdZh+3yP1JXX3rSpU1WDfYFWp?=
 =?us-ascii?Q?oyzI7O8RBH2NT+8WMdwEjrIK1rjuH6xmsj58kv8iXRDPDYAjJk18OUPBAp5r?=
 =?us-ascii?Q?NosFR9+UYWZEuUtUIAs1VaEh0+nx9GxdgmYvci1qZqqLPBY0O4kx9Lxfn7Hi?=
 =?us-ascii?Q?hbKE9E5inNAPVLh3SoEr4RcLYJbkXCxmEQ4TFbYSCUhEv23VdGMHiWRFMb1g?=
 =?us-ascii?Q?qssPQwZHCIRkZDeEgowd0lEvdCSwfR4zLkxtg5LxWn0NUMlcVCNxBgnIOVZz?=
 =?us-ascii?Q?hw9T8idIYvor5AGRYfUEfZKhqoWEnMX1+VLm0kZjJjNp8Revb7s+5lesOqHz?=
 =?us-ascii?Q?TfG09Y/pq7+T6r7Glu/3BBHNNlyVw7imcaXgaUrqzKsv5w4eqfKQw2DKy4EZ?=
 =?us-ascii?Q?9bW5wcFr4rS1JNr2Zl0/fVrLz4BbChWeGI8pbuufqZfmSB86gjn60tQetzip?=
 =?us-ascii?Q?rsMJDQnbmCUkINCjVh9XMeX4KVB2EKb8RmFBlD53qZb6bV7DleJYki82QBPd?=
 =?us-ascii?Q?P5iEE+X/6qTLcWo1vmM41bTlzWE7eAzWIsV3AFVGkjjwb9IPwpUArZfupJTc?=
 =?us-ascii?Q?03H2RyitUkwGfaavhcWs2iY52e5LcYYQV+M4GYDFGSPFrRPRWFvUtIQbTDTN?=
 =?us-ascii?Q?0REm78eUowS0N3G1eyFSEBCJH8w1/Y8i/M650d2xrYdqfVZ0MDaHpRPA5ESz?=
 =?us-ascii?Q?8ZnIHjQFawzHh3ltihkKTvq/J4rizo+kr4masklhMgaX1j+F7xJmvj6U2Onr?=
 =?us-ascii?Q?rHbD47L53I4SxbBcPKfDW7qhvWYW0AlxEwGp4zCruOslQ9A6pbAWKAy3Esqe?=
 =?us-ascii?Q?rmEvqYGUpau33EwXrUM5qvxagmXHb4MbJcT+E3t4P1+h8FduMDw23pLaCrrm?=
 =?us-ascii?Q?0J1HZu5hkvPVL/K1QvGhg/n+ZFX8k5tuZ6CxWFcK1/7gyLR4KF70auHHtO8R?=
 =?us-ascii?Q?694DwcRMJKPPXfk0u+rlAMKJHkG3Ytu1JnEjIMzvA+Pw7wQQ6V9EJ1ihxZdo?=
 =?us-ascii?Q?QQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3cfc7d12-cd1d-44b4-f3b7-08de33d80c89
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2025 08:26:54.9018 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CqQ+KAQ+onvi8lqBJY2qDSuHo4WgDK2X/s+GPVjH5+6In62jmtACy++BEAtiOUKsbsmwCBM+sES2/WUgBNquYUvGqzmo8s5bpQJ1r8+sp9o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6274
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764923220; x=1796459220;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QomYUnYcm7goUq3J82aSWgL4cu5V+vz85UWLW9Z0d1E=;
 b=M2uVNfwBXbCPzfsR13o34aazIPyhBTc+IsvATwzQvuR3kh/m89Wu88On
 K024x4wcmTbNfVY8ZYOore4wY1Kc07w68CTo2wKXbGhSrSuH1RvKDrezh
 1ZcMbXPhuXO5hSnEOAQc22KLdMqNaFlQMZAOnOW4dQjNaqnEQai0qip/t
 Zan7L9fsLN4xMsFI6HhFgBP8OMfwFU6QuX7RfvTE+ATvMaTfiG78SNUZM
 eZuz9QNwi1vbN4SaSAusMD3dbb2Ib6BEksj1hhzr0CTcdTOUmZvF5vmc4
 z6GDNVOtnrD2nIUauF+VcGJXzC0KmVxRQa/42IOC7ObLO3v1UmDznjrRl
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=M2uVNfwB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: stop counting UDP csum
 mismatch as rx_errors
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Jesse Brandeburg
> Sent: Tuesday, December 2, 2025 12:39 AM
> To: netdev@vger.kernel.org
> Cc: Brandeburg, Jesse <jbrandeburg@cloudflare.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; IWL <intel-wired-lan@lists.osuosl.org>;
> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; Brett Creeley <brett.creeley@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] ice: stop counting UDP csum
> mismatch as rx_errors
>=20
> From: Jesse Brandeburg <jbrandeburg@cloudflare.com>
>=20
> Since the beginning, the Intel ice driver has counted receive checksum
> offload mismatches into the rx_errors member of the rtnl_link_stats64
> struct. In ethtool -S these show up as rx_csum_bad.nic.
>=20
> I believe counting these in rx_errors is fundamentally wrong, as it's
> pretty clear from the comments in if_link.h and from every other
> statistic
> the driver is summing into rx_errors, that all of them would cause a
> "hardware drop" except for the UDP checksum mismatch, as well as the
> fact
> that all the other causes for rx_errors are L2 reasons, and this L4
> UDP
> "mismatch" is an outlier.
>=20
> A last nail in the coffin is that rx_errors is monitored in production
> and
> can indicate a bad NIC/cable/Switch port, but instead some random
> series of
> UDP packets with bad checksums will now trigger this alert. This false
> positive makes the alert useless and affects us as well as other
> companies.
>=20
> This packet with presumably a bad UDP checksum is *already* passed to
> the
> stack, just not marked as offloaded by the hardware/driver. If it is
> dropped by the stack it will show up as UDP_MIB_CSUMERRORS.
>=20
> And one more thing, none of the other Intel drivers, and at least
> bnxt_en
> and mlx5 both don't appear to count UDP offload mismatches as
> rx_errors.
>=20
> Here is a related customer complaint:
> https://community.intel.com/t5/Ethernet-Products/ice-rx-errros-is-too-
> sensitive-to-IP-TCP-attack-packets-Intel/td-p/1662125
>=20
> Fixes: 4f1fe43c920b ("ice: Add more Rx errors to netdev's rx_error
> counter")
> Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
> Cc: Jake Keller <jacob.e.keller@intel.com>
> Cc: IWL <intel-wired-lan@lists.osuosl.org>
> Signed-off-by: Jesse Brandeburg <jbrandeburg@cloudflare.com>
> --
> I am sending this to net as I consider it a bug, and it will backport
> cleanly.
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 1 -
>  1 file changed, 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> b/drivers/net/ethernet/intel/ice/ice_main.c
> index 86f5859e88ef..d004acfa0f36 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -6995,7 +6995,6 @@ void ice_update_vsi_stats(struct ice_vsi *vsi)
>  		cur_ns->rx_errors =3D pf->stats.crc_errors +
>  				    pf->stats.illegal_bytes +
>  				    pf->stats.rx_undersize +
> -				    pf->hw_csum_rx_error +

Good day , Jesse
It looks like you remove the single place where the ' hw_csum_rx_error' var=
 is being really used.
What about removing it's declaration and calculation then?

>  				    pf->stats.rx_jabber +
>  				    pf->stats.rx_fragments +
>  				    pf->stats.rx_oversize;
> --
> 2.47.3

