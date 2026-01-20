Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8KkPEBCib2kLCAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jan 2026 16:41:04 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 883E0465E5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jan 2026 16:41:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B46F44F06A;
	Tue, 20 Jan 2026 13:14:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8dAEiNOX6YjE; Tue, 20 Jan 2026 13:14:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B696F4F067
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768914894;
	bh=494/jfw7OwKaedtoC3fvmxi3jYavL70eC+ISNJxsUb0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sAvP7r6sz9BSrvWG1Rx3fIB7A1q5qoqZf21QUyB0JAlhx29pk3EHg7C7D11z1Od4W
	 eKsuUOiMKr851GksUA9LoLMRNN4qUBKOzug6WnGuC3jBH+Kl7VtJF5niW1vnCYraT2
	 qtzXg3MWIElYZssP96BJPex/iriCJCShWOliapRxByhmgnSlgexFYVDMIb+5WeyxV2
	 dUjysLn7lsz7pOGR4ohJ3300iLAmpO6w12WYGnV2YsCibQbw80m1G1hR2NZRX6wDXe
	 ihaX0HoervYlRmN0/Qex/K+BmfRXY72uGAiDSYb25AhEc6R0WMrNGxLMTq5A21dr2y
	 MOpk8ZUpYP3aQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B696F4F067;
	Tue, 20 Jan 2026 13:14:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5EB51160
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 13:14:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 42A50403E7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 13:14:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Sf6geMRCtfxB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jan 2026 13:14:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 471EC4033D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 471EC4033D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 471EC4033D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 13:14:51 +0000 (UTC)
X-CSE-ConnectionGUID: QDt+Ghf/Sf65VE7RP8lV0Q==
X-CSE-MsgGUID: f83iXHVGS0WtGN2GiE5wcQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11676"; a="80753614"
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="80753614"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 05:14:51 -0800
X-CSE-ConnectionGUID: 4xc2pqJpQgGbeBSbjE3vGg==
X-CSE-MsgGUID: i1mkt439S5yEOIyf5png9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="206155786"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 05:14:50 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 20 Jan 2026 05:14:49 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 20 Jan 2026 05:14:49 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.9) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 20 Jan 2026 05:14:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=b5QvNZpWQYqBwMygRYRpRiP2T2xNSPLHAq4uzgegorfdqIx9vvI+wwnN+gHudxpgszwbRNoz1xOJIHQT7Nz6qrOgkiK1bRU5+ObChlunKU3tyx9363YyXmw4U/7QdqbAYX4loLUrImwP5bpQYAmLYYCR/8lGIXqW+ePSMKE5iIjKu0kT26Z+Jbap5MSD4hgJbAh7TnwtbjTs6wFE1olwYPBX1MGoJfdEzGZuSEqDjG1z0G0bTm3hoxWwyX4FU+TYAsUkcpgN9YhB538uV3SG4E6tj/ThQVwYBmbqqTR+HtuWZKfBKPle4ZD7qF/G7jhFqfsMm2vCKR4N09nkbXOqHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=494/jfw7OwKaedtoC3fvmxi3jYavL70eC+ISNJxsUb0=;
 b=jrzI3z7DtllIPwN/taXZrtqeC6RgEKzyw/WvORXGYG+R9y8h4mVqTbFFVrgKHYOgV5NIur7BObYngcEajXFMR3uNDOZrmlVH5+qZWw1/uQ/PXUkHcC1QPIjU2oBqa5WYya1y5ngoCHD449DiytGwPHsMr1hrqdoh4GDxV2kwUe4gV/4uLaVYbgcx22Syp6U8CJgdwzvslOt9VCvGmQmD2+qPbqVvBE3Td2T28eAMwNwmDRsZOJUSpz/K2gtH9Q48UHCmiUhEQFWJX+wPFwT+lcn7eQE9Kdz7VXNaM8nuxgMY8IKns2UBztkH7WLpsF4YmpnSUkk6a4dj3VUa/tDYCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA3PR11MB9485.namprd11.prod.outlook.com (2603:10b6:806:45e::16)
 by DS4PPFCECA32305.namprd11.prod.outlook.com (2603:10b6:f:fc02::51)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.12; Tue, 20 Jan
 2026 13:14:46 +0000
Received: from SA3PR11MB9485.namprd11.prod.outlook.com
 ([fe80::cf2c:dcfc:b6d3:57ba]) by SA3PR11MB9485.namprd11.prod.outlook.com
 ([fe80::cf2c:dcfc:b6d3:57ba%5]) with mapi id 15.20.9520.011; Tue, 20 Jan 2026
 13:14:46 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: "Grinberg, Vitaly" <vgrinber@redhat.com>
Thread-Topic: Re:[Intel-wired-lan] [PATCH v5 iwl-next] ice: add support for
 unmanaged DPLL on E830 NIC
Thread-Index: AQHcWgwUHqTXSPJapUuoKo9k9qimQ7UkgCYAgCMGLQCABLXsAIAFhyPAgAAdKQCAAAM7kIABYi6AgAA0S7CAAFmNAIAHlKoQ
Date: Tue, 20 Jan 2026 13:14:45 +0000
Message-ID: <SA3PR11MB948589504AC11F071B6AF2B59B89A@SA3PR11MB9485.namprd11.prod.outlook.com>
References: <20251120105208.2291441-1-grzegorz.nitka@intel.com>
 <20251216144154.15172-1-vgrinber@redhat.com>
 <IA1PR11MB621913F389165EE4D7CCFF2D9284A@IA1PR11MB6219.namprd11.prod.outlook.com>
 <CACLnSDikAToGRvfZAhTcT0NCtMj+N9z-GGzRQ5qmpHsvCr2QSA@mail.gmail.com>
 <LV4PR11MB9491EB644FC83676522107669B8FA@LV4PR11MB9491.namprd11.prod.outlook.com>
 <CACLnSDhEQVJ5piUKp6bddxvOff88qj5X6Y8zbqAH8Kf5a7a_Zg@mail.gmail.com>
 <LV4PR11MB9491B0E591D66E4AEDE9B1329B8FA@LV4PR11MB9491.namprd11.prod.outlook.com>
 <CACLnSDggQLQMFdT3VLxm+GNNad6xy43nh6D+UzbW-u9Wwg+WOw@mail.gmail.com>
 <LV4PR11MB9491C8288A84379A1199DC409B8CA@LV4PR11MB9491.namprd11.prod.outlook.com>
 <CACLnSDgy+mxqgy+fShC1kre05zF54tCfttqQTzzFkBt4f9UYog@mail.gmail.com>
In-Reply-To: <CACLnSDgy+mxqgy+fShC1kre05zF54tCfttqQTzzFkBt4f9UYog@mail.gmail.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA3PR11MB9485:EE_|DS4PPFCECA32305:EE_
x-ms-office365-filtering-correlation-id: 6c62438a-ce66-4c7e-18b3-08de5825e1eb
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?V3F3dVo2TlJlOHlKN3ROcmtlaXlaeU5ITHppY0dlbHRSZGx5T0JpMVpzZnNF?=
 =?utf-8?B?VllpdTdsRk1oeXUxVnBVOFR6bFRlZjVHdWJhQUZYRFpIbmVMNkVhWkwxSWlY?=
 =?utf-8?B?SE9BR3lRampISDhSeW1QMHlyTy9Hd0FtTVVENHE0NHorZVczLy9ieTdPSHBT?=
 =?utf-8?B?bmc2SzdxTmZHaUNOdEZuVFFoV25SRWpXWGw5aFdLQkVQSmxWd1Jqa0F2UnN5?=
 =?utf-8?B?K1ZyMWxTZ0JRSmpFdWlSakxBZUJpSVB2dGpCQ3JtUVBzWGVlNGFmVzZ3Y2Rx?=
 =?utf-8?B?bTBJN09lQWZhNXJ3Ukt6RDhhd2VDQ3lBUkl3RzFWQkRjdkdGSDNuWFNveTZq?=
 =?utf-8?B?YkFjNTV5VTA3R3hRRE9ZRkhYZ3M2d1FUQjBLMVJkQVI4MUdoYWlGaEZ6QTZ2?=
 =?utf-8?B?T1EyY0I1WmRRUjJTN3VOQ0hNMW8zVzlqQ0JhY3k0ZTB0N2tLOE1rZEVUMHpv?=
 =?utf-8?B?UEQwclVLSHE5VXpzN0hkMGFIWFBmcUdDclFZQ21pSUFhKyt1U3c3WFVyRytG?=
 =?utf-8?B?eFJwU2REc0xaUXp2dDROWWZuU3ZRaG5TZm9icDNhRytvMTE0VDlyRnRTTEFL?=
 =?utf-8?B?SmZFWlJvN2dYWTMxVDhNRUpGM2ViY2ZQUUpTNU5DMGpiaDNoczNaaGJFeEg1?=
 =?utf-8?B?dVBHRHNTdHRPWXV2NVMxcXlpSlF1Y3hEWk1tWnRTbTZsNzFFVW1HSmVnSzNM?=
 =?utf-8?B?cjh0YXVoQ0orY0JpRUhvejBMenhYMzFNTHV3dnREVHUxZWgxWE5mNW9aMmpK?=
 =?utf-8?B?VTRXQnR2TTFSZHBqL01CU1ZlMy9lVW9lVHRCNmNla2N3MVBqQTNFcUpEeGk5?=
 =?utf-8?B?Z2dHd3Z2QUZ0b01aVDNpcUppNXB3YTRJanZsbjE2K0pnVTZscVh6ZnVRdDhs?=
 =?utf-8?B?c3cxQ1NjNTc2dGkvNU5NczRnbHU3VkxicWplMWtGalVVOXkyMy8rQW9zeHlu?=
 =?utf-8?B?QkJLZ3l0ejNFVHE3TWgyUXkxc1JVdG5RSmJMbGFtTHVXVnBpMHJROXh4ZUIy?=
 =?utf-8?B?T3JoaVVPSjZXQnBGdENLeTY0NjBsK2lMd3hhdGpab3VEdGJrY3dKR0RRckNS?=
 =?utf-8?B?T1BieTYvcVljNzNxZm1Yd3Y1cHYvSXZhMlhoa1pZamIvc3JoV0VIVlJ6SEg2?=
 =?utf-8?B?dC92bnE5aFN2d0dlK2pOckFkZHFrRmRtRjdqdFhsbTFDOVgvM3FPZVczSVpv?=
 =?utf-8?B?UmliQUxHWlhzMitEUUdFRG83ajB0dDFUWlA4dUs5K0RrZ0F2ak81VmpRNUpF?=
 =?utf-8?B?bk9tZTFMbVFBNFZ1U2V1c1A4d3VFT2hrOUcyNVZYUk1KeEJIKzExdzJySUtu?=
 =?utf-8?B?OXZXSW9HTDl4ZGRpUHdnbTE0R1FYYm5hSnUrdmd6NTRQYTV4RWhhb25DaWpL?=
 =?utf-8?B?bWU4WCt0bUJPUFV0RkJTZmZ6cUVqelpNckRCa08yN2t1L0tJR3Jib3lZUU9t?=
 =?utf-8?B?c2k4QngvMVRhT3JUMlljSFhpZWlJR043WXpsei8rVWp1TmROK2Y5d0llRGdw?=
 =?utf-8?B?WUErTEZRME9iUHFKRHdiU1NNR0YxM2kzNkZRZEdLZWhtVTFVb1Y0LzlPV2k0?=
 =?utf-8?B?Uk83RSt2ekw0cnhwemF5WXZVVEN1VlNOanZIcDQ0VVpSRzVwVGRHTjhDcjNa?=
 =?utf-8?B?V2FKZ0pOYllWaXpUenBOSVZTdWNVNE90UUd0M1JSb0I4Wkd2OU1nWlRuR2xH?=
 =?utf-8?B?QTlhRG4rUDJWaU5vTkg5Tk02QkJhV3VZQmVsdFZZS08wbVo5NFc5d3lJSUI3?=
 =?utf-8?B?cld5djlNQWordXp4REFucm9IdVJxTitVUFYzYjQvUDRWSjd3eENYa1Y2WGk5?=
 =?utf-8?B?YzE2enZ4T2JMVnhvcVB2dDdZTDdESXhybUR4OTFnVklTRnpYZTlUS0M3TFF1?=
 =?utf-8?B?T045c25hcHFJdUttOGlhcld3a0dmVDlKQVZnSEszdW5WS0p5eDdrbEY2Z3lh?=
 =?utf-8?B?VUtIQjc2QnYwWWUzUGlsbHJUOTQyVS9rZWc5dVlQM3ZleEJPQnZ1dGRSbFpP?=
 =?utf-8?B?WXJRTVAyQ3lpZzlkdWJBQ3N3TWtadEpsZFVrZG5HTGdPNXpySGUveVdqT1or?=
 =?utf-8?B?ZE5ENys2encwT2VkL3dmamo5SUU2THBaNHdDT0pjVmtuOE5sajZRR2FBbVNT?=
 =?utf-8?B?aG54UUNjc2xuSERvK1NUUk03Sk0xWkt0ZkFUbGtxL3NPSkJ1YzBEdjVaRVUx?=
 =?utf-8?Q?YzbZL5GVu1CzloWVZoSXNtQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA3PR11MB9485.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y2hFSkNTVmV3U0FwWlVCS3JNN2djN2ozT1VQamljMm1jZXRvUWZzWWRndHl0?=
 =?utf-8?B?ZUtvVUlyWlBFeGU5OU15M0l1RXN6bjJYMG9HV2I1N2dRNk5NQkk4V3ZXbkpu?=
 =?utf-8?B?cHZMZkI2bHBWZithYlhpWG9vVWUrd2pYQVpGdFNhVlBMMGJzR1B6YkFiTmdl?=
 =?utf-8?B?MnRodkhia1l4cEMrd0ZnbTJMbkFQbWZDdnA1VFM4c2o4Vm9Da3M4cUxkT3BX?=
 =?utf-8?B?MEhBOXRkWUc0WjRHNFVRaU1iazdLQnFsRmVqRVo4bFhraDBob2hsZXB5c0gr?=
 =?utf-8?B?SGpBWUtYbVVub1pFSWVsRnRBVkFxemtGeUdJSU5HS1BOdkEwbW1TSG1EalN0?=
 =?utf-8?B?N1VRUExEZDRwM3RscjZ5RXRCMUZtWVVVQ0g0RUdnNFFFbzgrRlhBb2FIcFRa?=
 =?utf-8?B?TUdWN1VrdjhXK3ArQjdJRWJoWHhKTVU1TzJtSWxySlVzcC9pdGorUzVNcHNJ?=
 =?utf-8?B?YjJ1OE9yaGVsUDRDU3FEcHUrb0tNa29KZExQeDhmZjJEM0NLalFZdHU3NnZY?=
 =?utf-8?B?RmZpWklpVTdtcEVOMmQybFpLb2p5K1lVUUpCZC9seStTR3lOa1lFS1NQYmtT?=
 =?utf-8?B?cTZTTTd2Mk4wVERFYkt2ZHNaS2U3RVZSYkNVUnZVdXJOT0FLZjc1bmtDUXV0?=
 =?utf-8?B?YnJaSjdhanlTaElMVXVWaUVIakwwTE5QOUxheml6SEJhMWhwdVQ0MkVyWDNT?=
 =?utf-8?B?azRJbHRsQjVJSXI0WTdhMEozUXNxQWt1aWNGSDdvZ3I0S3d2dVlyNzViWUJO?=
 =?utf-8?B?SXNtVnQ1L3dyVDVsSTg3YzFPTGhHbW5pSUpERUt2TEtzMGxodWZFbWZmMlE4?=
 =?utf-8?B?NFVJTTZqMGRZbDVGNmtXNEI3NFhLalBHQXhPMXZJUWl6SCtWT1d5RElmV3BW?=
 =?utf-8?B?TllOSkFybS9Yc0xnNGpCdFNKRmhaWkg1aHZvMzlnZUFQYmg1bDNuZmJhSzdR?=
 =?utf-8?B?ZE5KR3NuSTFKblVjcFJJc0tMQ0lvbVBKMWgrcWtRKzJHOTRUTlVrZXFGU3Fu?=
 =?utf-8?B?NzhsWjdZVHY3VEYrb1l0Ujd4SXpJVUFwZkpXaUZOZW5QRUdmYk1xQ2dVcnhF?=
 =?utf-8?B?NGtlWTZIeFJrRXdWZWtqZHJaSm4vczFMME5uMWFuUXlySS9KSUVZSGdZSVIw?=
 =?utf-8?B?Y3ZyYnpxZFk3RWs3RmFVTlUyYzhIZjYzcFR5Wk9pdGl3dEtLYU1PRzBrNytG?=
 =?utf-8?B?alcwTUZaekc5b1FNeU92VXFUb24rVUN2NThlZkx5Y09zSlEyemZQeVNTeElK?=
 =?utf-8?B?VmpvaFk3UDdmc0NrREFGMk1KejFUcC9aMUlDTFlzWHdGZ0hQWFRXMzY4d084?=
 =?utf-8?B?ZGpEWmVDRDRmMUdhcHpIdFZYc25wYUtUU2Q0aUtJc1dveG9LS3dBek5uRkNv?=
 =?utf-8?B?TWd3RVJ4T0szYzlwd2FvVm5sdkRmL2duZWRZZy9HVXM2dDZGMURMLzZDQkU2?=
 =?utf-8?B?cDd5cDJncHRmTEtlN2htL3VFLzhsY2ozTzZpcjBQb29ZWnh4THhuVHA4R2Jt?=
 =?utf-8?B?OE54OWprNTBSMjVNSGIxeW5IVVM1M0c2NkVaZ2RkZ3BMSE1NNk9Dc1JIOFNy?=
 =?utf-8?B?RHJIT0NESDRRR2lNR2FOLzNaYUJCMWtnc2ZBZ3lKQk4wN05ENk1oaXBka0J0?=
 =?utf-8?B?UlpieUJVVUJQUTBLaDdoU3B3aERydENQZWJqOVVPZGVYWFk2RWtMYkRJZTN6?=
 =?utf-8?B?Uit4RU5tcnQ1TWVyajNxQmdpNldKY01PdjJqKzM3VHF1V2tmbWhzUVZnOG9X?=
 =?utf-8?B?UEJHYVZVVlgyWEJBTm9lUkZ1SU1KVEN4bVNDVktEWEg1NmlzNmFyUGVrZW1j?=
 =?utf-8?B?aXpLY3hYZ3hIVFkxS29YZ3BoUW01Z2o1Z3puRTRRczlsNmJpeGR4QVE0UVdG?=
 =?utf-8?B?eS9nS2FPM3NxcE1WTm1yZkxlWDNoV2k4NWNxV1VOUFMvVm5SSW9EalQ3cFVM?=
 =?utf-8?B?MERBZVNZMXUwREppSzRnL2hoZlRtNE5WOWw2eVo4QkFPdkI2MGhVdDVGTWdJ?=
 =?utf-8?B?amVwYjJrSHpCM0tOYXJMUmRNekFxckFSZFgvTmpyc1Z4THdkZTM5QkwwL2Fx?=
 =?utf-8?B?VTRrYWRaYXJVMThrbVMrNlVwNW5Tc0sydU12bWlNbEJjcVpwQXJkazNtMTAw?=
 =?utf-8?B?aWNjT0MzUzIzZ0VqeUtpampKSE5tVU9EUFkydFQyUlRtV0xmOFRjM3VwN0Jt?=
 =?utf-8?B?QU1aQVlNdnd0UGRhYlB1YS9qbDU5eTBnclB4R1lQTkEzcWozRnFDUWRuTFFI?=
 =?utf-8?B?SzF6dG9qSWFSakFGMDNBWEJLTytKaWxiUEFyOWo5aHYwRldjMDRSKyt5YWl3?=
 =?utf-8?B?b1ZQc20vaW9RVy9kdHc5aXhBMnR1M2VKemhPajA2eWtiRGZzajFoK1Q2eWtH?=
 =?utf-8?Q?q/6SAdDSNJuVUeJc=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA3PR11MB9485.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c62438a-ce66-4c7e-18b3-08de5825e1eb
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jan 2026 13:14:46.0192 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UMWLh2xq2ClofHDMaGk0Yl7/P68S8+Uy/YODNvSVy9oDgQ8FRvE4x035qz1k/dVbk6Hzk+xlKI3TzF+oOpUtIh9Ay+qq6gAXOst2N+YoorM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFCECA32305
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768914891; x=1800450891;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=494/jfw7OwKaedtoC3fvmxi3jYavL70eC+ISNJxsUb0=;
 b=gjYpTxwIVYT4qLNs5X/EMgirBj5x9Q+A+EDh+72ppmB7tOLqNNmTAH8S
 rd0CS/wWTzoqEzE2uODws0cKZaRd/Lo5kznvRQeJX/zNGjMJ3RNqUXWp9
 NG0++jWty5l1sNZ4kP4WJHpIKgYb3i/sOkKOei/nKL1Xl4+ngmRZHuTBK
 RqKJJ+G2R+6HBYsJWyjcmnsrhuMKAMz/aNGM5ig3OcSalxgCDcKE2zzG3
 SNfZMuIJ32oNJSmDrE0dpYt2vtkTIAaTRproXGUm4mwKM7vuYHCdcGSli
 pM7RA033dm9dCaKCsXpbRvN4XpiuAqu4PMbf81Q3kvDj5GiiqPL8o8Lht
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gjYpTxwI
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
X-Spamd-Result: default: False [0.49 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:vgrinber@redhat.com,m:pmenzel@molgen.mpg.de,m:linux-doc@vger.kernel.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:zoltan.fodor@intel.com,m:horms@kernel.org,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[arkadiusz.kubalewski@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arkadiusz.kubalewski@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_SEVEN(0.00)[11];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo,SA3PR11MB9485.namprd11.prod.outlook.com:mid]
X-Rspamd-Queue-Id: 883E0465E5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PkZyb206IFZpdGFseSBHcmluYmVyZyA8dmdyaW5iZXJAcmVkaGF0LmNvbT4NCj5TZW50OiBUaHVy
c2RheSwgSmFudWFyeSAxNSwgMjAyNiA2OjI2IFBNDQo+DQo+T24gVGh1LCBKYW4gMTUsIDIwMjYg
YXQgNTozMOKAr1BNIEt1YmFsZXdza2ksIEFya2FkaXVzeg0KPjxhcmthZGl1c3oua3ViYWxld3Nr
aUBpbnRlbC5jb20+IHdyb3RlOg0KPj4NCj4+ID5Gcm9tOiBWaXRhbHkgR3JpbmJlcmcgPHZncmlu
YmVyQHJlZGhhdC5jb20+DQo+PiA+U2VudDogVGh1cnNkYXksIEphbnVhcnkgMTUsIDIwMjYgOTo1
OCBBTQ0KPj4gPg0KPj4gPiwgdGhlIGVhDQo+PiA+DQo+PiA+T24gV2VkLCBKYW4gMTQsIDIwMjYg
YXQgMzozMuKAr1BNIEt1YmFsZXdza2ksIEFya2FkaXVzeg0KPj4gPjxhcmthZGl1c3oua3ViYWxl
d3NraUBpbnRlbC5jb20+IHdyb3RlOg0KPj4gPj4NCj4+ID4+ID5Gcm9tOiBWaXRhbHkgR3JpbmJl
cmcgPHZncmluYmVyQHJlZGhhdC5jb20+DQo+PiA+PiA+U2VudDogV2VkbmVzZGF5LCBKYW51YXJ5
IDE0LCAyMDI2IDEyOjM5IFBNDQo+PiA+PiA+DQo+PiA+Pg0KPj4gPj4gWy4uXQ0KPj4gPj4NCj4+
ID4+ID4+ID4NCj4+ID4+ID4+ID5JIHNlZSBhIGZldyBjaGFsbGVuZ2VzIGZvciB0aGUgdXNlciBo
ZXJlLiBUaGUgYmlnZ2VzdCBvbmUgaXMgdGhhdA0KPj4gPj4gPj4gPnRoZQ0KPj4gPj4gPj4gPmFw
cGxpY2F0aW9uIGNhbid0IHRlbGwgdGhlIGRpZmZlcmVuY2UgYmV0d2VlbiBhIGRldmljZSB0aGF0
IHdpbGwNCj4+ID4+ID4+ID5yZXBvcnQNCj4+ID4+ID4+ID5waGFzZSBvZmZzZXRzIGFuZCB0aGlz
IHVubWFuYWdlZCBkZXZpY2UgdGhhdCBuZXZlciB3aWxsLg0KPj4gPj4gPj4gPkEgcG9zc2libGUg
d2F5IGZvcndhcmQgd291bGQgYmUgYWRkaW5nIGEgY2FwYWJpbGl0eSBmbGFnIHRvIHRoZQ0KPj4g
Pj4gPj4gPkRQTEwNCj4+ID4+ID4+ID5BUEkNCj4+ID4+ID4+ID5zbw0KPj4gPj4gPj4gPnVzZXJz
IGRvbid0IGhhdmUgdG8gZ3Vlc3MuDQo+PiA+PiA+Pg0KPj4gPj4gPj4gVGhlcmUgaXMgbm8gcGhh
c2Utb2Zmc2V0IGZpZWxkIGFzIHBvaW50ZWQgaW4gdGhlIGFib3ZlIGV4YW1wbGUuDQo+PiA+PiA+
PiBObyAncGhhc2Utb2Zmc2V0JyBhdHRyaWJ1dGUgLT4gbm8gc3VjaCBjYXBhYmlsaXR5Lg0KPj4g
Pj4gPj4gV2h5IGlzbuKAmXQgdGhhdCBlbm91Z2g/DQo+PiA+PiA+DQo+PiA+PiA+UGluIHJlcGx5
IGRvZXMgbm90IGNvbnRhaW4gcGhhc2Ugb2Zmc2V0LCBzbyBubyBjaGFuZ2Ugbm90aWZpY2F0aW9u
cw0KPj4gPj4gPmFyZSBleHBlY3RlZD8NCj4+ID4+ID5Db3VsZCB0aGVyZSBiZSBkZXZpY2VzIHRo
YXQgZG9uJ3QgcmVwb3J0IHBoYXNlIG9mZnNldCwgYnV0IHJlcG9ydA0KPj4gPj4gPnN0YXRlDQo+
PiA+PiA+Y2hhbmdlcz8NCj4+ID4+ID5JcyB0aGlzIHRoZSBpbnRlbmRlZCB1c2Ugb2YgdGhlIHBo
YXNlIG9mZnNldCBBUEkgdG8gYmUgaW50ZXJwcmV0ZWQNCj4+ID4+ID5hcw0KPj4gPj4gPmEgZ2Vu
ZXJhbCBwaW4NCj4+ID4+ID5ub3RpZmljYXRpb24gY2FwYWJpbGl0eSBmbGFnPw0KPj4gPj4gPg0K
Pj4gPj4NCj4+ID4+IFNvcnJ5LCB0aGlzIGlzIG5vdCB3aGF0IEkgbWVhbnQuDQo+PiA+Pg0KPj4g
Pj4gVGhlIEU4MTAgcHJvZHVjZXMgbm90aWZpY2F0aW9ucyBub3Qgb25seSBmb3IgdGhlIHBpbidz
IHBoYXNlIG9mZnNldA0KPj4gPj4gYnV0DQo+PiA+PiBhbHNvIGZvciBvdGhlciBwaW4gYXR0cmli
dXRlIGNoYW5nZXMuIFdoZW4gaXQgY29tZXMgdG8gdGhlIEU4MTAgcGlucywNCj4+ID4+IG5vdGlm
aWNhdGlvbnMgZ2VuZXJhdGVkIGJ5IHBoYXNlIG9mZnNldCBjaGFuZ2VzIGFyZSBxdWl0ZSBmcmVx
dWVudC4NCj4+ID4+IEhvd2V2ZXIsIGl0IHdhc24ndCBpbnRlbnRpb24gdG8gcHJvZHVjZSB0aGVt
IGV2ZXJ5IHNlY29uZDsgdGhpcyBpcw0KPj4gPj4gc2ltcGx5DQo+PiA+PiB0aGUgcmVzdWx0IG9m
IGZyZXF1ZW50IHBoYXNlIG9mZnNldCBjaGFuZ2VzLg0KPj4gPj4NCj4+ID4+IFR5cGljYWxseSwg
dGhlIHBpbiBzdGF0ZSBjaGFuZ2VzIGZvciB0aGUgcGluLCBidXQgZm9yIEU4MzAsIHRoZQ0KPj4g
Pj4gdW5tYW5hZ2VkDQo+PiA+PiBtb2RlIG1lYW5zIHRoYXQgdGhlIHN0YXRlIG9mIHRoZSBwaW4g
bmV2ZXIgY2hhbmdlcywgcmVzdWx0aW5nIGluIG5vDQo+PiA+PiBwaW4NCj4+ID4+IG5vdGlmaWNh
dGlvbnMgYmVpbmcgcHJvZHVjZWQgaW4gdGhlIGVuZC4NCj4+ID4+DQo+PiA+PiBIb3BlIHRoYXQg
Y2xlYXJzIHRoaW5ncyB1cC4NCj4+ID4NCj4+ID5XaWxsIHRoZSByZXBvcnRlZCBwaW4gc3RhdGUg
cmVtYWluICJjb25uZWN0ZWQiIGV2ZW4gaWYgSSBkaXNjb25uZWN0DQo+PiA+dGhlIGlucHV0IHNp
Z25hbD8NCj4+ID5JcyB0aGVyZSBhbnkgaW5mb3JtYXRpb24gaW4gRFBMTCBvciBwaW4gcmVwbGll
cyB0aGF0IGNhbiB0ZWxsIHRoZSB1c2VyDQo+PiA+InRoaXMgRFBMTCBpcyB1bm1hbmFnZWQgdHlw
ZSwgaXQgYmVoYXZlcyBkaWZmZXJlbnRseSI/DQo+Pg0KPj4gWW91IHJlYWxseSBjYW5ub3QgZGlz
Y29ubmVjdCBhbnl0aGluZyB0aGVyZSwgaXQgaXMgYWx3YXlzIGNvbm5lY3RlZCwNCj4+IGFuZCBu
byBvbmUgY2FuIGNoYW5nZSBpdC4gSXQgb25seSBzaG93cyB0aGUgdXNlciBhY3R1YWwgcGh5c2lj
YWwNCj4+IGNvbm5lY3Rpb25zIGhhcmR3aXJlZCBpbnRvIHRoZSBOSUMvZHBsbC4gVGhlcmUgaXMg
bm8gU1cgaGFuZGxlZCBjb25maWcNCj4+IHBvc3NpYmxlIG9uIHRob3NlLiBBcyBwcm92aWRlZCBp
biB0aGUgY29tbWl0IG1lc3NhZ2UsIHRoZSBwaW5zIGhhdmUNCj4+IGVtcHR5DQo+PiBjYXBhYmls
aXRpZXMgc2V0OiAnY2FwYWJpbGl0aWVzJzogc2V0KCksIHRodXMgbm90IHBvc3NpYmxlIHRvIGNo
YW5nZQ0KPj4gc3RhdGUNCj4+IGJ5IHRoZSB1c2VyLg0KPj4NCj4NCj5Hb3QgaXQsIHRoYW5rcyBm
b3IgY2xhcmlmaWNhdGlvbiENCj4NCg0KSSBhbSBnbGFkIEkgY291bGQgaGVscC4NCg0KPj4gPg0K
Pj4gPj4NCj4+ID4+ID4+DQo+PiA+PiA+PiA+SG93ZXZlciwgdGhlIHByZWZlcnJlZCBzb2x1dGlv
biB3b3VsZCBiZSB0byBzaW1wbHkgbWlycm9yIHRoZQ0KPj4gPj4gPj4gPkU4MTANCj4+ID4+ID4+
ID5iZWhhdmlvcg0KPj4gPj4gPj4gPihzZW5kaW5nIHBoYXNlIG9mZnNldCkuIFRoaXMgcHJlc2Vy
dmVzIHRoZSBleGlzdGluZyBBUEkgY29udHJhY3QNCj4+ID4+ID4+ID5hbmQNCj4+ID4+ID4+ID5w
cmV2ZW50cyB1c2Vycywgd2hvIGhhdmUgYWxyZWFkeSBidWlsdCBhcHBsaWNhdGlvbnMgZm9yIHRo
aXMNCj4+ID4+ID4+ID5pbnRlcmZhY2UsDQo+PiA+PiA+PiA+ZnJvbSBuZWVkaW5nIHRvIGltcGxl
bWVudCBzcGVjaWFsIGhhbmRsaW5nIGZvciBhIG5ldyBoYXJkd2FyZQ0KPj4gPj4gPj4gPnZhcmlh
bnQNCj4+ID4+ID4+ID50aGF0DQo+PiA+PiA+PiA+YmVoYXZlcyBkaWZmZXJlbnRseS4NCj4+ID4+
ID4+DQo+PiA+PiA+PiBUaGlzIGlzIG5vdCBjdXJyZW50bHkgcG9zc2libGUgZnJvbSBkcml2ZXIg
cGVyc3BlY3RpdmUuDQo+PiA+PiA+PiBXZSBtaXNzIHRoZSBGVyBBUEkgZm9yIGl0Lg0KPj4gPj4g
Pj4NCj4+ID4+ID4+ID5UaGVyZSBhcmUgYWRkaXRpb25hbCBpbmNvbnNpc3RlbmNpZXMgaW4gdGhl
IGV4aXN0aW5nIHN0cnVjdHVyZSBJDQo+PiA+PiA+PiA+d2FudGVkDQo+PiA+PiA+PiA+dG8NCj4+
ID4+ID4+ID5icmluZyB0byB5b3VyIGF0dGVudGlvbi4NCj4+ID4+ID4+ID4xLiBJJ20gbm90IGVu
dGlyZWx5IHN1cmUgaG93IGEgMTU4OC1USU1FX1NZTkMgcGluIGNhbiBoYXZlIGENCj4+ID4+ID4+
ID5wYXJlbnQNCj4+ID4+ID4+ID5kZXZpY2UNCj4+ID4+ID4+ID5vZiB0eXBlICJlZWMiLiBFRUMg
aXMgYWxsIGFib3V0IGZyZXF1ZW5jeSBzeW5jaHJvbml6YXRpb24sIGFuZA0KPj4gPj4gPj4gPnll
dA0KPj4gPj4gPj4gPnRoZQ0KPj4gPj4gPj4gPnBpbg0KPj4gPj4gPj4gPm5hbWVkIDE1ODgtVElN
RV9TWU5DIGlzIGNsZWFybHkgYSBwaGFzZSBwaW4uIFRoaXMgYWxzbyBkb2Vzbid0DQo+PiA+PiA+
PiA+cGxheQ0KPj4gPj4gPj4gPndlbGwNCj4+ID4+ID4+ID53aXRoIGV4aXN0aW5nIGltcGxlbWVu
dGF0aW9ucywgd2hlcmUgRUVDIGNpcmN1aXRzIGRlYWwgd2l0aA0KPj4gPj4gPj4gPmZyZXF1ZW5j
eSwNCj4+ID4+ID4+ID5QUFMNCj4+ID4+ID4+ID5jaXJjdWl0cyBkZWFsIHdpdGggcGhhc2UsIGFu
ZCB0aGVyZSBpcyBjbGVhciBkaXN0aW5jdGlvbiBiZXR3ZWVuDQo+PiA+PiA+PiA+dGhlDQo+PiA+
PiA+PiA+dHdvDQo+PiA+PiA+PiA+d2l0aCByZWdhcmQgdG8gdGhlIG1lYW5pbmcgb2YgImJlaW5n
IGxvY2tlZCIuDQo+PiA+PiA+Pg0KPj4gPj4gPj4gVGhpcyBkcGxsIGRldmljZSB0eXBlIHdhcyBl
c3RhYmxpc2hlZCBiYXNlZCBvbiB0aGUgbWFpbiBwdXJwb3NlIG9mDQo+PiA+PiA+PiA+ZHBsbA0K
Pj4gPj4gPj4gZGV2aWNlIHdoaWNoIGlzIHRvIGRyaXZlIHRoZSBuZXR3b3JrIHBvcnRzIHBoeSBj
bG9ja3Mgd2l0aCBpdC4NCj4+ID4+ID4NCj4+ID4+ID5XaGF0IGlzIHRoZSBwaHlzaWNhbCBtZWFu
aW5nIG9mIHRoaXMgaW5kaWNhdGlvbiAobG9jay1zdGF0dXMnOg0KPj4gPj4gPidsb2NrZWQnKT8g
TG9ja2VkIG9uIHdoYXQ/DQo+PiA+Pg0KPj4gPj4gTG9jayBzdGF0dXMgaXMgZHBsbCBkZXZpY2Ug
cHJvcGVydHkuDQo+PiA+Pg0KPj4gPj4gQnV0IGZ1bGwgcGljdHVyZSBoYXMgdG8gYmUgZGV0ZXJt
aW5lZCBmcm9tIHRoZSBsaXN0IG9mIHBpbnMsIGZvciB0aGlzDQo+PiA+PiBwYXJ0aWN1bGFyIGNh
c2UsIG9uZSBpbnB1dCBwcm92aWRlZCBmcm9tIGhvc3QgdGhyb3VnaCBwY2ktZSBwaW4sDQo+PiA+
PiAxME1Ieg0KPj4gPj4gYmFuZHdpZHRoIGZyZXF1ZW5jeSBhbmQgMSBQUFMgc3luYyBwdWxzZXMu
DQo+PiA+Pg0KPj4gPj4gQXMgYWxyZWFkeSBwb2ludGVkIHRoZSB0eXBlIG9mIGRwbGwgc2hhbGwg
bGV0IHVzZXIga25vdyB0aGUgcHVycG9zZQ0KPj4gPj4gb2YNCj4+ID4+IHRoZSBkcGxsIGV4aXN0
ZW5jZSBpbnN0ZWFkIG9mIHBhcnRpY3VsYXIgaW5wdXQgcHJvcGVydGllcy4NCj4+ID4+IElucHV0
IHByb3BlcnRpZXMgYXJlIGRldGVybWluZWQgd2l0aCB0aGUgcGluJ3MgYXR0cmlidXRlcy4NCj4+
ID4+DQo+PiA+PiA+QXMgYSB1c2VyIG9mIHRoaXMgY2lyY3VpdCBJIHdhbnQgdG8ga25vdyB0aGF0
IHRoZSBkZXZpY2UgaXMgbG9ja2VkDQo+PiA+PiA+b24NCj4+ID4+ID50aGUgcGhhc2Ugb2YgdGhl
IGlucHV0IHNpZ25hbCB3aXRoIGEgY2VydGFpbiBwcmVjaXNpb24uDQo+PiA+PiA+SXMgdGhpcyB0
aGUgbWVhbmluZyBvZiAibG9ja2VkIiBoZXJlPyBDYW4gYW4gRUVDIGRldmljZSBiZSBsb2NrZWQg
b24NCj4+ID4+ID50aGUgUGhhc2Ugb2YgdGhlIGlucHV0IHNpZ25hbD8NCj4+ID4+DQo+PiA+PiBX
ZWxsIEkgZG9uJ3QgaGF2ZSBhbnkgZGF0YSBvbiB0aGUgcHJlY2lzaW9uIG9mIHN1Y2gsIGJ1dCBB
RkFJSyBpdA0KPj4gPj4gY2FuLg0KPj4gPj4gRUVDIGRwbGwgc2hhbGwgYmUgcHJvZHVjaW5nIHN0
YWJsZSBzaWduYWwsIHRoZSBpbnB1dCBpdCB1c2VzIGlzIG9ubHkNCj4+ID4+IHBhcnQgb2YgdGhl
IGZ1bGwgZHBsbCBkZXZpY2UgcGljdHVyZS4NCj4+ID4+DQo+PiA+PiA+VXNlcnMgb2Ygb3RoZXIg
ZGV2aWNlcyAoZTgxMCwgemwzMDczeCkgbWF5IGhhdmUgaW1wbGVtZW50ZWQgbG9naWMgdG8NCj4+
ID4+ID5kZXRlcm1pbmUgdGhlIHBoYXNlIGxvY2sgYnkNCj4+ID4+ID5lbmZvcmNpbmcgdGhlIHBp
biBwYXJlbnQgZGV2aWNlIHR5cGUgYXMgUFBTLiBIb3cgc2hvdWxkIHRoZXkgY2hhbmdlDQo+PiA+
PiA+aXQNCj4+ID4+ID50byBkZXRlcm1pbmUgcGhhc2UgbG9jayAoYW5kIHdoeSk/DQo+PiA+PiA+
DQo+PiA+Pg0KPj4gPj4gSSBhbSBTb3JyeSwgSSBkb24ndCB1bmRlcnN0YW5kIHRoZSBleGFtcGxl
IGFib3ZlLCBjb3VsZCB5b3UgcGxlYXNlDQo+PiA+PiBFbGFib3JhdGUgb24gZGV0YWlscyBvZiBz
dWNoIHNldHVwPw0KPj4gPg0KPj4gPlllcCwgZ2xhZGx5IQ0KPj4gPlRlbGNvIGN1c3RvbWVycyBy
ZWx5IG9uIHRoZSBQaGFzZSBiZWluZyBsb2NrZWQgb24gdGhlIHJlZmVyZW5jZSB3aXRoIGENCj4+
ID5jZXJ0YWluIHByZWNpc2lvbi4gSW4gRTgxMCBhbmQgemwzMDczeCB0aGUgZXF1YXRpb24gaXMg
c2ltcGxlOg0KPj4gPjEuICJlZWMgbG9ja2VkIiBtZWFucyBzeW5Ub25pemF0aW9uIGFjaGlldmVk
IC0gZnJlcXVlbmN5IGxvY2tlZA0KPj4gPjIuICJwcHMgbG9ja2VkIiBtZWFucyBzeW5DaHJvbml6
YXRpb24gYWNoaWV2ZWQgLSBwaGFzZSBsb2NrZWQNCj4+ID5UaGUgVC1CQyBhcHBsaWNhdGlvbiBj
aGVja3MgdGhlIHJlcG9ydGVkIGRldmljZSB0eXBlLiBJZiB0aGUgZGV2aWNlDQo+PiA+dHlwZSBp
cyAicHBzIiwgdGhlIHJlcG9ydCBpcyBwcm9jZXNzZWQgYnkgdGhlIHN5bmNocm9uaXphdGlvbiBz
dGF0ZQ0KPj4gPmRlY2lzaW9uIGxvZ2ljLiBPdGhlcndpc2UsIHRoZSByZXBvcnQgZG9lc24ndCBo
YXZlIGFueSBtZWFuaW5nIHdpdGhpbg0KPj4gPiJULUJDIHdpdGhvdXQgU3luY0UiIGNvbnRleHQg
YW5kIGlzIGRpc2NhcmRlZC4NCj4+ID4NCj4+ID5TaW5jZSB0aGlzIHBhdGNoIGlzIGdvaW5nIHRv
IGNyZWF0ZSBlZWMgcmVwb3J0cyBvbmx5LCB0aGV5IGFyZSBhbGwNCj4+ID5nb2luZyB0byBiZSBk
aXNjYXJkZWQsIGFuZCB0aGlzIGlzIGEgY29tcGF0aWJpbGl0eSBpc3N1ZSBJJ20gdHJ5aW5nIHRv
DQo+PiA+YWRkcmVzcy4NCj4+ID4NCj4+DQo+PiBJIHNlZS4gRnJvbSB0aGlzIGFuZ2xlIHRoZSBQ
UFMgdHlwZSBsb29rcyBsaWtlIGEgc3VwZXJzZXQgb2YgRUVDLg0KPj4gSXQgbWFrZXMgc2Vuc2Ug
dG8gbWUuIFdlIGhhZCBhbHNvIHNvbWUgZGlzY3Vzc2lvbiBhbmQgYWdyZWVkIHRvIHByb3Bvc2UN
Cj4+IG5ldyBwYXRjaCB3aXRoIHRoZSBQUFMgdHlwZSwgYXMgd2UgZG9uJ3Qgd2FudCB0aGUgdW5k
ZXJseWluZyBTVyB0byBiZQ0KPj4gdHJvdWJsZWQgd2l0aCBzdWNoIGlzc3VlLg0KPg0KPlRoYW5r
cyB2ZXJ5IG11Y2ggZm9yIGNvbnNpZGVyaW5nIHRoaXMhDQoNClN1cmUsIHY2IGlzIHRoZXJlLCBw
bGVhc2UgaGF2ZSBhIGxvb2suDQoNClRoYW5rIHlvdSENCkFya2FkaXVzeg0KDQpbLi5dDQo=
