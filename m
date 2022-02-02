Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DF3834A6BB4
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Feb 2022 07:50:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 79FB94160B;
	Wed,  2 Feb 2022 06:50:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e8ojnV49q0_F; Wed,  2 Feb 2022 06:50:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3FA67404CC;
	Wed,  2 Feb 2022 06:50:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D5ED41BF3DA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 06:49:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C833440155
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 06:49:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=fail (2048-bit key) reason="fail (body has been altered)"
 header.d=nvidia.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xNCBSEXfRee3 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Feb 2022 06:49:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on20628.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7eaa::628])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 552AE40104
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Feb 2022 06:49:55 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LTA/YFSXrys/5eDRavYlEYC4g9rf2tn4XrDr/Sfw0oYxMN+QN0Zau5dEC4pJEAtAYPOECzr514npclsaI7+QFrdoqKF+WO/QxWdQ/kyiA6JadkCJ6jiwS4fWoQugAlRleyZfmWdeHDbUM5DuL/6NohY97hlwJJsD9HREyO6b33axYAAwunnPv51O4380S1LRTqjpHHeFPKX7QaL7ZboNU8CbzNIwZ8lLaVz0OzEre4R2v3w4C4vMxS88aRy0PujWTkicVD7bTvEgWwAjpAfV9yj5WgnfCczxVtBbsows611CpOd0WAUaOzWaKtc/k4Mjzl1nS84lbYpVIigbDIKqYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GFXT+/gESNZUhZ7pq0XwgUriprlUv8u6kH7zh9MUay4=;
 b=bTOI9s7DJr/GOcsVJLTbrSQzKHHOOGkT008SwjiQIh6Y8mnZ59xQcxnb377PWREQRgeMgsNOasrZt5xzanNPe+xXSoZOxdgkUtW2aBuPK5w9HpF7Dqlj3vVaHY1lil0R54STc6zFZuHBgnIQswbZI6v5y68dauK9j2kr4HZ+fagyBTOpa3Q0gEJ86gClXOxbYU2STmnRCdxSV2eMVw9DRmNA4xglcZFsfOYivy9zBX00GZzjD6F06TAibHfYwBw+52NNnBE6Q2Yhtutc/NykXvZ5dInb2y3QnVSqpVJpZszz60fIziH7MTGKYW51X+akCuaVK78KPmbXAtbEg84J9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GFXT+/gESNZUhZ7pq0XwgUriprlUv8u6kH7zh9MUay4=;
 b=JcpZpgUTpGvxTrBI7LBnddrLu4wZIYyEyPtWrm8Wzn7FJE9KUO3zNsKuRw52gcXA2P1j9pwI19eGBVenG4KZumsUHJ2QEHHuwKPNjZiXpvvTaCZI23pUGoBJ+RI7CCuynNA+fhpvvCYPKY7ase1dMO+aYM6Rl88zLIBko0nmry/hHQOlzJFYMagT1HOWeDXS6PzNEEE1saABSaVMeewXlV8Q0AUbOV3mXHrVjvylvuvgig7ETaejwB4fdvZVtuaFTh3ujOSrkfMO9/0SwoRHZI9tP+9Lc+9cYioAxnXeqdRpg4Pa2jDbv1xk4LGpX6at+WB06Qp3DX3ahMmDZ9+fVg==
Received: from DM5PR12MB1929.namprd12.prod.outlook.com (2603:10b6:3:106::9) by
 DM6PR12MB3452.namprd12.prod.outlook.com (2603:10b6:5:115::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4930.15; Wed, 2 Feb 2022 06:49:53 +0000
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from BY5PR12MB4209.namprd12.prod.outlook.com (2603:10b6:a03:20d::22)
 by DM5PR12MB1929.namprd12.prod.outlook.com (2603:10b6:3:106::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.18; Wed, 2 Feb
 2022 06:49:52 +0000
Received: from BY5PR12MB4209.namprd12.prod.outlook.com
 ([fe80::35a1:8b68:d0f7:7496]) by BY5PR12MB4209.namprd12.prod.outlook.com
 ([fe80::35a1:8b68:d0f7:7496%4]) with mapi id 15.20.4951.012; Wed, 2 Feb 2022
 06:49:52 +0000
Date: Tue, 1 Feb 2022 22:49:50 -0800
From: Saeed Mahameed <saeedm@nvidia.com>
To: Christophe Leroy <christophe.leroy@csgroup.eu>
Message-ID: <20220202064950.qyomo7ns27mbedds@sx1>
References: <20220131183540.6ekn3z7tudy5ocdl@sx1>
 <30ed8220-e24d-4b40-c7a6-4b09c84f9a1f@gmail.com>
 <20220131121027.4fe3e8dc@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <7dc930c6-4ffc-0dd0-8385-d7956e7d16ff@gmail.com>
 <20220131151315.4ec5f2d3@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <dd1497ca-b1da-311a-e5fc-7c7265eb3ddf@gmail.com>
 <20220202044603.tuchbk72iujdyxi4@sx1>
 <20220201205818.2f28cfe5@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20220202051609.h55eto4rdbfhw5t7@sx1>
 <8566b1e3-2c99-1e63-5606-aad8525a5378@csgroup.eu>
Content-Disposition: inline
In-Reply-To: <8566b1e3-2c99-1e63-5606-aad8525a5378@csgroup.eu>
X-ClientProxiedBy: BYAPR11CA0048.namprd11.prod.outlook.com
 (2603:10b6:a03:80::25) To BY5PR12MB4209.namprd12.prod.outlook.com
 (2603:10b6:a03:20d::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 81d23b3f-5eb9-484e-2bee-08d9e6183657
X-MS-TrafficTypeDiagnostic: DM5PR12MB1929:EE_|DM6PR12MB3452:EE_
X-LD-Processed: 43083d15-7273-40c1-b7db-39efd9ccc17a,ExtAddr,ExtAddr
X-Microsoft-Antispam-PRVS: <DM5PR12MB1929F40A6E0910E1712013DCB3279@DM5PR12MB1929.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 04A8FsQr7hi5PcRuKdamjVGpytf4ExszHVhapvVnyoL2SppTVQ3J7F0JMVnxxMHjvVXtpvZuWKOsWxHXePfoyQZJ48QKBr2fmo85coiAM/wWE9Mhbn/tDlt4yYdWyjwHbkTErk38rQqYf7wTexQy0wyGzAyJCROH1TQWfI54n14RczVQDwUs8a3KNpOVAIi9sZlpCOw5o5bPS4F6YEI07R+E+ILfsTFJCIQSSIIBzUVVJppmlastGreQWeCmT/q/MZqepjcZ+oufGBOIy+IT9kSKuogzSytKxPjMU0Z3WG+kD5U13yKzRTrVBd9ReVOHt7fH7nibQ0UT30yIm8cnBsJIX4mfdnW3ihyUieilsZ9AccwJyOrvgJOElR6amtKA+0P7UrO0er9ThysxE2QoqkNFPPuk2c9/oPoxuZ+x9hIsVsOkylgozLIOZVU4JfPZI4Sdg0nNXqiU8ams/j3g6C50jKfOr0lXx4a4Kzd5cT7wkjbOwaPYbeIofEYG8wkmkCtAziut9ks98ZhfryMMcXkZ9F6zWNrIDfE+JJm+xX9q+Vvq783p2coLv25GqGa5fTOwZ2u6j9yvhtV31r0e/pyPqFXLqMYPECDxt3th8nVswdcAakiPtu0ODIt8wJutduJSMYI6aTqJ8dPMpyXMg6op+IH2Op4ceZVU0dUX/VY4Iv3IBb35AVAZAugx5Oz7ZCO6yNQ/nSW4bnI8vZ3L6x2kZcMKF+3l5ppnyeDPy9M=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR12MB1929.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(7916004)(4636009)(366004)(7406005)(7366002)(8676002)(2906002)(6486002)(4326008)(7336002)(9686003)(508600001)(86362001)(7416002)(52116002)(5660300002)(6506007)(8936002)(6512007)(33716001)(66574015)(186003)(54906003)(6916009)(1076003)(26005)(316002)(38350700002)(38100700002)(83380400001)(66946007)(66476007)(66556008)(129723003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?EX1QM8mmA673IvyjYiOLfUR7P8nLW7gWlFT6+tcEccuI0gC/cV54RX1Ynm?=
 =?iso-8859-1?Q?tAa/d0NkRUIqO7Per8M85RlUXLJXFZ1bIZg1SkkHh8I002OZN8LW5t5Wgv?=
 =?iso-8859-1?Q?GqSJw3v3++2OZ/yxAMBiV0GQXkk8QUKIRx7m/WLGWw+F4ibj4ar5ymyxkJ?=
 =?iso-8859-1?Q?nZT0RCNH1RiywVn3afP5Ii5qX0EqRaFKEPafovOMcsfMYehy8ziJOG08NU?=
 =?iso-8859-1?Q?KGYQ7V8mCSf/N2dCP+Y9JgY8GuUp1HzRhL5jcWZXRKuRSKK6rbdiM0fsWm?=
 =?iso-8859-1?Q?KyOlyBZ6q+/zrF0KbV6nlrhGrFHdFGXtIarIvuZoBQ4m3lnlvtiNHft3+e?=
 =?iso-8859-1?Q?EN3l0nBjMn1luLKrI1IZKXm3owQregTCOf12G2eE9h+CjaL7Reyir6DV56?=
 =?iso-8859-1?Q?S//mbX1q8RvN7zDNp0jO/odw2wJRb70ErDFmUeX6sVRCRaQ2tPMLQJBnRe?=
 =?iso-8859-1?Q?jTsR+FOiFO39kRZIIVtIyt4L7VBAyF1ajRba6DGKP6Dmtmmng4GgRyHVj5?=
 =?iso-8859-1?Q?KGrBAvmw/Vd7OaMqmhrWRdF6mlBiczDN7XpTmjDqIqm2l92iKZZkg9PhrL?=
 =?iso-8859-1?Q?Dj83/Uts4/LusD0+CHB8OReCpPJumqitnNtymQlSEa6O41kJg1m5XqZPxK?=
 =?iso-8859-1?Q?9ffC7B+wXR72PZJxAw86LXFAwAE75eqF/P4jFQsFP9Uw8f27FvjlTN+/XO?=
 =?iso-8859-1?Q?v6yPQQeJUnHM1RAdYHgWmlnwylC0FrmCuKl0tFnwkYpDqcSfaPZtvbxPUM?=
 =?iso-8859-1?Q?4ZHupqY99s/Wl/eMoZlBSzk53+1y9L6M2ZJD0Ni9c/7/HHKjDRboHv+IRy?=
 =?iso-8859-1?Q?il6lwUvtUu8bywX5rIyq7lii07oTO8HkZwt6XPZEK/kXom6eVwr43yze+b?=
 =?iso-8859-1?Q?ptAh60WlEwxcXHtXUQ7pMujzokJ5IByNpXJ9OH8tfSpVjFtTObbUYWOlmX?=
 =?iso-8859-1?Q?XAK3zQqFSajbhC5NskOBFSoVsayD4W0PP20E1otdoj+mufzoA55av/lEFf?=
 =?iso-8859-1?Q?iWzIFKzrhU+c388ENMxO6fC+lUX2ZBnr8b4d5BjJOr5SSPrcLL44rwZqaE?=
 =?iso-8859-1?Q?P0EIbj+AyrEtwSHmhefQOlpUDSU1EBfsXf95vqwI3zxzP/bYJOvE6Q2Tad?=
 =?iso-8859-1?Q?a+bRSlcmGi5I31ocjauP6LdnF7IEqG03knQjqedVuBdWtrua8WpWnCi9Ny?=
 =?iso-8859-1?Q?Il4ZHpTVYDeTn+tEdrDEXKiuIcTVDvTLEfgsAUqH2wrK0VBG9Lo+4Xo2DQ?=
 =?iso-8859-1?Q?mUNlfoNyylaBca8rf1X5mHd+EE8yg2JUs3JWUFvupdxKsJauBmhEX+3MxS?=
 =?iso-8859-1?Q?CgexqgPhGTB40f3Oro5fKA+XYY+NxD3EmFSV5HyqSpylN+T3bMXam0VT5R?=
 =?iso-8859-1?Q?cxyhDqQhccpbRS2XObU5TVGi+HE3eT4yvAdvlKxEg9IKIfvBae+z5CBp+J?=
 =?iso-8859-1?Q?H51fbdIkaG81hmTDzAW4mf5vkn3xORmD421MmUtzt/RfVkr4Kcc6oO77ae?=
 =?iso-8859-1?Q?N/9ixdwHwk7yQln3vOfKRKE2a4dayohm+N0hjZtU2GWe1oMHPyk9VWapVY?=
 =?iso-8859-1?Q?a3IoiCTbocNK4+bfcxPCCmS2bGLJJpqbgQEc6gDHDGSCkpi1L0aIICvtDW?=
 =?iso-8859-1?Q?B+zL9xVRoZRrbwTCNUC/PWHYA/KAK1g9kuL7LB3Q5a6Bk/+74HE7qNptRR?=
 =?iso-8859-1?Q?OfFe4WH+dqdhLZ/nJac=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 81d23b3f-5eb9-484e-2bee-08d9e6183657
X-MS-Exchange-CrossTenant-AuthSource: BY5PR12MB4209.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2022 06:49:51.7890 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zPbmj38dTZpj6YhIQfTal0N+P3/2aL5qdXdLkDAicryCTGJ6AzsTzn4dZaOIolJLcv0hv9FpXPHiFmwg6518gw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB3452
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
 Linus Walleij <linus.walleij@linaro.org>,
 "rafal@milecki.pl" <rafal@milecki.pl>,
 Horatiu Vultur <horatiu.vultur@microchip.com>,
 Andy Gospodarek <andy@greyhouse.net>, Edwin Peer <edwin.peer@broadcom.com>,
 Wei Liu <wei.liu@kernel.org>, Michal Simek <michal.simek@xilinx.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 "linux-sunxi@lists.linux.dev" <linux-sunxi@lists.linux.dev>,
 Jiri Pirko <jiri@resnulli.us>,
 "l.stelmach@samsung.com" <l.stelmach@samsung.com>,
 Shay Agroskin <shayagr@amazon.com>, Randy Dunlap <rdunlap@infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jon Mason <jdmason@kudzu.us>, Shannon Nelson <snelson@pensando.io>,
 Claudiu Beznea <claudiu.beznea@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Chris Snook <chris.snook@gmail.com>, Zhu Yanjun <zyjzyj2000@gmail.com>,
 Arthur Kiyanovski <akiyano@amazon.com>, Stefan Wahren <stefan.wahren@i2se.com>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>, Gabriel Somlo <gsomlo@gmail.com>,
 Rain River <rain.1986.08.12@gmail.com>,
 Martin Habets <habetsm.xilinx@gmail.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>, Jose Abreu <Jose.Abreu@synopsys.com>,
 Shai Malin <smalin@marvell.com>, Maxime Ripard <mripard@kernel.org>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 "drivers@pensando.io" <drivers@pensando.io>,
 Omkar Kulkarni <okulkarni@marvell.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Vegard Nossum <vegard.nossum@oracle.com>, David Arinzon <darinzon@amazon.com>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Catherine Sullivan <csully@google.com>,
 "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 "oss-drivers@corigine.com" <oss-drivers@corigine.com>,
 Noam Dagan <ndagan@amazon.com>, Rob Herring <robh@kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
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
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Prabhakar Kushwaha <pkushwaha@marvell.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Richard Cochran <richardcochran@gmail.com>, Marcin Wojtas <mw@semihalf.com>,
 David Thompson <davthompson@nvidia.com>,
 Lars Povlsen <lars.povlsen@microchip.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Stephen Hemminger <stephen@networkplumber.org>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 02 Feb 06:30, Christophe Leroy wrote:
>
>
>Le 02/02/2022 =E0 06:16, Saeed Mahameed a =E9crit=A0:
>> On 01 Feb 20:58, Jakub Kicinski wrote:
>>> On Tue, 1 Feb 2022 20:46:03 -0800 Saeed Mahameed wrote:
>>>> I am getting mixed messages here, on one hand we know that this patch
>>>> might break some old or def configs, but on the other hand people claim
>>>> that they have to manually fixup their own configs every time
>>>> "something in configs" changes and they are fine with that.
>>>>
>>>> Obviously I belong to the 2nd camp, hence this patch..
>>>>
>>>> I can sum it up with "it's fine to controllably break *some* .configs
>>>> for
>>>> the greater good" .. that's my .2cent.
>>>
>>> I think we agree that we don't care about oldconfigs IOW someone's
>>> random config.
>>>
>>> But we do care about defconfigs in the tree, if those indeed include
>>> ethernet drivers which would get masked out by vendor=3Dn - they need
>>> fixin':
>>>
>>> $ find arch/ | grep defconfig
>>> arch/x86/configs/i386_defconfig
>>> arch/x86/configs/x86_64_defconfig
>>> arch/ia64/configs/generic_defconfig
>>> arch/ia64/configs/gensparse_defconfig
>>> ...
>>>
>>> First one from the top:
>>>
>>> $ make O=3Dbuild_tmp/ i386_defconfig
>>> $ $EDITOR drivers/net/ethernet/intel/Kconfig
>>> $ git diff
>>> diff --git a/drivers/net/ethernet/intel/Kconfig
>>> b/drivers/net/ethernet/intel/Kconfig
>>> index 3facb55b7161..b9fdf2a835b0 100644
>>> --- a/drivers/net/ethernet/intel/Kconfig
>>> +++ b/drivers/net/ethernet/intel/Kconfig
>>> @@ -5,7 +5,6 @@
>>>
>>> config NET_VENDOR_INTEL
>>> =A0=A0=A0=A0=A0=A0 bool "Intel devices"
>>> -=A0=A0=A0=A0=A0=A0 default y
>>> =A0=A0=A0=A0=A0=A0 help
>>> =A0=A0=A0=A0=A0=A0=A0=A0 If you have a network (Ethernet) card belongin=
g to this
>>> class, say Y.
>>>
>>> $ make O=3Dbuild_tmp/ i386_defconfig
>>> $ diff -urpb build_tmp/.config.old build_tmp/.config
>>> --- build_tmp/.config.old=A0=A0=A0 2022-02-01 20:55:37.087373905 -0800
>>> +++ build_tmp/.config=A0=A0=A0 2022-02-01 20:56:32.126044628 -0800
>>> @@ -1784,22 +1784,7 @@ CONFIG_NET_VENDOR_GOOGLE=3Dy
>>> # CONFIG_GVE is not set
>>> CONFIG_NET_VENDOR_HUAWEI=3Dy
>>> # CONFIG_HINIC is not set
>>> -CONFIG_NET_VENDOR_I825XX=3Dy
>>> -CONFIG_NET_VENDOR_INTEL=3Dy
>>> -CONFIG_E100=3Dy
>>> -CONFIG_E1000=3Dy
>>> -CONFIG_E1000E=3Dy
>>> -CONFIG_E1000E_HWTS=3Dy
>>> -# CONFIG_IGB is not set
>>> -# CONFIG_IGBVF is not set
>>> -# CONFIG_IXGB is not set
>>> -# CONFIG_IXGBE is not set
>>> -# CONFIG_IXGBEVF is not set
>>> -# CONFIG_I40E is not set
>>> -# CONFIG_I40EVF is not set
>>> -# CONFIG_ICE is not set
>>> -# CONFIG_FM10K is not set
>>> -# CONFIG_IGC is not set
>>> +# CONFIG_NET_VENDOR_INTEL is not set
>>
>> We can introduce CONFIG_NET_LEGACY_VENDOR that selects all current vendo=
rs.
>> it will be off by default but will be added where needed in the defconfi=
gs
>

Sorry I think i messed up my previous reply, here it's again just in case.

>Why such a hack ?
>

Reduced chance of error.

>I think we can fix all defconfig with some scripting, all you have to do
>it to add the relevant CONFIG_NET_VENDOR_SOMEONE=3Dy wherever you find one
>of its boards in the defconfig.
>

Such a script could easily mess up!
I can't think of a clever easily verifiable way to map boards to their VEND=
ORS.
Add to that dispersing the VENDORS configs accurately.

I might be just tired though, i will give it a shot in the morning :)

>Christophe
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
