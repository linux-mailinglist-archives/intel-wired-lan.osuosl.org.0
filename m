Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E281B50FBE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Sep 2025 09:41:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C97BE83D4A;
	Wed, 10 Sep 2025 07:41:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i5kHVDPD4hdS; Wed, 10 Sep 2025 07:41:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 021C783D61
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757490089;
	bh=Pnl1YU8yu42NAFBumyQCW5fjO2hs0J3+Uq9Bu63we7Y=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NNbH96p8a3A6Rf4YBFPtOFXyT/rrBnr1W0ieEAxcEA8U6o2oV28AIayNZPmtaVk9w
	 bM6dz+eoyum4LKPN+bnj6jB1cGakLAWLycQfKPqAgT2T/QVKshKbKJ3JIQ5mef3/vj
	 65oR3x4fAI/ikXCOUmTwj3fd3iIuscWqakxvj2vLvHmbG5KKNY3ZMHN5pXGiHvS527
	 K+rUyF8qc49+wFRtdWzaKNknApLpxrcx/wL2mvVf1tfz6icmwOVw3MDX547Dz/Z7kX
	 gen6PDHWYLgFzcJvA/h2qJF578vESxreXsrsmJYPBta+LJDpjqv/ktcOBwjxSISIOV
	 cuMJrvgDXKw/Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 021C783D61;
	Wed, 10 Sep 2025 07:41:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 98BDD10E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 07:41:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8A72340512
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 07:41:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2NoxRFGDYg8e for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Sep 2025 07:41:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 682C6404B6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 682C6404B6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 682C6404B6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Sep 2025 07:41:26 +0000 (UTC)
X-CSE-ConnectionGUID: v2D7y8tpQEC2JN3HZNe/aw==
X-CSE-MsgGUID: FMc6kjvMTm+6ZliCfLPauA==
X-IronPort-AV: E=McAfee;i="6800,10657,11548"; a="77245905"
X-IronPort-AV: E=Sophos;i="6.18,253,1751266800"; d="scan'208";a="77245905"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2025 00:41:26 -0700
X-CSE-ConnectionGUID: BOBl2LMVTvmZSzZH2fdJ6A==
X-CSE-MsgGUID: VUlUx+yrRZ6MgP+S8F+I/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,253,1751266800"; d="scan'208";a="173700895"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2025 00:41:25 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 10 Sep 2025 00:41:24 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 10 Sep 2025 00:41:24 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.88)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 10 Sep 2025 00:41:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=howhzI82UtbVZxXMxN8HLkQKkNLwo3mnQHJaXiJXMRtutsFkUO/ty9ml5sDu+EYyoIhmwnDWKInV2lPc0EDsz80GH+9Trjveigegu60UxBgim7JdEhYPRDSIKbb8WctY9JIgXAZcGCK0MaeTucqfc5JXIuo0nvmwM8/5N50KX9uDSEusMUYoUPWZQ+l3iqlYePr8QLy2BYzg2rk40zrW27vvXQX+3SCRuskvY3HTn90aON26V6wKC4oONxvOqjCqr3kOUTHeXZiYNKyYCKSHB8QsmbTEK+zbdzoN1WR06xISl4sU6CVNgyPLga2LWUGkxo9L3x0eGIrd6Ayw5rl5IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Pnl1YU8yu42NAFBumyQCW5fjO2hs0J3+Uq9Bu63we7Y=;
 b=NSRz3PyMxPQHRGsJ4fcTQtYCZoqkkpJMjdGni+4aNyCw8XsDPRV8Vj1Rw8go5mMUJj0gM/RpdCwRB7PzeFCJC3D5xbgueyeY7E3yNSSui0Sp4itt5RyxZXEHHMkgF+tc1no40wjdkYj3ayTrFTCkghCbH9VXZy3zrq2U3vgLISS0gz0HOtoRfI6U+R6qkq3FHBp/Li3eU6q/3FTceJYfzAn7Sjf8Mw6kNEeWq3oupzzzpZrnwHtWBDGuWbp6oLUBJmFwLRPlRohQps40rDQhNjUWv5SiqH0f+5ecO7GKqygp9P5F5f+Tw8s5paszFsEMOpzfBpkZ6m/ba39Ia1RDwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by DS4PPF990BCE628.namprd11.prod.outlook.com (2603:10b6:f:fc02::3d)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Wed, 10 Sep
 2025 07:41:20 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.9094.021; Wed, 10 Sep 2025
 07:41:20 +0000
Message-ID: <33d327a0-72d3-4775-8842-6c4ceaff41e2@intel.com>
Date: Wed, 10 Sep 2025 09:41:14 +0200
User-Agent: Mozilla Thunderbird
To: Leon Romanovsky <leon@kernel.org>, Tatyana Nikolova
 <tatyana.e.nikolova@intel.com>, <jiri@resnulli.us>
CC: <intel-wired-lan@lists.osuosl.org>, <linux-rdma@vger.kernel.org>,
 <netdev@vger.kernel.org>, <anthony.l.nguyen@intel.com>, Jakub Kicinski
 <kuba@kernel.org>, Mohammad Heib <mheib@redhat.com>
References: <20250904195719.371-1-tatyana.e.nikolova@intel.com>
 <20250909122051.GF341237@unreal>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20250909122051.GF341237@unreal>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU2P251CA0006.EURP251.PROD.OUTLOOK.COM
 (2603:10a6:10:230::7) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|DS4PPF990BCE628:EE_
X-MS-Office365-Filtering-Correlation-Id: 7bfd33f3-cfe3-42bc-796d-08ddf03d6f20
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bWhwYmNFbHlQdkxJaHBOQndXVmoxUFlmQ0Y2QVNPUldaZHNkandjVjJINlBu?=
 =?utf-8?B?dk5NWW5LMUUyNEY4N2hMTHFCMW5RcGJoeVFzY2JNNlI0T1BRTTR0UEJRRGdE?=
 =?utf-8?B?cFMzclA5OHVLbXJZOTNyM20yaU5zLzkxdURUUGxDOVYzR3ZwTklXOTdRbTQx?=
 =?utf-8?B?RGRqZTJsbGZFd01wbGIzbWdvSWV5N0tnenZQREczbWxlMFVJTkpLL3RBSk4y?=
 =?utf-8?B?TWpHbjlCS21iZGRmRW5kYTBFVzd2R0Zpekk0SEZwMHVEMWlNbGJrUHdRcjlm?=
 =?utf-8?B?emVuUGNqVUdnd3czYldGMEhwN3pVamh4YTFNeStHaTNIN0dTbDB6eUhuSzNY?=
 =?utf-8?B?L28vblk1dDNIanU3R1ZZd2RKRWdKcDV0SEltZnRVb3NZOWRxbEJiaDZVbGxm?=
 =?utf-8?B?MWVBam5NbFcrb2VpM3N2TlZiQmpqWHB0SHh6QzBoOHkzei92UnJBR3hHWW9x?=
 =?utf-8?B?ME44S3NRanJzaHg1UW4zdnFtOE5xOVlzVEFnUUduTTFQWGNWbERGQWxrSk9q?=
 =?utf-8?B?cnBtZU9aVzBDZitFdkZZMlh6YWZLUUZiVmJSUG8xbi8vcWExcHdDU2x2TEVP?=
 =?utf-8?B?UlVld1dhVjAxSGZNdGFyR2NxWk9QcGVidFpKakUzL1cycXhjb1RiTkVNckli?=
 =?utf-8?B?d1crMWtscXk4cm03NEE2TitHQ0NXWkpUYkRsRjIrb296eHZVTGhXRTJJR3Bw?=
 =?utf-8?B?Si9GQVlKZW00V0RhUmE1b2VzeW1tQ3dOWTM0eVBXYWN3dkNBYmhNQjhVcUV0?=
 =?utf-8?B?dCtpeVdMQnlSYUQwNEJHeXRBWVJVWGZGWW9URmQ2RjQ1N2lBeXpjaFc4eThQ?=
 =?utf-8?B?dVh5RFZ0c2tBcEhLUG9zNzlDcVc3ekErYUN5YnRleU5IbDBQS0FENW1ncTVx?=
 =?utf-8?B?T05mZWxHd0pOaGxOTU51QjRPcDZXOS93MitleEpERDc3UjI2NXk2U1NMbzda?=
 =?utf-8?B?dlJXNERjWmVrSVNkTk4zOGE3amZkQmQ0OFhHSkwxeXVJdU4veG9HY05La3I1?=
 =?utf-8?B?VWN5b2VDa0lqdWhsUVJpdUFabEJ3elpsTWJOUytIR2NIdjJVU0J0dllmYS9M?=
 =?utf-8?B?YnlpRDFKRGRHNVhtOGJJZ0NQdjZYaDhpVytmYlhrZE1JUHRFcGVkVERHaW5v?=
 =?utf-8?B?dzVhYVJnd3YyZUk0UVZLbElQR01SNTdZTHFVODFiN3k4UVJzL3JIUDBaaDBi?=
 =?utf-8?B?c0xlWmxJWWZ1dThSc0hsWmlyR3EyT20yZlZiME5lb3ZRc1lKckUydmQwMFdh?=
 =?utf-8?B?RktpZlg3bWt1RTBtZm9mSlpONW9mVldBbEpITG4wSzB6M0dvWC8xWGVJZmlw?=
 =?utf-8?B?b0dUQXQ1c2h3K1NQSG4rbTQzb2tFZ2VET1RzQllVNHNlUXB3a0poUnd5c0ov?=
 =?utf-8?B?YTFjd0xmS0FBcEZHUmo5UUtqZm84OEdmbUxuQjk2dnFjdmkrYUMzQ3RKNDRw?=
 =?utf-8?B?QTV6SUxEZmJwTlhQWklLNHFMRk5icjZqLzZaN0dwOFVFUnE2ZGhWOXRYTkp6?=
 =?utf-8?B?YVE5L0RZaTRkcnlab2t3RkVmb0lCT0kyeVcwNE9vL0NGVWs4bjZvSGZZNDZO?=
 =?utf-8?B?djEzajMzREtHSnk5RHB1RDdBTlVZL2Fad0NZVWJ1NCtuNkhldStKQXN2ZGlU?=
 =?utf-8?B?Zm1mbEtFTXBIc0JYMEVOR1BTMm9RU1BMY1MrZnpZYzE0a0Y0Vk9HZy9UUlFF?=
 =?utf-8?B?Z1VZR3RQay9nNHBEMjlRdGorVG9FcHViSzcvc1FVNmhwbWlYZldSdXFMemFR?=
 =?utf-8?B?a3Q2V0lZV3prV1daOFNzaDJXTGJnQTBESzV0cUZRa3A5cVpQaTF5T2cvWmdq?=
 =?utf-8?B?TXVnZHVkVW93YlNxZ0JYWnZmTkIyaVRMYzZoMEtFdjB6OFhhNHA3NmRFWHlP?=
 =?utf-8?Q?4uiJnlh1kIcue?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dmpETXZiWkMzQW9WbVVHYjd5K3diZVlSQVZENTlVSTBocGV1d1JZTUV5elZX?=
 =?utf-8?B?eGxKM0JTK0U0Vm9NR0hUYXQyaGVVZVU3MzZxZVdKYk96bU1qWmFVd1NmcFNC?=
 =?utf-8?B?bmZ3eC83aUxncG95UXVENUhKaWN3NVNRcG4zTVNjMFhNb2hZOWtqaENPRUps?=
 =?utf-8?B?empxdGp5ay9kZEc3QTNKV0RXQmdZekk4QlF1TGY2cXVOTUVrbkJkZHduOUlH?=
 =?utf-8?B?QW5iTTEwcXB0RU4vTjBPR0JCZ1crVzN4N2ovMStadFdpNGYvQ0VGRmdXeDhF?=
 =?utf-8?B?ZExBVCtzMGN6RitSSkhMTHhrRU1sT3V3cnB2VG5PQ09lQWRIWC91TDFCUzRt?=
 =?utf-8?B?bXNaT01NcUo1aFVkcFNwYmhjcGVOeU1KVDV1TzJhZmQrKzhsc2FpNnhkZWsw?=
 =?utf-8?B?cjhKbVZ5SUJqajRybWVuNFdiMkI0ajFuai9YWUZnZ29xTGo4N2RkY1hrNHEw?=
 =?utf-8?B?OGdIbmt6dWd3TEhHVVg0empLWEdVTVhKMzFpR0lYeEZjM1hBR3ZxeENkbEpQ?=
 =?utf-8?B?ZkhCaVpETVQ0VTlZYVVvLzMxZkNlSHdXS0Z0ZGVHRDg5QWNKMGpuZ1lLdG5D?=
 =?utf-8?B?bXlzcjZYY3gya2l1RGduWk94bHZEeEcxUktSbFQvWCtXcmROb3ZGNDBaSmdE?=
 =?utf-8?B?bDlxYUlsMjJ3SkMxVTFITnRvWUZqK1lDeTViYTM4ZUttUW1TQ2FkMEJQN080?=
 =?utf-8?B?TmZuaC8vQWwxT3Bta0FtOUxkOWI2V2R2UmJtSmFCS3lkV1Q2azB1YlpNMStm?=
 =?utf-8?B?SU9lVm5Pd1RVNGY3Uk04Skg5emV4UHRFMnh0MnRtUDZuSFVlRy9zYWxwU1FI?=
 =?utf-8?B?dHZKN3hUdVMwRVZSaXhqNGFGdEJ2K3IvaFJZNUtTQ0pzM0NMNmM4TmtLL25h?=
 =?utf-8?B?ZHlKT3ZXa2kwQXZLREN5U3hqcDdmN3ZCQlBJNkZ2WW4xUVFLWTlwVWJQVUc3?=
 =?utf-8?B?WVpkdU9lZ3hLRVJyMzh0MThPeUViQnpUUUZQNFJxeEsyMGtpb1d0Q28wT3hi?=
 =?utf-8?B?RkxCcDJwTWhtaXhHOFJhM2Y1YWloQ2pER1FNa2hrRDJwREx1bnhyUEtFL1RM?=
 =?utf-8?B?Y2VOODFQSG1TdkZOVEhVaU9Qb1BPeXNSRHREYTRmRGE3SVR3VXAvS1Q3Slk4?=
 =?utf-8?B?cnJoNC9zeXcvZlAwTUp3RktlTnByaUNPUE0wZjlDY1ZHQWdrNkxHZklDQWRn?=
 =?utf-8?B?c3d2UUlHaHE0S3BNZnF6UUFtQWo4MEVaVUlqaUgrZGsvSkRnSzU3QllROWJ0?=
 =?utf-8?B?amVHUlJiSlFzd3g5WEU5MGtBb3FPb2V3ejVHMkNEU1Q4amJWTnUzWTRsaWFr?=
 =?utf-8?B?QzRPdWtZdXpwMzhvSW5sZEs4WTlaVHZsWTBIelJweTNxdzJWWDB0NExRbjZG?=
 =?utf-8?B?NGdPc2xzMjlONU5nSnVEc1g2SnBHbEFqTlAwTGh3OUdzeXR3S0pOaU1laktU?=
 =?utf-8?B?WkVTa214NHlYV3RMbnhKM0FNZnBwM2MremRQdVdoOFZiaFFDUmNjNUQxeElh?=
 =?utf-8?B?OHBMenBwVEpxYUxnS0E0NkVyNTV1MUxScGJxN2xXd21XU2R5TkhqZWx1dW9S?=
 =?utf-8?B?VnRYUmFNZTRDRTlFak5Dc1dHZjMrU0g5KzRGb2hlTmZObmdpaEszcHZPQ2Na?=
 =?utf-8?B?VjBQZkRkWCtucGJIeXhSZ1dKTCtzU09TVFRvS2JiVEhJZ3FaSjFLbkx5d05R?=
 =?utf-8?B?ZHZ0clNia3laVllwRzJva2JNSXpoWnduOVZ1dUg2dXltZXRxd2ozMFk5bXF2?=
 =?utf-8?B?N2RseEpQWFB3L3JNZEJsMmFrNGNicllsUngzamNFWSttdnFPQVVncU02OHpI?=
 =?utf-8?B?MUFXYVl0N1p1a0ZWQUx6VmtnVzZhbU0weThNUmRwWGZ5d0NTN3FHMkJpSURB?=
 =?utf-8?B?czgxT21vRGFIQkZ6SjREMUhBUDJyUy93TEJRUUJZUURVWXk1dXZ2TUdDZ2hE?=
 =?utf-8?B?N01hRUFvVStHMWJQSU5JbHJjOG5od21WeDBOMFd0dlZleDZPZUxZVU5hQVI5?=
 =?utf-8?B?SW1WSVBFU1NHVVBqbXpCY3QzZ0daOFIybFpqV0xLTGhHWGNqS2NpNEJOZ3ZS?=
 =?utf-8?B?U1h6enpvNlVhSmVDdU1EUU9yYXNBZlUrODJFemNrdDhzOWhJd2ZEWFEzeWhW?=
 =?utf-8?B?NFg5ZWxiV0k3bzNvK21mVUJPMDZWOVhJV3FpL2ZRM0Eza2pHUU9lbEZiS1Bj?=
 =?utf-8?B?SHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7bfd33f3-cfe3-42bc-796d-08ddf03d6f20
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2025 07:41:20.5694 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zoKWycgmzEepWaQ54pYCEeWSoNYOqvdtPfRppq2TcUfg641C/J9JmXicXGDEKF69oEENVtjRUNEjE7CsvrJ2fqe8PfVKuDPz1BQ/+0ALT0c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF990BCE628
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757490087; x=1789026087;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZPZ4n/omYz7+OaGnm0nJIVOVbXSL3PBR/dEff87oqzk=;
 b=arVDMveIjzgZ03vMZj4ItEzSCWydS17A/GVmJzVA0XczYQocZCMJzjMS
 GWyJnF5wAMN6Ts6LGr8eQVRzoTst5k2f+kR+mMZjgyzVW1e5tgmFKYeyL
 u1bgiZDJCtP/dRfdKj/OSYECzkBhlNYE20PDlCjHDAXfEcTzvHCPytBmK
 gStn2Tmvmo62uVw/NG7JDXZ6gY5zDEC2sELQ3WYxf2dsbcTTl2N0x/rX8
 XKw98Eu0OXEHBBZmaxO3nam4aIGiiO5whU35Fjpo0fheWZKtbaGK9vgzv
 8Vm7ksOr7H6o25CFsL7Jvb6Ki+XQiI0FWeNRDfiSZIsUeYLfHa18hpMs9
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=arVDMveI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next] ice,
 irdma: Add rdma_qp_limits_sel devlink parameter for irdma
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

On 9/9/25 14:20, Leon Romanovsky wrote:
> On Thu, Sep 04, 2025 at 02:57:19PM -0500, Tatyana Nikolova wrote:
>> Add a devlink parameter to switch between different QP resource profiles
>> (max number of QPs) supported by irdma for Intel Ethernet 800 devices. The
>> rdma_qp_limits_sel is translated into an index in the rsrc_limits_table to
>> select a power of two number between 1 and 256 for max supported QPs (1K-256K).
>> To reduce the irdma memory footprint, set the rdma_qp_limits_sel default value
>> to 1 (max 1K QPs).
>>
>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> Signed-off-by: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
>> ---
>> Since the changes to irdma are minor, this is targeted to iwl-next/net-next.
> 
> <...>
> 
>>   #define DEVLINK_LOCAL_FWD_DISABLED_STR "disabled"
>>   #define DEVLINK_LOCAL_FWD_ENABLED_STR "enabled"
>>   #define DEVLINK_LOCAL_FWD_PRIORITIZED_STR "prioritized"
>> @@ -1621,6 +1723,7 @@ enum ice_param_id {
>>   	ICE_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
>>   	ICE_DEVLINK_PARAM_ID_TX_SCHED_LAYERS,
>>   	ICE_DEVLINK_PARAM_ID_LOCAL_FWD,
>> +	ICE_DEVLINK_PARAM_ID_RDMA_QP_LIMITS_SEL,
>>   };
> 
> I was under impression that driver-specific devlink knobs are not
> allowed. Was this limitation changed for Intel?

I'm not aware of such limitation.
It's always better to have generic params, but some knobs are not likely
to be reused; anyway it would be easy to convert into generic.

To have this particular param more generic-ready, we have converted from
our internal format (values were 0...7, mapped into some powers of two)
to what one could imagine other drivers would like to add at some point
(perhaps multiplying the user-provided value by 1K is unnecessarily
complicating adoption for small NICs, IDK?).

Do you believe this should be switched to generic now (instead of when
there is a future user)?
What about a name (this should be kept forever)?

side note:
We are also going to add yet another param, now used only by intel, but
we do so as a generic one: "max number of MAC addrs for VF in i40e", see
https://lore.kernel.org/intel-wired-lan/20250907100454.193420-1-mheib@redhat.com/T/#t


> 
> Thanks

