Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F1593B68D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jul 2024 20:22:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9694381287;
	Wed, 24 Jul 2024 18:22:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xGU2IcRswgo2; Wed, 24 Jul 2024 18:22:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 91A0D8143A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721845329;
	bh=7dtW7mowZ75hwS6qzbFW/eEMu9eS8l6GN3rwOcMTRCc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GIF0T0CA0JaJXPIyqN5FXU0Ts8XRmgMtyTWfEC4B8ToH/tNb2scHgnhEU/fuVSrhA
	 CqYi1GSq78LwI5cBZi659shKTsclwFfqBlhcti7r6dgWdy4O1ufr700Zq5K41ghLg/
	 dH2rN1qBARCs6m6TkVKSVD9O72vpZFvDU6mBQ24m3tBbo8VukntloD4CgPk+CYNrHS
	 /vAz4iuaviau+60P5+rzfuH1lS71KTyM+CXWLJtAJoTkUMHPexOJFN9JWaPJTDMpoI
	 ZGF026ohfOmA2M/lqzmlCySoNLCQj1a7bv+UmCX+omL2BhrWmxKc430EbJZfBzQGzW
	 sRuPW8Swdkp7w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 91A0D8143A;
	Wed, 24 Jul 2024 18:22:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BC5AC1BF319
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 18:22:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AAC274033A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 18:22:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s9kNLfY3p4DD for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jul 2024 18:22:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 73CF540E17
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 73CF540E17
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 73CF540E17
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 18:22:04 +0000 (UTC)
X-CSE-ConnectionGUID: qxBV2PB1RSOoinSFf8Ktpw==
X-CSE-MsgGUID: bbBtSHrfRl2A4I0iZ4iHOA==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="30149860"
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="30149860"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 11:22:04 -0700
X-CSE-ConnectionGUID: 2IdjZbtyQwSzklGIOpgkTA==
X-CSE-MsgGUID: cWg8F17UTjykILbcmLiq4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="57478875"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Jul 2024 11:22:03 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 24 Jul 2024 11:22:03 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 24 Jul 2024 11:22:03 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 24 Jul 2024 11:22:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=L1qDIsQRFSdtSUCUY4fz+0TB4p9O56ERXwehz+iTtYnLSmqI5LKAjoSH0P7CZxsfgB0bOfO0iVXdcwfvbHrhN00RNBFmR+l5+DCYRgSfhwdWkguFY/PbcjJnWzPuukyBOqiPsDDDYzMFVu/KzeHvihXp9Gki/BZS9H3Tn1wk21Fa1IPYPj1ZVejBVx2iVA9gZ7b91vmLUgdyl51BWWLu3K/8Zh0JBMOI/mKmKigaG67f6e8ocDTaT5kvxzXl2cRNuW6DP0GSK7gUSZAoq6zcsSQMxsb3cYeH8aoMpmrT9HgrjBwjlF8mVU+4cVx+aIZEHhO7Xh6/8+VXQigovOq5iQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7dtW7mowZ75hwS6qzbFW/eEMu9eS8l6GN3rwOcMTRCc=;
 b=vzjRJuToaHpBGkGjobgk/1AS4AxnyVBUTDaXgxIae9IuAp4HqdiZdnl2MeeuIsocFBAL+woXw6YZSOCrEZeS3d5W0B6XcdeiQl8LyTTbH5VTho5davxouLKybPy2Tui1Ej0ukseBxbMxjXg+39zk9iCb+4QBbBLXRLVavCC+jqUt444w+NkYvVsQx2KwgAjTRqSOj9X2fikO9TQd6m8XO8YwURDjD9DU2ZhodyFwyueycj+l4Ckh+v/x0q2plXxD68tFVk/iD+l1P0KlLccucjJs7cm2jK5ERk9GoovheaUg5g5vOhKttW2eJod4QbQQP5DIE5lEyz2/2tDr7Mbt8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MW4PR11MB5823.namprd11.prod.outlook.com (2603:10b6:303:186::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.28; Wed, 24 Jul
 2024 18:22:00 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%2]) with mapi id 15.20.7784.017; Wed, 24 Jul 2024
 18:22:00 +0000
Message-ID: <bb2d3e07-3dce-40a8-95ea-f620328e8028@intel.com>
Date: Wed, 24 Jul 2024 11:21:58 -0700
User-Agent: Mozilla Thunderbird
To: Larysa Zaremba <larysa.zaremba@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240724164840.2536605-1-larysa.zaremba@intel.com>
 <20240724164840.2536605-2-larysa.zaremba@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240724164840.2536605-2-larysa.zaremba@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW3PR05CA0008.namprd05.prod.outlook.com
 (2603:10b6:303:2b::13) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|MW4PR11MB5823:EE_
X-MS-Office365-Filtering-Correlation-Id: c9369a4d-388f-4079-f97b-08dcac0d8252
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|7416014|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aTIzc3ZPc0ptV0JxcXQvVFZmSi9RaHViVnVoS2NtWXN0ellUVlpuZ3locFd2?=
 =?utf-8?B?YVhkanJyb1E1aVU5QlZBN0RqV0xodDcxM1FSdDdmbVVQQWRRdHFIVVU3STV2?=
 =?utf-8?B?WkYvdEM5eDJ1SnF1RmxjZ0dBTUV5cDlFQmQzVHdwV3BNUVZ0MzFOdkhCUWl6?=
 =?utf-8?B?QU9EZm5CZXlicVl5RzQyWEZxOCtzNzFXTlN1STJuYWppN0xFd3BnMWtiY0dz?=
 =?utf-8?B?dUFMS0p6U0YvOUlXWmVlaFl6ck11R0IzbWk2UWtJcHFKTTNuK1VtV0NnTVpF?=
 =?utf-8?B?aW1yTCtCdXFjZmNDQlJMYzAvMWY4WlJuZDU1cDNZT25OcGhKUks2MXB3WEJF?=
 =?utf-8?B?TVNjeEcray9tdERUNWV5MHJ0ZmhEVnkwVndQV3NUUzdrc3BZZ29nclF0c3J5?=
 =?utf-8?B?T2JCQkRheGZpZXd3a0FLRFlZcXZrL0tnVndXSE1GM1hUVWlnRmRyV1RlS2oy?=
 =?utf-8?B?aHJzRFVyWVc4UG1uMzRWdHRGZStadTRiK2RGdXpVQ2tBd1YwNnpKRVVGZWJw?=
 =?utf-8?B?UTJmY3J2WlVPQ2szQnZBTVh2UVJIL0FaYTBqR2NoWDdRM2M4cURCS2RIYXNJ?=
 =?utf-8?B?cElKRVpiYjVuKzZUdld5NG1mV2VrVEhLUzhoZGRaUGgvVjdqRWFQMmtvLzdY?=
 =?utf-8?B?ZlZxMVEyU2lIT2JnZUlHbGdvWnNveWZBdVdMekFGM1g5L1JKZGFuN21iRlA5?=
 =?utf-8?B?aS9kbmF2bkdIV0Rram4rczF3M0NMWUxqNWIxWW5YTGZWMS9DME9kcW1EQzZh?=
 =?utf-8?B?OHFHUU1zTE5DNFB1Y0E3NE5ybXNLL3ptbllsQzZndU5GSHRhWGJZd3h0TlZN?=
 =?utf-8?B?VldMK0cyVzdJZzF0UVRyQ2lYZFVzUlhpNU5pbUtuNXlHTUF2TUc4MW1FOW5B?=
 =?utf-8?B?dEs2RXpRTGJEZDZZNDRYcHFsVWJqR21EK2g3QVdPUk94UkpwbjVnb01ua1Bk?=
 =?utf-8?B?VUV1NG4weWY4VTdQZ1FISXB0R1BEVnppS2ZZall5bDJMRFNzVFZEcU5ZMDV5?=
 =?utf-8?B?bXpTeHpPMEZCZWZGRmRVcnp4WFJXUmMrUmRzRUE5Q0lwYUppNnBJL0MrYjVu?=
 =?utf-8?B?T3RXNlNWeWxyQk5wN2pVRHRQMG9TM3h1ZFd4aGkxZG9yV1E1WnVqa0xlZkh3?=
 =?utf-8?B?YzlNZEl5ZDU1b00zZURXY1FTSXdXTEJlNjlHb3o2Tk9JZDhTd1pUNEpWbDhh?=
 =?utf-8?B?eUR0VklqU2w4dXdqWW81V3l4dW9kMm9GWlIzcTlnTDZMdmhPb0NYQzNCMUtY?=
 =?utf-8?B?eWxGcHF2dTFiTVFxUExuck90a2lSNWdyeWRrTjJkdXJOKzVNWGltWHRwU0Mz?=
 =?utf-8?B?QWZBMVR5WmxVZUFaeWUvMlBWeS8wWXJqRVpPeE5qKzZKdjJrQTlTM2dmMU1P?=
 =?utf-8?B?NEVhY2pPY1NTRWNPRDdhL1M2Z0w0MTlqazhSdi94NU1UN3BvNW44ZkJMNU1G?=
 =?utf-8?B?N2tLK3B4R0pKZ2xuSVVmbEJJYXVKc0dmRU1xVW1MTHdFd3RSZ2h2MUZreEJa?=
 =?utf-8?B?VDJpUEN5Zy9VamYxRnVVVlhYYzlUcVE3UkViSm9oZXI0bW1aeDBCQVg3QUJV?=
 =?utf-8?B?U2wyaDBUaExiK2QxVEo2RVJ4Nk5pOGlGS01OSlNQcDVFZGJBbllOMTRnZWhT?=
 =?utf-8?B?QWI3T05rSUhpZ0NLcHYrb2l3eDdHY2x3NEd5QkdYTjNLWWxlQ1YzUUhONVdJ?=
 =?utf-8?B?Mlg5ci9HMmh1SUxOU0hud2Q1MjczYzlkQldycENONVNjdDNKUm5Lek1xTGhT?=
 =?utf-8?B?aEVZdm5yWnRzVDRxMS8rY2UvR29CSWMwUnB2RWR5UlowaXNGMUs0VG8rSFRZ?=
 =?utf-8?B?NklhejNMUFRub3JhT2RVZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RDJlZWJxNjA3RWt4cHFlcDBUT2VsU0dFenUvdXNjcUplRnRzemdZMElrcnBU?=
 =?utf-8?B?K2ZDUWROMlk3bUs5bUZTaVgzN2FFK2lqVm1XT1ZaK05xWGQ4SVVXaG8rTHYy?=
 =?utf-8?B?V3VyN2NYeFlQMkdZUDROekFPbWdIWXFhOTE3dVhxL1FNNVZySHJxeTMxbmxN?=
 =?utf-8?B?cVQvakhvUVZYek8wQVZBUTduL2NjR3BoL0pnRXBhbUxzWHJySTRmN0dkMnVz?=
 =?utf-8?B?bEFLKzUzZjRwSUdaYTVjYXh0NTVpczBzaGdDeHBjaG1URU5IZVJYMTdJZVVF?=
 =?utf-8?B?aWlQSExSeTgrYzUxdlRDS0k5T3d3L01UMHRVNnJvOEdnMytkaHRLRjB3RzhK?=
 =?utf-8?B?Sk14QzRmVnJlZGgrZ1FnUzVyYlI1dHhUU2FqbzErSGh2TzAyOXJ6TUpBRGNt?=
 =?utf-8?B?NmFBOXAySUVRQmlBNWJoL3R3SHJrZ2VFbTFKV3Q1UldJemtydENxUFpGaHFn?=
 =?utf-8?B?ckhFVDNtbWRPVmRsZVVRYjlXWUxaSmlGUUtPZkMrLzg1Q3hWNmpkWkhlK2VR?=
 =?utf-8?B?TXZ6NTdpQytZRjA1SFFsMmpWSEJvcWRabEw3cVF2UTl4ckxXMzFsQmRFam9w?=
 =?utf-8?B?MHlKaUR5RjlldlVRVytUbkkydlpPSmtJNVNRM1VHaTVEWEFtb0dhSHdCQXlU?=
 =?utf-8?B?M2lSZ0hpS3pPelJNZ0k4T1pyT2dQQm5FYkRpVEsrelNTYm1OKzRzcDRUN0x2?=
 =?utf-8?B?T2tnMVN2M1Z5OGlDdk1hZzBFNk9BVWVsYktoWEJBNDVZUXpEU0FvY1ZLT3V5?=
 =?utf-8?B?OWlEZ0RGeVlaM1FWdmtMeVhGeCtGZyt1UlQwSFkvd0RPMEVBbVhFRER2V1RN?=
 =?utf-8?B?MTV6TElFZDFVMGdqMFRsUG53cUxjNGFIb01PdFNJdnFLQ3A2OVFzY21hTTAx?=
 =?utf-8?B?eXY2RWs3bzZ3MzkyUllXM3ZGbjZMSXlIVVRyaXpQNU1abGUvT0h6anBJblRy?=
 =?utf-8?B?YVlsVkpFM2RNTE9Kb1E0dUFaSmltMFlDOXFLKzVlODd6Rk11VDlhelpOL2dR?=
 =?utf-8?B?OVlUanN6VDBPOGhnTlBOZncvT1JNTVptN3RIdHVkVjlEenNybUVSQXNRSlNL?=
 =?utf-8?B?cTBrcCtqbTYvQzRtOVdDdkNFbVJBZUpBd1JoMkJGQUYrTlM0S1FQVWtpQXkz?=
 =?utf-8?B?bHU2MUt2WDVjYUFic0g3WXRNTGpVUGJQbWlNMHVHZ05IUmxyeHFoUTF1NklV?=
 =?utf-8?B?K1g1bnZDTlFxblNiZzdtOElQb1pVUmxMZEQ3WkVQUXV1QlU1aTdqQ3phdVN2?=
 =?utf-8?B?UFJNYmszM3RkZmZjOFRPL210Z1ZTbXRGSXJzaTdnY2JPWlpYMWpDNHZidGVW?=
 =?utf-8?B?TW41S0xEdkxsbmI5ZTZ5UkJMckJWU2Fuak1MYzFBaTBHR3F1TXlhdzd5RmY1?=
 =?utf-8?B?YWhDODVLRnhkQUZ6d1RLRXNUbFlmblFTYVhBcks1elU2U0J1bkRKMVJVQUVm?=
 =?utf-8?B?akk5b3hHU3RmTjhZVGhYcWdxWm9nK2VSSWZ0NlB2Qm1aNFdrWjJBSC8zMEZX?=
 =?utf-8?B?bzViV05HSkptQVFnbXZFUFVTVzZiZ2NZL0xTZTF6QVJwVWQwNnBVNks3b1lZ?=
 =?utf-8?B?MDJYUXdFQW4vN0RRQWVSZS8vUUZSeG5McDR2R0tkRmNwMkM0NXFpRWE2UmN5?=
 =?utf-8?B?VTN3NFZSeWdhY1RpSnFadUZRdGJ2clM4eVRnd2I1dVZpRlJaT09tdHZHWjJp?=
 =?utf-8?B?eEpEYUV0Y0VxN28yODVnenZ1QXM2R2pMZ1FZK2UwMmF1a2J5ZXpUdzM0Wklq?=
 =?utf-8?B?Q1NFZHpZaXFqczhIL0dtVUZPWkwzZzl5K1NxRGJWN0FtZlI2cXRtODZWZFZL?=
 =?utf-8?B?djhEblkzVXRTV29odnU1R2Fmb1pXUEJZUkhaVGJlL0p4bzR4U0w3NUR0UkZM?=
 =?utf-8?B?S3hKWnk3dFZiMWdpY2MxSndsUHk3SXcxZ1dwMjhtclpnWFhpVU1yTTIvYzdp?=
 =?utf-8?B?RHEwTWh1Yk9DRCtWYU4xMnJEaG85SmdYOHZ5SmZvYThRZFVTZzRLSkN4QVB2?=
 =?utf-8?B?V00welZRRkFOV1dGdkNFaCs3eWRkcnZXUmt0TlhxclhOR3lQQzVVSGdQY3Rr?=
 =?utf-8?B?bTJ2c2x6UVB5QkRlKy9LWmhYMGU0cis4MXc3Zm9FZ285ZjIzTGdjai9RaTEv?=
 =?utf-8?B?YzloandGT05UbHgxSDBLa0tkZitQZ2RsKzRUM3JPT1hyRVpCc29SK2RPTGJF?=
 =?utf-8?B?Nmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c9369a4d-388f-4079-f97b-08dcac0d8252
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jul 2024 18:22:00.1999 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vDMFiC3VVEk4WApgUbF7GDDxQqT1yFFUSp9qQCLsedi1+YMduQ62K2ZQ4SfJZOUK98JlR0bizkDPUyj35pA13IELFVFzBu64wcAE98O5yeE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5823
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721845326; x=1753381326;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9ld62YlwRnyQHD3Hb16cRk3rHGiy83tHoKAiQBcU8Oc=;
 b=RnDBXeN43Z/KWQNSJHP895ndQp2BpbEyd+aXTERk3lWuT1FOKsmVB9Lp
 YJ0+RVCo/MtZbDeQ26gnvnujm7v2JArMwO/8w0v0s77l6ItVkmSj6nmLu
 sCHv/vNzZbut3cmcePUyFculBH/DhfZR4eOPHffI+z/T8w9SPddvun1h2
 E0moxBFGR5ToRhva6K5Krfe6Eegi5aHjbDr1HGppqXUMWX0MS2d8Y/CJN
 S2JNYzBNtc9PuAqC5OeUZIvFX5AtZIZSC48W4RZfpthy64JdWd2RhdH++
 lrrGEW5nxWrhueWRWbm1CRnrKuWkcvPek5JFNlAIbg8x49EPNhwj5d1/F
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RnDBXeN4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/6] ice: move
 netif_queue_set_napi to rtnl-protected sections
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>, Jesper Dangaard
 Brouer <hawk@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 netdev@vger.kernel.org, John Fastabend <john.fastabend@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Amritha Nambiar <amritha.nambiar@intel.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 bpf@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 7/24/2024 9:48 AM, Larysa Zaremba wrote:
> Currently, netif_queue_set_napi() is called from ice_vsi_rebuild() that is
> not rtnl-locked when called from the reset. This creates the need to take
> the rtnl_lock just for a single function and complicates the
> synchronization with .ndo_bpf. At the same time, there no actual need to
> fill napi-to-queue information at this exact point.
> 
> Fill napi-to-queue information when opening the VSI and clear it when the
> VSI is being closed. Those routines are already rtnl-locked.
> 
> Also, rewrite napi-to-queue assignment in a way that prevents inclusion of
> XDP queues, as this leads to out-of-bounds writes, such as one below.
> 
> [  +0.000004] BUG: KASAN: slab-out-of-bounds in netif_queue_set_napi+0x1c2/0x1e0
> [  +0.000012] Write of size 8 at addr ffff889881727c80 by task bash/7047
> [  +0.000006] CPU: 24 PID: 7047 Comm: bash Not tainted 6.10.0-rc2+ #2
> [  +0.000004] Hardware name: Intel Corporation S2600WFT/S2600WFT, BIOS SE5C620.86B.02.01.0014.082620210524 08/26/2021
> [  +0.000003] Call Trace:
> [  +0.000003]  <TASK>
> [  +0.000002]  dump_stack_lvl+0x60/0x80
> [  +0.000007]  print_report+0xce/0x630
> [  +0.000007]  ? __pfx__raw_spin_lock_irqsave+0x10/0x10
> [  +0.000007]  ? __virt_addr_valid+0x1c9/0x2c0
> [  +0.000005]  ? netif_queue_set_napi+0x1c2/0x1e0
> [  +0.000003]  kasan_report+0xe9/0x120
> [  +0.000004]  ? netif_queue_set_napi+0x1c2/0x1e0
> [  +0.000004]  netif_queue_set_napi+0x1c2/0x1e0
> [  +0.000005]  ice_vsi_close+0x161/0x670 [ice]
> [  +0.000114]  ice_dis_vsi+0x22f/0x270 [ice]
> [  +0.000095]  ice_pf_dis_all_vsi.constprop.0+0xae/0x1c0 [ice]
> [  +0.000086]  ice_prepare_for_reset+0x299/0x750 [ice]
> [  +0.000087]  pci_dev_save_and_disable+0x82/0xd0
> [  +0.000006]  pci_reset_function+0x12d/0x230
> [  +0.000004]  reset_store+0xa0/0x100
> [  +0.000006]  ? __pfx_reset_store+0x10/0x10
> [  +0.000002]  ? __pfx_mutex_lock+0x10/0x10
> [  +0.000004]  ? __check_object_size+0x4c1/0x640
> [  +0.000007]  kernfs_fop_write_iter+0x30b/0x4a0
> [  +0.000006]  vfs_write+0x5d6/0xdf0
> [  +0.000005]  ? fd_install+0x180/0x350
> [  +0.000005]  ? __pfx_vfs_write+0x10/0xA10
> [  +0.000004]  ? do_fcntl+0x52c/0xcd0
> [  +0.000004]  ? kasan_save_track+0x13/0x60
> [  +0.000003]  ? kasan_save_free_info+0x37/0x60
> [  +0.000006]  ksys_write+0xfa/0x1d0
> [  +0.000003]  ? __pfx_ksys_write+0x10/0x10
> [  +0.000002]  ? __x64_sys_fcntl+0x121/0x180
> [  +0.000004]  ? _raw_spin_lock+0x87/0xe0
> [  +0.000005]  do_syscall_64+0x80/0x170
> [  +0.000007]  ? _raw_spin_lock+0x87/0xe0
> [  +0.000004]  ? __pfx__raw_spin_lock+0x10/0x10
> [  +0.000003]  ? file_close_fd_locked+0x167/0x230
> [  +0.000005]  ? syscall_exit_to_user_mode+0x7d/0x220
> [  +0.000005]  ? do_syscall_64+0x8c/0x170
> [  +0.000004]  ? do_syscall_64+0x8c/0x170
> [  +0.000003]  ? do_syscall_64+0x8c/0x170
> [  +0.000003]  ? fput+0x1a/0x2c0
> [  +0.000004]  ? filp_close+0x19/0x30
> [  +0.000004]  ? do_dup2+0x25a/0x4c0
> [  +0.000004]  ? __x64_sys_dup2+0x6e/0x2e0
> [  +0.000002]  ? syscall_exit_to_user_mode+0x7d/0x220
> [  +0.000004]  ? do_syscall_64+0x8c/0x170
> [  +0.000003]  ? __count_memcg_events+0x113/0x380
> [  +0.000005]  ? handle_mm_fault+0x136/0x820
> [  +0.000005]  ? do_user_addr_fault+0x444/0xa80
> [  +0.000004]  ? clear_bhb_loop+0x25/0x80
> [  +0.000004]  ? clear_bhb_loop+0x25/0x80
> [  +0.000002]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
> [  +0.000005] RIP: 0033:0x7f2033593154
> 
> Fixes: 080b0c8d6d26 ("ice: Fix ASSERT_RTNL() warning during certain scenarios")
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---

Much simpler method, good fix and cleanup!

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
