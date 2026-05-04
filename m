Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OEyxGryP+GkVwgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 04 May 2026 14:23:24 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B92404BCD9D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 04 May 2026 14:23:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EB76A41A88;
	Mon,  4 May 2026 12:23:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 78BFVlWPppZf; Mon,  4 May 2026 12:23:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B505E41A7D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777897400;
	bh=+R90VSjTo+ZVfrLMRRG7HBrjh3rr3bHfeOZLWeSsYaA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Mk2Cf2iu2ey6FNka+od/Ix425+0S3BeeDDN2uJxLRemVX3XCghLClhUoR4KB9ni6q
	 3gv+t9GdyQjz21B1CWa52/e5ufviQgkx+ZlUiuilnhzYhcrCiyKoeQUN3BeXyUb/ta
	 y2YdXzMlyXexc4kFXEpIPPnTNDJ/g1QgOOcqZsKTpfJeDd6yXJogLQhMBriJcI2k+Z
	 sauAaNLM1S9iuf6Z8JdbRo06IB/4hPYI4RfZhAcrvVx/xJjHpeRkaARITxbaEmHoyF
	 4AFK1Yo3yNyceZe1VjQyhzbIjpp8wMEg2aAPEdI2IKpNc97cBUqUjP4VMQGZPo3W2s
	 +II8IDmnrPQrw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B505E41A7D;
	Mon,  4 May 2026 12:23:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1CA6D190
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 12:23:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 024DE61407
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 12:23:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O_XHxv0tOhv0 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 May 2026 12:23:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3C04661402
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3C04661402
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3C04661402
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 12:23:17 +0000 (UTC)
X-CSE-ConnectionGUID: o5S3qnYCQLyOMji1EhFoPw==
X-CSE-MsgGUID: JN5xbDrxTSGECqX3c+bzMg==
X-IronPort-AV: E=McAfee;i="6800,10657,11776"; a="89443642"
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="89443642"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 05:23:17 -0700
X-CSE-ConnectionGUID: g7xZVwHwTOiEc9myt8wjeQ==
X-CSE-MsgGUID: rPSm9tmCRJWCBAyT3RI7Cg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="234640170"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 05:23:18 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 4 May 2026 05:23:16 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 4 May 2026 05:23:16 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.37) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 4 May 2026 05:23:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cLjn7iUTk0IhcbB+NPValRDf36Z2SJC+fzRHjveQzE0zIqbPOVAOGklJi9s+Az3Nrvy76PV4zkLzkDSVITz2GI3IpkaHWXkC3x6EqeDSHcy/MkCDXtkmrSqTMcwQY09/OVDp8WduoRjBYQhitbFit7BHTk/OmPrLO/2fF/qaTNa2Ov1AMFLJVAf5+ES9FfsVPU2bA5PhIfa1fMs61/SeLV1Kd63hAcYFHalcRAbLO8KS/cC6pzB56AJvZtDwWPcpK7d3fUTl2agBV3lIwu4BdT1pGpYHf2RIXlE8hcyw9Y+c0K1MLczKbnj59SiJyCIxFE5VCW4YFAdbRYQMoKod/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+R90VSjTo+ZVfrLMRRG7HBrjh3rr3bHfeOZLWeSsYaA=;
 b=MHlj9Y1KCuANOnFnslQvpCFJx2YVoGwFfiGEb8cI4ODZ1jcOl1R9jdxRJ4RzwMcCBpsM+e3YVu6kzxdXTDGGhgcmG7C/EmP8nU7FLwx1fZ6hhHxJAM62LcfthK0H8pybKQQZPsGjEeUPr+GIRTd4PUykDvvnlU66tRqZ3Vob1YmAk2y4CSQg6Jm98kD2oC/w5CU/IREUSbHdP8wTvRUpcIen8fjEwSes/kCdpFz0MNy4xoabqhC+uXcHlv5C7egX3MC/ndM/x1c+qr3fAwyUJ8FU/fmL9tZ7NcHnhn/odosIIRKCagns8OWw8/4Vm2lVqb+kPzWwZBFpJ9ILApbW+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CH3PR11MB8659.namprd11.prod.outlook.com (2603:10b6:610:1cf::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Mon, 4 May
 2026 12:23:10 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9870.023; Mon, 4 May 2026
 12:23:10 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Oros, Petr" <poros@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Eric Dumazet
 <edumazet@google.com>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, Simon Horman
 <horms@kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: fix missing priority
 callbacks for U.FL DPLL pins
Thread-Index: AQHc27/uh4kEqoy2jUGhegVbuLh9lrX9yedA
Date: Mon, 4 May 2026 12:23:10 +0000
Message-ID: <IA3PR11MB8986DC1FCB29448CDDEDF045E5312@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260504121603.1702674-1-poros@redhat.com>
In-Reply-To: <20260504121603.1702674-1-poros@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CH3PR11MB8659:EE_
x-ms-office365-filtering-correlation-id: a5207d6d-cbd4-4dec-292b-08dea9d7e7af
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|56012099003|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: VkZYNwrbsHbtNWUHULlMzf6varNkpsHJllDvGbauTRJqmyUqWy3/jSflYoNPT6u8XORbX6lp+lsFxkj7E5Ymw9eoylYsgYPyhjhtB6ZBvmrfjviu/TD0M6P5JFfBRXWEFIbtDZY3tT1XeHL4JYxVq/3RkvH2IruzT2bon4n81EN+LuvatCj/UdCfiBsj2jcCcM6nY7N/e78RsXJzuoLpzKaYmESjzN6rhVaWACGldnx0y+i93DS6pSqqP77/s+jqUt8H0ptPtOV5txors6XG5q4wPQbIlORi3TwPM6m9cJIx0zVC1E4OtlGUZq6cD/2GwKjbRSEueoNCJSQqF+3OdjdzEs2yh0PK365V8HlaJFnr/rktnkdESyxs8HF4PlvOC0EQkP63QUyMjcsEuvQ1qj7OtpL0i04yPjU2K4uSrOBz0bzCv6nYU64PEDV0UB/rWymxBz0t0heA6Rfyv3M20tWCL2563ahLQPFE8U5+JQ3fEwhkI4jZ82ub02QTDsyIBEiOkOaBUehrWF70v1I9QAjvOcsKtHxnYgEvPK44Hj1ikV/cpknoJVVH+hNPvf3veIY9gcBcrUNLJXEDMR9abgOGfGsOeZAVaJaq1bswecevn0Ir0KWQn+BNONjiwS79V5nPuW6FT8eBjelscJkAGajzOx2zkRrlAwHHkhB+ZKtDbt5i0w9P/k944jTc3GoeXZivWy1IOHNqCmMISC5p8LWlqkkjZXrKh/9yO85Icrh2WkqKhXL4QPCB3t/qA+ua
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(56012099003)(18002099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/G226JAgRfYCDJfReYSwCDrpIuFAyYTLF43U3v1kBCgURyPGNp/mTbjfxZIB?=
 =?us-ascii?Q?0Vrzr5/t9MUSdAREiiQSsjKBIpUxdmqwYmSR7UeAdynQwmPM3JodaMAuNpsl?=
 =?us-ascii?Q?5+ZtHVshM/WvosZqZZFhdcDbpCNz2JFeJO0mYpW1hohskqIUQg3/h6dUB13o?=
 =?us-ascii?Q?XrJwTUHEsPpKqeFmulKAhpFyygkzeG5wa63utSJNOPK/Tj6Zsa8mqzFWsXqo?=
 =?us-ascii?Q?0R99uLBY8PwImZWz13drJ46oypXsC37eqF2pvfQnwBx1sEIrUBlcpKkvBVU8?=
 =?us-ascii?Q?owsA8QA9Xf++30sTKlKcRdBhS/QmKABcp/Yb7vgoWKqfolFhqLJ/jWQhGqse?=
 =?us-ascii?Q?O5+roeDETm3rHu8IqECy5BK5K6m9eZSFsD10afI54NOtfKEYZqGhCW2bewxw?=
 =?us-ascii?Q?B0FDicX6oorwZN10LVkQUqfoBC3RKF1oDr1g29pfJSNJcAC9AFiUDnW107uw?=
 =?us-ascii?Q?kbbbdCM7r1bK3qFh/ycHA2dmRLP+3rO+EriyaU0hI8wETTXIbmOzD2u8wZBO?=
 =?us-ascii?Q?FleewvmTLIotbUWPm2wCLl/dCTXj5+jnO6HkurlV93dp687LHrYcGKrNQn+0?=
 =?us-ascii?Q?3KzaniE6hxoATlkyfEimNaibZN+MbsjSzRq0nMta0/tQrSvivfEZGPIVHE3B?=
 =?us-ascii?Q?ZZiEH0qECKk3U5hXyBGwjFn/SqDYFX7p8FlOiFwB7Udo77J8n/gv2FJkqutt?=
 =?us-ascii?Q?pkwGMbth4AA5D4H9jM2bVLNgKVbnNjjYrnw37tX2FHKqrP/P8A5i8XgzE39P?=
 =?us-ascii?Q?zqNzB/5OQ7BPhnYggRk8rc+kHUb71Itn/hsIv3lBhEXSZg9uMG/hmaouk5z/?=
 =?us-ascii?Q?iHyWqkpuQoVeXi9tdXuh1KatU9O5Cf5ND0hk7zMw7CcR+H18hB8tqmovMNmm?=
 =?us-ascii?Q?SitLVoOS4UdxcEjKEA/I1d6L5nYfNLih11I3T9no4t3IcxwwOSMlvPI77jBR?=
 =?us-ascii?Q?mJgOofvSIY3ZQgZTviJci7NMEWSWwjdb3P6AViD+KDftwX5PAY+kDmqjL8E9?=
 =?us-ascii?Q?sBKolugZR7w2EBD0h2ScmWPt5GBMLLOlRgWPHZ0BPCUc+Wym+SNP2XKplyAV?=
 =?us-ascii?Q?7SYdRbpP+xnsT8Z/A31UN0CkYRLnbWqa0yCpkD1mkLPVuPmLz3zME2EbVUi9?=
 =?us-ascii?Q?zENAhSEiJVEsSjSTo2FfsRVu49wx/YOC7DgBzz9nI2k6T1d1utfQnvn4Qylt?=
 =?us-ascii?Q?9c1IolXVibZ+8C+6n62j0CyrCmyfFC9SsJXZWELN9xBsMq7pg3T15J3WMFlv?=
 =?us-ascii?Q?nrTTJ0jYY9Dm0fhQ9BelfyW8T2d06Qc595Ga6UcjtXlFD8y7+4x7/pM1HCA+?=
 =?us-ascii?Q?f5neyyiZkLZX22PVvCdDdZkoGdo6iiZcljVXiO0jJzLWaL3d51NdfmqdVxL2?=
 =?us-ascii?Q?j9U9RShKpLXc7P15frznXO633CP6NtMo9kM6w3T8WDnCFNbSNSl3pS8fTwnk?=
 =?us-ascii?Q?77uQjo7q2yJJYtNQdXxkirCyuLd3gmQ2l1c4XB82ujGMlhl3yHvRqJ5w+6O6?=
 =?us-ascii?Q?Ia3AoFZm9ITg3QCr7eYcToZjFkQXPH4PQAjXOIPM6mXTzTOZiWYAXsC/Vj+P?=
 =?us-ascii?Q?MQjyP4/B/Pj64bg174I8iaesW7yawetfjg4dfbbfMKTHWrbwpzRAOnFDcV16?=
 =?us-ascii?Q?g6U/u5QBkYVh0XGkpOacTW5a/i9nkB5Mat9vhT0ox7jydaUZLBLehF8ZAc7m?=
 =?us-ascii?Q?Rew9qpvadKcPEwfT4lHizv7wh3B56j7GAfW8yvBesYMfg7lmlssf1p97yRcf?=
 =?us-ascii?Q?Payp0Air0oWkZLB9QC62imW2EFcz01I=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: iz1rW+bS9X31TODxbtTgMh8f0TdhiaJ9ItZepqGfEkrw14Odhu2xJZItQpdvLVV40UxlJwq8LWCvUXiGTem2x3W7zxAQYfdE6tFLcra26dzG+vaZ5hMtbiXpk34Noj493xnqySFKFkbrMJIU6vfIrhLR7tsuM5lZWA44jjX4zdPcgN4X6IT9fJJEFgI/eMJ1h6a0zM8FTwydRQktNEkapQovcdAP/aSSCXuuDgzHWnGc49K+ss3SNGo23fcqFTd6WiHyTLnsfTPTvlcs/PS52j3JBFWIhL6Do94oRsgoXkyl2cPN+yD3j/8vSlcsYdkbhG43EboTyE0T1RCBiYpQzw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a5207d6d-cbd4-4dec-292b-08dea9d7e7af
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 May 2026 12:23:10.2974 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GYiF96DumvMxaa2J+RQIhSG9hECHzgQ2Np3/dXZD3CMwyP0n2sy4B+QgRgCDcrzi6wokmgegs0UVfunHf1/L66seesGFUkP9TgRc/oniDMI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8659
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777897398; x=1809433398;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uk7vdYAzl+4Lpz9sB+wYHi9VLOHhwYtNcG5kB04R3mg=;
 b=I+AfTB9gigtW0AddaeXaf3Gg7aZ7tPW6zMNrfo9jlCwmJKkKXhXpj5It
 mj5G7hc0rNzOp/+jH6fLEzZkLNr7zMsAaOqbuP6RLRZPMKtFCfX5tKikX
 bm/BKBNjOGgd98fC8QojPLW2xLLl4XF2PQREbiMBo9p7ZKJgr4bKnY0XF
 eHY82HLVfbUkbIjXPedGcI8W4X1sWJ/hitBr5+hMwfV62pHdldJeCBxYt
 LvENFGKukuBGtPyDu0Ny5Ki9EHj/URrCZxla5M2bAVlRMOMvuKrHjKVh1
 A6jHzMLMiUq6LdNuUhHy2vyFVwUBNDNMCwZ/ToTNkvQbw5MjVoEu8yGXA
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=I+AfTB9g
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix missing priority
 callbacks for U.FL DPLL pins
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
X-Rspamd-Queue-Id: B92404BCD9D
X-Rspamd-Action: no action
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
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Petr Oros
> Sent: Monday, May 4, 2026 2:16 PM
> To: netdev@vger.kernel.org
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Eric Dumazet
> <edumazet@google.com>; Kubalewski, Arkadiusz
> <arkadiusz.kubalewski@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Simon Horman
> <horms@kernel.org>; intel-wired-lan@lists.osuosl.org; Jakub Kicinski
> <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; David S. Miller
> <davem@davemloft.net>; linux-kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-net] ice: fix missing priority
> callbacks for U.FL DPLL pins
>=20
> The U.FL2 input pin advertises
> DPLL_PIN_CAPABILITIES_PRIORITY_CAN_CHANGE
> in its capability mask, but ice_dpll_pin_ufl_ops does not provide
> .prio_get and .prio_set callbacks. As a result the DPLL subsystem
> cannot report or accept priority for U.FL pins: pin-get omits the prio
> field on U.FL2 and pin-set with prio is rejected as invalid, even
> though the capability is present. This prevents user space from using
> priority to select or disable U.FL2 as a DPLL input source.
>=20
> Add the missing .prio_get and .prio_set callbacks to
> ice_dpll_pin_ufl_ops, reusing ice_dpll_sw_input_prio_{get,set}. The
> same ops struct is shared by U.FL1 and U.FL2: U.FL2 (input) delegates
> to the backing hardware input pin, while U.FL1 (output) does not
> advertise DPLL_PIN_CAPABILITIES_PRIORITY_CAN_CHANGE so the dpll core
> capability gate never invokes the callback for it. The reused helpers
> also guard on p->direction !=3D DPLL_PIN_DIRECTION_INPUT and !p->input
> as defense in depth.
>=20
> Fixes: 2dd5d03c77e2 ("ice: redesign dpll sma/u.fl pins control")
> Signed-off-by: Petr Oros <poros@redhat.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dpll.c | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c
> b/drivers/net/ethernet/intel/ice/ice_dpll.c
> index 27b460926baced..be72a076f7a15c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dpll.c
> +++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
> @@ -2628,6 +2628,8 @@ static const struct dpll_pin_ops
> ice_dpll_pin_ufl_ops =3D {
>  	.state_on_dpll_set =3D ice_dpll_ufl_pin_state_set,
>  	.state_on_dpll_get =3D ice_dpll_sw_pin_state_get,
>  	.direction_get =3D ice_dpll_pin_sw_direction_get,
> +	.prio_get =3D ice_dpll_sw_input_prio_get,
> +	.prio_set =3D ice_dpll_sw_input_prio_set,
>  	.frequency_get =3D ice_dpll_sw_pin_frequency_get,
>  	.frequency_set =3D ice_dpll_sw_pin_frequency_set,
>  	.esync_set =3D ice_dpll_sw_esync_set,
> --
> 2.53.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

