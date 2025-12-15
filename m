Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9921ACBED5E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Dec 2025 17:10:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5500460656;
	Mon, 15 Dec 2025 16:10:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KtUcx01XpAxz; Mon, 15 Dec 2025 16:10:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4921560E0E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765815036;
	bh=PY0xoOgkLhIZDxymJ+DhrA7ukrxJbsGLN+qM5XKy4ko=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6ZBOqaFPO1ysQTeAeJaVvAuZHQ99HRDqChQLPiuAk9RFMlZ2YXQ574zF2bnKhPc6a
	 K2RF6ZZqlhWH7jAccaeaDcJdFc7c+XahA62FK576OVvBAT9n9HcXRHHSoA91WPFyGd
	 yAeJmOjoSqP5eCL40eTNHqUYhcAH5XR7DW9mOO7Sjb1eZdQymggSkyjgqjV3GsjIxI
	 PM3K9XioR9csSkOOBgzNkGmKfKhGWCe8k9Fv1x2G1G7m8GVaFOhCyssYfqC+WDq76u
	 AEP/Zn6oZGjkf+NcI7dCLm6OQnoaTaXpLmQSghKasFq7/cNJ25iedVeOLeJB5h2hAn
	 9JVpWacyL/J9A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4921560E0E;
	Mon, 15 Dec 2025 16:10:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id D00EC118
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 16:10:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CDC4440499
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 16:10:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Km9IFl6ZmBnH for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Dec 2025 16:10:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BC0B2403DF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BC0B2403DF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BC0B2403DF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 16:10:33 +0000 (UTC)
X-CSE-ConnectionGUID: klX9SseXQkG0ZY8kys/gfw==
X-CSE-MsgGUID: dYOX91HeTW2P5sMLi03eeQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="78425119"
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="78425119"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 08:10:33 -0800
X-CSE-ConnectionGUID: dkDh7zJeTnaDXIwc3qxwcg==
X-CSE-MsgGUID: /Y/d4zZ6SU+o/VMtnwqAtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="201940944"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 08:10:33 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 08:10:32 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 15 Dec 2025 08:10:32 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.27) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 08:10:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Fho3jqXndgZuYkWPkXJ0/av/RG8drE5PGsYy7BuWZ9yxMu+vbaNn47jbVoMPKu0vpPC/6er60bmkdL/LoM9Xy0jJqjnhigjlCSi6dLcrR41HU6sPuOnf/mWt1rE2CR5M1QOzJV8ObDIS+SukxezmEDZH7Nv4K7Z70nhtKkK+2JrjCGJZ9koeJLHu11cMBLK72FJ20fb8nZUJMF9MgVKcXPNEF6fU4kXgnR7ks5FMN81iyNbk9TB5tlvrEgBFaM5PEu8nDeMpS0OvIGLEQcrIKJX5JwSUXNPKwn27req6FB5i5KaAXUqXVThhW9OF/KxV912SQwZfFQ7gPMULdvxIsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PY0xoOgkLhIZDxymJ+DhrA7ukrxJbsGLN+qM5XKy4ko=;
 b=YCJl0+VnSt4tT45Elm/7GJ8TS5cBT8UDY3gx4WTTeVrcTdbAoCovieJCM6/wj+sBVyqfHuZ6GEL1OX2v29gTjk1TTcK4IhIOGpEeNolDIJRIQLktQvRiXU26aFqVJAhVPnZQW3GKgTDKvAmbHKpWffecg04KeMdNxQUAxI5BzZ9q3YSXwRurGPNlknaC5Y5Qwg7mSTDVOOiW5EKGG76dHyAbHDAWIRBoCfH4ov+w9Zt3ILXYZm0HDe/MvXHnQtmiSOoPIsJzTTSjv/gFAljgoOsC+WVplu8Tna5IUe23MiantdEpcoLHtFfHfPPsEaySFVeyhNhUCDXfiUQMtzLozA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7540.namprd11.prod.outlook.com (2603:10b6:806:340::7)
 by IA1PR11MB6419.namprd11.prod.outlook.com (2603:10b6:208:3a9::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.13; Mon, 15 Dec
 2025 16:10:28 +0000
Received: from SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29]) by SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29%5]) with mapi id 15.20.9412.011; Mon, 15 Dec 2025
 16:10:28 +0000
Date: Mon, 15 Dec 2025 17:10:14 +0100
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: "Tantilov, Emil S" <emil.s.tantilov@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, <aleksander.lobakin@intel.com>,
 <sridhar.samudrala@intel.com>, "Singhai, Anjali" <anjali.singhai@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Fijalkowski,
 Maciej" <maciej.fijalkowski@intel.com>, Madhu Chittim
 <madhu.chittim@intel.com>, Josh Hay <joshua.a.hay@intel.com>, "Keller, Jacob
 E" <jacob.e.keller@intel.com>, <jayaprakash.shanmugam@intel.com>,
 <natalia.wochtman@intel.com>, Jiri Pirko <jiri@resnulli.us>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Richard Cochran
 <richardcochran@gmail.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, <netdev@vger.kernel.org>,
 <linux-doc@vger.kernel.org>, <linux-kernel@vger.kernel.org>, "Aleksandr
 Loktionov" <aleksandr.loktionov@intel.com>
Message-ID: <aUAy5vJ04DWAVohe@soc-5CG4396X81.clients.intel.com>
References: <20251117134912.18566-1-larysa.zaremba@intel.com>
 <20251117134912.18566-10-larysa.zaremba@intel.com>
 <f9a69abd-dabc-440a-a3cd-c88b184f7e77@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <f9a69abd-dabc-440a-a3cd-c88b184f7e77@intel.com>
X-ClientProxiedBy: VI1PR09CA0125.eurprd09.prod.outlook.com
 (2603:10a6:803:78::48) To SN7PR11MB7540.namprd11.prod.outlook.com
 (2603:10b6:806:340::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7540:EE_|IA1PR11MB6419:EE_
X-MS-Office365-Filtering-Correlation-Id: f7b24cf9-45ce-42bd-f3ab-08de3bf476bc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|10070799003; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?u66DCjuuCUTB29CJMz8KZkoTI+GcxPpXvdaV9aGjfRh/oT13rL+8le2BaWyS?=
 =?us-ascii?Q?/aOR3OMK7SuirTUBGlIrS3tn+ZZUMEEiVQbiCA5nBB2WnREqUHJFkP1PFZOT?=
 =?us-ascii?Q?Blk0kOUlSrUni5raqSjiAbmh4vBXVtWj/InoDi4TTXisuXPYItuOU551VIqb?=
 =?us-ascii?Q?RqGFvVeW2J6mx6GdU5en2w8knjl6kHOEpzCCJHcoTAO0OEmE+Acde7RZ0Qt+?=
 =?us-ascii?Q?BOxHdCcT7jub7UH1iWkLw2AaPIC3GKqEDoUOHb1nBtsMEa8/DczissypMSLo?=
 =?us-ascii?Q?vCdW61zxoEb3Qy/Nua758MNNYqvQL4cOfudH1IAZPYDEClYod6ivGaGmNOu/?=
 =?us-ascii?Q?TN7vhInNacdygJXVje5S8k9JPeno/6uXvIMB7tgk/pDA5p+hr0hvWqPiWwGN?=
 =?us-ascii?Q?gIKBhrtn/FOZIMYm16oXMaRnNTn66Z6lz1mKGVKmapDNjd43dKYZsKgZmTAH?=
 =?us-ascii?Q?yn7FyFreVoCJdBuU6ew5ouD572wW+8C/9VyQHvzRW5TayXWEnJfdVsEIAfqG?=
 =?us-ascii?Q?1qTgieMSsmRxhWEcBlzekHvcj5Ouw3Qhj6Zte56jlF3rrWezdGHxG3w9ENhn?=
 =?us-ascii?Q?ES1KVgioNYjglq+7S/5B9tYeAi1i6ofdQellLDj149sx01cNtg0cX/5Np9JQ?=
 =?us-ascii?Q?7hYzgHfyca4xmvAjDKA3itocnfNzMsiG0N5jQDaWVdY2O/BGJq+iAAzYLtEv?=
 =?us-ascii?Q?E/aPJq/WycxsTCzbZuw9WePjxpbaNLddtbgRNcBXbekppxqHtaLUHqTHsVWe?=
 =?us-ascii?Q?QniH2uoMi8fuxxBYOrUUnT/4QiPcdhwHRiGg2WX8liBrX03P29X3VZMkzKh4?=
 =?us-ascii?Q?jJBiZEsgCGS9P+l+NTDEgdCnlrDz+Tge9Mgdyb73YxNXDtUNB90Xfgs8rmQ0?=
 =?us-ascii?Q?1canKGDMgM8F2fL5IhVwIUF9/+L7HqTKaTWalzhnE+SQV6X/KzpFe97aM9Bb?=
 =?us-ascii?Q?TYUNctkvwHFp78vKmIh0zFJFB570ICK0fYpyfdgNaLKrVT5RBHP8KTiWTtxj?=
 =?us-ascii?Q?S/9fd7rr3XgucJSjG4EvR49UmxzibbrHciUUubRcIZC8Eni/Ljm/AZINJLQy?=
 =?us-ascii?Q?P8ROKUM1kYqf9JXvNZOCrSPDVLso6vp25o7JdFtUskDMUdii9SX1F76/yk5T?=
 =?us-ascii?Q?lfn7d3PoYWmRPn1Txk/4q/jzRZR7e5COGjnnjdOyGfIxQx0qtRG/E7OQR8Sj?=
 =?us-ascii?Q?75mrRjJARBzVPiFlsc4g6JRhM7S34qZHl4hRAijRQfJ1dw2tEfRp4E1Ry4/S?=
 =?us-ascii?Q?jWoC4Xh7AgnzI1ZDTd5Phkcq4ErGTP6sEEMi+tUw7RHIhY4odJSCGoY1ZvSn?=
 =?us-ascii?Q?TbM/jyCVPYuFpyDEHPDjiNKt8ocOuvEWgIyOucc7yPMRhi39NVgEOdG/oFF8?=
 =?us-ascii?Q?rAC0OZCwlKUuyInG2Y8JcLYrd2K2umbncqSYx4qExUZ+nVV3O1vWSzaEVttX?=
 =?us-ascii?Q?bydL7J3Pbz31giEK48WTqId73jngXtgDn/TRdCxdHNlSbXjx2VAIXw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7540.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(10070799003); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?FK4zZ5QGfdde/xqjscZW5+vBgLwMyd6LMiWiI5/TuN5ZqyvuAv2PyoyT/88b?=
 =?us-ascii?Q?qKf7prpGb60AH16eviuLHhLkEJQj0tnvTk9QGXFnmLmnYTZxZekfEeu8Iq1R?=
 =?us-ascii?Q?Nuhp5m4AHPdTZj7JwAk6G4nhiPk9qcTg9+xPTXi7tCRB7PEOHCxf756u2Ugq?=
 =?us-ascii?Q?kcWBdhvCwzwMwrU1T2iT0T0WNjWSAK0wmoCNip7Zku4qxK/rPdNgkFcvJIab?=
 =?us-ascii?Q?QniYNyRawrFbkQi+3VkIurD5SPCK1mJ4I6QfnpcVzUjgvJeRQqt51sEjBJfp?=
 =?us-ascii?Q?cnsldec7vwG9YOln7gCvGfMU7whQvtLOCYztGYZx3df7UXW4gRjBAWJCm2QT?=
 =?us-ascii?Q?CeFCU6g3jA7JQmnmKnWoAv5BFQpgcy4b48xpKTq6SF9OStxR9cSg2awp5+20?=
 =?us-ascii?Q?LS0LL1c7qY3qzvTotv3jwPboksUQAgJSUXN4r5EKYKsuZJiB77BDZEdHj8ZY?=
 =?us-ascii?Q?m1Y8et/KEDO7iRFlM4d/SqYcNfLTDrnMDY+rQW2LDcdKKvywcwAWiDJ3ymux?=
 =?us-ascii?Q?OEAHYiDXQao/GTDkBbo0K9EYCMRjmlFd+gbxqtwNGq3/GOUU0kTuODDezsxO?=
 =?us-ascii?Q?LoMl3sMWI6wEvaN9FiXELvVOKj9AaJqz4jvDnekyYIZH3nokELIrJyG4VHl2?=
 =?us-ascii?Q?cIGVgSN5PyTo4RXBb9D59DKbmgNaF8LXrTErS4LJkhGj+Of6xKjVA78p8dUu?=
 =?us-ascii?Q?7RfWAbM74GyLYQWDx5/PKLHaaw+bC0OK5eBBVYPb/gm1QmeNpweWFwzSImtz?=
 =?us-ascii?Q?0XdOgx10iru2zudQ4VkoqFXNcMFxietgmdnMfxUVCTw9cLkDhviHbCKLJTED?=
 =?us-ascii?Q?8iHCIrvAIVOOM0OSJZNoESsREUfq+M43I0XTDlpNgvrtuBZyqTHn9GTvQ/Li?=
 =?us-ascii?Q?gW4xya86LSr9kfmDvb3qw5Ga5ASHAgwD0KEC32pKH6V6eC7Y4eFwGJoSY+Ch?=
 =?us-ascii?Q?Oamv+g+6VTO+6MiXjG9Q0dWIU7TUuZg65+bHondMWZ28BrG85UXd1C/v9XUR?=
 =?us-ascii?Q?9QvaFSSavctVcIFZCkvHpNLzK0l2K4hDz9nnQ4Be5/oF1zr8LUmh6UYXpZBP?=
 =?us-ascii?Q?MBHXm6XMAgXeD//PLsN0qcKFNM7FAYqnl6m5UkuKfjFBEOwm7Y8MN5//9Khc?=
 =?us-ascii?Q?yVfHR/UnL4uZhbmOUUMfDlGXvxTW694jfxqGYLo72O97BuH+62E9oSVJNr7P?=
 =?us-ascii?Q?vUMS+tvtz3+BIQ0P6DwQm+8+6YfZ5IcANmW+XK8712zi5wKjaoTXVhJ1LkyF?=
 =?us-ascii?Q?J/F4hRKMaRK67JkTtSh7mT1R83By/NQ6z5y9/eJHXbs4V4nNR9bCdjEFtvr7?=
 =?us-ascii?Q?xrnDp3A7msqi9CFYoi0G3dydKEN3BXUaHyt90NMShbNkbjg+PDsOOpAumd1Q?=
 =?us-ascii?Q?l0HIxX6a+7zoDednZKJpvyrrOWF84JCcj5+tjw+PaBfHk0Kg2wAjMOLti4Ix?=
 =?us-ascii?Q?DMzPhCRRsTZBBjsfHjE3VkpuX/AD050arPzbeLdIkg7Kfn5YkdD1Ssank9xP?=
 =?us-ascii?Q?3MITStsD/Mn5omvyAregRE1kfGI9+aqBsN7k3w9bgiCaQShtSvRL6twksxj7?=
 =?us-ascii?Q?VHIcr8MHmsSrkcsgG3ZqHvvmk+dWhtKGl/5cSLxE5EqWvFUFA5bgl3lo0CUV?=
 =?us-ascii?Q?Uk97XDjOy0X3oC/L5jxpcNEk5mOyBNQBW0/zffNv5Qx4ElR1rash7AbtNA7r?=
 =?us-ascii?Q?Hx6RRA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f7b24cf9-45ce-42bd-f3ab-08de3bf476bc
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7540.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Dec 2025 16:10:28.6787 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: na2bhG8kgN6PSaDQwEgzdpXz9Jl3gWbs70VebdPZVUvy30sQtTkQnLTmE9l7vFsa8HNjrSmHP5WSMchD2RHEKDygqznJ8PgwhJZonpXn7uo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6419
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765815033; x=1797351033;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ORPW/PhDVY0ckZAz+zz6a4g+5MV/noJ4NuhB61kTxe4=;
 b=mqwHHZNn+Wzo6E5Dux78wrq+C1wKSmrgTj4VoChgPqUrg7OH1+I0ByCs
 rp/SjrYafcf38l90tUMScA5tiB/YKox67TyhL1bzPGfDxf0dD2O4+3+N6
 djYsNITJzLQhzZ/aX/u2Glq9R/Xb+GwZFoODci3a+yrdLtVdwJdRH3aV9
 nsU6KQTxQ+2qVL8FYPU7WR1W1vCFophskXjmwejOCIlQ7q7UcVn943mll
 CGJkx6lbsWyfrDal+vivQ4PHxAHfvCUBId0BVnu+j1Eb4bxwuht1Lzzse
 Hr8OSK7FTQErrFj4Sm8g6q0vdS3qdA12rvKDUblFWLhv2fGPkxNko0Zhk
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mqwHHZNn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 09/15] idpf: refactor idpf
 to use libie control queues
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

On Wed, Dec 10, 2025 at 07:42:53PM -0800, Tantilov, Emil S wrote:
> 
> On 11/17/2025 5:48 AM, Larysa Zaremba wrote:
> > From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > 
> > Support to initialize and configure controlqs, and manage their
> > transactions was introduced in libie. As part of it, most of the existing
> > controlq structures are renamed and modified. Use those APIs in idpf and
> > make all the necessary changes.
> > 
> > Previously for the send and receive virtchnl messages, there used to be a
> > memcpy involved in controlq code to copy the buffer info passed by the send
> > function into the controlq specific buffers. There was no restriction to
> > use automatic memory in that case. The new implementation in libie removed
> > copying of the send buffer info and introduced DMA mapping of the send
> > buffer itself. To accommodate it, use dynamic memory for the larger send
> > buffers. For smaller ones (<= 128 bytes) libie still can copy them into the
> > pre-allocated message memory.
> > 
> > In case of receive, idpf receives a page pool buffer allocated by the libie
> > and care should be taken to release it after use in the idpf.
> > 
> > The changes are fairly trivial and localized, with a notable exception
> > being the consolidation of idpf_vc_xn_shutdown and idpf_deinit_dflt_mbx
> > under the latter name. This has some additional consequences that are
> > addressed in the following patches.
> > 
> > This refactoring introduces roughly additional 40KB of module storage used
> > for systems that only run idpf, so idpf + libie_cp + libie_pci takes about
> > 7% more storage than just idpf before refactoring.
> > 
> > We now pre-allocate small TX buffers, so that does increase the memory
> > usage, but reduces the need to allocate. This results in additional 256 *
> > 128B of memory permanently used, increasing the worst-case memory usage by
> > 32KB but our ctlq RX buffers need to be of size 4096B anyway (not changed
> > by the patchset), so this is hardly noticeable.
> > 
> > As for the timings, the fact that we are mostly limited by the HW response
> > time which is far from instant, is not changed by this refactor.
> > 
> > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > Co-developed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> > Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> > ---
> >   drivers/net/ethernet/intel/idpf/Makefile      |    2 -
> >   drivers/net/ethernet/intel/idpf/idpf.h        |   28 +-
> >   .../net/ethernet/intel/idpf/idpf_controlq.c   |  633 -------
> >   .../net/ethernet/intel/idpf/idpf_controlq.h   |  142 --
> >   .../ethernet/intel/idpf/idpf_controlq_api.h   |  177 --
> >   .../ethernet/intel/idpf/idpf_controlq_setup.c |  171 --
> >   drivers/net/ethernet/intel/idpf/idpf_dev.c    |   60 +-
> >   .../net/ethernet/intel/idpf/idpf_ethtool.c    |   20 +-
> >   drivers/net/ethernet/intel/idpf/idpf_lib.c    |   67 +-
> >   drivers/net/ethernet/intel/idpf/idpf_main.c   |    5 -
> >   drivers/net/ethernet/intel/idpf/idpf_mem.h    |   20 -
> >   drivers/net/ethernet/intel/idpf/idpf_txrx.h   |    2 +-
> >   drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |   67 +-
> >   .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 1580 ++++++-----------
> >   .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   90 +-
> >   .../ethernet/intel/idpf/idpf_virtchnl_ptp.c   |  239 ++-
> >   16 files changed, 783 insertions(+), 2520 deletions(-)
> >   delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq.c
> >   delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq.h
> >   delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq_api.h
> >   delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq_setup.c
> >   delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_mem.h
> > 
> 
> <snip>
> 
> > diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> > index e15b1e8effc8..7751a81fc29d 100644
> > --- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
> > +++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> > @@ -1363,6 +1363,7 @@ void idpf_statistics_task(struct work_struct *work)
> >    */
> >   void idpf_mbx_task(struct work_struct *work)
> >   {
> > +	struct libie_ctlq_xn_recv_params xn_params;
> >   	struct idpf_adapter *adapter;
> >   	adapter = container_of(work, struct idpf_adapter, mbx_task.work);
> > @@ -1373,7 +1374,14 @@ void idpf_mbx_task(struct work_struct *work)
> >   		queue_delayed_work(adapter->mbx_wq, &adapter->mbx_task,
> >   				   usecs_to_jiffies(300));
> > -	idpf_recv_mb_msg(adapter, adapter->hw.arq);
> > +	xn_params = (struct libie_ctlq_xn_recv_params) {
> > +		.xnm = adapter->xn_init_params.xnm,
> > +		.ctlq = adapter->arq,
> > +		.ctlq_msg_handler = idpf_recv_event_msg,
> > +		.budget = LIBIE_CTLQ_MAX_XN_ENTRIES,
> > +	};
> > +
> > +	libie_ctlq_xn_recv(&xn_params);
> >   }
> >   /**
> > @@ -1907,7 +1915,6 @@ static void idpf_init_hard_reset(struct idpf_adapter *adapter)
> >   		idpf_vc_core_deinit(adapter);
> >   		if (!is_reset)
> >   			reg_ops->trigger_reset(adapter, IDPF_HR_FUNC_RESET);
> > -		idpf_deinit_dflt_mbx(adapter);
> >   	} else {
> >   		dev_err(dev, "Unhandled hard reset cause\n");
> >   		err = -EBADRQC;
> > @@ -1972,19 +1979,11 @@ void idpf_vc_event_task(struct work_struct *work)
> >   	if (test_bit(IDPF_REMOVE_IN_PROG, adapter->flags))
> >   		return;
> > -	if (test_bit(IDPF_HR_FUNC_RESET, adapter->flags))
> > -		goto func_reset;
> > -
> > -	if (test_bit(IDPF_HR_DRV_LOAD, adapter->flags))
> > -		goto drv_load;
> > -
> > -	return;
> > -
> > -func_reset:
> > -	idpf_vc_xn_shutdown(adapter->vcxn_mngr);
> 
> This will cause a regression where VC can timeout on reset:
> https://lore.kernel.org/intel-wired-lan/20250508184715.7631-1-emil.s.tantilov@intel.com/
> 
> I think we can keep this logic, remove the calls to vc_xn_shutdown in
> idpf_vc_core_deinit() and add it to idpf_remove().
> 
> Thanks,
> Emil
> 

Thank you for bringging this up!

It's a shame that the solution that we have agreed with you on previouly has 
such unintended consequences. Well, after looking at it this way, I see no good 
solution except bringing back xnm shutdown, but in libie. See the suggested diff 
below. Please, say if it works for you.

When fixed up in a final patch idpf_vc_event_task will only have one changed 
line:

@@ -1981,7 +1986,7 @@ void idpf_vc_event_task(struct work_struct *work)
        return;

 func_reset:
-       idpf_vc_xn_shutdown(adapter->vcxn_mngr);
+       libie_ctlq_xn_shutdown(adapter->xnm);
 drv_load:
        set_bit(IDPF_HR_RESET_IN_PROG, adapter->flags);
        idpf_init_hard_reset(adapter);

libie_ctlq_xn_shutdown() sets the state to shutdown, so no new xns can be 
taken (-EAGAIN) and running xns are prematurely completed 
resulting in a timed out error. At the same it does not free any memory, so no 
use-after-free risks.

---------------------
The main diff:

diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 69eb72ed6b99..dff931ebbd9f 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -1977,12 +1977,19 @@ void idpf_vc_event_task(struct work_struct *work)

        if (test_bit(IDPF_REMOVE_IN_PROG, adapter->flags))
                return;
+       if (test_bit(IDPF_HR_FUNC_RESET, adapter->flags))
+               goto func_reset;

-       if (test_bit(IDPF_HR_FUNC_RESET, adapter->flags) ||
-           test_bit(IDPF_HR_DRV_LOAD, adapter->flags)) {
-               set_bit(IDPF_HR_RESET_IN_PROG, adapter->flags);
-               idpf_init_hard_reset(adapter);
-       }
+       if (test_bit(IDPF_HR_DRV_LOAD, adapter->flags))
+               goto drv_load;
+
+       return;
+
+func_reset:
+       libie_ctlq_xn_shutdown(adapter->xn_init_params.xnm);
+drv_load:
+       set_bit(IDPF_HR_RESET_IN_PROG, adapter->flags);
+       idpf_init_hard_reset(adapter);
 }

 /**
diff --git a/drivers/net/ethernet/intel/libie/controlq.c b/drivers/net/ethernet/intel/libie/controlq.c
index 9b24a87872e5..a39ee6ea37f1 100644
--- a/drivers/net/ethernet/intel/libie/controlq.c
+++ b/drivers/net/ethernet/intel/libie/controlq.c
@@ -694,7 +694,7 @@ static void libie_ctlq_xn_put(struct libie_ctlq_xn_manager *xnm,
  */
 static void libie_ctlq_xn_deinit_dma(struct device *dev,
                                     struct libie_ctlq_xn_manager *xnm,
-                                     u32 num_entries)
+                                    u32 num_entries)
 {
        for (u32 i = 0; i < num_entries; i++) {
                struct libie_ctlq_xn *xn = &xnm->ring[i];
@@ -1093,14 +1093,12 @@ u32 libie_ctlq_xn_send_clean(const struct libie_ctlq_xn_clean_params *params)
 EXPORT_SYMBOL_NS_GPL(libie_ctlq_xn_send_clean, "LIBIE_CP");

 /**
- * libie_ctlq_xn_deinit - deallocate and free the transaction manager resources
+ * libie_ctlq_xn_shutdown - terminate control queue transactions
  * @xnm: pointer to the transaction manager
- * @ctx: controlq context structure
  *
- * All Rx processing must be stopped beforehand.
+ * Synchronously terminate existing transactions and stop accepting new ones.
  */
-void libie_ctlq_xn_deinit(struct libie_ctlq_xn_manager *xnm,
-                         struct libie_ctlq_ctx *ctx)
+void libie_ctlq_xn_shutdown(struct libie_ctlq_xn_manager *xnm)
 {
        bool must_wait = false;
        u32 i;
@@ -1129,7 +1127,20 @@ void libie_ctlq_xn_deinit(struct libie_ctlq_xn_manager *xnm,

        if (must_wait)
                wait_for_completion(&xnm->can_destroy);
+}
+EXPORT_SYMBOL_NS_GPL(libie_ctlq_xn_shutdown, "LIBIE_CP");

+/**
+ * libie_ctlq_xn_deinit - deallocate and free the transaction manager resources
+ * @xnm: pointer to the transaction manager
+ * @ctx: controlq context structure
+ *
+ * All Rx processing must be stopped beforehand.
+ */
+void libie_ctlq_xn_deinit(struct libie_ctlq_xn_manager *xnm,
+                         struct libie_ctlq_ctx *ctx)
+{
+       libie_ctlq_xn_shutdown(xnm);
        libie_ctlq_xn_deinit_dma(&ctx->mmio_info.pdev->dev, xnm,
                                 LIBIE_CTLQ_MAX_XN_ENTRIES);
        kfree(xnm);
diff --git a/include/linux/intel/libie/controlq.h b/include/linux/intel/libie/controlq.h
index 4a627670814e..98f082b5d039 100644
--- a/include/linux/intel/libie/controlq.h
+++ b/include/linux/intel/libie/controlq.h
@@ -414,6 +414,7 @@ struct libie_ctlq_xn_init_params {
 int libie_ctlq_xn_init(struct libie_ctlq_xn_init_params *params);
 void libie_ctlq_xn_deinit(struct libie_ctlq_xn_manager *xnm,
                          struct libie_ctlq_ctx *ctx);
+void libie_ctlq_xn_shutdown(struct libie_ctlq_xn_manager *xnm);
 int libie_ctlq_xn_send(struct libie_ctlq_xn_send_params *params);
 u32 libie_ctlq_xn_recv(struct libie_ctlq_xn_recv_params *params);
 u32 libie_ctlq_xn_send_clean(const struct libie_ctlq_xn_clean_params *params);
