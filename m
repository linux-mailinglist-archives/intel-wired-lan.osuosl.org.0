Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 58B3D6EA595
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Apr 2023 10:09:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AE6F461435;
	Fri, 21 Apr 2023 08:09:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AE6F461435
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682064570;
	bh=0D35WaohEvW7rJBRVIB28ZfWRmvIY/sX9fraBWKo5pg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6682CfATN7xIctvujTxRJojN+PvhZCIyED3Q3to8Tj+UllOipLXA+iDpRcLOKRgMH
	 9KFuZVhQqa4n1csNO9Kc7Za6g42K4F76OkQFTVoSZq2kxcqGjq7VGLyrt6+Mqm1uYP
	 hFk2yXQUt4VBLMsu9jXh7jy2pSlCF31Wl6TQgAmBzTfEA+pzwUVZACO0Rw9ippperT
	 /5wARvaOlObQll8E0fsKXJzzbR4tTk3zVjPqu3zcfn4aK7Qg71c423MCj8i0ob+7WE
	 zjWKpZIyLgSlPfabiUIJgiHjkXRB+ds/eK0IwOtPCf+MeihY5zSt1gjF1Ia4d9IVMX
	 KkJPhSoZPdjaQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yJ8K9bTAsvQ7; Fri, 21 Apr 2023 08:09:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8FBF66138C;
	Fri, 21 Apr 2023 08:09:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8FBF66138C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B748B1BF279
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Apr 2023 08:09:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9B373613A1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Apr 2023 08:09:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9B373613A1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KIyVgcCwn-pR for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Apr 2023 08:09:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9657F60881
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9657F60881
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Apr 2023 08:09:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="334816600"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="334816600"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 01:09:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="761495475"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="761495475"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 21 Apr 2023 01:09:21 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 21 Apr 2023 01:09:20 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 21 Apr 2023 01:09:20 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 21 Apr 2023 01:09:20 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 21 Apr 2023 01:09:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iIutxxiS42rxiFowyoOU85lZn7akWEu5KIN6C6WeP2Ap6o1SDbtdEELzGkayNQA2XzxH8gIr0jB0x7Oux0rFiVtat1Rjfp2e3zWzeL6xIf9nE9tDJduPTk7ovRyS99lPqxWcGSgY5iSZqWQH70mv5dyhb/wFFd75cEtZ0xaw0BRIOjFx2d3XPcu1sU+aYyKFuuLbZcafONZ84VY5fEW+8g9VR1Cd5kkdu/SkwYOoc1W5ELtAwlMWCpk2ZeO4oS0bjDmZG3P/SfNe7RMJ1yPiy3BoRfhgDInBzFeAnQDAaheZcgpKJa9CUl+Ambckv6PUm9mFcadvxDCzajtE7c98JQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iZ1T/EE7JvmVs7nXvntJWQ3mLhwUhpA3qPgOKEmqq7w=;
 b=aPFL/F5V5xpyhv9zwBR+YnXxRzxaqMZ3EStXqAckITg34edoZqdBQgNRBLLkSY8LQwvwMg1eQBot9DV2UjtDPKAYT1JAphKPp5LniYARLPsLgolme1eX+cCOd3SBEyI2BG5eSyNDG4jyTddmgpAuDwQEQA27Rcf2Q+rj9b7s3cVVRFXfyg3VY0n58/bFx5FNoMwM78YqQWz78wofqOuDZjaIdAiWeSk1H9vyPcEBFu7ypZkIMk884Cvn0xv5rU04NcJ3DgzEFlqm+dRVliz48+8lfEiKG8LJNrl2s5mZAeG2cVQmp4UsoOBqXJ0dtFhgCLpSJWTDmtwXTab6/Zb7CQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by SA3PR11MB7554.namprd11.prod.outlook.com (2603:10b6:806:315::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.22; Fri, 21 Apr
 2023 08:09:07 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::8398:18:e174:6afa]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::8398:18:e174:6afa%6]) with mapi id 15.20.6319.022; Fri, 21 Apr 2023
 08:09:07 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Zaki, Ahmed" <ahmed.zaki@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: Fix stats after PF reset
Thread-Index: AQHZcYath2eb8e2UUkqDNc0fw8Zrra81bepw
Date: Fri, 21 Apr 2023 08:09:07 +0000
Message-ID: <BL0PR11MB3521EF5E8B103E730747296E8F609@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20230417234445.3956555-1-ahmed.zaki@intel.com>
In-Reply-To: <20230417234445.3956555-1-ahmed.zaki@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|SA3PR11MB7554:EE_
x-ms-office365-filtering-correlation-id: a473b6fb-f506-4655-5396-08db423fae21
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3GRvwgHreNZxJ3Wrpk3SC/3q3fhHW4artWENcME+kq5ASI2RzC9wDsZoJe4yPPGhlGRU6WDNSPTE07QalRBWjkIB5/MsnfR5QFUw/7pHxBn5cZesezZ7dA0i3HpeCiarOR2Xham3ozKkSDuG2qgIVLE6NoQWt3PnHLhm4Bd+AAoE9tNM5ILF5rEERmSBS3+jOa7yvQOb78j2OGGoHNvQwECP6V1IkWtt4V/O47UOPKSK154G9YH6bBv7L9EBxkgzxDu2805XhoItYrRFHnP8isI5mzjAyY6DnXbATDG5lX5EhHCU+gifEJU5YnzyC18AMPNqn2JwxtTgsQz2JaX8+xGDR5Z5x54Gu+InKW+TL+aH7gNwk9/Xmgg9rtIO/FJPq/vWZDSde7WVBm7drNVOaeDBrUOeUK8+5eQOc5GLsedn0zOTd9pLyo1YBRXsRcwBoPf8p/aY+o3gP6BbG5+g186LMeoz78mlRLO5FXp2XOoSgEyDC4Y6WCmDGeHcRG5qwH+g3KM9dh0cNl/ES01mWI22KVm1QuB0a44hgFzCSPryeW0nHQHTO1bSI8xkkvXhLgheW6uGaZSRgtqDE/kmfn9hQJFMBy1S4P8olSjALY4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(346002)(136003)(366004)(396003)(39860400002)(451199021)(38070700005)(2906002)(8936002)(38100700002)(8676002)(52536014)(5660300002)(33656002)(86362001)(9686003)(6506007)(7696005)(55016003)(71200400001)(26005)(966005)(110136005)(478600001)(83380400001)(53546011)(186003)(316002)(82960400001)(66556008)(64756008)(66446008)(76116006)(66476007)(66946007)(122000001)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Z9OHRMGUeFYZxV+tsS4Wa5PceUmWUtzWCfnetRToUBBUeoDn9kkYRowsE7Bj?=
 =?us-ascii?Q?YPjtT2DpVxTdB1gA0KTdPC84Jwj6v73t6fnv7d5OS0ZwkN3l3AUpVHQAhinm?=
 =?us-ascii?Q?+MVjiNDqx1pln7MsEjfPj0CdUNvkYoY5X+JGVne27e41CdGanAoxLsDK6PHB?=
 =?us-ascii?Q?9RdwduM+CEZBdAgAl2sHpo/0QDzEmWtfRacvauxqK6P2QJzdQ8KabQRY9f4Z?=
 =?us-ascii?Q?ffLWjnuKOWOYGuB3gS44em7VJXWAENF7C694ElOZUMjprCwmYVX1KOV0nqFz?=
 =?us-ascii?Q?/dy1AXTaetlE6/oH6nTTPi/M+/ezfL4kvpb5oY/leERAKlcVW9CIST3wl0zG?=
 =?us-ascii?Q?PiyNULOQ/ep2NEn/kMvAbEvTehmz/DlSJcriNocXJBwHt0RVSU7W7TmVFTVF?=
 =?us-ascii?Q?m1TAgDx+sypj0OGT3B0ib/QblZpRLAIQ3vA6asxt3MAKtpLYU4tiX6+qAaZJ?=
 =?us-ascii?Q?Dj3ZGlU24iIj1FNIaQjbVc61SLJnLLpU2AytB34akG3OhVNvojhLXm7EVm5A?=
 =?us-ascii?Q?oDY6xPmNaofVW+PE68GDwTMoz5MjhWAH4KnN/sDYGE8gIEKnlC9zbccNf2si?=
 =?us-ascii?Q?2OxOCbRIXzRDA8ndkT20tXJ3zoN0Hs5CdB7DOqyJzPY9r3TTv9pcgQbCEAS8?=
 =?us-ascii?Q?+t3hYCv+bv3NlHQORLrW+xf5uYBDWHBCS1UxRqmDmueWJGa/FL8vBvC/LyhY?=
 =?us-ascii?Q?9ca/Hu/j909Kq2lB2sjzC6gJ6+vNUeDuYyXSdVbZHuubxHBb27+/ifvxfHyi?=
 =?us-ascii?Q?NItMtGrgTCKRppncRgyhhu5I24a725igKeyvn2r6UYlbvhBA0YiRpi88JxP1?=
 =?us-ascii?Q?oxUArtQUDSVrIVYiQDQR6dncMxIdOIUXMcM3ZKlA3MvmeLsmZaHwdq/UhUxW?=
 =?us-ascii?Q?l3N2oemrn0gAr9bM1DWzkuU1qkfFsyin9n3okg79pRAeOG9Uc+UPGXRAxKAi?=
 =?us-ascii?Q?+zJAENa3yqeV275YRxnOJAqGzHmrwMjCvfknZwQaWtyKlIKijC6KvVN/c37o?=
 =?us-ascii?Q?ky44Pp1RNWcIVGrUL5JkOYbvfLvyDgF69YcBAU6wry07acr03447hEgniGUo?=
 =?us-ascii?Q?fuco7DhZ3M9mid8p+Yjj8LtNcEow2g/aIbKDOuy6QvHPWcg0wAYvC+AH/p/J?=
 =?us-ascii?Q?mf/T/f2vOIhV04b2MfqkO2uDregKzzVhB9AKnlOlUUU/b5s1KQ+XARy35/kz?=
 =?us-ascii?Q?uhNDKD91A5ggiEK+q8sl2TscQEELGgzZm5L541etoHjIM1PpzVutR5E4NLIF?=
 =?us-ascii?Q?YXV0Exh+IuSsDj4pRu+3oAklQ9apKDj7wMNagZwtoXWPUYHeQeFRpe2RC2Ns?=
 =?us-ascii?Q?suCcqb7UIGjSnPTEY1GRnsus51beizarNDalY0yXjRF5ufs1jp5D/d1u9Dou?=
 =?us-ascii?Q?fw31/4X0joZHQ7b/R9TAFm1CQFo5eXyecH2tGp86e5ItvT3Bj61VM97AU718?=
 =?us-ascii?Q?Ng/kGAle4yuOlacnXW0L2RzOYLYoOk6COKCNyWiuqDbKnSckeJVDYB85Y0lM?=
 =?us-ascii?Q?IKGNDcSMvrTSKzOeEhApRS7zEiP11R8gHv0Laa2I8KEZvavKHebkau0vRHSF?=
 =?us-ascii?Q?b0uX7//cEoozBISJg7mUBlUFDPRa/mWz3KR63KWvLOXnA6HCNhXV47etxFgl?=
 =?us-ascii?Q?Mg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a473b6fb-f506-4655-5396-08db423fae21
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2023 08:09:07.4314 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 88d7qYXX+u7doWipHglKPZrUdYrcI5P8slsZMXpFJ5TCRUZ9UBbcNODm45sxBZDypHhCTYZ/RMVpo14qMapbemr2Kk5QfwrQwQVGFi9B0rE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7554
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682064562; x=1713600562;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=bjZvru9s6AjJqzmpcWwzhDBNpm3GbN9Gs4gbp50DIK8=;
 b=Iv7D0eetTdUlJljUeN+Oc9u1HYiDg7EhAnVmxVGXtt73bI5g5o9oDZov
 ED8VVaIvTW3ajw28g+z/LpIlqv4PNMwC/jRvYbWzZ8BwOUS8jPguzAVbx
 XlLSXK84CpxRXEPGYaP1DuIvFIaspxcCYJW0q6l1fW1S10hD1UXZh4Ujn
 /EPzNMn/lISmbgE02WqpraZ0uBemxYbIFUIR11ihcaEjFJ0pJokRiVvTJ
 xvQiTN/L2hlmRTgEpmNL76Mm4s0QMF3hI+KRgPcRRdldSuBtbPGrz041/
 XVulew0HG45L1wT760javtwbnmFa3Ew6ej31sTfAyf9uqEoEN2Xoinf35
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Iv7D0eet
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix stats after PF reset
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Ahmed Zaki
> Sent: wtorek, 18 kwietnia 2023 01:45
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net] ice: Fix stats after PF reset
> 
> After a core PF reset, the VFs were showing wrong Rx/Tx stats. This is a
> regression in commit 6624e780a577 ("ice: split ice_vsi_setup into smaller
> functions") caused by missing to set "stat_offsets_loaded = false" in the
> ice_vsi_rebuild() path.
> 
> Fixes: 6624e780a577 ("ice: split ice_vsi_setup into smaller functions")
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c
> b/drivers/net/ethernet/intel/ice/ice_lib.c
> index 387bb9cbafbe..d9731476cd7f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c

> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
