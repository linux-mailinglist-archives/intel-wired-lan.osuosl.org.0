Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EBB481086B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Dec 2023 03:57:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 982B160E68;
	Wed, 13 Dec 2023 02:57:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 982B160E68
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702436273;
	bh=Ts/LHOlQuPh993bgmmhQXP6UsIht7Rhe5ODuvplLR/Q=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KyvbhB3GlILzQAksF/iCCwnHz3dkdNziMhwFwNvSLJSLqTYtalTQi3wMBK4x9I88Y
	 FaY/id2TOiLh4Pv1l4p0f1HFaHP+Q3HDzBh1K99QsVSx5UGDM8S/1GjrML4Drb+CkT
	 kaCTSRER3FjodVI66MP1q6SGhKpY4teS4aDYe8lB/1o/VrzEefRt2tfhtMV1Dg84Pr
	 fcHw7S5wKOoJa4IsT6EsP8v37YKVV3MFct16ljDvAni59wecHyYlAcqFMtDZeitZ+0
	 V1bx2jU0QQHMfD++GpNf2sBCVpj2L/ONXY9twHDGp7Bf0VtZ3iWTJuzqvJdkDs5o79
	 HozVMSNDv0M5w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ror0Vz7zScS0; Wed, 13 Dec 2023 02:57:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 669CF60BF3;
	Wed, 13 Dec 2023 02:57:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 669CF60BF3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 77F6F1BF2B1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 02:57:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3EAF860DA5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 02:57:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3EAF860DA5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AaPAS4y6enJY for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Dec 2023 02:57:45 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9F4BD60BF3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 02:57:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9F4BD60BF3
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="8266637"
X-IronPort-AV: E=Sophos;i="6.04,271,1695711600"; 
   d="scan'208";a="8266637"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 18:57:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="767052966"
X-IronPort-AV: E=Sophos;i="6.04,271,1695711600"; d="scan'208";a="767052966"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Dec 2023 18:57:42 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 12 Dec 2023 18:57:42 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 12 Dec 2023 18:57:41 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 12 Dec 2023 18:57:41 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 12 Dec 2023 18:57:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LdIanVeshWD0Rd+Cd7jnIVHPWYDnT3nBEcjtXUuiyZy0tNhzIeJjBDQxQKUo8URDoaIJwweUAGcBk+ra2rrGmsc3sl6gLGK/rtrKpA/rmU8lFPrwxpG0wf7g2OIz9K4ykHAEp9opURGHujbjo2bRhqCKXboP2LA5+kZdkkXHqPzdJbVAzr+UvVRoEo4gP82HGJNaP9Jrpw0i8Zf2pZTd+nKb3HvbHEovt2B4k0R55fqcoaik+arX8pPvotDjCbdBix+nch98x5zx8h1cK1QtxtbeNw5jwzAI10Fr/WPK9GlIXaAF1SBfW0KcvMZjywEEw6BfdV/3uKniiqTYNOya3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ky9MAW8TIPekylhZ+odRIlSYI0CYpRWARKydjzlphN4=;
 b=gDAVP8fsnK1BijfEXoWP2yRS1tdsqNZaeXM260aS31Se++AqDaTMMMFsUIqWS7hkyNj0TnqALOfQftj8d+XSrvBM6sOo4v+glhpu3fnyVlH4KbKzJ+fD6j1tDdYh/mwJU38qZX9GwOX9sfh/38WygsuTF8QVh0vxsKErNxuBEyaCtMbJ6dMgl5PS+U5XO4rCgVtGmWgUiyqvh8G1g/vnfaFkw5B/GSKFDkUXnReq70HvfTucdpvaHXCD9QfVWPEXh7tTmkNK9jhBobqcHXfrfbsLKvM7tAsfWYxDccbhg+fpG7YGQw2XrXv+7pnlexZk24nLiUi/4x4aB/xI7SJ+tQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by SJ2PR11MB8451.namprd11.prod.outlook.com (2603:10b6:a03:56e::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.26; Wed, 13 Dec
 2023 02:57:37 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f%4]) with mapi id 15.20.7068.031; Wed, 13 Dec 2023
 02:57:37 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 14/15] ice: cleanup
 inconsistent code
Thread-Index: AQHaJ+AEV8dcbDXwqkqvmOjt/XzUsrCmj/BA
Date: Wed, 13 Dec 2023 02:57:36 +0000
Message-ID: <BL0PR11MB3122F3BB68CD48195603A54DBD8DA@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231206010114.2259388-1-jesse.brandeburg@intel.com>
 <20231206010114.2259388-15-jesse.brandeburg@intel.com>
In-Reply-To: <20231206010114.2259388-15-jesse.brandeburg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|SJ2PR11MB8451:EE_
x-ms-office365-filtering-correlation-id: a8e16649-66b1-4232-6bad-08dbfb874331
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CKXa8dvQ2MDVr1nLCgD73gwXqr0s7TGVyT5ZE1Au7x+3yg7lTTcTQBM2O9iOsRb271nWoethdzSg+4QldQ8rJZnyIswCaWShu1YRJv+3MiTY6v58wjQYYZ0nvikD9LjuTFE/ZCPVmBdlRTdu6Q1Cz+dtn5trkkXzLqwNSSATT0Dz1B16L9Jq9IzSsj4FwKxHCj8mnVzC394ysy8/zlq69XTIZY28+3NPkOHicDJUFjb0QIIRzqkjFqylXcNmdSTTkAit8RFFOQOF405gujWvzgeR6iTQgpITtay66CuZvhKrpiyk0YLm8NC1uxLWWW2YXzB8WnoACjAoQu0DkrnherHBRAqZqr9cdzNjb5qG8JKWVlXR9aWlVWEK42DsBCgj3fzfBiRjbW9KRkeRZln/hEzt6AVEMgOJIJ+a1ZgIaZyrYnz/wvVafFIsTDzl32V9aOzxtbHM5pfuWX3gGo+MhOApY20ZYyoHk21GG6F8EW5XvRjiJObr6zL5vKVAqEJ5aw6QLc+xZRC/wwA3RxBY8RJ8y26ZMC9Zwd1t7qRn54LhRZmw1n8e1t4fQ4OCNwQKXJCFyhAg+PtpNQAJE/EDy6lm3SV05yzeM5SALIKOQw0x0Ta785ZwL9xCSz/7s9zf
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(376002)(396003)(346002)(136003)(230922051799003)(186009)(1800799012)(64100799003)(451199024)(8676002)(8936002)(2906002)(4326008)(52536014)(316002)(5660300002)(55016003)(66476007)(76116006)(66556008)(110136005)(66946007)(64756008)(66446008)(54906003)(478600001)(38070700009)(26005)(6506007)(7696005)(53546011)(41300700001)(9686003)(71200400001)(82960400001)(83380400001)(33656002)(86362001)(122000001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?pMG7gK6KS85SWn7VMjUNhQW8fHzaNdL19BvsqpdggHnbUjnvNFRdK0/+r7bt?=
 =?us-ascii?Q?AycgGhQygTOJq6KG38gtOKraXyubA4gOI7pBhUihylv7QaMbBX3H8P2BkWEd?=
 =?us-ascii?Q?Aq+MeKQTrluAmjFkR1rpDHXsNq5siiAuKorGWviuaI0oM6hL0n20SxXGk4IQ?=
 =?us-ascii?Q?acmXaq35IKgTo02EKXuxMfqTHX0r1frVzAM5TqZt2BLwsylCz3ZCPsVO5rO+?=
 =?us-ascii?Q?nAN2OSYarW2BPcDHMIrjyfUYyFbP/yGtko5n//mkf5OHAF54x7+Xmjhw1QQ6?=
 =?us-ascii?Q?MgcJm76IojuC0T+YGCfyp81skwpbVTnSohjsTSKExDTcKpea8zN9N8DVU3b7?=
 =?us-ascii?Q?dwzOne3eqSxpRophr3qjvHaewalNBOK9cT7ihw8GsIwVgf0ZM3dz/7901Rfm?=
 =?us-ascii?Q?zvT7jGvNcuytx4BhnOFtfuLn7BbmQ5nC3AxOBoR4NAruCn3Y08LNM5vcJP0D?=
 =?us-ascii?Q?Z07JFJDVw/0qmVwAYZlkc3FxOppwyEibERv14CIHxuwtqe0S8MvthMU6MvR2?=
 =?us-ascii?Q?eYy3ixg9Y7RLgZPuHq/CLzxXKk0MN2qeFHmY4KEMGN1kwR9M/n1d4PA3GvMf?=
 =?us-ascii?Q?hv8KbGM4O0uOgvumNfOUPGbJZhXblL5m/rdPx3XxmXvZxKzSI2tkJDulF5Da?=
 =?us-ascii?Q?VUmJVLallEmWpsp7lKA1JLJJzU+okMAzqkwRjrF19e+9xtOK35j03I8syD5t?=
 =?us-ascii?Q?uErmWSIAQfqN5NhZjZBGOIY5M24/Q41MCGCHp0ZuNyCEABn3kufNVm1ibW38?=
 =?us-ascii?Q?+ZnKvN2YHabQj6SYiqDtopQ7afPga9t/A0kXLqdy+vqGFtN9Uc5jjC9ZSIqL?=
 =?us-ascii?Q?MdCpmYR1Q8iUPaZuVVgYP704PCeLW1p0HdUJr2+0EDrzdF4bGKpy2nFYN45I?=
 =?us-ascii?Q?dDKosz0O0UHy9DPgz9ILCvBUAb23OGJVM/rhUiIuQpL+kKcSf1SIu9jf1UsJ?=
 =?us-ascii?Q?i0xOQRREjfVzg2pSXO4SVtCmgHB+15ZXae9qxe5HSQQjk7WWo6HKYwbMwyzB?=
 =?us-ascii?Q?kt/VzDIczDBEzLfZsD3lDJ8z/jbiSxaxp+yuVrkdex89i05L9gp2d2bVxeEn?=
 =?us-ascii?Q?Gsq+cuIxG7NTkRv9uHpejR+w1rZqluItF12bKbdmftYUxCN+lEeQy3Gb6/G4?=
 =?us-ascii?Q?50GybwebBjZzOxjyTS8eUV8Uxkd7MENus9jNwCRaDPNS0+03Da40X/tmBOnB?=
 =?us-ascii?Q?LwmSA2+l/AYB9suSubVy9uQ6lolQviEyciWdBYAEFoLXSZH+w7eJt77r0wXW?=
 =?us-ascii?Q?5YcwuZOExw9nYJXWsmWwrfwgWmhP4SqzcVAA/BVvSAnJmKOxJnOcupRXbe7t?=
 =?us-ascii?Q?QWLK7t0m10sy7Q9oO+cby7XM6CmeedcVE5lznLTEcjuKSgEPiybWptGwkAkK?=
 =?us-ascii?Q?tioMKk3/1fU3tuSUxrXHr+4FemtiZut2sEFXD8FcU34djtVVaDYL6FVohxs5?=
 =?us-ascii?Q?fF3Htf2wMck4kh7UjDB+ttJ/OJcmG5LMM3kKvCgz84b3Akd76/pW5xMGEJ4v?=
 =?us-ascii?Q?1PfdXns9O3LDrBicPJFKuQP5rLs8C+WhnaRZY/mo05ft9Sc3Txo4SHf29QFP?=
 =?us-ascii?Q?o5X8pYFVY93IjPc3he0l/jmJnO0uT5qXmFxwZWpy5rvqYeZjFPMpcbTQk2uS?=
 =?us-ascii?Q?Iw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a8e16649-66b1-4232-6bad-08dbfb874331
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2023 02:57:36.8973 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oAgZClqcIVy+k7KtX1p2SvQCJq5lxcCL/ugVg3iUJwpP8IsOvDHpNt8lulAyMGBVkdN534SNVroOtUBrUFyUFfY+Vc5JLFlvPPHXWucq4lHg/9Bo9+k9e1YfbIWdYcl5
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8451
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702436266; x=1733972266;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qDzeVMkg1TQ/CYzl7xKcLGz0OF1oj//FFk7QaTgWMBo=;
 b=kAssApt+9E18d+6iubw6B/bVXP6uwZCqt08Mls1sn4DQw7vMUpBz+GDZ
 zmEz+oivHmMmHwKE21W+KJQSxyQqFtj2Mf4rgecxxo+V994SHpLf+xSUL
 eQNEIV6+2ChS8P2HimmlQsW1VMw2x3wDGKiwQK0c/y1tBO0WUzpjkj3CU
 w8r0grE5aVDg8XQ8wnq5QAcZGSOkYgw8zJsupTrAce3LfIVU/MzLpR2Sb
 YmOm8hSgzOvXCmp1iAaGg7uDMu47aywFy0FejY6BSSQ16vltnYhyaKjtF
 v/FN0n5fPa3wMUVTbioyQSOx3IELUStl1BnaG9dNYIRkVAqxDQQk3IfYy
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kAssApt+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 14/15] ice: cleanup
 inconsistent code
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
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>,
 "marcin.szycik@linux.intel.com" <marcin.szycik@linux.intel.com>,
 "horms@kernel.org" <horms@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jesse Brandeburg
> Sent: Wednesday, December 6, 2023 6:31 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>; Lobakin, Aleksander <aleksander.lobakin@intel.com>; marcin.szycik@linux.intel.com; horms@kernel.org; netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 14/15] ice: cleanup inconsistent code
>
> It was found while doing further testing of the previous commit
> fbf32a9bab91 ("ice: field get conversion") that one of the FIELD_GET
> conversions should really be a FIELD_PREP. The previous code was styled
> as a match to the FIELD_GET conversion, which always worked because the
> shift value was 0.  The code makes way more sense as a FIELD_PREP and
> was in fact the only FIELD_GET with two constant arguments in this
> series.
>
> Didn't squash this patch to make it easier to call out the
> (non-impactful) bug.
>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dcb.c | 2 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c | 4 ++--
>  2 files changed, 3 insertions(+), 3 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
