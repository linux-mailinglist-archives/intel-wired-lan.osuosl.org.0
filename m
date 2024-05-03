Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2952C8BA6C0
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 May 2024 07:57:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 94A258347D;
	Fri,  3 May 2024 05:57:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RUafIFT8CMnc; Fri,  3 May 2024 05:57:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6AA4583487
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714715861;
	bh=JJIy17CHv/bkr5BgVQIKs0ZB+kmc0A+lzqOHDtXVHWA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cmaMNd4igMDEEF6IvCaiiHgf7pDX/mZczUn0TdsAk4wN+RTtlTYkyJMaO7Mmpym9H
	 Avadhimq6XmyrPGhKAEBUnGzJkc6Hbi6juox3LBt1fkowRchNiwKY5cf3WzxBiawjI
	 msuT5kQqEVrXenZS7wju4tAeyZjXQXmTGugiK3Vd3kncbFpl2n7rfoupbQVfKp6tdp
	 gm3twZPEQ3/W8Ezs0lM5cxAJKVux7OFtmUZ+uhC/jPPzKl1UJbK/FleTDx5+7bPqLS
	 cArnlcTTqMhvcrhYbo8ikZEroRYonsBDBBUxSz6ZJm66ROVFVXl/iWPXPJI6J8pnlL
	 mb/PZBlvbLO+w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6AA4583487;
	Fri,  3 May 2024 05:57:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C606A1BF85D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2024 05:57:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BAC4883478
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2024 05:57:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C1SMhVPAZCED for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 May 2024 05:57:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C5FE083474
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C5FE083474
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C5FE083474
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2024 05:57:37 +0000 (UTC)
X-CSE-ConnectionGUID: eQJrE4qvTT+14kXIyLIqOw==
X-CSE-MsgGUID: cyLjpPw6TUOY+073fariYQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="14333080"
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="14333080"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2024 22:57:37 -0700
X-CSE-ConnectionGUID: J3wnHtUaQiy+HjFJixCCaA==
X-CSE-MsgGUID: iWndQ8tgS6yMhjzMz7vLcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="27464543"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 May 2024 22:57:36 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 2 May 2024 22:57:35 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 2 May 2024 22:57:35 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 2 May 2024 22:57:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=avqksZQ+aYi9Dx+xKeCulpdYYhKovS32htKI3wGSeSWs90TRXmKy4MBk9sVICUmDwDBnNIRj61ZOSNaA+BVd5vhV79iqyWn5c1ZdmsptT1dcMu0rZ7+ntPBe9pBk9GNbZh2PHl82d2ScQqYKQocsP4Js5isoI0E/uMG3Y15RJ4FqVno+fmE7f3TMbqtsR2yZJoPXLAZj0SPcenK3/1L5znBAv96ca4VuSJs10iyQ0/CgB7H4cRF842+/usuLL88+puuuQTSJTzhlm+F4AVXbdAnbsGCd4Sx3PQ2q9/SmSTv/CqNKyco0QvVomqZc6YxOsWLahhGwk0wwHpSPDromIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JJIy17CHv/bkr5BgVQIKs0ZB+kmc0A+lzqOHDtXVHWA=;
 b=UyGroEFuESCnwm67AIXKSt/kJpkTxV6SQCgmWTnMGsv/83fLasrNzMfKabuWMGC2oE9HxuP3ULANcgJSLTMrlXNkKMeGMClkGJXBJHU4da/972IVCeI0UEbDPpOC4bpm0dRDUvOE04bAThgQjFI5yTFuLOOI5yahzNNboJbMljMcnb+HTCcAAxwrOOn5flgP3DMsYcfAFu2lWGWrV2uBuakBiDQrVJQG4RJ3yJbpAIIXOVQw7zrE6/bXZN3nVqWZx6p1GB4w1TOgsC3q4ECP7U8Ztd+jbwDjnOVOEG/4yr9M9UfUp28J57W5+txpq8S2bTroWy8BVaj3U/M7Kma1JA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by MW3PR11MB4700.namprd11.prod.outlook.com (2603:10b6:303:2d::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.25; Fri, 3 May
 2024 05:57:33 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b%3]) with mapi id 15.20.7544.029; Fri, 3 May 2024
 05:57:33 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: =?utf-8?B?QXNiasO4cm4gU2xvdGggVMO4bm5lc2Vu?= <ast@fiberby.net>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] ice: flower: validate control
 flags
Thread-Index: AQHakA4WoMrCetPpSkCXQWbM721odbGFG3mA
Date: Fri, 3 May 2024 05:57:33 +0000
Message-ID: <PH0PR11MB50139E3BE2709C5BE7F4AC78961F2@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20240416144331.15336-1-ast@fiberby.net>
In-Reply-To: <20240416144331.15336-1-ast@fiberby.net>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|MW3PR11MB4700:EE_
x-ms-office365-filtering-correlation-id: 7aadecca-efd4-4a7c-92ea-08dc6b35ed0b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|366007|1800799015|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?Q3crTWxmalRQMFRFaWdHWEVLR0toamxzMFcxYnY2NUtqSUkxdzFtZ3E3TnY1?=
 =?utf-8?B?Z0QxdEwybzdHQmxhVzF0V1hWQndvMDVvRS9zYjBCZ1BqaGJrLzJwSnp4OUU0?=
 =?utf-8?B?amNleGVDMTloL1RWSGhsR0h0a0dtdWMvWjhTbkhrTjgrTWR4d2ovWDRFS21v?=
 =?utf-8?B?QzhJL1pueDZ3MjJEbnBlMkdndUZqbnVvL1hxS0VKak5pUXRJdUxpUUZRVmk2?=
 =?utf-8?B?T25CT0FRS2RwTkNUVHorN3hOck1yb21xeVVQOVFONVFvZnVMbGoxenp3dzA2?=
 =?utf-8?B?b2VEcVlPRjVnTWJrTUV1ZnBybE9GV3hzU1pvT0UvcnZZWVAwMm00V0RaejJs?=
 =?utf-8?B?ZjNYY0xTMzBqQ1A2MENhK1ZEWEhnajU0WlRxRTBBRWFPRHptemtSSlkrK0RX?=
 =?utf-8?B?QUl1WnhpdDNzaWh1QkdMQitlUkZqWXVNNGpoR0lGZGdoS0JrTUdHQUdoN0FU?=
 =?utf-8?B?ZXh5cGJUZVhlNDE2WUs2WFZxVGFqSVg0Tm5ac1o0N2lSQ3RMU0dSSGVuMGRa?=
 =?utf-8?B?d3Vxa0lCRUVXNDRLUDlRc1VVOHQxQVJFWm9GTnltSzhmRjJSU2k2cEo5aGNt?=
 =?utf-8?B?M09lM2ZpM3VlWDdodU5iQkhzcUZjSjIzdEVMS3NiTjROQ09NcWJYaHB3WXJD?=
 =?utf-8?B?NVZpNzlzMVNOc2ovQ3ZLZEp6SVpRazBGbEtsNGJ0QUpXZlhoY2RETnlTdVdw?=
 =?utf-8?B?eEo2VGZtbEJxbWJmV1BFazJuUGVadExRUk03UWdUcUxVNjkycFNvU2pXVHl3?=
 =?utf-8?B?UHlRYjZCcjlEeXduL0NrVEVuM0JHRmRLZ2ViSFlxUEJHTXhzb292aitPMEFI?=
 =?utf-8?B?WFFXY1lESFJ1dTNHTE0vYW00TnlSWnF3MVEwTUVxM1crR2VmUVQzQTBqbCtL?=
 =?utf-8?B?L0cxNFBCTXBJL3piaENaamhSSkQ3TTlYOFhhT2NYY0Q5cFV2Q0g2RldvV1Ar?=
 =?utf-8?B?TFQ3TkVicm5aSllWMlUzVWt5WXpEMCt4R085YmE4S1dKTjNaY0t2RWtFVTYz?=
 =?utf-8?B?N00vb3dkN3VtVWREVVZHeHQ3aCs3R1BVeXkvVkozNHJyU1ppVlc4WmpDM2NK?=
 =?utf-8?B?V1YyOGxyRXFESjlCcWJqempUWTJHUU9NQk9ad3FuQkxzdm9yUDV4dFNic09C?=
 =?utf-8?B?SnRaOU02UGlvZHpuWEZRemRHYnZyQTJ4VHlWa0VQQ2pSdU5BdDRGNXNQOW8w?=
 =?utf-8?B?K2JBdlNhWFdxQ1IzckxDc28yaHdvek5La1c1N25mSm9yV001THJlcVZ1SUR0?=
 =?utf-8?B?L25sZHFVZzZHMENGL0txNWxudjlLenFvS29lTXNYZlhZYytReXJEb0FvdThZ?=
 =?utf-8?B?ZlF6V0Y3Rmw5R1MyUmdMWEJ5ajZyTnl0OGdNdG9NT0ZzREpXZ1dHNVdsYVFT?=
 =?utf-8?B?eTZRbkdBZ3RvQTN5Vy9McFZIWHlPRVVCZXNheGUzbWlaRm1ob3NXNkZMclhO?=
 =?utf-8?B?Zng0MFlNeElrRDhSYkNRS1dRTnM3TmlxMHEwUTNPcjFSazM1ckpjek9obENt?=
 =?utf-8?B?NitYK2R0K1UxZUJDNEZHM2xaZE1nNDRKN2dwRjVhVjFqbjZzelBXUjl3cW1x?=
 =?utf-8?B?MFR3Y1BaUFgvN3hKL2ZxTEczSVFWcjBUSTBZd3RyWjBCSFQ4ekF1aG1aR1Fn?=
 =?utf-8?B?VFQ5WkJwWHF1ZjAvM0loTWtnWCtCU3VCeW0rcTg0ajVVTE1aZWVYSjhiODMv?=
 =?utf-8?B?SXhDdmQrTWV6aEpCSEp0ZTNKVGlrWVV3VHo4OEgwMlBoT0svUVEvSE1rUVhs?=
 =?utf-8?B?VmlIZ1RZNVFGR1pLTTAzRHMxc3ZZb0xxWFV6NE01RStvMDV4OGpJSnA5NG9Q?=
 =?utf-8?B?dUx4d2ErcDRzWFEvVFoydz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UjExYUMzck9sY3NrbEdrRjVSMVYwSC9Ba2FtQVJSZWNtR3dFcWNGYWY1VjV6?=
 =?utf-8?B?Y2xPa25FREtPTjhzY1YySEdkQVRRZzJuOTkzWEo3WVYveFRCVi9Kc05jeGkz?=
 =?utf-8?B?L21OOU9zdlZEb3hZa2Y4QVI2T1R6cEtNR1Nxc1E3b01ienpvcVIxWUIwVTlX?=
 =?utf-8?B?cDBqRDRwMmREaXE2YVpFK3lIMHNaYStlSFFGdlFYSWRacEQ3VUN3SXdGak4z?=
 =?utf-8?B?RXdHclhub1F3WWE2N1I1VFhHMitLMk1ObXhIQjlrKzVSVUNkcHl4OVZJejdw?=
 =?utf-8?B?Z1RBa3hQRklmT0U5WGh4aDlKem9DenQxcWZzbVFPREhybjB5Y0FvVEt3V3ps?=
 =?utf-8?B?NEt6ZkxMaHZleUNOR1JkRnNpOVVDd0VVc0d6eG1qR1QydGZNd0ZvL3c0OUVU?=
 =?utf-8?B?d2ljUHlON0RERFF4TGpFNkJnUlZtVzVFVHloNUtmYm9SRE8rS0JCWWh2R1dP?=
 =?utf-8?B?ZlRkNVFudTVCUHZIQURWSHpXeVI1NVR2SGJ4OGIxUTg4bFVubjFwRnpJbmMz?=
 =?utf-8?B?SjEyQktBUUVzVG0zU1g0RGVaeWU3ZjdCaU9pZTFjL085NlY4VnYyR3pkS0dT?=
 =?utf-8?B?cU94QWZGaFJXdjNFMlhOamxIVm4zNDdaS09XWExPNVdDbDRtNmcvVCtKeUdF?=
 =?utf-8?B?MkRlM2U2bElrU1dKYWFYTTVMYUg4Vk1NeVpnZDlIcU9QR2FZVXhtVWpXY1l3?=
 =?utf-8?B?Sytad2pONEtFSmF6YUNHOHNrbUVWb2J3NTMxWlJ6RUxKaHFIYitrRGgzNFAy?=
 =?utf-8?B?MEJnWnZ3M3d2R1k3aVlSclVJVGRpbk9IQ1ZUQko3M3owckUrZUs0UTNrM3Nj?=
 =?utf-8?B?eThqSGo2MFgxSm40UGdOeEtZbEdra0hlc2lsbGhLYjdNVnhTbzIzUTQvV2Yw?=
 =?utf-8?B?U3kxY0w4T0VuRHdzZTg0Ty8xZDQrWTU3S2dCek1acHRmS0dYQ1JqNlBBMVlm?=
 =?utf-8?B?VElyVXYzcnozcTUxN01pSGFWN2xadTcvNjczZHE2di9pWFhjMkNsNHN6WmNm?=
 =?utf-8?B?clFRZGoxZ284d3VwMzhFa0NSdXJGd0J0ZVFjRDE2QmhlV2xLVGp1Q0xxM2xw?=
 =?utf-8?B?ZVd1OW04Q3BEaVcyOTVKaWt3Y2FNcjVEZVlod1lwSXIyTUVkTHJKTmluT1Vn?=
 =?utf-8?B?VFlrTHdqaytCOHVJOWlLUDhOUTZ2Mm03UlFaNm01M0xjemxUN1Q1OWY4WXIx?=
 =?utf-8?B?OXR1aVpEMnR2QVladHhHQVczOHgxMTYzTlg3eFZtVkdxQ1UxcGZiOVFWd2Vr?=
 =?utf-8?B?NUVRbU9oek43Z2JhYWRmeXZYVmVRYVpvTTk4d2E3MUJnNHN5cVhoMTVSa1Nx?=
 =?utf-8?B?TWp1bVhlZzFJbFVkamhvT0d5ZkVqOHRUS25HbkI3WFlvZmFLdUt2TEZLUmE3?=
 =?utf-8?B?NktDYnFEZ2VqaUFoaU1KNVBab054UlBVZlc1OGdOaU5JekJZUDNLU3BHUHRr?=
 =?utf-8?B?aWRtTmFhdFovb3k2S1cwREppWmovV0NXNDRCdE1nV0lVMk1TMVF4YitvdFMv?=
 =?utf-8?B?YThNZ0ZCRFk3cHBFN0E3UEcvZU9iaDB4NzRic1gxeUVPV2t3aHU2czN3N0ZV?=
 =?utf-8?B?VEVhQXFhZ1p4VVBsVEFXZ3I2VEU0QmtlWmo5M0haalJ1MzhjK0k4SFJOVE1X?=
 =?utf-8?B?U3Y4bjRPWUlheHYxR2lweHBJaGxMb002UFd3NEZuNngwaDEvQkJPVWF4aFFL?=
 =?utf-8?B?OTNxNWVlVlhLT2lYUFRHcUd3TXJwaUw3bEI2c256b1JSRStLc3RveU1XcGRn?=
 =?utf-8?B?clp4cGtjZzJSRGRXN0piblRBVjFHME5tS1E2dk9NRC9zaXdrd1BldzdVcmsx?=
 =?utf-8?B?REs0c2JVN1JDQ2phN3k5T2RBU0RlMmhQTkJTaXN3Z0VUbzBvSUtJMWI3K1Ir?=
 =?utf-8?B?ZjZWNnlIcmt2NG1EcEZQMkdLNGgzYWVvajg0d0hvMW1sNFFocnpPb0Ird1Qz?=
 =?utf-8?B?WWJkQVhFWk0wcGNhK3NZZ05oRHRCSXFIOEV5dXlqSVhwQ2hiUkZLK1NCeUFi?=
 =?utf-8?B?aTFsaW82aEk0L0VPSGpsTnlUWDI3NG1XYnVwU0JJNTlRYWZKekxoWDZERVhG?=
 =?utf-8?B?OU1UOURUK1RPeWxjalpxaW83dysraEQ0VGpka3YvN0ZHc1c2aWVZSms2ZU54?=
 =?utf-8?B?ZDB3MExZZ1d2YU5aYk1Hc0EzY0gzSHFVNDFIS09GUjlRSkkzck9KN2RER1BS?=
 =?utf-8?B?dlE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7aadecca-efd4-4a7c-92ea-08dc6b35ed0b
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 May 2024 05:57:33.4132 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: slBCczu2IzNL0I2KfVA3YTEd7EoqiSGmKZHxY1hvQnKWk0kq25mLtc7iKfwLh1ZknRupzhqg0xvh+VP1JHB3Z2ebtD9wvSHyz4eiiL3FGCo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4700
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714715858; x=1746251858;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JJIy17CHv/bkr5BgVQIKs0ZB+kmc0A+lzqOHDtXVHWA=;
 b=BTaD/gc4HqzpRaALgU6Z3V54G/IQxALARsOzDoziSQphIoZisMJwVRhJ
 k8HCXniPpJNf8HRWayfHrpqX2fiURY3LZPr2KV4on5YLCEhTkTuPMVtnZ
 1lN0thVkl3r5j5n+C2q+dzEJ+btjk1SyGflLKLp6IWyYwKE4pRStFsOG7
 s85GiikfRxhILS3SO+vkk+R/UVlB1K7mS5IyAjMemz2AdMDC8scukYkbl
 XZqx2Ty+RPCbCPY5pz2vBy4l6TKhwxYMorSJsDdq7liUvOZsPdIT+p/eJ
 x6sIOPGixG1kbO0KzmHlk9hMobK7NtGxzQpHtGXBVYrOdxCnddvu7ntvv
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BTaD/gc4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: flower: validate
 control flags
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZg0KPiBBc2Jqw7hy
biBTbG90aCBUw7hubmVzZW4NCj4gU2VudDogVHVlc2RheSwgQXByaWwgMTYsIDIwMjQgODoxNCBQ
TQ0KPiBUbzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmcNCj4gQ2M6IG5ldGRldkB2
Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IEVyaWMgRHVtYXpl
dA0KPiA8ZWR1bWF6ZXRAZ29vZ2xlLmNvbT47IE5ndXllbiwgQW50aG9ueSBMDQo+IDxhbnRob255
Lmwubmd1eWVuQGludGVsLmNvbT47IEFzYmrDuHJuIFNsb3RoIFTDuG5uZXNlbiA8YXN0QGZpYmVy
YnkubmV0PjsNCj4gSmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz47IFBhb2xvIEFiZW5p
IDxwYWJlbmlAcmVkaGF0LmNvbT47DQo+IERhdmlkIFMuIE1pbGxlciA8ZGF2ZW1AZGF2ZW1sb2Z0
Lm5ldD4NCj4gU3ViamVjdDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIGl3bC1uZXh0XSBpY2U6
IGZsb3dlcjogdmFsaWRhdGUgY29udHJvbCBmbGFncw0KPiANCj4gVGhpcyBkcml2ZXIgY3VycmVu
dGx5IGRvZXNuJ3Qgc3VwcG9ydCBhbnkgY29udHJvbCBmbGFncy4NCj4gDQo+IFVzZSBmbG93X3J1
bGVfaGFzX2NvbnRyb2xfZmxhZ3MoKSB0byBjaGVjayBmb3IgY29udHJvbCBmbGFncywgc3VjaCBh
cyBjYW4gYmUNCj4gc2V0IHRocm91Z2ggYHRjIGZsb3dlciAuLi4gaXBfZmxhZ3MgZnJhZ2AuDQo+
IA0KPiBJbiBjYXNlIGFueSBjb250cm9sIGZsYWdzIGFyZSBtYXNrZWQsIGZsb3dfcnVsZV9oYXNf
Y29udHJvbF9mbGFncygpIHNldHMgYSBOTA0KPiBleHRlbmRlZCBlcnJvciBtZXNzYWdlLCBhbmQg
d2UgcmV0dXJuIC1FT1BOT1RTVVBQLg0KPiANCj4gT25seSBjb21waWxlLXRlc3RlZC4NCj4gDQo+
IFNpZ25lZC1vZmYtYnk6IEFzYmrDuHJuIFNsb3RoIFTDuG5uZXNlbiA8YXN0QGZpYmVyYnkubmV0
Pg0KPiAtLS0NCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdGNfbGliLmMg
fCA0ICsrKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykNCj4gDQoNCkhpLA0K
DQpJIGhhdmUgdGVzdGVkIHRoaXMgcGF0Y2ggaW4gdXBzdHJlYW0ga2VybmVsIC0gNi45LjAtcmM1
KyBhbmQgb2JzZXJ2aW5nIG5vIGVmZmVjdCB3aGlsZSBhZGRpbmcgdGMgZmxvdyBydWxlIHdpdGgg
Y29udHJvbCBmbGFncy4NCidOb3Qgc3VwcG9ydGVkJyBlcnJvciBpcyBub3Qgc2hvd24gd2hpbGUg
YWRkaW5nIHRoZSBiZWxvdyB0YyBydWxlLg0KDQpbcm9vdEBjYmwtbWFyaW5lciB+XSMgdGMgcWRp
c2MgYWRkIGRldiBlbnM1ZjBucDAgaW5ncmVzcw0KW3Jvb3RAY2JsLW1hcmluZXIgfl0jIA0KW3Jv
b3RAY2JsLW1hcmluZXIgfl0jIHRjIGZpbHRlciBhZGQgZGV2IGVuczVmMG5wMCBpbmdyZXNzIHBy
b3RvY29sIGlwIGZsb3dlciBpcF9mbGFncyBmcmFnL2ZpcnN0ZnJhZyBhY3Rpb24gZHJvcA0KW3Jv
b3RAY2JsLW1hcmluZXIgfl0jIA0KW3Jvb3RAY2JsLW1hcmluZXIgfl0jIGV0aHRvb2wgLWkgZW5z
NWYwbnAwDQpkcml2ZXI6IGljZQ0KdmVyc2lvbjogNi45LjAtcmM1Kw0KZmlybXdhcmUtdmVyc2lv
bjogNC40MCAweDgwMDFjOTY3IDEuMzUzNC4wDQpleHBhbnNpb24tcm9tLXZlcnNpb246IA0KYnVz
LWluZm86IDAwMDA6YjE6MDAuMA0Kc3VwcG9ydHMtc3RhdGlzdGljczogeWVzDQpzdXBwb3J0cy10
ZXN0OiB5ZXMNCnN1cHBvcnRzLWVlcHJvbS1hY2Nlc3M6IHllcw0Kc3VwcG9ydHMtcmVnaXN0ZXIt
ZHVtcDogeWVzDQpzdXBwb3J0cy1wcml2LWZsYWdzOiB5ZXMNCg0KU2FtZSBiZWhhdmlvciBpcyBv
YnNlcnZlZCB3aXRoIGlhdmYgZHJpdmVyIG9uIFZGIGFzIHdlbGwuDQoNClJlZ2FyZHMsDQpTdWph
aSBCDQo=
