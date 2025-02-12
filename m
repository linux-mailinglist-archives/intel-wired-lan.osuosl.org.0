Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6369AA325F7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Feb 2025 13:39:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1CBA5412EA;
	Wed, 12 Feb 2025 12:39:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 69Qhs-P4PwXW; Wed, 12 Feb 2025 12:39:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 02D41414BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739363961;
	bh=RO6AdCg4agM8RZBOjRlY2oo0+yeiO1qnQIvgbq1X/PY=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UxiHgkDuXKM1wezvhlTp5EhW2336MzJdktmqFFw0upkumtjAq0o5abXa/ZzBKTeRX
	 CG03MICJuhiuCjsU34y7tG8Ae379W+vGnLW/Y3XRavmNCF4D7yC5dD6CDu/hLH+IgZ
	 4nWVCVLiY6QdgEl5F9vl//8nohUAmOSFqVGtcA5Sh+opO+S+C0OyT3NpSLbpEa+Ni6
	 /YpcCL20+sSv9EHoS+Z4W4gmzCrH/igB2Ir2HXn/UjMn4HBi7uRqS41j+h22P+OIu0
	 t5oIa1on0PvooYteqiaqyuxql40n+IDs317nURLqYfBqvA7umfXzYyS1DfI2e38Smr
	 xpf7D6wOjmTEQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 02D41414BE;
	Wed, 12 Feb 2025 12:39:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id A63981C9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 12:39:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 95FB760AA0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 12:39:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kiSmFQuugTeW for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Feb 2025 12:39:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8D7F860B30
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8D7F860B30
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8D7F860B30
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 12:39:17 +0000 (UTC)
X-CSE-ConnectionGUID: PFkB8Lo+TFuhLuHqabSXpg==
X-CSE-MsgGUID: zOOhQUHySeCbNrpFHIyVAA==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="40137653"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="40137653"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 04:39:17 -0800
X-CSE-ConnectionGUID: soxNorffRVSW9uIGfc7R1A==
X-CSE-MsgGUID: WMCvLXf6TD26BvUoCoHwhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="113018955"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Feb 2025 04:39:16 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 12 Feb 2025 04:39:15 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 12 Feb 2025 04:39:15 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Feb 2025 04:39:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Isl1gf3HAuv3Rw6f5LaS1GrVRK1AN2SU6i63EcvmeHGb3CA0WvdEOYWcElMpASoYRlRJHhm63yX7Ngzq7hycGIFdYFwPcpe509Xw2kKVzhZyimPU3MAECK5PuTsHz4u7bBxnYJUw8JQCwOjQA2w/goCTh4xQ+wpQfmTePJ91auMgGqMiI69cIkhV978kt7/pqZ8jaj4p1BAoLgGRRjVztjN8elmfB+7HS5WyKBDh7vUFaH8ek3GwNCmzXd9DpSn1XFPuCZBO9I2X5UoEhVNifa7plHS5LjAyugoIubnIkRsipGjJk8z3udLXrxGLTSfbSYZ5LuJLNpnX4ewJ6NojWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vzb2mkDROvQ9bpZZu8qLKmR2LkbWRP/lcGcfBlmLf1c=;
 b=TrfmBv2921C6RKDCPebCI518JvaditT64VIJ56alUpeslvXc4IYoQ+UqTFPbJjtsrh+XH9u6Ap6gAKcAMNrxq/wutN8fO2O0UviwwYoil88HkfMlO3+Onx+bpABhkeHPCIEEpauH0jyOBe6oFkMq2OTwf51UGJbRWnNpDw4ue3PU8lZp9DF6oBgWaHS5X9hpVxCLtpuVp4bJ/7uOB6NHnM2zBDo+pG8Xrn6V/e/Ok+cDeopBv9ySQC4aWtGKxkOWnUJ/qBsxoPGjq5lRCKfQGRAF+NkeKvM4c+5oNJicGmvN6/M9TxWwBqonJKiu0cTopsw06umqs5uC54hQCJZszA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 MW3PR11MB4745.namprd11.prod.outlook.com (2603:10b6:303:5e::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8445.11; Wed, 12 Feb 2025 12:39:13 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%3]) with mapi id 15.20.8445.013; Wed, 12 Feb 2025
 12:39:12 +0000
Date: Wed, 12 Feb 2025 13:39:07 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Toke =?iso-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Jacob Keller
 <jacob.e.keller@intel.com>, Chandan Kumar Rout <chandanx.rout@intel.com>,
 "Yue Haibing" <yuehaibing@huawei.com>, Simon Horman <horms@kernel.org>,
 "Samuel Dobron" <sdobron@redhat.com>, <netdev@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>
Message-ID: <Z6yWa3ADgWmu+2TE@boxer>
References: <87mserpcl6.fsf@toke.dk>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87mserpcl6.fsf@toke.dk>
X-ClientProxiedBy: MI0P293CA0008.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:44::13) To IA1PR11MB6097.namprd11.prod.outlook.com
 (2603:10b6:208:3d7::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|MW3PR11MB4745:EE_
X-MS-Office365-Filtering-Correlation-Id: 1bed8186-f053-4d54-999c-08dd4b624094
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?y4PdZhSkHH0ejqFNa3vy2xq6O0gY105sMycIMUq+ElV5kkAIrjTzt4iAJx?=
 =?iso-8859-1?Q?YsGRMc2m1mjpCIgOoloMhdr9xJRznCd34VSCpioFZm6B2ixxeWdU85kQ1D?=
 =?iso-8859-1?Q?NqZ088vSLAtocnO2eMVx6hUqlQromID5fvFb43MGRwMp8vCpESdXpfPbqa?=
 =?iso-8859-1?Q?5jm+UeFneEwyXCPFmogrwDQduaI14lNX2U2+3zKJ7QgNkaBeDeM3opKGQm?=
 =?iso-8859-1?Q?/h2VOckTEZoEc9lRCVykQ3D4EWheGOalPKAnpJJgoxaR6Wawq/GPsoNguC?=
 =?iso-8859-1?Q?Zj3sJHYQq2txHRoHerHnHZtK2IzHRP9aCPfhwIlYZuApezor6N5d2HhnVR?=
 =?iso-8859-1?Q?nxIQlYHegQhFfYCfMXyTJWZY40+o4t6ROKWSXOUNQRjdPSPcLmOltEcE8n?=
 =?iso-8859-1?Q?zWO0JlAqP/cTxg1tmVm/TkN7ZidtZGE9JUjcMSSp/4dfjrAm6eb2/0OrV7?=
 =?iso-8859-1?Q?jx4AcvKZTetdDJ0yjzC5qRPJ/V/VJnEu67rvjY20+dimuM0bMMNPaqT1fA?=
 =?iso-8859-1?Q?OQ8L+3DGsVbd5LC/8LNLagYtViPY8vtHEaivS301heceueVyTpNuem0sBB?=
 =?iso-8859-1?Q?9X52a5NqeRI/J2F7YAdK0gu7Rivu/634FSBz07hKsZHHy/Pr7218Kbwe8i?=
 =?iso-8859-1?Q?+U36VVVE4byJLorYSOFb6JXCXw61cfWmFOYNqI8flxSn7GdRfe6GtVfgq4?=
 =?iso-8859-1?Q?7emjgAlQO3njNEY8sSnKK4cW2F6i11BI7zZIvFdOcjOcSiGjvd7oXHy1Ja?=
 =?iso-8859-1?Q?38IXxRLggHbA+yVxKrXvuHcva90g126iqz/78xaLycrzqRbC9yn7xeXlfQ?=
 =?iso-8859-1?Q?b1r2kQMwA3qv1MrHNDj4DnFTEnXxrtMVLd4WI0TDgOi+TbMlfpZQUQu8Ui?=
 =?iso-8859-1?Q?/tfVSTOuYIjZ425XnuOx9tSZtcN2nCLNQkqcxE/4zSw2RMl7a+YqsXnocM?=
 =?iso-8859-1?Q?oOdeZOcUmVXunh4CIO35SdlyGHOzx/iomaOoC5JJlFNKXb4ETIL1ciZ590?=
 =?iso-8859-1?Q?/gb8OO6v6HeGh9UvPYXZJ13uUJ+6zR6tZNJBqhwKR35JE4fAf0p+hHI8ns?=
 =?iso-8859-1?Q?4XeeK9wVuHSoa1wT1xP3tR3TimlUxwlyL0WhgsB2NTF2/w0SbbDV57FeCS?=
 =?iso-8859-1?Q?5g5exUglBdoXKJzQH21hvR0gSi0jXbbSEycohxA3zrRcCRPpBDZpLt5yAM?=
 =?iso-8859-1?Q?aOHrsRITeKwtvXlKEwXR8RrI07kjSaMaJ+9CNk4oj0eAgCznRdysROuZLz?=
 =?iso-8859-1?Q?t4E2dDRRX0rLhC/jiIA8uN7hZC2mYN8ndcknbTesMFK7AZjwWCAGmk/DmC?=
 =?iso-8859-1?Q?CNTSNihTlg1yd0lvV0yKYOAtDFkGcknuB9F5GPxTXVLwJNn4oWajQu8iRJ?=
 =?iso-8859-1?Q?/MuDX5sbrwiqlQxHnXPyZEYAAbb7lyhpYbO1MZHT1QKisHwG0FC40bAuI5?=
 =?iso-8859-1?Q?8BwUKiY/Fu4CbU1w?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?NVRhsC6MyYXTd7ALNzAlG9hqL/nPnSNv9rPx0OvuGRw6UieBteF/Bj1hwH?=
 =?iso-8859-1?Q?L0PZ3SETBJ+9tZ+rcKzf5AjMc1MwfBtitWWA87iR1EaVsOn0WEgchtMRZA?=
 =?iso-8859-1?Q?1rMjqdikuQmVGXwja+DvsPwHrX6+zkRSIZDT9SiEJefwJEUgU/qIOMgOYF?=
 =?iso-8859-1?Q?w16lX/VP//KmP6tTG29dfXg56yEYpyQWFRnlDIMcqAuq9lXluF59BETrox?=
 =?iso-8859-1?Q?nvAcOa9G/Hxt+CW6+QN0oeZoOE4vlHoCCoHeC9orzR3kBvwp3bJqhbxXMm?=
 =?iso-8859-1?Q?Hd3t3AFKx8eYoYc50px9uucpotA1vxOvJGdMPyrEWqNTNCWJNSlmKTnRFy?=
 =?iso-8859-1?Q?mvY7E3h8Lbuun/FRJ9ViLcHiUSKJTMlwDTF4is5be5QCJ/KitQljyTEQ9p?=
 =?iso-8859-1?Q?en3IS+4RFoVFVxhefrgyK7RwgI3O6wUEj9wTUXXGN8iJcZhQN/36osmyCh?=
 =?iso-8859-1?Q?ClrMsTEHIc/pmXw+TvKTsZa9LEu652bFNajH4tvsi0RJuaLoKKDQ3+fm08?=
 =?iso-8859-1?Q?OR9AsC7RBZRd5EJ4B99bY+CWakuBmMd42v6y2EiF2qwgJ63fATFX6hXfPu?=
 =?iso-8859-1?Q?0CWsIvCawQ3DNFEPoLY3UGmWUkY0LvQJhTrGFpya4ZzqApeYPEVhrNLRca?=
 =?iso-8859-1?Q?KVy9wNl7Y/UxZ8CH63LEa91taK0MhMgWwhajtjevsQwKN26Tq53yfoMBXk?=
 =?iso-8859-1?Q?oEAi6kY/5t+bvwxzs3QIAOZAwBc/qI1uw/5tCYg6CgFr2bbIid2h4NV1xs?=
 =?iso-8859-1?Q?lmS8mLQaXYnn5eriqO470dFZvuDKl5IJ1jg+H8QR3Q+5GyFuDVllGtOvd7?=
 =?iso-8859-1?Q?oZFvJxisJ5l7BW0hRcvaGrHSqM7XO8b0btn8eRJnNqtbpjZWo9OSAG3wQc?=
 =?iso-8859-1?Q?71WHqfZeoKqbl7CkD1JThs7nYf7Z21i7Vz9oKzV1QQlq9RY7VXjT9XIMSK?=
 =?iso-8859-1?Q?mQ4ULLb3c7ZwL6TfLCwgGAVKQdctOz3a4u2HlOvv7hS6nFI/ECHW2sJ3hR?=
 =?iso-8859-1?Q?Mz+g36mgPQfhJ4ozAOUa1r1wX+F1kKfqBMTNJ/cv1oZXhKyHyL0p3Rek9g?=
 =?iso-8859-1?Q?w5XsvIUFPpYwyHZ/aIQKhOIPnIj2aoL7UkaBZhGnf05YBk0mqg57fenave?=
 =?iso-8859-1?Q?otUZpC7H7hx3nPA4fU3yafuxpozYYr2gCVNhxLUDGUBbi4kdS7w7IwXHPJ?=
 =?iso-8859-1?Q?LACbF/26PWVHl+cXBNcfAQDfS4dLMK3mBhBKQ6kvW1E9BDY8WbzGtRogMl?=
 =?iso-8859-1?Q?yzepmTdj7ZvxWluj9FILBqPcroJ/u2Ic7T+JwTQslhxgqqgQ+/RTXv6mOM?=
 =?iso-8859-1?Q?M7Gnhbra+QK7LRPMPWlMXi7aZ93PT5vjytgkJB/R5jzoTUSRtrRp4ZmTgT?=
 =?iso-8859-1?Q?ZBA1t7VZ9NWoNvuDyOqh3prrOAgPcHwW6LzCiqGulLhkB23FMEO/pdvXpc?=
 =?iso-8859-1?Q?UrDgvINDesCmNPcPAnRIj+8tGfW2dSo90a0qxSCpLN2PWxu0CBdoH2YcjM?=
 =?iso-8859-1?Q?Bxqxp4zsyiS5KSM1xwM+hRyvPI8GOVRGHs0u5hYbhpIj2fpYWumvwpNasd?=
 =?iso-8859-1?Q?qcFVj60w2Vz0Rir0ElJcfgqJ0nd4KreOi/aK7yOFqswaWIldsrbxgT/JcP?=
 =?iso-8859-1?Q?lyhL7ajzh8NbM3zu9bMqJn8nrPGqmafkuSpIUB9eU795Z3JRMw61ootQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1bed8186-f053-4d54-999c-08dd4b624094
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6097.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Feb 2025 12:39:12.6999 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: W5l4BFaY/nCTkswiLurf2ZTX87xiPjwJcsW8+iaVp/8Xp+o4suw5E11XDgsB7qBdmeMvZ75641fYFcEzeSBGLp3yuc1LnwW79MRdZFQnw/0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4745
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739363958; x=1770899958;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=Lnz42gYBaE6LEei5wO6SdcCbDPEWWHF0m7LsRuYe8m4=;
 b=dvFTS837uPmeJdhH1Trf3lpi1cf+yvdepmHNkx+ccvilwUp4OHA52D3E
 K/1DUtlAFJxb3m29F1wtc23Z1DxDGYR/ER/I3mhnnO82jquWz+hLpt/yj
 WEzXnVHu1tqkwiDzH1ym1XmEOoFAnlDrIFQqXdIyQ+XMt9sSTwpkIyDlf
 nKTcweu6A2c+9qzYVZeljYL6pFTqzl0SqWU/psPqYLqbOxDwL3XZVkZJ7
 qY/C9/JaKHJrGVaFibpiK4aR4dUFyN7TCqDF4aJHR46rSYWNWhYcL6/FU
 QBJ9iQ0aDECL/97FmMXmOLlpKJKeI4m0iR8KNC571g3f/AejpBOiirbDW
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dvFTS837
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [ixgbe] Crash when running an XDP program
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

On Wed, Feb 12, 2025 at 01:33:09PM +0100, Toke Høiland-Jørgensen wrote:
> Hi folks,
> 
> Our LNST testing team uncovered a crash in ixgbe when running an XDP
> program, see this report:
> https://bugzilla.redhat.com/show_bug.cgi?id=2343204
> 
> From looking at the code, it seems to me that the culprit is this commit:
> 
> c824125cbb18 ("ixgbe: Fix passing 0 to ERR_PTR in ixgbe_run_xdp()")
> 
> after that commit, the IS_ERR(skb) check in ixgbe_put_rx_buffer() no
> longer triggers, and that function tries to dereference a NULL skb
> pointer after an XDP program dropped the frame.
> 
> Could you please fix this?

Hi Toke,

https://lore.kernel.org/netdev/20250211214343.4092496-5-anthony.l.nguyen@intel.com/

can you see if this fixes it?

Validation in our company has always been a mystery to me, sorry for this
inconvenience and that we were bad at reviewing :<

> 
> And, erm, given the number of reviewed-by and tested-by tags in the
> commit above, I'm guessing you don't have any XDP tests in your testing
> regimen? Any chance you could add that? :)
> 
> Thanks!
> 
> -Toke
> 
