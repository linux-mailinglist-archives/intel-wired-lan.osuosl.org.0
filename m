Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YNCNBbuxt2m9UQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Mar 2026 08:31:07 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A4C3295A08
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Mar 2026 08:31:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 209DD40C92;
	Mon, 16 Mar 2026 07:31:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KOtFSgKCCv4N; Mon, 16 Mar 2026 07:31:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8D9DC40C81
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773646264;
	bh=Izv3sV7V8t/2XblD6nIZy2Dee2wqP5wpHku0BUXl7m4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bEQNtR6oedEncy01lviA+wKaku2a60CMq2VwnZG97c92AXic3F9hYa75DALXaNrdu
	 rGrYWWYdD2zs/W5g9c30nN09RS6DnbWwVisAGmaOyP2AVqY13V3a80SkBJZCYUd68T
	 qufTFpsnPh6nmUC+IW1DXqy+hfP+NR/0sDt7yxMg5N2Qhv4M8nbbeEf2Xl5wwMaT36
	 IMzkhfmVeskwWBKEzzWiX9SNCxi0v4B8BMMK7zhJnyfqvPX2TIt3ikWnymyook3UuD
	 7rr/+Zbt7p4mr3BmkTMvFc03au3aEPtzA3veuZlnjoB0DdL16+X0XLPASLNLy76V2d
	 eGbXTk6f5dKIQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8D9DC40C81;
	Mon, 16 Mar 2026 07:31:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 06CB9D3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 07:31:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 044E940B55
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 07:31:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Xj4kDRjsnrtV for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Mar 2026 07:31:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3650D40B53
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3650D40B53
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3650D40B53
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 07:31:02 +0000 (UTC)
X-CSE-ConnectionGUID: mleLLijpSFaCakA+cz9jbQ==
X-CSE-MsgGUID: pjcqjs6sTYuGebCp9gH/pw==
X-IronPort-AV: E=McAfee;i="6800,10657,11730"; a="74548395"
X-IronPort-AV: E=Sophos;i="6.23,123,1770624000"; d="scan'208";a="74548395"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 00:31:02 -0700
X-CSE-ConnectionGUID: NVn1c3juRF2vZOwzbJPk3g==
X-CSE-MsgGUID: sSIvY73ASx28Fu3adDE9Qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,123,1770624000"; d="scan'208";a="219428644"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 00:31:01 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 16 Mar 2026 00:31:00 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 16 Mar 2026 00:31:00 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.69) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 16 Mar 2026 00:30:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TTparikYhG28qccgcecOZuYn5Q/zMJcmzypQ1D/24fZfDuE7K0c7Cp1ejFHYYyJUOeHxdgbbJ2jZNS2OWz0S5XSWvwde9mt43YUqd3Z3xNWDrUhXgaHMbKqbV/EE6P4SUKqBWnm8M19RmlVs4VD8RLLu7uLp0i61xuktsQMY+9b6K36r+B1cno7upnDNIdutxWZRsGZnUkQuPh3nzKuwIukyD6tFi+B6zAlzQxKoitJtJFD+BBUZwIzPx6B0EQdCq9B39OBCbCeOmldfTGCZJhGgUOauAlRdwrXJdSBfxFu6YMcfDFrnjDLSW79z8O8FB4Dr8ZX+afK7c8W+j6lxsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Izv3sV7V8t/2XblD6nIZy2Dee2wqP5wpHku0BUXl7m4=;
 b=g0vHUNdiaTcDNZ9XHxocuifQ7yYm9U5PXiRqe+OuSDTP8Zk7drSgOM+ifEunBFf3VrPljZAiaIbFnShorh+F7QhrrhRcDm4cqzKRd4cRhngodV6Jfto9OaWRVilZhyVhM91EOdoQHJ6k/JYxFodjABVgyu/NzX2N4qheOfsd4RJyaMc3yTpV99QjLmi4LjSjRxGV4a0NcRAsmhQXfqnZQcZnGOfPEDDUWXmb8UJQSzBBlyXsNMy3ATQT10siK3EnZAwFhjuWaDOMGHnZyusGrNPsLB3l/xauWTw7cTY6xK5yH6nHbdiNG6mapi7zDEPrO9oPuqrc2DdqKa6kEY/COw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SJ5PPF263E38237.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::81a) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.16; Mon, 16 Mar
 2026 07:30:55 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9723.006; Mon, 16 Mar 2026
 07:30:55 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: I Viswanath <viswanathiyyappan@gmail.com>, "stfomichev@gmail.com"
 <stfomichev@gmail.com>, "horms@kernel.org" <horms@kernel.org>,
 "edumazet@google.com" <edumazet@google.com>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "kuba@kernel.org" <kuba@kernel.org>, "davem@davemloft.net"
 <davem@davemloft.net>, "eperezma@redhat.com" <eperezma@redhat.com>,
 "xuanzhuo@linux.alibaba.com" <xuanzhuo@linux.alibaba.com>,
 "jasowang@redhat.com" <jasowang@redhat.com>, "mst@redhat.com"
 <mst@redhat.com>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "ronak.doshi@broadcom.com"
 <ronak.doshi@broadcom.com>, "pcnet32@frontier.com" <pcnet32@frontier.com>
CC: "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "virtualization@lists.linux.dev"
 <virtualization@lists.linux.dev>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v9 4/7] e1000: Implement
 ndo_set_rx_mode_async callback
Thread-Index: AQHcs+CEbYEltiRCMkqShlS+0oHta7Wwxc1A
Date: Mon, 16 Mar 2026 07:30:55 +0000
Message-ID: <IA3PR11MB898620EE4E8B4D2D75E9A7DBE540A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260314182809.362808-1-viswanathiyyappan@gmail.com>
 <20260314182809.362808-5-viswanathiyyappan@gmail.com>
In-Reply-To: <20260314182809.362808-5-viswanathiyyappan@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SJ5PPF263E38237:EE_
x-ms-office365-filtering-correlation-id: 84095011-bd90-4250-208a-08de832df5b3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|56012099003|22082099003|18002099003|38070700021|921020;
x-microsoft-antispam-message-info: HjLXjs74RvYBc49PigOliRlLkRTIMU+YUyB+kN+0KEZJ0wtnX7ZqWrlFtK++U/bDcpk3YyyO80X0cQEHiIhtK2vphHU5PxOIBiRxAdwigb7kX9JBkr81C5e5142WvFQXa/pfTEd1Ng9ZGMgS80b8H8tJGP+StUy/uCg9OJfvOrd5xDG9cbySRrNYT2QR81E4EtGYoYaKA8Xdb51VfmzOSWiIq5BGJe3Bn0ICKvjyHJtdRR6wX0c4e5l+p7wnyZruqltP9aj1BjXX6Kc2SKrSSHDlI99zK6S20YD6oNFv5q+kVxWQTzJTtAdR5omUmh376Ioh4Eq4WhgKYZkUND6+8Rn5xUlnC+A5s2pQVZys5u+TGhn4cgVZaxgbi+Kb948RdKtme14rO9FkwNOqxxrC5b3OigjdHVITHTbikIDjYF1G7rOlHgnpw8wqK6TiY9UOnAZdtaJyD2nSNtYGOLHYwNkIPei9ufadiVWY1wAGYLecXBreHLvJ3X9Rq2XUOhl27Q7Hy0fmuC9GB++vVF8bb5/yGDqdzL85qZv10b5PpRU27+lW2xCcWPcdcQNEUaN3p5GvVjW1Y0YQAZPGCFCbubYt6WY0scVNjXNuqs2E1pYM56YxCNa+qwPw3we28xWxh9BXN9dPXbWfyfeiLRW/oyAVIw2XSYo4Sz4S4gHfDtxAIhP5gPE2nXv8LcF0C0i784bn7+zp2sZf/aA5K4D7IfeRNmzvrIC+Xtu4/qEAeipo2m+52lEbNCr+cU/9R8CxZbrZuzzK8CTILwhyaBb1QnqV/xyLrProO+1BaTJn3Mh7SApmQZop/F5bzCZmXDgh
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(56012099003)(22082099003)(18002099003)(38070700021)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5hQa8AhU/4xX0UdXz5ctNwoGqruwvyZvbJkbHuNeP0kcyuJ8aqZEwQoTyw8m?=
 =?us-ascii?Q?wwOpg9oyuJjSAa3Ax262bX/cdobniB4305WXBikDzT4dqsYgcuLn95IFASNc?=
 =?us-ascii?Q?DKTwqonohc9DKH5Pc5OOUCKOTaRmiwIBgYfcM0Tsih5FaGiAN3LyxZIJZ0iA?=
 =?us-ascii?Q?VuvaF01Cc20N0T8PK2YUdraOukPN6FKSdrEl9bMBLvl+py9yePec1XDVIWVe?=
 =?us-ascii?Q?zjdwveu68voKFbsHi+KK0msR+wyxD0+B518oiQ70e9BGVrlWGco5Cddhnfhx?=
 =?us-ascii?Q?jUReglEXiKE9BfPIL9IcUzHU7E8K8C9susyqs/ZV8LNRKUiNWqOKmRo5dDMs?=
 =?us-ascii?Q?0R0VNksLNly8BZfa66czY2fPZU/1+SzPT8C+UYUQgqaqwzFCWj8/cyWluLxF?=
 =?us-ascii?Q?LOZGiSJKv8BTlcBs5Coxzz0thuZidqQQzLTkB8MvNRKd4X2gQEBYU2grV2iP?=
 =?us-ascii?Q?CCRFRa5uWiKG92WqdebxITJPX7OrbF/vYILjBnV05wTG1ovP2FMX3iOR5Qtf?=
 =?us-ascii?Q?r1vtGp/lFLx60pixGXIiVAQwDd+q66hn5cZd7sx+QwGyoaC7JV3YrE1/OfoM?=
 =?us-ascii?Q?wKtmcaoEjkKnkeE9VXj+yAg3w8pfXGjYWA5PqWrwrme9jTluDYWKuXloniXn?=
 =?us-ascii?Q?+Y8ZrYzhEG03wafxUxCnzgaUn0hqNKju4ckHA2L7hwQMZj892eGUM3p7M0kC?=
 =?us-ascii?Q?5ehq9VDWyLN9uuQ3s6fEtPz78+DvgqCdPyJfaxLf+2p9SpZC+4c0ewTzJhdt?=
 =?us-ascii?Q?OO+b3nIaa06/43Li4GbG1FKKuP37bB/2yT23bLPNHUeBIVvTrQ39BY/5tmZl?=
 =?us-ascii?Q?U+JHzbjIHTrg9DreHTgVtvCLVc7gXj0EpzO50GcTDnvT9jUmAMz6FX2xydbu?=
 =?us-ascii?Q?scb95afwAbaBu9rmNE+brLjS22zwVv+pnfbdJi1d0Kt9Ak/i1zi7SmrAp1nS?=
 =?us-ascii?Q?AzeMVe5KhRoau5kEX4ofST5Wd7F+50sM9DJhfLsFSwmbx8nVWfLiJDVWSFsi?=
 =?us-ascii?Q?EMpioJMMCFV4gtLYb+Vuq/1VP37yMYWUpcm7kUe+fsX4mAavAyfgqQar44/e?=
 =?us-ascii?Q?++q37+ZeTTeMUXPV5mLp55TA7pPKpiFxnszsQGzNvkIrsB78QpFu4CDhtpcD?=
 =?us-ascii?Q?1qV2Z5zCDkHWP3U2QLnOb3wGGNWPBCXiE5nJx0xQ9xsjq5bPQszXrovvFP7D?=
 =?us-ascii?Q?fsgpVD9xaH0mWEygcZz/bslzEWMbRCPc9ilYgpU9FarLWnKnirEqTPmHUqyr?=
 =?us-ascii?Q?xXs36yRC3RcR1MAVaKqB4fs8dKQ7QWLo+jRJz2Z98Mb1G9htb76ERG9O/Jxt?=
 =?us-ascii?Q?tntKGad1ajjbWlHILRsstKgjDHS0rkjl3r4Zxhudv4wpzXYSWbKYx6dSgPrP?=
 =?us-ascii?Q?NomnR9308ebsf1JD1z4wt7mMBcjrznYyC+3sAavSHddALUXbE9RPlYrCaLhP?=
 =?us-ascii?Q?S98e+lkPd7/KuSQx2qJsF8S7cZZ8Hi9vWP1xMnuDQa258mYYZFuVU8+Plqkv?=
 =?us-ascii?Q?0zbyHMgezeYk4wtYa89tLty5lII7Nv7YA7lAIDIDkwwdbe/gUj4eyNnhd0IL?=
 =?us-ascii?Q?QLcvL2NoahkosoBuoZVjlMlVp44sZhLmTEWozUollYv/n1Nsme661Uzcd052?=
 =?us-ascii?Q?4CWrVRnPIMAMEOVn7j9QWE9tQ+Eg2UWixKfccuSYNMBtophO/QNkTzkDFMtC?=
 =?us-ascii?Q?lRIzR1T3krQeesAilAx7He1xGMEOSTTPTTOVmhn6frGiAL/Rpl8SerAmcL+Q?=
 =?us-ascii?Q?65QmujgM2241eZOpWkNeOHKYgS8j5js=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: U8XoieyJAc4c3h/8STWi3PYg2BdtLJ5tvoyC+m1deLXlrz1mMtxzK0/mwycxxVIENs4qG0wJC+E+fz0JDdXENT2nSqTnsD/QOJyRse99WSkUQy0ymfhOloGSEVzmkDoVIZ0azkcV7dBgTkdkm9pmyCk0rM5xhngaK7bJU2SbfdMPfmraJzDlBhj9/Xc9BiOdFPBKgEzxRQYqbGZGe8iVW+r3heaZJxFgpYQrZAqmI/Yc8kYE66/MSLisI6RIVZvEiP75T00f/+fqQxS4hyuy5LrlFAsTRaCH9b2/IdAU4QpHXqAB9/3NnHvgsgDq6cKars1nKTul4+I8V9StsDcWWA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 84095011-bd90-4250-208a-08de832df5b3
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2026 07:30:55.1926 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xO2douLY3XO6DLG5gwDX/lUlcAMYNaqja32f+2ZtYYJPNncOyr9V099RZhQ29LdV2l4UZWaJ4GUrY97/pemuH47TrM2l4Gl0bMaVLf+7fcA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF263E38237
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773646263; x=1805182263;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HQnBzOnfZUb0VylK5U8oTjv1+Phz6m0YyXpymzDj2MI=;
 b=KPTOy+AC7uGAcxI0i7WymgVo1aOxqGgUof+vtvRDB+oz93koCI52JxoS
 3IN8wID2Qc9sqTETjCxDykJ3XlfyL+pad35L3Dtx5kSyHCWXBT82HSP76
 pi3XIA4cmdTpfaqmSKlQNWd09Xuam661lxTi2aCqGmMflGpjvGlTsyTtX
 XMp7xh9CGzJswmV5zdG6qleGRIOCS5bgT+mzbegXpOqTstmxX7sESEwLx
 YC+H0Tk5xsViwcw2r85MHbCZME9Is2/bKHxmaW4Pj6XMYiqieySmAih7Y
 oCU2v77yVzF6gfOBnyM4QbPXYTN3YQLCmJkMg/+lBQTG9ioVVCH/nzONV
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KPTOy+AC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 4/7] e1000: Implement
 ndo_set_rx_mode_async callback
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:viswanathiyyappan@gmail.com,m:stfomichev@gmail.com,m:horms@kernel.org,m:edumazet@google.com,m:pabeni@redhat.com,m:andrew+netdev@lunn.ch,m:kuba@kernel.org,m:davem@davemloft.net,m:eperezma@redhat.com,m:xuanzhuo@linux.alibaba.com,m:jasowang@redhat.com,m:mst@redhat.com,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:jacob.e.keller@intel.com,m:ronak.doshi@broadcom.com,m:pcnet32@frontier.com,m:bcm-kernel-feedback-list@broadcom.com,m:netdev@vger.kernel.org,m:virtualization@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,google.com,redhat.com,lunn.ch,davemloft.net,linux.alibaba.com,intel.com,broadcom.com,frontier.com];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 6A4C3295A08
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of I Viswanath
> Sent: Saturday, March 14, 2026 7:28 PM
> To: stfomichev@gmail.com; horms@kernel.org; edumazet@google.com;
> pabeni@redhat.com; andrew+netdev@lunn.ch; kuba@kernel.org;
> davem@davemloft.net; eperezma@redhat.com; xuanzhuo@linux.alibaba.com;
> jasowang@redhat.com; mst@redhat.com; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; ronak.doshi@broadcom.com;
> pcnet32@frontier.com
> Cc: bcm-kernel-feedback-list@broadcom.com; netdev@vger.kernel.org;
> virtualization@lists.linux.dev; intel-wired-lan@lists.osuosl.org;
> linux-kernel@vger.kernel.org; I Viswanath
> <viswanathiyyappan@gmail.com>
> Subject: [Intel-wired-lan] [PATCH net-next v9 4/7] e1000: Implement
> ndo_set_rx_mode_async callback
>=20
> Implement the ndo_set_rx_mode_async callback and update the driver to
> use the snapshot/commit model for RX mode update.
>=20
> Signed-off-by: I Viswanath <viswanathiyyappan@gmail.com>
> ---
>=20
> Call paths involving netif_set_rx_mode in e1000
>=20
> netif_set_rx_mode
> |-- __e1000_shutdown (lock added)
> |
> `-- e1000_configure
>     |-- e1000_open (ndo_open, takes lock)
>     |
>     `-- e1000_up
>         |-- e1000_reinit_locked
>         |   |-- e1000_set_features (ndo_set_features, takes lock)
>         |   |-- e1000_reset_task (ethtool callback, takes lock)
>         |   |-- e1000_mii_ioctl
>         |   |   `-- e1000_ioctl (ndo_do_ioctl, takes lock)
>         |   `-- e1000_nway_reset (ethtool callback, takes lock)
>         |
>         |-- e1000_change_mtu (ndo_change_mtu, takes lock)
>         |-- e1000_resume (lock added)
>         |-- e1000_io_resume (lock added)
>         |
>         |-- e1000_set_link_ksettings (ethtool callback, takes lock)
>         |-- e1000_set_pauseparam (ethtool callback, takes lock)
>         `-- e1000_set_ringparam (ethtool callback, takes lock)
>=20
>  drivers/net/ethernet/intel/e1000/e1000_main.c | 77 ++++++++++++++----
> -
>  1 file changed, 59 insertions(+), 18 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c
> b/drivers/net/ethernet/intel/e1000/e1000_main.c
> index 9b09eb144b81..ec25b41c63b7 100644
> --- a/drivers/net/ethernet/intel/e1000/e1000_main.c
> +++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
> @@ -99,6 +99,7 @@ static void e1000_clean_tx_ring(struct e1000_adapter
> *adapter,  static void e1000_clean_rx_ring(struct e1000_adapter
> *adapter,
>  				struct e1000_rx_ring *rx_ring);
>  static void e1000_set_rx_mode(struct net_device *netdev);
> +static void e1000_set_rx_mode_async(struct net_device *netdev);
>  static void e1000_update_phy_info_task(struct work_struct *work);
> static void e1000_watchdog(struct work_struct *work);  static void
> e1000_82547_tx_fifo_stall_task(struct work_struct *work); @@ -359,7
> +360,7 @@ static void e1000_configure(struct e1000_adapter *adapter)
>  	struct net_device *netdev =3D adapter->netdev;
>  	int i;
>=20

...

>  		}
> --
> 2.47.3

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
