Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0786A95B5E6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Aug 2024 15:05:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF362606F8;
	Thu, 22 Aug 2024 13:05:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ulYAW2o7ArVI; Thu, 22 Aug 2024 13:05:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CDA1460B25
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724331950;
	bh=vcccGOFExZ3CeVPgO+WTWLYcM0qZyvt3RWJABLQdwTA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DKubPpmynBOucNEey3ClqLb0MHmcLKeQ7dvbJkvUmety1fJsjBkDdg7SyYsQAPkUd
	 WKj6vDxsQZTurLNp89lmAlWlkahJy7/PVRtEx6/SGAY8n/bQHFPIToQga/+RWylI3c
	 Bu1ZoJnG0NTVDzjP8ZmQISv5bU9kBA7YluUD4mYRPk59pZTM4TL6Qw8V3OGChfHzZ+
	 l1xgWQKqN3kvcxNS29D5Kx+HuuoWzUM/VE1DAHHXHvbRDB1D8y9RmvHh9fw6jUwmH6
	 1XsJvEA3D4Pj9Qk8Czh/C5l3PqErAcVPy4ZzPlA4CHSOkUvNJDY68s/Vg0F710NGJX
	 ZwIb/loPI89Nw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CDA1460B25;
	Thu, 22 Aug 2024 13:05:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5C2331BF333
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 13:05:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 56317812C9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 13:05:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yb8jkKY6Y9-N for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Aug 2024 13:05:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 02A8581290
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 02A8581290
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 02A8581290
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 13:05:47 +0000 (UTC)
X-CSE-ConnectionGUID: m2HbcKB0TUSSv9KzGcXB+A==
X-CSE-MsgGUID: rDn3O5hOSKKgrRvIFVvbug==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="22914316"
X-IronPort-AV: E=Sophos;i="6.10,167,1719903600"; d="scan'208";a="22914316"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 06:05:47 -0700
X-CSE-ConnectionGUID: 2iIxS0rWRFqKN0QHSPzqHw==
X-CSE-MsgGUID: GtUkR34TQeGoL3SkZ5NAqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,167,1719903600"; d="scan'208";a="61462322"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Aug 2024 06:05:46 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 22 Aug 2024 06:05:46 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 22 Aug 2024 06:05:45 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 22 Aug 2024 06:05:45 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 22 Aug 2024 06:05:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JGu7/W3FF760h3/e2A45UKX6lqyG074hFA4F+9kpAHDfV2bvKM45oR9PLNdbgigXLaJ+dx82SI8ox5Mt8CvbcK4y0+imIhQ0515n6hbAJ/0NeC8TLs5TKANz64E9nl9FSvPWmligTwkfxBbNTqbXnjQRB6anNxBkGfr3qMVZKtA0vYvfDWNcvtNqeLsZhWO0MdvV5EgezUuqZKxtFzxt7KaVPsrVmpspsBUfojh3tyneL8+m60luhWQMOw/bYNBPzM1jJgTEUAnLey0FIsiuOU/G4UDDQnihV7mPPHDv5oBvYkB4QXogNZE+gAvY6X72E1kIiH6BprBZS8WpHMp3rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vcccGOFExZ3CeVPgO+WTWLYcM0qZyvt3RWJABLQdwTA=;
 b=CWEyGmvYLLhaQZsmt/Q0gCsX+O+qNMsmKK63KtBpgVWBI3sx/EvG14G96NuikCoMK6itnu76AaVKbMpE1l5l0hZYUh1esns6TwkYQ4f/2XiPR6QFJE84bqS70r4OA2S19iJvyibnz3mL3KKINvX42iI9tw/VLmmgPofIKnRPQK3aMZbeaS+5S2Z7JqIXI6chinJ1+U3N9pslkBd3yRlOmIP4kDhn+Dp36fdrhuvCNYC+XtcLtG9TT7ud185/EtEhIiB3PXUYqNaP85at5havbLOBOrnhxu2hRlIfleBevlMstAd8NK4OpLVKWMr9Y0HYPZ7NJ5p1N5XT5aDwuotolA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7540.namprd11.prod.outlook.com (2603:10b6:806:340::7)
 by IA0PR11MB7750.namprd11.prod.outlook.com (2603:10b6:208:442::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.18; Thu, 22 Aug
 2024 13:05:38 +0000
Received: from SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29]) by SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29%3]) with mapi id 15.20.7875.018; Thu, 22 Aug 2024
 13:05:38 +0000
Date: Thu, 22 Aug 2024 15:05:30 +0200
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Message-ID: <Zsc3mu1h9tirgKBR@lzaremba-mobl.ger.corp.intel.com>
References: <20240819100606.15383-1-larysa.zaremba@intel.com>
 <20240819100606.15383-3-larysa.zaremba@intel.com>
 <ZscjYwHAv67Tsq2I@boxer>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ZscjYwHAv67Tsq2I@boxer>
X-ClientProxiedBy: BE1P281CA0359.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:82::29) To SN7PR11MB7540.namprd11.prod.outlook.com
 (2603:10b6:806:340::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7540:EE_|IA0PR11MB7750:EE_
X-MS-Office365-Filtering-Correlation-Id: f36eef82-5b94-4a8f-b585-08dcc2ab1e39
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?LayKAt1j+jl4Hip/hi6TQytEpXxy/PsjQjfmbwi3h2JrFeAdYa492hc4NXJG?=
 =?us-ascii?Q?1S4FxwOq66QtG+59Dly0tAvqcB4Cb8g2UrMXfIq71K/YYGhjiCtZpEb+gXG5?=
 =?us-ascii?Q?eztW7t7Ob8QQoyrshw9VQb6hcBNOizk5XD2tZoTojqv9R1t9/QR35p3EAng8?=
 =?us-ascii?Q?hhKuDEqAsK8b8Hc2Ln5PafgngLyUnYaE5DXrqo2uw1oz2/FKwS6/e4l4sDOO?=
 =?us-ascii?Q?+3eYeUZmxtey+SL+a2pzCHRdhoPOzQV3oYlS8MRYTdHNJNafweKrvl1M2GDH?=
 =?us-ascii?Q?m9u3KB1pBNS8mW6MFmcemcRpaPCFXxg24Ynmx4YFhoOgKPZQ+SUXY4nAMK/R?=
 =?us-ascii?Q?VJHHpEmn/4ke6D1qINH+QYuAD50U35qa9/yXX+PtrwyYjNjmey1700n9qj7J?=
 =?us-ascii?Q?jv70mBLiqrL/ToDXo4gI3ZT86l6W1mjLeU3dQRHTsHt49WBEDjzUKOdrQZY1?=
 =?us-ascii?Q?lqsP5EHySj8OBq+Plr5SPHFfIL7bkOHAkFogOiXlP3WQ+vzeHsL8kSXYZlu7?=
 =?us-ascii?Q?hk9psb+yCzINQpjfhOnCR5JJ++SwMKIV04RA1GWSROQ0OQpdiAkRJ3ss2IxP?=
 =?us-ascii?Q?cFmmW2f/Zya9QOqdXC7wyQ+DAA6drsLT+7eIXcLrIAVmWRoj7yyfHQHvsoVr?=
 =?us-ascii?Q?YIe/0fGdfg5rXPYgPwm8LTm9RHnmhOWxWeic2bWXhKCi/4KxeE/aULYwMbUG?=
 =?us-ascii?Q?5gzJ39J1kBTEWxnMMlC72yKvg0OWZ+VG4q6X1da9OnmB2ZHLVPKljE14PoFH?=
 =?us-ascii?Q?dBF6twLsinGuohH+CkOQGgrGvDsfYViqLZc96r/6/ykF0cHABOWuszawAEx1?=
 =?us-ascii?Q?uU2YbrhVLdLJov8s6efMVDY21eSkrocuskZsskV/RRtB9bardPz2Pmyh0GKn?=
 =?us-ascii?Q?XQ10GFZmnonkuv2/Lijh7SuLCNInhD8XfBhf9fdfZKxT9P6Tmy2bY+i6BHVJ?=
 =?us-ascii?Q?58ExQyNiXB6TPDyyUaMV00CA2NJoCbLwYC6uFi2KES5s3Oaqj/HgxQG6YUqG?=
 =?us-ascii?Q?0ru/XtH7Ro/AlRxgEi1Norh1oFMGacSPSb+8HSb9u/0/vDdSuiNaFaSjoG0J?=
 =?us-ascii?Q?xkqwvp1rS+2NpUHlDJYHdOVVggzhoAb7FRp5kudrjAwH1cL8Trq5LXYTjSej?=
 =?us-ascii?Q?C57Hh55jwMfvzYScZfTlW5gdNAxRRL0BWOFf6wkRhHsbE0mSjQjMLtJS916u?=
 =?us-ascii?Q?UAzLnnocUPe1k1kHJb+kzgZv/KQOmqv1bAb6jdxAd8ek3R8ZyeMTJgajYbAo?=
 =?us-ascii?Q?tH9bt3L8tfK4T3jK8musNaKkLQnvZ41qVBxs1pjhmcpbliItA7e+nlsmdjSM?=
 =?us-ascii?Q?0++tlH9y7/Diio+9eTHVUGHe3/VBuDS1pzM8VNrBcKoQEA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7540.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Hd0WkMMRT4y4H1rBXIUFVyZ2Mrj4JbAl5H1wXdEuP8ryqrnsgfMjE4fY0G4+?=
 =?us-ascii?Q?/EVux3s6LyvanM9mCd9oOCbWCgxhcG9nyR01J3zKHzrUzmqj/TobYConAtuP?=
 =?us-ascii?Q?uDaNuh0eAPxt0gJpFmjcdsq6Uu0Dpv6+mPu2YbXKA+3UxELz0FEiz8RyEbiz?=
 =?us-ascii?Q?1Z5di/CR1GHy2f1XhMwqtAjKbucCFAAiHzo/y+NFSvyffItsj6mgL7R05R0k?=
 =?us-ascii?Q?MPqgOD1PLaaebv7Qnt5gerHeye5qumGg0g70zLsGkFjn5t7EFR+3OAEh8nom?=
 =?us-ascii?Q?UO0HhoAFr7myf4R1jh4BuOH6ZaImbozY80ga/qhgjG0LBkcsgmPV60SsnCtD?=
 =?us-ascii?Q?pjvL/oCDL3tZjR/9TuFMe7TzhAjaXLttpzbuRUiBuW8iamrXX14phz+XYl+G?=
 =?us-ascii?Q?asI71DJA7CrCHEH4QblbrgNRXQTBwdMO4AytUsmC7vAfHzFuZkO+NWmBfW2v?=
 =?us-ascii?Q?6AgRY/xMxb2T5o7vCmIdgAcq6vUQydd/Y6W6bB60/ixvFIY92wR/1eYKCyBz?=
 =?us-ascii?Q?g+jVAybRpzW7KZ7qGfknd4zAVbV0Ht6/mFSAHoq4mbIZ9SZcbzKGwKNHHkdD?=
 =?us-ascii?Q?god0sc5zvYsJRFbsTsBA7srKKCGL8ZTSmFxFqK2BPYFCL8ZogcDl95uqSgFG?=
 =?us-ascii?Q?RQKCAXocE0THbOGORrdn05/n4HCXnbqmlfII5QoVdg/V7vOmRURl4CF9tmrK?=
 =?us-ascii?Q?S5oIysGmXtcK/LXUeqjG/czRY2D85uMFbkr71wzkIH/7z/ixTwTZ7uD9+N1S?=
 =?us-ascii?Q?8Gz1dlrfgRgA1iFOYvd+pZMaFjS0bYsLT0BldkYXtWAOiMK+cGxJAPP+P4KN?=
 =?us-ascii?Q?gx3vAH4NKCMxphdHREsaLusarJ8mcSlzM03EMxcZE/y/GtFbDSl52ngNRZUV?=
 =?us-ascii?Q?PeiJw8IH7TgbkqjiVxr9bqaDWtSMRKuPmwsNpKX4jaezksu8iOaKqqUGW6gm?=
 =?us-ascii?Q?co0ClODZq0ZMvC5Ogi2K0Y6NzV/w7iNAQoZbof+ZrjANX9n9X2FKkh1ofTuV?=
 =?us-ascii?Q?KU5c0jOfrbTTM6BK2oskpcR/pY9QEv0+mqbgrpo8ISbWPI02sYD1NzyAGfoT?=
 =?us-ascii?Q?4To0YAmMYcuzEh0PerdYfBBEMSZdwNiyOm25ZVpOr9WHG0X0u9OAalyzxgtd?=
 =?us-ascii?Q?eNctzKANoN9neqLXCSHqsHhfleG7kjPkUZWh6xd5WaY0QZimHKlni9lqugAO?=
 =?us-ascii?Q?B4kSNJolQqt82iRH3rZVdb3ZElD5jxU/XjLEmcp3bY4eYY0DGY7Qb7OsZN+k?=
 =?us-ascii?Q?O8rf4tFL3bg7KN3IYx9mkBO+ZFgFmX0/VxZZse88ncYDCpB3kf+w7Yj3Bj9t?=
 =?us-ascii?Q?jXNXy7qjjHi9iwCSgmAf7zIGsEmg8cphqqyiTY4CreiIjQ6xkkpHuXPi6s17?=
 =?us-ascii?Q?Y7qTiw22MJnEE43C9iLELL4WIXlzyjYS6u9P0WF1wwIsj+A9TY6lqoincHXC?=
 =?us-ascii?Q?DclFw1VRP+EBTSui0pvV+Sc2aU1J9bMd2am+mZTrCTeEHS/rLQVh6qm5quFe?=
 =?us-ascii?Q?yM4w6F5VtilsV7TsZs760wR1hGlokweJ0FUUp95Ef3cwYOmvjekDoKftQVn8?=
 =?us-ascii?Q?WvLGQSTTbtzV4P3lUkL9fxpnizrofhDWcyCFwlWI?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f36eef82-5b94-4a8f-b585-08dcc2ab1e39
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7540.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Aug 2024 13:05:38.3047 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WjOw7dFrj4z713s/JLLR7HQfMgyfiXiIRBk540RU3Wk1HbCGzappQ9Z6o9WIamzkFHG+Dy7w3em0gZmYdvt9WiOJDKia8yIpsMhPAO/UOJY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7750
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724331948; x=1755867948;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=KyLZ8A/FvTDh/66BQ7DECe5QkaLsikQ/BC5r/cFTWZU=;
 b=I+KuQw5VSOcKKDgT9k1FnnmbIadduKXnpb/gJcowaP+mNm1B7HpAm7o3
 a4761dOvpQ3NxB10aIN0tvf6edvrt9ceZ7B4ZcXWxp6IU2gf3g3lxNxH5
 DZEb4T06mVW+ngRb7Ddkg1Ckwfh3/Xp6ImEqDcCxOHc2lnXaY3SlOAEoO
 dp1kcD82R9YvGtuFZWXVQYXpeHoD5B/szFihuVHGcWTEtmfpEdqt8bLn9
 I0C56MOMsKnQLhJO2yJ4PJbnvpVtUjOiizXKM+HlWhoZwWb7yY9N4oCuy
 mY7lI/2gDyB9q13M8Z+zntcBjRIggHbYi6WHThYDhE5/5zWL1Cy2lBxsx
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=I+KuQw5V
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3 2/6] ice: protect XDP
 configuration with a mutex
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Amritha Nambiar <amritha.nambiar@intel.com>,
 John Fastabend <john.fastabend@gmail.com>, Alexei
 Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Jacob Keller <jacob.e.keller@intel.com>, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, magnus.karlsson@intel.com,
 Chandan Kumar Rout <chandanx.rout@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Aug 22, 2024 at 01:39:15PM +0200, Maciej Fijalkowski wrote:
> On Mon, Aug 19, 2024 at 12:05:39PM +0200, Larysa Zaremba wrote:
> > The main threat to data consistency in ice_xdp() is a possible asynchronous
> > PF reset. It can be triggered by a user or by TX timeout handler.
> > 
> > XDP setup and PF reset code access the same resources in the following
> > sections:
> > * ice_vsi_close() in ice_prepare_for_reset() - already rtnl-locked
> > * ice_vsi_rebuild() for the PF VSI - not protected
> > * ice_vsi_open() - already rtnl-locked
> > 
> > With an unfortunate timing, such accesses can result in a crash such as the
> > one below:
> > 
> > [ +1.999878] ice 0000:b1:00.0: Registered XDP mem model MEM_TYPE_XSK_BUFF_POOL on Rx ring 14
> > [ +2.002992] ice 0000:b1:00.0: Registered XDP mem model MEM_TYPE_XSK_BUFF_POOL on Rx ring 18
> > [Mar15 18:17] ice 0000:b1:00.0 ens801f0np0: NETDEV WATCHDOG: CPU: 38: transmit queue 14 timed out 80692736 ms
> > [ +0.000093] ice 0000:b1:00.0 ens801f0np0: tx_timeout: VSI_num: 6, Q 14, NTC: 0x0, HW_HEAD: 0x0, NTU: 0x0, INT: 0x4000001
> > [ +0.000012] ice 0000:b1:00.0 ens801f0np0: tx_timeout recovery level 1, txqueue 14
> > [ +0.394718] ice 0000:b1:00.0: PTP reset successful
> > [ +0.006184] BUG: kernel NULL pointer dereference, address: 0000000000000098
> > [ +0.000045] #PF: supervisor read access in kernel mode
> > [ +0.000023] #PF: error_code(0x0000) - not-present page
> > [ +0.000023] PGD 0 P4D 0
> > [ +0.000018] Oops: 0000 [#1] PREEMPT SMP NOPTI
> > [ +0.000023] CPU: 38 PID: 7540 Comm: kworker/38:1 Not tainted 6.8.0-rc7 #1
> > [ +0.000031] Hardware name: Intel Corporation S2600WFT/S2600WFT, BIOS SE5C620.86B.02.01.0014.082620210524 08/26/2021
> > [ +0.000036] Workqueue: ice ice_service_task [ice]
> > [ +0.000183] RIP: 0010:ice_clean_tx_ring+0xa/0xd0 [ice]
> > [...]
> > [ +0.000013] Call Trace:
> > [ +0.000016] <TASK>
> > [ +0.000014] ? __die+0x1f/0x70
> > [ +0.000029] ? page_fault_oops+0x171/0x4f0
> > [ +0.000029] ? schedule+0x3b/0xd0
> > [ +0.000027] ? exc_page_fault+0x7b/0x180
> > [ +0.000022] ? asm_exc_page_fault+0x22/0x30
> > [ +0.000031] ? ice_clean_tx_ring+0xa/0xd0 [ice]
> > [ +0.000194] ice_free_tx_ring+0xe/0x60 [ice]
> > [ +0.000186] ice_destroy_xdp_rings+0x157/0x310 [ice]
> > [ +0.000151] ice_vsi_decfg+0x53/0xe0 [ice]
> > [ +0.000180] ice_vsi_rebuild+0x239/0x540 [ice]
> > [ +0.000186] ice_vsi_rebuild_by_type+0x76/0x180 [ice]
> > [ +0.000145] ice_rebuild+0x18c/0x840 [ice]
> > [ +0.000145] ? delay_tsc+0x4a/0xc0
> > [ +0.000022] ? delay_tsc+0x92/0xc0
> > [ +0.000020] ice_do_reset+0x140/0x180 [ice]
> > [ +0.000886] ice_service_task+0x404/0x1030 [ice]
> > [ +0.000824] process_one_work+0x171/0x340
> > [ +0.000685] worker_thread+0x277/0x3a0
> > [ +0.000675] ? preempt_count_add+0x6a/0xa0
> > [ +0.000677] ? _raw_spin_lock_irqsave+0x23/0x50
> > [ +0.000679] ? __pfx_worker_thread+0x10/0x10
> > [ +0.000653] kthread+0xf0/0x120
> > [ +0.000635] ? __pfx_kthread+0x10/0x10
> > [ +0.000616] ret_from_fork+0x2d/0x50
> > [ +0.000612] ? __pfx_kthread+0x10/0x10
> > [ +0.000604] ret_from_fork_asm+0x1b/0x30
> > [ +0.000604] </TASK>
> > 
> > The previous way of handling this through returning -EBUSY is not viable,
> > particularly when destroying AF_XDP socket, because the kernel proceeds
> > with removal anyway.
> > 
> > There is plenty of code between those calls and there is no need to create
> > a large critical section that covers all of them, same as there is no need
> > to protect ice_vsi_rebuild() with rtnl_lock().
> > 
> > Add xdp_state_lock mutex to protect ice_vsi_rebuild() and ice_xdp().
> > 
> > Leaving unprotected sections in between would result in two states that
> > have to be considered:
> > 1. when the VSI is closed, but not yet rebuild
> > 2. when VSI is already rebuild, but not yet open
> > 
> > The latter case is actually already handled through !netif_running() case,
> > we just need to adjust flag checking a little. The former one is not as
> > trivial, because between ice_vsi_close() and ice_vsi_rebuild(), a lot of
> > hardware interaction happens, this can make adding/deleting rings exit
> > with an error. Luckily, VSI rebuild is pending and can apply new
> > configuration for us in a managed fashion.
> > 
> > Therefore, add an additional VSI state flag ICE_VSI_REBUILD_PENDING to
> > indicate that ice_xdp() can just hot-swap the program.
> > 
> > Also, as ice_vsi_rebuild() flow is touched in this patch, make it more
> > consistent by deconfiguring VSI when coalesce allocation fails.
> > 
> > Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
> > Fixes: efc2214b6047 ("ice: Add support for XDP")
> > Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> > Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> > Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com>
> > Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice.h      |  2 ++
> >  drivers/net/ethernet/intel/ice/ice_lib.c  | 34 ++++++++++++++---------
> >  drivers/net/ethernet/intel/ice/ice_main.c | 19 +++++++++----
> >  drivers/net/ethernet/intel/ice/ice_xsk.c  |  3 +-
> >  4 files changed, 39 insertions(+), 19 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> > index caaa10157909..ce8b5505b16d 100644
> > --- a/drivers/net/ethernet/intel/ice/ice.h
> > +++ b/drivers/net/ethernet/intel/ice/ice.h
> > @@ -318,6 +318,7 @@ enum ice_vsi_state {
> >  	ICE_VSI_UMAC_FLTR_CHANGED,
> >  	ICE_VSI_MMAC_FLTR_CHANGED,
> >  	ICE_VSI_PROMISC_CHANGED,
> > +	ICE_VSI_REBUILD_PENDING,
> >  	ICE_VSI_STATE_NBITS		/* must be last */
> >  };
> >  
> > @@ -411,6 +412,7 @@ struct ice_vsi {
> >  	struct ice_tx_ring **xdp_rings;	 /* XDP ring array */
> >  	u16 num_xdp_txq;		 /* Used XDP queues */
> >  	u8 xdp_mapping_mode;		 /* ICE_MAP_MODE_[CONTIG|SCATTER] */
> > +	struct mutex xdp_state_lock;
> >  
> >  	struct net_device **target_netdevs;
> >  
> > diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> > index 5f2ddcaf7031..a8721ecdf2cd 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> > @@ -447,6 +447,7 @@ static void ice_vsi_free(struct ice_vsi *vsi)
> >  
> >  	ice_vsi_free_stats(vsi);
> >  	ice_vsi_free_arrays(vsi);
> > +	mutex_destroy(&vsi->xdp_state_lock);
> >  	mutex_unlock(&pf->sw_mutex);
> >  	devm_kfree(dev, vsi);
> >  }
> > @@ -626,6 +627,8 @@ static struct ice_vsi *ice_vsi_alloc(struct ice_pf *pf)
> >  	pf->next_vsi = ice_get_free_slot(pf->vsi, pf->num_alloc_vsi,
> >  					 pf->next_vsi);
> >  
> > +	mutex_init(&vsi->xdp_state_lock);
> > +
> >  unlock_pf:
> >  	mutex_unlock(&pf->sw_mutex);
> >  	return vsi;
> > @@ -2973,19 +2976,24 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags)
> >  	if (WARN_ON(vsi->type == ICE_VSI_VF && !vsi->vf))
> >  		return -EINVAL;
> >  
> > +	mutex_lock(&vsi->xdp_state_lock);
> > +	clear_bit(ICE_VSI_REBUILD_PENDING, vsi->state);
> 
> I am not sure what we be the state of interface if rebuild wouldn't
> succeed but it feels like clearing this bit should happen at the end of
> rebuild when we are sure it was succesful?
>

Unfortunately, this is a very valid point and I will have to send another 
version.
Until rebuild is completed, we cannot be sure that VSI is in a state to 
configure XDP queues on, but we can be sure that either 
there will be another rebuild soon or XDP won't be the user's main concern.

> > +
> >  	ret = ice_vsi_realloc_stat_arrays(vsi);
> >  	if (ret)
> > -		goto err_vsi_cfg;
> > +		goto unlock;
> >  
> >  	ice_vsi_decfg(vsi);
> >  	ret = ice_vsi_cfg_def(vsi);
> >  	if (ret)
> > -		goto err_vsi_cfg;
> > +		goto unlock;
> >  
> >  	coalesce = kcalloc(vsi->num_q_vectors,
> >  			   sizeof(struct ice_coalesce_stored), GFP_KERNEL);
> > -	if (!coalesce)
> > -		return -ENOMEM;
> > +	if (!coalesce) {
> > +		ret = -ENOMEM;
> > +		goto decfg;
> > +	}
> >  
> >  	prev_num_q_vectors = ice_vsi_rebuild_get_coalesce(vsi, coalesce);
> >  
> > @@ -2993,22 +3001,22 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags)
> >  	if (ret) {
> >  		if (vsi_flags & ICE_VSI_FLAG_INIT) {
> >  			ret = -EIO;
> > -			goto err_vsi_cfg_tc_lan;
> > +			goto free_coalesce;
> >  		}
> >  
> > -		kfree(coalesce);
> > -		return ice_schedule_reset(pf, ICE_RESET_PFR);
> > +		ret = ice_schedule_reset(pf, ICE_RESET_PFR);
> > +		goto free_coalesce;
> >  	}
> >  
> >  	ice_vsi_rebuild_set_coalesce(vsi, coalesce, prev_num_q_vectors);
> > -	kfree(coalesce);
> >  
> > -	return 0;
> > -
> > -err_vsi_cfg_tc_lan:
> > -	ice_vsi_decfg(vsi);
> > +free_coalesce:
> >  	kfree(coalesce);
> > -err_vsi_cfg:
> > +decfg:
> > +	if (ret)
> > +		ice_vsi_decfg(vsi);
> > +unlock:
> > +	mutex_unlock(&vsi->xdp_state_lock);
> >  	return ret;
> >  }
> >  
> > diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> > index 2d286a4609a5..e92f43850671 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_main.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> > @@ -595,6 +595,7 @@ ice_prepare_for_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
> >  	/* clear SW filtering DB */
> >  	ice_clear_hw_tbls(hw);
> >  	/* disable the VSIs and their queues that are not already DOWN */
> > +	set_bit(ICE_VSI_REBUILD_PENDING, ice_get_main_vsi(pf)->state);
> >  	ice_pf_dis_all_vsi(pf, false);
> >  
> >  	if (test_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags))
> > @@ -2995,7 +2996,8 @@ ice_xdp_setup_prog(struct ice_vsi *vsi, struct bpf_prog *prog,
> >  	}
> >  
> >  	/* hot swap progs and avoid toggling link */
> > -	if (ice_is_xdp_ena_vsi(vsi) == !!prog) {
> > +	if (ice_is_xdp_ena_vsi(vsi) == !!prog ||
> > +	    test_bit(ICE_VSI_REBUILD_PENDING, vsi->state)) {
> >  		ice_vsi_assign_bpf_prog(vsi, prog);
> >  		return 0;
> >  	}
> > @@ -3067,21 +3069,28 @@ static int ice_xdp(struct net_device *dev, struct netdev_bpf *xdp)
> >  {
> >  	struct ice_netdev_priv *np = netdev_priv(dev);
> >  	struct ice_vsi *vsi = np->vsi;
> > +	int ret;
> >  
> >  	if (vsi->type != ICE_VSI_PF) {
> >  		NL_SET_ERR_MSG_MOD(xdp->extack, "XDP can be loaded only on PF VSI");
> >  		return -EINVAL;
> >  	}
> >  
> > +	mutex_lock(&vsi->xdp_state_lock);
> > +
> >  	switch (xdp->command) {
> >  	case XDP_SETUP_PROG:
> > -		return ice_xdp_setup_prog(vsi, xdp->prog, xdp->extack);
> > +		ret = ice_xdp_setup_prog(vsi, xdp->prog, xdp->extack);
> > +		break;
> >  	case XDP_SETUP_XSK_POOL:
> > -		return ice_xsk_pool_setup(vsi, xdp->xsk.pool,
> > -					  xdp->xsk.queue_id);
> > +		ret = ice_xsk_pool_setup(vsi, xdp->xsk.pool, xdp->xsk.queue_id);
> > +		break;
> >  	default:
> > -		return -EINVAL;
> > +		ret = -EINVAL;
> >  	}
> > +
> > +	mutex_unlock(&vsi->xdp_state_lock);
> > +	return ret;
> >  }
> >  
> >  /**
> > diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
> > index 240a7bec242b..a659951fa987 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_xsk.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
> > @@ -390,7 +390,8 @@ int ice_xsk_pool_setup(struct ice_vsi *vsi, struct xsk_buff_pool *pool, u16 qid)
> >  		goto failure;
> >  	}
> >  
> > -	if_running = netif_running(vsi->netdev) && ice_is_xdp_ena_vsi(vsi);
> > +	if_running = !test_bit(ICE_VSI_DOWN, vsi->state) &&
> > +		     ice_is_xdp_ena_vsi(vsi);
> >  
> >  	if (if_running) {
> >  		struct ice_rx_ring *rx_ring = vsi->rx_rings[qid];
> > -- 
> > 2.43.0
> > 
