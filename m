Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 37908C8CFBB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Nov 2025 08:02:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CEAD160B1C;
	Thu, 27 Nov 2025 07:02:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JTRgFYXTvUh5; Thu, 27 Nov 2025 07:02:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3694B60B08
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764226930;
	bh=Nn4rhkVFD5Inqs2Mi19kGQfcvGI+KjFHQAP7Zgq0Yyk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hOiPOrjC+vQuSv/JADAdom2JErcJhRZmAtWGer2CCqEMOf2N/gHxxlL6VXByf9NMa
	 r956WFgApmeIt8Jh/TK25xFyQKXDjPlP/y0RHS2MODmi/3+h1n968dZ0Vw8ja375OI
	 tKqNlHyxa7wXdcXO2xN592pawFFMeZVrDdTVa0V5nbo744/N4VKgdqJULaLBygyAmZ
	 N0CHBwAEeC/jmhx0sNhZZkmf8NlDIUCCxU7qISKetnHrUY9UA1UiI08YiQIHPATHOH
	 muPGKtb7O1+6K67DYZnX8+/aZlnbpGgVlXTwAc49Rurz/YtQvd0oGRB3cMqqT+z7Uk
	 S4jqncViE7cbw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3694B60B08;
	Thu, 27 Nov 2025 07:02:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 57485708
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Nov 2025 07:02:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3E28F40937
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Nov 2025 07:02:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xrgQKO4II3s1 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Nov 2025 07:02:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8B0C8408E4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8B0C8408E4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8B0C8408E4
 for <intel-wired-lan@osuosl.org>; Thu, 27 Nov 2025 07:02:07 +0000 (UTC)
X-CSE-ConnectionGUID: 95FjGs7nRRuAimjYKim9eA==
X-CSE-MsgGUID: r+1thAJURFO0681sZtOiCg==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="53838521"
X-IronPort-AV: E=Sophos;i="6.20,230,1758610800"; d="scan'208";a="53838521"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 23:02:07 -0800
X-CSE-ConnectionGUID: /F6O1CwCQnKzVf7TlB+zXw==
X-CSE-MsgGUID: vEIMKplMS2qmoVIhUOU/VA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,230,1758610800"; d="scan'208";a="193966926"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 23:02:07 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 26 Nov 2025 23:02:06 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 26 Nov 2025 23:02:06 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.61)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 26 Nov 2025 23:02:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aCJI2B3E9cU0M5LLKIvTp5FQgCo30Js9GaRww3andR4Cef84yusDgvWmeL5VQGIuwCoxyD0OAp8osLmP/YWkmpp4+MQD1yXxPz1U3qeYkoWjt6ugjm1npf4bqGDrQ5v9BHHYSI+yNfx/7ujR6NgwPsYCVdjiNU8/zrjaLZgi3NQeKUyGwpaYxMNJOIWBCufxqGgz/ySvxS6ROPf4FLHEycoZLdxXwmZ8KfpFcU3RoA9kbKX4AquZwLqVA+QkrhPaY1L4NH1sA2KKwnKwyvJVl4TPnFBWjP49Ba20XYWN2wdyS+50GbRY2+4PvUKkMpz9BWf1RZUPcVhRb4NVTh0QkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Nn4rhkVFD5Inqs2Mi19kGQfcvGI+KjFHQAP7Zgq0Yyk=;
 b=jgcT9890k1BTNS3lEy0Uv3q+x0A9snasgwB+ju1Fyx+vs8NcwsDIXXh4hHAlHLSRwmDjaYGTDbp/9mIptLWcT+tkP8/LKtyIfQikUWEQU2mRuZhKGownFY3u7pq/NELD0NpAH8WQvM+48xkJap8vstmA9r+84aRMEukPE/tBHhS4AdDA6NouwIKw5OUJTpPGJRgbI9RCP4rDSRpwnL1wNyHw15OtyNltXIi4uCOX8vzfYF8lnKYAb1FFgZc6JXMA7k8+/rylf1Ez0iuFOjw5Y+Dxm5TeJ1dwV1uUWd03+Ahfz16yBDA6kP3OvqXtU3unKT0CYxk83WLm4tA+Vz1D9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DM4PR11MB7277.namprd11.prod.outlook.com (2603:10b6:8:10b::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.14; Thu, 27 Nov
 2025 07:01:57 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9366.009; Thu, 27 Nov 2025
 07:01:57 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "horms@kernel.org" <horms@kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "edumazet@google.com"
 <edumazet@google.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "pabeni@redhat.com" <pabeni@redhat.com>
CC: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 1/1] e1000e: introduce
 private flag to override XTAL clock frequency
Thread-Index: AQHcX1arbuTyFdkjc0umf07U/pyY67UGFlDQ
Date: Thu, 27 Nov 2025 07:01:57 +0000
Message-ID: <IA3PR11MB898649A13E7FE4FF54F6601AE5DFA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251127043047.728116-1-vitaly.lifshits@intel.com>
In-Reply-To: <20251127043047.728116-1-vitaly.lifshits@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DM4PR11MB7277:EE_
x-ms-office365-filtering-correlation-id: 495f59d2-0eb2-4bdd-7720-08de2d82dabe
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|921020|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?OYpeGCM+KnzOytnASssrfUJQKQGu+GTlszsafvY9o4wE0CuM9SD6oOIiSRVr?=
 =?us-ascii?Q?0+RYgu7Cf3irk+0MXpJhGZWxWwqjk2rsFG0He5NmcH+geLQP0sgc37DIduJn?=
 =?us-ascii?Q?zIQZCfY+jh1gQ71aT4HNQcS+VNBeMGJLRHZ2+WdKeg5OXg5uhcI3PoPh63eV?=
 =?us-ascii?Q?qL93H4grlAWPOvEF1yWyeL4N7SlvLA972CY13Iuapojba5FXzBn1yLJJiyz+?=
 =?us-ascii?Q?K7hy3L0YoQ/uEMyQFU1YTq01hJ6SeY8zhUjUTAZrzn7XooW1GV8EYVxsQfsN?=
 =?us-ascii?Q?lzipAE51VnrArq2Hsf7nK9v/vZCxa69sJGwuvmzxPuoJJHPg18JSunwccijt?=
 =?us-ascii?Q?1kvV/Q1yKp7C+dPmQX1rtNIGcWPOSHWwHkx3XB6xDp64bZAZLx0e3e/jO2Qq?=
 =?us-ascii?Q?Lma8p8TjuTUX3a+Bz26eU8e8l21ZtirQ6CgF6VW0ZpPEyZQ3zrbUtfvnGWF3?=
 =?us-ascii?Q?nJyU3IiSG6J/MI7/axt0PoiUJSEEZgLAofFh73qdXBXWJX6zMML9X4cjKJiV?=
 =?us-ascii?Q?/Wfj8mVdWmNqjeD7bbU+GOILZHtmJ/1IS98szWPZ8U2Uvt9gJYjbvy3fY4ks?=
 =?us-ascii?Q?jtgh4uovVUK8yWOgPfVADZufI0nceK0iksBFtvK2ETToha/GwmAjQsxWBWHZ?=
 =?us-ascii?Q?A5Zh7blo/qZWEXh22DUpEOxp12FSmCSbR/R/CI3EA0H7jgUXgEVRsIxCDy7I?=
 =?us-ascii?Q?zccWiWWdD1/ycLyhHZoGWwlL/gJZeVhFrNCzqPQZZ+u0xBEVPRrwYVr9T0s9?=
 =?us-ascii?Q?jb4eRtlPKFduLhb/kflB3Z+ygSM6grM+zGQTr/d2H+YukgvA2f+bw+CsRenE?=
 =?us-ascii?Q?H9oACu4RCUBlULnlK2lEjx9XRIXOVP+f3+sap6aOTN/Dji7NhRgw5GKirEzr?=
 =?us-ascii?Q?YRpcYa1ScVvmYwupdXXTrt8pTCjoX6LIlyynbJRAKRFPEgBtc6SCKSgCXK6x?=
 =?us-ascii?Q?CsWA14XBumtMf6LeXEhQuVSNnQojO43qWx3GKfFwHBeXrNAXUw7/J7jA2EH4?=
 =?us-ascii?Q?mDP+Ewr4mhUVNfrJasQSdE65YNzntV835H+FmQFjSXML78etmG5SZPsU5ajv?=
 =?us-ascii?Q?+wMLT0MYNZPKjc0gvb0dzza/Ky+ItGaS9S4584PcKna2VY0MMPoMFYjXA0ng?=
 =?us-ascii?Q?Q7X7/o31rsLUYZfReNwXh0bXfYJkB2M3q5qCbS6Zfaf8apiyjOwuEcCVL6D8?=
 =?us-ascii?Q?OMw5BhW63p2LeANGJb0TXi+I7/dgnYY9sq/6oSfZreRoKdlDqTR/LMLVs5cp?=
 =?us-ascii?Q?NIvQXJyvQruqQ8CTc0cDY5ScgTQlV8LjixgZe1+9x9P2O1YuvUsge+qaAv0p?=
 =?us-ascii?Q?E8YL/RVYZ3E6sZHQ/ZTHQ9tHGohn9oQv/quQmLDOnX0U4Y58m7SDvd5+UWpX?=
 =?us-ascii?Q?h5ly9zGzlqzADsStdOxnl9k+0JOBCArXtd8LVyFIIGCELgZOeWCLoGTX7DPc?=
 =?us-ascii?Q?w6/yIxrTWsRcLHI14b4civ2qOjELO/TVL84HUN+jD1z6MvMN9r2xJPvcWYIC?=
 =?us-ascii?Q?EXO/a31qRRLF0NomYQQ6g2pw/IWQsZBhOz8Ief72bdcRBrtxOV0xB8/NeQ?=
 =?us-ascii?Q?=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(921020)(7053199007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fvUhG/DYEgDPbifJyKCQahKG/Vh3rREHZIZ/tGwhcthCainSHDj635BNpJLp?=
 =?us-ascii?Q?QorsOvEjJ2pTJpoqCXGCJmhPTJTbyIxJRycCvdLVFYrZYL/oUyZs7ubLegxT?=
 =?us-ascii?Q?6toaBiC5VvP2u/1widOaAw41W+MSDeVpAp2AUgntaSvapUexdprsmcsEENS2?=
 =?us-ascii?Q?n+4d06g6Csw9hay8SFViEJEayXSi8wbA8P/imXcGEAMnA49HRN6cBLrHW5na?=
 =?us-ascii?Q?C1ZmH9oaRAjyMJVmQNZJ7PvDdkozPubcBKFKNoqxhUXlkXvJEiGC/gIg/gMk?=
 =?us-ascii?Q?d6RpnbhV97VgtRtpnd01M/pxYsNgxB0cN3zi/khy3JUH6250TaOBwiEQFhdg?=
 =?us-ascii?Q?i4RlxwOdF/2FtG6An8DX24fILoBfFteWTLkcVI9v5llJvXlWYIVrJf8WJfI6?=
 =?us-ascii?Q?1Gb/Q8pXECxOgcf0EN0MTTnKBwvQYIZPsAHHTP7E4cRcdchsbo/QRFogt0eW?=
 =?us-ascii?Q?AuHQjv+/yWC5VVQ4TNDQlWc8tIeTH0T8CERN3VvF6z73Tl4giacc4eOAtXHI?=
 =?us-ascii?Q?Vc27sUvjmiz8ntOxFPxwOtj7fVtwh5pcNfGlgdg7znaPmUgo3/2hv9XFegAQ?=
 =?us-ascii?Q?OzbqkRhG1u1MHNcy2IqZUBgTmRoT1tCTk2SrWV8eONJ/Y8ivApC/aYqhsHNy?=
 =?us-ascii?Q?oN1na1k2HoonkV5ww1nT2lldPrUvnmZBEoFmAiM5vCOEQ/OxJ81mObaB8Otn?=
 =?us-ascii?Q?0AM7vpwuOe/ivnKCuAG7gwK42sRI1weVO44Um42CTNfen9PYExqr36oS9lTj?=
 =?us-ascii?Q?beUeQ5W+or53sv287iO64PNdYj1DsHxB1wJmbLN8lZoYRE2fry11sNQpJHuh?=
 =?us-ascii?Q?u/x05+n6J6s45hh0DYQbejrLXePDLOThhLGM5eUsOhnJTTIE+wZQW/E4cFIF?=
 =?us-ascii?Q?5nrX2VgoHeQL2ge7hn8BR+wMMmQswKqupH1LnL2uwNzIE74oHxYukunVZHGU?=
 =?us-ascii?Q?M5qeWHI3Gymu6fsg8jCi5ifw9HToznIRBjNbXotVCthJMVORh0X4NLOYQcjO?=
 =?us-ascii?Q?C+5Wm8ba2qRy4Gi7E6wgroWbxzegAuaMnAm0y+HCD+mUb7AVCyUP6ZVFlVbK?=
 =?us-ascii?Q?UZb4SdQaSYGrLLMBF/qbJcl6H6MAb/03V+uluPpp2n73Rsie45EukOSWq73p?=
 =?us-ascii?Q?Qt0lFA43g+l4LdfBgy8uAQ0R+7L0VyfpsbFRZ7R6+YrKtaeFZzURZpmVMbhO?=
 =?us-ascii?Q?6VDml0mf2K4gb9EKtDBNkC9OTlnwU/6rUeB+g5EpSCEtoCR+yslsWZgswg+z?=
 =?us-ascii?Q?hXg64eOpBhAu31A2WtavYoBbxOwzK/nfY34f1DWrgncCGJMu/yjU3hyraGYp?=
 =?us-ascii?Q?VsJE/PYT1360OALos4CFWH4+6z/HcsnbgVII9MGAQFO+88qWdgJ7PI4QYYHQ?=
 =?us-ascii?Q?/KuzxsyHz1OpIMH3TXAFRdsNoPRHf8WtYZVKPoGYqCnSbuxlxYTeiZPm5nnD?=
 =?us-ascii?Q?WUAIRQdAEDA/qZ7YtdpZHUXUFCVizNZeMa1NIPD2opnVS875f5Fv1Ep7l5JQ?=
 =?us-ascii?Q?xZ8eeQqmmj4bBY+n8YZL8Bk4A46D5k9uPLHp9qta2SXxmkvBJqMwZJO3u52h?=
 =?us-ascii?Q?m1a4ryU9x8i8itfoEN2s3w9W32ZbEWUwwvTakHBpUfrtWxph7tSB69NyFhZ8?=
 =?us-ascii?Q?dQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 495f59d2-0eb2-4bdd-7720-08de2d82dabe
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Nov 2025 07:01:57.1519 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lK28ehXIAvgwwrmrs59gjZpxs27DyZCoCTCBpb+NcMkFx1z2vuBY1pKrKjvRDKObBFacusmGuBBYHSmwXXIT9XqdnJCCGbFEGvJlK/A2ASw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7277
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764226928; x=1795762928;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=El8/MPaS4ewB8+hiMg2YrKHULI9A/WdNgYzS70JFzzc=;
 b=fq9psPrzuOqt/UJPfBSyfEvqVU4FdZF42zcAvafgMWag4zldF/EeqpBj
 xiv8JTYDPP+dGc1pXtWkPIMoizTIHvwt5OP6e8o+m6toKh6eaSSZMKzrO
 +DqgUUzcSaQ4BJ36N43MGlD3TaH1TXHBq8ZMVr+Ay6mYdNy1bHxr/Rf8f
 zfYtRE+5culSd+1Id1thYQ4mNCisZzhH8PJidNHaNrbx6rVi+eWU2l6Dl
 F31Pdb60ILqcj3Sr3lbmPbFlOCMUG0O55+TnOTQPLnGqSh7LJMQLZX6R9
 6WTEYPOkLzN+xHpp6SqiLkx+TqSD81EXF35oQZIpM8KEnWkSa67s8P49x
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fq9psPrz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/1] e1000e: introduce
 private flag to override XTAL clock frequency
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
> Vitaly Lifshits
> Sent: Thursday, November 27, 2025 5:31 AM
> To: intel-wired-lan@osuosl.org; netdev@vger.kernel.org;
> andrew+netdev@lunn.ch; horms@kernel.org; kuba@kernel.org;
> edumazet@google.com; davem@davemloft.net; pabeni@redhat.com
> Cc: Lifshits, Vitaly <vitaly.lifshits@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1 1/1] e1000e: introduce priv=
ate
> flag to override XTAL clock frequency
>=20
> On some TGP and ADP systems, the hardware XTAL clock is incorrectly set t=
o
Please expand platform abbreviations ("TGP (Tiger Lake PCH)", "ADP (Alder L=
ake PCH)") and add minimal test context (kernel ver., device PCI ID, FW, ph=
c_ctl version, and whether CLOCK_REALTIME vs PHC was compared).=20

> 24MHz instead of the expected 38.4MHz, causing PTP timer inaccuracies. Si=
nce
> affected systems cannot be reliably detected, introduce an ethtool privat=
e
> flag that allows user-space to override the XTAL clock frequency.
>=20
> Tested on an affected system using the phc_ctl tool:
>=20
> Without the flag:
>   sudo phc_ctl enp0s31f6 set 0.0 wait 10 get
>   phc_ctl[...] clock time is 16.000541250 (expected ~10s)
>=20
> With the flag:
>   sudo phc_ctl enp0s31f6 set 0.0 wait 10 get
>   phc_ctl[...] clock time is 9.984407212 (expected ~10s)
>=20
If the XTAL override is applied via a devlink driverinit param, this reset =
is expected and should be documented.
If it remains a runtime privflag, I think you should explain why a reset is=
 required.
I'd recommend documenting the reset requirement and user impact (link flap,=
 timestamp discontinuity).
/* Add a short comment near the reset logic in code and
   Documentation/networking/devlink/e1000e.rst (if converted to devlink par=
am)
Or Documentation/networking/ethtool-netlink.rst (if kept as privflag) */

> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
>  drivers/net/ethernet/intel/e1000e/e1000.h   |  7 ++--
>  drivers/net/ethernet/intel/e1000e/ethtool.c | 39 ++++++++++-----------
> drivers/net/ethernet/intel/e1000e/ich8lan.c |  4 +--
> drivers/net/ethernet/intel/e1000e/netdev.c  | 18 +++++++---
>  4 files changed, 39 insertions(+), 29 deletions(-)
>=20

...

> --
> 2.34.1

