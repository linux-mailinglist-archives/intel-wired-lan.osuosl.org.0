Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A17CF96B623
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Sep 2024 11:10:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 37CF5810C4;
	Wed,  4 Sep 2024 09:10:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JXLfMdluPi9L; Wed,  4 Sep 2024 09:10:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 634D980DC1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725441051;
	bh=P9FWtlu+wUES1Q49xUQi0q0pqiBkT5QoJAu0YfVTuys=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HDHwSzHHzHc2mhv4BupsZ1vJH3dFGnX0NEsfjfzaY56ZDtR6QqqFTZltwRX27MqPy
	 Cq8/pIhMuhV2+vWVnq6yBLOXihDrmNZaB3QWFnySvPiazKdhfhmmmBcsww3f3Bu7me
	 I37Se9AWb6lwfFY3+AGXSODhnd9Ktu85Y2vdPcoor4KLCiU91Io/oNXeHWH+GWlZBS
	 YnLRklFUmpdA9BqRt6vBKn6HuGytxqxbL2/j9ScOlUS8SshiOJf0C6DocjbcoZYb9u
	 +XsEQai13pGPyFR45E3CJ2LUTTdHWsq6V8qx9LcxZYGdbMHamv6TQgC54AI/vjPWGU
	 Cv712+XWcGdBw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 634D980DC1;
	Wed,  4 Sep 2024 09:10:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F1B4C1BF577
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 09:10:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DD9706069E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 09:10:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Mc7Mg1Uq3sdR for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Sep 2024 09:10:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1B56A607F8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1B56A607F8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1B56A607F8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 09:10:47 +0000 (UTC)
X-CSE-ConnectionGUID: ArPTaB7mQfmGFEwXPvNDsQ==
X-CSE-MsgGUID: wcV+c9+0Tj62tYwkjN9q2Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="35246620"
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="35246620"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 02:10:46 -0700
X-CSE-ConnectionGUID: EW/uRZwSS3yN0sxpP0wsnw==
X-CSE-MsgGUID: 6hziDnAJTdWL5lGK+i1olA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="96002607"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Sep 2024 02:10:46 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Sep 2024 02:10:44 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Sep 2024 02:10:13 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Sep 2024 02:10:13 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Sep 2024 02:09:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pIv9KLTI3f4Y9fHIVz/LelRrQbxWMEE+YxbLZb+wsfHZaCzbzlAGzqRhBVeyQORa9qH8QjnGtQk1tg0NqnKrvob40ehCj18ohWyd+JcHtCNXuBkBOYXm3RJJHoOtS309tv9p0cqgE7Wqe0S4tI2hvqQJ6+N6+J1BiGdx1RQHyCZUlPUunZL6Ih6s5jn+ygf+q1heK09j0yNnn8aoCL+742YFZxQWLyQrsKnORlugpONqWgrzHsYGDyP/gHF16WVOXT0tPf/IepFHgw7LPLp+vAlaDrjMZviNoWWP+G7dvzxfg/dCq+QDt8NgK5Vq7MTwm0SjCLLqv7beXfOqqvedWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P9FWtlu+wUES1Q49xUQi0q0pqiBkT5QoJAu0YfVTuys=;
 b=YkhHt9cGet7CcA6H8NLokx4BkSESra93w25dOBvjHu5FWkUf7taG8dg49tfrs9nF+3EmmxMvSBu7vJn2oPA4zMYgbtGCfULzcJOqWuNe6Sge6TfVw0a7yhSRbjMe1ZX8TSIkzjdxoHjPp/lQ2yAmRCCNHtHDuqvPDmYv+btrfV/AzIsz8VSTMmfwRlAAmdyMB76uwBGIILfiDKAqXt33Po/UuHlycY+ht1x7Lp+21eKgWHZj207jJJyBvZvbHZlT31vM5Z2plU7FLhNXzJeIaAlOGu1Gzf3M9niaZAUoni+DNSuHtggHX+/HShTHDR008w1E96CIYrtsaElMESirpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by PH0PR11MB5830.namprd11.prod.outlook.com (2603:10b6:510:129::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.27; Wed, 4 Sep
 2024 09:09:33 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%4]) with mapi id 15.20.7918.024; Wed, 4 Sep 2024
 09:09:33 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v6 3/5] ice: Initial support
 for E825C hardware in ice_adapter
Thread-Index: AQHa88vKZm94WvdafEmcD6bJCUSEsbJHRWwg
Date: Wed, 4 Sep 2024 09:09:33 +0000
Message-ID: <CYYPR11MB842904BD9C35ADD1B3359C6DBD9C2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240821130957.55043-1-sergey.temerkhanov@intel.com>
 <20240821130957.55043-4-sergey.temerkhanov@intel.com>
In-Reply-To: <20240821130957.55043-4-sergey.temerkhanov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|PH0PR11MB5830:EE_
x-ms-office365-filtering-correlation-id: 0d831c23-b4c3-40e7-d86b-08dcccc14aa0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?2PrZ94XgSGAIo2YJAVdzFFXrIueW6bYhoAmN88DNHML8wL9LhkSNPinq0nFh?=
 =?us-ascii?Q?ICqQYDYwVqkRuJsJdHsxo1S5KGchmsMmsqc6nDH5FNLKGvcAb7ckfpWshYPL?=
 =?us-ascii?Q?bGWaNYNG6F6U0ODPb97Rq76+Oudw43Kr5FL65RTi+BExZmt+MgZodrg5B+Ce?=
 =?us-ascii?Q?TzVcFi8o5fJ5r9/dCMQMfpQ2fI91lcV2KEeGrCw3NocoyZJe+nTu5u2a0MOi?=
 =?us-ascii?Q?ESJbk9iOMTcaEMa/2M0l0Ig2A/MNPo2a65pvPSw7JCS8yjgJfv9AEYi1YBvC?=
 =?us-ascii?Q?htI6c9vFYnOxnaUu2h0CkYO8Zv6No9eXqEMcZr9lgSMuomt6CVN8baY9mYsM?=
 =?us-ascii?Q?hxA9qMfWiPbSii5pFYM9u7LcDW2NjTJog1pS7O/75nePLSgIeLJSiuyK4VFp?=
 =?us-ascii?Q?wIzVZBdlDreqAoh9cfelAFGee3n98ewknMglL45fjj2wtVoXXud6/XKd6WIQ?=
 =?us-ascii?Q?r6YgfibuCQ+BZctoiJZ19oQP703Heb+Omt7XEkikhW+qbGWIPolq7oWoV+2X?=
 =?us-ascii?Q?Au4YoT5kA0JC6Y8DXQrAsFP7SYKrS64EVuCMXLRVMxs2/F3mIrcr9gi+/6tb?=
 =?us-ascii?Q?GFG7QReQOeaQJZwrY6ZzM/kB2owMRjdfPLSQitLw/ynj9UBqdKCH+M29V6gI?=
 =?us-ascii?Q?af8lvjBOEXFmBxEoKm9KQqgnhpYWWWZ7S5a3UrXSud8bII9tt05zEvbYzac6?=
 =?us-ascii?Q?w1e7XquglPtu3BBEpmyUi59w2++sibCtp1WJ93D8zB+ACA9eyKDVCUUSLzX7?=
 =?us-ascii?Q?3KVrOIOEZvrVsUT58TNjxRRpGH3QfnUk2wlKYGmsOPY+JXGhhnvWG+KR92KT?=
 =?us-ascii?Q?F9ndwcdxoyMxIDS7i01t4TFEH+PyXwfmaF+6Qyx4P/K43EJd2yV7i6OdyN3v?=
 =?us-ascii?Q?QYB7CUnQVnoPeIS4EdGNlBpuhS2q6TsuqTTJmo5R+debIfCRGZmIKIMG2hyt?=
 =?us-ascii?Q?f0M874JWQxgXMqwn0iqll7d/cN5OPblJtm9M2NKFCAiwTM4H4ATQReuJ3tun?=
 =?us-ascii?Q?b6/pvO0Yt3o5okQ8rKV1vTeXs9Ry25w62mJtSgbZfVtjZ5XKq/WK4TbAPlpo?=
 =?us-ascii?Q?YLJ0NDu3RptkNza5huFdrPrve6wN6cufANB6NFOl2fEvY2J5D/IAf67E3EQe?=
 =?us-ascii?Q?+YZ/kqbaqGMzquXolZjQtZmPAuOVKIW7tsokXVHv+9l7Ds/S+UAd6P6YpJPT?=
 =?us-ascii?Q?OTk3wQPiZTfB7M3Mu6AAFzxgHch6RBV9TObmCKSKob1qAfxQnxUWPy0jqzIq?=
 =?us-ascii?Q?+ZFCPKoJbC09pvgO9HUARqTzSqIFuBloqW6q/8YnoyWeRLzmreuYwwRdUypk?=
 =?us-ascii?Q?ndqlEmJsH8j9JlPFLj1CHTYBDDd/9itF4o277a7PUA+5oQwLHI8hSyK7X9F8?=
 =?us-ascii?Q?KsFw5KH5C/Torh6zsZknt85rgPHsIDRDPlkDuoaxsOa6RWCoUw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Iae0ICfSVDjqmVHazlTFW6twT82Il7UsDmc7//4CKqugMMpsbNTq3OD2+YfD?=
 =?us-ascii?Q?klVmQ/8jvHJv8o7C4YFpozleYhqEIDPKHGsZKWN6+VHxXg5NQdgQGzBihTlf?=
 =?us-ascii?Q?tOeesdtvB1fbzQgz8QXM+QKZUut1xBYLkRARubhE+S0S4mKIOM84meIrnQca?=
 =?us-ascii?Q?qfKk034fG8bRJYLImUbaXQ8RgkKAGQT8CitsGsScJaD/5PtgI4a5ZQALifsZ?=
 =?us-ascii?Q?V+ExDVPqcqcKX2aYv5BAm1BG0smWhTzNQkHJDW0VVT5g9M5UcPSrTMnnpMKi?=
 =?us-ascii?Q?V8Z0Ig4cVW/yu4klOlK5d9LtbAj9HixYPBSUWIjLgFu5SH7IQqfWypHTBEbi?=
 =?us-ascii?Q?qTcIhC/wAKKcHcpinsEIn/Ydgpb6QnhRBygdS/5C7ymIUIFE5z9aJ9v1G5MS?=
 =?us-ascii?Q?jbL+NnLpTyOI2s1lhgQdD30FfF/vwgYWJtetrlSuMZN+NjTc93Cf0u+csRoj?=
 =?us-ascii?Q?FwYASxzJSatK4YP7QAGEA4f49yrzwXUCFl3fF27CzflYHNmOPCJk1w16jqPU?=
 =?us-ascii?Q?uKGI/3GJxexEjbYYYY7qRUtqRvMkCKQc/ggmrU5C4bKQ72dOj9xDZBFOnpXu?=
 =?us-ascii?Q?vvWnf4tKZepeLmnaYOFj30zT158V+yGp+4BYU/ZQFz5WgEjKVh4+oPkALwiY?=
 =?us-ascii?Q?sZDq9JaJNUnKIl9RTuQ3xOir1SVUuE0KbpNaWGTXkc0b7Q37t50C260mGxrF?=
 =?us-ascii?Q?fRVe/g0CYxxHw1HSit2UdXGKm8UqLzk7a2A82m/yka6zLgQZ8Iqhl0FiuGoX?=
 =?us-ascii?Q?O/1PomSFK3gfF7MmF6v1T4hS9n3f27R58XirMu1fxUEN++WAqmyeWPqdWJHN?=
 =?us-ascii?Q?2Jyi6/Bf6iLN2gXxA/y99KWOx+5y4ahs4k2xed//N3WdKyDzNIuk1/6LykTx?=
 =?us-ascii?Q?fRNjkDGWG/59BPJsvovBOki/miN/dwqd576ndWbLg2Yu+JWfOqqbANAfF6Yv?=
 =?us-ascii?Q?Hh5TCheqDjOX8zS3yGjZzGJSGbPOmWOeXamPheNzy9QcSr/TCCgEYJhO89rD?=
 =?us-ascii?Q?rDS+HeGWVL8cZsjf3gBNdJea3LyfsXiC5PbX1rPlHGjsEXyvsWsXtB7b+viN?=
 =?us-ascii?Q?veEAZ6f4Ew5TEXTLnRa4DRawHBvGQQyh8LxeFofMPNqoamDP8f4ZCjhRpyOx?=
 =?us-ascii?Q?RqiEpIa9DYk93Iryng2Q0GbrLhs4eUOHiC9tqO9onlPU/lNobjJkLErT+8KF?=
 =?us-ascii?Q?B1qYImRLgQ0EfBUV3ifWKl8a9nW6aTRokHEPmYrVd9lkLQoXtCAaAT6iLEOH?=
 =?us-ascii?Q?TRO2E1KO+vuh8FLVkG+LbUQadSyoI5B237vA0UURq5qKoMAQC5Q7uIEPq2qy?=
 =?us-ascii?Q?bCj5aAV4sr3wFdCu6XRwF467zwrEEufbBKu6gRJvvJ7Vu0N/VZ8LS4n6Oktl?=
 =?us-ascii?Q?XyxRtaHWzCeSIEHPhiiMNlMxPWrjwKWvAk0Ycs3NTFT/vML2yjJx80tLsiWZ?=
 =?us-ascii?Q?y0UpggxOesFQgYn/1OzFJ3ZKnrg3PwBr05saghubTI5g4XsL2uocBRWvibJU?=
 =?us-ascii?Q?dXsFyxvPhxGYbmp8hwBbQ7nTwLE4AmHrZ7McSQFHaCP2y9tS677kWpKiueYd?=
 =?us-ascii?Q?lnf4HO22C1Tbg/I4L9e0NN213Mx2uhfG3tMibEAmJqgb+7UWUaHaMQbvaiZF?=
 =?us-ascii?Q?OQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d831c23-b4c3-40e7-d86b-08dcccc14aa0
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2024 09:09:33.2014 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eeCH2vKgMCb1hVp3hDQn3d2vyQCMbLrxXQ2apGTenasK5P0gmIh4PwfRYF/3omkNWMhn6gLVmVzPhB8RhyJe3Ew3rjwOrU1uTshKxBvr5lqApjT59i+9Pj2ThYWKvv9F
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5830
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725441047; x=1756977047;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=htJ7Tfm7UHPhImRvRBhxhCiBNWLRtj54KCJMOPaGiT4=;
 b=Qk4+UksXO5CTmDUc4bbm9XD6oLk5+b4ZHOCoHv6y3t1xch1a/9LJBicU
 wR7YrfCx7NDVsMsI2jI1tYD3yGcsbRiibI84ZC6/E123JFhIJxHMFn+wc
 kmhAmqZgj5mK8+6bttZ0Ao0PkExsv+LK9JNuRa1FJzbRCWNQa9ShbiAj3
 PugtsfKNwZKJBrHb27eJL2nDJYd0r0uYkmwta3nRHrG/FvIjqmpm9GqY6
 q7mnWQfxpP8LZPh7zULIAri8m5OAxcAVNYHPNoL6h6kCggMSW4WjgT5og
 LWhp3QizFEkMQGkde7+W+QDBPCNkpRmVyXM6xDT9xHt9eI5DtjA9evHaV
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Qk4+UksX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 3/5] ice: Initial support
 for E825C hardware in ice_adapter
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
Cc: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Simon Horman <horms@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of S=
ergey Temerkhanov
> Sent: Wednesday, August 21, 2024 6:40 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Temerkhanov, Sergey <sergey.temerkhanov@intel.com>; netdev@vger.kerne=
l.org; Simon Horman <horms@kernel.org>
> Subject: [Intel-wired-lan] [PATCH iwl-next v6 3/5] ice: Initial support f=
or E825C hardware in ice_adapter
>
> Address E825C devices by PCI ID since dual IP core configurations need 1 =
ice_adapter for both devices.
>
> Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> ---
>  drivers/net/ethernet/intel/ice/ice_adapter.c | 16 +++++++++++++---
>  1 file changed, 13 insertions(+), 3 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)


