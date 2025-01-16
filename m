Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ACFFA132BB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Jan 2025 06:49:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C612F846D1;
	Thu, 16 Jan 2025 05:49:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6jz4vTtESRnI; Thu, 16 Jan 2025 05:49:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1BFB4846BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737006581;
	bh=Z/6yvERZJR8KOV2vp+3EZTyvqyQ9rXK6uT/N+HGfgBU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pKHD/8HYOpF7BDHbxx3C0RTz7xJYNzV2bRBsB82x5n2MSXXaOFrj7bc8b1TOaqE3v
	 KGnXf/SJ5IQoUy/BaoIbfk7fnKmvufswZVmLB7l2X7t/wRqVzKLO+y8kgA5upNpiAA
	 m0pc0Go3BiGoazjNAWqgpLCqPIWxZgbQabibIjOng3rVG0jSrHydFkGpMnSCd2oQz0
	 UbnCgPwXmb91F6WXZlO4lSZTysIXbjbInnvA4rvBYrje4gCf9Q/CaWFZ9q5bIAgM8h
	 6TgCd+IFpJ33nQb/DOsdoT847euZJYdr6sp6tqWjH0uuhE8qrMGMzgnR0WdB8nrV88
	 9doM9ZNRejAlw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1BFB4846BE;
	Thu, 16 Jan 2025 05:49:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id D96DEB89
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 05:49:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BF8DE40928
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 05:49:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SfvoNQGEkfVh for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Jan 2025 05:49:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A085C40926
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A085C40926
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A085C40926
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 05:49:37 +0000 (UTC)
X-CSE-ConnectionGUID: 74EuO1KUTHa+hGz871lEfQ==
X-CSE-MsgGUID: bfwxc29bTbarW4valPWByA==
X-IronPort-AV: E=McAfee;i="6700,10204,11316"; a="36585272"
X-IronPort-AV: E=Sophos;i="6.13,208,1732608000"; d="scan'208";a="36585272"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2025 21:49:36 -0800
X-CSE-ConnectionGUID: s8PFFfOGQeKaq+WWNVkgSA==
X-CSE-MsgGUID: UdsM+0QZRXm2Sv6F3zhQWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="105228222"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Jan 2025 21:49:36 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 15 Jan 2025 21:49:34 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 15 Jan 2025 21:49:34 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 15 Jan 2025 21:49:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MYjdH8O+g9FJhhHqXwIlvLhBqP9F+9XCteB051uRInpsqx0Vv0yFkQxqFGw4tCt5aOa2ivJuHrQiJNpeIYxXbUIvefCMI7KEnkib69loEeBaRyW7UazQiGuEeAs9kyvP4OeAzAsbrQewgAQ+rjCNEvLa73TAJNBycKJDRBkjtiRmHtNNP9O7dUBl/6Np5UHnlkwDtCVSyOoIjoYjrYlgOAgWdTg/5okYCVkAKqGbr+6LshjPPqeOX0OmdlVyUrUVTVy9KvEtIUaGR/Ok/8u83sYqUjbqVGoLXYcevahbLM0q0ThvNR0xs1ahbsDZAiluwKjrmK0mtbTYxiA3BBf6nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z/6yvERZJR8KOV2vp+3EZTyvqyQ9rXK6uT/N+HGfgBU=;
 b=TPbXrH5fdsxbJU8ctfMrgUx02j46MMVdy2lmDIaImPN6TIcQ8z2BQTiDkfvQO+uIxIFjTgk1d9SZKjTOJWQk2cf30ULAG6jU+qDx24QV1XxDdOqFRwlRa/zkFAyasT8vAo/JDNfL+qk9PrMY2B5/w3ARNpcADTOsEju2EbH6bKAEdrbtWBN2Xzptxpmjl5qDRYlgRgKCFoqlONRYp105V0P/MvvosStIgNBdoIXSf9GpVvgCZWok83gmwf3Vy9iMmCYkIyRT9VBjyvDWqrUMnF8Y+4HGOhto/37P0oFkDYwk2vqMqfqdXxC+UK2YiZeTv76VdbIk4t+TUN7P15jGTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by CO1PR11MB5060.namprd11.prod.outlook.com (2603:10b6:303:93::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.14; Thu, 16 Jan
 2025 05:49:05 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae%6]) with mapi id 15.20.8356.010; Thu, 16 Jan 2025
 05:49:04 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Polchlopek, Mateusz" <mateusz.polchlopek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Polchlopek, Mateusz"
 <mateusz.polchlopek@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] ice: remove invalid
 parameter of equalizer
Thread-Index: AQHbW2m36n2/mbYcQECVnDs0KoP7yrMY+4vA
Date: Thu, 16 Jan 2025 05:49:04 +0000
Message-ID: <IA1PR11MB6241A6E9185367C1C4DB0A218B1A2@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20241231095044.433940-1-mateusz.polchlopek@intel.com>
In-Reply-To: <20241231095044.433940-1-mateusz.polchlopek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|CO1PR11MB5060:EE_
x-ms-office365-filtering-correlation-id: ab4df65d-6ba6-4a3d-6627-08dd35f17c4a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?fPet1E1MjRDzEbxGOeyIk/YFMpaFgZyRVuTA4ribfcZLJaFyzAg5zSlsVSsn?=
 =?us-ascii?Q?4siJn0RUS1qoi7ZDkvED1kp8GxN3RFpQN09BuxwNjeOzuIYl1jOVtiHvG6Ne?=
 =?us-ascii?Q?Jgk49B0UVWfjJTR3ihL02lg5xD7e/DVQ0ZbdMQtW2X2utq9cnJ6lo4AUs7dz?=
 =?us-ascii?Q?cdXSAeig6t3PQ5W/Zg3oUjIqHkzARMpdfKR1WcgYUgW4sbh2Xlzo/nwj/Zmf?=
 =?us-ascii?Q?g+DxJhOQYYl+MCHU9JNtYSnuaUi+l6mdihPgvixSX1V+pPYGZBfjJ4b3HdLB?=
 =?us-ascii?Q?YNoPt/vc1u6GryLXB3FW5lGeaGSNgEiyPSKMinq5HcQ9Nunt9dsaMnG6ZkhT?=
 =?us-ascii?Q?La6YdzQKfURj4bmPte8p2Gwe6fbPNpX/X88dv8RqFmE3AdUkzGvW+b0VSkC4?=
 =?us-ascii?Q?Krp/McgRGdit/v7/smvVbKGIcEHSRKlJbvPP7HRNyc9oYEXe1KdTj7aEXcXm?=
 =?us-ascii?Q?8keud8n+va476ca6NQ/+J2nKiWRQjy/z/s/Va0aJDfpoq68YeO865CrRW8mV?=
 =?us-ascii?Q?dJWGL6mbz4wyy3nbWN57Nde0DNAIsKZ6qtefOpIqbbpNOe0/+cYWccJX8mI+?=
 =?us-ascii?Q?2snVDIRMzZSKIkKiQtlCwQ8yVsPKXigZwJE6+YJ5T3M76mzMJlAAFKv5t+ki?=
 =?us-ascii?Q?Kbu3DILEDaAp7cNaFzmxico6n0a1d38R81ffW3QozlLgXiKjN6UUjou7m+KR?=
 =?us-ascii?Q?4qZLT0aZWv4KQrCmjAWBH2+crvCcll1PRhXYX12S5u7MeAh6G8a5GLTAm+GW?=
 =?us-ascii?Q?tKvdnPuT91IlB9P2p+wwpYFrgPiotVNdOaWHCuFrp5fei7OIyGpFkPKPOuYK?=
 =?us-ascii?Q?LI0wuce4mvWT035gn9eM2YF5195Su3nF89UBvH4OoQCl+28qJSOZF3Vl8Rop?=
 =?us-ascii?Q?awIpuIeAN5O3USMnWBDc3hBC25wNSwLKOGZrJ2NFJ97+aDZUYKRIyKCwQMxi?=
 =?us-ascii?Q?h5z0WLaGEhM937VLOwwXM0hTHqSfUPWIWInOT8rEEiq/IdUZSJ4ccCmTzyvu?=
 =?us-ascii?Q?EJFW06oMBIydyi6UtphIbceSFvo4JiMFLKPimNL/JzvdZjQm17CpNohXaXj+?=
 =?us-ascii?Q?bG/zr1YpwS2ewPzeUv8qgGr0Vqo+xY1b9ekZJQCIJeJDVQTo1Wr0K4ATtPPc?=
 =?us-ascii?Q?kRdh1JHVvubjT90Qw/ruy/i/FH2UCC8OiN2Y9QV+Pgf9yzNWSgPIAwg4gLXd?=
 =?us-ascii?Q?y71TbrP72DUuxNBFDpTH8ITMsmhY6B3oBrWo86h69U2IgNF5mtiZ/poh8qeK?=
 =?us-ascii?Q?PZjHSYCvfNs/1Wq5y5rMr+G0jpYggqPx2jK46sKNMYoozfdC9/fbufLgC5dX?=
 =?us-ascii?Q?yTSlBbFsItmba9AQktuHFRwK/shjydOp3t5PpKjxapHsVKr5qgGjO1C5ZW/g?=
 =?us-ascii?Q?2NbvDDuRF+9ueqSY9Xh4BXYnJqGHQsqWk8fLqTw6apGIla4t13MCZrD35zXU?=
 =?us-ascii?Q?MDfjW234fl7PHwERCeiQBl1h5wjp2xfK?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?h72hckbxOf7iHo0+ArpeRLdJlngHWocLaxqRIS0f5iuKPxIx9ysjBtHpJHLn?=
 =?us-ascii?Q?OtqRZ+7GD8zgSc4oJjFm5eq3GCuAOJGvxg06hDueyYRQEMkjSDi9s2qTGrdB?=
 =?us-ascii?Q?QX5mi5iRAgwgBGLtmxSk0tdwCxlpQRzn0XBlC20o4CszYTIOWTf8wJ3Nc1hv?=
 =?us-ascii?Q?5g2QE4qb337JL9tqvX8Tl8BZmyojcqokFGg7KosJaJfeqBH2jmlUgKVgZ+gl?=
 =?us-ascii?Q?KS5q1S8mIJx39FkAWFxVtC8cer3aPrPtlfBnthts6ZPQo1/FX9YTAMeYnKl8?=
 =?us-ascii?Q?p+MwyBLh0shtFa4mWzv8P2N4Zp5sTENXznYFNW/Wu+2Mb6+a4hVcdab81/JN?=
 =?us-ascii?Q?OwUgWAxqA941L/NCjzW+wsqKW6115uQqVv6A7/gsDUog0GEgqypNnscnSRbe?=
 =?us-ascii?Q?9vcrl0E6DFHeJp5j4T0u2jGLUnri6IklsuLIyCfLTJvaeKA/n3S95eFjumJT?=
 =?us-ascii?Q?AGdUhjzRXaawKFyr41YBKaQ5tL4t18ReTdMWxmQchWvykH/iwo+Nwq85K9p+?=
 =?us-ascii?Q?6iNRiLLQWQUCuoZPk4BD7Zd+NR7GmOwTPu6QhIRBI+qnMYF4oGN+t/teAENg?=
 =?us-ascii?Q?AY3p8os5FpcmE+f2JdGA2WyeiUbkruZZeeoFXhF5hmN36SL2zbW/5QFOsaLO?=
 =?us-ascii?Q?w0In75q4J/9LvYXW7u5xh25Z1SWebFevKvlknROVX+utZf0Z4ZZ1llFgr5UD?=
 =?us-ascii?Q?ZAImoLCCaojsWfxa7PBSOi6awa+mh6HKu+PFyhzz+RfhGLBiiOJcBU8xcNP/?=
 =?us-ascii?Q?gT0sXW2gHhDdtTfXvVlgWhGGOKnvusFS+epfB2geTCq4ws6WiJhv5ss3CVcn?=
 =?us-ascii?Q?3hZjwCx2DSWbsYmC3djI20CDSxmScaQe1KC44Eyr+CL+mHQsLlvjvXdrNqPL?=
 =?us-ascii?Q?IXxhXB1wc6aBRfMxKqebNEa/6r0Ew43NeKESYcPOa5YqvbVtSO8YUf+x2x50?=
 =?us-ascii?Q?TSqo1cXuaeAOu31XGpcvX5fORXo6BnkwZPpVfFYkgoN6rF48In0l5c+CUBsn?=
 =?us-ascii?Q?SGVW/36MfdKwVVfiXDaZie6/lCiuO81fXn2b/Uidsexe+q4AAaHESlo7NhDO?=
 =?us-ascii?Q?4WVD7CuoRPWZBJXYlCydYJRW7g3/QBww2LrBmwNhGifioAhMlKpgsFQIR7NR?=
 =?us-ascii?Q?+JrRJfTYTAD0YVEt1e3ojvadDQPXZqSCOM5JLZ0Npy978rbEoDlkZYpNRT6A?=
 =?us-ascii?Q?k7ttjQnfOHlBFu3u6qt8XR3BeMu8Waf/8tVn8MjHGngGal5RwmdTUWhMLd9F?=
 =?us-ascii?Q?ENU2gdmCe5FjJSh+ed+o+SBxOHWcOoIyZRQoGAFx1sxHo1RtlZqbTL1FQJVE?=
 =?us-ascii?Q?za4lqdDjcsKf8xBDLC9fWE5xGwtfVTw15oVqs/6LvmWqbhbxboGG5mlcnwQ7?=
 =?us-ascii?Q?I/HEB12pzo/rBzgGzLQtpP7aBmKKSadnbUpA8DXzskaqB/cQLbUEAyX5E1R0?=
 =?us-ascii?Q?mc7z0AS7GLzT/Ho1RSmqq2ZDAWEj17X6m24FNSSo8ZyhcFMcwwyxD/lhptjz?=
 =?us-ascii?Q?f8nEf599LTh5hcddexpJGlhYyBkyYJTObadSH0ZN6hMjGtqJJsFWXDBooJq8?=
 =?us-ascii?Q?hsZzptkSoH3k7JR3RFe9SAjy60YS4J/IUZcfcmqG?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab4df65d-6ba6-4a3d-6627-08dd35f17c4a
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2025 05:49:04.4746 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B/5vKHil0dnp/tiN72zIk4DgLQSIriCNQBbrqp2hMcpZYdcbg0licLaR0iwSSSNYYZsc6Ls+V8uximqnD/qm5Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5060
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737006577; x=1768542577;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WBRTYKe/JG4QYE/yxkfrTX6uv5pArYWjbVrqXUD++rc=;
 b=hPiJRl+vzjVS46wAjisiWda2qMm4NzydwWqfGO1ZrpdcvsLDKLW/0/Yj
 xGLTohth79jwLxQ6zYJjIDr95Re+iuT546ZIotWe9UXQn1ToaGUThtZxK
 xzhsvfTR8ojatTfmD/9SMeHZA8opWFeraSI3IV49j0IFP4bxCMyNDhyeY
 X/3ODYFUuVSUPCiBDyqZEqxeWVC9lyjpCQj3/YuxgwLIbSfqykNVQnQl6
 8TaaTlwWggr1B+1XvkWcLyH2oN3zczPYP9bLGwFoYTAiaxN9eH2+3ulzI
 uc45VRLrnvZR01Xr4Wz9Jx7OZuSAxBC/H3NeiuhhFqt7iEKP14cI//WHh
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hPiJRl+v
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: remove invalid
 parameter of equalizer
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
ateusz Polchlopek
> Sent: 31 December 2024 15:21
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Polchlopek, Mateusz <mateusz.polchlopek@intel=
.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: remove invalid paramet=
er of equalizer
>
> It occurred that in the commit 70838938e89c ("ice: Implement driver funct=
ionality to dump serdes equalizer values") the invalid DRATE parameter for =
reading has been added. The output of the command:
>
> $ ethtool -d <ethX>
>
> returns the garbage value in the place where DRATE value should be stored=
.
>
> Remove mentioned parameter to prevent return of corrupted data to userspa=
ce.
>
> Fixes: 70838938e89c ("ice: Implement driver functionality to dump serdes =
equalizer values")
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> ---
> drivers/net/ethernet/intel/ice/ice_adminq_cmd.h | 1 -
> drivers/net/ethernet/intel/ice/ice_ethtool.c    | 1 -
> drivers/net/ethernet/intel/ice/ice_ethtool.h    | 1 -
> 3 files changed, 3 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
