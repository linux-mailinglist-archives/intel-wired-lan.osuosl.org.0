Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aLSxCaBRFWrkUQcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2026 09:54:08 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 057615D212A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2026 09:54:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2B1CF40497;
	Tue, 26 May 2026 07:54:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MVxn8J8KuqJU; Tue, 26 May 2026 07:54:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8CF3A4031C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779782042;
	bh=2hakhME1NRkd4xoudYV19oREEmqOdVHiB3yyX4HTYYw=;
	h=To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=TJX09etNZGATFQCNL9KcX+17GzJqeH2WcVTiAOCeAsdGdOFh2FacvFnUhRN8Rh7Ps
	 c1PADhrM/Nu5KZBQ48ZgEj3tERnnEma0iia7KZ1xwSUIPx4KmNZOG8GjKnHjCcqUjc
	 rfxyw219+Yq/Dc8KsdpE4CLQiGCO1wsAxo7LB72ApUQLe8Rh9sKTjXQ5xVa0QvdfAt
	 HELA9cIm4xHEz4Ze3SkWdu5sDtvFDfWHEqLEcr7+nl3nXL9ZCoWsyTIQcIY1PPfkD8
	 oyuG2LFGsF3D3SZKCYKcqHURIaqy4lj9uLZroAk7cRpF9kJI4Cc9qvfbvfOD/eNYKj
	 ANP8PW+MYc9jA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8CF3A4031C;
	Tue, 26 May 2026 07:54:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 622FE21F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 07:54:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 47774401A0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 07:54:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BWuTb4kNPN4Z for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 May 2026 07:54:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.72.34;
 helo=am0pr02cu008.outbound.protection.outlook.com;
 envelope-from=felix.moessbauer@siemens.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 209F840172
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 209F840172
Received: from AM0PR02CU008.outbound.protection.outlook.com
 (mail-westeuropeazon11013034.outbound.protection.outlook.com [52.101.72.34])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 209F840172
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2026 07:53:59 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WV5yKEwnH79ipokYIKJbva7PNgFPlUAxdOD7lRgNe7OO5f88x9KYc1hz90nI9eTk55+n0jQlzYGCwSQMRT4XGH1JrJzGvBKg+7bX15IrtQ5GW1mljnqFIZiDvtCSm1zPqcxMQwO509u8zhdSZ07fg7chYaUSq8Ic2z/ELUtKB8Nav80itQ9u5HEt5DH0dp0DqVmDLZkfhmQk0cnFi87W681DQT30GCOdoN8WMVXbXKyeAcHE9Kx+FQYLiZPBU8Hy43puqGlkr157rN74qQ2bU3JBhQ2n3YpklyYRO65owC0D1bsZIPA/Tb4kvTcWCuBxs0Xp/WQtDGx2iV4IOvLT/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2hakhME1NRkd4xoudYV19oREEmqOdVHiB3yyX4HTYYw=;
 b=ZPW1l3LNv1pjyg9EILYWRoY+9yvJNqL0OMTWH3VlWecD+IcFiFX9q7aHJ8vJIadeXM+r1kXup0bu4MNs68oLMX/+HPMdJRJTyiyl+kE+nn142t69kwcV7Rta+SAGst/XXuWnrVcTamEDAjCF8dNbxkarJhcwgl4rGPwrXPISEwP36sr+NIUyqxuyspnuppA+atE5CSSdxA7XxP58WBGS2pOc1hdhGA7zPEjNUTZsN+3hAZ1WnHUbxs+v6gNIa8vSrhDEGagl8yeYykSuZ6hSTj8OR1nxavuxnRc9NVXAt95L6RULzl2bVhvgn6DF4+5ZH5AU7cVa4/idSJg7iVnEfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
Received: from GVXPR10MB5936.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:150:1::5) by
 DB5PR10MB7824.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:4a8::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.48.20; Tue, 26 May 2026 07:53:54 +0000
Received: from GVXPR10MB5936.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::9d92:3275:c0fd:8e39]) by GVXPR10MB5936.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::9d92:3275:c0fd:8e39%4]) with mapi id 15.21.0048.019; Tue, 26 May 2026
 07:53:53 +0000
To: Simon Horman <horms@kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub
 Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Yan, Zheng"
 <zheng.z.yan@intel.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "Behera, VIVEK" <vivek.behera@siemens.com>, "Ertman, David M"
 <david.m.ertman@intel.com>, Sasha Neftin <sasha.neftin@intel.com>, Heiner
 Kallweit <hkallweit1@gmail.com>
Thread-Topic: [PATCH net 1/1] igb: Return state in pm_runtime_idle instead of
 power-down
Thread-Index: AQHc3Herk3wUY8VQAEubOwxUseWXPrYD6RaAgBwnkoA=
Date: Tue, 26 May 2026 07:53:53 +0000
Message-ID: <1c72678bab1eeca51b7f849a6f85999995b646f3.camel@siemens.com>
References: <20260505101141.2657169-1-felix.moessbauer@siemens.com>
 <20260508095659.GM15617@horms.kernel.org>
In-Reply-To: <20260508095659.GM15617@horms.kernel.org>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.56.2-9 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: GVXPR10MB5936:EE_|DB5PR10MB7824:EE_
x-ms-office365-filtering-correlation-id: 44e5ee65-1273-47cd-1f50-08debafbeeaf
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|38070700021|55112099003|18002099003|22082099003|56012099003|6133799003|4143699003|11063799006;
x-microsoft-antispam-message-info: 4YUa78yXQD7ttYJQczx0oRa0YIy7GiGGLmbf5V2bZvb3TtdM5vll8SxguKGupiJWCPUQ0c+OCDkaKpn9vAyhI90Nf+V0nq7THpxRng8D01A5dy2x17OCTiTMnRlqjdgS0+PSOPCgZdOG4Oq7UEkEaDCZyjSVuJ/XqEBb9GuoQ2ZBSKxq/VGJU7EPjdH822/lmAdySGwVkcrAg+D5L2qtetPXpK8TXjGg/99mAXCB+0iyXQkIgBlruoHtNc9f15wY3vRuJxOE5T4cow/qqmIyeFknnOdZMoQM63ggB/nFxcckLvrPP6MOXvy4Cj+eZC6OsrhSzBCVrWjjXDQK6RhSyD5dngyQV/iUE8y/QzAPBkaysooQVWebXZXHKnVIbqtEvGPRRgyQc7Quu/Gt1rX99k+2Q9cYuwtMBaDW1AmsF6xyDd5bA94YBSmdzOuOFs428+KVpz8dxMenIC/rI9Z2DzczCj97lTbL1IwnAzEWRImYCcOb42uBGB9grcTJ63aEcYPd4VET+3bLg+obzP1lcMquQdyBD9aIk4i95Sv7LdCOUwowCXvx2C/CJaguhLiH/6tZgxZd4sY0tAuSCSfIm/E5q8oMX92q/Zcx5sQQ0vm4F+dUcxUwaFCOXtqEnyVuAgEbI8gwCaQLzEhBTMlDlabzOxleQN+rljVd2D6NBYKAMYZctdgVrbI8+9UL16HyEGLakmQ9FVBBx8snfEbE9VL4rB8CmmmS1/uE05K/vhalupmk02OVIcdECy+wcvi0
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:GVXPR10MB5936.EURPRD10.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(38070700021)(55112099003)(18002099003)(22082099003)(56012099003)(6133799003)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?amdGRGhHdUpYdXNJQUdzQ3hHVEd6TEtVOGNlV1FxRXIzVHpiVzRBdGE1YTJV?=
 =?utf-8?B?ZXl6NEFPT2ptdzRaeUlRV1ZIV25JL00vOCt3N0hFRUxMYjdLREVoTDZBMnVR?=
 =?utf-8?B?UFBRRUUzaFJIVkdBYk5PTXFEWnlKUXVNSEM1ZnV6bFBiWVorQXhadHYzY0dU?=
 =?utf-8?B?akhRUXRsaGdKeW04cG90bDJMamNmMEQ5TFh6cndPYzJwQzlydmV4b2o1SzFH?=
 =?utf-8?B?a3FzSUlXUkhjSFdPS09mSTZTYXpQR2ROdkxaUWdLTElVTDdhajJSUU9YSDhm?=
 =?utf-8?B?bWNVOXVIVWJMbExBd1YzZTdlV1ZzRG52TDM3QWptRWZKTEkrM1UvTUJ6eE9x?=
 =?utf-8?B?ekJhdG91TU1UUDI0Y2RZMUhsd2xEMWlldnVCYTJ1RFNSTzl4OEhTdkl6R3By?=
 =?utf-8?B?cGN1b1lxcTZnS0dzYlVPd1J5S0ZaVVVSQ0FESTdzL3RFWFcvdWRiZmZRM3Ru?=
 =?utf-8?B?bitBY29aazlyek1rU0tCMTRaa1RBY0NhVCs2Mk1oNVR3OFcyOXZ3MlFqN0lK?=
 =?utf-8?B?YXNGdjJtaHd0a1ZoVTdRNllTd0wzdEdvOWZVb0hlb29kQ21xY0RnZ3dqS0l6?=
 =?utf-8?B?dG0weG94RlRxWWkxUHZ1Ynh6Z1BLejhxVGRTWmI2bG95VTRHSXBtYzNIcW0r?=
 =?utf-8?B?SnFianR5WkVtNnVDNCtMT3Q4cjFLM0JoUTFab2lNV3JabWl2c2dyZmlHaHN2?=
 =?utf-8?B?bFZQclRzNytzYWhCQTRZZThGc1hKUTJaN2VqRm5XcEdybzhhcWRkZll4MEdW?=
 =?utf-8?B?bDlFMmhUU0E3THVuMmo2eXQwQVp6RUZBOXlqendiU1dkL3dVNy84eElDUEoy?=
 =?utf-8?B?UHhFaUZTdllTUFdxRnlCd2VXclJBRmdZRVdjMUhRV1JoTUlMOVh5UGJCbXpm?=
 =?utf-8?B?cE9jeUxlMVBVQkZ0Ni94RlpmVTloUDdhVVZQNnIvRnNDdlUxZTB4bHU0TDdW?=
 =?utf-8?B?eXM2bFEvYVBFKytjV292YUlKdVRScVl2TEZHUEFldnlad2liQUFSVnNzbVVr?=
 =?utf-8?B?Y1l2U2hpU1ViRnRsenhnelJpL1RJdWdXdHhrZG0xU2pDVzZBYnQ1azZOQ2Z6?=
 =?utf-8?B?ZDJ5WExxZVN4bkZXd2hoS3czdC9RUkRUbnJnd21oNVAxWXRuS2orNmd3R3hv?=
 =?utf-8?B?TGoyZDJhbUhNbzZjRUxtL0o0T3J6REtlSmZ0Z2FpdThBeXBiTVdWa3A4M1FW?=
 =?utf-8?B?eFR2bW9iSEdsZjg2OTNBMnpJa1FjWE5VMlVVeGR0b3k3UUxiSzJPaUg5U3Zi?=
 =?utf-8?B?UFR2RS80RDBJbFpVM21qTVlzNkNVeDE3c29jdlE1TGlhejZwU2dWU253MVFM?=
 =?utf-8?B?bC8wdW9IMkhjcXgybmdqWkNMazJ6UnUxSDdaaXV0UDdPbzZza2ZpQzFNY2N5?=
 =?utf-8?B?THJmb0lZaEV4K3FhelU4L2U5dVdseDhyR0F0dkhsWGNNQk9oSEZPMzZwM2lP?=
 =?utf-8?B?Tk9IaHZySDN6cUZHK3JINzErZVpwVHhtVjBqRThJaFk4dHlobExaWnhHR245?=
 =?utf-8?B?ZHZUS3VYTzZzR280bVphcmVQemxqZ0IyZ2pQaEN4d0NBSGpTdU5DeW1zTEhS?=
 =?utf-8?B?RGZ3cXpCYXdhSDhPL3BLRUczTUFmVDdDd1AxaGlyY1ExWEF6WE1UcDdsVVE4?=
 =?utf-8?B?K1JONXRMUkZ2WkNITjQ0L3VwaVpFL2NiRW40V0hoK1F5U254UjlKeVJyOXBH?=
 =?utf-8?B?NVFLMzkwbHNXNnYyaHlvNzh4TVloeUpCNC9YK1JCZHJ6RTljNW1DYVlkajcy?=
 =?utf-8?B?UjRNTytDVlE1Y2NGYXV2Q3FZWUwxTWZwVW0vazBDaEVVZUcrVURIMmdkTWhW?=
 =?utf-8?B?QW1LdnJxdUxBTGl2RkNtbjYwODZDUkZjS0hLYks1Yk4xWjlLVjlveURqVE9K?=
 =?utf-8?B?ZUtreGhucUZ0dTVoNUtLN25LbndPMFdDbmZWSUNSQjBBL1U4ZFM4SXE3cFg1?=
 =?utf-8?B?N3lFeXFwbVdIWVZkd2ZFQkNHeElVM1dCdlhna3ZPaCtCdGRYcVg0V05jWnY2?=
 =?utf-8?B?OTd0MGhLS1JjLyt2bU1oQXUzdmRReEFTUEtCOFlZV2pqaURvWSs0VkQ4aTc3?=
 =?utf-8?B?YXFQRmxGRUdSNzA3eHhqSzBNTEFVYitTUUd0RHZVaEtZZzIzZkF3SVlMZDRm?=
 =?utf-8?B?NjduVElZSk9tRTdwejhXTjFoSko4S0tod1AwMVc4S3krK1pJYVVKbGE4dWJa?=
 =?utf-8?B?Y0pLYWQrODU5V3JIa2JKNFNhQm5WQkpnb0IrMnhrMWJaLzFOTXR1eS9GSGRF?=
 =?utf-8?B?RXV6clpaRk9TNm1qVzdtSk5peG96dit6OVBOeUsrOFovTjB6VVVFcVBGY0VV?=
 =?utf-8?B?WCtmSjVJUCtWeGorTlEwaytMaGJ4Q0RQY0Noby9hY3ZtTlp2ZGJtdz09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <1C0835FA0A59934E8757F9C1B83E60BF@EURPRD10.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: GVXPR10MB5936.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 44e5ee65-1273-47cd-1f50-08debafbeeaf
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 May 2026 07:53:53.7007 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3SZDs5oN7N+8BgomatbL2U0kVmS+pV2Lfk/+/g/R5L84dF6KKZansTqop8HqaedZG9vyj8JKvBWFFa/MM2LjFykRXHQvDTXtHBA9+Jf7lDo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5PR10MB7824
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=siemens.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2hakhME1NRkd4xoudYV19oREEmqOdVHiB3yyX4HTYYw=;
 b=iSvUS8c9AphAJbnqay8MwtOZjvV4JHx9okshNZA+INv0Zah0jvRAIh5EGxkFWdaI35eRRwEj1d7lcbPlwiKp+t8abrasVzbKWz7cI5XKDdQ9QqrZKkgvL07no7MxjdKEXbKmeF5SCVZi+taG+jhPewILQBVPflM4AI4m87g+0MsHWhts/tEhjl7Q9gAkbr6dNPXDvzTJrCh3Wkl9ZA07XXWG1t6PUVEkf1AEWn0oMuu/5hkGCrMqWwsd28Sle67fsGOa4UslrOLC2bFgaTDB01ys0GzdT/Mf1x3PKhGo1RS7Gu3TdMzJMjZs7O1m1A8ERany75UhbITsQ3TBrOzapw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=@siemens.com header.a=rsa-sha256
 header.s=selector2 header.b=iSvUS8c9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
Subject: Re: [Intel-wired-lan] [PATCH net 1/1] igb: Return state in
 pm_runtime_idle instead of power-down
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
From: "MOESSBAUER, Felix via Intel-wired-lan" <intel-wired-lan@osuosl.org>
Reply-To: "MOESSBAUER, Felix" <felix.moessbauer@siemens.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:zheng.z.yan@intel.com,m:netdev@vger.kernel.org,m:vivek.behera@siemens.com,m:david.m.ertman@intel.com,m:sasha.neftin@intel.com,m:hkallweit1@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[siemens.com:replyto,siemens.com:mid,siemens.com:email];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	HAS_REPLYTO(0.00)[felix.moessbauer@siemens.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[lists.osuosl.org,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,vger.kernel.org,siemens.com,gmail.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_SPAM(0.00)[0.241];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 057615D212A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gRnJpLCAyMDI2LTA1LTA4IGF0IDEwOjU2ICswMTAwLCBTaW1vbiBIb3JtYW4gd3JvdGU6Cj4g
KyBEYXZpZCBFcnRtYW4sIFNhc2hhIE5lZnRpbiwgSGVpbmVyIEthbGx3ZWl0Cj4gCj4gT24gVHVl
LCBNYXkgMDUsIDIwMjYgYXQgMTI6MTE6MzRQTSArMDIwMCwgRmVsaXggTW9lc3NiYXVlciB3cm90
ZToKPiA+IFRoZSBQTSBydW50aW1lX2lkbGUgQVBJIGV4cGVjdHMgdG8gZ2V0IGFuIGluZGljYXRp
b24gaWYgdGhlIGRldmljZSBjYW4KPiA+IGJlIHBvd2VyZWQgZG93bi4gSW5zdGVhZCBvZiByZXR1
cm5pbmcgdGhlIGFwcHJvcHJpYXRlIHN0YXRlLCB3ZQo+ID4gY3VycmVudGx5IGRpcmVjdGx5IHBv
d2VyIGRvd24gdGhlIGRldmljZSAoaWYgbm90IGFjdGl2ZSkgYW5kIHJldHVybgo+ID4gdGhhdCB0
aGUgZGV2aWNlIGlzIGJ1c3kuCj4gPiAKPiA+IFdlIGNoYW5nZSB0aGlzIGJ5IG1ha2luZyB0aGUg
ZnVuY3Rpb24gc2lkZS1lZmZlY3QgZnJlZSBhbmQganVzdCByZXR1cm4KPiA+IHRoZSBzdGF0ZS4K
PiA+IAo+ID4gRml4ZXM6IDc0OWFiMmNkMTI3MDQgKCJpZ2I6IGFkZCBiYXNpYyBydW50aW1lIFBN
IHN1cHBvcnQiKQo+ID4gU2lnbmVkLW9mZi1ieTogRmVsaXggTW9lc3NiYXVlciA8ZmVsaXgubW9l
c3NiYXVlckBzaWVtZW5zLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2lnYi9pZ2JfbWFpbi5jIHwgMiArLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKSwgMSBkZWxldGlvbigtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWdiL2lnYl9tYWluLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Z2IvaWdiX21haW4uYwo+ID4gaW5kZXggY2U5MWRkYTAwZWMwZS4uZThhYjBiNTA2YTEwNCAxMDA2
NDQKPiA+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9pZ2JfbWFpbi5jCj4g
PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX21haW4uYwo+ID4gQEAg
LTk2NTIsNyArOTY1Miw3IEBAIHN0YXRpYyBpbnQgaWdiX3J1bnRpbWVfaWRsZShzdHJ1Y3QgZGV2
aWNlICpkZXYpCj4gPiAgCXN0cnVjdCBpZ2JfYWRhcHRlciAqYWRhcHRlciA9IG5ldGRldl9wcml2
KG5ldGRldik7Cj4gPiAgCj4gPiAgCWlmICghaWdiX2hhc19saW5rKGFkYXB0ZXIpKQo+ID4gLQkJ
cG1fc2NoZWR1bGVfc3VzcGVuZChkZXYsIE1TRUNfUEVSX1NFQyAqIDUpOwo+ID4gKwkJcmV0dXJu
IDA7Cj4gPiAgCj4gPiAgCXJldHVybiAtRUJVU1k7Cj4gPiAgfQo+IAo+IEhpIEZlbGl4LAo+IAo+
IEkgYW0gbm90IHN1cmUgdGhpcyBpcyB0aGUgcmlnaHQgYXBwcm9hY2gsIGFyZSB5b3Ugc2VlaW5n
IGEgYmVoYXZpb3VyYWwKPiBwcm9ibGVtPwoKSSBkb24ndCBzZWUgYSBiZWhhdmlvcmFsIGlzc3Vl
LCBidXQgYSBjbGVhciBBUEkgdmlvbGF0aW9uLiBUaGF0J3Mgd2h5IEkKYWxzbyBhZGRlZCBhIGZp
eGVzIHRhZy4KCj4gCj4gCj4gVGhpcyBwYXR0ZXJuIHNlZW1zIHRvIGFsc28gYmUgcHJlc2VudCBp
biBhdCBsZWFzdCBlMTAwMGUsIGlnYyBhbmQgcjgxNjkuCj4gCj4gVGhlIGlnYiBhbmQgZTEwMDBl
IGltcGxlbWVudGF0aW9ucyBzZWVtIHRvIGhhdmUgY28tZXZvbHZlZCBbMV1bMl0sCj4gcG9zc2li
bHkgaW4gY29uanVuY3Rpb24gd2l0aCBPT1QgdmVyc2lvbnMgb2YgZWFjaCBkcml2ZXIuCj4gVGhl
IGlnYyBpbXBsZW1lbnRhdGlvbiBjYW1lIGxhdGVyLCBwZXJoYXBzIGNvcHlpbmcgZTEwMDBlIG9y
IGlnYiBbM10uCgpJJ20gZmluZSB3aXRoIGFsc28gY2hhbmdpbmcgdGhlIG90aGVyIGRyaXZlcnMs
IGhvd2V2ZXIgSSdtIG5vdCBhYmxlIHRvCnRlc3QgdGhlc2UgKGV4Y2VwdCBmb3IgZTEwMDBlKS4K
Cj4gCj4gVGhlIGdpdCBsb2cgZm9yIHI4MTY5IHNlZW1zIHRvIHByb3ZpZGUgYSBqdXN0aWZpY2F0
aW9uIGZvciB3aHkgdGhhdAo+IGRyaXZlciB1c2VycyB0aGlzIGFwcHJvYWNoIFs0XS4KPiAKPiAg
ICAgLSBMZXQgdGhlIGlkbGUgbm90aWZpY2F0aW9uIGNoZWNrIHdoZXRoZXIgd2UgY2FuIHN1c3Bl
bmQgYW5kIGxldCBpdAo+ICAgICAgIHNjaGVkdWxlIHRoZSBzdXNwZW5kLiBUaGlzIHdheSB3ZSBk
b24ndCBuZWVkIHRvIGhhdmUgY2FsbHMgdG8KPiAgICAgICBwbV9zY2hlZHVsZV9zdXNwZW5kIGlu
IGRpZmZlcmVudCBwbGFjZXMuCgpUbyBtZSBpdCBzdGlsbCBpcyBhIGJpdCB2YWd1ZSwgd2h5IGl0
IHdhcyBpbXBsZW1lbnRlZCBsaWtlIHRoYXQuIEJ5CmltcGxlbWVudGluZyBpdCBhcyBkb25lIHBy
aW9yIHRvIG15IGNoYW5nZSwgd2UgaGF2ZSBwbV9zY2hlZHVsZV9zdXNwZW5kCmluIG11bHRpcGxl
IHBsYWNlcyAoYWxvbmcgd2l0aCBhIGhhcmQtY29kZWQgZGVsYXkgb2YgNSBzZWNzKS4KCj4gCj4g
V2hpbGUgdGhlIGN1cnJlbnQgZTEwMDBlIGltcGxlbWVudGF0aW9uIHNlZW1zIHRvIGFkZHJlc3Mg
c29tZSByZWxpYWJpbGl0eQo+IGlzc3VlcyBbMV0sIGFsdGhvdWdoIGl0J3Mgbm90IGVudGlyZWx5
IGNsZWFyIHRvIG1lIGhvdyB0aGF0IHJlbGF0ZXMgdG8gdGhlCj4gaXNzdWUgYXQgaGFuZC4KCkkg
ZG9uJ3QgdGhpbmsgdGhhdCB0aGlzIHJlbGF0ZXMsIGJ1dCBJIGFsc28gZm91bmQgdGhlIGlnYl9y
dW50aW1lX2lkbGUKaW5jb25zaXN0ZW5jeSB3aGlsZSBkZWJ1Z2dpbmcgd2h5IHNldHRpbmcgdGhl
IG1hYyBhZGRyIG9uIGFuIGlnYiBuaWMKd2l0aG91dCBjYWJsZSBhdHRhY2hlZCAobm8gY2Fycmll
cikgZmFpbHMgb24gc29tZSBzeXN0ZW1zLgoKSU9XOiBXaGF0IEkgcHJvcG9zZSBoZXJlIGlzIGEg
ZHJpdmUtYnkgZml4IGJhc2VkIG9uIG1lIHJlYWRpbmcgdGhlIGNvZGUKYW5kIHRoZSBQTSBBUEku
CgpCZXN0IHJlZ2FyZHMsCkZlbGl4Cgo+IAo+ICAgICBGaXggaXNzdWVzIHdpdGg6Cj4gICAgIFJ1
bnRpbWVQTSBjYXVzaW5nIHRoZSBkZXZpY2UgdG8gcmVwZWF0ZWRseSBmbGlwIGJldHdlZW4gc3Vz
cGVuZCBhbmQgcmVzdW1lCj4gICAgIHdpdGggdGhlIGludGVyZmFjZSBhZG1pbmlzdHJhdGl2ZWx5
IGRvd25lZC4KPiAgICAgSGF2aW5nIFJ1bnRpbWVQTSBlbmFibGVkIGludGVyZmVyaW5nIHdpdGgg
dGhlIGZ1bmN0aW9uYWxpdHkgb2YgRW5lcmd5Cj4gICAgIEVmZmljaWVudCBFdGhlcm5ldC4KPiAK
PiAgICAgQWRkZWQgY2hlY2tzIHRvIGRpc2FsbG93IGZ1bmN0aW9ucyB0aGF0IHNob3VsZCBub3Qg
YmUgZXhlY3V0ZWQgaWYgdGhlCj4gICAgIGRldmljZSBpcyBjdXJyZW50bHkgcnVudGltZSBzdXNw
ZW5kZWQKPiAKPiAgICAgTWFrZSBydW50aW1lX2lkbGUgY2FsbGJhY2sgdG8gdXNlIHNhbWUgZGV0
ZXJtaW5pc3RpYyBiZWhhdmlvciBhcyB0aGUgaWdiCj4gICAgIGRyaXZlci4KPiAKPiBbMV0gNjNl
YjQ4ZjE1MWI1ICgiZTEwMDBlIFJlZmFjdG9yIG9mIFJ1bnRpbWUgUG93ZXIgTWFuYWdlbWVudCIp
Cj4gICAgIEZyaSBGZWIgMTQgMDc6MTY6NDYgMjAxNCArMDAwMAo+IFsyXSA3NDlhYjJjZDEyNzAg
KCJpZ2I6IGFkZCBiYXNpYyBydW50aW1lIFBNIHN1cHBvcnQiKQo+ICAgICBXZWQgSmFuIDQgMjA6
MjM6MzcgMjAxMiArMDAwMAo+IFszXSA5NTEzZDJhNWRjN2YgKCJpZ2M6IEFkZCBsZWdhY3kgcG93
ZXIgbWFuYWdlbWVudCBzdXBwb3J0IikKPiAgICAgVGh1IE5vdiAxNCAwOTo1NDo0NiAyMDE5ICsw
MjAKPiBbNF0gYTkyYTA4NDk5YjFmICgicjgxNjk6IGltcHJvdmUgcnVudGltZSBwbSBpbiBnZW5l
cmFsIGFuZCBzdXNwZW5kIHVudXNlZCBwb3J0cyIpCj4gICAgIE1vbiBKYW4gOCAyMTozOToxMyAy
MDE4ICswMTAwCg==
