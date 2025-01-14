Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB90A106A9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Jan 2025 13:33:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2B6FE60B04;
	Tue, 14 Jan 2025 12:33:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BLbX2clMgMhz; Tue, 14 Jan 2025 12:33:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9540960EA8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736858017;
	bh=AgBktJ/XcZo6iL7xosrpBHCs7vXGUDY/0iFzlmkjL7A=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Xqo0WTG08qJIGqbUlke3uNOblYtVQ12oI+d20gZ1PK6gAk77sgVRfsYF88Q2Vako4
	 YkDUVoYzMhGCIBwWB3vRi7JD4ki0sWdLMMir+gjGaP8PRRQR2FOBUorPadjGMy/0z2
	 bWJnjDs47CuFeMHlm+DhPZ17U006eBqAVK5vZnGtVMNXsVhDWp6puBHIMCE6W0z2hB
	 FN+AcnoIt1/uvFc8KkdOinLooD+yMh+1CsgsfKINhqYUfxc8fjlI05RcGQbqgf8reE
	 RX5tQ2FzPv0kzCB4UrLSDxlT8yoxB07XWoKHsz6qmDw8FlbLdbhz03BDoxp51Qgu6w
	 7nRk/Yrp3j1lQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9540960EA8;
	Tue, 14 Jan 2025 12:33:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 40F2DB89
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 12:33:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2F27D82F76
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 12:33:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mejHSu-Yrl1k for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Jan 2025 12:33:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BAF7380AD3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BAF7380AD3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BAF7380AD3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 12:33:34 +0000 (UTC)
X-CSE-ConnectionGUID: wLRjgjVqQO+G7l7OsIps9A==
X-CSE-MsgGUID: 0OEE13ZMQfqw024LtcxvSg==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="59634525"
X-IronPort-AV: E=Sophos;i="6.12,314,1728975600"; d="scan'208";a="59634525"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2025 04:33:32 -0800
X-CSE-ConnectionGUID: YtffefKIRu2yLjh7x3Lplw==
X-CSE-MsgGUID: qHk2ddiCTqeWFXme+9xKpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108852986"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Jan 2025 04:33:32 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 14 Jan 2025 04:33:31 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 14 Jan 2025 04:33:31 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 14 Jan 2025 04:33:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Zl4WBVqZMo1UpP9qgHdjn0OofdYScU1ccBnwKP5QCVvFklg+/NVKSMwXEzuLJay9VTGDtaZ3o1IlJbymBlGS5jxvHSMiJNLsKJ8tPXDo9Nk2m4h6xEMw1CXHAp2uXIvGvl3aW1sK4bo4gyxjB5zWVhdj3NFFdkMun/FPtmVT+o3jHJ2fLPny2QaxgMFosc4xP+YOlQyQcFMjg5KXGklvL4zbMYb4TZajhfuVdm6BYNpCXFAqI3FVsDr/wM/s8iWCRz0NnnVzQb4LGxdv1juNQLCAcW65z/hbttP9TJicCv5Gy2FAGocjSBKcTeqN4bHKgn3VFS9qeNtPQ7luaGfwbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AgBktJ/XcZo6iL7xosrpBHCs7vXGUDY/0iFzlmkjL7A=;
 b=Yp28K9WzbEdTCDL9lRI1LRwUtdV6G5sZC+t48rCACt322oxxbpKBRTLAblU+GjFDdDUm1KEmZUzoRBM5nW7Satsa1mob+wQhiuXZ96wBSq9+/N3BU+la8OqCnGnF3Ydz7bGk0NaczgdRAMqpaOS/5Jo/vKpBrsfB928TufTsYk8K8yeqpUsDfNprIRUqjAY7YvzftHEzjbspbo2DNq3IKpRhdggTj+Syt9LpIrLUMH1P594DLQN0htt/eJwFtwXHszkbUPABGnD+cJ3AEBEWjmWc2MClX4RDIXAbzWEnuMhOoxyR2tbrSZg2G2L/YHSIVdnjzP5Jh9oFKN3ei6v8vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4610.namprd11.prod.outlook.com (2603:10b6:5:2ab::19)
 by PH7PR11MB6547.namprd11.prod.outlook.com (2603:10b6:510:211::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.17; Tue, 14 Jan
 2025 12:32:48 +0000
Received: from DM6PR11MB4610.namprd11.prod.outlook.com
 ([fe80::c24a:5ab8:133d:cb04]) by DM6PR11MB4610.namprd11.prod.outlook.com
 ([fe80::c24a:5ab8:133d:cb04%7]) with mapi id 15.20.8356.010; Tue, 14 Jan 2025
 12:32:48 +0000
From: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
To: Dheeraj Reddy Jonnalagadda <dheeraj.linuxdev@gmail.com>
CC: "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Swiatkowski, Michal"
 <michal.swiatkowski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ixgbe: Remove redundant
 self-assignments in ACI command execution
Thread-Index: AQHbZhp9vaVrVKveiESvwrSGpq3QFLMWMbag
Date: Tue, 14 Jan 2025 12:32:47 +0000
Message-ID: <DM6PR11MB46100E03855B13F00F9B6E64F3182@DM6PR11MB4610.namprd11.prod.outlook.com>
References: <DM6PR11MB4610108A2FA01B48969501D8F31F2@DM6PR11MB4610.namprd11.prod.outlook.com>
 <Z4WuXmWcOwlNAZUt@HOME-PC>
In-Reply-To: <Z4WuXmWcOwlNAZUt@HOME-PC>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4610:EE_|PH7PR11MB6547:EE_
x-ms-office365-filtering-correlation-id: ff0dd1ae-5dbb-478f-d09d-08dd34978dc1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?dsmuoqZ64wjPR1rvMtTr141IpjcO/gqNoiOviYXC8uy+JxQm1ZfOe6DI66f7?=
 =?us-ascii?Q?bceg+IY41yuEagayE5Pd/5RIc+nzRhSP5eARsPyEfQQMm9eCrHoEV5FCkBUP?=
 =?us-ascii?Q?R4Z3h93HuBLrrcygYThMhWaqSnqEgEgjseCh7oTUI8T1x+HS5nXyT3jq4F5s?=
 =?us-ascii?Q?oqtdv4Ed8187u+lnlGUePMs0ClEGCEvK9A3KhhkxlgX4LQG9DZod7zFk8hjR?=
 =?us-ascii?Q?coDnxh64RALKLhMTv9Xjb5dkobthl+aAR6f8VpY81uovwlnpp8ct4iD/6ibz?=
 =?us-ascii?Q?ZJ7aI9YsWxwb6bwtM6bbOlQvPn8NdwTcYdos0EPEJk0r70nj9vtNpW5ZdNE2?=
 =?us-ascii?Q?gjgz1IPkp7iepeWD54OjqXulVKj1W+46xQ09ll5Vb1LkmAXmXktCqnhqh89P?=
 =?us-ascii?Q?sGGXXOyD3/piVIeXIZ94CIE7aI4Bcwg+bjpMQlwSSsRwdh+/yzX/Du58IiaK?=
 =?us-ascii?Q?6MmN3QISN5gVqnhh6gPAbTLFam/pV9GbJndem0dOnWgSxAMX1yVqaDl290Ty?=
 =?us-ascii?Q?Lj2K1tTdZnzvWzfzk7I++HjJIRApbWTplksmVZ1b5X95fGWC0ZzqJ6vlzDwu?=
 =?us-ascii?Q?404NWJkwTF/jqU3tqCrUxULeLOpBDceP86S240TQEwBH0GsGckzlVpHKh6NS?=
 =?us-ascii?Q?S26xewRxlbzgaoVX6e4ICAgD1IYGWa/z3KejsA5+Ph1JnIttHoIeduBluUPr?=
 =?us-ascii?Q?Ufn/zZEGG/dDfo4wpv7zfY1BiKXjhV8bi9OfEl6gozcaXeaglTSrBtQiaacM?=
 =?us-ascii?Q?MBbxinTUFHDZeG4/1s5uh5dPzW7ooSpWe16puJ7IEp0Wr04MuoScjjz39B1k?=
 =?us-ascii?Q?0jxVX/aI0jtRSXf7KGVLbl7kH7R6McpeMO0RxaElq4N90HmM6wFUg4e5ltT6?=
 =?us-ascii?Q?U+CvXtxWydpWTOYHJB13wFjvZUzzpiaEYwSabbiEyVU/fVTKrkaPDN1JyHFq?=
 =?us-ascii?Q?VohzmN+WLZCjPcgOr0vm3IRYpIA0izKomKgH19G9qtXjl15KnvxmdIXqwTRr?=
 =?us-ascii?Q?iftrwYPwfumUxT5rgMxvPpm81pY2/qbCl7zejfolI/u0KAaoVY1BI8n6Vbvg?=
 =?us-ascii?Q?DJroQ72CEkVoqiRVu/LL9Gp/XEHWOlMZ0asrAV9gfzcGxogbzDLFBZwKdd+v?=
 =?us-ascii?Q?uiP/49X7sPt7RnwRt4VQA0AoK5/O9pesyyHhrckmnmYD6yD0xt8KpKQWnMlW?=
 =?us-ascii?Q?I/4PZk2ZUYDLc8Y2LgOE6nhZ2L9m4fZ+DzjG+a25GwNOHe5MhIB1Ne7STXq9?=
 =?us-ascii?Q?XnGzWIkX6P+4YsmcY2DiaN9NGr33n9ykSNM4HLpL7qLUrNtp9nJ1Dqh9KPp8?=
 =?us-ascii?Q?5+Xgg721j7yN1QN0imXLj3dKVUP3x3D4CbLG1+JqFgE+2oiKYV7iseHiEPb5?=
 =?us-ascii?Q?789QamcHYK6o8PiuJQTuPWtmC0l1?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4610.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0OPi3p+YFi2aImDDvJWqs6tBGXhBEwdAFqvf9ezHDOp0orlj+GK7LSsCTiSg?=
 =?us-ascii?Q?0KZAzjHuYmTyBqa1Jq9varTgRJg604250t3IwRnwbmi0URXBNSExtMaWCxVs?=
 =?us-ascii?Q?QD8PFikugW/NuMHiXArPGDmoM1wy8J7NKArLGfbdg1LysWEjVMc0vTr7Nnw/?=
 =?us-ascii?Q?h8KO2Y65ORw1MwkpH8TyPIBJnhw242w4h8THEenZHPB8WZeiZy5Wu8+gL4+4?=
 =?us-ascii?Q?UmhDMoh/GySa4P9JtIY3K1dlEXk15GL2Zt4phY+OULzGAxH3vUH05Z8NzphM?=
 =?us-ascii?Q?hIi9NQMCYYBhdVrc45z6ZzSvv8WQgfkErC9XOn7YRf+sVqY8AvRjYu/hs9oq?=
 =?us-ascii?Q?5UtGEs2ZhllKA0OPZ4dkLnqMUQRVvlmglebCE/rTUmW+JanMKaboNvZxCS6x?=
 =?us-ascii?Q?JDvQPSpHwCjR/hYNQum2pEssaz1EAgpLn9hI1eXkkiFaE9+KQ3pv4iO0/rhw?=
 =?us-ascii?Q?FrdDrZdiWg7amrcwqsDOAKHRa851qz4MyaiLqTqKYCzCNmnZAIaFEl34TIuL?=
 =?us-ascii?Q?vPpZ9+GnjtxVk3cIWi2onT8gDlNrTCaDkL0weDIwq+WWet/CqkHVp20BphXW?=
 =?us-ascii?Q?wiIo8ZrYTVsHY9kvF66L9e3FUAQEqeRi224lR4/fSCoVoT000k8aQq8hbV94?=
 =?us-ascii?Q?NZYhTwOJLw40xesU7uipkdqgrApVV2+0OZ9c/luoE79w7kd6IkmRkrvs9cf9?=
 =?us-ascii?Q?9pdsn9b49DyZdncm/NnvlFKKCv7lXgFnSAK8NN00gGXtjBkkiUn/PV3CZ/Ll?=
 =?us-ascii?Q?WfEzxq/LCh43WS7/bW6QYXyXUobckZ7SdsEkyhIxX1YzaLAAuqCcv8hGUYHp?=
 =?us-ascii?Q?mMm7nYFMtMnB/8kFhA24eFelYEJEYjkhjUE9C2MVX6mJ7xbHJYOdU/DdqWMM?=
 =?us-ascii?Q?V6vPhK++EAC2UTvKrj740OgcyfCrbHIoE4prwO9JXgrDoFviE6rrYwBvd8si?=
 =?us-ascii?Q?wme+KFC6U9ZFlv1sl4uGjUaARLgvCfDy6nstJcD2720QGxT9TIutCeFko3VF?=
 =?us-ascii?Q?vRm9IlY7y90r+af9TVHYFC0KKdRnBmxPVyrMHZ1Dk6uLATMq6hWkZb02ReBm?=
 =?us-ascii?Q?g+kwNshu0hHbE+w1ezGDjy0WCy62R5RDxTAdVabbckDB/G2Ts2dFYWPgEmyq?=
 =?us-ascii?Q?2H/bTS6fWzOjqUYScSIHyso6LPIqg0ukDJX+vdXIPSyrxstGrxZeD+fNXxc8?=
 =?us-ascii?Q?75HyomItZFZbcIvvpWOjmMFAxZOkR4A3lK5Nb4V9JhMWZSCGgz75tAitoXBT?=
 =?us-ascii?Q?JWrUatkcKI+qWgHAaIMIEQXf4ISGVI2VGR/yvtwB/BhLau2vq3stvP4p8mh+?=
 =?us-ascii?Q?IHS1GT0HBKSSvss6+gUm2U5hjdegmAxoTnN+QYMWHKwcaxwTOGz9CaGQLv24?=
 =?us-ascii?Q?RE5hPPUw2fIV8YPh2FqzhzM/+YB6za+BNq3SeJzwE9CEPxdKfWAc8Os7impm?=
 =?us-ascii?Q?JynMivmlc5ki5WdMlt0H2EEI+XNun6fjX3rIBj7n6/KZa2VZMnXDi+xwJJeO?=
 =?us-ascii?Q?EJi1hCHK0VzDYCfR+gdyILyOuzjGBIC4C1slI6N4NvN8kuTZVcLRoJFXqPAO?=
 =?us-ascii?Q?oIM4SiWQXbC/FAgt1FWIF10dzBkRINbHz12wGS5+?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4610.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ff0dd1ae-5dbb-478f-d09d-08dd34978dc1
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2025 12:32:47.8907 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 95zOA6RDiu9lg3OwWlVynhl0bmbmqIHkm+tPJScf+JHJqoLH8bu8dd1KvDBJaSlnJblbJBVwSiIT2V5mx57dQDEqNOIejuNKUKqYkdzTZ3k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6547
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736858014; x=1768394014;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=US5L5hx3BvN2ZVuuOSbcTAZXWZ4Al/I23A559+941T4=;
 b=ZsqFRklSnY10Qj5YMFa+Ool8dfgrsqbbTJtixD5XlU0xC2WYeWol6qzE
 XYtIn0T/5DdRbk+3j2exvHI5VFX+G55LD5CIJsOzQcIBcuAvnRILwxdVs
 6kkEzOPT4HSilXfcn4aXPahtdDFhUwPlWPjK5FSohgOdo5Xw+GjScWEVp
 7R3NAPu1KmxOLICFIzQyw50SJhivM6r48j0rLgx195jhsLpHy0fRgNuL5
 Gnx39t1sbysYpf4nqjdgQvdWNCbZGds9lbz7UyZJc4zlaz6Ookgp+uqle
 ZwuMJbLX7C5uQwVFjbNPBg5QBGt+DdrMDpO2bvPDxSXIGaQPM8Q0A6jbD
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZsqFRklS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ixgbe: Remove redundant
 self-assignments in ACI command execution
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

>-----Original Message-----
>From: Dheeraj Reddy Jonnalagadda <dheeraj.linuxdev@gmail.com>=20
>Sent: Tuesday, January 14, 2025 1:23 AM
>To: Kwapulinski, Piotr <piotr.kwapulinski@intel.com>
>Cc: andrew+netdev@lunn.ch; Nguyen, Anthony L <anthony.l.nguyen@intel.com>;=
 davem@davemloft.net; edumazet@google.com; intel-wired-lan@lists.osuosl.org=
; kuba@kernel.org; linux-kernel@vger.kernel.org; netdev@vger.kernel.org; pa=
beni@redhat.com; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Swiatk=
owski, Michal <michal.swiatkowski@intel.com>
>Subject: Re: [Intel-wired-lan] [PATCH net-next] ixgbe: Remove redundant se=
lf-assignments in ACI command execution
>
>On Mon, Jan 13, 2025 at 03:23:31PM +0000, Kwapulinski, Piotr wrote:
>> >[Intel-wired-lan] [PATCH net-next] ixgbe: Remove redundant=20
>> >self-assignments in ACI command execution @ 2025-01-08  5:36 Dheeraj=20
>> >Reddy Jonnalagadda
>> >  2025-01-08  6:29 ` Michal Swiatkowski
>> >  0 siblings, 1 reply; 2+ messages in thread
>> >From: Dheeraj Reddy Jonnalagadda @ 2025-01-08  5:36 UTC (permalink /=20
>> >raw)
>> >  To: anthony.l.nguyen, przemyslaw.kitszel
>> >  Cc: andrew+netdev, davem, edumazet, kuba, pabeni, intel-wired-lan,
>> >             netdev, linux-kernel, Dheeraj Reddy Jonnalagadda
>> >
>> >Remove redundant statements in ixgbe_aci_send_cmd_execute() where=20
>> >raw_desc[i] is assigned to itself. These self-assignments have no=20
>> >effect and can be safely removed.
>> >
>> >Fixes: 46761fd52a88 ("ixgbe: Add support for E610 FW Admin Command=20
>> >Interface")
>> >Closes:=20
>> >https://scan7.scan.coverity.com/#/project-view/52337/11354?selectedIs
>> >sue=3D1602757
>> >Signed-off-by: Dheeraj Reddy Jonnalagadda=20
>> >dheeraj.linuxdev@gmail.com<mailto:dheeraj.linuxdev@gmail.com>
>> >---
>> > drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 2 --
>> > 1 file changed, 2 deletions(-)
>> >
>> >diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c=20
>> >b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
>> >index 683c668672d6..408c0874cdc2 100644
>> >--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
>> >+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
>> >@@ -145,7 +145,6 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_=
hw *hw,
>> >             if ((hicr & IXGBE_PF_HICR_SV)) {
>> >                            for (i =3D 0; i < IXGBE_ACI_DESC_SIZE_IN_DW=
ORDS; i++) {
>> >                                           raw_desc[i] =3D IXGBE_READ_R=
EG(hw, IXGBE_PF_HIDA(i));
>> >-                                         raw_desc[i] =3D raw_desc[i];
>> >                            }
>> >             }
>> >
>> >@@ -153,7 +152,6 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_=
hw *hw,
>> >             if ((hicr & IXGBE_PF_HICR_EV) && !(hicr & IXGBE_PF_HICR_C)=
) {
>> >                            for (i =3D 0; i < IXGBE_ACI_DESC_SIZE_IN_DW=
ORDS; i++) {
>> >                                           raw_desc[i] =3D IXGBE_READ_R=
EG(hw, IXGBE_PF_HIDA_2(i));
>> >-                                         raw_desc[i] =3D raw_desc[i];
>> >                            }
>> >             }
>> >
>>=20
>> Hello,
>> Possible solution may be as follows. I may also prepare the fix myself. =
Please let me know.
>> Thanks,
>> Piotr
>>=20
>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c=20
>> b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
>> index e0f773c..af51e5a 100644
>> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
>> @@ -113,7 +113,8 @@ static int ixgbe_aci_send_cmd_execute(struct=20
>> ixgbe_hw *hw,
>>=20
>>         /* Descriptor is written to specific registers */
>>         for (i =3D 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++)
>> -               IXGBE_WRITE_REG(hw, IXGBE_PF_HIDA(i), raw_desc[i]);
>> +               IXGBE_WRITE_REG(hw, IXGBE_PF_HIDA(i),
>> +                               le32_to_cpu(raw_desc[i]));
>>=20
>>         /* SW has to set PF_HICR.C bit and clear PF_HICR.SV and
>>          * PF_HICR_EV
>> @@ -145,7 +146,7 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_h=
w *hw,
>>         if ((hicr & IXGBE_PF_HICR_SV)) {
>>                 for (i =3D 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
>>                         raw_desc[i] =3D IXGBE_READ_REG(hw, IXGBE_PF_HIDA=
(i));
>> -                       raw_desc[i] =3D raw_desc[i];
>> +                       raw_desc[i] =3D cpu_to_le32(raw_desc[i]);
>>                 }
>>         }
>>=20
>> @@ -153,7 +154,7 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_h=
w *hw,
>>         if ((hicr & IXGBE_PF_HICR_EV) && !(hicr & IXGBE_PF_HICR_C)) {
>>                 for (i =3D 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
>>                         raw_desc[i] =3D IXGBE_READ_REG(hw, IXGBE_PF_HIDA=
_2(i));
>> -                       raw_desc[i] =3D raw_desc[i];
>> +                       raw_desc[i] =3D cpu_to_le32(raw_desc[i]);
>>                 }
>>         }
>>
>
>Hello Piotr,
>
>Thank you for suggesting the fix. I will prepare the new patch and send it=
 over.
>
>-Dheeraj

Hello,
As a result of internal review from Przemek, it may be improved as follows:

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/et=
hernet/intel/ixgbe/ixgbe_e610.c
index e0f773c..0ec944c 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -113,7 +113,8 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *=
hw,

        /* Descriptor is written to specific registers */
        for (i =3D 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++)
-               IXGBE_WRITE_REG(hw, IXGBE_PF_HIDA(i), raw_desc[i]);
+               IXGBE_WRITE_REG(hw, IXGBE_PF_HIDA(i),
+                               cpu_to_le32(raw_desc[i]));

        /* SW has to set PF_HICR.C bit and clear PF_HICR.SV and
         * PF_HICR_EV
@@ -145,7 +146,7 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *=
hw,
        if ((hicr & IXGBE_PF_HICR_SV)) {
                for (i =3D 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
                        raw_desc[i] =3D IXGBE_READ_REG(hw, IXGBE_PF_HIDA(i)=
);
-                       raw_desc[i] =3D raw_desc[i];
+                       raw_desc[i] =3D le32_to_cpu(raw_desc[i]);
                }
        }

@@ -153,7 +154,7 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *=
hw,
        if ((hicr & IXGBE_PF_HICR_EV) && !(hicr & IXGBE_PF_HICR_C)) {
                for (i =3D 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
                        raw_desc[i] =3D IXGBE_READ_REG(hw, IXGBE_PF_HIDA_2(=
i));
-                       raw_desc[i] =3D raw_desc[i];
+                       raw_desc[i] =3D le32_to_cpu(raw_desc[i]);
                }
        }

Thank you,
Piotr
