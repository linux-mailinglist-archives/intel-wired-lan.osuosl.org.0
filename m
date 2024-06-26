Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F17F91835B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jun 2024 15:53:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BBF6181FFE;
	Wed, 26 Jun 2024 13:53:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mpfSzYXTSCQ3; Wed, 26 Jun 2024 13:53:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C739F82047
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719410003;
	bh=TXPaW7Iaway12Md3yOxwwChS3xCz0mWkf77pOULCy9g=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UZuO6ot8YclFKI5Ms0GK2cVw/ntBoy/aXsn0haoFl09Wc+7fzbyJfXxqqGrAde6GF
	 GB0+OCn8mrkn7B8xTgs30B94LWhzyDuL+Qzok7pwtK0NQkcEAGjxqKwUZcgoWunuqC
	 16IgbD8xvmk8B5SkudNLtHOfa/QJ5QWS0/K29GvPpWJCshxBAXKc3WFxebaaYWNF1p
	 dl7EPL7E18XVqCaxkaB+uciPdZgQhqQCPJpQFxMWwxlQqqf7RoY1Amz8lk1iauHYqA
	 GqnD7b+S8xh2lS48GrR7s+8Gx5kfaOhhC3cpHQnmFHebOFcnnDWYXHz7sfyQHhCPcn
	 8q0cukOjAZN0A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C739F82047;
	Wed, 26 Jun 2024 13:53:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F1BB61BF3F6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2024 13:53:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E577240C9F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2024 13:53:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SdA31eaMBnkE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jun 2024 13:53:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6F04040C1F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6F04040C1F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6F04040C1F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2024 13:53:19 +0000 (UTC)
X-CSE-ConnectionGUID: SYzyOyx+QgqKIqaa/7o77Q==
X-CSE-MsgGUID: qfA7KvrQRVmp4eUFvn3LAQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11115"; a="41898012"
X-IronPort-AV: E=Sophos;i="6.08,267,1712646000"; d="scan'208";a="41898012"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 06:53:19 -0700
X-CSE-ConnectionGUID: SOea+QeQQ6q1U3yH+dWkUg==
X-CSE-MsgGUID: ZVMAugODScCJIZ9JWcDvww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,267,1712646000"; d="scan'208";a="48383650"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Jun 2024 06:53:08 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 26 Jun 2024 06:53:07 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 26 Jun 2024 06:53:07 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 26 Jun 2024 06:53:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PVEufyE1zML+tw2eRako7uBIYUK/bvIq/kI2d0PZXfoIuEtWNyFnEROVHlBZkbezGku5K+CRmHKAQ2QykBLZEoUMbE9CDEqKM1UrhuxSyLlOSkQhQLTFV9eeTKJuhzEXxBQOwAUI1MybCRPj8fy/3Q6lqtxV7bVdEenmvv8YE0gQV2qrf46t/qoM8rKJtqqZ8b/ZckR0LrkPOwyOajFDFjUNgeQl8jwz833/P9PzJLriXHBo4YVVUIDUlL1F0V1ZI3GivKBHhI7IMl9nR5uvbMZX8RvVKb6UOe0YIMw2EY0YneD4MrrL0tLAfc5cdoKry+2FGMo91DBEo+dUEkuXTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TXPaW7Iaway12Md3yOxwwChS3xCz0mWkf77pOULCy9g=;
 b=eHvvRMPePLqLFt9FM1gVD9X/9WCr8IvTukeCJtPw7efjVQ6HN2jksKJfe6WnGv4xEPUQ7sCqBxo6QA7b9QH2yY3baxLJEHX/Ie/zpi4BBWTb4fAChZDruMpQVexp4R59uwh6OEWglfHF4yQRyUiMJsorka+BMWgGmrKM4A8FiSodrklbRX2k1CADdT/hdj3cOVHcycs0DXwJrBIIkqG7nQpFjsArsavwvSoJ2enTgUFhU+hzkUfv4/WDHCHwP+XzcvLp+t/Dv/RkTVHeMjyZJZ03/VxS4fDEtHM5NovTk/qS/tGs8cRPcztmEL0wB2I0/+Aso306ha9JGghGb+VL2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 DS0PR11MB7580.namprd11.prod.outlook.com (2603:10b6:8:148::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7698.32; Wed, 26 Jun 2024 13:53:05 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%5]) with mapi id 15.20.7698.025; Wed, 26 Jun 2024
 13:53:05 +0000
Date: Wed, 26 Jun 2024 15:52:51 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Michal Kubiak <michal.kubiak@intel.com>
Message-ID: <ZnwdMw1TgvFG1Quc@boxer>
References: <20240604132155.3573752-1-maciej.fijalkowski@intel.com>
 <20240604132155.3573752-6-maciej.fijalkowski@intel.com>
 <ZnwH07F44QBSdQ1Z@localhost.localdomain>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ZnwH07F44QBSdQ1Z@localhost.localdomain>
X-ClientProxiedBy: VI1PR06CA0178.eurprd06.prod.outlook.com
 (2603:10a6:803:c8::35) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|DS0PR11MB7580:EE_
X-MS-Office365-Filtering-Correlation-Id: 46bd4965-47a6-4929-293e-08dc95e74d8d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230038|376012|1800799022|366014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ja/jeNOv7nmPw10FjAdahY8BX2fg6VSZnPnI3saWcdsBPBYyLQHEtvDo2LMi?=
 =?us-ascii?Q?njtAewKujQB4dbCQayd1bRm+MNtk7clbGCGmb7q1VqUdY7Ipv1rHFtBImG5K?=
 =?us-ascii?Q?nXitNbnjbj2Yi+dzNi+bgiBee81VO/tPe8QL/GEuXUedimALbBl2HCsXtZMG?=
 =?us-ascii?Q?JVOwnn0Erbwelprk/u6lNqma5zEUyXz3wKX/LE/8Q2FqpEtnY2btfLNhW5jR?=
 =?us-ascii?Q?NLCUNi5MCbNQ2Bvk3FKrDNqTCgEopIaKtgfbxpbVizvwaY1o0A2+b0vgbD87?=
 =?us-ascii?Q?geDEoVh6cPkrbMbjXhijmhQuH18ybvwfG4ZlYMyo/LN6ffoVvBCkRjlvXxWl?=
 =?us-ascii?Q?C1Yq/pUQgnZyphD4f2eR953FBNsryYIBdY+V0aOhMBhUhHGlkqedXvfZYi7A?=
 =?us-ascii?Q?hDxWNx/J0NNCtxdiQUgDG3NmcVeoL652ALULQ3Rv89pmP7sYpi54LTKTfIMH?=
 =?us-ascii?Q?WnAw6ybOnF+HljMs/D0hcytSJDaI19TbU0/XP3mugGuY6/fUPKIkTUnCNEWe?=
 =?us-ascii?Q?iAUfmmP1Bio36Ok5yy/3aI1wtHbaBRk4vtJCAm6MhDEJHFwTVsR26XbjUdV/?=
 =?us-ascii?Q?bkYNBT/iClqRxnUFgQSDrPVaKN8QqUS8xjDH8p+Ca4d8OTopIfxkkFn5q8nv?=
 =?us-ascii?Q?pw5EVP18BOQkHPeXpF/36pJJAIBzteKNbUP4LuamjxKI7F+eOdbrUrOrL+LP?=
 =?us-ascii?Q?cYlQnxVK4bbWnrVgEyOJw9LlE//6x63zEeBA/Iv1Wc7QsJm5D7ZSGkI03+oL?=
 =?us-ascii?Q?DHX2pZZyEHXKL6ehCAp/QrFoMpFHESCN2e9xvRDJbSyHEno3rl/EI5xv6yyK?=
 =?us-ascii?Q?2HzcYMmWtCp95/Bhh68aB96XUbZCNgghjLwCXjiUjiGXBDEXNr/9AlNx29TF?=
 =?us-ascii?Q?kMBIf2wAJJLG8pBUaaLWXpqF3UNcIMxpQ9e7XlgDwGCGQKmBCP7mPDXhJata?=
 =?us-ascii?Q?fwD/Qo8cH1cawGgbe/Mche2an60MxmPP2vv0+Bh3qvIuEgKbVKbV1jPuD4KB?=
 =?us-ascii?Q?qiPXpZeyXYoGt5ZUHxjv1uZLUgcFzZ80gU0sqQjHk3+k9OoJkOVvyNt8yPrK?=
 =?us-ascii?Q?tysyy/8pLAs/HZs4NW0nfOHX6i57u82q27tX4L3pkEAPOnUACEkHOEwJvOGt?=
 =?us-ascii?Q?ROb8QeGS6GdXU2Lz+dsOTSLGcIHyrM8ElpSL8XBxobjmsFZ0DmrP9KTJ0MIZ?=
 =?us-ascii?Q?jJBig+SAtiEdopW45Am0yiEfo4S2ICrqvOVPpAj3z9UXwlNCMblxO/w9EAcc?=
 =?us-ascii?Q?YZoBfSPeqXFfmEJ7eajztsy00XG6j+x/eSCU0dxSvMqc/++60jHWytB4t6mw?=
 =?us-ascii?Q?ygg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230038)(376012)(1800799022)(366014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Z52alK6MK1Uq7pmv/ToZO+rgp3E9xhhMassCVVDNxDI6TKJqGSIsJNr2dyam?=
 =?us-ascii?Q?bOyVCbiQRIPdx+KIpvfxvLy4B3GJsb0MV8K4dRp1t6YO5Hmj0ozFYOZYyHyw?=
 =?us-ascii?Q?3WJkmg0hBT/C31aQpSqiv37zRpc02q80OIxeDLsjI1s0dOMSZ/ZLTIzwVkJ3?=
 =?us-ascii?Q?ctOemZkqNKYaXTr7//TKVT8q0kFHL2ubTAXm7c2G0g79VDxE8e7g8Mu/UgZp?=
 =?us-ascii?Q?p9HAmvlPl4l6eK5+cMSowav4vHGI2vFtiJsoJwi34PpfyAoKOhLKsRqAo5gN?=
 =?us-ascii?Q?M7vbEKnUBiUBVm0OrHIRmFV75qcqufcEWREa3kFRH7/PiYsUxL1Gx6iodnlL?=
 =?us-ascii?Q?rnklqxL5VQm6wLIqPQtToHxTTKzz9ozZ+IKORWVdWl8hJzagchpFjE8DI240?=
 =?us-ascii?Q?g4sY1gGMk/P0pOl5hG4Gumf046zBFkGjsD7RG86aW6KKYi/qVi4Kr5MqkN2z?=
 =?us-ascii?Q?otLgeKr75YOaKYvoxMtcAZsymNfNkULOZH4WXdpAJWhkGHAoi0vzFuua/Rea?=
 =?us-ascii?Q?qE4BlbG5y6eZATJasE30Ph1TFNn9ko5m9EMBJvqLytk9z1lOgt2MRaxnaXHn?=
 =?us-ascii?Q?gB82BetixhUjk4x0WrcnGY1m8Eu7nousS6dpxZztzHoAaD6qOcRpzprbhDND?=
 =?us-ascii?Q?beX0G9lA2vNbq0FwlCAoqtFq95ll3Grk1yfTuxNB8URUEwG7fWcZ7F4FqEoH?=
 =?us-ascii?Q?ghN3ynjF/xYArHryyDrKwJVhaU6dnbtnZEUsB0vzt+A3mtS71RZhiYHe1Z9T?=
 =?us-ascii?Q?LV0nbQa796OCbNeistVRV8VcPvyPuU0PPmCtDBJPNO3mlQs7DYtWH+nMyCZQ?=
 =?us-ascii?Q?dvM9SYRZZOT1ws9W5wZpG+Un2E9rsHRC3TjdUMTZD5Zj8YI0CswLqDym92CI?=
 =?us-ascii?Q?6MQuBb+mmnCFNJBYFWr6F3QwcEvGorZlOQTPyHRR4ohCa/eZ0qVCmDvfcVb/?=
 =?us-ascii?Q?uQto8z3nvruy+M1rfcisQ4IBqCWy7RxXf6uXG/nVtJUep+afVV+EdV6Oo2hv?=
 =?us-ascii?Q?y1sUg2KmFTccazFJy92UtDWO5Bfkk/P3cMDoWuJZG6AWCbCa4whr+z5GbzCK?=
 =?us-ascii?Q?vZMQWFwqARlw9+9T+Y92XxsO9t2cXPfEOsjvph2fuyMLTwky2blDSBe0N9Kj?=
 =?us-ascii?Q?3Mo76v/IzOR6/IU7mJ3UBHIIOQGjThfSMd8tkkPwzlLiEyYDy5hWT0OrwoYa?=
 =?us-ascii?Q?ex0cNX3sZw6SMSR/IySn7irqLwJbXQbRrPjKoR5eiu+HJgRSLkvJumTYWZJg?=
 =?us-ascii?Q?1vveuD5xNAT3uC/r5tOQSg2YtgB9IZTyNvrk/cEXtWqy0tmipqokTw5ZaCQV?=
 =?us-ascii?Q?6ehcio/eqZdjlQsVTVh0Ts3kBErQ7kjFeRIwg2BAV9Y0dzC+Ty7XyEtQTMqR?=
 =?us-ascii?Q?AQHgPUv2p+V3EeT3IlIsMzpCY+XkCwbzp/2bditxACZz3jwQYOzXw+tfouLF?=
 =?us-ascii?Q?tokU+N0Sdxg0Q47cKrtEgxB078fomWgWuKhRJ0LZY/jHLjmhexoaZlMdwY8P?=
 =?us-ascii?Q?BJx/8pTWJcJ7vtEytFzFm9R+3mEZL/vsP3flhE0IOUMaOeWHuMasJeoZ+IY+?=
 =?us-ascii?Q?08ZpwA1la1fo8blk9hIfhXV9I1m85T7qYWUR6RPcne4vtDbjB2SW7X6da2c8?=
 =?us-ascii?Q?0g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 46bd4965-47a6-4929-293e-08dc95e74d8d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2024 13:53:05.3066 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OoeuPYygZIOxC09mA+AWXIgIBG8n1zVGVG2YSZ9dp4XfTsUNyDheUgUYZ8mc03XrjA6Gf2wZkfVcAjJnIioTlzBFcaZVsxG4xIjz42dHX/Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7580
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719410001; x=1750946001;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=dK+X6Za6cNV8VPHiUPI5GDTUj2ZOs+qLCZv8DPZkg44=;
 b=FAc9unIFICMeereRpMTG9HnYSbR/HuQc3ieIA0rTZTjnrxS4dNcpYZfH
 tD/Su+dlpgjnU6lTF5Xl3aSlGRbevTD9yQlKRE4Jc3wOWWapEDt0pXZ8G
 ibgJHkx6mKPmNqjhyPZ1bQzNPzrAX7adhiVp08G0RZa0v5JhBHt3NmME9
 iXgLIene+VQJT2ycZAYv5txsbSrUEdlsUn6wFqXLNEXHioUbrP3uc3WVY
 /9SjM/aS+IROBrBOQtxhI6JYR5VJPCkWwtm5JWiOqjBT8eR1Pz1jXa9Rw
 9YQRZjgM22VzIqoxifyAbcC6mPp6SyQQfrNPzYWWRnzDlgHLOCM7E7ch7
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FAc9unIF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 iwl-net 5/8] ice: toggle
 netif_carrier when setting up XSK pool
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
Cc: larysa.zaremba@intel.com, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, jacob.e.keller@intel.com,
 intel-wired-lan@lists.osuosl.org, Chandan Kumar Rout <chandanx.rout@intel.com>,
 magnus.karlsson@intel.com, Shannon Nelson <shannon.nelson@amd.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jun 26, 2024 at 02:21:39PM +0200, Michal Kubiak wrote:
> On Tue, Jun 04, 2024 at 03:21:52PM +0200, Maciej Fijalkowski wrote:
> > This so we prevent Tx timeout issues. One of conditions checked on
> > running in the background dev_watchdog() is netif_carrier_ok(), so let
> > us turn it off when we disable the queues that belong to a q_vector
> > where XSK pool is being configured.
> > 
> > Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
> > Reviewed-by: Shannon Nelson <shannon.nelson@amd.com>
> > Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worker at Intel)
> > Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_xsk.c | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
> > index 8ca7ff1a7e7f..21df6888961b 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_xsk.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
> > @@ -180,6 +180,7 @@ static int ice_qp_dis(struct ice_vsi *vsi, u16 q_idx)
> >  	}
> >  
> >  	synchronize_net();
> > +	netif_carrier_off(vsi->netdev);
> >  	netif_tx_stop_queue(netdev_get_tx_queue(vsi->netdev, q_idx));
> >  
> >  	ice_qvec_dis_irq(vsi, rx_ring, q_vector);
> > @@ -249,6 +250,7 @@ static int ice_qp_ena(struct ice_vsi *vsi, u16 q_idx)
> >  	ice_qvec_ena_irq(vsi, q_vector);
> >  
> >  	netif_tx_start_queue(netdev_get_tx_queue(vsi->netdev, q_idx));
> > +	netif_carrier_on(vsi->netdev);
> 
> I would add checking the physical link state before calling
> 'netif_carrier_on()'. Please consider the scenario that the link is
> going physically *down* during the XSk pool configuration.
> In such a case we can wrongly set "carrier_on" uncoditionally.
> Please take a look at the followng suggestion:
> 
> 	ice_get_link_status(vsi->port_info, &link_up);
> 	if (link_up)
>  		netif_carrier_on(vsi->netdev);

Will include this in v4. Worth mentioning that it is safe to do so as
there is always a service task that will turn carrier on for us.

> 
> Thanks,
> Michal
