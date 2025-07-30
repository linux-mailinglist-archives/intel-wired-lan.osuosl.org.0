Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 00FB3B1611E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Jul 2025 15:13:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4F83360B67;
	Wed, 30 Jul 2025 13:13:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f5qCt23MOqVz; Wed, 30 Jul 2025 13:13:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1702C60AF2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753881196;
	bh=9ca/TcZiRKdyJyC/4xp21Z4SXyYAb9rfSmqOrYCtlww=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LSUP0AqU2iFqdiwcj020qeYzaRAvrht6O2NwJfr681J4gsjVLAiOJe3ehX2xf8nLH
	 6n3J/kqFK2WooxWfMQXSjmyAWl9GEOLQlXIHMhvgh7E3m/iCpeh2wBWCnsi6ZQDRqz
	 9VIYq6vremdBsauCz7R6HeqOVNM33NIWlF7uWnFBTo/VLmhnfd76sWr5KZzBpF5/h2
	 WlUFeKzF2bXqiQeEq+YyN9KeKLyV0SNL9GVm3YD0XjtCd90U/szrGUtV5UDRSqJenl
	 4vB44wCPxRtEkThteh+ZsYN+zPqswj4oweyZWozinRO/MilKyhSBMqazf+2su1u4XJ
	 H0cvvKEXfYsGQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1702C60AF2;
	Wed, 30 Jul 2025 13:13:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9CE6D13D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 13:13:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8E1E783C17
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 13:13:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bEzXysWmvfYs for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Jul 2025 13:13:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 64A1983C02
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 64A1983C02
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 64A1983C02
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 13:13:10 +0000 (UTC)
X-CSE-ConnectionGUID: O4r+sJv/RtOq9k/kg8lY/g==
X-CSE-MsgGUID: 3fAjQao3SAyGuAfz6jQa6A==
X-IronPort-AV: E=McAfee;i="6800,10657,11507"; a="67537985"
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="67537985"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2025 06:12:08 -0700
X-CSE-ConnectionGUID: 5bTeXB+5SOeyGCx+Vv1vyw==
X-CSE-MsgGUID: N3r7luhHT0m44r6mR/L0mQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="168286022"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2025 06:12:05 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 30 Jul 2025 06:12:04 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 30 Jul 2025 06:12:04 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.55)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 30 Jul 2025 06:12:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=E6p1zAyDD4NpIap/VzbKWNQjTVE6bsK9nePInHNPjxLNzDf0LTiCQwQzy3IvARaNQLP8ARigSDcVgbf+BVkUyrhavPaV8b4TpA4glDhVmGKoGWLwE0PXysVF1daaJI/hbTFM/ACOxQtixMchKUqJZtpeAbA2iy+h4/iayQKfyi3elfK85v7dVXj8PNoGZ1S1mC1pcbguTVFcWvJI/quVwZYLXVXJCrtz9ArI/QuaINcgqaVf/pXtgJ6Evbr3uajgxnd5So5EPUL1tX8xmfm+0IBmfD0mpXqCrOvX4BFCXfDci8yqEpEGTxSAAQNm6rVaeu79l7IGUcZ7QaZNVUnKAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9ca/TcZiRKdyJyC/4xp21Z4SXyYAb9rfSmqOrYCtlww=;
 b=fF1YTyNz5VHuW9bSZuI17r7w9r2JxPcEpU/Ip/2tepUiLqGXWgB5l2P6QrnpDAz2VAD8Wv2AmmCK+unKsdG1t+yKSedShjsCDD+IQHMYl4t0fjyykqKKB0ApZU9e6eo1Z7y1kdtpZr+1/Hq8+VTNp2ESjWltAWHl4G7wMtVAGet8bbGfr3kqybTyCJ3JIpjKxhjm9TWf+cKml8/eDjnEeNIdHFsKWyX0/xhk/GUm/jeytuHmhTePcTOewbVnwb9p0trBhZIwAoGsoDvO001kYWaxKFJZym4Gtkkl+HZh4m2PuWq2RX5D9pozrrydWfv7uY/H/JKIYjI+PHFOBeE4WA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 CY8PR11MB7900.namprd11.prod.outlook.com (2603:10b6:930:7a::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8989.11; Wed, 30 Jul 2025 13:11:18 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%4]) with mapi id 15.20.8989.010; Wed, 30 Jul 2025
 13:11:18 +0000
Date: Wed, 30 Jul 2025 15:11:12 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Jacob Keller <jacob.e.keller@intel.com>
CC: Przemek Kitszel <przemyslaw.kitszel@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, Alexander Lobakin
 <aleksander.lobakin@intel.com>, Joe Damato <jdamato@fastly.com>, "Anthony
 Nguyen" <anthony.l.nguyen@intel.com>, <netdev@vger.kernel.org>, "Christoph
 Petrausch" <christoph.petrausch@deepl.com>, Jaroslav Pulchart
 <jaroslav.pulchart@gooddata.com>
Message-ID: <aIoZ8FKZYBoutz7K@boxer>
References: <20250711-jk-ice-fix-rx-mem-leak-v2-1-fa36a1edba8e@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250711-jk-ice-fix-rx-mem-leak-v2-1-fa36a1edba8e@intel.com>
X-ClientProxiedBy: DUZP191CA0046.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:4f8::15) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|CY8PR11MB7900:EE_
X-MS-Office365-Filtering-Correlation-Id: 4dfaa2ef-39b9-44b6-6c85-08ddcf6a923d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?6HformYomkU7KV+Iz5O2WRykbOcr3kDa2NhNmz4Xxjfgr2bXXtS+c0tlZ1e1?=
 =?us-ascii?Q?66SOPzKkxWAz6MTe9bDBZtWEwWobfNtGgb/2V45x7nqxmAZBUnn5sWPJWjuu?=
 =?us-ascii?Q?GSNOgk27nX3VJmjyoOJLIm3qqpfw1EK3tnmsr9kXsIGC0Tpnj+RL8Ht1I3ES?=
 =?us-ascii?Q?KfPbqK+1G6vt95AF9spzuoPlSDsKFKi9X28GEbHU58ntl7/FZqA1AB+iK4ng?=
 =?us-ascii?Q?cnk9QTUcjx56cGpzquioA548c4It8tXuKGVdui3/hp/KV33Zw07jaIdRAzty?=
 =?us-ascii?Q?wJA2F14+YpojLE2+wDjUYkE/qJMDpqSn71wlXDOu1zsI/7NNM7YRvlSD2jC0?=
 =?us-ascii?Q?qieFGrzoVCROg0G+zxsrQ7X8MhUpXwqt39x/VV1EjFYl6SRwTn4qy5c5r43e?=
 =?us-ascii?Q?fhVE6dtRImAEFH+93WWdGwN5X/GTLBXpY2m4h7qTtatqbfmnNADb4CZsojM0?=
 =?us-ascii?Q?EWXQBvweoAP71jugo2JqMrrwytj69ORJni3zCVdCMuqIAzHNCN6w6y758m1c?=
 =?us-ascii?Q?4f9i/Ivvi88saTL35yeV4xynehieZsAu1kzljYzJG0O9DQDXsuNDVsott0LM?=
 =?us-ascii?Q?VHuFlD/FyTXigyGzVFZ35bjsNk4/VJXVxVXOkGJs4LV+0qHrUbP64YC7yrLr?=
 =?us-ascii?Q?PTb5s636Po+g9d/lTaa3J3ZEOYZmI81QF79R8K8u1dd74L2G1JF9F/oTfnh3?=
 =?us-ascii?Q?dQRE2o2XZRZ4rKGl8vBqgxqyFmHmKOmVdu2wrvaNDpR2NJ+ZLk61YkjX05e6?=
 =?us-ascii?Q?8dRYYQeNcUWePCk6UdqENRPSU+6oOdP2sTBPvDBOa9u+D1j0qUOBc2Aop1K5?=
 =?us-ascii?Q?Lh084+VD6QlQ9/YVAG4cfgpE5VACmbj+unQfca14gdW9L+XqJIlklPQ8Tlvl?=
 =?us-ascii?Q?pbf9on69BQqMpogTM1Pa9AP6CtciBV8gc5YeRMY48TOOvcSOoXthspCGvpvH?=
 =?us-ascii?Q?3xXIFklYSmFnhFkvUmV8TKE9ziXlmWbVB6++3Ytd7mcmKy3QUOVuNdINyvJK?=
 =?us-ascii?Q?WTmZ5kfvbH2M5dtLe2TWvkdAovEottKKF4+/3X7nMq0amsImXf9MmcWIqgsZ?=
 =?us-ascii?Q?puy3qJy7PdDrk5R/y80FTP7clIyxW7GF2Q7N0Fg6kRAEX1rx8F6/AupXg/+I?=
 =?us-ascii?Q?bF8Ji/oAb1uu/FnGOT15gv6f304SiEdAnBQ3Ll/tPP+GU39u/he9iL0bW21r?=
 =?us-ascii?Q?rIhY5TkjXQE5PZpcCR4WKzyR7vVQCSmpLtgGFOIxR2r8PaBMAbzRwj5zCSQ6?=
 =?us-ascii?Q?eb5K5Y5Fuqn4gIeefIfVr7TvapifWN1ryPlxCfeheOG0gNkL+YKENYlhTU3K?=
 =?us-ascii?Q?cKLK2wyWcvNvrWY5SnGhM/5UGPY4SJQYOuqMzk5jD3/xXpNMZGTCpeX21S10?=
 =?us-ascii?Q?44BiNNlCOS0JKrZdXPXTMwbJWZ9lBm7I41q29gLuTmtZBrU6h4qtoO1/JEz+?=
 =?us-ascii?Q?0Ka6W0LnDnI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?bCwnGt3GPqQ4rcup+LapdZBr1bBSuyJRNZFCouDw+v46EKWhHy8V3TCs84vi?=
 =?us-ascii?Q?eKLaikOme5BB5HDr4TB9CQ+jrKVPeizPjX3EzXMAEb9k69U4lv4pMeF6FQ6T?=
 =?us-ascii?Q?XU9TJ1BHFfxAjnpk7VY83l4scIZe+SMhwXAPQQ6rLC3JzrZTAxKwERo9hAdi?=
 =?us-ascii?Q?7TrWSQ0F/6yEH9baAT8EGSr2/lX3+tAC/Plq/r6OG/VZunrbGume0VvLEHs2?=
 =?us-ascii?Q?oAu4xU0aa9vvhDAcZ5JqEkEFVyzRZ6U+sK3agcfahXZkpRYVHNbMzoLu6v6p?=
 =?us-ascii?Q?mFPyqbIkzzVeCbYnWzxGKgwljukLGd0TaWkvEwYAD8cczO9ji6r+BPVSAyoM?=
 =?us-ascii?Q?TEXI7CFMua92rv/qQE5rAe5q8WJbI1msCfvUFRekBuu/pkMWZ9Ishvb0ZCzt?=
 =?us-ascii?Q?BtCpEz5sP/BQvgqQ4Ewu2WZ2HJ7/N4lOtk6let9caH1IHe6VvemUoOSqPLwz?=
 =?us-ascii?Q?HnurlLTBCS59iDw65nzDDAToIhNIQuHPqBpZz+xRsMX6dcUTeO2gNoJbcWqB?=
 =?us-ascii?Q?bhI9cPqvXGyLXKv8rmR6SNR65MKW2dTwmlm5ZbijwZ43xCCbeBGAlydJ9PR4?=
 =?us-ascii?Q?AcbEXwzQPfvC928mXvvL0Ole70Ffpr7HmSnt6gI7ZgmQlPeLw87WGxazQeR9?=
 =?us-ascii?Q?Gk+x/h6ae4PIywUPVwKpScdrRcS/ckGUwA3qiYyWl6l8N2D4nUiu5GM91NBV?=
 =?us-ascii?Q?scrcgJMa+tcM7bQnl5xYEXi8YLe17RZ7Y8IRI9nlUP8tna2QNF7vM13A9LCL?=
 =?us-ascii?Q?+iXc7BSNHnqwX3OdvE5qTeMhOW+vMh1h7ghZE4sxUc3d/vq5yUD/fqoZOvEo?=
 =?us-ascii?Q?mT7QMrMuXgSuj7XPqSzG5QE+Es7yXLfvSMxDbMBBq05qG3BejRMuaBesxfL3?=
 =?us-ascii?Q?qqejefKnDKn7BO77OKC/PHr4QaxjWVcrgMl3mmWHD/aPedBX+RRGg8Fr8F4e?=
 =?us-ascii?Q?GmPeYTMmGEo01xBGGKhYIv4kh/cJfwzy1M2WP2u1IChPyRCjMPLVm+p8dbUn?=
 =?us-ascii?Q?Da90z/jn1SmnUF22cmOWwm6lquhhbsaBRWiWevSmN8/QePRNnRKI4RswO+Cp?=
 =?us-ascii?Q?tarZyOx7yJAXTcpWB9IqgQGO4raD1DvuqGEYYuLRcbjdSDbMEpue/StRdkQW?=
 =?us-ascii?Q?Hi7oqyF/safRbYjPjQ85Ce5d8KPHpWWWPpQ0ZHDsn5GRoGllWyND040GW80E?=
 =?us-ascii?Q?q+uQ/uEHRAr7VUjEkzQzsz0VDyRNxWv3phSdR5mbSSwJJSI+gNEwfnIh12BS?=
 =?us-ascii?Q?U3DZKs1rd+h0ZVMvl7q1sAYymjH3BCpLklp+/IVDIGL6qUXAQx95snn33PU1?=
 =?us-ascii?Q?EpAa5JraBFkHYBzzbz+pV/XgCeS+cpr0/oy78bZm2k4K47AJ5BObdd+9Nuu7?=
 =?us-ascii?Q?fgD3gzBjquc6k3GzAFZXeoZmtvRP1gLsJHORXvb0qzYbMUnFvLm1g2lmXAD8?=
 =?us-ascii?Q?dzaQ3k/OpCHlWM24p7bzfyeLDc/NLRzOiKdU9btm4oSiSzPBI7T99o75bSXT?=
 =?us-ascii?Q?hwwshgLinhvhc7SJryXoFYOhp2VSPQ5KZaFvsgAGg2WE0+rkWyMzj8+2H/HP?=
 =?us-ascii?Q?BVBPXohpqUGIfdpd3XmDQeOqso/E9xgsbushy6H3sUc18gPEKkagQhyStABH?=
 =?us-ascii?Q?Sw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4dfaa2ef-39b9-44b6-6c85-08ddcf6a923d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jul 2025 13:11:18.5997 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KT6ssdJNincOYG/RWiqjeDkcwi0wwjwTD+aXs2Zu4pUH15cjpZU5DhthW/IycBwy3TrkMSH0VztnBtSQBvZsHDgYCXaH0wD2iNcFtkUrG7E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7900
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753881193; x=1785417193;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=AD6nOxyp4o2tzyf+/F7KtHkq3tOS7sG1kFPMjaKQyt0=;
 b=Z4F007RQ7lxA/GEEEtXtr1X4Lt5/hELOK9NlbbNtEl2Q6Qxs6Q3i7X9D
 IaGrOqEurKuBBy9ZlrtFnwNEpi3z57XXpBeoAeWDGW+n13/gs7bHdz2Nv
 X3KovZYfp7otvlFv/po57EAAYklMSxkwI9fRklCBtEIt5T4mY45gutk1d
 HWkiC4/2EK+S2Qd0sjCNqAPGEu1IGdqpZoj1EIsmSnDp4Maq8TJo/9hSz
 Uo6rVdfiJHtePWvpPanEvN+p/NfGgpiYPzqCT7Rgs9hvCj1gWZ26RhhAp
 8R5yIZDD6viyp59aVOXBp4Ciob+0/u/M3pKQ7vGg2Ic/MUNuI2ksC0C5Y
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Z4F007RQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix Rx page leak on
 multi-buffer frames
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

On Fri, Jul 11, 2025 at 05:23:49PM -0700, Jacob Keller wrote:
> The ice_put_rx_mbuf() function handles calling ice_put_rx_buf() for each
> buffer in the current frame. This function was introduced as part of
> handling multi-buffer XDP support in the ice driver.
> 
> It works by iterating over the buffers from first_desc up to 1 plus the
> total number of fragments in the frame, cached from before the XDP program
> was executed.
> 
> If the hardware posts a descriptor with a size of 0, the logic used in
> ice_put_rx_mbuf() breaks. Such descriptors get skipped and don't get added
> as fragments in ice_add_xdp_frag. Since the buffer isn't counted as a
> fragment, we do not iterate over it in ice_put_rx_mbuf(), and thus we don't
> call ice_put_rx_buf().
> 
> Because we don't call ice_put_rx_buf(), we don't attempt to re-use the
> page or free it. This leaves a stale page in the ring, as we don't
> increment next_to_alloc.
> 
> The ice_reuse_rx_page() assumes that the next_to_alloc has been incremented
> properly, and that it always points to a buffer with a NULL page. Since
> this function doesn't check, it will happily recycle a page over the top
> of the next_to_alloc buffer, losing track of the old page.
> 
> Note that this leak only occurs for multi-buffer frames. The
> ice_put_rx_mbuf() function always handles at least one buffer, so a
> single-buffer frame will always get handled correctly. It is not clear
> precisely why the hardware hands us descriptors with a size of 0 sometimes,
> but it happens somewhat regularly with "jumbo frames" used by 9K MTU.
> 
> To fix ice_put_rx_mbuf(), we need to make sure to call ice_put_rx_buf() on
> all buffers between first_desc and next_to_clean. Borrow the logic of a
> similar function in i40e used for this same purpose. Use the same logic
> also in ice_get_pgcnts().
> 
> Instead of iterating over just the number of fragments, use a loop which
> iterates until the current index reaches to the next_to_clean element just
> past the current frame. Check the current number of fragments (post XDP
> program). For all buffers up 1 more than the number of fragments, we'll
> update the pagecnt_bias. For any buffers past this, pagecnt_bias is left
> as-is. This ensures that fragments released by the XDP program, as well as
> any buffers with zero-size won't have their pagecnt_bias updated
> incorrectly. Unlike i40e, the ice_put_rx_mbuf() function does call
> ice_put_rx_buf() on the last buffer of the frame indicating end of packet.
> 
> The xdp_xmit value only needs to be updated if an XDP program is run, and
> only once per packet. Drop the xdp_xmit pointer argument from
> ice_put_rx_mbuf(). Instead, set xdp_xmit in the ice_clean_rx_irq() function
> directly. This avoids needing to pass the argument and avoids an extra
> bit-wise OR for each buffer in the frame.
> 
> Move the increment of the ntc local variable to ensure its updated *before*
> all calls to ice_get_pgcnts() or ice_put_rx_mbuf(), as the loop logic
> requires the index of the element just after the current frame.
> 
> This has the advantage that we also no longer need to track or cache the
> number of fragments in the rx_ring, which saves a few bytes in the ring.
> 
> Cc: Christoph Petrausch <christoph.petrausch@deepl.com>
> Reported-by: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
> Closes: https://lore.kernel.org/netdev/CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com/
> Fixes: 743bbd93cf29 ("ice: put Rx buffers after being done with current frame")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>

I have finally reviewed this and tested with xdpsock in copy mode running
custom bpf program that consumes 4500 bytes via bpf_xdp_adjust_tail so
that the frag consumption by bpf prog is triggered. I don't see any
alarming issues that usually popped up in /proc/meminfo.

Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Tested-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

once again thank you Jake!

> ---
> I've tested this in a setup with MTU 9000, using a combination of iperf3
> and wrk generated traffic.
> 
> I tested this in a couple of ways. First, I check memory allocations using
> /proc/allocinfo:
> 
>   awk '/ice_alloc_mapped_page/ { printf("%s %s\n", $1, $2) }' /proc/allocinfo | numfmt --to=iec
> 
> Second, I ported some stats from i40e written by Joe Damato to track the
> page allocation and busy counts. I consistently saw that the allocate stat
> increased without the busy or waive stats increasing. I also added a stat
> to track directly when we overwrote a page pointer that was non-NULL in
> ice_reuse_rx_page(), and saw it increment consistently.
> 
> With this fix, all of these indicators are fixed. I've tested both 1500
> byte and 9000 byte MTU and no longer see the leak. With the counters I was
> able to immediately see a leak within a few minutes of iperf3, so I am
> confident that I've resolved the leak with this fix.
> 
> I've now also tested with xdp-bench and confirm that XDP_TX and XDP_REDIR work
> properly with the fix for updating xdp_xmit.
> ---
> Changes in v2:
> - Fix XDP Tx/Redirect (Thanks Maciej!)
> - Link to v1: https://lore.kernel.org/r/20250709-jk-ice-fix-rx-mem-leak-v1-1-cfdd7eeea905@intel.com
> ---
>  drivers/net/ethernet/intel/ice/ice_txrx.h |  1 -
>  drivers/net/ethernet/intel/ice/ice_txrx.c | 81 +++++++++++++------------------
>  2 files changed, 33 insertions(+), 49 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
> index a4b1e9514632..07155e615f75 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx.h
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
> @@ -358,7 +358,6 @@ struct ice_rx_ring {
>  	struct ice_tx_ring *xdp_ring;
>  	struct ice_rx_ring *next;	/* pointer to next ring in q_vector */
>  	struct xsk_buff_pool *xsk_pool;
> -	u32 nr_frags;
>  	u16 max_frame;
>  	u16 rx_buf_len;
>  	dma_addr_t dma;			/* physical address of ring */
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
> index 0e5107fe62ad..1c5a2fa7ea86 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx.c
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
> @@ -865,10 +865,6 @@ ice_add_xdp_frag(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
>  	__skb_fill_page_desc_noacc(sinfo, sinfo->nr_frags++, rx_buf->page,
>  				   rx_buf->page_offset, size);
>  	sinfo->xdp_frags_size += size;
> -	/* remember frag count before XDP prog execution; bpf_xdp_adjust_tail()
> -	 * can pop off frags but driver has to handle it on its own
> -	 */
> -	rx_ring->nr_frags = sinfo->nr_frags;
>  
>  	if (page_is_pfmemalloc(rx_buf->page))
>  		xdp_buff_set_frag_pfmemalloc(xdp);
> @@ -939,20 +935,20 @@ ice_get_rx_buf(struct ice_rx_ring *rx_ring, const unsigned int size,
>  /**
>   * ice_get_pgcnts - grab page_count() for gathered fragments
>   * @rx_ring: Rx descriptor ring to store the page counts on
> + * @ntc: the next to clean element (not included in this frame!)
>   *
>   * This function is intended to be called right before running XDP
>   * program so that the page recycling mechanism will be able to take
>   * a correct decision regarding underlying pages; this is done in such
>   * way as XDP program can change the refcount of page
>   */
> -static void ice_get_pgcnts(struct ice_rx_ring *rx_ring)
> +static void ice_get_pgcnts(struct ice_rx_ring *rx_ring, unsigned int ntc)
>  {
> -	u32 nr_frags = rx_ring->nr_frags + 1;
>  	u32 idx = rx_ring->first_desc;
>  	struct ice_rx_buf *rx_buf;
>  	u32 cnt = rx_ring->count;
>  
> -	for (int i = 0; i < nr_frags; i++) {
> +	while (idx != ntc) {
>  		rx_buf = &rx_ring->rx_buf[idx];
>  		rx_buf->pgcnt = page_count(rx_buf->page);
>  
> @@ -1125,62 +1121,48 @@ ice_put_rx_buf(struct ice_rx_ring *rx_ring, struct ice_rx_buf *rx_buf)
>  }
>  
>  /**
> - * ice_put_rx_mbuf - ice_put_rx_buf() caller, for all frame frags
> + * ice_put_rx_mbuf - ice_put_rx_buf() caller, for all buffers in frame
>   * @rx_ring: Rx ring with all the auxiliary data
>   * @xdp: XDP buffer carrying linear + frags part
> - * @xdp_xmit: XDP_TX/XDP_REDIRECT verdict storage
> - * @ntc: a current next_to_clean value to be stored at rx_ring
> + * @ntc: the next to clean element (not included in this frame!)
>   * @verdict: return code from XDP program execution
>   *
> - * Walk through gathered fragments and satisfy internal page
> - * recycle mechanism; we take here an action related to verdict
> - * returned by XDP program;
> + * Called after XDP program is completed, or on error with verdict set to
> + * ICE_XDP_CONSUMED.
> + *
> + * Walk through buffers from first_desc to the end of the frame, releasing
> + * buffers and satisfying internal page recycle mechanism. The action depends
> + * on verdict from XDP program.
>   */
>  static void ice_put_rx_mbuf(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
> -			    u32 *xdp_xmit, u32 ntc, u32 verdict)
> +			    u32 ntc, u32 verdict)
>  {
> -	u32 nr_frags = rx_ring->nr_frags + 1;
> +	u32 nr_frags = xdp_get_shared_info_from_buff(xdp)->nr_frags;
>  	u32 idx = rx_ring->first_desc;
>  	u32 cnt = rx_ring->count;
> -	u32 post_xdp_frags = 1;
>  	struct ice_rx_buf *buf;
> -	int i;
> +	int i = 0;
>  
> -	if (unlikely(xdp_buff_has_frags(xdp)))
> -		post_xdp_frags += xdp_get_shared_info_from_buff(xdp)->nr_frags;
> -
> -	for (i = 0; i < post_xdp_frags; i++) {
> +	while (idx != ntc) {
>  		buf = &rx_ring->rx_buf[idx];
> +		if (++idx == cnt)
> +			idx = 0;
>  
> -		if (verdict & (ICE_XDP_TX | ICE_XDP_REDIR)) {
> +		/* An XDP program could release fragments from the end of the
> +		 * buffer. For these, we need to keep the pagecnt_bias as-is.
> +		 * To do this, only adjust pagecnt_bias for fragments up to
> +		 * the total remaining after the XDP program has run.
> +		 */
> +		if (verdict != ICE_XDP_CONSUMED)
>  			ice_rx_buf_adjust_pg_offset(buf, xdp->frame_sz);
> -			*xdp_xmit |= verdict;
> -		} else if (verdict & ICE_XDP_CONSUMED) {
> +		else if (i++ <= nr_frags)
>  			buf->pagecnt_bias++;
> -		} else if (verdict == ICE_XDP_PASS) {
> -			ice_rx_buf_adjust_pg_offset(buf, xdp->frame_sz);
> -		}
>  
>  		ice_put_rx_buf(rx_ring, buf);
> -
> -		if (++idx == cnt)
> -			idx = 0;
> -	}
> -	/* handle buffers that represented frags released by XDP prog;
> -	 * for these we keep pagecnt_bias as-is; refcount from struct page
> -	 * has been decremented within XDP prog and we do not have to increase
> -	 * the biased refcnt
> -	 */
> -	for (; i < nr_frags; i++) {
> -		buf = &rx_ring->rx_buf[idx];
> -		ice_put_rx_buf(rx_ring, buf);
> -		if (++idx == cnt)
> -			idx = 0;
>  	}
>  
>  	xdp->data = NULL;
>  	rx_ring->first_desc = ntc;
> -	rx_ring->nr_frags = 0;
>  }
>  
>  /**
> @@ -1260,6 +1242,10 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
>  		/* retrieve a buffer from the ring */
>  		rx_buf = ice_get_rx_buf(rx_ring, size, ntc);
>  
> +		/* Increment ntc before calls to ice_put_rx_mbuf() */
> +		if (++ntc == cnt)
> +			ntc = 0;
> +
>  		if (!xdp->data) {
>  			void *hard_start;
>  
> @@ -1268,24 +1254,23 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
>  			xdp_prepare_buff(xdp, hard_start, offset, size, !!offset);
>  			xdp_buff_clear_frags_flag(xdp);
>  		} else if (ice_add_xdp_frag(rx_ring, xdp, rx_buf, size)) {
> -			ice_put_rx_mbuf(rx_ring, xdp, NULL, ntc, ICE_XDP_CONSUMED);
> +			ice_put_rx_mbuf(rx_ring, xdp, ntc, ICE_XDP_CONSUMED);
>  			break;
>  		}
> -		if (++ntc == cnt)
> -			ntc = 0;
>  
>  		/* skip if it is NOP desc */
>  		if (ice_is_non_eop(rx_ring, rx_desc))
>  			continue;
>  
> -		ice_get_pgcnts(rx_ring);
> +		ice_get_pgcnts(rx_ring, ntc);
>  		xdp_verdict = ice_run_xdp(rx_ring, xdp, xdp_prog, xdp_ring, rx_desc);
>  		if (xdp_verdict == ICE_XDP_PASS)
>  			goto construct_skb;
>  		total_rx_bytes += xdp_get_buff_len(xdp);
>  		total_rx_pkts++;
>  
> -		ice_put_rx_mbuf(rx_ring, xdp, &xdp_xmit, ntc, xdp_verdict);
> +		ice_put_rx_mbuf(rx_ring, xdp, ntc, xdp_verdict);
> +		xdp_xmit |= xdp_verdict & (ICE_XDP_TX | ICE_XDP_REDIR);
>  
>  		continue;
>  construct_skb:
> @@ -1298,7 +1283,7 @@ int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
>  			rx_ring->ring_stats->rx_stats.alloc_page_failed++;
>  			xdp_verdict = ICE_XDP_CONSUMED;
>  		}
> -		ice_put_rx_mbuf(rx_ring, xdp, &xdp_xmit, ntc, xdp_verdict);
> +		ice_put_rx_mbuf(rx_ring, xdp, ntc, xdp_verdict);
>  
>  		if (!skb)
>  			break;
> 
> ---
> base-commit: 31ec70afaaad11fb08970bd1b0dc9ebae3501e16
> change-id: 20250708-jk-ice-fix-rx-mem-leak-3a328edc4797
> 
> Best regards,
> --  
> Jacob Keller <jacob.e.keller@intel.com>
> 
