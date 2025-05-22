Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F871AC1327
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 May 2025 20:16:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 85AC383C5E;
	Thu, 22 May 2025 18:16:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zWqZssdqLOLq; Thu, 22 May 2025 18:16:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E6ABE83E40
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747937808;
	bh=2Wb65Wcs67dTANGqumcVNN0OQVTJY/qOHjFO+q92mgI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fHfThcNfNHoCLtT7Y+VTMXi74l2vkYI9L1KEDSGJdCwRc8vOOpV92E7V3rzfpJ13P
	 KCEO3XjVgy4bn7RU7hphPUDD7dUsHHMuTzacku0M4QCwU6nrfobWn6YMFcei8/m6Sq
	 urgMEcjM9mh8L2nVtD0NRq/pUHl/twPO7qcby2Hb2qJImiouDTrR1Q03co0dhBXWbj
	 Grf9sKZALOv6piETMU87R33PjiXMNO77aSvo8LlOBo1EJhLi382CjnZJ7WY/HprzdI
	 v5OuUwB415uH4fXOO9AS9tykleK6yKVQGRlGH2usESUP8DsmvMFLsla1eo8t+OI6RA
	 oGcQ9hP+txC5w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E6ABE83E40;
	Thu, 22 May 2025 18:16:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id DEA6C106
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 18:16:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D0C2C83C4F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 18:16:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RKyeGMiyq5f0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 May 2025 18:16:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0F8E583C4E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0F8E583C4E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0F8E583C4E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 18:16:45 +0000 (UTC)
X-CSE-ConnectionGUID: +EouQohDRCazn+ydsRqi0w==
X-CSE-MsgGUID: 486YJp44QnWrpl7FCvRlyQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="49976619"
X-IronPort-AV: E=Sophos;i="6.15,306,1739865600"; d="scan'208";a="49976619"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 11:16:45 -0700
X-CSE-ConnectionGUID: lztp9OY/QfestjdOv12t/Q==
X-CSE-MsgGUID: ngJn5nJqQoGHjMbXa4OEJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,306,1739865600"; d="scan'208";a="145662296"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 11:16:45 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 22 May 2025 11:16:44 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 22 May 2025 11:16:44 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.69)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Thu, 22 May 2025 11:16:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pVgXxHOJNebFHwPR/U4/EwzNFmV5FUwrKpMUovAAQ923LXKJ68tY/PfiD8mjE+3xHKQfC1IoDfUIPTfZ2TFmv4lXKcLDuomgMWzDGB6/d3Gd4jJh11BzPexd8SBNil/La8VEGr7aZkuxGv32AjU7h1wYp7mBz6WL6Nr8qQew08Qz5GiE8cFosP3GiMg9Gf0qbaRk5d+nqHV9K2fsXR7rw4izbS4QpoQ+R2Q8pDjwl7jlp+gi80MR0HBoNWyPw/0cygHGvle4fj4BMI/rIpwmsU+6Z1dCVl8Ltgwr8VF2gdBanXX5rZlcdzNFb0i/zdrwMYOKdyLeX0sxOn7J36vSQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2Wb65Wcs67dTANGqumcVNN0OQVTJY/qOHjFO+q92mgI=;
 b=DNmedwO5Lcv1FVeq8idaOMggK4uBGtWrmXIv8EjeK2SHiLX4hdK/i/1B8mQFZrxe0TT0cL1L41KGOptF4do2BQpRHPxUlDYItdgSqLEC3f1eCaW5/61nvsKA7WUUke/zVNF+09lByg2ggRIW+aB9YUGBVhqpcEs3K4ux6QJ3O/TC4k5mzuFW2NfR9oGLFsrL3YNzg43ds7Zhr2LhVsGQPTSASAC/0zVWNmxzik9URpWQ8y+SOJo52p4FIv7agnSBhqbQYIyzRWX2vRmIEJ5EIelgV3Ud7/d6EyqiJHdmNLYDQnyzxWm4jlswQB6LMdIfPh6K9O1/8teuUSqSSYZMog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by DM4PR11MB6455.namprd11.prod.outlook.com (2603:10b6:8:ba::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.21; Thu, 22 May
 2025 18:16:28 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%5]) with mapi id 15.20.8699.019; Thu, 22 May 2025
 18:16:27 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, netdev <netdev@vger.kernel.org>
CC: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, Simon Horman <horms@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 1/2] net: intel: rename
 'hena' to 'hashcfg' for clarity
Thread-Index: AQHbvfpkT33lEsYOs02mrAaGEIo4HrPfDzGw
Date: Thu, 22 May 2025 18:16:27 +0000
Message-ID: <SJ0PR11MB586540A78EB452FAEEC207308F99A@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20250505-jk-hash-ena-refactor-v2-0-c1f62aee1ffe@intel.com>
 <20250505-jk-hash-ena-refactor-v2-1-c1f62aee1ffe@intel.com>
In-Reply-To: <20250505-jk-hash-ena-refactor-v2-1-c1f62aee1ffe@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|DM4PR11MB6455:EE_
x-ms-office365-filtering-correlation-id: 78625656-d721-4e07-c8d6-08dd995cc50f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?U1hHUnFPbFZ0bUdEdWllU25DVFJVVi9sVTU1VWhERENMcE5SV1hYNFV2ZWEv?=
 =?utf-8?B?Tmg0NkZZQktxNldpZlFkUytmQjJ4UC9jUmZZYW5CTlFoR2xiVDl5T2tDTzBw?=
 =?utf-8?B?VE9lVXA4ODg4MmswWnVTalFMeExwS2tRUk9FbFpFMjFTOWtIajIvR0FSVVBY?=
 =?utf-8?B?SjlhdGNuUURpR2x2dEJSbmErY1JoOW1rdHdHenh2Y0ozbG5qNHRNVEx0QWZ1?=
 =?utf-8?B?azlHZlBPbmZHdjVXWTU3blJBZXlnNHRMUGJEdTY2WklSbFFPTVg1SVdPcVI2?=
 =?utf-8?B?KzVCZDlla1N0eTZGMkZYZ1ZibGhZZnhNQWl3SEJKM3lPdFFVeU5ScTlONkVx?=
 =?utf-8?B?Zm1BN3pqZk9BMWp6a3cvcnVDMUVsM2ZicjR4TlVNaE5VVFRJdk5oQVNpc09I?=
 =?utf-8?B?OXNyNThKTGRUcTNuRmVXVHJjbDBVWmR3anJRcHlKdi9QV3dJbmw4M3hTd3Ay?=
 =?utf-8?B?NzVKTEJuZEtPbEkzVENKTDBCNDh3NkFOcmdvUk05RGVIZnRiTk1vb1ViMEVu?=
 =?utf-8?B?MjZDZ1Y4amxyTlRtbE9Rbk94SVFlcW4zQjgxZUpuczdxZy90WWpCeGhOMXl2?=
 =?utf-8?B?eTJ1QXd3TlhFV1NEOEh2TVVuRXlwVlNXNmh2V0dXSk5UREdPRHdvR1VJU2l1?=
 =?utf-8?B?YjZnYVJXbVRKaUpnSTVvanZPTmFleGUyY0czVG1LbzVFazJiTmpadFNOcHVK?=
 =?utf-8?B?ODNwV0R2NmNwRnNUcGFMWlYzOTBjOHpUSnlicm9UbVA5aGNlWC9GZUJvbXlJ?=
 =?utf-8?B?MGM4aitjeVF6eTVVNGgweU5BZnJXUmZMUXcrMko0djNGNnJLRVBvektXNXBX?=
 =?utf-8?B?UnB4bElYVzNzclNVdVZYWTVWaktSMFBzYmtjKy9pTTZaQXRQa1lGT0V6bnk1?=
 =?utf-8?B?cjREVGtzVnpqY254MjFHSFRDMXBYWUJLeUw4emFrN2NnYzJwdlI5SlVDRUhk?=
 =?utf-8?B?cmJoYlJmanFQTVhyODY5cE5IOVVKRThsMDFZNGtuZzBVbGl4eVhMS1dEWWFI?=
 =?utf-8?B?K0dUVEtBLzBkWGUwZEkzRDkzQ3lUbi9BdEMxKzZTNERtaHF3QW90ei9nWWVl?=
 =?utf-8?B?cHR4Y2l3bTdlbHNXN2dOTnVtam80SmNYNXpBaHZGYXc1MDhqbWhqKzBlYWNa?=
 =?utf-8?B?NmVyeHhudGhteDlUbU5Jb0Z2YTVqek5DczYyVjg5VGFuMzhxS3NjNE9ZMlhz?=
 =?utf-8?B?U1p6VldxZ0FNMHdnUzJndktTaE8wSlNNU2hzNExKKy9Ta09VdG0vemwrTXph?=
 =?utf-8?B?ZDIxTGo3UnpLVmhOb3lPRmMwa3Q0eFZxL09CSzBRTTR3R2gvMHgraHVZYXZp?=
 =?utf-8?B?RDVET0pvdU1Gd0p5ZkdQTzJreldkekxUcWswMThWMlE3TDNpRXdlajNhckZz?=
 =?utf-8?B?TS93RXQ4ejR1NTM5VFlFK3UwR0dEZEpDQmR4TkFTSDEvbmtidnJlcXZvRU9N?=
 =?utf-8?B?Z3JlUXIrRjlPU1lNbko1RlNhdjFNTDhHT01Ua2l2Nmx2M1kvc3ZrVHVkREZl?=
 =?utf-8?B?KzkzZmJLQWV4VzZlSXF0WGt3UXgwSjhHSzYrMGR0aERjeE9uOXhaamZOOFdn?=
 =?utf-8?B?cDZsYmJINGl3bXFKWU5taXZJNWtlUUxEMTNQZ3hVMm9TRWN4bmdua3ViRUdk?=
 =?utf-8?B?UkFUbWJveWVvQWlqMmlpbXFlOVR0dzJNTHg3czZiL0wzTm54Uys1TFFOcWp1?=
 =?utf-8?B?bHJFcXpMZ1E4QWwxelZmSVdZenZYdlFOZG03bVhwZi9Hci83TFJjaVU2Mjhs?=
 =?utf-8?B?a0FVV1VraVVMKzhNKytFK0wyd01IRHhqMzExRnBkWGt5dEd0ay8zZmtIQlZQ?=
 =?utf-8?B?c0JOY0MzM1NKN3ZkU09YREY4V2NTRzdyYk1vd2tFUkRMRUE5TWZsQlJjRW9I?=
 =?utf-8?B?Y0VvSkY2WmpDa3pjc0FnQ0xEVmw1RXlHSDhvR3NpcUN5VVEvdzdlL2xvWHFv?=
 =?utf-8?B?cWNDQUZYMzNGMUpHdVpZNTBhMzZ5alExb0dsd1BIc3VHRHZFVjg5L0ZaQUpy?=
 =?utf-8?Q?nYRxpL0jwtfmRPM+O+3P4SnW7tEKXA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dGJtaFJaM2pJRGNRbXJYYUpRdEFKeFFzOWdVTy9yQUlGRWVNTEdzcEFmcnlN?=
 =?utf-8?B?NHp4K2Jib3hVOXdKZjhTS1lHZWh3RDlTSlVJTWZJdjQ3Y0Q4RWY1TFFhNkZy?=
 =?utf-8?B?ME5oVmdHOEs0b3pFWG14azIzNmhUR2lmU3QvZTlHcmtkc21LemhCSXRtbzZi?=
 =?utf-8?B?RHpRN0RtV1NMYUViVXJNRDdKT2RVRjJTeUFyZU4wUFc0b2RUa0ZxenRWaXY0?=
 =?utf-8?B?RHNJclJHYzhDNGx3dGFaSWxoNDM3am9XKzBOYXpJVkh1RW5VV3ZxU2NWQ08x?=
 =?utf-8?B?WTByVWJTZCs2Zy9ZT3Bwd09vYjdOZURsSXdqTUxta0orSkVhZ01WM2xKTnVC?=
 =?utf-8?B?cUlxVW16aEtHbmoxSmRuZFpjbFRqM3JDU3BaekYwZFo3dmZlakpWTCtxdUhO?=
 =?utf-8?B?SEcrbzlhVXI4by9ENFQybzBUSk9lYkd2NklhZXlodk5Qb0dJNlN5TlorMVVr?=
 =?utf-8?B?bWN2STdNYkZMRHhreDlXczA3UkxjRVpLZW01OWNnMHgwS01uMUh6WU43MEpS?=
 =?utf-8?B?bENJbTVkTjRTTmpDMGhENUYrVTlsWVdGWjloQ0d1blo1WS9xQ0x1WlVmWTZC?=
 =?utf-8?B?SmdCZ1o2THFMT3FlYzB3UEZHdGxOTzBiSFgzbHk5V3ZrYU1CLzFvcm9JSjNQ?=
 =?utf-8?B?U0VoMEg2SzR3S1lBWTNyQVhjTkVyN05HclZaUXBvRFcxQjVhaWR3VXN3aTVY?=
 =?utf-8?B?cnU1YXJYZDErOGlzTHZ3b2hTaDdtTVg2QVVacFQ1MTBna3FwTzNBTkxadWFN?=
 =?utf-8?B?TzMzU0gxWm9GUTVneHZJLzZTdTlEcm44dmNSaFJ4NVhyalQ0RU55eW1lZHhC?=
 =?utf-8?B?enBNUE4zVmI2dVpPNHY1Q1dXYU9mbEZSNEp4MUlTaXNGQTZCYWs2UjRNL0F3?=
 =?utf-8?B?MUNwQ1ZXbUp1MzZtMjFCUmpaSHg4dTRWb0dpZUpjZWJEc0lUM095WFZBZ2F0?=
 =?utf-8?B?VnZIKzVsbW9YN2ZBYkN1c09ncHFHd2hCYU1nd0tHMnJYdDk3bzNMeTZYSVdQ?=
 =?utf-8?B?RnFaL21mWTMxTkRqa21ZNTcvVHliMkNNSlE1L0JZQzN2Y2hEQlZkU21JZUZ1?=
 =?utf-8?B?b3BEVmZLYU5CQU9DWWJjZ1h0UlRTNmJQNmFhdVZnMDg1WVpUb1M5b2hVR09P?=
 =?utf-8?B?c3luNVBQT2VqZ3lFUklncEgzNzlIT0VxQ09aSjh2aVdzY2daSUZkSm81Z2Iv?=
 =?utf-8?B?RVBXODQvaklzOHl1TEdlbXV0RDVQNVpoWFR6UFdER3Npc0N6a2QvZ093TGZP?=
 =?utf-8?B?d2ZHYnhyOEplMloxcjhSbUVGUWMyM0xqaVJ4a2lUV2hQYkJSWktlcjJzZTcx?=
 =?utf-8?B?ZVJnWGd2REhOSmZ6NXZFUGJGR0RiRXozM1hQWHBQYzhJQVJiSi9CeWpVNEsy?=
 =?utf-8?B?Qkg3ZkxMRDVOVndTRzN4Mk5qbjc1Z1NZYWQ2NzlTRVNUalIvT3lCemxIUXds?=
 =?utf-8?B?cTFUUHhlWTBUWFI4SzdJeGxZaVQvRUljVzEwVkRCWFB0aXpUTVp5Qlpzcllo?=
 =?utf-8?B?TjY5WkhvUUI1d1BCeFNndjRxUG5wV2syaUZONzV5aEJxMTN2aHgvVUpXaWho?=
 =?utf-8?B?bDI3dlEyZ2NxUU0zR1gva2FHNnZXMTdZdFN6RElvN2ZxOFBCRkswbW1tSS9u?=
 =?utf-8?B?QnlLaWJaaEVYN2Vqd0FJOEx2Q3dXbi9lZFRMK1RzbWtVTFVVdlduNlVJSVE0?=
 =?utf-8?B?SUJZdzAwb0pFaUFFd2czMlNmN29jVDhGNjJTTzBLWllNejZiTWZ0VVcyQVlH?=
 =?utf-8?B?cTBQUFdnV2x0T0ZVZDM1cDdsYzhaL0dNZDBQeWVVSTFFcWhqbEg3RTdvN0tW?=
 =?utf-8?B?V2NvcWNYRXlncjRtZFIzSHJsVjlXcjcrMTdwVkY2QmxHNjJoQkpldlNhVGxN?=
 =?utf-8?B?M0dZTFc3YVZXUkxXcnhMUlVjaXlLWlcveWFpSTVrYk1kOW5kNXpyemZFVzdU?=
 =?utf-8?B?MkplZ1R5Q0hVS0JwaXBIby8rR2ZJNVovZ3BWeWpHT3VNMFJZNWJRSFY2TlQ1?=
 =?utf-8?B?bk44R0ZvaEJJVlhqcC8yZ0gvVWpxYjJxQUNwUmZSZHlDbzhJY3J4d1h5Qlk2?=
 =?utf-8?B?ODhndjFYdWYzaGc5SUtLRG9CSWtDYkJHdjRtL0dYMFI1c0RGMnVqSDJDd3J6?=
 =?utf-8?B?WERCUlVrWXhKcm1CTVJKT1hDMXorM0p5cU9ZUHdyekg5KzVXYUk3clFrVzdw?=
 =?utf-8?B?NHc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 78625656-d721-4e07-c8d6-08dd995cc50f
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2025 18:16:27.8521 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 48lMVQ3NFx93h+H+isZK3ZbqCiEn2MhpDHpjv1wj2CjyJYBQ7217KQ2RoexyPKtmUY9ReKa90FhC306deB7pcn1hzzgc76eqQ8Qsc36wKh4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6455
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747937806; x=1779473806;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2Wb65Wcs67dTANGqumcVNN0OQVTJY/qOHjFO+q92mgI=;
 b=AZx8Av/vcaRnVkHiHewufjnw0W6oRZKfrBu04okCau1s3UJVkRkEvB1F
 iwktm8lSDGvE9NqR/mFy4Km9nfaOdX1XsDZ0tyAf41Dld8nmMqR8ZgvZC
 ztXM1eRqxERR5lVBPD1HtTvg8cKEAW0A1kLSBsKN5ZACCd6W//qnjLXq1
 LT/NDfTrRjvmV0hIHaWdJt/suyqCZ/htvWic2himREA4qaEF4AnjErElc
 cGL8hjP7nCvFgnUBq/ugv/hOSLwka8SvJ3C/M8kuAn9NufPgbmgnBJuM5
 lOH6/tAWvOSHIbIOF9oHF/3j0XPwUpSppx/ZR0qVrRMCPWeVcEbl/rhdM
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AZx8Av/v
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/2] net: intel: rename
 'hena' to 'hashcfg' for clarity
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYg0KPiBL
ZWxsZXINCj4gU2VudDogTW9uZGF5LCBNYXkgNSwgMjAyNSAxMDoxNCBQTQ0KPiBUbzogSW50ZWwg
V2lyZWQgTEFOIDxpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZz47IE5ndXllbiwgQW50
aG9ueSBMDQo+IDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IG5ldGRldiA8bmV0ZGV2QHZn
ZXIua2VybmVsLm9yZz4NCj4gQ2M6IEtlbGxlciwgSmFjb2IgRSA8amFjb2IuZS5rZWxsZXJAaW50
ZWwuY29tPjsgS2l0c3plbCwgUHJ6ZW15c2xhdw0KPiA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVs
LmNvbT47IExva3Rpb25vdiwgQWxla3NhbmRyDQo+IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVs
LmNvbT47IFNpbW9uIEhvcm1hbiA8aG9ybXNAa2VybmVsLm9yZz4NCj4gU3ViamVjdDogW0ludGVs
LXdpcmVkLWxhbl0gW1BBVENIIGl3bC1uZXh0IHYyIDEvMl0gbmV0OiBpbnRlbDogcmVuYW1lICdo
ZW5hJyB0bw0KPiAnaGFzaGNmZycgZm9yIGNsYXJpdHkNCj4gDQo+IGk0MGUsIGljZSwgYW5kIGlB
VkYgYWxsIHVzZSAnaGVuYScgYXMgYSBzaG9ydGhhbmQgZm9yIHRoZSAiaGFzaCBlbmFibGUiDQo+
IGNvbmZpZ3VyYXRpb24uIFRoaXMgY29tZXMgb3JpZ2luYWxseSBmcm9tIHRoZSBYNzEwIGRhdGFz
aGVldCAneHhRRl9IRU5BJw0KPiByZWdpc3RlcnMuIEluIHRoZSBjb250ZXh0IG9mIHRoZSByZWdp
c3RlcnMgdGhlIG1lYW5pbmcgaXMgZmFpcmx5IGNsZWFyLg0KPiANCj4gSG93ZXZlciwgb24gaXRz
IG93biwgaGVuYSBpcyBhIHdlaXJkIG5hbWUgdGhhdCBjYW4gYmUgbW9yZSBkaWZmaWN1bHQgdG8N
Cj4gdW5kZXJzdGFuZC4gVGhpcyBpcyBlc3BlY2lhbGx5IHRydWUgaW4gaWNlLiBUaGUgRTgxMCBo
YXJkd2FyZSBkb2Vzbid0IGV2ZW4gaGF2ZQ0KPiByZWdpc3RlcnMgd2l0aCBIRU5BIGluIHRoZSBu
YW1lLg0KPiANCj4gUmVwbGFjZSB0aGUgc2hvcnRoYW5kICdoZW5hJyB3aXRoICdoYXNoY2ZnJy4g
VGhpcyBtYWtlcyBpdCBjbGVhciB0aGUgdmFyaWFibGVzIGRlYWwNCj4gd2l0aCB0aGUgSGFzaCBj
b25maWd1cmF0aW9uLCBub3QganVzdCBhIHNpbmdsZSBib29sZWFuIG9uL29mZiBmb3IgYWxsIGhh
c2hpbmcuDQo+IA0KPiBEbyBub3QgdXBkYXRlIHRoZSByZWdpc3RlciBuYW1lcy4gVGhlc2UgY29t
ZSBkaXJlY3RseSBmcm9tIHRoZSBkYXRhc2hlZXQgZm9yDQo+IFg3MTAgYW5kIFg3MjIsIGFuZCBp
dCBpcyBtb3JlIGltcG9ydGFudCB0aGF0IHRoZSBuYW1lcyBjYW4gYmUgc2VhcmNoZWQuDQo+IA0K
PiBTdWdnZXN0ZWQtYnk6IFByemVtZWsgS2l0c3plbCA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVs
LmNvbT4NCj4gUmV2aWV3ZWQtYnk6IEFsZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0
aW9ub3ZAaW50ZWwuY29tPg0KPiBSZXZpZXdlZC1ieTogUHJ6ZW1layBLaXRzemVsIDxwcnplbXlz
bGF3LmtpdHN6ZWxAaW50ZWwuY29tPg0KPiBSZXZpZXdlZC1ieTogU2ltb24gSG9ybWFuIDxob3Jt
c0BrZXJuZWwub3JnPg0KPiBTaWduZWQtb2ZmLWJ5OiBKYWNvYiBLZWxsZXIgPGphY29iLmUua2Vs
bGVyQGludGVsLmNvbT4NCg0KDQpUZXN0ZWQtYnk6IFJhZmFsIFJvbWFub3dza2kgPHJhZmFsLnJv
bWFub3dza2lAaW50ZWwuY29tPg0KDQoNCg==
