Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OFSkFfPjpGmquwUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Mar 2026 02:12:19 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C81671D23FB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Mar 2026 02:12:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7CD7482897;
	Mon,  2 Mar 2026 01:12:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LV-lNwr2_6RD; Mon,  2 Mar 2026 01:12:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 65D6C82919
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772413936;
	bh=U7n/jAmQe2s45FBifuAeWwcWj3Si2cW0GeTwfT77WSU=;
	h=To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=bcdjtD81Z6SdgBiUzsQXJPv1bYxQmL3Sh3L2E61zKjRGs8eNq52V1QPrO4Jqt2Pha
	 eg0Bn4ZIM3OdlT/ub4tT9MpfGIu40CWMO7q4eY1UTgWDOMhnyiu2azey/Lt7Q6pxNM
	 +M1jwIPtGxvEeo1wuauLaxuhvA66fkgfv6QCFBSnCATJ02OWSS57Wt0i2fExQO8qG7
	 MM0XoOlOmLUxbcQ6ZqvGOtH2Nza0TZ9ix63ym9BWWS+HaCY2cjRhhyTFpWswwL50tz
	 9jJHE21tBDjJscPE4bRoXETrmEL3N8QPBxKVcCWX7lUxCdAwiSOqG7wUcEaxS83c5X
	 cE/V8EzJvrBsA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 65D6C82919;
	Mon,  2 Mar 2026 01:12:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id C9C97231
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 01:12:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BBD0F40AC7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 01:12:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B2uePM5L25EP for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Mar 2026 01:12:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.61.62;
 helo=dm1pr04cu001.outbound.protection.outlook.com;
 envelope-from=ynorov@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E17D140AD3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E17D140AD3
Received: from DM1PR04CU001.outbound.protection.outlook.com
 (mail-centralusazon11010062.outbound.protection.outlook.com [52.101.61.62])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E17D140AD3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Mar 2026 01:12:13 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iQNIRzPzPy4KcoAqCk6ElNzfTygrR5QGrQS+jcWqrpHIftFaxQRfYKbDwfCt3pe1t3zuvEuskcV3eKV5iO106/UyNEwNi0V4cUZWVJHi9XYvwwJbolK7jV7r8R8So9rvaA25qnYNXr8jLKiasH85I3PBLQWCYcszTzFm9P2kC2XQg1zupWQ0iy5ZOYXaAGpKM2jEj2tvCIZIOEXRJ/TeCobUghFn5hGH0O9lR7rqusmevnLk2FHprZLmpS2USsVzgubkC6sk5S+J7PY6flMLtXS+Umjf8IrK2t8icJOJwvKPqbOf3owRe0O7evKSl4Ie+/s1iZE6spWzeGouffdozw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U7n/jAmQe2s45FBifuAeWwcWj3Si2cW0GeTwfT77WSU=;
 b=sphxd1GOdujJ6Tq2i62dy8/ngXAGbdiNZBSz6aFGLVlWN1ZP5Bgks6wvPMI0lKZLa+zaRFnGB2GuYqFJvzY6Su27bO5BXtkm2mjhDUNNSHSNwEHTlCs2PsS4uJQ+Tj441ASQKFbz4bq6hMolIsOK7Hu/MhxKUC7k7pJOQS3rWkhd/KtzEb8qtq+azRTcmpsH3N9GnNmClc0+OYb4RqJZInwwvibXL2LCiYwa2PB6EH6XM0UcJjq+ageyvMLVr5qo+OpNcky3aC9W6NbfAcRA942NrpEqXuNgkq2fG8BVke5ZzjSiMY9Uovm63nF6qH1/edyk8FZvZUFVbMdUn8jZGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from PH0PR12MB8800.namprd12.prod.outlook.com (2603:10b6:510:26f::12)
 by PH8PR12MB7184.namprd12.prod.outlook.com (2603:10b6:510:227::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Mon, 2 Mar
 2026 01:12:10 +0000
Received: from PH0PR12MB8800.namprd12.prod.outlook.com
 ([fe80::f79d:ddc5:2ad7:762d]) by PH0PR12MB8800.namprd12.prod.outlook.com
 ([fe80::f79d:ddc5:2ad7:762d%4]) with mapi id 15.20.9654.015; Mon, 2 Mar 2026
 01:12:10 +0000
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 Andrew Morton <akpm@linux-foundation.org>,
 David Airlie <airlied@gmail.com>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Matthew Brost <matthew.brost@intel.com>,
 Paolo Abeni <pabeni@redhat.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Simona Vetter <simona@ffwll.ch>,
 Yury Norov <yury.norov@gmail.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 dri-devel@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Cc: Yury Norov <ynorov@nvidia.com>, Simon Horman <horms@kernel.org>,
 David Laight <david.laight.linux@gmail.com>
Date: Sun,  1 Mar 2026 20:11:57 -0500
Message-ID: <20260302011159.61778-4-ynorov@nvidia.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260302011159.61778-1-ynorov@nvidia.com>
References: <20260302011159.61778-1-ynorov@nvidia.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BN0PR08CA0010.namprd08.prod.outlook.com
 (2603:10b6:408:142::11) To PH0PR12MB8800.namprd12.prod.outlook.com
 (2603:10b6:510:26f::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR12MB8800:EE_|PH8PR12MB7184:EE_
X-MS-Office365-Filtering-Correlation-Id: 593fdb4a-5dc7-42bb-39cb-08de77f8ba94
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|10070799003|376014|7416014|921020; 
X-Microsoft-Antispam-Message-Info: yHw+EkxPw2dPXTvtm6aWxNHnjkMgqebQOn3IyzxPS0avh0sFp9WmFhjzSqG5ClKj8Y0jD4/xpnxhorrDJ4WCW3fAa8wIlD6+CBO2CgtqMw+X5uSZrpX/KnUhpL9QlDqNjggalBXiliVqt/uSIxo5sBHFG+UOklHhYMFBIr++8FOMwQA4nT5Ojj8DtgbkH/XNd+DblznQmi4TAaSZeq5EVCHPeeT88MK/JxmIY1nm8mlMisUipnKTLpMNce/Szda/iS7apNNHxZgg7wFIUT0ev2SveluHzdUc1M+DJhSz4JNkCkEbXAth9qLdj53314Tvbjl4BMciaIR6oc4dYoED3IoquEQ8SHyoPYacHlElnkrSXc2Mqv5TGKyGEH7JG9uc+3d9ZTiSV1ty6afXMMWaR4usqURa2TcENW0bsCI7+dDGX7P8zmlmnQIfYA1RNodQEo7JRLBrdevWvuTPBn4E5cbSe14a2j6zoPPJMER7bdMLKQ4BbTM5hAAb+y+cARxXtUW/OQgqt5h7/KMdW7TVvtAtJBtrY18Bk/0N1X3SD6nOM36Wa5xRqX6C6uRpSdKIqk1d/NoPWYpB5BbBUaVBKh01bvsy7qp4yd3Bv7WRQ5vdp6VX2Iqy5jRb57SVU7TiHfHH1QBsj8OppNBwzxdu4laLm0qErSJrZl8SQhES1gXyOzTeS4ENx89wUlRni7Yn/JPfYGX+Ij1lWo/WoCn2x3M2aw6+z2YxvViThNv4dr8GsTACSQrbROz6O1duRC9HkKi5rniblddXT3TYNsOsAw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR12MB8800.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(10070799003)(376014)(7416014)(921020);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4tXljJUbVjUvqKHoj2HosZOqa4+M1qhPJdwXBrA/l6xNejigwyyWrWMpQ7JK?=
 =?us-ascii?Q?ZxeOn12N1An8izcEB035+bMJmSxZCRX+bJzIeLOkY4wl8sisLXks+NrAJF3Y?=
 =?us-ascii?Q?sGi/hpEkwm2Bee77P7Fb1r7XNwkC6qoKQADA3mQVR2l/axPkZ97RjdMabe4Q?=
 =?us-ascii?Q?MfRkB7JK6wC0YtSKgYcW08CQz2SKub9Ka85RyUQNUlnPiAdeb250+SHk7sXt?=
 =?us-ascii?Q?zeHTdfWfjej02eAWHoArMXjGpQ+zuGIdGWuKrURMVf8V1nsxLfNnsa2OkcPK?=
 =?us-ascii?Q?cLnEOoeXtd6KzKpSsLLofPkyEuKqoeby8N5b/4Q7jGFYx4OdPjIZMNYp5Qtq?=
 =?us-ascii?Q?kMRlWCdXaU0krNXPYb/tJxEaSOKdTzOXeCz5Je/f3B6UsxymIYNbyWzCXxtD?=
 =?us-ascii?Q?4yKyi7jwacdLv/ESMZE9N+x0xhrj1oufUfRgQf1fkEe04fd4O68H4ArYTiCr?=
 =?us-ascii?Q?H1yVcuGbBLs2TJitCnYnRHC5yX/y+of1guPQNYfqvk0TwSgYCeuOmyBOlKrh?=
 =?us-ascii?Q?heUG6IxAjfjd/UvjISq3Tnx0GH7Xzm4Et7fUTurbU/p+0SlIZ87z8QzTvxCG?=
 =?us-ascii?Q?P6w59au6jF29wTc+Sn80B2dfPbNZMmr9Rwx6jYrsm2Zb1CM/sVT4s3BEIzZh?=
 =?us-ascii?Q?J8Yok070jK2lEHz77zknj/0h8r6iLYYX6zbqNpymMZD/p2OtOlcSRp+yqzdU?=
 =?us-ascii?Q?vcaxU1LGrPF2oBaZwsoDhTX5RDztNfuptH1qbQX7j8RW0fxX9d0cp/+0t6O8?=
 =?us-ascii?Q?FjRAbf1tSLpeL1fmNLRP20h8JXB5IuNwN4tRjK8eDgS0ZlqFfSB/BuaoEu9F?=
 =?us-ascii?Q?Hvbp5EfncOj0d5EHRqfAOwRYLTJ7Ceu3QzhqMWoSh7q5CwaPZZLmYkvih5q0?=
 =?us-ascii?Q?6yrltm+hL4Zf8j5F5i8GV0L0yrS8VkA1biolswWoSAECxeEtVsuWHoXEubZE?=
 =?us-ascii?Q?y7Rf+RgEa1hcPjEInkQJz45+L2COtT/vexvs1lYhZNVJdQ4EDyhWlyNL9gAf?=
 =?us-ascii?Q?Qe/Ek+okHjvBRKA4QRg+bcwu+DZj74PxYNfS/K/sPBsL5OZR1KxrvxH8UDNH?=
 =?us-ascii?Q?veERzWLxxumZFmfFm5IfGLjk28Q5x/Z+8ElFu6ZD+0hHhy6TycB/sNWvV8gP?=
 =?us-ascii?Q?LlP26D5VYAARv/MSwkeb7iCdeapZA/Hkj98VJ7OfsQoMAFkHJ+2txNG7ifay?=
 =?us-ascii?Q?4D2ZRkQAOGV8KvPkSiFcM5Tbxa9m/WKSnJ+sEG/tNcVYJ6vhJiYuUbqhm1cN?=
 =?us-ascii?Q?swA02u5ZDlYQvTM0s1VVaY1U/xCnhLHJv43BG+3FZhZBCBMmfvF4sExya+7O?=
 =?us-ascii?Q?2IsWg8VY3K47glz+euqAj/ax4uvlmeADnJE8M/bCdg/kCVTQaGmGo5aN4hYk?=
 =?us-ascii?Q?G5jc+mxF4OYenGwc0lzpTiEduxPsI5n3xSqSqfSj8IWbi7KZeo+j7IkmGYWg?=
 =?us-ascii?Q?ZyD5gzK0ZBGK3/Efgwl94YkaOqe871R39+cj6ZYv0OTs03qKfyEU38Ji1Wfi?=
 =?us-ascii?Q?5JWbYx5c8lTyw70/QpPu39cqT3/FUTkJjckAqYmNM11GShtcAKEPhPOLfnnq?=
 =?us-ascii?Q?6hfS1pK//BO0mFZK1TSAZdzxg0IsZ7wvCq0IM8/6wRJYrLSHIz3LbB0TKwYx?=
 =?us-ascii?Q?6UBdb1sOubvStse5mM/bKZLDfTpg1MU9w7A1Trk18AzhWgsu4cP5WO+gWNFt?=
 =?us-ascii?Q?ITxmP12Cqjx1DBTTEUm7cFpdyHuOWt9a8py2l52i0aKDNMIr/kaQ1Ar7gWQG?=
 =?us-ascii?Q?jbVws5cIFSg9auPBfQPKDzPcuTot3hIBWIBmige86m+BnVgWBy2I?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 593fdb4a-5dc7-42bb-39cb-08de77f8ba94
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB8800.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2026 01:12:10.0058 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jOb4p/1RRbn7VjOclkJsz9m+1OMfZbZD0Oj3R6wkIDMUg6TuaIyQb8vZEVaSscAXW57YT+dkUogsZcnFW0cs+A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR12MB7184
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U7n/jAmQe2s45FBifuAeWwcWj3Si2cW0GeTwfT77WSU=;
 b=RsAe/45aW46NbPgHapdSMmN1SnBDXm2ttnymDnlv68JEX0qfk2H8jfBSLjhsGcvxfp+TtGNq2vK6j/XJK8bPxSGWlQRARbpwYWm9sNwdBw2WdwdNxpo2uKbdCTwZtHHrd5Q0dN0pNCJ7qsEPRudUFebvmuUpKrh/0ajAUWVtb1s5B5goFJZ6MzoK0WnmR00irbzGQJZRKllp93FWZAgmlVrS+cv9e1bnmDCxxUn5dgM7iBaMV2Kpjl6pR3du5Iif472IoymaXbfQW2WtzIIK7c8IidX0yRDzPwx7E6zJRdLb+eHv7UKR0g6FV7I1jow0C6IoKdQhfUZLyNjHqdEmcA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=RsAe/45a
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: [Intel-wired-lan] [PATCH v2 3/4] ice: use bitmap_empty() in
 ice_vf_has_no_qs_ena
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
From: Yury Norov via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Yury Norov <ynorov@nvidia.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:thomas.hellstrom@linux.intel.com,m:andrew+netdev@lunn.ch,m:akpm@linux-foundation.org,m:airlied@gmail.com,m:edumazet@google.com,m:kuba@kernel.org,m:matthew.brost@intel.com,m:pabeni@redhat.com,m:przemyslaw.kitszel@intel.com,m:rodrigo.vivi@intel.com,m:simona@ffwll.ch,m:yury.norov@gmail.com,m:linux@rasmusvillemoes.dk,m:dri-devel@lists.freedesktop.org,m:intel-xe@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:ynorov@nvidia.com,m:horms@kernel.org,m:david.laight.linux@gmail.com,m:andrew@lunn.ch,m:yurynorov@gmail.com,m:davidlaightlinux@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_TO(0.00)[intel.com,davemloft.net,linux.intel.com,lunn.ch,linux-foundation.org,gmail.com,google.com,kernel.org,redhat.com,ffwll.ch,rasmusvillemoes.dk,lists.freedesktop.org,vger.kernel.org,lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	HAS_REPLYTO(0.00)[ynorov@nvidia.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,nvidia.com:mid,nvidia.com:email,nvidia.com:replyto];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[nvidia.com,kernel.org,gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C81671D23FB
X-Rspamd-Action: no action

bitmap_empty() is more verbose and efficient, as it stops traversing
{r,t}xq_ena as soon as the 1st set bit found.

Signed-off-by: Yury Norov <ynorov@nvidia.com>
---
 drivers/net/ethernet/intel/ice/ice_vf_lib.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index c8bc952f05cd..772f6b07340d 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -1210,8 +1210,8 @@ bool ice_is_vf_trusted(struct ice_vf *vf)
  */
 bool ice_vf_has_no_qs_ena(struct ice_vf *vf)
 {
-	return (!bitmap_weight(vf->rxq_ena, ICE_MAX_RSS_QS_PER_VF) &&
-		!bitmap_weight(vf->txq_ena, ICE_MAX_RSS_QS_PER_VF));
+	return bitmap_empty(vf->rxq_ena, ICE_MAX_RSS_QS_PER_VF) &&
+		bitmap_empty(vf->txq_ena, ICE_MAX_RSS_QS_PER_VF);
 }
 
 /**
-- 
2.43.0

