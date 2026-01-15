Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B5B41D255A0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jan 2026 16:30:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 10DFC41053;
	Thu, 15 Jan 2026 15:30:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id q0-xpqm-kN1A; Thu, 15 Jan 2026 15:30:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 402F74104D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768491024;
	bh=r9+3HHxixSro6UVPr12fVCUh27AnVdBJbet1KhqS77g=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xqc0wFtLEK/qnZZVD9MYVctRzPPtgUnidMZ0kTY8qMAn0I3MtlS5R+6uGVNC08r30
	 gtfVzHLc6ROQvYIajCuqZJ10HSfpPj7kF7Lprra7fEICWa9JwDAWY/BKqFJBGl4iA5
	 8A70Z34eI1vEvGBgJP6xiXR/CYt2htFHvs9/gT63sGgL6LwrVivh8b3U/TyWlE8Raz
	 IAFql3JWTUHJo1itnTTawTLZuEtKK6/3VwKO4xy4R8uZ6bBWSuwIMzk67byzUi5EmK
	 YsCYBDEpUt2ypY7A8K6JOkDWAU2ESRbhkfGeLBM+XtNco0xgqAuV55pRnj6lxXS+Uj
	 bCHlxFXTJkGww==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 402F74104D;
	Thu, 15 Jan 2026 15:30:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2607F118
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jan 2026 15:30:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1621A41049
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jan 2026 15:30:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XypT30Nie3Mh for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Jan 2026 15:30:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CAC6D41046
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CAC6D41046
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CAC6D41046
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jan 2026 15:30:20 +0000 (UTC)
X-CSE-ConnectionGUID: s4BeYr75QF2ngfOUH4ZJVA==
X-CSE-MsgGUID: 0TpR3lc7QtGcWN7M9lASIg==
X-IronPort-AV: E=McAfee;i="6800,10657,11672"; a="57353233"
X-IronPort-AV: E=Sophos;i="6.21,228,1763452800"; d="scan'208";a="57353233"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2026 07:30:12 -0800
X-CSE-ConnectionGUID: UiFLWTctSziNnj/Tv080tg==
X-CSE-MsgGUID: s7Njez8OQ9Wv5D6BQG21Xg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,228,1763452800"; d="scan'208";a="209116051"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2026 07:30:13 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 15 Jan 2026 07:30:11 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 15 Jan 2026 07:30:11 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.24)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 15 Jan 2026 07:30:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ycMJNY9OaIdhjl3Szh9fPx2yZP+RQAACSi+bWKGyNaLANIlNbj7dmOVlKM3e9WZRNEhxHsRGXlNLSMhSjiZ2VxiRBp5CWl2pvTzj7SW47RilE7zlFFzCj7x6qkhPmm9eYIygV4es5N1pwpik1i0k1zJ07jcp2qEo6mBbe5TUgxxtxYDgph8pDCi0UgLAIzbIHsCrqTn9wPYD2q1CPmicY/zkIiqYKYQhQ9wHWaT9fcnJhG/XiW0gnygZsQ1PbfX2gtr1cYw0G370JStR0xMx/ZPpRR+rx+GDKZ5Liqy/ChAB070IrghUplt71wlVN6DpNx9z6pKt3uXIyFlIitqVYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r9+3HHxixSro6UVPr12fVCUh27AnVdBJbet1KhqS77g=;
 b=HvgdBofqPqs3oolCZPz2UZL5m0WKOVr3LktE9lcnqgCS+4XGuUVqayyOfpJt6rzVcoH59v39cTkueWcUjpA3NQDNU2znNm45NHrVCP2dmRjRzuABnyuI5Is7CNvnM7+QDdl6bDaaFcYuAmCOfCRQ8m6J+YJoeDtrLvxvdyag+/SxRsmUJc0BEiakE/4pVFSoO0QZtKxWojP69bE7m7MdmGEffHZSBxhqIZOpsTe4LupparlGszLXwAi14UcMbSpF2XZg8osCrvX4araSzDB8DZCmXRX7hIO3aH39Us4NYJKyfv9+N3n7Xp4JtXJ8Nr40dLMKlEW9pYkcSomg4+lljQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV4PR11MB9491.namprd11.prod.outlook.com (2603:10b6:408:2de::14)
 by SN7PR11MB6726.namprd11.prod.outlook.com (2603:10b6:806:266::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Thu, 15 Jan
 2026 15:30:02 +0000
Received: from LV4PR11MB9491.namprd11.prod.outlook.com
 ([fe80::f110:9a4f:b4cb:2eeb]) by LV4PR11MB9491.namprd11.prod.outlook.com
 ([fe80::f110:9a4f:b4cb:2eeb%7]) with mapi id 15.20.9520.003; Thu, 15 Jan 2026
 15:30:02 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: "Grinberg, Vitaly" <vgrinber@redhat.com>
Thread-Topic: Re:[Intel-wired-lan] [PATCH v5 iwl-next] ice: add support for
 unmanaged DPLL on E830 NIC
Thread-Index: AQHcWgwUHqTXSPJapUuoKo9k9qimQ7UkgCYAgCMGLQCABLXsAIAFhyPAgAAdKQCAAAM7kIABYi6AgAA0S7A=
Date: Thu, 15 Jan 2026 15:30:02 +0000
Message-ID: <LV4PR11MB9491C8288A84379A1199DC409B8CA@LV4PR11MB9491.namprd11.prod.outlook.com>
References: <20251120105208.2291441-1-grzegorz.nitka@intel.com>
 <20251216144154.15172-1-vgrinber@redhat.com>
 <IA1PR11MB621913F389165EE4D7CCFF2D9284A@IA1PR11MB6219.namprd11.prod.outlook.com>
 <CACLnSDikAToGRvfZAhTcT0NCtMj+N9z-GGzRQ5qmpHsvCr2QSA@mail.gmail.com>
 <LV4PR11MB9491EB644FC83676522107669B8FA@LV4PR11MB9491.namprd11.prod.outlook.com>
 <CACLnSDhEQVJ5piUKp6bddxvOff88qj5X6Y8zbqAH8Kf5a7a_Zg@mail.gmail.com>
 <LV4PR11MB9491B0E591D66E4AEDE9B1329B8FA@LV4PR11MB9491.namprd11.prod.outlook.com>
 <CACLnSDggQLQMFdT3VLxm+GNNad6xy43nh6D+UzbW-u9Wwg+WOw@mail.gmail.com>
In-Reply-To: <CACLnSDggQLQMFdT3VLxm+GNNad6xy43nh6D+UzbW-u9Wwg+WOw@mail.gmail.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV4PR11MB9491:EE_|SN7PR11MB6726:EE_
x-ms-office365-filtering-correlation-id: f5af6d8e-7bbe-420b-1508-08de544af3a8
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?Y01GK2l3N3FCK0lUZHVaanpDR3lKaG9PZmhLN0VaRmxxNmZ0YUFpem41N09N?=
 =?utf-8?B?VHpyb1FyQWxZQUl5S0lQalBGcVlKRGpjK2JRNHNKRmlhdnFOK3NYNGFGNnVr?=
 =?utf-8?B?V0xLbHNlMEJUTGZuSStSbU1YVk9Ya0M0RlZZNnRVcDVVckhmZmI3R3V6NkdP?=
 =?utf-8?B?QThSOUFReE9nd0I2YzM5YlZNUUwxdHRqNDBaYTVRZ1Z6eTFFbXQrUFJiN2xm?=
 =?utf-8?B?S042T1JyTFU1eFRDcUwxcXhVSVFxaHN1SXd3WnRWZGdHL0I0L2JjdjZEY0pz?=
 =?utf-8?B?bEZVcWpwZ3FpSm9lNmpLNjh6cGJ1Z25YS2FkalI4cWZuNnZJR2FaU2hMUlB4?=
 =?utf-8?B?bS94S084U1lRSit4cVJCTXRVck9POHBTc1JLbTRIWXR0N2VES3lUR3BLOGlG?=
 =?utf-8?B?Uzd0dnFma041SzU4bUtXdGt1a3VQeW9jb3dudWcxMmw0MlRKczJpTGRaQ3Vr?=
 =?utf-8?B?M1ljS2xSTmpFZ24rbktMcnJDREZpSUtYQ2tPK0Uxc2dueDJ1WEZvQ2kySVJ3?=
 =?utf-8?B?QzBUdnRILzVBQkJNdStNRjl0UUlvK3JiTE9MVWNMMDBNWnA2b1ZMR3NMamRh?=
 =?utf-8?B?QnNKdmMvdTBqMzMvTFVjaTA1cWR0Ri9pQ1pTK0lTZUVEQTU2NEhmaisxY2JL?=
 =?utf-8?B?YmNyWUtvVjFrejI1NjVaenhkSWZFdHpBTi9STnRlamVJcDdYUGlyeXc1Y3pI?=
 =?utf-8?B?K2s2OCtVMFg2Z00ya0JoYkJDM1IwdUIya0lMazY5TE1HVStDVDlqT0xUWmVI?=
 =?utf-8?B?K3VERGt6V2grRlIzN2hmdTlveFpvMytqZkMwbytXaVNaYXVyQWN6U2NpUUxE?=
 =?utf-8?B?VVVjRGdWRnlaZTBDK1Q5OXR5dVg1MzRGcVdKcC9WSGZQb3hXR2c5bkhDTTlV?=
 =?utf-8?B?UjVjbC9wQWFqN3JWRXhseUFWd3oySk9lS2o3bXhGZU4yK1BtQzFLTUtjMHFQ?=
 =?utf-8?B?VU1rYms4ZDIzRXNMN05MRHIyTjk3Q1J1RzI3SzgybFhteWpmK1ZkUk5GcFlz?=
 =?utf-8?B?dXg4YlRIMGRxcUNhTlJ4Z3RvR2tVMzlqWGV1RExVVll6YVc2NjhOMkwvNDJF?=
 =?utf-8?B?OEV1SWVydXZQQTlROUs1aXV1N2wzK2Z6MHBvODNTK0VrZkk3bm1YQ0VHYXQw?=
 =?utf-8?B?MEhCNkVvTStFUVNaQXhNTmllVHZjS3dEN3FaNStKKzZYbGx1ajJ6S3htN2F5?=
 =?utf-8?B?Zk5mTDN3WE50ekxzbEE0MVZoSVlncjJwNTNMbmtQZ0k4cnVaNCsyT3gwTWxx?=
 =?utf-8?B?RzhLRXhpWkdNV3hlaXBKNG5MMzY0OHVMNFFtVHRpbFk2ckZmSEd1MFVxajZw?=
 =?utf-8?B?THBvdUxwYUVNeVdOdDdMVTdaeXpyOUxlQlZvQ1FCWDBUZ3owT3FWSUVXR085?=
 =?utf-8?B?aGJkdmttTHk3TXVZeG1ldE5VSHZJYUdLNDhzaWNmUDc5M2pCWkp5aytuRWI2?=
 =?utf-8?B?dXVxbGIvZXM4TTVnNVk2Um8vQStLSnhjTG5seEVrYVR3T2F0SVQ2dEd5cWow?=
 =?utf-8?B?TzQyeWNsbXJTaU1vSVJqUlY3WVVHOU1zRUpTZWlnZFBrMEZ4L0NGVkNKeFp3?=
 =?utf-8?B?SnVVL0RwdXdZelU0U0x6dFYyaFZVSWx6dnRaUkxLOGY1aUhLTUZOZUs1NDRJ?=
 =?utf-8?B?c2wxZHQ1TnluYzl3Qi9yTExvcjRUR3BXRFVnTk12dWZ6RlhLRVZmcVYxS2lz?=
 =?utf-8?B?Um84bmdTUytmczVCV0lpb0IrQk5VOHdpaXNUQWNEQ0REaUJuTmt4b2VXenp2?=
 =?utf-8?B?bjFwd1Y5WlRZT2wzVEdUMTNTREgraXJPVnF2WkRKKzM1a09IeWlyUUpuZ0d1?=
 =?utf-8?B?bGlOaUJlMXh2TVVxYWZVUU1zM01sNXNPR1ZMK0w2U3lpckZOdGtwanNEaGlO?=
 =?utf-8?B?U0J3RFFiRVh6L0hkZi9NcnorVFppcjJ2bmZXZUJvN09rWmI0Q1pzOW1tb0E0?=
 =?utf-8?B?a0pVZlNvTmRsZkcvemJZYW9xZUlZS0c2WXcvUXdna0hYR25DZFY4K0ZBS2I2?=
 =?utf-8?B?TXZsZktQR3B2OXplR1VqSy9XM0RVNklYQnZUZmpsY1ZOckxPWUh0c1ZleC8z?=
 =?utf-8?B?QURIUUl3ZW9TbkVxSVNKcnBRTWs1K0pJS3I1d2d0eUJrZVpia1FvS2h1V1pa?=
 =?utf-8?B?bDlOc2tYcUpRdWVSRjl0aVh1UU45WC9WZ1hoRm84SlhxSnRJSGdyZFZUNXZR?=
 =?utf-8?Q?D9MPJILEfLirV/y4c3DCIc4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV4PR11MB9491.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RFo3RlFzWm83b0dVSFd1bDgzai9oMlZuUmhUQXVINVNxUkpMWG8vTWZvSjQ1?=
 =?utf-8?B?MldPSThPSTQ0V1hMejhoZlZMSVNiRlUvdTJQbVFDL2YzK0dNamNTRE1wNElv?=
 =?utf-8?B?Q0lldFpPQm9vVldQUzROdzRCYW5rVXplb2x5dDdjZ3dJSmFzM3FJZXp2MlpC?=
 =?utf-8?B?L0hra0N4Y2g4b3hwTmE4d1o4azBteEQ1VjFwMWNBamVWeDloM01LbTdrcmZO?=
 =?utf-8?B?MWNNaitMRElRK045RTc5UndlNVJMMGJuOTVtbHkxRVVQWmVTS0ZxMzVCay8y?=
 =?utf-8?B?ZUxzY1Y2ekdqL2tWZUlBQzZ2R1ZaMFhEMi9KbzZ3cmFaVVhXVzlRY0g0YzRl?=
 =?utf-8?B?ZUdzdkxralNJMVg4VTJjcXJVT2RHd1ZyRVpJU3dGdEVFUk81aEJvd3NyZURH?=
 =?utf-8?B?TGlDZ1FCZ3UrWGZEUHhad2dQMEptQldBbjlUZktnN25qOWFaVDdza0NsajlO?=
 =?utf-8?B?WGNld3g5Y2MyaHRSN2F6Z3I5MGc3Sit5SzhLbnpjMlhiZERXS1g2bUFLUzVV?=
 =?utf-8?B?RStVUUxabHA3WUdiQVB5RnhWZHVMZms3NGhEdDRQQ280bzlDd29vbEZxTmhD?=
 =?utf-8?B?QjUrUXZMWFRLd1I2NmNveS9qSlo4NkpEREF6cm0wSWdvTFFnR2dPUlpoS1Q4?=
 =?utf-8?B?eXBVLzR5TGZsK2hvSUFJc09Ib1J4Q2E4QU5SUzI2MDQ3TXh4VHRCVzFhRkJX?=
 =?utf-8?B?STV2YmpaK0NManVHanlNM0xtbnpjZzR3b3FXZjMvaU4wMU1vbVRZSVdWWU5M?=
 =?utf-8?B?cjB0WXdQaitQTWhxb0tvNG1XUWN4bTlkMkxZL1BqVkJtQjZHcHF2eFlqNW5O?=
 =?utf-8?B?MFgrcXZid1pQaGs2VGJDa2VPZDk1dkFPcFg4b2w0MkU2aFhpTytCWjN3TmZy?=
 =?utf-8?B?NzZiZ20vYkJseFEyZXc4ZVIvZTgzMW84cXRGdjRVbXZDczhUQlVOdFJqM2tO?=
 =?utf-8?B?YlRWenBIai9CclMzMWhwckh5Z01ZVFUxVWxtWVhoRExiT1pSZUtnNHlGMEtY?=
 =?utf-8?B?ZXJWUnRGZDVlaFNvbmNacmFYTk5XeC9neCs4MldmSTVITWVqMW1ZZ2pWczRn?=
 =?utf-8?B?c1k1SXpnWW43RVlERVNKOEx3UFBVWUJQczQxSUlyWGo3azB6a2FBOHJNSnNz?=
 =?utf-8?B?R0dZbzM3TmpNQ1VPRXBSS0hmdDJRd0h5U3N3V1dKUHczdGxLanNVcGVnR2dY?=
 =?utf-8?B?c0NrV0ZyM0QvaGY3TXlIZ290SDhDNUpPbmhzY0xWcHpIRGVZMVcvQURpbUZR?=
 =?utf-8?B?eWxNZkhqcXZ6SnFCcDJKanlyaVRUZlZ6N083ZWxDTlhiTERYM21LWFZFYllH?=
 =?utf-8?B?MWtvUmp1OE5vejlZb0JpWnBZUkkzMmFwUFpYWmVBTkhMUUY0eldQSkZ2aTlL?=
 =?utf-8?B?U0orTkVJVE01MndXWXFOcE41K3dwTFRHVkVkbmJCbzd0UWpmejhscXQxaEVp?=
 =?utf-8?B?N1hzelFIQ3VVYi9pSEpuaFRmYnRBSE1KL3JnZ3lBdmFQVzA2YjA5dkx5aXBI?=
 =?utf-8?B?YUU3bWxLYVcwRTZaczNpcm1kbVY4dzhJV2dyaGlkWGE3cE5CMGIzaTYwT1Za?=
 =?utf-8?B?SzEyVzVUNGRySVpVVzVOSEc2b00vK2JJRnFtbG5CZU9qRzVadkhQNTl4T3Bm?=
 =?utf-8?B?Vm8zMjVYSVVRa0RHS0lBdnoyRlBQYmE1N1VzQjlYZVBQZjFFQTJHSjgzL1BN?=
 =?utf-8?B?YjBad2Z6Q0NTYk1JY3MvZkpxK0F4cXRTV2VpOFNLcjJOektDTHV2TVo1S1Vq?=
 =?utf-8?B?d2NHd1M2aGNESnBGVldjL3Z6NWtOcDY2RzZ4M0huMEZQR2p2eDdOQWc3dThm?=
 =?utf-8?B?YTJmMXlEWTFzZ3NHemlZaUpRZkJ2SXFUMzNGUjl6QWxuZERkdHZ3THl2TWpK?=
 =?utf-8?B?a2pGemNxazFIdVpURmpmeTU5K09CRWlLQXpheTM3THZpbTR6QUIzc0FaZkRv?=
 =?utf-8?B?SlJDZWt4RS9aS05GaU9xRjA1YTYySkhuNURkakJwN2pQZzlOd3hxdGZId2FM?=
 =?utf-8?B?WG80UE52VzkzaXl4RkNjdCtOZWJyeHFqUlJrTDhPckhOUUpsQ1F5UWZDS214?=
 =?utf-8?B?TVU3Ylc4WTFJYjB4bURxN2dVY1lCY2JZY1dqNGRWcVI4Sk8yVmZSUythcUlj?=
 =?utf-8?B?QnpJTlgzTW5qUDNkd3kzU1djWHVpQUlIRU1TZnZMc0s5VXBreFRxUnZlK1JR?=
 =?utf-8?B?dlAwT1U4SGNJL0h3NFJVL2F0Ylhta0luOGlEd2p6eGMxNndKOXVoQ3RHWERk?=
 =?utf-8?B?MjlVS1dVN1JDTU95OWZiaFVGVXlEQmw5ZndNbFN3QVgzR3BuTUdaeG4ydWpL?=
 =?utf-8?B?dnFFWHM3NUJKVDdUWWdBQ3RsTDFmbmtQNE5OY21adkNRdjVweTJpcnZSTnYw?=
 =?utf-8?Q?41b7s4z5ry7sGZ9g=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV4PR11MB9491.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f5af6d8e-7bbe-420b-1508-08de544af3a8
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2026 15:30:02.5045 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8owDvDBxU8ow8BMf1UfHqOabcXFK/f4NkU1PYxsjCchzNsxXjVpxxG976lwK97hfes5rynxb9CM7APEgPTgbtQWIP25oEax8ZEki26KHv30=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6726
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768491021; x=1800027021;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=r9+3HHxixSro6UVPr12fVCUh27AnVdBJbet1KhqS77g=;
 b=VqiT94uTMAA0TpTiIFyNrcm2G3QX6s7XQjtT5EWcmE8W9iWDV0/+EL12
 7l7SL2tEUSQfWhtK/DRJ1TSFEj2nrtTSV41cc3d+YQD37jJEv3u6Oj+C+
 bKZ+EUGubHA0e/swqscwah94k4AnXZpmFARtTEZgVDkEzTzF+tebZwn1F
 2O3tDoQ5/cx6bbd353BCF7/hwavFH33Fhx0rzz00fCTAbOa0ewI4m1Yrp
 yr3eqyCgu3vWMPikQKZl/+0jcanky+Ohbv01JghUwCjCizgkkCXBG4BYO
 fI7zw/fGuKPVl9r6LPi67SXz7c1kINn+XmiXMXAFSqTGW8Mnr9XuHnbqT
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VqiT94uT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v5 iwl-next] ice: add support for
 unmanaged DPLL on E830 NIC
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
Cc: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Fodor,
 Zoltan" <zoltan.fodor@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PkZyb206IFZpdGFseSBHcmluYmVyZyA8dmdyaW5iZXJAcmVkaGF0LmNvbT4NCj5TZW50OiBUaHVy
c2RheSwgSmFudWFyeSAxNSwgMjAyNiA5OjU4IEFNDQo+DQo+LCB0aGUgZWENCj4NCj5PbiBXZWQs
IEphbiAxNCwgMjAyNiBhdCAzOjMy4oCvUE0gS3ViYWxld3NraSwgQXJrYWRpdXN6DQo+PGFya2Fk
aXVzei5rdWJhbGV3c2tpQGludGVsLmNvbT4gd3JvdGU6DQo+Pg0KPj4gPkZyb206IFZpdGFseSBH
cmluYmVyZyA8dmdyaW5iZXJAcmVkaGF0LmNvbT4NCj4+ID5TZW50OiBXZWRuZXNkYXksIEphbnVh
cnkgMTQsIDIwMjYgMTI6MzkgUE0NCj4+ID4NCj4+DQo+PiBbLi5dDQo+Pg0KPj4gPj4gPg0KPj4g
Pj4gPkkgc2VlIGEgZmV3IGNoYWxsZW5nZXMgZm9yIHRoZSB1c2VyIGhlcmUuIFRoZSBiaWdnZXN0
IG9uZSBpcyB0aGF0DQo+PiA+PiA+dGhlDQo+PiA+PiA+YXBwbGljYXRpb24gY2FuJ3QgdGVsbCB0
aGUgZGlmZmVyZW5jZSBiZXR3ZWVuIGEgZGV2aWNlIHRoYXQgd2lsbA0KPj4gPj4gPnJlcG9ydA0K
Pj4gPj4gPnBoYXNlIG9mZnNldHMgYW5kIHRoaXMgdW5tYW5hZ2VkIGRldmljZSB0aGF0IG5ldmVy
IHdpbGwuDQo+PiA+PiA+QSBwb3NzaWJsZSB3YXkgZm9yd2FyZCB3b3VsZCBiZSBhZGRpbmcgYSBj
YXBhYmlsaXR5IGZsYWcgdG8gdGhlIERQTEwNCj4+ID4+ID5BUEkNCj4+ID4+ID5zbw0KPj4gPj4g
PnVzZXJzIGRvbid0IGhhdmUgdG8gZ3Vlc3MuDQo+PiA+Pg0KPj4gPj4gVGhlcmUgaXMgbm8gcGhh
c2Utb2Zmc2V0IGZpZWxkIGFzIHBvaW50ZWQgaW4gdGhlIGFib3ZlIGV4YW1wbGUuDQo+PiA+PiBO
byAncGhhc2Utb2Zmc2V0JyBhdHRyaWJ1dGUgLT4gbm8gc3VjaCBjYXBhYmlsaXR5Lg0KPj4gPj4g
V2h5IGlzbuKAmXQgdGhhdCBlbm91Z2g/DQo+PiA+DQo+PiA+UGluIHJlcGx5IGRvZXMgbm90IGNv
bnRhaW4gcGhhc2Ugb2Zmc2V0LCBzbyBubyBjaGFuZ2Ugbm90aWZpY2F0aW9ucw0KPj4gPmFyZSBl
eHBlY3RlZD8NCj4+ID5Db3VsZCB0aGVyZSBiZSBkZXZpY2VzIHRoYXQgZG9uJ3QgcmVwb3J0IHBo
YXNlIG9mZnNldCwgYnV0IHJlcG9ydCBzdGF0ZQ0KPj4gPmNoYW5nZXM/DQo+PiA+SXMgdGhpcyB0
aGUgaW50ZW5kZWQgdXNlIG9mIHRoZSBwaGFzZSBvZmZzZXQgQVBJIHRvIGJlIGludGVycHJldGVk
IGFzDQo+PiA+YSBnZW5lcmFsIHBpbg0KPj4gPm5vdGlmaWNhdGlvbiBjYXBhYmlsaXR5IGZsYWc/
DQo+PiA+DQo+Pg0KPj4gU29ycnksIHRoaXMgaXMgbm90IHdoYXQgSSBtZWFudC4NCj4+DQo+PiBU
aGUgRTgxMCBwcm9kdWNlcyBub3RpZmljYXRpb25zIG5vdCBvbmx5IGZvciB0aGUgcGluJ3MgcGhh
c2Ugb2Zmc2V0IGJ1dA0KPj4gYWxzbyBmb3Igb3RoZXIgcGluIGF0dHJpYnV0ZSBjaGFuZ2VzLiBX
aGVuIGl0IGNvbWVzIHRvIHRoZSBFODEwIHBpbnMsDQo+PiBub3RpZmljYXRpb25zIGdlbmVyYXRl
ZCBieSBwaGFzZSBvZmZzZXQgY2hhbmdlcyBhcmUgcXVpdGUgZnJlcXVlbnQuDQo+PiBIb3dldmVy
LCBpdCB3YXNuJ3QgaW50ZW50aW9uIHRvIHByb2R1Y2UgdGhlbSBldmVyeSBzZWNvbmQ7IHRoaXMg
aXMNCj5zaW1wbHkNCj4+IHRoZSByZXN1bHQgb2YgZnJlcXVlbnQgcGhhc2Ugb2Zmc2V0IGNoYW5n
ZXMuDQo+Pg0KPj4gVHlwaWNhbGx5LCB0aGUgcGluIHN0YXRlIGNoYW5nZXMgZm9yIHRoZSBwaW4s
IGJ1dCBmb3IgRTgzMCwgdGhlDQo+PiB1bm1hbmFnZWQNCj4+IG1vZGUgbWVhbnMgdGhhdCB0aGUg
c3RhdGUgb2YgdGhlIHBpbiBuZXZlciBjaGFuZ2VzLCByZXN1bHRpbmcgaW4gbm8gcGluDQo+PiBu
b3RpZmljYXRpb25zIGJlaW5nIHByb2R1Y2VkIGluIHRoZSBlbmQuDQo+Pg0KPj4gSG9wZSB0aGF0
IGNsZWFycyB0aGluZ3MgdXAuDQo+DQo+V2lsbCB0aGUgcmVwb3J0ZWQgcGluIHN0YXRlIHJlbWFp
biAiY29ubmVjdGVkIiBldmVuIGlmIEkgZGlzY29ubmVjdA0KPnRoZSBpbnB1dCBzaWduYWw/DQo+
SXMgdGhlcmUgYW55IGluZm9ybWF0aW9uIGluIERQTEwgb3IgcGluIHJlcGxpZXMgdGhhdCBjYW4g
dGVsbCB0aGUgdXNlcg0KPiJ0aGlzIERQTEwgaXMgdW5tYW5hZ2VkIHR5cGUsIGl0IGJlaGF2ZXMg
ZGlmZmVyZW50bHkiPw0KDQpZb3UgcmVhbGx5IGNhbm5vdCBkaXNjb25uZWN0IGFueXRoaW5nIHRo
ZXJlLCBpdCBpcyBhbHdheXMgY29ubmVjdGVkLA0KYW5kIG5vIG9uZSBjYW4gY2hhbmdlIGl0LiBJ
dCBvbmx5IHNob3dzIHRoZSB1c2VyIGFjdHVhbCBwaHlzaWNhbA0KY29ubmVjdGlvbnMgaGFyZHdp
cmVkIGludG8gdGhlIE5JQy9kcGxsLiBUaGVyZSBpcyBubyBTVyBoYW5kbGVkIGNvbmZpZw0KcG9z
c2libGUgb24gdGhvc2UuIEFzIHByb3ZpZGVkIGluIHRoZSBjb21taXQgbWVzc2FnZSwgdGhlIHBp
bnMgaGF2ZSBlbXB0eQ0KY2FwYWJpbGl0aWVzIHNldDogJ2NhcGFiaWxpdGllcyc6IHNldCgpLCB0
aHVzIG5vdCBwb3NzaWJsZSB0byBjaGFuZ2Ugc3RhdGUNCmJ5IHRoZSB1c2VyLg0KDQo+DQo+Pg0K
Pj4gPj4NCj4+ID4+ID5Ib3dldmVyLCB0aGUgcHJlZmVycmVkIHNvbHV0aW9uIHdvdWxkIGJlIHRv
IHNpbXBseSBtaXJyb3IgdGhlIEU4MTANCj4+ID4+ID5iZWhhdmlvcg0KPj4gPj4gPihzZW5kaW5n
IHBoYXNlIG9mZnNldCkuIFRoaXMgcHJlc2VydmVzIHRoZSBleGlzdGluZyBBUEkgY29udHJhY3Qg
YW5kDQo+PiA+PiA+cHJldmVudHMgdXNlcnMsIHdobyBoYXZlIGFscmVhZHkgYnVpbHQgYXBwbGlj
YXRpb25zIGZvciB0aGlzDQo+PiA+PiA+aW50ZXJmYWNlLA0KPj4gPj4gPmZyb20gbmVlZGluZyB0
byBpbXBsZW1lbnQgc3BlY2lhbCBoYW5kbGluZyBmb3IgYSBuZXcgaGFyZHdhcmUNCj4+ID4+ID52
YXJpYW50DQo+PiA+PiA+dGhhdA0KPj4gPj4gPmJlaGF2ZXMgZGlmZmVyZW50bHkuDQo+PiA+Pg0K
Pj4gPj4gVGhpcyBpcyBub3QgY3VycmVudGx5IHBvc3NpYmxlIGZyb20gZHJpdmVyIHBlcnNwZWN0
aXZlLg0KPj4gPj4gV2UgbWlzcyB0aGUgRlcgQVBJIGZvciBpdC4NCj4+ID4+DQo+PiA+PiA+VGhl
cmUgYXJlIGFkZGl0aW9uYWwgaW5jb25zaXN0ZW5jaWVzIGluIHRoZSBleGlzdGluZyBzdHJ1Y3R1
cmUgSQ0KPj4gPj4gPndhbnRlZA0KPj4gPj4gPnRvDQo+PiA+PiA+YnJpbmcgdG8geW91ciBhdHRl
bnRpb24uDQo+PiA+PiA+MS4gSSdtIG5vdCBlbnRpcmVseSBzdXJlIGhvdyBhIDE1ODgtVElNRV9T
WU5DIHBpbiBjYW4gaGF2ZSBhIHBhcmVudA0KPj4gPj4gPmRldmljZQ0KPj4gPj4gPm9mIHR5cGUg
ImVlYyIuIEVFQyBpcyBhbGwgYWJvdXQgZnJlcXVlbmN5IHN5bmNocm9uaXphdGlvbiwgYW5kIHll
dA0KPj4gPj4gPnRoZQ0KPj4gPj4gPnBpbg0KPj4gPj4gPm5hbWVkIDE1ODgtVElNRV9TWU5DIGlz
IGNsZWFybHkgYSBwaGFzZSBwaW4uIFRoaXMgYWxzbyBkb2Vzbid0IHBsYXkNCj4+ID4+ID53ZWxs
DQo+PiA+PiA+d2l0aCBleGlzdGluZyBpbXBsZW1lbnRhdGlvbnMsIHdoZXJlIEVFQyBjaXJjdWl0
cyBkZWFsIHdpdGgNCj4+ID4+ID5mcmVxdWVuY3ksDQo+PiA+PiA+UFBTDQo+PiA+PiA+Y2lyY3Vp
dHMgZGVhbCB3aXRoIHBoYXNlLCBhbmQgdGhlcmUgaXMgY2xlYXIgZGlzdGluY3Rpb24gYmV0d2Vl
biB0aGUNCj4+ID4+ID50d28NCj4+ID4+ID53aXRoIHJlZ2FyZCB0byB0aGUgbWVhbmluZyBvZiAi
YmVpbmcgbG9ja2VkIi4NCj4+ID4+DQo+PiA+PiBUaGlzIGRwbGwgZGV2aWNlIHR5cGUgd2FzIGVz
dGFibGlzaGVkIGJhc2VkIG9uIHRoZSBtYWluIHB1cnBvc2Ugb2YNCj4+ID4+ID5kcGxsDQo+PiA+
PiBkZXZpY2Ugd2hpY2ggaXMgdG8gZHJpdmUgdGhlIG5ldHdvcmsgcG9ydHMgcGh5IGNsb2NrcyB3
aXRoIGl0Lg0KPj4gPg0KPj4gPldoYXQgaXMgdGhlIHBoeXNpY2FsIG1lYW5pbmcgb2YgdGhpcyBp
bmRpY2F0aW9uIChsb2NrLXN0YXR1cyc6DQo+PiA+J2xvY2tlZCcpPyBMb2NrZWQgb24gd2hhdD8N
Cj4+DQo+PiBMb2NrIHN0YXR1cyBpcyBkcGxsIGRldmljZSBwcm9wZXJ0eS4NCj4+DQo+PiBCdXQg
ZnVsbCBwaWN0dXJlIGhhcyB0byBiZSBkZXRlcm1pbmVkIGZyb20gdGhlIGxpc3Qgb2YgcGlucywg
Zm9yIHRoaXMNCj4+IHBhcnRpY3VsYXIgY2FzZSwgb25lIGlucHV0IHByb3ZpZGVkIGZyb20gaG9z
dCB0aHJvdWdoIHBjaS1lIHBpbiwgMTBNSHoNCj4+IGJhbmR3aWR0aCBmcmVxdWVuY3kgYW5kIDEg
UFBTIHN5bmMgcHVsc2VzLg0KPj4NCj4+IEFzIGFscmVhZHkgcG9pbnRlZCB0aGUgdHlwZSBvZiBk
cGxsIHNoYWxsIGxldCB1c2VyIGtub3cgdGhlIHB1cnBvc2Ugb2YNCj4+IHRoZSBkcGxsIGV4aXN0
ZW5jZSBpbnN0ZWFkIG9mIHBhcnRpY3VsYXIgaW5wdXQgcHJvcGVydGllcy4NCj4+IElucHV0IHBy
b3BlcnRpZXMgYXJlIGRldGVybWluZWQgd2l0aCB0aGUgcGluJ3MgYXR0cmlidXRlcy4NCj4+DQo+
PiA+QXMgYSB1c2VyIG9mIHRoaXMgY2lyY3VpdCBJIHdhbnQgdG8ga25vdyB0aGF0IHRoZSBkZXZp
Y2UgaXMgbG9ja2VkIG9uDQo+PiA+dGhlIHBoYXNlIG9mIHRoZSBpbnB1dCBzaWduYWwgd2l0aCBh
IGNlcnRhaW4gcHJlY2lzaW9uLg0KPj4gPklzIHRoaXMgdGhlIG1lYW5pbmcgb2YgImxvY2tlZCIg
aGVyZT8gQ2FuIGFuIEVFQyBkZXZpY2UgYmUgbG9ja2VkIG9uDQo+PiA+dGhlIFBoYXNlIG9mIHRo
ZSBpbnB1dCBzaWduYWw/DQo+Pg0KPj4gV2VsbCBJIGRvbid0IGhhdmUgYW55IGRhdGEgb24gdGhl
IHByZWNpc2lvbiBvZiBzdWNoLCBidXQgQUZBSUsgaXQgY2FuLg0KPj4gRUVDIGRwbGwgc2hhbGwg
YmUgcHJvZHVjaW5nIHN0YWJsZSBzaWduYWwsIHRoZSBpbnB1dCBpdCB1c2VzIGlzIG9ubHkNCj4+
IHBhcnQgb2YgdGhlIGZ1bGwgZHBsbCBkZXZpY2UgcGljdHVyZS4NCj4+DQo+PiA+VXNlcnMgb2Yg
b3RoZXIgZGV2aWNlcyAoZTgxMCwgemwzMDczeCkgbWF5IGhhdmUgaW1wbGVtZW50ZWQgbG9naWMg
dG8NCj4+ID5kZXRlcm1pbmUgdGhlIHBoYXNlIGxvY2sgYnkNCj4+ID5lbmZvcmNpbmcgdGhlIHBp
biBwYXJlbnQgZGV2aWNlIHR5cGUgYXMgUFBTLiBIb3cgc2hvdWxkIHRoZXkgY2hhbmdlIGl0DQo+
PiA+dG8gZGV0ZXJtaW5lIHBoYXNlIGxvY2sgKGFuZCB3aHkpPw0KPj4gPg0KPj4NCj4+IEkgYW0g
U29ycnksIEkgZG9uJ3QgdW5kZXJzdGFuZCB0aGUgZXhhbXBsZSBhYm92ZSwgY291bGQgeW91IHBs
ZWFzZQ0KPj4gRWxhYm9yYXRlIG9uIGRldGFpbHMgb2Ygc3VjaCBzZXR1cD8NCj4NCj5ZZXAsIGds
YWRseSENCj5UZWxjbyBjdXN0b21lcnMgcmVseSBvbiB0aGUgUGhhc2UgYmVpbmcgbG9ja2VkIG9u
IHRoZSByZWZlcmVuY2Ugd2l0aCBhDQo+Y2VydGFpbiBwcmVjaXNpb24uIEluIEU4MTAgYW5kIHps
MzA3M3ggdGhlIGVxdWF0aW9uIGlzIHNpbXBsZToNCj4xLiAiZWVjIGxvY2tlZCIgbWVhbnMgc3lu
VG9uaXphdGlvbiBhY2hpZXZlZCAtIGZyZXF1ZW5jeSBsb2NrZWQNCj4yLiAicHBzIGxvY2tlZCIg
bWVhbnMgc3luQ2hyb25pemF0aW9uIGFjaGlldmVkIC0gcGhhc2UgbG9ja2VkDQo+VGhlIFQtQkMg
YXBwbGljYXRpb24gY2hlY2tzIHRoZSByZXBvcnRlZCBkZXZpY2UgdHlwZS4gSWYgdGhlIGRldmlj
ZQ0KPnR5cGUgaXMgInBwcyIsIHRoZSByZXBvcnQgaXMgcHJvY2Vzc2VkIGJ5IHRoZSBzeW5jaHJv
bml6YXRpb24gc3RhdGUNCj5kZWNpc2lvbiBsb2dpYy4gT3RoZXJ3aXNlLCB0aGUgcmVwb3J0IGRv
ZXNuJ3QgaGF2ZSBhbnkgbWVhbmluZyB3aXRoaW4NCj4iVC1CQyB3aXRob3V0IFN5bmNFIiBjb250
ZXh0IGFuZCBpcyBkaXNjYXJkZWQuDQo+DQo+U2luY2UgdGhpcyBwYXRjaCBpcyBnb2luZyB0byBj
cmVhdGUgZWVjIHJlcG9ydHMgb25seSwgdGhleSBhcmUgYWxsDQo+Z29pbmcgdG8gYmUgZGlzY2Fy
ZGVkLCBhbmQgdGhpcyBpcyBhIGNvbXBhdGliaWxpdHkgaXNzdWUgSSdtIHRyeWluZyB0bw0KPmFk
ZHJlc3MuDQo+DQoNCkkgc2VlLiBGcm9tIHRoaXMgYW5nbGUgdGhlIFBQUyB0eXBlIGxvb2tzIGxp
a2UgYSBzdXBlcnNldCBvZiBFRUMuDQpJdCBtYWtlcyBzZW5zZSB0byBtZS4gV2UgaGFkIGFsc28g
c29tZSBkaXNjdXNzaW9uIGFuZCBhZ3JlZWQgdG8gcHJvcG9zZQ0KbmV3IHBhdGNoIHdpdGggdGhl
IFBQUyB0eXBlLCBhcyB3ZSBkb24ndCB3YW50IHRoZSB1bmRlcmx5aW5nIFNXIHRvIGJlDQp0cm91
YmxlZCB3aXRoIHN1Y2ggaXNzdWUuDQoNCj5Db3VsZCB5b3UgcGxlYXNlIGFuc3dlciBteSBxdWVz
dGlvbiBhYm92ZToNCj5XaGF0IGlzIHRoZSBwaHlzaWNhbCBtZWFuaW5nIG9mIHRoaXMgaW5kaWNh
dGlvbg0KPihsb2NrLXN0YXR1cyc6J2xvY2tlZCcpIGluIHRoaXMgcmVwb3J0Pw0KPg0KDQpJdCBt
ZWFucyB0aGF0IGRwbGwgaXMgbG9ja2VkL3N5bmNocm9uaXplZCB3aXRoIHRoZSBlc3luYyAxME1I
ei8xUFBTLA0KYSBzaWduYWwgcHJvdmlkZWQgdGhyb3VnaCBwY2llIHBpbi4NCg0KVGhhbmsgeW91
IQ0KQXJrYWRpdXN6DQoNCj5UaGFua3MhDQo+VkcNCj4NCj4+IFRoYW5rIHlvdSENCj4+IEFya2Fk
aXVzeg0KPj4NCj4+ID4+DQo+PiA+PiA+Mi4gU2luY2UgaXQgaXMgYWxzbyBhbiBleHRlcm5hbCBl
bWJlZGRlZCBzeW5jIGlucHV0IHBpbiwgY291bGQgaXQgYmUNCj4+ID4+ID5wb3NzaWJsZSB0byBl
eHBvc2UgdGhpcyBpbmZvcm1hdGlvbiBhbmQgaW5jbHVkZSBgZXN5bmMtZnJlcXVlbmN5YA0KPj4g
Pj4gPmFuZA0KPj4gPj4gPmBlc3luYy1wdWxzZWA/IFRoYXQgY291bGQgYmUgdXNlZnVsIGZvciBj
b25maWd1cmluZyB0aGUgbGVhZGluZyBEUExMDQo+PiA+PiA+dGhhdA0KPj4gPj4gPmRyaXZlcyB0
aGUgdW5tYW5hZ2VkIG9uZS4NCj4+ID4+DQo+PiA+PiBTdXJlLCBlc3luYyBjYXBzIHNob3VsZCBi
ZSBwcm92aWRlZCwgYXMgdGhlIGNvbW1pdCBtZXNzYWdlIGV4YW1wbGUNCj4+ID4+ID5zaG93bjoN
Cj4+ID4+ICsgICAgJ2VzeW5jLWZyZXF1ZW5jeSc6IDEsDQo+PiA+PiArICAgICdlc3luYy1mcmVx
dWVuY3ktc3VwcG9ydGVkJzogW3snZnJlcXVlbmN5LW1heCc6IDEsICdmcmVxdWVuY3ktDQo+PiA+
PiA+bWluJzoNCj4+ID4+MX1dLA0KPj4gPj4gKyAgICAnZXN5bmMtcHVsc2UnOiAyNSwNCj4+ID4+
DQo+PiA+DQo+PiA+T2gsIEkgbXVzdCBoYXZlIG1pc3NlZCB0aGF0Lg0KPj4gPlRoYW5rcyENCj4+
ID5WaXRhbHkNCj4+ID4NCj4+ID4+IFRoYW5rIHlvdSENCj4+ID4+IEFya2FkaXVzeg0KPj4NCg0K
