Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E265985428
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Sep 2024 09:28:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CD98984544;
	Wed, 25 Sep 2024 07:28:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wjTV4NUqsIpE; Wed, 25 Sep 2024 07:28:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 81D9484745
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727249330;
	bh=IHjBeUQOI4U/yhKmF4tEHs/LHte9xjLdbJ76E9XKIpU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=T6UUQEgu+lNuUpdLsZoMDUO/bhsI8Qce1Ci+L6vC/E+mGNuqDuQekUNrhMnYsVpbU
	 ODp54tw1naPLTpTMxkS5Y84PbKyoiwI3aXDVGOXW4BRTaDXoqBHUNHFcxWj6JgUuPC
	 t567q3xVVPfr/Rcu3Sg9ILJ41IbF8fjKVr4eeIMR3mbx91YWSHYvNk5cbqZSH+K8Yh
	 T+BJK3Lmxe7YvdzV6ft18sPah279UfVIAuCN6vM/Y4uMihIjFwX3SWW/Pzm9ZPnXs6
	 ai41h6mK03Fhq8b8JPOclEL+zlG2a1c0qJeRRPUSOFNveLTeNYPGCDq4eUL+45vopu
	 3k7jsNbaOtIsg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 81D9484745;
	Wed, 25 Sep 2024 07:28:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1F5391BF38D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2024 07:28:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0CFE44040A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2024 07:28:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wcvtfIh-0VvP for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Sep 2024 07:28:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=morx.bar.gabay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A3CA340180
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A3CA340180
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A3CA340180
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2024 07:28:46 +0000 (UTC)
X-CSE-ConnectionGUID: vvz4hyUyQaWq7ygPY60eHA==
X-CSE-MsgGUID: IOMjK6mlSbCj49JZph9fQw==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="36848139"
X-IronPort-AV: E=Sophos;i="6.10,256,1719903600"; d="scan'208";a="36848139"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 00:28:41 -0700
X-CSE-ConnectionGUID: Gia+ZI8uSKqdh1mIa86v/g==
X-CSE-MsgGUID: IHtNR5Y0QIqxTF4lHKUTVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,256,1719903600"; d="scan'208";a="102442469"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Sep 2024 00:28:40 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 25 Sep 2024 00:28:39 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 25 Sep 2024 00:28:39 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.49) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 25 Sep 2024 00:28:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GTxbOLNIOFp5jWnwdb0O5Shcle+pLQ3yjEbAtB2C0QTNHTHPXCRdB9d7MCxGH95MeoYkawLvnhyUaV+TygnsEVfOJ4MZxREzr3t/TXAUBQ7XX87yNvb0ydhUg+Qc8Ze+PibIFuPj9LwmOro4j/KsAVvVICEcYvI/dlrcqWrnzFXBj+CFVDmxYSQZi7v5yabFUVERKeQ0bzRlzr7RMvLE061tZyikSplJYUfBZiLS7rkUFlc0/Zadd8td5TkehHIuQ7aCE/eluS/KZiAXzMydbgNPer8k/1YZnQKpOvg1RlgcKCR27uMAvZlA4WxTWoUGpfhYp/Q7yqYjRcNw/jcH3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IHjBeUQOI4U/yhKmF4tEHs/LHte9xjLdbJ76E9XKIpU=;
 b=H7y43G5l+gsiVIFoeB/LjN5dX+vDc3RQ3quVKx8/mWTqjiuhjzI3Ve94JGNYyOwJYe2PQvWzultZchMjz9Um9XXsZQuCLxg28RRb6mdIcGvCbFlyxmckg6xPIl7QGL9NAcoH0WwjuSu1hwmbx+vlxTC/AOg70tfQbIqXWw9zyxTRcBeWBPcqhLu5Ovw+zmNtuqprgO2jySXIzgrExAx3wU8XRte/f4YPoi3IGr3Rl49+raOesXNP2qHwxM2ZGTUYHZQi51no3poK5U8s1Gb2Hdby/hb98DHIE1Bz77rWjhEfM3oqBDXfoCd9LR0fRZa/1JS8tElR5fyZLBw76N5Ycg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6307.namprd11.prod.outlook.com (2603:10b6:930:21::20)
 by PH8PR11MB6856.namprd11.prod.outlook.com (2603:10b6:510:22b::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.25; Wed, 25 Sep
 2024 07:28:37 +0000
Received: from CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14]) by CY5PR11MB6307.namprd11.prod.outlook.com
 ([fe80::1fa2:d2f9:5904:2a14%6]) with mapi id 15.20.7982.022; Wed, 25 Sep 2024
 07:28:36 +0000
Message-ID: <c3792285-1a36-4c48-8db8-69c28cfa8646@intel.com>
Date: Wed, 25 Sep 2024 10:28:29 +0300
User-Agent: Mozilla Thunderbird
To: Takamitsu Iwai <takamitz@amazon.co.jp>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>
References: <20240906021719.37754-1-takamitz@amazon.co.jp>
Content-Language: en-US
From: Mor Bar-Gabay <morx.bar.gabay@intel.com>
In-Reply-To: <20240906021719.37754-1-takamitz@amazon.co.jp>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL0P290CA0013.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::20) To CY5PR11MB6307.namprd11.prod.outlook.com
 (2603:10b6:930:21::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6307:EE_|PH8PR11MB6856:EE_
X-MS-Office365-Filtering-Correlation-Id: 13d5a77e-f6e9-46bb-d0ec-08dcdd33ab4b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MHpmZy9mZ01taEt2L1YxZ08waVZVTlo2MnA2cWRuNHR4NGNHT0dmTlJNQmhy?=
 =?utf-8?B?dCtrdGZDWTVuQ3NXci9vN0Qyb3M1MjluQUpQMDVSRUE5NURNdHFpZnJvLy9X?=
 =?utf-8?B?VmhOaTVmNUMzTHhkU0V1YmUwQm1VdGJYazExdmd1VmhtSEd5TExNUGt5QUFi?=
 =?utf-8?B?Y1hKcDA2eGt2TWFybzVERVA3Y0xPVW1FdXdCV0xva3E1ZUthdnYzaEdMUTF3?=
 =?utf-8?B?Zk5oelpzMmJoUEJmRkhiZEZYM3hQQXVrR1ZxcEZkMWlRcDV2Qm5jWmVCOEJG?=
 =?utf-8?B?dlhHSTBkTHIxelMrejRxa2lheTVaNktqK0t1M3hhb0JjZkdmcVQ4RGd0L1lS?=
 =?utf-8?B?QXk0eGNFeFIyWlJBdmJndU5DdGhpNVdWNEpvcFdUeWlXRFBGSXc5bE83TFN5?=
 =?utf-8?B?ZHQ5OVJ0OFc0aDdleU56Q2ZHekErY3c1S3ZhaC9XZHlVRTRYMzZLNHhCaXo2?=
 =?utf-8?B?RXNrZ0dZYVUvbkp5QThWVVdLNTVwSWFUbHBaNFBjbTJrNjZIN1kzaXhuM2ZU?=
 =?utf-8?B?WkxxUndGaHVySG1Ubm8wd1VoeHVSbWlpdUJUYlZwTUtwZ1lLRDQvbjJyRHdE?=
 =?utf-8?B?bVBNM2NMc3JCQlZrR1krMVNSMktRekdXMGxHeEpjazRTdmhEZ2ovKzcwVnZZ?=
 =?utf-8?B?anp2TFpMZzZsdXdZb3Y4M1pha3ZBVjVQTjVJWUFWL3o3blZjNkx5YmxaRmhN?=
 =?utf-8?B?dk5ibE00QWQzSEtOY3l5TTh0dmU1TjJlSkZGcDZKYys3T0p3MHczYjVXQkxE?=
 =?utf-8?B?TDMxWDZINUlUL1FhU3VycjNPcmN2dlJSZGhZeDhqeUk1Sy9nWDF6Y2xhNlZR?=
 =?utf-8?B?YkRIRWNuaTI1cDh0NXUwbnpNdEwyc3VTcnpyM2Z1a1NvRVdCU05zZjNmeDlB?=
 =?utf-8?B?YnVkWFB5RE81NVZxMW54c2FMdlM4STkvbVJtQnk5Z3krZ2lQR01BWnMyV0NV?=
 =?utf-8?B?dC9HQldjbFlwTTN6eHhxV1N4L05ZNkVLeWltTEh5T3lrVzlBQ0FlaDIybUlO?=
 =?utf-8?B?c0c2Skc2WXFSeUFoNWl0T3Zxa09hVTNIdm9tQzhIYTIxdWFwNVN2L3BrV3Q5?=
 =?utf-8?B?VFMvTTdCYjBOY3NYTnY1YWIzdSszYWduOHlPbi8yWFRIcUpoOFFMR3kzb0tD?=
 =?utf-8?B?NUhENm9VZTI3MDAwRW1KWTI5YkRBYlR2c0hXM2JyeDFWUmx4aUpVMW9tMlR4?=
 =?utf-8?B?VW5pMUdWWFVIVzk5Y20rWDN5VW5xcjRTN0hsVkg0ZnNpUXQ3WFVTODB3N1Az?=
 =?utf-8?B?dy96NTVzQlFKNTVaTzdUSlN0MnB0cC9FMXNPaEVsKzdrYUxVUlJYRWVtTGFF?=
 =?utf-8?B?ckxsZytMSERad1RXd3FkdStLNDlPejhtV3crM3RmbDBQdEhvWDJpWmdQZEtT?=
 =?utf-8?B?aTdvMElYVG8zcTQ5VzVtOC9CdlB4OEJZTkxKZkxvQXcyRWdxNU5vMGYyT1pw?=
 =?utf-8?B?R3dUQU5vZUE0bnVEc3c2eDJYbkxiL2RHS3VnN1J4b3FqWlpPSlFnY3lFYnds?=
 =?utf-8?B?MFBPbUVxSzY4WnQvZFlsVU5nY1FaMkJjaG5LUEpobi9pekUwRXpkNnJBcDFX?=
 =?utf-8?B?QlVJenJzQzJFREY1VHdzTmN2cGdzMXZGbGMyRUNkb2xFTGJWYUIvYzVmNE9p?=
 =?utf-8?B?NmUxcEtwemk3eE9DMXRFM29mdGFsb0QyaXFTQTI2TWxWQXJKZU9ubWVhUTds?=
 =?utf-8?B?NE1Fc045dXpqUmVxV01BQW4wRTgrTmxiVGg3OFVDNFNPOG5aelMreU9HK1c5?=
 =?utf-8?Q?E030IwZEzoE1OGQ1NpemvqMkgkrhIbJmqIYv6k1?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c01FYnViQWZvY3ZHaStkb1JuZ1FwSVB6NkFIajdGMS90M2NlZktrODZNYUhQ?=
 =?utf-8?B?d2RoYks3MlNPb1g4RHozbTdycXpyQkVVUTB0YmFRV1l0Sy9jNG9ERVVIM3dI?=
 =?utf-8?B?dFA3SDhmYzJCV1NJWlRnRE9iZ250TGErbmx2dHpicW15Y1ZoRVd5dmVoSEdh?=
 =?utf-8?B?SVVVSzRjZlh5Lzh4RzZTcVRjYmN5czF3anBHOGRMRG1WcVBpbTBrY1V4RVgr?=
 =?utf-8?B?VU0yRmtZNCtlNFMxNU1RTUNqaHY2TXNSSVdJMktrYWxFeEpJQVhCbXZoQ2dy?=
 =?utf-8?B?Y2FZOCtmNXhDc1ZTb1dyRE9mNE0vejNCaTZ2VE8wNzA1M2wrNDJ6UGlZWDNV?=
 =?utf-8?B?U2VkQjZBSDh4a294WVNEaTY1L1VZc0hxV3RhQkM5dXR6WmRZeWNtM0RFUU1N?=
 =?utf-8?B?Y0NxZWlUVDFPZlZLNlR1VXBuekZ0eW4xc1NSVFBoQ3FCMnRpeGZYQ29DRkh4?=
 =?utf-8?B?QkNVREU1UCtBWUN6L0g4Zk1rRTRPRERIei9zempreVlnbXZUVWhCODU2Y3A5?=
 =?utf-8?B?WUtrWk1ZRlBWcXVQbklwalUyWC82UWk2S2ZsRU1sS3h5Z0cwL0JkaytBdjRP?=
 =?utf-8?B?RTdlZ0JBQjFRakxOdTdWcTQ3d09BOG9IaDZTdXpwSlFpN2E4eEpmUCtuVXQ0?=
 =?utf-8?B?eHlOQWxHbXBqUG05SkUwZzhrS0c1OXJFSCtIY3JpZFdTSno2VVY5Qm9QYktC?=
 =?utf-8?B?WllpNU9xWm5SOHZtUmFTWTBkOWxlKzBlelltOXdzZEpza25vakkydVRWT0xt?=
 =?utf-8?B?cTYwbU9EY1RFTzB4R3FObk9aVktuYVduaSszVHU0aFdzR3RFeTN5UnZjaEE1?=
 =?utf-8?B?Ni9iOHFObTNsQUJ1VncxU2hvRVBGM0NKTERjT3dXNXkyUkRnMTRiWG9UR1ky?=
 =?utf-8?B?ZFhrczZYS1BTemEvZFJ1SEkvVk1HWHlCOEJwblZaR3doR2V5emdaNElueU5m?=
 =?utf-8?B?SENpZytLQ3lWVUYzWFhXZ2pnMFE1cVRUN3dYNHZXTDRZdTJraHJvNHorMmFv?=
 =?utf-8?B?RWlEcURMeExjL3g2NDhDdTVrOUtNV2N2RjBGblhvSjd2aEx6a3NqOEw3S2xw?=
 =?utf-8?B?WENrYjNYT2dodGZGQTVGYXdXd1NDbWx3SWZBV1R2ZWR4dm9zNmVCU3dCa1My?=
 =?utf-8?B?VUNEcHpiV1Z5cGRBWXFxNmY5dXREZHIzYVZZSVIwTUphbVkwU0xXeHlvV2dn?=
 =?utf-8?B?ZXJEWDM4V05jNEpzQnloR0xhc0xNYnBRRmNUeEhHQjFjZDE3eGd2QXdKR3dy?=
 =?utf-8?B?LzZBM214eEZzL2hZMkdNYnNiemdEYlJVSDJZNEFqc1VkN1NIeHlWdW5JaW9X?=
 =?utf-8?B?MDFFZmJscVVnc0xESmNPa3pvZGxyMGJ1ZXZ4Qjh5WDRHMWtreUxTbkdzMEE4?=
 =?utf-8?B?azB6YStvaFdrYnA2Rk5rVXdyeGVwNlZwaVZWdWNHUmJ6N2V5UUh4d1YxSmRz?=
 =?utf-8?B?cTdMUms3SWhnd0xKTlNEWTJZTVFDQ0ZTWnJuR2Y0NjBmYUNleGdlc0F0NVFX?=
 =?utf-8?B?ZmlHLzU3SzB5WjBoTURkZHBWUDJGMzBiYXdEOXljY3VsdmdaOEJlcUtzUDZv?=
 =?utf-8?B?ZytSOFFIKyt6RkxWcGlNTmEvZHhFT0hjdzdoTTBVVjBEZS9jM1ZvU3pqNC90?=
 =?utf-8?B?WThFUVcvREozNEdjZE5DQzY5ekhvN0NwT3lseHc5UWJPUDBHUnZmb1lqRG9w?=
 =?utf-8?B?MUlnSE5ET0s5eU1jOWp1SWpZMGp6aDhYemRKeDZqN1AxV01zZUdzSENtdmZh?=
 =?utf-8?B?ditXQW4wYS9zMVNyR0NZMjZVWFBHVU9nMnYxNGU1c3ZPYzR5TytrcVl3NXNs?=
 =?utf-8?B?OXc3K3ViR20yNkZFS3cybk1pTy9OMFZxYjZvRjVOdVo1RExGR3RjRzhPZTAz?=
 =?utf-8?B?cjVDeHBtWmY5OUJRWXcyZGlRa1ZicWsxc1g2TW9wdE15MVk5aHY3SlJLTkFB?=
 =?utf-8?B?THl5R0dJK3BrV2lWQkt1RXhpL2V5aHhKa1Y3QXFKMlh5U3IvRnJFZXhkMTU0?=
 =?utf-8?B?bUVDeXd5QW9FdktXdXFsdFEvc3hiTWpNd0xNSTBsTEQ2aUlWMlpnby9pcTRx?=
 =?utf-8?B?TGtrbFI3UWg0L3FWZDlvQUFrczBaRGFNMjRZNG9OQTYxajVObWVWdHdCbnlT?=
 =?utf-8?B?RHdvc2FmL3hpYWsremxGKzc0d1R2Wm9PQXVrdkdLZTRqZlg4L0E4eWhLN29K?=
 =?utf-8?B?K3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 13d5a77e-f6e9-46bb-d0ec-08dcdd33ab4b
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Sep 2024 07:28:36.9331 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tQrtjOxaw6FLFV6jcry1bZabjBkFguats/orlAFK/1KbWd21X4SDA0M0huv4wtRwuNFzVeF78HkSBMkraUey4PxJkvrSi1x3ZkbP0Hlrj9w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6856
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727249327; x=1758785327;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uTUrTXJ/zFJs5kWZQ342CfVjtGWMHLqA52+SWY4TuPA=;
 b=E/c9t0sl0BCAD3GWDaKX6QYW9Kbp4YWOOrut0dOrXwTFZ5QNw0vt+dTY
 RYp6RDO895trayaE/iK4lZLdGzlr5gQLH9874RY4zyN/PWaMGJcNuOyeA
 F25SJhlhTkF6MPKKIRvZEbew0aWcPObCN5Vv/XWsYgp7660IIib9EjSN3
 brfYUiYB3zF2h+0OF50maHk6DPFljbOhsZKwakIgrC+H/flZD69afjQgm
 ML83ShIlEI9D0KI3HGdSabPXfJVAU7p6izeDPa42NX5evmdz33jA80dpO
 5vZg9UUIY0oEO0HO4BXKSqXM6BbP4ERt7ivq8tbnH7IKulONjIrv6IrYk
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=E/c9t0sl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next] e1000e: Remove duplicated
 writel() in e1000_configure_tx/rx()
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
Cc: netdev@vger.kernel.org, Kohei Enju <enjuk@amazon.com>,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 06/09/2024 5:17, Takamitsu Iwai wrote:
> Duplicated register initialization codes exist in e1000_configure_tx()
> and e1000_configure_rx().
> 
> For example, writel(0, tx_ring->head) writes 0 to tx_ring->head, which
> is adapter->hw.hw_addr + E1000_TDH(0).
> 
> This initialization is already done in ew32(TDH(0), 0).
> 
> ew32(TDH(0), 0) is equivalent to __ew32(hw, E1000_TDH(0), 0). It
> executes writel(0, hw->hw_addr + E1000_TDH(0)). Since variable hw is
> set to &adapter->hw, it is equal to writel(0, tx_ring->head).
> 
> We can remove similar four writel() in e1000_configure_tx() and
> e1000_configure_rx().
> 
> commit 0845d45e900c ("e1000e: Modify Tx/Rx configurations to avoid
> null pointer dereferences in e1000_open") has introduced these
> writel(). This commit moved register writing to
> e1000_configure_tx/rx(), and as result, it caused duplication in
> e1000_configure_tx/rx().
> 
> This patch modifies the sequence of register writing, but removing
> these writes is safe because the same writes were already there before
> the commit.
> 
> I also have checked the datasheets [0] [1] and have not found any
> description that we need to write RDH, RDT, TDH and TDT registers
> twice at initialization. Furthermore, we have tested this patch on an
> I219-V device physically.
> 
> Link: https://www.intel.com/content/dam/www/public/us/en/documents/datasheets/82577-gbe-phy-datasheet.pdf [0]
> Link: https://www.intel.com/content/www/us/en/content-details/613460/intel-82583v-gbe-controller-datasheet.html [1]
> Tested-by: Kohei Enju <enjuk@amazon.com>
> Signed-off-by: Takamitsu Iwai <takamitz@amazon.co.jp>
> ---
> 
> v1->v2
> modify commit message to explain the reason why we can remove these writes safely.
> 
> v1 link
> https://lore.kernel.org/netdev/20240902061454.85744-1-takamitz@amazon.co.jp/
> 
>   drivers/net/ethernet/intel/e1000e/netdev.c | 6 ------
>   1 file changed, 6 deletions(-)
> 
Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com>
