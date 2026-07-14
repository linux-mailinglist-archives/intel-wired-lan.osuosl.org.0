Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xXE/D8dNVmqH3AAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Jul 2026 16:55:03 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B43756211
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Jul 2026 16:55:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=cA0u7WVZ;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5C4D7811E8;
	Tue, 14 Jul 2026 14:54:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rgWKbXC2esu6; Tue, 14 Jul 2026 14:54:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D4053811AB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1784040897;
	bh=W34kRB4fj+hDssBm7QPD2qJLGoFv6a9fzHtAZMOfNwU=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cA0u7WVZ5Bc88AIC65I9ShBbwN/xwevDgc03fjvac/YvySdaInQMANYvci+ZKmtbz
	 0+9LyCVGsqGiM7ha8ntP8W8xXpuXb5kPtsP2DD+YMKd+ePK5NXMDFC8cWy0fG8/wOt
	 AqPZJBYYtgHFhtsKO3iaGfqTpp0B27hpyWRs5261aRvlK+Acp3A1rMU6Oiugk0OihQ
	 HFlNAMFgE373qj6JmGzo/h09c12E+s80urVm7NyZys28zGDnDUt5CqsleoVIM2A6Jk
	 MJ/jYAj0D06EY2sfNt1m1lmTXndi7YQOQaZZX+IQ8fNKh3Q6NfY/0NV97vOpBaMsYe
	 /5gVDkuqVSbhg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D4053811AB;
	Tue, 14 Jul 2026 14:54:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id B921196C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jul 2026 14:54:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B62AE8119A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jul 2026 14:54:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6ck8AD_G5kIF for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Jul 2026 14:54:55 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0934E81168
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0934E81168
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0934E81168
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jul 2026 14:54:54 +0000 (UTC)
X-CSE-ConnectionGUID: a5NEPVzwR4yRGdNbyIgwUg==
X-CSE-MsgGUID: clVZiqatT9WJgPiJXUyhYQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11846"; a="83650750"
X-IronPort-AV: E=Sophos;i="6.25,163,1779174000"; d="scan'208";a="83650750"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2026 07:54:53 -0700
X-CSE-ConnectionGUID: MrE0TaUJS02e9wojUd48zQ==
X-CSE-MsgGUID: PZcUL5HFR4upY9yLy6rxUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,163,1779174000"; d="scan'208";a="256527343"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2026 07:54:53 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 14 Jul 2026 07:54:52 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Tue, 14 Jul 2026 07:54:52 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.15) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 14 Jul 2026 07:54:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GeZgkaiXPW8yLqmjwnXA8HNd2BrNlrdPitpBx8Gsmlh6gZGN3lFt4cSaw6I6KyylAZNVWmOIrtRv+amyJebsz7lj2ZeW+dT+P8aWaP0W2yJ3oxM+O/1rQg2BDTAFW8Ei9CrJqBCrt3QxpawUxahNap43XT4qubTPxtPIHme58v4K/9KBMwjBaEfQbTd4ORafL/y9ThHIgXPJytk9THoAvVaxQ5ME6ZuKGepnnV2Mq7X9Pb2LCxR5MDl8kfXsJEkq7M74G2kBa1J3964j2wWWOuQTDOg/uWZ68DkmxYpnsCSunrTNAaR0n1E5HyDCMm3bZqR7Ys0iqM+pBCEreM5o1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W34kRB4fj+hDssBm7QPD2qJLGoFv6a9fzHtAZMOfNwU=;
 b=xVrCDsBX/HLDJlwrUi7ib+NLN3gW8pvZPCSE9+yRjOl1iH+MBJxPdkqQR9VFjvi9iihvgbwLd8Fr6WuAqyBJGP/dN6zCU48O4m9BXo1vMvLUk/gMs/4XvgGGIdpZze9Tzh+ivQfKtM0g9B1KlLZloVgM1QOj6V3b30T/HRWfEWz2CYcdLFICb+QRvsdPvXBM/odUtXK6zzuqDH6K9YhJzDUQC6wgPcPq8JYwagKWemwE/6e8lwKxhP2JDZd+Be4lnFRi3wbWXZflu3epxBY64bNvyOjG0miwZZuyBoHnT47dOUDsdmIJqQyb2Q0S68yuqGsZzaeoiFqgmIwvyaELJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB8168.namprd11.prod.outlook.com (2603:10b6:610:186::20)
 by PH0PR11MB7470.namprd11.prod.outlook.com (2603:10b6:510:288::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.223.9; Tue, 14 Jul
 2026 14:54:48 +0000
Received: from CH0PR11MB8168.namprd11.prod.outlook.com
 ([fe80::9549:c8e9:6748:12ee]) by CH0PR11MB8168.namprd11.prod.outlook.com
 ([fe80::9549:c8e9:6748:12ee%3]) with mapi id 15.21.0202.014; Tue, 14 Jul 2026
 14:54:47 +0000
Message-ID: <49513a0f-6d39-499f-b4d8-db6195ce3e1d@intel.com>
Date: Tue, 14 Jul 2026 07:54:45 -0700
User-Agent: Mozilla Thunderbird
To: Myeonghun Pak <mhun512@gmail.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 <intel-wired-lan@lists.osuosl.org>
CC: Milena Olech <milena.olech@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, Ijae Kim <ae878000@gmail.com>
References: <20260714081124.90962-1-mhun512@gmail.com>
Content-Language: en-US
From: "Tantilov, Emil S" <emil.s.tantilov@intel.com>
In-Reply-To: <20260714081124.90962-1-mhun512@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0115.namprd04.prod.outlook.com
 (2603:10b6:303:83::30) To CH0PR11MB8168.namprd11.prod.outlook.com
 (2603:10b6:610:186::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB8168:EE_|PH0PR11MB7470:EE_
X-MS-Office365-Filtering-Correlation-Id: 8da20188-54df-4adb-7fd4-08dee1b7d94d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|23010399003|1800799024|56012099006|11063799006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: sb7BkZtM/wM3hZbNZ3NO/oDxz/CcWf7mGk1VA0OB1/+gyK/9LSzUQyqyncgZm1yRtnBXsGy2i8olL3TItjuDSKxBcoK63i80PjnXxOr89YWXT5Ot2q99srTYWpITpDVDllKcHGeBD7AEzA2Yk9/9LdV+SP8p9Ixoly1cGGzz91yEbGE36infkX+L5DEVQ8jd5Ya4Cf7da5AN/PXivaiSt0zUgy/tSEmr2J+zDGREirpkYhSUUOiqz8hhKB1yIC2SlF7C4rpGDBgPYN9C5UvO9Zzr0mJfII4IhMLDqOYqwPbqwQQlPGX7SfiobTiWqGeEC8dSUS+gD5S57BLuTK4WENvKbHxriXl01l619I17Idv87iXArAUH+EOzDMbagi1RlOtenMVODhegF9jLHx3L1MATausaKve5jXyujqpY0r7xxNU3A7/GddgBPRjEa1K2qApohSdxnsceZpmcVgIg3JlLAO2HWN+vwc1attDRp4JNQPxi7i2zxGaArTfXLQ2S1khVat5WvMZZWSbM7PiBikx++TuTQCjMSNgTYGfEfTbLKMzspLjORxzOuBY9mcqiHzu5P1IcZ6BDd+qKYD+5WqhcLtEd9lvcqeDpjQjPovJ0BuCkmlkb88B98Rua0T96K0VxjFNH9QndZNsqQsbWPHQpYt9lO2XX04EyftxFDWE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB8168.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(23010399003)(1800799024)(56012099006)(11063799006)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y0VYcEJJRU1yYmd2T001bk1uNlF0ZmZNYTFhbGZKZUh2MUpyNGgrN0g3RWdl?=
 =?utf-8?B?VGhRb2hxNkJyN0lFUVNSQWhGbDk2MUZjS2JNaXYxbEdrWDBHQlBHZGYxL0xl?=
 =?utf-8?B?ZzUvMmxNUVBEYkY5TVF6MHljUWs5aWE5dDZZazU4TWl2NS9ybHBzWlViSXJU?=
 =?utf-8?B?Mm1KeFdvSm5oa3pEaUVGbjc1ZDF0dk1Bd2lJUEdKTzhpeGx1VmRaVnhOSWVm?=
 =?utf-8?B?TVZISWcyQWlpQ0lUQmEwY0tzM1Rsb1MzZ2ZKcjEzZmpGdjBNVlJ6TVVVRjkx?=
 =?utf-8?B?K29OVUdIOW1ja2J0YSsyT1hyV0krZFEwMmwxbUd2OWYvUGFvUnl3Nmt6cUZ1?=
 =?utf-8?B?MFRCL3c2YTdqYUxWTmlJaDl2Lyt0Rm1pTFZCMFJCTTNZTGRRWXZTcFBaTWpj?=
 =?utf-8?B?anJlZE8xSTEvKzVMaWN0S2hQTHNVMENiYWlITXk2R2ExdGhrYkU4WC9FQ3Fs?=
 =?utf-8?B?bTNsU2pUL2pFWGtsNUpSVGhTcndpRG5LeTVGWDl0OWFkQlNLa1I5NEZKbTNS?=
 =?utf-8?B?VC9oYjlZZGZqRzNoL2t2am9tZkl1ZTNKeFhkMXppam9oejhWWE5EeTVvQmVZ?=
 =?utf-8?B?Sjk2TlhSd1VsbW1JKzNMMHlOb3FXUGZXWXNBTXByS3l0aE5PdnFTcHlaMnli?=
 =?utf-8?B?U2pnZkRaYWdJQU1rTUhPeTFKUkV1ZmRha3NkaU43dHMyUUZnSHRyNDJuV1Nx?=
 =?utf-8?B?TTRta1E5MU14R0FCdGtKQnNpQ2h0UFBJWTAzaU5aMnZaeHhmU3lkZmV2THVT?=
 =?utf-8?B?MGN1NjR3QzlXemhXdmlmSEtFRGNLY3o4V0ViQWdKRTAxOWU4Q1hxdU5FVE9n?=
 =?utf-8?B?Qk1haDRnQWUram5EOW9XSUF1V3pjNjJDSnpqQkZ3cUJQa1B1NTFNVG5BNVFB?=
 =?utf-8?B?QmlCTUhrN0dtQmlVSlBkL2FTa2I1K2tFaU1zUmFTd1NoNmNOeTJNQWovd3Nh?=
 =?utf-8?B?WG10TkhRL3dadmI1Z0JFR3pFVzc3eFBzUkNLSHRqZ1N6UER3OTVjdzRZTzdK?=
 =?utf-8?B?NkZoS3p1T0hBbjNXQ09Ebm0wd3l2OHJMS2RiaWs3b2RiSWZjT2x0KytNU3ND?=
 =?utf-8?B?Zmd3N0tWTUt4cmg1U3NzOFRtR05TdUlqZWREM3V1bEY4aG9aelhWY2YwOUFP?=
 =?utf-8?B?VWNYZGhnR0p6L3luVEhhTUYxQSsvb2hBL2VvNTFyNkdTamJ1enMraVh5NXNQ?=
 =?utf-8?B?RGJCWVBIYWdobk5TbTV1V3g5T1NJaklBcXVHV084alAvY3JNNUNib2NmT092?=
 =?utf-8?B?OU42ays0dzFqS3lUb21NVXh5ckp6Tkkxa25FRWhvMThnR3pKUkhCZEZ2RkZt?=
 =?utf-8?B?eTRBNVo2NW01ejd5ZVFVdUVsRU5YeVFDRWJqUlRYd2JreU1UZXdLRTgvVUF3?=
 =?utf-8?B?U29mbzRuWDhhM25TYWRvSlJUVWZlcklRYVVaRkYrenNndzRENzROZlJJalVK?=
 =?utf-8?B?d0lLd0trVFozVmpFZ3pKKzV4azR6STRsc2V4YnNEcGdRNlVrRllzMENBMTlJ?=
 =?utf-8?B?VVBDa0QrVjJaS0pBemNqUStWaWdoTEFVSXR5dk90Vm8wVGEvazlYb3FzQ1Qr?=
 =?utf-8?B?M2FNTm5MMlhKeTRmVE15UVcvU3JrT2kyUDNjRGtYVGZoa25ESklZYTU2SDI1?=
 =?utf-8?B?aUtxcVplM29hUHkxWVJnU2RGbnVtZit4aEFrREtaSTlJbnFHRU5HUS9oMDli?=
 =?utf-8?B?ODhnNGVra00ybGsvK3hOZFVzV0JYb3drWkZxcUQwZEZHMmVyaG5nSE9KV3FI?=
 =?utf-8?B?NXNaeTAwbTV4MkMxSVRtcjlUNTZWU2pmYVEvbGlhN0Fsa0dQS242WHdKUkli?=
 =?utf-8?B?bmRId0p4a3hHNDJYZC9Od0diKzlpNVhiZlJIeUVUdGFkZURpTHlrcnRSVjlx?=
 =?utf-8?B?OXRpTm9jeUc1dzJQK2NSQk1ZazFZZnNwbHJVNk04MXpQcHNGS2M4WndyNTF4?=
 =?utf-8?B?bVZYZ2x3dVkydXdDOXRibStFSlU5UTBZeVFySkpFUk9HcWpRc2hoTkNwUGdV?=
 =?utf-8?B?K1lRVFYweVZsMkV6NjhYcEY2aW1HZDlsRG93U00vdURsS1E0ck5Bcys1YklU?=
 =?utf-8?B?dnoxY2RqdmxBTzBMZnIyUHh0Qmc2M3BsZUl0VDJhL0FDcWU0RXpqS0d3S240?=
 =?utf-8?B?ZFdNZkNTMHRBYzB0eW1aQ0E4R3lpTld5c1FpdlVvNXpUYTFJOXE4VUNSZ1pz?=
 =?utf-8?B?N3BFMDI2d3lhdUgyZEhEejMwdzBXMHpUeXlmT1lyTjN3bWJxcTE4eWs0VHp4?=
 =?utf-8?B?T21mdjVGRFBhVndYSDF5VHZKSFo3MGVuenhrZmUwVmdLNnNxZ09jYW1lRUhn?=
 =?utf-8?B?dTZrRVBWS1lJRWZiVkg3YlRjTW1VU3hKR0U2NkdlSThyck9NOHlRckErbnht?=
 =?utf-8?Q?vvC3sOv7xJPrZK3w=3D?=
X-Exchange-RoutingPolicyChecked: VxiEZnJQic0hV9kIdibBgZnQrf00yzAMZJf55IliqB2DOQQrWKvoJrEwIAMCwp//y6xg+EU6N2NIQdGsnbD3jV8BLGqOWXAD6+RjEU7iD7D8Tbn6VEsPJ+Ts2EfdxObWosAvmjw+7dW0ySavWtQdnsGrymGurcbqO32G7ExqGJrKs3ZL3h20M0LnJQHiqeyyThCaRWG6tQ+IwGnQk9LwmgMnQLBDP61daPqkZyKyfYqSJheEEX29OPVNvSTUpsHJEv2f8x6g04U/jhg+4KboPnsu4gYWMcnT2EApi4dO9YPP74eRUwH4/WHxQCz8xMLbPE56vO8hxoVknvSkg3R0Qg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 8da20188-54df-4adb-7fd4-08dee1b7d94d
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB8168.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2026 14:54:47.6395 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sYntBSllWI/YmVUI/6BSG2C9E4in+j/tCR5lAGbOFkr1PXktyhV4P54CItaQMRnUOaQ8sonlij4CrFYHsn3LleMGhEKUMcSmJbjjNC1bdR8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7470
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784040895; x=1815576895;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wjSx9rVInkG9qw6ZdLcA3KarBNl1bQKVtIY8WYYsITM=;
 b=WxcqJmsWzNe0+a4/mjbhPkb/meRJk8yDqXRwONhOorGHWHo2nE6fXJ16
 mUWuqNJsj/VWp+Sg3kYXNbBN3tgJiosWnVBmh/UVMuLlAlUuRaO4U2ahq
 9pMOKFDJ3aA3XPTB4kkDhIJtFh0GjcfcTyDh3JKwXYBrSA3Al546XZgWU
 jAGTH0fGlNxfEG9HvMd6Laqukk/r/dGRIj3YCWFTgyL+hBHir+GmnSGlp
 AehkY9aEbKpDcaJN07SdYRhZlQCyOiEudKxp2k1gvqqNmVFcgkgUgcjIo
 EuoaC+dF/U3qCpP3Fcq0c9tOd851zm1Qo1Q2xvLd19zN10+bKMHsEhlOO
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WxcqJmsW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] idpf: disable PCIe PTM on device
 removal
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mhun512@gmail.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:milena.olech@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:ae878000@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,intel.com,lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER(0.00)[emil.s.tantilov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,vger.kernel.org,gmail.com];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[emil.s.tantilov@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,intel.com:mid,osuosl.org:from_smtp,osuosl.org:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 60B43756211

On 7/14/2026 1:11 AM, Myeonghun Pak wrote:
> idpf_probe() enables PCIe Precision Time Measurement with
> pci_enable_ptm(pdev, NULL), which programs the PTM control bits and sets
> pdev->ptm_enabled when the bus/controller supports it.  The teardown path
> in idpf_remove() releases the workqueues, vports, mutexes and the adapter
> memory but never calls pci_disable_ptm(), so PTM is left enabled on the
> device after the driver detaches.
> 
> This leaves the PCI core's software PTM state and the device's PTM control
> bits set with no bound driver.  pcim_enable_device() only arranges for
> pci_disable_device() on teardown and does not undo the PTM enable, so it
> is not a substitute here.
> 
> Pair the enable with pci_disable_ptm(pdev) in idpf_remove(), matching the
> igc and mlx5 drivers which already disable PTM on their remove paths.
> 
> Fixes: 8d5e12c5921c ("idpf: add initial PTP support")
> Co-developed-by: Ijae Kim <ae878000@gmail.com>
> Signed-off-by: Ijae Kim <ae878000@gmail.com>
> Signed-off-by: Myeonghun Pak <mhun512@gmail.com>
> ---
>   drivers/net/ethernet/intel/idpf/idpf_main.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
> index 0dd741dcfc..3d3471d3f7 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_main.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
> @@ -159,6 +159,7 @@ static void idpf_remove(struct pci_dev *pdev)
>   	mutex_destroy(&adapter->queue_lock);
>   	mutex_destroy(&adapter->vc_buf_lock);
>   
> +	pci_disable_ptm(pdev);
>   	pci_set_drvdata(pdev, NULL);
>   	kfree(adapter);
>   }

Reviewed-by: Emil Tantilov <emil.s.tantilov@intel.com>
