Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AA02CA97346
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Apr 2025 19:03:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 44D3340C09;
	Tue, 22 Apr 2025 17:03:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jtFvli4GqQEP; Tue, 22 Apr 2025 17:03:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5CB2140C0F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745341405;
	bh=OexSN05te0CUVU2iPyR6GLq5LTsS442VVb6xGCgLR2I=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7sb/cocXnjFav44mn60/NcujY8Dn3kWtafvU+SBbNuojkIegyq6br58Osr6+/Akkj
	 n+EkY3Na1F5NMK8FVf6DDx1FaaP7EzFyC+s2aqwlQbde+R0ABusKPl50Pc1LhUBzzu
	 powkktn/8Uz9qGaIUNSAtq3edtdsgRMA3kXyz6ufE8H064InRP2sQVjSytcSt+YrCI
	 l8l2EzxdeEyRxIfWWVV6WYLgq23ak5utRRNxXzWA14AYzNqCpXZx2kZF0MNAeJ34RH
	 YKWxpiE9QoMZ9x70KxDypaciEQbR79N5LShDtafW0PgUb+jGTrE1srSzu1o2asOdRI
	 pmBWIr++QvR6A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5CB2140C0F;
	Tue, 22 Apr 2025 17:03:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id C8B441BC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Apr 2025 17:03:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B97D540C09
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Apr 2025 17:03:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6g3f98gDknJW for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Apr 2025 17:03:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org ED64A4086B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ED64A4086B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ED64A4086B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Apr 2025 17:03:22 +0000 (UTC)
X-CSE-ConnectionGUID: wLCYsPXVQE+TBFDkb5zYng==
X-CSE-MsgGUID: ISJFpwKsRna7MXg9Yz2tsA==
X-IronPort-AV: E=McAfee;i="6700,10204,11411"; a="47039258"
X-IronPort-AV: E=Sophos;i="6.15,231,1739865600"; d="scan'208";a="47039258"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 10:03:19 -0700
X-CSE-ConnectionGUID: vvNi0YLJTWOPtn08UcKe2Q==
X-CSE-MsgGUID: OjsMaRuMTNu3D4WFLlc4bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,231,1739865600"; d="scan'208";a="137154513"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 10:03:19 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 22 Apr 2025 10:03:18 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 22 Apr 2025 10:03:18 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 22 Apr 2025 10:03:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vuyIQwE12qW1mNDs2wOxcQeJKLkiI9W8QJDUpSIIM2tzgj1bsiCVPHOLmPzvUlm+lyVRh6Ie8y/mVFAcCbKN8aOwmYtdZah5cbpHF17e+yA+ciPXkDtxTyeDI/6RmwvqIh0jD2JcW5hvDW7oUNgdYx0rc7F0oBEGrCes4bG3/Lo9zFBtCBf0so2Ew3+wX0WBDhn3cTklwfIAZSLV2yWcd+x+ehoG6lEhnIOhjNktKmbPVlkkq0pOsG3EFpDZiz4ogzj5/IoVYjpk83UnqBSxHrIojn9iYNtdcfUYvWh3HQHaqPOCN07m7Py1SBeH9NnIkwu15ksthMnGHluGp9Qiug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OexSN05te0CUVU2iPyR6GLq5LTsS442VVb6xGCgLR2I=;
 b=v02YGfkbRQgOsTp+JL3kX48EiHWWbody9b3Kv8WvzbkSlFzrlacUaEo9OdXxtBW+pHA+z6+liZhU9FxS18QJ8pHbLYYC6r2L4OQYfdDRYC2PO2Yf7eG2Ooj0DmExzLa/hTSXYzSkqNPcI2D9y5ixiyy0ep7h+w0gY+yVmjHVM+Px2rQViKvKotid3QpYXioImZ1yjDO9CR49ouZsjPy2F+xmexeD8f1fuTRBUSLT56YLuNRKPDj721/DyrmGaP/jIVbfKHQMqBMiUhBwPaAjHKK4WE/oQsEjCQOTyRvvKuPNW1ECO+o5ayV1P9GuDdHznBY3Cl3/JMyVZGdkzDCi4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by PH7PR11MB7499.namprd11.prod.outlook.com (2603:10b6:510:278::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.34; Tue, 22 Apr
 2025 17:02:45 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b%3]) with mapi id 15.20.8655.033; Tue, 22 Apr 2025
 17:02:45 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Kubiak, Michal" <michal.kubiak@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "dawid.osuchowski@linux.intel.com"
 <dawid.osuchowski@linux.intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Kubiak, Michal" <michal.kubiak@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 1/3] ice: fix Tx scheduler
 error handling in XDP callback
Thread-Index: AQHbs5yL4SGxMKu6ykqX8GFqTi8DZbOv6WrA
Date: Tue, 22 Apr 2025 17:02:45 +0000
Message-ID: <SJ0PR11MB58666BDBAB168D94E0EEE64BE5BB2@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20250422153659.284868-1-michal.kubiak@intel.com>
 <20250422153659.284868-2-michal.kubiak@intel.com>
In-Reply-To: <20250422153659.284868-2-michal.kubiak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|PH7PR11MB7499:EE_
x-ms-office365-filtering-correlation-id: dfe98c21-8f53-46d6-f5d5-08dd81bf80cf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?FF8fO6ruOECeD3uEFq6T67Xf64IzAxQP4Uc4CTs/3fbzXlfM+rTHV4JsWYfR?=
 =?us-ascii?Q?FpR2Nv7Sa87J4ISeaB2SVAMN9flwEi6i37nAZQAOVTc4jaip0IJ76Bavfzxf?=
 =?us-ascii?Q?yFDsfhSZKvknWOG8Al2tRFF0sk0RdvtpgViKHmO96YyPjYUx6/SQtTa+Hy++?=
 =?us-ascii?Q?QfuA4s6e1lwXiYx2GhmmrAWfG8bg7IhV+8Rd8VvDlD+Kyh2U04C5vwDDJEU8?=
 =?us-ascii?Q?22XLU28CLtHkekzGtyHS4GbrPBKs0lZVN0b9kPbJPDmTurXSSW9JN2yWV6d2?=
 =?us-ascii?Q?TB547j1x+bqEeCZUYigNu5ZKjPHCZSfVS1DBwuXRqVBfGerz3GFTHXM5YGG6?=
 =?us-ascii?Q?iTIolYh0s3TKvOZ3GDnu/VU1vWziqTZpqNjjhQJm7i1mOb1/2LopBNCOcgoS?=
 =?us-ascii?Q?CBj+b05Z3UCgkc3IBCJW3iufeIdBKm3euoOLUaFskMGzuerlXZcxYyOw0GRc?=
 =?us-ascii?Q?OUWzvGHYwOFWHdidT5VQGwxmwJfQhNUNXfd3sJGE/52HkcihsVtVlJH2q47U?=
 =?us-ascii?Q?h/DSX4bzfdL1jO7xPTnmUTipe/ztm91QudIJiyCoWVdcJ/kblQnsfniUAKSP?=
 =?us-ascii?Q?Z7tSC92QdrUD/CISg7AYbSecA3xsyDZrJD6Ouaz84EKsOIDpomoC/yutKtN0?=
 =?us-ascii?Q?fTCEOfaCLR/kRsHIdOxZKWypi6lABMAGQOc0JiqJFUsqz8lQRz/SY9NmBI/Q?=
 =?us-ascii?Q?IZFTzM41h5L+ZzdyHLjn/GRKb9c79z8ooi6w/DHkSf7pWa0CRaLMXgcXCa1z?=
 =?us-ascii?Q?yjdkWnODZrBtSiGQtp/qS2D6wz0y9TYSwg+egA+6IeggRT0aPYUnc7/HKMZ1?=
 =?us-ascii?Q?1XyyXhj0MQuFqp7fAhr1mLmnfJTBij+zN6AWoJ9nnNv13kN10LYGV9M5rpdf?=
 =?us-ascii?Q?TyuNM1vDK9dAgKuGT2bNNTXRe6+uyT8HvO+SvhnP/wz9tv8UQCgoq2rg2rcG?=
 =?us-ascii?Q?NH9DH1Hquu8XXWk+Dd6rf0J5ETk0rQpfZ53B+ACWFdwRWYTZhJNKt6YEeqwf?=
 =?us-ascii?Q?S76PhTTW9Ou8G2/K1GiSQUjE5c/OSizIdGb9hW5W8pO/FLkvaT4JYf2u9rCR?=
 =?us-ascii?Q?e0O7uq3Tcfzp8v+pMG97f9vrpYEO+NUjcAqnTqEAyS1+mw/z2rEFz1kwspGX?=
 =?us-ascii?Q?vehA/XmtvMRgWF605szyY2HiBUbEFoMe422nPxsvnBj6G/nBbKJ8eUKkeGa8?=
 =?us-ascii?Q?fNnFES8W90gCqLlFTCBzeXU9nhC1MXmz0a6B61Jn91Avb/aGrP9oBbeGaI9m?=
 =?us-ascii?Q?V1z/LHP5tgdPj9dvf2NxqDTDxJnz8cUHvo8y1EzV621ewReCo5RRbjT7FWk3?=
 =?us-ascii?Q?S7KPofjq4wiuI18qM71aJ86+iSrVDuNrOsCY5jJOEDfkuQz63MP6jYp9+yer?=
 =?us-ascii?Q?qxJLz+Ox6FLKtmODbkWSJlLGttXXBjBV8j5jyEFfsg88hsPt+CXly7JALdZY?=
 =?us-ascii?Q?byeJEz5GyeOMEOyhBK62LCLq3Rq4l1WEkv2VxdooDHqldHUbwrKE/g=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?H/XsWal7ofPFLU1MQ0gkR3dlVd48wD6fsXmQ1jTLeGWFKJt7Q9fDVv1CVcHt?=
 =?us-ascii?Q?lJ9F9pAtebbwwlS6mZjxg8WxAXnz96HzexH3TDbNHGPKKh1T9/onqigrlvFu?=
 =?us-ascii?Q?A1X5AfxrHptD1hTPZEIcsWJIizugORhMpa7k1U6ZbIrNisgT4E61iKdp+9Bp?=
 =?us-ascii?Q?iSUzjqHvku/MT0IRQO+c6w+21n7N44DecVGX6qWkyFFA0RUlMgjvPsAuZqDR?=
 =?us-ascii?Q?bXWGkP2p0JZa1RnEJQ1eYuyIiweJivTVvnOn95WEKIsEAYodzr1J1UFFu5Zp?=
 =?us-ascii?Q?mRjg2AcGhSCshpTXJmsqrlG3fZPUqAVkVx7ZXyGh8dV/PQo+YOoNIIbNMZf2?=
 =?us-ascii?Q?wZF2nMvLDeXT9Eefa/5AMEmlsITj4VYxIa1uSoacOZhBx+MY2N/Jpnt8ec1f?=
 =?us-ascii?Q?H7N/T9LqHWMp0L94lwwtTMCa2nFPHRXfWdCof9+c6TC2aSysmXRXVRqraKV7?=
 =?us-ascii?Q?2btxtL93Yj/WjOzuu/fX1+lQ+mQMxhKZUrEpLUinGfyv6An3An8vQQj7qbtL?=
 =?us-ascii?Q?GiMeyHTsd6x5U2EJNkXjjvqpDZ1s45Z1hcsQVNgEWKSBU77WypTygw5jkxxs?=
 =?us-ascii?Q?OsJthNuCdjvsotlGOhr1SyhCKwe1Xc+Jnp5fw1NbxK3VKdqzKYSX2u4vKCMv?=
 =?us-ascii?Q?hQzKFC+Y5a3xZh+uL4AVJPADQK9vxNBv+unmmgI0R7JuL6nzXFDQLwxrqDCn?=
 =?us-ascii?Q?UTMVIsXiY+QHZT/Ywy0MZXYK7gbDrPZtx0Pom9RhZWMyoknEu5PTRacQ4dMr?=
 =?us-ascii?Q?qC78+JERFMkbX+Jdb2+nOc8ze1pGUbI3JFw8X2HJyZd8hddkXIYPLhB0e8Ls?=
 =?us-ascii?Q?FCxQt6ExEKEais/eNR+axdsF/gAQQQG9dqZciuz8t2O/X4wiozxjjp4UTywI?=
 =?us-ascii?Q?VZ7o6ETRq0ueTGZQ0nDEfIXVTFoQCyXTCY439HcTFHvgCcBdlXXXilizZ2pQ?=
 =?us-ascii?Q?bCnbqPBzpcu5WqK3+/JtYStXMCHfpUfuOX23QYebVyRJ0pKU8m39gcETO0lV?=
 =?us-ascii?Q?n99mnUVQai7LrxrhdQH1XkkGHtbxYtWg3/LcnZ34JZyv4Y6LbRYE4fr5R0SX?=
 =?us-ascii?Q?pDpS1TR43iGpocXDejTjPHy2goTMjzb1sKVzAjYCsegyRVFiZ9qUiajK4+6M?=
 =?us-ascii?Q?GgQyYjfZEAhmvKpT6r0JnV2K/L7RCAlp7tfNpv9/fjDr2xoYZfTwWWPOTHld?=
 =?us-ascii?Q?kKbhqfxOQq8MiQSkmQaszj/N9NXGSBti0UIw74tBqCSt9YsHcaC4kPcyulhf?=
 =?us-ascii?Q?4lZs2TAHZ6s5U0HrJm7h09ZbFg0AwuIH6vYFL8foTlAR1pLXBnlRQvTwC6IV?=
 =?us-ascii?Q?0EeM8AD9H7NqdrvM8VSpKz+bZmyBpmH6XFmJMmSNzwXXHNoyMQvj37/O192E?=
 =?us-ascii?Q?ri463KgOrZnYZbLGwv/xEzccj4OU3SUNx9wk0WEfxHkzIl2hYnTPRSdskJ2Z?=
 =?us-ascii?Q?o+3LUr7O7TAE0P2NIPZ5G5chB9iYwqKtlVLBArbaChNIhjEG2OcmXNj5g+Tb?=
 =?us-ascii?Q?pyBgYldzPYZMZj32kWyZZ974YlzNJamhgAxR3vHl6Aou8RRiQ8CPNgYwmvi1?=
 =?us-ascii?Q?Feg1cjU6LTJh352cUkt/niG7Yebd75RyyOIY4UJTHn+cPACYsKDbUCvF3IcN?=
 =?us-ascii?Q?3w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dfe98c21-8f53-46d6-f5d5-08dd81bf80cf
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2025 17:02:45.5799 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3FJu6G/B/9xKT23Qs/KVl6osHGwWBsCECEtS0a4bXrI4uthC24pEezg9G5dzVnCJZcz8+anHYy1eLC47S/RO6TVKMj33+Q4CW7XijlX5Qa0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7499
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745341403; x=1776877403;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=y5wvj9Nyp7cHTvXhrmcsrXcGhgH1XEOFXqxTlMV6W98=;
 b=LVTixw1AfaVFRr8j448ZEgfZYI1Qda1X+WK6fj96yOIpGfEs/iquq53V
 kqU9LTbocqw49YKCtTIhBhOVUyOue6hRvp1cjMHLhIIMEfhzLOrCbZ9I5
 YWMYWUeL5A70OsfN3Sf/+ofltgk7uoD5nhWQ1Ze18vLd4UdokjhNNjkx1
 MZONFoUEYTEak94mZvztvEjeNeR124l7Z4iET32dQ9nJ03ZbIy7FVlhEA
 gID6UaWRdQeSudCINYmr10XupzEtW5ZWDcRoB4ZEi9tP5xzd+u190UZI9
 5W0ungiMjSaVbZ+x+t7dyyyId17eZefEsVo03LZPfx/rGwkin8KS0hU71
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LVTixw1A
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/3] ice: fix Tx scheduler
 error handling in XDP callback
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
> Michal Kubiak
> Sent: Tuesday, April 22, 2025 5:37 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>; Lobakin, Aleksand=
er
> <aleksander.lobakin@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; dawid.osuchowski@linux.intel.com; Keller,
> Jacob E <jacob.e.keller@intel.com>; netdev@vger.kernel.org; Kubiak, Micha=
l
> <michal.kubiak@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net 1/3] ice: fix Tx scheduler erro=
r
> handling in XDP callback
>=20
> When the XDP program is loaded, the XDP callback adds new Tx queues.
> This means that the callback must update the Tx scheduler with the new
> queue number. In the event of a Tx scheduler failure, the XDP callback sh=
ould
> also fail and roll back any changes previously made for XDP preparation.
>=20
> The previous implementation had a bug that not all changes made by the XD=
P
> callback were rolled back. This caused the crash with the following call =
trace:
>=20
> [  +9.549584] ice 0000:ca:00.0: Failed VSI LAN queue config for XDP, erro=
r: -5 [
> +0.382335] Oops: general protection fault, probably for non-canonical
> address 0x50a2250a90495525: 0000 [#1] SMP NOPTI [  +0.010710] CPU:
> 103 UID: 0 PID: 0 Comm: swapper/103 Not tainted 6.14.0-net-next-mar-31+
> #14 PREEMPT(voluntary) [  +0.010175] Hardware name: Intel Corporation
> M50CYP2SBSTD/M50CYP2SBSTD, BIOS
> SE5C620.86B.01.01.0005.2202160810 02/16/2022 [  +0.010946] RIP:
> 0010:__ice_update_sample+0x39/0xe0 [ice]
>=20
> [...]
>=20
> [  +0.002715] Call Trace:
> [  +0.002452]  <IRQ>
> [  +0.002021]  ? __die_body.cold+0x19/0x29 [  +0.003922]  ?
> die_addr+0x3c/0x60 [  +0.003319]  ? exc_general_protection+0x17c/0x400
> [  +0.004707]  ? asm_exc_general_protection+0x26/0x30
> [  +0.004879]  ? __ice_update_sample+0x39/0xe0 [ice] [  +0.004835]
> ice_napi_poll+0x665/0x680 [ice] [  +0.004320]  __napi_poll+0x28/0x190 [
> +0.003500]  net_rx_action+0x198/0x360 [  +0.003752]  ?
> update_rq_clock+0x39/0x220 [  +0.004013]  handle_softirqs+0xf1/0x340 [
> +0.003840]  ? sched_clock_cpu+0xf/0x1f0 [  +0.003925]
> __irq_exit_rcu+0xc2/0xe0 [  +0.003665]  common_interrupt+0x85/0xa0 [
> +0.003839]  </IRQ> [  +0.002098]  <TASK> [  +0.002106]
> asm_common_interrupt+0x26/0x40 [  +0.004184] RIP:
> 0010:cpuidle_enter_state+0xd3/0x690
>=20
> Fix this by performing the missing unmapping of XDP queues from q_vectors
> and setting the XDP rings pointer back to NULL after all those queues are
> released.
> Also, add an immediate exit from the XDP callback in case of ring prepara=
tion
> failure.
>=20
> Fixes: efc2214b6047 ("ice: Add support for XDP")
> Reviewed-by: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

> Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 47 ++++++++++++++++-------
>  1 file changed, 33 insertions(+), 14 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> b/drivers/net/ethernet/intel/ice/ice_main.c
> index 8119913b5f69..34df104ac567 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -2740,6 +2740,27 @@ void ice_map_xdp_rings(struct ice_vsi *vsi)
>  	}
>  }
>=20
> +/**
> + * ice_unmap_xdp_rings - Unmap XDP rings from interrupt vectors
> + * @vsi: the VSI with XDP rings being unmapped  */ static void
> +ice_unmap_xdp_rings(struct ice_vsi *vsi) {
> +	int v_idx;
> +
> +	ice_for_each_q_vector(vsi, v_idx) {
> +		struct ice_q_vector *q_vector =3D vsi->q_vectors[v_idx];
> +		struct ice_tx_ring *ring;
> +
> +		ice_for_each_tx_ring(ring, q_vector->tx)
> +			if (!ring->tx_buf || !ice_ring_is_xdp(ring))
> +				break;
> +
> +		/* restore the value of last node prior to XDP setup */
> +		q_vector->tx.tx_ring =3D ring;
> +	}
> +}
> +
>  /**
>   * ice_prepare_xdp_rings - Allocate, configure and setup Tx rings for XD=
P
>   * @vsi: VSI to bring up Tx rings used by XDP @@ -2803,7 +2824,7 @@ int
> ice_prepare_xdp_rings(struct ice_vsi *vsi, struct bpf_prog *prog,
>  	if (status) {
>  		dev_err(dev, "Failed VSI LAN queue config for XDP, error:
> %d\n",
>  			status);
> -		goto clear_xdp_rings;
> +		goto unmap_xdp_rings;
>  	}
>=20
>  	/* assign the prog only when it's not already present on VSI; @@ -
> 2819,6 +2840,8 @@ int ice_prepare_xdp_rings(struct ice_vsi *vsi, struct
> bpf_prog *prog,
>  		ice_vsi_assign_bpf_prog(vsi, prog);
>=20
>  	return 0;
> +unmap_xdp_rings:
> +	ice_unmap_xdp_rings(vsi);
>  clear_xdp_rings:
>  	ice_for_each_xdp_txq(vsi, i)
>  		if (vsi->xdp_rings[i]) {
> @@ -2835,6 +2858,8 @@ int ice_prepare_xdp_rings(struct ice_vsi *vsi, stru=
ct
> bpf_prog *prog,
>  	mutex_unlock(&pf->avail_q_mutex);
>=20
>  	devm_kfree(dev, vsi->xdp_rings);
> +	vsi->xdp_rings =3D NULL;
> +
>  	return -ENOMEM;
>  }
>=20
> @@ -2850,7 +2875,7 @@ int ice_destroy_xdp_rings(struct ice_vsi *vsi, enum
> ice_xdp_cfg cfg_type)  {
>  	u16 max_txqs[ICE_MAX_TRAFFIC_CLASS] =3D { 0 };
>  	struct ice_pf *pf =3D vsi->back;
> -	int i, v_idx;
> +	int i;
>=20
>  	/* q_vectors are freed in reset path so there's no point in detaching
>  	 * rings
> @@ -2858,17 +2883,7 @@ int ice_destroy_xdp_rings(struct ice_vsi *vsi,
> enum ice_xdp_cfg cfg_type)
>  	if (cfg_type =3D=3D ICE_XDP_CFG_PART)
>  		goto free_qmap;
>=20
> -	ice_for_each_q_vector(vsi, v_idx) {
> -		struct ice_q_vector *q_vector =3D vsi->q_vectors[v_idx];
> -		struct ice_tx_ring *ring;
> -
> -		ice_for_each_tx_ring(ring, q_vector->tx)
> -			if (!ring->tx_buf || !ice_ring_is_xdp(ring))
> -				break;
> -
> -		/* restore the value of last node prior to XDP setup */
> -		q_vector->tx.tx_ring =3D ring;
> -	}
> +	ice_unmap_xdp_rings(vsi);
>=20
>  free_qmap:
>  	mutex_lock(&pf->avail_q_mutex);
> @@ -3013,11 +3028,14 @@ ice_xdp_setup_prog(struct ice_vsi *vsi, struct
> bpf_prog *prog,
>  		xdp_ring_err =3D ice_vsi_determine_xdp_res(vsi);
>  		if (xdp_ring_err) {
>  			NL_SET_ERR_MSG_MOD(extack, "Not enough Tx
> resources for XDP");
> +			goto resume_if;
>  		} else {
>  			xdp_ring_err =3D ice_prepare_xdp_rings(vsi, prog,
>=20
> ICE_XDP_CFG_FULL);
> -			if (xdp_ring_err)
> +			if (xdp_ring_err) {
>  				NL_SET_ERR_MSG_MOD(extack, "Setting up
> XDP Tx resources failed");
> +				goto resume_if;
> +			}
>  		}
>  		xdp_features_set_redirect_target(vsi->netdev, true);
>  		/* reallocate Rx queues that are used for zero-copy */ @@ -
> 3035,6 +3053,7 @@ ice_xdp_setup_prog(struct ice_vsi *vsi, struct bpf_prog
> *prog,
>  			NL_SET_ERR_MSG_MOD(extack, "Freeing XDP Rx
> resources failed");
>  	}
>=20
> +resume_if:
>  	if (if_running)
>  		ret =3D ice_up(vsi);
>=20
> --
> 2.45.2

