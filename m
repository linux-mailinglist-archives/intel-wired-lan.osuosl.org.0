Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E8F5AC0E08
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 May 2025 16:27:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E6A2D61442;
	Thu, 22 May 2025 14:27:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H9Mticz1HgPS; Thu, 22 May 2025 14:27:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5363C6143C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747924066;
	bh=FK4s5InpDZTLb2X23vQewOyKDrLfTPc6uPhStn3IvS8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ySvh/30Zv8XBS7zXC1jC8BbJrdpvdfk5Mta/bYTqZCrfR/lYGrhkaUr2tpCutaCuy
	 RddX2Jz95r6iQ2b8DIH9RhuGWshFeo9DEJmvDBnJtu96VbXR38BTdg98KeYt95RTEM
	 2seFFsmqJfV8rOCMV2bNUbZE96Mrulo9d8uW/NQNE62ATuELtFydPmEXTPxjdLjjho
	 Ji2JFoli2EHnpAeVJcjag7OwCUqDCTmzemggqDoEesA9kEMBZ8aXKqjZzd4yp0lNr+
	 HMNNR7zGsRBX7cBpHqJmQ296Vn0lkFf8VNHL1qw+oIYIDWQtdmdsObuBCQ8WZWNwYC
	 au3YszthBaeQw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5363C6143C;
	Thu, 22 May 2025 14:27:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id C82A8221
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 14:27:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B926D811E5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 14:27:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OCbrRbxZiTkj for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 May 2025 14:27:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 07D0B80B4E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 07D0B80B4E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 07D0B80B4E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 14:27:43 +0000 (UTC)
X-CSE-ConnectionGUID: peeY4tP9TPqFolSeltcMdA==
X-CSE-MsgGUID: FoPESRVYR1y+tSMKd4tPLg==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="37576898"
X-IronPort-AV: E=Sophos;i="6.15,306,1739865600"; d="scan'208";a="37576898"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 07:27:43 -0700
X-CSE-ConnectionGUID: SuCKnFSPTXirr5SX265CvQ==
X-CSE-MsgGUID: ShTUwaMpQvSO7aN/1aHBVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,306,1739865600"; d="scan'208";a="145335721"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 07:27:42 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 22 May 2025 07:27:41 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 22 May 2025 07:27:41 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Thu, 22 May 2025 07:27:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=u0HzHDMrq/QMYTW9Qdur7JWYiER819URqNxjAJ4hVdZ9pLDB3y7ALgC3kLkm1HRHYVG705W29XVVMTmg+E1adR1HQ4+nNyZxvk/WAqyrLJvWsCdLNAEJq01kWenBVpSdbtJi4Vtju3jeQ2RdUBjjMeZ+zKF4PxP/3l3FqGWNMlOrRBWzErFS3olob/yTAUFxaRtokraIF0Biut0Shp0El+LmsPGctOUju5eS7uSw7vIHiUmYOZpmM9cwgiyqksAOcuiD/de1gyEAddESKn44/sRX4SZyXrBOg651kBWr3cAijblVaeSdcDWapypKEvl7DdSntoKDPzVTBr9lff3Huw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FK4s5InpDZTLb2X23vQewOyKDrLfTPc6uPhStn3IvS8=;
 b=qEKfe+/DHXtUEYD1Serkt+Gqj4onttwWpWfwJFwquU/zMRdJoDgUgndH8HxI+1W88gvyRZsf6bkpeNRAmMHopNwuUHGjptU52zY1i4hY53oy+3QoFK7kNqkJR6dhCb5/wadOev2Q9rfgClApeF5g7H7lV0xALL1B4iSDF5f4Yikj1DjXOJYQxWTM3mYlkGioCM0TvVM8kbzqgWuPjeMtdoD2wVMlORDAxfvKPlArOJSWzX9VtUrTZfVB6Sjy1tWN1pDx+j16EAT18Bu30wwIB2mZTKYlQGKm/OVqalitgTin+zCpFE42mTBUXRurnEV5imj64XSZSM4p4Wqj168Vrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by MW4PR11MB5934.namprd11.prod.outlook.com (2603:10b6:303:189::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.30; Thu, 22 May
 2025 14:27:05 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae%4]) with mapi id 15.20.8746.030; Thu, 22 May 2025
 14:27:05 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, netdev <netdev@vger.kernel.org>
CC: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Kubiak, Michal"
 <michal.kubiak@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Kolacinski, Karol"
 <karol.kolacinski@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Olech, Milena" <milena.olech@intel.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH v4 08/15] ice: clear time_sync_en field
 for E825-C during reprogramming
Thread-Index: AQHbuuwenm/hP7eEsU2USS7jKCL5erPe1PAA
Date: Thu, 22 May 2025 14:27:05 +0000
Message-ID: <IA1PR11MB6241786BFCEAAB2D81FF1EDC8B99A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250501-kk-tspll-improvements-alignment-v4-0-24c83d0ce7a8@intel.com>
 <20250501-kk-tspll-improvements-alignment-v4-8-24c83d0ce7a8@intel.com>
In-Reply-To: <20250501-kk-tspll-improvements-alignment-v4-8-24c83d0ce7a8@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|MW4PR11MB5934:EE_
x-ms-office365-filtering-correlation-id: 5e63a454-d394-44ee-b93c-08dd993cb9c9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?dWhWdHpYQWZ5R1RPQmNxQnovZ25sNW8xbURkVlAvTVR1M0ZObGcrVFRpYStV?=
 =?utf-8?B?cHExZ3R4M0pNcmRhOHFvZHpRS1FlT0ptUXhRWnRMcldLWGhGN00yMjFVWHoy?=
 =?utf-8?B?cW91VzlkMzN5SDFDeWNoK2tqTW0yZTJJTkhsT24vcTcvZXlVbG9OQnlBeHFY?=
 =?utf-8?B?MFM2TkVyS1VRcktIQUZlMDZteVpsOUtiT1pPUVRDMTRqVFAxRk9XeFdOZE1s?=
 =?utf-8?B?UHhOU0xsdXI4TElTZG13WWxoVDh3QkpuOEQ5VTZ5bmp5c25nMHlqcVFURWp0?=
 =?utf-8?B?bFc3QVM5V25FV1R5TWNNdm02R3FOVHo5dHRSbTV0MVUzdkxYWTRtbGkwd2JX?=
 =?utf-8?B?UUkzVXp4MG1uVkdhSGtwY1BQR29kdlpPMVFxWFZzOU5DRGJUTVFBNHpjYk41?=
 =?utf-8?B?RGtzUkMyb1VCY1BmWWg0NVZsYkFaYjRtUUNBQkNZQkZxUmY3RGppQWRzdmpR?=
 =?utf-8?B?bEs3d05SbVhSOUE3Lzhyc1piN2k4OFNEWFhPQmd6emF4KzMvR1ozSStrdFlN?=
 =?utf-8?B?THVOL0hLM0ZDWE4vWTF3UXMyZXJKcnVuTE5wUkdScWx1ZHErQStyM2JKVmcw?=
 =?utf-8?B?SkVJWmt6blBlQ0xOampqTng5SjBBRjdRbmt2enZaOURrcW1zelBZSjd5cHZL?=
 =?utf-8?B?dzlrMUdWUHRJYmx2MC9Dem96TG9jOUFNQUhmK0lDVmcwWnNZRklXZ1Rud0Vl?=
 =?utf-8?B?ZFhGdDQ1b2lCang5d0x1bEVEZExFREhMbjlzaDdReXNWdFRHb1IrMm9xMXVL?=
 =?utf-8?B?ZXFMTnV5OWZBOGhHQ0RNanpoRUJDQ2VCa0FtQzJ6UHhGL1czeDA4NDdlajVQ?=
 =?utf-8?B?VDdjRFkxdXJyZEtveElPMEM5UVhISHBSU2FaNGFwU3hvRHZLMjF5ckFIZmFN?=
 =?utf-8?B?THNFNE5HL1pwWDEyYVM4Ky9LcnZWMkNFMTVYM2hEdG45dzg4Qk1LQzk3bTJC?=
 =?utf-8?B?dzhGRldzKzE4dHVWTm5xM25LMVV5N1NleG1qV2tjYVgyTGxPUEpYR3FhWFBk?=
 =?utf-8?B?U09KZHVYelYyaFVyU1YzSHFLZlVhbEJ4QjN4eDZySFQvQjlUUE5iVDRaV21P?=
 =?utf-8?B?ckJ1b0V6WFdZa1JwZVBDK3RvOThLYlJ2RmJWT0VKbHZ1RGZYL3VRUXpVbC96?=
 =?utf-8?B?ZE0yZU1mWmF5TDJnTC9VN0kzWUJ2RHkzbHNSSnZZNjNhSkxNUC85bGxucnVl?=
 =?utf-8?B?Wm5jVElNY3ZlUzVkODQ4YjcxMG9zenh1L1JCWE9DUHdLb1ZoNC9Fckl0S2RZ?=
 =?utf-8?B?MzhNTlRySnQrWXQwejJiSXdrMHhWM1dCc3pPTURiQnM1NG03Ri9EWHR1UFdr?=
 =?utf-8?B?akltdG1mWGpnVVFYcFE2dWgxM0xjSHlBRlk2aGhLckhMTXhEQ0pvcS9XdWpO?=
 =?utf-8?B?aU84RjhoN3ByZmtzQytsU3ZUZzF2T2xCYzI0bW9PR3dPWHlYY2pEWkRCQ2p5?=
 =?utf-8?B?ZkRzakc1SVVIUVpoL3FMczVtZEhyWVRWYzZvYUFDL0RYbnY2OVBWdUYyYlNV?=
 =?utf-8?B?QkZ4cFJwMGxzaS91bjFNNDdQb0hNSytoVVV4NVh5R3NEelJyTFJSR016NXdS?=
 =?utf-8?B?VEN1KzUyb3NTU0F1UVRHQU9YRDBOK25qQUNiZHk1WmhySlZENmJITjlqSGJl?=
 =?utf-8?B?WkpRQWoxd3haS1JrdEJGZ3dFY0xnUnUwakdqS1BwYXl3b3JXWGlqaTBxb3pO?=
 =?utf-8?B?NGdqQ21SNEtKbUZHZUNKbjFRSllibnFzMkVLL0JwcURwSElNRmdNTmdsQUs5?=
 =?utf-8?B?WlVqMHFMUWpENWxhZGxwaEMrZVpEMTZ0M0VyNHJaYjBaS2tMbDcyZ0RuL1VM?=
 =?utf-8?B?YkNHekh0MCtUbnhrRFQvNXd3NG8wZ3JqYUNlczZQMTFtM3ZUSmdBUFlXM1dO?=
 =?utf-8?B?MnF6VDRqU1VPNWtXUWUzZFFCR1A1Zk43OGhGR3RaVGJmcGlXZUwvVG9PcDUz?=
 =?utf-8?B?T2hkUzVONmd5RUpyelhjdU9LN0RUR3NUSjZwS0Q0T1YzTFpuU0ttZTRIclU3?=
 =?utf-8?Q?NuL7a/+op/XOk2B66UVMV5uhxeUVqY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aXdzdGozLzJiUGRTY0dFY1UySjltM1d6NVBpcGVHYzlSc3c3RHZEc3dWRTFI?=
 =?utf-8?B?Y09YSm11VWd0b2oxK2ZNQk5ZYlNORzllclkrU1lobnJnd085SEVNWDl2MnA0?=
 =?utf-8?B?Q2pCVHdHK2RPVjEvT1plR2dNSWgySjdDZWtpeUttU2JXUWtib0dtbHM0SEdZ?=
 =?utf-8?B?TzZnSkpvNTh5ZlF2NXFnMnRGZDZCTFBUMlY2MHJsVHpkNFhESEE4bGNKUkFy?=
 =?utf-8?B?TUpIZUJtc3phQUFHQVdJZ2J5bVZmUnRFOFl6ZC9TT0ZTYUVoUFVocldReU5v?=
 =?utf-8?B?cm0wY0Q3WllaNHZCWXE2cjVOaFAySzVtUzZWaUhQRXE2TE5LUnhiVzFXeWVv?=
 =?utf-8?B?OE5yeVlDY2U2V2FaSzVWcWNMK3RzVEliVzNnYkpEZkJ2eUlETTJnSHFvQlhX?=
 =?utf-8?B?NEhjYWlsN1RIaHZJdVFTYUpwWm5zQ0cyUGZia0k3QlJBUko0Rm9sYldSTWpB?=
 =?utf-8?B?MUNjL2M5c0RSeldGN3ZUVldtL1UzUU8yaFN6SHg3S3hmMXA2am9Id01OcEgz?=
 =?utf-8?B?c3VjYWhxUjV3aVVjY080UG9PNGhTNmNZVXV5TEF0TjRTeWdXV1pYMjFPZG5y?=
 =?utf-8?B?VkZaK250QitGcUp6Y0xqa3VnVUN2djNDMW1xakhWOXdDWEFtTXpVOXpaNmpW?=
 =?utf-8?B?am9RQjZRUFhtT2RZOWFyMGpPN3JFdHNxRFp2Slk0WGJjTStEZ1d0ek50ak1Y?=
 =?utf-8?B?R3RZQTgreHdSc0pqd280bWtJVXhqdGhMUGRYendtN1hRUlVtZ1FDZXk4bVlO?=
 =?utf-8?B?czdad0pjdDRkajdlUEsrMVdGYml6WndmRkQ4SXhuTW54elh1R1FJOUR4Z0M1?=
 =?utf-8?B?T1J4bDQ3ZitBZERLK0FRNTh1YytmVVEyazNtcGw2VFF6a0g1eS9FeDJQcnRE?=
 =?utf-8?B?OWR4WSs0RzV5dHkxWGdXYlF2c3h1MnJKZDg5YVlKR25aMmQrK0pkdUkycmQz?=
 =?utf-8?B?MXgwRTZod0dmZUpwc081V2MremVJa2xxMkxJZFl1WFZ0bnlpbE5Gcm5qUzB0?=
 =?utf-8?B?MEYxRStlSG03T0VUeUNrRmw5T2lwZmczUWJqbjY2YkxVcTZNNm5iTjhpaVRm?=
 =?utf-8?B?WDZuZTNneExkTDhydHViT0pONjlXdGJTRDBqcVM1YlpxNTB6Ym5tdmd1dWs0?=
 =?utf-8?B?R2txb3NBU1VQMnVGZXJiQlltc3loa3JadUVFdHpKRkkySk1BRC9waHBvdVh0?=
 =?utf-8?B?UUVvSzZBZmFCb2xuM2hJdGttbFNnUlJ2VzlySkpGa080Z01ZMjFYdjVtakh1?=
 =?utf-8?B?c3VWN25DS3l2ZnZick5rT2RhdElIY3Q2MVhMT1RTQUJ1MDFOU01KL2xHWUVO?=
 =?utf-8?B?MU1XVTdpL05aSzFnc3NGQWNjVWVSREZWQzUzbS9IbXp1NEFRbW5YTDE3bWFh?=
 =?utf-8?B?YytiVHludVg1ZlFTSm1SMElCdFQ0TTJMNmkrZVVOVkpkMllQV29LNUhqOEdr?=
 =?utf-8?B?S0JYYit4Q05xdmpFVTkwT1F1Tk5ISHYvV1Rua1V0VG5KS2ZuYzI3RUFHaGlD?=
 =?utf-8?B?bkhqRzJvdkV5Mlk4OGs4aDRFVFFJaUppZDlOcVYvWTByZndISDdIUjZkUUpM?=
 =?utf-8?B?djM1YVB5YllDWFR3eFMra2djazZHVE5vZmp6aFE4cytnOHFYc0szUU1mZGZu?=
 =?utf-8?B?Uk5GSk9xOWUxcmN0L3I4REtTOG5QZVN6eERLYTR6THpHdUV0R1Y2U2dqZWVy?=
 =?utf-8?B?d05FaE5Ob3JudFFoK0dZQzBhRUlKNVdJRk81dEtpYVM0NGQzYjBJVjk1YklV?=
 =?utf-8?B?eU1UQjhKQ2dPREpkQVhwNVJkMEoxV1pucW1YMUJLMUhWS2pKNU9Ma0w1V0Y1?=
 =?utf-8?B?QWdVQ2FxS2QzV0RQTUtCT2VlRkVMMStHOWRvb1BaWmJlbCtoUjExbTd3U2J5?=
 =?utf-8?B?Wkh1UjFOSDMrVEg4clpmU0QwMkxFL29sY2pCNlc0bmsxRGFuUTY2dC9rTWhr?=
 =?utf-8?B?SkdMK0RTK0dabUhVanAxUXB2VWVrWVJkZmhKZkxHTmdLcW0wSU5LQU1DTjRJ?=
 =?utf-8?B?YmpiSDl0RUlrNTV2ZEpGSDdNQ0wvNnkzMjIrSVlFbm5SaHRCNEVwNVZTRDl0?=
 =?utf-8?B?STlTcW4zZVhkM09yS0xad1lFME1Sb1FZeEw5NUVTSXkyeWRYWW40UWp0Yndk?=
 =?utf-8?Q?fFf/LsXLar1jM8UhJCn7+MR7O?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e63a454-d394-44ee-b93c-08dd993cb9c9
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2025 14:27:05.0392 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UubRjt7F5jU78anIzF/TpUPZhEWszOtwpmcivfiwSifx7MkoCUHrVFTCtN0vfRbeL/L82c4ztSD/4mwRJ6QVAw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5934
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747924064; x=1779460064;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FK4s5InpDZTLb2X23vQewOyKDrLfTPc6uPhStn3IvS8=;
 b=Tqrw/q5JqlRHFbOFRM24ZvpQavBU0EO3GnatBSSmNEzRUM36UiHAUL2n
 /ZIOtVXNO2wRIzT3K56Qb3EndgdXMx89lucgOZoA59gHSmcWoLzcRviRd
 FTN20xYO4su1Tk2yLuGxHuDRsCdC+hBBoiw7yqxuLkmkWwsUXh1uq+bf1
 Fe7g8CXl1kdPZyI7T/4zb/0PH7yvT/mQ0gDZWhvNuJ1JYytSFgCnFqWyN
 +ULPGvYmZJOF5Iiys63q9hyaXFcIBfNGv/wA/oxsu5OPIdBYBtxFG84jk
 +qVVO9zb0PHrRM+JvOrXD8e7D7JYJoyn3oe6EXd13v+G89sKNrL7SrE70
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Tqrw/q5J
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 08/15] ice: clear time_sync_en
 field for E825-C during reprogramming
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
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYiBLZWxs
ZXINCj4gU2VudDogMDIgTWF5IDIwMjUgMDQ6MjQNCj4gVG86IEludGVsIFdpcmVkIExBTiA8aW50
ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc+OyBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9u
eS5sLm5ndXllbkBpbnRlbC5jb20+OyBuZXRkZXYgPG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc+DQo+
IENjOiBLZWxsZXIsIEphY29iIEUgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT47IEt1Ymlhaywg
TWljaGFsIDxtaWNoYWwua3ViaWFrQGludGVsLmNvbT47IExva3Rpb25vdiwgQWxla3NhbmRyIDxh
bGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT47IEtvbGFjaW5za2ksIEthcm9sIDxrYXJvbC5r
b2xhY2luc2tpQGludGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcgPHByemVteXNsYXcua2l0
c3plbEBpbnRlbC5jb20+OyBPbGVjaCwgTWlsZW5hIDxtaWxlbmEub2xlY2hAaW50ZWwuY29tPjsg
UGF1bCBNZW56ZWwgPHBtZW56ZWxAbW9sZ2VuLm1wZy5kZT4NCj4gU3ViamVjdDogW0ludGVsLXdp
cmVkLWxhbl0gW1BBVENIIHY0IDA4LzE1XSBpY2U6IGNsZWFyIHRpbWVfc3luY19lbiBmaWVsZCBm
b3IgRTgyNS1DIGR1cmluZyByZXByb2dyYW1taW5nDQo+DQo+IFdoZW4gcHJvZ3JhbW1pbmcgdGhl
IENsb2NrIEdlbmVyYXRpb24gVW5pdCBmb3IgRTI4NS1DIGhhcmR3YXJlLCB3ZSBuZWVkIHRvIGNs
ZWFyIHRoZSB0aW1lX3N5bmNfZW4gYml0IG9mIHRoZSBEV09SRCA5IGJlZm9yZSB3ZSBzZXQgdGhl
IGZyZXF1ZW5jeS4NCj4NCj4gQ28tZGV2ZWxvcGVkLWJ5OiBLYXJvbCBLb2xhY2luc2tpIDxrYXJv
bC5rb2xhY2luc2tpQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogS2Fyb2wgS29sYWNpbnNr
aSA8a2Fyb2wua29sYWNpbnNraUBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEphY29iIEtl
bGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPg0KPiAtLS0NCj4gZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWNlL2ljZV90c3BsbC5jIHwgNiArKysrKysNCj4gMSBmaWxlIGNoYW5nZWQs
IDYgaW5zZXJ0aW9ucygrKQ0KPg0KDQpUZXN0ZWQtYnk6IFJpbml0aGEgUyA8c3gucmluaXRoYUBp
bnRlbC5jb20+IChBIENvbnRpbmdlbnQgd29ya2VyIGF0IEludGVsKQ0KDQo=
