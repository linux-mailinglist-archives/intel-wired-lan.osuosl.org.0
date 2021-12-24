Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B44547EDCE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Dec 2021 10:34:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A3CBE83E16;
	Fri, 24 Dec 2021 09:34:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eQ-Y-wCO3Rh5; Fri, 24 Dec 2021 09:34:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8DD7583E11;
	Fri, 24 Dec 2021 09:34:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3A7D71BF372
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Dec 2021 09:33:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2D51383E11
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Dec 2021 09:33:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M-mxrskZX0YG for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Dec 2021 09:33:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E098C83E10
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Dec 2021 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640338433; x=1671874433;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=edmdOwwcp5tmWJ5zfvTdw2VwHPeR1LX1mBbRxK0L6Sk=;
 b=dXR0n+18wWpUZ6EbB+TZCCc6bmDJs8msCgpjcRKlbuEfyOhUnJGEPxMS
 shHNxnfD0Mu7FcZrDah1/s7fVD0Ll4aKe20URXADMkn4JXWUya6B2TUva
 tmnvo/GmmLQywDbdPORqfHikD9Gb9nQ7vBZ1+fiyOPikJQyZySiC9pVdF
 8WSh9mkmt/qr8afL3WIZbSfYCSKPpwZUKMjl3wj1YxRpNCLsDpLUs7EO7
 9zeAOkoDSIeIq7whQv6dg9K2T1eo9mrA7mq6CVDdYnlODNDWsIN+WgxAi
 RR6j1Elq6UYE67QuvQaiIjU+0LkQS07euq5bfQDfpFTFWcDYXNfPy9iOs A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10207"; a="327282755"
X-IronPort-AV: E=Sophos;i="5.88,232,1635231600"; d="scan'208";a="327282755"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Dec 2021 01:33:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,232,1635231600"; d="scan'208";a="617744328"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP; 24 Dec 2021 01:33:52 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 24 Dec 2021 01:33:52 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 24 Dec 2021 01:33:52 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 24 Dec 2021 01:33:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eUL80JsX5v0Ojc6AuTXEOqgKXcz6WAiO13ip1InmfpjAzeW/cqQbg3oY6C9jXbrYEWCT87QGfUMbTer8ZQxzZiHOdA3RHsFijV3e2IZO/sZmjwWeAD52E1EgFu1008afYGoatIzcNFf7XRNKK5ESbGhN55pGO3a1C/+cCvy0XyqIkVm7M9i7vfr40uxf3tscdyyNB+0xWTIuh7fkWRqWoJg1WKyGNIorHDgTNYZrglkffuBx6bUU5iR8+8ZytYgQ9Iq+mN9n5kJkVLAzwDvLDTEaEJ0ldtCoUo1TXF1RXroUFJx0EtM++m22uVeTqKXSx3+ZBPLaPzWvaNZYKan/3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nXP+S7DWvNBljkW1BwhX6y6/55FlEv/lKCxdiDMmQ70=;
 b=a05PJUVLqKnhSWNlS5eSDvGjOfNSGAup0YzeweBC7FrGHyB3liHUBiSZJVUrqAgWAcJiZ4sF4FIULYABKNgKHZyysSgj6oHcCxn7Hn9oTCRiocEnjzkmphEtkVGby4IbsI6TXPblFc0JhKHf1IA5V76GbgIOqUSDT9kWUaNqKr8hK//FVuPqyYFAg+II+82tZ+DBVTJmxCkEGUIe0svbCuDQvzhvQKwvYjaZj3sLmFki8LV4++xHM71G/FXD3HsEzd3W+puqRsmPzK3JPqG2g2aN97DTCNNvKBXRctlLpFHMUedvXN9RXcIaAVCGBoK0J2qKwOAozsXrFttzuVXwBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB3286.namprd11.prod.outlook.com (2603:10b6:a03:79::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4823.21; Fri, 24 Dec
 2021 09:33:50 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::bc02:db0b:b6b9:4b81]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::bc02:db0b:b6b9:4b81%5]) with mapi id 15.20.4823.021; Fri, 24 Dec 2021
 09:33:50 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 05/14] ice: Refactor
 vf->port_vlan_info to use ice_vlan
Thread-Index: AQHX55t5gWbMfBa6skS783dX1aJxSaxBg1oA
Date: Fri, 24 Dec 2021 09:33:50 +0000
Message-ID: <BYAPR11MB336703E61D0C7B43FFA4B988FC7F9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20211202163852.36436-1-anthony.l.nguyen@intel.com>
 <20211202163852.36436-5-anthony.l.nguyen@intel.com>
In-Reply-To: <20211202163852.36436-5-anthony.l.nguyen@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 13b60c52-54be-451b-deda-08d9c6c07e27
x-ms-traffictypediagnostic: BYAPR11MB3286:EE_
x-microsoft-antispam-prvs: <BYAPR11MB32868E386C6B9457612A0F5AFC7F9@BYAPR11MB3286.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BrkdPD74oSdr/TT+1EAbGbkqyQLHFuyM6n/tZXvZtRz2DKJ0clnK8xQyuGFjnF54CCaKSe7W915QWuZyysWaldjGHq68ILDQY/rGSkQ8bM390K7fy5WU7h9gx20QZ0zjNZSBl5TPlNPBPQwXglBOY/i9avt6i6SN29KNm6YV7NbKXyVVDjW4QKSw/PYVZNjzpKAX+lfTkvEtgcgWLyUDixaxYXeCN514dmA+x2SOESj+H6bfIycxn8cIxqwYDZlmfdL/NZDerAqSLDxkFuPwEiDoKPObNJfCTzYTVOkm9vQsyJV3280fCm69mnRbOsI1AbEdBCjXa83G0kDXOEIuBEDX7G/e6/oFZgpA/xMkMQuMOBffp8tbxTaG1WYRnzr90PSeA/QQ1fH+17edGQvE1d0jbojxYqXpbRjk80hvcGfRLsYs/ppm1SSLlWmc4KMXV/Zmh0Qi5C26z1zJjNMvOq9qUeUFMbQoBn0QWEDuo2e53e8ukDYx4/jHOytp0d6HVleYaxDC1LlQ7K4xDsgy4B2V9Nsr51T5NeQLlSm4sAgdbPM1zHmcJprZ1OLwOEmt/70JsmBP/s+CX8s+QyzRfsZpjcsBc6DTDARufMjsi2EEK9dpn3RD1EYh5AuD0Ccq1GI02bKhq1Z3LLNz1gllRRHl1VLyQ6G0xScZCqjhXKRaQuIsZTcQ2oJOtP0dcVNmrOrhyXntz+yuOlMprG5P1A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(8676002)(33656002)(9686003)(7696005)(26005)(52536014)(8936002)(82960400001)(55016003)(38070700005)(110136005)(53546011)(6506007)(122000001)(38100700002)(71200400001)(316002)(66946007)(64756008)(76116006)(66556008)(66476007)(66446008)(83380400001)(508600001)(186003)(86362001)(2906002)(5660300002)(4744005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lu2HqlmEe08i+5bw1cpQjPkHQo8rGFA5F0dQPsLcF1sLPOu/Zre55HTj9OXL?=
 =?us-ascii?Q?+ZTKAcPBmQTTpGrygvKXdN2ysNfI77NvnbAwcfrxaPYr8NzA/hxKBFycy5qi?=
 =?us-ascii?Q?bQbhTZqw9rdEGKbjxSBdMs47eQjSp/kTN5nYiXaErVXjFl016twTdVRRJUSD?=
 =?us-ascii?Q?VOcs3splVYto/ARYCC4AVj5STvX1NuYg5RYjf5H8TqxWcayqaNl7/29kn1uM?=
 =?us-ascii?Q?A49/bY4RPRSPpKgLo4s5s+tWUN1FoqTkWJs73kmg+FfYHdUgGAVunQfDn/Cx?=
 =?us-ascii?Q?pnHK/g3hKCEYDi9G8ANG3lY4QjOwwUFyXRq4etVbj7dgVEjZI0pWhE7Q96F+?=
 =?us-ascii?Q?9WfNPMRnQi1OguWfz4sujB2QwUXHMqz0wNut/CZSKweqqDmRMZ+WHgHF87Ql?=
 =?us-ascii?Q?uI0iHJqU2AlSMwMXRiYoTAoJUzHUXe5gFjGbOnBRADYkiLmBUI2a+vghpYfn?=
 =?us-ascii?Q?OfhsZseqP63HGKdIZXG7Y4gWuRYbYXP1CSFr8Pb1gqDvfwDdyWrKUr5Jze5g?=
 =?us-ascii?Q?RhjquyIbNdY19ftOZNMfGhZAwKhG1Va0FmkW2bCgQCD3LccoV9uI73YdDqwi?=
 =?us-ascii?Q?nyINJpKEqw+GHfDSF8cEWV/LAWYK+MutQr0BQ9h9fD9BYKntXgT6f6tlVq3y?=
 =?us-ascii?Q?geBtHLOMi2cdxrXaA8QQeb1utYyryJieEDR5VVvosa8kOwNRCRRj8DezC+kQ?=
 =?us-ascii?Q?6VsvXFDEUsrcRcaBvHyGCmAl8todlPluK/FlqRgAL1LEIfXq4X+y6N16sUVl?=
 =?us-ascii?Q?aZ1r9HtAAIctyHdv0JxCpOg9Bf/JPglRCrGI0hNqhOOGGNn4GcGQx4iPo0fP?=
 =?us-ascii?Q?YXKsVjjv75xahvD99AE5vTmBhxNN96mm7loGDOZ4xEU/XW+xT56EY6vTdgKY?=
 =?us-ascii?Q?03CclLCIN/rtvJjoA6AQPMHyAbe7iba+24IB4hptttYtKcAjERbL8dQ5bm1Z?=
 =?us-ascii?Q?htexYFfs8seWw/b6qx28hw6xrdGG4OT98irlwRdNSK+n1Hh/9bBPHJfjgJa8?=
 =?us-ascii?Q?iJvT4BrgxUr1XfunQQRFvofsgvgSYmiNojlKkHDpS/s2Z3J8pPG5/CZzO7J+?=
 =?us-ascii?Q?4EGzdOjWshvghniWPWALr1V03tWOB37hvlJaHpiHa7Dw8E1wxmjib542bjxV?=
 =?us-ascii?Q?r/LdPygrRnkQqQHfGgBTwyXIsXjhaAMypDzvv/Uk3n0g9pUR6F67/+eHsqtL?=
 =?us-ascii?Q?SSVr7GF11plwDBuYNhQWhI7l2OPlt2HVcx6dlZQPU3jN/x95FOfuQkhokXH+?=
 =?us-ascii?Q?VH9pSPjdNMgVWXrjZ938dcj0eVJkp3+X/T0zQDb8P0t5W81pOJD6AABZNB2n?=
 =?us-ascii?Q?yjcx96Iuc9ozunPT3/Fj1bSTkgETgQkgAejZlQoiB516VPIsVBXgt8N5bQsS?=
 =?us-ascii?Q?VFEBDnGgThZJRBWQiBs+P/Xok8BXS46V2P4OarmcbTJOm+XP/msAPuwhfgtX?=
 =?us-ascii?Q?KmsP3lYn/WSpP8OPNNJNkbvUuoLMpuT5YKTzeqcWERzL6lk6OpSO51wXbvD2?=
 =?us-ascii?Q?Gvdfgf8XjiJ1syL9Qz6Er2mo8IqMKJZvMXEzhteFMTQpwHt/JWuzoCljveTV?=
 =?us-ascii?Q?SJk6nJq69YUCvc+ttflNFbMFKSpVvrcobih3KypJJhRthfvXXFOw+nrre/ox?=
 =?us-ascii?Q?/9nQrnHptJcSiTQO78LI6KI=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 13b60c52-54be-451b-deda-08d9c6c07e27
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Dec 2021 09:33:50.0792 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: siOUu3uGP96aFyWdGLZh4VUAXLfxXZHfWfawG9RWGO0tCMzIJZy8FK95yt571otNXGyUasWsrPTvg6KO2vz3AA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3286
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 05/14] ice: Refactor
 vf->port_vlan_info to use ice_vlan
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Tony
> Nguyen
> Sent: Thursday, December 2, 2021 10:09 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v3 05/14] ice: Refactor vf-
> >port_vlan_info to use ice_vlan
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> The current vf->port_vlan_info variable is a packed u16 that contains the port
> VLAN ID and QoS/prio value. This is fine, but changes are incoming that allow
> for an 802.1ad port VLAN. Add flexibility by changing the vf->port_vlan_info
> member to be an ice_vlan structure.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 76 ++++++++++---------
> .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |  3 +-
>  2 files changed, 44 insertions(+), 35 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
