Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A618B13729
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Jul 2025 11:05:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D337C80D59;
	Mon, 28 Jul 2025 09:05:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T_RRtlfecC1h; Mon, 28 Jul 2025 09:05:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E0DD880D5E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753693517;
	bh=1EiADAJ2eI1e3cygxqIDwcZXSFL+fQCqrz4EAtnPmMo=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=aqB4WlQlHViAx2edtIaLkaRegYyViec89ZMj+07Y84DW+BVwSFoZ7NgjpzEWckWYN
	 QZtdmkRtFBDJcNOT5OKBSDmizMXdkGAT/i4nEDaj6+gmqHHdSB3pI+c0xdTEIH1DGt
	 cmmlhnbFp2HBh5oJvFpK0V/+nXlGGRSGWZgNBr6PLwIngsW0NhlIzKWtnDU9ZhJGcE
	 DxkdkFwVqqNyjotNWDRiHqihp3oKR2dQhjEb5+Le6GzEP2z/cP94AK+881vBONFrzi
	 JdLBXp1VQT7EEr1A/Cudpip9rN9v1oTKl0zL7Yy+xxsbCHI+blGdB+nA+0JsAJGHrB
	 HrotlSLm/p2gg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E0DD880D5E;
	Mon, 28 Jul 2025 09:05:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 34E15231
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Jul 2025 09:05:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 265B340598
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Jul 2025 09:05:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WvHYGctlPZdQ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Jul 2025 09:05:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4202C4058D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4202C4058D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4202C4058D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Jul 2025 09:05:15 +0000 (UTC)
X-CSE-ConnectionGUID: QtxRBO4qRaSgMdW2ueTH3A==
X-CSE-MsgGUID: 7ShZdsTkTcGmqKMUpPDXBQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11504"; a="66638379"
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="66638379"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2025 02:05:15 -0700
X-CSE-ConnectionGUID: fLcVRCy3QDSsewS58Ha3wQ==
X-CSE-MsgGUID: 1XVj/YDZSyKZdjJxzHpMFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="162813238"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2025 02:05:14 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 28 Jul 2025 02:05:13 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 28 Jul 2025 02:05:13 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.50)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 28 Jul 2025 02:05:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VnpCOTAu9YFHC5cu+gE5j3clfxcCHhSLfLYdzOdxtTLN+09BL/ZRzZbI33PSNv9mbn8U8lM+6W38GbVmIktnUAOoJBa+67cIl4070ARspn6Trb2KAp3gOglF+yCgqrnkIKFykL2TSptwtklzhHaVg+tFwnC8AOJGjawkNr0ognyofHMfgUE61cHB/fomsB0aijIgKIbBg9bSZxanGZF/OHudSwSehPD2g5pBGZfQPJP/3oR5G2BO3QIb3drfRnAS/ZeHIF1wsgzuJW9sMsIPHPaZNN4knqspshDIBw2mR6eB/VBb31clur9q8oFbUdGMbTIZ78cpuTgvxO51i/CYQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1EiADAJ2eI1e3cygxqIDwcZXSFL+fQCqrz4EAtnPmMo=;
 b=Dd/tccQgMfs+gR2oJubxZKetSYbg72tXQBUVD3gszV/oMlt0FY5QVEo39JHfT7U0sM044k7Y2lB+Y6cHoOohavcA980i9X5oJCJ6ibKr+UmJvoXWgjxn1dobupkU6GcnIVzGxghbI1poIPxIKf15GyHAb4dll1cjNsM5tPEehj7aj/QIHYudeNkUhymBGR8TZ3fr/+bPuU7tF/IF+yHjWAslzf0pvwxdh8FyaO7n7f3j185U0LVW6JQOHwS+x4vgVk11gMBbHEi8Rov7ygr3awVmMGXZXt5qX7LLWWhEp7pmDliqoslw+6rtnF02KevA5dRy16jWsvsSUSV9W3EJ1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by IA1PR11MB7174.namprd11.prod.outlook.com (2603:10b6:208:41a::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.26; Mon, 28 Jul
 2025 09:04:29 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.8964.021; Mon, 28 Jul 2025
 09:04:29 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Hay, Joshua A" <joshua.a.hay@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Hay, Joshua A"
 <joshua.a.hay@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v3 6/6] idpf: remove obsolete
 stashing code
Thread-Index: AQHb/ZLl+hGGpxFN+k2vGgqENeIHK7RHQdRA
Date: Mon, 28 Jul 2025 09:04:29 +0000
Message-ID: <IA3PR11MB8986D19B550C24FC8D6E76E1E55AA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250725184223.4084821-1-joshua.a.hay@intel.com>
 <20250725184223.4084821-7-joshua.a.hay@intel.com>
In-Reply-To: <20250725184223.4084821-7-joshua.a.hay@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|IA1PR11MB7174:EE_
x-ms-office365-filtering-correlation-id: 8bc6e726-8f69-470a-dcef-08ddcdb5c2a8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?l9c+7gLZJgKwC6R/3QvsDD2KC7C5oqmLl4JnxCQi/u6Af0uNL9YbRayWmGGY?=
 =?us-ascii?Q?WDUwOGcTzc+Lqd7t3I/3mHV9ImnAR+Tw4mggMe0df8JhAbuIroKay1h3DFFX?=
 =?us-ascii?Q?JOcmFcYS34+teMHEBZk/0hOWjtsWMYO8Hy0+GsesGBxgffav2cfY7qOprFlX?=
 =?us-ascii?Q?550yTXkOppeAG1HKdjQnyhIUflewisjZ8MFJsOeJKQx0784OvbzLyMmThFzr?=
 =?us-ascii?Q?BhxiuBttLWWqxRhg4hdHo4X8RwCFE/5o8MKNJelDLwUpbqR0RGsKZi24VmR4?=
 =?us-ascii?Q?SDKHBivJWtJiX37pZ5vJaHHMRDAojh2oILntlZ8jyy3lc8sRXcCbebs3VPf7?=
 =?us-ascii?Q?PjYDrBQxvRxVpUaptBqZwK6vvYCXSsw032gRDLeTJ2Pbg/O8j9mstXlHuOVI?=
 =?us-ascii?Q?YGWEdAZDWtdoio8H2NB2a5/oVJGKMhlYn86hM0e7H710qOFge0ix2E9hxPSr?=
 =?us-ascii?Q?9ZhbCML8FENXT49tnauUyGgxtgjQNhR9hzC7dm/dwubC9Rn+0M4IOoknbhgL?=
 =?us-ascii?Q?vkgTvKgkYrcis02fTgMtvL3B6u6Di9Xti5jYxHZRimMw4BsxAkPgGxJh3bCA?=
 =?us-ascii?Q?TND+J6/uIFbAjPIDuoz9q1+FGbtGlLO4WEEsbgxhi5uYrRWCbiUiKo92aUzc?=
 =?us-ascii?Q?M8PrQM7tVRRD3Xo1yXyq6xkhH0Xs+OUZAauZ9vTmODA5CsiPukQEeSpmBNfJ?=
 =?us-ascii?Q?Mbm0+cdL51O1hOcApmKL06/BxPV/m6Ng+fgq/IVQEAsOj9yqmp9rrduwRy1A?=
 =?us-ascii?Q?y575EmWeezfc1Y5U8qPOUncKGvLp2AueUmknxA26mVPkmYIqMCsZL1rd8zmf?=
 =?us-ascii?Q?6/wIdqKrkexlWtUnzbvarSp2iHroLD2thVAui/fC8IGnvU01R8oujzV1OH2A?=
 =?us-ascii?Q?Kt/+ChS3SdbCmLc8gB+3CY++2ApJrKgUC1jniHJgJilZi3zmSQNsnIJyH95z?=
 =?us-ascii?Q?5lRUbNMnj4M3Wf4+Tpyn1vUV5vqAZ3AtX3utc3F91wYEPY9E5ehskVHKbarh?=
 =?us-ascii?Q?Zc8EEYZY0ChWZYUfkPT3tc10+uO4McIB7sk0X5aHfH7rcsb7sl+1jkLjH+pa?=
 =?us-ascii?Q?vXhlKoku1d8iAkyOkwK/OUsbXZ+WnCsEwvnxdQID0C1vYe/IAnc/Eb4qitBM?=
 =?us-ascii?Q?j6s5jpADVg9noM1lmdFt/+dpV9BcgM3IYlnahvWJe+X0e5AzwYINCDgAZ5nv?=
 =?us-ascii?Q?hIKRI3FIVy63UBZVsikIvEuX42EuFn6BnNGN9M4Ut04Sw1hGWdLYG8zqy/mC?=
 =?us-ascii?Q?JotqWD3N7YXKlqNQ3kZmUpPk29GS5SI7Ln1jo9S1G87b0jxxXrdg0z1VYYf2?=
 =?us-ascii?Q?PG4NQ5YFBsD2nNxsyaEpS/hNJMUHdrC9m1YAKCON1ewmVtyX+dt49tgH1Hn1?=
 =?us-ascii?Q?qUKdZoO+AJSQ1wCohky6antEg7jSsggZj/EZbV3vyrmyFQ77WtCpEzpNHlXq?=
 =?us-ascii?Q?qNn9NKOHH5IUuSErTMYdKDVYLFIDvSFDsCW9U+JudP1A1F7ppWv4bw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9uqwqHJ7rfvWnGFzEQ5OzxfAr41DuzXmot4rODkRLuOWkjLgZJkICU6pVEa6?=
 =?us-ascii?Q?6xGyg9Z+VkuDT2hWgZs0H5gvMKcYVNRdh1fscmbnCswuwrJ52JNeU+U1rhw0?=
 =?us-ascii?Q?sIHuwIuIK1t5W9cBx3XxOIXsCj19qhr7DX57RHRuIPsLmJPCt4lW4hiSk3+E?=
 =?us-ascii?Q?rL8nUZwm9HmAwF9LzhSeJ79S1pE8o4rOnyhpWyrsPKZjajQHIFKIFzko03sJ?=
 =?us-ascii?Q?krK3jmZZaY7tePjFl49QOwVObPRYLR9B4B/mKpOWy5BfvmsAhiVsp2gkJZ9S?=
 =?us-ascii?Q?pGYkw2f+acHpqkAG5MCRFXwS3pQRyjpLATPN089Am82VP5TaC1jg8ZUq+A7L?=
 =?us-ascii?Q?lbYIT9TAgPlwyCT+52Gompkt/hKaEouBOfka4+C8ZjfsKU5Bn+Xflqf7O5aM?=
 =?us-ascii?Q?DvfjADXncAbDUNRVO+pnN0tpDvURU3HnEd0l/QuSt3pRHWeptYWwlr6Xksrj?=
 =?us-ascii?Q?WnA/2JCGFXhKh9+LoPNylDXqcRQZ0qYay0do5MkzHypmPGUXMQwB8eBxJJ6Y?=
 =?us-ascii?Q?eXgauolIXypEtJOyQ8HvqedFGlY6FftNM3fj6QEk9CXKTCb/744oGDDx1t2s?=
 =?us-ascii?Q?fkumRy9ELf//tVftzXtLmd4yakEd6jd9sOzqMDyv00u8w5ahOdNP6SPo6NVc?=
 =?us-ascii?Q?/sniyA4VRexBw5cEd4XWzv0ziVEsyOiYZB5SUQlHaMlDpPE6i0kiLBO0ikxg?=
 =?us-ascii?Q?TnqLLDkOROOQ7aE8benBp8SRgSwTwejyi4O6V18z5+gOb9TM2qPZtDWvahhR?=
 =?us-ascii?Q?DgRV29u2I2hgZwb5JIl7k78AMadL2UB62/0J9BUEtH+XixJC+qUuN32LH3S1?=
 =?us-ascii?Q?GhYLyF8wMGZE79f3+p9ACnRhpf1g8qWkvYUrQfUL8GTquxZHApSZXMkxC5mo?=
 =?us-ascii?Q?lUTyT1KTqtNV7LSQV3IGSkO1/L6fRmSnt5YeRJtv3j7m3UBOv+uRqbae8W3K?=
 =?us-ascii?Q?m31h+AnAPWJpWe//uq7F+KJd865GBtyWCvCazDVCZa7uYkfMXkD8UMbXDEgm?=
 =?us-ascii?Q?SSisVKBAJLojQc7jDjgfSJkJ+WQFlydZtOXcvnP0RGz54MpixSOt4vtl9u/c?=
 =?us-ascii?Q?kV3a4psZMpQJXXGmAa77aoWxKjea5vDtwBrswrww+TXjxG3YhTscObAY08wT?=
 =?us-ascii?Q?CazK2Mi08MITaZPw8mDlI9Q+LGjwEpAGevFJKgMOYdDXi9j1pKhV83HZajDk?=
 =?us-ascii?Q?+yh0i/jVOIEESDPJDDcOdfWpbwiV0PKFqCPKU/2zoj/dCmF9CpqxFe2DNejq?=
 =?us-ascii?Q?S2KtH1GU3MlCATTiZEUPDgWIiHjnILiSBsTsjMNVwQZySGItKn70PUB7YQpX?=
 =?us-ascii?Q?UmN3rLWGhb2rXTMIGqE75Jc4WExqPT3+uLQtJtPiZph3/e6oAv/SmGkzEJg5?=
 =?us-ascii?Q?KQTEVUGXQ0VrmnI/DpK4SdSckXsNXc6IyHxlKXuLzqeic+cNx9/2rGfXqgz8?=
 =?us-ascii?Q?NVSS4VEPJaRIt7gwidLTF0hdy6Fa9UG5dgw/ajncWDcwycEXRvhDvMpVm/02?=
 =?us-ascii?Q?w92m0l2lwa++P1P9JH9GnS34UPrNJDZNnXj/3bou2lnHJ6jBtTFza+8UXrzZ?=
 =?us-ascii?Q?Hq8xcTgaoYU/B+uuKdFVQF19yTSrIO5w5rVlM5PzVHSy1U4giTHJlD3380Uq?=
 =?us-ascii?Q?uQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8bc6e726-8f69-470a-dcef-08ddcdb5c2a8
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jul 2025 09:04:29.5056 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4EU2NQhIMRY4daJeybGuZ1RWPVblJi4t2B6Lgt60bdzKyRfXSR8jNykUaPkELITB28StJmBF8u96SYt2u8Sbh+PClve2hRsnnaAZTup7Vcg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7174
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753693516; x=1785229516;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=exxBdImlWXhvaUYShh9u7SKh6D+/0baiw12nlsxhdg0=;
 b=Qyu0aoDvne8mpwGOlDtxeytk6iTZoVXpSzYezaiCpWJ2e/lsO/9AoDRR
 nZD4tyeJzWb+49WQLkju6JbTAS4ghPHHLfn+SmIlMlvG2CNVAW6pW/MiS
 2J6RvKlSPeKsYK4p3dTMIv1cdGrP/nEKVNr01tjrcXIwzEnoiKTnPdzBf
 abKLDzMjLCZPkHg9snxg9+/1G+J+1d0RYsoIJYYh/EvIsmrvbVZLYDRI4
 MobPJ72bbX8uHsn1NK9KjFubuEn1grrovAAV3emw7NfBbj0ahfc4DFXqm
 QiwjPadPrUbXKmT/V0dLNyH7dKpxnUwPZlLO9FAKt/8UxU4CsGO92ygX6
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Qyu0aoDv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3 6/6] idpf: remove obsolete
 stashing code
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
> Of Joshua Hay
> Sent: Friday, July 25, 2025 8:42 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Hay, Joshua A <joshua.a.hay@intel.com>;
> Chittim, Madhu <madhu.chittim@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v3 6/6] idpf: remove
> obsolete stashing code
>=20
> With the new Tx buffer management scheme, there is no need for all of
> the stashing mechanisms, the hash table, the reserve buffer stack,
> etc.
> Remove all of that.
>=20
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

> ---
> v3: update comment format
> ---
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c | 314 ++-----------------
> -  drivers/net/ethernet/intel/idpf/idpf_txrx.h |  47 +--
>  2 files changed, 22 insertions(+), 339 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> index 6563d5831a23..a12cfad566a7 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> @@ -8,48 +8,12 @@
>  #include "idpf_ptp.h"
>  #include "idpf_virtchnl.h"
>=20
> -struct idpf_tx_stash {
> -	struct hlist_node hlist;
> -	struct libeth_sqe buf;
> -};
> -
>  #define idpf_tx_buf_next(buf)		(*(u32 *)&(buf)->priv)
> -#define idpf_tx_buf_compl_tag(buf)	(*(u32 *)&(buf)->priv)
>  LIBETH_SQE_CHECK_PRIV(u32);

...

> @@ -932,7 +888,6 @@ struct idpf_txq_group {
>=20
>  	u16 num_txq;
>  	struct idpf_tx_queue *txqs[IDPF_LARGE_MAX_Q];
> -	struct idpf_txq_stash *stashes;
>=20
>  	struct idpf_compl_queue *complq;
>=20
> --
> 2.39.2

