Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OHwJC0zG8WkbkQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 10:50:20 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F1357491595
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 10:50:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 337D9408FF;
	Wed, 29 Apr 2026 08:50:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id drVllRAQ2Yc9; Wed, 29 Apr 2026 08:50:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AC0F240879
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777452616;
	bh=LQLqNpxiHzqyaKJUMH/ez6l3d9w8YGE6tFHvQC8fbEY=;
	h=References:To:Date:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=JKYxb24OKesqzPhcVJsHihI+z19P5uQUcvj/VRqda3e73Yu7U9/vmbGNAbXRCAX9b
	 gMuuXx9OmMiFQTMGP8Jy0t7tUGwQrSGoasCuvfJYAvSYlU9AqdkOGVbAK2X339G6fS
	 s/SrjBj48EwcNbredl65Xo7vlo9sQmbinGCNlpEJPG8syK9sWfU47Nz41KuIetAyu9
	 0LMhVGVFn29k3WlMtCrinI5d0DRKsGYgWyRkvom24zeAKuRGHhAD7FEARg2NNh4gRJ
	 3ojGruuIqthgHknU6HDRHfFqauO0Jv8c+PZUVXSiGjEkaVdxhA3FjoawGNFonGDmxY
	 dZJx/KsKhrIyQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AC0F240879;
	Wed, 29 Apr 2026 08:50:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id E6C3A23D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 08:50:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C9A99407DF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 08:50:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iFwxoF3epwtY for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Apr 2026 08:50:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.43.23;
 helo=sj2pr03cu001.outbound.protection.outlook.com;
 envelope-from=petrm@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DEE07407AA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DEE07407AA
Received: from SJ2PR03CU001.outbound.protection.outlook.com
 (mail-westusazon11012023.outbound.protection.outlook.com [52.101.43.23])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DEE07407AA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 08:50:13 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hY83tl5zWYmkRsL3redkyiMshVBG8QXjdSvPfPVrXUJPRSmVKGsyuvV5LKptsV1zjds1nRtqa8MyX1FgoWBsgJXwBXWo8g11EgirgKS/kiJ23ObBuTws/vFRTgOIJ1WsHlhWIgtmOu6Bni4JDCMOTDBIzaMZxamf0SMsxTtmubohvsBvCnBQpBjfej8fLNqhfBr4EOI3FVUif5bsE9Fd4MfIlpEtH8U+nx+qkKNq87wFNArIAaSRcnialtv32XpYjXhtkSB10FyV0qhhKt7lw3MwjXoYtfgZD2RFhML8iqU51OAqzkYd1xd7qd+IH2JL1RjUbqb9nVhrHYAhPhQ1bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LQLqNpxiHzqyaKJUMH/ez6l3d9w8YGE6tFHvQC8fbEY=;
 b=vJhOqWRWIc3IQAEEVTeL7ES/gLOMjUB/eaR+Hdyl/0XbdSg9kvuqhVmH0j73CWfZreZJcaG1C1UBir7eIw07re49Csp0kKFvbHJzW+0/vNDm9LA+OxUa3ZLYONRb36AbUmjjjK7glbzZLQEdfKRYOe0Z44LsawY715OVPqo/DtGmzis6z6w7sGRl18xpQHjb7+NlQexyWPDWQzA2753UobGokdiv7NlqB6A6ZD7OCTKsRNCc5RDq/7o06TJy1urhA6ECNrnLwpWeGIwL6muyC3e4HJOS2C+LPeFY6N90XFFJXviuHnlfE327C8n3TQeYIUfMFBiNvnbo7qK6+kEbCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=broadcom.com smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
Received: from PH7P221CA0027.NAMP221.PROD.OUTLOOK.COM (2603:10b6:510:32a::24)
 by SA1PR12MB6918.namprd12.prod.outlook.com (2603:10b6:806:24d::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Wed, 29 Apr
 2026 08:50:06 +0000
Received: from SA2PEPF00001506.namprd04.prod.outlook.com
 (2603:10b6:510:32a:cafe::47) by PH7P221CA0027.outlook.office365.com
 (2603:10b6:510:32a::24) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9846.30 via Frontend Transport; Wed,
 29 Apr 2026 08:50:06 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 SA2PEPF00001506.mail.protection.outlook.com (10.167.242.38) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9846.18 via Frontend Transport; Wed, 29 Apr 2026 08:50:06 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Wed, 29 Apr
 2026 01:49:50 -0700
Received: from fedora (10.126.230.37) by rnnvmail201.nvidia.com (10.129.68.8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Wed, 29 Apr
 2026 01:49:19 -0700
References: <20260428171845.2288395-2-u.kleine-koenig@baylibre.com>
User-agent: mu4e 1.8.14; emacs 30.2
To: =?utf-8?Q?Uwe_Kleine-K=C3=B6nig_=28The_Capable_Hub=29?=
 <u.kleine-koenig@baylibre.com>
Date: Wed, 29 Apr 2026 10:48:33 +0200
In-Reply-To: <20260428171845.2288395-2-u.kleine-koenig@baylibre.com>
Message-ID: <87ecjyp2wl.fsf@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [10.126.230.37]
X-ClientProxiedBy: rnnvmail203.nvidia.com (10.129.68.9) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA2PEPF00001506:EE_|SA1PR12MB6918:EE_
X-MS-Office365-Filtering-Correlation-Id: 3ac9ec40-87ef-4187-449c-08dea5cc4ffb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|82310400026|376014|7416014|36860700016|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: 8bq0fNVdErK4WgmgmX98zjVtDpNSMsWKivTTVE/IWpgFq4XTAVxIR+7mnHc+8pTKVppfzGkS2zTLghNh7Z9DhHJO3ZOKX44mLzsWK+m9v0E5NWcrb88pylNU6dG36gTOli6l4HuVkIn0XvCy3qQ/pPaZVoYC82p+z3UF7oTe6T+knQjdscNOJPh9idGYCFavt2NuXA/lor0NrB+sPfPQmqY5Mu6SMLqOvGqvqDTKueQOoxfUGU2Ek5qbVIWl2iVJ/lGI7M8Pur5M4Df0kqel+/AINfIKeL2cLddQcwQZzKnDyJtcOGeEzVdWGCIYAsIROPoDbdlK4nCRVsfGtAZFsG/oTmU/7hOnSBcpq1icWtuJIma7ITowC+DOYVCMjMxxvlrzDlD5HicAsKOQ4w02itJq6FeJIDFqHBV/q+fq+rCvQftHBAK9GVCCpykjCpGQK+wrtBnwOWBjVmWHpSL+aeLnG2X9jm0RvdgjUvGv7boFFVCioEt5Ip8glLwqNzUeSIKzZAy3EV2DO5N/CScCAmLXDAH6vPJglncPs31dOCDxS9XO+bVo1Fb9eqmbZCQAU7f2agqt/jkMWKmvQAksZG5MBCqYh5SilJwcYznME4NBp0ZiuZSNN8tWgrO/XJ1KldanvFnhbE5d1Z6Sdn7EVc3swY0voLaf5yam8+H5JG53r7li13LRLIV8vN4cXR6FJc5tdpFaKEr9yQs6Wa0QFv/m5/AOzZEEg91q9PQFji6FDPE9u/PIeU/xRwBM1PmFgPMPpUQ5XI6H9h0AemLJWA==
X-Forefront-Antispam-Report: CIP:216.228.117.161; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge2.nvidia.com; CAT:NONE;
 SFS:(13230040)(1800799024)(82310400026)(376014)(7416014)(36860700016)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: P3sW3KbOswvfaIRcmHKUoye/TZNkZp5JpakbOBbshdfFspxo1WuSGKTEK14QvYoPD5HYD09YWWQrCxOo2d84gwqhplgVUau8IEHk9Mqr7hb+5SdvRZGZhh3E2p2gus3LQ6Ql977h7ox8bdUKwS2gz7IV0VoAl+HDuvOfxoL7ED8/SgBRDG0BpdXOa1FaA9wcEp5MGeiPUIBftyrGqz9Nh6og4hHSkR8TPLBTjbpeONqYKpcVdoly5KgasMYIn8fThqg3YUeVnTSYwAV/zEG0qkKsNaYLqhlRFPRX53AmbDDSvhCufFpNd9jZbI1yPq2rdE31uJVXoQPzxGXyElqkUAKrjxrxfeJV2bJkcRlKBrd62uqNPYrOfNAu3RB1+v7NgEaQdZqqgFjt3Hj7/02rpODLO2/gIWw/u7Cp3ZCx+KLsJZJp8As6IWnmmNquFuju
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2026 08:50:06.5872 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ac9ec40-87ef-4187-449c-08dea5cc4ffb
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.161];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: SA2PEPF00001506.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR12MB6918
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LQLqNpxiHzqyaKJUMH/ez6l3d9w8YGE6tFHvQC8fbEY=;
 b=NPhT++I9aYe94KXmaTkNzJpcXCIz08FXGmgBNzxntYhFXPUjuBPfKNZZF/yZBwzQ/UnZCV0XBLC0Qp/LDbbax0Y8pn+muubh+6FhC6Y0PL8wt4kqOPb/nI2V4+d5g89wSospsBttq2RjaPQlVDj2TQ0xX7he78jgQTJvWHGcLp/pYhP/Zme1QJah89jJmapjcSewiCZ5uMLMI5rVnQCCvZ9W9ggkcoBsq6LIxQE+OkGX7sxh4CvVzpvoK3Zb9lY5FivGoS9+jK1UnafShz1DKH4+uX1So0jR442T0EoatrmtOYXH0ia7ooYi7batgGILCw+p1Q2NXjvP6fvyy8TiKg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=NPhT++I9
Subject: Re: [Intel-wired-lan] [PATCH net-next] net: Consistently define
 pci_device_ids using named initializers
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
From: Petr Machata via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Petr Machata <petrm@nvidia.com>
Cc: Cai Huoqing <cai.huoqing@linux.dev>,
 Marco Crivellari <marco.crivellari@suse.com>,
 Randy Dunlap <rdunlap@infradead.org>, Yonglong Liu <liuyonglong@huawei.com>,
 Kees Cook <kees@kernel.org>, linux-wireless@vger.kernel.org,
 Larysa Zaremba <larysa.zaremba@intel.com>, Joe Damato <joe@dama.to>,
 brcm80211@lists.linux.dev, Daniele Venzano <venza@brownhat.org>, Eric
 Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 MD Danish Anwar <danishanwar@ti.com>,
 Richard Cochran <richardcochran@gmail.com>, Samuel Chessman <chessman@tux.org>,
 Fan Gong <gongfan1@huawei.com>, Mengyuan Lou <mengyuanlou@net-swift.com>,
 Jian Shen <shenjian15@huawei.com>, Ingo Molnar <mingo@kernel.org>,
 Ion Badulescu <ionut@badula.org>,
 Michael Grzeschik <m.grzeschik@pengutronix.de>,
 Yeounsu Moon <yyyynoom@gmail.com>, Manish Chopra <manishc@marvell.com>, Colin
 Ian King <colin.i.king@gmail.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Peiyang Wang <wangpeiyang1@huawei.com>,
 Thomas Fourier <fourier.thomas@gmail.com>,
 Sai Krishna <saikrishnag@marvell.com>, Denis Kirjanov <kirjanov@gmail.com>,
 intel-wired-lan@lists.osuosl.org, linux-parisc@vger.kernel.org,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Steffen Klassert <klassert@kernel.org>,
 Stanislav Yakovlev <stas.yakovlev@gmail.com>, Kevin
 Curtis <kevin.curtis@farsite.co.uk>,
 Arend van Spriel <arend.vanspriel@broadcom.com>, nic_swsd@realtek.com,
 Jiri Pirko <jiri@resnulli.us>, Ethan Nelson-Moore <enelsonmoore@gmail.com>,
 Philipp Stanner <phasta@kernel.org>, Chi-hsien Lin <chi-hsien.lin@cypress.com>,
 Ido Schimmel <idosch@nvidia.com>, Potnuri Bharat Teja <bharat@chelsio.com>,
 Double Lo <double.lo@cypress.com>,
 Markus Schneider-Pargmann <msp@baylibre.com>,
 Nathan Chancellor <nathan@kernel.org>, Jiawen Wu <jiawenwu@trustnetic.com>,
 Marc Kleine-Budde <mkl@pengutronix.de>, Bjorn Helgaas <bhelgaas@google.com>,
 Zilin Guan <zilin@seu.edu.cn>, linux-can@vger.kernel.org,
 Yibo Dong <dong100@mucse.com>, Andy
 Shevchenko <andriy.shevchenko@intel.com>, Petr Machata <petrm@nvidia.com>,
 Kory Maincent <kory.maincent@bootlin.com>, brcm80211-dev-list.pdl@broadcom.com,
 GR-Linux-NIC-Dev@marvell.com, Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Leon Romanovsky <leon@kernel.org>, Denis Benato <benato.denis96@gmail.com>,
 Rasesh Mody <rmody@marvell.com>, netdev@vger.kernel.org,
 oss-drivers@corigine.com, Vincent
 Mailhol <mailhol@kernel.org>, Mark Bloch <mbloch@nvidia.com>,
 linux-kernel@vger.kernel.org, Tariq Toukan <tariqt@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>, Jijie Shao <shaojijie@huawei.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Thomas Gleixner <tglx@kernel.org>,
 Simon Horman <horms@kernel.org>, Yicong Hui <yiconghui@gmail.com>,
 linux-rdma@vger.kernel.org, Mark Einon <mark.einon@gmail.com>, Johannes
 Berg <johannes@sipsolutions.net>, Heiner Kallweit <hkallweit1@gmail.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Sudarsana Kalluru <skalluru@marvell.com>,
 Krzysztof Halasa <khc@pm.waw.pl>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: F1357491595
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:u.kleine-koenig@baylibre.com,m:cai.huoqing@linux.dev,m:marco.crivellari@suse.com,m:rdunlap@infradead.org,m:liuyonglong@huawei.com,m:kees@kernel.org,m:linux-wireless@vger.kernel.org,m:larysa.zaremba@intel.com,m:joe@dama.to,m:brcm80211@lists.linux.dev,m:venza@brownhat.org,m:edumazet@google.com,m:anthony.l.nguyen@intel.com,m:danishanwar@ti.com,m:richardcochran@gmail.com,m:chessman@tux.org,m:gongfan1@huawei.com,m:mengyuanlou@net-swift.com,m:shenjian15@huawei.com,m:mingo@kernel.org,m:ionut@badula.org,m:m.grzeschik@pengutronix.de,m:yyyynoom@gmail.com,m:manishc@marvell.com,m:colin.i.king@gmail.com,m:przemyslaw.kitszel@intel.com,m:wangpeiyang1@huawei.com,m:fourier.thomas@gmail.com,m:saikrishnag@marvell.com,m:kirjanov@gmail.com,m:linux-parisc@vger.kernel.org,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:klassert@kernel.org,m:stas.yakovlev@gmail.com,m:kevin.curtis@farsite.co.uk,m:arend.vanspriel@broadcom.com,m:nic_swsd@realtek.com,m:jiri@resnulli
 .us,m:enelsonmoore@gmail.com,m:phasta@kernel.org,m:chi-hsien.lin@cypress.com,m:idosch@nvidia.com,m:bharat@chelsio.com,m:double.lo@cypress.com,m:msp@baylibre.com,m:nathan@kernel.org,m:jiawenwu@trustnetic.com,m:mkl@pengutronix.de,m:bhelgaas@google.com,m:zilin@seu.edu.cn,m:linux-can@vger.kernel.org,m:dong100@mucse.com,m:andriy.shevchenko@intel.com,m:petrm@nvidia.com,m:kory.maincent@bootlin.com,m:brcm80211-dev-list.pdl@broadcom.com,m:GR-Linux-NIC-Dev@marvell.com,m:vadim.fedorenko@linux.dev,m:leon@kernel.org,m:benato.denis96@gmail.com,m:rmody@marvell.com,m:netdev@vger.kernel.org,m:oss-drivers@corigine.com,m:mailhol@kernel.org,m:mbloch@nvidia.com,m:linux-kernel@vger.kernel.org,m:tariqt@nvidia.com,m:davem@davemloft.net,m:shaojijie@huawei.com,m:andrew+netdev@lunn.ch,m:tglx@kernel.org,m:horms@kernel.org,m:yiconghui@gmail.com,m:linux-rdma@vger.kernel.org,m:mark.einon@gmail.com,m:johannes@sipsolutions.net,m:hkallweit1@gmail.com,m:saeedm@nvidia.com,m:skalluru@marvell.com,m:khc@pm.waw.pl,s:lists
 @lfdr.de];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[linux.dev,suse.com,infradead.org,huawei.com,kernel.org,vger.kernel.org,intel.com,dama.to,lists.linux.dev,brownhat.org,google.com,ti.com,gmail.com,tux.org,net-swift.com,badula.org,pengutronix.de,marvell.com,lists.osuosl.org,redhat.com,farsite.co.uk,broadcom.com,realtek.com,resnulli.us,cypress.com,nvidia.com,chelsio.com,baylibre.com,trustnetic.com,seu.edu.cn,mucse.com,bootlin.com,corigine.com,davemloft.net,lunn.ch,sipsolutions.net,pm.waw.pl];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[petrm@nvidia.com];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_GT_50(0.00)[83];
	RCVD_COUNT_TWELVE(0.00)[12];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	HAS_XOIP(0.00)[];
	NEURAL_HAM(-0.00)[-0.931];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,nvidia.com:replyto,nvidia.com:mid,baylibre.com:email,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]


Uwe Kleine-K=C3=B6nig (The Capable Hub) <u.kleine-koenig@baylibre.com> writ=
es:

>  .../net/ethernet/mellanox/mlxsw/spectrum.c    |  16 +-

Reviewed-by: Petr Machata <petrm@nvidia.com> # for mlxsw
