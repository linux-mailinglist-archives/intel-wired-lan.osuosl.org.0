Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4IzMDG8D/mlYmAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 17:38:23 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 80EFF4F8D88
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 17:38:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A23E683DC9;
	Fri,  8 May 2026 15:38:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4xv7LjqKUUfy; Fri,  8 May 2026 15:38:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1AA9483DD4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778254700;
	bh=dKIdabRe/dql8mdMfRTti/MjO+H85QF7VfhDmqYRM20=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6OBDOYbf0y0RQY1DhoVgp0UBcSmE/YFMFjuW32r4QhrtOocWltsIcQ8IFOsFyY1DJ
	 zknG3Wx/VMz/i+qWR9JmsqBDIU3mk4zCyMcjqAo2dTtPN1u9/sOPSJeIE2PCQVRbcS
	 pXwJjn5dRS1ildL2xixxPmxzpL6+MTfhAfEa11blFCpnkqjpPtkgojbnGpMF0gwjLK
	 lKy9I6hB00VAHSZS3DieOrBYkK6wvvz7y9pjpvzac02YaXQibDmeShV01NzngH1/w1
	 pNnRA18MO/cjIJF5ZAWp7jqmV4OXm7N1bfSZwkcZxxvSZaJSWtPeAWWloFQcer72Z4
	 BAbdlm1J4Nhcw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1AA9483DD4;
	Fri,  8 May 2026 15:38:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id B5D7C358
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 15:38:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9B9DA40F1D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 15:38:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2TvwoiHu3xaD for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 15:38:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=alexander.nowlin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A0CB24059B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A0CB24059B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A0CB24059B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 15:38:17 +0000 (UTC)
X-CSE-ConnectionGUID: uHlrOXs9TIWU1ph05l9Jnw==
X-CSE-MsgGUID: wUgxcoXJSWy2EybOZClXzg==
X-IronPort-AV: E=McAfee;i="6800,10657,11780"; a="83096239"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="83096239"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 08:38:17 -0700
X-CSE-ConnectionGUID: DpeKL9P2RLGElnwXygHFOg==
X-CSE-MsgGUID: hDZ0KVhLQTO5gzef+9uD4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="267172173"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 08:38:16 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 08:38:16 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 8 May 2026 08:38:16 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.46) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 08:38:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XMtslk4vBhGUH8htPQoYTlzbMcGpDyWKNKe6jLLMqwzX41CRFqyB2+fiPJFG4i+LF6IdJsYCF4w+73ghP+jz5IC+KPsJCJctGtNxLbRFVimHPUs2AWQ2Vy5FuIHi+WTwHWc8618I1J0/2QVre6d+va1+6PlCbmn/KWkx+YsSFuTZAKtYhQtgLeG7AsjFJR37Q8FibVVI7CI9CxT2tz1DqFxyJweoo0f1Jm04xclbSo8kyV3JJxPwtwB4Ol+Wgqp17MYKDMfmfW7wXWI4pIXzV+Pon5CPxeKiPjuCm0s47orwKL+z79UuSTr6ae1DjLWbewUcfr4T+27UGZUkAunu3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dKIdabRe/dql8mdMfRTti/MjO+H85QF7VfhDmqYRM20=;
 b=Vz6HUM1JFrex71FF/ejdCOyvQM5g3pkUAiCnaZJeT0TNvuiEfQfzNjEf5all0PREXJZyBrjlZL39TRWny7BNCp7u1QKcV0LMNwuqDWsPAPBMAUXRQiyMTlgKTrJN3KaURPp/S1LgINYa9NlW7H5cgeMBLiT/h6r4lSV5hGIjGaSf2BiPOxbn6lXBn4ctXUOLaaCpuB8LXnF2x81sYZ0oUbj0XTwbIHrGB2zQZDappSXPuehKacEFYbb8ap4nhv4CLbGGsWvv2/d8qWlEPxAKwoJo4qOFowxRfn9nugZOzsGvb4oqN4SQ0dDJMcly9+E0zD6fsA29MzZ4neyayjkevg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV1PR11MB8790.namprd11.prod.outlook.com (2603:10b6:408:2b1::16)
 by SJ0PR11MB5101.namprd11.prod.outlook.com (2603:10b6:a03:2dc::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Fri, 8 May
 2026 15:38:11 +0000
Received: from LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a]) by LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a%4]) with mapi id 15.20.9891.016; Fri, 8 May 2026
 15:38:10 +0000
From: "Nowlin, Alexander" <alexander.nowlin@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 9/10] ice: use inline helpers
 instead of memcmp() for IPv6 mask checks in ice_ethtool_fdir
Thread-Index: AQHcyL6/yKFKccbURUCfGhcEiW3s1rYEb8WQ
Date: Fri, 8 May 2026 15:38:10 +0000
Message-ID: <LV1PR11MB879047CD474B4FF2074CB9CB903D2@LV1PR11MB8790.namprd11.prod.outlook.com>
References: <20260410074921.1254213-1-aleksandr.loktionov@intel.com>
 <20260410074921.1254213-10-aleksandr.loktionov@intel.com>
In-Reply-To: <20260410074921.1254213-10-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV1PR11MB8790:EE_|SJ0PR11MB5101:EE_
x-ms-office365-filtering-correlation-id: 1626fc77-75ac-4258-fd06-08dead17cf67
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|18002099003|56012099003|22082099003;
x-microsoft-antispam-message-info: w2xNX5OmZnAmL4CJEZm9LlCSgZFVt99Glrcn3f/pwSVIUxcqOeasm6HuW/poC1Ovs9ZtbVbWoBVbz33ke6YjlDVmQel3d2HtoZitZNRIX1Zpi2ZCF6FfXafWglUdK65lfG+txywwIVTDLYPpgxaxiOB5tuaLgfiAo28dvvT/y5EXFRFncXEbSTA1lJZZcRwireyEZ9Q7FRtewNq5m/vdINsHlXEVoyYI81MTLo+8LpxwG4UsXTmxAyXNXjCm1BfXQMNVVRel5V904rP8sHYvjZx+EfbT8qOnOsbYajQDPaABSf65FAHVYGx45YETyZ37GG3AY2pRXSar7MrhnTHkS/L1WccmBcVC3f9hQkSm9mealHkhskJuyXpTgeqYECjF2lP1p0HL+J508Au53a5E7d3xqdIAuwoft1S6dE7LLEZUmsDtR6krg696jv7qi7KXbK/9xIDhcQZrykcdIZnHpCp5vGTnZKoD2R2qQtkXPd8wkJkPTVGw5FcAF6CCDPySgv0/eE8sWPcIKdSpYNUHpBvfQr6zSB0MSg4hlE5wFFAl122cNXNe8pUBsKTbmsWv6VxRHQkvlKFROW3JAyaWQRNjxIH7ITcOZLUrwbmCSDdnUGDwWrd09LyH91uiXtdy07Gm68KIoMUVmEkx+d9OE0JIUqD/4XSV6PY2isA40iuaFmIUrFmbOnpEqQX7zVfaiZSRZGXk/kDHqfo86MrAHCe1mMo20v2e31BvzQEWzzQsrf3ZHUxNBd3aMbfsz7zY
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV1PR11MB8790.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Qqk+3dcmwhrFqMx699DMcJoAWmHMK9kDlgGZRoTgAd0fOfbn9FBK758Ohywq?=
 =?us-ascii?Q?m8SguJCr+mpoLKo+sAlspERzK7HREaYkIbw+KUnRanIEU71ArzLkbwVZ4PCC?=
 =?us-ascii?Q?XsrXHLrvCMaWTsYyK1vONYQg6DNHCBuy3I4O4d0sX/ccUj9n83PbeXYCxet9?=
 =?us-ascii?Q?Vr31Dxb84qgz5GHzq050KlP2x8viZBvnumeeqL31wjsmHwTLT3koLw/igN1s?=
 =?us-ascii?Q?f8BxULZuXG+teIo1r5++IDRCvVXJAs4p7mC6iAwEQEtg/YSDbQQc6l+iGgt7?=
 =?us-ascii?Q?BY6QeAhJQi1qwo78p+mvn8g3O8JhLUl0Hm/SMNt6yFly2vrA4ip4EbVZ/FBF?=
 =?us-ascii?Q?ALH5yeNvPaBAEOVhTzWDqhcBR0JhsLnVRlS8neusZ4kNsPqOS5pMH7rWdbW3?=
 =?us-ascii?Q?ybKooJWNR/Yasz21ilnOuW0e1xzV8wYiAuFCTiNZZGWeKyDNS1BrDVLOq10R?=
 =?us-ascii?Q?xh9VQO9PoLA5p/DxCwQ5H043VlHXsgqQnMT0bHqp6uD1wV8gSIFP/pv8k3LC?=
 =?us-ascii?Q?rj+Pie9mIIAFCmpOi3Z6kVXoA9Oc25/TI8sINa0lTuaQO8MDjv03F5TWfML/?=
 =?us-ascii?Q?NM0utrr3UekvKCn97tJPXQmDkyj6lIG+PbFJpMXpqaQVsz4mkIEADJjs7lnQ?=
 =?us-ascii?Q?F/7mUr78L19P/pekwkGhj108wzAlFiT3Ed/SA8gb6gfMwewNQb/El0dJLuu+?=
 =?us-ascii?Q?Kqhg+NCOPxGGNiAWopR9fNx9LFwI8kyRmmJMUogplyCic2gTOrnsd4N31eF2?=
 =?us-ascii?Q?5nP3E84ebDrUJnveuenprTs2clbtsc8LmA93Bu8ylEsunx5Qqi+FdHCDGwN+?=
 =?us-ascii?Q?VUAjuZW80EV1ivnL4TveJNQzy6xPo8RxMxlCh/nl2mMndiDoi+jf5LLKY6xv?=
 =?us-ascii?Q?n4rB/kVXu/bnvSU+uhIyMrD7Ops4X8ZgxU7teKhUP4liBSaD8lrINp0kCOhL?=
 =?us-ascii?Q?lBHw3vdm+errF002MZ+TgjBF8tfwGvmj5490iHsm9Cah/Lgm6cWp0hH4ihtR?=
 =?us-ascii?Q?8oPE3XeYFdkhrgm8AL1Bbt7orvbvU7cNTSIv8nHzfgP9MDYNMI27MeNv8sMV?=
 =?us-ascii?Q?0aOdCyanXnz3kYcG6S934yhfsHfUpSSSeLpoIpbeL2ObOrWsKDmjzA5Qu12T?=
 =?us-ascii?Q?zFgp39EvY90O8vr5Omyz7lf5VkZD4HYcaLjnsXcBue3eKbnyTFHy9duF2BAh?=
 =?us-ascii?Q?hG8BawQe3/fWFsDePNPbzs7lz8M4P6rAS7pf/KFuvUDyltAhlL83+Qv5KkNU?=
 =?us-ascii?Q?qk5RZBzyadIjjn7997N0ZIvA4+XW2b0qnkgwc/VJmgQdCPJ/A7zYaQaFgYNv?=
 =?us-ascii?Q?Utwduz0RDrkJgeP8qOiF9aXSa9DOwar8jPJB7cOHXfuq4Qe9QRtfb4hm8PXX?=
 =?us-ascii?Q?tukqzH9e9NtdGE+vFSShtzQGmDhxWiKOVXmWlvWUF0n1LIUZNqF/YMXtbaOG?=
 =?us-ascii?Q?rmiZQdfoIgwWGnHw4BILdim9UbzJcBfJGY5R9vfGYRYWguZm172/bmh9pf+c?=
 =?us-ascii?Q?fIq8P582VhhK6NRKrNZJ/LKLdFzMVTK7NzNz9yRDHfFit0HRinqDHLczmhYn?=
 =?us-ascii?Q?4tlA4NeLnQ1TeVKOuT2joafnG1J9p4tBknXJR4KK+2IyUUFKDIikpi5NgONJ?=
 =?us-ascii?Q?JU1A1TKA3+J0s44wEYuHORGbRyXUuyYQlm21I5tryqJ34I9W22PMgjBW+a+L?=
 =?us-ascii?Q?2Z2BUcdQXYruyRlRxYCLIEe+A536LN1iDRqzvp2+Nak15YNivRsV6lU/qf2u?=
 =?us-ascii?Q?tudbNgmvKw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: tVaHheiZUPG592fg82HcbliZqQq0Jjwci8TwPukuPbgRZBTUnNphdMJcXK759vPg+8+QyuDO3Y9ztUPh4h1/beMv9OtPpMauQPyYPnARnpjW5BuIuENipeV+p9F8Gln+feDXCZj7YgbsdMB+DzDfEvV09kCAhGTCtaISSVtiQsAfZtOr0WPpr93hdM3k8Ig0LKb7sJL+zaJ/0nSxLwjIAQD/EnGd1JcctWij/tBOet19ldcgeSqIbEeEZWisYBZ/kUsnNMP/l007d4GTrKT2RkJFIZsVO1/1tFUSbiGyDO6wYp44ZSbTB0mBs7hzQRYAdW6Fuu7P4m/FyfRHFQ61Fw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV1PR11MB8790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1626fc77-75ac-4258-fd06-08dead17cf67
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2026 15:38:10.8531 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s3WEG5v/PykWtbQKbT2kioFq3XtTMjfItJTc3cVismwunvpytKwZ41WmFT+CjAi31ZVYA/hBVvn/La2j2rfaxMwyYjw/P+NDENacFi+TPJQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5101
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778254698; x=1809790698;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DQBLytWpsa+DAVQn0vBIs4911Fa453/Ko9IjlX4TMhQ=;
 b=iT7tgZdNu8UmKGrlxbtV5KhqaCZtG2LYhVrhcoFRPDf9f6d07aDdTDUX
 ckXtMGd/gdiKsa0EurmX9iq06chIPaHj44WwYiYnDJkFEoBrLeFtQL3mh
 nWIaQmaWh9zFYKEL6YwLgqh5VjWm7AFiD9am7BBIzMZxWHbgLCGgAm7ML
 kGuy2HneN/jpZIL1ZxSEMvRHjtxB/89jyf4OwCa18jYqQK9yD63T4gmSs
 SePshnLCbpqx7b4viVVMvid1oVjwkq8uQz3LraAS8yDqphhvV+cEWENbo
 7JKbGWRrctSMXg+2RqaPTKf0lJLhieRs7QOzHkfoBgV2oFIe6IASM9r6S
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iT7tgZdN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 9/10] ice: use inline helpers
 instead of memcmp() for IPv6 mask checks in ice_ethtool_fdir
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
X-Rspamd-Queue-Id: 80EFF4F8D88
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:larysa.zaremba@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,intel.com:email,LV1PR11MB8790.namprd11.prod.outlook.com:mid,osuosl.org:email,osuosl.org:dkim]
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
leksandr Loktionov
> Sent: Friday, April 10, 2026 12:49 AM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: netdev@vger.kernel.org; Zaremba, Larysa <larysa.zaremba@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next 9/10] ice: use inline helpers =
instead of memcmp() for IPv6 mask checks in ice_ethtool_fdir
>=20
> Replace static full_ipv6_addr_mask / zero_ipv6_addr_mask structs and the =
associated memcmp() calls in ice_ethtool_fdir.c with the kernel-provided ip=
v6_addr_any() helper and a new ice_ipv6_mask_full()=20
> inline, reducing boilerplate and making intent clearer.
>=20
> Suggested-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_ethtool_fdir.c | 57 ++++++-------------
>  1 file changed, 16 insertions(+), 41 deletions(-)

Tested-by: Alexander Nowlin <alexander.nowlin@intel.com>
