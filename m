Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CF1DFB57569
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Sep 2025 12:00:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E30E06F8C7;
	Mon, 15 Sep 2025 10:00:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WCMw8GXVGGOS; Mon, 15 Sep 2025 10:00:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4AD346F8D2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757930432;
	bh=X4yvQFcu2rOz+ZtwkT1vhrLnjLL8kTUOZn9pXOOfJzs=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Fky1aR4FOryXhMYuY1mg6x2XcGjR6b0Q12h6VCZArthCBp3l4qiqBJiQYEaM1gjB/
	 +WL1vXMVIem4uhgDRBtTKlmU0uNTwNTlbdy1Lfnda2A8Bbf3uc6DSwcWnOlYSlozlz
	 klWAKQQOSa/keb1K15VegTN5tC5HzWtu8zBqh5Fi2YcRZrcpMzVuOjL97Rz5ZvoTPc
	 wov1zO+W4ooIhvX0wbQhq/nMC/upKYWrYZHHQtly/SaSMlrlu6DS6QMIyAlzRZIsaz
	 BTAmgRKnir07RuiT0QhQMSTDYpgqwxrqPDsrbZgdT+8H9cjCdN7USc6eHtlwjb3KEX
	 ritCRFmNg/x/Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4AD346F8D2;
	Mon, 15 Sep 2025 10:00:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6380012D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 10:00:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 60D8F40589
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 10:00:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EUmkW9A38gs0 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Sep 2025 10:00:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AF8BC40057
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AF8BC40057
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AF8BC40057
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 10:00:29 +0000 (UTC)
X-CSE-ConnectionGUID: 5Di7HTCTQFyZxYZhJySo3g==
X-CSE-MsgGUID: FwhMeZarR6eRCOyPodJGGg==
X-IronPort-AV: E=McAfee;i="6800,10657,11553"; a="60115312"
X-IronPort-AV: E=Sophos;i="6.18,265,1751266800"; d="scan'208";a="60115312"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 03:00:29 -0700
X-CSE-ConnectionGUID: 9aWOZdjhQwqxmv8R4usG7w==
X-CSE-MsgGUID: UKy5E9WiSY+qenZdM7hCUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,265,1751266800"; d="scan'208";a="211734048"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 03:00:29 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 03:00:28 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 15 Sep 2025 03:00:28 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.44)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 03:00:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I5XPBfz0YZXuK/2Ea9hrtzoseXewLpxrgiK2IYaCQ371vQ1L2EvUFZoWYEtb+IqSbPh4h/NcgMTy5lUmqNuZcsB73jKlIgweHLAUCOsShjV2i+x9H596fFEgmDVv7uYHljiSwiEotPti+cOGqfinuCXT5ZYjMzhGm5+zGa8Ib+yBjJqVP9qX+RmI4cvs0YY4bg85Tu75pBVuNgua3yvWJi9r0TxtVoc7EHFtg9aTyhvJ1qga0NuNP7mE5FDT9BQfk0zlfZfvd5mLvpgct0AKswOqOANAXhnnTMnQ4tF8tPHjI8K4iPGEnZGNbTydmZyA/230sMn6gVTvvGxCE7snnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X4yvQFcu2rOz+ZtwkT1vhrLnjLL8kTUOZn9pXOOfJzs=;
 b=Kufukms1RgBLnNMyVc9LBoDsbNn1YlPPi8/WLaYLP5b7rUMSB386CBkAVXl2buM7l94RmcB6YNCaHpWrAv/1RFQ9Zbkby4RwCYErsnZ8Rztis69N+AeZFP7liDm4vh2o+rQM32B2DAkZLe1sDs9nHI1m7vptwYQ+KffAUYJPIbMZ4zSwBq9j8L9ZuSsIWnUry/fZV5495iAn0kJqnUQ3su9uTAsIhUgsVKThsQblzzfzKhS9Mogcam87iUBVt/SnO65rbXXdxrZ9KuN2jTRkUT/+J9ajcKFeqV3oRVxZ0FgoXY/JM9pQ0auOXl07wCjQWiw7YdFKH1HaymyqyJ7kXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by DS4PPF30373102B.namprd11.prod.outlook.com (2603:10b6:f:fc02::1b)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.19; Mon, 15 Sep
 2025 10:00:24 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.9115.020; Mon, 15 Sep 2025
 10:00:24 +0000
Message-ID: <29454e56-ce83-4f65-9595-28d9ac995365@intel.com>
Date: Mon, 15 Sep 2025 12:00:20 +0200
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: <intel-wired-lan@lists.osuosl.org>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, <netdev@vger.kernel.org>, Simon Horman
 <horms@kernel.org>, Jacob Keller <jacob.e.keller@intel.com>, Larysa Zaremba
 <larysa.zaremba@intel.com>
References: <20250912130627.5015-1-przemyslaw.kitszel@intel.com>
 <20250912130627.5015-2-przemyslaw.kitszel@intel.com>
 <0438e3b9-4ada-4dc7-9ecb-e5e6a69db027@molgen.mpg.de>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <0438e3b9-4ada-4dc7-9ecb-e5e6a69db027@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DU2PR04CA0221.eurprd04.prod.outlook.com
 (2603:10a6:10:2b1::16) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|DS4PPF30373102B:EE_
X-MS-Office365-Filtering-Correlation-Id: 47800102-6752-4f78-d930-08ddf43eb073
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?enJMdDg0b0IyODI3Z1lTbzJqWmtFU0FnS2dqVldEcGZNQlNpc3VCcldZYzZX?=
 =?utf-8?B?YWtoaGZiTkNhd3BhemNkUTBJbVFnYXNlbWdPYUVObzBJTjNPYzRMT2MwTlM0?=
 =?utf-8?B?NTJrelJZdjNJemFtSUNxLzYrVEV4cVZFcDY4THNKbmprU3BWU0w1Y1N0ZjFO?=
 =?utf-8?B?RU5QcFMzRThIM01uTjkva1dNUTRCc09FODlBZU56c2Z3YUFlZGdrV0Zxajcw?=
 =?utf-8?B?dEw4SzRVZmx2WGZ4Ykg5SzJyMVpidXlrWXR4UDR6Z05QK2RWZE5VQVQ5SHQz?=
 =?utf-8?B?THFSZkFjYjBuL0ZxK3hIM09oZkZycEZIUFJUZWZVSHpqWW9Qd1B3RGZFVHNt?=
 =?utf-8?B?ZFEycUlteVpVY3BQaHVYVzFPaVRBaGJTbXlzWitJdmNmcVhucnVkMSt4MHY4?=
 =?utf-8?B?Z2VldkFoM25WSWJxQi93R01FZ2NybXFGaXJEUnc2a0s3bWJtV3VYdGxGOHVv?=
 =?utf-8?B?WXh6NDNzRUhuZGRHdFJ4alpJZmhuLzVUaXh0aEg1VHlLcXVJMFZVKzVDTWtD?=
 =?utf-8?B?ckV2d2xNbUhvaGtsVXFPc0o4TjJmeEREeWNMaEZtQnJzMzAxRnk4aGQzNTRN?=
 =?utf-8?B?OFJ3WUlVTmEvbkcyVHp1aWV4eHVjUkhVTlVuNTN4SGFtaTJHRGh2eWZHZjNC?=
 =?utf-8?B?Q2ZDRWs4YUpSRVV5SlJqM3Q5VUNJMUY0bk5wa1JrSEl4UktVbHJudlJZVXlN?=
 =?utf-8?B?RHBNWEpHN1IrYmNBdmg1QWptK0hkQno2SFZxL3dQNE56NTVpSk1JSXNLRm83?=
 =?utf-8?B?TXFmd3NsSlFURE9PWXRoMUdVSlI5WTZMVVcxZTVkOWR1aDVSNE5XZldQMkth?=
 =?utf-8?B?WityazhyZ1RBU0hFRnRPektROHE2WnN4a3BNQjgrTFMrZEZueU5QbXNWUzBQ?=
 =?utf-8?B?ZlQydWtBWjJrVkZ4eTloZGV6cDVEckxUQUIrUDlJQlZZejZweFEvTXBsUjUz?=
 =?utf-8?B?UHE4ZG52eUdudnNIR2tIM1pWWmhLV2pDaS9DTytqWEVyYVc3TS9FSmtTTnhY?=
 =?utf-8?B?NUxRZFJIU2x2ZGtBc0FEMU56akxQQ1pHNTlTRWlVZStXeTNxZHR0TUFvVEtl?=
 =?utf-8?B?dk11anRmaUZGWHZPNVZHcmxIVjl2Tjh6aTV6b1R6cWtwSjJ0TEh0SnNvemlQ?=
 =?utf-8?B?WGVwTDMvRmpUYm5HUDZCaSt0bFVpcFhYVnBocktoV1NPelU2Y2J2Y1E5eEtz?=
 =?utf-8?B?WkpLeTJuOE1GeGpRUkNRV0ViaEJ3ZXMwUnJscnFzZFdZRzZjRXFHRjB0V1BM?=
 =?utf-8?B?d0FRTzBkdVllZytCdkJXS0lnZkt1NjdLdXUybTRKb0JlaU9NL2JrTVRqYkQ5?=
 =?utf-8?B?aitTTGJXQUlWRzBlU2p1enZFOW5MbzdQOFRKaFFOQXF1RENtUFg0S1J2Qlhv?=
 =?utf-8?B?b2V6THpaR2M1Z0RXYm5HZFBvK21Fd2ZXTERmSldKWHlzUTBWdmZPTXVzSHhC?=
 =?utf-8?B?QXlWWmJkTjZ4Z1VnQkVUdkNjeWVKKytiVVJ4ZlRrQTVrMnY0S3R6dVY4ZGxt?=
 =?utf-8?B?TjNJRnk2VUV1ZE5od1ovUHNpZDJldnBONytxQkp6bldrRHFkSzlTVkFoV0pM?=
 =?utf-8?B?TzJiMytwZWpyYmptTGlaWGpRRFR5VGJMMXg4MUF5WG1TbjE5N1MybTFNUzZV?=
 =?utf-8?B?T005YVZJU01lQWVIRUdJa1RRNHloWWZEaVVjVFdpL0hGYnFSMWE1WWh1R2E2?=
 =?utf-8?B?djNOZkVzbklVS1BFMisxcm1NZ0twamVOcTk0TklkcWtuaWRiSGZRRlJHN3g1?=
 =?utf-8?B?RzZFN2hTckZpS3BialN2cHFZNXROajZodXhGWTZMVUtuMHVUZXlXUlNJOWQ2?=
 =?utf-8?B?N2ZmQjlhaWNNOGozeDFFMGZwVzZkamwyV2lZK01CeUZnVisydUZGUXo1Nk1l?=
 =?utf-8?B?ek9VYnN1OVErYWFHRmtYTTZuYndZa0taRW9KbWJVK3lNQlE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Nmc2VEd3cDRKemRmN3FTR2ZEMXErYWYrZUt4Q2RSOEFpcFRNWEIvSjFXVVFR?=
 =?utf-8?B?K1Z5elEzbTRqZ2MxR2hkelduUkJIWitFM1ZqZnVidWVUVTNWT1V0bHlrb1Jm?=
 =?utf-8?B?MUYvWHdKK2N0ekxjT05zbCtJWnNCNHJlVzk0T1VObks5cDlHb3kvdGVBT24x?=
 =?utf-8?B?NVY2eGw4bm9ocFlwTXZUdWU2WVgxR1BLYThCOG9zOWN1OVQ4cU9ST1pYVzVZ?=
 =?utf-8?B?dlhwSi9DaUU5dDNSSTNYQkNQSUdneXpYQUthNlBTV2o1SlloN2llcktZcFgz?=
 =?utf-8?B?NmovcUMrRm5wQWxSWHhQNG5uM3FhbU4vcjBQenlLWEhjMnhua3ZZWjRLRm85?=
 =?utf-8?B?L0IreFc4aDRzZ2NzeCtLajZWOUNYV1hkbmdzcmxEam5RbnRoUGhkaTA0RWh0?=
 =?utf-8?B?VkhpZCt6cit6SnJaNFdXVCtCS0xWOXlTaTdLYnl3ZUtpdmpZN2tNVXdwUTVs?=
 =?utf-8?B?TlRWWkZtUmJVbEtNU3FIWXVyVWZwTGNVUDB0L1NFR2dzSittZmJkN1U5a2ll?=
 =?utf-8?B?eWdyR1VXeWlKU3FvSlM1ZzhabGprZ1ZRRFAxcU8rWCs2NEczYzBCYUxsN0gy?=
 =?utf-8?B?cW1HcU5icnVDZ05tWERVZXd3emc2SnMzUkZtZXdKbVhNNG5nd3ozL3NNRVA5?=
 =?utf-8?B?Rm9IUnpOSkRTaVBOWS8zbjNSaGMzMmZkQWpzeUs4Q0c0amJwdjhhaUdubmtm?=
 =?utf-8?B?eUdUdjAzZVo0dXorbDV0SS85SWNpY3NTZXJQTVloSWVaZlJiejY3ZEg4cWhw?=
 =?utf-8?B?dGRaMXFPMVNoRTM5T2kwTkFoZlcvay9LakxLRzJmYXFRVC94TEJ5andBS2o3?=
 =?utf-8?B?aU1OcEtvanZ1czdJU2JHVG9ZMzVBakE5Sk1KOW1nTlpySTN6VTdyUitjeFJN?=
 =?utf-8?B?M3VidE9hSmZEV0RLVUhLZEhKeHR6RUlsYUlXcTBsSm1PdHBiWThHaUxDNENu?=
 =?utf-8?B?YW9kUytVV3B5dHhOUk1BWkRZQlhwdWxidmNBbE1kUWFqY0FmOFRtSDkzbXhL?=
 =?utf-8?B?MkUwYjNlOTJKbGFMS1F4VnRDUnJaMDh6MFkreFVSV09NR05HdFkxaXJWYjJK?=
 =?utf-8?B?RDlIVFNDcXQvcUxoZGFQQkVwU2llTWh5ZzUwT2NERk02WVhSaVdEYm9YNEZI?=
 =?utf-8?B?YlhQOUg2SjU1MU0wc2hCWDZVMG51TVZ2Z2RpYnJ5UTJ5cWZlNW12THZhVUw5?=
 =?utf-8?B?eFBTU2lzOGg2WGQra2NTVGVmRnQ1WTUwOEp6MEZ5Sm1JQWl4bzRmRmIwd1kw?=
 =?utf-8?B?SFBvb1llZnFPMC9qTE1FRjFlY3dxNjRINTg2ejJ5dG1EYTRCN3ZXQ3RGcEQ2?=
 =?utf-8?B?elNUWmJoanZjL1dpa3BTVWZpY080UW9VUzJzRUUzdzVRd0p3WWplaXZuWVBX?=
 =?utf-8?B?TUZCZnk4RU9nMGlpRDkwSkhUb0FsbTVPUW5PcGtRRHYxYVc0V3VnNklTYnVo?=
 =?utf-8?B?Nno2M0RhM3JFVlZOdDRKSmwxaEZUemlHbVhPZHBqQnU4Q3ljandPOTRpZjJt?=
 =?utf-8?B?UXZEeHVJTFdGVEFqcXkxWFB2MDVaVGZ6amdESHp2dlp1MHhaVThWUXhsNnhG?=
 =?utf-8?B?S004QktXRkp1Yk5NbU84c0lrUmxVMVRhT3pnZCs0OWwyQVpwZ0xLOVFGTEEx?=
 =?utf-8?B?SlkrM3UvZ1ZoM2VIWUpjVjMvTTYybGp0dUtTZGVqVW85eVpOdE51b2thUGFk?=
 =?utf-8?B?cVh5VHcyS2Z0bnZlWHZXbEE5RnpCMDZOcC81V2srYkdzaEdMQnA4UGJ2NmRB?=
 =?utf-8?B?a2JsWTMwN1ptWUx3WW5LekRHWndKclU1SWszcVcwTjYrMVduR3lhdUlBK2Q3?=
 =?utf-8?B?TVR2V0V1ZDZTb3hYZVJSYTdoNnRDcEtaazJPUHNDbE5FOTJXbHN6MXdNTDlX?=
 =?utf-8?B?UGRwOUZFdUJQNnhVWXB5cU0zOC9YNnl1ZVgrK2wycWlyOXRnV2MrcmcyTnpT?=
 =?utf-8?B?eVk1ZWpEd3AxRHNiMkIyYysySUFiQkdSNGJIUmREaXJQbkt5ejd1d1Vnc2Jw?=
 =?utf-8?B?OEx0dEovL2tlVWtMempQYTd4Tk4rbHg3K2ptQ1RWaHQweG5TUEFGWE40VU9N?=
 =?utf-8?B?T0dCcUxEWkl6VTRwdXVHN1RGUEY2c2hnYnpsNmFzdFljdjlBWktiQm45cFFo?=
 =?utf-8?B?VjB5MHFLblFzVHpUZlBnS1FodmtaMUR3TU5xM1VHS1kyT2ZNbTFmUDcwOWhx?=
 =?utf-8?Q?DnCJUuzY9/TNpVFNBvmyJpQ=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 47800102-6752-4f78-d930-08ddf43eb073
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2025 10:00:24.4179 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IjZ8ND5wGAXZNX888bmWjlTbzP6ow6ONDdcJGtzQp6UB7fg2vH1/7gGhDjnECqZz4JsgJidLLrbxuwCicOrad3tp3+t6jy26VbmMvDyba2c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF30373102B
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757930429; x=1789466429;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TXPK4Dc+MOyODhaPNCtBitcVHnOBQZIF47bg+Wnh0NA=;
 b=SfHasSiOgBRi+KrCQ8V/RkzbfcTMCzbP+mbM+LR/WezdY4m5n1SJy6WU
 WPMruK7kN66FRpRs3MPAos9JWTmuZ+L4eVorM5eCcgCS/F5x/TNoaBjFW
 JIbMVAst0niixmTsfEZubMIckqRnDawRqQmGLuMAQc9Mw/fML2W5XAQxN
 uMcRk/FocrmQXHIUU0CB1cwaqRkYvbMHJEfLJQgTFyEOS6ItpDzbNe2a/
 DqRvaJYBg3zDoJVHxcFsMjCQ5sqSGPNQbKQKz4gaClTpTejTV8W5ALLNR
 PQJkb3HLskcdjbRmFrQDLhpJrpJOfPKN5Ezz3/OeS/ksvqr91x43URWjY
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SfHasSiO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/9] ice: enforce RTNL
 assumption of queue NAPI manipulation
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

On 9/12/25 15:37, Paul Menzel wrote:
> Dear Przemek,
> 
> 
> Thank you for the patch.
> 
> Am 12.09.25 um 15:06 schrieb Przemek Kitszel:
>> Instead of making assumptions in comments move them into code.
>> Be also more precise, RTNL must be locked only when there is
>> NAPI, and we have VSIs w/o NAPI that call ice_vsi_clear_napi_queues()
>> during rmmod.
>>
>> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> ---
>> CC:Larysa Zaremba <larysa.zaremba@intel.com>
> 
> That address is not in Cc.

meh, I guess it was thanks to missing space after a colon
Anyway, I have talked with Larysa about this in priv, no objections
reported then ;)

> 
>> ---
>>   drivers/net/ethernet/intel/ice/ice_lib.c | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>

Thank you

> 
> 
> Kind regards,
> 
> Paul

