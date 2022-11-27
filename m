Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D84D63ADCF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Nov 2022 17:32:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0DD7F60C09;
	Mon, 28 Nov 2022 16:32:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0DD7F60C09
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669653176;
	bh=rUGoIr6j0ZQw9yXfhs7eoBfIx/721W00RvaJQTxd0JM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4kVjTAcC9Dufm2XmxOvVLDqFI4uY0gDL4N+vqnbtThEckSZFYhoUgoLIvXehouADa
	 yqFTdeGqdxwWcNNiYiGMbtJ8aA/9TgbfXnrEqua5QWKR9zngeevVxtKwo3m2NDsBEH
	 NvttbzW9f6OK2MztBmW3PA663mMkuA4xbq/haAbZreXBrmVWN7hTai8eZ8RJsLbyF+
	 FDsLGvRJZ9WHuLs5LVeOI4/BnR3FKWgrDiyVDejGBe+6kFw3h1b1XxI9939vGdVEdA
	 1PLOsxpY0xW1TbECh9F64dEfg2iKRJsI3E0XEU/4p8rBeIFeWhrhJ2BQODBbXKrQdg
	 q9eJTwRPa2lNw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FvUtYmCbOntd; Mon, 28 Nov 2022 16:32:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B187260BA6;
	Mon, 28 Nov 2022 16:32:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B187260BA6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C9D941BF425
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Nov 2022 16:15:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7F9E0400D6
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Nov 2022 16:15:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7F9E0400D6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0WJKsacZy8Od for <intel-wired-lan@lists.osuosl.org>;
 Sun, 27 Nov 2022 16:15:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EB7E3400B8
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2041.outbound.protection.outlook.com [40.107.220.41])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EB7E3400B8
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Nov 2022 16:14:59 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=clBBlXf2ZOaYy8h7KbU9LxiVVs7FM4qr+HQATsZpqxJkLpD5MvAmLFgPZjW39qxWIyrOFpD3TuWCZLS9YW9nl9nOGsAKuvB9yevE2be7/IRjVefDtAf16cC17W0+y1vvU+DqOculTCIAam73z8kx13qwk2X+gBWGTWxOyKXDlzh2/pB1FNsBqRp71FnvYdZ5BeaBfZF638fgaBnxze7eMcv/SROCTm9j/RrWhMH9uXx7AAsUL7PWLsPBRu0WHuSwPe9wfn2g6VnF7Cl0wtSZAme6nG+LW9qFmyHn15Tb+08kzxIfCBsUQkeeu+kKToBJDma6VED0/80u+f6sX9ms8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7QRq8ntWlbOqX3muc0dWBCfXupfLJuGYB09ZO/gVZ9A=;
 b=dJq+7Kt9QTWIwM2293y01IVf5VTgLWJHUGTKLSwUWzKQsrGGC5Uota3HbEOAaA4oEtP8DhpwPkIto9zIoWcfq9H5TA5BRxaaVjnWNMr+1Larxx5nVDxsKtvZ8JtYjS3b6+ZRAvnNn85kaK0DN/NFpY8mYbOwM767s1WHtN98bQ9lX1BYcRnCDha28j5jnd/YQSReGfT8lUqkb8Xs1wlNMlT7leb9Frd5gmhgE13EgzMGPU3pZ9J7fL80wxTdeRfS0LmB9Dve7C86LYowMUgPkZzn/EK2P42lOM2IyCnAwMHnco67s6moA5DRNJE5Aw9xnymXWit4RgRLYkwBKC9eBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from CY5PR12MB6179.namprd12.prod.outlook.com (2603:10b6:930:24::22)
 by BY5PR12MB4887.namprd12.prod.outlook.com (2603:10b6:a03:1c6::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.22; Sun, 27 Nov
 2022 16:14:58 +0000
Received: from CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::a600:9252:615:d31a]) by CY5PR12MB6179.namprd12.prod.outlook.com
 ([fe80::a600:9252:615:d31a%3]) with mapi id 15.20.5834.015; Sun, 27 Nov 2022
 16:14:57 +0000
Date: Sun, 27 Nov 2022 18:14:50 +0200
From: Ido Schimmel <idosch@nvidia.com>
To: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
Message-ID: <Y4OM+q5yqCE4/aGs@shredder>
References: <20221122154934.13937-1-mailhol.vincent@wanadoo.fr>
 <20221127130919.638324-1-mailhol.vincent@wanadoo.fr>
 <20221127130919.638324-2-mailhol.vincent@wanadoo.fr>
Content-Disposition: inline
In-Reply-To: <20221127130919.638324-2-mailhol.vincent@wanadoo.fr>
X-ClientProxiedBy: LO4P123CA0399.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:189::8) To CY5PR12MB6179.namprd12.prod.outlook.com
 (2603:10b6:930:24::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6179:EE_|BY5PR12MB4887:EE_
X-MS-Office365-Filtering-Correlation-Id: d1cf44b4-4c4b-4d59-4b97-08dad0928629
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OAW2LAgHzmTTLxHUJ34Z63U0Ruxalo7GD7KQ6Lcc+6dZikP3KWMoDMU8B98OB5e+/3qkbRWFGM+fUQTsbnlFKDgdZchfWdGFDPIxpTgA9pgjvXP+WAqV1n7k1qCfPpM/AEUIH90XFphgIY2Cm9fEh3HvPTDE7Ack2elbHWQ/Af0C0LPdIXoDeePpgE1R833OkATdcq/Y2QT7HMAt4JexuayOfszPzC/ipASgiH6cu+77QxO1LxTM7mgPhyKdfEqG1okLI/3OhNsvrqg+wEh+ynC0IlS2Srj2chgt4kFdKHKduQ1XPJAi5lAQMYn0+h1bZDMfdG9eC4hH5Y6XRfc9OTxlCjZDykZyGfSacCvtYHjmbEsXMPo+zBfimUZ1HCF3cERiTeNN8YZHf0u8ZlCVCpREJlVpFcWCVz4rYfcQNxyXZ9KLmmkRPIEgX6O382pZ1fpDp18/qauhp783MQ5xnPBgmn4TuTpTdMJrWeFEBxRHjgqxTox12RiDqjXiZwWjTEAVBKES57VOzNYKPB2wTmtFdKNEBXQnxtNvDlQEigafCM0zID/UUJQxvi8Esv3In9MuBLDdpRAjGcdF6mnU+TqYwAyi1K/bEb0Lv/Zw5YFdfjOpIhHnLmxDLAxIva2HlpitS7FxYvp3kuqdWRLt4/NEHak4IYhvi5g56WDa3okEUgU0+o7ymWBecja0lVLJA55w24ehLsxkNO9CBX5jrF0Bfd+zTrQor4KALpPPY0MWc6HTy7pyGw9gFdTD9ZYr
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR12MB6179.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(4636009)(136003)(396003)(346002)(376002)(39850400004)(366004)(451199015)(6506007)(41300700001)(6666004)(107886003)(38100700002)(5660300002)(8936002)(186003)(7406005)(33716001)(7416002)(26005)(6512007)(9686003)(54906003)(6486002)(966005)(316002)(86362001)(6916009)(478600001)(66476007)(4326008)(66556008)(8676002)(66946007)(83380400001)(2906002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Gk1TiVgGIyTPh0Or+nBkvBDkW2eJRSuIfK0BnRgEptz0vMU+ZE3GtpcRTvhF?=
 =?us-ascii?Q?oNBxHODpUHW53ysP/XOMvF8pJu87jPV6SW7VLdIkB9s7B9iBvR9NZ+O8EQFs?=
 =?us-ascii?Q?u509BM0NbIuC7KFq5fawMNG4QomF0S1vCMHUwJO1oR+qlTv2lij41vULCYoF?=
 =?us-ascii?Q?9G3ZGZ3ejvt9ZfgMDgoeS0lfhsEnJBRObX+/qe7D7hFKnl8GvEb3um8sxsAI?=
 =?us-ascii?Q?FBOOgP8untzNBi03Gplznpvbc6whEpOSliudJaqn2195ol1EexB62khZOcoX?=
 =?us-ascii?Q?KzV6NXTNpcYhy2+OID5BhAAYksUxaoc5FdZDTxvEgLOlfELVhQTI8euFzGi2?=
 =?us-ascii?Q?R3/EIkO8s+N0JLZK1pHEVIt8n/MEzTtBe1RQjJGD70Y/kMlYGaSlZgDBqXz8?=
 =?us-ascii?Q?M6szP34GU3Tgm0td7VZ4G4kdSfdMmnqrZlAtjf7uQhG2tDPHGQHhKoqnQQ1e?=
 =?us-ascii?Q?cTueStHMjYW8b+m+NHIdEN4H2B1DtyjgErOWTzdmxoET1DUbSe6zE340ZJmt?=
 =?us-ascii?Q?L3Ul303AiNN48ACSNDaFvUsuYP0eXdr7b4y96LEo/QxBxdbOicb3zAVsa9WJ?=
 =?us-ascii?Q?J3euw6e327PXK0qg4KZYlPB69FSld9KSGxnyoUitceD4ZDCUx/pDJ2EHJYhp?=
 =?us-ascii?Q?uAjr7/qZBM3C65Ov/6/gdlpOnKieB4zYnnTKqx4d6FLvrE5H2NRmhvcv1EtC?=
 =?us-ascii?Q?3MZMjftLc7u3QmKTNcnrG6EuYVLCMcXHvQznDTNMALcJrQyhDNo3Uhg94k9F?=
 =?us-ascii?Q?P2EDvWuay5JEQSUtZJYe8VLfcNv3IjB6qQ0wkVpPpAcLvP+2ppoJjzkpJW9r?=
 =?us-ascii?Q?1krDh/Cjcqx5x6ni0gljS82AwjPEvAJqh9zlSasUVTog4tj+30a96OjVX9A4?=
 =?us-ascii?Q?1+VOZ3iHBXUczGcMXAtDVKWb+txF0QrvP4/TQdE5BFLspU3uMe5jZRbznVun?=
 =?us-ascii?Q?qOjCRTP5Gv3pOWO/ilRpTI+Ph+fA+0DTMv6Rx5CXf8O5ZhUi4Q/YCACjI5+e?=
 =?us-ascii?Q?Rezw/1CuYiPsWvoKw6N4Q036ZLLprGOY3mb4S5HxI9yp3E2yDtpKMh2aILbi?=
 =?us-ascii?Q?TqvpnwXXnp5vHFWlweSQNCGtmk3il2urI6n7Wj9ZFhoGFj6v7GFH79h0xnfJ?=
 =?us-ascii?Q?Vqo4dPz4yJYdqrSEeHD1vW3e1AVn/1FszuZYuzrxELVo7BIzyrum+lpjO8Kq?=
 =?us-ascii?Q?qXi3nhxl62BWrYIELKY0jnQRAd4XShEDN6t46ad7fkpLBCG7ZSekXyLGM5wi?=
 =?us-ascii?Q?bqytTbAIrxuPFvtsZujPkTKUs7TStNfnozmSH5u5r1HSTD01+TVoyK5xMdbx?=
 =?us-ascii?Q?DchjMvImoJYpGW+63AHpHbfSfLbqcnU/Lam9qKXEKZgY/5ITzBAaG4yYU1YK?=
 =?us-ascii?Q?zty1qrnR+hfpahwAfUFE9GtsBnlO3xkAg8hwKz93WYHMuJy2ZMNmoTbJPkVV?=
 =?us-ascii?Q?+piITgHQpe2yAhB5wOZj0g+59x7kZBXJk6lVJlKXz3J/PU8cZBg2DfozfqZc?=
 =?us-ascii?Q?6SEeck+S/BePz+q2odpxftxT8KUeZTvkctN7r1xUuK8+7tgkDdlHsziMpBD1?=
 =?us-ascii?Q?Fbo8PXsFaGp00mVBCbPrlvj+o0lD2I96vohZMP/0?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d1cf44b4-4c4b-4d59-4b97-08dad0928629
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6179.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2022 16:14:57.6146 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aZkPKq7blycgB3wI9zPk2fzNJhlJb4OamcpPd2liP4pBmICq66NKXrYhlIRwEmfNcZV+Jz8lW0peIvGK5iiIag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR12MB4887
X-Mailman-Approved-At: Mon, 28 Nov 2022 16:31:50 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7QRq8ntWlbOqX3muc0dWBCfXupfLJuGYB09ZO/gVZ9A=;
 b=idF88Thum+2o/JvPLKPbtffI9BIAmoQ7o1zY0nD+IsBbzoMtE7iVOKOOK9Wqy33+qjWXLVea+Z4fjGJPVCyFLWolULyHwnDLJLe1BtMC8f2iWIiBZcakqCJkHzExMNofSG0OpPivYRMqZysqHmL8RLRcFN8qufIsqbWXr4nxNAORCVeIYNJjkaXGtrJ80u0fXAUOgjULQMyNZCjRWTCmzWmDsWHmTzTIGXiGNkd6WS4PctV/axAVJddZxW7ASiPnvzaFG2z68DHAdBi1bJVjMutjpUKzGc5/+8uNK8It+zf4/GtbGuZDFIunzEvjqlE4cc8f0vCAzKsb3fzdmUUffw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=idF88Thu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/5] mlxsw: minimal: fix
 mlxsw_m_module_get_drvinfo() to correctly report driver name
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

On Sun, Nov 27, 2022 at 10:09:15PM +0900, Vincent Mailhol wrote:
> Currently, mlxsw_m_module_get_drvinfo() reports the device_kind. The
> device_kind is not necessarily the same as the device_name. For
> example, the mlxsw_i2c implementation sets up the device_kind as
> ic2_client::name in [1] which indicates the type of the device
> (e.g. chip name), not the actual driver name.
> 
> Fix it so that it correctly reports the driver name.
> 
> [1] mlxsw_i2c_probe() from drivers/net/ethernet/mellanox/mlxsw/i2c.c
> Link: https://elixir.bootlin.com/linux/v6.1-rc1/source/drivers/net/ethernet/mellanox/mlxsw/i2c.c#L714

Before the series:

# ethtool -i eth2 | grep driver
driver: mlxsw_minimal

After the series:

# ethtool -i eth2 | grep driver
driver: mlxsw_minimal

See:
https://elixir.bootlin.com/linux/v6.1-rc1/source/drivers/net/ethernet/mellanox/mlxsw/minimal.c#L721

The current code is consistent with the PCI driver:
https://elixir.bootlin.com/linux/v6.1-rc1/source/drivers/net/ethernet/mellanox/mlxsw/spectrum_ethtool.c#L17

Which also correctly reports the driver name.

So I prefer to keep the code as-is.

Thanks

> 
> Fixes: 9bbd7efbc055 ("mlxsw: i2c: Extend initialization with querying firmware info")
> CC: Shalom Toledo <shalomt@mellanox.com>
> CC: Ido Schimmel <idosch@mellanox.com>
> CC: Vadim Pasternak <vadimp@mellanox.com>
> Signed-off-by: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
> ---
>  drivers/net/ethernet/mellanox/mlxsw/minimal.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/mellanox/mlxsw/minimal.c b/drivers/net/ethernet/mellanox/mlxsw/minimal.c
> index 6b56eadd736e..9b37ddbe0cba 100644
> --- a/drivers/net/ethernet/mellanox/mlxsw/minimal.c
> +++ b/drivers/net/ethernet/mellanox/mlxsw/minimal.c
> @@ -92,7 +92,7 @@ static void mlxsw_m_module_get_drvinfo(struct net_device *dev,
>  	struct mlxsw_m_port *mlxsw_m_port = netdev_priv(dev);
>  	struct mlxsw_m *mlxsw_m = mlxsw_m_port->mlxsw_m;
>  
> -	strscpy(drvinfo->driver, mlxsw_m->bus_info->device_kind,
> +	strscpy(drvinfo->driver, dev_driver_string(dev->dev.parent),
>  		sizeof(drvinfo->driver));
>  	snprintf(drvinfo->fw_version, sizeof(drvinfo->fw_version),
>  		 "%d.%d.%d",
> -- 
> 2.37.4
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
