Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DABDB971E64
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Sep 2024 17:46:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C9A0180840;
	Mon,  9 Sep 2024 15:46:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X1k3GOQCchbW; Mon,  9 Sep 2024 15:46:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 231488053C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725896773;
	bh=3kuUTBiomU2S7uyJpP3UTtCkDfd8KiIibh8kfXnV978=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2A2jxDG79cx+HXBCPecyfTOaK6ehrD3vDuikb2q5kEiYZ64y5+SqCct7h10Bltp25
	 71skVzQyDuKgs4MB4xKvbRyy5ybReLOu8vS/Rzz1CzitvqC3aijCPRgBr5sAC4Fod0
	 bkkxAzV+r0BZQmkSYlQn3RtUXHU7Xa9vv/SHCApZzQZOcqbkKlfGcLzvpp5dC2u+yD
	 ue5FzmVM+HHRhBH6+DvXxYBN26irmxZffLL4m2JWp0dEMt3LKCloH1vxMzoRc/dhM0
	 8C2OUGdqilcLxT0rv56me4NKEpnirzdQnF4S8eXiiG4z0L503dubAjQbq20sTU2gdU
	 vA2/B5kGKW+cA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 231488053C;
	Mon,  9 Sep 2024 15:46:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 66D6E1BF362
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Sep 2024 15:46:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 53C2080524
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Sep 2024 15:46:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 49FIXqtcLzQc for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Sep 2024 15:46:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.67.98;
 helo=duzpr83cu001.outbound.protection.outlook.com;
 envelope-from=jeffd@silicom-usa.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6B044804E9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6B044804E9
Received: from DUZPR83CU001.outbound.protection.outlook.com
 (mail-northeuropeazon11023098.outbound.protection.outlook.com [52.101.67.98])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6B044804E9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Sep 2024 15:46:10 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U/22p9Iv46S4XvYLj8jObefdxmblSm7cIShCP8HfScOyEJ8lIA+fEavYnzbY0pkhklpdPNoy15IWar/pz91rtzHy8IW37IcaZy3jskktvnEDULAnJlbecenKZiXCzINPNlxflLgn7H5BA1LWsK19Cf1P43vvIcCLQ/5I0cQ+KsI79yyygFJeoLGwfrIg0iUNKKOo7Xk9hdWXirwT4suKv4KzV7tktHAOFjugM+L6047WW4aKRatHyrdDjrnKeYSHI6eku3k6xszj018AT3u2anbVNt6fY+L2nFt8ScHatlubQxJ29nATUkVZLImzZM+0ijHh2PrTCWTc99zr3KYWDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3kuUTBiomU2S7uyJpP3UTtCkDfd8KiIibh8kfXnV978=;
 b=oyEiJaVHlebEEb3gQo9GSTGQ68Wle6okSQVecV+2xUhjb5iKEg6GQJU9Tjn3+h6dVlHsFepUsDeEY2HhFABas5jaXTRtPVs+tTKyMLw6dgxfxb0xiEOnbFfz3Qj6oFdBQewgJ7HvSbvQJqZJeLI9Elh7uI612wZstJR3gbSllJDXKfYDwOlbHkxAllDHnHfT4/vAXrhAuzVi00jIB6SDYh0Aeqkw5VLQv6pUvJpecCsKrpifY4Vp/6Isbzt6HsXFlFqeytgCVYoklJkC55eXoOyU99Foevl/pjCxMApCruLNR9tmcIKGhHFvjSOLkXoFIv60JfJectzGl3za4zjBgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silicom-usa.com; dmarc=pass action=none
 header.from=silicom-usa.com; dkim=pass header.d=silicom-usa.com; arc=none
Received: from VI1PR04MB5501.eurprd04.prod.outlook.com (2603:10a6:803:d3::11)
 by PA2PR04MB10448.eurprd04.prod.outlook.com (2603:10a6:102:414::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.23; Mon, 9 Sep
 2024 15:46:06 +0000
Received: from VI1PR04MB5501.eurprd04.prod.outlook.com
 ([fe80::610a:d9da:7bd3:b918]) by VI1PR04MB5501.eurprd04.prod.outlook.com
 ([fe80::610a:d9da:7bd3:b918%5]) with mapi id 15.20.7939.022; Mon, 9 Sep 2024
 15:46:06 +0000
From: Jeff Daly <jeffd@silicom-usa.com>
To: Andrew Lunn <andrew@lunn.ch>
Thread-Topic: [PATCH] ixgbe: Manual AN-37 for troublesome link partners for
 X550 SFI
Thread-Index: AQHbAElnQB6kTGxClkGw2bZQ9JRTDLJK6aGAgABP6cCAAAn6AIAEVoKg
Date: Mon, 9 Sep 2024 15:46:05 +0000
Message-ID: <VI1PR04MB5501658A227BFC1A832B2627EA992@VI1PR04MB5501.eurprd04.prod.outlook.com>
References: <20240906104145.9587-1-jeffd@silicom-usa.com>
 <becaaeaf-e76a-43d2-b6e1-e7cc330d8cae@lunn.ch>
 <VI1PR04MB5501C2A00D658115EF4E7845EA9E2@VI1PR04MB5501.eurprd04.prod.outlook.com>
 <ac2faac2-a946-4052-9f61-b0c1c644ee59@lunn.ch>
In-Reply-To: <ac2faac2-a946-4052-9f61-b0c1c644ee59@lunn.ch>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: VI1PR04MB5501:EE_|PA2PR04MB10448:EE_
x-ms-office365-filtering-correlation-id: a4e3f78e-3b91-47c1-c4f9-08dcd0e68459
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7416014|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?1xFSWZ1OM1tu9DtAn5THQtRRAnC/AUmwzb+BjsIi0ez8t1M6ktuqQa1Duf8g?=
 =?us-ascii?Q?TLj2AUL96VPhIXTp+J9FaCY4LbsoYgnHbJjNEav9KtCB/qzEhjVUOsD9pfm2?=
 =?us-ascii?Q?MBYohyuqWqFjFnwGZMMhgvhlW4C+Yidg4LSuHF5rWqtfF4gXPtIXH+u0X2ts?=
 =?us-ascii?Q?jMhStZTdrOKaa+SPOKRdDOQuOYwydyj/S1aAQlvXYUBsRjUSYqd5vpkvjipX?=
 =?us-ascii?Q?7hhwTfOrbMqXUXYbH6W09zUI15ZF32F+yWkkpTPK4x/p4fSa1/HAbBWVFivk?=
 =?us-ascii?Q?ruZd4wCTWqlWPewDFDSMgiuEnPl91lIkrrXmMPXReJMLJNE+/M9iuoSNG/8Y?=
 =?us-ascii?Q?It+N43GVCFn5tXb6W/p0alHYpRoHn8NEw304d3kZLmKL7laNWMyjNWcss5EW?=
 =?us-ascii?Q?+7ykOjdwVcR35JrukXr+XNpgf3tBA2cjCqjE3pC04jF7h3+t790aQeedBHSq?=
 =?us-ascii?Q?CTNy5yYxA0t8SOKYifbaP8TSFeWkq00q1odIjBOdyGx86QG+yfrUqM1CzFq4?=
 =?us-ascii?Q?JsFS9rBB9O1mHrDu3rS4e70QPMIK0trVfJaEgq8qgRBpK8gry+Xnj3Nxggu8?=
 =?us-ascii?Q?DPBQyV6uIB+mhM90W3B51ZahX9PlM+8fRacNKtkxo6rD5CQNBRUuky4egOvP?=
 =?us-ascii?Q?JD6DIsLNa0Yv2cba2Uv+KThh6dwIk5t5pbbP9sSdGpqVyoVdFSpXQd2kVOk+?=
 =?us-ascii?Q?jrdIa42AOUvsbyJb/TrFTp/3Oxt5kagnGtw6DgUAAdhcDCfDCqtBQLnOmAju?=
 =?us-ascii?Q?hVr+nyjy4P26ftEzfC8yefRrC/BgRRiyFV/lyAZ+io6EryF/D7tnpAONulYD?=
 =?us-ascii?Q?I9wfXjlD+xB8nENE2F0kso+V0ToYzPG36C3mIbj2KhmwSblbKZ3p/3hKBz84?=
 =?us-ascii?Q?noGIUsW1e/1UbQp3RGHuoDRJdEpkhhMBwF7iYN1spY9S4KcVldEO2Ns8bN63?=
 =?us-ascii?Q?nXwVAIHVLN+CX8ZlSFxuvms9YnasrGoiXbIm4WEgwTFC79uuYiqFzt8tJAwv?=
 =?us-ascii?Q?4Fjx8uVVdOMqlxyWo/g+BM1CXVf056OGA5K2u/V1Lw/wfpCo9l1Uyd6PYYTJ?=
 =?us-ascii?Q?o7/PFUaNisN5sev/tgkrk1VOMz5p3Iu55yx5SXDWddUgj/UzMDuFWz0iBCNm?=
 =?us-ascii?Q?7wCcK/CG0apTO1SzTnaVYJ503LomV2fV5zPBQ7l9Ja1pDkLIMvWHbQraMyxI?=
 =?us-ascii?Q?FJsWRiuXXH2Mzjh5Pd2npgEwlQ9OCP1bq53IcOOjNVasuRMgX5fY/XrlBMbh?=
 =?us-ascii?Q?fJ8CGAYYCyOlAM/mHl0m9l8jEQ3LRXNSnPLeozxODjiAfz3YlQzQ33d13dp3?=
 =?us-ascii?Q?uMLNc8wZPyYC4Bw1YqmM6OywyTycFAWzzFZPZJaBJnTem8a3jV+xJRgTtqtf?=
 =?us-ascii?Q?bQC/bi244qNme2eFzg/f0l+sfzuPRUcTFP0J9WYHUUlJ+mJ2eg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB5501.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7416014)(38070700018); DIR:OUT;
 SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?v15H5cF33Ml7LrVuZ4yhWdmxQGKGW3LHq7mLDoga1ceChzrmvQqJWXXorPHw?=
 =?us-ascii?Q?NLAVpW3QihLDkUFQOW5T9I6ZCZ6rUJAgtjn8+PEPS8h8SkxkRiDHBom6r+KU?=
 =?us-ascii?Q?gq7plwHbscmIN+YfF3E3Y+SpnGSoSHfPbQPI93rcj4pSr6blsZSSAjBGB25C?=
 =?us-ascii?Q?UwSDO+O3rLmE5PbzDFJpIdTJPejtzgx2LzC1pI7PCMN5rLadZ7ZbIqb3K7Of?=
 =?us-ascii?Q?b1Gg482MsetsK3J9fZ7DcDZYWU1Pa85VeQL12KgkCVkODRGqzscqti8Ok8EF?=
 =?us-ascii?Q?Lnmva+zgD8paZyOFejLnyobrdUAdhx+96Bbo6ukyX+5RXFd5pgZ1dEVXIZ9i?=
 =?us-ascii?Q?3ZNTPhHB6zO0Y9JVjYXMyKYEF/IYu6PiOKGujj0LZhHMhUZSVsXWt560pU+P?=
 =?us-ascii?Q?CnrgdDRaSVwcyVGGfSPlh9c97bRbgMf+anVeNOL7OAoYvdTFblaIaIvUZKW9?=
 =?us-ascii?Q?tfi8y53osrKgAKU7aDB7pKatL6htc7rd5CmXBlTmdpMtfNyF71BJV+QzsLYb?=
 =?us-ascii?Q?Pn3v5doT4CLE32EzB55rokkDGW1v40Ad4o4TcVdMi1ZXZcAXQrE4dAEPd7xZ?=
 =?us-ascii?Q?QHbr8mRiyqiFKXA66a2pM6HAus8IShCW8u0pVL+DALMWTS6IacReGSv7HbAp?=
 =?us-ascii?Q?vJNxei7EqdfTgpv9uV0j0yn9D/MLmotTGXD/Vfc3zeyG7hSwkt7ziQXy4lOl?=
 =?us-ascii?Q?vjHj0Y8IbaoJm/V00hVY5wh+5hPG55ntoj1dVshFnDKW5v3X6WUtDAQnAfFv?=
 =?us-ascii?Q?dWz4bwIwHGom4cfPjYvam08UspciS2CQ2FRMqbeRRZrGrw0LHbJHpcNZjUI5?=
 =?us-ascii?Q?ua5V4AjISRLqYwaRl/O4ooS5H3USq/vO28egw0AnKm5Fz+4se+uGyKUq6O6a?=
 =?us-ascii?Q?w9UdeSLvRxSonMrdgMf7uNoptudPFyVjFwFIt2eg27HxUD3UXSmEcnyyoXkC?=
 =?us-ascii?Q?K98jJrkRKv2Or1s6RoEgJNoyILwb59jxn7K2sRJH+NoaxILzG2BYwUndjjnO?=
 =?us-ascii?Q?DOYI8FTrB6UXaus8GiSWvb4qeMP9lLijNi7lpoyfcmtX+wpql9zNEArWVaBB?=
 =?us-ascii?Q?Gj3H8mDX32GNvOlnZr3fZxNRMya2bxTckvtw5C9a/0doVuNjDElcSZazi0f7?=
 =?us-ascii?Q?C5MKx01RU5CxEcm4HnrDj1/pHpemA7sCTcUkS0OrGt6DDgDCbtFh3iPXimvH?=
 =?us-ascii?Q?dwzgG5QAMPnEjA9y0awWpLprQ/JdflOQUxaFo4UVF1zZckDzyoMdXW/ioxQI?=
 =?us-ascii?Q?7VWcle2Py/U3v0M1kWE9hHV8Q84vf+l32tl3yDvdr/ZRdVUqw+Tm5CDcZKOl?=
 =?us-ascii?Q?Di/Mg5MDg/rFAmTygE2+38ZEOHgaBML6MWiGjwTCHjlKGOmH4J+cGHaxOImz?=
 =?us-ascii?Q?d3Cs6fqUm2IOe9svyrbH1ktTAKwNpz/a97a6YvmzeRLUj+atEe/1Vx6xObP7?=
 =?us-ascii?Q?dAou0viu0TaSjrtwrsxgG9QRcYwXyJzK/jUmMtdygQSG81BtN6VDJ8Xzouzf?=
 =?us-ascii?Q?Mlfz6CVahTs58CmdF1GlKM0DqzvWQ5rLMtSdORT5US7YAgnpLSIzVzFk5joN?=
 =?us-ascii?Q?4btzCRI+aobV+jCHQCyNyYC5dREzbXhb+p96BTWF?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: silicom-usa.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5501.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a4e3f78e-3b91-47c1-c4f9-08dcd0e68459
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Sep 2024 15:46:06.0748 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c9e326d8-ce47-4930-8612-cc99d3c87ad1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cK+7NJpQnCVGuQm+Mmw9MUK1J+IJvRChqyip5s9heNqPtzQEXVS6PNjR/Yll5izbZBUPivdMzAdEdESNTtdwrg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA2PR04MB10448
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=SILICOMLTD.onmicrosoft.com; s=selector2-SILICOMLTD-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3kuUTBiomU2S7uyJpP3UTtCkDfd8KiIibh8kfXnV978=;
 b=WtWlOOY+FLgNeA6nIRXogU/PJoSWkzNoyo6QMrH3xHH0VAYoqHwwCBFDN0VNTArbVqK54Y35Xvdag/Y4F/EtFazeDQZFMczPyLCxQbkAji5+nqKhCCjyTXbPha74Tqix/jKCttusWmJwZm5/uVnyyQyTq246NtjtZBYFicygpPw=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=silicom-usa.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=SILICOMLTD.onmicrosoft.com
 header.i=@SILICOMLTD.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-SILICOMLTD-onmicrosoft-com header.b=WtWlOOY+
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

>=20
> > It turns out that the patch works fine for the specific issue it's
> > trying to address (Juniper switch), but for (seemingly all) other devic=
es it breaks
> the autonegotiation.
>=20
> So it sounds like you need to figure out the nitty-gritty details of what=
 is going
> on with the Juniper switch. Once you understand that, you might be able t=
o find
> a workaround which works for all systems.
>=20
>     Andrew

This was originally worked out by Doug Boom at Intel.  It had to do with au=
tonegotiation not being the part of the SFP optics when the Denverton X550 =
Si was released and was thus not POR for DNV.   The Juniper switches howeve=
r won't exit their AN sequence unless an AN37 transaction is seen.  Other s=
witch vendors recover gracefully when the right encoding is discovered, not=
 using AN37 transactions, but not Juniper.  Since DNV doesn't do AN37 in SF=
P auto mode, there's an endless loop.   (Technically, the switches *could* =
be updated to new firmware that should have this capability, but apparently=
 a logistical issue for at least one of our customers.) =20

Going back through my emails, Doug did mention that it would possibly cause=
 issues with other switches, but it wasn't anything we, or (until just rece=
ntly) anyone else had observed.  A quote from Doug: =20

"that AN37 fix pretty much only works with the Juniper switches, and can ca=
use problems with other switches."

Initially I wanted to have this patch wrapped in a module parameter to avoi=
d any potential issues, but that was shot down for the same reasons you ini=
tially commented about.  The unwrapped patch was accepted however.  It was =
a couple years before the potential other switch issue actually showed up a=
nd the patch was reverted.  Our customer still wants the code in the mainli=
ne kernel driver, maintaining a separate patch was not something that was a=
cceptable to them, so we are.  This was all gone around with Intel a couple=
 of years before and the solution for a non-updated Juniper MX5T switch is =
orthogonal to other switch support, thus the patch with the module paramete=
r.
