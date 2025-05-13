Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4973BAB5147
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 May 2025 12:12:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D30DA40517;
	Tue, 13 May 2025 10:12:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0TTrYb8SD2bl; Tue, 13 May 2025 10:12:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CDC9C405A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747131122;
	bh=ls3UUmKYKMWvS9eT1u6Ml2pVSTgoHmB3c33DeRaBqgo=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1cyqrPGbjKaVBFsuTIYlXk5e0AQ5S4cW/ZCHsR7/GMMjmUCyIxJhxL7LJ5ldUsx6Y
	 oEkXdcYXdYorBnkgTYjbuDwyZlMGjgah/8NzhRZZE8A8DSTvFLf+g8QaMqz25zxkmN
	 ayUNoUwtlxojmMnuxEP8sX49JP1lCvf6gmrcOnmRTdNFZ2D+WNuychUbWQmn+zq79G
	 m8lUiOPVjNMVag4mM/DjWLQ9GY+Fmov1kgZKRYB9DL3Ub1UFqmGhfTspIhAHxXWk/m
	 1c3ae7CPbW8+594BRz+F1PPOlbrLfpa3oB0IJg8f3vF8r0ZUI8TBzNQF0erigxVIBd
	 SMzzKklgPiyGA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CDC9C405A2;
	Tue, 13 May 2025 10:12:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 097DA12A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 10:12:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A8E7F40595
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 10:11:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fBmDZOGuT6XZ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 May 2025 10:11:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.21.73;
 helo=eur05-vi1-obe.outbound.protection.outlook.com;
 envelope-from=vladimir.oltean@nxp.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C4CB740525
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C4CB740525
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur05on2073.outbound.protection.outlook.com [40.107.21.73])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C4CB740525
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 10:11:58 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xyeB1lIiE7oLeqMY/YbjKBMN0+87kmos2ptT8wCuBzbfHY+q5nlYel64vvQLLy/NSBIdZ8cWIAD5wAPGrGkyzmlDMx+cAcNq77xXAdpDhiFWzMxAwiZM+cXNe7X/vvpkbzVpWL0RSLU4PhcpEcOCCY9dDIMmVG16TojBMsjjHytjG5AsdIH6MgzcUJK5Kmj05DSAHAMm+4aa65yXY5GIy7ShhvLSo86+s/ih76uWyauKUecZ6N7eQuUrE1BhMboSrAu2hzCvj/ZfQXML4agq//2rkSgydKs0x+dEPJMvEZv3y6gP4N6RFS5iuEpJeu/iS+D/SJq+tYlDLLP7vkgD/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ls3UUmKYKMWvS9eT1u6Ml2pVSTgoHmB3c33DeRaBqgo=;
 b=JBbe3pg4u6nclykS08WctLEGf5legVve62IOaPpFdw6eDLwRB49Th1RWyKYCBjDxtmXoxMy8jlk/L6PZeIS3ZFOO477g/XGavigUwOdoPfvqMPHte5Sr689f++uEIjgwWtgYO/IO7uIgbYeHZM6hfk4aVAIhKkrQSdVnIRCzHFyyBUv7NGkQn5x1yGJhvus038D7v0phRDaEyMwq6BznwcC5tfct+ELy3gG2X5MuEKb+uX0LzcC1nK6/KT/U4YjzDDwCGUnSVDYq3nYQ6M9nlAI0bWELMLXVpgRqr0h9RHBzofTPskLepwGz0USppUYGUuC+LVHaniQOzXjVKmacFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
 by VE1PR04MB7342.eurprd04.prod.outlook.com (2603:10a6:800:1a0::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.28; Tue, 13 May
 2025 10:11:53 +0000
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2]) by AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2%4]) with mapi id 15.20.8722.027; Tue, 13 May 2025
 10:11:53 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Richard Cochran <richardcochran@gmail.com>
Date: Tue, 13 May 2025 13:11:31 +0300
Message-ID: <20250513101132.328235-5-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250513101132.328235-1-vladimir.oltean@nxp.com>
References: <20250513101132.328235-1-vladimir.oltean@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VI1PR0502CA0019.eurprd05.prod.outlook.com
 (2603:10a6:803:1::32) To AM8PR04MB7779.eurprd04.prod.outlook.com
 (2603:10a6:20b:24b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8PR04MB7779:EE_|VE1PR04MB7342:EE_
X-MS-Office365-Filtering-Correlation-Id: 281226b9-7ea1-49a8-ebd5-08dd92069580
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|52116014|366016|1800799024|38350700014; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?YoxobfewCtQPCTPM/XaEgdwJSj+XeNw8MDJ9ofeNERj0VqAsyhIFQuW1DiDd?=
 =?us-ascii?Q?XlPpiOkuP9OZcu6TbTYuRZU8uhbad209MhotULAkeDEu6HGT/Hc+BHcnZvnE?=
 =?us-ascii?Q?F7IK1JXsUzh/hzpZR18fY8k2qNGuihDS1MAXnFR75QM+adj6R/Tn3Z35eth+?=
 =?us-ascii?Q?1bQwaePLIP9vGXN40eIGn+B1P8e6gVlqZr6V9Bb0fXgP6e8NnjR1haz1WPsg?=
 =?us-ascii?Q?gE8mj+N2I5/93m4gMUERNC9YXIieO2m1U5ksimqkjnDBKDWo27u0+aPRZ4Qj?=
 =?us-ascii?Q?hj46kFdBV6bL0xcbnyjt3zQfRooV14o66WhlT9+/j6ZzOmBrnMJxGxns0oJ2?=
 =?us-ascii?Q?K8GxUzFXnzwAe1OU7ON3DYrIPIeg9fZuRITxqUpIwJWcFskWjPJAfGLTda9P?=
 =?us-ascii?Q?KRRfiFVrFa2yhGDZdHVA3Ip5hi8CCvjlNBynf+4u5oHC/KJte8CvG/d+zM+K?=
 =?us-ascii?Q?0bJolhubgQUJMKWsjvuB2lEDcwBTy2WX0deIGVrF+N0FE+bVcOOwGT1qS4vA?=
 =?us-ascii?Q?tBPMMvCPtP5kPNJS2EGVLncInxEiF5BZkBFyQWwACyJj07olL8eCh0g6+Xy9?=
 =?us-ascii?Q?NsSJNupu5pZ+uwoi5UwF/I7UTmfPKdX2Y446pmwvJV7lfEr+01w25MQ7++kv?=
 =?us-ascii?Q?h46XlJafsz937dEu5IQwnsK1agLSUSIQHKD9ttF2NWoSA842vuVwxOJ5r+0o?=
 =?us-ascii?Q?bqOmTzxVP4Py/Bm3DKTA3VY5KfzVtCqtsrQ80AXUGpIM5+Z2y3XNlGSmzXS+?=
 =?us-ascii?Q?hsxqqaS+m428x8PLNbidAz07v9UEMXZnp9ewo8P83kTq1wlQXuZNanS5Jza0?=
 =?us-ascii?Q?vCrAapR5M2CDOQEvN9CwGFnfH0FX10YMaVdLu4lLihnGvaw3OKhO/5JlGAGj?=
 =?us-ascii?Q?dNQIMFtRMu3qR2pudlOR3S3BpXZf5loQ+FEkXCBQQBr2aLbQ+mLAGIjaIFx1?=
 =?us-ascii?Q?SxQIpr+SGJRCsszYwZOCu51FJkjpfkwlZCE6Y8nyWZc7UaH2abrEbAUGLeRl?=
 =?us-ascii?Q?2exV0S9xLY7J/12iJvvU7hd3DgbRPWLkjzOFDQGgm5fnmvYMriuDVxmVuT9H?=
 =?us-ascii?Q?Ysgp2hVt+8eXYxgiGkbQGn3tFH3hre1J90LMyDspjxyfE3VhvLtsRsXxPEEf?=
 =?us-ascii?Q?LeDBlxUIdmvw4Lv9lI+SIw+osyDQYoiF4CLVy7GohvsiWLCtNbCvyUw9+qhP?=
 =?us-ascii?Q?B+8UcU/dOe21ELgtocCYKDq2VYPWBRtckdQ8binGdALTpH9HN0/V7y6WOf2U?=
 =?us-ascii?Q?KwfQjXpuJ7xunDaVbHy2IvAd8BVIwReAQVDOxCVoEw9ATdAnmGHdin/k9XEi?=
 =?us-ascii?Q?TFGs2A8J44wuGTbOVV/EGjJgdF9uKogCFq9sOTompWFIhPeEI9hzp7NuKg/E?=
 =?us-ascii?Q?j8jsNlfLSWQxXE1y/8PCO9b9ZbBr91edNjyEkRMilY+PJrqnerefUtmOka6e?=
 =?us-ascii?Q?Z6SzkobOVtrR6r9JVl3uUQYeraVppPUf2ilt2YzyK2XJUtLSyCYCgw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM8PR04MB7779.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(52116014)(366016)(1800799024)(38350700014); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?k0WbtCGwGtQ0zW8VsHmYIxT4iBRSzf2DMXCfJisEZgI0/slqKfBu9oo57vxs?=
 =?us-ascii?Q?IujwXjABUy3PmbqsShwTyPlMlRgHQ/v+QWDAykdUkylEr6ZvUZ6wHzQUTWZ4?=
 =?us-ascii?Q?PotlDrgn1+xNEbo443V4324bFc/el73MIuoKeRCThoqdoGrWX7NwGgTn+Dlb?=
 =?us-ascii?Q?/oObVkc4ebXPLoO5mw6Bwaa+q5BRa5LZwZRkpKbA/nOddmFq+OSiRFbBke2Q?=
 =?us-ascii?Q?QJPfQguv68NdViUa13RbmFMCAMgcigSz0lMKeDG8cOfG/dY66GxzaVd6Rk6c?=
 =?us-ascii?Q?3ByOc1sZdNVc0PA9e1ePgTQCvmq1aVDKSN5CsmkryBdmhCSBkihlJGH3Rpjd?=
 =?us-ascii?Q?7jQm75ycOkJljEtiWFR/+qYk5RGWa7ic7tzMIRsybeyv7kB6kegrvj1QelRe?=
 =?us-ascii?Q?VnQrtLD7kN5WoLyvyy9enH6onwx+etBfxdVFqA4PqRQolUPF5CpBGDmYE0SO?=
 =?us-ascii?Q?DhAYQ6QCPpg5IvSc82xEz/gjx4Xk6rQ6gI3OdYuZwzXSKzjvCznFvYUK1rBw?=
 =?us-ascii?Q?pYA74Wn7JWuDqoeyuW+geWBm+0OuYuX6R5rnzsdWz9aocgsZ2UZOiZgmrmtD?=
 =?us-ascii?Q?1+8QqL5X34qlv3eZDH0N15hYW0cUqxbeVQUvc6EDewGvP1+g6QFGiVMpOqs7?=
 =?us-ascii?Q?bY17rYGGl/iXzr5U9Ye+K3IYrp1YdgcjcLV90zbrmt7CYs9bbdsdNZ4Qd/4Q?=
 =?us-ascii?Q?2EXVcyygR74DE1tI24xUUQhcJmEBccvNE812Vlxd7L2R06I0uPPskXYu7OCv?=
 =?us-ascii?Q?EcKkBsUxats5vhW9ijxLQ0kK6FXzno3IUF31ECTz7iUBAm66cIY5pqKa4UwC?=
 =?us-ascii?Q?9lvYe5Dvjgn2hP830XZmPQnmO0J2dwvfiWM+/cDez7Eg29gx3oC+TAhlwnCO?=
 =?us-ascii?Q?TKm4Ipf8F1i2iF/zUsGGkS3SGzBSSTYkn6vaa3uMLej6rH/xrrYMHmGP6+k7?=
 =?us-ascii?Q?i7hrA0B23GTJirXOQI1RibExzVqK1S7usfiVi+AexzH7sf0+mFEiOC7v+Uw4?=
 =?us-ascii?Q?w/qpm/0rp12tv8gw8ldZXOQaVkALmniAvvkkCrfqp9FkcW8kzbkPXOAHdiDs?=
 =?us-ascii?Q?sTQrnZcDrJq8yE90nUoM+sAzRL3Kx58BJ6IE8QL0eONNFf2jVaUoDjoVgt+h?=
 =?us-ascii?Q?wFavvz3VToVmupOxpHZpdnnF0deMSs1QXnfj1Ej4TR5u42dF+5jXvt7VLKPW?=
 =?us-ascii?Q?k0kZVUPIW69MvSgjhHHNNlazJvd39TQiW1Phm8RLx4G9nUmE74TahZMqjraN?=
 =?us-ascii?Q?DUdd6O2xNe1hSpPfMMbGEWZDN801QpdqsIlaD3aXryGlzHwphiH13ALzeukl?=
 =?us-ascii?Q?9gmLJ0/3V1ngo1kbDvS7B1wYX5RRGggR1x0xZqdjwoLZp2psdKPuiZEtkV3N?=
 =?us-ascii?Q?cqWnfxPG3eTHzpqUeRrH3i2RAO4I1hN7mbyNttCSGzNotWGTa64l3WfDhECT?=
 =?us-ascii?Q?3IjShZ7A6Dv5Ca481/xG021TsVopEjkyU1qdvE1nYiM5Uylx8fzjv5l+tepY?=
 =?us-ascii?Q?BPCbEkWtiu6xA4R6oieRdFM8X8qRUaCaYI5dVOOr8Vvu5dOqTATtW2yoqDEI?=
 =?us-ascii?Q?xWSxuOiFOdIm6ouKit33W6kNSuQxTjEP0qvbb/htzyarIFZ+S4UrC+rn/UrL?=
 =?us-ascii?Q?oQ=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 281226b9-7ea1-49a8-ebd5-08dd92069580
X-MS-Exchange-CrossTenant-AuthSource: AM8PR04MB7779.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 May 2025 10:11:53.3650 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: y8jrgmUtv+q5jfUxEzhljcaIu3lBFkMMigygQTGdDzV068B77mc4pKk6UiOC+wt/G1HKZeG2pm/z9u4m0vb2xg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB7342
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ls3UUmKYKMWvS9eT1u6Ml2pVSTgoHmB3c33DeRaBqgo=;
 b=Yh0mLFQAkEkXIkbFrbDAsjL8GmDo3h7Sxo09U9mkb41S/44F7Pwlf+trdty+z+YMjon3iLhrCCzk+a2yJVGJUk6/jP2is5kcdwO1pcnw/SAkpGYOqLTggBQVdkMJkJsZDxrQWWYjWdiWpbcdNph19rxudKCX3nsGfHQb74Vk0I0+1ldOR5QIqMSeUQEJxWD03v4+hQ6u76Gke96jsj4b8CSvmb1l9n4k4BLXztRKISv5wGloY5jQDZmbnxUStEkXAXgLS14ngI9KZ2BDMWHEPcPssjwFm+LrYyDGAc2zujFskjFaHh6hEAsHYQx8KjJN7toRiFjcmjlIcdoIhpDDDw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=nxp.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector1 header.b=Yh0mLFQA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: [Intel-wired-lan] [PATCH iwl-next 4/5] ixgbe: convert to
 ndo_hwtstamp_get() and ndo_hwtstamp_set()
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

New timestamping API was introduced in commit 66f7223039c0 ("net: add
NDOs for configuring hardware timestamping") from kernel v6.6.

It is time to convert the Intel ixgbe driver to the new API, so that
timestamping configuration can be removed from the ndo_eth_ioctl() path
completely.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  9 ++--
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  6 +--
 drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c  | 42 +++++++++----------
 3 files changed, 29 insertions(+), 28 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
index 47311b134a7a..9432ad7f2352 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
@@ -784,7 +784,7 @@ struct ixgbe_adapter {
 	struct ptp_clock_info ptp_caps;
 	struct work_struct ptp_tx_work;
 	struct sk_buff *ptp_tx_skb;
-	struct hwtstamp_config tstamp_config;
+	struct kernel_hwtstamp_config tstamp_config;
 	unsigned long ptp_tx_start;
 	unsigned long last_overflow_check;
 	unsigned long last_rx_ptp_check;
@@ -1079,8 +1079,11 @@ static inline void ixgbe_ptp_rx_hwtstamp(struct ixgbe_ring *rx_ring,
 	rx_ring->last_rx_timestamp = jiffies;
 }
 
-int ixgbe_ptp_set_ts_config(struct ixgbe_adapter *adapter, struct ifreq *ifr);
-int ixgbe_ptp_get_ts_config(struct ixgbe_adapter *adapter, struct ifreq *ifr);
+int ixgbe_ptp_hwtstamp_get(struct net_device *netdev,
+			   struct kernel_hwtstamp_config *config);
+int ixgbe_ptp_hwtstamp_set(struct net_device *netdev,
+			   struct kernel_hwtstamp_config *config,
+			   struct netlink_ext_ack *extack);
 void ixgbe_ptp_start_cyclecounter(struct ixgbe_adapter *adapter);
 void ixgbe_ptp_reset(struct ixgbe_adapter *adapter);
 void ixgbe_ptp_check_pps_event(struct ixgbe_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 03d31e5b131d..85aee90ba87e 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -9438,10 +9438,6 @@ static int ixgbe_ioctl(struct net_device *netdev, struct ifreq *req, int cmd)
 	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 
 	switch (cmd) {
-	case SIOCSHWTSTAMP:
-		return ixgbe_ptp_set_ts_config(adapter, req);
-	case SIOCGHWTSTAMP:
-		return ixgbe_ptp_get_ts_config(adapter, req);
 	case SIOCGMIIPHY:
 		if (!adapter->hw.phy.ops.read_reg)
 			return -EOPNOTSUPP;
@@ -10905,6 +10901,8 @@ static const struct net_device_ops ixgbe_netdev_ops = {
 	.ndo_bpf		= ixgbe_xdp,
 	.ndo_xdp_xmit		= ixgbe_xdp_xmit,
 	.ndo_xsk_wakeup         = ixgbe_xsk_wakeup,
+	.ndo_hwtstamp_get	= ixgbe_ptp_hwtstamp_get,
+	.ndo_hwtstamp_set	= ixgbe_ptp_hwtstamp_set,
 };
 
 static void ixgbe_disable_txr_hw(struct ixgbe_adapter *adapter,
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c
index eef25e11d938..ac7abd40c33b 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c
@@ -936,20 +936,22 @@ void ixgbe_ptp_rx_rgtstamp(struct ixgbe_q_vector *q_vector,
 }
 
 /**
- * ixgbe_ptp_get_ts_config - get current hardware timestamping configuration
- * @adapter: pointer to adapter structure
- * @ifr: ioctl data
+ * ixgbe_ptp_hwtstamp_get - get current hardware timestamping configuration
+ * @netdev: pointer to net device structure
+ * @config: timestamping configuration structure
  *
  * This function returns the current timestamping settings. Rather than
  * attempt to deconstruct registers to fill in the values, simply keep a copy
  * of the old settings around, and return a copy when requested.
  */
-int ixgbe_ptp_get_ts_config(struct ixgbe_adapter *adapter, struct ifreq *ifr)
+int ixgbe_ptp_hwtstamp_get(struct net_device *netdev,
+			   struct kernel_hwtstamp_config *config)
 {
-	struct hwtstamp_config *config = &adapter->tstamp_config;
+	struct ixgbe_adapter *adapter = netdev_priv(netdev);
 
-	return copy_to_user(ifr->ifr_data, config,
-			    sizeof(*config)) ? -EFAULT : 0;
+	*config = adapter->tstamp_config;
+
+	return 0;
 }
 
 /**
@@ -978,7 +980,7 @@ int ixgbe_ptp_get_ts_config(struct ixgbe_adapter *adapter, struct ifreq *ifr)
  * mode, if required to support the specifically requested mode.
  */
 static int ixgbe_ptp_set_timestamp_mode(struct ixgbe_adapter *adapter,
-				 struct hwtstamp_config *config)
+					struct kernel_hwtstamp_config *config)
 {
 	struct ixgbe_hw *hw = &adapter->hw;
 	u32 tsync_tx_ctl = IXGBE_TSYNCTXCTL_ENABLED;
@@ -1129,31 +1131,29 @@ static int ixgbe_ptp_set_timestamp_mode(struct ixgbe_adapter *adapter,
 }
 
 /**
- * ixgbe_ptp_set_ts_config - user entry point for timestamp mode
- * @adapter: pointer to adapter struct
- * @ifr: ioctl data
+ * ixgbe_ptp_hwtstamp_set - user entry point for timestamp mode
+ * @netdev: pointer to net device structure
+ * @config: timestamping configuration structure
+ * @extack: netlink extended ack structure for error reporting
  *
  * Set hardware to requested mode. If unsupported, return an error with no
  * changes. Otherwise, store the mode for future reference.
  */
-int ixgbe_ptp_set_ts_config(struct ixgbe_adapter *adapter, struct ifreq *ifr)
+int ixgbe_ptp_hwtstamp_set(struct net_device *netdev,
+			   struct kernel_hwtstamp_config *config,
+			   struct netlink_ext_ack *extack)
 {
-	struct hwtstamp_config config;
+	struct ixgbe_adapter *adapter = netdev_priv(netdev);
 	int err;
 
-	if (copy_from_user(&config, ifr->ifr_data, sizeof(config)))
-		return -EFAULT;
-
-	err = ixgbe_ptp_set_timestamp_mode(adapter, &config);
+	err = ixgbe_ptp_set_timestamp_mode(adapter, config);
 	if (err)
 		return err;
 
 	/* save these settings for future reference */
-	memcpy(&adapter->tstamp_config, &config,
-	       sizeof(adapter->tstamp_config));
+	adapter->tstamp_config = *config;
 
-	return copy_to_user(ifr->ifr_data, &config, sizeof(config)) ?
-		-EFAULT : 0;
+	return 0;
 }
 
 static void ixgbe_ptp_link_speed_adjust(struct ixgbe_adapter *adapter,
-- 
2.43.0

