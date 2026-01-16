Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3020CD3099C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Jan 2026 12:44:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D50F381E00;
	Fri, 16 Jan 2026 11:44:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vUuXpbJN7JrH; Fri, 16 Jan 2026 11:44:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A768681E18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768563894;
	bh=l3Ba6UmY/lrYpCXrpis2yR9Gs1tEXq+uHxC8P5G5c2Y=;
	h=To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=UtqBaGe1XYBEIodlzWHdDxw2ZeJJwP+sRsuXUNcaq5SVSa9AdzefRPjLjo3dRM1FT
	 yhRpHAUK5R7AXAR5HubA4IUkJpy4iwn+JNJ3b+8MLrJXbI6dbgb1tziru+RboPwCHZ
	 ZgBatCSxGhlpnGh/uzwgi1O7YTfdPucSxVBitcND1wfTuJU4lqH2yPJLY7jc9W1MYY
	 6/X49l0x4wH8yEkO/Y6n93xwjJb5zLJX57xbIZV5aS63y0qkb7Sh4hgo8mawZf58dJ
	 5iGiIDA4VC5o+n12P9v38s6PXvILqr/hsqrAq5CurRkPPC/9MO69pqbiNlXhwkZiTk
	 RaoFJcyPrlB4w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A768681E18;
	Fri, 16 Jan 2026 11:44:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id A93A21C3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 11:44:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A52CE81D35
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 11:44:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qtxCIxMPV64A for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Jan 2026 11:44:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.130.45;
 helo=mrwpr03cu001.outbound.protection.outlook.com;
 envelope-from=vivek.behera@siemens.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BDDCE81D0B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BDDCE81D0B
Received: from MRWPR03CU001.outbound.protection.outlook.com
 (mail-francesouthazon11011045.outbound.protection.outlook.com
 [40.107.130.45])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BDDCE81D0B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 11:44:51 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kMEoXl6x89ZBNIEwf0oGMPsI9atB4UBS1ujK9+wPkwK3H+HgV0ayJ1R07ICqZ2nedP5eSpUZFrNGwJHXAcj4/gIExFz6WM3VP/eQU6mS1NET/chRXENWGkVAlFORVdrdXLbq1HVUXK8BK3Hys804RKifRH0dY+n3dZbPKVacQo3jG7fym4GwvHIeEoz8SdOXk1ziz/jFhk60fOmZSkUa2C4kkh2yvTLFu+Im2esSXDyv7xNvOSIwHL+j+B9BFRTgJ98CP+19fEmmIrVzEK7f8sYF+DS+Kafd2VW7sdnvVYYoZ+3cnsZ0iyTCd6wDFViS/7snSdnsZV7ttHV6IC02jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l3Ba6UmY/lrYpCXrpis2yR9Gs1tEXq+uHxC8P5G5c2Y=;
 b=ZtnjR+itGJAShFumUMzqh87Yv9QcQi5GULAIu8StaTDP2JX4W0zIAUrwt86SMp6qrz+V6q5uMdoOCqKwa+pAr72XLYGMZgKqfr0PtPzllkKroxL6d0/GPJ13epSlFAs7IhGpQSCNpADkYcJfwBBnEtmL9C5rYHmfNHXH0/EiBdOUaTcpeKESyZsq/32MeQYmpJV5Umfkkf588NckYXuE3u+TXoDe6T5ji+tAKlsMZWUs06jzctUHsCbyqdRxhu2rnXTmXbtD9mV3pfhTf5GfZfuu3q+ZZrD73f7REzD1UuPFVFfS7Tg+83fGQx3bbPWUVneLoa9d+AJaRIvvaN0Izg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
Received: from AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:48d::20)
 by VI0PR10MB9302.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:800:2bc::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.4; Fri, 16 Jan
 2026 11:44:47 +0000
Received: from AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::eaf8:36f9:7ebb:e72b]) by AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::eaf8:36f9:7ebb:e72b%5]) with mapi id 15.20.9520.005; Fri, 16 Jan 2026
 11:44:46 +0000
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
CC: "aleksandr.loktionov@intel.com" <aleksandr.loktionov@intel.com>,
 "jacob.e.keller@intel.com" <jacob.e.keller@intel.com>,
 "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>,
 "przemyslaw.kitszel@intel.com" <przemyslaw.kitszel@intel.com>,
 "sriram.yagnaraman@ericsson.com" <sriram.yagnaraman@ericsson.com>,
 "kurt@linutronix.de" <kurt@linutronix.de>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "magnus.karlsson@intel.com"
 <magnus.karlsson@intel.com>
Thread-Topic: AW: [PATCH iwl-net v5] igb: Fix trigger of incorrect irq in
 igb_xsk_wakeup
Thread-Index: AQHcg8PrekTNf/vlH0OQtQBQJq0k07VP+5EAgAFE5BCAALz/AIAA/R+QgACu/wCAAPZNYA==
Date: Fri, 16 Jan 2026 11:44:46 +0000
Message-ID: <AS1PR10MB53922E82BC2B91E0FA1CEADE8F8DA@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
References: <20260112130349.1737901-1-vivek.behera@siemens.com>
 <aWYvVWG+AXUtpBgM@boxer>
 <AS1PR10MB53927D6755EA818A29A8B0EE8F8FA@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
 <aWfeeu8r38dti0n8@boxer>
 <AS1PR10MB5392BEABB9D53954570C07AD8F8CA@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
 <aWlFmRDm4eVwLnUR@boxer>
In-Reply-To: <aWlFmRDm4eVwLnUR@boxer>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=ba3b5035-144d-4a46-8813-83e49351c67d;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2026-01-16T10:34:32Z;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10, 3, 0, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS1PR10MB5392:EE_|VI0PR10MB9302:EE_
x-ms-office365-filtering-correlation-id: ea98ba59-77cf-4cc9-c417-08de54f4a5cb
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?9tX6f63/0lZTbI6FDvv6OwsAd6EL7byhQ7mdpwF1OdMEullhoJzYDR/9I5rA?=
 =?us-ascii?Q?GL1c3EeiLrycMGTNT04D/xZKuSTOMQpS4P8JqjibTGG7YFB18pw6c08Zb7pL?=
 =?us-ascii?Q?lZSeydcU3XTcCrziWzyUr4KIVGnOkyMQku9MMvKh1uCO+BSW6mpss5yOub+Z?=
 =?us-ascii?Q?xPVU1lUjvZCKAiy9YGnBZTcxhg2koawK2Pr/bFFXBY82DyZTfFfGewTRyKIS?=
 =?us-ascii?Q?rTip0M4N4dgjUXOs+UfaeThJFuHYFZGh9xHgDFhKmKsCbtNmKon/bTvg9Sw6?=
 =?us-ascii?Q?TZR/iiefIPJCTH5YrX+6o9v5B130eCgWIh0Jrq3pJH2U7AOARph5gkg+YECF?=
 =?us-ascii?Q?X/k/FQNqU8m2AiXb6cdZGg6m7UrdNJhPipVju5Q6OXTPKUjpfZ0kpLt4X21g?=
 =?us-ascii?Q?IV2+atLP2f96PW7DBaJerY+DL8rePk+sDQpQSz3daPr9Wtwt5YatdmqRWcjN?=
 =?us-ascii?Q?LLfD2LOaCtB2TrvT6L9JiUN0E8Lwa+FI5OFEj0cmR3ac0Iz2huxD5n9+ddDK?=
 =?us-ascii?Q?M4pYWWSAAVdSkknAT3QaKE8yKpE3/GKqFY/Q2g6eWfEuTx3fRHE3E6tUoSkl?=
 =?us-ascii?Q?WbQT8CAOAMZf+9KyfCPmcIv5FF/H94TkxMqTfsjbK8CsVtQfiRnEkuF4v0Qs?=
 =?us-ascii?Q?LV0iIIlpeOza4uQSXFBZUieGoQufLKkAT9d4LScZ+8yubdBi4uQb1iaTBF53?=
 =?us-ascii?Q?2eDn0m1UQaaUrBYaUd1v7yztveQFwoxtGukoWc2kMLIMAnWBL/tSesO5XZSa?=
 =?us-ascii?Q?5uPBuK0v95+nz85C49jg6LLUlGlI1+4yKfsgXnFxHvUOm/RJoy/PTd4KJCbg?=
 =?us-ascii?Q?/WuSfdzPFo99AucDyOHqhbjw/aC1T4qAQd23vW9L9XtoNc7SbYKfE7D+Hmi4?=
 =?us-ascii?Q?ZZ9ruMQUMPhtkui6hNCmdI1MJArd12g1oZB6klGGaehRWYvHFxekh3+s1ix5?=
 =?us-ascii?Q?lifXfOow3ZArzneHOjybMCASzzDZSh0RSweDyQC0+fM16YXElRqpWQ6hNux6?=
 =?us-ascii?Q?xV4UI/Io6h3aHP0f65OY/lPLWDTPQnZEMO0xVpMWgGa2kMkVjyPMFkHSn5LP?=
 =?us-ascii?Q?qz3tjyxOBvLLlQNcyA1ICd3FvI2kq9npnsmScNUS8emiYT4DqHrzOymG1eiH?=
 =?us-ascii?Q?BOUyqaj5shoWeytKoewMeVtXQdBhGZ5iUZ/urVZ/Bor5uv23qTRYnRCcWNgM?=
 =?us-ascii?Q?M6kiJCGTt7/cGPizhZskXGQP2KqJ7N99uq6Wu0qZ2ttsUZBDAipRsdbYTrMH?=
 =?us-ascii?Q?DgvU50Lcabe885nzjaSQDtvpt3lf7UnbhsnwrKQ5fr+3zJdfmtLNP3wWmHl9?=
 =?us-ascii?Q?SwGVkDNKpQgpU5+1zqmsIWKE1yFn2lj4BJ0xvU3ooAxndAQ+lCDPEJNz8dIf?=
 =?us-ascii?Q?jwfJ8UQ676+himjZanf210xu82T93tFTKkLi7Zxkq4Wfu1leJVauYddwGin7?=
 =?us-ascii?Q?7KSgNNrh8TwDK2NMw1LCuHTPqmkdi5NG8HNX3VXsaCXYIuc+0okggY7VSn4o?=
 =?us-ascii?Q?AdTOCuT3QHUnDDJ8Lj96NzxSpGuuuc6qXAkkvoJW9iyv0FEK6zd20fgpXd5W?=
 =?us-ascii?Q?1Hh3CUoBU1BEUlzcUcH6PqBRGMKBYov4BkopAysFYd8cTfmipexLmhr1JKJ3?=
 =?us-ascii?Q?QI3ECVOAkK5xyUQ54pS1NdA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gRXYIjx5Pb5CkY4eZypFYXr+Gg3PXN/BXsWl8UfSaHKksRe8IzuqMc2Og0uX?=
 =?us-ascii?Q?1bbxN3xYk+DnAaSde2MiM2fvB8KaFINuXL2kfUoTTzRfwcspTrokZLepkp4w?=
 =?us-ascii?Q?bIPtD2JtiynFoJkYnDp2CuqR0F1EVk37+0pIbAx2Iol5SN7L558Gw6QXi3M2?=
 =?us-ascii?Q?NclCPiAp2E/mTNnkBJlv4pl1fNdeWZz1ea7ZTHGB5g5LXHXAsP+awk8IF/zD?=
 =?us-ascii?Q?Zapo3/Z0sbt5mTTRzEOUqZ1TiTsE8Y/NpeFx8TPMlsJL3CpXhcsktIC2wh7w?=
 =?us-ascii?Q?DAgAe64jP4OHlDk5ievtlE8XobGuLvIT2LfPB3+r3bVSJ+PPPAO1Zj+yr2MF?=
 =?us-ascii?Q?fSQKXylcEoTRw8GjxBsUD5xghCpwKJ5tf7XNdrhNQUZVBL/YMz98v0usNDNE?=
 =?us-ascii?Q?PJs2stx1DGgQK23sszeBg+X43n2gBwJFYlOTe7yygu+zSyDPQZFQLnQsvwRc?=
 =?us-ascii?Q?ExrHwbTxG6D7wuA6X+SLbso34NG8MmmiunToSqXhDZNlBn5TxpNHzFg6zJNi?=
 =?us-ascii?Q?sYaCkg3ne68xtv4EvYfdbRl6J7qaUopeS0adZ0DRx7O1qO53E1Baqt8Am1fa?=
 =?us-ascii?Q?z7DP9A0WVhQPKTDEUHhrbaoMhvt2NfdStvhLItLCR4XsvJGNZ+YYVK2SmQt4?=
 =?us-ascii?Q?T1VUH0bh0MZEwBNPhIORLM+zpFsD0OcUIT9lNSvMJHrG9l/8g32Z6ZXDcRCB?=
 =?us-ascii?Q?k1XlD2v81YZGF50cWaFV4bEu4+VEILaTexKvq+BnTMNFdUI08t5eyNLvNRfB?=
 =?us-ascii?Q?03UvKsZO7tXCIz/hTnEsHFij4VDZe+GLw1CRHnhGzGtEGbaeMdgBV2nR6jLY?=
 =?us-ascii?Q?/PxhT2TwlTjuuR3yxiXdz/v6Lj5aJYEwqctwAWd3rM5DyQlwqGtr0LZuHgbt?=
 =?us-ascii?Q?64Q7fLPaKOW33wfR5eRfqzLTjW1OYZUIF7/NedQXvHgCDPsRYWYIf485C8HK?=
 =?us-ascii?Q?fBwaqK39dtO8wHK/0tGEwKyTS62lD4A0BiIwNmJYN7UAOePYS1jY94+DY2Aj?=
 =?us-ascii?Q?22fCcTi+Y/ZabDV3VaRZDMcNQC3+WSMkONwD3T9Jo0mcXNUXckLS29O5Hx6z?=
 =?us-ascii?Q?PqqvtP96y639e8I7NssC2upL0itKa8mXp7sRiej8V19iUrXYXkkTwTz8sevc?=
 =?us-ascii?Q?YdIFrV1IIsDT1jtJuV6dCwKUmY9G+9K/3lRkDwKpCaMtUQpV7iB6c08qMNzb?=
 =?us-ascii?Q?wnWe5g8/7cw3TdUVNgxT52RjpYDFplwyzGJcrbA3xPcPucpOD7ug0bfz5ubV?=
 =?us-ascii?Q?1m8DIg7OrIpUKs8+Di/LpFNpdGwBXJjC7ZZ3qpuYO9A07Y4TEMev8ZmotGqj?=
 =?us-ascii?Q?LKiD2pwpCtChaPtwxT+qroXZPQVTaKYsoj9d0Kd84tBpmC4pWPNoFgvHZTdL?=
 =?us-ascii?Q?m7jINvDR+GxVONHHsywfJc1Bvw8XZqrUvn+YKuKpknUeDXyNrrEP/PZoK86I?=
 =?us-ascii?Q?jn9yzzcLuqFckbDsB4kLKmi71xgtkt9ETEJasx+tMe8LlZT9CM4/gdJA3g9m?=
 =?us-ascii?Q?kfszMx05LJL/aQHtaC6HIaKF+iJ0yGunjWm3I0VQ+F9Lmxud/G1pxV2VJEfV?=
 =?us-ascii?Q?i6Q6A7XDunBzZjKTrrrwqqdc69gQFrzI5jS8kUNqliRo/0k45KCSONgDy5J1?=
 =?us-ascii?Q?1rDl4NI29M1d+7gkkEzKb6nT54EIPEFvqDa6uQ37gK7iMhgPp6zI50wf8JmM?=
 =?us-ascii?Q?wA3kkslWOyiTZOdA9vbs6M6QcTY/fYq1/jZInak2rD1+7H9ZZFtu3fLX9bNi?=
 =?us-ascii?Q?t3Px6aoheg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: ea98ba59-77cf-4cc9-c417-08de54f4a5cb
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2026 11:44:46.3315 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QmNA9EY/m/0PkEjCNT2XBCi3s+BPdn4MVMEZ3IgOeTPeRYRH1WmP8xQFnRuFGCI5SmsM5rtpVxCa/ZFzyPu1DjRXRW6Jl8Zd6ALFEc2EO2g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR10MB9302
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=siemens.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l3Ba6UmY/lrYpCXrpis2yR9Gs1tEXq+uHxC8P5G5c2Y=;
 b=UdYanbVSX3L3LDnh6R3V9I+d6RmJs+uH9OUCKM3XzNtE1nZeXRzWDazJyckDHT9eSygbBzrwOUDpeTZ0vDbs0LTmueeGNn3YsCrVWfXa6mjGQKRdetHEKG5Arxoqv9xgQoKLkIOGFd9xU6T4IRtJLWKvSqoCh7w4E/mEyAWO+B9FE49s8w8Qfn9g8LSrsZwuFCDxStDjI2alDP46oEHdKFdnIVBcBXw3LDx8DWMzANVMdheaEJqqIanAeuRXzXMUGIN3/kI1bPZJojSsI+kTUWs+bZyr8Oi77+FPDtXGD7eTwupeUoxlbs8SZluXz+4oCLJe+p6tKgr7PosDDU05Vg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=@siemens.com header.a=rsa-sha256
 header.s=selector2 header.b=UdYanbVS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v5] igb: Fix trigger of
 incorrect irq in igb_xsk_wakeup
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
From: "Behera, VIVEK via Intel-wired-lan" <intel-wired-lan@osuosl.org>
Reply-To: "Behera, VIVEK" <vivek.behera@siemens.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Sent: Thursday, January 15, 2026 8:53 PM
> To: Behera, Vivek (DI FA DSP ICC PRC1) <vivek.behera@siemens.com>
> Cc: aleksandr.loktionov@intel.com; jacob.e.keller@intel.com;
> anthony.l.nguyen@intel.com; przemyslaw.kitszel@intel.com;
> sriram.yagnaraman@ericsson.com; kurt@linutronix.de; intel-wired-
> lan@lists.osuosl.org; magnus.karlsson@intel.com
> Subject: Re: AW: [PATCH iwl-net v5] igb: Fix trigger of incorrect irq in
> igb_xsk_wakeup
>=20
> On Thu, Jan 15, 2026 at 11:05:37AM +0000, Behera, VIVEK wrote:
> > Hi Maciej
> >
> > > -----Original Message-----
> > > From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> > > Sent: Wednesday, January 14, 2026 7:21 PM
> > > To: Behera, Vivek (DI FA DSP ICC PRC1) <vivek.behera@siemens.com>
> > > Cc: aleksandr.loktionov@intel.com; jacob.e.keller@intel.com;
> > > anthony.l.nguyen@intel.com; przemyslaw.kitszel@intel.com;
> > > sriram.yagnaraman@ericsson.com; kurt@linutronix.de; intel-wired-
> > > lan@lists.osuosl.org; magnus.karlsson@intel.com
> > > Subject: Re: AW: [PATCH iwl-net v5] igb: Fix trigger of incorrect
> > > irq in igb_xsk_wakeup
> > >
> > > On Wed, Jan 14, 2026 at 08:19:37AM +0000, Behera, VIVEK wrote:
> > >
> > > (...)
> > >
> > > > > >
> > > > > > diff --git a/drivers/net/ethernet/intel/igb/e1000_defines.h
> > > > > > b/drivers/net/ethernet/intel/igb/e1000_defines.h
> > > > > > index fa028928482f..9357564a2d58 100644
> > > > > > --- a/drivers/net/ethernet/intel/igb/e1000_defines.h
> > > > > > +++ b/drivers/net/ethernet/intel/igb/e1000_defines.h
> > > > > > @@ -443,6 +443,7 @@
> > > > > >  #define E1000_ICS_LSC       E1000_ICR_LSC       /* Link Status=
 Change
> */
> > > > > >  #define E1000_ICS_RXDMT0    E1000_ICR_RXDMT0    /* rx desc min=
.
> > > threshold
> > > > > */
> > > > > >  #define E1000_ICS_DRSTA     E1000_ICR_DRSTA     /* Device Rese=
t
> > > Aserted */
> > > > > > +#define E1000_ICS_TXDW      E1000_ICR_TXDW	/* Transmit desc
> > > written
> > > > > back */
> > > > > >
> > > > > >  /* Extended Interrupt Cause Set */
> > > > > >  /* E1000_EITR_CNT_IGNR is only for 82576 and newer */ diff
> > > > > > --git a/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > > > > b/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > > > > index 30ce5fbb5b77..6e51b5b6f131 100644
> > > > > > --- a/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > > > > +++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > > > > @@ -529,6 +529,13 @@ int igb_xsk_wakeup(struct net_device
> > > > > > *dev,
> > > > > > u32 qid, u32
> > > > > flags)
> > > > > >  	struct igb_adapter *adapter =3D netdev_priv(dev);
> > > > > >  	struct e1000_hw *hw =3D &adapter->hw;
> > > > > >  	struct igb_ring *ring;
> > > > > > +	struct igb_q_vector *q_vector;
> > > > > > +	struct napi_struct *rx_napi;
> > > > > > +	struct napi_struct *tx_napi;
> > > > > > +	bool trigger_irq_tx =3D false;
> > > > > > +	bool trigger_irq_rx =3D false;
> > > > > > +	u32 eics_tx =3D 0;
> > > > > > +	u32 eics_rx =3D 0;
> > > > > >  	u32 eics =3D 0;
> > > > > >
> > > > > >  	if (test_bit(__IGB_DOWN, &adapter->state)) @@ -536,27
> > > > > > +543,65 @@ int igb_xsk_wakeup(struct net_device *dev, u32 qid,
> > > > > > u32 flags)
> > > > > >
> > > > > >  	if (!igb_xdp_is_enabled(adapter))
> > > > > >  		return -EINVAL;
> > > > > > -
> > > > > > -	if (qid >=3D adapter->num_tx_queues)
> > > > > > +	/* Check if queue_id is valid. Tx and Rx queue numbers are al=
ways
> same */
> > > > > > +	if (qid >=3D adapter->num_rx_queues)
> > > > > >  		return -EINVAL;
> > > > > > -
> > > > > > -	ring =3D adapter->tx_ring[qid];
> > > > > > -
> > > > > > -	if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
> > > > > > -		return -ENETDOWN;
> > > > > > -
> > > > > > -	if (!READ_ONCE(ring->xsk_pool))
> > > > > > +	/* Check if flags are valid */
> > > > > > +	if (!(flags & XDP_WAKEUP_RX) && !(flags & XDP_WAKEUP_TX))
> > > > > >  		return -EINVAL;
> > > > > > -
> > > > > > -	if (!napi_if_scheduled_mark_missed(&ring->q_vector->napi)) {
> > > > > > -		/* Cause software interrupt */
> > > > > > +	if (flags & XDP_WAKEUP_RX) {
> > > > > > +		/* IRQ trigger preparation for Rx */
> > > > > > +		ring =3D adapter->rx_ring[qid];
> > > > > > +		if (!READ_ONCE(ring->xsk_pool))
> > > > > > +			return -ENXIO;
> > > > > > +		q_vector =3D ring->q_vector;
> > > > > > +		rx_napi =3D &q_vector->napi;
> > > > > > +		/* Extend the BIT mask for eics */
> > > > > > +		eics_rx =3D ring->q_vector->eims_value;
> > > > > > +		trigger_irq_rx =3D true;
> > > > > > +	}
> > > > > > +	if (flags & XDP_WAKEUP_TX) {
> > > > > > +		if (adapter->flags & IGB_FLAG_QUEUE_PAIRS) {
> > > > > > +		/* In queue-pair mode, rx_ring and tx_ring share the same
> > > q_vector,
> > > > > > +		 * so a single IRQ trigger will wake both RX and TX
> processing
> > > > > > +		 */
> > > > > > +		} else {
> > > > > > +			/* IRQ trigger preparation for Tx */
> > > > > > +			ring =3D adapter->tx_ring[qid];
> > > > > > +			if (test_bit(IGB_RING_FLAG_TX_DISABLED,
> &ring-
> > > >flags))
> > > > > > +				return -ENETDOWN;
> > > > > > +
> > > > > > +			if (!READ_ONCE(ring->xsk_pool))
> > > > > > +				return -ENXIO;
> > > > > > +			q_vector =3D ring->q_vector;
> > > > > > +			tx_napi =3D &q_vector->napi;
> > > > > > +			/* Extend the BIT mask for eics */
> > > > > > +			eics_tx =3D ring->q_vector->eims_value;
> > > > > > +			trigger_irq_tx =3D true;
> > > > > > +		}
> > > > > > +	}
> > > > > > +	/* All error checks are finished. Check and update napi
> > > > > > +states for rx and tx
> > > */
> > > > > > +	if (trigger_irq_rx) {
> > > > > > +		if (!napi_if_scheduled_mark_missed(rx_napi))
> > > > > > +			eics |=3D eics_rx;
> > > > > > +	}
> > > > > > +	if (trigger_irq_tx) {
> > > > > > +		if (!napi_if_scheduled_mark_missed(tx_napi))
> > > > > > +			eics |=3D eics_tx;
> > > > > > +	}
> > > > > > +	/* Now we trigger the required irqs for Rx and Tx */
> > > > > > +	if ((trigger_irq_rx) || (trigger_irq_tx)) {
> > > > > >  		if (adapter->flags & IGB_FLAG_HAS_MSIX) {
> > > > > > -			eics |=3D ring->q_vector->eims_value;
> > > > > >  			wr32(E1000_EICS, eics);
> > > > > >  		} else {
> > > > > > -			wr32(E1000_ICS, E1000_ICS_RXDMT0);
> > > > > > +			if ((trigger_irq_rx) && (trigger_irq_tx))
> > > > > > +				wr32(E1000_ICS,
> > > > > > +				     E1000_ICS_RXDMT0 |
> E1000_ICS_TXDW);
> > > > > > +			else if (trigger_irq_rx)
> > > > > > +				wr32(E1000_ICS, E1000_ICS_RXDMT0);
> > > > > > +			else
> > > > > > +				wr32(E1000_ICS, E1000_ICS_TXDW);
> > > > >
> > > > > My understanding is something below would be sufficient. Bits
> > > > > set on E1000_ICS are not handled in any way so we don't have to
> > > > > distinguish between rx/tx, it's just the matter of irq trigger an=
d napi
> schedule.
> > > > >
> > > > Hi see my comments below
> > > > > -----------------8<-----------------
> > > > >
> > > > > diff --git a/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > > > b/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > > > index 30ce5fbb5b77..0aba7afd6a03 100644
> > > > > --- a/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > > > +++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > > > @@ -524,12 +524,26 @@ bool igb_xmit_zc(struct igb_ring *tx_ring,
> > > > > struct xsk_buff_pool *xsk_pool)
> > > > >  	return nb_pkts < budget;
> > > > >  }
> > > > >
> > > > > +static void igb_sw_irq(struct igb_q_vector *q_vector) {
> > > > > +	u32 eics =3D 0;
> > > > > +
> > > > > +	if (!napi_if_scheduled_mark_missed(&q_vector->napi)) {
> > > > > +		/* Cause software interrupt */
> > > > > +		if (adapter->flags & IGB_FLAG_HAS_MSIX) {
> > > > > +			eics |=3D ring->q_vector->eims_value;
> > > > > +			wr32(E1000_EICS, eics);
> > > > > +		} else {
> > > > > +			wr32(E1000_ICS, E1000_ICS_RXDMT0);
> > > > So here it is sufficient to rely on the E1000_ICS_RXDMT0 bit to
> > > > trigger the
> > > correct irq (Tx and Rx)?
> > > >  I remember I received a review comment from Intel point to
> > > > E1000_ICS_TXDW
> > > as being the correct bit of triggering TX for non MSIX case.
> > > > I can't really evaluate this since I don't have a setup to test thi=
s.
> > > > But okay
> > >
> > > I don't see in irq handlers that we do any specific handling for
> > > txdw vs rxdmt0. It's rather a matter of getting an irq here.
> > Yes amongst the interrupt cause checks implemented in the msi
> > interrupt handler there is no interest in either E1000_ICR_RXDMT0
> E1000_ICR_TXDW as events.
> > All that matters in this in this case is a softirq trigerring
> > napi_schedule  . So we can stick to E1000_ICS_RXDMT0 irrespective of
> > the flag in the xsk wakeup function. Although I must mention that all
> > other usages of E1000_ICS_RXDMT0 in the kernel are in combination with
> rx_ring so from the code perspective this usage looks strange to someone =
without
> deeper knowledge of the system.
> > >
> > > > > +		}
> > > > > +	}
> > > > > +}
> > > > > +
> > > > >  int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)  =
{
> > > > >  	struct igb_adapter *adapter =3D netdev_priv(dev);
> > > > >  	struct e1000_hw *hw =3D &adapter->hw;
> > > > >  	struct igb_ring *ring;
> > > > > -	u32 eics =3D 0;
> > > > >
> > > > >  	if (test_bit(__IGB_DOWN, &adapter->state))
> > > > >  		return -ENETDOWN;
> > > > > @@ -548,14 +562,15 @@ int igb_xsk_wakeup(struct net_device *dev,
> > > > > u32 qid, u32
> > > > > flags)
> > > > >  	if (!READ_ONCE(ring->xsk_pool))
> > > > >  		return -EINVAL;
> > > > >
> > > > > -	if (!napi_if_scheduled_mark_missed(&ring->q_vector->napi)) {
> > > > > -		/* Cause software interrupt */
> > > > > -		if (adapter->flags & IGB_FLAG_HAS_MSIX) {
> > > > > -			eics |=3D ring->q_vector->eims_value;
> > > > > -			wr32(E1000_EICS, eics);
> > > > > -		} else {
> > > > > -			wr32(E1000_ICS, E1000_ICS_RXDMT0);
> > > > > -		}
> > > > > +	if (flags & XDP_WAKEUP_TX)
> > > > > +		igb_sw_irq(ring->q_vector);
> > > > > +
> > > > > +	if (flags & XDP_WAKEUP_RX) {
> > > > > +		ring =3D adapter->rx_ring[qid];
> > > > > +		/* for !IGB_FLAG_QUEUE_PAIRS, this will be NOP as
> NAPI has
> > > > > +		 * been already marked with NAPIF_STATE_MISSED
> > > > > +		 */
> > > > I think you meant for the case IGB_FLAG_QUEUE_PAIRS. Since when
> > > > the queue pairs are not active the Tx AND Rx queues don't share
> > > > the same qvector and consequently not the same NAPI
> > >
> > > yes, correct
> > >
> > > > > +		igb_sw_irq(ring->q_vector);
> > > > Okay so you would be triggering soft irq's in two steps if both TX
> > > > and RX flags
> > > are set.
> > > > Honestly, I have tried to avoid doing this in my patch.  Which is
> > > > the reason why I wait to finish all the error checks, Napi updates
> > > > before triggering the
> > > required irq vectors by writing to eics with a single write.
> > > > But okay the other approach also works
> > >
> > >
> > >
> > > >
> > > > >  	}
> > > > >
> > > > >  	return 0;
> > > > >
> > > > > ----------------->8-----------------
> > > > >
> > > > > >  		}
> > > > > >  	}
> > > > > > -
> > > > > >  	return 0;
> > > > > >  }
> > > > > > --
> > > > > > 2.34.1
> > > > > >
> > > > I think the strategy of triggering interrupts in one step after
> > > > performing all the
> > > necessary checks is what might make this approach look complex.
> > > > IMHO the one step strategy is better and more intuitive.
> > > > Unfortunately, there isn't a reference here to go by since none of
> > > > the
> > > xsk_wakeup hooks implemented in the kernel care about the flags
> > > > I can submit a v6 of the patch based the one step approach with
> > > > further
> > > simplifications. v6 would also include review suggestions I received =
for v5.
> > > > Like this I can also submit the next version to the igc patch. It
> > > > follows the same
> > > logic as the igb
> > > > I have our regression tests with RTC testbench and our Siemens
> > > > Profinet RT
> > > tester running with these patches with I210 and I226
> > > >
> > > > Alternatively, you could submit patches following the igb and igc
> > > > following the
> > > two-step logic.
> > >
> > > How about we meet the half way and something below? that would
> > > include your request of having a single write to E1000_ICS.
> > >
> > Yes it sounds reasonable. However I would like to make some
> > observations
> > >
> > > diff --git a/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > b/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > index 30ce5fbb5b77..432b4c7c1850 100644
> > > --- a/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > +++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
> > > @@ -524,6 +524,17 @@ bool igb_xmit_zc(struct igb_ring *tx_ring,
> > > struct xsk_buff_pool *xsk_pool)
> > >  	return nb_pkts < budget;
> > >  }
> > >
> > > +static u32 igb_sw_irq_prep(struct igb_q_vector *q_vector) {
> > > +	u32 eics =3D 0;
> > > +
> > > +	if (!napi_if_scheduled_mark_missed(&q_vector->napi))
> > > +		eics =3D adapter->flags & IGB_FLAG_HAS_MSIX ?
> > > +			q_vector->eims_value : 1;
> > > +
> > > +	return eics;
> > > +}
> > > +
> > >  int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)  {
> > >  	struct igb_adapter *adapter =3D netdev_priv(dev); @@ -548,14 +559,2=
3
> > > @@ int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32
> > > flags)
> > >  	if (!READ_ONCE(ring->xsk_pool))
> > >  		return -EINVAL;
> > If we want to implement proper usage of flags then I would move
> > everything related to a ring's internal checks inside the if case of th=
e
> corresponding if case.
> > Use the correct adapter ring (rx or tx) to perform the checks.
> > Even though the functionality wise this code is correct why just
> > randomly pick the tx  ring right at beginning of the function and do
> > two checks with it? And same question would pop up to the reviewers
> > mind for the igc driver where rx_ring is used. For me correct usage is
> > more important than saving some lines of code in the patch
>=20
> And for me code that will be easy to maintain is important.
>=20
> We could move IGB_RING_FLAG_TX_DISABLED to XDP_WAKEUP_TX branch
> but rest is generic. AF_XDP works on pairs of queues so pool is loaded on=
 both
> tx and rx pointed by given queue id. IOW xsk_pool will be present on both=
 rx and
> tx rings, queue id validation can stay as is as well as igb works on 'com=
bined'
> channels.
Yes. There was never any confusion here that the xsk_buff_pool created by t=
he xdp/xsk subsystem is for both tx and rx
and is coupled to the netdev+queue_id combination.=20
Also to your point regarding igb working only with combined queues is somet=
hing=20
I have pointed out several times during the review of my patches and to mak=
e it more clear
I had in fact added a comment to my patch.
Despite the fact that usage of rx_ring in one function ( igb_xsk_pool_disab=
le) and tx_ring here to get the xsk_pool is irritating=20
I can agree  can keep the existing xsk pool's validity check.=20
>=20
> FWIW I had some PoC in the past where I implemented in AF_XDP core suppor=
t
> for async sockets - where pool was loaded *only* on rx or tx side. Not su=
re if TSN
> workloads would benefit from that?
I remember this or a similar topic we in siemens discussed with Intel a few=
 years ago which=20
Included new hooks in a netdev's xdp driver and extensions to libxdp .
I don't recall any discussion regarding plans for upstreaming this=20
In some TSN use-cases especially with extremely low jitter tolerances=20
a async mode with tx only traffic is indeed essential.
>=20
> > >
> > > -	if (!napi_if_scheduled_mark_missed(&ring->q_vector->napi)) {
> > > -		/* Cause software interrupt */
> > > -		if (adapter->flags & IGB_FLAG_HAS_MSIX) {
> > > -			eics |=3D ring->q_vector->eims_value;
> > > +	if (flags & XDP_WAKEUP_TX)
> > > +		eics |=3D igb_sw_irq_prep(ring->q_vector);
> > > +
> > > +	if (flags & XDP_WAKEUP_RX) {
> > > +		ring =3D adapter->rx_ring[qid];
> > > +		/* for IGB_FLAG_QUEUE_PAIRS, this will be NOP as NAPI has
> > > +		 * been already marked with NAPIF_STATE_MISSED
> > > +		 */
> > > +		eics |=3D igb_sw_irq_prep(ring->q_vector);
> > > +	}
> > > +
> > > +	/* Cause software interrupt */
> > > +	if (eics) {
> > > +		if (adapter->flags & IGB_FLAG_HAS_MSIX)
> > >  			wr32(E1000_EICS, eics);
> > > -		} else {
> > > +		else
> > >  			wr32(E1000_ICS, E1000_ICS_RXDMT0);
> > > -		}
> > >  	}
> > >
> > >  	return 0;
> > >
> > > >
> > > > Regards
> > > >
> > > > Vivek
> >
> > I would like to know your view about the next steps. Would you like me
> > to include the changes we discussed in next version of the patch I
> > submitted?
> > Or would you like to submit the patch you have prepared?
>=20
> Hmm...up to you. You can take my suggestions and add some tag, such as
> Suggested-by.
Okay. I will prepare and send out the next version of the patch

Thanks for your suggestions

Vivek
>=20
> Thanks,
> Maciej
>=20
> >
> > Regards
> >
> > Vivek
