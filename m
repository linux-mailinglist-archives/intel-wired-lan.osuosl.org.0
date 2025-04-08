Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB35A81778
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Apr 2025 23:15:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8978B821EE;
	Tue,  8 Apr 2025 21:15:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GnbcAjofA8tw; Tue,  8 Apr 2025 21:15:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E198380BDE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744146956;
	bh=Do78a4DG/EqFoooNhOX1atWpr9GD478LPZtCCKQcqw4=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=c+qTuM5AGaGCnk3NGoXs/w0S/iQB2+s2IhJP6pihXd5LnFYYiN4BGdQvgU1SYWoza
	 B6d2n+MiBdOHuBqFht64JDu6pS/Q1zthK6oyMuBSF2onVKI/5S9hovdDSuF3AF613D
	 yQ5iFC1SfM2lsb8qjH9wPH8CoyL1zQIDjGLI97j1dEiU3+Umj5RvbaDlIMcdEFhEnt
	 2tEHZoeeU6uPEe1m+3dvmeHZyZF9roeC6qBTTNIWGxzlwfZgTnp0F0GXukcG5znncj
	 vdipSXCQ24AGs3LeULpLQypSDTrzbxnuZlHv4Wctn7t7fmkFOXsNAfPEhvwO0XfKxB
	 iOXSFxCctAVFA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E198380BDE;
	Tue,  8 Apr 2025 21:15:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 346281F1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 21:15:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2288960839
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 21:15:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Fs8hEOwx9VJo for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Apr 2025 21:15:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 847CF606EC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 847CF606EC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 847CF606EC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 21:15:54 +0000 (UTC)
X-CSE-ConnectionGUID: PAjllVzaTsGTaVY8Pg4/hw==
X-CSE-MsgGUID: OI6jXXY8Q96zoev8kYgt9A==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="48309370"
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="48309370"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 14:15:54 -0700
X-CSE-ConnectionGUID: /6v12pmyRG22+KDXaydtQA==
X-CSE-MsgGUID: iTk/sNAKSwu5tyE/QKZtAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="133101168"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 14:15:54 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Tue, 8 Apr 2025 14:15:53 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 8 Apr 2025 14:15:53 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 8 Apr 2025 14:15:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Z04VRAOY+F6rN6twwdQFJgikd2KoDG5VNpRuwicf4V/dMO5YRiPFqUASQBMCJ2F0+7tHnzAKrhECTS2iBA9AN+uNhauykWAU1unKlQrAxaInq8zCiNxKVmQDNWTx/AK5kfVabaj7y4OqUZyQZJPM7C5SebOJyTSAA0OrebL7Px1Qo1+19qJvD2WJg5Qh3NS+V40cfOThK/tR2lnu+0JF003jw1wtuXbo2ecKbP0E46icqPo+5OtEJp4qpzg9mE5eQCTPoR/UpCsux0YOn/sd7ViMNseXCKq30y4m5IHXxIDYNgHQx7s6bclL3zDEx0XNDvCP2l874wt9/xkQBqP1dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Do78a4DG/EqFoooNhOX1atWpr9GD478LPZtCCKQcqw4=;
 b=Qsk30CwtHLg9+Qw5HaN7Kf9IyBK5bmQguMIflxERrybrxLnzmb4QVt5HSLZJRV9jLg6ao2znZmQbtFtjKnh+AvP5/zevQg357qTG5kbZQf5uQVGaiTSNVCUOkoTA/K3DKmWXClUUTUKTKYMz+e9m62bNJv4wsIOy425k38rN+mZiNQLZTMaK3qddgnew7q8EfX3mIIE4awJImlowkOqLs9X24A2FI5c/0SLJRCRDTFbvvDiQdpxE+UZJeKwQIRBlumThKQ0ZHVV2AFlen/tJ1R9w0HG2pYHwou0OROtMdRTszjw6EkfA6CpVQQVFSMih+1GnSdGs/A7l4u3sGJ0zoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CH3PR11MB8517.namprd11.prod.outlook.com (2603:10b6:610:1ad::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.33; Tue, 8 Apr
 2025 21:15:23 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.8632.017; Tue, 8 Apr 2025
 21:15:22 +0000
Message-ID: <fd2098e1-c5c5-4cf8-b34e-ebe0bd288248@intel.com>
Date: Tue, 8 Apr 2025 14:15:21 -0700
User-Agent: Mozilla Thunderbird
To: Milena Olech <milena.olech@intel.com>, <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>, Willem de Bruijn <willemb@google.com>, "Mina
 Almasry" <almasrymina@google.com>, Samuel Salin <Samuel.salin@intel.com>
References: <20250408103240.30287-2-milena.olech@intel.com>
 <20250408103240.30287-13-milena.olech@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20250408103240.30287-13-milena.olech@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0375.namprd04.prod.outlook.com
 (2603:10b6:303:81::20) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|CH3PR11MB8517:EE_
X-MS-Office365-Filtering-Correlation-Id: ae0897cd-6251-4853-ef76-08dd76e2795c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TktEUGdBbjduL0xKVm1TNTBwTlhPQVJVZUczZm56K21wTXp3QzRpVnM2bG04?=
 =?utf-8?B?c09JcCtQSGtveXVaQ2hmcVZLbVFuTXhQcldYaFVib3JXeDZ2WjFicjJleGt0?=
 =?utf-8?B?aExmc0xLeS9HVzdDaWVLTTVuRm03ZnpvVmFyelc2VXJLSHFlSDJkK3RuWVI2?=
 =?utf-8?B?NkZsMEs5WU5iM2Jad2hOVnc4aUU5eDBtUDkwUStVanBrR3FMdGZXYksvVUhK?=
 =?utf-8?B?ZFAvS1dQV0d0STA3SEdkYkE0MmhLZTRqWWt0allTMldOL05BbDA5Mnc2Rnhy?=
 =?utf-8?B?WWpBdXY4REpuVm8vQ2F1a1MvcWpUVHpaSkZQelkxc3Q2ZjhBZlFaTllRU0tS?=
 =?utf-8?B?cExQV0dKb0hzVHN6T2h5aUpINm5MS1ByVDBGUDRndlBtSFpjQzU3L1FXb0pD?=
 =?utf-8?B?SE56YUFzSHdlSDZramFMYU9xMjZGdEJ1VDgzU3kzeDR2MnhJRnZDMFc2VFpT?=
 =?utf-8?B?S2ozNzdENW4veWQ2alFGZ0FxczlGeDBlYjZ1UWVGSllTVHdBQWg3eXZmamVz?=
 =?utf-8?B?TDhEQUovWGdYWWV0K3NHcDhGZUp4dFNwenQ3Q2VMUDFYZ3BlRzlqVUxEamN0?=
 =?utf-8?B?RjFZWWgwMDVJYU1Fc1hUNk1aR0xBZ0YvS2pLOUphRUJsZ3dDTm1GemlDVjBj?=
 =?utf-8?B?SmdzaVk1aTRaTnppSHkrNTF2aTZBR21zaTUrK2w4WGZqSjlNak92aC9jR3lN?=
 =?utf-8?B?YVRtOG9rKzJqdmhUcitMcWVPQUMwTzBkZlBBUEZ2RHZETkdadGpaMStNV0FK?=
 =?utf-8?B?MlFUSUd1b3QyVFZwc1lSdnFoM3NoekpjNyt5dEtoZnlQMUFQWTM0c01XWWNM?=
 =?utf-8?B?WUhERU5RSUtyaUdzRFVwb0dva2pWKzN5YklEWmRQRWlFSitUYzFvcnRpOXUw?=
 =?utf-8?B?T2JubFlPeW1EaWZHditvL0FZdTRURUtveXlKYTd4SWRoNjZVZFNPeEwzYTdM?=
 =?utf-8?B?MEgycVZPdi9XZVg4THhFcXJLOWRKeVZMbDJVRzdmdENMVFQvVEUyNm04U2lu?=
 =?utf-8?B?b04zNzdZbUYxQSthZ0oyYmJFcjN2dFB2NWhXQjVNMjhMUFozY0xHR3pKUHNq?=
 =?utf-8?B?V2VKZlJnbUk3WklxM1JORUh5TzRLc3NMbS9RckxzdFZ3eDcvUzZmM0JxaS9k?=
 =?utf-8?B?dlMzemtZcXNBV3c1RXp4RjNWYlVVQnNLSDAyYTJaMDRremFYTXV4REFEQWFi?=
 =?utf-8?B?VG1NcEk2VnBtM2d4ZkxnUHRnbXhZbnBVbUU2WlplcGY4Ui9LQUNXZkRHUHVL?=
 =?utf-8?B?YkROZkVRMVRoRHkvMVB0OGs3K2tSRmNReXFMOE95SEs0YkdVQlRHVXBxWXNM?=
 =?utf-8?B?RXNvTXUwOEVCMElocDVFeGVva3JZQ0MvMkxoeklTYWJvRmhaQmNkVWN3eUs4?=
 =?utf-8?B?ZWU0Rk5wZ3JTYnlGb0R6akpUdHc1VVZjZEVxVitzL0dJL2VHenVWbXlrV3JB?=
 =?utf-8?B?U1diMlphcDBaWUNSQStiZWxRTGc2V21VQXc0UVVtcER3U0JPQzQrTjY4ek5C?=
 =?utf-8?B?djRpeU0rT3pkQXRKRlBLN2dZRUlXVStNODNyMWZiVTk2blJTY3JTdmVBUFNy?=
 =?utf-8?B?N1hVYko3M0c2Zk1va1BNSTRHdXplbEdOZFlnZm40RmFRemgyc1Y3VFluZHVL?=
 =?utf-8?B?aHRDU0RFUFp2SWwwZjZxNmZ6Ky9wVVMxM29GWTNmOHFjZGFaNTI5ZkM2ZTJO?=
 =?utf-8?B?bWxIbzgreEQ3dDFQN0hJMkZqNG82ZHYzRS91bG9VT3pCVm8zREtJdlRGOUxM?=
 =?utf-8?B?TDEydDhvanZxYnNqZndibER2cS96S1RZaENDK0w0OFNDNHlCck5xZjFXREVX?=
 =?utf-8?B?WXZpZlZzb3ZkZFZlcTBpS2pLQndEUElhN0pYdlhUdytZeXZTY3g5dzhNM3dL?=
 =?utf-8?B?aHBwVzhIYzYwTThUWGtVUVVMVTF5RVQ4bHRpeGVlSUdnQ2VKTHN6WHE4eldp?=
 =?utf-8?Q?2lS3bvcAiTU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bXZLNXBHZE9oZlIvNCtqUWkweXFOTS9uU0xpQVluTTZPZkQydXFtaittREY5?=
 =?utf-8?B?WXhJcGt2V3JVam9Lc21nZEhFMWVIMHJTanRZaG01SUVLM1NZNUNtcS9xVGtF?=
 =?utf-8?B?ajJPV0E4THB2SWpxYlRDWVhnR1RNd2pBUkNMZHdoMW5ENlNXRG1Dd1NjUTM3?=
 =?utf-8?B?OTBMUlQ2Z0ZVU2Z1czY2M1pMSzF3R1IvWkJVZ0l3VTBrV0hUZnNMSUcyemtt?=
 =?utf-8?B?S2lITGkzSm9RUmtsSU9EdkFYaitOU3UxRUdkWnFaVWNiNG8zN2xacFZwRkNn?=
 =?utf-8?B?c1prNFh6YVMxUlNOOG9PVXYzUEFmY1lnNFhOU1pPT0ZIVXFJQU9vYkZKbmpF?=
 =?utf-8?B?VXUyVmdQL3JackRER1AxQkxhWXd4RlIxdlV0Y2NWTUQvOWJpbms1UUhkbHd4?=
 =?utf-8?B?OVIxWThkaDVEeEpBZW9kRkdMa0JoS1FQclhTb2xjMWhNOXg4QUxJREkrL0dt?=
 =?utf-8?B?SjhSMm5BYkpLQ0tqeGtLZ25ydkRlZVBocmpSWkNYV0kxYVZSSTg4OWRjTlo2?=
 =?utf-8?B?WGplVWZBaEQrVTRLKytVYXJNQ1BKLzBoRUhlcVQ2UFdwTGxUamhFWUd3R1BQ?=
 =?utf-8?B?RWt1Z2w3ZGE0Y256djNvbmtHSjNtMXJsd2phVy9UT29lTlV2SmZWaU5lbWhC?=
 =?utf-8?B?M01EZWF6eGs0dlRjaDBTMUs1aXhoanZxMTVUV1E3QjdTWmtUOXQ2dWJmc2RX?=
 =?utf-8?B?djBSZlU2UGhzTXk0TUNISWtxMVVhYjNqaWJVdTlEVUhVRWIydFlmbzMxNWFB?=
 =?utf-8?B?U3NVVU0vQWZyR0V2WWVva1VFcldiUDNOS0xuS08zYVd0Wm9HZDFtdkxvbENv?=
 =?utf-8?B?TU0zM3A1MmYvV3BiZUV2eDkyU2g3aUoyMVJIN1E2VWlYNVhRN3lrSURzL0JP?=
 =?utf-8?B?NStKeFBRZGdaRjJRQWVyYzN3VHlBeXNUVG5LZy83TlVNbWQ4QUNBSkplRUU5?=
 =?utf-8?B?YzdTV21JTmU3dHpQa05ZRndQNUxDQzVZaEQrMUxIaFBmYzNGODFNK0h4dGhw?=
 =?utf-8?B?WENmM3JwRS94R3hiUDZOUEJiZ0RPSkx1a0Y2VTNNcXNRZlYrV0JxVjYrOFBP?=
 =?utf-8?B?SGhYb3B1dFdCVEFLWkp6aTMzcVM5dVlkOGVmZXBKdWpFbXplc1NWS2lPeVRz?=
 =?utf-8?B?WW9YbXNPWDNydWVwTXh3ZXdQWXNzOXlPMW5RTkZYWXZhclFlTGdSQXNRNXgr?=
 =?utf-8?B?S0pQaS95ZWdPdFgzNjV1Z3lUSWpKdGhQT3pURUg3SzhTV3hGK21GVEhhcW1j?=
 =?utf-8?B?dDlJZ1dBM2dpazhqMzNMQjlBR09yaGFibHZIV2xRSUo4ZFJUK29QZmdBUDNN?=
 =?utf-8?B?Yk9VU01OUk9paTl4RnNzS3NYNG9vVVo3Ykt0S1lPaWJ1TWZrMFdwZ04zZkNB?=
 =?utf-8?B?ZTdtUGUyM3JrQVVxT0kydjhCcHdJc1cyc0E3QjlVWkRHbFl1M01PVEhwUS96?=
 =?utf-8?B?RVVFUlVUc294UWdaN2xxL3ByL2N1T3NMTUFUa1ZNclVpOHVMamE0dklRVCtG?=
 =?utf-8?B?aUUxY2hMRnhaT3k3eFNjVmhoRE5EaTB4SGVsRERzQm85OG1KdEw3VFh1M09U?=
 =?utf-8?B?RHo1WXdzdmZ1OE1kZGx4ME5iSUJQUEh5Z0JvMG05T2tSZVY2Qm9UeDBOZTFC?=
 =?utf-8?B?YUhtZnVxRWVueGRRN3RQVDRsRm0zemRIaWkwSzlkc3ZRZ20zWFU1a0tMTEJG?=
 =?utf-8?B?dkNQaUtSSjByTjJnUGRtZUtwNjk4TVBhYVZQWDBtZkpHUlV3OVY0UHhTdmRS?=
 =?utf-8?B?aUZMazZSTms1aGRRNEFEaFdYNlJNQnQ3M3N4bThyWHowR2d5QjBlRC84ZEta?=
 =?utf-8?B?V1BZcHZtclBjWmZmKzd2VUFJUVlpZlBQRi8wOURUbHBEbnd2S2o0OTc4YVNF?=
 =?utf-8?B?bXZTYlB4R3ppaHMzM08rM3JoeHJQLys0OXowcHdWUzI5QnRubXhpQnVlZEUw?=
 =?utf-8?B?NEJ2TlhCdi9DTjFLc3orZWtOQlVRTG51TXM0U1ljSnBtaTR0VGlrZG1NMGVG?=
 =?utf-8?B?cGJoZERrcC9NNXplTkJabzdqY3hsQWJJTDhkZzFKVFFVa1ptSStucVJIcW5k?=
 =?utf-8?B?OXdkeDVYN1d1eHhqRHptOXQwWE5PRDVpYmF6VVRyL3N2UmRJbmNtckt5TXdM?=
 =?utf-8?B?d3NrdVdYaVRod3BQaVloQm5neUg0WmRNeFF4V0JvT1V0WWxGc1JLS3ZleUV2?=
 =?utf-8?B?ZHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ae0897cd-6251-4853-ef76-08dd76e2795c
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2025 21:15:22.8363 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KC6cymNKUIdSdvvLCDbH4yCdHGsEsXT4qROmsu8+B0PO3W8Ny6p7Bw5Rv1HmUBLGdLtWQ8Xs2ZKLmwHar+i6jwth4WJPub8sHNz30QQVzMc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8517
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744146954; x=1775682954;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=g0a9f7j2CRm3rUhPff/oOscoIzFpDFXTl9Uh73V75oI=;
 b=VEjp6Kmk6dqwbqB7jY9nsix3AulueVIsFQVye0NkP980nFaQ9p3BUT9e
 lUEAI0SFQ799MM74AC+y0diu4PTb15pNyupZTRZMqz0SKM6De+3V7vxum
 RyPy3mdIJuhz9vfip0Jxk5sNwh+ke57yni3s2+WOracj90hOMcSGHa4DA
 kQwp/n6tIGSikPRWzNM/3RjfI+7pbD5PJ6hW446lzwKT3UQURb9v0t83p
 RYTrVU8cFY8FeBc7Xk0y37J4Kq/u30oIAzpG7xu4BBYhieXvizm0dmPfH
 Snat7FNXmNRW+JHz7a+v08ZTyZ8MVwscxbXbZtf/RAOAdhGcxf6qRiZWJ
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VEjp6Kmk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v10 iwl-next 05/11] idpf: negotiate
 PTP capabilities and get PTP clock
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



On 4/8/2025 3:30 AM, Milena Olech wrote:
> +static u64 idpf_ptp_read_src_clk_reg_direct(struct idpf_adapter *adapter,
> +					    struct ptp_system_timestamp *sts)
> +{
> +	struct idpf_ptp *ptp = adapter->ptp;
> +	u32 hi, lo;
> +
> +	spin_lock(&ptp->read_dev_clk_lock);
> +
> +	/* Read the system timestamp pre PHC read */
> +	ptp_read_system_prets(sts);
> +
> +	idpf_ptp_enable_shtime(adapter);
> +
> +	/* Read the system timestamp post PHC read */
> +	ptp_read_system_postts(sts);
> +
> +	lo = readl(ptp->dev_clk_regs.dev_clk_ns_l);
> +	hi = readl(ptp->dev_clk_regs.dev_clk_ns_h);
> +
> +	spin_unlock(&ptp->read_dev_clk_lock);
> +
> +	return ((u64)hi << 32) | lo;
> +}
v9 had comments regarding the latching of the registers for direct
access. Can you confirm whether this is known to be safe, or if you need
to implement a 3-part read like we do in ice and other hardware? Even
with a spinlock there could be issues with rollover in the hardware I think?

Thanks,
Jake
