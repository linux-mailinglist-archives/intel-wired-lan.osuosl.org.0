Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BC164CB89D2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Dec 2025 11:21:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C989241148;
	Fri, 12 Dec 2025 10:21:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UHbqobuqFdIN; Fri, 12 Dec 2025 10:21:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 283F741144
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765534860;
	bh=dFtOPjD+6nUCpFt0BH2Yx6o6MsLftEW4MdoeptEcf14=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=l2RBF1Z/p8HBSWv8CU2v1wOADXPnNWszroB9SO4sFKx/ht9h39XGtd21wkgfv2cGw
	 tzwFqdG/r6hUx2rbmKLXq8dnVIkDyVsC2pK+HvSbzihClEmne+vmzZiARJcerWclRP
	 l9IX+jm5Fymobf+zYz5F93hKSGT487OzMtJ0FRKhgN1XHYrx+At+xEKm6HYMtMokwt
	 9hgYJWY0VZjCe4EzquWK4WPuePCKzXhGGIwbhcYeMIMUiP8xSJ2tGOn2eyrDUGpD5y
	 QLR+GyOYwnQwaul/oHABZ7s+/nMNAighHOLwN8cqAPWhmLsZ3GSRdOms5kg28Vn1N3
	 Fqa98QkFLGECw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 283F741144;
	Fri, 12 Dec 2025 10:21:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8C62B2C6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 10:20:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7B17C40291
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 10:20:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8PR_7IlcKtY1 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Dec 2025 10:20:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4DC8140160
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4DC8140160
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4DC8140160
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 10:20:57 +0000 (UTC)
X-CSE-ConnectionGUID: mAmv16azT2KNPS85/dJnVw==
X-CSE-MsgGUID: +tvz/xpcTlC2s5xugBC03g==
X-IronPort-AV: E=McAfee;i="6800,10657,11639"; a="78635551"
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="78635551"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 02:20:57 -0800
X-CSE-ConnectionGUID: dupgWrQrT/epDGYkXrZn+g==
X-CSE-MsgGUID: gwnbU3X6SiOCd18VSZA16Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="197102298"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 02:20:54 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 02:20:53 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 12 Dec 2025 02:20:53 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.9) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 02:20:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fhcytF8E4ANe+AT8Ul2v0ut/oNCf8P/zBsbKbOZWNo2XDepvYsOG2fs2CyA9zya6nMTjKVRjM9UvAyoWx9rUvbl4jaZ4LPUB6zqHJiznf3hF4fqgu6ZJ5jTZuib7DQOMGGestIj6a2kim4pLy/BZBstuxC+s5aABGism/S3TQGqNW5Eh6XzXb2YXMhAhjCDEODWJsJXQ1cCLa5yd7/dflG+mypiSxjNUMbPK+gZ02EioiLTtfkO4ynOmwP5hwkkg+mGv34lQ13Axtk/3EIrEDGeHforDuMKV/EkDHHgq+XCMy3+ha0R3lizLdZU/rEQsHKzS9QV1mV5CWJSSp25pjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dFtOPjD+6nUCpFt0BH2Yx6o6MsLftEW4MdoeptEcf14=;
 b=lV01M8r3KrT8LOv0DcYgQI3jNSSg0nBqTQ0Jqb15rOCrNA+r3mxUag7UsUuxUfMv2ReIt9fwtYQwGr/6qGA45qxoPdtMLfMN1msYgafmF3KjDK7TyZ0DPkMc7kVQfG6LaX5fwbz2UxEqhmwOvg6g3RhwreDNbpNrKApo7fg1gyKN0VXUcUoYy93VTqCqOTbRpUdv4wnKPtZp1w0cHpvfUdl1yDJpE2AxtVzBUqqgjfHnTABHtCGR8WtPEA7hRjudeE6k6uZbKbysRSlx1OqvdBFJjKGzG7AK18ONQ/mrcj26fvlrRCwVUlo1qTB4TA4mVKTVlwNd+8J33bL973mWKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CH3PR11MB8342.namprd11.prod.outlook.com (2603:10b6:610:167::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.10; Fri, 12 Dec
 2025 10:20:44 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9388.013; Fri, 12 Dec 2025
 10:20:43 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Vecera, Ivan" <ivecera@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>, "Nitka, Grzegorz"
 <grzegorz.nitka@intel.com>, Jiri Pirko <jiri@resnulli.us>, "Oros, Petr"
 <poros@redhat.com>, "Schmidt, Michal" <mschmidt@redhat.com>, Prathosh Satish
 <Prathosh.Satish@microchip.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Saeed Mahameed <saeedm@nvidia.com>, "Leon
 Romanovsky" <leon@kernel.org>, Tariq Toukan <tariqt@nvidia.com>, Mark Bloch
 <mbloch@nvidia.com>, Richard Cochran <richardcochran@gmail.com>, "Jonathan
 Lemon" <jonathan.lemon@gmail.com>, Simon Horman <horms@kernel.org>, "Lobakin, 
 Aleksander" <aleksander.lobakin@intel.com>, Willem de Bruijn
 <willemb@google.com>, Stefan Wahren <wahrenst@gmx.net>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH RFC net-next 13/13] ice: dpll: Support
 E825-C SyncE and dynamic pin discovery
Thread-Index: AQHcatdy8n9W9Wo/ukWb5S77Vy+wv7Udy3Pw
Date: Fri, 12 Dec 2025 10:20:43 +0000
Message-ID: <IA3PR11MB898612C9A66ABA4DA673D3FCE5AEA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251211194756.234043-1-ivecera@redhat.com>
 <20251211194756.234043-14-ivecera@redhat.com>
In-Reply-To: <20251211194756.234043-14-ivecera@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CH3PR11MB8342:EE_
x-ms-office365-filtering-correlation-id: 25bef94f-0188-455f-e56b-08de39681bbb
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|1800799024|376014|366016|921020|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?iqAi8k6HfqmFDz56lmtM2usQ0pfzag9A1cuPvpqxWseGFGI6wQCbZcHPcRFy?=
 =?us-ascii?Q?+rQQ7tZUG1l8nhEx+7DHWUlLjOHD+ul7eTTy5GldsXFAzjzk+KQTw+5tlIb5?=
 =?us-ascii?Q?+mryj414L6ezVRt25D6M7UxCGeCZmGZ9Hk90tMDs5obif4yVNNuiKJAixRYu?=
 =?us-ascii?Q?Rk+nBxMVG5KOqDB24U+Cwa4K0S2qGEEIjxCUgEk2OYdqHO5U+dQusGLHo/GS?=
 =?us-ascii?Q?A9bzTacz5N3sSGZ3WyQf9A6fEWAaeNvIixCWMaSuiwlZnfjkdjLguU+xkkPb?=
 =?us-ascii?Q?INyjFcyImOR8AFi0/I8igwrW9yLqYC9+nh8lLrNuU8YE21bsJ2/VB5qDfJZr?=
 =?us-ascii?Q?ktzZiSIYi83X6hzWQn/OU2C8t1N1g5r/OjhJSCknY5esXFgOiD/vFjY4BHZx?=
 =?us-ascii?Q?tXzNiqQ6BJ5qOqto6o4ggJvX4fe4wVo15YmvvceHPjKUixg9T9P9edLGq8ta?=
 =?us-ascii?Q?CoMpGFWZUjMVJr1+2+uhTgWmEjV1vPDqtdz3GPyi8DG4+3iIxw3USL6AbICr?=
 =?us-ascii?Q?AyDA+GidWaTaJjq+Arc8y7UW0pZihEwhmIQSV4EvixvB4mx3kmwvw4zPScjj?=
 =?us-ascii?Q?YfUwOViHX3d2ZRyLQe8CQnQVfptwE0o8cAq1j+3JWw1Xo77m6HE9dqxOyv3/?=
 =?us-ascii?Q?wFsgRTq7aNv4xCjbg48XLwqfx3J6mjpeR4DSYl3TA9sxhYc5HHccXIaCa6Nj?=
 =?us-ascii?Q?00/09iveghRgDsa5U5aTjY0AYn7T7ECEYEJr/2j+npCNEFh5Fz95lbcX0s/q?=
 =?us-ascii?Q?76z5e096BYeZ3m+JzvL3vw/ZC0hRe7tsNHSNJ9UkOVC8d7KGV60VhR65NO95?=
 =?us-ascii?Q?+5nYYJ2SAOSyUNLwPKcrrs5j8cigyPVh0YwIHyh9Of4Emx9ankaTW31hwDxs?=
 =?us-ascii?Q?oP6ilLKZ1vZMNx2i05Zb8iEqtjgGRd+tjQXUIKAuLdxc4I43NIfGq0IwtrmN?=
 =?us-ascii?Q?VB+HjkYm5wGBA/feSJxLNZkRyFD+LLTk3QDNYsznY9mBauKHgKzevXGbKBKq?=
 =?us-ascii?Q?H8+8D9nmXi59RvpCpDHo3yxvEo1hiAcM1Ncpf+PbaWG6q9NpCmPM4vtWLsy5?=
 =?us-ascii?Q?PIf3x0JTP/k/1SymrCHCs0/8dm424L8ad8aq3Eew9Ms5kRhnGqiHaK+iZK45?=
 =?us-ascii?Q?ZeY7WrySDDQqlQKV665bl9SKTBKmGIcIw2g9VS9OH5kt8bEbtaUvr7L8J9ZF?=
 =?us-ascii?Q?BpUPWzXpOXQf5Yq29RFQpIF30RGz96k0ONNr6oy0XI+p1ySSZfgjLlB8B55H?=
 =?us-ascii?Q?EeM4KJwEXYG/C6TWC9dYxLN1V1f8pzE3c64oXpRT7sCGbDIXlG85cwOFcol1?=
 =?us-ascii?Q?PSE0LyLa5CCPseWjDj1eS6zFhCn9eQ7PrS91v3oQvbfWkvxj/+JsP4rHk51/?=
 =?us-ascii?Q?rWJHBEXUipF7EGgIP8vFRopMrBTLKWbFkLsSNX2vIsn6a3EIvV0ZsbjgRumy?=
 =?us-ascii?Q?BaSd2hmzgwQW+g9MmWyPu9JVtC3HOYBWD7/sLa8LEyISg5wYzSwinHuyHn4s?=
 =?us-ascii?Q?pqfhcHySHRCzl5/BS7GJtha8Pu/rsTxv3qt/Wk0ZPq/VAY0Rbu+cLFuTiQ?=
 =?us-ascii?Q?=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(1800799024)(376014)(366016)(921020)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?FBVuYtTa0jNslQUqmwPZHV4G3Q35ncn2+LrLEd26KmJb1DoB3ZC//7ki09Ez?=
 =?us-ascii?Q?VkU0wiIuO4+xEoXDsTS3bu5CIUuWByZv25an5GJHjGEB75JZhfcAouTrC9X3?=
 =?us-ascii?Q?rxJRBsemicD/CjmtEC5p40UYEPmAYto9jSOfvk0JUsYsB1r5tjsGnFyzNJ9j?=
 =?us-ascii?Q?PgDBydFK57RqnuBqckzLHKaTP4F/j05zJE6qaRPQu7IhRn9HOOze1gu+ehX+?=
 =?us-ascii?Q?IipEYKJCddFBkPYV2zzBm3RAW169XU5Xjj8Z6iKQQZZtXI7EWiMXCKPb8ldh?=
 =?us-ascii?Q?7526bZtoPQtdLK8tdenJFEnbvPAv/njt5hHv7tBLLZhuIbe0qcDrpmcpwhhg?=
 =?us-ascii?Q?EmtRT7+U3aEQ6w9YUBXFel+NSn3wc7jFPbQjFIX6O5wErCPH0zWkugBsQVVW?=
 =?us-ascii?Q?cBZ55jutPB/dgR5dEYxqMQtolcvkB74w5CGnr3L7+ShFrlXQi71bhqc57eYW?=
 =?us-ascii?Q?XDYcSfYnPwdi88EX9xtm+Di5aivpFhjZlvIewSWvNcxs3X/ZLlCWmibHgTlk?=
 =?us-ascii?Q?BumIK0rnPAcpR0vTX8dgHjqSP+uEDhbvmOUmLeFK3ktqO0dEfxWusFT4dadU?=
 =?us-ascii?Q?uTpxmSSSFjd2ZqWXmbE427S9N1HV/MAzM7mvSSfeyuGSFs3eCIhyIf0RyBQq?=
 =?us-ascii?Q?s5UC6ARa892tq0LDfZDpHrBzkHuI3DPdGjBQP6KvjkcIktFKp2i7Pafw4rfO?=
 =?us-ascii?Q?vALy2TqoYGO2vSMnlkL5pqmP2ue9X/WyKTeGHSVS3le0pTOwqmxXG5D7OsUU?=
 =?us-ascii?Q?a00HYQwrw6IAfI1UZYK6vtKfGhOsLwOWJJdhe7Z/KmB//Dtrm7FecZCjFKY/?=
 =?us-ascii?Q?f/gvn89XrBnlbvPDKsXYEUyGWS98si2hamFqGNgEaP98jwdzA7fy23/KhpQZ?=
 =?us-ascii?Q?yqNlfRckk43onSL/7buED3dVSg+3u6Aim6kf+ty5feJlyMhp2yXMogJYBWgC?=
 =?us-ascii?Q?L02yJ+2dCwB8MNjQE42U6dayvbCc2mz39gZxdkdkEeNTKTVL8VHzyJG2kBOM?=
 =?us-ascii?Q?G6gpOZepgvNPOEvAXgg4NqEzNWVxPy/RVuKd3Sa4qDZGFH3/WCcosQKsrmtt?=
 =?us-ascii?Q?P1zkMWhB8aIBRcvJYARBAvgh/6k5OhuWqU0k0zUSPYpg3mAcrKLZMQx8a7WM?=
 =?us-ascii?Q?RpN3mtg/NulMUQOKwfrwpbD11x8Zd6gkwyBIgEMGbQVorCCKge+qKVPc5SYt?=
 =?us-ascii?Q?HEl0pKNshcx7EfeX244i6K2xRC4hZQMW9mgwHHgBEjNmhZdCUeIjyf3/ZgOW?=
 =?us-ascii?Q?6TLiNOmblOfDmUA1zdpHSqXQwaqm7pU196690S+vzidmq5vApDvAuexBgb+O?=
 =?us-ascii?Q?w3fLLYmdw2wAVugp60By1MXpSNTSkp6z9ajXqVneT24iR+OQeyStAAPD4f7B?=
 =?us-ascii?Q?27QBXt4h1IEA/YMh4pm+y2VWh1xA/yM2wb31pBpL8q1hcYSxYjfB4q6oUJdN?=
 =?us-ascii?Q?xREH+QNSl960zPIA5NZGvJ+ijyMApAeOODqPHwATwYXjkhQtADsDe6sYGLNT?=
 =?us-ascii?Q?1sFpTorJDMtTZ/T1OSvJTAHKltB+HgsCNsQDxuLTKhEP0W7fYnPTFd2t2al7?=
 =?us-ascii?Q?BbIwyAf2oC4ow+wb0zmaLMJxrJqfQ/Xk8IAAol1Zcjt57KmTq6L6podhSAZz?=
 =?us-ascii?Q?Qw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 25bef94f-0188-455f-e56b-08de39681bbb
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2025 10:20:43.7590 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sAZ56Cz+m76NoUk1cSJ1GUWwUDyx6IMRh8hbH+qEsO0a/P9yfiCOhEz1a2AA0pRupucrrOlef1UJqWonqaZWbWhx+gLE2QhvpelCaO2BpuQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8342
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765534857; x=1797070857;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=gP344xiQoRA8/xhakv59Hzx2/WzF6QUIHwRyYBXOPkw=;
 b=TBRkgPGsSvUVnH5qPdprhnhwN2GgkPBHK/Zy70DFgoDCAAWhtTsDEzFy
 OrHcVu2x55JIncvyF0pSFFNZ7AoJMtKj8QgeZv3Xn/6y/qefN1cEB92rF
 DH8alFe8rmPv9WN0GfSCj5Q1vwvURpoKcIhQXOpDGbgIden7eoPkuKFcI
 REKnpOG2jbzOSk0L0SiCYwLBlsKeBAlp49bSx0TIvBDGU0kapRmRSD6/d
 m5KocEUwKPKlH5Mbx/Y76NhSzKr0/HeHXnPIlyjVbn3/06QbsW58ev0gf
 biV/Aj8+mZh9kyOAhgTvjw6lgd5yPnVkHy1Medbky4Vt6V7mxjEJ7d3Ko
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TBRkgPGs
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH RFC net-next 13/13] ice: dpll: Support
 E825-C SyncE and dynamic pin discovery
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
> Of Ivan Vecera
> Sent: Thursday, December 11, 2025 8:48 PM
> To: netdev@vger.kernel.org; Andrew Lunn <andrew+netdev@lunn.ch>;
> David S. Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Rob Herring <robh@kernel.org>; Krzysztof
> Kozlowski <krzk+dt@kernel.org>; Conor Dooley <conor+dt@kernel.org>;
> Vadim Fedorenko <vadim.fedorenko@linux.dev>; Kubalewski, Arkadiusz
> <arkadiusz.kubalewski@intel.com>; Nitka, Grzegorz
> <grzegorz.nitka@intel.com>; Jiri Pirko <jiri@resnulli.us>; Oros,
> Petr <poros@redhat.com>; Schmidt, Michal <mschmidt@redhat.com>;
> Prathosh Satish <Prathosh.Satish@microchip.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Saeed Mahameed <saeedm@nvidia.com>;
> Leon Romanovsky <leon@kernel.org>; Tariq Toukan <tariqt@nvidia.com>;
> Mark Bloch <mbloch@nvidia.com>; Richard Cochran
> <richardcochran@gmail.com>; Jonathan Lemon
> <jonathan.lemon@gmail.com>; Simon Horman <horms@kernel.org>;
> Lobakin, Aleksander <aleksander.lobakin@intel.com>; Willem de Bruijn
> <willemb@google.com>; Stefan Wahren <wahrenst@gmx.net>;
> devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; intel-
> wired-lan@lists.osuosl.org; linux-rdma@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH RFC net-next 13/13] ice: dpll:
> Support E825-C SyncE and dynamic pin discovery
>=20
> From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>=20
> Add DPLL support for the Intel E825-C Ethernet controller. Unlike
> previous
> generations (E810), the E825-C connects to the platform's DPLL
> subsystem
> via MUX pins defined in the system firmware (Device Tree/ACPI).
>=20
> Implement the following mechanisms to support this architecture:
>=20
> 1. Dynamic Pin Discovery: Use the fwnode_dpll_pin_find() helper to
>    locate the parent MUX pins defined in the firmware.
>=20
> 2. Asynchronous Registration: Since the platform DPLL driver may
> probe
>    independently of the network driver, utilize the DPLL notifier
> chain
>    (register_dpll_notifier). The driver listens for DPLL_PIN_CREATED
>    events to detect when the parent MUX pins become available, then
>    registers its own Recovered Clock (RCLK) and PTP (1588) pins as
> children
>    of those parents.
>=20
> 3. Hardware Configuration: Implement the specific register access
> logic
>    for E825-C CGU (Clock Generation Unit) registers (R10, R11). This
>    includes configuring the bypass MUXes and clock dividers required
> to
>    drive SyncE and PTP signals.
>=20
> 4. Split Initialization: Refactor `ice_dpll_init()` to separate the
>    static initialization path of E810 from the dynamic, firmware-
> driven
>    path required for E825-C.
>=20
> Co-developed-by: Ivan Vecera <ivecera@redhat.com>
> Co-developed-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dpll.c   | 964
> ++++++++++++++++++--
>  drivers/net/ethernet/intel/ice/ice_dpll.h   |  29 +
>  drivers/net/ethernet/intel/ice/ice_lib.c    |   3 +
>  drivers/net/ethernet/intel/ice/ice_ptp.c    |  29 +
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c |   9 +-
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h |   1 +
>  drivers/net/ethernet/intel/ice/ice_tspll.c  | 223 +++++
>  drivers/net/ethernet/intel/ice/ice_tspll.h  |  14 +-
>  drivers/net/ethernet/intel/ice/ice_type.h   |   6 +
>  9 files changed, 1188 insertions(+), 90 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c

...

> +static int
> +ice_dpll_pin_get_parent_num(struct ice_dpll_pin *pin,
> +			    const struct dpll_pin *parent)
> +{
> +	int i;
> +
> +	for (i =3D 0; pin->num_parents; i++)
> +		if (pin->pf->dplls.inputs[pin->parent_idx[i]].pin =3D=3D
> parent)
Oh, no! we don't need a 2nd Infinite Loop in Cupertino!

...


> --
> 2.51.2

