Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SGFOK50DGGqdZggAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2026 10:58:05 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FCE25EF11A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2026 10:58:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D66AE60865;
	Thu, 28 May 2026 08:52:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sfZa75NEDeYv; Thu, 28 May 2026 08:52:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3B2C261ACD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779958365;
	bh=vQRmkJluU3LmWJhpcApsrtMGzZ6tT5eDNsYJ/44c44I=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pgUJqcPamup0Yj0WgB7o1Rutrx41UcRzATKeHDchulbUkKoHUszQR6QA5yakXFmoC
	 2If4s1rvtOvAioJiPuMgc9gIlCnxC2AQmvF/P76pPHHOMaGFeZ0whL/N91LaZ3NLwS
	 zoC1KzHxGRDschQeaoyJZ9BCM3HLKralyfHDzOCN7p+5/DO9RfoF78wKhVHaXXz/AZ
	 Lg1xuMi0H7QhwuWaPStJ9n/rLt1sjFaE1H2XvnNQ0IoFOBFjlAfbkA1pspjNs7KoMw
	 rkRDDjUFPYAIVOw7QknlPP8fQoBIZi1BMf1VM9XJwvypGNQ1g4MAAU4IXeUifYKPx0
	 DFoPL7hdLkioA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3B2C261ACD;
	Thu, 28 May 2026 08:52:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 67032288
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2026 08:52:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 49008429F5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2026 08:52:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id trC4ePZyNMTO for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 May 2026 08:52:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3BCBE429F3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3BCBE429F3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3BCBE429F3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2026 08:52:42 +0000 (UTC)
X-CSE-ConnectionGUID: yQkxMBcVQC225rTBHAjxdQ==
X-CSE-MsgGUID: rBf4v2l5R2+mXtFpkIb+Mg==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="80825054"
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="80825054"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 01:52:43 -0700
X-CSE-ConnectionGUID: KuTDq5TjRaCnPOs3gn2ZwA==
X-CSE-MsgGUID: 35hUmKw0Sy+KPNSpdHVmbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="242650959"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 01:52:42 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 28 May 2026 01:52:41 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 28 May 2026 01:52:41 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.37) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 28 May 2026 01:52:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DZ8tsG34qLqeCFAmn9MyQRF9KeA+PvDf1G0tEFzcbKUSwdgbHdv1Q2YLzX6H9WRxTzacfXNK1lnP0qQHDH62WPUbml7GG4+0TNAQPqbkoT7V40vfonUuQh1d5ykjvMhc0ObaAFy0Ow4JvCf1WdfJ8Zyoig9TgwjI2bc5zwY6OpEebLu8OMr4Y1hexYPLahAvEZI6qni9HHK5Hb9TyWlfSCwXSujRcOggV5LgDbrLM3bWU6xbJufcKyUbixN4y8pEhc8pdqgKEqRS6EQLXbb9pGfGVykxlFi6Z2p0qZpOYRrdKz05fHd9ZXj4PARpCN1rIJMrvrRSqPRQ3KeCHrKVAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vQRmkJluU3LmWJhpcApsrtMGzZ6tT5eDNsYJ/44c44I=;
 b=VVFOJYW5vL/2yYZBzETSadsa8oDKHwJdMQuwYK9kqEVW59xlZE9GkoBP4fJmmApJAbx7hlRk9TgBhvvnN+jelfGWRSl0VbF7Z+CgKjoWqrD8AHMelPETJj0vNNHMfF9kTjwDgU68WXJkQBBO0C6HDnY7YjwNlK2iJ6sDiqqMm+NqG3oydb0eXAyv3GGRowURETqjP3j/7JJFCLbUObHEXprv0o+iuqi3wQCZJGhr91T8GThAuo07J/WidzPnzvs+UZwfi6YRD03YM1fFQ5g4SoeusQeFIe7SvhXoKfFHXwMjtoYmRkTfOGTM3afLlmV7yIfg04zmi+gTrrsy05Jj0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by MW4PR11MB7104.namprd11.prod.outlook.com (2603:10b6:303:22e::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.14; Thu, 28 May
 2026 08:52:28 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%6]) with mapi id 15.21.0071.011; Thu, 28 May 2026
 08:52:27 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "jramaseu@redhat.com"
 <jramaseu@redhat.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Thread-Topic: [PATCH iwl-net v1 2/2] ice: use NETIF_F_HW_CSUM instead of
 IP/IPV6
Thread-Index: AQHc1uN1hU7Zw/f0VUOSnLwRTMNKvrYjUMmg
Date: Thu, 28 May 2026 08:52:27 +0000
Message-ID: <IA3PR11MB89860F7A86A47D742BB2A806E5092@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260428070647.777141-1-michal.swiatkowski@linux.intel.com>
 <20260428070647.777141-3-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20260428070647.777141-3-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|MW4PR11MB7104:EE_
x-ms-office365-filtering-correlation-id: 41a10a79-4390-477a-bfc3-08debc96721f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|4143699003|5023799004|11063799006|56012099006|18002099003|22082099003;
x-microsoft-antispam-message-info: NAZoB18UghKmacCb5/zZc3ZQraYS76SVhdVkqrfQSGT1ev2operf8xwMt7R6UsNV+w8Uf5X0Je2PNNQFrtgo2ANKE1J5qKZagRdRj+Jnv0PSNC+VImcj0xHtk/hYQuGFSjVAXQAEHR2161Iy4UlD3mGuP8tne422wtOd8u3SRf0cRwg2k2x5STQvObY71YQkvUt4gK17F4duMEwZWeqlLbzC00y+MHiQR3Y6oULIWqwcUNlPmJoP9PLweFdm5J57xcENAEQQXS13C6m6ww5DFaf5fYotk21T12O5fchx2PSxqrODjJA/BePFsivQ87j2nLFuVKqjIWAWwZQRUfv8VQtaEuNt+xbpqM/3TGEd3TIrWD/Libw7aoA8BzDVn745NEIRCN7YnFbCfrpuaJ5XkUb5lMpCndeyjOw2NtAA2wDBMgijMGu8v58rB9YA40suMotDM1DKIoBtK+LhLei3e5XQn0I2nCMKEb+FbnhAbNTg9J9LjMlilBXULVFYuvUcQ/6I13Ft9Ey2jlm1M040b51JTta0VKHe9xR0+ibDdtMCUtBZO0wEmWlXHjxYVI+J29MnBjKeJbH2LvGltSFj7VfIult79MyjEBITd0pUztvOvp04dqnQmoe0eGxaIJBEEgfGMQFtO2hfiIkxgJpBGAxSPDyefjyusnnp7YUOQ685nsIrQ+rqkh7U621R2iSgoORYeC7iiUULbAmlRkMWgfPjG2O2mS8/Yuu5zMjMJYbE17684OV7mJxYg8n7D/xC
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(4143699003)(5023799004)(11063799006)(56012099006)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7Sxpz6WzDvbnQtWtU+VOTnYM4vmNiheIoRZ0e3jKfzvo8BX04n09PFerLiQi?=
 =?us-ascii?Q?1SrtgrFwIViGwlDP2Ao+y47D4OJZ+SoRQvpe/2PdNi1DllNTtTxtsD8KlUrX?=
 =?us-ascii?Q?xSIEcOFBz7k+l9Tv8JlrUyHFpEzjZp1j8ywVMLepV1QtA+9UhwjBAhJRa08k?=
 =?us-ascii?Q?ialREtI6sdmkNIiDmSoQANkhP8J6KMhEHldHJhLuRU/OhuleKw/G8L9Rz/oG?=
 =?us-ascii?Q?nr1E8akA/Jya2U92GNHK8dlNiFrhJTloKyRPNsxvacrn/vB3GLSNVNKxObg8?=
 =?us-ascii?Q?C0hrX22md0w+Iuq7ligBqnNprmwB6t1k5pwEm1QOX7IYLqHlg7DuqFtIFrvO?=
 =?us-ascii?Q?WRVc3ItXDMi8ot96kBW+H2am/lRWY4HRMKXY+8yPg59vLikXd1+FcfQxUOMT?=
 =?us-ascii?Q?GB4kApvUHH4It2cvW1p9hxTiWrWCk3f7gMFxtSYwwob4k7KRnMapQMRu1iPY?=
 =?us-ascii?Q?X313uPnJ1qi6PwNSClbyKWUsj+rlBs8N3yj1t0Rr0bJJMDTCbbhJypwXRZo/?=
 =?us-ascii?Q?pGc6GpBLtEnQybcxBlCR07nwh0OCrIlzt6E5QaHiC6/O6dFdfLOrbsELZifE?=
 =?us-ascii?Q?XZmfgWnGAbm+bT72gUvZBD/AdXYic3zVGmmG3YskjaDLRICX+p8J0MRG2JHb?=
 =?us-ascii?Q?PD4LBRUTiCsyRFwPTIJ5iWSX8nUK4fxN6e2vtKLJBynqRbbBlBWJEjV0RIqT?=
 =?us-ascii?Q?O1qmjfB44PL/vH4cGr/FCXa1XYryM1e13FTjlPVnKpfDn/+WHM3tjSnNk+xh?=
 =?us-ascii?Q?AzAWEFXli3+5Se4P1Jr5Q1cwNh6QxNkbAvm95XbX5keNn5MmINT2ZMJAZ+Ve?=
 =?us-ascii?Q?aZMUuElz637VehbzCv9w0sLd+qgobHWXb0NVPdHPsap57LEzVzflLzn/71E9?=
 =?us-ascii?Q?QQw81SxOdj8/DqgBUHtPn6QiROM+t7169TVfVJHilO+unpQBn2sF6+Re8CPx?=
 =?us-ascii?Q?SlAG/wTyQZvzplxlb0GBXvWw1aX7gVA0pLaLbF+HDmuVkBqaVz69tMFFBN9u?=
 =?us-ascii?Q?Rh3WiK6CQa1SuECF153qAyMvExOskwe6SdbQ053bDTetTzzT32F3pEsqJSyD?=
 =?us-ascii?Q?lWYkJzhe1avn8Rxk8gXFCeCNJneDALOiTY42qNiESMSRXfhZ/q3Gpei7kGkO?=
 =?us-ascii?Q?mavthon7m/4oI+i/2cm5kuaBvk3vUpCYPCn9/B6h+eSRAPjcu+JXv5TCTQIy?=
 =?us-ascii?Q?M8TQ6+fdLSLkMLhfxEQ2fvEdY7T4lSzCA0flLNUdq4H7IBCF/xw1Uj/wIcon?=
 =?us-ascii?Q?27AG9m4GzV5mAav+kfKpSD54mLin+mkh9nVnoVqq79kLFfGHRk10si6gFMZV?=
 =?us-ascii?Q?W9tCZOSrbenUCc/NOLxNqTwT087w31y2nITtCl0Rdiu5/fm39fHWQF4uD7pQ?=
 =?us-ascii?Q?ygn7YoSRDE8uHV6sjef1yxv5ITrSY7+TZi3jKBJA2KDCRvFpkDEmxUQ1XxmW?=
 =?us-ascii?Q?f14VDuEYC1muPiMdWryETmX2AQ3T3njTSX9y/B3qApkng1MhbacXS+MVWqtd?=
 =?us-ascii?Q?42E77aGbCUgcqJTW2DMcj91KHiwXYOLAHbqwQgJxS/UL8oS6x7QRNy5LJfdl?=
 =?us-ascii?Q?QOqVVEsfc1yYAQtmi0b47h8z4LBkzTnWEdCyJI3Iusan4ZS+EA1snKSwKub1?=
 =?us-ascii?Q?Sgj+GDD2JVeaVDdj0bmcK9f9N3VClXkcc9staYEmx/kqSHlnZa5+jva8lxWi?=
 =?us-ascii?Q?FP/k1E48opmkoAmhZwSQSaYKlY42Fyt4RstHzOjxl7RTr7PCMA66M1f3lpO2?=
 =?us-ascii?Q?wHD4FiFUuhPXwhi0U1a9+kOYj4JoqVM=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: c0HmASZk9TCRAcmlNfZdv1kBu/zfmDt71XfL8Twwy//ibDSzzJbqA9mguKed94EHqiZmy9ollSwbpzxx8WX80gDCuVqmutlnH2x9b24ppHKw2cTVI0/5Twa9b/SlboA0MtONMNGgHKphM4/NtsX+NT+AHvY5usmC4mltrIZM/OXb6rRuN7z9dK8FZ7tGo8QB/H0Hry7lPpaB2mjcnjYxF3MJImoOhDVOdTJgK6GWQc8a/0iQhe3E+FclD8uDGEy5kxIF1JIHdrP9GNbcJeZ/gN6gqGlblXH5Fi9CcUwLYZ+L35xaaF6+gEwoZ1lowQNurD/60Rr3yJK4lnbxW42+XA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 41a10a79-4390-477a-bfc3-08debc96721f
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2026 08:52:27.8967 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AxjizohtNMZxu/CV3MW+Xpu32GfRMXGcBMP7JdtdMJqV4QeIWzOQb5MMBKWWGrKS3n5FyRY2a9DYN1SfdWSFyk7myUZZPrzfvPmcU7Zj1EY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7104
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779958363; x=1811494363;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ejKZBvmqtENkFCN0dgBc1w/duPsvCPKR7ZNt8UqqKL4=;
 b=k0USjkmFVGWbbL7Ndchszr2kPlAN4UvGxya31xfXzTIhwqYVvgae+NOq
 CTsVXZeAta1NXR5rPxUy4i+AX+pacmVYsfDMbo8Nu0q5uS/t1xPaUOMGK
 XWmURVgRCWaQILaTmzfhcCfTMM4JhtHXD1Kxzcm/lm95ffi9EVhj+lB+7
 lac/jKrWnqjbaKLGgoB++x81Qst5weF73ZEd+/+M2DjCwoaSY5JTPY/Oy
 J6VoN3grZHb97OkbxO1vME+Avyzr5Pvc0jOV8VeAHaUXEzYULg5QaY2YB
 aAiYcw5zq5T74EP6DdcHhmCqzXxU+9ndHcP1vhnf/4dM0dBnCTZ/5MEd7
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=k0USjkmF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 2/2] ice: use
 NETIF_F_HW_CSUM instead of IP/IPV6
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
X-Spamd-Result: default: False [8.29 / 15.00];
	URIBL_BLACK(7.50)[osuosl.org:email,osuosl.org:dkim];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:michal.swiatkowski@linux.intel.com,m:netdev@vger.kernel.org,m:jramaseu@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	R_DKIM_ALLOW(0.00)[osuosl.org:s=default];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	GREYLIST(0.00)[pass,body];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.986];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	R_SPF_ALLOW(0.00)[+mx:c];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:email,osuosl.org:dkim,IA3PR11MB8986.namprd11.prod.outlook.com:mid,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo]
X-Rspamd-Queue-Id: 0FCE25EF11A
X-Rspamd-Action: add header
X-Rspamd-Server: lfdr
X-Spam: Yes



> -----Original Message-----
> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Sent: Tuesday, April 28, 2026 9:07 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; jramaseu@redhat.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>
> Subject: [PATCH iwl-net v1 2/2] ice: use NETIF_F_HW_CSUM instead of
> IP/IPV6
>=20
> The hardware is capable of calculating checksum for IPV6 packets with
> extension header. To not drop such packets switch from IP/IPV6
> checksum to HW_CSUM.
>=20
> HW_CSUM is also used in previous generation (i40e).
>=20
> Previously HW_CSUM was used to indicate that hardware supports general
> checksum. Drop it assuming that if the hardware supports it, it is
> used.
>=20
> Disabling offload for E830 in case of TSO isn't needed anymore as the
> check for TSO is done in Tx path just before preparation of the
> special GCS descriptor.
>=20
> The commit from Fixes didn't introduce a bug, it just shown that the
> driver is doing sth wrong with the checksum features.
>=20
> Suggested-by: Jakub Ramaseuski <jramaseu@redhat.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Fixes: 04c20a9356f2 ("net: skip offload for NETIF_F_IPV6_CSUM if ipv6
> header contains extension")
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 21 +--------------------
>  1 file changed, 1 insertion(+), 20 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> b/drivers/net/ethernet/intel/ice/ice_main.c
> index 15550216fbf0..0f2f949af536 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -3500,9 +3500,8 @@ void ice_set_netdev_features(struct net_device
> *netdev)
>  			NETIF_F_RXHASH;
>=20
>  	csumo_features =3D NETIF_F_RXCSUM	  |
> -			 NETIF_F_IP_CSUM  |
>  			 NETIF_F_SCTP_CRC |
> -			 NETIF_F_IPV6_CSUM;
> +			 NETIF_F_HW_CSUM;
>=20
>  	vlano_features =3D NETIF_F_HW_VLAN_CTAG_FILTER |
>  			 NETIF_F_HW_VLAN_CTAG_TX     |
> @@ -3564,12 +3563,6 @@ void ice_set_netdev_features(struct net_device
> *netdev)
>  	/* Allow core to manage IRQs affinity */
>  	netif_set_affinity_auto(netdev);
>=20
> -	/* Mutual exclusivity for TSO and GCS is enforced by the set
> features
> -	 * ndo callback.
> -	 */
> -	if (ice_is_feature_supported(pf, ICE_F_GCS))
> -		netdev->hw_features |=3D NETIF_F_HW_CSUM;
> -
>  	netif_set_tso_max_size(netdev, ICE_MAX_TSO_SIZE);  }
>=20
> @@ -6489,18 +6482,6 @@ ice_set_features(struct net_device *netdev,
> netdev_features_t features)
>  	if (changed & NETIF_F_LOOPBACK)
>  		ret =3D ice_set_loopback(vsi, !!(features &
> NETIF_F_LOOPBACK));
>=20
> -	/* Due to E830 hardware limitations, TSO (NETIF_F_ALL_TSO) with
> GCS
> -	 * (NETIF_F_HW_CSUM) is not supported.
> -	 */
> -	if (ice_is_feature_supported(pf, ICE_F_GCS) &&
> -	    ((features & NETIF_F_HW_CSUM) && (features &
> NETIF_F_ALL_TSO))) {
> -		if (netdev->features & NETIF_F_HW_CSUM)
> -			dev_err(ice_pf_to_dev(pf), "To enable TSO, you
> must first disable HW checksum.\n");
> -		else
> -			dev_err(ice_pf_to_dev(pf), "To enable HW
> checksum, you must first disable TSO.\n");
> -		return -EIO;
> -	}
> -
>  	return ret;
>  }
>=20
> --
> 2.49.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
