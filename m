Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 955C5729C10
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Jun 2023 15:59:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C29E740BEA;
	Fri,  9 Jun 2023 13:59:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C29E740BEA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686319184;
	bh=YiYTsXkm1QYaGj9Cjbyh0d22SxYp/R1I0sRI8LKKrVI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=YjBiIYo4SudVcC1j5iaWb2tBqDVTfWSnYNqaQBh1h8hu3ZKOkHU38ZTGlVA16Dvj/
	 G3vUNQ8vnxqLFFJisaHQ4bZT9O9mHuCYkO6zDZWwJ1hjAmT7wTNQsGfFiHhJFI7cWu
	 uat9ojdopoACz/BiYOvuqdTIdNXrAtF5pvKOzOtYAkNutI7MNHWsthpr8Un52Wxl4f
	 OH2ZnOJagfI+oetr06prUroyvVG+o9r/WohIovSFcomG8tXj6lD/6mezG2vFe4+eH0
	 kcMLUPjBrxxk7Fb6l4Xm/N2SYNmwWKGALft1jAOz7c3HG5CbcTst4bUhC60avxKxdm
	 x+BWbmcmJVfTg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NTB-0CNgWSyP; Fri,  9 Jun 2023 13:59:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9820040B9D;
	Fri,  9 Jun 2023 13:59:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9820040B9D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 06D0D1BF31B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 13:59:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C9C6142477
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 13:59:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C9C6142477
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o6UcvXNmb-GF for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Jun 2023 13:59:36 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6B5974246F
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur04on2057.outbound.protection.outlook.com [40.107.7.57])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6B5974246F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 13:59:36 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=odNU2mt797MIjRH1PeZQwwT0vn8aw6vvoyauBwdpgivGcIK4WJIS52JJibi9GcozdAPHQ/YhMSn/2g2dST/eNL0jA07t8QAriMkPCNal7Pam1qF3a/CDNOcOry/cENVuWWTqBrr44Hd2vNTymBud39KrRG6p+XQSS2ngfOnPjXvHPU0dhPPdeEgu4B8Dj7ADV3sRBwqbCtWhmkkl3LdZ2nvNw/Rcoq5Oe76KybZ/EoBN5NN6DsipUcgDQC35w6verI8q97JQSXNnHWTcFxDRQmqBFrhJy3Ww9SlJ6xR1xVeGX+GGP0mhm1/QUf/HIa7z0c1zkD4xXts/iZc4ZwpF5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IIpqB7Vyc+Be0KwmZrP2Ta/HV37bUV/Tap2HpZ2YhRE=;
 b=VyKjrnEhz3ZZry7D1LP8iosns2WmiO0a81kte72CUiLlAbmCdfkz2ddTPxpHAXt4WjkDnrRp6Af/VtHHlygpVGnIINuJHgG39ETzo1sIENM0QM7M8crLwB6tP0wGB0l41ZWyF0Lqh6ZR309jhAVoxmaj1MFrFvOlFB1MI683H0+t88OeC1+HZ59y4mbmlZbUrrO9bQOCqhRMkxjKUXjJe7kQu4tjACtjFJQIApG1CQFAeK7w2kReVReUit+4XZE3yR3+B/T1/yt4E8qN1nsrJfekPCUGLJ9ZKQKsWIwwnMNKUkNKP5B/v3D8XTOVfNuW2Iu5+6aD3tcBsefVrDQyjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by AM0PR04MB7139.eurprd04.prod.outlook.com (2603:10a6:208:19d::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.41; Fri, 9 Jun
 2023 13:59:31 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::c40e:d76:fd88:f460]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::c40e:d76:fd88:f460%4]) with mapi id 15.20.6455.030; Fri, 9 Jun 2023
 13:59:29 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: netdev@vger.kernel.org
Date: Fri,  9 Jun 2023 16:59:15 +0300
Message-Id: <20230609135917.1084327-1-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
X-ClientProxiedBy: FR0P281CA0091.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a9::11) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|AM0PR04MB7139:EE_
X-MS-Office365-Filtering-Correlation-Id: 84ff2884-2945-491a-754d-08db68f1be6c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3smGqKLduG9IIezcfQfi9bRbvEAgp/2jZcalvkgXbG+79368j+RzlwnLuAO2U0Usryv+THbVa9Rh/yVNf01Q6JcqEtl8XTSYG5T+HARwXX0mI/mVw5RownqIB2x/aRF7NhpcKUOEeLMmMm2G7VzDN3yUN/+nV2W+t8dURyQphCqmasfUj/CIEmhR2eTPu9Kwe1kafXl4vgtDz8+lt7AIcmsfWAJMhXa8WAH8uCxoeULjQWFio49QiAzhfP+RrFIv5WDb8JzMoDim/AyaxPg56M6H1gMcZWCAe/SFJbI7GFttiirJWnE350rxiYYFhTHtB0/8zr18D4zEB4CQfXgyec4pQpKGh7KQLW+8tMO+90SdTSxKopc3N5QYzyzdjIdXkcmOF6UzWnY8QiqLfb3zoIlB1RQyeyPqHcPxpt84PQWUjqWpP+2iTLizX+2IsrRDFnQsKjqQglnHEZAmWduKBRwmpzbCy3XlFY1LnWF3ZXee8h3HVPVjE6V70w3EfDaDcwKroYgOtc7MYK91CAIuVGN8bF81EynMQCkQypgkS/TaYWC/kucM+kfhTdE3VpAA4/3BYgSc2GOKQZWqO4iLnF237yeCkzPpAj6j07ujh+9pf8rOftwraFOVK+n87Tqc
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(376002)(346002)(39860400002)(396003)(136003)(366004)(451199021)(66946007)(66476007)(316002)(6666004)(66556008)(54906003)(6916009)(4326008)(478600001)(86362001)(36756003)(6506007)(1076003)(26005)(6512007)(186003)(83380400001)(41300700001)(8936002)(8676002)(7416002)(44832011)(4744005)(2906002)(5660300002)(52116002)(6486002)(2616005)(38350700002)(38100700002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WhUZcWzyAMMjGyh3z5/AHEfo4zSd3ssZLRm1UxmL6DwbQM/8SyUaSh1oyLoW?=
 =?us-ascii?Q?ba12IFMtvtESeyHJ/r9dIEifT70FCqYjGYIcG1PEewxA4vMZYg7W/qOUHRVV?=
 =?us-ascii?Q?PC+EKkHtoh/FHl+XhkNtoBjmN8pyiV8FUwqwd+LE+TPxpQa0QCPM5nmSVLXX?=
 =?us-ascii?Q?EKXyvd7r2I7PKZzyZSZSGrVKRh8juironqWoUHuRIXotSp1/lD9+ZyCyzaHT?=
 =?us-ascii?Q?F6VkhrYu6uNq/xfv15qoZ1De0mDq5dAuOSfFVwEBqokRGeEFq57Y0dqwkzdg?=
 =?us-ascii?Q?Goi7GMHPrmh07umlWx4eeJFSMdOw+Vuekwd+7qOENLBtK/k6wuAIiPJw6zR2?=
 =?us-ascii?Q?M4fvJkehwFVCMi+33kyNhIp/3nQxGCgE7VUNRG9wbGumIPY1Fyjm7DEr4EUP?=
 =?us-ascii?Q?xf6TzdjZveAaoFujJfDL2vo44ugXo1JSrnIXL6bFz91KcDRvXvSp7zB9ERyG?=
 =?us-ascii?Q?08Nd4oRkFQ4tUCwLULYPv8kgIucITbLUAo7wPwqowXBixhJjwItUonFOdN+2?=
 =?us-ascii?Q?ieHrszS8zImxWUlHONyvQq9JFZfnOwGkSRSvzVBDIEisTiNy4smwVHMmUd1D?=
 =?us-ascii?Q?bWlaCZke9rF4InmmJ7LGHi9FGXTmjVF0hHC4Yw2MwrHaRVFMm49lHk5oSO6S?=
 =?us-ascii?Q?f52djlJ/sIM2fju9VggjyktegokodsafWKdVk61zvFJcIJasR5pbxK3h31EF?=
 =?us-ascii?Q?Si1H16YjJ6S2L52EJUl4+vso3iUuauUO2+hpitEgBkvDpTmm96UtPe9N/SYv?=
 =?us-ascii?Q?UKDrq7rT89D2sbWh2rU08NGPpGkKAZcfg+6c3GT8FAMaWISK+gYOsYekcndN?=
 =?us-ascii?Q?cTYy2VJiB05gJCywdOIFwUvd/y7CQ+dmMPT6LyS4Ti3WFk/0BIHp7GFK5JzO?=
 =?us-ascii?Q?k+Ty+dctmXvyiDF9tTW6eHES3AeXCXgR+lemie85sPK+MNEH2EQ8ShC1IvE7?=
 =?us-ascii?Q?agiu757jjSEgWq6v8epuAGacL9LMU/1V39e0ZCgcNfYPNPN7IE/wkDUwVsfO?=
 =?us-ascii?Q?YQuH7rb1YRm1syxCSEq8ms2S2FPCLzyXwyrnstU4Twl9SX/KQmzQa1pWCMS9?=
 =?us-ascii?Q?Bx19S8ZKXLZOD46Bd/Ft2XexM7cxI/YQut/Wf8499akmLQ9Es4UHHoyLOzIi?=
 =?us-ascii?Q?TVTxYg3igzV1RpodEFB0J8nTM5MebS4QT+uUa8U/7jqgB6FgHFqBbrf5Yoor?=
 =?us-ascii?Q?U0UGHbsa0cN08yxPbHRqhlb3ddcSU1U+jqL5+Hx2yjpme9M6MZx8iq1pzJos?=
 =?us-ascii?Q?NE7BZMFXFNvxSlvzkzjvU8ilVfyrB6FFZ77WBj45PIj+7sFj5MZFkD2n0PbS?=
 =?us-ascii?Q?F4Ru3piXzgQj0SwcxiFnz+dbr2Ip6ufAhgJnSy+BRa80j42g84DRLoaWZrIB?=
 =?us-ascii?Q?Rz8DFfkpBsNWEmGeqlcb6UH8A5HQPU4e6xs7TliD+zqLk37R9rjpu2h6qPuO?=
 =?us-ascii?Q?bkuiF/XbLUQto/fWSrzbubSXTIZxXc9LpPjob+g0nydw9LD6zOxUbi9P7opl?=
 =?us-ascii?Q?Zc1cxc4uL3iSEV0CmuiQiqlnSQAjwZPlAVFpiG2ur3ODc5VBETamm7+nRigv?=
 =?us-ascii?Q?Ws7Xcs4hJ3qQGx3tB0MV/+Wm7x+WXENernKlIFxZqonM7WaMgbuglvbbzXFH?=
 =?us-ascii?Q?1A=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 84ff2884-2945-491a-754d-08db68f1be6c
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jun 2023 13:59:29.6408 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qZXJ26Ltm6jC5zkZcM9XsukB5+9bG3aE/s6g1vr94SeT7VCF8JpuOnXIKytKzUdd2Of1EdJAjUP7b1qON9NO3A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB7139
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IIpqB7Vyc+Be0KwmZrP2Ta/HV37bUV/Tap2HpZ2YhRE=;
 b=nhkFFks+Pcsmq8zS6xrHGxnhK25qgTTACKvWZpG3mfUVareV5W8QRrLXgocmhEfPjcHdkWlHFusHr9sXSHWPrrG8RgHNqjmjXO0YjMKeIgo2+5OgLPEhAykAKsw+o6S9R4PaXThmBhpOpbkWtkSAbHue8xSNnjnfQoJ/GrIUMUA=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=nhkFFks+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: [Intel-wired-lan] [PATCH net-next 0/2] Fixes for taprio xstats
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
Cc: Jiri Pirko <jiri@resnulli.us>, intel-wired-lan@lists.osuosl.org,
 Xiaoliang Yang <xiaoliang.yang_1@nxp.com>,
 Kurt Kanzenbach <kurt@linutronix.de>, Jamal Hadi Salim <jhs@mojatatu.com>,
 linux-kernel@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Eric Dumazet <edumazet@google.com>,
 Mohammad Athari Bin Ismail <mohammad.athari.ismail@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Cong Wang <xiyou.wangcong@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

1. Taprio classes correspond to TXQs, and thus, class stats are TXQ
   stats not TC stats.
2. Drivers reporting taprio xstats should report xstats for *this*
   taprio, not for a previous one.

Vladimir Oltean (2):
  net/sched: taprio: report class offload stats per TXQ, not per TC
  net: enetc: reset taprio stats when taprio is deleted

 .../net/ethernet/freescale/enetc/enetc_qos.c  | 29 ++++++++++---------
 include/net/pkt_sched.h                       | 10 +++----
 net/sched/sch_taprio.c                        |  8 ++---
 3 files changed, 25 insertions(+), 22 deletions(-)

-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
