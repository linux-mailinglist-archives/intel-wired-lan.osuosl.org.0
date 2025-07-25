Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B3E6FB11B63
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Jul 2025 12:00:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 65F0B6175F;
	Fri, 25 Jul 2025 10:00:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AAFsMiNuWqBv; Fri, 25 Jul 2025 10:00:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C898A61762
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753437650;
	bh=OaXGTNeuWAcglbpVKL7QQcyQni5GOO6xIrwd3LtqVls=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=X1pKGaB0saoxSSZ2d/97xEBAZUcSkFZKD1vz1jiEw+mYE1p64L/vz8y9t0NQPUw/K
	 1jTlsduzMZ+3L9ckejfJz6vYd0ONE5j5NJJzvF2ft1rOA6cHF7sDnONfZVpuDBOaSj
	 fDG0ex6RMd7wTQMEY3xUe7RSPy/U50xMfcFqQpxYqcyi3jEdrxUS4XtdfGVn6enihO
	 /Wgq++b5Jx0hdg3RKACmcbFY7WQhFSOFWKQd2gUKJRvdSQVkp70tCZBcOIrzwZ7VDE
	 Wb06A/In4NeyEf3eY8RqO3YelKrBcXpvP8GzHGknt4UDrDXxOJ70mrv4x+8ShkEAV5
	 5YO8pKrvZ85Fg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C898A61762;
	Fri, 25 Jul 2025 10:00:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 77980909
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 10:00:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6808060833
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 10:00:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tPj03XM6HiC8 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Jul 2025 10:00:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7740560DE2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7740560DE2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7740560DE2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 10:00:46 +0000 (UTC)
X-CSE-ConnectionGUID: STs6O4zIRNSVvkCjzy7eJA==
X-CSE-MsgGUID: EiVl9FV7Q3mTBLn5R+S4VQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11501"; a="59423633"
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="59423633"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2025 03:00:45 -0700
X-CSE-ConnectionGUID: LJeFUwoeSweEexpVj2GUHg==
X-CSE-MsgGUID: x7um8n60Q9e/JJvMezcEAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="197978224"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2025 03:00:45 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 25 Jul 2025 03:00:44 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 25 Jul 2025 03:00:44 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.50)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 25 Jul 2025 03:00:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cG8NYkJ0VqdOiTGZIjRRfw4BQBJxzS1ADlBchCL9waVSnqiZmWpL3yktHxLBJaeBWwa8WkPI90lYwafAPeA843P3ERMp0hRTlFSQwHZLhUTdjDvs5azl7yq3n3LT9pYLuVDV7h8Kkrt9M5TF1kZJpw1JBOAo4YAAaaua2oIX1E6t4lo4gWNfIHbgK0qFEnTFLhdc/CwgXhcvxfjJgZ0P2uslHARgCD/aMINLeoyJBXE3ks66DwPyQbdBDnkiEYARK9FVg68Us6Qf9K4YTbjTlQHwcMzC0qy8bkyzzWglWDJ02zVCJT7yMkRpflzaEr+itUgxg/0zVyr7M+v/jkQVfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OaXGTNeuWAcglbpVKL7QQcyQni5GOO6xIrwd3LtqVls=;
 b=fCjzaMf7DEcsw0jA5eKV9gxgkPetmHWFzbE1X+gwv/EOXYWJCQa1OQ/Par4MllDnUk27/UMzWbaRQpCyt3/Na809r2tMDbK4Ww0AC+1WjtsfjylbvMhorv2aNsAgc2hAmY6ILx4VXRqXENrwqjgotW8vLAq+bgxw2/FZUAFGHUYd3QWRPHh6Irr/kr0rsIgMQ1dozZ/xgEmDpa8vAIoX87dMzlDfBMAexpVnaBae7RuGaYvdp3uWsznCcpfnC7B4+DpzdMo5uVYRCwbc1g++s1mZ0tYHXa+WmG2Ewu3+T7yFDQxYD8N8lALGBbULKCrt8C2qtsshut5p9mP3CdE8jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 PH0PR11MB7712.namprd11.prod.outlook.com (2603:10b6:510:290::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.39; Fri, 25 Jul
 2025 10:00:29 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%6]) with mapi id 15.20.8964.019; Fri, 25 Jul 2025
 10:00:29 +0000
Date: Fri, 25 Jul 2025 12:00:12 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Jason Xing <kerneljasonxing@gmail.com>
CC: <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <andrew+netdev@lunn.ch>, <davem@davemloft.net>, <edumazet@google.com>,
 <kuba@kernel.org>, <pabeni@redhat.com>, <bjorn@kernel.org>,
 <magnus.karlsson@intel.com>, <jonathan.lemon@gmail.com>, <sdf@fomichev.me>,
 <ast@kernel.org>, <daniel@iogearbox.net>, <hawk@kernel.org>,
 <john.fastabend@gmail.com>, <bpf@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>, Jason Xing
 <kernelxing@tencent.com>
Message-ID: <aINVrP8vrxIkxhZr@boxer>
References: <20250720091123.474-1-kerneljasonxing@gmail.com>
 <20250720091123.474-6-kerneljasonxing@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250720091123.474-6-kerneljasonxing@gmail.com>
X-ClientProxiedBy: DUZPR01CA0112.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4bb::11) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|PH0PR11MB7712:EE_
X-MS-Office365-Filtering-Correlation-Id: 40e27564-20a3-42fa-ec58-08ddcb6215d2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7416014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?xrl5JliDnloKOHRfj3eG2FaZ/0nnOx/pw6e/PIlDq2oOkav+tdNO3QJgl0yW?=
 =?us-ascii?Q?KDk046wLgwQ08yOgHnqVD59IT8ICj9I8XcrbGCo2dfoRKoQ8JaVnpFBAgdZG?=
 =?us-ascii?Q?JabkbsVRpHb+DUcmVVmJ9U+aUrf01DjdteMC3ZIdVKUYZFwfIXAp8Itqk96S?=
 =?us-ascii?Q?WgW2EHnD3nk5cUA4yw+y4n24pyUuKdV/MNRzjwCeF/I3zO/nKf4YvO8gyFl6?=
 =?us-ascii?Q?ZUBcclysWy3HCkqor+TR2ZOR9Ng0u/aEV0JRwHsMqKfqEg03Jgq0Q/6xsJo2?=
 =?us-ascii?Q?Dh7FLa2kl3o+ptlsm6q4mVVyRsSbkcgBSXyQX/T/3aDkhAsDWDCcqECevxMJ?=
 =?us-ascii?Q?ALBCNd4RDkGv0QzovbXoVpkqa4Rte79kzsW/m/uSZDskF4ZqEDf8sbJqLVfo?=
 =?us-ascii?Q?15KrJdapxxwpC9Q4umKeAB4kNML/d9Ycj9P6mS2mcDQvqWiFljIQFaTwXX1s?=
 =?us-ascii?Q?jg9SNNrZFAcFDgsVxoGs1rKenc0pxPZlOjJ3Y7cjuuw9I8sPrELvAX7CTWmM?=
 =?us-ascii?Q?MDhlRjVAs79yFVlC32pCE8GtAB2Hx+uD53PY+ip2JETjHI9N/u8uIo38+XCA?=
 =?us-ascii?Q?QWM20YElimCrvwnzAhRJvCI2MigNbG/dCcBWGeUSop6akSJgeMmdo185YE/o?=
 =?us-ascii?Q?JWtnmepsiKjrD7OqdrHNsU7eY2h2ME1H3xlOwLXQnsblwQth+4j3F6R4O3ZE?=
 =?us-ascii?Q?oPZ2lXG1kmVDAVBhniwBqo4vcRJzVgYWKpRX6CA1nLlwkTC80nZQo5htzwrw?=
 =?us-ascii?Q?vMauUEyJfLCb3cWxHh7tzZ9Iq7w4BCMF3lEBc73TqQs5uZdvIelbbAsEFxmU?=
 =?us-ascii?Q?kcmjVjoo7A+O7krtNEZavOlFS8pQWLIaNJ6kxbsCKEa5Hvf55STJAyvY2tJR?=
 =?us-ascii?Q?Sx5lqaCZ8t3/3usKnIbpxQecXiq4/acxcz4yt+J5/3wqqZ2BCRDcW4rjZwOh?=
 =?us-ascii?Q?bf2BJDTShCVVbaiqB//PKmYG8j7IkBRaaxPVFf7iKhfrkiGW/SyvrH2SGuFF?=
 =?us-ascii?Q?gKsyRFtZkiv2HyISrH22rMYZFV22c0+FZxTq+dKNSvLrvEBYB8pmyM7NaYzJ?=
 =?us-ascii?Q?slVVEf/sAYEpq5X15Cmv2dTI0eTccLouKDiHfegDaalHJKYnnAz06SVyDn56?=
 =?us-ascii?Q?Kee3TRQ3lHKgtnQdoNx2uVaIauoYQaxoy/6pSt0mVxJNOSUVFUKdgyGSurBw?=
 =?us-ascii?Q?hNx1K/vaiDky7i9Fm3UvXV8ENbPdMpBnE1abfgoceHsfKRTJGmR0pGbPPfzY?=
 =?us-ascii?Q?jN/dWX8Z7CbFY8HRlC2TIQ4lfMzBhaS0zUv65ZD17+zUt4L8hOLuND/5j+2a?=
 =?us-ascii?Q?h/htfGxojALixiCyizDAPb2s0eiHrfw53cL+meYQrL0JV5E3joanWDjvbPq9?=
 =?us-ascii?Q?lWuLQu5QLCTlngmnGqimmKbi11BbU5jHrej2X+VspVWtxbUpM1+SP8rJXB3/?=
 =?us-ascii?Q?qJYODjWlIls=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?HUZwUXK1Adsqyj2EMAWM+dg3E7p1wftRkojEXFsYBaFjYLhggtEA37vjZsyq?=
 =?us-ascii?Q?GJk9xKJJJ4w0yxFr4AHYH95HwTayY3DmYAJI6TPi3Mms4nbmCA0p3jUe/mY/?=
 =?us-ascii?Q?QJiihYKZ1CezsJQELD+vFaet3tbZTy3barlUC2BL8W4P5MJBnamPJWTF0nM+?=
 =?us-ascii?Q?/eY3mD9rJc9wSYPzkyHVvTvcSiSnOi3H21feTsPfZ6RTY7owQIkBbyjm/Tzm?=
 =?us-ascii?Q?fgbuKJT4m9IbP43Bn4XSHc+Y0w89v4vNNil6Dt2PCju7akGgBKTHrYp9Pkjq?=
 =?us-ascii?Q?+vkhYa0ZEAx9ptmM5r17PX3SWA7wfaUsNWxDFFjW4/WATVSdDkNG0HMLph/c?=
 =?us-ascii?Q?BDztLe9tpEeXZT4TXe6TzGq65y4rStVPtcF9lxTM7odr3iSotdGEF/omK/82?=
 =?us-ascii?Q?o8t4Ef2b14lkwgg0um87A1CApvQlzmwrclplWMoGYIbarEd7kW/5/AB4MYb9?=
 =?us-ascii?Q?h513T4AHbWR1WAH/O18jw9AiBgfvTQO5J9woyIjRgJ7on7T1rPUNTk4SKifN?=
 =?us-ascii?Q?bdtx/6C+WnB/v067a6EifpTs0/6UuJqrBYfhFsmYCd22dOOU2mIL1wSdFdzL?=
 =?us-ascii?Q?RlUxRtXf+nP5w7Z5vjSuOAjNhuO1kURrjOubb7uMBe281IOarT0QTc1QVJCl?=
 =?us-ascii?Q?VgX94EqGe7CmqKSPckXnI7trL2U1/npnS1IWaKcjk7rqQ7LX3cyCQBijP09R?=
 =?us-ascii?Q?VkquPl8gRIzq3nuommlZ7MKRECq22wpeS0ay7MdBnfgwhPEyD3SVpdENEqQZ?=
 =?us-ascii?Q?n0ZBNrZYmRHeGlJ9hz90sXspgQEWPAr/6KhJq2O/LYhHCk82VhJkQdsBSlK8?=
 =?us-ascii?Q?0Kx+Onv/1d2k6QX3F6hgdkKlT4Tdp9ocr9l/ozB3gCcfsZi/zbcj+Dh0CiHa?=
 =?us-ascii?Q?CmbJWThLm4deWXm1P1LpHDbytIhRAI86X7z5VQZI1xCxJeeZ96HWM550ehNd?=
 =?us-ascii?Q?Viv8Kfo8vUCd1iP5eO6nj5zePrD8FTGN9ZCkcSPYTpS841lSdnv2PjumQlij?=
 =?us-ascii?Q?a4adq5edcUgmpd90ErDNjhDSBKENAmRQbdW+0tI/EeVq+s99Y0ThXSCnW/G9?=
 =?us-ascii?Q?DZysT6z84h4AVoQZxjb543Xp6Nu34tPxMXywEtQqYC3Er7tTYFUPZY3a7oUZ?=
 =?us-ascii?Q?z0d11vu21i5IeIVxQmUid7gkKmB1/JnhuN1E+SxN1JCmaqAWR1nWAR9nsvwY?=
 =?us-ascii?Q?tftGrlqS9w4Lp4khyzTvUMmvJRHZrZpT5j5UnRmP+eNk7eiAZp5Bthv86iK8?=
 =?us-ascii?Q?DGmXGvgZf4OWIMAA21pYgMuL4tnSVo1/JH8ibWOnlW/YCa4zzVWNcFcUL+zd?=
 =?us-ascii?Q?FLHmpDjOuThLXlDueKXVCoY5xxq40Y8LY8CqeSisBnYahVDLg7gGiPO9oi9C?=
 =?us-ascii?Q?DjzVS38VS89hGClimeTiN344gpiq+2WCgdnbBcKWj9v9vODYINMx2dmgL/fF?=
 =?us-ascii?Q?KcbECc5w5aKBHajXQfa/8WMNDLsbt0VOl9ww4wt9W9lgvdgLLqTpaDKue186?=
 =?us-ascii?Q?gqH/Z1PK/v9xFUO+xEWqfF4HOuBlsNBFdtE+SQTznXeFd3qyGNcQYkSunCvc?=
 =?us-ascii?Q?XD8E+9W+pTt4xbBQHsuetlDwJsA23daPqlT7i9foSCWhIqj75kfF7szsa7gD?=
 =?us-ascii?Q?Xw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 40e27564-20a3-42fa-ec58-08ddcb6215d2
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jul 2025 10:00:29.1018 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dwkALPZ+koJXPifuu9qJf3luyCLH+vVFPI53DggjjX0DBAYpZkRycTiav0Z7ZG0Vni9LYZfpOucV05911JPaQnLiDcFhkjamKCdw+/bkzcY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7712
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753437647; x=1784973647;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ZuQIsONAhno9Z8WVPM+M85CpCG2l+xuobEJ4spXu5kw=;
 b=B0OMTDPWXyKpe9Qr4abc8eniHCgspuVLh91b15QpGXDL+8Mm6fZ2B07+
 cAarKc2X5ER3spl/jPOQOEYAjK63QNpyewMRToDUI5XhS9ZJS9KJs/jhW
 nVsIHoCtVvBta4/7DB0W6OKIIf+3fWViB3WjRYpWFxzzMO0Hk0Oiqa8PC
 gPMqnKmah73kP8WyYCaBmPNnWemlxRLvE5nsD1MRiEMrVnylRNelcgvHV
 T7ATv1ZLjeru+q/glEQHGMuWdlMtey1O0WSfplvpK6SltRSDsQqqe5PHb
 0nCuFqLa8OcjB6sL27ihU89Bi/rsx/OBKuKj0yGPinNMV12friogdwDRc
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=B0OMTDPW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 5/5] ixgbe: xsk: add TX
 multi-buffer support
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

On Sun, Jul 20, 2025 at 05:11:23PM +0800, Jason Xing wrote:
> From: Jason Xing <kernelxing@tencent.com>
> 
> Use the common interface to see if the desc is the end of packets. If
> so, set IXGBE_TXD_CMD_EOP bit instead of setting for all preceding
> descriptors. This is also how i40e driver did in commit a92b96c4ae10
> ("i40e: xsk: add TX multi-buffer support").
> 
> Signed-off-by: Jason Xing <kernelxing@tencent.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 4 ++++
>  drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c  | 4 +++-
>  2 files changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index a59fd8f74b5e..c34737065f9e 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -52,6 +52,8 @@
>  #include "ixgbe_txrx_common.h"
>  #include "devlink/devlink.h"
>  
> +#define IXGBE_MAX_BUFFER_TXD 4
> +
>  char ixgbe_driver_name[] = "ixgbe";
>  static const char ixgbe_driver_string[] =
>  			      "Intel(R) 10 Gigabit PCI Express Network Driver";
> @@ -11805,6 +11807,8 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  	netdev->xdp_features = NETDEV_XDP_ACT_BASIC | NETDEV_XDP_ACT_REDIRECT |
>  			       NETDEV_XDP_ACT_XSK_ZEROCOPY;
>  
> +	netdev->xdp_zc_max_segs = IXGBE_MAX_BUFFER_TXD;

Hi Jason,

nack to this as you would allow fragmented frames on Rx side which is not
supported even with your patchset.

Generally ixgbe needs some love, i have several patches in my backlog plus
I think Larysa will be focusing on this driver.

please stick to enabling xsk batching on tx side.

> +
>  	/* MTU range: 68 - 9710 */
>  	netdev->min_mtu = ETH_MIN_MTU;
>  	netdev->max_mtu = IXGBE_MAX_JUMBO_FRAME_SIZE - (ETH_HLEN + ETH_FCS_LEN);
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> index 9fe2c4bf8bc5..3d9fa4f2403e 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> @@ -424,7 +424,9 @@ static void ixgbe_xmit_pkt(struct ixgbe_ring *xdp_ring, struct xdp_desc *desc,
>  	cmd_type = IXGBE_ADVTXD_DTYP_DATA |
>  		   IXGBE_ADVTXD_DCMD_DEXT |
>  		   IXGBE_ADVTXD_DCMD_IFCS;
> -	cmd_type |= desc[i].len | IXGBE_TXD_CMD_EOP;
> +	cmd_type |= desc[i].len;
> +	if (xsk_is_eop_desc(&desc[i]))
> +		cmd_type |= IXGBE_TXD_CMD_EOP;
>  	tx_desc->read.cmd_type_len = cpu_to_le32(cmd_type);
>  	tx_desc->read.olinfo_status =
>  		cpu_to_le32(desc[i].len << IXGBE_ADVTXD_PAYLEN_SHIFT);
> -- 
> 2.41.3
> 
