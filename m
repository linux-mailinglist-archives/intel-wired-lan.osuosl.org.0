Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2ECB1D244
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Aug 2025 08:03:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5BA7D84C24;
	Thu,  7 Aug 2025 06:03:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LUcOjyamO8SD; Thu,  7 Aug 2025 06:03:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 66BBC84C25
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754546608;
	bh=hoHHLsaUV3SlcjlLWitCIRJHY1FumSKzsR3z3qyNOxs=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gaxYbmW5qtQVFVwKG72DaIFeOjP3OeV2ntw62oqnszuKfVEblQWO19MPKiu1XbTCY
	 R2nAK7qI9qKqtIoD8x4WRtUiJHBuqBl7fvgshpsUXjdk7j7hieDr4RSVWFTWjjpCtJ
	 h/2dqEUhXo1qcp6OZDafO6MfO/myPf4s5fM0ONscUc+RzBk1w8lpg0SiLQ8TJjFKyT
	 ehA9HEV8noXifDfgh83/+uYgzClgYq2LVTtzI0kVEMAu515eG50PXlpg2ZsOVqDtlV
	 dw/XUgs8w2BDURvG9FzB57RaGejt6sqyWBzyDOxso66yJz7ooDvldyNT47GVPOdB+a
	 CpLvabnkDhigQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 66BBC84C25;
	Thu,  7 Aug 2025 06:03:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 71B0FD79
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Aug 2025 06:03:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5769941D98
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Aug 2025 06:03:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3GLRQXcW7xXr for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Aug 2025 06:03:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A7D6F40022
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A7D6F40022
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A7D6F40022
 for <intel-wired-lan@osuosl.org>; Thu,  7 Aug 2025 06:03:26 +0000 (UTC)
X-CSE-ConnectionGUID: pYf4FhCiRb29UviWIKN+Lg==
X-CSE-MsgGUID: pdtBM3f8SL6LMT5KCtD5mw==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="67953664"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="67953664"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 23:03:26 -0700
X-CSE-ConnectionGUID: sJhf8RG+SguyF9lEu+YvIg==
X-CSE-MsgGUID: Juvb0qoPQWOwONDGhs0iuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="169220853"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 23:03:25 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 6 Aug 2025 23:03:24 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 6 Aug 2025 23:03:24 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.72) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 6 Aug 2025 23:03:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R7fRwVQznA1v+zyqI8RaY+pcXFLWV3dqKr23RwX891028D76iNhtJHWuQR56k3RyC/rBOfZYGyC2X1SbQbVj0y27fyWLxlEgf2YC1lxi8fo5idUJtM4V4i371ZgpTQ1I7h2kFCn3OBu57RkyospUyqc6QhbG4h5H/uKEy4AZwQbzvDhLFer/OKl31BuLD64Rb9Sv70aKYMp9z6ujy0NWJ3WaCxNKgiOQjErJdbfQg+2NOTiXQWfmgwncLhLHj71/y7G2juE693QCIH16iBx60zNO8TZfjI7OFh6IsJzx2AM4ts/FSQxTZ6SgqdaWbmHx2R0NJ2InLjXKf1KPD50Izg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hoHHLsaUV3SlcjlLWitCIRJHY1FumSKzsR3z3qyNOxs=;
 b=b0zr5vYaBtjncCq2ck6j+sV03YBqCBk2KvyqncPWZoQWIWDsdsNmCWGYfql2KpLAjz8IfFoO13Ax0ucWSbhJ20aqCiLb7Ic8niVLB00QoHNR5K6qa4lRaenfFk2MhnVm0q2cWdgt0xPyVt9dfxlsk9mB5Z5czuqz8iZvzOsdX4wVTCKWcQ3kPaXRKJXL9j6DzMc/FIkipDs9OJMs588Hd0ON123kJmSjs8ZZkRKWyX7cvrRNNXxZO3xQrn6/PK5Z7NEroSWy7gcUcdFUJR9vfkgrqBQwIXNC4HxofF1ZaDht2p+ZpwIOLCiTXpyAFEmHtlEZR88HQ088e2zzr65iiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SJ5PPF2F7FC4EE6.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::81d) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.20; Thu, 7 Aug
 2025 06:03:15 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.9009.013; Thu, 7 Aug 2025
 06:03:15 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
CC: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>, Mikael Wessel
 <post@mikaelkw.online>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2 1/1] e1000e: fix heap
 overflow in e1000_set_eeprom
Thread-Index: AQHcB1CCLh/Y70ZG9kef5wNva4HRsrRWszFg
Date: Thu, 7 Aug 2025 06:03:15 +0000
Message-ID: <IA3PR11MB8986DB7F581519613786A9EBE52CA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250807040505.1716056-1-vitaly.lifshits@intel.com>
In-Reply-To: <20250807040505.1716056-1-vitaly.lifshits@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SJ5PPF2F7FC4EE6:EE_
x-ms-office365-filtering-correlation-id: ca79e72a-e916-46bb-ee88-08ddd5781934
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?UxyBTYQwegKgiI/bBkdD3UAQr8QB9GJ9O4uQJdDpMMSQrgbB3NMsP1uGUFK7?=
 =?us-ascii?Q?MyqCFHdG2GDMlKwd3u5F71Zphjto2nlUAHwfg20/ogHIZgjeWuFu+jS2Esuj?=
 =?us-ascii?Q?+CxNx1WG/rFMc7MgM9SX6ZtcwVmXvCepTq+kl+/yABhb2RndBz9N/JoyhkVA?=
 =?us-ascii?Q?EUQx89mHiSEmEeeGQHkKutgvTLj9VYUIjww0c1GvjYhxPtaUU9ZlJzhoiUJr?=
 =?us-ascii?Q?Jr7fuaTiU+uNOCSc3Y6QJfkjvZ8OIqryumgaqp5ZG2aDG1h4XwqXloQq/qDv?=
 =?us-ascii?Q?Cbv9kQNpLMchAWrsrvODy9BoRPT2ue5Y4n3c/5inPyLs2YyvB5VUlAIsMy3b?=
 =?us-ascii?Q?WUv7JE2ZMkOkw7rzvLzoKVVwYX/iOi/1YPGVBG+BOVyRaMc8l4nj10sjC+gL?=
 =?us-ascii?Q?5ciBpAcjKLOe9SV6IayxNEM9t0rKqaRTVaZOMx/gx9D3Mq6HLFXWH/3RMox1?=
 =?us-ascii?Q?4U7jpyNiNv83ptLzkRjZxGsSz5z58ksvGNhCNJNbZSITs60pS5bnvO2UGnG8?=
 =?us-ascii?Q?W0PwrgoWjGLXSczowHl3XzWpJaK+dIjwvtQkR05Wyy8gFm7p0ookPujPRwV4?=
 =?us-ascii?Q?rQ7kij47NVflhY3MV7VUPU4l0XIZpnaqwQULkmGBCSIEnKeOVNx/gp/Mt8i2?=
 =?us-ascii?Q?rEthCP/fWp7gEQU9T5OgcScgCSPOR91JjqgUElO39oiBM2thZVcddrvfr99A?=
 =?us-ascii?Q?+PjwZBsXEtDlsYIIFaN75/ruVjVua1NbGBbZ1uGdniKSmC089YiNu5QQ7r8S?=
 =?us-ascii?Q?IzI+j050K8LAepAumhz00jHVTZ1vbMUG4MArTnU9AhIfYtb7mbO7k7zDX3sa?=
 =?us-ascii?Q?NCLGTDCvjxkl2nJETOp0ShKMG7qrf/ivQaed+J/H6OR2zg74K5j10lZN5Fyo?=
 =?us-ascii?Q?Whwxnk3eYB18bbrKp+YlYy3d20ciyc8FRdozHXV8XJHwwvRsO7EtYi1hOnST?=
 =?us-ascii?Q?RKQ+xz3zCtKq7iPseWeOjIQz0Z94fpx43s8NgRhffHu/X2nKu3mEAg4cJ/aw?=
 =?us-ascii?Q?28DR6FovyqqLxW1rNIYQ6IHRNfIZdQOAiAjRxSWntEnZN8E2Uwlibdktme87?=
 =?us-ascii?Q?b9x2o6p+Q7SKkcSNBrSg9LEzG9RA7UA4+evBKmP/I5un39TtvdTDkCUkuuif?=
 =?us-ascii?Q?/HKxEcsOxZG8uUgvJnkKlFvqC807RZc9QZlAvT4DZhMtP45x9zqb/k4zCdlA?=
 =?us-ascii?Q?h4FJ6lNe0ZoAboLMjhL4pOjNsf2/QBbQk9BnHAnXEgJoYvCvxCyDDzbxHruK?=
 =?us-ascii?Q?usz3cMAdJCA4ksJoSTbEEerVwcqLocrX2WTL8ssIAq+KL8cmQUJcKhTFQCzV?=
 =?us-ascii?Q?zqpOVS5gusffAjPX4dAhiOKjcMzZ/+dHRhYCmBLg5+fMUs2VtqRWrgaQTXjE?=
 =?us-ascii?Q?DGeqILwoS0cQTV/bWEM9oIaVOcXT+d7R9gdm6goxT6jfMCUYJ+JCW/ZozJgk?=
 =?us-ascii?Q?vQSoQdr5HUlA9SdAk2n9jWeGBfGGA/OTv2Iia9L4sXijAxQba+508bMJRxS0?=
 =?us-ascii?Q?zXTvakLN3k8p4I0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mfPbh+S+yIKHHLGLQtWUl1a1/x4VKetm7fW1upxSwYmG67WbjUmD+wXmmy+9?=
 =?us-ascii?Q?r6Jlw37KsUezSsRs40iJk87fxPYppi2uk6lAOYJRtWNsJiwNNkbuHSIw1ekI?=
 =?us-ascii?Q?cISIp+BGkBxS0KMyaAgVLVTTSHlgC6yjT9eZXg75CfA3m84QwBt7KsZW36YF?=
 =?us-ascii?Q?K1t/4R4GxY41t9QfOZeV8ItK4HsIvfeis4Pf7SXRJyLZjFvQ59Wm49onT9p+?=
 =?us-ascii?Q?W/28YP/rhiATjIXo+vV/mQDMgcrQ+bOoN9H1m0yDhqLzMLQ09lhhwhdE/+Ud?=
 =?us-ascii?Q?8btjw+sRutIGhSXftYGjK1M1jEgf9m7PLAowvYoTNLsRNM/tD/Nka2jrnkQl?=
 =?us-ascii?Q?0DZMtF7GyuVewIg07CgjRbCe/HS4OFVQx203RWmqq0GClT4shrHzPFl+vnxq?=
 =?us-ascii?Q?Q3Y9E2otOD+7gga6eA/GB9YXK3YOMOuVl1XPDKNY78ySvBmWjMSRq4VmpuEW?=
 =?us-ascii?Q?N+NLcNwJQ7fIveVbzOUlFbA03dbS0joxWcygsoaX1v5d4H/4vNC7IHckJo8g?=
 =?us-ascii?Q?6nwfoP2Wp0j84SPQaDtBiMFRxZ8S9qiiuoZaNzgHYiGW7jBKWKoJiLe/epQz?=
 =?us-ascii?Q?NiNygxmI5KOboXJgiKihaGfN+WWftMlxz1ezcKwQ0TI9xK2lK168rO74rDxx?=
 =?us-ascii?Q?xxCFsCEdNNbBXXL3oIYkwrajomy9W+PreeVaJ00O5wEEwxWIoMuttingLzCf?=
 =?us-ascii?Q?KiQ7BgWggxR/q746thnuThRivRWav0ePZYhPDiCFfd0uTpqOM7WNxujBnrzu?=
 =?us-ascii?Q?dQlX5VrEjOYUJ4X/mlFzTBwiEq2eI0R3ub41dzm3zGo7y/n4ENfNwD5ecck+?=
 =?us-ascii?Q?Xb1dmkCI2HvziXgGBQOLc8jScFjd1r5AEzXjuUXblqqwRlhkhKU+pbEtV0zv?=
 =?us-ascii?Q?iSsaZnOri1yZubLqfLIbN7jyOzp3AmuZJ6pSMLt4IjDb+Opmd1hdAvrU/jWL?=
 =?us-ascii?Q?pQhJqb3NeGz408zj4mJ3KzUDqr5iY/uAR5RftyeZtyhLsYqmFPU14ydFp3xK?=
 =?us-ascii?Q?1QNIh1rI8w/hMGj18iG8R+F6VOKqdHl01JYMQr5KTKM/59BBf2lDve1dNwnu?=
 =?us-ascii?Q?UxkHbnp+cLgykWCxjB6OHK5bD8XGhEt4yij8THjc82O0GYjOdnfaFbJ4Lcym?=
 =?us-ascii?Q?gYDPkH3srKVYML2R9ZH+yUcXAk2WPsovRqBcyeroNLnymh2F/U9d8GAArXQa?=
 =?us-ascii?Q?ro0M3h8o76jCVcqmvAFZ8hyOCchX/iCOePSdTFCzgjrU+0/8aqzKkFrIJIUT?=
 =?us-ascii?Q?hGJZ0zgYZtd84gXoHwlRT67xic/PubWWzLX+sqwxGbvaYEGV3BJFjqPq5+Q+?=
 =?us-ascii?Q?+kvFmh4vf65sRSIRzDgdEk5RV7+GEH/8JxmjoGggtcvvAyOFC7FQ/4iAAA68?=
 =?us-ascii?Q?477AtGFYpWfk/FyA6P8nl0L5cnELnnie6dxTlTeNdBfwl/XTwpRdcVGApGBV?=
 =?us-ascii?Q?t1ESeSpihh67v/tPLkC5GchNxah3ZfOgEWFdYGhSFcDPA+e3Sgvcc8dhLWKj?=
 =?us-ascii?Q?gTVWDQ4/ol5GYM8My7ZNoS6+TEtzUadyQHOL6FjmbvyEXpf7sa3GRlv5zbn0?=
 =?us-ascii?Q?+zLXeC634hvT5EzXA2O2rjpqYichE12KK+N7rU398r00xOQX92R/f/nnJ11V?=
 =?us-ascii?Q?Zw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ca79e72a-e916-46bb-ee88-08ddd5781934
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2025 06:03:15.1977 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9yqNHV41XV5NxLXHTTni97kDOs5IbdOFOWYj//s5h7Wj9ywgz9vBjeLwr3DDKiFiErmgThngPG2SJl3Qiq6Mith2q+rD8mtfZPyvZlnv/nc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF2F7FC4EE6
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754546607; x=1786082607;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2BrtRamSmbtKKa2tT37xDC80DRu7nFRnjIhztSYiXuI=;
 b=K5MtMaEiQVIpQZveJm++ZLEO+7VDXvTNE9RZjmxpssmZyzT+FuOXg3zz
 JgNudPIa8h4j/3WrHmSplExtKxOmYgPFBqL3GXqP8AC8SaPkwQoG/C+AZ
 g24bm75WmqSMkZSN0ponHx/cFo12v+iAc01zcNSZ9nqjjGHI1SnD+knW6
 AyiGDZty6MeWAmX7QRM3xdzC+gMjrEoyn+fGVuQsLFJhuejJ9GTacgtck
 zACDlTSfhLDzjbg9BWll6tyPyFmFs8cYkuX/1g4zHr1P7oeCpfMr3sh6Y
 4by6dJDsGd4ttFDAcVL8KxYNXi9nnfQRm8SOlHr6tbQ/m+17+EznPx16Q
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=K5MtMaEi
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/1] e1000e: fix heap
 overflow in e1000_set_eeprom
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
> Of Vitaly Lifshits
> Sent: Thursday, August 7, 2025 6:05 AM
> To: intel-wired-lan@osuosl.org
> Cc: Lifshits, Vitaly <vitaly.lifshits@intel.com>; Mikael Wessel
> <post@mikaelkw.online>
> Subject: [Intel-wired-lan] [PATCH iwl-net v2 1/1] e1000e: fix heap
> overflow in e1000_set_eeprom
>=20
> Fix a possible heap overflow in e1000_set_eeprom function by adding
> input validation for the requested length of the change in the EEPROM.
>=20
> Fixes: bc7f75fa9788 ("[E1000E]: New pci-express e1000 driver
> (currently for ICH9 devices only)")
> Co-developed-by: Mikael Wessel <post@mikaelkw.online>
> Signed-off-by: Mikael Wessel <post@mikaelkw.online>
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

> ---
> v2: Use check_add_overflow for boundary checking
> ---
>  drivers/net/ethernet/intel/e1000e/ethtool.c | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c
> b/drivers/net/ethernet/intel/e1000e/ethtool.c
> index 9364bc2b4eb1..2bfbc7fd9559 100644
> --- a/drivers/net/ethernet/intel/e1000e/ethtool.c
> +++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
> @@ -550,6 +550,7 @@ static int e1000_set_eeprom(struct net_device
> *netdev,
>  	struct e1000_adapter *adapter =3D netdev_priv(netdev);
>  	struct e1000_hw *hw =3D &adapter->hw;
>  	u16 *eeprom_buff;
> +	u32 total_len;
>  	void *ptr;
>  	int max_len;
>  	int first_word;
> @@ -569,6 +570,10 @@ static int e1000_set_eeprom(struct net_device
> *netdev,
>=20
>  	max_len =3D hw->nvm.word_size * 2;
>=20
> +	if (check_add_overflow(eeprom->offset, eeprom->len, &total_len)
> ||
> +	    total_len > max_len)
> +		return -EINVAL;
> +
>  	first_word =3D eeprom->offset >> 1;
>  	last_word =3D (eeprom->offset + eeprom->len - 1) >> 1;
>  	eeprom_buff =3D kmalloc(max_len, GFP_KERNEL);
> --
> 2.34.1

