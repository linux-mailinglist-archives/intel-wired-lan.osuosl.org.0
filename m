Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CAD03BA92E6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Sep 2025 14:17:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6491B60AF2;
	Mon, 29 Sep 2025 12:17:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7zNkvSKDcALc; Mon, 29 Sep 2025 12:17:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E088D60AF5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759148257;
	bh=ESdUSAOzIvOnea1BXeKeM0s9tLP8zL6EUx+mOfcdM+0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IUD3IDRj5sOEP/W6czYrDkJDm826NZLiluyOoZXqW4KmHyk3ZuQkpWoWu2IyBkLfT
	 wOU+7TFLRj8TSYSgEIMvYcrowizco/xPb3VUiNV8785BWc2aVKnHr1UnhwW74BOsut
	 lDWhIv1I6iq3SQjsxPANadr9HeCo9pC4mOcp8FdR3bGtvsV1JsYw6NLNoYar1XPy5m
	 J4xpJyq28LNfaLC9apvsjM+QdeJyQudZerAEWAHvY7diSOb1JFwcBKDzESycoPJBq2
	 GEl5q8kjEeA8dbWNo0sycqRf/XQE4I0B+vtJ68zxFlip/rqrct5PXvVz8lQoKusmoJ
	 ANo0C9SolYXwg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E088D60AF5;
	Mon, 29 Sep 2025 12:17:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id A3A3B12D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 12:17:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 95744810A6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 12:17:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OPyInXLZmizr for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Sep 2025 12:17:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A9F24806DB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A9F24806DB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A9F24806DB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 12:17:34 +0000 (UTC)
X-CSE-ConnectionGUID: wgy0FF0ORKyyYH5v6mgexQ==
X-CSE-MsgGUID: 2mXSGiSsTo+2su6AYC3u4Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="61297804"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="61297804"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2025 05:17:28 -0700
X-CSE-ConnectionGUID: W4eyyVaIQnqA33Hw5sTgLA==
X-CSE-MsgGUID: zijzR/JATG6Pez4enXmvWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,301,1751266800"; d="scan'208";a="177472158"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2025 05:17:26 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 29 Sep 2025 05:17:25 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 29 Sep 2025 05:17:25 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.59) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 29 Sep 2025 05:17:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dkDWOHdKupbWQfFalCmnpZ4lvYzJWFDZRUBGhlBNsuqdPt2TcWcU/Jjsj9uL3zE5a1/jHrae/D/aSbUhvc0lgqI/jof601qZ4a9ArGzj8J1qe9A02s1fr/yjizv9lUWoRRmGeu5HA2cg4YxDpajmIhLTxy/9G1JxMj16tbpbak6Z704eGL2xJG/Qx31qpHsCBfurl3xT0D9kKgRaTO1vOiubN3gQniyTnuBXeZFiQ4D7a2Xgw+pyJum8Ie056c9RMQ0wSrGGdTuERpNfTU7j2UrNC9FRgzpAr0ECowV2d936noUZU39IGlt8sYrwEgakjgCjawVqeZsJYw4beNjq5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ESdUSAOzIvOnea1BXeKeM0s9tLP8zL6EUx+mOfcdM+0=;
 b=d7c8kyBqPDKV2e0pCqAKV23JmPo1LzuW5y3+kOp6cEwSabz4O67MGDGTUpxCYVuX452qUv+3OZ2SXxt29lSYwQcb1nFogk1ICpOYc1Msn5qHA2m3kTZ9eZMcSM8QvXq+xBWXdNESjVPlc0tyuYzWGeqUMgl4TBSXjJhIQaI20w3jhNC+jJor6RMjVtA3W8NBRD+9L3gp6XtY5PPNY/LfcUlF9d1SLGx0WzG4YUIjeoz6MtEzPnpBqPiNbP7yovUJEBN9zrDzS+CHbkc8zF5ng+L5UOjEE6n2kYgb511xLWaVQ7NoTy9ZefmTytcWt6i7yu+LJmeT/gyv6Nh5rfsxzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by IA1PR11MB7917.namprd11.prod.outlook.com (2603:10b6:208:3fe::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.17; Mon, 29 Sep
 2025 12:17:15 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9160.014; Mon, 29 Sep 2025
 12:17:15 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Simon Horman
 <horms@kernel.org>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 2/9] ice: move service task
 start out of ice_init_pf()
Thread-Index: AQHcI+ei6SnQs6Ow+kWgSVDdYAmtWLSqG8kg
Date: Mon, 29 Sep 2025 12:17:15 +0000
Message-ID: <IA1PR11MB624105DFDE0D61E718D37E118B1BA@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250912130627.5015-1-przemyslaw.kitszel@intel.com>
 <20250912130627.5015-3-przemyslaw.kitszel@intel.com>
In-Reply-To: <20250912130627.5015-3-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|IA1PR11MB7917:EE_
x-ms-office365-filtering-correlation-id: a21b0a68-aef6-4e5b-0807-08ddff522079
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?wPLS7zeEzKBPnpT15rS3bfoWrf9WUV2Y8PL+V+Rnlkeza0g1w+QaQgvEAcV6?=
 =?us-ascii?Q?Bu7MANKAuRiO2b/XuxOv+F9ylW1VeCclQXI3fNY33xjv+sfecB4OQU4OLHDe?=
 =?us-ascii?Q?VBN9ccdCzV5jPHxooeff6STX1B4dY1ZW8jdh3Lw+xMDyKekxzF0mD/q6sUYS?=
 =?us-ascii?Q?arLALHaThbkkzrj56tHaJHPzEmGRJzQSjMjWr1adc0xpUjcDg760lpilfcho?=
 =?us-ascii?Q?xDSgElFUJ4YPTSY59B2hMl3UbIqm9+O4bzZhyQ4Y+aS0fhu/oV8KULkYMFp9?=
 =?us-ascii?Q?4hy9t3OzWNXCIv2CkAMExI7pnPjOv1bQMl8+g8buN8MGeziIFQ/07IMhtQyr?=
 =?us-ascii?Q?cLlCPLNXqOt1pPPz3unF9rnbbPVN1iV/jUX5VmR1TcBpuXzd6h936EHiJA/6?=
 =?us-ascii?Q?RFY/Xe5CI8oDekMPyhnGtC1Hvui5Z8gqyUawl+9AzzVMI9EgQbZmsBKwHIeJ?=
 =?us-ascii?Q?daKxgnQAe8hDhqumHQ+/CPw1gKvk+7fjwn9ZJ7GmIU0zZ8tUirtzQ4JRAi0P?=
 =?us-ascii?Q?yvAsJU58ikFkJWnufCo2k3mkBX/Do8x3UysXEW9qIWRXExYXSDx53tFTVulj?=
 =?us-ascii?Q?4REEfBFKuz3bt9KleJFMZ3Y3NPc3aHIxMNfuQzGf9y4U0byd877Zf3x3/pdR?=
 =?us-ascii?Q?F2Ew49phbzeTy6B5wvyNvgpmEWQ1IwQ6z2wUxJsrFs7rne2oxLqKVvPFrPl0?=
 =?us-ascii?Q?1WAQUE+q3bWsaMidzuHMApKT/ro+tVl3qCT87Ac1luPCqF5nEgBvwI8MKdDj?=
 =?us-ascii?Q?XNM66k73563iLSETvY1Z39utAa9PduV7xIb+NuluJoIs3kcUE4VIxO/R4rzm?=
 =?us-ascii?Q?Yto86NOL2DZkS+O9N5MyB6t6N9jL8BFy3jBgJAxurtXQxzefQe7dshCJ38gH?=
 =?us-ascii?Q?qq/P/jONmgqU3bDKiXTlFqGIvSrPdiiHtoLAEa2Ka8AVWpzshGOvXqQr0X2V?=
 =?us-ascii?Q?k+BW5Nkqah1lCCMNQn+fGEjQn9KFdqomLqIxdLS5Vi3cOjrvqFVJKQsFQxqk?=
 =?us-ascii?Q?dqSNWV2G7j0sN55gBUNcO2LeDaAspsRKXmvtBt+hR2YzrCGHlN+lCq0F1tH9?=
 =?us-ascii?Q?J4vwcTFlojM0Ygtu3/N92jXcTYv2XusxRz5YxDASSzaeQkXMHGMa2YYJEuFo?=
 =?us-ascii?Q?a9hQX7xSy3+9QXwvHpa1iNlhWCfJomVTNX9WxFmO6Z/p5ZXBLAwFQJSKZ//j?=
 =?us-ascii?Q?o5bSOLopQZF6CxbjH3r6CKqY3NkICkk/Z8PyPhJ41CeSPCf5bZno2/L21cSg?=
 =?us-ascii?Q?HK9F3NyMOsL05GQK8EQOD+D8yrgAdSYiF5JAz1py+pYLq2qnPXlkdio+OGH2?=
 =?us-ascii?Q?Wm49hZigLdud5a+4VkoLMRjWHxdFV98bzMU2qXKdGPpZw/t0Gcy+jfY/syIl?=
 =?us-ascii?Q?7s8hvJcR/fx6+nkwcDjutybc8FBaoYhy3cjqRsWOihde7OExdQir3xFC9Sf7?=
 =?us-ascii?Q?mNZ8voJ90n2Kd4Yso+BHbSGNdNBTE8n9n4dVaibaoIPgvrjwNqtVdd7ZHLGA?=
 =?us-ascii?Q?fS0tNFV9pg2jn7Ba1I8JTrqslab2HKQWiVDb?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?LfSwnYiPb+WH5o6exfheYjUIRsNTgyzm7PRE7DshH0CY86Tdhyk2DvB0jCA7?=
 =?us-ascii?Q?udPhM9RV139jggw0XJDMqv9vvWo7gv2ef/yTZIm03neZ4G/Bk/L5Kv7Wtbda?=
 =?us-ascii?Q?+PxIfAh58kUvrSqtXmvqA/kHCs59UNOZRE/z0ZX2DVvHj5KQsLIMLhslY5iO?=
 =?us-ascii?Q?73GPXA6VIEIHm+wyxHafEB5Rm5b8A/IehodFBF3QPfqOvWSD0t/sLKiOwKF1?=
 =?us-ascii?Q?hV0lSBWFYqzRA01aexa4S2B5SRNv99TnaVylAfZDgauvAjZIQP0isAlzK/Jj?=
 =?us-ascii?Q?FxQ6/IZDvWgp7Uxfpxoip8vDGpi+w6p/HE5AkPBAygRut9ybG8YsSD76cw1u?=
 =?us-ascii?Q?ZDtj6O3m0w2dbNdC6Dvtqh+9Tgm5f2W0o9r2OJcNg9qZI6kvWMtgw29H8kVR?=
 =?us-ascii?Q?qaung5TzW/lNEI6JE7FXfOk3n5+BV0qo6Xyv6uWce6J3npVINZFmzfUrW6Pq?=
 =?us-ascii?Q?WFdgN9nLkLM424KEHwMhrEOOyCl1j6NL7ofUqnNjsImS+SLu7I2PnfcrDp5X?=
 =?us-ascii?Q?y4L4kBZhk/sZTMHSOt351KO5iwaFLHv3rNI5SW6InE7Iu6Y/Uki4HGSLZNK3?=
 =?us-ascii?Q?Py3ZTgEWtII5GFj2jPLzic9nbG/Ef6m2bhp0YUpBVjponN6fYjyblsjThn16?=
 =?us-ascii?Q?BZdqGujFM33YBJ3gHrEfDgTF4TMq9FvCd4syb9DRC51bornDv7q5jqrhxSNK?=
 =?us-ascii?Q?6uGFBG2lv6EXfQkEXr89EMaU4ZMS/Yezotks/l+BocAM6c7BhwMDTH4JUxvx?=
 =?us-ascii?Q?UrmjCMc/bDOGv4up75aD8SdYmNJtx9mrLTUOQH3omUPh/qkjZAt4DxMi9DyA?=
 =?us-ascii?Q?2eLmICwZjcA3KS1G8pGFrjqk9JCcq96/qu6K2Om+Z2ZIiXM31RLVOhm3RAUj?=
 =?us-ascii?Q?Hj4xjzHtoJmuV+TEzfkaYXc/A+4kK4YqdSms2yXldKlyXoQdvUHlPHIqtHcG?=
 =?us-ascii?Q?hMHiU6o/izsAu6hh9fYyc+fXAT2wFwOcPAU61cR1TkxDfNhAq1X8g+ElQ7Kt?=
 =?us-ascii?Q?SUCAVgpR6ota7TQ43LDY9TiFu3aHROByyuW+ViKPrP5jT2XaMvVLE44My092?=
 =?us-ascii?Q?WCRh6f7ScMMndwI+Y9hEEReBBgC+TXgaEwomjr6FvYUmEB8nLcN1YMTl7rvf?=
 =?us-ascii?Q?9aEEJrIhk0qzr13S+A4cVKA93b+I/ArEvrWD/lLpRXumHMpADdjCL+ScrPiY?=
 =?us-ascii?Q?3MWrU/CNX8Y1f24BAk7GiLkpZ0zWSwD163Kj0ssj+OTIDl97OuK9sj7/MS0P?=
 =?us-ascii?Q?lbY5t8xxlshJwkXDrYg73w+aAyVv0nkplGcoN/lTDhiPZAoHTSAJLSQWK3v+?=
 =?us-ascii?Q?rzsAFmwn8FQuXmLsmngVTYDpUFBU37PUXln9ZjjNVjeuBorFjIoliJ3W0mAh?=
 =?us-ascii?Q?kBsUPpQi2RThEa4773vqgSBGUXy1uMT0pVMV/yVotP5j69jqQt5CGwGHk8wJ?=
 =?us-ascii?Q?c73U6dm8wFXQZaz4GrpUHvV0UHtQFbatfw5xkFEjr4Tk/L0adLH/WpgvLr2Y?=
 =?us-ascii?Q?BfhVZydNJ96oQzejK8K17x7RXlHII/vUDU+AKfWl0cJMfBBK2aM4RHlInEh4?=
 =?us-ascii?Q?4YdHZlAeuk2fZpRJRQLejvXSJR5J7gMUiOxctUpH?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a21b0a68-aef6-4e5b-0807-08ddff522079
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Sep 2025 12:17:15.3581 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gd5kq3NCPCkQb/aExt3Sv3usTKYAAe3lYPOjXtvbK9jHjP18kqetUlZJlvVmWwYO6Y8FeSF7xSbK90GOnMGyPg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7917
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759148254; x=1790684254;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=anXtAHsLexUw4uDrg6DrPxv6zZGAR6kVocrrZzOAFWw=;
 b=Mb1b5QwY4tJAdcFNYyuW0896I/Z1O/bAxjRqLYXHht+F+9PIBz0BqrxM
 G2KJj9qT1O8BTI73oF85Ui4p2Z8Q4akGpV9CeIXcnQ2qCgceRrhYNLW9b
 /89oHuHVFznhgAe45v1EgUiKWa1rV68h6a0b4wTXYVDDlIhIS5TJMv/4R
 HaL+bMFfGxkLM6vZLu0g6V92O6+BTcVsu7e0V049tguZRqk/nlQx5YTiX
 xHVj6PXCD0gcHY4GLzOBQdEQ/oA0RQZxZepn/W4PLBiPajQoTUddWvW1q
 URd5ppnim5r20ti3MWDQibKE9FurDi84oaGNmA5d1CBPfobwr9XG1Nmad
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Mb1b5QwY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/9] ice: move service task
 start out of ice_init_pf()
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
rzemek Kitszel
> Sent: 12 September 2025 18:36
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>
> Cc: netdev@vger.kernel.org; Simon Horman <horms@kernel.org>; Kitszel, Prz=
emyslaw <przemyslaw.kitszel@intel.com>; Keller, Jacob E <jacob.e.keller@int=
el.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next 2/9] ice: move service task st=
art out of ice_init_pf()
>
> Move service task start out of ice_init_pf(). Do analogous with deinit.
> Service task is needed up to the very end of driver removal, later commit=
 of the series will move it later on execution timeline.
>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
> drivers/net/ethernet/intel/ice/ice.h      |  1 +
> drivers/net/ethernet/intel/ice/ice_main.c | 18 +++++++++++-------
> 2 files changed, 12 insertions(+), 7 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)

