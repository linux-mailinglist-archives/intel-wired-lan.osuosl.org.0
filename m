Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 110757669C4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jul 2023 12:04:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 26A9A40ACB;
	Fri, 28 Jul 2023 10:04:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 26A9A40ACB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690538654;
	bh=e99yThj03mx5m6K0vlUIE5uLJ8HNKV5xl8TWEvHiaBE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=y/p01MWsOwosKL670rapPxqC8/AuXHmNelRJEIW6FwPW38Cm4PkHknN7ehF6Dj3KE
	 aX1PdL3M94PDfXhIETUWBDGwBNzEnCaPAHpAiZXNkbN+31tdEsewjLHLNCUFtGTDzv
	 eGkG5hR3XNT2OeN3b+KBLU3zrL1X75yuXZ7eJ1IvdA2rh8o4yc9MuOfX9SaferAlbj
	 SEQMjVIRzooQiiZ/GMTWlfNs/uWJ2RRtPJKuF1qVRMwtDxmKa/VsDPqyMLLpF5i+Zw
	 XR8sXR+NE4PMvZhNvuNXBbIfX+5nHf3lIRiA+jMjyeQo+fkrZg1e99cJVTp9Ri3uWu
	 dTf0saBR507KA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DVKgCvHYeXPo; Fri, 28 Jul 2023 10:04:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EE44C40569;
	Fri, 28 Jul 2023 10:04:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EE44C40569
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7BAD51BF426
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jul 2023 10:04:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 516D940155
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jul 2023 10:04:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 516D940155
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LH3PI3Kc_YsK for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jul 2023 10:04:07 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2110.outbound.protection.outlook.com [40.107.237.110])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C479D400ED
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jul 2023 10:04:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C479D400ED
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JvcDolhRfT9bHUTJyiiYqydp5RioyXzCYBRSTXfcLiUix4lNhBCYWaL8LqSZm+JRrhRP2hVbWEfY/O/3ctyXSg5gFOhwHCckGD+HZ5jS8hAgKh+TPQg5TJv6ljtucRAvG25ZczaAxRPLCiMFxAGDcaBJ+bFzahu0Hrl3cQGWIVbfjXKA7suEXz/+yx2WKZiVC88fwh0G5FWKeYSq3rqLXzD4gq9mQ/Ceu6vaRQCSorGWF9hnF5O9mf+7k1nTWW8vDRaBII27s0kDBtdGFxIHumHORSPSNmRej0b5V0KZpsnjqZ8eF5fuV/MbLiHGZlM3V2/y55JnZ/mW/A6v0PATwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3MpcEjgnI1jwhWnxOdnAGnUWaShIx3pj+C6e5uVL6kI=;
 b=XqBNKOY6t25yo2sbQV0kTbcA9X+bwpUkaOY8fW72tz81Ji+MPKnTvJiEjMuCi6IppzMW3LGdQS4hORb2DQB4S/yZxytolKkxzUny8Ox3e1lsoN9GlD/BFAUvC2cZf4hlFLtVVV124TfVuvz3Yyh8FzJB56dd9DQUwA9obfObBDnziNfXbmzuZDZRKxVD6aG9jIToXydEkUo7K7trFMJFdlx1Tk3lUlOqDVzo6hcOQNDfNZ5rGRinOUJWmp7yd9Il8Tu3GQnt6666MiDY75GgeigwmpppQ+gJtsH5q/TQO+lNK3T8Cc+asXCx8YhGBDgJCV4oyZErPgebrZdC/1AXdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by CO6PR13MB6029.namprd13.prod.outlook.com (2603:10b6:303:140::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.29; Fri, 28 Jul
 2023 10:04:03 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::fde7:9821:f2d9:101d]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::fde7:9821:f2d9:101d%7]) with mapi id 15.20.6631.026; Fri, 28 Jul 2023
 10:04:03 +0000
Date: Fri, 28 Jul 2023 12:03:48 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Ratheesh Kannoth <rkannoth@marvell.com>
Message-ID: <ZMOShFGhiZH/vory@corigine.com>
References: <20230728022142.2066980-1-rkannoth@marvell.com>
Content-Disposition: inline
In-Reply-To: <20230728022142.2066980-1-rkannoth@marvell.com>
X-ClientProxiedBy: AS4PR09CA0005.eurprd09.prod.outlook.com
 (2603:10a6:20b:5e0::11) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|CO6PR13MB6029:EE_
X-MS-Office365-Filtering-Correlation-Id: 21e637d2-e9eb-4f83-06a7-08db8f51f875
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yeOuX7dtZkK+4ePWDITokVqorgXZZpbakVe9jzERYuGC7OQNKjf7+ryAxA/Y3tceIwSVfGpYl6e8b0KFQKkLNj2KjIbBc42VJHFGUCJn5KnzEkRg2DL+nGIHIr3VYyT7hsMJASrT4DEBnAagyrsI72RtK75aykyJPMeUunjoamGloTx5FrUFcM+hLg7lxOE6DmY0zMnwqZoJYjvmdzyN86EWs2dQ+GP6GREvnF0XqAMu9rQnlAwPHPTrC36nAxonJBL0hwCrRDi/zSMl9MMcXfjnFbaycj2M57cAbOSu+lJFiJXq+TNLVHdWM6EiJXof/nIBUBbYgjVqgM/wojOiYtzm5pciWc8Hnn82x57vtnwH1mCw+a7ng2KVnVZyv5a4reueQeKXH/QSO47bI2sjGnhDnNuC1ETNDZpUDwKZtbPE/QFuh80dkOGOwUexUWYE+PpgTVDwD1g/uwSwiNGjQZINhQQhBWw44sqCeUQtXNItUcc3EqGs3Pw8oTEbRpc93e2TDnqy1Qb39Ss84dn12zDkH1OoFgNzva81wiD6uE2zWs3rCg2cFQpHxi+ojeroMWJTiwLrTHbwldcoavQVFXFuuFuPhj8K3V8ABs/Sah8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(136003)(396003)(39830400003)(366004)(376002)(346002)(451199021)(6666004)(6486002)(478600001)(6506007)(6512007)(966005)(66556008)(66476007)(4326008)(38100700002)(186003)(2616005)(66946007)(6916009)(7366002)(7416002)(44832011)(316002)(86362001)(8936002)(8676002)(4744005)(41300700001)(2906002)(7406005)(5660300002)(36756003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?MznXhqW0WXcIiOcORdAuzR346RRmsy7VrcDOGTsmWQZcKglS6it3+GlCzDv3?=
 =?us-ascii?Q?hMWfFbbEqADZWuWQtUFtXTO8LTCXz/EFTTsdmxB5DpuJGFRMrESPUyFQ0ff0?=
 =?us-ascii?Q?Dc5Pt/cRi7h/aXq3DzIvnvTbLBlEp0MRt6hCG6neJAeMIIFUiibrp9u5PL0Q?=
 =?us-ascii?Q?3pEU7zUg4G87uNCqcl1k+LzdCt6tZoLwn80YKBHPT5BYQ7Hqm/klNxbdfLZl?=
 =?us-ascii?Q?5cLbvkeOl9ToDTSX7Ic9843FgtUZBMK7dtXaSqM33u9nh34IMsXiAMHpUrA/?=
 =?us-ascii?Q?kO6ddLTzQR48oT4q6xrgixFfR+R/Hzv+CNUGDhIVv9F6s5Xyy5WGZRnGs4VY?=
 =?us-ascii?Q?3xNVtCp3We6F1kNuj1w0wq9T51o72G+tXuXdNwk/YOMan//vQ6zT3FzkOf3U?=
 =?us-ascii?Q?XZ2UWkHJur98gOdjOGjyWlRaE3Qjug5J0ux8jKCRN5qrWw3Y3sfnsi2liDed?=
 =?us-ascii?Q?+hLpQhvkpDHyNHWA8ygmZM06jdXZIJukOfi495dhcKv/HkBcZ9eYaNP8/+wJ?=
 =?us-ascii?Q?IRqAGTHSOcf7UnV3xYzdWy+sXJ/22PV/90cAXg093UR8eCH0YDQUVLXSWe/w?=
 =?us-ascii?Q?Uu8gxe2p5TGGNSGRw9DDy8JuH65L0sWpzPp0FyeXUrZKnZI0B3uBXB7SXcFd?=
 =?us-ascii?Q?oC//VDQX+18YCa2UGKJOcKptHA4K1zAlAMFnhmigh4gkkkd/cl2VSoJRWtXu?=
 =?us-ascii?Q?osf5LL2YxWLwMocy4c2/iot70In+h4UrxdSyI+AmF022sFJEygqfRD8O6vt8?=
 =?us-ascii?Q?9vwnCjxdGKoKB8Drzj2J6OMuAaTvHrZHfSEv8uu87p2Bn7QonQMfagSCOlRF?=
 =?us-ascii?Q?OgRn4P+eITxLpg6tjWGQxJhXHfrY0A03lgH6bscohCKgu8fg+Q+xTsbvgw43?=
 =?us-ascii?Q?f/FDQ43aZ0Rf2ihw6ue4L0Uw3NGTFQ+FUwLdunj/MyXng5ACxTJ5X0okojmY?=
 =?us-ascii?Q?Am3nrgfx5T1fZZMXLlFSWMNSqVQI3N4yEeL5g2s40YjGiS/MQUsoIqg46Wm0?=
 =?us-ascii?Q?42q/DwoXQ6UDFPOukuHiZ87luGRc7IxEbPaSpRA3mxdGiaF7Dp5ELFXOpLzo?=
 =?us-ascii?Q?6ybvl/NRbClLRqfQD9VnqjywToWF9i91MtFErSuPfOY1zYO+eeuHoeWfJzES?=
 =?us-ascii?Q?hOl3/IDz+7tTzajXe3DUlvnN63vBaAOTvpvBh3/4muC1w0BjsNC/uLiXifzb?=
 =?us-ascii?Q?5rw8csjgt1hkGUYqNt5BUSXlxTnC5AvoQ3PFRZtLpfc75ODe1ESq6iHjXv62?=
 =?us-ascii?Q?6R2QiBugm3zw6712axOBMHwjC2VpSIx3w9fnJFkVv6XcIfT8dmjoe+jK4Tv4?=
 =?us-ascii?Q?B2LHUaaayGZ2oSgyGcDmU+Uw0J1X6ZYa7WBrvAvLRjHxkBOsYiKHPKWRqlwh?=
 =?us-ascii?Q?INJLAVeWSJe5SmbLEOWYvjwpMr8OAC2o6/ROeGeugkSBHNasti0yefQZ4G2x?=
 =?us-ascii?Q?CLmlw1j+jOTwUpjymugBee4fj2fIKxGXM2wIMHFqXhjr3ROVpVcU+XbzDlx9?=
 =?us-ascii?Q?hAPYOrYYOtrgZ2DJRLK87ptEEMpg4FmM/dn/vC+OKCKWbcKBzkZdwiQUGI4i?=
 =?us-ascii?Q?XT3WmatNkixC9wufP6f48rCsRHxbhBXmd6VSXLK+4mS3ZFGVRDATGkGD10pt?=
 =?us-ascii?Q?Q76C6uTL7YyzhuZWdhmQJvBjOPU1aXX28hC5mRq8JVZ08e+zRynxsHO+cHqu?=
 =?us-ascii?Q?WlkuSA=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 21e637d2-e9eb-4f83-06a7-08db8f51f875
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jul 2023 10:04:03.1105 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XJ5YE4gqrnu4rP7+l2n8j/enWbNnRbeid/U0FuTptCQAUnzAm63AaH+fKa5wTSmuKOXF9qGQ6W/Q1eJt72OMqK84dnK9vi4ljamymfiCMMc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR13MB6029
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3MpcEjgnI1jwhWnxOdnAGnUWaShIx3pj+C6e5uVL6kI=;
 b=KsQmvq/rSleeuWJkdGi4eFKoNSB53EEGeokX7ieKiiIwkXzPKxFhI2UhpO5DKX0kAHqbb7zxcm6KeFDsynDwpR1EX1xjAWGpMUL8GJzRGCy9HMUwNXKkX8clCOykqD+fR5rMzvSW4ncAkXUjH/3+SytbD1lqw3A7+PZyqF4tc+s=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=KsQmvq/r
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next] dissector: Use 64bits for
 used_keys
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
Cc: taras.chornyi@plvision.eu, andrew@lunn.ch, alexandre.belloni@bootlin.com,
 linux-stm32@st-md-mailman.stormreply.com, vladimir.oltean@nxp.com,
 kurt@linutronix.de, alexandre.torgue@foss.st.com, UNGLinuxDriver@microchip.com,
 edumazet@google.com, anthony.l.nguyen@intel.com, sbhatta@marvell.com,
 ioana.ciornei@nxp.com, gerhard@engleder-embedded.com, shenjian15@huawei.com,
 horatiu.vultur@microchip.com, lanhao@huawei.com, louis.peens@corigine.com,
 f.fainelli@gmail.com, leon@kernel.org, linux-net-drivers@amd.com,
 Steen.Hegelund@microchip.com, jesse.brandeburg@intel.com, kadlec@netfilter.org,
 huangguangbin2@huawei.com, joabreu@synopsys.com,
 intel-wired-lan@lists.osuosl.org, linux-arm-kernel@lists.infradead.org,
 kuba@kernel.org, d-tatianin@yandex-team.ru, pabeni@redhat.com,
 yisen.zhuang@huawei.com, sgoutham@marvell.com, linux-rdma@vger.kernel.org,
 grygorii.strashko@ti.com, aelior@marvell.com, daniel.machon@microchip.com,
 idosch@nvidia.com, wenjuan.geng@corigine.com, claudiu.manoil@nxp.com,
 coreteam@netfilter.org, habetsm.xilinx@gmail.com, hui.zhou@corigine.com,
 peppe.cavallaro@st.com, michael.chan@broadcom.com, linux-omap@vger.kernel.org,
 lars.povlsen@microchip.com, petrm@nvidia.com, zdoychev@maxlinear.com,
 salil.mehta@huawei.com, wentao.jia@corigine.com, manishc@marvell.com,
 netdev@vger.kernel.org, oss-drivers@corigine.com, shmulik.ladkani@gmail.com,
 fw@strlen.de, linux-kernel@vger.kernel.org, davem@davemloft.net,
 ecree.xilinx@gmail.com, hkelam@marvell.com, netfilter-devel@vger.kernel.org,
 pablo@netfilter.org, mcoquelin.stm32@gmail.com, rajur@chelsio.com,
 olteanv@gmail.com, saeedm@nvidia.com, gakula@marvell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jul 28, 2023 at 07:51:42AM +0530, Ratheesh Kannoth wrote:
> As 32bit of dissector->used_keys are exhausted,
> increase the size to 64bits.
> 
> This is base changes for ESP/AH flow dissector patch.
> Please find patch and discussions at
> https://lore.kernel.org/netdev/ZMDNjD46BvZ5zp5I@corigine.com/T/#t
> 
> Signed-off-by: Ratheesh Kannoth <rkannoth@marvell.com>
> Reviewed-by: Petr Machata <petrm@nvidia.com>
> Tested-by: Petr Machata <petrm@nvidia.com>

Reviewed-by: Simon Horman <simon.horman@corigine.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
