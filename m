Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ED33CAD785A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Jun 2025 18:36:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A9B6060E2E;
	Thu, 12 Jun 2025 16:36:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1nLUO0wxJKJe; Thu, 12 Jun 2025 16:36:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 03B9C60E32
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749746182;
	bh=jC9DgfaIAVUoFzVqwIA10pBup5fkyn8pHI9cZTePLiI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JgOWF5P6tb2+ZRfsRe9Z9SYVrpW4zG65qnJJ1MmszqZyO2XW+p0K8eToUdWyL2pfS
	 1a3HKYunjrZy0k/vf6ZKXCoRixhIxZFcATshTFvMC5tuvZQEbYQIaAB1iWZv38hG6p
	 kue7t5EeFJ3PfXImnkM05MuMr1X7ajkfjkvVEzQWrsxwgjatc4cO2gCmjCnnoSDCBm
	 z7sIT7zkTJHNbYNW+olOgbx8weEKd4d2s6a0Ypq+WF1wUHw/j3zatSCQe0DyqP1llg
	 LbsrIi8lbRi0Qo7EzCHcp5+85TY7v8NgJfJDd6xosXhukxd5Vc63Xu45i1UVCfSpZA
	 AJ9Prr1h7hpEQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 03B9C60E32;
	Thu, 12 Jun 2025 16:36:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id A5EF01BD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 16:36:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A361D405E0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 16:36:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qrBiyCtRDvzz for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Jun 2025 16:36:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E98804051B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E98804051B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E98804051B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 16:36:19 +0000 (UTC)
X-CSE-ConnectionGUID: 0MfAkZr7QEiTIPz4qo29ow==
X-CSE-MsgGUID: 6x1SOWzXSKO5Mu4BBO6AQw==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="63287773"
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="63287773"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 09:36:19 -0700
X-CSE-ConnectionGUID: 6xXzGXNbRYiyqCS/2XrS9w==
X-CSE-MsgGUID: JG2jgJnaTm6WYUGHOH5FXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="148457613"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 09:36:19 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 12 Jun 2025 09:36:18 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 12 Jun 2025 09:36:18 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.77) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 12 Jun 2025 09:36:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hymNVPpSOQEYCQ67yI0I4zPdyHEDiqv3QyXAMYBc1lxLGT9qKGYp6dw/QEkSUI5AM5ncIYmsL4SpOHKwf5v9w4F85Zplt1hvCkHNy3q8gkNfcgVKyFq1ZNtHce5rq1krQCJRx5B5Cw/59YXFStjzyBJGPIsJ3fMDo/sjir2ccXE2r3zqugt67VS5Y4AuzqtWmJx4L6r5z///dyuUBh76eUvpYdOtaSLqyE2IMicF91tPcsvT+yeSmXTi/Bg4a/W9Io9v47jd0Ro2hTM73lUp4lykuRZWtUsL/hG3KRkY1BTSsHhysJN98U3qvvx8fFHQ0JlJbl4byrzH1VgSgyh80Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jC9DgfaIAVUoFzVqwIA10pBup5fkyn8pHI9cZTePLiI=;
 b=h7nr9TKKeKm4DqJy+tzruhdRLHsaJ9mJsEJVa8Mx9Qvu9SD7oMgPh69cPUpbk/QEDLZNepiNrdiP5OEVJu1sVaqcfdBtyVfW0OU4sL2wff/3IOI0mcGux5D6/gxiBb8p5jS2Z8GhQG6NywV5gBS5j3ciDpZeyDtjPRXzp4X0LcGVkkHD14714NROx1LPKeAxOMEI0lRxxnsugWnLEvoL8UK1tB3feoGy0JTCul8b3G8Ohi4LZi4h9AEs2E3PE/THnf2mo5IOy/zHNda0RTkIG4Cm9rRatDyw87jYt0XYTJsDXjquxgkYFVsh3O8EFHTLf1lHKc3nZ+cKRkQGRf74FQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by IA3PR11MB8917.namprd11.prod.outlook.com (2603:10b6:208:57d::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8792.33; Thu, 12 Jun
 2025 16:36:16 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%7]) with mapi id 15.20.8769.022; Thu, 12 Jun 2025
 16:36:16 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Kohei Enju <enjuk@amazon.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Kohei Enju <kohei.enju@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1] igbvf: add
 tx_timeout_count to ethtool statistics
Thread-Index: AQHb27V5jzPO51Bl4EGYzixJ9RLb2rP/uMTQ
Date: Thu, 12 Jun 2025 16:36:15 +0000
Message-ID: <IA3PR11MB89867EC734772F4562F67564E574A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250612161630.67851-2-enjuk@amazon.com>
In-Reply-To: <20250612161630.67851-2-enjuk@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|IA3PR11MB8917:EE_
x-ms-office365-filtering-correlation-id: 5b051eb7-39cb-4fb5-bd7c-08dda9cf4068
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?ZzCznzCKDS6NmoScjPFNsi759pz2/hPD0/VLI0T6IJy0hw3L419+hBNU9slH?=
 =?us-ascii?Q?MzKMNLC6qeUgz6yPqaowFt++rjo1du/kAp4Zu0YeFptn9wMJm1+CRsDHo3S2?=
 =?us-ascii?Q?xQysfoTbOj++XkHOpA6FmecVYrloftSGV27V9SOJ7QuZQrWJC46DcD+rHESM?=
 =?us-ascii?Q?YEf7tDMG0BO2m+Udc5pF3qBr6P3goi1tD4oUpYIM+LwcJ6bG1ku7inKs+VyM?=
 =?us-ascii?Q?i1bysFMRZqecjSRZom9snCeZXm1pVWKotp1+zAqcJaWI3SVu8aSG0x51/ci4?=
 =?us-ascii?Q?Yzv7N5IlxRvYkQvDaqVps3ZEBv0lcpt2muy/n+uw6uCFJmwkHQE8iQ/z70G5?=
 =?us-ascii?Q?FBmqYC7EQ4Y0IpOhdx0OlJF3X6uxBZzDpRwhKRu4Lb2Kw9e0RztqaK6yMExH?=
 =?us-ascii?Q?ipeOUgl5IwKtn3xQ9+ArVjfJOdXx51y+mBjgxcACX2f0KwQF533MvX8iL6ly?=
 =?us-ascii?Q?5IIflfVk41J46TKwYVANZ3gJwxkoLs9gJ2ETqwE0bz8cUsvkwCYg/ddxmFwG?=
 =?us-ascii?Q?1AJf25yl7W+deuXFH04ukP/0Njm7gfSISsY+PEh80+cwaIDLQdQWW7U+hTrO?=
 =?us-ascii?Q?iu8Zq6W+t0/4TK6z4TDNYj/WyedZ7ATBaPuwx3vxDPWLvZdKXEf/ZIygsn66?=
 =?us-ascii?Q?Bs37bARnjL863WSPOHk4O/TCmGP/dcu9d2FlEsbk4UieuLYqeVfHhgo7JtvN?=
 =?us-ascii?Q?ufeyd0CWwh4ySmAmSCPsqcntwf5Xh56j3tkDWK6aEczuJDps54qtWCvrAx7A?=
 =?us-ascii?Q?YMoiwzPd3xNV3CeD52+xkNS+h4HEZvFf04zIrl1gdJzXO468yejMXaErao3D?=
 =?us-ascii?Q?qLZbuKYkSOJufFL2KXyxoePIMY39z+jp8p3tvGczYGCMHejmSVNuhoiq+0cr?=
 =?us-ascii?Q?KGMLwSYtivD+/Wf/XcV2nsju6H6LhzFTqGzSRNOaAr+tkBXhoKjGwhg94QJs?=
 =?us-ascii?Q?xc1vj8DqVTW47LmEBacZ3hA54tab8o9V/MFEzcEe/7h4RT3Tux+lJMXv620i?=
 =?us-ascii?Q?Ii3n0Nk+axmDoYmabo6RZ+q44WILdY3V/xn5LiUXTYKzYgdnMoVuzeyUFIwT?=
 =?us-ascii?Q?7mCzYYdkiJCyJsCfc+Rb8duZVxH8+zQry+u0ZBmKr//jX+kZw12eUmkYrBaK?=
 =?us-ascii?Q?x3OytmFPNkbuFJzQ1cRWpAdyPtgSXTNueAiFcihTCGC8nvhBcc4onXwc1PnI?=
 =?us-ascii?Q?qK1qER0sbyUUitRpmReCxgvMJ2UgrD0oKKEldmvu1sXoB6mChF8VAKRYUuQO?=
 =?us-ascii?Q?HoMqGtyE7QUJtwbCmhAKgbw0KGe9ozfrBr/xCXJX5rJ/knkIL3LgDT8O7X4G?=
 =?us-ascii?Q?lrNsAzo/L3unwfY+lrQsL8yoNgFS0n1JPBP0xXY+6mgQI9EcJ3u1rUsIDRpg?=
 =?us-ascii?Q?1YHc+3c3vAAxiqEYkISd3h3b6pu7vHymT9CAvTzX3EsCRMPh1H8BsKQYjwWO?=
 =?us-ascii?Q?EhRQo2uG+tpI1gdEu8+3vVpqvJ3fmTFGVAfrPtqnTtjedzcUm/3ZyA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KbIQFdZbZUWPw7dGpM1dLnxGZlN+QDNxvwOJEm6C8BsIXZldHmsAzL3ro506?=
 =?us-ascii?Q?I58x3kDQ3zEG7sObtEhv4ZBAgFWC6gH/5zMWe2GIlXhfMxI4sQN52FQogdSH?=
 =?us-ascii?Q?7P9drFl43Uxp/V4W5iYqINWhU4Gssv2q6xYjkwafdi7H3RM1A9X+CgalZIqh?=
 =?us-ascii?Q?Yqduy5ubfkyC5bVvCMFO3T1XbxWlce/gnOJt8YATsaodB2w9NJSnCGd/E9F2?=
 =?us-ascii?Q?j+hiqRFmnmxhAsYv9WzgQe/5iTWRgetT+3PcRDPsI0USrK0OziDdf9CoU3Mz?=
 =?us-ascii?Q?OXTZc4bdxlUxM4CZdCl8ciq4FI9kdzjcFpJUrkTmCSUVp+WuDZH2JmIpPTfN?=
 =?us-ascii?Q?BFgsbETx1VaH6XuzGFANQTosYzHZCLDkQT+Qtw38KMRbmRFcULKhShOxm5yb?=
 =?us-ascii?Q?wF5nmyzNtCk5THeUGhP95W6ZObSyiIuhTe54ebvThbmmIQDN4tXEmBS1BKdF?=
 =?us-ascii?Q?GMJG51FkjuBsSnFb5Qb3tSj3jy/bi6gAeaJy+vg8/Vtmy1rdOPyN4+jTwZ1O?=
 =?us-ascii?Q?hp5xssfJ1oHfnahw5POT0km5BTTzMbz+bRzPoHQSfK2cCjNYrnBwD4TXdhLn?=
 =?us-ascii?Q?1+wsDab9wJ9eTFNHx1ob7fqZ4a1cTP6PwSx+l4IoVdpKB9M32szOUZ+IkEie?=
 =?us-ascii?Q?B3YfveY7zOMsjCW0baFalEfcMjpemaeQOlxtW2kcXwM0UNejCcKt3X48CMuZ?=
 =?us-ascii?Q?riUr6jvJLJH06AfMYpovIS2Ud7B7TYQBPzabdQzrosgY0NVk1iYKORq76jmt?=
 =?us-ascii?Q?8cjTcnxztzWyjR9AxWmBOa0uqSiBhZNK4ID3aKQXg4FEpq+z+N/BKEzXxSmi?=
 =?us-ascii?Q?mGF8S4E4a7e0ZnEnqh5wKZT8OSA/lDlfJ3lYdx0xj4/58qCsaNwaox0eerv/?=
 =?us-ascii?Q?mLsYyzlzUwue19e7FMbCJx0bWYSxzVE7Int6JOSM32zkckDzsRDUw3PaFuRx?=
 =?us-ascii?Q?nGgobX67bPlWzUaKRyF5biMA/XSz9aTvtqSga+PV9wt0qwYEqRIeX3OebSTW?=
 =?us-ascii?Q?fx4OP0ywRZy+T51Oa4O/g36Ct0Ds0FiuERfW3vKKR2HC84DpD1Jt28b8v0Re?=
 =?us-ascii?Q?OWZR2W1tx8qHuUZlwl/TP64fEkAXyw3cUdDn14lMKIvd35MvimyPUIGtSvOh?=
 =?us-ascii?Q?C0J97SvT4M3HlaKWQXord+ylGpWCuvkylESD78b5pdRyh95f2ohQePGUKkL7?=
 =?us-ascii?Q?i31xwclo2R+pCnAAyjA4HfGNdcGcN4foU2ZkAhFeXWdIoxSpZR5J6OAeVO1y?=
 =?us-ascii?Q?CHIAp0x+Nqye+ZCfnXqJkulyK6VQos1KdWFRyji44ZBzXkFlAVM/x6yEsYyt?=
 =?us-ascii?Q?KuzBEOcmD9635WG+jzjB/tE1l5rR6PFQDS0y1T0t1vJ1EiGylAd80GYtjWms?=
 =?us-ascii?Q?lfZt5U6RCvN+NLeQc2Mor0IXmh6/e3YjRim8iO1/NGCRx+uAuE/BHD1YgaBS?=
 =?us-ascii?Q?ii+10cj/a92BYmEDMwnnohpUWssqaGVh0W2IZkMygNTUUqdXKZ4mfUOi/3Jp?=
 =?us-ascii?Q?BqfBnbzhWLRGVbA4Y9IXqPNR32pwL8jhBRyPLr6zPCUrEnNW+ZvYm0pDUN1j?=
 =?us-ascii?Q?Xkqzgty8L9YN1x3m/+Qqb6SlsiVcYDGC0Ngkgofwmf2Des4EAwb6iahQFbS6?=
 =?us-ascii?Q?OQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b051eb7-39cb-4fb5-bd7c-08dda9cf4068
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2025 16:36:15.9822 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iqbliMx/OMh0rXXPx0HoQ13w73QXZ/LY8/2a9Rzlg5cSAjCazC0xcAVMt/k4oLC0gvEaeFzTuu4m/J5DDmx+JnBF8dVyHogq1ZxAnHcULLA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB8917
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749746180; x=1781282180;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uxUG9c0shumSV2oaVEaVfNlg/4nhuRPbzgmavHvNyGM=;
 b=MJulPz8jVs5xGHG/tee73BMSu8u1Lpcwc1oTTYb7WzBZEvNQ8b9pHM1G
 6Q2CaGSOrLnqb1BHiKWaEfZZBnPeC8xBwAgCyhBgcshLWCuA/JtseDa/D
 /WUEi+hcvjeSuuYAQNpNcj+MEMPGEIStTNKh7XLpJyrkFgxM9ocucBnwa
 ZCoUB1wO++39kVwCLWcVsifkiGn3TDyNTi84ftz0Flx1usPzPkmiIbCeT
 7LKqVrYMsY7zecsq+V6Jl48KBJq2zmNoDtX+shZPMBJw8+wT4gjd07Drf
 6Wabgw6yRYQzGt7jzZ4pY8hTSppDSNF8S66JWY8pD5an7r5wPiAPXfG7P
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MJulPz8j
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] igbvf: add
 tx_timeout_count to ethtool statistics
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Kohei Enju
> Sent: Thursday, June 12, 2025 6:16 PM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Andrew
> Lunn <andrew+netdev@lunn.ch>; David S . Miller <davem@davemloft.net>;
> Eric Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>;
> Paolo Abeni <pabeni@redhat.com>; Kohei Enju <kohei.enju@gmail.com>;
> Kohei Enju <enjuk@amazon.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1] igbvf: add
> tx_timeout_count to ethtool statistics
>=20
> Add `tx_timeout_count` to ethtool statistics to provide visibility
> into transmit timeout events, bringing igbvf in line with other Intel
> ethernet drivers.
>=20
> Currently `tx_timeout_count` is incremented in igbvf_watchdog_task()
> and
> igbvf_tx_timeout() but is not exposed to userspace nor used elsewhere
> in the driver.
>=20
> Before:
>   # ethtool -S ens5 | grep tx
>        tx_packets: 43
>        tx_bytes: 4408
>        tx_restart_queue: 0
>=20
> After:
>   # ethtool -S ens5 | grep tx
>        tx_packets: 41
>        tx_bytes: 4241
>        tx_restart_queue: 0
>        tx_timeout_count: 0
>=20
> Tested-by: Kohei Enju <enjuk@amazon.com>
> Signed-off-by: Kohei Enju <enjuk@amazon.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/igbvf/ethtool.c | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/net/ethernet/intel/igbvf/ethtool.c
> b/drivers/net/ethernet/intel/igbvf/ethtool.c
> index 83b97989a6bd..773895c663fd 100644
> --- a/drivers/net/ethernet/intel/igbvf/ethtool.c
> +++ b/drivers/net/ethernet/intel/igbvf/ethtool.c
> @@ -33,6 +33,7 @@ static const struct igbvf_stats
> igbvf_gstrings_stats[] =3D {
>  	{ "lbrx_bytes", IGBVF_STAT(stats.gorlbc, stats.base_gorlbc) },
>  	{ "lbrx_packets", IGBVF_STAT(stats.gprlbc, stats.base_gprlbc)
> },
>  	{ "tx_restart_queue", IGBVF_STAT(restart_queue, zero_base) },
> +	{ "tx_timeout_count", IGBVF_STAT(tx_timeout_count, zero_base)
> },
>  	{ "rx_long_byte_count", IGBVF_STAT(stats.gorc, stats.base_gorc)
> },
>  	{ "rx_csum_offload_good", IGBVF_STAT(hw_csum_good, zero_base)
> },
>  	{ "rx_csum_offload_errors", IGBVF_STAT(hw_csum_err, zero_base)
> },
> --
> 2.49.0

