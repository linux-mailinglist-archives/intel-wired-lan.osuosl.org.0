Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6z8EJTtsT2rygQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Jul 2026 11:39:07 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C1FDA72F0B2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Jul 2026 11:39:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=g58WTOIP;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4FDBA40D9D;
	Thu,  9 Jul 2026 09:39:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a1v7L4RJOLjI; Thu,  9 Jul 2026 09:39:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 778A140D9E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783589944;
	bh=kUY0PJS4oeQF+Ux/gHRlxZC088DW8/C3E+hvnw+4qms=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=g58WTOIP7Cx3ZQYzyglu7Ohi2iIwWd4bl1Pi2avWQZNOq5MiBdIKmHg0lpPiKkyeI
	 tugcx7YcFL6PpN8pWoak03Bb8Vpo9OSMdxNJahxprtQIrg6jO3QbLLdUxOxpCzpOZy
	 L8z+ZWRuE8vm5ZtAsBGpwRkg9utx85dwhjQu8c47b1QHxglcrTsxhs5rW78/FYb5BM
	 16nPKwm80v9WCSy0T+7ic0ij/ON8nQORVWszodRXTWRlcP/QfJLG9vEnNUb+PNRjsT
	 onoda+haMkYCaQRb/EPCzxgyP3v2YPV+lbfIysaHyKzLrcMXSrwuPGNuz5FXe9o9X9
	 ty0G68l7zIF8Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 778A140D9E;
	Thu,  9 Jul 2026 09:39:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id C159B320
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2026 09:39:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B36D340687
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2026 09:39:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eta9DB-0xNhb for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jul 2026 09:39:02 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CC92040686
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CC92040686
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CC92040686
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2026 09:39:01 +0000 (UTC)
X-CSE-ConnectionGUID: EChkjAhzQN+OHgQ3ywflhw==
X-CSE-MsgGUID: pmX7urBvSKuboy/9ZwGZKg==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="84458961"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="84458961"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2026 02:39:01 -0700
X-CSE-ConnectionGUID: KZOwdekaRpOeNvBH6vwIyg==
X-CSE-MsgGUID: ITdOBFlhSc6b6vqyq3bTxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="258403765"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2026 02:39:01 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Thu, 9 Jul 2026 02:39:00 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Thu, 9 Jul 2026 02:39:00 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.71) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Thu, 9 Jul 2026 02:39:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T7Pn8Kem19/MuDXZBrhPNfPz3q1XrpUrm7jN8wCXx+/Eeieos7kkPLDIjjyNNJ03+Y3AjRYhFZAQn2kZkJ47Vyv04IU0tQoUrUb8bQv7FI33vlh8JNW061cJXZZwVASOP748Ww9fb9yYLNmXyFbZCLIoEyQJ4LAJYK146oDaZBG9VR8aQ8f0NVPvzPuN5uixNLrcZvhtAeANSd9kk6AB6Ty7ncen0mhPs41RqXLdHOTGEE8CGr8ktKLzOiJolsuMGkoiPHnnfYkdQgvRnXOQaZRO+1g6XUOD32aQoGuPKrKN7dHnP0HbBCTHhm5sUwupISVJvORVWeqc5MJq25i3Iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kUY0PJS4oeQF+Ux/gHRlxZC088DW8/C3E+hvnw+4qms=;
 b=bmRLailgiuOaj1rUhSNa3hEqqotFpJRb4B+uwzhQ1onhxN4LgSGAuYHb5t51zxzOJcnWc3T7BiqRYHMTvqvxsannrsbupndrN3BOT0I6En6/rqQuuKxoCSSbYv3pFxCdl/rqml9ScXFN4YJhLDONaZ4UTld1mA2mIFd+2zyA7mMgG1AJQzyAdJMqzFS7jGmNPRkeGu10WaoJ7A13OLIRaLuJVY8wojEmVnKSJBJfz0odAQjnq/+15uCFdDH3HjsQXSdMO4RV8t/2KM2iLffA25eEPmQ+TXTAtpTAyBvlvqOk1xWwLDSnpBrJqvTlhq6lGhE1lR/ATc0hQVMoaTP9kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5902.namprd11.prod.outlook.com (2603:10b6:510:14d::19)
 by IA3PR11MB9422.namprd11.prod.outlook.com (2603:10b6:208:57e::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.15; Thu, 9 Jul
 2026 09:38:57 +0000
Received: from PH0PR11MB5902.namprd11.prod.outlook.com
 ([fe80::f95a:602a:34d3:5d37]) by PH0PR11MB5902.namprd11.prod.outlook.com
 ([fe80::f95a:602a:34d3:5d37%5]) with mapi id 15.21.0181.009; Thu, 9 Jul 2026
 09:38:57 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: Simon Horman <horms@kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [PATCH iwl-next v1 6/6] ixgbe: take rtnl lock before
 ixgbe_reset() is called
Thread-Index: AQHdCgYnAuIsRaY0CkOC+ZL6oGfljrZj4xiAgAEV/eA=
Date: Thu, 9 Jul 2026 09:38:57 +0000
Message-ID: <PH0PR11MB5902025B1C50243414D0840EF0FE2@PH0PR11MB5902.namprd11.prod.outlook.com>
References: <20260702091553.57112-7-jedrzej.jagielski@intel.com>
 <20260708170235.1514479-1-horms@kernel.org>
In-Reply-To: <20260708170235.1514479-1-horms@kernel.org>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5902:EE_|IA3PR11MB9422:EE_
x-ms-office365-filtering-correlation-id: f102e103-7de3-42f4-e0bf-08dedd9de66b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|376014|366016|1800799024|38070700021|4143699003|5023799004|11063799006|56012099006|6133799003|18002099003|22082099003;
x-microsoft-antispam-message-info: AaRghoLq89bFlA3jSV+nMnIFZqqZFm02930e8lMRtQtYHYyUQIQ5zDpqDKddXtmNs/y+JkV/Pg2225Nje4bFnH7/neitnL6Q0F/81y4cmTI9VYBCVUazCEwgJu9ksLbpvBfcpGpXwdO7CQIWkmCelZrh4jGB/0gIOjuupA0dY40Vye3yBkDYRghmX/WcUXsaycPmzqzl19R8cjxFcPqFiviYDjqQr4PIPY74hF2Gc0KERp/g82oFe3id77NgNuqR6+ncbSfjSd/ymRNs4YK+s9ykx40/7hV9qttFOSoDQtrPYykMmww4dfymwINCSZPxEIvbuYtcWya/H/5dfP3VaHp+n1WNu14s/tdulWx0RMpPBlLvAvnv1XPYQF+O+s74lnElZZPQMlJuHmmM1qMH4p9e66wAJ6lCQIFP1eOKvseb7pqIlrK6KXNpf8JzU8g24RkHa60Bxk849/eBKeNsOKkD1QmnRp0r3+BaSJpTLTkmxeXM0gkZMjtpKVV8ZIY2WSApK2y35ODF8UoOKXgaOYqvh3Jgdjt6fDSOfGlA7v5gu9wUXZU8//fooX0eoIedS9ZiaVijf5lFOSeHrTuw+/WhCGvZy8bxMtW6C0BSngykpO2MqXyfw/vIW75TVxhPQlNnPCZ7pIoYGnM9QnXKhxC2PaUY1wKkS4T8dJNWosU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5902.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(366016)(1800799024)(38070700021)(4143699003)(5023799004)(11063799006)(56012099006)(6133799003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RD11KgMKdJLDf/J57G8nncolG/yYVXeLvV7eZTBd4WLYHvgQK+3QpDg8X2Dq?=
 =?us-ascii?Q?th+hRSO/4zW5tjh9fqLexV6jRyz+eV8n62XnV37WaDgonDjmJkhkl6U6o0h0?=
 =?us-ascii?Q?VKF/GBGsjCZ2FPmMnojF4oPIdhU/cGdGE932jxwOGeTGaGeslwklWyCbuIBB?=
 =?us-ascii?Q?hNc4lq3xoOz6bpVp8Ytb0Jr8/RrupqA6N21Bt2HompeWMFPwQSKUP2lNUN2u?=
 =?us-ascii?Q?mYJuo7B1vfcywmj/fSMCF39ISmXdkR10W86Gpo4jMr4q/FJXsYUz1E9fkAjp?=
 =?us-ascii?Q?FnpurpzOosnxgNyaJaGFt47YfqRkBys2YAanFaoyxTNSEeZyjilvaT4Y8NPI?=
 =?us-ascii?Q?A3asikVqzItaO33xXz1RqnOwxbXKCRl18cdCGmlOhQFPN7pXMdKutuD5Q2Xt?=
 =?us-ascii?Q?mFHoDhEnyt4C2mQfOa3EVNGjcf65rx3ERyCiXkA+VqG4GtDiQ9ghzUoipBAC?=
 =?us-ascii?Q?bijjXHgx/DfsObcgZfxUZ1CiBfRbwjvx1JdlBDUaqaNRv+8sFFTOpr9Q5oac?=
 =?us-ascii?Q?bFy3/NsI2+cKwvUjxLGVqi8v1eixDEQj4OC0rVxVgap14V90m8DZBnaGhY7N?=
 =?us-ascii?Q?Mmx7E7gbDUnYsHVl2QExM5cPRL8MQ1gmpJgON6+spzvLlMtItEd7J+wZg09U?=
 =?us-ascii?Q?T+X7IcVyRnvZ7QuQebatYS4i/K3u4SMp4WeG1HaGGI1Dl9m+sqtcuXapuifK?=
 =?us-ascii?Q?LT1TGVWBvxS2+4bGTz1BbWeROy645LmWl/CcY9d2ICrVCiiPY+dMiUvoWDMO?=
 =?us-ascii?Q?WhN+45lJo8e0LlBcL9VOCO8kMzl0/Sjf/OzOBKFPsV9kV6rwbHnNpGkW+9cU?=
 =?us-ascii?Q?N3E19rB/QyE9ibNzJvSD+mb9X141LUzcn/g2VVmnlTX92OHFSTmrYVqmGTmX?=
 =?us-ascii?Q?Y86due5ZORLT5+a/pyGszTmEjyOs7Mc6v50A6WJ0j/Lu2/+rXAaV0fhxm9fJ?=
 =?us-ascii?Q?NmWv2HAzeDIwzCQdWSoAfkuRzoMbcvmfBUyGZVuBJ4EZ5mxf7V8omMNt5oe4?=
 =?us-ascii?Q?sor9b3/VMEatrqbC3hMqWhzqN6GADOskmpewTmVAxQDnN13AKQDUcMQYVsbY?=
 =?us-ascii?Q?P0ijnsZQ1ZuWPPVAjt/iPxvyAVSm8C2T7bwHNNz+YwlBEOAZJIJ4PYhaLAvD?=
 =?us-ascii?Q?m26El8GA/yeNYb0CnIdFMDi4KtVwhOuk2w50aapHplwPx098FvGTOfwe8UdH?=
 =?us-ascii?Q?kerVPz470yMkjRBFUS6qAMcUXzImTfJA91l3vqcmIOvqdrzfaVLyF0e1g8wW?=
 =?us-ascii?Q?toYcy+gRrtRtl/ThBBW1QWRYI1mlUvTU/HbzZdmRexkkH8rtXy7UOPoPEzQe?=
 =?us-ascii?Q?lzHp4hooKnF9mbcjTeOTG7JHazEPjKEi5Ja4dH1u+cKJCEUrCUtvnopKf5JU?=
 =?us-ascii?Q?eLYb4vQf/P4LdtZnwBkGtOpzwkIEWnXf/RW1yKLzrPv5NS0xQacQAk24vM7u?=
 =?us-ascii?Q?bJxSDkbN2zSqmg34G5L6E8rrBnMavhmhjKKvQ4FC9ipMjZqD9Uu6DbGaguK0?=
 =?us-ascii?Q?3uVdfkTkYLC3O93KgYIMU1NOSejvyUQtTkF966I4ydAGtIO65KTZN6vyLIjx?=
 =?us-ascii?Q?arZ1+FqhiAzmc70aUa9l4okgkso94R1cXESiGdUq/51JB7xnLCfTs65MI/T5?=
 =?us-ascii?Q?NUiOE3qF478122mmiTD99Pi+iHyyiRM0hno0KyqtnU+ohi5Bl2UPQHwqeCL1?=
 =?us-ascii?Q?rFKCWj38vMXOe3aITVIrDqIxu1LgaWgEYOOSfEzRev3Bi90sVHHbSNcgNujI?=
 =?us-ascii?Q?XbEzFvBlNg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: q3SDWl0JqSTJJlyDejToA0RBDYX+tjHQUEQOyT6eDhDT/MhTNXOF9t+w5FHe/nDedt14qTgA2D/2UDWBacjEtW5xCM2no3p+TeekoFKUchzHAoUkXGPaFuQMkmQ1X/v5WOmRF/1eOCnOlYCjGPnB5xBxBCTYpcufjw+8rIdqTrjXeq85h42TLHOZvsErDYoNmEzQeiiRk7oyC/O3M3ckiumZBpw17geLw069W49jE6337QfLPQareoXlqVt1Ye9fUraZxE4DdqXK7Pp39HJQkZTaV50TmXepikz4RhIUwNFXqJYddIUAgyL4vFEY/kM4j1+OKhrQjSPoIZBLegBbtA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5902.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f102e103-7de3-42f4-e0bf-08dedd9de66b
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jul 2026 09:38:57.8545 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UfrVdL6PXCF2/Da1ZIbmO6I1eH6HxmyR6G3BsyBxChpa8Wnl5VPxtcGXc/MCHw46Y8Yg7F1Vh6YU5WqmnVWL/r77Utv8kzemdw6rDnv24bg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9422
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783589942; x=1815125942;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XDRjPVNt0zg4GUuEGj+SIkFCQW3s1ORMuYR417QTFtg=;
 b=mVRC4o0oHSpgn91+E7qcTxImyH4luC/y61JJMa4sEaSolZG5I0QUsJpD
 xoSTzCViXXs0EmDzFF4H2dYJmnQ57rJCwGvWpn8bWxbPBj9PKPYemXgon
 /hCnV1A4n4hq+VPh80LCQa+wTBU++OkdwN3xO9DIQPusRIeMCPi9evFBm
 FnDrViRIf+H2LFI37j+70Lt6rpb6BGR5HLF8P06cxChrckHSRUCASkOA1
 Kom63AHWLmhRGCacmAW4EDmlhJSqY0lJySvpSZRcANdFzzQX+H7gaj6c7
 D8A/uFmOBm16CIK1uN/UaJ5afXYlIekRtLHnv3rsyGvdidFfy6ktwFZz8
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mVRC4o0o
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 6/6] ixgbe: take rtnl lock
 before ixgbe_reset() is called
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[jedrzej.jagielski@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jedrzej.jagielski@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,intel.com:from_mime,osuosl.org:from_smtp,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C1FDA72F0B2

From: Simon Horman <horms@kernel.org>=20
Sent: Wednesday, July 8, 2026 7:03 PM

>This is an AI-generated review of your patch. The human sending this
>email has considered the AI review valid, or at least plausible.
>Full review at: https://sashiko.dev
>---
>ixgbe: take rtnl lock before ixgbe_reset() is called
>
>Previous commit introduced ixgbe_mac_addr_refresh which touches netdev
>struct by updating mac addr. It should operate after taking rtnl lock.
>One of the callers is ixgbe_reset(). Most of scenarios when ixgbe_reset()
>is called met taking lock requirement, but there is a ixgbe_resume() path
>which calls ixgbe_reset() -> ixgbe_mac_addr_refresh() without taking
>the lock. So there is a risk of race.
>
>Move rtnl_lock() before ixgbe_reset() is called.
>
>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net=
/ethernet/intel/ixgbe/ixgbe_main.c
>> index eb05c2f982e8e..aa5a61f95d883 100644
>> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>> @@ -7535,11 +7535,11 @@ static int ixgbe_resume(struct device *dev_d)
>> =20
>>  	device_wakeup_disable(dev_d);
>> =20
>> +	rtnl_lock();
>>  	ixgbe_reset(adapter);
>
>[Severity: High]
>This patch fixes the missing rtnl_lock() in ixgbe_resume(), but is this fi=
x=20
>incomplete?=20

That;s the only missing path that really matters

>
>It looks like there are still other paths that call ixgbe_reset() without=
=20
>acquiring rtnl_lock(), which would trigger the same race condition and=20
>ASSERT_RTNL() warning on the MAC address update.=20
>
>For example, the PCI error recovery handler calls it directly:
>
>ixgbe_io_slot_reset() {
>	...
>	ixgbe_reset(adapter);
>	...
>}
>
>And the service task can also call it without rtnl_lock():
>
>ixgbe_handle_fw_event() {
>	...
>	ixgbe_down(adapter); /* calls ixgbe_reset() */
>	...
>}

With un-attached netdev i believe there in rather no chance to race even
if mac addr refresh would be conducted during pci error recovery

>
>[Severity: High]
>This isn't a bug introduced by this patch, but does ixgbe_reset() also mod=
ify=20
>the unicast address list without the required lock?
>
>ixgbe_reset() directly calls __dev_uc_unsync(netdev, NULL) which iterates=
=20
>over and modifies the dev->uc address list. However, __dev_uc_unsync() is =
a=20
>lockless helper that expects the caller to hold netif_addr_lock_bh(netdev)=
.=20
>
>Since the callers of ixgbe_reset() only hold rtnl_lock() (or no lock),=20
>could this cause list corruption or use-after-free if the device resets=20
>concurrently with unicast address modifications?
>
>[Severity: High]
>This is a pre-existing issue, but does ixgbe_reset() use an ad-hoc=20
>synchronization mechanism instead of standard primitives?
>
>Inside ixgbe_reset():
>
>	/* lock SFP init bit to prevent race conditions with the watchdog */
>	while (test_and_set_bit(__IXGBE_IN_SFP_INIT, &adapter->state))
>		usleep_range(1000, 2000);
>
>Reimplementing a lock with test_and_set_bit() and usleep_range() lacks=20
>deadlock detection (lockdep visibility), priority inheritance, and fairnes=
s.=20
>
>Should this use a proper mutex or spinlock instead of spinning on a bit fl=
ag?
>
>> =20
>>  	IXGBE_WRITE_REG(&adapter->hw, IXGBE_WUS, ~0);
>> =20
>> -	rtnl_lock();
>>  	err =3D ixgbe_init_interrupt_scheme(adapter);


Both above notes relate to the already existing findings which i believe sh=
ould
not block this series since it touches different side of the driver. Addres=
ing
these notes would require service task refactor
