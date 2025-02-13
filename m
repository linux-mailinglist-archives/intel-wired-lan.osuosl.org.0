Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7005BA359C6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Feb 2025 10:10:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2CC3941710;
	Fri, 14 Feb 2025 09:10:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BG5tbq2-kHjd; Fri, 14 Feb 2025 09:10:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0A15B416FC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739524201;
	bh=X8LCzim9diYo2dcz1H+ibAlPgpsKeEs1umnZmfnpuLw=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JBs9Y9/0q6yaO1Z2gt2Up0NGDNl6vaGWNWZbmWybOeIbe5awtNgVotI3F0MHaoMAW
	 0wXzhggESZuwaMO8vKCrTgv3Cq4QCMgECHUSFPZrEgAm4Rtw+FFimMDPCLuUTP9T4a
	 GyAgSh/0aUb9Fd4m4YOSMhGEVrpgfiG/ArSzayJvHaNTR/nEX5sxca/5KLj7ojb9/K
	 DszoNcUOLFLr4L5jWKk3FFhvA+aQauYmJuZZ7uS2+pZJaciR+qYYyHzRy5nw/3v6O9
	 YBosUm2D7fK0+UIjqLJZa7Ur2SaOv+zs3uYaIOYdbDfSwC+Lmj3YCecIx8pucMBoun
	 Y+aviaySarz4Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0A15B416FC;
	Fri, 14 Feb 2025 09:10:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 65BD4C2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 09:09:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 49B166FC30
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 09:09:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mJKjYlac8C10 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Feb 2025 09:09:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8838A6FACE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8838A6FACE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8838A6FACE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 09:09:57 +0000 (UTC)
X-CSE-ConnectionGUID: Q5bb9MBhSdS7dIqipXMqtQ==
X-CSE-MsgGUID: MMZXfLAsRa+SRoid85lLqQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="39974345"
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="39974345"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 01:09:57 -0800
X-CSE-ConnectionGUID: MiJXz5zeR02Ik/dydutX0g==
X-CSE-MsgGUID: GxOwxIgIRhqmk0TgKmvcmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="118426744"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Feb 2025 01:09:57 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 14 Feb 2025 01:09:56 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 14 Feb 2025 01:09:56 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 14 Feb 2025 01:09:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SMeIcM5FWXzajpBsvQeE0GObm5b8P2UWpCCZYqNoksXPdqc3jnlcCo57i+ZF8qiwyzzUBUC6w9dxY+LMWHOZeZhtuJsEM4PWmx0RvMidxj2VQ3pkXqghiOIdKX9W8FUlAJl57di+rjpyzZqFetiIDW/fvL+d5duA27nswFA05fb83sPZmAwsOgJoBThbe/SGGCkW4XFdcU0m9s9DA2uS7Zn46s2phfDGvq3jdZFPDcrsHLFs73f7Gnce37q4STrcVv0CJTZYBJh7snNSDd2OpK0IcmJCEqGz2SD46pN/W7+DdP3vMABfPrSJu6hzYt60IKN5hXiL5wHDqs1re+Zu1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X8LCzim9diYo2dcz1H+ibAlPgpsKeEs1umnZmfnpuLw=;
 b=Ap29MtK3bODjxeqjSARKbLoXnMJYeHYnx3IXJCerH6nq5d5FpKR7oDoG8FBCMWJLpY+KCcq9ydObyc2q3ikaLaHQ66bI6WXAUZ8Vlk/roeRVcnw1OHMzZYnJ1KPZEOHs7pSd4E1p6+4q3zRzTtoWAOf4j12YnBzPC/DAJjXyZUgRTCzkt2fWa36Mq43LrwHTVoQk9zWhoNUV/rb4iVmJmXJPKRNEptOb344nszJHCWUiQHuRtqSA224ELSyefD+H5ergsO6wdGCzqq4xvsyjTACo81ChQnHE2jJwDbWSVSLPnBfacR38o0EYeXnHfxb9Rv5x0iUMa/EZRHqktU7cwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7540.namprd11.prod.outlook.com (2603:10b6:806:340::7)
 by SA2PR11MB4779.namprd11.prod.outlook.com (2603:10b6:806:11a::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.18; Fri, 14 Feb
 2025 09:09:54 +0000
Received: from SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29]) by SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29%3]) with mapi id 15.20.8445.013; Fri, 14 Feb 2025
 09:09:54 +0000
Date: Thu, 13 Feb 2025 23:35:44 +0100
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, Mateusz Pacuszka
 <mateuszx.pacuszka@intel.com>
Message-ID: <Z65zwAq/aJjqDaY1@lzaremba-mobl.ger.corp.intel.com>
References: <20250208132251.1989365-1-larysa.zaremba@intel.com>
 <20250208132251.1989365-6-larysa.zaremba@intel.com>
 <a2828574-8b78-47a8-9ca3-a531f234a4c9@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <a2828574-8b78-47a8-9ca3-a531f234a4c9@intel.com>
X-ClientProxiedBy: ZR0P278CA0189.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:44::6) To SN7PR11MB7540.namprd11.prod.outlook.com
 (2603:10b6:806:340::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7540:EE_|SA2PR11MB4779:EE_
X-MS-Office365-Filtering-Correlation-Id: 0322f64e-26a4-461c-06b9-08dd4cd75840
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?mgUwIbYi5nvQi/pmniTKUQrq1QUWRLbBQ0cVwCFK2j/rGqFVhx4YI+HWkWro?=
 =?us-ascii?Q?1Wb9VyzoW0ppIj34a8y3Tmn0adgbOdQZmYrTSnShuFkIiodlgD+sv6Qu7LR7?=
 =?us-ascii?Q?PEjgEiEnfzw5kwQEEQsoAD+ElL9qHl8cJt1SZQAohtSiVipJhjho+O3vVBPT?=
 =?us-ascii?Q?nXmv907D+k8ft4Civb+ymFKQLU5geBwwlqkWjU2TtbEwE6jJBJ2EnTUJ2UqS?=
 =?us-ascii?Q?FyS5ooDnRZll60snpMNBtZOuc8mC23oYkcL9YoJR14PW5zVR9BRxzIe8mW/k?=
 =?us-ascii?Q?HgBOjx8tQmDAwDARvUu/7EQRBS4KO4taXpHtSDelEOU3BgtGFAQv+aUM3iHg?=
 =?us-ascii?Q?jf5Yqbh0PZQsxGNpv4DTias820SsTvK9bFaMQp3fkwDyNDBTjCpyAnL5NwpE?=
 =?us-ascii?Q?mnp/qKJ5zswCPpv2RhljLzCU8jaJS9i3vTGFPpSZ5X+fFT1RTjiIlBDlN9Bo?=
 =?us-ascii?Q?QouxGYzqgiraThnZsSESalzy9csmb3N56n80QNXtEAOrKIl7eZ+mw4WCl1KL?=
 =?us-ascii?Q?hvwvYzTTkqoBKCKtZgCCkC2GW9ybjh5xh/CUtcCvQDaTG9oRMWj8XRlYAlVf?=
 =?us-ascii?Q?VUfj/XAjdrDQXGJQNElptH+HB8hDfy+znxaQKdIytJ7Tmv3m7FwjgsovCu9k?=
 =?us-ascii?Q?L8ptJVXKf6J02G6/gkPm8ZvWOGGyMTAczBTkbVctQcGL4mT0w/HpKwZmFbss?=
 =?us-ascii?Q?F1wHF0gLuY8dWg5dQ2JnTN628hJohyjeuuLzq0pBb5nk6/S0frLDznjm75+L?=
 =?us-ascii?Q?7oTsSbVvcjZAkH/9tfRF3kTUQq7p6+ZhPm9rOMVtpYnDhLxIF+lHW9n/LqCU?=
 =?us-ascii?Q?B1jDuQSoZng/3uPOGksPctpTVBZjGYh8hTQjOSpXl0ei0Ca+4fzq23yDBwPY?=
 =?us-ascii?Q?6OqanWlH5rbtMzhs7+NVP6GHduOIenIazyhUylJjnK+ls81lsDjTIJ2yqrLq?=
 =?us-ascii?Q?rJithkrIlub0lZA3Bh/zV9JcwuWF2jg4OWrxE1vDGB3ECMFhqisb8iLwH+W+?=
 =?us-ascii?Q?pMb9/oOhrxOd1QDIzerbgRidjw45cJhHc+p2aUHkyLEC2sOc6fywkj1AE66X?=
 =?us-ascii?Q?ofcskqI2NfyevVDLspVwJu12lChWPh/3TgslX255+tQ2Fk1Abw5mhGXPkFae?=
 =?us-ascii?Q?T6kfgyxs38MSAfML7QbbNvqTveBhi+iWApJ5ZXdGV08EL7z82vXz35MP1DeD?=
 =?us-ascii?Q?S1mC3eQAGmgTOTEGGOtslDS385pVcQFzbduNeb0lG/Hw8oSW2hZ41THCq7Vj?=
 =?us-ascii?Q?xz5L6BNAHNwRjd6maMpLQmGwjzf+4yEc/ILvvfFPcKZRc2fDz3Vv5lhYgeyF?=
 =?us-ascii?Q?ZxEUWhm86TID3yX1dfFyyntwYiJy+HOYhjZzoumS1vvsag4BdJXPwXsIMC6F?=
 =?us-ascii?Q?fPkagfA2xskkReL70waxHTDQfekq?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7540.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?C5e7uBbyPjhyaUPQfswo7ZNV5O5/LQkrOBeWjdpgPgbm+2d4ZoF4ES4EoCAV?=
 =?us-ascii?Q?dUGhGblObhjUZbi8xSWBAw0cFo21SPqTAFdDMxTwWIgtf0AfwktdFdtDBYog?=
 =?us-ascii?Q?rr9D4zaarh0OeumUS2RtqAdWWyadcfksQv6tOtlOv2wDiAQsifMeUWxbuXle?=
 =?us-ascii?Q?vaLQytuWRorziQphV9h4jBzSV+/zsCD9tWZqvnhCQwuKGyzHdwDZcIGxrRiy?=
 =?us-ascii?Q?2S0tKCyhuOFDHb3WbRrQEjditYWE0IO1sCEm6Vz6tN/JSprSGnLtI3Zx85RT?=
 =?us-ascii?Q?SJe8lvIBGsu1BkA9BrcCnZAUvqFYqzAninpFjiq34t5haNrLYXIvdtawe2wH?=
 =?us-ascii?Q?1cHYI5VpDeggLy8voyN6SgY5cMvv8VzNQYhhYy+BP19ybuo27caguihEjz2u?=
 =?us-ascii?Q?6qNtxxKP+7O/IC54LFdzu25B7BHOytLmK/bSsUmGp4OroqbQ/nCNXKjZ4P/k?=
 =?us-ascii?Q?8lrFh/4o0QGhkcUH3/977e8TX6k7FDRtzHvyh45z9PwofUgdfIl/KhW/H1MD?=
 =?us-ascii?Q?uLGpb39c39y7/sQ9nK1HHqozjDRYQRvvnxkS9mHFNJ6rlG5UGaBIs+qLXP2x?=
 =?us-ascii?Q?sKJTezAvEJdt4xdAnEeJKOrfU425fALZ1p/+WkKD0hvtDARUA3P0Zsqak0a5?=
 =?us-ascii?Q?/x1iS466fHutIVyTQ5gwBemYFCw+qQJG7zjFSP97eHIzWTZtpa6l7+nHjUkA?=
 =?us-ascii?Q?5dwnTyjkFNCbKllMEn9k6O/Eqlhqf5GN+ko1uHs484qZ8WDqxwRad2MvQqom?=
 =?us-ascii?Q?VIrrnv0WtEFr0v6LJlotWsX8MIyiDqGLboANYEH5YIpcAGOqR5euIJp0THPH?=
 =?us-ascii?Q?ZwdiXe2iiNN2DfOMSW2ObZeYemT0CR+b+eeFBgN8H+EDv4e+lgzFZB3gzi6y?=
 =?us-ascii?Q?ZWiHvLQvlJowSZb82lYGUKnTDgUA6NgLJXteGPtF1TTeyJOWO2PvP/KLvlSI?=
 =?us-ascii?Q?DuUtAnHd2bmBhL7gXGVfZ1c70ib/0rmdUkF6Zv337blXPuCP5OJngn1vwBuk?=
 =?us-ascii?Q?hqvgtY3hyJdkw9HkHbDxRedg44ayQ3nOW0BT2MGL8sC7I6zMdPB+T+SBflq5?=
 =?us-ascii?Q?QB4Un3dnFbLbYikdyE1zw/4xjbzLutX4lrRa75VpodUhau91F4uE5GCakW9t?=
 =?us-ascii?Q?/LWnClei4vP+9I531WL8P6CD2AZxZmBkbaal38G2mpB1akUA/lL1XKVAzReb?=
 =?us-ascii?Q?ugjFu3gb/5zexktQqgh6gsNjnq/XluOt+PHG6Uf0+C/fNiHtHmCGAE4As/hU?=
 =?us-ascii?Q?aM1XO8CflO0IAPa2hW4L57RL6WgOic1LOCY42edQhxxR6WO8D06HnkXBYAj1?=
 =?us-ascii?Q?UBlTbvWzbAhazY/VRE7wKF+7gieKX5u2FSPCkcQPx/2bpvLhqhRnUdW1mIgr?=
 =?us-ascii?Q?zU5UdHXSGh7OkhUK7g2EmVEHyTptfBwpBS0QGT4iUm7bMLbZoJ/hdlCEECh4?=
 =?us-ascii?Q?5uo1SFdxbDTP/J58Gw/+iP5+VwkUB9UnV0f9b3KCIhH1VgEKtye2vpZwu4t0?=
 =?us-ascii?Q?lPHftQAf7qjVd73IUS96mDs863nKMlpypTokWm2ZLStU6qx3FdpYG+MtL2gR?=
 =?us-ascii?Q?1IHQ8X204yD46ihZuJ/5fThUQvoh/pJghhMHRpSgbTIdjh/59XOSALT903ha?=
 =?us-ascii?Q?TQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0322f64e-26a4-461c-06b9-08dd4cd75840
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7540.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2025 09:09:53.9770 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6O1hsDFLkONrJ2kKn+rAxmRAJDWohWon7ii1BULwLRGdzlpw0z/fZZwyZpF+SHN8RExsIOCr48fdyKZBak1JNXp89Tj9yNSdVV0Avo90AM8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4779
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739524198; x=1771060198;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=oXFhU1dLNXPt0+iDNWTUQ6p5jIm92jmbckljJmrDmwo=;
 b=aeakqGVQS5DO3KFJlFvFBszfxZClQK4zrAZgRNwkGtHDStILdrCMIXIk
 qZ3uRkxlfcRQS4V7Dfi5a+OGpS07Yk+Ma7r+eZETcB90A3FT0De9iMxa1
 874QzS+1EmfPks/Xn3S8yZsmGs9CO/Zw4pXj9Jm8utta4Yjj5z7r7swXj
 1h4q4pAas1NqpuJXyJBSmk6ir/oTGTxubXLmvnQEFEAkrb4JnTpIrQpi3
 LHJOtBzR4Dl79EH1gG5M48hrpiVXFBNvfoyMvCvVXWTMgX+I2NHD4E8IL
 EnwY0d8tTAePFLQUSrCsZcKByaHkRk0bY+BegDQoavyV4Bqzq0D6xO4HQ
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aeakqGVQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 5/6] ice: support egress
 drop rules on PF
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

On Wed, Feb 12, 2025 at 01:36:18PM -0800, Tony Nguyen wrote:
> 
> 
> On 2/8/2025 5:22 AM, Larysa Zaremba wrote:
> 
> ...
> 
> > @@ -8393,20 +8395,42 @@ ice_setup_tc_cls_flower(struct ice_netdev_priv *np,
> >   }
> >   /**
> > - * ice_setup_tc_block_cb - callback handler registered for TC block
> > + * ice_setup_tc_block_cb_ingress - callback handler for ingress TC block
> >    * @type: TC SETUP type
> >    * @type_data: TC flower offload data that contains user input
> >    * @cb_priv: netdev private data
> >    */
> >   static int
> > -ice_setup_tc_block_cb(enum tc_setup_type type, void *type_data, void *cb_priv)
> > +ice_setup_tc_block_cb_ingress(enum tc_setup_type type, void *type_data,
> > +			      void *cb_priv)
> 
> Could you fix the kdocs on the ones that you modify? Most of them are
> missing the Return:
> 
> >   {
> >   	struct ice_netdev_priv *np = cb_priv;
> >   	switch (type) {
> >   	case TC_SETUP_CLSFLOWER:
> >   		return ice_setup_tc_cls_flower(np, np->vsi->netdev,
> > -					       type_data);
> > +					       type_data, true);
> > +	default:
> > +		return -EOPNOTSUPP;
> > +	}
> > +}
> > +
> > +/**
> > + * ice_setup_tc_block_cb_egress - callback handler for egress TC block
> > + * @type: TC SETUP type
> > + * @type_data: TC flower offload data that contains user input
> > + * @cb_priv: netdev private data
> > + */
> > +static int
> > +ice_setup_tc_block_cb_egress(enum tc_setup_type type, void *type_data,
> > +			     void *cb_priv)
> 
> And correct the ones that you're adding.
> 
> I believe there's issues of this or the previous in patches 2-5.
> 
> Thanks,
> Tony
>

Fixed in v4. Thanks.

> > +{
> > +	struct ice_netdev_priv *np = cb_priv;
> > +
> > +	switch (type) {
> > +	case TC_SETUP_CLSFLOWER:
> > +		return ice_setup_tc_cls_flower(np, np->vsi->netdev,
> > +					       type_data, false);
> >   	default:
> >   		return -EOPNOTSUPP;
> >   	}
> 
