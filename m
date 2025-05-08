Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B9813AB0131
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 May 2025 19:18:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6E7C6412EE;
	Thu,  8 May 2025 17:18:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id brdlXKP7Kc4j; Thu,  8 May 2025 17:18:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D5C4E412F0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746724684;
	bh=6tnOmxTm5Uaitul141svR/GEMAv+Ttppdj+bkM2O/2w=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3SGZ6nrQRw+82zj+6aS3xGWqSk9xFlORzx1rCfeNnOG8SOYFzF8DCa89ttOdIvzGS
	 LKtEW/l0xzbBEtXlwWJiAefd45l+th1JXiOL75K7eLxX0fJjIWX2FFQrxtESGfs4Yd
	 KN2nWQohseCqi7Zhih8JhVllWhohY1l0QaFD+znF1l9b0ez589bVbrJEDtauyMJuYl
	 oztEnO50hNeL4BF/kMzXHRpOPzznSqNN6iBwk9XA0UH8df5C/SYf6P/ZWSmIKypAH3
	 FVdT7/BekEQRy0+TlZ8UggoMUraGzXU5Y2/LWNtk6R7jTYRtvkKUkEafiYH5IfwIJx
	 dvlm02GjTC+2g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D5C4E412F0;
	Thu,  8 May 2025 17:18:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 46D791A9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 17:18:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2A8BD40139
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 17:18:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yk55sadeCGBn for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 May 2025 17:18:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3031540585
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3031540585
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3031540585
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 17:18:01 +0000 (UTC)
X-CSE-ConnectionGUID: 0fC9+KPrSjuFJHACDkzXKQ==
X-CSE-MsgGUID: HZoHTYgARAihc4bxIjeBGQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="48637855"
X-IronPort-AV: E=Sophos;i="6.15,272,1739865600"; d="scan'208";a="48637855"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 10:18:01 -0700
X-CSE-ConnectionGUID: XBxJ3+FLSD+uLqOrPhbMDA==
X-CSE-MsgGUID: kr8mEJNjRni42h4LDutr+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,272,1739865600"; d="scan'208";a="137360718"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 10:18:01 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 8 May 2025 10:18:00 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 8 May 2025 10:18:00 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 8 May 2025 10:17:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UCo/x6RBWOvohtr/J776jWvT9vg7+vSZ+41Jsz9DU9njN+x5U4zzYtC+R8yfVIKhZVgQYALcd+XxCcnPwnSjKFnuWIRGJ1a5sqXskBTBNZLscQD2bmUid36DVKvA+4IU5quF3tjii+fyJBhYNGMl8MPkfWfzaQmFqQg3Ni3umth7P1vJRjrge0YRQQlVy8mMDcqrMFZzzaZhVZ2rCNilmhz9sUVs2mprJeutamp1GDk2p/moZzkVJ4I1fD/YrJJxrpdZVgd8kCdbOjeuSCoFrnULtqEA+rp1eMTi8Py0QNbp+hTIeqdaavUoVnoWd1dw7zGZUW4gt4Hnqo+QvHWfFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6tnOmxTm5Uaitul141svR/GEMAv+Ttppdj+bkM2O/2w=;
 b=SCVuxqK59JdlYbHcK0Skk+SzYWTgEbC8OUA+zD/Cb6KDKM79EhzQYxJG6bjyJ7Gtq3elqeItLDqiin2Jm/67jp406NvcEffZjfcFJZWjObsZCxooAMZaorUf9CymBHR61a6guhkcpL/Z7ATKpJ1kwyTnwVLGu/JJmlO1G8t5XTrcfgoBTJ908gtPGb8XzsGTyLOjwmxLZiG8S62GdP7GjqpVLtQnUzBXGweZsvu8m6ECj7ItMEMA0A18zEicB6e3TBUjZpDIbAseDYknHLnNSNA6v/blWOuNtlpxXxHkLDgMOkhBp2i83es08BkPO01hz4icuDaC3C8cAhy+YkUinA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by CH3PR11MB8383.namprd11.prod.outlook.com (2603:10b6:610:171::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.26; Thu, 8 May
 2025 17:17:16 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b%3]) with mapi id 15.20.8699.019; Thu, 8 May 2025
 17:17:16 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Nadezhdin, Anton" <anton.nadezhdin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Nadezhdin, Anton" <anton.nadezhdin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice/ptp: Fix reporting of
 crosstimestamp
Thread-Index: AQHbwBZ8X8CifH3v2E2IyWk1FZFOn7PI+dYg
Date: Thu, 8 May 2025 17:17:16 +0000
Message-ID: <SJ0PR11MB5866C2463AC188376DFE0EC8E58BA@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20250508125252.3997364-1-anton.nadezhdin@intel.com>
In-Reply-To: <20250508125252.3997364-1-anton.nadezhdin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|CH3PR11MB8383:EE_
x-ms-office365-filtering-correlation-id: 4bdc4b1e-43ab-4ea5-1fe1-08dd8e542e77
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?x2MLbpXOEXtnnPFW+3szxdeSlxcPD/S9CRJXlfhUkYCAamVnXzHBmddBRS7a?=
 =?us-ascii?Q?I9ctSIJH2D7TJegEK8q0JH1HHgiw3bTs6dTn1VaKUdeXN0Fii1P2jY9LZKCp?=
 =?us-ascii?Q?RTIU8HpjO5/+fqEgiMNuoFuV9qniD9bfMXkq3RwfYnDYeP0crhHYTHJGcLVz?=
 =?us-ascii?Q?vS1iWgHaLp7xorCXl7JlWUKIeSaicQF7eWASuc0i8JUc2c6e4ms2nxtfz1FM?=
 =?us-ascii?Q?6ge5Hdy44kvHKcYC6APID29mJA23+P6Rgol1JffUqRoAcOzJ9IGDY5gk88wN?=
 =?us-ascii?Q?PMAGVtrkVIwgNz9nRvB5/u0txzkRLq4cGxDlVw1toY3jaGAIq9xNc9vJVthA?=
 =?us-ascii?Q?iyqyILDxQdRFQRJ5c1OqcMd3qwMUBSj1VVptkI8EcBIQ5gNd+Usr/4CNbgAc?=
 =?us-ascii?Q?TPTJ8/OlJ2KWv4JZ14QzaAhztSFDgnEQ8MblMNi7YEnh5lCP2V3JF6A5cMx0?=
 =?us-ascii?Q?Vn2Q9BNT9at5emJrfz9OAQ7eyc0oZJmEq1ftYVMqW46UNNlX+kgm50ZKDqxH?=
 =?us-ascii?Q?KmYPH8SKhHGTqdovLXGljzJcZ4S7qZu9wXO7nKQeelZvo5B2rJUNAwXoSwWa?=
 =?us-ascii?Q?95IefwsET3mUNpsij9n3xJKpfe1WvqLLianSHoJN2zyPtS1cibU+MKPfPS+j?=
 =?us-ascii?Q?tn2d9BW2zbtuY54WZdu2/vHNx9jv9kBniPVisVrvBUhcnGiZvfmiS4h61hBS?=
 =?us-ascii?Q?DucAb5psAOJbmK4m1ooKmfyk/TCif2dS9WH/znrpx4+LFEUJL3UuersWlkTM?=
 =?us-ascii?Q?CnXsiYz9awyqsEM+97g+PBrtZCsamfHctGu58v7blJsSCt8QAhO+zNNT/ykn?=
 =?us-ascii?Q?Bc41d66DhDFySwJ1JpSQUgLwNxAG+Yphqo7hMeMmaMlJGeIP1UBzbA1Z48+O?=
 =?us-ascii?Q?OO60e1ex4j4I3B99maFws1l0WV4MKSyN1He3SZTMkIQcfQQDA1OskGqtHUjE?=
 =?us-ascii?Q?Gj5qOD9s+FgqVn0N8wZC8Y+2CUowGHGtVUCerwvXlEqgKB78rl0Akh+23nd0?=
 =?us-ascii?Q?1gwQKVUpSwb1XXBNUDhhDlmvobRRNDF0sRa2cMG73wA19ne3srAVjBIboZCK?=
 =?us-ascii?Q?QRPq4xjs2ss4eRmIzMIcFRSLjed2VrorTUKZ0E3+qyahqPkHqFOPzgwF7KzO?=
 =?us-ascii?Q?J1wSh5Co2vGaHoIaftviNd4TVWuhcLTrLfZmAw98lSzgZGq7uA1kTp/VS0wW?=
 =?us-ascii?Q?qsx95DLHqNldQY871sOBwrkI6QBqfpof5vx5d7/gTfgOyGnsFdwjmyHlLYOh?=
 =?us-ascii?Q?4zB/v6kuulNlgBNWihFWy/Zd6lcZOXrqkvHszCyw0mIadBMBVZ7fxbnloWnp?=
 =?us-ascii?Q?srzDRZ2c6EtKrz03JPJaATmG/KsuiEP0I9BFm3GGNskXO7kD31RLDtQoVJrc?=
 =?us-ascii?Q?pb0jh12GHj0JGDvfE3o0qnN1L3S+wemAAgmDhhBw6qe1iNO7rsR9xB8x9HPj?=
 =?us-ascii?Q?3lB8KaWMfCs1rF1Wn9MkmPDE4YBYsmeaOAjyv05QsQPQniN8Nh+9Tmi1lawL?=
 =?us-ascii?Q?Z1jkmMYZQ34Hfok=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?PjFJXVko6N5Spvw+jHDO3Rzb8U9yRDqYd19cO2DfBgXHhH3RXaINSUk7XjBE?=
 =?us-ascii?Q?zTfup5Awbz9HHDAuYcKQkYT9WRFJgCdkl2Kg2/+/u8jBiQ6pVArciWUF94W1?=
 =?us-ascii?Q?OuwbQaM4emdc1JyJkRBbnI9VtCPP596OZlQPGW5oJQ5CjmHME+WkT2ltiuds?=
 =?us-ascii?Q?ctCovoawZmdk9Q3MMIsRUJhdc6YBZ1DdX1PP2LEamqLkis4idABqPfzzolZ6?=
 =?us-ascii?Q?rqCp2Sk+CDbvCF901hM8b8FxJ48XtG7mCyvyNk7gBEHJUHEtUR0nUjXKPHVn?=
 =?us-ascii?Q?vjYhV8j/cH/g9hHVTmAulJfj496PClu+ALyerLX1DF/Ekd+cwbmR2tvRvBUJ?=
 =?us-ascii?Q?QcaYHV9bn1dawp93Ggbnjt4NXFZB/WahK/AcDkCoAzjuWsP+7CKICdGLVBBg?=
 =?us-ascii?Q?og/k6tQZrQbCIVj3OuGTdUTOePHBhofadj+D68ZoW6ZcJA/rpCeMLOZ3qr05?=
 =?us-ascii?Q?o+fc+IgW1xeme4F9ZD+MFUlLOdy+1v6OhD9zSVRdXpDdZSTsnP7VKqVOSnl4?=
 =?us-ascii?Q?3ZITyQd/L3KCs9DA0UA3ALINV64kqcHWMDWMZnsLJs9Mt/UpzHeH0BVd48SL?=
 =?us-ascii?Q?9Mcq2vegx9rzXb3ed+0U3kfp9JjqOE6GU6IjXGU6H35ZrvWwBBWswi9/igcJ?=
 =?us-ascii?Q?OWxiOqNeiDZV4NwyxYIp8VVkirPfyt+6EHIZjBS9OSPhmvXVDPQKxrySEA2t?=
 =?us-ascii?Q?T8VOPxhqmROqN9JCP9TmqAtBsQvpSZ14UQfWoeYVX0dswFMk0CKueu3Eeu2P?=
 =?us-ascii?Q?33HhHulrSMhpTTTm4rMvtyyFyEaJYgy+LSwHdCvi9Zcdc4w/oPhOYCrmZAFy?=
 =?us-ascii?Q?qjELMaS7hJUKJm1pfuF/pGx+p7nVRML567PXCa41/5DeVMMOoBGe6LajS+7z?=
 =?us-ascii?Q?/BrG6RMSoVKAJWi9HnpblcHXlFVJmm71N53Fx3Pm+d8WAao6rBqlzUGr7ja7?=
 =?us-ascii?Q?YfkbtNPoa9h2C2+ptsg1863zpMJiFfRhkK9OhycURHGvjcbWInp2osemtefg?=
 =?us-ascii?Q?dxzIHq2BGwJeVQrTkH8J9LkgS6PYtMf3GUu/tnW42NmIMHUsg1n/0pd5JzUf?=
 =?us-ascii?Q?e/yj/0C+f7ZVoMzqYom2QZKa09YDKBD50KP4SVFFunnSQoEbsVycNp1GyXjM?=
 =?us-ascii?Q?Tu9Fd5fSPctQ+MjRJ8rQAVVTMoofzY8OwDjWLOflMvviSILTdwkhf/V9ZZZT?=
 =?us-ascii?Q?ymfPq9gceGX+b8OYUlPoRUmS4ZNbZdceH/BKCHpIaOMYXGTlTNw2JcKfQmYG?=
 =?us-ascii?Q?fdWW+4ywxxN0fjmEz7mM42Lga4yw+jKSKjVA8u+fLiiETYFyq41/ruQj9Qlv?=
 =?us-ascii?Q?dEDO2Ft4oode8myF/4TMVZJb6kGlgLdjjchaPGe7W5q4acXq6sXuZtvXSS2i?=
 =?us-ascii?Q?kP7uvx4L4+Ito0xVACWN+yp3TQ5ZEPqamF3cA8GFn6BHncxcG4iEKWbrPgrH?=
 =?us-ascii?Q?fkjWKAvyXYrSFcPDl34eq2TyAfA09q2tNPBZ6ZZK7CGwKHpvzMEEJOhrfzp3?=
 =?us-ascii?Q?lFGWaMqfKDyzs4fbEuXEnFrtKokkSgUmHI92SzRYml8YZIF1ZtlfeJE5r3Wf?=
 =?us-ascii?Q?NfxdqZrerIUpG3V7MlqpJ3qyqc0TSqlpFBPDukYxZBA17gLQEs0+QobIrmoh?=
 =?us-ascii?Q?ZQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4bdc4b1e-43ab-4ea5-1fe1-08dd8e542e77
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2025 17:17:16.3967 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0OKLaCad/2AnJEPOE4iHF69Tr8z8nKNAs2wMcR/yhfPS6UetYaBxIKmdm8eBBsEAz9Bl1SxjXiO4hkXu6WoZLYZcWxTr7gAtaoQIpx39tNM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8383
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746724682; x=1778260682;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Q75BXC0JQDPfj+/OL7yY47zbTapeRBDOY3+hdOXh4gw=;
 b=dAnrdqoWB3ovLjfP09Gtik98LVuUUoIU9pb/iTcCy8Nv2PH4auxtH/7G
 +JIoUgZflK869S/3x10u4NUCwkXHmUSVqjqAbJrOVyOr/tTb4yTcuEG7n
 G5ytUB8q9nCtBqxKdBgGY0WYdBZOwYleeUPvHWUu34bGolcJfEJbMcdHD
 Z+jbey9hGZ2iTwX3OhYaWXe0J2K0mIyPYdvJqIGfqO99fg/gzXYWe/d4A
 mOI5LAIJgVbo3AaBT3FAdzg4hNQ57vmjxjl5kExJiXlhSPy+nCIOvNebX
 PuT9PsBg31lB6feTE6if5LuYJ6s6zAM05zQEIhtCPq3H7rrxOoOmfslfB
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dAnrdqoW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice/ptp: Fix reporting of
 crosstimestamp
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
> Anton Nadezhdin
> Sent: Thursday, May 8, 2025 2:53 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nadezhdin, Anton <anton.nadezhdin@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net] ice/ptp: Fix reporting of
> crosstimestamp
>=20
> Set use_nsecs=3Dtrue as timestamp is reported in ns. Lack of this result =
in smaller
> timestamp error window which case error during phc2sys execution on some
> platforms:
> phc2sys[1768.256]: ioctl PTP_SYS_OFFSET_PRECISE: Invalid argument
>=20
> Previously function convert_art_to_tsc was converting ts to the cycles in=
stead
> of ns.
>=20
> Testing hints (ethX is PF netdev):
> phc2sys -s ethX -c CLOCK_REALTIME  -O 37 -m
>=20
> Fixes: d4bea547ebb57 (ice/ptp: Remove convert_art_to_tsc())
> Signed-off-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c
> b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index 1fd1ae03eb90..11ed48a62b53 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -2307,6 +2307,7 @@ static int ice_capture_crosststamp(ktime_t
> *device,
>  	ts =3D ((u64)ts_hi << 32) | ts_lo;
>  	system->cycles =3D ts;
>  	system->cs_id =3D CSID_X86_ART;
> +	system->use_nsecs =3D true;
>=20
>  	/* Read Device source clock time */
>  	ts_lo =3D rd32(hw, cfg->dev_time_l[tmr_idx]);
>=20
> base-commit: 7e5af365e38059ed585917623c1ba3a6c04a8c10
> --
> 2.34.1

