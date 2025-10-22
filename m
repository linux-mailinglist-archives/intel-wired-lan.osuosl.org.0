Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 92B4CBFEAE1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Oct 2025 02:06:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7685540E84;
	Thu, 23 Oct 2025 00:06:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XXJtj1DNkQje; Thu, 23 Oct 2025 00:06:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CB05040E8F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761177969;
	bh=q3XGGK9hKNyvlHj6kJoTcUsoNiT/5SFXpstnECT4C48=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pQc8CN6SqSBZAaYvIijcyajyMg82Xe6YjjdpGDq9k1ZuJGkoxj3AGBH0a33YReU5n
	 qoE9MUCONKL4uV69TrnkAIq1pQtR2lWewSu8zMJr0+r2q1QtSdV0KB3xp1Due3wv6y
	 8Lo/jz6+UwoLae8vp/GzqjgKrfU8WGDDqS7jxFAgVGWOoB7WQatWhMDtjx2vDTTyZh
	 z3wQu4NEu8x45QhAzkj0hwcWXSIZPbKIbs789u1Ynp2MZ58nnWGpMi/4zG9h5gYh9g
	 bivumKhXNy98COAQ3I7HEWP1rwqljD20kgVwDKm9dapxflexPx9EeSW3G+jPBfWOtQ
	 KfzqQyekqJGyg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB05040E8F;
	Thu, 23 Oct 2025 00:06:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3699043F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Oct 2025 00:06:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1D1FF8422E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Oct 2025 00:06:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KXwyiVJv4H3z for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Oct 2025 00:06:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=alexander.nowlin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 52A078422C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 52A078422C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 52A078422C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Oct 2025 00:06:07 +0000 (UTC)
X-CSE-ConnectionGUID: 46F3P3kITvilgVFsp910vA==
X-CSE-MsgGUID: ujIUE24WTRW7LPDeFA4rjg==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63433313"
X-IronPort-AV: E=Sophos;i="6.19,248,1754982000"; d="scan'208";a="63433313"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 16:59:01 -0700
X-CSE-ConnectionGUID: U4PaA5zBRBWESQuLhLBk8A==
X-CSE-MsgGUID: OVdNc+1NSQ20UnezRxYElQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,248,1754982000"; d="scan'208";a="183942701"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 16:59:00 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 22 Oct 2025 16:59:00 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 22 Oct 2025 16:59:00 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.39) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 22 Oct 2025 16:59:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rvVe4hpHY0sq62DWJd+XZSphGGlq23cwwHFxDFOjetU2ACNzMXq3ugUy7QUmNqXvAf/IxsuHEp/QaEk7eaTtM/hitOm2goUPNrPh/9gmtHI+MACC67lAc7eA23dH3VcOZg7yse6v0/M/+TaVXOjdeT6JoTPu3tDn++VDgcLV9iGxCajIXJYLvXl/D4DRW++CniTH6ZKpGLpAW7r1AJiHLa7h09HwyDPis3ZtGxi/xduvf1Tx1+P98Yh8iBTDUZ6XseXfmLVwbcLwnhRXRgf2Cu7HDbPMT3DwDT5yk1NZedPqO1j3q3cinv9sGnObEb+1U7IFysnXBSDu2eT9j3BZWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q3XGGK9hKNyvlHj6kJoTcUsoNiT/5SFXpstnECT4C48=;
 b=KWA0v87P/TuTav5NgxpgirZfYi7O8XmNj7eBBxQx5vwWzfipcq7mL5UNaHtmQDZWBen7A/7WQgfUfoWluOkplh3izv6tzknFHpHxsoQi9h/jkpIwZFu+gMckziyE0LtUyLezuRltGluWtQNuUHeZ5zEX/uORSrR0nW03YDie+TKlfKnPEqVB9gJewSdET12y11g81eT1NJ0pGT50xRre/eLRpaVVu8ql6GUzAlJWOds1OAafUo+Fuz0/IaTEUlCJaCkN/pIAZfBSirUhdTLEJ1Pxs+uZbIwGQYKqvHpf7A7grZZOQ/2d7czg4/I/3wjb34kUT8INxtu3hV3wKheTCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV1PR11MB8790.namprd11.prod.outlook.com (2603:10b6:408:2b1::16)
 by DS7PR11MB8856.namprd11.prod.outlook.com (2603:10b6:8:253::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.17; Wed, 22 Oct
 2025 23:58:52 +0000
Received: from LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::241d:ef75:baf6:dfe9]) by LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::241d:ef75:baf6:dfe9%6]) with mapi id 15.20.9253.011; Wed, 22 Oct 2025
 23:58:52 +0000
From: "Nowlin, Alexander" <alexander.nowlin@intel.com>
To: Michal Kubiak <michal.kubiak@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "pmenzel@molgen.mpg.de"
 <pmenzel@molgen.mpg.de>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kubiak, Michal" <michal.kubiak@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3 3/3] ice: switch to Page
 Pool
Thread-Index: AQHcLf8g823ekE8rokmU452A4pEzY7TPAy1A
Date: Wed, 22 Oct 2025 23:58:52 +0000
Message-ID: <LV1PR11MB8790A73C50189878BDFB6CB890F3A@LV1PR11MB8790.namprd11.prod.outlook.com>
References: <20250925092253.1306476-1-michal.kubiak@intel.com>
 <20250925092253.1306476-4-michal.kubiak@intel.com>
In-Reply-To: <20250925092253.1306476-4-michal.kubiak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV1PR11MB8790:EE_|DS7PR11MB8856:EE_
x-ms-office365-filtering-correlation-id: 79fa2746-d4ac-465f-a053-08de11c6f3ac
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Ugsx6HyhostASKb4qgG6x0VgyuwmRKL9FlX4TLSb+EiXZYCepY4/GYBn/Mut?=
 =?us-ascii?Q?8wtWGmehkFN2sVFHwG4kdpgfwif+OOSwKvUtKN4sUJSnlqEoF/eGCpM7MfBa?=
 =?us-ascii?Q?TQBDtDlewP1ntxUZH1qfEm7HxlnoJWqkz8qCIys32XhfDSNXkY5EY/1RAvrg?=
 =?us-ascii?Q?02UcQutZagBXDeRJSCSoD4n32xXz3WvNMCC7jnmG1pIRUwyjsFg0ADZ9SzJs?=
 =?us-ascii?Q?/y31qD7vvQhTTZuwpO5il6SZHbc1nXfzWoeGdtzYThZoS7ubYzBCqKeqCnKQ?=
 =?us-ascii?Q?klA02HM3DZKGZ7OOmnOlX0mC0u++AbaNU/f4VEO5JkQZAaeNnvN3trV1/vqn?=
 =?us-ascii?Q?hJ3bD/NzwYFDRQR6e4tWO7hB09GSv2WiU8s0SbV6EKjm583EP0Oj5oIE/BnZ?=
 =?us-ascii?Q?7nad1WwSnekBs+vgv7FU7NLNsB2mt39ZMxKYObjaHDihs5zHIGGP5/lgNoCF?=
 =?us-ascii?Q?6+hgRepTiFrNBnMxlHO1mZ5vWw1/HWXwGjeZG1whzdKv5y+qaHaKp99W97Zr?=
 =?us-ascii?Q?eDvchTrH2EhkVQqtc2q6JWvltVZdNsNZJcHxb6pkqcemNVgewnwmI+Z06T/z?=
 =?us-ascii?Q?pIxBNCb49l+UF+xFPbNSsDl/qgSOq9NAXunTwU9Gv2JKPScol3Wa3IijdAcF?=
 =?us-ascii?Q?zedk7GzpbeCkgeq87/+ORDl7HP02nQC7jbINo3EEu3Lm7UzDXv8hlegYckd2?=
 =?us-ascii?Q?zD48IvkznMyIO9KtpO9BP2cvoL5h04lBwFdyDMLINVc4VvkxM4YG4N4TxMxL?=
 =?us-ascii?Q?27JW6oxazzR4eYmmR0iE9+bXMHs58+RIfXqlaS2fdPoc7TiDn1pSCkkRfSj9?=
 =?us-ascii?Q?ZD82XDTYmOHqoIzFXwlctZ3Lc1Hurnsq3VFu6csQQXI7CzVfK1q2yq1p70JL?=
 =?us-ascii?Q?oo0By+hS/Nd8JVyP5saDQtBWUq+jScmqwvNKUrCsRSlxqPOXXyelEywvyKxV?=
 =?us-ascii?Q?qoWFvXJYZXBFC6i/UMFuFdYyujJrWQd+VP8+gc0Pwjx5t9paT9OFZeQPabhL?=
 =?us-ascii?Q?ua3vKSopErB5JWFKlmmII9Q7NjXsUv3Rkurc7DuHOeqaFcWd45aZqmiU1t7E?=
 =?us-ascii?Q?oHrJIxgbsMugCvICwj+X4oq8lUlrOUP3rZl04x1kizAmqkaj2tPPu+wK83ep?=
 =?us-ascii?Q?ET/gbyc4xxU9aHHi2B7GEv3hcabKZIbHtpUTMcDZ1D45xuAsJXBBCzsOIjQK?=
 =?us-ascii?Q?LBTfpdueYtFdfRuo4uAJjWyL4sjawPJeqys9dy5d5tTSZXwbOcrno8OdszXa?=
 =?us-ascii?Q?UxPO8oOsmsMSjJFrZ5VHW/4kwTwKOiJN2X4RryFfi4OI1bLPld0TzNd4ZGNe?=
 =?us-ascii?Q?lZNe0LGYXc3h5hULRFn2MDfUYZEFEIxTlfGUH5yvmIDSqWPFhsSNdk6TPji7?=
 =?us-ascii?Q?/UO4aMacIJUkk5fHK++nXJEuqKHD5WkLdTeR4oS1kNo8cLL3MfLwLsYFz0Nk?=
 =?us-ascii?Q?1OqPR7z50bk38w+poXpMxDElitPOUyJS+Qz1ooT8e6ElyLo0KQ29I8OVDviC?=
 =?us-ascii?Q?Qf4rl+4paCBR+FqjEoUVQsOsQ0ibbAnHbXSZ?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV1PR11MB8790.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1xndSjLqDoYH1EXa6q6dQrK+nah0TPK3ShXCFRVo+v3IZ1A6rnYfaNot//09?=
 =?us-ascii?Q?MDXBmjNFg8XV0MuZzu1nlW0H//HztMeWEAQUZP1z0k0LmGUhXSC3m3kiSpi+?=
 =?us-ascii?Q?gfzSk3o/asIXV2KyQwaH+HTGx6oVrnfUo7df9VuwyyiidQZHmEeFmpTIHrjr?=
 =?us-ascii?Q?H6LVdaiCbBpZAvdRkm8H1T03emg30jZ6trTiUAqnvdhOlUkccxG4VmFZ/aRx?=
 =?us-ascii?Q?Iv9TSiIdI+/TX0fuGYB23Lcp2ew5skwFXK/9yJ8y5O4/4a4RHdwybMLmDZbF?=
 =?us-ascii?Q?Kxzi9Poe1SYdsSvclV8ZJOcdC8jcsgTOPZJVbvIGxpXy1hGWUkvh9CQTPX62?=
 =?us-ascii?Q?aOBrmz0h1smCI0rXqh5rntXcUSbOr2HHbETRXrA4/45xnfAb52E5bVLn6S4G?=
 =?us-ascii?Q?iBn/aHvR3z4isiHJ8BJvBewgkrtjabCd9X5i/Cr9LmSBmwdP83h/tLISMQ5z?=
 =?us-ascii?Q?mhf9JDP2LynyhAH7kQUvQv94MqQUwF0PvhAfvjPDNhFcPAtcHqar8jUV4hkR?=
 =?us-ascii?Q?icECMWQnJbJ1ZAo/aVGwRz9mb3SSXZ73wqIX3udlqphWP3dI86P6k66oqu2i?=
 =?us-ascii?Q?/kka0hov39UyPamzZElyhdsxmduIseOCj3U1z1bXXu1RMv5hGCTjAaTpPLba?=
 =?us-ascii?Q?ixRmRueUlCLn7eOkQibibUryTM/SneG0OJRyt2Ju1963P0yBu2EeUn8od2da?=
 =?us-ascii?Q?WWvNESshdjyZTo/P2AwFe/MZgq2FX6RcQM6rhkFe76GlPGyeDN041f8pE3IO?=
 =?us-ascii?Q?48N2qUjf0HGfAnR9vaj0vte/bZOWKtUWBHlLPr+mZTzZf6sGnTHug+QXdxJR?=
 =?us-ascii?Q?IOFTMwkBu+aycq4iDrdYrythv362B9A0QWWYuEA1dexnqdW6pc9X/SbD0cKg?=
 =?us-ascii?Q?QMXaNOvA+NvhLwQKUUmdff4htnTeyzg269HuDZtWxgZp3VYHg4PbVOGsikbv?=
 =?us-ascii?Q?4jcBFTQ0Dmp5P/qFnbbn15J+rFJmSd4SGL3XD/OWNjDgYF49pNAqmXf9YC3w?=
 =?us-ascii?Q?AS/hcmcebFEWUtxh3PEiALN5dUBY9iAN2p5o6fyo6+BC/7R1oLW5XQkWh6/E?=
 =?us-ascii?Q?oQFhVy3poSJYNixqDgUTzMqUiG6bJO28Iy5yxo0dG6o3J/dwiqJWT+oYs0WB?=
 =?us-ascii?Q?YJcStDsAB5hIG1zJCbudQMa8fpXrNwZXAvab3ztkmCEIRCtvvqy7ycd0duKQ?=
 =?us-ascii?Q?KSsIfGdKl63TleT91SGWw9QRYNWgJG+3gwvNgYBzeR/+ct1J67xLva43xO0z?=
 =?us-ascii?Q?D1l/FtUWo0PevOP06X8smvAMuU8g+66JNr+Muvgj+rprTPg+7NqFqsLVffGV?=
 =?us-ascii?Q?9PgMnJZGiZn9PAGMPza++40F8SVSTNZWKXreOHTbtnt3nKXVBqOBB69Df+mc?=
 =?us-ascii?Q?n8wTN35iMaJQDSjBIHKq4ZBk6pytCBlchi3gexfjJXYP67mt4OJSRPZbUb6z?=
 =?us-ascii?Q?AfqsEH0lEOloGEL8Pn/CHLmclFBjI9PpTmyrBONT3aN9CW3gZ7NnSziQTiVb?=
 =?us-ascii?Q?JAepLggEFK2sdjBmt3eOvwULKFx4gpS8uPc3vbq3CrcK4vch5tqVQl/A3yol?=
 =?us-ascii?Q?hd8U11ZVXX1fFMDBUr8zGB0ZGBRGhkPpcRhzbtk0UlTjcl6oKbTr/C3C1TUS?=
 =?us-ascii?Q?Ug=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV1PR11MB8790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79fa2746-d4ac-465f-a053-08de11c6f3ac
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2025 23:58:52.1942 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: U41kIOFoHS5CmZKfDNtQiL3cWMt7NS9Nvq+MyRBgsrGxQy46Xt7a3/hR5F0z1XQ6BUYdNe6Z8olx5gyLiPoDDA51ffTIvZBYBfrOBpp8bFg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB8856
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761177967; x=1792713967;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=x97QZUmnsp5d0k1hOev8v02t9zs9v7hpByYylXzQCNM=;
 b=fvDtNyCOCC01D1dV3PaGf3gMWqCu+TnhiBenN6GLoDya4gPU7Pcg3J5e
 NoaEbiATJzo/eFxYHeNIbEJJRFuSbpKLxqkLpEj2MEGgDluLzStCUd8WK
 WmNuJ6vn8bnIc03ehGBgBSWKJIW1VyXDZjUgemOD8dEV6sEmf5ORTlYAc
 T21Zt9mVuohmvxdvNjhwldeXXGnbF8DcHKYqKBHYxTwT9kVVFMsvzoOlw
 UZDivZgi8VP1t/qMzYB9qXAYJ5QoWuQwGCKVBE6/zi/yh5hOQQKCxHza5
 mJL45/A3EX82ziPO/6VHnxkGSZafnL7lukJdg7EjF1n043WmpsH7PzFbk
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fvDtNyCO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 3/3] ice: switch to Page
 Pool
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
ichal Kubiak
> Sent: Thursday, September 25, 2025 2:23 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>; Lobakin, Aleksand=
er <aleksander.lobakin@intel.com>; Keller, Jacob E <jacob.e.keller@intel.co=
m>; Zaremba, Larysa <larysa.zaremba@intel.com>;=20
> netdev@vger.kernel.org; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com=
>; pmenzel@molgen.mpg.de; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; K=
ubiak, Michal <michal.kubiak@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v3 3/3] ice: switch to Page Po=
ol
>=20
> This patch completes the transition of the ice driver to use the Page Poo=
l and libeth APIs, following the same direction as commit 5fa4caff59f2
> ("iavf: switch to Page Pool"). With the legacy page splitting and recycli=
ng logic already removed, the driver is now in a clean state to adopt the m=
odern memory model.
>=20
> The Page Pool integration simplifies buffer management by offloading DMA =
mapping and recycling to the core infrastructure. This eliminates the need =
for driver-specific handling of headroom, buffer sizing, and > page order. =
The libeth helper is used for CPU-side processing, while DMA-for-device is =
handled by the Page Pool core.
>=20
> Additionally, this patch extends the conversion to cover XDP support.
> The driver now uses libeth_xdp helpers for Rx buffer processing, and opti=
mizes XDP_TX by skipping per-frame DMA mapping. Instead, all buffers are ma=
pped as bi-directional up front, leveraging Page Pool's lifecycle managemen=
t. This significantly reduces overhead in virtualized environments.
>=20
> Performance observations:
> - In typical scenarios (netperf, XDP_PASS, XDP_DROP), performance remains
>   on par with the previous implementation.
> - In XDP_TX mode:
>   * With IOMMU enabled, performance improves dramatically - over 5x
>     increase - due to reduced DMA mapping overhead and better memory reus=
e.
>   * With IOMMU disabled, performance remains comparable to the previous
>     implementation, with no significant changes observed.
> - In XDP_DROP mode:
>   * For small MTUs, (where multiple buffers can be allocated on a single
>     memory page), a performance drop of approximately 20% is observed.
>     According to 'perf top' analysis, the bottleneck is caused by atomic
>     reference counter increments in the Page Pool.
>   * For normal MTUs, (where only one buffer can be allocated within a
>     single memory page), performance remains comparable to baseline
>     levels.
>=20
> This change is also a step toward a more modular and unified XDP implemen=
tation across Intel Ethernet drivers, aligning with ongoing efforts to cons=
olidate and streamline feature support.
>=20
> Suggested-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
> ---
>  drivers/net/ethernet/intel/Kconfig            |   1 +
>  drivers/net/ethernet/intel/ice/ice_base.c     |  91 ++--
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  |  17 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c      |   1 -
>  drivers/net/ethernet/intel/ice/ice_main.c     |  10 +-
>  drivers/net/ethernet/intel/ice/ice_txrx.c     | 442 ++++--------------
>  drivers/net/ethernet/intel/ice/ice_txrx.h     |  37 +-
>  drivers/net/ethernet/intel/ice/ice_txrx_lib.c |  65 ++-
>  drivers/net/ethernet/intel/ice/ice_txrx_lib.h |   9 -
>  drivers/net/ethernet/intel/ice/ice_xsk.c      |  76 +--
>  drivers/net/ethernet/intel/ice/ice_xsk.h      |   6 +-
>  11 files changed, 203 insertions(+), 552 deletions(-)

Tested-by: Alexander Nowlin <alexander.nowlin@intel.com>
