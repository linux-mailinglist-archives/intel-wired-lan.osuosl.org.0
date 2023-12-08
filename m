Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A7C380A8E2
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Dec 2023 17:28:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E5F6183E11;
	Fri,  8 Dec 2023 16:28:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E5F6183E11
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702052888;
	bh=UAQlGoa6E79QOKIcA5olmOjztIjKv6J05+TPIwYL3h8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9Pmn9fCwxIaR18XenVgg4W4UWwMuGN+7bVci/74WnZgCvrKjpWmKvyG8priDJa8eL
	 JWMk+aINqIgYwgNjVhJDTK09kt3mA0CJJxzmPCvcp2OUZlCCbS1po3PcaifeRWF9zO
	 nL0HgYQXJO+98lYbrJOqDSSmHnHeMkttfbdyXwrTAzka8dIa44mWU9Aqv1kLD6HaMb
	 ES50VFuG300J5EEvDI9M5+vNrIZYnMe/nAGHkaSjVRvvlwaPcPU7tGytncEUdW7VCl
	 G9lVQdPLkNOeKoZ/z7/xF3PQ2o3I2l9F5I2H5PYssplhj1ThV/G/Cf7YGmjz42hlTR
	 zjbc+4JHXxUKA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wwmh8ABnZBS8; Fri,  8 Dec 2023 16:28:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A19CD83E01;
	Fri,  8 Dec 2023 16:28:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A19CD83E01
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DD38D1BF841
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 06:33:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AACFD6F504
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 06:33:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AACFD6F504
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q50vdeFQc6Ge for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Dec 2023 06:33:56 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2101.outbound.protection.outlook.com [40.107.244.101])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EAF0460E6A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 06:33:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EAF0460E6A
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kNyjEfwrfVzzWyMiGHbwnZEch1Wgg426EZ7zXG8W7ZytWT45XcTNtO2X6YFGD8BD2CEia0pVuGv1Tis/ScLKGvmVSSxMqq/AUxD3GjOTygvLGBDoPZ32KEGapHoW1DDIghdvcyaVZVC/s8wLjJHnwH2wKu3FruX+MK9mcXIJU/a0xOxhLDy3KNtMKpaIxv2kW+ERU/syTebgYofEjKK6iAiyeZe0Ilgogdk6C33caW053ZxCVIqjyDNzjJ0MX2rO1hUfurxzIi3e4N/ohTAI8D1At+u4kdLFrYX97T9sBYf0fcSfhsve5vrgxFCsIh8G57E2oLAqffD+Jf59syjSNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2BpRnQ9Poa/RzGqVi78BfpPiBjbMH29PWk0HOiuGvyk=;
 b=SKKhcMrx8hknqtt1YFS9Wp2frGd59esjRcXKILVcL/dRWZ95T2WlDnShFFD+KVE888tjAXKNlFan/iUjp3QtnFtVrngUdYd0ljJqbCvwcX4+n1TDeMkf7NddquSFxqezFLNTXRXBIl3VgIa+fpQd9mnTPKOSF5406WHwPWzBjKpJI+YeCTWwUQDu8Hd+UpCYfJUf90htu05KkbNZq2SayDV9KEVw1Kg/SqfhSZxnvOjr9zClQAF9JcEpa7g05iaSQAG2IsS+xuTR5gseHQWwWUOyA1y2CprctFTGjPLgWCz6RdlTS9c0w4pgiR5oWSN5WdVWZOJOHmEQNgTXt9zXYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from BL0PR13MB4403.namprd13.prod.outlook.com (2603:10b6:208:1c4::8)
 by CH2PR13MB4441.namprd13.prod.outlook.com (2603:10b6:610:63::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.27; Fri, 8 Dec
 2023 06:33:51 +0000
Received: from BL0PR13MB4403.namprd13.prod.outlook.com
 ([fe80::d3c0:fa39:cb9e:a536]) by BL0PR13MB4403.namprd13.prod.outlook.com
 ([fe80::d3c0:fa39:cb9e:a536%7]) with mapi id 15.20.7068.027; Fri, 8 Dec 2023
 06:33:51 +0000
Date: Fri, 8 Dec 2023 08:33:22 +0200
From: Louis Peens <louis.peens@corigine.com>
To: justinstitt@google.com
Message-ID: <ZXK4sgtuvJQswZLS@LouisNoVo>
References: <20231206-ethtool_puts_impl-v5-0-5a2528e17bf8@google.com>
 <20231206-ethtool_puts_impl-v5-3-5a2528e17bf8@google.com>
Content-Disposition: inline
In-Reply-To: <20231206-ethtool_puts_impl-v5-3-5a2528e17bf8@google.com>
X-ClientProxiedBy: JNXP275CA0006.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:19::18)
 To BL0PR13MB4403.namprd13.prod.outlook.com
 (2603:10b6:208:1c4::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL0PR13MB4403:EE_|CH2PR13MB4441:EE_
X-MS-Office365-Filtering-Correlation-Id: a3856e89-e3a1-4b75-93f5-08dbf7b7a43b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yIFntbk6hUTgtpQrUXivOS4RpMua6e5qJRyINcjhdI8UmoFDQoy3EsFnKbiQXy/0x2B+GyNhPRLPmS+uLnld/qpJB0tty0qHYA2BuamxIgPORzXlGxGb8QmFajNTq9oRYFcvv4voBIqgGubBILDPjPdYWYgOcOGLVmV8y+SV8X6NcbQb7fxjjP0VqH+QhmWmIqO74rKjlkCEo2VwPTwn2e1eN/PzxU0OX0yXNd3IXxq5nCzEdKp9RSiem8hvVZ3/08dB0H8HbNKpBrac7Dv+YEzVlMCqDfOZxA/12svqpIvwYWe1qCV14AuqRzd3qhxLVclFJfLjKD14zkmvQGp+xXnV2+xPDFBCVUovQVHN2jPtBPIz4yYhlRouo9+yAO5YyHnCQeVFftu5C44i3iK46L8Ign7MzpQzW8oGdED4Xb9VU/S2Sks0vVRyS1zwj3//2PH0wPjyOmq8QpQUjSlKrJYqEYc4b9TIBMTmj1D5EabB44lLGzyb+PbX62/gt9Y/1OxTG9V1qD3daQMYzRNVKmjYYtniMds4rU1G6BPwsSyVp03WWQsCUL+zYv0p0Iqg7LyekByvPgEgCg5uYTFGuBDxscRRu/pSC/YOjvAv1CM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR13MB4403.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(39830400003)(136003)(396003)(376002)(346002)(366004)(230922051799003)(186009)(64100799003)(451199024)(1800799012)(7406005)(7366002)(5660300002)(2906002)(7416002)(33716001)(41300700001)(38100700002)(54906003)(66476007)(66946007)(66556008)(86362001)(478600001)(26005)(9686003)(6666004)(6506007)(6512007)(44832011)(8936002)(6486002)(316002)(8676002)(4326008)(6916009);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?pXSkISbapldWkEeeOByjOSen4muvzaGMpXGK6LHhGjpOia8WKOdmxo7T/DoP?=
 =?us-ascii?Q?jPC9dUDjOq/M8Gvj8n5okhY7M3RCzWsTmo/N40O7hpwJPemV+uCM/NlsYKqa?=
 =?us-ascii?Q?Aqz4a93S7BI/Qe+AHtKQtFXAHpjcGFJ3jAuYmQaCkgV/aK5uo48FHj4rURfo?=
 =?us-ascii?Q?Thka1J14/AIXNuWs0spcnOf1xg1KtH2zLLm/K93+q77q654KfRQ/C/vGeu3h?=
 =?us-ascii?Q?6azzHjAyTN+EWonpuvT6BOQ2uUQWfcRbSNJ5/wnjFfRXskt4qsIErlWxkMT0?=
 =?us-ascii?Q?ML/II9vl6OdyrFglO9mmY3ibFGVV0SYdzcwBXpsami1tAxR6XzhH+ka+qg+x?=
 =?us-ascii?Q?AEbOY98BG5kmCVFaYyxl4CzJavtGmxrglqrNhb3KcorufYrWe7xblKg2cHod?=
 =?us-ascii?Q?+RWdjjdy9nRVGlAanwVjSYo0mKx+9ZUUcf5+PKwJk6fjnzOjWQiHZ4FTXJls?=
 =?us-ascii?Q?GDhzErXU8BOm2ih8F1uxoLCWh9078LCml6UZQEacbICmxQzZIlLN0BtkDtyo?=
 =?us-ascii?Q?aBCe/U7DaC+WDAf0LBlmXEeRQHk+Jvxm47h4fp0AFX2dlRZZvhlGknlHQJm0?=
 =?us-ascii?Q?xHgVjwqEQeCHioGgxS3q58gH1/HjFaA3+qvnS58sEzAL/Sxgi04i3YcdHT/s?=
 =?us-ascii?Q?CQpEtvAIrbe1dyaA+dPwfbHF+wqLAkaFeszAbb73Yj0WQ0nvJCs5rLFnd1Cz?=
 =?us-ascii?Q?iTwuZAn66uTeq9sGpF1kk5lxQPXaA1LHYpkXY/bHEISPrJL4ACFTgtyAX2AA?=
 =?us-ascii?Q?BA5Hu/n7yy07Xfp9FaFjinsrFerTenET/uWG7ogPgM/3CWPTUsn+Y9MjY4Bd?=
 =?us-ascii?Q?Bampa2FGf3uU8xf33iVOsP3dh57qzmdNMeDzA9LJXjQDak4F47j4sDk8stVo?=
 =?us-ascii?Q?vFtaGJCn8QLKjeLUFJNj/cNWNWJ0EGClE0hL9f0oMwwxCnvaqU9TMa3SrvOW?=
 =?us-ascii?Q?7bIYJr4o9/nwweQkZb6fCx+Cxz9hbYUG9wL+XRGOfc/LP03LHkApCT9bu3bU?=
 =?us-ascii?Q?a6YrOptNPMptX12sZSdPi2LfnnNERag+9qAUi+L+trl1EPNPbOf1uAHgZFaq?=
 =?us-ascii?Q?DKfh5HMAT5Jy0KrY4621r/mWuq1rJ1llB2KW2qRC4Ps3me/6nVUyp+bxj1DO?=
 =?us-ascii?Q?jLFPzx0UjrP3BIB1zbsMSBWDE6B/NzP7PR98n5K4ah2Y8bGP+CWOMy/JweDl?=
 =?us-ascii?Q?B9aTbYxjyMW6luAost2YVeT3d01yac9OzuFkdO0hynnKZBnr2/Z8qCB09WKD?=
 =?us-ascii?Q?h1upqrKydvKnXCCS8JKkTG+PFSaa2pxFg5HcGY6z5ISgsePLZzAGfGXt+x7Z?=
 =?us-ascii?Q?KlwMHo4q2+Zr7ow+7HmpzpLsED9jF2p4eg5FrFG6NL5WdlL88wqOmUfJq1HM?=
 =?us-ascii?Q?c2AVUo0EGUIyaPra5zWjRtbsaHNnG0s7TqF+MNZa+FH4Svsk36Z6oSJJ+mlq?=
 =?us-ascii?Q?pivnYAE0qnbNj7mlLWtppdBIM5ab7zsxnB5Grq9N9YdYjAvStuH/yYM9fVu2?=
 =?us-ascii?Q?5OLVt+wGAZd13O3aNqqW8x8E9ekRRhyTzSiEvBgr9lmBM6a8sjeykI8/WcVh?=
 =?us-ascii?Q?LgakatkK5SNeXYaF2TgZmZKlFu/bULqRPP1tx2QJyd4UFcORzlbgugGHm/6Y?=
 =?us-ascii?Q?Jw=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a3856e89-e3a1-4b75-93f5-08dbf7b7a43b
X-MS-Exchange-CrossTenant-AuthSource: BL0PR13MB4403.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Dec 2023 06:33:51.3116 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gg7+wXqMBe7GS4Wloe1D/ZTGQRYAftgP4ikH7cbV9RnOrwk1VhOgZX7tnbgX8S8W61pRsbEnkedQ3DP2zSGcqwibuTuaDONejFCfNtkJm5U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB4441
X-Mailman-Approved-At: Fri, 08 Dec 2023 16:27:53 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2BpRnQ9Poa/RzGqVi78BfpPiBjbMH29PWk0HOiuGvyk=;
 b=UAIWCdMRf58z52FiqIoauBLeM6b8CPclEG8ypMl0YrKToeVQdAGQti7gb6kBH5xU4J4OBSbqoSJaDZS2BWjuJFszYoE7UHZ8UTqi2Le8EgzBngYOQq4II5dn34vUCrsOjHvRhAxSiwvwBqv1KPsgxcsW4UBgNF5I6kpR19q9QE8=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=UAIWCdMR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 3/3] net: Convert some
 ethtool_sprintf() to ethtool_puts()
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
Cc: Andrew Lunn <andrew@lunn.ch>, linux-hyperv@vger.kernel.org,
 Brett Creeley <brett.creeley@amd.com>, Ronak Doshi <doshir@vmware.com>,
 VMware PV-Drivers Reviewers <pv-drivers@vmware.com>,
 John Fastabend <john.fastabend@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>, Alexei Starovoitov <ast@kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 Matthias Brugger <matthias.bgg@gmail.com>, Eric Dumazet <edumazet@google.com>,
 Vladimir Oltean <olteanv@gmail.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Mengyuan Lou <mengyuanlou@net-swift.com>, netdev@vger.kernel.org,
 Arthur Kiyanovski <akiyano@amazon.com>, linux-kernel@vger.kernel.org,
 Jesper Dangaard Brouer <hawk@kernel.org>, Wei Liu <wei.liu@kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Steen Hegelund <Steen.Hegelund@microchip.com>,
 Dexuan Cui <decui@microsoft.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, Noam Dagan <ndagan@amazon.com>,
 Heiner Kallweit <hkallweit1@gmail.com>, Shenwei Wang <shenwei.wang@nxp.com>,
 Clark Wang <xiaoning.wang@nxp.com>, NXP Linux Team <linux-imx@nxp.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>, Landen Chao <Landen.Chao@mediatek.com>,
 Shay Agroskin <shayagr@amazon.com>,
 Daniel Machon <daniel.machon@microchip.com>,
 Alvin =?utf-8?Q?=C5=A0ipraga?= <alsi@bang-olufsen.dk>,
 Hauke Mehrtens <hauke@hauke-m.de>, Haiyang Zhang <haiyangz@microsoft.com>,
 Sean Wang <sean.wang@mediatek.com>, Nathan Chancellor <nathan@kernel.org>,
 Joe Perches <joe@perches.com>, Jiawen Wu <jiawenwu@trustnetic.com>,
 Wei Fang <wei.fang@nxp.com>, Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 Andy Whitcroft <apw@canonical.com>, drivers@pensando.io,
 intel-wired-lan@lists.osuosl.org, Lars Povlsen <lars.povlsen@microchip.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 linux-arm-kernel@lists.infradead.org, Salil Mehta <salil.mehta@huawei.com>,
 GR-Linux-NIC-Dev@marvell.com, DENG Qingfang <dqfext@gmail.com>,
 Kees Cook <keescook@chromium.org>,
 =?utf-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>,
 Rasesh Mody <rmody@marvell.com>, David Arinzon <darinzon@amazon.com>,
 oss-drivers@corigine.com, Nick Desaulniers <ndesaulniers@google.com>,
 Daniel Golle <daniel@makrotopia.org>, "David S. Miller" <davem@davemloft.net>,
 Dwaipayan Ray <dwaipayanray1@gmail.com>, Saeed Bishara <saeedb@amazon.com>,
 linux-mediatek@lists.infradead.org, bpf@vger.kernel.org,
 Dimitris Michailidis <dmichail@fungible.com>,
 Sudarsana Kalluru <skalluru@marvell.com>, UNGLinuxDriver@microchip.com,
 Shannon Nelson <shannon.nelson@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Dec 06, 2023 at 11:16:12PM +0000, justinstitt@google.com wrote:
> This patch converts some basic cases of ethtool_sprintf() to
> ethtool_puts().
> 
> The conversions are used in cases where ethtool_sprintf() was being used
> with just two arguments:
> |       ethtool_sprintf(&data, buffer[i].name);
> or when it's used with format string: "%s"
> |       ethtool_sprintf(&data, "%s", buffer[i].name);
> which both now become:
> |       ethtool_puts(&data, buffer[i].name);
> 
> Signed-off-by: Justin Stitt <justinstitt@google.com>
> ---
>  drivers/net/dsa/lantiq_gswip.c                     |  2 +-
>  drivers/net/dsa/mt7530.c                           |  2 +-
>  drivers/net/dsa/qca/qca8k-common.c                 |  2 +-
>  drivers/net/dsa/realtek/rtl8365mb.c                |  2 +-
>  drivers/net/dsa/realtek/rtl8366-core.c             |  2 +-
>  drivers/net/dsa/vitesse-vsc73xx-core.c             |  8 +--
>  drivers/net/ethernet/amazon/ena/ena_ethtool.c      |  4 +-
>  drivers/net/ethernet/brocade/bna/bnad_ethtool.c    |  2 +-
>  drivers/net/ethernet/freescale/fec_main.c          |  4 +-
>  .../net/ethernet/fungible/funeth/funeth_ethtool.c  |  8 +--
>  drivers/net/ethernet/hisilicon/hns/hns_dsaf_gmac.c |  2 +-
>  .../net/ethernet/hisilicon/hns/hns_dsaf_xgmac.c    |  2 +-
>  drivers/net/ethernet/hisilicon/hns/hns_ethtool.c   | 65 +++++++++++-----------
>  drivers/net/ethernet/intel/i40e/i40e_ethtool.c     |  6 +-
>  drivers/net/ethernet/intel/iavf/iavf_ethtool.c     |  3 +-
>  drivers/net/ethernet/intel/ice/ice_ethtool.c       |  9 +--
>  drivers/net/ethernet/intel/idpf/idpf_ethtool.c     |  2 +-
>  drivers/net/ethernet/intel/igb/igb_ethtool.c       |  6 +-
>  drivers/net/ethernet/intel/igc/igc_ethtool.c       |  6 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c   |  5 +-
>  .../net/ethernet/microchip/sparx5/sparx5_ethtool.c |  2 +-
>  .../net/ethernet/netronome/nfp/nfp_net_ethtool.c   | 44 +++++++--------
Still happy with the nfp parts, thanks:
Reviewed-by: Louis Peens <louis.peens@corigine.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
