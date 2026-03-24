Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MIveC19JwmnvbAQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 09:20:47 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 632943047E8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 09:20:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E894481E78;
	Tue, 24 Mar 2026 08:20:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t4nWM5xRv7XT; Tue, 24 Mar 2026 08:20:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2EAB081E60
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774340444;
	bh=EBAYccLEVrd7I7RUraAfOM0wDLeYEhvsP/NkQ+eUY4I=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=p5exW55CHbCb0v6EYcfNDtfJGlPX+LM9B83asj1+rB10odrI4iDpE+FIE+rf7fu51
	 mvDahlqMul5nWQTYgqdiu1ziSepjV2PMY6/xgC3JeMA7r1Y+Ne/n6I0qtodDFI16mZ
	 ULyIldoBYBO+qcmMffg0NtRE6mCrFFWdY4QXN9ALhGhvr/noGW4EmQDvBiwJx9Ri6n
	 ecMpOVb+RLN7aC6CUUAMYTvIFZ7VQX3oLLkFgUL1b+LydQ1GDK7HWVRlmardXolMor
	 S4hgkqhlZP347/v2pSRLLnXpm/Nd/TE8dd6dREclI52gHhIGu0q8LHIvegm6cpq2xM
	 H5irMcC/zdpHA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2EAB081E60;
	Tue, 24 Mar 2026 08:20:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5DED6F4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 08:20:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4283381E45
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 08:20:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3CYJARzIumKB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Mar 2026 08:20:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4F9D481E3E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4F9D481E3E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4F9D481E3E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 08:20:42 +0000 (UTC)
X-CSE-ConnectionGUID: l10KoHB7TRa+lePhEdkWzg==
X-CSE-MsgGUID: Vqnbt5IFR/yBZi0AomK5tg==
X-IronPort-AV: E=McAfee;i="6800,10657,11738"; a="75230495"
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="75230495"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 01:20:41 -0700
X-CSE-ConnectionGUID: a1T7mH6eQuOo3onrMbbZpw==
X-CSE-MsgGUID: 6VrdFc88SmG+ovt+pfkspg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="219855858"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 01:20:38 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 24 Mar 2026 01:20:38 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 24 Mar 2026 01:20:38 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.18) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 24 Mar 2026 01:20:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iyjSFb7BVCfzQ4LWE+7B0GVHvgif3OOvv6BElPUMTcwVjSuVqWL7s2N63XT8AHkSqrpAbBsu2l5k7WyednxJiE6ydvvCFalB2Wjp1q4BBdxWPJFkzckRh9XtceTkSnn5io2vZ6DbCP4wlwFWD/JD6txMe7Q9E7mAF0M0wUjpfNXGfaGhP1wAI646iu/dlS0GvefP44evhyX9fMoKWieJsyQwc3PDvmGzHhvy7UACbaXYTiX28rG3q/Kwco99616mpmkm4oAEIcoqIHcbQTYUPf8O189Rtg6luXQKNfjCfNd3tLoVpl67sXXTx56yGjvcMMdG5+1GcP1b42VqzeDrdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EBAYccLEVrd7I7RUraAfOM0wDLeYEhvsP/NkQ+eUY4I=;
 b=ANmyDJXBNIJGtDNMrXFl7/Yy+BJhpHyK1UcONAa9Ivn2oBU2lZgflfWP0gJfwa16OY2tNWWceSiSfPJD839TonMKPuYCU27GquS4sAf1x35saG9StQ4eIXdE9nB8HrjJ6oCma5rvoVN8ZncEjki6MfeLTbF3bKHLTXYik7Zd26nc9lSChZmT3Qvj+tnD8VOPsjgcvh8EZ6l9RqF+zoQEVlYk/waHhZZl60yM9DriO2d8ckzVAe8Ug1BFUH2k9HHcAWHQhKeKxEnK4B6lZ5xAwZ2KWwNGjbzan63ijL0weaYI5g1F7xWFKuUBaDQ8g/ZXyyVkFOB+RcaPHePC8uYwMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH7PR11MB6427.namprd11.prod.outlook.com (2603:10b6:510:1f5::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Tue, 24 Mar
 2026 08:20:28 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9745.012; Tue, 24 Mar 2026
 08:20:28 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "Vecera, Ivan" <ivecera@redhat.com>, "vadim.fedorenko@linux.dev"
 <vadim.fedorenko@linux.dev>, "kuba@kernel.org" <kuba@kernel.org>,
 "jiri@resnulli.us" <jiri@resnulli.us>, "edumazet@google.com"
 <edumazet@google.com>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "donald.hunter@gmail.com" <donald.hunter@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "horms@kernel.org" <horms@kernel.org>,
 "Prathosh.Satish@microchip.com" <Prathosh.Satish@microchip.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "davem@davemloft.net" <davem@davemloft.net>
Thread-Topic: [Intel-wired-lan] [PATCH v2 net-next 8/8] ice: add TX reference
 clock (tx_clk) control for E825 devices
Thread-Index: AQHcuYJzKDo31ANKOUCU3d5CAy9nLbW9Wm4g
Date: Tue, 24 Mar 2026 08:20:28 +0000
Message-ID: <IA3PR11MB89867D2324033C835337A179E548A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260321222627.1193603-1-grzegorz.nitka@intel.com>
 <20260321222627.1193603-9-grzegorz.nitka@intel.com>
In-Reply-To: <20260321222627.1193603-9-grzegorz.nitka@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH7PR11MB6427:EE_
x-ms-office365-filtering-correlation-id: e091db39-b67d-448a-478c-08de897e3514
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|38070700021|7053199007|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: ytWSd5NOCqCNss19HtZGyMz/rd8lAfQuLfjLKY5XnF4rJr545nBluQTl6a5oq5OmOuxJKcf613cNBDLecmzMfutI9Kfem6nM8VsvTXp1WXCkZIfrVMYQ2J957z82dGG0SCYXBoxVXw0JZKCVLsbs3fqR31Jv/FZd5fr7szWbZ5e8Ec1t/Uoqf1HY32jrT+KzuAU2DK8zV6EH+4iVRGLUKrGe6ON+uDsiZlvlbk0rR3KBM+6zpLgiVKoGETxwOgZctqhliazzVv7BqELbwU7wasFsPedaqAWw8oG4/gZhNrtUWmFxkxdS8Ab2R0OYSXxQDGwSqWMZhiYSVvuimvW/1XK6OUGaLSDFRvNsUEj/8haB3XPpSz4+E9lTN+iuFvlv7FXyKpZFNlJVOe1P3f9bKOkoILfSBJ5a6G4j7ioFa/Z4rqD0q5ZpwYLsgEreWzetUcbcfSFKCsK8Nv4+Ofwnu5lgtFgEwB4p0CuK1J0MnC+Ui7UyFSDoU+pq8kp6OlloiyesHtav9MhggJq46hsfJbgI359F+xhNUXQfzZoZqMDkr632QofAf0HSjnXg7dsKg13yNFlGZkKamF6Yev+4K3Szurj+Z2bejL+OgKIjhTrlkaFezCGJzR4j+g2YUUie1fkgI1uBtQQ18B6DPwUALVnI78+oZa6YHOd7zwmkBvB3nyfPHlBz04G469LlUrb5iKfKOBTXk63x9YnCwZCk1hYfPe3FqFw0yRWGMPM7Yt5Bztp+py64nC0c8ItGyGvtyHW/ReZTJJ4SWqarKCDsbbMlsxvMQegDrytAYa5GdZ4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(38070700021)(7053199007)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cmVUWTg4eHRWUktTeDVXZzRYTE9kemh3TmFRRVB3SzgwVFRmTDdDY3c4ZmNs?=
 =?utf-8?B?VzExS0FqM1ROS21OZGova3BRenhhVFBMNkZVZmdKVGsvRnpZLzFuS1dQaG8v?=
 =?utf-8?B?TnBrSE1sUlNpTzZXT2ZsbVdoTjQrSndlaXZMVEZkc0pkWFJOV29sNHVwWThr?=
 =?utf-8?B?YWhJT2t4K25yeDJRRzkrVHB5czltd2UzMnJ0MHo1dEdhTjlpMm4zYnlVa2Nz?=
 =?utf-8?B?ektvTkQwa2VKb2E2NlNleGFPa0g0eThGUnVRcWlZN2t6NWVMYzRKYkhLK2VY?=
 =?utf-8?B?RkJLT0pkMm9zelFkZmpMcDh4SzJYV2pUN2xnNkpEZExnRzVwZkxmQjBLRUVV?=
 =?utf-8?B?VDJXbUEyREFackM5TVd3emNuWnYxYVlic2VXdUg5NUJHb1lFNGZuamlZQjB0?=
 =?utf-8?B?YThLaDVodlowSWlPTnU3cC8rVnVTQ2lZeDhIY1RMVkxWd2FNNWZqY1RucHZT?=
 =?utf-8?B?c0xDeTdsdWRZWktUZnA5bytkeHViUmNtTnI3SnZhRE9oVmlWcFZOUWQ4aXFy?=
 =?utf-8?B?TmlCdUVWeHppMmx3WTd0K1hyNVA4eE85bXo3cUJ6bWlnSmJna3AwRzA2bGRw?=
 =?utf-8?B?d3U5SnVVUkdScWFjYWU3Q01DRnJLUlROMkZDTGxXYXZwdEpBTGpNNVZ0N1hC?=
 =?utf-8?B?VmN3VVN1WDlTWE5tMU81UEo0U3gyQStsN0FmbVJpb2d5RUpIVWYrM1RmaW1K?=
 =?utf-8?B?OVBlcnhuU0R2Z0tFSTVIVkhMaEFDN21vZmJHQmk4N3dtcFRZN295NFJkYTZP?=
 =?utf-8?B?QXFVTVc5VGJWWlhaMks2cXRITklxMXVuMFJhdldVeExwa2N5UWw4WUl1WUxZ?=
 =?utf-8?B?MWVIbkFZQkc3cC9LdUFzMk1sNkcxM3RobmpqVlB3dnZjWHhlbnk2Y2ZQcENo?=
 =?utf-8?B?UU1jTzRBUlhiMlJEamFSL1FndHlkVU1ZL0tmOHRzTnE1dWd6QVg2ZkE3RnFw?=
 =?utf-8?B?OU9id1RsZ2RmNkpEOEFnRC9wVGc0WGZLZlBuaGNtL2tqQ0dPSlBsNUplbjVp?=
 =?utf-8?B?bk84RXI3TXZ0NXE2cGtCa00vd0ZhZG0xOGdMeVc4dC9CUXJSdlE3VDBhS29q?=
 =?utf-8?B?UU90dkQ5a0FGNHFUaUJVWGpOV2xZVEFkSUxHc2R1UCtjMVU5MU5XUFVxYk5k?=
 =?utf-8?B?bHZKRUhnVGxCd3k3SE1sS0xBOXdxZmtsZ0Y3cmh1aGhqR1lEODlINVljWjd3?=
 =?utf-8?B?dmx6MnNON3ZCYkVZeUdsV1pxQXprSmxQQXlNUit6amxTaE0zbDk4SXNnK1FO?=
 =?utf-8?B?QzlXQ0RXM0xhMEpBU01ZSTlsb1NxM25JM3pGSWdtZTlQc050OVI2S2VnZUk3?=
 =?utf-8?B?OERwSjhvNkp0aGxRN3MyOWt1ZEhWN1RnSGU2MDI2Ylo3bzNvdlNMYUVSODN4?=
 =?utf-8?B?eWxRZ1krSmxHUFlrUS9kbk9RK24ybjJTakVYdFI5aHBZSEdZbGZzaC8zT3pT?=
 =?utf-8?B?K1ZZUmdkck5RbjlFUWExQjYyVWJUK0psNUdobHlOVVR0bDEzcndWcjV4UmZS?=
 =?utf-8?B?K1ZGbHhBeGJRU0RhVEFhMlJwZUFDVkJtWXcwRlRsY2tWUS9EeFE1Lzk5bi9p?=
 =?utf-8?B?SFdBd3pRb2JjTjF5SGFRWWx1blZqZTlRVDNxRFVLdUhUUDQvZlluNkw3QVpU?=
 =?utf-8?B?VVVsR0FsdTZMVVlvQUhJU2pqYkR1dThiUG54S2tkR2NYRFp1c0tLVlhNUnZx?=
 =?utf-8?B?UmJRRXZERlRhRm03R25iblJRbjVrZk93dUQ1SHI1cGlad3ZxaFMydmJPdVBX?=
 =?utf-8?B?VHRCbUtUMTJzVUZOaU5jWVlTMlkyUGhHRTk1SmpYb2M5eVR5eUtlcEVDYXc0?=
 =?utf-8?B?U3lUTTVtM0U5MXh1RjI4S3RhTzF0NmliQ1B2aW5oNVI2c0lvSGdHQ2FlSGFq?=
 =?utf-8?B?b1gxK2hOMmlUVEFjZTQxSGFmQXlLY1Y2K0xHU01ZamZ1WlFVWXhSQ2I1cVVJ?=
 =?utf-8?B?RHFnTzVCTlRuTDlqbGRTcDhUaHFucnc1cW5VTVc1SmtwNlJsRE9mVHdJLzFU?=
 =?utf-8?B?bG5lT3h0cjZpMHN0c3NwdWw3c1p2S2Eya3Y3Q1ZVSmRiV05sTGNQT1VmTmxr?=
 =?utf-8?B?WGxlS1EzdDhnUHpHZXhhUmNqZ1JKelJnZnlkbklDR3NRVXB2SjQyTHM0ekJG?=
 =?utf-8?B?d0xQejBOSFZhSzRnQTdzSlhobU1iY0dGZ2pKSElWc1dKOTQ3cS9lTEc1MlNi?=
 =?utf-8?B?amoxbWJQYnJjUmxmMzZ5WnBGeXB0b0hFbDE0dHZYcjFXTDdhVXd1anJwVzN5?=
 =?utf-8?B?SkNHQnhTRzZDNnliT1FMNldxSzJ4VE1lSkVPU0JSY2F3TmlKNXU2M05QblVF?=
 =?utf-8?B?NU5GU1N5OEgvOVI2a25iRnBOZDMrK2hzeDFCM3NpQjRwakxXL1dUb2FsT0tr?=
 =?utf-8?Q?R1tKEQQJlINKFwaA=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: vWKIN3+536+G0mhUKBPzR8GjehP2VDZItILSQUMk0VFcgBUZzQBMu87je8we+XA1DQjaHyomIqgPxOS7o+G8wlevU3oM7j1706D+Jg9hdWOk1YlkWB9O7ChpHbU7+tIyUlH1jPJtCmqmxiLWCv2sPrGbEJ8mjvdixjeQE1r7T3Wc1BE4nIvF9fVIxgbzoyF1VQqKXjpSrVyN4UCWeZdqWyGihV/VdNnArehKGQBqS0Or7oJKXr2YRBgjjlJgLNJjQ1CgBUFKg53Ak6efsGzU+O1Ca5dp8vFIeFLgpamiAzdBqwjNkkxAHlWFSZDaITADrgr0op0RIhwp3Q29u3gSgQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e091db39-b67d-448a-478c-08de897e3514
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2026 08:20:28.2276 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FQD2BUQQGemJgZNxvCAzjWLeN0CF6Hh4njR5l0rYkYMQYleC+Mj9Ccw4teapJvfOo3SSVoTKPmMsxa9t1VSEKo8/R1l4f4lv2Maqu2ZTQC8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6427
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774340443; x=1805876443;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EBAYccLEVrd7I7RUraAfOM0wDLeYEhvsP/NkQ+eUY4I=;
 b=ILCGcAvlftnJhsgNElM+pYuknieGWvy/KUOA/iH+PGs7+xIy9HzeS7KB
 xSYZ4Zfy9FB3uKYu2Lo5d/5pVKAHemiKHVjxBnTF8VpoSxoNrXCmzv9Tg
 bfwBGb0/WoMPB9XrBqUJeX3eAtJdQlSiDJlwTBEJJMi1mNRqfF6STqNsC
 A8ZEqlk986XhgDeEtK1A7kDBIOYtp67+QHxU7EXvDhoPWTS69UW75VJ/g
 fRX0UuuQbJBqm2KsFwFk1D/YcN8k+JrHfaG+df8qZBqAvHFcsxS88aN4f
 rb7DfkEGNOExS0i8kHKgarYT0A+rY4b8la804ID3/XgQ8Jpt5vShQ+AS/
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ILCGcAvl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next 8/8] ice: add TX reference
 clock (tx_clk) control for E825 devices
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
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:grzegorz.nitka@intel.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,google.com,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: 632943047E8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgR3J6
ZWdvcnogTml0a2ENCj4gU2VudDogU2F0dXJkYXksIE1hcmNoIDIxLCAyMDI2IDExOjI2IFBNDQo+
IFRvOiBuZXRkZXZAdmdlci5rZXJuZWwub3JnDQo+IENjOiBWZWNlcmEsIEl2YW4gPGl2ZWNlcmFA
cmVkaGF0LmNvbT47IHZhZGltLmZlZG9yZW5rb0BsaW51eC5kZXY7DQo+IGt1YmFAa2VybmVsLm9y
ZzsgamlyaUByZXNudWxsaS51czsgZWR1bWF6ZXRAZ29vZ2xlLmNvbTsgS2l0c3plbCwNCj4gUHJ6
ZW15c2xhdyA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT47IHJpY2hhcmRjb2NocmFuQGdt
YWlsLmNvbTsNCj4gZG9uYWxkLmh1bnRlckBnbWFpbC5jb207IGxpbnV4LWtlcm5lbEB2Z2VyLmtl
cm5lbC5vcmc7IEt1YmFsZXdza2ksDQo+IEFya2FkaXVzeiA8YXJrYWRpdXN6Lmt1YmFsZXdza2lA
aW50ZWwuY29tPjsgYW5kcmV3K25ldGRldkBsdW5uLmNoOw0KPiBpbnRlbC13aXJlZC1sYW5AbGlz
dHMub3N1b3NsLm9yZzsgaG9ybXNAa2VybmVsLm9yZzsNCj4gUHJhdGhvc2guU2F0aXNoQG1pY3Jv
Y2hpcC5jb207IE5ndXllbiwgQW50aG9ueSBMDQo+IDxhbnRob255Lmwubmd1eWVuQGludGVsLmNv
bT47IHBhYmVuaUByZWRoYXQuY29tOyBkYXZlbUBkYXZlbWxvZnQubmV0DQo+IFN1YmplY3Q6IFtJ
bnRlbC13aXJlZC1sYW5dIFtQQVRDSCB2MiBuZXQtbmV4dCA4LzhdIGljZTogYWRkIFRYDQo+IHJl
ZmVyZW5jZSBjbG9jayAodHhfY2xrKSBjb250cm9sIGZvciBFODI1IGRldmljZXMNCj4gDQo+IEFk
ZCBmdWxsIHN1cHBvcnQgZm9yIHNlbGVjdGluZyBhbmQgY29udHJvbGxpbmcgdGhlIFRYIFNFUkRF
UyByZWZlcmVuY2UNCj4gY2xvY2sgb24gRTgyNUMgaGFyZHdhcmUuIEU4MjVDIGRldmljZWRlIHN1
cHBvcnRzIHNlbGVjdGluZyBhbW9uZw0KPiBtdWx0aXBsZSBTRVJERVMgdHJhbnNtaXQgcmVmZXJl
bmNlIGNsb2NrIHNvdXJjZXMgKEVORVQsIFN5bmNFLCBFUkVGMCksDQo+IGJ1dCBpbXBvc2VzIHNl
dmVyYWwgcm91dGluZyBjb25zdHJhaW50czogb24gc29tZSBwYXRocyBhIHJlZmVyZW5jZQ0KPiBt
dXN0IGJlIGVuYWJsZWQgb24gYm90aCBQSFkgY29tcGxleGVzLCBhbmQgcG9ydHMgc2hhcmluZyBh
IFBIWSBtdXN0DQo+IGNvb3JkaW5hdGUgdXNhZ2Ugc28gdGhhdCBhIHJlZmVyZW5jZSBpcyBub3Qg
ZGlzYWJsZWQgd2hpbGUgc3RpbGwgaW4NCj4gYWN0aXZlIHVzZS4gVW50aWwgbm93IHRoZSBkcml2
ZXIgZGlkIG5vdCBleHBvc2UgdGhpcyBkb21haW4gdGhyb3VnaA0KPiB0aGUgRFBMTCBBUEksIG5v
ciBkaWQgaXQgcHJvdmlkZSBhIGNvaGVyZW50IGNvbnRyb2wgbGF5ZXIgZm9yDQo+IGVuYWJsaW5n
LCBzd2l0Y2hpbmcsIG9yIHRyYWNraW5nIFRYIHJlZmVyZW5jZSBjbG9ja3MuDQo+IA0KPiBUaGlz
IHBhdGNoIGltcGxlbWVudHMgZnVsbCBUWCByZWZlcmVuY2UgY2xvY2sgbWFuYWdlbWVudCBmb3Ig
RTgyNQ0KPiBkZXZpY2VzLiBDb21wYXJlZCB0byBwcmV2aW91cyBpdGVyYXRpb25zLCB0aGUgbG9n
aWMgaXMgbm93IHNlcGFyYXRlZA0KPiBpbnRvIGEgZGVkaWNhdGVkIG1vZHVsZSAoaWNlX3R4Y2xr
LmMpIHdoaWNoIGVuY2Fwc3VsYXRlcyBhbGwgY2xvY2stDQo+IHNlbGVjdGlvbiBydWxlcywgY3Jv
c3PigJFQSFkgZGVwZW5kZW5jaWVzLCBhbmQgdGhlIGJvb2trZWVwaW5nIG5lZWRlZCB0bw0KPiBl
bnN1cmUgc2FmZSB0cmFuc2l0aW9ucy4gVGhpcyBhbGxvd3MgdGhlIERQTEwgbGF5ZXIgYW5kIHRo
ZSBQVFAgY29kZQ0KPiB0byByZW1haW4gZm9jdXNlZCBvbiB0aGVpciByZXNwZWN0aXZlIHJvbGVz
Lg0KPiANCj4gS2V5IGFkZGl0aW9uczoNCj4gDQo+ICAgKiBBIG5ldyB0eGNsayBjb250cm9sIG1v
ZHVsZSAoYGljZV90eGNsay5jYCkgaW1wbGVtZW50aW5nOg0KPiAgICAgICAtIHNvZnR3YXJlIHVz
YWdlIHRyYWNraW5nIGZvciBlYWNoIHJlZmVyZW5jZSBjbG9jayBwZXIgUEhZLA0KPiAgICAgICAt
IHBlZXLigJFQSFkgZW5hYmxlIHJ1bGVzIChTeW5jRSByZXF1aXJlZCBvbiBib3RoIFBIWXMgd2hl
biB1c2VkDQo+IG9uDQo+ICAgICAgICAgUEhZMCwgRVJFRjAgcmVxdWlyZWQgb24gYm90aCB3aGVu
IHVzZWQgb24gUEhZMSksDQo+ICAgICAgIC0gc2FmZSBkaXNhYmxpbmcgb2YgdW51c2VkIHJlZmVy
ZW5jZSBjbG9ja3MgYWZ0ZXIgc3dpdGNoaW5nLA0KPiAgICAgICAtIGEgc2luZ2xlLCBkcml2ZXLi
gJFpbnRlcm5hbCBlbnRyeSBwb2ludCBmb3IgY2xvY2sgY2hhbmdlcy4NCj4gDQo+ICAgKiBJbnRl
Z3JhdGlvbiB3aXRoIHRoZSBEUExMIHBpbiBvcHM6DQo+ICAgICAgIC0gcGlu4oCRc2V0IG5vdyBj
YWxscyBpbnRvIGBpY2VfdHhjbGtfc2V0X2NsaygpYCB0byByZXF1ZXN0IGENCj4gICAgICAgICBo
YXJkd2FyZSBzd2l0Y2gsDQo+ICAgICAgIC0gcGlu4oCRZ2V0IHJlcG9ydHMgdGhlIGN1cnJlbnQg
U0VSREVTIHJlZmVyZW5jZSBieSByZWFkaW5nIGJhY2sNCj4gdGhlDQo+ICAgICAgICAgYWN0aXZl
IHNlbGVjdG9yIChgaWNlX2dldF9zZXJkZXNfcmVmX3NlbF9lODI1YygpYCkuDQo+IA0KPiAgICog
V2lyaW5nIHRoZSByZXF1ZXN0ZWQgcmVmZXJlbmNlIGNsb2NrIGludG8gQXV0b+KAkU5lZ290aWF0
aW9uIHJlc3RhcnQNCj4gICAgIHRocm91Z2ggdGhlIGFscmVhZHnigJFleHRlbmRlZCBgaWNlX2Fx
X3NldF9saW5rX3Jlc3RhcnRfYW4oKWAuDQo+IA0KPiAgICogQWZ0ZXIgZWFjaCBsaW5rLXVwIHRo
ZSBkcml2ZXIgdmVyaWZpZXMgdGhlIGVmZmVjdGl2ZSBoYXJkd2FyZQ0KPiBzdGF0ZQ0KPiAgICAg
KGBpY2VfdHhjbGtfdmVyaWZ5KClgKSBhbmQgdXBkYXRlcyBpdHMgcGVy4oCRUEhZIHVzYWdlIGJp
dG1hcHMsDQo+ICAgICBjb3JyZWN0aW5nIHRoZSByZXF1ZXN0ZWQvYWN0aXZlIHN0YXRlIGlmIHRo
ZSBGVyBvciBBTiBmbG93IGFwcGxpZWQNCj4gYQ0KPiAgICAgZGlmZmVyZW50IHJlZmVyZW5jZS4N
Cj4gDQo+ICAgKiBQVFAgUEYgaW5pdGlhbGl6YXRpb24gbm93IHNlZWRzIHRoZSBFTkVUIHJlZmVy
ZW5jZSBjbG9jayBhcw0KPiBlbmFibGVkDQo+ICAgICBieSBkZWZhdWx0IGZvciBpdHMgcG9ydC4N
Cj4gDQo+IEFsbCByZWZlcmVuY2UgY2xvY2sgdHJhbnNpdGlvbnMgYXJlIHNlcmlhbGl6ZWQgdGhy
b3VnaCB0aGUgRFBMTCBsb2NrLA0KPiBhbmQgdXNhZ2UgaW5mb3JtYXRpb24gaXMgc2hhcmVkIGFj
cm9zcyBhbGwgUEZzIGJlbG9uZ2luZyB0byB0aGUgc2FtZQ0KPiBFODI1QyBjb250cm9sbGVyIFBG
LiBUaGlzIGVuc3VyZXMgdGhhdCBjb25jdXJyZW50IGNoYW5nZXMgYXJlDQo+IGNvb3JkaW5hdGVk
IGFuZCB0aGF0IHNoYXJlZCBQSFlzIG5ldmVyIHNlZSBhbiB1bmV4cGVjdGVkIGRpc2FibGUuDQo+
IA0KPiBXaXRoIHRoaXMgcGF0Y2gsIEU4MjUgZGV2aWNlcyBnYWluIGZ1bGwgdXNlcnNwYWNl4oCR
ZHJpdmVuIFRYQyByZWZlcmVuY2UNCj4gY2xvY2sgc2VsZWN0aW9uIHZpYSB0aGUgRFBMTCBzdWJz
eXN0ZW0sIGVuYWJsaW5nIGNvbXBsZXRlIFN5bmNFDQo+IHN1cHBvcnQsIHByZWNpc2UgbXVsdGni
gJFjbG9jayBzZXR1cHMsIGFuZCBwcmVkaWN0YWJsZSBjbG9jayByb3V0aW5nDQo+IGJlaGF2aW9y
Lg0KPiANCj4gUmV2aWV3ZWQtYnk6IEFya2FkaXVzeiBLdWJhbGV3c2tpIDxhcmthZGl1c3oua3Vi
YWxld3NraUBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEdyemVnb3J6IE5pdGthIDxncnpl
Z29yei5uaXRrYUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWNlL01ha2VmaWxlICAgICB8ICAgMiArLQ0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWNlL2ljZV9kcGxsLmMgICB8ICA1MyArKysrLQ0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2ljZV9wdHAuYyAgICB8ICAyMiArKw0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2ljZV9wdHAuaCAgICB8ICAgNyArDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvaWNlX3B0cF9ody5jIHwgIDM3ICsrKw0KPiBkcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvaWNlX3B0cF9ody5oIHwgIDI3ICsrKw0KPiBkcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvaWNlX3R4Y2xrLmMgIHwgMjM3ICsrKysrKysrKysrKysrKysrKysrDQo+IGRyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdHhjbGsuaCAgfCAgNDEgKysrKw0KPiAgOCBm
aWxlcyBjaGFuZ2VkLCA0MTQgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pICBjcmVhdGUg
bW9kZQ0KPiAxMDA2NDQgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV90eGNsay5j
DQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2lj
ZV90eGNsay5oDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWNlL01ha2VmaWxlDQo+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL01ha2VmaWxl
DQo+IGluZGV4IDM4ZGI0NzZhYjJlYy4uOTVmZDBjNDk4MDBmIDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvTWFrZWZpbGUNCj4gKysrIGIvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWNlL01ha2VmaWxlDQo+IEBAIC01NCw3ICs1NCw3IEBAIGljZS0kKENP
TkZJR19QQ0lfSU9WKSArPQlcDQo+ICAJaWNlX3ZmX21ieC5vCQlcDQo+ICAJaWNlX3ZmX3ZzaV92
bGFuX29wcy5vCVwNCj4gIAlpY2VfdmZfbGliLm8NCj4gLWljZS0kKENPTkZJR19QVFBfMTU4OF9D
TE9DSykgKz0gaWNlX3B0cC5vIGljZV9wdHBfaHcubyBpY2VfZHBsbC5vDQo+IGljZV90c3BsbC5v
IGljZV9jcGkubw0KPiAraWNlLSQoQ09ORklHX1BUUF8xNTg4X0NMT0NLKSArPSBpY2VfcHRwLm8g
aWNlX3B0cF9ody5vIGljZV9kcGxsLm8NCj4gK2ljZV90c3BsbC5vIGljZV9jcGkubyBpY2VfdHhj
bGsubw0KPiAgaWNlLSQoQ09ORklHX0RDQikgKz0gaWNlX2RjYi5vIGljZV9kY2JfbmwubyBpY2Vf
ZGNiX2xpYi5vDQo+ICBpY2UtJChDT05GSUdfUkZTX0FDQ0VMKSArPSBpY2VfYXJmcy5vDQo+ICBp
Y2UtJChDT05GSUdfWERQX1NPQ0tFVFMpICs9IGljZV94c2subw0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9kcGxsLmMNCj4gYi9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pY2UvaWNlX2RwbGwuYw0KPiBpbmRleCAzOGEwYmJiMzE2ZDguLjI4NjE0
NmM2ZDRkMiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2lj
ZV9kcGxsLmMNCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9kcGxs
LmMNCj4gQEAgLTQsNiArNCw3IEBADQo+ICAjaW5jbHVkZSAiaWNlLmgiDQo+ICAjaW5jbHVkZSAi
aWNlX2xpYi5oIg0KPiAgI2luY2x1ZGUgImljZV90cmFjZS5oIg0KDQouLi4NCg0KPiArLyoqDQo+
ICsgKiBpY2VfdHhjbGtfc2V0X2NsayAtIFNldCBUeCByZWZlcmVuY2UgY2xvY2sNCj4gKyAqIEBw
ZjogcG9pbnRlciB0byBwZiBzdHJ1Y3R1cmUNCj4gKyAqIEBjbGs6IG5ldyBUeCBjbG9jaw0KPiAr
ICoNCj4gKyAqIFJldHVybjogMCBvbiBzdWNjZXNzLCBuZWdhdGl2ZSB2YWx1ZSBvdGhlcndpc2Uu
DQo+ICsgKi8NCj4gK2ludCBpY2VfdHhjbGtfc2V0X2NsayhzdHJ1Y3QgaWNlX3BmICpwZiwgZW51
bSBpY2VfZTgyNWNfcmVmX2NsayBjbGspDQo+IHsNCj4gKwlzdHJ1Y3QgaWNlX3BmICpjdHJsX3Bm
ID0gaWNlX2dldF9jdHJsX3BmKHBmKTsNCj4gKwlzdHJ1Y3QgaWNlX3BvcnRfaW5mbyAqcG9ydF9p
bmZvOw0KPiArCXU4IHBvcnRfbnVtLCBwaHk7DQo+ICsJaW50IGVycjsNCj4gKw0KPiArCWlmIChw
Zi0+cHRwLnBvcnQudHhfY2xrID09IGNsaykNCj4gKwkJcmV0dXJuIDA7DQo+ICsNCj4gKwlwb3J0
X251bSA9IHBmLT5wdHAucG9ydC5wb3J0X251bTsNCj4gKwlwaHkgPSBwb3J0X251bSAvIHBmLT5o
dy5wdHAucG9ydHNfcGVyX3BoeTsNCj4gKwlwb3J0X2luZm8gPSBwZi0+aHcucG9ydF9pbmZvOw0K
PiArDQo+ICsJLyogQ2hlY2sgaWYgdGhlIFRYIGNsayBpcyBlbmFibGVkIGZvciB0aGlzIFBIWSwg
aWYgbm90IC0gZW5hYmxlDQo+IGl0ICovDQo+ICsJaWYgKCFpY2VfdHhjbGtfYW55X3BvcnRfdXNl
cyhjdHJsX3BmLCBwaHksIGNsaykpIHsNCj4gKwkJZXJyID0gaWNlX2NwaV9lbmFfZGlzX2Nsa19y
ZWYoJnBmLT5odywgcGh5LCBjbGssIHRydWUpOw0KPiArCQlpZiAoZXJyKSB7DQo+ICsJCQlkZXZf
ZXJyKGljZV9od190b19kZXYoJnBmLT5odyksICJGYWlsZWQgdG8gZW5hYmxlDQo+IHRoZSAldSBU
WCBjbG9jayBmb3IgdGhlICV1IFBIWVxuIiwNCj4gKwkJCQljbGssIHBoeSk7DQo+ICsJCQlyZXR1
cm4gZXJyOw0KPiArCQl9DQo+ICsJCWVyciA9IGljZV90eGNsa19lbmFibGVfcGVlcihwZiwgY2xr
KTsNCj4gKwkJaWYgKGVycikNCj4gKwkJCXJldHVybiBlcnI7DQo+ICsJfQ0KPiArDQo+ICsJcGYt
PnB0cC5wb3J0LnR4X2Nsa19yZXEgPSBjbGs7DQoicmVxdWVzdGVkIGNsb2NrIiBzdGF0ZSB2YXJp
YWJsZSBpcyBjb21taXR0ZWQgSEVSRSwgQkVGT1JFIHRoZSBoYXJkd2FyZSBjb21tYW5kIGJlbG93
Lg0KSWYgdGhlIEFRIGNvbW1hbmQgZmFpbHMsIHRoaXMgaXMgbmV2ZXIgcm9sbGVkIGJhY2suDQoN
Cj4gKw0KPiArCS8qIFdlIGFyZSByZWFkeSB0byBzd2l0Y2ggdG8gdGhlIG5ldyBUWCBjbGsuICov
DQo+ICsJZXJyID0gaWNlX2FxX3NldF9saW5rX3Jlc3RhcnRfYW4ocG9ydF9pbmZvLCB0cnVlLCBO
VUxMLA0KPiArCQkJCQkgSUNFX1JFRkNMS19VU0VSX1RPX0FRX0lEWChjbGspKTsNCj4gKwlpZiAo
ZXJyKQ0KPiArCQlkZXZfZXJyKGljZV9od190b19kZXYoJnBmLT5odyksICJGYWlsZWQgdG8gc3dp
dGNoIHRvICV1DQo+IFRYIGNsb2NrIGZvciB0aGUgJXUgUEhZXG4iLA0KPiArCQkJY2xrLCBwaHkp
Ow0KRnVuY3Rpb24gcmV0dXJucyBlcnJvciwgYnV0IGRhbWFnZSBzdGlsbCBwZXJzaXN0cy4NCg0K
PiArDQo+ICsJcmV0dXJuIGVycjsNCj4gK30NCg0KLi4uDQoNCj4gLS0NCj4gMi4zOS4zDQoNCg==
