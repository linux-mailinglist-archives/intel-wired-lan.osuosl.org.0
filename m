Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AE7163ADD8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Nov 2022 17:33:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BD181405AB;
	Mon, 28 Nov 2022 16:33:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BD181405AB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669653204;
	bh=EOfY4mKGujZDXm5Nx2Xq1mbMVffnbW74X5lPXsOkNCs=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sun4x/Lldlp+cHk1sOAyx5NX//dcFCNfdCXAjwO3XCYHv+03bJhAbbJKJRLwJtUbw
	 oTzJcGwxdU9OaKP0JodnQYqT8EOnn59qAibh1IL33mCrRi41t+QLnU/jnR7o/yj42I
	 TlCv7QoSFvJdx+amyc9gmkhLUA8v6GX4smVFE6Ctl4XiaHIl/C4o5B7i3hqxXeVOpt
	 5MmzLXDB6zZ4PLoH6gJX0j7fIcKZb/GjE6b2JSv7f0w+GYcVGYtGjFi9sJQx0Mr9+3
	 1TYaGMXS3sJg3cJdug1FeBrYMWpyiFe9Qw4gujgw3YiPX1qbK2M469rJ22r7nSbC/8
	 IkdEusJj/4A9w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m7HXuu5_vSnA; Mon, 28 Nov 2022 16:33:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AB5064045C;
	Mon, 28 Nov 2022 16:33:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AB5064045C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 698C51BF589
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 11:49:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 207B060AAF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 11:49:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 207B060AAF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oPPq7rx_o67B for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Nov 2022 11:49:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 76A65607B0
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2054.outbound.protection.outlook.com [40.107.94.54])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 76A65607B0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 11:49:27 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iNUsK/l3//RjLsLmOo5Hb3NYL2ezJvn6jmjH/pTW8aM3RZ9XngFimpRbR4AJ1zyevy/ZAZGfk/M8b/kwlz2FQLZqSc4ahBMXyCSLJ6Il+ILvguxVgNZxk42yNe/tr3NcFUIfUjfyzI3IZPmtVDQW5/I5+0LTrLCJfgnnMHtImA/eb1OjccQq2Z4mbKx6BKSy7oNjy36TQDBNoWPkWkYV3rF5PEtbmL0z/HTxA1/e+IaW5uCrEM7msiuRhpzUf2VHH5Ayl5x8debh+xaOoGZTMMEB8IPcLq3D/cHwX0uXsrw9ih6CIq+kFjaRP4hzaB+fxp164Be9Bi2MPLc0T2wp0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZZl2+uleKRrEEo/mJ3KJnoUxr/VBX/3HuvUCnbefNuc=;
 b=MhHDNpln443IGhFzKAd9DdjN2XVSS3xxwN+rZ6wLhZpv4vnN9OHjozJK0XA6LPnBftfv9cMllSS1jfrVMUlX4TIe9RymtFksXIStysMQlM96i5gPRz/TDHF2kKy1rZPQJV+5vlZceIZXeh8sh+B4KaNcUTgOKjU+Hpe6VTr+h4qzKCPHVli74XGwGY8m/De+l8BYuTjxUm1K0G6pyPk3ND94tG4AUbfVpoqu9vhWUVZpQxzCxLRzn3fcbZa0sdyJkzkdqW0Ph+L9TfWYYwMgc5FXUOtl39upKZterxHzh6wG9F+xXr6zg+LtIW8l1LTJ0wjQa3YP3h5QEa4BBTxXKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by PH7PR12MB5808.namprd12.prod.outlook.com (2603:10b6:510:1d4::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Mon, 28 Nov
 2022 11:49:22 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::a600:9252:615:d31a]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::a600:9252:615:d31a%3]) with mapi id 15.20.5857.023; Mon, 28 Nov 2022
 11:49:22 +0000
Date: Mon, 28 Nov 2022 13:49:16 +0200
From: Ido Schimmel <idosch@nvidia.com>
To: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
Message-ID: <Y4SgPF7ON6aD6yaZ@shredder>
References: <20221122154934.13937-1-mailhol.vincent@wanadoo.fr>
 <20221128041545.3170897-1-mailhol.vincent@wanadoo.fr>
 <20221128041545.3170897-2-mailhol.vincent@wanadoo.fr>
Content-Disposition: inline
In-Reply-To: <20221128041545.3170897-2-mailhol.vincent@wanadoo.fr>
X-ClientProxiedBy: LO2P123CA0083.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:138::16) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|PH7PR12MB5808:EE_
X-MS-Office365-Filtering-Correlation-Id: bbe331d5-a54a-4659-fa85-08dad13696e1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1c5dHBBPv6mXxo1IAYsbh1pUxh1CrifYPmuGPbZz43vLHG1wM9sJSUvywNhvhGY5lHcyZ4dZptbGCPFb464HAjuxFZU+06GlbOMpxC5Y3DGU51SsEaByrwR5KNslQdnqkkGagfieV+FSGOgUMGAMtJ3zdvMim8BUr/UoSc3Hnzkh+8Lt78zfu/x86gwZBCNoTuDjwZjA/L6Jb7SCHt0SjYFmIyAL0mmeXlmSEr4a6UN3SZPzk8QMonJjWukYz/p34qpi/SGHTVUXuxXrXAhUulCBGIttbKiTZVUDrhveEy6M72Msol7A3OerbnLMsaYvbAGD7JA0nbyvkTOlm+H5/MHqNCiYmbHW2BZ0HubZsuNlXAfUk45JbgCNgoFCAmeV3t5z5zuNNx62oPFTfTWZ3JfCUP2fM1kT1r0lRrmaQEo22i5n0Mz7DawuThm4I7UFPgJZtj81eQnrzT7pKouwR/chq6P1IKxYJHB4ELIS4/JY9MGIPhRlCrOp0Qrcby7hhzwJ+gMorA7LTVhatItfqMW6atMGRNUvgj/BJ1sse9QpUEnM3RfqKp00fLJLK/QuSkSqOajtZEiesZEpX7SvSxroc1i1e+z79snGSmRzkSkQH2MBF+QBiYbtCylAQkxFdWyLb5HkxB6XiQubtcbwRPYaRTCp+wR4i1NcKpsmpPX4GGqrYAM64ythzGXjafChnGWH8iWTCFJ3UZIJfLQ5ZA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(4636009)(7916004)(136003)(39860400002)(376002)(366004)(396003)(346002)(451199015)(2906002)(4744005)(4326008)(41300700001)(6916009)(54906003)(66476007)(8676002)(186003)(66946007)(66556008)(316002)(8936002)(5660300002)(33716001)(9686003)(26005)(6512007)(86362001)(6666004)(6486002)(478600001)(966005)(7416002)(7406005)(6506007)(83380400001)(38100700002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+jSj31mA+BRgbpALn7R0YuSpv13BLIyv3UIxo+rW9Hee0keHjQ8brNZWQCic?=
 =?us-ascii?Q?izI3Lt94ONRGF7rI8o0X1BHVIFxJ/XzL5b0llvCZk5R1VSZds718FWutpS1r?=
 =?us-ascii?Q?8tlN2WgY+tLsm4DnSDwL/gnWvJqw/WIiCGQ+qqb37HVNf7+Ee0f15jU1wIQz?=
 =?us-ascii?Q?x6CNBOQg0hibfNDH6oVIJYDqmnBTBL6CWr0rXAB3kTkMbIRRF55DaQOr4m/n?=
 =?us-ascii?Q?B9qnjOISU0QjVJRvOAYztCHRmKlJdJ7iGBgecq1S9o0AiBw3bTjAf0FZL+j+?=
 =?us-ascii?Q?TkLwusgXGHxCyo0bEAMy4dI9LqUYJtBh8Ty/RIfsr89xAJ/uhqfiog8uxdH/?=
 =?us-ascii?Q?XI/v98A7Q+IEOt35m8rIF9J+H7DLBDer+3hfPJIq6m/fCIvElhmJGgQF/dzu?=
 =?us-ascii?Q?2estnQhaOn2k8LDMgp9pG3AYjwq4jKJ51nznhwef+NFCxjPm1tKkuVwOZSMg?=
 =?us-ascii?Q?bAx94AwakjcP2hpq4vLC1HOkEI928jndQQex4M44pWB28QGkxYcW+NNkxc/V?=
 =?us-ascii?Q?8n6+qmbrp2sn8i3j+tyaKKwI0aUxD9q8SSMbzsi9pZWYusPzYXZg5O+yBy8e?=
 =?us-ascii?Q?y3GX/DQyHkExyzi2V1CvVgfalvHPspTWGcGNf2H/lbw5YAgBa+CrVm4Xkld7?=
 =?us-ascii?Q?Zf4ku3Wd11jxB6rhuEtRZcNQy362gj87NDdUiUsu9SdgLfdIA7XQznR70RIm?=
 =?us-ascii?Q?kAvDQwvSFrVVuQDViE5t5gGwpRbGmGe1CzbKdZP9Ep/J5OdAaX4AzIBucbsd?=
 =?us-ascii?Q?pBVgP5IuS6lvGvUmgv9M/RH8mOPNwBMPUcrHEIqO96MCWNzU2rDbrKeOWsjZ?=
 =?us-ascii?Q?Fm+Me8036TUboSYN6GnzN+qkM89MI9XTFP5sOqvG3VkibouMT/W1BGOWSyL0?=
 =?us-ascii?Q?OOD77QcPrzqQSfv5/fexkz/GiSf7o+BTS/N/Eefw3WtYwrN64xPFqLToA95c?=
 =?us-ascii?Q?iA93RsohTvdusifrv8dKJKK7XDBOw+Q2teIRZxJ2uJWDOslKSIMyZE7NNHN0?=
 =?us-ascii?Q?oGMiXOySgmV0DG8Wo4fyior2azfzvJbRf8w0GWu5pXAkodz76o6Zi0IWxRN7?=
 =?us-ascii?Q?zRFfN/1tjG3IluPjYAISD1tLb+wKSlDaQUImKNhDHXzU/RMMiaWNi4MZ0UeB?=
 =?us-ascii?Q?8wKaiqXkrYrKGfmM42Z6NdXo5tsj8J9xvVEo7Lye0jUCDPODDgI0jHkK1DRv?=
 =?us-ascii?Q?QoSaa5SCNL5Hwdrsk4Ewgnq2ywRBilXUd75e4PnVn6wRbhA9dV8DJ7VZrKKy?=
 =?us-ascii?Q?Lvfr2gzxA6eW3NWTdQ8Vq55j/fAsxK9jBYbIA96SHWP3AlDkszE+VP+Motvn?=
 =?us-ascii?Q?KcnZ1c0y/dNBkDC2PrhfG4IdyjZGkUhTa0wbrwGrGx/0jzEuU3jGKZiNumSF?=
 =?us-ascii?Q?y6+bIahY61rYknTCofABZeWMUw3kdQL/rtLtDXpWuInerul5OBWN7fNHu0Bj?=
 =?us-ascii?Q?1r/vxmiez0su8sQEHu0ruuH6sMjQAuZsgKQMobq37wCp+y5GGaWIkmjdfBZu?=
 =?us-ascii?Q?vNJHx4OWmyc4gS2Q6FJ8KebkFkK4T56YGeErKSdN1ZJEluFGqGW3JItZ2N0I?=
 =?us-ascii?Q?LDSd8RKg3AAwN+MtOaO3abRmGp6YF2obq98//R2E?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bbe331d5-a54a-4659-fa85-08dad13696e1
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2022 11:49:21.9614 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: syMOhfqvXDnx7yG37k8UKA67vOGA0MO+eA/3sJ0k+/Lujqz4oEv0rcBiSW7vTYz/pF9VtMU27tM0jnS8cbF2kA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB5808
X-Mailman-Approved-At: Mon, 28 Nov 2022 16:31:50 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZZl2+uleKRrEEo/mJ3KJnoUxr/VBX/3HuvUCnbefNuc=;
 b=JKQnL1v4hUy08+zD//s+TaZMAtnueFR6iIRe69KowHvABpY1B/zHUSSVL8Q6EDNCWQ1nrF9LIl13wtiRDc3HasQk4dqnGmasQAJ0nOj/Imkxe8pWNCoejCppMFY10Cq2GekWDH1wGkie11M51A0zk4ly1izp+beSZxbOi3tdftCQmeQgSTrm/1vYNBd21v/PPnsSL9eknWY08kaEf6n7Q9WCWpJtN3RE9VtlabKU/m07xWwNAE0nFasUQeHrgRE+qHH2UOi5XOnNyZFI+13iil3zO1DYWj8UywzMfiakZt7VXLFTmCxU5LzZfEMrr+Isp8+1TQAAEEExbtfpmNQW8Q==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=JKQnL1v4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/3] net: devlink: let the
 core report the driver name instead of the drivers
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
 Jiri Pirko <jiri@mellanox.com>, Jiri Pirko <jiri@nvidia.com>,
 Michael Chan <michael.chan@broadcom.com>, Petr Machata <petrm@nvidia.com>,
 Salil Mehta <salil.mehta@huawei.com>,
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

On Mon, Nov 28, 2022 at 01:15:43PM +0900, Vincent Mailhol wrote:
> The driver name is available in device_driver::name. Right now,
> drivers still have to report this piece of information themselves in
> their devlink_ops::info_get callback function.
> 
> In order to factorize code, make devlink_nl_info_fill() add the driver
> name attribute.
> 
> nla_put() does not check if an attribute already exists and
> unconditionally reserves new space, c.f. [1]. To avoid attribute
> duplication, clean-up all the drivers which are currently reporting
> the driver name in their callback.
> 
> [1] __nla_put() from lib/nlattr.c
> Link: https://elixir.bootlin.com/linux/v6.0/source/lib/nlattr.c#L993
> 
> Signed-off-by: Vincent Mailhol <mailhol.vincent@wanadoo.fr>

For mlxsw:

Tested-by: Ido Schimmel <idosch@nvidia.com>

I don't see a difference in "devlink dev info" output before and after
the patchset. Tested with mlxsw_spectrum and mlxsw_minimal.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
