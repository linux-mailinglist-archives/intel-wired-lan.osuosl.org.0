Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gq8jEdjoHmrqYwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 02 Jun 2026 16:29:44 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F2462F4A6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 02 Jun 2026 16:29:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=YMLYb0uw;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AE24160DCF;
	Tue,  2 Jun 2026 14:29:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yLW_Gnsy80X3; Tue,  2 Jun 2026 14:29:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7018160DCB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780410580;
	bh=44kyolpzY15mi3tleZGgoJkwq771ndp/HHff3ZOeRiU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YMLYb0uwgGglOD/wGIojSypGwarAV/A88vozmGU4HSX1luyP4H1QExjERldb4bMC0
	 juoqbNE7Q3XRXvAE0LzbxZINQQk8Wu0qtwnwC6D7zgz8/9lHVqhEjOP8ympSwH/XKV
	 G4TT5YN9/IXuIpeul8VK73J43jElijq7UBC2iQHp32T4DPpoWqh5F909nAG3SJYXOl
	 DUNEq6GJ7j0Qzv0B2va0nrQxe/aObLV+KmD/cTg9AGkxLaIyU0vD5xbKJfLVP4ZIUW
	 SIgvCW/zhjknFPrTYnAPMut08rqDXqqUzXMtLFDkVQ0Kyhpvwvdysaodm/iTDJjnc9
	 ZRzNGDkFWsGHQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7018160DCB;
	Tue,  2 Jun 2026 14:29:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 036AE33C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 14:29:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D984E40379
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 14:29:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6KF-30kTJ-nk for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jun 2026 14:29:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org ECA734033D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ECA734033D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ECA734033D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 14:29:37 +0000 (UTC)
X-CSE-ConnectionGUID: MxJOpGO/RSujOkqaJBr3ZQ==
X-CSE-MsgGUID: cbnsqYBPSwuQwz5WU4lSGQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11805"; a="106644090"
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="106644090"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 07:29:37 -0700
X-CSE-ConnectionGUID: hCA1fpZZTZa/SwI0hRnMwQ==
X-CSE-MsgGUID: KLIgOSriQ/eDcfmR0r1xZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="282029338"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 07:29:37 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 2 Jun 2026 07:29:36 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 2 Jun 2026 07:29:36 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.1) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 2 Jun 2026 07:29:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=khkSXx1dQaTLjEEyR5uksEFt3HLsehyswc1u+i0roQkkcNpIh5PTuv9NZs7+F8CCSGgKu4cGoAWoWDeg+l8AB2uK9oUFi5ol2pwhlxWqU2dWTz7cOJEwxWWYOOk9/O2A61Dbn+pvkKWrc47mlVQXw2evnm4t3eUiMKX/h6syrP/GOdHVkYCYbkUVYFv0kiU2OqOxkq1zg9YBs7seVWfgBnU9aQGELXFmFui7Jp3GFc2S1noxi4zaBRXx3va9TAO9uRMuxUf6pPdJmJ53rFQdX5aRpc4iKJRWapyMaCGzkwpi8LoE98A+bxei75yv9o81Auw9VD7t/t/oC6ArYGOOOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=44kyolpzY15mi3tleZGgoJkwq771ndp/HHff3ZOeRiU=;
 b=kUqdaiKUJ3+lOftj4Mrl0K5M6ePrQYRqvJkUm2mUYN780dN96YNRSkQdJw9pl0KQp25oS39RnLrQJ3rYvUekcAtoS2rT5Y40aSCim7VpK2qJ3g/STYo9lMpREwQoqMxMRKHS6iAUbwFYXIyNv0tsbNcFP2hTZclQDZtI/SiJltc59Jk43g69O2sAQZe/thVdtoXFwLB3c1Sq7ljkANnubQ5VNk4qbteZmoflngb/MM6cTs3qGEFJzVMeYE78WKhtjkJeZPBcHgFx0XeOvRMbJnO9ZIjtQi/+i+TBgZiYZNynPBG2hpzlg/WsqWqU4KnnT0KtZN5eDAy6SGhz+WraHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5983.namprd11.prod.outlook.com (2603:10b6:510:1e2::13)
 by PH0PR11MB5950.namprd11.prod.outlook.com (2603:10b6:510:14f::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Tue, 2 Jun 2026
 14:29:33 +0000
Received: from PH7PR11MB5983.namprd11.prod.outlook.com
 ([fe80::4d6a:a025:2e8b:b240]) by PH7PR11MB5983.namprd11.prod.outlook.com
 ([fe80::4d6a:a025:2e8b:b240%3]) with mapi id 15.21.0071.015; Tue, 2 Jun 2026
 14:29:33 +0000
From: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
To: Kshitiz Bartariya <kshitiz.bartariya@zohomail.in>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ixgbe: implement
 get_queue_stats_rx
Thread-Index: AQHc8ng2ItSGCAix7UGPgE1XHfXRsbYrT0dA
Date: Tue, 2 Jun 2026 14:29:33 +0000
Message-ID: <PH7PR11MB5983BC8645AB81E2AB011460F3122@PH7PR11MB5983.namprd11.prod.outlook.com>
References: <20260602100932.21838-1-kshitiz.bartariya@zohomail.in>
In-Reply-To: <20260602100932.21838-1-kshitiz.bartariya@zohomail.in>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5983:EE_|PH0PR11MB5950:EE_
x-ms-office365-filtering-correlation-id: 007d8fea-f4db-4761-d0e9-08dec0b35d87
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|921020|18002099003|22082099003|6133799003|56012099006|11063799006;
x-microsoft-antispam-message-info: /wlqI/i1qd8J5J0hP2Gt4qXpNUSukj842CbL7xd6p4JF84FKFXMFbLYKoY2JQ2sXfuGwyi5pARC1m7ipEoGDt0YQ4NhmTiKFWHkuy4tX+urpYJMWK8FAcFlk5YcCnPWoFpExNXF1tOvPzC6Bu8yqCDE0fKXc5og/3dGrORCGTBZyV18wOs90dfTOX13LzwV+ob4Vxe6M4bfhYA3WMy8t5X2+25rYksfSHYjjaALe6bFr/EFKeS7O0lZGx7PHOPj+zsu6SiD1mIJC7SowhNPF+NeDNM/1xjz4ctHQXN1cJPuCObH2S8ZWBEBFWilMpR83gUe3s2rJV6LfqHnDQiutP1LNzZJrx+jxIpf+uEQYjsZY+wqeUhbEsbwVrXgQAHyrX97/Gu+i1JRX98ilIzf78m/veb1oHzUQoW5JMy3C58SR5NTx67FMadM7oAbDMhOXBu6J8ykCBWMBTPzhVcLeev/pQY1tbl2OZhNzMXuQxHvaYBry1+fU0YV5iOOwHOV8AuIpOZiOBxFT/BSQD2ddci5rkJ8Pu3zkEv2B49BMmAf6TWZ799B8y+Z81baNz7E7jl9kxA1x5HESAt1ueEFdrWHwcgud6lIj190aeTGuHHIC5DHf20DpB8+T0RMds6Z9sVgPzUjNNVzPQVXc5yhJvhqxb5DB0ZkulfTu9muLO3ueMKikJx7UYLrnMFOzRB1RF9VvGGvN4uW3xD80ZaHQ0cIPXFfm/Mj5m/9wTo9US7p7U1Ptp7qTKla9RtcAS+snfFJ6micgzrEaDWmswZYGtg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5983.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(921020)(18002099003)(22082099003)(6133799003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tBRWjhvE1KNXRlWHOaeL5e9FUnbpy8m5AxbRSpJoLz3EdAyw3z/yVw/YfQXa?=
 =?us-ascii?Q?LYV6agWLw95D/NtCsn/2qvvXDyTWZ3nSv27sfPPORpteiYWQeKmXNNcWde3Y?=
 =?us-ascii?Q?y4lucD9jjJ6idkd+hPfg5LvxBz8jrlFs7BUlpadNB8WnISjiKR0in9+iM70F?=
 =?us-ascii?Q?67JyBpccWKPrIPz8nFSeYeo+X72uCUQjPa/kdk2LcZyE+XxSQFKC1AM43F23?=
 =?us-ascii?Q?u+rnXWIHhO06aKPQ/BDaEtccnn6rECEtiBwbh33FquRTP3tFL8oSa6gpHGNB?=
 =?us-ascii?Q?yAmfXMUAQajgicIKFSrCp3NriHU5acmcqU2lOfbtLgSKJxr1QQbxKzFT/dpS?=
 =?us-ascii?Q?Mjwa+QIVHi5m8hD3DfjKmenQ89DcX0wZqxLZ2vMEErSSqSyW69TO1XukZoNP?=
 =?us-ascii?Q?gS2y92gdk56QLdLgR8+n9zyPoBH1KK52bvCWDbagfVJm6e9u3+MwQ85qlKbK?=
 =?us-ascii?Q?0gsjYeGe6IRARuPfcJKGdPRr5IbpQcIdmd0XY8yWzN1lxhNe/49ZyxBQNibN?=
 =?us-ascii?Q?mqKkzHuaZ8/NrBkeMOqvUi91nGR+9PMqPUqVGUp2+yJ+HtORK365tBI59YPQ?=
 =?us-ascii?Q?u/bqqw2sD56gTxu2/Z20gWYOwL63bLzF808ANChPzluY5+ksHxvIuUKHM/LS?=
 =?us-ascii?Q?q5VTjyn/O+GWO335kmOcxfPzxundV5qj4t6qbnBh2y8vSVobZ7H4zbL+yUao?=
 =?us-ascii?Q?G4HkL8zKVY6J6tga/6ihuKdgQFtjZ1nRudqIHmRi6gzkez2VTAfPmnJGmWys?=
 =?us-ascii?Q?ZTLhO9E6D/uW687fM25rQqyTYmA+ba/A0t6xOUI399Uch2TmEz0uaZfQvp/U?=
 =?us-ascii?Q?35bAyQJbh94YOahIE+YwPssQYLVivakmSEvWAha2d7hXwHzShYPkIqXOQ9L6?=
 =?us-ascii?Q?DsYLxiC36RLQyh2oFCWN3IvY0RVn9s4voZVoQnjiSx9gYqVbmDU1NWg7rxdY?=
 =?us-ascii?Q?mMOq+zZ8YOnIV+ydSSXAH96CMwy9KA6rIkneDI2a3eUjLmYD3Kg0hFTOYtvI?=
 =?us-ascii?Q?OYvwgbJ8uTx0nN5qUuDfSNIas1S4Sb+0P93Imf1qC1IJsO1dwguSUNpnVrbQ?=
 =?us-ascii?Q?ZKhYCAret3TsvOFlu4QVZAwrWe2jEo4hSB9jYC5uoY0htzBTYtDMFRja8yA0?=
 =?us-ascii?Q?rw7DFiAOpXO+NCL8Rrph26NmjhMFy/ufW7jdmKCrWX5heZVVXoOMf+RwQpx0?=
 =?us-ascii?Q?+Ga2FEEqzKwq6lQ42Wbx/ZbaKeObIs/LJvWoz45I5IF4FLr8jex5HzCTfuFx?=
 =?us-ascii?Q?GFH0lnJGs3pPf773Jo/U+yzkF+ItJK3d7a4m5lEW5vIzduZG3ODCN/sdZftp?=
 =?us-ascii?Q?Gnr4Su1PrhKZeuX95sRb4dGTsrhaMJcZgfadgSJRXbdBIoSzxSq7rJ/8PyV+?=
 =?us-ascii?Q?wqTnqZoIsB0tvJYx2Jz8HU5DQ9MXVXc16fu+5dJ6E3bEwhukhhIuUIz0F3Vp?=
 =?us-ascii?Q?/N/frOLj4Jp3VzigdDeISOeIM7BWhOrA0C9vgRWTmjATamF7jSfTYkiJrz4z?=
 =?us-ascii?Q?IsD4R6MSLBlPuttHxh1ZJqH5nwEJTvkum7nAiqhQTmaP2N7P4bdSHku6d3po?=
 =?us-ascii?Q?6hbmh+Cffmri1R3o1rdfCwyhvW1/WY0gYKa9EjpbFYJ7rixc784nNgJo/tU2?=
 =?us-ascii?Q?HKhDOeXjvY8dznlr0CrdClXrVPb1cW2b407aSXYUbVzSA5eUCrlgkGT0kiLk?=
 =?us-ascii?Q?G4ScMUdC9wg4fw54DPLwU46AxoYWOaAMNwm7LqXuMQaxG/qV7Qw+lQnFZkBG?=
 =?us-ascii?Q?eAuc5fcF3Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: QlphH79qIKF7SyO+Fa2xQ8rJlgUaqQcrLQnb8cGq9zlXbhcqq/45KBQdvqxka7wVJiPzFcgjREAqi8IZWB3s7NohhDkB6HoqoftPrMElgGGdT59JiQc/V/dkMcro7NoHhTON7g4Zg5+eHwXRIDqYk3mWPdchHGl6F6JIDcChpAYfo3xjJdm6NI3gbFUKVHsg0w8wGgB7KDE1+d0wl2IJOxC5qdwK58cLEyuVE9v0ksFb/Q3hW7dcSGjUw6E6PO8mT39FGUzRA7V3FtKTEyXem9QYa0oNGRHVW8MnLr0I+blXGg1rSAOa/UcDKBagzArmauhnmK9PvbWYA3Wl2HWp9A==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5983.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 007d8fea-f4db-4761-d0e9-08dec0b35d87
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jun 2026 14:29:33.3640 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zfzIXDdXw/kvza7k4riFabosNrSCB6HBKVJvJxazWbHUhVGwqaSY7aWR0JcX18SKoRV3FBRg133mWWdj0cRHty+3tLVvck1XOx2pdbiPCTA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5950
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780410578; x=1811946578;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=o1e1kTfzIlbfxoKHekhdGde6jXOj3bZz6EJR9PXoCtI=;
 b=iujuOifqTT95drqBOlaqIbtX51MZcyLWdT6e31QWF4+CxST81xOkGnId
 3Uq3k+3qKpKtE+YcbeRs38hMTSoJTE+AdEAW7LzLlcJuU6lGxT4ZGF+66
 aSdJGojXd3z+HCaPZqVAMtqq3/QKTN2Tn9pREazOGSK9vwDg74evUUW88
 KoJKNW8g14H0TZYAmn76cJ6VsLUjV6GXcR3UtzhIlaEaFIlKJFXojjaXZ
 hFhHroS3s3nzX3Ji7rPVI8XW4405umdjIwk32TTeU2jhCCZ1ImwcLmNPR
 k+AYj3CLmGWUS1WsbK386zQzPWoEMiKCFzz6fmuyULYQMmhpWztW3Lw/W
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iujuOifq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ixgbe: implement
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[piotr.kwapulinski@intel.com,intel-wired-lan-bounces@osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_RECIPIENTS(0.00)[m:kshitiz.bartariya@zohomail.in,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksandr.loktionov@intel.com,m:jacob.e.keller@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[piotr.kwapulinski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 13F2462F4A6

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Ks=
hitiz Bartariya via Intel-wired-lan
>Sent: Tuesday, June 2, 2026 12:09 PM
>To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <p=
rzemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch; davem@davemloft.net; e=
dumazet@google.com; kuba@kernel.org; pabeni@redhat.com; Loktionov, Aleksand=
r <aleksandr.loktionov@intel.com>; Keller, Jacob E <jacob.e.keller@intel.co=
m>
>Cc: Kshitiz Bartariya <kshitiz.bartariya@zohomail.in>; intel-wired-lan@lis=
ts.osuosl.org; netdev@vger.kernel.org; linux-kernel@vger.kernel.org
>Subject: [Intel-wired-lan] [PATCH net-next] ixgbe: implement get_queue_sta=
ts_rx
>
>Hook into the netdev_stat_ops interface to expose per RX queue statistics =
through the netdev generic netlink API.
>
>The following counters are filled:
>
> - alloc_fail: sum of alloc_rx_page_failed and alloc_rx_buff_failed
>
> - csum_bad: maps directly to csum_err, which is incremented for both
>   IP header and L4 checksum errors in ixgbe_rx_checksum().
>
>Signed-off-by: Kshitiz Bartariya <kshitiz.bartariya@zohomail.in>
>---
>This patch was previously discussed for the net tree:
>Link: https://lore.kernel.org/lkml/20260526074744.36315-1-kshitiz.bartariy=
a@zohomail.in/
>
>Sending to net-next as suggested by Jacob Keller and Aleksandr Loktionov.
>
>
> drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 16 ++++++++++++++++
> 1 file changed, 16 insertions(+)
>
>diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/e=
thernet/intel/ixgbe/ixgbe_main.c
>index bc16e4c93fd4..05d4b8aff1fc 100644
>--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>@@ -9759,6 +9759,21 @@ static void ixgbe_get_stats64(struct net_device *ne=
tdev,
> 	stats->rx_missed_errors	=3D netdev->stats.rx_missed_errors;
> }
>=20
>+static void ixgbe_get_queue_stats_rx(struct net_device *dev, int idx,
>+				     struct netdev_queue_stats_rx *stats) {
>+	struct ixgbe_adapter *adapter =3D ixgbe_from_netdev(dev);
>+	struct ixgbe_ring *ring =3D adapter->rx_ring[idx];
>+
>+	stats->alloc_fail =3D ring->rx_stats.alloc_rx_page_failed +
>+			    ring->rx_stats.alloc_rx_buff_failed;
>+	stats->csum_bad =3D ring->rx_stats.csum_err; }
>+
>+static const struct netdev_stat_ops ixgbe_stat_ops =3D {
>+	.get_queue_stats_rx	=3D ixgbe_get_queue_stats_rx,
>+};
>+
> static int ixgbe_ndo_get_vf_stats(struct net_device *netdev, int vf,
> 				  struct ifla_vf_stats *vf_stats)
> {
>@@ -11662,6 +11677,7 @@ static int ixgbe_probe(struct pci_dev *pdev, const=
 struct pci_device_id *ent)
> 	hw->phy.mdio.mdio_write =3D ixgbe_mdio_write;
>=20
> 	netdev->netdev_ops =3D &ixgbe_netdev_ops;
>+	netdev->stat_ops   =3D &ixgbe_stat_ops;
> 	ixgbe_set_ethtool_ops(netdev);
> 	netdev->watchdog_timeo =3D 5 * HZ;
> 	strscpy(netdev->name, pci_name(pdev), sizeof(netdev->name));
>--
>2.50.1 (Apple Git-155)

Reviewed-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
