Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EF8E04A6B05
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Feb 2022 05:46:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 197E060F96;
	Wed,  2 Feb 2022 04:46:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L-QeY-93mfQm; Wed,  2 Feb 2022 04:46:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 02C6960ADE;
	Wed,  2 Feb 2022 04:46:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CF8DB1BF380
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 04:46:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C5CB84021C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 04:46:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=nvidia.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RDGZJYvsub96 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Feb 2022 04:46:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-sn1anam02on2051.outbound.protection.outlook.com [40.107.96.51])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 367B240019
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 04:46:12 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CKJnHTJjEZb/j5Qc+nBEzbt/lRnaDGfriCSIwKBmPNA6m6k3krbSm9qx2ghKDJFKUmGBUXiQNOJpB8WDAVdxYRKpkgKGdcYF9V8cbg9gS3sdLqnUTEoBRyN5nkhmwn2NzJo+9ISw6tQzrus+ozD+HHiE4eW5aW/TSJg7nKhNPM6NnQeCOt4whGA03HNJxJnS96NHUoCITA589uoGnah2r5U1VtZYcEI0SMP9ZEam9zbIfb+yGnJO4qnVKjLIWxaSRvleMbxgPcj0rNOv4aY48oUjiZgbdWIzVClNniWthPtV8KSlN4OSdJVwyrM1iy6DOL5M1YVVwy0OA/w5mCZKkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cDo+M8duniDgzDmN33yWVCHGFx5DcZBRGZKNcnTVwUo=;
 b=iF6oQWi8QoaMpMvkB600hKLfTQB2C4v4K0WF5KAMh77jNvRaTXwT6AABSSdOtdglAreBKDdns0Fhg1pcPs7tpBzoIujQYN701obDLLcl0VsAGCdfd3Wm/zly8awg9z9k89Zsq/YMjCj2KdxFqp+Qc+uZi0WeTL+HGZW13Lrg5QaIOYVVe0teGG176fhcDWSLjzMy4ygGoxeiqJtL1z1C33U2qKeuP9MzRxRiaCaz2tyhJ/VQDA28C5T5EfFU0FFckk047qhly1RGq1fRkeHHh56PU+Bx3DjxlR8uEU+B8Mg3C8KKhW1drfF3+j+zG6HWK1TWKlaaYl+SO0D7mw04EQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cDo+M8duniDgzDmN33yWVCHGFx5DcZBRGZKNcnTVwUo=;
 b=E2h2WXSC4EsgFDSrcgj3zmVIsQUbS0YCiAaK7GI5NpInKuTmkRvHMFmLKnCucHtn1zW490WohUC0a20v28pcOCWbJjNomN+WuHpvmfmEz4F1TiY8HxXjCzM+7R4/bsZ3BXcPd/jksazb4jCd6TtaenFrmD6t6xRpLH0m30d32AmKIPvFprRbkFRfY2T93yuv5eejQ0dUtCjXQITP0xNWv7dJaEpEgJBvP4qHz+YmKS1IWZqX624ijhxovxpXHYCTVLfTE+/sp1a9j4vvItPK2PhULHdiOLoD6JgvVUpu/q/YNWMYJWf0YiRWJkxAWhRWxyOY/GlGGHnzJHDdunKvsQ==
Received: from DM5PR1201MB0234.namprd12.prod.outlook.com (2603:10b6:4:56::22)
 by CY4PR12MB1304.namprd12.prod.outlook.com (2603:10b6:903:41::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.12; Wed, 2 Feb
 2022 04:46:06 +0000
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from BY5PR12MB4209.namprd12.prod.outlook.com (2603:10b6:a03:20d::22)
 by DM5PR1201MB0234.namprd12.prod.outlook.com (2603:10b6:4:56::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.21; Wed, 2 Feb
 2022 04:46:04 +0000
Received: from BY5PR12MB4209.namprd12.prod.outlook.com
 ([fe80::35a1:8b68:d0f7:7496]) by BY5PR12MB4209.namprd12.prod.outlook.com
 ([fe80::35a1:8b68:d0f7:7496%4]) with mapi id 15.20.4951.012; Wed, 2 Feb 2022
 04:46:04 +0000
Date: Tue, 1 Feb 2022 20:46:03 -0800
From: Saeed Mahameed <saeedm@nvidia.com>
To: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <20220202044603.tuchbk72iujdyxi4@sx1>
References: <20220131172450.4905-1-saeed@kernel.org>
 <20220131095905.08722670@hermes.local>
 <CAMuHMdU17cBzivFm9q-VwF9EG5MX75Qct=is=F2h+Kc+VddZ4g@mail.gmail.com>
 <20220131183540.6ekn3z7tudy5ocdl@sx1>
 <30ed8220-e24d-4b40-c7a6-4b09c84f9a1f@gmail.com>
 <20220131121027.4fe3e8dc@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <7dc930c6-4ffc-0dd0-8385-d7956e7d16ff@gmail.com>
 <20220131151315.4ec5f2d3@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <dd1497ca-b1da-311a-e5fc-7c7265eb3ddf@gmail.com>
Content-Disposition: inline
In-Reply-To: <dd1497ca-b1da-311a-e5fc-7c7265eb3ddf@gmail.com>
X-ClientProxiedBy: SJ0PR03CA0181.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::6) To BY5PR12MB4209.namprd12.prod.outlook.com
 (2603:10b6:a03:20d::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0ebde5f5-cb61-4f5f-7423-08d9e606eb39
X-MS-TrafficTypeDiagnostic: DM5PR1201MB0234:EE_|CY4PR12MB1304:EE_
X-LD-Processed: 43083d15-7273-40c1-b7db-39efd9ccc17a,ExtAddr,ExtAddr
X-Microsoft-Antispam-PRVS: <DM5PR1201MB0234FE0709C571345BA7004EB3279@DM5PR1201MB0234.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9ecc360KYiYAKCsClQXujGhWwvbRxdbrQuMoR5Ncr+22gS/OMmOQw04CkYlFZKNlAAeyGaknwYSNUyb+Ixt4Hn+b6UmFcexMqvtVuqUurDMKuEb+/xC5RdKUENGJtS0xGsIp7RCrdZLhn/trZ4+uKWMMCV64LiMtIjz9WoZbNk+iUY/gFYpSGQRq4P1VlXYtnANxgTyO2uRU//I0s1RPYemNfeMjdK5+6MRsXjfgBIbXP3mlqj0RCZdadAW2p9V5cTNqI9qfI+Di6VAse++lsSllqK1ltErcnFRZhUHcgVaBFHaVxpfOGGn/8Mrn6RWub+NbqU8H1I3yGhz9AJ/phZDeh7/3JyMxXCitxUtnsmmpVQTE+8GWMYom1o7xp4rEKNPczmQ8/FeUsDc+wX1s3m45nftxoG912ZuSejEh0tMJMIzZFU2M7HVdZ4m7Mrx3+XYYCZ+0uTrs8FpBK5FvuDA4FaP9AVK/BIzVDifolgJQbVAGe8qnWphnDjfGFn3tZA8Ellv5CHWLCRRAWxppq2zj1QfE+A7xZOH+fmyzG3laJMnG5xgx08QfAm+KcQ7oXBkNUZpT989hXS+S3nZJwrvaq8ZEzjCnExN8eS+sgUwOjDKeqZm6j9nBbDhX/aKnrP+UyF9K60OXZbh1leZ5VPFFwNUHd6S/sdV3C8R5MUVJPsdLw+lWHsYO95EP7qj5hvmNRRX7yTv1xoFl/BnFnK1o6QlBBFZcwdy3smfY0EM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR1201MB0234.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(7916004)(366004)(83380400001)(186003)(1076003)(26005)(7336002)(5660300002)(7416002)(2906002)(7406005)(7366002)(6486002)(38350700002)(86362001)(54906003)(8676002)(4326008)(508600001)(6916009)(66556008)(66476007)(66946007)(33716001)(316002)(52116002)(8936002)(9686003)(38100700002)(6512007)(6506007)(129723003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qPpn9NtHv4YKwq76GEJtwBWiWDIOaj8cphrVBzqHvqcM7oaRQuRD8LDAR7MI?=
 =?us-ascii?Q?I2O+w54m9NeiaFIWYobRDZSvIwEm/R90EkKt+Z4H9hlqlFZee1oKpWkBl/De?=
 =?us-ascii?Q?UzNpIysuJirstZRJeuVK3QMjSCdI0bHiQMnAgJeao9IxDA7yi34g2MyGzhAg?=
 =?us-ascii?Q?92xWRLUfb5bLXas2juI6fkoFJKjbLTX0QcGjEAqBntDb8qQN87LZDEJuCcp/?=
 =?us-ascii?Q?AD6BmUfZZt0B2c4UA8lEdCcowIYf8BNl63jvBr9dJz7iSRzIBmB3Z8PxyOYu?=
 =?us-ascii?Q?tkQg9+ApNcnqspeA0TBqHC1EpxgiswKp0ZDZKWYOImsHU1b2JE9xLCxrXFgh?=
 =?us-ascii?Q?QUqVxrGriSjMeFpZsoAqYGA/i8cZ0W5CMwbo9jtVLl/DegEOE3jvhHkPdZPF?=
 =?us-ascii?Q?QotQ5CNg6cgmWTVJo2chJwGWKJ5VUJJLvZMmJG6B3MXg2VdBOHjWxThW72gU?=
 =?us-ascii?Q?uWv/hFDWtY7QJlvUrPMOYgA+XhEOSJy9rFl5TP4HIHBoeIHmUsTY6u8+xrmt?=
 =?us-ascii?Q?lStcfD2xFR/v/1SE4nSyqVTetrgbq/OBzLLoJBFu5a75DsF+tCvXXlFbMq8Q?=
 =?us-ascii?Q?SqY0TxzVBDv/RVEPhWeS08LZGukeIYm3+y5nliKSaeLZxyPuvfFNImVQM2M7?=
 =?us-ascii?Q?h5LG9FxmqCZBM2kj0Pjzgu7NAJTa8eoA+091LXm8yONKTSxGZXN+qvw1sPIJ?=
 =?us-ascii?Q?/7qQo4vstVDMbKvCynXttj3aHvHvN/dHgRdu2OGi1jKwByNLU3dt/3oAoUk8?=
 =?us-ascii?Q?pUn9iJmBP/kEBp3RHMwuU1i7jYuukjg0NrT75zSxFVxR51dwOuMB+x0g/hNV?=
 =?us-ascii?Q?Ka6zif+EJpkW4y7LRwKNflF3QEHB360frFsAeJ5ykE1HdmyjACSJ500uUyX0?=
 =?us-ascii?Q?3zd1XHKRESXVwz7A8OE785EfD680emYqgTgkAUUTx+MxAnjE2OIwPzuvGWNo?=
 =?us-ascii?Q?e/vwyc6uXO7XIupTyIMyQn1ImfBN3gHYOGWl7P07T9pf+gTGMrhRMbmEAjP4?=
 =?us-ascii?Q?vU/6meC5o7QhbfvfvorscDfXn59kUhU+JQn86ZXksUv32fcj3QchNI0JmN20?=
 =?us-ascii?Q?U+85MDQpm6g6g6C9Gf3dYhghhrjqUeRUyBdiIlHgKoxIY3rPTH47ePJWVExA?=
 =?us-ascii?Q?+ROcI2vznVuoSc1oTt4TgtFtC0vSc0zTq1gJSCKtU16gawNgk7cYEEVPKtQG?=
 =?us-ascii?Q?TzO0oBOd6+cguZ7Nc3cmnGz+13695PcJsJMvmTosS8YU4sL2eLGso1mTXOR+?=
 =?us-ascii?Q?R7ojvovxkrHwZptIZcwIZ/EJPCcjkM00FY6V24fMuSw3iDfdmcOyT7r9jCwF?=
 =?us-ascii?Q?30L33nRLLKLY/C7fXit3veJuAYjYBeg6f9wNTVOmEUn5E5cMdr7J5Jf829Q1?=
 =?us-ascii?Q?7UGAksNImqzSDppQn9vJ9YwxNBkkFSeIMqrKC6o2M2g6JM8O9b9dDcO0maTj?=
 =?us-ascii?Q?/Bmkwb8jcC+E++0GM99S7X+ZL7BSHC0yG6ijjw8oTa1eaX8ss9SGjP3VL/44?=
 =?us-ascii?Q?NG+UZ4f59ti9HtFS9gI0G0FLcIILlDBayJExesJT8M5s70fsx/HUGj33ZrDS?=
 =?us-ascii?Q?YlDYYPruNdecHMZBE4FxemUfjljH2pyCLe/cvLpeVOxliS2cASVODUCT2VvI?=
 =?us-ascii?Q?lFvMFui7ororOA90yiR5HO0=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ebde5f5-cb61-4f5f-7423-08d9e606eb39
X-MS-Exchange-CrossTenant-AuthSource: BY5PR12MB4209.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2022 04:46:04.1969 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7oJSbAfxmD0OlWe3xUiryamV7TIraJVyDFfYkzXkOaUnFnloh2ZEH5AI/tlLH/m2SHeKRvg0SsB2sjkdBpvAFA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR12MB1304
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
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 Geert Uytterhoeven <geert@linux-m68k.org>, linux-sunxi@lists.linux.dev,
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
 Rob Herring <robh@kernel.org>, Steen Hegelund <steen.hegelund@microchip.com>,
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

On 31 Jan 15:19, Florian Fainelli wrote:
>
>
>On 1/31/2022 3:13 PM, Jakub Kicinski wrote:
>>On Mon, 31 Jan 2022 15:06:01 -0800 Florian Fainelli wrote:
>>>>>Right, but once you start hiding NET_VENDOR_DRIVER_XYZ under a
>>>>>NET_VENDOR_XYZ Kconfig symbol dependency, if NET_VENDOR_XYZ is not set
>>>>>to Y, then you have no way to select NET_VENDOR_DRIVER_XYZ and so your
>>>>>old defconfig breaks.
>>>>
>>>>To be clear do we actually care about *old* configs or *def* configs?
>>>
>>>I think we care about oldconfig but maybe less so about defconfigs which
>>>are in tree and can be updated.
>>
>>The oldconfigs would have to not be updated on any intervening kernel
>>in the last 10+ years to break, right? Or is there another way that an
>>oldconfig would not have the vendor config set to y at this point?
>
>That sounds very unrealistic, so yes, I don't think at this point that 
>would happen. Even if you had your 15 year old .config file and ran 
>make oldconfig today, you would have some work to do to make sure it 
>still runs on your hardware.

I am getting mixed messages here, on one hand we know that this patch
might break some old or def configs, but on the other hand people claim
that they have to manually fixup their own configs every time 
"something in configs" changes and they are fine with that. 

Obviously I belong to the 2nd camp, hence this patch..

I can sum it up with "it's fine to controllably break *some* .configs for 
the greater good" .. that's my .2cent.

Thanks,
Saeed.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
