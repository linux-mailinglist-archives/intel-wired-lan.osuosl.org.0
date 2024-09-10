Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA992974114
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Sep 2024 19:51:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 12F2740413;
	Tue, 10 Sep 2024 17:51:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j3lnPucE_52P; Tue, 10 Sep 2024 17:51:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C677740B91
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725990679;
	bh=IIOi6cihPHUHiUp+fw73DWJKPbsWL7HIHo1qpBQbjQc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Cm5JE+RVQJbjAFGGkDL7KiNPHX1Fl/jXmZLKRQNbn3MXWKviNW2SMvuDr10SSsZOj
	 B8HMXbhGkt1uBln8Lp/s2HQsi0X2Zxf6T99lRpmvnUgP9+k03x2aM+CN/U1wrC6/lG
	 5GJVt8e8h+oYTICgPdevHbzPL8bWkqJHcfnj7NNIZydAlUJETJtcTnyoYoHw4Y6pKu
	 m9fQb6DfX4HpJ9rW+lmpD42Wvsapbchv1ipgqtDpUGLReQBSJjkxCw3lbkgF/D1W5v
	 5v6EAlPp+GDulCVQkmfZy6ZiMbDQwGdVE9JgvWw+R86VNdPlvICs3cDov/L9pIBawW
	 vMgeDlXVDrt9g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C677740B91;
	Tue, 10 Sep 2024 17:51:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 747F61BF954
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Sep 2024 17:51:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6084140B9F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Sep 2024 17:51:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AgwSD76DiRVd for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Sep 2024 17:51:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.249.131;
 helo=eur02-db5-obe.outbound.protection.outlook.com;
 envelope-from=jeffd@silicom-usa.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 23B3640B32
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 23B3640B32
Received: from EUR02-DB5-obe.outbound.protection.outlook.com
 (mail-db5eur02on2131.outbound.protection.outlook.com [40.107.249.131])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 23B3640B32
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Sep 2024 17:51:11 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hm6aGEW428n+lU0zXTStS572MIpf5PV6IlShvGggAWRCYFuDhhLOf66AsrIxrmIv9sxBADryQV2omLe+Dam7sLFDcKKgfrRLhHvFyRmxEEHhpx+gV60sZloxAa2wBAUEoml0XPv6I2RE+rgGhJITL/2yfBj4bJ2i3tyY7AEVqy9FqxAtTSdRj/JGbn2b+ijZ1i/wMY0y+ot8zSHQL05sALO8PjchocHVJLrggVgNjlxCGkacD8/qnPpC8t9OWIagvgGNT4H8Z5wDa8qjloGO+xkNS+azRGxTRrY10df0lzjiwDjJiPkd9ue1J2HJvPyueOiixwb+nNER5/gvcXTPaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IIOi6cihPHUHiUp+fw73DWJKPbsWL7HIHo1qpBQbjQc=;
 b=IlGkBM4f/qWGn7i5GOj0/Ibx0pW43RM8TDjcYjGrLQDOjCqV1fFbxtL3ALMT+F+w58SDRJzVFfOsK+NRmSzYHNYBW/t4z5CmmzggxRWYaBE2xcy5zznbqHUIavp6ldKOeS59eKJsmsjjoiYXckPptn2EmVTUaZ6mfSA5cMn3qxDPSand7/DuiEyKb8NL0rotRLTZ5P39GjmRzxO4IKjGLI1wiMuB3dh3FpWxVn69c0+l1g49kHoIPdiBu5U0bX8OAFJzelypfiK+KxKWDcc0axZst+tRA3YQ4qZsn9PM5YdzFIk0Ks1UK0NPjVZFPg5/qMKUhX6j33Wz8ONH4i0chQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silicom-usa.com; dmarc=pass action=none
 header.from=silicom-usa.com; dkim=pass header.d=silicom-usa.com; arc=none
Received: from VI1PR04MB5501.eurprd04.prod.outlook.com (2603:10a6:803:d3::11)
 by DB8PR04MB6986.eurprd04.prod.outlook.com (2603:10a6:10:116::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.24; Tue, 10 Sep
 2024 17:51:07 +0000
Received: from VI1PR04MB5501.eurprd04.prod.outlook.com
 ([fe80::610a:d9da:7bd3:b918]) by VI1PR04MB5501.eurprd04.prod.outlook.com
 ([fe80::610a:d9da:7bd3:b918%5]) with mapi id 15.20.7939.022; Tue, 10 Sep 2024
 17:51:07 +0000
From: Jeff Daly <jeffd@silicom-usa.com>
To: Andrew Lunn <andrew@lunn.ch>
Thread-Topic: [PATCH] ixgbe: Manual AN-37 for troublesome link partners for
 X550 SFI
Thread-Index: AQHbAElnQB6kTGxClkGw2bZQ9JRTDLJK6aGAgABP6cCAAAn6AIAEVoKggABEV4CAAW+7sA==
Date: Tue, 10 Sep 2024 17:51:07 +0000
Message-ID: <VI1PR04MB550131951D89CA1F6D93C828EA9A2@VI1PR04MB5501.eurprd04.prod.outlook.com>
References: <20240906104145.9587-1-jeffd@silicom-usa.com>
 <becaaeaf-e76a-43d2-b6e1-e7cc330d8cae@lunn.ch>
 <VI1PR04MB5501C2A00D658115EF4E7845EA9E2@VI1PR04MB5501.eurprd04.prod.outlook.com>
 <ac2faac2-a946-4052-9f61-b0c1c644ee59@lunn.ch>
 <VI1PR04MB5501658A227BFC1A832B2627EA992@VI1PR04MB5501.eurprd04.prod.outlook.com>
 <da850961-d6ac-46f5-8afb-66e83e33095e@lunn.ch>
In-Reply-To: <da850961-d6ac-46f5-8afb-66e83e33095e@lunn.ch>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: VI1PR04MB5501:EE_|DB8PR04MB6986:EE_
x-ms-office365-filtering-correlation-id: 1f8b5a7d-5f96-45b3-6805-08dcd1c125c1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?QxibYbZAwqbYl2e6w3BHsfRJX6sHMTsMYcmO7FRY/8wau3+3vZbxbkZ7KqfF?=
 =?us-ascii?Q?oWNc0Uwxa9yhtPpNSDQoDpw0ocRiRz91zVEOxb0WJgDumwMl22zh6Km3Pjd5?=
 =?us-ascii?Q?2p9FLvYYjlK0R48ztzkG3gLMrCye4zluHlbshWecwty1JBY80SmkVqBtdxms?=
 =?us-ascii?Q?LOhD/tVSgSg3KebY9ij4KYNUlB186lUEbOAnli8LIxHASJPT94hg5XAZQeOw?=
 =?us-ascii?Q?6Gd0tk9HCBZjbQoA5YgfS8gtUwWdLgm/wbtGpggrGvocnp1nbWgGgonNfMG9?=
 =?us-ascii?Q?g0pxY6i/T25pN4aNwGIWCeBoX75mpKt6sRI28XewCnJQqPNvKAV4a0bwZ1QP?=
 =?us-ascii?Q?sh0SFQk+JPSgSPSO0SPn4eozrPdQj37xo5E7pgargRkkuZ6XIoCTY8X5DrZS?=
 =?us-ascii?Q?8G0DblS8umtbK8KF1VhHLnocDf3xByPjoKJyTYvToGev4PHOP5oXd9ts6NBa?=
 =?us-ascii?Q?gePaIecmwCMwHbac/2z33mYcTPHi6mPdiYxVykwuX3/K3e93XHMPq2VJaJGe?=
 =?us-ascii?Q?mCODVMNhB+Js5p5nb49rLwmY4/4qG2/u0sojXEQw9YxZjjcbUBB5rfGYq31P?=
 =?us-ascii?Q?Q4M7e9p6zh81kj3NB7YWztVPHsQjB+vX7ZqYxMyIvyzwfttrbN9dOqNZ6fr/?=
 =?us-ascii?Q?ESIb7d/AtQQUsU4ViaiJdI2mlJggFm+V3pFGwwkUl7gYpidHuaNf8F29d0z0?=
 =?us-ascii?Q?kj8gFx3IfHq27XhDWx+PNJLCOimteRR8iUnkKMWzFRLhGwJ5oM/rzKgJKR0x?=
 =?us-ascii?Q?NRwaoiAuFLFzeM+lgkcU73E8Lv6hEZVfSh2eRJx8TZd7HYdKuQIlgUW2sjch?=
 =?us-ascii?Q?z4RyshfvscMUFB93YHPxoeVYrNz9jT/22u3K0pP4xOQ/lsl4U/j0BTmZlMRm?=
 =?us-ascii?Q?I1HJEs4u8s8ohIM7CWPNsW5/46rQK3g69eT26wpXtV6TzY55vnGq9ZI9zMdF?=
 =?us-ascii?Q?IdSLEOeSTfnLBc2XJnCd5W88TK4HZ+haC/aFJd/2cNEvDf2Sn2HOElJkHthu?=
 =?us-ascii?Q?w73yq/s7pNrP72UkRpakrMxQpmdOfAu6UoDbP6HanwxyJnOuuOlK+wntOV0d?=
 =?us-ascii?Q?PCZoCoqzJztsszd7R9nDT9wsGs0YMI6akE6L0NDhuInD9Ejb5v03C90XhvVv?=
 =?us-ascii?Q?tP3+xNVH49XM4hh+l+/shcUb7ixtNrX//tfiedsR/7ATko01cgZsM5SHSY79?=
 =?us-ascii?Q?+QdfklApUpoGCIZIdzvIiuyjVxVsb688GtnhvMEol240mXyHboxF/B8/nsUr?=
 =?us-ascii?Q?FNdgOjZyVxqQYx8+qFoZWG8zBt33XB+ong4d0Q/RvBQseMvoxeixJayPxcyH?=
 =?us-ascii?Q?+JgbPVb30aZC5lApnNNvzZP/SSSx6vrKw9u+Tw0Ou+luTC+H1Zg4QWOLVhCR?=
 =?us-ascii?Q?EUvKso6ITdj3VGJVfzxUu+V3vxYKJG5rg2KYkOuZnGyA5hP1iQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB5501.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(38070700018); DIR:OUT;
 SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gKiKTHPf57o7W2DmbBct1GyiRaHAt7GkMpqpMqIXtfjh0dlVO/OcmDHwolSw?=
 =?us-ascii?Q?ijT4ZDmQXqttPtpBGz1gEMQFyAN1B0FJjIKcnuvnr54xBY9WswXQl0pFFbT+?=
 =?us-ascii?Q?NYdyfNs0PRpBi0FK8J7017Wm1wu6qImpJ59rwwPpUIWIEPTafiu/PzFBFShD?=
 =?us-ascii?Q?lM0mwCaBRX+ZNmnUC32xTBr/JiS6BhF1Z13r7PldLKPgNsRCKt2CCYn93jMA?=
 =?us-ascii?Q?zSSC3i9rJ9rROVRTAWmffgz0Y+/xw1lHhKmqoyMFUJZ+LJOJUZz4pHt8ROoV?=
 =?us-ascii?Q?+MvppAJmkt924fYfwaIFECAx82/YssBjBUGR8kkBaPLYD4CPmkzkPrzGrTUo?=
 =?us-ascii?Q?3KUL3mPCRkCCFesPB/M/vyV50K0t8+acQkzUvgFux04/bztuHvkplS0e+TYb?=
 =?us-ascii?Q?/LVL+lJ3QWqFVZcgAI6B1QY5uVFd2+NpnrvyCDP61f0vlGsTBXuod/T8vhcn?=
 =?us-ascii?Q?zwh4Zdrxy24Rkl19wbdd7N2UIbPMf1NR+LAFujs3UUS00HZ5kgaCCjSgkO1O?=
 =?us-ascii?Q?HFmZG0DUOg26Y1N35TpLjxQ6SimRGuevnUbqHxc8VavN2N3blRrF954xMVah?=
 =?us-ascii?Q?DYHzoTMzUicQ9cT80Fd/mViAclfKMUJx5UQDQkfWmK3dGqRXAqHekKUxY2SH?=
 =?us-ascii?Q?spwNQRIfnuEvqc8F6szlRW584fr5uNdCiZpUYXVPjuljU8GY8BbfrEpBG8ZO?=
 =?us-ascii?Q?WhmOQIHwnJXk1juZgosX+G97OpRFml6fw/McbtPtB8PEUh9KgpGPNgFxtNQL?=
 =?us-ascii?Q?F0/pQOjYm3H2q7ucizcEwu4muEgyTg68NAjzO+jd/Smhpgy8W9mryA+XbLDE?=
 =?us-ascii?Q?O70LPbDnHoC7PFoCqDAx8O3rfNrg/m4N1MnGKKDQSzuyc0OByOjYxu+KE1ya?=
 =?us-ascii?Q?qZKSWAX4n+4oXk/7I6zCBj9BnLcTIdJiore75k0RiWRztNt63hRONwXh9U76?=
 =?us-ascii?Q?OGqRq0vdBHjp6eRtXpSKs740zXRzKyY+cZ/sPsFQ3E0+6ojt7HOutFgNEuUG?=
 =?us-ascii?Q?ne6L4w0R0rxOXREjNa7R3L8ic1W7bHhYR056WlL3ryya+OHU75yF6ZeeoG9J?=
 =?us-ascii?Q?RIsRXGYcd0nQacLO3iJTME8aW5ejMkXGrCf9iXDz+moYyMFTUjz2nrI3uexo?=
 =?us-ascii?Q?Puu64JaxCvwYtTBFaifg5QJ0Xpfm4wyAHmZFDJYGMOaX1JfzdyhQauIgw/N5?=
 =?us-ascii?Q?GJHmhdZY9WjCgZTEFjMcOxE6RcJxTUVMQak7G8lawip5SEc9vcfjAuxwRT3F?=
 =?us-ascii?Q?u/E07mGQxJb8mhPjeVtkhevzb6ziDVtiMjycObA4ClS0dRpHGjUiwmnPSrOy?=
 =?us-ascii?Q?KqO60a/FxoGzzLDpwdaq7nXNG4uMhf5T9y36euCMzupe5ys2sqBST4pqsz9s?=
 =?us-ascii?Q?AFCZmyk6qf2PvjQwdmPK9NVl3WpFfnUpKR3vePIIvLuEdiJFwfF1P1RtOcQ0?=
 =?us-ascii?Q?sQT7ugqg3LR4RTHOgkGVuy5C7dXfcSoghRRXcaF/ESjzKpV4xAt/w9wsMzDX?=
 =?us-ascii?Q?BLishD+VcRBBIMT+Vd7shxrO95n3LmERXPcDD/30/SIVDNv26DGpEKikACUN?=
 =?us-ascii?Q?j0IDvrNzSCG+7lxLMLxUHTrY48y5K78Y4qtuuIG0?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: silicom-usa.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5501.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f8b5a7d-5f96-45b3-6805-08dcd1c125c1
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Sep 2024 17:51:07.1566 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c9e326d8-ce47-4930-8612-cc99d3c87ad1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pWv3a8e0k2mjkloCGmzEEJHPy2l+f3JlRyzYtkKsWMZjgf/OuQ+cQy5CMXyZSFEnSnuwRCsXoHGzGIyenXicPA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6986
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=SILICOMLTD.onmicrosoft.com; s=selector2-SILICOMLTD-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IIOi6cihPHUHiUp+fw73DWJKPbsWL7HIHo1qpBQbjQc=;
 b=HA0kKCkI4Pg7FT3Igb7OfAOjpYwxRrZ3XFOZQPSDJrKa5vRxIzf7AEh1EHCalShWI0LIz6O8Naw1+rIR1OKqr2mvdNfM+aTlKLZb9Jk6070Ss+gnNGAl5ZTy+zmK4A+stcCCa5BQxDlssON4xnmZIIpI1HiFOxNqjowtzt1Ogp8=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=silicom-usa.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=SILICOMLTD.onmicrosoft.com
 header.i=@SILICOMLTD.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-SILICOMLTD-onmicrosoft-com header.b=HA0kKCkI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=silicom-usa.com;
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Manual AN-37 for troublesome
 link partners for X550 SFI
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
Cc: "przemyslaw.kitszel@intel.com" <przemyslaw.kitszel@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "edumazet@google.com" <edumazet@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


> > This was originally worked out by Doug Boom at Intel.  It had to do
> > with autonegotiation not being the part of the SFP optics when the
> > Denverton X550 Si was released and was thus not POR for DNV.  The
> > Juniper switches however won't exit their AN sequence unless an AN37
> > transaction is seen.
>=20
> I wounder what 802.3 says about this. I suspect the Juniper switch is wit=
hin the
> standard here, and the x550 is broken.
>

Paraphrasing Doug: X550 on DNV lacks the AN37 to SFI like the other ixgbe d=
evices so AN37 SFI doesn't work with DNV unless both sides force autonegoti=
ation.
The Juniper switch won't exit AN until it sees an AN37 transaction, on stoc=
k DNV this won't occur.  There's no timeout with AN37 in the spec so Junipe=
r=20
implements the protocol according to spec, but this means with no AN37 comi=
ng from DNV it loops forever.  Other vendors (and probably Juniper too) saw=
 the
hole in the spec and have a timeout and some recovery where it locks correc=
tly (not via AN37), which make other switches work ok with DNV, but these s=
till
have the endless loop.=20
=20
> > Other switch vendors recover gracefully when the right encoding is
> > discovered, not using AN37 transactions, but not Juniper.
>=20

Snip

> LOS from the from the SFP cage will tell you there is something on the ot=
her end
> of the link. It is not a particularly reliable signal, since it just mean=
s there is light.
> Is there any indication the link is not usable? You could wait 10 seconds=
 after
> LOS is inactive, and if there is no usable link kick off the workaround. =
If after 10
> seconds the link is still not usable, turn the workaround off again. Flip=
 flop every
> 10 seconds.
>=20
> Hopefully the initial 10 seconds delay means you won't upset switches whi=
ch
> currently work, and after 10 seconds, you gain a link to switches that re=
ally do
> expect AN37.
>=20
>         Andrew

I'll look into this.
