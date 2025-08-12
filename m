Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E39EB22D77
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Aug 2025 18:27:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1D1C2428E8;
	Tue, 12 Aug 2025 16:27:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KH5LK4dyp2kN; Tue, 12 Aug 2025 16:27:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6293F42894
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755016061;
	bh=IKVyx0inhvv69lF/N9M5CnlIcyDI1iDcCDFPwsxfEDo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=o+NBcEpcNOUoO8JlA1fj/xoxu1rIpMHEgiFjttI60rbIgZYyNS/yEZvNxIFYIWx6Q
	 YoidjJsihjoQ3Zhqi+3NjudQOCSAKbUcmFt7m+wTkKFopaOqVKyC3QpcETStvzUP0T
	 97u8NoC29dO7qvNRmGHyFPjJ07HXr0v/kICGJEwIUoHM+iX7QSOJm0V4Mz0J5ysj0I
	 omA38hTzpU/zcLIfe4q3TgWur7LQLZwpqhHhEFJOhZgEPNkg7nDPheqPDJCelwDtJ2
	 pn54J2UEhvo2Xr/4lfTCbdz4sZbg7C5KI6Io77GhEfTq+x+4vtyePowzG1Bwfu7Jqt
	 FOB4/xR8S/YYg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6293F42894;
	Tue, 12 Aug 2025 16:27:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3754A183
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 16:27:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 293EF84645
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 16:27:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E8Q4sNTGQNNp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Aug 2025 16:27:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 73D738463E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 73D738463E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 73D738463E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 16:27:38 +0000 (UTC)
X-CSE-ConnectionGUID: ZGpyBxV9R7aNhVxEKX6fuQ==
X-CSE-MsgGUID: wagg3lJBQbioVvNtJ/pgog==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="57378679"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="57378679"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 09:27:38 -0700
X-CSE-ConnectionGUID: n7wDa1etTgq3Qu3n9/v7uQ==
X-CSE-MsgGUID: rkH/mygmTwuPs5mwoxqszA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="170458063"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 09:27:37 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 12 Aug 2025 09:27:37 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 12 Aug 2025 09:27:37 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.74)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 12 Aug 2025 09:27:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NEhCk1K+1oRm95t4KrL/8ksG7zEdohinr3plKORZ6Qrkl2BHmI97eHUhBICUn8W4+ZTuavhurziZ+ITYDub/cq0iK3XmQqKvr51fjc5ZCmmQ4ev8whrhFOlKfD+3llsBp38OcznXG4ki7Ax6c/CWvESdp44e9HM5BqHe1k4L6tTCKrICiDbj1bW4MGAYb5/kGwoONFyUZbti3bb8O6ZsIHK/vOuSZmKmTAfKA2UobBbXK9v9HbM++ZSfRwSAxLiF2bUbOMd9zPJuhq/4xaJMPJpOIz0cOHcYMXaFraU6FVxGbHeET7MEUIFre4r8ntGe5TTOXb6PUDp9M5950FQYDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IKVyx0inhvv69lF/N9M5CnlIcyDI1iDcCDFPwsxfEDo=;
 b=JFfrh54B87J1tpUfXcnIxSt+25pMZlosRnw+LMdBzWaK6dpRTpAQa1aW0TseQPdhlrKPoBTAO3DzrBcXK1qBs4xzIiAg9QZxkjBIA3tAMmCozYX8YSunAMTgXn4LNDswZ9GI0JH4VFBlB3BvuEp0d/4wnJ9NTb987Odur8YZWxFBZc2biGM1GhbzAl35g8NcK8mPETrTFxejlZyBvku3k5FwDAhKbiKKDU7iNjHmi3/urjzkFkZil+rOae7HjKGBwnSgayC8dfjTBfnPGLRng1OYlnr8UVx07ce+TLxJ+SwgU8jjPqourqD5/OI/zmYKYtMJCI5u171kibGe4OU7mg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF7551E6552.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::31) by DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.13; Tue, 12 Aug
 2025 16:27:35 +0000
Received: from DS4PPF7551E6552.namprd11.prod.outlook.com
 ([fe80::29e3:35cb:6d5a:4d7b]) by DS4PPF7551E6552.namprd11.prod.outlook.com
 ([fe80::29e3:35cb:6d5a:4d7b%3]) with mapi id 15.20.9031.012; Tue, 12 Aug 2025
 16:27:35 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Greenwalt, Paul" <paul.greenwalt@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, "Greenwalt, Paul"
 <paul.greenwalt@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v6 1/2] ice: move
 ice_qp_[ena|dis] for reuse
Thread-Index: AQHcCt4lOopHUXx+Y0qCFKCFPnNLn7RfNiJA
Date: Tue, 12 Aug 2025 16:27:34 +0000
Message-ID: <DS4PPF7551E6552D79E0B83B90F8D0BB823E52BA@DS4PPF7551E6552.namprd11.prod.outlook.com>
References: <20250811084406.211660-1-paul.greenwalt@intel.com>
 <20250811084406.211660-2-paul.greenwalt@intel.com>
In-Reply-To: <20250811084406.211660-2-paul.greenwalt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF7551E6552:EE_|DM4PR11MB6117:EE_
x-ms-office365-filtering-correlation-id: bf2cd191-a4d9-4e1b-55f7-08ddd9bd2506
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?MNwyA6yCUVvNQgykn6/sYv+9yFl5hWTGqgmoAmzlh00oLOTUGYwFkfjX4daI?=
 =?us-ascii?Q?ovF8DOjce9cHPFOMdKF8ji0KWhpnNV8ebiXFXs4HKh+3JxuAPa8SfrW0bka2?=
 =?us-ascii?Q?UqLVixL42sXpj2YpOaQPpD36+Zdl4Th+ktnOO+/Du3Z2Vm9QysAsr2mnaFbX?=
 =?us-ascii?Q?DpZ69kI8/HOzBXsx5OxXm2t3Yio8rpmB+E6pNanWBKtjARSNB6AeBy8AmSaV?=
 =?us-ascii?Q?pDQ3/4pXzVxClvl8UBEyfrsJo0FOxDprJlrjInSnwDjV4MekBYC3NJqxgIek?=
 =?us-ascii?Q?fhV3XoWT4xD7QRd/+Qfwej5yOrjETiwsmjWpq4zZR2GWGJ8WcNlWGla7QQl7?=
 =?us-ascii?Q?f9YLXBJ8Epfxrc1/zULTRBRXMbFif8pV9p93kyUdrYPgZ4PNp7QkchgH/wA+?=
 =?us-ascii?Q?uUlRIN48U+1eW46HDdjtgrptqTLMRCTrl5yE5pyEsqOpzP3TKUKjjqq+2SB+?=
 =?us-ascii?Q?NOTwOOcpvATg5BKOQPU2lkHY4OkppnfNXWtZHB7iUm/ogCmmdiMtZ9J94eh0?=
 =?us-ascii?Q?pEr3hj5alCwSvrPel700nzvQqU9WCeK5lTmXEzWVpr3nkbxsEQoB7N5Df1y3?=
 =?us-ascii?Q?y5pCjOBG5MaPC8fDo6q+hd+c3N4kzTKqSyKG46Y/Kto8pwCIaWncFOpQdjWN?=
 =?us-ascii?Q?7TSqh5eVyfN8BYxtVuNn9OCsRlnMM7TM7NnfvzTqPDrjSBsK4pGXIT4AmMl5?=
 =?us-ascii?Q?goyvm2olAELMncx2jxBiyAqaOJtumc7M6Xy0Z80bugdL+rzCEpqFs9txYwYK?=
 =?us-ascii?Q?3PaGsbfAAzjYABaUHxix1H5QIIVBR6OsSg/aPh/gyG5jv/LdFXJpiea062ZT?=
 =?us-ascii?Q?AwvzkdatfjiOeibMtiobe83olYCKQMAAG3l5uJgeFy7dPgDombfDsWvOETXL?=
 =?us-ascii?Q?K/tc9BvuQg5lFQz27dHRILVAnnSfNVVCSE0vn3YxxDlgcpdxEfudb3JhLYLb?=
 =?us-ascii?Q?RCJSfY11nEK1Wzxifkn5XlsBBFlXVrMFwoJ5YrJ9Dm95omoRxT3h1Y+S4dpE?=
 =?us-ascii?Q?4D2nvXWgUl+QhALQvulIfEUtIZqZ1hBJgwA04FVN8jcceJhVm8YCZo2QSamI?=
 =?us-ascii?Q?7NoFxuCTAPv35NelYAlyKnN+FD7rAZ02dGcukNzngZteazaDfJ57vvFvKBcN?=
 =?us-ascii?Q?bgC5j/+05uNV7wiJRie4fToaE4bjNy5ZJOcv2iY3UFP+bOTRglWUC3J0M9q/?=
 =?us-ascii?Q?qGg+bPgPV/kl7GTURmCu8q6Auo+G72gBfFu9iwx41IsYEw4JqbNaDUe17dsx?=
 =?us-ascii?Q?lr/vmkUb8wibHZgtIT0oNpMlO8VHVzb9EvBEgQxHw3HD2cKzy26D6YRz9aj9?=
 =?us-ascii?Q?/Kfu6CZX1fjy0gNdk73tJP3cgaICCHPpcwop+jndpbnuME+z4Qc+WGDMbt83?=
 =?us-ascii?Q?r6Kxx2xNrDfi5tShHHW3/4gt0YrGG9Vxvi3jAXF0OuWyes59ntouICFfHnKN?=
 =?us-ascii?Q?cGTcYnJSghz9lTqLQoWZEbZoDbdR2V6udus2mJwglDXU7gsXRC1Q+g=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF7551E6552.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1BQHjU0+H7MKdBS/Q5UcaHMUETj9zxUKbJRtiIqftBmocb+0I6tTYYaN4UqM?=
 =?us-ascii?Q?pyk/W/EtMDhh6CH7wSxsdhtYED2crZvJZjJZA/xpK2OSJMJ711uX8oDUaTUd?=
 =?us-ascii?Q?9ljwu7BWKpZj6szE0rFI7oM/aJxZq4RIhtqKBc1awHvsXJcZnU1hKWfAiCT1?=
 =?us-ascii?Q?Hfg2OceoYlMGA64GZS3cm4cKT+5tIymfI1PEiW3StJ1uBIl8KLMrp2Br72Fr?=
 =?us-ascii?Q?4+mPQiMzysmxsbUwAAsO1946S1iVEHB5hfiG0unbGU3IDdLn5eLW2Ije+OG5?=
 =?us-ascii?Q?iLzIfuwHI/NeyYudZJIQmUoLlBtXodupzMb5WPlC5ij5cYcNR4ao876S0CBv?=
 =?us-ascii?Q?a4iwcW9lZSD4ekH0pt02dP2f1nKzg2ClIHq7V06ItrMUUFovSwfawBOK82kQ?=
 =?us-ascii?Q?Td1g6yJ59qGZS7+Bk3QBHFMErjv1s26BC5nVuKr37LBHFYNzl2kNXd0Yo9ZM?=
 =?us-ascii?Q?0mLk4BzyalA1ScjQ+tWpzqCeT1H7Pv17wuVHATQoU5zV2tp0naLOFIz7Dbsh?=
 =?us-ascii?Q?86EymnFEndTE//LiA8xgVDHvmPEeHFlpskL9Ux7K82p8rK55cOql3gChE9Hq?=
 =?us-ascii?Q?jELBTL/qX/5/U6DakbkZXHpY9cj/6+hmHYiM9itvJ8C4m9EqTsvj4ZjNRPzP?=
 =?us-ascii?Q?igSB1XP7zmENeqH5/Tmyj7YeWxg51zCUuom0Qht0xo8xcd8Sk7fSC0jMAvn/?=
 =?us-ascii?Q?xLztO4GZ7uz7FRuN8PgLLOSg9yY69DX0jFYwodXKT71c9fBZL0j9ukCY98Ux?=
 =?us-ascii?Q?LhT0O6eZw6P7weKoAMWFtxFFfaw1xWchM+bpcC77P12DRRVLDOIX9R0TQ7Jh?=
 =?us-ascii?Q?0vqGEdVeq1BycPJ1Gkd7Be2LTm1uzmlp6ACtEkNtOs8hAyvA/HaD2ze3G3RG?=
 =?us-ascii?Q?QUE8rLR9/uo1YLWfkvKHzkmT95iOURn1c7ujXvQyc2RBHBUoIP+LvrwuLHf/?=
 =?us-ascii?Q?JoFnMJFLz/IcZsNqa/UsyOp8Sf6bsPuF8eTR7OB5PUJy46rk2pwGRERVJIuh?=
 =?us-ascii?Q?j2QlH1HN25echEeMRvFgfnKoeDMIE07CtXB3BDHd6mbIax/GsdDUe6nngs1m?=
 =?us-ascii?Q?W/Sh9vupf6g9U9KAHIci+sgRphwwCHKZwnUmUKGLNzB+rB/YvvUEoyS65+OT?=
 =?us-ascii?Q?vpRY8bV4Pq/t9wZ4HEVPWRgTrpcaSBK1n5Yska3ekvpzrNbsWi7YMTEaMEI6?=
 =?us-ascii?Q?huXqFcLOnq+eHEko9c4j75A8p4Msy4b+BSkJ4EzN3ntqfu1p1VNcHAV6asRb?=
 =?us-ascii?Q?Ay334lv8DYzfteF9b0gyeeoMhmYvtH96c8qegEC0WDDvCgIxm2zmCzku+F8c?=
 =?us-ascii?Q?YPXsXdHBxEwIGEPGLMlZJL1AA+KJXcECxw+gJl8G6XARtP419RW3mADZ4aQD?=
 =?us-ascii?Q?mJYu+/aF/S2XqtwV5yaeVHIwbb5aLLtQGVqYPu++cEn2LWYWQ5f9D7+tkg41?=
 =?us-ascii?Q?OGOPygLkrGjphbcUS+L4ok80c1K3HVZPHsRjPuXJFOG26cCARU35l5xc+JNf?=
 =?us-ascii?Q?K5JXSSz5s6aiEQeucA6Cdm9YHiq95TnSazqvPC+aMJh3jYHj1pM+TPc55jTf?=
 =?us-ascii?Q?dIqLfYK1cFqeyWmx3e840UrDng9Ys4lz1OjN8xJiQiYnqp4MnswLUNkbImDK?=
 =?us-ascii?Q?OQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF7551E6552.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bf2cd191-a4d9-4e1b-55f7-08ddd9bd2506
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2025 16:27:34.9655 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8mQUqr165iIc/473AAMSXqW75gdnIwkDyECto5WmNl5U+wq682FsndWJ/R7m6AUy7eh+kNFQRYn6T3wrpBjy/juUl5TRiSrie7cwSYlBkQg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6117
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755016059; x=1786552059;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=w6Dz2rfScMaWgXuoVyq5ACAnMLx31NkChdyoqz9Ylz8=;
 b=hPgyj9jsj8T8ur9ivly33yGnnSU9s/gLZtITr9P0N0ZMvjiPFxqwMutj
 DY+D6jVDa7Wm+0PP8Iwc4AdhXIf58g2YxOFhzMavbjwxChwzLv49PV/VD
 LoQGazQgrgkR2/GgxyECTEP3NYgtvLKm7WpjJFk+JfV8xVs5c+MQm9XOx
 sCYblg7EpRb7oPuOWrI6EnI1KSmjxzCeKCXVCF6PZ4ci9d8QVbOKLf8v+
 avEzrkIWhBxtRDsfFuL+KFIPruSipB4gLCYUn7l5bwA/g4UmSLyFMyWpK
 qnHpFFJ7rmdj+umpOItoKaryFYO7LoliJG5gGeLxALIznIhSFN2yEXYEP
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hPgyj9js
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 1/2] ice: move
 ice_qp_[ena|dis] for reuse
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Paul Greenwalt
> Sent: Monday, August 11, 2025 10:44 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>; Greenwalt,
> Paul <paul.greenwalt@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v6 1/2] ice: move
> ice_qp_[ena|dis] for reuse
>=20
> Move ice_qp_[ena|dis] and related helper functions to ice_base.c to
> allow reuse of these function currently only used by ice_xsk.c.
>=20
> Suggested-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_base.c | 145 ++++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_base.h |   2 +
>  drivers/net/ethernet/intel/ice/ice_xsk.c  | 153 +--------------------
> -  drivers/net/ethernet/intel/ice/ice_xsk.h  |  22 ++++
>  4 files changed, 173 insertions(+), 149 deletions(-)
>=20

...

> 2.47.0

