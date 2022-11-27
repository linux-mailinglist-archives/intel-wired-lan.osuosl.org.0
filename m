Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B99563ADD0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Nov 2022 17:33:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0D9ED8140E;
	Mon, 28 Nov 2022 16:33:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0D9ED8140E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669653180;
	bh=ILjhrIH3RVYJuG7wMFUtKh/lA3CtxZJ7zLBjxIdwvkE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EQzVz2Rw4w8jXH6QOgbvvdslTxE7Gbk8A4Y+kltgzlQuTOH7muuu5MkVmVlXpmmRQ
	 nRt94ihI6vuJHBx2RD1rAhXrUuyRcgafwSn5eLMttJQ5w1i4mpYLzt7izPa0ztaEr+
	 w17kOvnR6niC/2zX3CJtY368VD9xfTPDnwTkrZoIV1AbxHtIQ1eKqXypx0z8//e5oy
	 KdxBu1V6eUTNlUtRMB8Z+ZYUx6AwFk9MLm4UXhIv2WRrCRLp24SHMqpTk/l0SdcN3N
	 guhx8dJ08ScbZ5lcX4yitwlGL1L45bEAF06qUBdgrhzWtEg1IjsuB1fqbTXuHbEhCH
	 UnQP2HCapqmpg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VNscwPPsWWDE; Mon, 28 Nov 2022 16:32:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C026E8140C;
	Mon, 28 Nov 2022 16:32:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C026E8140C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D9F7B1BF425
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Nov 2022 16:17:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B356E60B24
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Nov 2022 16:17:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B356E60B24
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H1sw-CnfpO9R for <intel-wired-lan@lists.osuosl.org>;
 Sun, 27 Nov 2022 16:17:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 536BA606ED
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2075.outbound.protection.outlook.com [40.107.220.75])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 536BA606ED
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Nov 2022 16:17:19 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cm0KdW2cRXVX1mShNexYMahwmNn4qBt2RiFQA/ltQ0bEw81jsGPSVOtVudlPVw1nZIZODbQ0OgveNpij31E7GWkjaIr9apGb/skQMlijBGPp3yYh7jOlYX1LtrELl//9mN1MM69FD2XMiWj1kEozihyes1G/MKi5MhqoRg+2nVncVK8gTegRTLGOihNI0hYGm/ukaAwikZTkGHwtP5UkF+SE/8twXlP0Ykklck+atENijEwEhi2xt/1OMrXTQuLhU17VRWgXHnejlwoEfiZQT4MgH/rQAHVJY/HGXGDE/9TpVnxHCnp1w6sQ+f9R1f++WmUlKTOQl1c6PgHG1MCgaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZhigUyQs3WVVkiuNLdx7UHVGViyT0f5aX1sIw4U8LSU=;
 b=WodrZoJO1FFiR38smI2Hsfd1fPl75Er8U7WJrjJ0tyGV37MYJWA0NV/BooCqYaAei6lN3Vq2j3q39XOZcl0q7+THlBNf75QJgJcr9QW95TJI46+u+uGRLcGtd9JxrGRuAV7yJWA/Eai9CwSuwES6BMm46Thi873b39uaUM8eGjD1N/vg+BEtSqE/63fL62MLZcRvCTVji9PiN8YNfiN+edVSlKGMIO1lEhkWY6AzNea/KR63PYFBmlUnfpZG6ZT8ii4JZK8bf7K5I+Rks5hyvhiD4jCcEY4uKdLcWEfSTZPqkue/lPqAiNlmBAaZZFA/CUrMQwjxcp4Bvc62NOON5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by BY5PR12MB4887.namprd12.prod.outlook.com (2603:10b6:a03:1c6::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.22; Sun, 27 Nov
 2022 16:17:09 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::a600:9252:615:d31a]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::a600:9252:615:d31a%3]) with mapi id 15.20.5834.015; Sun, 27 Nov 2022
 16:17:09 +0000
Date: Sun, 27 Nov 2022 18:17:04 +0200
From: Ido Schimmel <idosch@nvidia.com>
To: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
Message-ID: <Y4ONgD4dAj8yU2/+@shredder>
References: <20221122154934.13937-1-mailhol.vincent@wanadoo.fr>
 <20221127130919.638324-1-mailhol.vincent@wanadoo.fr>
 <20221127130919.638324-3-mailhol.vincent@wanadoo.fr>
Content-Disposition: inline
In-Reply-To: <20221127130919.638324-3-mailhol.vincent@wanadoo.fr>
X-ClientProxiedBy: FR3P281CA0104.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a1::20) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|BY5PR12MB4887:EE_
X-MS-Office365-Filtering-Correlation-Id: a0df3b66-9821-4889-3b7a-08dad092d53a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xrqqYG2igjIsN0Xibf3QuBVCjpnvBFeIHR87JXdkjcp0d6VWW3UGFexuP+Tdh7qus1GILCcPE4U3cY8mHW2e1OswnKFwTf/G0kvHPaVGPKaXaGQnf3se3Zs8P/HuBbTEBSkfOGDH1ednb2zbVvsL8H7mCpEnR+AkAm3G1Iq3Vcd4QdRHO/rsUM+KOXhoRGZnDij7IuNUgka+ooNCVAbAIR0yLWGBGHSfiYADvowyht2Unby+5FXaXvqyD9Y/oJpfNucWLoH5E2MfEBANueZ4TPsCAxMxN6GnZ41ZyW2+hDInCXDHPFAZuTzFmcVZD3et1DX6b4Y+5fRH10stveY2IHYKbP5kYg4SNrDxiY1MNzMv/CGldmoT8Y4VqekUJ0m5gNe+bTVxUJ43qpF/BV2CJeTE+3dDG57aDO0DeiA+gIK9Pe7Whq1cRxmWBjYILAOvprlJ71ZKvJml6GEkhrjgVzUg17f1ztCvtInvy9ghCHHHG/V4vqP+OForSrRsh86gUpGO1kjEKh6T29xeqHvb0AdHRx7rz+7RZqQaONUHTWWUww+ugVNxZo9AT/5JHpUUC2gwDo6aZlLLUzn+rxPMYKjD+EEs90TUWus7geVq/fUZP92Odkfgk3iQA3ud1q5OJ4Nplp2aJJzBaFeLQnGGkB8TdGaFxlZAdF86JJNzTS0bx+ipWeNWv8jFEO6rDsxrmZRTsLImTKZzXhESanQ0dU+J7QB2m4qiWa7ar+t9w6k=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(4636009)(136003)(396003)(346002)(376002)(39850400004)(366004)(451199015)(6506007)(41300700001)(6666004)(107886003)(38100700002)(5660300002)(8936002)(186003)(7406005)(33716001)(7416002)(26005)(6512007)(9686003)(54906003)(6486002)(966005)(316002)(86362001)(6916009)(478600001)(66476007)(4326008)(66556008)(8676002)(66946007)(83380400001)(2906002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?vqR66Kr10oDz6Pi5Roizh7dW0QGb+Jd0tYnzrllsWL946TBPNwG+Pw88AWRn?=
 =?us-ascii?Q?oDOMesSd8mi/M3j+5PrZKKTK17khXdMfolw0ojHU3BfWfVMhgJ9QqrMPHeqT?=
 =?us-ascii?Q?kmfWxFq6nmrAumkwfPw2K59Lzn+GsEIGGQK1QbRgziygVGqfZzkGW0EFDy76?=
 =?us-ascii?Q?2xAHqetaj0GlIoLdAVg8qo6X8wX7mu7XaykITRhmIFipdZmb1aAhe2FVzLA2?=
 =?us-ascii?Q?UeoaVnwfmsHghJnl6ABguKujbUYv0KzynJ81IG0a5exx1X//jkDwcyz6C1W5?=
 =?us-ascii?Q?ZBhVmdaZV4egckqnSBtzJZRijIkEGLFrLkkeCHASlqQkDPe/88J/8/NMA7zS?=
 =?us-ascii?Q?hiSyIOIKG1bB4Jec2oZ2Xm8SsIZoPaYvLQsrqNydcvTlYFn+UF7mLt8K136y?=
 =?us-ascii?Q?4ng1xqN7pbJyyjwMPRZBkv+o4RraZaKdKq85uFkdC2ML+trBPKuC09RwDaq0?=
 =?us-ascii?Q?cam0WZHyF9kdgdw1b27nzqXzGTK64H5SdxR8h0YbDjl3J+2J+Ew6KHE7WIt1?=
 =?us-ascii?Q?er0LmonfHK7tP4qio6SGLp5YQeLUAy7O5G6xooqYddVi9gyKfCGeWy539hYQ?=
 =?us-ascii?Q?GLp+XgE8lhzXZl1HVdJ6og4JAdvGrII0EQ4c54jpLjdcBBX3X3prwj/O59x+?=
 =?us-ascii?Q?JO+MSVO8EbjSJ1hLjQeaeH0vcncJ5AcrjRZGiuPDEdjga0IWhw19nX/dBxIK?=
 =?us-ascii?Q?TER97hG4ZL++DmnSsGH8R6OG1NdpTWIv57uP/JtbASHz77Qi1yGjfbiZZ6IS?=
 =?us-ascii?Q?HG9RFTDbNReCBZpq9++dJI7XGINJzKFF+RevNhqhOnr4Hgwnd30f6nLhFg3e?=
 =?us-ascii?Q?ury/CXqew2q2DuLTTQOIYaub7a54+KXWMoalM0JC/H+3GobwPdBJ11Dxx2ga?=
 =?us-ascii?Q?MeKS5hGG2kUjPCU1Ak9DASVmqCEn7aIWpt0BUtosXa/OPSV4vUiP9pbOxNYZ?=
 =?us-ascii?Q?my+RJPnZgff8jBB+iVQ/cjDrNrBIHj/CIWDvJjydY/fNmjCIv3MWcAZruuM0?=
 =?us-ascii?Q?2b0mJ9DOpYtM9TIJywwIzEXZTulFPVJqCiWH0jSdEiRT7FULoCST3WYx7Cjq?=
 =?us-ascii?Q?pSnj7QmXZKxqMVO25fMdHasUxlaSG4je7xF/oDSV4Fzd4YPTLbKC3GQIhzF0?=
 =?us-ascii?Q?v1uG8KKTlcBEtn0C793HVNufXgJn6wIAfmf9pfz8cefWwhv4Cxtfe0Z1pfVj?=
 =?us-ascii?Q?lkq58WjzhLoxVKIbdH2SHpLMZI+lnjpXo9whRGjpDcKzR8lb9P2JmKpCWjU0?=
 =?us-ascii?Q?1WKeSkRtZrENgJPJgdkrvc4DnkzewQF1jNPFdxOQ8gIfqEkaoYtdFwymI/Bm?=
 =?us-ascii?Q?CS2H8bl1XV1SMAhZguwcy+s7jATMWFw4jcRSIJj9nCWc/cgfqPsKNgNXwKGF?=
 =?us-ascii?Q?Z2T3Tso0iD5XK6b0VWsbE38hz5KvmIteV6BIoSB8FK1Yb3bTUnkvNMRd9apt?=
 =?us-ascii?Q?7FW4XvGkzMI07TzlCJdcic4+E7R/YjiHf5g2qtUugGTxKMXonmRalkLrk6qo?=
 =?us-ascii?Q?SIFBIqZLlnLwsbESizjymIeiauRoLtMgCmZB9F9pSeVUm8B/ugmM8RXqERDE?=
 =?us-ascii?Q?GywmSrHJbSvaNwaLbvd7mDVHITVWrHv0/p8hyJwl?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a0df3b66-9821-4889-3b7a-08dad092d53a
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2022 16:17:08.8918 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fWDqn+zjWp7BA9y7OOZ3dP5DsLDCcCgQKd8B89JwIPzjH9MtlLJ4sjBXX5pPe+X4f5vkY7sLIiSzSBiajWGs1w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR12MB4887
X-Mailman-Approved-At: Mon, 28 Nov 2022 16:31:50 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZhigUyQs3WVVkiuNLdx7UHVGViyT0f5aX1sIw4U8LSU=;
 b=S9vMi8Y7+kwdj/bJzP59HMKWP+fKSlwUP1Xdy84mp7T9jmyKgYtx2G5/UrblQ/jJnjylW/ZpWXnRgbZd6bQSyFItOl4NgS73t3f7C/BwPWQKlMRXqAQ6SFzDd9KrCxQIuHUpYVr3ghnyUkR7ExKxTYtTCjCFVbZ6Np1lH4VS9Z6y1vuYlt2iF86ec/r34gaHIZbJD0D8SsBj1QjYd/eogT+RzTU17XLSnRS1WnzOm+w9gWk/uvit+v0YlnPko1EVg4rtsS91VOcvABv9p0aS5HcghXy4RMs3z/mBmVSqtqmstPAiEmlb8pKixocPfnkZWA7Xpxh9Rmt4jQEhTWrd+A==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=S9vMi8Y7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 2/5] mlxsw: core: fix
 mlxsw_devlink_info_get() to correctly report driver name
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
Cc: Andrew Lunn <andrew@lunn.ch>, Shijith Thotton <sthotton@marvell.com>,
 Simon Horman <simon.horman@corigine.com>, Kurt Kanzenbach <kurt@linutronix.de>,
 Eric Dumazet <edumazet@google.com>, Subbaraya Sundeep <sbhatta@marvell.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, drivers@pensando.io,
 Linu Cherian <lcherian@marvell.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, Shalom Toledo <shalomt@mellanox.com>,
 Srujana Challa <schalla@marvell.com>, Minghao Chi <chi.minghao@zte.com.cn>,
 Hao Chen <chenhao288@hisilicon.com>,
 Guangbin Huang <huangguangbin2@huawei.com>,
 Shannon Nelson <snelson@pensando.io>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Vadim Fedorenko <vadfed@fb.com>,
 Paolo Abeni <pabeni@redhat.com>, Yisen Zhuang <yisen.zhuang@huawei.com>,
 Sunil Goutham <sgoutham@marvell.com>, Ariel Elior <aelior@marvell.com>,
 Richard Cochran <richardcochran@gmail.com>, Arnaud Ebalard <arno@natisbad.org>,
 Ido Schimmel <idosch@mellanox.com>, Jiri Pirko <jiri@mellanox.com>,
 Jiri Pirko <jiri@nvidia.com>, Michael Chan <michael.chan@broadcom.com>,
 Petr Machata <petrm@nvidia.com>, Salil Mehta <salil.mehta@huawei.com>,
 Dimitris Michailidis <dmichail@fungible.com>,
 Manish Chopra <manishc@marvell.com>, Boris Brezillon <bbrezillon@kernel.org>,
 netdev@vger.kernel.org, oss-drivers@corigine.com,
 Vadim Pasternak <vadimp@mellanox.com>, linux-kernel@vger.kernel.org,
 Geetha sowjanya <gakula@marvell.com>, Taras Chornyi <tchornyi@marvell.com>,
 hariprasad <hkelam@marvell.com>, linux-crypto@vger.kernel.org,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Jerin Jacob <jerinj@marvell.com>,
 Vladimir Oltean <olteanv@gmail.com>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, Nov 27, 2022 at 10:09:16PM +0900, Vincent Mailhol wrote:
> Currently, mlxsw_devlink_info_get() reports the device_kind. The
> device_kind is not necessarily the same as the device_name. For
> example, the mlxsw_i2c implementation sets up the device_kind as
> ic2_client::name in [1] which indicates the type of the device

s/ic2/i2c/

> (e.g. chip name).
> 
> Fix it so that it correctly reports the driver name.
> 
> [1] mlxsw_i2c_probe() from drivers/net/ethernet/mellanox/mlxsw/i2c.c
> Link: https://elixir.bootlin.com/linux/v6.1-rc1/source/drivers/net/ethernet/mellanox/mlxsw/i2c.c#L714

Same comment as before.

Before the series:

# devlink dev info i2c/2-0048 | grep driver
  driver mlxsw_minimal

After the series:

# devlink dev info i2c/2-0048 | grep driver
  driver mlxsw_minimal

> 
> Fixes: a9c8336f6544 ("mlxsw: core: Add support for devlink info command")
> CC: Shalom Toledo <shalomt@mellanox.com>
> CC: Ido Schimmel <idosch@mellanox.com>
> CC: Vadim Pasternak <vadimp@mellanox.com>
> Signed-off-by: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
> ---
>  drivers/net/ethernet/mellanox/mlxsw/core.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/mellanox/mlxsw/core.c b/drivers/net/ethernet/mellanox/mlxsw/core.c
> index a83f6bc30072..d8b1bb03cdb0 100644
> --- a/drivers/net/ethernet/mellanox/mlxsw/core.c
> +++ b/drivers/net/ethernet/mellanox/mlxsw/core.c
> @@ -1453,6 +1453,7 @@ mlxsw_devlink_info_get(struct devlink *devlink, struct devlink_info_req *req,
>  		       struct netlink_ext_ack *extack)
>  {
>  	struct mlxsw_core *mlxsw_core = devlink_priv(devlink);
> +	struct device *dev = mlxsw_core->bus_info->dev;
>  	char fw_info_psid[MLXSW_REG_MGIR_FW_INFO_PSID_SIZE];
>  	u32 hw_rev, fw_major, fw_minor, fw_sub_minor;
>  	char mgir_pl[MLXSW_REG_MGIR_LEN];
> @@ -1460,7 +1461,7 @@ mlxsw_devlink_info_get(struct devlink *devlink, struct devlink_info_req *req,
>  	int err;
>  
>  	err = devlink_info_driver_name_put(req,
> -					   mlxsw_core->bus_info->device_kind);
> +					   dev_driver_string(dev->parent));
>  	if (err)
>  		return err;
>  
> -- 
> 2.37.4
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
