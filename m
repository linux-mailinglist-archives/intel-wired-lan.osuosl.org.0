Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OBITL5tYAmosrgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 May 2026 00:30:51 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E7069516EC9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 May 2026 00:30:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8EC3B6081F;
	Mon, 11 May 2026 22:30:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5AWxBY4HIeD9; Mon, 11 May 2026 22:30:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C5F5860815
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778538648;
	bh=dnl7bVCGNrwJzrtikEp4mHTOoRFrCH/tn7a1KCo7FiI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=eOC8vaW77uRb9d3kDp4kWA4407NX3ZP0TKiyx+UT6qRZ1VH01v/FXtnFVB50lXakF
	 Rd6G3P/il6bkdGuVkHSA2ojUyhMOPP8ITvTda0rEqbHfzPcjtUSLMPsxTtXti7YZsV
	 1cgIKvNFo0hlgLpu+tbgtg5b8p1X3aeN7Cy1nPc4gyM7je2QM50FizGXWsY/phM2z3
	 7AbsDBY8j57TDFCZ/2A1fTgdiqLqfwBi8vWDYVn+Pkr/ao+yW2rQluFNsMGMKtAsll
	 FiF9JRoZn4dhjKaw5tJK/yUui94KVMbbunp9ygvEY3jUYwrTjFesljAfNvrhGWhD25
	 jjsSvuVYq7BiA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C5F5860815;
	Mon, 11 May 2026 22:30:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id E872B15F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 22:30:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CE2C540287
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 22:30:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cDFptbkXEQMV for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 May 2026 22:30:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D4CAB40284
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D4CAB40284
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D4CAB40284
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 22:30:45 +0000 (UTC)
X-CSE-ConnectionGUID: fKk88GkRR06vOGUwOHN69g==
X-CSE-MsgGUID: rB8M4h1bTHm8mfUZsohEvQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="90904386"
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="90904386"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 15:30:45 -0700
X-CSE-ConnectionGUID: KQIadF/8Q9WoEPVu/OdSNA==
X-CSE-MsgGUID: NYP3t6YpQfqSK67HaACvfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="242550948"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 15:30:44 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 15:30:44 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 11 May 2026 15:30:44 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.62) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 15:30:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IXcyeSdcALaT3tftr38ZYxFx50Ehl4iz3f8mKIBRlMgocVbPsOLy9wQk1/F3E/t5+5RbrJUzu1w6FIohrqfpUbmdXhbwpBNCc9wcWMqWP4c5DBxxY1Nb0IKd4+lxEQ5OmQhn6fmTkgqoInNmC2XdeLVNi8en5hxrSjsN57f4iG03gH89VCCmacTEJ7EYLl9lUNRqbqeqs7HeYKOynTBQk2P8vIWi8RNckTi8Rtm3EO8HBK2lxkYt6qgbHOPqjYusox7pRzxN3bPR1AkK38gKF8h7WI6p9kG4FVd8wNNvICK3Jl7t1gKSEVGxv3AtuFKlVTOHCdDn0g+RHry+PoSQoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dnl7bVCGNrwJzrtikEp4mHTOoRFrCH/tn7a1KCo7FiI=;
 b=OnFnaALoypbvxwe2qCfCqgatpEy27IGBIXeeq0/J2gDc/iOpUdocxmZTls6sKlli/NjdN5zWcQRuBHc1cTj3IhBe9gFfirXePAvxInE38DLGTijeUBe8CP+f7wqSRHbRtgM7JFg6bR8jyA0mQJ4des6bY7xUUglbFdTCC5Y8whxVDuvE7hiy057+Bq1ovHRmoxl/UUBaB/NTlqxm3CbCYRUv2TRt0IDK9hk0QWmCNdGpe9LEcoL+NgJcgKXAtPPH/rA4ldT+d9dwK7uVWXKUIxaD37SUOJt30iq7LI5ZC4bLA8QfxV19LwUdKEciodPTGqFjXh6FULXYAmpb1zHIXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6240.namprd11.prod.outlook.com (2603:10b6:8:a6::6) by
 SA1PR11MB6614.namprd11.prod.outlook.com (2603:10b6:806:255::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.23; Mon, 11 May
 2026 22:30:38 +0000
Received: from DM4PR11MB6240.namprd11.prod.outlook.com
 ([fe80::a89f:ee6c:3596:df18]) by DM4PR11MB6240.namprd11.prod.outlook.com
 ([fe80::a89f:ee6c:3596:df18%5]) with mapi id 15.20.9891.021; Mon, 11 May 2026
 22:30:38 +0000
From: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Vecera, Ivan"
 <ivecera@redhat.com>, "vadim.fedorenko@linux.dev"
 <vadim.fedorenko@linux.dev>, "jiri@resnulli.us" <jiri@resnulli.us>,
 "edumazet@google.com" <edumazet@google.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "richardcochran@gmail.com"
 <richardcochran@gmail.com>, "donald.hunter@gmail.com"
 <donald.hunter@gmail.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "horms@kernel.org" <horms@kernel.org>,
 "Prathosh.Satish@microchip.com" <Prathosh.Satish@microchip.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "davem@davemloft.net" <davem@davemloft.net>
Thread-Topic: [PATCH v7 net-next 4/8] dpll: zl3073x: allow SyncE_Ref pin state
 change
Thread-Index: AQHc2IZT17ouGC1/RUSER0CKvInaIbX7Am+AgA53LcA=
Date: Mon, 11 May 2026 22:30:38 +0000
Message-ID: <DM4PR11MB6240E4D43DC313A4D984893292382@DM4PR11MB6240.namprd11.prod.outlook.com>
References: <20260430094238.987976-5-grzegorz.nitka@intel.com>
 <20260502173309.3849677-1-kuba@kernel.org>
In-Reply-To: <20260502173309.3849677-1-kuba@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6240:EE_|SA1PR11MB6614:EE_
x-ms-office365-filtering-correlation-id: b35433ba-78d8-4206-09c7-08deafaced3a
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|56012099003|38070700021|11063799003|18002099003|22082099003|3023799003;
x-microsoft-antispam-message-info: BMmgPisb+p3GiWGR75hGxidxAegupL4rMmC3/pqSNC4w5Qyu3GEpmQDW8TMT+83A6v+Gv2fo5LuKsOn/L+/b7mxeqbSqIZMhX8y03jMdGwtA2sXpCmxTVMH1L+FCKhMMLrVrmfV+QiHfhO+I8G4rtVSm9FQV0pzem8Is/C9L77vD9UeIYstWroVNRqWlysCnEVtlls+qOWUsnpc5V+R/Pk2oa4owJkUmXL/1YUUA6QwYujQ7FpT39dcNJtG69E1/1dEdNhmYUPc5Aj4R2VQqxR9pjoNwQZ88hASarwsf7ojItbm4wlDdBrGDTQ14vyzeGSQJRyRPMQv5WRBbURse6bX8Rk17pot3FxMmo7KZRNA2wGobevCVB6hIHvm+wck4ZEP/THtHedPvjUnesp48k2sNe+NvyTPupxNagm4VkVzq3PCaq8GfwQ4KkZWKo+D/v5ba7/YviUq3AKDm5DUcixUd3dOQWgx8Xp3qde3PMm/AZopmJgiMSDu0DBWyPHxMWoHs8ep8IX+58uQEKxLkOm/bgXmiWSDfCrH1zfKWGrIljoWLUAABjHjsBjeCUNbITs2NQ6hrcXor+AN08u3hOiL2mRQ0jd8NNCFjvxoKtxA4KoqqwynusWRwfcIuKvCCAlZz9ZWGeLTme4ltAGIen8DgJO9Kj7O3kGXLTRInEYyDmeEmkxF/QU0QR5BqdoGM6oKfgep2DgNx3odi1aCuQYdcts6EXacIgXbfkISS1r7N0Qyk53X4PQ2E1bffTLSL
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6240.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(56012099003)(38070700021)(11063799003)(18002099003)(22082099003)(3023799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?XlmokHtr7Wf+AMRmgGp0QPK5ouVSacc/xA47XjzHytLMxx0YmZKdfRWQOcOr?=
 =?us-ascii?Q?tFjrovcmIXPS8CK36n33uEi1VtKIV9kYSkTiwAx96XDh0Q99MAdFeAm/GXBl?=
 =?us-ascii?Q?D/bB1KocktMn59Avjm4+P9deVeFthRfBn0C6yWMzWB54AF6ftIXkm45QLQqD?=
 =?us-ascii?Q?K4V/dnYVThAcYeZ2YZQPKLPMS0WciN6TVxsIS2d0Cn4oNqZrjGPMYL4hEXN7?=
 =?us-ascii?Q?KmiAX0U2qhyANNnaMYZN6CaBWZPwVG98/EYH5asdgd2/QQniZ6TUBzlKNiFn?=
 =?us-ascii?Q?u3GfN//Il3BExBPCc5WimP4shWOaNh8F1oiTwLAKnUMbir6rSKK5QD+zyqiQ?=
 =?us-ascii?Q?PWKzvWLV5lO0KREFpFQFaZCd0rGgGPzP9pVB8Ysw8WRnjxxbeCy9PcMhd5LK?=
 =?us-ascii?Q?YItYLzdwEYuu/bcv2sYQI7g+1e3CtO/Jgq6uiGniEdZGkgsYTcIaotoKHTbv?=
 =?us-ascii?Q?cpyBZ/oN66HtxIscXT/XsbqbeAkg1q3dFXhrwFhIBqsjKNgCUtaksVYvdAYd?=
 =?us-ascii?Q?Q8wDqtzKbEUbC7ZKODp7SC3AAMpxovf3aiC+mjpw+pDHvrSwZ5q2rGUtjOx5?=
 =?us-ascii?Q?eTrLJbKz+qZf5bJMBGgnnJRMqE4HJz+cYmoIExZzOHS3I0ZPJzMeP//NzssM?=
 =?us-ascii?Q?uCIEmeXfzeaEYh0mBgmZKwhrxgthJdH/Z48jyXhOuwH3YI9HiePvYfTFBxoC?=
 =?us-ascii?Q?KyECd2QqmODIrAGsQ7nem0AJ+ku8L8B2WFlnc7Saxw1xYBUH2s2D7MgJc8KY?=
 =?us-ascii?Q?Edpo3bAd4v3rST6Z6On7gqECLak6sFB8PSQhiaJFFYLAi1dnCaS0QZlNkPpa?=
 =?us-ascii?Q?aR/RBwTKTU7bqlLZU9hSwgnNeNt/Di0H8J8P9rINSjAHgun8sNy+l9GVWRd7?=
 =?us-ascii?Q?/SXh6SghCJy2qg9pDKPeeqYg+S7x559T1HzorZhqEpvcaGNcHV0ertUZP+DE?=
 =?us-ascii?Q?jRfncFS3Ge5MzKZGdPW6G083kWc6DeuesF0AyF4fcW4yIRpyFOr9AePupWYd?=
 =?us-ascii?Q?yCXwzRPDZHokAGvErmE/pMOXiuE/ie1LHytT+s/tekXNmt5x/mVJLqUMqdBK?=
 =?us-ascii?Q?XAfooaT66csQ3MEpD7nW0c6zVAVtQVhbaxSmNtuZqcCfwUBk7Nl/+25m25qu?=
 =?us-ascii?Q?UEVZyxLQnRu2A7JGWdATQoJSdH653vcunDHK6dgWbq6d5E4J6/tV21cs3xSv?=
 =?us-ascii?Q?7HEjB60A5O9Wpu2NcHfezWTwWSD2KXJ9E7sy7GQw/gKxFWOg2KyOHVr+EERH?=
 =?us-ascii?Q?AOD/OEUFgfxZ3x14VwS9rhVshq9zApF5o5ph3AGsZ9qhGEPWsU4+FlXjdJ+1?=
 =?us-ascii?Q?wtfnmujPgcJ3HkKcsqPI4Q597x86JWQLn3mg3Y8WB3TIakxBcGKjXOPhef0s?=
 =?us-ascii?Q?xYrb+RWK9vK/vE4MYs7f/2YpeUZpQENrQlxrno/2Z01+gn5QsBxUZi99HBhP?=
 =?us-ascii?Q?sPbVlR/tuHeuYozsknbXc6J0+66xB1POTwR7rOCpaAB5novLpe3REyhQQe3M?=
 =?us-ascii?Q?75nwbGQdJJBJVQo92ldOqC8notH4uK5e5KthUd9sfgMeBnNLnRQdjfV9VjEn?=
 =?us-ascii?Q?RiI9AoRz3drQsLzEIgYBOUFc7kHUIiMkn6qGr/w76AqxEtKLisUEC2IzJ8+y?=
 =?us-ascii?Q?rE895Rr9CmX2B6v7J+W3e3KC8Sy0UMJtWs4SOgXuontpKmDQYKPVNLFnNYMT?=
 =?us-ascii?Q?Jw3VakzkbPqoDbu7I4ymcC79WpcgEIoO9TMwjzuBg9cgeRyOImIvNOXuvgq6?=
 =?us-ascii?Q?uDojAHAzNQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: NaoKVt4euh89OzzxMe+ql25eyzPxkWXGXGdgcD3rjxQZpmZV2NbxTZidAin3q+Wdm3WZamP2Va860VIP5kId9k80P0FRR8GoCqN4dQUCVi+YCoal+Qn2Z5uOiHD5wIgwp/qWe0SvQYb6EqQiO3PkY5SICGYpgvA8csWa18CD9d2cxdJn/l6wmU4e05bQCuBp3LN2F3gK13EIFqvW6J0IZ/dmi5fVznihS3oCo5znv/13rILLgJANQM/GHi7j4CS1lfBHWC/IFFFvcjFkqsJDK4fyDxWVYQqTGZMLA2tZIzqJGmJn7mWZwW46gvVc/8MFmBVdDDEORbIL++orjijvBA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6240.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b35433ba-78d8-4206-09c7-08deafaced3a
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 May 2026 22:30:38.1778 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5fx+EbefHJGIg7IKv9EAn+rtUSPvC7ioMZsaSX/XyBcKbEgc/smzDdJFKx3VssIagy5ObuOwQKpNQsUKKhh/m6AOrRk+ktqFFta3M58sKw8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6614
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778538646; x=1810074646;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6D1VEx+7tGL9Uhj8n3iyoFZBFldREo9Y/nJ//kQSLwE=;
 b=CVorrlEtLL26ljmsR6i1XXeGs6pG+NvFIP8X2w5kICUuKoibGhHiTSc4
 EcY8UGBH6dADMJQ06q7h3Xs0YUZKzE26lUUxCfA5VsmjyJXgsBrgV9e71
 cQZJSmpvgUEqu2iCNA4vxuMXnAmDI73lQ9pVtuhr74OuaYNTGA4mVHYNO
 /GF8PQbtYYwAtouZIhBCeOtJfjheJogXxTkmqA1ySq1dUijKnobHAnBr/
 cqtWAQw/gEzZigLzLZlXHJ/FcUoGGZzxKiFWbcT+d3oaD5hHjQHkEmQ9R
 nxbMyR56jTlt8wwc5R22MPbO5eFYu7bG04WooymByMEm6CLvmkMMy5SlD
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CVorrlEt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v7 net-next 4/8] dpll: zl3073x: allow
 SyncE_Ref pin state change
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
X-Rspamd-Queue-Id: E7069516EC9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kuba@kernel.org,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,redhat.com,linux.dev,resnulli.us,google.com,intel.com,gmail.com,lunn.ch,lists.osuosl.org,kernel.org,microchip.com,davemloft.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Action: no action



> -----Original Message-----
> From: Jakub Kicinski <kuba@kernel.org>
> Sent: Saturday, May 2, 2026 7:33 PM
> To: Nitka, Grzegorz <grzegorz.nitka@intel.com>
> Cc: Jakub Kicinski <kuba@kernel.org>; netdev@vger.kernel.org; Vecera, Iva=
n
> <ivecera@redhat.com>; vadim.fedorenko@linux.dev; jiri@resnulli.us;
> edumazet@google.com; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>;
> richardcochran@gmail.com; donald.hunter@gmail.com; linux-
> kernel@vger.kernel.org; Kubalewski, Arkadiusz
> <arkadiusz.kubalewski@intel.com>; andrew+netdev@lunn.ch; intel-wired-
> lan@lists.osuosl.org; horms@kernel.org; Prathosh.Satish@microchip.com;
> Nguyen, Anthony L <anthony.l.nguyen@intel.com>; pabeni@redhat.com;
> davem@davemloft.net
> Subject: Re: [PATCH v7 net-next 4/8] dpll: zl3073x: allow SyncE_Ref pin s=
tate
> change
>=20
> This is an AI-generated review of your patch. The human sending this
> email has considered the AI review valid, or at least plausible.
> ---
> dpll: zl3073x: allow SyncE_Ref pin state change
>=20
> This patch advertises DPLL_PIN_CAPABILITIES_STATE_CAN_CHANGE on the
> output-direction branch of zl3073x_pin_props_get() with the stated intent
> of allowing dynamic enable/disable of the SyncE_Ref pin.
>=20
> > diff --git a/drivers/dpll/zl3073x/prop.c b/drivers/dpll/zl3073x/prop.c
> > index ac9d41d0f978..acd7061a741a 100644
> > --- a/drivers/dpll/zl3073x/prop.c
> > +++ b/drivers/dpll/zl3073x/prop.c
> > @@ -215,6 +215,15 @@ struct zl3073x_pin_props
> *zl3073x_pin_props_get(struct zl3073x_dev *zldev,
> >
> >  		props->dpll_props.type =3D DPLL_PIN_TYPE_GNSS;
> >
> > +	       /*
> > +		* The SyncE_Ref pin supports enabling/disabling dynamically.
> > +		* Some platforms may choose to expose this through
> firmware
> > +		* configuration later. For now, advertise this capability
> > +		* universally since the hardware allows state toggling.
> > +		*/
> > +		props->dpll_props.capabilities |=3D
> > +			DPLL_PIN_CAPABILITIES_STATE_CAN_CHANGE;
>=20
> Is this capability actually supported by the output pin ops?
>=20
> Looking at drivers/dpll/zl3073x/dpll.c, the output pin ops vector does
> not install a .state_on_dpll_set callback:
>=20
>     static const struct dpll_pin_ops zl3073x_dpll_output_pin_ops =3D {
>             .direction_get       =3D zl3073x_dpll_pin_direction_get,
>             .esync_get           =3D zl3073x_dpll_output_pin_esync_get,
>             .esync_set           =3D zl3073x_dpll_output_pin_esync_set,
>             .frequency_get       =3D zl3073x_dpll_output_pin_frequency_ge=
t,
>             .frequency_set       =3D zl3073x_dpll_output_pin_frequency_se=
t,
>             .phase_adjust_get    =3D zl3073x_dpll_output_pin_phase_adjust=
_get,
>             .phase_adjust_set    =3D zl3073x_dpll_output_pin_phase_adjust=
_set,
>             .state_on_dpll_get   =3D zl3073x_dpll_output_pin_state_on_dpl=
l_get,
>     };
>=20
> and the corresponding getter hardcodes the state to CONNECTED with no
> hardware read:
>=20
>     zl3073x_dpll_output_pin_state_on_dpll_get(...)
>     {
>             /* If the output pin is registered then it is always connecte=
d */
>             *state =3D DPLL_PIN_STATE_CONNECTED;
>             return 0;
>     }
>=20
> On the netlink side, dpll_pin_state_set() first checks the capability
> bit and then requires the setter to exist:
>=20
>     if (!(DPLL_PIN_CAPABILITIES_STATE_CAN_CHANGE & pin-
> >prop.capabilities)) {
>             NL_SET_ERR_MSG(extack, "state changing is not allowed");
>             return -EOPNOTSUPP;
>     }
>     ...
>     if (!ops->state_on_dpll_set)
>             return -EOPNOTSUPP;
>=20
> With this patch, the capability check now passes for every output pin,
> but the operation then fails with -EOPNOTSUPP because no setter is
> provided, and the reported state will remain CONNECTED regardless of
> what userspace requested.
>=20
> Should this series also add a .state_on_dpll_set callback (and a
> matching hardware path, for example via zl3073x_out_state_set or the
> output-enable mailbox) before advertising the capability, so the commit
> subject "allow SyncE_Ref pin state change" can actually be honored?
>=20
> Separately, should the scope of this change match the commit message?
>=20
> The subject and the first sentence of the new comment describe a change
> scoped to the SyncE_Ref pin:
>=20
>     * The SyncE_Ref pin supports enabling/disabling dynamically.
>=20
> but the assignment lives in the generic else-branch of
> zl3073x_pin_props_get() that runs for every output pin (SMA outputs,
> 1PPS outputs, internal-oscillator outputs, MUX outputs, etc.), and it
> executes before the fwnode "connection-type" parsing below can classify
> the pin as ext/gnss/int/synce/mux. The last sentence of the same
> comment acknowledges this:
>=20
>     * universally since the hardware allows state toggling.
>=20
> Would it be clearer to either gate the flag on the SyncE_Ref pin
> specifically (e.g., via firmware-node property, as the comment hints
> at), or to update the subject and leading comment sentence to reflect
> that the capability is being advertised for all output pins?
>=20
> > +	       /*
> > +		* The SyncE_Ref pin supports enabling/disabling dynamically.
> > +		* Some platforms may choose to expose this through
> firmware
> > +		* configuration later. For now, advertise this capability
> > +		* universally since the hardware allows state toggling.
> > +		*/
>=20
> This isn't a bug, but the indentation of the comment block is
> inconsistent. The opening "/*" is prefixed with one tab followed by
> seven spaces, while the " *" continuation lines and the closing " */"
> are prefixed with two tabs, so the opening "/" does not align with the
> continuation asterisks. Adjacent comment blocks in the same function
> (for example "The output pin phase adjustment granularity...") use pure
> tab alignment.
>=20
> > +		props->dpll_props.capabilities |=3D
> > +			DPLL_PIN_CAPABILITIES_STATE_CAN_CHANGE;
>=20
> This isn't a bug, but props was just obtained from kzalloc_obj() and
> nothing in this else-branch writes to capabilities before this point.
> The symmetric input branch immediately above uses plain "=3D":
>=20
>     props->dpll_props.capabilities =3D
>             DPLL_PIN_CAPABILITIES_PRIORITY_CAN_CHANGE |
>             DPLL_PIN_CAPABILITIES_STATE_CAN_CHANGE;
>=20
> Would "=3D" be more consistent here, since there are no pre-existing bits
> to merge with?

Agree, it's not ideal solution. After discussion with Ivan Vecera, I'd like=
 to come up
with a different approach, i.e. relax the capability check in dpll_pin_stat=
e_set() and
dpll_pin_on_pin_state_set(): when a pin has an associated fwnode, bypass
the capability gate and let the ops layer decide.

To be presented in v8

Thanks!

Grzegorz
> --
> pw-bot: cr
