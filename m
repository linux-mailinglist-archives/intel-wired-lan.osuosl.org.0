Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EB9792B133
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Jul 2024 09:34:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 455C040E8C;
	Tue,  9 Jul 2024 07:34:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Zdy-dqNhyqsY; Tue,  9 Jul 2024 07:34:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1E70E40E72
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720510494;
	bh=N77SCIompt/dLlJmvPz5nrQHDrcdUFybYCRCBk9tjZE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hTJBu6MnlW0jZ3PfhYucCVl486PfDRg1UUj3JqxIMQjPsSrpS7984P3T8e2cWnszs
	 LQRp/MLP+60DWs5sglLUYSKxWfdZH1sDXWfJYpyNC9ga7J9BHXTvcmPzB9UUqTKRlO
	 s0HbmjOO8WqfM41ruHyVJu7hqZhkg4BVURhThQyupIgmYJU9l6drlSYXeDxkPkxeye
	 +vnWFLl1/j+mNOYcTVkNzSl3K/SQCi9Wr3il5W6231CX1KPH0fe5AUqTAegQscY2IB
	 YtJqhGBZvHsdH+gpY/KjDsFnl9/gy7V4G/qXn7iBI5Fx9vD1h9Uqv+D6zVXsH6yWUx
	 YvBo5rxCgIEsA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1E70E40E72;
	Tue,  9 Jul 2024 07:34:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C478D1BF86C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2024 07:34:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BE629815CE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2024 07:34:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zao_aUxJf88F for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Jul 2024 07:34:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D559C81264
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D559C81264
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D559C81264
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2024 07:34:50 +0000 (UTC)
X-CSE-ConnectionGUID: fEAIJinJSzmMmSluOxQbUQ==
X-CSE-MsgGUID: wT7zR/DoRUOrZ3OxomiA1g==
X-IronPort-AV: E=McAfee;i="6700,10204,11127"; a="21511384"
X-IronPort-AV: E=Sophos;i="6.09,194,1716274800"; d="scan'208";a="21511384"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2024 00:34:50 -0700
X-CSE-ConnectionGUID: kIJsUrulS1mEsO8UPkUTAA==
X-CSE-MsgGUID: m+BIP2rQTzyx3nF+xFt/kg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,194,1716274800"; d="scan'208";a="52366423"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Jul 2024 00:34:49 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 9 Jul 2024 00:34:48 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 9 Jul 2024 00:34:48 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 9 Jul 2024 00:34:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ubbam01+PSbe93HBJhP5kRQCF7GEdFhJr2e+sp2A80vDpHoV6YwThZN0nQfXB7Bv/78kVPj6oSsgKBunCAuEURhqpW0LdEZlPXudWaXUOkfd9QOjFpWovNBxA1IBjiJrFuu50MR79nEaF6J+zhU7GFzWWvIdBcF6Fcqo/o2rswDMKXgGvGVsaSxT57/z4ufbIPZRz85aBLKJVc4gTL64DWQYPzDcvp97T04Zpb0sgwnXb+t8asUuSGp4nS0vH6ijDd2WHLeXYBcqT5knMappSLEAx+SnwAQ5rF0d//qd4xrtcnj2EtbZ50uCD0cfJM0Gas+rpyVLIPs+NC3yCo1TLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N77SCIompt/dLlJmvPz5nrQHDrcdUFybYCRCBk9tjZE=;
 b=kAFU+iL9vD/AFIVz275rT3RhYZ5ladmgZJ8d2u59oAVt7xCEYVEZBVuRMQVurODC167uIaAxpmwiX3oT5g9zo6b9IIGUDzOKEgXEcW2X9ElxPA3ipz/pNHEuU7ke4VaxJ3NoWqNXskOmsqjxKjuYKNbopAWxDD1gLUS2g6ptDNRbL3kdbClO0/oOcEbANC2vIvfjWVO0VhlMlI7JlzA64Mi7T/mkpTWh5oFxunczYLqZMw6fdVFbT7PogIEtDl6pfcWLhwUJcLsF4W6JIovGr5VpQwiHPo9lKlOgc5xuy2++HILuauo6J7c5M5E1ekbxUvqOUb8aUka23nfnBfVUgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.36; Tue, 9 Jul
 2024 07:34:47 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%5]) with mapi id 15.20.7741.017; Tue, 9 Jul 2024
 07:34:47 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>, "Zaki, Ahmed"
 <ahmed.zaki@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] ice: Add a per-VF limit on
 number of FDIR filters
Thread-Index: AQHavl0zsLUO556Tckqg9x00hvAezbHL77uAgCI4T7A=
Date: Tue, 9 Jul 2024 07:34:47 +0000
Message-ID: <SJ0PR11MB5865FE14AE20512A2B5024C58FDB2@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20240614131842.277398-1-ahmed.zaki@intel.com>
 <d8d430e4-a722-427b-994f-3e6c09466aa1@intel.com>
In-Reply-To: <d8d430e4-a722-427b-994f-3e6c09466aa1@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|CO1PR11MB5105:EE_
x-ms-office365-filtering-correlation-id: c123dd55-13f1-489d-0a4c-08dc9fe99bdf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?ZmNjSjc0OEJnZ095cXlkMVNzU3EwQkdFRHEyRVNYN0pPR3FlcjhRVE1FcHBn?=
 =?utf-8?B?Wk1sRjBuR0VkMFI4bXpFTVVYRHlReDVoaWVLZzhZM0tvWVBJamM0dUxhcDZG?=
 =?utf-8?B?amF5MjZOZ09DWVREZ0ZmR2pTQTF4OWlpcnE4cklKUWR0OVdoQ0p6cjRzUVVa?=
 =?utf-8?B?RnVMWFdaMW5mTlNXaWplMWh6Rzc2QzVZUENscVRmUzZzSHQ3MTBvZFBNWWJY?=
 =?utf-8?B?a29zOEhsdjFoZVJxZktNcHVoZE1JRTlyL1hoUU1GZVl0K2cyWVdCS3FlZ0gw?=
 =?utf-8?B?a1hCb3piTDVNVC9ueWhvZUw5SVpBaiswZE41b05LNjdlSzB4UGc3cGNIamVC?=
 =?utf-8?B?bDRCUGdyU2ZCS1RTalNqREZPMk1XTGdNU2h2WWpDMko0UTRpRzFGVXVrRVpG?=
 =?utf-8?B?QU1kTmNTQzRVbExPKzNtRDF2azczbzVWcDVvZ2tQRmEvbGxsZUcrQVBxUTcx?=
 =?utf-8?B?VDF4dWtwdFZSNGduajlpN3JSakJFSGtGaEZXUEx1aitpRWQvQWxLSnZKdkNv?=
 =?utf-8?B?QjJyems5TWlLS3BMcnR3dE1WWVpHTnJuZXAyL0NpSWpqS1VYYytKNjlRUFFr?=
 =?utf-8?B?azhIVytwM1N1cEs3YThUa0dTdEt0S2xLVHN0VldkLzJLWGpCQUhCZlJGZUwx?=
 =?utf-8?B?N0liOXh1S0ZXbXBGUDFyREJKYktRN1MrcTRISEROKzlyT09mTjhlSGtWYmE4?=
 =?utf-8?B?RlJldU5BckNoeWNka0UvUldTVy9GTTlGTjlhQTFuS1huMnRZNEhZTkIxVmRY?=
 =?utf-8?B?R3NFOHY1TTVPRnphSm1PaFZvSFZWTVZrQXFMYVVkZjFiNnBNdmZPYWt1Nmxp?=
 =?utf-8?B?WWZnTTVnc3dwTjVOM0JlRmgvSWh4S0FRL2tZRTl5U3R2cW83SzZ1R2FtcTdE?=
 =?utf-8?B?N1VBd2JtVUNQNFRSZEdQTGlVaTBxSUdiZ3dudHlGZVhaTG5GWkpZNnVYYWUr?=
 =?utf-8?B?RmMzTk5BZEF3bXNBamFTRWplZDloYjl4MGlYa3hmMEpYbXZoL01QL25rY251?=
 =?utf-8?B?Sng4YVBzaTZQeTdoK3BNaTNKRkl3bUNFaW9hZHRxZlphUzZUTWNCbWllS1g5?=
 =?utf-8?B?eTdLeWduTHJwc25vc1lNQUkrck9nM1pCekoxQ2QzR2JpWHFmZk9McXpJUGRV?=
 =?utf-8?B?MmhhdUhqaFFTVjNIcmxDMFFiVThpQ012cno2ek1rTGhpRGxvTGlNaTFZQ2pW?=
 =?utf-8?B?bGJhWWRKdXNwb0FMdEpOb2xnOU1oOEZoSzJFQ3VGS2RSTE90N2gvMExNNnIv?=
 =?utf-8?B?cER3cGhEcmE2THNuNmlTQW1ETXlXVnNMRFhVYzFFVXNFZG9xeGkvM25mdGk5?=
 =?utf-8?B?bThhOWFoK3lmekRGVTVHUnRaY1drelB1VndEZ0FhVlhMcy9teW5ZeVdLTTh6?=
 =?utf-8?B?RGp1RFFpVFlvL0pmTWZxVTlMRVc1Qnl5bW1XTHArWFhuOU93L1NFVjRPT3Ba?=
 =?utf-8?B?Z2tYU252bEpVa096UThRSnpscFpuaUdKWG5pREhQUlVxdHV6RG9TNGVmeWQw?=
 =?utf-8?B?WkNoWHVWam5iVmZMYXgrOUdxOWh2R2xmNUFyenlaa3dZRmIwOWxMc0VXN1RV?=
 =?utf-8?B?WGNYNS9NYmtxdDQzL3dNc2JSOW1MQ1puakdZOUl1dHY2bWZLc2lFRFZ4cVVz?=
 =?utf-8?B?RHNZL014S0JBOHNVNExlMlVodzJNcE14aWtZT1BBZTFHblpVTDZFQnZtOHNC?=
 =?utf-8?B?K2psWmpvblZZMlFGc0twK3RDYW1sbFdSekFIblJPRUJHVk1ML2hpVGZ3OEdk?=
 =?utf-8?B?bGpraXVWaVdHdWZqcndHL25IZW5mcUVpZFc3N1A4dDFiWDV3aWhkMlNFRXNN?=
 =?utf-8?B?cTNrQkRRSTNVdGFMbUFIQmhxY0hvRjNHMFcvSjFyYjJzQ1JyMEtKd1NJMUo1?=
 =?utf-8?B?eVFhMlQ3VVRjR0hTclBiTHFCaEJSOVFjSXVqcGdNRFBMclE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TEppUDl4YTl4MnVuS2pwZkhUNlJaV0VoNDlGUUJOeEVCdngyUnlJTXczOEc0?=
 =?utf-8?B?OC9uTHBMa01XNzl0TmVCTEE1MzRoUlNwVWUrL1BHOHNoQkRKaGRERGpadHBq?=
 =?utf-8?B?S3hySHlla2hZREIvR2dhcHVmN0F1VTlrY2lGaXR2bmljMzF2bkQ2cTZvdHpY?=
 =?utf-8?B?T2ZNYjZTV2VKemNvR25JK2UxbGtlNW9xajF1MXJWTm1lSytQcVR4c1ZQSml4?=
 =?utf-8?B?S0t4M3dtbHJ3WUR4M2FNU0dZMXowTDVIYUJYdXNBOHlQSzlTVGdSek9PTlNi?=
 =?utf-8?B?encyZi9jbU5sK0trb3RQY2RVd29sSzQ2VXBoNUNCS1pia0dnRnpqUFd5Nm1q?=
 =?utf-8?B?Z05Wek50cTlBemNQbGw4aVl4b1dHaGxZQ1FydVQ1aEs5ZnpBY2RRWU94U2x4?=
 =?utf-8?B?eVEyeGlZaXpJWWVGOVNLTkc3MTFPOVk3Tm1iU1VYZkp2WWhEV2M2SUVVV3lI?=
 =?utf-8?B?QmNnZm8wSTFmcGpsTDVvaVNQYzhNY3J6U3FkVTc2RXNzT1p2VTRCSTV3K0Z3?=
 =?utf-8?B?cy9nbE8wbk4xazJLc1d3TjhtT1pFcUpKYUd3eUszbjB3WEZzY2tXVGRxbkUz?=
 =?utf-8?B?YkI3dzdXOXNRaTF6cG1odzk5NVFkOWM1Z016MVVzTFdlaFdoODRydFRDbEt0?=
 =?utf-8?B?eWIycEpTdkNJcXMyQTVXRTcvNE5RZ3JlZkpabDBDQnpKRVI2QWYvZVhvcTVp?=
 =?utf-8?B?bHFaMTJFbXFpUkJWRGVVVkV4aU0vUVE5a0NpYlBXYWtWeFBYNGJrSFpicm1w?=
 =?utf-8?B?L0w1VXI1UTJHS2wvengyOHVNTXNmTHBvMWpTYWRxMnIyNnZDVDBOWGg5VHdv?=
 =?utf-8?B?TnQ5TGJQbGY0WFlvNnZjWENHQThKWXVSYXN4dVVVc2JQcDBMOExNeVpMTEpl?=
 =?utf-8?B?SnpidUoyQ1Q0QjFWeHRsTGZ0RXdBTC94YnFrL2NiV29xaDdJQlJWNmFOanND?=
 =?utf-8?B?UkZVTE9oMHBlTnBSSUpQeGVXRGVFZktKby9QVDlrTWRWaDhyZkdtWmw5YUNH?=
 =?utf-8?B?cTg5M2NrMHRTSUluK1dMRFBEWkRwejZMR2VLWS9kQ1VMVEVaSS8wb0x2clc1?=
 =?utf-8?B?YUh0UTdWbFlEbmFlaW53alY4cXcrTDZqZjBqS2N3OWdRanZKdmpUek9iWmp3?=
 =?utf-8?B?MVFiaFZuOEYyRnA4WkdCOWR2TDY5TCs4dGhuRE5kbkE0dHhZZUdVOU9YUXdL?=
 =?utf-8?B?WEZKMnFEZTZreDlxUnoyR0hyUXRudFZNRlowd2dKTGRGRlE5SElXMURDa3Y1?=
 =?utf-8?B?aVNrMzFZYzY5djM4NWp1c3lyZE51Rmw0dXc0bjVyVGdDYXR0aFZJYVFGdzdj?=
 =?utf-8?B?cC9jWXAweDhQTGZKT0NNdk8zL0NUeUpVNEZQRkdyRE5Xd0ZhOGRWL2docDFR?=
 =?utf-8?B?ZXBydytZK0owYkxUQk94TVpUUjBaeXJEakFtZFNsZ09iU0NKZWZrZWVBZG1M?=
 =?utf-8?B?QXZjQjNVZ21NNXJXOFZWdmEzSG9IYnlWZkZldzVkVmh2M1ovb1N4aXJtQzlZ?=
 =?utf-8?B?WEQxOUtVRHBhczhWNzZmU0tabWJhZk5DeGFiT1B4clIzc1JGNnlDR05WT0xk?=
 =?utf-8?B?UVdaNXo1b0NtTldXMVNBMkNqL3pZam9XczVneURGbmNCZVh4Rm5tODI5bURm?=
 =?utf-8?B?eDhpdzR6ZDl4ZWdLTlJPL3BobzlLWVNzS2FQTUlkR0dobTFYWWgrUGlMUVNN?=
 =?utf-8?B?bzRwMmxaM0d1UzlCcTIxcnlPQS8yVWNudXB0Q3RMdHJMZ21hdmErUEZReHFW?=
 =?utf-8?B?Uk5ZWHZqbTJqZHVLU0x5MUtKRXd6K05wRS82NHM5ckdUNnFWb1ZFNW1aUnNM?=
 =?utf-8?B?K1BKVHl5OWE2Ny9XOFhoMm5rVGxLckpiWnFnVFdXT0V1a003T3QreWI0dGJX?=
 =?utf-8?B?UFR3aXNvMUsrc3FCRkU4bzkxSnh6eVN0VlJOeWRDbi9VM2JDenJ6b1JYSWs0?=
 =?utf-8?B?R2tVQ2ZYVHMwcThzQlV2cTFocWFXMUM3RWZXNU5VV3QrNnFieko2TEw2cVla?=
 =?utf-8?B?WnNtRGZkV2lmMEZzSUZzYi9scmhKYW00WVVIajN5Z2lWOUNiZG5tdCtnUFJY?=
 =?utf-8?B?VUd6dlBkekg3MlZReGtZb0tpT3FPQW4xbUpaV1hxMjBFU2xvWHREcW96ZHhz?=
 =?utf-8?B?dGRUTCsyNUVTd1g5RHJIOTFHcXFvWDFYMTRNbksvendWNlQxQkYzK2dPK0ZY?=
 =?utf-8?B?cXc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c123dd55-13f1-489d-0a4c-08dc9fe99bdf
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jul 2024 07:34:47.0863 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ORmJl8v/cIfcoYV/kcC4DNMv2tOoelr4d9FGdrJ3eFWR3UCJoaqlsnkTzYcVyAJzJwhrp0rlNzE+P53U2o9neWq4F6UMpWVamEks3iY8ZN4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5105
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720510491; x=1752046491;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=N77SCIompt/dLlJmvPz5nrQHDrcdUFybYCRCBk9tjZE=;
 b=CdS84ZDrMSWV/vi8p85ehwFVquc0nymJz6RTuvk7f8f9ioBfgdh+71OY
 zJ1XxeGH4XBBgIulEDy6olVFNRG9PXd2R29U1bcqUEA2ggtMDiREx0mnH
 nLRSXgoK5FbqSVOmo41laHcO47wo+MPuiKH1wBi5Lr30MhIUH0hDxt7V0
 WPhCP+kgR1QZjYTqrot0KZVEQ2RoFP8zRLe9EenPflLqvJpF1RTNiFl97
 7ox7dV/EQP6+R526b/eJKUbwvGVbkhi283EEZZBPZsGVN0kpCrUJc7Bv1
 MajPIJjCjwVy5vTMTvOxO1AR+kagvkH3eBPJ8++5XQ/jYulkK8LA4vORD
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CdS84ZDr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: Add a per-VF limit on
 number of FDIR filters
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
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>, "Samudrala,
 Sridhar" <sridhar.samudrala@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZg0KPiBXb2pjaWVj
aCBEcmV3ZWsNCj4gU2VudDogTW9uZGF5LCBKdW5lIDE3LCAyMDI0IDM6MDAgUE0NCj4gVG86IFph
a2ksIEFobWVkIDxhaG1lZC56YWtpQGludGVsLmNvbT47IGludGVsLXdpcmVkLWxhbkBsaXN0cy5v
c3Vvc2wub3JnDQo+IENjOiBLaXRzemVsLCBQcnplbXlzbGF3IDxwcnplbXlzbGF3LmtpdHN6ZWxA
aW50ZWwuY29tPjsNCj4gc3RhYmxlQHZnZXIua2VybmVsLm9yZzsgU2FtdWRyYWxhLCBTcmlkaGFy
IDxzcmlkaGFyLnNhbXVkcmFsYUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbSW50ZWwtd2ly
ZWQtbGFuXSBbUEFUQ0ggaXdsLW5leHRdIGljZTogQWRkIGEgcGVyLVZGIGxpbWl0IG9uDQo+IG51
bWJlciBvZiBGRElSIGZpbHRlcnMNCj4gDQo+IA0KPiANCj4gT24gMTQuMDYuMjAyNCAxNToxOCwg
QWhtZWQgWmFraSB3cm90ZToNCj4gPiBXaGlsZSB0aGUgaWF2ZiBkcml2ZXIgYWRkcyBhIHMvdyBs
aW1pdCAoMTI4KSBvbiB0aGUgbnVtYmVyIG9mIEZESVINCj4gPiBmaWx0ZXJzIHRoYXQgdGhlIFZG
IGNhbiByZXF1ZXN0LCBhIG1hbGljaW91cyBWRiBkcml2ZXIgY2FuIHJlcXVlc3QNCj4gPiBtb3Jl
IHRoYW4gdGhhdCBhbmQgZXhoYXVzdCB0aGUgcmVzb3VyY2VzIGZvciBvdGhlciBWRnMuDQo+ID4N
Cj4gPiBBZGQgYSBzaW1pbGFyIGxpbWl0IGluIGljZS4NCj4gPg0KPiA+IENDOiBzdGFibGVAdmdl
ci5rZXJuZWwub3JnDQo+ID4gUmV2aWV3ZWQtYnk6IFByemVtZWsgS2l0c3plbCA8cHJ6ZW15c2xh
dy5raXRzemVsQGludGVsLmNvbT4NCj4gPiBTdWdnZXN0ZWQtYnk6IFNyaWRoYXIgU2FtdWRyYWxh
IDxzcmlkaGFyLnNhbXVkcmFsYUBpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogQWhtZWQg
WmFraSA8YWhtZWQuemFraUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+IA0KPiBSZXZpZXdlZC1ieTog
V29qY2llY2ggRHJld2VrIDx3b2pjaWVjaC5kcmV3ZWtAaW50ZWwuY29tPg0KPiANCj4gPiAgLi4u
L25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2V0aHRvb2xfZmRpci5jICAgIHwgIDIgKy0NCj4g
PiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9mZGlyLmggICAgICAgIHwgIDMg
KysrDQo+ID4gIC4uLi9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV92aXJ0Y2hubF9mZGlyLmMg
ICB8IDE2ICsrKysrKysrKysrKysrKysNCj4gPiAgLi4uL25ldC9ldGhlcm5ldC9pbnRlbC9pY2Uv
aWNlX3ZpcnRjaG5sX2ZkaXIuaCAgIHwgIDEgKw0KPiA+ICA0IGZpbGVzIGNoYW5nZWQsIDIxIGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2V0aHRvb2xfZmRpci5jDQo+ID4gYi9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2V0aHRvb2xfZmRpci5jDQo+ID4gaW5kZXggZTNj
YWI4ZTk4ZjUyLi41NDEyZWZmOGVmMjMgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWNlL2ljZV9ldGh0b29sX2ZkaXIuYw0KPiA+ICsrKyBiL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZXRodG9vbF9mZGlyLmMNCj4gPiBAQCAtNTM0LDcgKzUz
NCw3IEBAIGljZV9wYXJzZV9yeF9mbG93X3VzZXJfZGF0YShzdHJ1Y3QNCg0KVGVzdGVkLWJ5OiBS
YWZhbCBSb21hbm93c2tpIDxyYWZhbC5yb21hbm93c2tpQGludGVsLmNvbT4NCg==
