Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6E9WNVBEwmnvbAQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 08:59:12 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B029304465
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 08:59:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BB339826D6;
	Tue, 24 Mar 2026 07:59:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dINV4XndPGL3; Tue, 24 Mar 2026 07:59:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 24960814C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774339150;
	bh=irEjTPRtfKOo4E/07AQAzuVVcSzTpRc9B1tVflUICYA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MAg0nUcIhg5JCLGgsUEJunBOcKwvE/1/gmIJ84qRsf3K9cDMYxgpa3nSKgf40W0ZE
	 dO1rIF4FyHCIAGWlHHWQ0HsJ16VTtI3LafVMAlUI0PkQl9Pekz8omwc6zWiGnXyUR7
	 L+oR22IZDuyN8Qcyl5FchFW5Q94dzAMa7K/bJN7EAlReUHktb1YcDIxXCRDHbPw0cI
	 cQt1bDPAdOH3BkTJ96Fg7F25+Xhq0ebUE8x3vIo0kf4CVy8lzZFNHwA7usKgYZPeAa
	 MPGtYY3LhWZRGdt9wLJkfMHdr6P7cnYdzKzCX8d1X9mwBxoH3CC6ZEhsvDOwfQRxYG
	 Tc6AJXZPAr/AQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 24960814C6;
	Tue, 24 Mar 2026 07:59:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id F17FF1D3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 07:59:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D6A71608C9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 07:59:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ccm-KpnFFOb9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Mar 2026 07:59:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BBD6A60837
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BBD6A60837
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BBD6A60837
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 07:59:07 +0000 (UTC)
X-CSE-ConnectionGUID: NJdMzd3eTVq3A1nUn9fxbQ==
X-CSE-MsgGUID: pxqyDFXxS4avSfY0yWSz5g==
X-IronPort-AV: E=McAfee;i="6800,10657,11738"; a="85656241"
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="85656241"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 00:59:07 -0700
X-CSE-ConnectionGUID: REvL8a+bSEWhKPzpfyXCsg==
X-CSE-MsgGUID: +JKNmiNSQy65uXb4vesLJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="224251757"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 00:59:07 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 24 Mar 2026 00:59:06 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 24 Mar 2026 00:59:06 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.68) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 24 Mar 2026 00:59:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Zrc6lXfAoWI/DBuv5zMgkdbd82QXvreub0izcuJh3aZ8kyPft7zrhUyh4Fp1iTgWsbI/+qtFMLdmQm82FzPxyUe1S6KazMyqctYnSxXBUtprzcy0BGikm1wRqe1K2GdR7H5Ks+FB1QAwq3VDiU68wlldVmW22ykmHjOvLc41oL+L+34gl4rcYh69UfS4CZXN/8Ha1gXHD8Lvrkp8u1ePP6VrTM6W+xhWuOJA/Qk58NzMiv0qeyUT57C4MIWdfpOoYtHblIzO7aP2MUOF3XJUTvLovPrYeUAhCElTz2OQBxWB2+YA1s6iaIl5qXRj15QBjtQCUuO2yy6OUvqJJfD2LQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=irEjTPRtfKOo4E/07AQAzuVVcSzTpRc9B1tVflUICYA=;
 b=IL+6uhgSRw15bLmO0pcE0EIm4cmLQeSb9AOEZ6q+rM8UUypmOkl3KE7ttNQJCmP5VIN0bgbAU2xJD77RLPXiOP7KYdsTG0HqWLXpnN8oZF/uMQoNMPijWCEGas5H72vaF5reAznFvyVD00LLkw3xzsO9rTaZwd/c33pMYET6R+OiSXKM/LbtulneaXnqdzZWQcP5eNxkhizHtM/x3fHHBah1AJ3f8e+9uJ69CdsuURzC1IghLKXeQed+hrPiic0K1dwnBbqaCogBy1Jhdq4EKFN/yNoiNIY1FJLiBi7vRAQ8YnvArLbu/ZPXTxmViqWwbMAqDPXmGUgsfqMwT8Jaug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CH3PR11MB8137.namprd11.prod.outlook.com (2603:10b6:610:15c::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Tue, 24 Mar
 2026 07:59:02 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9745.012; Tue, 24 Mar 2026
 07:59:02 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, "Singhai, Anjali" <anjali.singhai@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>,
 "Hay, Joshua A" <joshua.a.hay@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Shanmugam, Jayaprakash"
 <jayaprakash.shanmugam@intel.com>, Jiri Pirko <jiri@resnulli.us>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Richard Cochran
 <richardcochran@gmail.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v6 13/14] ixd: add the core
 initialization
Thread-Index: AQHcuuxVgFXwd9rES0+xvhOdrFVCt7W9UjQA
Date: Tue, 24 Mar 2026 07:59:02 +0000
Message-ID: <IA3PR11MB8986DA230C50365AF4774552E548A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260323174052.5355-1-larysa.zaremba@intel.com>
 <20260323174052.5355-14-larysa.zaremba@intel.com>
In-Reply-To: <20260323174052.5355-14-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CH3PR11MB8137:EE_
x-ms-office365-filtering-correlation-id: 9cdf257f-3328-4ec6-35b6-08de897b36c8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|38070700021|22082099003|56012099003|18002099003|7053199007;
x-microsoft-antispam-message-info: ez0JL9ijxN85/q+iD2y3dNb+mcJ8RuRO2kedvUJqJSppfmTzt7kzjpe/a+h04R1XmFlmVp5gRSuIVK+dE3crFPu932Vaj5e/9n2g+WwM8Z6HuBnp3YtNtLMoUxpr6GkNX+cFyyIKc+HHeQoMaYwRxSQMFsXW7ekkqXqOSBGdwFXohI1CIEQ0Ii308DZLW2XesE7aJSLhv5U4EyZ15LkL8zYUw3elmZVGB72ESdl/2SnLhy4w5fl2sh6zZ3BL0kLdasZiGEs84VR6gZdMDERA2fWYI3J9Dk02o4rzVB9899i9rbcDaP5sNUDBd6I/zSRkj5FA1eLrH9d6hJkgxlXvuGtg03pJwdy9fxBaHtEOOJ/as/z5VjUmhgSy//EL/Ms34pO0U/5Gr2IjRs+08Voz28JWD1gYuOFs372kW4NIjCDQe31+WdL3tShBMkSdm/fIuWCu/G5TgwsdhF3CKAXB3fTL/1BQyhU4rY6TRmHDwAF8a8yx4oEirMdeGcjZu8xeboofBjyMgXgVQoz4SVlPmdG7ys3u/N9J6EuAO4EkV3eXPySJmq2i/aiqvuZ3U8ZdGHzBS2r7qccdF7K6jiAiDnEcrH9vIAgmwPgnMGczXV3FdXmKoYm/+Tn/333c+JxUT3yZmKyjhHM5IS5CwFSl7CcLgaqS2ckvtg85BnCzxGTi2gDoMdPtmw4QGcA8R9BDv4KeJGm0lNnw1t9tgXqsqCxmTpTlvGsaYCpGGKg9D2YHON7VlclkVq5vTEBPTbo9dLGoq2pgq9REktsXixIdIQ5DJaNFpkilSlhTcF+zO+c=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(38070700021)(22082099003)(56012099003)(18002099003)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fnQ+bEiJdxeQ08CXzrax0jRYBb5wfweqV2mugPwHUq00JZmLRcwCxM9vlMTD?=
 =?us-ascii?Q?Efxl0bftT/okT8RNdMM/qAH3uy+BYmuo3/jRYjap0dHe02wSrCChejuV674O?=
 =?us-ascii?Q?DmIfLlm2VLiAAyEQyW7dI1Dz+NGHwrwBGxE2ehRs8EVaDvaoLqD/docvGaD9?=
 =?us-ascii?Q?+CCCluQVCHNL+AQPK0Dsfpcv5ewjBS4//njJBrqbl6FFCJF1rwRRCAV10ag0?=
 =?us-ascii?Q?jjRUGUtZxPA0Af9ZXz1uPDsNPgTvy6hhrft84SSpJljLgtW6iJhmu8kATc/n?=
 =?us-ascii?Q?x7ZrRv6vYBZNdeq0IhB/Sarv9w0yHd5LTFUOcgGY0jAx0Xe7Yc4GWWJf9rCS?=
 =?us-ascii?Q?sU8pczS5MOQzpa3L/Pmr4D1Aa3TGygEDWAVMu916nbaGBZmW1NL+YpsfegZU?=
 =?us-ascii?Q?qF+QWQ/lGmPI4B4C4NajMp/bA/8gqYegW+0raznkJke1ALMAQKy5L5VWu8WT?=
 =?us-ascii?Q?6pYv01/VYfsNf2Rygk4ZFlOr1eDj98C3k+YpdTUhmEm4yWYaY6s8/kDhQ/uG?=
 =?us-ascii?Q?IU802/9ETyhAP/FELx8bRtWFgz4gcnjhOyqrBq2mo1+q8b7VvAJEHNJgbKNU?=
 =?us-ascii?Q?/vBkCzXVHixKgXPFnQ67zb+MBaOXeZGiqdjvh2lars0E6I4+9PP0TlSCOdXx?=
 =?us-ascii?Q?a4zoL+yDhrdDC6MzExNs6z+8sUR9bkbeGvczxrujiY2Qest8erjpdO97GEFs?=
 =?us-ascii?Q?ITxJPuAh0y+Jx+AJw4TTIGTjrXUKoBF1LU7s1NmWf5A8X6dKfXwERTN4K4f2?=
 =?us-ascii?Q?bpAsXLeqXdrnfu8peF3uCmXDdgIMvamr++p4JPdcGToVdM0b7MKV2bYai3qJ?=
 =?us-ascii?Q?/jyBGh+qAA1o0j0ovp6yrt4ZQh/hn9U+BMgCTfZoQBozHyANfP8lMMBm0GfM?=
 =?us-ascii?Q?hxTPV41xhVBZ7rQhtNHtdaM1rfJWEzNcBQmSlUpYKR1AxOo56vs0znBCgZYZ?=
 =?us-ascii?Q?ZlWsFFsPBXmIhzXtsEhz/xoGU2VNgwjkysOVRSPr0xQXzDS9io6PcDPhG1F6?=
 =?us-ascii?Q?d4+XNUHKi9118FrsmPMf7Ho7bUc5kWT9zfWzQ/+54td7wZY+Q42zQZnPOnr4?=
 =?us-ascii?Q?N/ahF0BlViXF0aKANHDFPBY38c+fWFWOtGUFBotGQfShPgW9gGpAbRk9coIj?=
 =?us-ascii?Q?l6SRABeeiuXrb+ZKvd+RNLbbuk6PAInLKvCWG6gXrSxONK8DtOtKNpHATKHP?=
 =?us-ascii?Q?dBpyOm+MX4oH8aHacxmA25Xzq+qvvGhWepIBRfxBWAr/3SiJ1Eajr2xGKAnr?=
 =?us-ascii?Q?s/XAy3V9XBsNsoiqHx3sScc8f/veBQU/8rUfKmJwqb/IAehlK/NKS1M/2KPB?=
 =?us-ascii?Q?R3camraxm/kqKo8XRBaec8JdntdPJoEIG8A9LO91eHqJ9mxDFWrmvWKvNmgH?=
 =?us-ascii?Q?NJ2miwa964BIQzkqfjoSJCq27nzsMXcI7eEKdsMJY12QeNCaOLXnVlTMkBum?=
 =?us-ascii?Q?N0eNAIb5BwspjNDu0BdDEwSqrGQ0Bw6cZCWaQ6Uc666m8DPx21zhF7VNdOGc?=
 =?us-ascii?Q?EeqJ48Qyf1nt+BmNO9eGKDqzkPwsLQ5fH6+r9jwq7/OO5iDzaUCfCt6NdND2?=
 =?us-ascii?Q?FZKsz2c/OVLoOYB1I1VAmrSP3pjImT65rz1RLmrEyt0hw5vTf0RGtM6UNDIX?=
 =?us-ascii?Q?obdOAcoKCKxAwYzfdTsS+ScLfH71qApBmCWYCp3JajfW4vf/e2TEdufJ9VgC?=
 =?us-ascii?Q?oyYDb3e9d+HjqIwycnqI1xtln5+qZ5mf2CdDZxm9GK+BD7SuwdKk4IhV5IqM?=
 =?us-ascii?Q?mbUle8uCrGyhBgpOn6uEMJi55UJ22ec=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: RmkZER+aXLIz67UupSCWODfALGF80VENtgwcXNL6Z9KJT+a34C39VK9Rp2h5kGDBlMORht1aac3DZSAfIR0oxrlmyPZIwFOxPiJh/7LlPiLdJxrSGVIpoh7vIEE6HRJSS7Cu8na45uN473+aVbdYIlCm6H18H595fb8Hl6K0iI/363FXehjcXTJqRaV8H4LZUJSLbaByEnzVYxHXv7gR9lm/1wUQL0rvFn3T5WZOIEJBX/s+Xnd3AKdzLnW3EaLwUDqIZh0iYpPqCtZ/1d0N5Y7gUDwK1LYEI0Lqt2JseVgBFHlwBlaqTehUBvIGEzfknk0JA6zwGTe3T5ujhqJa1w==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9cdf257f-3328-4ec6-35b6-08de897b36c8
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2026 07:59:02.5725 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +TMZo4guytemA98voilHuXTMXCMEtAH6C0p/h9Dya/ueAXNcidO3HLbDpZ6t4RIFTxuZFgYGhI9F+XwlFihXacyVoyOqIvVA42D5AcypzVU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8137
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774339148; x=1805875148;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5IUN/TxsV3YG6j/upgXTyq9DNOUAlCN3d54FLwgdQF4=;
 b=Bk4ysMiguhbFfdnrw6MgVHayTLdfM8o0j32tBdLs4dINFoYCvwPEcB1x
 E/CRlZdbdfOdyNt01/VSZkBumW7CDBs2LvEPNR6+8yg4tIXmutVu7il+4
 rnIzW/LNopVLd+k5I5NP7o83olfVZ4I2LvDA4T3sWA4C3yucPqWiOu/3N
 U4FioNgLWBVv4b/a8K2UPoRxy2rF3mn0369QRfsnFJ8lb1P2xDES+J+Rk
 e6d5Y5KmIzROSXt+RgT21ARBoha+hAW2X54MrIfKWC52Jpkv13Jis30DL
 ZIF3pez4A1RSAjlY7OCbUFmJNP78oiksmwFQBvGHW0BYlgbywKXr7AVk6
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Bk4ysMig
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 13/14] ixd: add the core
 initialization
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:anthony.l.nguyen@intel.com,m:aleksander.lobakin@intel.com,m:sridhar.samudrala@intel.com,m:anjali.singhai@intel.com,m:michal.swiatkowski@linux.intel.com,m:maciej.fijalkowski@intel.com,m:emil.s.tantilov@intel.com,m:madhu.chittim@intel.com,m:joshua.a.hay@intel.com,m:jacob.e.keller@intel.com,m:jayaprakash.shanmugam@intel.com,m:jiri@resnulli.us,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:richardcochran@gmail.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:netdev@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,linux.intel.com,resnulli.us,davemloft.net,google.com,kernel.org,redhat.com,lwn.net,gmail.com,lunn.ch,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: 5B029304465
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Larysa Zaremba
> Sent: Monday, March 23, 2026 6:41 PM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Samudrala,
> Sridhar <sridhar.samudrala@intel.com>; Singhai, Anjali
> <anjali.singhai@intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Zaremba, Larysa
> <larysa.zaremba@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Tantilov, Emil S
> <emil.s.tantilov@intel.com>; Chittim, Madhu <madhu.chittim@intel.com>;
> Hay, Joshua A <joshua.a.hay@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; Shanmugam, Jayaprakash
> <jayaprakash.shanmugam@intel.com>; Jiri Pirko <jiri@resnulli.us>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Simon Horman <horms@kernel.org>; Jonathan Corbet
> <corbet@lwn.net>; Richard Cochran <richardcochran@gmail.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; netdev@vger.kernel.org; linux-
> doc@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v6 13/14] ixd: add the core
> initialization
>=20
> As the mailbox is setup, initialize the core. This makes use of the
> send and receive mailbox message framework for virtchnl communication
> between the driver and device Control Plane (CP).
>=20
> To start with, driver confirms the virtchnl version with the CP. Once
> that is done, it requests and gets the required capabilities and
> resources needed such as max vectors, queues, vports etc.
>=20
> Use a unified way of handling the virtchnl messages, where a single
> function handles all related memory management and the caller only
> provides the callbacks to fill the send buffer and to handle the
> response.
>=20
> Place generic control queue message handling separately to facilitate
> the addition of protocols other than virtchannel in the future.
>=20
> Co-developed-by: Amritha Nambiar <amritha.nambiar@intel.com>
> Signed-off-by: Amritha Nambiar <amritha.nambiar@intel.com>
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Tested-by: Bharath R <Bharath.r@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ixd/Makefile       |   2 +
>  drivers/net/ethernet/intel/ixd/ixd.h          |  10 +
>  drivers/net/ethernet/intel/ixd/ixd_ctlq.c     | 149 +++++++++++++++
>  drivers/net/ethernet/intel/ixd/ixd_ctlq.h     |  33 ++++
>  drivers/net/ethernet/intel/ixd/ixd_lib.c      |  25 ++-
>  drivers/net/ethernet/intel/ixd/ixd_main.c     |   3 +
>  drivers/net/ethernet/intel/ixd/ixd_virtchnl.c | 178
> ++++++++++++++++++  drivers/net/ethernet/intel/ixd/ixd_virtchnl.h |
> 12 ++
>  8 files changed, 411 insertions(+), 1 deletion(-)  create mode 100644
> drivers/net/ethernet/intel/ixd/ixd_ctlq.c
>  create mode 100644 drivers/net/ethernet/intel/ixd/ixd_ctlq.h
>  create mode 100644 drivers/net/ethernet/intel/ixd/ixd_virtchnl.c
>  create mode 100644 drivers/net/ethernet/intel/ixd/ixd_virtchnl.h
>=20
> diff --git a/drivers/net/ethernet/intel/ixd/Makefile
> b/drivers/net/ethernet/intel/ixd/Makefile
> index 164b2c86952f..90abf231fb16 100644
> --- a/drivers/net/ethernet/intel/ixd/Makefile
> +++ b/drivers/net/ethernet/intel/ixd/Makefile
> @@ -6,5 +6,7 @@
>  obj-$(CONFIG_IXD) +=3D ixd.o
>=20
>  ixd-y :=3D ixd_main.o
> +ixd-y +=3D ixd_ctlq.o
>  ixd-y +=3D ixd_dev.o
>  ixd-y +=3D ixd_lib.o
> +ixd-y +=3D ixd_virtchnl.o
> diff --git a/drivers/net/ethernet/intel/ixd/ixd.h
> b/drivers/net/ethernet/intel/ixd/ixd.h
> index 99c44f2aa659..98d1f22534b5 100644
> --- a/drivers/net/ethernet/intel/ixd/ixd.h
> +++ b/drivers/net/ethernet/intel/ixd/ixd.h
> @@ -10,19 +10,29 @@
>   * struct ixd_adapter - Data structure representing a CPF
>   * @cp_ctx: Control plane communication context
>   * @init_task: Delayed initialization after reset

...

> +#endif /* _IXD_VIRTCHNL_H_ */
> --
> 2.47.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
