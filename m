Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 12CD674ED33
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jul 2023 13:49:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 338ED60F7F;
	Tue, 11 Jul 2023 11:49:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 338ED60F7F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689076164;
	bh=e/OAd6usc3ajY3xZV5+b6pdg64BIKrCmWj0TgJcDMbE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=5TKkbGETr70QCmpFT0v1JoCMLgEms4Z0b+bDiD1fGX0PXlmnWsEpPsO+PFXS3CR1A
	 1zhfDSdk80Q1SH3ESHWIpAr2MLolNyyj8kGdhCcmA4Zu6EZTfZJwvM366BoDPc9Gqq
	 qZADj2DDbfLTTTiAkvL2q61rxFL1lqMcOo/5YhvBCY6yIsE8P+BxXTBGdQEvZXyUPI
	 SaSPXwt/zCl6fpfLVc8NBT2W4z1z/G5EXOvfOubr4korrOLQPSo9iRivoCzp34NbPu
	 66KlwNUPojsNCLcNHJbqofqlaZDWJmA+iKF6TX2u/eiQj0zSt3coLig2xZoXGPRHpw
	 AKkoFySPHSEmA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8Vu4jJuMZ2Xt; Tue, 11 Jul 2023 11:49:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 91FCE60C04;
	Tue, 11 Jul 2023 11:49:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 91FCE60C04
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0A87A1BF422
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 11:49:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E1AF041805
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 11:49:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E1AF041805
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fT6-JBoW4zfC for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Jul 2023 11:49:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D6B75417D8
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (mail-db3eur04on2136.outbound.protection.outlook.com [40.107.6.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D6B75417D8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jul 2023 11:49:15 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CIrAosaCYe4BZwYZUKPAQrZbd6BO8MLwVwGm4LQUTxdyiTWrcP3DTH5Jow/r+gJXtB2sPk1yLX314aiIOE/q0QEK1xLQxwA1wnEtXLfA6V3i1YqY0VGckOvCianR8d95SJr/rJ5Cm2lTiR38EH+4fq53WyKnwqQsd1oL5HZayYJbC3Js55DpuiBdluRXEvFmfDrYuCuaRN+NiCCCNFyfkkddO8rl+RKL14ctuRKh99HoJXeRx7GyBs1FTwfkBv8iReWoTDVn7o2ffLGF03kjqeMBlG/99RygG+ufBjHLgSvSpcCVh9O34SneIU78yNSFDHHjNQf28yyqjqyscT2M6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bbZBfUWQI+43/vOZKW9/fSFbvy9yYN1LvVvWgxmeuNg=;
 b=NhIre9ubOMVffzjgOUt7LGV7ejJ1kLZvu35Lh+j22sHO1lutw2NyBjmMx5hn2msghcwcQj2cb+vqpgJBown3PUhDBIzr7ygXMe0RTQ6skcU+VBlfnCwVG5+A92+oqkvHaY/54mZPmr97I0rYsjY3xugksSWv4TCgYH+u4mgUpueVkrelpekzNs4UTXdlK1aT3k64GG+BBi/R4DpXJKe/hVOxYlJDdpqOTMBerfOgTaXuPGg7JuOmgM+R7Wps0MPz7GKMjO6mtI35UQJrly5S4sdQCutQqShkoFCUBaa40tJqj0LFkVuXjyr0rVEVKCWuoVsNf0SddNmmQLTp5IG4Rw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=est.tech; dmarc=pass action=none header.from=est.tech;
 dkim=pass header.d=est.tech; arc=none
Received: from DBBP189MB1433.EURP189.PROD.OUTLOOK.COM (2603:10a6:10:1e7::15)
 by AS4P189MB2088.EURP189.PROD.OUTLOOK.COM (2603:10a6:20b:517::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.30; Tue, 11 Jul
 2023 11:49:13 +0000
Received: from DBBP189MB1433.EURP189.PROD.OUTLOOK.COM
 ([fe80::57d:1bb3:9180:73b6]) by DBBP189MB1433.EURP189.PROD.OUTLOOK.COM
 ([fe80::57d:1bb3:9180:73b6%4]) with mapi id 15.20.6565.028; Tue, 11 Jul 2023
 11:49:12 +0000
From: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
To: 
Date: Tue, 11 Jul 2023 13:47:01 +0200
Message-Id: <20230711114705.22428-1-sriram.yagnaraman@est.tech>
X-Mailer: git-send-email 2.34.1
X-ClientProxiedBy: GV3P280CA0062.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:a::18) To DBBP189MB1433.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:10:1e7::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DBBP189MB1433:EE_|AS4P189MB2088:EE_
X-MS-Office365-Filtering-Correlation-Id: 9c5cf0c1-c652-4a7a-9ba5-08db8204d87d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Fe93bP87U7/aVx5c1uXhjtYQhF8zeCUTGJAMlwBgYoot9VVAUoIpf2cQ/SQJ2MLKlMPFfW0oN6hdDLVSxFEl1IhiRf6ZEkwFIE2ccALQRxijJsBEdghHafIP0MoVmUV9nw49428LM37kd/mA9Z1YeweFIXW66uh7JD/G6EQ0aEMiMl7GeS2QcUMX3RpcKlPzchDEUaE0NRc96vq1lpW5ZqUjgadd5UrMXw57Z2WltbCy9XsGzA+7/SXizGMYbtosxqxuiXSmRphxT/EsDtrgd+EQdqgogXInSwPXD4J/q8F8wiCAn4n907ZZDKlfDMEbAQ1qwILaeZqQRqC8PRhGxPbAKxJLCHTuciIbEK5JBYWcgEXy7/Yde41jEpMIz+2yUq+YJUUodEGm4rGLYwsnfH5vtFrWwGnAVfoJwncGNnxFD88epxOkNaTGCj6lp4gBoH9y9ekQcL0atcm5JFn4May1ymBMn8iNb3xbLtjq1X51ZVszXyJCveC+bJXp7NwhpPmxij0CJloI3axqUjfczbrvZmqJUQOqBWPEBJ1PgQvyL+bLOAp/nneq6vyrP3sHBMOoUEg9SBV7mpOzizeRfRTWazwrKW63daVICQt2kHdd58d+TqBnuyQeOi1aPeiSi9QXH7KSpJDbL7HPzqhxQQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBP189MB1433.EURP189.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(346002)(136003)(39840400004)(376002)(451199021)(109986019)(6486002)(4326008)(66946007)(70586007)(66476007)(66556008)(478600001)(6666004)(26005)(1076003)(6506007)(38100700002)(54906003)(41300700001)(6512007)(316002)(8936002)(8676002)(86362001)(5660300002)(7416002)(44832011)(186003)(83380400001)(2616005)(2906002)(4744005)(36756003)(266003)(37730700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4kn+xlfxhWzlMh9vWNjiWBAAydWYJTO9D2myRnG40bxYFiYK50F0WO83hVwp?=
 =?us-ascii?Q?iPAw+aS8TEY6/83XZfpZvK+qu1RSX0OdVQAtpTGJlR9mbzppLZegC3dYkRQD?=
 =?us-ascii?Q?gEiCe1tm+S8xG7eQxEWbjTwjYwLKnIGGnGr3FjzIhh89iWpvHRCtl/h3qfjT?=
 =?us-ascii?Q?OcEf1TrC21vIhDC87xdNfE8eU9jbYZFd6/z96gTUpLb6MF4cXD6Sk+85eEYW?=
 =?us-ascii?Q?5Q3fBvA2FylLStwnODpxQDvA/6Hw+Zx/Z3j/TxV66aPMZS0bnka+YNcjZjJX?=
 =?us-ascii?Q?n259efW1Y6uvDdIkMmXp0ZH02xtyzW4BVcRUbtiAnnxaEJ5a+biwyFbU2vua?=
 =?us-ascii?Q?rDXw/sLCDYpDmDgr4KWAEivCpbsKAk8M9Or36LyF+vzDTu9P9dP3yiNR9vH0?=
 =?us-ascii?Q?WseFHA+OlvnvYAfKpB/lA9k8ddVpF2Q7V0vXdCVES7K0QryBvKi/qz27xb+g?=
 =?us-ascii?Q?Ur9kg/8TAuQ9QwpGxKfsLLCSr1lfTCaZhI58ZpKRi/eV1SgC4UG7Rk5sHmHC?=
 =?us-ascii?Q?5ASHyPgMqgzzZf9GDprKly8RJhR1t2hpEfZVkKTYzr9QKsFFKaVBvv+YulAE?=
 =?us-ascii?Q?pEaDZjFrvdgcL4b5qdEpk2yCqcUiTXkFqFR055e+ubBmpUHd3taYT07mvG/o?=
 =?us-ascii?Q?ZXUQnQkzLrnMs+gKFhoEpMmHSlD7T+1zjm4z8dF3ytJYbkzJ8ataJHEKD93L?=
 =?us-ascii?Q?wGJW6pQVYuMEMlMucilEHOaqJwL/cxAVUu5RgTazPstHxJpifOxR1Og8ENHZ?=
 =?us-ascii?Q?a44YNbFXLOJ/aKPDyfg/MAq0HGb7w2BC8KFfCaXLN8p0S52QzhpFymeli1oH?=
 =?us-ascii?Q?Ibf9uEF99/+LzKqmacGTY5l5eXHFD+B9xaoVYRNAcp31m/9BmkzcrdrKhct4?=
 =?us-ascii?Q?hcxFZuGVkopjLfHiZaxet8PZ3SwGZH+pytlH9fFHAi0G6kZGcX9wCP36OV+t?=
 =?us-ascii?Q?deXmeiE0UAUwGV77eUu57AGAuyS2w62cxZEID/8Bj2GkiH5U1E0HwPpXQPBQ?=
 =?us-ascii?Q?luc3vHwBmcWQVAcsVVsZCB0XD8+poEd8UQXLp/q9ZdX/Chq8bgo6ZDvBG1Wq?=
 =?us-ascii?Q?sSelSNSbHCIq1GzQui0hx5xQVmU2WjddLOPyPvwumUpfLq7yS2P/MPTZVHeL?=
 =?us-ascii?Q?vN+q4xJgr5bi8004hg0foYgO6jiKp4Zc3Jf3+DHQzPZ0B8Rst8l4pnJgaUhD?=
 =?us-ascii?Q?YMTH4v9QS86MPeC91cSnSm2lNyXPWCLqNUneHQW2YFFDYTkMjmVXHWkHdmvp?=
 =?us-ascii?Q?66r3o81H2pPfQTsHYVKkTxZSQE6NYlIJlHY2CH0Cn3u6FpLjrGHuxIQLrm58?=
 =?us-ascii?Q?2NOa89RVncIrLxvtCJ/TSmkM6IAltot3kCC5qCd1mIX8Q8hDh+oGm2r2K+0S?=
 =?us-ascii?Q?BhVNjN/kUYr+TYBhLlm4z8531u7RHBk/Vmb5EJk9i6V2fUMu+tLv5/TD6ETp?=
 =?us-ascii?Q?jt/i9InixdW099GSdRLwSf6r8u8WLkmjLrZ0cHfsiq9ZnbbsmMr5MQw4rJey?=
 =?us-ascii?Q?/i9kb1Pn4+WCkpzvDimecixPdOCidEUFnwY418hB0f3E5/mhVGmViTYb0MZc?=
 =?us-ascii?Q?DyYsdJ22kmchrp8uX4DljM/UWpipRzm/7SvLKox7mUtwsctYkjamFm01G+Xl?=
 =?us-ascii?Q?Pg=3D=3D?=
X-OriginatorOrg: est.tech
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c5cf0c1-c652-4a7a-9ba5-08db8204d87d
X-MS-Exchange-CrossTenant-AuthSource: DBBP189MB1433.EURP189.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2023 11:49:12.8347 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: d2585e63-66b9-44b6-a76e-4f4b217d97fd
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bFbR0Zz4hmTCeNR4V2q35ur4zGbJpqmvJITandQCPNGeUN4PgIEKUMDJUXr678UzliuD7gKBfrvQpwv1ntQaVsvOm7gvjmM1Pah2eQoke14=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4P189MB2088
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=estab.onmicrosoft.com; 
 s=selector2-estab-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bbZBfUWQI+43/vOZKW9/fSFbvy9yYN1LvVvWgxmeuNg=;
 b=cO529OxZiX3BCBMQVJALIytIsuIFC9kjn5nrfl1LX04xyL7RRa5FwHwYirm+nZ5FEAPE30XfYl3JHCtoUFXaWyHV9ilXEpdW3VQ92uMTFESHY26fRItM+ftGy6tfZIJaqt5Ga4YufTxbwnwJ2oEHe3c2XUP2dAxmE/e0Z3Ib1c8=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=estab.onmicrosoft.com
 header.i=@estab.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-estab-onmicrosoft-com header.b=cO529OxZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=est.tech;
Subject: [Intel-wired-lan] [PATCH iwl-next v2 0/4] igb: Add support for
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
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S . Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The first couple of patches adds helper funcctions to prepare for AF_XDP
zero-copy support which comes in the last couple of patches, one each
for Rx and TX paths.

I will attach performance numbers to this thread in a couple of days.

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
 drivers/net/ethernet/intel/igb/igb_xsk.c  | 521 ++++++++++++++++++++++
 4 files changed, 693 insertions(+), 46 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/igb/igb_xsk.c

-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
