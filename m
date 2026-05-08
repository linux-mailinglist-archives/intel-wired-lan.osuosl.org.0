Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yLCtM67G/Wn2iwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 13:19:10 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 299A34F5A0A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 13:19:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C420A40B8C;
	Fri,  8 May 2026 11:19:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lYtBSdwEsKCV; Fri,  8 May 2026 11:19:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9377040ABD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778239147;
	bh=nlVvWuc30wV7vYBGbXnepIafmqO0Ol7zvzM+9bnlfhY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DfCsX6wpmt+V/FaX2Xsgy1AyXrJaBw75FBzQJvFQ7uM/YR5hf+4lu8UJ1dFU+dCbg
	 LOkNuDBSV2qY9kilz9fhpoChXcC3SzgWgmYoeFgI3XpXXe9DjwhLbPa0MSxXsBewII
	 we/4n1FlTjm34/BMK+Q9easCrANTvNzRVIKeezzJM68BaSl2OtsJ674Upoe1l19tmw
	 v1/hpDZJY6fyvLC9Au1VvuYsjk7PHDuprNynNMfzzAoM33FHoHs9gK5doYyi/fQUBl
	 MqlQFxv3YoDpTAZ4uGL+uRsFE7C6bh6bl62gcLx3pvE8L/QlN/5f5+gZDOvaCBvOqQ
	 toxfnCyGgSoNQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9377040ABD;
	Fri,  8 May 2026 11:19:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6CD90317
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 11:19:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 52AA08411E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 11:19:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d4OzS7GOgWmf for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 11:19:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=sergey.temerkhanov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 75E0F8411D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 75E0F8411D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 75E0F8411D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 11:19:05 +0000 (UTC)
X-CSE-ConnectionGUID: La26rmltRrKWqNI+PYKuzg==
X-CSE-MsgGUID: SVJfRlYeR/OtIzvPwbZmWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="89514661"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="89514661"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 04:19:05 -0700
X-CSE-ConnectionGUID: bNhzSnCOSdukf0JoYl+NQQ==
X-CSE-MsgGUID: 4akTHW+RTwiOM2xf+oNvSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="233685659"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 04:19:04 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 04:19:04 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 8 May 2026 04:19:04 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.64) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 04:19:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Uh9cBw2D9NKIuQrDmdYCKTm7dq7aM79siEiRUG/gpIzDXyc+mPJSRZbkVUZSnTOAaXAuTNpK8sShyg86Y75Lc+jIBYZ9YX5g0RCJzCdU9+Y0nkHXuflcGZe9fXpNZFMphz4sbifyt+XV+W6/mQDLbUDWQbPnNI8mp2V41X0u5F6AveyQ9v6n7sWD/Tp4sT2+rs6H4r2g78oNeQFmxprj38MAaM+W2AmlHJbrbzZE9xt7Yi39lH0PMBEqPuYdmbwZWy2XnTDe/JYbxQrkoUkLpSRhXHT+A8w6r7L5MSRSSce6tJOM1VhC/7ZVCXHSDQBCVFR/epMB+XnQUfkJhgOklA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nlVvWuc30wV7vYBGbXnepIafmqO0Ol7zvzM+9bnlfhY=;
 b=GuSafSZ6uB1u4/Xid/tfyi+pIjYfqlGPO4//Aw8jYM9vgIkLKcfDPJ2hHTr1au/KsLplPmGIBfWdpZVnFyH9V/55HG7510LiN1Syo3gMhNjimL4U5JkH6FTRejPJdNdKDhNQzvAAOoi+EjtbHzPv3GuKmJMXDpo2E3AUIBCKb/PDnxOyF6hKWyGB6vQYtD30h02c/3AJJ9wWgveImqCz9iarm4uHDQO7V5xnG6TU4LmybB4q25DPwiPWuxB1EEnRtV5CFJWml+xpqMkT+7OCrCFkm6A7XJK7AhESjwsbHeXRLHs3SMGSPacVjVcG32X0ZnTQPMzomhntO0K1yi66Lg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6864.namprd11.prod.outlook.com (2603:10b6:303:21b::16)
 by SA2PR11MB5097.namprd11.prod.outlook.com (2603:10b6:806:11a::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Fri, 8 May
 2026 11:19:01 +0000
Received: from MW4PR11MB6864.namprd11.prod.outlook.com
 ([fe80::3cb9:afc2:1be5:5d7b]) by MW4PR11MB6864.namprd11.prod.outlook.com
 ([fe80::3cb9:afc2:1be5:5d7b%7]) with mapi id 15.20.9891.016; Fri, 8 May 2026
 11:19:01 +0000
From: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1 0/3] Rework ctrl_pf pointer
 usage in struct ice_adapter
Thread-Index: AQHc27VbX4mvLtRifECRj1T9Cp0qirYDOVaAgADEuyA=
Date: Fri, 8 May 2026 11:19:00 +0000
Message-ID: <MW4PR11MB686442CE01406DCCA362436B803D2@MW4PR11MB6864.namprd11.prod.outlook.com>
References: <20260504110058.2373236-1-sergey.temerkhanov@intel.com>
 <8f72b0ff-94b3-41b1-b16b-9d7b9e675ace@intel.com>
In-Reply-To: <8f72b0ff-94b3-41b1-b16b-9d7b9e675ace@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB6864:EE_|SA2PR11MB5097:EE_
x-ms-office365-filtering-correlation-id: 49c1b02e-855a-4e7a-2b30-08deacf39ae4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|18002099003|56012099003|22082099003;
x-microsoft-antispam-message-info: nYhkUZP4Wqsb4+SzsVdqaApx4YhE6kauLbjfVeK2wG8QBj1SwUk8PEPc5WetnYnZa1uI9JcY1t0LQlh/IvTVnCHYnxXBSZKv/siFC70JmZ1UjQKCkMwg8vn8kgvfbnZqXJwMNlKrI9TrGo+rplqYzZIgKWQ5JhTS3wKEaNApkz+ENhTuUxgFPbeIhYGy+Q0+DgYD7ggg2Tyq8h333rr7H5nw13kk507gNcpQedVcPFomlnbqnZLuyMDaWetW7mNDgsFgTLP6uWfQkbvi1c1Jb4H3OcSR/bn6Di8fuK0IWfVwju02qfbGriHgqMrpkPnVBTqIFRX6XB3UzOwJB1WKPPS2oPvzIx8EalzTOYOBmIxd8fhCoAKBmK1n+uOX2BVyhwbwwoUM+zaVyviU3KtnS2oAQGcP5y3EAdTF1r3YV1GhXjn4dtIlAF68w7Nw3bJiKrkCgyOuZPPCz3qQo8HXxi83j8HmbvEKYKjJEZP6JHXVZIso61mMFFUvytxFuvx0PvJpeI7wdGE+cULQThQD2n+BtmX/QVdRtA+3g+RhAjKTaoYs1MSGBjMyYBcNVJXcBBUivZ/Cu0tFEVa1P4giISRH/u7GpyZi3j1WDY0UmRPPqdidjwUTuqU9PmSpu/vW43w0qNNWXHmaXfiEyD6A1KLlVom6YsHjtl2v383DXwFaEyApSpK+y0lrZ5b8m+XUDMY/lfhvP9uil1WKeMY8745FtQsDeusJanv5NvhuTUucRVwUhwZSeVwuFmOMxomw
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6864.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SEk1NU1MbUYzNUpMSnFmNGpBWTlvZldNYzVCcWpHeTdsSWhCU0N1WWVEUEtT?=
 =?utf-8?B?RTBocDc5TDQrWXZacDQ3QkdRc1p5WWYvWGM5REM3K3QvdU1TVlFNQkxDNUZI?=
 =?utf-8?B?Q2M2aVI2cWd3ZjhlaTQ5elg2SFlSVitSTlRpazJ3R09wRHJUU1ZHWHBIQjhv?=
 =?utf-8?B?dnFYWWNaZ0VXdGsrcktvc1plSlUzQysxcFNWUStUVEF6ZjduRXYrbnNqUDd5?=
 =?utf-8?B?TlNXamlkcTBsWENEazY5M09VZ0JlQmtvenhlclkvSzBFQ1hFTnZqTFJ3K1pL?=
 =?utf-8?B?TDBqYlpmMXkwN1JObmlDZU1nd3RHczdnZExPdVhEbTlNZUpxRVltZHdlR0RQ?=
 =?utf-8?B?eWEyZjh4K25QeGRRbWlZQWpuY0dEV2p4V2FuTVVJN1RDam15Q0gzdDR5QjlY?=
 =?utf-8?B?MW1Ja1BRREY1eGZvb1JnQVR1a1FpZjVmaU40R0VseWJpVHg5RjZJSDJUNXJw?=
 =?utf-8?B?Y09PdHFOaXBxRmxTR0N5UVg0QS9lSU9RbWttaElKN2QxeG0wTStTTitiNVFE?=
 =?utf-8?B?UHJrei9HRmh5aytGa202bjQ5WEdpYVAxNmVhNW5JZU9JQUtEYkhKY3YwYmQ4?=
 =?utf-8?B?Y3J2Q2lQNjlneDRqR1UyTmZSdlVVYWlFalhudzRETzcxK09oVlZuNGZaYk94?=
 =?utf-8?B?ekI4WmhIS3RTZXAxcTlmVUVuRXdVUmZUN2o5L3FTNXlWbmdCc3dvRm11eHEw?=
 =?utf-8?B?bFZ6YTVmMHZXZWYxaHJJWEFVaEpxN3RHK1hucWlMcmNLYWZvcVgySklpV1Uz?=
 =?utf-8?B?eU1zREs2aWhlQVlnWXBxSnRVT21oYUhJYTVtcnZRZGtNSDIxdEZzVnNabGpw?=
 =?utf-8?B?VXpOTGp3dTdndnlETHlYZ1NIaXpWcmhpY0RndlNuYzh3WEQxLzBaYnpqenFa?=
 =?utf-8?B?OElGbDlDS1k0VHVXaVkzcllvZ2NqTjdDZDZVQ3dHenBjQXBYZzl6R3ozaEd3?=
 =?utf-8?B?bDdyTjhsYVR4R092d3g4NDJCTkg4ZE9CYVdkclpUUC9ENGhDZTZlVGM0N3U1?=
 =?utf-8?B?RVJranhnbGl6T0JhelpIK0YzS0tkbWh1WjkzekZDcXM4cE5XdUx2T21sNFBV?=
 =?utf-8?B?K0NXTGFTVjZVTHlVODJ0b05pSytTL0JYTXJqS1NkRm1DRTMrTGtpYTVnQ1NU?=
 =?utf-8?B?akN3Q21kQklUNzBKYkNteWFzWDAwY2ljdU9aUGgxMjRWak9xVEQ5djBuUXNp?=
 =?utf-8?B?T0grblZuWHlBaHBvYkc3WGE0bjdJQzY2VWtPOUpxUDcrZktwcTEwT0lIUG05?=
 =?utf-8?B?QkZzSFJXRm9hVzVOZkZEcWlqajhBSnBQanRTaGN1Tm1mSXhsWlhMV251dkRx?=
 =?utf-8?B?dTE1SHNGZVI2bkNvU0VpRTFsakxkeGZwQ0FKYTdhVXV3OGlvam1Zd2FRUmht?=
 =?utf-8?B?aC9iMHdaMFR1N1FtaUxVckVMV3NHOTE0bnhZQW1FVUU3RHc3QUpZVmJiSWpk?=
 =?utf-8?B?NmxxYWgyVFl6MFJXUzRURnRlVGpWQU1JZHhXdGU4QWQ4cU9TNkIvcm5LU0NS?=
 =?utf-8?B?NDhZU3UwYmdIcnk0akNONHZPWFBvTHhNVnVZTER2V2JxUCt2Q3M5SVZrdWZQ?=
 =?utf-8?B?c3VHVEt2YXl6bk5oaDd6VGtlSEN6MXZxNk9Vbmw0b2ZVQlRSQlhUUWFXbEhz?=
 =?utf-8?B?UlVROUN1UXUrcEx0MVFxenJ3a0RYa1o5ZDljTTlIT0hNQ2RWaWtxV3NsaExs?=
 =?utf-8?B?RzYrWnE1ci9uRFN3cGYrWXNEWHlhRHJXQzhBYmJ1Ujg4ZHFwZXh6UkJ6aVls?=
 =?utf-8?B?TU81SFhBRE83MzV0NGlVSXpsdy90aEU4eTVaQ2lwckpQbU96RDNESElMcVdh?=
 =?utf-8?B?TlE1bXF0b1RITklCckd5eWpQRlVxOXFwQWw5eEpyM3ZFVlFhekZZNktUOVhV?=
 =?utf-8?B?c3JTZXJHK2h5VXk1TExqdUdkaGNnQkFBY1duOWJzUUJIU2lnTVdMcFV0SlV6?=
 =?utf-8?B?VVZuWXErUTlqRWh3R3k4SmhQWUZoS1NPZFg2MmI0Ulcwengra0RlOXRsVDJa?=
 =?utf-8?B?cmdwMkQvVDJodkY0OXVMeUxjUmRjTnNYS3hTV2diM1dwNWE2Ukl0MFJqTG5S?=
 =?utf-8?B?dWJzeERYUElIakRnUTNPaXk0L0ZHMGtndEFOaFUrVy95cUpuaGNRaGo5SjlJ?=
 =?utf-8?B?NllRSUJPWlZ0enBkMnBTc0ZsNU5nMlE4djJUbHkzMXFpd3lBT2JwY0xNVHg3?=
 =?utf-8?B?M1ZRNFovMGN4Z3BLUFZFOEtlVGU5UkkwaFlMaFh0ZE9wUWxCY0lrb0FpK3lC?=
 =?utf-8?B?WmlhTFQyYnRxSC9TaUMzUmd0T1lDVGtmSHhnVW1qUmwvcnA1OFd5bWRFRWFG?=
 =?utf-8?B?alRvS1plZWtBK1lIOUtBOXZrRm1DQzRLOGM3MDQ3MEhLRUZ5N0JCc2ppQXIw?=
 =?utf-8?Q?KlzY38zH0Iav7Ugs=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: MLwVvhbYsdG8Bnsx0grKtgPB1UjRBCJRdpOi7tVISTI6D3Ouo2mP0JiecSuZQN0pMbD97+qh4S/Jf87Ho77qUFm7e42Hw2RnRUkeqPy6ut+Q9BnTS7ckr9KUjxhSEwlHb2nORpfC1fvZAphcZCbz1P7nP77igKWfCtIap/AE43EwpTJ4Hnxy5wbSLTweV8DmVHhQBFJDmfVpsNk4x4VCdGT91MZEPhXj0zTQ8DeSlW8aLtyK1Hmv0dXdOhymaAOzJO9DbEsVbcI0w3XLEoq+nxAkqom9rdyui8CDF8tTtl23oPY1H24xF/WR7clYS2gdOPmgaulh4Qjj/U6rYLU3Zg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6864.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 49c1b02e-855a-4e7a-2b30-08deacf39ae4
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2026 11:19:00.7982 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7oodp5IyQvjCjwqxlbmVilGvnfYzbDLZw8u0qhjzDjCg7cCGM7Q7obM79N6geoMp73pU37Y0gSuXmF97T8Cwy5fJheOW/zJSZF0SFyUFtes=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5097
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778239145; x=1809775145;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=nlVvWuc30wV7vYBGbXnepIafmqO0Ol7zvzM+9bnlfhY=;
 b=UKhIaSfkmNQTetZCjP7rgTZldFs3fqk5/IyfqyKV02SKnceHWyWEN+zC
 Y/j66uBoT7olV6zEmT+6YlyHUQm/jopiKvLu6ywdTWMY3MTxArJGnCcUT
 jq2VEwK+4ud7P/MHZ79s4vVf/SQ5F7XzTZm4pheEw4FNhVKfrKfeK3u1o
 meCr1yqf7q+3PoUL2eU0wMTFgkFKT3V+0Kica9srIuPDFzlEYR9MVqXz0
 AzoRsi/L45mjcU/seq7vSTMd/YcynCQ/HwbqC2fPlzMDgZScgfefgq9iR
 wyhd9rOHBp2CPzKQENmh1uJuDrkUPx9J+0TSAPuB/waiXy7JZiwtnUCgj
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UKhIaSfk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 0/3] Rework ctrl_pf pointer
 usage in struct ice_adapter
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
X-Rspamd-Queue-Id: 299A34F5A0A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[sergey.temerkhanov@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sergey.temerkhanov@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiANCj4gQnV0IHRoZSBpY2VfcHRwX3NldHVw
X2FkYXB0ZXIoKSBmdW5jdGlvbiBoYXMgb3RoZXIgbG9naWMgdGhhdCBoYXMgYmVlbiB0aGVyZQ0K
PiBzaW5jZSBpdHMgZXhpc3RlbmNlPw0KDQpUaGVyZSB1c2VkIHRvIGJlIGEgdGltZXIgb3duZXJz
aGlwIGNoZWNrIHRoYXQgZ290IHJlbW92ZWQgaW4gY29tbWl0DQpiYTY5NGU2Njg4OWMwYWQxNWIw
NmFlNjAxNzVlMWU5NThhMDY5MWMxICgiaWNlOiByZW1vdmUgcmVkdW5kYW50IGNoZWNrcyBmcm9t
IFBUUCBpbml0IikNCmluIGxhdGUgRmVicnVhcnkuDQoNCj4gDQo+IENvdWxkIHlvdSBwbGVhc2Ug
cmViYXNlIGFuZCBtYWtlIGEgdjIgd2hpY2ggYXBwbGllcyBjbGVhbmx5IHRvIHRoZSBjdXJyZW50
DQo+IHRyZWU/IEkgZG9uJ3Qgd2FudCB0byBtYWtlIGEgbWlzdGFrZSB3aGlsZSBhdHRlbXB0aW5n
IHRvIHJlc29sdmUgY29uZmxpY3RzIGZvciBhDQo+IGNoYW5nZSB3aXRoIHRoaXMgYmlnIG9mIGEg
c2NvcGUuDQoNClRoZSBjaGFuZ2VzZXQgZ290IHJlYmFzZWQgd2l0aG91dCBhbnkgY29uZmxpY3Rz
IG9uIHRvcCBvZiBjb21taXQNCjVjMGQyYWM1OTAwZDY4OWQ0MjJhMzFjZDQ1MDczMTc1MTUwYzBh
MzkgKCJpeGdiZTogRTYxMDogZG8gbm90IGZpbGwgRUVFIGxwX2FkdmVydGlzZWQgZnJvbSBsb2Nh
bCBQSFkgY2FwcyIpDQpTZW5kaW5nIGEgcmViYXNlZCB2MiBzZXJpZXMuDQoNClJlZ2FyZHMsDQpT
ZXJnZXkNCg==
