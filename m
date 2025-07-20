Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 59006B0B40F
	for <lists+intel-wired-lan@lfdr.de>; Sun, 20 Jul 2025 09:12:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 813088428A;
	Sun, 20 Jul 2025 07:12:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 26RLlhYA68yL; Sun, 20 Jul 2025 07:12:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BB9DD8427D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752995573;
	bh=jdnKFkPwjxgnGZ9WSeRXmmBz2AYunGWVkTATEXjQGwg=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=U9rSgwzGCSKdhxux+vzLP4T9gttzQ50b3mZCIioUvqX4urQR7pMVq3qFS4geGuWCS
	 g5fXr77HyCKMNMCXca6ScX8DVXsut+AaOpEbBQBJHf7TjirWxBK20x+u72mrlAbzym
	 wIUm2IBmLKr0483oQTGNgVBVnxTEJGoGOp34xfPgcs4rCOz08mNjn13B9cKvo2fFtQ
	 X1WV7Htm324SI73AwHMdqDYP+OK7yTVa7187Ac2PNX2RQGb5g/Qpg8FlvMq61mupnm
	 TdNufAM+kqt+8NdDGWDoD9AyvWQLuJEU3Ge77PueXKDCCCD/y7fRQwbgfXpQoBjq5k
	 FWU/afx9h8CdA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BB9DD8427D;
	Sun, 20 Jul 2025 07:12:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 413B0DA
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Jul 2025 07:12:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2701840863
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Jul 2025 07:12:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dZQYwCC5uUrd for <intel-wired-lan@lists.osuosl.org>;
 Sun, 20 Jul 2025 07:12:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=morx.bar.gabay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3CD6B401C2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3CD6B401C2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3CD6B401C2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Jul 2025 07:12:50 +0000 (UTC)
X-CSE-ConnectionGUID: lWIoLmCmTSSz9Eb2Oa/1Kw==
X-CSE-MsgGUID: bWggSDuNR7a9BDDHCubiAg==
X-IronPort-AV: E=McAfee;i="6800,10657,11497"; a="54340543"
X-IronPort-AV: E=Sophos;i="6.16,326,1744095600"; d="scan'208";a="54340543"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2025 00:12:50 -0700
X-CSE-ConnectionGUID: eS7/aY0XQP2pQZ3PV2jBbw==
X-CSE-MsgGUID: F/pR1zoJT6CBHOUj6YNMSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,326,1744095600"; d="scan'208";a="158886737"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2025 00:12:50 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Sun, 20 Jul 2025 00:12:47 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Sun, 20 Jul 2025 00:12:47 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (40.107.101.60)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Sun, 20 Jul 2025 00:12:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gCuvHoFlehdZ0hh2uQUQQpRNSDqGaGIGEWhvL2Ma/gr6o4KOHDe5JZHyEvPtfMg9Z0kyrXwP9/2SSS8t8rNc/TCI5Z3Um/lGUy7KGOfJygaMKQ9DXv55mrGO9o247ouBhoxwEnNN4vzWSWU3lc2NHOPTuT7wOlKDibMsz5zkMxS41HgntCPKQqo74sI2TBCdsMo03oGWpwYL8bydbpwCKy1DfPFCIRjnxeLviYkB5/O3o7tB0pRSBJwUZdJaHt71dCmSN35TLXCnfPeyEIWbIANQS7LhcBwML4wbVKhvojU1CKDxkQBOD+DEVZr2g14AY7FbPoaBmEra55yDczSNFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jdnKFkPwjxgnGZ9WSeRXmmBz2AYunGWVkTATEXjQGwg=;
 b=rhwoObZ11esr6D+FxeK6ChezhSpofPPDBwuxWAA3Kqb0wzEj0GFd6QvUkCYOzHsFiVVQlZAeB9TEECr4ERCvvF3RPyUPxlSBPHx7FaU6Woh3tYrJ+pWh9JvWRO1XLrrcEO6zD5KZKNcYHBZQFg28CLQErcFvdTsf738tOz+kKOYOiGMyH6ZgOGvsEqQhHcEnWADSmfMRFjKKrcAhd+bec2P9ZL3661zU/ik1b69zmgZ8wvD/30WULRZjU7n6NpqjnEra9Q84GkiUVZUPjbdwCslJGSwMh+VJ+EF2V3kbC89XyZYhgxfcjUmhHJFRGGBXVpNPV+u4mfWk4mYxiHKzPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6307.namprd11.prod.outlook.com (2603:10b6:930:21::20)
 by CH3PR11MB8154.namprd11.prod.outlook.com (2603:10b6:610:15f::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.25; Sun, 20 Jul
 2025 07:12:42 +0000
Received: from CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14]) by CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14%5]) with mapi id 15.20.8901.024; Sun, 20 Jul 2025
 07:12:42 +0000
Message-ID: <0bcccd8b-a76b-484c-bb04-83dc6787c64f@intel.com>
Date: Sun, 20 Jul 2025 10:12:36 +0300
User-Agent: Mozilla Thunderbird
To: Jacek Kowalski <jacek@jacekk.info>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Vlad URSU
 <vlad@ursu.me>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
References: <3fb71ecc-9096-4496-9152-f43b8721d937@jacekk.info>
 <28347e4f-c6a7-4194-8a80-34508891c8ec@jacekk.info>
Content-Language: en-US
From: Mor Bar-Gabay <morx.bar.gabay@intel.com>
In-Reply-To: <28347e4f-c6a7-4194-8a80-34508891c8ec@jacekk.info>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0023.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::12) To CY5PR11MB6307.namprd11.prod.outlook.com
 (2603:10b6:930:21::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6307:EE_|CH3PR11MB8154:EE_
X-MS-Office365-Filtering-Correlation-Id: 43b7634f-f5ee-406c-5f8a-08ddc75cd17c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|921020|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VVpaK3EwcjNVSGlaZGpKcHBpZ1BzVkRFcmtiSldyajExN3VVbEpPYTJMek8r?=
 =?utf-8?B?dG9zNkRteitLbnlYQ2QrOFZqdkgwbHJNOEdWMmdBcjVMek1sTThIZXpqNlIz?=
 =?utf-8?B?ZjY0amhMTlhCcWEybWZvMkswT0lIdHhFT2dGMWR4OFhXMmdJT1JXZjMzU1R0?=
 =?utf-8?B?T0hvcjhjSDRuZnplTnZkdE5wQWgvdEh1c0ppTVFjWFlrM0NtTDJUZk9hR3kv?=
 =?utf-8?B?VWYwL00vanRjVzRWV1VpNmRqcmowQ2ViZ0RuOElxVHRZTWVaMHl5ZDdPMlha?=
 =?utf-8?B?bFlJMkZ5RzBoN1VEQzZjOXJLeGtyUDUxdkJtYzFXbXJUZEI5YndBRkpXOTV1?=
 =?utf-8?B?VFRoS3ZMb0VUZEdXeUxuTHJxSmpkckNBU3lJNmh3RXpMQ2V6NDdzN0pZUmtT?=
 =?utf-8?B?V2t0emxSRGZFYkljZ3FlWi9RcTdwWGw1ZGdXSmNzSUJMNWFvVHRBOFM2WHI3?=
 =?utf-8?B?cFN6Tmw0Ly96TnBsSUNrQ0luYityaWNISlYzZkNpOFdJNy9xWDlnclRPNjZ0?=
 =?utf-8?B?alZnVC9uK1UyaFVlL1RZMldMS01SM2ljL1FrNG5WVGVkOWVkc2lWVk15OWVq?=
 =?utf-8?B?QnBGcjc1TVdKSmU0YVAzM25hU2x3ZHFqV1o4YXZZZlRBbDlhdDA5dzBoeUFW?=
 =?utf-8?B?eUR4SHJpNXNXNHRtSDE5WXNrSEYvZWxDUTFseXdreWwveklOTGQ0Y3NoVjIr?=
 =?utf-8?B?ZmpkSHZVMGI2Vk9FOVQyNFBtcCtHM2cvOVgwMFZVcDIzVThoT0JpV1dZOUNi?=
 =?utf-8?B?VEVnYUQzSnhPUHZmajA0Y1VWbnNWYUpsZkUzWDl3M3BSSzgzSXVHLzNXU3dI?=
 =?utf-8?B?OGxUeERhZDE0bUw3NUFUSGE4QmdiVHkyQ29aaWF6MWt5bDZoNUwvRDBiV1hm?=
 =?utf-8?B?MEFWUllPdklVclpJTCtCSHBsc0VPVW9VM2pDQklsUjdVZkh0WjQrUDlZOWpv?=
 =?utf-8?B?KzdDSnpHbGNHMzVvaitsMGJ3akNUYmU2Umx2dWZ5MDV3S1hmWGpqdE8xb2lY?=
 =?utf-8?B?NHJPQnIwemN0RXpPV3dSWEJvRy9TbG13bDlNSnFTVHFjVjdYU244ak5ZSkpU?=
 =?utf-8?B?emREWWFmUDRCS1p3Z1lJSlo2WVQxNGEySHp1VFpIdENHQ294QTFyOFdhaXp1?=
 =?utf-8?B?TUFrZWtoYWNMbmxxbzBFYVZGclVFcDVLODNheElqd3dJOUlQS25FR1g0T2tO?=
 =?utf-8?B?ZTY2QnBTV2Y0dEduQjNWT0l5bXdOR3RZLzgxdTk5N3BXeG9lVGlVaUpHdlJS?=
 =?utf-8?B?eEVRdTlGMEk5TGlFaE1kdStHczI2VFgxTkZSSHhEN0dQL3V6OWZpUjA1UmhY?=
 =?utf-8?B?MU40TVRBdXRjS01oVlNEMVQ0SVYyYU9vQWoraGxHc2lYWXlJbnJvdVBTN0t5?=
 =?utf-8?B?ZEVwSWwxRVVJOXhqWXlGSE95aTB3ZVh5cDRQSjJtd0VpaWF3U3J6bmtFOHZs?=
 =?utf-8?B?SjdNVlVSTmsvQm80SVVKQWg0bHBML2lMMTU1TUx2SFBxcklENVVtV2pDVlVZ?=
 =?utf-8?B?Ui9IQkJOQVpQdlJIOHdLZGptZWt4ZlB5Ly85akJZUHVDMXBaWjFOa3kyYWlv?=
 =?utf-8?B?ajI0d29Ud3VkSDdsZTdXclNMUzV4TGRvQXJScGFqQW9oaU8xbmRyZE1QY052?=
 =?utf-8?B?d3FJa241SmEydXU4a2NWUW5Cc000UmZjbHdQQ0ZvK1VEWHVYVW9YcjZyU2RC?=
 =?utf-8?B?cGE1YVZma0pmMWZIdVJaZ1V0U2s3aTNHeVpzamk5WFJlaG9kSWVLU3FUTCtE?=
 =?utf-8?B?eWxMMEtaQURwV3R1RW5qMTBQanZ3UlpVV1R3RnlUQjhQdkhqQWFrcHhJU2Vr?=
 =?utf-8?B?dzI4WWh2KytiUG9xN0h4WjU1NEN4ZDRBenFJellJWXMzY1dSWm9KeVVnTExz?=
 =?utf-8?B?WjAvbWFDWWtiUVNWeWdtd3k0MUR0UWlacitHYVgydGZQQ3ZHcCtHTU41ZDh5?=
 =?utf-8?B?YTF1SEdhU3N5cjJ4M1lqWmk2b2lISWRPN1hYc09kRFlxSTI4TzVNbDVTOWpl?=
 =?utf-8?B?Tkd0d1lteGJRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(921020)(7053199007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZEdvTGUrOStTeFZxOVlvbGtBMkYyRWtPV01WZVdmR0kybmVybmRGdlVBN3ds?=
 =?utf-8?B?KzRLRTZGcXQvRG9uUDNrbzFTS1pMbkVzaGliTmZIb2lVQU1VUlNiQVpwL2RU?=
 =?utf-8?B?MlVsZDllbnQ0NDVwZTEzMGFZbGIwYXRFSTlSUFpydlhyOEVGVW9xMHliWkxY?=
 =?utf-8?B?Tkd1dFpmb1VpTFVnMndqVHh3dkpPaGZuY2RzaUE4WjEzQ0x1L2JDRFR3L3Vn?=
 =?utf-8?B?ZEpEN1B4QzE3TmNOMFQ1VzN0QUpnZFU0c2JUcFFUazh1SFNndlVGMzZzOU4v?=
 =?utf-8?B?dHMzcWlUNTZaL3E4cjQveFBVVEJVK0FhR2w5T1FhMUhxUU5waHJpZUtMbC81?=
 =?utf-8?B?Y2MzODdTeFptU3RTc08yL2cvcGpFSVVjVmdqNWhvUW9GRXl3QmJoaDdyUUZZ?=
 =?utf-8?B?aTJyVnd0aHZLdmxUaHFWTHBKTXd6ZlRIeG5hS1VycDNNME1ZMzVxei9XMVZw?=
 =?utf-8?B?VXo4c3F2ZU5nSGF6c21PbGhSOVBjWXBBVUhEaVJ1ZDdZeThMUGRuSlNQbG92?=
 =?utf-8?B?QnIwSmdmbUpkc3QyVUZzYUZISldiZ2FzTjFORWxyMllGYVpxQjNUbUxNT2NJ?=
 =?utf-8?B?TElrMENWTXVaWmx6Z0c4V1lWbWEvbGFDYUorSTg5bzIyTG1DNnV4aEdYQ25M?=
 =?utf-8?B?TkltaDgwcWJ6MWpKbi9YaVFiOXVvcG1DVVFmYTVpSTU4OUVsdERyQm1wZUZi?=
 =?utf-8?B?bU4vRC9lT1locll0NElFbU5nNlFtd24zUUFsMThtSE13QkhIbTg2MXhycWtk?=
 =?utf-8?B?Nzdpa0VKYXMydU4xWFpQak45enBhRmhBc0JrRkJvMmh6YlBoazRkdkxnM0lI?=
 =?utf-8?B?TmVnYUYwYmh4WGNUWW9LUHZvOSttRVBtVm1mWVBOd3hLaldkdk5Md2t1ZWlL?=
 =?utf-8?B?cHlSajFmeG84eWMycDdFMllkTXNodU1HOWIrcXpHUnZ2SHJqNXE4SE1LSEM0?=
 =?utf-8?B?YWRTcnk5VFRxZFVmckFyelBaRVh0b0tWc2JRMWpDUDk4MFU1azlyUlowQndJ?=
 =?utf-8?B?a2RvdURSSzJNRzJmYk5zK3hlL3dXcVJkVzZtMlk3WGQ0T1d1dGdwTWlUSjY3?=
 =?utf-8?B?bHpYazAwdk5la0I5LzMxT3RZYXI0TFR6NnNzZ1ZhaWxVWjhtUG5uTXMyL1JC?=
 =?utf-8?B?U3NOODVxeGRSdmpRcUFZOTZ4MWkvbGRLaG9RNGtKZWZYSUdLYnFjaTJ3MUVu?=
 =?utf-8?B?YmdCRHRvNkdhQkU0SlQ1bzZxcUFzSTFYL2hVd2pzc2d6MnFmTmYwaXVWZlQz?=
 =?utf-8?B?bmVSaEZHeW9iM29PVHlrYnZtbUtxYTlTbkxLQUhXOE5FRG1yYUR6VlNObzVo?=
 =?utf-8?B?L3Mxd0FwQmlKdFNoSUVJOTdCKy9MY0tJTXNvWE1meU9hYnVacUtmYUtrS1Zy?=
 =?utf-8?B?OE9ENTE5R2pQNjNOSFpVR1F2VytmY2p0UllpdFVlTjVVR0lOV3JmVVBXNjU4?=
 =?utf-8?B?WG9OTE5JMTVHMEh6UDdvbFdOQW9CeVM2R092QTdVVVV0cGJ0WkU4cmd6OUMx?=
 =?utf-8?B?T0lyT29sSHBSRXV4eFBPRVZaMkp6dGNJWmZjaEJEV1FlVlZsZ0k4WG9aNGVk?=
 =?utf-8?B?M3d6TEFHWjVYdHRSbGY1UkFqalJ4a3poWmM0KzFaVVdDK0NzZWVkUHE2Y2Nj?=
 =?utf-8?B?d2hPNEwyVjJlc3JGTDlPYzVaY1VlOTJ1elVUWU5BMW94TU1sMjlGYU8va1BV?=
 =?utf-8?B?eVdzTjNXT1ZtQmlnRjdNS01FcjFkZFhjSTNRYzVSa3hwZ3VWY2IyT3JUS0I5?=
 =?utf-8?B?TGdRQllyK3hqVmNuOUhXa0FSLy9zT1prUlE3Um44ZU1kaDJySUFKTiswQ0pP?=
 =?utf-8?B?VzdsYUd2UXRINlozMWZjeG1SeXpacVY2NmpZQ2d3UE9KTzJrNm9kSHFORVE0?=
 =?utf-8?B?eWxVa0QrdmdmZm9hVUowRDdPcHZoandicitRTEpkd1NRODBPTmVrNXBEcjJQ?=
 =?utf-8?B?em1JOVVTc0NoeWhFVmQwU01KRlpEMnJScHdTR1ducE1PTEl6VDQyaDUrYkI5?=
 =?utf-8?B?dVJKQitZZzFqK00veE84NDVyelF5ei90YXQwYXd1WlJNWXVpMVhwTEZEZ2E1?=
 =?utf-8?B?TkxRZGl4WkZodTE1ZjVqZGRvbFhCU2NqR2djTnIzQVNqNTVFUDJJZWF2R052?=
 =?utf-8?B?d3Q0Y3VsNVRyZ0IvdWc2a0UrcWtYQmJXS3NIb3NCV0RxYkZMZmxEa1V2TmJo?=
 =?utf-8?B?bnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 43b7634f-f5ee-406c-5f8a-08ddc75cd17c
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jul 2025 07:12:42.7532 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OOkVfaj5LnujvX4rLj39nqZEmBXrPIhoT5tYs3Efbei2Zudj2x+2gKZq0D7brb9Vot+IwP0vNmDkxCebt+ilqTNsFjE/8rexB5vwEuXXFOc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8154
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752995571; x=1784531571;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=U69k81js/FLgIsrfDcC8weReVBuarJv7coXaWGJjGok=;
 b=RIAr8fJpsdjIdbIwQuKGo9tePVqURXyC/TvMo7+7ghwUT5dsI7AnJl+D
 uD1ncwZ3rYZxwQlWHC5StWOJtgrSM799uvKD8oBnebTZW1XVtyehjO/QB
 ACbTo8lmeh+rVIgWg1sjo8AI5OJq2ebDYlw12hOaMnmtOwmnpcvw0eou1
 DvLfx93q0hcJSvLiGITYGaE+mMPDVcQhFEzQ9iGsDbXl2FbgXscMzlSsq
 W6CLFpWcwsUqrf96Sh+wbqtdCChll1S66cvlhYe1T0JFSwyBJ/o43Arom
 Nhrjcq/wvar8wVAcRznhXQvkVxXcdqvgTwB72xW1M3ZsjBSf2csqOjLZS
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RIAr8fJp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 2/2] e1000e: ignore uninitialized
 checksum word on tgp
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

On 30/06/2025 11:35, Jacek Kowalski wrote:
> As described by Vitaly Lifshits:
> 
>> Starting from Tiger Lake, LAN NVM is locked for writes by SW, so the
>> driver cannot perform checksum validation and correction. This means
>> that all NVM images must leave the factory with correct checksum and
>> checksum valid bit set.
> 
> Unfortunately some systems have left the factory with an uninitialized
> value of 0xFFFF at register address 0x3F (checksum word location).
> So on Tiger Lake platform we ignore the computed checksum when such
> condition is encountered.
> 
> Signed-off-by: Jacek Kowalski <Jacek@jacekk.info>
> Tested-by: Vlad URSU <vlad@ursu.me>
> Fixes: 4051f68318ca9 ("e1000e: Do not take care about recovery NVM checksum")
> Cc: stable@vger.kernel.org
> Reviewed-by: Simon Horman <horms@kernel.org>
> Reviewed-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
>   drivers/net/ethernet/intel/e1000e/defines.h | 3 +++
>   drivers/net/ethernet/intel/e1000e/nvm.c     | 6 ++++++
>   2 files changed, 9 insertions(+)
> 
Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com>
