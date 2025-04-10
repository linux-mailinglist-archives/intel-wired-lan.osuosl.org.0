Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 325F3A83623
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Apr 2025 04:01:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6B0CA60B0D;
	Thu, 10 Apr 2025 02:01:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Sy0-pxsRQj5O; Thu, 10 Apr 2025 02:01:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 36D5660B09
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744250501;
	bh=19TeDS73iWmskQsesiKCOSYkxL+g1vKzWGSDgwFqZHU=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=EFnQhcXInaVhuyLMwIPBpkVJ8Q383KwmweTybhaBsVsQNk7T8aN7WZ8bnHGLnw04D
	 EKlWtB7K6jHxI7E8/imByrjNp23/NoLKyCXC/eYzQN3cw9g1Mq8EUYKjvGFEDJjpXq
	 iybhE7z3yw2t+J9ophqHhUc0WYJTw/zkm9XjT9G0itRrUGfdR5kRYcP1hj38weGuaE
	 nBPCdJRPsHPlO70m5jBeuCYfBCmUlekeufNZMFhOtJCasYSRu+9x827s826zFvNSIG
	 LYI6jTeCMDtzc2sWx5KRrb2uGcgHAvSxCcLxqP7fDDWYdXtHmKLsSh0QZd/DaAUNSP
	 kzANXP034nF4Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 36D5660B09;
	Thu, 10 Apr 2025 02:01:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3D1A0108
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 02:01:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 20074404C1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 02:01:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z8-D1vPVr8Ue for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Apr 2025 02:01:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=dan.j.williams@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2505B4056C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2505B4056C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2505B4056C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 02:01:37 +0000 (UTC)
X-CSE-ConnectionGUID: 2JqsTsmXSRyqLyi5acMrCA==
X-CSE-MsgGUID: 4AQbtXDmSZ2YZr846jlNkQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11399"; a="56389582"
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="56389582"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 19:01:37 -0700
X-CSE-ConnectionGUID: P0nITzeFSuuH0ianhzj5xQ==
X-CSE-MsgGUID: tIFj1d18RXyZNzYERBWnjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="128733691"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 19:01:37 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 9 Apr 2025 19:01:36 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 9 Apr 2025 19:01:36 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 9 Apr 2025 19:01:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OCrROT7WUaTqXznU5/K5SQ+CqxokdNR21oQpFbfKvmh1CxDMpZ7O2lMyER+gaw4tQtCrfyR+wh3ahxRubzrpbKmx9u4y0jhjsFw5hH8WfCiDwJ1ayzkwl/jIC43QJtEfg5b7BJikTCbSrjyz1XtY4PW4SlfPSizJCR+xdMxcMkYa6ICRHTXgjpDoyJ0UmE39e0Bmsjdk7x6yEvGusVT7ZQCdRyTHeZW/Rgy5TusY1lmbCsbCfgO2yuoxaMqhpbhnmx0koJxUCfrNvqSz3+uYDb3l6ULzRgdVAyMi2pbbEO00Q0LHfzcAEYPc4tbl+Js/Oa8dSF63y8ZVbORIjFYIIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=19TeDS73iWmskQsesiKCOSYkxL+g1vKzWGSDgwFqZHU=;
 b=evuxoGJkfHfi4B3xWpYX/TNozH0wR2qHxbH/IMvPRut5fRB1sxAfjDlgHprpSLHYIdeVAL9OpEkuIrN9drm899snPRyPFWRJPIOrXj9Y4jdwsmEJ+p5uK2sJPkAC88yBr2DPG2MzNVyka8taB4RzP7zd9xW2C4nkjjGW+1NQqqjPwb7w8U+PFI6zUk2MztLo4TByI95yqHr+wAT/wU5jK02As/jU59IklorvWTy6WquV0Rl5+0ba5VDvTcktRcAC9Af0+HkPLoNJn9DVyOdEXUoAwBhb/P+2mpHzwnd2V6IfXXT1Zc8qKfHCcoYuM7j+s+Qq9rnI4N+6PRcJee3BEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB8107.namprd11.prod.outlook.com (2603:10b6:510:256::6)
 by CY8PR11MB7315.namprd11.prod.outlook.com (2603:10b6:930:9e::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.31; Thu, 10 Apr
 2025 02:01:32 +0000
Received: from PH8PR11MB8107.namprd11.prod.outlook.com
 ([fe80::6b05:74cf:a304:ecd8]) by PH8PR11MB8107.namprd11.prod.outlook.com
 ([fe80::6b05:74cf:a304:ecd8%3]) with mapi id 15.20.8606.033; Thu, 10 Apr 2025
 02:01:32 +0000
Date: Wed, 9 Apr 2025 19:01:29 -0700
From: Dan Williams <dan.j.williams@intel.com>
To: kernel test robot <lkp@intel.com>, Dan Williams <dan.j.williams@intel.com>
CC: <oe-kbuild-all@lists.linux.dev>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, Tony Nguyen <anthony.l.nguyen@intel.com>, 
 <jgg@nvidia.com>, <linux-cxl@vger.kernel.org>
Message-ID: <67f72679bb038_2ce629469@dwillia2-mobl3.amr.corp.intel.com.notmuch>
References: <202504050434.Eb4vugh5-lkp@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <202504050434.Eb4vugh5-lkp@intel.com>
X-ClientProxiedBy: MW4PR04CA0125.namprd04.prod.outlook.com
 (2603:10b6:303:84::10) To PH8PR11MB8107.namprd11.prod.outlook.com
 (2603:10b6:510:256::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8107:EE_|CY8PR11MB7315:EE_
X-MS-Office365-Filtering-Correlation-Id: 8f58b906-fa4e-49c0-b5db-08dd77d39d81
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?V3OyLwkC5xfhpEswfskOD4dOLiGMc5iYXDt7Xx3OcU0d8DOF2xMfIcaLsSdN?=
 =?us-ascii?Q?b9Ivzfty7PO076y7fxrg9i46WAJz/S0YBUKuGEw2U5w1p/75yfMhkMYXWj0q?=
 =?us-ascii?Q?DubjOU501/hUOu2Q+/SF3nrHoVnAtArSj2qsnxE/aLLqARyc+ivz5lkdY9/e?=
 =?us-ascii?Q?pNrErlOSG61mY0l/2zSRVWZgPI+IAsZKK+Ddu52Z8IJ1Gq23fFa3qXzT8P+F?=
 =?us-ascii?Q?B63f2N1L9DYOIKqaYk/BoIj7O2KvX3ZOFBgJYez5Xaqorb9w8Q4wCujgdX14?=
 =?us-ascii?Q?Pt+cbH8HUy6ZBuP5eOkKZl7TqS9f1krHmg1yMjo3DnoRKtgAhWj/iApY0VR6?=
 =?us-ascii?Q?GrFnhxAT4YpmKof6D45AhyRSG6Myjy9Jp5NMEv+jQSRKi8FzMDxkLaJmsh/i?=
 =?us-ascii?Q?0xdAjifMD7n8Fx1wCbb5k+HAPIz906w3taN5oj7mDg0C54WAkuYa6NtfLkw6?=
 =?us-ascii?Q?cuBQkwxKEwJysxz+7/Nahw6H9tDmmfKSqqtWOefqg3qoWezn7bqPEhdHS5Sk?=
 =?us-ascii?Q?QEzJ7uC65qG7x56Tz4Rgpcrj/5wW2NB9L4eGEEHvGcjXR38l9NnRowIB1/+4?=
 =?us-ascii?Q?UYNCZ8283F0Zckz3DCmz5xl9B/iE8w+lGCrnGTNrQIS6nuWc0cH6o0bnL1fr?=
 =?us-ascii?Q?fBNMNXBfpOth8YN9DhGW15V7kWTEsdosPIJMhsGdOBEuIOIB7lXg7Fy5Qi6e?=
 =?us-ascii?Q?YUmtz8HAMSTvTRkaoscGdwjA1wcSW1J9jtCDiMb/NWtJJfH1cz6T/R2Sqwaj?=
 =?us-ascii?Q?jAS+oGMVf3LTV6aVK6rQoFhRxcKCgcnaX52Wh4lNj3ABVUg8i1b+Rd7oOvdr?=
 =?us-ascii?Q?9mgWiaZhjvHntd6H+6gQ6ApVwAp8NtudEXybV9HnGzPQuVpjEQPwt8U196oW?=
 =?us-ascii?Q?nfxmvPpXSXAPRV+pTpJ+3FzI8dAp5ujVgSjDwNcvt02jOB0AMgItaIjr4aRn?=
 =?us-ascii?Q?NwR+/9lYHlZe+dPEvPemIZja6drHWkmkItSU2rIKN5SUNf01rdcQghJ+GkAH?=
 =?us-ascii?Q?cOdpKiC7qljRf0pg4nNTOEURBKmDP3CNtPoOqGqjFr0BqZTp1bqh+akK9tTc?=
 =?us-ascii?Q?jCkiGt3vyhhm1k0lmhSbsTbI/Kfk4AMfVEY/v+u3ACvx+o74updUpyrRAOwj?=
 =?us-ascii?Q?imX0HwLbJPO1BlIYen7FnSjzWtMbuuWOQQrVbiTTOXyoa28HtY4Ve8Ci2ywx?=
 =?us-ascii?Q?PrtRYzE/iKJxXlZXi/hqGx7Ds160qzeAcW8cYcInxb1+D9Falqjxhie+/mGx?=
 =?us-ascii?Q?xop2YmcHOAMS1SV6Zrz2h6mL4wBa/bdW8mXbmNztojLR8dEdSCxXDJahP2kx?=
 =?us-ascii?Q?tQxTg2htKQ6JQUh0ZcCdKQcs9SkwbSdF4x8XWw92wwTie3AeQUmaU7jnbubE?=
 =?us-ascii?Q?uNzqhndc6eEfkRQezr3Zkrwfd0Xq?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8107.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?FqNHzCVB8/uxKVlVXROlxQ7FYn4Sb1zb9DEHBepOJt3g/EHsRPHApzOPfHy+?=
 =?us-ascii?Q?ibNBPk1ySqvl7VBB0E3Y1xkhLSABnXbHgGI6Qdmv9uQNGB1Ik3kY/QvvZidJ?=
 =?us-ascii?Q?3lABp/DnwqgCB3zBGX9Uncrs+FBxhU0bwYy/0+AOYQlCE01a/kMGkpECmNND?=
 =?us-ascii?Q?IKRWHHM4Axg1weCDX1UG4AQX5BfZvU2273Tp0CFWWTff+MPOex4J7I3n75m4?=
 =?us-ascii?Q?ch1zufTUPtM8Gj5HwZL2R9r86E31SE+xQ7lfODtAHbzZkE1BgeI5jf5uH8zG?=
 =?us-ascii?Q?zL2OTCNJsi8jVt80fWoDYSjPTEzH2QNaoMXene/hdvipT+O0Z98EnDtFOn0I?=
 =?us-ascii?Q?+9EeS/ChI/8CDbrQIdFDk9Wgj58klp1JSyrem1hmpWbnsoULYfSyaWjQoG1v?=
 =?us-ascii?Q?MQoYrAbxSDvaxKn88oMyqUUo+Dj7n7tMRqCCnr69uMP/th12pBsCyvI04UOI?=
 =?us-ascii?Q?9ayas1Zo2yhV3WgmembFfDv8WCosjCwdonIWoC8BPrjsp1iglItSKQFWhhJl?=
 =?us-ascii?Q?YgOcqXlUB6uFOxSCFdcd5S7C0FogGPvKOEV0lz9QuvN7sli0+RMAH2m3XNqT?=
 =?us-ascii?Q?rAoJGd4PRBQH5cERi9h0kkZ33upMkF48CJFNse+LiXPK9bhq62FCoya6J/eG?=
 =?us-ascii?Q?0LKYosFntRwK7TbgpOZHIXQxeKHIDj8gcASaUiRvyomqsim8NaY8jE1UiJcR?=
 =?us-ascii?Q?UMKogAU7+cv4zU/gJRXpjlgO8eKFy+Dd4+UaLbF2Ob3xbdtwsmFUCyTNBAcQ?=
 =?us-ascii?Q?En/FkyQRF6B0eBA4zQwREavx2T+UXe2nGiNh8UiYiFaGJjquLeIw5M1ypucT?=
 =?us-ascii?Q?oKPUWGuDOVVJ190vbCBtdX6Q8w0/ypIMkNpg/sBquhHYgN9W4OcDcrd6YURm?=
 =?us-ascii?Q?wmrVqiBwS9acJDcizL/AC6gkmGQkdRu6vDmIQyLcWiXUt8UGRPcxm8ksBkJT?=
 =?us-ascii?Q?Um/Roh2/uY0Z7D77U89JlY1frQiMhjCD0g6vGOwZ3+yNjISREJbyFPxXFwcp?=
 =?us-ascii?Q?Al7GUmgduC5AlkBj9VqC5lBFGHL0vxneKgTSOGuKImoZ9NpNTpt/D9xrIiiR?=
 =?us-ascii?Q?Z3XNjADhjHtud26X0L6pN8U1uWuXnuo2+M4DNNdH+72NKZRZbq5h/j6Csgbz?=
 =?us-ascii?Q?EJ+fLdZ7Akaz38u6A5xi86wS08K6zZr+SU3M1OJCuQLt/olF9ebeNIL8aSIk?=
 =?us-ascii?Q?QT2e8WmTvF06bursm3eMzD4DC7RnJFq1MsGkDTUzZZywWSGwEt1WYUq+jEgT?=
 =?us-ascii?Q?h8BDrV1qFY0XGkEoGkvNnTfmDMshXv6lqvnX/8Yz/HM7W8ExiOjVL1TExewD?=
 =?us-ascii?Q?ZE39eaxKtQOHgel2iUTp/77hDebk7AFMJmUri18VAIOldRW5UpMSZB4neLZm?=
 =?us-ascii?Q?RAegLnnk4UwGVVOVmj/ncd0PrGquMj4Qpy62abmYwffBhlKAZ47M53EG7l6b?=
 =?us-ascii?Q?WbFCxZLzGHFadMqmE677lRHPfdXuJJuG23507/JdZNNVNTA4MJhYJ3yCoTjn?=
 =?us-ascii?Q?C+iG0Z95X7ifeqTJyluoWi9xqkamZXm6EmYJWwSut0fhTQr04hzq/KBEvSl3?=
 =?us-ascii?Q?7fhPZq4JD+8JAstBL6NOo/h+rmCdIEk1zGryPe/iarIenPg5VGQ0F8Zxe4sb?=
 =?us-ascii?Q?6g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f58b906-fa4e-49c0-b5db-08dd77d39d81
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8107.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2025 02:01:32.2246 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZwYyB6KPnEqIClfF8XB+spNwYa108zXO08esGivXvaKrqTDxznnnIGnRGWCTSITkbkxRkepuunUiycf2/ED7Qt1/qSsE5dhPP8CuSWrXomA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7315
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744250498; x=1775786498;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=jtWyF3euM/s5XS3BOHkGZBDtuoTFJ/F6HiP+JnrkuSA=;
 b=RmZBcVR2w9WPMQgTuXjmPquWZKcjDicBWdeZclP20r5A3kTP/qBQXCle
 KuDJKybjM12R4D1+6B9brsoxHOUFnPW6BvpG2SvVy/gy7Eu9DTotLtpGW
 XHiu83QixYzgA0Al7ZZ6KbtCDSUpzVVnFs3tPuR+lSB10+oZyshgCxk6T
 WjIsXpeN840E705xk90ILgJ8PpCfNqU3aJG8oXWVXqLkr3FUsisUSYO2c
 QFD9FL24grO6fNOL+3QnSY5YgeVXnxCJF+wRK6+cJMGQFQ/2MpzFR/fK8
 tumllqSjEmr+1XH0h08wmLvUZEC47ym07Xf3IvV/D1/+b8iUv+YaFS1MY
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RmZBcVR2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [tnguy-net-queue:dev-queue 2/12]
 include/linux/build_bug.h:78:41: error: static assertion failed:
 "sizeof(__uapi_uuid_t) == sizeof(uuid_t) && __alignof__(__uapi_uuid_t) ==
 __alignof__(uuid_t)"
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

[add Jason, linux-cxl]

Heads up for a new __uapi_uuid_t patch.

kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
> head:   41ab790c342f99d9eb891807b2ff00caa56804b9
> commit: a4bf8e3b34147889963e4c46d1e7916f7157b784 [2/12] fwctl/cxl: Fix uuid_t usage in uapi
> config: arm-randconfig-003-20250405 (https://download.01.org/0day-ci/archive/20250405/202504050434.Eb4vugh5-lkp@intel.com/config)
> compiler: arm-linux-gnueabi-gcc (GCC) 8.5.0
> reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250405/202504050434.Eb4vugh5-lkp@intel.com/reproduce)
> 
> If you fix the issue in a separate patch/commit (i.e. not just a new version of
> the same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <lkp@intel.com>
> | Closes: https://lore.kernel.org/oe-kbuild-all/202504050434.Eb4vugh5-lkp@intel.com/
> 
> All errors (new ones prefixed by >>):
> 
>    In file included from include/linux/bits.h:22,
>                     from include/linux/ratelimit_types.h:5,
>                     from include/linux/ratelimit.h:5,
>                     from include/linux/dev_printk.h:16,
>                     from include/linux/device.h:15,
>                     from drivers/cxl/port.c:3:
> >> include/linux/build_bug.h:78:41: error: static assertion failed: "sizeof(__uapi_uuid_t) == sizeof(uuid_t) && __alignof__(__uapi_uuid_t) == __alignof__(uuid_t)"
>     #define __static_assert(expr, msg, ...) _Static_assert(expr, msg)
>                                             ^~~~~~~~~~~~~~
>    include/linux/build_bug.h:77:34: note: in expansion of macro '__static_assert'
>     #define static_assert(expr, ...) __static_assert(expr, ##__VA_ARGS__, #expr)
>                                      ^~~~~~~~~~~~~~~
>    include/uapi/cxl/features.h:16:1: note: in expansion of macro 'static_assert'
>     static_assert(sizeof(__uapi_uuid_t) == sizeof(uuid_t) &&
>     ^~~~~~~~~~~~~

It turns out that on ARM the alignment of __uapi_uuid_t is 1 and the
alignment of uuid_t is 4. However, this check is not actually concerned
with the base alignment of the type, but whether it changes the size and
alignment of a structure that contains the type. The following fixes the
warning for me. I will send out a revised patch with that tomorrow if it
looks good.

diff --git a/include/uapi/cxl/features.h b/include/uapi/cxl/features.h
index dd8874860cec..06a1ae3f3fd0 100644
--- a/include/uapi/cxl/features.h
+++ b/include/uapi/cxl/features.h
@@ -14,7 +14,8 @@ typedef unsigned char __uapi_uuid_t[16];
 #ifdef __KERNEL__
 #include <linux/uuid.h>
 static_assert(sizeof(__uapi_uuid_t) == sizeof(uuid_t) &&
-	      __alignof__(__uapi_uuid_t) == __alignof__(uuid_t));
+	      __alignof__(struct { __uapi_uuid_t uuid; }) ==
+		      __alignof__(struct { uuid_t uuid; }));
 #define __uapi_uuid_t uuid_t
 #endif
