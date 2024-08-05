Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D06B6947F39
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Aug 2024 18:23:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4AE2780EC7;
	Mon,  5 Aug 2024 16:23:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3ZxgNkDCsbNT; Mon,  5 Aug 2024 16:23:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4926380ECA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722875018;
	bh=PP9slnEVOnA451hpqWmWlbIj+TZcw3csyJ3FuXz8Dlk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6G+/6Oa6T0CdJqb3zM1jU4oxjPh4ywpqyJRC16vXEZidHWlm7F2yEIGGv631tro30
	 XwD1FAyQcqVM1BFkoGcdAvymUUjcoiWFZtDHYGOCWB4pMUdfyVMbc0ullbXSvD8zY7
	 7/YEmViTEmMQbnR2m442PMCA/ujVWcRXgsPQNgPWvwAAH8cNe9OkK1AeB83OHV/0BQ
	 wnywAarDeY4oX2DtGmONofhSJrP4Tu9gogeeo5aIwTfRyhfZ2Thodasj/t8h2rc4xm
	 iHsdYRM8HIEEoohlU6dz5cQcIGBqLBKOGtuLMnF5xJ4sJzv5SxXnxoR9BUJNTryQ+b
	 cINXqZrNJpIyg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4926380ECA;
	Mon,  5 Aug 2024 16:23:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9FAE01BF3AD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Aug 2024 16:23:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9957460769
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Aug 2024 16:23:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uK0ovE-tucHn for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Aug 2024 16:23:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AB1126058B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AB1126058B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AB1126058B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Aug 2024 16:23:35 +0000 (UTC)
X-CSE-ConnectionGUID: z+xVYKeaSKKSCfX+IL+6nw==
X-CSE-MsgGUID: mGQOIx0rT6iOUBwomLY63Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11155"; a="31511489"
X-IronPort-AV: E=Sophos;i="6.09,265,1716274800"; d="scan'208";a="31511489"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2024 09:21:52 -0700
X-CSE-ConnectionGUID: I/SxUvM7SK+5kMoO2CLEaQ==
X-CSE-MsgGUID: ZkOK78U8TA2N3wFtyyWblQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,265,1716274800"; d="scan'208";a="60362987"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Aug 2024 09:21:48 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 5 Aug 2024 09:21:47 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 5 Aug 2024 09:21:47 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 5 Aug 2024 09:21:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=V6fKsXpjRWJnrsSSVjdynbEioiELW/2SWSo5WKcxz9Hge1XXNuoYqfSNLKFPqfM8SZWtHMqPJrnWomDAzr8/NpmqbthA/h3J5AtB4l9ruxBWI+9fgNjdOMbX7Cl82dmho4fRnLpgVreQB8U88MPTzRucvpSMIWPY4OC+lLjBFPujhE1EoBHRiMswc9IvFnkrKtwaKMI84S7izUdom0dRidzAO4enHAjLNjW75lCXovVp3YyzwyyEWMCJi/xDnFMhO/PZoZZqzV+ld1D0HwtYIpXDkD4ng1nFIlXeZJxVf+P3jUORPPRlFASTBpezqZgti/r+BKxS4EtwBtPhyN/v0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PP9slnEVOnA451hpqWmWlbIj+TZcw3csyJ3FuXz8Dlk=;
 b=QLktXWqtnKCa8QM56TMd6LlILAPb2IEIiODNxBiZywdNNXfTsT5Nc2aqipSxDocUxrBXMt20VKPzKUbzt1xhkSvp/RmGLgQRKJdIRCHA5elcZ0GdAE7GRQ+rC5ZQyg/dyvcQyJtWYfZMYqRiX635WOdy/97FTN86Y4a+3rROP3c843e/NlCo+NHjwa4GRuCH4zrAdu9US6J6x9H5qgFRvJcUVsND2L+dJO8LgiBBD0GubXqkCiJmCZVzG1Ek0s9cmZsk37ckJdCjvYic4Cesv+Ccy+moDd/U4+oa9l0dwqONy4uGJ18lvqoMi/+je8jKbbcRIVfLho9j5jR5Vc7kQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB8380.namprd11.prod.outlook.com (2603:10b6:208:485::21)
 by LV8PR11MB8486.namprd11.prod.outlook.com (2603:10b6:408:1e8::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.27; Mon, 5 Aug
 2024 16:21:39 +0000
Received: from IA0PR11MB8380.namprd11.prod.outlook.com
 ([fe80::8227:fa7e:8d8d:df1f]) by IA0PR11MB8380.namprd11.prod.outlook.com
 ([fe80::8227:fa7e:8d8d:df1f%7]) with mapi id 15.20.7828.023; Mon, 5 Aug 2024
 16:21:39 +0000
From: "Kolacinski, Karol" <karol.kolacinski@intel.com>
To: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v3 iwl-next 4/4] ice: combine cross
 timestamp functions for E82x and E830
Thread-Index: AQHa3nahSqX7dPpYBUGbV0ImdnXrbbIJBQeAgA/HGUQ=
Date: Mon, 5 Aug 2024 16:21:39 +0000
Message-ID: <IA0PR11MB838091A67C0AE3598BFCDF8D86BE2@IA0PR11MB8380.namprd11.prod.outlook.com>
References: <20240725093932.54856-6-karol.kolacinski@intel.com>
 <20240725093932.54856-10-karol.kolacinski@intel.com>
 <ad94e165-ea7f-4216-b43d-b035c443a914@intel.com>
In-Reply-To: <ad94e165-ea7f-4216-b43d-b035c443a914@intel.com>
Accept-Language: en-GB, pl-PL, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB8380:EE_|LV8PR11MB8486:EE_
x-ms-office365-filtering-correlation-id: be0d1fed-a7ef-4eb9-716d-08dcb56aaf6e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?x+hcnH8Q/SL5MLSDZeXJw666bR2guR1NguOXGwHmKOFst3BHMDIN9kJ8C0?=
 =?iso-8859-1?Q?t6AfL3LaGLtx3nlk3p4qdEq+24TQxmla/JPR5iW0oVdQWdwDk3SDNsvzl7?=
 =?iso-8859-1?Q?tbllthuoTljq4MrkN62jgcPH73qcNheFk0Wztwv2fvbgolUL54VaiClLN1?=
 =?iso-8859-1?Q?OuOOBRpn7LA49/opCCsr8aSmAh/oT7pFWyENwLR+0EuZTEnVhwqI9W5NIK?=
 =?iso-8859-1?Q?86RKZwQ03HZ81hJUj6zCsLpe9xby42XacC/oCwC6Q8b9TtnirsY9cY5MmS?=
 =?iso-8859-1?Q?zKta+1tf7ikv4V44vtIbJWtyPnEGGoFxFOqeQauUqzYx2bXvCwvSBoidST?=
 =?iso-8859-1?Q?2KjfbBU4uVqMc1YkikPoMHOGGPQU6cGuQlaFWb5hxuVXg24HZGEKxPkhce?=
 =?iso-8859-1?Q?h8Qx3WdCx/aTPnUUH3dhGA2QtJ7rpNkImqz7GM6k6LFtgtBSZBVaMUi77R?=
 =?iso-8859-1?Q?0c5JevxcjbqQwOGVnBInWSFTAd7AIFIhSBR3Ja4mJy/067jDjFD9U4ToWr?=
 =?iso-8859-1?Q?FpTdAcIixyREDnSARORdnCFpT8peh61vaI4wCwAyrPgqrYBSNQNAzBWuvA?=
 =?iso-8859-1?Q?W9Aiy+yjmYYKBEluQIGjJ9Rw4zTQxqlmVe0kQYPWVYqSP2j5FJ2arU1PEP?=
 =?iso-8859-1?Q?Z4HAmhNwZkG2XCcDkevMucD+18eXRvdhY5DtNzmluwRLmC+Rk0mnOvopQg?=
 =?iso-8859-1?Q?4KF4MzCZpy6QcytZihRSUccPU4ffycLXsli+4hXkO/BgcaIUqGylwtV6Gq?=
 =?iso-8859-1?Q?XRQlZDX1YCdGsZI9zxUICo47r73FvBscJ1E4VG7Ze2/o8ef7g/jqM8NZQg?=
 =?iso-8859-1?Q?o+6x78AlQjBDarR0R8pqyif+mS437HqKR8d4muqhd24I2tX76aruFI13Lr?=
 =?iso-8859-1?Q?jqKnlJLks4dzeBnS7VZ9eRQ61ZQxoAIDG8HfsMvVLbxqqklDeGc7C4CJz5?=
 =?iso-8859-1?Q?P4NgPnh8+j7OlBjiDKAGGCzkth8oyVhfzVtNsVTqKyT+Se3ZLL/jU9esBr?=
 =?iso-8859-1?Q?+nmN1K5q/4Xlus1318RFqEgY87TU205KVfZXGGUUm3318eNBSoKswCVm6b?=
 =?iso-8859-1?Q?eeVmUQnmEZ2uwQRH1Q8a71nxKtcHw7MN6c+hf1hkkXzx6R/5xp/x26hQlw?=
 =?iso-8859-1?Q?QNVEFOrFMvVc+Wh3ubfsNrTyErslT+Fd8rA1jIfdhTTiXijBhP1DHOXt1m?=
 =?iso-8859-1?Q?JQ6lWmwJiT7+MnBRopbBEHibUgaaKvG8Am0KwyHwMLNbdrXegYGOWubiw2?=
 =?iso-8859-1?Q?pYbqeCVYY6CtYnko1mkOlPLcRPQx7/aXwmctrI9rVkdZO2mXfkr0tO8B38?=
 =?iso-8859-1?Q?UhNC+mzuOcGsYfk1auHsKt8PgApYuFqgEImwdGRQxvMS1zlEwvma8R+wCq?=
 =?iso-8859-1?Q?nVvrCAkVaTbqn268Ft7pBO5m4pNQLfpnKXRazE2KNthscZWvv3jk9HaBX3?=
 =?iso-8859-1?Q?5ErSm19UW6yn5vym8/wT0mFBI6QJKAZsh8cnyg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB8380.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?jyZRmQCH4bz1ZuapyBjaaH2KxomdIDSyRYm+q/IDqW3DruvEGDXIM4JkJU?=
 =?iso-8859-1?Q?zj9Rr7ba8vjigwHPDHTShUYnkP46GyXj9Aib7m085af6RbmqdedLXveTms?=
 =?iso-8859-1?Q?qtWOp1RYcQZ/1Naqmpdtr9pDgwsjdc3U3La491TVmwAGWBJ0n2U/ReFJzy?=
 =?iso-8859-1?Q?pHR2h3oaqymZAIgnoJ98fxTW3ttKERBrb6+GAH0vn9Fv4hHmSwTIHdIFqn?=
 =?iso-8859-1?Q?g4hpuODyscuQFNM+txr2+ege66FAkwIvpRX4Zmmx++cD2DkuHGI+fjx5Bz?=
 =?iso-8859-1?Q?np+kAA48ZAPmiXeppCuOGfKf52aVRlSiUrmexIg+WuCegnUGmRx5yqF++J?=
 =?iso-8859-1?Q?QYkrqSt4phG4jZqHzZKYzv8UKsKDBEIe99h+i6gvthMLWuc4iHIMVfybMy?=
 =?iso-8859-1?Q?GzDIwTDX0U6oejWxL8PhZxIM4s6g3x+W+R8xlTqNIpQC1nbA/ZuaOohg/T?=
 =?iso-8859-1?Q?/2iAnX+OieOkT1p9mj98TFMn0+WKkN4S2Oe0vbE6iP1YpMlkUzqckMW8ko?=
 =?iso-8859-1?Q?7zwFCGO/1lz9oiU1GC4MSGjfjZsohp0m+dL7eL7oaozkOCWtFr54wTfSQ9?=
 =?iso-8859-1?Q?Jzv3sJhqoe1ax2kIrq3OO0o5W7rNGOLbHQrqi+8d8cKTLAu1xkGMJWf86v?=
 =?iso-8859-1?Q?07L+9pPyk980AUEQ4k/AULVSdKYIBmnrSOadTS75zEZyUMNl+6pgN8w77I?=
 =?iso-8859-1?Q?u2ABC49GWQJnswct62ZK74WOtqaNCamqrnP/rdum+nQcsThHZFUA6XnB5w?=
 =?iso-8859-1?Q?E76UjTeFApRisyyZy1Wxh0achp/yceC1fmhb1I1QgKdEjJ9kh+FYC2Lwnb?=
 =?iso-8859-1?Q?XUclMRH/xARGAJnRWd6ilAnQHXQlZgS9aI+Kr7teQl6vNTHdCB4jonkATK?=
 =?iso-8859-1?Q?pNrjB63vHtBQuNjH+UOy3SmIfQnr1Mu7eNedsfu24+uJZn6RVNR/TqpOGO?=
 =?iso-8859-1?Q?wu3Ey6r6HI7rrQ1DhoOj6RFxE0qHqqihzqFcOKe/hIqr044ea7TT37zJXV?=
 =?iso-8859-1?Q?YAeQ2+04vWRL3v7UKdY3fIswSHNkfluK3BX/0r4EVFH0yI2cWeYoCKUf0T?=
 =?iso-8859-1?Q?JJmr7Xv1Czg2YTcRlK+KREkK06PHH3z0mVOxK1tpYBi24/KXVz1wrrsSes?=
 =?iso-8859-1?Q?a66KOE1upze6JRZlHV3g9YI8BMYqavgAMsw/0iVUcafP8kYCaH+Z9bpzVR?=
 =?iso-8859-1?Q?R1DnnQIF5Y7nILayfVWRsylIVxdU27z+LBn2KP1gsUF8nd4DZlzR9/avFJ?=
 =?iso-8859-1?Q?xTnEJuytod596BP0pKRyq7ITdtA55KX0aNWv/sgbCYKzwInM4+RqjcGHe+?=
 =?iso-8859-1?Q?UMPFU8O8ZaW/7RBFSbj9fAmA2ucqUgkC/sZbfcG1rPOoOZQG8nQC/5UiF6?=
 =?iso-8859-1?Q?dNndUlHJ39XV5fwNZ0aGTAnXEwznKMsuiWfh2FhI8WIHrzse9PGI5UMwo/?=
 =?iso-8859-1?Q?PFQ958FRAg+G96UaF2EuFl6HF988qoQNCaZtxAqeUyn3qmIDDPJ/giguLY?=
 =?iso-8859-1?Q?Wf4URLirXZ7Fya4cASpEDMyPZYN1EbSx+qdl/duv3Mtp6NTXr0GutHMmba?=
 =?iso-8859-1?Q?B2C7Gjz21Jjvg2GCCBmzyDpJVw3NRQ3Gq6MMNMsQ0tUszfZEPt6IQX3Wwm?=
 =?iso-8859-1?Q?a14Z4wKM5Zt8DUOi5uIR+9Igk7LnnPI7aM?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB8380.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: be0d1fed-a7ef-4eb9-716d-08dcb56aaf6e
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2024 16:21:39.4040 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eF+dUuSTs677AmRKAwhMsJTkXGqqiRuxS4Uxc4J5ByPlRSLAGJZzFzNxR9YxF8RZ+34+hU9U3SONG5ookPFzgaYbOr4RMx69oqOb0sKc8Vc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8486
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722875016; x=1754411016;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PP9slnEVOnA451hpqWmWlbIj+TZcw3csyJ3FuXz8Dlk=;
 b=cUmMPPIe7J8YJHbudtgLgsJzgLjGJE+5LZ3D0kbEtcEgjXaTz9MgWWDQ
 T5zKpbkjD41qkQSD1S2z6RO0j2nOQdTycGW508/Y1IvjWrxL/X4kIiAgY
 PeDQw1J5/nLZD2yUbQb+BhS562XPCpbphbCwJWbIdB72Xn+pq1O/C75zu
 +BSF2hGG/xNIVZp5QClUkHYSPQxB5+Xl8McBs5StDDZvkUH6171LaF018
 PXmx1oPkXekfdqkoXbrsOVKTCAOdv01d05hkwllkjbFMwOTOQP4MXS+vN
 yFgz937TSXzwTeJ9YVk8QP9cvtVx43t1e5dgq40tDanbPuG8DSdWF4qPY
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cUmMPPIe
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 iwl-next 4/4] ice: combine cross
 timestamp functions for E82x and E830
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Aleksander Lobakin <aleksander.lobakin@intel.com>=0A=
Date: Fri, 26 Jul 2024 15:37 +0200=0A=
> > +/**=0A=
> > + * ice_ptp_set_funcs_e830 - Set specialized functions for E830 support=
=0A=
> > + * @pf: Board private structure=0A=
> > + *=0A=
> > + * Assign functions to the PTP capabiltiies structure for E830 devices=
.=0A=
> > + * Functions which operate across all device families should be set di=
rectly=0A=
> > + * in ice_ptp_set_caps. Only add functions here which are distinct for=
 E830=0A=
> > + * devices.=0A=
> > + */=0A=
> > +static void ice_ptp_set_funcs_e830(struct ice_pf *pf)=0A=
> > +{=0A=
> > +#ifdef CONFIG_ICE_HWTS=0A=
> > +=A0=A0=A0=A0 if (pcie_ptm_enabled(pf->pdev) &&=0A=
> > +=A0=A0=A0=A0=A0=A0=A0=A0 boot_cpu_has(X86_FEATURE_ART) &&=0A=
> > +=A0=A0=A0=A0=A0=A0=A0=A0 boot_cpu_has(X86_FEATURE_TSC_KNOWN_FREQ))=0A=
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 pf->ptp.info.getcrosststamp =3D i=
ce_ptp_getcrosststamp;=0A=
> > +#endif /* CONFIG_ICE_HWTS */=0A=
> =0A=
> I've seen this pattern in several drivers already. I really feel like it=
=0A=
> needs a generic wrapper.=0A=
> I mean, there should be something like=0A=
> =0A=
> arch/x86/include/asm/ptm.h (not sure about the name)=0A=
> =0A=
> where you put let's say=0A=
> =0A=
> static inline bool arch_has_ptm(struct pci_device *pdev)=0A=
> =0A=
> Same for=0A=
> =0A=
> include/asm-generic/ptm.h=0A=
> =0A=
> there it will be `return false`.=0A=
> =0A=
> In include/asm-generic/Kbuild, you add=0A=
> =0A=
> mandatory-y +=3D ptm.h.=0A=
> =0A=
> Then, include/linux/ptm.h should include <asm/ptm.h> and in your driver=
=0A=
> sources, you include <linux/ptm.h> and check=0A=
> =0A=
> =A0=A0=A0=A0=A0=A0=A0 if (arch_has_ptm(pdev))=0A=
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 pf->ptp.info.getcrosststamp=
 =3D ice_ptp_getcrosststamp;=0A=
> =0A=
> It's just a draft, adjust accordingly.=0A=
> =0A=
> Checking for x86 features in the driver doesn't look good. Especially=0A=
> when you add ARM64 or whatever support in future.=0A=
=0A=
For PTM, we check only pcie_ptm_enabled(). PTM is a PCIE feature=0A=
supported regardless of arch.=0A=
=0A=
The two other checks are for the x86 Always Running Timer (ART) and x86=0A=
TimeStamp Counter (TSC) features. Those are not tied to PTM, but are=0A=
necessary for crosstimestamping on devices supported by ice driver.=0A=
=0A=
I guess I can remove checks from E82X since all of those are SoC, so=0A=
HW always supports this.=0A=
=0A=
For E830, I see no other way, than to check the ART feature. This is=0A=
what the HW latches in its registers.=0A=
I think we could drop TSC_KNOWN_FREQ check since there's new logic=0A=
around get_device_system_crosststamp() and cycles conversion.=0A=
=0A=
Thanks,=0A=
Karol=
