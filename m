Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C7E419559
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Sep 2021 15:47:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A060960808;
	Mon, 27 Sep 2021 13:46:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BsRR0c23vSpf; Mon, 27 Sep 2021 13:46:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B80A6607C3;
	Mon, 27 Sep 2021 13:46:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1C0871BF2B3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Sep 2021 08:39:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 094FE80D41
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Sep 2021 08:39:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YMQoAV-NUC4o for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Sep 2021 08:39:40 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-sn1anam02on2137.outbound.protection.outlook.com [40.107.96.137])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2AB1580D31
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Sep 2021 08:39:39 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h6w61T+XDjAtn6LWt1Yqe4zQL7o/b/NPx4psigNFsdIPb6YYL6BvjaV8Ts1fAtpqSpkjQCXJ8xPc4Adm+vdZ0BZzFyjbIlfoQiNFPA706gW0CnCV3QYXU7Ve2J406DRMtj42fWDN+dXiEBk7hjWA3wgY4EhcYaO1hiY5mtLoQ1T8Epe9dw0ZmXaOXogs0Pu5bqpD368KPmZPPoBi56oKKRyDwXfMeLzch3Y6hecS0mGGl8D1Wr78D0ws/wDCUobPsTbXXvgm0o3kwfgAHv8BGeW/eYCBzPbSmeEyt9AVghyF+dKclw2bmycPyLp9QuSdV8pffOChK/X4tR4WOiMRYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gIdmZOQCjDpO+zPvkEM5TmdlkH14ENLfJqaVvBh+bMY=;
 b=btuvwUPuW4mQRGrF2o8OmPczDsds3L6SaanbWn6HIZbAEfMvWM4S7LE9lKTRME9J3wJ2EpYB41cawuyarAh+md0/tBXPDPV52L+GrpJQhs3ExV6429PFBR4P4d6e4ssM1rowIqylvYx95j6W9IR1mEnG+zJXmUE743+zT+5UgScrGJlnD1V1NPnyjMIHfxjs4j9htFjCnDzuZyE5v6QobmPjgxCIZh0Cwkfe2c216CvaNThqyJBExpXt9v/nI0KgqnCXI3Xn85DN6Pi/eanPwyguwqavnTHy7DRJQu/REYWYwSRbj1Jhqwm7EX7i3QoE8//3/imdCa9U9kLXAU4CHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gIdmZOQCjDpO+zPvkEM5TmdlkH14ENLfJqaVvBh+bMY=;
 b=ThIwLqOTvKqhVZ0vg+C9ysQkVHWUl3MUK0mTUvLNfVnwqBw6ErdDdcEe/keVYqfScigStqzDrMCC2AkULtTthN06gOfUGoUsOLZLiI+TQaGwUhuzRbsPfmOiR6HTom6ECKMa6V39AzDg2zRi8fKkiL8bLyS4aIeN/dUrUJNtllk=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=corigine.com;
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by PH7PR13MB5552.namprd13.prod.outlook.com (2603:10b6:510:131::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.7; Mon, 27 Sep
 2021 08:39:37 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::e1d9:64d0:cb4f:3e90]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::e1d9:64d0:cb4f:3e90%9]) with mapi id 15.20.4566.012; Mon, 27 Sep 2021
 08:39:36 +0000
Date: Mon, 27 Sep 2021 10:39:24 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20210927083923.GC17484@corigine.com>
References: <cover.1632565508.git.leonro@nvidia.com>
 <f393212ad3906808ee7eb5cff06ef2e053eb9d2b.1632565508.git.leonro@nvidia.com>
Content-Disposition: inline
In-Reply-To: <f393212ad3906808ee7eb5cff06ef2e053eb9d2b.1632565508.git.leonro@nvidia.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ClientProxiedBy: AM0PR01CA0120.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:168::25) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
Received: from corigine.com (2001:982:756:703:d63d:7eff:fe99:ac9d) by
 AM0PR01CA0120.eurprd01.prod.exchangelabs.com (2603:10a6:208:168::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.15 via Frontend
 Transport; Mon, 27 Sep 2021 08:39:28 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 73a8042b-dc1b-4068-935c-08d98192565c
X-MS-TrafficTypeDiagnostic: PH7PR13MB5552:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <PH7PR13MB55523D49A228A31C33B1A01DE8A79@PH7PR13MB5552.namprd13.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1850;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 50r4QUSBOxNDjWfUa1gtTG5JU0Vq4LuJU56Mp2/XLvqP7oXv3b6JfDq6W0jhn8bZdcvnqcQ3Vp4Sj7e10r0TSnL9jwZmind7QdI898XN6Sx24uJ0d0Bnq/x5hZQvGZDj0xP4gCbzH98zPwiY3RLx/B6xLtzTcYEla8JCBa2Rulkq4Lu1jeLAa6mt9e72SBKe+Khg4IR43oXcJUj9UoduCXpwd/Yq9+wWPnGZ+urpfvDPY5k2mzB2GO6ETIRqWfuDEHucQ7FmIn4IfVCOKMvWakTcI3OuwQexw1IEDfHon8On5+Ort2ydvs3UxmFAjzOKPxAxzOfxJzerNVsyf89fZDyUI91OJTPJXEKdURZgcfrThsNJPz/yvtQLUgR6naELfR+7XUdZZtvcXmboUHU1z0SweoGTSTEy8FGjlmBnE08P2nDbOyRYTUoL0z4+XTLU7Zz75JmitlxhNxxWgDW9Du1BHHgQWRw8g5dZ2pRBw64nGGT3oafjJFpx6dxa0e1rizVxpozmH2HNwA1LTliujmlHOuQCUw4xuYTPGOvfvicAdoi6eEP6YZhapFjeeRXWFenU7tK2n9AvRcoNgJl3MK0LUtnRTYrCHY/wNvxkqRv5rQ9wKL0PQ2rdolXw3EGS1WmrjroBx1sstj13NrPXoA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(136003)(346002)(396003)(39830400003)(366004)(6916009)(66946007)(55016002)(66556008)(2616005)(508600001)(8886007)(4326008)(186003)(8676002)(33656002)(8936002)(7696005)(66476007)(52116002)(6666004)(2906002)(83380400001)(558084003)(1076003)(7366002)(5660300002)(36756003)(7416002)(86362001)(7406005)(44832011)(54906003)(38100700002)(316002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?MR1z9KoG+kajsxH185xcnkq9AgYihKkrXTsPol9YCizp9UyVcAoGsUMnT+51?=
 =?us-ascii?Q?5ufrrgMkLqhUAc6Y36WeCaXq78PSH9vhu/5O3/6JJN8bAHgyaHCvuC9R0sis?=
 =?us-ascii?Q?1/Ep3gx8Hg0iybk9j1sA+6uC9XhW6Iy9PEhEed/tMM8biPQv3BSfklCpECUn?=
 =?us-ascii?Q?8LENrreAk3LyDoWuieSMVMB2Hc7wcB0ErrVWmKwPbuVEUXEy72gHNR7G+6OA?=
 =?us-ascii?Q?CIeYM4+loxThVxdumQb/Se2+u1JRRmand11QEe1Ot4VIzXlcqrVNz2M+XxoS?=
 =?us-ascii?Q?9AA+5+lObbghalIdXZAtCvx5SNN0Yq+gLZMTKZe0CiS3PWltj8VGowt4aJ6t?=
 =?us-ascii?Q?+420IrmglFA+72bTDEayGE0BwTJBjGVvRMwaPZSkR41DjEHKmiLOr0HBsiJA?=
 =?us-ascii?Q?MEpheuWSNkp7WzTOSwWvc3fr7fotJHZxFWcmQWoNgy4/xT8F3GlxveH2z+we?=
 =?us-ascii?Q?sNLu/xWc0VxWRtgRVw5OrwcSZOz/6JlJ97yLL8tiJKzULweCOfah0aSgM4O2?=
 =?us-ascii?Q?RxKdAaEB8olel9D7qNoehnGItTGkLgMB8laDht9zpyuEzSJT4tG/k2Ms4HJO?=
 =?us-ascii?Q?hwFCXmdjVNu4EW+vB1pNfQUqc1bMWZ+z60vByPRHS/YZAj0jucWxNFw5ogxy?=
 =?us-ascii?Q?pNZuyTLS+4Ps/emdQTNjIXeW1Ib4oK527TRT8kRPjA7EKIrecGFpiHqAEfNZ?=
 =?us-ascii?Q?WxI/9HZtsj3rnsHbqIprwR/iZwg66l7fTIGMNSumo5PdatXYbNlHlpdhw0ok?=
 =?us-ascii?Q?UOBQBojBL5aN39tif3BN/GiCxe6S30HCIVdUVDL453GLQ7FhZ6ffRqFmgLzo?=
 =?us-ascii?Q?eryuRbvDlHGB8Nh5Qv6seeF4ksfxaiDxYKynaJvuNMAvxlUSRp3mryvUGlIJ?=
 =?us-ascii?Q?zHBD9yu0v2+1ulbauswzaucC+/RTKm66DaNdzXe4KagSKBNxu4a9ok9E1ad/?=
 =?us-ascii?Q?TvVyhYVXoUvcGVMnMfnbN4oLHusMYeE2VMGDosrG2SwKpByCoMEMBqJChpnh?=
 =?us-ascii?Q?EIp/76lP0NyTX6fxl1qEpUG5BXR7QZ+kjuE5k4D7dcX891nP8ic2ADEctCHS?=
 =?us-ascii?Q?/3Zjk+jUh/G4Z7dCP3JqfUQjQ9mRMcH2kJaV7YsiMITGt2T85QjdKk+KTih4?=
 =?us-ascii?Q?GVb8VjZ+CEB2moJI+lwTZZgDPJUpOsCCzkrPh9GmfS+8oCG2oh3ZBVBG1VEf?=
 =?us-ascii?Q?XVjxX9g9cN21Xr327zkhqgdknyjpWzQ/KNBAXetiDMxgnUF90t27Fy8+2rPk?=
 =?us-ascii?Q?jA9OxFBHSL39MPNFn2EMAbGZLBJbxf1JIVgf8nmd+AUGsBj5OdmwFaA2PNhj?=
 =?us-ascii?Q?uJNZt1PKZqbTR6t4lqyojfFwZ4SoTQyBxDlZyN+/FgUUY9IzETG1cte2WnS6?=
 =?us-ascii?Q?S5kOaZpTUGmm/VGA8GSuDOWDHwAv?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 73a8042b-dc1b-4068-935c-08d98192565c
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2021 08:39:36.6260 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HbD8PMEUDDXemMgJZpsAhRriXOPllWXSJK/YfPEi+lU9comg/zhgPgMLgdhfh7Cuc9Lf2kjj2o7vEWB1SltNrAE8d0/S/DgKGN7+Rvm8fm8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR13MB5552
X-Mailman-Approved-At: Mon, 27 Sep 2021 13:46:54 +0000
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 13/21] nfp: Move
 delink_register to be last command
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
 Sergey Ryazanov <ryazanov.s.a@gmail.com>,
 Michael Guralnik <michaelgur@mellanox.com>, oss-drivers@corigine.com,
 netdev@vger.kernel.org, Jerin Jacob <jerinj@marvell.com>,
 GR-everest-linux-l2@marvell.com, Subbaraya Sundeep <sbhatta@marvell.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, UNGLinuxDriver@microchip.com,
 Leon Romanovsky <leonro@nvidia.com>, Michael Chan <michael.chan@broadcom.com>,
 Linu Cherian <lcherian@marvell.com>, Intel Corporation <linuxwwan@intel.com>,
 Tariq Toukan <tariqt@nvidia.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Manish Chopra <manishc@marvell.com>, linux-rdma@vger.kernel.org,
 linux-staging@lists.linux.dev, Shannon Nelson <snelson@pensando.io>,
 intel-wired-lan@lists.osuosl.org, Vadym Kochan <vkochan@marvell.com>,
 Jakub Kicinski <kuba@kernel.org>, Vivien Didelot <vivien.didelot@gmail.com>,
 Sunil Goutham <sgoutham@marvell.com>, Ariel Elior <aelior@marvell.com>,
 Ido Schimmel <idosch@nvidia.com>, Richard Cochran <richardcochran@gmail.com>,
 Satanand Burla <sburla@marvell.com>, Felix Manlunas <fmanlunas@marvell.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Loic Poulain <loic.poulain@linaro.org>, Jiri Pirko <jiri@nvidia.com>,
 drivers@pensando.io, linux-omap@vger.kernel.org, Bin Luo <luobin9@huawei.com>,
 GR-Linux-NIC-Dev@marvell.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, linux-kernel@vger.kernel.org,
 Coiby Xu <coiby.xu@gmail.com>, "David S . Miller" <davem@davemloft.net>,
 Taras Chornyi <tchornyi@marvell.com>, hariprasad <hkelam@marvell.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 M Chetan Kumar <m.chetan.kumar@intel.com>,
 Derek Chickles <dchickles@marvell.com>, Saeed Mahameed <saeedm@nvidia.com>,
 Geetha sowjanya <gakula@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Sep 25, 2021 at 02:22:53PM +0300, Leon Romanovsky wrote:
> From: Leon Romanovsky <leonro@nvidia.com>
> 
> Open user space access to the devlink after driver is probed.

Hi Leon,

I think a description of why is warranted here.

> Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
