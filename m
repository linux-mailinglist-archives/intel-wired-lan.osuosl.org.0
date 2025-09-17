Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 81EFAB7C972
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Sep 2025 14:06:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B80BE40D40;
	Wed, 17 Sep 2025 11:22:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s1_O6QjJ5S1P; Wed, 17 Sep 2025 11:22:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 19ED740D49
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758108121;
	bh=/ZPodyFPt2bm4z6fDAtRbu2K50EjieAZbrqlRuPXxjI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UlvzK0s79j3dZmzXYDVKJ1mo0jILiPmhLvi/4wjrk87TnW91r2gUnkaAquecSpK/l
	 fmoxD1ZbfCdSWoVJItnvJ0npV40LQrPJpzJA2fArRBPlVuyQCZtOI1bGY8tFALhGHa
	 EwsWZUXrU20TfF6meHGYEG7j0rZ4lY9cScjtbsnMTiZPD5VzIFLmyEqHxTkZYBpLpy
	 px1HIWcC/1FFP5BTT7q4qQo614eS1T8QlqayTn+3KQNjcqn5Hv0j8D+/4XWLc/jlix
	 QVxscM5tmyMcCwIuz29PmYXq35I9OHSrJh3D9r+Sc5Wk5/1LSzmbr/jb6LdwLpFbY9
	 D+URy0yjN3M7w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 19ED740D49;
	Wed, 17 Sep 2025 11:22:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id B8823AF1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Sep 2025 11:21:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9DFF260E6B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Sep 2025 11:21:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Xx_-Low-omdU for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Sep 2025 11:21:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D0AF860B5E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D0AF860B5E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D0AF860B5E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Sep 2025 11:21:58 +0000 (UTC)
X-CSE-ConnectionGUID: 0W7gTxieS12+TxZAWPky3w==
X-CSE-MsgGUID: B+lUek5NQK+wxY6O6lyE0w==
X-IronPort-AV: E=McAfee;i="6800,10657,11555"; a="60280347"
X-IronPort-AV: E=Sophos;i="6.18,271,1751266800"; d="scan'208";a="60280347"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2025 04:21:58 -0700
X-CSE-ConnectionGUID: Lck9XR6gR/ypRShHAX2zDg==
X-CSE-MsgGUID: M97d2aXNQhm9gk6GemPG/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,271,1751266800"; d="scan'208";a="179217263"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2025 04:21:58 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 17 Sep 2025 04:21:57 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 17 Sep 2025 04:21:57 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.49) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 17 Sep 2025 04:21:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IPQr5HAxgfRUU0JNGbeDp9Il70a7zIhoqLiRcJ2DW39frtVeN3mCPsrlVG0VTUztATE8SOuQXNyBzjI8/X3f6b0VCqqfu+NjdVgIR1V4mqInw7YMYbnRVkx7perkSjmpHkmC+MV3lmGoaUeWcjEkdJSbZBYXgmEC6a3okKpFns1krBoX2R3UqiCquw0oSmPwfbleROXpGA6OrrhCOR0dxipj/z2/cvd1LVZhvCj935nF9z+HTQpbn1hyd2vzzcZopHpZVe3+6P/YAIXvyj+yfSFNqbTfwGr3Rhg5Gd7qmQN50jIMjJ9Xb25kOAqXLLyKaDMslfUcjZ26+okw3a6Vfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/ZPodyFPt2bm4z6fDAtRbu2K50EjieAZbrqlRuPXxjI=;
 b=dG9NKh80dz0MJvAJALN/dYIKo/EZ+r4BMkmhcSEYuZgFZtyvA4LitFfuI706WospeVBhxlJIlgdWD+Knh3ur4tG9XcdMQiPq50/2XF3V7PHJatLx//4GpU6ap4Lmem/3AC0o5i+deA9uq2/ZLrTefbB/SBHT9ShqiTfOpl2Q5th5JX114MDooWewSKjozBwtDlY3uMYAO7/zuPC3aT/EeYPuo/9TLoxvDrAuXYtwFnzycc80Fmz51eN2EDGALlBDEPmTm7aJV6N711cRlW1OiDDWbau/1YgHBpF6yUYkh8SskNNkeim22xIXs8kVtAmCXv2xrKFcYhk2WYUUljmNWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS7PR11MB6062.namprd11.prod.outlook.com (2603:10b6:8:75::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.23; Wed, 17 Sep
 2025 11:21:54 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9115.020; Wed, 17 Sep 2025
 11:21:54 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Brandeburg, Jesse"
 <jbrandeburg@cloudflare.com>, Jakub Kicinski <kuba@kernel.org>, "Hariprasad
 Kelam" <hkelam@marvell.com>, Simon Horman <horms@kernel.org>, Marcin Szycik
 <marcin.szycik@linux.intel.com>, Rahul Rameshbabu <rrameshbabu@nvidia.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "corbet@lwn.net"
 <corbet@lwn.net>, "Keller, Jacob E" <jacob.e.keller@intel.com>
CC: "Brandeburg, Jesse" <jbrandeburg@cloudflare.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 4/5] ice: implement
 transmit hardware timestamp statistics
Thread-Index: AQHcJz6IvxTYucWgAEmt8wJzXQqtCbSXO/kw
Date: Wed, 17 Sep 2025 11:21:53 +0000
Message-ID: <IA3PR11MB8986C728A3DE354140957441E517A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250916-resend-jbrandeb-ice-standard-stats-v4-0-ec198614c738@intel.com>
 <20250916-resend-jbrandeb-ice-standard-stats-v4-4-ec198614c738@intel.com>
In-Reply-To: <20250916-resend-jbrandeb-ice-standard-stats-v4-4-ec198614c738@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS7PR11MB6062:EE_
x-ms-office365-filtering-correlation-id: dae2d1bf-69f7-4ad3-3454-08ddf5dc67cd
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|921020|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?WHlkRmJzZERQS0kycEdUMGZmRWZmYlZxc1RwVFc3d01FazFzY1RNVUV6dTJN?=
 =?utf-8?B?NlR5VEhLVmE0RWtMeWgzdHZrQWlTMGdGOTBTRm5EU3V3MDcvNGpnbUV0aWFq?=
 =?utf-8?B?Y1IrcnVhRWNaSHhyaGQ4cEVMVjJqclYyRUJjQmkyekhNS3FFb2pyQzh0T0Nz?=
 =?utf-8?B?MEs0MDJLQjhKYzYwT0d1Q0ZSUlkrbnZCejd3VG90TG9xL3VGU0M0L2pmQnZJ?=
 =?utf-8?B?UnZWQXhLNExONzNlcm10eGV6M3RZRmhxWnhsbWxnWUxpNnQ1N3JXVkdnajc0?=
 =?utf-8?B?UCtQY3J6aG5aN1BFd0VKNEJQYmVZN0RDNjdYQnVISWkyTTRWU1FPQXZFb3Nq?=
 =?utf-8?B?eU81YVl6djROZzVwWTljNU5YMkV4Z0t4OXBOZkJRTzlma1duQ2trVW9tcDg1?=
 =?utf-8?B?cVdhQnY2VHhtenRLS1grckhDRG1nR3cxMTIyQWxScGxMcDZFQ0VWaFBZMTZr?=
 =?utf-8?B?R1RkSEEzalFUUTZpd2Z2VFFsblMxT3RPU2w4WFBnaDZjczM3aVlsdk1jd3RL?=
 =?utf-8?B?OVRUTmRpRDUrVVJDTVlnNTYxUkt1SGh4YnZEVjBiY0FuQmY3NCtZaVZEa0Mw?=
 =?utf-8?B?OHRCMFZPcXp0bGw2QmowVDB4ekljQXRqMUpZMUJRMVZKQkFWYkhwSi9JcEh4?=
 =?utf-8?B?RkRmUW1WT0M4SHV4OStLNTdYNjkyL1Zsc3FyWFNOM1VnWEs0bUdpQnNDR2hN?=
 =?utf-8?B?UUQreTJWZ1NuTWxiTnNTZUVlcXJFaWxTMTV1RTVrNE5HdHF5R25mWENxYkxz?=
 =?utf-8?B?bEFOblRxTUx1QS9mOXRMUFFLSGEzOGhrUUIyTzVmZ3BtazdNSnBxVzJnR2l3?=
 =?utf-8?B?LzFrOW5JTUxNZmw3WW1lYnI5amQ4WG5VRklMZUFXL1ByVndLTVRqNVo1RWUy?=
 =?utf-8?B?NGZjRW8xRWN1ZHd1WmRFU0VGL2N6WjN5Y2dvRjdNTFNUaGw1Vlhwd0lqM05v?=
 =?utf-8?B?QnNSODdTeEdmMEZUNGxjNnFCM3Vqc0N1b0tNWDFyYVZoelpUcHFTT0lUc21B?=
 =?utf-8?B?ZHRrdkV2OC9xZTRXd2xYNEFBcklSRXJxeTdNSHo1OXZQdC9tbE16RktlNDlZ?=
 =?utf-8?B?RUsrMGp6TGx1QnBnSWtLSStJQjgrYjFmYThNdzZhLzQ5NkRmYWFQbCt6bFZO?=
 =?utf-8?B?cE1KVGg5cGdHekNzSngwRmN1Y0pUTFNkR3NEVDVjRllrU1JmekZPOUtVaDFS?=
 =?utf-8?B?VE1GRjk2ZUlPdlI1UUczaG9idTlmcDlKUVVGLy9oOFI2YzlVbStGNTVLdXJy?=
 =?utf-8?B?WnVMdmJtK1BlVERXeEsxZGY4blp1ZEM5RjBZbS9oOCtLbTdoNytWWE1rY2py?=
 =?utf-8?B?ZWRFQnlDbzhxTWI2TlVxamwwYmxwRVRLNzJRTHVWSyt5RmNlY2lvVEhPd0VU?=
 =?utf-8?B?QnhDSjdUYlVLZHFicnR3MnFHSjFlM3pmMlVrWGNER0d0OTdhMzRld2o1bDlD?=
 =?utf-8?B?dlFkKzJGOXA5UGhkNTRNRHdhcWI1dDJUNHBndjJnMjJPQVo1SVhDYnNLS0xl?=
 =?utf-8?B?dXY2ZzEvYzY1UnphZzhtQk1WZVlRaUxTV0xGeCt5dW9DNm9hR2lIV0tWenFa?=
 =?utf-8?B?L1kyWG1qR3RZb1ozcTZzaThjN3hqMzZVcUFIMCswaElZUjRHVU9qYkxLdm5W?=
 =?utf-8?B?MHlhUVF4dzArNzVHTXYvN3BuVVNiRS9BdXYvTVR1aVZnbHlpcHpWeVc4dll5?=
 =?utf-8?B?WkdVVFdyMTRlZHpxWkNkbE1DOGVXWVNCWVRuY2draExmd2NyUG5xY25kYVRy?=
 =?utf-8?B?ZFNhZkQvVkNKaityTVMxeGxtWmlhOHVZWDR3a0htdTVUZ0s0eVFFNVk2a3o3?=
 =?utf-8?B?LzdIRXRSS3c4dUk5ZlI2bm1RSmJMVWtuZVJSNWdhRnVxZjZEOU5ES2l3bGdV?=
 =?utf-8?B?c2JEN3lISlpBc1p4TzlHOVNhRDJieHJGRTl4dFNWTmtweEhnc3pGNmlhVldG?=
 =?utf-8?B?dHdrU1Q2clAwcWJvblFJNzdBYVpJMEZ6RG41bGVxWnhxUzBGQkVFdGxyWkZX?=
 =?utf-8?Q?6XtuacK+xxG91EKeXfpwxLjxqNiCSs=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(921020)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VmF1VXF6bTVMMVFrTXhpNzhsdXBFdHJPbzd6enhzUE4zY043clYvQVNiS0U2?=
 =?utf-8?B?ZHZFVFdLalhJbmk5cjlOcmtUb3JLY2VUbFRYaVEwSSs5M3hzSTVLYlRBUG9H?=
 =?utf-8?B?L09lbEVodGJFOXJjMXg3eDF3VG1DOFJrZkdCOXFWalMrSEtkSzBSWlpkc09D?=
 =?utf-8?B?UEYzMjVHVmZkOC9UNWxZZ0VUN0NCNlRxWGx4cTRuK3lQdnY5YlRQckhpTlZL?=
 =?utf-8?B?Rm5UWjFoQ0lPMHdwaCtvUGdhYjE4Y05zcjh0TElWdkF1MURjWGJjYlNIVDlt?=
 =?utf-8?B?QmtleEo0RFR1U2NiUDM0b0x6NEtvM3EyeU1WMzhVN01MQWF0bDlYTGVQRy96?=
 =?utf-8?B?MUZEbzdETUdycXl1U0JJWGUrRmpBcEdBSTZrQkg1V1d3NlgrYTJHSXhZdU80?=
 =?utf-8?B?ZEl0K2NkTXBOVks2dkVNdlYvaVNOREplaWoycnJaZGlIQyt2bmRPQllEWDQ4?=
 =?utf-8?B?SmhINHV0c0I0Q0Nzd2tYZnBlbEgxOXNXWXoxTm5RenlpVUh2d0Y1TGJZT0tv?=
 =?utf-8?B?ZlRqNzdIeEtOZGhBOGdhQWtOVUJrNGEzNTZOb000RXNoME9TWnJaQlNtcDhn?=
 =?utf-8?B?RmdQc2RJQ0M3QUQ4NlN6UWtQWnc5T256TlhtNXp0NlJJYUFJM1BWeGY4RFBM?=
 =?utf-8?B?UmFydzZQMnNrTlY5MjZ5RXFqcTNBemErK0g5TGpoM1N5eHIxVk9RMCtoK3RB?=
 =?utf-8?B?UGQ5eDEwZjlxVlVDVzZOM2Q5Z1ZNM3MwdmtuVllBc25lTEtib0tnODlqYWla?=
 =?utf-8?B?UjJ4RnJxWEJYQ1pWTkFiU0l6aUw0U2hlczlxcDA5UGtLU3pmTldBVU5pYXps?=
 =?utf-8?B?YWk3akVUUlhsd1RaeHg0Uk1INmsyQ3F4V09OZDRCL2xTVUczUkprZTRYZW5i?=
 =?utf-8?B?OUpQSUxGSkNLUVo4cFFWZ1I5VTFOVEMrT3JQRHY3TUQ0MmxZeGIrdW5qSElE?=
 =?utf-8?B?Zmthc2RFVWVMdmY0WHgrbXJJWXViTGZaUWZpQVJLYkJDU09maW12OGNsa3Ar?=
 =?utf-8?B?dFVVV2Zoc1laS3I3b2VVSWVKNlY3d3hqc3pNMEVSVEtKL1praks4WnRHSDBJ?=
 =?utf-8?B?Wjh6RnByc01oYnZYbGlsSFV3OC9IV1JDRUljTUQyeUZaZEVLN1BEQVAxSjBP?=
 =?utf-8?B?bmJET2hVNHFsb2RSK1hNT1Yxb2JnSnZSSzR2Vk54SHZtQThTNytod0RXWXo2?=
 =?utf-8?B?dnFqQ1VRQW1lTXBrVHRLMGU2TGRkcVUxRXdTYVd6Rkphckt2bmJEUlZtL0kx?=
 =?utf-8?B?ZHV6bWpWNkJrUnFyU3l4c2hxN0YyS2RUZW82V2pSSkx0d2Y4MmcyOTcwaWti?=
 =?utf-8?B?SWlFSUN2RlVXOGV5ZFVmVkxOek96NlVSUFE3MWZGbjFEVVdLL0lQendHbFQr?=
 =?utf-8?B?SWN6amFnSHpqN3hoRTU5b2NDSFFaWEpsZGFzaUpjTVpteGlEaG1XVHUrVXVw?=
 =?utf-8?B?NmxDZFBjVzQwQUJLUWlnMHZLTlVUZ0RkbmMvRE5UQkNoSFZLSUViZzV0TTdM?=
 =?utf-8?B?Ly9Yc2FMUkhPOGxualhpMXNTRFRMT0tVNVZlZnh4M0VVZFpRN3grMmJOSVpL?=
 =?utf-8?B?S2laQU8xSG5XOVQzWDhoR0dLaUpvNHNGbHdoUlhRTXFXWEd2OWVOeU9odzF0?=
 =?utf-8?B?N1NTQjU4d1FhS1grYlpwNXZDbGI0cHVVbWc0clBOMi90KzN0YnE0eTJUdjdR?=
 =?utf-8?B?SUtGRkZkUXBMQktQWmlpc2xYSFkxa1VEM0N3RUVHd1RzUVh2M1lXK2l0TGor?=
 =?utf-8?B?ZE1Nb3JzNHNxNVVaQXZ1UTJCZ2NzL0NSWjQrYVF4YXg0MkhtRGtuSEJiZVV0?=
 =?utf-8?B?V2JEbTRrSk9SK1F5WGFHNFpHZHZYeTVteFkyZkdqMnpXSDVSVGFoWEJiOHVX?=
 =?utf-8?B?UmFhNHRuR3F5di93UHQ0amloc2trS2kwdjVKRms2b1lPbUNZYkUrYk9wYUx5?=
 =?utf-8?B?bXpwc2lkbkN4NXR1WEUwTTFPdGtvampXanhkUEdtU0VhUGgvN3lneEoxN2tU?=
 =?utf-8?B?K3k3VDFvS1R5eTRTMExwclZVbG9uN2R0YzhzUVRoM0JSeXRLOWxyNFg1RC9i?=
 =?utf-8?B?UUU4YmdxOWJVK3Y4L3kva3JNZE9mL285N3YzTXJNUHNjR3c5d2hRWVk5VnRX?=
 =?utf-8?B?ME9XSU11NjRzb0FUVjFnSTNaWGc0MU84UU9OcFNFNzZDMU1LNXBLUGc0cVRD?=
 =?utf-8?B?dXc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dae2d1bf-69f7-4ad3-3454-08ddf5dc67cd
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Sep 2025 11:21:53.8985 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LsRIddfkQLBs7AN0AEjVZIDu0cVwZ20qYKRo8Qfn2AAj6EEwd+a73ET4D+biviDY2TwV/3jp5BW6ImLpkf04gYxBZjotue2WI3tNucXI9Ms=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6062
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758108119; x=1789644119;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/ZPodyFPt2bm4z6fDAtRbu2K50EjieAZbrqlRuPXxjI=;
 b=XLy9RPtlARzd5Y7fZEWtiFIIUoCzb48thGmQLsIYZ4SnYqO6+gSOsssG
 D/tUoy8igBTYfuxapd3y+JyWH4g73SaWM0mZdYU7khrVWE8QPDdVgzvTf
 6YNdalVI0KbJm0GU1k8C3M93EoffgGAiI0ZdWSmZWRz7ImgEoBzRaxSOy
 qiHWBWOfZOnkVIPiJNevztSXsoZSs+5jdUCcXoSDluEaJ9n0HzSunE/ab
 8F3Z33hGL/lj1vSzwvDOTy/U3kVlUMSWiQnlXpPCfp+oV/sFYb9XPdt2Z
 ZVf1uTP3x8VyMwBKZ6+gcDjOmpVYbXryqXhuU5gHxliZp/0saE02oc1d/
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XLy9RPtl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 4/5] ice: implement
 transmit hardware timestamp statistics
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
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgSmFj
b2IgS2VsbGVyDQo+IFNlbnQ6IFR1ZXNkYXksIFNlcHRlbWJlciAxNiwgMjAyNSA5OjE1IFBNDQo+
IFRvOiBCcmFuZGVidXJnLCBKZXNzZSA8amJyYW5kZWJ1cmdAY2xvdWRmbGFyZS5jb20+OyBKYWt1
YiBLaWNpbnNraQ0KPiA8a3ViYUBrZXJuZWwub3JnPjsgSGFyaXByYXNhZCBLZWxhbSA8aGtlbGFt
QG1hcnZlbGwuY29tPjsgU2ltb24gSG9ybWFuDQo+IDxob3Jtc0BrZXJuZWwub3JnPjsgTWFyY2lu
IFN6eWNpayA8bWFyY2luLnN6eWNpa0BsaW51eC5pbnRlbC5jb20+Ow0KPiBSYWh1bCBSYW1lc2hi
YWJ1IDxycmFtZXNoYmFidUBudmlkaWEuY29tPjsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsNCj4g
aW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7IGxpbnV4LWRvY0B2Z2VyLmtlcm5lbC5v
cmc7DQo+IGNvcmJldEBsd24ubmV0OyBLZWxsZXIsIEphY29iIEUgPGphY29iLmUua2VsbGVyQGlu
dGVsLmNvbT4NCj4gQ2M6IEJyYW5kZWJ1cmcsIEplc3NlIDxqYnJhbmRlYnVyZ0BjbG91ZGZsYXJl
LmNvbT4NCj4gU3ViamVjdDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIGl3bC1uZXh0IHY0IDQv
NV0gaWNlOiBpbXBsZW1lbnQNCj4gdHJhbnNtaXQgaGFyZHdhcmUgdGltZXN0YW1wIHN0YXRpc3Rp
Y3MNCj4gDQo+IEZyb206IEplc3NlIEJyYW5kZWJ1cmcgPGplc3NlLmJyYW5kZWJ1cmdAaW50ZWwu
Y29tPg0KPiANCj4gVGhlIGtlcm5lbCBub3cgaGFzIGNvbW1vbiBzdGF0aXN0aWNzIGZvciB0cmFu
c21pdCB0aW1lc3RhbXBzLCBzbw0KPiBpbXBsZW1lbnQgdGhlbSBpbiB0aGUgaWNlIGRyaXZlci4N
Cj4gDQo+IHVzZSB2aWENCj4gZXRodG9vbCAtSSAtVCBldGgwDQo+IA0KPiBSZXZpZXdlZC1ieTog
SmFjb2IgS2VsbGVyIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQo+IFJldmlld2VkLWJ5OiBK
YWt1YiBLaWNpbnNraSA8a3ViYUBrZXJuZWwub3JnPg0KPiBSZXZpZXdlZC1ieTogSGFyaXByYXNh
ZCBLZWxhbSA8aGtlbGFtQG1hcnZlbGwuY29tPg0KPiBSZXZpZXdlZC1ieTogU2ltb24gSG9ybWFu
IDxob3Jtc0BrZXJuZWwub3JnPg0KPiBTaWduZWQtb2ZmLWJ5OiBKZXNzZSBCcmFuZGVidXJnIDxq
ZXNzZS5icmFuZGVidXJnQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogSmFjb2IgS2VsbGVy
IDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWNlL2ljZV9ldGh0b29sLmMgfCAxOCArKysrKysrKysrKysrKysrKysNCj4gIDEg
ZmlsZSBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9ldGh0b29sLmMNCj4gYi9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pY2UvaWNlX2V0aHRvb2wuYw0KPiBpbmRleCAzZDk5YzRhMWUyODcuLmY4
YmIyZDU1YjI4YyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNl
L2ljZV9ldGh0b29sLmMNCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2lj
ZV9ldGh0b29sLmMNCj4gQEAgLTQ3MzAsNiArNDczMCwyMyBAQCBzdGF0aWMgdm9pZCBpY2VfZ2V0
X3Jtb25fc3RhdHMoc3RydWN0DQo+IG5ldF9kZXZpY2UgKm5ldGRldiwNCj4gIAkqcmFuZ2VzID0g
aWNlX3Jtb25fcmFuZ2VzOw0KPiAgfQ0KPiANCj4gKy8qIGljZV9nZXRfdHNfc3RhdHMgLSBwcm92
aWRlIHRpbWVzdGFtcGluZyBzdGF0cw0KPiArICogQG5ldGRldjogdGhlIG5ldGRldmljZSBwb2lu
dGVyIGZyb20gZXRodG9vbA0KPiArICogQHRzX3N0YXRzOiB0aGUgZXRodG9vbCBkYXRhIHN0cnVj
dHVyZSB0byBmaWxsIGluICAqLyBzdGF0aWMgdm9pZA0KPiAraWNlX2dldF90c19zdGF0cyhzdHJ1
Y3QgbmV0X2RldmljZSAqbmV0ZGV2LA0KPiArCQkJICAgICBzdHJ1Y3QgZXRodG9vbF90c19zdGF0
cyAqdHNfc3RhdHMpIHsNCj4gKwlzdHJ1Y3QgaWNlX3BmICpwZiA9IGljZV9uZXRkZXZfdG9fcGYo
bmV0ZGV2KTsNCj4gKwlzdHJ1Y3QgaWNlX3B0cCAqcHRwID0gJnBmLT5wdHA7DQo+ICsNCj4gKwl0
c19zdGF0cy0+cGt0cyA9IHB0cC0+dHhfaHd0c3RhbXBfZ29vZDsNCj4gKwl0c19zdGF0cy0+ZXJy
ID0gcHRwLT50eF9od3RzdGFtcF9za2lwcGVkICsNCj4gKwkJCXB0cC0+dHhfaHd0c3RhbXBfZmx1
c2hlZCArDQo+ICsJCQlwdHAtPnR4X2h3dHN0YW1wX2Rpc2NhcmRlZDsNCj4gKwl0c19zdGF0cy0+
bG9zdCA9IHB0cC0+dHhfaHd0c3RhbXBfdGltZW91dHM7IH0NCj4gKw0KPiAgI2RlZmluZSBJQ0Vf
RVRIVE9PTF9QRlIgKEVUSF9SRVNFVF9JUlEgfCBFVEhfUkVTRVRfRE1BIHwgXA0KPiAgCUVUSF9S
RVNFVF9GSUxURVIgfCBFVEhfUkVTRVRfT0ZGTE9BRCkNCj4gDQo+IEBAIC00ODE2LDYgKzQ4MzMs
NyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGV0aHRvb2xfb3BzIGljZV9ldGh0b29sX29wcw0KPiA9
IHsNCj4gIAkuZ2V0X2V0aF9tYWNfc3RhdHMJPSBpY2VfZ2V0X2V0aF9tYWNfc3RhdHMsDQo+ICAJ
LmdldF9wYXVzZV9zdGF0cwk9IGljZV9nZXRfcGF1c2Vfc3RhdHMsDQo+ICAJLmdldF9ybW9uX3N0
YXRzCQk9IGljZV9nZXRfcm1vbl9zdGF0cywNCj4gKwkuZ2V0X3RzX3N0YXRzCQk9IGljZV9nZXRf
dHNfc3RhdHMsDQo+ICAJLmdldF9kcnZpbmZvCQk9IGljZV9nZXRfZHJ2aW5mbywNCj4gIAkuZ2V0
X3JlZ3NfbGVuCQk9IGljZV9nZXRfcmVnc19sZW4sDQo+ICAJLmdldF9yZWdzCQk9IGljZV9nZXRf
cmVncywNCj4gDQo+IC0tDQo+IDIuNTEuMC5yYzEuMTk3Lmc2ZDk3NWU5NWM5ZDcNCg0KDQpSZXZp
ZXdlZC1ieTogQWxla3NhbmRyIExva3Rpb25vdiA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5j
b20+DQo=
