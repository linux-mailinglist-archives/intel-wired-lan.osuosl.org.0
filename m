Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3732BBA1CB1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Sep 2025 00:28:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3AEE46161F;
	Thu, 25 Sep 2025 22:28:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nzHbvhZ9RAn8; Thu, 25 Sep 2025 22:28:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3C9D861620
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758839336;
	bh=SYBhKFj9x7+ztne+R/GEVsY6zIFZCuxdcTNI4wE1ecA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MJeUPgHl9qnr5VP72QipiP2zJceByi/QDTyZuNw5AHercLEi5VLSlk1sZx8guuODx
	 b8RZJKGSRW0+77UKoHGgjpFJ8a1Mz3u+EJ2JaD5BfXyr1l4INrVdwP8Uu8LKCpRHZ0
	 0Y0UULrKe0CoEN2+HL/oSYVG2ihWX6eA2MN3GF8KXspYUURDr8qLrr3fPGZo2BYCV/
	 ZQoz85n5yZpFacr9hzTJya33IJTjTNf9xGobEBH9rMeV4NKdSSlyJsTcOw9N2DR1l4
	 Luavz4b0RIR2+dP3ZNEqk1eGZ9NYdivkMOHMBilXq9K0MwW/vulD5YUU7KmgBlJnRB
	 P7bhDxvOSUR6A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3C9D861620;
	Thu, 25 Sep 2025 22:28:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8698E12D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 22:28:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 77B1A418EB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 22:28:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CD5E3qsH4CKA for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Sep 2025 22:28:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BD6A9418E2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BD6A9418E2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BD6A9418E2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 22:28:53 +0000 (UTC)
X-CSE-ConnectionGUID: 7R/9eK/eQO+eebkrD9gI5w==
X-CSE-MsgGUID: 0hnZWPzDSqmbKK9UdYtOrw==
X-IronPort-AV: E=McAfee;i="6800,10657,11564"; a="60210094"
X-IronPort-AV: E=Sophos;i="6.18,293,1751266800"; d="scan'208";a="60210094"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 15:28:49 -0700
X-CSE-ConnectionGUID: Bqj83ZlBQHSjwJSWrYUGlQ==
X-CSE-MsgGUID: bcmiq4pMRZ+ikcStAV0Fmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,293,1751266800"; d="scan'208";a="182616600"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 15:28:49 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 25 Sep 2025 15:28:48 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 25 Sep 2025 15:28:48 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.19) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 25 Sep 2025 15:28:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bG8Z+CP/v3mOVPmy28VTr0c+Q1ZCGO88Po6aJDMHcYcxlZnDpm1c3SHl+4eS5KgaHj9n9xTBqI6zjx3evHtBPIFhCyUef734GZTNhzkAed4tnnCbe5NWn/Q1JxxAaFaZHx5XhjJ6XiUy6eFR0bqyObqkhWhSq37ptY9K2OJeciuYb9QJacMn57limFxm/rOugSAn4ipdeCB8ewtQM6gq4fEUtQQKcYgEymXOnxBkAeSd1RlwaPGNXHIFafHviPOVuehZvJQ+HazgZJ2R8By1VmQ4ZIETUWVkY4JpjHEtO16L3rV3DCke5KsPXdfHQsag3TU/Aan3kdExLMlVKpCPAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SYBhKFj9x7+ztne+R/GEVsY6zIFZCuxdcTNI4wE1ecA=;
 b=DPSkc+B62SthN/N3BQ/OwfNXTFwzX8ueJtJFMXcUnIT89O3SOf10swJ9aolluT6JGnB45HRWtVjBQjv+5PeDcUVA3GOitbG5+v35AuCFqHXKKi0vo884BD3JdPacYQ0xPq8xdivI5cqBgXdhOUO/DDuhiQKbjtgrczBHviUqoHKlmTZLcTAp70vLuVxFJlaeAK7AZ3613VyBNBqK02uB6FQHniyr6C17wtoIMr9q5RqOdKNXSwqBsg/St11te+WexgKc73GiU/l5ZsIhNrOE+EkcR5WOphkc6yXY0AkYorI6T/nENZEQK0fWznCDm/P8DtuYmKd4Qw5aGqPV5EqYmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by PH7PR11MB6452.namprd11.prod.outlook.com (2603:10b6:510:1f3::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.10; Thu, 25 Sep
 2025 22:28:46 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.9137.022; Thu, 25 Sep 2025
 22:28:46 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Nadezhdin, Anton" <anton.nadezhdin@intel.com>, Paul Menzel
 <pmenzel@molgen.mpg.de>, "Olech, Milena" <milena.olech@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "richardcochran@gmail.com"
 <richardcochran@gmail.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] idpf: cleanup remaining SKBs
 in PTP flows
Thread-Index: AQHcDGik8yKfpDGVbkOJPyjoCd4Kr7RhnUcAgAAxhoCAQu71IA==
Date: Thu, 25 Sep 2025 22:28:45 +0000
Message-ID: <SJ1PR11MB629799C0FA6803FD3904067C9B1FA@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250813173304.46027-1-anton.nadezhdin@intel.com>
 <ad9058eb-f1f9-4c38-b04f-9761121a48df@molgen.mpg.de>
 <5b196a7e-1992-439a-9407-30c1867bb9ee@intel.com>
In-Reply-To: <5b196a7e-1992-439a-9407-30c1867bb9ee@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|PH7PR11MB6452:EE_
x-ms-office365-filtering-correlation-id: 0ccd5710-e460-4bc1-b80d-08ddfc82e426
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?cDJpMjFhaTZLVGUvVnV4NklkakZXOTZ4dW1OUEtrQlhFclQ3TXVTeXMwQmVR?=
 =?utf-8?B?TUhlOFp1MHFVNEhHZGtNdWpoQjg0bWNEcW1tQlJUUGNBVy9GbEZkR1JMcXda?=
 =?utf-8?B?S0l4RWRLZjdpcmphd2IxUnM1SzJIZ0hyY094MzZ0U21JcHQ1SnpyTUlNWjcw?=
 =?utf-8?B?VTZZcS9aRlp1K2t0T1lIaUtYeGcwTzZXcmxWSUc0QzN4TUNJcmRpT0lZK3Fy?=
 =?utf-8?B?OUY5ajBLRERKbE1jMEJ3RDJpanBzZzN4S0E3RjVWTCs5ZDBqUkRJa25BVXNx?=
 =?utf-8?B?VUU3aHFJanBvK1B3WDhYSjFWZUcyOFUvUTRiZWxkNi9TMU5rbzFvTmZNTU1s?=
 =?utf-8?B?YTdDTS9uMnRqUkNyZEVVbE1qZzB3WU5xdnJGUzNOeElRLzEzR2tCZ29kMTcw?=
 =?utf-8?B?STNjdHFGTXdWWXZRek8yTDkvbFJYZ3pjcmI2aDA5bTgzVFdYOFB5WmlTWEQ3?=
 =?utf-8?B?VzFtbVhHSjZRZUJVUHB2MWl5c0FiRTgwamhqQVV1d3ZHQmdUNSt3OWFLREMv?=
 =?utf-8?B?clVBRFBOZldGY3dOYkxzK24zOG82M2VsUEw5dytoNHFNQ3U4eWVEdEVIMFRa?=
 =?utf-8?B?YTBySjZEdm5DalFqZy9Ra1cyQSt5b1BleTczeTk1WXpSYW5EbitiaThXZEhV?=
 =?utf-8?B?Q3FLOVk5cWNvWmJldkh0dlJiOEpGc0dFTERqakhmQmh4eHFVUXlKOWVDWkcz?=
 =?utf-8?B?SlBacFY2WnZ6MjRyVUNSOFN5YkdzSFVoa1ZacFZkWEFzNmo1OWdURjJpYzVB?=
 =?utf-8?B?amlVSDZVY294NVlIUGtWdFdORDU1ZXBiS1lZb1ZoanR1SFltOFU2dEVnTk1J?=
 =?utf-8?B?cTBzMDk4T1N2eERtVllTeFVzczd1VUpFTll1YUtpaGR3cDFhYVptdkN0VC9Y?=
 =?utf-8?B?c3lMaTNsc1dnWHM1VWF3dUR4NVVJWkRsdTNubWNxS1JhSHdwVDB2dmFNZlFh?=
 =?utf-8?B?WDBvbWZjbk9qQ1hNdFF2cXBSSmo0aEVpVTFrVmRyNTZsTDJGNUtDVENMYkxh?=
 =?utf-8?B?MXQ2WXdlY3NqQVZWeGNZRmZYckY1R2pqY3ppdVRtR0tscDFrMGJyZXFiS1NF?=
 =?utf-8?B?ODVQVEE2RllQT3VyeXV4dTI0WmJsM3dkaGcyZ0ZYbmh6d0RuT0wvOHlQdjhy?=
 =?utf-8?B?eFZMQzVKZWxwRTU3eUFYRVFuMjBnR09sZ0YwMzhQL3lwN096eW1xdDJhNmY2?=
 =?utf-8?B?QTF1Tk5XMk1CdENJWXpzN1drWE1QaHQ3Q3BnWDZhY0hOazh1bTBHWDBXQTgz?=
 =?utf-8?B?SmdONFlPTVlyd0NXYXpCRUdyNVM2cTJMRXZvNWNqSWRJVHArZGMwSkF0bFUz?=
 =?utf-8?B?UXV1UVFWaFJHMUR3Z3NYN3lNMy9HWCt4aW1HeXVwd2VnNEVaUnl4QzFkN01D?=
 =?utf-8?B?MVJKQnFhNWNRUDR6amJvcGF5Y3hPMkNHMjk0MmZJOHNtWGllNCtrektyMFRu?=
 =?utf-8?B?Y0YvNnVXQW1QSytJL3AweWNHWHAyMDFQNGhUS2VnUlc2SzEwZnhBNHVjOFVu?=
 =?utf-8?B?cUJ0WmxYWGE0N3dMblZwRzE0U1VUWTdSb2ZPVFlrYkdodVVIb3BNL2hnQ0s4?=
 =?utf-8?B?UEZkRDk2czMvblc3MlJ3V2N4YWE2eGpIek8vSms2ejU3ZUxVb0pkbnV2alNE?=
 =?utf-8?B?dkphQlozRGkvZDVycUdHU2FkUzgwUEQwM21qZCtPUk1BUno4TlZZN3JjaXRz?=
 =?utf-8?B?elZJOHFoWGVYUEdpSzZuWkhCRDRiYjA1K2E0VTYycmJWZDFyMkh4V0NaUXAy?=
 =?utf-8?B?TFQrM0NWbVZ4RExxOGg1L2oxUmdidEx4N0oxTGhPM1FtTzlCVW9QNlViMFE5?=
 =?utf-8?B?R2JxbjlVTnpYWldISGtJUVNKTGpNU0JGOTdyalBFdytSa09mWnptK3lLNlE0?=
 =?utf-8?B?OWdvZS9RL01ZNUFKZWFCWHJqZ05HcVpQTzdCc2FhYnU1dFNkT1NEclNNOVJ0?=
 =?utf-8?B?RHNiRjRjTmpNcTJ0ZldYRUNTRThtWjFpVzYrOHRBK08vcldvenNjU0g3eUow?=
 =?utf-8?B?Q0xCOWZ0Mkp0RW50RHpZRjFaak1aWW9MTVN5eU53aTJQbHRhekhrNW5hUnFn?=
 =?utf-8?Q?Q3xZoT?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OVNlMENsWWw4UVdQdzVWS2FONXlsY24yNFA3czhGMWpCNDViWE96UnBwSFNx?=
 =?utf-8?B?L244Nzc5WGVlWG1EWit6Sm1YMWJ1S0VHcVRqWWx0eDJPdjBoYktQMkdXQXpQ?=
 =?utf-8?B?OThjc252TDJSR1cxeUIweE1OdHdWMW1uRFhJVEdyV3VmN1MzMWUzc0lpdDFz?=
 =?utf-8?B?MWlPaDV1eHpyd2FiZUJBQmNqQll5TjRvMWhVK3dBL1VvcE5sZEFuRzVwNlQx?=
 =?utf-8?B?S3BWK1pKVHFQT3BXd1VyNnBWZDhuMXNsRXB5R1ZmUnF5OS9KS0F0Rmg1d3c4?=
 =?utf-8?B?ZjVmWUsrMjZEcE5QSU1ZY281TS80QWZEY1JtM09UOWFYWHRReWttY3ZqRG53?=
 =?utf-8?B?dEJxcFNlSzR2dEdROVBURWJraW9nQmpGc2lIVWRXRUF3QmVxd3h1V21VYWhx?=
 =?utf-8?B?Rm5oWW0wQXJ2SGJrME16SktNZi9qSk0xcDhLU0RCY29lWWNxS1A0UE9qOGkw?=
 =?utf-8?B?c3JOMWdQZmVNYXFhTmlNUjVlZ1BDSDQ2ZW9mYjlGUk53SDBUMHBmYTZhK3NV?=
 =?utf-8?B?T08yZTBmT0NYN2dhNmtkb1BjQWI4bkZ3UHlSU3ZEWUNpMmtLcXlTekJsT3dE?=
 =?utf-8?B?VStpQjlvQXdpZldoeDA0VHN2S0ZHOVVVUVZ0ZkFrb0sxZWh3bng0bGxQT1h6?=
 =?utf-8?B?bVdRV0JkNWw0T3ZBMzIxd01Nb2srL2NDTWJDQUpMelFEdnl3VkJvSjBYOGxi?=
 =?utf-8?B?bzRCaVRrZHZtL0tjZE1Pd3lUWXR2YXJOM3ZMbCtCc3FlZ1FwMXBwKzRHOTI5?=
 =?utf-8?B?cmU2dGJ3UjcrUHh6VkdFR2daUWFNcngxWmlkN1ZpVm8rR2x1Wmg5UmpmL3ZO?=
 =?utf-8?B?UDlqaTdhWmpHdVpFZFgyQlk5aXF2dlBMRks5WVJMNHI0djBTbkRoTFZGNXlX?=
 =?utf-8?B?ektLNmpmc0F3R203R1UyQVF2U2laZm11Z2ozTGFUcE1XU0ZYU0pMTmE5ZG5y?=
 =?utf-8?B?NHJkQ1Q5ai9qV1lwdyt3K3hDQWpYWEUwQUdNaFpqOEhnK0xlMnVtQVhjc1dh?=
 =?utf-8?B?aGR4cFRjOW14OTR1S0YyMHNhOUY5TWJtWitjQitsV2ZKZEYrMHoxNFlxMk5m?=
 =?utf-8?B?aHBCbE9rQ2NlT2NxbnZaZ2ZhYmRpK1RoUzVvVjg3bVA5eVBLSjZSM1pWQlYw?=
 =?utf-8?B?dWNQclc4U1gxbEF4cyttd2tvRjdteVRxV3BRaWs3TkN4c05pVjFCanFVNFYw?=
 =?utf-8?B?MjllQzBWaW9qQUg3d21HQjVVNFBNTHhqRnBSZTN2SFJNdEZWWjY4ZW1SU0RS?=
 =?utf-8?B?dkxuVWZYZ21jV3Jhck5ER0xSQncyYlJOb3NZNzlFc0tIc0w3alVDYkg3bklE?=
 =?utf-8?B?NmduUzBta1RjOVhzblFrR2NHV3Jnc2lqM0FXeWJQb1B0TUk1bXh5OG1Ka1p1?=
 =?utf-8?B?dnlHckhBVldVZjhDQVphMlJ5enJYc0tDZWZhQldKY2Y2UFduSUhXWXhaZGI1?=
 =?utf-8?B?a3VxYytZVXNVOGRoeE9EazFzQjk0RHloSTdmRGdnbDJhZkFJS0QrZmtoWFdW?=
 =?utf-8?B?UjFVMHRqcFlxTlRxODdNcXZSbjVTTklOYzBFNE1reDZ0M0F2SjZ2anR3QXl4?=
 =?utf-8?B?OUJjMUYyVFg1YXJzM0Y0bFIraExmZlhSajc2NkZ0Y0ZhK3FhRCtnOWRHcmFP?=
 =?utf-8?B?RFZETkRPWnNXZHExcGNRemQySEhuYTg5REgyem15MW5heWZPWkg3bDVyREFK?=
 =?utf-8?B?SUNtZVAya3FjRXBTelRjMFE2eEtrWk0rZFpyRW81NVRSd21CZExLNzRiTGh4?=
 =?utf-8?B?SmNKeWN5Vk9VZS8vamFML202YkMrTlpBc1ZHZ0RSUjlPaEVmN1d3ZjBwTTJ0?=
 =?utf-8?B?MFQ2eXQ4NE5XMk01UkdsajU5N3BKYlc2VENsbEtESWNWanlwbnRBUUMxM1Mx?=
 =?utf-8?B?ak1rVnhzRHNtTHlwK2VZWmljS0JkdEJzMU9xWE5aeWtyUFZPdlluMUN4VWlH?=
 =?utf-8?B?bzhlNkR0UTUyaFdXMkZFcVcwd0VGNlFXb1hQSGZQM05MTUJqOUhtaE5iSVhQ?=
 =?utf-8?B?bmJIaUpiZjNWZW5UNFFVWTU5Y3FpYnVEK3A2ejJzN0F4N2JPT3JZZjZPQzVU?=
 =?utf-8?B?bVI4UENJM0wydzJpRGdXaWNrQkhtNWNoY2UvZDFoQTFWZ3pHcnhEYVJ0U1RC?=
 =?utf-8?Q?GEynPjtWByp8PzRpCrlJnveZa?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ccd5710-e460-4bc1-b80d-08ddfc82e426
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Sep 2025 22:28:46.0072 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WojWAytMhlyxNkd0ewKblqDIzUmCfynHVsUDH+yslkp1eE+zolWB2e3Ti4Scatq+r0NK+/mQzWnGhAf16KqI2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6452
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758839334; x=1790375334;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SYBhKFj9x7+ztne+R/GEVsY6zIFZCuxdcTNI4wE1ecA=;
 b=E3JuLbJcXMNPBTwTgrKsGaCEJE/WTZ1WtnvmMo1yq+a83KoVT2bz7ki1
 aKkMEsGJhzmPTyjbZfPnepQRYFdKjCzopCrMF721E+oc/okDmbssdD74K
 LDHkO5Vo8p0FqoQYoGUQr/k+QAIOH4qz64hc1kvEG6z6Ae6LArNZQnzBQ
 pg9V7HbvL2NZArcqZ5Sl8RzS/4sNIRCJqaotN8qpOw7GUprb8fms8U2qa
 60FRz+DIC5qNTqWuHKOv5sINYRthRDPLwdKpf4ZPUWFGtjcQt6zqmJ5aX
 J/r7HdKRYrcGGrw8cL+X45taXGEM8BDdV32AsN5qh1QYrhpawIBwCSsTw
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=E3JuLbJc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: cleanup remaining SKBs
 in PTP flows
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYgT2YNCj4gTmFk
ZXpoZGluLCBBbnRvbg0KPiBTZW50OiBUaHVyc2RheSwgQXVndXN0IDE0LCAyMDI1IDE6MTcgQU0N
Cj4gVG86IFBhdWwgTWVuemVsIDxwbWVuemVsQG1vbGdlbi5tcGcuZGU+OyBPbGVjaCwgTWlsZW5h
DQo+IDxtaWxlbmEub2xlY2hAaW50ZWwuY29tPg0KPiBDYzogaW50ZWwtd2lyZWQtbGFuQGxpc3Rz
Lm9zdW9zbC5vcmc7IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IE5ndXllbiwNCj4gQW50aG9ueSBM
IDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IHJpY2hhcmRjb2NocmFuQGdtYWlsLmNvbTsN
Cj4gTG9rdGlvbm92LCBBbGVrc2FuZHIgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0K
PiBTdWJqZWN0OiBSZTogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIGl3bC1uZXRdIGlkcGY6IGNs
ZWFudXAgcmVtYWluaW5nIFNLQnMgaW4NCj4gUFRQIGZsb3dzDQo+IA0KPiBPbiA4LzE0LzIwMjUg
NzoxOSBBTSwgUGF1bCBNZW56ZWwgd3JvdGU6DQo+ID4gRGVhciBBbnRvbiwgZGVhciBNaWxlbmEs
DQo+ID4NCj4gPg0KPiA+IFRoYW5rIHlvdSBmb3IgdGhlIHBhdGNoLg0KPiA+DQo+ID4gQW0gMTMu
MDguMjUgdW0gMTk6MzMgc2NocmllYiBBbnRvbiBOYWRlemhkaW46DQo+ID4+IEZyb206IE1pbGVu
YSBPbGVjaCA8bWlsZW5hLm9sZWNoQGludGVsLmNvbT4NCj4gPj4NCj4gPj4gV2hlbiB0aGUgZHJp
dmVyIHJlcXVlc3RzIFR4IHRpbWVzdGFtcCB2YWx1ZSwgb25lIG9mIHRoZSBmaXJzdCBzdGVwcw0K
PiA+PiBpcyB0byBjbG9uZSBTS0IgdXNpbmcgc2tiX2dldC4gSXQgaW5jcmVhc2VzIHRoZSByZWZl
cmVuY2UgY291bnRlciBmb3INCj4gPj4gdGhhdCBTS0IgdG8gcHJldmVudCB1bmV4cGVjdGVkIGZy
ZWVpbmcgYnkgYW5vdGhlciBjb21wb25lbnQuDQo+ID4+IEhvd2V2ZXIsIHRoZXJlIG1heSBiZSBh
IGNhc2Ugd2hlcmUgdGhlIGluZGV4IGlzIHJlcXVlc3RlZCwgU0tCIGlzDQo+ID4+IGFzc2lnbmVk
IGFuZCBuZXZlciBjb25zdW1lZCBieSBQVFAgZmxvd3MgLSBmb3IgZXhhbXBsZSBkdWUgdG8gcmVz
ZXQNCj4gPj4gZHVyaW5nIHJ1bm5pbmcgUFRQIGFwcHMuDQo+ID4+DQo+ID4+IEFkZCBhIGNoZWNr
IGluIHJlbGVhc2UgdGltZXN0YW1waW5nIGZ1bmN0aW9uIHRvIHZlcmlmeSBpZiB0aGUgU0tCDQo+
ID4+IGFzc2lnbmVkIHRvIFR4IHRpbWVzdGFtcCBsYXRjaCB3YXMgZnJlZWQsIGFuZCByZWxlYXNl
IHJlbWFpbmluZyBTS0JzLg0KPiA+Pg0KPiA+PiBGaXhlczogNDkwMWU4M2E5NGVmICgiaWRwZjog
YWRkIFR4IHRpbWVzdGFtcCBjYXBhYmlsaXRpZXMNCj4gPj4gbmVnb3RpYXRpb24iKQ0KPiA+PiBT
aWduZWQtb2ZmLWJ5OiBNaWxlbmEgT2xlY2ggPG1pbGVuYS5vbGVjaEBpbnRlbC5jb20+DQo+ID4+
IFNpZ25lZC1vZmYtYnk6IEFudG9uIE5hZGV6aGRpbiA8YW50b24ubmFkZXpoZGluQGludGVsLmNv
bT4NCj4gPj4gUmV2aWV3ZWQtYnk6IEFsZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0
aW9ub3ZAaW50ZWwuY29tPg0KPiA+PiAtLS0NCj4gPj4gwqAgZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWRwZi9pZHBmX3B0cC5jwqDCoMKgwqDCoMKgwqDCoMKgIHwgMyArKysNCj4gPj4gwqAg
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWRwZi9pZHBmX3ZpcnRjaG5sX3B0cC5jIHwgMSAr
DQo+ID4+IMKgIDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspDQo+ID4+DQo+ID4+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZHBmL2lkcGZfcHRwLmMNCj4g
Pj4gYi9kcml2ZXJzL25ldC8gZXRoZXJuZXQvaW50ZWwvaWRwZi9pZHBmX3B0cC5jIGluZGV4DQo+
ID4+IGVlMjFmMmZmMGNhZC4uNjNhNDFlNjg4NzMzIDEwMDY0NA0KPiA+PiAtLS0gYS9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pZHBmL2lkcGZfcHRwLmMNCj4gPj4gKysrIGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWRwZi9pZHBmX3B0cC5jDQo+ID4+IEBAIC04NTUsNiArODU1LDkg
QEAgc3RhdGljIHZvaWQgaWRwZl9wdHBfcmVsZWFzZV92cG9ydF90c3RhbXAoc3RydWN0DQo+ID4+
IGlkcGZfdnBvcnQgKnZwb3J0KQ0KPiA+PiDCoMKgwqDCoMKgIGhlYWQgPSAmdnBvcnQtPnR4X3Rz
dGFtcF9jYXBzLT5sYXRjaGVzX2luX3VzZTsNCj4gPj4gwqDCoMKgwqDCoCBsaXN0X2Zvcl9lYWNo
X2VudHJ5X3NhZmUocHRwX3R4X3RzdGFtcCwgdG1wLCBoZWFkLCBsaXN0X21lbWJlcikNCj4gPj4g
ew0KPiA+PiDCoMKgwqDCoMKgwqDCoMKgwqAgbGlzdF9kZWwoJnB0cF90eF90c3RhbXAtPmxpc3Rf
bWVtYmVyKTsNCj4gPj4gK8KgwqDCoMKgwqDCoMKgIGlmIChwdHBfdHhfdHN0YW1wLT5za2IpDQo+
ID4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbnN1bWVfc2tiKHB0cF90eF90c3RhbXAtPnNr
Yik7DQo+ID4+ICsNCj4gPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGtmcmVlKHB0cF90eF90c3RhbXAp
Ow0KPiA+PiDCoMKgwqDCoMKgIH0NCj4gPj4gwqAgZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2lkcGYvaWRwZl92aXJ0Y2hubF9wdHAuYyBiLw0KPiA+PiBkcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pZHBmL2lkcGZfdmlydGNobmxfcHRwLmMNCj4gPj4gaW5kZXggNGYx
ZmIwY2VmZTUxLi42ODhhNmY0ZTBhY2MgMTAwNjQ0DQo+ID4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2lkcGYvaWRwZl92aXJ0Y2hubF9wdHAuYw0KPiA+PiArKysgYi9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pZHBmL2lkcGZfdmlydGNobmxfcHRwLmMNCj4gPj4gQEAgLTUx
Nyw2ICs1MTcsNyBAQCBpZHBmX3B0cF9nZXRfdHN0YW1wX3ZhbHVlKHN0cnVjdCBpZHBmX3Zwb3J0
DQo+ID4+ICp2cG9ydCwNCj4gPj4gwqDCoMKgwqDCoCBzaGh3dHN0YW1wcy5od3RzdGFtcCA9IG5z
X3RvX2t0aW1lKHRzdGFtcCk7DQo+ID4+IMKgwqDCoMKgwqAgc2tiX3RzdGFtcF90eChwdHBfdHhf
dHN0YW1wLT5za2IsICZzaGh3dHN0YW1wcyk7DQo+ID4+IMKgwqDCoMKgwqAgY29uc3VtZV9za2Io
cHRwX3R4X3RzdGFtcC0+c2tiKTsNCj4gPj4gK8KgwqDCoCBwdHBfdHhfdHN0YW1wLT5za2IgPSBO
VUxMOw0KPiA+DQo+ID4gVGhpcyBodW5rIGlzIG5vdCBjbGVhciB0byBtZSBmcm9tIHRoZSBjb21t
aXQgbWVzc2FnZSwgYW5kIHRoZSB3aG9sZSBkaWZmLg0KPiANCj4gU28gaW4gaWRwZl9wdHBfcmVx
dWVzdF90cyB0aGUgY29kZSBpcyBtYWtpbmcgY29weSBvZiBza2IsIG5vcm1hbGx5IHdoZW4gdGhp
cw0KPiBjb3B5IGlzIGNvbnN1bWVkIGluIGlkcGZfcHRwX2dldF90c3RhbXBfdmFsdWUgYnV0IGlu
IGNhc2Ugb2YgYSByZXNldCB0aGUNCj4gbm9ybWFsIGZsb3cgaXMgaW50ZXJydXB0ZWQgYW5kIHNr
YiBpcyBzdGlsbCBpbiBob2xkLg0KPiBUaGlzIHBhdGNoIHJlbGVhc2UgaXQgZHVyaW5nIHJlc2V0
IHByb2NlZHVyZS4NCj4gDQo+ID4NCj4gPj4gwqAgwqDCoMKgwqDCoCBsaXN0X2FkZCgmcHRwX3R4
X3RzdGFtcC0+bGlzdF9tZW1iZXIsDQo+ID4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgICZ0eF90c3Rh
bXBfY2Fwcy0+bGF0Y2hlc19mcmVlKTsNCj4gPg0KPiA+IEtpbmQgcmVnYXJkcywNCj4gPg0KPiA+
IFBhdWwNCg0KVGVzdGVkLWJ5OiBTYW11ZWwgU2FsaW4gPFNhbXVlbC5zYWxpbkBpbnRlbC5jb20+
DQo=
