Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 67B54CD40D1
	for <lists+intel-wired-lan@lfdr.de>; Sun, 21 Dec 2025 14:50:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 08F0E4024D;
	Sun, 21 Dec 2025 13:50:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nrWVhZQppqym; Sun, 21 Dec 2025 13:50:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C86F640266
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766325042;
	bh=QMQmi7pxy7rM+BzM36MNisb69wAsiDMeofkr15sIDW8=;
	h=To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=x5t3W57VwqHlwJOzLYfwCx+N/tgVg8viXFuxcLg3HQfMCQay5Ttnm7Fuzjp9/ZaGQ
	 L5H+abi2vwzyydvE69pIG39i8XGKbd1jRGMHvVDutcBJKoVhJRfxVDq6UWNh1qL3Wb
	 kEqbUT7OCn8w1A8mzafa0doCpcJVVXHpYcp9Uscdt4sIp08pS9QP10AQ9wfHAE0mhn
	 zxXXlDAlqkblMUCgISV8+d5UwdUYG0anP9XxAj64aO2kByxYXCSXRVgDz3LdnQsGzo
	 aAfOnrydGym59crW3qe2wjDeJJCrZJcX8lhQ5yY8CZMpcBuUwsRB+ARNHoBjO6GAQ/
	 5gET1eACLAgEQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C86F640266;
	Sun, 21 Dec 2025 13:50:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id B3C1E1A6
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Dec 2025 13:50:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 40C3C404E2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Dec 2025 13:50:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O0llL5MOS-eT for <intel-wired-lan@lists.osuosl.org>;
 Sun, 21 Dec 2025 13:50:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.84.57;
 helo=db3pr0202cu003.outbound.protection.outlook.com;
 envelope-from=vivek.behera@siemens.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5181F4039D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5181F4039D
Received: from DB3PR0202CU003.outbound.protection.outlook.com
 (mail-northeuropeazon11010057.outbound.protection.outlook.com [52.101.84.57])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5181F4039D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Dec 2025 13:50:38 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lTbsnCVvdtMlMZQULx9HAKOFTKhvR98PjP5DnXQP6/tiGelgim+BJIZt92lsQ/OZzrVb8SMwSguUjp2ez4z7cYevJcQfMvL7A0HLp/qktpHlD64VkY5WIHhlHnZIjt4IGWzXnRQ1phGw9XTmEtwPwMV1PAjo8E8d9BpCBqWMqyjgHQmd45Kd6Rs8wWE4m6ZszpX6xassB/HBYpRslXsZ2PRNNWLNx4lV6dbWmxvPstTzbSIJTKF8VHbi2DVM1uunXdx0DJkgrqnB4c8C5rqSUd5mzm7nnH8ztIcevWezlH6hELNhB4Nhbhl8hbCpO9lQF4/G651LRhfR2oBlcLRT+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QMQmi7pxy7rM+BzM36MNisb69wAsiDMeofkr15sIDW8=;
 b=MStmGRjjnFCftSe4J6QqVe/liWU4SbBlv4gv/O7aTmoyRUZgac98G1QrGn+MITlTUsUrSZOnrBg+gR6wGfIHo5ATi/3rFz0yPtj4zWOIfvmov47F1imtnFA9Lnr2YtZ4SGobC/gfBQPXuFc+4S0f/Q0+YkOw5WJchgteLndslAfbv4uV6RaZq7DHDhswKG0D8P9MOltNFGUSWXX3D1ryspEeJkAzWv8ZzR+bv+IzovjMBGo09xCc1kck7kHl4O+2LkZ8wh5arVFuCr+v45CfzcG2Jec9Iknf7aG7zfvM5P4Pr+y/K0KT/T5uYjIzkFf1n2ejGstdtmRVdC/9guG+3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
Received: from AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:48d::20)
 by VI0PR10MB9100.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:800:214::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.10; Sun, 21 Dec
 2025 13:50:35 +0000
Received: from AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::456e:d0d0:15:f4e]) by AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::456e:d0d0:15:f4e%6]) with mapi id 15.20.9434.009; Sun, 21 Dec 2025
 13:50:34 +0000
To: "Song, Yoong Siang" <yoong.siang.song@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "horms@kernel.org" <horms@kernel.org>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v9] igc: Fix trigger of
 incorrect irq in igc_xsk_wakeup function
Thread-Index: AQHccZ/VsQC/V5Il2UqrvtqG9k8rdLUsHNYAgAABDpA=
Date: Sun, 21 Dec 2025 13:50:34 +0000
Message-ID: <AS1PR10MB539242D1C4ED6CCA8A19BFE48FB7A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
References: <20251220110009.137245-1-vivek.behera@siemens.com>
 <IA3PR11MB925469A16F98ABDA7415BC45D8B7A@IA3PR11MB9254.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB925469A16F98ABDA7415BC45D8B7A@IA3PR11MB9254.namprd11.prod.outlook.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=c090921e-3340-4784-90a6-fd4bf2b9321b;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2025-12-21T13:49:04Z;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10, 3, 0, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS1PR10MB5392:EE_|VI0PR10MB9100:EE_
x-ms-office365-filtering-correlation-id: 4e5842be-fbb6-4344-8375-08de4097ea18
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|921020; 
x-microsoft-antispam-message-info: =?us-ascii?Q?5xMMNcsEVn1Imf0hQVzkvhXCOQkQrpqLuFsFG8UzDOA4lfleQ3BVdHgCgH4+?=
 =?us-ascii?Q?FTuCQnH21B3jsAiXWT+zvxUOHZTxmoqBe1vxxbExWDDC2tAHLyqwOVghD3yr?=
 =?us-ascii?Q?rRaUFiQ0anbENqfGhP0M8aZam3Y5kUfBAxJl+Qdvm8WK3vNMXGEK9H5c0pxL?=
 =?us-ascii?Q?Byvfi4dEscxCd2QLYfVGNPj6M3vyesvoRWWcL5h0tUPmUcQ5T5WXkLulNWPp?=
 =?us-ascii?Q?6SG9UXC65li6S1YSsrRkPmum8f6J0uPXWYC8KKgDguzShE9ynULNDF+gf5Tc?=
 =?us-ascii?Q?3kzpfoc4hVing4joLdi0a7Ubce/KqurgoeNAAPqN4TLy/dyFWmB75xTV/GLH?=
 =?us-ascii?Q?MG5xkttLiEAa43K0F9nft9OdAlbxE8C/ExvEj+hpks7ky2a6IZgb04rOnF55?=
 =?us-ascii?Q?jV26QvsurnyxFSag96P5t2JmVtdx+WX/NsQG+ZhkQ6OG2kIvNTQQ3wKqSJsT?=
 =?us-ascii?Q?G2BoBf0uOfYckGN4YQPXjbXNwnnJd+8VVplnzccP/WnCu4OLfH0o4NNp3oQJ?=
 =?us-ascii?Q?RgLg5wgim0j1dDlP//B2hDVylDcdWvYW6MNWm5Ae2pnIkjoqwKGMUZ5Ynb2Y?=
 =?us-ascii?Q?iUQLYh2uaEcMKyOxfHG3b9kFXkAH0QPAomqkRe/LgxiEWoYhdknH7ogdWxVz?=
 =?us-ascii?Q?yNt/H6FiYDQRwM4ZwRWDMsTXHNk3OfvoTyA7tzOEPqD+u0qxqwgNQNEEvELF?=
 =?us-ascii?Q?QmglaZSlxZAmzVC/0UPbgBl0QadeYjM/jvb2gqB/y0f20CH4jIhKx3D41YZY?=
 =?us-ascii?Q?CPRP7wjS2H8xoOclnC92PX7PuZYcmSef6l/WCxxK9fKCp78Z4zVdibyt36fg?=
 =?us-ascii?Q?6bAleQm7wwX3Q4Xa20uqCTxM/qvShpNR87a8TIBp6MbyfzZp86Mv57MnNZCo?=
 =?us-ascii?Q?NTOaTInKSbzVAJ0eu2FlLpvI1nSUTABK4RxqviQaUYvsIjgsb4G/tCdT2cPE?=
 =?us-ascii?Q?K6XKZ8902p8UE56p0HIptf+nirHvVr/HyPdn6HGXb8PwNmc6lTLyObHKmvxU?=
 =?us-ascii?Q?gipgr33AOedUGBiFc8j08vFRLhZPV3ZANWuAfqGZr9seMpx1HF7ue3gpgEuL?=
 =?us-ascii?Q?DcKud40siPAbWoNB6xf8v1tCZ4FVR6aQ/fnmBkvej0Va/JGbDOCdUoDDXjst?=
 =?us-ascii?Q?us/yaVpHYGKhOt7GyEc3pT7y0AOzAxuwIL9lHDR41HKBTcFdi+S9znNpHxwZ?=
 =?us-ascii?Q?dZhMMdqS2837L24UZIginHO8/dplar9GWyjhmA1k13n7f53VDgnSJub5fhFt?=
 =?us-ascii?Q?l632KkTxn/4SPUt25RIKihK7hRgWKTlaR+lUNex7/Epgexpnx0GoaLN4fG9J?=
 =?us-ascii?Q?0iv2up4pegxmGBBi0bsl+oyTSxgUbNZL5y7hMdvY2HywxvVaBczBGHy7+//w?=
 =?us-ascii?Q?xOBagW8GP5z8EKs7GqYkOGqSyxlc4iq3bCcj+8B2QDEj1ZWMXPKrCS0spXJG?=
 =?us-ascii?Q?JsR73h78A+tURe3lNDR9WkFe1KRNGXB/NraTJqstRW9y308IyBHINKx1WRTQ?=
 =?us-ascii?Q?YRvsX8tBh6O1jVZ2AwUnphFsIlaemstAywEptRALt1C9+sJeccO/IgG1zA?=
 =?us-ascii?Q?=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(921020); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?txZmX3mtgKE8P8Qq1d7uwyC/VYEklI0wIcrHOCFfAbiDRA3z3D/Q0bsC7jot?=
 =?us-ascii?Q?ho6xTDTOBP3GuEYpLJodeiVN6JyhyrtvZAsPiVn6I1QVgOxyEC2Y0iA3goef?=
 =?us-ascii?Q?fbDo5Vr6/QmuWv3O0lNM2EJqif+KDlO0GGSiVcwqVhONUZpRWHtPqN9gW6aN?=
 =?us-ascii?Q?01LIXUi2Vm6C4MfJ12zw7uysYSP0a+F9JIX99Q0aIOnNtsh5nYuELmmE8Ix6?=
 =?us-ascii?Q?fpKx/7I+GtN1YwmP5EOUXgaK2pmKxm4ce5eW9H4nBZfoVRZlbf8EDYsTKPV2?=
 =?us-ascii?Q?9z7+Rg27OGWuk6ZlXnMaFRoRKHVFAdbK0kmQSQBQWJJtYXH5Clk8gaKdzKFB?=
 =?us-ascii?Q?fOLU7x+erdsxW7kIPi39qPJPQEuHuJ5l1VZtAYL4zWWJL0d/HKojLj3JliLu?=
 =?us-ascii?Q?Olmu6sBcUzJiq69nVcex7VGzx5e5XG7FoItLdsa1atv0R2d8AKk64Fz3kxDx?=
 =?us-ascii?Q?YQJbiIDcvgkXXyMPUiIK3O4zn5uf5QlInumEs3igcYspj0iH/UxqCart8aq/?=
 =?us-ascii?Q?VMentQLDNKv81B5SsCA7RhSPLKxv5ivscuS4juLvsdBMbZO+IFDtWCiRaoLf?=
 =?us-ascii?Q?v3a52xFhMaTVDNtq4OclT+9AkikZbpZuYZcIlicFO5qVzGtiJz4idCQc/wQh?=
 =?us-ascii?Q?dDxQ+gd2ErLmW/+p5d+GLCLzvob70u7EeIMdCrPmlmTh6pVfdYhtGMmh8lpk?=
 =?us-ascii?Q?EdweG3WrweWb3IIpeIdHC++VeI6I4HGCDyYsmO8W0Jmr7ychb8SlvyD0NHTd?=
 =?us-ascii?Q?TVWoxnh+j6xpMDAjdX1gZBJ9fz6+NEPSY8sGL3Ry2RDEtxIYk3RY0w8e5QQB?=
 =?us-ascii?Q?ktILuR8nvxxi1r2hw+ebNA0skj+1CBQe7FuO5WAr5tlApp4Ez7YiVY62yfLs?=
 =?us-ascii?Q?F9mghBzglUjQaHbTYGKHixpj4x1Y8GzYBkACbx3IfF79uqZjJIK6wpl0S99+?=
 =?us-ascii?Q?HY+wLjFROwEY7bOV7tH0SzIXxIofPdgO639h1s2AcpUptsgOby066uNkyD99?=
 =?us-ascii?Q?PNQvxEYmSHd4tTcdb6ff4eWe7gIxaMCzbNKIY5P5xGuj5qaPKhXHqyuEE+Oi?=
 =?us-ascii?Q?TTgpazJfgcHzb94JGPFeD6v0zLtpLlYctp3BtcKiONOrc2iQeZa7SDpuuZR9?=
 =?us-ascii?Q?oe5PQ26V4TBOmVPYCtlAjNGE2OC6fsG4pfJuiEYGLstUqSLrDKfDw1fK1Khg?=
 =?us-ascii?Q?WniK14vN4jJo+SHZlrsxUL7W6WbZQVDPuTxwGP7napvGTad0KA+j8gxbyTSF?=
 =?us-ascii?Q?AkQL+SvgpYaiPM2guf36tAS1XIjmehL0nQ3GhAqZZX95v9hEFZBf4dS/zR7t?=
 =?us-ascii?Q?B/ejcmuETQ26cMuA4ZZl0HepZO2HSk8v2W6Kel503MyuNN4SAM2GIBx87Pen?=
 =?us-ascii?Q?iCZB8wssgzHeC4nxxj+uh1MnmID2+u8URkZ+HcZ39d18WD6GYH6xXC2FkB9/?=
 =?us-ascii?Q?f94zoNHTEs0PIwin7hVQCVrgMdaKDfPKQ5Q4XM6oa1489xTQdNmJJxK6xFcO?=
 =?us-ascii?Q?+99yVPlWiYPKJD+Tg/yfaz4I3FxKkcteNAHSt5G1vXnDxjIijKub9E2Rm/ni?=
 =?us-ascii?Q?h+LqLVK1Xu6Av/QTQ5eKM/aOagBJ7dQK+lBEBiFwVXKeSfmbyYYam2WVM7ag?=
 =?us-ascii?Q?hkWCtS793Hi6h9nVRYOroldgZtWE6ud6tI4By2rNE18IpyrM6BLMadGIrkyK?=
 =?us-ascii?Q?+V4bp0lUyMg+8lvDYjNvRMd9hj/t6MgzEj3Quw5YrbW07CSuTO2qscHsPKmU?=
 =?us-ascii?Q?we7oQ/Hk0w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e5842be-fbb6-4344-8375-08de4097ea18
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Dec 2025 13:50:34.4435 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +1tA0L+V2bppvhMvaNUoRXADGlv4ShaMLq1IzsnnwXxDi4vDlBpS9HkDgplK70TTeeI5OvJ5Dyq3xWzHHlS0vyk1QYcoLHM8pnSO7qlMAAU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR10MB9100
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=siemens.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QMQmi7pxy7rM+BzM36MNisb69wAsiDMeofkr15sIDW8=;
 b=SOBdiQkdu6LH5hh+t1+Uco5pOhLiSJivvChwUCo4p3HbiAOBMXgzbQOzp8iLbxa6p7922QqlZgQeEg5oEUjhtYBdMhE8eGKPx5l6J9kIT7vX7bfrxeH/ksbCGNWRnwEng4Gp/asN25sdLDuQ/KR3JhGv7WqtHlCGc2K/zxNCJcjuUcU5DXtGSDr1tf/cuRoTDHl4iP7MSobszVjol5ZM0bk6RF/19EfXGSDwv+y/AhUev23W2xq5A2ntagt6WwodDtvYFuV8HijDipoYUQ9qt34iajVZowY8ufgyfz9DEnSUbeOB6rqqUkRyr4gREY/YU2LYWZNTDXPEz52CRzZNKA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=@siemens.com header.a=rsa-sha256
 header.s=selector2 header.b=SOBdiQkd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v9] igc: Fix trigger of
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



> -----Original Message-----
> From: Song, Yoong Siang <yoong.siang.song@intel.com>
> Sent: Sunday, December 21, 2025 2:45 PM
> To: Behera, Vivek (DI FA DSP ICC PRC1) <vivek.behera@siemens.com>;
> Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com=
>;
> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; horms@kernel.org; Kwapulinski, Piot=
r
> <piotr.kwapulinski@intel.com>
> Subject: RE: [Intel-wired-lan] [PATCH iwl-net v9] igc: Fix trigger of inc=
orrect irq in
> igc_xsk_wakeup function
>=20
> On Saturday, December 20, 2025 7:00 PM, Vivek Behera wrote:
> >This patch addresses the issue where the igc_xsk_wakeup function was
> >triggering an incorrect IRQ for tx-0 when the i226 is configured with
> >only 2 combined queues or in an environment with 2 active CPU cores.
> >This prevented XDP Zero-copy send functionality in such split IRQ
> >configurations.
> >
> >The fix implements the correct logic for extracting q_vectors saved
> >during rx and tx ring allocation and utilizes flags provided by the
> >ndo_xsk_wakeup API to trigger the appropriate IRQ.
> >
> >Fixes: fc9df2a0b520 ("igc: Enable RX via AF_XDP zero-copy")
> >Fixes: 15fd021bc427 ("igc: Add Tx hardware timestamp request for AF_XDP
> >zero- copy packet")
> >Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
> >Reviewed-by: Jacob Keller <jacob.keller@intel.com>
> >Reviewed-by: Aleksandr loktinov <aleksandr.loktionov@intel.com>
> >Reviewed-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
>=20
> Reviewed-by: Song Yoong Siang <yoong.siang.song@intel.com>
>=20
> Thanks for the rework.
> Note: You do not need to submit a new version just to add a reviewed-by t=
ag,
> unless you have another changes to make.
Okay. Noted
Thanks
>=20
> >---
> >v1:
> >https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flore=
.
> >kernel.or%2F&data=3D05%7C02%7Cvivek.behera%40siemens.com%7C8f085189a
> 7e343
> >f68c8108de40973109%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7C
> 6390192
> >15266515921%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUs
> IlYiOiIwLjA
> >uMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C
> %7C%7C&
> >sdata=3D3qER7%2Fow65KtbQNhJwvqOMC425glTXilBXxaSsBlyCY%3D&reserved
> =3D0
> >g%2Fintel-wired-
> >lan%2FAS1PR10MB5392B7268416DB8A1624FDB88FA7A%40AS1PR10MB5392.
> EUR
> >PRD10.PROD.OUTLOOK.COM%2F&data=3D05%7C02%7Cvivek.behera%40sieme
> ns.co
> >m%7Cb609a859d19b47e8f47808de38d77627%7C38ae3bcd95794fd4addab42e14
> 9
> >5d55a%7C1%7C0%7C639010695226787962%7CUnknown%7CTWFpbGZsb3d8e
> yJF
> >bXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTW
> FpbCI
> >sIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DS1060xzCOGrJo0cO2enNhDm
> CIJUcC
> >LZd%2F%2BmKLByazm8%3D&reserved=3D0
> >v2:
> >https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flore=
.
> >kernel.or%2F&data=3D05%7C02%7Cvivek.behera%40siemens.com%7C8f085189a
> 7e343
> >f68c8108de40973109%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7C
> 6390192
> >15266542329%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUs
> IlYiOiIwLjA
> >uMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C
> %7C%7C&
> >sdata=3DkfJ%2FkMsoZde2CGW%2BpaLYUQ6yaRfyhV3A2d%2Bz4GwBq08%3D&r
> eserved=3D0
> >g%2Fintel-wired-
> >lan%2FAS1PR10MB539280B1427DA0ABE9D65E628FA5A%40AS1PR10MB5392
> .EUR
> >PRD10.PROD.OUTLOOK.COM%2F&data=3D05%7C02%7Cvivek.behera%40sieme
> ns.co
> >m%7Cb609a859d19b47e8f47808de38d77627%7C38ae3bcd95794fd4addab42e14
> 9
> >5d55a%7C1%7C0%7C639010695226846016%7CUnknown%7CTWFpbGZsb3d8e
> yJF
> >bXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTW
> FpbCI
> >sIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DksDVfndVlbafyexZ2%2B3j9Gcc
> O9hu
> >pybvtl1twZs5OSk%3D&reserved=3D0
> >v3:
> >https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flore=
.
> >kernel.or%2F&data=3D05%7C02%7Cvivek.behera%40siemens.com%7C8f085189a
> 7e343
> >f68c8108de40973109%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7C
> 6390192
> >15266561801%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUs
> IlYiOiIwLjA
> >uMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C
> %7C%7C&
> >sdata=3DT5%2BuK5rojSrxkULJVsXks%2FG4XeJ7QkFtFzjyllwMLAo%3D&reserved
> =3D0
> >g%2Fintel-wired-
> >lan%2FIA3PR11MB8986E4ACB7F264CF2DD1D750E5A0A%40IA3PR11MB8986.
> nam
> >prd11.prod.outlook.com%2F&data=3D05%7C02%7Cvivek.behera%40siemens.com
> %7C
> >b609a859d19b47e8f47808de38d77627%7C38ae3bcd95794fd4addab42e1495d55a
> >%7C1%7C0%7C639010695226890990%7CUnknown%7CTWFpbGZsb3d8eyJFb
> XB0e
> >U1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCI
> sIldU
> >Ij
> oyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DzEWhj7N2%2BmwsShmoy1ACAjb3vi7
> yJgb
> >A077fISIOZiM%3D&reserved=3D0
> >v4:
> >https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flore=
.
> >kernel.or%2F&data=3D05%7C02%7Cvivek.behera%40siemens.com%7C8f085189a
> 7e343
> >f68c8108de40973109%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7C
> 6390192
> >15266582726%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUs
> IlYiOiIwLjA
> >uMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C
> %7C%7C&
> >sdata=3DBNc4gnDBi88%2Bc38fA3ZwgWZWe0xKqBVRs9s0kjXcicY%3D&reserved
> =3D0
> >g%2Fintel-wired-
> >lan%2FAS1PR10MB53926CB955FBD4F9F4A018818FA0A%40AS1PR10MB5392.
> EUR
> >PRD10.PROD.OUTLOOK.COM%2F&data=3D05%7C02%7Cvivek.behera%40sieme
> ns.co
> >m%7Cb609a859d19b47e8f47808de38d77627%7C38ae3bcd95794fd4addab42e14
> 9
> >5d55a%7C1%7C0%7C639010695226933538%7CUnknown%7CTWFpbGZsb3d8e
> yJF
> >bXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTW
> FpbCI
> >sIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3D23aTM4TNsnyzoS%2FpSM1G
> cluaWz
> >LPNbrPKEo%2BOrm9hZQ%3D&reserved=3D0
> >v5:
> >https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flore=
.
> >kernel.or%2F&data=3D05%7C02%7Cvivek.behera%40siemens.com%7C8f085189a
> 7e343
> >f68c8108de40973109%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7C
> 6390192
> >15266603550%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUs
> IlYiOiIwLjA
> >uMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C
> %7C%7C&
> >sdata=3Df98hnCh9GGscSYE4edpMLJ%2Fyn1ywQvdYiY2aRg3FVQY%3D&reserve
> d=3D0
> >g%2Fintel-wired-
> >lan%2FAS1PR10MB5392FCA415A38B9DD7BB5F218FA0A%40AS1PR10MB5392
> .EUR
> >PRD10.PROD.OUTLOOK.COM%2F&data=3D05%7C02%7Cvivek.behera%40sieme
> ns.co
> >m%7Cb609a859d19b47e8f47808de38d77627%7C38ae3bcd95794fd4addab42e14
> 9
> >5d55a%7C1%7C0%7C639010695227205026%7CUnknown%7CTWFpbGZsb3d8e
> yJF
> >bXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTW
> FpbCI
> >sIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DJdY3aHzIcIWtir9fAV%2BMELN
> WtiyLJ
> >YRU7IMxLZ0mPqQ%3D&reserved=3D0
> >v6:
> >https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flore=
.
> >kernel.org%2Fintel-wired-lan%2F20251211173916.23951-1-
> &data=3D05%7C02%7Cv
> >ivek.behera%40siemens.com%7C8f085189a7e343f68c8108de40973109%7C38a
> e3bcd
> >95794fd4addab42e1495d55a%7C1%7C0%7C639019215266620373%7CUnknown
> %7CTWFpb
> >GZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zM
> iIsIkFO
> >IjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DtyC5AhOhrZId%2B
> PMnbUCKI
> >iW%2BnULncGNFtwPmUArKNNA%3D&reserved=3D0
> >vivek.behera@siemens.com/
> >v7:
> >https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flore=
.
> >kernel.org%2Fintel-wired-lan%2F20251212163208.137164-1-
> &data=3D05%7C02%7C
> >vivek.behera%40siemens.com%7C8f085189a7e343f68c8108de40973109%7C38
> ae3bc
> >d95794fd4addab42e1495d55a%7C1%7C0%7C639019215266637772%7CUnknow
> n%7CTWFp
> >bGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4z
> MiIsIkF
> >OIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DMPfX7BL8URjItX
> BeMFr5li
> >RLdICdis1ukNDcACw%2FVEg%3D&reserved=3D0
> >vivek.behera@siemens.com/
> >v8:
> >https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flore=
.
> >kernel.org%2Fintel-wired-lan%2F20251215122052.412327-1-
> &data=3D05%7C02%7C
> >vivek.behera%40siemens.com%7C8f085189a7e343f68c8108de40973109%7C38
> ae3bc
> >d95794fd4addab42e1495d55a%7C1%7C0%7C639019215266654355%7CUnknow
> n%7CTWFp
> >bGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4z
> MiIsIkF
> >OIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DVhGMm4B%2FR
> lVXMxrDMInk
> >te%2FeZAujFnD3XQ7h7ZsbjiU%3D&reserved=3D0
> >vivek.behera@siemens.com/
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
> >v8 -> v9
> >- Included review feedback and suggestions from Tony and Siang
> >---
> > drivers/net/ethernet/intel/igc/igc_main.c | 77 ++++++++++++++++++-----
> >drivers/net/ethernet/intel/igc/igc_ptp.c  |  3 +-
> > 2 files changed, 62 insertions(+), 18 deletions(-)
> >
> >diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
> >b/drivers/net/ethernet/intel/igc/igc_main.c
> >index 7aafa60ba0c8..7bd9f10a3f29 100644
> >--- a/drivers/net/ethernet/intel/igc/igc_main.c
> >+++ b/drivers/net/ethernet/intel/igc/igc_main.c
> >@@ -6908,40 +6908,83 @@ static int igc_xdp_xmit(struct net_device *dev,
> >int num_frames,
> >       return nxmit;
> > }
> >
> >-static void igc_trigger_rxtxq_interrupt(struct igc_adapter *adapter,
> >-                                      struct igc_q_vector *q_vector)
> >-{
> >-      struct igc_hw *hw =3D &adapter->hw;
> >-      u32 eics =3D 0;
> >-
> >-      eics |=3D q_vector->eims_value;
> >-      wr32(IGC_EICS, eics);
> >-}
> >-
> > int igc_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags)  {
> >       struct igc_adapter *adapter =3D netdev_priv(dev);
> >+      struct igc_hw *hw =3D &adapter->hw;
> >       struct igc_q_vector *q_vector;
> >       struct igc_ring *ring;
> >+      u32 eics =3D 0;
> >
> >       if (test_bit(__IGC_DOWN, &adapter->state))
> >               return -ENETDOWN;
> >
> >       if (!igc_xdp_is_enabled(adapter))
> >               return -ENXIO;
> >-
> >+      /* Check if queue_id is valid. Tx and Rx queue numbers are
> >+ always same */
> >       if (queue_id >=3D adapter->num_rx_queues)
> >               return -EINVAL;
> >
> >-      ring =3D adapter->rx_ring[queue_id];
> >-
> >+      if ((flags & XDP_WAKEUP_RX) && (flags & XDP_WAKEUP_TX)) {
> >+              /* If both TX and RX need to be woken up check if queue
> >+ pairs are
> >active */
> >+              if ((adapter->flags & IGC_FLAG_QUEUE_PAIRS)) {
> >+                      /* Just get the ring params from Rx */
> >+                      ring =3D adapter->rx_ring[queue_id];
> >+              } else {
> >+                      /* Two irqs for Rx and Tx need to be triggered */
> >+                      struct napi_struct *rx_napi;
> >+                      struct napi_struct *tx_napi;
> >+                      u32 eics_tx =3D 0;
> >+                      u32 eics_rx =3D 0;
> >+                      /* IRQ trigger preparation for Rx */
> >+                      ring =3D adapter->rx_ring[queue_id];
> >+                      if (!ring->xsk_pool)
> >+                              return -ENXIO;
> >+                      q_vector =3D ring->q_vector;
> >+                      rx_napi =3D &q_vector->napi;
> >+                      /* Extend the BIT mask for eics */
> >+                      eics_rx =3D ring->q_vector->eims_value;
> >+
> >+                      /* IRQ trigger preparation for Tx */
> >+                      ring =3D adapter->tx_ring[queue_id];
> >+                      if (!ring->xsk_pool)
> >+                              return -ENXIO;
> >+                      q_vector =3D ring->q_vector;
> >+                      tx_napi =3D &q_vector->napi;
> >+                      /* Extend the BIT mask for eics */
> >+                      eics_tx =3D ring->q_vector->eims_value;
> >+
> >+                      /* Check and update napi states for rx and tx */
> >+                      if (!napi_if_scheduled_mark_missed(rx_napi))
> >+                              eics |=3D eics_rx;
> >+                      if (!napi_if_scheduled_mark_missed(tx_napi))
> >+                              eics |=3D eics_tx;
> >+
> >+                      /* Now we trigger the required irqs for Rx and Tx=
 */
> >+                      if (eics)
> >+                              wr32(IGC_EICS, eics);
> >+
> >+                      return 0;
> >+              }
> >+      } else if (flags & XDP_WAKEUP_TX) {
> >+              /* Get the ring params from Tx */
> >+              ring =3D adapter->tx_ring[queue_id];
> >+      } else if (flags & XDP_WAKEUP_RX) {
> >+              /* Get the ring params from Rx */
> >+              ring =3D adapter->rx_ring[queue_id];
> >+      } else {
> >+              /* Invalid Flags */
> >+              return -EINVAL;
> >+      }
> >+      /* Prepare to trigger single irq */
> >       if (!ring->xsk_pool)
> >               return -ENXIO;
> >
> >-      q_vector =3D adapter->q_vector[queue_id];
> >-      if (!napi_if_scheduled_mark_missed(&q_vector->napi))
> >-              igc_trigger_rxtxq_interrupt(adapter, q_vector);
> >-
> >+      q_vector =3D ring->q_vector;
> >+      if (!napi_if_scheduled_mark_missed(&q_vector->napi)) {
> >+              eics =3D q_vector->eims_value;
> >+              wr32(IGC_EICS, eics);
> >+      }
> >       return 0;
> > }
> >
> >diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c
> >b/drivers/net/ethernet/intel/igc/igc_ptp.c
> >index b7b46d863bee..df2e500a4d7e 100644
> >--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
> >+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
> >@@ -550,7 +550,8 @@ static void igc_ptp_free_tx_buffer(struct
> >igc_adapter *adapter,
> >               tstamp->buffer_type =3D 0;
> >
> >               /* Trigger txrx interrupt for transmit completion */
> >-              igc_xsk_wakeup(adapter->netdev, tstamp->xsk_queue_index, =
0);
> >+              igc_xsk_wakeup(adapter->netdev, tstamp->xsk_queue_index,
> >+                             XDP_WAKEUP_TX);
> >
> >               return;
> >       }
