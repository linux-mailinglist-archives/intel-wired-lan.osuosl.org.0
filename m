Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF0AA2EC19
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Feb 2025 13:00:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0D05440906;
	Mon, 10 Feb 2025 12:00:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X7EvBkdjaDfL; Mon, 10 Feb 2025 12:00:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2E76F4088F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739188816;
	bh=85ceG/3tuDZZkBc/1Q/XFi0viFQ/E5k4F1XWBJARsSs=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iuOjJS7T9+8mDKT+N1WGuug8+0AYOnSRzgiO+oMuKqCYQuGc+CVzt6KlsKBOhxfCR
	 uBiwixlhlDLVbOZ0XDY8Q8JRStH0PmFsVKm75NERMWyLedz/AnQHB5SfPfO/+z0See
	 HPbb6b2IZQKsxVcW1rey/BbEo1uo877Nt6SF0OgLr7Vcjbm6NLDvmLTqDFhX2J1qt+
	 RXOsVxwjQwTOukmHNFzJQ2T5QPhfBD2Qsf2VklsshvORsxZyFrDlkIR78WsyOrdh//
	 eOiP+/uOa/WJJ2Ndg/DHkhCPEG2CYoKFND8Z4N0/86lXMyg4MT/20OHxltq70pZX2C
	 Tuja3oLAeU8Aw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2E76F4088F;
	Mon, 10 Feb 2025 12:00:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8B9EB199
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 12:00:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 86686407CC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 12:00:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zXk8cZduFrMe for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Feb 2025 12:00:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 55241408E7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 55241408E7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 55241408E7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 12:00:11 +0000 (UTC)
X-CSE-ConnectionGUID: eAVbaxSpSWK2TBJYweXGvw==
X-CSE-MsgGUID: p/LZxg6+Sl+n50AQd+BVIw==
X-IronPort-AV: E=McAfee;i="6700,10204,11340"; a="39893153"
X-IronPort-AV: E=Sophos;i="6.13,274,1732608000"; d="scan'208";a="39893153"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 04:00:10 -0800
X-CSE-ConnectionGUID: 6F9bJ7ENRuKs7ZoIzbbgGA==
X-CSE-MsgGUID: H/IaIETtSMSt2oWwRdblcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,274,1732608000"; d="scan'208";a="112697922"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Feb 2025 04:00:08 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 10 Feb 2025 04:00:03 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 10 Feb 2025 04:00:03 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 10 Feb 2025 04:00:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uP9HOQwvKhomUVVo0NqpjkTe8fPtysy4I+n7Xc7VZKIiBjlRZVZzsfWrLInrBxHvz0Ck5D86ONQLMsaQFHvlmo84YqGdO2jSXQ2FN/Ou9BttV5coTOHNISDLosCO1AnX7sj6uZJKrLJbZlsGdJFLf0uypa3d4ajfBU/tWV1scWNWEdr/U1oaEfgTygXgWGdlSCIX33PPEjCFMZFK5dEurjG45HlbCa9okH6gXn1BQm8C/VbL0v6oCOmPl+Ve4cQ56Tby0K5e0kdH0E0SEPgltJJ4AIcYmIbMZCuYXemu9PnTPiKcI5Vr9pTgkB0Xtho+1qX9iPS3tm4hxy9zH+aq7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=85ceG/3tuDZZkBc/1Q/XFi0viFQ/E5k4F1XWBJARsSs=;
 b=NljI93MdWq0rhAvu2tV6LD7xt0a4b2D+EQk2hbDfINWwbXvGXNhhKl7QF3QFqIwUMF7liHlSFPs7weyc58xO0zs3OBG4FON7rJzT9aPodch17ownLN3e2f2BJWEMRDFsNUqXcKYHPdj2fBHMjz8oiPLmT57mYqKUmm+0mWwLE3NjXBjpwsFXY3Wijaf7Msojti3FmL8uz1LW9eiNaA/xeabKRX3A4ABWpsgUb8lRHjJbd8tZWkCB2SXgPZc+ZdymSXWm9HmzjKgCCZqXYcXhkYs/Emuw29SsUD+gT1BKstsIECcsUI+Wd4HHRxHnYpDioEc/xP4g3V5yAv+dYS6G4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7785.namprd11.prod.outlook.com (2603:10b6:8:f1::8) by
 CH0PR11MB8143.namprd11.prod.outlook.com (2603:10b6:610:193::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.17; Mon, 10 Feb
 2025 11:59:19 +0000
Received: from DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::7a4d:ceff:b32a:ed18]) by DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::7a4d:ceff:b32a:ed18%6]) with mapi id 15.20.8422.010; Mon, 10 Feb 2025
 11:59:19 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "horms@kernel.org" <horms@kernel.org>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Polchlopek, Mateusz"
 <mateusz.polchlopek@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3] ixgbe: add support for
 thermal sensor event reception
Thread-Index: AQHbe6oYUcw9MSBhO0m17sppypxQfrNAadMAgAACY5A=
Date: Mon, 10 Feb 2025 11:59:19 +0000
Message-ID: <DS0PR11MB77854D8F8DEEE0A44BB0E17EF0F22@DS0PR11MB7785.namprd11.prod.outlook.com>
References: <20250210104017.62838-1-jedrzej.jagielski@intel.com>
 <87644679-1f6c-45f4-b9fd-eff1a5117b7b@molgen.mpg.de>
In-Reply-To: <87644679-1f6c-45f4-b9fd-eff1a5117b7b@molgen.mpg.de>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7785:EE_|CH0PR11MB8143:EE_
x-ms-office365-filtering-correlation-id: 6bb6b09e-6f4c-4dea-3f4e-08dd49ca59c8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?UHl2N0ZVc3NkeDQ4cGdFNjlzTlFlK2hPRit1eGM4cmVVWXRyUWh1bVpRWklK?=
 =?utf-8?B?SUx2TXI5b3dVbUd1KzJPV3lZNytXdFU0RXJoMXE4cHNsdlVoM1VVUEVvWDA2?=
 =?utf-8?B?SHI4Tk1HZTdWdFBhNEtrdG5PY0JoUGlWbHpnSnRraE83WEMxc0czeXo4Y3dE?=
 =?utf-8?B?SFNjbkdRMnRaVDFjTjVEbFBZVys2RnV3ODU4K1BMd3p5WXhNU0xLQ280Qjhm?=
 =?utf-8?B?aHUxOGZJYjZ6cG5WNk1SZnM5WldyTmh0YXVvMUZ5UWwzaTBXOU1rOHQwYjdh?=
 =?utf-8?B?dWl0QW4rczA2QW1QaVEwUDdmb29YU0hselhsbFp3OGFlSmp2SkxwNzdWNjZQ?=
 =?utf-8?B?TDVOQU94Q25JamlGaWtCZ21SblFPaE54SFVTL1dZaE5HUG9jU29neUxxTGx1?=
 =?utf-8?B?TDFJVnFPWFdGcEhIdXU4azNkc2w4ZkpWWUg4Q3UwT3VscWRiWXNWMCs4cWJ1?=
 =?utf-8?B?L3p4Z09KOUhsaG5mRCtUQVRkci8xM0VaY3EzTUxVTmpFVUlVTVo3Q2huaTJq?=
 =?utf-8?B?YTZiWDB5eDcrZC9Qdlp2U09KbHBDZm5JTmtyb3k2ODhqNk8vak5sWExiQlht?=
 =?utf-8?B?VWVzY2M5eGJuQktxNEk1UGpqL3d6TEpiR25zWE9YaGxmcUloWWtwakZ3RDl5?=
 =?utf-8?B?UG9QL3liSGlLL2JBbTVYVm9VeW54cTRMakp5QXZxRHhEQVByS1NWK1NsZEJt?=
 =?utf-8?B?SzhIT1FnU3djTmt3b0JSeXRVRGZyY2I0VTJ3VkpLWm40Qk8ycThEMndkRUt6?=
 =?utf-8?B?blNBUnpTbjYvZjUxS2t2N0JFbmg1NlZaenQ2YVltUm9rMk5DeXpZS2RaUGlp?=
 =?utf-8?B?MlpuTmVMdTNFbFB1eUNWeHhKQ2ZpUnp1TUhCN1NiY1R6SUJuUzZ3ZjFjbTRp?=
 =?utf-8?B?WU1ha2ZEb0c2dnRhM1Z0aTYvTzJJamNtZm5nZTlJVE5kOUJBekRtSGhrTGFS?=
 =?utf-8?B?bVh1eVR4NDZIVEZobHJhdFRhZnJQNmd3SkMvb2oxbEo0UVFmN1liNTFreWtZ?=
 =?utf-8?B?NjY5TE13T2FmZFNBMDBERjFBTE03MER3V0h2ajBCRVIvdjEyWXB1MDRSZXpk?=
 =?utf-8?B?TGRNaDBkNlpHTHJmYmU0eVlybzJsdDNvdFBSWCt1bDRCR3prY3BVd2RBUTJo?=
 =?utf-8?B?ZUxmWEo0SmN1elFONkJjZkhyQ2V0ZWRuc0F1Sm9sam4xTktLQ2VIZWpLcWoy?=
 =?utf-8?B?NVNiTDhkK0FUWHlZaXBGL2xpSW8zaklrNVhhM1ZqRFAyYmhDc25INzgyNGgz?=
 =?utf-8?B?T1IvVnU4T3J5TGJ3NUl3TnpsZ1A1aHFSMFAzamZ2dXNpeGpGc2daZzFSdE1h?=
 =?utf-8?B?SXN4WW5QcGtvYTEzdHkwekdRclRpWHdBeklzYU9STWc4b0U3TFU0V3FxcHUx?=
 =?utf-8?B?VWhEait6SjdnYnJKaWhLcXVya2NlV2htaHJRMllGZUVuYzhDOU1Ka2JOSUs5?=
 =?utf-8?B?bkxDaDBYUTFtWmR3N3UyZEVHd1pEWWhycFRoMFNYYXc2NlVtK2M2ODlQQ3Fl?=
 =?utf-8?B?MHBObjczN3BNRUdxTUxrRm9VVGlXNnZvOFIyTHpaanV6UTBMbnpkT1hLai9E?=
 =?utf-8?B?NnpvTUlDTk45YXVIQlQ0M0tmbmdwbStOem9NYXB6WEJ2MXpvMGFYajVPc0xD?=
 =?utf-8?B?UmIwMm1xcDVKR21JeDRVb2RwMmtZOUlYbFNQTU5ySUlEaW5ra2JyWTRpenVF?=
 =?utf-8?B?dVcvSkFqSUllOEFYQ2J6elYrM3p5Wi8wb0VyQUliVXk1VG01UkdaRVY2cEFn?=
 =?utf-8?B?Z0JqZmtWNWRoMnJRTnhDbEFxTlhHSnk5cjRJZytRSVRmZ1UvRzJYaVNoTTBM?=
 =?utf-8?B?MHpwNEsrMC85c2REdTVwb0N1blhCMHhXZXZjT2lOeGRUTXJtS1ZXaEUyWXhm?=
 =?utf-8?B?Z0JreGl2OUlUK0hPQkRZLzU2WExHaUFoK0lWeko5elMwTHFnWmI0YmsyL0tp?=
 =?utf-8?Q?qZbmMXy66VPJBRVEgCQwEBUYeJRyng0q?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7785.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Uk0zZ2lIYU1HWEJjVTZ4NVZldTV4Qlh5QjZKNGJGcjRVTHIveXN4R1MyS0FW?=
 =?utf-8?B?ck1CdUxBQmdsMUNZbzBXTmc3VkQyYUxnYmdST0VvYjJkMS9Nb3BtbFdaK2Zh?=
 =?utf-8?B?Q3RXLzRtU3RIRDlWa1NHV2krWkVqaGlVRjk2NjNnSzhUYzB1S0JyY1IzaU96?=
 =?utf-8?B?N1NxVjhvZjlqNDg4bTdESVdvc2llVDZKejZOcGduak5HdmxtT3ZQVDQ3YUFG?=
 =?utf-8?B?QU13b0Y1K3NyOFdIUGMxV1l0ODhIZU01RTZwOWZ2YjVtWGlleHVlTTBiZTc1?=
 =?utf-8?B?MmdnNlFzODNJSWJuZjlLZ3VGTFo5QnhWWFVneFVpbGlGczgwNWJFRnlnVkwx?=
 =?utf-8?B?RldpTlZvU3pRcHJMYWFaS1loQVp5eittdnFHQkNjTGo3WkdLSVNiT0trcEoy?=
 =?utf-8?B?UGxsbU80d1BoRVZuenU1SmRycW0xaTR1c1BBUnRyRGFxZTJJWFJrUmRxL1VG?=
 =?utf-8?B?UElxQlhtZlN6TFhKalRobjNHTzVvcVcyalBpaG1BelJiS0p3UUJTUVg2cUk4?=
 =?utf-8?B?ZVgyQnN3ZXBQbEpyVTlpMzBrdEF2RGtPWWlRZTBkUmI4YWhKSzY4MmxnZmhh?=
 =?utf-8?B?emhBZzNiRjRreE9Na3UrcTBaeUJFa2FRbng1eWdUMC96OUkrV1daNmJjWFBP?=
 =?utf-8?B?dGVONDBmZlVONmtTY3ZDc0t2czB4NlVpSmQ2dGRkVU82T05wUUxJU3Y3c21m?=
 =?utf-8?B?cElnLzVWSDg0WkVmQTZpU1dOUnpTSmVsekNKSjVCN2hqZkJLblBuWTZ3anRL?=
 =?utf-8?B?cHFZT1VBVXJ0S3JVL1JkQk1ZNDRRemRJMlRCOGhQWmJ3aWhwWVdsZkNLVmxt?=
 =?utf-8?B?ejNsRXFSQVVGT0ZkQTZlU2pJNzNoN2l1Zlgyb2hsSHl5djdVSjNBa05ENzNv?=
 =?utf-8?B?ODQ3cFhPUVZ3TEVxQUE3Y0I5STdSS2FYVlVGUm8vTUc1clVjUVh4Ly81Qkhy?=
 =?utf-8?B?anZrdFFDRXZhNzIweUVUNUZCWWxSSzNuV2JNNkF4bTJOdTBna1N1dXE5U21o?=
 =?utf-8?B?c2xaa1RvclgxM2RpSXpyV2M3YkFaVnhTeFJOdFM4aWE1SVYrTmpTdHh2cFQy?=
 =?utf-8?B?WHljRTBQVWpoTVdGYytteS9sRGFlRmhhUVNMTlNqVmhvOWNMY3JoNzMwbVlo?=
 =?utf-8?B?ZW5WOHdSWitWL1pRQ3hxMWJSaE9FaGRpdHgvRFVCQ0dNNXlMNXNsblVCOEZy?=
 =?utf-8?B?WHBxYnZycUJvZkVkL09XNHpkbVVGZnBsekVudFhEU1NjYUNaUzhzdFN3cWIr?=
 =?utf-8?B?dzIzdC9HUXRNVU9mSGo5V0RFQ0NNMjQ1U1ltVTlUaEtWd2k2bmNkdm5YaUFJ?=
 =?utf-8?B?NU5tVitDV2ZCbkNGa0xLamFQKzl1eXM5YkxTMDI3OC9OTnFvb2I4UkZKaSsz?=
 =?utf-8?B?QnNkOFRQUHEwTS9nd0xyQ0k3elRSb2pYdHFIL2UvNmVLOG4zWEVVK2UrQk4z?=
 =?utf-8?B?bEVQRDBocTRHdm5NYXNETmdGdmN6ZjMrNXVUdU94djlkY0lLRFBZai95cE9t?=
 =?utf-8?B?MDlWOG1NckdmYS9DR2tBRVBONWhmWklFYVNKOURFNUNaL3c0ajZ0TUVzcTJD?=
 =?utf-8?B?ZGFwcXlnOUtENkFjUW91dGZWQzd2K0wrN01QVk1TWjZSM280SXByS3Q5QkZP?=
 =?utf-8?B?U2M0UlRIelpOd1h2R2c4RjJDVTNXeHFhcTFSMmU5YkZDZmlvd096MkJiaXA4?=
 =?utf-8?B?OVdRM0V2dXBjWVc2MnZpM1d6Y2dCbEZYcnQyMXNPdVZIUXVpeEFKVFh2TDQ2?=
 =?utf-8?B?cUxndWNxYi9zREtIekZtSENDMzh4cFY4bHVhNXlSVWF4eW1FWnVRcFBOclQ0?=
 =?utf-8?B?T04xZ3VVSW9yT2tUZDRlc2E5VXJ5aGxtMkgyQVRQMjRWOU14amZOd3prT2U3?=
 =?utf-8?B?S21QRTUrclg3eDlETUJOSS83b2NGMXY5ZWRIb3hDNHlXQytnUmwyb3ZQOHd6?=
 =?utf-8?B?VW9VZlpCU0R6bk13aDNHc2N5TVozWUVTc3ZncFFTUi95dzlPTzRmaXBCNkpl?=
 =?utf-8?B?bmptSndTR0c1MVIxYUIzQ1A3d2pGTTFkSXJwL2t6M1orU1ZZZWVmTnhxZzFL?=
 =?utf-8?B?Ym5UVzNyTU9rWTZlZDZReFhBNS9aZ1dCc1hNZjFSY2laUGVHNUVOaGdqbmRy?=
 =?utf-8?Q?IDlfOjGmnH8E6EjPG19T0l0ja?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7785.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6bb6b09e-6f4c-4dea-3f4e-08dd49ca59c8
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Feb 2025 11:59:19.4738 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XVMBA84kbxgxzJt9kjl1KPIIM0lnZYHkpeZuiamTuo3lVODogGkI0h/LHGhm0nwofkK3ytAmJfD5ZLiDnOhDbpLN3ZWzW/q6jW0/gc5lNdM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8143
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739188812; x=1770724812;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=85ceG/3tuDZZkBc/1Q/XFi0viFQ/E5k4F1XWBJARsSs=;
 b=LfK9+hnjRZqOSETLEzbevxab7NmfDkn3fH31EJNwjGiuXYA+xj+FNDP/
 Vv1xNeB1RkLHuOg2dYlERxpxgEGNh3vYanxzF71PEjQreHJvZMnIbXVrB
 9tgk9qLYRmGyKc9Z1yThuR3AwDRNwXIV7CU/41h7wIA6Af4fsf1ufuuo1
 HEZ2CR8R+HfBtPjeVd9tsEtqVXTNTKnr9RA7awVT2k37ycpw5j+spjGwi
 fN4jI1T00ZtaCVYanBioCtGk82qGXNBo06JHgRVtMYvvnNHCblWUKzJxJ
 ypHH8UmtBfSDPdLLnW9cQZktK9BgCXL1RQbT6NHTLR9jdHvEqHWLwLxCS
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LfK9+hnj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] ixgbe: add support for
 thermal sensor event reception
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

RnJvbTogUGF1bCBNZW56ZWwgPHBtZW56ZWxAbW9sZ2VuLm1wZy5kZT4gDQpTZW50OiBNb25kYXks
IEZlYnJ1YXJ5IDEwLCAyMDI1IDEyOjQwIFBNDQo+RGVhciBKZWRyemVqLA0KPg0KPg0KPlRoYW5r
IHlvdSBmb3IgeW91ciBwYXRjaC4NCj4NCj5BbSAxMC4wMi4yNSB1bSAxMTo0MCBzY2hyaWViIEpl
ZHJ6ZWogSmFnaWVsc2tpOg0KPj4gRTYxMCBOSUNzIHVubGlrZSB0aGUgcHJldmlvdXMgZGV2aWNl
cyB1dGlsaXNpbmcgaXhnYmUgZHJpdmVyDQo+PiBhcmUgbm90aWZpZWQgaW4gdGhlIGNhc2Ugb2Yg
b3ZlcmhlYXRuaW5nIGJ5IHRoZSBGVyBBQ0kgZXZlbnQuDQo+DQo+b3ZlcmhlYXRpbmcgKHdpdGhv
dXQgbikNCj4NCj4+IEluIGV2ZW50IG9mIG92ZXJoZWF0IHdoZW4gdGhyZXNob2xkIGlzIGV4Y2Vl
ZGVkLCBGVyBzdXNwZW5kcyBhbGwNCj4+IHRyYWZmaWMgYW5kIHNlbmRzIG92ZXJ0ZW1wIGV2ZW50
IHRvIHRoZSBkcml2ZXIuDQo+DQo+SSBndWVzcyB0aGlzIHdhcyBhbHJlYWR5IHRoZSBiZWhhdmlv
ciBiZWZvcmUgeW91ciBwYXRjaCwgYW5kIG5vdyBpdOKAmXMgDQo+b25seSBsb2dnZWQsIGFuZCB0
aGUgZGV2aWNlIHN0b3BwZWQgcHJvcGVybHk/DQoNCkhpIFBhdWwsDQoNCldpdGhvdXQgdGhpcyBw
YXRjaCBkcml2ZXIgY2Fubm90IHJlY2VpdmUgdGhlIG92ZXJ0ZW1wIGluZm8uIEZXIGhhbmRsZXMN
CnRoZSBldmVudCAtIGRldmljZSBzdG9wcyBidXQgdXNlciBoYXMgbm8gY2x1ZSB3aGF0IGhhcyBo
YXBwZW5lZC4NCkZXIGRvZXMgdGhlIG1ham9yIHdvcmsgYnV0IHRoaXMgcGF0Y2ggYWRkcyB0aGlz
IG1pbmltYWwgcGllY2Ugb2YNCm92ZXJ0ZW1wIGhhbmRsaW5nIGRvbmUgYnkgU1cgLSBpbmZvcm1p
bmcgdXNlciBhdCB0aGUgdmVyeSBlbmQuDQoNCj4NCj4+IFRoZW4gZHJpdmVyDQo+PiBsb2dzIGFw
cHJvcHJpYXRlIG1lc3NhZ2UgYW5kIGNsb3NlcyB0aGUgYWRhcHRlciBpbnN0YW5jZS4NCj4+IFRo
ZSBjYXJkIHJlbWFpbnMgaW4gdGhhdCBzdGF0ZSB1bnRpbCB0aGUgcGxhdGZvcm0gaXMgcmVib290
ZWQuDQo+DQo+QXMgYSB1c2VyIEnigJlkIGJlIGludGVyZXN0ZWQgd2hhdCB0aGUgdGhyZXNob2xk
IGlzLCBhbmQgd2hhdCB0aGUgbWVhc3VyZWQgDQo+dGVtcGVyYXR1cmUgaXMuIEN1cnJlbnRseSwg
dGhlIGxvZyBzZWVtcyB0byBiZSBqdXN0IGdlbmVyaWM/DQoNClRoZXNlIGRldGFpbHMgYXJlIEZX
IGludGVybmFscy4NCkRyaXZlciBqdXN0IGdldHMgaW5mbyB0aGF0IHN1Y2ggZXZlbnQgaGFzIGhh
cHBlbmVkLg0KVGhlcmUncyBubyBhZGRpdGlvbmFsIGluZm9ybWF0aW9uLg0KDQpJbiB0aGF0IGNh
c2UgZHJpdmVyJ3Mgam9iIGlzIGp1c3QgdG8gaW5mb3JtIHVzZXIgdGhhdCBzdWNoIHNjZW5hcmlv
DQpoYXMgaGFwcGVuZWQgYW5kIHRlbGwgd2hhdCBzaG91bGQgYmUgdGhlIG5leHQgc3RlcHMuDQoN
Cj4NCj4gICAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX21haW4uYzpz
dGF0aWMgY29uc3QgY2hhciANCj5peGdiZV9vdmVyaGVhdF9tc2dbXSA9ICJOZXR3b3JrIGFkYXB0
ZXIgaGFzIGJlZW4gc3RvcHBlZCBiZWNhdXNlIGl0IGhhcyANCj5vdmVyIGhlYXRlZC4gUmVzdGFy
dCB0aGUgY29tcHV0ZXIuIElmIHRoZSBwcm9ibGVtIHBlcnNpc3RzLCBwb3dlciBvZmYgDQo+dGhl
IHN5c3RlbSBhbmQgcmVwbGFjZSB0aGUgYWRhcHRlciI7DQo+DQo+PiBSZXZpZXdlZC1ieTogUHJ6
ZW1layBLaXRzemVsIDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPg0KPj4gUmV2aWV3ZWQt
Ynk6IE1hdGV1c3ogUG9sY2hsb3BlayA8bWF0ZXVzei5wb2xjaGxvcGVrQGludGVsLmNvbT4NCj4+
IFNpZ25lZC1vZmYtYnk6IEplZHJ6ZWogSmFnaWVsc2tpIDxqZWRyemVqLmphZ2llbHNraUBpbnRl
bC5jb20+DQo+PiAtLS0NCj4+IHYyLDMgOiBjb21taXQgbXNnIHR3ZWFrcw0KPj4gLS0tDQo+PiAg
IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX21haW4uYyAgICAgIHwgNSAr
KysrKw0KPj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV90eXBlX2U2
MTAuaCB8IDMgKysrDQo+PiAgIDIgZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspDQo+DQo+
DQo+S2luZCByZWdhcmRzLA0KPg0KPlBhdWwNCj4NCj4NCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9tYWluLmMgYi9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9peGdiZS9peGdiZV9tYWluLmMNCj4+IGluZGV4IDcyMzZmMjBjOWEzMC4uNWM4
MDQ5NDhkZDFmIDEwMDY0NA0KPj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaXhn
YmUvaXhnYmVfbWFpbi5jDQo+PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdi
ZS9peGdiZV9tYWluLmMNCj4+IEBAIC0zMTY1LDYgKzMxNjUsNyBAQCBzdGF0aWMgdm9pZCBpeGdi
ZV9hY2lfZXZlbnRfY2xlYW51cChzdHJ1Y3QgaXhnYmVfYWNpX2V2ZW50ICpldmVudCkNCj4+ICAg
c3RhdGljIHZvaWQgaXhnYmVfaGFuZGxlX2Z3X2V2ZW50KHN0cnVjdCBpeGdiZV9hZGFwdGVyICph
ZGFwdGVyKQ0KPj4gICB7DQo+PiAgIAlzdHJ1Y3QgaXhnYmVfYWNpX2V2ZW50IGV2ZW50IF9fY2xl
YW51cChpeGdiZV9hY2lfZXZlbnRfY2xlYW51cCk7DQo+PiArCXN0cnVjdCBuZXRfZGV2aWNlICpu
ZXRkZXYgPSBhZGFwdGVyLT5uZXRkZXY7DQo+PiAgIAlzdHJ1Y3QgaXhnYmVfaHcgKmh3ID0gJmFk
YXB0ZXItPmh3Ow0KPj4gICAJYm9vbCBwZW5kaW5nID0gZmFsc2U7DQo+PiAgIAlpbnQgZXJyOw0K
Pj4gQEAgLTMxODUsNiArMzE4NiwxMCBAQCBzdGF0aWMgdm9pZCBpeGdiZV9oYW5kbGVfZndfZXZl
bnQoc3RydWN0IGl4Z2JlX2FkYXB0ZXIgKmFkYXB0ZXIpDQo+PiAgIAkJY2FzZSBpeGdiZV9hY2lf
b3BjX2dldF9saW5rX3N0YXR1czoNCj4+ICAgCQkJaXhnYmVfaGFuZGxlX2xpbmtfc3RhdHVzX2V2
ZW50KGFkYXB0ZXIsICZldmVudCk7DQo+PiAgIAkJCWJyZWFrOw0KPj4gKwkJY2FzZSBpeGdiZV9h
Y2lfb3BjX3RlbXBfdGNhX2V2ZW50Og0KPj4gKwkJCWVfY3JpdChkcnYsICIlc1xuIiwgaXhnYmVf
b3ZlcmhlYXRfbXNnKTsNCj4+ICsJCQlpeGdiZV9jbG9zZShuZXRkZXYpOw0KPj4gKwkJCWJyZWFr
Ow0KPj4gICAJCWRlZmF1bHQ6DQo+PiAgIAkJCWVfd2FybihodywgInVua25vd24gRlcgYXN5bmMg
ZXZlbnQgY2FwdHVyZWRcbiIpOw0KPj4gICAJCQlicmVhazsNCj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV90eXBlX2U2MTAuaCBiL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3R5cGVfZTYxMC5oDQo+PiBpbmRleCA4ZDA2
YWRlM2M3Y2QuLjYxN2UwNzg3OGU0ZiAxMDA2NDQNCj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3R5cGVfZTYxMC5oDQo+PiArKysgYi9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV90eXBlX2U2MTAuaA0KPj4gQEAgLTE3MSw2ICsxNzEs
OSBAQCBlbnVtIGl4Z2JlX2FjaV9vcGMgew0KPj4gICAJaXhnYmVfYWNpX29wY19kb25lX2FsdF93
cml0ZQkJCT0gMHgwOTA0LA0KPj4gICAJaXhnYmVfYWNpX29wY19jbGVhcl9wb3J0X2FsdF93cml0
ZQkJPSAweDA5MDYsDQo+PiAgIA0KPj4gKwkvKiBUQ0EgRXZlbnRzICovDQo+PiArCWl4Z2JlX2Fj
aV9vcGNfdGVtcF90Y2FfZXZlbnQgICAgICAgICAgICAgICAgICAgID0gMHgwQzk0LA0KPj4gKw0K
Pj4gICAJLyogZGVidWcgY29tbWFuZHMgKi8NCj4+ICAgCWl4Z2JlX2FjaV9vcGNfZGVidWdfZHVt
cF9pbnRlcm5hbHMJCT0gMHhGRjA4LA0KPj4gICANCg0K
