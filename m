Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cD5aJCN6cGktYAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jan 2026 08:02:59 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 323A05287E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jan 2026 08:02:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C6B3F83CBD;
	Wed, 21 Jan 2026 07:02:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v73ZMQ5NSOky; Wed, 21 Jan 2026 07:02:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BEB0083CC5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768978975;
	bh=H4ohCBLn8yx0mVbs9ne3atlsvS0KKCAt2h7tMyBLHOA=;
	h=To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=cohiMktK3VjpJQK1Y7eQ+V9hd7qRZxYeOdVi0jJkvzmYk6s+mGGcZn5JpRwi6irtj
	 n4/Pw7U0nklaWTBXyXxQ+cjZsKEcOTkMXRLe65H71YDnN1STV7mDF9avysyh7DXXSu
	 d/LUgSHyeR/COrO9xFyqzpMJ8TW1SqiEdPcFyO0a7Pr95Z9DQCTKlnj2QAxwWSTOvK
	 9/o9sIRnVtNDf5Q2OIwZ92xPR/G12J+LWkkLGZW14qgi8cju/OunNOyy6m/aR7ONhI
	 Ba4KmmCvrPO+vyfhIxlW06NiwNAi2+c5Lc7v7Xzv0Og7iECns1YbKu0yN7mGD8VzMS
	 LAJY+mTCOUGrg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BEB0083CC5;
	Wed, 21 Jan 2026 07:02:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9E420160
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 07:02:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8980B40A5F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 07:02:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g_fzYhp9gQ7x for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Jan 2026 07:02:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.130.53;
 helo=mrwpr03cu001.outbound.protection.outlook.com;
 envelope-from=vivek.behera@siemens.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B347340022
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B347340022
Received: from MRWPR03CU001.outbound.protection.outlook.com
 (mail-francesouthazon11011053.outbound.protection.outlook.com
 [40.107.130.53])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B347340022
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 07:02:51 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jLLmxMpyQXUQxmKJ4gvavgnYYZiSW6xz7xa/g1uQNcYzzVuS0aI9H4UTkH+HWYbGeBT9GZHFKj3+4Etp+nH0y9RZ7+Q4RYR8eCsydNuV6ebUfy8m8f8K2gLkMb3kiI6OZ7cAZgjbb3uIYTkdz5r2VTVXhNrs7HHz2O/HwKw6VGOSi7nwdb1T1O9n285b392sgQRGwg5JS61gGC+hIIoxO2ucoZD3byPRfXNaRXR6RlyrKjYPvuw7AYiQQ6LhEK0iIzNo4VScYWOZ15sQ046X+JyYsCWqmZcbLSZBuDYKv9H56xeURiwZoK6ITlDI8C0v/b2SZRE9nvaUG8CoNkHGyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H4ohCBLn8yx0mVbs9ne3atlsvS0KKCAt2h7tMyBLHOA=;
 b=FLRqLYVDHw2IyGpoborACMAaNgY+vSm2YbVNV3PU8RwKdjNKmlulzIo8O828akXWlQ+TV7YmuVL94sZNiD11Umk7VeMDUHu8UOS1nlguOw6Pljz1X/07/YYQtTI1DH2+mVOi94USbVv+n8B91eZSzzSYuydXE1S1L+nT8Ag8sjab/zxKG//4oYkLfbl8TPrOH9Fp9X+iCM1Jy8lDSfT9CPaXD7iD3LFK/fdqaeoIFFLBujBS3KjhqY888mgmG8kNC+fvT6ukG1YTHyPQ75J5IijRbSseVhpgiQ1gokgvv7ehAJr8hXSK6pE92vtdbCvyRlcxuiyBiif3qiPJF4cgWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
Received: from DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:329::14)
 by AS4PR10MB7967.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:4fe::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Wed, 21 Jan
 2026 07:02:47 +0000
Received: from DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::de46:63f0:fed4:cdef]) by DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::de46:63f0:fed4:cdef%6]) with mapi id 15.20.9542.008; Wed, 21 Jan 2026
 07:02:47 +0000
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
CC: "aleksandr.loktionov@intel.com" <aleksandr.loktionov@intel.com>,
 "jacob.e.keller@intel.com" <jacob.e.keller@intel.com>,
 "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>,
 "przemyslaw.kitszel@intel.com" <przemyslaw.kitszel@intel.com>,
 "sriram.yagnaraman@ericsson.com" <sriram.yagnaraman@ericsson.com>,
 "kurt@linutronix.de" <kurt@linutronix.de>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "magnus.karlsson@intel.com"
 <magnus.karlsson@intel.com>
Thread-Topic: [PATCH iwl-net v7] igb: Fix trigger of incorrect irq in
 igb_xsk_wakeup
Thread-Index: AQHcieGJvM4i4B5TD0+3Y5alm9oxcLVbAzyAgAEo6mA=
Date: Wed, 21 Jan 2026 07:02:47 +0000
Message-ID: <DU0PR10MB53873D1F725A7C13C6656C978F96A@DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM>
References: <20260120075053.2260190-1-vivek.behera@siemens.com>
 <aW96U5l2ffl4JCpB@boxer>
In-Reply-To: <aW96U5l2ffl4JCpB@boxer>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=9c1ddc9c-2f0c-4f44-b487-0265ca71362c;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2026-01-21T06:34:12Z;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10, 3, 0, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DU0PR10MB5387:EE_|AS4PR10MB7967:EE_
x-ms-office365-filtering-correlation-id: 5beb8136-02e5-4d4c-9429-08de58bb156a
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?gajGXId82Sri1PTnsHZgu4OTEQyZGlLb+gXj1B0Xn/7jER8Q4pNMoxIsiu?=
 =?iso-8859-1?Q?ts6k4G7drdR7QwrtO38RAsFt4HAUOq+INTMZsbZfcfb4+P5AZoWn+Jd69g?=
 =?iso-8859-1?Q?IlpbCRHL7cZpiLLny5ktyKTm8B2CKCCz39QNho8lALj1JuR8waVldlhfsR?=
 =?iso-8859-1?Q?7Mh6R0tYkuzICcL0whL9SxmOf49gWUEklw5p10Y13m8gtmxODw+npq54/h?=
 =?iso-8859-1?Q?56vPE9IIZKH1FlxAaCIQqd9nqiIwhNNkoQMlUqE/RY+EvzHjoNqyo2bvRc?=
 =?iso-8859-1?Q?WslaIVxSQznu9usy6CPvc3RNyViLS5AuQTfoegNDbqJttohc72NeTLOgXm?=
 =?iso-8859-1?Q?OiyJlr2WL9E4KZ1ZnknXY48gb6Utq+8KZlmBEgq3dSQGvVpAJGO1BVITQR?=
 =?iso-8859-1?Q?SMNf7OkV3yZpegUl3yVQcP+B3itutarkWJKdBxHJkH677FwG7xwMlCixiO?=
 =?iso-8859-1?Q?kuF0yYryENkPNhJT4UoPeyKQctTWjh6ktk3DLxRI+zSUAV4jTgv8sAW9pW?=
 =?iso-8859-1?Q?/NyBC0teAXLMIE8gRx00nHeZHQYzjBx+u2Yn6Mgjcd6AfkkhPvO01y42Ot?=
 =?iso-8859-1?Q?S0fB6oco2DXRRfWYDDjQIuWwoCJ8+3uKCHj8189XtB7q3liVPac/K2GIUw?=
 =?iso-8859-1?Q?D555gNgJ6JVMIgaPqLKVM7AzjyopCHYEY59EzLf0Cho9QAcj6aJ0eq0zNo?=
 =?iso-8859-1?Q?X0AStTEaTe0zm0hsAQ1tZmfsKY8M569IyQo7I9iE4Q0eWh+/7fSt65NXhY?=
 =?iso-8859-1?Q?ALShgvKcmhUqgFT9p/4/pjZDYrdsjnbxUddh95IN1rY3c0XO42VQrFPr1O?=
 =?iso-8859-1?Q?owlwvxMWGpF3xR5eBZk6e0ID+9TTGQpjXyaU7xugA5+ePUYrr9Zy2fwH2W?=
 =?iso-8859-1?Q?CCI13lvBzdb7qXIQNOL0iXW1Ql3jqze6wo4iBb4/3dIuVx7ijtRnIvLZzS?=
 =?iso-8859-1?Q?hTEvfHznS0bkWJKRtigOV21hCvAzBt/eCNjlB8agL9Er4dP7gdnCeMydnS?=
 =?iso-8859-1?Q?ekhCqq0uFrVas4SpxmEv6KqieUCdGuXPsThT/N8ODhNXE4TBciCRMNaJUa?=
 =?iso-8859-1?Q?wBS6WXWUHaAjhl7t5wKXuUJGERULaayRrC2xIKc/9DtKNsbfZZVp7Plf4c?=
 =?iso-8859-1?Q?9jVX8fJ84VEztId5Wi8/ueJ3I2DDFO9k1NrAfmOSrpy2/qMh3edt0K+P+z?=
 =?iso-8859-1?Q?rTTtIvZC/WoRhFIy+TWezOmI02rzeWUF46D/XGU/MIVS9vG52fXHKRxd5u?=
 =?iso-8859-1?Q?QUWmsF8QRIDjeZ/lRFcwUZDvNwiFXZ3mWUOi+sjgVHLWLgs2u4d67Kk6PZ?=
 =?iso-8859-1?Q?W776ROsHkmkxbDKaeuqwxGbYJY8kOKeBMb34KA+EEZCfecP/TPmmzUnoU3?=
 =?iso-8859-1?Q?+GKbL1qMHhqaShZtFneXhyy0+Zh2KsfWJJ3tUfRnF6u2yMeyBXmE2jK/KL?=
 =?iso-8859-1?Q?O1XopY58eozNJ9cxL1dLXirjmfKUeud741pdNIxV7sBQveUugFQLfsCkru?=
 =?iso-8859-1?Q?bOn168RM7Qp1gIdOCTrQOnqRqG0Bskw6YVhojgyrRErccS4eekvEGK9csK?=
 =?iso-8859-1?Q?xbKBxUQEycAsZzgN+RcZO8CBRkhVO2493swiSzts/lfpSaunXOTNlawlzR?=
 =?iso-8859-1?Q?r9/RkG0Tw0m1M8qGvdWdZoqg0W1KCPc9tCD9yZoinA/BUZmgzwDbW/PDh1?=
 =?iso-8859-1?Q?/noWdEg4n9PiDRg9AoA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?RLAtBfi3ALGEHisPLQ82MWUGcTrdWiAF8JcuE++eNTL4XQE4ZDsXU5UK6e?=
 =?iso-8859-1?Q?0nWNX3Xctbqi1xf3RXr4sWNDprO4sPo/2ZV6vlywn+pQx5YH+OhS+1Hsnb?=
 =?iso-8859-1?Q?ZuhFe7RaVQJMCYWZOu5tGls2oSfDoS6/Q+hOj5ri0aXGgq2I+2fJ7IQfEg?=
 =?iso-8859-1?Q?P28a7Rb1sPqI3TzMzGaXaysrxW59W6CWClHdJkot/sLVuS32EBNiNZoEWk?=
 =?iso-8859-1?Q?RdJMoD9iMN86V2Uvf9c5mdqxaAXYARldKpOQMB8C3X+4ymdsKo62Ebp/+Y?=
 =?iso-8859-1?Q?p7DV12CyYWYIUl+WLtxSzHuEUTOZdcwjLHufIa4yBFAUpZ3iZ0TBGBI/xb?=
 =?iso-8859-1?Q?b1D2U26G/otUjcJjA6wy7f+1DN1X9uCmtJIFs/E2lz0Ppm8eNcEsmd7sNY?=
 =?iso-8859-1?Q?kboAC6ol77jEjW2X0h3cAy+fOQ/8JBmrmnBlIa1/XKm/Yy6pTOltk1sP7W?=
 =?iso-8859-1?Q?pw+0T6ku0jmMNdo5lmSRWF8O72zD3YbRzhxmNnZLcJByHptDjRDjjg1JNM?=
 =?iso-8859-1?Q?wt3Z98k5j5VNfQFS7G1w4M01ECsCu98OzumdREaPSqM92qQMVByGHo1IU/?=
 =?iso-8859-1?Q?HzfLQU6oX7+Tly9Wl9l0IkfCvHTN/glnM1DxrYXjMTvoblkGMR7F1JCl/j?=
 =?iso-8859-1?Q?ZUJMm3lk7IAGOSl5vhdp0Lra6CMocIkN/aQs3YpnhzvDQXiDT3BWxn3+x/?=
 =?iso-8859-1?Q?b9igZzH1SW3EAnBc/fp2syBCyuT8YNK4PPAInG5+tJ6L6GW+woR2Pw10mQ?=
 =?iso-8859-1?Q?n/6WX/AgGSwKXAEziT90gusL45DTfaLqzujx8NRQWH2Ob0nEFLgeoEMd38?=
 =?iso-8859-1?Q?EwJZ1cft6RnQePnGnv96mVPUxDHSIcEMqLNONcdY1sr2uqlJJ1+4f3tJvn?=
 =?iso-8859-1?Q?PLQoqg24JkUp6+T/skLJgUu9ZlKizM57YX5yAbRYSGuzVxS96M2VZpQSkQ?=
 =?iso-8859-1?Q?C/h7oGCdIDjmSaHGLmScj8Ak/3Ms5Q5qGyKhsM7M0SetBaHKY8f8FNGDXk?=
 =?iso-8859-1?Q?fnU874tgC2LW2BV+Qm0sj/L4fnVZJ3L5nYYW7rIHvduq+fphl0HUxMPyFm?=
 =?iso-8859-1?Q?Odqe8o3St+1AfhSPM29ZIc0jGmCEEITeJMYgSwdPTZZ9U0bEz7kLN/YSnt?=
 =?iso-8859-1?Q?63kkONd9ak2ZzUQXAmAqa4AhNalexILCjPGbOWkXYxZFTrbkknIw//lCvP?=
 =?iso-8859-1?Q?GXf+JoxeD+M/HAQlqSuRCGk72mpK5vjsQUN9C5YNm5RMaRK7Rt20K4qGsv?=
 =?iso-8859-1?Q?vze1EBtECtcR6hojt5wldnN6XmDcjnlrZwj8766S1jJaaOeppeTh1KyEUa?=
 =?iso-8859-1?Q?FEuz1JtkTQMXiXfKlTaCsGDiMVyfpF8u28L/NMX93CAHPoU5mvFkBsNwFB?=
 =?iso-8859-1?Q?hkoH81sufnxP2FqRZ35FNJObLwIu/rEzvSPwX9RzqzlUh5rLWwfK6aFy9z?=
 =?iso-8859-1?Q?TH+4X19AXFxLqQay2VKQT8ZeJgS+pNOATZRaGbsg6uMajCNz4FmwVjjfaV?=
 =?iso-8859-1?Q?sSDDZkb2xRPRHiyKnMqIq1tQr1OEAB/Uc32IQj/ueu8flKWnSqx0NoDbfk?=
 =?iso-8859-1?Q?qU4qPDdx034uDETm6FltAmchPQ+07KBn6MU07xX1nGQL32gXjTlNEEr83u?=
 =?iso-8859-1?Q?2VWFCBTI04O1pDts6S7Ltn3MFf+ET/3Fm+d3V7sJTx1tsK7GsrbuP7UaV6?=
 =?iso-8859-1?Q?tOzkLI7++/SsQDmo4bQ2Kvt+Yt7T7K6u3mBixoXbzYJ7JiXTYQkX+wRC0l?=
 =?iso-8859-1?Q?iujcBzSOJWJtlFHE+8N+OKJAjIcKZyQiQVd58BuF+4JExr2gynHAwf71hl?=
 =?iso-8859-1?Q?ypZM3FBZjg=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 5beb8136-02e5-4d4c-9429-08de58bb156a
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2026 07:02:47.4272 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /P+WcTzNlGaFEMWIiViNvEx/QzFvLwIgr9L0HUc6emjwP+3tku9oot2+UEy1OBAkpyIlaOp4DMIqvRoapyZPaAWMmDDXi40UTj1mvFuMw6o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4PR10MB7967
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=siemens.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H4ohCBLn8yx0mVbs9ne3atlsvS0KKCAt2h7tMyBLHOA=;
 b=ol7DUBIh5kNssjYhPhAVAQbdixJhNBpluPnmlSZxMT+moD23hOnxcTbPbNJHMVHcmc6gmOlqyDi8Jqx+pdD6O/SigLq+GNEs4ix1cp7ALuMg7xQLc9Qs7o8Gg73BdagXze0NT0w5JtI0fnEeflSm9i+4DYC1ZLovhL2qxUWphUq9YfYTbwBbV5mWqQDYc+eEByqC1Um804670MaDDmvbnRAyQCqAwB/3weJCfyvsGrWxFkR8ABMrIknqdl5mxjdNikhZK2nY29TepSPyfsHw4D7dsxcgnP2oKo6MxBnapsg6Xfa8MGXiaXiz7CZDEVOztXd1UCprf60EuAZQnICJRw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=@siemens.com header.a=rsa-sha256
 header.s=selector2 header.b=ol7DUBIh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v7] igb: Fix trigger of
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:maciej.fijalkowski@intel.com,m:aleksandr.loktionov@intel.com,m:jacob.e.keller@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:sriram.yagnaraman@ericsson.com,m:kurt@linutronix.de,m:magnus.karlsson@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[vivek.behera@siemens.com];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 323A05287E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Urspr=FCngliche Nachricht-----
> Von: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Gesendet: Dienstag, 20. Januar 2026 13:52
> An: Behera, Vivek (DI FA DSP ICC PRC1) <vivek.behera@siemens.com>
> Cc: aleksandr.loktionov@intel.com; jacob.e.keller@intel.com;
> anthony.l.nguyen@intel.com; przemyslaw.kitszel@intel.com;
> sriram.yagnaraman@ericsson.com; kurt@linutronix.de; intel-wired-
> lan@lists.osuosl.org; magnus.karlsson@intel.com
> Betreff: Re: [PATCH iwl-net v7] igb: Fix trigger of incorrect irq in igb_=
xsk_wakeup
>=20
> On Tue, Jan 20, 2026 at 08:50:53AM +0100, Vivek Behera wrote:
> > The current implementation in the igb_xsk_wakeup expects the Rx and Tx
> > queues to share the same irq. This would lead to triggering of
> > incorrect irq in split irq configuration.
> > This patch addresses this issue which could impact environments with 2
> > active cpu cores or when the number of queues is reduced to 2 or less
> >
> > cat /proc/interrupts | grep eno2
> >  167:          0          0          0          0 IR-PCI-MSIX-0000:08:0=
0.0
> >  0-edge      eno2
> >  168:          0          0          0          0 IR-PCI-MSIX-0000:08:0=
0.0
> >  1-edge      eno2-rx-0
> >  169:          0          0          0          0 IR-PCI-MSIX-0000:08:0=
0.0
> >  2-edge      eno2-rx-1
> >  170:          0          0          0          0 IR-PCI-MSIX-0000:08:0=
0.0
> >  3-edge      eno2-tx-0
> >  171:          0          0          0          0 IR-PCI-MSIX-0000:08:0=
0.0
> >  4-edge      eno2-tx-1
> >
> > Furthermore it uses the flags input argument to trigger either rx, tx
> > or both rx and tx irqs as specified in the ndo_xsk_wakeup api
> > documentation
> >
> > Fixes: 80f6ccf9f116 ("igb: Introduce XSK data structures and helpers")
> > Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
> > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>=20
> Hi Vivek,
>=20
> I gave you my acked-by on v6. I don't feel obliged to call out such thing=
s but since
> we have completely changed approach of fixing things here, Aleksandr do y=
ou want
> to keep your review tag? If so then please go through the code again.
Hi Maciej,

I am okay with removing Aleksander's Reviewed-by Tag if it is no longer val=
id.=20
I had also mentioned during the discussion on the v5 thread that =20
due to the changed approach, you might even consider submitting a fresh pat=
ch by dropping mine.=20
Nevertheless, from my perspective it is critical that we can start upstream=
ing the fixes included
in this patch along with the igc for my Stakeholders who are planning to re=
lease their Products on Siemens IPCs with I210 and i226
cards in the next quarter. =20
I just want to communicate the urgency on this topic.   =20
>=20
> Thanks!
>=20
> > Suggested-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> > ---
> > v1:
> > https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flor=
e
> > .kernel.org%2Fintel-wired-lan%2F20251212131454.124116-1-vivek.behera%4
> >
> 0siemens.com%2F&data=3D05%7C02%7Cvivek.behera%40siemens.com%7C3219ce1
> 35f
> >
> 81466db29e08de5822a99d%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7
> C63
> >
> 9045103048376499%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydW
> UsIlYiO
> >
> iIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7
> C
> >
> %7C%7C&sdata=3DbFd0kGibsg8vv0%2BCsCV5HU%2FccorvAphaprPLtfAgnA8%3D&
> reserv
> > ed=3D0
> > v2:
> > https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flor=
e
> > .kernel.org%2Fintel-wired-lan%2F20251215115416.410619-1-vivek.behera%4
> >
> 0siemens.com%2F&data=3D05%7C02%7Cvivek.behera%40siemens.com%7C3219ce1
> 35f
> >
> 81466db29e08de5822a99d%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7
> C63
> >
> 9045103048417392%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydW
> UsIlYiO
> >
> iIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7
> C
> >
> %7C%7C&sdata=3D4IzCdXUlEaWODsWCru2F3xIy02NwfoPYTtsnLjHN1Q8%3D&reser
> ved=3D0
> > v3:
> > https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flor=
e
> > .kernel.org%2Fintel-wired-lan%2F20251220114936.140473-1-vivek.behera%4
> >
> 0siemens.com%2F&data=3D05%7C02%7Cvivek.behera%40siemens.com%7C3219ce1
> 35f
> >
> 81466db29e08de5822a99d%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7
> C63
> >
> 9045103048455269%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydW
> UsIlYiO
> >
> iIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7
> C
> >
> %7C%7C&sdata=3D2%2BhI0oizG3q8bl3dxLTnFbXH%2FpMAdQonSl9rNLIyCFc%3D&r
> eserv
> > ed=3D0
> > v4:
> > https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flor=
e
> > .kernel.org%2Fintel-wired-lan%2F20251222115747.230521-1-vivek.behera%4
> >
> 0siemens.com%2F&data=3D05%7C02%7Cvivek.behera%40siemens.com%7C3219ce1
> 35f
> >
> 81466db29e08de5822a99d%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7
> C63
> >
> 9045103048497301%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydW
> UsIlYiO
> >
> iIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7
> C
> >
> %7C%7C&sdata=3DoJXJyzmla5rvnYNu4OHS0b7bYY%2BjOXe66QxrT79YfJs%3D&re
> served
> > =3D0
> > v5:
> > https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flor=
e
> > .kernel.org%2Fintel-wired-lan%2F20260112130349.1737901-1-vivek.behera%
> >
> 40siemens.com%2F&data=3D05%7C02%7Cvivek.behera%40siemens.com%7C3219ce
> 135
> >
> f81466db29e08de5822a99d%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%
> 7C6
> >
> 39045103048534301%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydW
> UsIlYi
> >
> OiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0
> %7
> >
> C%7C%7C&sdata=3DZ%2BYULMIoUWG8BfRHegGxiWVE39on%2BctH7YTbzkfz%2F
> Co%3D&res
> > erved=3D0
> > v6:
> > https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flor=
e
> > .kernel.org%2Fintel-wired-lan%2F20260117145112.2088217-1-vivek.behera%
> >
> 40siemens.com%2F&data=3D05%7C02%7Cvivek.behera%40siemens.com%7C3219ce
> 135
> >
> f81466db29e08de5822a99d%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%
> 7C6
> >
> 39045103048568401%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydW
> UsIlYi
> >
> OiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0
> %7
> >
> C%7C%7C&sdata=3DmnZAzSk6WTEAN15HSWdsDzJvx6QetZLg7akqqnjrkiU%3D&re
> served=3D
> > 0
> >
> > changelog:
> > v1
> > - Initial description of the Bug and fixes made in the patch
> >
> > v1 -> v2
> > - Handling of RX and TX Wakeup in igc_xsk_wakeup for a split IRQ
> > configuration
> > - Review suggestions by Aleksander: Modified sequence to complete all
> >   error checks for rx and tx before updating napi states and
> > triggering irqs
> > - Corrected trigger of TX and RX interrupts over E1000_ICS (non msix
> > use case)
> > - Added define for Tx interrupt trigger bit mask for E1000_ICS
> >
> > v2 -> v3
> > - Included applicable feedback and suggestions from igc patch
> > - Fixed logic in updating eics value when  both TX and RX need wakeup
> >
> > v3 -> v4
> > - Added comments to explain trigerring of both TX and RX with active
> > queue pairs
> > - Fixed check of xsk pools in if statement
> >
> > v4 -> v5
> > - Introduced a simplified logic for sequential check for RX and TX
> >
> > v5 -> v6
> > - Further simplifications suggested by Maciej
> > - Included review suggestions from reviewers
> >
> > v6 -> v7
> > - Removed redundant braces
> > - Updated comment block to improve explanation of implemented logic
> > ---
> >  drivers/net/ethernet/intel/igb/igb_xsk.c | 38
> > +++++++++++++++++++-----
> >  1 file changed, 30 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/igb/igb_xsk.c
> > b/drivers/net/ethernet/intel/igb/igb_xsk.c
> > index 30ce5fbb5b77..ce4a7b58cad2 100644
> > --- a/drivers/net/ethernet/intel/igb/igb_xsk.c
> > +++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
> > @@ -524,6 +524,16 @@ bool igb_xmit_zc(struct igb_ring *tx_ring, struct
> xsk_buff_pool *xsk_pool)
> >  	return nb_pkts < budget;
> >  }
> >
> > +static u32 igb_sw_irq_prep(struct igb_q_vector *q_vector) {
> > +	u32 eics =3D 0;
> > +
> > +	if (!napi_if_scheduled_mark_missed(&q_vector->napi))
> > +		eics =3D q_vector->eims_value;
> > +
> > +	return eics;
> > +}
> > +
> >  int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)  {
> >  	struct igb_adapter *adapter =3D netdev_priv(dev); @@ -542,20 +552,32
> > @@ int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
> >
> >  	ring =3D adapter->tx_ring[qid];
> >
> > -	if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
> > -		return -ENETDOWN;
> > -
> >  	if (!READ_ONCE(ring->xsk_pool))
> >  		return -EINVAL;
> >
> > -	if (!napi_if_scheduled_mark_missed(&ring->q_vector->napi)) {
> > +	if (flags & XDP_WAKEUP_TX) {
> > +		if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
> > +			return -ENETDOWN;
> > +
> > +		eics |=3D igb_sw_irq_prep(ring->q_vector);
> > +	}
> > +
> > +	if (flags & XDP_WAKEUP_RX) {
> > +		/* If IGB_FLAG_QUEUE_PAIRS is active, the q_vector
> > +		 * and NAPI is shared between RX and TX.
> > +		 * If NAPI is already running it would be marked as missed
> > +		 * from the TX path, making this RX call a NOP
> > +		 */
> > +		ring =3D adapter->rx_ring[qid];
> > +		eics |=3D igb_sw_irq_prep(ring->q_vector);
> > +	}
> > +
> > +	if (eics) {
> >  		/* Cause software interrupt */
> > -		if (adapter->flags & IGB_FLAG_HAS_MSIX) {
> > -			eics |=3D ring->q_vector->eims_value;
> > +		if (adapter->flags & IGB_FLAG_HAS_MSIX)
> >  			wr32(E1000_EICS, eics);
> > -		} else {
> > +		else
> >  			wr32(E1000_ICS, E1000_ICS_RXDMT0);
> > -		}
> >  	}
> >
> >  	return 0;
> > --
> > 2.34.1
> >
