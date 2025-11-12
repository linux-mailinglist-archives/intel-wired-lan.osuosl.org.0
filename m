Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5204CC52604
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Nov 2025 14:06:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 04A0660892;
	Wed, 12 Nov 2025 13:06:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MKXHo-Oh0z_b; Wed, 12 Nov 2025 13:06:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5BF9760DD9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762952786;
	bh=gUYmxIRDJ9teM4l1nTqiwqezeY1V0Z3lFGQD3rT5xyk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qt26bTu5MlzT3+Wd4lYBaPbgajMoaMdzrvmPUSB2wxLXtoBZNYaezJj2xW8XtmOgg
	 dGQNHPnyNZ1v7dYEStqQO6bqrTfRriJuCgGvfFuorJRpaILxUyuqvC78fFMYLq7CiS
	 wcPAt3FlDO9iWTo0RrZNyRbiT2HvM1wBB7ko/4WI7uWbvWUqyWS+8ap3AQ+Xf8qfzW
	 m1XQ1dzDkc5fduG1Nems+/1rFiuj0GjhKhANFy0l+O5EGXX5iDyWgPsNfDTagISvsv
	 JuLqS+BhWPEmkTO7IuRQw1LGpAWCtN6f/rTKoHzAd17OLf/ZgUh8DIt+blbultP+zA
	 BRvZlC50ibv2g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5BF9760DD9;
	Wed, 12 Nov 2025 13:06:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 874A624D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Nov 2025 13:06:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6DEF4403B9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Nov 2025 13:06:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7212_C5_beBi for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Nov 2025 13:06:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 72A14403AA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 72A14403AA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 72A14403AA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Nov 2025 13:06:23 +0000 (UTC)
X-CSE-ConnectionGUID: vxaxm72oR7aYsY9189XmOA==
X-CSE-MsgGUID: JZcYnoPwRiOJrbwHjGj68w==
X-IronPort-AV: E=McAfee;i="6800,10657,11611"; a="75321325"
X-IronPort-AV: E=Sophos;i="6.19,299,1754982000"; d="scan'208";a="75321325"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 05:06:22 -0800
X-CSE-ConnectionGUID: eu3icV3RRB6FfzZGmjw0Yg==
X-CSE-MsgGUID: /BfAlnNhSf+u8RJFVVAOhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,299,1754982000"; d="scan'208";a="193331990"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 05:06:22 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 12 Nov 2025 05:06:22 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 12 Nov 2025 05:06:22 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.9) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 12 Nov 2025 05:06:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=grLPp690aty49U5mGOf9di7bV3TY4NBnNFJsJafmRzBmj6lEdSqidk7isSa0Hk9WXYE9X3FJO0N27/378eV9w7h5Sb7lBK/L7BIoMeWIGJadPYYAAIr4KE86oeQGheIulMu1F+vrLXTR0WsQG17Joophqvfa73QwqhJUchGYE4hP9UlXEQZaryREPpy34KNAOalMv0WgoqQPoP8t1bs9AqZrJzQU8nZgza/NFW/LjZFhwWpbmgPAJsc4xfZXRO/uXOmVQZfh8ePcoGaVEs+tdbKx2WYmM7FOWDJ7ubQO5F5fs0QodJwFq2FyuiIYdRjvQEHLlLjJuKxG6snDPTJoMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gUYmxIRDJ9teM4l1nTqiwqezeY1V0Z3lFGQD3rT5xyk=;
 b=S7ExZokk8Rf2t1tlQ/UeGa9R4Ylfi6dxIsznfCoIzbPmMN23JExYAfKv21n8Ds5Hl2zGxxe9DAsw8wVgUxzg/OyHWl/KDRRZ0B/ZwlDSF/n8YytnNlcCY92wQm1WE5fPYE/+fySZsdp18tb0FikpylLZR8L8gSF8W5CfLbtnLI8IisFrEM6gXQxjDY7HCAfJqfzFisy/sx2/5FV/Yrex8aBnpVGc6x6Q0GPo+MVryEl1AYeT08T/C84dHfADYUNx1HjjUNPDbvDISO/uZNsAPY7FyNvissdZrxdh5hE1FUTjeTRedBrrViGCqgFqmdGquyyTVRq3MAUacaiG/6lXRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS7PR11MB6128.namprd11.prod.outlook.com (2603:10b6:8:9c::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9320.15; Wed, 12 Nov 2025 13:06:19 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9320.013; Wed, 12 Nov 2025
 13:06:18 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Brian Vazquez <brianvv@google.com>, Brian Vazquez
 <brianvv.kernel@gmail.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: David Decotigny <decot@google.com>, "Singhai, Anjali"
 <anjali.singhai@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Tantilov, Emil S" <emil.s.tantilov@intel.com>
Thread-Topic: [Intel-wired-lan] [iwl-net PATCH] idpf: reduce mbx_task schedule
 delay to 300us
Thread-Index: AQHcUoUGaIjgj+WQHUGZnnatuiTL+bTvBSYg
Date: Wed, 12 Nov 2025 13:06:18 +0000
Message-ID: <IA3PR11MB8986267ED702B8F54DD47D33E5CCA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251110205837.3140385-1-brianvv@google.com>
In-Reply-To: <20251110205837.3140385-1-brianvv@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS7PR11MB6128:EE_
x-ms-office365-filtering-correlation-id: ea196ca5-b875-401c-e0af-08de21ec451d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|38070700021|921020; 
x-microsoft-antispam-message-info: =?utf-8?B?MExtcU5jQ2ViUllsUHQ0MkNaanNBTUR2MHU5K1NUVWJBMXRYT2J0MXBFK0d5?=
 =?utf-8?B?a285MGdoYWpiNkZGb3l4Z0tIQXFNaXhSMkRYcDhyTjR0T1FtSkR3dUxIUy90?=
 =?utf-8?B?L1lBVS8zdFM4YWkzL2didGJkQ2VVeW5RTC9Ja3VtbEVaSXNHbFJYQkZnRm5z?=
 =?utf-8?B?bGZKbTZoV2IxTGJSSHBOTUpiclBEbHVGL05LeVkrbG5YTFY2SGlaYWVxYkh6?=
 =?utf-8?B?RlRRZjBEdlBHZFkzUFhHYkEzU2ZCYlFoRWhuUExuS0paNEFiMWdpN0R0R3h0?=
 =?utf-8?B?MUVZQU5Lc3FOMlllNWs2QWlaU1YzVHA5b3UvUUZDbXJ4cTl4TFBnRW5RYzNh?=
 =?utf-8?B?WHc1a0JLbkg3YzhCWTAwdWxadHlGRVY4aEZhRWl4VjVQUitBOUxVdjdVa3do?=
 =?utf-8?B?OG9peFFFb2d1Ky9tRzNDMVFPZjZFdlVVVW5jMnhaV0RYOHBpY3pNc1QzeUZx?=
 =?utf-8?B?azhHblNoN0J5K3h3K2JIYUtxNlhUamFSanNGTDcrTlM3Ykh2K2tpdkNjQnJU?=
 =?utf-8?B?eWc3eTg4eHh1RXYwRmFVc1BXSXcyMDRFNUFBbzR4YjVTc3dPUG5EV0FZMG5L?=
 =?utf-8?B?dnlnZkpLc0p5NUcyakRpNEo3ME4wNHdjQ1pQaE1kYXd2UC81QnpJV0FKeTdQ?=
 =?utf-8?B?dWJHUVN4VDFHNXYzZzNvWmNKVjRVVjVuZ04waFBoaitScS9IYlRhTG4wL3Ru?=
 =?utf-8?B?WnErcldSVGhWVnppOXV1UEp6Um9qVVZtdDhXUVovdm5BWE82MkMwajhyd29R?=
 =?utf-8?B?RTZDZFlIaHlHVnVDVzBKOEVpS2oxODVMVm5HTU5RaWVyNHhyNjErZWxDL1NU?=
 =?utf-8?B?M1hzM2JUYVc4UUcvVVFoSU9uci9xc2tsN2M5cFIzTUIvcm1HbEJyS0F3TDZN?=
 =?utf-8?B?aDJTcWFLSzIyZzlxeS9YR041RGFzZVA1a1hNd1lOOWFoTk9STFd3NncrYXl2?=
 =?utf-8?B?K2NnOERYc21ZRDQvY0p3cmpsWVJmTG5KYlNnWFRNMlVlQWtmeUk0NGt2VVk3?=
 =?utf-8?B?NVFGN2lHRTloUkR4eDdwSGpNNzg5VG1tdkRWMTZDeXZRRzRvNWJjSWZPbDRt?=
 =?utf-8?B?MGNBdWdBckxMM1MxVWlxemk4U2pvcE1RWVZHdW4xcWVLamkxcUhmTGJFUWVS?=
 =?utf-8?B?UWtjc0hUZEsvMUhoQnB1RTF3NUQ3Tks3bjZyUGY2c1EyZVRXN1FUSzlvMVJ2?=
 =?utf-8?B?WWJlRlRiZnRhUmduV0lPVUU0czVLUWh5YklHRDQyYmVEeHIvOWY5cVZzUXI2?=
 =?utf-8?B?VHU3cGdCNFJVcis4WWxXK2JlcEM2Mjd0OVFsWUI1VzNWMU5pK1A0RVYrTmNp?=
 =?utf-8?B?akRNa0JKd0VUZ2JtSmJORUcySDZham9ldzZDY0JmQUk3RjBUMmVTR0Z6ZmZx?=
 =?utf-8?B?Q094cHptYUdrQUZ5eE1VM0k0c1Y2bElNRGZISXVBeWd6M2Nyamg2dWVsWndv?=
 =?utf-8?B?bzYyTVFFTjNoUnpmUERxdHVkT1VVb1h3RWtUZDhtay9vSk1UdEw4aHRNem5H?=
 =?utf-8?B?MW9NVVViWEVmSlRXSlFpWWw3T3gvbklsRmp5SVBTUzlZWUdMUHJEQVExYUJq?=
 =?utf-8?B?dkg3bDBTeHVtK2R0RGxzUHpuWGRZcVpQZUxpOHNja0s0TWlSenB3K1pNdnNO?=
 =?utf-8?B?bGhkSzROV0o1MWNoUEpkVHJMSjhXaTZZZDBZUC83dWJ1cmtyeUhleGtLS3gv?=
 =?utf-8?B?ZFF0SWJtblZLY1FRS1I2N2t1Z3ZZYlVFb2JvM1N3MWFicnVUcitPWE9la3FG?=
 =?utf-8?B?R1VzU3M4d29CYnh1TUJQclpGdlJmS2JMMUVTN2NtZ1lGNFBiT3FKVlYwVjNt?=
 =?utf-8?B?RG10SFdTK3J3VEdYY0lEQ2lTRWtsZHAxdUFGMEpHVWIrZHhKN0hnbzlWeHJx?=
 =?utf-8?B?RWhPSk0vN0Y3Ti9qSnJ3QitwRGNOU29OZGNhZUNoUEY3cDNPMnZ4SG5BNlVB?=
 =?utf-8?B?Sk1FRklkbTZPSWVnOXB3SHhQa1BVN0YzNVczVEZ1T3pZUVhtTm9Qa0VReDdS?=
 =?utf-8?B?b3FQbG5tdkJnNkRpQy8wd1RTRVZMamhLNndsTDVFM3NnVktkdnhiaFY3R0JU?=
 =?utf-8?B?NThLZ3UvU2NRYnkzS0xjUnB4VHNxN2Nma2RWUT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(38070700021)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WHcyb1RNeUFJRjd1WHBFZzJkbmZweWpRQXF5Tk01QWhBbU0vZDdWWmgrV1hG?=
 =?utf-8?B?c0hISHJyUnl0bG1PVjRTeTc1c2tPd3h0SkVqdVVmbWY1SGNUWG9ldkZKL21x?=
 =?utf-8?B?bkFBYTBGRzNURmRXZnAvS2lZTVRSMG5iTmZBYmlEeUlKWDZyOWZ5Qjgwaisz?=
 =?utf-8?B?T3hVNFpjT1ZzWE9vOERQWnY4ZGsrdUUxeWloSi9LQS84QWFtdHlsVTV5V3NG?=
 =?utf-8?B?WG5hMFI0OUpjRUFHWDF0MTEzZFBmUTZ4MXBxZWo0aVlmc0xlMXFUcEYxL0xL?=
 =?utf-8?B?SHhFYnU2aXNWblk5N1EyRHFEenlyS3p1dlphWHZlYWV4S3U1ZHk1KzQ5cnFw?=
 =?utf-8?B?ZFJmWGhQQUFkcWF6SHUrV3FHQTZsbWxNNGtXNS9ablFmRmFBVXhRS3FXNkZl?=
 =?utf-8?B?Yi9BbmgxMnprSG9EWmd6dThxS2NiMFZUQzVlcUl2VGxYcGlvUWVYTjVpSTZK?=
 =?utf-8?B?YWpiYy9EbnFPWWJQaFJDajRCdVFuVDVsQ1BTS3NoanU4VTN5T3lteVJjbndJ?=
 =?utf-8?B?K2ZQcllEN2ljWGtxclI1WHpQeGVmYVpPVGV4VmxaZVUwRkJtVjN4cW1zQVR1?=
 =?utf-8?B?K1RubHBhZTNoc2FwbnRiMW9ab2hBTGd4aU5KQlJ1RE5jL0QzYkErek5rYUIw?=
 =?utf-8?B?ME1BSEh1UjhKVGpRUk8wVnVZa3dPb25XMi9GQ3Vibjg1dVZlMnZ6SkpTRnhx?=
 =?utf-8?B?M1ovbnhBMmRaRzdaZFo5NC9IbUNZQlNVZjZmbUx3Vm5QOGJNblhUZDY4aUZs?=
 =?utf-8?B?UGF5Tm9xVUNzMTJxQVNuTEJJT1dod2JGWmUvMDhkdFdiS3VvVXRaaCt5VitR?=
 =?utf-8?B?dDlYWkQ4Y2Z3MXVLc3lnU2NFSWxDSE9uWk8zdzI0RFpDaGd3UWlSbXpLQS93?=
 =?utf-8?B?VEZMaURuelJ3ZG1aTDR5ait2eW5Ob3BpYXFiWTd5bHRXR2JrWmVsVTNEWXBO?=
 =?utf-8?B?ZllxbWo5aWRPaDhEblBqRXpyNmQ4dTVPTjVJR0JYWEM1RXNaVWNxVmpuTUg1?=
 =?utf-8?B?Z1B5d2M2dzlORmFWUFlxYXdXVWltZjJXMXRkTXVGSTMra3A5RExqRUpGb2NS?=
 =?utf-8?B?Ni9obDhRNllOK2lFRDVzZE9ERUpmYWdwK3VzV0lMUWQrRGlud1M0bUY4Z1VQ?=
 =?utf-8?B?ZkVRT0ZlS3ZFb1FUSGw4akZLZDJqZ2YrN1E0cFhzUVc1WTE5MlAyS29kS1V1?=
 =?utf-8?B?VlZYS3o2K0krTkJqbk53UmtTRzlNWVdPWnhBVTB1Z2FTNHgvRlcwS3czUkFp?=
 =?utf-8?B?bm1pblY5Kysxc3g5UzRQcUJoS1c4d0pHeU5XVUNmZUVoa3RPcDlLYTlwTk4r?=
 =?utf-8?B?N1Q1UWFzWVhNWnI5TFFRc3VUVWJxbjBjWFQ1WEUrZHM4RXp4ZlNEWlEyYnQ3?=
 =?utf-8?B?dHE0MUw3UDZDTGVoWEg5aTAwQ0cxY0w5Tjg4ZFJkdVdyM1hSRTlWS25YVEtE?=
 =?utf-8?B?d3RRSEE5SFl2azEyQWdRV1RwcDMwYndzQ3dzRnZ4RmNlMVlVQlF2eGFuaTR0?=
 =?utf-8?B?WnY5NENXNGJQVk9Za0xWQ1lUL0ZOMkIrMHNqNXJqZ2ZzQlFDTW5SUDBGaUxo?=
 =?utf-8?B?d0h6c1NNUys4QklUWi9pZFJjR05kTzhNcDAxbGo1cWFnaUNLNlhBZTkvenRy?=
 =?utf-8?B?VWRPd0Zscml6aExpTEhIOTlWeVFwR29qQkpqbm9nWkw5eit6ZUNKRGkxVU8w?=
 =?utf-8?B?MDhZd2NLV0t5Skhoc1ByZ3J2ZHdpUFB4VTIyNXM3bi9yUXpwWTdsSGRyOHBt?=
 =?utf-8?B?NHFyWThaNUZJK3dhaytrZzE4WnNJUFJwOHE3dDN5YzczcVFFa1VBa0dlSG41?=
 =?utf-8?B?WlRpOWNKaWNuR3E3UXpIek5YbUpoM2k2Q0xVNENtLytlZktjUEFkWVRlYWVQ?=
 =?utf-8?B?U3JQRnVibXQ5cEx0eTVVNGF3clZJcGs5SjBVSFVoTkw3NFg1ZkM5czNCdkp0?=
 =?utf-8?B?TEdGb1Q2c2Y2Ny9zU3hEN2VZTzE4SWdIMHVDMjR1eFZiZlJNUFFUYjc0b2c0?=
 =?utf-8?B?Ym03UGxLa2FXUnVMNWkwSUhwRDBKZHZMUUd4V0dobzVlUStsNzBQd01NM0pU?=
 =?utf-8?B?b1FXZ000WHhRQnBkV1hpWGVCNVk5RFBjUUdaSnpTeWRsOXRMSk1xVmxuekp5?=
 =?utf-8?B?UW53cUwxOEliTW9LU1UxNDArb1hLSWovVUtJcVhwbUo1MkJpc29pM3FjQndI?=
 =?utf-8?B?OVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea196ca5-b875-401c-e0af-08de21ec451d
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2025 13:06:18.8671 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8gH0PGoC0L/uVgfyIJmuQYiEV5L347kSDDOiO+BkfFQR1Rcg504nALx4r/85eu3V7ntVzrAc3028HfFkDR7mq2OdAVpX704dYR+HBuNitVc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6128
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762952783; x=1794488783;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gUYmxIRDJ9teM4l1nTqiwqezeY1V0Z3lFGQD3rT5xyk=;
 b=JnuaaqB5EzsRvXTFwkvuWW/v8UNNWOXgDHyq+zf/dsrQJIOOleZHfkRA
 FhAoSfL4uMetPsWqruM7lwjn+KN17lZNAGWZ+JuPMf8ahmqJ6yBP10aE/
 AxoIfOqeAUaw1+Y8fpV2o1Hd4XpoEwfFI08C3//sVjXvchpMl1PB/c+e3
 xaY168hjIJrj28ep5G2LEbAMweL0O1CaiXHIc0R0paw0Nf0CD0nP5juZY
 3A7lak4W0OQ3cZ9RE8Xc6Heoqr/gG/Q61InAehlzAIuB2Q77m8PY3ydgv
 RVmKhAr5qlRHDcAzSx9DlnKntRBD4lnsnhd8f3/b6OhL26/RhQJOaYEdk
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JnuaaqB5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-net PATCH] idpf: reduce mbx_task
 schedule delay to 300us
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
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgQnJp
YW4gVmF6cXVleg0KPiBTZW50OiBNb25kYXksIE5vdmVtYmVyIDEwLCAyMDI1IDk6NTkgUE0NCj4g
VG86IEJyaWFuIFZhenF1ZXogPGJyaWFudnYua2VybmVsQGdtYWlsLmNvbT47IE5ndXllbiwgQW50
aG9ueSBMDQo+IDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNs
YXcNCj4gPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+OyBEYXZpZCBTLiBNaWxsZXIgPGRh
dmVtQGRhdmVtbG9mdC5uZXQ+Ow0KPiBFcmljIER1bWF6ZXQgPGVkdW1hemV0QGdvb2dsZS5jb20+
OyBKYWt1YiBLaWNpbnNraSA8a3ViYUBrZXJuZWwub3JnPjsNCj4gUGFvbG8gQWJlbmkgPHBhYmVu
aUByZWRoYXQuY29tPjsgaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmcNCj4gQ2M6IERh
dmlkIERlY290aWdueSA8ZGVjb3RAZ29vZ2xlLmNvbT47IFNpbmdoYWksIEFuamFsaQ0KPiA8YW5q
YWxpLnNpbmdoYWlAaW50ZWwuY29tPjsgU2FtdWRyYWxhLCBTcmlkaGFyDQo+IDxzcmlkaGFyLnNh
bXVkcmFsYUBpbnRlbC5jb20+OyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOw0KPiBuZXRk
ZXZAdmdlci5rZXJuZWwub3JnOyBUYW50aWxvdiwgRW1pbCBTIDxlbWlsLnMudGFudGlsb3ZAaW50
ZWwuY29tPjsNCj4gQnJpYW4gVmF6cXVleiA8YnJpYW52dkBnb29nbGUuY29tPg0KPiBTdWJqZWN0
OiBbSW50ZWwtd2lyZWQtbGFuXSBbaXdsLW5ldCBQQVRDSF0gaWRwZjogcmVkdWNlIG1ieF90YXNr
DQo+IHNjaGVkdWxlIGRlbGF5IHRvIDMwMHVzDQo+IA0KPiBEdXJpbmcgdGhlIElEUEYgaW5pdCBw
aGFzZSwgdGhlIG1haWxib3ggcnVucyBpbiBwb2xsIG1vZGUgdW50aWwgaXQgaXMNCj4gY29uZmln
dXJlZCB0byBwcm9wZXJseSBoYW5kbGUgaW50ZXJydXB0cy4gVGhlIHByZXZpb3VzIGRlbGF5IG9m
IDMwMG1zDQo+IGlzIGV4Y2Vzc2l2ZWx5IGxvbmcgZm9yIHRoZSBtYWlsYm94IHBvbGxpbmcgbWVj
aGFuaXNtLCB3aGljaCBjYXVzZXMgYQ0KPiBzbG93IGluaXRpYWxpemF0aW9uIG9mIH4yczoNCj4g
DQo+IGVjaG8gMDAwMDowNjoxMi40ID4gL3N5cy9idXMvcGNpL2RyaXZlcnMvaWRwZi9iaW5kDQo+
IA0KPiBbICAgNTIuNDQ0MjM5XSBpZHBmIDAwMDA6MDY6MTIuNDogZW5hYmxpbmcgZGV2aWNlICgw
MDAwIC0+IDAwMDIpDQo+IFsgICA1Mi40ODUwMDVdIGlkcGYgMDAwMDowNjoxMi40OiBEZXZpY2Ug
SFcgUmVzZXQgaW5pdGlhdGVkDQo+IFsgICA1NC4xNzcxODFdIGlkcGYgMDAwMDowNjoxMi40OiBQ
VFAgaW5pdCBmYWlsZWQsIGVycj0tRU9QTk9UU1VQUA0KPiBbICAgNTQuMjA2MTc3XSBpZHBmIDAw
MDA6MDY6MTIuNDogTWluaW11bSBSWCBkZXNjcmlwdG9yIHN1cHBvcnQgbm90DQo+IHByb3ZpZGVk
LCB1c2luZyB0aGUgZGVmYXVsdA0KPiBbICAgNTQuMjA2MTgyXSBpZHBmIDAwMDA6MDY6MTIuNDog
TWluaW11bSBUWCBkZXNjcmlwdG9yIHN1cHBvcnQgbm90DQo+IHByb3ZpZGVkLCB1c2luZyB0aGUg
ZGVmYXVsdA0KPiANCj4gQ2hhbmdpbmcgdGhlIGRlbGF5IHRvIDMwMHVzIGF2b2lkcyB0aGUgZGVs
YXlzIGR1cmluZyB0aGUgaW5pdGlhbA0KPiBtYWlsYm94IHRyYW5zYWN0aW9ucywgbWFraW5nIHRo
ZSBpbml0IHBoYXNlIG11Y2ggZmFzdGVyOg0KPiANCj4gWyAgIDgzLjM0MjU5MF0gaWRwZiAwMDAw
OjA2OjEyLjQ6IGVuYWJsaW5nIGRldmljZSAoMDAwMCAtPiAwMDAyKQ0KPiBbICAgODMuMzg0NDAy
XSBpZHBmIDAwMDA6MDY6MTIuNDogRGV2aWNlIEhXIFJlc2V0IGluaXRpYXRlZA0KPiBbICAgODMu
NTE4MzIzXSBpZHBmIDAwMDA6MDY6MTIuNDogUFRQIGluaXQgZmFpbGVkLCBlcnI9LUVPUE5PVFNV
UFANCj4gWyAgIDgzLjU0NzQzMF0gaWRwZiAwMDAwOjA2OjEyLjQ6IE1pbmltdW0gUlggZGVzY3Jp
cHRvciBzdXBwb3J0IG5vdA0KPiBwcm92aWRlZCwgdXNpbmcgdGhlIGRlZmF1bHQNCj4gWyAgIDgz
LjU0NzQzNV0gaWRwZiAwMDAwOjA2OjEyLjQ6IE1pbmltdW0gVFggZGVzY3JpcHRvciBzdXBwb3J0
IG5vdA0KPiBwcm92aWRlZCwgdXNpbmcgdGhlIGRlZmF1bHQNCj4gDQo+IFNpZ25lZC1vZmYtYnk6
IEJyaWFuIFZhenF1ZXogPGJyaWFudnZAZ29vZ2xlLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pZHBmL2lkcGZfbGliLmMgfCAyICstDQo+ICAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZHBmL2lkcGZfbGliLmMNCj4gYi9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pZHBmL2lkcGZfbGliLmMNCj4gaW5kZXggNTJmZTQ1YjQyMDk1Li40NGZi
ZmZhYjk3MzcgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lkcGYv
aWRwZl9saWIuYw0KPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZHBmL2lkcGZf
bGliLmMNCj4gQEAgLTEzMTMsNyArMTMxMyw3IEBAIHZvaWQgaWRwZl9tYnhfdGFzayhzdHJ1Y3Qg
d29ya19zdHJ1Y3QgKndvcmspDQo+ICAJCWlkcGZfbWJfaXJxX2VuYWJsZShhZGFwdGVyKTsNCj4g
IAllbHNlDQo+ICAJCXF1ZXVlX2RlbGF5ZWRfd29yayhhZGFwdGVyLT5tYnhfd3EsICZhZGFwdGVy
LT5tYnhfdGFzaywNCj4gLQkJCQkgICBtc2Vjc190b19qaWZmaWVzKDMwMCkpOw0KPiArCQkJCSAg
IHVzZWNzX3RvX2ppZmZpZXMoMzAwKSk7DQo+IA0KPiAgCWlkcGZfcmVjdl9tYl9tc2coYWRhcHRl
ciwgYWRhcHRlci0+aHcuYXJxKTsgIH0NCj4gLS0NCj4gMi41MS4yLjEwNDEuZ2MxYWI1YjkwY2Et
Z29vZw0KDQpSZXZpZXdlZC1ieTogQWxla3NhbmRyIExva3Rpb25vdiA8YWxla3NhbmRyLmxva3Rp
b25vdkBpbnRlbC5jb20+DQoNCg==
