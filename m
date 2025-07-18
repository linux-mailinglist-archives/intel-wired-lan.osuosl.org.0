Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 00981B0A09A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Jul 2025 12:27:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6CC8D8435F;
	Fri, 18 Jul 2025 10:27:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uYnO6tLIqdFQ; Fri, 18 Jul 2025 10:27:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6C89184360
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752834432;
	bh=nabCQO1+6nOiasgFZYnHK6TtGooV0VY78qI8BWa0V6A=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9aN/poEJ+dCSv7QCFIWfMvOQGvTD3XAbZqwzM93y32c1bxo05hIaS/cb1MXdykqbj
	 9ueh+pxhyqui4B7IuT+dU5QpuhVI0ZGmgGuvPGuJqYm/ceAQri22zsMBIHOTHrL4FO
	 QywN5iDwhk38N8xM48DCVOnOPqFPjqJqU4f6SoaSOI3zQrmnO/z3YpEE821tiFLRp8
	 RiuXu7v6JUWGOggCqefMmKKNuhgjahbCIo9zp/xeGGn5ZSwUdB3WgNSf/ylae12hoX
	 6PhBhX4bISlLp4A18p01DDmGzUsniLP0S68+BDaFiNiNVh9CabvXn03VBgq8dYXiCe
	 1gJJRSNzT8aTw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6C89184360;
	Fri, 18 Jul 2025 10:27:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 10D7CDA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jul 2025 10:27:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 024E140D2A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jul 2025 10:27:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id reWSbcXd7Jwy for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Jul 2025 10:27:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5552A41245
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5552A41245
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5552A41245
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jul 2025 10:27:10 +0000 (UTC)
X-CSE-ConnectionGUID: h6d6BgfhQgyxBvBvM575ZA==
X-CSE-MsgGUID: VkJIumnBTr+Tq9SgFDt2Aw==
X-IronPort-AV: E=McAfee;i="6800,10657,11495"; a="55068729"
X-IronPort-AV: E=Sophos;i="6.16,321,1744095600"; d="scan'208";a="55068729"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 03:27:09 -0700
X-CSE-ConnectionGUID: KbrYzOtYQNuyFKci94BhSA==
X-CSE-MsgGUID: HriPrbJ3QbGqT9o+1zi/6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,321,1744095600"; d="scan'208";a="157412129"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 03:27:09 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 18 Jul 2025 03:27:08 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 18 Jul 2025 03:27:08 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (40.107.101.57)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 18 Jul 2025 03:27:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fj0k4NxoLe2IkMkzoXONriDdnP0MHze/yF8kRgLgdvcDndmwbx+mfLAPzR6DIRNhmJQa0S9W0DaY3fsVISNiaeau36pcaEf+ErDiUa2qZJQ2+su7QsvDrEBpTmNIB8ljWdyMakfRTHRgMDysNP86N9ZAbY2maUkyyILL2xqFsLr6Jag1afp8ZvuJ7rwnD6upIvgYjmjxF4h2lGRsXn293vr8LpYpGqghAXVipsMecQMZPYpusCmCDlnSQN4U3vjqUnO+PBFy0ghapLO+KToLm9c1+ghJifVEz3b9KBeN9lnPYgm50tjxMGEDXMy2RNeTYrUEKZ1cZC6YtwCdhtOWwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nabCQO1+6nOiasgFZYnHK6TtGooV0VY78qI8BWa0V6A=;
 b=NqycuaoTc+tYd5Jky2dLfoCJ3c2O0MpcZ6WNUoA14gJgInNiEA1woB6Dbv7s2scoNzyJnksnSNAQrFq8IpvP08w1Ah/ggUy6W3ouXNFNmVtrQ560qoM0I2N/rc1pPIUXm+15bfhwO1J7RXKycWgoauf9nXcWb/0VtNj3atE+qjodk21v+qV82HFMxkYNBsVdJcITFYhn0/XCEAyknaE/Co8/5nccJpvfOIilLYA5az73gqYbwHF/LhJtNj6rVDzA0boDGm1QBfs5gDe6Pd4sdiqYgVxI5LxnOpR//AvO/V904KqHekdZKA1tbvb295kh4fspXM4g8J3Dm77DELYKkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7540.namprd11.prod.outlook.com (2603:10b6:806:340::7)
 by MN6PR11MB8101.namprd11.prod.outlook.com (2603:10b6:208:46e::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.25; Fri, 18 Jul
 2025 10:27:06 +0000
Received: from SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29]) by SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29%4]) with mapi id 15.20.8922.037; Fri, 18 Jul 2025
 10:27:06 +0000
Date: Fri, 18 Jul 2025 12:26:55 +0200
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Jason Xing <kerneljasonxing@gmail.com>
CC: Jakub Kicinski <kuba@kernel.org>, Stanislav Fomichev <sdf@fomichev.me>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>, Maciej Fijalkowski
 <maciej.fijalkowski@intel.com>, <intel-wired-lan@lists.osuosl.org>, netdev
 <netdev@vger.kernel.org>
Message-ID: <aHohbwWCF0ccpmtj@soc-5CG4396X81.clients.intel.com>
References: <CAL+tcoCTHTptwmok9vhp7GEwQgMhNsBJxT3PStJDeVOLR_-Q3g@mail.gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <CAL+tcoCTHTptwmok9vhp7GEwQgMhNsBJxT3PStJDeVOLR_-Q3g@mail.gmail.com>
X-ClientProxiedBy: WA0P291CA0021.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1::25) To SN7PR11MB7540.namprd11.prod.outlook.com
 (2603:10b6:806:340::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7540:EE_|MN6PR11MB8101:EE_
X-MS-Office365-Filtering-Correlation-Id: 46d64e91-440d-464a-56ba-08ddc5e5a497
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|10070799003|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?NVDbudlLGJKirWf9K2q3/sCPM1sGtySzPR9CoJKz+T6VmtUA6pozEYEgTDZo?=
 =?us-ascii?Q?v2YtNmikT4QXyr5EkEPqztAIrTdROBkSjSqHnHW+IFbkqOlBqL6mRSUKwbZx?=
 =?us-ascii?Q?6YaTld2QFgARqKlATjmMwg/5nyvKW6NOdNZdhXlYOT/DYxg/kVRBiVFvBZKN?=
 =?us-ascii?Q?5bAcr5hP/iP8oV1b/9djsA1HSNa52TfNdl42ols7T4/V2PZI/xPgpoRj265r?=
 =?us-ascii?Q?PN27cGiftMofYNZApWxQldRahGfOqWbID9eq/H+1a0XeA2kUd6MwQC4naTfr?=
 =?us-ascii?Q?TNBgTxMJWcFhYYOXBAoSKErP0RSfDcnPXp7k95AnGbfXJ9Feb3I5PqTe4UBv?=
 =?us-ascii?Q?GLUNfGLfgehuYihMi2MrJSMkwZENO9fWEWPZZHCtJNJ0PS9GbQp9j4jwv/UK?=
 =?us-ascii?Q?lLUKt0cFVMtBRqjaL0jnhSpI7mKcBwHxjssLQCqTNi91Yh22yTr2N6q5loBM?=
 =?us-ascii?Q?J8MQRyKrID42MPAXDymOr3tKSmmKmfrBRfoSKddTYBHK5kDUv39sExqXrw9w?=
 =?us-ascii?Q?xt2CgkrjFnwxW/f0Jqm7Sd5VpRQ2413WGpxN4pRhJiI+7VYgFvUmuBeOHYWU?=
 =?us-ascii?Q?mQG1bQ3OiDCV4nv/wAUfQ0NnEeLiDhGyVyTnolrnVzOD/zte6csMY+j1AQw8?=
 =?us-ascii?Q?l9KPVK5K/XGxV1G2OzDeT66K4kru1vcDUIAyRefIHwuujUStXZtyvdqeZD5n?=
 =?us-ascii?Q?BF7/H9bmhcFMOd2zd9bGDMTXLT7OSPLnrWO31zfp5MTnKrFeG3K4RJ7hM3VJ?=
 =?us-ascii?Q?20M9mIY6q3g81Dp6YU1doGmq5s12rOLaN2kwqRQWmVwdxF3K9RgDDV0GHiZ6?=
 =?us-ascii?Q?cTGhM22RplD7jYi6OfzgHma2KrFSHkC54ySFDvxN15/fKO5t+oegGnRVBKg7?=
 =?us-ascii?Q?AAwFdMG++LF3/em9bKONHrdSjzsIv43+6KhIiih2VOUrCtR10+7+1J+pGn5M?=
 =?us-ascii?Q?MiX2HEXQPk7lqRGNOnSsADawv/LMZw1jEr6zX+HTSS3+dWgI8AGhPwIZaRc8?=
 =?us-ascii?Q?BTwVqjdJD13Gz+NaZQzWjG51IUDboB3TJA/OWh+O/oWBHwlESEnVuLFfI3Yj?=
 =?us-ascii?Q?HMZfRkUlYEkQkxnX6RNxhbug+Se9iHwI+2LVQVSk2CGmeASdphILknpWKVpG?=
 =?us-ascii?Q?RPPPP+HiUxX7s2qDchNNJye1WZXDDf6GRRuGpVmdRa3gKkp8FEMX86xobKIO?=
 =?us-ascii?Q?OgdIlrZ5tIsYNFIFk5Luy5u09BHVJX//wYN9P5wae6phw+u/USOYWQlkkRT0?=
 =?us-ascii?Q?mFEkmuFdjLo58om81w4qHqKydMaEWi4YHuLOL+gxWy7eeOtRFZ8+UtaJt8ue?=
 =?us-ascii?Q?BnsaL491GPLxjNy2O7Fjpikl/JnO0wq2lhZOY2f48JQYQTkpsN8z9/Hb2Yi8?=
 =?us-ascii?Q?tVYMyG8Hkb62A9p4V8FovYLxsonWJRfcwVE12gU7Zx2Lt6Ey6SCKM60KEfC9?=
 =?us-ascii?Q?9rVkemQlcmg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7540.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?gNVzCb+TmenhP1w8FLyS/GueJkJKDHpyTEDmNtlYsD8qxqcE70Q93SGPPnN0?=
 =?us-ascii?Q?USq8voqClWJPBHwPX7+3g3gd/UdDyn5CBlf9JQ+1nyFG28QkIe+ZhtMWYhcn?=
 =?us-ascii?Q?GLBLu3FsLpAu1IHzPBNMhQeuovR4e0fvLFVgttRkXftqWsj4buiX6975BCWn?=
 =?us-ascii?Q?ROicBrVWm4uaRDfSbURAziHqCawrIPGrWNn99gipWMl3HL4XuWe7e66hK2iM?=
 =?us-ascii?Q?uP8OZBxjzhKXMpKOAEFYGWB04sM2SkOCxuQgTqJ9h8MsHl9vVukSUcad6jHB?=
 =?us-ascii?Q?5Bl9B/RRPTYsrPN3OcueYcb7rwsEVWVtFv0EHGQc05h+KR9FiuczkbMb7V/F?=
 =?us-ascii?Q?nIl6c5IfkPX9fFQXKcAc7ZSfliJUyObKrUSG+zFl2AiTUUKviZYa7csVHT6O?=
 =?us-ascii?Q?HXfl/oHdLS4tx5D5NQPsCgNhogSoco0b95+StQwf+LjNWWIphIptJMyhCkU2?=
 =?us-ascii?Q?JGto2YA4K2FMQKVOcfQLocXtVRgU/7Cuzy3H8JiTQbqi0iNbg3vIu3lvIFa2?=
 =?us-ascii?Q?GpaqsyBk+rxOb1/wC684zpRk5kPjxXJA8uEUWaNK1vcp5Yfs9hnj8S8qZ7Ug?=
 =?us-ascii?Q?uGrIqSOMhJ0UJ69ov3czdCBgqzSiiOVRauaOS7HANWUbNAIujsgKc5HiKsK2?=
 =?us-ascii?Q?3cavRk/MDGYzbrAdQtvFE5F9gkaP/wvGePpp222lpvPSo+5VxeHdeSt4cE+k?=
 =?us-ascii?Q?Q0VkGWXpADrZE+TIgLsh12ManeV6DkQwnexUSe1ExHBhzBoTTwn4BT/8JHzZ?=
 =?us-ascii?Q?CsaUFdJpai/pKJQO215++3F0uev/wQYt2fNY04Xvk7aLSy5CD8CMQmP0ebuv?=
 =?us-ascii?Q?+PLjb41jOjxd1MiVpavOM0iUhkvso380fTsHjiSvLfuh90wukOvqblMrQo6z?=
 =?us-ascii?Q?bE1n8nIdeYprLX+h/rgdUYGXZvvzh9/VMyf9TrTGtWm8C7med3h9ddhtf52p?=
 =?us-ascii?Q?ur2ipmYIkMOlXibhZreZqJTHBKO22+1gfGcMhhsrkPUjIbKIM8qxFyy54odD?=
 =?us-ascii?Q?wsYV5wQ1Sgd76wK3ZyHVQ+UNo5l/a4X6YElBQYGDUxEWqbGSKT0Vbhdl2W3u?=
 =?us-ascii?Q?BWC29HbaBsgGZ2y6foa+CjVpoBVUiXAfB7T3VbKJrjsya4bOrbqsQYESEkpf?=
 =?us-ascii?Q?jKxSIOe1UD+/U9Pkj7ZKsbWamm4ABIAtRanYO5mUZi5TeWOXiPiR6NBjdXrS?=
 =?us-ascii?Q?XgUyLaBgOK1fZTigv2x8ZfntzSxwqhNjAMaAweUTNtyQJ7NOHvpqu+ajom37?=
 =?us-ascii?Q?N/0Ix5a3/29eNz5zj1F4bW/kcSpvcDr1Y4w9lEJVJup1B0lrZ/iFxZ49h6PD?=
 =?us-ascii?Q?cPNEzwF/8i3zOFj9cSnm+4l+5FPqFqywAdcIvhNi7GGqu661Sp0FJpaWLdOX?=
 =?us-ascii?Q?ZoP5nRO0pZTxbAw+mHsN7MKF4Y87kJX/B498eRYQBwh8eUAkVT/ufkchx8BE?=
 =?us-ascii?Q?zo2cLm4JrBjbGXHsby3NGHNwGCl+u3zaUr1nwtMOeCUQWTWZXdHt15yTsb9m?=
 =?us-ascii?Q?RxRnOOVnA2DgXjRPcLldZHlkutbaMHVYRVUJmTE1/eeYoWsb0YYU93sc2JoW?=
 =?us-ascii?Q?xHfKm4twhRdis/oJbOhHRU3419M3YM6ihGJf/x6qDFLB3bItUlszgRJTHOT1?=
 =?us-ascii?Q?YImHTvhTX3PItPY6qZXaMztbt3euKKjUBEA2PFGbKe8+7SnjiIxcapjGWBf9?=
 =?us-ascii?Q?SnTk0g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 46d64e91-440d-464a-56ba-08ddc5e5a497
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7540.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jul 2025 10:27:05.8730 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HQwUdbR3cZzBLeBN4C0J/6hoFz+Y/eMaISBdi128tP4dMf+OEpUrf/yzgba/WHLNEoL5GkwyLPzQuP+XzzamyK8XCDgFOY10VL8ecMoaTOE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8101
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752834430; x=1784370430;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=IIeE8UuCglFENcGSaMlNKJFrOkbQagKj9YzyKt2vVwg=;
 b=mFww9/KHfOb2lLScQ5YQVvBJaWC06RPJhyRpmZdrRd/s/GAcOXdPSQdu
 b2AFmEsvdNSP1jQfTH1rYPwfW9PH3y33KGQKibfvzb3z+JSktbjDl0qDz
 eyjLzVDOZX4OVpVvsnXfM0Be2XVpqq9HRgHEe/+orqGqjVk8YU/hHHaMO
 i8TPpWGKef/9QUjFGpdq2/SkFo0LnDNblAhpwRxO/Q/R1csgAQvciSm5M
 TfXCcXlOLnHsL9SYeutOPXmvHrYmKsVhSs24+W7kUlTERw/83pKbz2yMg
 ZrV4U4AerGshMMRA/5p5jVR6ahjGgUCsrXpXPRNrZAUR/s20ALueDDkV1
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mFww9/KH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] ixgbe driver stops sending normal data when
 using xsk
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

On Wed, Jul 16, 2025 at 11:41:42AM +0800, Jason Xing wrote:
> Hi all,
> 
> I'm currently faced with one tough issue caused by zero copy mode in
> xsk with ixgbe driver loaded. The case is that if we use xdpsock to
> send descs, nearly at the same time normal packets from other tx
> queues cannot be transmitted/completed at all.
> 
> Here is how I try:
> 1. run iperf or ping to see if the transmission is successful.
> 2. then run "timeout 5 ./xdpsock -i enp2s0f0 -t  -z -s 64"
> 
> You will obviously find the whole machine loses connection. It can
> only recover as soon as the xdpsock is stopped due to timeout.
> 
> I tried a lot and then traced down to this line in ixgbe driver:
> ixgbe_clean_tx_irq()
>     -> if (!(eop_desc->wb.status & cpu_to_le32(IXGBE_TXD_STAT_DD)))
>             break;
> The above line always 'breaks' the sending process.
> 
> I also managed to make the external ixgbe 6.15 work and it turned out
> to be the same issue as before.
> 
> I have no idea on how to analyze further in this driver. Could someone
> point out a direction that I can take? Is it a known issue?
> 
> Thanks,
> Jason
> 

I was able to reproduce the described behaviour, xdpsock does break the IP 
communication. However, in my case this was not because of ixgbe not being able 
to send, but because of queue 0 RX packets being dropped, which is the indended 
outcome in xdpsock, even in Tx only mode.

When I run `tcpdump -nn -e -p -i <ifname>` on the link partner, I see that the 
ixgbe host spams ARP packets just fine.

When debugging low-level stuff such as XDP, I advise you to send packets at the 
lower level, e.g. with scapy's sendp().

In case you have a different problem, please provide lspci card description and 
some truncated output of the commands that you are running and the resulting 
dmesg.
