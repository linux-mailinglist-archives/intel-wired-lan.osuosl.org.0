Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UFU6KmUqimm6HwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 09 Feb 2026 19:41:41 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D702113AF6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 09 Feb 2026 19:41:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5C95583BD9;
	Mon,  9 Feb 2026 18:41:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yf17m4VM9XPP; Mon,  9 Feb 2026 18:41:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 63BB683C0E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770662489;
	bh=s1QESa/MbosOGVwqqQRjSoMSoH/kPnhascspn4JCiMI=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=QPk/LGkKuMuR7S9U5U7zWtm0WJgOzkf1E46rlv4zoshTOac2ZAS7isyGaoziqknqZ
	 1WiAydbyzYrTxjgppd4X9deBgFKImvgunFWJAHaTRQW54qHfp9lO6vnAT6jsnZxTGe
	 kucFB3Z9T2N7iOKpTs7gCvnG6dmwsTTQubJZDv/sqqKfYuu3HVoYrU/70X68oaVA5s
	 CO/YBQxnGILPrTKFZibZrzoUCGSUCjwrw04K/7XR/Vdi0F9+NDzexDWTNAvfFwPEZK
	 Je1OfDId0UznRVLvpxVDoypNmGi1n9haa08D/eFHGDw+euh+F9vFCDRMiUOFb70O9m
	 y09km2HHRy6qw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 63BB683C0E;
	Mon,  9 Feb 2026 18:41:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 65628219
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Feb 2026 12:08:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 471F740BDD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Feb 2026 12:08:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id odDVQA8cxI4i for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Feb 2026 12:08:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.103.10.22;
 helo=mw6pr02cu001.outbound.protection.outlook.com;
 envelope-from=harshankmatkar1304@outlook.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4278740BB8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4278740BB8
Received: from MW6PR02CU001.outbound.protection.outlook.com
 (mail-westus2azolkn19012022.outbound.protection.outlook.com [52.103.10.22])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4278740BB8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Feb 2026 12:08:49 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CPGe/i9XIJnUkcAIDVtTFdtB0LGFRRYW9pz9O8JCMLTzZTTymRQQklYg8KaU5QuJvGcoviyvbqoOS68Nj/9NjZbWXtDRy/qAJeXRxD1lJ4Xzfh+txzQfEtGLXbAEls4N0E9D92jaWOGr7dd9Bsc+1mN1IuT3ix0Nt3r4FO7FCekCEyKaWgGZrWnUZtb/C4M7tVQPc93bMyqdSquJd1DgGeH3erbF+lk7x9qaH6XXfoP4a/g/aNAd0KPJhtHp9AmgLYcOVDDJi135KXjbHTl+6oYTNgK/F/kqjV8yEc8LPIi15XOaB/e+3ZjStVGMU7HoiEZ4vTidFToq1A23KnCc2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s1QESa/MbosOGVwqqQRjSoMSoH/kPnhascspn4JCiMI=;
 b=Fy/TUgGaHuM4ata5jc804oOe42FWoe2jW9bp7Js0Yh0yAVB9KEqiyJNcbKseyuPPQMoyNTSHIL1jhtDW46FY0W6aAtMpXj3puUCYgsAIViNz/QTyK4wqEgjo4a2DFKmpaGQh7MJobbWhDxsRM32GxZw0ACHIkVr5WNyIwl2lRodus+L8HbJ5MXaYh/yVpumh5/Z7P0OJWSEyBy3H89/t6XzBC/Ma976/s70iV4GCna3KGUNVLTqEP9flllZ2wlGVBBHSHQtFXD6Cloxn/5goRCpbTTlJ+jR3xrivU0DO9wB+xl5B0ZzA6DCAOJZ60kyNRI/C/TxGmYAeo7bGBrvpkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from MN2PR14MB2638.namprd14.prod.outlook.com (2603:10b6:208:cc::16)
 by BY1PR14MB7125.namprd14.prod.outlook.com (2603:10b6:a03:52e::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.16; Mon, 9 Feb
 2026 12:08:46 +0000
Received: from MN2PR14MB2638.namprd14.prod.outlook.com
 ([fe80::101a:ee9b:a260:5e50]) by MN2PR14MB2638.namprd14.prod.outlook.com
 ([fe80::101a:ee9b:a260:5e50%6]) with mapi id 15.20.9587.017; Mon, 9 Feb 2026
 12:08:46 +0000
From: Harshank Matkar <harshankmatkar1304@outlook.com>
To: "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>,
 "przemyslaw.kitszel@intel.com" <przemyslaw.kitszel@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Harshank Matkar
 <harshankmatkar1304@outlook.com>
Thread-Topic: [PATCH] igc: Add PCIe link recovery for I225/I226
Thread-Index: AQHcmbzXc3p+n5zUJUKDNFrykiLBQQ==
Date: Mon, 9 Feb 2026 12:08:45 +0000
Message-ID: <20260209120815.29545-1-harshankmatkar1304@outlook.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR14MB2638:EE_|BY1PR14MB7125:EE_
x-ms-office365-filtering-correlation-id: 4c2ff9e5-a73d-4169-d5e8-08de67d3f9d9
x-microsoft-antispam: BCL:0;
 ARA:14566002|8062599012|8060799015|38102599003|461199028|41001999006|31061999003|15080799012|12121999013|51005399006|19110799012|440099028|3412199025|102099032|40105399003|1710799026;
x-microsoft-antispam-message-info: =?utf-8?B?NTBXTVFFM0VkL1hFQnhXaFhjRXgyNGFUTk95RkhmTzJ6NUpPL3JXeHlKYkVi?=
 =?utf-8?B?NnVzMVYrMXNFQ3ByVWpUSGllaFM3YldibVlRaEppbnliUXlCT2J1cFN3cldT?=
 =?utf-8?B?bjBBQ21NQ0hGWDNoZEhuTUdxNUlwWFFmeGJjQ0htZVBOODhGQ3VFMjhEL2tI?=
 =?utf-8?B?STJrbFhSRnVmVTdKdXFMcVdEUDBGaUEwUi9jakl5bmpZbGVLc2lBK3VBM050?=
 =?utf-8?B?UlVXU0hWb2ZrODYwSUpPNkZkS1JYSmNMRmNYbVBWekNwcUZqQjVkWXY2WVpC?=
 =?utf-8?B?ZUpRWVdqOG83TEM1bXkvREcxMVM0NlR5Wm5tTzdoTWFPQndkM09CTjIzM2M1?=
 =?utf-8?B?cFk4SjFSOEJmOXMwNTBOMVJSVitTb1RXUjVFMzJFTWVrM3JNR3BqdEp1K2dw?=
 =?utf-8?B?bldpYWsvd29pQVZ2ODJOamRnQmFPQS9qdTZGSWJHOVRqTkt1Mm8rL3ZjTWZr?=
 =?utf-8?B?a2kvb3VoTnZHdkF0U1hiR1puRi9qRXlDZmVHcktBTUtYeXp0MFBGQXhMbE94?=
 =?utf-8?B?bWtMNkRQUHRKRU5IVUhlbHJISUJSL1lEaU03c2QrMnQ0NXc0THY5Qkdkdy94?=
 =?utf-8?B?bTc3bElIU1E4TS9YQ2EveFlaeWRMSWx6ZFBHVlNNaEFVMFR6ajdCejFlWWg5?=
 =?utf-8?B?T0Z3MHFZdXFrVXkyR25kaWZ6RzlZUVozQmdFb01Qd29YRjQyU29xWnRqc3BK?=
 =?utf-8?B?amQ2dWxPM2tsdFpEK0FlU3VZRVJhbUpINTdMdllWQnN5T0hBbjRNWnlnODJF?=
 =?utf-8?B?SmZVVmNmdUFUTWs1MnEzUGZYOEdXMm9xU25zSHFNQlJHMmNpd2FvdDZSMTNi?=
 =?utf-8?B?d2oyeEJTclpWOFBUR0prSHFDOVRSblQ2OVVaWnJlc090MTBhemdsOWtHSkZv?=
 =?utf-8?B?dEpXcG1FNW1UM2dqVFRqQituZXFQVE9uTGdNTllaTGlMUzFEV1UvMHhSNk9J?=
 =?utf-8?B?b2toVjdDRHFLWmhxaW96SGJUa0V4ZTdsMXIwOEZnaXJXdVZMeVBaWmF3dG9E?=
 =?utf-8?B?Q1V2MlM2T2FIRTU4a1ViRHhrNjg3dlMxZTFTSitKWS9XTFdzUHFHS2Q1cEp0?=
 =?utf-8?B?NzZYeXVlSWMybHpMYmxic1JKU0pGUldvTUdFeERJMUc1OFdiU1dPUlV0b3NZ?=
 =?utf-8?B?ZGVvbmtSaUZaQWgzUWl5eDJZekZPMDlUbHRyTWZHS2hWZnJoU3lTUEpyQnhY?=
 =?utf-8?B?ajNlL2xDZ2dTVFdDdUZ4a1FtcFlWZEJXczFxYUxkVEhpYkFGd0JEaklmZm5L?=
 =?utf-8?B?TW1rUHVVVnFvMXQ3MFVFdDZtVU5VTmgzR0daT0VVVkFDUEF0aS9RMFg2QTl4?=
 =?utf-8?B?K0hNbmx2TmN3OFJ2YVJuNHI4U2lHMWNKNENpK3dxZmcxb0UycjUyUkkwbHlQ?=
 =?utf-8?B?b1BUS0pKKy95WHVzRC9kTi9tdkdEZXZLV0hNRU43SFg2MERHK0VHYkdjUUhH?=
 =?utf-8?B?TUdVMloxM1hjakduNG40N1ZRZys5aVZWeEtoRVNRWi9yeTZuZUhDVmVhNjlO?=
 =?utf-8?B?ZUdHamFXdnhKMm8ydk1xV2dLaDVZQk91MVhYSnh6eVZRcEw0Z0tOaHEyTzA3?=
 =?utf-8?B?UG9tVVRuQVppNHJVRDZKb3lNdSt1c1lnNWtIVDllejlXM2xQKzFXY2J4a3FN?=
 =?utf-8?B?T20zS1c1bWR3SW8wbUdDYkRjVG5yWW9ER05vR0dMVnNodTJTdzUzaS81ejlt?=
 =?utf-8?B?aDVPNEdFQVY0TEJVZWhUWExiSml6bUMxV3BKQVludXJaZFBYNVZEWEpMWUJF?=
 =?utf-8?Q?5HG+GzJIFErZv7MeyU=3D?=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MnRVK1dXcDZIY1pheE9lNjRrb2sxSExxWllMS09VTXAzMDhqTTZONkJzTUZw?=
 =?utf-8?B?Q25ibmUxUkRZU1Z1VkRlMHgwNjVJNFZVbVluNTlvYStKMGFiZE9pcVNxVnFF?=
 =?utf-8?B?eklrK0h6bTYraFZFVEkrdU5rMnYwUVV2TTN1cDFaSVFHeHdKdWNLRlVsa1NQ?=
 =?utf-8?B?STE4RmRFUXIxa1RKanVOZFpTcm0vKytqNWFTOURxVWQydVJCRnl5RXBta1NX?=
 =?utf-8?B?aHZrc2ZPRGYzTCs4NUhYOE5yaDFLc2wzMVUwUWJNVVRjUHRwUkRBZDlCM05y?=
 =?utf-8?B?K2w1b05hdUQ1VUlRbU15MGxXZzBwNEVkZjZMcEhRTS9xMUVrbGcyemJOb3ly?=
 =?utf-8?B?Q3JjSEoyU0N0Q0xrTkhwMEl1NTh3VkVCRENXVGRIN3NjK2ZQZmoyTEdMWDZS?=
 =?utf-8?B?eXZPb0QzZnlyNXJpM1pSdUg0SVJNcTFQUHJWNGRnaEhoMFFJRElMbFhDblEv?=
 =?utf-8?B?WHpaZkl2NW9oUTJjTXdEeDFqZlNpeVN0NXZBL1ZpSjVEWUtzQXhlblZLV2k4?=
 =?utf-8?B?RGZJclQ4Q1FvY2dQOFFTUkVxbU5mbnh1V3l0Wm1BQlVHZXpQQXpsNFJQNkFq?=
 =?utf-8?B?eXBiNFUrTkl3aFZjL3ZENHJlM3lubTFjYVljRDJGMmFRUW12Q1hKK2hxK1Jt?=
 =?utf-8?B?N1JDbkdaZTVFWkttY2VTSlJPNWJ1MXc4d2NIOVdZMWhoaHltalQ0M2F3a2hp?=
 =?utf-8?B?NHN5MUF3eFl6ZzVCSUNVTTRaeUpQRGljNnFGZkFKTnBZZ2Z3VWVXNmpXZE1U?=
 =?utf-8?B?ekM5S2JTVGh2UDlqMVJaMGt4SWJXZ3FoZEExU2V0UFpMVWp2TTd3dXpiRFdS?=
 =?utf-8?B?UVRhOVFKUkhFL2lsNi9ZRFg0Y3FtRnQ3WkNZaGZUVWR4WmRKYk9tMUxmcUg3?=
 =?utf-8?B?bk14Y1RDOWUwaGFpWW9XOXZIU29vM1R3bUZPL21tRERqUVVoRWdUdlZQMkJX?=
 =?utf-8?B?Z21jNE5PZytFQ1FnMDhmc0lDNSttcXVuVzJUZHpxUHBiU0ljMTNZNWV2OGc1?=
 =?utf-8?B?QWR0dzRWcy9XZndnQlAwMkR5eXBRVGl2KzI4ZHF1Nk1ZaUJ2ZFgwWlY0Q01R?=
 =?utf-8?B?alFtbE1TeE5YSjViaXZEaFNNMWxFNzlIcTg5V0M3WVVFeEdwSVVrRlhrWEZB?=
 =?utf-8?B?TWhqVXk4bWY1UTl1SllqNGVMT3g3ZFZpd05jRDBRZ2xlYVNiZ1NjZDFpV3Bi?=
 =?utf-8?B?ZXpaSy9BTytOSDcvc2VjTnY4dEQ2OG43Rkg3WE9BUFVGcHg1ZFNYWnpURVFD?=
 =?utf-8?B?d0tJcWllQVBZcGg4UFdxMVRtMm9xY3pzREQ0bGdnS3IvbWY3YlZGYy9HVE1v?=
 =?utf-8?B?dVFaSWdBZUFDV1gxNzF1aGNGak1jT1dHajdXTEJsTnFPSnNQci8xeFVRYnFj?=
 =?utf-8?B?b2pBQ1dpUGhFVjRHQVdBU1ZwNVVxR0s5QW9MWnREQU5ubmpoZ2ZCa2xiRzFn?=
 =?utf-8?B?V3ZyaWQ0NzlGQVZFUlhoUFN2Skk3Ti81aWtINDRHaHAxWjZuTzNrcmdHaWxy?=
 =?utf-8?B?R1o3dm4vd1FSbVkwbWNDVS9KM3QzbzVtK0l2a1l6ZDl0MEhsSjFqQWlVNnZZ?=
 =?utf-8?B?K3dDcGpMMktqbDBzVVFMbG9ka0xWNDlqbytwSXpvTU53b1VvdVFINVYzL1hz?=
 =?utf-8?B?dU9vdGd6RzIraDRGdDF6WlJ1SEZaeFRGdUxMK1RkRXhaTzlrZlFTZzNWQnhx?=
 =?utf-8?B?dXR6N2FyZk5nN3FNWW9yNDdBTmxpTi9TY2o1eGR6RUZXT0hmOEJlcEsra2M4?=
 =?utf-8?B?Vm5VeXNjVWY0L0h1YStkSUVlTDZnNlRDN1YvOTZSVzdmdkdNRG1nOC9Nemdi?=
 =?utf-8?B?dG5STHRuNlFpYU1nQTVTdTVMK2JucGdQWlR1NWZQR3JiRkRBMFFSVzd2dDFX?=
 =?utf-8?B?WE1JcldFL2cxQlpnTDZESFdHNStnZHYreVBhRkdJOFZiR1E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F54EB8E8B06893499D83CB407BF4DD51@namprd14.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR14MB2638.namprd14.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c2ff9e5-a73d-4169-d5e8-08de67d3f9d9
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Feb 2026 12:08:46.0258 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR14MB7125
X-Mailman-Approved-At: Mon, 09 Feb 2026 18:41:25 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=outlook.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s1QESa/MbosOGVwqqQRjSoMSoH/kPnhascspn4JCiMI=;
 b=bWZfAjrJAUleLp8mMbJgcMyMdZi7Rj2NXsyCsoRw+Q17na1p88zn8CzjxDXj/3XzsE3d2ePk3gKNc/k11/Li8KQ3K9q+htxTnxI1B9h1n7IkiYLVLApfQ1IaWVUT8XHmcgF5ybSpTYxMTYlIewPVGUtS4tesA3vzJfjM6+Jad3KATLHutRfORr/YSTImSnL7ASsirdxV3qbiZNWrXmk5692VIA31RqWpVNXu4L/kB9aeG1vbi4fINobuPtO9Y4toYXenx5ODB+r/qemZU4EDoMZsm3vBAbYNjlYqiE4V5+x9lvktKQYDq7DNgNkAKAa9f8jWvqggarV/P5hBddWVaw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=outlook.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=outlook.com header.i=@outlook.com header.a=rsa-sha256
 header.s=selector1 header.b=bWZfAjrJ
Subject: [Intel-wired-lan] [PATCH] igc: Add PCIe link recovery for I225/I226
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.39 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[outlook.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[harshankmatkar1304@outlook.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,m:harshankmatkar1304@outlook.com,s:lists@lfdr.de];
	FREEMAIL_FROM(0.00)[outlook.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,outlook.com:mid,outlook.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FREEMAIL_CC(0.00)[lists.osuosl.org,vger.kernel.org,outlook.com];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[harshankmatkar1304@outlook.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 2D702113AF6
X-Rspamd-Action: no action

RnJvbTogSGFyc2hhbmsgTWF0a2FyIDxoYXJzaGFua21hdGthcjEzMDRAb3V0bG9vay5jb20+CgpX
aGVuIEFTUE0gTDBzIHRyYW5zaXRpb25zIG9jY3VyIG9uIEludGVsIEkyMjUvSTIyNiBjb250cm9s
bGVycywKdHJhbnNpZW50IFBDSWUgbGluayBpbnN0YWJpbGl0eSBjYW4gY2F1c2UgcmVnaXN0ZXIg
cmVhZCBmYWlsdXJlcwooMHhGRkZGRkZGRiByZXNwb25zZXMpLiBJbXBsZW1lbnQgYSBtdWx0aS1s
YXllciByZWNvdmVyeSBzdHJhdGVneToKCjEuIEltbWVkaWF0ZSByZXRyaWVzOiAzIGF0dGVtcHRz
IHdpdGggMTAwLTIwMM68cyBkZWxheXMKMi4gTGluayByZXRyYWluaW5nOiBUcmlnZ2VyIFBDSWUg
bGluayByZXRyYWluaW5nIHZpYSBjYXBhYmlsaXRpZXMKMy4gRGV2aWNlIGRldGFjaG1lbnQ6IE9u
bHkgYXMgbGFzdCByZXNvcnQgYWZ0ZXIgbWF4IGF0dGVtcHRzCgpUaGUgcmVjb3ZlcnkgbWVjaGFu
aXNtIGluY2x1ZGVzIHJhdGUgbGltaXRpbmcsIG1heGltdW0gYXR0ZW1wdAp0cmFja2luZywgYW5k
IGRldmljZSBwcmVzZW5jZSB2YWxpZGF0aW9uIHRvIHByZXZlbnQgZmFsc2UgZGV0YWNoZXMKb24g
dHJhbnNpZW50IEFTUE0gZ2xpdGNoZXMgd2hpbGUgbWFpbnRhaW5pbmcgc2FmZXR5IHRocm91Z2gK
Ym91bmRlZCByZXRyeSBsaW1pdHMuCgpTaWduZWQtb2ZmLWJ5OiBIYXJzaGFuayBNYXRrYXIgPGhh
cnNoYW5rbWF0a2FyMTMwNEBvdXRsb29rLmNvbT4KLS0tCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pZ2MvaWdjLmggICAgICB8ICAgNiArLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWdjL2lnY19tYWluLmMgfCAxNTUgKysrKysrKysrKysrKysrKysrKystLQogMiBmaWxlcyBjaGFu
Z2VkLCAxNDkgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnYy5oIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWdjL2lnYy5oCmluZGV4IGE0MjdmMDU4MTRjMS4uMmVmNDg4YjI3OWI5IDEwMDY0NAot
LS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjLmgKKysrIGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnYy5oCkBAIC0zNDYsNiArMzQ2LDEwIEBAIHN0cnVjdCBp
Z2NfYWRhcHRlciB7CiAJc3RydWN0IG11dGV4IGxlZF9tdXRleDsKIAlzdHJ1Y3QgaWdjX2xlZF9j
bGFzc2RldiAqbGVkczsKIAlib29sIGxlZHNfYXZhaWxhYmxlOworCisJLyogUENJZSByZWNvdmVy
eSB0cmFja2luZyAqLworCXVuc2lnbmVkIGludCBwY2llX3JlY292ZXJ5X2F0dGVtcHRzOworCXVu
c2lnbmVkIGxvbmcgbGFzdF9yZWNvdmVyeV90aW1lOwogfTsKIAogdm9pZCBpZ2NfdXAoc3RydWN0
IGlnY19hZGFwdGVyICphZGFwdGVyKTsKQEAgLTQyMiw3ICs0MjYsNyBAQCBlbnVtIGlnY19yc3Nf
dHlwZV9udW0gewogCUlHQ19SU1NfVFlQRV9NQVgJCT0gMTAsCiB9OwogI2RlZmluZSBJR0NfUlNT
X1RZUEVfTUFYX1RBQkxFCQkxNgotI2RlZmluZSBJR0NfUlNTX1RZUEVfTUFTSwkJR0VOTUFTSygz
LDApIC8qIDQtYml0cyAoMzowKSA9IG1hc2sgMHgwRiAqLworI2RlZmluZSBJR0NfUlNTX1RZUEVf
TUFTSwkJR0VOTUFTSygzLCAwKSAvKiA0LWJpdHMgKDM6MCkgPSBtYXNrIDB4MEYgKi8KIAogLyog
aWdjX3Jzc190eXBlIC0gUnggZGVzY3JpcHRvciBSU1MgdHlwZSBmaWVsZCAqLwogc3RhdGljIGlu
bGluZSB1MzIgaWdjX3Jzc190eXBlKGNvbnN0IHVuaW9uIGlnY19hZHZfcnhfZGVzYyAqcnhfZGVz
YykKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfbWFpbi5j
IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMKaW5kZXggODlhMzIx
YTM0NGQyLi5mMGRhYTNlZGJiNzkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2lnYy9pZ2NfbWFpbi5jCisrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9p
Z2NfbWFpbi5jCkBAIC0xNDExLDkgKzE0MTEsOCBAQCBzdGF0aWMgaW50IGlnY190eF9tYXAoc3Ry
dWN0IGlnY19yaW5nICp0eF9yaW5nLAogCS8qIE1ha2Ugc3VyZSB0aGVyZSBpcyBzcGFjZSBpbiB0
aGUgcmluZyBmb3IgdGhlIG5leHQgc2VuZC4gKi8KIAlpZ2NfbWF5YmVfc3RvcF90eCh0eF9yaW5n
LCBERVNDX05FRURFRCk7CiAKLQlpZiAobmV0aWZfeG1pdF9zdG9wcGVkKHR4cmluZ190eHEodHhf
cmluZykpIHx8ICFuZXRkZXZfeG1pdF9tb3JlKCkpIHsKKwlpZiAobmV0aWZfeG1pdF9zdG9wcGVk
KHR4cmluZ190eHEodHhfcmluZykpIHx8ICFuZXRkZXZfeG1pdF9tb3JlKCkpCiAJCXdyaXRlbChp
LCB0eF9yaW5nLT50YWlsKTsKLQl9CiAKIAlyZXR1cm4gMDsKIGRtYV9lcnJvcjoKQEAgLTE2MTMs
OCArMTYxMiw3IEBAIHN0YXRpYyBuZXRkZXZfdHhfdCBpZ2NfeG1pdF9mcmFtZV9yaW5nKHN0cnVj
dCBza19idWZmICpza2IsCiAJICogb3RoZXJ3aXNlIHRyeSBuZXh0IHRpbWUKIAkgKi8KIAlmb3Ig
KGYgPSAwOyBmIDwgc2tiX3NoaW5mbyhza2IpLT5ucl9mcmFnczsgZisrKQotCQljb3VudCArPSBU
WERfVVNFX0NPVU5UKHNrYl9mcmFnX3NpemUoCi0JCQkJCQkmc2tiX3NoaW5mbyhza2IpLT5mcmFn
c1tmXSkpOworCQljb3VudCArPSBUWERfVVNFX0NPVU5UKHNrYl9mcmFnX3NpemUoJnNrYl9zaGlu
Zm8oc2tiKS0+ZnJhZ3NbZl0pKTsKIAogCWlmIChpZ2NfbWF5YmVfc3RvcF90eCh0eF9yaW5nLCBj
b3VudCArIDUpKSB7CiAJCS8qIHRoaXMgaXMgYSBoYXJkIGVycm9yICovCkBAIC0yNTI0LDcgKzI1
MjIsNiBAQCBzdGF0aWMgaW50IF9faWdjX3hkcF9ydW5fcHJvZyhzdHJ1Y3QgaWdjX2FkYXB0ZXIg
KmFkYXB0ZXIsCiAJCWlmICh4ZHBfZG9fcmVkaXJlY3QoYWRhcHRlci0+bmV0ZGV2LCB4ZHAsIHBy
b2cpIDwgMCkKIAkJCWdvdG8gb3V0X2ZhaWx1cmU7CiAJCXJldHVybiBJR0NfWERQX1JFRElSRUNU
OwotCQlicmVhazsKIAlkZWZhdWx0OgogCQlicGZfd2Fybl9pbnZhbGlkX3hkcF9hY3Rpb24oYWRh
cHRlci0+bmV0ZGV2LCBwcm9nLCBhY3QpOwogCQlmYWxsdGhyb3VnaDsKQEAgLTI3OTEsNyArMjc4
OCw3IEBAIHN0YXRpYyBzdHJ1Y3QgaWdjX3hkcF9idWZmICp4c2tfYnVmZl90b19pZ2NfY3R4KHN0
cnVjdCB4ZHBfYnVmZiAqeGRwKQogCSAqIGlnY194ZHBfYnVmZiBzaGFyZXMgaXRzIGxheW91dCB3
aXRoIHhkcF9idWZmX3hzayBhbmQgcHJpdmF0ZQogCSAqIGlnY194ZHBfYnVmZiBmaWVsZHMgZmFs
bCBpbnRvIHhkcF9idWZmX3hzay0+Y2IKIAkgKi8KLSAgICAgICByZXR1cm4gKHN0cnVjdCBpZ2Nf
eGRwX2J1ZmYgKil4ZHA7CisJcmV0dXJuIChzdHJ1Y3QgaWdjX3hkcF9idWZmICopeGRwOwogfQog
CiBzdGF0aWMgaW50IGlnY19jbGVhbl9yeF9pcnFfemMoc3RydWN0IGlnY19xX3ZlY3RvciAqcV92
ZWN0b3IsIGNvbnN0IGludCBidWRnZXQpCkBAIC0zODk1LDkgKzM4OTIsOCBAQCBzdGF0aWMgaW50
IGlnY19lbmFibGVfbmZjX3J1bGUoc3RydWN0IGlnY19hZGFwdGVyICphZGFwdGVyLAogewogCWlu
dCBlcnI7CiAKLQlpZiAocnVsZS0+ZmxleCkgeworCWlmIChydWxlLT5mbGV4KQogCQlyZXR1cm4g
aWdjX2FkZF9mbGV4X2ZpbHRlcihhZGFwdGVyLCBydWxlKTsKLQl9CiAKIAlpZiAocnVsZS0+Zmls
dGVyLm1hdGNoX2ZsYWdzICYgSUdDX0ZJTFRFUl9GTEFHX0VUSEVSX1RZUEUpIHsKIAkJZXJyID0g
aWdjX2FkZF9ldHlwZV9maWx0ZXIoYWRhcHRlciwgcnVsZS0+ZmlsdGVyLmV0eXBlLApAQCAtNjk4
NCwxMSArNjk4MCwxMTIgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBuZXRfZGV2aWNlX29wcyBpZ2Nf
bmV0ZGV2X29wcyA9IHsKIAkubmRvX2h3dHN0YW1wX3NldAk9IGlnY19wdHBfaHd0c3RhbXBfc2V0
LAogfTsKIAorI2RlZmluZSBJR0NfUkVHSVNURVJfUkVBRF9SRVRSSUVTCTMKKyNkZWZpbmUgSUdD
X1BDSUVfUkVDT1ZFUllfTUFYX0FUVEVNUFRTCTEwCisjZGVmaW5lIElHQ19QQ0lFX1JFQ09WRVJZ
X0lOVEVSVkFMX01TCTEwMDAKKworLyoqCisgKiBpZ2NfcGNpZV9saW5rX3JlY292ZXIgLSBBdHRl
bXB0IFBDSWUgbGluayByZWNvdmVyeQorICogQGFkYXB0ZXI6IGJvYXJkIHByaXZhdGUgc3RydWN0
dXJlCisgKgorICogQXR0ZW1wdHMgdG8gcmVjb3ZlciBhIGZhaWxlZCBQQ0llIGxpbmsgYnkgdHJp
Z2dlcmluZyBhIGxpbmsgcmV0cmFpbi4KKyAqIFJhdGUtbGltaXRlZCB0byAxIGF0dGVtcHQgcGVy
IHNlY29uZCwgbWF4aW11bSAxMCBhdHRlbXB0cy4KKyAqCisgKiBSZXR1cm5zIHRydWUgaWYgcmVj
b3Zlcnkgd2FzIHN1Y2Nlc3NmdWwsIGZhbHNlIG90aGVyd2lzZS4KKyAqLworc3RhdGljIGJvb2wg
aWdjX3BjaWVfbGlua19yZWNvdmVyKHN0cnVjdCBpZ2NfYWRhcHRlciAqYWRhcHRlcikKK3sKKwlz
dHJ1Y3QgcGNpX2RldiAqcGRldiA9IGFkYXB0ZXItPnBkZXY7CisJdW5zaWduZWQgbG9uZyBub3cg
PSBqaWZmaWVzOworCXUxNiBsbmtzdGEsIGxua2N0bDsKKwlpbnQgcmV0OworCWludCBpOworCisJ
LyogUmF0ZSBsaW1pdGluZzogbm8gbW9yZSB0aGFuIDEgYXR0ZW1wdCBwZXIgc2Vjb25kICovCisJ
aWYgKHRpbWVfYmVmb3JlKG5vdywgYWRhcHRlci0+bGFzdF9yZWNvdmVyeV90aW1lICsKKwkJCW1z
ZWNzX3RvX2ppZmZpZXMoSUdDX1BDSUVfUkVDT1ZFUllfSU5URVJWQUxfTVMpKSkKKwkJcmV0dXJu
IGZhbHNlOworCisJLyogTWF4aW11bSBhdHRlbXB0IGxpbWl0ICovCisJaWYgKGFkYXB0ZXItPnBj
aWVfcmVjb3ZlcnlfYXR0ZW1wdHMgPj0gSUdDX1BDSUVfUkVDT1ZFUllfTUFYX0FUVEVNUFRTKSB7
CisJCW5ldGRldl9lcnIoYWRhcHRlci0+bmV0ZGV2LAorCQkJICAgIkV4Y2VlZGVkIG1heGltdW0g
UENJZSByZWNvdmVyeSBhdHRlbXB0cyAoJWQpXG4iLAorCQkJICAgSUdDX1BDSUVfUkVDT1ZFUllf
TUFYX0FUVEVNUFRTKTsKKwkJcmV0dXJuIGZhbHNlOworCX0KKworCWFkYXB0ZXItPmxhc3RfcmVj
b3ZlcnlfdGltZSA9IG5vdzsKKwlhZGFwdGVyLT5wY2llX3JlY292ZXJ5X2F0dGVtcHRzKys7CisK
KwluZXRkZXZfd2FybihhZGFwdGVyLT5uZXRkZXYsCisJCSAgICAiQXR0ZW1wdGluZyBQQ0llIGxp
bmsgcmVjb3ZlcnkgKGF0dGVtcHQgJWQvJWQpXG4iLAorCQkgICAgYWRhcHRlci0+cGNpZV9yZWNv
dmVyeV9hdHRlbXB0cywKKwkJICAgIElHQ19QQ0lFX1JFQ09WRVJZX01BWF9BVFRFTVBUUyk7CisK
KwkvKiBDaGVjayBpZiBkZXZpY2UgaXMgc3RpbGwgcHJlc2VudCBvbiB0aGUgYnVzICovCisJaWYg
KCFwY2lfZGV2aWNlX2lzX3ByZXNlbnQocGRldikpIHsKKwkJbmV0ZGV2X2VycihhZGFwdGVyLT5u
ZXRkZXYsICJEZXZpY2Ugbm90IHByZXNlbnQgb24gUENJZSBidXNcbiIpOworCQlyZXR1cm4gZmFs
c2U7CisJfQorCisJLyogQ2hlY2sgbGluayBzdGF0dXMgKi8KKwlyZXQgPSBwY2llX2NhcGFiaWxp
dHlfcmVhZF93b3JkKHBkZXYsIFBDSV9FWFBfTE5LU1RBLCAmbG5rc3RhKTsKKwlpZiAocmV0KSB7
CisJCW5ldGRldl9lcnIoYWRhcHRlci0+bmV0ZGV2LCAiRmFpbGVkIHRvIHJlYWQgbGluayBzdGF0
dXNcbiIpOworCQlyZXR1cm4gZmFsc2U7CisJfQorCisJLyogVHJpZ2dlciBsaW5rIHJldHJhaW4g
aWYgbGluayBhcHBlYXJzIGRvd24gKi8KKwlpZiAoIShsbmtzdGEgJiBQQ0lfRVhQX0xOS1NUQV9E
TExMQSkpIHsKKwkJbmV0ZGV2X2luZm8oYWRhcHRlci0+bmV0ZGV2LAorCQkJICAgICJMaW5rIGRv
d24sIGF0dGVtcHRpbmcgcmV0cmFpblxuIik7CisKKwkJLyogUmVhZCBsaW5rIGNvbnRyb2wgcmVn
aXN0ZXIgKi8KKwkJcmV0ID0gcGNpZV9jYXBhYmlsaXR5X3JlYWRfd29yZChwZGV2LCBQQ0lfRVhQ
X0xOS0NUTCwgJmxua2N0bCk7CisJCWlmIChyZXQgPT0gMCkgeworCQkJLyogVHJpZ2dlciByZXRy
YWluIGJ5IHNldHRpbmcgUkwgYml0ICovCisJCQlwY2llX2NhcGFiaWxpdHlfd3JpdGVfd29yZChw
ZGV2LCBQQ0lfRVhQX0xOS0NUTCwKKwkJCQkJCSAgIGxua2N0bCB8IFBDSV9FWFBfTE5LQ1RMX1JM
KTsKKworCQkJLyogV2FpdCBmb3IgcmV0cmFpbiB0byBjb21wbGV0ZSAodXAgdG8gMSBzZWNvbmQp
ICovCisJCQlmb3IgKGkgPSAwOyBpIDwgMTAwOyBpKyspIHsKKwkJCQl1c2xlZXBfcmFuZ2UoMTAw
MDAsIDIwMDAwKTsKKwkJCQlyZXQgPSBwY2llX2NhcGFiaWxpdHlfcmVhZF93b3JkKHBkZXYsIFBD
SV9FWFBfTE5LU1RBLAorCQkJCQkJCQkmbG5rc3RhKTsKKwkJCQlpZiAocmV0ID09IDAgJiYgKGxu
a3N0YSAmIFBDSV9FWFBfTE5LU1RBX0RMTExBKSAmJgorCQkJCSAgICAhKGxua3N0YSAmIFBDSV9F
WFBfTE5LU1RBX0xUKSkgeworCQkJCQluZXRkZXZfaW5mbyhhZGFwdGVyLT5uZXRkZXYsCisJCQkJ
CQkgICAgIlBDSWUgbGluayByZWNvdmVyeSBzdWNjZXNzZnVsXG4iKTsKKwkJCQkJcmV0dXJuIHRy
dWU7CisJCQkJfQorCQkJfQorCQl9CisJfQorCisJLyogR2l2ZSB0aGUgbGluayBzb21lIGFkZGl0
aW9uYWwgdGltZSB0byByZWNvdmVyIG9uIGl0cyBvd24gKi8KKwltc2xlZXAoMTAwKTsKKworCS8q
IENoZWNrIGlmIGRldmljZSBpcyByZXNwb25kaW5nIG5vdyAqLworCWlmIChwY2lfZGV2aWNlX2lz
X3ByZXNlbnQocGRldikpIHsKKwkJcmV0ID0gcGNpZV9jYXBhYmlsaXR5X3JlYWRfd29yZChwZGV2
LCBQQ0lfRVhQX0xOS1NUQSwgJmxua3N0YSk7CisJCWlmIChyZXQgPT0gMCAmJiAobG5rc3RhICYg
UENJX0VYUF9MTktTVEFfRExMTEEpKSB7CisJCQluZXRkZXZfaW5mbyhhZGFwdGVyLT5uZXRkZXYs
CisJCQkJICAgICJQQ0llIGxpbmsgcmVjb3ZlcmVkIGFmdGVyIGRlbGF5XG4iKTsKKwkJCXJldHVy
biB0cnVlOworCQl9CisJfQorCisJbmV0ZGV2X3dhcm4oYWRhcHRlci0+bmV0ZGV2LCAiUENJZSBs
aW5rIHJlY292ZXJ5IGZhaWxlZFxuIik7CisJcmV0dXJuIGZhbHNlOworfQorCiB1MzIgaWdjX3Jk
MzIoc3RydWN0IGlnY19odyAqaHcsIHUzMiByZWcpCiB7CiAJc3RydWN0IGlnY19hZGFwdGVyICpp
Z2MgPSBjb250YWluZXJfb2YoaHcsIHN0cnVjdCBpZ2NfYWRhcHRlciwgaHcpOwogCXU4IF9faW9t
ZW0gKmh3X2FkZHIgPSBSRUFEX09OQ0UoaHctPmh3X2FkZHIpOworCXN0cnVjdCBuZXRfZGV2aWNl
ICpuZXRkZXYgPSBpZ2MtPm5ldGRldjsKIAl1MzIgdmFsdWUgPSAwOworCWludCByZXRyeTsKIAog
CWlmIChJR0NfUkVNT1ZFRChod19hZGRyKSkKIAkJcmV0dXJuIH52YWx1ZTsKQEAgLTY5OTcsMTMg
KzcwOTQsNDkgQEAgdTMyIGlnY19yZDMyKHN0cnVjdCBpZ2NfaHcgKmh3LCB1MzIgcmVnKQogCiAJ
LyogcmVhZHMgc2hvdWxkIG5vdCByZXR1cm4gYWxsIEYncyAqLwogCWlmICghKH52YWx1ZSkgJiYg
KCFyZWcgfHwgISh+cmVhZGwoaHdfYWRkcikpKSkgewotCQlzdHJ1Y3QgbmV0X2RldmljZSAqbmV0
ZGV2ID0gaWdjLT5uZXRkZXY7CisJCS8qIExheWVyIDE6IEltbWVkaWF0ZSByZXRyaWVzIHdpdGgg
c2hvcnQgZGVsYXlzICgxMDAtMjAwzrxzKSAqLworCQlmb3IgKHJldHJ5ID0gMDsgcmV0cnkgPCBJ
R0NfUkVHSVNURVJfUkVBRF9SRVRSSUVTOyByZXRyeSsrKSB7CisJCQl1c2xlZXBfcmFuZ2UoMTAw
LCAyMDApOworCQkJdmFsdWUgPSByZWFkbCgmaHdfYWRkcltyZWddKTsKKworCQkJLyogSWYgd2Ug
Z290IGEgdmFsaWQgcmVhZCwgcmV0dXJuIGltbWVkaWF0ZWx5ICovCisJCQlpZiAofnZhbHVlIHx8
IChyZWcgJiYgfnJlYWRsKGh3X2FkZHIpKSkgeworCQkJCW5ldGRldl9kYmcobmV0ZGV2LAorCQkJ
CQkgICAiUmVnaXN0ZXIgcmVhZCByZWNvdmVyZWQgYWZ0ZXIgJWQgcmV0cmllc1xuIiwKKwkJCQkJ
ICAgcmV0cnkgKyAxKTsKKwkJCQlyZXR1cm4gdmFsdWU7CisJCQl9CisJCX0KKworCQkvKiBMYXll
ciAyOiBBdHRlbXB0IGZ1bGwgUENJZSBsaW5rIHJlY292ZXJ5ICovCisJCW5ldGRldl93YXJuKG5l
dGRldiwKKwkJCSAgICAiQWxsIGltbWVkaWF0ZSByZXRyaWVzIGZhaWxlZCwgYXR0ZW1wdGluZyBQ
Q0llIGxpbmsgcmVjb3ZlcnlcbiIpOworCisJCWlmIChpZ2NfcGNpZV9saW5rX3JlY292ZXIoaWdj
KSkgeworCQkJLyogUmVjb3Zlcnkgc3VjY2VlZGVkLCByZS1yZWFkIHRoZSByZWdpc3RlciAqLwor
CQkJaHdfYWRkciA9IFJFQURfT05DRShody0+aHdfYWRkcik7CisJCQlpZiAoaHdfYWRkciAmJiAh
SUdDX1JFTU9WRUQoaHdfYWRkcikpIHsKKwkJCQl2YWx1ZSA9IHJlYWRsKCZod19hZGRyW3JlZ10p
OworCisJCQkJLyogVmVyaWZ5IHRoZSByZWFkIGlzIHZhbGlkICovCisJCQkJaWYgKH52YWx1ZSB8
fCAocmVnICYmIH5yZWFkbChod19hZGRyKSkpIHsKKwkJCQkJbmV0ZGV2X2luZm8obmV0ZGV2LAor
CQkJCQkJICAgICJSZWdpc3RlciByZWFkIHN1Y2Nlc3NmdWwgYWZ0ZXIgbGluayByZWNvdmVyeVxu
Iik7CisJCQkJCXJldHVybiB2YWx1ZTsKKwkJCQl9CisJCQl9CisJCX0KKworCQkvKiBMYXllciAz
OiBBbGwgcmVjb3ZlcnkgYXR0ZW1wdHMgZmFpbGVkLCBkZXRhY2ggZGV2aWNlICovCisJCW5ldGRl
dl9lcnIobmV0ZGV2LAorCQkJICAgIlBDSWUgbGluayBsb3N0IGFmdGVyICVkIHJldHJpZXMgYW5k
IHJlY292ZXJ5IGF0dGVtcHRzLCBkZXZpY2Ugbm93IGRldGFjaGVkXG4iLAorCQkJICAgSUdDX1JF
R0lTVEVSX1JFQURfUkVUUklFUyk7CiAKIAkJaHctPmh3X2FkZHIgPSBOVUxMOwogCQluZXRpZl9k
ZXZpY2VfZGV0YWNoKG5ldGRldik7Ci0JCW5ldGRldl9lcnIobmV0ZGV2LCAiUENJZSBsaW5rIGxv
c3QsIGRldmljZSBub3cgZGV0YWNoZWRcbiIpOworCiAJCVdBUk4ocGNpX2RldmljZV9pc19wcmVz
ZW50KGlnYy0+cGRldiksCi0JCSAgICAgImlnYzogRmFpbGVkIHRvIHJlYWQgcmVnIDB4JXghXG4i
LCByZWcpOworCQkgICAgICJpZ2M6IEZhaWxlZCB0byByZWFkIHJlZyAweCV4IGFmdGVyIGFsbCBy
ZWNvdmVyeSBhdHRlbXB0cyFcbiIsIHJlZyk7CiAJfQogCiAJcmV0dXJuIHZhbHVlOwotLSAKMi41
Mi4wCgo=
