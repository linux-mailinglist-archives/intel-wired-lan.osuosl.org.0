Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wMwYEQOVPmrrIQkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jun 2026 17:04:35 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 07AC46CE490
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jun 2026 17:04:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=SHbFNDPa;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E22EE60FD9;
	Fri, 26 Jun 2026 15:04:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PZ8j_2fkJDuf; Fri, 26 Jun 2026 15:04:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 03A4D60FE2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782486269;
	bh=MdHLis5vuc9xgtrnJd4ynu8dQstClY0nGXI0xyKVJUY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SHbFNDPaoNSS+kjlvs3O1eSm9ak7gMqKEhn11MIn5a/A7e6IOU4qdtj8VgekE1p9t
	 UwCVbHSLUMbVQYip0ZgnZmnzhmkduyv2kV8VR9pvzK8xVY4L5++YBkeD3tofavIDtw
	 gAExcB52KM3srx4Gsu8pBqJhKj3WTQEopTiAb+W6hjvL+teGRZJpcpGtsvt6eSisuY
	 DQtrx7VqgiIJ2RVhGHVnwJsXJNxHmiUUaD+oC1mgNaZnipEdIIaNUJiHk1o5ibpv4R
	 wYN2udcurulDAlYPt/vlSZD6lXazJ3xpauoO4waAibhFc2svMSIgCYA6fjdWlI8KDb
	 //qyOPZPG8fog==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 03A4D60FE2;
	Fri, 26 Jun 2026 15:04:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 969E6231
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2026 15:04:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7D4DA4070B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2026 15:04:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yhgwrZwjbdpJ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jun 2026 15:04:26 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9C8E940702
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9C8E940702
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9C8E940702
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jun 2026 15:04:24 +0000 (UTC)
X-CSE-ConnectionGUID: xn3W37UFSdGwssw2m9/6DQ==
X-CSE-MsgGUID: J37Vqg7cQD2L00EbigfNjA==
X-IronPort-AV: E=McAfee;i="6800,10657,11829"; a="83158333"
X-IronPort-AV: E=Sophos;i="6.24,226,1774335600"; d="scan'208";a="83158333"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2026 08:04:24 -0700
X-CSE-ConnectionGUID: vbElOOiMT8+5YmkBHK7C5g==
X-CSE-MsgGUID: zziVJjMyQ2S5fPFUlCiOrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,226,1774335600"; d="scan'208";a="256246354"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2026 08:04:24 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 26 Jun 2026 08:04:23 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 26 Jun 2026 08:04:23 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.2) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 26 Jun 2026 08:04:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EmCky9cS1ALoaggSvS5XXMy6I7KtyH+m7Xba5A9XTUuzeYEbRdKJ+TUfFvhMDMFKzXXtncY+BiwY4xPYu1nZRIf8e7H8Ovdhc6Wp1YqYvQKCNeWIyFZ/tEh31fbNPmrBj7weZQxQSHdB74IrIE0wtmXt0JcjsRwLFa+5XFacUOMrCc+MRjD/D10AkxOFAcNGewKV9r8nqVIuUVlZzmYhvAe2zrrfxGad1IeB7dZyx1Q2xSQ/2KIdfkgM6HyOuDqclUNgXkXxwwdwO3IV5B3dq8K7tc9WL4+hHVD74LA6CWl/ob3Ip6/nA7+wxfGbT7pLsISp6AKoqII/Z2x6OiRWLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MdHLis5vuc9xgtrnJd4ynu8dQstClY0nGXI0xyKVJUY=;
 b=Ulib9YSFbkcrba1FEPiqROMx4Sg4dRo3e3dHdzKnIPKeeNqARmeyscYSBDAAgKOoFEVlO1E24XMHCveFK5ejije271ee8kMHg9FY9t+w6YCOMhKwbJ+AZbcD7BifcEgAshzFMVT/vcjh05vrjYziLGn3l4+HebXDPsHhq7Zy0viKEcY3+GFFASTlP0IR2lR7RcLY+sNaEmZV4FOm4IUZ0Yzg0+AP5NhoiLiaRRconm8DCnLB5xwrVk3Yy0EAgxg6aHcbDrjnZEqNy0YAXk01Bdhsvjc1v23m4MJzrsgiM4IjXJs4WoXLybW33FgnxqsbFRrV7R7V7p4RdznZDodSlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5983.namprd11.prod.outlook.com (2603:10b6:510:1e2::13)
 by CY5PR11MB6440.namprd11.prod.outlook.com (2603:10b6:930:33::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.18; Fri, 26 Jun
 2026 15:04:19 +0000
Received: from PH7PR11MB5983.namprd11.prod.outlook.com
 ([fe80::4d6a:a025:2e8b:b240]) by PH7PR11MB5983.namprd11.prod.outlook.com
 ([fe80::4d6a:a025:2e8b:b240%4]) with mapi id 15.21.0159.012; Fri, 26 Jun 2026
 15:04:17 +0000
From: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
To: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "horms@kernel.org" <horms@kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "davem@davemloft.net"
 <davem@davemloft.net>, "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, 
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v7 3/4] iavf: send MAC change
 request synchronously
Thread-Index: AQHdAvmzxcKaVzfD5USKW1mVviAfM7ZQ7Obg
Date: Fri, 26 Jun 2026 15:04:17 +0000
Message-ID: <PH7PR11MB5983BDCC3B90AD13F2778847F3EB2@PH7PR11MB5983.namprd11.prod.outlook.com>
References: <20260623101800.991293-1-jtornosm@redhat.com>
 <20260623101800.991293-4-jtornosm@redhat.com>
In-Reply-To: <20260623101800.991293-4-jtornosm@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5983:EE_|CY5PR11MB6440:EE_
x-ms-office365-filtering-correlation-id: 40df0079-b46a-42d8-242c-08ded394319a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|23010399003|1800799024|376014|22082099003|18002099003|38070700021|11063799006|4143699003|56012099006;
x-microsoft-antispam-message-info: RbZu38YpwCrNYINNmjggE2btRJFrAXqb06loRrWUoMFwaJVG5KhAIlYqv8vkMydRMNU3cAUy4LYsG/aopPd/wmfF/X7ULhn9qUqLD3XcKY9ujADtfH9Zc+Gph+XXuo7z+utY+R6anx9T1tEOxRWXIVSSZ+pVNJv5kBhgDCdTo3fXKsuRjNsrQAWJQCcWmOB6HYLcpT1Z2O9yI9i8H4fwMihqMf2flbjFFgVzXG/eT2dYrEqExL5d8HjGZ4ZypojEKQpbNGDgRaiO9PFGF8MjtHx0I6rje8bCa7G2nBkFAoO6AtVM+Q5lGYecz2FO9MuIfC8872Pmp1CFuWJ35O6sHOxOw760D722YPIl1/e9wRdBb25QmtKF+ycc6uXMtD7sdkwFcEmIo9qo3orY4RyUqp5LU6FhEWvKZ3YVR97E7gHGlWizMZc7f34czfNacr7DuIKa947ltl9j60qArjaHJk4+lv94wozQOffbzonuqcHqW6p+UUQrrbc850KLxI/xs2rnMh1Oiu78bhcifQIYs+MmxqjbiPkgkR4HXhOuhikfvj8VOdgReCRIquM//G/f+pigBUEu8lKeifOkwC3T/a5PrpGg7fHz9q4hAa5P4pxLvxJs2vrLsuNBdkGUAj16j+JF+hQ+a1PIp/gDQrI2N2B9G9N1AhpVsmeTZn0nKaUpEEldpAkl5uCN7Pyc5LZwYgCRFOVyN+792jTKInGx0kNoaUzRNBwEtqndPhf+YEc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5983.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(23010399003)(1800799024)(376014)(22082099003)(18002099003)(38070700021)(11063799006)(4143699003)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IqHg4oVwg3XlBzSJcKg53fmYTciEW6OGftKUUuZXj53zeMXSEZkLdlodGwns?=
 =?us-ascii?Q?Byoj6Jk4U0+TjKSRmKt85QHYidWgy14cuhvqrXYfQkxFQiqlESO45yf+78Wj?=
 =?us-ascii?Q?zyc8/2l/w2T+HAZOVTIvGTeFQuNLKqsEaqPnFB4BShjYvyCZ3IUjOn3RFngK?=
 =?us-ascii?Q?SAcOxrWvUe9wXVvh6uuGllsoor6EVifE9bMeqZbc/ieD7hmQ+NeY9+f69cVe?=
 =?us-ascii?Q?+BPl6rIVltNPi1IdMGG467ZG3gHg5PCusGA1K6X6R7Na/9A7WMceCjPkZusd?=
 =?us-ascii?Q?b4/1DFXcIO2h9tr3KaE5bK3SAmqVPHNeQHhUb4Ds9r1xzhKFrkxzxj1toApI?=
 =?us-ascii?Q?hsQ2LRHxc8u9eIkGbt8II1koBlLCgoC9dUbNVJajRsI5NG8KpWaAhHbS+g5w?=
 =?us-ascii?Q?I9pyNNacfnaxf3dmUOOt6CsCGgRXUQxUjNi7SQUZgDClck5J+4Z7NIPnEa/p?=
 =?us-ascii?Q?k4+xDh1EbZC4JWzSqu2FLpP1M3puNNGKp4azMzJe+UCHb2mqmhUBuNp/28WM?=
 =?us-ascii?Q?EhQKou2TKtRsWagr97YOqejUg4lDlCPfZPgbCJOkYJy0I7tQLYuGFrVFwQ/X?=
 =?us-ascii?Q?yc7KsxK2dQ6VA4GlshMDSY0uC6Gv1r82FvZNUH8lps7Mt6VpqUlLHH4gFvHX?=
 =?us-ascii?Q?BTBmwwT4T7WZuv2Q2kwtY3mTyJDHmAOHd1oppZnwIISnwwkKe76EBNzla3aI?=
 =?us-ascii?Q?ftOeUCS1meXJzaud4RXoW0UskJm4v8I6SSsTSHs7by3YXC/tX9nScNlSbrvr?=
 =?us-ascii?Q?C+3cfT9yiVad/hCChVHjfR40yTLv3onA60HeuFWNgpMl+wjvYGiD29ZyXiwA?=
 =?us-ascii?Q?s7DABUADP6REF1d4mp4kUPT2VC0piiFsSc+DNwqXQM+8ASnwxY8lm7nQMtwO?=
 =?us-ascii?Q?v/hXV+7jVbDR3AGZ+f4sz2h1JIB1T4LXdkLVBA9w7tbpYqFECtMy+smghmYo?=
 =?us-ascii?Q?wrRjgTIZj3lvg9YtMbyVAR2AezEKCEsTwRTObgeR6nhgdR983YUCQuAQ0zYz?=
 =?us-ascii?Q?QmXAry79LMoP0bmPzdLBPXMEgjCAR8LvpFtTStvsfb1UmPVkk+HkroyEDK3x?=
 =?us-ascii?Q?UGWi5TQok6AFh1yG9NWjxFg8jqudounfbu41iWtRsAVXUWpJ1T3xi/cH+ADv?=
 =?us-ascii?Q?8lwDxtXC92ZCnGl8GAh/QbuEhaG9guqdxHToezA5qCIgNF64uUOzw0I/0MID?=
 =?us-ascii?Q?bJH1tkti2AQp7XF9G4VlO+C/NlTBHmN9HWZqI3dllbcKU1Dmgc+yGMhwcWRv?=
 =?us-ascii?Q?Yp3130WQVPJxxtSoWF9XkSELgIICAk1hUjup8kH/l15Oym5BGqde4qqHLxh4?=
 =?us-ascii?Q?ZP9p5aGYJOwZ5wAaWNFvU21oNAMGyCziXAyvr8K2wXpnKK4h0BNHrKfUWW6K?=
 =?us-ascii?Q?akvAeo369A0zAcMAbxNuRXZYixYagr4WZ884kquj2uNN//LDMShlqFAwXCRf?=
 =?us-ascii?Q?3JiGGAsZOJyDMyJLVIXnTPvIWWr/wcqzIotodUbKbhR3k44rv/aH3gkhitz8?=
 =?us-ascii?Q?g+Lrk2GBr53AGTek/NglwYva+Ehw1UfYzkp0gaTSzDezfjePz31zlJidfZKl?=
 =?us-ascii?Q?dnCyEkWSgKZtfR58ISCdmJ2Xq38+ioviQYg3M2TuadDcHzWM/+sIqLICFhn8?=
 =?us-ascii?Q?JyjpTFsL62oI4yw/XGGtzvspg0U1YO6fHi7LcUXt6BdH27gUyqUXaZsYG18b?=
 =?us-ascii?Q?TdQ9DoihaWyFC0AelVb4pn9sv+H3dZybkvPdIJp8aeTlV0+9cFvtOFyv9cwB?=
 =?us-ascii?Q?KY/ZDMjEOQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: eGrNRdWSAypZiiToUbBq5oT3OXxfu6dKfws/0NC7+Uq1s5ycnHi67qkg0FwZEfBYWm0y585fx1urM95WLmzq6XJ4xxcPkWLZtp9N0A+jHVw0o106noRGw81usLnd4wrzzOVOrfWzZmgCCUcovXeDDEf1Rd+cVeedUBnJulXYCSzNndUiDBaz64WLRscZdxdxaQBf5Am20hZwEdhcEGh1eUMEl1vgPPh/g17C3dNV/8qqovgj7jw7pMOVI5chy33qMNizYRgASpRoSTnlRk1Rb6aWeYyWvKmk5UXpQDonCtDJiT+EpCyMrjAdEcll1zMBOcCoXV7HfLTPQFLQEIyAsQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5983.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 40df0079-b46a-42d8-242c-08ded394319a
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jun 2026 15:04:17.3585 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DLMTKirT62Jqbo9CE31QZhib1hhX9Y3Rwx+vwR7jS/NOR8p+ESYMZyDV3LI9C/hKfhQk5bkB3IaVUc0qV3WOlEYu2BtreEOh0LLNhwNhjFs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6440
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782486266; x=1814022266;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZNDVPQOKI8geC2XMb+6XQie4TOnmUA7sH5zNgFdnUqU=;
 b=lJiF1gWOqAT3nNWYgVHMlMCOLPxVYbil7hvZPSAP6We0jbGVxH6NvT8/
 Pc1N+ZeHjREgD8JeH+j/k/FMZ+yAFKLuWgSbhkpmY2yDCS1WRa0zhed3K
 sBuN8c9JiWtjqe0P2U31iDW0yWuguoqgkwNEbH7w2mnylJVAy/kE6y9JA
 6ZLCb1J9QuqO0VSDRIopXrxd5qEhsBTK6749paNv/fsAPT5W7TWxLwKbk
 43cJIsoVdWCejlR0ASspzeWUsJFjVXU9Dg1DRnWvbkftw5sL2TWa+hSp5
 y9CRtfR3OU5kVVJ8OU5KDdYoItg8gOFM3LQ056LhDAmh/sTKZ121Dk543
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lJiF1gWO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v7 3/4] iavf: send MAC change
 request synchronously
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jtornosm@redhat.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,m:jacob.e.keller@intel.com,m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:stable@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER(0.00)[piotr.kwapulinski@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[piotr.kwapulinski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 07AC46CE490

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jo=
se Ignacio Tornos Martinez
>Sent: Tuesday, June 23, 2026 12:18 PM
>To: netdev@vger.kernel.org
>Cc: intel-wired-lan@lists.osuosl.org; Kitszel, Przemyslaw <przemyslaw.kits=
zel@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Kelle=
r, Jacob E <jacob.e.keller@intel.com>; horms@kernel.org; Nguyen, Anthony L =
<anthony.l.nguyen@intel.com>; davem@davemloft.net; edumazet@google.com; kub=
a@kernel.org; pabeni@redhat.com; Jose Ignacio Tornos Martinez <jtornosm@red=
hat.com>; stable@vger.kernel.org
>Subject: [Intel-wired-lan] [PATCH net v7 3/4] iavf: send MAC change reques=
t synchronously
>
>After commit ad7c7b2172c3 ("net: hold netdev instance lock during sysfs op=
erations"), iavf_set_mac() is called with the netdev instance lock already =
held.
>
>The function queues a MAC address change request via
>iavf_replace_primary_mac() and then waits for completion. However, in the =
current flow, the actual virtchnl message is sent by the watchdog task, whi=
ch also needs to acquire the netdev lock to run. Additionally, the adminq_t=
ask which processes virtchnl responses also needs the netdev lock.
>
>This creates a deadlock scenario:
>1. iavf_set_mac() holds netdev lock and waits for MAC change 2. Watchdog n=
eeds netdev lock to send the request -> blocked 3. Even if request is sent,=
 adminq_task needs netdev lock to process
>   PF response -> blocked
>4. MAC change times out after 2.5 seconds 5. iavf_set_mac() returns -EAGAI=
N
>
>This particularly affects VFs during bonding setup when multiple VFs are e=
nslaved in quick succession.
>
>Fix by implementing a synchronous MAC change operation similar to the appr=
oach used in commit fdadbf6e84c4 ("iavf: fix incorrect reset handling in ca=
llbacks").
>
>The solution:
>1. Send the virtchnl ADD_ETH_ADDR message directly (not via watchdog) 2. P=
oll the admin queue hardware directly for responses 3. Process all received=
 messages (including non-MAC messages) 4. Return when MAC change completes =
or times out
>
>A new generic function iavf_poll_virtchnl_response() is introduced that ca=
n be reused for any future synchronous virtchnl operations. It takes a call=
back to check completion, allowing flexible condition checking.
>
>This allows the operation to complete synchronously while holding netdev_l=
ock, without relying on watchdog or adminq_task. The function can sleep for=
 up to 2.5 seconds polling hardware, but this is acceptable since netdev_lo=
ck is per-device and only serializes operations on the same interface.
>
>To support this, change iavf_add_ether_addrs() to return an error code ins=
tead of void, allowing callers to detect failures. Additionally, export iav=
f_mac_add_reject() to enable proper rollback on local failures (timeouts, s=
end errors) - PF rejections are already handled automatically by iavf_virtc=
hnl_completion().
>
>Remove vc_waitqueue entirely because iavf_set_mac was the only waiter on t=
his waitqueue and after the changes it is not needed.
>
>Fixes: ad7c7b2172c3 ("net: hold netdev instance lock during sysfs operatio=
ns")
>cc: stable@vger.kernel.org
>Signed-off-by: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
>---
>v7: Rebase on current net tree
>    Remove the multi-batch processing loop from version 6 according to Prz=
emek
>    Kitszel review: the loop cannot work without polling between iteration=
s
>    since the second call would fail the current_op check. Multi-batch sce=
nario
>    is extremely rare; send first batch and let watchdog handle remainder =
as v5
>    did
>v6: https://lore.kernel.org/all/20260619061321.8554-4-jtornosm@redhat.com/
>
> drivers/net/ethernet/intel/iavf/iavf.h        | 11 ++-
> drivers/net/ethernet/intel/iavf/iavf_main.c   | 85 ++++++++++++----
> .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 99 +++++++++++++++++--
> 3 files changed, 165 insertions(+), 30 deletions(-)
>
>diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet=
/intel/iavf/iavf.h
>index 050f8241ef5e..5fcbfa0ca855 100644
>--- a/drivers/net/ethernet/intel/iavf/iavf.h
>+++ b/drivers/net/ethernet/intel/iavf/iavf.h
>@@ -259,7 +259,6 @@ struct iavf_adapter {
> 	struct work_struct adminq_task;
> 	struct work_struct finish_config;
> 	wait_queue_head_t down_waitqueue;
>-	wait_queue_head_t vc_waitqueue;
> 	struct iavf_q_vector *q_vectors;
> 	struct list_head vlan_filter_list;
> 	int num_vlan_filters;
>@@ -588,8 +587,9 @@ void iavf_configure_queues(struct iavf_adapter *adapte=
r);  void iavf_enable_queues(struct iavf_adapter *adapter);  void iavf_disa=
ble_queues(struct iavf_adapter *adapter);  void iavf_map_queues(struct iavf=
_adapter *adapter); -void iavf_add_ether_addrs(struct iavf_adapter *adapter=
);
>+int iavf_add_ether_addrs(struct iavf_adapter *adapter);
> void iavf_del_ether_addrs(struct iavf_adapter *adapter);
>+void iavf_mac_add_reject(struct iavf_adapter *adapter);
> void iavf_add_vlans(struct iavf_adapter *adapter);  void iavf_del_vlans(s=
truct iavf_adapter *adapter);  void iavf_set_promiscuous(struct iavf_adapte=
r *adapter); @@ -606,6 +606,13 @@ void iavf_disable_vlan_stripping(struct i=
avf_adapter *adapter);  void iavf_virtchnl_completion(struct iavf_adapter *=
adapter,
> 			      enum virtchnl_ops v_opcode,
> 			      enum iavf_status v_retval, u8 *msg, u16 msglen);
>+int iavf_poll_virtchnl_response(struct iavf_adapter *adapter,
>+				struct iavf_arq_event_info *event,
>+				bool (*condition)(struct iavf_adapter *adapter,
>+						  const void *data,
>+						  enum virtchnl_ops v_op),
>+				const void *cond_data,
>+				unsigned int timeout_ms);
> int iavf_config_rss(struct iavf_adapter *adapter);  void iavf_cfg_queues_=
bw(struct iavf_adapter *adapter);  void iavf_cfg_queues_quanta_size(struct =
iavf_adapter *adapter); diff --git a/drivers/net/ethernet/intel/iavf/iavf_m=
ain.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
>index 630388e9d28c..3fa288e3798a 100644
>--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
>+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
>@@ -1029,6 +1029,60 @@ static bool iavf_is_mac_set_handled(struct net_devi=
ce *netdev,
> 	return ret;
> }
>=20
>+/**
>+ * iavf_mac_change_done - Check if MAC change completed
>+ * @adapter: board private structure
>+ * @data: MAC address being checked (as const void *)
>+ * @v_op: virtchnl opcode from processed message
>+ *
>+ * Callback for iavf_poll_virtchnl_response() to check if MAC change comp=
leted.
>+ *
>+ * Return: true if MAC change completed, false otherwise  */ static=20
>+bool iavf_mac_change_done(struct iavf_adapter *adapter,
>+				 const void *data, enum virtchnl_ops v_op) {
>+	const u8 *addr =3D data;
>+
>+	return iavf_is_mac_set_handled(adapter->netdev, addr); }
>+
>+/**
>+ * iavf_set_mac_sync - Synchronously change MAC address
>+ * @adapter: board private structure
>+ * @addr: MAC address to set
>+ *
>+ * Send MAC change request to PF and poll admin queue for response.
>+ * Caller must hold netdev_lock. This can sleep for up to 2.5 seconds.
>+ * Event buffer is allocated before sending to avoid state mismatch if
>+ * allocation fails after message is sent to PF.
>+ *
>+ * Return: 0 on success, negative on failure  */ static int=20
>+iavf_set_mac_sync(struct iavf_adapter *adapter, const u8 *addr) {
>+	struct iavf_arq_event_info event;
>+	int ret;
>+
>+	netdev_assert_locked(adapter->netdev);
>+
>+	event.buf_len =3D IAVF_MAX_AQ_BUF_SIZE;
>+	event.msg_buf =3D kzalloc(event.buf_len, GFP_KERNEL);
>+	if (!event.msg_buf)
>+		return -ENOMEM;
>+
>+	ret =3D iavf_add_ether_addrs(adapter);
>+	if (ret)
>+		goto out;
>+
>+	ret =3D iavf_poll_virtchnl_response(adapter, &event,
>+					  iavf_mac_change_done, addr, 2500);
>+
>+out:
>+	kfree(event.msg_buf);
>+	return ret;
>+}
>+
> /**
>  * iavf_set_mac - NDO callback to set port MAC address
>  * @netdev: network interface device structure @@ -1049,25 +1103,23 @@ st=
atic int iavf_set_mac(struct net_device *netdev, void *p)
> 		return -EADDRNOTAVAIL;
>=20
> 	ret =3D iavf_replace_primary_mac(adapter, addr->sa_data);
>-
> 	if (ret)
> 		return ret;
>=20
>-	ret =3D wait_event_interruptible_timeout(adapter->vc_waitqueue,
>-					       iavf_is_mac_set_handled(netdev, addr->sa_data),
>-					       msecs_to_jiffies(2500));
>-
>-	/* If ret < 0 then it means wait was interrupted.
>-	 * If ret =3D=3D 0 then it means we got a timeout.
>-	 * else it means we got response for set MAC from PF,
>-	 * check if netdev MAC was updated to requested MAC,
>-	 * if yes then set MAC succeeded otherwise it failed return -EACCES
>-	 */
>-	if (ret < 0)
>+	ret =3D iavf_set_mac_sync(adapter, addr->sa_data);
>+	if (ret) {
>+		/* Rollback only if send failed (message never reached PF).
>+		 * Don't rollback on timeout (-EAGAIN) because the message was
>+		 * sent and PF will eventually respond. When the response arrives,
>+		 * iavf_virtchnl_completion() will handle rollback (on PF error)
>+		 * or acceptance (on PF success) automatically.
>+		 */
>+		if (ret !=3D -EAGAIN) {
>+			iavf_mac_add_reject(adapter);
>+			ether_addr_copy(adapter->hw.mac.addr, netdev->dev_addr);
>+		}
> 		return ret;
>-
>-	if (!ret)
>-		return -EAGAIN;
>+	}
>=20
> 	if (!ether_addr_equal(netdev->dev_addr, addr->sa_data))
> 		return -EACCES;
>@@ -5397,9 +5449,6 @@ static int iavf_probe(struct pci_dev *pdev, const st=
ruct pci_device_id *ent)
> 	/* Setup the wait queue for indicating transition to down status */
> 	init_waitqueue_head(&adapter->down_waitqueue);
>=20
>-	/* Setup the wait queue for indicating virtchannel events */
>-	init_waitqueue_head(&adapter->vc_waitqueue);
>-
> 	INIT_LIST_HEAD(&adapter->ptp.aq_cmds);
> 	init_waitqueue_head(&adapter->ptp.phc_time_waitqueue);
> 	mutex_init(&adapter->ptp.aq_cmd_lock);
>diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net=
/ethernet/intel/iavf/iavf_virtchnl.c
>index ec234cc8bd9d..e6b7e8f82c7c 100644
>--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
>+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
>@@ -2,6 +2,7 @@
> /* Copyright(c) 2013 - 2018 Intel Corporation. */
>=20
> #include <linux/net/intel/libie/rx.h>
>+#include <net/netdev_lock.h>
>=20
> #include "iavf.h"
> #include "iavf_ptp.h"
>@@ -555,20 +556,23 @@ iavf_set_mac_addr_type(struct virtchnl_ether_addr *v=
irtchnl_ether_addr,
>  * @adapter: adapter structure
>  *
>  * Request that the PF add one or more addresses to our filters.
>- **/
>-void iavf_add_ether_addrs(struct iavf_adapter *adapter)
>+ *
>+ * Return: 0 on success, negative on failure  */ int=20
>+iavf_add_ether_addrs(struct iavf_adapter *adapter)
> {
> 	struct virtchnl_ether_addr_list *veal;
> 	struct iavf_mac_filter *f;
> 	int i =3D 0, count =3D 0;
> 	bool more =3D false;
> 	size_t len;
>+	int ret;
The patch looks good. Minor suggestion:
- 	int i =3D 0, count =3D 0;
+ 	int i =3D 0, count =3D 0, ret;
Please retain RCT.
Thank you.
Piotr

>=20
> 	if (adapter->current_op !=3D VIRTCHNL_OP_UNKNOWN) {
> 		/* bail because we already have a command pending */
> 		dev_err(&adapter->pdev->dev, "Cannot add filters, command %d pending\n"=
,
> 			adapter->current_op);
>-		return;
>+		return -EBUSY;
> 	}
>=20
> 	spin_lock_bh(&adapter->mac_vlan_list_lock);
>@@ -580,7 +584,7 @@ void iavf_add_ether_addrs(struct iavf_adapter *adapter=
)
> 	if (!count) {
> 		adapter->aq_required &=3D ~IAVF_FLAG_AQ_ADD_MAC_FILTER;
> 		spin_unlock_bh(&adapter->mac_vlan_list_lock);
>-		return;
>+		return 0;
> 	}
> 	adapter->current_op =3D VIRTCHNL_OP_ADD_ETH_ADDR;
>=20
>@@ -594,8 +598,9 @@ void iavf_add_ether_addrs(struct iavf_adapter *adapter=
)
>=20
> 	veal =3D kzalloc(len, GFP_ATOMIC);
> 	if (!veal) {
>+		adapter->current_op =3D VIRTCHNL_OP_UNKNOWN;
> 		spin_unlock_bh(&adapter->mac_vlan_list_lock);
>-		return;
>+		return -ENOMEM;
> 	}
>=20
> 	veal->vsi_id =3D adapter->vsi_res->vsi_id; @@ -615,8 +620,15 @@ void iav=
f_add_ether_addrs(struct iavf_adapter *adapter)
>=20
> 	spin_unlock_bh(&adapter->mac_vlan_list_lock);
>=20
>-	iavf_send_pf_msg(adapter, VIRTCHNL_OP_ADD_ETH_ADDR, (u8 *)veal, len);
>+	ret =3D iavf_send_pf_msg(adapter, VIRTCHNL_OP_ADD_ETH_ADDR, (u8 *)veal,=
=20
>+len);
> 	kfree(veal);
>+	if (ret) {
>+		dev_err(&adapter->pdev->dev,
>+			"Unable to send ADD_ETH_ADDR message to PF, error %d\n", ret);
>+		adapter->current_op =3D VIRTCHNL_OP_UNKNOWN;
>+	}
>+
>+	return ret;
> }
>=20
> /**
>@@ -712,8 +724,8 @@ static void iavf_mac_add_ok(struct iavf_adapter *adapt=
er)
>  * @adapter: adapter structure
>  *
>  * Remove filters from list based on PF response.
>- **/
>-static void iavf_mac_add_reject(struct iavf_adapter *adapter)
>+ */
>+void iavf_mac_add_reject(struct iavf_adapter *adapter)
> {
> 	struct net_device *netdev =3D adapter->netdev;
> 	struct iavf_mac_filter *f, *ftmp;
>@@ -2364,7 +2376,6 @@ void iavf_virtchnl_completion(struct iavf_adapter *a=
dapter,
> 			iavf_mac_add_reject(adapter);
> 			/* restore administratively set MAC address */
> 			ether_addr_copy(adapter->hw.mac.addr, netdev->dev_addr);
>-			wake_up(&adapter->vc_waitqueue);
> 			break;
> 		case VIRTCHNL_OP_DEL_ETH_ADDR:
> 			dev_err(&adapter->pdev->dev, "Failed to delete MAC filter, error %s\n"=
, @@ -2555,7 +2566,6 @@ void iavf_virtchnl_completion(struct iavf_adapter *=
adapter,
> 			eth_hw_addr_set(netdev, adapter->hw.mac.addr);
> 			netif_addr_unlock_bh(netdev);
> 		}
>-		wake_up(&adapter->vc_waitqueue);
> 		break;
> 	case VIRTCHNL_OP_GET_STATS: {
> 		struct iavf_eth_stats *stats =3D
>@@ -2950,3 +2960,72 @@ void iavf_virtchnl_completion(struct iavf_adapter *=
adapter,
> 	} /* switch v_opcode */
> 	adapter->current_op =3D VIRTCHNL_OP_UNKNOWN;  }
>+
>+/**
>+ * iavf_poll_virtchnl_response - Poll admin queue for virtchnl response
>+ * @adapter: adapter structure
>+ * @event: pre-allocated event buffer to use for polling
>+ * @condition: callback to check if desired response received
>+ * @cond_data: context data passed to condition callback
>+ * @timeout_ms: maximum time to wait in milliseconds
>+ *
>+ * Polls the admin queue and processes all incoming virtchnl messages.
>+ * After processing each valid message, calls the condition callback to=20
>+check
>+ * if the expected response has been received. The callback receives=20
>+the opcode
>+ * of the processed message to identify which response was received.=20
>+Continues
>+ * polling until the callback returns true or timeout expires.
>+ *
>+ * Caller must allocate event buffer before sending any messages to PF=20
>+to avoid
>+ * state mismatch if allocation fails after message is sent.
>+ *
>+ * Caller must hold netdev_lock. This can sleep for up to timeout_ms=20
>+while
>+ * polling hardware.
>+ *
>+ * Return: 0 on success (condition met), -EAGAIN on timeout, or error=20
>+code  */ int iavf_poll_virtchnl_response(struct iavf_adapter *adapter,
>+				struct iavf_arq_event_info *event,
>+				bool (*condition)(struct iavf_adapter *adapter,
>+						  const void *data,
>+						  enum virtchnl_ops v_op),
>+				const void *cond_data,
>+				unsigned int timeout_ms)
>+{
>+	struct iavf_hw *hw =3D &adapter->hw;
>+	enum virtchnl_ops received_op;
>+	unsigned long timeout;
>+	int ret =3D -EAGAIN;
>+	u16 pending =3D 0;
>+	u32 v_retval;
Most of these variables may be declared inside the below statements.
Reviewed-by Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Piotr

>+
>+	netdev_assert_locked(adapter->netdev);
>+
>+	timeout =3D jiffies + msecs_to_jiffies(timeout_ms);
>+	do {
>+		if (!pending)
>+			usleep_range(50, 75);
>+
>+		if (iavf_clean_arq_element(hw, event, &pending) =3D=3D IAVF_SUCCESS) {
>+			received_op =3D (enum virtchnl_ops)le32_to_cpu(event->desc.cookie_high=
);
>+			if (received_op !=3D VIRTCHNL_OP_UNKNOWN) {
>+				v_retval =3D le32_to_cpu(event->desc.cookie_low);
>+
>+				iavf_virtchnl_completion(adapter, received_op,
>+							 (enum iavf_status)v_retval,
>+							 event->msg_buf, event->msg_len);
>+
>+				if (condition(adapter, cond_data, received_op)) {
>+					ret =3D 0;
>+					break;
>+				}
>+			}
>+
>+			memset(event->msg_buf, 0, IAVF_MAX_AQ_BUF_SIZE);
>+
>+			if (pending)
>+				continue;
>+		}
>+	} while (time_before(jiffies, timeout));
>+
>+	return ret;
>+}
>--
>2.54.0
>
>
