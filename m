Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C4AA91808C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jun 2024 14:07:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2BD8F8131B;
	Wed, 26 Jun 2024 12:07:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wjunbXjC-HJY; Wed, 26 Jun 2024 12:07:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AB55781F2D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719403638;
	bh=koeCCVrNfAZJ1ky7c8Kq5n9uXRlTB1YtbpyZkW/pA6U=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mFHwA5kP2LeHK+3yCPVoP4kW0sHxkW8Ss1jRn7eU4vFBART8fhGylThNJ4kcSojVr
	 RtuuBt5rYYzXA53+js4FQhA2ZgoJr8yKCdX/0eVBupBYZo4zimyn9OY6sL8xW5MxZ6
	 bco4h90cp0buOAy00fb2+zWf50rU1zkTZb754O6nNHrA92iSMHTVSgCFTmvS91tpJK
	 8ucXwDmYjWHwgGXuHTs4IqNazprxPrgFDbbeBCo7g6ivrO0bDB1HSRVzGlFIQEiVGd
	 Cm3wFaDx6Y/xWzI5KYiKk/gQiYYYk7/9yDdagsKPs5nfEr2IRk7mGTB2WkOdXJWKF6
	 jyMDfBXiPfJ6g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AB55781F2D;
	Wed, 26 Jun 2024 12:07:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7E9D91BF3F7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2024 12:07:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6956B40BA7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2024 12:07:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nXPqqCyGMje4 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jun 2024 12:07:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D11BF40B97
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D11BF40B97
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D11BF40B97
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2024 12:07:14 +0000 (UTC)
X-CSE-ConnectionGUID: qDL+5FXNQJ2Ofjh/XmCasw==
X-CSE-MsgGUID: ItY5qg/qQFqyUvuurE7osg==
X-IronPort-AV: E=McAfee;i="6700,10204,11114"; a="16694509"
X-IronPort-AV: E=Sophos;i="6.08,266,1712646000"; d="scan'208";a="16694509"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 05:07:14 -0700
X-CSE-ConnectionGUID: ikiS7KbAQI6eJpTlhowSVQ==
X-CSE-MsgGUID: 5aME9BYtQyyThISnevej7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,266,1712646000"; d="scan'208";a="48584756"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Jun 2024 05:07:14 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 26 Jun 2024 05:07:13 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 26 Jun 2024 05:07:13 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 26 Jun 2024 05:07:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fHbyKt9BvCPk3cfNdggTNc7AKqOJixoctMTv2EXavVv/POWrZJLbYsHVSecSHxMnzOsTGYdeBEcknt8UPLL61u7WBpTStei19NKcPjhVC308ikfWQTJt+QqGxvSdJnC3m1z0DIrps0Q9krnsM6fPM6IAWSEKrIArcnJzuIYYkBMyiC8pvBK5R4Ipr+Y/g8BiHt41LNJfyKEWX8W6DiBzrEXIwWZw83hg0DINO+GXUYtY0mq5KgQaDeIdWmLzUGxUTWuAbAxFIjBgEWBhnyzveaRD9hbvmkWVePwv6IyNfjy5M2n5iRDmZMYfFJjDQmlbYHJD4Qe2r21v0CBCXLJ6cQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=koeCCVrNfAZJ1ky7c8Kq5n9uXRlTB1YtbpyZkW/pA6U=;
 b=cE+mRKbsLq1dHwIVJ4Vi6ZV5rJweTaxDLirfEiKiKDOHIGKVQGI7ym1rpz+FeOK3u7gkwJ7tYCstqZaUbLzFshTBi4IDR58uLR0+6ER+RTTSGCkCRJGvFZ4NeuojY4Iw+ze8xYIaGBqs7+tUkqw1rrK7SJF1zoAxCqstSADedneHpfVxzhVM1pSmVacwL+/UlUtFDIN19T/zQGtiWBp5O1eZ1UreZotAV0KRau9VYAV4ZrWgFAs50xXLJT4F6QjS0NqaKq8dRTk3uKhprUqJSYJN/m2UOCEYsIxoAV8wa78DyupKV9bpCVSGSGBxpk3gglu4hvjkqifFBgoPPkIKvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 SA3PR11MB7525.namprd11.prod.outlook.com (2603:10b6:806:31a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.30; Wed, 26 Jun
 2024 12:07:09 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%5]) with mapi id 15.20.7698.025; Wed, 26 Jun 2024
 12:07:09 +0000
Date: Wed, 26 Jun 2024 14:06:56 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Michal Kubiak <michal.kubiak@intel.com>
Message-ID: <ZnwEYJjG64PeJHaE@boxer>
References: <20240624151213.1755714-1-michal.kubiak@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240624151213.1755714-1-michal.kubiak@intel.com>
X-ClientProxiedBy: VI1PR0102CA0098.eurprd01.prod.exchangelabs.com
 (2603:10a6:803:15::39) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|SA3PR11MB7525:EE_
X-MS-Office365-Filtering-Correlation-Id: 6a213f25-0644-44cd-5c71-08dc95d88153
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230038|366014|376012|1800799022;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?9511X9v0dbQTqoFXMAgOozKhWF9LvUL1sYDMeNCvCfYSpVLqkzwV0Ia191Gw?=
 =?us-ascii?Q?ebStx1q8TDml/OScSKKG12vcFnVyo6S9FKpjTH6i47tcmjKeJZGE9Qm47Wbj?=
 =?us-ascii?Q?hSTWSkg8gCsh7hxQvas1sWEjCMaqu3PTUVvFrI+M+hH7ULtrQbrS0f3y0QBB?=
 =?us-ascii?Q?izc2BhEdkGKuaIskBkcv79PPw6GvRqpLLOAhmGS4sYtfcjO2VWVU9VTVbHxy?=
 =?us-ascii?Q?CJvvbB937fXNcpPYjg7p6hJs1MZrT3Ve2VvUttUIVbtI1nt917rHH4r8Yowx?=
 =?us-ascii?Q?gi3gpPonvQvVQkSowChFJ5/cOFUIBBrvDr/O/00yfCf4XR1z2vJ48/arxSgY?=
 =?us-ascii?Q?+LLWXY1h+R4A3A4AKqrfsG+eEvTj7n7QiH9Pm26wxAOHhchSAFsAxo0YxkPv?=
 =?us-ascii?Q?N2XItR+WgVlLX8mYkO9L2ngF4DxF0Lj71e7YmuW9HP6EcaQcm7FFNpWNnxhL?=
 =?us-ascii?Q?wYULfQYKE4t8NhnQAbK/UW6M7Nnm0AqQ6QC9YxCPbJW4mhUD9uJ7GRObH6UM?=
 =?us-ascii?Q?eA9+er7Vuc+7rlPtYedGgkEoNggTl/jY/f2hveEjxeKn/mHW+Zwge/aOws3d?=
 =?us-ascii?Q?MgEy3LF4rDSqoezsIjzja1vGjQPi2PkRBJt1QojwvNdIvmS/vWo+fRdKM0ju?=
 =?us-ascii?Q?gunRb9p3kjrsJttbV1x/mC/I7VzSJqD7df6gCKvKw+RemCyZo9Zt3bV4uudZ?=
 =?us-ascii?Q?Fp+QRwvD6EoFDZSrHKAXuiJa0+5PunKVs4nDMbnJUZLE7PKudZrr6BPtZJAf?=
 =?us-ascii?Q?EJVjr5BkdBu3MGzz56+2eZrNiTB8mzP7X1h0hrUMGebVM5DYbMKul/jlUe/u?=
 =?us-ascii?Q?R3RSWbh1F6HKeg94kj/itPux53YGYHl9pWUMOXQ8X63CbXhRCRtOnEWl4EGz?=
 =?us-ascii?Q?jlQEXY5haxoN+3NObUQxYywtI++d/HqCV0GcGeBPu6q1lDdUbJFsay+dkOsE?=
 =?us-ascii?Q?q4jU/umi8nZIosCEiYpoqWnjCBUkfoPlM+oX39vE+Lay18bQv2x2F8qvUnkA?=
 =?us-ascii?Q?IsdPKMKiaYlN+gMwSe791knr5OXC/IpwSUga1+9ynSitwvqQPydbHAWmdwax?=
 =?us-ascii?Q?B4+IUvXmPqSmXO/VwPGoIkBwmljsHqx945XpdQGW8/SL7dlhfWX7CdZRLUy7?=
 =?us-ascii?Q?/46xohG1yF62wlVHmmVqzg2Iq2jK3LDB1A9G9WjoksSBUetFuT27faJSDjYt?=
 =?us-ascii?Q?Kx6hp/mtzKT68z6wKYzvGA/H9fu1vQRZqJ4lcH4k3OJJHb6TiS7yq51fDqCJ?=
 =?us-ascii?Q?SYZytKyam+swqTAiNMC7S6pEq+pLtRVOlAxKTlr+9GknLBGSWwwy0RQ4hFp3?=
 =?us-ascii?Q?lPQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230038)(366014)(376012)(1800799022); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?e8NAZQhgUqAGRY02z4Gks12sU+CUpi3gP0FRiMx/qRgQyJVsjUix1QAqK5ug?=
 =?us-ascii?Q?ZsADgXJNKTm6cKKfls31x9m8ZG20/+0WlNyP7zNVHaKppDTlWOYsPWirPw2S?=
 =?us-ascii?Q?PkN8BCXOHdQBKda41o2ZICuWSSVVrkG2Hg0CFs5L/BdOWi8BdchqUOWGaeK8?=
 =?us-ascii?Q?r5tWN7jrxYlH8KIFFO0DxyD8jCMpmjNH87wNelC5yqyj8DC6IhRlXdKPCej+?=
 =?us-ascii?Q?0tfpiVyUvFv0/4XKC/r0qElkQhGpJFk6/ovOOqCLdleztTf2rOBcC4jNXdVn?=
 =?us-ascii?Q?kqPCAdlEotjbForI6PHpTP4AZBCMnHzh4dp5WDFHr+8CcypGVAzxgompwfSP?=
 =?us-ascii?Q?pSuu5z3Afh1t4al+NqET/FgBGipLooH6HwyzHvFKiRtwVWL7oaMttaYmmDc7?=
 =?us-ascii?Q?g+cFqeJb30343dWqzwUmBCqrlH5VTNsg/62ikNURgwLZfUeHhgxKLJV57dO5?=
 =?us-ascii?Q?Thy9E4sTDJ+bR+76Vy9FygCWTF6kZ0gNxK49FrUCh/YdBPnhVQZ1hDNwDCt7?=
 =?us-ascii?Q?WbFVP9VN3rFdXw0tLa7fj8TOWED5jUun6WSv6EJpVyJWyrcjA/Fq+vDp5shy?=
 =?us-ascii?Q?9n5pJNhNwErbumqaaEbHrjKXVcuMZhLrbXXAf+cK8gW32IpC/tEXwOL7sRLp?=
 =?us-ascii?Q?IpPlkN3p2v+nXqk0tbp5KwH84eoYkCU30AI8Jjm+m4Nb7+g2Brs5i8IqhTb2?=
 =?us-ascii?Q?l0eYKR3yapvcFnJ1cX8yeHHRRaS6wk0+dX6riZkpdcAqrrXtMcGZ1sGxVlxB?=
 =?us-ascii?Q?FWdifM7gj1E5jSoG0GdOUdAvjAx3xqDvqLiDgl3YZbm2l5/yg0tC4T2nc0fU?=
 =?us-ascii?Q?D0pzCVlDt6cqVMAWS6DDjK6WO7CAwJQUwtY8XuRKrFXR75j5eEo0MIi1NbWA?=
 =?us-ascii?Q?Y9LGi1effrqB1TCB0SU86cGgr5gmVgmBW5y2EY56ilUBGY/wIhwTM2a9WrP+?=
 =?us-ascii?Q?hfZsKm7hzz8ueBt/o9ellc/UJosWDbIrSe0WjeA3xiQExqx/dR8xS5+5m9VG?=
 =?us-ascii?Q?gOfH8FL+ApgDcv2zvMddtxNgNZqjPdkNd0ibzcN7L+977UbQiFXuTPWfQbkN?=
 =?us-ascii?Q?heT54s2vjNc+syf5XsuCBsN+HPkBVpjOHfH347hHmPpDqS0t8m+vCnGzOdMr?=
 =?us-ascii?Q?StIAnyq9BHVxsbPsj5idN1F3IeXIdY3CA9dgP6TMgpc7V3S+YapxcwxUXvV/?=
 =?us-ascii?Q?HvewarBunF8E36M9oXRnhvuiVu7ICUxxMTgflgQwdtFzOPXBTrXvrD2dwu1q?=
 =?us-ascii?Q?1Af+Tu73gcHwH2FwiZ0B1QaqNtDXKoJjZ0MHl2Cp9Pl2MVbGuIRMiUw/IsL3?=
 =?us-ascii?Q?lMLbK5wQbknvrcwjXYgGVxen7rIMqX8RETmXdXDnvPg9wYbOpktteBxasV/p?=
 =?us-ascii?Q?UTZ6Dtz18QbQbroS1Bm9t0b6OYLoxFm6qcek8LSZPrY8DckvV8eUN+RptX/J?=
 =?us-ascii?Q?ypks5AOUAF2KG5KNDRO+664AtHqIjkkVFa5bXkCGFxHdkgGWq3sGjr3pDwTp?=
 =?us-ascii?Q?EZr3AtqE4HuOFngOOCBStTRbV4ZOqxNNVI5M/qp5TEk3r9qF9W4RdtM9qZFf?=
 =?us-ascii?Q?PA5DBAu2u2Uck3l4caRxleJfSy7I5rzoZv0s+89PTkyn3b4eCKu9PSz4NMX3?=
 =?us-ascii?Q?6w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a213f25-0644-44cd-5c71-08dc95d88153
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2024 12:07:09.6069 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: buM8XFDwT/OCUCehDpzc+vZ/8Jc0R5LwiSeB22pXk5/T1vbVJQ0+3umNopP6xIDTJJTaGVvnmMv33e0M/pqGF+5muz2yIRFiJs3XSNtFkZg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7525
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719403635; x=1750939635;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Lnl4BHCwnQmEDei8CLzaOzdDm3OMSYNX9CBGsXgVQpI=;
 b=Ef/fxW3oWDYfstCSzT3WI3nV0brJ5Vf9KQy4Bwchi6m5JC6ohZtDQsYG
 ugOADuprOazbEj0/obXVPIDnucUeD2XIGdJMepo9uOL1YPi1B283tfqj/
 0DX1dtJKH/hWf6ey5WJ3zxVafS9vXlcBuUqMKr5keeFrIlFlFAhjIlVT/
 WBa4EPq06v7mpRn7Sc8rMPVswEDdHSK6eJG08HSTowdcSv2aJ2KU+Bdea
 2zwxogG/TLhd8FD+kuJPF/hljcKbV/XGWhmUd32tLuvMO3Amnf8AFOATr
 r1mXecpZsfuJY9HptmZenGXecqEI+kSrX2WfTSngnNR8nbGqXo6YhJ+1C
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Ef/fxW3o
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] i40e: Fix XDP program
 unloading while removing the driver
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
Cc: wojciech.drewek@intel.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, jacob.e.keller@intel.com, kuba@kernel.org,
 george.kuruvinakunnel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jun 24, 2024 at 05:12:13PM +0200, Michal Kubiak wrote:
> The commit 6533e558c650 ("i40e: Fix reset path while removing
> the driver") introduced a new PF state "__I40E_IN_REMOVE" to block
> modifying the XDP program while the driver is being removed.
> Unfortunately, such a change is useful only if the ".ndo_bpf()"
> callback was called out of the rmmod context because unloading the
> existing XDP program is also a part of driver removing procedure.
> In other words, from the rmmod context the driver is expected to
> unload the XDP program without reporting any errors. Otherwise,
> the kernel warning with callstack is printed out to dmesg.
> 
> Example failing scenario:
>  1. Load the i40e driver.
>  2. Load the XDP program.
>  3. Unload the i40e driver (using "rmmod" command).
> 
> The example kernel warning log:
> 
> [  +0.004646] WARNING: CPU: 94 PID: 10395 at net/core/dev.c:9290 unregister_netdevice_many_notify+0x7a9/0x870
> [...]
> [  +0.010959] RIP: 0010:unregister_netdevice_many_notify+0x7a9/0x870
> [...]
> [  +0.002726] Call Trace:
> [  +0.002457]  <TASK>
> [  +0.002119]  ? __warn+0x80/0x120
> [  +0.003245]  ? unregister_netdevice_many_notify+0x7a9/0x870
> [  +0.005586]  ? report_bug+0x164/0x190
> [  +0.003678]  ? handle_bug+0x3c/0x80
> [  +0.003503]  ? exc_invalid_op+0x17/0x70
> [  +0.003846]  ? asm_exc_invalid_op+0x1a/0x20
> [  +0.004200]  ? unregister_netdevice_many_notify+0x7a9/0x870
> [  +0.005579]  ? unregister_netdevice_many_notify+0x3cc/0x870
> [  +0.005586]  unregister_netdevice_queue+0xf7/0x140
> [  +0.004806]  unregister_netdev+0x1c/0x30
> [  +0.003933]  i40e_vsi_release+0x87/0x2f0 [i40e]
> [  +0.004604]  i40e_remove+0x1a1/0x420 [i40e]
> [  +0.004220]  pci_device_remove+0x3f/0xb0
> [  +0.003943]  device_release_driver_internal+0x19f/0x200
> [  +0.005243]  driver_detach+0x48/0x90
> [  +0.003586]  bus_remove_driver+0x6d/0xf0
> [  +0.003939]  pci_unregister_driver+0x2e/0xb0
> [  +0.004278]  i40e_exit_module+0x10/0x5f0 [i40e]
> [  +0.004570]  __do_sys_delete_module.isra.0+0x197/0x310
> [  +0.005153]  do_syscall_64+0x85/0x170
> [  +0.003684]  ? syscall_exit_to_user_mode+0x69/0x220
> [  +0.004886]  ? do_syscall_64+0x95/0x170
> [  +0.003851]  ? exc_page_fault+0x7e/0x180
> [  +0.003932]  entry_SYSCALL_64_after_hwframe+0x71/0x79
> [  +0.005064] RIP: 0033:0x7f59dc9347cb
> [  +0.003648] Code: 73 01 c3 48 8b 0d 65 16 0c 00 f7 d8 64 89 01 48 83
> c8 ff c3 66 2e 0f 1f 84 00 00 00 00 00 90 f3 0f 1e fa b8 b0 00 00 00 0f
> 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 35 16 0c 00 f7 d8 64 89 01 48
> [  +0.018753] RSP: 002b:00007ffffac99048 EFLAGS: 00000206 ORIG_RAX: 00000000000000b0
> [  +0.007577] RAX: ffffffffffffffda RBX: 0000559b9bb2f6e0 RCX: 00007f59dc9347cb
> [  +0.007140] RDX: 0000000000000000 RSI: 0000000000000800 RDI: 0000559b9bb2f748
> [  +0.007146] RBP: 00007ffffac99070 R08: 1999999999999999 R09: 0000000000000000
> [  +0.007133] R10: 00007f59dc9a5ac0 R11: 0000000000000206 R12: 0000000000000000
> [  +0.007141] R13: 00007ffffac992d8 R14: 0000559b9bb2f6e0 R15: 0000000000000000
> [  +0.007151]  </TASK>
> [  +0.002204] ---[ end trace 0000000000000000 ]---
> 
> Fix this by checking if the XDP program is being loaded or unloaded.
> Then, block only loading a new program while "__I40E_IN_REMOVE" is set.
> Also, move testing "__I40E_IN_REMOVE" flag to the beginning of XDP_SETUP
> callback to avoid unnecessary operations and checks.
> 
> Fixes: 6533e558c650 ("i40e: Fix reset path while removing the driver")
> Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
> 
> ---
> 
> v1 -> v2 changes:
>  - simplify the fix according to Kuba's suggestions, i.e. remove
>    checking 'NETREG_UNREGISTERING' flag directly from ndo_bpf
>    and remove a separate handling for 'unregister' context.
>  - update the commit message accordingly
>  - add an example of the kernel warning for the issue being fixed.
> 
> See:
> v1: <https://lore.kernel.org/netdev/20240528-net-2024-05-28-intel-net-fixes-v1-4-dc8593d2bbc6@intel.com/>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 284c3fad5a6e..310513d9321b 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -13293,6 +13293,10 @@ static int i40e_xdp_setup(struct i40e_vsi *vsi, struct bpf_prog *prog,
>  	bool need_reset;
>  	int i;
>  
> +	/* VSI shall be deleted in a moment, block loading new programs */
> +	if (prog && test_bit(__I40E_IN_REMOVE, pf->state))
> +		return -EINVAL;
> +
>  	/* Don't allow frames that span over multiple buffers */
>  	if (vsi->netdev->mtu > frame_size - I40E_PACKET_HDR_PAD) {
>  		NL_SET_ERR_MSG_MOD(extack, "MTU too large for linear frames and XDP prog does not support frags");
> @@ -13301,14 +13305,9 @@ static int i40e_xdp_setup(struct i40e_vsi *vsi, struct bpf_prog *prog,
>  
>  	/* When turning XDP on->off/off->on we reset and rebuild the rings. */
>  	need_reset = (i40e_enabled_xdp_vsi(vsi) != !!prog);
> -
>  	if (need_reset)
>  		i40e_prep_for_reset(pf);

i40e_reset_and_rebuild() is decorated with this __I40E_IN_REMOVE flag
check and bails out early but not i40e_prep_for_reset() from what I see.
__I40E_RESET_RECOVERY_PENDING is set in i40e_remove() and that's what
i40e_prep_for_reset() checks. So after all, looks like flow you are
addressing will take care of BPF resources only, which is what we wanted.

Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

one side note is that these flags are a nightmare, but let's not touch it
in this change.

>  
> -	/* VSI shall be deleted in a moment, just return EINVAL */
> -	if (test_bit(__I40E_IN_REMOVE, pf->state))
> -		return -EINVAL;
> -
>  	old_prog = xchg(&vsi->xdp_prog, prog);
>  
>  	if (need_reset) {
> -- 
> 2.33.1
> 
