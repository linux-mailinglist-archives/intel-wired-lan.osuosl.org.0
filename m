Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 29F389A161C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Oct 2024 01:27:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AFB2B606F3;
	Wed, 16 Oct 2024 23:27:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nQXYCS8kZNys; Wed, 16 Oct 2024 23:27:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BB457605F9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729121271;
	bh=jATRWs2HgANyjdog17VS96BtvfhTQiGkR586/Cdzr0Q=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Oph3jL2NrGA50a7ygakIlibl731QzdeAtDDB/q3nCK8h2mjDfwMGt+leD0iM0aG4y
	 gi5yGt5W+r4H5DDKsj6g6RfzKthPYevwvySfd1NqWDnLqEg1hS7MXLx8ypzS6lekL4
	 re2r+kPR+YguOqBRi7xLjY7hsL8gx7dAx2vJD0Kicwr2O0pXlXq+NRFaZSHYJzpfjt
	 A1yyydrGXXBf/esUktYPrWHzNmgCAAIfXzTRM5F9KweL9ETvqD9xuO9eQWoTMsunZD
	 3tKhX9VHlugjqBmQh9DtxG2mAIVG0bJewMszA+zUO6TeGl/AfddjGW6Xw3IsmDfb1D
	 HjZfiTBYHZcFQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BB457605F9;
	Wed, 16 Oct 2024 23:27:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 492442316
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 23:27:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2BCF480DA2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 23:27:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AlML_wK1EkHY for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Oct 2024 23:27:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 226A581165
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 226A581165
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 226A581165
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 23:27:47 +0000 (UTC)
X-CSE-ConnectionGUID: AJ43Qm/bTWOETOU3vscbdw==
X-CSE-MsgGUID: b56vCuMeQRWataTVPn65Sg==
X-IronPort-AV: E=McAfee;i="6700,10204,11226"; a="28796892"
X-IronPort-AV: E=Sophos;i="6.11,209,1725346800"; d="scan'208";a="28796892"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 16:27:47 -0700
X-CSE-ConnectionGUID: pcEZN+BvQQaDOlSIVhCgkA==
X-CSE-MsgGUID: lbu8QozYSW+CS6Z8MU5SlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,209,1725346800"; d="scan'208";a="109168436"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Oct 2024 16:27:47 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 16 Oct 2024 16:27:46 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 16 Oct 2024 16:27:46 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 16 Oct 2024 16:27:46 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 16 Oct 2024 16:27:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SJ0rvTBJynGizL9zlVGu1n49O7qMQTvvpjiRBURukBW4KRXOV4ppkEQtR9ODk0mJ7NuFj3rcXHsNoHE5LtQAbhqQy5pucdeQZZjn8YGJkXSZOMdbTaL78W6m6TvdxG0KIstJAwqpfkfZ4EMUg6Li5HuWiLipl76Ae1YJO+9Vslg2JS500l1aTWs2h0vu6UT6um1Sx+e6rVj8ZEn99hinERhq5wxbqr+L9YTOKuGKFqsuUwBCDlW25PO4LcRdY1p0sk/hExipujzC6yJn1THk083Rsz7Ozlc5zXCaxVneNALHzok/itLLsO+K2dGCSEykBT+zKcf+kpt3QYaRz1pI8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jATRWs2HgANyjdog17VS96BtvfhTQiGkR586/Cdzr0Q=;
 b=T5IUHzh8xuMAUXl9+bJI9vEJr36braM34tQo681drCePpgRmvnIc5CBFSsxSSCfS38/DDzJjYlpIDndQxvTUKxFZGjFuJe1lbZx7bJmPahliBF+ryTwjnB/24CZbBFs0STD4ORP9NYqnXcKiU4YIdki5xRMI/1lNulk6n7rWrq1RKADS8Lwag0y1hHwGpSqPvTQb2tAxjKZy2BaQDb1A/ZrmlezWA5qgW4DVtCvLaFB8GXCnp5WQmvEy2kp7E6XU3avSdpUszBoFrlX62W3BuzNC9atNG+sBFjDz0z037D4LayfdevxB5FA46UwwGljOu/d76ISUOyIluwzXIgfHHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by IA0PR11MB8377.namprd11.prod.outlook.com (2603:10b6:208:487::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.16; Wed, 16 Oct
 2024 23:27:43 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.8069.016; Wed, 16 Oct 2024
 23:27:43 +0000
Message-ID: <52932429-4e6c-40e3-8dd1-988e1be02b20@intel.com>
Date: Wed, 16 Oct 2024 16:27:41 -0700
User-Agent: Mozilla Thunderbird
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>
References: <20241010142254.2047150-1-karol.kolacinski@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20241010142254.2047150-1-karol.kolacinski@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW2PR16CA0044.namprd16.prod.outlook.com
 (2603:10b6:907:1::21) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|IA0PR11MB8377:EE_
X-MS-Office365-Filtering-Correlation-Id: 6e222dfd-58d0-4939-6eb2-08dcee3a2255
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VjZ4VU9iUndpVWtqVXlrbktIbEJmSENQak9TYjJpSk5HZUFTNmt0b1VsRFNL?=
 =?utf-8?B?SGxCVmJ5eGhZdnBwZVBTVWE5ajM4T1UyTUUyNWV2aUN3UHl5WFU2Z2hwMVFj?=
 =?utf-8?B?cERISDNKd0tTMVJ5UGwzWXNtK1lyQ1ptZ1ZEM05aUlNTV2ZBUDBYV0FSalp1?=
 =?utf-8?B?dHdNS1VPYzJMWGlZQ0pmSFgwNTliWHp3a2M2K2Y2UTNRYUh3Nk15THZuSHZk?=
 =?utf-8?B?UFl0Nkp0L0x4cTlEazd1MWxycWxEY0MyVHM3TDZvRWQ1a0UzVDFDL2JpNUF6?=
 =?utf-8?B?TlBJM2JyU21tYjJNSVMzVk5pZG0wR0pkdFhFeGZzcTkyTm5oSXBmUEh3S29l?=
 =?utf-8?B?NHppUUt1SHNCWTRJY1ZMZTFFTnNUaGgxSEpheEl4WkpnaTVXUzV6cFkvQVh2?=
 =?utf-8?B?S3hST2szQnR5MWExZTRSSDVua3lHNTVPK3p0R2dNQ0hPUXpBWmVTNTZtZEYv?=
 =?utf-8?B?T1ZjRVJ6c2Z3V3hDT3h3NjJYbFpDL2U1WjFVQ2wrbVJBNjlpTHM5WEkwUnRx?=
 =?utf-8?B?cjlYaDlhb2lPbXV2NklQeEFzOHl2YW9ZWndkRitkVXFOM3YxSTRINVBKditI?=
 =?utf-8?B?MW44VENuTUJlYUppOWVIMG5NVkpUYXcyeVBrdzk1RHNjNFJDdnRTbXVsbXN0?=
 =?utf-8?B?eTRwVFpLb080QUNkK1JjejJ3dHpmRUNDZnI3YUdYVit2QTB6bEhqRWNYSDR4?=
 =?utf-8?B?RlN5UVFUcU9wakJzK2hUcy9xWUlUaWgxQlRCR09vUnBIR3FRYk05ZHI5RGxw?=
 =?utf-8?B?SzhzR2NscGRRWTJqZS9rMmFYajYrY2FZbU56QVZ0L2VlTlBVZ29KYTBySDhF?=
 =?utf-8?B?WlArRnc5bDgza1VYOWpLYXV4NSt4djZMNWEyM3hqWnNPNUlheHExRWNFcFl6?=
 =?utf-8?B?blltNnM2aytldGhnd1NzV0dsTDhONEMwWkVhVWFqeDh1OG1ybW5tSXBiTGdZ?=
 =?utf-8?B?bkxHSnZmb0NCR2hJbTFXckg5Y3NKZWZqTDg2ekJKby9IRzBFeVNRV3QxM09j?=
 =?utf-8?B?S29lODVnaW9xd29oTWowa2hidVhCd3JSZ1JBU2QxcERiY1J6bDhqZUNFZ056?=
 =?utf-8?B?dHEwcSs2Z0lzekFleVEya0lJU1ZOVnVmbTFtUnlSMVhnMFpKMURpbmtyamYy?=
 =?utf-8?B?WWxvVS93U21JeUR6S3lYb1pBVWNFOFJabU5TWVU1VzVjZ2tXMXQySzdMRUE2?=
 =?utf-8?B?K25GQ01XYjlUWDlUd1k5THhSRFBxQk1tUUh5dW1Fd0QvQWlxbTF1QXZjMW5O?=
 =?utf-8?B?S2dzMkIxaUlqVWpjM0ZROU8xK0UwWWJOb3UvM3p1amcyVFVjOHNaVE1EMlVL?=
 =?utf-8?B?ZmZuQ0JGTHVYdEhHSm1GUjd3cDc1MldRU3BPSW1CSzRFN1BBaWVBRVZyYU14?=
 =?utf-8?B?MFk3cTdpQjB4RDN2VnVxc2VlckROQ1lycmZ3VENIWXBYSlAyTFpDeEJiMGdq?=
 =?utf-8?B?aW5hOERzc0RFanhyaDdWMUg1YUsxbk1uamhOYVYvdDFMU3JKSnRxeUkzUS9i?=
 =?utf-8?B?aTRyWTgvQTl4Z1lHdW10VVhzYzl5Y0owQm4rOHlGRW9Ka1dUKytMM0tvNzJE?=
 =?utf-8?B?cTU5SW5JblEvcmVOeEJsdnNFOHgrdzk3YlYrbnM0RmhGa0QvTjErUUVRWkh2?=
 =?utf-8?B?M0Y5TFJLTnl2eHRKcVAyQmQ1dkVXZWNyTmZsb01kdjJJbXFiRXFkWlRMTGJ4?=
 =?utf-8?B?c0JSMDFmVVpXOFgreG8wYkxXZnRqWXBKSndsSmpCY2x6NzhJYk1Lak1hNUpX?=
 =?utf-8?Q?aCacg/QRsYaxyvwpz6iaUOQO/5nGK3Lw1R8hEKX?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V20xTU05QXdGNXVKZ1BFWERsQS91UWhBMlZLalo4K0hjVmorMlgwa2E3Q3dE?=
 =?utf-8?B?dHo0RE1QRk52Mk9VeHEwMmVaU0lmMEFDMk5JR2REUUhXb21XY1BYTXowRkdR?=
 =?utf-8?B?TTBtanlNdHN1eUdQOXVqemtqbDllcGl0cXFaYXBWUEJRbEVJV1ZsQ2RVbENB?=
 =?utf-8?B?dXdoNlJ0OWRUZm13dVpwZEtXQW96aVA3dSt1aTZkYTRPZTREUTRnWHhhZFJi?=
 =?utf-8?B?bDIvVi9GZURJcjl5RWJCRlRFbityNDNPOGNVc21PTjNvR2F5bmtrak9RK2RX?=
 =?utf-8?B?MnllbEJQR0hQd0twcE5mWG1aLytaSSs0TTNWWUptaEN5cEVwaFgxcjFxMlB6?=
 =?utf-8?B?dUc1eGc0VzB3ZWFid3dKdXFDQk02VHBLQllWZ0R1bGtlanc5cStkUldDdFl3?=
 =?utf-8?B?SFBNMUVFeVdTSjZrMEZqV0tHWWhJTWkvVWxJQVhoYTdUSDdtWkVISFVLcWFz?=
 =?utf-8?B?V1FyalFLRVFaL3VQK0ZkY2NDdFBHOUMyTVZzU05zdklmckM3LzB2a0c4VDZm?=
 =?utf-8?B?N1ZKYlNFY0NPUzI1ZkVONXErTEE5S0ptYmZTT3lPVHkyRHpQUGNtN0J5Z2V4?=
 =?utf-8?B?OG00RXJhcFh1SVRuSW9FUlY3RFExeHdPVXhWbDBCTHQrNktHZ25FOFBVRFpl?=
 =?utf-8?B?ZUw3Qm00eTRTbDJBckxTU3dTKzJCcEdzR2FxMWZ4Vk1NdFlBL05EeGdWZEVr?=
 =?utf-8?B?SDd4bU52WjB0S1Ixd2I3czFTK05jekQ1UVNnWS9jM1hkcjhlM3p5UDNFSEV6?=
 =?utf-8?B?aklwU0QwVzV5MFlOL3RPMW9yQXZDWXJxa0Q3UFFlZnNrK1c1RXJDSHhvdUl1?=
 =?utf-8?B?TzBwNVQxdFJIQ3FGVEU2TlQ4UzF6aEZaZFoxbXkvSEh0Ykp0TjhDZmRlM01C?=
 =?utf-8?B?VVU2VFNCU3BnNnNyNlA0TEE0aERQakdtaTVmVmp5U0REMWI3TkFWbkRLeHk5?=
 =?utf-8?B?S2xlaFUzYlJFMzh4ZUtNS000UVZFQmhLajFiN1ppem8ySGZsZlM4VmVRUUkz?=
 =?utf-8?B?ZjBvUlFhVFdlbkNycmtTNlhneU1Ed3p4d1RlSTNtajY0UE1LRTROSFByTnE0?=
 =?utf-8?B?TTdOd1ZHSzh2dU5tT1FkUDBMREh4TE8rK0trY1BieUZlSU82SnA5QU83aERT?=
 =?utf-8?B?TDc4YTd1TEd2TmYrWXJpajIxR2lTOG8wL0o1VFg4Q0Zhc29mbDZvc0tKTDBn?=
 =?utf-8?B?clY4dWpBRjZCZllyRmRoM0lZK1ZnSWNXQU1hdnBhUnViWVd2emYwK29UTVhm?=
 =?utf-8?B?Q0pYZFhXcEVnU0tUNzJSTVF0amdENzZCTnJ4YlhRMzN4ODRvdlR2bnk4YWw0?=
 =?utf-8?B?ek1FU2d5VVZFckFDU25YbVo4MWtwMlkrYlZ4emVlZzd1ZTNpMWhxcUg5N2Jo?=
 =?utf-8?B?M3lkUlFkL3UvTGIvYVNhOFl0ZDlZSlo1QWtETGxKUnpkR1pKK1F0OUlJV3hr?=
 =?utf-8?B?THBWMDR0WXZXMzJacEFrZDRBSFJUL3Jablk0ZjdQaVBKdGpBMlI1TzhDRkNu?=
 =?utf-8?B?Tkp4bjBnTloyK08rcUhiYWZrQkpOOGdBY3BjSEVhTXBNNWZIVGZzaVlQZEla?=
 =?utf-8?B?NWNsVUp2aVNtQkxTSmZDdWZCdFJJK0VxaCtNSmhVMjZpRWhtekMvUkh3Y2VX?=
 =?utf-8?B?cWN4Zm0xOFByanFGdmJvaUR5bTdXcVp3Zm1mS09qL3RINnQvL0tMcUhvQUxh?=
 =?utf-8?B?SjAwVWo2KytSZE1pOTlpZkJEdWNQUFByUWNOclVwOUZtbmUzK3BaR1gwTmpS?=
 =?utf-8?B?UFl5K1V0K3Q2WkdlL05RYVZUZkNyeEVrWXd3UFNMaTNaK2RsUDJBY1VVRkta?=
 =?utf-8?B?MlNEdlRpY2FjYStDVDIrczdISDZoeUowb0xnSnhQOFdrc3RyMjhod2hsVTY0?=
 =?utf-8?B?WmdKdDVRTndtUTN5am1vM0c1RUFoN3pYWjB1UzZ1T0NhZjExZVN5a0hXUjVY?=
 =?utf-8?B?UFlpNURITEtJMU9jQ29jWXNiamM0SEpJbk5VcHN2NE1WeENmNlRxTnpzWXdi?=
 =?utf-8?B?RURvSWQzM3ZJQ04wNERDaWZtVCtVdjJnT2hUZlV6d1BDOEYyLzRLUUJzazhl?=
 =?utf-8?B?bkhTZHMwYzNEVjZ2a3FMT0szVzBWSkZsS1E4bGdOWWs1TnBJTThFSDNQTmV3?=
 =?utf-8?B?SlR5QUxSTzdnSVoza3pRR0R5akl5MUVHOVJjR1F2WW9TS0ZVT0d5WHQyRTZK?=
 =?utf-8?B?TWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e222dfd-58d0-4939-6eb2-08dcee3a2255
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2024 23:27:43.2282 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wYMg6E6/F8uxmG/CW83b3Tu2oFyZ9sU695kvetEqUmeGaM4pQkTb/DWCWGYETc9iM53D3ZnbSowA4wkuKakxNyPINuFtIj9AfFpmSzdw8XM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8377
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729121268; x=1760657268;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=a3SBUqcgk8kdNzpYPiVY3TgH4t+rorRJpyPqjTNhFC0=;
 b=gKi+O3q1GWDxhi/3rHG5ondm6qHhKleEhjGm3J54qgBT9tT3uISy/e1D
 tjmvyyocX5BiEMOs0KXU3wpGrv4KYvS+0Xz1m+CAnU2/I0+F+G5D6rUEu
 fRzW+4+Fa50i5Y+eYjd5Jia03sCxWy5khVI6qN5N0YYCXf+bO9O+ZYkZX
 sDTo7BtvUrIpYMxWsbQry6UIM6t/u3XTuMCzTaaFlbH9YhtFw4w/3+VbZ
 7QElHPBf2pZvhVygibkADZqa+6sT8j9gN+dPIOLJxKTE/3tlXzt7Gisxr
 T5IqMq4LESa0Y21tsxEUue8U8HAYiAz7OqWfMzJDSQVApv4kN6y1rG69h
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gKi+O3q1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net 0/4] Fix E825 initialization
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



On 10/10/2024 7:21 AM, Karol Kolacinski wrote:
> E825 products have incorrect initialization procedure, which may lead to
> initialization failures and register values.
> 
> Fix E825 products initialization by adding correct sync delay, checking
> the PHY revision only for current PHY and adding proper destination
> device when reading port/quad.
> 
> In addition, E825 uses PF ID for indexing per PF registers and as
> a primary PHY lane number, which is incorrect.
> 
> Karol Kolacinski (4):
>   ice: Fix E825 initialization
>   ice: Fix quad registers read on E825
>   ice: Fix ETH56G FC-FEC Rx offset value
>   ice: Add correct PHY lane assignment
> 

I applied these to net-queue, but they don't apply cleanly to next
queue, due to conflicts with the PHY model changes and some other issues.

I also had some questions on one of the patches.

Thanks,
Jake

>  drivers/net/ethernet/intel/ice/ice_common.c   |  42 ++-
>  drivers/net/ethernet/intel/ice/ice_common.h   |   1 +
>  drivers/net/ethernet/intel/ice/ice_main.c     |   6 +-
>  drivers/net/ethernet/intel/ice/ice_ptp.c      |  23 +-
>  drivers/net/ethernet/intel/ice/ice_ptp.h      |   4 +-
>  .../net/ethernet/intel/ice/ice_ptp_consts.h   |  77 +----
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 281 ++++++++++--------
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  40 ++-
>  drivers/net/ethernet/intel/ice/ice_sbq_cmd.h  |   7 +-
>  drivers/net/ethernet/intel/ice/ice_type.h     |   2 -
>  10 files changed, 243 insertions(+), 240 deletions(-)
> 
> V1 -> V2: Removed net-next hunks from "ice: Fix E825 initialization",
>           whole "ice: Remove unnecessary offset calculation for PF
>           scoped registers" patch and fixed kdoc in "ice: Fix quad
>           registers read on E825"
> 
> base-commit: ab8024f0207eec0f376591c958b5bd30a03ae370

