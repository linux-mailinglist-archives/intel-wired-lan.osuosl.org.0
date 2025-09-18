Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DCC49B83ABC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Sep 2025 11:03:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 92620414C5;
	Thu, 18 Sep 2025 09:03:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bLo8L92Ya5ZA; Thu, 18 Sep 2025 09:03:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BE2F6414D6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758186214;
	bh=1hq3hLgcxfHjUUe2xXViaQhNQNF4jstr8CBlv7T/mP4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5wWgIGZrUexADhfZin0RvF4mw/TuYWXpto+KU9mI+3GPyCgR9swaqb9cyU95rw9qk
	 T+MAzITmDz0KeeCKxnsDWUVBPAd8yOAyEmWOyyg3nkA3HtnJ9QSq7q0XtofMhzLa3P
	 F8DBoDPH1aTeSJJDSeZ+keIBMeH1/0p/RSfcELE1xLg4yscaq40zECEs7Htb1Nj3NO
	 jAqqiMsG3OIOk30IqTJkhnojBEOK5okJz82ucZB/o3TxPSLysY0kB/L2c3HYa8f8se
	 9vQ5KzAd1ljsFlJ2XQ8E7ME5FlBnbsbISqwec7Kigl1fU/BtasRXvMGc5Qg9pvNaSH
	 lxUlEg67HuBDA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BE2F6414D6;
	Thu, 18 Sep 2025 09:03:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id DA1EF1E3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 09:03:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CB90B84A6C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 09:03:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cRbKV8HBlZnX for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Sep 2025 09:03:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 16C41848A2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 16C41848A2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 16C41848A2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 09:03:32 +0000 (UTC)
X-CSE-ConnectionGUID: cxe1MbTnQjmqoI+2+l9gdg==
X-CSE-MsgGUID: FoHvdWg2SU2LwR1bXUVS5Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11556"; a="71613717"
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="71613717"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 02:03:32 -0700
X-CSE-ConnectionGUID: ezT61ioaQvG0p7T5zYSW7g==
X-CSE-MsgGUID: S5hEJZaKTAeG3HrW2KR8Pw==
X-ExtLoop1: 1
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 02:03:32 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 18 Sep 2025 02:03:31 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 18 Sep 2025 02:03:31 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.9) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 18 Sep 2025 02:03:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YN7nqbciYqeY+NVe+pw+tmg1jHkr0HaJZy+YekuSZL6K1P/XapG8hLQRoTN2MsZwUIu6uw3vl61AzREbrpjZZ99kIn1DFajGf5m9CiJxj3LpYwjDtU71oFFwN78yN5JgUFr8fgJLTlIPrihpzdskiRkjrexPrztsFnXTHOYjoe0JinapjIebnsUVvL+wjsm0YC2TVdciLfbD59JVhiUWBFmfFZe7ka11hNfveMmwUDe3LIr76YJ3FrJi33LnjjYBOfKAtNYH8evbVe0htNRB9D428TlciF4nSr+C65oFdPM1oQhzJqDYTMRvL/gzHEqcGp1d96wtj4CkdWFGGes52Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1hq3hLgcxfHjUUe2xXViaQhNQNF4jstr8CBlv7T/mP4=;
 b=ySg6Bw5q5pv+cquJ2U3ZqyLvP73pL381JoGvOhXU6aPmJ4aP6oHeMgCBN3c0qS5PNcMYfjZxdkFzAfvZ8fQScWf9Xtf+JwnnZYyoAmHHg24lduSe9Zn4A0dvAksXwMv05fEkso2WnOLEbV8Kq6dBIAXCKK4oojjRnKeqHxWyHRH+YPQjaXBRmCagnP5keqtXjNTur116fy93UOI+Fm2sZpn6Bz6ZI8Id6aR7AzvoJT0pOHhMvqVAv9xkTYM0OWci9wH9Xlhkb9d/6htMmaMD0Zun3CcVc9z5O65rPn8SCYn+rdnMc2X8qiJfYzfrocq3MvcBrshJy+qeisVgcSDWCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by SJ0PR11MB5183.namprd11.prod.outlook.com (2603:10b6:a03:2d9::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.14; Thu, 18 Sep
 2025 09:03:28 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6%3]) with mapi id 15.20.9115.022; Thu, 18 Sep 2025
 09:03:28 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Simon Horman
 <horms@kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, Greg KH <gregkh@linuxfoundation.org>, "Kyle,
 Jeremiah" <jeremiah.kyle@intel.com>, "Pepiak, Leszek"
 <leszek.pepiak@intel.com>, "Czapnik, Lukasz" <lukasz.czapnik@intel.com>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 5/8] i40e: fix validation of VF
 state in get resources
Thread-Index: AQHcDD+O2IsbA+BO7E2sHKcZLuvHm7R1NcAAgAA6fYCAI21lIA==
Date: Thu, 18 Sep 2025 09:03:28 +0000
Message-ID: <IA3PR11MB89857A67A2C3C0EA7BF8A2498F16A@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20250813104552.61027-1-przemyslaw.kitszel@intel.com>
 <20250813104552.61027-6-przemyslaw.kitszel@intel.com>
 <20250826163316.GD5892@horms.kernel.org>
 <082137af-95a4-4ad6-b9c1-050e46cb52c0@intel.com>
In-Reply-To: <082137af-95a4-4ad6-b9c1-050e46cb52c0@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|SJ0PR11MB5183:EE_
x-ms-office365-filtering-correlation-id: 4b083d8f-c9e6-4db6-991b-08ddf6923bd0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?RlJqdEhOczRZZlJ0M09hY3FJbTc4Q0JaY0V0WUt1Qy9oOEs1LzhkVi9lSlFK?=
 =?utf-8?B?NklTZVFFaVljak5BMHptazRoTjFzUkVjQys1WmVkbUV1aFlRei93TXQvbzJx?=
 =?utf-8?B?Y3VDVk5kcStzcmlMZmRRdzNVQ0JJRE5lelhCUW4yeTk3N3I3cGZheGdWZ1dL?=
 =?utf-8?B?cTlDdnFvOElEUk1XTXhadDFzMmZlMmNDbkNxUWdLMWp4bXh5Zlkzeml1cVpR?=
 =?utf-8?B?blBNSGlHK1hncEdQNGpLNDV1RDdpOGZ1ZTFYdVdydWcwaVRIdnJqSEpMWUtH?=
 =?utf-8?B?TmV5bjAwWFhJOEZIRUo2RnhEcTVRWGlaVUtyanFIOEp3SDNtU2l6a0Q0U3k2?=
 =?utf-8?B?WVVXVGVJTHVtSFJuRFBkZ3JWZlVBVG9GZ0Y1SldRK3hpRE84NHlnbjE1bHBO?=
 =?utf-8?B?eG5ISHQzSXV3N2lUUkhpdUxhelJCVjhhdFBnVzBOWWxZYkpleW9iN3JjblM4?=
 =?utf-8?B?T2xzZVcxN2MvcDR0YTZLcjJ3M0dmMk1zUkV2TXA2SnllK1dtU0VqWWYxQ3Iv?=
 =?utf-8?B?ODJodC8zV0hwS3NZSzlmcUhuWWM4UExSdjd5RXA0c3MyZFo3Q3FUMCsxbFNC?=
 =?utf-8?B?aDRUMU8wWUZtdC9BUUI3MjVzOFFHS3ExVnorenJaQTVGcHlBVEkzdS9VR2xt?=
 =?utf-8?B?SVNyeEtINDd2SnRYVnJIc2Jvbjd3WjNrT0RJUE9NdUQwU0NLdXE2Y3QrR1JV?=
 =?utf-8?B?WVhZOXE1SjVQcnBTWlhPOUZpanlsVkVDMnhjQklrU21NbSs4T2N5dkkwYUlD?=
 =?utf-8?B?UW9DL2VpdkFpSTl6THNPUkJUVmEwcnFpdDRaUGJmQ1BjK01VVkhTTUMyaGNs?=
 =?utf-8?B?OWZEVFNiYVVhVkllTW1ReHRmTkVNU1BUK2JRMVRyVUwxVHVCalA2QnNBS29a?=
 =?utf-8?B?MDUyNWFSY3lUa2lnN0REK0Q0eHFtd0V0YTRodjNNcGFPOElEZXNLTmlURG1p?=
 =?utf-8?B?bjZ2UjNaRHJhT2s3S1Z6cDh0MFhpbjR6R2Zhc25JY2UxRlovMXJYVGdmZVlL?=
 =?utf-8?B?UFhDTUowYXRicjg0VStleldFZFlkeHZYSU1EWlNBNkdUd0hneW1OMFd4MFhx?=
 =?utf-8?B?eEZiVzhUeEduUWY5akM0V1ZpNVpjYzJzZGVVM1htOWhEUUoyQm5jOVU1YXMy?=
 =?utf-8?B?T2hUdmUvZnF6Zmk4UHJXbHNDN2hqbS9TbW5lK1ErYVBZeDJEQ3AxTHdIQ3pG?=
 =?utf-8?B?MXFuOHB6NkQ1QlZNUGRxVzlEU1pGSWNOQWFEajIzY1Y1S09obXA4RjdqYm5l?=
 =?utf-8?B?MnVkdGFibUE2ajRJZm5UQXk3NmZIZzE4QWJ5V05ZK2s0ZS9qRUlwYXVwNGho?=
 =?utf-8?B?RVRkdXEzMDgxRWc4bFlPL0Zib2tWT0tDVkE4SXBYUlhkb0h2OFY2bGhMdVB6?=
 =?utf-8?B?Y0oydEpJb2pOZ3g3VjN2SkxOaVNEU2szQitSVjZXUE5ITnN5V0ZJcUNqZnBm?=
 =?utf-8?B?cnVLTEFqVXllTlNCNytSaXlZMjZCUy9OdXloQm9QY3ZJT2N3WGN4N3dyTkVJ?=
 =?utf-8?B?cHJvKzAyb0dpdlQ5KzcydEFCYzcvN2F0N1kyd2xhVUtyTyt5ejRvWWVmWklv?=
 =?utf-8?B?a1JhWjRRcjBOS1czK01JTzJ1NW1qMmZ4bld6YjNuZEJ0cThLS1V4dE9uZkYr?=
 =?utf-8?B?VXZtdHpuVVlrSm1WNWZIMDNaVWMvY0ZxeDF3QnNHSDhCMHk5U1EyVm1oTmw4?=
 =?utf-8?B?MFRvRm5JbVBtajcvUkszM3B2R0REaEt5VWRiUlVrYlg1a1FqWGV6VGxVVFB2?=
 =?utf-8?B?WHhpTGJxYzlTcjNUUjByZzhiNG50R05QaWQ1c2pVb3pIZE5xN1BQRDdUOHE5?=
 =?utf-8?B?bjVLRlBGN3NxQ1dFVm5BZ01xR0JJbUNINWFwaGoza0hJL0hOdi9hZjI3cjJB?=
 =?utf-8?B?d0lVMmM0dUlkRFFyaFhUWWxmUFFmY2VVdTUzbmVDbzhFeGxlTU4vM1Jsanli?=
 =?utf-8?B?RFhMbFo0T21ONlJkRFFkTzhqVTRtaGVuaFVDR0dHUGJRODNyaEU0SVdRa2N5?=
 =?utf-8?B?UVp0a1labEd3PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?T0lCVGxaaWJRRnR5Q0RpTzlYcnFzbmxMVWc3bzJZK1c0MUFvNlVrazZIRGJF?=
 =?utf-8?B?akxTVG55eXlFSVlPV3lQeHJqYkdEb0FJUkFUVkdCbG5pNTZacFpSd1paUExq?=
 =?utf-8?B?cU1sZllFOUdkWUFYRlh4dHhuc05nT09MNHhYeEJ1QnN6RTVManRTTHA3WUg2?=
 =?utf-8?B?SU5WOGRpWmMzRzNDcWhFRFQ3c1VSTC9ZekExWEozS0hUMTlhOS9LWjc5bml1?=
 =?utf-8?B?YzlmR0toUTRvZ2w5Zld6UWdyVUdtR1VwczVTaVV5OHVKQUNXL0MrS09Ca0Rr?=
 =?utf-8?B?c0NLQklyajc0Z2x6QTlkNTFqTDMreHp5bWJKUmpRbXY1N05Mb3kraTJLRCtj?=
 =?utf-8?B?QThROW1ZWllNdGZLdk1RN09xV0JkcGJ1dDV3dFlJcWU1K05FK2h5dENrT0Vz?=
 =?utf-8?B?bGxMcjBBbmd6N3l0blJqaE9yQTBwWGhHUVBuaE1MYUFmZGd1L0h4L1JzUWt0?=
 =?utf-8?B?TFY0M21aOTZSc21aQWFURzVtTzRFWEZDVGFwWFBoWE54YUV5UWRoczUyRHBJ?=
 =?utf-8?B?U1BZeW10TEJSV1hnOHZhakFqbXFLb0M5K29wZThyck81ZDI0N1RZQjRFbzZS?=
 =?utf-8?B?OS9lKzliZlpLTWRkcU1UaUlEeGRldGRsbE1YZU4wQjVkN2Z0SS83dGltd2Yr?=
 =?utf-8?B?azBndXFIL1E4YXNZWEFia3E0SVBNT2FYVjBnMjhwVisrL0ZjQVVnc2pzMkVV?=
 =?utf-8?B?aEw3a3VJTkMzTGd0aXFScjVUYlcxT2JCUWsxS21MT1dWR0JIU2x5NnlZa0dq?=
 =?utf-8?B?eDRRK3BuV3dwZURZaTJ6c3l3eEFwbDJtcDZ6RC9RY2ozYlVsQXA2TGpXYTZE?=
 =?utf-8?B?RUczUDA1ZVFnc3o1T2FRV1pzWnJGVjl6SEgzdnBOM1VqYmd2K2xZOVQrYVZQ?=
 =?utf-8?B?czZhTmlJR25KMHBIUCs0aFFpNEJ1Z0JseWs3Q2ZpTjl5aW5jUzZ4ZFdQcnQr?=
 =?utf-8?B?eHVSaWFJVHAvOENySjNGZ1VManpPMUZsSStSWDJOL2xaQTNMYW1zamMveHlr?=
 =?utf-8?B?RmFPK0VCMEdJSWt0V2x5Mm5XSU5wSmpONzJPM0pkdEVlTTFYc1hnTWdpWENh?=
 =?utf-8?B?UFN4cTNzazZ0R2g1QVgySEFQN0dWQWVJamcxbmtOeDZoam1rRUoveEZ3VlNQ?=
 =?utf-8?B?N0hZRkgxK3YzbDBtVWwyRWVuNlA0TTNLSDlLRi9XRnAzMVVhM2RyK1Y1Slhv?=
 =?utf-8?B?aUZWYk5TQ1MrZVRvaWVzMGtueWhjazk4UCt6S3JGYmxqcHR6dUxuSXhYcysr?=
 =?utf-8?B?cnJMQ2xsNGNoUW1kVkI3UU1yVnNKcEZCT1RtZWVtZG5wQk1rQzduZzgramxB?=
 =?utf-8?B?bnp6U0pmelV6VHE2NGtkeG5MZkRZeTVOTE1vZUdBNTJsMmN2aDdhVWZrVXNn?=
 =?utf-8?B?SnAvVDhuaTEzbmRSeTFiQ0VZQS9mMExrc0RSclYyZHJ6RUtjekxkYnREK1JO?=
 =?utf-8?B?VjNtOTJHVnBrdFp6ZTNVc1BPdHFjcFVzWExJMjVpZW5pSkFaZFZSK2NQR1RD?=
 =?utf-8?B?L2VKRy9rblQxcE9NNXhqS2MxdVg2T3o4dEpWUjAybG5XMjVBTy93K2FIcVA3?=
 =?utf-8?B?UTZwR09ja1puWVdWZW9SdFp1bXU3eG05QTM2c0l5YXNWa0k1c1dTekdZK21W?=
 =?utf-8?B?T0JLazVoNDgvcHZ5QUxuSXFidXpCNHJKdlJkaEY2K0lFbkYvSFBQY1VGdURp?=
 =?utf-8?B?SDR5WVI4ZCtXZmhNRTdmS2xJRVdXWWFhd0o0cWVKbkxhaENPWjRodmRYbFor?=
 =?utf-8?B?M3hDRzBFQTAvejUyVHNiOEdKQ3FuQ3dEK2JadW15cmhTc2VTQ0lGMy9pZndq?=
 =?utf-8?B?aEdjZGZtbG9HK3gvK2loMjE4QmFEMFVOOEc1a2F5RDUwUnlOK3BFRGRPQ09U?=
 =?utf-8?B?QWVtU1l4TndiQW5zekNtSHhFWDJLdnp1eVAyZHZIZWZCb2xJeTlnYUQ3REIy?=
 =?utf-8?B?KzVYK1V1YlcyNlJ3V08vcW9Eay8xbHhMLy9FMklxNXdHMm9pUmJ4cUFFdFMx?=
 =?utf-8?B?Q2FXZDVRV0dXaEdoNGp2MmY0WThuM1kvaEl1SEdDUW9IYTMyUTZyUU1FZTlX?=
 =?utf-8?B?TThQQmZKVVczbWVEa0hsNGlXUndiZWlCRjE3VitxcURqRzU1dUxEc25yODh1?=
 =?utf-8?B?eFd2R0Z2U29lODFtR1dKUE9ORDFJYlZuUU5jNHpVblVmWEluRVIwcmVXLzA4?=
 =?utf-8?B?dEE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b083d8f-c9e6-4db6-991b-08ddf6923bd0
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Sep 2025 09:03:28.5540 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: L1Ay4kKmshhESUY7efwvmKJLbTJcs+IjB41sm5Q2MXOIhtmgqdYaPQWsaywT5oaZL0gwHW/Aciu7dTXz/Tt+O814hASt6wdqKCHuLe7mubk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5183
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758186213; x=1789722213;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1hq3hLgcxfHjUUe2xXViaQhNQNF4jstr8CBlv7T/mP4=;
 b=ckgwVM+AuvEb+BznIPyv+npNzqRjQXHc6tHIj/V5HfySylLe6isNQBOs
 MU8wOtys0gxYNL5N4z59XB15lsyg4H6ncwfYjJ2oJWXEzFFtyJ2L3oFCV
 rpmmjvj8kv/FmhVpehxy8gLnGZ6Gp7NkG8xXRqE+uG2+f87B9m4mdxMe3
 cKKog2DpJeuUgcFhaA3OH0QiRoRUT5Aejximt6/NtsY7DszeYFjPHWNwR
 f/qkG0NhqwSBQdjJg++AObkE/Ea6029/LZo2TZKjeKYKw74yFDBl6mVUE
 2P1DRUMSpeD4K8INd3FekCoiq+FSnpz0xfrCsLC9TlSmVPMEeCwPyL8DV
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ckgwVM+A
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 5/8] i40e: fix validation of
 VF state in get resources
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
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZg0KPiBQcnplbWVr
IEtpdHN6ZWwNCj4gU2VudDogVHVlc2RheSwgQXVndXN0IDI2LCAyMDI1IDEwOjAzIFBNDQo+IFRv
OiBTaW1vbiBIb3JtYW4gPGhvcm1zQGtlcm5lbC5vcmc+DQo+IENjOiBpbnRlbC13aXJlZC1sYW5A
bGlzdHMub3N1b3NsLm9yZzsgTmd1eWVuLCBBbnRob255IEwNCj4gPGFudGhvbnkubC5uZ3V5ZW5A
aW50ZWwuY29tPjsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgR3JlZyBLSA0KPiA8Z3JlZ2toQGxp
bnV4Zm91bmRhdGlvbi5vcmc+OyBLeWxlLCBKZXJlbWlhaCA8amVyZW1pYWgua3lsZUBpbnRlbC5j
b20+Ow0KPiBQZXBpYWssIExlc3playA8bGVzemVrLnBlcGlha0BpbnRlbC5jb20+OyBDemFwbmlr
LCBMdWthc3oNCj4gPGx1a2Fzei5jemFwbmlrQGludGVsLmNvbT47IExva3Rpb25vdiwgQWxla3Nh
bmRyDQo+IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtJ
bnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV0IDUvOF0gaTQwZTogZml4IHZhbGlkYXRpb24g
b2YgVkYNCj4gc3RhdGUgaW4gZ2V0IHJlc291cmNlcw0KPiANCj4gT24gOC8yNi8yNSAxODozMywg
U2ltb24gSG9ybWFuIHdyb3RlOg0KPiA+IE9uIFdlZCwgQXVnIDEzLCAyMDI1IGF0IDEyOjQ1OjE1
UE0gKzAyMDAsIFByemVtZWsgS2l0c3plbCB3cm90ZToNCj4gPj4gRnJvbTogTHVrYXN6IEN6YXBu
aWsgPGx1a2Fzei5jemFwbmlrQGludGVsLmNvbT4NCj4gPj4NCj4gPj4gVkYgc3RhdGUgSTQwRV9W
Rl9TVEFURV9BQ1RJVkUgaXMgbm90IHRoZSBvbmx5IHN0YXRlIGluIHdoaWNoIFZGIGlzDQo+ID4+
IGFjdHVhbGx5IGFjdGl2ZSBzbyBpdCBzaG91bGQgbm90IGJlIHVzZWQgdG8gZGV0ZXJtaW5lIGlm
IGEgVkYgaXMNCj4gPj4gYWxsb3dlZCB0byBvYnRhaW4gcmVzb3VyY2VzLg0KPiA+Pg0KPiA+PiBV
c2UgSTQwRV9WRl9TVEFURV9SRVNPVVJDRVNfTE9BREVEIHRoYXQgaXMgc2V0IG9ubHkgaW4NCj4g
Pj4gaTQwZV92Y19nZXRfdmZfcmVzb3VyY2VzX21zZygpIGFuZCBjbGVhcmVkIGR1cmluZyByZXNl
dC4NCj4gPj4NCj4gPj4gRml4ZXM6IDYxMTI1YjhiZTg1ZCAoImk0MGU6IEZpeCBmYWlsZWQgb3Bj
b2RlIGFwcGVhcmluZyBpZiBoYW5kbGluZw0KPiA+PiBtZXNzYWdlcyBmcm9tIFZGIikNCj4gDQo+
IG15IGluaXRpYWwgY29uY2x1c2lvbiB3YXMgdGhhdCB0aGUgYWJvdmUgY29tbWl0IGNoYW5nZWQg
YmVoYXZpb3Igc28gaXQNCj4gb3BlbmVkIHVwIGEgd2luZG93IGZvciB0aGUgc2Vjb25kIGdldC1y
ZXNvdXJjZXMgbWVzc2FnZS4uLg0KPiANCj4gPg0KPiA+IEkgc3VzcGVjdCB0aGlzIGNvdWxkIGJl
DQo+ID4NCj4gPiBGaXhlczogNWMzYzQ4YWM2YmY1ICgiaTQwZTogaW1wbGVtZW50IHZpcnR1YWwg
ZGV2aWNlIGludGVyZmFjZSIpDQo+IA0KPiAuLi4gd2hpbGUgdGhlIG9yaWdpbmFsIGltcGwgKHlv
dXIgcHJvcG9zYWwgdG8gYmxhbWUgaGVyZSksIHdoaWxlIGJ1Z2d5LCB3b3VsZA0KPiBlcnJvciBv
dXQgbW9yZSBvZnRlbg0KPiANCj4gPg0KPiA+IEJ1dCBJIGd1ZXNzIHRoYXQgZWl0aGVyIHdheSBp
cyBmaW5lLg0KPiANCj4gdGhhdCBpcyBhbHNvIHRydWUsIHNvIEkgZGlkbid0IHNwZW50IHRvbyBt
dWNoIHRpbWUgb24gdGhpcyBvdGhlciByZWFzb25pbmcgaXMNCj4gIkZpeGVzOiB0YWcgc2hvdWxk
IGJlIHVzZWQgdG8gcG9pbnQgdG8gYSBjb21taXQgdGhhdCBuZWVkcyBwYXRjaGluZyIsIGFuZA0K
PiBwaWNraW5nIGVpdGhlciBvbmUgaGVyZSB3b3VsZCByZXN1bHQgaW4gdGhlIHZlcnkgc2FtZSBv
dXRjb21lICh0aGUgbGF0ZXIgcGF0Y2gNCj4gd291bGQgYmUgYXBwbGllZCBhcyBhIGRlcGVuZGVu
Y3kgb2YgdGhlIGN1cnJlbnQgKDUvOCkgZml4KQ0KPiANCj4gPg0KPiA+PiBDYzogc3RhYmxlQHZn
ZXIua2VybmVsLm9yZw0KPiA+PiBTaWduZWQtb2ZmLWJ5OiBMdWthc3ogQ3phcG5payA8bHVrYXN6
LmN6YXBuaWtAaW50ZWwuY29tPg0KPiA+PiBSZXZpZXdlZC1ieTogQWxla3NhbmRyIExva3Rpb25v
diA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+DQo+ID4+IFNpZ25lZC1vZmYtYnk6IFBy
emVtZWsgS2l0c3plbCA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT4NCj4gPg0KPiA+IFJl
dmlld2VkLWJ5OiBTaW1vbiBIb3JtYW4gPGhvcm1zQGtlcm5lbC5vcmc+DQo+IA0KPiB0aGFuayB5
b3UgYWdhaW4gZm9yIHJldmlld2luZyB0aGlzDQoNCg0KVGVzdGVkLWJ5OiBSYWZhbCBSb21hbm93
c2tpIDxyYWZhbC5yb21hbm93c2tpQGludGVsLmNvbT4NCg0KDQo=
