Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D01F2D3A7A2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Jan 2026 13:00:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8A49840F34;
	Mon, 19 Jan 2026 12:00:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yFxeqdxhSntF; Mon, 19 Jan 2026 12:00:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5A96940F38
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768824032;
	bh=VzkCCBKT5I5Vy4/zZo5dWExwTSXNfQnlo5D/v2M4Sco=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CHFBx+s/LzwaDX7zdWZmY0vCN4Y59E2PMdWFqQTTzflWePIxkHx10k/4/rDRVg1oe
	 xf7DFnpaOFtL6bBnNWKi0J79NWzHqsemfkVcrOzKAX7qVhtiDnyVhm491obWh2JO51
	 jZUzNUP7cvygR2bX0yc0967m0WJ0kJ52kTjjYaD6omTCoecJqcY7cCFjd2beucxy36
	 bYzXVFGCH0CgkDVIGU4igx5AGZ1Ib2c9MwGa+I+3FvKRSePjx/XEINgLiiTDKdn/z6
	 zmtf2jSu1CfHCiel7BfUUuxICBd/hWxfC/xf6Tsg8gPfjqPCu6Jv/Wwesf1lkEqxyJ
	 uGKCb6lON0wqg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5A96940F38;
	Mon, 19 Jan 2026 12:00:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3438A2A8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 12:00:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1DA8440F30
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 12:00:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CXrxzfL78Y_e for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Jan 2026 12:00:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CF21340F32
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CF21340F32
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CF21340F32
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 12:00:28 +0000 (UTC)
X-CSE-ConnectionGUID: rnxEPjuYTuak7K+b4d6xNw==
X-CSE-MsgGUID: PkOONBvsSIq70OnNcUV80A==
X-IronPort-AV: E=McAfee;i="6800,10657,11675"; a="73889189"
X-IronPort-AV: E=Sophos;i="6.21,238,1763452800"; d="scan'208";a="73889189"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 04:00:27 -0800
X-CSE-ConnectionGUID: hUlJvL4LTjieXTrr0JwPiQ==
X-CSE-MsgGUID: KjJJ3c13T+ucWLaO0qkCow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,238,1763452800"; d="scan'208";a="237122681"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 04:00:27 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 19 Jan 2026 04:00:26 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 19 Jan 2026 04:00:26 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.35) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 19 Jan 2026 04:00:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ntbz2ROh7dMnodNuAVJJqSeAQHuJLiuiCjAllNuKRHH2Hc9aYNinA8uDxjCMyQUbgViA47Bru2N/ItAvgEOhN92IC86IgntdPdxE7AwA8yHfuKk/U0tC86svs0YRX3JaBjy+5AchDxVrTpWu0B34JRmHsujSl8GvQ+Bn+QPyIKyOJOmCDDY5BpS9MUu4FcYfMaTOoscE8DtUyL8Ur6mQg7fkNHzPWsF7Z06K60/kjF1NQ/T/TKX7GmyeejVnZ86VPlUDFKDRgk6oPa21z/hkahR5N2ljnK3GoEHkHiew4LU23adZf0L2bWVh1tG/Eqo9C7HUbVBEjse3CZm7h8i6OQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VzkCCBKT5I5Vy4/zZo5dWExwTSXNfQnlo5D/v2M4Sco=;
 b=Qerfrupzhq3f9noNnUx8ny9GvN7d0cFphTHuiupy6sZUy+qQNqAvdfmdH5bWAVx60ZuGk6PT8uBXawi/HaSB9rD7PMfhnUMXVFbjEU9DzbO7w+hGNI1f4rfaCRg91dXkI7HLVeTDV5fgpPrFIyQqPfMD94Al7/+eu3RgraJvMaKeHdqz1nW1FwnqTEY+zyPwCRMsxAtUoJSpd/me3r9USCXC/E+z+V14IVsYNUBa61qtkgxNbiGpmg0BBhNQyp4NYxjBsQ5YtZrOf3GCpOLFv6rlKSgzsQ+fHa5o5Cjp/wvyJ3TctnEmLeKkygqlL9adMmpdDQ3AUizdWcyVn00kFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 SN7PR11MB7996.namprd11.prod.outlook.com (2603:10b6:806:2e3::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9520.10; Mon, 19 Jan 2026 12:00:20 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%4]) with mapi id 15.20.9520.005; Mon, 19 Jan 2026
 12:00:20 +0000
Date: Mon, 19 Jan 2026 13:00:14 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Vivek Behera <vivek.behera@siemens.com>
CC: <aleksandr.loktionov@intel.com>, <jacob.e.keller@intel.com>,
 <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <sriram.yagnaraman@ericsson.com>, <kurt@linutronix.de>,
 <intel-wired-lan@lists.osuosl.org>
Message-ID: <aW4czi3NCmHPwDgA@boxer>
References: <20260117145112.2088217-1-vivek.behera@siemens.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260117145112.2088217-1-vivek.behera@siemens.com>
X-ClientProxiedBy: DUZPR01CA0138.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4bc::14) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|SN7PR11MB7996:EE_
X-MS-Office365-Filtering-Correlation-Id: 234caee2-e014-4ed0-5575-08de5752517d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?N6WIxDpkgNY2o8jMYhjdWSi7nBhtmGkqxF7CT5EALYf6NJoooGBORutFxWQ4?=
 =?us-ascii?Q?2nGAav7RiGLu5R90rNFs5HAi4FNPqRId6gghg2wizUB2hwbJGagKhCtoDWV+?=
 =?us-ascii?Q?/BdQpQONZHjo6I+ffPRHdre+/nVxyrlJH58ZzAuZSlU+BuyhJgXClsIs2hdy?=
 =?us-ascii?Q?ZeF6avzS8jkh/m5Bk3rmJObhDEjcFK8CVDKr2kb0u4Nm+RR+RfcXhc716y9Q?=
 =?us-ascii?Q?iPeXfQAQ8V13HYs4Ibf6WEj7wNu2rZWEZz5cVFd860Ma+Hn8bSXbKkZMZ2TW?=
 =?us-ascii?Q?JMrNvaZdrY9I3mSPEJOo66+Tx+cGno8vwo/ESsc8OGheeLFvq5nbnnFwDkHH?=
 =?us-ascii?Q?nTSR75DZFXjr+PtvbytkXf17/v4NewU1r2HsJgw0aj/T0qThpRKyZ0O7loF8?=
 =?us-ascii?Q?on5GIkf0Ntfpk3hWYyo/cFTznnzBy9v0PBGQlkSM1JfPfrLeSELllQzgQLfk?=
 =?us-ascii?Q?AkRJakd9SZBu96UEPPA5lp/Xvaq5JdcJoygcbJIcUXOwxHCyMueqaqV8vZ4X?=
 =?us-ascii?Q?kS94/jn62Xgp+DNqyxQX4hsw2M8NE8P5pXiWxxWJtzdpmRtfF5jmRe5aVzyu?=
 =?us-ascii?Q?RJqaFZTOYAFZHjz3iEnPz8tJbh8eTva/EIOFh6v0+kWswROHgo6E1YlHN2iX?=
 =?us-ascii?Q?7TD3LsAFA72Ue1/D/xCgCmWvT54Or0kVsapTgz3fPaOyYxfYXDV2Uyoydk8x?=
 =?us-ascii?Q?AcxtNxPvyaOvdFnWBMTCwZ5FwYsnWXXdh6QaVUMhF53AejYw+ETsf8cfLgop?=
 =?us-ascii?Q?unYvG7AIHeG6eaB42MOz1OPW0WyYQm1iv4EwBUsDoCV7ahu0t8wC0BPnWI82?=
 =?us-ascii?Q?gqI1NDB6+zLO+eZ6y3fWPNHNKRIUaLBKkyqBnCgUlJKegy0ZG4F9P4583DMe?=
 =?us-ascii?Q?FO58k8juaamr4HDDqgzNLzx4DRw6qyXaIK7bgZRcJ5Y0D2OC//S+YmAwLY94?=
 =?us-ascii?Q?gU2Nh08psN+84FosxPeGBEnaY+ba49Oji2WSlZrjOC/ec/anVHuVQ5QcNFkD?=
 =?us-ascii?Q?jK6za4MEwKembaPWQn1meJw/Er0dYVDf6Nd1L3QNq3k+gjCL/CV/XjgA4IWE?=
 =?us-ascii?Q?aOEXCwcY3hcp4AeIiXvgU8g5I9zHaPr3MTetpXO3LuLLOEoj0aXt+3lvirjl?=
 =?us-ascii?Q?3jo0dGrCh3kSv3Wi4Qexd6GvGzuORHkS+a4VXAJghJWoJ8tmIep5tWFw7wMg?=
 =?us-ascii?Q?hcbbzPyDxFHlO9ZlrQfp+Fp7AloW82b7/vUE1wghoCvCk64PJQ+Tfs5sEhnC?=
 =?us-ascii?Q?Xfs8C2Ee3f2ptQfCtypOyKi2hmsCVyHHQKZA4ZB1h8DpelR5g8tUmhSN5on7?=
 =?us-ascii?Q?khmbypmXapShcyqgk6jVvHVjBwu0UqdS1dHQu1AOsJsQ3tuR3CK74b5LRxiF?=
 =?us-ascii?Q?/O642v2jVKZcULsBOETN1zF/HrhD0d2FxLLgPudh7AVuVPo9f9iyQmXW2Aa9?=
 =?us-ascii?Q?lrARVVS+kNYc5EujDCMPNyy6bNjwNOXgWHrId2guwoIO0zILEpkNOsNUsBcU?=
 =?us-ascii?Q?B6RRyr7wtyUNdNPz8obch4OKz6KO5kfctkVOIFWqG2YzKoapLAO1W3dSZPfz?=
 =?us-ascii?Q?ltG5ck4xPdX/hxMuvjol/wF7CR0WTHrhF2bY2i3F?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?8qDofxnaIpIBAlqjlBq19QZ5L8EAdvL7lixVo5/14IRZj3dDURFKNHSGyZjG?=
 =?us-ascii?Q?dzEqDtvhv5bBwhURbd4zvPgCV530n3t0UC6sejQN4kjibHxLwIZ8eR0108tk?=
 =?us-ascii?Q?NHL9VsC4mFWVze5E6xu9r1PnNS0vf64YFvRoKhMYN7YWq08u7SEJyyNgvzJY?=
 =?us-ascii?Q?/nkoM/JMYXGtPjBwtGDFVtWJQfZddZ4v7uZRxzflp7buWCjezAgNKnClTjuk?=
 =?us-ascii?Q?w29KBASMQoh3UzGfF2SvrpnQE2WZFQ3v/Wii7vKiXoPKh4oWZZ2Tdxc5r0Rw?=
 =?us-ascii?Q?r8B3zqQnIn6jehKokZW2kByeRewQRetIrETdc9nuwE63Pv2FOUr7dJjsna6K?=
 =?us-ascii?Q?i5Ss6nRJhDSbjYDx81XGYnjwDkEAibcM5fYvkzDu+GTZjlZNQMBWrqr0I1yO?=
 =?us-ascii?Q?vbATv+le9pn6htf50DMFXLYfT5+Bb0hQ82YQPIj+ofxWXXC8Qv7sVBe8hbx7?=
 =?us-ascii?Q?OrYBJvrQSCROHp4EGIMKxo978kP1fhp4uVKu2T355AiBSaMDlOg07B8k1B0g?=
 =?us-ascii?Q?vAjFfib8UyCMcCDguXzkDOBeLj2l+WxY4RwxMd0hPtjudUm0sjApVz5uVFS4?=
 =?us-ascii?Q?nOZyiWSPZS3O0XbmS9v/K8VoDTcvX9bOcEXm8KNL2fF/FWyzlngCrMSVChHF?=
 =?us-ascii?Q?7C0w58l7rcZaZXknRg5QT9bejKiVqNS30zUGDc3XIYBlBBAsjKCcpqeQY69L?=
 =?us-ascii?Q?umHOMxX8TXhCTHe72c+7ZCnL+yN9gwXxxnS7doYJw7OwJ7ET9VH+ZToj7PWj?=
 =?us-ascii?Q?up6SfYCLeF3m1LSVLeJJyUrt1SjnhJYMaG3Lp9ysvFshnD/wBeNnqQGeVEO5?=
 =?us-ascii?Q?0O2EHjq1/vzyeWaZ/V0L4bwDvCWjlIjkvyXN+f787z9kcpJVsl60K8yl6lgh?=
 =?us-ascii?Q?929MdhqWM3ILlFHlc2lR7UnL3kPqzeaU5htfkLY9JWMLNe4ZbOvlYOVaHqxx?=
 =?us-ascii?Q?b7uFtKaHRcSgqGi7hbRzaoe1C7C58OuJDhOxCUgqMwrtjKiUO2lsGNNGIvFE?=
 =?us-ascii?Q?m/652S6lNAhNEnwm8MTfpABGzoJcz4heuRGYOSKvbmkKpblLIbGOQ/jOlcPX?=
 =?us-ascii?Q?dn5DG9fMfw4JruGKlUB8TyVPNfoPSS8V1mDbhtOPVozuNCQ73PjPT/9jzEiQ?=
 =?us-ascii?Q?B7tQcvcO+4yrLtrDuGDWL7nBVCiWfwqXLXkOrqt7Fb/QjLU00P5e75S1XjVw?=
 =?us-ascii?Q?r6pyzWGbnXCqtcHHcyGfzys5+mCizOaH8IbfpVwczAUNXbvdlEN0a3RK1dC4?=
 =?us-ascii?Q?JU9O/UwMrAMzhJWRVLzFFY7BI7I0yweVfsGzQSOivPbwabRQtVIBtMNN+xq5?=
 =?us-ascii?Q?dxjoDiSK1+8f7Q2/7RFoIeTawOIRwpHceBD2xSQqc54AbvG17YSosGAp0aDD?=
 =?us-ascii?Q?CGZhLwhuNh+lJb2KlPw3Hi8IHL7O0M/R3djG5IF5hsU7UQ7OlfULY791Pahw?=
 =?us-ascii?Q?KFjPBbS0PqQkXZDuJfKUKS/GQ+qwqxTKX86F5hH+8J3tmqhMt9aCiHXxg6cT?=
 =?us-ascii?Q?1BN0OkHEe2HG2XfwpkduP+361iDzPBfnKS2am57N8sjf7vMkxS9oBubaHrl5?=
 =?us-ascii?Q?L3WpQ8xPFD4FixsjSJe4E+gRHonsBTB0gyQGABwACZsy44vgmILrDL7t+VkZ?=
 =?us-ascii?Q?uPnD1wyKB63xf1kJ8TKtsvwFMdhqW1H0bWmVWEDDXnJPHWBC3OS3kDP5mQcp?=
 =?us-ascii?Q?7T/LkbyM9xzD9SELQKjh74a3ntBmxWXH/XYfzZD9K1PE4CMD2p4rCXSpTdIK?=
 =?us-ascii?Q?lOXG6sxaUK+EVSf+C8aDS8pIXYUxtRA=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 234caee2-e014-4ed0-5575-08de5752517d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jan 2026 12:00:20.0557 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eTHqiJqJ6h2iJVZYAORFnWVRR517RlI0fFIvjB4qY2QojpVenJ6lHqZHoThBujl+/1M+fMjp9GLH/mawbmivgW4/aZMuqjJ+h0ixOu2zWOI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7996
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768824028; x=1800360028;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=yX88FgmgpXaFRasCyL8E3PquuRsv5Jh5RzLQriwSpTw=;
 b=D6v3PhxwYN1Wnr8RScvxEhGSg6ZnHAVvNkudb00qM5AOnav0sZ1lBWcD
 YbrxLZMUWDhJlRF2lvH0szsYwV4FZ5cKo4LaBJEEC+xsfWgAzTa6QMUFL
 E79r1vCVrfCXkR+iGNlQ8MHHVy/g9ITZCSOBhhwMrEiF9qn9R3N0z4VSM
 IWy8AKUdJqDtM/HmoByikDBekK5bDyw4y6a0k3hPlHx3+H06asBZMqa5y
 gtuzOTZR6sBfpC/C3/D+UR6rmClQ7IzcxDiqekcI3Vy6yPScD8Jnb/dBa
 TSUBKfVbrjdJRayfPMzVdk6KABHMt08NGJC8lOJpUv8Rg987EVrie8GGj
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=D6v3Phxw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v6] igb: Fix trigger of
 incorrect irq in igb_xsk_wakeup
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

On Sat, Jan 17, 2026 at 03:51:12PM +0100, Vivek Behera wrote:
> The current implementation in the igb_xsk_wakeup expects
> the Rx and Tx queues to share the same irq. This would lead
> to triggering of incorrect irq in split irq configuration.
> This patch addresses this issue which could impact environments
> with 2 active cpu cores
> or when the number of queues is reduced to 2 or less
> 
> cat /proc/interrupts | grep eno2
>  167:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
>  0-edge      eno2
>  168:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
>  1-edge      eno2-rx-0
>  169:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
>  2-edge      eno2-rx-1
>  170:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
>  3-edge      eno2-tx-0
>  171:          0          0          0          0 IR-PCI-MSIX-0000:08:00.0
>  4-edge      eno2-tx-1
> 
> Furthermore it uses the flags input argument to trigger either rx, tx or
> both rx and tx irqs as specified in the ndo_xsk_wakeup api documentation
> 
> Fixes: 80f6ccf9f116 ("igb: Introduce XSK data structures and helpers")
> Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Suggested-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
> v1: https://lore.kernel.org/intel-wired-lan/20251212131454.124116-1-vivek.behera@siemens.com/
> v2: https://lore.kernel.org/intel-wired-lan/20251215115416.410619-1-vivek.behera@siemens.com/
> v3: https://lore.kernel.org/intel-wired-lan/20251220114936.140473-1-vivek.behera@siemens.com/
> v4: https://lore.kernel.org/intel-wired-lan/20251222115747.230521-1-vivek.behera@siemens.com/
> v5: https://lore.kernel.org/intel-wired-lan/20260112130349.1737901-1-vivek.behera@siemens.com/
> 
> changelog:
> v1
> - Initial description of the Bug and fixes made in the patch
> 
> v1 -> v2
> - Handling of RX and TX Wakeup in igc_xsk_wakeup for a split IRQ configuration
> - Review suggestions by Aleksander: Modified sequence to complete all
>   error checks for rx and tx before updating napi states and triggering irqs
> - Corrected trigger of TX and RX interrupts over E1000_ICS (non msix use case)
> - Added define for Tx interrupt trigger bit mask for E1000_ICS
> 
> v2 -> v3
> - Included applicable feedback and suggestions from igc patch
> - Fixed logic in updating eics value when  both TX and RX need wakeup
> 
> v3 -> v4
> - Added comments to explain trigerring of both TX and RX with active queue pairs
> - Fixed check of xsk pools in if statement
> 
> v4 -> v5
> - Introduced a simplified logic for sequential check for RX and TX
> 
> v5 -> v6
> - Further simplifications suggested by Maciej
> - Included review suggestions from reviewers
> ---
>  drivers/net/ethernet/intel/igb/igb_xsk.c | 31 ++++++++++++++++++++----
>  1 file changed, 26 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_xsk.c b/drivers/net/ethernet/intel/igb/igb_xsk.c
> index 30ce5fbb5b77..f8bddb7a2af8 100644
> --- a/drivers/net/ethernet/intel/igb/igb_xsk.c
> +++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
> @@ -524,6 +524,16 @@ bool igb_xmit_zc(struct igb_ring *tx_ring, struct xsk_buff_pool *xsk_pool)
>  	return nb_pkts < budget;
>  }
>  
> +static u32 igb_sw_irq_prep(struct igb_q_vector *q_vector)
> +{
> +	u32 eics = 0;
> +
> +	if (!napi_if_scheduled_mark_missed(&q_vector->napi))
> +		eics = q_vector->eims_value;
> +
> +	return eics;
> +}
> +
>  int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
>  {
>  	struct igb_adapter *adapter = netdev_priv(dev);
> @@ -542,16 +552,27 @@ int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
>  
>  	ring = adapter->tx_ring[qid];
>  
> -	if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
> -		return -ENETDOWN;
> -
>  	if (!READ_ONCE(ring->xsk_pool))
>  		return -EINVAL;
>  
> -	if (!napi_if_scheduled_mark_missed(&ring->q_vector->napi)) {
> +	if (flags & XDP_WAKEUP_TX) {
> +		if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
> +			return -ENETDOWN;
> +
> +		eics |= igb_sw_irq_prep(ring->q_vector);
> +	}
> +
> +	if (flags & XDP_WAKEUP_RX) {
> +		/* for IGB_FLAG_QUEUE_PAIRS, this will be NOP as NAPI has
> +		 * been already marked with NAPIF_STATE_MISSED
> +		 */
> +		ring = adapter->rx_ring[qid];
> +		eics |= igb_sw_irq_prep(ring->q_vector);
> +	}
> +
> +	if (eics) {
>  		/* Cause software interrupt */
>  		if (adapter->flags & IGB_FLAG_HAS_MSIX) {

braces are redundant now as we have single line bodies of branches.
Besides:

Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

Thanks for co-op!

> -			eics |= ring->q_vector->eims_value;
>  			wr32(E1000_EICS, eics);
>  		} else {
>  			wr32(E1000_ICS, E1000_ICS_RXDMT0);
> -- 
> 2.34.1
> 
