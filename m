Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 893C3B449AE
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Sep 2025 00:34:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 45FC44080C;
	Thu,  4 Sep 2025 22:34:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nD9wYHv8gVKE; Thu,  4 Sep 2025 22:34:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 700DF40819
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757025254;
	bh=Im/cE28BjMRa5SxARrL6oFXPZC4UcyiecRYSxdwkg/U=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wpk6bDdqeXR4kZZPZ8enkreFxpcGxDUegUTBoyfZZ+0GKWEIsqADxZiJURkbWnoFL
	 Cj4UZJNFGhc7mou4nTVkbKp75ScMXXISmloIDGTsRSX7rE46hTzkbPSlgnw8Othxja
	 Ppi20rRnRjyWoYSjHnSS1BW6oWJ6da4TA1p2IVPb42J4IuIK6v9cs5L5HpjJgIptTl
	 FquVcSujSfbiEWWnSvUVud6HisS7nOydUlE7sG5+Nc7X/7GS5qBPMEOsZPvbqmDUM4
	 t7np8olv91bLRM6EtXh5nosPMp+LXExMdxfXOFbwQm6w3T3CbsvXRkkajVhRW8UvUI
	 iFzOnsYLW/0eg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 700DF40819;
	Thu,  4 Sep 2025 22:34:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 94224111
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 22:34:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 79CBB80F08
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 22:34:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hnu30xY2WER1 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Sep 2025 22:34:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 678B680EEA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 678B680EEA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 678B680EEA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 22:34:07 +0000 (UTC)
X-CSE-ConnectionGUID: 64U0m/DWS1mQiMnYf5QD2g==
X-CSE-MsgGUID: vJ1X29QnRiimxyFi8B1nIw==
X-IronPort-AV: E=McAfee;i="6800,10657,11543"; a="63019376"
X-IronPort-AV: E=Sophos;i="6.18,239,1751266800"; d="scan'208";a="63019376"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 15:34:07 -0700
X-CSE-ConnectionGUID: YGjPJ40eSG2qJoM/lNb+Yw==
X-CSE-MsgGUID: qhxAQHtMS1GjEzOV5weHLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,239,1751266800"; d="scan'208";a="176360116"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 15:34:03 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 15:34:01 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 4 Sep 2025 15:34:01 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.57)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 15:34:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tJkK4VbF54vItp3vff8xZqYptGE7pjKtqYIG2I6trip1HPUbALgn+/e7ctGw6XBDb8C3jDx4NQgkzWxvIf7oPiGj1GB5jPtgbaypGd7+haXYF3R6I/B3wJA08YgSSjnU7KOi47VHgVAXtv4vuflJWWexN6uyciiJDZcSgKoDycJWAkFKBEg2tpYAXOND3ewSMbJ+zG+XBCTKZZEuaZxwjJCaV+FHkr8Te9z53dS4hMUm7fZT9QhTFP1BpHXPJ+961Gi6/x1XpFfaXcBil8P2SY45LfGgnZgaaILxlfVHCuFlgykJEJK494r0J7DkC1aD5y4EtgA5gmMqeeqRTsrh2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Im/cE28BjMRa5SxARrL6oFXPZC4UcyiecRYSxdwkg/U=;
 b=YMPlQdTj6P/JOpqoRw0W+98MEVBNdh5JfzYYDcUZXyPouJUI5GN6ehpjg2+uc6wT7dMWXwYd7zn4cJ50KnQBlj3OaBBzXv5gVRInJiP8crT8mjsumQefufdzYxw/BPo3iXrjRg7pO8SVRHA5eVfU9nSOs//OfCUDkQ+kuBnek8CNPVj4fHjXSBTpprItqHMwrn3LZJzqqf7Fm/XHTh+XcJ6EMuJwHCYaAwKxG8fOhgO73bSZ8y6IpJO+K0ngkR8HUdp9b4EiLoICFFbp+2GnNXh+rb2MbS8Dhi3e0Yn9lyLQ2E0jadq8YQ6fsh7OTBwRxAc8kMk6zL7F3cH23LHaeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by MW3PR11MB4635.namprd11.prod.outlook.com (2603:10b6:303:2c::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.17; Thu, 4 Sep
 2025 22:33:59 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.9073.026; Thu, 4 Sep 2025
 22:33:58 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Chittim, Madhu" <madhu.chittim@intel.com>, "Linga, Pavan Kumar"
 <pavan.kumar.linga@intel.com>, "Nadezhdin, Anton" <anton.nadezhdin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v7 4/9] idpf: move queue
 resources to idpf_q_vec_rsrc structure
Thread-Index: AQHcE35g7SRms+bHHE+B4Fqe7SosBbSDsPDw
Date: Thu, 4 Sep 2025 22:33:57 +0000
Message-ID: <SJ1PR11MB6297028DED4D3849402A493F9B00A@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250822063215.3911-1-pavan.kumar.linga@intel.com>
 <20250822063215.3911-5-pavan.kumar.linga@intel.com>
In-Reply-To: <20250822063215.3911-5-pavan.kumar.linga@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|MW3PR11MB4635:EE_
x-ms-office365-filtering-correlation-id: 764235f9-c4ee-40a1-ceb0-08ddec032372
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?ZmHSJI317BTJluLTz2XmNcHAhFaA5nWi8NBPpIc/zN7bTWhX3/hEetlS92Ig?=
 =?us-ascii?Q?bZB/9A3FgBc09XPbaGFJQTaDVYdxQfxD+lKNESy4U7vAXpOp5UCxYBglAdUq?=
 =?us-ascii?Q?3LlPPhXiTapnCK+BoPu/ueq8Sr3dYzCLM5SuBLFl3HXJLXkBLB5VSzoxrOit?=
 =?us-ascii?Q?Bj5TkSanLZ6RDEbed9Zuf63oJQ+W6jhCoOy/4iCYRvvuH193Cg6KV4b/kG6a?=
 =?us-ascii?Q?CqwRa8ztxgs/ihm2zGsbrwL1WJZbbQkGYqC2rl0KRur4ElrB+OpMIrWoiZdO?=
 =?us-ascii?Q?+MfpIpYUpa6hZW8iZwJNQTqVgGpmkxTl7VFe/aQwLefTmn81qBCobMrHVqnN?=
 =?us-ascii?Q?qpMp1Ob7nnU280yeGuFNqDZQDsC2JkGKKIpgTa6NHsKNCFNWtgYxy29cEFxM?=
 =?us-ascii?Q?oSBXhH9nl12FI0MNjhb4O/FD8mpVuX+4A1ZL5bCvbYz6sbrchrkr3T7KOJF3?=
 =?us-ascii?Q?dyAxzKo1X4fQOl7JxBr2YNFrxwewqn2/kytAfATjrRxyg8wSo80VSpG0jZOm?=
 =?us-ascii?Q?3hyKe5fu3NsJgd2pOzCSy+PVZt/IbXJ8GDlZq4Mwmh0Wfq01tvUuYENuSMBm?=
 =?us-ascii?Q?YFbYGAMJNSCP4XXL1EKSqUlgpzcqhjNPqWoZxoN9ghuxIPO9mUVleKY/6kVW?=
 =?us-ascii?Q?/+3kfANqtC0GI1o6LGFGhyohff/q9vDcvr3lncndMawYeH98RG89nhyhC2WB?=
 =?us-ascii?Q?VPIpkPFB56uA7GItd8xjjlfoMdYeEWImURaAJCq6WPmPtw6AN9IZj6hASn+V?=
 =?us-ascii?Q?G66/lOX06x+Q9NpMUYSNa+RwURpOrAu/gARcnzP6rKXUGysRmIGGnRTV9XM+?=
 =?us-ascii?Q?/eqHGmpVya/tjzDYGhn6uLA4WZ+YlBL6RnNXBkB88cQNyx4yaHF86OiGUiQP?=
 =?us-ascii?Q?MXtppZVy4fe+glDjPDinaRg2OPDfZcP7XZYSQJPWKDogZ/3A+77dmOHovQIy?=
 =?us-ascii?Q?Gm/r3kQZIFV7vinGw7bdn6pgkJewdYYzEKigAuXKQJdgYTuvyIuei4UwZpsj?=
 =?us-ascii?Q?/jXGXDwQkEZXwkG8LhsSAqGGsTt6lak3iiZvyEMXyoLLE53i/+6rwAOsd7Jn?=
 =?us-ascii?Q?kNl+uSrzZ5CzS6CenSOdsaodyjzQsWV8CHvt8ib2em2LoOSjIyuRnakooXDs?=
 =?us-ascii?Q?SSTqeH0nJEkm9mPoN2JZggzHA97fzL1NGoa8kd02K5V/zaG/ylsS2ZbJgN6G?=
 =?us-ascii?Q?FFs1LKbeDRj7B2hKeyDlEc3WDXnpcHUmP9PS799Pp/x+0YBLcOVknswbJ/Y/?=
 =?us-ascii?Q?CgleNnMWirAszt799Nj0U6ByLJa0Rq7VZ5NqkX5pmZcLZ0+dbgmUwMBV7dVf?=
 =?us-ascii?Q?pLnDi2t9HCRJBGbeVTz8nnn/IpbfNyvSW2ZJ/I2BDweKr43CinDuwOTQd8tV?=
 =?us-ascii?Q?75Os0DZ3AdemwrSZAUf16SYLwcXjRC6zGugU1N5rfkTWa1/vci9KyCjdTHEy?=
 =?us-ascii?Q?3Dsj0L/pGQ+ZlHrkJsb7NKZ3Gu1eqGiwhkkmDhRovBSHMT9crw0N4Q=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?DrN+COWTs+YIUeQszUTknj8vSEm0MeLShc+roYh9k9/iEotRVYoc+aoxpzuC?=
 =?us-ascii?Q?mTL1OpwT/SMQ0Hvwo05PwANrsrLjC+d6//hTdNKEi2ENiD7I030xbpVYDLkD?=
 =?us-ascii?Q?NhT7uQ2yoHjU1gycLrpFBTSEkSu1j055I1IyxNMdt8rYa56VNworrRdnW16W?=
 =?us-ascii?Q?0KEV2kKMS2w+lYHa9TcyfHjb5a3msCSDqE4SmFhyG1lKseJd0Fja/mobKkfA?=
 =?us-ascii?Q?vmD+rA2Oh6UmTSjNrT15+yeG3xKaubPZbpWYApfIshQ6ERugtc3VITUPCH0+?=
 =?us-ascii?Q?PyBmp1/BD/hAeN1PYSrx1xmY0EXSwJziXI1IyQ/aDPAaVOChTX3Wq4qI26A9?=
 =?us-ascii?Q?128B8FBU4PXeOck+7uXxP/FVUNZRMPh+s3Y652SaYthaF/VPYz9rjlq9s6X+?=
 =?us-ascii?Q?pocZbPNHQRk0Z0HDMyiflpvpw2ZbiKL08oTrHnAv9XqJ/CRtAGlzMUAm14HH?=
 =?us-ascii?Q?ie8UsLwUg4i2l8ZTTg3OfwZ6fQ2qnSmEMxXR/YFAi3XoiafT+DcvOEOjUx4V?=
 =?us-ascii?Q?Zrm+m1Vqrsu8Uy2yNJUfmqLshPd6TfytOAUGcRnmJg3QQWEE+nKDk+LnNhJh?=
 =?us-ascii?Q?fkOKlCiR7XHYZuX9HZdWWefbZmXeFVjEpTKNGuOZOtauU2LqT17AjsP+qARj?=
 =?us-ascii?Q?sRXl2olZJLRmVQUNUGwhumEZB8DuyDx/36XWmjZgsnxqmMrwIAAdqC5tJULh?=
 =?us-ascii?Q?SjV9HaOiTKWzluvPCYGfEdXx1s/w/nhZyWAqp1aaA4zppdVmPOv+uh4A2Z2l?=
 =?us-ascii?Q?MSlN6YWL7o0QG9drOwcRkrJJg5wdrN4EHYjHJw91ItWIZO1b07k9PNDJek9l?=
 =?us-ascii?Q?8gKMTai47doUisynDj89sxi+oElW4fhv+3fN/cjy3oJ25uFIWdgj4fs9HQld?=
 =?us-ascii?Q?nhG1D/T8LCJBI/QoVBioodr3HANZH6THT0sWD3Yp8U36vQUKxCbyqcWha3JP?=
 =?us-ascii?Q?dd6e9d1wIcmrC+9GIvwCOpZRiRaGUOiIfzXghXCNFK/gdu2u6dNyEUxyiVy6?=
 =?us-ascii?Q?BVAvExiOIFBpK/0BCgcyknfShGuBhk3vyRDntrSAhAvRc43VNvADPNe8h2jG?=
 =?us-ascii?Q?UX1wenG6igWZG1NNO9hzFpzsOk1+vwGmte/GsvSKgzKMvY+q3RThemvSYkW+?=
 =?us-ascii?Q?9ooR5o+3C1D7Z2qM9jrwO5kAQeNU/e00hON3aBI4+mDfxYd28ZNAsJ/i93B8?=
 =?us-ascii?Q?7YipaiJ0uGNV7CGsN7sJCio8Ieh+vuasR8UwTCVpeIAxa8Trh2t7jyKVnn2w?=
 =?us-ascii?Q?o8NUz2YI/aMXut6zslK/qHfIJpS53QeMqY1RVArdi1ky6aWof7inwTd69ccH?=
 =?us-ascii?Q?cXa0z8KYc6JQ1+aQm4XArJUeNS5lcb/MHpIMuhcrzHdJvECsQih0WwSH2nlK?=
 =?us-ascii?Q?j14SCzCMEshOrVpDG546mb1uZLTSatwDpUvdSYzrO+Rv8zr+WMDLplsuh8sg?=
 =?us-ascii?Q?PBykidACdylpmjRpKbJYSa7U9+B4TCHA/daQ9rJ27k7GRvsv39fjI5nsAPwK?=
 =?us-ascii?Q?ueiMZmuveVTAPPmvTJEXLE/4y0qCiluVc4AAIDfGEMU1VrhZKttIMcUaSU3S?=
 =?us-ascii?Q?HJ3X4BvZYWmNoBYKg9V2o68j8wgSNQzcdilJQ1jI?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 764235f9-c4ee-40a1-ceb0-08ddec032372
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2025 22:33:58.0123 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FypFM+mIX4gX6rW/yW7e3c5ofKkwbgW7Aw7yMZkSFpVr3m+Arfyz8H5TppQsg2684woW8LBuZi5fYK+R/KROvg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4635
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757025251; x=1788561251;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Im/cE28BjMRa5SxARrL6oFXPZC4UcyiecRYSxdwkg/U=;
 b=av8aHNgmPPDuDSFcI7TP1DwVFJOdFUxXwqAxuwUo7youz3MElHxomwco
 LyesaYspGchUdDirBjPKWe9e4oSWukKG30auDYyv3Iip9FXM1AqxlOmG0
 Yfe0Ulxv/ZemZDFbZqdaPIQKcpmPoFtroMFa1WvX5aGu0LJxlU5KgaAB6
 9PnNH0GqJoU9qZxOSjNhVo/p6uFyE5KUV0740LjZM4T1cyP/OMJflQTGD
 rE2ZaYXhl/fgC015BIwEoAB8K5522/0O1WTkh+yexSylzR09vtjUHRJqa
 IWixCS7BHHmgIfz3NSEMfmngpWGZNSye5Nd54rZM+W/UBURZps0nUpVnw
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=av8aHNgm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v7 4/9] idpf: move queue
 resources to idpf_q_vec_rsrc structure
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
> Pavan Kumar Linga
> Sent: Thursday, August 21, 2025 11:32 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Chittim, Madhu <madhu.chittim@intel.com>; Linga, Pavan Kumar
> <pavan.kumar.linga@intel.com>; Nadezhdin, Anton
> <anton.nadezhdin@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v7 4/9] idpf: move queue
> resources to idpf_q_vec_rsrc structure
>=20
> Move both TX and RX queue resources to the newly introduced
> idpf_q_vec_rsrc structure.
>=20
> While at it, declare the loop iterator in loop and use the correct type.
>=20
> Reviewed-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> ---
> 2.43.0

Tested-by: Samuel Salin <Samuel.salin@intel.com>
