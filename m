Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 990EACA871B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 05 Dec 2025 17:56:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 457D7849D4;
	Fri,  5 Dec 2025 16:56:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fgFWVxR2OIvd; Fri,  5 Dec 2025 16:56:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C3921849AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764953766;
	bh=x+Z2niArUpfD7e20DtDdCbqAs10V1X51NK17ms6fSEw=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=sC2wa8NHDBKjWvVcHU2SmZ7X7y2y1LlFAbC7UXgnZeCSZarG+USaStTpoHAnVHX6x
	 Ga2s+fd3ZLHG9V/t/CNnMYjkIzk8soW9s6pXNLuHEjhNhCUKmJ3JExs0kPDlAAZZ+t
	 oqS+WELYO/79NIMYdxpcgl8WVMbbVZCGUt2O8KFCalYpkihlYsl8RXTHeSvOLznhtW
	 9Ad/ba2ig1w0aF2H6ZfNPVljPaWE4xS9cK/HTYPheKOLQr8o5U2VGcicsbmH8hBk8O
	 vWkKGsE/pWeTT+7TycXVizvUJJ3XgSl7qyBvn/GJSvfVldDPwDKgzUseJ7G09g1jft
	 QdRBiNBP53g2w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C3921849AC;
	Fri,  5 Dec 2025 16:56:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id C6D36E7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 12:40:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9AC9A412B2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 12:40:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UtzhU2b-poKH for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Dec 2025 12:40:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.65.41;
 helo=du2pr03cu002.outbound.protection.outlook.com;
 envelope-from=vivek.behera@siemens.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 847744020C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 847744020C
Received: from DU2PR03CU002.outbound.protection.outlook.com
 (mail-northeuropeazon11011041.outbound.protection.outlook.com [52.101.65.41])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 847744020C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 12:40:02 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=A1vZynaykY5+HO0bBhst4BRoGMHceoxY53Dit76moAr9gK9eMsAfLly+gtuy4vjKmrr+VkQSOQnFcqw8lyamt2o31nTrSsAae/767yZi0Nf/gz0hJbvWjrUcrnrwBl6hzYIuDUVYiS9Z8VCfyOOvIUVwrQ6d0PK5EPHydP9XAGL1BsDTZJE3TzuSyRDe31PT9PX3l2s/yLmIF48uLDP78nCGR5vEpbHD45OtPPK9yjl2w4B1tSIJGxXeMfQpL5NxXgIkGO4Zha7TALMWNArEVxPHRKdEJMlgtr0tDNArPaRhgv2SA9TaHJwUOcgFHJzRyCdCaOnHJbsC76Q9SdS2xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k4Ftta1vA2zG9MnrDQVVUyiiZ1NwTeOK+1uRe1xJAR0=;
 b=wCwRzj+hC17aWHurB3mQn3ejFBnR9TQ95Xu62V4Trwjv+jQ6OZztMLwTbHONA7c5IMmlr/3Dk/CekKC2LbkypylSu5EFkFczWHcGKsWYfDkzpSywG7Lsq8KcE/fMqfI+epjU1QNxQ3KUcmwfWlRi7Trt1ofYbAmsEF4Rv9cno7ATKwwEksEWs3f8h743HNprmuY9KWis1/wDp5m001RAw2CesjZttgTYueeHUzJ7jo09V6UYkgvhgwkElqBgcrLpQ67WHqrv91dNeHdXtC+98rNBRJS08bWsaGwMlaUc3cumdz2HDH0FvtucL2Uf0Tbly50pO5OBILzNYhfVBk62SQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
Received: from AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:48d::20)
 by PA2PR10MB9040.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:41d::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.12; Fri, 5 Dec
 2025 12:39:59 +0000
Received: from AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::456e:d0d0:15:f4e]) by AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::456e:d0d0:15:f4e%6]) with mapi id 15.20.9388.003; Fri, 5 Dec 2025
 12:39:59 +0000
From: "Behera, VIVEK" <vivek.behera@siemens.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "\"David
 S. Miller\"" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub
 Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Behera,
 VIVEK" <vivek.behera@siemens.com>
Thread-Topic: [PATCH] igc: Fix trigger of incorrect irq in igc_xsk_wakeup
 function
Thread-Index: Adxl4xN/bKAnSLoOQiOSWfX7JfGLpg==
Date: Fri, 5 Dec 2025 12:39:59 +0000
Message-ID: <AS1PR10MB5392B7268416DB8A1624FDB88FA7A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=feb46790-5d5e-41b9-916e-56dde80d5ae3;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2025-12-05T12:16:38Z;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10, 3, 0, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS1PR10MB5392:EE_|PA2PR10MB9040:EE_
x-ms-office365-filtering-correlation-id: b5d3df39-6bf9-4a91-5770-08de33fb6713
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|8096899003|4053099003|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?oCveQxsQWJLnFsY+iwKinuetnYpQ9DcUWrZ4oxVJ9sZl/SpKUNYViJZDsTZJ?=
 =?us-ascii?Q?6CFtbfIETWlOiBKyLQv7OSHsYg9QtcQV/8FZA1waGcAMV/Ce0Se8MjcSmGA9?=
 =?us-ascii?Q?zB8ml5yyKVOz0mgbw8K86YfK0yv4/Lg8rTX0MpN4Wdyp9niOIFD9oBkp5zm/?=
 =?us-ascii?Q?pTlGKAKE/06IkBcgdX1WI6recYCCX6N0rrK+WHDL1jnjTaUHk1n8od2ZnKoI?=
 =?us-ascii?Q?Gb+43fBJcKg/iSTazqMxOdZOJCdhbeLOYSkn1wMd374zpHwLCt++Un0cbIH4?=
 =?us-ascii?Q?eztGB0qdQdfbwAHIjiRj9/YYjHRABdgNLhZTdQIMM4S9C1me6u2ezoZUEID7?=
 =?us-ascii?Q?j8gkE6kvU0xa50rGB57itC7dZYb3XiKfb/EYt9LJfRrVKS1ELUGpmWwmzG9r?=
 =?us-ascii?Q?BKatjA+vqrv+KMhC2O4p69R6tDdMFJlayeU2VPjP5VX8DAbCrwUk3s71Fl4q?=
 =?us-ascii?Q?VRzHViLGrbyYy9BzY94nA02FMDDYkmn3mnELr9WaaJ1/K5zd5MCu0gW7BMtu?=
 =?us-ascii?Q?UL+1pmHZOopl1JA1DfVrapec+ztC0EkXPtMINX1Zpj2HS93IOBxxr/LkWRlZ?=
 =?us-ascii?Q?UYyfAPuPsdK+fnwM6yIhd0WicxznZAbXVfVhcsnogbNvURzv4u/p94ODV4xK?=
 =?us-ascii?Q?uIa2MChP35Y9ChVWIWp6RQ+yXVJHi1jotoKNgXwTrd7F6Jj/nWQiPY0aEhVN?=
 =?us-ascii?Q?blPH7n03MFStcS8LV3SaLgUkxdtdaUhGg2fQlTB5FERHXHHnW0PLOdDgqXDR?=
 =?us-ascii?Q?xu7B0KtY8GFPd7nuN054g9/HfkPa6radyQTLpI+CcuxTydu0sLJOzMxsfRp9?=
 =?us-ascii?Q?+OyZayUECf9O8WQbwQOD9igAEAxmf+I8IbR3zcy1rfoIRGx8xKjhG4K/AE62?=
 =?us-ascii?Q?NGmpgIIlP5/IFVj9cikQRaBFu5gfIY3KK7dXY4ZviYPeazPIYOCXhhr/2nt9?=
 =?us-ascii?Q?6WTsVPtSIW5qIYtB4RieHHFo/wVQcCJWN7SDUHGDxUr7WRlFNFeVGLWlrfZk?=
 =?us-ascii?Q?xxTWJv6oSZSS7P52rVF8HUs/ZNd+fJRXXu5i+NtGNM9YT4+gcYYK5KnLd/tl?=
 =?us-ascii?Q?4jkwM16PvngU+Ew1OZtpsblbkVcjmcEMD4Mmb79aeMzkxj8s7R8ok+XowV72?=
 =?us-ascii?Q?ooSClSb4caBalYePSvwG+EmQB+dDzHI9dtv1QWzgE7L3Q3eri8beBWpE8v1e?=
 =?us-ascii?Q?yZrwMP3ZzDd7U6cngkmqvHoC0BZdjAAH1OZuw/XFWQAGlMWNLOHY2KODNint?=
 =?us-ascii?Q?+J+tLjiVn2FHFl4ZCbb5qHwqVSVOgO/VqaA+s1XU51ROWZ5zFiy6CQJvKRD4?=
 =?us-ascii?Q?UUdgqM1vihFnHJ2PgAV4GpAguFOriaKgK1h8z8J/JlTJl7c+nbfCfAP97qfx?=
 =?us-ascii?Q?erqI//TtemraESig1WIRMiVTyLsCvRn0KXkHoaqniIiAvXdmCutFkcOirz/W?=
 =?us-ascii?Q?RzVcm8UAmoM8FGp1NPBb21U84ezxpWRjRZ1G0dlaP+4MKJRAtkjiCLj88KM4?=
 =?us-ascii?Q?tzd12onc8oQ6ZUYNieXMihrM990BuzRlhQL/?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(8096899003)(4053099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Kj9xgy+GCMlily4oRy0fEl+wgts7QMuaqvXDrv1v1qsAamSJQjXgbWdbFVuH?=
 =?us-ascii?Q?xVeY5FE/O6h0d9j3Tv63nB6/+iHOrbY7ilNMGAp5KO+WFnCVrDHwZu2RVB75?=
 =?us-ascii?Q?LvFYloao8ozUgeVbERbg14AN9VI7D3go4d9T+UUR8a7qkvYm7JM2bet4yF2e?=
 =?us-ascii?Q?mxqQVfz0cp5d+nxWMq91edbnSp+O2wezrDaCKlcR64wqMbSkFLCRRvRIB+/1?=
 =?us-ascii?Q?GHEVDxZxLBa96m6Mz0aZJBHpOo1HvKUoaRIuXzb/SlpnE6/jkHxiYiE9bz+C?=
 =?us-ascii?Q?AxkWh43S/GfdDDQgiO7L5xRwAbKO/lMV0/yvGxdJrfwU2Q0rkkrJaX4YT+OF?=
 =?us-ascii?Q?vK0kT/3je6qGW/slGMGO85wpiTLTwbRPXQ2Q7wlkJrkom1ZC7fMhP701IehT?=
 =?us-ascii?Q?6iYl1wi9iqxRxYLtscuZBdRfB4l6izhODsV98dKjxRTrOqPnJMX9l0OqHI0f?=
 =?us-ascii?Q?8BolXhyg9UB/dCCE/THPXqyjIps2LoO5Nx1lVqlgf4aHl2eSJfcHCb0Y24ue?=
 =?us-ascii?Q?/K9g+YFhVK4VZcrLrWdcDxkb2MXtiewT9OCJ1m+J8wI8dmnF1ooIFAQYi/Ss?=
 =?us-ascii?Q?pYOUsx5wsIYvlLbqrt2hfAzT/zSGVr/f3dPa3jBXRetXjSutmQjKR1B6aa3C?=
 =?us-ascii?Q?cRVo1h/7U3inwKSKgSVCFx05DR73THBIK1s8GEapadwG9+wCznzYmGeeeK3/?=
 =?us-ascii?Q?gVXCHRHt789SPTfrWP3trcpdxLsdmEyLCXgewOqIKwu0FR4Q3Rr8dnvs93ev?=
 =?us-ascii?Q?esu1orzgANzmDwjDWsv50Br12ZZOvrz1kNd/WwSsV2hlcMg+dt2JLRxGyI/+?=
 =?us-ascii?Q?vmgoo/OHTLG8hPSTjlFeeFT6KzPGxGx20VoaoDEaPNWIrBbyv5Yta1QvmvMv?=
 =?us-ascii?Q?Dy7DM49yyBzA7J6F3Fn7pGbTpwE+MI9bUXuezHWT+IFjuiXetZDxcfyNsv9Y?=
 =?us-ascii?Q?R4FeidNBsIiBPm55dNsBvH9YSZ69DeH57xRMVAnwC6zyN1ez/IYwLvQE4Yq2?=
 =?us-ascii?Q?/N11d8Pcs7o0gWKp7OcrYdriQ/13bHtDnNfabZJttMzRFWwBRoO0RvtPiv+R?=
 =?us-ascii?Q?m/oKYkUtLCf0pWmj5+duKgHTf09/ZhtJ+sGncvP1lSq5hGVx8bIn8NWrIDTX?=
 =?us-ascii?Q?yLTjlwqOg9jzQaGts/sFmlQyWtPLt2gFWnKg4rcFn1y1jG5YqAb9WtMHwTXW?=
 =?us-ascii?Q?x+nFbnLukFn7OV9BVGxb4PO3wiHpDiZXj0ln11tu3OdNJNtcf7T5tgfcp3Q+?=
 =?us-ascii?Q?sdmU4kZGVtsA8TZ8fR2Wr/UeALKoYZWFniINRVBpUyM6zF+pZhAoP01mpsDk?=
 =?us-ascii?Q?VGFyBa2TgLvE8qiDrlDH9sEyICk+FiQ4jQ+5RulSzAEpjSZ/zXVIFLz1EpgW?=
 =?us-ascii?Q?x8otxklUjbo9FCGZuUy2eK8qDuIcuFsFmd45YJ3GosXIuzly3R9+BpPH9Fb+?=
 =?us-ascii?Q?LazjfPl4w3EIq8efl0ivA7s0OJpqtJsSZnR5rgBgmuev+aLJd76YHUD/u7na?=
 =?us-ascii?Q?Sf/0n8VV1asok8YMADvIarvtIsUk++YGH8V2so6CtL6scNpfDjbWe2IiqfRV?=
 =?us-ascii?Q?bu0heADchIC50MP0ZSJ/ov0G1fWbUTIPwyll/D/a?=
Content-Type: multipart/mixed;
 boundary="_004_AS1PR10MB5392B7268416DB8A1624FDB88FA7AAS1PR10MB5392EURP_"
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: b5d3df39-6bf9-4a91-5770-08de33fb6713
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2025 12:39:59.1753 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8TKjUZPmVU7yzUPyWhLs8g0OlPuzbWx2ZhD7iZqicx7S35fAKxxumGeRIaEgOTS7ASo2YYa9N8Cy24EsFl7CfgzZtuePlRZpY4C+NHGgsmc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA2PR10MB9040
X-Mailman-Approved-At: Fri, 05 Dec 2025 16:56:02 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=siemens.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k4Ftta1vA2zG9MnrDQVVUyiiZ1NwTeOK+1uRe1xJAR0=;
 b=WeCUEB6Qg29HgMvdwSCgwDQ1l8Gk6ymwf2xa1T7bbaPCkl2jdO3fS5OJeC3IELv1v1QkI4/s+OSGqHZD2sSMIsKs4a6xWZQJ8MtbRmLlvSK0mIx5zm2jAOO2fotKpl9Vh66iZdQfPMWbnaQuGmvgAKcPWtwXn/lpzRJLjxW7+PjPQwzCMW21fRLyszcRXXv5Gyvb237qwQ/o0LmEugb2JGBPv9croLtUbysCY0nfr03ZJQEiSwBOiZ113irfge2vCj6UKz3bBKlO/5fVI4NOjaSe46foY2o8/SRcsHf9E5q5sDceRR0iYTRZPGcCO5acCLJEkkp+2J5Sebf1L7tntQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=@siemens.com header.a=rsa-sha256
 header.s=selector2 header.b=WeCUEB6Q
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
Subject: [Intel-wired-lan] [PATCH] igc: Fix trigger of incorrect irq in
 igc_xsk_wakeup function
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

--_004_AS1PR10MB5392B7268416DB8A1624FDB88FA7AAS1PR10MB5392EURP_
Content-Type: multipart/alternative;
	boundary="_000_AS1PR10MB5392B7268416DB8A1624FDB88FA7AAS1PR10MB5392EURP_"

--_000_AS1PR10MB5392B7268416DB8A1624FDB88FA7AAS1PR10MB5392EURP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

From 4e3ebdc0af6baa83ccfc17c61c1eb61408095ffd Mon Sep 17 00:00:00 2001
From: Vivek Behera <vivek.behera@siemens.com>
Date: Fri, 5 Dec 2025 10:26:05 +0100
Subject: [PATCH] igc: Fix trigger of incorrect irq in igc_xsk_wakeup functi=
on

When the i226 is configured to use only 2 combined queues using ethtool
or in an environment with only 2 active CPU cores the 4 irq lines
are used in a split configuration with one irq
assigned to each of the two rx and tx queues
(see console output below)

sudo ethtool -l enp1s0
Channel parameters for enp1s0:
Pre-set maximums:
RX:                        n/a
TX:                         n/a
Other:                  1
Combined:        4
Current hardware settings:
RX:                        n/a
TX:                         n/a
Other:                  1
Combined:        2
eddx@mvs:~$ cat /proc/interrupts | grep enp1s0
147:          1          0  IR-PCI-MSIX-0000:01:00.0   0-edge      enp1s0
148:          8          0  IR-PCI-MSIX-0000:01:00.0   1-edge      enp1s0-r=
x-0
149:          0          0  IR-PCI-MSIX-0000:01:00.0   2-edge      enp1s0-r=
x-1
150:         26          0  IR-PCI-MSIX-0000:01:00.0   3-edge      enp1s0-t=
x-0
151:          0          0  IR-PCI-MSIX-0000:01:00.0   4-edge      enp1s0-t=
x-1

While testing with the RTC Testbench it was noticed
using the bpftrace that the
igc_xsk_wakeup when triggered by xsk_sendmsg
was triggering the incorrect irq for
tx-0(see trace below)

TIMESTAMP: 456992309829 | FUNCTION: igc_xsk_wakeup | ENTRY: RtcTxThread (PI=
D: 945) - queue_id: 0
TIMESTAMP: 456992317157 | FUNCTION: igc_poll | ENTRY: irq/148-enp1s0- (PID:=
 948)
TIMESTAMP: 456993309408 | FUNCTION: igc_xsk_wakeup | ENTRY: RtcTxThread (PI=
D: 945) - queue_id: 0
TIMESTAMP: 456993316591 | FUNCTION: igc_poll | ENTRY: irq/148-enp1s0- (PID:=
 948)
TIMESTAMP: 456994309630 | FUNCTION: igc_xsk_wakeup | ENTRY: RtcTxThread (PI=
D: 945) - queue_id: 0
TIMESTAMP: 456994316674 | FUNCTION: igc_poll | ENTRY: irq/148-enp1s0- (PID:=
 948)
TIMESTAMP: 456995309493 | FUNCTION: igc_xsk_wakeup | ENTRY: RtcTxThread (PI=
D: 945) - queue_id: 0
TIMESTAMP: 456995316593 | FUNCTION: igc_poll | ENTRY: irq/148-enp1s0- (PID:=
 948)

Due to this bug no XDP Zc send is possible in this split irq configuration.
This patch implements the correct logic of extracting the q_vectors saved
duirng the rx and tx ring allocation.
Furthermore the patch includes usage of flags provided by the ndo_xsk_wakeu=
p
api to trigger the required irq. With this patch correct irqs are triggered

cat /proc/interrupts | grep enp1s0
161:          1          0          0          0 IR-PCI-MSIX-0000:01:00.0  =
  0-edge      enp1s0
162:          2          0          0          0 IR-PCI-MSIX-0000:01:00.0  =
  1-edge      enp1s0-rx-0
163:        359          0          0          0 IR-PCI-MSIX-0000:01:00.0  =
  2-edge      enp1s0-rx-1
164:     872005          0          0          0 IR-PCI-MSIX-0000:01:00.0  =
  3-edge      enp1s0-tx-0
165:         71          0          0          0 IR-PCI-MSIX-0000:01:00.0  =
  4-edge      enp1s0-tx-1

TIMESTAMP: 149658589239205 | FUNCTION: igc_xsk_wakeup | ENTRY: RtcTxThread =
(PID: 10633) - queue_id: 0
TIMESTAMP: 149658589244662 | FUNCTION: igc_poll | ENTRY: irq/164-enp1s0- (P=
ID: 10593)
TIMESTAMP: 149658589293396 | FUNCTION: igc_poll | ENTRY: irq/164-enp1s0- (P=
ID: 10593)
TIMESTAMP: 149658589295357 | FUNCTION: xsk_tx_completed | ENTRY: irq/164-en=
p1s0- (PID: 10593) - num_entries: 61
TIMESTAMP: 149658589342151 | FUNCTION: igc_poll | ENTRY: irq/164-enp1s0- (P=
ID: 10593)
TIMESTAMP: 149658589343881 | FUNCTION: xsk_tx_completed | ENTRY: irq/164-en=
p1s0- (PID: 10593) - num_entries: 3
TIMESTAMP: 149658589391394 | FUNCTION: igc_poll | ENTRY: irq/164-enp1s0- (P=
ID: 10593)
TIMESTAMP: 149658590239215 | FUNCTION: igc_xsk_wakeup | ENTRY: RtcTxThread =
(PID: 10633) - queue_id: 0

Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
---
drivers/net/ethernet/intel/igc/igc_main.c | 31 +++++++++++++++++++----
1 file changed, 26 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethern=
et/intel/igc/igc_main.c
index 7aafa60ba0c8..0cfcd20a2536 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6930,21 +6930,42 @@ int igc_xsk_wakeup(struct net_device *dev, u32 queu=
e_id, u32 flags)
           if (!igc_xdp_is_enabled(adapter))
                       return -ENXIO;
-           if (queue_id >=3D adapter->num_rx_queues)
+          if ((flags & XDP_WAKEUP_RX) && (flags & XDP_WAKEUP_TX)) {
+                      /* If both TX and RX need to be woken up queue pair =
per IRQ is needed */
+                      if (!(adapter->flags & IGC_FLAG_QUEUE_PAIRS))
+                                  return -EINVAL; /* igc queue pairs are n=
ot activated.
+                                                          * Can't trigger =
irq
+                                                          */
+                      /* Just get the ring params from Rx */
+                      if (queue_id >=3D adapter->num_rx_queues)
+                                  return -EINVAL;
+                      ring =3D adapter->rx_ring[queue_id];
+          } else if (flags & XDP_WAKEUP_TX) {
+                      if (queue_id >=3D adapter->num_tx_queues)
+                                  return -EINVAL;
+                      /* Get the ring params from Tx */
+                      ring =3D adapter->tx_ring[queue_id];
+          } else if (flags & XDP_WAKEUP_RX) {
+                      if (queue_id >=3D adapter->num_rx_queues)
+                                  return -EINVAL;
+                      /* Get the ring params from Rx */
+                      ring =3D adapter->rx_ring[queue_id];
+          } else {
+                      /* Invalid Flags */
                       return -EINVAL;
-
-           ring =3D adapter->rx_ring[queue_id];
+          }
            if (!ring->xsk_pool)
                       return -ENXIO;
-
-           q_vector =3D adapter->q_vector[queue_id];
+          /* Retrieve the q_vector saved in the ring */
+          q_vector =3D ring->q_vector;
           if (!napi_if_scheduled_mark_missed(&q_vector->napi))
                       igc_trigger_rxtxq_interrupt(adapter, q_vector);
            return 0;
}
+
static ktime_t igc_get_tstamp(struct net_device *dev,
                                         const struct skb_shared_hwtstamps =
*hwtstamps,
                                         bool cycles)
--
2.34.1

--_000_AS1PR10MB5392B7268416DB8A1624FDB88FA7AAS1PR10MB5392EURP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Aptos;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;
	mso-ligatures:standardcontextual;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-US" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">From 4e3ebdc0af6baa83ccfc17c61c1eb61408095ffd Mon Sep=
 17 00:00:00 2001<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">From: Vivek Behera &lt;vivek.behera@siemens.com&gt;<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Date: Fri, 5 Dec 2025 10:26:05 +0100<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Subject: [PATCH] igc: Fix trigger of incorrect irq in=
 igc_xsk_wakeup function<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">When the i226 is configured to use only 2 combined qu=
eues using ethtool<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">or in an environment with only 2 active CPU cores the=
 4 irq lines<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">are used in a split configuration with one irq<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">assigned to each of the two rx and tx queues<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">(see console output below)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">sudo ethtool -l enp1s0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Channel parameters for enp1s0:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Pre-set maximums:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">RX:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; n/a<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">TX:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; n/a<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Other:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Combined:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Current hardware settings:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">RX:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; n/a<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">TX:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; n/a<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Other:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Combined:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">eddx@mvs:~$ cat /proc/interrupts | grep enp1s0<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">147:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; 1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp; IR-PC=
I-MSIX-0000:01:00.0&nbsp;&nbsp; 0-edge&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enp1s0=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">148:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; 8&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp; IR-PC=
I-MSIX-0000:01:00.0&nbsp;&nbsp; 1-edge&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enp1s0=
-rx-0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">149:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp; IR-PC=
I-MSIX-0000:01:00.0&nbsp;&nbsp; 2-edge&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enp1s0=
-rx-1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">150:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
26&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp; IR-PCI-MSI=
X-0000:01:00.0&nbsp;&nbsp; 3-edge&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enp1s0-tx-0=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">151:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp; IR-PC=
I-MSIX-0000:01:00.0&nbsp;&nbsp; 4-edge&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enp1s0=
-tx-1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">While testing with the RTC Testbench it was noticed<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">using the bpftrace that the<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">igc_xsk_wakeup when triggered by xsk_sendmsg<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">was triggering the incorrect irq for<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">tx-0(see trace below)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">TIMESTAMP: 456992309829 | FUNCTION: igc_xsk_wakeup | =
ENTRY: RtcTxThread (PID: 945) - queue_id: 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">TIMESTAMP: 456992317157 | FUNCTION: igc_poll | ENTRY:=
 irq/148-enp1s0- (PID: 948)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">TIMESTAMP: 456993309408 | FUNCTION: igc_xsk_wakeup | =
ENTRY: RtcTxThread (PID: 945) - queue_id: 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">TIMESTAMP: 456993316591 | FUNCTION: igc_poll | ENTRY:=
 irq/148-enp1s0- (PID: 948)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">TIMESTAMP: 456994309630 | FUNCTION: igc_xsk_wakeup | =
ENTRY: RtcTxThread (PID: 945) - queue_id: 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">TIMESTAMP: 456994316674 | FUNCTION: igc_poll | ENTRY:=
 irq/148-enp1s0- (PID: 948)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">TIMESTAMP: 456995309493 | FUNCTION: igc_xsk_wakeup | =
ENTRY: RtcTxThread (PID: 945) - queue_id: 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">TIMESTAMP: 456995316593 | FUNCTION: igc_poll | ENTRY:=
 irq/148-enp1s0- (PID: 948)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Due to this bug no XDP Zc send is possible in this sp=
lit irq configuration.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">This patch implements the correct logic of extracting=
 the q_vectors saved<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">duirng the rx and tx ring allocation.<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Furthermore the patch includes usage of flags provide=
d by the ndo_xsk_wakeup<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">api to trigger the required irq. With this patch corr=
ect irqs are triggered<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">cat /proc/interrupts | grep enp1s0<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">161:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; 1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; 0 IR-PCI-MSIX-0000:01:00.0&nbsp;&nbsp;&nbsp; 0-edge=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enp1s0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">162:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; 2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; 0 IR-PCI-MSIX-0000:01:00.0&nbsp;&nbsp;&nbsp; 1-edge=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enp1s0-rx-0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">163:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 359&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; 0 IR-PCI-MSIX-0000:01:00.0&nbsp;&nbsp;&nbsp; 2-edge&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; enp1s0-rx-1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">164:&nbsp;&nbsp;&nbsp;&nbsp; 872005&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0=
 IR-PCI-MSIX-0000:01:00.0&nbsp;&nbsp;&nbsp; 3-edge&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; enp1s0-tx-0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">165:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
71&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; 0 IR-PCI-MSIX-0000:01:00.0&nbsp;&nbsp;&nbsp; 4-edge&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; enp1s0-tx-1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">TIMESTAMP: 149658589239205 | FUNCTION: igc_xsk_wakeup=
 | ENTRY: RtcTxThread (PID: 10633) - queue_id: 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">TIMESTAMP: 149658589244662 | FUNCTION: igc_poll | ENT=
RY: irq/164-enp1s0- (PID: 10593)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">TIMESTAMP: 149658589293396 | FUNCTION: igc_poll | ENT=
RY: irq/164-enp1s0- (PID: 10593)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">TIMESTAMP: 149658589295357 | FUNCTION: xsk_tx_complet=
ed | ENTRY: irq/164-enp1s0- (PID: 10593) - num_entries: 61<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">TIMESTAMP: 149658589342151 | FUNCTION: igc_poll | ENT=
RY: irq/164-enp1s0- (PID: 10593)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">TIMESTAMP: 149658589343881 | FUNCTION: xsk_tx_complet=
ed | ENTRY: irq/164-enp1s0- (PID: 10593) - num_entries: 3<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">TIMESTAMP: 149658589391394 | FUNCTION: igc_poll | ENT=
RY: irq/164-enp1s0- (PID: 10593)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">TIMESTAMP: 149658590239215 | FUNCTION: igc_xsk_wakeup=
 | ENTRY: RtcTxThread (PID: 10633) - queue_id: 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Signed-off-by: Vivek Behera &lt;vivek.behera@siemens.=
com&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">---<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">drivers/net/ethernet/intel/igc/igc_main.c | 31 ++++++=
+++++++++++++----<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">1 file changed, 26 insertions(+), 5 deletions(-)<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">diff --git a/drivers/net/ethernet/intel/igc/igc_main.=
c b/drivers/net/ethernet/intel/igc/igc_main.c<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">index 7aafa60ba0c8..0cfcd20a2536 100644<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">--- a/drivers/net/ethernet/intel/igc/igc_main.c<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+++ b/drivers/net/ethernet/intel/igc/igc_main.c<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">@@ -6930,21 +6930,42 @@ int igc_xsk_wakeup(struct net=
_device *dev, u32 queue_id, u32 flags)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; if (!igc_xdp_is_enabled(adapter))<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; return -ENXIO;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; if (queue_id &gt;=3D adapter-&gt;num_rx_queues)<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; if ((flags &amp; XDP_WAKEUP_RX) &amp;&amp; (flags &amp; XDP_WAKEUP_TX)) =
{<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
/* If both TX and RX need to be woken up queue pair per IRQ is needed */<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
if (!(adapter-&gt;flags &amp; IGC_FLAG_QUEUE_PAIRS))<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret=
urn -EINVAL; /* igc queue pairs are not activated.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * Can't t=
rigger irq<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
/* Just get the ring params from Rx */<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
if (queue_id &gt;=3D adapter-&gt;num_rx_queues)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret=
urn -EINVAL;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
ring =3D adapter-&gt;rx_ring[queue_id];<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; } else if (flags &amp; XDP_WAKEUP_TX) {<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
if (queue_id &gt;=3D adapter-&gt;num_tx_queues)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret=
urn -EINVAL;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
/* Get the ring params from Tx */<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
ring =3D adapter-&gt;tx_ring[queue_id];<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; } else if (flags &amp; XDP_WAKEUP_RX) {<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
if (queue_id &gt;=3D adapter-&gt;num_rx_queues)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret=
urn -EINVAL;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
/* Get the ring params from Rx */<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
ring =3D adapter-&gt;rx_ring[queue_id];<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; } else {<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
/* Invalid Flags */<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; return -EINVAL;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">-<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; ring =3D adapter-&gt;rx_ring[queue_id];<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; }<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; if (!ring-&gt;xsk_pool)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; return -ENXIO;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">-<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; q_vector =3D adapter-&gt;q_vector[queue_id];<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; /* Retrieve the q_vector saved in the ring */<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; q_vector =3D ring-&gt;q_vector;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; if (!napi_if_scheduled_mark_missed(&amp;q_vector-&gt;napi))<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; igc_trigger_rxtxq_interrupt(adapter, q_vector);<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; return 0;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">}<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">+<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">static ktime_t igc_get_tstamp(struct net_device *dev,=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;const struct skb_shared_hwtstamps *hw=
tstamps,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;bool cycles)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">--
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">2.34.1<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_AS1PR10MB5392B7268416DB8A1624FDB88FA7AAS1PR10MB5392EURP_--

--_004_AS1PR10MB5392B7268416DB8A1624FDB88FA7AAS1PR10MB5392EURP_
Content-Type: application/octet-stream;
	name="0001-igc-Fix-trigger-of-incorrect-irq-in-igc_xsk_wakeup-f.patch"
Content-Description:  0001-igc-Fix-trigger-of-incorrect-irq-in-igc_xsk_wakeup-f.patch
Content-Disposition: attachment;
	filename="0001-igc-Fix-trigger-of-incorrect-irq-in-igc_xsk_wakeup-f.patch";
	size=5711; creation-date="Fri, 05 Dec 2025 11:44:00 GMT";
	modification-date="Fri, 05 Dec 2025 12:39:58 GMT"
Content-Transfer-Encoding: base64

RnJvbSA0ZTNlYmRjMGFmNmJhYTgzY2NmYzE3YzYxYzFlYjYxNDA4MDk1ZmZkIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBWaXZlayBCZWhlcmEgPHZpdmVrLmJlaGVyYUBzaWVtZW5zLmNv
bT4KRGF0ZTogRnJpLCA1IERlYyAyMDI1IDEwOjI2OjA1ICswMTAwClN1YmplY3Q6IFtQQVRDSF0g
aWdjOiBGaXggdHJpZ2dlciBvZiBpbmNvcnJlY3QgaXJxIGluIGlnY194c2tfd2FrZXVwIGZ1bmN0
aW9uCgpXaGVuIHRoZSBpMjI2IGlzIGNvbmZpZ3VyZWQgdG8gdXNlIG9ubHkgMiBjb21pbmVkIHF1
ZXVlcyB1c2luZyBldGh0b29sCm9yIGluIGFuIGVudmlyb25tZW50IHdpdGggb25seSAyIGFjdGl2
ZSBDUFUgY29yZXMgdGhlIDQgaXJxIGxpbmVzCmFyZSB1c2VkIGluIGEgc3BsaXQgY29uZmlndXJh
dGlvbiB3aXRoIG9uZSBpcnEKYXNzaWduZWQgdG8gZWFjaCBvZiB0aGUgdHdvIHJ4IGFuZCB0eCBx
dWV1ZXMKKHNlZSBjb25zb2xlIG91dHB1dCBiZWxvdykKCnN1ZG8gZXRodG9vbCAtbCBlbnAxczAK
Q2hhbm5lbCBwYXJhbWV0ZXJzIGZvciBlbnAxczA6ClByZS1zZXQgbWF4aW11bXM6ClJYOiAgICAg
ICAgICAgICAgICAgICAgICAgIG4vYQpUWDogICAgICAgICAgICAgICAgICAgICAgICAgbi9hCk90
aGVyOiAgICAgICAgICAgICAgICAgIDEKQ29tYmluZWQ6ICAgICAgICA0CkN1cnJlbnQgaGFyZHdh
cmUgc2V0dGluZ3M6ClJYOiAgICAgICAgICAgICAgICAgICAgICAgIG4vYQpUWDogICAgICAgICAg
ICAgICAgICAgICAgICAgbi9hCk90aGVyOiAgICAgICAgICAgICAgICAgIDEKQ29tYmluZWQ6ICAg
ICAgICAyCmVkZHhAbXZzOn4kIGNhdCAvcHJvYy9pbnRlcnJ1cHRzIHwgZ3JlcCBlbnAxczAKMTQ3
OiAgICAgICAgICAxICAgICAgICAgIDAgIElSLVBDSS1NU0lYLTAwMDA6MDE6MDAuMCAgIDAtZWRn
ZSAgICAgIGVucDFzMAoxNDg6ICAgICAgICAgIDggICAgICAgICAgMCAgSVItUENJLU1TSVgtMDAw
MDowMTowMC4wICAgMS1lZGdlICAgICAgZW5wMXMwLXJ4LTAKMTQ5OiAgICAgICAgICAwICAgICAg
ICAgIDAgIElSLVBDSS1NU0lYLTAwMDA6MDE6MDAuMCAgIDItZWRnZSAgICAgIGVucDFzMC1yeC0x
CjE1MDogICAgICAgICAyNiAgICAgICAgICAwICBJUi1QQ0ktTVNJWC0wMDAwOjAxOjAwLjAgICAz
LWVkZ2UgICAgICBlbnAxczAtdHgtMAoxNTE6ICAgICAgICAgIDAgICAgICAgICAgMCAgSVItUENJ
LU1TSVgtMDAwMDowMTowMC4wICAgNC1lZGdlICAgICAgZW5wMXMwLXR4LTEKCldoaWxlIHRlc3Rp
bmcgd2l0aCB0aGUgUlRDIFRlc3RiZW5jaCBpdCB3YXMgbm90aWNlZAp1c2luZyB0aGUgYnBmdHJh
Y2UgdGhhdCB0aGUKaWdjX3hza193YWtldXAgd2hlbiB0cmlnZ2VyZWQgYnkgeHNrX3NlbmRtc2cK
d2FzIHRyaWdnZXJpbmcgdGhlIGluY29ycmVjdCBpcnEgZm9yCnR4LTAoc2VlIHRyYWNlIGJlbG93
KQoKVElNRVNUQU1QOiA0NTY5OTIzMDk4MjkgfCBGVU5DVElPTjogaWdjX3hza193YWtldXAgfCBF
TlRSWTogUnRjVHhUaHJlYWQgKFBJRDogOTQ1KSAtIHF1ZXVlX2lkOiAwClRJTUVTVEFNUDogNDU2
OTkyMzE3MTU3IHwgRlVOQ1RJT046IGlnY19wb2xsIHwgRU5UUlk6IGlycS8xNDgtZW5wMXMwLSAo
UElEOiA5NDgpClRJTUVTVEFNUDogNDU2OTkzMzA5NDA4IHwgRlVOQ1RJT046IGlnY194c2tfd2Fr
ZXVwIHwgRU5UUlk6IFJ0Y1R4VGhyZWFkIChQSUQ6IDk0NSkgLSBxdWV1ZV9pZDogMApUSU1FU1RB
TVA6IDQ1Njk5MzMxNjU5MSB8IEZVTkNUSU9OOiBpZ2NfcG9sbCB8IEVOVFJZOiBpcnEvMTQ4LWVu
cDFzMC0gKFBJRDogOTQ4KQpUSU1FU1RBTVA6IDQ1Njk5NDMwOTYzMCB8IEZVTkNUSU9OOiBpZ2Nf
eHNrX3dha2V1cCB8IEVOVFJZOiBSdGNUeFRocmVhZCAoUElEOiA5NDUpIC0gcXVldWVfaWQ6IDAK
VElNRVNUQU1QOiA0NTY5OTQzMTY2NzQgfCBGVU5DVElPTjogaWdjX3BvbGwgfCBFTlRSWTogaXJx
LzE0OC1lbnAxczAtIChQSUQ6IDk0OCkKVElNRVNUQU1QOiA0NTY5OTUzMDk0OTMgfCBGVU5DVElP
TjogaWdjX3hza193YWtldXAgfCBFTlRSWTogUnRjVHhUaHJlYWQgKFBJRDogOTQ1KSAtIHF1ZXVl
X2lkOiAwClRJTUVTVEFNUDogNDU2OTk1MzE2NTkzIHwgRlVOQ1RJT046IGlnY19wb2xsIHwgRU5U
Ulk6IGlycS8xNDgtZW5wMXMwLSAoUElEOiA5NDgpCgpEdWUgdG8gdGhpcyBidWcgbm8gWERQIFpj
IHNlbmQgaXMgcG9zc2libGUgaW4gdGhpcyBzcGxpdCBpcnEgY29uZmlndXJhdGlvbi4KVGhpcyBw
YXRjaCBpbXBsZW1lbnRzIHRoZSBjb3JyZWN0IGxvZ2ljIG9mIGV4dHJhY3RpbmcgdGhlIHFfdmVj
dG9ycyBzYXZlZApkdWlybmcgdGhlIHJ4IGFuZCB0eCByaW5nIGFsbG9jYXRpb24uCkZ1cnRoZXJt
b3JlIHRoZSBwYXRjaCBpbmNsdWRlcyB1c2FnZSBvZiBmbGFncyBwcm92aWRlZCBieSB0aGUgbmRv
X3hza193YWtldXAKYXBpIHRvIHRyaWdnZXIgdGhlIHJlcXVpcmVkIGlycS4gV2l0aCB0aGlzIHBh
dGNoIGNvcnJlY3QgaXJxcyBhcmUgdHJpZ2dlcmVkCgpjYXQgL3Byb2MvaW50ZXJydXB0cyB8IGdy
ZXAgZW5wMXMwCiAxNjE6ICAgICAgICAgIDEgICAgICAgICAgMCAgICAgICAgICAwICAgICAgICAg
IDAgSVItUENJLU1TSVgtMDAwMDowMTowMC4wICAgIDAtZWRnZSAgICAgIGVucDFzMAogMTYyOiAg
ICAgICAgICAyICAgICAgICAgIDAgICAgICAgICAgMCAgICAgICAgICAwIElSLVBDSS1NU0lYLTAw
MDA6MDE6MDAuMCAgICAxLWVkZ2UgICAgICBlbnAxczAtcngtMAogMTYzOiAgICAgICAgMzU5ICAg
ICAgICAgIDAgICAgICAgICAgMCAgICAgICAgICAwIElSLVBDSS1NU0lYLTAwMDA6MDE6MDAuMCAg
ICAyLWVkZ2UgICAgICBlbnAxczAtcngtMQogMTY0OiAgICAgODcyMDA1ICAgICAgICAgIDAgICAg
ICAgICAgMCAgICAgICAgICAwIElSLVBDSS1NU0lYLTAwMDA6MDE6MDAuMCAgICAzLWVkZ2UgICAg
ICBlbnAxczAtdHgtMAogMTY1OiAgICAgICAgIDcxICAgICAgICAgIDAgICAgICAgICAgMCAgICAg
ICAgICAwIElSLVBDSS1NU0lYLTAwMDA6MDE6MDAuMCAgICA0LWVkZ2UgICAgICBlbnAxczAtdHgt
MQoKVElNRVNUQU1QOiAxNDk2NTg1ODkyMzkyMDUgfCBGVU5DVElPTjogaWdjX3hza193YWtldXAg
fCBFTlRSWTogUnRjVHhUaHJlYWQgKFBJRDogMTA2MzMpIC0gcXVldWVfaWQ6IDAKVElNRVNUQU1Q
OiAxNDk2NTg1ODkyNDQ2NjIgfCBGVU5DVElPTjogaWdjX3BvbGwgfCBFTlRSWTogaXJxLzE2NC1l
bnAxczAtIChQSUQ6IDEwNTkzKQpUSU1FU1RBTVA6IDE0OTY1ODU4OTI5MzM5NiB8IEZVTkNUSU9O
OiBpZ2NfcG9sbCB8IEVOVFJZOiBpcnEvMTY0LWVucDFzMC0gKFBJRDogMTA1OTMpClRJTUVTVEFN
UDogMTQ5NjU4NTg5Mjk1MzU3IHwgRlVOQ1RJT046IHhza190eF9jb21wbGV0ZWQgfCBFTlRSWTog
aXJxLzE2NC1lbnAxczAtIChQSUQ6IDEwNTkzKSAtIG51bV9lbnRyaWVzOiA2MQpUSU1FU1RBTVA6
IDE0OTY1ODU4OTM0MjE1MSB8IEZVTkNUSU9OOiBpZ2NfcG9sbCB8IEVOVFJZOiBpcnEvMTY0LWVu
cDFzMC0gKFBJRDogMTA1OTMpClRJTUVTVEFNUDogMTQ5NjU4NTg5MzQzODgxIHwgRlVOQ1RJT046
IHhza190eF9jb21wbGV0ZWQgfCBFTlRSWTogaXJxLzE2NC1lbnAxczAtIChQSUQ6IDEwNTkzKSAt
IG51bV9lbnRyaWVzOiAzClRJTUVTVEFNUDogMTQ5NjU4NTg5MzkxMzk0IHwgRlVOQ1RJT046IGln
Y19wb2xsIHwgRU5UUlk6IGlycS8xNjQtZW5wMXMwLSAoUElEOiAxMDU5MykKVElNRVNUQU1QOiAx
NDk2NTg1OTAyMzkyMTUgfCBGVU5DVElPTjogaWdjX3hza193YWtldXAgfCBFTlRSWTogUnRjVHhU
aHJlYWQgKFBJRDogMTA2MzMpIC0gcXVldWVfaWQ6IDAKClNpZ25lZC1vZmYtYnk6IFZpdmVrIEJl
aGVyYSA8dml2ZWsuYmVoZXJhQHNpZW1lbnMuY29tPgotLS0KIGRyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2lnYy9pZ2NfbWFpbi5jIHwgMzEgKysrKysrKysrKysrKysrKysrKy0tLS0KIDEgZmls
ZSBjaGFuZ2VkLCAyNiBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfbWFpbi5jIGIvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMKaW5kZXggN2FhZmE2MGJhMGM4Li4wY2ZjZDIw
YTI1MzYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfbWFp
bi5jCisrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfbWFpbi5jCkBAIC02
OTMwLDIxICs2OTMwLDQyIEBAIGludCBpZ2NfeHNrX3dha2V1cChzdHJ1Y3QgbmV0X2RldmljZSAq
ZGV2LCB1MzIgcXVldWVfaWQsIHUzMiBmbGFncykKIAlpZiAoIWlnY194ZHBfaXNfZW5hYmxlZChh
ZGFwdGVyKSkKIAkJcmV0dXJuIC1FTlhJTzsKIAotCWlmIChxdWV1ZV9pZCA+PSBhZGFwdGVyLT5u
dW1fcnhfcXVldWVzKQorCWlmICgoZmxhZ3MgJiBYRFBfV0FLRVVQX1JYKSAmJiAoZmxhZ3MgJiBY
RFBfV0FLRVVQX1RYKSkgeworCQkvKiBJZiBib3RoIFRYIGFuZCBSWCBuZWVkIHRvIGJlIHdva2Vu
IHVwIHF1ZXVlIHBhaXIgcGVyIElSUSBpcyBuZWVkZWQgKi8KKwkJaWYgKCEoYWRhcHRlci0+Zmxh
Z3MgJiBJR0NfRkxBR19RVUVVRV9QQUlSUykpCisJCQlyZXR1cm4gLUVJTlZBTDsgLyogaWdjIHF1
ZXVlIHBhaXJzIGFyZSBub3QgYWN0aXZhdGVkLgorCQkJCQkgKiBDYW4ndCB0cmlnZ2VyIGlycQor
CQkJCQkgKi8KKwkJLyogSnVzdCBnZXQgdGhlIHJpbmcgcGFyYW1zIGZyb20gUnggKi8KKwkJaWYg
KHF1ZXVlX2lkID49IGFkYXB0ZXItPm51bV9yeF9xdWV1ZXMpCisJCQlyZXR1cm4gLUVJTlZBTDsK
KwkJcmluZyA9IGFkYXB0ZXItPnJ4X3JpbmdbcXVldWVfaWRdOworCX0gZWxzZSBpZiAoZmxhZ3Mg
JiBYRFBfV0FLRVVQX1RYKSB7CisJCWlmIChxdWV1ZV9pZCA+PSBhZGFwdGVyLT5udW1fdHhfcXVl
dWVzKQorCQkJcmV0dXJuIC1FSU5WQUw7CisJCS8qIEdldCB0aGUgcmluZyBwYXJhbXMgZnJvbSBU
eCAqLworCQlyaW5nID0gYWRhcHRlci0+dHhfcmluZ1txdWV1ZV9pZF07CisJfSBlbHNlIGlmIChm
bGFncyAmIFhEUF9XQUtFVVBfUlgpIHsKKwkJaWYgKHF1ZXVlX2lkID49IGFkYXB0ZXItPm51bV9y
eF9xdWV1ZXMpCisJCQlyZXR1cm4gLUVJTlZBTDsKKwkJLyogR2V0IHRoZSByaW5nIHBhcmFtcyBm
cm9tIFJ4ICovCisJCXJpbmcgPSBhZGFwdGVyLT5yeF9yaW5nW3F1ZXVlX2lkXTsKKwl9IGVsc2Ug
eworCQkvKiBJbnZhbGlkIEZsYWdzICovCiAJCXJldHVybiAtRUlOVkFMOwotCi0JcmluZyA9IGFk
YXB0ZXItPnJ4X3JpbmdbcXVldWVfaWRdOworCX0KIAogCWlmICghcmluZy0+eHNrX3Bvb2wpCiAJ
CXJldHVybiAtRU5YSU87Ci0KLQlxX3ZlY3RvciA9IGFkYXB0ZXItPnFfdmVjdG9yW3F1ZXVlX2lk
XTsKKwkvKiBSZXRyaWV2ZSB0aGUgcV92ZWN0b3Igc2F2ZWQgaW4gdGhlIHJpbmcgKi8KKwlxX3Zl
Y3RvciA9IHJpbmctPnFfdmVjdG9yOwogCWlmICghbmFwaV9pZl9zY2hlZHVsZWRfbWFya19taXNz
ZWQoJnFfdmVjdG9yLT5uYXBpKSkKIAkJaWdjX3RyaWdnZXJfcnh0eHFfaW50ZXJydXB0KGFkYXB0
ZXIsIHFfdmVjdG9yKTsKIAogCXJldHVybiAwOwogfQogCisKIHN0YXRpYyBrdGltZV90IGlnY19n
ZXRfdHN0YW1wKHN0cnVjdCBuZXRfZGV2aWNlICpkZXYsCiAJCQkgICAgICBjb25zdCBzdHJ1Y3Qg
c2tiX3NoYXJlZF9od3RzdGFtcHMgKmh3dHN0YW1wcywKIAkJCSAgICAgIGJvb2wgY3ljbGVzKQot
LSAKMi4zNC4xCgo=

--_004_AS1PR10MB5392B7268416DB8A1624FDB88FA7AAS1PR10MB5392EURP_--
