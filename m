Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A5E867ABA9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jan 2023 09:28:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8F02D40247;
	Wed, 25 Jan 2023 08:28:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8F02D40247
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674635297;
	bh=qYwsLXdJPzlRGqCZewsdQt8CFQusejgjNMKT/RudGxs=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kV+uXo56Q/cCFezm81yuxx6lwoj2Y/tjPbt23N296HvnyUwVbD2Zq4JyoEzH/cimT
	 WVk7ZYnxPKLJYZGr7zasIENml0M/6VR+r5VvGE/PYFowHV4KC00vANmbZP1X3WXpt+
	 mKdIdK9uP1qjmHKwcSju/t0svbt7dvSSEjJaFdE31AuBDFwttAsCuzddPc8JFgfxb3
	 7NiJxBBfTrJ554oKVSNhoOXEddHoRobeTsX9kdPwMdSU5gnQ968Dx5rnvvnvaNP3Pm
	 HPnN8WhQOcgpKp2yYOMnfEGYMQhKQZlEVhkjL3OxKI4wyUepGsFXufcRf9rANHC9qf
	 gUQ7eVig8nC1g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QOD2me9CkxvE; Wed, 25 Jan 2023 08:28:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DFC4841833;
	Wed, 25 Jan 2023 08:28:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DFC4841833
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 438301BF3A1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 08:28:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 118FF6111C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 08:28:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 118FF6111C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IAg8ANpwKPHk for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jan 2023 08:28:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 478F461112
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2135.outbound.protection.outlook.com [40.107.220.135])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 478F461112
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 08:28:07 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EfOBJEFcMd8j1Z0vtBviNy3aOe/QVimqAav9r25Ahp09hHqa54EXyejz5BlXqKSg2VnhrhF0exhB4Gf40F9WGPfghsrQjc47qe5THxRx2azaSeVx7iXvW/X5Y7+EjXVZiUInvdSJPxqq08xGviEAWqcfXzvgg0eP79Jm/7w5J7r4HzkGgmjXAfij6trPMLWry210YijzlbpM90hoJozzcTIdtdrFqVLnzCLWDmwA2vLMQwJmfCp5MNYpBMl5JLsD7Vz1fQJcUlYzJdHvyKQjCZvnIiIobBHwHQllDh/5lXJ0KdVkFFS60bRwNu2PNbxEG9nciQx6QNXIHpP9RwNyHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Au/dr5vUF7kRqpL25Tlx/ZTpZxyndz5P/xc1KzHTrgo=;
 b=nF8JsO9+xRrC0Hh3rvC+/Ui3JA4EI9efgNKvxBSe2to0NvJu9ODzEmKeX+bViwobIQABppoVmeN/oDrsdAX6PLKW7olvMVAc6+a/nEEccjnBwXABJK2XxvZuoD6Zo9DPFBjIrykKii92R6L/yZWolmGq//j/mw2aghuqcYFuwDRBgbDv3m+yWU5zWzzeknQ7jGpCJveyl9GkCIVtGlCSDFj7Rw31Im+Ywr+VsDbrQmL8RKvAKdcgJ8h2pbStbX/K7vkrc6K3DafyXjaNL+HeHdDl94QO4DseAXsUpn32Nl59ekMuEzbH0P5kR8O3fITjHmmn0gd7ihn9ocEwhbqH/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by BY3PR13MB5059.namprd13.prod.outlook.com (2603:10b6:a03:36e::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.20; Wed, 25 Jan
 2023 08:28:01 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::eb5c:910f:3730:fd65]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::eb5c:910f:3730:fd65%5]) with mapi id 15.20.6002.033; Wed, 25 Jan 2023
 08:28:01 +0000
Date: Wed, 25 Jan 2023 09:27:40 +0100
From: Simon Horman <simon.horman@corigine.com>
To: Lorenzo Bianconi <lorenzo@kernel.org>
Message-ID: <Y9Dn/O+UInsY6rZI@corigine.com>
References: <cover.1674606193.git.lorenzo@kernel.org>
 <c1171111f8af76da11331277b1e4a930c10f3c30.1674606197.git.lorenzo@kernel.org>
Content-Disposition: inline
In-Reply-To: <c1171111f8af76da11331277b1e4a930c10f3c30.1674606197.git.lorenzo@kernel.org>
X-ClientProxiedBy: AS4PR10CA0007.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:5dc::9) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|BY3PR13MB5059:EE_
X-MS-Office365-Filtering-Correlation-Id: eaf2e9e1-3e66-415a-6949-08dafeae1203
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4MyzJ3ioyLLgot4zEpTI6mse5lqqWlxCxfbgqiLgBaOb1Txw5525iarLTlXXmHg5iC60SJXPoAFHxpjHHfnkluyVdfpQMRaTBWdjGj8leqiw85/mY/VWwi3VbEJATOTfhHn0t6dvCZvingrIRI2qMcm8Lh6URGtvkNN3fsqnQDUBET8+yo/yQqw+GefbKGAk2AOhZm06sAwu8nx2a4VRBwrizOvFTxkq/NNeyji2p5ibBzuvJzEDt/uUuEEzWoK3JFkbwjFIbbZUNYQbgdrbXfOBpZZN60FupbYl1SVacnypS1TRmS6YATqrnsjEIe8Vp3JpiJPlgfeDgUPyhRfJvkOBWbPfvhQJPpl2uD9VVFjHN2czCFf8zmoLWTALwMZRsEC8hDmJFGdHKaUD/8SomdRQa4+SjWsq3V32CuA1qwfeZrSOv/ARBOMc2L8H+7NGSAmYQWpVOfvAaBE1l3DjyFVUoFw/i93kB5QL7P5DmNsUO/FphIol1vGIU53GUO7QXKCJeNzMMVma7TGAUia0yks2vt54hvBfnuO80CkbfiDN8cctcTdQ3EarGcON0PiR8vasHiyALbtl1Z2AkZicukXXBWz+7Od0NeROggUUuZFlbbKSUKDh+8tV1FQvkwZ6TSRnm7to41eYRvvD4gceWA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(4636009)(136003)(39830400003)(376002)(366004)(396003)(346002)(451199018)(38100700002)(86362001)(36756003)(316002)(44832011)(7406005)(7416002)(83380400001)(2906002)(66556008)(41300700001)(4326008)(66476007)(66946007)(6916009)(8676002)(8936002)(5660300002)(6512007)(6506007)(186003)(2616005)(6486002)(478600001)(6666004)(107886003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?aZMSr2uFyC+VEE/to6JBlQNttyKvo9lsHCI965tLkgBC96EgyTYtiUOiN7+X?=
 =?us-ascii?Q?ieywewGEGvyq4yoClbIwgcCp/FH9BCrgEecgDnCvI+zkGXvT6dulbH8lIu/N?=
 =?us-ascii?Q?lNcKlbDu3Vhrrdz9d4qJAMVnF7VsuA0mLjYxOMfD6qJ0EPIxXFox0YnP4DHs?=
 =?us-ascii?Q?x7CiUU5CCbD5ThAARvZKgsL4QHTsFS33GxxO77uKfuWlMJ8nVYfUaWfwCgNs?=
 =?us-ascii?Q?J7/CNmqr7XStfDVrDJvKO9bhTiM1EsFyqbsFT0n6ycO1zGM1hzKVygyHjNJn?=
 =?us-ascii?Q?F298LN2bCRo3T0pzlEKvs68OgmEA45StBLj4W7TBIPUww96kWBJxYd61vqbc?=
 =?us-ascii?Q?sIf7sZNW55DWzwCpw8aKgUvlkF+tlY7k7PhPIPh2Hoq3xrS0T6U9YhTUln5K?=
 =?us-ascii?Q?5PlZdPqEYgC3TQ/tYGDlclNOKQMidxgC9CggTNsqrom+y81vbheJnvpq2tYo?=
 =?us-ascii?Q?jygO/QiuPe+8K+Dr2nGnJKuKmdv2tj2lv790Xrhs2RvqhnYsFW0u+1/aIank?=
 =?us-ascii?Q?mdJ+9IqizvI1CCTjBF7oZU1CpFBL5K3EhbYh9GnL9uAqiRGCkWw/sZifItZc?=
 =?us-ascii?Q?GQ7Nv2sk/ZvmM+c3DmmFvI2tU/le6OCo7uO32lozPSm7ruibzteQ4zb7GOfd?=
 =?us-ascii?Q?yxpgRB2Q1OwXPCQ0LPz6kqu6IpqptNJrg+HPcqX9ytaZOvoRHoTcNGxjRHbC?=
 =?us-ascii?Q?PY72/gldBR6vwG7zGf7Y/OlC+hWr1MFc5mgq3fbRSd42578IRc4c61UUEZ7Y?=
 =?us-ascii?Q?bsTz7RCXlSfLTWFeR7sZhOS5iu5XMBhzx9fo6Iko8auHLYCIagwAisa/E/PM?=
 =?us-ascii?Q?UG9OhObx1StMHAO0ppJXGMnbRu35X1J1dJaLBcLXKdE4TMQwHJum8NHm6Ov/?=
 =?us-ascii?Q?sR/NJuDE5rNwg6Kk8aP+J7DbbWj7CUz03BLOQ9rlj1NtuRVrzKtETTN3UGIW?=
 =?us-ascii?Q?iCAk4FmXcOVlwp6K+Y0p2+pYyMe2NhY68igE5LRb8cBAILJNc7I/XWMAWWb3?=
 =?us-ascii?Q?f4iFNnamEAbc5DlKEj5dN3in6l1laFWTiERtkRFVSeveN+RxQIwavBDJMZED?=
 =?us-ascii?Q?Ahu1hq02S3e83keEWT8YSEjyA/98E3jftoTwz7rfSphnYBRuhBWSWoIi8mhM?=
 =?us-ascii?Q?wPUh+iGXMLAwHyx3B4X+qanV5hNLaXGjbWkWChwnH2gCa5UAjB6xHO744LVX?=
 =?us-ascii?Q?8ewYtziv7W1pI7LCeUfav2ojdWDg1MKBkf/yl1aLhbSzYvm9RZrzEN72SGIB?=
 =?us-ascii?Q?CZN09lfdHPV7YSmAnmvyY0cHZV3CCtLcDn4EngOcuwgHy7qvejG+em4CGXMn?=
 =?us-ascii?Q?GOR5XMtcIcioHSOSDTHD/Y9laVhUXZQG9uJKVM2BrnrtnNugg2BnM9nwO3kD?=
 =?us-ascii?Q?jFwKZqPLX9uvnPYsSUCs+od5z6fM0wmB4dwQhZneGIVuT1ZOtUqUeoLvL4ZM?=
 =?us-ascii?Q?jvfO3T6irLtNBKDhCN+W5ZyU+dWvtCCSMxll2RIzKDIalf8vsOKMSIPO8X+o?=
 =?us-ascii?Q?QHN5YFmexltKXkaiGyI22E7cClN+IXaeNEXvuIHbQ6s2MnpHzJ5AAFqnVAp1?=
 =?us-ascii?Q?yY8ZE3RJ3QAfsU865FB396IZas+7OUlXhC8siPN7JCjbdDIoEpsJ/QocLULA?=
 =?us-ascii?Q?3NwHb5/2blQh0/R67J9ZcuJn4kIAtyEwGlkFYzfc8LfPYRgqy+jHMTclc29k?=
 =?us-ascii?Q?tXKNAw=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eaf2e9e1-3e66-415a-6949-08dafeae1203
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jan 2023 08:28:01.0699 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5v3lJ3JKkcVads6l56qFTeTJavKsmMD0PF6ouNjGTAkR95A0k/EouxEKBpuLonL50tu8iE0vKDTD52S6BDlTmo+ddQyu5Ke10SR1ZrGxxk8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY3PR13MB5059
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Au/dr5vUF7kRqpL25Tlx/ZTpZxyndz5P/xc1KzHTrgo=;
 b=USYYMLeBUAp3sEDS5wZqWF/2uNqDT85cSPhI12p8RIqJI9Z6eZxHUOQ8udcqjRdr7HE2ieZrjr7Uscad0ddduoWIzRz8PTbe+wW1MEe+JrMsqOJ/oy9IFt9574VSjPPA1jRv6mFswEZki0OmSjGDO+Ma7QyrQlBHd0AW8oHNDHU=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=USYYMLeB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 bpf-next 2/8] drivers: net: turn on
 XDP features
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
Cc: mst@redhat.com, vladimir.oltean@nxp.com, ast@kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, daniel@iogearbox.net,
 Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund@corigine.com>,
 andrii@kernel.org, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 pabeni@redhat.com, aelior@marvell.com, hawk@kernel.org,
 christophe.jaillet@wanadoo.fr, memxor@gmail.com, john@phrozen.org,
 bjorn@kernel.org, bpf@vger.kernel.org, magnus.karlsson@intel.com,
 leon@kernel.org, netdev@vger.kernel.org, oss-drivers@corigine.com,
 toke@redhat.com, martin.lau@linux.dev, ecree.xilinx@gmail.com,
 alardam@gmail.com, gospo@broadcom.com, saeedm@nvidia.com, davem@davemloft.net,
 nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

+ Niklas, oss-drivers@corigine

On Wed, Jan 25, 2023 at 01:33:22AM +0100, Lorenzo Bianconi wrote:
> From: Marek Majtyka <alardam@gmail.com>
> 
> A summary of the flags being set for various drivers is given below.
> Note that XDP_F_REDIRECT_TARGET and XDP_F_FRAG_TARGET are features
> that can be turned off and on at runtime. This means that these flags
> may be set and unset under RTNL lock protection by the driver. Hence,
> READ_ONCE must be used by code loading the flag value.
> 
> Also, these flags are not used for synchronization against the availability
> of XDP resources on a device. It is merely a hint, and hence the read
> may race with the actual teardown of XDP resources on the device. This
> may change in the future, e.g. operations taking a reference on the XDP
> resources of the driver, and in turn inhibiting turning off this flag.
> However, for now, it can only be used as a hint to check whether device
> supports becoming a redirection target.
> 
> Turn 'hw-offload' feature flag on for:
>  - netronome (nfp)
>  - netdevsim.
> 
> Turn 'native' and 'zerocopy' features flags on for:
>  - intel (i40e, ice, ixgbe, igc)
>  - mellanox (mlx5).
>  - stmmac

nit: possibly nfp goes in the above list too.

> Turn 'native' features flags on for:
>  - amazon (ena)
>  - broadcom (bnxt)
>  - freescale (dpaa, dpaa2, enetc)
>  - funeth
>  - intel (igb)
>  - marvell (mvneta, mvpp2, octeontx2)
>  - mellanox (mlx4)
>  - qlogic (qede)
>  - sfc
>  - socionext (netsec)
>  - ti (cpsw)
>  - tap
>  - veth
>  - xen
>  - virtio_net.
> 
> Turn 'basic' (tx, pass, aborted and drop) features flags on for:
>  - netronome (nfp)
>  - cavium (thunder)
>  - hyperv.
> 
> Turn 'redirect_target' feature flag on for:
>  - amanzon (ena)
>  - broadcom (bnxt)
>  - freescale (dpaa, dpaa2)
>  - intel (i40e, ice, igb, ixgbe)
>  - ti (cpsw)
>  - marvell (mvneta, mvpp2)
>  - sfc
>  - socionext (netsec)
>  - qlogic (qede)
>  - mellanox (mlx5)
>  - tap
>  - veth
>  - virtio_net
>  - xen
> 
> Co-developed-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>
> Signed-off-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>
> Co-developed-by: Lorenzo Bianconi <lorenzo@kernel.org>
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> Signed-off-by: Marek Majtyka <alardam@gmail.com>

The code below matches my understanding of what was discussed wrt
earlier versions of this patchset.

For the nfp driver portion:

Reviewed-by: Simon Horman <simon.horman@corigine.com>

> diff --git a/drivers/net/ethernet/netronome/nfp/nfp_net_common.c b/drivers/net/ethernet/netronome/nfp/nfp_net_common.c
> index 18fc9971f1c8..e4825d885560 100644
> --- a/drivers/net/ethernet/netronome/nfp/nfp_net_common.c
> +++ b/drivers/net/ethernet/netronome/nfp/nfp_net_common.c
> @@ -2529,10 +2529,15 @@ static void nfp_net_netdev_init(struct nfp_net *nn)
>  	netdev->features &= ~NETIF_F_HW_VLAN_STAG_RX;
>  	nn->dp.ctrl &= ~NFP_NET_CFG_CTRL_RXQINQ;
>  
> +	netdev->xdp_features = NETDEV_XDP_ACT_BASIC;
> +	if (nn->app && nn->app->type->id == NFP_APP_BPF_NIC)
> +		netdev->xdp_features |= NETDEV_XDP_ACT_HW_OFFLOAD;
> +
>  	/* Finalise the netdev setup */
>  	switch (nn->dp.ops->version) {
>  	case NFP_NFD_VER_NFD3:
>  		netdev->netdev_ops = &nfp_nfd3_netdev_ops;
> +		netdev->xdp_features |= NETDEV_XDP_ACT_XSK_ZEROCOPY;
>  		break;
>  	case NFP_NFD_VER_NFDK:
>  		netdev->netdev_ops = &nfp_nfdk_netdev_ops;
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
