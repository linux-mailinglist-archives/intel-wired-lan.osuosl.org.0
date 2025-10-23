Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FC1BBFF442
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Oct 2025 07:42:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C307A843C0;
	Thu, 23 Oct 2025 05:42:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AEV7tF3rddFG; Thu, 23 Oct 2025 05:42:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1C50E843BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761198147;
	bh=2s6SI4fIaJ/X9CSgQCe4cIcqZpJvWtdM04iHa40pirQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OxaJEBLCqOz5rHIKTJOhuguLD6r7pJTyl0fb63m8mCK7hmbcNDZom0FAIGSk9nmpz
	 9DegvWuRSP7zZf9Gw0OLnvEuM0XXcFfAd/4DnelBhB5maHDwwMWdCbGPapaVn9Nt0/
	 4g52b+vcFSGteZnMFPg5lMup8MJ8aZjNIoOsZCVgcjYsTI+bjbCTOkU1vwa1SYWfbO
	 frQviFzhIZbF6t4b4z/sALbwup1NIhjfxoLsX7IMIBzPLy+YUOCaEqhFFJ7uI1ztej
	 pzWSwauJJ6QM2D/ulmDaq2JxCvKepArviZsuD6uxzHO8ps+7sb4pDdlp2Hehp6KMeC
	 8tYofAbBb13DQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1C50E843BA;
	Thu, 23 Oct 2025 05:42:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9C56FDE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Oct 2025 05:42:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8AB9941541
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Oct 2025 05:42:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RDXKoJbOC4WE for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Oct 2025 05:42:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 44600400CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 44600400CE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 44600400CE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Oct 2025 05:42:23 +0000 (UTC)
X-CSE-ConnectionGUID: +aEvXvIBQZe2Ltc65Yjzbg==
X-CSE-MsgGUID: aXcw8v2DTVitzRaCnQcB8A==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="74476137"
X-IronPort-AV: E=Sophos;i="6.19,248,1754982000"; d="scan'208";a="74476137"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 22:42:23 -0700
X-CSE-ConnectionGUID: bXhQB3kHQAOpNnida/sGdw==
X-CSE-MsgGUID: 8Hr7oMLBTo2wzwHm+YkjCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,248,1754982000"; d="scan'208";a="184457677"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 22:42:22 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 22 Oct 2025 22:42:22 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 22 Oct 2025 22:42:22 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.30) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 22 Oct 2025 22:42:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aId5l0fhbDmPJnHxE6GxRxhgpDyauVwCeZyVJqNHYngcO8cVuKzd04KW6Y+UYooTUQ3/pHZTHbtXHR0mRfYtbKtzbpqEP8qtZfUt4HD3XNxn6myvjMAhEEMFoniJuIN0n2VvijfcPWCyc/IFoD+8iXooh4Kv0bZEPWJlRE9YRZEVvwxBdbZ4gR8SdNnohpo7OL7q0iagD4O+XOXIz4yx3DXn6mbC1vwpFD0n7kkH2yFtjwH2/+iIB3/grGsM8vGvL7NU/nEj1Tlcr6Q+wzdY+3J0tOEwy8sASbErOorxAYcw6SIUzyAUYQTUqnJdh9YavhvJ7S8Iw0a/Mf8G7MLhUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2s6SI4fIaJ/X9CSgQCe4cIcqZpJvWtdM04iHa40pirQ=;
 b=IyNgB48O8MhKfY7cjKbSutO6h63l9R0tPRIb0VtXzoBFwv1J6k3c94hhNXEAEBJ+g9dqVank7N60X13BCR9nFoTcfTiPBuuTDhqXuK/xuleLg9LrGwAyi+TSMgS4r9nzQpwtIE0kqFYXtXtJz3DHMW5uVP7Ik81x98RIhWdB/ylV/QfjySfrmZJBHwCSUcIpTRmC1OJbso0rqx32XCYJZUd1M3ZVC9Snh06ku6Acoq4tBWLjvkf+GRcgxj7DVEjLglG2uPVX0yQHiCSD93v4W9prOtjLKiIXeBnYc7/eo3gMByyEluUfBF+vV8jCytqZ9Baej0d6Uea6O3L+FL7uOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA1PR11MB8795.namprd11.prod.outlook.com (2603:10b6:806:468::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.13; Thu, 23 Oct
 2025 05:42:19 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9253.011; Thu, 23 Oct 2025
 05:42:19 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Robert Malz <robert.malz@canonical.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [PATCH v2] i40e: avoid redundant VF link state updates
Thread-Index: AQHcQ26esxSsKoJB+U+cywONh2pAlLTPOI2g
Date: Thu, 23 Oct 2025 05:42:19 +0000
Message-ID: <IA3PR11MB8986EE20BE3F16C98658B292E5F0A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251022161143.370040-1-robert.malz@canonical.com>
In-Reply-To: <20251022161143.370040-1-robert.malz@canonical.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA1PR11MB8795:EE_
x-ms-office365-filtering-correlation-id: 25484501-148a-4b81-f1d9-08de11f6ee6a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?SHmGfTOQ/AEyqbubDjtoYwmdn006J3CQyagJTIdQ4YbfKqCrCJn7m3hoYmGb?=
 =?us-ascii?Q?GOZd40N29m1H+THYt0R+IS4yYueqRV0eFv73SQ7yRn7XKiKCRIufZVJhl5vv?=
 =?us-ascii?Q?+AaK+z0HaDyUWDZi0ZOZTA66TTNqpHiHcTgzxiJaSLKH6cd2LDDPn2vPT1yT?=
 =?us-ascii?Q?vnUR/NpfkOoq5iGwq4WiwFPLuMTIRtrPSR2Ngd4hCpj4rpuZC3mewjatKyMu?=
 =?us-ascii?Q?FfNIEnu+jG6Y30r38iQbbcyGs2J6oeTUM9J72rOo2g9BQO2XIDxNY5g/gp15?=
 =?us-ascii?Q?N8pWkXZrSgkXzZL14tRJE7ZcVBIhHTe+vqpq1tKTZ6Lv4kFfzigBjh1WddqX?=
 =?us-ascii?Q?y1pkFSObCkmXOr9CXSkj++7mOz8QoRmOGqJCC9W9jV7x36RCVRfrGS+pfMlD?=
 =?us-ascii?Q?TTeetKcf66Q16/OAsr42di/Z5VOf29tMEe++9NfVNv7yhk7EsOildTJHkCuw?=
 =?us-ascii?Q?tbR4lpeq7wEP1opaFl91gi5anEqW3EIXVa12HyZ4fJxF6RIQnk9k13n5FzSK?=
 =?us-ascii?Q?Kr1WWbybj3iU5e0KWcPLi3nH0uKpZHuwFFvAglZogSdcRFfuQI16evjezdzo?=
 =?us-ascii?Q?UICFET2XWzL3N8+NY7eiWdfiG3e/AplF9zL3pG/3/t+uVu3vA/5HH7SbIkmy?=
 =?us-ascii?Q?GqJI5qd5STc8XktWO9zFloVV0XRnyb7m15Qw8nIxddWrYazmm8r207aZVsDt?=
 =?us-ascii?Q?SFs8zixhIvvpYWS/RoKIVcCPINAmGMbtTMI5gqb9vAXZlgEC0y0C/G9+MPvd?=
 =?us-ascii?Q?9pWdxGL0ccD8jEC9V5Cg0xUwo7BgUZdwyYmyzIaFJ7SoWDCOW6d+JmyqVV+I?=
 =?us-ascii?Q?RQeRnoLMzCudkkCilha9SCK4s/22CXDvydAdHr5raiD7wYSwXiOsikfzxEU4?=
 =?us-ascii?Q?J54JNVlyBkB7tt6c1bQlFeVjwmTF7jF3Ga+yn6KzIkQ/17WfR9/SUL0C67xd?=
 =?us-ascii?Q?JTd+IfWbl2Bc2Zlty8Smdlx2amVUYYrCOI7yt6EKdTdwd+hIMKTBAF/lTNom?=
 =?us-ascii?Q?geYhCL/l+Uso15O7FMnszja6mh6MrwemCmx6rdM2dV/SGMT9w0YJXVrkZLC6?=
 =?us-ascii?Q?2+LZU2rdLtdlalsyXJIUCvq3D0EFftGnILY52CfmpLLVZxU0XBymDu2FNQO8?=
 =?us-ascii?Q?QZEspOWnbGcYXksZteapptj3XMy4DPVmjloo4oUOq1SVHC4fnC7zG848QaOW?=
 =?us-ascii?Q?OvYDn98buJL4rL74vcHiWdHpTpP3xuf+k4z9gFKf6AKtFOBCHkL4yqhGaEeM?=
 =?us-ascii?Q?0KEsWjxH66skO5ViugCrw75WM6Il8D3kfDAuMhHCi/RAzHXwkCUtXgBRRCpi?=
 =?us-ascii?Q?BOc8IogIZVEcuKwk4xPG/VHJIL/+PnwKd/TZ0vRTrQnhwmsXOKm5285KgF/7?=
 =?us-ascii?Q?Y2PzOmE/ctV21TRZNABMbauMNHA5mGr79ALIjORwYFJIQpa1/Ncyry8ZoDyt?=
 =?us-ascii?Q?k4mkUH4hCU9r/bj0d/MZw9njoSOmbF2KnCHD2IxUA92g2Bt6MIyjs0+/Ad7Z?=
 =?us-ascii?Q?DJAjeXhKSk20AbbmkxuHD/X4d6V8Oy0xLbaA?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+T7b+D6IF9FeKw5CLrHDtzK+bMrxCI6EQ9WBymDE7U9avO1LRZdUXsoNInrv?=
 =?us-ascii?Q?JPM+nmYobpQzp3uIwQTwmRSA222wZ2Ujh1Zvbtdybt0E6w/81ToP0pfXJo8h?=
 =?us-ascii?Q?+H24o6oKwbFX8D/Fag6+xXR4HxBkxaHVuyH6iTLZYpl6XWcxC2qeEtBzxWgn?=
 =?us-ascii?Q?JKR6aLQ7wC45haq1HX9cmE6NzyJFTHxzk4djTZx0qLByIGrsGhbuZEGJztoy?=
 =?us-ascii?Q?RrV/VmtA4+Rbh+4QaYQTp4WztHMZTYYrdrAc0Cuf8ATLdfgDRlNKFbn9mmdH?=
 =?us-ascii?Q?x40DWjPQBGU8fxskVa/Ot4pL1CeBFep+MkH8c1Kx9ZK/s6/6VZxbVIP9d3cQ?=
 =?us-ascii?Q?qaq8uMwbWPeLpFw9O37E9aKp7r8//lRbqcTOD0gapcDGki8FoON+9iAgtURe?=
 =?us-ascii?Q?zMjQHb91UJbudOMcgmxN8zMSTqOUcB8fFqiXhnkKSRmCQjsD4nLZetBzn07R?=
 =?us-ascii?Q?fbprRlnmiFEaF6ch1BYdj0CCnNTmVreKvIXOFm4RkwG9pjA+qIFm8eAywBD1?=
 =?us-ascii?Q?yWJ25neVyquBwP86g+OQCIxOmSEc7ZBGl+f4wEg9bePCxV6ZO6Ht/cjXD0ZP?=
 =?us-ascii?Q?Bqy2p/ZzTe4vGP8njFqPP9kVveuQm4VOj4Mg1Ll9mjoik8NFbFP+QUkR+N/f?=
 =?us-ascii?Q?0VFll5h8FrkeoG/JFMXxH3LtRr+LxkkTF8A+O3TA+2C9BPxM8G08Obj5Y2v+?=
 =?us-ascii?Q?O7Ddxl1MpjjA3UlC1xeFEUwr7gbCEBV/DMJXqMG3T6Bp5cv1QJsJ1kqIGhyi?=
 =?us-ascii?Q?qIjsIbELi3MPS1xBY+OAW4KJGmEgTYQoqcRwYFdn44k4IXEIdhJonaqiN/tb?=
 =?us-ascii?Q?28k1Da1uVUbRp/HI2JaStwaqS55Z8yxrv7xN3nzejgMSgPLUrE10uDwjINuW?=
 =?us-ascii?Q?DnF86I5kJapb5cJklOnVLjEXENO4BmeaH4bAz3mfvQpMTAEbmiFZ7jngGUJ1?=
 =?us-ascii?Q?qKv/jWmz8gPXVedbRqaFEumEyruLrGaRZlI48JGrfoNiCTCqH9BXuTrRdI0+?=
 =?us-ascii?Q?dYeHMk0spo6IvB7GHpAxUz3i+qNmohZgD3HzfgjBQj5sN9gjPwbFLQrEysAl?=
 =?us-ascii?Q?v5dzhYzuzEmA4grGYTXdp473sezb7qXRrntmypd6MDYfk32kgDH6pCGIt6G6?=
 =?us-ascii?Q?UDfS19X8PG+WxrcQLWPfPKlRu60f+h+03NMPuHmRUCiCzGRGZZFTHL3wTKG2?=
 =?us-ascii?Q?3T5BIhHZhJtnmLFBZff6zGvDyUPuHpyINZ/HOiSJN0b66Ivj5wd5RopMZZm/?=
 =?us-ascii?Q?wlBe0xW90UcHVpLO4NV+33mxSCxQIH/p3BwfD/bTbISjPQndVtl/M4Gij2z0?=
 =?us-ascii?Q?HAuOmqdtlaPT6v8cTl+aCUIow0rum3RIbzc5yhEFBM6gk8rds+837Im3PXq+?=
 =?us-ascii?Q?x/GLBfs/AL5foXuwB1gYk4BqHgIxDTqevbuKK8BMKuU5k4wowc8IbyyV6qGN?=
 =?us-ascii?Q?7OwrHar4eAsDc3SreWzXQTDxF1pyvNcalkauEsPStyf/yHuqjxgnZdclEf6k?=
 =?us-ascii?Q?R2qXrUgYD6Q9GBQrtF+BK1Zo0PL/Yip9Qk1/Yyh2O+e76u2QZ7+Uli7Z/2ZN?=
 =?us-ascii?Q?90HOniak9kN+WCuYxWvDs7j7lI2F3FaqMV8hinWbdPSqGVhaBfzuPWt5mhFl?=
 =?us-ascii?Q?Tg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 25484501-148a-4b81-f1d9-08de11f6ee6a
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2025 05:42:19.2697 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3JqXejx0GqgDuwqdU2KsbJDPnCcHJE8SIDdHozZ3ET4SiaoOhleiuCJRqx03TgG7XWNPuyCYkPQgA0MhBI8noediot70gCL/7sCNJRoQYrg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8795
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761198144; x=1792734144;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IU6bmPfq+sRN2liKNP7tzuzjc92IlLqn1W2djfvB/ko=;
 b=AAuFo/E8yXF0EObPMsE+z5QejHgVp1IxZyQ0uWvEmQ46RnKzwbb2Z7Oc
 bJurrE6flmvS7NIUkdB76QEI790ZH8zub51KMCTd688gtipYyzrWchjZW
 7F6E5ANE5UdWhBHj1G3f+ET5q8p+fQ/swjYhOjzNYhasXqvCBe/v54DMe
 9jUlnok9Uu7Qm2eSXRsi25Txj3Z1HNvlmT1zi0z/ATPpIck5TegmJdYaw
 OwmOrQcXmcZq0y0FzNavIEDGYqdP4GgJpjsd+kuHECqui2w9+68mpmros
 JgHo2wDr3Vobwz4aeR0o/yc7R2IX5uwvokX+Zg06ql5/33JbtRg8fMTkJ
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AAuFo/E8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2] i40e: avoid redundant VF link
 state updates
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
Cc: Jamie Bainbridge <jamie.bainbridge@gmail.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Dennis Chen <dechen@redhat.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Czapnik,
 Lukasz" <lukasz.czapnik@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Eric Dumazet <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>, Jakub
 Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "David S
 . Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Robert Malz <robert.malz@canonical.com>
> Sent: Wednesday, October 22, 2025 6:12 PM
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; David S . Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; Simon Horman <horms@kernel.org>; Loktionov,
> Aleksandr <aleksandr.loktionov@intel.com>; Czapnik, Lukasz
> <lukasz.czapnik@intel.com>; Robert Malz <robert.malz@canonical.com>;
> Jamie Bainbridge <jamie.bainbridge@gmail.com>; Jay Vosburgh
> <jay.vosburgh@canonical.com>; Dennis Chen <dechen@redhat.com>; Keller,
> Jacob E <jacob.e.keller@intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>
> Subject: [PATCH v2] i40e: avoid redundant VF link state updates
>=20
> From: Jay Vosburgh <jay.vosburgh@canonical.com>
>=20
> Multiple sources can request VF link state changes with identical
> parameters. For example, OpenStack Neutron may request to set the VF
> link state to IFLA_VF_LINK_STATE_AUTO during every initialization or
> user can
> issue: `ip link set <ifname> vf 0 state auto` multiple times.
> Currently, the i40e driver processes each of these requests, even if
> the requested state is the same as the current one. This leads to
> unnecessary VF resets and can cause performance degradation or
> instability in the VF driver, particularly in environment using Data
> Plane Development Kit (DPDK).
>=20
> With this patch i40e will skip VF link state change requests when the
> desired link state matches the current configuration. This prevents
> unnecessary VF resets and reduces PF-VF communication overhead.
>=20
> To reproduce the problem run following command multiple times on the
> same interface: 'ip link set <ifname> vf 0 state auto'
> Every time command is executed, PF driver will trigger VF reset.
>=20
> Co-developed-by: Robert Malz <robert.malz@canonical.com>
> Signed-off-by: Robert Malz <robert.malz@canonical.com>
> Signed-off-by: Jay Vosburgh <jay.vosburgh@canonical.com>
>=20
> ---
> V1 -> V2: updated commit message, added information how to reproduce
>=20
>  drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index 081a4526a2f0..0fe0d52c796b 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -4788,6 +4788,7 @@ int i40e_ndo_set_vf_link_state(struct net_device
> *netdev, int vf_id, int link)
>  	unsigned long q_map;
>  	struct i40e_vf *vf;
>  	int abs_vf_id;
> +	int old_link;
>  	int ret =3D 0;
>  	int tmp;
>=20
> @@ -4806,6 +4807,17 @@ int i40e_ndo_set_vf_link_state(struct
> net_device *netdev, int vf_id, int link)
>  	vf =3D &pf->vf[vf_id];
>  	abs_vf_id =3D vf->vf_id + hw->func_caps.vf_base_id;
>=20
> +	/* skip VF link state change if requested state is already set
> */
> +	if (!vf->link_forced)
> +		old_link =3D IFLA_VF_LINK_STATE_AUTO;
> +	else if (vf->link_up)
> +		old_link =3D IFLA_VF_LINK_STATE_ENABLE;
> +	else
> +		old_link =3D IFLA_VF_LINK_STATE_DISABLE;
> +
> +	if (link =3D=3D old_link)
> +		goto error_out;
> +
>  	pfe.event =3D VIRTCHNL_EVENT_LINK_CHANGE;
>  	pfe.severity =3D PF_EVENT_SEVERITY_INFO;
>=20
> --
> 2.34.1

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
