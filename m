Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF7B8FBDCB
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Jun 2024 23:09:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6C7A8408FC;
	Tue,  4 Jun 2024 21:09:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RWsozs1xYHA0; Tue,  4 Jun 2024 21:09:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 32209408C3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717535352;
	bh=h6HrcMlAzo/tCuodYMa0kg4gu3Tf4IlyoFFNRhVe3rs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4Oaiic1lReTV1eDh2OP1kfgvdARsOR5rjl0YpDT33N1DuRi3yzeuFX/V5l8Ll1RR4
	 JauCu4awICWaccI5janF4BNrAARmXReLIYJ8JvgucSbZtOCJ8StNpAF/dRx67VLlrH
	 85/AFxjXKupXvL4wTbTqM0ZYmXEFEXlLRUwj7etX4ICYHJ6DYS9ocl6lUG3GvqXxJD
	 C4xL6nXvp0lrAVUTaXKhTneNBiu4bYM2uze09oivSKqGALb3y3gtPBt46POYb7oMJS
	 wxK9ywKbbgbSP6hP4cLqPczI0eEb11yrgZhamvRoMEo6GcHLEfayHSOtd3lECgqh7R
	 qW4dMc+gqxdSQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 32209408C3;
	Tue,  4 Jun 2024 21:09:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 818E41BF33B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 05:56:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6BFB582E9D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 05:56:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hh9agFGiKsmV for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jun 2024 05:56:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=67.231.148.174;
 helo=mx0b-0016f401.pphosted.com; envelope-from=hkelam@marvell.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E354281EDD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E354281EDD
Received: from mx0b-0016f401.pphosted.com (mx0a-0016f401.pphosted.com
 [67.231.148.174])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E354281EDD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 05:56:51 +0000 (UTC)
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4541i6mw003829;
 Mon, 3 Jun 2024 22:56:41 -0700
Received: from nam04-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam04lp2040.outbound.protection.outlook.com [104.47.73.40])
 by mx0a-0016f401.pphosted.com (PPS) with ESMTPS id 3yhsh5rmw7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 03 Jun 2024 22:56:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fCnULLW0HDiE1B75IDl6Wz/Opw40lx5itu9+ZTNVrc19D7q1wur0fCSi1EtPZuN2G6z8zd1uhsFs79jM0/he6lnVAMu9zLM7og6QWkXv5fVyc97tytPQMOaMcxKP9tQLFN2LcADHuDgSBc8DysjTvEKfTrB+3TNVp1v8Dv9xVovUozs4k1l0g1ovvDP9EN/XFa3ju7pqsTtFwRzol7yDq1aep0b9lLYbc5LTNWuZ2ANv6yNwO2kaScgImeMlGe76GYCffBsv1hiOGolZ8hCRYVqWInBA4NoFPvje68gkDVDsFybbDpCWLfbWY4JDwoK7GRkGuMht3TPG9XFkylagqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h6HrcMlAzo/tCuodYMa0kg4gu3Tf4IlyoFFNRhVe3rs=;
 b=EZwbcN0Xki6/xXHd0YGdtKyHID0AWM3FoJ3qClalZSeMRvygafaO5I0c6hE70P/iWXdwcKmCYG+BL/Tv4ZOojKSYIEJEA6i7PE9cyZtH79VCn0qRVJMhYRumQzpp+2QABeUseYFarzepONvGzZ7C3JLx4DjqlrzCaXuiX645D4Jgm3BMPNwL7pxC+S0ZDu5UxF7aeHkOW2oEMcrZULPZArup9G9yXRu6HMpazQOhu+YLIglGTXLJwWAYEHeg54Wn38DJp2YqAVdKTsF8HPeJf8YP11KcfsoGDG2G/f2XTCy3guYoKYXSfbMb7YnldMgGB3BgnBKNzTNDs5mQy9iOYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
Received: from PH0PR18MB4474.namprd18.prod.outlook.com (2603:10b6:510:ea::22)
 by BY3PR18MB4803.namprd18.prod.outlook.com (2603:10b6:a03:3ce::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.30; Tue, 4 Jun
 2024 05:56:38 +0000
Received: from PH0PR18MB4474.namprd18.prod.outlook.com
 ([fe80::ba6a:d051:575b:324e]) by PH0PR18MB4474.namprd18.prod.outlook.com
 ([fe80::ba6a:d051:575b:324e%4]) with mapi id 15.20.7633.021; Tue, 4 Jun 2024
 05:56:38 +0000
From: Hariprasad Kelam <hkelam@marvell.com>
To: Wojciech Drewek <wojciech.drewek@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [PATCH iwl-next v3] ice: Add support for devlink
 local_forwarding param.
Thread-Index: AQHatkP26jCvNuczrEGv5NeESzkMtw==
Date: Tue, 4 Jun 2024 05:56:38 +0000
Message-ID: <PH0PR18MB447415E48D0E77D24BE9A9FCDEF82@PH0PR18MB4474.namprd18.prod.outlook.com>
References: <20240603123146.735804-1-wojciech.drewek@intel.com>
In-Reply-To: <20240603123146.735804-1-wojciech.drewek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR18MB4474:EE_|BY3PR18MB4803:EE_
x-ms-office365-filtering-correlation-id: b94e3aae-4c66-4b9b-a4e5-08dc845b1978
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|366007|1800799015|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?OUYfsu55y4Q8Iq9u5HGtqLfJq/XbrwQirzwszO3NtRiNLT3pfsdIg3KUeSlI?=
 =?us-ascii?Q?fB7fIyqdsIe8LgLywQu/6NxhYJO3aKjvjf6M5pkE1qdDUYBYyFl1/tfCDzep?=
 =?us-ascii?Q?oO8R2sQAep/yUptxMuTEnZs+Mq/Xjj60xFW2o6XMHYiPjVEAtbldO3THPfzK?=
 =?us-ascii?Q?Fea7s6b7o6ovEJ+Foy5sYEZPq5gNQGYUfYYlTbldMXwFzLmQ9m1tAXOnI2Pj?=
 =?us-ascii?Q?KhcDsmKsgP1uKyqvVEFraaBM0UZBO3fRdLD9TDUybgOqzbboq3YYY0hvyqax?=
 =?us-ascii?Q?18aMVAW98wQ5L1ZFi2xMN5YLaEOOaxeZDd8GGGIF5QamT1STHvMDwD2drUXm?=
 =?us-ascii?Q?k7DA456OTdR9YKGzxo6zPUsND0V5cMMOnYLXxphiITlyYgnWf7FRk7FTzE6G?=
 =?us-ascii?Q?WA88DF9Ge+cvLqS58ucib+utO2bHuDLtZTvjmO+B16A5RERNfQg5KKRhZLyR?=
 =?us-ascii?Q?ASvuiuwiqJV3MH9i+Qu3mDsZ1dwCjluxVdSDZppICOt4k+KpGxrNfxDGAWNZ?=
 =?us-ascii?Q?FIYzm0U2mDkDkIMR69t9lssj0mFvWmub9e4QyyOxgaEmHe8pxXAEU6JQozYN?=
 =?us-ascii?Q?dAhaEn8jcbp+mfszY071G/uUtvB+EKT1GF/Pu1GdaJJHs95mnryrIKAz/Ln7?=
 =?us-ascii?Q?QZMeTdeSL4UwQVX8gaU4xHcLhD7eJ+p1MHZGGXc585HEWqFFjDrYDOdESlQz?=
 =?us-ascii?Q?8OHnhnelAwWrMztCW4Tm25c1w1WqT0/MfWRqclBgLtLViIFAH12g9/sh4Wqh?=
 =?us-ascii?Q?BMZ3zvG75FxXn3BqkDVrLWCFOKRkT7uaFUoe9JMHZz+2jbEo4134UW1J4Kou?=
 =?us-ascii?Q?2t7iPh6EjSxKZUTrRU6gmLHL4drNhrDn8cwhnwDkYJSY0cD3SXcybxuVplI2?=
 =?us-ascii?Q?jljNWqpIMCg9JG3UojnAUvwkU8Db37WTLuzhgC6C/hMV9WnIIuZ3KKGrvtgp?=
 =?us-ascii?Q?Tsta9Hafz2rJbo+sQTuHr8p2hnB4O77kHub6oNftYw1PJws8xBWwsnMrNRpg?=
 =?us-ascii?Q?48w2wUme+5xTaHI01tji0Z0KWPfZ9/PqckrVLc/Hr9PDwWWMFtdH4FKuTtZz?=
 =?us-ascii?Q?1HFlbwXrjZIfX1SY7ge0XE3uuCLRQwg0c0iXITQV8Z9L4W0T6ZTf81lkwRnL?=
 =?us-ascii?Q?wdLS/Z6+Y9ic2yiroim2ZsVEaSpvX2ZNq3n7wYHIrGRPjZO0a7k2iXon/MGn?=
 =?us-ascii?Q?08M5bSTGvhXSrk1+55m+7PnbKWq6faDCPt2X/1ZT6hxWPaSgi0Sqe5tpC30C?=
 =?us-ascii?Q?GB483NeDp5cqNfUdIa/nrZUk5XDleWedUk+BTRwFGpef9q2Qtf7hGwWx2jjo?=
 =?us-ascii?Q?3D/8gbOI5WjzBToBS2HJSUzhUxsXaUp4f0IzDIIk1xixlQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR18MB4474.namprd18.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?VMvQk+2cU6HMSwrBuk2Djx+u0tiV96YkS5TwW6SnuOTM6Ud/fyCnghePmedM?=
 =?us-ascii?Q?8qzNITRUqyh7DI6bcMbt4Ve+wd39eGcRbfmH/BLxkAcGQSmuoX6/H1kPPO5A?=
 =?us-ascii?Q?1ku/pZ7vmTdR7kBP75ioFg6FNWCK7NWRgJu3CNp+4ClCxNpZ+FtT4agD3LvM?=
 =?us-ascii?Q?U3zjipNs7hYAyWiR/e7mMMY2MQ7hcP7/JtC7p8L9xfUAnAJPVY8xArfQwi68?=
 =?us-ascii?Q?FwwnU8bDepa8g+9juIQsQiJ7mgJZPZeMrT+O9Rr5PQoS+UQQqm0kHZ05DZIe?=
 =?us-ascii?Q?/SoF8sB2A0LdLZIX4nHusAPaIE2OxVO3ue7KOUQciyFWMATwiFjm1tSYwoow?=
 =?us-ascii?Q?GfypjsXLYWyadwKpEBYq+kT0ked9MQpIu3f0oR6YE3Y9PwJjazyIhEkjF8RB?=
 =?us-ascii?Q?HYdOv9hqfpLCoQRfL53v4LMqPgZx/bd7ImHnJbFsb9a8oLnirptmvdjR4twl?=
 =?us-ascii?Q?FuUL40CIkRuhpfGIOSah1IDpvoUDTcFWnu4KNkoKWEIqTElbz6UiRmtrN+wb?=
 =?us-ascii?Q?GVQutNqWqrS7zLPK8AMczjLuDxULrIGQqXmao7ZjwMjDSwz0dDMuutsv2885?=
 =?us-ascii?Q?BrBvV5Y9qHePziYCZOCOiacG69NU/DRO287HIxntbnddIlFrm0fgrE75E12d?=
 =?us-ascii?Q?m3X6luSt7Vt6veiaUxUN9+bRA5O1ep84WMHEF0RFfjGqutauARTEfxDTE1TV?=
 =?us-ascii?Q?8Wc+xJn/Nk6SzpPX/AlD1Rlcd4Xku/0HJDCPKbR7kfKdp5LghfTIIBXLPdWY?=
 =?us-ascii?Q?+WenAGEWoI5mVqMNDJ1UZmW10L6Rl7acyUg4QUVVIcKviwyXOfm8RaCkomvU?=
 =?us-ascii?Q?T4qeIaz+S+URe7Fqaa7IOzbeKvdAZCL24AsSZYw+aX8XGduP0Bn87Wu+YW3T?=
 =?us-ascii?Q?7FPC+iDsS/cNS1uU1fdKaPfj/oX5KvvCcwP3NCHJk30a4c587HCemT+jhNQg?=
 =?us-ascii?Q?7OuOmk+DXWRhNoF3wHvlpNz56uS4/nycbuUyhW9JibF3dD5Ppm3AA/OXEKaJ?=
 =?us-ascii?Q?6LsQlFA8Yd709MQCIZJ9XGRjve1mOteOG4YV2mrrTZXTv5O/z3RFPD3Tfei5?=
 =?us-ascii?Q?I1u8v5q6rxQ7NBKA2+KpTuoX0S3xa5sz9B0Y8jIBiKsuJiSr0jgvoDMe5p9x?=
 =?us-ascii?Q?HtAbwNflNodoOaXgCjbMvnSg27DuBMiKdUcYEIjW9tUnvvW07ebXRurRaEkB?=
 =?us-ascii?Q?eXOAKFU/c7xzgBc3vQJNnH+inqRYQU6Ya8/eNKJIbE//nbHxV7gM/Qgs2Kyq?=
 =?us-ascii?Q?lKcXYHttk7NqirKdzMfdCmsTBz5fDL8VE8FLkRoYo1gIbrFf0wQK44zRUQMm?=
 =?us-ascii?Q?FVijLGZPw9Kqx1O0EGSpZxxfhOxZ9gO5TF8g0HUKH0ZYiRTBshf3MDAGeZRA?=
 =?us-ascii?Q?g6bvLHtd/EudySaSO1xtXWPI0x9mM6+WScOArglcuBQB67NI8F+hpne74Vb0?=
 =?us-ascii?Q?qulHzqYTiWpe1A3azZUgIinncFIKzI6jufqtVXsVj+6DD+drJxyGQslrJB+B?=
 =?us-ascii?Q?wT2+W2rjvXidu+tLLNm3rUwYWeDkwUmYYDgyQ68zvjjdohuoD5LuFZm6vRAL?=
 =?us-ascii?Q?Kcp9nTtglhkaOeRCBGs=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: marvell.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR18MB4474.namprd18.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b94e3aae-4c66-4b9b-a4e5-08dc845b1978
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2024 05:56:38.3618 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZqZX7iIkJD11bLuC0kDpEWHWnsy4ltnsl3adSynzOAC+w8f5eew/ITGgUCsrjZeeohCstVAy+aewmlRUGnI2Aw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY3PR18MB4803
X-Proofpoint-ORIG-GUID: U2pGZOuVEBRDdFCJKo7H-tlOILJlYitT
X-Proofpoint-GUID: U2pGZOuVEBRDdFCJKo7H-tlOILJlYitT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.650,FMLib:17.12.28.16
 definitions=2024-06-04_02,2024-05-30_01,2024-05-17_01
X-Mailman-Approved-At: Tue, 04 Jun 2024 21:09:03 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h6HrcMlAzo/tCuodYMa0kg4gu3Tf4IlyoFFNRhVe3rs=;
 b=l38nlXqbbDnhYGzzvq2eIu4wV7BAXWe9teMpzu9cdMPO3OD3/igK+4TbJqN1T19YNMF/EaU+FEND2JGqi26wNb9gFuCb5jhPUFSOzfTibg0r1bf3B6bcuE90ruIkRNTnj3K7NOoj8ecvYBgIc6MgTexDE8jzMo3mVB50sH+YL6o=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=marvell.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=marvell.com header.i=@marvell.com header.a=rsa-sha256
 header.s=selector1 header.b=l38nlXqb
Subject: [Intel-wired-lan] [PATCH iwl-next v3] ice: Add support for devlink
 local_forwarding param.
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
Cc: "jacob.e.keller@intel.com" <jacob.e.keller@intel.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> From: Pawel Kaminski <pawel.kaminski@intel.com>
>=20
> Add support for driver-specific devlink local_forwarding param.
> Supported values are "enabled", "disabled" and "prioritized".
> Default configuration is set to "enabled".
>=20
> Add documentation in networking/devlink/ice.rst.
>=20
> In previous generations of Intel NICs the transmit scheduler was only lim=
ited
> by PCIe bandwidth when scheduling/assigning hairpin-badwidth between
> VFs. Changes to E810 HW design introduced scheduler limitation, so that
> available hairpin-bandwidth is bound to external port speed.
> In order to address this limitation and enable NFV services such as "serv=
ice
> chaining" a knob to adjust the scheduler config was created.
> Driver can send a configuration message to the FW over admin queue and
> internal FW logic will reconfigure HW to prioritize and add more BW to VF=
 to
> VF traffic. As end result for example 10G port will no longer limit hairp=
in-
> badwith to 10G and much higher speeds can be achieved.
>=20
> Devlink local_forwarding param set to "prioritized" enables higher hairpi=
n-
> badwitdh on related PFs. Configuration is applicable only to 8x10G and 4x=
25G
> cards.
>=20
> Changing local_forwarding configuration will trigger CORER reset in order=
 to
> take effect.
>=20
> Example command to change current value:
> devlink dev param set pci/0000:b2:00.3 name local_forwarding \
>         value prioritized \
>         cmode runtime
>=20
> Co-developed-by: Michal Wilczynski <michal.wilczynski@intel.com>
> Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Pawel Kaminski <pawel.kaminski@intel.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
> v2: Extend documentation
> v3: rename loopback to local_forwarding
> ---
>  Documentation/networking/devlink/ice.rst      |  23 ++++
>  .../net/ethernet/intel/ice/devlink/devlink.c  | 126 ++++++++++++++++++
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  11 +-
>  drivers/net/ethernet/intel/ice/ice_common.c   |   4 +
>  drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
>  5 files changed, 164 insertions(+), 1 deletion(-)
>=20
> diff --git a/Documentation/networking/devlink/ice.rst
> b/Documentation/networking/devlink/ice.rst
> index 830c04354222..0eb64bd4710f 100644
> --- a/Documentation/networking/devlink/ice.rst
> +++ b/Documentation/networking/devlink/ice.rst
> @@ -11,6 +11,7 @@ Parameters
>  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
>  .. list-table:: Generic parameters implemented
> +   :widths: 5 5 90
>=20
>     * - Name
>       - Mode
> @@ -68,6 +69,28 @@ Parameters
>=20
>         To verify that value has been set:
>         $ devlink dev param show pci/0000:16:00.0 name tx_scheduling_laye=
rs
> +.. list-table:: Driver specific parameters implemented
> +    :widths: 5 5 90
> +
> +    * - Name
> +      - Mode
> +      - Description
> +    * - ``local_forwarding``
> +      - runtime
> +      - Controls loopback behavior by tuning scheduler bandwidth.
> +        Supported values are:
> +
> +        ``enabled`` - VF to VF traffic is allowed on port
> +
> +        ``disabled`` - VF to VF traffic is not allowed on this port
> +
> +        ``prioritized`` - VF to VF traffic is prioritized on this port
> +
> +        Default value of ``local_forwarding`` parameter is ``enabled``.
> +        ``prioritized`` provides ability to adjust VF to VF traffic rate=
 to increase
> +        one port capacity at cost of the another. User needs to disable
> +        local forwarding on one of the ports in order have increased cap=
acity
> +        on the ``prioritized`` port.
>=20
>  Info versions
>  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c
> b/drivers/net/ethernet/intel/ice/devlink/devlink.c
> index f774781ab514..810a901d7afd 100644
> --- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
> +++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
> @@ -1381,9 +1381,129 @@ ice_devlink_enable_iw_validate(struct devlink
> *devlink, u32 id,
>  	return 0;
>  }
>=20
> +#define DEVLINK_LOCAL_FWD_DISABLED_STR "disabled"
> +#define DEVLINK_LOCAL_FWD_ENABLED_STR "enabled"
> +#define DEVLINK_LOCAL_FWD_PRIORITIZED_STR "prioritized"
> +
> +/**
> + * ice_devlink_local_fwd_mode_to_str - Get string for local_fwd mode.
> + * @mode: local forwarding for mode used in port_info struct.
> + *
> + * Return: Mode respective string or "Invalid".
> + */
> +static const char *
> +ice_devlink_local_fwd_mode_to_str(enum ice_local_fwd_mode mode) {
> +	switch (mode) {
> +	case ICE_LOCAL_FWD_MODE_ENABLED:
> +		return DEVLINK_LOCAL_FWD_ENABLED_STR;
> +	case ICE_LOCAL_FWD_MODE_PRIORITIZED:
> +		return DEVLINK_LOCAL_FWD_PRIORITIZED_STR;
> +	case ICE_LOCAL_FWD_MODE_DISABLED:
> +		return DEVLINK_LOCAL_FWD_DISABLED_STR;
> +	}
> +
> +	return "Invalid";
> +}
> +
> +/**
> + * ice_devlink_local_fwd_str_to_mode - Get local_fwd mode from string
> name.
> + * @mode_str: local forwarding mode string.
> + *
> + * Return: Mode value or negative number if invalid.
> + */
> +static int ice_devlink_local_fwd_str_to_mode(const char *mode_str) {
> +	if (!strcmp(mode_str, DEVLINK_LOCAL_FWD_ENABLED_STR))
> +		return ICE_LOCAL_FWD_MODE_ENABLED;
> +	else if (!strcmp(mode_str, DEVLINK_LOCAL_FWD_PRIORITIZED_STR))
> +		return ICE_LOCAL_FWD_MODE_PRIORITIZED;
> +	else if (!strcmp(mode_str, DEVLINK_LOCAL_FWD_DISABLED_STR))
> +		return ICE_LOCAL_FWD_MODE_DISABLED;
> +
> +	return -EINVAL;
> +}
> +
> +/**
> + * ice_devlink_local_fwd_get - Get local_fwd parameter.
> + * @devlink: Pointer to the devlink instance.
> + * @id: The parameter ID to set.
> + * @ctx: Context to store the parameter value.
> + *
> + * Return: Zero.
> + */
> +static int ice_devlink_local_fwd_get(struct devlink *devlink, u32 id,
> +				     struct devlink_param_gset_ctx *ctx) {
> +	struct ice_pf *pf =3D devlink_priv(devlink);
> +	struct ice_port_info *pi;
> +	const char *mode_str;
> +
> +	pi =3D pf->hw.port_info;
> +	mode_str =3D ice_devlink_local_fwd_mode_to_str(pi-
> >local_fwd_mode);
> +	snprintf(ctx->val.vstr, sizeof(ctx->val.vstr), "%s", mode_str);
> +
> +	return 0;
> +}
> +
> +/**
> + * ice_devlink_local_fwd_set - Set local_fwd parameter.
> + * @devlink: Pointer to the devlink instance.
> + * @id: The parameter ID to set.
> + * @ctx: Context to get the parameter value.
> + * @extack: Netlink extended ACK structure.
> + *
> + * Return: Zero.
> + */
> +static int ice_devlink_local_fwd_set(struct devlink *devlink, u32 id,
> +				     struct devlink_param_gset_ctx *ctx,
> +				     struct netlink_ext_ack *extack) {
> +	int new_local_fwd_mode =3D ice_devlink_local_fwd_str_to_mode(ctx-
> >val.vstr);
> +	struct ice_pf *pf =3D devlink_priv(devlink);
> +	struct device *dev =3D ice_pf_to_dev(pf);
> +	struct ice_port_info *pi;
> +
> +	pi =3D pf->hw.port_info;
> +	if (pi->local_fwd_mode !=3D new_local_fwd_mode) {
          This check seems redundant, as devlink calls set API only if ther=
e is change in value.

Thanks,
Hariprasad k
> +		pi->local_fwd_mode =3D new_local_fwd_mode;
> +		dev_info(dev, "Setting local_fwd to %s\n", ctx->val.vstr);
> +		ice_schedule_reset(pf, ICE_RESET_CORER);
> +	}
> +
> +	return 0;
> +}
> +
> +/**
> + * ice_devlink_local_fwd_validate - Validate passed local_fwd parameter
> value.
> + * @devlink: Unused pointer to devlink instance.
> + * @id: The parameter ID to validate.
> + * @val: Value to validate.
> + * @extack: Netlink extended ACK structure.
> + *
> + * Supported values are:
> + * "enabled" - local_fwd is enabled, "disabled" - local_fwd is disabled
> + * "prioritized" - local_fwd traffic is prioritized in scheduling.
> + *
> + * Return: Zero when passed parameter value is supported. Negative
> +value on
> + * error.
> + */
> +static int ice_devlink_local_fwd_validate(struct devlink *devlink, u32 i=
d,
> +					  union devlink_param_value val,
> +					  struct netlink_ext_ack *extack)
> +{
> +	if (ice_devlink_local_fwd_str_to_mode(val.vstr) < 0) {
> +		NL_SET_ERR_MSG_MOD(extack, "Error: Requested value is
> not supported.");
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
>  enum ice_param_id {
>  	ICE_DEVLINK_PARAM_ID_BASE =3D
> DEVLINK_PARAM_GENERIC_ID_MAX,
>  	ICE_DEVLINK_PARAM_ID_TX_SCHED_LAYERS,
> +	ICE_DEVLINK_PARAM_ID_LOCAL_FWD,
>  };
>=20
>  static const struct devlink_param ice_dvl_rdma_params[] =3D { @@ -1405,6
> +1525,12 @@ static const struct devlink_param ice_dvl_sched_params[] =3D =
{
>  			     ice_devlink_tx_sched_layers_get,
>  			     ice_devlink_tx_sched_layers_set,
>  			     ice_devlink_tx_sched_layers_validate),
> +	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_LOCAL_FWD,
> +			     "local_forwarding",
> DEVLINK_PARAM_TYPE_STRING,
> +			     BIT(DEVLINK_PARAM_CMODE_RUNTIME),
> +			     ice_devlink_local_fwd_get,
> +			     ice_devlink_local_fwd_set,
> +			     ice_devlink_local_fwd_validate),
>  };
>=20
>  static void ice_devlink_free(void *devlink_ptr) diff --git
> a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> index 621a2ca7093e..9683842f8880 100644
> --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> @@ -232,6 +232,13 @@ struct ice_aqc_get_sw_cfg_resp_elem {
>  #define ICE_AQC_GET_SW_CONF_RESP_IS_VF		BIT(15)
>  };
>=20
> +/* Loopback port parameter mode values. */ enum ice_local_fwd_mode {
> +	ICE_LOCAL_FWD_MODE_ENABLED =3D 0,
> +	ICE_LOCAL_FWD_MODE_DISABLED =3D 1,
> +	ICE_LOCAL_FWD_MODE_PRIORITIZED =3D 2,
> +};
> +
>  /* Set Port parameters, (direct, 0x0203) */  struct ice_aqc_set_port_par=
ams {
>  	__le16 cmd_flags;
> @@ -240,7 +247,9 @@ struct ice_aqc_set_port_params {
>  	__le16 swid;
>  #define ICE_AQC_PORT_SWID_VALID			BIT(15)
>  #define ICE_AQC_PORT_SWID_M			0xFF
> -	u8 reserved[10];
> +	u8 local_fwd_mode;
> +#define ICE_AQC_SET_P_PARAMS_LOCAL_FWD_MODE_VALID BIT(2)
> +	u8 reserved[9];
>  };
>=20
>  /* These resource type defines are used for all switch resource diff --g=
it
> a/drivers/net/ethernet/intel/ice/ice_common.c
> b/drivers/net/ethernet/intel/ice/ice_common.c
> index 9ae61cd8923e..60ad7774812c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -1086,6 +1086,7 @@ int ice_init_hw(struct ice_hw *hw)
>  		goto err_unroll_cqinit;
>  	}
>=20
> +	hw->port_info->local_fwd_mode =3D
> ICE_LOCAL_FWD_MODE_ENABLED;
>  	/* set the back pointer to HW */
>  	hw->port_info->hw =3D hw;
>=20
> @@ -3070,6 +3071,9 @@ ice_aq_set_port_params(struct ice_port_info *pi,
> bool double_vlan,
>  		cmd_flags |=3D ICE_AQC_SET_P_PARAMS_DOUBLE_VLAN_ENA;
>  	cmd->cmd_flags =3D cpu_to_le16(cmd_flags);
>=20
> +	cmd->local_fwd_mode =3D pi->local_fwd_mode |
> +
> 	ICE_AQC_SET_P_PARAMS_LOCAL_FWD_MODE_VALID;
> +
>  	return ice_aq_send_cmd(hw, &desc, NULL, 0, cd);  }
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_type.h
> b/drivers/net/ethernet/intel/ice/ice_type.h
> index aac59c85a911..f3e4d8030f43 100644
> --- a/drivers/net/ethernet/intel/ice/ice_type.h
> +++ b/drivers/net/ethernet/intel/ice/ice_type.h
> @@ -730,6 +730,7 @@ struct ice_port_info {
>  	u16 sw_id;			/* Initial switch ID belongs to port */
>  	u16 pf_vf_num;
>  	u8 port_state;
> +	u8 local_fwd_mode;
>  #define ICE_SCHED_PORT_STATE_INIT	0x0
>  #define ICE_SCHED_PORT_STATE_READY	0x1
>  	u8 lport;
> --
> 2.40.1
>=20

