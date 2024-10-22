Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F6859AA310
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2024 15:24:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6CAF14023F;
	Tue, 22 Oct 2024 13:24:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id seOU020ht8sJ; Tue, 22 Oct 2024 13:24:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DE7B14023E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729603483;
	bh=9naau0pmTDJhWkWhWZhhJCe9i5OzOY7bW2QNsRORN1I=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KNixlA5HZ52g0RVypJZ3ATgjt8d/IlAxy6ZmGInGz90AVc7Dra/YRDwzMpde4U8ie
	 4QJLOGhs4AWLOvrQgEuNpED4UW5M7i9a32fu9LNqS10I8Ka5cetjyg58J70yZmHNnc
	 bfc8G2BiVHqjkvKcQ4Aw8VXmi7E+NZG3FL9obw3tIlD4jDmDkW90N212PHWYh8/Cg5
	 JcrluJVAyYugIsZX7rl+yE+GLmdTnYnCuXWpbMRk4Tq7dgDSovzGeuhOC1BRwWM+VF
	 SfcOPyOZfHlcMEb4z+UQ5bMBB3mLdG6RSm6TaQ3QpmkFcrL7lfattfqRw8T6YAy5Fy
	 jcDED5EWXQWgg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DE7B14023E;
	Tue, 22 Oct 2024 13:24:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id AEC26963
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 13:24:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9D12B80AAE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 13:24:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ab_1uALJpi30 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Oct 2024 13:24:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9B80B80AA1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9B80B80AA1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9B80B80AA1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 13:24:39 +0000 (UTC)
X-CSE-ConnectionGUID: OkF1Jil8SWGTNh5unRU/TA==
X-CSE-MsgGUID: zz6Y6mpxR9uMeY3Lp+lZkQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="31997578"
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="31997578"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 06:24:39 -0700
X-CSE-ConnectionGUID: ZnJ/BXi0ShSnDWI9EMVXqA==
X-CSE-MsgGUID: WTLFGunxTkeh4+8S4puOeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="84479833"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Oct 2024 06:24:37 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 22 Oct 2024 06:24:36 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 22 Oct 2024 06:24:36 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 22 Oct 2024 06:24:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IUGY1v9BqGEeiwgzCcV706N0VJVAj4195hKb9ZI0QKRxA3mPKpejKVKcp5idPyWbLQlSsveyfOSOHSZIUP6lGn1Y6GnM83SIf1OPmn+uH7MOEfv/s0qHaLGwfOJcnSSRhHp48Fg08BMc9zHJPALFo5MiqgSuNQwd594EYN/3rP36T+SaFq5Cd9lM6+MJpUHfUbYhUL7tPwp4ThTJP2mLnHsXDOgZAHK31t4mrPGBCE4wRK3+92LvxTTZjd094SzC2fqI3gFA/q8Q35PuuhB8iauJRHgV0lqNVaCXBkLIV28K5xU4Px1r6ScJ6JfDz+gISIOcdHESiEaTwOoL+nXV7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9naau0pmTDJhWkWhWZhhJCe9i5OzOY7bW2QNsRORN1I=;
 b=qyPwoEwgP9rTobUu5BVJUFTn6ZEwsyiVqr17KRDjf5XZZ7lJI5skp65B/VU80l1nd3S54d7ojXayFCQ8XWT3IhfeH2ewl9/SAyKOk9yf1NYgRr+3AOqtEpewTexJhx8yzg5nGkVze93zPzMr8z1QFQ8PEhrnziQaqgUkyyCAiyQFaqPjd1zKv1+6FnjJ6gqazNNN/Gyc7XxlDmuzf+/QXNl/r6+1Ekiv5vZ5CjOialyAT2mSeR5lUTeTxC3YfnTZ5anAqFRKKGCgWzZCgCv8oXHgKhC5sm/V6wZAKN1zj+OZ5kZCYF+Qcy7yyW4sxV42cFyEww5UZspoO3j3BSghAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 DS0PR11MB6471.namprd11.prod.outlook.com (2603:10b6:8:c1::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8069.27; Tue, 22 Oct 2024 13:24:27 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::1d5f:5927:4b71:853a]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::1d5f:5927:4b71:853a%4]) with mapi id 15.20.8093.014; Tue, 22 Oct 2024
 13:24:27 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 2/2] ice: ptp: add control
 over HW timestamp latch point
Thread-Index: AQHbI8T/x6fIWxur30OZ4oT2qjLZxbKRVduAgAFqcUA=
Date: Tue, 22 Oct 2024 13:24:27 +0000
Message-ID: <DM6PR11MB4657FFF312FA212538EDBA429B4C2@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20241021141955.1466979-1-arkadiusz.kubalewski@intel.com>
 <20241021141955.1466979-3-arkadiusz.kubalewski@intel.com>
 <421389ef-f5f4-4e92-b963-c6de1cc12506@molgen.mpg.de>
In-Reply-To: <421389ef-f5f4-4e92-b963-c6de1cc12506@molgen.mpg.de>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|DS0PR11MB6471:EE_
x-ms-office365-filtering-correlation-id: b48cc95e-b004-4138-e8f9-08dcf29cda54
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?ZDFPOXArdGp5eVNXUUtoczNvY2pPYUhUTWlvU2NvanBZWVNYdUk0MEEybnJJ?=
 =?utf-8?B?MXljb0VLTGcwYWxhbGlKaWtWbVJYckMydlN4Y3gwOXg3SXltcldaVkM2UGFl?=
 =?utf-8?B?QWlMVDZad3FoQnpKT3BzdVhNQ2ZMc3VUZmlvM0J4cjMwZ0VUcHdZaUpNZjIw?=
 =?utf-8?B?eWdncmJPTnVyREs3SzJTNVdEb1dSRm9adDdYMGREak5XeG02WnY3UGcyeEVh?=
 =?utf-8?B?Y0I5dnM2R2drZm1PM295K3NZVi9WdXFuNmIzbjYvVmNPTVduVXB6dXByWU9r?=
 =?utf-8?B?c0UzbFZpeEhGNnh4M0NZLzlXS2laamRLNDlmS1ROZk1vY000aVNTRTdHNGtv?=
 =?utf-8?B?a2hqL0ViY2VFdHczSlk1aDQwZFJjNTRITDZaeVpjVVFhTklyUlVYSDRhWUNF?=
 =?utf-8?B?MHFsMFdsbEZnTHV4c2JTYXJmeHR0ZzNzWDZMKzBmYjlsS1cwOXdFWDUrZUt5?=
 =?utf-8?B?ZS91bWFtZm5TWGZueUJLYy9EY2o0a3Q5Si8yY1prYjg0MVQ1OTBkRms0Wk5s?=
 =?utf-8?B?S2c4VGNEdFZad211OWlqNENlekVwSDRrL0ZmSkNjQWEzZWp0ZDJmSkVWQjAz?=
 =?utf-8?B?ZmRLT2V5N3dtajl4Sy8xeDEzbWkvRTQxdUxta3dxZW9aR3dFcDBCRkN3ZWRV?=
 =?utf-8?B?N3dBQ1duVWZHWUxKclo4OFIwdzh6WnJHUlp4NVZ5eTU4aml2OW50b1kyL050?=
 =?utf-8?B?ajRpaVVGeXA0S1orQ3c4SDdtU2RjUHpXWWFacU9zbmVud1gzTk1RZzkvMHli?=
 =?utf-8?B?MnUrMk9YNVpiZTdhaVNrM0tJQmk3TTFhY2p1ZmM3RXJ4ODByQ0tvK3Roei9K?=
 =?utf-8?B?VTZNSklsSWxhQTdVMjlveTZMekVTZDI2SlNBUjdUbEFnd09BTjU5YUdjeDFD?=
 =?utf-8?B?ckRyZWgwdTlaWmxXNi96ejlQZHA5NXFIelJZdWV3SHVhaGZLMEJLS1lpdE9m?=
 =?utf-8?B?QzdFSnovK2VMeTRwdWU5TXVvaDZSWFhNRUpLcXFhNXJ2OGpZTjgxNG1Fa091?=
 =?utf-8?B?aWtTME45b2JHT0NMTFY3NDVuVUVzdk9WaFBZdEJJMEtZTUdIc0pMektPcE4w?=
 =?utf-8?B?WkU3WmU3REl3Q25za0F4T1V6Vm9STjNPdVdQRWtoNnVDSDkvN013czkxZ2o5?=
 =?utf-8?B?OHNyNTcxWVNXZmJ0NDd6RkMrZXJDcDViT1JJN3UvVEEraTBmeklGSzdlZk95?=
 =?utf-8?B?bUxmU2FCbzZzVS83eERlTU5BYjhiZmxHRDdqZ2JGbE1mcWh4UW5DcmY5NFVN?=
 =?utf-8?B?cHl3ampnWU9kdjBPV0hubVRQQnVEYjVtVTRIMXFEQXNwOUhkQ1FMVzU2Y1Ji?=
 =?utf-8?B?emhkVlpNTlU0TkZpWUtFOUpMMm1Nd3RiVFlEbGpONzZ5Y3NkSXNqeFNVUVV3?=
 =?utf-8?B?UGlVTk5taTFJQWtNMVBNSnE2U2ZZaFo5TnBpRzVlelZ2M0lVbWRQOXRmMmhI?=
 =?utf-8?B?TjcxMVVkS2kwVzNhaDE0NjBldlowZXhRNGg4TWsyM251Nyt0MEZ3NFZ6NkFi?=
 =?utf-8?B?bHA2bnhrdG4wU1RKdm8rZk1GOGwydldwNFFiSm0yL081SElnOE1EcHN0VEJo?=
 =?utf-8?B?NWJpa2FWaTV5bVRtdUl5RHdVeEpER2RjblJmNUttZ0ZPYzdKZXNjL3IyMnJx?=
 =?utf-8?B?NVFLbkR5ejJENmw3eE1zL1lXbzN1VS9mRmNTSUlyZW5nODVqL3BNV2o3cy9W?=
 =?utf-8?B?dnhUdDFGM2w2Q3AyWm13UVg3a2VnbFJoU2xHZFU2OTNZM3M2aVVwTktKWEhB?=
 =?utf-8?B?UEM3U2tvUHJyaG9XVDRmdkhCSERFckV3ZnhFWHR2LysrS0p1c2VHNWtseFFW?=
 =?utf-8?Q?vzwcCKQhP/XL/4TTCRB5ZJWEMWf9gZnXl6ESk=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eGxoVnRzOGU3SDVPeHNhcWxnSnkyMHdYTVdzSEk3OTVQeHdpeGJ3WmFPQTBO?=
 =?utf-8?B?NGlFNmJtbFJmZXNlaVpWc01DSUpqSUpTUnFpU3BkVEtJWU84SHRtTmQzOGlP?=
 =?utf-8?B?aU1BSklEY3FzQUxXZkZYb2JwQjQySkIrM0ZqV3dDdGQrVDJSdndtRjVmM1Mz?=
 =?utf-8?B?RWM1aHRrZVlidzNQYjUreGE3U2tBUkF3SklHNSt1NmVJQ3laQVRxakFyTU5v?=
 =?utf-8?B?Ujl2NGMwSzF1SFJ2cWZsTkVhbXJ0ZmNIUGF6NTgvMTMwWTF2SWRSTG1jcEJ1?=
 =?utf-8?B?K3dRTWU0ZWp5RTNmZ2FQOGVLL0tsQ013RUhyZW1WaTNmMzlzWEljcGozYVV0?=
 =?utf-8?B?OC9UWHpqSzcwOUUzZHdqODhtbWl4V2dpQzRWdmpNSHNlN0JjN3d0Tk9vUG4z?=
 =?utf-8?B?N2wrWDlGNFIwTWwvMXVzUm14aFova2owYmZKUk8yNzRLdDRqaTMxQ2dJNUFH?=
 =?utf-8?B?UUMvREJRamttM2puR3l4d05CRjU4RGdBalg1ZEhXR01oSFVEQjRScDZkenEw?=
 =?utf-8?B?TXdHN3FXUHdtMWtKeGxQWVR3dUxjMkNwQTRxczlFNC9tUENRL3o2dktCcERl?=
 =?utf-8?B?c3R3UWFzclhYZngwN3J3cU9UaWY0dTZtelVQM1Vkb2FoczFkbkIzUi9waElU?=
 =?utf-8?B?RnpVY3F1R0xiZFhUYWtYSkMwUi94YVd5bXA3NUlqZXY0LzZDbjhzQ0R3RXhF?=
 =?utf-8?B?UkJkS2JIQjhGUThSWUY2M3NtbTBPZ1VONmk5R0VYTExLWEFVTW1ZNnZtV0Jr?=
 =?utf-8?B?NWdzWlltYXhNek94bFV1aHk1VHZyUGJaNXZlU1N6VjA2cFowSFlLeGRPeU5V?=
 =?utf-8?B?Qy9KMnBqVVRhMURReWJvWUR1ekh2YVFoQ1A3TTREeTZWajY4d21oaGFuTm5m?=
 =?utf-8?B?SXp3RkZlMEpWaE5hVnZDQ2hRNjEvY1RVSVg3YVBqTC9DUTlvTUlQaUl3S1Q3?=
 =?utf-8?B?TWdWNFRNcGxNeGJVT1U5b1lFSUxpeTdQaVAvNGYvZHdxeWFQbklFeFhKaVJz?=
 =?utf-8?B?Q0dML01wNWI0ajVPNEszY3ZHSFNIUTh0K2hOdmRYMjc4Nzk2OTlEbGg3TWoy?=
 =?utf-8?B?SDA4elJPTG96dnp5bXBWVy9vU0ZYYVlUakNzalVGNE5oNlJ0Y2FGcjZINlRE?=
 =?utf-8?B?MTJjcUhZamcyOW90bFZVeElMc296YnZrWXJvSy9kT2swRjRsZ0UxRmZ6aitp?=
 =?utf-8?B?UVlwS21XdnlVQ1hNOUVMMkZ2SWhpQmlqbWIwak9BeVQySmhHM0lVZXgzRHdS?=
 =?utf-8?B?TVFSQmdBdE42c0dyZW1qVjNrVm1hVDhNQjNGdTNSNmNtM3MzVDFDZ2tlTXhX?=
 =?utf-8?B?NUlqeFk5Tm4zRzQ0bmFYNjF4aTM2WHdEOVg2NVpCMksxYW8zZWtOSldWTnQv?=
 =?utf-8?B?OU9QUlBlNmF1bGNQcFlGcHg3Ym1ZZ2xxcDJrY2dhMmE3MHNrbWVQUllVNFg2?=
 =?utf-8?B?NHNTazNTc3UwdmlyNUFYQzk3QnR5UGpvVm1Ca0E5bUpEKy9pajN1aHVpaC9T?=
 =?utf-8?B?VEd2ZUFSVUhXWnAyWlBBMXlSWXM2ZmFYUWZEOUJMNFBrZWoxc2hGWFNHZ2N2?=
 =?utf-8?B?cE9qM2Urc3BQNDQzSkRWR2NvZzdTV3J2NHIxTTJ5WlpRNXp4bVViWTcvb3BJ?=
 =?utf-8?B?YVJKRjM4TUVDZnk3WDlxM3NmMjdtWXljUU11NllWaWI2bHU3LzFOdkVYdEtV?=
 =?utf-8?B?d3J4UVBaSXdiN1lUL2pmMHJLMzgvNmVDcVhGN1RaN0E0RFV4MFZwOGdFOU8x?=
 =?utf-8?B?SUVKaHVwVWQwYlNuWXhna0JKSm5Hb3ZEMjc1a0drY0hQSGVvZGlzVEFlZHRk?=
 =?utf-8?B?UXBHcmtxZERSaVNCYXhScmovdFU1TWNYam9JcXFQU0g5SEp3UUZTMFZzTUhW?=
 =?utf-8?B?UG55NG5tb3hXckRETXBlTTZsNHhwMTRYMWYzTlBEZDhlbDJneSs1eU5IdjJG?=
 =?utf-8?B?TUhzM2dXNU1MUHd1YjFCZU9teVRIdlVWdmpWWVdyQXYrdmtLUlZSYTRvc29w?=
 =?utf-8?B?ank1QmNtck9oSzhKYldYdGh4K3F1VlZPYU1Yem0zTE9CZHJBNHFCbmdBU1Bm?=
 =?utf-8?B?MnhiMmpuSFQrRStTNGdsK1pTNE90UUhBVFczN0VEZjZMRVhaM2JldlhWSng1?=
 =?utf-8?Q?0sJMKwRL0uKkR5CjtRio3TPiu?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b48cc95e-b004-4138-e8f9-08dcf29cda54
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2024 13:24:27.1431 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: azEh4FwNMnUI5M9IZqHwpvH5Egy9Tp5qdBWvdzhuS3B+tT87GEgOoGHCc/aLYxR1hhhmHntvqXA1sJ8PRELZCgMbfTQ9ROETXZO4VsjmmwY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6471
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729603479; x=1761139479;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9naau0pmTDJhWkWhWZhhJCe9i5OzOY7bW2QNsRORN1I=;
 b=cyelCUd3FKFvbZjezyBhH7dC4+J+OFWg6olebIwiPv3yIxllEErs40lQ
 +MkXjoewNPpZwxkHmgP5nm27nNe598f/nfwkdygMWmDl/geKSAGb56ydL
 cilK6hqNUW6yQbdhpQfM75DtlPRwY/NuwdfPMy0Of3GgLKDOHGK5bXycO
 ssnInIdHXcB8DnTZlxYptNSxJVSwxS9j1OsTo6enHLn/LIZicuMj4aLfv
 fZc9ngYeGGl1kTUa/+oBnXgbWz3yjU3J+2ocxsLmasF58CdPEsQIxMDJY
 G37oZIOoavwde+dZGgSAGRjgDn00yzvb+OXami6N5iJ5FjgJSqtA5ajYL
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cyelCUd3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/2] ice: ptp: add control
 over HW timestamp latch point
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

PkZyb206IFBhdWwgTWVuemVsIDxwbWVuemVsQG1vbGdlbi5tcGcuZGU+DQo+U2VudDogTW9uZGF5
LCBPY3RvYmVyIDIxLCAyMDI0IDU6MzQgUE0NCj4NCj5EZWFyIEFya2FkaXVzeiwNCj4NCj4NCj5U
aGFuayB5b3UgZm9yIHRoZSBwYXRjaC4NCg0KVGhhbmsgeW91IGZvciB0aGUgcmV2aWV3IQ0KDQo+
DQo+QW0gMjEuMTAuMjQgdW0gMTY6MTkgc2NocmllYiBBcmthZGl1c3ogS3ViYWxld3NraToNCj4+
IEFsbG93IHVzZXIgdG8gY29udHJvbCB0aGUgbGF0Y2ggcG9pbnQgb2YgcHRwIEhXIHRpbWVzdGFt
cHMgaW4gRTgyNQ0KPj4gZGV2aWNlcy4NCj4NCj5QbGVhc2UgZ2l2ZSBhbiBleGFtcGxlIGhvdyB0
byBjb25maWd1cmUgaXQuDQoNClN1cmUgd2lsbCBkby4NCg0KPg0KPj4gUmV2aWV3ZWQtYnk6IEFs
ZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0KPj4gU2ln
bmVkLW9mZi1ieTogQXJrYWRpdXN6IEt1YmFsZXdza2kgPGFya2FkaXVzei5rdWJhbGV3c2tpQGlu
dGVsLmNvbT4NCj4+IC0tLQ0KPj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNl
X3B0cC5jICAgIHwgNDYgKysrKysrKysrKysrKysrKysNCj4+ICAgZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWNlL2ljZV9wdHBfaHcuYyB8IDU3ICsrKysrKysrKysrKysrKysrKysrKw0KPj4g
ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0cF9ody5oIHwgIDIgKw0KPj4g
ICAzIGZpbGVzIGNoYW5nZWQsIDEwNSBpbnNlcnRpb25zKCspDQo+Pg0KPj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwLmMNCj4+IGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHAuYw0KPj4gaW5kZXggYTk5OWZmYWNlMjcyLi40
NzQ0NDQxMmVkOWEgMTAwNjQ0DQo+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Y2UvaWNlX3B0cC5jDQo+PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNl
X3B0cC5jDQo+PiBAQCAtMjUwOSw2ICsyNTA5LDUwIEBAIHN0YXRpYyBpbnQgaWNlX3B0cF9wYXJz
ZV9zZHBfZW50cmllcyhzdHJ1Y3QgaWNlX3BmDQo+PiAqcGYsIF9fbGUxNiAqZW50cmllcywNCj4+
ICAgCXJldHVybiAwOw0KPj4gICB9DQo+Pg0KPj4gKy8qKg0KPj4gKyAqIGljZV9nZXRfdHNfcG9p
bnQgLSBnZXQgdGhlIHR4IHRpbWVzdGFtcCBsYXRjaCBwb2ludA0KPj4gKyAqIEBpbmZvOiB0aGUg
ZHJpdmVyJ3MgUFRQIGluZm8gc3RydWN0dXJlDQo+PiArICogQHBvaW50OiByZXR1cm4gdGhlIGNv
bmZpZ3VyZWQgdHggdGltZXN0YW1wIGxhdGNoIHBvaW50DQo+PiArICoNCj4+ICsgKiBSZXR1cm46
IDAgb24gc3VjY2VzcywgbmVnYXRpdmUgb24gZmFpbHVyZS4NCj4+ICsgKi8NCj4+ICtzdGF0aWMg
aW50DQo+PiAraWNlX2dldF90c19wb2ludChzdHJ1Y3QgcHRwX2Nsb2NrX2luZm8gKmluZm8sIGVu
dW0gcHRwX3RzX3BvaW50ICpwb2ludCkNCj4+ICt7DQo+PiArCXN0cnVjdCBpY2VfcGYgKnBmID0g
cHRwX2luZm9fdG9fcGYoaW5mbyk7DQo+PiArCXN0cnVjdCBpY2VfaHcgKmh3ID0gJnBmLT5odzsN
Cj4+ICsJYm9vbCBzZmRfZW5hOw0KPj4gKwlpbnQgcmV0Ow0KPj4gKw0KPj4gKwlpY2VfcHRwX2xv
Y2soaHcpOw0KPj4gKwlyZXQgPSBpY2VfcHRwX2h3X3RzX3BvaW50X2dldChodywgJnNmZF9lbmEp
Ow0KPj4gKwlpY2VfcHRwX3VubG9jayhodyk7DQo+PiArCWlmICghcmV0KQ0KPj4gKwkJKnBvaW50
ID0gc2ZkX2VuYSA/IFBUUF9UU19QT0lOVF9TRkQgOiBQVFBfVFNfUE9JTlRfUE9TVF9TRkQ7DQo+
PiArDQo+PiArCXJldHVybiByZXQ7DQo+PiArfQ0KPj4gKw0KPj4gKy8qKg0KPj4gKyAqIGljZV9z
ZXRfdHNfcG9pbnQgLSBzZXQgdGhlIHR4IHRpbWVzdGFtcCBsYXRjaCBwb2ludA0KPj4gKyAqIEBp
bmZvOiB0aGUgZHJpdmVyJ3MgUFRQIGluZm8gc3RydWN0dXJlDQo+PiArICogQHBvaW50OiByZXF1
ZXN0ZWQgdHggdGltZXN0YW1wIGxhdGNoIHBvaW50DQo+PiArICovDQo+PiArc3RhdGljIGludA0K
Pj4gK2ljZV9zZXRfdHNfcG9pbnQoc3RydWN0IHB0cF9jbG9ja19pbmZvICppbmZvLCBlbnVtIHB0
cF90c19wb2ludCBwb2ludCkNCj4+ICt7DQo+PiArCWJvb2wgc2ZkX2VuYSA9IHBvaW50ID09IFBU
UF9UU19QT0lOVF9TRkQgPyB0cnVlIDogZmFsc2U7DQo+PiArCXN0cnVjdCBpY2VfcGYgKnBmID0g
cHRwX2luZm9fdG9fcGYoaW5mbyk7DQo+PiArCXN0cnVjdCBpY2VfaHcgKmh3ID0gJnBmLT5odzsN
Cj4+ICsJaW50IHJldDsNCj4+ICsNCj4+ICsJaWNlX3B0cF9sb2NrKGh3KTsNCj4+ICsJcmV0ID0g
aWNlX3B0cF9od190c19wb2ludF9zZXQoaHcsIHNmZF9lbmEpOw0KPj4gKwlpY2VfcHRwX3VubG9j
ayhodyk7DQo+PiArDQo+PiArCXJldHVybiByZXQ7DQo+PiArfQ0KPj4gKw0KPj4gICAvKioNCj4+
ICAgICogaWNlX3B0cF9zZXRfZnVuY3NfZTgyeCAtIFNldCBzcGVjaWFsaXplZCBmdW5jdGlvbnMg
Zm9yIEU4Mlggc3VwcG9ydA0KPj4gICAgKiBAcGY6IEJvYXJkIHByaXZhdGUgc3RydWN0dXJlDQo+
PiBAQCAtMjUyOSw2ICsyNTczLDggQEAgc3RhdGljIHZvaWQgaWNlX3B0cF9zZXRfZnVuY3NfZTgy
eChzdHJ1Y3QgaWNlX3BmDQo+PiAqcGYpDQo+PiAgIAlpZiAoaWNlX2lzX2U4MjVjKCZwZi0+aHcp
KSB7DQo+PiAgIAkJcGYtPnB0cC5pY2VfcGluX2Rlc2MgPSBpY2VfcGluX2Rlc2NfZTgyNWM7DQo+
PiAgIAkJcGYtPnB0cC5pbmZvLm5fcGlucyA9IElDRV9QSU5fREVTQ19BUlJfTEVOKGljZV9waW5f
ZGVzY19lODI1Yyk7DQo+PiArCQlwZi0+cHRwLmluZm8uc2V0X3RzX3BvaW50ID0gaWNlX3NldF90
c19wb2ludDsNCj4+ICsJCXBmLT5wdHAuaW5mby5nZXRfdHNfcG9pbnQgPSBpY2VfZ2V0X3RzX3Bv
aW50Ow0KPj4gICAJfSBlbHNlIHsNCj4+ICAgCQlwZi0+cHRwLmljZV9waW5fZGVzYyA9IGljZV9w
aW5fZGVzY19lODJ4Ow0KPj4gICAJCXBmLT5wdHAuaW5mby5uX3BpbnMgPSBJQ0VfUElOX0RFU0Nf
QVJSX0xFTihpY2VfcGluX2Rlc2NfZTgyeCk7DQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHBfaHcuYw0KPj4gYi9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlX3B0cF9ody5jDQo+PiBpbmRleCBkYTg4YzZjY2ZhZWIuLmQ4MTUyNWJj
OGExNiAxMDA2NDQNCj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vf
cHRwX2h3LmMNCj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRw
X2h3LmMNCj4+IEBAIC02MzAzLDMgKzYzMDMsNjAgQEAgaW50IGljZV9jZ3VfZ2V0X291dHB1dF9w
aW5fc3RhdGVfY2FwcyhzdHJ1Y3QNCj4+IGljZV9odyAqaHcsIHU4IHBpbl9pZCwNCj4+DQo+PiAg
IAlyZXR1cm4gMDsNCj4+ICAgfQ0KPj4gKw0KPj4gKy8qKg0KPj4gKyAqIGljZV9wdHBfaHdfdHNf
cG9pbnRfZ2V0IC0gY2hlY2sgaWYgdHggdGltZXN0YW1waW5nIGlzIGxhdGNoZWQgb24vcG9zdA0K
Pj4gU0ZEDQo+PiArICogQGh3OiBwb2ludGVyIHRvIHRoZSBIVyBzdHJ1Y3QNCj4+ICsgKiBAc2Zk
X2VuYTogb24gc3VjY2VzcyB0cnVlIGlmIHR4IHRpbWVzdGFtcGluZyBsYXRjaGVkIGF0IGJlZ2lu
bmluZyBvZg0KPj4gU0ZELA0KPj4gKyAqCWZhbHNlIGlmIHBvc3Qgc2ZkDQo+PiArICoNCj4+ICsg
KiBWZXJpZnkgaWYgSFcgdGltZXN0YW1waW5nIHBvaW50IGlzIGNvbmZpZ3VyZWQgdG8gbWVhc3Vy
ZSBhdCB0aGUNCj4+IGJlZ2lubmluZyBvcg0KPj4gKyAqIHBvc3Qgb2YgU0ZEIChTdGFydCBvZiBG
cmFtZSBEZWxpbWl0ZXIpDQo+PiArICoNCj4+ICsgKiBSZXR1cm46IDAgb24gc3VjY2VzcywgbmVn
YXRpdmUgb24gZXJyb3INCj4+ICsgKi8NCj4+ICtpbnQgaWNlX3B0cF9od190c19wb2ludF9nZXQo
c3RydWN0IGljZV9odyAqaHcsIGJvb2wgKnNmZF9lbmEpDQo+PiArew0KPj4gKwl1OCBwb3J0ID0g
aHctPnBvcnRfaW5mby0+bHBvcnQ7DQo+PiArCXUzMiB2YWw7DQo+PiArCWludCBlcnI7DQo+PiAr
DQo+PiArCWVyciA9IGljZV9yZWFkX21hY19yZWdfZXRoNTZnKGh3LCBwb3J0LCBQSFlfTUFDX1hJ
Rl9NT0RFLCAmdmFsKTsNCj4+ICsJaWYgKGVycikNCj4+ICsJCXJldHVybiBlcnI7DQo+PiArCWlm
ICh2YWwgfCBQSFlfTUFDX1hJRl9UU19TRkRfRU5BX00pDQo+PiArCQkqc2ZkX2VuYSA9IHRydWU7
DQo+PiArCWVsc2UNCj4+ICsJCSpzZmRfZW5hID0gZmFsc2U7DQo+DQo+VXNlIHRlcm5hcnkgb3Bl
cmF0b3I/DQo+DQoNCk9rLCB3aWxsIGRvLg0KDQo+PiArDQo+PiArCXJldHVybiBlcnI7DQo+DQo+
QXMgdGhlIGZ1bmN0aW9uIHJldHVybnMgYGludGAsIHVzZSBpbnRlZ2VycyAobWFjcm9zKSBpbnN0
ZWFkIG9mIGJvb2xlYW4/DQo+DQoNClN1cmUsIHdpbGwgZml4IGluIG5leHQgdmVyc2lvbi4NCg0K
Pj4gK30NCj4+ICsNCj4+ICsvKioNCj4+ICsgKiBpY2VfcHRwX2h3X3RzX3BvaW50X3NldCAtIGNv
bmZpZ3VyZSB0aW1lc3RhbXBpbmcgb24vcG9zdCBTRkQNCj4+ICsgKiBAaHc6IHBvaW50ZXIgdG8g
dGhlIEhXIHN0cnVjdA0KPj4gKyAqIEBzZmRfZW5hOiB0cnVlIHRvIGVuYWJsZSB0aW1lc3RhbXBp
bmcgYXQgYmVnaW5uaW5nIG9mIFNGRCwgZmFsc2UgcG9zdA0KPj4gc2ZkDQo+PiArICoNCj4+ICsg
KiBDb25maWd1cmUgdGltZXN0YW1waW5nIHRvIG1lYXN1cmUgYXQgdGhlIGJlZ2lubmluZy9wb3N0
IFNGRCAoU3RhcnQgb2YNCj4+IEZyYW1lDQo+PiArICogRGVsaW1pdGVyKQ0KPj4gKyAqDQo+PiAr
ICogUmV0dXJuOiAwIG9uIHN1Y2Nlc3MsIG5lZ2F0aXZlIG9uIGVycm9yDQo+PiArICovDQo+PiAr
aW50IGljZV9wdHBfaHdfdHNfcG9pbnRfc2V0KHN0cnVjdCBpY2VfaHcgKmh3LCBib29sIHNmZF9l
bmEpDQo+PiArew0KPj4gKwl1OCBwb3J0ID0gaHctPnBvcnRfaW5mby0+bHBvcnQ7DQo+PiArCWlu
dCBlcnIsIHZhbDsNCj4+ICsNCj4+ICsJZXJyID0gaWNlX3JlYWRfbWFjX3JlZ19ldGg1NmcoaHcs
IHBvcnQsIFBIWV9NQUNfWElGX01PREUsICZ2YWwpOw0KPj4gKwlpZiAoZXJyKQ0KPj4gKwkJcmV0
dXJuIGVycjsNCj4+ICsJaWYgKCh2YWwgfCBQSFlfTUFDX1hJRl9UU19TRkRfRU5BX00gJiYgc2Zk
X2VuYSkgfHwNCj4+ICsJICAgICghKHZhbCB8IFBIWV9NQUNfWElGX1RTX1NGRF9FTkFfTSkgJiYg
IXNmZF9lbmEpKQ0KPj4gKwkJcmV0dXJuIC1FSU5WQUw7DQo+PiArCWlmIChzZmRfZW5hKQ0KPj4g
KwkJdmFsIHw9IFBIWV9NQUNfWElGX1RTX1NGRF9FTkFfTTsNCj4+ICsJZWxzZQ0KPj4gKwkJdmFs
ICY9IH5QSFlfTUFDX1hJRl9UU19TRkRfRU5BX007DQo+PiArDQo+PiArCXJldHVybiBpY2Vfd3Jp
dGVfbWFjX3JlZ19ldGg1NmcoaHcsIHBvcnQsIFBIWV9NQUNfWElGX01PREUsIHZhbCk7DQo+PiAr
fQ0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRw
X2h3LmgNCj4+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wdHBfaHcuaA0K
Pj4gaW5kZXggNjU2ZGFmZjM0NDdlLi5jZWZlZGQwMTQ3OWEgMTAwNjQ0DQo+PiAtLS0gYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0cF9ody5oDQo+PiArKysgYi9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0cF9ody5oDQo+PiBAQCAtMzQ4LDYgKzM0OCw4
IEBAIHZvaWQgaWNlX3B0cF9pbml0X2h3KHN0cnVjdCBpY2VfaHcgKmh3KTsNCj4+ICAgaW50IGlj
ZV9nZXRfcGh5X3R4X3RzdGFtcF9yZWFkeShzdHJ1Y3QgaWNlX2h3ICpodywgdTggYmxvY2ssIHU2
NA0KPj4gKnRzdGFtcF9yZWFkeSk7DQo+PiAgIGludCBpY2VfcHRwX29uZV9wb3J0X2NtZChzdHJ1
Y3QgaWNlX2h3ICpodywgdTggY29uZmlndXJlZF9wb3J0LA0KPj4gICAJCQkgZW51bSBpY2VfcHRw
X3Rtcl9jbWQgY29uZmlndXJlZF9jbWQpOw0KPj4gK2ludCBpY2VfcHRwX2h3X3RzX3BvaW50X2dl
dChzdHJ1Y3QgaWNlX2h3ICpodywgYm9vbCAqc2ZkX2VuYSk7DQo+PiAraW50IGljZV9wdHBfaHdf
dHNfcG9pbnRfc2V0KHN0cnVjdCBpY2VfaHcgKmh3LCBib29sIHNmZF9lbmEpOw0KPj4NCj4+ICAg
LyogRTgyMiBmYW1pbHkgZnVuY3Rpb25zICovDQo+PiAgIGludCBpY2VfcmVhZF9xdWFkX3JlZ19l
ODJ4KHN0cnVjdCBpY2VfaHcgKmh3LCB1OCBxdWFkLCB1MTYgb2Zmc2V0LCB1MzINCj4+ICp2YWwp
Ow0KPg0KPg0KPktpbmQgcmVnYXJkcywNCj4NCj5QYXVsDQoNClRoYW5rIHlvdSENCkFya2FkaXVz
eg0K
