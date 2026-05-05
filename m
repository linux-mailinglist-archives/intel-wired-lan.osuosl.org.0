Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GGx1GhVy+mkDPAMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 06 May 2026 00:41:25 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ED6454D46CC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 06 May 2026 00:41:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B71E940CC1;
	Tue,  5 May 2026 22:41:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mwEvSFFMB6nl; Tue,  5 May 2026 22:41:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EB0E340C48
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778020866;
	bh=M+GCIO6WOU2AqsVuMMGi7lB0g7tvo40BR9EO6aKtT38=;
	h=To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From:Reply-To:From;
	b=n3xWIHfmcQR3qR8wWb2i5qm+r94oXTMorgeqS9iyJAGnYQqWyvMN3BQHulqQUgU8M
	 pKcUgXUp7s546AlgU7xE5Decph5/8admtRYoEYAkQ2WGvP67B1vs4oxWXK/YLEDlqY
	 3GMsrS/AAgB0fVif2qUY7WRwKvIUT/w8U2BqtSI1WXZkt1CIEl3wcoGmP6X7oUB9Rp
	 0qWRwAr1eQQYQgjnRw1c43iy9WdGSy7GRRAb0cxZ43/uE+eeeor5vRihAW+PvfqGYt
	 D5WzD8sY7NmZYe0Oeb7E18bD6Xsd8I9Rqcn+VVLv9ybJdPpMDcENcyZZUtEkIi8F28
	 3PU5H5uhxS1jw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EB0E340C48;
	Tue,  5 May 2026 22:41:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id D27BF2DF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 10:12:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B7DFE808D9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 10:12:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gF_zfmiR_QM4 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 May 2026 10:12:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.72.66;
 helo=am0pr02cu008.outbound.protection.outlook.com;
 envelope-from=felix.moessbauer@siemens.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B22FE81197
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B22FE81197
Received: from AM0PR02CU008.outbound.protection.outlook.com
 (mail-westeuropeazon11013066.outbound.protection.outlook.com [52.101.72.66])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B22FE81197
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 10:12:29 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ezvq4mKJLLqQ8Y8cam9hL89oS+PIvrBNxyjDVYA02ewEfn6H66CHptKc5VhKN2ExaklwQ2AUuzozerWUyGZliliWZdfr16JyqtBqYZMcRFyWRwg4a5dyG7H3cDbvTlWwNo0oG+OtVP2jZpeioap8FqANuoJc0CYpPi18x4mEiDvrZGYuBaT80JzB2lykVHnz/LobjAatvQNR/9pE3f3UiDzEkXZLfIEYfabDI0lRNcrryTjRce9Ue9ZS7k6CVa76HJRT4z4mT3ridMpRyot/1uYnG1gKFa2sL9zyZ7P7GmfnwHzXZjy2lhzadL9DIMcvO9GQUO5p7wOvqW321abkHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M+GCIO6WOU2AqsVuMMGi7lB0g7tvo40BR9EO6aKtT38=;
 b=ci1odYiPvTF708RlDVNXJZhZ7/feIned+gQ0dYkylUkMnbQGxwihp6Viff7llKRomXHXiXxpu9/He9ahngX97b/XSAU19fQ4BIcqIsa+R6yzvPeegKd07czPBLy+YzjWWvCHJdRd8Ni+eSY8jDYskKA8Bz14zNak2UiUkkfpp40cZIycQkTLZt5rzaIXzE73c20DHec68OEGwBz0p4FfQB6qQnio3aaOHHi70MZotliFFJcFaqMzoSXFAPczxFVT2WoVIuTmfKUCjvm2EZgizwmoYmtP+nnflNORI8XDXk2i9G6ZKnhw248emmcdAeS1d18xX1KiJYWi6nWyFg0vCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
Received: from AM0PR10MB2546.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:110::12)
 by VI1PR10MB3710.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:800:13c::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Tue, 5 May
 2026 10:12:25 +0000
Received: from AM0PR10MB2546.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::c5a7:ac4:db6a:4599]) by AM0PR10MB2546.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::c5a7:ac4:db6a:4599%3]) with mapi id 15.20.9870.023; Tue, 5 May 2026
 10:12:25 +0000
To: intel-wired-lan@lists.osuosl.org
Cc: Felix Moessbauer <felix.moessbauer@siemens.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "Yan, Zheng" <zheng.z.yan@intel.com>,
 netdev@vger.kernel.org, vivek.behera@siemens.com
Date: Tue,  5 May 2026 12:11:34 +0200
Message-ID: <20260505101141.2657169-1-felix.moessbauer@siemens.com>
X-Mailer: git-send-email 2.53.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: FR4P281CA0342.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ea::20) To AM0PR10MB2546.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:208:110::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR10MB2546:EE_|VI1PR10MB3710:EE_
X-MS-Office365-Filtering-Correlation-Id: bcd3bdfe-8a1f-49f9-0eec-08deaa8ecda8
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|10070799003|18002099003|56012099003|55112099003;
X-Microsoft-Antispam-Message-Info: 7J3nzaEJQHTfQ1xqphIlApaX/eBNky4lk8aGqNAC+QsRdZd/OkRGJkjDKveF7yOB7kANAV9CY/umJD1DuaEvwcNvDexS61EVOJmoWPQTVq6+TOjny10oNiqQY9v/ZHTJFNzdIBP1qTNIXi2pp1MMyG4+jaXiZOGMR4VJKi8+HbMcS6nJjz2EfnryJ0xBt67HXHMhYmO55NDY9EZRHtmWyYoImRyG4JjJ6dKjucsaJvvZytXe4lEpO2+2sm/ZMNlSSsgUoEzvONm1XkZB/YuMKdc/PXa2TE0SL0xI9tpdptmvoJJTGwPBYB2FsJEwTxkRyaY/K8US/BRFNI/SkA9NMpLFjrIbsWVorpax/ifMLfmOPAole5uJHjB6wYQxo6Cm2lrDBIpB3woJGS2TfTvVizHjsPWseEfLdwGGSF7z7mdmzDyDPLvgpB+2NFzirKFxeuZWKte6BrcjIrFRhc+ss5d9JOl1De0kypfNOlBcJpemCv22MmpDhR8bH3Hr5eamxltjTps/lPE2U6jVwpduonq7Er/r0rGRq/3qox87zYRHcYQtuEGjD5GRXJ6amCThQPUSlT/wNC1gUzPIQ0pCO9Ar/aEnDuwkaXY+o5fdhPP+uqJcuSYBPlWQJKDpauq545wC6WRrUjHGSUk9b+5TgWLsgvmJCrOpySxTSYUTeKLUDFlovUrucD0JLuILUR7F
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR10MB2546.EURPRD10.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(10070799003)(18002099003)(56012099003)(55112099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?FbcQ4zH/TJBGadntTbrFd4MMAQQf3Olg5zlSgLRq6Dg/cizNILMM6zPOb0yi?=
 =?us-ascii?Q?oYJAUErOtTODy7JF7m+gepv/QMf6wN8WxoR4V8j7OxXntvU+Sngje5XIQJeg?=
 =?us-ascii?Q?6Z6u32muLqbqeLsYuJuHu6mF2w9top7wS/nv5uLLfC61r1gCRSBDJWWl4o88?=
 =?us-ascii?Q?DTyQH8cYqOh/rVTrWkHAEHAH4/9S6qV4yak5NW0ZBxBktMYgZFcntdiiCg92?=
 =?us-ascii?Q?yxvLJ+85XPSbbqDbrLfFMeNGLhYd+93eaajeLySIkR/PSGRwGykhTQNlipM+?=
 =?us-ascii?Q?Ymnfoy/xrVVx0vgll34rg4WeEmvkeBg7PGrJ7R58HBRJhwNu3bc2LTLM/IPU?=
 =?us-ascii?Q?L/NTP5j+RfmBu8WYbGWjPyAh2Nnfzafu8tlVpBCNDtRuO/45NzeXLsAl9vo4?=
 =?us-ascii?Q?r+6AfFPnhf2LaqDq6O/5ultgUsaffXmTMV9neuf8m5h8dhjxa4c9mz8mwUhm?=
 =?us-ascii?Q?lAZKMt8nN0zPkKvG5sVnwJV+8JEteQufJLA9VuNYh36yH2QJLcryHyaSSFy2?=
 =?us-ascii?Q?uATjYteTy/zyXCl1UmUNL2m7X+0eNUN/26EClOW2pzSS5coCNfIryn76TQZR?=
 =?us-ascii?Q?kuUNM1YOtpfoOsimcZ1tUiqjeTeBYfl189ExCbQ4co//tNv6XBG3DQr7HfoN?=
 =?us-ascii?Q?Q6d1eZHxZxd+IZzNbxkMO6ADtpqJmO1G5OWDumDSkiuk8PRIJVdD3E4cA0NP?=
 =?us-ascii?Q?TUH2/TTWMGNEPsWGHxunU8tM/XFCalfrUEmmjiyFAcDKNzH4yWLjrn9PaMIC?=
 =?us-ascii?Q?i4S+2vluJYwT1TYC3LW7s3AXPeodUfZ3kJcDCZoLRwgORypuJaREOHZPt87Q?=
 =?us-ascii?Q?1shzSX7T+84tq119G+Sg/EEAkI9arHQi9Nz0CPs3BTqUoMUFk/3vpMf+3gn2?=
 =?us-ascii?Q?nZ2JPUv4rlFLzid9YeJHPhW1K18Sh71q0stYbK3tA6KI7R/SJXuBWvQS0HV5?=
 =?us-ascii?Q?um4HYU76BRThEmA/fY4owmK5Ko8kHdgUnqdZxjkd5SABGORIF/q6NwX2ux6e?=
 =?us-ascii?Q?Kapb81ClF2z9rZ+BMwK1+4sx/Ha42fFxpbkbAaTH1NXQNEOPaL4bAFtEJ5b2?=
 =?us-ascii?Q?kDsQoaCxYf5UbdWWFlOLsjHzToJ1H/d9p7kKgDC7kpNghkAmxDnlOm5TrDke?=
 =?us-ascii?Q?ySA4n1P8mZOIbgxQJl3hMHJQ1imCWNssQEVw8TYWdjk8bXXMi1F47yDH2Shw?=
 =?us-ascii?Q?EPoKYHKOthYVppqOS1wY7Mp45fSM6b+ckzOKxTRuegOkqGePgJRw7u7UqqzC?=
 =?us-ascii?Q?vLecAOESxPU9H6RyO77NUrlXbHjiSFZONwYkmVdaJGfgLIvwl1o9ifB5REbH?=
 =?us-ascii?Q?LgdfHze11kuluXcoS02CHuJxowB/5UdTpoynVUs+WzZ7Q0i0SOkz47A5Nb4W?=
 =?us-ascii?Q?7UcHNSzItcGWfyj3LZsYqmtUzRR6Sa7h/jgIxc8/DeCw3JXPODsNU1u99RHq?=
 =?us-ascii?Q?3Zd0C4KzeWggPofNtUxy3RcFNusa274vaP32HdUVyqQ1h8ngM/qdpF2gNwk5?=
 =?us-ascii?Q?vTWh8LC6K4SdN92dKuuxPMcTMZjAy2uQfcXH1iDdr9hd1JPgB/YFOX3uJwoB?=
 =?us-ascii?Q?1g36h77WivHUly7AFMTrQ+cFvmv0hk6sPrwbGzjwnF2DYfha0I0LoS0RfgEv?=
 =?us-ascii?Q?9n9bPtRGabVWeH2w1bV+rn1gh1xt+Fxw70CvfkBMp1xQfAzb1/JL48Z9n3yf?=
 =?us-ascii?Q?3xigtViI6bE73bgHx47m0wFJqo5ZsHaMEFbqlK04WgE9Ih5LgwcGJweYjemm?=
 =?us-ascii?Q?rZg9gJokIjMatjmuuXLB1H+qMUH8KW98tc+J5SzJZ40YtM3De1UnRBwlWmyE?=
X-MS-Exchange-AntiSpam-MessageData-1: 41kZ/59Pj/sh1t+5J9sLQhSSGYg1HK+xegs=
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bcd3bdfe-8a1f-49f9-0eec-08deaa8ecda8
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB2546.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 May 2026 10:12:25.4242 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Vf5waZHCVbe+7BFQ/qZZJ1YqTZ6Gg5GBi2+Bmg/nNbh7TA6VzZL7K4C91EKM6n23FYHL2WfPSNOR9MUlGan7VKlyv4+Cr52xxZ9P7pQ4z5s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR10MB3710
X-Mailman-Approved-At: Tue, 05 May 2026 22:41:01 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=siemens.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M+GCIO6WOU2AqsVuMMGi7lB0g7tvo40BR9EO6aKtT38=;
 b=NFwK1Rb/OI9z3cjFEly12P2dGFDtkB8PRc9BCC083O8vCUchGLvFg5V0MVXpDmeX49GC9XmmReTjTquJNzfDiUgBiIevctkdXp2yviRerVLePWF5rXJVwlA0DbOUoH2hwSff15klAJb5IT8FyHsv0/OKOgTTt/f9VG7RAsokmidna8kaqBpe6HXQGCLC5LB8P1STKzjRs+3YHAqAg6oQYDng87YwxB0g4p3jg7sQZdyTP4eMSj9GlP8fK7cA/mtB8VOpE12+2spoKjN/ew1SMb0bOWXE6HeClsIpAIExM9hQhTt4Suy41TIbXP/JL1hFaNONa8k1H5bCWDPBclZ1pg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=@siemens.com header.a=rsa-sha256
 header.s=selector2 header.b=NFwK1Rb/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
Subject: [Intel-wired-lan] [PATCH net 1/1] igb: Return state in
 pm_runtime_idle instead of power-down
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
From: Felix Moessbauer via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Felix Moessbauer <felix.moessbauer@siemens.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: ED6454D46CC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[felix.moessbauer@siemens.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,siemens.com:email,siemens.com:replyto,siemens.com:mid];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]

The PM runtime_idle API expects to get an indication if the device can
be powered down. Instead of returning the appropriate state, we
currently directly power down the device (if not active) and return
that the device is busy.

We change this by making the function side-effect free and just return
the state.

Fixes: 749ab2cd12704 ("igb: add basic runtime PM support")
Signed-off-by: Felix Moessbauer <felix.moessbauer@siemens.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index ce91dda00ec0e..e8ab0b506a104 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -9652,7 +9652,7 @@ static int igb_runtime_idle(struct device *dev)
 	struct igb_adapter *adapter = netdev_priv(netdev);
 
 	if (!igb_has_link(adapter))
-		pm_schedule_suspend(dev, MSEC_PER_SEC * 5);
+		return 0;
 
 	return -EBUSY;
 }
-- 
2.53.0

