Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Co5kBW66R2pDeQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Jul 2026 15:34:38 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 19FDB702EC3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Jul 2026 15:34:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=78MqtO8L;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A713941135;
	Fri,  3 Jul 2026 13:34:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mjXsfl7tv4pj; Fri,  3 Jul 2026 13:34:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E2C1341151
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783085672;
	bh=fwk7uJFIqDce/kqX42zuzJ2+g7Ha4IxwS+Rjlc0NTIU=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=78MqtO8LNzsDUMtMyzH93NFI18tPmGOSJnfe4PW4pqGCndRuYLD5QKOwPLiXOdUGy
	 gt9BMMJOLt8byk+0VV5xFrr6XhIOYWffQf8uUpkjPibdboXt8x9tyWdnkYxIVNYSIy
	 5BKn5gPn2FGcykRx9kdQjV4/znrpI3bIl7qY/wXWcLWWaWzFlmkYiSHgXI6xJ8csll
	 jb99xU2ZbKPcxJALY6Y6spfQ+1tyhwYhWczRRdhM+fQwsMsEqm206DOjRehHD2l8aP
	 kdZBrZmKCEfLap5v1Y9OPdL0iG6+2AABFtpT4m0l9eEJb4LMMPaRpPPXpyENyzwNIE
	 wp5JgtB3ZFhDA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E2C1341151;
	Fri,  3 Jul 2026 13:34:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6CFE4316
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jul 2026 13:34:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 56F2D4063D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jul 2026 13:34:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xnN7LNOi-9Lr for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Jul 2026 13:34:30 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 80B6D405B9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 80B6D405B9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 80B6D405B9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Jul 2026 13:34:30 +0000 (UTC)
X-CSE-ConnectionGUID: 7QqLcZRNRzGwJsGW8adLgA==
X-CSE-MsgGUID: J7N0vqGZQkahwrxpgxpX6Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11835"; a="83969664"
X-IronPort-AV: E=Sophos;i="6.25,145,1779174000"; d="scan'208";a="83969664"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2026 06:34:29 -0700
X-CSE-ConnectionGUID: BZk/XqixRPiGzkX8qywnJg==
X-CSE-MsgGUID: bFvQYalwSr+TuEsAgq8rug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,145,1779174000"; d="scan'208";a="246747706"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2026 06:34:29 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Fri, 3 Jul 2026 06:34:29 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Fri, 3 Jul 2026 06:34:29 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.22) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Fri, 3 Jul 2026 06:34:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lPY1m3bq3Ryv/pk0aELHQDhiePZwmvPSlmtyeU5yNjPwPkDsdm0Bos6STCbJQuWNPSV2U0Ic/sEmWEd8b7asj+OgnwDOq68vMFD2vhY+BuTCLJVHDPRI4ze2pjSlH0sXRuKyPY0Bq+wuzdnY87n8K9ZO1MuQx//ewmBKx+v2DTPpOlRfC06N69+mCgSgQrcxBIniecDSpWBA+ffaAtpPWB7/qE2wqaFCuTHCCs9sCvxL3A+1rXpw0RUDw+kEp3tLHnph5puPcL/Xc05S6Ej7MObPmO0/QXkrk5J/OgxxGzXQThmruVqkths/hlp5X/BhF6rKzaLr5fFFaOpUnPvaVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fwk7uJFIqDce/kqX42zuzJ2+g7Ha4IxwS+Rjlc0NTIU=;
 b=f7y/bY9PZM6BD4Pl8921nPybGVupFArnLREt3kv01i+Tmz/g3feUiG6EW6jYVVPP3N8RlFzRZA0Cncy4YzJ1sPV2ocYgPopjuHZPCTXPqZi6Rr0ALJkjverFc6Dyd0tEEFlceMbmzHuIrr6GQpW9orqGWJytiDcu06VdCWvK1kOLIRZbBFajP8437GNG//5a4iUTc24G/uXXyVKl/1h0vw/UgS2iD4hTNSOAVpzS0eExE7TAIhDsGz/tExZS0sJeCSLFs9LnRtrDhwb8gl8RT48B9N4xi3clcC0WWTb72AV8pkt6/mROyJAzNduUka/HX1B4IMgqAt2lSh3aze90EQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV3PR11MB8508.namprd11.prod.outlook.com (2603:10b6:408:1b4::8)
 by PH0PR11MB4853.namprd11.prod.outlook.com (2603:10b6:510:40::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.11; Fri, 3 Jul
 2026 13:34:21 +0000
Received: from LV3PR11MB8508.namprd11.prod.outlook.com
 ([fe80::a1e8:1786:e5d1:8e51]) by LV3PR11MB8508.namprd11.prod.outlook.com
 ([fe80::a1e8:1786:e5d1:8e51%5]) with mapi id 15.21.0181.008; Fri, 3 Jul 2026
 13:34:21 +0000
Message-ID: <65001d57-9abf-4129-8c7e-e7a5136ba5b3@intel.com>
Date: Fri, 3 Jul 2026 15:34:16 +0200
User-Agent: Mozilla Thunderbird
To: Robert Malz <robert.malz@canonical.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, Alexander Lobakin <aleksander.lobakin@intel.com>, 
 Jacob Keller <jacob.e.keller@intel.com>, Jesse Brandeburg
 <jbrandeb@kernel.org>
References: <20260703103245.374800-1-robert.malz@canonical.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20260703103245.374800-1-robert.malz@canonical.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU7P194CA0007.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:10:553::30) To LV3PR11MB8508.namprd11.prod.outlook.com
 (2603:10b6:408:1b4::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV3PR11MB8508:EE_|PH0PR11MB4853:EE_
X-MS-Office365-Filtering-Correlation-Id: 93a83f29-4de7-4660-24ea-08ded907ca17
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|23010399003|3023799007|22082099003|18002099003|6133799003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: 1qLSKZJd8Uw4HaHa3Bt/qyHniQgxS/XWjLTW5RDHmNexEYLGWGZvMoRa8ntrT8jjLERzA2NYpiQL3wKiOyWGxNOVuixjeqEP3AV8cW4jpH/gbIrc8KQoNMedjW4d5McEog+jMU06QqC6+LQ5oFbMPK+moOdIb8/oMqv7Y4xv91QGQSswQOLpXDINtkdbBc8Hnvhm5L1ZAIJxcGH3kpc1smiScwT3cQYq62y99BcN9JYiHDG5NWrjVZzyGVK/7+/U0DXIbRgSYB3A4GsZ8jN2OZ6CCIlUKgkioY7MJIihP3I5SJ9GlBQhcf/dInckQUV9qksVhWwzJJf1DxN6QF3tw8lzdsvRceeatYpR+hswrh4+2ezZ6p+dp/lq6PX+EeDIEK5QkZyoxnnY4sGSH/oozDcBBHNMBC5C+H/yL5562BNsL6gFweTGpuBhJsWODUFmU7qdBgFM1XGpL58No+9N8TX35U1v5jqNnxvEQpPO3x6eqD246FzigM2HbRvhnK2e0eat+WT1Z8CV9PNgGYpTH6Cjvn7GbGSJvZ11wKwXtXNngBj0byJW3zGTsgtvSbfBh5ljNvlzd8UO4nwNoTYkHYFQfp706b8iSpZSorRdpKyNco5/IFXz7JNURuiMNZTUT2GEkhWv90GJLfn5RQV5rwLIFjqhMRxZ5sdUz4BRA8A=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV3PR11MB8508.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(23010399003)(3023799007)(22082099003)(18002099003)(6133799003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WERSb1lHUTBuV2FONTEzL25BTThkbGk5RzdYc3lJcks4S3dnNitteE1jQ2hu?=
 =?utf-8?B?SDVWczUvenVVTThRaVlydkVCOGVIZEVadEoxRGVZRW15MDF5WFhEQkkrQ0Fo?=
 =?utf-8?B?SWQ5SFRwbjNjY0s3SmNZelBFVVIxNzJvSVYyU2xkVmdFb1BCS0o0QnlWaW1i?=
 =?utf-8?B?bXlIUG1ldkhjRWQ0MUVFckZUMkJxQ1haTUhzWjR5WkZQb0RWa3Q1SDdwRjBy?=
 =?utf-8?B?S2xJTUJpWGpBZEQ4OUNKUjJma09yNlh0VVFnZmtKOVUvcHZvZDFXUDJ6ekxr?=
 =?utf-8?B?QnQ1REZFNXZlSjczZmwwaWp3TWxLcWtybzRCWHZaRml0NVlqek05L0tkbXFB?=
 =?utf-8?B?RFltcEJPcm9JZTM0d09OKzhpVXJTR3B0WDBsdUdUUWN5TlB2RGhQbzZiRUVq?=
 =?utf-8?B?RTVPSTJHUXRzRitlcVh4bXZTRlArU3RYcVBnOTNEZEZ3TklERDlua0xlOXBY?=
 =?utf-8?B?bkJWM3d3ZHRTa1p0ZU4rbURIY3ZvenpFNWNuOVlMMUo1QVpQRThiV2hPR0VS?=
 =?utf-8?B?OUpCOThobmZUaHpPT0NoZXltM0lhdThWeDdpTWlLMi82d2kvYkdDajdxWStq?=
 =?utf-8?B?VXhmaUVuWWQrYjU0TWRGSzB1VmtUVjU1cXA4NjZWOUxLWkFueVgxQ0gyR0xK?=
 =?utf-8?B?TGs3WDNGeDRVd3NIZXFvR3BIQWs1em5xb3VnRGJ4RVU2bEVOejRvNHF0cUFX?=
 =?utf-8?B?UkZYVnJhMGY1eWhKRkNsYURYY2hsMnJ6aVgxTi9JbjlYS3lGaDNuY1VlT1k4?=
 =?utf-8?B?UDdNd1d6Sk00TmlISVptT1Naa3phSDA5Tmg1Nml0Qzk5dEk3UU1lM3JweFVY?=
 =?utf-8?B?M1RMd3QvV1VTOEE4S2VyRzZodkVvQm9jR0JFMmFxckhiQnM1NERLRHBlMmtM?=
 =?utf-8?B?NmFpMDJzREtXTVpuSGMvem9abkVnQUNadXJwTzV3T0hCTzBnb3ZycXpqcGpR?=
 =?utf-8?B?SlJoVXZ5aEh6VmdIOFJlVFY5WWh1UVhCTVlqY0tBVVlxcXJBODNQZnVmbGFS?=
 =?utf-8?B?YnBLYUhwK0Y0elJiZ0JESXQwSmFUUWkxUzF3aUtYcFlaUytTOVYzcWRUc2Fu?=
 =?utf-8?B?MTRFYUdEV29qa2Z1Q1gzRnJCTWhoRzVFWnBIeTl6N01BSFBiWUVSL1l2Y0pM?=
 =?utf-8?B?ZnpReGVpTGNXOThNeHhIMzdNTFdLUG9iaGxHMWltVlErNTAzTkF5WVVub1VZ?=
 =?utf-8?B?aHJVSUg2SmdMaWtwQWkyeW1GRFNIUDdNSm5ra3YxdldJUjNGR0d2Q2kvREdU?=
 =?utf-8?B?UmxJVTk5ZkpFZk5FVmdnbTlvMXJyM0lGcnVkOTM3WUxBMGFUYjlrZWQ1WXE3?=
 =?utf-8?B?d0xsc3ZpUDlZS1ZqUnEvNHIwdGNpL3IweDlyMHZmRStmaXRScmxuVkg0bmd5?=
 =?utf-8?B?ay9uanhOZFBLajdUQjFlaGR4R044dWJXY2ZxYTdKU012Zmp6UHliVnBqdEJT?=
 =?utf-8?B?Zjgyb0dIQjZqKzdvUUtaWnV3NXhOOUczQ0JzbkZoQXZKWHBBTnp3NWpCOWUw?=
 =?utf-8?B?QTRESlRqY2NaZnJxcit4SzlGYUxrUlp1TnZoR0x1YU95V0dmcFpSSGI1RXA3?=
 =?utf-8?B?TUkybzU0Z3hlMlo1Sk9NVFZnV21KZ25WOXlha2hLS0hWblRYbG8zbUVOaUdo?=
 =?utf-8?B?WEtYamdVOWdpa1hRSHNZUVJ1b3h2NHY2aVR4UmhLNTE1c24xbmMyYldSN1Br?=
 =?utf-8?B?T1BRQ1pLblhTakhWTDhCZ2ZadjIwdkJick54Zm9qdlcyVEpObW40Y3BOZ0hv?=
 =?utf-8?B?UE8rUWdhKzVYdGFCMUlSTjlCSk9wUlVUMlFKZEN6TEdJTHNwTUp1UmxGZ3lU?=
 =?utf-8?B?ak5oWXEyNksxZWRUUlhKMGhOY201V1ozUzNNVWZ6bmpaZ2NmaXYvZVd1TDZ1?=
 =?utf-8?B?QjlYTjBEMVZkKzJFZC9DZXRMYUFWODJha05aRks1NytSb0NoY0dYOGNpNEs5?=
 =?utf-8?B?bmE2aU9ncm5NV1RveENYaG03eHI3M0tkR0RueVgxVXFRbmZvWm5JZFJSSUJy?=
 =?utf-8?B?WnpVall5WGRZNXNNem93QUVTM0dLbzZ6Ums1ditXVElUNmlRVlc1ZkZhVWs2?=
 =?utf-8?B?M3lCckVvUnRXTkJMMWhNc1diOXBLVDlPWWh3MHNPT3dvZGFaOTFFZ1hsRU01?=
 =?utf-8?B?dFBtS1JQNVdEaGJzd2F3eUtjUndLS1ZZWGkra1c5dithb29JZ1JLMDc3enVK?=
 =?utf-8?B?VThBODJrdnZsNHQ3emN5eklScVBJamlrNHFhd0F6UktyYVhRTnpnV1pwRVI2?=
 =?utf-8?B?MGJTcVNHUTdTb3VyTDNIOVUzQlhEVzNlU0JZSnI4SExCTEhkL1RTOXBOS2dy?=
 =?utf-8?B?MHVlU0tuL0lsSTZ2UVVHWURaMEE4SW9IN04xcm5LeCtBTk81b3dEZ1hhbUJI?=
 =?utf-8?Q?jenUuvQnCEVcE0tQ=3D?=
X-Exchange-RoutingPolicyChecked: TvOeVppeHOUiJtpAGMc5pOC5wyP9mazEtcpzMcsOG6fTLCuPyHrX53hsPCuLMO1WtsvECVHnFkNiKR51HRJKbMQ6ZoSZuSApQLcarVwnqbX2BtfkLQgrY/OO1neohxnVUKFfn2qq2Z+hcNagCAUSngFZxEfVJxFt53PrAt9dSOHYz4xrjE7PLjXVgiSwMiqMc/Ljzxi7oDd7MTtDo7ZdiVS5bTqyCyPiFqpIsjAfj5ZdmHbp1mVWQIojoPOzw117I5JODciwJZUA8YAciKRoPtmJFuUTCTycpXTQHOUnM0Pf53UnKlPMPmetwAMmDStFq6GzVIL2L2HCutn8iSIcPg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 93a83f29-4de7-4660-24ea-08ded907ca17
X-MS-Exchange-CrossTenant-AuthSource: LV3PR11MB8508.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jul 2026 13:34:21.4655 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: d+uEdvZDDXRNhvyd60sh9836WQzx/U7im9HeBYe2Xvs0IcbG6HvXA23tEbzug0DLoObDcQzMTwYn76nViViD86U97NpXf0Qv56p0KJTZDE4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4853
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783085670; x=1814621670;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HB5c724hpSUHKsHohEeNGsGCYioKH0gyOCoWgnnnCdQ=;
 b=R1xsImqgrnWE2tYkAAETjE2kTbILG2QbUwnYpYkWregyfZyD3HIBog/D
 kJ+s05472kE8ia0/w2VdsC1vXh8MyMdgO8JqnAbbSqIywjwycNxQMLS7i
 G1J15mJ3Bi1twIVNbynBZ+x1tCkJjz7oDQCuBt/NRKdDklkoWXx5HZN50
 k6Oq43HyxMgcV0Ro9w5YBZEyjrS+m1sTO8rZxOZpcPErxxJOFp64WVkZ/
 6oZMthrJIfbdnuUdV58pLX8/dbp/Xfmmgol+KpA23607B0lwsWJQMtBSO
 p2c5a5+I/Ka+9zXmVRgeokT9xwiOqzsP4vbB9DCJmn7QTkNwhrtYd9VY6
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=R1xsImqg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl] ice: acquire NVM lock around each
 flash read
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_RECIPIENTS(0.00)[m:robert.malz@canonical.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksander.lobakin@intel.com,m:jacob.e.keller@intel.com,m:jbrandeb@kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
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
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,intel.com:mid,osuosl.org:from_smtp,osuosl.org:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 19FDB702EC3

On 7/3/26 12:32, Robert Malz wrote:
> FW caps the NVM read lock at a maximum of 3000ms regardless of the timeout
> requested via ice_acquire_nvm(). ice_read_flat_nvm() splits a read into
> multiple ice_aq_read_nvm() commands, one per 4KB sector, all issued under a
> single lock taken by the caller. Reading a large region can exceed 3000ms,
> so FW reclaims the lock mid-read and the remaining commands might fail.
> 
> Move the lock acquire/release into ice_read_flat_nvm() so it brackets each
> individual ice_aq_read_nvm() command, ensuring the lock is never held
> across more than one FW read. ice_release_nvm() issues its own AQ command
> and would overwrite sq_last_status, so the read's AQ error is preserved
> across the release for callers such as ice_discover_flash_size() that
> inspect it.
> 
> Callers that previously took the lock around ice_read_flat_nvm(),
> ice_read_sr_word() or ice_read_flash_module() now call them without it.
> The per-block locking in ice_devlink_nvm_snapshot() is now redundant
> and dropped.
> 
> Fixes: e94509906d6b ("ice: create function to read a section of the NVM and Shadow RAM")
> Signed-off-by: Robert Malz <robert.malz@canonical.com>

thank you for extra effort [1]
current fix looks elegant!
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

[1] for reference, this is previous attempt for the fix:
https://lore.kernel.org/intel-wired-lan/CADcc-bysA531q2Wh=TD_oFqxivLLdnCRNY5jy7mkZuO0cwJwvg@mail.gmail.com

[...]

>   /**
> - * ice_read_sr_word - Reads Shadow RAM word and acquire NVM if necessary
> + * ice_read_sr_word - Reads Shadow RAM word
>    * @hw: pointer to the HW structure
>    * @offset: offset of the Shadow RAM word to read (0x000000 - 0x001FFF)
>    * @data: word read from the Shadow RAM
>    *
> - * Reads one 16 bit word from the Shadow RAM using the ice_read_sr_word_aq.
> + * Reads one 16 bit word from the Shadow RAM using ice_read_sr_word_aq.
> + *
> + * The NVM lock is acquired and released internally by ice_read_flat_nvm()
> + * around the FW read, so this function must be called without the lock held.
>    */

for future submissions would be great to "fix" kdoc warnings of touched
functions, here "Return: " section is missing.
I do not ask to fix this particular one (given there will be no ask for
v2 otherwise).

>   int ice_read_sr_word(struct ice_hw *hw, u16 offset, u16 *data)
>   {

