Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EDNFCV+kAWq+hAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 11:41:51 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D89350B214
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 11:41:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AB27B40BC1;
	Mon, 11 May 2026 09:41:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kVNu96VNSipF; Mon, 11 May 2026 09:41:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 28C6F40BB1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778492508;
	bh=T691KLjt7FFdoi7PNjSemUvUHuQA+mGzk5drYI1hoFI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LKzkS/FZWGB+y5QYjRyyFfcvwkfnaeX7cnAMbLI4KQqcVTaUzqEKQBS5iCn7nVZht
	 1XgTKC6AuRBNjmeR36TNF5yMKsRLZ5ouu7x7KQOfdbDYb5zLq82OnEqISry6gcqQus
	 ztNZxFPAtgeckYmqqXKtt+uV5m4jLGD/pk6kY6v7mB+77MyJ9mHg8QvnReKR6DJw4C
	 z0Ix6vaPmGKrO1xWylxMd5m2edGmJR3Np0aNW0SiqzMAaKkU7IdmBOqd069JpKYVET
	 o7QeROtG19VTmuK9oKpeamPAxTqO/Wbgz0YL/oS0q+FmAv9b4XwjFxTZVUIcgExjWw
	 6SjUjnEEtZ6Uw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 28C6F40BB1;
	Mon, 11 May 2026 09:41:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id B7DB9272
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 09:41:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9DB9740B7C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 09:41:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Oj5ECKVGSkTO for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 May 2026 09:41:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org ED47E40B75
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ED47E40B75
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ED47E40B75
 for <intel-wired-lan@osuosl.org>; Mon, 11 May 2026 09:41:45 +0000 (UTC)
X-CSE-ConnectionGUID: NuU68i1iTcy7uo2+c8Tkhg==
X-CSE-MsgGUID: ClZ5Q7OpSoeZOjIIzrwKrQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="79404617"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="79404617"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 02:41:45 -0700
X-CSE-ConnectionGUID: ++bbobuFSKaH4QcUYVwTjg==
X-CSE-MsgGUID: KwH9Bl/6RMij3+NDmoHA6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="237498943"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 02:41:45 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 02:41:45 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 11 May 2026 02:41:45 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.54) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 02:41:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aqW/vhQT23irJU5Vazfiew0A7RJX2rVOyqNu4tRstfAkKhzqjpzfnTTOMUDkw0q9MFHOyEjEGf/DHufqvO0nHsyNcm8+wuYRrsRZIX0NNgMej0rxt5uQvkSsB7cCg6x35LbJLVGMpIzKyv70mYPHu0qskVNL4HWtXtvfeJlmf1amwh9kGc8FSs+rDYiWrJq1HRYW0mY57c7cATmHQUmY9XYL3aTb1uSEu3ny/OsyfmKq3GDPCTVag5Cz+3YxBBuH4zB3Fd0AQs/DV2OfZlk1VVfNJKu1/RuAuMTQ1YmZE4ddhDxEQ572mMu9dO38ce3WONIveZY7XfGg+wUCV/QJag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T691KLjt7FFdoi7PNjSemUvUHuQA+mGzk5drYI1hoFI=;
 b=VSm4fn1h+0KOzYEeUB2TwTbBMWWZDcWvcIraylMBeoiXyt2L0MbwUSXY0f7CVl+sNLkM2iRCsZF1/RXvHRqRZCvyTY7A3mjjpXFLY3itSXjVPGBK6q4fH67ORnO9vFzxSxZ1ZZzYtP9XXFus0vsNz7snkdXGib5Bonbzn7rQTfVdu15j5MA8OnNosRIoSQ2vnFh+ME3aIaGiEHr7HTDf7gnz2xAy6HeFlbCFdmlQdo+lKGwqhbRbmvln/YxJE+QwPgW3uszsd8pW0Yudxmv/T8Ys2FDEHYMAYN9NeIoK2yQSmg5mlw1Bur1BNgpfluS20SROSILJUvPkdQXmOFp8HA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by DS0PR11MB7580.namprd11.prod.outlook.com (2603:10b6:8:148::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.23; Mon, 11 May
 2026 09:41:37 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d%6]) with mapi id 15.20.9891.019; Mon, 11 May 2026
 09:41:37 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Vinschen, Corinna" <vinschen@redhat.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>
CC: Simon Horman <horms@kernel.org>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>, "stable@vger.kernel.org"
 <stable@vger.kernel.org>, Jose Ignacio Tornos Martinez <jtornosm@redhat.com>, 
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Vinschen, Corinna"
 <vinschen@redhat.com>
Thread-Topic: [Intel-wired-lan] [PATCH net] iavf: iavf_virtchnl_completion:
 drop duplicate ether_addr_equal() test
Thread-Index: AQHc0XW83aT2PGozr0693TrfGWdNsrXpTfkAgAAOnwCAA6X/AIAA5DEAgAENkYCABCYJgIAVl1dA
Date: Mon, 11 May 2026 09:41:37 +0000
Message-ID: <IA3PR11MB8985CF40E3AB50DF7CF430F88F382@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <IA3PR11MB898664A49E614F197D4FED6EE52C2@IA3PR11MB8986.namprd11.prod.outlook.com>
 <20260421111236.875379-1-vinschen@redhat.com>
 <20260423185530.GI900403@horms.kernel.org>
 <aesqjovwYNeLlfX4@calimero.vinschen.de>
 <30b2fade-2545-4f2b-98ad-c6449512c04e@intel.com>
 <ae-HlZOV-VntF03O@calimero.vinschen.de>
In-Reply-To: <ae-HlZOV-VntF03O@calimero.vinschen.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|DS0PR11MB7580:EE_
x-ms-office365-filtering-correlation-id: 12c17425-cffb-4066-e9fe-08deaf417f36
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|38070700021|22082099003|18002099003;
x-microsoft-antispam-message-info: 8Hkq97qxfzrJ99EFE6p5EO9hQDh0G1eNLUES+iqsrOubJOPfPthBboR/2Dep5AhF3lPyNnVYrvvU9QY87Cn+Ki0+xk4KgQnYlvweOeq/06NS3gIW2iM8pbvWPKE9gO+3gJeKvUciQ/r+aCqWpKobo29Bxmp3/kfPJCAPWW7nC1dgi6YN//aZqrx/XR1Jfq0Yhgi74fVXHIuf1SMcNpONhaBTRSBI3pv58LbJ/HH2/QiOEpJso0UeubnWdP+k6wESxbVP1O6V4OOVz6+MOBXewHSi+NPT1nB9OUm3y56/oc9CXhcmTd7s8m2GEQlXZ75Bndf/Gu3t0vSXTciXaI2ZuvrBIOxa0fx0yRhbh0KmnDzzWl7fvo0MSJmMRyNo39UxuCqasbqZJvpM6Beq3A2cQ7tUH78El2pE2Lmg7kgJTdM8lXDkbcck9d4dy1S2ZriaEn0/ezGKug2v2EJp5Brkx+QVa9GEKhZaOury/8OThdaTKfPEt4NLvpEPpUFnukPgxyL11fN078WdbD6TfVKxI/jBxlIDijR16Cm31nI0onz5kqFTjYebYS6pYB8WrEllFfDrShhpphGdSx3SCYgTsVZlg8FhQPBmFO4m2QsP3OX0cDyL/aUHRFIXXho6snOEnIunKrILGt8eot6ZWDA0IMUS90NFSJSLVVkKJvvkcOHsBZ0yjNWtjnkVd4BAHpRhZryMm0VI+SAGS7H+rjLBTsbEDaW50wNWsiJl3XTXj4od+VXkbk9FewCKIDlLPZ5x
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(38070700021)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V2pSTHRkT0hsRzZmUjQxLzZrU25KMngxeURjb2RsS1VpTUx1Z1lQWU83aW1x?=
 =?utf-8?B?cnUvWDZWNGd4NDlvaklMVlZqSkM5cTB5SXRsUnVBZGgwTmdDOTBGcnRFWjcz?=
 =?utf-8?B?YmlvRzA3MW9MaGRGTjlzdWovUXlQZk9ZMC9JVmVIeEhpRmV0bDRIN3lMOU1j?=
 =?utf-8?B?SUNKY09CM1VEcEZncnEvVG9WS3JhalBCaVFMdEpIc0svSDlzam9DWnozRk5L?=
 =?utf-8?B?OURoeUk2cmYwZnBhVzJJTlVJbFZ0K0lCZXhKVG5YOGd3c3VWNjZHdUpsTEhR?=
 =?utf-8?B?Wk5xN3VZaXNXM0doQmpnN0ZaVmZTN3d3ak92cGI3azZsTHhhMFhYOVNzNzFh?=
 =?utf-8?B?bHk5K3l2MUVMK1VZTFZCY1UrbHdFbTBMNkFEdEdQN3EwVzV0UjJRWGlJN0Rr?=
 =?utf-8?B?MWpSMkVBT2ZaeDdjaWdram1MSmh3QXhjUTRpNUcvejBLc3BqdnZTL0xOV05m?=
 =?utf-8?B?R1IzYmVmak4wMFd4L1B3Q1N2aVVjWGRhTm9FUWdLVE5UdGFhcWduemt1cjV0?=
 =?utf-8?B?RlA2Y0tqYXk2R0VyaDUxZUpBUmFURnJjNW9nV1dDcHExSW9kN3A1Y214Y2Y2?=
 =?utf-8?B?MWZJUUJxZkxjcWdqWTFkNkU4QmlhcU9Da1puVUx5ZEkxNW5WMDMxdHZBTCti?=
 =?utf-8?B?c3FiWFBQY2FIczBnVC9iRWNVZE9nMEVVaHo3MncxMlN1d3ZjQytCdk9QRlF3?=
 =?utf-8?B?YXVObng4TkNoTkVML0lxOGp2ZjN2WC9uSE9KRTU3VmlEU3pqODdPRFdKUzZP?=
 =?utf-8?B?RDNkQ1hVUjlZNE94T3J5R1N0VFdmSUo4M210ZzNQZmlUR0daQm5HSEhoc1da?=
 =?utf-8?B?bURMcDlnbTlIYmhSc2FXalBlb25mVjlJc08ydFpuWGhJSHpZblF1UE5nUk1M?=
 =?utf-8?B?dlREdnlZY2hDVEhUTk5ialU4NzhJTkhxQlk4bnp5UDEyTUhFVjl5QnBUNE1Q?=
 =?utf-8?B?aFVMek9iVXFmendsVHcwQ3J5WGNrMzRWaGkrMDJTeStJT2Y2SmZpdFdQMS9Z?=
 =?utf-8?B?UFltZ29WZDNXeGIyTEdaSHIrOU1QbW55TitzWHFrZFBpOUlqRjFxUlRhWERH?=
 =?utf-8?B?Y05iVG5nalVTWmxneUJZNVRBVVlKd2g4Qk5lNUxxZmNKTG84M3BFbkdZYWNS?=
 =?utf-8?B?RnlnRFJsL1BWUmhzQnFFaGFqRVIxZXZrRVl2SzY3TGVxaW5WUHhjaTFSUGFX?=
 =?utf-8?B?dHcyUHU4QkhuY2FTRktuNktQY0RlN0JpbXZXOEdYQlBnSjExeGRqMXdpRnRQ?=
 =?utf-8?B?NFdpZ0lZblkrRFBaVDRsSm5nVG9rQjFSZ1U4T2dwT2pxb0VaZXdwMjcxZDBt?=
 =?utf-8?B?S2xHMFlEMXk3TVhraVc4Z3R2cnhMaG5ZMjA2b0tnc0E4QVFpUkxZcWNGVG1l?=
 =?utf-8?B?S1B4SmNPMG9NZU1UTk9kNk1LZnBsOE9QOElKNGhReGtxVVFVYjFKL3JzZEU0?=
 =?utf-8?B?U3Y5d2svakVXNG9NOWpoeGFSSFRpS21hUVB3cHlvYXpFNVJZSWlBRGJub1NT?=
 =?utf-8?B?UFJFZ3djOFREeERrcVcvbC9ILzAxTXhBU0g1M2oxc3MxSWFVdWxtZnlLeWVY?=
 =?utf-8?B?SHh3Mzg3SThYdWpmNTRFdGI1SlFWSnNQUkF5bmNhY2w1dk5kUXAxZ09ES25s?=
 =?utf-8?B?cEZKeFJreXd1MFlidWpVZFF5UXQ0SkxhRUc0SURDd2lsWjVpM3ZXUzNram05?=
 =?utf-8?B?dngvRm1oeGdzSUxGNlp5bmk1NmYwU3JZZU8zQ2RiVjVuQlozOXJYcUNNakdJ?=
 =?utf-8?B?cXhDYUJYTDBjeEc4UmV5ZVJwMTJ5YVF6dW5PTXJjZHZtMWdqUW5MdEpqTVpi?=
 =?utf-8?B?NHh2anUxeUFXQi9WTnpPOExsRDNpVDRMM1pFODV6S1dwL085VitvOXUxZ1JT?=
 =?utf-8?B?VFBuekN5M09DME51ZmlkT0FIM3pkVTUwTCs2c1VjYlk4cURONnNVV2UzaHp5?=
 =?utf-8?B?QlJHbVE4NEhSbjd4bUo2MklQL1JvQ2tjcEYwK012Y243aFVZeFdyR2IwaVM0?=
 =?utf-8?B?MnhJQzJ2U08wUDJ5aDg5aDF2SGF5eTFJbmkzQm9DeTFQVHVqc0l2YlJZZlNr?=
 =?utf-8?B?d1JsWFQ5cHZ1TmNqVDlCVkRmcldpZVNyMUFJTnp2WnpUZUlVa0UrWC81aHRm?=
 =?utf-8?B?V010Vm4wTitsN0FPS3BXdTNGeEgyZEtBYmhodmdSNVBlajlKd2tUdENHZStX?=
 =?utf-8?B?TVlwUEJYaVNoczR2ak5wMTVMK3ZubVk4T0JBSzZ4ZDNhSVhkTVJrSmRjWWls?=
 =?utf-8?B?QU9oQW5pSmJEayt0YUNyUCtpZWFRT3ozMmVRVi9nZkhoRFZMeDVpTWxFZ2NM?=
 =?utf-8?B?Smo5WU1wVXd0UTdEQnpHU25kbGRZaHNxdzhQMVFwU29IZC82YzZTQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: YlMUAYRjCFdXxRx/KhoCEIXNMCFYOBm8oSaBqpehMTC6KQtBHh+c4PLRn0aECQjgL4FOuUKnMKXOIz0PmWLwCSd5YYvWzSW8mmHbgeagoxxo31pAHvZExZOaLNNBaPhIsr7ox8PenJW8/RchkEhKyugi1IMZI/2U12hWaSYqzTGiasRcykkUWnFkBygyjAcoDtoOKZbUQ7c6fx9p0DGGjmMTRxa+DCiaUtKlMEVZRS2IFjC3EFh2BKF1ftuihU2eS6hUGMUQ0O0Bh4Pg//t4JJB+7RltazJ+W2Ri6h7tzoq8GFNVR6kpiCsyHfIlW/VOgrIHYG/KtYVEsUr1t6vecA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 12c17425-cffb-4066-e9fe-08deaf417f36
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 May 2026 09:41:37.4688 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OI6zPdttO/17eajfS8UB/ARhRqDA0LE0epycgtG2YPQ+gOQSVmNg2JO3gTSttTJK6JJd/g3pGlvUmL2WuNM1tzKAJFFatJVpOK42MwPZubc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7580
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778492506; x=1810028506;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=T691KLjt7FFdoi7PNjSemUvUHuQA+mGzk5drYI1hoFI=;
 b=JHhZjsDgKDbzix/9xDwdhUoF7QaCKpNOi8ML76x0L8Ca6g68cK2MScdm
 EkRu7+PxKm8oNR9i22QhbSyxWxo2JxRwjpZLNPO8a4OXvmtUfh7tE6TRl
 5xn6EFJsDCwfMRJCATLc2JU2rHdCK4ApA9S4ad5A4YTcEyLnMP8ZPWldM
 w23Y+neTq8Lz60MLUTrumip73o/oqU4GxKjvkAUmDMiLiUP+wji7vTeGe
 75cAtpoD8k+yFcM+yIHwHKtX4jFJYT8pAqD9UhEa+N2uHzoM7PpOAlLYG
 8BhO+GbmxuD9pi6i30EMKN7CJe0AQdb1CisC3AtdeDZnOogotPszBfM8B
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JHhZjsDg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] iavf: iavf_virtchnl_completion:
 drop duplicate ether_addr_equal() test
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
X-Rspamd-Queue-Id: 7D89350B214
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:vinschen@redhat.com,m:jacob.e.keller@intel.com,m:horms@kernel.org,m:intel-wired-lan@osuosl.org,m:stable@vger.kernel.org,m:jtornosm@redhat.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_SEVEN(0.00)[8];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:email,osuosl.org:dkim,intel.com:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Action: no action

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZg0KPiBDb3Jpbm5h
IFZpbnNjaGVuDQo+IFNlbnQ6IE1vbmRheSwgQXByaWwgMjcsIDIwMjYgNTo1OCBQTQ0KPiBUbzog
S2VsbGVyLCBKYWNvYiBFIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQo+IENjOiBTaW1vbiBI
b3JtYW4gPGhvcm1zQGtlcm5lbC5vcmc+OyBpbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZzsNCj4g
c3RhYmxlQHZnZXIua2VybmVsLm9yZzsgSm9zZSBJZ25hY2lvIFRvcm5vcyBNYXJ0aW5leiA8anRv
cm5vc21AcmVkaGF0LmNvbT47DQo+IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IFZpbnNjaGVuLCBD
b3Jpbm5hIDx2aW5zY2hlbkByZWRoYXQuY29tPg0KPiBTdWJqZWN0OiBSZTogW0ludGVsLXdpcmVk
LWxhbl0gW1BBVENIIG5ldF0gaWF2ZjogaWF2Zl92aXJ0Y2hubF9jb21wbGV0aW9uOiBkcm9wDQo+
IGR1cGxpY2F0ZSBldGhlcl9hZGRyX2VxdWFsKCkgdGVzdA0KPiANCj4gT24gQXByIDI0IDE3OjM3
LCBKYWNvYiBLZWxsZXIgd3JvdGU6DQo+ID4gT24gNC8yNC8yMDI2IDE6MzIgQU0sIENvcmlubmEg
Vmluc2NoZW4gd3JvdGU6DQo+ID4gPiBPbiBBcHIgMjMgMTk6NTUsIFNpbW9uIEhvcm1hbiB3cm90
ZToNCj4gPiA+PiBPbiBUdWUsIEFwciAyMSwgMjAyNiBhdCAwMToxMjozNlBNICswMjAwLCBDb3Jp
bm5hIFZpbnNjaGVuIHdyb3RlOg0KPiA+ID4+PiBUaGlzIGlzIGp1c3QgYSBzaW1wbGUgY2xlYW51
cCBmaXguICBDb21taXQgMzVhMjQ0M2QwOTEwZiAoImlhdmY6DQo+ID4gPj4+IEFkZCB3YWl0aW5n
IGZvciByZXNwb25zZSBmcm9tIFBGIGluIHNldCBtYWMiKSBpbnRyb2R1Y2VkIGENCj4gPiA+Pj4g
ZHVwbGljYXRlDQo+ID4gPj4+IGV0aGVyX2FkZHJfZXF1YWwoKSBjaGVjaywgc28gdGhlIGN1cnJl
bnQgY29kZSB0ZXN0cyB0aGUgbmV3IE1BQw0KPiA+ID4+PiB0d2ljZSBhZ2FpbnN0IHRoZSBmb3Jt
ZXIgTUFDLg0KPiA+ID4+Pg0KPiA+ID4+PiBSZW1vdmUgdGhlIG91dGVyIGV0aGVyX2FkZHJfZXF1
YWwoKSB0ZXN0LCByZW1uYW50IG9mIGNvbW1pdA0KPiA+ID4+PiBjNWM5MjJiM2UwOWINCj4gPiA+
Pj4gKCJpYXZmOiBmaXggTUFDIGFkZHJlc3Mgc2V0dGluZyBmb3IgVkZzIHdoZW4gZmlsdGVyIGlz
IHJlamVjdGVkIikNCj4gPiA+Pj4NCj4gPiA+Pj4gU2lnbmVkLW9mZi1ieTogQ29yaW5uYSBWaW5z
Y2hlbiA8dmluc2NoZW5AcmVkaGF0LmNvbT4NCj4gPiA+Pj4gRml4ZXM6IDM1YTI0NDNkMDkxMGYg
KCJpYXZmOiBBZGQgd2FpdGluZyBmb3IgcmVzcG9uc2UgZnJvbSBQRiBpbg0KPiA+ID4+PiBzZXQg
bWFjIikNCj4gPiA+Pj4gUmV2aWV3ZWQtYnk6IEFsZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5k
ci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0KPiA+ID4+PiAtLS0NCj4gPiA+Pj4gQWRkZWQgQ0M6IHN0
YWJsZUB2Z2VyLmtlcm5lbC5vcmcNCj4gPiA+Pg0KPiA+ID4+IEhpLA0KPiA+ID4+DQo+ID4gPj4g
VGhpcyBmZWVscyBtb3JlIGxpa2UgYSBjbGVhbnVwIGZvciBuZXQtbmV4dCAod2l0aG91dCBhIEZp
eGVzIHRhZykNCj4gPiA+PiB0aGFuIGEgZml4IGZvciBuZXQuIEknbSBtaXNzaW5nIHdoZXJlIHRo
ZSBidWcgaXMgaGVyZS4NCj4gPiA+DQo+ID4gPiBZZWFoLCBpdCdzIG5vdCBhIGJ1ZywgdGhlICJG
aXhlcyIgdGFnIHdhcyBqdXN0IHN1cHBvc2VkIHRvIHBvaW50IG91dA0KPiA+ID4gdGhlIHBhdGNo
IGludHJvZHVjaW5nIHRoZSBkdXBsaWNhdGUgdGVzdC4NCj4gPiA+DQo+ID4gPiBTaGFsbCBJIGNy
ZWF0ZSBhIHYzIG9yIGlzIGl0IG9rIGFzIGlzIGFuZCBqdXN0IGdvZXMgdG8gbmV0LW5leHQNCj4g
PiA+IGluc3RlYWQgb2YgbmV0Pw0KPiA+ID4NCj4gPiA+DQo+ID4gPiBUaGFua3MsDQo+ID4gPiBD
b3Jpbm5hDQo+ID4gPg0KPiA+DQo+ID4gSSBjYW4gbWFrZSBhIG5vdGUgZm9yIGxhdGVyIGFuZCBl
aXRoZXIgbXlzZWxmIG9yIFRvbnkgY2FuIGZvcndhcmQgaXQNCj4gPiBuZXQtbmV4dCBhcyBwYXJ0
IG9mIGFuIEludGVsIFdpcmVkIExBTiB1cGRhdGUgd2hlbiB0aGUgbWVyZ2Ugd2luZG93DQo+ID4g
cmUtb3BlbnMgYW5kIGFueSB0ZXN0aW5nIGhhcyBjb21wbGV0ZWQuIChOb3QgdGhhdCB0aGVyZSBp
cyBtdWNoDQo+ID4gbmVlZGluZyB0byBiZSB0ZXN0ZWQgaW4gdGhpcyBwYXRjaGVzIGNhc2UpDQo+
IA0KPiBUaGF0J3MgbmljZSwgdGhhbmsgeW91IQ0KPiANCj4gDQo+IENvcmlubmENCg0KVGVzdGVk
LWJ5OiBSYWZhbCBSb21hbm93c2tpIDxyYWZhbC5yb21hbm93c2tpQGludGVsLmNvbT4NCg0K
