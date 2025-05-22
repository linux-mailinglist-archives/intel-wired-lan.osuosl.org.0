Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B52BAC1442
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 May 2025 21:07:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 39F5683B6D;
	Thu, 22 May 2025 19:07:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5rxHGgvIFPzR; Thu, 22 May 2025 19:07:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6AFB183BBA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747940849;
	bh=+JbqJ60CRAi6ktDKWciVL27vUELtaNrihYp5fQr9+j0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Jr8gevm74b6iOZgRIle79QW7qaR0pm/Hqkcv/3nV13RwbA5f8Vskji1qFjURKfO0g
	 JLxsakbDaev9M9BYM+BbJQhtXCpEzVmwgBXMnvLT4wr1HlVidiIEARtYsTtbE1tk+k
	 tzMELPe+CrkdK6+hSbT7ePBF4CzP1ke0gt6DRXvm56/SgTUeUORotnjPw7jNghBl1j
	 8tkRi5OyEfLibqzgalqOKX07LqU1K4moJvB/dyaQ2BCY7VS8ED5MbzuSUIb8n6cRzp
	 8BmKkRbYn0P7pyzAdNlsTi0o/dCnqFTnZu/63a3iF3qwL5CAeVh9dCQJoBORh1ZOkH
	 qBHjl6GYTpyVw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6AFB183BBA;
	Thu, 22 May 2025 19:07:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9F603106
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 19:07:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 919C9613E1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 19:07:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2a5IN9wRb03b for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 May 2025 19:07:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=david.m.ertman@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B6709612D5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B6709612D5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B6709612D5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 19:07:27 +0000 (UTC)
X-CSE-ConnectionGUID: R0iPdBrVSWm35CA06dcy/w==
X-CSE-MsgGUID: T7xY7O2RSeKP3MnK+gRkcw==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="50131642"
X-IronPort-AV: E=Sophos;i="6.15,306,1739865600"; d="scan'208";a="50131642"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 12:07:27 -0700
X-CSE-ConnectionGUID: ho5H6JL+S2SciOzGqHYGuw==
X-CSE-MsgGUID: /QiPVnf4Qh6k2vctnLXOzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,306,1739865600"; d="scan'208";a="140594533"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 12:07:26 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 22 May 2025 12:07:26 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 22 May 2025 12:07:26 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.85)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Thu, 22 May 2025 12:07:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nXhq/COgI30fWQzuAPIxKC8gTEcSwKpoySZCOfFVKRTlu5hqEYz8Ocehi74H2u9xBLno3Tjih0CLsIvA8o6JSDADJQZaw6cjlOiiw6NZWtb34c/ZdWh8g88VKpIpQVFNrQNBfCrUIn0jRDxkekUPAHkP1mHbJCL7ER8rPkUG0WXM3RSErkU1QUajz1+NGvrkTdQmSI4wXbd/Aq+38X3okTPiJ8dt4iFGGm8yPO906mJrkXyznEbmNkv/M1ZIKH1ugcagZEbi75D6hkYX2gXm3VBcCMLovfz5HrvnP+vvvwic2iN4xo1lDqTaBooS4wXWINh7Z8uyW++d9FxACLrhuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+JbqJ60CRAi6ktDKWciVL27vUELtaNrihYp5fQr9+j0=;
 b=Ro6CRpsiUbwOz4vHroraPomEH7S51rlXzad4JDZVe4q3DfR/xzaxUsCnElY5BQUBQfS4xNVkr9vUk0CfZPFyW83XLCJz/0lmSXWAUa6dKGxWNj+oF2hMSZT2YJxoSFCYd6AtXclEFbWv3N+vHPcYZodNkqeQJn7YhVVeCSZCKlZJLojYmiCdcMaBLHPHHBJM1yPyjTaEdgNAyrWyl6pjeXaAzCooB1Rw4T++YRs8vTCsfzQM1SpOmCnsyNjbjE2dseuz3DXbgr/csLBYptOPZVQdV6VGv3OrRMPXbM3K7W8b15asDfrRsZmlrhm2t9E+NI49KVkLwyRAevH8YxYDeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6194.namprd11.prod.outlook.com (2603:10b6:208:3ea::22)
 by DS7PR11MB8856.namprd11.prod.outlook.com (2603:10b6:8:253::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.25; Thu, 22 May
 2025 19:06:57 +0000
Received: from IA1PR11MB6194.namprd11.prod.outlook.com
 ([fe80::4fd6:580b:40b9:bd73]) by IA1PR11MB6194.namprd11.prod.outlook.com
 ([fe80::4fd6:580b:40b9:bd73%5]) with mapi id 15.20.8746.030; Thu, 22 May 2025
 19:06:56 +0000
From: "Ertman, David M" <david.m.ertman@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 2/8] [PATCH iwl-next 2/8]
 ice: replace u8 elements with bool where
Thread-Index: AQHbyb8FBcYPHzrm+U625rwjZwUBibPdZbTwgAGd8/A=
Date: Thu, 22 May 2025 19:06:56 +0000
Message-ID: <IA1PR11MB61943304EF873C11C41B6FCBDD99A@IA1PR11MB6194.namprd11.prod.outlook.com>
References: <20250520193930.3763888-1-david.m.ertman@intel.com>
 <20250520193930.3763888-3-david.m.ertman@intel.com>
 <SJ0PR11MB5866BE3495A2FA33FCFB4867E59EA@SJ0PR11MB5866.namprd11.prod.outlook.com>
In-Reply-To: <SJ0PR11MB5866BE3495A2FA33FCFB4867E59EA@SJ0PR11MB5866.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6194:EE_|DS7PR11MB8856:EE_
x-ms-office365-filtering-correlation-id: ad1ba453-0af3-4b12-2c11-08dd9963d282
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?+sIPunvJAU/S3IwP8FT+NE6QolwtYUIntaJ9EBdp9y1LYcRh9roBpXq1iIXM?=
 =?us-ascii?Q?5Nk5d1Fd1C/tH3RaVzsQ+mWzuQmuoGxP5/+4cVIS9lzIpYNxSQzgzz5xDBLh?=
 =?us-ascii?Q?pX+uH3RqdXAmrQ1ssCxQ4vM5tFMDZEMRaWMwFP8wgPu0pH5vkHRWm3pAYROp?=
 =?us-ascii?Q?4j5/qa/eECITKAFPP+FckZz7KUnDGTSUJzPLvWzq/pFVZYfziG6Vu9gLu5fQ?=
 =?us-ascii?Q?yJlpXucWVwlUznWxCyZNxdjSH5yjjPQUbKjYduxmFPvDL3c1bY8H1miJvtID?=
 =?us-ascii?Q?JB5QDqw5MltqPt7F89h5kbRGFRzH/zTt+nhhmRYuSO4f3EDbYmeSJIYfimrX?=
 =?us-ascii?Q?vEw5NwTxb++Mhv95gTTaDJcqQ0TjqZAyCdjhDlCkxZvC/xDrS2M3+8dHQYjE?=
 =?us-ascii?Q?QE0WZzmJOVj97BY+9k3pInWhOSHnFH3W7G2zvN19M7OzkfmojajsUWV+a8uY?=
 =?us-ascii?Q?dJ4TR3rlQMv6moYIfc/Ir9GEHxS5r198MStecvt2KnA2rIHItlhUPOdt54Fq?=
 =?us-ascii?Q?mMRC/lyNy1y8HdAwWm7FKMKWjBmU5+jYYRPqmccYTG+whxmIyjwchMUNuxbM?=
 =?us-ascii?Q?bXLQwose4WqLsbzAHP+POujJhA75P5RcuW+B7vK97apSLM8CV75/yCO/nIMR?=
 =?us-ascii?Q?DSzjsCl/e8G13mvhJyuyBLf9MYVfuA386LrnMxkWhImAX3umOcEYKDKJ0YL9?=
 =?us-ascii?Q?K4lmxRBtmUyDe9ulDYigxahkubBS0Mb7fg5mqqN9uYnprGmlRPIl92IFACkW?=
 =?us-ascii?Q?tA49o4/m31IIZ0P8ovvwRSx92SEfGKvlB8JddggV9E46kWbbnUx2nh4bNWSV?=
 =?us-ascii?Q?A7464Xe4OrmecxJtWjk51ribWhwHDpnVoFNGivkKvvlvBU3NGK5pQ1XerqrM?=
 =?us-ascii?Q?Pmk0Ze9M9bMyaNjv7X3+SXbsaeQ0hm0YVJVVnGjG8NeZk+gaL6xkSnrC8Ig4?=
 =?us-ascii?Q?gws/EMoZ2Wc3Ws23ACKARYDIl4C1m9GJMyAKQXWYnjVMOBK0kFRIZ8Ksa0DK?=
 =?us-ascii?Q?Qfp9hl8e1YuWrwl6X942GsyCfcXwFdnpJuTnQq5/4DLwvm8EAgCxoPd3IAzT?=
 =?us-ascii?Q?aBSIh7TNirJ9UcEl2dQPCmFEsZ83qZSBE8h5TI+yTruzJS9/Il0u2RoBcTNW?=
 =?us-ascii?Q?i9bw11wiffHQw2U/9mhgaaJR+mwmhPtr7aJArKy5xIX/p00v5XvvmuCnC9Po?=
 =?us-ascii?Q?sQs00mP7cdT/RYoxpxORKjzU/BZ8S7mHbjUehCqVb6krK2wtd5rpUmgYKIrb?=
 =?us-ascii?Q?WSV+29IoIRSBLLVYAkoUiEzuQQ77iNZ/dxHlEjjEHm3dsW3VrnqV0PddhRit?=
 =?us-ascii?Q?AP2vKQsv0Lb3B6SmY8sKHqiet0D/5ulbA7F+9J4JWT8+9T9o8QP6DbTGLj9o?=
 =?us-ascii?Q?DfC0bjHVxzQd0w0+Bofv1YzZjbOr9hpkFgSvSIpo3BYeGDyM4sM3+Do7yg2n?=
 =?us-ascii?Q?eqTRPXLSH9ICIiyfPX+6rSKzm1VbLkYyMM+SHm5QQXumqKTu15AyB8Sns2wv?=
 =?us-ascii?Q?qpXD0UKO+7LPSo0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6194.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZSveDXOyxyyBIxP0lujOhy8uldMV5jNA2LPyyG3fy3BMjuZL3/27ouxZJlKJ?=
 =?us-ascii?Q?8X+xsP48FdDWHPPqfQ859V9vglMHq/rhLF9yz8IYgxHZ2JiiCnSyj9obnh04?=
 =?us-ascii?Q?q4qWeaXIHQWRSgvxvuRePL2RVPNcP/5mBO1jC0XYeMQyeIKtF9kcGw3H6aTQ?=
 =?us-ascii?Q?Cv3EB9+LLatQBWMwv5nmqg/zCbeV7Z3k/+uTd+NAstAcS/qg74pOZWd4LcGV?=
 =?us-ascii?Q?dUpbwTk2guYkcXRVBDWf+5IROX5q28ul2+ZyTSo13/AqAZd3i4teiJP4eYnw?=
 =?us-ascii?Q?AsmNBD4sxYwDkofAy+vbiOB9Op0qt92e42mc/5po8kNB5UCNded7QscpRFe0?=
 =?us-ascii?Q?RCtsLvBD8i/HYKDXwO/6gBmJgB2XEvBZcxsNRjCRlgXGZxyXC2ZF4apEcyLO?=
 =?us-ascii?Q?wBmENKLxy39UHjKwDbIeKqI9tZ+P9mS93qbSGeHkTG8wVnNIoKZsuLp9OSJN?=
 =?us-ascii?Q?veu2BEQlhXEUTtb1sDUawJ223cgGb/izw9HxEq+oweND1xnORnVqo/LRMAnG?=
 =?us-ascii?Q?kyZpo3/5EO7BtpUiLm1WqjoOxtnj6sL0ocCUV6pyozc12ZYfzKkrcd4Gx0Sv?=
 =?us-ascii?Q?N1Qwoa6L4WARCqjFW9C2xk4mQG0lEGD9heLC9oyNjkMfRXB6+0O6LBKlq5Ya?=
 =?us-ascii?Q?nyi7POQjxsW34QmfcYHORqnbi3ZUEPWBQunboVuizaU58Ww/+hp1eXLt7XHy?=
 =?us-ascii?Q?LTCTQlzizB6tVC8swZWfVgpwpfnhbPucKEoPb80EJfWsnqtwoTZPXbuEPHAj?=
 =?us-ascii?Q?dAjpe9fw1lbpUBLMB8T+MkgYo5Bln+BAZ6P2dGCg3LaZFraPWoIv5mZ1/jEa?=
 =?us-ascii?Q?47ZiIR+ZHTF5yzuiQReIHbB9UmDh/IcisaD24CyetiCZ3zQ10B3Qq5aTt0wr?=
 =?us-ascii?Q?R7pjY5z5f4L0RaeM4IfNGJtq8u+i+tZzRmA8XgtV4QIqtQG6N9pVWgC0uZIT?=
 =?us-ascii?Q?qQVn55beZO1JBXJnuwlo/HR2/GmMiLmCvXGKdlMXgVCBYl3yY0JpxfxC6Fix?=
 =?us-ascii?Q?Rxa/2UuuXTyRAJaCGnnRaQdqX60J7ZwE92lkmIFPT65tdwFotVcZvRbkMew9?=
 =?us-ascii?Q?qc3P2t5v0nPrnS/6FH+hxjPwH2FHnXFH+Exc1ecnk5bD6ojmHwTIHBsv9Win?=
 =?us-ascii?Q?yoEP8dKcexPisKX4UH4MMDCb7QwMcPHHv0kY5mgz/EM9weXpbiIlQfQGsdmy?=
 =?us-ascii?Q?jxHL8SU1qXnhOuG1DV5exGYKn/3DlrxpmzHmaKwwpWRziTmiZwGnjPVCYooP?=
 =?us-ascii?Q?NyGd90aQbbNn0vqAE/XYzeLDVvcjW37i6eZRLmtPO49XfrykByWA8Q4uC3Uo?=
 =?us-ascii?Q?mi0991CWtO5jGYZwstgn6KnThkmzKR/AmEtczGfHZ9wyBbtbLgzcUGFS1X5O?=
 =?us-ascii?Q?O9YCabIKxAmwKH25Bb2mFiBMzBp4aaLNsqxbiJRBW65RI1PHTK5N7HPp/oko?=
 =?us-ascii?Q?tAuwGGKitWCzOsy+h74H7ENfskvku8ZjcmporeCihz5+sRZEYf23ugBTHgET?=
 =?us-ascii?Q?vbvZPZ139T41XbiQe+ERblmn7gYa8v866KWuYett/UVv6GoBOVLi+XaY5Oxn?=
 =?us-ascii?Q?2wX/Jjzq7kdlvae+QI4E7yOgQVVzpJG939RmDBoS?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6194.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ad1ba453-0af3-4b12-2c11-08dd9963d282
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2025 19:06:56.8714 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: siKunzWZF2venO03v2rAs27em0YJ2isE95ut5zBfpHM7kXCN3KQEbFnbG4zLy3xSqhK2onaOOPL1B59aoOrzEXG7GxiEEMt/FkjN0HVtbNo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB8856
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747940848; x=1779476848;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=F2OFuZgMYJrW7KJdwPsGMlbIwqXkyZMNSD/n437eTM0=;
 b=hePNI8xaSH4Dv3Dr07WwMR/QJYEi5xgR5ielK/1MLv+Q2RB0WNYbkAkz
 ORneoMWoE/woj72mgPRDmWZ6VadrJ62IrkCGpbvYsn9kp8I77XlrKQ8vF
 qIwIBN0YgArsM5y1GUH+6rG92N+YSdPGZa4xihbs2e2YGYV+mrVxSaQit
 6ddkHYJZhrTZ1HasUrwHdcyn8lhJGXppTu2mLj+Ki2L5PgoW9LVKLo9lP
 wLKvcrVIBa3iVAheslORrflV0PpUyD8brl4KrvP+RDLh3FPEIrfnTe/UK
 LprF51YTR3oCPf7KIYOjoXv0HkwRNDKar1dZkGHGg4hAu86DwrvoaHFbY
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hePNI8xa
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/8] [PATCH iwl-next 2/8]
 ice: replace u8 elements with bool where
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
> From: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Sent: Wednesday, May 21, 2025 11:19 AM
> To: Ertman, David M <david.m.ertman@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: RE: [Intel-wired-lan] [PATCH iwl-next v2 2/8] [PATCH iwl-next 2/=
8]
> ice: replace u8 elements with bool where
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Dave Ertman
> > Sent: Tuesday, May 20, 2025 9:39 PM
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> > Subject: [Intel-wired-lan] [PATCH iwl-next v2 2/8] [PATCH iwl-next
> > 2/8] ice: replace u8 elements with bool where
> >
> > appropriate
> >
> > In preparation for the new LAG functionality implementation, there are
> > a couple of existing LAG elements of the capabilities struct that
> > should be bool instead of u8.  Since we are adding a new element to
> > this struct that should also be a bool, fix the existing LAG u8 in
> > this patch and eliminate !! operators where possible.
> >
> > Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_common.c | 4 ++--
> >  drivers/net/ethernet/intel/ice/ice_type.h   | 5 +++--
> >  2 files changed, 5 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_common.c
> > b/drivers/net/ethernet/intel/ice/ice_common.c
> > index f7fd0a2451de..29a02a0348b1 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_common.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> > @@ -2219,10 +2219,10 @@ ice_parse_common_caps(struct ice_hw *hw,
> > struct ice_hw_common_caps *caps,
> >  			  caps->reset_restrict_support);
> >  		break;
> >  	case ICE_AQC_CAPS_FW_LAG_SUPPORT:
> > -		caps->roce_lag =3D !!(number & ICE_AQC_BIT_ROCEV2_LAG);
> > +		caps->roce_lag =3D number & ICE_AQC_BIT_ROCEV2_LAG;
> >  		ice_debug(hw, ICE_DBG_INIT, "%s: roce_lag =3D %u\n",
> >  			  prefix, caps->roce_lag);
> > -		caps->sriov_lag =3D !!(number & ICE_AQC_BIT_SRIOV_LAG);
> > +		caps->sriov_lag =3D number & ICE_AQC_BIT_SRIOV_LAG;
> >  		ice_debug(hw, ICE_DBG_INIT, "%s: sriov_lag =3D %u\n",
> >  			  prefix, caps->sriov_lag);
> >  		break;
> > diff --git a/drivers/net/ethernet/intel/ice/ice_type.h
> > b/drivers/net/ethernet/intel/ice/ice_type.h
> > index 3d68f465952d..e40ea754f91b 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_type.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_type.h
> > @@ -293,8 +293,9 @@ struct ice_hw_common_caps {
> >  	u8 dcb;
> >  	u8 ieee_1588;
> >  	u8 rdma;
> > -	u8 roce_lag;
> > -	u8 sriov_lag;
> > +
> > +	bool roce_lag;
> > +	bool sriov_lag;
> But why not u8 roce_lag:1; u8 sriov_lag:1;  ?

This patch is the result of reviewer's comments and a request
to change the u8's into bools.  The change adds the benefit
in that their usage can exclude !! operators when evaluating.

DaveE

>=20
> >
> >  	bool nvm_update_pending_nvm;
> >  	bool nvm_update_pending_orom;
> > --
> > 2.49.0

