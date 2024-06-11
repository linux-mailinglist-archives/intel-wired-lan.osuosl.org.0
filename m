Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 524E4903F6F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jun 2024 17:01:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 41ED060A5C;
	Tue, 11 Jun 2024 15:01:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oo0y9-S006sP; Tue, 11 Jun 2024 15:01:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E4FD360907
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718118067;
	bh=UtmGWzANRaxitOjVUU4Og35++Y9hdz/ywpdvn2kyAyE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aenUdnbHd3T6c85fjvDejC3BH72RC5Bw/rRSlDtD3ZHtPZmYYgTt+POkyo0kmFNH2
	 nflWWpwCs+7wevXIvkH0wHIyzchFLx6QxkL1rrAwID2F48Ti423HaNv3udowVcWpFp
	 rxkt9EzMp0W/7xpyTTjlFC+WCSPKaBmlsLVfYKLNjSPzJhWNBVdJGELvvjF4R9BNeX
	 vFy83UogKmLLRu+9lM+r3KoTQKPjLCBazGlbMxFHUDgugK0qgAwm2fTFJ+mOwfEQUL
	 1hNjAl1JZtO7lkmuKk27rFpUfTGxCxuNdqPEMWi7CjskWD3POjo1DUKaKKeeIbDJKI
	 l8fii306UJVDA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E4FD360907;
	Tue, 11 Jun 2024 15:01:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4768A1BF39D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 07:40:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3F3AF40372
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 07:40:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6Htc1PkimGZT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Jun 2024 07:40:42 +0000 (UTC)
X-Greylist: delayed 1620 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 11 Jun 2024 07:40:41 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 863D5401F0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 863D5401F0
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=148.163.143.35;
 helo=mx0b-002e3701.pphosted.com; envelope-from=richard.chien@hpe.com;
 receiver=<UNKNOWN> 
Received: from mx0b-002e3701.pphosted.com (mx0b-002e3701.pphosted.com
 [148.163.143.35])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 863D5401F0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 07:40:41 +0000 (UTC)
Received: from pps.filterd (m0134424.ppops.net [127.0.0.1])
 by mx0b-002e3701.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 45B4goXp029776; Tue, 11 Jun 2024 07:13:27 GMT
Received: from p1lg14878.it.hpe.com ([16.230.97.204])
 by mx0b-002e3701.pphosted.com (PPS) with ESMTPS id 3ypfsw930c-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 11 Jun 2024 07:13:27 +0000
Received: from p1wg14924.americas.hpqcorp.net (unknown [10.119.18.113])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by p1lg14878.it.hpe.com (Postfix) with ESMTPS id 6486014789;
 Tue, 11 Jun 2024 07:13:11 +0000 (UTC)
Received: from p1wg14926.americas.hpqcorp.net (10.119.18.115) by
 p1wg14924.americas.hpqcorp.net (10.119.18.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Mon, 10 Jun 2024 19:13:01 -1200
Received: from p1wg14921.americas.hpqcorp.net (16.230.19.124) by
 p1wg14926.americas.hpqcorp.net (10.119.18.115) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.42
 via Frontend Transport; Mon, 10 Jun 2024 19:13:01 -1200
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (192.58.206.38)
 by edge.it.hpe.com (16.230.19.124) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Mon, 10 Jun 2024 19:13:01 -1200
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dSAf144+S3vezpDDml1Ich80mC6wHoG+uNcG//tJOXZMqWgPSkU79jBYF5LR7+rAWmxBwgrJvKsthtyvULZAEhGx8UOg8CS90anzBdHf1gQ/NYcaGQCnB3DxuV9xNvji7lVnE1JpksZCWCUY01YcD4iYB45qq2l2akXSLWa/aZndn94PlYRJFzT0knFTPTfxPdCKLink3yK9qHjSQE2uRCSFZXqaVjrAsSNTgZalirhpWzUqHKYQTiqcvhB8QSLMojdnwluTOGgw7wJx1dFMNcCqpXXGbTmY2BxfM/E4GJzioUKOI8TLB2Se58cwiW2I1YzU0mJzsLYLOIM1sMh3FA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UtmGWzANRaxitOjVUU4Og35++Y9hdz/ywpdvn2kyAyE=;
 b=OLaHs9CjC2SZSDAxxTG4sQRt9+ZqZ2CVfrXJqggSTvkhXUGF4fx0G/RXgraBCQH6ZRV2IVAQDISERmWHL4E58/hrJKqLT3udkeBVjmSKOdMhEuZJ2sRWa5qjsWVRenMdx1wb9ktauZyZ3rNdF8hwJRqPQbFg13oHdYcO/y+d/bfbXYghzXl7Gp7FsrTFIIj03kV4b+V9pIXuTNiOtD1lyYVgLzeNwdhrfm3EYra2v4Hf5HKPsSxuuI03GuOJ947AZNFn/USSy6XJDuljVFozo8rriTA4j1tW5jFbonP9IeEIY2enrYoijcCwej/22FQYTULmnaS7xUkaaG4j+/D/+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hpe.com; dmarc=pass action=none header.from=hpe.com; dkim=pass
 header.d=hpe.com; arc=none
Received: from PH7PR84MB1581.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:150::10)
 by DM4PR84MB1832.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:8:4f::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.27; Tue, 11 Jun
 2024 07:12:58 +0000
Received: from PH7PR84MB1581.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::1c64:65aa:5b9b:557e]) by PH7PR84MB1581.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::1c64:65aa:5b9b:557e%5]) with mapi id 15.20.7633.036; Tue, 11 Jun 2024
 07:12:58 +0000
From: "Chien, Richard (Options Engineering)" <richard.chien@hpe.com>
To: Andrew Lunn <andrew@lunn.ch>, Richard chien <m8809301@gmail.com>
Thread-Topic: [PATCH] ixgbe: Add support for firmware update
Thread-Index: AQHaukt8I3wFUtywh0O9hYZw5ozMD7HBZkoAgAC9eQA=
Date: Tue, 11 Jun 2024 07:12:58 +0000
Message-ID: <PH7PR84MB1581644F8E16BBD49AC451BEE8C72@PH7PR84MB1581.NAMPRD84.PROD.OUTLOOK.COM>
References: <20240609085735.6253-1-richard.chien@hpe.com>
 <e9b5eef7-8325-4d71-bbb6-ba063733484c@lunn.ch>
In-Reply-To: <e9b5eef7-8325-4d71-bbb6-ba063733484c@lunn.ch>
Accept-Language: zh-TW, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR84MB1581:EE_|DM4PR84MB1832:EE_
x-ms-office365-filtering-correlation-id: f9761b7f-2965-4581-b9c5-08dc89e5ec29
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230031|7416005|366007|376005|1800799015|38070700009; 
x-microsoft-antispam-message-info: =?us-ascii?Q?ZHpCw0EP17SxIOaUaGMVwUvgR4ATaaIZ7X2wCiMTCwOnUHJhkjaSqBITGMRu?=
 =?us-ascii?Q?7DfYIPo9KZ/tE3rYIFFGzUc12xdE0MyxG8LzOYrW8FDJFvAeIeUgK65ymlIJ?=
 =?us-ascii?Q?9kqAXaaCByeD2XQwK2fpyo/mCDEaitZ0hs2Su09W3Z8i/A93Ox4Qv7sAhYt3?=
 =?us-ascii?Q?XKWyCFsY4N2Na/EhQZNZgDpj8fWsVC0vDEcVIZgGlUuk+HzDupxMrp/yJqv+?=
 =?us-ascii?Q?/3YxLKykQFLJ+is6Rh2KqUD9+eDc1Q+dkamcYmJKHCnc0Cq1kUfsOKs+7Dax?=
 =?us-ascii?Q?P/XN1Y91kgQgzl2jsZrtF/mwGJF9+B3XjDzGvHi8KmodYQJej/BeP4KeeBM8?=
 =?us-ascii?Q?Apm3oAe6w0OQnUOyvXe+CrewavduEOROGxyHOn6SsXpg5sn0JTERDJX4bq/c?=
 =?us-ascii?Q?kX1CGZvdDWm3wkwGQJxLCjhmi8K/rCs1Eve7Oiv5L6K6fO9R+1Uef16i39aW?=
 =?us-ascii?Q?zrgtgeJZfdYU/ze1323qjm4YNAjKTo0I9qEtaKTbj/gEAkuen+JPRWNiacZ6?=
 =?us-ascii?Q?UPB9AFVBfW+rY6fyjrDnjG3mEaFAISGnyJj7gp5OnFfwiYh2skJRWgQrozTU?=
 =?us-ascii?Q?C+tbAniCh9HuIdmaORgYMsrjkOdfSEjZAxTAqSWNs4piVr+ZQXjGDya8sd0+?=
 =?us-ascii?Q?gbB4iKla+wQGTX0h/vzmDLE18mqPQ/gA2BYG8YM74aR+SqKWpdDjWxCcCuTj?=
 =?us-ascii?Q?yP2gNakG9ADpVGJhX2hLKli2ZpBdIVfPeUPgzX3ca+9fKV8J8DUAM//QNgLW?=
 =?us-ascii?Q?VacAsniwVCx4VBGOJ6OiED4HEc444cadmx1qMZyn4JgLuVmpCPQd2Pg5Ufhm?=
 =?us-ascii?Q?p/93OXLmrLcP/Aa1BXU5ATe2czFKB0dAElerNX7i9/wJ2AKzE69aYhf4tx3u?=
 =?us-ascii?Q?j6L9jE+z2cNfRNuWKfZCyY82TsATQs81A/+KRmhHJFkm4kjoygR2WvG1cYhF?=
 =?us-ascii?Q?6fmQ4+hNoY2D+9wbx/5h2sSgEDPKkBuY7cTv85ZE9RSSrcMDTWSuE5LddxkA?=
 =?us-ascii?Q?qQYdmwGJjRKxYdsNJka2zYc5wIat8d1a6Ykv2SK2eJtx1cI57N3y3gZNU6j4?=
 =?us-ascii?Q?fRZ/uuRgpiXELhshL0z5hQi7pooBiC/aTyXDkUaNetKcCzYiD4KJbzh6vp/+?=
 =?us-ascii?Q?BQqtbkYufLJmopsvsx/Ll4tdEJUyBrvKnLq8/kLhkSnImhsnEncbNO7poT0n?=
 =?us-ascii?Q?21IHx9VzJVF3vtBPRmzKjCDS3/aHNlUVvOnvdLs5jCcgxdQCk4QHe85BsGSI?=
 =?us-ascii?Q?n92sPRG+VzBFP7PXmOz7Nkx/7dTw77rJunQ0lOQUXqbgXIeUSN2HHRsrB0FY?=
 =?us-ascii?Q?DT4Zp/O9ydG+9bp7vetDUd6Vavw8D8iobQ3vvIVViDHo753i+/om0gTsB0N2?=
 =?us-ascii?Q?5X3eB9I=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR84MB1581.NAMPRD84.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230031)(7416005)(366007)(376005)(1800799015)(38070700009); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?R8dQwFePxcNLvT9pH1rcHHczavqdxIJ3wDHujH1jepM7SOYjPiyoeH0dJuSA?=
 =?us-ascii?Q?OJITjh+Rf6Ycd9BlpQf3EPVxvfSl+aDdH4PTw6QoSVeKI/YFfoX9Do/yIzIA?=
 =?us-ascii?Q?4a44P6+0VP9c3n9khGcKUceXPtuoa4pjZYWtcI6rGFkZn+T8S5YyzFTYhROk?=
 =?us-ascii?Q?Mmvov21pZVAZnQU16v6VS6W/sYN1jZs5AAP4wQAM1oHdLVn188xb5THeI1lu?=
 =?us-ascii?Q?hL7PPfkqB3Nt/roaJfw6QWhJCr2qR3EjKB52MlIGKNRRZKmDRw0HWUTS+jPW?=
 =?us-ascii?Q?XNvPqYc6PiQUC+2hyTwA9O7/zHJYbzK/RSni5G3joNnpKc/yfzVjSRoqtJa8?=
 =?us-ascii?Q?foAsqnKkAKZL78ji9mF0Vd8pgGjyb6bKChrwPsM7lv/583ydqFAkcx0sY8wc?=
 =?us-ascii?Q?gGO996gMIOuQeWgxu341tiHpOtmadzzfsp0AZOfaRGktMyVIoVFLMI66JPYW?=
 =?us-ascii?Q?bIVamrt6bgtmleMhWS6tYG6O1Uh6b6s32kQsx3YhUZyj4Kz4ffzMAQxVT5ZN?=
 =?us-ascii?Q?QshKQjllfbI3oSD4UpYmg80UKyml5LvZk3Klk09ORFvqkhvCU61K9BkcPZox?=
 =?us-ascii?Q?lYHlCbcDIjWiK7F8rUuXWkg5gvfpPiJW1zIk8xXNVi/hMflht8XVSMtlYD4i?=
 =?us-ascii?Q?ewhmkBJW55Gn0xwlHfNCUai7UafmXQBqWllqkpLDV9RfowuQjLiHu47LVf82?=
 =?us-ascii?Q?wP7gax5ORGs14LaKzckx30ZjEFA5Nk+V2iExE01IQBR2czDSBhpMQvuIm2OV?=
 =?us-ascii?Q?Lzxw+TCFk0EW5Hb8ak0rxXnlb19FAlsQT02Wfgmk4TztIZvhiS3JB3iYqmYK?=
 =?us-ascii?Q?lw4c+q9mEQpgKUERO+cBe0V+4udzI4u2u8rApj6IUWwjxSB1fmBklHcjLwaB?=
 =?us-ascii?Q?9ScKBO+zdk/u1emP9yjxK4woAaZ/vuRtQi1elybxKdLyVIdpdEAR+OAmxkCg?=
 =?us-ascii?Q?0A+JsvbKMch35EnmDQME5JsKBu3iqoC4n8CFP9nzKGg/h8Ie8afVVkhSIa3q?=
 =?us-ascii?Q?GL+CvdTs1fbw1+5jQ4Bx6koK/kOoCvTyQtHGtE/Bd1tn5/MONr4TIB1x35YE?=
 =?us-ascii?Q?awUn2uMXhvjsJZ2uFHm4R7LKfkAT6Sehl62G6gHXUlTxHzWvjJLWSXA9dtmn?=
 =?us-ascii?Q?eQkQRyx2PvqQZeHRiyqLVVuGHUIdpK8AIXvbXVSsuPdJc50sGAYDDoZnkKTn?=
 =?us-ascii?Q?ANjduaatm4+8zFSnokRK0pabL+bzQvhuQOOW3L8PaGvAKU0nzHCceZVMnw2E?=
 =?us-ascii?Q?cpjpLl+l3E5Hps6X2JOt0cvPOgoDd9zmax3nZHQdjAB0PBUZAF4H3JuW7Txt?=
 =?us-ascii?Q?OskXvA+R3sCI5hVivrnBXPkj46H7iuNxT70rLq1t5U1BH3q4ZUHtbaUvoZG2?=
 =?us-ascii?Q?1raKwlKtLvV/UzXMV3EwHdQKFd4vWCbTINnFB8mLUk46vp97fwmVw0w4ChIG?=
 =?us-ascii?Q?y+QBYd3o9MoJe6+y0J3COhgiaOtB5YiqCBNk2NiKgCUqXsYUoQmVeGXrHbGA?=
 =?us-ascii?Q?opD0tgfLQd40yexjaDywZsXdIrRNlfH38w5IVfY/jleoapUZ8dY67sjH35cz?=
 =?us-ascii?Q?3gd6hZWUdfteLPIKp61X1gSQJvW3qTsa5CobvYRg?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR84MB1581.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: f9761b7f-2965-4581-b9c5-08dc89e5ec29
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2024 07:12:58.1816 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QGCe5wv9VB5muKl4Hnj5z+LMV4oJ4NOjQYwHM18wjmSvyZCNvN7NyAkErXv1mg0la2SfX67oKnlD7RAx7PgRtA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR84MB1832
X-OriginatorOrg: hpe.com
X-Proofpoint-GUID: LKILvaZpfBR5BBQx_Hb4-4OlRI5_3G94
X-Proofpoint-ORIG-GUID: LKILvaZpfBR5BBQx_Hb4-4OlRI5_3G94
X-HPE-SCL: -1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-06-11_02,2024-06-11_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=782 spamscore=0
 priorityscore=1501 clxscore=1011 adultscore=0 phishscore=0 bulkscore=0
 mlxscore=0 impostorscore=0 suspectscore=0 malwarescore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2405010000 definitions=main-2406110053
X-Mailman-Approved-At: Tue, 11 Jun 2024 15:01:04 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=hpe.com; h=cc :
 content-transfer-encoding : content-type : date : from : in-reply-to :
 message-id : mime-version : references : subject : to; s=pps0720;
 bh=UtmGWzANRaxitOjVUU4Og35++Y9hdz/ywpdvn2kyAyE=;
 b=R5CkjXBCwsaVIg106tqCEPDuwj9CjfAjUL6z5z2+l6TQGdEt1nNYMFyBMLj1jMEsgF+x
 rxmUGKBkmauZA6oQO1Xb/ZjXLnovyzrHkOyktNPe5gOkytkmnmrcr0LTtima09wm9hfg
 H6Vj9/6dQQ6vpeMnWNtrkOpus16ybLZlKCiL0yR5EE5ai5BwRuIKIf65Tm7g8svlIhld
 zjV0sHJ9KWNtuvo9gi3MVUjnmsSbX4YjvnCoNBq1Gnwon2z7zf6dEpEtBSOZ4cATF/sk
 mBGd0rwAcD9M9qvYi8qGjeyTcuRbHOdIgs7K/1Jacw7L6Tly/gwIOiL+3LnDVed4rGK6 dQ== 
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=hpe.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=hpe.com header.i=@hpe.com header.a=rsa-sha256
 header.s=pps0720 header.b=R5CkjXBC
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Add support for firmware update
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "edumazet@google.com" <edumazet@google.com>,
 "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> I would also think about why Intel has not submitted this code before?
> Maybe because it does things the wrong way? Please look at how other
> Ethernet drivers support firmware. Is it the same? It might be you need t=
o
> throw away this code and reimplement it to mainline standards, maybe usin=
g
> devlink flash, or ethtool -f.

See Jacob's reply for details.
=20
> One additional question. Is the firmware part of linux-firmware? Given th=
is is
> Intel, i expect the firmware is distributeable, but have they distributed=
 it?

It is the Intel 10G NIC firmware embedded into HPE firmware update packages=
 and redistributed to the end user.

Thanks,
Richard
