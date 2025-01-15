Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F2C4A12357
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jan 2025 12:57:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6909660B36;
	Wed, 15 Jan 2025 11:57:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CZIvCfO8Psvg; Wed, 15 Jan 2025 11:57:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8B94660B62
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736942253;
	bh=tmBWSXW7RDp8333PEn6PwANkUM8CsqQzm8JwoTzpowE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OF2Ngy41GdAVjZ3Ers9xXR1ERVKOzzAyxbfn8p/mAe69daWoWYU+mAGotMkUSX/dB
	 eE2uZCy1CAc8jiAdlUGEctMMgw+Z0KBid+85Q5j2cMo1bAkEGR3lC6l2BylCyvKilp
	 2enho/isZBAnfR7N4uBBM7xVhAB4NDOFCNgotEV1DvQKZlHjV1RvNL9wmF6/vFSKYb
	 +pu/IstnSoaGzLu5XWoYtn2KuWXIGtYTts07ae8aWBTZXNZxCv6g1sdnH+g+RNmE+c
	 1/kK77Bu51nJ5EAngQlJ4VI6swD2ITM5isVbAo1aEyxG/qNUveMxsVBTR/g6dWunmA
	 ctev/B8pudykg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8B94660B62;
	Wed, 15 Jan 2025 11:57:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id C908DB89
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jan 2025 11:57:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A9D5540F35
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jan 2025 11:57:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FHKJLrwyaZjf for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Jan 2025 11:57:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 23352400FF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 23352400FF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 23352400FF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jan 2025 11:57:29 +0000 (UTC)
X-CSE-ConnectionGUID: FrKlhUSCShOvuXv8ziuhEA==
X-CSE-MsgGUID: GRXon9OBQHyghp0px6BJKQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="48682925"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="48682925"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2025 03:56:35 -0800
X-CSE-ConnectionGUID: VTOz6iXvRAuwHQ/6naYHug==
X-CSE-MsgGUID: T0w40VDvQCu5tPdkO9+gOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,206,1728975600"; d="scan'208";a="110096146"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Jan 2025 03:56:35 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 15 Jan 2025 03:56:34 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 15 Jan 2025 03:56:34 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 15 Jan 2025 03:56:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mut8FW66ltaUSfV6PQYZ9U9LacOmSLEvwP+Lct8kI5NU9c1UJ/ChGPN6DQxiwmctHLe5rkZ+3snF+XphBXev02EQB3MvFVxVuTuVBKuAmgp3xAw8CZgQI/5vJVWF6OwM8bwTgVbWoh27oLPoeNF+3fPX3KJ7bb0UFIykoPDV1Zn96nS21wlSTeb+3ryATS+k7YNzKeWpmRjkkdipzGnMCbpkhoRmHWOen9j8rt+ihbjOs80WExRAjwiOYsW5FtS2yZ47MB64PiifGUhRn3c3oGxyU190HqUhXVBq7DnKFPlsSlZdP5hBy1Mh6i44dq/31G/6n6hkYVlRRDcvWGUc2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tmBWSXW7RDp8333PEn6PwANkUM8CsqQzm8JwoTzpowE=;
 b=IstcElkGeq6pnsQInAs/BxmrOGeRO2UOO76pKfLvomrGHPkTtkY/dCyX0p9eNhPS5rhA5yCdy7og4kVgJ+ReWLfotupwyoBevpzFMY58OMkpEjHFj1PRX2lYC48UyNyXT1GhPTyBufy0LsGBJaChP25VoFOCedarw6f9Vs25iDzU2YyX0DtWP9pL6oyVXlcXyPpKblrLG8Z5On3KXlzrXwZV608VS8YHBa06gn3z1w2R/ioMP8enOZuT938CaG6EwY6u618YRfeZPhdJr1m748ZUnYkj9/DyZfdK9+ukfuObGih3aY5qNi8yQIU/fLW1HtCiDHRCvC7l5jqZTdO3dA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5889.namprd11.prod.outlook.com (2603:10b6:303:168::10)
 by PH0PR11MB5128.namprd11.prod.outlook.com (2603:10b6:510:39::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.12; Wed, 15 Jan
 2025 11:56:30 +0000
Received: from MW4PR11MB5889.namprd11.prod.outlook.com
 ([fe80::89d6:5ccc:1dcc:3073]) by MW4PR11MB5889.namprd11.prod.outlook.com
 ([fe80::89d6:5ccc:1dcc:3073%5]) with mapi id 15.20.8356.010; Wed, 15 Jan 2025
 11:56:29 +0000
From: "Olech, Milena" <milena.olech@intel.com>
To: Simon Horman <horms@kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Hay, Joshua A" <joshua.a.hay@intel.com>
Thread-Topic: [PATCH v4 iwl-next 08/10] idpf: add Tx timestamp flows
Thread-Index: AQHbZn4NNK8Ov/zpoU2bhnsWz13esbMWdTsAgAFGjOA=
Date: Wed, 15 Jan 2025 11:56:29 +0000
Message-ID: <MW4PR11MB58899B726FAFEC004F58FAC18E192@MW4PR11MB5889.namprd11.prod.outlook.com>
References: <20250114121103.605288-1-milena.olech@intel.com>
 <20250114121103.605288-9-milena.olech@intel.com>
 <20250114162648.GK5497@kernel.org>
In-Reply-To: <20250114162648.GK5497@kernel.org>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5889:EE_|PH0PR11MB5128:EE_
x-ms-office365-filtering-correlation-id: 11eb0615-8019-44ae-28ac-08dd355ba5dd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?OjTeAjMXqvDxhLUqtnLURCIqTe+7P0AvNIJutRLq2IKt8j43ijdjp9eP6NMe?=
 =?us-ascii?Q?LcKDFr0+uB9xq/7TASPmO3ELF5J27WtIm0dSkDoc805TZ2EhEStuwBFspwjG?=
 =?us-ascii?Q?DZBiKhQ/sEYIBiOqR5KlKbq3sBCAMEhPMOr+3/F5XA4ssk+yKcxyiBYv0iEZ?=
 =?us-ascii?Q?2F1JlDlUblwYSGvora357tZOjOhRj/UNBAd+rgeh40pLxI0WyOl7rUOPOZ9B?=
 =?us-ascii?Q?7amKe9UkB/OLQ+QFJrr8KPAgUJNAX0sDeMfddQJXWy9Rc7GaC7X2+04w0gv7?=
 =?us-ascii?Q?qOW1NuVP41XcX88+7jGoiEff/w8VFVaPMtEoEc2pAQAXzUfFA64JMPszQ5KP?=
 =?us-ascii?Q?MEuspfvb3skhxZG/TdBhUnOEsXoLOh/yS1By7E+pyDbp3quOimB5Vp9cIW8Y?=
 =?us-ascii?Q?QHH87ha2UVAM0vaWZoCV1VkBSWfi3IfmsHQzBKROVoy0qTfXVJq88YUJAk8h?=
 =?us-ascii?Q?UFTXSTR8zkJgHYdo5NHF5iDyBuMBPecs4LvnzJHMPDIj6JCoyJsnmVGkL6hZ?=
 =?us-ascii?Q?kzk5AgFWM9N92Xro03n92C3hnu/CraIDLRn9o1IlxFQde1KgjqzxD1CS00wj?=
 =?us-ascii?Q?gKOjs/YV1tiIcpXWEspLZpHKw/I9+hsUiyf+wES273o9dQpHcT3PsZ2SL9gR?=
 =?us-ascii?Q?6ron5NcfzkLoMQe6Js6PiR6I1Ap8wnw5Ed9QuCkGEaKxWHCJHDLzzCeBazEM?=
 =?us-ascii?Q?dv5mWarf42/yVxIFnbIHNjW7QUD7ae2p30NQYIecX9Qm49Sy/cJMKgYrcx90?=
 =?us-ascii?Q?EU7BvVC6ga/cQFOMuRq1acso3sN0k8cB6jIm6J8cQ3ET9P6vhxAto984LBOb?=
 =?us-ascii?Q?5IgSfa2/9E3Xqyf7nwS5RqeQF6Rxa8AFeDGt64pALdT+l/TTspM2Qmh1go5x?=
 =?us-ascii?Q?2ZzBMU0k77y42onKFHxXo6wksqhs+ObFnKDxObLIivX+Ch8GjkoKZ7kLIXVc?=
 =?us-ascii?Q?wEHysBrApA5JBGew1VnxNr1l6n6t7LPFsU91f7VDMHbAHOECv678u9tpKLjX?=
 =?us-ascii?Q?Z2taGoMTneowGpEVnnfW2woRjqQRExkr0eNrDWnkgR9bh/EYUh6W7LhpZwsZ?=
 =?us-ascii?Q?YohDFs2rPIWTS+8tBIAyxBbXR7gk7Iyvq10HVabh4R7FnOOLUp8qAICsdAq2?=
 =?us-ascii?Q?/KXqzuefLSCJ+ZlCuNtTVKcqacUxqZmvZRhS3/0IsdDcdTcwbePKHAHBSESx?=
 =?us-ascii?Q?nMLP7kSfqnrsa45NOe+Pf9DtbDi/Xq0GwWk868xPPT8LzNqxtw7pKLtUx/TB?=
 =?us-ascii?Q?E2/MfxqaYFRXImQjBKAGRdXPxvdDD2DFHfe5zXHKV6DqOBpQ6Gb65ijnkpIb?=
 =?us-ascii?Q?4u4idFdXJ4PC7OLHCZlfvMa1qcKoxJsYvaYgXPkFG7Dg8NxnXLf/ZjWQJy/u?=
 =?us-ascii?Q?Wy+5jdwZv7SkIYaN3tp0kY26doKoAoyXDdCF1QBO9gZjCwX2POFvrlkk+akR?=
 =?us-ascii?Q?fr//lrhFsoU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5889.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RSUwa743VnuhpH78Z73Zf6SNPqvcvtRiQQQ5L/Fl97mOPrOZV1kIKGRqhyBl?=
 =?us-ascii?Q?4XewNVNkEStjGeOmPKRXt+cEW7wZ1srvx33Phwf8R08jV4RkWzO+bl4MbnKD?=
 =?us-ascii?Q?YBWrkwMJvJmOaovtyhg8bMauorVijMsH4Nj8X/4PdJ0f9q8BI+7sLeYGZSD0?=
 =?us-ascii?Q?efP0ofsNe0UpuNZAkWpiJKI7u2lyB3TYZSk7vNbSIeHJm2tddu3mWqbT3XeY?=
 =?us-ascii?Q?9zx/EauIA5wRAqLuHXShjdrnnQWoovkbCRpHibagvuXOH6l4xxlJsgdDz0xe?=
 =?us-ascii?Q?3+UxRMk7Y2sxhi723jFjghwmMx3ThlzGpCaiNDZ7aJIe73E9j+w/akeiiTmK?=
 =?us-ascii?Q?ipdldEfonfKE2oj2PTvIxOZnsyYySx9S14uPheexcBFEoTcm6DH7qPFxp5BH?=
 =?us-ascii?Q?OJQeLdyT5QPFC4BXYcflE3+s4LCljSCKd18U4vnojvzpcAdsRRWZH86p+YFl?=
 =?us-ascii?Q?fZKhjYZIpfd3DMbjoPNhLA0ri5RSTOVMh/9m4j4oypfmeFjQ/h+ssULi5ho5?=
 =?us-ascii?Q?IVUpvIJbiRCxp3WTCXLktyiG9oX+DnspKLyos+nLyEv86N3OihJ4C5nSzn40?=
 =?us-ascii?Q?iW6eIxjBB7UWNE1EdIox0EhjNvFqnWdXYntjvD+oIh2F939dSF+xq1Mer8p/?=
 =?us-ascii?Q?IG9MIr4fv6/fxKXvBR/QitHdGKEjBFEKVoqs3yIX3iZVqricNu8Emw/2fx9I?=
 =?us-ascii?Q?pKTJSF+qlF5VbIpG6CjolPvc7xxtupCxCzGVERY6LqP09kzxKjTREFYPtAmR?=
 =?us-ascii?Q?0tGkKS2MJSbYZ942cMZKj1b1uBuyspGgKwIwH8BtZyz8gpH+JDz6v2GjGsqv?=
 =?us-ascii?Q?kk8XNNGalheRkjJCxoZA+Cq8aB9vPLJEwbL+stE4CMwFcswjVLWHHkgL6cPC?=
 =?us-ascii?Q?EFlEGnQnyOzkmD+XNeVyEYkso/9QnJu2AnENVEBfZPwf5rtg6+mH0LTPOfaJ?=
 =?us-ascii?Q?Oa7EQ1ZKH2n7te0mLjTcbSQK2cvq9AkLqF1YgRYX3eJitMTgByE2MWmvs/0A?=
 =?us-ascii?Q?nr7nyE9RnZDonD0fkc+Y8/EMqpGHspk58modN7JJYw7ZG6x9WK+rOGW3OsP7?=
 =?us-ascii?Q?WjugAcIyI1XfPjhMH7j5/kqp+u9AIV3XMcHXR86oOT2LOR25q286StxFQ6SD?=
 =?us-ascii?Q?gBQnCmtfIKehLzGWrcxgtXNyZjUuegaXLQ+U5oxouDuO4wXQ8qCb4tjgKI3l?=
 =?us-ascii?Q?2qjIoWn3WPMaODd1oUhZ6Bq4acMQ+H7YK3t+Bh0ceJ3wphEg2RMl2P/5ZrFN?=
 =?us-ascii?Q?VSx2WPgnvj1hcMyZhdgCmB/69x2XzwVgpZc+EZKdt1xXj9NXbA80gTLZbF7h?=
 =?us-ascii?Q?TE5qZFwQY1PvlyCQLWLBkuLiNxIGi/8OtZKsuTR7l2ESN8aj5dgTnPQ9JQ24?=
 =?us-ascii?Q?MXl0+C5HOjS/ShXDX0wu9jzNMYd+MfcOsoiaCef5O7GYGenORm/CCOILRvwq?=
 =?us-ascii?Q?FkFnXzz2lSC9KhDd3EhMT8bz3DvwHLvh3P3GmDxe8l27NffxuUPvxNSLCTxB?=
 =?us-ascii?Q?EligUz1VndFS1oCexXwNRQwrHNz5u9qoH1XTx526txF/ajPsasRu04zt9jFN?=
 =?us-ascii?Q?F/uX2Xl2Eg4ifaDtnStpULkAid8N3uStdamFtEa6?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5889.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 11eb0615-8019-44ae-28ac-08dd355ba5dd
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2025 11:56:29.7079 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qoXrLSG9eJGL4SQjzXrPUW8/vOzdKxu6sQyWQmPvrJiqgcfWsGzzVYWmJx8sGcZrdXvRkBefoyWJcBTO4ZtRQA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5128
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736942250; x=1768478250;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BOFHsPvlXDnRMWK8EOMDmvGkaZ/XJmDOemOOfY0IYxg=;
 b=gAIJc4wrbvQs7LyPl126MD6cOvs9xw3QqlfN86QPrkDyL/D9ICAhYirX
 G81pvCfxqObSavtkxfRVYU5u9VDO8DovvWUo0j66nqQREMwplVB6ZRqM4
 doq4mMz86pdwniPIUWcVJin2UT4O3e1+HXRUv17wQ+oZBCoR4kJY3/0IW
 aDcDBdZRecFWm4pwfY9dc17HzqE98vpRx+Lo00Fy4dh931AaSgSNExTtz
 VQ76q41gU526EwzbFW/DxV0F8MiVvS4Jjw5vi0Tc4Ni3sBztp75Obva3p
 HB3WiEZNeK3tp+kUY9LinRvtbwdHu7mBF+ROxcfPyjl377vvQu/Tcyv0x
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gAIJc4wr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 iwl-next 08/10] idpf: add Tx
 timestamp flows
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

On 01/14/2025 5:27PM Simon Horman wrote:

> > Add functions to request Tx timestamp for the PTP packets, read the Tx
> > timestamp when the completion tag for that packet is being received,
> > extend the Tx timestamp value and set the supported timestamping modes.
> >=20
> > Tx timestamp is requested for the PTP packets by setting a TSYN bit and
> > index value in the Tx context descriptor. The driver assumption is that
> > the Tx timestamp value is ready to be read when the completion tag is
> > received. Then the driver schedules delayed work and the Tx timestamp
> > value read is requested through virtchnl message. At the end, the Tx
> > timestamp value is extended to 64-bit and provided back to the skb.
> >=20
> > Co-developed-by: Josh Hay <joshua.a.hay@intel.com>
> > Signed-off-by: Josh Hay <joshua.a.hay@intel.com>
> > Signed-off-by: Milena Olech <milena.olech@intel.com>
>=20
> ...
>=20
> > diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.c b/drivers/net/e=
thernet/intel/idpf/idpf_ptp.c
>=20
> ...
>=20
> > +/**
> > + * idpf_ptp_request_ts - Request an available Tx timestamp index
> > + * @tx_q: Transmit queue on which the Tx timestamp is requested
> > + * @skb: The SKB to associate with this timestamp request
> > + * @idx: Index of the Tx timestamp latch
> > + *
> > + * Request tx timestamp index negotiated during PTP init that will be =
set into
> > + * Tx descriptor.
> > + *
> > + * Return: 0 and the index that can be provided to Tx descriptor on su=
ccess,
> > + * -errno otherwise.
> > + */
> > +int idpf_ptp_request_ts(struct idpf_tx_queue *tx_q, struct sk_buff *sk=
b,
> > +			u32 *idx)
> > +{
> > +	struct idpf_ptp_tx_tstamp *ptp_tx_tstamp;
> > +	struct list_head *head;
> > +
> > +	/* Get the index from the free latches list */
> > +	spin_lock_bh(&tx_q->cached_tstamp_caps->lock_free);
> > +
> > +	head =3D &tx_q->cached_tstamp_caps->latches_free;
> > +	if (list_empty(head)) {
> > +		spin_unlock_bh(&tx_q->cached_tstamp_caps->lock_in_use);
>=20
> Hi Milena and Josh,
>=20
> Should the line above be:
>=20
> 		spin_unlock_bh(&tx_q->cached_tstamp_caps->lock_free);
>=20
> Flagged by Smatch.
>=20

Hello Simon,

Yes, definitely - it's a mistake.
I'll change in the next version.

Thanks!
Milena

> > +		return -ENOBUFS;
> > +	}
> > +
> > +	ptp_tx_tstamp =3D list_first_entry(head, struct idpf_ptp_tx_tstamp,
> > +					 list_member);
> > +	list_del(&ptp_tx_tstamp->list_member);
> > +	spin_unlock_bh(&tx_q->cached_tstamp_caps->lock_free);
> > +
> > +	ptp_tx_tstamp->skb =3D skb_get(skb);
> > +	skb_shinfo(skb)->tx_flags |=3D SKBTX_IN_PROGRESS;
> > +
> > +	/* Move the element to the used latches list */
> > +	spin_lock_bh(&tx_q->cached_tstamp_caps->lock_in_use);
> > +	list_add(&ptp_tx_tstamp->list_member,
> > +		 &tx_q->cached_tstamp_caps->latches_in_use);
> > +	spin_unlock_bh(&tx_q->cached_tstamp_caps->lock_in_use);
> > +
> > +	*idx =3D ptp_tx_tstamp->idx;
> > +
> > +	return 0;
> > +}
