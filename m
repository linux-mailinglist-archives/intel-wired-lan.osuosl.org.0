Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B6AFA64B73
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Mar 2025 12:02:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E90D360737;
	Mon, 17 Mar 2025 11:01:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jcdgVPfyuJiI; Mon, 17 Mar 2025 11:01:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DF18F60AFE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742209319;
	bh=fUmy9QvYK4rmYcM6ErHEbnxFbyFYSr1ef0M47lNMI0U=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=q9CPMy+DR1rcSHrQ9XTfNdRiMxroS9D2Lo32xDBFXfJpPlAkUe+VGoSfZ2CjMUw/V
	 gP7BY4CgJ9aARuAQX8Rmbs3AnV0qqUtFyj55P7ObhT2IrZUYKUU4FRPSzobpsP9xKA
	 UOfQJqKUpVk4Nw16C2vY3uVBvPAsN5scMQFqnvdfNC1HgYbYkMO5agMQfViL2NxeQ5
	 avyaaNSXpYGWfmS2z988lb+sMs6/JZcfWMsHQ61qtELYm+dvVCCyRMEq6z+mdWI9tj
	 IzjIdrgTx0sXvAsRk3DmrPkLsSUrOY1sPSBTdg+fXyAOAAc+0wKKCndFuVCd+3Kv5T
	 jeUYzQDOGVk8A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DF18F60AFE;
	Mon, 17 Mar 2025 11:01:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9BC48D5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Mar 2025 11:01:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 802AD60737
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Mar 2025 11:01:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8A5kYQ0e2PY1 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Mar 2025 11:01:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 35B3560AF9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 35B3560AF9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 35B3560AF9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Mar 2025 11:01:55 +0000 (UTC)
X-CSE-ConnectionGUID: u5s5O95wR2OS7v4zjLsMog==
X-CSE-MsgGUID: n9VrZXqcSIqE0dYkKmf5Ag==
X-IronPort-AV: E=McAfee;i="6700,10204,11375"; a="53505554"
X-IronPort-AV: E=Sophos;i="6.14,253,1736841600"; d="scan'208";a="53505554"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2025 04:01:50 -0700
X-CSE-ConnectionGUID: s/ZMGFUwTEKrRmqu1tpo3g==
X-CSE-MsgGUID: bT3mK/VhRNOktQWADKI5AQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,253,1736841600"; d="scan'208";a="121710378"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2025 04:01:49 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Mon, 17 Mar 2025 04:01:48 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 17 Mar 2025 04:01:48 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 17 Mar 2025 04:01:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=s/mmW33XSbSQGsJixy+4ySQJfNT9HZINXlsASF9JtKRSc6+t1mr2dUmWTKxcs75LdNObbGZBBbzmQCXkpkHQFdib09wGXZXk58jdq3RB195eASxYjIBKB0WItRSdGDq9HBENOQ4ofPTwnBmr55yaecF3BDfYBE0asAyBA/CgA3U+9bxUz7gfSll/cdpP5ykn88Zf6X4VTyfGcFBWVTQFF2vwCqCrMNiTFgWkTI1YQZSLnaBRV709VmG/QQz3yY+5T099oTgGgoydMMaKbGpfNpyI5ikGFpoMnA49UO+dksDY7cSYi0zIe9qAyjwJX4hjQdz136GRpHVgpG/yDLHGGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fUmy9QvYK4rmYcM6ErHEbnxFbyFYSr1ef0M47lNMI0U=;
 b=Ze8fvvtLWEmAN50BNlTQBPjN+KOjJK7y5DH/tNl4X5e4/lIljkP/gnKFmahPZueeU+NnubabK2oJWj9DmZz1139FWcpwbCBSUUlzh6XczcWjXiXlyrOOGHqLtWhtcfXFXvVF80qHB6rCLoPCPHNwDaIBHpghADzMeN7CaCJBO9GBSx8oWhUUzeAhWNyPv0ofKzu/E6jQi7ghYMToqSH1BlkgsLRvQBt5HQXwahq+Kqx9RMLGT0+NbJDmNjePhRO6S6qbYNNBxL7/uvGLZzRlf6Hop5RE0fMDtrTxL/IF3tM+ZLAmVyR45h2RBPFaIthAK+n+BhqTZ9/cznfsfZZMjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by PH0PR11MB5063.namprd11.prod.outlook.com (2603:10b6:510:3d::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.33; Mon, 17 Mar
 2025 11:01:44 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae%7]) with mapi id 15.20.8534.031; Mon, 17 Mar 2025
 11:01:44 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: Jesse Brandeburg <jbrandeb@kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "Brandeburg, Jesse" <jbrandeburg@cloudflare.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "kernel-team@cloudflare.com"
 <kernel-team@cloudflare.com>, "leon@kernel.org" <leon@kernel.org>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Ertman, David M"
 <david.m.ertman@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH intel-net v2] ice: fix reservation of
 resources for RDMA when disabled
Thread-Index: AQHbjsE6+hscqt2p30GQtLAKEFNfSLN3LDJQ
Date: Mon, 17 Mar 2025 11:01:44 +0000
Message-ID: <IA1PR11MB62416710DD666A1C278002D48BDF2@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250306175640.29565-1-jbrandeb@kernel.org>
In-Reply-To: <20250306175640.29565-1-jbrandeb@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|PH0PR11MB5063:EE_
x-ms-office365-filtering-correlation-id: 5fd89cc1-759c-4a77-c175-08dd65431ac5
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Z3tVAiE0h1bUaQdH2IxcLPvfghKyUBauACxIJynS6dSESLiz6QE1VofhPHKP?=
 =?us-ascii?Q?FpKpDsZD/LR0wXlFaa3AnVM1JIYCA8HtAn2lpNGRPqJenlcYtvaIrvMEQNdk?=
 =?us-ascii?Q?BMKZzfmfmyFLHXjfIc/uGaNVptwUCnF4F/eUynqhTVdmboITcGAZzPjZ8HAf?=
 =?us-ascii?Q?uhAkGuY/SUz6m7tGCFasHYlbQrkRD4ebktebEi3y4Qpwdm3YwRtDyYXYt/l8?=
 =?us-ascii?Q?rEbjEBgLn7ALq5UscnX85eq9u1FalkVIX3BoGe6/7IfNn7QONSJpXR41W2VI?=
 =?us-ascii?Q?JFId9rUb4mBk5MA73yfX5+nIL5afv1q74ys1L4m/5JIx9uEL+O0lKtOw8h1S?=
 =?us-ascii?Q?ob/AktoG8zO5+CJ9rc3w5cLCccYjVOrqJ+8wOVTiPn6mUlspNaM1cFPL5Qmv?=
 =?us-ascii?Q?c+JTZhtXhFfnyKghItqpdwOh+gTQj04q3Gsj9G3w6CPcpAYTukMxeqD9ied6?=
 =?us-ascii?Q?MRDGacdPta810kUCf5qFKBKMzDS6goEHBmWJiRBXVFL/NFDdn/M4NElgMwwf?=
 =?us-ascii?Q?EShIC66O05CDk/86B9ReL9eekLJ95IlzJirAMqr5JmaxF05LCWd0JOX9mClN?=
 =?us-ascii?Q?W4k/ZRXv13D7IbmqMpadfZkb3tgBUkd74npUbNu47oa4Elba1sdTWFQ/aWES?=
 =?us-ascii?Q?NeuJ/2CSTUmT6swjMI2hfd9dC6bKkwLjb8INln7GDDDV/l/aS4Y4Yo3zUryi?=
 =?us-ascii?Q?8+pmDklR3bOjz/2xUCDUCfucfNVrR2CQUeINzn12640Nfd9ux+mA1rjkbAYN?=
 =?us-ascii?Q?j61MKT6PUUFu2U1o1WgLHCfbRLL7tebQUxGoHvC2oTgkiXuAg9ShBTFAeNEz?=
 =?us-ascii?Q?o98NTO1Lp2x2TpEQBbxs8FNMk6U4yhFmbjPZ6Y4xkjomGS/v4HanLt2AtLRU?=
 =?us-ascii?Q?r+gWgmvkK5S9j4NPue0I8J6UMakNg2WL6eL1I0Wzw2+8A5lXibivKuHHwp2g?=
 =?us-ascii?Q?jgdEuCRki1yTT1/MGVD1rsvkoYTcAOAUYTWVrOgBY40wCWPZHKzVzALfJhiC?=
 =?us-ascii?Q?Th03ieFqcSqk7PbzQGDGEjuG49vbKF5R7+NXCHpSjL/nMVydRon6O61h3ycD?=
 =?us-ascii?Q?kMu5m1VNY5j4zZWc06XyyNAM4GS6DSYOvszV357nwpeEqT+/gAPII2xjNiQD?=
 =?us-ascii?Q?U5NTxJSW0lzCTH887yShS3QqJp2zzkDr7oro69UVvq86jgJmvkxJyT0eYXUv?=
 =?us-ascii?Q?XknI7/QaH1fEubCKXG4ocWhFoMP5iXu43Prlm4XETMHkbhzqU/tblkErtt27?=
 =?us-ascii?Q?wqWP2uaJS9+p3miq7ChYYx+KFxNtM10hZU+9vcSO7szEK7Q4jb46NIAtOzZl?=
 =?us-ascii?Q?hk2pXsqSpo3cndi0hFCxmfApiNM+erg0nfgAdkrYm3q+6z02+NYdmM4jzcnH?=
 =?us-ascii?Q?Xni4zzz02VtvXIz8rNfeFQlmvUDbR9kkh/IIrnkMLoysodZDaAFaSXNk0baH?=
 =?us-ascii?Q?MCnzaUKe66OBZ/gtEfrwv4+0WmY2jQZS?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hJTiPVnLccappCGcruG4YBF7d0XW00FaihL6Y4xsBj4vVsHorevbxI1AGbD7?=
 =?us-ascii?Q?2ReWnBvn1zDEgMAmJ1I+rmz9s+lP9QTDf7EmJJB/Cb12uwOsNOWWpbDgbW6d?=
 =?us-ascii?Q?siAq+wEDfvAtxnGvDVB3Lre1siZw0pc6TBnyh93uf5KrAOtbvNqqCAe9B1RN?=
 =?us-ascii?Q?70cDpaMokLWtpUrRoGPU6oOH/sW/sZMnUM1T55qEPRm+nuPB+KeR+GhkrjOA?=
 =?us-ascii?Q?x2o1W+6SCY3M+bjJCoezqQtm+YIA+RbcI2dUo9RgVGl1u2J+w5R/kybLBicB?=
 =?us-ascii?Q?dCjNzmW/ldwDW2dgfMiCZdtcOJzbJBxodoKQr6BykTx45x5OwhrzAmI1fhnt?=
 =?us-ascii?Q?Pc9R4QPX55qSghtsjATdiQqvnHIptv5jfjaB7a9LWL/Z/G0vb5ninoZjwlOC?=
 =?us-ascii?Q?D2VD/b/QQmcLZWZoC+qHNQwOfLfY5po3Yu7ymygn6x11AnKnMY78wKSt/xp1?=
 =?us-ascii?Q?l2DVQ6PH7+bq3PbAzxDA/M9dlDCM9MemgD6UUlf3dU8W0x3r58Pjt/TGIUUq?=
 =?us-ascii?Q?YglfwWCsiCh2BaFgniEqOU4vU92+Z/rRprTRsoWYTrkbgc1M3eWE2BakmidD?=
 =?us-ascii?Q?J6i7B1uscLbnjxHsPOeLxvUlIPhKSN5eYNaALCEX9ER+RqKSDj555WWQ18ik?=
 =?us-ascii?Q?f1G8kl4jRxBd33R7hm8Dwv4ocIQwTAN0zpxsdc/A/f9FVcgwQXqzQ/hVQoMJ?=
 =?us-ascii?Q?on/h55PnTE2/d2cmbCMAsDypBKwU5QhEB1OigEi0wRQ2MuF1PyH8hsqcaD13?=
 =?us-ascii?Q?1ZBdzxEeoFmpFXiqaLvIuNRyitRLYFt+Rth5t9o4c9Dz4W4WN+c6PEmm1ued?=
 =?us-ascii?Q?DLOazPraeUXyGFTzKO6qQgkLqwekCFVTmJg6wNmfrjpwyowKedgqhQ0t+4Ew?=
 =?us-ascii?Q?bRQMRj69SRWdsBiCvbrsAIg2LnDYEkjQ3wk01+PSXsh6w8lE4SGeZOzIUyJl?=
 =?us-ascii?Q?dN0Ov4zY8JDAdLCAa8vUymXPA/BnVm9+OAENMyBiZtSWdvxd/L4iS41Z001q?=
 =?us-ascii?Q?bnCtkxHqaQ3QKSxV9sZfHEOUheXy8oVaZOws67dClnImTCmc1kwxeMFwr6bk?=
 =?us-ascii?Q?Z49qlOjy58N2Z7tMcPsECRZFB1cN2HxQTNB4hKF8Wi/DbvTocaQI93HVfO+j?=
 =?us-ascii?Q?jjIjgY3mUY/iFTRBNKPl5afRZ7skWxXpLI8a0aB8+fdAJK14Kp4yV+dtfWKf?=
 =?us-ascii?Q?nV3RcNekCJRMHnXiRDCnhIxknbNMAxF8vl4/cGejLiK8QhorxFNEVhrV0UZl?=
 =?us-ascii?Q?GaFhTX4J0gf9GniiHy/dQMOTad2yQ5/FstEhxPnTPsnS4fCLgZ6dVsr+Phwt?=
 =?us-ascii?Q?mH02hgiY2/bPaDzD4eRfXzdsHsBZ1gLUHJthFjLsZYN6+ns+h/zoPcG6la6Q?=
 =?us-ascii?Q?O+wMumo12irvdeKBW5k77Uu1j7w0vff5z4zO1ULvDL1iEBvYbtFxosvyb4FF?=
 =?us-ascii?Q?+6lNamNeQ/QKQAtsVGK/jbcUFEtqi3AZqg1mwim67E6g7ZYne7SUqjUhQ48b?=
 =?us-ascii?Q?UNSr3rwqdJ6m6YdMUbHfguEygmorItGJiCx5YcXgJczB1zpHcT4D+LldM0AZ?=
 =?us-ascii?Q?/+l9p5BIl1BWlZVs+M6wMqXPzTIGpV5JwruVaAa3?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fd89cc1-759c-4a77-c175-08dd65431ac5
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2025 11:01:44.2748 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ynn3cJfqZcB5LGVfjZ4BSf0PNW+e02tm0p89dnoItFsO4x3uMpwY+JSu6WhP4Fsy5yskiSWdy0nMKp1+GFM8cw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5063
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742209316; x=1773745316;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fUmy9QvYK4rmYcM6ErHEbnxFbyFYSr1ef0M47lNMI0U=;
 b=UEYZ9jpsoChxDBKVXHymwtzJly4UouHx6aZfFkWwv8IaW8O43bC2mGUK
 NJTbrCPA/uVy09wmZa4BAX88sClhetLI/BQiq9/N+3gj0AvGGlX7YeItG
 V6O1Aa+TDjyUIMzyw8xbH0X/tHHai6rClyfThJWI/yD4/eerZvlLnHMIH
 JPSYT59O2SY9CzsPoBInGIP8NI4Z/QQ19cqs3rq+zuR/dOzBI4uWCK/BC
 qN0ZpcH67zI5uzBJvJkoEJoDsA+zXGKXY4jxzfwM4FtY59jXrkybyvwOx
 1UOnonFvu1x/UWyevNej+Wu3uppk9+abpQdtw99rxWSpl1DWKvLdTZ5cD
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UEYZ9jps
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH intel-net v2] ice: fix reservation of
 resources for RDMA when disabled
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of J=
esse Brandeburg
> Sent: 06 March 2025 23:27
> To: intel-wired-lan@lists.osuosl.org
> Cc: Brandeburg, Jesse <jbrandeburg@cloudflare.com>; netdev@vger.kernel.or=
g; kernel-team@cloudflare.com; jbrandeb@kernel.org; leon@kernel.org; Kitsze=
l, Przemyslaw <przemyslaw.kitszel@intel.com>; Ertman, David M <david.m.ertm=
an@intel.com>
> Subject: [Intel-wired-lan] [PATCH intel-net v2] ice: fix reservation of r=
esources for RDMA when disabled
>
> From: Jesse Brandeburg <jbrandeburg@cloudflare.com>
>
> If the CONFIG_INFINIBAND_IRDMA symbol is not enabled as a module or a bui=
lt-in, then don't let the driver reserve resources for RDMA. The result of =
this change is a large savings in resources for older kernels, and a cleane=
r driver configuration for the IRDMA=3Dn case for old and new kernels.
>
> Implement this by avoiding enabling the RDMA capability when scanning har=
dware capabilities.
>
> Note: Loading the out-of-tree irdma driver in connection to the in-kernel=
 ice driver, is not supported, and should not be attempted, especially when=
 disabling IRDMA in the kernel config.
>
> Fixes: d25a0fc41c1f ("ice: Initialize RDMA support")
> Signed-off-by: Jesse Brandeburg <jbrandeburg@cloudflare.com>
> Acked-by: Dave Ertman <david.m.ertman@intel.com>
> ---
> v2: resend with acks, add note about oot irdma (Leon), reword commit mess=
age
> v1: https://lore.kernel.org/netdev/20241114000105.703740-1-jbrandeb@kerne=
l.org/
> ---
> drivers/net/ethernet/intel/ice/ice_common.c | 3 ++-
> 1 file changed, 2 insertions(+), 1 deletion(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
