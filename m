Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB73A4E31E
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Mar 2025 16:26:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9E2168210A;
	Tue,  4 Mar 2025 15:26:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ynilw82FlgcN; Tue,  4 Mar 2025 15:26:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CF29E82119
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741102014;
	bh=PbWfiFB+t/NF+pAbAan+6GcrbGgXciAuaFowZVBg8uc=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nH+O5bP1FgfWlqbREs2q0gQLv/NHDnWG+z/g8y4iJOtg1LlCkAZYbO8o/eYrr4P2b
	 Gx8IGTd5ARE1YirVf9lr9EEtMCjWuFlZK0fVUXBgRKKjsd18+YmMwBkteRPbWwdBl2
	 Arzh3xzFFlNG/HeJZKugOHKQizYzJkruJl2gK+2C4ggxs8kajS5eLb6RacmAdPcaKK
	 K3BObJwQejVzx/OekG0WNK6IYzRUdBapxrB6lYSeA2dpnmjWkaB8nJi704iuWJFwA1
	 XnTTlx6MiKVz1I1LUXpknpk3L7jglqr72myx4MP1PqhJWOG7BoRRIUXGEBFfq9GOEz
	 B4YKGVYMulthg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CF29E82119;
	Tue,  4 Mar 2025 15:26:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id A91D5944
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 15:26:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 81D3F40C09
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 15:26:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fkadCVBJkcfp for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Mar 2025 15:26:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.162.1;
 helo=pa4pr04cu001.outbound.protection.outlook.com;
 envelope-from=vladimir.oltean@nxp.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6A05540A12
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6A05540A12
Received: from PA4PR04CU001.outbound.protection.outlook.com
 (mail-francecentralazon11013001.outbound.protection.outlook.com
 [40.107.162.1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6A05540A12
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 15:26:52 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wqfX8X99qrlpuMkdIOzh9POmOOhhQvx0PmBJEZI9mMNDdL3oOfv8buGGMamOP6ODQs1QTtxDJa8wFc3sXutrspKr2uVC3esBwsgJp8Y/DZcHS+f6TkcDKbahsCbFHCXVJCBNjY2w9nGIeAc0bOunKUDj9UmS+lVJzHPeIVch6h8z75QziLG2vVu7hMyAewlhBHcExye2ITwPs7lgZyUHTuPqOuhyfRDd9UHKr31xf2DkZWE6mDOmlnm0/blhXSAqeX0X3En+UAfdMBP2ijiUB8mm0gj9DEJYdcYIRI+711gkrs5skvNbuubNLpuyaJiSCINerVxFjDGhdiFrMiTKMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PbWfiFB+t/NF+pAbAan+6GcrbGgXciAuaFowZVBg8uc=;
 b=fozH3K0k5n2S+sDi8r8UBcsVyh7jlOD8Pn+WaPzeh7wg8/WEQGO4sOTiTwnZ2OVaX3XYZAkX10WNAwCufP3G04cBdlasv3DzENKV9tc2MNRsJ7c7P+cOy0m6fKHEirbHRXi/VaZrmbdkXH+VewJIc5cwxfZ6EkSKH14zno8mD8El6t+wMPTpLNx9f/mzA9PvgeaeviPZQPgSO9bt760OwVh6Q0MKLWrvloM1yP5iBwIbhplzf438hJ9qzL0l7/WlOjTcqEhnkpFDFJAAoWIycfLr51QVTd4RwktlXJnw1PNtlfVpy9hFwjtpQjMPEbNrJzox8vFWrX7lh7mpDwPOqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
 by DB8PR04MB6778.eurprd04.prod.outlook.com (2603:10a6:10:111::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.28; Tue, 4 Mar
 2025 15:26:48 +0000
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2]) by AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2%6]) with mapi id 15.20.8489.025; Tue, 4 Mar 2025
 15:26:48 +0000
Date: Tue, 4 Mar 2025 17:26:44 +0200
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
 Andrew Halaney <ahalaney@redhat.com>,
 Choong Yong Liang <yong.liang.choong@linux.intel.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, bpf@vger.kernel.org
Message-ID: <20250304152644.y7j7eshr4qxhmxq2@skbuf>
References: <20250303102658.3580232-1-faizal.abdul.rahim@linux.intel.com>
 <20250303102658.3580232-6-faizal.abdul.rahim@linux.intel.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250303102658.3580232-6-faizal.abdul.rahim@linux.intel.com>
X-ClientProxiedBy: VI1P189CA0018.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:802:2a::31) To AM8PR04MB7779.eurprd04.prod.outlook.com
 (2603:10a6:20b:24b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8PR04MB7779:EE_|DB8PR04MB6778:EE_
X-MS-Office365-Filtering-Correlation-Id: e28b616f-1f52-42cf-c731-08dd5b30fb11
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?6uyF6DBdVuTbk/eXQnUZOMDAQPVuTftaQyT/D8QfLOURSHcg0sfyCDjwakVd?=
 =?us-ascii?Q?LhhBHjR3eRYHsCYZ0LoslRMDAikmznPCJWoX/dbkpFQGX8c+n9GMQIw30x6D?=
 =?us-ascii?Q?A4sFXKLhCSGwa2xfOycBhS9sL/GWEfu7fkGYgQD5JRmWktcWiJtYv9R06gKT?=
 =?us-ascii?Q?xjpWsCgP3zVsuK9LxvhIU+h4n9eLSGVIA0XJHFCtk+ltUDH/i1pAsWrGrEfk?=
 =?us-ascii?Q?SXU7EVUhtJeHS8kl+7i6Fh2QImaDmC81pfmeeFPMWRyoE883NWmSBRaL5pT2?=
 =?us-ascii?Q?cvLhuGtlVcVcdAtOXXe5bai5szIlYXZXYW4XH/h2pMIkem291uMaKPNHqN/7?=
 =?us-ascii?Q?FuBavMT8QYQAZP8xzMOmCZOOwhIuJx6JnaqmeuTnjwPOglsqK78Nf3r0Z9Py?=
 =?us-ascii?Q?RLv5c5lpXhGLa6hSYq2rapCwI9qqBmVxZJeagrsY9EYumRPwYO1mBfF6iJNl?=
 =?us-ascii?Q?xMG2HyDLAH4eg4NBYZivNDFTkA3Zakqq71Z0HYm1BmBz4RtNra5m82MF1eNW?=
 =?us-ascii?Q?uCaOriVKzJqTsdGF+XiG1ZG5NDuy3XxhbXFgemWOQM8dkCvX+zBWFLCN86i7?=
 =?us-ascii?Q?9zjV2svN0SMfxmcYKknlpHvWFtRTCnHy6CQyP94VbouwSOqk77mTvDfVPJ3k?=
 =?us-ascii?Q?c9QzzFORGTKQYnSDWZShow5hw95DfmHR7sKfTcVGti+GX/l2BTYtseCjikRO?=
 =?us-ascii?Q?k+JmXueFujS0f4uEdOic3XMshW4KvgNehQYeJOh/Wh+KXxhfk1zbnTCSicd0?=
 =?us-ascii?Q?aPLuhLf2WKCuqRTiH5Nxp8PSBJb1mDFpNGWuUVQ4XO4hJNb6TYKcmaIr8tC1?=
 =?us-ascii?Q?Wiw3vhrTAp7lqUvJ6sVj3rJBFSR7rqH6u0KMIKLrq8iegZVdd1vytfljTRYE?=
 =?us-ascii?Q?w0RnKAaUaX86L/QaVSYilvYslmV2g2lz5zHEakFJ+fzBBJaFygRGpqcIIaro?=
 =?us-ascii?Q?Omp2EzwUukPtgfnzHR7H21Jwp8c1wI44S4l++JqfkxxdO0/hKhjZuYhPqx//?=
 =?us-ascii?Q?C+9MO0Ldz5NAfgUPdjtrumCJYdcWWuL/7g6rMb5dkQOsJ8J3xsuYDIB89nRX?=
 =?us-ascii?Q?VWPHwJk3dOpCmj0iXK/4CdnqqewMlz+qH2QUGDWs9YRde9vu558tfhDyOFUF?=
 =?us-ascii?Q?30sRPdZ2JxyZ+I+OPJ3ExdCXV3m8uKnzNYV9lLDHUOU1737SftGM78auA5f9?=
 =?us-ascii?Q?OFd/39VksXM7AhJApn5kDMf6iaQf2aNkmteQkv5s35qPwIwXD/o68o6Eklk3?=
 =?us-ascii?Q?U+XIM86lIeopz9vLbO0Xohzl1q8lfwCkVJ3esVcjqyKbYO4ozO5nU/vksfT9?=
 =?us-ascii?Q?bsSDOnnI7SC2ptH2DyvSpoW3KX8keRUsdXGt5o0Cpjj9mP1YFaEkQqfrvHe6?=
 =?us-ascii?Q?Q+TdQrAkvfOugfToe0zwTJOqdsMG?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM8PR04MB7779.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?mKzL8bYOHKEP5wOTTrg385rquxktexpVmKgpcwH/nSh2SGm6nFLeZe1NhjzD?=
 =?us-ascii?Q?Qws+YDWFoj68EWSvN47z+rSo0gZPKdSxgNpHL3tSUYi23w94QN2dOQfnbl51?=
 =?us-ascii?Q?jdIIg0BLOpnstfAv6JBHONR0vrY4gySM4F3sy80S/cIQ8Ck9s8MkHrzSoTNm?=
 =?us-ascii?Q?4ZB5ALDXjEYWweC9H8XM8qhFuQnRBZng6ZiotpIZh7szSWcbDHZo0OtrL2JB?=
 =?us-ascii?Q?/IV7in5v9WRuC4PeMsiTcE66cBcVV++BATx7StYUtzKq5B+0M7ct/Dvg8efL?=
 =?us-ascii?Q?1R7mGhtJdLLl5hc72U2wVfu+jn8dh5/bgjjvZ+L0Q9cpjQKIbdTi/xAiipld?=
 =?us-ascii?Q?InTPDuej7zr6vGltQd8mQ8bSwqvwX69XTC2XgKiMLiC6Zjpavzh/UT700sF+?=
 =?us-ascii?Q?tRxXSGZjx59bVFjkm9mx/kooK5+d/6p8JsoaiTBY0J4RgJKEzJoFJVA5CaWM?=
 =?us-ascii?Q?UE2C7c8FBEXccxC3iy3g3IY22X48ypp6qgn49cHtVYyL5E9CqHL8jbW6GZ1v?=
 =?us-ascii?Q?A9ICzJZjDMNJYgvZvui2Czl35H83uVHUcIRDF9f0BDDRRHmYhNE6fycJMPOk?=
 =?us-ascii?Q?2DYmJJ0TQNUdgqOf5KwiW+49K/YflUBKb5yZlhREmnLQ8pywyU5c1DKrw+Y2?=
 =?us-ascii?Q?mcpA8/XsvzBUqspVGwys6WZuZa67vjWPaD3+FNghvlzPeC4On1mBmuLfCYps?=
 =?us-ascii?Q?t8NndzJgW+48+zdFtiTch7qERW0soFldOpkwWgeOyA32+Ofg69kCM3vL87Jl?=
 =?us-ascii?Q?KmiIJHdJ4zj2nd7fIf86XgOkQtbzdod9935kzn4YsKPrATiRIXdCiY17yJYL?=
 =?us-ascii?Q?Kr4fnkUus6XfRg71TM4syMKAVzk1aVZVjibDv/zPvFkQitFQulEyqe0NTtcS?=
 =?us-ascii?Q?/nqNyO/wuwMMlEx0eDjuj5iaTe+U91v467VMVX7+QMlxraEMCS+Po+Txeo2M?=
 =?us-ascii?Q?5J4Ztg8MYlv4m7PlpiD6k9FhA1HxwiSjQxcHULUggZa9wkV0RHom3ZObV4RS?=
 =?us-ascii?Q?RPxSXyvMyifQA+Dt1qew0Xc2ekRJQ1jga2DLVgYaVFXEM6+lPPHV2TgxvgVU?=
 =?us-ascii?Q?OBM0AbxgaHp+XK+aPWuvVv70gYUAUprqCc7+vbRsAx0bEiE5/uems+UgPJX6?=
 =?us-ascii?Q?SA1Z+6f0u2E+diUDfbw7IJQJIXZ8sG2n1mrnMS5JUst7xQtDGJtQfOsXgeWS?=
 =?us-ascii?Q?KoX++bZQod+warOumBCfuRNAkfleDnrlZjEdQD86bCp9FnX9gbQqXn4lZdSo?=
 =?us-ascii?Q?jM4c/go4cx6jRTfN9NP/wHUVliQ7HnQnFZxO1kqsFd+J51EW9qJgzyP+wnbj?=
 =?us-ascii?Q?oPZlgkLMmi/t7utqzSyzR0uoF8NRWzbziGVsqymARBkc9HgLQBTqm8RcGJqQ?=
 =?us-ascii?Q?TGBqlFAzdk0ad2vncqRiKWEeEiUSiTIErXVQqCj+Qjolm0JvPj3aucVlCMrN?=
 =?us-ascii?Q?0zl2gqDMC5K+v4LunX1/trNXKY9S5yvtxX1UDoR0rBBM4G7a1irraicZXUfW?=
 =?us-ascii?Q?H+GvgCYGBrKd6ZHBZUykGR23ioPCFgx8RdsZktZOFccWJEKRtzVr3Gw4ifcT?=
 =?us-ascii?Q?bRVSKqmLmJhoFqGfoUl4TcTsiIzRlFFSjZFubU6nUTrGmXAYsUY+iXGWjFHP?=
 =?us-ascii?Q?2w=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e28b616f-1f52-42cf-c731-08dd5b30fb11
X-MS-Exchange-CrossTenant-AuthSource: AM8PR04MB7779.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2025 15:26:48.7092 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ybz3lXqt1wN+60ws22a1Er3LLsWydW81HeK9Gy5SQVbRv+NhSnhv+SttBEmg4aqX+mKS8kZNvi0niyfGEfg1Ow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6778
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PbWfiFB+t/NF+pAbAan+6GcrbGgXciAuaFowZVBg8uc=;
 b=hTQJVmfXE306cWjtP3D1HxpS2pSQ1QYKpH0QP38e2pzV/TK5lKY+Pl/pP/hYP3RDolM70DqNjmQr30PAdJh/wu741UyPHBDqTlc9MUpA7cI+wOFEIAcpCpmQbKonnDpk5a5Ca6I2QoLUzSOjp/I8touVOhm4jLo4Ou3ujax9YoZoYhay1Yeawyhsfi4U6mi2wAj/61/WjhMeBKTXdISOtHl33WL/YO7gOKHJMxvPIHUDKrU1t8CKJ4DS3oLm5vNHkefsgsntorGWYtHfmONugWd1b005q0uZufZalTX8n3bGG8yPv4Ct94wKvIJjjjSuGMiFUyczZjLO6qvKG72/dQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=nxp.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector1 header.b=hTQJVmfX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 5/9] igc: Add support for
 frame preemption verification
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

On Mon, Mar 03, 2025 at 05:26:54AM -0500, Faizal Rahim wrote:
> +static inline bool igc_fpe_is_verify_or_response(union igc_adv_rx_desc *rx_desc,
> +						 unsigned int size)
> +{
> +	u32 status_error = le32_to_cpu(rx_desc->wb.upper.status_error);
> +	int smd;
> +
> +	smd = FIELD_GET(IGC_RXDADV_STAT_SMD_TYPE_MASK, status_error);
> +
> +	return (smd == IGC_RXD_STAT_SMD_TYPE_V || smd == IGC_RXD_STAT_SMD_TYPE_R) &&
> +		size == SMD_FRAME_SIZE;
> +}

The NIC should explicitly not respond to frames which have an SMD-V but
are not "verify" mPackets (7 octets of 0x55 + 1 octet SMD-V + 60 octets
of 0x00 + mCRC - as per 802.3 definitions). Similarly, it should only
treat SMD-R frames which contain 7 octets of 0x55 + 1 octet SMD-R + 60
octets of 0x00 + mCRC as "respond" mPackets, and only advance its
verification state machine based on those.

Specifically, it doesn't look like you are ensuring the packet payload
contains 60 octets of zeroes. Is this something that the hardware
already does for you, or is it something that needs further validation
and differentiation in software?
