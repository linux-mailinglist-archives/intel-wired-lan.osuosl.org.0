Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C7FA7BC0A60
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Oct 2025 10:34:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 80B33417BB;
	Tue,  7 Oct 2025 08:34:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l4JTxKrnxpbf; Tue,  7 Oct 2025 08:34:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A313541779
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759826085;
	bh=Xs41EWnALBCo9pWmymd4QmY6vb/Uz3RRogl+l5D7PLU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mqEfry9E2UHuXYfpyJVHUi8mvr0EqbEu+L7Juo6DuB1Ydnnkh8QrMTYkbxIJR7YnE
	 2EZNi2izvG2KVulB9ltb1jMrBqhL/6aIEJbq0qKtZzZhng6d1nqG0NuK1DtY2zERMZ
	 aQte1vAkAtyM9nLWaK6Qlv+ABQwltA7+ocQFcHj0WJAbir7WluTQap+tl+3PgfmDsY
	 dJQKcEYu1jIFytZ2MBnUY7xw/W/Bu3J/Ay5hgIxh0N52IRfNRHPMv5aMK8f+WcRa9H
	 m1y/6gjB/vufCMvPNrXLE03ClcTof3egpMATB0ARfK7jcl2gwvK+YqN51N+Ats3+lc
	 xanOdI2agA1yw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A313541779;
	Tue,  7 Oct 2025 08:34:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3F027226
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Oct 2025 08:34:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3B99A81494
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Oct 2025 08:34:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gG0o60CWHQ25 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Oct 2025 08:34:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1255C816DD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1255C816DD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1255C816DD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Oct 2025 08:34:42 +0000 (UTC)
X-CSE-ConnectionGUID: YMPF8fIYRQCeFyaGx//UTg==
X-CSE-MsgGUID: 9laSYobZQcyyyiwYocruTg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="61920177"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="61920177"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 01:34:41 -0700
X-CSE-ConnectionGUID: xtty5bOlTjCt0bgwpOiwnw==
X-CSE-MsgGUID: Hm2XtTtYSym7TO5PoP7OBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="179764458"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 01:34:41 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 7 Oct 2025 01:34:40 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 7 Oct 2025 01:34:40 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.27) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 7 Oct 2025 01:34:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uzKkrIbARgkh/EX5IZdjt11wmDtNX1ZTu2i/LxPDAl598xTVuubGQI0noBW+kV93VXtS0A2H2OOygnbhRx7zssgQIi9JWbE+1oWBu6cNV1+7W3/ddthdls9QT37EF+epGZCJBCJJEyDhkDtSzEg2BicWXQXKdFP+fUna2CIQ57laIp2d2pbNaHoi3g4z3kA5YV2gLf9FwYEx0dnSaj3S7+teBow+canE9k9MymM4u9WaFoNc2uRYAHky7gtIsCGfuzBBhz7K8+F6m/prsNZslgQIgxbLLApgsdJqqICSUIMlc74wcm8pFHLrv07mYhGX/34sLWc1Rah4jyFtLRkqUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Xs41EWnALBCo9pWmymd4QmY6vb/Uz3RRogl+l5D7PLU=;
 b=c9OMOf8J9c2Y3qUPcpURGsZsE3AbBHDHKA7FcgXqGxNQVak6boCk50QGb/BcChfwPcq16d5k/VeqEIbRWDqMtG0v3UVfIHk4IZvAN5zhLtcpTNsjgcC9UM0l9T4TFB3ahwjctdYPGBlEgnX9XfyuKDTgSr+jPWLFGLl0FDw9JPnchVbCaMHVFDmMg2ze7g6FeJZ94wAUCvlCLQXDvo8qKFxnF5GWaaU1mYIkCzV3qb8DTfaFCiJN+5I4ISs0rTVvsJ2dSGOjpystSEo2EVnogrBViIJqcSb+DlVN/joOTvqWMPMM0RSYgpHl1hiwJnbxtLLYPwHxAaE9S3gf/TCkVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by IA3PR11MB9013.namprd11.prod.outlook.com (2603:10b6:208:57c::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.19; Tue, 7 Oct
 2025 08:34:34 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9182.017; Tue, 7 Oct 2025
 08:34:34 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: Kohei Enju <enjuk@amazon.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>, "kohei.enju@gmail.com"
 <kohei.enju@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4] ixgbe: preserve RSS
 indirection table across admin down/up
Thread-Index: AQHcKhkJWoXzl7pM5EqRpHNSC6xNOLS0644Q
Date: Tue, 7 Oct 2025 08:34:33 +0000
Message-ID: <IA1PR11MB6241D8B141819B59034B8E428BE0A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250920102546.78338-1-enjuk@amazon.com>
In-Reply-To: <20250920102546.78338-1-enjuk@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|IA3PR11MB9013:EE_
x-ms-office365-filtering-correlation-id: fd60667f-3da0-49d8-3672-08de057c57db
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?cHm0R0EzHIw6J4gLqrcd+BedkUSfFrn1liLC6U0twkMlZ06V7h1LC/EtNHP0?=
 =?us-ascii?Q?nTrGeyBgFhQaS5UgVctV+6VWNGOp/QQRAtdSG8N455J/Nyot5sfoDBiv8o7e?=
 =?us-ascii?Q?SHEkOsfYGxFUkk/HcNbfUlmhLR/Y8+p2fZMiEKLTKDXMTLvvdhKsirp7XWsX?=
 =?us-ascii?Q?H3Y3nBbk9JC0kKiywE+VuoKL3LTfT4kJdYEdMI560vuBnCTfHC/lTswWN2YT?=
 =?us-ascii?Q?UGPQqvauqLZ3NrnvYcmZhmFnK9jFx403gHWtAsTYrmklpCcxwvYiWGeDnCU8?=
 =?us-ascii?Q?Au8dEu9cfvD5jaufg/IuX4YCKjEY4blpMXEtNMJhQoqw4cussDe5tRKe/ZV/?=
 =?us-ascii?Q?dnr9fINMedeVmIMyhw2KawTlbXTjGb6YTl8KSJtD/8Xn0Yuww3M5wUPJMwau?=
 =?us-ascii?Q?7Vw0C837Vj8UIYzNr5T6p1TCIpSUx6f3BPZjaID0DCjvLGo2letNSjIfzRws?=
 =?us-ascii?Q?wbtwM7HdhqH1Y/rGPbCMbc2VHMXuX7SAlJ9UUk9lNKnHc6HDMGBvAsyt9FDR?=
 =?us-ascii?Q?UDFz5nDHN4ED6uL1rSMVyut2fDcuK3K2EkzQuBpvJ/jZplfraqW3hYflLrHU?=
 =?us-ascii?Q?gOdqHsMX6iIytlfc0NFSu8amwgVZ823/aVOYrc8+tcbJzoicBJjXtxsvl2WK?=
 =?us-ascii?Q?ES/mZPNmPBdbJs+zSy2uNKvechC/yZ1KBYiT1zxU3c6r2wJSQK9Eo6qQb67+?=
 =?us-ascii?Q?MFXfaqBPJKjdbT2tUgVXbKW4wWnjs6YyOJ7J63hZCYaPw/78dHeJ4fEo5ULf?=
 =?us-ascii?Q?SEhoRotWdx81aKeM7QdtZmgQpy/33ILBZ25TLg/y4At2XdR+WV1EpYZfvmC3?=
 =?us-ascii?Q?EWyVnlVIPnoadgv+ab+MIpBjGs/uDNUOoR/jScYURUXFxvwEae0bd2ZSA8tt?=
 =?us-ascii?Q?0TI2pkgA9MDKOvUtXyZ95ExkE9ZrxiuZW7YFTzKIy1VpzLdaWrDSzPZH7n3c?=
 =?us-ascii?Q?w/sQaRu1ZKA2U2u4ySk/8Py6Akp3f8olcrL5doY9i+NSbR+Y1/FxduykkpEU?=
 =?us-ascii?Q?SbV4zo+UWrIw7lIcegavPERlg+LkYHI7pzJCHJM4awqLbtv4upuZnpT1oYRf?=
 =?us-ascii?Q?NQ/z1uEQ2f15HB9P8WXMBDuatHH2jKHbrpbwedn5yATTgtHfmaPK9J+SO/Yo?=
 =?us-ascii?Q?9o2LC3XPz5YfegVG7OJRuDCjfzNHXJSVcuxg1uO8/FGlBSrKMQBY0M7cAqQE?=
 =?us-ascii?Q?zVFGvqvfYnVONBW43J/Vcnsdc03lRB8FQ3doobcUEbVTXPBwK62Ls3iol69F?=
 =?us-ascii?Q?Z3qo/FEnAsw9y2NKh0HNpI5Ry5zJjVWQgzZUf+ZTuhfwhRzV7Crw5XVPZ2KV?=
 =?us-ascii?Q?T9OruNqAC7hwyz6MErahasXCAe7TKh/IO3x0HEFVnkF+vQmo1JjTansJL8Zr?=
 =?us-ascii?Q?iaPzOPM1JJleEosY5ZiSE0iwf/zi6LwNFmYXDSutCOu5KRXZXZEm/ZZRbHBq?=
 =?us-ascii?Q?pwFsWBhyWKxMCmfRUF/fD4j1UMhelTwAfqxazN8Dgns2smDBp7sl9KOwWJeK?=
 =?us-ascii?Q?GnTIKSNlywpLUX2rF+zhiXkM0tR0G+0s+9vYtoLY8z7ro32XsdlMBYR/vQ?=
 =?us-ascii?Q?=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?M7zRR6bVi50n8OTPwyVqWim2ei0cVG/m/R6RC0fV/9DjQXezAIe20tbEmE8t?=
 =?us-ascii?Q?iYhrtGOzw8IU+ZP82gUSiYz1tNfWOA+oi8dL4eprjv6YRfwfKdxDKzyQGnxE?=
 =?us-ascii?Q?ebTTbZ48rro+xE/QUryiqUXxymK2JRmVr9m96KW0QeTP/4hzqwuCCyOIRPoV?=
 =?us-ascii?Q?PfnwavAPqbri8l/H/w/8UCykEK08YkHqkC/fstVtA5bdjCeDlWHll1AM9OZT?=
 =?us-ascii?Q?P9+NS9HY12OGoJ66jaA7ttkGmtSv+UxT5yBzMIeiiM+raYmPi5z9i7I2qooG?=
 =?us-ascii?Q?+y+bJj7/QZki09j3e6UkgGy4Y/n+r7oGgn2HRmpsFl8QeqzFgWoNKfUkx8nX?=
 =?us-ascii?Q?kvZ9nVE24LapaVt/wsB6t7G/6tZVkvlNTOvNgYwRRxlaH8NQkydXDCE0gpgP?=
 =?us-ascii?Q?lMfSsYQXJyHDs+fRVUxGXZ3Q4eXjvk7czrCNKi18YrKKLVRIyJQBpCLOX/rL?=
 =?us-ascii?Q?TortkBFAhCCCeidZepvKvhC9rk3J7NjdYubgsIRn7rZaKFibbdwbpXCVpSWd?=
 =?us-ascii?Q?tyv3nwPfL3LjpsSeuLx8UFZdetWtX0C2yjLE8eV+9ZJTXh4TNUhSui+iGZfJ?=
 =?us-ascii?Q?06jQH5jvv/+3wcChVvcMY8atxnXKsUv3UQyPYwhykz3EVevEgApIHiN5y8dt?=
 =?us-ascii?Q?LMcdf/GYT5jZ7vRNJxHqGH2HZBNKTNRdah3jc94As4BwzmjJKU7Bc52R6+Nu?=
 =?us-ascii?Q?m1WC2jedHcFSzuZ3w8JfbEd2+0ZiG9S/XEubDdJbHDF/MngktAFShGBOb/PL?=
 =?us-ascii?Q?zuh49/9H8YJXFRg91SsC+Pt71vdPyOth0VLrNP1x/CuabCBigpK8vgPU1vwo?=
 =?us-ascii?Q?gf0ahXp9vJaaB3ZYmKlBFLcX2T2j9qdqHa24U24GyWR7PwyJgNPGWaYaMxpv?=
 =?us-ascii?Q?A0BrtkjZoNFUcB+WlfigPNIfQ8RgfWLftDgZ3dTALppJzgeeVeE1CDL4QSM3?=
 =?us-ascii?Q?vrwYSP+Y0RetySB7tM9607wmoWvHxDLdMvum0QDHUGQQvIOhWSg0n6WWdGAs?=
 =?us-ascii?Q?kbkyeYhy2QGDrz9iAut9e++IqdEOo7LRIqwi+w6exyE2D2pvODtxDwJgFkCI?=
 =?us-ascii?Q?x5fQW0gxCBZaFon5qzcx592sJAJW1D3dhBPawCJt+GWaoMoY5gGrfezCRBnH?=
 =?us-ascii?Q?qiNh/heTiu6oqkc5WoAWm6j7/ZrTksMmDmyYJzSX6j2aKyx/QjWg1YUqh9OC?=
 =?us-ascii?Q?xsc6T1EZ4DMY0a2n12N9YeqzSRP/JK2kS6hFJqk17lVdU1Xaxb0ysSZcSGn2?=
 =?us-ascii?Q?JPxZt5YHIPl6h/1zKG7/6tmKtqh7Qn8b6LT3/noidgMWsbe7B1Pad7JocHOC?=
 =?us-ascii?Q?yLhpQu20Drc6mdnLuYwPH5G6ehljeYqGo2WAAuv91uHTHCxk9CCUiPtSsDYj?=
 =?us-ascii?Q?4mC44Rho5I+daBMEHI+DB6agFFY7/ZBm8i51s9RgpIssVT2Lb9dB0fmX5UiK?=
 =?us-ascii?Q?WdiZquCuUnI8bMcbe4vtTGH2GLXsJ716RXOCz/thMKHOUqla/ZwVsuW7weuV?=
 =?us-ascii?Q?fUhj279KpLj23VwBsG54/tyGJUzuqrjZx2S95DoqtQmB6wWc7E+xALSHu4Ve?=
 =?us-ascii?Q?oySMO6ry+0G8sLNKdw7rGo63r2dv3n/B2vMgNpob?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fd60667f-3da0-49d8-3672-08de057c57db
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2025 08:34:34.0467 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CxXVWL+ICEHL1uH+AuPD32EcuI6FfBDQ92DuEVj0szWHmgKNf1Gr79PIn/eBqQZ5HqJBtqUJT0z4NWDTVWZEAw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9013
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759826083; x=1791362083;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xesylYVnk5iNyt6PQvO0Nw7aJXT+2qPtJPtik7HtqZk=;
 b=VK4oU7/ewU7VIXrY93AaLGs/CtKWWApV4vaTv+q2jZ94SBAUMX/Hk9c/
 o8qUi287O2wfe7LpvnnoZX5k85GB51tQ6oxCt2C+RMncJNl7yJWyD4RvL
 FheISY6W4xOcmgnQ7cNkkB02+ecNcpfdXVHo3q7Ot9a2FyOBbKxbbzxcc
 CaSzdnKtIH20tFYP2yfGnnKhOjYPZRTN7F3oRHFQBr/wwl2bXbu/IW4S8
 MW9egHyvYV+hdQaxZ/pd2PDIOegCxSA6xDmny2oWyXkLsXa+vVcyJF9NH
 mR0O2ARhxYCntxKVgSjjCCrlRKEjynrdkNVXElaE840seNu4Smj09NRZx
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VK4oU7/e
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4] ixgbe: preserve RSS
 indirection table across admin down/up
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of K=
ohei Enju
> Sent: 20 September 2025 15:56
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <=
przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>; David S=
. Miller <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub K=
icinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; Loktionov, Alek=
sandr <aleksandr.loktionov@intel.com>; kohei.enju@gmail.com; Kohei Enju <en=
juk@amazon.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v4] ixgbe: preserve RSS indire=
ction table across admin down/up
>
> Currently, the RSS indirection table configured by user via ethtool is re=
initialized to default values during interface resets (e.g., admin down/up,=
 MTU change). As for RSS hash key, commit 3dfbfc7ebb95 ("ixgbe:
> Check for RSS key before setting value") made it persistent across interf=
ace resets.
>
> Adopt the same approach used in igc and igb drivers which reinitializes t=
he RSS indirection table only when the queue count changes. Since the numbe=
r of RETA entries can also change in ixgbe, let's make user configuration p=
ersistent as long as both queue count and the number of RETA entries remain=
 unchanged.
>
> Tested on Intel Corporation 82599ES 10-Gigabit SFI/SFP+ Network Connectio=
n.
>
> Test:
> Set custom indirection table and check the value after interface down/up
>
>  # ethtool --set-rxfh-indir ens5 equal 2
>  # ethtool --show-rxfh-indir ens5 | head -5
>
>  RX flow hash indirection table for ens5 with 12 RX ring(s):
>      0:      0     1     0     1     0     1     0     1
>      8:      0     1     0     1     0     1     0     1
>     16:      0     1     0     1     0     1     0     1
>  # ip link set dev ens5 down && ip link set dev ens5 up
>
> Without patch:
> # ethtool --show-rxfh-indir ens5 | head -5
>
>  RX flow hash indirection table for ens5 with 12 RX ring(s):
>      0:      0     1     2     3     4     5     6     7
>      8:      8     9    10    11     0     1     2     3
>     16:      4     5     6     7     8     9    10    11
>
> With patch:
>  # ethtool --show-rxfh-indir ens5 | head -5
>
>  RX flow hash indirection table for ens5 with 12 RX ring(s):
>      0:      0     1     0     1     0     1     0     1
>      8:      0     1     0     1     0     1     0     1
>     16:      0     1     0     1     0     1     0     1
>
> Signed-off-by: Kohei Enju <enjuk@amazon.com>
> ---
> Changes:
> v3->v4:
>  - ensure rss_i is non-zero to avoid zero-division
> v2->v3:=20
> v2->https://lore.kernel.org/intel-wired-lan/20250902121203.12454-1-enjuk
> v2->@amazon.com/
>  - s/last_rss_i/last_rss_indices/ for clarity
>  - use modulo instead of top-of-loop equality test
>  - use ixgbe_rss_indir_tbl_entries() instead of magic number
> v1->v2:=20
> v1->https://lore.kernel.org/intel-wired-lan/20250828160134.81286-1-enjuk
> v1->@amazon.com/
>  - remove pointless memset() in  ixgbe_setup_reta()
>  - add check for reta_entries in addition to rss_i
>  - update the commit message to reflect the additional check
> v1: https://lore.kernel.org/intel-wired-lan/20250824112037.32692-1-enjuk@=
amazon.com/
> ---
> drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  2 +
> drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 45 +++++++++++++------
> 2 files changed, 33 insertions(+), 14 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
