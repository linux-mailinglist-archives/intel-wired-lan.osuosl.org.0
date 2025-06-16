Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B97BADBB1B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Jun 2025 22:25:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 10673811B9;
	Mon, 16 Jun 2025 20:25:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1sd1lbfDOXPY; Mon, 16 Jun 2025 20:25:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 592BC811BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750105520;
	bh=lGBkF7xcb8K5NDjM28plqkfjmFG+bfPhPRWoql95XZM=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=DIXLIJJB7RnNBgEEfSat2ipypEEj591Y3wTGBEbl4kOcgP9Ips+UR3j33qgAD1vv3
	 EOR2tBIBI+/VOcJCaXsspKQFZdOxnivK/CMSnPHZ7TWXXzh3jrz+1T/Fxdrpbv7dgl
	 a2UqWGyCAZq/ky8uZAMafwp12reW6Mllx7mbhuKl+9yLmi4Ygtg0Du5Ftmghabbk+K
	 YhldycLDfTYHFXPTSPQKDOM8rEeeCbD25hD9kJIyUcwRUmG/83zLBnCA1kCT6+gcNr
	 9VK+l8FVL0LTVeNeCvya/rjMpumzTExwevhcdkuzHyWILh8TT8X4p5lVWipKjH9qUm
	 ilSB3VM+PSfBw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 592BC811BA;
	Mon, 16 Jun 2025 20:25:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id AE3FBD79
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 19:42:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9FC84605C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 19:42:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zRkUb1GwlZUl for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Jun 2025 19:42:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.236.82;
 helo=nam11-bn8-obe.outbound.protection.outlook.com;
 envelope-from=david.kaplan@amd.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D91C5605A8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D91C5605A8
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2082.outbound.protection.outlook.com [40.107.236.82])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D91C5605A8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 19:42:27 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eBY7f34JBVOG9cAW4eviROXT+fUk46pNnupZyEobrRLe/SAZo4m7tix3DaU1O1Xfx/J6ivm9Hd2tsJtR34rhTJqayO+AbtCaK50/y4+Fqw9Fq81wRY9h4xxp7s7qGeWfzWXLWmnuUEtXnNFBv8SLDE/gUymUyEYd3QmR4+lJfohpen9iM5EcW6EN98JKhy7ClXYftTbXbGK2bzbXhpwCckvLtKd0RdLrFkE/IGDZdNWErA35ui48SGK9tTfY4AEiWgswqiVwg1nGxxV7h3lj3TnCPA/lEN4DmpFfInATPvYlIPIH6ZIrz6c9xl3Rf7k59MF6yzntJ+zzdLdoC8Pn0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lGBkF7xcb8K5NDjM28plqkfjmFG+bfPhPRWoql95XZM=;
 b=cbcG5Z91avRro3iQzcXQJKXY+DtPgEZE9qpArAdXQrTGu2civAL2DbI0SrLfsESe0JWg8MvEUvhleD23nfc3GQRhetTG4hNA2pYzr9Afc5ZH+rUXyS7xIC+QCRvAdXQCl+IVugZDq9aqetRZ4nQTkHlVYa1MPE8Fs9TYa9wdGqgzFGwOP/ggeJgLLmNwI4KrV7KmqSuvfxFtNyfXulCbyBhVFPAgMIOjiMb3dtMVBhPWW49kttuUnGTQfxzKUCI9aR575QEP978CnQ0ZwCOpgA/XG4zAH9aZ0Y2bmZwgwGgSR6JZ6eruC+IREYSKUBRPG6K2ea1nEqpCPGb2AXiz9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from LV3PR12MB9265.namprd12.prod.outlook.com (2603:10b6:408:215::14)
 by CH3PR12MB8402.namprd12.prod.outlook.com (2603:10b6:610:132::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.30; Mon, 16 Jun
 2025 19:42:23 +0000
Received: from LV3PR12MB9265.namprd12.prod.outlook.com
 ([fe80::cf78:fbc:4475:b427]) by LV3PR12MB9265.namprd12.prod.outlook.com
 ([fe80::cf78:fbc:4475:b427%3]) with mapi id 15.20.8835.027; Mon, 16 Jun 2025
 19:42:23 +0000
From: "Kaplan, David" <David.Kaplan@amd.com>
To: "jedrzej.jagielski@intel.com" <jedrzej.jagielski@intel.com>
CC: "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "przemyslaw.kitszel@intel.com" <przemyslaw.kitszel@intel.com>,
 "horms@kernel.org" <horms@kernel.org>, Jedrzej Jagielski
 <jedrzej.jagielski@intel.com>, Mateusz Polchlopek
 <mateusz.polchlopek@intel.com>, Bharath R <bharath.r@intel.com>,
 "regressions@lists.linux.dev" <regressions@lists.linux.dev>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [REGRESSION] ixgbe broken after devlink support patch
Thread-Index: Adve9gZxdo+gRUk1T32Pw8JoiNgJPA==
Date: Mon, 16 Jun 2025 19:42:23 +0000
Message-ID: <LV3PR12MB92658474624CCF60220157199470A@LV3PR12MB9265.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_dce362fe-1558-4fb5-9f64-8a6240d76441_Enabled=True;
 MSIP_Label_dce362fe-1558-4fb5-9f64-8a6240d76441_SiteId=3dd8961f-e488-4e60-8e11-a82d994e183d;
 MSIP_Label_dce362fe-1558-4fb5-9f64-8a6240d76441_SetDate=2025-06-16T19:33:39.0000000Z;
 MSIP_Label_dce362fe-1558-4fb5-9f64-8a6240d76441_Name=AMD
 Internal Distribution
 Only; MSIP_Label_dce362fe-1558-4fb5-9f64-8a6240d76441_ContentBits=3;
 MSIP_Label_dce362fe-1558-4fb5-9f64-8a6240d76441_Method=Standard
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV3PR12MB9265:EE_|CH3PR12MB8402:EE_
x-ms-office365-filtering-correlation-id: aa8aba91-b049-4d4a-65fb-08ddad0dea35
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?kvreuoBmN8P6vWqhxbpijWlqoA/UrMeYP+Pysa4Jndhc8ldxyeAVpbU/Cgf7?=
 =?us-ascii?Q?B8gtelkN+JDVWJ3D5od7ZHYkqrKy5xE5yACbDqVScikvqsAioKq0L/WJ82eT?=
 =?us-ascii?Q?aPEUVbrXX1OFIk+K9pWvOIEjSd3qMuWMEhv/e0IFbOKyVmlYEiGMQ6g7R3rD?=
 =?us-ascii?Q?gemT7fTQ6mr7zDooXCgIQ/an5fHjs2QramJ4RaRvdx5VmKh3vPac8mkYHDWV?=
 =?us-ascii?Q?z7Ndjwcw24BXWKudl37KjQnW1ie/ogHTj589P17QqWY1s9F6fM00MfXguxPI?=
 =?us-ascii?Q?lLHceMiEfT5m/Pp8OjMswNawsPcPbL+ZA8iS/WU0IHG2IwWSzLc7sxrC/FIe?=
 =?us-ascii?Q?0cQYSJvTMJu173hsNndrNZPjXyga+iCf3Ul0EOp7xWzzuqDv1FI962EPU5go?=
 =?us-ascii?Q?bglDvUcMQvY6I8Vd/RUfdt2sqWYmQsq9+Z6OpqDeLHgGStteIHdRStia6Udt?=
 =?us-ascii?Q?zQfOYU202rmxQIabOSLHumgnXarX1NbVHNB0rIJ8t2/dCw53NgmrhwkYL6JX?=
 =?us-ascii?Q?li6kD2yRKLY/yID4rrwFOsSio9qoe8Ok+QtLvpi+M8FCGJNJUHIzcTe5F0pz?=
 =?us-ascii?Q?pNh06x0DWURYPt42+5awTktI7+HoFtblt1MOEKe2PKeiTKuqjy8JW6HJ0SbW?=
 =?us-ascii?Q?IgrQbzfEquT3Yi7o49I7rwUgRdU2FGf6967VAZVchf0qXBnr16S/YBH7/lTi?=
 =?us-ascii?Q?rMtuYeCG7krDOU67brcL0d7m1iFxAwi3lgjHzDv5DHQ8buyDniQp3wXJeeed?=
 =?us-ascii?Q?Lh1oYVQ7yODfuoHJiFI0lluWHOlrrYFcSsY/xbFPBJKHcxAcmq4JPZnZFygI?=
 =?us-ascii?Q?PVX8+kj6Ngs7eG5KwZgDysx50XgnVT+TmqJ3UKhbY5tYza1bFxOPiQK3C1PA?=
 =?us-ascii?Q?dfeuPHgcc23q4VSQC/7HnNIZnY7A5M6gy0I6lqLwkCsRTfxh1jlu/bS3M5dC?=
 =?us-ascii?Q?Roh53xPQ84yEKsOqdyf+cdodAEV/agbhdnK1K+dyQQy+vozLx9BQJle67gOn?=
 =?us-ascii?Q?D5qGqbhkBQSDeDVJeZum8xrQ4kiYpGd3DrheVt4lozLu0/DFXOnf50bTJbgv?=
 =?us-ascii?Q?b9EoihtWbgMDDjwBF1VHTHtteNWvt1Akn88Fbs7V5TAYehGAgOWeDIJikr0h?=
 =?us-ascii?Q?TPu7noYg50bUWUkhrmic+dqLDU1JEdnB3au7d7IngzdRLmj5A37G8xCAsUM8?=
 =?us-ascii?Q?m5vha9a+kfC097uTGUenkY22FwxaNFa2cIinnBlCe4sdqBdKp0KxneQZrjwx?=
 =?us-ascii?Q?uPJMDLVS3n5YkftV5aAfTJTHwT6t5XS+Qi0G7LapXvYQHp0EUtE+EYQlvklc?=
 =?us-ascii?Q?+o6bqeaDrKc4llZYuw0eUeE+hiOVqq7nzNwVtfEnNj6uaEeEjM3zJVjgIi48?=
 =?us-ascii?Q?5+ukr3Sxgz98umeyUFLqnylKvrCyKcgAHcMxAW7MRmJ/N6k2vrq2kALXlZoZ?=
 =?us-ascii?Q?6TqFDGoCnzCzuN6o1JxBuq2gislsUFLM03v9ye3Gut/YeK02LJcSN+6SVYlv?=
 =?us-ascii?Q?U3rVy/sHeAbrt34=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV3PR12MB9265.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?UF5mQE2QpAFv//JZzIgtwCxEolPaAZVXcYxtf6ADJoSWJAM4cFpYR8xybkKP?=
 =?us-ascii?Q?2/Kw5QAsdM8yYBnMmgBHD4yj+JrgO0r2ERtigjqqNHa2wk6uTfUV122s+xzM?=
 =?us-ascii?Q?m62gDC2VZWsjDbwtr/A5sca3nqH0ICys7+6/pAsjjhR7kBzjy+Xw+RPJ58SQ?=
 =?us-ascii?Q?PEV2xzxhzsPWlivdq5wU4wRsubcGLOdtXvyAyYkUMLBT8HVP9VuUIgWG/PUX?=
 =?us-ascii?Q?CtfoFtf19ysYlW53L+ATKbadFkHbbtpydCB4z8Y4Vrkwv7jg/p3XfwPaRklb?=
 =?us-ascii?Q?TZA3GdQxw9nW58B3GXU9WkqMuB/G5t+fQWyOw2tO1gJJnrOIzKa2Ivkueh+1?=
 =?us-ascii?Q?WQIXCtwkUdEUIQHsgef+vorFvDRne7fRXGVVB84QmMwbGfxdfB/1esZXjDaA?=
 =?us-ascii?Q?M+4aVRsruYQHYkLlGmRUVxVEe/+8jOAHVhTY+ai7VvKp6rcvfLFwEaR7tm/A?=
 =?us-ascii?Q?RcpPW5YxF0NLS5uiezdhTvvW4G3GktzTFrY9C+qY4tfk+jrXXI/vKH/h7QxX?=
 =?us-ascii?Q?9m1dXfY0WUQSCtoAMenT2CSZ2SSjqCLzHK5FqW6PaU4/NY8r524ST8VJqJiz?=
 =?us-ascii?Q?WlGkuaKu4YyvYIlG3IrjptzjOZqnNj7dFhgK5mLoh6n36dPecOrlv9cZcSLF?=
 =?us-ascii?Q?xHyb90YzExaPk/P1dJRo3OQcM3eExWUibF56YuZ7T9WM4mKW5VJwEQstXGlF?=
 =?us-ascii?Q?kbM7B7QxehS0uTQq4J/p0sNCGqMPyDZowCjgBK86TGflGL/o40eFvJRxZ8C/?=
 =?us-ascii?Q?dXnRkRuyDGdqaz54F1olgdZKuNjintlegawzbBeeebbxnL2vTunwU+wiiz2h?=
 =?us-ascii?Q?qzYWjqgNX+1MlLcJjiRgL8ob6pjJQKRM1llW0esEbEPRM61aS3vERAeUonvq?=
 =?us-ascii?Q?b6vd20Q0fVewKEYwjdXla4x77k4FKW9zXszmUKPWk7Qr2hpuyJnc5A1YPcHL?=
 =?us-ascii?Q?tGUFswm5oPIireqNs2ln+YaUuD+PPpzXGCs4QeFhudA3dldFQp3YK5CO952F?=
 =?us-ascii?Q?X1XMmq7udn6b2Fq9o9j2B+guJ00SYNCs1bfRTgtZMmwSoRCwS3dOJipIARyw?=
 =?us-ascii?Q?m2aq/ivitdYzdGe05h4G3bTSKveVhj75wXQEyvgtTCb+V8M1MDxI4IXbmGZY?=
 =?us-ascii?Q?nvV6j+cSiqLdmtsgjFG3vKiZlPU1ipuLgt77d05gygLvjnWtDceE51ritrJt?=
 =?us-ascii?Q?7WqssWYoaxtwIP1RrNCW62VjZgQt2ULD5zDs5QC4DVo4focRFV1iTTdAwuEa?=
 =?us-ascii?Q?Zpyg6BHCmXvdYUF0+F+/JDllIR6pvpwnwASopU2IyCzVQv8j8FwwQnde4d8p?=
 =?us-ascii?Q?bLB/MrhBw4AqxL9En0yfnPSqQH3uDZTL1n9bBqz4sl+KBYnZrFVBwQ3VecIW?=
 =?us-ascii?Q?d6DjqYpYD+hKagVQvaOK3osSIURyRLtOqNcj0YagCmgdAxcF7QsGVrcgL3K1?=
 =?us-ascii?Q?zWQ8ehLF8rECaLYVXz6qa+swGCyxyMUaC4yBz/cgkoBsdep8iZ9mAGmi1gOa?=
 =?us-ascii?Q?Sm55GG+7jvATC90C5/skc+Y1q19Sh834fLbPQMhciNliID5BJBkfzAipX82L?=
 =?us-ascii?Q?f2qoaIKI4Z2C+ilikaw=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV3PR12MB9265.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa8aba91-b049-4d4a-65fb-08ddad0dea35
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2025 19:42:23.1776 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3xpqoX5F4X55K4aCvT7VXPcaN9gzsZDfXQFNW6koqFhnSY+Q4lxTTApI8Q96s1u4
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB8402
X-Mailman-Approved-At: Mon, 16 Jun 2025 20:25:19 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lGBkF7xcb8K5NDjM28plqkfjmFG+bfPhPRWoql95XZM=;
 b=JT50t8yYOATjP4RHF0qQIK+99SbfEtjYeJ6AZbgkjmUNIcz78XPZ7eKHGZNm+3ppXW92G3Zth6chGjiw/XNvobf2G5u2BQMyLKIA4SpGcf39l+Cu+5Awqo8p5fCT95BZ7p+fKPi0qWfQCh6FE7CDcefAUCOI3WBtT4k8s+SV38U=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amd.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=JT50t8yY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Subject: [Intel-wired-lan] [REGRESSION] ixgbe broken after devlink support
 patch
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

[AMD Official Use Only - AMD Internal Distribution Only]

Hi,

My "Ethernet controller: Intel Corporation Ethernet Controller 10G X550T (r=
ev 01)" device stopped working on recent kernel builds (fails to show up in=
 'ifconfig' or to get an IP address).  I bisected the failure down to the f=
ollowing commit:

commit a0285236ab93fdfdd1008afaa04561d142d6c276 (HEAD, refs/bisect/bad)
Author: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Date:   Thu Apr 10 14:59:56 2025 +0200

    ixgbe: add initial devlink support

    Add an initial support for devlink interface to ixgbe driver.

    Similarly to i40e driver the implementation doesn't enable
    devlink to manage device-wide configuration. Devlink instance
    is created for each physical function of PCIe device.

    Create separate directory for devlink related ixgbe files
    and use naming scheme similar to the one used in the ice driver.

    Add a stub for Documentation, to be extended by further patches.

    Change struct ixgbe_adapter allocation to be done by devlink (Przemek),
    as suggested by Jiri.

    Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
    Co-developed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
    Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
    Tested-by: Bharath R <bharath.r@intel.com>
    Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
    Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>

Normally, the device is given a name like enp194s0f0 and connects to the wi=
red network.  Starting with this patch, it fails to do so.  I'm not familia=
r with how to debug this particular device, so please let me know what othe=
r information would be of assistance.

lspci -vv information (on a working build):

c2:00.0 Ethernet controller: Intel Corporation Ethernet Controller 10G X550=
T (rev 01)
        Subsystem: ASRock Incorporation Ethernet Controller 10G X550T
        Physical Slot: 0-1
        Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-=
 Stepping- SERR- FastB2B- DisINTx+
        Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=3Dfast >TAbort- <T=
Abort- <MAbort- >SERR- <PERR- INTx-
        Latency: 0
        Interrupt: pin A routed to IRQ 77
        IOMMU group: 12
        Region 0: Memory at 18020800000 (64-bit, prefetchable) [size=3D4M]
        Region 4: Memory at 18020c04000 (64-bit, prefetchable) [size=3D16K]
        Expansion ROM at b6000000 [disabled] [size=3D512K]
        Capabilities: <access denied>
        Kernel driver in use: ixgbe
        Kernel modules: ixgbe

Thanks --David Kaplan

