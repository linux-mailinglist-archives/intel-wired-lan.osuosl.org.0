Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CF481B1B56A
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Aug 2025 15:57:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8F3BA61350;
	Tue,  5 Aug 2025 13:57:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RBSpOiP8scaP; Tue,  5 Aug 2025 13:57:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E19A961AC0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754402228;
	bh=fGvT77r7gN3aS5TcuI4nHpXuMpRSl8M4tdCw72S+NXE=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SGJ5YxVsVQCoAsZavB368EmqA7m7g/kSL+Tw691N6zfxaGXo3DbWDwOB9w2e5QJsm
	 dAx1BjkRxTas6oZTZCHetoKOUIe0EQ0VIDD4W7WfjA2KjUiVXGGnIl7rVwfqyEmUUy
	 nO1XQYNNvYT94vACg4X9jHMo2C+YnjjrMHCL0MzciQTHJmQTxSOVf4fP7q7ut12mQr
	 Uz8Eq6XlCV3/aEmH0TABCQ9DOPjqkAYXEeQ8vJ6I0lusNzxoddCDVO/Tv4IVfnM3eB
	 AQfYGa0DXmTnZGwOtilhudJdj0DX9rOLAYG57ADGktJAUDnh0n07/DnuMu2X300aRy
	 49HJVP9Wwip+w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E19A961AC0;
	Tue,  5 Aug 2025 13:57:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id F40AE12C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Aug 2025 13:57:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D696683EFE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Aug 2025 13:57:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RE2CdbLm-OBQ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Aug 2025 13:57:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B67B483F98
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B67B483F98
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B67B483F98
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Aug 2025 13:57:06 +0000 (UTC)
X-CSE-ConnectionGUID: YwAsBXgkQNG258CAzNpzwQ==
X-CSE-MsgGUID: lgyT8UNZSDePybHhTq2ikg==
X-IronPort-AV: E=McAfee;i="6800,10657,11513"; a="56774407"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="56774407"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 06:57:05 -0700
X-CSE-ConnectionGUID: cejFYcVhRcq2CUdHsRnnfw==
X-CSE-MsgGUID: yDQQ1RPYQvy0ZTpIzRZJeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="164166664"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 06:57:06 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 06:57:05 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 5 Aug 2025 06:57:05 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.54) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 06:57:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wuVZpqy0W+U2RFyXlTjme2dmIfQYj2eXSZUqmMUaJz07IWYufdC2eLGb4YUtuRm20/SVM5Ylo62X+xCQS6NRXd+HWNURM0SXCBVlXt0ck7NbboTwXdN29bzBmYtJZNO5k8oVnjK1tqXEzWzaf6i5zNgiljIxFLBGaZNnJdN2/oasmbxfwu59U7D3jooV5py17KN80RwTc/tQ4gJuYI7NstWyqlkoT+5Av1TiBGwiBOONSBVrP06sEPje7lTilIm7FsKFCufm4jE4K4WfChM2RO0fo2I4YUZCS2S0v5rvbw7Aci09T4lo+v0SMcN0gSYf5PpGQqyFhI/UjdBMlKqxXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+3ShyUst+1/FS6gNbkK61rzE18yIBkEhCXtR+xImnfg=;
 b=rt/wnko+bRdJu96qp6J3htAIG5skHm4fpnMUbQWdNJuG5pIbRlocYaJQgb0iQnHbAWmGSkuX9g3Q8pKQwZKcypooSh+VBvUBwn7a7oztTcYws+NCY/cXlpD9ndZR5MmltMn6faxuIS5dzkIFhBQOmpBg98uztINRWtkqi5h5x+xbfG2OOPoe5QTUBrALaMUsZNI6V9u1td885gEFfn+b+rqstb5W6HoViToA0zAXRiKHXxWeFSE32hbJXiQweXUesfOmihMM/g5yR0uvQ6ZFwN78GuNB0HyMGpZcsjTLJUHAOnAowyttujrsOtF1INb39da1IOkMzRDNb9lfRYb7vw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 CY5PR11MB6161.namprd11.prod.outlook.com (2603:10b6:930:2a::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9009.13; Tue, 5 Aug 2025 13:57:01 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%4]) with mapi id 15.20.9009.013; Tue, 5 Aug 2025
 13:57:01 +0000
Date: Tue, 5 Aug 2025 15:56:56 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Marcus Wichelmann <marcus.wichelmann@hetzner-cloud.de>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <anthony.l.nguyen@intel.com>, <magnus.karlsson@intel.com>,
 <michal.kubiak@intel.com>, <sdn@hetzner-cloud.de>
Message-ID: <aJINqLIJLoijWVOm@boxer>
References: <20250429155205.1444438-1-maciej.fijalkowski@intel.com>
 <bb545742-8878-4780-932e-4261ae226aac@hetzner-cloud.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <bb545742-8878-4780-932e-4261ae226aac@hetzner-cloud.de>
X-ClientProxiedBy: DUZPR01CA0193.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b6::14) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|CY5PR11MB6161:EE_
X-MS-Office365-Filtering-Correlation-Id: 43a15db8-4665-4c32-261e-08ddd427f39d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?ky1FOPVenmRpBK68TUwZzS7CXF6T9pno6b/3+o/jgMcIfUOohdRX4whHbP?=
 =?iso-8859-1?Q?R1mPxywmfgG3ruhNyss+bvR+JuLazhYp2CniZBBueDhGpg14aSNVM4Zisa?=
 =?iso-8859-1?Q?XaR/USYIUtVZfv+Cv3+SW+btM+QAgRj8FREl5/Mllkfi5lasRqi/TKNutG?=
 =?iso-8859-1?Q?JJoJEcjM/97VDeHhB8KmGMut+Bd6WJoeubMHLPZNEpcLfWzEedcBVRSPv4?=
 =?iso-8859-1?Q?iejwQvbedDC2DSsgawg4NnEe6EejQZzaPB/WgMbVeWlO3/JmHX42N+uHFk?=
 =?iso-8859-1?Q?zfj8Uu63JTLvFY3uqNxWk5BM2JbtXV44KMPK+8Q8B3+c+njPPCjogMq1XP?=
 =?iso-8859-1?Q?vL7zmQBGVLQhpJsHGIRMqSUgtizssoWX9FpYIJqYusunHyAjb+IVT8pb8M?=
 =?iso-8859-1?Q?/efAleMpMA5cjFxOlmZc9SGvX4nSWGaIL+bXC8K0dX/ewPFDsfjOXxAc34?=
 =?iso-8859-1?Q?8DGTFQquuyWMfnh62gQCy/KNDR5vrWlqaKdq2UT4fvTwHH1VIaHk1XXWN0?=
 =?iso-8859-1?Q?qeIvhiQvVIKdJpp/oAKUHBWgcouCjeCR3RhIcrjVCfK4W0FmfhhXSPIyA+?=
 =?iso-8859-1?Q?bMCJsAuk6JkjqlEstowb41iHLpAfFNp7+Ko8e3sR2Cik8UsAn7KHZtW5WO?=
 =?iso-8859-1?Q?arHnUpFoLincu0uKXkQBqSMILywKR52B7YcCTGJ4ZTCvaX1JpvwEO+Z5n1?=
 =?iso-8859-1?Q?xHuE5O+LShrK8Wn28gvpmkpyiP6sAh+FZDiZuD2UPz2lhQQUaohSBFvxdH?=
 =?iso-8859-1?Q?d1vNewY4Y3t58bKnFz7DlIYoL5f/ALwYwo/Sg+hC9Y65pX5PYkHMuYcbJj?=
 =?iso-8859-1?Q?E4EwWr9/S+JjtMBmztLxqTOMJwYMkRC7jZ05R+rAf+KE75DJZwQfJTsqL0?=
 =?iso-8859-1?Q?s82h5T92l28+jBKcJ+LCP0zJPQpQViwUiOfGn1WZnCH0SinzRGc+6ceo9m?=
 =?iso-8859-1?Q?DLtoI68GmExYYCz3lAcWVGPXEtUE+BStZLTAUxJ6UIu6YTiyfIAC0LVPei?=
 =?iso-8859-1?Q?0Kg2mnJ+KXGKLp15TPyt7WtaDxEzm0F5Vnb45QlAaveFO3c30shfqnpgAB?=
 =?iso-8859-1?Q?/tPOc/k+TXL4cKHyf9WzEiiwhlmXb2JLzKrmbTUpzah8ahq4XGc5250Pv7?=
 =?iso-8859-1?Q?QRysMlkj+tRO4VYSfLbHciZXkHqxs+NtT9MbT6cngffnwQ9GcSrdP4YSAE?=
 =?iso-8859-1?Q?OCyjCJs84tf+V6psqThMpdeKatNDiYJrFdkHsYl660BlEfAC6bziLwbeDT?=
 =?iso-8859-1?Q?7U+H2pVc1jgaasPMCCMOpRNbpcD65XZ8QEW/SihJ/cKBz1GbLEHxxP9YB1?=
 =?iso-8859-1?Q?6liE30lk6fTYBU3c7wEVHFaXIaQ3hHAyoqNgUnbMkp6HgxLUgnlgCr1U5r?=
 =?iso-8859-1?Q?wq/p0BL2osk7CLTGM36foOP3BKeXfWgOisTxLQGHjq3apJwDZNmw0EJR4U?=
 =?iso-8859-1?Q?e+ooF0Gl0Cc4sHBH7L5GX1OBUa178Nd6Qh+ZR79NmuNA9bfgLJPSAR6TN3?=
 =?iso-8859-1?Q?Q=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?PEvUsw1LZqLJMViKkimDQbPpmMGdBDz7dAinvQxthwmYGWxYnt0I5Ll2am?=
 =?iso-8859-1?Q?NiNgmboqxA1/QmtF7eGD3afJcbyMs4k4wrs9oANAW5O+LAzX2iXt+yL4NY?=
 =?iso-8859-1?Q?t4OwMD6tjjsNOgiln8Nx0pQ/+n7jgPjV4a7wqnF3pBmsEm9/VQRnR0m4U8?=
 =?iso-8859-1?Q?gUFSGft2x9nSwkSzMx/INVOw2LbLknwKAHred4LTxU9x2rDvh2W/kCmRaL?=
 =?iso-8859-1?Q?Pgxt06Wg6lJGWaFmeLCEAcQdj5uJrbsAkkjSUaLjCXuBfkIdNIkAy6ZhMr?=
 =?iso-8859-1?Q?qMyYrp6O0+Cz+nL6m1V6kelmdLlE82qapHIgXw9N3fT41+NfG94+7sfOPo?=
 =?iso-8859-1?Q?0jc9FF7EEawjNd5+mizsNRFVaPqhFclEncuhwUAQNuParYy1m28epov8sL?=
 =?iso-8859-1?Q?RsKhEMCmODTqFNokLCoYY7HlmCDi4vbs8lNQ6JuN6mcCXw3tULXA+akaT1?=
 =?iso-8859-1?Q?M2FQ2482QKRdOlINy/V0t0f6zKJFild79AMAbl1fknIs84rQWkD6v9Ughb?=
 =?iso-8859-1?Q?xFSvyef/yCs0pBT1QLWynVPyOWqZDy8RniiPUMlIhVXfthzqlUgtcqobJn?=
 =?iso-8859-1?Q?jwiCUdHwukhAbW5GlP7NUsmAiaSZcIsMqu6emrIAm6u4SSmW4ol6NGyqer?=
 =?iso-8859-1?Q?AJXVy3uM0E3NNjSdXq48IHBo9e1sdmz9CHABeBg75AFTUDzFdE+VZ1rtXU?=
 =?iso-8859-1?Q?GQdjOaBRTWVQkzjJ7Ogd6jPha4FxYEDLGe3q2/Lq+iy4/ge7ABXQJXtNTs?=
 =?iso-8859-1?Q?mTvSyE6Gy32LK1la4+SB9wRZlLuxy52MmiKt7Bfm8VC3EXdyPbASDMYjTR?=
 =?iso-8859-1?Q?nQDvPZZ8+HkBNFwBqbaLDTzcAdOCy1OlP1ZnTSkJz6k4Div3KuATmLlfz2?=
 =?iso-8859-1?Q?/HvPFosxrw/Dzeo7i1oZ2rSFZGWor7zjAdWrKJeBIhAbb8bJwhRtAn56ET?=
 =?iso-8859-1?Q?iVcED1nTgeDTkxsAAGgsVDmspw3mIFPNgubLdlqbpTbO2AU3HrTQ2AqPYm?=
 =?iso-8859-1?Q?Dyj0vwpyGpvvlVY3jYEls30h7nGCnrG0CgvVYSWRhfu9SNxkR7+73cqqfc?=
 =?iso-8859-1?Q?psX0UvmT/VHd38STg5k0NKDSQPSPFTCzNjvAA72Z/lZxfv9KbvjkDCN2zS?=
 =?iso-8859-1?Q?lFjq2bhILP0DtJpqiv22V3fJ7erjXkDtLCGH13oCz2We8UObqHXGHwPDWW?=
 =?iso-8859-1?Q?xmkDCIq0fkLlr5BhrxKIY1EPoyJvMT+0/ROelgYfzu/D/dXPSV6qEzdhrV?=
 =?iso-8859-1?Q?aqkwu8avzLRAa2Jkw3pwtskKlU0Q+icB2EPHm1uUeF9wtqjO5wt4yS37Vd?=
 =?iso-8859-1?Q?sOhgQW0Vrbl8bh2FCU2ez0kecprL/Cm7WfrhQMsyLZxObWkl/4j5ia22YH?=
 =?iso-8859-1?Q?OYD7/y8RlwuZpW5oZ3iciH39UMBlGX/xWQ+JjKC6ZrUVnhtzAXg7LylnrZ?=
 =?iso-8859-1?Q?tWbOt+c1SNb2rp3RFInFf05ANqy54XyF+mQ4iSdG05JxP9k9TARSrb5SzJ?=
 =?iso-8859-1?Q?d+YVbJjw+9Vl4mtha91bq+akBf+r+a7VRIN1cmLgr3ZjLr9sg4M6+RitWY?=
 =?iso-8859-1?Q?kEdD+/rCY/fjZCcHZ7nk6WxVoHfAOGkbnjwRdbzH1TTfcQHPFxJVq6zaDj?=
 =?iso-8859-1?Q?ufnxbVqlKxf6w1dwxQuhCRkahS6DG/aO/P8yeVCw2T1K3uFwYqJ4waEw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 43a15db8-4665-4c32-261e-08ddd427f39d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2025 13:57:01.3622 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: U974ioJY/lr2HFDPIG3+ZwuHSwzxV3QfndpLHg/HabfkEWLds6wILYRCuAWXzxV+8ajwhfrZPwPj+Zdj/NYDc8ZHWMjs5YDkAPNDhyvrG18=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6161
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754402227; x=1785938227;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=z5NbuwI0X2pjn+5M7x6lza3EzvWhfFuP8fRUGfUmzK4=;
 b=G98B6oWMEgq6I/Q+LUbs0X5PyP3Nptnj8YextkW4CW0262cT2yX5xK4T
 Vu7PX3owKN7ClnkjRMepG36fF8FvPYD4yUwXUjwHJpob+0E/5UDrnYvQa
 klUmY/xvu+ufoSUQo/bBatbZL6FXqxaFnBJtDRY8iX8v26QysioR5BxqH
 Z9wiT01VB6XGE9iAYud+UsqnaiCdskxUT1ZKZMo4lG2q40Qm+xeoYsVFR
 n2HAFV941ydKu2eFtHh9646yQ4HuGZpMh75zfXL7pWlK3+MHssepwUPEY
 PiENSAQSSDeUWIRpWmT/GQFbKtAJ2UqkFNZcjyf+/NJbjimiVbs1t4cZA
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=G98B6oWM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ixgbe: fix ndo_xdp_xmit()
 workloads
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

On Tue, Aug 05, 2025 at 03:06:29PM +0200, Marcus Wichelmann wrote:
> Am 29.04.25 um 17:52 schrieb Maciej Fijalkowski:
> > Currently ixgbe driver checks periodically in its watchdog subtask if
> > there is anything to be transmitted (consdidering both Tx and XDP rings)
> > under state of carrier not being 'ok'. Such event is interpreted as Tx
> > hang and therefore results in interface reset.
> > 
> > This is currently problematic for ndo_xdp_xmit() as it is allowed to
> > produce descriptors when interface is going through reset or its carrier
> > is turned off.
> > 
> > Furthermore, XDP rings should not really be objects of Tx hang
> > detection. This mechanism is rather a matter of ndo_tx_timeout() being
> > called from dev_watchdog against Tx rings exposed to networking stack.
> > 
> > Taking into account issues described above, let us have a two fold fix -
> > do not respect XDP rings in local ixgbe watchdog and do not produce Tx
> > descriptors in ndo_xdp_xmit callback when there is some problem with
> > carrier currently. For now, keep the Tx hang checks in clean Tx irq
> > routine, but adjust it to not execute it for XDP rings.
> > 
> > Cc: Tobias Böhm <tobias.boehm@hetzner-cloud.de>
> > Reported-by: Marcus Wichelmann <marcus.wichelmann@hetzner-cloud.de>
> > Closes: https://lore.kernel.org/netdev/eca1880f-253a-4955-afe6-732d7c6926ee@hetzner-cloud.de/
> > Fixes: 6453073987ba ("ixgbe: add initial support for xdp redirect")
> > Fixes: 33fdc82f0883 ("ixgbe: add support for XDP_TX action")
> > Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> > [...]
> 
> Hi,
> 
> could you please consider submitting this patch (or a newer version)
> for being merged into mainline?
> 
> This would help us not having to build our own kernels with this patch
> for forever.

Somehow I assumed this went through the process and our maintainers took
care of it - apologies for this inconvenience and let me address it.

> 
> Thanks!
> 
> Marcus
