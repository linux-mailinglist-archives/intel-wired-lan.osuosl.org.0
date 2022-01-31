Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E6D5E4A4E83
	for <lists+intel-wired-lan@lfdr.de>; Mon, 31 Jan 2022 19:36:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4EFAF83F04;
	Mon, 31 Jan 2022 18:36:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Suc-pqdJctfW; Mon, 31 Jan 2022 18:36:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4D79B83EF9;
	Mon, 31 Jan 2022 18:36:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2C5991BF2B7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 18:35:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 17B7841498
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 18:35:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=nvidia.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 493ZRfmAnS3C for <intel-wired-lan@lists.osuosl.org>;
 Mon, 31 Jan 2022 18:35:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM04-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam08on2085.outbound.protection.outlook.com [40.107.100.85])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 141F3402E9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 18:35:45 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M5OlH/XZwU8ZvAH/CgH1hond4fsS3fl41xQ0dMGxx8uqZpgBOajBOiVML4JM/789u7xV0yxod0964E1J76/pTGei+Lb8mK6LpLIYM/uwszHtwKLysHqMoglnnbcNNf825A8SDMmP7FxruZ0fzSlEIYD8zrab1dif3OFHrBovGpcijxOnEQ7q/9GLTRUPHCV8etWTGJMcP5DFg8wMkKFeOQkhPHiavORkXvgUpWINHyhUvLNsd/YBbmpsFIfWVeM2D9CREfKWkWp2H2ZjKAT9bWLsGytVHuNt4TUjcb0MF1skiiHWlQBEqxZeVlO0TJ6+UqnF2pyi6Fxdevxz/RTqDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YwuD5vIXHOWuJnJEcF0XRpYEFBaaPL6OrECkwmo/RDw=;
 b=YuOa+92UCrJ91JtbcK52Str2ujFu9/9+oEFhjBKLDKKhA0yk81WFZHucGeK0yqH9UNXk6gUbbvoz+HOZp6XJ0VNxJnUFF6UNEX8zumN1/Gww2Bd8+/4EVjlBVXIYsfgOkdDy3lFPIwj/+us38OslUiCl3F0ui0K7e/bvRrUCxF8ZMiyuN55S42RqtfJDW1n8LpShzbeoqEO+GHFjJiB81ARZ9io+R0Zll8VSBpGyKrwnOgzOUCVZKd5u8YKYDoZHsDDdSDEQZEEh4ZFMIj/7eq6x5wTMMJ4lzw/cZB5h2qNXGGiUYBmyCWk9hLzVpyCeEtt4MBszYL5to7+vzjEf6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YwuD5vIXHOWuJnJEcF0XRpYEFBaaPL6OrECkwmo/RDw=;
 b=mhfh7mAKzgEGa348G9CF5DRO3CAPXvb2u+yOFGUcBd9eu32cg2HDkjybUlSnvvEuH1T+ritaV9BK9indUIRMg6BvaGCt+Q2tgfzixO6OGfRdwnjAK7O5jCAmcWbi3iO6J2H4wUJvPDlHDVmIDJZCKpHfkOHoCVeWZA/YOhPjVq1hAkf0O34xuSYmiLYE1s5nZlOCPv1ZPl+paon96SBxwOqeafULsISAftNFmTWI1AxXtJoB5KJnXUKJJbRUoLfmsqqLMgaWUUkBAjweeMYNMVFCKpOecM9syhMqMnCqZHT9RPZMRkr0vjlVgzUCuSpiFNEitWd1b43AoqU14YjzUg==
Received: from BN6PR12MB1284.namprd12.prod.outlook.com (2603:10b6:404:17::17)
 by DM6PR12MB2970.namprd12.prod.outlook.com (2603:10b6:5:3b::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.18; Mon, 31 Jan
 2022 18:35:43 +0000
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from BY5PR12MB4209.namprd12.prod.outlook.com (2603:10b6:a03:20d::22)
 by BN6PR12MB1284.namprd12.prod.outlook.com (2603:10b6:404:17::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.15; Mon, 31 Jan
 2022 18:35:42 +0000
Received: from BY5PR12MB4209.namprd12.prod.outlook.com
 ([fe80::35a1:8b68:d0f7:7496]) by BY5PR12MB4209.namprd12.prod.outlook.com
 ([fe80::35a1:8b68:d0f7:7496%4]) with mapi id 15.20.4930.022; Mon, 31 Jan 2022
 18:35:41 +0000
Date: Mon, 31 Jan 2022 10:35:40 -0800
From: Saeed Mahameed <saeedm@nvidia.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <20220131183540.6ekn3z7tudy5ocdl@sx1>
References: <20220131172450.4905-1-saeed@kernel.org>
 <20220131095905.08722670@hermes.local>
 <CAMuHMdU17cBzivFm9q-VwF9EG5MX75Qct=is=F2h+Kc+VddZ4g@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CAMuHMdU17cBzivFm9q-VwF9EG5MX75Qct=is=F2h+Kc+VddZ4g@mail.gmail.com>
X-ClientProxiedBy: SJ0PR03CA0123.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::8) To BY5PR12MB4209.namprd12.prod.outlook.com
 (2603:10b6:a03:20d::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0377cf89-0b6d-444e-004f-08d9e4e87bce
X-MS-TrafficTypeDiagnostic: BN6PR12MB1284:EE_|DM6PR12MB2970:EE_
X-LD-Processed: 43083d15-7273-40c1-b7db-39efd9ccc17a,ExtAddr,ExtAddr
X-Microsoft-Antispam-PRVS: <BN6PR12MB128479F6D1F0BC3AF5CFD9BFB3259@BN6PR12MB1284.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AI0cnteOD61mDeApjAKpNlbxO26EMtiDjk9ikthpDwC4zgQOTTWJCBn/uX6ShSWM0xCXsxjC9sz+qc4W1zzdzhrWJiQoSIOfdD1zzSsW5tW7NRnYzdMkbs/px4otkVEO77GyiPmWwDiLcoDJcg0ydugB7QF0/GgMIxPKhpB5IgnDzp2O5CzeKi4HiZJIT2CbMK+AOZNgNzxx5PnTuBDafZjsJlF5uCeIgFP/+4HgQCRMStXlkTiv3Vfmg5tF5FyLINWf6m5aXbiHMEB1P3FkcqntdrTPkI9tCbROnRnCE/VaLR87VfG0TRVSzp/HDZz/P+NYbLZyHXLjCRLESi3GjmYo4punMY7n0mrZ988SZCcef3yP4k4iJXxkePtMLEvHPeVi5BFm4TlNEpzfV8mSMw9raWWzREUqsSs/eRCiCUwNOOeRYUSU59865bVB7PXcML7OKFg09BLKHAvnMSVqQBkgs5eEyhS9dxgwn/azyTLHJzB19LZ659A8y0HQ2nkukR0ShkgFy8H0wn+FacM0ADsJkR0P0PU+sjeVIZsczH9deMqGRA1x3A2Z8hRldq6y6FIS+ymhJ0VB6f9NpWcoW57Vnksk9hTU5Y/L4Jqd/8L+mlL6y+R0z4vJMUjmJxcF7z5FbEyKRTx5tBS6VSQbxQwd+X5nTUTDMQ4iJhj2JzB9q6AzAxeHu3VBoKrwHgrSy0bYn0YThyZp6y1x8+X6cbJnghUzzk4L97anaY0Rb7E=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR12MB1284.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(7916004)(366004)(66946007)(186003)(6506007)(52116002)(26005)(6486002)(316002)(1076003)(33716001)(9686003)(54906003)(66476007)(6512007)(6916009)(4326008)(508600001)(8936002)(8676002)(38100700002)(83380400001)(38350700002)(5660300002)(86362001)(66556008)(2906002)(7406005)(7416002)(7336002)(7366002)(129723003)(20210929001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ivo1wHeq5JAa6C6utzDOSxsdL66cT2qCqkvqHYZ72sLzx6cAk3VvURBLypuY?=
 =?us-ascii?Q?uqz3cBrbH8ooWa7+sDwKJWwpnWzRnaPMJpCYkz6NBqOJaFCleUdKe8Wq5IUj?=
 =?us-ascii?Q?P794xTKMdyfK3aXza0/1akucDByHX+f7ykSPpluoRvAV+okDZZnTF2WG9eqI?=
 =?us-ascii?Q?ZT0P25eNRhbIHptn8oSzrTCF2s+O8p/VKZLiaRwTd1/etjY83kPYBc9CVqAG?=
 =?us-ascii?Q?Zspp395/gZ7RxZmH8cQqyQxCllSXSY6Bpx6S+/9GRiCP2sgSoJMgpsAugjkj?=
 =?us-ascii?Q?Qh12ZyAlUAOp4z4z0g9s1XpOQmHuDlWO8KA58oycLb8f+1U+H/SZ+d4loLIt?=
 =?us-ascii?Q?KpMciz4fvhjuuG+31EnayIhuKaF5vew1umDplkHuAxbnCY6bdEcKjXYIS7/R?=
 =?us-ascii?Q?v9igS1a7Lmn8H0WDonAE5p9KKhXq7wgKqOPgoWzNpOu37oL5P0ySVwc9gohG?=
 =?us-ascii?Q?ocuhtdT237qxtg8MYgKdeSIl5CLdmCwdbw2LApTU7H/jAVc1VjThQcryvWx7?=
 =?us-ascii?Q?4l/FK9PsjKn/GE942fXiXv1Stq+6+L33sC0s596hj/R/TJKRBf+2FugW0VuQ?=
 =?us-ascii?Q?4Ayan03BYvtVj+fUpYBYxHkkbIUrFCBlYvYjKMyxy7gAKWIGN/nMAz2nr9/d?=
 =?us-ascii?Q?evOw8UHO9lFJxCSBS9XofolzJZNbCeD4FzMpekr4yCT+3fbqYL5bFUqR6JbU?=
 =?us-ascii?Q?Rfug0KxiX8GbGkJmxnhhPrLV0jcVbbhEQ8u6polnk0oFWo5FcKyf7U+6HHkV?=
 =?us-ascii?Q?Hm3A7mXfbnltvSqbLmyBC1Jy9GWwMbSIU31YumwlO5MXweRTyOC9XLKuIYF/?=
 =?us-ascii?Q?z2DWeuUXUXQGMg57uytEF/uojJe0Tl/aRTViaNiJCyizYPxBtw54ZdPyw2qn?=
 =?us-ascii?Q?+uYstvkXjB155AspUbI/ltKW5gHs8T4g8pBsCQEN//RwoT6hog/5V0ZqiQoG?=
 =?us-ascii?Q?I6VchMx4dRoD6bhmZLa0J1i3CJZHj6Fh38sSw/uqkntDhNDjCmQzvyS09yi7?=
 =?us-ascii?Q?d/4AmW+iSEtkMbqLVBSQwDQXgF3I9knxg/94R4pyze+3G3+kGv7M760hV5qu?=
 =?us-ascii?Q?6nAzpf+4qCwgeXasdsv+z6Liz/r6TnRp94eQf1beNT8XcoBKioW+MUsWRiQy?=
 =?us-ascii?Q?xU27TJfX9oaHrqrnkI6dXgeSZfkASaAxAOcd+IyHDo5l42yuMCy2pkgPV/J9?=
 =?us-ascii?Q?ZhaUvP9d48+1tLN4cjAY4/b+CFbl88od8eIqS7Byq2EX/b06tyZ1SGcYL774?=
 =?us-ascii?Q?Wuj97yb7QKj9ikgqyctF9U5VNLwSkx8JoX46Luv+yic25C3yOV9O6tpEit6c?=
 =?us-ascii?Q?CUG1fHLrUTpmkR+nx9Y0zxZaFrC74ew8Z0rW/hnXfAXBVpvu0NBgTNL8lqj5?=
 =?us-ascii?Q?pTYWi+BFcZp68uD40N7krCWlVbFbq4apbO8dg9YWOGJinIIqq1nQg5RXkAmA?=
 =?us-ascii?Q?X3/2MJOfslK/Rzz6Hkwpj2Ej4IqVc+hWGPxTia4Y7MLb7hR82OtpBBMZ0mKr?=
 =?us-ascii?Q?XTgO8igu6ARA4IKYCAfkIG08X1tCc9IJOFxKJN5wC18D7O83tzjzjmlAcBqQ?=
 =?us-ascii?Q?Tj8+Vc4lUqCY1TTpwjvK5l+fB228RKX9smIsJ1V8Fq2WNjOgtJbEOGQYPgQH?=
 =?us-ascii?Q?gO3YrXEtpQU6mw7RqKokUNg=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0377cf89-0b6d-444e-004f-08d9e4e87bce
X-MS-Exchange-CrossTenant-AuthSource: BY5PR12MB4209.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jan 2022 18:35:41.5122 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HbhP/vrOeyqyR6IsOZJx2nhyCU9T75DcHbkng7KgEgvDY2P1vUry8vRkyUtnrqA9TNsGL5FkQxCHIJnJ+mmGLg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB2970
X-Mailman-Approved-At: Mon, 31 Jan 2022 18:36:51 +0000
Subject: Re: [Intel-wired-lan] [PATCH net-next] net: kbuild: Don't default
 net vendor configs to y
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 David Awogbemila <awogbemila@google.com>,
 Linus Walleij <linus.walleij@linaro.org>, rafal@milecki.pl,
 Horatiu Vultur <horatiu.vultur@microchip.com>,
 Andy Gospodarek <andy@greyhouse.net>, Edwin Peer <edwin.peer@broadcom.com>,
 Wei Liu <wei.liu@kernel.org>, Michal Simek <michal.simek@xilinx.com>,
 Christophe Leroy <christophe.leroy@csgroup.eu>, linux-sunxi@lists.linux.dev,
 Jiri Pirko <jiri@resnulli.us>, l.stelmach@samsung.com,
 Shay Agroskin <shayagr@amazon.com>, Randy Dunlap <rdunlap@infradead.org>,
 linux-kernel@vger.kernel.org, Jon Mason <jdmason@kudzu.us>,
 Shannon Nelson <snelson@pensando.io>,
 Claudiu Beznea <claudiu.beznea@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Chris Snook <chris.snook@gmail.com>, Zhu Yanjun <zyjzyj2000@gmail.com>,
 Arthur Kiyanovski <akiyano@amazon.com>, Stefan Wahren <stefan.wahren@i2se.com>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 linux-stm32@st-md-mailman.stormreply.com, Gabriel Somlo <gsomlo@gmail.com>,
 Rain River <rain.1986.08.12@gmail.com>,
 Martin Habets <habetsm.xilinx@gmail.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>, Jose Abreu <Jose.Abreu@synopsys.com>,
 Shai Malin <smalin@marvell.com>, Maxime Ripard <mripard@kernel.org>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, drivers@pensando.io,
 Omkar Kulkarni <okulkarni@marvell.com>, linux-arm-kernel@lists.infradead.org,
 Vegard Nossum <vegard.nossum@oracle.com>, David Arinzon <darinzon@amazon.com>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-renesas-soc@vger.kernel.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Catherine Sullivan <csully@google.com>, linux-hyperv@vger.kernel.org,
 oss-drivers@corigine.com, Noam Dagan <ndagan@amazon.com>,
 Rob Herring <robh@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Steen Hegelund <steen.hegelund@microchip.com>,
 Dexuan Cui <decui@microsoft.com>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Joel Stanley <joel@jms.id.au>,
 Simon Horman <simon.horman@corigine.com>, Asmaa Mnebhi <asmaa@nvidia.com>,
 Arnd Bergmann <arnd@arndb.de>, Haiyang Zhang <haiyangz@microsoft.com>,
 Saeed Mahameed <saeed@kernel.org>, Liming Sun <limings@nvidia.com>,
 Michael Chan <michael.chan@broadcom.com>, Salil Mehta <salil.mehta@huawei.com>,
 Sergey Shtylyov <s.shtylyov@omp.ru>, Oleksij Rempel <linux@rempel-privat.de>,
 Edward Cree <ecree.xilinx@gmail.com>, Saeed Bishara <saeedb@amazon.com>,
 Mark Einon <mark.einon@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Slark Xiao <slark_xiao@163.com>, Gary Guo <gary@garyguo.net>,
 Gerhard Engleder <gerhard@engleder-embedded.com>,
 Jeroen de Borst <jeroendb@google.com>, Lino Sanfilippo <LinoSanfilippo@gmx.de>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Prabhakar Kushwaha <pkushwaha@marvell.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Richard Cochran <richardcochran@gmail.com>, Marcin Wojtas <mw@semihalf.com>,
 David Thompson <davthompson@nvidia.com>,
 Lars Povlsen <lars.povlsen@microchip.com>, netdev@vger.kernel.org,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Stephen Hemminger <stephen@networkplumber.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 31 Jan 19:30, Geert Uytterhoeven wrote:
>On Mon, Jan 31, 2022 at 6:59 PM Stephen Hemminger
><stephen@networkplumber.org> wrote:
>> On Mon, 31 Jan 2022 09:24:50 -0800
>> Saeed Mahameed <saeed@kernel.org> wrote:
>>
>> > From: Saeed Mahameed <saeedm@nvidia.com>
>> >
>> > NET_VENDOR_XYZ were defaulted to 'y' for no technical reason.
>> >
>> > Since all drivers belonging to a vendor are supposed to default to 'n',
>> > defaulting all vendors to 'n' shouldn't be an issue, and aligns well
>> > with the 'no new drivers' by default mentality.
>> >
>> > Signed-off-by: Saeed Mahameed <saeedm@nvidia.com>
>>
>> This was done back when vendors were introduced in the network drivers tree.
>> The default of Y allowed older configurations to just work.
>
>And changing the defaults means all defconfigs must be updated first,
>else the user's configs will end up without drivers needed.
>

As I understand correctly, at least for most common net drivers, 
having NET_VENDOR_XYZ=y doesn't actually build anything, we have flags per
module for each vendor and those are defaulted to N.

>> So there was a reason, not sure if it matters anymore.
>> But it seems like useless repainting to change it now.
>
>It might make sense to tune some of the defaults (i.e. change to
>"default y if ARCH_*") for drivers with clear platform dependencies.
>

either set hard default to 'n' or just keep it as is, anything else is just
more confusion.

>Gr{oetje,eeting}s,
>
>                        Geert
>
>--
>Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
>
>In personal conversations with technical people, I call myself a hacker. But
>when I'm talking to journalists I just say "programmer" or something like that.
>                                -- Linus Torvalds
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
