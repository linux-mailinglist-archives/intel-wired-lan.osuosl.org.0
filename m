Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GCdJBMACGGp+ZQgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2026 10:54:24 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C3625EF000
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2026 10:54:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 04ED3614BA;
	Thu, 28 May 2026 08:54:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8ELdgexvht1I; Thu, 28 May 2026 08:54:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 38C03616BB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779958461;
	bh=GyTNR/PEF/TObhREOasNhXTBf47fjoHu33KPJx77X54=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2IsBU2mGAvSMrfiJ15V6+5tgpq3mJY2RAqL/lBpRs1J3ZKYV/DcNboNaBpEfKOxGT
	 aPTF/OZxaod3K/Miiq9BzkUcKlMSxH2myWLZaX9FXb47Rly6bvOgqm5Mr69C9MXb+z
	 3RGDTjVdLqQ48i/HxH7w9Jl1Tn8dFFHmFV6PvV4RhKEd0eqfShwYCz7P3DxLzayeGY
	 BUC7t57cap5FbWfOzVu8GlqsCgNFj9M5RhGmAEkMP0f8PIGGpvA9uWfTSPe2qfH9tW
	 QT1U0SwNtN5fMqfx9ASiCwPMFz2c8hJXcYjEd5athLi/8HBBqwGz/RJlxibsERzyGQ
	 8VmaV1ETXQaTw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 38C03616BB;
	Thu, 28 May 2026 08:54:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7EDF1288
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2026 08:54:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 63D0584CE5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2026 08:54:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xv8jtLP-nm6t for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 May 2026 08:54:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7083084CE2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7083084CE2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7083084CE2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2026 08:54:18 +0000 (UTC)
X-CSE-ConnectionGUID: MfRnz2MlSJSsKulc7p+dRA==
X-CSE-MsgGUID: ilduAUXPTdO8AdJ3rZVHOg==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="80825201"
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="80825201"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 01:54:18 -0700
X-CSE-ConnectionGUID: fU9gN6daR+aIRA6MeNHn/g==
X-CSE-MsgGUID: tbgghmRdRoGMymk4kI93Xw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="242651171"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 01:54:18 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 28 May 2026 01:54:17 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 28 May 2026 01:54:17 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.31) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 28 May 2026 01:54:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yNGisM4u9OpF0iSb8+1s3WgfX+RmeATINHCEc5VmTRauiPfIO3kuUOP+FQUwo3N0WfBLR0nlcbRwzypfCZ7vB8vnKPcQR7PfKJSJtUzKN6TA/sup5ODyJbSV0lO3ctLijYGQMHqplSMrkizCkwXcjzUHDLUpPe0SQzzY0ZStC8I6XhGRV0JKD/GyOsYfmxBWEaLGezH0n4FQcPU64L5robLzbvzbt67Xs0xzmMMPx6DEH79yGCpILNCq91x7wPpHCKx2UMtd5T7gfbz+CPSt841yTypUkOQE7qU4ua4EwslVVjlXhIi7doFNXSOxlCGbK7eUOUedw2IiG+WMsSY/Rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GyTNR/PEF/TObhREOasNhXTBf47fjoHu33KPJx77X54=;
 b=NQkybTeSIXx9ch/TOHP5RUlU88G3gLGQZPUKMMvoMzbSgxQ1VyM3G/U8rJIE6nSDRYgcNYz3Egf8TaneWNr+MNt19L7aOnlMjEkH97ShlQxR6edz/EMkdmN7g8RHybodxcn9rUgFOKM3yma0TPoZ7oJLgFl2DYnvwoOniIAaRQ1xtXT4fAWyfJDxSG6lVLCC7ydHsuxXRHwam8UlIfHkn2LVqH00O+NAzBVr70a+/o/DVXvLrXGozC5TuEJNtGAyYtSTlC2euV4XHj+51UFU+COdzfWQfnCqVGZED4lqPHkj3A8ybeuzDaHXkp67vhAee+CA96nFTOEgrV9IAA1+8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by BL3PR11MB6313.namprd11.prod.outlook.com (2603:10b6:208:3b0::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.14; Thu, 28 May
 2026 08:54:05 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%6]) with mapi id 15.21.0071.011; Thu, 28 May 2026
 08:54:05 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Kshitiz Bartariya <kshitiz.bartariya@zohomail.in>, "kuba@kernel.org"
 <kuba@kernel.org>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "pabeni@redhat.com"
 <pabeni@redhat.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] ixgbe: implement
 get_queue_stats_rx
Thread-Index: AQHc7SQ4tz3+tZeYaU6mcbymjqCOk7YjJJkQ
Date: Thu, 28 May 2026 08:54:05 +0000
Message-ID: <IA3PR11MB8986F808D1B13DBF4B710B01E5092@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260526074744.36315-1-kshitiz.bartariya@zohomail.in>
In-Reply-To: <20260526074744.36315-1-kshitiz.bartariya@zohomail.in>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|BL3PR11MB6313:EE_
x-ms-office365-filtering-correlation-id: d6615531-79fb-4919-674c-08debc96ac1d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|921020|38070700021|56012099006|11063799006|6133799003|22082099003|18002099003;
x-microsoft-antispam-message-info: 9SDOz8Q7LrlZG2wS/JPzLekfEeZSL7ft3VTZaHW2+uQT1FiYDJdCG0f3gqiQx7KNM9F8OZQtnwIKOxGO8r24xEcHjlTtGlDcelFhKDPPJVQ6sZPgL0RgSNj4Q9P8Q4MPszzIHxDifHCg88xYID0s+vYSozJIGfA5ojqjg2fv1NPBDatIdd9FDe1DE8PkeYoJvUc7RrAEcmk0JCTSOvuuLIgS4sWEu8vtAhQRtqe1TNm6d3rUgL0NSPOI35vv3N21emFrtJjX9TUGNfywcIaqzOCwWNSsJK0M2soqd5HnxXoPjGFdh3FituzoDPjLWcoO5RbOQaghQGZyvKXfV3SnoSxG/bcgTocACK4uqXe8E3W0LdvXcLd8J7kJiFFy/XygrTD2xoc1vixJ76I02q0VHQqKeAykMHXY+48L/k5ZRxJpHEqCOX+yk6TSomCMoFEVJ0bCeGEuneQeaw1LRs/36TMm/DglDV0zhFPkPNe0/9wXoJ+IPCOZcXJ6iosxk9m4dXBvwe77eeNPeUHD6QBRBnAp8dbQtZnaE19wGiqLoCGOXgIb7jEx/01026K8oVbXLTzcQ8vkKDMqVxMFSvKg2rGI1eOOgKX0RRlD6HGob9fq+yKOStBEpmpoRl3Uw8OtqjXZ8IkxsLJwkPHMbekshYDdz9czHUexEoU8dlKU7XTZ8Xg7jFjSN6pGaCgUNoBetN24WUMNHul3qMUxjImxKS0AvcmLqFLJbuh9crqfz2Y=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(921020)(38070700021)(56012099006)(11063799006)(6133799003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2+WvywZODtyTHh6Y+Y7lLvmcP5+9iCCp+oI/NDOMZZwm6HsiysQKLq+BOOcS?=
 =?us-ascii?Q?PPiSeQV/BsKHmY7mtWqRaV/7TuB9VPEZL+9Rhn/Rr2BX8A7BM5o29d4Mej5z?=
 =?us-ascii?Q?tKcinjSDtv/Zcn+2J9emZSG+gnpQ+3saKsk6z8EdnRk4EPuOdT2BfAUmmW03?=
 =?us-ascii?Q?jU+PrGai/EThMegFCFV9ZKlMw3IrwFs+GzMRAc6RR38MwHMW/Wijdzc2ie6u?=
 =?us-ascii?Q?vUKmMwUmXWADSkFcIcNAu/m0IVLuPNf4KOo6gl69tN6mLai2aswRxnJHw+/q?=
 =?us-ascii?Q?CCZr4Q6D8at+/imlRNCCB8ramCIc4GIZ05mEuG+MXCOL+PL/NxbBrw9EfjTk?=
 =?us-ascii?Q?lYV00LA+iWvtM32GGdcp6fsOt7asrLFuOSLJ+juIf1J0QeXKxWYCWlsHtxZo?=
 =?us-ascii?Q?d2JNz3W16MAL3pO6tBgwfN6VYrRU7dNpJVS1Mt6uMmxJzzRvMHgozPhMN5A5?=
 =?us-ascii?Q?Ozc/+oDAF9xO2paYmAEczFUdmtomv7pWsLdtmR6n+Y6Z0Oe5pZj2aqOuKoPr?=
 =?us-ascii?Q?WAsPpENv7NkkiZ5JSrl7Y0EBsuHzOYT9F7fISKRTEGSOIzANI9UdrraFPJ/U?=
 =?us-ascii?Q?o4Di7jBxQmhL4oYyOCzhHtPwTQJZYEee7IkKkJTPsNbEeafrYQQxlNkoZz63?=
 =?us-ascii?Q?8GkS5kxfp7+0cOWiHlG8BlofeVFEIwdknzwLuKCD233n7p8RA8vRnJQRyL8S?=
 =?us-ascii?Q?gddh/a4QbWkjeuNr2Jbcn9H7I/Yv+P7N+ELUmrNV4w1Zkph4zNP4gzxiQadO?=
 =?us-ascii?Q?3hZWPGfaWGyDPZhJjbqMnJOtSX5nCSqDrxoZ0FHFQig5+6S3K20nWzB3862M?=
 =?us-ascii?Q?ag80BZ1ApITdk9FPaEA96QOCTlc8CbqOjYRZhqcQ0k5tK88sgHslbiYc4CZe?=
 =?us-ascii?Q?1NbdBYoSe2VLv7VXq1uLy86R8pqeWv5i8Obue990a4cYVdDSArTTE3l7fbzC?=
 =?us-ascii?Q?RFgao6YDXXoUQ4wzUP8YhHLRRua+XKZO/tE2+8IEi33T5O/w4mQIn0pFewWB?=
 =?us-ascii?Q?yZMlNagSoo9kFjCWk+Oe/ijzMbF3oC7usT/0VNs1mnj5iumDINZPXvbSv68L?=
 =?us-ascii?Q?r1jU81V09q2+IYEoAUtgoGljqarulPc3W8jwx3hhyyBe66LVGNKCmFZ9K+tq?=
 =?us-ascii?Q?GcPv4Dj5befh9GnGKNcU5IRppad+pM9crIXNcDwSOaG/VM0ChUsfKPpn/eGD?=
 =?us-ascii?Q?qRxJyzbFVtN+cDb6449B4P2AvpngBVPWtKXQWTA3hxiuE34/G+5uk6SdDZuT?=
 =?us-ascii?Q?nYAE3DL9HCryhVdpk9D+v3Tm7aS1Q5tGMxQU9sLkuZfTrb9GIbQPh+dIfQMo?=
 =?us-ascii?Q?O87e5ULZ5eDnV9ZIylVaqcq7OKqFC1tH7pxw2maF7YlhMSmTqY3KaGP3cx92?=
 =?us-ascii?Q?iE5Hve19ebj5djFfaQjbr6NdZ0zIzSsq4lVhpOhmGMMhK+vOvhs7RkZn4m8f?=
 =?us-ascii?Q?4aldK/UqNIZpdJ+GSZINVP/41fLj+bCtzGdp4TOub8gwv4ZRLuhd/4/TXTqX?=
 =?us-ascii?Q?bKGllkqtR+oePMs6YwhsQdT2sjmber/Ht5U7HFLzw/U489DgDhBF4HcA5M1K?=
 =?us-ascii?Q?8dPyeb8NfIxF1foydOAxQvkST6r4sNIWlZqKvL9TZN3NM74WSawBgDsUYz5K?=
 =?us-ascii?Q?o0JaROBOA5f/NFb4jSzyqj+KdfpWbfzwzXd+DF9Woz0VYx/8qGcS0cdJDvfl?=
 =?us-ascii?Q?EDwqHl6sVxztq2L3/wNZGEppEFxf18dTUCrqODNN6Ja7UOTOJNCtZHksljDC?=
 =?us-ascii?Q?4SkOrRnSj2bllf7KhSBg31w5fe3q+Ws=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: BhQwm9QGZF4i9NCB568wf7pQbZdD6kvGZORoxUhM0lrmIAozxqPu0g+C3yQMnJqHVvb7X1aHhpTwAjuA8hYxiF82/OPA/83QWGmuXFhXY0xne3XWt7UN7Jp4WkTvm7x0rb0cGden76idQNDoUHz44IqXr8pNfcFOsq5p9CNqLYIWaPXShhsIgIFWiIQ5SiYH9L2VGGCjrYyWksi4omkxeOYhKw5Rnu2SOxXmPgOKjaUK0eBGU/rSN/HeAg9wSZXO7pwrTgXATCJZ0AunKX9adslUoI0mxXLWAomLFppqxm9NQ4lxOGqkN/o8NMUywCx/5kJqz/15YBNvg2eaCNTsRA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d6615531-79fb-4919-674c-08debc96ac1d
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2026 08:54:05.1525 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WaVOnnXI24fq8ByVfOqPKiOenrZDHI7dqC1lF/vKcu1CeY4scz2vvTJqE4Et81qMYxJm1tp8HiecKsnDQBiIlyjq05cu4nhJ+Iy+sVbU26U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6313
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779958458; x=1811494458;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5ncmpviDvHA6wxvwnMbKWZOoRM6bspMBZ2V+427ltAI=;
 b=j/ek/oPhNO15l9QhbwPAptdw2c3BRu4rUw3KWXoS5xUrELWqjGOHv0Vz
 jffOLIy4UG92yCDiiqvehyjpOAzfR34FG5stwBh/T4eRFsbDCiPgiTzQC
 Ped/xnkodUwoKXPB22QRDAMqugJ7kelk1og1IMY+rwTiZbIL57fYe1k38
 X0ra29R6FHj+zPVRdJPXH2G3u2nR2OVq3K5oEcmWdI6n36acRg/KH0Agu
 daBPrBqfXY6CguKFyuHbQBozDbN7dq0mzMHqbND5eEal+2qIZEhjVuDJZ
 M0TLOOb7hhki0LvrBYNVr7+/tJmyAERB9FqcSHa97z3yUEQ/WWQcxIMNr
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=j/ek/oPh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ixgbe: implement
 get_queue_stats_rx
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kshitiz.bartariya@zohomail.in,m:kuba@kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo,osuosl.org:email,osuosl.org:dkim,zohomail.in:email,davemloft.net:email]
X-Rspamd-Queue-Id: 5C3625EF000
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Kshitiz Bartariya via Intel-wired-lan
> Sent: Tuesday, May 26, 2026 9:48 AM
> To: kuba@kernel.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>;
> andrew+netdev@lunn.ch; davem@davemloft.net; edumazet@google.com;
> pabeni@redhat.com
> Cc: Kshitiz Bartariya <kshitiz.bartariya@zohomail.in>; intel-wired-
> lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH net v2] ixgbe: implement
> get_queue_stats_rx
>=20
> Hook into the netdev_stat_ops interface to expose per RX queue
> statistics through the netdev generic netlink API.
>=20
> The following counters are filled:
>=20
>  - alloc_fail: sum of alloc_rx_page_failed and alloc_rx_buff_failed
>=20
>  - csum_bad: maps directly to csum_err, which is incremented for both
>    IP header and L4 checksum errors in ixgbe_rx_checksum().
>=20
> Signed-off-by: Kshitiz Bartariya <kshitiz.bartariya@zohomail.in>
> ---
> v2:
>  - Removed setting of hw_gro counters as ixgbe doesn't advertise it
>  - Removed idx and ring checks as they are already checked against
>    real_num_rx_queues
> Thanks Jakub Kicinski for the review comments.
>=20
> v1: https://lore.kernel.org/lkml/20260523144022.36484-1-
> kshitiz.bartariya@zohomail.in/
>=20
>=20
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 2646ee6f295f..2184213727c7 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -9740,6 +9740,21 @@ static void ixgbe_get_stats64(struct net_device
> *netdev,
>  	stats->rx_missed_errors	=3D netdev->stats.rx_missed_errors;
>  }
>=20
> +static void ixgbe_get_queue_stats_rx(struct net_device *dev, int idx,
> +				     struct netdev_queue_stats_rx *stats) {
> +	struct ixgbe_adapter *adapter =3D ixgbe_from_netdev(dev);
> +	struct ixgbe_ring *ring =3D adapter->rx_ring[idx];
> +
> +	stats->alloc_fail =3D ring->rx_stats.alloc_rx_page_failed +
> +			    ring->rx_stats.alloc_rx_buff_failed;
> +	stats->csum_bad =3D ring->rx_stats.csum_err; }
> +
> +static const struct netdev_stat_ops ixgbe_stat_ops =3D {
> +	.get_queue_stats_rx	=3D ixgbe_get_queue_stats_rx,
> +};
> +
>  static int ixgbe_ndo_get_vf_stats(struct net_device *netdev, int vf,
>  				  struct ifla_vf_stats *vf_stats)
>  {
> @@ -11643,6 +11658,7 @@ static int ixgbe_probe(struct pci_dev *pdev,
> const struct pci_device_id *ent)
>  	hw->phy.mdio.mdio_write =3D ixgbe_mdio_write;
>=20
>  	netdev->netdev_ops =3D &ixgbe_netdev_ops;
> +	netdev->stat_ops   =3D &ixgbe_stat_ops;
>  	ixgbe_set_ethtool_ops(netdev);
>  	netdev->watchdog_timeo =3D 5 * HZ;
>  	strscpy(netdev->name, pci_name(pdev), sizeof(netdev->name));
> --
> 2.50.1 (Apple Git-155)


I think it should go to net-next branch
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
