Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 68ACCAB17A5
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 May 2025 16:46:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0E88F80E42;
	Fri,  9 May 2025 14:46:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UfF0tGE7udtv; Fri,  9 May 2025 14:46:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6175480EFE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746801963;
	bh=FVORdIedFzGXMTTMnbm1a3FZDf/UIkwBKwG2l+Emqr8=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=eAVthespWohZyi0+U5geVDAi2s5zPuRb1O730wEQ6T6bkUrp17bsBvKZvR+0DOOFb
	 Sliz0n6ypdSt3u3rRKWn19vAas4QgqASUcpX8XP0Y+UxYAZjYXxZFYvjW5/NgEMw5w
	 dTAtG/CvYVM4dtvtrfYnQvxeqh4jXerc24rL9NHTD9Eq5XLioIYkuLdOnPhyYDlV+N
	 1jJpSxe9FS1oPRbCF73MtllkH3maVFVya6qTvuBUvLbYacsVDSOy8rsHsgTBFXiek3
	 O+kGjrdbM3jEeNH6sPJaFXCo8IX89IC7yX1l12OX4QdX0PppVJWeWXHulCa4BtT1qx
	 O27MKCwofrLSg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6175480EFE;
	Fri,  9 May 2025 14:46:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 757D115A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 May 2025 14:46:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6716A80E42
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 May 2025 14:46:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v15ddr6xLzQs for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 May 2025 14:46:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=michal.kubiak@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8FB7C80E29
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8FB7C80E29
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8FB7C80E29
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 May 2025 14:46:00 +0000 (UTC)
X-CSE-ConnectionGUID: 3i5jLhBWRQODbwXV1AZPxA==
X-CSE-MsgGUID: Rkyeez/ySfG3WIKCUo1+Pw==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="48713437"
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="48713437"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 07:46:00 -0700
X-CSE-ConnectionGUID: 2iE4eRggSkqlnDpoPZjleQ==
X-CSE-MsgGUID: epRRLYfVS9mX+TOnU8wLXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="141747609"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 07:46:00 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 9 May 2025 07:45:59 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 9 May 2025 07:45:59 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 9 May 2025 07:45:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nOtk1h81nNJhpCxI/2XCC6R/IYwYMBNbMEdCiMH1pT0t3D/jN/0S4BSWM0AsV8qFrCrDp1thfSFGXGVM2KapjAajIBbpRdDxBctIK0WeNzgv66roQT0/z3NXYFD5GS3ElvPzDN92uEFiQ/YclSNuuE3lvgsdYaPi/E9u4PAx5z/TScLnbt/s/P5Y7KzKe6Xsu0wlVkagO/z58IfE9o5ZX85yfjJOiGus7biJZk137wIbYxO8E5v4x3Cc6oxUfi2hQQWb537dbsl82U6TS2dH4AUApwSH9QZjcSwdVr7E4ClLH3udFAb07alhhL/cXntsE0IcfCqTf9SE+t40lbQlZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FVORdIedFzGXMTTMnbm1a3FZDf/UIkwBKwG2l+Emqr8=;
 b=v3viJyo4n6y7cUrxIRLSM03sJTJcrBjOwTUvB+Y3FSLgqsTxrVO+1WbxiVmxYDTiIQWXKIYWdiuAlH2LvfCjmIfpG4jJYz9xl9Jb+PATbIFUmdXQBNBZFZdfoESa3FqmsnuyrxHv84Nc+l+gJto0Vffu/6Aicq4qIgGrWNpbzQo/m77B8Ni+9KSbWgcBoxV0lyN2I9IsnmcTcbOG1KCkWNqyKXMSzZ0RMW7/csFEk1huZPXjG5BrhzP3m3Mi5JCU9gEHPy3M4Vaw4ch3EcvezDyC7VFiP2KEe6cs4RxNYBWM1MR3S8HEMD1RvET5pRvRdjOGTbREgKyppiLJ12ak4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8665.namprd11.prod.outlook.com (2603:10b6:8:1b8::6) by
 PH0PR11MB4774.namprd11.prod.outlook.com (2603:10b6:510:40::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8699.26; Fri, 9 May 2025 14:45:12 +0000
Received: from DS0PR11MB8665.namprd11.prod.outlook.com
 ([fe80::8e7e:4f8:f7e4:3955]) by DS0PR11MB8665.namprd11.prod.outlook.com
 ([fe80::8e7e:4f8:f7e4:3955%5]) with mapi id 15.20.8699.026; Fri, 9 May 2025
 14:45:12 +0000
Date: Fri, 9 May 2025 16:45:01 +0200
From: Michal Kubiak <michal.kubiak@intel.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
CC: <maciej.fijalkowski@intel.com>, <aleksander.lobakin@intel.com>,
 <dawid.osuchowski@linux.intel.com>, <jacob.e.keller@intel.com>,
 <jbrandeburg@cloudflare.com>, <netdev@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>
Message-ID: <aB4U7TBtr75ouKzi@localhost.localdomain>
References: <20250509094233.197245-1-michal.kubiak@intel.com>
 <20250509094233.197245-4-michal.kubiak@intel.com>
 <a214afa6-e9d7-4152-9b43-146cf7ce0076@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <a214afa6-e9d7-4152-9b43-146cf7ce0076@intel.com>
X-ClientProxiedBy: VE1PR03CA0022.eurprd03.prod.outlook.com
 (2603:10a6:802:a0::34) To DS0PR11MB8665.namprd11.prod.outlook.com
 (2603:10b6:8:1b8::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8665:EE_|PH0PR11MB4774:EE_
X-MS-Office365-Filtering-Correlation-Id: 0295a853-f8b7-44e1-d3dc-08dd8f081a43
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?CLeO0e3n3XiC5zp8ggaN4zzyZqlB+wZssMnKwnkdCzPXg4LU6w/e18ACLkuQ?=
 =?us-ascii?Q?nDrEfc9fikUTUSIwKuWZwLQ+nfAJdRD26SlkPAxmy711lb/DeOspNnFTy4Mv?=
 =?us-ascii?Q?i7vgk8sQyElx0c9qqWhaory7VYTU9G1Sfmy1mDe+XM4lCRTJo4QSHJZamUEY?=
 =?us-ascii?Q?ZCMzpfALC9SbhzOOOlDNYWbQIn3wlECHOQRYucEnV3U+wPu9oZt4CDny+f6M?=
 =?us-ascii?Q?gsuDRr6q8rZz7go7SlRXQ/ZGdNWUSnQePT0YTY/0ZelMeaQstO21k/rQjDAP?=
 =?us-ascii?Q?uTEJsu1eIjm7dNOG9h7aGD+/Vu7ry7a32yzOF4WRrzTBO86jjqy5EHPtvMdS?=
 =?us-ascii?Q?pMdfImOmmlDX48PYUJhalYbRiBD/8dfmTBEwxNZ5S0a1V4T0gbeA6H43NYnD?=
 =?us-ascii?Q?wq7uAuqhh9nLCfme8RRzZZWLva1l2FIE9Z7e+NwZ40bg5gYjBHqJTwfVchi0?=
 =?us-ascii?Q?/42qetPeZbJzNDpyswSI3wJpPXZGsHkqERapVgGTTb3Fg6ofzY1FbYwarhNa?=
 =?us-ascii?Q?P8Ix+6pYwZ/QE+Hru9eRTZPv5uVzNZCWDWa6T9ycQJGm56m0Hz50uflvJmuX?=
 =?us-ascii?Q?B1NO/hkUk0KNf1cxLmu1JzZJNsJhyQrdrcI+XX7Ir+jTlRHvdMSaDXN+KRqp?=
 =?us-ascii?Q?MNJsyFc1WxtM5xgEs8o+ckcOuHb4XSlaDxY1Qa8Pi/i4qHQ1e7cfDNu9JWJi?=
 =?us-ascii?Q?UuQt/wtKeBmg+fWBWLhAOayHRh4MU+m8DVriTphCW5VqraGnLZrBByfjVJzG?=
 =?us-ascii?Q?Y2VhsDJVF/aP3PYSA1MGyoL6WX5SqU7xQv4meSbmc2rM/S785ctnXPlKYGTh?=
 =?us-ascii?Q?DINbtN9HQmOMYFc0DA+lnMwVi/chtv6rOQ6D5kf6gf51jKfq5cBA1vNB8q7f?=
 =?us-ascii?Q?TKAr1mR3SqkX32Es+ILsB/ZJKB8aGKQyz+hbxwobEHMIQlAtjYaF+vOP7vIK?=
 =?us-ascii?Q?Ab970wVe9io447Qhy6/8MTt85x7u1l1e45PR/0eqeQw2o5AXRvEI83akvZEJ?=
 =?us-ascii?Q?O9kezhnIK1T9jlJJNUTDeosnZG3ki7RdWkZALoOdlXwx/h3Y5o6wifZ099Ey?=
 =?us-ascii?Q?7jsc3QszaTLsn3QN3H3hAY6sOOmZcfG+lcXrMUD/1az5j1uhlXRbxeVo94H+?=
 =?us-ascii?Q?t2NmeDyFJHDSA3yAvuNGulOIIMeX32uLHcrxAO+sAs1Z5lGxsEYou0/m/gWk?=
 =?us-ascii?Q?nGmWaz0d2pqSXN7y5Rbxe7IrtPVfvf5Ae1Wqsghx5I/1Ox2sK2dWD5dDrwpG?=
 =?us-ascii?Q?eZ2BR6DqTkt4uKxcXhKgr7n0nd1VfinMr/Wg1xmMvq5pWt/A8Kb4LAQCYf8k?=
 =?us-ascii?Q?k1xnx2nUFdI/1mImzO4hjeCQdjpGx/CwjtfWzKMPlnmZDSwevdNUsOVKE/2W?=
 =?us-ascii?Q?tSutoFBX/62TG32VOxDo+DsQiDnLQvjX1Xw5z53e6C91eTO7D7BTJO6V0w8x?=
 =?us-ascii?Q?YpqsrqmeomQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8665.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+0ABj3FWAaWKqgMDli82fNodmBwn1eBAIH7pTaTgc5mV3sS0MqDe3jHCfpZH?=
 =?us-ascii?Q?SmDWRxOcBXY5Rm5jwz26F9LuFlLHZWqsFf5tBrzR+B3lxuKwXSNWsChy0yUk?=
 =?us-ascii?Q?F9TxfEeoYgGaQaOzK2tnmld20ho1kDFomzQGlZ4i26eFKtv/xyDuUu07WSWT?=
 =?us-ascii?Q?Hd9aSKk/JqaI0+TgZnJXyCnO/cnOXqBbTt8ENf5kKp/VldK9lVzUEy70ldsl?=
 =?us-ascii?Q?kNEaRu3NvSduu6Lj63EJ59RRXhFR5fxBtsl0G8cZIzgNPHpT1GdjNZGkk+BD?=
 =?us-ascii?Q?9TFDPaYBs30ZkQUgBCkc9Q46JQOJcLZrzJwY5NSS+ZbkBjm6HGcEaxFGIw/p?=
 =?us-ascii?Q?P7lWKaxOd43LOAG90rvEzCMYLUQHX2Lru2V0NsqyFhNNvQcn46LKoS4sZxrm?=
 =?us-ascii?Q?T0PrcvARjdOdqgGniUqZFYtCCWfs4FUI1CmUeXrZgkJfn8IvU1Q20wtkWN8U?=
 =?us-ascii?Q?p8h4FL/u6gjE+e14c+3ZFzkiYkeJaNtEGcIp33XT4i6EtFFgMPJbj1UYvhQl?=
 =?us-ascii?Q?LwYv3C3r20irSlJJVDUs1UeLDfs2Mni15TM8sURaizUikQpLQeZ8GyTUkzlH?=
 =?us-ascii?Q?p4Zu4GuY4xpbYYBSlCs2wWBxgXKUVrCdEqJ3q/C5zalhE7lotBzEjTxMzcNR?=
 =?us-ascii?Q?YI5xS+9tIlrMGMNajm6nPbEtzgFKsAyKhInbNm0Xa1Iu9bpsG6SylqVNS5Zh?=
 =?us-ascii?Q?5D24GkYAM2vJhfQ6w2t34z9zt2gdHX4S3A1i3yAy1c40NR5xIMOo/4akAz52?=
 =?us-ascii?Q?7ugZOeQzSiGY5ULnfaLRqdunwXJXOedxj8OVHW2FbS39WfVbgqUGSElApBe9?=
 =?us-ascii?Q?zf0XBmGNhKRE+BedBb72dA4PZrqL9GgY59ZvrJf+QrHb+kNgWz8YcZ0MljlK?=
 =?us-ascii?Q?K0zapwpl/7CcIS5WBJKD+M3GtAxofoisAaJOH1SL4CWs81Z4xVAovXgOr7ee?=
 =?us-ascii?Q?PwDMc5XOgCbKn4KRPwERZy8xoPfxVUtz2mD7CQrfFv79f2WQFCNLbvRo15PV?=
 =?us-ascii?Q?VIyEBZ5FQe+jCg5pqRYV9QMSDAqfBBrYjC1S1j5/tvSQ3cmZ9R4aHfoxIjlA?=
 =?us-ascii?Q?gSbwcjSdPIipJMEeqZdoaUsUUUolW2S86LdaZaoVTR8HOoPMfCy/X6QmylfN?=
 =?us-ascii?Q?tEU3eBvP5y4LS7RgUgglLMZRplowvdZ2ef7kE+sfSKNzdZVqnjBFaKjSIR05?=
 =?us-ascii?Q?9eGAGTJt9isoOpIlH7erqNWKU4p7bDlRAstbaSYbzkHEUu6EI5ZtbVDK4yGx?=
 =?us-ascii?Q?j8FxCtFCjEgKkBisjvEAfAH4H8wnXWHv1FkX1QgQEJk8ApP8gegYlN4vG+ZZ?=
 =?us-ascii?Q?F+knaHfNTMzx+k+3RLnOEquCU8BXKhoXEMhpaCjXJmegx/ARNadW/Cmr+Gl5?=
 =?us-ascii?Q?Q6BUbTOkwQ/XmuL8+Ql7hmswYNhFj7xjGlqQsqTtZbRyyP+GsUGCTlTljr1K?=
 =?us-ascii?Q?UL+sNxq9MRbyhyuJV7vC5PpmldxxNbUIW0WRbzLryDJt+0n0GrMSTfQDQaNk?=
 =?us-ascii?Q?MsnTolU8XOM8q8sd/VWqxxeoqdqIYPMs22tQ738yqKMsJULO5TRIbT3Z8Huz?=
 =?us-ascii?Q?XISvf/VOczu1wZhTHLtsmE6wEhi6fIHHwKWK9+9OCVqum0tkh8v+iiE7ybR0?=
 =?us-ascii?Q?WQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0295a853-f8b7-44e1-d3dc-08dd8f081a43
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8665.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 May 2025 14:45:12.1162 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6MpUTt2uEvmp3i4H/9oVvJ8myPNuXm51VLd0nze3G4Aax6CnTeeX5OxnuayXHxLIuEuihjjmzrt5Os3G1rewIQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4774
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746801961; x=1778337961;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ngarJa3lOcP4bpkXtOQzUpVblZeIODnXnYy5nG1c8ZI=;
 b=QUxefT/ufQ9Re89TmYMwm3sMpgyEfBmuSis3mMARPf1pl8uoUYXe02ml
 d9BqBILj8PtgN98aa4IZv+A9fIwq6Gn5Puo8N/IP/3FffzwCPkEQIbJJf
 NE9RekXLj6idjX+4/X5XxokqNqcpjg5FXcW69KMayEZ8ThHiE2HEgDMua
 dCMDNxLlE+Uclh2dTl67ThKvDjhG4J00ULDO2cSieB5nRENF8EjwShsNi
 KmG0lTm5iHbSlUBvkp8ZiWKoA9n92CCDT2pe8Hlh9Af7LZtbgwpdw1v4u
 9pCQXgB2tIhWB0dIZDfFW6Cc6kwBwmv2lJRMgDOpbkZTXz/RsSo7zhgzv
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QUxefT/u
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 3/3] ice: fix rebuilding
 the Tx scheduler tree for large queue counts
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

On Fri, May 09, 2025 at 03:07:56PM +0200, Przemek Kitszel wrote:
> 
> > +ice_sched_rm_vsi_subtree(struct ice_port_info *pi,
> > +			 struct ice_sched_node *vsi_node, u8 owner, u8 tc)
> > +{
> > +	u16 vsi_handle = vsi_node->vsi_handle;
> > +	bool all_vsi_nodes_removed = true;
> > +	int j = 0;
> > +
> > +	while (vsi_node) {
> > +		struct ice_sched_node *next_vsi_node;
> > +
> > +		if (ice_sched_is_leaf_node_present(vsi_node)) {
> > +			ice_debug(pi->hw, ICE_DBG_SCHED, "VSI has leaf nodes in TC %d\n", tc);
> > +			return -EBUSY;
> > +		}
> > +		while (j < vsi_node->num_children) {
> > +			if (vsi_node->children[j]->owner == owner) {
> > +				ice_free_sched_node(pi, vsi_node->children[j]);
> > +
> > +				/* reset the counter again since the num
> > +				 * children will be updated after node removal
> > +				 */
> > +				j = 0;
> 
> I know this code is a copy-pasta, but it looks that there is no need to
> reset the counter (whole array isn't reshuffled), just don't increase it
> 
You are right. After analyzing the `ice_free_sched_node()` function, it seems
we should just keep the value of `j`. After removing the child node, other
children nodes will be shifted towards the beginning of the array.

> IOW, would be good to check if this line (and the semi-obvious and
> half-wrong comment) could be removed.

I would prefer to change the code, since I'm touching it.

> 
> you could keep my RB tag, thank you again for the series!
>

Let's wait until early next week to gather more potential comments.
Then I will address it in v3.

This minor fix will not be directly related to the core of the series,
so the v2 can still be used to test the workings of XDP on multi-core machines.

Thanks,
Michal

> > +			} else {
> > +				j++;
> > +			}
> > +		}
> > +
> > +		next_vsi_node = ice_sched_find_next_vsi_node(vsi_node);
> > +
> > +		/* remove the VSI if it has no children */
> > +		if (!vsi_node->num_children)
> > +			ice_free_sched_node(pi, vsi_node);
> > +		else
> > +			all_vsi_nodes_removed = false;
> > +
> > +		vsi_node = next_vsi_node;
> > +	}
> > +
> > +	/* clean up aggregator related VSI info if any */
> > +	if (all_vsi_nodes_removed)
> > +		ice_sched_rm_agg_vsi_info(pi, vsi_handle);
> > +
> > +	return 0;
> > +}
