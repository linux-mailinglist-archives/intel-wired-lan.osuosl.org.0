Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D7FCEB430CE
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Sep 2025 06:08:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 77E3284C2F;
	Thu,  4 Sep 2025 04:08:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yJAcvMyiH-pX; Thu,  4 Sep 2025 04:08:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D50B184C39
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756958923;
	bh=fTEPSbN2/LFWud8j2UL8LQMD1ECiRCGR7H6YMShqP8Q=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rtE/pCeGKGQjEi3T3YV+ta2OIGZocql+/d8ij+lM7ljdXscgi41oKYsyIVj8W8oEE
	 Lgc/C2eInBowl1zN2MybWIgu7pHFW7U0s6ktKZXg1cO/Dv5px/k3wvARdQqYLaQHCW
	 uAMKJpes7FLpMmRo3P84euBg42Hkpz4eTwLGcIhf5PjD+gjmnbil1CMzveQY5weEYh
	 y/44OrD0HFkATdlBVxb1ed5I6ngFEfPH77fdL1QSergzCA/MXMDkvJF5U0pFffdmks
	 sl3sB1GJ4m1rw2b2WRL09paXfK1Hq3gbF4LKp64GDo0cLuRpOym0s7DGBLhGLXIzCz
	 RFln9gqZknN8Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D50B184C39;
	Thu,  4 Sep 2025 04:08:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id D0811106
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 04:08:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B73B6423D7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 04:08:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HMk6ZXxlQirW for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Sep 2025 04:08:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 13F634152B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 13F634152B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 13F634152B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 04:08:40 +0000 (UTC)
X-CSE-ConnectionGUID: bEh0sQHwTlKeEw/1o9rmlg==
X-CSE-MsgGUID: bHPOIlAcTne1XcX/8ZiRaw==
X-IronPort-AV: E=McAfee;i="6800,10657,11542"; a="61921176"
X-IronPort-AV: E=Sophos;i="6.18,237,1751266800"; d="scan'208";a="61921176"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 21:08:41 -0700
X-CSE-ConnectionGUID: mAtk/0sOS4a/EjOhHiGABQ==
X-CSE-MsgGUID: VgWoA1E+Rves1Bf9ZIsjFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,237,1751266800"; d="scan'208";a="208965601"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 21:08:41 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 21:08:40 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 3 Sep 2025 21:08:40 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.48) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 21:08:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uRwH9tefOeePSGW+Dvx11JByERDuwd4zS6HP9Q/nKGItGNBMK4AHAgsWBHmsLaEGUWhi66Z3NBrJxVMQnLCdfHXhDQhGCgoKIAEHgZjqfN9TkBqDUvbt/v9GULYzPASMD5AmTPHt4l78Yt80tvoCr8yaB9WVvVQN/+/koHTlBg0YKJtVdouVeHfMzg1BPAwNzjHNurXi/aaWhe+VubFLSuZWnu61hxZ7HEqwPcFVHBmS9V0nJ7w0OFdgMQ13Zb1sWIsqz2mga9Y+aGnub8NpqpVLKJ4Wr6zllB75VJ+twYX5f48vl0B8rNp3caz/wIKAobnpcgI4rA8lnLaKfvCQmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fTEPSbN2/LFWud8j2UL8LQMD1ECiRCGR7H6YMShqP8Q=;
 b=OyAsaR9n+oY9+0oCSf+sEyJ/cVI2Enq6dQV2rhNQVbRR5QWYFJEyvRXPUHXH1v6AoMiSCuQH3NNB0cB5oIz3+T0BMLYYNpJvuciFb+VJ7yW5AihHO9OXmcyf5JktL1EopkeMAOFS7N2thIE6h9Dqz3tOfE2SLb9cqYXW7MJ9lop6LQfvDz8uTC74oRWcoK1R5ImpgYqb2KrVf9KaiHw3bRMvzCqlwhMLPga8d/Y8rIYsAubLi+WUFVFZgeqiAE8GPWaYEMmfC/JHBeUgknwx07Cp6LCHa/Uu8jnebqfUYKoT+oB/QdPQbv7nlJ43/BAJ8mrrMj8aWgeATfqoGIgFrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by LV1PR11MB8792.namprd11.prod.outlook.com (2603:10b6:408:2b5::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.27; Thu, 4 Sep
 2025 04:08:37 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9094.016; Thu, 4 Sep 2025
 04:08:36 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "dawid.osuchowski@linux.intel.com"
 <dawid.osuchowski@linux.intel.com>, "horms@kernel.org" <horms@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 12/15] ice: prepare for
 moving file to libie
Thread-Index: AQHcC0VWd3/MxGoL1ki99exKBgL81LSBDdMA
Date: Thu, 4 Sep 2025 04:08:36 +0000
Message-ID: <IA1PR11MB6241C9DB565D5A4CC0D9477A8B00A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250812042337.1356907-1-michal.swiatkowski@linux.intel.com>
 <20250812042337.1356907-13-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20250812042337.1356907-13-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|LV1PR11MB8792:EE_
x-ms-office365-filtering-correlation-id: 908ce9f9-fd03-4930-df9d-08ddeb68b8cb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?MEsM0QNubaEegLAEhMs4+5DiyoS8Rcktx+K//MtDlV+QuH4kQFOt3M7EcML4?=
 =?us-ascii?Q?JtmEwRlzb5JxrxLQqwDrDjHP7PdVg+Qjqvp+eGYi9tCT3gsUUhWeOKXIcZLo?=
 =?us-ascii?Q?qwgx0QXcFYjjvbpCI8i4RmvRsU9Y4Qq/GT4ewXXGb6DL7n9jpeFZdySNy1ho?=
 =?us-ascii?Q?YckNJszqoq6tAPfC6XT98Ff6PbPYjHb3/2ATAZJhWDuyrORclRWuPNyspOX2?=
 =?us-ascii?Q?9OWMyY7aZpVFg40q/sHxmGZ2W664UIzFzPMm8csh387OgHJu/FI2ypBDzFP/?=
 =?us-ascii?Q?fmqNloWKdBJx6YUrstWOciA1R4xb1qCLjxFo1s2DViH6MIhluwbUeWzwUIKP?=
 =?us-ascii?Q?3CYI6LI3dvo/haUaPMRoQrkR5Uaa2WjUtV9FfgqSJWTSIlypRBxk+VnRS95u?=
 =?us-ascii?Q?XQI2QZZW323f1KEDpeEzb5qcEkOana1j93nT1J0P8+0lVyQQHXjXttNbhj6o?=
 =?us-ascii?Q?RETf7e6qfY4lWthFNvMA7Rs1EIOhzk/7Met1aLdxZcruoTDfAaBsHnmLBqjG?=
 =?us-ascii?Q?B1UrhT9xKo+pkoyLEzlH8tcpXu93Jjl4Gy+M4dQ275ycK6Z7p5DBzmdTi/nB?=
 =?us-ascii?Q?7IvwqXCcWLRR5rg9Ikaykpfifz0sqKf6spW7CElyTL9FOpMeya69AjRqQZ6g?=
 =?us-ascii?Q?0O/IihGj0T8mYObWxnw/k73whA1AEd5bd+Q/PL0rOyoK+GdJS2RUH+UpB5Ri?=
 =?us-ascii?Q?zB3YFgIVOFDEplcYuQrmZZyzlWAZBHr40uW9zgL2v010ykk7NPa4cC0jXwWJ?=
 =?us-ascii?Q?QFxLNj1EXWIIEkAyzaDSX3hJxmTBvI4p591D68Ch25dhddfZwg0CAruCMl8r?=
 =?us-ascii?Q?PmZLPRNWtz07B3uMYjUilu189/vOlzd+mDeorgSOtKmuLgW8Y27A4niX18Yy?=
 =?us-ascii?Q?YC6H0pIhuRCJpwna1J6I/WM7eJilWPWhr2KL0R2/0ItK2VM5v5n6T270J1nZ?=
 =?us-ascii?Q?/7t7sHnKB8VJANczz0U+7cRlzPYyFEnXoBVcbo9lCiW/p/pOWLaI+cWiJxU4?=
 =?us-ascii?Q?igx0488wDz1ci27zno//3YaVASBQFJj8m0TVjgHDQO1LAh9aRJzxdtYalP1r?=
 =?us-ascii?Q?k7covvsf9RaTd7yGBOpK6C3qCPV4KXAfg2Uwh+EI3IkpiqhoPIDJDNsU5fEv?=
 =?us-ascii?Q?WLw6QOhsazGX8nDvTC0xpEAldgQHu+IsE5jVFcf75Qc3jhSnr8kDLrGzVBnK?=
 =?us-ascii?Q?Zp2QGz9jKLfN+3DT2inWDh9o/Altz2edR1loV6v9rWv3OfWNlsR+OMAFBCSO?=
 =?us-ascii?Q?2hGdEKDdA/0IlomfoHvy/huvZ29ewsKN5znLIIj+BtwDcv5tR3M8QWekF7wF?=
 =?us-ascii?Q?AfJBk1hws5+DABzjJML2NnMuATwMrP6VUeQi8R9fuN2niYd8D8UTtq4/ZA8h?=
 =?us-ascii?Q?CP6MYnJRa5zE39b5+eySZ5H1QxiazGssWDXldOq82a4k1nhiqvcoz5VAFyq2?=
 =?us-ascii?Q?Tgwt3g1bVfrhCucHERMVk2pWFEWquo720WJ7ZOuwNg2ttmzpo6RZDg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?EPDhHeIeaWv65Kdwfal/EQd5CtNRxvEHt3JvviJo8zYEajvVW1f3oERTvJgg?=
 =?us-ascii?Q?5/0nClO5Iu2uGRyOX9J4PgzxxsQjEuemHBTvJ+9y544jLNzeWLkVTwYxe9be?=
 =?us-ascii?Q?vIGvG3/37re/KqRIy6scm2N7vkAo7ixyESbfSDOYCmXwY4mSawfxfSpz6KBt?=
 =?us-ascii?Q?Mgastb+cjWB5Tp2KvaCT44vBcQbEGJfogrnOrjy+x7EcfLv8gkuMzOzsUUWe?=
 =?us-ascii?Q?KZsgTvE/GeDT2kGubg5lfmhTg5NCKFl8Kqn9tfC2Q1W/L/Mt3SPkTbUUlBRZ?=
 =?us-ascii?Q?DRJJlqdteaRF9xjqcJTDghZvVaYFJyGvJVOU4cOaTboYOmiW9rfwcNTgNY0Z?=
 =?us-ascii?Q?TRpoJUy7jjgH4wuHTl0ziiwAuLAfy2UXDoSfkNH2ftfWK+00ZkhSy65+0xNd?=
 =?us-ascii?Q?sxqgoMLHKHL7jH5hBpuylR6yHO9SuJtlriFIvISDP4mVIDlhf/+ow6F0kKn0?=
 =?us-ascii?Q?9jqC6oyRyR24FhOGuKtHGaVcjAP08SvtVM/tAgRcIM/wB5yCFg0+ScW3nESs?=
 =?us-ascii?Q?Ml/jc9JVRVFMrjImQOpa5GQ2Vm+gv4XmgnpaW/GzAJrDtXpOfI+3vkTuOSnn?=
 =?us-ascii?Q?FVx06dzznaPpTry1nOwrkf6tQV0i6uFl+x4ClChoCgX8xFwVL31Mn8qnW3mW?=
 =?us-ascii?Q?Slt6tKmSda5ntYIMWBubxm0bZ32+mYGtlVQQzqVstaZqN3aVOcI2GZHXyBqK?=
 =?us-ascii?Q?fnG6qXEWKC5diMuXiUDXLU8IpKaUURb+LOCqLUkdse3xIdoQuK9pfNpvzH3d?=
 =?us-ascii?Q?9aaEz/gzwq2ON+ZE7vTds8nuNztbWKQpYqOv1YKNqGE7dbvQEz0QWU/wWowN?=
 =?us-ascii?Q?PCNnkroMxhra8Hxa320BHmJ1UEIAXsEJ7COUuGf0baxGvufSXOJxrmKEMmCJ?=
 =?us-ascii?Q?UowiYLMlaQXBn+D7Cwn0GgqKTz4bwM03gMo/Ud4dVlDB/1WV7fS8558fdQnz?=
 =?us-ascii?Q?3uA1jwvPsf8I2YBTxHqrkWwod07YmFmim83m3Yxw9gwTj+Cw4qaZWO0lkVE2?=
 =?us-ascii?Q?Fcnf7YvBzOzKaC733PNpjgvBwpCB3WpcpNhMrTuogGMqhXXrVSUQpnJcNUjq?=
 =?us-ascii?Q?UEDyFzSilgQlKQ/N+ZDhjKqk7nHnp8Wcll4KwZxtyBIK2BN1ZjJGezgEIptx?=
 =?us-ascii?Q?lkDrfk3X92YIODUgIbWcJB0Ztmfv3p8RqXWlknn2OgkAXRSviv09Jy8ZPQwY?=
 =?us-ascii?Q?yeCE+6d6rtfum2PJIJj9aR+GvVSeT/Lz3yGIoNHumW3rzddOH+wcEB3S8eQG?=
 =?us-ascii?Q?cm1sLfeVJHlJ7b/ZpNMLS+tlE0Jp0+jcXCAwlne/tsJPbDFbkdlFH751oYHT?=
 =?us-ascii?Q?Khd+wJwypU6E8oToPogfHllmfWdvbT30fzrWYNtqDyoBrA/3+5FyD4zmyWM9?=
 =?us-ascii?Q?wRW0yiPx9HdXwNsGywnNxTTl9bhfj/099CbFJF8eAqnXWt42EiK2fHBVH3ji?=
 =?us-ascii?Q?ZrZoKnlAkf458k4jv4f46FRJ7BRWz0SwwTW/NZzNzqaAsP1cCB23ZqS6EcA7?=
 =?us-ascii?Q?B9JbdxyZYzsuNo7583OFgDUcWrFM6RGUl/ni6+dSIxkB3IwhsSUosNGzvRLZ?=
 =?us-ascii?Q?ADPbAqQqpETly2zytWtr6Vkhj+vVRtPmYC17OHM4?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 908ce9f9-fd03-4930-df9d-08ddeb68b8cb
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2025 04:08:36.5522 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: M0y/lswGiHMRcfwyP+Cy7XcdwZhl8ro2l1mWBr6QAyOzhqJ8XJJe/ISTWALG1k9RO73ikFgjKGjbgE10VwHu0g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV1PR11MB8792
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756958921; x=1788494921;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CB+P5nZZxxabSz+oVZ17lzIj5k3RyZ6HB6JCqjKqG9k=;
 b=Rt/A4mgnaTbAlBy/1v1TfkAnEu/81X0nI0qKXuK0wWWnd20Yz+f/VGjz
 /3vpNV6h38WAXb/rMxQb1WR9XFHodz4iu/p0E1sQZcap3erRRn7Ate9Tp
 pXD5eaNKajSR1lQQPSdDQKJOYc0ybqwg2DiJDQdKrNyyyBw0ydERaGU3z
 f9iC/gyEkobtzlguOAdYpA1BSOl7CLBTtBrAOT4XgL1+EYX8GZ2qgnZqN
 1M5uc2actfRekF7bt07l8CHIsgeuyongn/msH2ueVOI7Pxhy0+O+dyLB2
 HZRCLxsEbxa7mJCHvkLV0LE/OYcftIjU3Nb5bmguyuksBII584EX5RmMU
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Rt/A4mgn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 12/15] ice: prepare for
 moving file to libie
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ichal Swiatkowski
> Sent: 12 August 2025 09:54
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kitszel, Przemyslaw <przemyslaw.kitszel@intel=
.com>; dawid.osuchowski@linux.intel.com; horms@kernel.org; Michal Swiatkows=
ki <michal.swiatkowski@linux.intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 12/15] ice: prepare for mov=
ing file to libie
>
> s/ice/libie
>
> There is no function for filling default descriptor in libie. Zero descri=
ptor structure and set opcode without calling the function.
>
> Make functions that are caled only in ice_fwlog.c static.
>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
> drivers/net/ethernet/intel/ice/ice_common.c |   6 +-
> drivers/net/ethernet/intel/ice/ice_fwlog.c  | 624 ++++++++++----------  d=
rivers/net/ethernet/intel/ice/ice_fwlog.h  |  78 ++-
> drivers/net/ethernet/intel/ice/ice_main.c   |   4 +-
> drivers/net/ethernet/intel/ice/ice_type.h   |   2 +-
> include/linux/net/intel/libie/adminq.h      |   1 +
> 6 files changed, 359 insertions(+), 356 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
