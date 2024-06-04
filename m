Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3910B8FAF4A
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Jun 2024 11:55:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BAD54611F4;
	Tue,  4 Jun 2024 09:55:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OeXMLwptr3Eb; Tue,  4 Jun 2024 09:55:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 901F0611F9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717494935;
	bh=HFXdB9/sPfWtisSDx+SKCDjB1UO52QOhR04wLpVGCpY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LsrFHaPfXzX40tUWbL0SMYquJ6ckgmoBmPVGzkvy9aOx/iA0YTuy+zRrfzl80JaS9
	 M25Rbf6OWBHPDmTP2l/xSmh7jcNHLCiYEX9gTtgplBoNFqI29Tzo3XijEx51VD1Waf
	 S2hrMp5p4WvutJceaEQQ5tf57i3SKFvlKzxqwVYZGV8pVuKBkN8pJ7dc2fk778kKvp
	 4JkRWY+Tp5HsVT0wlyyuCnNmvIooa2Z/rL19Xmn8TMkFqBAMND7Ak1nvc2MnrlC82A
	 1A8803tBbmfBU111go/NMdEgfr6du9wY4oSToSjav1lrlVO56xXMn5sFMn9lIndWsT
	 5vrqgEpA4DHHg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 901F0611F9;
	Tue,  4 Jun 2024 09:55:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 288581BF3DE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 09:55:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 12F9C4163D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 09:55:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fYrJGCnKmS5i for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jun 2024 09:55:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8B5834157C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8B5834157C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8B5834157C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 09:55:32 +0000 (UTC)
X-CSE-ConnectionGUID: AHCXBxKkStinjOqc+KHPVg==
X-CSE-MsgGUID: h3NAQet8RSKkF2rDK2EGIA==
X-IronPort-AV: E=McAfee;i="6600,9927,11092"; a="13980921"
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="13980921"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 02:55:32 -0700
X-CSE-ConnectionGUID: 3m3F2sq7T4usE/sOdNh8fw==
X-CSE-MsgGUID: CDOySg4PT3CpKVL3FCiQqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="37312910"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Jun 2024 02:55:31 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 4 Jun 2024 02:55:31 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 4 Jun 2024 02:55:30 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 4 Jun 2024 02:55:30 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 4 Jun 2024 02:55:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kc+z3cpmg1hMcsI+JuTx2ibAuf1JhCtqDJ2wusTEFQlT+kXj+uXKtCnlGx6KPuaZmSAGK9RcWx5Jk1FVgIFd3tNe9nvOezgkqBXLv6jewqDFGZ+5ciNXqlrHc0RwjDI2In7v7AoH4GdjO88iI14Pg7wL1hZigqqUHRkC69M9rAzzB9aaGf8nN0MZZjD9rTlB0BEpkyIeaW5ynZGMH18oiTxq7H+VSY36e884aveRPrmq306Up+RR6b2gzE5swqgJYmQCLi10NeBESOULxdwQgZpdTbnH5Udcrk4zvP2a562qEVZGQjixgIhrSWlu/aB8ZZLY4OVXgbrCYw7ZIEgRqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HFXdB9/sPfWtisSDx+SKCDjB1UO52QOhR04wLpVGCpY=;
 b=BsyGBuJkgj8lcNCNqpeIFsFnjHXCCOX1HoEAmx2DLVk9SGBIedebylJSR4GMz+vBJGho5n1Ir/czMlqUSCb0Oa7661HCK88fZ8TOOp2sAe8uDQihiykh927MkyKoA6A8jmcTk1tNohuG+0WsKfBIAFwfzVt/mURo+N9SxM6K8uq6MWSdZWXoyWFyiA2cBwJn4A9qgHPesliBhPjxvyEDUsWlD83PMDBlljdhgMbT0pQ8R1bDY8yqtck1NnsR7oQlDPeQMbbTgFIyECtEn57NMT9feJmVr8fVNIeTQ9WTnHf8jDaWgKLLR1pX+XqFKwvZYcGW1B85HbxwXFIC1b+oTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by SJ0PR11MB6813.namprd11.prod.outlook.com (2603:10b6:a03:47f::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.27; Tue, 4 Jun
 2024 09:55:27 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%5]) with mapi id 15.20.7633.021; Tue, 4 Jun 2024
 09:55:27 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: Ricky Wu <en-wei.wu@canonical.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net, v2] ice: avoid IRQ collision to
 fix init failure on ACPI S3 resume
Thread-Index: AQHaspy+X31HbyaOiUixyJ0gaZlPy7G3ZF7g
Date: Tue, 4 Jun 2024 09:55:27 +0000
Message-ID: <CYYPR11MB842939BAE38A750C13775B17BDF82@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240530142131.26741-1-en-wei.wu@canonical.com>
In-Reply-To: <20240530142131.26741-1-en-wei.wu@canonical.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|SJ0PR11MB6813:EE_
x-ms-office365-filtering-correlation-id: 078b721b-b3ab-416b-12a1-08dc847c7659
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230031|366007|7416005|1800799015|376005|38070700009; 
x-microsoft-antispam-message-info: =?us-ascii?Q?p9qDk038c5mWT6oZsEhjuVaJ8vr43DWwc4NErKqKau2Dyr5u4I++136S3cf5?=
 =?us-ascii?Q?wyTC2hmpcsfF4oPca0tgUgi7Wlb88sflxR9od+hzMlZ1HwEyq0K4FpV1Jwio?=
 =?us-ascii?Q?XQlgSZcT+r2azBMPmOhBEVXhsBmHuQNQnwy4Apbtt5BEW28y596mz9Ja+fKD?=
 =?us-ascii?Q?JfGstZfT/DS4scdlgnnEGHRf+9fONkNlivD0xE91tUAm6G8zV1/FpyCma2nL?=
 =?us-ascii?Q?qJ2fGosKLFltWE+/4/5Scg0oGBOk1+WlwlOm0AhO2e1MfVgGpsHRkZN7+kOJ?=
 =?us-ascii?Q?EoR8eCEtH5pTJ0UtbdFd82IXy5e/YYkOBkCJjGrH8gErkV52lYe8FdnreUjp?=
 =?us-ascii?Q?JFevtr/uet+LCm2PRyacDIY5W+Hxb3D5Oo9bp5Q3HmeZ72pbWeh/6FqXRPU1?=
 =?us-ascii?Q?dUqvWIvFND0IBX0gdbStdbDs41283G9s/rQUnUCq1+TuJYCfQjJd/taZQn62?=
 =?us-ascii?Q?ziXT90eD9U4tX7Qa+lzaIOYR6o+0X3HBmAGGZakK0anCsY4XPlta4YW9p0Yf?=
 =?us-ascii?Q?uT0xJUUdRPWYWSogSeWeXjF6vsjoY+QCXzva2WFsadNZooML688ba0VHrnM5?=
 =?us-ascii?Q?UH1IyJZgMpOpR9l7nkdBSyomsDrV4sg0WIltHnMJ0IHRefOlpngtrK98pC2c?=
 =?us-ascii?Q?sFnturS3O/50Wk52uOuhftZaFkPzJt1bTPbSkB0an3NGRYrQ5kRDOFMze49l?=
 =?us-ascii?Q?6bPA9AoMZbfrD2I3bhUCbw7YB+wKdVu5AjG3fAMJ8jQtOIdlGyWL88OL4kfB?=
 =?us-ascii?Q?tytkzRzRC3MlenA+xnqxiP6lkXlQ+xLRUXPFjRAQzulnzFGS+te3gCdfFjfC?=
 =?us-ascii?Q?rl7oWnuGvymRC+yoGdg3wq+hmzKJ3vObavRb1lp0KTDSm77hoe/9N6iggueQ?=
 =?us-ascii?Q?OlZnvYfvzK0S9537pfQBLVD/QZfM5FUyqJ/1hlyEYFEVXGuKIAe8eT/H71SE?=
 =?us-ascii?Q?MK0m0N1awamR2ysBNagq4jfsHsuFJ0FTBsUx4Ud2/MZQ6alWcaczZ3yOY+ea?=
 =?us-ascii?Q?R9ZYQwnCI70Bup9jTCbx24yQs2QOyhaUOtLL6QvI52b5R4yBAwDAJAwbLVyf?=
 =?us-ascii?Q?S928xpT2SgsL6r3vpR6Q4i+Eo/X82JfSLKaB0wwE3G9BShD7g0lBh4eze5J3?=
 =?us-ascii?Q?U1hEYZ3MEHRZncQ284KwzfM5wmTXgeONrVneQXJ6i0G1fDXZphtzj+Gwcqtz?=
 =?us-ascii?Q?a9CXkdWKkjJcIXcqxKnbjlxFHjjEMMhwh/QMhDIPrcmfbSjHUkgxyQVyl32c?=
 =?us-ascii?Q?TEv7vPUZn0l7VXm4AlP2R7ZnzOYumyT9Mm4Ka+zzx1PlrZe296t3+nFiZgV3?=
 =?us-ascii?Q?98N3wA6uoLQFz/AaF4UYPYf7?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(7416005)(1800799015)(376005)(38070700009); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?N0HLWEr9Zk/RTMa7dAUavjlfntm4h+OsTgBMWHq2KqxYAOwfathYsWBThAkp?=
 =?us-ascii?Q?esO7h67QXSU7Rzk5rY6Qe1KBqwe9+WC4yXyS+KC3LSCZJuh7d6+pSlgLq7tt?=
 =?us-ascii?Q?ty1LCJzpOoFgMysxhJRfURGB7fzgFhPwd/O19SVjPtQ+Q57p0Qt91ZDXeRkF?=
 =?us-ascii?Q?v9opJUgNZeudIIdpnH1ka1xgyFxmVRarobuZz2ohG5qUT1UuWIYsiP96xL16?=
 =?us-ascii?Q?VZZCgqJpX7atmm9gwrpDXAMS8RAJxaikQJZ55gjKqcRb77JzdlUvSODNR9PH?=
 =?us-ascii?Q?kFQvQ0pv7TPO4TRplVTQIjklIXogj4sRgnSTrd3MaUEPVOcUaW9WMijK8b7I?=
 =?us-ascii?Q?II/64GIDXVCLOVo8ifolriw6Hcb+Yr3OLqj2t5/9FOseE2tXorhWlskj0Kfu?=
 =?us-ascii?Q?v/ndEwRly0LcTmH+iBjO1sjq2I04D7CecKLwJJxCYkjY/dPCL+6cg2YjG28g?=
 =?us-ascii?Q?9ouCBFtW6jI8XKceyYlHX5WnY83P1+8GyHl9nUVtUzlv0u4qyS94bCbPnk7n?=
 =?us-ascii?Q?L71IJABCBJEcwStuCNbbWXI3VI70gzQfTY4ddpPX0AmOTf7YuHv3JKso8RIY?=
 =?us-ascii?Q?2E1z54lFi2uUaipyo0faT/cOSNvgvT1fQ9wJMiskxdqo7kg3cIxqqN23RqEQ?=
 =?us-ascii?Q?EDwpkp5/H1zkzkYwEbqGtdQoU0cynaRwQbIKG1dDPAmvxuPMQZ5ycJupDmPM?=
 =?us-ascii?Q?RULfz3eRCMkaFljyPncj8dfL69w6XWY8ioZtqPzd5pAPhLZBqI60mUrAfKmW?=
 =?us-ascii?Q?e4DYvB1MYyO0F3eYE5kHYm5FcpKog7roDapRplDkdyCLLrSoPJdJ7Up7TaPl?=
 =?us-ascii?Q?8WGHrtB1dzaAsuw7TJehY6V+liP2CkRcdegD8C7LBHSAeDZcAqpNT0+d0KYS?=
 =?us-ascii?Q?SgWJ2AeCjRT8vAq/XC3hH2LwfdFdvlByXomYeCdbC+CUburVT+rOAnNIohAl?=
 =?us-ascii?Q?vqZwUGnGksg9XsdIzTuh4Wimfuw2rXcX/1JuzfBduXnP6h8wyfGu8WGesKAG?=
 =?us-ascii?Q?SsA9MH30/NTKbRTDjoRIUGgM3hWolf0MWLmqjZMvIwek1+UUb+BhmBYF+210?=
 =?us-ascii?Q?PCEHfgVva7f5vcHC+3QPebtyRn2HzJ3trUwZwSYY/2CuGvbpCopiZZnG4tDX?=
 =?us-ascii?Q?cWoG+GR6lCn8r07T9q0l9GxmXLDl74tZC22Fn2Fi1/o+mEjZ1CeT0dyDrwqo?=
 =?us-ascii?Q?AshzB54/vi2BNRKDCNzTCB5TSWG0AtUtKIt2gPk70zl7PmG7XLwopTQgzNyB?=
 =?us-ascii?Q?56vU/8/91YwLwYfP83UrAzqTAXwhCTloMXSL5zBPiz4RnzZwoisYSku89zJX?=
 =?us-ascii?Q?E3JALmvS88h0CvK+/jtlW12vkC9EE9EK5ZkPEyc2GNS/ZYL3w0GZb6oGLXw9?=
 =?us-ascii?Q?WYbPm8bFRPC6z5l5fIHZp0x5nJgvtYwk2MbcWKyi3dXqvYJhj8nnmeZVO6fc?=
 =?us-ascii?Q?Blas8tTw+29VpLSSORgA/AHcbg0e4av/XoNR6gWInQnVBTUBzr/H8r03acs1?=
 =?us-ascii?Q?Q1Y7DEaD3C8KlFCqUxiDGe4bF+3aanM/2E2A7fvfoCnPXVXjylBvAU7uyO1g?=
 =?us-ascii?Q?bpOWI5d0k48WFrEM4nNncZ7G1smUL9TbiTsuVKr8uC/xV9ZVeSjWwrNg3W3F?=
 =?us-ascii?Q?/g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 078b721b-b3ab-416b-12a1-08dc847c7659
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2024 09:55:27.5675 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hIV6TAXxFWRIU2FQqeMUsBpalErTBtKDrXYVBEmbHcnohtGdaVBTsF5PtzVLYxOYqfnbztOzb62A1HnBGGLGnsIBunX5TVYsAetIJGXoAjZ83UIboRrTL+rPQg4WMUGn
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6813
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717494933; x=1749030933;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3JWc+HAExhwvQ7dphh3AerB8fiERKboTZRx+Yg8EKT0=;
 b=aLzIiqogeaMKogkKlIa7SAk4N31CoeLPsoN6sYQI9jHr4kvZpP22ByeQ
 Aq2xDpgwtAHAivZDJ8SjK3RnuQIIZWG+S1HWH5R1RJL6CjGMKipDrqiwZ
 F1a3uRc1aCZ+3JoX5fYBBQsKYVWgN9SaNpK0c0royhW2Z4CX6TrEmz1LA
 aT27WHHjzeWgTkQUaR7x2QYxb7qH460Afu+ExKeuCfJnub55ysmZAK/Ud
 8rI041Ai5YEp7m1fsZ2/fE4qNYRUJ9renlvcjDOJYWgHyE17qPuNfpwAD
 WQGBxyYAJL9W09OT198HjtOKe+vvDsgvdC9M9q0C/pdwoNFl1AJ2QjXFQ
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aLzIiqog
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net,
 v2] ice: avoid IRQ collision to fix init failure on ACPI S3 resume
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
Cc: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>, "Lien,
 Cyrus" <cyrus.lien@canonical.com>, "Drewek,
 Wojciech" <wojciech.drewek@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "rickywu0421@gmail.com" <rickywu0421@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "edumazet@google.com" <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "michal.swiatkowski@linux.intel.com" <michal.swiatkowski@linux.intel.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of R=
icky Wu
> Sent: Thursday, May 30, 2024 7:52 PM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Cc: pmenzel@molgen.mpg.de; michal.swiatkowski@linux.intel.com; Drewek, Wo=
jciech <wojciech.drewek@intel.com>; intel-wired-lan@lists.osuosl.org; ricky=
wu0421@gmail.com; linux-kernel@vger.kernel.org; en-wei.wu@canonical.com; ed=
umazet@google.com; Lien, Cyrus > <cyrus.lien@canonical.com>; Nguyen, Anthon=
y L <anthony.l.nguyen@intel.com>; netdev@vger.kernel.org; kuba@kernel.org; =
pabeni@redhat.com; davem@davemloft.net
> Subject: [Intel-wired-lan] [PATCH net, v2] ice: avoid IRQ collision to fi=
x init failure on ACPI S3 resume
>
> A bug in https://bugzilla.kernel.org/show_bug.cgi?id=3D218906 describes t=
hat irdma would break and report hardware initialization failed after suspe=
nd/resume with Intel E810 NIC (tested on 6.9.0-rc5).
>
> The problem is caused due to the collision between the irq numbers reques=
ted in irdma and the irq numbers requested in other drivers after suspend/r=
esume.
>
> The irq numbers used by irdma are derived from ice's ice_pf->msix_entries=
 which stores mappings between MSI-X index and Linux interrupt number.
> It's supposed to be cleaned up when suspend and rebuilt in resume but it'=
s not, causing irdma using the old irq numbers stored in the old ice_pf->ms=
ix_entries to request_irq() when resume. And eventually collide with other =
drivers.
>
> This patch fixes this problem. On suspend, we call ice_deinit_rdma() to c=
lean up the ice_pf->msix_entries (and free the MSI-X vectors used by irdma =
if we've dynamically allocated them). On resume, we call
> ice_init_rdma() to rebuild the ice_pf->msix_entries (and allocate the MSI=
-X vectors if we would like to dynamically allocate them).
>
> Fixes: f9f5301e7e2d ("ice: Register auxiliary device to provide RDMA")
> Tested-by: Cyrus Lien <cyrus.lien@canonical.com>
> Signed-off-by: Ricky Wu <en-wei.wu@canonical.com>
> ---
> Changes in v2:
> - Change title
> - Add Fixes and Tested-by tags
> - Fix typo
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

