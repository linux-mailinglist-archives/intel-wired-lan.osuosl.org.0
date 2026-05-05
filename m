Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yHyIChFy+mkDPAMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 06 May 2026 00:41:21 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C07E04D46C4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 06 May 2026 00:41:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 52FC340CBE;
	Tue,  5 May 2026 22:41:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gXKj600-qGeG; Tue,  5 May 2026 22:41:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD8DE40CAE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778020864;
	bh=cuYxA21MOfsE49m46/kiTh3Ur39ytOWqQmEqeQac9PY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1+Tsa+JUemSMT36SEi5S35gIApYLBK595KItjVZakQ6DkGczFjTyUCFrG6BKsb5sm
	 6Tn1XafISsTCre9MrLvLtul59B8KIu6HUv3UdDCvADOeR9xuM91ub+CI9v8MirmfwG
	 WeiPCdxTDkyj04g7MYCoOU5S0fbsSEdSQsYJaPIISXQKj7Y72P7skEyb9Xdtd1hLTQ
	 LFOeOUrVma4AdUshvceAoDAr47POR/gHTnQihCYg99bYHIWfkDnTDbGn1uL851v8MW
	 u3dphojYXLnIIlISQr1/cf8+9i0d6sVYhb4WVDBOce1EW4vjA2we6DYnbSw2fuoOIJ
	 RSid8a9EsScHw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CD8DE40CAE;
	Tue,  5 May 2026 22:41:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7B8C630A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 01:00:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6C9D94082E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 01:00:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1zJJspNXaM8B for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 May 2026 01:00:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=148.163.155.12;
 helo=mx0b-002c1b01.pphosted.com; envelope-from=jon@nutanix.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 79EBE4081D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 79EBE4081D
Received: from mx0b-002c1b01.pphosted.com (mx0b-002c1b01.pphosted.com
 [148.163.155.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 79EBE4081D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 01:00:04 +0000 (UTC)
Received: from pps.filterd (m0127844.ppops.net [127.0.0.1])
 by mx0b-002c1b01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 644Jff4g2593279; Mon, 4 May 2026 17:59:47 -0700
Received: from sn4pr0501cu005.outbound.protection.outlook.com
 (mail-southcentralusazon11021093.outbound.protection.outlook.com
 [40.93.194.93])
 by mx0b-002c1b01.pphosted.com (PPS) with ESMTPS id 4dwgsy4t9h-1
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
 Mon, 04 May 2026 17:59:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=l/+6oqkRBjpju7DHqcT+d6IJMjGDi9Mj4YNEWwyyNo+Xg2ondYcGUVYRl17zj9ezvVRm96JOLzm9lYfwsLLKyoTE3sPBT2Zirw1YTdf+rJTSSsbPNs6rpIjtG6emu7ov/OvOtbo4Ja88LUzuEmJIx+7bsNP8Zvg7XepYXKzMKFwFnIIs+R6nELTQfgQXmk0td/mfmWrP5JnTD+tAI4UnyQnuoS4FI4oi+yS8X1bV69tx5rWFWrmPkmxXLKSx/XBDWaoR/bqwjiO7LX27ohm2tH7DFsCDtylnv1JfzxKVuqgRuoNjUsSKDcFSluPWr7FqhXmbjLkLZmgYgn+07ZgRFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cuYxA21MOfsE49m46/kiTh3Ur39ytOWqQmEqeQac9PY=;
 b=lL5JQaR4JjIIEIzhkSbkfWl2PCuRJYG/PxvdzF+3p5tGLw3J0kCnEIXZJJZLJm/QfyZ3FfQn6gLcctaMOfzfSW9MYSYruJlKBvNYCCFJmbIj+mtQC8R6YBVdV9vsNg6/KQuGieDHAQl1rDWDE1SfdkreK/jcpzCYoEtAB7IikxvTBbBsCI7FEC3lwSSoUq8xQfdO/fXmXrj7riT/qNuCBhWHYjB4RfdktM8jR0EdFCegSNVtporNOdWTEuSnG1qULK6e9i7D0virY/mz8vkb0RWwI1hwpim19iTgN0DEFcvsvD6xXYJmCnJORuNau1AAOoV+Gr+f1zE7u0Dwas1Q/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nutanix.com; dmarc=pass action=none header.from=nutanix.com;
 dkim=pass header.d=nutanix.com; arc=none
Received: from LV0PR02MB11133.namprd02.prod.outlook.com
 (2603:10b6:408:333::18) by DS0PR02MB10272.namprd02.prod.outlook.com
 (2603:10b6:8:1b6::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.26; Tue, 5 May
 2026 00:59:40 +0000
Received: from LV0PR02MB11133.namprd02.prod.outlook.com
 ([fe80::10e5:8031:1b1b:b2dc]) by LV0PR02MB11133.namprd02.prod.outlook.com
 ([fe80::10e5:8031:1b1b:b2dc%3]) with mapi id 15.20.9870.023; Tue, 5 May 2026
 00:59:40 +0000
From: Jon Kohler <jon@nutanix.com>
To: Jakub Kicinski <kuba@kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo
 Abeni <pabeni@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Thread-Topic: [PATCH net-next] e1000e: ethtool: add get_channels support
Thread-Index: AQHc29Y9rxTi743U1ky+dQQiRDIOo7X+iX2AgAATsQA=
Date: Tue, 5 May 2026 00:59:40 +0000
Message-ID: <6F0C5872-0388-47AF-8CD9-1D116EA13224@nutanix.com>
References: <20260504154823.2535612-1-jon@nutanix.com>
 <20260504164901.7b3a737b@kernel.org>
In-Reply-To: <20260504164901.7b3a737b@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3864.500.181)
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV0PR02MB11133:EE_|DS0PR02MB10272:EE_
x-ms-office365-filtering-correlation-id: 4c8b0600-a1be-4b52-2c24-08deaa419646
x-proofpoint-crosstenant: true
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|10070799003|7416014|376014|22082099003|56012099003|18002099003|38070700021;
x-microsoft-antispam-message-info: 6CrbUJQhElTcCjirJRaIx8xVTEBZpwtWAolGoyiBtJyjNpnrn+/FV0pOx1S963BYRizwcaRnSYunOTIggMfcpYbGaLdqExCcyHezhAoF3PdKVMKLFLp1OOtnhZO26mSuYRvYN0i1QdFIo8cG1/LpBpetCsP2gkMGyAUSMoXECNSAjyPbZa9kICLeslEHTjkP0ufiT/zafqRUqXBw3WfrheGEA2tWDSP6roOuAgFxRhyI0P9V3HeFl9B3ydlW3vF2J+KLx7HpTJqLPZJyU+RSg297W9EBX+juC3Ek1V1WJrjfOwYfD2bRvM9Yc7jticzuOnu+WFHJRrsr/QJRiK8IfnFRBG9Ahnzn7C3Gun3drjq+rPwn46OVX1p3JdYBcSsp6b+U8ntK/HL34XO/Q4Y3xPr0HRly3J4PzyEzWt0tcmiWzaArA/0Fgg0tSkkzBgMeb1EjvKo37C8qh3sSmUa7+GaXZJU/+Lm8s34EH4hnYwaImVzyXXznDe0xbEmCuVdXtXlCEQPchcaapSY892iSm1wv49nm4jK2pBIU7RRB2tUYZjjNLf+mM4iEwD7Ri2kQXzKKa+DHwXgm5q5g4LW5xd9y873p72Iw0pHD7TJXtnFBVMuhF6Gv4tfj22y/F6puWQTXWwMUue+HTwEBtbwXEX+qfXdEH0JRYAjNDrrKbMuiLgw/4XNJzOFCzSpfonSD1WM1MeASRSF71Y4WKOUWhGJQynGqnLaKH4P/U55MBi/R25Q4gYaz0+IKNANlyH+6
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV0PR02MB11133.namprd02.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(10070799003)(7416014)(376014)(22082099003)(56012099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NEsvS2tBckxMaE5WRXFDaWR2VlovNk54aXYwazN0OGVFWU1CcHZySEtiY1Fw?=
 =?utf-8?B?c3JjZUMvQ1MrZm03SmNTWWdhUWdoQXVRZjBjcTJ5MFVOY1dSUHBNbjRNTXBT?=
 =?utf-8?B?MmpIWGJnTHRnYkcxZVRLenF5eEp6QXZaUVFQeGgzcG5wUWhRQmxEb2VBS25R?=
 =?utf-8?B?SmJHdDVQR0xUTXdaOXAxbXlveUcwelhvRE5JUlpnYmxUbXY2UG5TcVdzWWk0?=
 =?utf-8?B?a2IyNGFZNUVJQm0yK3hWYU9mMXZNU2RySzl2N1QyeWo3MmRONnpkMmlWNkU1?=
 =?utf-8?B?Q3FGV3RzSEliRFZIek5idXNOU0pybkt1ZFF3eFF3UVIweUJESDRrN3Vac0wr?=
 =?utf-8?B?OE5sTDJoVUdORFE5Q3Bmdk51eWFzd1FSUWJLSUx4cWkydy8xSVNCemI0M0pp?=
 =?utf-8?B?VUpkaThEYm1jOEwrSVpja0lSV3lXbWdQa0MrNGE3MDJtaFdKVnVIdGQ4MUVD?=
 =?utf-8?B?N1JQY3hLeU5reUphVE1na1VXQ1ZtUWpxQkZ4ZURPR1doY0hXNUx0TUVTaVB3?=
 =?utf-8?B?SWw5Rnhnd1R4N0xPNDRUVjZVWHA3ME92bDhZUDlVYkc2bUJ1aDExQ1FYcHZB?=
 =?utf-8?B?VEowTkpnWThFV2Rack5NTzFxK2RVaXZyOVJyU1NETEQ4a0hhQ3VsUktNVTh4?=
 =?utf-8?B?VTkzTzlEQ0lwWDJtQVJib251TDY2Tk51cTJhdW1qZEl4YjM5b0hyYnBqRGYr?=
 =?utf-8?B?eHROQjE4VnZkeUl3ZHdRcnZSazI4SVJNaU9JZTFONUJrOWVPb2pZOSsyVDNB?=
 =?utf-8?B?R2taUUFWeStjWVF5bHBjTENqY1J6dytCY2RCZDZXZnlaUDN0ZFRZUWFJMDlj?=
 =?utf-8?B?a1BJNUE3UEhQNE9YbUcrdmltUjUxc3B6cnlyeHJTVERGekhibllRL3daOXpa?=
 =?utf-8?B?K2twR2dRZGJGOVNkV1llU0ZtSkQrL0pPa0R0NWY2dllsWkFMQy94TE5MZDM0?=
 =?utf-8?B?eTk5L1NvMi8va0pHU1pJR0EyTFUvaTZVVVFSZEM5RDFWWmZsck1WNlJJN3NX?=
 =?utf-8?B?TDkwNVBhL3ltclBnUWUzQ1JlWS93a2l0MnlTbmpOS2g3TEVwQnNsOGw2RU9R?=
 =?utf-8?B?UmJleGVOOXZlT3Z3K1ZCeXR5WTdMdDFiWDFOOEdzMUdHbmpUNlYxazBBUVBt?=
 =?utf-8?B?bVlBTUhwR3dEL25oSnA2bEFvSGpxSGxObHJycDJ0eHNGRjlGdDJiTFJUNkVk?=
 =?utf-8?B?V05hZlphUjFmdEtyTG52YVY4MDF1MnBNa3JIazMyc2t3UDBSQWxBOGFyRUZC?=
 =?utf-8?B?RFplOVIvUDRodlo0TXRBMGh3QmVKY08yOFNlWUxRdTNTUkhwU1pJVUhIRnF3?=
 =?utf-8?B?NGlyUE5xY0tjVm92cTZxRmJSU1pkQy9yR3I3SmhHRVRMNTJ6YnVGTVhreEgv?=
 =?utf-8?B?QXB6S1o0T01EN2U5c2Y0TnAza0p1NkttOU10cWZSV3pTYytPbFRnY0pFeWFE?=
 =?utf-8?B?UEVpaWthSHBtYUpxY3N0QnpMaHliTDhMYlBrTHJ4WXZKSXV4YkxoRmYwRXQv?=
 =?utf-8?B?WGpFei9OV3BoR0U5Q0YxbTVMTWZzeDJkTTdSUlpHbGhCeTZDanNudEdUcmNw?=
 =?utf-8?B?MDA5enYzSzl2YTdDczhDMEZwK1RldUFXdm9DRmp0WGVRN1l4bFRQNkcrTEty?=
 =?utf-8?B?VmFRbDYvQWh2aXF1RGdCTEswdDdhOFZudi9NaXNtbWJ0eE10MDRTRXkrZGhW?=
 =?utf-8?B?RlQ2K29DaHN3UE0rS0czbTBNRE9Qd3pKZURLZkpGNzhnTS9aMDNwbXpHUHRV?=
 =?utf-8?B?KzJ2alFvMXFHNUQzLzFJcW42UStOR3FVd0dMY2JUdXExRGxsenNnUUJpYlRl?=
 =?utf-8?B?cFVsaVNqTXdrbUdvVERjaWFsS1Nydytpb2oxYW1HdzBaQWpkS1B5cGQxZGla?=
 =?utf-8?B?YWNxU21NVlB2RUN3K3V3R2oxWGtGRmV2T05LMkZVRXpzWHdrdmt4Q1ljdHdO?=
 =?utf-8?B?VzBhRldXUDRVdys1TEdOWHVDcVhCVHVTN3M3N1lSbTdEODRNN3g0YTQwVUZZ?=
 =?utf-8?B?MVdTQ0pRaWVwMHQ4ZUlEWkNZa1doOUoxenJyZkkraVpLeXlRN3Z2b1QrZUJR?=
 =?utf-8?B?bEJqelBqUzRtWFBQck5ONFZ3a09Fc2NXTHJ4eERjaGZRUzlaNlBLTDg5M1VF?=
 =?utf-8?B?czFUdVJvenFqQ3ErVk1LL0daajlNOE9SYlRjaXh5UkttSXRXV0Q3Zk5YSEgy?=
 =?utf-8?B?ejNxaVRPTlJjOG5uOXhGWXA0WW5jZXpwb2JpMm0rV3hZcE41UTdhVy94RFVv?=
 =?utf-8?B?Uk5GbnZ4SFdOOWhmKy9xT0w1T210MFFlQys5NW9palA4M0JybncrTXg0b3FU?=
 =?utf-8?B?WDgzdkRIZlNIWG0zM3lTa2JsQnNZUDFubFdhUnVWNTdRRytBS2R5eW9yUFky?=
 =?utf-8?Q?GbFMXG7tyCeCyjiOq1haar/wYTMdZgfSFdqKTBsNL0ueA?=
x-ms-exchange-antispam-messagedata-1: /OedEHTeOmURR9zGCQ8GA6X3s0/BAfaNK/U=
Content-Type: text/plain; charset="utf-8"
Content-ID: <548CA4740630E143A307A31CCDBC8CBB@namprd02.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: rbX0+3a7mh7j0w5QfFVN5woNIRZ7QleEY4NLT/QGgm6X0Ao+vLcgQ8JRn26G9l7yKCpa2KsfxixBfQ25e6jVBsL/I0uguJmHwNPgkSbVd2LG1UugrP/hWDsgRHjzfYY1yvXNnGjMRSzt4xksWkOpKn44ST7+Eh1p575H1pSKYbIQjrz0FuxCVVp6ijMALR/GWQ3ddoVTo68dn4xBacXWYdnQf04bGkbdUTGQVnF71XqJBlmfKSnR4FWGi4rrBNg8psUWZ+D2vVNHvk9r2qWpWYOp/rba0JNgpDw5EfLaIfl5Yv/xp9QVrz6t/WSw9/0CUGQsnOSXEc3LMk3MieTO4A==
X-OriginatorOrg: nutanix.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV0PR02MB11133.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c8b0600-a1be-4b52-2c24-08deaa419646
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2026 00:59:40.3621 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: bb047546-786f-4de1-bd75-24e5b6f79043
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5HExnjqdC17Pi5R5y/zwIo0jhbbRxSMVaWTBnJWWZ+d10pRYAudFtfnivjrM1M6Wpu7xCunnest0EAf9XVkW6BQRe/RHENVwGdBVemwPIjU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR02MB10272
X-Authority-Analysis: v=2.4 cv=E+T9Y6dl c=1 sm=1 tr=0 ts=69f94102 cx=c_pps
 a=G8VycjxW3wO8/D/xgNJDKg==:117 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=NGcC8JguVDcA:10 a=0kUYKlekyDsA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VofLwUrZ8Iiv6rRUPXIb:22 a=0LlEyIVc8U2lsR7dKhuH:22 a=VwQbUJbxAAAA:8
 a=7DqNK0wdTYuBax_mhN4A:9 a=QEXdDO2ut3YA:10
X-Proofpoint-GUID: eKiZxlN5pu2F3H4CzE3K2EKNpPb4sNWa
X-Proofpoint-ORIG-GUID: eKiZxlN5pu2F3H4CzE3K2EKNpPb4sNWa
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA1MDAwMyBTYWx0ZWRfX126RCAHLbZ6E
 GvgCY4dzpMLq2B7TsWjSenkFC3PDvjslR0FPC67xiEYaTagyV7yqhInFlGLb/FzCoRS3EzwLW85
 jjbkl32dkXweq+v4FJGxk194RhC9okeearB83DSY/SWCfaea07obcuE6qH4ADfBSC7P/qqMnMTI
 9EfCpF6S9ooZdLHT7JQbKBpj/Ve9RnxXFxrYMj/QyTlm7D2qr92OcGhSufeTyDhWFJdo+J7pDYd
 sTqVtoPJLkcEH3njXprLu2RWyJ/5IEr6nfWUPNKlMfbPHUqUkgvYcfrkZ8ZR/mjEOW5ukjwx3WO
 D790zH6zY8BTNZMfFYcvZp0qWlhHnlaKH6s6sHLhTebB3mDNkplH9cbtfEOHiS5EPTrga2i+e2c
 myUAw12j7jR5HNhqdIeYjoQaqVPRW7m+yyJvkTfLgwLJ2rkOKfa895TIIBr2aLMkyAcZ/LUdGtK
 stmG7fntVbZFyuSr0xQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-04_06,2026-04-30_02,2025-10-01_01
X-Proofpoint-Spam-Reason: safe
X-Mailman-Approved-At: Tue, 05 May 2026 22:41:01 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nutanix.com; h=
 cc:content-id:content-transfer-encoding:content-type:date:from
 :in-reply-to:message-id:mime-version:references:subject:to; s=
 proofpoint20171006; bh=cuYxA21MOfsE49m46/kiTh3Ur39ytOWqQmEqeQac9
 PY=; b=akan5Wd4BMLpWlTrORIbd7AvBZuHo9no/ys5DO5O+YJxI0CoyZFZmPsMe
 7pyN5k52IBsdySm00MzEPB9zYYCfy35tSt4d7LHi4HgYK1209f5UiRrUFJMy1C4p
 zeDi5qwCObXgDBsbG0SeQgCCRPvhD2vtZdqxmbFKCPPpJjSnOVNtlJq0TgWHGyD4
 vPJAyukuuYrHvkOmsk+41OTQm/X/sJU+QIDby8DiGlDztWrA9SSSSw6L00YyOzPo
 YGlJVQKugDHbfCb+pLl+dg9wX8qSGti97+R3xOOTcz1FqcUFeYKgGtAIuS7BK2e2
 c4E7JVbij9iiGqW4QrmdPp+F5gqGA==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nutanix.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cuYxA21MOfsE49m46/kiTh3Ur39ytOWqQmEqeQac9PY=;
 b=TneN+SCVyrj5OwzNuDxmHY6lE63hVZIwth+ruzWYcoLWDisKjcgMFxkPmjHVrm7UoLp2cXH/Ke8PiMKiN6N0w+TUfxmemBMmlTyDcz0bx2qOfnPGY4s0U9Bf+7pIliUkS3em3A7M3pDx5Iz/L0TEtho+P1sAhEzNu4PxdW2wAkMREEvInNhONZdFZ8b7QcXmfYhMt8a/altN1v1e9PNOkkK31e18sm4++rS/SHopPnVL4N3fpTELDY7GzeQbP72LobjzsUy4cvD3P6UnvcFhLYlBBgXD/eC0AgmK2S03CgAN7teEaGJK1tb5Q3torR5JVi7O7AD0bfQHR1GoGl++Sg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=nutanix.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=nutanix.com
 header.i=@nutanix.com header.a=rsa-sha256 header.s=proofpoint20171006
 header.b=akan5Wd4; 
 dkim=pass (2048-bit key,
 unprotected) header.d=nutanix.com header.i=@nutanix.com header.a=rsa-sha256
 header.s=selector1 header.b=TneN+SCV
Subject: Re: [Intel-wired-lan] [PATCH net-next] e1000e: ethtool: add
 get_channels support
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
X-Rspamd-Queue-Id: C07E04D46C4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[nutanix.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:kuba@kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_SENDER(0.00)[jon@nutanix.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	APPLE_MAILER(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jon@nutanix.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[11]

DQoNCj4gT24gTWF5IDQsIDIwMjYsIGF0IDc6NDnigK9QTSwgSmFrdWIgS2ljaW5za2kgPGt1YmFA
a2VybmVsLm9yZz4gd3JvdGU6DQo+IA0KPiBPbiBNb24sICA0IE1heSAyMDI2IDA4OjQ4OjIzIC0w
NzAwIEpvbiBLb2hsZXIgd3JvdGU6DQo+PiBlMTAwMGUgaGFyZHdhcmUgc3VwcG9ydHMgYSBzaW5n
bGUgUlgvVFggcXVldWUgcGFpciwgYWRkIGJhc2ljIHN1cHBvcnQNCj4+IGZvciBldGh0b29sIC1s
IChpLmUuIGdldF9jaGFubmVscyksIHNvIHRoYXQgY2FsbGVycyBpbmRlZWQgc2VlIGEgc2luZ2xl
DQo+PiBxdWV1ZS4NCj4gDQo+IFdoeT8gSXNuJ3QgRU9QTk9UU1VQIGZyb20gZXRodG9vbCAtbCBp
bXBsaWNpdGx5IHNheWluZyB0aGF0IHRoZXJlJ3MNCj4gb25seSBvbmUgcXVldWU/DQoNClBlcmhh
cHMsIGJ1dCBJ4oCZbSBub3Qgc3VyZSB0aGF0IGlzIGEgZ3VhcmFudGVlLiBBIGdvb2QgcmVsZXZh
bnQgZXhhbXBsZQ0KaXMgd2hlbiBJIGFkZGVkIGdldF9jaGFubmVscyBzdXBwb3J0IHRvIGVuaWMs
IHdoaWNoIHN1cHBvcnRzIGFsbCBzb3J0cw0Kb2YgY2hhbm5lbHMsIHNvIEkgZG9u4oCZdCB0aGlu
ayBFT1BOT1RTVVAgY2FuIGJlIDEwMCUgY29uc2lkZXIgcmVsaWFibGUNCmluIHRoYXQgY2FzZS4g
TWVhbmluZywgaWYgaXQganVzdCBzbyBoYXBwZW5zIHRoYXQgdGhlIG9yaWdpbmFsIGF1dGhvcihz
KQ0KZGlkbid0IHB1dCBpbiBnZXRfY2hhbm5lbHMsIHRoYXQgZG9lc27igJl0IG5lY2Vzc2FyaWx5
IG1lYW4gdGhlcmUgaXMgb25seQ0Kb25lIHF1ZXVlLg0KDQpBbmQgaW4gdGhpcyBjYXNlLCB0aGVy
ZSBpcyBhbiAib3RoZXIiIHF1ZXVlIGFzIGFzIHdlbGwgdG9vLCBhcyBmYXIgYXMNCkkgY2FuIHRl
bGwsIHNvIHRoZSBvdXRwdXQgaXMgYXQgbGVhc3Qgc2VtaS1pbnRlcmVzdGluZy4NCg0KSm9u
