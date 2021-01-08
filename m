Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 653B52EF50F
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Jan 2021 16:45:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F088884496;
	Fri,  8 Jan 2021 15:45:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1eN6uI8wmuPE; Fri,  8 Jan 2021 15:44:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3A89984691;
	Fri,  8 Jan 2021 15:44:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 735871BF280
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jan 2021 15:32:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6E63E86DDB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jan 2021 15:32:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8PwI_-7VzQap for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Jan 2021 15:32:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-edgeKA27.fraunhofer.de (mail-edgeka27.fraunhofer.de
 [153.96.1.27])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 06DBA86DDA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jan 2021 15:32:14 +0000 (UTC)
IronPort-PHdr: =?us-ascii?q?9a23=3APLtp2RASgut1xFwf9MXaUyQJPHJ1sqjoPgMT9p?=
 =?us-ascii?q?ssgq5PdaLm5Zn5IUjD/qw23A3XUojBrfFJkezbt+bnQ2NTqZqCsXVXdptKWl?=
 =?us-ascii?q?dFjMgNhAUvDYaDDlGzN//laSE2XaEgHF9o9n22Kw5ZTcD5YVCBvHK/93gRFw?=
 =?us-ascii?q?/5OA4zIf76Scbeis2t3LW0/JveKwxDmDu6Z+Z0KxO7yGeZtsQfjYZ4bKgrzR?=
 =?us-ascii?q?6cq3pTdu8Qy3lhOFSTmBjx/IG88c1u?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2GUEwCfevhf/xoHYZliHgEBCxIMQIF?=
 =?us-ascii?q?EC4EjAS9RfYE4Cod9A4U5iDcDihuOdYEuFIERAxgzCQsBAQEBAQEBAQEHAQE?=
 =?us-ascii?q?YAQ4GAgQBAQKBU4I/NgKBcgElNgcOAhABAQYBAQEBAQYEAgKGTgyCc2JKPQE?=
 =?us-ascii?q?BAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQUCDVQrPQEBAQE?=
 =?us-ascii?q?BAgE/AQE3AQ8CAQgRBAEBLyEHCh0IAgQBDQUIE4MMgX5SBQMtAgMLowUCiiV?=
 =?us-ascii?q?0gTSDBAEBBoEzARRAgxINC4IQAwYJAYEugnWCbE6GfCaBXT6BEUOCKC4+ghs?=
 =?us-ascii?q?rFwEBAQGBHwkBEgEjKwuDFIIsggQ+CIEJASkCIAINUUoHA1AFj2ICgxABlB+?=
 =?us-ascii?q?QZ1gDBAOBZIESiSqHQoN/gVeFP4Mpii6FLo0bgj6UEYsWgniONiaEVQIEAgQ?=
 =?us-ascii?q?FAg4BAQaBXQKBGV0MB3FPgmlQFwINjiGDcYpYdAIJLAIGCgEBAwl8ikABgRA?=
 =?us-ascii?q?BAQ?=
X-IPAS-Result: =?us-ascii?q?A2GUEwCfevhf/xoHYZliHgEBCxIMQIFEC4EjAS9RfYE4C?=
 =?us-ascii?q?od9A4U5iDcDihuOdYEuFIERAxgzCQsBAQEBAQEBAQEHAQEYAQ4GAgQBAQKBU?=
 =?us-ascii?q?4I/NgKBcgElNgcOAhABAQYBAQEBAQYEAgKGTgyCc2JKPQEBAQEBAQEBAQEBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQUCDVQrPQEBAQEBAgE/AQE3AQ8CA?=
 =?us-ascii?q?QgRBAEBLyEHCh0IAgQBDQUIE4MMgX5SBQMtAgMLowUCiiV0gTSDBAEBBoEzA?=
 =?us-ascii?q?RRAgxINC4IQAwYJAYEugnWCbE6GfCaBXT6BEUOCKC4+ghsrFwEBAQGBHwkBE?=
 =?us-ascii?q?gEjKwuDFIIsggQ+CIEJASkCIAINUUoHA1AFj2ICgxABlB+QZ1gDBAOBZIESi?=
 =?us-ascii?q?SqHQoN/gVeFP4Mpii6FLo0bgj6UEYsWgniONiaEVQIEAgQFAg4BAQaBXQKBG?=
 =?us-ascii?q?V0MB3FPgmlQFwINjiGDcYpYdAIJLAIGCgEBAwl8ikABgRABAQ?=
X-IronPort-AV: E=Sophos;i="5.79,331,1602540000"; d="scan'208,217";a="27267332"
Received: from mail-mtas26.fraunhofer.de ([153.97.7.26])
 by mail-edgeKA27.fraunhofer.de with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 16:32:10 +0100
IronPort-PHdr: =?us-ascii?q?9a23=3APfs2iR8viLROqv9uRHGN82YQeigqvan1NQcJ65?=
 =?us-ascii?q?0hzqhDabmn44+7ZxyN+/pglhnKUJ/d5vYCjPDZ4OjsWm0FtJCGtn1KMJlBTA?=
 =?us-ascii?q?QMhshemQs8SNWEBkv2IL+PDWQ6Ec1OWUUj8yS9Nk5YS9jxakeUoXCo6zMWXB?=
 =?us-ascii?q?LlOlk9KuH8AIWHicOx2qi78IHSZAMdgj27bNYQZBW7pAncrI8Ym4xnf68w0R?=
 =?us-ascii?q?bC5HVScvlQxWRmKEjVkxuv6w=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0DKAQBaevhf/z6wYZliHQEBAQEJARI?=
 =?us-ascii?q?BBQUBQAeBNgYBCwGBIgEvUQd2Wh5ACod9A4U5iDcDOIljjnWBLhSBEQNUCwE?=
 =?us-ascii?q?DAQEBAQEHAQEYAQ4GAgQBAYFVgj82AoFvAiY2Bw4CEAEBBQEBAQIBBgRxhWE?=
 =?us-ascii?q?MhXMBAQECAgE/AQEUIwEPAgEIEQQBAS8hBwoHFggCBAENBQgTgwyBflIFAy0?=
 =?us-ascii?q?CAwujCAKKJXSBNIMEAQEGgTMBFECDEg0LghADBgkBgS4BgnSCbE6GfIIDPoE?=
 =?us-ascii?q?RQ4IoLj6CGysXAQEBAYEfCQESASMrC4MUgiyCBD4IgQkBKQIgAg1RSgcDUAW?=
 =?us-ascii?q?PYgKDEAGUH5BnWAMEA4FkgRKJKodCg3+BV4U/gymKLoUujRuCPpQRixaCeI4?=
 =?us-ascii?q?2JoRVAgQCBAUCDgEBBoFdAjFnXQwHcU+CaVAXAg2OIYNxilhDMQIJLAIGCgE?=
 =?us-ascii?q?BAwl8ikABgRABAQ?=
X-IronPort-AV: E=Sophos;i="5.79,331,1602540000"; 
 d="scan'208,217";a="133133020"
Received: from 153-97-176-62.vm.c.fraunhofer.de (HELO
 XCH-HYBRID-01.ads.fraunhofer.de) ([153.97.176.62])
 by mail-mtaS26.fraunhofer.de with ESMTP; 08 Jan 2021 16:31:59 +0100
Received: from XCH-HYBRID-01.ads.fraunhofer.de (10.225.8.57) by
 XCH-HYBRID-01.ads.fraunhofer.de (10.225.8.57) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.721.2; 
 Fri, 8 Jan 2021 16:31:58 +0100
Received: from EUR01-HE1-obe.outbound.protection.outlook.com (10.225.8.41) by
 XCH-HYBRID-01.ads.fraunhofer.de (10.225.8.57) with Microsoft SMTP
 Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.721.2
 via Frontend Transport; Fri, 8 Jan 2021 16:31:58 +0100
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Qlwz/0mxfJ/mRIPTPCY+9fLRv+Wc00fqUVVGvMhFKgINAkcYaKxdCAhQGhqZya16jM2bLJTZ/dpfxP9HNwZqgA54WVHf0qrCyAjfDQbhUPms6gRPNu5+tBJ99Y57WyiWyrsPvmSoZTlytrhcr7X/TLk8vIMZqRwi2zMghgD3KoikPZh8WYEdbmZ9gYgPE726g+xqHxYON1LxtpedRIUegA1TeEF32Q72ooap/h2TQKLGTJNPahgbFTIaqlmgJgIha2NlmTniVlTPZ0vF5vN7qISiCK7EvgWNKKsePQjEfTiklmL3MFJIqeoXOkMn65oM9JgvbC6Ad1Iom2GYkc3n5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DQgTnwrxjHQBmTMEVmik7CKazK1m8dGoUMECEcplbrs=;
 b=UZzHGUBbnnSucvsAywbLeOGE/C31ExXo4r2edtNpevjCloe00uEDZOUCz8XAUY0jVNoxMc6QVON34baStDfwExpt7wwHvieGSeDHd4KZ5hb6pqStvVOV8L0SlOZYyklVwxXbzdnVsydcYbzzeb4LFBrJ4JhYuIaTEMbMp0hVIYlXKh7T/zStE38bWQ3SrXTbTKCnF7/gXans+zljF8DheBXugTinhfXRrqUqUBftsCWuY1rHphNUSWaIneb1eW2OYzpyEx6B9lVyApc5spL5BKIqd0qkOJueYOdvhbCvrBXqZ2PqSGSK+ZayZTrZclxCFQKuNrdOKt+fOqmcseQuyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aisec.fraunhofer.de; dmarc=pass action=none
 header.from=aisec.fraunhofer.de; dkim=pass header.d=aisec.fraunhofer.de;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fraunhofer.onmicrosoft.com; s=selector2-fraunhofer-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DQgTnwrxjHQBmTMEVmik7CKazK1m8dGoUMECEcplbrs=;
 b=gUqEX18SwojuUylPq8lWDAuK7r0CzYUVaqAyod0aypIfw29IpoOZkt0sj70Rn7rz38F0T3fodYYBt8ZlrIggpn/dZVVFvOK3rKEoV8TqLn3wyugFYZmE4hb4XeRxgkf2Wpn3oG/sgL1yw0DqSG7qpQcrNn84QiZQmicHhVJhRcM=
Received: from AM7P194MB0900.EURP194.PROD.OUTLOOK.COM (2603:10a6:20b:174::13)
 by AM6P194MB0341.EURP194.PROD.OUTLOOK.COM (2603:10a6:209:4b::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6; Fri, 8 Jan
 2021 15:31:56 +0000
Received: from AM7P194MB0900.EURP194.PROD.OUTLOOK.COM
 ([fe80::5c40:ad2f:a2d7:f786]) by AM7P194MB0900.EURP194.PROD.OUTLOOK.COM
 ([fe80::5c40:ad2f:a2d7:f786%5]) with mapi id 15.20.3742.006; Fri, 8 Jan 2021
 15:31:56 +0000
From: "Radev, Martin" <martin.radev@aisec.fraunhofer.de>
To: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: Security issue with vmxnet3 and e100 for AMD SEV(-SNP) / Intel
 TDX
Thread-Index: AQHW5a6HPD+VTPfq6E+1Yc1/A52haaod2gkU
Date: Fri, 8 Jan 2021 15:31:56 +0000
Message-ID: <AM7P194MB09004AD790C5C85EDCB42323D9AE0@AM7P194MB0900.EURP194.PROD.OUTLOOK.COM>
References: <AM7P194MB0900E443CEBD6EF2EE37325ED9AE0@AM7P194MB0900.EURP194.PROD.OUTLOOK.COM>
In-Reply-To: <AM7P194MB0900E443CEBD6EF2EE37325ED9AE0@AM7P194MB0900.EURP194.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none
 header.from=aisec.fraunhofer.de;
x-originating-ip: [80.147.198.79]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b67b0161-4cea-4168-81ce-08d8b3ea8886
x-ms-traffictypediagnostic: AM6P194MB0341:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6P194MB034134B61F6700B3DC1BA81AD9AE0@AM6P194MB0341.EURP194.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: n+2Bl5CUmwLS2eb0z5/QOF0pzEzjPCX7cH1TkG4z1l04SQw6moG1O/keC6xeik2YlY2VpMuWr9OOyDHPj6KmvcS/sUicqymDaeuQP8q0Bdvh8GV+8/ojYr79Vp0RnJ/xKtAbh76rkA9oU8FYbJlIoymkUENWJIRXcHR4DAcVt8wmLChYeHTLtGl5zpyXo+DnHzYLoXpCkagYerZSENUsY5HNdAbc0uA81m7kif0+teK9rBCRCryRmAa/czClc8cqeXvh/kogg6XxrWruCKoIFPnJwmUgF4bvKwhNSD237eipPxiBuxTknC/W59woU98P8QfPavQVIhQ6FKhc+aQEtGwIg120HIvM+1LiALxM7KXBTLZImwmf5eq/StQpn+vnZRyyxe3lj//gAvGnoSbrcgIYM4qX6SrszFaP6EvZHXGQ9IxA2OByv769sPAHWuUqO/YQFGc84T006o9pv0PkVg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7P194MB0900.EURP194.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(4636009)(39840400004)(346002)(376002)(396003)(136003)(366004)(15650500001)(316002)(52536014)(2906002)(8676002)(8936002)(6506007)(91956017)(76116006)(110136005)(5660300002)(21615005)(7416002)(54906003)(4326008)(33656002)(26005)(66476007)(186003)(66946007)(166002)(66556008)(478600001)(966005)(55016002)(64756008)(7696005)(66446008)(2940100002)(9686003)(53546011)(83380400001)(71200400001)(86362001)(19627405001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?LqMY7pQB/oOtkE32bs6zToDHRUG4IdDxvIJs7Fz53FI4L6N9mb+BTZq6HF6E?=
 =?us-ascii?Q?WBKqIf4jqwCfCOYgpxC8VYE0b5wn6h6LoIE/+BehVGY6bjDqCJ3j6CZrSeJs?=
 =?us-ascii?Q?FIVf/qSUhyLXBl/LOUjsXDg5eraXvqDMf28+M6zcoeZyCpwVOhCyUnjTOKpP?=
 =?us-ascii?Q?/OzQp1PYoBsPTzQZJN4mSPVqrDHH97pYIe1zeoXOwwRTo5uwHXcMNNm7i1Ic?=
 =?us-ascii?Q?/fiqX69fGbj4OCZlgRegddCYGvyTL2xs7CL9Oxiq1YZJMizoNTtew1tr+yrV?=
 =?us-ascii?Q?2mfWoyV3pL1RIYVYAJk5lwMmcoOfmKLsXOo6uJ/WOCw0n+biAeUlqowilf3N?=
 =?us-ascii?Q?F+4xrJdezrif5STj+iT0PJeTjL48yVI8yjlmOeuxAUSyu6Nq9d3JKqpHLcBr?=
 =?us-ascii?Q?6URbapzD3kfEDOWKfbggQnB5zvhKSqBXefMDXZnlXDWp4/1P8C5e8tLRxyAg?=
 =?us-ascii?Q?ZdtIr/XbsdW2o06MWJ0ffr2heuBoahoj8oJNwbtf9cBjrCPEQoWe8EAULWZe?=
 =?us-ascii?Q?8jia+FfB78L2OitFzRl827OB58qfuzrMqSRR0JT52ZQ4dmS3xzbp/ecyIH8M?=
 =?us-ascii?Q?ZpvwbiHqSIlG1Ofj+X34+7egW0Eztx51/H1Ou4CTF+DnsI4ER7ChR6BCca/i?=
 =?us-ascii?Q?9a1A4Mj+Iz8a2WG5gSwzmRKAZ7/4PpTAntCTTx4dnaND85aCUadl6TklbiKv?=
 =?us-ascii?Q?ZPS87hyEcCQdsxrvK22V+K+kddvd2kT8QDOaYOlOsycUxjoopRhPtvwwtcwa?=
 =?us-ascii?Q?I190/2rp7cnilq0Kd7FdVxTiUZCH4tj1o2yck0WFEYmxhJ459aI2D5ONiVy/?=
 =?us-ascii?Q?lhW+nVsJu0/g7RxKU/zYZUmHRZkLgsZgTNL0CUTC/RZ27vO8HzheF1AIcscX?=
 =?us-ascii?Q?NWUrjsXZ3jTqwXO3N5XwEjTagp6wh/aP1My6R0KHbFkjrP4H1+2tfaCcwYBV?=
 =?us-ascii?Q?glMjEnpdR1SaTMTU52b7aWIWffKH3BZ9sE4241+g56A=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM7P194MB0900.EURP194.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: b67b0161-4cea-4168-81ce-08d8b3ea8886
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2021 15:31:56.5836 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f930300c-c97d-4019-be03-add650a171c4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7Jg7vyc6dgb+pNAAE2RpwkPFLF++T00yhyRFrb2qLkF+pAJsOSKX73j9g9QkABhwkoBfC+ZZCmbv2pVJcohidZtKoF93xnemOGpOeBqFnofmdpcVRTp5SIgBnPbdhe/1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6P194MB0341
X-OriginatorOrg: aisec.fraunhofer.de
X-Mailman-Approved-At: Fri, 08 Jan 2021 15:44:56 +0000
Subject: Re: [Intel-wired-lan] Security issue with vmxnet3 and e100 for AMD
 SEV(-SNP) / Intel TDX
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: "martin.b.radev@gmail.com" <martin.b.radev@gmail.com>,
 "Thomas.Lendacky@amd.com" <Thomas.Lendacky@amd.com>,
 "sathyanarayanan.kuppuswamy@linux.intel.com"
 <sathyanarayanan.kuppuswamy@linux.intel.com>,
 "file@sect.tu-berlin.de" <file@sect.tu-berlin.de>,
 "doshir@vmware.com" <doshir@vmware.com>,
 "pv-drivers@vmware.com" <pv-drivers@vmware.com>, "Banse,
 Christian" <christian.banse@aisec.fraunhofer.de>,
 "brijesh.singh@amd.com" <brijesh.singh@amd.com>, "Morbitzer,
 Mathias" <mathias.morbitzer@aisec.fraunhofer.de>,
 "kirill.shutemov@linux.intel.com" <kirill.shutemov@linux.intel.com>,
 Robert Buhren <robert.buhren@sect.tu-berlin.de>
Content-Type: multipart/mixed; boundary="===============6859128961956824482=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============6859128961956824482==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_AM7P194MB09004AD790C5C85EDCB42323D9AE0AM7P194MB0900EURP_"

--_000_AM7P194MB09004AD790C5C85EDCB42323D9AE0AM7P194MB0900EURP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Just noticed that Intel TDX already does the device filtering. Check: https=
://github.com/intel/tdx/commit/6789eee52aab8985e49b362379fab73aa3eecde2

CC-ing Kirill and Kuppuswamy from Intel in case they want to be part of the=
 discussion.
________________________________
From: Radev, Martin
Sent: Friday, January 8, 2021 12:57 PM
To: netdev@vger.kernel.org <netdev@vger.kernel.org>; intel-wired-lan@lists.=
osuosl.org <intel-wired-lan@lists.osuosl.org>
Cc: doshir@vmware.com <doshir@vmware.com>; jesse.brandeburg@intel.com <jess=
e.brandeburg@intel.com>; anthony.l.nguyen@intel.com <anthony.l.nguyen@intel=
.com>; Morbitzer, Mathias <mathias.morbitzer@aisec.fraunhofer.de>; Robert B=
uhren <robert.buhren@sect.tu-berlin.de>; file@sect.tu-berlin.de <file@sect.=
tu-berlin.de>; Banse, Christian <christian.banse@aisec.fraunhofer.de>; brij=
esh.singh@amd.com <brijesh.singh@amd.com>; Thomas.Lendacky@amd.com <Thomas.=
Lendacky@amd.com>; pv-drivers@vmware.com <pv-drivers@vmware.com>; martin.b.=
radev@gmail.com <martin.b.radev@gmail.com>
Subject: Security issue with vmxnet3 and e100 for AMD SEV(-SNP) / Intel TDX

Hello everybody,

tldr: Both drivers expose skb GVAs to untrusted devices which gives RIP
         control to a malicious e100 / vmxnet3 device implementation. This =
is
         an issue for AMD SEV (-SNP) [1] and likely Intel TDX [2].

Felicitas and Robert have started a project on fuzzing device drivers which
may have negative security impact on solutions like AMD SEV Secure
Nested Paging and Intel Trusted Domain Extensions. These solutions protect
a VM from a malicious Hypervisor in various way.

There are a couple of devices which carry security issues under the attacke=
r
models of SEV-SNP / Intel TDX, but here we're only discussing VMXNET3 and
e100, because we have detailed PoCs for both.

Maintainers of both vmxnet3 and e100 were added in this email because the
discussion will likely be the same. The issues were already sent to AMD PSI=
RT,
and Tom Lendacky and Brijesh Singh have volunteered to be part of the email
communication with the maintainers. Both have been working on AMD SEV.

Please check the two attached files: vmxnet3_report.txt and e100_report.txt=
.
Both contain detailed information about what the issue is and how it can be
exploited by a malicious HV or attacker who has access to the QEMU process.

Fix:
In an earlier discussion with AMD, there was the idea of making a list of
allowed devices with SEV and forbidding everything else. This would avoid
issues with other drivers whose implementation has not been yet scrutinized
under the threat model of SEV-SNP and Intel Trusted Domain Extensions.

Let us know what you think.

Kind regards,
Martin

[1]: https://www.amd.com/system/files/TechDocs/SEV-SNP-strengthening-vm-iso=
lation-with-integrity-protection-and-more.pdf
[2]: https://software.intel.com/content/www/us/en/develop/articles/intel-tr=
ust-domain-extensions.html


--_000_AM7P194MB09004AD790C5C85EDCB42323D9AE0AM7P194MB0900EURP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Just noticed that Intel TDX already does the device filtering. Check:&nbsp;=
<a href=3D"https://github.com/intel/tdx/commit/6789eee52aab8985e49b362379fa=
b73aa3eecde2" id=3D"LPlnk">https://github.com/intel/tdx/commit/6789eee52aab=
8985e49b362379fab73aa3eecde2</a></div>
<div class=3D"_Entity _EType_OWALinkPreview _EId_OWALinkPreview _EReadonly_=
1"></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
CC-ing Kirill and&nbsp;Kuppuswamy from Intel in case they want to be part o=
f the discussion.</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Radev, Martin<br>
<b>Sent:</b> Friday, January 8, 2021 12:57 PM<br>
<b>To:</b> netdev@vger.kernel.org &lt;netdev@vger.kernel.org&gt;; intel-wir=
ed-lan@lists.osuosl.org &lt;intel-wired-lan@lists.osuosl.org&gt;<br>
<b>Cc:</b> doshir@vmware.com &lt;doshir@vmware.com&gt;; jesse.brandeburg@in=
tel.com &lt;jesse.brandeburg@intel.com&gt;; anthony.l.nguyen@intel.com &lt;=
anthony.l.nguyen@intel.com&gt;; Morbitzer, Mathias &lt;mathias.morbitzer@ai=
sec.fraunhofer.de&gt;; Robert Buhren &lt;robert.buhren@sect.tu-berlin.de&gt=
;;
 file@sect.tu-berlin.de &lt;file@sect.tu-berlin.de&gt;; Banse, Christian &l=
t;christian.banse@aisec.fraunhofer.de&gt;; brijesh.singh@amd.com &lt;brijes=
h.singh@amd.com&gt;; Thomas.Lendacky@amd.com &lt;Thomas.Lendacky@amd.com&gt=
;; pv-drivers@vmware.com &lt;pv-drivers@vmware.com&gt;; martin.b.radev@gmai=
l.com
 &lt;martin.b.radev@gmail.com&gt;<br>
<b>Subject:</b> Security issue with vmxnet3 and e100 for AMD SEV(-SNP) / In=
tel TDX</font>
<div>&nbsp;</div>
</div>
<style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Hello everybody,<br>
<br>
tldr: Both drivers expose skb GVAs to untrusted devices which gives RIP</di=
v>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;control to a malicious e100 / vmxnet3 dev=
ice implementation. This is<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;an issue&nbsp;<span style=3D"color:rgb(0,=
0,0); font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12pt">for A=
MD SEV (-SNP) [1] and likely Intel TDX [2].</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<div><br>
</div>
<div>Felicitas and Robert have started a project on fuzzing device drivers =
which</div>
<div>may have negative security impact on solutions like AMD SEV Secure</di=
v>
<div>Nested Paging and Intel Trusted Domain Extensions. These solutions pro=
tect</div>
<div>a VM from a malicious Hypervisor in various way.</div>
<div><br>
</div>
<div>There are a couple of devices which carry security issues under the at=
tacker</div>
<div>models of SEV-SNP / Intel TDX, but here we're only discussing VMXNET3 =
and</div>
<div>e100, because we have detailed PoCs for both.</div>
<div><br>
</div>
<div>Maintainers of both vmxnet3 and e100 were added in this email because =
the</div>
<div>discussion will likely be the same. The issues were already sent to AM=
D PSIRT,</div>
<div>and Tom Lendacky and Brijesh Singh have volunteered to be part of the =
email</div>
<div>communication with the maintainers. Both have been working on AMD SEV.=
</div>
<div><br>
</div>
<div><b>Please check the two attached files: vmxnet3_report.txt and e100_re=
port.txt.</b></div>
<div>Both contain detailed information about what the issue is and how it c=
an be</div>
<div>exploited by a malicious HV or attacker who has access to the QEMU pro=
cess.<br>
<br>
Fix:<br>
In an earlier discussion with AMD, there was the idea of making a list of
<div>allowed devices with SEV and forbidding everything else. This would av=
oid</div>
<div>issues with other drivers whose implementation has not been yet scruti=
nized</div>
<div>under the threat model of SEV-SNP and Intel Trusted Domain Extensions.=
<br>
<br>
Let us know what you think.</div>
<div><br>
</div>
<div>Kind regards,<br>
Martin<br>
<br>
[1]:&nbsp;<a href=3D"https://www.amd.com/system/files/TechDocs/SEV-SNP-stre=
ngthening-vm-isolation-with-integrity-protection-and-more.pdf" id=3D"LPlnk1=
57452">https://www.amd.com/system/files/TechDocs/SEV-SNP-strengthening-vm-i=
solation-with-integrity-protection-and-more.pdf</a><br>
[2]:&nbsp;<a href=3D"https://software.intel.com/content/www/us/en/develop/a=
rticles/intel-trust-domain-extensions.html" id=3D"LPlnk328393">https://soft=
ware.intel.com/content/www/us/en/develop/articles/intel-trust-domain-extens=
ions.html</a></div>
</div>
<br>
</div>
</div>
</body>
</html>

--_000_AM7P194MB09004AD790C5C85EDCB42323D9AE0AM7P194MB0900EURP_--

--===============6859128961956824482==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============6859128961956824482==--
