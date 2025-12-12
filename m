Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E058FCB9DC6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Dec 2025 22:12:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9392F40868;
	Fri, 12 Dec 2025 21:12:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vjwMUzTI4gy0; Fri, 12 Dec 2025 21:12:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EB7CE40819
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765573947;
	bh=+RvcwiLlY78Sp1u6bNKrAtCF55+YTLGF3Aqj2+PAs6c=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vhzwdktaeQURJAIf9wRbgAd/Yc0Y9QLZB9K6xroaVQ6YqUCLBa/HAsj/4rlM/NVTJ
	 JxT5EDSqNrR2YRXQdoQ0GZQMJu8oJdtHde4dI8hQvv39qbyKSirgnuQdvdpvcJCOp6
	 yvvIogByxQOiXJ9XAWdN4qzUH+cwKnNpME6+OoXUVvAadNFJlYB2HSVOrfYo1coDuc
	 Zf3B7bbuWtG4wE795xh6WxHep73w9l4WT1POKyODySb75TUZjpkfJAi2k99ORMcMW4
	 hYERgLpTa7pV8MGOZoFDgiXhcxJfa0QEMGi71ueBdUxfb00iueHfMEP0rvwKenJSOB
	 tVV2Dbop6LKaQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EB7CE40819;
	Fri, 12 Dec 2025 21:12:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 049B1E7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 21:12:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DEEAF4037A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 21:12:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fq65bb2w2CqA for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Dec 2025 21:12:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 18AE34018D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 18AE34018D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 18AE34018D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 21:12:23 +0000 (UTC)
X-CSE-ConnectionGUID: HTpeb+dkQiqQVoQvvijUrQ==
X-CSE-MsgGUID: 9K/w9yiXStaFO3+AgKMNZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="67333888"
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="67333888"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 13:12:23 -0800
X-CSE-ConnectionGUID: N2c8z/OgQ2u3pZ96qU7oHA==
X-CSE-MsgGUID: uVf6oejmQmyE7BFs0mwBug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="202270933"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 13:12:24 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 13:12:22 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 12 Dec 2025 13:12:22 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.60) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 13:12:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WKJk3+Zq9Gblym3Uu8MmYDQTPqa4IPobwUZU4Ht4/FM+wrDRuBh7aKIpi1h+fpT0e3Zhm6HxvwI/jriM9qb+XyKgnf0UiuQjo88ueIJUysC7oEDkFFEF0Kst9/I+Q7H0w25z5iiJdFrhvId9doTjIvGU65K8gpCVj85BjFJsmrYK9BJlBkLoMxxN+MFpjDLs+VlzMktn8M9liiLjssIDZ59U41XyIsxAuzVV0s6+15yKs5LSYRwiKrk7H9leMrt0diK5KclKZ2w1ummyzJX1jZBFMRicKc3QB4gOe+3fp6tf/500wl3XpeEklUJhBpfvtyW8FILudHFyXh0oSCFo6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+RvcwiLlY78Sp1u6bNKrAtCF55+YTLGF3Aqj2+PAs6c=;
 b=WYc12VAAZiewqT7McEmwmdHxsyP+iiKEjWIQliXzMyFEK32FlcH2kMAvdfWSX57sTrbwMEYtpNyFbdKauh9EE7UJlK4ib3w7JjGr0xGdIFQAxIEErYs0CTaCH21bnOydyX8cf+DDgoH6a64mgPVGnhbQCArdw5xT0bmTnM09+AXYtUkbTg9+c4ytTyufu+RmDqJxCN3c0HNmBcbTENF3peypGiLQLeOZBVNq3y5vekU+/IAZXlVtWcmLI5I7bWUr18c8PE4E3HVBvthz5GZBMWL4fEmUd2Nv4bolJy4FibADuhtIojSSbZSxivIaNF+2W06Ez9LCz2uM1oKvWcBM2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CH0PR11MB5219.namprd11.prod.outlook.com (2603:10b6:610:e2::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.10; Fri, 12 Dec
 2025 21:12:20 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9388.013; Fri, 12 Dec 2025
 21:12:20 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "gregory.herrero@oracle.com" <gregory.herrero@oracle.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Romanowski,
 Rafal" <rafal.romanowski@intel.com>
Thread-Topic: [PATCH v5 1/1] i40e: validate ring_len parameter against
 hardware-specific values
Thread-Index: AQHca6tOG31CzIFdxEGMrRHGbSBAarUegIhQ
Date: Fri, 12 Dec 2025 21:12:20 +0000
Message-ID: <IA3PR11MB8986814EDFB450380B97A506E5AEA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251212210643.1835176-1-gregory.herrero@oracle.com>
 <20251212210643.1835176-2-gregory.herrero@oracle.com>
In-Reply-To: <20251212210643.1835176-2-gregory.herrero@oracle.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CH0PR11MB5219:EE_
x-ms-office365-filtering-correlation-id: 1ab71d94-f66b-43f4-1542-08de39c32300
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700021|921020; 
x-microsoft-antispam-message-info: =?us-ascii?Q?8Dx3uW11H26abCX73tz0VtGhj+cWFlglWZOsVitU8J98qaAOHNv78M3XXpp1?=
 =?us-ascii?Q?TlCWnzjN8jOYRtXQIDXMm8MQnlgduwZ7qPwEuIkd6kDciNtkkcREegVCothD?=
 =?us-ascii?Q?p2GBrPen62sPxHGTJ32VJEUQR+9C7iF1HcolPF/EW5e/1sG998uhInHLYHjR?=
 =?us-ascii?Q?AFt1bsaEdjhFYE+zCa6GozLaB8BkjZjw5XkbBlCwLT5zYkE/9NN4G8KyApgo?=
 =?us-ascii?Q?gkWxAiwPeCmy4fhltHfMP9MAsInp4wwwKTF6mVtZnfe3nZ8QvQEVQneyF5Qr?=
 =?us-ascii?Q?doLNldTvZPpCpv2gjImaKpiKkCWBA1oL60Ybh80pTAdNlwgdwou5Pg9yoFd2?=
 =?us-ascii?Q?xgFcBL4widIUMBsPjpTLONz8RwupsBLXmTI7zegN+2stfSGkxqqwHQfjo8QG?=
 =?us-ascii?Q?I4nvPk89Rnfjw9oaDYypIuI5xuW+LrJKPXActPdtH9IG0zLDgmOcsnUwUDnR?=
 =?us-ascii?Q?V7lOYofDWubrB1+Gv1uP/xd6gs5GNTFi6RIXMKs+dCDw2PSzTyEAX7nk/caf?=
 =?us-ascii?Q?Re825zyfXpdS01mBwlWYag2WMvuCQe0C+1Iknm+NxPYLlbGJPUmQcBpZkjqx?=
 =?us-ascii?Q?YUesYq6Nx8wHCoNCFb2OpG21kNfOXPV2Bw4Kg4Rd+Doy12oovlp6H57alhdG?=
 =?us-ascii?Q?De9pW4CKB/2ZYMUfkwZl+77U0C0b/u2/+UZjicMN41XdOVl3wyV+RpQ+kSoX?=
 =?us-ascii?Q?0JjmlUcpJnV8b9m2JKjZGDO5ZmCzlOykJOU8DPPfpR+5t0h6ElNt0K3EkRJl?=
 =?us-ascii?Q?gHImNL2ogciMVYrXXGx0tPlKqxPr4HF2hKq5mbLMYJWe7yelTw7+Kj8InMnS?=
 =?us-ascii?Q?pH5MR7Y2Bs4TlLyGkKdjcOWmMvYv3rEbOanzlaG+X8LBgsuc9C+FwgBqaoco?=
 =?us-ascii?Q?N6kTq1vToIdv2RF/yZL5DXQgkadTKWcnTt0d2vrT9hi87vge96n4yfa//ta0?=
 =?us-ascii?Q?n0tymSIM0+rFnbo1J5t+3XP7C8deaWmdH9ZO3vmNufEcZ7gTHt5Lp8MEbiyy?=
 =?us-ascii?Q?dh91O8S12WoCPznhHGFuOBOhYZ35rJkmmDWp/nmPpAtRJqfSYbG2IjcSnbOz?=
 =?us-ascii?Q?T2aeHM7DpMJRWvIPux9c+UdLUQXvDCOxThHXItZkqksQij68At7pAjkpLYjP?=
 =?us-ascii?Q?8jZjPitDWON/nue7cJRJ34KHRQ/GB6fqpXMrkypaQJqSpV5N8kDHX0wWz5mN?=
 =?us-ascii?Q?FUQ7QtiuC5hxPzZIXqwwzyn7R1vqQtC02KGXSX3VCbIG+cM01MRzJ4ISjefb?=
 =?us-ascii?Q?IUpMC5bHMi2VGUdPsVI6TVnDlHG0m/jO4EjP/fQiuxvCYd5nU1WRCtbKodX7?=
 =?us-ascii?Q?10YSeibsH2QjimTlLmtIwKf6Ku8Aod9GxMdNCaMraSptt3Ng4VhPqTgr3llu?=
 =?us-ascii?Q?bS+VRJ+gChP8U9T9my+1LJWImg7SmYAYJKg9FSZuRGh3FXlAQr6ljl/IqZ2w?=
 =?us-ascii?Q?++T+GBJbjpOPc4N/Ezm3MgjWz+snfc9VVyBjdOMUJX7WMRKNq/dO3JUe2Jks?=
 =?us-ascii?Q?tb5ACEfRNCYwcS2YNkNr/ZWm4HZw869X3SW09AX2Woum7+HMuBmSg5Dcaw?=
 =?us-ascii?Q?=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700021)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?aoba+Ve5NdIA5SGz+0SF16YxqpyQupHpem55HoyfbEkpjCrxN+1gwWgaMkgm?=
 =?us-ascii?Q?gsrQ+jAnm1fMOYOX1O2eqrn4BvrVK+FZmmQzIu10ck4z2bPkjWQeqgNYvMWr?=
 =?us-ascii?Q?TbOKVWeWcjdt/QAHKdA7T+rDcAbZZ32fUhYksHic0QtBkQdyS23RkmZtONSS?=
 =?us-ascii?Q?ar0s2HZn53qJAbm8HrahYFBOTF/NNxnDuoCOU9IaWi11DeprOC0FBU6XYiFo?=
 =?us-ascii?Q?D8XreqFhd8YkQPu2cvHzzzb8Bb4GxUF6Tk7SjpSduSY4a1PE/7oVLR1r8Eir?=
 =?us-ascii?Q?4ZPnltJCt720ZFDhUOE7YwhNMckYMp90fvp+SkwrhFGn2xq61vMeXEKOSdBC?=
 =?us-ascii?Q?JQ9MPLXgPaQXlbIDTojX4FgFpYwInULt9tGZ2BPed79Ow8Y5BKXG5AwXfqkO?=
 =?us-ascii?Q?XsqR9bn3pKl7tbhBJa3IoBukTDK/i2lGUnemDOLe4V8Bf6LMM/JKvBYbgXZo?=
 =?us-ascii?Q?V7vYAJFRS3le7gUtKsV8HcNkhJPyb59poO/pH1l1Vj7lm9o04B5Vc70uByJ0?=
 =?us-ascii?Q?CPXeFFY04CFEKXNTNnhldL+V4MC1ivZlRoU+jLZHDlO2YuAmneL+MgCsyQ6b?=
 =?us-ascii?Q?1xyeIHpJGn7WknF7mnFVEqwsmSwkM+cF9laNrsVT+QYCHb1uEFR/D08NIph4?=
 =?us-ascii?Q?YhWjinfjyl0+asESkIJaZI4WW8GQZIqC+XVkFDZRswXKNU4bi1FUlnQOh/xh?=
 =?us-ascii?Q?oOxlrCD9ioRX/UQrHcHnY6kkNi4CpCI8+Sr3pPJetivOf58sRm0RVW6GH9KI?=
 =?us-ascii?Q?2LWzh8bw8cqoIlwcZr7mI+8VQ1GCqwjaRKMU0Ka4RATYbwFD9uavyFg+2dAd?=
 =?us-ascii?Q?yCDHowd/qsVfwSCb11Ncj+y6mhNHaBfaFhyXSpJBPf4cfrkpV9l/7nnPDRDB?=
 =?us-ascii?Q?GpXyqNrMMf0R40wsVp4XDt74JTUk4VXRR5bA/8xmOTMwsq6IDEFVKrutLL3B?=
 =?us-ascii?Q?/gu5LSPQPbPm2BpayDmNqDB7H/LpyhuyMpuDf7epBzrneQykohAurasvFosS?=
 =?us-ascii?Q?mL0z+zDd8Eg4Bi+ScfEW65itCAlhVM/BuGyaUYjR+LGJERIDn0PlSvkEuYGi?=
 =?us-ascii?Q?egSfqi8QDwQzhCp2gv6sIFbVhCxrbc+1vYE1o80oSsQAyETKNi2ji2hfyI9L?=
 =?us-ascii?Q?RVaP5N9j6K7YCI3F9ZyewPB1+PAeVY3VuhtM6jJsErcZYGiZs8ftIm2sdwEu?=
 =?us-ascii?Q?ZvPCftHh8VKJOrQzm2symwQtnNzdYMq5+4L0GjQBGGsX8tTY1MZmZAPE63R4?=
 =?us-ascii?Q?datxsp0hMmMHDO1azAD2WYg2BqzJhK9EFwC/oKiDCKcHHaFb+lGCtnCvupT6?=
 =?us-ascii?Q?7VUdJtldh7R+ckEYUpIMZvzxYelzBHPbvK45c0aRzipPwOZHkal2rnfmjA7s?=
 =?us-ascii?Q?xuMvALYynq9XKxC2KY8yn5WmtGc4SgG/8ZiAMux7/CkeT1lGhBtok8rM33MV?=
 =?us-ascii?Q?0zPzH5rBepK5UdqMdVljGNkbG/xI4rNV/hPKhQ2lfSAhYeoRJZ0cSSegoLth?=
 =?us-ascii?Q?rnFI3GnqlE3I4Y8JbxxTv4SG9biaWATn4AOX784oLZSzj6oZaA0de3bpkA9E?=
 =?us-ascii?Q?g12HQkTc4vcpRKl/OohLIHLyDMIpTMGfz8hwtfiwu6CeQocUHq7gTgiEXO7G?=
 =?us-ascii?Q?8Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ab71d94-f66b-43f4-1542-08de39c32300
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2025 21:12:20.1688 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PJmxB0Ch1GLnlyHenH8f8cKFSm9Zc9tkVB1tQs78hzNlm+daFJD2hyuY7cMtqehTrJlHlNB7h0P5uxBk3FFWh7N3ucttiiwrynAakfcZ6ZI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5219
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765573944; x=1797109944;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=D0JOVBtdxP0yASxKHevoGRPqo8+oxsxkWEfw9zEmyns=;
 b=LA519t8EtcS9BHLG4oQnEXn+opP6rKXx2OKonD9V5kSDLdgPv7hvl6in
 kLRhEoUTudwrRS1kUa5URcwAJpLU4ZounQxgE3hpb+fL6UmzPHDyzDFsH
 Quh0effdFCva6RuMhH0OGQZD1g00zOBaUERn8R/2VHdUcPAbJABTcuRSj
 m56Vx3pU7LIfwY5QWwFH1Taba9AsemyekCSWX4lmpVoHBI8GbxVzVaKKo
 vwPQfVBHvi2je4w5G/UnMNdzSCcYlHH7ZSAeqhPnkIhBvjEKldyTa2euI
 qAMm8Km6wn+IJMyHEY866+haee6Kfht3HjDnjJkFEWxrebKzD4yDPNY4Y
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LA519t8E
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v5 1/1] i40e: validate ring_len
 parameter against hardware-specific values
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



> -----Original Message-----
> From: gregory.herrero@oracle.com <gregory.herrero@oracle.com>
> Sent: Friday, December 12, 2025 10:07 PM
> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Nguyen,
> Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
> davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> pabeni@redhat.com
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org; Gregory Herrero <gregory.herrero@oracle.com>;
> Romanowski, Rafal <rafal.romanowski@intel.com>
> Subject: [PATCH v5 1/1] i40e: validate ring_len parameter against
> hardware-specific values
>=20
> From: Gregory Herrero <gregory.herrero@oracle.com>
>=20
> The maximum number of descriptors supported by the hardware is
> hardware-dependent and can be retrieved using
> i40e_get_max_num_descriptors(). Move this function to a shared header
> and use it when checking for valid ring_len parameter rather than
> using
> hardcoded value.
>=20
> By fixing an over-acceptance issue, behavior change could be seen
> where
> ring_len could now be rejected while configuring rx and tx queues if
> its
> size is larger than the hardware-dependent maximum number of
> descriptors.
>=20
> Fixes: 55d225670def ("i40e: add validation for ring_len param")
> Signed-off-by: Gregory Herrero <gregory.herrero@oracle.com>
> Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e.h             | 11 +++++++++++
>  drivers/net/ethernet/intel/i40e/i40e_ethtool.c     | 12 ------------
>  drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c |  4 ++--
>  3 files changed, 13 insertions(+), 14 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h
> b/drivers/net/ethernet/intel/i40e/i40e.h
> index d2d03db2acec..dcb50c2e1aa2 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> @@ -1422,4 +1422,15 @@ static inline struct i40e_veb
> *i40e_pf_get_main_veb(struct i40e_pf *pf)
>  	return (pf->lan_veb !=3D I40E_NO_VEB) ? pf->veb[pf->lan_veb] :
> NULL;
>  }
>=20
> +static inline u32 i40e_get_max_num_descriptors(const struct i40e_pf
> *pf)
> +{
> +	const struct i40e_hw *hw =3D &pf->hw;
> +
> +	switch (hw->mac.type) {
> +	case I40E_MAC_XL710:
> +		return I40E_MAX_NUM_DESCRIPTORS_XL710;
> +	default:
> +		return I40E_MAX_NUM_DESCRIPTORS;
> +	}
> +}
>  #endif /* _I40E_H_ */
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> index f2c2646ea298..6a47ea0927e9 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> @@ -2013,18 +2013,6 @@ static void i40e_get_drvinfo(struct net_device
> *netdev,
>  		drvinfo->n_priv_flags +=3D I40E_GL_PRIV_FLAGS_STR_LEN;
>  }
>=20
> -static u32 i40e_get_max_num_descriptors(struct i40e_pf *pf)
> -{
> -	struct i40e_hw *hw =3D &pf->hw;
> -
> -	switch (hw->mac.type) {
> -	case I40E_MAC_XL710:
> -		return I40E_MAX_NUM_DESCRIPTORS_XL710;
> -	default:
> -		return I40E_MAX_NUM_DESCRIPTORS;
> -	}
> -}
> -
>  static void i40e_get_ringparam(struct net_device *netdev,
>  			       struct ethtool_ringparam *ring,
>  			       struct kernel_ethtool_ringparam
> *kernel_ring,
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index 8b30a3accd31..1fa877b52f61 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -656,7 +656,7 @@ static int i40e_config_vsi_tx_queue(struct i40e_vf
> *vf, u16 vsi_id,
>=20
>  	/* ring_len has to be multiple of 8 */
>  	if (!IS_ALIGNED(info->ring_len, 8) ||
> -	    info->ring_len > I40E_MAX_NUM_DESCRIPTORS_XL710) {
> +	    info->ring_len > i40e_get_max_num_descriptors(pf)) {
>  		ret =3D -EINVAL;
>  		goto error_context;
>  	}
> @@ -726,7 +726,7 @@ static int i40e_config_vsi_rx_queue(struct i40e_vf
> *vf, u16 vsi_id,
>=20
>  	/* ring_len has to be multiple of 32 */
>  	if (!IS_ALIGNED(info->ring_len, 32) ||
> -	    info->ring_len > I40E_MAX_NUM_DESCRIPTORS_XL710) {
> +	    info->ring_len > i40e_get_max_num_descriptors(pf)) {
>  		ret =3D -EINVAL;
>  		goto error_param;
>  	}
> --
> 2.51.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

