Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B6ECF816977
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Dec 2023 10:11:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4023E4177E;
	Mon, 18 Dec 2023 09:11:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4023E4177E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702890710;
	bh=KhiBkd8my1YTXQPFf8IN31hDfjjHUTdynwWUQ14uhEI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IDE3sT2ZNbzg0gQ2/wG8Lnd7fIsN5/1eC0B73dG01izSPVVho4pLssh/ujYXqKEdW
	 wiBxy+cOFs7qEeFORhiOVXxds9zpItNfu+h2u9y4Jc8MZdNCCBIyha1R5JOhUjcQxb
	 FIV0Zio1DcdoC/DzNwH+RUNt608jRRY3XZv4FDeikLrMPa0hX6DQo61vFYEu6tjWLX
	 zKuGYXuKYlHiyP5Wg1qquP1DHxSggS9VAm59apoTeP04g+jLUNOyFSijoPnGSp7gz2
	 Eir7YlqH4WwGh4e8UgVYYhTCWW4R641vjK4XM9mxgz9qTkvtLAZ74iKEuG8frnhhWn
	 lmI9ZHXIENQ7A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MhmNuKUytwAo; Mon, 18 Dec 2023 09:11:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1095D41711;
	Mon, 18 Dec 2023 09:11:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1095D41711
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F3F7D1BF36A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 09:11:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C9C2760E47
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 09:11:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C9C2760E47
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f44RmVbKRE6M for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Dec 2023 09:11:43 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BD12760DFD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 09:11:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BD12760DFD
X-IronPort-AV: E=McAfee;i="6600,9927,10927"; a="394353177"
X-IronPort-AV: E=Sophos;i="6.04,285,1695711600"; d="scan'208";a="394353177"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 01:11:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10927"; a="725240032"
X-IronPort-AV: E=Sophos;i="6.04,285,1695711600"; d="scan'208";a="725240032"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Dec 2023 01:11:36 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 18 Dec 2023 01:11:35 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 18 Dec 2023 01:11:35 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 18 Dec 2023 01:11:35 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 18 Dec 2023 01:11:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GTDBtQRpPVIdo4AeaI09DD/esA7k1df6fdVDG66wFcsZz+C6KAFtc+nVVx1ds0fVYWWP9rSzlugArLHt2DLy5n8q8+yP8CryndphsZOUj3BFJN6eTlmdV/n4i/yXXy4TS7j04sQrUBi+8+s1NhoP1nuCYalWM2DwTCa4GBazLDKICKs74EaNEhzfcbnayoNrkIYB0EVj0zFo9t9DFL1TUcukXikkbNrZZ718469Q0b0x+3Nh11d8sjHRl+QuxduCRkDUcTqaK6c1FILYl3TCid6g+9Wm2b9pBFhSa68xA/E8A9sI1MeA+IR116lpPFuuUBDd/17uB1ERtWfkYXOY9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KAgG9vSTXhOTz9WBi0S1/lzti8fMKu5cs/esPViGZSA=;
 b=WQL8vob0Wir9+VXNNOCv+GLKwSYujwJv1xEcDWiPd9oRG3PuC6/f5g1JO5hrenz8fTYGaLAbBI1acQMt3VKVOdH8eier5dP69VZuFwabD/n6cuDUaSTAm3F+5Z5UtfOmcKuh/od+1zcnBw9fHq9OjfHFXtQnxA4j8gwp2MR8KLzXS6zdKm/mEWH73eXrfh/TmVemzCT3GJpnkznmrro1tcEX3nSmIJrc+hhF3yssEdGDmzmA5HuJMMc6I8+RL3y/QhPyZV6DS/YA7HBt/HlNC4SbeCW+FfrpxY0SmkF+tE7sKreLe/QuB1n/j8V427f2A1N/awf9fNThD3obMIHKtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB8313.namprd11.prod.outlook.com (2603:10b6:610:17c::15)
 by CH3PR11MB7273.namprd11.prod.outlook.com (2603:10b6:610:141::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.38; Mon, 18 Dec
 2023 09:11:33 +0000
Received: from CH3PR11MB8313.namprd11.prod.outlook.com
 ([fe80::adc:80f6:2ab0:ec38]) by CH3PR11MB8313.namprd11.prod.outlook.com
 ([fe80::adc:80f6:2ab0:ec38%3]) with mapi id 15.20.7091.034; Mon, 18 Dec 2023
 09:11:32 +0000
From: "Rout, ChandanX" <chandanx.rout@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: Fix PF with enabled XDP
 going no-carrier after reset
Thread-Index: AQHaLN4R8D7FBBH0eECZDi78dpU+nbCuyaYA
Date: Mon, 18 Dec 2023 09:11:32 +0000
Message-ID: <CH3PR11MB8313225A36BBE97FEC84500EEA90A@CH3PR11MB8313.namprd11.prod.outlook.com>
References: <20231212092903.446491-1-larysa.zaremba@intel.com>
In-Reply-To: <20231212092903.446491-1-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB8313:EE_|CH3PR11MB7273:EE_
x-ms-office365-filtering-correlation-id: a57f628c-8482-4b95-7dc3-08dbffa953b3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TpbiN7UsP3l41Q0/grjpLmmbFxhqo7wGxcH4VXZm0Pd5lZNOJrq6CBhtj7ytAQWFmwPwOo4DRWWAnHzEXxYF8ypZiPsWpWSH+YU1X1Ks/BdYNATqatWowI/HJ4ty5CA9NuaakzLAxPF+H0OWH7l/82bUehujTqWBDH3CP21vc0tJBqGdzRYYPSzzSb+pf99WbnPZRuSsHM0/CqSFoZuNbZC2r4VMiVI8fx/JPmUOUlwHRrns9URDCq6S9KIMYq8oLugkeYJqx/rG/I6WJya1u9vEHv16n2pvg47QN4u67FC7DtBBh6uUscXcPmslUUN8beTFHK8ZZ0Xe8Wcz1Cs+txbFA0d0GfYUZZ7ftONzdKgIyt+UTlMB/KGUQ23LQIMZCAhc+Rnkr9DfDCix6qxZ3ov+O+pxEgYpUwoaBm5h2ZNgHlLpzJ4YfQIhlCiCDqKwHf3bm+D8ZCr0euzNuxLLJ1KYftDO1oD+1MQwUM02QhLAFCdPODyo1W2BFeK6LUMxbvdnUr9N+qTiPXPjyQwz2CQhcRvxHStmGGpYoE54PCNO3Zq6EpzTmO8uHlrh2OcLOUcr28zZFpEyBAnUKW8154TLFBYLHmRHAkubgP4VlcjAx6rdUhbiuKfLX4G/sl+1
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8313.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(39860400002)(366004)(396003)(376002)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(38070700009)(66556008)(66946007)(316002)(83380400001)(55016003)(76116006)(66446008)(110136005)(66476007)(54906003)(64756008)(2906002)(122000001)(52536014)(4326008)(8676002)(8936002)(5660300002)(38100700002)(71200400001)(7696005)(9686003)(6506007)(26005)(478600001)(86362001)(41300700001)(33656002)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?MYwol7zk/fUTcA+84q2HKVUs5mg2yOylkdQKtsIszcWsHMKNta5z5gv+iz3a?=
 =?us-ascii?Q?dqr1IrF80FySzUrVdZdkCsrBdCZEvBrdM8YMy9p/lPpKBoDGCeNGh2OaaGAS?=
 =?us-ascii?Q?/yyaV06YvgxUBrc6QNZPr4op8+xVxxcceuDNHg102doCugZFrCyXb/kSKTdC?=
 =?us-ascii?Q?6IksoiKkIJZG5pvAdUjBjqL55ibyVYzAgIhqMf54Nf+AwpFfX3F2n78fuIVr?=
 =?us-ascii?Q?Lsrtf6+XNP7DRmDSLiArC9xHqb7TY3uYEZb7VqFxxjWMM+FjB/jMWdwTeKG4?=
 =?us-ascii?Q?BOatiTCrFfk5SWugVpvR2m49qUmzLn4dA33FieSpaWu6bz+F8EPSgLzt5A9Y?=
 =?us-ascii?Q?/Ubxe0WpeVYwHE/J5JrKaGOWN0z8/XkVWCGc0EWR+IsZx8PNoy1uKm1kB5P3?=
 =?us-ascii?Q?qeBT77vXOzF+V5J4U6jbZoDfzXW/Nwd+fsEHexPTkFNIS+6kbp1VI1WgkKIu?=
 =?us-ascii?Q?CTHFE12lCPQqclYNDQveoEWCETX8zqyd789E7lILjEu/TSJv2WVrxwIc5GHs?=
 =?us-ascii?Q?l6ZKoq161ZspjzSXlIqqF9JzCOzDGBDiuvUwRfKdUbLhmEsyI6BXmvuOmuQN?=
 =?us-ascii?Q?Nw/WBG+s5USbHSuaSrasmsJB+ta0b2qvyyaKfHqTxsbuyMopkljNB8J+aMFl?=
 =?us-ascii?Q?+aH0jlVZ9ZH2KYMDstnTPX4Sk4iJguBz8DfCASTPbh0RcNF+MQVdC57iwGbY?=
 =?us-ascii?Q?U9JGs+cXWcPaW8N66EE1bt4zi9KsPu/GHEgAocVyKHo12YLAuXBALIunDx8/?=
 =?us-ascii?Q?uHCNnQP9Mti02pU6pkHsgqDLG0GEzZK4KD0qaZWKM5FPZDjLj3sRvmBjmD7a?=
 =?us-ascii?Q?Sg04Bmtmu1ehWEj0wWUvhkxxYFLXTlYSDK4Q1YHBAo/lxPgqxurHKEbqFqW0?=
 =?us-ascii?Q?gWiEdZtrtc+H51/zcdzZN18Ry+ra+BAHr/0pF/9avEacxWCnBu1rTfXLnUYZ?=
 =?us-ascii?Q?FR55kP1hQ6VuwL9jbWUDAw2IIL1a8yf1/uclhlpreqD18H0yyrdk7q8m4TJJ?=
 =?us-ascii?Q?8fxkDbeDsIPClity3a8IvXLbCqEWjY0OPF+eED8sk5f12B+ujY1BBThMJVf3?=
 =?us-ascii?Q?TURuUL5WDKccY5IV2HxS9JsJSDQFQJPeHaaHwJnHRtu81dhNJbHzQIl0Tx1g?=
 =?us-ascii?Q?4Oh2pgvCQzD1auwDQR95DCMQWADxT9HGBV5DAvTUVj2th14Pv0coh5gVXQMc?=
 =?us-ascii?Q?ztiX/N+Uhdnbz+6xMy9mhVjoWxorSTBiortsYeJiLuw/rWnLxRK+saYDWZCI?=
 =?us-ascii?Q?uVb5gos9Eq2f0NaZl13phfwBQntsqgtXLqdOg9opHgOhOeJRmoMtI9khwhPv?=
 =?us-ascii?Q?GNuT+717QrHrgcB8MbAIBfHxK6PAclR0Ot2phUJRDnOVRFVzoPx4/ZH7VzQg?=
 =?us-ascii?Q?ldkM3FCC+GPDmcnj561IUtj83oCloPLPFSQyQT9nN/JwXumaRnzf12TtSP2Y?=
 =?us-ascii?Q?/VXLs7sGqzoMfq+oW8oAJc0rP5nN5fdoogCTAjC0YJuvcVhzU+2E4JIxBfJQ?=
 =?us-ascii?Q?fX9wFolrrSfCGa0pjppNTkWYn029713uU9Y7D1lXwZdnQB/7KfhhF+nCH7Vl?=
 =?us-ascii?Q?2fYBNk7jLZqh9vuOw3kYM2CMi9dGPUMBHhvN8r9n?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8313.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a57f628c-8482-4b95-7dc3-08dbffa953b3
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2023 09:11:32.1314 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Cd5/jq+bgPxLkHoNBDy/0NaBCiOx4+EpW+dRiYgPY6YqptyoKK0Qg3onGexSkNtskpCeBW8CVauDzgaBbJdKhw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7273
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702890702; x=1734426702;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KAgG9vSTXhOTz9WBi0S1/lzti8fMKu5cs/esPViGZSA=;
 b=GPAlMkVE+8cdjf5id8suMAjVfKOkth7EA2D+YqW2fHCA1zQp+UOtJLBv
 aB9aqXjIohkHh4LAGWPJkTuVmvCH20ED2JZPfeH7wmr7Mw2SBDWP5gWfo
 wl5pZsa4L6SReEl59CtNK9sFriZ6Bil4zzN+0P1ghh69GKw9t56FiBZQs
 6NTnpGPMEehwVkXaFNnZ3LDDiFrkxRh4G/XJkEcpKY4ZZf4y8zByQILlj
 BgOg2Fm1WCEx5j+udNtl4BIeNc7tzlTXyG3RwSdwBhP3jxmWXdH5B9RQG
 11m1gw00i4inQha2nTQch/Vrzr5eWy7kDDUG6QO+s8H70rxM1uqdfXPXe
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GPAlMkVE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Fix PF with enabled XDP
 going no-carrier after reset
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, "Nagraj,
 Shravan" <shravan.nagraj@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Sreenivas,
 Bharathi" <bharathi.sreenivas@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Kuruvinakunnel, 
 George" <george.kuruvinakunnel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Zaremba, Larysa
>Sent: Tuesday, December 12, 2023 2:59 PM
>To: intel-wired-lan@lists.osuosl.org
>Cc: Zaremba, Larysa <larysa.zaremba@intel.com>; netdev@vger.kernel.org;
>Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L
><anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
><przemyslaw.kitszel@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>;
>Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>Subject: [Intel-wired-lan] [PATCH iwl-net] ice: Fix PF with enabled XDP going
>no-carrier after reset
>
>Commit 6624e780a577fc596788 ("ice: split ice_vsi_setup into smaller
>functions") has refactored a bunch of code involved in PFR. In this process, TC
>queue number adjustment for XDP was lost. Bring it back.
>
>Lack of such adjustment causes interface to go into no-carrier after a reset, if
>XDP program is attached, with the following message:
>
>ice 0000:b1:00.0: Failed to set LAN Tx queue context, error: -22 ice
>0000:b1:00.0 ens801f0np0: Failed to open VSI 0x0006 on switch 0x0001 ice
>0000:b1:00.0: enable VSI failed, err -22, VSI index 0, type ICE_VSI_PF ice
>0000:b1:00.0: PF VSI rebuild failed: -22 ice 0000:b1:00.0: Rebuild failed,
>unload and reload driver
>
>Fixes: 6624e780a577 ("ice: split ice_vsi_setup into smaller functions")
>Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_lib.c | 3 +++
> 1 file changed, 3 insertions(+)
>

Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
