Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 43777751F37
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jul 2023 12:47:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CC7E86134C;
	Thu, 13 Jul 2023 10:47:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CC7E86134C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689245255;
	bh=EIr2U0Zz/TH4ezIqxmEQu8zR38r6ZBfS62sFtgfYx/I=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=XWXeRkVJNP4lTDIs0XEVszbZgzeuBM0rYoRNPXW96aqUHB5x2ZY57qOR1XBuXbVJN
	 sgrmw4AUiCigX9Du6tLReA+BAh1p6C3F+xjDbA3a/ikBGzbBWmISWotAzt8naDTcxb
	 l1xdn56/kANvCETrY5mlaueuKB3/FetYvbJe8ZipKaqxQ5w5v4wRzToHxa2XDZYrWD
	 5xl+ZQqbvKHasTUu/Ncvydy+X9kTjsUq0iV3Q4ntz+RfiJv0MpWq1xCCf4gvLSVJEs
	 nPKczbqTVqzNB1AqbJs0o0YGCZmnq2S14PlvFp6vVOc+48Iz8CABSDJDqaWYOagLqv
	 UNP9lMCSL/bHQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s29OllalhMgJ; Thu, 13 Jul 2023 10:47:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 748096131D;
	Thu, 13 Jul 2023 10:47:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 748096131D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D6B031BF392
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 10:47:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AEB1F416E9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 10:47:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AEB1F416E9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RoTx0CBHIULi for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jul 2023 10:47:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 91C3F40112
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 (mail-am6eur05on2119.outbound.protection.outlook.com [40.107.22.119])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 91C3F40112
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 10:47:26 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a5XcH0bCh+IlnBg/yWZWXFjOxgtjAeK9CVRoTSSZeLriAUkoi1Mu9brrSMTx1694b9ucS09XdtTpq4Gh9DrsvCfSP+YrThqzzw9i+jo0piBvlhw71Yzr58UX4prGSFVty7MlrEGgeo5c/bMInszKqZ5cwqbLEuZDSjJCLs4loRNXIlPNql3TIZ7JKWSm5vx6ULNff4Yjhkj60CKUYdgXiqtmbB8x+7mzX3bWwgdz26aS++8yWCrKtOt+nexvfR8lXn6aAgmi99PVL4XqmbgLE4iyeUWEZvIKJ9z4d9tq0jYIobwSccqkJpJLOFEUULryiKJDCCTSP9KCrxPLrQZPGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CihBvuD+7hlBQHQK1ZNt0WQPvDlcobYidD3EXpLi02c=;
 b=VlQpZagTd+oKmPD22FHX6s/IDW1445DsDpIJOGrNjihA59N+gN+2Y2mYc6/X2+NgCIHQ//do9MwDfWrxniTJwS+ev005crfe3W8n4kHOd5oy7A4sEsf6ahP0MaY7mPaLEPCIDTuyCuxPX2+1imutxeGrsKHMFQqTTHzvIDHGJ3QXesQouBMM/IQSpvPNsDk4moJ4fuM2ypUD5EWRJnZ3KmB2SfEEE4LBlP7+xNOauXiTCGEgy49FMOq2eVlzLan9g4zCtUax3aM+8l/aCRLPx59uts/9zsQ0t/dTHPJwqxH/3G67G2OQLuRfiOCZfhVKnAyUOWzfpIeaQfSLRho6iQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=est.tech; dmarc=pass action=none header.from=est.tech;
 dkim=pass header.d=est.tech; arc=none
Received: from DBBP189MB1433.EURP189.PROD.OUTLOOK.COM (2603:10a6:10:1e7::15)
 by AS4P189MB1917.EURP189.PROD.OUTLOOK.COM (2603:10a6:20b:4b5::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.20; Thu, 13 Jul
 2023 10:47:22 +0000
Received: from DBBP189MB1433.EURP189.PROD.OUTLOOK.COM
 ([fe80::57d:1bb3:9180:73b6]) by DBBP189MB1433.EURP189.PROD.OUTLOOK.COM
 ([fe80::57d:1bb3:9180:73b6%4]) with mapi id 15.20.6588.017; Thu, 13 Jul 2023
 10:47:22 +0000
From: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
To: 
Date: Thu, 13 Jul 2023 12:47:13 +0200
Message-Id: <20230713104717.29475-1-sriram.yagnaraman@est.tech>
X-Mailer: git-send-email 2.34.1
X-ClientProxiedBy: GV3PEPF000000CF.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:144:1:0:2:0:8) To DBBP189MB1433.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:10:1e7::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DBBP189MB1433:EE_|AS4P189MB1917:EE_
X-MS-Office365-Filtering-Correlation-Id: 8acaebf3-68b2-4715-37f1-08db838e89e5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lv/0FFt9JiIazc8n6QoQlwori/76EUrwl2CcNYE2y1iUkLgv/ySBRBsE81FnjQTPT9iZtDpkOxNqoo1tnpf+FkRetqstbMoqSiHnq/WODojamcrZs05ql9oeEGUHg1rN6niYGav6ZwP2lw9W1n9KxECczk/OTmGsga14fT1Mg0clBJNgXMSWJW7WLRUmq2RrwLycQXbLRkeF/GdBTjRDLoQIP31r8+nyZCoRuCL9+8AQiupwD9xnNBUzeuHXJbQNaVILNLJruJG4WznhfFHU/LTvi2H7AXi+zHrJdl6nRB3UARiz1i5BG2AJBA/BG6xkqjetCWK/R6l2/3htgbDajmsu39Y1HcPkw7lkMxcaumy5WHcJ5Wiy/GAoZBT4B+MLigAeQVJ99oWQlt1580ECbrwQWjvO72m35Zkp9/baNQCnvwWTnLWVd+OnIhFT5A0ZmBKlUoWEyVSqRKRai9Gs0c7kiFobqCJIiR7npsewR4Po09NFb32CiWPmSWXZcq5bb7KUL8e94q3C83360b4gMxeq3j48eWBva537viBVq9Tj+mnyqU7uipx3J+qXNTTEoN5eEWZMANBmJyQabM1pVkHTl4uAQe28n1R6UXNyi6sicsgytLsUTnXqo3PaPfY4
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBP189MB1433.EURP189.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230028)(39840400004)(376002)(396003)(136003)(346002)(451199021)(109986019)(2906002)(41300700001)(316002)(44832011)(7416002)(5660300002)(8676002)(8936002)(36756003)(86362001)(6512007)(966005)(478600001)(6486002)(6666004)(83380400001)(2616005)(26005)(1076003)(186003)(38100700002)(6506007)(54906003)(66556008)(66476007)(66946007)(4326008)(70586007)(266003)(37730700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hQOzuOl+DePL81G/HuyXSlYh37BEiz7mYwT09UictkAl5WVpyAtlO7QbsD4m?=
 =?us-ascii?Q?6BxhCTeOoJjasF7qisV5XIzkQVsJ5ZxlYBfIzE7/EVY9093njl/824NXRbRC?=
 =?us-ascii?Q?Ai0sI24JJYttzAeR2LeXCT5BkPD0paFuRQvqrcKaPasvm9Q5tEYz8cpL2ln7?=
 =?us-ascii?Q?8qz6aPonMXiXhoBnfAZeckU49ezaALIuO1k0X2knh5kIHmW1fHcesUiAO5o3?=
 =?us-ascii?Q?KUWT38PvItBQozL0K76nVlXwDszMwg0Etmdh9krjWS6aRNxafDMC0n5e0xKm?=
 =?us-ascii?Q?auf3aMqj9COKczy/K3jusTo0hgTE7E3bYSM0qKmIA38jBV2SYYcpG5dW3VSE?=
 =?us-ascii?Q?iiTFpVGXSjkWTiW1QHHNxWg+rxRH6SSnshicEkbXOFOYUGqOy8kIHmHT+5nb?=
 =?us-ascii?Q?WlComjvdb0hSVDUg0mNOr4R3gfYo6ZWZV+SeMicFpxvGUJU43oaqZ89+i/Fw?=
 =?us-ascii?Q?G2Znwb5kf5IPupz6LMRvjtvQcF4h5hFgo10d/y7NJceKVhA9gQQl9ycr06Af?=
 =?us-ascii?Q?fEzZLUljG3huJTV812lmARoYTzxfC4B2qKyB5aolr3k9CiNa6ILkaVIq+2z4?=
 =?us-ascii?Q?hsc2lxzq+LnW0n3joRcj9fGI5ehzcsz7nYg6iP1vlR/vjFY8JlCiTK6ah6P7?=
 =?us-ascii?Q?Jqn+zjOdg7EVaMJu8xYAmAW2OUya02RmmAf20tXdlLbkSeyhtSvjfHy04pVO?=
 =?us-ascii?Q?iNETTl1cNDwZVq3lLkIKBUaOjtIMZJuSAB/8kKjnqx9Athvbp8MMptxHBTfk?=
 =?us-ascii?Q?/lF+aOy+/gQIVY/Ubo7hw0qe/fdR1BfPKtYGFWekog2D5nqtsnOS7ImmibX2?=
 =?us-ascii?Q?vpqV93HM3XK9xpCfXvRVs+YNTuGChQ0my059gjBjPI633BzTq+0zhwYMksSD?=
 =?us-ascii?Q?l4TpL1bgPwSdUCyxD1dP+Mu+KLuRUJxb/ytGm1+TpPr0oUTu0oUf0kTwPYe/?=
 =?us-ascii?Q?RX8qoX3dIk1qVlOTNivw7CoNquMv3Ybtezg1tprRV500DoE9KL/K52z6cT8y?=
 =?us-ascii?Q?2DYCDf0vfuvEmr0Ekk8WKKWwYsof13wn+M8R3PeAQPwGF31liL2jD6klaosi?=
 =?us-ascii?Q?5LhjxK0hmHWopBP72LQyH07xD+IXm9jZKfGwmrmVCj+6y8k4e2TqrBt4xSEC?=
 =?us-ascii?Q?rP6Or71oRNcB3MYLXRWl2Xihzdj8w2j4w9+M6VVoDYILgQQc/gnAtSapC2iN?=
 =?us-ascii?Q?VqW0SEs+NHwGsa3Q3gNmwrZUUMtIFonX37KA8I/DJD2kbM8YbrDyZSvkbnUK?=
 =?us-ascii?Q?i2vGk3Uy6BKYNTHNhE9k6BjHFTFPILTCQ6ObuPuu8GnZtkLX0b/ZWQSI3As4?=
 =?us-ascii?Q?M2H2BYBjFBrnq6+m8NQdQyJbW5eCD541Rlg9TQ7903aZ4R/CHPG6pTtDZRv3?=
 =?us-ascii?Q?x9+EDevr8roHR8T85rFCEiDEaOq60KUDhNplB8JSH0NzLFhKsF4OtZEPXfqv?=
 =?us-ascii?Q?S1nCfr9Pbm6rWGAWxM67mjsbeFNNKPjzXYFLkEfveS/f+gqq/LQpPq9DD9my?=
 =?us-ascii?Q?0h/SgFAXKc8j7qBJUCspvfMICKYuVj+oznRb0U3VftkA9MF3XLauLE5P5/n8?=
 =?us-ascii?Q?jEUBt2yE97UNsizOPuF+os1zEuwxwbbWqPOH1kHS8EtGJMkEwigLh0J/Mvdn?=
 =?us-ascii?Q?lQ=3D=3D?=
X-OriginatorOrg: est.tech
X-MS-Exchange-CrossTenant-Network-Message-Id: 8acaebf3-68b2-4715-37f1-08db838e89e5
X-MS-Exchange-CrossTenant-AuthSource: DBBP189MB1433.EURP189.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jul 2023 10:47:22.6699 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: d2585e63-66b9-44b6-a76e-4f4b217d97fd
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: losyBiG6AhAQUul1V0Ih+/bV7odP/Sh9yx3SPntwUA9QngSsTbvhYiMAqCVvYeYcJSA49EzNg8CL65iVr3g/ylPOUcNGfHBoOJE9J03xXrM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4P189MB1917
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=estab.onmicrosoft.com; 
 s=selector2-estab-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CihBvuD+7hlBQHQK1ZNt0WQPvDlcobYidD3EXpLi02c=;
 b=AXmAw00SQGopr7zFQWPLFVtUtwAWGP0lok2zIZ//3oCjUjsi5GTihyTww24hYdK0Yrbil1LknaXIZfzUBMi+3Nyqf7ug6MUOMgtpg+y0xj4OJQkEnAmkqVIbpwdF95vYys2Bkf+gIb9wgXk+uZiOyajjg1uN1MHWJRMP1V5/d/I=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=estab.onmicrosoft.com
 header.i=@estab.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-estab-onmicrosoft-com header.b=AXmAw00S
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=est.tech;
Subject: [Intel-wired-lan] [PATCH iwl-next v3 0/4] igb: Add support for
 AF_XDP zero-copy
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Alexei Starovoitov <ast@kernel.org>,
 =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn@kernel.org>,
 Eric Dumazet <edumazet@google.com>,
 Sriram Yagnaraman <sriram.yagnaraman@est.tech>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Simon Horman <simon.horman@corigine.com>, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>,
 "David S . Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The first couple of patches adds helper funcctions to prepare for AF_XDP
zero-copy support which comes in the last couple of patches, one each
for Rx and TX paths.

As mentioned in v1 patchset [0], I don't have access to an actual IGB
device to provide correct performance numbers. I have used Intel 82576EB
emulator in QEMU [1] to test the changes to IGB driver.

The tests use one isolated vCPU for RX/TX and one isolated vCPU for the
xdp-sock application [2]. Hope these measurements provide at the least
some indication on the increase in performance when using ZC, especially
in the TX path. It would be awesome if someone with a real IGB NIC can
test the patch.
 
AF_XDP performance using 64 byte packets in Kpps.
Benchmark:	XDP-SKB		XDP-DRV		XDP-DRV(ZC)
rxdrop		220		235		350
txpush		1.000		1.000		410
l2fwd 		1.000		1.000		200

AF_XDP performance using 1500 byte packets in Kpps.
Benchmark:	XDP-SKB		XDP-DRV		XDP-DRV(ZC)
rxdrop		200		210		310
txpush		1.000		1.000		410
l2fwd 		0.900		1.000		160

[0]: https://lore.kernel.org/intel-wired-lan/20230704095915.9750-1-sriram.yagnaraman@est.tech/
[1]: https://www.qemu.org/docs/master/system/devices/igb.html
[2]: https://github.com/xdp-project/bpf-examples/tree/master/AF_XDP-example

v2->v3:
- Avoid TX unit hang when using AF_XDP zero-copy by setting time_stamp
  on the tx_buffer_info
- Fix uninitialized nb_buffs (Simon Horman)

v1->v2:
- Use batch XSK APIs (Maciej Fijalkowski)
- Follow reverse xmas tree convention and remove the ternary operator
  use (Simon Horman)


Sriram Yagnaraman (4):
  igb: prepare for AF_XDP zero-copy support
  igb: Introduce XSK data structures and helpers
  igb: add AF_XDP zero-copy Rx support
  igb: add AF_XDP zero-copy Tx support

 drivers/net/ethernet/intel/igb/Makefile   |   2 +-
 drivers/net/ethernet/intel/igb/igb.h      |  35 +-
 drivers/net/ethernet/intel/igb/igb_main.c | 181 ++++++--
 drivers/net/ethernet/intel/igb/igb_xsk.c  | 522 ++++++++++++++++++++++
 4 files changed, 694 insertions(+), 46 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/igb/igb_xsk.c

-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
