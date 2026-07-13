Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kYW7MlbyVGoYhwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Jul 2026 16:12:38 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A1B74C328
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Jul 2026 16:12:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b="wtC2M/Qw";
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 01A5B60810;
	Mon, 13 Jul 2026 14:12:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ktvBuIVNfS9R; Mon, 13 Jul 2026 14:12:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 13C2C60807
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783951954;
	bh=laxnNFpS7Vi1DX3mrIG3OE0ECfwChbVaR1NIF3mm+CU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wtC2M/Qwq+k4wgoiu53tjfUFBi6tSY+Q0qy3DcUOmV/sLpZ7WdglsBeJ824byzdMc
	 MQRidwxmyLEkJWDrTrCTwL1g59S1rDrDh7LVsXAiXM55EFIY8uF+mal+3+Ku74YW06
	 PbhgFMRtvbGCRC0odnFr+2C/WbKccE5YchnJqr65q+WXBSBlh94mwGR4SFq9vx5/Qi
	 cOIzl0pWRfNnrX7juVc7gfR3igDN29rYJe5I9Nmm5V8iybvtg/Zzl6AePU3yCoruz1
	 3gSzqPJ8UMPQF4ulnPbXj1a+HU5pnp03GhGV7n/xybpC3RQa9WTipg1/wJUB1ca2tW
	 RvR2WWXoqNr+Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 13C2C60807;
	Mon, 13 Jul 2026 14:12:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9C65F128
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2026 14:12:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 99A80407FF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2026 14:12:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p30ZDgGZOXh3 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Jul 2026 14:12:31 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 86CBE407FC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 86CBE407FC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 86CBE407FC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2026 14:12:31 +0000 (UTC)
X-CSE-ConnectionGUID: P05/sLmvQKOmhQ7Oq2XwIw==
X-CSE-MsgGUID: 4jbKzgThRa6v20hLPC1qZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="95162416"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="95162416"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 07:12:30 -0700
X-CSE-ConnectionGUID: DBPzD69MQlisuqy30y7Wtg==
X-CSE-MsgGUID: iNLlOyKJTSK1MgQsbTGsMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="252941358"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 07:12:31 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 13 Jul 2026 07:12:30 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 13 Jul 2026 07:12:30 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.60) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 13 Jul 2026 07:12:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=D54J7JWN+8PdLFrOUGx4i1MM544N0Sk6WUgB/S7Vb8RbGaii/8s0dJVuqAVa6OgJuIWd41jF5UHsA4xuVeCyoE/F31VHzketCrvOTg7mPB7wmOYw7wgnfoP4s9GQ396LJiYaLI2MZ+zuOrb6QN1lCgb9hjrqbmVVxEcoNvfXoCgcjV82VIPbACDG7FVFyIw33S63ObszKLJp1Pu4mAsAHANaHb6DpeMv7DcxN247PsCO2lfQAAPrH96iilLQJT4EU1ytjsSGyHnm783elydKh4VsI54XmYzwGhfySWwz9b49FUCgfn1BXCo/fjPfJSg6wd49mfQ2QTpHpKv3SEn5Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=laxnNFpS7Vi1DX3mrIG3OE0ECfwChbVaR1NIF3mm+CU=;
 b=jrAZxE04zMRGE1wD7OWpidV1AHqMHIgL/z7XsEXpPNZ+bgPp9y4bnNRjYmEUTDVlNYBrYnsTYZN6XYkBkvAQS4IyORFpcOkRzFZbHZk4ifBj7OkivgCussbhd9WNDXKFYiJa8+4GpNIQyeq/Mjm11T27C41TN3gXEzK4BdJkq2Dzxb4ywYY+BSkkM9/vQ3jsSQ3IRKI95d3yxl4wk0KEtzv8Rw1qt23exj7nhWvjvOIWOr6CQ8HJr3flI80Cyh4hHGW8QaVycJZyjZr+2HGX4NzC1DXoQDpECo9WSunHvdrmN5IGCXJqqWdVgbQPFl54D59V9OD7pFKjIY668atlqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SJ2PR11MB8347.namprd11.prod.outlook.com (2603:10b6:a03:544::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.19; Mon, 13 Jul
 2026 14:12:26 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%6]) with mapi id 15.21.0202.014; Mon, 13 Jul 2026
 14:12:26 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Schmidt, Michal" <mschmidt@redhat.com>, Jakub Kicinski <kuba@kernel.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Paolo
 Abeni" <pabeni@redhat.com>, "Jagielski, Jedrzej"
 <jedrzej.jagielski@intel.com>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>, Marcin Szycik <marcin.szycik@linux.intel.com>
Thread-Topic: [PATCH iwl-net v2 2/2] ice: fix stats array overflow via proper
 realloc
Thread-Index: AQHdDZucvkDJkTnbH0Wr7c0JBOZxNrZrh+GA
Date: Mon, 13 Jul 2026 14:12:25 +0000
Message-ID: <IA3PR11MB89862F93330E5B524D8037DEE5FA2@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260706224346.22546-1-przemyslaw.kitszel@intel.com>
 <20260706224346.22546-2-przemyslaw.kitszel@intel.com>
In-Reply-To: <20260706224346.22546-2-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SJ2PR11MB8347:EE_
x-ms-office365-filtering-correlation-id: e46f1ddd-0577-403e-a1b1-08dee0e8c40d
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|23010399003|376014|1800799024|38070700021|6133799003|56012099006|11063799006|4143699003|18002099003|22082099003;
x-microsoft-antispam-message-info: yrsVgB+6T88vpNZnmHQ6jWSgNJk9aw9ka+spEUZgX2dtm1UPIcrUZE2dogP1VoOs8v0VdxnJz4iahPQEcjR+6Nz/B7X0sIfiZOYfdAnUn+oHIacWsxtEg8WfjbpLbTwrtXcY6PSiC1wHhEMmA2O1HC0aN18Aw0fzhJiqNkHU4+iZswT1VJMBZkeA/W/fo1MSs/TIZMii7iS47yNt+OaOlAa8FNpWO1A9PejPc0n3RRK0azRHpfsuRInSudksHeMmF36xmVZgGm4EPNTfqG4zTxphSp9lcSwxoMxWR8y5vVk7qkrgBupyRjlX/V4vssri4VNJ9z5SsU3G8d6CD8nyzFT8CtcYEhw0zWT//QBLSQTm95Rw5u/B0xUhd2SelWyF8BzSxEPktuzIOnnK+G078G0DQpPwgqSPQ6AdpDn0nqXRStysjYebVcupoYPvMis8DKhlil+PSE7eS1DlPtfl1gDrukfp27FhjRYczS9Ryyrfaz1JHZ7V5S4YChQ2sLRwUQCHA+XVoYAj29LHvbpWzinlGqDAcKCwD6tn95JDQEoVJM5Ki7PzlRr5yQcewQB1ScdQyStwMmXd9FwMLIh/rGoqUJmXbGGSz3JQP04/srGTG//gW9q90SfxmbHaysp8dOLWAQB6kPQ8wN8b+QKl54mCfXzpAE4nBgvuQedbA/w=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(23010399003)(376014)(1800799024)(38070700021)(6133799003)(56012099006)(11063799006)(4143699003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?XijFLBTdscPK7+4GVb5nGK9vGqoEjiIsPld48MGbsIx5rqaAtVGTrx6GzPlk?=
 =?us-ascii?Q?xebM5xnEhT+3sdBvqIfKpmfER30aJKMtSCLeiX6kI8SjdooxX0ktHoQyU/Gl?=
 =?us-ascii?Q?4y32Pz7y5jN05SD0r6Zr5UmVin751bjeJE+tj6aUzkam5IY2KErEh9F1LJsY?=
 =?us-ascii?Q?38tWizIOpctubFAQm34DlVTdIbXp9eHP39DkcD/pBC/EyBMhGsU8rzfTHDYS?=
 =?us-ascii?Q?j3oMGmYREYbzu6bWXEHONdaAYWLJHVD9GhMIX3Of0zJh0C/+SlJdHnhwCXGv?=
 =?us-ascii?Q?+af4FbHOZ+tyddLn6mmxFt9zlxmFfvF5wIfJ5kc7xd5Im/pvjgk98rH4FKMb?=
 =?us-ascii?Q?YEppixGy7r7lNu0Rd/6QD7tTHvMhcPvELBcdDDZdDXYJM+EnUpcwu/Fi8qPH?=
 =?us-ascii?Q?9eIHgywEvUpyAGrauq/L9nBUBgLwyYKIGgbSJMYaVGp7OqvKE+ke3+2o1kiF?=
 =?us-ascii?Q?KAKXPh9x7vf9JK08Dgi2Ld5aoGUj7/gHyVfz6VaJudYzBNf/4v6BfWl9W4AA?=
 =?us-ascii?Q?DUazHw7r+YhRvyf56kJELv+jxKTYjDNROTPErifF7ohoJYGH3YtCeAohMSK+?=
 =?us-ascii?Q?wIiBTPj+0ks66Su5ilRRChCyL+2H++BcAIGxOHywj6v0MU8v5HKKssQliDPX?=
 =?us-ascii?Q?sWWuawgTy3khKw6B2i59UacPAyQEft3tFE+oy3okTfnM23kzx09wiMuIJiQS?=
 =?us-ascii?Q?Idq6/nvC4HFLTZ8LX6HEQXhQNoXayiFD4x48gBlmOKgJj4FYa7mrbo0mJLPj?=
 =?us-ascii?Q?iHy6+QfXtjHSSTV6HLp1NVmQvHBt3jYcIUndv+wrf46F/rBSPs3IHgEKh1GW?=
 =?us-ascii?Q?Ams27vfi5WO4J+dbY7P0kGzhhZ6413B46vLxZwJERcGVNjFhQOseg5OoALzT?=
 =?us-ascii?Q?XH1QEg/du/DEFcKZ9lzmUNGzjFsE7iqD15sOhql0w4c6VA9ZcUXxHfURS+pF?=
 =?us-ascii?Q?jgAKR9OCWkrgzedXM0GT9SzH811o2wQYFeLrQi1RWppJ3iUJE87JvZPZdCR6?=
 =?us-ascii?Q?gP/gqrcK5A2EJW2MDkjMcDtE4y9tI4W2JNqMnY0+E6shNt+yNEtDoqMUmep9?=
 =?us-ascii?Q?grDfVvl1aJhYQlOKrkGgBMQcPWBMP3OveL3olDKiIau9xBvZvgEwVV56yTCa?=
 =?us-ascii?Q?O74lWuBY+dwTiyxK2nelEt5ZvoxIlWty15AQXr47YVMIPOUjsH9lz5n2d3Zi?=
 =?us-ascii?Q?y6LgbUJHRbU9/MAKa9pzec1DnoDsMGMUsZbF0ECKfAY/pZd6egJbv0BTfXHl?=
 =?us-ascii?Q?YG/iMUPDuXWyZwIL1tj9ocfGLZacDYeafYboAfFFAYprp9CExaFQ+msVmlwb?=
 =?us-ascii?Q?/9pBOBwRZyWNoQXuit3WKnYa/ZCd3ZudnZSam1kFcp86PFarmADen4xZfH+y?=
 =?us-ascii?Q?xIur5RT1yIWjM7y/IBD2c4sHTb5Uk40P+1yRrdoGIupjHJqUVBah/Wshs8/6?=
 =?us-ascii?Q?J6240zeyrImexoPiJiM3E6qvfQXiSa+8t/ijLUnXXHbTPfIRK4EGPOhA+7oI?=
 =?us-ascii?Q?j7HIbvCrUKkuCZGXaAXbdId4Ecw0PZalQmNdBl/Dub/3ufvCEBRa4VB7uOYO?=
 =?us-ascii?Q?JYiyiOpsLyvPaCoJnhHQePmLTo1/Qnogmi8WzRgBoqgZ3XPemqdYcd+nuxHN?=
 =?us-ascii?Q?R8U2XblsBhe3enMTYXk2tTTM4TAeG/vsR6A72LHSpFri1K+zCKvgPp1x9coL?=
 =?us-ascii?Q?0Tiy8xBlQ8fFc7qbLjTOyNqzB9mzbyI4KiGYI7+fowtgQu+L/ykvm4l2fbZA?=
 =?us-ascii?Q?xkMzY4txRcr5+zayHrVEsbILnJ25Ulo=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: bqk7KtNpcgWKrh1Jf6Kyes2urtwxhBKKX+qYUJcYxFKG/bZ2JSNdgIT0G7DE8yoPt81rE6dX1kMeUVt8aWVg2rOaXNqaVuT46W6HSh7rmKQGTCc6QGgrO3Kt1rBlZ1xM0RRA2q+B4fUGAgBQTTDB3iXE7fymuvHConiY1jZsTTAhnK4ogLWGFBSs43PxYfg9xVSpApjvR/6UzVAAyAiLxyuPXvSl7SR4ohimolldzJstmE/qO6M6COroKZCAuBcwzTxl1u5N9J7vExM0r43dH9d4r2NHXtK5yNJyCt4fP8HepwE1fLkuRa1XRd6+x0tvpM+4MhsDquo9nzu/os68xw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e46f1ddd-0577-403e-a1b1-08dee0e8c40d
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jul 2026 14:12:25.9102 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cl7ZOjv0BYMvyDdId4wSUloIvpnc3Bgcl+z+1B3ZrjjHhBY0MDC0CaB6MLkha7gREUhLD1W1WCqoKkJJREG/3S4FIGWpXTvURuA5e+y0R10=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8347
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783951951; x=1815487951;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=riHQCfhRRaLZ/+BhSJ4b19daC3TNqetq3sMoRoKbFE4=;
 b=FImdwrRI4k3iIhhFd/ZcCqq/LgjXQZlrDV3zz/5L/mn1CQphhOYnumiE
 b0a4L/OcEgzIud/zv/gseUU9CatSXPYMnIgQPLSniuYT+arbFtPKS4dkV
 nlX8Zi+/52gl7p2kgbaa8+0gXAuYVwwIuKJcGBt4xabeX2x8YjYgABbR7
 XXp9qWmcQ7pzPWhYl9UIt2iwBcfZESHjFuHLmUVzDGc+moxCNKBL5eqkV
 7LB80g0PH/JrlnNkNOWeB5P1CavPf2WuIshYhjHrFOMv1kIHi2lMYlLo3
 rx0xat5IVrWYcu2LWqyWB1EtIaACH7bXPZ/D97zeeW5vu0wpbFBJwN7Dr
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FImdwrRI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 2/2] ice: fix stats array
 overflow via proper realloc
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.kitszel@intel.com,m:mschmidt@redhat.com,m:kuba@kernel.org,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:jedrzej.jagielski@intel.com,m:piotr.kwapulinski@intel.com,m:marcin.szycik@linux.intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
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
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D6A1B74C328



> -----Original Message-----
> From: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Sent: Tuesday, July 7, 2026 12:44 AM
> To: intel-wired-lan@lists.osuosl.org; Schmidt, Michal
> <mschmidt@redhat.com>; Jakub Kicinski <kuba@kernel.org>
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Paolo Abeni <pabeni@redhat.com>; Jagielski,
> Jedrzej <jedrzej.jagielski@intel.com>; Kwapulinski, Piotr
> <piotr.kwapulinski@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Marcin Szycik
> <marcin.szycik@linux.intel.com>
> Subject: [PATCH iwl-net v2 2/2] ice: fix stats array overflow via
> proper realloc
>=20
> Integrate ice_vsi_alloc_stat_arrays() with realloc variant.
>=20
> Instead of keeping two functions for stat arrays allocation, change
> the
> ice_vsi_realloc_stat_arrays() to handle initial condition (no vsi_stat
> entry) and replace ice_vsi_alloc_stat_arrays() by the more generic
> ice_vsi_realloc_stat_arrays().
>=20
> Note that VSIs of ICE_VSI_CHNL type are ignored in realloc variant as
> they were in the replaced ice_vsi_alloc_stat_arrays().
>=20
> This is a fix for stats array overflow that occurs when VF is given
> more queues (an operation that will be more frequent, and by bigger
> increase, when we will merge my "XLVF" series).
>=20
> Splat for increasing number of queues thanks to Michal Schmidt:
> KASAN detects the bug:
>  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>  BUG: KASAN: slab-out-of-bounds in
> ice_vsi_alloc_ring_stats+0x385/0x4a0 [ice]  Read of size 8 at addr
> ffff88810affea60 by task kworker/u131:7/221
>=20
>  CPU: 24 UID: 0 PID: 221 Comm: kworker/u131:7 Not tainted 7.1.0-rc1+
> #1 PREEMPT(lazy)  ...
>  Workqueue: ice ice_service_task [ice]
>  Call Trace:
>   <TASK>
>   ...
>   kasan_report+0xd7/0x120
>   ice_vsi_alloc_ring_stats+0x385/0x4a0 [ice]
>   ice_vsi_cfg_def+0x12e2/0x2060 [ice]
>   ice_vsi_cfg+0xb5/0x3c0 [ice]
>   ice_reset_vf+0x858/0xf80 [ice]
>   ice_vc_request_qs_msg+0x1da/0x290 [ice]
>   ice_vc_process_vf_msg+0xb15/0x1430 [ice]
>   __ice_clean_ctrlq+0x70d/0x9d0 [ice]
>   ice_service_task+0x840/0xf20 [ice]
>   process_one_work+0x690/0xff0
>   worker_thread+0x4d9/0xd20
>   kthread+0x322/0x410
>   ret_from_fork+0x332/0x660
>   ret_from_fork_asm+0x1a/0x30
>   </TASK>
>=20
>  Allocated by task 2439:
>   kasan_save_stack+0x1c/0x40
>   kasan_save_track+0x10/0x30
>   __kasan_kmalloc+0x96/0xb0
>   __kmalloc_noprof+0x1d8/0x580
>   ice_vsi_cfg_def+0x115c/0x2060 [ice]
>   ice_vsi_cfg+0xb5/0x3c0 [ice]
>   ice_vsi_setup+0x180/0x320 [ice]
>   ice_start_vfs+0x1f3/0x590 [ice]
>   ice_ena_vfs+0x66d/0x798 [ice]
>   ice_sriov_configure.cold+0xe4/0x121 [ice]
>   sriov_numvfs_store+0x279/0x480
>   kernfs_fop_write_iter+0x331/0x4f0
>   vfs_write+0x4c4/0xe40
>   ksys_write+0x10c/0x240
>   do_syscall_64+0xd9/0x650
>   entry_SYSCALL_64_after_hwframe+0x76/0x7e
>=20
>  The buggy address belongs to the object at ffff88810affea40
>                 which belongs to the cache kmalloc-32 of size 32  The
> buggy address is located 0 bytes to the right of
>                 allocated 32-byte region [ffff88810affea40,
> ffff88810affea60)
>=20
> Fixes: 2a2cb4c6c181 ("ice: replace ice_vf_recreate_vsi() with
> ice_vf_reconfig_vsi()")
> Closes: https://redhat.atlassian.net/browse/RHEL-164321
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
> This is an alternative to the fix [1] by Michal Schmidt, which were
> blocked due to AI feedback. My fix was already developed before
> Michal's, just not public back then. We have agreed to go on with my
> version.
>=20
> [1] https://lore.kernel.org/netdev/20260520183501.3360810-3-
> anthony.l.nguyen@intel.com
>=20
> v1:
> https://lore.kernel.org/intel-wired-lan/20260701104141.9740-2-
> przemyslaw.kitszel@intel.com
>=20
> v2: Sashiko:
>  * defer pf->vsi_stats[vsi->idx] to be done only after successful Tx
> and Rx stats arrays
>       allocation - this avoids "half initialized" state processing in
> ice_vsi_free_stats().
>     The above was reported by both opus-4.6 and gemini-3.1-pro. All
> other errors reported by
>     just gemini were a mix between false-positives and too-
> cornercase'y. Gemini report for v1:
>     https://sashiko.dev/#/patchset/20260701104141.9740-1-
> przemyslaw.kitszel%40intel.com
>  * store also array lengths in separate variable for better tracking
> and proper freeing.
> ---
>  drivers/net/ethernet/intel/ice/ice.h     |  2 +
>  drivers/net/ethernet/intel/ice/ice_lib.c | 80 ++++++++---------------
> -
>  2 files changed, 29 insertions(+), 53 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice.h
> b/drivers/net/ethernet/intel/ice/ice.h
> index f72bb1aa4067..b63b59f2d203 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -328,6 +328,8 @@ enum ice_vsi_state {  struct ice_vsi_stats {
>  	struct ice_ring_stats **tx_ring_stats;  /* Tx ring stats array
> */
>  	struct ice_ring_stats **rx_ring_stats;  /* Rx ring stats array
> */

...

>  	if (ret)
>  		goto unroll_vsi_alloc;
>=20
> --
> 2.54.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
