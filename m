Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 11341D17D61
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jan 2026 11:02:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0249A42838;
	Tue, 13 Jan 2026 10:02:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L3Xn8Id2leMN; Tue, 13 Jan 2026 10:02:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E906742832
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768298547;
	bh=6+Y0VuokGdqB27MsmO/NaeLLbB2Bjr9M9i5wuHAlwjU=;
	h=To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=GouuqRwyITELNXjVgjShGyRhxwOdB4EY+R+KfAZKRg2g5rMx0Imogdyd5VEtfVF1G
	 6qaDAxNDbGoKQMCkyk9F6POYUTxkibci4rzDXHG9nu1bie5zaWg/boS1FzuTa4Akv4
	 u2vxY7Pt4BF8XQt2ALXmoFWG76A047CRoYcDbw4Q6apS3OZF2/pv0N8wdOqZewESZG
	 KjVMOquFzekgCbl3ON/vm4NwGD5+z4itSvQ3y1mwg5l+te87DsjGsON2ldgNwGqQKZ
	 18X+tgVEzhganYEE9V1T5MZS8QzKp53RtUrTtuy40/1V65BlXR+LWYVYZGDBg5+YsP
	 LzHU5XCRyhPsA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E906742832;
	Tue, 13 Jan 2026 10:02:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 818EC1CC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 10:02:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 666AA61C95
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 10:02:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NpN5pd-qKr8C for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jan 2026 10:02:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.130.26;
 helo=mrwpr03cu001.outbound.protection.outlook.com;
 envelope-from=vivek.behera@siemens.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 47F8D61C93
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 47F8D61C93
Received: from MRWPR03CU001.outbound.protection.outlook.com
 (mail-francesouthazon11011026.outbound.protection.outlook.com
 [40.107.130.26])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 47F8D61C93
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 10:02:22 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=r1dCTRcxujZkfPf6QUAfLPD77viFf6zamLe3N6KiIx0vaVwRcSehHA8x8K/Y52tVnFJ9EoVCcHe4Bxm9ES/wldOELx4Ql1RCewgre3nP9iq7rlxyfq4gxaIsaV9MLiwz2k69XOOl3zH0HfCyc5KODrzmqsH4JceAh7lFumnJXjBakJmiEYSNWOYADpNkgqBJxaMuI2iVKA6zvbR1Wzkn9W0WGtFjZWs5dox70Y06K6zM8Qgjn2nKi+cIhsg6Lj3CmeNJ24LHBrn+GXHsezpB1LGALT54bgQazsffEWnjy3ybyAf+EBb918XCAp6bYp/bTtJ3LP3i9qFEtZOp6Zx5IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6+Y0VuokGdqB27MsmO/NaeLLbB2Bjr9M9i5wuHAlwjU=;
 b=ylYGIQw3SbY9I/L3fwIw9abWINeH8vGOwwDrOLS0iID5vmf3iGREAgAZxgzqfYh8jGVBC19KQUMDX8eWwJcAy0vzbkKLpZg/HmJm65NYgTEpCZj3wp6MNzlYObbNdG3v/HKQi746+Pu5KrFPMlpXEd+2nwgAT9gQI5aqX7kyB5Yp7h2MuwY3+YKJBm/SgNwEhXrIhxxq+kPERgr0x4AHDMEwOTXvX10Vc3fYLAyhjdexggk95XbEF64OwFW/8E92f/rFt4zgoyoMTiCYzfCuAUqZBS9nhbGUD9Zn7u8luthKcuO/FOjXkr1lXcqtBP8rM4gbt4+CHB8BkOnK8R/rsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
Received: from DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:329::14)
 by DU0PR10MB5432.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:32b::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Tue, 13 Jan
 2026 10:02:17 +0000
Received: from DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::de46:63f0:fed4:cdef]) by DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::de46:63f0:fed4:cdef%6]) with mapi id 15.20.9499.005; Tue, 13 Jan 2026
 10:02:17 +0000
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "sriram.yagnaraman@ericsson.com"
 <sriram.yagnaraman@ericsson.com>, "kurt@linutronix.de" <kurt@linutronix.de>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-net v5] igb: Fix trigger of incorrect irq in
 igb_xsk_wakeup
Thread-Index: AQHcg8PrekTNf/vlH0OQtQBQJq0k07VPznyAgAAGotA=
Date: Tue, 13 Jan 2026 10:02:17 +0000
Message-ID: <DU0PR10MB5387C1532DB52F1477A053F08F8EA@DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM>
References: <20260112130349.1737901-1-vivek.behera@siemens.com>
 <IA3PR11MB8986AC1A204E82F92D0D3A7EE58EA@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB8986AC1A204E82F92D0D3A7EE58EA@IA3PR11MB8986.namprd11.prod.outlook.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=0ef5dd6c-9072-4d7f-91ab-8674261e3223;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2026-01-13T09:23:49Z;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10, 3, 0, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DU0PR10MB5387:EE_|DU0PR10MB5432:EE_
x-ms-office365-filtering-correlation-id: acbeb561-9349-4881-4a53-08de528ad599
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|921020|38070700021; 
x-microsoft-antispam-message-info: =?iso-8859-1?Q?4iwWMPulZhQR5wyeLx9qXTj8Lnx2jxRBtgvir8jUa8nBSpXGZNkcCHk1++?=
 =?iso-8859-1?Q?TWunoM7O5rn3vtn+QC77zuEbubuXncMDbetBAMD6tFE3Bju4uKBfafuRgq?=
 =?iso-8859-1?Q?G8XV/Dgo8s/PHRkCSaE0yuPR3l+Dus1+vR6Y3/HS3XMGp3abl7tjHhWrH4?=
 =?iso-8859-1?Q?qb800gmssZhtPoMHF/JA02C803Q0yo31GYsDhYTKMLWB97AkhL+BfQvpBA?=
 =?iso-8859-1?Q?mz8z8lK3Dj4F0PNCQQRLSZC+Fx3+FZJX0nJK2JSFQvbGC4uxH9ymVIkBrL?=
 =?iso-8859-1?Q?om1N/+i4PJs+sKq+wB/9uGuiZiwkX4VdS78k9FhmQNTmjAI2SP+b+8HvuN?=
 =?iso-8859-1?Q?Yx7QG1C1tqKMJQxGh+NhGBUXs5JhE+e0bJ+3VQD85XHdQrsxJdugAJ9A9T?=
 =?iso-8859-1?Q?V1JKbh9vWDg8RMCOAtyRoNyAZ7YWIMpYNDyKct6vuuo0DrDImTwfOtiQEQ?=
 =?iso-8859-1?Q?4Da8Hmu72ofRdpwEgx2KFSNyrG4i+UR4x1ffcUTPHnPgp57jnq0VwIMCqL?=
 =?iso-8859-1?Q?Y62ja0inUSyHeIfL3EHFpF55fROPwSADr6rlc8/x32TB2wEbT+qa+HhBok?=
 =?iso-8859-1?Q?NxR9VtCdVayNdvIzdmL43C1hefqK3Z4vauXBSgQW4500ql9PucjjujoFZl?=
 =?iso-8859-1?Q?SRfpr0wLz9bxoW8IXAxYdpmV4GlmmSO1uQocn9xApON6tK+EmTaac0Sf1n?=
 =?iso-8859-1?Q?orazPEpaJVkB5vHoFIRWy3mu5/FEUL/tYitxNAtstslSXGHd/vyM6LVayT?=
 =?iso-8859-1?Q?cXq/DBZPJKsuf6SyHGJiwcBomUcG6c+d7NKZu72k9DETH2McFTuSlhgaoI?=
 =?iso-8859-1?Q?j5wsGuoqOFioN9iCF2HZYMqu18Kc9x37/ETULUMS7EsXT+qihn2atPuK8W?=
 =?iso-8859-1?Q?6VBLlWS28quigMD1yo7MYUBxZ7gnYu9H6v/bSmSbiC0hokI+WOFS/xAkn3?=
 =?iso-8859-1?Q?0v7y/CqlxmqymQS4wQpwYPPmyJjtu179QHeORBmd7UEXNN8ZGAy3dKPvvU?=
 =?iso-8859-1?Q?ef6IsljjBtXVszB/uIuZm7r5OXXpaFSkHkq4kTQrP7vgDeCDJ94c823opE?=
 =?iso-8859-1?Q?2QOXWVVqBSmupMcoCA2IWOV/NKsOdT15GnLEeBPHamJxDqIiKhbpUvfOMk?=
 =?iso-8859-1?Q?/8N9yjyI2MgaGAAQqltvo2Rwo/F7oLkBUqb2kDsWsFJXo6G5xiGXlYbmCG?=
 =?iso-8859-1?Q?/naDBpdbj9o+eo1NrJiHtQO1LjCmH5scgj4o+Tr7LNktOVfUSftS28znqz?=
 =?iso-8859-1?Q?ReXBawExWu0TzPL/vBR6V5txN+ceGMofoyuobgFUfq8s+gEO4VY8piQD5f?=
 =?iso-8859-1?Q?ebCnZ2LCgdG7ZP5iT0GYcBoQApt55SQgtT0wpFJe4EbrfLtgYhoUesH398?=
 =?iso-8859-1?Q?MPaAlgWUybLV6yKrk2F15LYG5Umw64no8x/nAJzVVi9Zf4xXQdspdv44iH?=
 =?iso-8859-1?Q?bTYzvvNirRXAP5XVDAHjlYw5PBsE8tgbJpbkDpIWotzS5Up6+WMNOqrJaG?=
 =?iso-8859-1?Q?54EZhr1nkRBmnoq23PzUApHVgDbA89cjBverKtKl96nz6vTWGH+tMjfwxi?=
 =?iso-8859-1?Q?nNsj5s/xs1mqFxLQISZg9EL6b9hLJh6gpP3ya3CW5LZfsZBL6A=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(921020)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?98TDPblplu2JLUVww21BaXFmR8MbsetBNd1Sd7KhWTwDd6tsfRPkYPE5JQ?=
 =?iso-8859-1?Q?tq+FnUL8TT5tw6lTdCtHgDaItU2Ic1zPRqZYaDBtlUtpSLB2oAXixrqMd4?=
 =?iso-8859-1?Q?uB7IWqAbTKkdOPQJ+V9WRrws5tSZfFnVJNcHVeawlMdvACmZAZzbRVZK1o?=
 =?iso-8859-1?Q?RsWh4jzjOqyx4KrWR++wxI5zAgpZzyDaLi6qFHkr71Ut48qoC9JLVcFOnm?=
 =?iso-8859-1?Q?evHMO11jM7g49Uz7lCXTvmiZt0kqx6PwUcQssKq+Th71JwOXvRp4wI02PM?=
 =?iso-8859-1?Q?9X0BC/9AiXLbJ9bmMp/agKMXSeyYg1cStWlf0PsaRJXsG0C3tDeHNMgN4X?=
 =?iso-8859-1?Q?VMxs405HCdCWUEVOF76LoUiotmBACQrkLfqNeHS8shyEU81l5aq7Q6Vfy4?=
 =?iso-8859-1?Q?HeQxePKpWFL/xTSXmKyI1tRsMbh6G6Do/o1+5XrSwzBuKxxrxkWOun2vKe?=
 =?iso-8859-1?Q?EPwsWlIw7T61VOXg71CMzkX9qXHaqLHNZOXSPrXcPdQWzJXOKvNNdOHTE2?=
 =?iso-8859-1?Q?vLAFKl0w1XNBdqsuG3igWgwj15XeslNhZoGNmTw7AMoA/vwTLRoYYvaC8O?=
 =?iso-8859-1?Q?CDvJeQRxnIdeEvmDGrwUR045W1Ky0CymPWJyAXqvcfzHZ8xAfOqzxgN/vc?=
 =?iso-8859-1?Q?K+1DywTyUf2X2pSbiKo/bf6n8hJFiygKsk9rldsbiqBzDLawBjWcqSwg65?=
 =?iso-8859-1?Q?U3UiRiKyyjW22ExzjoeGXlLEcITECOk+ali2Vovdb5IFVr1rf/Ihz/daeL?=
 =?iso-8859-1?Q?vYTOJyc15jwbThiaRIsNvLIQhyMOEwKn0sPvVViki9zCXTmoxu1artMU1x?=
 =?iso-8859-1?Q?PR/OfOwG8WzfB28YV3JiHqMFK9NMM7UbGAwlkVq6qKphQFXQsbNfpwJRpj?=
 =?iso-8859-1?Q?CSU7T1BWaNu3zj/b3LZGjDZSOGDgzwzFQL5RysllAGxknnpOiyFmNFYSmL?=
 =?iso-8859-1?Q?IYZI4WjhE/VCcypgTsvLKixUx3r3wKSt/VGwcIZK8K5m4j9Eu3qoOFXsXe?=
 =?iso-8859-1?Q?U3AD4fCnR34KTzuvZL6c8ba62KRCsLan3JQJSd1WuR0A6iYQtao4lgr1DV?=
 =?iso-8859-1?Q?YAJUT29sbvL2cjjJpJKILXVMmz+ZhE5U26ROktYihG9R6Yo8xoXGLcfsH6?=
 =?iso-8859-1?Q?nsnfr5UY8HtnYU2L9KqZ+xvmaHbF3FYhVgae7HZfvWwvDRNeXbtDl3adKe?=
 =?iso-8859-1?Q?Q8/WdSCE3roLJcpzrnkCCb0veWZ456O4CfsBrqJmWexpYbspXyJbRj+zzq?=
 =?iso-8859-1?Q?1I6sD6uEP6zLk4ZICOAUhs9VkNcfYNq8jXb3ohiH3OrM4IdqpRLhpWkNfA?=
 =?iso-8859-1?Q?v7QGHTtrUZt8MiKrLZo31eVYksnxwBCHwF+S1esZQoRoghzj/d1q0aNN1X?=
 =?iso-8859-1?Q?IzQW4plTfmrSE+CVV3v8EGy9FWLU1obS1w4PbAgnTDgT2nzqJ5w90pGM8/?=
 =?iso-8859-1?Q?y7PXtC+H6+lTOAydGf+vF8ToJsIIzbEsaYGsmh75ZDaBGTtq7F2OzGO5uF?=
 =?iso-8859-1?Q?GguFu1crUUGOk0sjcSBIAyNYccxE7brOkCA0lHLqy8qGjR3x5BYb10BfhV?=
 =?iso-8859-1?Q?vH8GZeNNq81G2PwyRbh98jmKmitRUsaNMdZS8DTgZNc2bEesZtHnMv+yQQ?=
 =?iso-8859-1?Q?9VMsmAigwWHOp5RfaGYZRzGAHsj3Ue849cm6jQ+3H2/Rm3ylvEO/N7tMZP?=
 =?iso-8859-1?Q?A4uVrmmJqyjYMgzITt2HqlJ2+AuRFL/2qvlp8WPTae77cMv7pBca6hQCSE?=
 =?iso-8859-1?Q?fdz3mbapKBKsuKhSypulB+lm1njmjW+uPJBdyBT2BaTdMR1QwZYe7v1pKO?=
 =?iso-8859-1?Q?Sslq50hatA=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DU0PR10MB5387.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: acbeb561-9349-4881-4a53-08de528ad599
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2026 10:02:17.5657 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: c9A3GZrNMVlQVq1pC+zD70uKHP1VD10oFYTwKBzA994Rq6XJbWrK/2EjVY8T9iwSpbzCTERXOhGEYI6JMjwvhpfA66GdBHR0EIZNLZI9V6o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR10MB5432
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=siemens.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6+Y0VuokGdqB27MsmO/NaeLLbB2Bjr9M9i5wuHAlwjU=;
 b=S/akarMdXlNi50IvQMbQWV5n2Ad9YkGQ9CDSiL9HJcCqirZXNdyw9JGdLSs3VEQvNYGWSdjK7RgK9K4whpvBEWgMwFMx/WoXWbAMyx3RQ7vu62eHw72dewJW9JZONQvZndJGQYF+ocz374vsFh41fpv0ImOSPuxU8Pm6eAd4OgMlbl+1F8gvXl+L09/2zooJvRwcmdYkJQFTaUNK9B1DEKnvYhS5GfKdaRGrfYLivz50pvw7ehL1oqrUAN8EuVjIdEPk3gASxaNrh6l1ORHsnlsZ3DeevEI447NlRCKshpv/OQ3DOrD8dddiO99Pr9XgOxfHKR8qdF/KKabgLMR0Yw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=@siemens.com header.a=rsa-sha256
 header.s=selector2 header.b=S/akarMd
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



> -----Urspr=FCngliche Nachricht-----
> Von: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Gesendet: Dienstag, 13. Januar 2026 10:00
> An: Behera, Vivek (DI FA DSP ICC PRC1) <vivek.behera@siemens.com>; Keller=
,
> Jacob E <jacob.e.keller@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; sriram.yagnaraman@ericsson.com;
> kurt@linutronix.de
> Cc: intel-wired-lan@lists.osuosl.org; Behera, Vivek (DI FA DSP ICC PRC1)
> <vivek.behera@siemens.com>
> Betreff: RE: [PATCH iwl-net v5] igb: Fix trigger of incorrect irq in igb_=
xsk_wakeup
>=20
>=20
>=20
> > -----Original Message-----
> > From: Vivek Behera <vivek.behera@siemens.com>
> > Sent: Monday, January 12, 2026 2:04 PM
> > To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Keller,
> > Jacob E <jacob.e.keller@intel.com>; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> > <przemyslaw.kitszel@intel.com>; Fijalkowski, Maciej
> > <maciej.fijalkowski@intel.com>; sriram.yagnaraman@ericsson.com;
> > kurt@linutronix.de
> > Cc: intel-wired-lan@lists.osuosl.org; Behera, Vivek
> > <vivek.behera@siemens.com>
> > Subject: [PATCH iwl-net v5] igb: Fix trigger of incorrect irq in
> > igb_xsk_wakeup
> >
> > The current implementation in the igb_xsk_wakeup expects the Rx and Tx
> > queues to share the same irq. This would lead to triggering of
> > incorrect irq in split irq configuration.
> > This patch addresses this issue which could impact environments with 2
> > active cpu cores or when the number of queues is reduced to 2 or less
> >
> > cat /proc/interrupts | grep eno2
> >  167:          0          0          0          0 IR-PCI-MSIX-
> > 0000:08:00.0
> >  0-edge      eno2
> >  168:          0          0          0          0 IR-PCI-MSIX-
> > 0000:08:00.0
> >  1-edge      eno2-rx-0
> >  169:          0          0          0          0 IR-PCI-MSIX-
> > 0000:08:00.0
> >  2-edge      eno2-rx-1
> >  170:          0          0          0          0 IR-PCI-MSIX-
> > 0000:08:00.0
> >  3-edge      eno2-tx-0
> >  171:          0          0          0          0 IR-PCI-MSIX-
> > 0000:08:00.0
> >  4-edge      eno2-tx-1
> >
> > Furthermore it uses the flags input argument to trigger either rx, tx
> > or both rx and tx irqs as specified in the ndo_xsk_wakeup api
> > documentation
> >
> > Fixes: 80f6ccf9f116 ("igb: Introduce XSK data structures and helpers")
> > Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
> > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > ---
> > v1:
> > https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flor=
e
> > .kernel.org%2Fintel-wired-lan%2F20251212131454.124116-1-&data=3D05%7C02=
%
> >
> 7Cvivek.behera%40siemens.com%7C89e4331d9dd54d83b19108de5282346c%7C38
> ae
> >
> 3bcd95794fd4addab42e1495d55a%7C1%7C0%7C639038916338104430%7CUnknow
> n%7C
> >
> TWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4
> zMi
> >
> IsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3Dm3LL7aO3Tvj9
> Kimm
> > uKo9Fgw6dEqAg%2F1pUBRzk3haioo%3D&reserved=3D0
> > vivek.behera@siemens.com/
> > v2:
> > https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flor=
e
> > .kernel.org%2Fintel-wired-lan%2F20251215115416.410619-1-&data=3D05%7C02=
%
> >
> 7Cvivek.behera%40siemens.com%7C89e4331d9dd54d83b19108de5282346c%7C38
> ae
> >
> 3bcd95794fd4addab42e1495d55a%7C1%7C0%7C639038916338132851%7CUnknow
> n%7C
> >
> TWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4
> zMi
> >
> IsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DKaVmMrku6oX
> yzlRh
> > Ii5qvgm47j5HWJ4ma601OvHysxM%3D&reserved=3D0
> > vivek.behera@siemens.com/
> > v3:
> > https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flor=
e
> > .kernel.org%2Fintel-wired-lan%2F20251220114936.140473-1-&data=3D05%7C02=
%
> >
> 7Cvivek.behera%40siemens.com%7C89e4331d9dd54d83b19108de5282346c%7C38
> ae
> >
> 3bcd95794fd4addab42e1495d55a%7C1%7C0%7C639038916338151419%7CUnknow
> n%7C
> >
> TWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4
> zMi
> >
> IsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DlTjnm324in4Zap
> H4
> > veRCyAqnkYpAgfzi1fcDpAxqmZE%3D&reserved=3D0
> > vivek.behera@siemens.com/
> > v4:
> > https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flor=
e
> > .kernel.org%2Fintel-wired-lan%2F20251222115747.230521-1-&data=3D05%7C02=
%
> >
> 7Cvivek.behera%40siemens.com%7C89e4331d9dd54d83b19108de5282346c%7C38
> ae
> >
> 3bcd95794fd4addab42e1495d55a%7C1%7C0%7C639038916338169212%7CUnknow
> n%7C
> >
> TWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4
> zMi
> >
> IsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DYE9U7UzDDE
> %2FyNc
> > tyeMkJgD8Jmdhch4TlpuovCNa4bY0%3D&reserved=3D0
> > vivek.behera@siemens.com/
> >
> > changelog:
> > v1
> > - Inital description of the Bug and fixes made in the patch
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
> > ---
> >  .../net/ethernet/intel/igb/e1000_defines.h    |  1 +
> >  drivers/net/ethernet/intel/igb/igb_xsk.c      | 75 +++++++++++++++---
> > -
> >  2 files changed, 61 insertions(+), 15 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/igb/e1000_defines.h
> > b/drivers/net/ethernet/intel/igb/e1000_defines.h
> > index fa028928482f..9357564a2d58 100644
> > --- a/drivers/net/ethernet/intel/igb/e1000_defines.h
> > +++ b/drivers/net/ethernet/intel/igb/e1000_defines.h
> > @@ -443,6 +443,7 @@
> >  #define E1000_ICS_LSC       E1000_ICR_LSC       /* Link Status Change
> > */
> >  #define E1000_ICS_RXDMT0    E1000_ICR_RXDMT0    /* rx desc min.
> > threshold */
> >  #define E1000_ICS_DRSTA     E1000_ICR_DRSTA     /* Device Reset
> > Aserted */
> > +#define E1000_ICS_TXDW      E1000_ICR_TXDW	/* Transmit desc
> > written back */
> >
> >  /* Extended Interrupt Cause Set */
> >  /* E1000_EITR_CNT_IGNR is only for 82576 and newer */ diff --git
> > a/drivers/net/ethernet/intel/igb/igb_xsk.c
> > b/drivers/net/ethernet/intel/igb/igb_xsk.c
> > index 30ce5fbb5b77..6e51b5b6f131 100644
> > --- a/drivers/net/ethernet/intel/igb/igb_xsk.c
> > +++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
> > @@ -529,6 +529,13 @@ int igb_xsk_wakeup(struct net_device *dev, u32
> > qid, u32 flags)
> >  	struct igb_adapter *adapter =3D netdev_priv(dev);
> >  	struct e1000_hw *hw =3D &adapter->hw;
> >  	struct igb_ring *ring;
> > +	struct igb_q_vector *q_vector;
> > +	struct napi_struct *rx_napi;
> > +	struct napi_struct *tx_napi;
> > +	bool trigger_irq_tx =3D false;
> > +	bool trigger_irq_rx =3D false;
> > +	u32 eics_tx =3D 0;
> > +	u32 eics_rx =3D 0;
> >  	u32 eics =3D 0;
> >
> >  	if (test_bit(__IGB_DOWN, &adapter->state)) @@ -536,27 +543,65 @@ int
> > igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
> >
> >  	if (!igb_xdp_is_enabled(adapter))
> >  		return -EINVAL;
> > -
> > -	if (qid >=3D adapter->num_tx_queues)
> > +	/* Check if queue_id is valid. Tx and Rx queue numbers are
> > always same */
> > +	if (qid >=3D adapter->num_rx_queues)
> >  		return -EINVAL;
> But the number may differ in case of reconfiguration.
Sorry but I think we had this discussion some weeks ago. The number of rx a=
nd tx queues can never be different for igb.
The driver's ethtool only supports setting combined queues. Here is the sni=
ppet from the igb_set_channels from igb_ethtool.c

/* Verify they are not requesting separate vectors */
	if (!count || ch->rx_count || ch->tx_count)
		return -EINVAL;

Consequently, it is not possible to configure different number of rx and tx=
 queues.  =20

sudo ethtool -L eno2 rx 2 tx 1
netlink error: requested channel count exceeds maximum (offset 36)
netlink error: Invalid argument

only combined option is supported

eddx@mvs:~/linux-6.18$ sudo ethtool -L eno2 combined 4
eddx@mvs:~/linux-6.18$ cat /proc/interrupts | grep eno2
 162:          1          0          0          0 IR-PCI-MSIX-0000:08:00.0 =
   0-edge      eno2
 163:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0 =
   1-edge      eno2-TxRx-0
 164:          2          0          0          0 IR-PCI-MSIX-0000:08:00.0 =
   2-edge      eno2-TxRx-1
 165:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0 =
   3-edge      eno2-TxRx-2
 166:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0 =
   4-edge      eno2-TxRx-3

However, the irq's are split over the available irq's depending on the numb=
er of combined pairs active
sudo ethtool -L eno2 combined 2
eddx@mvs:~/linux-6.18$ cat /proc/interrupts | grep eno2
 162:          1          0          0          0 IR-PCI-MSIX-0000:08:00.0 =
   0-edge      eno2
 163:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0 =
   1-edge      eno2-rx-0
 164:          2          0          0          0 IR-PCI-MSIX-0000:08:00.0 =
   2-edge      eno2-rx-1
 165:          3          0          0          0 IR-PCI-MSIX-0000:08:00.0 =
   3-edge      eno2-tx-0
 166:          5          0          0          0 IR-PCI-MSIX-0000:08:00.0 =
   4-edge      eno2-tx-1

eddx@mvs:~/linux-6.18$ sudo ethtool -L eno2 combined 3
eddx@mvs:~/linux-6.18$ cat /proc/interrupts | grep eno2
 162:          1          0          0          0 IR-PCI-MSIX-0000:08:00.0 =
   0-edge      eno2
 163:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0 =
   1-edge      eno2-TxRx-0
 164:          5          0          0          0 IR-PCI-MSIX-0000:08:00.0 =
   2-edge      eno2-TxRx-1
 165:          2          0          0          0 IR-PCI-MSIX-0000:08:00.0 =
   3-edge      eno2-TxRx-2
eddx@mvs:~/linux-6.18$ sudo ethtool -L eno2 combined 1
eddx@mvs:~/linux-6.18$ cat /proc/interrupts | grep eno2
 162:          1          0          0          0 IR-PCI-MSIX-0000:08:00.0 =
   0-edge      eno2
 163:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0 =
   1-edge      eno2-rx-0
 164:          2          0          0          0 IR-PCI-MSIX-0000:08:00.0 =
   2-edge      eno2-tx-0

So, unless I am missing something I think the current logic should be suffi=
cient.=20
> Why not:
> if (qid >=3D adapter->num_rx_queues || qid >=3D adapter->num_tx_queues)
>     return -EINVAL;
> Or add assertion that they're equal:
> if (WARN_ON(adapter->num_rx_queues !=3D adapter->num_tx_queues))
>     return -EINVAL;
Okay. I can add this.
> if (qid >=3D adapter->num_rx_queues)
>     return -EINVAL;
>=20
>=20
> > -
> > -	ring =3D adapter->tx_ring[qid];
> > -
>=20
> ...
>=20
> > --
> > 2.34.1

