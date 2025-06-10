Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 45C64AD2D8D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Jun 2025 07:59:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EA8EC6121C;
	Tue, 10 Jun 2025 05:59:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4JN0iaXcJhD2; Tue, 10 Jun 2025 05:59:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5FB9F613BB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749535141;
	bh=0Elrtk0K5fgT082my7WTx5sRzOihIb3v+FjmoRhxhMk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bI2Zy9ofkEo3j+WJon8jOWFnKVZnFS/nKFaU1NIkS0UgTHS75FN3YLZJHHohsQt+P
	 EuU0jP7nJCj+/SP786klctSTPqB/Q+SMuxOzChpuSIS6/jh7+4Kup0fL+8Ysfasjit
	 dOEjc2M9EcFNTRcOf68z5qUWHwuoPnvtcTKzUa/Q/KD/ZgiZ9U+xIVTsfHZJtPLGr7
	 pV/MrDfPOKledPcve1Kd+Ub4ETcZtExP2/x+q+gk+c6fEnjk9kZZho5t4ebQzJoDJa
	 oDkbZRvn3w6bif/UC/Q2I27SrMmKh9osD4vJCfggrEnFhdTxN43ZDwsmPWzpJ114xR
	 h/HQQiQaZ5ZOg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5FB9F613BB;
	Tue, 10 Jun 2025 05:59:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8C244237
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 05:58:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 730DF40060
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 05:58:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WFL4_AHidR1B for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Jun 2025 05:58:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 75D2E40010
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 75D2E40010
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 75D2E40010
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 05:58:58 +0000 (UTC)
X-CSE-ConnectionGUID: 0E0wnQR1TCalyMRotDh51A==
X-CSE-MsgGUID: /XjxR+BVTMyCoTvejbFHbA==
X-IronPort-AV: E=McAfee;i="6800,10657,11459"; a="51714191"
X-IronPort-AV: E=Sophos;i="6.16,224,1744095600"; d="scan'208";a="51714191"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 22:58:57 -0700
X-CSE-ConnectionGUID: sEoUwyKeTI+G2Rgbh5JmrQ==
X-CSE-MsgGUID: 4tEBuKrrQRivmcNmJ45Vag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,224,1744095600"; d="scan'208";a="169902625"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 22:58:56 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 9 Jun 2025 22:58:56 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 9 Jun 2025 22:58:56 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.79)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Mon, 9 Jun 2025 22:58:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DvgclrxwPkAeSbnZZWF1r6Cq4guFrBv1NySCSbqcAB7YYFO/19k16Quz1XGjWthuc8ANqC2IZDViPIct+ftVPg9/A1hFBVJ8Rb+G9kGVxPaZB8uSsl9iKUf9jwCJPQ49PriNI6JhZP1exn66Y0UY1GUkWaJeIiswNpxLP3HdGb/rhXDM5tBbzdQXYCYKdbVoeCdbHJHMsto0Fbf82f35Wqdo4fuaF4FDPARNTTejPRofB/Cdt4IJN5yaQzJiwSitCPuVig+ml9ZuCvPQtbXXtIfVyPJbt9pY+myf1ZdDZ6JyluCYG4cvpET5jMCC8JBjxyLpVdt3uAWEo86lZEzBsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0Elrtk0K5fgT082my7WTx5sRzOihIb3v+FjmoRhxhMk=;
 b=bsBdN0PsaETmeR7ih9aiCWSAqCzlcdqKOqPs7W8VqtOjv2sCwY2d0KJ4TXaGzgxJInD8kqxCcSZg48LopoRFaCXjsY65nCjw+lGi7nHrRGzUSMr5aJ/rWJ/Dpme4Sgu+0hlGP2JPOxiEPKWfMZSiAjXEJehTKvuIu+V6R4LtVbLV6faCS8wO3VVl1baG7ve2WzRhoTcQOlQDJ5puwsE7X1upq0iBNSoyLT2QKGS8w/6fBQEGmdWvFo4o7NnU8EvmYZeH8L/zcbwE4+kmhHzZDu3AJ+/YrSiXCNUnqN4DtHPCylrkR2Qt2DvPAzCBKG4/0Xd7OQBmwYnTawL8I3Hlvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB8452.namprd11.prod.outlook.com (2603:10b6:a03:574::22)
 by PH0PR11MB5158.namprd11.prod.outlook.com (2603:10b6:510:3b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8813.30; Tue, 10 Jun
 2025 05:58:54 +0000
Received: from SJ2PR11MB8452.namprd11.prod.outlook.com
 ([fe80::d200:bfac:918a:1a38]) by SJ2PR11MB8452.namprd11.prod.outlook.com
 ([fe80::d200:bfac:918a:1a38%6]) with mapi id 15.20.8813.022; Tue, 10 Jun 2025
 05:58:53 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
CC: "donald.hunter@gmail.com" <donald.hunter@gmail.com>, "davem@davemloft.net"
 <davem@davemloft.net>, "edumazet@google.com" <edumazet@google.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>, "horms@kernel.org"
 <horms@kernel.org>, "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>,
 "jiri@resnulli.us" <jiri@resnulli.us>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Olech, Milena" <milena.olech@intel.com>,
 "corbet@lwn.net" <corbet@lwn.net>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "linux-doc@vger.kernel.org"
 <linux-doc@vger.kernel.org>
Thread-Topic: [PATCH net-next v4 1/3] dpll: add phase-offset-monitor feature
 to netlink spec
Thread-Index: AQHby/owcizuLGg/C0GwDd53CbG5irPqXOOAgBGkFwA=
Date: Tue, 10 Jun 2025 05:58:53 +0000
Message-ID: <SJ2PR11MB8452106F3451FC770C6E067E9B6AA@SJ2PR11MB8452.namprd11.prod.outlook.com>
References: <20250523154224.1510987-1-arkadiusz.kubalewski@intel.com>
 <20250523154224.1510987-2-arkadiusz.kubalewski@intel.com>
 <20250529173311.15fcff9b@kernel.org>
In-Reply-To: <20250529173311.15fcff9b@kernel.org>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB8452:EE_|PH0PR11MB5158:EE_
x-ms-office365-filtering-correlation-id: 4389318c-98fd-46b7-8012-08dda7e3e15f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?6cQp52KKG9QO+OB2oE1BFSyYr5kgO6DjneyeFhjzTN+cX01GKcnAPuSPnslQ?=
 =?us-ascii?Q?GBUbqaUf0DBNEesCPPClIwBKGUoXAcO+9Tt7KQdzwYZm8Q2rpKdGL6rGceps?=
 =?us-ascii?Q?b1vF72OJ+uLdNMV5MBWiArrRRYSCkGfJ0ccU/V/uXUkBLZeffq1E4ukU/yVl?=
 =?us-ascii?Q?zABBfjrKJE2vEeYRiZrkd6YVFlEeKSRmjZRbeitpAFiov88Tx0jmGmJTfm6i?=
 =?us-ascii?Q?GQ67bVLKTWKdDsYTbuI5b6ZNWXfzcQ3dfe4SvobGdxdxsuZtEw2NBdtG7iMj?=
 =?us-ascii?Q?3LCcu5WSMiIQRnvYKsuCmG1FRK9qCne1Q4CiMGgKsMHuxVRM+X6cST6SDQeG?=
 =?us-ascii?Q?G8Xz6aGXhuLT57UhWsWjTbEAjt5i99/+DEPmxmktb62Ag8i23eszYjezoNxJ?=
 =?us-ascii?Q?8rQBNoc8pAFT4FL9k7I9ImaPxDxWyuJUmteODWlvnWeCO67Tr2dOmOoSDQu/?=
 =?us-ascii?Q?BG80hsjR2HaepDE++70N8j31P/7Pjr1prIV07VmJ0kcaLnhK7wsr6QLL8WGd?=
 =?us-ascii?Q?2KX7pmo2N8A4QaYOEA9WJYm3pYSmb/zHiR/bqVgfEnsPYfcGmGN9Mzzfm9ZD?=
 =?us-ascii?Q?CP9xotiOKTQ0UIwIASnT2WLcADOciZzEt6Ku4RG8VF9du7/iGhPuihReVqiW?=
 =?us-ascii?Q?m8MdqjP6jt2q9v4/+1gNXwQ6rsMSYgLXbWCRIaW3xEhEikdDoPJ1x0JU3Gto?=
 =?us-ascii?Q?Y/gjy6+Mh9tTryclNehvtvnTawjf0VZrCUWICK6j9MLfhRBLlKWbgBG8DeLl?=
 =?us-ascii?Q?jLVCJIOry6BAyeL3TrcfWDMPWJGwpS9iSVYkICP66Q9d6zq2josPrxtEz/kE?=
 =?us-ascii?Q?Dz7lG9j6BPUEGeFor0Ag9rPgZEfcfNqtQXmqwPG+Yjy71dwHWf/b4BDwPpwy?=
 =?us-ascii?Q?AmkThIvMzSJA9Fj2A+Hwufn4VvuCkYUVRFZJanSBpMWNNd7/z4T9JdFDlQ8p?=
 =?us-ascii?Q?3KHYu5lOESy5QPTnLoMt67a/Tc9OzGePl4fgiI0dZXPjnIh7dvsZVUpFy3rc?=
 =?us-ascii?Q?pcOx9uWhBxG10eWAxsG5X7VybAZXSxnOJsQjtTajFgB2/oAD5cmwofVfBwtT?=
 =?us-ascii?Q?beHC3xMOGKTIquKBUidFrON16runeF9qK/wf4iAi7FUt++ku2Piq+gTKl5td?=
 =?us-ascii?Q?rrbTrxKEoOVtGC195OWZ/tFaN3kqfSOzfP8aaxuAAe6Br6yCoUTrO8A6mnR8?=
 =?us-ascii?Q?3RKSyZS5/9XxXL1qmP9R7URj/WHBWwVp91uOk5xf6IiE6kgR0O3GwJOI5RDi?=
 =?us-ascii?Q?KGtTGcFiwtObkEHq8tU2S1glwOSLR9JizUrdlxQP7doSUiElJEPG31Mv4aGQ?=
 =?us-ascii?Q?dgeCRCvcP8Wh5CfSnBf4lijepWLDpNmK/KOQ33ZI3GdCEGl6BJBQNRXotJF4?=
 =?us-ascii?Q?zFaCYSbP7pv5wPUWd1YPchJYhysZELVFGMusPjShmJZ9fK3jBy+NlHEb2wPX?=
 =?us-ascii?Q?ZrzpKbZiehWRzp4TTX/32r55U8Yhdxfs5bazM0PYGn30SxpnNxJKUAto0T5W?=
 =?us-ascii?Q?13wzIGQ3JGbflOk=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB8452.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?A66DDt+yV91Yh05wlzMs3vARHr/VVdsBV8RGF4jzdFDeUUCpAcMqFpk+kLTE?=
 =?us-ascii?Q?ZZWOrxTAdKwyEXpj4Q0mtxvM7UoyeUYgeNiHW+mDg5SN//VLLVfB8ZIEq3De?=
 =?us-ascii?Q?CZzFYyJj2eAStE6c6+6t6oH0yi4wUClOgp4YjDvKYH3dbKVyrYDRf5DPyqv4?=
 =?us-ascii?Q?2T42iPOoCUp2sGeAWHNOspgpUc3LJOH3ctywziGpVO790OWDxey/v+jZdk82?=
 =?us-ascii?Q?VsXbcsrvP7Cy0vRJz/7nQ2Qc3TE5X8s+wp5CshU2TuIgnwVlRdDNVYGuRyFu?=
 =?us-ascii?Q?I+iPX+jGnCmqax/iL5hZxFO0q73NO+T3ZbxreHBRYmoCErRWO0pe6EviUljQ?=
 =?us-ascii?Q?+pRmuCfHemj1sbt+WaJJ4XFMyyeCZhUas4abCXNtiJYNL/38SjpUR0J/EGgB?=
 =?us-ascii?Q?XJbzE38dcYRSmGgQAip++amznVoSFyULZADpY00pKYIz++3nySW7cNWAj9Mv?=
 =?us-ascii?Q?LSWlOXA8ohIQZqd8ximjANz0dYnqVU7RTMgfNy1KPEf5xaeQzdklWTrRE+co?=
 =?us-ascii?Q?eUhMZ0K1nJ0cXXKJ8axeljfoZsoVyz1PmPUifN4SRz5jNSz+oSTDJCTH872V?=
 =?us-ascii?Q?fj6cNMYAV1dRvr1WJEsyMNvwDK3NR8meyIAJns4bIqf/28S/gTm4Gi/zU03q?=
 =?us-ascii?Q?okWnA3szn94eKZx9K5j5uI5+WZMuYilY2CN7/8A2+o2HzjbQ6QdLy3li+6OS?=
 =?us-ascii?Q?1RqioLNaPdHQrZZERazOLxGwgaBnU22xeKHSdUW/3IyCKeLkgUqrCp8Yi/QE?=
 =?us-ascii?Q?uhVqD9pnJQZxbi2gUg7d/mLY/LT3EfulesGfPe7QL4f6rVM9hTiBRiTg4tRT?=
 =?us-ascii?Q?VLONK9PlSwLKiClUyU0xl/g8nCWSczXQC//Wr4akmUNVMGZQ79itl7dBQUPy?=
 =?us-ascii?Q?3sOi89z40T5ydoFYlIC0Vgs4W7DXgOIEuRvwRCBV7SiOCUCIudBiSk6GE8QL?=
 =?us-ascii?Q?+jqIXwbniWSjVkgpD08kccQZI0jgAAnKd5/XBVwXPmsftW5DcnOUHx5K2OY4?=
 =?us-ascii?Q?oN+MCUdGAVMbJtAxd34jVnyUTD1l9QsUAvd+ocJELEYLRy/fppqmgU2t3KAC?=
 =?us-ascii?Q?PIJpKEaPXZzDW3LfdjPFjFV+OjKf2cFuvaOdCdJheBLWR0stNR3KIVRZPC/S?=
 =?us-ascii?Q?B4hYtHnNSxCgtWoQbXTPnxIZcp6To8MKKyO/D5OQ+uwC7F2f4fFqkgUHiUle?=
 =?us-ascii?Q?NqKytbWX8+3B3V4djCqJVDncyLQpIxeEmMiFQ6btFJSJaWDl70Mol2kFJqkX?=
 =?us-ascii?Q?oeR/U1/dfqfhPP+K0KTBZCDY2/lywCVlLpNT5HA2XQ3i0hgqWQ0QiORTeC4j?=
 =?us-ascii?Q?Wx0H9BOn6TBGvlyttWSq6iBOzpCA99vzhJyUXf7M1gjAiFgu6Ti9dIzOP1kE?=
 =?us-ascii?Q?nLzbo6KBBZjW/3t39WGqmVDFc6UGm+5KKk46xutuELulM3YuSFMaP6Nq8JtM?=
 =?us-ascii?Q?MaygIfHGhLefdn2FI4+RQ6hWYI1wOGCBVyRzRIx9MZzQjAOuCt/jFDx4il2j?=
 =?us-ascii?Q?RIFiXls1uyCatCyIh8VWWfgwUMx5KPyh4bKFd4WR6pa6zQFwoTzf/PnaYDI0?=
 =?us-ascii?Q?HxjIKzvay6xNcWfOS/dnJDkXagH/358O6ocZBI05lV+herOcdmeTOpQb72+u?=
 =?us-ascii?Q?RQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB8452.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4389318c-98fd-46b7-8012-08dda7e3e15f
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2025 05:58:53.6525 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9zfnxCCSFZiwHhbMNtd8vIj/CJFzRhUEmT1OQuQyYMhTNdP5ebtksk1xvUGrNLhulEwRCl3xG5sd0z1cSqaN+7o11GV7uGyKPeAZtfbdJPA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5158
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749535138; x=1781071138;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0Elrtk0K5fgT082my7WTx5sRzOihIb3v+FjmoRhxhMk=;
 b=VWiIA9a2eISH+vzef7/dy9rkgh/AwNvaa9usxoJu7KQwDmdm0LdEUE9t
 J9bTKacJ++e1bwrNK45Q1ZPLWe3EiX+0wKu9Vj7sYoWQ1an0d242HcPVv
 ldDkCdDRFKpUJsqhNwc5malSBvesZJ+wRFvPsb9FPw/gULeV2V2iUS86x
 JCeX4cXePeDJQwmDbb0FbdjN39YSUniO5fBan/TbsaP3jIrurBuKNu2t8
 6zIQmgxXYTb96wgaqohPpLk+i43AT6SIk4z3uCgktb3Z9isF5yZ0bJRXg
 zr+IEhyI6kG7atba7pGvMkr+QjWDMoAiGJT0ROfdszbVTquEMYL76dOJ+
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VWiIA9a2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/3] dpll: add
 phase-offset-monitor feature to netlink spec
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

>From: Jakub Kicinski <kuba@kernel.org>
>Sent: Friday, May 30, 2025 2:33 AM
>
>On Fri, 23 May 2025 17:42:22 +0200 Arkadiusz Kubalewski wrote:
>> +Phase offset measurement is typically performed against the current
>>active
>> +source. However, some DPLL (Digital Phase-Locked Loop) devices may offe=
r
>> +the capability to monitor phase offsets across all available inputs.
>> +The attribute and current feature state shall be included in the
>>response
>> +message of the ``DPLL_CMD_DEVICE_GET`` command for supported DPLL
>>devices.
>> +In such cases, users can also control the feature using the
>> +``DPLL_CMD_DEVICE_SET`` command by setting the ``enum
>>dpll_feature_state``
>> +values for the attribute.
>
>Since we're waiting for the merge window to be over - could you mention
>the attribute the PHASE_OFFSET comes out as? DPLL_A_PIN_PHASE_OFFSET ?
>

Sure, will do in v5.

>BTW I noticed that in the YAML spec, in a comment we say
>DPLL_A_PHASE_OFFSET a couple of times, missing the _PIN.

Hm, true, will try to prepare separated fix commit for those.

Thank you!
Arkadiusz
