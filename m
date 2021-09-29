Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 99DA641C5A9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Sep 2021 15:29:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EEB08415AD;
	Wed, 29 Sep 2021 13:29:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iqSMcw08fHQK; Wed, 29 Sep 2021 13:29:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CA0CA415A6;
	Wed, 29 Sep 2021 13:29:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A1F8A1BF2C7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 13:29:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8B9CE8272C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 13:29:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=nxp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qVxU8w-4X_to for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Sep 2021 13:29:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (mail-eopbgr60071.outbound.protection.outlook.com [40.107.6.71])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2E2C9826F5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 13:29:41 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eliaqHzQjRNGZtDwlfIGyI6Qp1bRrswntEVdLphX4StE5wTj/8WY9/MqP03FQuX9bXyd+bWJ3JsVpDtowdLc45muuzzvKdUJQWD48Zc7v2eXDlfHnJqI3dgtswYsKsIOkc0Q2N8ni6Bcg1OLhanDC3ftzsdhcpRr12RKxYEBr7k2U3eEKiY96tqwPUVTquPJLcFfZH88ykQipmx5NVNqFISFSy2kjHWAiGTsr6/x7IG4EPZqZKyAWwbdzPmtfnwQ1SBq0xO62AlRmV9+p0BXuOHTf58ClZOWS8Pqa6LgV3x2nzaZNa0MhXl38sNbVl6KAgUX8M3JrbSGSqHGKsmL6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=9fe0gqesOAPD6nIyD+HwiLivs0LnML75ncKU5Da/5K4=;
 b=lfbIfSZQ/n95fy4LhCnxlwCawUE/AX1Y9nrdYZl32J5QDegMP6efyxNJ0aptZjA9obOTbqJWN4iFvrevuA3X0vbAEv2NYGK8t/NzTknnY/aDi5jAQ1tWCJ1KUe2l2dFUXnT+5aL+K8i7UXz2Irgf7i5mKWc2exYgc1AeN+IZCKSuCmShCD2FdX2qMU2zpS3lxyYrhCU8kuDbl35kgzCe5sCUlEvTkU7aBh3QLA9Gdz9KD/z/KPfwLGsxEB2X/U8C/51yV2fJFloC6F2sPqqrmhWv3ubFHGBk/GftTrxnUAOsdBLrWdS5oOwq5fUYHeqjcah3O1YNGOtxffGvj76yug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9fe0gqesOAPD6nIyD+HwiLivs0LnML75ncKU5Da/5K4=;
 b=aWodotAJ13EcatTEI/Wu+FKP5itK/m51v5fLvc9Wz0NDrczh1BQTn8g0aavbHc49b6wuMPyJvK5E5zKd127xJXkUxYO49rb7A96Cnj5Jnw8jc08UpcXP0Pi/DI25wNZ+uGSRbOKg6qg/LJGEKkdgpeAoBXNaBe7s8QGKPw4kCD0=
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com (2603:10a6:803:55::19)
 by VI1PR04MB4221.eurprd04.prod.outlook.com (2603:10a6:803:3e::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.14; Wed, 29 Sep
 2021 13:29:37 +0000
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::e157:3280:7bc3:18c4]) by VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::e157:3280:7bc3:18c4%5]) with mapi id 15.20.4544.022; Wed, 29 Sep 2021
 13:29:37 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Leon Romanovsky <leon@kernel.org>
Thread-Topic: [PATCH net-next v1 1/5] devlink: Add missed notifications
 iterators
Thread-Index: AQHXtSmu5y6IvLJs4EG01H02pouwAqu7AcQA
Date: Wed, 29 Sep 2021 13:29:37 +0000
Message-ID: <20210929132936.hnts7lmweewqedxi@skbuf>
References: <cover.1632916329.git.leonro@nvidia.com>
 <2ed1159291f2a589b013914f2b60d8172fc525c1.1632916329.git.leonro@nvidia.com>
In-Reply-To: <2ed1159291f2a589b013914f2b60d8172fc525c1.1632916329.git.leonro@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 699720a7-d124-458d-55e2-08d9834d2ef2
x-ms-traffictypediagnostic: VI1PR04MB4221:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB4221FA7372B088D72601803DE0A99@VI1PR04MB4221.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:335;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ANHiEdpsWFGjJ7vb04XqOn+O57jtmPSLqAv0kfp2p6rwWen6uQ60Z82J20ws3lFqGWSqtO1Lg/HQNISb+G9bFbuY3yKJ82ro6bLzHgsPwsorQ6bNYqJ7j0xrqowoWjESjRu3cUaV15N1JAcuU5EqOdhOC80+rsHg8dj8h6TKiPfIBbkbxvb2GhC2wX3B3ASUa5ctmruKEy96y3v0Bezp0xVOF9n4mc/H6Re4HMhQNLpkWw9hRi4/DOofefPImendzbgw+mjViAluznpNK92HkRNe9QBGc5+lyn88Jw/eyw3WawGqbaYgXSCFXYS1fmfIhTNvPaVXC/dNJJvhk897fJxEcGo+rqBKwZWbe2Vj0bd+udaMP6Ffqc3VllqljFODFQlCUn/CqCZJk/IZptbIL95nk5Ih/H1JWbmxUTJYYrjkMr8alGmzmINrzMkbbq/uqaJnnHAko/wdPTxS0I0QbqZ2FitgGp82r5/YiPFdiooBlp+gMuehl8NZWB3pgZnaeyQSO8vKloj3ZqEkf9py2gMkzl9k6JZG5AspJS/ZHncGZ2rqjuP4awrDAPVYMNpRvZlYGLS5oSwRfU5rUGRBb3NVDdAeht1rYO+UEvcQpI+jarpTECe63tmPbXIudm7aKlCTke2A43c8oySaY9YN8E1EtN7jsWHUvFeWRXcLBfQHRHQvqu4fsrGUXi1OzT+2j+0RxV5ZpxOSzpEzRqEKZQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB5136.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(7916004)(4636009)(366004)(66446008)(64756008)(91956017)(76116006)(66946007)(8676002)(33716001)(7406005)(66476007)(66556008)(2906002)(7366002)(7416002)(8936002)(15650500001)(6486002)(45080400002)(86362001)(1076003)(316002)(54906003)(26005)(508600001)(5660300002)(4326008)(6916009)(6506007)(44832011)(9686003)(6512007)(71200400001)(186003)(38070700005)(38100700002)(122000001)(83380400001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0XZ66elNCE/08GsOQxDNMuLWXfqXRSiD/S/bjUHBLZRGvmQtTfwR/y6ajXIR?=
 =?us-ascii?Q?dx5UTFFkNHHJG9d98n/NyGLzCjULosvoDMbiT8eRFCm7M7Gmqn1SfF4aRVrI?=
 =?us-ascii?Q?U8WRdA8t38T32tgxTlXoQU4Dx5IVt6+WYRWHgX7RMB28YwGGtl6X0t3pjMyd?=
 =?us-ascii?Q?SOGKsWCUGk8ha0QvSIRKzPxmiCqo53YDO7ghQ0TfYGYXCfYxwamEDd0cgxYX?=
 =?us-ascii?Q?UD5yDjo3xJZ+5fprfuyjWNeMjcyWpaz9vENSAt6cpUwASOe7shfuqRZn43Mz?=
 =?us-ascii?Q?yzObcnU/ETFxJAEKUX7VzmB/vcMDZDmOiYp+fM1MKsd1s/MnN4Y6nTgh1GkO?=
 =?us-ascii?Q?j1VFs9zLM9WyRB+fzbDHAGphSVmFzDVEfRU3pYRmyBMXQR2dzggL5RIRlELM?=
 =?us-ascii?Q?J1IhkAyXDqfWzeIMjFaFeBySU7kCFFBUg/EQ0wYykG5wKjQtMqkrUDXpmlTM?=
 =?us-ascii?Q?JfzufRqS6Rk4S16nMcrIq1kN4phfSMGxaETcIGLTaYP5VxKevIrSTud48ysC?=
 =?us-ascii?Q?rQf27Gj9lTEaI95GwvXM46TyGYh/fDKPr4Y8CqyOEyXlA7jkP13SGR8SIPo1?=
 =?us-ascii?Q?cUAVxbyu31p8yF4fJIkPRR05BX7haAx5BE1qUlzTdFAQQk+19ePG+U/ch/pB?=
 =?us-ascii?Q?yTN0I+8yFVDLBVuU2pHoAXG6PC3ECQ0KXU8QzrGeGpxl37LjgxahXJbyWgYY?=
 =?us-ascii?Q?Z0BGWQeNmmT9Po1lp5JRZjnWaQYkCwDmVkmYJEO795R9NVVxA/O5jFWmb3zf?=
 =?us-ascii?Q?sj87/rJjyP/eVWVnX6qEOQvRk797KhkYIDZV0GZPdpwNIkjOQxsq7wKNh2Vq?=
 =?us-ascii?Q?ySMvgqYfXVnwJdVTUh2SIIp/9+rqUeyigtUUdfm1KpnnOLHy7Kr2lnSBFK4w?=
 =?us-ascii?Q?yAa4znlsNXX9D8oqN41gCLnbvNMQCsqd2hjeCpVAWrezFJbRljTaTnxanAX+?=
 =?us-ascii?Q?HALnbPGfbQVeabdQatAZpPapwiEPbyxn3lbmpKxRUXgW+lPSZBB8G7wnp7D+?=
 =?us-ascii?Q?Z6HTR/RhiAaS5clZZKbKu6JpadUiwKf8c7S4bBblK7znpIr3VCRgeMwRUVfN?=
 =?us-ascii?Q?Bc6oCjj5WKuW/gq4l0ReVuei7j/PK2W2bc2T325p0NR6eXOwLb1jCrMweMcC?=
 =?us-ascii?Q?/gh5ECXB3CGRELxn0W/AsxjCX4MNgUhDaNgEUHee+IqX6scoxBU9579xLq+M?=
 =?us-ascii?Q?GCn6/LzbcFB/4AiM+j3k6a+2UPU8Ln8OskqQdhQLIKScP4u5AlTu9h/jQkgA?=
 =?us-ascii?Q?QFKJrl253pdhZNpCd2UYJSamnstAQ+1TB4pqWwSnVkoMvi9BgeeUh0Esl8C8?=
 =?us-ascii?Q?9zeSuFxPMFe+uTN2Es/oUx3G?=
Content-ID: <E9D2422D8EA0984AB0F78FA2ED8B56E5@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5136.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 699720a7-d124-458d-55e2-08d9834d2ef2
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Sep 2021 13:29:37.1990 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 874E3XGpVhXRoxyBB5sw13xGweMfS5gdq+7X8oi54LtQC0r1ZkJuyyb7iLWLloPWRCaoosr1gU4PUXvUEwMbVg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4221
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 1/5] devlink: Add missed
 notifications iterators
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Simon Horman <simon.horman@corigine.com>,
 "oss-drivers@corigine.com" <oss-drivers@corigine.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Jerin Jacob <jerinj@marvell.com>,
 "GR-everest-linux-l2@marvell.com" <GR-everest-linux-l2@marvell.com>,
 Subbaraya Sundeep <sbhatta@marvell.com>, Ioana Ciornei <ioana.ciornei@nxp.com>,
 "UNGLinuxDriver@microchip.com" <UNGLinuxDriver@microchip.com>,
 Leon Romanovsky <leonro@nvidia.com>, Michael Chan <michael.chan@broadcom.com>,
 Linu Cherian <lcherian@marvell.com>, Tariq Toukan <tariqt@nvidia.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Eric Dumazet <eric.dumazet@gmail.com>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 Moshe Shemesh <moshe@nvidia.com>,
 "linux-staging@lists.linux.dev" <linux-staging@lists.linux.dev>,
 Shannon Nelson <snelson@pensando.io>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Vadym Kochan <vkochan@marvell.com>, Jakub Kicinski <kuba@kernel.org>,
 Yisen Zhuang <yisen.zhuang@huawei.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Sunil Goutham <sgoutham@marvell.com>, Ariel Elior <aelior@marvell.com>,
 Ido Schimmel <idosch@nvidia.com>, Richard Cochran <richardcochran@gmail.com>,
 Satanand Burla <sburla@marvell.com>, Felix Manlunas <fmanlunas@marvell.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Jiri Pirko <jiri@nvidia.com>,
 "drivers@pensando.io" <drivers@pensando.io>,
 "linux-omap@vger.kernel.org" <linux-omap@vger.kernel.org>,
 Bin Luo <luobin9@huawei.com>, Salil Mehta <salil.mehta@huawei.com>,
 "GR-Linux-NIC-Dev@marvell.com" <GR-Linux-NIC-Dev@marvell.com>,
 Manish Chopra <manishc@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Coiby Xu <coiby.xu@gmail.com>, "David S . Miller" <davem@davemloft.net>,
 Taras Chornyi <tchornyi@marvell.com>, hariprasad <hkelam@marvell.com>,
 Shay Drory <shayd@nvidia.com>, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Derek Chickles <dchickles@marvell.com>, Saeed Mahameed <saeedm@nvidia.com>,
 Geetha sowjanya <gakula@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Sep 29, 2021 at 03:00:42PM +0300, Leon Romanovsky wrote:
> From: Leon Romanovsky <leonro@nvidia.com>
> 
> The commit mentioned in Fixes line missed a couple of notifications that
> were registered before devlink_register() and should be delayed too.
> 
> As such, the too early placed WARN_ON() check spotted it.
> 
> WARNING: CPU: 1 PID: 6540 at net/core/devlink.c:5158 devlink_nl_region_notify+0x184/0x1e0 net/core/devlink.c:5158
> Modules linked in:
> CPU: 1 PID: 6540 Comm: syz-executor.0 Not tainted 5.15.0-rc2-syzkaller #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
> RIP: 0010:devlink_nl_region_notify+0x184/0x1e0 net/core/devlink.c:5158
> Code: 38 41 b8 c0 0c 00 00 31 d2 48 89 ee 4c 89 e7 e8 72 1a 26 00 48 83 c4 08 5b 5d 41 5c 41 5d 41 5e e9 01 bd 41 fa
> e8 fc bc 41 fa <0f> 0b e9 f7 fe ff ff e8 f0 bc 41 fa 0f 0b eb da 4c 89 e7 e8 c4 18
> RSP: 0018:ffffc90002d6f658 EFLAGS: 00010293
> RAX: 0000000000000000 RBX: 0000000000000000 RCX: 0000000000000000
> RDX: ffff88801f08d580 RSI: ffffffff87344e94 RDI: 0000000000000003
> RBP: ffff88801ee42100 R08: 0000000000000000 R09: 0000000000000000
> R10: ffffffff87344d8a R11: 0000000000000000 R12: ffff88801c1dc000
> R13: 0000000000000000 R14: 000000000000002c R15: ffff88801c1dc070
> FS:  0000555555e8e400(0000) GS:ffff8880b9d00000(0000) knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: 000055dd7c590310 CR3: 0000000069a09000 CR4: 00000000003506e0
> DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> Call Trace:
>  devlink_region_create+0x39f/0x4c0 net/core/devlink.c:10327
>  nsim_dev_dummy_region_init drivers/net/netdevsim/dev.c:481 [inline]
>  nsim_dev_probe+0x5f6/0x1150 drivers/net/netdevsim/dev.c:1479
>  call_driver_probe drivers/base/dd.c:517 [inline]
>  really_probe+0x245/0xcc0 drivers/base/dd.c:596
>  __driver_probe_device+0x338/0x4d0 drivers/base/dd.c:751
>  driver_probe_device+0x4c/0x1a0 drivers/base/dd.c:781
>  __device_attach_driver+0x20b/0x2f0 drivers/base/dd.c:898
>  bus_for_each_drv+0x15f/0x1e0 drivers/base/bus.c:427
>  __device_attach+0x228/0x4a0 drivers/base/dd.c:969
>  bus_probe_device+0x1e4/0x290 drivers/base/bus.c:487
>  device_add+0xc35/0x21b0 drivers/base/core.c:3359
>  nsim_bus_dev_new drivers/net/netdevsim/bus.c:435 [inline]
>  new_device_store+0x48b/0x770 drivers/net/netdevsim/bus.c:302
>  bus_attr_store+0x72/0xa0 drivers/base/bus.c:122
>  sysfs_kf_write+0x110/0x160 fs/sysfs/file.c:139
>  kernfs_fop_write_iter+0x342/0x500 fs/kernfs/file.c:296
>  call_write_iter include/linux/fs.h:2163 [inline]
>  new_sync_write+0x429/0x660 fs/read_write.c:507
>  vfs_write+0x7cf/0xae0 fs/read_write.c:594
>  ksys_write+0x12d/0x250 fs/read_write.c:647
>  do_syscall_x64 arch/x86/entry/common.c:50 [inline]
>  do_syscall_64+0x35/0xb0 arch/x86/entry/common.c:80
>  entry_SYSCALL_64_after_hwframe+0x44/0xae
> RIP: 0033:0x7f328409d3ef
> Code: 89 54 24 18 48 89 74 24 10 89 7c 24 08 e8 99 fd ff ff 48 8b 54 24 18 48 8b 74 24 10 41 89 c0 8b 7c 24 08 b8 01
> 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 31 44 89 c7 48 89 44 24 08 e8 cc fd ff ff 48
> RSP: 002b:00007ffdc6851140 EFLAGS: 00000293 ORIG_RAX: 0000000000000001
> RAX: ffffffffffffffda RBX: 0000000000000003 RCX: 00007f328409d3ef
> RDX: 0000000000000003 RSI: 00007ffdc6851190 RDI: 0000000000000004
> RBP: 0000000000000004 R08: 0000000000000000 R09: 00007ffdc68510e0
> R10: 0000000000000000 R11: 0000000000000293 R12: 00007f3284144971
> R13: 00007ffdc6851190 R14: 0000000000000000 R15: 00007ffdc6851860
> 
> Fixes: 474053c980a0 ("devlink: Notify users when objects are accessible")
> Reported-by: Eric Dumazet <eric.dumazet@gmail.com>
> Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> ---

Tested-by: Vladimir Oltean <vladimir.oltean@nxp.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
