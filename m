Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kJF7N9bMO2pFdQgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jun 2026 14:25:58 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A3AD16BE125
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jun 2026 14:25:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=Qk4v5Fka;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A23DE60C08;
	Wed, 24 Jun 2026 12:25:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ywA_qP-8S5sQ; Wed, 24 Jun 2026 12:25:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D835660C06
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782303953;
	bh=eYcqYhGeUNJaST2QKyR5gEGIReOKEFCVx03QBs3Mam4=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Qk4v5FkaVu8mZ6RanRd0+HkS2z7Wv7y+w4wKlBSFXVD8r0rVXhCk9bUb6+2feVHrq
	 RBWpEbtVqjhovmfGdBB5+rsoE+byt3Ch2m+j1yL0QmlivGwmYVUeS+oZnED0TOOZMI
	 cms61TynIOfA0LSDTddOZJcjWVwJR9M7ifDpXhzi/SY+L5mOMPc4zb6CFXyKva4656
	 gKngS8twuMwp1KZocXUuTPsMkEwz6UZ2oYFwCIgyhvjztIhe52L8Fa4tIo3W6zZgWP
	 MS6N2Wx8M4OLm/jGTrLIRpxtN3U+TrleA1B5jyZ2vOPUB+NiE1zvbR8FoT/LJhTzzs
	 b4tfIyZRfsiLA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D835660C06;
	Wed, 24 Jun 2026 12:25:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 814A1367
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2026 12:25:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6A17C60C01
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2026 12:25:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FOEs0gFUplvW for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jun 2026 12:25:51 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 97DA260ABC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 97DA260ABC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 97DA260ABC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2026 12:25:51 +0000 (UTC)
X-CSE-ConnectionGUID: 3v48+k8aQ+eT3TEeRJLgAw==
X-CSE-MsgGUID: DQ8zOcEFSj6C/cBXedtHXQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="93716061"
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="93716061"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 05:25:51 -0700
X-CSE-ConnectionGUID: WoRHyt7GTdugpeCK+Nbxcg==
X-CSE-MsgGUID: 6uP7JhYjTXajPe/8Jzasjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="249954167"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 05:25:51 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 24 Jun 2026 05:25:49 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 24 Jun 2026 05:25:49 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.55) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 24 Jun 2026 05:25:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=h31JNw9QfNFSgjH3iuO+KkEGOGUebBE8KaUQEKfE9GZ//iHf674xgqCxc5/Pj1d3AmdRmwfrVzHsu7gPjSUIMdx4ZdA8H6ItzW1cBkUqz/qiLmmutYaBfQH1h+uacV7B4hqvfFCqFKwVMMGQR60pruOSkTlJ68YNb0wTFRm7ffTgY7g4FhVCNBbozeHuPHPjVOvMAkJfT1QvsEvRVLn6sGIydHSpea+CN9cxQJp4Ut+K1PtZ3LYGYvMiMu9OFSxsKmYzYh0r74O0sa+UIyxN0wBAJbolhaqHddkXH7nP6qE67GJ1hfeYt17UohX2jqIBJfhXCvy5Z/g4SQn/OsLKbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eYcqYhGeUNJaST2QKyR5gEGIReOKEFCVx03QBs3Mam4=;
 b=tUHDdRHoZ1AcbF0r9k82hDW3pktVcRiVCBpge2eBO+EJrZfYI5gWjKoyZxwC18OhEHjcuZ/9UYzYEs6KvKIlttBR6TgTRw0iNUHuC+f5L0lit3C59LmuwHiC8vAsPSw20ASxJw606YMnowHMGD20lXzEqVgD4V2gaRQ1jubtFIvWqV/1VfzFybzQ4M/zZkr7LXdulH5of/jt1DqE9r65EpSEwi0FOcG3aXhzEGQXd1m7UwUqTQ1Ov1gpSs1TLnk1znyZz4SgwjeKF2NNY/ET3ZGBeU+3MGKJnJGXk9XXPupXUkNftQMxvXga7WNYo33HWeQFd5Kz9icjlG7Thalj+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV3PR11MB8508.namprd11.prod.outlook.com (2603:10b6:408:1b4::8)
 by IA3PR11MB9013.namprd11.prod.outlook.com (2603:10b6:208:57c::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.11; Wed, 24 Jun
 2026 12:25:46 +0000
Received: from LV3PR11MB8508.namprd11.prod.outlook.com
 ([fe80::a1e8:1786:e5d1:8e51]) by LV3PR11MB8508.namprd11.prod.outlook.com
 ([fe80::a1e8:1786:e5d1:8e51%5]) with mapi id 15.21.0139.018; Wed, 24 Jun 2026
 12:25:46 +0000
Message-ID: <6312bb2e-9ec3-480b-bb50-f70e8e5b9025@intel.com>
Date: Wed, 24 Jun 2026 14:28:02 +0200
User-Agent: Mozilla Thunderbird
To: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>,
 <netdev@vger.kernel.org>
CC: <intel-wired-lan@lists.osuosl.org>, <aleksandr.loktionov@intel.com>,
 <jacob.e.keller@intel.com>, <horms@kernel.org>, <anthony.l.nguyen@intel.com>, 
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <stable@vger.kernel.org>
References: <20260623101800.991293-1-jtornosm@redhat.com>
 <20260623101800.991293-4-jtornosm@redhat.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20260623101800.991293-4-jtornosm@redhat.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1P195CA0081.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:802:59::34) To LV3PR11MB8508.namprd11.prod.outlook.com
 (2603:10b6:408:1b4::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV3PR11MB8508:EE_|IA3PR11MB9013:EE_
X-MS-Office365-Filtering-Correlation-Id: bbe87b53-92f0-4ebf-7cd9-08ded1ebb7dd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|23010399003|1800799024|18002099003|22082099003|11063799006|56012099006|4143699003;
X-Microsoft-Antispam-Message-Info: 66kB0KE/n14VsD++BRWFg+VLEnPLJzuaOFwXRdzhUe7WEjjFi0fGFiueHNoG09WqR5x2JvR0lgPsgKB8906uEgzGRjTqrgDlN57n1CjVriogj9kApdVMsRP3cAzFf0/XhnW6XwBK/fDx9tp2WxSO/bz4eapR/qsi99ZLN+7ktnv7JID3X8NfeE9PicVsu/JRd3YstLGXeP7+gb3Y93duybGmREUeiIqO1sHH8G9cN0SYueNE632TdMI0LaK8IYU+EQMUXXlhPk+56VGOvEa8vnySSweUlZI4zGInwLDPTt0dk5jE2AUS9RagS+MoWtxwdQ0y21NoniRzNKdgqGqQof8R3AvjdxWMwzcwZsOKwff2YHwU1Ggmhnj/HEeR2Lo/mnt36Cz+NgRErZxPzJ7sf9d5izjs/+1ZEGj6mLe4b6If2vkQFS7Dg0GPi+94mRvLE+6iJXs0JqjL2L0HjMd1Z9NrG2+k7d44yT+dWF23nn60VjeXG4pdEJ2mOCwcfOzxEo3Hnf9/pvEfTOIMN1RunNOA9N9OA8CFefrhh4lmBXIVwbCirRdMsnaUCaDqEe8KF9Y8P8MqsXKgGbggCAXcuB4cKQSvI7bIvvuYVzc7z8i2IGJf/XGqWQNlU0s97h2La+CltEe1WApsnup4Uu4Fj2bfIixUi03A5VD2cHBMx08=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV3PR11MB8508.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(23010399003)(1800799024)(18002099003)(22082099003)(11063799006)(56012099006)(4143699003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cXhSMUkwM0IvL1hNR3lqLzhXQ1YxcmRsU2c5SHFsdzBuVW4veVFkYUxaRjRk?=
 =?utf-8?B?Mi9DU1ZoMmh5cWYxNVR2UkhMMUtSSnQwTmI3ajVWRmUxZFFkQlRFaWMrbmI4?=
 =?utf-8?B?NlZoSHJHbkNwcnE4bHJWTnR0c05Wckp1cjd3TVdYVEFMUjl6ejVxcUMzZEZt?=
 =?utf-8?B?QmJkN1hJNm5ZWlZLODRPNC94S1BMS0FXNTV2elgvWWhmQWVVTmZDWjJpYTNO?=
 =?utf-8?B?UFVmQkE5SXIyR08xdmFmemhrSkdFdk5uanpJeDZseFUxeUVKcWcvVUE2SmRD?=
 =?utf-8?B?bDZIZitBeTdXVThJYnp3Z2dYRllaSXpMS2pwWWxkdkxwZ3Z0Q0o5R25LUWVX?=
 =?utf-8?B?TjRlVUR0aHVmc0xrTkhFRVB6ajgrWnc1SnNNZ0FpbVZxTXZpalVZdklvUUFH?=
 =?utf-8?B?ekdiK2FnR0FiRC9JdzdYNmtwYklqMWMwNEZ2TUVvQUNHS2cxbDAzeXRvU3pr?=
 =?utf-8?B?UWEvT3BCQnFERm5kK1kyWDA5SWlNL2VoV0FLaWtXZVhPMjRtQW1HVjhKRXpX?=
 =?utf-8?B?dlBVWWtiUUxnU2Q4dk92eHIxcU1vNjhnOUFiMmJ1T3ljQ2xsYXl5K1Z2RG5E?=
 =?utf-8?B?cjhCbkl6MCtHQVZUWW0xR29pM2U1VVBwTTVUdGdTeTVoaXM0ZW5scDhkeXpu?=
 =?utf-8?B?ZkRnOXlZTXJvZUxsN2FVVWJYNktnODhpYWxvckczU0tJNkdRWjdoMUdRRXRn?=
 =?utf-8?B?RTZOKzVRdXpPdHNNbTdFM0JEODlENFZXQW5tTk1ZcFVpN1YxdVpMa0VNenAy?=
 =?utf-8?B?czdYMnN6Wlllbm9ERGpDZUFXV3pLQXJvZU9ZY3Z5dkxXUzQvakhudXpCd2Nu?=
 =?utf-8?B?QWZGdVV4YncwaDg2NC85TkQrQlN6ZFdZTFZESkdSblhOYXNZZmtDcld0QTRF?=
 =?utf-8?B?ZzMzOWxqWHM5V2hTcitiMlllQWxld2VvTElBay9pOVpLZU5PS3BoTEZXcHZl?=
 =?utf-8?B?cW14bXpzcXZaMlRTSWNScDIrWm16TVFLNVNmaVNFdjFyUXpadFg3aDNQUFZk?=
 =?utf-8?B?dUxCMS90K3BKWkgzWHR0NVNjclBoRzlvbDVWZkFYOGcwTzB3NVptUWJCUlJV?=
 =?utf-8?B?SnFpazVXZ1BEdFZhcVYzTHhpRVN4dis4VGZvL294eURIYUhIVTRhSWtabm5B?=
 =?utf-8?B?YVJlVGliT0tZY3d0YmtBWVE5Q2RLOXpBa3Z0ZVA5QWZLUm5KeXRPM0oxekZ3?=
 =?utf-8?B?RDlJSkdNeU5lUkxPRHFsQ0g5WW5rY1FWT1F1M3dwYjI1bEdtaUF4ZStHRHR3?=
 =?utf-8?B?SUduM2p6QVhFbHFzclR1czFuSkVBeXVGTG1DVTBHWlpkaUZaT1VkU2o2aDN0?=
 =?utf-8?B?ZTk0R21EZ3lVaWlWZTMvK1NMTndJN1h6Y2FhYklLQ1lkOWluY1pheSswZFVm?=
 =?utf-8?B?UGRoc0FLQ0ZLVVo2dk5LaXc3TmwxOVUrMCt0NDJCVjNQbXFSTVFDRDMxYkRj?=
 =?utf-8?B?NzZNY0tmV3NzS3FkUmVadGhTMWEwbWNMNXBBTnU4WVMvR2ZkOGR4SGpiTWZ0?=
 =?utf-8?B?ZTA1THRwQUd3MW1zaXFVVTIrMlA1a1Ira3B2Uko2dU5rNDFneVZYNEQwSTdi?=
 =?utf-8?B?SWk3OWduZWRRRUFBS0JNU3FSQXJyVkg0amlFZkVITzhLZjl1bE1uWHJtZVl6?=
 =?utf-8?B?U29FMlo3OXlyQkpRcDA3NkczTXNwOFRZTXg0MXNQdG9xMFY4WVdodGh6T1pD?=
 =?utf-8?B?c2hRVzIrK2gxUk5GWC95UUJRYmxScVRZcGhFbXV1NDVtMEVDTTVQdE9iQ2Rv?=
 =?utf-8?B?VEgyK09TZDRVb2J2NXI3aGN1SmpnbzNUMlg0YzVXWUZwM0V3TjF5a1EvLzZh?=
 =?utf-8?B?ZHB5dFdpeUdBcU9ldWZiK1UwV1FxZksvQVhwbHFQSHM5UGlhRS8zQWFscGw1?=
 =?utf-8?B?NDMvR01nYktQcGVDYzN3NlFINFNLQmdja2FPY2F2Z2NHMklpRmMxQ0pwRm10?=
 =?utf-8?B?VVpZOFJWanhGcE10Znp3YkVLVWsza0N3WkJYZ3BLd052US9TZEh5RktMOFNV?=
 =?utf-8?B?VS80bERaejd2a0JWbnJxbXk4TTF3clZ3WlN5OTJCb28xTDA4a1ljYU1FL0NR?=
 =?utf-8?B?R0R0eUs3dmRnNkFrUitHVUU5LzRadVdPRENScGJTNVgwd2RjWFNFUjJkM0tS?=
 =?utf-8?B?MVEyaW56N2RKWTJRNmVtSkRYWEdPeUdvWnorWUZHN2pKY2RYZE94RmJRai8r?=
 =?utf-8?B?REk4cW1xNkxTZUpWVTZHLzhNbW5EZ0pieU1LemZpdHZoN1RtV2cxa3U3VnNC?=
 =?utf-8?B?TTRpSWxDZlkxVlFEbDFDWWRJb2t2Ry91TEtKZG15OFZhMXphN2NmT1d2WDcz?=
 =?utf-8?B?S3BYVGt1cnlQcDJxTW5vYXQzejAyQ0VEOXpPNWZzenJsY1B5T3RnZ2pjQitU?=
 =?utf-8?Q?c/SNtNe1wd+PiBWs=3D?=
X-Exchange-RoutingPolicyChecked: KTHQOOgW+Xd0WTyXhpltQMmA63Rm34BksyELQWV6jj+mQm39pnrHgyABiyIXOwC5znOclUtq6L+gP6qFgzdQ+ciCYTtyUnEaZuVLObijgzjh66/hBWrleQRRtO1SkULqb99WZdl2Raa3JU/5/cqBTf5PBVn0jjARzgWaFWZ5F3te5MhnKw27iiku/5RG0fsflMtsR5UIKpsxUsHUvPK4aqFIQDRPyigy7jSfP6UDqZxi4xsnmHyBUQILvdkQoXzP83jHEGOwsBIaH583GiAmx+ejaVmZm74WcOROEQbeVGOGWnZlIMRKlOi+BHFK3oz5xkGwI+eKlT5O32QQ1NqGmg==
X-MS-Exchange-CrossTenant-Network-Message-Id: bbe87b53-92f0-4ebf-7cd9-08ded1ebb7dd
X-MS-Exchange-CrossTenant-AuthSource: LV3PR11MB8508.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jun 2026 12:25:46.7517 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ruc3gicGE7Cxq/AmZtq7AIm1XVaVqOn2mmEQ/0RydPPvD2LKqZXh0iw3J4Lq5j/ST+uIDUCLiSNxYFdjYIBhA/DyFJlXrVWejy3Qi6jGHMk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9013
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782303952; x=1813839952;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=D36FrvhXk+Lbo8PbEgcs8eDZjqKe4DjecEMFuQJ+t2Y=;
 b=lBKsthT44u88lVmb2b/T2p80HncPB2yaSaj3ug2Cl/bWoZ2B7L7+rcS+
 tTIwDyScxlr5zg56ACi6i3YKBIk0A5oao6DwrCcXe2yl8CQvSwxcgEJJT
 fWj2LUDODlvQ8+QyZJHSSFC7jnuMb/bOBKOffojCVL6j5rmI53MkG8lCf
 IB758bd3NKLiUyyH088xRgcyusJ4UrWap62JcPTU4nD9JQ2RqSWTnL+YO
 4cMOEFljGasPx0c2RS2rHqJVvi9hu0iYHRtp8krp4fmO+Qd5gwyOKTN5C
 YNlA95w4NSISj1dwVmRMEB7+r0VfLSdLwZTtmYwdK31OhIe8+uTrFVX13
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lBKsthT4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v7 3/4] iavf: send MAC change
 request synchronously
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jtornosm@redhat.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:jacob.e.keller@intel.com,m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:stable@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:from_mime,osuosl.org:dkim,osuosl.org:from_smtp,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A3AD16BE125

On 6/23/26 12:17, Jose Ignacio Tornos Martinez wrote:
> After commit ad7c7b2172c3 ("net: hold netdev instance lock during sysfs
> operations"), iavf_set_mac() is called with the netdev instance lock
> already held.
> 
> The function queues a MAC address change request via
> iavf_replace_primary_mac() and then waits for completion. However, in
> the current flow, the actual virtchnl message is sent by the watchdog
> task, which also needs to acquire the netdev lock to run. Additionally,
> the adminq_task which processes virtchnl responses also needs the netdev
> lock.
> 
> This creates a deadlock scenario:
> 1. iavf_set_mac() holds netdev lock and waits for MAC change
> 2. Watchdog needs netdev lock to send the request -> blocked
> 3. Even if request is sent, adminq_task needs netdev lock to process
>     PF response -> blocked
> 4. MAC change times out after 2.5 seconds
> 5. iavf_set_mac() returns -EAGAIN
> 
> This particularly affects VFs during bonding setup when multiple VFs are
> enslaved in quick succession.
> 
> Fix by implementing a synchronous MAC change operation similar to the
> approach used in commit fdadbf6e84c4 ("iavf: fix incorrect reset handling
> in callbacks").
> 
> The solution:
> 1. Send the virtchnl ADD_ETH_ADDR message directly (not via watchdog)
> 2. Poll the admin queue hardware directly for responses
> 3. Process all received messages (including non-MAC messages)
> 4. Return when MAC change completes or times out
> 
> A new generic function iavf_poll_virtchnl_response() is introduced that
> can be reused for any future synchronous virtchnl operations. It takes a
> callback to check completion, allowing flexible condition checking.
> 
> This allows the operation to complete synchronously while holding
> netdev_lock, without relying on watchdog or adminq_task. The function
> can sleep for up to 2.5 seconds polling hardware, but this is acceptable
> since netdev_lock is per-device and only serializes operations on the
> same interface.
> 
> To support this, change iavf_add_ether_addrs() to return an error code
> instead of void, allowing callers to detect failures. Additionally,
> export iavf_mac_add_reject() to enable proper rollback on local failures
> (timeouts, send errors) - PF rejections are already handled automatically
> by iavf_virtchnl_completion().
> 
> Remove vc_waitqueue entirely because iavf_set_mac was the only waiter on
> this waitqueue and after the changes it is not needed.
> 
> Fixes: ad7c7b2172c3 ("net: hold netdev instance lock during sysfs operations")
> cc: stable@vger.kernel.org
> Signed-off-by: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
> ---
> v7: Rebase on current net tree
>      Remove the multi-batch processing loop from version 6 according to Przemek
>      Kitszel review: the loop cannot work without polling between iterations
>      since the second call would fail the current_op check. Multi-batch scenario
>      is extremely rare; send first batch and let watchdog handle remainder as v5
>      did

I was fine with v5 already, so:
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

(we will see if Sashiko reads changelog notes (--- section here))
