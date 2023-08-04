Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E2676FC2A
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Aug 2023 10:41:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E184D4206B;
	Fri,  4 Aug 2023 08:41:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E184D4206B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691138509;
	bh=9bZpOhKbews2Xid5bQpgelKd+K42DClQHWbtEtqFNns=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=bbi0iFaWa/2sO3rPuJNScL39DM2QtV+jU+ht53GM6AAugqxr+79VvUYoxMynBigJJ
	 EhIJYdXe50GaaLZL6qSZcKs/tw2NJzvjQlawhprjdCuV0JqxB08PxWVWETpnyb2F7w
	 NO928Cy6kHfSw6sUhD1s5tNWLxdqXIPCdsxwFFhn8Z+STIQN7qqIJcjNyaYQlLBxLO
	 HaQ8AOHE9Xq5TwiAbeSENmr5rNN7YPO3j8iwSg5gF+Pgw4JA3jOaR07cdJWl2QS8O/
	 gSkL7NCAxs2fcg3UgniMka4yEkff9ZC/70APdQMul/PhR0EmZqJQ0TZprJ5ntuGgEX
	 LMDGpNutJWF3A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aqQzqp_Zlh_x; Fri,  4 Aug 2023 08:41:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B9C514056A;
	Fri,  4 Aug 2023 08:41:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B9C514056A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3548A1BF3E8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 08:41:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4B48A60B0E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 08:41:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4B48A60B0E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kHNkr10lXcK2 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Aug 2023 08:41:18 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 (mail-am6eur05on2104.outbound.protection.outlook.com [40.107.22.104])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1C56860AEB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 08:41:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1C56860AEB
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oEI60vK+68RNGadxs7dFN7l6cmK3huZw2mRAuo9lNQ6t8GLlLSMVma/BNSinnEwILut5lX9oIwNk5MEzrbegHo44XuwmRzwkodJV0ynLNRIqzEUdul6rn/ZKhdXJWcO99z0FMtMMYb+jeVIHhN1yPX43KTODsP54hno/sOREI1MJ12qBB2qzAbdxn9YBqRy65YuGyBoLpUYLI1Q54dDxo/SEWW4v+KrgXjWIaZgluDV+lqbi5tERHuPAZta6HnOlpfY0eAuSoSSz5LQvBDSOx7GPWJr/aKddtWht6dSIqw1eHSmgZ2/LcD3cFfJZIfAVQ9hE8IKPjr3XS/Y2sh+HvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZLg4pcy0ZMEvey+8pQJ1heRzTn764IC7lItSat4OTjs=;
 b=DbpjBPLx9sahYramfCd7neScuxshTLNKMNnSxdkmTdJ+9LK59xMhI9LKw93/HxEqP0F+KsCUxCcpmjGOXrfWeavLWW5XxuO2WnRPuaDkRO6r1jCDr6REdJ9BRStms5iuaSdH0/TPzjAwKV0613Zfosc5xkRo6alH/RWIkD6cj2CzMinjTAZa0/xW6WrQM7KN3qm9880NLDSI2eMQT5LqdofbHTyibdWcarsenWT6G+ln7XXj9Op+k9k10clMoYb7aCS8QHayCCkureGHMcQkmTuWtLqWIZkjxxJoo5xuJ7f7D/tA+OcrNvdsVYc8qFK4aePUIfftlvMR/fet6hboNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=est.tech; dmarc=pass action=none header.from=est.tech;
 dkim=pass header.d=est.tech; arc=none
Received: from DBBP189MB1433.EURP189.PROD.OUTLOOK.COM (2603:10a6:10:1e7::15)
 by AS1P189MB1861.EURP189.PROD.OUTLOOK.COM (2603:10a6:20b:48c::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.21; Fri, 4 Aug
 2023 08:41:13 +0000
Received: from DBBP189MB1433.EURP189.PROD.OUTLOOK.COM
 ([fe80::759b:94eb:c2e8:c670]) by DBBP189MB1433.EURP189.PROD.OUTLOOK.COM
 ([fe80::759b:94eb:c2e8:c670%6]) with mapi id 15.20.6609.032; Fri, 4 Aug 2023
 08:41:13 +0000
From: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
To: 
Date: Fri,  4 Aug 2023 10:40:47 +0200
Message-Id: <20230804084051.14194-1-sriram.yagnaraman@est.tech>
X-Mailer: git-send-email 2.34.1
X-ClientProxiedBy: GV3PEPF000000E1.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:144:1:0:2:0:10) To DBBP189MB1433.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:10:1e7::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DBBP189MB1433:EE_|AS1P189MB1861:EE_
X-MS-Office365-Filtering-Correlation-Id: 97906e63-f662-4540-e72d-08db94c68f01
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LzGBr5D0u8jvVT87YjwQ8djtbFB2Y8gIUqL+XiISgLyM9Vz/3b4oQXwuIMHe3Kmqf7DnymFuSrpfkUM6i4aejSWhjUI+c35F3BMeTU42gWWGmBvyYrAGnPsCPbnBXNGettIPruUdbc4buPCo9WeikO41vNiUThiBcz+9eFKvulBYeD8JUeJo64MXwYPvS9fZ8a5hOkvjxxnl1/4iR6XKr0olQu24zC2k9VmNgU98K4XfCY5bIFC3NnDwesB7FQreInWWajNJjIwbP8WPkjV41EhcISZHiTUGewLyGL2P3W3RjIPXqkOa+kHojBfLjitB86rcuj+oIlV0OO+XKOAOGKHjAfgiloejcds4n2M/11A9+KvwKvxUVTk8JjXT5V1rJ9KmCJExrb50OngR0/+1iJSnKDZaxv/YDtQX3wVR2mTMN4WkEcQI5hEp4n7eD4BY4ZcahQ7LqzsVUjCg+p0jqsrsl+eK04zcdlwiKQqZkppoB9XAbhCP+d96YgJaHFHkBn3mVZoPz0Ik5qS0xi6SAE5rewvAqP2O9+MWwR+RYHWKojWUM9/RTrS47qpOZXGmxzQ0YWSFc/YyGk5NmnNDmA6WW4sTaP8t2KimQ0LuNYQsIm1Yp3yN+QqMXkLCqdWR
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBP189MB1433.EURP189.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230028)(39840400004)(136003)(346002)(396003)(376002)(451199021)(109986019)(1800799003)(186006)(83380400001)(2616005)(316002)(66556008)(66476007)(70586007)(66946007)(4326008)(41300700001)(38100700002)(6506007)(44832011)(26005)(8676002)(8936002)(1076003)(7416002)(5660300002)(6666004)(6486002)(6512007)(966005)(478600001)(86362001)(54906003)(36756003)(2906002)(266003)(37730700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?QLRj5NptjPN+h05yUAGLKMSY1vE/FPZxNY8iHh2LC5TAr1ENKECIBALNlRi/?=
 =?us-ascii?Q?vSG4aNqA81br/Y/tMPXHwRuYc2WlBIy46O6yH0Pnv82ffkKlFJzbk58hiFC2?=
 =?us-ascii?Q?QJF5WErltF0B1jm5XEaeT4PZ8YHfIB/9AZkcunvZ5JQ0NjWaBNBSnSRNgEm4?=
 =?us-ascii?Q?M1ShhdwptmXQYLp9vMq+Emt0UpHtm9WQcMZDD+vYyfLc0u9gnS8HiOat0yIi?=
 =?us-ascii?Q?ZT2IT+8hnU0QW1yaoPjSXE5xzftjeZgOa+H1XbSZbQ9tBCTiXOqp7pCcHXCq?=
 =?us-ascii?Q?DFTwwEO2/dXe2YDS/0hRflcCODKnpF3iiJz1C5AE/TxjrHPTdz9Dam0SXh2u?=
 =?us-ascii?Q?t8Xric2u9E24Uaob5ov5b7D/tkRqBfAXK9zpmq+dkSZ31dk9P8B5bOI/xwFH?=
 =?us-ascii?Q?HDYFpgF4y2w0Fa8Jn8eDfKfsW/F/6nhIBPW4e8YmTqBjVtktKv/XQrQtaoeq?=
 =?us-ascii?Q?1GeZGnq8PgAgAKh2y2T31NcP5wZk77qcZm4iyeAIizW669PPYppPoAYqP2cS?=
 =?us-ascii?Q?7Qs1ifTBKJKBNF34M1+jMEFT37XkMo0yrq9Oavfs4gfyVLC2RLTmGV+D886t?=
 =?us-ascii?Q?KwNFwqJloc185rnvKtOnfp09+Ag9LGq5jiEZzDCwZvb3DmsOXFKcI+21zj3O?=
 =?us-ascii?Q?3OSJ5nO9+N5F/1B7Sus8fCm7N7zvzEMTL78Zy1oJEmIVHpJIHNlAwdKhfy0e?=
 =?us-ascii?Q?fNlM6715PqT2j1pubwRJM0/idB+fFEr2X/Rjpq0iIp7BIonQoV0hnVTGxxay?=
 =?us-ascii?Q?SweeIIBOlWw3gjsno2ekfGqFzQwE6Yl5r2sVNN9MjPZqXS/NgdTrHqfWEhlk?=
 =?us-ascii?Q?GRl9y4k+7hvwRSI/OxJkA9LyUEtrNHr5+SYT/RF7lgURWlv7EXuxliUuz8dl?=
 =?us-ascii?Q?aHqe5ZP5oh2viSZhx9rRJca6hlyrLQlIFdRqv3yq5FJYOmCKiL5O86EJD7YX?=
 =?us-ascii?Q?eIenBv0UvdZUJdAOinPSj/0us88cHrYNQliYPX5DozfALnCrFb/4OAmy1S84?=
 =?us-ascii?Q?mv7r6OQD7z5bfNWxEncICdOZ3SbDUkMm8kUlEUaPCVswoz9ESA4Clgm8SSSy?=
 =?us-ascii?Q?UCOClOrPqT1fQOwHPSZPcd52icz9DXBqSwPChoxQiZQVmFqNe7+XK8Ro6j0O?=
 =?us-ascii?Q?amiC9NJchUyA9Qq7rv/yPvkZ0DwSW80H5ECbCSNgX5u7NQK0aUPPf/rsk6/u?=
 =?us-ascii?Q?oo+yEnQqwLwNEZNXxDhBHiiewnCFKvZWLooD6uRBcep4ObFnCYit3WB3joc6?=
 =?us-ascii?Q?Uj2kY0lcPSuzyy4WjkB4iUmQ7WzCS0WxlrXj1HporHNQv0npovKFEtKau5Nz?=
 =?us-ascii?Q?Qj2dBQN/vwkuBwvY9rBkgRCqILA9CdYUZ+alSvbxEOvMKpqlyvFLa6J/AAUU?=
 =?us-ascii?Q?GCoYrEpNIqU5hoD9gtDqFK9vqWjCq+SPwTTsOSXv3VoJRIA24LgOHdGKza5D?=
 =?us-ascii?Q?Dg22pNrk8TiLTzf96tf3edC5unRNrawNngclxzM6OgGEj9CS8EIyvbGnSoKN?=
 =?us-ascii?Q?S0P1MuY852Qi0Z08OfRpg3yvWfYf9qr6Ny//Zfc0zAnr1R20rnJX50OMLD09?=
 =?us-ascii?Q?XKvJQay1kQ8sCzjCO48HNgD6EW0vJi8zqPLDQM4ZbP7caIua1XJlrvo23eid?=
 =?us-ascii?Q?Gw=3D=3D?=
X-OriginatorOrg: est.tech
X-MS-Exchange-CrossTenant-Network-Message-Id: 97906e63-f662-4540-e72d-08db94c68f01
X-MS-Exchange-CrossTenant-AuthSource: DBBP189MB1433.EURP189.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Aug 2023 08:41:12.9761 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: d2585e63-66b9-44b6-a76e-4f4b217d97fd
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UfaStyjN4jXqsgFcMckS7P7rpc29r2QkhfU14Ey+/mlPuBUsZZSd8k03c6w2xRoKKPQaHJWj68VMXMOKBlfHwhdPK7KLJCDrCOFCW9heuBk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1P189MB1861
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=estab.onmicrosoft.com; 
 s=selector2-estab-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZLg4pcy0ZMEvey+8pQJ1heRzTn764IC7lItSat4OTjs=;
 b=W814xYP8llKOqiSxfRuWPxClQXTqC+w0P3CTX3+dK9vFhQfgLrXVAc9NHJab2K1KSYFCg4jFSqrAbRgkIZJy8CV6RPRRdHU2SqLEA/HnCreIdZRuvYoVdf+ZYQQm3oX+cwqOEB/CdYp9/sb1MYkbumBybNY8qvzrSb+qhyyFUlU=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=estab.onmicrosoft.com
 header.i=@estab.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-estab-onmicrosoft-com header.b=W814xYP8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=est.tech;
Subject: [Intel-wired-lan] [PATCH iwl-next v4 0/4] igb: Add support for
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

v3->v4:
- NULL check buffer_info in igb_dump before dereferencing (Simon Horman)

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
 drivers/net/ethernet/intel/igb/igb_main.c | 186 ++++++--
 drivers/net/ethernet/intel/igb/igb_xsk.c  | 522 ++++++++++++++++++++++
 4 files changed, 698 insertions(+), 47 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/igb/igb_xsk.c

-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
