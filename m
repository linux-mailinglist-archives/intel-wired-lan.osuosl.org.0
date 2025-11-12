Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2554EC525EC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Nov 2025 14:04:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3281260892;
	Wed, 12 Nov 2025 13:04:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zjoPYgWzVGJL; Wed, 12 Nov 2025 13:04:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2FCE660DD5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762952672;
	bh=9hTQTgm9lLHaZPVqKPFTTaXE3M5Zlu4exLY8VkcbmQ8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iVA9d7oRMo9c98kLIHGfGibSDcn1nLErLUR0eo9D82Ver9g2PLzGUEWRrjN3+3B7l
	 hapJLGyYJ419FQuvRcIFQYTtujeR4xtrPNEtIUORUl5Vsq8DftD9LwQ2+7/k1ThdjY
	 wOaogNTBJuIiIpcRw9eXoIoR7qOrKBnmJnA/kZTb872psH8FWJVINfzjpTXQZ7SAqM
	 z8W7Ij+tssElO9Gv+hc/WnyQl2HXxV+nvq4+4VsUC5rDu3KNnDYSjNo9rbewPe4kYw
	 4awbtAfgWzKZKbdALQ1UywzgmfzSOnXdkeXI/b/JSr+xNjvzXV4k2K+L2sDoe/Iq1L
	 n2D6l7iZfJV+w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2FCE660DD5;
	Wed, 12 Nov 2025 13:04:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5F022FA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Nov 2025 13:04:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 48F28806AC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Nov 2025 13:04:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uRRukpJsO3V9 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Nov 2025 13:04:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5506C8069F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5506C8069F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5506C8069F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Nov 2025 13:04:28 +0000 (UTC)
X-CSE-ConnectionGUID: ZdwALn4bTq+F9m8isazEZA==
X-CSE-MsgGUID: lSMIKZCsQ8O0XUeSsnP2QA==
X-IronPort-AV: E=McAfee;i="6800,10657,11611"; a="64022877"
X-IronPort-AV: E=Sophos;i="6.19,299,1754982000"; d="scan'208";a="64022877"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 05:04:28 -0800
X-CSE-ConnectionGUID: OWU12nOVT6OXE0euWeXvxA==
X-CSE-MsgGUID: dw19hx9iQ5+9zsA+ChI/EA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,299,1754982000"; d="scan'208";a="188505478"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 05:04:27 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 12 Nov 2025 05:04:27 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 12 Nov 2025 05:04:27 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.31) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 12 Nov 2025 05:04:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T2HLVbwArCM8hTv72GrYIrxDNCVA37Q3IaaTql9pBpjwrEFdqoy6LNXVzck+Y38V3JawPwSGLDGfEgWK6PAEe4rhebqSkmTV0VlFL7gllUpOUqoa5OF4Z5H4BTOL1RNC/jAgRhYlUr9AOY6HiBML/1L/f3mbVGkekEIbYCd+anHYPj0Kcw0YT+ZMijRH4rqd8+8De0zsMiwP0iBt7Z1YFvJcvsdB5LQVgi8fYmwMZUNBdxkE8EZcEoPyZfmS9s0Ji9bdsqAE8VRhJqWtVYeehMi9+BqS1dNLbFmdKnjHZVHQGwoVYaihYv3P560lPS/jfqKCkhcgpbEWLwneAAUu2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9hTQTgm9lLHaZPVqKPFTTaXE3M5Zlu4exLY8VkcbmQ8=;
 b=Q8FtsEkUm7DtN9or6vOXBEK9Nj7OIPpoiL3Eh3Lg626vJcicoP4+BIX86wFt9t8YDP9T9GJ3Sfz/zmJDFbrix3tFLeTSYoIQT1vFK2v95H0s5TLp2/5FQyzcHLaEAui4ebYTqbaf6YBZdzq3TWnJXx3z5XQjvBd9Lum8W3NiyX2FrYfswoCJQbVxm2BIssKgXh3/NjUY6KV3Xo9l8ozKEhd1stQaXLdLwpK1OANVaXfKK8+OfxlefeBojXMxeFtDtC5K/9SMVyUI83b/trVAWYNkQ7aG8RzupYFugGn3XOCzgTAvDhWDE2kevNNMOmX/iz4w5AzBGIcF4yeZlOjlAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CH3PR11MB7298.namprd11.prod.outlook.com (2603:10b6:610:14c::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.15; Wed, 12 Nov
 2025 13:04:18 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9320.013; Wed, 12 Nov 2025
 13:04:18 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Breno Leitao <leitao@debian.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kernel-team@meta.com" <kernel-team@meta.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] net: ixgbe: convert to use
 .get_rx_ring_count
Thread-Index: AQHcU76CWMTYQ7s9y02679pFrsKoGbTvAh8Q
Date: Wed, 12 Nov 2025 13:04:18 +0000
Message-ID: <IA3PR11MB8986B44287480E638CC00A99E5CCA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251112-ixgbe_gxrings-v1-1-960e139697fa@debian.org>
In-Reply-To: <20251112-ixgbe_gxrings-v1-1-960e139697fa@debian.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CH3PR11MB7298:EE_
x-ms-office365-filtering-correlation-id: d1ef3ddc-5509-4b67-259b-08de21ebfd86
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|921020|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?TVpOSWhLZmJlM1REZ3lwTk5JZ0RjWHlGTWsrM3R0QVJEblFicUNhaEJLcU54?=
 =?utf-8?B?RVBJc3Z6ZDJaS3VPdGF6UW43RnhhbkFKQi9BZ012OTdaS2R4ZWhNaHROVldx?=
 =?utf-8?B?WVAweXY5UUlmRVZud3hqSitIbWk4VlNvMjR1YUlZNVhOeldzQkhHYzh2VWZW?=
 =?utf-8?B?bjcvRnJaNkI5dUtYWnBGL3RhaWM5aTc0eU5wMHJHYXZQU2E2OVNFSFV1M0RL?=
 =?utf-8?B?V2p5eDlYT21tN2VpUGtRVGxDNEw2Tnl1NEpEbkZWVXI1R205Vy90THFtblY5?=
 =?utf-8?B?WGVwNnp4WGt2NlN3UVo1ODM1NzVobnBNTFpUVTU4d2JkWDdyeTJkRGRtMHdU?=
 =?utf-8?B?TmdSUHNEN1ovWHN3WS9OSGV6YkhjWHNjd0RXWWF1dmNKVXVFaG9sNnQvMEY4?=
 =?utf-8?B?dEVJR1Y5eUxSa2xCNWtWcFBnU1NvYnFsRWVsU0ExSjFyNkRPZjdSZ2VZbDJr?=
 =?utf-8?B?Z3Z6ZGNaTTBQRXJHTDFxVnFWdzRQWUlVbG10NUFNV0p4VWlnK0hwYnZrZ085?=
 =?utf-8?B?WFBUeW9EQXU3M2JpRUpxZUV0TUE0NFBJd0Q0cXlsZGtyY3JvWnRLVTNic3py?=
 =?utf-8?B?U2hWRzhscWRaT3NvZmlxdUZETDQveTBhaGg3WGdOZkRCdUQrRFh5eElUVnJy?=
 =?utf-8?B?N05ZVXFTdExhTlhZSnNxOHF6Wm1ibUVJWVdFNTF5NmNReE5hRHBBNTZRTTE0?=
 =?utf-8?B?elJCdCtJNEFjWDRVTVlXaytVWm85NTFMTEozYXJkN2ViUGpIVmVEdGpDajNr?=
 =?utf-8?B?Q0V4TFppRnRLQUdCY2htZXRYVXRoU05LT2JVZzdaZ2EyaEJaZEpZaGFNR2M5?=
 =?utf-8?B?andvZTJzaDgyRmpmVDVSL0pkS09HcEZvZXlta1pqYzI4ZDF3c0E3dmRpZExi?=
 =?utf-8?B?Sy9UZGtNcGdRZW42TGhLaGRuYnk1T1hMSGN2cU1BNkVyK2tXT0tRWVlnUm9H?=
 =?utf-8?B?WnRLZzE5V2tMQjZYUmFsOFZvZVF2Z25kUmdxUVNneTFpWmhsYmwzQlpMTzg2?=
 =?utf-8?B?dlpnR1hKWnNpeGRZTVRNRk84eitudGFuZXhXUUY1a1BRVzdtWkpVTHFFS2NJ?=
 =?utf-8?B?clBkc3lSYWJBNjhFbU5oUXRaMEJCbGhjVmZRUXFwLzZFM0R6MDZDcXpXRFFu?=
 =?utf-8?B?UTdrYWFWTmx5Z21HODd6ZGdiRGdaR2lsSEEyS0FGbW5zbVJuZ2l5TlRsSGZv?=
 =?utf-8?B?bHJlZEZzSGh3bmlpNWtnZ3BwbWhBK1BKazRDb3NHbGdaUmhoM05QeW9DdHZs?=
 =?utf-8?B?L0pWOG9xVEl2NTNOb3ZxbDRnRnYrOHVDM25ncVgwVGpMbFhsVkZpa0JubG55?=
 =?utf-8?B?NmRFNTJLT21HREIwY1EzZ2RXeWpMRHV4eFBwOExuSnhyYlFPWFhNbXZXMHI0?=
 =?utf-8?B?TkVjNWMremlPekpxd0pEZzJKUGp4aWhnaEdKUDdkd1lnMXhWazEydXZNZ3RF?=
 =?utf-8?B?b2hPamdyV01RajEyZ21pK1o5eDZURTRFSmxERysvL2x1cjBwd1RrNm1XUHVQ?=
 =?utf-8?B?c3dTYVpuQUxyanFHSGJFYzBsS1IxZTBTTFdUK3kwWkZvY2NlMngyQTd3aUZW?=
 =?utf-8?B?Zk1oalpqTjRhcDY1eWJhV21Yb0xvdG9tQ3d1RDZidC9nYWl1b2JFdVdhZHJ3?=
 =?utf-8?B?MWFpaFdsbmtKWEFjQSsyNkVGN1JETFJjV201cnIxV3Q2SGRLTlo0T1dPZGFG?=
 =?utf-8?B?MnVOZVloQTZZbUtvWVdIWG54ZmMxS0sxK0NQYTU3VnZQRXZTWTBEclg0dXZW?=
 =?utf-8?B?YlZlSll3ZVNaWmRjRlpkS0t4Y1lDdXY4TGhrenZSb2xqbzc5TE95QUIzeXVm?=
 =?utf-8?B?bHlSSFp1aGtsSWlvbkc3a2FSWk1MM05PQ001RWxTMk1hMCtHUGZsVG4zTFVh?=
 =?utf-8?B?WGVuV3EyOUpnNnNUNnNVUWJqU0ZORGxvazhac24yektkOCs4Sm5LcmFmaWdk?=
 =?utf-8?B?aFBaU1RMcFZvc3h0aE9yT0trSXNzOG5kVWpCbGNwRmR4NUhSNGlRVFBkdm9y?=
 =?utf-8?B?VXNiQWQyRFV1Qk9PRmp2aGFmTktkQzZyWmxOMWtCMDQ2anIreXpLRTdLUml2?=
 =?utf-8?B?c2VmUjNVbmRqYWFScjMwRTVhb0czdGRDakRPQT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(921020)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SldLZUtHOWlNQU0rWlE1blY3QUM1akVrWFNsWjl2NmlEdkZZemIvTElpR1Z5?=
 =?utf-8?B?SG11cjVTT292NFpMNmNCZUViQk8zc0lNWno3MHJWRDFHZHJzYmo5bm10R2xl?=
 =?utf-8?B?SUxLZSttMHRMYTdDcDBIdnRTc0RjOENGcEQ4dVZhRkl4a2xvZ0N2YVZ3Zzk5?=
 =?utf-8?B?NVA4ZVgvNFQ0bDVlMzNZc09NSWVlK01BTWJ1R2gvd3BHSklEc0Vqa00wM2R5?=
 =?utf-8?B?NGxHbFE4ZGJWWDREb2ZPNkdlOGdvS1ZNRGFpaEM2ZXZqYkswNzEraUhpQXly?=
 =?utf-8?B?b0ZDNERQdHRLU3N0M0tuYXhSd2pGRjZJaksxTlhJeWRSaDU5b0xSN0l6aXE0?=
 =?utf-8?B?OTRpMGpoRGdtRWtML2s3Y1ZtbDZuV05qakFoRjFrVTlLNGZUS01xWFQ3TndY?=
 =?utf-8?B?NFdSSEMyVzdVRmpoaEZVU083OXdsVlloL3h6MlBWQmtZcWpjRXpZbG9RL1hZ?=
 =?utf-8?B?TDhvVTI3K3RMbFlxamNOZmJWU3lYb3JVeU5uazFhSTFZVUpEYWhKS0x4c2tM?=
 =?utf-8?B?Wkl0TUhqTXA5a3VMa25GMFdCd2NkdW1XS0ZHWjc2bTNnTy9TZ2tuZTF6MVJW?=
 =?utf-8?B?VXBiYitmSEJUOVFUR1BSanF5T2kxaUV0UEcxdU95eTlEM0RpT2ZoVU13WlVw?=
 =?utf-8?B?Vlg2Q245bE1VWTZnQUJrQ1hYWnh4bkRoUzBGMXAwMXRkR1NwRjFkSFU5ZURv?=
 =?utf-8?B?Vnc1SVZBR2laY01SNHFtMDVDT3ZwLzgrNW5IMTQvc2ZsaEQ5aEY4NEhtL0Ro?=
 =?utf-8?B?ZVBDYlB3NW5hbmlxQ2NLZk4va2JMdzNIODhtMDQ1SHB3ZEtOR2lRVTZzWFNR?=
 =?utf-8?B?WEhyVEJYMzN5YXg5UU9aVW1uVTJBd1N3Sm5VeDVzN1ZsbXpaQUtBYjlCdWRj?=
 =?utf-8?B?cFcycUUwZm5xWUkwaDJnODIvWXdjaUR0N0hSLzQvaVVKZG9qOVd5QWVqUmJ3?=
 =?utf-8?B?YjNXaExnaGM0alkrRmhQR2xSVExmampvMkt5THhBc2plYTlVR3pKSWF1Vk9N?=
 =?utf-8?B?SWFsR245MjBGS0JmQ29hTVg5ekdXK3NZblRRWkhZdzZGQ2IvOWM2cko2V0RW?=
 =?utf-8?B?ZVRLUmc2TmpJL0tnSEUzYldXYWpTSmVWSHF3Z3FZQWtFMGFmNUdOMURSdHZE?=
 =?utf-8?B?NHl0TWtLWGZrR0EwMURNTjNNazdKR2xwYlQ1NVR3TkxtcjNGb3VQbHY5U1JQ?=
 =?utf-8?B?VG10bVQ5L25hbHY3YjY3ZnZUOEZtZW8yeWxha2pOQi9IVFZDTy9OeUZRaTN0?=
 =?utf-8?B?c2lTT3dRZG0xWGhnc0NKQ0NJM1Y3bVhzT0RIZ254UFRReU5vb0RHM3Bjdnp2?=
 =?utf-8?B?L2J0Y09sRmkvMVQxK3lkVlhiZ1YyTU1TbXppQWdGK2ZOSGpNbU1rSlg2b3V5?=
 =?utf-8?B?TXZhaUFBOXltTEc5U2FUTGJ6Z25jZlQrai80QytHdlhCNkV1T21YWDFvQmVt?=
 =?utf-8?B?Vjhtb0dTZFd3bkxaOW84blZiL3dtS1pMZXp0a2xJWkppbWZ5NTVPZng5RGVP?=
 =?utf-8?B?OUdVenhDeVpOL0tjUUFFT09nNk1lTXNnMXg1UVdOdTdzY0t0QjlIWFVmb3lR?=
 =?utf-8?B?cVlZeGppMEQyYVVFMEpKa2tGMFNXbDdDcVpWUlNqZmN1bTl5YW9iQjRQTHFn?=
 =?utf-8?B?c2VBemgrWjZJRjNrTWpnTWMrT3pZcmg5UnVyRHdFWENYemkxUlFwYXRsRHFj?=
 =?utf-8?B?T2pwdzJ3djkvbkFLNGpVdEtSRUxxbTZ2OUcyWkVzeVRoRmxpbDVlQ3c1M1ZO?=
 =?utf-8?B?RkM5RDJ5b1A1NEJETDgxUWFWRWNuYUcyRWgySmNuMkpreXVVUE90YkJsbWpJ?=
 =?utf-8?B?MEtQY09teEZQeEpSVnlhUzQyeGMrR0syQkhZQkVUazNlQ0FXMThQYm9TOU11?=
 =?utf-8?B?dEdKc2o5MkVBT0tkQmxDTWFEQ054SHhhcW56Wjl3SVdOK01iMHhRQklxMWFF?=
 =?utf-8?B?N2lSRS9GZmRkTy9WWElnN1VuNzY4UzNRNjdwV2l1enZ6Tkt5MVg5b1ZhQ2Ur?=
 =?utf-8?B?WFhvZ2JFVm9XWmloNEJIV0cxejBzbXVRZWkxN25aNkVJOHg0NzNLMU1uL3pV?=
 =?utf-8?B?K0RubFo5bTJCSE9wR2tybzVJc0RpUDNuUTBVRDlLQUlqd1JUcDRUQnhRd2FT?=
 =?utf-8?B?SXVEbGIzUkE4ODQ0NlVDTXJHZGFFK1hJOUR3N0hOOE5TQ3JLaVJnZlVvMWJB?=
 =?utf-8?B?T3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d1ef3ddc-5509-4b67-259b-08de21ebfd86
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2025 13:04:18.7254 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5S2SFsMgzFpWRBGJrO6QbijktGLObhpsYcZkouMGfI3exZuhtxMT619FkF8issoc6QDAYjiwTtnfswPmAOYS08jWuNKM1DwlLEm7bxYPUmc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7298
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762952669; x=1794488669;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9hTQTgm9lLHaZPVqKPFTTaXE3M5Zlu4exLY8VkcbmQ8=;
 b=cnv8MGwT3EEH83ziBy/MRydi1j0FRnp+NFpWvd+qN2FHqOAQXW1EoF+4
 El4J4DdWCTs0sdkn0H6sd3DSCJMMuBghKeeN9ebCxNV2djSm5uIutpHLG
 8tx4ZAU0Y5mT5MYVit1zWpJwA7CX0frTtr9KkjFg4iVJa4sxU9ikWD4My
 1MZzd3TMEthB8iQMuOXRzj1FqtF84hqrycNlMxWgLbqyVEDbZ04jW0jyk
 ksk+KZJDlEwWcScUViDW5o8KfJXo4Et6Ox35jj0h9E/6r7xNih80foPHz
 nhWwO6VzbzYp4Gks+0TPh34tKaYDxUCSHOA79ciQ7ZTidoPN4vX9c4Our
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cnv8MGwT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] net: ixgbe: convert to use
 .get_rx_ring_count
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
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgQnJl
bm8gTGVpdGFvDQo+IFNlbnQ6IFdlZG5lc2RheSwgTm92ZW1iZXIgMTIsIDIwMjUgMTE6MjMgQU0N
Cj4gVG86IE5ndXllbiwgQW50aG9ueSBMIDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IEtp
dHN6ZWwsDQo+IFByemVteXNsYXcgPHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+OyBBbmRy
ZXcgTHVubg0KPiA8YW5kcmV3K25ldGRldkBsdW5uLmNoPjsgRGF2aWQgUy4gTWlsbGVyIDxkYXZl
bUBkYXZlbWxvZnQubmV0PjsgRXJpYw0KPiBEdW1hemV0IDxlZHVtYXpldEBnb29nbGUuY29tPjsg
SmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz47IFBhb2xvDQo+IEFiZW5pIDxwYWJlbmlA
cmVkaGF0LmNvbT4NCj4gQ2M6IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBuZXRk
ZXZAdmdlci5rZXJuZWwub3JnOyBsaW51eC0NCj4ga2VybmVsQHZnZXIua2VybmVsLm9yZzsga2Vy
bmVsLXRlYW1AbWV0YS5jb207IEJyZW5vIExlaXRhbw0KPiA8bGVpdGFvQGRlYmlhbi5vcmc+DQo+
IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBuZXQtbmV4dF0gbmV0OiBpeGdiZTog
Y29udmVydCB0byB1c2UNCj4gLmdldF9yeF9yaW5nX2NvdW50DQo+IA0KPiBDb252ZXJ0IHRoZSBp
eGdiZSBkcml2ZXIgdG8gdXNlIHRoZSBuZXcgLmdldF9yeF9yaW5nX2NvdW50IGV0aHRvb2wNCj4g
b3BlcmF0aW9uIGZvciBoYW5kbGluZyBFVEhUT09MX0dSWFJJTkdTIGNvbW1hbmQuIFRoaXMgc2lt
cGxpZmllcyB0aGUNCj4gY29kZSBieSBleHRyYWN0aW5nIHRoZSByaW5nIGNvdW50IGxvZ2ljIGlu
dG8gYSBkZWRpY2F0ZWQgY2FsbGJhY2suDQo+IA0KPiBUaGUgbmV3IGNhbGxiYWNrIHByb3ZpZGVz
IHRoZSBzYW1lIGZ1bmN0aW9uYWxpdHkgaW4gYSBtb3JlIGRpcmVjdCB3YXksDQo+IGZvbGxvd2lu
ZyB0aGUgb25nb2luZyBldGh0b29sIEFQSSBtb2Rlcm5pemF0aW9uLg0KPiANCj4gU2lnbmVkLW9m
Zi1ieTogQnJlbm8gTGVpdGFvIDxsZWl0YW9AZGViaWFuLm9yZz4NCj4gLS0tDQo+ICBkcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9ldGh0b29sLmMgfCAxNSArKysrKysrKysr
LS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygt
KQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4
Z2JlX2V0aHRvb2wuYw0KPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2Jl
X2V0aHRvb2wuYw0KPiBpbmRleCAyZDY2MGU5ZWRiODAuLjJhZDgxZjY4N2E4NCAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhnYmUvaXhnYmVfZXRodG9vbC5jDQo+
ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX2V0aHRvb2wuYw0K
PiBAQCAtMjgwNSw2ICsyODA1LDE0IEBAIHN0YXRpYyBpbnQgaXhnYmVfcnNzX2luZGlyX3RibF9t
YXgoc3RydWN0DQo+IGl4Z2JlX2FkYXB0ZXIgKmFkYXB0ZXIpDQo+ICAJCXJldHVybiA2NDsNCj4g
IH0NCj4gDQo+ICtzdGF0aWMgdTMyIGl4Z2JlX2dldF9yeF9yaW5nX2NvdW50KHN0cnVjdCBuZXRf
ZGV2aWNlICpkZXYpIHsNCj4gKwlzdHJ1Y3QgaXhnYmVfYWRhcHRlciAqYWRhcHRlciA9IGl4Z2Jl
X2Zyb21fbmV0ZGV2KGRldik7DQo+ICsNCj4gKwlyZXR1cm4gbWluX3QodTMyLCBhZGFwdGVyLT5u
dW1fcnhfcXVldWVzLA0KPiArCQkgICAgIGl4Z2JlX3Jzc19pbmRpcl90YmxfbWF4KGFkYXB0ZXIp
KTsNCj4gK30NCj4gKw0KPiAgc3RhdGljIGludCBpeGdiZV9nZXRfcnhuZmMoc3RydWN0IG5ldF9k
ZXZpY2UgKmRldiwgc3RydWN0DQo+IGV0aHRvb2xfcnhuZmMgKmNtZCwNCj4gIAkJCSAgIHUzMiAq
cnVsZV9sb2NzKQ0KPiAgew0KPiBAQCAtMjgxMiwxMSArMjgyMCw2IEBAIHN0YXRpYyBpbnQgaXhn
YmVfZ2V0X3J4bmZjKHN0cnVjdCBuZXRfZGV2aWNlDQo+ICpkZXYsIHN0cnVjdCBldGh0b29sX3J4
bmZjICpjbWQsDQo+ICAJaW50IHJldCA9IC1FT1BOT1RTVVBQOw0KPiANCj4gIAlzd2l0Y2ggKGNt
ZC0+Y21kKSB7DQo+IC0JY2FzZSBFVEhUT09MX0dSWFJJTkdTOg0KPiAtCQljbWQtPmRhdGEgPSBt
aW5fdChpbnQsIGFkYXB0ZXItPm51bV9yeF9xdWV1ZXMsDQo+IC0JCQkJICBpeGdiZV9yc3NfaW5k
aXJfdGJsX21heChhZGFwdGVyKSk7DQo+IC0JCXJldCA9IDA7DQo+IC0JCWJyZWFrOw0KPiAgCWNh
c2UgRVRIVE9PTF9HUlhDTFNSTENOVDoNCj4gIAkJY21kLT5ydWxlX2NudCA9IGFkYXB0ZXItPmZk
aXJfZmlsdGVyX2NvdW50Ow0KPiAgCQlyZXQgPSAwOw0KPiBAQCAtMzc0Myw2ICszNzQ2LDcgQEAg
c3RhdGljIGNvbnN0IHN0cnVjdCBldGh0b29sX29wcw0KPiBpeGdiZV9ldGh0b29sX29wcyA9IHsN
Cj4gIAkuZ2V0X2V0aHRvb2xfc3RhdHMgICAgICA9IGl4Z2JlX2dldF9ldGh0b29sX3N0YXRzLA0K
PiAgCS5nZXRfY29hbGVzY2UgICAgICAgICAgID0gaXhnYmVfZ2V0X2NvYWxlc2NlLA0KPiAgCS5z
ZXRfY29hbGVzY2UgICAgICAgICAgID0gaXhnYmVfc2V0X2NvYWxlc2NlLA0KPiArCS5nZXRfcnhf
cmluZ19jb3VudAk9IGl4Z2JlX2dldF9yeF9yaW5nX2NvdW50LA0KPiAgCS5nZXRfcnhuZmMJCT0g
aXhnYmVfZ2V0X3J4bmZjLA0KPiAgCS5zZXRfcnhuZmMJCT0gaXhnYmVfc2V0X3J4bmZjLA0KPiAg
CS5nZXRfcnhmaF9pbmRpcl9zaXplCT0gaXhnYmVfcnNzX2luZGlyX3NpemUsDQo+IEBAIC0zNzkx
LDYgKzM3OTUsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGV0aHRvb2xfb3BzDQo+IGl4Z2JlX2V0
aHRvb2xfb3BzX2U2MTAgPSB7DQo+ICAJLmdldF9ldGh0b29sX3N0YXRzICAgICAgPSBpeGdiZV9n
ZXRfZXRodG9vbF9zdGF0cywNCj4gIAkuZ2V0X2NvYWxlc2NlICAgICAgICAgICA9IGl4Z2JlX2dl
dF9jb2FsZXNjZSwNCj4gIAkuc2V0X2NvYWxlc2NlICAgICAgICAgICA9IGl4Z2JlX3NldF9jb2Fs
ZXNjZSwNCj4gKwkuZ2V0X3J4X3JpbmdfY291bnQJPSBpeGdiZV9nZXRfcnhfcmluZ19jb3VudCwN
Cj4gIAkuZ2V0X3J4bmZjCQk9IGl4Z2JlX2dldF9yeG5mYywNCj4gIAkuc2V0X3J4bmZjCQk9IGl4
Z2JlX3NldF9yeG5mYywNCj4gIAkuZ2V0X3J4ZmhfaW5kaXJfc2l6ZQk9IGl4Z2JlX3Jzc19pbmRp
cl9zaXplLA0KPiANCj4gLS0tDQo+IGJhc2UtY29tbWl0OiBiZGU5NzRlZjYyNTY5YTdkYTEyYWE3
MWQxODJhNzYwY2Q2MjIzYzM2DQo+IGNoYW5nZS1pZDogMjAyNTExMTItaXhnYmVfZ3hyaW5ncy02
MWM2ZjcxZDcxMmINCj4gDQo+IEJlc3QgcmVnYXJkcywNCj4gLS0NCj4gQnJlbm8gTGVpdGFvIDxs
ZWl0YW9AZGViaWFuLm9yZz4NCg0KDQpSZXZpZXdlZC1ieTogQWxla3NhbmRyIExva3Rpb25vdiA8
YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+DQo=
