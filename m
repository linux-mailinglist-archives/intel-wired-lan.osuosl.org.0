Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CEAF9A3E44
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Oct 2024 14:24:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 48761605FE;
	Fri, 18 Oct 2024 12:24:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bdZnAEy9KYBl; Fri, 18 Oct 2024 12:24:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5B4C36063A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729254241;
	bh=y97pD0Y2tbdLRLnWX3umJfCs0tjKo4rSnbcYhW+6B38=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bCKzLU61jHPzmALFJMEg4iQoS0Y2eRnlEzTBrmxHKJKmEWzvfgbRw3k4HTfvWtdFq
	 hFxIiS0JDuCQxiDJpven+aNJiCVeGhwPIwxQLszz+oNcCWn/hKbC8WZfdE/s7G5GWg
	 rE5OtMhp8BameirKraOYP4WHs8zq/hZezrr38BwuagZR3aMEmGJcrZFLxznvEEHFt6
	 pWBgBhW5VwQJB6FgPlKRj8EyG2Suuu7V2zNEPTtRfQzICxx4zw4MTjBegb9ZM/3sqI
	 YsESbty0OhAHkfaMlk7G8DYlBqMw98VRM5tIs37n8VaOy9ef0MHXIm8GFo4OLaQOS9
	 b1DiXGIoB3l7A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5B4C36063A;
	Fri, 18 Oct 2024 12:24:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 01FDC2804
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 12:23:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E2C824090D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 12:23:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GSFB0_TaOiFm for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Oct 2024 12:23:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A4BD1404EB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A4BD1404EB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A4BD1404EB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 12:23:56 +0000 (UTC)
X-CSE-ConnectionGUID: nDOSr1vvRAaBIlx/EpCcsQ==
X-CSE-MsgGUID: 3I95NN8MQJ6aDjcumEb6Dw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="39325736"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="39325736"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 05:23:56 -0700
X-CSE-ConnectionGUID: 53wtSxmwRH2ihY3vDEROVQ==
X-CSE-MsgGUID: bnKhBlxHQDaODDcHzQFn5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,213,1725346800"; d="scan'208";a="79276228"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Oct 2024 05:23:56 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 18 Oct 2024 05:23:55 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 18 Oct 2024 05:23:55 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 18 Oct 2024 05:23:55 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 18 Oct 2024 05:23:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cITz5wokfirFI69PY4STadVJCurYe6YUqlwiL0rtu96RYAUKm55qAeAsGdQND6wBBJIgiE82hy1K/kkQX7aA7nai9TcDN7yMVDfDn0isdiHf84srRbMUU2ySiLHAeC6Y1t9GCLAXnJWLbTc8Hp/qZHuGWEmlqlnKvgcpDuTw6Qahgpr2Ur2F9S1HEXPUwlDzcUqabEjP4BzDE/wi8qjNNX7j9XDWaeGlJobxewNsfYDrlmExpSAqD6ymKSXnSVNwDhK55O04TPegtQYema0ZvEd1cY7K6M9WytnTnKdvsnaHib38mWPEAYoChwqnS+dUK9xXsdQcs10KESX8J5LSkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y97pD0Y2tbdLRLnWX3umJfCs0tjKo4rSnbcYhW+6B38=;
 b=wLIXsEdUmwfSvGFvDEa20Drz9ia50a5RVZ9yz0La+E3mQhQqNZEU1LBdyZSDMuhCqUs/DPkyCiJF7oSc62Oc/MFDpdYMY7lRMbqicaIkir7Y7+zsaY3gUFBAqgAlMThW6K/uDR0wcRm4GeIdT8aTAsAslBkdv0cd2Spb9frUJC87Q1/fOxdBI+ujFNiygasZiHRpudDJvGuxl3l8QaXq78YJ1Dxj2y06i0UBQ8TVqwFaHibeGtr6OrD8oc4Cj5kshZfaexBJjzuyxeSIrmEOyFiA0xHPAN2LNBwwpPtEUAc9VNyG6AZJFsU9qDNUMQc34DY+KFuO27RKM0eNRtqBoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 DS7PR11MB7860.namprd11.prod.outlook.com (2603:10b6:8:e9::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8069.18; Fri, 18 Oct 2024 12:23:52 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%5]) with mapi id 15.20.8048.020; Fri, 18 Oct 2024
 12:23:52 +0000
Date: Fri, 18 Oct 2024 14:23:44 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Yue Haibing <yuehaibing@huawei.com>
Message-ID: <ZxJTUKmZBAktfWik@boxer>
References: <20241018023734.1912166-1-yuehaibing@huawei.com>
 <20241018023734.1912166-5-yuehaibing@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241018023734.1912166-5-yuehaibing@huawei.com>
X-ClientProxiedBy: ZR0P278CA0135.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:40::14) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|DS7PR11MB7860:EE_
X-MS-Office365-Filtering-Correlation-Id: 50805b58-a789-4602-14eb-08dcef6fba4c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|7416014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?QKvDD/g24VVHnPtxwfePRXEANAXkb9DbtcgzNBA5Mkso+9yR5G2w4cSAFyk7?=
 =?us-ascii?Q?iyuRppURqZdAnTIuYDGPCvW+Fw9G3j2E591tMkPq+8DBhCgsdzLy0EAecjqu?=
 =?us-ascii?Q?yrlZh9jV4TUZNpk9n3IVso17EN+aFASVzL3Y509EIp57DsiDcsJqy7Ah1j/z?=
 =?us-ascii?Q?yp2pbz10feENHrt1oXlVP9NXszagtSwl9NTRZn8oXB0dseMY28ZhVFUpQXUr?=
 =?us-ascii?Q?kBOzXl4T9rgeZjRapT0gHy5F5+xLPj0S1GeVCXRu63mgv59BRMJhTEsptiKz?=
 =?us-ascii?Q?O58kGbYq4ebuOtqIyHAO9JOKAVDMUkWljSLBkkznTECOq9eD9V5LrDzyjyWZ?=
 =?us-ascii?Q?TDcHsXun5MsQf52gC6zhASL6CAugKyt/OqfeB/uUZaXfdJ1yu4c2ndTFGB7J?=
 =?us-ascii?Q?PrPjuGDubxrSCb2twRuPeytA687B3ID4fk7iar8GChaAcjBbtDzraFLSWgU7?=
 =?us-ascii?Q?uISuoRLQbuUBA35uram2zpG9ZJ4GMJwMb6t9eENAtTRiOJanB7QlFJGAZy76?=
 =?us-ascii?Q?pq8gKrhiwfl3BP2VUYxcs4224Bu+GwpLC6oLuDWCw9WTAK369vo5qv7uT1fF?=
 =?us-ascii?Q?oCuOVtEoVqdf3iNrmHo9GH+CeAdY0Ee7RMOpeiCnBPHqzsh6nExWeme6TL+X?=
 =?us-ascii?Q?2NGgloXpDe97Lw1vFPyfwyTT+Dqi+qZ6isVOLCCp9uu6YXskJcsIxE50ifMK?=
 =?us-ascii?Q?I0mLP9QqkNkJPODpFIorcQeuuy7vaDKfxR8oK+ojoLFLWwC+Tr6i0oeq9hnE?=
 =?us-ascii?Q?Yinsh+i3mG9zsz6mwnewkVLvaSILR50Nx5bm+WXYyi0PcZQfQcFmeO9LKfod?=
 =?us-ascii?Q?3InCIAVRGUg/gA8jEv1IaMxf7rfhC5F3qq85/gKCb15dLMnw7mukGTxYrmhw?=
 =?us-ascii?Q?cVhc3k67QMbGRQJRzez7pb8OX2y1XC8Yd9NujFEy42vSGd9e7CRJxTvoKPGR?=
 =?us-ascii?Q?gseJ3oJwIaBn+NT2dAan9hGFFxupaRM1hDSXDzCNYxnWOHJF4uKBfGUK2syw?=
 =?us-ascii?Q?eToVrPjdcK2/MuwMZ7W/8WTqZmtx22OOCtcltDIyXuFxknKxkca2j6MWjYNq?=
 =?us-ascii?Q?gjW3Uws7hTQjGMDZebplsNpngC/EUd4hh4egQoN6RH7Fpjlmq3Jyw39TSrLp?=
 =?us-ascii?Q?asrUDfZOpg3RR8AvctI7kyY3VgY5HYu7ZbKbioDtUMlz+iu7PHZw5H7sBMVe?=
 =?us-ascii?Q?qzYWweWOE3jsdLCq9JGDWptHBw6wxwELsEK653GvEQCii/BW563Pxe2Z5mPI?=
 =?us-ascii?Q?ape2mIiZEHfNtmH8DsgPW8IlW24ZWa11ObBFPDy41Bxqfy0peEkyc5tzmqVM?=
 =?us-ascii?Q?+4xQ+64PwVnynGbCi235O3d3?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ccjBCncgCC8Vk0sImYJNoOZWo6F8GVDDmCwA3WnT56ZbhGDPYmKsHvHGCqjG?=
 =?us-ascii?Q?HAXZWFKMD6cJhcm/9A8dSNqkVeMwvpq115s5a3BJOim2dNKyJryv7ttAWPHF?=
 =?us-ascii?Q?ITxKT4kId/i0mWEK/LWmBX88upy8r1QVc4tBQHxC8xUbt616oKwDFjZVd/aq?=
 =?us-ascii?Q?/x3f+ZZSjlT9AYg3O6x8v2HBy6kET/5oEtMIEpKOqt8IqQckYccBa+u9o7/Y?=
 =?us-ascii?Q?JrVkh/3mgr6tCXbslcOwCqR2XlxpvqWDsGGI9bNZLDKXSVpNf4D9gEkPCiDT?=
 =?us-ascii?Q?z6BTBUUl37O4pobrZLmBSIEP3/0o9MbTfXS1Sub4pymh4mYABTYmo0tO2lXG?=
 =?us-ascii?Q?EBzZ5chx77w1vWfhcDh83Ves9o7QT5MgdKd0YWLOXgEKJs3z5GVfArkQURd1?=
 =?us-ascii?Q?gACxjkayqkwKDQcTqTPb1A2XA9ELEXtylT6ng8ZZTLi8T5/bMS67Nqt6LJ1q?=
 =?us-ascii?Q?ha68/70CX5ENqi+lGipdWv2j9D+rjCLCOAC5pwgquOyoK2tC4U9mhrW2+pBQ?=
 =?us-ascii?Q?5IyBaF8WX3tykolbJiDOzR0kjZ74gyvV+QK23VOVyDRh5Xi39G+Ct7pdRpZK?=
 =?us-ascii?Q?/8it0JbtSQl+qeR4R3bYvm8G39DyvMU4ZyVzDtl1XLikgKFkItziROC//XfQ?=
 =?us-ascii?Q?1Ddsg5Vju1LChULtc1/BFRUteabxbLF1zb81Wm4DM3mppgUvElvJ3f+x0JJf?=
 =?us-ascii?Q?rG3RnUtQ9DhdIy05MCAG0qeWPrUBBWoPNmJrbLMgxG7T6ol47VzJ2QdWjPf7?=
 =?us-ascii?Q?6H8ngfOFz4dJXAB+tVOlm4VMYuJsrQ3b4M3m4WcV8Z/X16lpEU9G7+GOze1b?=
 =?us-ascii?Q?lkfcw7Ma+MMdB5Fb9W2m0Femslv64Jk3+ST/PDz7HJiDJQug1LmipgiQjo85?=
 =?us-ascii?Q?4lDvJDfzuTvY1UM9sSnb+XXegCeQrnwfiuEodGCkM2ffKL5njWxDeWWzTpKi?=
 =?us-ascii?Q?Rebr7IMKJHWCWVrL4X/BeOq4ki+OHDzY9MJTfY6qzYK5OZ8j5IVluijqzjwi?=
 =?us-ascii?Q?fnuws9QuPxDNIGuCMGmF9SOjuZNuM5DK8HKmWHpFIYi5s5p+Lu6to133ysXY?=
 =?us-ascii?Q?AY5rWeazKEQGwFVxOk8MF81OZtBPxEgEDDvLMVjkvTJj4hzveiCkAUPp/p9W?=
 =?us-ascii?Q?Ui9nUTtSy+lTgiJKn7QxSCOcs43r7ItPiCHGT0hKyZBknlCfkPx8WDRqSjaR?=
 =?us-ascii?Q?83Xy7FOAXxI6GhAJ/Iwwuhzc9vuNKA+4y5f8xvrWOoOJxsmB0eAa/GqgDUYa?=
 =?us-ascii?Q?Nr77cHPFTW4aeUKkgGOCB4JfKT3XzRU5bfbzXbJq/nwbZ45zqOfsC8Kn7Wf6?=
 =?us-ascii?Q?bZyT5iR3vkjdeCcyM1MWMpvbzmQ/RHQyFQeBX/Hm3fo2P/RJkca6RG+2wIIQ?=
 =?us-ascii?Q?EAl4i1lGeM39bNFIEiRGWBcCnpkXYD9QoghmVj5LTVmJE5sQq13BJW7PIqcP?=
 =?us-ascii?Q?tBF1KtH4yShjLQ4Am6M61QidJpxF+0W5QAXY/XNzJ8UxPXCjTD1VZRuZExmJ?=
 =?us-ascii?Q?CRhGvtHuEUAbW19rHZr8CBTOMlaKjMSPke1bRwtqCJQ60SNMIZgVK2ykR+5q?=
 =?us-ascii?Q?Yh6qIDcs1nNz+Dgn6Wn3crphR+Xmd5uNNrPdU79lct0YpgxvzJKBB5I7qF87?=
 =?us-ascii?Q?mg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 50805b58-a789-4602-14eb-08dcef6fba4c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Oct 2024 12:23:52.7473 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GjBr94w36wMPNnvdpVmvSqArDBCHqKAP7ZMc6rfR2eT/UggCkzi3MIqj3/DR6gwHOxC5mmwPwDx4Wwq347LbvUdkBaHuMXOQ0wR8C3FQfRs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7860
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729254238; x=1760790238;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=zge5e/HnxNdCj2R1ohAopkT1Gnzwf7Z0+Zy0woFh2NA=;
 b=Mp7V3/sCfb34zkgDhoslxvbzBI/CVNMlafHKWMRpciPmeesKd0eQwgZs
 +X8rcAzXlZl7bB/hTk0Kz9H8JrD9dbh0Ccgt4E3W9O5masPGrsMSC7HRh
 y79nbuTRpD3Oi7uIj/tJa52Xo8xU7Wys9RCl58db7UYZCwrwhfckKIjeo
 bsa8TfKI/CZxntePqEeC9ipIhLo4d1oxNWVKxu4CkAx0XJKfuDm0lFdvz
 mvqvFD14eJc5vDYIkjE/tcTBZt2PGm/hR39jeqlrhrzB/7SAvkk4YMnOO
 wFXMu/tJh5dntci5IJxVHcRnUdsK9k7Fu/dhI2twpF9JJFepPrPT8jBFA
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Mp7V3/sC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 net 4/4] ixgbevf: Fix passing 0 to
 ERR_PTR in ixgbevf_run_xdp()
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
Cc: alexander.h.duyck@intel.com, andre.guedes@intel.com, hawk@kernel.org,
 daniel@iogearbox.net, jithu.joseph@intel.com, przemyslaw.kitszel@intel.com,
 john.fastabend@gmail.com, ast@kernel.org, linux-kernel@vger.kernel.org,
 edumazet@google.com, netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 horms@kernel.org, intel-wired-lan@lists.osuosl.org, jacob.e.keller@intel.com,
 kuba@kernel.org, bpf@vger.kernel.org, pabeni@redhat.com, davem@davemloft.net,
 vedang.patel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Oct 18, 2024 at 10:37:34AM +0800, Yue Haibing wrote:
> ixgbevf_run_xdp() converts customed xdp action to a negative error code
> with the sk_buff pointer type which be checked with IS_ERR in
> ixgbevf_clean_rx_irq(). Remove this error pointer handing instead use
> plain int return value.
> 
> Fixes: c7aec59657b6 ("ixgbevf: Add XDP support for pass and drop actions")
> Signed-off-by: Yue Haibing <yuehaibing@huawei.com>
> ---
>  .../net/ethernet/intel/ixgbevf/ixgbevf_main.c | 23 ++++++++-----------
>  1 file changed, 10 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
> index 149911e3002a..183d2305d058 100644
> --- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
> +++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
> @@ -732,10 +732,6 @@ static bool ixgbevf_cleanup_headers(struct ixgbevf_ring *rx_ring,
>  				    union ixgbe_adv_rx_desc *rx_desc,
>  				    struct sk_buff *skb)
>  {
> -	/* XDP packets use error pointer so abort at this point */
> -	if (IS_ERR(skb))
> -		return true;
> -
>  	/* verify that the packet does not have any known errors */
>  	if (unlikely(ixgbevf_test_staterr(rx_desc,
>  					  IXGBE_RXDADV_ERR_FRAME_ERR_MASK))) {
> @@ -1044,9 +1040,9 @@ static int ixgbevf_xmit_xdp_ring(struct ixgbevf_ring *ring,
>  	return IXGBEVF_XDP_TX;
>  }
>  
> -static struct sk_buff *ixgbevf_run_xdp(struct ixgbevf_adapter *adapter,
> -				       struct ixgbevf_ring  *rx_ring,
> -				       struct xdp_buff *xdp)
> +static int ixgbevf_run_xdp(struct ixgbevf_adapter *adapter,
> +			   struct ixgbevf_ring *rx_ring,
> +			   struct xdp_buff *xdp)

ditto

>  {
>  	int result = IXGBEVF_XDP_PASS;
>  	struct ixgbevf_ring *xdp_ring;
> @@ -1080,7 +1076,7 @@ static struct sk_buff *ixgbevf_run_xdp(struct ixgbevf_adapter *adapter,
>  		break;
>  	}
>  xdp_out:
> -	return ERR_PTR(-result);
> +	return result;
>  }
>  
>  static unsigned int ixgbevf_rx_frame_truesize(struct ixgbevf_ring *rx_ring,
> @@ -1122,6 +1118,7 @@ static int ixgbevf_clean_rx_irq(struct ixgbevf_q_vector *q_vector,
>  	struct sk_buff *skb = rx_ring->skb;
>  	bool xdp_xmit = false;
>  	struct xdp_buff xdp;
> +	int xdp_res;
>  
>  	/* Frame size depend on rx_ring setup when PAGE_SIZE=4K */
>  #if (PAGE_SIZE < 8192)
> @@ -1165,11 +1162,11 @@ static int ixgbevf_clean_rx_irq(struct ixgbevf_q_vector *q_vector,
>  			/* At larger PAGE_SIZE, frame_sz depend on len size */
>  			xdp.frame_sz = ixgbevf_rx_frame_truesize(rx_ring, size);
>  #endif
> -			skb = ixgbevf_run_xdp(adapter, rx_ring, &xdp);
> +			xdp_res = ixgbevf_run_xdp(adapter, rx_ring, &xdp);
>  		}
>  
> -		if (IS_ERR(skb)) {
> -			if (PTR_ERR(skb) == -IXGBEVF_XDP_TX) {
> +		if (xdp_res) {
> +			if (xdp_res == IXGBEVF_XDP_TX) {
>  				xdp_xmit = true;
>  				ixgbevf_rx_buffer_flip(rx_ring, rx_buffer,
>  						       size);
> @@ -1189,7 +1186,7 @@ static int ixgbevf_clean_rx_irq(struct ixgbevf_q_vector *q_vector,
>  		}
>  
>  		/* exit if we failed to retrieve a buffer */
> -		if (!skb) {
> +		if (!xdp_res && !skb) {
>  			rx_ring->rx_stats.alloc_rx_buff_failed++;
>  			rx_buffer->pagecnt_bias++;
>  			break;
> @@ -1203,7 +1200,7 @@ static int ixgbevf_clean_rx_irq(struct ixgbevf_q_vector *q_vector,
>  			continue;
>  
>  		/* verify the packet layout is correct */
> -		if (ixgbevf_cleanup_headers(rx_ring, rx_desc, skb)) {
> +		if (xdp_res || ixgbevf_cleanup_headers(rx_ring, rx_desc, skb)) {
>  			skb = NULL;
>  			continue;
>  		}
> -- 
> 2.34.1
> 
