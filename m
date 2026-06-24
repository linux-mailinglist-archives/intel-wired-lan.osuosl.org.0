Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id iM/uOYmfO2r7aQgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jun 2026 11:12:41 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 322276BCD77
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jun 2026 11:12:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=PsOP1iXL;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=pass (policy=none) header.from=osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B15BF40BE9;
	Wed, 24 Jun 2026 09:12:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HOQqsav_5z_Q; Wed, 24 Jun 2026 09:12:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0DCA240BEE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782292359;
	bh=EtOEkKjLLpVXA7dYRdKXvon2pkNwm6ZedRqoiwm8+gw=;
	h=To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=PsOP1iXLHb3fvZFQZZRPzNqiKevbpMHvu+KHqIrJyRTaIPcZBf2lz9051gedD7fhJ
	 OJ9k+FKaL3OD7BfFWWprbDwOv0C3YNxQULRT1zS9Ow/nXkd2w5mTAttha8Hke4fFjd
	 eIGEivrs/jHYxNJoN963c6poYhrXOY/DRNmcKmlUojQvRI79BAHh4d/MlPwv0W0T9c
	 SIHXDTeT6t1mAc1xf8VIKLuVdLzXPVCRSOeleocrYDKLxKxTZ981YzFmKasC3YtdJk
	 P4i3fI0GhGPToPUx3uyImXi67pLlsRe74JEfalreEMW9Iq9jmD6Y4PHIU/fzKu2Zqg
	 SdUn6lHLwlyOA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0DCA240BEE;
	Wed, 24 Jun 2026 09:12:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id C646E367
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2026 09:12:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C372F60BB1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2026 09:12:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2QxtrOWtC8CQ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jun 2026 09:12:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.84.10;
 helo=db3pr0202cu003.outbound.protection.outlook.com;
 envelope-from=florian.bezdeka@siemens.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 57AC860BB0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 57AC860BB0
Received: from DB3PR0202CU003.outbound.protection.outlook.com
 (mail-northeuropeazon11010010.outbound.protection.outlook.com [52.101.84.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 57AC860BB0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2026 09:12:35 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jGiOFSer3QqLmtYCvl+14uoi6DEf1a8fvxuZBLscjIcYUx2Rbux2ILdRUrco1f+21Ub55WuW6cIgVGn4/x1DLtwvr1YrZBuqWwUqn4zG66jzS1O4VrW4cdEKDAx8InPYtOAmYXaozmTfMNkxCUwir7+V2bXrLWy9sWAZ2l107ubQ2NYjnTzgGVzqARn91xfphoD5LhIsjDt4K2Zjm4wrfuNaC5Nz+Bm9G98C47XTEgIZSZYGQGlIsAWxFJ0v/J5uNINSAE8g7sZ1He7VUIFApM1kKojoA3Buqg9FGwVP7rL5c/puyKdeB+vQ8NrhO9LKboFs6/eKBIbNHl95ZvFYMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EtOEkKjLLpVXA7dYRdKXvon2pkNwm6ZedRqoiwm8+gw=;
 b=TyKvZwnr9QtU/tRrm9kscpPoY3QtxZQm0NjAnafNFobRWMKP33yjKnNGb8FFvWEaxohHn90cuWZZiWy7N+tAqvQbf7b+xGJ0Frr5AA3MMlrDAIimHcbwz+51+uabo0HWjvEmPuOdFiXOH4UicoLQwu7sFXe79jmOHfT1Rj3KEZTcWlloSx4DbCeD35o4hoL0YWy7/PCA5Fm9zbtzYFIC+ox6Q1j93WCSpzrozyPMTZ4ZY3+RKtAJLmhI/4usdiNAJVTfvBZkI1DbhGM+1kfxl6845HzoEzJVf3Qjv/XFKURZQ7gEqkqCzy3ZH3wRv42HEDj4+7lLvrdXdPczz2ZkTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
Received: from PAXPR10MB5712.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:248::14)
 by AM0PR10MB9646.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:73e::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.13; Wed, 24 Jun
 2026 09:12:32 +0000
Received: from PAXPR10MB5712.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::4072:14dc:7d1:74c7]) by PAXPR10MB5712.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::4072:14dc:7d1:74c7%5]) with mapi id 15.21.0159.013; Wed, 24 Jun 2026
 09:12:32 +0000
To: "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "davem@davemloft.net"
 <davem@davemloft.net>, "przemyslaw.kitszel@intel.com"
 <przemyslaw.kitszel@intel.com>, "aleksandr.loktionov@intel.com"
 <aleksandr.loktionov@intel.com>, "Ding, Meng" <Meng.Ding@siemens.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "edumazet@google.com"
 <edumazet@google.com>, "anthony.l.nguyen@intel.com"
 <anthony.l.nguyen@intel.com>, "Kiszka, Jan" <jan.kiszka@siemens.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Wang, 
 Qi" <wq.wang@siemens.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] igc: Fix RX HW timestamp reporting
 when NET_RX_BUSY_POLL is disabled
Thread-Index: AQHdAf4kFIDdttYEPEerb38QGNkVArZKsv2AgAK8MoA=
Date: Wed, 24 Jun 2026 09:12:32 +0000
Message-ID: <e6bd795fc165589caa1947439a6b364c636dcf14.camel@siemens.com>
References: <20260622041718.6106-1-meng.ding@siemens.com>
 <IA3PR11MB89860AC4A5FBB899A502B2EAE5EF2@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB89860AC4A5FBB899A502B2EAE5EF2@IA3PR11MB8986.namprd11.prod.outlook.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.60.2 (3.60.2-1.fc44) 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PAXPR10MB5712:EE_|AM0PR10MB9646:EE_
x-ms-office365-filtering-correlation-id: 5d866ebc-e471-4c6d-c7fc-08ded1d0b94d
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|23010399003|366016|7416014|376014|55112099003|22082099003|18002099003|6133799003|38070700021|5023799004|11063799006|4143699003|56012099006|921020;
x-microsoft-antispam-message-info: 2B7lyf8lmU8PhBQEzVdeNzweWU/+NoT7pJtAKbnH98AYM2BB8/Qh8d5HJp2aEw2CFCPBo/xxYvBt/DK6NzSZaBbMwR+16Gxz/apqY7tTpW6cmEUMebDaRdHBFCGYoJvD9aLeS00g56qFTSiRpDM7CFGxBFkAoZAdE3EVQfibbSQ6z0NMDGQ4+/+QpRARb7O5REx9ocT9i0i1188vPxI7i3M8KSTTUBckgl6ypNrgWmwn6/shQobjQQREaRzgerDBbO9Ufa3440wjKtjIPOYbn4HDzfoINfj8o3nG0XFicOZYIbWWNNziRbcB2omXWr8DcIzTn98nS/T3GlI/y4L93Bmv1Z5m1k1FWoioL5teJYkJ2q7JNX1lQgN5Qnu3RRelfWpObotZh40k2tnyKGFFOlgbJCwfXsC2XFnxyjZbK6NG9cwy7qU20Lb2735+hqU0Kx8nSxeOGANJmmtVoVPneQE8IH0CsDuhYaxzP5j7YNK/5NvGp4YohGoIN2JGWU/5bYVv7geprfs+cJC36lNW/7ILnC2JdcxRenw03qFlo5ct6gBCAoJBkvtaqV+VNFa/wRzC8FNaY5TvVNrBkTwS6ekxvQBhRwUK15DheCX4awX8+5rl56YgLLPN3Vy95ezWsQl5qsl3rBzowpu7zLJn8jViME9cA6sAP7TSIbJjYEZG3LkhzLOFPMnvmbjCHf/gGYQ4QhRqCCdnXu2thqX/2z7qJqLIOj0VLqC79eckdMicYicWf10W2JnijqLyd01x
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PAXPR10MB5712.EURPRD10.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(23010399003)(366016)(7416014)(376014)(55112099003)(22082099003)(18002099003)(6133799003)(38070700021)(5023799004)(11063799006)(4143699003)(56012099006)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UWo0RngzNTN1NWZWUjhWNG4yQlZOQkJmV21KNThKRFFzRlE5R2luWVM3MXU5?=
 =?utf-8?B?UC8rV0lIbDJNa0hubVZhV0NxNHFEcElFUGZ5OFAzV2U5bUFRc2M5bFE2N01R?=
 =?utf-8?B?TXlwdzVPU2ViYlJoTVhWM00vR2ZQb25PNGtVaThkVktFUUl4d3FRRFhNUnFS?=
 =?utf-8?B?SU84Z0ZDSmE3NENkL0tLbytSUGJkbDhoVFlaTWZlRG5oSGgzb2pkcEVLdGo4?=
 =?utf-8?B?MGgrVGthaTc0OVFPWlpTc2NTMGR3SkEvSy9rSlovT1BUNnpoSzlzZGNDWldu?=
 =?utf-8?B?aXJISUtlR1hYWnBLckxjVStrRnZUcHFuSURQR0ZNNnhieUczTFMyRkM3MjI3?=
 =?utf-8?B?RGVDdTJjdkxGd25acVJmcU85dHQ2NG96MDg4TFlCYVExQVIwY1FSVWFyOEk1?=
 =?utf-8?B?aXY3ZjZFQ1hTUFBHQ2ZhOFNnY2pnK1VCUDFmb0xuVm9EZXF6dG85d2dWVWlo?=
 =?utf-8?B?Y2tOUlo1bkFMdTJkRStUR2F5emd2ZTZxWGY3UEd6OXdsdGVKT2VMZEhlZ0Z6?=
 =?utf-8?B?a3ZwM3JRb0RkajZ4SkdvdW0rcDR0bnJjYldDeE8zRmlEMnN5OC84a3lpdndU?=
 =?utf-8?B?My9rdG1KYWZTRlAwQ005KzhNUUlPQlNzM1Q3Unl4WU5xV1BTWkpUUWV6ZGpT?=
 =?utf-8?B?Z3E3ajdJWUZNUjVIdGRtckhKejNOcXBWNnNjM3p2Z0Nkc0haN0QvRE5oVW96?=
 =?utf-8?B?R2NyejNzUndLVkorQlFsNFd4bGt2NTl6SUVyVHZkT1VERzFwUkRraWNjLzFT?=
 =?utf-8?B?TTNEQkdzd0hyTEJ2dUhjL3dpR01lVlZlRmJEMjhjUHRkTlY5OVBLMW5xeU9o?=
 =?utf-8?B?dXR1MUFIcGNrMXJLSVlmb0p3b2pYektHclZLN1gyRjNpRHp3RmhpL2Y3WnBN?=
 =?utf-8?B?YjFSUndJSG9mV3J5cmlMYlhBb2dDRjJiKy9OUGlvaVp6YzAxYlp0MnByazlO?=
 =?utf-8?B?eUNSeTQvcWoyY2lreGZqL3ZxZGpKL21hWUprU0dVRkhFdWVaR00xSGN4ek56?=
 =?utf-8?B?ekszQmR0ajQyL2JNaEFzc3BBcE1tVzVQa1IzRmNPK1lCa1JyeUpFdUFOdXRn?=
 =?utf-8?B?ZDlvN3FWY2hWKzB2cXJvNm91UWRVM1ZBS3c1cU1FQUxpVnhFaEN3bHdsdmx2?=
 =?utf-8?B?Z3VRdW04czdPczdqTVVDTGpXM08zcUU4SnFCNEQxZ1YvREhDN1lJbmZsdk1n?=
 =?utf-8?B?d2tmTDVLcGVnejNtOTZPQUsrY1k1Vm5pYnpsU0hnSmRuUCtWZ3FORy9hSSs2?=
 =?utf-8?B?RThGdmZWemprVVBRajlOS2ZWbTBUM0xEUmY3VEY0OVRYSE4rY1pDdmQvK1pK?=
 =?utf-8?B?VTB3eGdUTFhiQTFhQ1BuK1h1SlZHbDZONk83UHFEa2I0VjlTVlBHaXM2czZ5?=
 =?utf-8?B?NStGRGRlUHBmU2U0QUVyTUh6MjZLVUkxbGRqOS9UWWRnNk5lK2MwckdmVkNm?=
 =?utf-8?B?NVdPVEdHeTBhSXZ1TVRBY05URTJMMHZYd3NJZWtuL2VjSGxSZTZwZ1QwN2ow?=
 =?utf-8?B?WVpJT3dQeTFhVlRIRFgxbCtnbU1aQkxwQ3JYNWxLNlFWaWZHNDFmWGV0VlJL?=
 =?utf-8?B?WjVLcER0eVhvRFl2N2xHWnRVNkloVm1odmJoSFNXSTMwY21LdlZkeHkwQXpX?=
 =?utf-8?B?LzZPWHN2d3FnVWFlU2UzZHFTVjc0MXBqVG93dHFlM2NUbGFONjZPUXFGY3lp?=
 =?utf-8?B?dVAxYS8vdncyVDFhNGpTdlpOa3NnUFpMUWhMekRmU2V2RFVHbXNMNmNpMkZo?=
 =?utf-8?B?OFAwenA0SWpudTRiNUwxOTYzNVNrT0hmUXhZbDd2aG5yNzg5b1RCWmc0MnpJ?=
 =?utf-8?B?RXk0b3BpbVBNdDhQeW1DQlJSNXMzN245ZXBiU29HSG12YWhVTlY0NGlXU3No?=
 =?utf-8?B?cFNHRWZYZjh6a09LZUc1NlVZYmUzZUlWVmYwVjFmVkRybjc2WktybXUwSHZX?=
 =?utf-8?B?VHlpbFM2SlF3TFJIUkw4RWVNWWd6S3AzUzhlcWNsSVZIQVFOTEhBZVBnOTE3?=
 =?utf-8?B?VW9TcHM4cXJXWTI3VjN1UjF1ZGRvSXFwSHVsSW9CVGtUR3pxbk9MUjhpVkdx?=
 =?utf-8?B?U0VUQ0IxaHJsRVpyT1RDZU1sNWo3WEE2ZGFSelAyMnhEYldaNkpOR2dSdU8x?=
 =?utf-8?B?Rm5OSXZDUnJKZHlDTzVZeVBoWWFZT29BNmtXV2dhK0JadmtCSmJOVjY5OENj?=
 =?utf-8?B?R1FZYzR5OHczMFBuQjE4Yjk1Q1RxcnZaWVJvbWdhQ0FCN2xhU2dVNXAyU20v?=
 =?utf-8?B?YXczREFhemhhaGkyeERnUS9XUUI3OTdyY1FTNTVWTlY4NGVnUWsrVS9POXho?=
 =?utf-8?B?TkRnM3FQNjJ1WlJDdXhJbEd3M1k0dmZ5YWdGazhXQlA5QjIyRXpqWFJaSk9N?=
 =?utf-8?Q?LH57gPdSZXcvJh5sH6OT6cqtkKqodSYuG7OwF06YtzXQE?=
x-ms-exchange-antispam-messagedata-1: Mdg/RTHKPKTWr1XzY8/eJpytzd2mJlkPf6w=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B81624437864374C9BC1A69C7EBAC794@EURPRD10.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PAXPR10MB5712.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d866ebc-e471-4c6d-c7fc-08ded1d0b94d
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2026 09:12:32.5089 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: R/kRYlDLqc5OPhsPsJAbFHAK8rrqZoftz3kVvwb3pL+6vvdrA36Rv51vL42f1oZ3kyUpQVgdZMxc4QScRD1EoPoGIqbMClrHgLgE0HzrN9I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR10MB9646
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=siemens.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EtOEkKjLLpVXA7dYRdKXvon2pkNwm6ZedRqoiwm8+gw=;
 b=Mmb0/qJysKOx4EOQVyjfIwlHht8scmy7mKlEZbz/A3hslpMTUkGhe0NeSrBG6fSAYsLfia216C2u9psq1aO1+uw45f5YYHIQ5NfG0HnOa5s63VIcLvB/OC74bCq4QQCVUbatYt8thE6KYZITOlmsAsNcgXJB06q1g6VgBD29F6P17ZVH2Ue3Iw1BxfN8W+2vRcOVv+EoMyKvXpw+H7MrqWxv8F9XE2cpqLbp6DfvOwJNASPHR55fyftR4JUz1dOhtiDznw3FmXbKBLemXD/3bVl7LEUzjtqIgQ+YFXhIIeDzz2YIpLVoLFsqp6aNpak2YXjyhKiQHHquJQXPGFtsfQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=@siemens.com header.a=rsa-sha256
 header.s=selector2 header.b=Mmb0/qJy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
Subject: Re: [Intel-wired-lan] [PATCH net] igc: Fix RX HW timestamp
 reporting when NET_RX_BUSY_POLL is disabled
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
From: "Bezdeka, Florian via Intel-wired-lan" <intel-wired-lan@osuosl.org>
Reply-To: "Bezdeka, Florian" <florian.bezdeka@siemens.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,m:Meng.Ding@siemens.com,m:kuba@kernel.org,m:edumazet@google.com,m:anthony.l.nguyen@intel.com,m:jan.kiszka@siemens.com,m:pabeni@redhat.com,m:linux-kernel@vger.kernel.org,m:wq.wang@siemens.com,m:netdev@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo,osuosl.org:dkim,osuosl.org:email,osuosl.org:from_smtp,osuosl.org:from_mime,siemens.com:replyto,siemens.com:email,siemens.com:mid,davemloft.net:email];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	HAS_REPLYTO(0.00)[florian.bezdeka@siemens.com];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 322276BCD77

T24gTW9uLCAyMDI2LTA2LTIyIGF0IDE1OjI2ICswMDAwLCBMb2t0aW9ub3YsIEFsZWtzYW5kciB3
cm90ZToNCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+IEZyb206IEludGVsLXdp
cmVkLWxhbiA8aW50ZWwtd2lyZWQtbGFuLWJvdW5jZXNAb3N1b3NsLm9yZz4gT24gQmVoYWxmDQo+
ID4gT2YgRGluZyBNZW5nIHZpYSBJbnRlbC13aXJlZC1sYW4NCj4gPiBTZW50OiBNb25kYXksIEp1
bmUgMjIsIDIwMjYgNjoxMyBBTQ0KPiA+IFRvOiBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5s
Lm5ndXllbkBpbnRlbC5jb20+OyBLaXRzemVsLA0KPiA+IFByemVteXNsYXcgPHByemVteXNsYXcu
a2l0c3plbEBpbnRlbC5jb20+OyBhbmRyZXcrbmV0ZGV2QGx1bm4uY2g7DQo+ID4gZGF2ZW1AZGF2
ZW1sb2Z0Lm5ldDsgZWR1bWF6ZXRAZ29vZ2xlLmNvbTsga3ViYUBrZXJuZWwub3JnOw0KPiA+IHBh
YmVuaUByZWRoYXQuY29tOyBLaXN6a2EsIEphbiA8amFuLmtpc3prYUBzaWVtZW5zLmNvbT47IEJl
emRla2EsDQo+ID4gRmxvcmlhbiA8Zmxvcmlhbi5iZXpkZWthQHNpZW1lbnMuY29tPg0KPiA+IENj
OiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbGludXgta2VybmVsQHZnZXIua2Vy
bmVsLm9yZzsNCj4gPiBuZXRkZXZAdmdlci5rZXJuZWwub3JnOyBtZW5nLmRpbmdAc2llbWVucy5j
b207IHdxLndhbmdAc2llbWVucy5jb20NCj4gPiBTdWJqZWN0OiBbSW50ZWwtd2lyZWQtbGFuXSBb
UEFUQ0ggbmV0XSBpZ2M6IEZpeCBSWCBIVyB0aW1lc3RhbXANCj4gPiByZXBvcnRpbmcgd2hlbiBO
RVRfUlhfQlVTWV9QT0xMIGlzIGRpc2FibGVkDQo+ID4gDQo+ID4gV2hlbiBDT05GSUdfTkVUX1JY
X0JVU1lfUE9MTCBpcyBkZWFjdGl2YXRlZCwgZmV0Y2hpbmcgUlggSFcgdGltZXN0YW1wcw0KPiA+
IGZyb20gdGhlIE5JQyBubyBsb25nZXIgd29ya3MgYXMgZXhwZWN0ZWQuDQo+ID4gDQo+ID4gVGhp
cyBvY2N1cnMgYmVjYXVzZSBkaXNhYmxpbmcgQ09ORklHX05FVF9SWF9CVVNZX1BPTEwgZGlzYWJs
ZXMgdGhlIFNLQg0KPiA+IE5BUEkgbWFwcGluZyBpbiBfX3NrYl9tYXJrX25hcGlfaWQoKS4gQ29u
c2VxdWVudGx5LCBnZXRfdGltZXN0YW1wKCkNCj4gPiBmYWlscyB0byBwZXJmb3JtIGl0cyBkcml2
ZXIgbG9va3VwLCBhbmQgdGhlIGlnYyBkcml2ZXIncyBzdHJ1Y3QNCj4gPiBuZXRfZGV2aWNlX29w
czo6bmRvX2dldF90c3RhbXAgaXMgbmV2ZXIgaW52b2tlZC4NCj4gPiANCj4gPiBJbnN0ZWFkLCBn
ZXRfdGltZXN0YW1wKCkgZmFsbHMgYmFjayB0byB1c2Ugc2hod3RzdGFtcHMoc2tiKS0+aHd0c3Rh
bXAsDQo+ID4gYSBmaWVsZCB0aGF0IHRoZSBkcml2ZXIgaGFzIG5vdCBwb3B1bGF0ZWQuDQo+ID4g
DQo+ID4gRml4IHRoaXMgYnkgcG9wdWxhdGluZyB0aGUgaHd0c3RhbXAgZmllbGQgd2l0aCB0aGUg
Y29ycmVjdCB0aW1lc3RhbXANCj4gPiBpbiB0aGUgZGVmYXVsdCB0aW1lciB3aGVuIENPTkZJR19O
RVRfUlhfQlVTWV9QT0xMIGlzIGRpc2FibGVkLg0KPiA+IA0KPiA+IEZpeGVzOiAwNjliMTQyZjU4
MTkgKCJpZ2M6IEFkZCBzdXBwb3J0IGZvciBQVFAgLmdldGN5Y2xlc3g2NCgpIikNCj4gSSB0aGlu
aywgYmVjYXVzZSBpdCdzIGEgZml4LCBpdCBuZWVkcyBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9y
Zw0KDQpPbmNlIHdlIGhpdCBtYWlubGluZSB0aGUgc3RhYmxlIG1hY2hpbmVyeSB3aWxsIHBpY2sg
aXQgdXAgYnkgZm9sbG93aW5nDQp0aGUgRml4ZXM6IHRhZy4gSWYgdGhhdCBmYWlscyBmb3Igc29t
ZSByZWFzb24gd2UgY2FuIHBpbmcgc3RhYmxlDQptYW51YWxseS4NCg0KRmxvcmlhbg0KDQo+IA0K
PiBSZXZpZXdlZC1ieTogQWxla3NhbmRyIExva3Rpb25vdiA8YWxla3NhbmRyLmxva3Rpb25vdkBp
bnRlbC5jb20+DQo+IA0KPiA+IENvLWRldmVsb3BlZC1ieTogRmxvcmlhbiBCZXpkZWthIDxmbG9y
aWFuLmJlemRla2FAc2llbWVucy5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogRmxvcmlhbiBCZXpk
ZWthIDxmbG9yaWFuLmJlemRla2FAc2llbWVucy5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogRGlu
ZyBNZW5nIDxtZW5nLmRpbmdAc2llbWVucy5jb20+DQo+ID4gLS0tDQo+ID4gDQoNCltzbmlwXQ0K
