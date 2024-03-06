Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A25BB8736CE
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Mar 2024 13:43:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 95F5160900;
	Wed,  6 Mar 2024 12:43:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DGU1lQi0-Dg9; Wed,  6 Mar 2024 12:43:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 34B64608B2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709728987;
	bh=OE6yUKt8v2f14AVcBY8mtHxuaqt+ZLmh3U95YB3TE9M=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=S5+TVOQwwRu47Wyq7SvhFb1/I4WDbmB+H4efKW3YxEdvfLphTWyGTv5ewhejP7NMD
	 K9o3NLPvu+Wan08XdkZc5myW5t+1FzIwHbIQvqPm6R0rDg4SVBc2nbmfukvHitT9Gr
	 CHk3KijrD/ArD7SkC55jdvlaMKbkB5XdqRWPK1r5gs38SMnh7wkfShrlw3tDa2O7gb
	 /DUMbOgNoRGa873FqN9QD6usJVAKxybHyhheOiQmE/nV+dwVMHpJ9iPQRg94aFuT++
	 nZhANpDKKcnaCuuffw+L95uYz0qsTWiOY3An6wBg/NdZyHbkFNVwOiSkNBcMwpgGtD
	 eCY1mCCBHXYxw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 34B64608B2;
	Wed,  6 Mar 2024 12:43:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D6E351BF2A5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 12:43:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C07B26084A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 12:43:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zze-LUXjBTeh for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Mar 2024 12:43:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 637B8606D5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 637B8606D5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 637B8606D5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 12:43:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="4452631"
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; 
   d="scan'208";a="4452631"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 04:43:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; d="scan'208";a="14395602"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Mar 2024 04:43:02 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Mar 2024 04:43:00 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Mar 2024 04:43:00 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 6 Mar 2024 04:43:00 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 6 Mar 2024 04:42:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V66w6c9vQjUcdWIxJcwhepNZNKxL5VMferuSb0ncX9wqqNiWUFPy4tb26cSd9+aiS4fxLoEFqqBS1LiA1DztxFn8VMVRtS5AzUdBCWc3bSb5iEO2rcVeyaNW2nGN4ZIUXegv/j/7DfD7Krq0c7fb/HBaWbq3jbPGjU+TtK7x/9ff3ZWM8urSLnv7jFLP0bPaVuvurJ4lmcF6sXFwe0Kxtg2QYVHG3uTuQDSu7mqQiBw1muv8LYTse1IVTR43L5NNf+ZVYhvg0+p+DV8MGfucTN6/qdJOcempAPqGW0vQODsLzl0Xzr4EYn9Cwr0axZamMvy6yJXh0kL6tFIkN712AA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OE6yUKt8v2f14AVcBY8mtHxuaqt+ZLmh3U95YB3TE9M=;
 b=PfIi7X9lzz5I1MtosJS99dnu2uffxYJbAH2jRLCYBJUpwGhikEFjZuOZuiXJ0NIakR4nKWQGl+p2R2JJQsf6Wch5lkmYQhA/AF31nNf1cI/Hqhys4Lvzfgy5K1SDsJ7NKdgVmpbpUhqkCvkKW71PHf4tH2mUqDbq4f4aDadE4tJguzbhg3bwRQ5A/x0QwK69Ac32Xl7av2vUpCpObkFZ8VOlR7JklrzE+EN8CiLAx/XfNmGLWHDfI3aaWxGAraRf66C8NIW8sWo6W+OWaNHWhtV9HVJI/x38Wr/tC3BJKbAUlyx6ZdErVnIhPi+328u2GVYCL4Xtut5sgXX1s5i8yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by PH0PR11MB5189.namprd11.prod.outlook.com (2603:10b6:510:3d::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.26; Wed, 6 Mar
 2024 12:42:53 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9%2]) with mapi id 15.20.7362.019; Wed, 6 Mar 2024
 12:42:53 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: fix stats being updated
 by way too large values
Thread-Index: AQHaaYnAz/R7qB9htUmU8LnaXNW5kLEqtAFA
Date: Wed, 6 Mar 2024 12:42:53 +0000
Message-ID: <CYYPR11MB8429D4E0A65D26FDA606D421BD212@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240227143124.21015-1-przemyslaw.kitszel@intel.com>
In-Reply-To: <20240227143124.21015-1-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|PH0PR11MB5189:EE_
x-ms-office365-filtering-correlation-id: 9518fe62-5324-45a1-2a56-08dc3ddaf0e7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CL08JjT65G/KOS7vsdsjEJ2Fp1/kI1Rp9b6paLupawzi+Uh+6t3iIbykJ1JU1zROfIMp8CB9Oqnjkdz6ffQC+J3gDnDiPrUwv/MzttCr0iTlF7HfVcrA9tFsldjPreADff4PBQieWOpt3oRTv1lcbHk91Kt5NK0CFI0CRZI3zEtXXvQ4lCkK1owhmFbW72qi3Fk+Pt50TuBnA62XFmoxwgZwtn2GhG8OOQZMIONZ+hhfWmA8dAg2iCApkI3MaBJYfxehz2spVOaZvQKJbVP9ZRHDtB6heAbQQteOkqjo8tTv/12+bCKGW6djxDLtVHcyiOhHY3TSeLVWBKWQ1V8pl9ZsBqZfBH6xeVN84B78faHfqHsvRs7FjZ60kZl9uYxgWS64BtrR1BePIBeYvcR/5aor8ov0KL0tOEa3XHK3/wYWM4HKIz6UxpnheUAlx2MpQEZpsCrrela+B3LQ5mFzs/T4kdP2varoy4ql4UppbNVKt/3scXLd5eli010/UDbodQbeCQQbLMskOmPjXSHh0F3XVr1Ht8VjyRPxLnrDFHu7npd+xd9YCW/OrY1vwWTwSwfdhmkjzbm1vkomS9Ep6kwT49cl9XhoQeeFy5D5XTIGRJlItSVRvL29L1GHxxmJnjZ+h0nGpzOPVpqYsuWfZ1VeewJBU6s5r5RWzI3zgFZa02wuh8bLa+G+1sfeR5EE
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IXrI/vLrjePbRKM+VfXTD8ih3zucoRaSX3k6TrA8F+tpmRS8xDZZtW+ngbVY?=
 =?us-ascii?Q?5o/Lu1z5qolyAsQsmmh9PFRCbwoYdNIAHMTspZWysl7PV5O4QbKEVYQCKqvw?=
 =?us-ascii?Q?9LjawbS6Nn8E1FaX1n67RQz4blKCSoXiFoxjQirXO2XR3O5suUg1xLvtNYOk?=
 =?us-ascii?Q?Rp9agG/+/8u0IEuz22vQe0aWXiW6Xg6WnBNImLwjGonfHhSj9Fx4ujhrVte9?=
 =?us-ascii?Q?51qK8BVS/9Jjkvw9K6/AjpA/TpXSmDm9UVGmjYpw0M0L23huNoGzlRSttzBD?=
 =?us-ascii?Q?r8wPB7hjG4ehaSXoxkozh1VtPzxfO1Uem0WB4QbjO8Yc0tdMcWPHJu67KJ24?=
 =?us-ascii?Q?2CzWuNQ5gsRVlhafGGbYVQ+LTUS6K/LAOh11PdtAZWTyQINaF0VUgoC+yE+A?=
 =?us-ascii?Q?sjl8solv+Gqi7kzQGGv1JoIC05r0sDE3o5EsGMIpN61Hq0a4sEQsqoCV12lK?=
 =?us-ascii?Q?nz47T0922P+QdxZSxsIiqCv4eD5qM5EkevXIyDHULi68zTyQLNMtBK9G82j/?=
 =?us-ascii?Q?G9lo13DYbBpKctCK/h3f0tN6aH67l96Vyc/h6hwg77oroPF6zI61LJc+9av/?=
 =?us-ascii?Q?vFEpknKvvHot6J//MXkSlJ0WmZ8SCi/+Z8MdtufmqYfcZvwOjLEM3rXS/0Ae?=
 =?us-ascii?Q?JCr2GDu1rYAeQ6boZRrGwkz9umvX9fv+hjgfGsqGJTZIGBAVycDYW8WWoHKn?=
 =?us-ascii?Q?dqbCjX1n3LkTfX8c7RaWg1Roop7GF2cNHBZIs89vT4deFkvjwrs54aNCqkt3?=
 =?us-ascii?Q?ZcUQQ6GPT434aYfewKg3J6IVM2jlMEX+GEjErZoTkOb0bwVuu4OWDj8Ff93e?=
 =?us-ascii?Q?8lwBoTOYJYmGPwByht4A7+ued6XcM128YWLhibi4DycaBcSqFuASTpLnNkdk?=
 =?us-ascii?Q?O4rZBdDckw8vQBoZ/HxZmehp+Xz0PTFa0aIYfa8fOpxEtup166IaaNSmSyLh?=
 =?us-ascii?Q?TKD43VES/sL3B+TBUplyfrbJer5B20Ux0ff5Q0AvX+61uSCb9j8GQqGUl4SN?=
 =?us-ascii?Q?ci2knVJJmUbnx8V6QUyi8ivBLnGyNine1COreHKxr5yekZUQLSJe/jnuBiTj?=
 =?us-ascii?Q?spj4s40qtJWb4OD6966Z7sMJ5Oe1iQ9shU2tSFlp33VTUSzsOr/+dBEiPhCC?=
 =?us-ascii?Q?buCPxTWiNqLAWd6y9Chp686aZ2OmvxI+G5KnB2H7NoxEFF0lDTFxIJorwgtl?=
 =?us-ascii?Q?Qh/FweuN9Mqmb4Gb563nyYlb2UJ9A6mGmylkWeIXOxbIbdDfKll1kMKjrgkh?=
 =?us-ascii?Q?X5hIo+zq/jS+1IjCTU7qqaz4ZE59cpYVbeK8MmctoyfreNXgKRK4I7RZtIky?=
 =?us-ascii?Q?IOG8chJ4MVuvVvRorezksFvXGMfoRrqDECWhr2aCE0XxP1shoezMjozwzqq6?=
 =?us-ascii?Q?ybOu24g5V2VA6GcYpWYsApdCHlinjGSbtKrkcmZkl/pb1kxd23PHRqSTEOQC?=
 =?us-ascii?Q?Jqy5zouL3J4IVEF0fwSm9VGwHsi9B8Qu2pXIGrtn6G4t0+ZqX+VL8Gf8M6sS?=
 =?us-ascii?Q?gvKvOzF6MNoE8M8hssxSfw9w/8gn9PLTwxdCGodobgIbMdGd4JJGFvHVJiEc?=
 =?us-ascii?Q?4HYCL3wn4Bka/DQtqGqr7VkWagLE8EWGhsiyvD09NgWSUWYGS7/q5dDiii41?=
 =?us-ascii?Q?0w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9518fe62-5324-45a1-2a56-08dc3ddaf0e7
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2024 12:42:53.3099 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: L9+T1s1AMqEr7sAwDf5Ve/9bhyzBgobzmvETAa6uj4He+USM+AZy5r28234+XrxybvcDAG+fB2Lk8q7wOla2wYOihyqkwyVXb0lJDy8c4wvskm2zfY93IXT1sTWry/hf
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5189
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709728984; x=1741264984;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sOrSngbLtt1b1UUkkwWOFN36tfx/g2xe1QA9RwV1Bds=;
 b=GJb6kYWSchBQ0J+KuJmenQ7bOc0Oxb1Wj98//99eacraZo4AQatLxifg
 ORx5w7MEuRv/TQaRpc9fl/CHP7wzAYmkVzI6tJNM40GZry67BtkIH+c8q
 HCmtx01b5MZoxW8tdaV9I64zEZVrX/Kr2B5iHbKWCgyW7kqhhU+/KHvtO
 lsKEoTMO8/Dnv5X344kEFcvymNzIL+6AiGKw/0TyTCMSvGlg4g/z6PNwn
 g1FMJNMkfaaZ1DGTRRb59d3AmYwKeJookwdDUdrYlgcmfLhiiNbDYX/jS
 UU77kIqmI3L8wY9GmZTQmhpycyVZuxOgAdwHSRWxgnQfQeers6cqw7pGd
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GJb6kYWS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix stats being updated
 by way too large values
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
Cc: Nebojsa Stevanovic <nebojsa.stevanovic@gcore.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Czapnik,
 Lukasz" <lukasz.czapnik@intel.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>,
 Christian Rohmann <christian.rohmann@inovex.de>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
rzemek Kitszel
> Sent: Tuesday, February 27, 2024 8:01 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nebojsa Stevanovic <nebojsa.stevanovic@gcore.com>; netdev@vger.kernel=
.org; Czapnik, Lukasz <lukasz.czapnik@intel.com>; Lobakin, Aleksander <alek=
sander.lobakin@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; =
Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Keller, Jacob E <jacob.=
e.keller@intel.com>; Christian Rohmann <christian.rohmann@inovex.de>
> Subject: [Intel-wired-lan] [PATCH iwl-net] ice: fix stats being updated b=
y way too large values
>
> Simplify stats accumulation logic to fix the case where we don't take
> previous stat value into account, we should always respect it.
>
> Main netdev stats of our PF (Tx/Rx packets/bytes) were reported orders of
> magnitude too big during OpenStack reconfiguration events, possibly other
> reconfiguration cases too.
>
> The regression was reported to be between 6.1 and 6.2, so I was almost
> certain that on of the two "preserve stats over reset" commits were the
> culprit. While reading the code, it was found that in some cases we will
> increase the stats by arbitrarily large number (thanks to ignoring "-prev=
"
> part of condition, after zeroing it).
>
> Note that this fixes also the case where we were around limits of u64, bu=
t
> that was not the regression reported.
>
> Full disclosure: I remember suggesting this particular piece of code to
> Ben a few years ago, so blame on me.
>
> Fixes: 2fd5e433cd26 ("ice: Accumulate HW and Netdev statistics over reset=
")
> Reported-by: Nebojsa Stevanovic <nebojsa.stevanovic@gcore.com>
> Link: https://lore.kernel.org/intel-wired-lan/VI1PR02MB439744DEDAA7B59B9A=
2833FE912EA@VI1PR02MB4397.eurprd02.prod.outlook.com
> Reported-by: Christian Rohmann <christian.rohmann@inovex.de>
> Link: https://lore.kernel.org/intel-wired-lan/f38a6ca4-af05-48b1-a3e6-17e=
f2054e525@inovex.de
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 24 +++++++++++------------
>  1 file changed, 11 insertions(+), 13 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

