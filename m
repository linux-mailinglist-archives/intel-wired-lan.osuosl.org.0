Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D147A5E156
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Mar 2025 17:01:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 03E5F81297;
	Wed, 12 Mar 2025 16:01:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RiB8L3Q3YDtL; Wed, 12 Mar 2025 16:01:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5961581317
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741795265;
	bh=XdK4IquZb/EDtY89tyKPaIXZVMXY97eJsuOkd6GBZ/4=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=g2xZKBvg0G5Z+ouQX8X5ilS2ZpBmlCVPMs3P9GTtGFvCxEWqnZbUvv35eTKWEouZw
	 /gXHpknIhqrQGVZ/cVFeqVdZyBSGeViUJMpkjiH+qUmKqbm9uZOajloI3qSAjZeWu5
	 aOdZjA62k8k7uVYrW/M4gmspCnfsXvRDzAMjRCeDemVsuTtsY9YAAgX30/3mqZGHdO
	 NDQJzMcthc6OWw5i0aJIpuQqtr2TbbcRp1nPQia9gpfvpVFROlRho2xL1Jk2JnVshJ
	 yfKGyHb4wTS0RP3x7BWA3XlBJCZW4XXabvRJ5eAVNbj8PN4cG8mKJX62I1T2k+amVW
	 pelemroTkqAhA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5961581317;
	Wed, 12 Mar 2025 16:01:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6931B1DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 16:01:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 42ACB40A1D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 16:01:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4AIsfNjuT5HP for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Mar 2025 16:01:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.22.80;
 helo=eur05-am6-obe.outbound.protection.outlook.com;
 envelope-from=vladimir.oltean@nxp.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2394240112
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2394240112
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 (mail-am6eur05on2080.outbound.protection.outlook.com [40.107.22.80])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2394240112
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 16:01:01 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QEBZ9JQkBu/80DtOvJdJTj4VFd1UXhmNyT4aOj69K7l3VyaUNfA6b9cYPgwITU7Y/iIj41yVxPAmaNXKuUxjrerA5L50OsQK8tgkeLNNI9LgZAzjINCu8DLgPAVC5mcJqwAeFUTCMrFLCPeteemEBqLaA1NT/4sdHposSSxdNqZVCSJgTgup90iIJsgsYnEpFqIRSfUduvwHM+GCgN5ODrWdkms0vqMRfJjGV+00iq3vnTFoViEsBiT9TVzJarVbkzJ9ATKAEmXmUInJGuk9JnvzEcATPD5JvEasp3LJDeNobqY0vd+wvvoeDPu1tPLdYDxZGkuaqk0rpOTLDvlRsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XdK4IquZb/EDtY89tyKPaIXZVMXY97eJsuOkd6GBZ/4=;
 b=LiNU/Rr5VBJMmBiAdY3GK2wvf3kVIb0inSOn2FyD3t/Hk8Dt0CetEnYfsKsoc77H9QGVzwTUOha4rGiD+kLsKTomR2OOsLZ0BXGL58qk8VFoMaB7RJk9sqn855iWj1R2daueXKraixzXdA5Rnh89IG+ZC6Gf7FUpcOZK1U+jeJml6uhiYTPyK+d6Y3coMGNhcemS3kuhkWarsD6BRvMvt+w2LacgLCvT7TDxExK9XKRkuljPRBV86VTa6FbPyS1gL+44oNEOHTb0spyEBiwJx+vwVD6e2QufA5llWIbrI4piys4WoZJplwe8nnzahqiyvYs/LJZoGKy/RUgRV6Pdzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
 by PAXPR04MB8703.eurprd04.prod.outlook.com (2603:10a6:102:21e::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Wed, 12 Mar
 2025 16:00:57 +0000
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2]) by AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2%6]) with mapi id 15.20.8511.026; Wed, 12 Mar 2025
 16:00:57 +0000
Date: Wed, 12 Mar 2025 18:00:52 +0200
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Simon Horman <horms@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Furong Xu <0x1207@gmail.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Serge Semin <fancer.lancer@gmail.com>,
 Xiaolei Wang <xiaolei.wang@windriver.com>,
 Suraj Jaiswal <quic_jsuraj@quicinc.com>,
 Kory Maincent <kory.maincent@bootlin.com>, Gal Pressman <gal@nvidia.com>,
 Jesper Nilsson <jesper.nilsson@axis.com>,
 Choong Yong Liang <yong.liang.choong@linux.intel.com>,
 Chwee-Lin Choong <chwee.lin.choong@intel.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, bpf@vger.kernel.org
Message-ID: <20250312160052.ypq6u4na3klib6l2@skbuf>
References: <20250309104648.3895551-1-faizal.abdul.rahim@linux.intel.com>
 <20250309104648.3895551-1-faizal.abdul.rahim@linux.intel.com>
 <20250309104648.3895551-15-faizal.abdul.rahim@linux.intel.com>
 <20250309104648.3895551-15-faizal.abdul.rahim@linux.intel.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250309104648.3895551-15-faizal.abdul.rahim@linux.intel.com>
 <20250309104648.3895551-15-faizal.abdul.rahim@linux.intel.com>
X-ClientProxiedBy: VI1P195CA0034.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:802:5a::23) To AM8PR04MB7779.eurprd04.prod.outlook.com
 (2603:10a6:20b:24b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8PR04MB7779:EE_|PAXPR04MB8703:EE_
X-MS-Office365-Filtering-Correlation-Id: e54828db-d070-4a9b-54d8-08dd617f1355
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|7416014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?nUYEbx0IpxQ7WAgr8v6YoUyhJlOUMrAX7yo1POQrdb2McHczQcZ+6Qii3xzH?=
 =?us-ascii?Q?x1SMkyOFA1SxjyiNjB32eqoeZyg/s+Wx6AEP2KS2OVW9KFGD64M3K6WkMdZq?=
 =?us-ascii?Q?Le+5JbDnzjB1ZQZaTkZnvYoTJHlBzigPce6UWUj5syxc+BHKsMJiF+D2+2bU?=
 =?us-ascii?Q?FF1pAxhA7E7k4Div1leihuDS1Zb8gIlAFP0UNa+ZAVTDMEjax/m5CewdFwy4?=
 =?us-ascii?Q?0HSFWopEMloTmj/YImIMrpjCh4A0i8iXz5uK/fOd44oEh2A96D4Noh1Qus8D?=
 =?us-ascii?Q?5mxxjXVXOJ0gSbe1e3v3QEERMkhZwID9C09j9jnHX0P/K/fnAs5BkSKKQc78?=
 =?us-ascii?Q?Xq/TH9glGwZxXoke05aTgmASQ3tBFGIJlCbu+gbYCgPY2g1jOJq1ZqElJLDm?=
 =?us-ascii?Q?yopK0oAiu4bqH5lbMCmTjJ9s7oIpuYadl9SQveRTXUxPfs/a+758xW/GYhbL?=
 =?us-ascii?Q?LSp7CVN1T/UH5pWKHUotN2ZoYF9o5Nnf93dFEfPZ5UAEYLAekZf66MNYoPn6?=
 =?us-ascii?Q?jKNDDNSToQUYJoddEIcCaRgmh2rSsrShGxz9dQR2oFMqxUqZlBOvtDi1i2GM?=
 =?us-ascii?Q?TzKXaf5GNq49/mXNKIyNuZEMg5plHlczoBkLwYEHMBAOPmE1IVLCCAuTv65b?=
 =?us-ascii?Q?9JcKo6YcHxD+w0+fx3MJF555gNXLhS5xvgVm5tvjxzw515NYX4gidUoXmGXa?=
 =?us-ascii?Q?9+IcBJsVEE7A2oR6p7iL7HG2lOHGuwzjXKt0/QzNNzPzq8l5hBJURyxGPdh3?=
 =?us-ascii?Q?RCTseo+0CDEY5R1uZ/QucljqMq9FaUXzWkLpVUzZGdK4u/Nt791UuRJzHOnx?=
 =?us-ascii?Q?Pm3DoNfz/S4jY2yoWH57EXVwMpznyyREG8GvdjVhM7KBlGTee3YEEKVezaDt?=
 =?us-ascii?Q?dT3G0acfl1Ibyp/E3uALq/UtnsnODu+4MLRghuZmcOcoixB4bbMOHwL6vNa2?=
 =?us-ascii?Q?zMS+8pDh7HlkTPeS+rHBa3TBfO3r03ByAevwqAx9QhTfgej74FBRIf614zaI?=
 =?us-ascii?Q?4JxbRBwmQxJPGM6xtv7LLj58FmTqW5iSq4x+4xWISoR01mnnc+8Cm7ZuoJWi?=
 =?us-ascii?Q?o7Pl+jsUyiT7/0+y/DZjhosCu7bPC8GK+v4sv1zNZBIh/SQobJJFqmziIciT?=
 =?us-ascii?Q?iQhesoUxLz0m9pdNXJFjZ1rl4qWPiYPNERn97BkYmAOQf079xC+tVXv58ik8?=
 =?us-ascii?Q?HUA1txk8JlGRC2B1OHm9CL+QJmfLGBr6d9+TeejHbn/IIV45paFMAdlx2jnu?=
 =?us-ascii?Q?BIffg7ETzk0UKvynjLv2O0nFjQgVbAjv/htvcysYQ10NXnmJv87DzhyQwRoz?=
 =?us-ascii?Q?MXGoMvoeXiOmdq0ddY2k2boRPX/GGpQ3hJR2cqCHl6Zeu6HGYFHX76237FgV?=
 =?us-ascii?Q?wbgXRdoBJE8I8KCh39b1HSLVgQv/?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM8PR04MB7779.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?XnzuX62QH+PLLxFyLS9D0og/hNitZTWPTDw4vhfIpZAVzu3TVvVKIcfMVRlH?=
 =?us-ascii?Q?sAbat/m+x6Zz39ubFjJ5Ud1kehG1xeO56zBt8igGyVtMZrJ3KVnuh15FAHyx?=
 =?us-ascii?Q?NAcKHoFOvCBGl8uNRSeS7U/S1/cu6ofRhoh5w6Hp2h7jbip+LYdpoQVkz204?=
 =?us-ascii?Q?pwg1XDz6iojFP/AdSXptZnJLWsY9A9jqWvzYbf6kz7mLSTBEpUrh7x2G9oAm?=
 =?us-ascii?Q?0AHBnFGc5RP97gX8sOaMbWuHf4bQzGU5Qdyq8bepuxNbcGUTNKFZ8XECWnEd?=
 =?us-ascii?Q?RwsvpY2XMf6cUNJC+/ZSq/I60cKwrO08ZQM2ufN0C12HKMZMxJetVO1RqaiT?=
 =?us-ascii?Q?mtBzTZd8THXIf1Hq6k3OpKs2htzIH5E4Ui05I5YOcw91dmpQBCudhjlFd8R2?=
 =?us-ascii?Q?eQ/Azrey/XioO5rx9kg24MW+6yJQLtfz18J7AL7tSH3ErOIazB/9QnpBIdVY?=
 =?us-ascii?Q?VtX0juw0Oj/NMasD1TinHY2JLKMBD8Jl5O5VKG4EUF/lZ/L6FhxysndDlRWy?=
 =?us-ascii?Q?z2gKeikT/IMl6Q+xw4ldLptGga9u7ACylOH7juGBPZ0r1qzYRN9Vd3lfB7q3?=
 =?us-ascii?Q?zcWkNraCKnfHeE83CCc/CvJ/hfXSrHgVE82fH4bBIveQxnmKogS6iv4p6NqF?=
 =?us-ascii?Q?6x4k30IvwUVZiZbrtYrt4dUvbdh0jOy5LOpLdgykmyklGGO48zD5S09ho9O1?=
 =?us-ascii?Q?Q1CS0NUv3J6MJfFmkFpScEI/nfDBXjMG1m6kVY+8CTnh3PalnK+DTy8GhrAz?=
 =?us-ascii?Q?PHvcEAwM9uwMWZ3oGUcrtd7Nn8cR6Hsp9yGlhIBvDES5K7s6iW6Giv0XilR/?=
 =?us-ascii?Q?h2voNaBkIkpskC+nmVQgH1zAUWI/aXiShEKn8M6x6fOiah0B54j1iivK7PPZ?=
 =?us-ascii?Q?D5elg3HCt2tPNIrF2C1/nSlR0WN/rB680VlsvxUmdv7jEBa915lN8wkdagj0?=
 =?us-ascii?Q?fpNn+8Ga1MesNbALIsLSUms7ks6pKbrZWdkbFgXcDtuphHYqy82NzlAObcbl?=
 =?us-ascii?Q?YZ63y5HXTbDSRBc5aAAnRaWcvntadrMDGwitjHNxr93Qzr431NQWifeXeR8m?=
 =?us-ascii?Q?lOsvAYB7z3MSULrtmkVMA3XzkS161aurEMYHL2FEXDlzyt1viJ5Rx1aSBKJa?=
 =?us-ascii?Q?Imn89XKMCYVdPddRGpcmGMDOlSOeSSMe5N/wnccdXz4UxiWkWJAaY+zLdk/J?=
 =?us-ascii?Q?gpDmsZdZYtDwMQ6tHDaZW457qYyKOVz+eMFNxqgNTRLOSqBS6nzbOO7cd9at?=
 =?us-ascii?Q?pFeblO5RbMUy55++1Aacf3eJjJEMuoKI5+xIRoKvwLR7e87uOsmPIWlTTcjP?=
 =?us-ascii?Q?UVvnL5GplL8ut09AHNUBrhrA0V5dWHVtaDUBkTX935eOYTVVGsAnLYx1sJPY?=
 =?us-ascii?Q?VqoSN9ykFcN+REqt85YAP+ZaV25gS9DGumptje9OhSBBYV0krSefKzv8JGS1?=
 =?us-ascii?Q?O2eAtmH6Um5yXnD9+w3wFgxGgBCVluy+ZZ2UAgUdMlrn5k/s9tTFe4eXxMOX?=
 =?us-ascii?Q?YdX+bV524z9hW6vObOC7MBnRvvI/Q5e1XMPwKotj8wSeVSd84e7ChRpQt2QD?=
 =?us-ascii?Q?2Dcy2k9CICTfjmf72ZbK8oVKzQeuBtN+vO/LDdM96e8UaOMrLcA9f5mSZavR?=
 =?us-ascii?Q?Gw=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e54828db-d070-4a9b-54d8-08dd617f1355
X-MS-Exchange-CrossTenant-AuthSource: AM8PR04MB7779.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2025 16:00:57.1621 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jKnYWMB14PrvdtV/s1jTd6dIk+XL64mDm3JfcqpSjdMRSQF9AwUrxSxg/FatzVDsWoEuZG3RnPzoyELziNUqSQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8703
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XdK4IquZb/EDtY89tyKPaIXZVMXY97eJsuOkd6GBZ/4=;
 b=dQJ3OJj9buenF1RNLpWtWfx/jBfeSmMRZ1wm4yDKKK6u9NtlwjvTtUF5vEU3unSRCn4Q1oSd35cUz4pxkWEcM1dgbDOBXWefH6fq2h2niOp15eSyIi97+5+4Yz9vzs9I95rKRtXL2AKMtBB0UxS+Hjm1JnBfuzujbc/Baq0xAcrthCOjF8KfE8FSbfx2Yg3yKUZcIb0LsYTzoxHDer2mz7ZMnKxM0lS/VX8ZX2gabUKZvQJVTxqCPAf9yhVBTs8LX0jfWjSEsAXARA966BAaYY0Wz59R1Fl2hmOo0859JGwCgfJXPtcu0p8DVuYVuqKiSyh/JKd2B2/TtuLJnKaMyA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=nxp.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector1 header.b=dQJ3OJj9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v9 14/14] igc: add support to
 get frame preemption statistics via ethtool
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, Mar 09, 2025 at 06:46:48AM -0400, Faizal Rahim wrote:
> +/**
> + * igc_ethtool_get_frame_ass_error - Get the frame assembly error count.
> + * @reg_value: Register value for IGC_PRMEXCPRCNT
> + * Return: The count of frame assembly errors.
> + */
> +static u64 igc_ethtool_get_frame_ass_error(u32 reg_value)
> +{
> +	/* Out of order statistics */
> +	u32 ooo_frame_cnt, ooo_frag_cnt;
> +	u32 miss_frame_frag_cnt;
> +
> +	ooo_frame_cnt = FIELD_GET(IGC_PRMEXCPRCNT_OOO_FRAME_CNT, reg_value);
> +	ooo_frag_cnt = FIELD_GET(IGC_PRMEXCPRCNT_OOO_FRAG_CNT, reg_value);
> +	miss_frame_frag_cnt = FIELD_GET(IGC_PRMEXCPRCNT_MISS_FRAME_FRAG_CNT, reg_value);
> +
> +	return ooo_frame_cnt + ooo_frag_cnt + miss_frame_frag_cnt;
> +}

Counters should be monotonically increasing 64-bit values, and as per your
response in v8, these are 8-bit saturating, clear-on-read values, which
I have some doubts about. But I don't think there's anything that
software can do to make that situation any better. Even reading them
periodically and integrating them into a software sum risks losing
events due to the saturating behavior, which is confusing in its own
way. So I'll have to tolerate this.

Reviewed-by: Vladimir Oltean <vladimir.oltean@nxp.com>
