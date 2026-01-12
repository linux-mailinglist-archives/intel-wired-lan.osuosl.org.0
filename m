Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ABFDAD11A40
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jan 2026 10:56:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BCA944170B;
	Mon, 12 Jan 2026 09:56:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V4l2Nd-Vz5La; Mon, 12 Jan 2026 09:56:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C689E4170D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768211795;
	bh=MhTPAG6fqd9mEqvqInksfqXq8PywgFsMOe5JWneu4AA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=X77xoHFZjoNSVIJnpg1Q8bthUlGnBtDuzcCKNFPxBHyRawFacYUl+AxA2sHg5CzMM
	 00SY52XgJtz2pjRaE1pYuZNZEaKDg60PogC/kUJmumBkWmBXKiosx/4m0sgnW2KrKv
	 Swjdb1+iP9iW2CFqFoHlFbdY4ZAQtbABO46jhM+DFPnPDTzM3mv7/4/OjmBtFQYZ1B
	 gIom3FnGwykuJGHtJvuPMiXUYtHlfhP9xoRuwb4EK9mTV5D5Z916fiSjfzffGkKXut
	 oW+k8NXcsbMedHWAHMaarFU/+L0T4mrGCDpiXjMoCuvN9EwvbJ1kStVSevV4w4xfqb
	 mz+8nqJopFFHQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C689E4170D;
	Mon, 12 Jan 2026 09:56:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id BDC4B12E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 09:56:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9C1C8415B6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 09:56:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vTXmNVWsoc3U for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jan 2026 09:56:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DC3E8415B5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DC3E8415B5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DC3E8415B5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 09:56:33 +0000 (UTC)
X-CSE-ConnectionGUID: fIOt21P5SX+2UYW4SmGzHA==
X-CSE-MsgGUID: fEpC8fp2SKCSpWP/UBVydQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11668"; a="69535406"
X-IronPort-AV: E=Sophos;i="6.21,219,1763452800"; d="scan'208";a="69535406"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2026 01:56:33 -0800
X-CSE-ConnectionGUID: K5FDUU8LTvig+w8IXXAHcw==
X-CSE-MsgGUID: yKJA4ZcQQ/+Q9FfcscYAOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,219,1763452800"; d="scan'208";a="241583497"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2026 01:56:33 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 12 Jan 2026 01:56:32 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 12 Jan 2026 01:56:32 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.35) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 12 Jan 2026 01:56:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yG9OluqzW8hrr1c+Sn4du2BgWcUs/RjYM3TnpIDmvuC3ailTltCtdoCzlWy7kmU8uuqFZ9POrM++TqWywOL69MT5p4ICDXTfnki5uaBoYyZ/MwQlWoZe1RC3COkAuqzEzX35hU2Kf4UmgW2N3jkZaM+TEnUDTcm6yGqr6wrMobuiLVJvg17/UiTjMU+vEzdc9fvy3xeV6Kisncs/cZGBwcWDDI5I8T3QOs6s1WWA4WcOChFMwsPtE+TH5h3yB6cNXyLTEfzi5rTILV0dle15Ge0Cl4Bsbo1PeYhSz3p4A3pXqo51OVdCT8eXzkvq+hRmt6x6ffVtJMdaxWmi2Zqw7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MhTPAG6fqd9mEqvqInksfqXq8PywgFsMOe5JWneu4AA=;
 b=XR4P5vEcYcRhdN9qM5iCi+8f4HV4NYd5EoTUYnIHFIOf4KLfIzrKc4jlRnHHzosTCkM1IpkANsB6/N0/+qXP4Sofqg1Ot/oXzXNXIPfMlH4SVZ59E2vgiYcdtw/26oP9L79MomQHQpXPac1G9Qlr6eOENwpswxrbrhd6/T2e4w6Ax82+CeOS/zQPbTKG3OtDMnKeCIA5C0diK2g90vBixIyPcDAaryX67WpmkDYgVeRcBh36SfTVsg0q+iAfqHKq/6IdFdTu4FZ+ET6FBKyKE6jaj4sqiU1bnGo9hnisTqMUtY84RZbAMFAMiJCGPAM2L+wxajDenNwpqUF0hvT5Yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS0PR11MB8071.namprd11.prod.outlook.com (2603:10b6:8:12e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Mon, 12 Jan
 2026 09:56:30 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9499.005; Mon, 12 Jan 2026
 09:56:30 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Hay, Joshua A" <joshua.a.hay@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Hay, Joshua A"
 <joshua.a.hay@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net 5/5] idpf: remove obsolete stashing
 code
Thread-Index: AQHb5er4nLFZvRIBDk2LxYPtrkhoHLVPh2Ig
Date: Mon, 12 Jan 2026 09:56:30 +0000
Message-ID: <IA3PR11MB8986FA04B2AF34C5810787ABE581A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250625161156.338777-1-joshua.a.hay@intel.com>
 <20250625161156.338777-6-joshua.a.hay@intel.com>
In-Reply-To: <20250625161156.338777-6-joshua.a.hay@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS0PR11MB8071:EE_
x-ms-office365-filtering-correlation-id: d9b67f40-18fc-49bd-2e3d-08de51c0dc17
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|7142099003|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Tj7ZsBH2BT/gm8SDqPDtu8MXlX0rjc4spitw7Sf48mg57VuVyDGGdWBGuIOE?=
 =?us-ascii?Q?d89mFm1Us/EoZ8bds7Ypgs+fbB/E4C5vV4GnYfmNKRfr/QceHW+afW+f+6mj?=
 =?us-ascii?Q?k0HYnWafKWq2IT2xizbPmD8WdPZYUGNc9i1oo98/kaGiCSZvZtAQ0TRMoMlf?=
 =?us-ascii?Q?kxpGXgAOgHFbnzU2MDTKnRC5noQ/p7431A0sSg8qyZ9JWNinxcY6zWICB7bO?=
 =?us-ascii?Q?kHJp1dNDqGo508bkFwSzRAChQySw/zmypxocLCyThlqNFmrP6tCr8+p6ivDt?=
 =?us-ascii?Q?SvnXR1l5BVg83kbbhC1dIGrWPEYVlQc/d4uz1gdkealiU9Znz+Gwy0TrQNmp?=
 =?us-ascii?Q?a2rHrzN0oG6gPc11/Zr7o3QaSGoGpLzgcXT8LbALZZC7N119DGSbT6m3xSiv?=
 =?us-ascii?Q?evylQNTTdcGUGGF+tekA9sIAygR4ef9w5z6KmetskpcDH1vuXUu0G0Hz28Xd?=
 =?us-ascii?Q?Kprrqwjk/nMVE6Sdqz0TkmErmWuOhcYl2lTKhn60IDvd9B7S5kuagsBQiXUY?=
 =?us-ascii?Q?4r+7qXlActM4BscOt17LPbADM7EcUQaQCEgy+tZJmX18lchUGaW9x4xPEwif?=
 =?us-ascii?Q?umVEw/dkUcsWHZDJc90BKXPyBKRTZRbyihk3isAbtglmd5lM2oRZ4BVpkc+x?=
 =?us-ascii?Q?rRVIRMNtSa3QzrO9COIxAX2k4394Avb0H0w0OESNz+at78WyeMkQfcw5KKQe?=
 =?us-ascii?Q?YmziXvQNHcSb6zBATsDr46i68tP+1EtB0+gCjl+yYgXxtdZrGoVoldQZB+Iv?=
 =?us-ascii?Q?Q4wYOBPXdLKUa08FYIWxbomZSjJ8Hd+OE8e/uEqb464ouKIO+DPuc8CvCADZ?=
 =?us-ascii?Q?ObVaWiB8vcNWmLEGHy6waNEMyLAL2aiXTZtnOvTCDhMO4K20YblaS17IhwE3?=
 =?us-ascii?Q?5JSUs1ADKmxZgvYJ0rPMeVcGWC0rUT+WGUPJ3/hnlXtPgVqDoSlrMvDS/mSJ?=
 =?us-ascii?Q?PDLiReeYwsv0EViMaD149iZoGcrnmEvNtkz9qTrZLRVa7RGhbvpLzOX5N35M?=
 =?us-ascii?Q?0uU4kDOkWxnjCuyjbRXAsoMa4UGsQ6qdC5IfG7vA/eftcwy8TnJ9EpN4xYgC?=
 =?us-ascii?Q?ndEBA0TmIBMXQOhof6ju78F2l5o30Z00N9Wln7XDN0jahyTwP1e5aBDtLSYZ?=
 =?us-ascii?Q?b5Sx9TDaSWjBOzZpKD2k6o0FfzgTfXlq5k8E1tOi2ATYrOFh4wMXIk1HHv2h?=
 =?us-ascii?Q?1Ju/s7wuiS0lX7wVi6SvSye2ADDX11C8PA/h+KD+eYQ3SCS8oufp4+aMAd1y?=
 =?us-ascii?Q?vabginhQhXxUOStBr2El0nGZxzIWvDGdwl3ON/lSiL9SgFeK4QaDfdTRKs2v?=
 =?us-ascii?Q?TrRW80ihyzG4WarpltdB6yvo8nottF5MfnWpI56wXIY2ZMavpkex8Kzxmp+j?=
 =?us-ascii?Q?2g23yiVTGUjRfIrF/jYHZ0gEJMVTBE3TgdxhysPfdD6V9DfAY2STUMxokuZK?=
 =?us-ascii?Q?SzIbu0nSwIyWFV54XqdmpmjOhtJTIby51LssLsJ+/GJeOIKpnlNNxwm0ngPn?=
 =?us-ascii?Q?55jdX8Zd+cpn5E95uUFlyg3cmFayPSmimZCY?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(7142099003)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fwIQ6jQ7pi666oBOTKqfzZfHJzXV7hbV6nrNa8LLxyWuc9xJyDgkUWIyaUNL?=
 =?us-ascii?Q?vyeQXtci2V9dDByzXuhe5Qcgwt9QrpSFCGjdnWYfqUd/x8E+7xFs32y4kXBt?=
 =?us-ascii?Q?lKCF2PLCIhZLIf6W4GUkYIQM2qfbKI7/zB0ITfR9o0qMqkgvmRZCLlNW6XUp?=
 =?us-ascii?Q?8Hu3YOGETfgimDSzuvHL3nOgymwZYm/uqTtOHwJDbBr1xjBC2/hQepoYvNH0?=
 =?us-ascii?Q?5ASAizZ+UVLW8n9ty5fBy/KjPEGE1+hWM4+Oq2leV26dKBklRl6MGmiU4lyH?=
 =?us-ascii?Q?+tWrFVX9PmQtngmlgE/h95CT8oXg6DD3N4No0a/AKR0KCktixD3qVaBQtrIx?=
 =?us-ascii?Q?6lrWyhXfR5cVrPuON2u/21z3zTGphn+r8UpR7K9xxso06RAPWGWtf6veq6+Z?=
 =?us-ascii?Q?Hi40jK+GUGxkECK6to5Wpf8/KC8HvkLvqOkrZcK6x6aqMxWni7uvQXOTzxGh?=
 =?us-ascii?Q?WyUWKnmX3pLhZd2jWpjZq1pUoLmgIv1ZJGaGPbVEBxiUbRkeG+hO9iZcDfHk?=
 =?us-ascii?Q?QfGWWQ3G3yXyNOVNTYQOyZMVYjxgZTlwv8XS1lLns+n4l7T4ZBH8K3KOw+NR?=
 =?us-ascii?Q?BSHuhelMvE4zbEOGJFe4J2yH/3dB4iIoIr3v2v51vbd1a94T/Xx9JczHpvLg?=
 =?us-ascii?Q?GARj6Pae+kVeAFCQcuwFTmLt99Ef97igt9A7ts5362VX873sX24h54OoQSCY?=
 =?us-ascii?Q?UVFuwVFW2u1PvjRm2K57l73dPTKKOOfGiV1DYD4pncbYiOD9NWgSwGlMpBTI?=
 =?us-ascii?Q?wUfZWss5W10I3rv++pj178zNv9rkiz2cj1CvzrRO/PGBE+VdRKtPOQo1KyXK?=
 =?us-ascii?Q?XZTaBFT8WpCPu5wReWEhfr9UkcCOJq052g59p+0dbKcviaiVK9fYI+kSkzbo?=
 =?us-ascii?Q?jUFCT9qBb2zHIwySW7kPRgwmhbq0lcbJ9Y9ZPZQTMet/2+kbr6ZAXiUCvaKc?=
 =?us-ascii?Q?Nyz0AYlnNLfI8CvAdhZwxqDJstHYWj0IjFq/l2CtO/9+W9688CC9MCfWt5bZ?=
 =?us-ascii?Q?7m5z8lHh7ml7FU8CIOv1U00esW7eltR8hKWusCgIh2YomPJi4ckeYZ5E9JIN?=
 =?us-ascii?Q?yzyhfchaZp2kYBc/j5Y5svlsb6KLjYcSPNEoFXLiU6Rc5NmLjkn7ncQV5tMi?=
 =?us-ascii?Q?y5/OjrCvhUa5BpKOgA/UmRrKYnha0ucLZArtdKXyyio/iFIIMiTpppVKVJky?=
 =?us-ascii?Q?XqCR+M3VCRIrt8bC6i1A6mCLQe7+qF0BdruqNvPFplUSQaJwlca5eOmIdspC?=
 =?us-ascii?Q?L/SPF6iy+W5p10xocIT2Y34c5hzgXxBxLnLYFGKucUrQrjk3qftYEb8/oN29?=
 =?us-ascii?Q?ULfnCi8KbX9Q6RFviruGh5OW6fiGoq6wM+7tNPdKjsWIepOuhMwLjjctFHwp?=
 =?us-ascii?Q?k4YDLGGEJTkNO4ZZCax83bXNq9qY1cggoryjD3BQYJqOWy8fa+zehtHon6ik?=
 =?us-ascii?Q?0LUCeDZBJa8kT6udXkb6iSRi9k1M9pNxgF+ZhzofrbZDyHxGgg4vHBGD7iZM?=
 =?us-ascii?Q?kwslJLZxAh/Bm5Skxbk1/jTxPdL656gVVUVTSIPg6beHDDkNQ6bBBhVgnRqM?=
 =?us-ascii?Q?BdkVd/+1Y5p9qeGSVRST7+t6/BLgx4bTK2IiFR/gmQXqVSOHsOPR38VlzU9R?=
 =?us-ascii?Q?wdV7RHM/HBmux548ISLpApkCckUNI1SfR3+6A19qE4gIrnBj9j/W5XRzDQFS?=
 =?us-ascii?Q?GWW0CRjAgOH4g0if3EvgWAr6crw+BXkeAOCK3NtGncK0cmIL40gp9OaeopU2?=
 =?us-ascii?Q?d22DrXpGhg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d9b67f40-18fc-49bd-2e3d-08de51c0dc17
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jan 2026 09:56:30.0770 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +l0cRFTjResO0TmEHLqrLk0V4Hx9U/iMuEThxgtm+gJytWZApSw/Th9zNxyAdVpftXi3XComFbWbIn7ReqY6/8Mpw0U53edYHnJjVThQBNY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8071
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768211794; x=1799747794;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZPM9Jir2agNZsy0MMdcBdknr4gM98AbTPqWoM5etetM=;
 b=KYmzvoA3pbzR9+sbiIHDoY/8Y282jrqmUiSTo5fIc1g2r3NP9q/B61Cz
 t+axJ38aIWUA8ce+AvZbfH4bJLElOgDUQLuYuO7pWqq7YxK+7kt6Re+2g
 qn1ppnxafPqKmte/4lLqbVMNTLkF3Z6M3F7RxnfimLEYCkE/wWtO0FHa5
 oE2uutTzuk2x6w+Kzx8NgbWof+Ghh5kGugv6/JhqQsyNAB/+2lcoVBJZv
 5VpINGwPV1WvP0Vvok2yOVpX4semCwTAjGO62pp7tMJ2qfcd5Sk+2FPW0
 ZdYc4f08sw76uyR5oB5bRebxuQx66FzVpWtaMb+dJt9BafXNecNleCO8d
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KYmzvoA3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net 5/5] idpf: remove obsolete
 stashing code
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



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Joshua Hay
> Sent: Wednesday, June 25, 2025 6:12 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Hay, Joshua A <joshua.a.hay@intel.com>;
> Chittim, Madhu <madhu.chittim@intel.com>
> Subject: [Intel-wired-lan] [PATCH net 5/5] idpf: remove obsolete
> stashing code
>=20
> With the new Tx buffer management scheme, there is no need for all of
> the stashing mechanisms, the hash table, the reserve buffer stack,
> etc.
> Remove all of that.
>=20
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c | 375 ++-----------------
> -  drivers/net/ethernet/intel/idpf/idpf_txrx.h |  47 +--
>  2 files changed, 23 insertions(+), 399 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> index 674b7a382bf1..811fc6d124a7 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> @@ -8,48 +8,12 @@

...

> --
> 2.39.2

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

