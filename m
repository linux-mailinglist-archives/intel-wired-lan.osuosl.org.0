Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QE2kFBmrAWoMhwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 12:10:33 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BD0B50B9B8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 12:10:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D6DF584418;
	Mon, 11 May 2026 10:10:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Pb4yMXhRdtZg; Mon, 11 May 2026 10:10:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4616A8441D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778494230;
	bh=becrUfec5AyIVcsttsFIAIh1Nq86E1excdwBZ1m/CDM=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=K+x7HsLGo71zW3v7ENlG0E730OKdeWbbor1kw89tU+rVFEs/Nj/80y8ls0oqweNUU
	 yUVXCOQxG0YnNniq146RLJIOcTl6Wz2Q1YeJ4fcJ6SvorrGlX7dhw6zLq6G9J3yPKC
	 mBMKtOQDoMhd+SGXUE+bxXrxWXV143+Z+4Hb4nfCq38TOfkDSVAZZSFp0BXuhPONx1
	 U532rYDI+YSU8weQscYVDDIM1zK9r3xZTqEDC3jvdqiuXLyi3Q8jIMEGXhFdv0VCec
	 g4PRiyclYaTHOMobn1bZiIIIDNVQLQJiBiJ/uYdiO9wE6BPAOFq+GkY91zDeSl/5XY
	 pe6ndDo5MY8iA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4616A8441D;
	Mon, 11 May 2026 10:10:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id E7A0E173
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 10:10:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CD6A4607DD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 10:10:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qlYoWOqmOaPK for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 May 2026 10:10:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 110CF607D6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 110CF607D6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 110CF607D6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 10:10:26 +0000 (UTC)
X-CSE-ConnectionGUID: NaH2Q5fzS0iO5VrqyH5Uxw==
X-CSE-MsgGUID: xG8gkFP1QG+CUaiiXOSF9g==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="90076679"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="90076679"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 03:10:26 -0700
X-CSE-ConnectionGUID: G9xtE5fxRbqPWx7wmrJF5Q==
X-CSE-MsgGUID: vXADlgyuQZu6Nl9UNEmmQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="236557633"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 03:10:26 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 03:10:25 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 11 May 2026 03:10:25 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.51) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 03:10:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AxHvBdaVS4B2sSgPmrdCf0TcUnjCueHjzRlWtY84+kNJPmgq6FmW6hhEvAIvnfe6+NndzgICiNNy0mGxCRnafdjRQF4VGfMkDnKNwWoydiL9z9c5YNuFGdUrsr5u56GacNrsdqOJbuR7zzi00+PZgjxeO6VqW4YQRgGU2njeGBQOK/PFAL47iLs2H39G+nuoAn/r1wqqcOg61Kc80d5G3RM171zpFpK5DKMD5+2G5yFzLHNn9msakC6wosth+XYKN3/bXFdV20vqmipp4D70hXrSS724On8OTl/PeH8Isb4LGTwQHy7IvVnannkJwbXqszvPHGWIhPNxBspCfXy3bA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=becrUfec5AyIVcsttsFIAIh1Nq86E1excdwBZ1m/CDM=;
 b=dEbm4xDbStxDHU9u1KqUUhzOgZGcWYx+atyFQl4hMCUEkCY0lWUWz4yR/hlguTURKXobsMbgPkclBHJ2AAVA74v7/Dm3MnuBB/d2gZHc3QUl8lgSfA7H4rs4aJY5XAd+JWzpyHv4af4ukGCCoBXrgMeHUjyhwkDuJ74khbFoADu8BmAqsj3DKrg69kS5AuKBrNM/c4sDGF0cfs7Qkuris5FCIVi2hOBSCdxm6KOdwIdqCoV9NWvkuKAk0t6hivJbWSqmFNlS0sIzUDOP581+IQD2o3FelsQYTFBUNg86mjByXOv3sHbv7+BDo9AZ4IibKajK8snXY/k5GxJkxBrwGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH7PR11MB7644.namprd11.prod.outlook.com (2603:10b6:510:26a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.19; Mon, 11 May
 2026 10:10:23 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9891.021; Mon, 11 May 2026
 10:10:22 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Li Li <boolli@google.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "David
 Decotigny" <decot@google.com>, "Singhai, Anjali" <anjali.singhai@intel.com>,
 "Samudrala, Sridhar" <sridhar.samudrala@intel.com>, Brian Vazquez
 <brianvv@google.com>, "Tantilov, Emil S" <emil.s.tantilov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4] libie: log more info when
 virtchnl fails
Thread-Index: AQHc2Qlp3PYDSnBDo0a2DGRAzYkGi7YEzJIAgAPeCUA=
Date: Mon, 11 May 2026 10:10:22 +0000
Message-ID: <IA3PR11MB8986AF8D9E84A7861B14B3F1E5382@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260501012507.461044-1-boolli@google.com>
 <CAODvEq7D75chNgD3h5w0rfa1ZFgca9VEd54sp4Ww999gCed=Aw@mail.gmail.com>
In-Reply-To: <CAODvEq7D75chNgD3h5w0rfa1ZFgca9VEd54sp4Ww999gCed=Aw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH7PR11MB7644:EE_
x-ms-office365-filtering-correlation-id: ff41e768-e64d-4a8c-e652-08deaf458364
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|22082099003|38070700021|18002099003;
x-microsoft-antispam-message-info: e1Jilh58x5E7lLa2Tj/Nozp/A++hNM/YR/M0inCtWVIKIjJ06qFt7J5ZEwn1PxZ9uxPA3GoOPOD+Qak7CjpTEzKvzcoEJa9CIQ/zAK1TWBj8drbN+rzK3TF2gPoPTOYJ3BTgk2sBuM4w79IdGb/9+GZr87zXHJfoQLh20ze4BUFVsIinl3JCOG1exSB6nB5wl4rSbWvmmdVg3gdGQ+q2hDSvV9crBfnUssaUrQXXG+BiBJwMDzMDyYex2nwGoAVtaUVZB58/Qg8DUl2MwT9WXCKrm4c1J7Otw68RVHnLlmJyH5m8QtsLVyJa/QlPP2Xff3B0CCeJdccRxhLYtLDHSHHVVSgTqBUnmY3LAHy2NtkeOU/z9U5sMTveb2VSmX/cOfiMJqXO/zbSyKoddlviX9CQAaRxv/+gN2KNbphFGZOaqYhjscsHQBS3POuZQwOkOPkFE/3qYgKDqnICQHG5aGLA4CpRCRqwkw++uDStM5B6Ml54amG1RQWwZdz5yT23LuxNEu9jOLWmvdzQ4jaIFrzCtio9wNPbzys7DJ8gJTLF/lbSC+9Ghpaqfcx/qz4u5rmM9O9QsYahq9sWkUnruQiTWgYXhnTgdkJyc4pxwY2+ha11L47SUkMuvz8JeXuTzy3oHGxCVNnqhE3VyTFQHl2dwOyPMybiJYsJoK8IhV/rLgvtbV3nzEuoAFNMM+oZisDFkLZ3qW70iNB7hhWVVJKemMbfYcIUyky9yUxPLlqel3RfnEdACKoHvwNpUw+/
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(22082099003)(38070700021)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TzN5ZlFkM0U5T0liNCs5dmw2bnN0SEpvdUFMMUwybVBiQUQzcWNTcHlsWXhk?=
 =?utf-8?B?bWZSajZxbEhldVVBdStUeVFBdFMveUJaaUhLd2V2Y3g2VlB1QnliVHc0LzR4?=
 =?utf-8?B?SnFxdFA2WUpobGJrOVR6bHNSZEpCc3pYRTlTTkRKTUc4dkI2Q00vcEd3UG8x?=
 =?utf-8?B?M3A5S0FOemZLWVdXVysrTzRiUTN6Wk1BMGZkMjVnb2VITmJSQ1VCdEd6cHBo?=
 =?utf-8?B?N2JUUlA4S2ZsRG9ocVc1RmhLTlN2T29JMFBCaWhLb20vL29GY3Z5NjMvVzlF?=
 =?utf-8?B?U05CSlpnQ1JNZmx4aUhHdjg4ckNPT2VTZFEvcWVabUtERThET3lXakd2K1dz?=
 =?utf-8?B?ekxETTd2OFA3dGZRZk5zYzU0ZkFnVTNKYWMxcHdkaTVPWWNVbTl6Ykc1VUpo?=
 =?utf-8?B?TVJ2OVBjaHRBZS9nYTQ4T0dTdjZlMGg5T1RZQVVVWFJsc2tUMHcvQTlCRDFj?=
 =?utf-8?B?bDFVcktZM0dLZmVSTEpSUDZJL0ZralFTQVVlelF3TnRINFVzYU9hbERLMjcw?=
 =?utf-8?B?UVkyZ1JRbDl6MDRsVTdpaUhlcTdtb3NmNmZqSU16WXMvc055aUtyb0M0b1Q0?=
 =?utf-8?B?R1FHQU1BSnQ1OVpwTzltZTFaQTRSTzgwQktRUkkxK2hnVW10cVVaZ25pbnRM?=
 =?utf-8?B?Uk9RNGZmeTFnYUM2OHBQbW05SWh5SXpQWmFSSkQrTkh0ODQxQzVtNDRkemlC?=
 =?utf-8?B?NktzSjhJS1BITVBUNVVoV2JmaTJHWVZxOElLN1pQMm9tS3ZFTWduU29iNkpr?=
 =?utf-8?B?NTZ2RE43eEZESHczV2t1K1h4eEZTditteTUxdUJ2SThVZGVvYW8vWTNKTDNy?=
 =?utf-8?B?RjB2dTdMVVlDWk0rU1NmUll2TEF0YXRTUWRmdXNpRGZQWnRySmUvOWQrcU5L?=
 =?utf-8?B?Y1luVUxTTk9KWXJQOXYyV2VFaFMzNVQwQ3pmSGgvN2Y4T2JQMFc1ZE1zcm94?=
 =?utf-8?B?VWFqbWtaRERtSEQ4T1dKTDY5dXI1dmZyb3ZvM0RjYzlYM2p3NldxZW15RFV1?=
 =?utf-8?B?L1dlTjhiSWJ4VU1uTXFKWWNpZlRsb1MxRCt5SmRFV2ordWtjYitySCs4TG5t?=
 =?utf-8?B?ZUdhdmNzS2FOdHlVMHlhRGIxd01zMjFWZm5DekpvUFBjYzkzQmlUK1duN3o1?=
 =?utf-8?B?S3RNZU9qTWo4ZHZRZ3BqT0RldmxXdlBWbUMvTVFLRDZpdXlSRitaVmQyd0VB?=
 =?utf-8?B?c3J5eUMzazVldkpjNTZGMGxkOGQxc2tlWERhRmJjci9Xa1dyRzcvYUdLM3ZF?=
 =?utf-8?B?VkJCc0tuelJEYTRWYjl6OVRtVUw0NDVNMXdGT2pYZi9mWjBtSWlwdDhEVnJY?=
 =?utf-8?B?eTNUWDdkblNJa3BrbXJiUHVBSDdFUVlxdzJtcklhQXdWeVNTcW90SXBzLzA1?=
 =?utf-8?B?VVN0QzljQnZnWjBPUklFcktXczI0cDBWS0w2WHQyTWdsZXJxZTEvVkV6VUhP?=
 =?utf-8?B?NkgxZHhuTFNxTVlzNVN0SDh3RnlPNXE5R29TYjlFRHMwU0FFM1NpQTEyd2pC?=
 =?utf-8?B?SzlmeUR6QTMvakdEY1lvTGM3Um9oL3VVYndDUmNrQTZIR1RoVEdtcG8ycXlW?=
 =?utf-8?B?S1VxSnlnUXA3YkhCTFk5Q1VVMUNacjFCZFVDUVZrYzJ3Z1JhZlVQYWdmMS9m?=
 =?utf-8?B?dkcyRXhDcHJmT2JWT25sNlhyL0M5VG9lY1A4SjBVUlE2ODFaTHNCZHVHdHE4?=
 =?utf-8?B?ZXBrTVBBQjVYQnFrUTRGdGk1TWNyajY2V0NBM0hSeVFxaFBHUVBpNG5aeGFw?=
 =?utf-8?B?cDFNa3FBcGU3MUNjY05yQ3lJeVdHZS9pVnZxL2tJSThjcDhYQjFpN1FESjY0?=
 =?utf-8?B?MDJVVGlEQ2lOeWRWNTJuUEhtVUJ4ZDRDaXdVKzBNMDlzYk1nMlFtS2pSdjlW?=
 =?utf-8?B?Z2JNRkFoTFRrM1h3MFVTSnJLODRXSnR6R0l2bTNNVkVnZXQwMkFIY1ZOL2tV?=
 =?utf-8?B?MWhXOXpFM3ZHZXlTQVdWZ3NzWDJjbERWYjI4S3JWTFQ5NCt0V3diYmZhaWxk?=
 =?utf-8?B?NkVUcDM1aWRBUWlGN21HZUdkUHZDQXY2Z2NvdmdtdUV3bVdVK01JbEhIRkVn?=
 =?utf-8?B?K1NaZkkyc0RPejNBbVRBNzdPQm9IMGRwQm9ZUUtlOFdvU1pveGV3OS83QzFY?=
 =?utf-8?B?aFArMGl3QUlYZzNwRzk5aXUwS0xrOFRiWDZyR1Q0aW5leFZlRWFHajJUbUtu?=
 =?utf-8?B?b3EwNWZ5RThCemg0clB0TkZIbTNKeWR0c2dBSDBUcnFsek1NZUV4TWNzbENN?=
 =?utf-8?B?UUE1bk90a0ZHK255eFk1d0VCUjY1ZFAyb1BXbHhxVHVZbHZCdUpoTEtWWGZK?=
 =?utf-8?B?QkVHcmVkNGRFVFhzaDcwcEozTWRiN3VRUmZWdnVBNlR1d0x3UFYzZy9RRGtT?=
 =?utf-8?Q?ZL8PM9/mbOGFThgE=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: rZBVP5OegdLlRDyFsGIgWm+6SwcIfgBmvRt9maRM/lt3Y0sy8cD8uQ1gsCCmMwWpiK3egoyE2BPck4kB8x/ztmgVFDdI5YQBeEgLvzQpj90OvHUEVzQre/Gf/0Uem4W6AfrkOUNmkI3mBqAnEtHtM3w1WGKBo6mQfm8OcGI63vAfM5OUSPKTVRgHbj3wJ4VrauL4lG77nEZJ6Cz+j45Yk/K48ak7hOSQ3hiB00J1F9K2KhpfLGMC05lSKaABh2IehTQE7Hthih9iovYR750lmiKifpmWjTkEIDHw9nysZSoFDkW9hyRKEEeP9RztyIFKnnKWGE0UWB+hRr3IOpReBA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ff41e768-e64d-4a8c-e652-08deaf458364
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 May 2026 10:10:22.4973 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CT2UDUPPI4mHRkEPt9DpH3ms3y8DqzMs7UYYHJn3BEcutfFp7Gms4JSL/CvrugKwiE1dWMu3wIhPgSx2qs4LCpRDGs9TDtszN+5Lx21kVdg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7644
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778494227; x=1810030227;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=becrUfec5AyIVcsttsFIAIh1Nq86E1excdwBZ1m/CDM=;
 b=OJ5td0EwO1hjppGIs12mxxVj9yNVOErMC78lOAg9E04Wv56RnZsOBBzP
 r0ql0GS/VSS3iweU2WacJovPxP8risVxgwfA3iQsQ0CG1KoSc+u9fkTTK
 biU/kB0hx5IvLCyYsDra2jTclT/dQ6Ph/Vd7MdUp6EZDNhXWtb8wVsB4y
 olj43wGgOjYhdGmoQqnS9k4wbzWIK0oW3Dtu5AlwrRK8QeVO+xm0NCILt
 4njNzlaZbmiMTaMuQGQzZtOPjhv16EPc4cthi0eogaWmvRoVZNVhMTe5r
 hDqL4/SSOEq4rrF/yBxz4F9kgtFiPNdlbFQA2J5IL6e5vnNEtMw9y+OAJ
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OJ5td0Ew
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4] libie: log more info when
 virtchnl fails
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
X-Rspamd-Queue-Id: 9BD0B50B9B8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.49 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:boolli@google.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:edumazet@google.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:decot@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:brianvv@google.com,m:emil.s.tantilov@intel.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTGkg
TGkgdmlhIEludGVsLXdpcmVkLWxhbg0KPiBTZW50OiBTYXR1cmRheSwgTWF5IDksIDIwMjYgMTow
NyBBTQ0KPiBUbzogTmd1eWVuLCBBbnRob255IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29t
PjsgS2l0c3plbCwNCj4gUHJ6ZW15c2xhdyA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT47
IERhdmlkIFMuIE1pbGxlcg0KPiA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD47IEpha3ViIEtpY2luc2tp
IDxrdWJhQGtlcm5lbC5vcmc+OyBFcmljIER1bWF6ZXQNCj4gPGVkdW1hemV0QGdvb2dsZS5jb20+
OyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZw0KPiBDYzogbmV0ZGV2QHZnZXIua2Vy
bmVsLm9yZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsgRGF2aWQNCj4gRGVjb3RpZ255
IDxkZWNvdEBnb29nbGUuY29tPjsgU2luZ2hhaSwgQW5qYWxpDQo+IDxhbmphbGkuc2luZ2hhaUBp
bnRlbC5jb20+OyBTYW11ZHJhbGEsIFNyaWRoYXINCj4gPHNyaWRoYXIuc2FtdWRyYWxhQGludGVs
LmNvbT47IEJyaWFuIFZhenF1ZXogPGJyaWFudnZAZ29vZ2xlLmNvbT47DQo+IFRhbnRpbG92LCBF
bWlsIFMgPGVtaWwucy50YW50aWxvdkBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbSW50ZWwt
d2lyZWQtbGFuXSBbUEFUQ0ggaXdsLW5leHQgdjRdIGxpYmllOiBsb2cgbW9yZQ0KPiBpbmZvIHdo
ZW4gdmlydGNobmwgZmFpbHMNCj4gDQo+IEZyaWVuZGx5IHBpbmcgb24gdGhpcyBwYXRjaC4NCj4g
DQo+IFBsZWFzZSBsZXQgbWUga25vdyBpZiB5b3UgaGF2ZSBhbnkgcXVlc3Rpb25zIHJlZ2FyZGlu
ZyB0aGlzIHBhdGNoLA0KPiB0aGFuayB5b3UhDQo+IA0KPiBMaQ0KPiANCj4gT24gVGh1LCBBcHIg
MzAsIDIwMjYgYXQgNjoyNeKAr1BNIExpIExpIDxib29sbGlAZ29vZ2xlLmNvbT4gd3JvdGU6DQo+
ID4NCj4gPiBWaXJ0Y2hubCBmYWlsdXJlcyBjYW4gYmUgaGFyZCB0byBkZWJ1ZyB3aXRob3V0IGxv
Z3MuIExvZ2dpbmcgdGhlDQo+ID4gZGV0YWlscyBvZiB2aXJ0Y2hubCB0cmFuc2FjdGlvbnMgY2Fu
IGJlIHVzZWZ1bCBmb3IgZGVidWdnaW5nDQo+ID4gdmlydGNobmwtcmVsYXRlZCBpc3N1ZXMuDQo+
ID4NCj4gPiBUZXN0ZWQ6IEJ1aWx0ICYgYm9vdGVkIG9uIGEgdGVzdCBtYWNoaW5lIGFuZCBzeW50
aGV0aWNhbGx5IHByb2R1Y2VkDQo+IGENCj4gPiB2aXJ0dWFsIGZhaWx1cmUgdG8gcHJvZHVjZSB0
aGUgZm9sbG93aW5nIGxvZzoNCj4gPg0KPiA+IGlkcGYgMDAwMDowMTowMC4wOiBOb24temVybyB2
aXJ0Y2hubCByZXQgdmFsIDYgKG1zZyBvcDogMSwgZGF0YV9sZW46DQo+ID4gOCk7IHhuIGlkOiAw
LCBjb29raWU6IDAgaWRwZiAwMDAwOjAxOjAwLjA6IFRyYW5zYWN0aW9uIGZhaWxlZCAob3AgMSwN
Cj4gPiB4biBzdGF0ZToNCj4gPiAzLCBpZDogMCwgY29va2llOiAwLCBzaXplOiA4KQ0KPiA+DQo+
ID4gU2lnbmVkLW9mZi1ieTogTGkgTGkgPGJvb2xsaUBnb29nbGUuY29tPg0KPiA+IC0tLQ0KPiA+
IHY0Og0KPiA+ICAtIFNpbXBsaWZ5IGxvZ2dpbmcgdG8gcmVkdWNlIHJlZHVuZGFudCAicmV0IHZh
bCJzLg0KPiA+ICAtIFVzZSAldSBmb3IgeG4tPnN0YXRlLg0KPiA+IHYzOg0KPiA+ICAtIFVzZSBk
ZXZfZXJyX3JhdGVsaW1pdGVkIGluIGJvdGggbG9ncy4NCj4gPiAgLSBNb3ZlIGxvZyBwbGFjZW1l
bnQgdG8gYWZ0ZXIgdmlydGNobmwgZmllbGQgdmFsaWRhdGlvbi4NCj4gPiAgLSBSZW1vdmUgcmVk
dW5kYW50IG9wL2Nvb2tpZSBmaWVsZHMgc2luY2UgdGhleSB3ZXJlIHZhbGlkYXRlZC4NCj4gPiB2
MjoNCj4gPiAgLSBVc2UgZGV2X3dhcm5fcmF0ZWxpbWl0ZWQgaW5zdGVhZCBvZiBkZXZfbm90aWNl
X3JhdGVsaW1pdGVkIGJhc2VkDQo+IG9uDQo+ID4gICAgcmV2aWV3ZXIgZmVlZGJhY2suDQo+ID4g
IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2xpYmllL2NvbnRyb2xxLmMgfCAxMyArKysrKysr
KysrKysrDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspDQo+ID4NCj4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvbGliaWUvY29udHJvbHEuYw0K
PiA+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvbGliaWUvY29udHJvbHEuYw0KPiA+IGlu
ZGV4IGViYzA1MzU1ZTM5ZC4uZTFiYzE5ZDZjZGJmIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2xpYmllL2NvbnRyb2xxLmMNCj4gPiArKysgYi9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9saWJpZS9jb250cm9scS5jDQo+ID4gQEAgLTc2Niw2ICs3NjYsMTQg
QEAgbGliaWVfY3RscV94bl9wcm9jZXNzX3JlY3Yoc3RydWN0DQo+IGxpYmllX2N0bHFfeG5fcmVj
dl9wYXJhbXMgKnBhcmFtcywNCj4gPiAgICAgICAgICAgICBtc2dfY29va2llICE9IHhuLT5jb29r
aWUpDQo+ID4gICAgICAgICAgICAgICAgIHJldHVybiBmYWxzZTsNCj4gPg0KPiA+ICsgICAgICAg
aWYgKGN0bHFfbXNnLT5jaG5sX3JldHZhbCkgew0KPiA+ICsgICAgICAgICAgICAgICBkZXZfZXJy
X3JhdGVsaW1pdGVkKA0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIHBhcmFtcy0+Y3RscS0+
ZGV2LA0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICJOb24temVybyB2aXJ0Y2hubCByZXQg
dmFsICV1IChtc2cgb3A6ICV1LA0KPiBkYXRhX2xlbjogJXUpOyB4biBpZDogJXUsIGNvb2tpZTog
JXVcbiIsDQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgY3RscV9tc2ctPmNobmxfcmV0dmFs
LCBjdGxxX21zZy0NCj4gPmNobmxfb3Bjb2RlLA0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAg
IGN0bHFfbXNnLT5kYXRhX2xlbiwgeG4tPmluZGV4LCB4bi0+Y29va2llKTsNCj4gPiArICAgICAg
IH0NCj4gPiArDQo+ID4gICAgICAgICBzcGluX2xvY2soJnhuLT54bl9sb2NrKTsNCj4gPiAgICAg
ICAgIGlmICh4bi0+c3RhdGUgIT0gTElCSUVfQ1RMUV9YTl9BU1lOQyAmJg0KPiA+ICAgICAgICAg
ICAgIHhuLT5zdGF0ZSAhPSBMSUJJRV9DVExRX1hOX1dBSVRJTkcpIHsgQEAgLTEwMTEsNg0KPiAr
MTAxOSwxMQ0KPiA+IEBAIGludCBsaWJpZV9jdGxxX3huX3NlbmQoc3RydWN0IGxpYmllX2N0bHFf
eG5fc2VuZF9wYXJhbXMgKnBhcmFtcykNCj4gPiAgICAgICAgICAgICAgICAgcGFyYW1zLT5yZWN2
X21lbSA9IHhuLT5yZWN2X21lbTsNCj4gPiAgICAgICAgICAgICAgICAgYnJlYWs7DQo+ID4gICAg
ICAgICBkZWZhdWx0Og0KPiA+ICsgICAgICAgICAgICAgICBkZXZfZXJyX3JhdGVsaW1pdGVkKA0K
PiA+ICsgICAgICAgICAgICAgICAgICAgICAgIHBhcmFtcy0+Y3RscS0+ZGV2LA0KPiA+ICsgICAg
ICAgICAgICAgICAgICAgICAgICJUcmFuc2FjdGlvbiBmYWlsZWQgKG9wICV1LCB4biBzdGF0ZTog
JXUsDQo+IGlkOiAldSwgY29va2llOiAldSwgc2l6ZTogJXp1KVxuIiwNCj4gPiArICAgICAgICAg
ICAgICAgICAgICAgICBwYXJhbXMtPmNobmxfb3Bjb2RlLCB4bi0+c3RhdGUsIHhuLT5pbmRleCwN
Cj4geG4tPmNvb2tpZSwNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICB4bi0+cmVjdl9tZW0u
aW92X2xlbik7DQo+ID4gICAgICAgICAgICAgICAgIHJldCA9IC1FQkFETVNHOw0KPiA+ICAgICAg
ICAgICAgICAgICBicmVhazsNCj4gPiAgICAgICAgIH0NCj4gPiAtLQ0KPiA+IDIuNTQuMC41NDUu
ZzY1Mzk1MjRjYTItZ29vZw0KPiA+DQoNClJldmlld2VkLWJ5OiBBbGVrc2FuZHIgTG9rdGlvbm92
IDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT4NCg==
