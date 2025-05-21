Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D74AC0052
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 May 2025 01:05:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1C5C880B48;
	Wed, 21 May 2025 23:05:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z_WX3mGDsWDM; Wed, 21 May 2025 23:05:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9641580A7B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747868752;
	bh=H6BN8YeWl42CdwH+4ncpfEU6JPeyXhGLpmNt/RDzruM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YynxaHZ6MUGebGjMUn1zMx//j6Fg0ni5oq9NQ/lYHJitY0CSzG7F+5H+s+ng+JpnT
	 4YBD1KlEOZfuABCEZsyrKaze0VgfEkLaRPaPdMyFR1X8NHFAnBhu4w1UEhLUt58pGq
	 r12P04DkhnPncyn8jNAewVjfArpTF2HjNs1644gen5bqHiadHX+0J+oODlgYEKe7O6
	 SMwfzjnGs34SNONfeLWXnmP6r23XX1gegCJCa+x+cBhg8BrJ/uH4EM6tXMmMAQdKRG
	 OgBvGh0k+MkZMxtOFGeg5zQCl0q6hw1KEJAM6CeigFGRpBR2MA0VFO6uUOD659ToZe
	 rZBqMiHLyrZxw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9641580A7B;
	Wed, 21 May 2025 23:05:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id AC0E31BF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 23:05:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9245680A5B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 23:05:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qS8AhSSw7wRa for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 May 2025 23:05:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D7B27809CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D7B27809CE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D7B27809CE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 23:05:49 +0000 (UTC)
X-CSE-ConnectionGUID: kG8AmwvSScuZGnwHmj3kBA==
X-CSE-MsgGUID: wl+TW8w7QN6OISOeMzGohA==
X-IronPort-AV: E=McAfee;i="6700,10204,11440"; a="49861521"
X-IronPort-AV: E=Sophos;i="6.15,304,1739865600"; d="scan'208";a="49861521"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 16:05:49 -0700
X-CSE-ConnectionGUID: 43s1XvLWS9KVVmie/9vgxQ==
X-CSE-MsgGUID: X1K2iNNcTxaJ2WXh8Vv3vg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,304,1739865600"; d="scan'208";a="140062187"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 16:05:50 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 21 May 2025 16:05:48 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 21 May 2025 16:05:48 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Wed, 21 May 2025 16:05:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Q5r3VkBPoiTB19RG8aI53FPx5k+tebEIUSNkbP3H/Bfmjdq5nI0IPsDF2msrtZQKqna1LmYtVt6VIkng9xiX4lgcXKPpiE3Rm2bL7jEForOXrxYeOib7or858DGDderhSa/25nwbt5gWXPyN2khELae62Vr8q8yT3fb7mDojxXb23BG355jdJs2iG6UG6O2L4dM3x7qvSbIGXJXbqohAQQYSuXhKgcNx5tcFK2cciMeYl0u7hGHrXZ3gRV135SdMDwnYQ2lA03G7YVwku1gtD3JF75nckAGhF4Mc5qTxKnpXyle2uwHmD+FFJO8ARnVR2mkmBIY69o0ku5mjkEeK8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H6BN8YeWl42CdwH+4ncpfEU6JPeyXhGLpmNt/RDzruM=;
 b=t+vsXQWisKn9jiyccWdMQiphml1Pfl5kfmxtV4OnPZ94qyoNasnNo+vA9tvgKp3RQPi6yuE9gadew+TPYtQYUawB4lUOPR//TQc4lmtJsnVlxc0xHI7ySQ7IsxgIx7Y4x0LW502Gagj4ckiunefX5Fe5oB7hgYawZGSAhcxNoqKdirifqXzDFTRKBbfUWtdi08RLVx+1iYPvc7irgaRgDCLng2H8YeGryVCpyC58xuZFfSYAekCnUefuxNzs1LE6bhftpzOWqE9AJaiz+krfD9le9FmSJ+aXSS5MiEB7nF+jexyKU+TdCxX65pN3b4XQrey+Uol78dfxs9OJ8BBZtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by DM4PR11MB6478.namprd11.prod.outlook.com (2603:10b6:8:89::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.24; Wed, 21 May
 2025 23:05:12 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%6]) with mapi id 15.20.8746.030; Wed, 21 May 2025
 23:05:12 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Olech, Milena"
 <milena.olech@intel.com>, "Nadezhdin, Anton" <anton.nadezhdin@intel.com>,
 "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 5/9] idpf: reshuffle
 idpf_vport struct members to avoid holes
Thread-Index: AQHbwGNYAjyr5t3zr0Gbguyhzv/tb7PdxZPw
Date: Wed, 21 May 2025 23:05:12 +0000
Message-ID: <SJ1PR11MB629715B1B10053C669DB51909B9EA@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250508215013.32668-1-pavan.kumar.linga@intel.com>
 <20250508215013.32668-6-pavan.kumar.linga@intel.com>
In-Reply-To: <20250508215013.32668-6-pavan.kumar.linga@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|DM4PR11MB6478:EE_
x-ms-office365-filtering-correlation-id: 7ae55f45-d6be-4be5-7fac-08dd98bbf0c3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?gXOSJQsRAo/wZyatgVMFCl0wGbYQBQAzmAifsXZuqStmhVM4zE8g9vxNLFeK?=
 =?us-ascii?Q?8KIwRJ9PWD0z7H/m5vnLBC0/5iLpWlPka4nuJqsfAQuFKM28Jkatmu6v0KIO?=
 =?us-ascii?Q?prQEboSPDJsCVD/vWoxhyqgpsPGhnRZNP6jr9bdzfotcpkIRW3ATQBHnx5Ld?=
 =?us-ascii?Q?HPLW0+Xt5RMhpCwUp48bV7DGUxhhQt8eno7vhpxW4dHZV6paytjeFGlFuiIy?=
 =?us-ascii?Q?jYpkyK7I/H36aCK7BlbQ6+LgEMD2nFievatC0x7JHH9YhaOU5EQNBPnrQLmW?=
 =?us-ascii?Q?h+hxFSldAxq8EBoqWjo0C/ZtpInoudW/KO2KU7VkVDDYr8uvH9qR8lAiNZOy?=
 =?us-ascii?Q?7CQ/99KbBOJjI4nb+MTfsocgMFDrNjy1dICbN8lQKxsB5mesqsqFXgrjH5of?=
 =?us-ascii?Q?3yPL/S2oO1tlxBPn22teCvllrEKUwsYbfXmrYtlvSyd3Ck0AuP6nEouryZQX?=
 =?us-ascii?Q?+dAvyc8nFa0SEkms1Cw+wMBOVj55HF4d0wlDaWONGYkw/yA2a9NO/jsK23SD?=
 =?us-ascii?Q?z3M8NezPm+aaMw6NGtWjjC5S1qP9t7cEz+V5oJc5dLjFU7WP1Ihcx1OHQws8?=
 =?us-ascii?Q?75NCmx+/lADmEL1qYkBpPmOp2WMo7oae8wvJTGMJ8/sytDzWFqAcwwdKmE6y?=
 =?us-ascii?Q?YUdyd8c0FEtLhdx+0INW92Fr3lMvqwc0Rxhyk6aHVmI5Q5fPWYwr0VvRPWCp?=
 =?us-ascii?Q?h+eJPqaXM7qi2T3bdK+k15eCWnF3Wi9ycb1ovv8QcwG3ARLCl8DEe3vXawGs?=
 =?us-ascii?Q?CGqnJaGeixf2fGyxkXc90UqVxT6qtoZ5zTUEMpGwdXAWcxnFUvcZT0aOLgHS?=
 =?us-ascii?Q?ixegz+i1aQQgcLGgixHG8kJa0Jr2ha2ngO5jnbi3ouuvIPKWvAp9Owmaxmwr?=
 =?us-ascii?Q?XHTkVQhDvFUBZL/xY43T0lTgEKWBjrb3HRLu5rqZR7+gp6U2bQxzhXVMx5jZ?=
 =?us-ascii?Q?SbcamWXfCfnCNhSL9lzujH/DFUWMn3RuJ7L94xkOW0haLGsanaVSlD6oerIo?=
 =?us-ascii?Q?Ukyk8rX7fXAdnDSaxE/jcL6IeETu1tt1GzaCbHqoci8VNADeBXBlz7czfqUr?=
 =?us-ascii?Q?N7h6dh7XybWDTN3BLuOsLDANh2KksYRc0IJtjl7B5bEcgy6rpVDhC5hk8NRj?=
 =?us-ascii?Q?m5svFXykQDoWk+303L8SMPuc0qz43tftOlNDN96+BZijGVR6MJxm0VFGN7Kd?=
 =?us-ascii?Q?6KdmsHbUEjXeW6gntXj5+k5VrmIwk2xptzdwdaTxHEdApvcIew+RXW64Tz9d?=
 =?us-ascii?Q?tpvlAHhyzru08JEVtegZxdjBl/BYOrHDHK41U5N0S10q30ol9FkkhjD2C+Xb?=
 =?us-ascii?Q?/cUtOiP3ZPzOPdKJiRAzPuT838wSmnLRvu9Eh5nrIss4c67o3X1WFXPM8/42?=
 =?us-ascii?Q?kLspuv9wHjtrAhOLtrFpQ7d1jDKMDLlGS9Q2WRisWgMtgtJEghn8mGDIXW1t?=
 =?us-ascii?Q?ehlQPGQK+8KNgZm1ifRvoa/3KqqYXDWW9N1lDjlSstqKukwSjIAeVA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9wKACMakM0pIkGPoqSft1jYZ61l8Llx8nuT12FsUT4ain0SgyGdAGJ1Tdf8d?=
 =?us-ascii?Q?zPjw7kFl3pooLTNHmfxOktOCqoRlXr0UIoLZn+JAftFdYw7dNvYV2S+cAaze?=
 =?us-ascii?Q?I7pLQjUd1V7Bn6vo1GZA4TVl8dFtfP66wIA5nbnRrqdvNxMrFM7lEugIYdLq?=
 =?us-ascii?Q?4U2uZV/kap0pnw2/yMnBF8nw9iq2xFsby3CQrlrSxgto4/jN1ZgAboa0mNrv?=
 =?us-ascii?Q?l/l05d1MD217Gkhwl4i25pjBWxSCzPmYfvzQfAPydb6oi6E6ZLue6WinFD8x?=
 =?us-ascii?Q?LQvkHGWSs6BGcmu1QP/QDdVZDbX4Xr7etdL4q5FHNjnkNOpIgpHXthxqR1qY?=
 =?us-ascii?Q?zluHU1AenLn5Od58wsTewGhbXwPHzuAkEzA97jmGL2qMZfKq6suALIAZ4WQg?=
 =?us-ascii?Q?EP+XaH6ugN8AoLU6UpD2LDN5BbrnGlsXBtGV/GORW47B7FHI2UOvCDQDbXw3?=
 =?us-ascii?Q?1VyCLqc+f30JpW1lPadrqD4aZBEtny0xcwyKVlBe9L2aij4Q5va46oz19stz?=
 =?us-ascii?Q?KOgWjvCIJdQWNoqukh0h/lwV5DptQnL/NlNpHZOlEdf3l1yyeygT+4pnVpbr?=
 =?us-ascii?Q?akCuC/MBVT8o+cD+f5wQOPukt6Mz9iBmB0TbkKQ/uagw6RUjA+7/+R9PlqCE?=
 =?us-ascii?Q?tP+YH3SFQ6327GZD6P9sHgWy2b7k6jUdewTz4+hu/wbsQ6dKODPUhI5+LYnm?=
 =?us-ascii?Q?nWrCSZ14a75jnnj3gFfDLsYXAG0fWo6f+I0r2XJ6OZzYF4sm02OvtCDjxVQC?=
 =?us-ascii?Q?viavqai3F7hHSKswxWxMWfXKrd0e956IYf9fsNit7qo5JOrIe9Uu5ArcSr6Q?=
 =?us-ascii?Q?dtrwoPDfMrT4a1EFwjV/fAx/QzI9hqHO65C9OaSJp9Lk2LucPUo44LIc4t3c?=
 =?us-ascii?Q?ZiyEgX+jSvXZI1PWIqtqwX5fXDsyTfutx2so6fJBZC1z2Cq1ilTqTjxFEPYk?=
 =?us-ascii?Q?IhvhtXorv23rgg7swhWyXt3BO5QvSuFGqvplGcvHYyHYRy4W1t0J+kVQy8QQ?=
 =?us-ascii?Q?ALrOfn3hxxZFSZ+zwih2OkMvAPGoaId9M1+EKajeHwTI1iBxcI3/rXLqMUuu?=
 =?us-ascii?Q?GSRWXE0u/JIWzOkaDApp+EQP4ra0R6V3hUapudTXCEAJNbaUUlTlYhp58YmM?=
 =?us-ascii?Q?0aRokJxMgpfVmeJGF1pJzr9noXY/lyFlakeNN5hFU1gs5T1dwo9xXUlLI4cv?=
 =?us-ascii?Q?vz6pSYm5Gk2k8wWyquR/Tm8nusdvp/xNFZ5V+fGIDVGMP/TRfelZxTQRHpPp?=
 =?us-ascii?Q?pwO/C6xYtZ6BIERbP89has+H0/Hkp2U7qXaZSJvXOSANNj+VgYCgXZZdnTfn?=
 =?us-ascii?Q?HlpUgbF72QiqCfdCFd5c9L8Aosaq9hCi6q//9HqFg1LIsJewUow4OqjdgsXY?=
 =?us-ascii?Q?pTG5BqJgTyqyfq3Cw56BBF10VPIwFw+dswTNC84CpBom5mAJwJciK68BtnV5?=
 =?us-ascii?Q?yBKRibyha+ohtVzYcSoi0SAx1mGwcyD6+YMSuFa6JnLSLpeyf/wab4wNBHEK?=
 =?us-ascii?Q?puce2nNAl2qhDhUcjE3UGa+GFIWrgyBlK5zLJU1U7w/7piQ7Zn0dN7DKgl+q?=
 =?us-ascii?Q?Am5AbbybipgMUKWmW48R/oZrepDjRWCy0TN6Dr8m?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ae55f45-d6be-4be5-7fac-08dd98bbf0c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2025 23:05:12.1766 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: A3on35P3FGXZkd30VN0rxfhupN2dH2YPYUrSOLndUVfi7wOm3wJYyncUwOuixdyIxYoeVqp3BvhFlhVzNrLUYw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6478
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747868750; x=1779404750;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=H6BN8YeWl42CdwH+4ncpfEU6JPeyXhGLpmNt/RDzruM=;
 b=ednjiZhCJJ0M7GtThgcsP9h5IpvwTEDdR5GQM7P1867jSCQ4d/kTLviK
 AfEdAbOyQB8UjlQ2fKF15mkbIkILvViE8MwTYosunIzFdF0vr4TOS0NC/
 MOHeNV+bJZfmOWiupsTWL6KSaDU3BOYZJRA2VfzWeQ9fREjJfTqktxzje
 UzpGnjL6bAMCMHrzlqlb1gi1RvJp9TvbitUjvMat8amp0PUAwUomNqf+L
 Yp4uEBdlFk7izjzO9cEnQGBPQgflXEB9iMxwUP8pgUuXbCV0cr2dNLo4H
 dxHmLJxBitwAvKIN9lxIS/7odxISGKpUKagtaDqOKK4k84Ck70VaIUHNK
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ednjiZhC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 5/9] idpf: reshuffle
 idpf_vport struct members to avoid holes
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Pavan Kumar Linga
> Sent: Thursday, May 8, 2025 2:50 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Olech, Milena <milena.olech@intel.com>;
> Nadezhdin, Anton <anton.nadezhdin@intel.com>; Linga, Pavan Kumar
> <pavan.kumar.linga@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v4 5/9] idpf: reshuffle idpf_v=
port
> struct members to avoid holes
>=20
> The previous refactor of moving queue and vector resources out of the
> idpf_vport structure, created few holes. Reshuffle the existing members t=
o
> avoid holes as much as possible.
>=20
> Reviewed-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> ---
> 2.43.0

Tested-by: Samuel Salin <Samuel.salin@intel.com>
