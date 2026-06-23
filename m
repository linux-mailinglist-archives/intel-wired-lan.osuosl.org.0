Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 71hdLEdiOmqi7gcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jun 2026 12:39:03 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 067A26B6543
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jun 2026 12:39:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=OdySDRMk;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=pass (policy=none) header.from=osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A8B2860893;
	Tue, 23 Jun 2026 10:39:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lyeBksf_RO7r; Tue, 23 Jun 2026 10:39:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C62156082E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782211140;
	bh=3YgDkJjidOCdRi2w+h22x6mUi3zGcKAZlqmxLYZpqWA=;
	h=To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=OdySDRMk5W3i3ykdm2WxVar2cLUDNFRZXdOVloM9alUBFYPPrVwMbgnOvAj1T5qdd
	 KUoNUCMMtNvRvzlhXOK/09Ja9oLmOcxkjdKMLl3kPMfOXSTARNsGkkmkd8VUMnXqk3
	 8tBDMACSL5tCZ5Rb+S30UJ6OPhxNGLYsQQBylWJEaFVD4BUrWHoJuAZRnzl89+G+br
	 /opycgyVM2c82GdL9gYrxvVvqmi6wpuSZ8VQ7DdfgERkWORwZG2JCExnu7k1vGoClw
	 e0rKt0RE7QQb0G9Z8Sg0VfeR7//jV4ElQLk6DQtY81jk+qlLsP4teeNBEGNLXsPJ9S
	 5ba8+R3swvNsA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C62156082E;
	Tue, 23 Jun 2026 10:39:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0F2C3367
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2026 10:38:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ECB6240AB5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2026 10:38:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5uSwroc9tlgR for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jun 2026 10:38:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.130.143;
 helo=mrwpr03cu001.outbound.protection.outlook.com;
 envelope-from=tkusters@aweta.nl; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5C01040AB4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5C01040AB4
Received: from MRWPR03CU001.outbound.protection.outlook.com
 (mail-francesouthazon11021143.outbound.protection.outlook.com
 [40.107.130.143])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5C01040AB4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2026 10:38:55 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=G5OhBuqMBkoptzeXXZ4XiATqwhJ2widS4T+uQMrUvCjWoabEHJEZXJ3TEfM862uwBV+PNCcXaXENnj6kBz3qn5fHvlkn5zk24IRotaI8Ep8eM8R0YMOQjni61XLwwz1AotHHwRZLNSNX5ruPpdeeEnj7zM/UzGcoPZRyKpW9N8zXWlxuRaDOZBTYLW+Jb49WbIwLeYI6J3RaZ9dwgS4JD6am1Bby2lGMD1zSECUiTVKvIBY9CzI3FBTVIixt9wFBK1Wy03aD8r5sM6D9F33exs21TAzwOTiysHRNZbpOHARDf2VzbBmJHXzsoYCrYxrDJU206XFTZtt22gpJWSna1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3YgDkJjidOCdRi2w+h22x6mUi3zGcKAZlqmxLYZpqWA=;
 b=wP7zi9wQh2vRLK8sgpS+aeATQqJ+AWiExgTVsvECx+Zo+A9a0RutHsv3h5US9kxxmcD7RWe/VpxrFtlLXu1tQrG80kxKCO+ymW0X6pPQPRxiTGsnDHofwKTKDmS/yGkmAQQmDg1CQtHl5N/K1R3L9OKU+wL+K6ce+3b9siYzBYbTY6nOWr3nNES7UEe4c8EXRmnpygtdTTks7QyUF5eJhXgNc4i/87jTT3Em4jVa8DldvmRIjv4NH5FBTmwYeCEtVRToKOwAooNsunQMx0TXp7/v5Wm7PMgzFzTtMeca7Dkioz4AFfqZ68AUQ102CqRjG0mtP2mP89RHmUYI0rikBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aweta.nl; dmarc=pass action=none header.from=aweta.nl;
 dkim=pass header.d=aweta.nl; arc=none
Received: from PAWPR05MB10691.eurprd05.prod.outlook.com (2603:10a6:102:35a::6)
 by DB5PR05MB10720.eurprd05.prod.outlook.com (2603:10a6:10:48a::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.20; Tue, 23 Jun
 2026 10:38:48 +0000
Received: from PAWPR05MB10691.eurprd05.prod.outlook.com
 ([fe80::3b9c:573e:3c13:3754]) by PAWPR05MB10691.eurprd05.prod.outlook.com
 ([fe80::3b9c:573e:3c13:3754%6]) with mapi id 15.21.0139.009; Tue, 23 Jun 2026
 10:38:48 +0000
To: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub
 Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Richard Cochran
 <richardcochran@gmail.com>, Jesper Dangaard Brouer <hawk@kernel.org>, Kurt
 Kanzenbach <kurt@linutronix.de>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] igb: only strip Rx timestamp
 header on the first buffer of a frame
Thread-Index: AQHc/7tT1+QLGKmA6E2ZCaRCpSVOLLZL8HGAgAAG4rA=
Date: Tue, 23 Jun 2026 10:38:48 +0000
Message-ID: <PAWPR05MB106916E499B9B12E25F1A654FB9EE2@PAWPR05MB10691.eurprd05.prod.outlook.com>
References: <20260619-igb-rx-ts-fix-v2-1-d3b8d605ca62@aweta.nl>
 <BL1PR11MB59792FC9956781218FC85B66F3EE2@BL1PR11MB5979.namprd11.prod.outlook.com>
In-Reply-To: <BL1PR11MB59792FC9956781218FC85B66F3EE2@BL1PR11MB5979.namprd11.prod.outlook.com>
Accept-Language: en-US, nl-NL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PAWPR05MB10691:EE_|DB5PR05MB10720:EE_
x-ms-office365-filtering-correlation-id: d22f6831-5be4-42f9-b5ff-08ded1139bfe
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|376014|1800799024|7416014|366016|921020|18002099003|22082099003|4143699003|56012099006|38070700021;
x-microsoft-antispam-message-info: MfeP1/g+Cs3M/x88/w5aHRVKbABBuhL8jgVC4SKcB9KvcZUSqA79hU4qHvRDz8qLJ9khwc/o0Cv5XmW/DLYfqriS7PHHySFwp7h0j898adbAgEB+Ay/SUx7lct+jGYyQXAHZvq+tcMLlkm7rASja6gDEJ88btSNzz5y8JD2lrY7wUuz392fM61eGUuI8K6dboF18Y3EGmsmvutkcmdtYkXZ7jo9Dw72YkMJdyktatxF+4eP/uog7Zu5BI+rqundW4syEuFblK6HwTkgZDQ5m5W7OG2zZQas4Bxsw4vn+60LIoiwozIbQ57S2/fTpwT3l69U8wD+J6OdJ+wv70eB8LgNAGjALyh4Ocot2NWi5jWdaf90I5YmPoyy0o5FeR6DKCgoAwPS48XBHKh//GFSt2qPdSPl6XMnO06thBZ1nD3o3bGzUN6QgyaB7pOtO26aPfvjaczz8jEgrAtE0NY3PwZfSpxEFBDw1ahfCsLvnlp+JYYD9XaQVxiFJyfMnOscPRkS3+S/uvxXFENjUu14s0lnz7BhF9mRHRlgEvzi9iAi0g0JeFXLoisTUQUmEYAZY/bz7ldxpaUwBmgbb2i+8eMEe+38xWtI/vkqHMrm8JgPZJhFJhc8xyAoBKqIi5LBPkg10LMX7LL2ERAU+Fqepg5nrTvgx3DzVa7SnPbMpgsHpKh1ADOVl91jTTGov7lECgeqQr7FryOYd3HawDE8zF4V27uHZQAzRmItVdBl5Ha2C8Al+fPc4KGxkvvo9mUlR
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PAWPR05MB10691.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(1800799024)(7416014)(366016)(921020)(18002099003)(22082099003)(4143699003)(56012099006)(38070700021);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SGVyY3VSU3o4Ukc1RnJFWTR4emZ4MFdqNHFoUm1jc1JLZkM1cXR6NXNsblNo?=
 =?utf-8?B?WTgwK2RlL2tSa25FdCtnaUR4SHZSbXJGWnpJSDNMQlQrSGxzSEhWUTJ1cXVi?=
 =?utf-8?B?US9qc3d0NDRiRHNyR2RpUFZ2THQ1Tk02UXAxN1pvUC9zTTluVXpjS3M5TTZC?=
 =?utf-8?B?Z2srUjUrNXhVc0VJTThrTExTbW1jMkxGR1VTSFJiL0tUUkZscW5WNGcvaXU0?=
 =?utf-8?B?bGoxMTBncE9lZFZndlBVZDIzaU5TV0xxQ2hjSGdlQ1l4NDUxK2hKNG1qVW14?=
 =?utf-8?B?RTE4OEtHZW9MQTJJRC9PZGZqRTJveVp2NmtLWmw2YkhLbFg3czZDUlVPNlp1?=
 =?utf-8?B?NHRYTXFPRFp1QnEzbzNjOFRROGdjMFFxa3l3OWh5VlVnM0kxVFduQmpOQ09N?=
 =?utf-8?B?eUVUWnVQTC9YUnE5OTJTT0ZZTGg4Sm1iU0ZicTFRUVNFMFM0cEhPUTRESWpY?=
 =?utf-8?B?R3RGOUU3cnArY2dDYWl4Y2lNVVJuZlJSYVlQdEg5S1BMUWdiR1ZoVE5nR3dz?=
 =?utf-8?B?UGRBNFd2QlhEbUFyQVVSWDYzMmtlZFM0OUxyb0NVUmJIMkRVVENTa1hIdEZp?=
 =?utf-8?B?ditXSmNLWTh3RzJsOHh5UXF0VE0xRjdFYmE5cnVFRmdDOGR6Mzk2cGU2MUxH?=
 =?utf-8?B?YStrMGhBZDM2Y3FwQ2lSNTNvTG1DWER0dlZOS2JkWTNyZ2ROWW1mMUlJMVdK?=
 =?utf-8?B?akt4VWdnelZYdkZQK1hxZEZ0UWZ0SFlLV1p5UHVSMVdMZ0U2THpwR1I3WkhY?=
 =?utf-8?B?L1g4YWVsWkRRY3JkV3AwT0JMK2l0Snljd0ZyOEphYlkvU3dYd1lwZG9WdjBW?=
 =?utf-8?B?b2VOM0w3NW1OdmJMUTZXeGZsVUdsblcvd2xNeHZQOTJYZGZKVVNSWFhMcFNw?=
 =?utf-8?B?TEE1MC9VcURjQUxheEZMdnFtUzF3UmFObjA1dDhTYVBTQnU2dFptVVFwd1Bx?=
 =?utf-8?B?eTVQaVRrNG1jakdqRE5tM3dTUkkrbTl6TThJZzN2U0ZEMThwVGVGeFViQWZo?=
 =?utf-8?B?QXEvYlIxZi9ya1hkSjVDSkYySGtNKzdHbzl0Sk4wQVFXTG5zQzNSSWp3Qm5p?=
 =?utf-8?B?azNFQTRSYUI1TExXMGtrQlNsVXBXYzlXM2NjbFY1c1ZOWldONDRueU9Qd3V3?=
 =?utf-8?B?MElaMmZucUdlcStpOGh3dTNzWFNhcVFEaW5VUGFtUDNLcUZ5ajJpUUJyU3J2?=
 =?utf-8?B?cVFpbFZicUNFNHh0WTk0R0FBcy9hTVdVWHhtdWxpa283NFNRZEZxWWdCK245?=
 =?utf-8?B?SURQVG40L0drcURLSncwTXdlVmxGRm5FaGQzQjIvS2JXZXQzTTcwTTJQbXZw?=
 =?utf-8?B?YXlSdUhpRjZCNktLWXlKRVdHanRFeWxQRUgra016ajhvRlg3TFBuZ0R2Z0w5?=
 =?utf-8?B?dlMxSmhFNUhFN1JkbmNibGpDNlFJNXRpRkI5UGFqK2ZrcUgwY2VBUkd0QVE0?=
 =?utf-8?B?NVY2bXpzSnBNUnhrbzlvemxPZmlWSVYzaWFhNEZHNVp4d3V3VW1zT0NWVTYx?=
 =?utf-8?B?ME9zTjB4Q1kwRnJaOUJtTktXT0J3RTE0YU1PQ0xSeVNDQVp0RkdRcFdHZ1p0?=
 =?utf-8?B?NFd4R1BaRGRGWkxkUE5zYU50VVB1ck9KcVh6eWVSUnl1MDJPSkREYm9xTC9V?=
 =?utf-8?B?UG5VV2EzdUorVkQweC9UYzRIYlp1SGhySzhSUnhtQTdta0xVclcyaHRKLzNF?=
 =?utf-8?B?ZnFqbHNPMVQzRDRLbkFaTnpEZDBIb1VzSGNuaWxhYm1BcHRQb1ZZTG82Q3Rx?=
 =?utf-8?B?cUdCWmZvaEdKK0FSbHA4cU5nSGhJL1IvcWV4dGxES1hERWNJSi9XaUlHWXBZ?=
 =?utf-8?B?dnd5WWRsa2crallrbzNXazBhL1pBZkpEenZhUVk3eVFuNDNwMmp6ZzZ6eUFY?=
 =?utf-8?B?WGZLY3l0RjJUUmdzcHFBYU11bGtQcUc1L0xUNmY4WDBSL2lpRFZTSlFaNzBZ?=
 =?utf-8?B?M1lLS1RWSTU4VU9XeElOSWlwemlUVTZjM254ZU9RNkxNbVhYMVhRNzVoMGhy?=
 =?utf-8?B?ZjUyb1dFanhsTXpLOUttRzUzRzVrbUdVR0hsZHVvdGJreE1zVHZJZk10MkFU?=
 =?utf-8?B?dnF1a3h2WE9TcHByL2VMTC9SUDlTTGJ0YklRSEdDZW8valpobm5IaHpJVDls?=
 =?utf-8?B?VWFnckx2VSt6QjZYUzkrYWVxSkR2bXVCZEZyWkx2a214OStHUHJvVUg3VDRq?=
 =?utf-8?B?MlZVK3JXRmE4RDRkN0dWS3NxNStqT1Zkd0R3WHErQVpIa3NBQ1IybG1iVFZu?=
 =?utf-8?B?TEhjeElnc3F3dDIvYWJiOWROOU4vaEZZVGRQMWtPd3duMDdKOVRKM01ITHNa?=
 =?utf-8?Q?G785SXtIFDG5Qx87Na?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: aweta.nl
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PAWPR05MB10691.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d22f6831-5be4-42f9-b5ff-08ded1139bfe
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2026 10:38:48.4346 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6546512a-ba20-41bf-9d8d-c076dcbf6fd9
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JtFBmtH8ondFQ9cx04zbv67RXCZSnchZdObfx+cu/s+0ELXFC9MzS1VhziPtiZtFmQF8UZtxBkA+I4cVUBW54g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5PR05MB10720
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aweta.nl; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3YgDkJjidOCdRi2w+h22x6mUi3zGcKAZlqmxLYZpqWA=;
 b=Dp3lO4KxxAZY1rZnbMVj3onK+O6lAu1l0ACL5WunkcJKpVtQlvtuDJzqw0AJfwK8gvZVZSPFY7XjNtLL6ZQFzgjqbzPQtTpyvEAU+WADqKFhRTA9G5RvHtooM4KFoykDJy5BA47/AX1bpIwHEExbHGFLeadw0UFlCiTFgIzhUFGCAWJ8kOSH2s9ftSDjYdeTHCNRqXjyucVCi/y78C528PXnX7DPsNVDCLVqpew+Ffz02aOtRtsN8/wTI9M58tdi0bI2ILSs5fClFNUcl4FI63Z8J+7GPtKZ3ryLw8yJ1OaAlKf99Lx46uPTXKdYywzzYrTeSSVAFGyegO0oxPVjYA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=aweta.nl
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=aweta.nl header.i=@aweta.nl header.a=rsa-sha256
 header.s=selector1 header.b=Dp3lO4Kx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aweta.nl;
Subject: Re: [Intel-wired-lan] [PATCH net v2] igb: only strip Rx timestamp
 header on the first buffer of a frame
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
From: Tjerk Kusters via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Tjerk Kusters <tkusters@aweta.nl>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:piotr.kwapulinski@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:richardcochran@gmail.com,m:hawk@kernel.org,m:kurt@linutronix.de,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,linutronix.de];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim,osuosl.org:from_smtp,osuosl.org:from_mime,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo,aweta.nl:replyto];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	HAS_REPLYTO(0.00)[tkusters@aweta.nl];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 067A26B6543

SGksDQoNCj4gPg0KPiA+ICAgICAgICAgICAgICAgLyogcHVsbCByeCBwYWNrZXQgdGltZXN0YW1w
IGlmIGF2YWlsYWJsZSBhbmQgdmFsaWQgKi8NCj4gSXMgdGhpcyBjb21tZW50IHVwLXRvLWRhdGUg
bm93ID8NCj4gUmV2aWV3ZWQtYnk6IFBpb3RyIEt3YXB1bGluc2tpIDxwaW90ci5rd2FwdWxpbnNr
aUBpbnRlbC5jb20+DQo+IA0KDQpHb29kIHBvaW50LCAgdGhlIGNvbW1lbnQgZG9lc24ndCBmdWxs
eSBtYXRjaCB0aGUgY29kZSBhbnltb3JlLiBJJ2xsIHVwZGF0ZSBpdCBpbiB2MyB0bzoNCg0KLyog
cHVsbCByeCBwYWNrZXQgdGltZXN0YW1wIGlmIGF2YWlsYWJsZSBhbmQgdmFsaWQ7IGl0IGlzIG9u
bHkNCiAqIHByZXNlbnQgb24gdGhlIGZpcnN0IGJ1ZmZlciBvZiBhIGZyYW1lDQogKi8NCg0KVGhh
bmtzIGZvciB0aGUgcmV2aWV3Lg0KVGplcmsNCg0K
