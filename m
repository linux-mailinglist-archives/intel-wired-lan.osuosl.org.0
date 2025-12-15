Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 77228CBDF0A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Dec 2025 14:05:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6812D60E20;
	Mon, 15 Dec 2025 13:05:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZtY-jjpiRLLw; Mon, 15 Dec 2025 13:05:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4A64F60E13
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765803902;
	bh=/vZoAO7TYa5kOfCFYYmw0hhcPYEgA0BZ6VqHpOCn25U=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=M1M4s3htJYNiLZvnihY4OFHB8aZBmr1HRZaVZJ1FqqjQpz0dRTzqnTZMvxl8JEKGa
	 N2S5IlPrxalcZ7NAs4utHkXK/7s1KI4fItRrcrJ9U8nFr6sIo+W8phjBBf5LUhi9f/
	 o/jTBvafpkzxvzys2iqMvr1L/n4IJohJMcGTNTzmIJG1TSTFiy7Le2taPfFX9S7vY6
	 HUn2l9Eb8Aavkuv6oUdEbESvpj5nKWy3pJZXoFSB2K0pMkmnD8kDxaOw0IWvl1fXyt
	 +96+66EGpjehrSeFwpY6LK2yKSzdjZ3eWIxoqpddeJbraplkD4DM9XSW28n+kNqRGi
	 qjh0SF/DpXg1Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4A64F60E13;
	Mon, 15 Dec 2025 13:05:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 20D7E272
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 13:05:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 11A8060B07
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 13:05:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U4AnUMn2iV05 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Dec 2025 13:04:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.69.49;
 helo=am0pr83cu005.outbound.protection.outlook.com;
 envelope-from=vivek.behera@siemens.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 237C760A79
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 237C760A79
Received: from AM0PR83CU005.outbound.protection.outlook.com
 (mail-westeuropeazon11010049.outbound.protection.outlook.com [52.101.69.49])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 237C760A79
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 13:04:57 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DvoKX2FSeWqHc9CoT2S7bdTgGEbFLExdz3pKZD4DXhVwNUXpwye5V+EuoAg/kBcmJyHIz/BWft1pu88hX6wZBnsd1D+KSaXADMlDBD0LTNcUq7CUZWmENfwFNNVOF70YiSR4oLrG3xxzZCvzV9zk35ygo2+4pnhfqd9FsCzs1QbiuFCmiFq/xnV949D0no6waVmQmY5ic0QEwDReufEXsM3rSIH9uGUMXQROfr4DrNMRR+vaYGz4y/Kmr9d1dWOMdUPWvBctbSGRVxog8ypPjr9mmF4WEfLJ6PPfBAmNWXGwMz4ojeiw1dV5Z91wyqhg/cirK8CJlrgm+zPF3hDc2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/vZoAO7TYa5kOfCFYYmw0hhcPYEgA0BZ6VqHpOCn25U=;
 b=sMa8PwnugnDySzsXGNahggZDtV4SAtJfJPDLgytcT/0/05cqDpEVVoSA/CHmswyTqOZdyXa+VXWrwTGS0LD7zoi5+lY5DWOf2FOCYxnqwSWAQe3yltMKhrUp7n5VguHlu3sKD1mu30h/JprSmoCUQLMsJiCYTwuH15+uNspJ6kyxKiR+gI4pwC07GKwGtMng74407ty4yYnRBdB+e5y99AoOYhZayEbM5kFEPkpfSM8BJEikyItJDGv5GsS0YbIF7wq5uFSmjnPS8jretwkp0YyhI2bfC/dSqOxGtitr41ws5id4/qYLkRm7dT799UDN25KfNMx/0W380dGfSeTheQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
Received: from AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:48d::20)
 by GV1PR10MB9059.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:150:1d6::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.13; Mon, 15 Dec
 2025 13:04:53 +0000
Received: from AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::456e:d0d0:15:f4e]) by AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::456e:d0d0:15:f4e%6]) with mapi id 15.20.9412.011; Mon, 15 Dec 2025
 13:04:53 +0000
From: "Behera, VIVEK" <vivek.behera@siemens.com>
To: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "horms@kernel.org" <horms@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH v7 iwl-net] igc: Fix trigger of
 incorrect irq in igc_xsk_wakeup function
Thread-Index: AQHca4TqI+F/Uf8hf0KRl9TpK1vE+LUijtIAgAAgN8A=
Date: Mon, 15 Dec 2025 13:04:53 +0000
Message-ID: <AS1PR10MB539283D4C2E06B57BFD5F20F8FADA@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
References: <20251212163208.137164-1-vivek.behera@siemens.com>
 <PH7PR11MB59833AB58FB8C0A6CB1E319FF3ADA@PH7PR11MB5983.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB59833AB58FB8C0A6CB1E319FF3ADA@PH7PR11MB5983.namprd11.prod.outlook.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=aeda4de5-7e5c-4a4b-8cdc-c78fc0fdc82c;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2025-12-15T13:02:16Z;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10, 3, 0, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS1PR10MB5392:EE_|GV1PR10MB9059:EE_
x-ms-office365-filtering-correlation-id: 78ea07f8-909e-47f5-4835-08de3bda89c5
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|921020|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?W3e6P7mFI2rFO3alhvTMrtv8yrOuM7T3cKeixPAZrBQqYFITIsVxzmrbOZce?=
 =?us-ascii?Q?evAIuppQVwh0dLmv/UkhmuUFQGYW5GvqwFtLVvULuuwewSvRNOu7ufEhHfMv?=
 =?us-ascii?Q?nujhxSFbbzhxFhOCMzC3ntosJO5e+x2zH689Oh4GhvoLK8OED3GR9dPuBSuh?=
 =?us-ascii?Q?lSQX319fZLPvfRIp//3TEsANKQObYlpL9cyAhoIk/Ln0NNJRmuHsDoyR9mAy?=
 =?us-ascii?Q?uQb/fw41yFk3eNyjIIUc5IJM+lcFj/sZMIE6qNoortA8e274qokE7nsAgO3I?=
 =?us-ascii?Q?oJoRtZVBhD/y1WwBD9TVIwI99+K9qgKw9ltDZtP/pqNXdU0DNkTs6DfxjRxC?=
 =?us-ascii?Q?3yk2z0cotHmgaE5uHflFg1NVOh2m6Vvf5jkEo+GZ7IjiodCkmUeMH4Greg4W?=
 =?us-ascii?Q?XkLSVHQnYeLNPEELfSGVgUpjStgm7oyQR5X+uCEpMxe3cblNkurraatWma2K?=
 =?us-ascii?Q?hgEHOEO+oPV0oTwhw6WJuPLhyEsfWyb1qxJSzyHZ6HiMdC7fmoa3Jr9uGVFl?=
 =?us-ascii?Q?hMe39+FlF2vwH5SSFrjpDna76PwSQ9IVYAq6yxnRBufc3nPzmOehn9vlxosq?=
 =?us-ascii?Q?4XfpfI5/CouD9dHbkG57Hsh5NCc7cgNEM7J0BhFO3oXlH9k201gT4yiPjGrx?=
 =?us-ascii?Q?SwsP3hEQpgdmll44mmMISTVmaU6pMkBpUktnNXexvZGAZm+A2yOmllgmWcaq?=
 =?us-ascii?Q?S9KykZu6oOsB3RpzGVDPKb7HMp+1EVJgU58Eiq+XN/jYGo2Uq6s2NV5pPWkL?=
 =?us-ascii?Q?Nrj+qkny2c8K75A1iCgoZV8xbXyh6gsn21wMYmR/Ef0vk4kiE/BeXR34+oJ3?=
 =?us-ascii?Q?5qREl9l1IGffS0+wZKzzCMnkOeIaYXqgbouZA5ry+SubybZxZCgHqsKFH04i?=
 =?us-ascii?Q?JZ0SmuwNMlFTWUqJCbRnUk3jrcT3pvpGRiWxleBW8MbRqHQDtOCk6KN3BBRl?=
 =?us-ascii?Q?4AK13har48VowU6R8Uf5xHYRHvkvFVxbwaLe+qmtxNSNyRkRqX4F8d+t5Sat?=
 =?us-ascii?Q?TFKxgzCPK7WMQ9p3it0bN4K/T6r78l8H2YMTZBBB6+CYA/qW1IeDhM56VAZV?=
 =?us-ascii?Q?bIiKWRwlpx2xE7Jfm80skhg221jse5Ae86MCBs7nV5xQXaUXwPGL/fF/JFhD?=
 =?us-ascii?Q?13MC9477QBsPWD8xlJKvDUoeaTUTKT5uxaxAgW6fuXRs1hJQouzrN6oUXf/s?=
 =?us-ascii?Q?H2lp9FMzg6D5Q0MqVtSrHQq4Wf9QUDnMtNrrtXsTSnU+S6jhqY07qhqY14yH?=
 =?us-ascii?Q?p2cVw8mdQtozqZO+nievm1vUHJjgXpF7DOm6yyt906s2x2FVHRh6B7l15jet?=
 =?us-ascii?Q?rfobC6O6C/QYl3XSxb5X8z2QN9exdeAjfl/Tvm6u+AUtCdBT9ePzulTHRCHq?=
 =?us-ascii?Q?9DNUWkqg2dCYJ0i4wSB8yY+5pM4E9Uzy2ZslrWi7eiOMl9ffmB1l7ifyW6ww?=
 =?us-ascii?Q?q9zB1C/ez/jpIoENhM0bhpKL0uhj7SnqBu9uSj9PhyRpl4jj+9SIWLcFx2VE?=
 =?us-ascii?Q?z8s6XAExT/yWrFddEjTxdaqCdsMZnT/W0/c5zPmkqlqY3W5kT3hLP/QWkg?=
 =?us-ascii?Q?=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(921020)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sCnyZHvAxT42gCAFxajp+U+gmxtI65OSdhqniI6dkwZn+cJjNOk/lJlbZhFb?=
 =?us-ascii?Q?l4HaaQXewZQnb9UICQNUNo22sqiKJy4naEUWIEd39y3VButFIMORW6EeLJyQ?=
 =?us-ascii?Q?tdMsaBHbuH5yJ6XFr0BDYcUjsU8WPoGifVs/SYQDlt3B/rY48lI41lF066qX?=
 =?us-ascii?Q?RM3u/zsyj2VcIHUY/7I16IpTCKPqCJymRhm/M39hBFQ8wpP1oltZtCgrDmiC?=
 =?us-ascii?Q?wSUdpmLYTxQ76VBb37MsxGdFs9ACAjDsh+EdSvGyreLGhxVzVLdIfclotDNo?=
 =?us-ascii?Q?lfSlWXxDuldvS2NxlH2RWysl3P/nL+YZjlBMh9VUYWpNVQ51yJL/EmIMByA4?=
 =?us-ascii?Q?jeBNkWD6CW3e7Pwtep8iIgVBiNjzCFeDI8oIREVVD9FyD5l5wS3NM6FmTLC9?=
 =?us-ascii?Q?y77GKoIiX0Wy/rxyZ4J51Be1ZN7MYSf1eGLu8KDtank0gedGITwM51BYK7Lh?=
 =?us-ascii?Q?ZDmsiBW88ETeNzA9nuBHC3Hh4pJHTVp8DhxR63MwZkL/vdSxtBMXyB4TZghW?=
 =?us-ascii?Q?jDImm7qBSft+fDj7CD2qh3D8gNbrCIN0cGq7QBfQw9YCTwgVcwimg3aTEiXA?=
 =?us-ascii?Q?ZwLf1LufB+foy4BHlQrnYJ5adlvk/+tLJliPl2yKxVwjgGfK6SoaainyEg90?=
 =?us-ascii?Q?2vbxpUqIsnW0xvZmrHPRVIJ7YU3Etzy6SEtGkUe+HdQwy24lpntrQF8Sxei5?=
 =?us-ascii?Q?VTQ9QBkjTWGiUdjk6rXK/VOIYcH4u5YGYYg+/sCFLzPTRcrY3p4OzgDypaJS?=
 =?us-ascii?Q?Tk3Q1hcKeo7a9diWZFO3H78MuKrhpxLgYEvwBpRLI9STQHcHyvY4Tpp+jUPg?=
 =?us-ascii?Q?1QUPRPX/0DgaKLoz5BkfYKVHnXzssFezsI72ED1B5e4AiaPpNpEKrzc/Aq8l?=
 =?us-ascii?Q?wyYP1xB2CwPgSU5uEioiz4LzNGFvEc50iTv1/Z2P2S1AMoVB7ioYXYG/GGtS?=
 =?us-ascii?Q?Kw+BBw1xmg5ax2UbKdCih2eecoJzghLIMBNXCxaPSEMHksKnaa2bfKtOsuwv?=
 =?us-ascii?Q?SOlUC0APl5cDnUpHpyBGG9nR8aMAyKg2WJnWPPkT/2NO+4AmYDtCcRK3V11/?=
 =?us-ascii?Q?YzzA+JHQMeI2IzVVhR/ZzT1LYXMPg7EQC8jfkBpG8nx0FOOFHz7TC4n/pQqP?=
 =?us-ascii?Q?WAr0rTCIBLA/26mQnHpqisgLOcvW9KbAyy+LgVCdoApWTfKU1wYc1OStF7ox?=
 =?us-ascii?Q?yCKye0GO24zXTZjtgqiSz9twZzk5dEuuMzwGZBxeh0NOuugExNzB43+F/MQP?=
 =?us-ascii?Q?iy60vaSF6KYKIUGcwLkbpdCIh2k1DEKCvAt4/XR5/qkpEX8ufe180ODO5im+?=
 =?us-ascii?Q?FpV7ai7qURMwO6iw0SwLqxbFC1HC/MZzjYKKySdPG+VRQM5k9BkWB80kuPMJ?=
 =?us-ascii?Q?Qpou+FgcmDTJap01KB7OddBKaflQ+CsyHT11mpomjDo9jA0hcelo9AmZYwIS?=
 =?us-ascii?Q?qpQNzx0oyi1TOBiBOcJl1MHKMiMt31Ce7Ec+HC/OlahgJyAfjwTLsBHDuVdL?=
 =?us-ascii?Q?u1OEsoY6bUDZQ0YqMZsOEcao2hWyZSv+kfS7W8HwyjNC82jCUCiC8x9Vw08j?=
 =?us-ascii?Q?HMv47lrVPIbtjds884xCAJLlJBoVLvonerZlVvaf?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 78ea07f8-909e-47f5-4835-08de3bda89c5
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Dec 2025 13:04:53.3347 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: F9OpObHWqj7L1ZDeH+Sl9ubcd864dlM0fz1Bc9X8VU7cZ4XDkXb8U6fuu8KQM0im0rqabb2BUIH3D4+iPx4ChHUriKQ7EPbOh352TsZJDWg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR10MB9059
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=siemens.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/vZoAO7TYa5kOfCFYYmw0hhcPYEgA0BZ6VqHpOCn25U=;
 b=FKFQtbn2CzIhlL53l2846xV2uuiH4XbRj9MqFZcchTPtXV/XNsBkEKeM7oRZoLGIDSR95DE/Ztq/rrCMeoQgvc3fEHq4WGntMhNfiPZNSu28uRbNdLWZ+lRqy1elqU3gJ418tR8lPzRXS32psPHCLptM3VSSPGqOEy4liQrOW7VQhq8XgqP2x41S/sGYvjarER7YMpahg4LkWbnMumI9coYa3uWqZQlDn+YyCutv2dd8z4U0GkPVpofhxmzOAIvDWTwtM+5a1dYVTDbE/Tn1pbqRQQ9A+xV04Pbh0REYJ/Wz/wCn2AjR2xaE8yUm8AlJGY3egufxwykLA20xbwGHaA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=@siemens.com header.a=rsa-sha256
 header.s=selector2 header.b=FKFQtbn2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
Subject: Re: [Intel-wired-lan] [PATCH v7 iwl-net] igc: Fix trigger of
 incorrect irq in igc_xsk_wakeup function
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
> From: Kwapulinski, Piotr <piotr.kwapulinski@intel.com>
> Sent: Monday, December 15, 2025 12:07 PM
> To: Behera, Vivek (DI FA DSP ICC PRC1) <vivek.behera@siemens.com>;
> Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com=
>;
> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; horms@kernel.org; Behera, Vivek (DI=
 FA
> DSP ICC PRC1) <vivek.behera@siemens.com>
> Subject: RE: [Intel-wired-lan] [PATCH v7 iwl-net] igc: Fix trigger of inc=
orrect irq in
> igc_xsk_wakeup function
>=20
> >-----Original Message-----
> >From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> >Vivek Behera
> >Sent: Friday, December 12, 2025 5:32 PM
> >To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Keller, Jacob
> >E <jacob.e.keller@intel.com>; Nguyen, Anthony L
> ><anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> ><przemyslaw.kitszel@intel.com>
> >Cc: intel-wired-lan@lists.osuosl.org; horms@kernel.org; Behera, Vivek
> ><vivek.behera@siemens.com>
> >Subject: [Intel-wired-lan] [PATCH v7 iwl-net] igc: Fix trigger of
> >incorrect irq in igc_xsk_wakeup function
> >
> >This patch addresses the issue where the igc_xsk_wakeup function was
> triggering an incorrect IRQ for tx-0 when the i226 is configured with onl=
y 2
> combined queues or in an environment with 2 active CPU cores.
> >This prevented XDP Zero-copy send functionality in such split IRQ
> configurations.
> >
> >The fix implements the correct logic for extracting q_vectors saved duri=
ng rx
> and tx ring allocation and utilizes flags provided by the ndo_xsk_wakeup =
API to
> trigger the appropriate IRQ.
> >
> >Fixes: fc9df2a0b520 ("igc: Enable RX via AF_XDP zero-copy")
> >Fixes: 15fd021bc427 ("igc: Add Tx hardware timestamp request for AF_XDP
> >zero-copy packet")
> >Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
> >Reviewed-by: Jacob Keller <jacob.keller@intel.com>
> >Reviewed-by: Aleksandr loktinov <aleksandr.loktionov@intel.com>
> >Reviewed-by: Przemyslaw Kitszel <przemyslaw.kitszel@intel.com>
> >Reviewed-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> >---
> >v1:
> >https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flore=
.
> >kernel.org%2Fintel-wired-
> lan%2FAS1PR10MB5392B7268416DB8A1624FDB88FA7A%4
> >0AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM%2F&data=3D05%7C02%7
> Cvivek.behera
> >%40siemens.com%7Cd766c8b9f57948f200eb08de3bca14df%7C38ae3bcd95794f
> d4add
> >ab42e1495d55a%7C1%7C0%7C639013936289571503%7CUnknown%7CTWFpb
> GZsb3d8eyJF
> >bXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTW
> FpbCI
> >sIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3Dneo618Q0gdHdj9Xnrohxq2BLy
> S7iwZcEV1
> >NJxV8ZSeg%3D&reserved=3D0
> >v2:
> >https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flore=
.
> >kernel.org%2Fintel-wired-
> lan%2FAS1PR10MB539280B1427DA0ABE9D65E628FA5A%4
> >0AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM%2F&data=3D05%7C02%7
> Cvivek.behera
> >%40siemens.com%7Cd766c8b9f57948f200eb08de3bca14df%7C38ae3bcd95794f
> d4add
> >ab42e1495d55a%7C1%7C0%7C639013936289623303%7CUnknown%7CTWFpb
> GZsb3d8eyJF
> >bXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTW
> FpbCI
> >sIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3D71XQgANJs4AtXZQ6G5nRiPw
> 0nlNLl7pjEq
> >%2FyDCGlq4o%3D&reserved=3D0
> >v3:
> >https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flore=
.
> >kernel.org%2Fintel-wired-
> lan%2FIA3PR11MB8986E4ACB7F264CF2DD1D750E5A0A%4
> >0IA3PR11MB8986.namprd11.prod.outlook.com%2F&data=3D05%7C02%7Cvivek.be
> hera
> >%40siemens.com%7Cd766c8b9f57948f200eb08de3bca14df%7C38ae3bcd95794f
> d4add
> >ab42e1495d55a%7C1%7C0%7C639013936289679767%7CUnknown%7CTWFpb
> GZsb3d8eyJF
> >bXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTW
> FpbCI
> >sIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DnP2boAem98DI36PzBFvdLCTl
> qXEiFcasFl
> >anmAg2ZhA%3D&reserved=3D0
> >v4:
> >https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flore=
.
> >kernel.org%2Fintel-wired-
> lan%2FAS1PR10MB53926CB955FBD4F9F4A018818FA0A%4
> >0AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM%2F&data=3D05%7C02%7
> Cvivek.behera
> >%40siemens.com%7Cd766c8b9f57948f200eb08de3bca14df%7C38ae3bcd95794f
> d4add
> >ab42e1495d55a%7C1%7C0%7C639013936289725300%7CUnknown%7CTWFpb
> GZsb3d8eyJF
> >bXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTW
> FpbCI
> >sIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DWRUAt6Ow9l2KcVzvX7zEBJPf
> qr%2BiIZaz
> >3EqxrHemol4%3D&reserved=3D0
> >v5:
> >https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flore=
.
> >kernel.org%2Fintel-wired-
> lan%2FAS1PR10MB5392FCA415A38B9DD7BB5F218FA0A%4
> >0AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM%2F&data=3D05%7C02%7
> Cvivek.behera
> >%40siemens.com%7Cd766c8b9f57948f200eb08de3bca14df%7C38ae3bcd95794f
> d4add
> >ab42e1495d55a%7C1%7C0%7C639013936289778314%7CUnknown%7CTWFpb
> GZsb3d8eyJF
> >bXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTW
> FpbCI
> >sIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DkGNWACrHetJfFUyyvVsmeM
> %2BNjxJj8tEw
> >WGFLYWc2AKY%3D&reserved=3D0
> >v6:
> >https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flore=
.
> >kernel.org%2Fintel-wired-lan%2F20251211173916.23951-1-vivek.behera%40si
> >emens.com%2F&data=3D05%7C02%7Cvivek.behera%40siemens.com%7Cd766c8
> b9f57948
> >f200eb08de3bca14df%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7C
> 6390139
> >36289816521%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUs
> IlYiOiIwLjA
> >uMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C
> %7C%7C&
> >sdata=3D0XU2n%2BL4JDgdw9aa2N1ezRIMXZrFf9VEizwg2wNORNI%3D&reserved
> =3D0
> >
> >changelog:
> >v1
> >- Inital description of the Bug and steps to reproduce with RTC
> >Testbench
> >- Test results after applying the patch
> >v1 -> v2
> >- Handling of RX and TX Wakeup in igc_xsk_wakeup for a split IRQ
> >configuration
> >- Removal of igc_trigger_rxtxq_interrupt (now redundant)
> >- Added flag to igc_xsk_wakeup function call in igc_ptp_free_tx_buffer
> >v2 -> v3
> >- Added 'Fixes:' tags for the relevant commits.
> >- Added reviewer
> >v3 -> v4
> >- Added reviewer
> >v4 -> v5
> >- Updated comment style from multi-star to standard linux convention
> >v5 -> v6
> >- Resolve formatting issues highlighted by reviewers
> >- Try to include version histroy as defined in netdev guidelines
> >- Included review suggestions from Przemyslaw
> >- Added reviewers
> >v6 -> v7
> >- Included review suggestions from Przemyslaw missed in v6
> >---
> > drivers/net/ethernet/intel/igc/igc_main.c | 78 ++++++++++++++++++-----
> >drivers/net/ethernet/intel/igc/igc_ptp.c  |  2 +-
> > 2 files changed, 62 insertions(+), 18 deletions(-)
> >
> >diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
> >b/drivers/net/ethernet/intel/igc/igc_main.c
> >index 7aafa60ba0c8..620b9f9bd3aa 100644
> >--- a/drivers/net/ethernet/intel/igc/igc_main.c
> >+++ b/drivers/net/ethernet/intel/igc/igc_main.c
> >@@ -6908,21 +6908,13 @@ static int igc_xdp_xmit(struct net_device *dev, =
int
> num_frames,
> > 	return nxmit;
> > }
> >
> >-static void igc_trigger_rxtxq_interrupt(struct igc_adapter *adapter,
> >-					struct igc_q_vector *q_vector)
> >-{
> >-	struct igc_hw *hw =3D &adapter->hw;
> >-	u32 eics =3D 0;
> >-
> >-	eics |=3D q_vector->eims_value;
> >-	wr32(IGC_EICS, eics);
> >-}
> >-
> > int igc_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags)  {
> > 	struct igc_adapter *adapter =3D netdev_priv(dev);
> >+	struct igc_hw *hw =3D &adapter->hw;
> > 	struct igc_q_vector *q_vector;
> > 	struct igc_ring *ring;
> >+	u32 eics =3D 0;
> >
> > 	if (test_bit(__IGC_DOWN, &adapter->state))
> > 		return -ENETDOWN;
> >@@ -6930,18 +6922,70 @@ int igc_xsk_wakeup(struct net_device *dev, u32
> queue_id, u32 flags)
> > 	if (!igc_xdp_is_enabled(adapter))
> > 		return -ENXIO;
> >
> >-	if (queue_id >=3D adapter->num_rx_queues)
> >-		return -EINVAL;
> >+	if ((flags & XDP_WAKEUP_RX) && (flags & XDP_WAKEUP_TX)) {
> >+		/* If both TX and RX need to be woken up */
> >+		/* check if queue pairs are active. */
> >+		if ((adapter->flags & IGC_FLAG_QUEUE_PAIRS)) {
> >+			/* Just get the ring params from Rx */
> >+			if (queue_id >=3D adapter->num_rx_queues)
> >+				return -EINVAL;
> >+			ring =3D adapter->rx_ring[queue_id];
> >+		} else {
> >+			/* Two irqs for Rx AND Tx need to be triggered */
> >+			if (queue_id >=3D adapter->num_rx_queues)
> >+				return -EINVAL;
> >+
> >+			if (queue_id >=3D adapter->num_tx_queues)
> >+				return -EINVAL;
> >+
> >+			/* IRQ trigger preparation for Rx */
> >+			ring =3D adapter->rx_ring[queue_id];
> >+			if (!ring->xsk_pool)
> >+				return -ENXIO;
> >
> >-	ring =3D adapter->rx_ring[queue_id];
> >+			q_vector =3D ring->q_vector;
> >+			if (!napi_if_scheduled_mark_missed(&q_vector->napi))
> >+				eics |=3D q_vector->eims_value;
> >+			/* IRQ trigger preparation for Tx */
> >+			ring =3D adapter->tx_ring[queue_id];
> >+
> >+			if (!ring->xsk_pool)
> >+				return -ENXIO;
> >+
> >+			/* Retrieve the q_vector saved in the ring */
> Thank you for addressing the previous comments. I believe this one was
> accidentally missed. Please remove as redundant.
> Piotr
Hi Piotr,
Yes it was missed. I have removed it in the v8.
>=20
> >+			q_vector =3D ring->q_vector;
> >+			if (!napi_if_scheduled_mark_missed(&q_vector->napi))
> >+				eics |=3D q_vector->eims_value; /* Extend the BIT
> mask for eics */
> >
> >+			/* Now we trigger the split irqs for Rx and Tx over eics */
> >+			if (eics)
> >+				wr32(IGC_EICS, eics);
> >+
> >+			return 0;
> >+		}
> >+	} else if (flags & XDP_WAKEUP_TX) {
> >+		if (queue_id >=3D adapter->num_tx_queues)
> >+			return -EINVAL;
> >+		/* Get the ring params from Tx */
> >+		ring =3D adapter->tx_ring[queue_id];
> >+	} else if (flags & XDP_WAKEUP_RX) {
> >+		if (queue_id >=3D adapter->num_rx_queues)
> >+			return -EINVAL;
> >+		/* Get the ring params from Rx */
> >+		ring =3D adapter->rx_ring[queue_id];
> >+	} else {
> >+		/* Invalid Flags */
> >+		return -EINVAL;
> >+	}
> >+	/* Prepare to trigger single irq */
> > 	if (!ring->xsk_pool)
> > 		return -ENXIO;
> >
> >-	q_vector =3D adapter->q_vector[queue_id];
> >-	if (!napi_if_scheduled_mark_missed(&q_vector->napi))
> >-		igc_trigger_rxtxq_interrupt(adapter, q_vector);
> >-
> >+	q_vector =3D ring->q_vector;
> >+	if (!napi_if_scheduled_mark_missed(&q_vector->napi)) {
> >+		eics |=3D q_vector->eims_value;
> >+		wr32(IGC_EICS, eics);
> >+	}
> > 	return 0;
> > }
> >
> >diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c
> >b/drivers/net/ethernet/intel/igc/igc_ptp.c
> >index b7b46d863bee..6d8c2d639cd7 100644
> >--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
> >+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
> >@@ -550,7 +550,7 @@ static void igc_ptp_free_tx_buffer(struct igc_adapte=
r
> *adapter,
> > 		tstamp->buffer_type =3D 0;
> >
> > 		/* Trigger txrx interrupt for transmit completion */
> >-		igc_xsk_wakeup(adapter->netdev, tstamp->xsk_queue_index, 0);
> >+		igc_xsk_wakeup(adapter->netdev, tstamp->xsk_queue_index,
> >+XDP_WAKEUP_TX);
> >
> > 		return;
> > 	}
> >--
> >2.34.1
