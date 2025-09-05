Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 65D14B463FA
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Sep 2025 21:52:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1BA27816A0;
	Fri,  5 Sep 2025 19:52:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5vvCwLDZFjRD; Fri,  5 Sep 2025 19:52:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 39D94833A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757101940;
	bh=7kckB5/QoVw0i0OBsct0xrzWoXikcnb8Z9V+8qQUiQ8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XoWsrLX9FJvhRfS2qbN1/4/twHyh8Yguwi+oiQ76nNKATVREyO5BkUndgDoRFnZTJ
	 dxkJdQGuYZoMD6bYvIfWbSZYT1F9qSZFxXvnDScyY2MSx6XzYKtr5LQCEobgjEC8pW
	 5uWLs91In1jtI1NLpXgp298YWwvwOR/3KRNTL1dVoe5qv4McyplMqKzsX9j3DJ8nGg
	 mTf4Pl6jPnJLzLV03UKo+DdzjejldE1dOMM1NT2/FgK6g42LJ/bWXaiNTX3hSjw/Lr
	 qDCtD+Ktz6UhPSeINwbTfcDZniu5/uyYx2ayeQweawe0vSskEMMP4+kbXxk1lkDW4A
	 uTHX4fxLnPiPw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 39D94833A3;
	Fri,  5 Sep 2025 19:52:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id BB4111A9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 19:52:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AD7AA611B8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 19:52:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wqvqy50bGxd4 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Sep 2025 19:52:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9B413611B6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9B413611B6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9B413611B6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 19:52:17 +0000 (UTC)
X-CSE-ConnectionGUID: bf+mrBtYTbmhb1XeQSnYOQ==
X-CSE-MsgGUID: 8Rw6fmMDTB2KD2cY3bfHcQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="59380839"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="59380839"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 12:52:17 -0700
X-CSE-ConnectionGUID: LUBHrveLQDO8yeOzpSiUog==
X-CSE-MsgGUID: kBRUJWgVTGyXy+c6ZCiS3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,242,1751266800"; d="scan'208";a="203052271"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 12:52:16 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 5 Sep 2025 12:52:15 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 5 Sep 2025 12:52:15 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.41)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 5 Sep 2025 12:52:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VhSdp38TRtMIEzYpyed9eQex5bXIwiipppdQpsztoxT/czGdrVK0NlL5rv01dA0eKt6+/vvlxIhugEf8l9vuwCINGxRlIYgzBZ92hSBvGh4D9kQQILWvV3hvqSafT7J4kTGzPjTrp4fUi6zeG6W2xwchF4z3VBS2sdtvtRM7V/UMghfbF2VQD2y5sriXdbaZ5hnAfYMXw4fJx5qWzwE3Louxr729ifxobVg1x8IRmqDDB2Z5iks7gZeCqyqOJyZWibD7k/in3POyWFGlq4s5mG24u4fYTJ/2XjvudqlNBEtO4gzcq4atn9iTg4z/dBz3d+vWtUQCBYGimZpUlBn42g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7kckB5/QoVw0i0OBsct0xrzWoXikcnb8Z9V+8qQUiQ8=;
 b=E2GThBMH+LZ1CvvggnT59zl7DKRa7XeMCEbzWFX1B7ubV17x7ufMT8MnzunOb1T8pZoreTt6RytRiTp+6cDrR1gUkAdV901TcyTFX47t7wGTYnJghFaL9UHDTGeU444PAaUoXqxaT9MJdgZ4v3hlTpZIM8Tc+n40SAIaV3W4oCzSqpaKSM9adW9P8SZVARksQ5BYFV+fgD2Xmm06RR/UsTryQaUIDRTGOWxRc26iRILfx0nJhBXCQ7YPPKLAodmkAUIVNCkXlowlyJc7JL2qjHJ+ExJhfExrDa3Izj24uVKRXUFTQsq4jEJz5AFueWZGvjz107Kb0kCFP96+qdy8OA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SJ0PR11MB5919.namprd11.prod.outlook.com (2603:10b6:a03:42d::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.17; Fri, 5 Sep
 2025 19:52:13 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.9094.015; Fri, 5 Sep 2025
 19:52:13 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Alok Tiwari <alok.a.tiwari@oracle.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "horms@kernel.org" <horms@kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ixgbe: fix typo in function
 comment for ixgbe_get_num_per_func()
Thread-Index: AQHcHoL2/smGuXvoPUmYb9tmcEVxG7SFABYQ
Date: Fri, 5 Sep 2025 19:52:13 +0000
Message-ID: <IA3PR11MB8986397B4B9F900B6EA39A8FE503A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250905163353.3031910-1-alok.a.tiwari@oracle.com>
In-Reply-To: <20250905163353.3031910-1-alok.a.tiwari@oracle.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SJ0PR11MB5919:EE_
x-ms-office365-filtering-correlation-id: 7dd0d71a-e44d-4794-6475-08ddecb5b589
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700018|921020|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?nzHuCNB/Qs2YAcH4bYl0ywa5c4qqPcI1OQRvvVZ64HzBBFP9ThiAw7dS4kXq?=
 =?us-ascii?Q?h3oZ/UsvQQwmsxsKE4HwE5SMwSx2tJSzE2IrP+qqcACEYz6EyomYyoq/rN1+?=
 =?us-ascii?Q?uzOWbtPZtem9WubFtogfJnouT3HEnAM3LZhOTwZw3bYa0tB0emB/cmQQm+PL?=
 =?us-ascii?Q?XbKJ3zD+on25lb/FQ6J5FcK5CQ8Y1Wbkgz88YyIzoRXGVEfvsaQx4fY+rYzV?=
 =?us-ascii?Q?7LhTDABK5eB4KNnaxjZZt3gVo4vs2Ht9cXEk2QyQZrHZf2XZmqNLnS6CsCCE?=
 =?us-ascii?Q?MWKKLU7kgB6RYteDdqW+YqEtmipjk3+4GLZmZmBv/YmqPDYpF+Kl0eLxG3er?=
 =?us-ascii?Q?PVFyfsk0rJoB5Brtvlrjcu0kZ7Kec0xE8UFWTSlt14tdexAAOXRyJOkjGBuj?=
 =?us-ascii?Q?22CWqF5ucvIea9KYJ3SFChRSb3B1kvr9Szz/Et1OoxC5nRtJrcz0ElN9QQiS?=
 =?us-ascii?Q?OJ4fbQCgHfgSWYaqrXM/dva6M2OnHHBEs3OBIoS1UZBNKMG701mx7VXreV92?=
 =?us-ascii?Q?0PR6IbhEihiCtQTHjfTrYdMvBUluSojmDEwJ/vWjB5t/v69vYAGiHEhV9zUx?=
 =?us-ascii?Q?GgbvYBAyxkuaL2GQvBYYBfqD2BRM8yVDeIBb2dqUj1anjtJNHQAkcSOsRaba?=
 =?us-ascii?Q?asMRnSOcSEG9lueHfpZhKmCI/spxTpw8VWzOAMHtdKJ8YPvPJo7dqvS406lL?=
 =?us-ascii?Q?RVXEeLydZNmo/dqmInq60Aiw8mFFatlmlO63WSUGsIWAWlWe8H7I/tVmesbE?=
 =?us-ascii?Q?YJkUyEjhMTrPKqvp7Cki1pEHGkVwTQsfTnLpjvQCzuIoFxYWMfAF4hUxszOg?=
 =?us-ascii?Q?bq3GQQbtu3IvR2e7UIv7lT1kSNZ6B7L+nBnbw/EadNQk5XkdpghxEnKk166V?=
 =?us-ascii?Q?TGogyoB8YJmj4q5icQRAtW+mbyR8+ODYc6tRj1n+MzLDrPr4chFdCY1AfZEe?=
 =?us-ascii?Q?ww2ak/zMlsmmvY0tsz7XHOKbekviWPQaBXIy+J4fKAbpZp53+AtqhJEbo+mb?=
 =?us-ascii?Q?f/EZNRN5iZiPjJ8SNAi0AlWmT5Fp/HKwQuFOUUjQwlY6fZqF20Dg+1puFEzN?=
 =?us-ascii?Q?i0jmc/t61GkbAy6BZGkLl9RZbfmEtZ9uIxPhr+YsBhvsBE66B6UL6eAy2oud?=
 =?us-ascii?Q?kNG5zWL0nvBW2PuE4M5qLTVguyI0MGTI1v/8RjD6U4J5tzecZ/+CbzbBchZx?=
 =?us-ascii?Q?sh+MRknfV+9YlmjRCYxIdU1+Ejs7EYw1jKk+zcVX8uf8wThoKganhk6Wlwez?=
 =?us-ascii?Q?3mIj4zNCObN0OGDRJtr8QdcrpJF1N4zD2L275XvmhlKUFvswq8Ekq78+DtbW?=
 =?us-ascii?Q?WHA+HTlzSdQqFXGrq5OTuE9TCdXVttbnR4iP9/EDBdwbdwyVQcho4fYn6hDC?=
 =?us-ascii?Q?KHOBwnbjISZfAxwKtq/4IbgG4BO0G3v4cYDsvdPAhfBQlHh4TlPbC3wH3Aua?=
 =?us-ascii?Q?INvYtPBSwCkN/gZzXKXNHJPv8WjLda89OfX7ukXe5XS07hC62UWFZCluOlzz?=
 =?us-ascii?Q?A4s7c+ta05b9t+c=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018)(921020)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?huvIeFYWPqrVAWDlWzRnzWiXI9hnkxKI7QOJXnJafWlEA7XTusUyBbdkn1zw?=
 =?us-ascii?Q?WJyReZZeHPGB+GiAaXsnC6b6Ca8Ce0BvQqihM/EZXW9QOV34h4f9SZKvNrKY?=
 =?us-ascii?Q?r/ZND9Is1wx8ke51fD5VhoHuRjROwbfds2MFmwXNXidWA7EweJZtveE/UhGH?=
 =?us-ascii?Q?2XGcZPdhVwmm3q8tYu4pRbOe1uP8ikUYUYYRdGWQE+qZQsP/iouYFJdVW1AL?=
 =?us-ascii?Q?vcugJfUeQd5bIAgB8gTL96yrkv15z1bkQyMRGIbZMwnyJhh1M3LFKVmfdmpg?=
 =?us-ascii?Q?GR3EeLsboFl4SFFqXSX7qI65mhklHHRBbocGBxarroZrxCxZWUTkuLxtXQlN?=
 =?us-ascii?Q?Kxl9Tc1wiu7ZFsgvS6zFoBhLn/tFzC4ML3GIN3WFAtQreWGqe9I07ZP8s/Ul?=
 =?us-ascii?Q?LUUo9F6XiW3tSbWCkgfBwHQboYUQbtsmPcBGdXAzRtoZqb2/+MPIbiTsymyn?=
 =?us-ascii?Q?HvU8Q/dhqPnUKXuoQqvugfG2HVlZjK78yvVvx3cWWYT06VO+37vc0bM/skLD?=
 =?us-ascii?Q?IbLqIljhKo+vKaagwtnq/BwBUbZOXoIJIrNogIwBKwbrysaKYqQvIrZjJfHD?=
 =?us-ascii?Q?OKmtD3ghkjQKdazXrrb3PeEDk9pGpTu/Svm4Xmuji6mjIyRvogMViHD5syAG?=
 =?us-ascii?Q?Dog1l8reaYEXJcw4rzLdXhJoyp7dGj8nWPkKmg+hNFbFHepvbZuLL7TptYb3?=
 =?us-ascii?Q?TSjIgYv9gCITHOGorkUtCJUw/YHhiHeSQRp3yUCGCBy3shU9bAoWmGFyibaX?=
 =?us-ascii?Q?BhfpTYqWWbAv63Ty3zyQcHOacX6FlfaJVT/8lGzPjxRyi38AVsiwuBfmrloS?=
 =?us-ascii?Q?ef634JxYXZW8+KTrAC8SG0S7eo0/h7vLSk82oJ7ifPXLFl3zoq3m1tByBChj?=
 =?us-ascii?Q?fXABRNycQ+dpR7lPT3ZkzSoJiuhWANqoB5J6ZMtvrrqYqArfdjgqv2lWk/YN?=
 =?us-ascii?Q?pnLlzWOXAs0bp5o3jBRGVDOhJPRS6qgVQcg4EGuQT2XGqqf+Z1yJhQkEn8Rp?=
 =?us-ascii?Q?oQeesVLaZw4rHNWGf9PdSYGR/zgFoW4N93knbIc7xSOnai+0uxmCRewGXFqO?=
 =?us-ascii?Q?wfBCLLwrkyPKQO8ewdzkITSffzoR+FBcyseoPBjvTc3B47AGWERznh9AWv+C?=
 =?us-ascii?Q?tq/lhfZh78smF7vVWKZBcvknaFjhhW7i0+8iuVSsejQlfPNvsud0udElNtEN?=
 =?us-ascii?Q?EIcVur2aoGs/nWNyr2/oHvzS3VfUm0qAoOHk6wSv9QVNcQaOmefHvs7lSLwo?=
 =?us-ascii?Q?JvlNQU2ZRedxNXz2z7+5zkJhOFT/sFPIe5vWs1ywO9m3U+BbzWVqvGE7PXQu?=
 =?us-ascii?Q?SPtJSGoPz+Dx7YS9oTW0CkxgqmCxUSu4lxdERuap1k8XN0u4RK0hfjPP94Vn?=
 =?us-ascii?Q?mt+bINS6r30w9ApsmkFIfUkbCpOSOX1QF1Ue+z+GD1VslDLtTHbTpqjk7G84?=
 =?us-ascii?Q?x319Dh3a3qkm1UPSXyaKoD/Nz9twzfrKf/TGQdiu+HaaocFVd19By4QralRG?=
 =?us-ascii?Q?FwcZZjeFMWh/PeSHveeIylqrknp/KGOviZdI3YBlwyCLYMDr2JSY4Kt1Pigi?=
 =?us-ascii?Q?eN/NxWa+VKrhibstbAeEQFVb8Xy3kMgruimgKZp79IvCIMq2c3t43jCY5txM?=
 =?us-ascii?Q?wQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7dd0d71a-e44d-4794-6475-08ddecb5b589
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2025 19:52:13.4945 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FbR6qrsQqJ8tNrhmWrHZbJ0YoS7mCDO/Zp8yHuTRZNEPLNSkged9lpluhVvLfI43WzsCBmBXIvd22595fyLY1UML8C6xvV2BYTPHMfjHFRM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5919
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757101938; x=1788637938;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=rO/yF8m2WqDg20k+VGTxLgCAHKLDd4ygicgssKkihMA=;
 b=hk07Fy6d0RtxK9Xb0XGAQIsT8XrXZ955Mz4A7SPuXW3WVdKD8T6chc+z
 ZOPxlwSXjm3onbjb4i4+QAOsAR0U2LIk0FxcC10uSHHctp5XLJZhLINKB
 EX9Fz9ZfAChALUunoItd6LOW6errYnG31UlsduU+eWQA2l8gZpPLmmBqy
 6eT6vYJtHiqaJpIrKIaup47i7jlt0VR6mAU2vIzb1RO3iSv6j0tgOGi3j
 Lj/QdVSthdYc7y/EqgDFoTFI35mp1arfC+Crb3ocHNso6Ca2ly84Cq8Xx
 eUCiLWU5cKLzZ76aJzJWe9absMBTNDZkvGfmdIwWoGnydGl5SAQF64LHu
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hk07Fy6d
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ixgbe: fix typo in function
 comment for ixgbe_get_num_per_func()
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
> Of Alok Tiwari
> Sent: Friday, September 5, 2025 6:34 PM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
> davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> pabeni@redhat.com; horms@kernel.org; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org
> Cc: alok.a.tiwari@oracle.com
> Subject: [Intel-wired-lan] [PATCH net-next] ixgbe: fix typo in
> function comment for ixgbe_get_num_per_func()
>=20
> Correct a typo in the comment where "PH" was used instead of "PF".
> The function returns the number of resources per PF or 0 if no PFs are
> available.
>=20
> Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
From: Qiang Liu <liuqiang@kylinos.cn>

After obtaining the register value via raw_desc,
redundant self-assignment operations can be removed.

Signed-off-by: Qiang Liu <liuqiang@kylinos.cn>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/et=
hernet/intel/ixgbe/ixgbe_e610.c
index bfeef5b0b99d..6efedf04a963 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -143,18 +143,14 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw=
 *hw,
=20
 	/* Read sync Admin Command response */
 	if ((hicr & IXGBE_PF_HICR_SV)) {
-		for (i =3D 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
+		for (i =3D 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++)
 			raw_desc[i] =3D IXGBE_READ_REG(hw, IXGBE_PF_HIDA(i));
-			raw_desc[i] =3D raw_desc[i];
-		}
 	}
=20
 	/* Read async Admin Command response */
 	if ((hicr & IXGBE_PF_HICR_EV) && !(hicr & IXGBE_PF_HICR_C)) {
-		for (i =3D 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
+		for (i =3D 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++)
 			raw_desc[i] =3D IXGBE_READ_REG(hw, IXGBE_PF_HIDA_2(i));
-			raw_desc[i] =3D raw_desc[i];
-		}
 	}
=20
 	/* Handle timeout and invalid state of HICR register */
--=20
2.43.0

> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> index bfeef5b0b99d..aed8b30db2d5 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> @@ -774,7 +774,7 @@ static void ixgbe_parse_vf_func_caps(struct
> ixgbe_hw *hw,
>   * from parsing capabilities and use this to calculate the number of
> resources
>   * per PF based on the max value passed in.
>   *
> - * Return: the number of resources per PF or 0, if no PH are
> available.
> + * Return: the number of resources per PF or 0, if no PFs are
> available.
>   */
>  static u32 ixgbe_get_num_per_func(struct ixgbe_hw *hw, u32 max)  {
> --
> 2.50.1

