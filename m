Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C3439A2A8BE
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Feb 2025 13:47:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EEC3684104;
	Thu,  6 Feb 2025 12:47:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nKBcc0yjXUlm; Thu,  6 Feb 2025 12:47:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F408384141
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738846054;
	bh=r1SQYD+Qt5RZhiSbdAPhIChLVe99ndNBHZ6hhZKUndE=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Bvn28kiv5YzdYM1aiL7P6MQ9LmmMg3pYFAyudHpKC/eejVkx5M/hPF3FqaVgKPj73
	 wLiG4zp9ex1EwiaEPYk6EgKgkFkZ7sqbrT/oo6iAO5LsyjxvLu/O9Es3TZpufSjTvo
	 4ml1w/FbsHeaDz2qFPcj51xAsEEfrEj1b2yG5/C/PpsFh8PB8KhwV2fCbCc0wuBXds
	 UawBLPOGUq/5ojDnj0eNdxJeuCaBmox0Al3wkaqSWFKMN2+yFmSUWaf2XI0sW8C3aG
	 vTfEouugJAucI8DsPUyJGBHO6rytbqk1wkjH8q+54K5/BvRD6UEiSVxg1m5z2ohSL5
	 VRuI2TnPU2Q+A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id F408384141;
	Thu,  6 Feb 2025 12:47:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id D9EB5CF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 12:47:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C977D4048C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 12:47:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dV1w8lHYd_gB for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Feb 2025 12:47:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=morx.bar.gabay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EDD6D40450
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EDD6D40450
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EDD6D40450
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 12:47:30 +0000 (UTC)
X-CSE-ConnectionGUID: DZ5HynryQJKA+Zj4cMbBIQ==
X-CSE-MsgGUID: IYNR37ZEQyquq6jD1U3/Dw==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39343087"
X-IronPort-AV: E=Sophos;i="6.13,264,1732608000"; d="scan'208";a="39343087"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2025 04:47:26 -0800
X-CSE-ConnectionGUID: GOXAytYEQc+C56dxg36y2Q==
X-CSE-MsgGUID: 5RMoPB5qRuyhVlLcmDdrwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="112096621"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Feb 2025 04:47:27 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 6 Feb 2025 04:47:26 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 6 Feb 2025 04:47:26 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 6 Feb 2025 04:47:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W5baUQ5TtaXtEEyZ2kTfpeCL+LEQU5hB/URlutJODbh+5v9VJChcZaFmJkLn7ykOP+xji3IJEvFVmQMEaUWndPP8m7Dl0cRqxd5hsCkDgVQ4Nhsg+tthIs4matr+fJVp8z0wiL3sAXGZxV2CLCOvU5ZZ2R3dJTT5SRoxyfTxoGsEzP9DJW8D8fXN65573R3GJplbasWfC6HdDrbmhjpmmm7W75Hh5dpqgceD8vXDm+AGPZwWqbH+2t2MyHFTvJctqBP9KT39edzhOxCQrEz0ia44BSYRemTJzUHMJXKwR8sBoZiIlHys/6Sl6uMCXFwVuisGR316EemN5msotTUP6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r1SQYD+Qt5RZhiSbdAPhIChLVe99ndNBHZ6hhZKUndE=;
 b=r0SckErcIXV9u3lIlb+wr7gRI2/EnblCRjAQIkjR1o4aX6oBFtpFfApFTP+YmPl5EHXwWfNEL+XD6NF7pZnsQynlD3dbSCo7zY1KF/ntEW3WRynik24hFj9E0+36ojNVSCXgYYKoz6xp83bvkWb6vJ6glAz2CicNtz8YSDRZ3PuKIDTX1O4al0L8vpyiDbNdS7u8E9DN+FX2dSwIh5uR2pt8NjAWyJ5DjhTkgKJ6+j4fh7meejYg9v2tjAuVLaSA5iP0BWXLRyN4SeG/3XOa+xiQ/AocHG9gWQxrIytQDMzk10TBimgYkU3jMbf004a85YVSpeM+zhMkYI+KUHTrtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6307.namprd11.prod.outlook.com (2603:10b6:930:21::20)
 by DS7PR11MB6040.namprd11.prod.outlook.com (2603:10b6:8:77::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8398.25; Thu, 6 Feb 2025 12:47:24 +0000
Received: from CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14]) by CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14%6]) with mapi id 15.20.8422.009; Thu, 6 Feb 2025
 12:47:24 +0000
Message-ID: <320b5101-8c57-4fa0-9f22-99b984c7a48c@intel.com>
Date: Thu, 6 Feb 2025 14:47:16 +0200
User-Agent: Mozilla Thunderbird
To: Zdenek Bouska <zdenek.bouska@siemens.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>, "Daniel
 Borkmann" <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Vinicius Costa Gomes
 <vinicius.gomes@intel.com>, Florian Bezdeka <florian.bezdeka@siemens.com>,
 Jan Kiszka <jan.kiszka@siemens.com>, Song Yoong Siang
 <yoong.siang.song@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <bpf@vger.kernel.org>
References: <20250128-igc-fix-hw-rx-timestamp-when-passed-by-zc-xdp-v1-1-b765d3e972de@siemens.com>
Content-Language: en-US
From: Mor Bar-Gabay <morx.bar.gabay@intel.com>
In-Reply-To: <20250128-igc-fix-hw-rx-timestamp-when-passed-by-zc-xdp-v1-1-b765d3e972de@siemens.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL0P290CA0010.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::14) To CY5PR11MB6307.namprd11.prod.outlook.com
 (2603:10b6:930:21::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6307:EE_|DS7PR11MB6040:EE_
X-MS-Office365-Filtering-Correlation-Id: 0ff9df6c-bfbe-4516-8b84-08dd46ac677b
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|921020|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TDI2a2hJQ2M4b09XMjVYZ1Ntanl4N0dtdkpGMUc3NW0yVmRFS3NZajNZQlZJ?=
 =?utf-8?B?WmR5dTRuUVd2djJucFB4RXMrcDFoSWowS25yR2h4S24vT2Y4cXZJZHZsOUc1?=
 =?utf-8?B?WVM0MEw2aWhwREkzNkhjaWN5VFBGaG1XQVFiTTYrN294ek1zVmR2T0l5dVd6?=
 =?utf-8?B?MEtEWXNTNDlFdFpQVnlMa2U3K3JOakxibnpFUVVnT2ZDWUE2Qno1c2MvRk1l?=
 =?utf-8?B?QlVqVFVOZ1NXVlB0S0dlRzc1SmlzT1FCNEk3M2MxNUJaVXVRWUFBZXlWVmhQ?=
 =?utf-8?B?QTZSQzdNK2tZYjh6dzgyazV5c1F3d3IyRi9CM2Z5UHpDblJSeS81c1hodHox?=
 =?utf-8?B?WmFIdXU4cWFaV21hejNWc2Zuc3R2NmJBdWJ1YlRqUnRrOXUzcmlGQnBtaktD?=
 =?utf-8?B?MGt1c2FNMXY1NGwxVnVuUVZ6NDNrS1NLcXdjd2QxYWJaUzU1TnRRZFVsRUhX?=
 =?utf-8?B?enp0cXd6NXhuTjNGRmkzNU5MN1FEQW1UNVVtNUlMMWNsYS81elVDVjZxdFNs?=
 =?utf-8?B?NFphMTEvbWlsQzdoRThsMWZUNHpxWVdyMVE0OWZlMnZKYWd0WWhKUEdOTC9w?=
 =?utf-8?B?YnJRRCtqQy92NzNmbG5haHBLWlc4eHNieXVnWUFvUDNOanN4L1RSMmdmaVho?=
 =?utf-8?B?Ukl5bHVQb0h1b1AyMUFaYzJhTVQzei9TMmUvV1ZaQ3FQa2NJNXRXTDhTYTJF?=
 =?utf-8?B?ZTJ1c3lGL01LamVITE9TWDFKbkNCbU9YdTdJTHZNQXFicElLRmtCS2ZxVHpO?=
 =?utf-8?B?WUZRbjF5cEh6Q3RoZHNlQThjOVl3Sm1CeW9iWHVydG8yN1h6OCtrMk1meXVq?=
 =?utf-8?B?SnlwWC9Ba3FvRUkzT241WHZPeTgxbllLRGQzODZSMzlhUXBsTFVPUFVFVUVW?=
 =?utf-8?B?SDVZUHI4aGtoaktOS3dTelp5SDJCeDNnejVuWml5dzg4Nmc3NVJQVlBaekpV?=
 =?utf-8?B?Zm95S3d2L0pxTm5oUUtNYktlUFNHaEVORnNFSXlxZmZjRGNhUFBaN2EyeVFv?=
 =?utf-8?B?cjQvekV0YnV2SlByUC9YalVvRGtkaU5nWTRqSExXQXRnYXREcmFQRFFxZnZF?=
 =?utf-8?B?STRFeUlsRC9FeVB6dGlrV0U3MVBKODMxKzcvV3MvV1RqOFFxbHlodTBiaGtx?=
 =?utf-8?B?RlVDYmRDYnp6MEVKL2JLa3VqWXJZamI5RWkxTk5nN2VydFRja0dSeFNrbkhI?=
 =?utf-8?B?QU1yc29HTXE0cmluRnRWV2I0Q21tQ1FBNHEwSzQvYnp4M1kxVTJ0eDY3THR4?=
 =?utf-8?B?TE5TRW1ZeDRadlQxVFZBSGNra2ZnMTUxWm1TcG5BTlJ2RXArUVJDT1VIanBs?=
 =?utf-8?B?Vy81RHV3eGFuL3JaRllWb0daWlorUks2ME1ZNlhNTkhaaWNsN1prSDlLRW4w?=
 =?utf-8?B?ZUlHUnF0VXBobzJkYmE2WUpzT2hWVjRVRzIreXZZNHZRN2ZlVGtqOGNXZHl1?=
 =?utf-8?B?SThLc0pVYzRBYmtzbnl2Q2ZJejRjM2xldUdFV1gwVXpaSlNJSi9KNEdoR0pJ?=
 =?utf-8?B?Vmg0dzg3dDBsR0dMbmVFaU9wNXJXbzJ6T3RDKzBsWGwzZWNVSDhLUnBRaUFM?=
 =?utf-8?B?SDNIM0JmUXdMTit0aDdHRDVmNmdvSlVkSE01SVdXVytEUjNvVFRFdlg3OUdi?=
 =?utf-8?B?OUxOQ2lOd1ZQanVwT2tJSmRmeDZqRHpzZ1VScnhncjNlNkdUNlkxTUt2NjMz?=
 =?utf-8?B?dVBKN1pJZkdFa1J4Y1FFMHNMenl2OHpqTUpZYlJ2ZkVMa0JIQjluQzUyZXo0?=
 =?utf-8?B?ZFp4M2NDKzA0U0d4WXNFSmIybDVZUFIrcGorb2F0K3IzL0VkWmhsUGI5UjNy?=
 =?utf-8?B?bzEzSUV2K3Y5MHpNZ05YZTVFbUhzS1hZMFRxUGZ4dXA3Rmtna2lUQTdRT21r?=
 =?utf-8?B?VHJKVEVVdUJGb0xVb0c5ejJUZllScVR1RDdMOWdCMG5HMDBWamI1RW5rSGVN?=
 =?utf-8?Q?IExkxCSYLng=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(921020)(7053199007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YW9Ed3RNNXl2aTFBMGRYSXdSTjA3RWJDOUcrRU5JTzNUTlRua3hmeEdMVjg1?=
 =?utf-8?B?Lzdua3VCNFg1dnh2cEdLNkhqUXBqL09VR0J6Rmo1eDY1MUtBUEpwWXRuUThk?=
 =?utf-8?B?Z1hqd05QaW44UFRFeEYrdnlNVmQraWM5MWpsdHZvVmw4TTJSdElDaTdCWlI0?=
 =?utf-8?B?ZGUxOGM3L0E5ZURqOVhkTFk2eVFTcEVPaXVCSnB5M0lLeXl3YjY0ZTdWMml0?=
 =?utf-8?B?NjIrOEFjbW9ONVNzWHZKY3lGOFhwM3BLcmpTRlBaY1NFUU1pb3lBSENtdk1Q?=
 =?utf-8?B?SlZ4THpuN0hJOUg5UjZXQmFLcnpMem5ZMkRFeUJQMDR2MStxTTZuamZTaXdM?=
 =?utf-8?B?aElya1lRd01WenJmMFcvdEh1N2dFSGtXL09haFNtNTVkTUJTTSs4UUw2QVFQ?=
 =?utf-8?B?Z2lDWGQreGp0WGJERVoxQVZxc0xnVXorczdVZVdSNEoyMVl6aEtLTHlpOFlX?=
 =?utf-8?B?Vi9icjBrVUhVTG45OVl5a0xZaWwvZEFPTW1LTWxoSEpKUk5xN242Zi9kazlL?=
 =?utf-8?B?NXFhdldIL0NjMnJIbXd5NWtXZE1WNlJRb0Y4YUtqR0YwNUE2alV5UVJ5dnB6?=
 =?utf-8?B?alU4TVpMTW5SV0VYZFh6a1VkalFXN3lBZ0JjTzRSNUJlUHJ5czVrQytUSFRK?=
 =?utf-8?B?VFMrL01PTkpkVFRmQUFYWXQ4Z0ZjOXhWRVNkTFVSeEIwMUhNWjExenBjdVh3?=
 =?utf-8?B?RUlwQlkySWk5bm5jSUtjcVVWSTJWYkFNNFFMNHV1MDVPRzRSNnErbDZ3ZGlp?=
 =?utf-8?B?MzRKSFlaTnZsK0ZqNVRnZ1pJZkNTMU43MWdQYUhabjB3U04yQ0k4OW9vV1lK?=
 =?utf-8?B?T0xxcHhOMGE0UDRNVmdxaEFzYXlNUWk5V2ttSDFFaVluUzlFV1BGUXBZbTVV?=
 =?utf-8?B?aDl1YU9LNEtNSmhEbUkxNFJLMVU2Z0FZbW1BdktrT0d5bGdJWnBhNXprR3dT?=
 =?utf-8?B?Ky8xMVRITVBWY040eG10MnpBbks2VldqdEd2c01sUWtVTUNMWUNQNW95eGVH?=
 =?utf-8?B?NXpyd25XakVBMGd2QmZvT2x2dlRDaDJQZm1yM21YbWowNFVoa0Z6dnZoZGlY?=
 =?utf-8?B?Z0RMOGRHOWtla2xCQWZ4RmIrK2sySW9MR3lRdVg3NGpUdjQ5TENDQXpYQjNn?=
 =?utf-8?B?WE43SDhReUZITVRKSDZPSG1ORTd5RHAzQVhvSVl4U2pYYTlrQzFOTDFEN0RZ?=
 =?utf-8?B?RlMwQ0lFQ0ExWjBaakhjQjIydkQ1NWRTcEw3TThtbmxOSlFFakwwaUJWM21M?=
 =?utf-8?B?eUI5Z0V6eElYYTI5ZFVmU3A1ODRmVWZHcjVlRU11OXFISGxadFVocGl2WU9m?=
 =?utf-8?B?QlVwbi9kN0VMVElTSk0xaHdubEdmYjVmWm1kZUNLcTRFMjM2ZUdQRklSbWdH?=
 =?utf-8?B?UWNMTDNpRnZNTmYycGhNNTZYQm9UWU8wVU0xTGN5Z09lVVgyZkJFb1BTWG9z?=
 =?utf-8?B?bXN5OVRkSlIzVTBGTkhSakVlUGFka0paa1VlSWZUangzZGNLUkNiSk05WHg0?=
 =?utf-8?B?VkVJbi9ZNS9GeFlSL3g0dk9nSG45dXhVOWdBMnJBcGJ5RUZXYllHTS9CRnov?=
 =?utf-8?B?SmY2WVdtSks3aWZXUnkxV3RjQTRuS1NvcTdHb1VCL295TFprejVvRWlLNldX?=
 =?utf-8?B?SDF3ZEN2V0doRjdYVXZQY0JtU1ZiNmFPNEc0RVJuRXNwY1VET1drR3RXMHRy?=
 =?utf-8?B?ZEJybFFFcEt4R0YrSUo3VEM3SEd1anpkcURoUjg1OVFYeHFxL045U1VaOTRY?=
 =?utf-8?B?ZXIza0JKY0V4dXRDcEhRS0pQZjFiV2pGWFptNkdidmJvb3pvUno4RGYwL1NJ?=
 =?utf-8?B?dlExbHdLN2NKTUdRWjhFajNxRFk1amlWdC95TXFMOXVaalJRdUNSSWJ2dnZv?=
 =?utf-8?B?TTAzZERjSmpKRXNqOGF1aGV1S3ZLbkFZeURuSVNZcC9KQmU1eXFUd1hUeW1V?=
 =?utf-8?B?S0VCU08rWndTNUdFNmlDVXIveDIxOS9CZWMzTkdwYTh3MnNIelJSQWtuWjVB?=
 =?utf-8?B?bktXNnk2Y3J5UlpjcjRjU3Izbi9xcktJUjI0VWpPNm43Y1NzdU81YjAwNDZI?=
 =?utf-8?B?K2R5amE1SldMajk1K2lEVTZxaUM1K2JSMGJabFBaVFVza1JicFJTR0ROMFRO?=
 =?utf-8?B?d0ZuYXdmK0h5Ymc4MlFqM292aDdhNi9PNnpKQi9ESTFFSWFuZWRjK0poSXZQ?=
 =?utf-8?B?YXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ff9df6c-bfbe-4516-8b84-08dd46ac677b
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2025 12:47:24.4169 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: s2B+EW4Eq1AinkYDNBdS9qboGyQIdHcFgYSr1zWjNnse8c62oW2T02ZA+6Y9b8XhcbqwiRz3D6S2GEbkiHjJdr7tW8IiPehuujPJodDsVl0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6040
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738846050; x=1770382050;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fdRedb+SorMV1iGuy7iOI7RsFQHlcONSVHWRSUtak8U=;
 b=QjCKNauhVaGXKTaKeOeSS0hSp5ay3A+oWp5qlt1hMGiUVkmx7Wg16Zz0
 iXX7eSKXvBxmlIvJhIWMRyrFn3Imk5IEOciBC2FtWe8QF50Kh5lFWJUKY
 DoZGJrWSYD4IXrFuSomKoNjEVAAbAAGxOM7dsdIp7un+bFltM9AwCxFi1
 JGU4K81Hi+abuqxBcs/ttdNuAFNNbPfbj5yIE5iqnAEctRV4sE9YZ/X5i
 n9k72Xj4ghZ6MQYAXn9hbUL4o4jf2Hb8jCrA+2h+7NvA9OlrXqTaKo0dR
 13tnZ8tegpBJrYpScJzgPCuyxRlZocBkvFXyeCfG1+WFrlWUk6iGiI5Z1
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QjCKNauh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] igc: Fix HW RX timestamp when passed
 by ZC XDP
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

On 28/01/2025 14:26, Zdenek Bouska wrote:
> Fixes HW RX timestamp in the following scenario:
> - AF_PACKET socket with enabled HW RX timestamps is created
> - AF_XDP socket with enabled zero copy is created
> - frame is forwarded to the BPF program, where the timestamp should
>    still be readable (extracted by igc_xdp_rx_timestamp(), kfunc
>    behind bpf_xdp_metadata_rx_timestamp())
> - the frame got XDP_PASS from BPF program, redirecting to the stack
> - AF_PACKET socket receives the frame with HW RX timestamp
> 
> Moves the skb timestamp setting from igc_dispatch_skb_zc() to
> igc_construct_skb_zc() so that igc_construct_skb_zc() is similar to
> igc_construct_skb().
> 
> This issue can also be reproduced by running:
>   # tools/testing/selftests/bpf/xdp_hw_metadata enp1s0
> When a frame with the wrong port 9092 (instead of 9091) is used:
>   # echo -n xdp | nc -u -q1 192.168.10.9 9092
> then the RX timestamp is missing and xdp_hw_metadata prints:
>   skb hwtstamp is not found!
> 
> With this fix or when copy mode is used:
>   # tools/testing/selftests/bpf/xdp_hw_metadata -c enp1s0
> then RX timestamp is found and xdp_hw_metadata prints:
>   found skb hwtstamp = 1736509937.852786132
> 
> Fixes: 069b142f5819 ("igc: Add support for PTP .getcyclesx64()")
> Signed-off-by: Zdenek Bouska <zdenek.bouska@siemens.com>
> Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Reviewed-by: Florian Bezdeka <florian.bezdeka@siemens.com>
> Reviewed-by: Song Yoong Siang <yoong.siang.song@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 21 ++++++++++++---------
>   1 file changed, 12 insertions(+), 9 deletions(-)
> 
Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com>
