Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 40F6ACCA9EE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Dec 2025 08:22:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 97DDB606FD;
	Thu, 18 Dec 2025 07:22:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Of2yfwt5KFE5; Thu, 18 Dec 2025 07:22:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6EB8F60BCE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766042524;
	bh=rLorqinYuJi5tGWmSWK0/QLZwGmQphpHdP2QXAniiKA=;
	h=To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=HTXPzNp3UU3DwUSF5Th5LbbFaX6U5ET0/2Y3nppSpKQCgHH4901K4BnTYDqnT5hrl
	 UZUFz02WXyZ1Vk2L7uNfB2NFPXZgKPo1QJ48chk6v685PnoMSIk3fEKNmfGhg928nv
	 OfWuRbRiD69G1N0A7b8hcQGZ/3sWo6jGRJEhNtBXHTeZZAhMt9WITCcgCOnTK5wkeF
	 NQf4P4jeg8FVqeswrtjnvnHbBrLuO60nSlTTKuJ8ilJgHEVK2GAunPhGDl5vMnVzO9
	 tk8DqOQtR0FiN+dRLxCUpUMG5PSXxJ9mbLPKC0d+iuP6J0mAB87n9OASLIhm3cQcwm
	 b1/wTIDjrRI5g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6EB8F60BCE;
	Thu, 18 Dec 2025 07:22:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6A5A32A2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 07:22:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4E18940896
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 07:22:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QvojarT1nIWq for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Dec 2025 07:22:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.70.29;
 helo=as8pr04cu009.outbound.protection.outlook.com;
 envelope-from=vivek.behera@siemens.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 772AB40846
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 772AB40846
Received: from AS8PR04CU009.outbound.protection.outlook.com
 (mail-westeuropeazon11011029.outbound.protection.outlook.com [52.101.70.29])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 772AB40846
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 07:21:59 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SRmfPoKrPDYatMwS+s1LlSVSZr9waBybyIOt6qF/AsiCPXHyTeuKR07rjXyJCYtx77tJWcxU2nbO+YQQFMz7+L59IHhv2Lo/BCeF5wZw9OVz+96CcLx4AXmQKLqlrLz399EC+YovLQp06KPvPGjHiRx04d50UJQgjxsQwv5e7/t9pbpWyKAFyyUQj2O0xIuVZpc3EZYbJUeOYRe/rcpu+K9x4CCGUrD4VbIZteVpa+NDYrxCAHx3xaexzRxClmxuvT4HZZN29BMW4gwHSJ/Wmde+dvIe/mtaJep9b9s/dH7u5ekCIjCxkC7jyHdu0AoK5s2Zk4z2uhqpHbB/UwmJag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rLorqinYuJi5tGWmSWK0/QLZwGmQphpHdP2QXAniiKA=;
 b=MGZyPnDxyo0Elyh7jsoV1gO49rWnsohwp83ueg4lNJyP+ABsk8RyuI3k4oCS677psiP0YaialOpOqjIEEkY/OaE/865hPWPUHoEO7YgDp3wbjwuwavUPurN0OKy7Qt/WvkwvaxEfSbSSh1qnsXag7767bO3WahtXjUiv1fXhUdMjFRg2vcr7tjQHJBS5YasYsJE/kpBTso4cEcOPIURuBcKSg7c32VbB0CUo3tDn0rzP8UxDTKkgYNHHodDxfdbfDv7jx1iJ6RZLNz0swmZfUM5ejuAIDWHDABfxgxfEgeZB/53tWOhnrRvNrHctV/I0fepP7st4cFcR70986oY4Tw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
Received: from AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:48d::20)
 by AS1PR10MB5414.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:48f::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.6; Thu, 18 Dec
 2025 07:21:55 +0000
Received: from AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::456e:d0d0:15:f4e]) by AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::456e:d0d0:15:f4e%6]) with mapi id 15.20.9434.001; Thu, 18 Dec 2025
 07:21:55 +0000
To: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "horms@kernel.org" <horms@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v8] igc: Fix trigger of
 incorrect irq in igc_xsk_wakeup function
Thread-Index: AQHcbb1WTTQGJ5yOPU2EevfUlIQYdrUkjtMAgAJx4wA=
Date: Thu, 18 Dec 2025 07:21:55 +0000
Message-ID: <AS1PR10MB53924EF63D14B5B1D735F3928FA8A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
References: <20251215122052.412327-1-vivek.behera@siemens.com>
 <PH7PR11MB5983787A7ACBB87D70DD6327F3AAA@PH7PR11MB5983.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB5983787A7ACBB87D70DD6327F3AAA@PH7PR11MB5983.namprd11.prod.outlook.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=3b274f7b-3946-4fd0-9390-2f62f5de48e9;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2025-12-18T07:15:32Z;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10, 3, 0, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS1PR10MB5392:EE_|AS1PR10MB5414:EE_
x-ms-office365-filtering-correlation-id: a096d76f-500d-4186-b2ed-08de3e061f87
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|921020; 
x-microsoft-antispam-message-info: =?us-ascii?Q?6va+pxbsa0Unac5Y4fz7h2h8Gg1+DydxZhAcZwqIz2WNfLEm4c3qn7hlikap?=
 =?us-ascii?Q?ojIzrGV6AX8iZ6nbkPH1oHcD1vhssQDTjJWxZmoi7zCBsRVlAQYFMk+P9GSc?=
 =?us-ascii?Q?n3TfxYv2gGXHeiiWTlBzAFI97Exf12PZlnWmTEywDTqlA+kIeQ5iRHZz5D9h?=
 =?us-ascii?Q?nl7xCFYdttN+UVfmvFJQ73c9xPjVp9RNDU5RsVrAdnrlWURNU/HtWPdA0fFE?=
 =?us-ascii?Q?ySRQNAuBAYlhEjfFo3FgnB9VDyUi/LYrhc61u/6QaKir13yUVOtma7MNdzu5?=
 =?us-ascii?Q?QjtBfZVcZr1t+eQClqWBEl0jrvQLDXwnDSuY4/ilUcn1ddgNMeGJIprNeNNd?=
 =?us-ascii?Q?kuMCO7MPf5EVst5BkIGRtIutRyUs3nc2dqckezrCjQPHrOAvQiIKjAPU5sAB?=
 =?us-ascii?Q?ybC/N8PMt9B/IQzPrRnEdKWHp+QfnUYQxPYG5Oyhd/lOE1IfIQKbCdu6KSxY?=
 =?us-ascii?Q?RDV1lRvwrqmysrotgRj1mJP9zdTwUgLRK9UmYgXBDH8QDsUguNGSxnhUegyf?=
 =?us-ascii?Q?ey8wBE9ZZU4t9t+k/V+gFoZRxbI8GYXUBlC68Pg2sDDXFoATW/+aeJpRWjew?=
 =?us-ascii?Q?dxUEtgddW+LhOTa841zHLSHI1NYYI4iUc86wH8A+zsSRdb5UnL/tuN+OQNRe?=
 =?us-ascii?Q?plNXw2NWwPgL45DJk2c8ba46HwkP6gaPakG+KVavmAIC9IJMmyDPWzVgiAok?=
 =?us-ascii?Q?+AH/nUrXyzxaz15m2FH9sAuN+8aLIq5LltbY9wQJoSUmEkfABzr5RRb5aFYf?=
 =?us-ascii?Q?ugRbBktpoUa28YusbA9QZsezyU74lxB0TWXDqRZLLJ98OtAutplKUVGNF4kx?=
 =?us-ascii?Q?JaaZ5yT2AAZ9h95J1HAr7n/8iPEdn6k6bMfu31QOK4HnxXCEECBOJ8Mf3wYp?=
 =?us-ascii?Q?dFxfNdmxUQP/TUF9SjmOWw0WhT/6iu+Cynt/Zk5smPS73aM+YQja8WcNDqfZ?=
 =?us-ascii?Q?5kzjJtT+UHUv3kqu4vyEIPTpJdjbQeVLIQjafOM88Gd8sGG5tozIHLfxSY6L?=
 =?us-ascii?Q?OqlyS1Kvn5+vNR7u1iKb8TE9wXEmOf1EcBtAmKsdo5x/0wQR/oJ5WbUq36tg?=
 =?us-ascii?Q?x5qwVwmqbQU7KvnUuwiPyH79NeKSg4Gdr8PK9O5QJgI0Y0At8VFPnNngxR/2?=
 =?us-ascii?Q?udoOFMAe0oGL55UrPBRPR3T+MerrnntG6DdRNBHargxzN2L913zmoDM/s6bu?=
 =?us-ascii?Q?59zmtcJQvDUTqeFgz5RQL0SHVG+8DgKk/flUuXyOlr8LpuF61IVPWcAq2VHW?=
 =?us-ascii?Q?r0fYGWK791Ae2oxSOQA6UsLQlGdVh8/7uaGarOZPWHAiXwXbWYR6DdxzBq5s?=
 =?us-ascii?Q?E+edOie8xLIGviPdXQJH9Ya9zZd2bs5NXTBL6MbU3yev7B1c7oJ/ELezLm+P?=
 =?us-ascii?Q?uK3S1abJrazVjZTv/yn+wWJ0XWEskmKEa1cHBCPYSGKmM703Tb4MfThgqG+A?=
 =?us-ascii?Q?tZdJ4DS/+/df70J6Eae56U3zlZZQILcEZ0vkFN8FG5P3PrrLx9AjiPqXTzy9?=
 =?us-ascii?Q?ACJrrGdQov/z/E/nbkwC7wQxPty+ELs3lXNOG880M/gZw4jh6mQrOeKE9A?=
 =?us-ascii?Q?=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(921020); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?a2yxcW0a4y1T/uKwPed3cyCngCV+ne4ZBWp469O1TznWtpjDqT63cl4jaAlc?=
 =?us-ascii?Q?EYVjD5NntxYFhRz3Z1A1Jx9akEov2I67/WEXyYpkTC55cbE1ecB5zSMdIZJP?=
 =?us-ascii?Q?vly6W67U1OwvoDHSmQMioElR7PUqFYki72OXU4vMtrAIiElJbPHZ0jDx9z2h?=
 =?us-ascii?Q?ZCc9tbmyVcYtY/KHXalutj5/WbtCNdheQF6+NFFsg9gWHzn+eK6dgEW0DCsE?=
 =?us-ascii?Q?6/OpMqbaFN2paglSH4Xh8poU656tlOTdZeRnfpYcrTdi4bQ/XbKQDtaRGqGR?=
 =?us-ascii?Q?Hht8Esu/8i/7imcHLNe1waqP6qTM7XUeizEO3qpOjq2egLE5ROtJvb+AXeXb?=
 =?us-ascii?Q?86ySyQCQiO65sqHmiyFPPgeXv/MY4/qFhi9l+F2+5XJ8C+zHf/JDkWSunOMY?=
 =?us-ascii?Q?CI0bHg4V1ZrQssOwQ2SxQAOzW+NGrm4o1zRRz1DD41WfIawfkYcaMiZu4PEl?=
 =?us-ascii?Q?qXJs+75jGvelbYYQvS5BRTJ6m9p5M8v3Vou8YnPMc5vwtXM8JyroT3ivH5Bw?=
 =?us-ascii?Q?2Oty9t97yYhveMGso2t7JQ9Rz8oysSz1wWd8MtS/001U54GQ5Kx4KJS+c2qy?=
 =?us-ascii?Q?q/9pSt3ec5KpKrfStLD+mpEGJEdYK7B81kZHfuOaygYjcsApuHjuJqdLn+Ym?=
 =?us-ascii?Q?VRNQvlmH8/KXjSm/LCB1AMKdUWz5cz1p9Y0Wnt+fTw6PkPSasZetc8X2iDrJ?=
 =?us-ascii?Q?vg0hCMEg6NLjo7lRn35M1sRZPMpcFOl2Q1dZQL2iodGtXa83DN3hPBbfm1z+?=
 =?us-ascii?Q?ruCmOs5tdmzfusCYNj12+n9L7VN7N0cETtVwvoOK5Ph78Y7XcV4XMvx+Dqy6?=
 =?us-ascii?Q?tOxPcUELRZjp8BgFIRtIbuSs1A1j4MRQd+GyJhjq3o9ponQciK2KesZqUyYR?=
 =?us-ascii?Q?qzrhQDrSNDadyF9RrjMuBK3B/ylq399NZMLbAjKDiJij7pyV/d9hlJsLLEMM?=
 =?us-ascii?Q?8Z5RxJlsxLxKr45GyYHR40SIxi/6sXk8k3RKgnsut38xfFRV3/6XGBjiSkHy?=
 =?us-ascii?Q?S9rcZSt4EgKFNQDQQYUPqLTweAUZ6al9plsApk/bhbnZ2MA+Oo3TaH0TMuZa?=
 =?us-ascii?Q?9hq0hqhpvriOQLNpAgFuQgFEUblJTTh0CZBisDnoMGRsRt5u/i1hCbeuVsle?=
 =?us-ascii?Q?mXP/VCFY4ED3H8fqQp6egn8DgOb4QpW7kfXMm7TPDsSqOWKTo4hyEaTWS/nJ?=
 =?us-ascii?Q?6KFnHJ9P6422idValTngA2CoVfE9Ge7oJsdpg5S+BaUy2B/7BEYutc2hpOv7?=
 =?us-ascii?Q?3topCqsNh6arHBVakG2TKkhWqP2UWEf6rlt00kJMXRNFl9laT5z0qiWkunC+?=
 =?us-ascii?Q?REc665aFJkah6W/RmbnhgtFNVAAj2E59KQS4i9NC8cAgTiWQVQ2TluxD8b47?=
 =?us-ascii?Q?noqf8o3vMetk1alBmNKIEqsGvdIxzCi6DDcm4RfLru0JGjZMqs6lSqMUkFgt?=
 =?us-ascii?Q?b3m6GaAIvj6hwx/iJtX8TMUeTqgHYXf7nol3VTZVg7Uz6AjHxJBNO+KeHTE2?=
 =?us-ascii?Q?A0VrBY/sUnQXhTwoSPHbILAcSCg3IdGOuTG+jO2CFlksN8vbegQ1HozJDxGc?=
 =?us-ascii?Q?5wl3Q+E7GFaMEl9026swlFYznlzwSmGIeTgCpPFT?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: a096d76f-500d-4186-b2ed-08de3e061f87
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2025 07:21:55.2524 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +pFNXmvgRbgGIqaUtPcJlPbipFrEbFVnnJuZIFySp4WKGIVhqn1hc9MTTW2PG3gHT+dcWPGA6UAUMUa1FaFhYfG4e/XO/30LKj2fX2x3ezw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1PR10MB5414
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=siemens.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rLorqinYuJi5tGWmSWK0/QLZwGmQphpHdP2QXAniiKA=;
 b=pjRQwGudhHHXj3uBXW9nekF32VVB74/l2YrioftCTOWNdFOgaoKiH4NX+QhmjEC/E2UaZpisrl6ZuDf5XWfY1tyxuwy1xRcSz3PXyToxe19pCq1z6QEf5wdL+rZJbaZmIwlCCI/mxO/kWvAzK9kiB0EGBlTERtlxS+Q7DQNDBS+jEbAhiUe1PK3SLOJAkNlGLn5ryOCOFvHCFHktLE3giA9pesJ0CKJSLO7tHppS6sRq6weOoCJOD9WdlV1L7C4LD7QUTFx/e1706xfKI/avQuqdf5ykqveuov0vVebLZTDbXbU/K84BqbCILqkTilGrQLl4KDSjgvDvL14vhmybRw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=@siemens.com header.a=rsa-sha256
 header.s=selector2 header.b=pjRQwGud
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v8] igc: Fix trigger of
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
From: "Behera, VIVEK via Intel-wired-lan" <intel-wired-lan@osuosl.org>
Reply-To: "Behera, VIVEK" <vivek.behera@siemens.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello colleagues,


> -----Original Message-----
> From: Kwapulinski, Piotr <piotr.kwapulinski@intel.com>
> Sent: Tuesday, December 16, 2025 6:55 PM
> To: Behera, Vivek (DI FA DSP ICC PRC1) <vivek.behera@siemens.com>;
> Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com=
>;
> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; horms@kernel.org; Behera, Vivek (DI=
 FA
> DSP ICC PRC1) <vivek.behera@siemens.com>
> Subject: RE: [Intel-wired-lan] [PATCH iwl-net v8] igc: Fix trigger of inc=
orrect irq in
> igc_xsk_wakeup function
>=20
> >-----Original Message-----
> >From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> >Vivek Behera
> >Sent: Monday, December 15, 2025 1:21 PM
> >To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Keller, Jacob
> >E <jacob.e.keller@intel.com>; Nguyen, Anthony L
> ><anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> ><przemyslaw.kitszel@intel.com>
> >Cc: intel-wired-lan@lists.osuosl.org; horms@kernel.org; Behera, Vivek
> ><vivek.behera@siemens.com>
> >Subject: [Intel-wired-lan] [PATCH iwl-net v8] igc: Fix trigger of
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
> >%40siemens.com%7C8a63023eb06047539d5c08de3ccc4d88%7C38ae3bcd9579
> 4fd4add
> >ab42e1495d55a%7C1%7C0%7C639015045337851822%7CUnknown%7CTWFpb
> GZsb3d8eyJF
> >bXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTW
> FpbCI
> >sIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DrFeGiAGZ%2B04ujqFtkeYgGb
> o%2FrDIOds
> >qC9W2Ns0zfXmg%3D&reserved=3D0
> >v2:
> >https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flore=
.
> >kernel.org%2Fintel-wired-
> lan%2FAS1PR10MB539280B1427DA0ABE9D65E628FA5A%4
> >0AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM%2F&data=3D05%7C02%7
> Cvivek.behera
> >%40siemens.com%7C8a63023eb06047539d5c08de3ccc4d88%7C38ae3bcd9579
> 4fd4add
> >ab42e1495d55a%7C1%7C0%7C639015045337901136%7CUnknown%7CTWFpb
> GZsb3d8eyJF
> >bXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTW
> FpbCI
> >sIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DVB1%2FADgBeiczrNyjCi4EUT
> wpEPJNCEY5
> >NR2kpIHjp3s%3D&reserved=3D0
> >v3:
> >https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flore=
.
> >kernel.org%2Fintel-wired-
> lan%2FIA3PR11MB8986E4ACB7F264CF2DD1D750E5A0A%4
> >0IA3PR11MB8986.namprd11.prod.outlook.com%2F&data=3D05%7C02%7Cvivek.be
> hera
> >%40siemens.com%7C8a63023eb06047539d5c08de3ccc4d88%7C38ae3bcd9579
> 4fd4add
> >ab42e1495d55a%7C1%7C0%7C639015045337945302%7CUnknown%7CTWFpb
> GZsb3d8eyJF
> >bXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTW
> FpbCI
> >sIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DHNXDOBjXNji%2FI2Pk2mV%2
> B1XLvpZQt7K
> >4dxnQ7DZnGmmk%3D&reserved=3D0
> >v4:
> >https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flore=
.
> >kernel.org%2Fintel-wired-
> lan%2FAS1PR10MB53926CB955FBD4F9F4A018818FA0A%4
> >0AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM%2F&data=3D05%7C02%7
> Cvivek.behera
> >%40siemens.com%7C8a63023eb06047539d5c08de3ccc4d88%7C38ae3bcd9579
> 4fd4add
> >ab42e1495d55a%7C1%7C0%7C639015045337988842%7CUnknown%7CTWFpb
> GZsb3d8eyJF
> >bXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTW
> FpbCI
> >sIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DHrTbjiGaps3kGt4Qo9aJhfRoP
> OGjcY4JnI
> >njRisiYns%3D&reserved=3D0
> >v5:
> >https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flore=
.
> >kernel.org%2Fintel-wired-
> lan%2FAS1PR10MB5392FCA415A38B9DD7BB5F218FA0A%4
> >0AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM%2F&data=3D05%7C02%7
> Cvivek.behera
> >%40siemens.com%7C8a63023eb06047539d5c08de3ccc4d88%7C38ae3bcd9579
> 4fd4add
> >ab42e1495d55a%7C1%7C0%7C639015045338031278%7CUnknown%7CTWFpb
> GZsb3d8eyJF
> >bXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTW
> FpbCI
> >sIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DCJYmzQmJAwhK4pMwNg5B4
> vnP8v7Pu%2BZy
> >KqWq1RJkXZk%3D&reserved=3D0
> >v6:
> >https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flore=
.
> >kernel.org%2Fintel-wired-lan%2F20251211173916.23951-1-vivek.behera%40si
> >emens.com%2F&data=3D05%7C02%7Cvivek.behera%40siemens.com%7C8a6302
> 3eb06047
> >539d5c08de3ccc4d88%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7
> C6390150
> >45338064045%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUs
> IlYiOiIwLjA
> >uMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C
> %7C%7C&
> >sdata=3D4fhP5XhkJq8qjEqVitlGrfu3FQskjaTgWbPWFYyXGvI%3D&reserved=3D0
> >v7:
> >https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flore=
.
> >kernel.org%2Fintel-wired-lan%2F20251212163208.137164-1-vivek.behera%40s
> >iemens.com%2F&data=3D05%7C02%7Cvivek.behera%40siemens.com%7C8a6302
> 3eb0604
> >7539d5c08de3ccc4d88%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7
> C639015
> >045338092038%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWU
> sIlYiOiIwLj
> >AuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7
> C%7C%7C
> >&sdata=3DY1%2BDpVeRVIChENPfIwtLjWPsyBgnGU%2FPm47Xe%2FqHiUo%3D&
> reserved=3D0
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
> >v7 -> v8
> >- Modified sequence to complete all error checks for rx and tx
> >  before updating napi states and triggering irq
> >---
> > drivers/net/ethernet/intel/igc/igc_main.c | 90 ++++++++++++++++++-----
> >drivers/net/ethernet/intel/igc/igc_ptp.c  |  2 +-
> > 2 files changed, 73 insertions(+), 19 deletions(-)
> >
> >diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
> >b/drivers/net/ethernet/intel/igc/igc_main.c
> >index 7aafa60ba0c8..76e4790bd3c0 100644
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
> >@@ -6930,18 +6922,80 @@ int igc_xsk_wakeup(struct net_device *dev, u32
> queue_id, u32 flags)
> > 	if (!igc_xdp_is_enabled(adapter))
> > 		return -ENXIO;
> >
> >-	if (queue_id >=3D adapter->num_rx_queues)
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
> >+			u32 eics_tx =3D 0;
> >+			u32 eics_rx =3D 0;
> >+			struct napi_struct *rx_napi;
> >+			struct napi_struct *tx_napi;
> >+
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
> >+			q_vector =3D ring->q_vector;
> >+			rx_napi =3D &q_vector->napi;
> >+			/* Extend the BIT mask for eics */
> >+			eics_rx |=3D ring->q_vector->eims_value;
> >+
> >+			/* IRQ trigger preparation for Tx */
> >+			ring =3D adapter->tx_ring[queue_id];
> >+			if (!ring->xsk_pool)
> >+				return -ENXIO;
> >+			q_vector =3D ring->q_vector;
> >+			tx_napi =3D &q_vector->napi;
> >+			/* Extend the BIT mask for eics */
> >+			eics_tx |=3D ring->q_vector->eims_value;
> >+
> >+			/* Check and update napi states for rx and tx */
> >+			if (!napi_if_scheduled_mark_missed(rx_napi))
> >+				eics |=3D eics_rx;
> >+			if (!napi_if_scheduled_mark_missed(tx_napi))
> >+				eics |=3D eics_tx;
> >+
> >+			/* Now we trigger the required irqs for Rx and Tx */
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
> > 		return -EINVAL;
> >-
> >-	ring =3D adapter->rx_ring[queue_id];
> >-
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
>=20
> Reviewed-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>

Thanks for all the reviews. Are there any suggestions before I add netdev@ =
and linux-kernel@ to the list for further review

Regards

Vivek
