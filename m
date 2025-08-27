Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A1A13B37C28
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Aug 2025 09:47:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0DBBC60D8A;
	Wed, 27 Aug 2025 07:47:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kUywlR4D7Gq8; Wed, 27 Aug 2025 07:47:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4D68D60D9D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756280844;
	bh=2di84LzGXtaSaXStJGffsoiXYwDAQQPsKteU9Lb//po=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gENvWWC1kO9YiBHY0QyoRelX4kLa51qydNXEbF7uFwpj+TuDYPTuJ148ABCBGSwpN
	 AjrYbgPvV1pHJ/lQQH0lJx8zVSTJP7AjGYJKTiDHEU6q31Fyrz1PbxZXknzOyKDoUg
	 WEjSCbKoERZXs62sT//vF4Xg186s9d+nfovhS0mUyo7jAsKF1yVPoLPmoOvDeJ79f9
	 R7jfImW4Nsh1YYa5DohGvrJO7FZiG4Ee1SMNXbcAItNPBhOdI1kd113lm3oCNrFzyh
	 19Hhvc2yUS173VpVJLBUSZ5rF+180USj36rT6lRlxi6a0Hq1mKcQDSyIrlhT2cwZDI
	 OTCGPsmB26h8Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4D68D60D9D;
	Wed, 27 Aug 2025 07:47:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 062EEB0B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 07:47:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EB6C08129E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 07:47:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FAax9NGYHsql for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Aug 2025 07:47:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2A9808128F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2A9808128F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2A9808128F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 07:47:21 +0000 (UTC)
X-CSE-ConnectionGUID: VEBwI1HtQ+eWOhcgFobSnw==
X-CSE-MsgGUID: Gw4/Fjl2Txu7/g68/yVqjg==
X-IronPort-AV: E=McAfee;i="6800,10657,11534"; a="58625471"
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="58625471"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2025 00:47:21 -0700
X-CSE-ConnectionGUID: Xp7NHUCwTI2syjUQiKc1ZA==
X-CSE-MsgGUID: zfft1rEvRHqLFk7uyxgGJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="200668340"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2025 00:47:20 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 27 Aug 2025 00:47:19 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 27 Aug 2025 00:47:19 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.79) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 27 Aug 2025 00:47:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QkOsLPQMn521RFbCmerXSDf536/1BKx47RUPFX/WwtEJ5Z9QlnNJKxcq4LtQrhLQcsUa0oQAI5U+ppEtTCeaCDq51/gj2p8YfStrPLcuhZXAqwHCywzEpCr0Wpqqyb4IOmyTCJ/weB7FaV4MHzJSheNEJm0Nz6/DyYtViiQyWtHG8ga2ED9xLuf8aD8poDuxcRme5tofymq+kELQq+O0mMl7J356ka6KTaYdjmsL5DSSfQPT0yu5dk3bzhYqPy9aH0fmhABIW3b7WB/3OUygPVdknJVJ+lmMQhYkB7QA4sv9ZUH5+u9Jxcw2cxCRB1v4V2ZhiHOq/3FfM3BH61wn8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2di84LzGXtaSaXStJGffsoiXYwDAQQPsKteU9Lb//po=;
 b=krZhtxPlTyFXJ8/GH7RT4qri/eDkDJmAb6fFqerywienEyMHGpr84HaiugGPzEmzYA2ZcxMJBbWFOv7WQyErFiS8VpdRbmpwQckdABxAcDEmyUcBGbMDLHgAp5VSgeAkzO8UmcmsxFIsU3+za2wyg1cRNBZq2FV8NnUPHtKwAnw7HyfA1DJLMhyv7w8rACTBZ5blR7EKcihGhDr3fqrn3lxm8A0ybGNdbEp+cC2/+rW9Outaq1JB4ym+g+kJGE8VcTk4wmRibpphm+8K+IUuwFNerhGVVx2afQcJuspPzFqAerezVuinRLRVn2QF6ZvEylGyQqjQ2YEDgaXat7dAAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by BL3PR11MB6409.namprd11.prod.outlook.com (2603:10b6:208:3b8::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.21; Wed, 27 Aug
 2025 07:47:17 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.9052.019; Wed, 27 Aug 2025
 07:47:17 +0000
Message-ID: <a9a2de1b-6432-447e-a446-741c5a8e53b4@intel.com>
Date: Wed, 27 Aug 2025 09:47:12 +0200
User-Agent: Mozilla Thunderbird
To: Zhen Ni <zhen.ni@easystack.cn>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <anthony.l.nguyen@intel.com>, <andrew+netdev@lunn.ch>, <davem@davemloft.net>, 
 <edumazet@google.com>, <kuba@kernel.org>, <pabeni@redhat.com>
References: <20250827032348.1374048-1-zhen.ni@easystack.cn>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20250827032348.1374048-1-zhen.ni@easystack.cn>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DB9PR06CA0014.eurprd06.prod.outlook.com
 (2603:10a6:10:1db::19) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|BL3PR11MB6409:EE_
X-MS-Office365-Filtering-Correlation-Id: 3a460bff-1834-4b39-64d1-08dde53df1f6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?b3lnRFJkTTRKS2QyZ1BDWVBGdVdlTjJRQmhkTUNIQTBqRDBBMzE4U0hBRTlz?=
 =?utf-8?B?VDVpRFpESk5ZZmd0Y00zQTlMVnFiM1dMQ1ZXcXgyVVR4Y0pBSTd1SVNOOXRW?=
 =?utf-8?B?eHJzdWVzRDFlWnlrMk9SQmY0VmEvWWJUbkZnVzZDdXdrallaVS9MQWMxZDhQ?=
 =?utf-8?B?ODZuQmhiRm5EbnVKOHlyd3NGbmpsMVVwUXgzTU5wNzdGc2c3RFA5K2RlaTkr?=
 =?utf-8?B?R09udDJuSVZ1NVNhcEpBL1pKL3F6R1RGenQrMStmcitJU2hJQ2Uveks4NGVs?=
 =?utf-8?B?MGkwZ2FRV1ltcFE4eDJQeElZU05TTkFxRk9BUGU5SVhBVkJRUzBqSUlXTENC?=
 =?utf-8?B?ZldJTmtXSGNWWXY3dGFsNHFUZXV4QTVoRTdtT21USmgyem84QzlOb0RTaE14?=
 =?utf-8?B?dktoWGJtRUtTMEowcFRmN3BrQ1NZb3JocWFlZzR0Ni9SbVJMdS9Xbkx1Mm05?=
 =?utf-8?B?OTZnZUFIM1hSMFdPSkhVZ2l0T0VwMWpHaHRsOTdOSmJrckhNVmg5ajg4aWxF?=
 =?utf-8?B?eFFYeEZjQTM0S0tPODBqcU1wKytCK0h5SXQzVWZHd005Z1VRbTRZODZ2dXkx?=
 =?utf-8?B?ejJsdkdPZUMwNHM0bkZzekpwTWxFcWZQZEQ4YnFsRmQwcUl2MWN0K1FuWU15?=
 =?utf-8?B?eVRtVHA0TUtFYXd5dXdqSDhkYnUrMVEzZ1FIQjhJcjAyeFBWdzFNdzlTQjFm?=
 =?utf-8?B?bWlwZG9JbnRqMENqbVJCN2xFbFJkbERCazNQVTN1YUhha3lsMmxDMC94MlJL?=
 =?utf-8?B?Mi9QakFxUXZ4NUZpbnV1QkVxUEJ6VjY3aTZTNkkyY25UQ3g5MGtSR0U2Sy94?=
 =?utf-8?B?MnJqUUpPV3hpQkhDUmZVUW9hWTlBd1Y5cU5OUlNkSWt0SnpoZHVYZmNHekFS?=
 =?utf-8?B?bEtyMnQ4M1IrZTM4eUc3Sjhqb3JsME5tUkZSbFAxc0JYZzh3S2NuS2xlSHdv?=
 =?utf-8?B?NlB6d0hXS0tML1pWclpjVm5yeDhFMnFhazFjTTlUaThLZnVjVE9UKy91YTZ4?=
 =?utf-8?B?RmZnTjZ2d3FOUURYWHZJS0pPOWJtcXFpVXF4RVR6R0FiSGVUWm9PUmczd0tv?=
 =?utf-8?B?M2x2aVdHeU9ybGJseHNVZ1ptcnhDS0VweWNkMUZYWHR5U0dUczdSTDdFR0Jm?=
 =?utf-8?B?Q2dmdVZScU1ZMElETERWS0N2Z1BQSUowd0tuUWpJSlhiMmxCdE1qWWlhbXQx?=
 =?utf-8?B?UjJUZWhSZ1hobE5EUFVXZEtsZTBMMUNLUFF2OHhrTW5MMFZEMVV0K1V0QnZs?=
 =?utf-8?B?cGc3bGQ2djk2NWF2N0VvZzVkMVdzVU5iakVzcWZJaXRtMlZxVGVQVEhYSzJm?=
 =?utf-8?B?RzVDZnBJbkp5SmNJemFlZmpFQkhYYjJRQUJtamVuczV4YjJjV3dVUjBSUmx0?=
 =?utf-8?B?VklESWRQd2YzZmJLUGRPTDNzZkdMY3laNk5aaXRML3d0T3ZOazAzVDc2eTZY?=
 =?utf-8?B?MjBMcVErUit4cjRhTEhkR1VBT2NRYU1TeUsxcTVsZjc3TDNIYWN0WHhCRnFY?=
 =?utf-8?B?RXdVMFJzTHBoRkU4eUEyZkp1TlNwcnl5aE5uZlQ4TEN6MGgwSTI5YmVyUGc5?=
 =?utf-8?B?SWxwYVk2RVE5bzdGZWtQR1dhSHJIa3pXdHZqT3pIK1JnRFRpUndvak5CWWor?=
 =?utf-8?B?VU9NREhOc1oxWHQwNXZYMTdzZml0NXllKzdhY21KMHBDYmx6cllaeG1Gaktl?=
 =?utf-8?B?V3lxU0lLZnNscVdxRUtXUG82cklXakVvVDdnSWt4S05ndjRYbHVYMWR2VStm?=
 =?utf-8?B?ajVWWkdOaE5PL3k5QUJ2SlpNU1owem1SWVdaUzZkNjFoR3hzNUlET2M1Z29H?=
 =?utf-8?B?QXRrVVpYTDBGelZxdzhIeUZKbms1UTFhb0JHMndUQW1lNUZjNmZYNTY0UHZn?=
 =?utf-8?B?Q25aeUhJb1JUQldiRHVFbFV3bnlWeW5VQTdnWmJvdndETytVMmV6T3FMcG9Q?=
 =?utf-8?Q?Va5t22QohbI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OEk5WUM3Tlk1YXNGbVZLK2F4VXdGbnhkSHBIQUJHcjlmTFZpY1U1cTU4TktO?=
 =?utf-8?B?aTcyUm9yZ3BZbTFObmUyVFE0VzVpMWN1SGxPbmhKT3BTOWFvQkthTldJOEo4?=
 =?utf-8?B?cGtmSGpjVEFWbFpQRWgyQWJiNEVkWnlpa3VxOHRmSm9VNzlZT0NlYTZkSDBS?=
 =?utf-8?B?aGQwY2toRnR3YjBSRHJ1MnR1TWl0aXY2c3J4SnBtUWt6dTVlSjZVVE5NV1lF?=
 =?utf-8?B?WWNVYlF3czRDbXpkV05LN1p0ejRsejk2SG9sS0tlRTlBOEY0TGRyUDgyK3FL?=
 =?utf-8?B?SjJvUVhKRWdOTmpUU29wZUdFTFRYNHAxcGY1aFFTenMwNWN3UGdBTVBpcFpE?=
 =?utf-8?B?STB6MkR0VitzL3Q2U3RzUWZEU1BrNlkrZVI5TEpIdFhqN0hZOVRSQXMzUGM1?=
 =?utf-8?B?ZUlBWVQ5UURpQmU4b1M0cGtvbDJKeHZDaCsvYi9kUElFcGZCYkp1cy9wbzk5?=
 =?utf-8?B?QUlZODFMeWEzeTk0OU1yWFZhNGthQzAvd2RpbFI2dkJmZWtwbWIwQ2JBdEVS?=
 =?utf-8?B?MUJvRzRQMlh0ZFA0NVI3NFFYeWk1ME91SmV6RGwwVHlDMGV3NWJ6ZHhESUdX?=
 =?utf-8?B?TGpMeDJLYnVsUnYyM1ZsN2pHWUQ5TEl0YUtTaDMvczJVUGJNZ3FrMjI0d0N5?=
 =?utf-8?B?cDJ4NlEyaXZ3Z1NGdXc5SHJmT0J3Y1BUc0pvV0ViaWVYQ2p4TGF4NHBSMmpX?=
 =?utf-8?B?S0FhTk4wR1Z1WW4yUnBnRUZSRzQ0c29SdHFaNGhuakJFREpzaUQ1Uk9yd1Bk?=
 =?utf-8?B?Q0FBS3VTeERrYi9TUWJwQVJmWHpzRGJRY0c0VmNiOG5IQW5GQjhrYjVSVlNt?=
 =?utf-8?B?aFlXYllLN3N4UU5KLzQwajdFNjVwb3orejMzNi9mN0dDTUpvdTBXWGo2Qmsx?=
 =?utf-8?B?STIyR0g4c05LTVhDVkc0NEZTQm8yeEY1Y0J4eG9DZmhFQmxyNTQ5TGNsVW1u?=
 =?utf-8?B?M0wyeHBaR1FhR2N6bnFjZnhHeWxRY3dtQStmayt4VkR1YWt4ejFVM3VSa3Fw?=
 =?utf-8?B?UndsVlNmdnhRaFMvVEUxOXZ1QlpMdVRDS2F4Wlg4b1BCUERjaDNDOUJyT0xQ?=
 =?utf-8?B?SnhzZXk2LzRHRGF6QUhXTmFNelVsbmdwTjVuaHU4eWIyWGc2K3VkZ0l4OCtj?=
 =?utf-8?B?UnRuL0VKOTVBMmdhcERTY3E2SnQwK2JEMEh0NU1tYUN5cXVocHVkdVdsUkZQ?=
 =?utf-8?B?TTJKVThnZlZFdnl3NGhOMVZ4M2ZQQmpKNWNxS3pGeWZJVG45bTNZS2VGc0Nh?=
 =?utf-8?B?N1RGeExxNkRvd0w2R2Q0OVdqOGZtcStNT2I5YUlCY2VBTkNWRTRaelVxQ3hq?=
 =?utf-8?B?M2ZlQUg0TEdnUFI3M2lzLzd3MXBzazFFamNFZlBPMWkzcE9sT1U1SUtxYysx?=
 =?utf-8?B?M2V4VUcxV3lQM25EcTlLNFBWSnpoZllHR0h1V0dhclhjK3Rvd0FTNDFKQ3c0?=
 =?utf-8?B?KzVUSnF0L1Q5SnhDY0NGMGQ1dXdSSndHNTJxN1k2L293bXJjaHl6U0U5YmJT?=
 =?utf-8?B?NjVuY2szb2hqSHpSQmd2K2l6Q2NNcXlaVDJ6eit4QlJqakJWOGV1WFFETVlQ?=
 =?utf-8?B?d25VYjBzU0FWYzErcTZ1Sm45ZDV3ZVF5ZVFzU3pRTkgrcnVXSzEvQXFObS9N?=
 =?utf-8?B?ZTFMUmpNbjNxYTlGMHFoTGJrZE81dnE1K1ZDd2xwLzM5bzlUSjJuSk1XMHFV?=
 =?utf-8?B?OFhoNmdFYWxqbktUb2hEbzZvNVIzMTBqKzlFcHk0YmhBOWJVa2xrR2VIemNt?=
 =?utf-8?B?b3E4RmVWcWVFcTkvMzA4Si9XMmV2WFlKR1VPYUNXcTRLY2oyOXpIL0xOL3hp?=
 =?utf-8?B?a3dQaThDcDdpQkU0d3dIcHBua2MxNmhGczl6Vk5SWmtGdnM1alNrNGRROHor?=
 =?utf-8?B?cUUrdjVWaG9CdGJLVDhWdlN1Y1dTeHJjai9Ed1lJKzFWTXlEMitNSE8zUUFy?=
 =?utf-8?B?a05wVWU1dVZibWd6alFYT21KUlM4SW9EOHoyQzJlTW9wUHBoZmhvK084ZEd0?=
 =?utf-8?B?YmV1Q2xidnROWGZHMDZraFNXN0VNY0dZcnZTQkJtYklvOXVrQVRYdG1oWCtH?=
 =?utf-8?B?WVdLTDJaaURJeVRPQW5Gd3h1dUptL3B1QVM1bGhkYjlWaWh6NWl6UEVIYXRX?=
 =?utf-8?B?dHkvcHhETUk5ZXZPVjJDTUJYN3lZZXlDems1WVZGVUhWWlBxOS9IbFI0bFBD?=
 =?utf-8?Q?NhrQL1V3qBNq3U7RQg/y+/w=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a460bff-1834-4b39-64d1-08dde53df1f6
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Aug 2025 07:47:17.2945 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3PpFCretePSZums6J0ts3XNlchQlp+CBEmmr9SUFbN+CDabNi/O9p8CNkqg0TyB+T84x2CtQWmA96aRapgOZ2rLuXiFymQ37CqBeD6qv3kM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6409
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756280842; x=1787816842;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FAt9ZyJAlvNopMzDKC1YF7aW4I76wFLXLE/RnjqjEL8=;
 b=UZepRVUOR7tDZ61saqV/FZQiDq/xAOIpW+8xiFMVa+RXeH8qzObUe2ux
 Om7XnzpIcMy8ZzHefyYAx9l6P/FafBUPPUwxYQNHim4P9uI5nl5b5bz8i
 rzColjH2/aAaPm2t8Okz0r0cCkzhvs3mn4IrLxO2DNNxH1zTuJShdc0q8
 NB9jl5kC6wfEMg6djoqRBYgE9SGRdCnj7KcWuY/+hQfTvXGhpltXGmiHh
 e9cfqBTeycjJL0fRW8dNX3zRtdvWihgDbynkmwVnH9dAxRhfanXH2o0yJ
 PIiMA1oqGvNai2gTiIq9STx04zQH3vWKNpgaCUbXJdMkwl93CC1+3jrrl
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UZepRVUO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] i40e: Fix potential invalid access
 when MAC list is empty
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

On 8/27/25 05:23, Zhen Ni wrote:
> list_first_entry() never returns NULL — if the list is empty, it still
> returns a pointer to an invalid object, leading to potential invalid
> memory access when dereferenced.
> 
> Fix this by checking list_empty() before calling list_first_entry(),
> and only copying the MAC address when the list is not empty.

good observation, thank you for reaching out!
what about using list_first_entry_or_null() instead of splitting into
two operations?

next time please tag intel ethernet patches as PATCH iwl-net (for fixes,
like here) or PATCH iwl-next (for features/refactors)

> 
> Fixes: e3219ce6a775 ("i40e: Add support for client interface for IWARP driver")
> Signed-off-by: Zhen Ni <zhen.ni@easystack.cn>
> ---
>   drivers/net/ethernet/intel/i40e/i40e_client.c | 9 +++++----
>   1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_client.c b/drivers/net/ethernet/intel/i40e/i40e_client.c
> index 5f1a405cbbf8..0a72157aee0e 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_client.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_client.c
> @@ -359,12 +359,13 @@ static void i40e_client_add_instance(struct i40e_pf *pf)
>   	if (i40e_client_get_params(vsi, &cdev->lan_info.params))
>   		goto free_cdev;
>   
> -	mac = list_first_entry(&cdev->lan_info.netdev->dev_addrs.list,
> -			       struct netdev_hw_addr, list);
> -	if (mac)
> +	if (!list_empty(&cdev->lan_info.netdev->dev_addrs.list)) {
> +		mac = list_first_entry(&cdev->lan_info.netdev->dev_addrs.list,
> +				       struct netdev_hw_addr, list);
>   		ether_addr_copy(cdev->lan_info.lanmac, mac->addr);
> -	else
> +	} else {
>   		dev_err(&pf->pdev->dev, "MAC address list is empty!\n");
> +	}
>   
>   	pf->cinst = cdev;
>   

