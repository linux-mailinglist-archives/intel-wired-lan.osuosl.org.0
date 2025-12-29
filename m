Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 37347CE7210
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Dec 2025 15:52:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7A55460AF9;
	Mon, 29 Dec 2025 14:52:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3y1cqRNcAcXG; Mon, 29 Dec 2025 14:52:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AEA5F60AF1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767019970;
	bh=ogV0Pub88eWwAyfzz87CyMdXgwQLkGY/CajslaqFX7I=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wx/bmoQp13efjBhKLyFX0nnfnH9hznOEpXlfN1XdCTpA5PrglF/du+cmr1GYyYoOR
	 r/mBX4Pw9t0/eTY0NI6C6yxH7Hh+k+lxX5uJHcBk6FPL5WcZS8+0/zENgPbwKvHdqx
	 vtYIZl/Db0IieS5vRBcvcpspxC6FROOb6eSY4Q15GuwPYX8CsIGupGAnpBJyvQHrRa
	 z/RZ1dYzzBStG0NhyJJdWx/w3eVYxcPCxgpEjT9lXyCnwxo+6NPdOFn5Zy5rTD/L0z
	 bk+SZ9RZhVpPu5Jr7wKE1ip6VV/Iwx0ztZgogiAFkWrlFb7nqL8OpTDx/fQM3NntXC
	 w3jumWUboXzLA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AEA5F60AF1;
	Mon, 29 Dec 2025 14:52:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8442E177
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Dec 2025 14:52:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7308C40259
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Dec 2025 14:52:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Bfxr3fYHAiD4 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Dec 2025 14:52:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=avigailx.dahan@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 465AA40102
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 465AA40102
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 465AA40102
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Dec 2025 14:52:48 +0000 (UTC)
X-CSE-ConnectionGUID: uzqUOCS6SmK22FU/r5TJeQ==
X-CSE-MsgGUID: 3p0MUodMQFiinsX5lRJHiw==
X-IronPort-AV: E=McAfee;i="6800,10657,11656"; a="68789208"
X-IronPort-AV: E=Sophos;i="6.21,186,1763452800"; d="scan'208";a="68789208"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2025 06:52:47 -0800
X-CSE-ConnectionGUID: zt0Nt3QYRBaSynhNkXW4JA==
X-CSE-MsgGUID: Ype5DIgATHigH5g5CU14Ig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,186,1763452800"; d="scan'208";a="200825455"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2025 06:52:47 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 29 Dec 2025 06:52:47 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 29 Dec 2025 06:52:47 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.69) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 29 Dec 2025 06:52:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XXVlF30cNS1MajXdPcuOa1r32HE4YOD3QX+8c+3nRM2Ih62a1aN/kwRqwxeS+cjXsorvGOZwusG0xCfuvp/fnd9OsQdSFVPuGAaZHeXkzf8Q3oo1CjW7jTCg0tVfCMh8i3cB3Lqd0MOpjLR/K/ANbAJyoSIuVeQnuD4ZhAjPgdXRHPDlMItFJyYg7UJUhofLCgWDPK5eNNJJ10tIUdsSx/RX7Mz7JwYeRRciwe1xKhZQII90CV2hiPwkbByZDd/iO634tdPKru6NUAJqyG9DDfq08dUX3H1Ld18oT1ytWYwKsKdATOJAsGVXGEybmonEyVKWDolPj8zBblneKbk9hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ogV0Pub88eWwAyfzz87CyMdXgwQLkGY/CajslaqFX7I=;
 b=e8P7EHz+0WVbtvJqNWlfd31TaS0B491f582mwfce4VVSoLQDCeh3SY2b9YaOFrlycZ05oUbjgI5o48VJIrTYUiz519KZMhlMqaYFneY04k5PIk/TPXvAGP0k5qyC4uEoxPNWyaG8NsQsnkHH1b2kkTr+/fVBebM4ti2uLVX29Jkf6H8KZyz04H2NaiFuercF8K2ZCksZ6tOYVjzheAI3cldzs+T2ZEwvUnQFS0qS3iAgDQE1ZPhd/TXYlF7nTYj+tLarjNJbqvWvaO4vQdWeAC2x8thHeEd0qSgj8xywMMElw2ZO0dwZCh7P50ZShRih3Jewu4HEjN+bfVS4Q9/gLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA3PR11MB8021.namprd11.prod.outlook.com (2603:10b6:806:2fd::21)
 by BL3PR11MB6412.namprd11.prod.outlook.com (2603:10b6:208:3bb::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9456.11; Mon, 29 Dec
 2025 14:52:43 +0000
Received: from SA3PR11MB8021.namprd11.prod.outlook.com
 ([fe80::f52f:bc53:5d2f:9cce]) by SA3PR11MB8021.namprd11.prod.outlook.com
 ([fe80::f52f:bc53:5d2f:9cce%5]) with mapi id 15.20.9456.013; Mon, 29 Dec 2025
 14:52:43 +0000
Message-ID: <8338c85b-28c0-47f7-8e80-5448d7490f33@intel.com>
Date: Mon, 29 Dec 2025 16:52:36 +0200
User-Agent: Mozilla Thunderbird
To: Chwee-Lin Choong <chwee.lin.choong@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Richard Cochran
 <richardcochran@gmail.com>, Vinicius Costa Gomes <vinicius.gomes@intel.com>
CC: <yipeng.chai@amd.com>, <alexander.deucher@amd.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>, Avi Shalev <avi.shalev@intel.com>, "Song
 Yoong Siang" <yoong.siang.song@intel.com>
References: <20251128105304.8147-1-chwee.lin.choong@intel.com>
Content-Language: en-US
From: Avigail Dahan <Avigailx.dahan@intel.com>
In-Reply-To: <20251128105304.8147-1-chwee.lin.choong@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TL0P290CA0005.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::16) To SA3PR11MB8021.namprd11.prod.outlook.com
 (2603:10b6:806:2fd::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA3PR11MB8021:EE_|BL3PR11MB6412:EE_
X-MS-Office365-Filtering-Correlation-Id: 929b1f0d-4d07-4ac7-0b8d-08de46e9ec07
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|921020; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?b2M0QTdVdHJTczdDOGlEbGYwdmRTTnBlUGh4NmI0Smw1aVVWdTdwaGZkMVNx?=
 =?utf-8?B?UjJsN2JYTmQxWEFCcVZlY1NUK21mOWdWNy9tRDE5TVlHY3I5TXd5c0tWNFhL?=
 =?utf-8?B?YmZIMjFPMzlFODF3cHh2d2dGbE5GdHFoWjBhdnBoclUyelErQnI1TW4wWDVa?=
 =?utf-8?B?OUFsSDM4SnFtMlJlbGpnWEZiYTFnVWZKek0zQkJsSnlNbWxRS1pFN2l0NG10?=
 =?utf-8?B?U0k0Z1AyRUxlZHRxOVZOcW4xdnQ2WUJWSHRaZ3BPN051Y1Z2OVJuazNUVmlI?=
 =?utf-8?B?T2Q2RVZUVkxkZk5aS0wrZFMrYkJjTTdLeWtPME92NzVMTEl4eVJwS3k2enh2?=
 =?utf-8?B?aHJ1TkNnR3RGdmtTa0Z2V0F0d0wvbUVDRkYyT3hTOGkydks1U2p6NU1scHlx?=
 =?utf-8?B?MC9uS0pWR1pieDhzZkdBVkZnNVh1c2o1ZXc0SkNkTDFWM3lJRForK3VKQVN2?=
 =?utf-8?B?WkdrQmU0TXJaMzJ3SkVPbzlwYUZISThlR0hLcXF0TTVKaVJ5Y24zSFpiWGow?=
 =?utf-8?B?RTJZZGg0R3A1MG5wRmszdmtoZ1NQN3AwZ1BxZEdCR1FZQWh5QVVKSHJpaXVW?=
 =?utf-8?B?QXRMTGpRbkxaQ3NCVWRUZjZGWWswRnE2cmYxZ2VHSUtSRW8rRVB5YTJpSDQ5?=
 =?utf-8?B?aGx4QktoVTY1WGo0eUVUcktsSEFUWEtHdk1qMUJxeUdTVUlQMVY2cEVGd0g5?=
 =?utf-8?B?aTM2TW1YUkVXb0VyR2VqT1preVBMVEFSeHN4MGxGR0w3VlZtZmUxNHhHOUtO?=
 =?utf-8?B?QmcrWkxQdlltSUZjT3lNSE50OUtyZlVLN1dGeWVQSTdWYllGMDEwRnJ3WXdU?=
 =?utf-8?B?T25Jd2tUMEJEeVEvb2tEWlkrUFd2MzI0ODZEYzB0M0hINEJWWGVzR0NKMDlk?=
 =?utf-8?B?V0VxOXh1ajdORExSWVJRL3FuWU9hallrWXBpRVNMMmdaYWg5V2JFTHpGNEVH?=
 =?utf-8?B?QkdieXdrSGI3aHV4aVRsNVNMZ3h2UEJ3UGd2c0gzaFkzQkw4TmtBanA5Uy9R?=
 =?utf-8?B?ODNYdlZ5NmtxMHIxZy80aDNMYUQwM0pBS3lXNVhMLys3aVVqajJHUncvZzRK?=
 =?utf-8?B?MHh1OUhrTHJzUGpkTVlabG5qUCtZbEFyRWt4QTc5Q2JyNFZnd0VLa3ZjTHNh?=
 =?utf-8?B?ME1CcFc0eVhpQ25uZlBiZ3RiOUdJeU9JdzdjU2RtaVptcmdqWnIyU0p0eDJs?=
 =?utf-8?B?T3FFeDFZY3g1ZFF1bithSnEzbTJzVm9VQzJNOEgrVzMrWWdrYnJwVW1sNlZX?=
 =?utf-8?B?L0hZOGpMbXg0b2UrVWk5WGYreFNWQ1J5L2NLYWJZMEpOa3c2RVpqZnBiYzNT?=
 =?utf-8?B?OXIxcFNnR3hibTh6ZVE1RkVxa1ZOc2J5dXhST3FwUVZPRkk1MXFkT2Rjb3p0?=
 =?utf-8?B?R08vOG50Znoxc3Vhc2V4VG1ZTXFaM3NFdkV2aXlkY0Q1eU5WTDVMS1VxWTFZ?=
 =?utf-8?B?WEhQb0RnMUF5WnpuMkYraGxXUnIzbjR0Tkk2K05lT3graWplUSt6OUlranlL?=
 =?utf-8?B?QmhmczgrMTNVcGhMMGd4cVRJTVhub3lOTFRuTTNhZnYxQ2hsczRqNDJTMW9V?=
 =?utf-8?B?eWtwU3NiNXlwZXhZWjhlNGprMjdFZjJCT0p5VDlyV2dZeks2NDhENEd3RURU?=
 =?utf-8?B?WHo5c0pITkxnTVJYUTVBMmhKSCtHd2YvWCtwYzU4VjVaVWtnZVU0aW00ZzFU?=
 =?utf-8?B?ZEVMU1A3NThldU54dCtnaDNhMVRkcUZGQU9aYktNQ2hnRlFiVnhvOGZIK2Fi?=
 =?utf-8?B?cGxiWDdKWExHM1Uzc00yYUJUd0dlUEsyQ2loS29ab2l5aUhWeWVPVWFRNVJo?=
 =?utf-8?B?VWorOUVScG5hUGhOQXBuWVJMN1JESHAzVDFySm05RXFXZlozQW1aL0NUdmVJ?=
 =?utf-8?B?OHR6U3hKT3ZOUDBCNFFkUzdQakJmYWxsbVBLakEybUZmNVNHMjR4K1h5UjE3?=
 =?utf-8?B?TEc2Sy9ma2pvVXlqdk9GY1FpSmFVdjZLdG0zRFV1U2xheTVYb0NvcXU0aTRS?=
 =?utf-8?B?TjFCTHdhWmxQR2IzeHZKVlpveU9DQnV0U1VQeTRySkZ6Sjk5VkJMdWRiNlJi?=
 =?utf-8?Q?0oqsbH?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA3PR11MB8021.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(921020); DIR:OUT; SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c3JzNjJicnp5RnNTN3dNcElXbndrMVM0elorNFJQd25QOG1BR2E5a3N1THJN?=
 =?utf-8?B?M096OXdvZUhxaUprdTI4M0hiRjFCSzRBNFFXSTJaclZFTkQwdFRCTXhHclZV?=
 =?utf-8?B?SXI2dmpIcFFMdlljOW1HMjE5WjF5d1ovSU9mZmc2YzJBUEUwMnFlYnBVM0lW?=
 =?utf-8?B?WmVlNUlaY0pyYktMVzVJcGY0MzR0L3RpVUZhdzRIalhrU2NyOFhKMm9vdDBU?=
 =?utf-8?B?emtQVDJTcWMvQ3piU0VUeTREWUxwaWpmS2RqSXlhUTUxUlo3ZTVRVlNIQXRY?=
 =?utf-8?B?UTNxTnB2d3JIYUUrWkdSM1pPdi9aWXVoamh6bkdISDRhNTZ5YWx0TTkwV2VC?=
 =?utf-8?B?aU1WU21QSjlxdUxMM0dMZWVaOXNKR2ZwdWxhdFlreUYwWndsWTZDYnFVN1RI?=
 =?utf-8?B?LzhVQXh1UmNWKy9YNjZ1akhVT01aREtOZzBCU2N5Y213bVNWYXhwNXdQRURa?=
 =?utf-8?B?eGdncE5uWEl2OXlPUnJnUG40RXVWekk0V2hURGJFdkZIZmoxRmF5TnRsWEtB?=
 =?utf-8?B?cjZJRWl5cFFRRTJXa2w0aFBKNjFVVWcvY3hPTzY5K2dUS2hwMEEwWVAyL2Zr?=
 =?utf-8?B?eWtCcldBM0pOUzBOelVmU05nbXA5OEZTa25MSTBVT05DRDB3Y01WakZXbkNG?=
 =?utf-8?B?UUxxU0ZJSm45cjlEelJ3dzkyOVRpQ1kvS2NTYlhFVTRENFk2TXNoSnp3bTNK?=
 =?utf-8?B?RDVGMjBkZURPVkhXSUVSdjZaUHFjajlkVjh4WjBtT1BESDYxLzQ4TktWRE5R?=
 =?utf-8?B?bWw3M3R0U0U2K3Y1eW5Rcmx6OVpkcm8rNzNEYUVKZUNWTnZWZTBDZ3VnTHJ2?=
 =?utf-8?B?RXp6ZzZ5VFFmd0hPbVQ1YlVab05qSzZ6SURYMXZrdXNWb2VNRmttSXBxYy96?=
 =?utf-8?B?YWNUaEkvYnM0WU92UTRHdFZEcnRDSlQzMWxETXpTK1pyS1RDRDJ1WDJiaVFq?=
 =?utf-8?B?ZkR1bjBxT3hGMFFWeWY5RnZoTU1ZajhrcmY4RUs5cnZvK2ptVHVYajVBYXBE?=
 =?utf-8?B?N3o1Uk5zaWZxd0h1aEw1U042dXgzY2RCZDFKOFdFTnBFbHhsM1E3WERLY0tu?=
 =?utf-8?B?WTFuaTVvNkJvdktPUFBNRHNaMDJ5QkZIK1U3MnJTWVFmRXdYQk1nMmI4YnEy?=
 =?utf-8?B?aTR3aU1WSFFiSHNSamVEcnhIR3lhejJMamo5ZTdEOFh2d1A3NlJOdkdKN1lD?=
 =?utf-8?B?dXdxSDRaa3dLQlN3MSszeXFnUlgvVzBVQ2JHSERkR254cU8vaFJWbUdydzRz?=
 =?utf-8?B?WjNZcGdrWDBuTlB4SmlVcW40blJ3ajU4a2hxTEZiVmRuaUlYTkNtSVpocTVy?=
 =?utf-8?B?YktheWovN0dZTGhFdzFFZWkvV3RXcHlqU3R4TzJqK2ZwMlR1WFpDYWltZ29q?=
 =?utf-8?B?Nk5MNGNqWTRmcW1SamFNS3MyTmNkbkxma0U2TnZaZTBONS9sRVFrUG9YaGdw?=
 =?utf-8?B?RE90ZjFlYXNWWm9PWFZrK3paMVNyZWJTTU5Rb3J6SUJCQ2dhL1F2QUhlVEw0?=
 =?utf-8?B?MXd1ZzBOZmY3eDQxYi9zYWJxZndzR1BKVG02VkR1VHNsOFpKd2E2SGhEa2NL?=
 =?utf-8?B?cno1b1BMeDFwanV0RDd5NE53SVBIY011Q0twTUQrZElockMzbWhPZkFydWtH?=
 =?utf-8?B?K1lGL2hBRUpDcVJJTVlpTlZoekRMcDcwVnZ5L09zeXJiZEwxbE15bXpMREhj?=
 =?utf-8?B?cUh6RGl3dUttdWY5RTNCT3A1VGpxMDg5N0RUVk9jOUphT090c3orNUtreHNx?=
 =?utf-8?B?a1kvL21RV2R4K2ljdmhZVDdqbnhOM20wZEJlWWhqM3kwZU1QeG1QSWl6ZlhH?=
 =?utf-8?B?TmZvTGxYOSsxaVZvNEFHQkpRSXI4L3h2RWNpcWg1amhqUTlEVDdxc09lRXJ6?=
 =?utf-8?B?enE3U1pjYUY1eWtWTlE3N3VYTTA3NEswaTlyamJmdUhISTNBR24zdEI1QzUz?=
 =?utf-8?B?UG9CMDlQVWRUM0pvN3RxcnM3bHBCL1VlVnozOVNSVmdTMUt2Ui9hWEswMWN3?=
 =?utf-8?B?OHlEOHR5ZWpYUkMzV0ZrMDJBNmlnUGJrZndKdmJESUl2YXBWSFRRTXNHOHov?=
 =?utf-8?B?MTIvcFppajJ4bDNnako4bkw1S1YxbThXREZjd3BHOEJXWkJSc3FmNUJqOFRo?=
 =?utf-8?B?S3dTalRodHpIU3hrMUNoTXRVVmMyTWt1QS8zVTIxZHdmejZlRGZIYTJTb3Mx?=
 =?utf-8?B?aWppREMyVENhS2ZtRXNZZGlqMkl2SDNSVGs0RHhWaFFGcVBoellVcXlCUmxy?=
 =?utf-8?B?T3hEWW9RYXc5YTdGVzlMUnN1bXFzeW9hS2h0b2IrODM0b0h6KzBwTnFtc2RR?=
 =?utf-8?B?RXZMN01QeCtiZWdFNWtVOXd1T0dvMHVtY29YcW1jbk5HNzc2Y1greWVYK1p6?=
 =?utf-8?Q?ghmCmqhvann3IMLs=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 929b1f0d-4d07-4ac7-0b8d-08de46e9ec07
X-MS-Exchange-CrossTenant-AuthSource: SA3PR11MB8021.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Dec 2025 14:52:43.7584 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +PBfYbTB1k3yH639nMpE3rpBoDW/NPKERLCJt6T1H2dqol/5jWkxHqCg7gsyoMVN7RJBwKjwTe1ZNNkglFI71B4vCtr/faUlxyCSePvoAWI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6412
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767019968; x=1798555968;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BgwVXnpbkakFEm4HXKjLA6g/yAC1N9ttX9l489VR6xc=;
 b=cZOovvhbN56gI+Azn1ykCVq/xcqmro3JnBXPGDdkZDv0777nGrKH+mtU
 OUCV2mU1VgSVfC65nr3arFxWvSUCi/EFccQX9ERxQ7Hbs6LP2kf/M/Wzv
 Bri/rrlZFHcU3Li6fnwyw01RsOGrPUfDWHTMBaebCJrWeb+0eKtLYhtOL
 OxfnAuLH1XCq40tmHyL8NNnO2Z+iVufAGQTDQbWl0BBhOkbEHFhqc2/7k
 6heRp6D7bK8DY17oeCleKwWlah7SodscbLhKuqVSNG39+smJ5zKlz8Ubf
 n7/iVXhuJZrMv+uxZI1qtNXViKbgO6RI6TbInLVqF8KuVDhDPT9uh9j/d
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cZOovvhb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4] igc: fix race condition in
 TX timestamp read for register 0
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



On 28/11/2025 12:53, Chwee-Lin Choong wrote:
> The current HW bug workaround checks the TXTT_0 ready bit first,
> then reads TXSTMPL_0 twice (before and after reading TXSTMPH_0)
> to detect whether a new timestamp was captured by timestamp
> register 0 during the workaround.
> 
> This sequence has a race: if a new timestamp is captured after
> checking the TXTT_0 bit but before the first TXSTMPL_0 read, the
> detection fails because both the “old” and “new” values come from
> the same timestamp.
> 
> Fix by reading TXSTMPL_0 first to establish a baseline, then
> checking the TXTT_0 bit. This ensures any timestamp captured
> during the race window will be detected.
> 
> Old sequence:
>    1. Check TXTT_0 ready bit
>    2. Read TXSTMPL_0 (baseline)
>    3. Read TXSTMPH_0 (interrupt workaround)
>    4. Read TXSTMPL_0 (detect changes vs baseline)
> 
> New sequence:
>    1. Read TXSTMPL_0 (baseline)
>    2. Check TXTT_0 ready bit
>    3. Read TXSTMPH_0 (interrupt workaround)
>    4. Read TXSTMPL_0 (detect changes vs baseline)
> 
> Fixes: c789ad7cbebc ("igc: Work around HW bug causing missing timestamps")
> Suggested-by: Avi Shalev <avi.shalev@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Co-developed-by: Song Yoong Siang <yoong.siang.song@intel.com>
> Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
> Signed-off-by: Chwee-Lin Choong <chwee.lin.choong@intel.com>
> ---
> v1: https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20250918183811.31270-1-chwee.lin.choong@intel.com/
> v2: https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20251127134927.2133-1-chwee.lin.choong@intel.com/
> v3: https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20251127151137.2883-1-chwee.lin.choong@intel.com/
> 
> changelog:
> v1 -> v2
> - Added detailed comments explaining the hardware bug workaround and race
>      detection mechanism
> v2 -> v3
> - Removed extra export file added by mistake	
> v3 -> v4
> - Added co-developer
> ---
>   drivers/net/ethernet/intel/igc/igc_ptp.c | 43 ++++++++++++++----------
>   1 file changed, 25 insertions(+), 18 deletions(-)
> 

Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
