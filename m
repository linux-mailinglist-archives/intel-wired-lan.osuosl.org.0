Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +NziBoIO7GkoUAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Apr 2026 02:44:50 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B784644A9
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Apr 2026 02:44:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 35D9540CD2;
	Sat, 25 Apr 2026 00:44:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y9ChylC8UK4K; Sat, 25 Apr 2026 00:44:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 960D440CCF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777077886;
	bh=vHxWYcc+StqqyH/1/tMbhoHDji1/630AyGKH2Rqs5us=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kjPh+pn000Wau8mk/pnUAVEDxSRBBTwPPwvTaXCbNlhY81XXagiIz6l50I1M8bSui
	 qyQ5LUNGsxKPoa9P1w18TNKkUBDWSjQSYCnjQLd/tUL/J34J8rVLCNmxHdaHozLwWU
	 xjiJyifBlkSDKBOcJTXB0vbGf547GJQo5+EMCNgQDxPBDzzhqYOfr+qxLzYhHcLerp
	 mccd+hBpUPZ2onP0zCOvVpQNL+wm6QFavJKg7bFX/kFRAPP3ACZvddoL6HlRZGrh53
	 wdMizJSAIUdZsQXoiCm7SmoioZPYUKT7NmGz9UV4/MsY1oJyS43IVv+CJAN0JKcPzv
	 k2Fwpizr0dIjg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 960D440CCF;
	Sat, 25 Apr 2026 00:44:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 68DDF194
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Apr 2026 00:44:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4A96F40368
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Apr 2026 00:44:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6Ud91lITRb1f for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Apr 2026 00:44:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=alexander.nowlin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7C35A402C6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7C35A402C6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7C35A402C6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Apr 2026 00:44:44 +0000 (UTC)
X-CSE-ConnectionGUID: Qm8nZkM5Qf6iv9C1k6k7uw==
X-CSE-MsgGUID: bh418jl0SIKZlvEN/1kThQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11766"; a="81920712"
X-IronPort-AV: E=Sophos;i="6.23,197,1770624000"; d="scan'208";a="81920712"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 17:44:43 -0700
X-CSE-ConnectionGUID: O0hFvJQERZ+Wq5EBd0HE0Q==
X-CSE-MsgGUID: vv7aFCjHS2GeG3e642+3cQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,197,1770624000"; d="scan'208";a="238162185"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 17:44:42 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 24 Apr 2026 17:44:41 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 24 Apr 2026 17:44:41 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.34) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 24 Apr 2026 17:44:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XLm/uCLsUK21YrePbXzsXh1sArO+vp5nbx2TfvmHSc/NVAR0QIQ5Heo9B0qTgM2r2qcvWMmfHSRcL+kvYxJNSr4nBCOYdFs0XuBKebQ/ngl+aS5eEVN6c6PqOyVuWuf50fTm3Yvx3NNa/hnGDqMKoxzfMNxP/uW5jYNwS+eNY+xVLlOLqkz0+9FQI5txJJS2QCb0rsHy5drXl966Sfi4cMsdKnv19qEJUFlbtzF+FtHxKVFmUe12y8tx6F/DSJwRn5vRPsut8ymcymXqq8enbCBVjk+VUXoWd7xNwGWicji10fuvG8hMygShKZlE5Xuf0GJoUwPtcAlggKwau+ihvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vHxWYcc+StqqyH/1/tMbhoHDji1/630AyGKH2Rqs5us=;
 b=mUbczAZVpo5l9Bavje5EzjWWa1wJ5aJFLnqtrzIF5aNPn4BFokXd38yHzpo7CtjNPVEY/UQpwGYIzhK4ira1xdL6kpdGszzeifhdYzXLAWfyu2eQoJZsjHUc9RPpjeLbv3vgJaqUEw6wq1oswuVm5K0UXTwvq3TiS76J6zpjvzU1/Jr4QvI1h/nyq8jE8I9esmichNC4g7mnK4yvZaOpbnJCYfUhds2Y+m7KacnqOuVyS+DZNHoC/fsDsKzew5iGqpAm+F66/DxxYdP2LSRnZTt1dYASs/ARO9I27aYOJwZI9ePe1yNE6jWvBLhnrxrvAy5qK/RvzCuaSTcBYmRlgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV1PR11MB8790.namprd11.prod.outlook.com (2603:10b6:408:2b1::16)
 by SA3PR11MB7485.namprd11.prod.outlook.com (2603:10b6:806:31c::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.20; Sat, 25 Apr
 2026 00:44:32 +0000
Received: from LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a]) by LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a%5]) with mapi id 15.20.9846.011; Sat, 25 Apr 2026
 00:44:31 +0000
From: "Nowlin, Alexander" <alexander.nowlin@intel.com>
To: "Oros, Petr" <poros@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Vecera, Ivan" <ivecera@redhat.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Eric Dumazet <edumazet@google.com>,
 "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Simon Horman <horms@kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: fix missing SMA pin
 initialization in DPLL subsystem
Thread-Index: AQHcnPOGAPP1zowX7Ue1vNZgxOK08LXvXtdQ
Date: Sat, 25 Apr 2026 00:44:31 +0000
Message-ID: <LV1PR11MB879080FB410CB766977A6ECB90282@LV1PR11MB8790.namprd11.prod.outlook.com>
References: <20260213141651.2231124-1-poros@redhat.com>
In-Reply-To: <20260213141651.2231124-1-poros@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV1PR11MB8790:EE_|SA3PR11MB7485:EE_
x-ms-office365-filtering-correlation-id: a5745f7b-c3c0-4912-457b-08dea263d0a2
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|38070700021|56012099003|18002099003|22082099003;
x-microsoft-antispam-message-info: fSZgtulMPkAGvJ2cMJ+yb/Wfk6K1iKT9RaZP2hyQ21fUbT800gRHFiEZJVtgCKa9ms82KDGpDVJ+xCNCRjRQt+ePVLYX92RDXg99apq0QD4YCyHtNxfjgoz9Z0MCnWDkNaam8QyvQYgPtThTUXNXT4HnSZ/QIVmlHZj0qE+ML7L4VrOayqshcjtE7DFWILdH43PEhLaT33iBZ2CYQHQBVxEp1rw2AQRHd+GB5QItBV8ZX6LeiMyH9kRvrRUJhAzlItUPbwlFzOGTVt6Al9Ds7R4uMqZaODGpXqBmTjK3CusfyJr9ToMmv5ezMGCjI/mFn8NZBC9Bg98HF40mC1TYmW0Sfhwlt7RQVqbcRQ1ZGZfFFzzvJJsugjF4njeqVhRV6H6ilzjU/tK4rWdYAESNzTRLmpkMQVlgygeC7LxHx0fhFlQi2TH4pDo7PCYJHIzBiQYbnL7RisD9APj52JdtluaE6K51NTYeAOx60Ai1aHYvJu8Zqxvd/Lrpcf+wehSWsuRWY5Ck3qNoYthhVyaDxyaJSX7MzlcynDPbwntgXmaQltMj1l6My5th3L1ZuYt4pGvZm6rZEl+5r/6QS1wt3qUXB8oR9V7R11O+yjdDk85vjyZRSGJhATEyWiucX7u9AR0eak/2CeFlA0YIz0dT0ULTN0Ke3tFNVm/n0A6AD8ai7z/KXbTT2Epvra4FUNeKBoqnfUAKkA8AgWfJPZJ6sjA0fB1GMDim3WfFe+Iy3s46B91P+w2vbLBIW/lSskJmnmZRrBkLCnA0kqsXWFsJhkxEdSQTs6RG8mFpTLnHjjc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV1PR11MB8790.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(38070700021)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?elNzQ0R4YkNWRVI3bjRsY2tFalVBaVY0NmQ0TzVRNFMzeVhPNHVNNnJ3MTMw?=
 =?utf-8?B?UzIyWjNvbjUwOTloaGZ4N0JwWC9wRXBRaVB3VzVqQ1VzbHdOUkFoMHBDaXZQ?=
 =?utf-8?B?STFhVDZrQmZQbzBpWElRNFg2cVJydEZodTVjeDBxbHdNTkZaTS9Qa291MXg0?=
 =?utf-8?B?aUo5Zm9xYW5QTXlQWG1iaThwUFlVWHFvRFBjOEFpenJLN2ZWMzU0MDVLL3B4?=
 =?utf-8?B?N3NSUDFpWGMwa0hYaGp1RmQzZ2cyNzFkRVZZOU5IcFdMblpjNzZ5Rjh3Y3RK?=
 =?utf-8?B?UjZmSWRGTXdsZ0JOdTFxekR5NU5GUzRPQnF3S3M3cXI2Q3RjSmhITzFPaktS?=
 =?utf-8?B?ekNVcWtMMHA2QVh6VXZienlFQkQxZ2Z5VDNGM0sxTHVObFB6Q3RwT0tmcCt2?=
 =?utf-8?B?aVNUcWR4d2hacEJTaGcwMmRKdG5wZCs1cDkxZi9KOGhjYnZ5TlRXUW1lY1Vv?=
 =?utf-8?B?TFRtRXlrWWZrMmZMRG9FbWFPYU93YU51Z3BIQlBwd2ZBV3ZieDZXQi9oRzY1?=
 =?utf-8?B?WHU3QlZLUlhja1JEdTZmWTIvTXdhOFR0WXBFT1hnajkwNldYQkVmMUc4VFZR?=
 =?utf-8?B?MkoxQmNBRFdseitBZ1NUUzJkODZzaXRFZ2hBSHJNNUV0NHVrR2ZaR05qM0U3?=
 =?utf-8?B?cTY0dWVwc1E1RFVXU0ZvOGROVG9XQWVuN0Jabi9QUk5UN1ZOV3hzeS9Od2tF?=
 =?utf-8?B?SDdKL3FhaFRUWXRaYWdDNUw5dzFsay9pTUFRVE9rSmZGeXAyUFhNd2h3ZmRW?=
 =?utf-8?B?eko4TEh2Y2J4bnJsS2IwTVMxTUhCdnZSNjZvZWlSbTFyS1VBdnpIRVI4dUI3?=
 =?utf-8?B?enpEaWxzdndZeFlpc3ZyTGpRYjdyWmQydmU2Vi9EQ3RqejVTUXU5YzQwcUJi?=
 =?utf-8?B?RnZiVzhuUy9VSFB1ayt3TVE2REdvTjNHRWlYa1pJekxjSGUxdUUzWkhSeVh0?=
 =?utf-8?B?TVI2L29JM2FjdGRpWWtWTlRKQmE4RmlOSHA0Q2dqTlpxMTRHUzVwZ0JtbE1O?=
 =?utf-8?B?Z3BodmNDS0I0Y28zeUEzR0J4bVc4RkRjeXlhNVp2NEN2MzFFd2U5T0wwM04w?=
 =?utf-8?B?bkhqMkh5akl3NlNJTWg1VHhsVVF0aCtJbSsycUpNcWx1aktlSDcxSFZvajJw?=
 =?utf-8?B?UGFmRjNNTENsS1FqYlE3Y0dtTDRzanRpdW9zRURYR2MxQzhaVmpzU3ZacnpG?=
 =?utf-8?B?S3ltQWdGVXNjVUNkQ1ErME5qaVdyNHFWTDZNUThOcXNUUFBrU1NTbzBLM1c0?=
 =?utf-8?B?cThLazBQcS9IaUg1R0QzV3dYbHY5NlovM2g0YzN3RWdWL25qVkJuNnBWcGFs?=
 =?utf-8?B?RGYyNDhubE5heWNBaE9vakdqSkY5dWludkZRMFNRRWhVK1hXUDlJL2VjSndZ?=
 =?utf-8?B?Ky8zU0dCUWxqQWxCeVg1UUZrdmJsQUFaSjV3VU5MQUJyVVBrVWhVNFppWHkw?=
 =?utf-8?B?dGJsSHhneWxKdWVLNmRhS2pEU2xxS1EyVDh3bHE2TXpyazlWTE5NRDVhZE0y?=
 =?utf-8?B?Sk5jYUdvVHdtR3VvZGZYbkg2Tk9wbVErS3BFclBidVdqclFLZkI4Ny9KZVBT?=
 =?utf-8?B?MkMrQ1FxTzBTcnZJblpUaDFwOVY0bXdnNE54NVdmR3dHQ1hIN1FJR0pnMjAx?=
 =?utf-8?B?cUxZRkREUi9tQmVHRUhaa3o4OXp0VHdHSU5ZdExHOE9lYzdFZEdjM1MzdXdq?=
 =?utf-8?B?eGk2b3BYU0pKMlErdlhjTkgrV204SDFCNi9taTFLT1ZvVUNKdExKRkcxV0hq?=
 =?utf-8?B?NE9BMGVpVFdHM0dneWYxRXcyb0dlZkxjM3Q4Nnk2N0JOTVd0K2tpM3lxWUx5?=
 =?utf-8?B?cjR5bE1aWUZWeHBvaHl6ZEFvZUNvME5wd0piTHZsUFYzbkk5czZqcDNkVW03?=
 =?utf-8?B?anhZWDlzMzNTbVU2djBXNC9OOUIzb0ZDOHdMeTdxR0EwYlRkY3MwZWNHZEwr?=
 =?utf-8?B?V2c0Ulg2M0wyTkk3NzlHcGlqbFpiUnNKcndKYTdmVDdaUlZuT2FaSUJGd2hR?=
 =?utf-8?B?TjZ5eDdrazZaODVlMzVFakgxbjR3YzhYODNmTXRsWWNBVW1BaU1QZUkzRzI4?=
 =?utf-8?B?NG1kK1g1d3RHQm92VVI3M0tkYmtwT2dnbjVDK1J6QlRDZ1hiZTEycUhRSDdk?=
 =?utf-8?B?TDRQUC90TEQzSDFxaSt2ZENQVzRrKzFsakw0ZWdPbXV3S3pnRU54djRyQzdk?=
 =?utf-8?B?TGVIVjhRaDk2M2d6blNRMnk0Tno4M0MvQmdwQU5ZbC9TbmJQTmZaVXFEK2xF?=
 =?utf-8?B?YXltcnJ0bUhlRk0zVlZzR2ltVWw2WHVnNHFUMUJjbnRvc3RzdHE5UTJicGQ5?=
 =?utf-8?B?VHhibUY4NnR1Sjh5RDJabStCRnpLWnVKRERvNFBIN2JmUFpEZWU1Zz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: gVg2R8KbZmpsrYhK2vHEnxJ6URay+9lMTCtFadhpamfWG4ypN6ttntx584sVNg1kOaPHb6wF0qnWh8u3nPmi/3oRpK5JAalTQj9K6WEBqCaPAtfuvH59A/eUUxiKV1YxCBXqENzpLVRhtGBdrBDR9XP2YHX0sxOqji1Hdt2EhYq+gmG5+he+/sjL1Jy5Bc20Ryi4yulGbQ30V+w87UkX0eGUQzP2ngSLELQbjmIcbdogXP1aItAQdncWQvlDuZdqJMKzHgQLxsE7UHYnKBASaKVcsxXhamkrtErwJDN8h39skBmJsYe1Qwk+o46+L10bQ54BWUh1COxLa3VStREoXw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV1PR11MB8790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a5745f7b-c3c0-4912-457b-08dea263d0a2
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Apr 2026 00:44:31.8391 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: juM3Q83DkOQidtmKnkKnp0Py/SGv/0aA65j0MSQlHAC2uU9f6wyRxpIGX8gB1cxaikYkg+bAxiThdC1tSTKQzfzuWsR5AwrqKU6qcOh/Y+Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7485
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777077885; x=1808613885;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vHxWYcc+StqqyH/1/tMbhoHDji1/630AyGKH2Rqs5us=;
 b=a70K5w7CM6h7CqDAZXdyUtwLbKgQndLe76jJ3OPwPxmtgA2/nrW1zKE1
 pN5j38c8L+puhqq21LwimogtY62lMac/XYEZzXGbpckl2xCMQTIgcB6/s
 cv6Kb+G+URfT6qEHqzWQWJTHyrJbbWZJl9mthHOw37e+UahNAJvim/8Zn
 TYfA2RpjiXNN2gSZeOD7uQFB23vPB4/BW0f8cZNCcZJHJIa2+kv7HtQAt
 jPVq5wCnv5P76SFTumd47D/iO7UvXhx7Tc6M2RvXWy2jGWMyeMqSOzfUB
 hQDivNDzwS8SoU8aT5waIIbV4Asnvu+NUumH9+EMJkBX27+Tt1AahSyBX
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=a70K5w7C
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix missing SMA pin
 initialization in DPLL subsystem
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
X-Rspamd-Queue-Id: 22B784644A9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBQZXRyIE9yb3MN
Cj4gU2VudDogRnJpZGF5LCBGZWJydWFyeSAxMywgMjAyNiA2OjE3IEFNDQo+IFRvOiBuZXRkZXZA
dmdlci5rZXJuZWwub3JnDQo+IENjOiBWZWNlcmEsIEl2YW4gPGl2ZWNlcmFAcmVkaGF0LmNvbT47
IEtpdHN6ZWwsIFByemVteXNsYXcgPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+OyBFcmlj
IER1bWF6ZXQgPGVkdW1hemV0QGdvb2dsZS5jb20+OyBLdWJhbGV3c2tpLCBBcmthZGl1c3ogPGFy
a2FkaXVzei5rdWJhbGV3c2tpQGludGVsLmNvbT47IEFuZHJldyBMdW5uIA0KPiA8YW5kcmV3K25l
dGRldkBsdW5uLmNoPjsgTmd1eWVuLCBBbnRob255IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwu
Y29tPjsgU2ltb24gSG9ybWFuIDxob3Jtc0BrZXJuZWwub3JnPjsgaW50ZWwtd2lyZWQtbGFuQGxp
c3RzLm9zdW9zbC5vcmc7IEpha3ViIEtpY2luc2tpIDxrdWJhQGtlcm5lbC5vcmc+OyBQYW9sbyBB
YmVuaSANCj4gPHBhYmVuaUByZWRoYXQuY29tPjsgRGF2aWQgUy4gTWlsbGVyIDxkYXZlbUBkYXZl
bWxvZnQubmV0PjsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZw0KPiBTdWJqZWN0OiBbSW50
ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggbmV0XSBpY2U6IGZpeCBtaXNzaW5nIFNNQSBwaW4gaW5pdGlh
bGl6YXRpb24gaW4gRFBMTCBzdWJzeXN0ZW0NCj4gDQo+IFRoZSBEUExMIFNNQS9VLkZMIHBpbiBy
ZWRlc2lnbiBpbnRyb2R1Y2VkIGljZV9kcGxsX3N3X3Bpbl9mcmVxdWVuY3lfZ2V0KCkgd2hpY2gg
Z2F0ZXMgZnJlcXVlbmN5IHJlcG9ydGluZyBvbiB0aGUgcGluJ3MgYWN0aXZlIGZsYWcuIFRoaXMg
ZmxhZyBpcyBkZXRlcm1pbmVkIGJ5IGljZV9kcGxsX3N3X3BpbnNfdXBkYXRlKCkgZnJvbSB0aGUg
UENBOTU3NSANCj4gR1BJTyBleHBhbmRlciBzdGF0ZS4gQmVmb3JlIHRoZSByZWRlc2lnbiwgU01B
IHBpbnMgd2VyZSBleHBvc2VkIGFzIGRpcmVjdCBIVyBpbnB1dC9vdXRwdXQgcGlucyBhbmQgaWNl
X2RwbGxfZnJlcXVlbmN5X2dldCgpIHJldHVybmVkIHRoZSBDR1UgZnJlcXVlbmN5IHVuY29uZGl0
aW9uYWxseSDigJQgdGhlIFBDQTk1NzUgc3RhdGUgd2FzIG5ldmVyIA0KPiBjb25zdWx0ZWQuDQo+
IA0KPiBUaGUgUENBOTU3NSBwb3dlcnMgb24gd2l0aCBhbGwgb3V0cHV0cyBoaWdoLCBzZXR0aW5n
IElDRV9TTUExX0RJUl9FTiwgSUNFX1NNQTFfVFhfRU4sIElDRV9TTUEyX0RJUl9FTiBhbmQgSUNF
X1NNQTJfVFhfRU4uIE5vdGhpbmcgaW4gdGhlIGRyaXZlciB3cml0ZXMgdGhlIHJlZ2lzdGVyIGR1
cmluZyBpbml0aWFsaXphdGlvbiwgc28NCj4gaWNlX2RwbGxfc3dfcGluc191cGRhdGUoKSBzZWVz
IGFsbCBwaW5zIGFzIGluYWN0aXZlIGFuZA0KPiBpY2VfZHBsbF9zd19waW5fZnJlcXVlbmN5X2dl
dCgpIHBlcm1hbmVudGx5IHJldHVybnMgMCBIeiBmb3IgZXZlcnkgU1cgcGluLg0KPiANCj4gRml4
IHRoaXMgYnkgd3JpdGluZyBhIGRlZmF1bHQgU01BIGNvbmZpZ3VyYXRpb24gaW4NCj4gaWNlX2Rw
bGxfaW5pdF9pbmZvX3N3X3BpbnMoKTogY2xlYXIgYWxsIFNNQSBiaXRzLCB0aGVuIHNldCBTTUEx
IGFuZA0KPiBTTUEyIGFzIGFjdGl2ZSBpbnB1dHMgKERJUl9FTj0wKSB3aXRoIFUuRkwxIG91dHB1
dCBhbmQgVS5GTDIgaW5wdXQgZGlzYWJsZWQuIEVhY2ggU01BL1UuRkwgcGFpciBzaGFyZXMgYSBw
aHlzaWNhbCBzaWduYWwgcGF0aCBzbyBvbmx5IG9uZSBwaW4gcGVyIHBhaXIgY2FuIGJlIGFjdGl2
ZSBhdCBhIHRpbWUuIFUuRkwgcGlucyBzdGlsbCByZXBvcnQgZnJlcXVlbmN5IDAgPiBhZnRlciB0
aGlzIGZpeDogVS5GTDEgKG91dHB1dC1vbmx5KSBpcyBkaXNhYmxlZCBieSBJQ0VfU01BMV9UWF9F
TiB3aGljaCBrZWVwcyB0aGUgVFggb3V0cHV0IGJ1ZmZlciBvZmYsIGFuZCBVLkZMMg0KPiAoaW5w
dXQtb25seSkgaXMgZGlzYWJsZWQgYnkgSUNFX1NNQTJfVUZMMl9SWF9ESVMuIFRoZXkgY2FuIGJl
IGFjdGl2YXRlZCBieSBjaGFuZ2luZyB0aGUgY29ycmVzcG9uZGluZyBTTUEgcGluIGRpcmVjdGlv
biB2aWEgZHBsbCBuZXRsaW5rLg0KPiANCj4gRml4ZXM6IDJkZDVkMDNjNzdlMiAoImljZTogcmVk
ZXNpZ24gZHBsbCBzbWEvdS5mbCBwaW5zIGNvbnRyb2wiKQ0KPiBTaWduZWQtb2ZmLWJ5OiBQZXRy
IE9yb3MgPHBvcm9zQHJlZGhhdC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2ljZV9kcGxsLmMgfCAxNyArKysrKysrKysrKysrKysrKw0KPiAgMSBmaWxlIGNo
YW5nZWQsIDE3IGluc2VydGlvbnMoKykNCg0KVGVzdGVkLWJ5OiBBbGV4YW5kZXIgTm93bGluIDxh
bGV4YW5kZXIubm93bGluQGludGVsLmNvbT4NCg==
