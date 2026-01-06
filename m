Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DBD9CF7A64
	for <lists+intel-wired-lan@lfdr.de>; Tue, 06 Jan 2026 10:59:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DE71760AAD;
	Tue,  6 Jan 2026 09:59:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aYVI6rIeN0yP; Tue,  6 Jan 2026 09:59:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2FC4260A74
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767693564;
	bh=wZFI1PTNGIU3++g4o4gcMBv52lQ/OS8IEV1MxO3tfrw=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sBN9EjFMzrf5LWy1iHDzVl/Q91hE3Dbx2q+XUKABQ72TWU0yxsjDTOpNYDae+Ewrw
	 O6uCB35yHWoOhYJIhghr2iAUp+7O5r8ZU5NrReKA8v/rGL8ivvP5CBlmRpqVI0uvs9
	 WTQFM/JvN2rG6/IylKkO5odDW5305UCA+Bk2NspnWAd+2q6foPPTN8+7CjFxYE7pKd
	 nI2l7t8vA7nfvWQdsWRhJWJgzEPEY++tgNxBTKyQS3aLKojMnzVETFYng+igsprmro
	 fs5yNrdlFhCqthgQsXyw9+uQCIVJVdWWU9tasKKMxqHeVpKPkPKD0r/yilfrah/ZjL
	 JYrlzrdqqQzwA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2FC4260A74;
	Tue,  6 Jan 2026 09:59:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id C1893249
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jan 2026 09:59:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A78FF812E4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jan 2026 09:59:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O5m3FGwmDCY8 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Jan 2026 09:59:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A9974812E0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A9974812E0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A9974812E0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jan 2026 09:59:21 +0000 (UTC)
X-CSE-ConnectionGUID: ipSboKN5Srqz+q4it48wfg==
X-CSE-MsgGUID: T4ZPP3+cRb28Dyjf8b6Y0Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11662"; a="69108346"
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="69108346"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2026 01:59:21 -0800
X-CSE-ConnectionGUID: i80flzjlTt6mk97TYojuMg==
X-CSE-MsgGUID: vgavNFLNSdSg9XFzL0g0xg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="201749501"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2026 01:59:20 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 6 Jan 2026 01:59:20 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 6 Jan 2026 01:59:20 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.42) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 6 Jan 2026 01:59:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=K/9RrjvIpElXIKxQye25DZpUdehR++M+7ejQxaeMoV9S/tmu0rnN7ik8cByg22ULmxv6YAYZOw1EaYZyIU9yt7WVUybFm8AmGinI6+fXs7LHz96upAL0Md44UbfWKqg/K45JsNWJMkJzogvTF2/ceHHhHkgqawI5CBDmgjrWBqwr70+lDMCxxScPabh8abHzhTnoViqz7pQQjJf57YjvOne7xYoyq+7ClnNSE2p5AHVICgKmZ5LMAbWyKrrRt4zw6FdIsBnwnSVp7VG06dqs3MqSxQnaHKOkDK6XWb8q9kKXJRVa96Via8ui5kfyv2567ZJS8rqnkzird4EKF8UKxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wZFI1PTNGIU3++g4o4gcMBv52lQ/OS8IEV1MxO3tfrw=;
 b=vXkqjmhg5iWNbmXEzlc8gK9nWAKp2yq2IRPlc8nQ6P2+1+UN/KpYSZVsyLIB8c0RLqb7eJXf56xlbOhjS42h30hghGaE+6CuUiDGEuM4FIjM259UbQiIBNXWn/dgxqPGvXgovZbyz2MoBbcbZAQVAvbLY1Axqg7G2qmLsfhRZxCRAtta4gYOG+QfZy7yAyUup+0R0x0kmfCwHgqiLb0nylMZdoofiDdnPOt93VJ+EdjQW39I3n2GepVME/yDx6JtyLUb/HPJUNjOyT2OXcSVcXpZHDpr2t2S3aF2AS8ZMO9LK5bZrV9WFgxZv+RvsUrTap71iqgt/t5I1HXVDwtpDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9013.namprd11.prod.outlook.com (2603:10b6:208:57c::9)
 by DM6PR11MB4675.namprd11.prod.outlook.com (2603:10b6:5:2ac::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Tue, 6 Jan
 2026 09:59:12 +0000
Received: from IA3PR11MB9013.namprd11.prod.outlook.com
 ([fe80::112f:20be:82b3:8563]) by IA3PR11MB9013.namprd11.prod.outlook.com
 ([fe80::112f:20be:82b3:8563%5]) with mapi id 15.20.9456.013; Tue, 6 Jan 2026
 09:59:12 +0000
Message-ID: <28213024-9c96-4337-ab37-add9a803516a@intel.com>
Date: Tue, 6 Jan 2026 11:59:08 +0200
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: <intel-wired-lan@lists.osuosl.org>
References: <20260105075738.1514341-1-vitaly.lifshits@intel.com>
 <e6c6cd4a-4a8b-45ae-8d4c-9642d7358025@molgen.mpg.de>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <e6c6cd4a-4a8b-45ae-8d4c-9642d7358025@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TL0P290CA0003.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::18) To IA3PR11MB9013.namprd11.prod.outlook.com
 (2603:10b6:208:57c::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9013:EE_|DM6PR11MB4675:EE_
X-MS-Office365-Filtering-Correlation-Id: f524e9fe-3eda-4330-c651-08de4d0a3e42
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WWNsQ0tERHpPVEhRMnVncklwQVVqZFVJRU02Y1E5WnJIQ3hScGZUNDVsbFpO?=
 =?utf-8?B?SEp2enZlZm4xcmVLQ1RCYVBnMndIZ2VXakdxbEl5c2FIRWg1ck1qUmhJSjZz?=
 =?utf-8?B?b2FCbWNWZXdyQ3N3cjZMN2hMOHlpdTVISHZlazc3VUhZNkNJSERJVGw0dS9J?=
 =?utf-8?B?SVBvTDE1aDc5bi9zQUJDbjVZeENPZG90V3h2RXcyNE9WNmlrVnpSc09mUjhY?=
 =?utf-8?B?MFk1Sk5sNExJcTZrL20wRkVVck80d0EvLy9XTFZadHRSTzUyR2RvZ2FiaW5M?=
 =?utf-8?B?QjkzaURIR1d3alNwdWZ2bmFNdmJDb0RYMW9hUjNRb0p2STlzSlFRYkZ3eW11?=
 =?utf-8?B?TmJFb3VyNWtGVDltS2FOeG0xdXNab1hDVWhUcTlCaXdWN09sa3c5S1pMbnZF?=
 =?utf-8?B?bGJDb3JScy9vNFRmL1ZDRkM0S0o1ZEVEbk55RTkyNE1kQzIrcmtTWk5OVCtR?=
 =?utf-8?B?SW1xNFpHRjhDK1FsMmdodnhGb3FMc2JEdWdsdlZWMkJCdEE1bUQwYm9wZ2hE?=
 =?utf-8?B?NXN5T1ZCUURhMi9aMUx2TmxGa2VBTFhsYUxzOXdJenUzSmlva3Rrang1WGFl?=
 =?utf-8?B?WGdFWThneTNkN0ppbG9kOEV2VXYzMmZVVndtem90ZVExQmlJZDBoUE1mYlVB?=
 =?utf-8?B?YkN0UDNmT3hLM3ZNTGJJYXJ6QmdjTmhjSWFyZ1NReld1WjRBN2p6ZGtwMkZM?=
 =?utf-8?B?SlRSUlc5TWpzcGF1YVIwU0FpZkFXd2xNMHp2WWlVOUFCdVBYN1F3bVRZdHl6?=
 =?utf-8?B?ZHpCajRTbFlyVW43aCtJMHpjcUNXMi9qaGNmUTd4ODNvb0FKUmlMVjdDaTdm?=
 =?utf-8?B?RG1Tb0ZDZzZ4MUozb2xyOHM5SkVSdno2NGVQV00wMGx4ZnlQUnIyenJwUERx?=
 =?utf-8?B?ZW1UZmdvcTFtWG42cGtrZWJmb09xbFhQQjd0NnZVQ1gwaUNGT0NwWWdWTXpC?=
 =?utf-8?B?Y0VnSmt0bURkMjBNQzByQnRFQlJJOUNRanpYQ0tCNmdaU3hENzhpZFFxelpq?=
 =?utf-8?B?My9xSVBFMlM2T0h3Sjlhc3kyaU5qTHY2L1hEYk1jM1VXLzBMQy9QQkJiR3F1?=
 =?utf-8?B?WTdJZ2dRZ1VXNVU5TDhONnZHK2hhK3JEUzJiUE9wZE5JWEhhQjlONTRlOG10?=
 =?utf-8?B?ZFNyb1h3alptS3JKbEtNNUxvRzVLVmcyWURveUJHby8zaHo1eVlIRGtDRU5U?=
 =?utf-8?B?aGJsMXgzWW1WckowWDRyTVFPdDZSOFRDeFI5dTA3cW1sdEZMSllhNS9kTE8w?=
 =?utf-8?B?ZnJTS3VvdGQ4VlZuaFFFSWNrdmNOVmZQQ2pXd2FlUUkxYWJ4NEZkZFl3QUZR?=
 =?utf-8?B?RnF1SG9URDMycmJYMHpEOVV4UHFrWjVVN1JVQnNMNm1iUVo0eGVsZjY2QTAv?=
 =?utf-8?B?M0kzT3pvaGxmWG5tTWxtL2o3ZUhtOHBCa2ZlS2lQcHVBVXZ1a3gvaDhkRVcr?=
 =?utf-8?B?NG9rVHIrYllua2ZBRy9KSVZ5MGJyZmtXUzRYaDdDQWJhaFJDTXVBY1FpdHlt?=
 =?utf-8?B?T3crY1N6UVN0TkkrT1EwYkJ0OVMwemdDc1djak5IUWZra21Ua0NlWG1DWCtq?=
 =?utf-8?B?WFBKR2xnQURNRDhSeUJOclhWYzNwK2hqNFVXWnBWQlhFSFVKcmw4QklnWEhL?=
 =?utf-8?B?ZDNOSzlLYlJnSmFsS2NmMFpHb1VHVUNOclA3WmRXMnVrbGxqOGNxTjVYY2dB?=
 =?utf-8?B?dk5scy9aNCtwcUZabWFzcjBkWnpXQzUzM0Z6N1k3N1hVSjcxMGRaSkx0SEpM?=
 =?utf-8?B?dkk2OUVhb0owN3poRjRRNDB4dXJHUy82M01HU0ZZWExDQTN2a0JBOXNyMXZo?=
 =?utf-8?B?UmJNVHVFd1lCZFR0OS9uRndJczhCck1DMlErTXFKbWJYcEROZjBIdXEySGpO?=
 =?utf-8?B?alVOMzhuK1RlMmVtM1JXZ2pvMGZQdy9aeldSTm45d1BSaVZlZHJ4RE9oK0dF?=
 =?utf-8?Q?Kwt+cUfm1ZghJ40TLYaJHhitScIiBRWT?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WkJDQUl2cUdIMWxyWXdzNnYwWEljZ2c3QURUVStJcDFIaEx5amF2N29HVHJa?=
 =?utf-8?B?b3FNaGVjSEhNS0ZSd2RXSEdFdlRJMWFZTjNaR3NzNHlaeW5lOE1vcEdlWmtk?=
 =?utf-8?B?Y1I0MkRjSGlhOEgyUHNpa2VwRmtjRkV4SCtPNnZJbDU3ZHl2WjBvZWIweHkr?=
 =?utf-8?B?UFZPMDFXVFQxSDBjSmZVVGl6bGQxaTlIU21OL2ZxWEEvdG5IOTZaQ1dQN3JG?=
 =?utf-8?B?T0I0ekd5MFprSTIzb1lQVFY2MUdJcVhPdzVvUTF0Ui9hRkxIS25XeFk3UWVQ?=
 =?utf-8?B?MXF2WjBKeVVGNWZyak1XRFh6Z214Q3Q5TkMwbXZ6elZ5aHlKdzNJMDZIT09h?=
 =?utf-8?B?MmJNaUt5dWNNZytUNDRIRlVOdkhyWFBxUWJPZWtzUkg3SjQzbUthaUh0Z1hL?=
 =?utf-8?B?YVlsR3ZoSmVoRlpHL3dJWHlZVHZKcGx6bWtiUDBxWTlnNjBRNTJxN1NpVXBG?=
 =?utf-8?B?R0RFWEVISDRDVEV3TEVuV2toZW10U1lJTnZqNlpLSUVWTFc1Q0x2TFJHVHU2?=
 =?utf-8?B?OHdsYktPdUlROEhmNXQ4YmhFRndzWE5paXo4bk5pWXRET3dIOTR0Mm1QbHhS?=
 =?utf-8?B?ZnFuaHhyZmRiTFR1ejZkeGdoUWYwV2J2VEVqZ1JuRS9aYVAvRGtNdDEvMC9F?=
 =?utf-8?B?TFdoU0EwckZaMzV4bU5qcGdDTis5d3RhSHhuVHJNTzlFV29ST0pGc2M4Qkp3?=
 =?utf-8?B?SkZPaWRDd3Blbk4xdjNGd3Q4K293Mmc4OUp4UkR5SEZqNy9ua0lVVzVKSlE3?=
 =?utf-8?B?ZitmOThuMjVMcVZGcUZhMUFTRmJoU2RGQXJ3aWl0dmFpYjNXRVlKMlNCMnlw?=
 =?utf-8?B?QnBHRHZzS280dm1iVWlJVHlSQnJxOU1BaUVxOG1RbXRQMEIvREkzUk9nUVVZ?=
 =?utf-8?B?TGxrNW5Bd20yVndkR25RVTJjdnU4a2tGL0pxc2NHRjZLcUZRV0dWYWxVZ0Jo?=
 =?utf-8?B?UkxzM0FTMU5QR0pINXYyeXE5SWg1L2YrVGU4U2NMSEw4WlJTeFFoZmV3ZFA0?=
 =?utf-8?B?b0o1TUFJd0NOS08vVlFMamZVV2ZPQVVETFFNaW0yeWtNTXFjWnR4emhlU3Rl?=
 =?utf-8?B?UWFGQ0gzZmtmTHVuK0NzZzFiYy9oVXArZ2FzZG9IUVBDMFN5ZG5KTUI0eU9D?=
 =?utf-8?B?dkNuSHlMN0ZEMGF4NWJJd2hjOGpmS3RrTXdMUnhCS3Z1M29VcllZQnZlN1Nq?=
 =?utf-8?B?V3RrcEozNVNIN3dMbUVkNWJvcVV5QUtvM0twVEN1ZkorOTJ0ZG9vaCtXSGdh?=
 =?utf-8?B?YXRDdktmQkRjKzk2eXMwRVV6UitONWhtYmtnNnoyWG1sRkZQaGpNclRSRUlZ?=
 =?utf-8?B?cjY4d3J4bW1mR1Q2blUwMElRaHVuZWVSZ0FmSmVCL1hIQXFDZGNEL0tRTzBo?=
 =?utf-8?B?SkFJQkFBNHdYMk1yYmxKT0VLc0hDRXlQaUROSTlFMFRDcGJpak9BNDFNVnRj?=
 =?utf-8?B?TE5UTk1EY1VyUUFtMjNnRThsc2pCZVFZUEJyUm9NM2JHRHd2U2NVNUtwQ0Jn?=
 =?utf-8?B?M3ZoRHdLRllCMTVJeXdWLzk2cmE1K3NIREFPWWdsNUQ4dEh5aytuSGdTOW0r?=
 =?utf-8?B?VFV1TVp2NDJKaURsTnZGZUcrYmQ4M1JnRWVpZ3NZLzE0SE5jcW5GbkFab3lk?=
 =?utf-8?B?SVdlajJKTGxDK3JDMEc3RWE4cThiUVBSa1dQY0xhR2w5Rk5qcEdiSDNidk0v?=
 =?utf-8?B?Sm1vSkNNbFNVcVlIT0NmcUthOXNKajBIM200OE0yMTFrWTVNL2djditLY0Nx?=
 =?utf-8?B?M2M2dDVVeHIwSHhhM25NTGxsY0pDZi9Zb2l0Y0dFZXVreDVmeEFqYXNZNUhT?=
 =?utf-8?B?R3NMN2YyWWlUNkhwM3VuRnlEU085T1daY2FuMmpya3FtcUV5WUl1dnl1TUhM?=
 =?utf-8?B?c3d3MFhYczhCcjdVNWkxZ2hXNy90bkJDQWFYVTgxWXZzeEVnS1BkaGc5WDk4?=
 =?utf-8?B?Q01zcVdMZWorZVVtaXBqYmxuVFZLaTBGc2kwRVJGUS9yNEo2SVpMQ2hKOS9y?=
 =?utf-8?B?YlE5VFNuSmtxdS9FRXNsTVNDUENpcVdUMG1hZWxBNEhrQWN4SVR0ZW9XL2dY?=
 =?utf-8?B?OUJqR1h6ZmpLcmxPNk1yVWs4c3RsY3dra0NGMjJjZ2dTWWZFS1F5amRSc0tW?=
 =?utf-8?B?ZGpNVnBUYXFlTnVBZ0tHa0R0Qm4zeE9aRTFZSXpWdnpnMVNhVG5ucjZhY016?=
 =?utf-8?B?WFp5R2ZaYnJXSGRiLzNRd1dXd1JqUmxSdzVTY2hNczNNSmNXY3NtRFNRTHVO?=
 =?utf-8?B?eVlEK05lZTI2MG4xMzJ6blZxYURENUNLOVJKMFFFaWJ4Z2hWVGF3cGtCZE1G?=
 =?utf-8?B?UHVDVnNtYzZiTWl1WndTTDR1QUt4ZzVoQjVYVHo2Z0hUcTZ0QitNMGVDMmxt?=
 =?utf-8?Q?pf3dmLTTgjomXuQ0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f524e9fe-3eda-4330-c651-08de4d0a3e42
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jan 2026 09:59:12.4758 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FHoi8YTte9q/CHvljJE/UbgucW2zBIWsWiSLURJocUOiQal7db/gAi8vwvFZfT2Yki3TlabBmq9F8CJn35NnyFMOcwjhZsxrKKGhzKCU3Ww=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4675
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767693562; x=1799229562;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rlP06D0c7IQSuo3OZE8qy/or/DIVgMiQkdltZnNNthQ=;
 b=kKppVTEeXShqm9zytHFQl/uJD/oskUfswP3LZfBgA7eC8cA3FU4lGLcF
 B0HXr1z+CK32vRTAYayIePkeUa1PspBHalw3I7cqn2SbmyDhrrycBgRX3
 O/ATlj0nzODNf8P24owoh3l61lcmAuZ/elCgw2GjjWCfwE+MXJPBFgxC/
 zdAopjP+B5HhfjEQOLWAgcw0WjPbY0rvZKMdVcYQgmlVav6WBUdOnZIsQ
 YOa6cpz7TCM/rbtMmqCTHJB1Rto+SXeoqYg2AvxGuiG2okZv5fGqU936C
 zyq9Fo3GsotC1IJkJscA94yAf2me+U3f3rDpatsRZOjoF6fO7r2xLq1zE
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kKppVTEe
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/1] e1000e: correct
 TIMINCA on ADP/TGP systems with wrong XTAL frequency
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



On 1/5/2026 7:33 PM, Paul Menzel wrote:
> Dear Vitaly,
> 
> 
> Thank you for your patch.
> 
> Am 05.01.26 um 10:57 schrieb Vitaly Lifshits:
>> On some Tiger Lake (TGP) and Alder Lake (ADP) platforms, the hardware
>> XTAL clock is incorrectly configured to 24 MHz instead of the expected
>> 38.4 MHz. This causes the PHC to run significantly faster than system
>> time, breaking PTP synchronization.
> 
> Is that fused into hardware or a firmware issue? Has an errata been 
> published?

It is a BIOS configuration issue that a wrong clock value is set.
There is no errata for it.

> 
>> To mitigate this at runtime, measure PHC vs system time over ~1 ms using
>> cross-timestamps. If the PHC increment differs from system time beyond
>> the expected tolerance (currently >100 uSecs), reprogram TIMINCA for the
>> 38.4 MHz profile and reinitialize the timecounter.
> 
> Why not unconditionally configure it for 38.4 MHz?
> 

Because some of the systems have the 24 MHz clock while others have the 
38.4 MHz. It is impossible to determine the clock by a device ID. 
Anyway, I'll rephrase it in the commit message to make it clearer.

>> Tested on an affected system using phc_ctl:
>> Without fix:
>> sudo phc_ctl enp0s31f6 set 0.0 wait 10 get
>> clock time: 16.000541250 (expected ~10s)
>>
>> With fix:
>> sudo phc_ctl enp0s31f6 set 0.0 wait 10 get
>> clock time: 9.984407212 (expected ~10s)
> 
> Please document at least one affected hardware.

I don't have this data as we can't know for sure which BIOS the 
different vendors use and which of them are configured incorrectly.

> 
> Also, please add the new log message.
> 
>      +        e_dbg("Corrected PHC frequency: TIMINCA set for 38.4 MHz\n");
> 
> I’d make it an info though, and log that it’s a hardware (firmware?) issue.

I prefer leaving it as a debug print because otherwise we will get 
complains from end-users about spamming the dmesg log as this print will 
be visible during every boot.

> 
>> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
>> ---
>>   drivers/net/ethernet/intel/e1000e/netdev.c | 79 ++++++++++++++++++++++
>>   1 file changed, 79 insertions(+)
>>
>> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ 
>> ethernet/intel/e1000e/netdev.c
>> index 116f3c92b5bc..4ab6897577e5 100644
>> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
>> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
>> @@ -3904,6 +3904,82 @@ static void e1000_flush_desc_rings(struct 
>> e1000_adapter *adapter)
>>           e1000_flush_rx_ring(adapter);
>>   }
>> +/**
>> + * e1000e_xtal_tgp_workaround - Adjust XTAL clock based on PHC and 
>> system
>> + * clock delta.
>> + *
>> + * Measures the time difference between the PHC (Precision Hardware 
>> Clock)
>> + * and the system clock over a 1 millisecond interval. If the delta
>> + * exceeds 100 microseconds, reconfigure the XTAL clock to 38.4 MHz.
>> + *
>> + * @adapter: Pointer to the private adapter structure
>> + **/
>> +static void e1000e_xtal_tgp_workaround(struct e1000_adapter *adapter)
>> +{
>> +    s64 phc_delta, sys_delta, sys_start_ns, sys_end_ns, delta;
>> +    struct ptp_system_timestamp sys_start = {}, sys_end = {};
>> +    struct ptp_clock_info *info = &adapter->ptp_clock_info;
>> +    struct timespec64 phc_start, phc_end;
>> +    struct e1000_hw *hw = &adapter->hw;
>> +    struct netlink_ext_ack extack = {};
>> +    unsigned long flags;
>> +    u32 timinca;
> 
> What does the variable name mean?

It is the register's name.

> 
>> +    s32 ret_val;
>> +
>> +    /* Capture start */
>> +    if (info->gettimex64(info, &phc_start, &sys_start)) {
>> +        e_dbg("PHC gettimex(start) failed\n");
>> +        return;
>> +    }
>> +
>> +    /* Small interval to measure increment */
>> +    usleep_range(1000, 1100);
>> +
>> +    /* Capture end */
>> +    if (info->gettimex64(info, &phc_end, &sys_end)) {
>> +        e_dbg("PHC gettimex(end) failed\n");
>> +        return;
>> +    }
>> +
>> +    /* Compute deltas */
>> +    phc_delta = timespec64_to_ns(&phc_end) -
>> +            timespec64_to_ns(&phc_start);
>> +
>> +    sys_start_ns = (timespec64_to_ns(&sys_start.pre_ts) +
>> +            timespec64_to_ns(&sys_start.post_ts)) >> 1;
>> +
>> +    sys_end_ns = (timespec64_to_ns(&sys_end.pre_ts) +
>> +              timespec64_to_ns(&sys_end.post_ts)) >> 1;
>> +
>> +    sys_delta = sys_end_ns - sys_start_ns;
>> +
>> +    delta = phc_delta - sys_delta;
>> +    if (delta > 100000) {
>> +        e_dbg("Corrected PHC frequency: TIMINCA set for 38.4 MHz\n");
>> +        /* Program TIMINCA for 38.4 MHz */
>> +        timinca = (INCPERIOD_38400KHZ <<
>> +               E1000_TIMINCA_INCPERIOD_SHIFT) |
> 
> Why wrap the line?

Because it passes the 80 characters per line limit.

> 
>> +              (((INCVALUE_38400KHZ <<
>> +                 adapter->cc.shift) &
>> +               E1000_TIMINCA_INCVALUE_MASK));
>> +        ew32(TIMINCA, timinca);
>> +    }
>> +
>> +    /* reset the systim ns time counter */
>> +    spin_lock_irqsave(&adapter->systim_lock, flags);
>> +    timecounter_init(&adapter->tc, &adapter->cc,
>> +             ktime_to_ns(ktime_get_real()));
>> +    spin_unlock_irqrestore(&adapter->systim_lock, flags);
>> +
>> +    /* restore the previous hwtstamp configuration settings */
>> +    ret_val = e1000e_config_hwtstamp(adapter, &adapter->hwtstamp_config,
>> +                     &extack);
>> +    if (ret_val) {
>> +        if (extack._msg)
>> +            e_err("%s\n", extack._msg);
> 
> Is a user able to do anything with this log dump?

I used the same code we used in the original function for consistency.

> 
>> +    }
>> +}
>> +
>>   /**
>>    * e1000e_systim_reset - reset the timesync registers after a 
>> hardware reset
>>    * @adapter: board private structure
>> @@ -3955,6 +4031,9 @@ static void e1000e_systim_reset(struct 
>> e1000_adapter *adapter)
>>           if (extack._msg)
>>               e_err("%s\n", extack._msg);
>>       }
>> +
>> +    if (hw->mac.type == e1000_pch_adp || hw->mac.type == e1000_pch_tgp)
>> +        return e1000e_xtal_tgp_workaround(adapter);
>>   }
>>   /**
> 
> With the changes above addressed, feel free to add
> 
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> 
> 
> Kind regards,
> 
> Paul

