Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EEPcINvQGWoFzQgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 May 2026 19:46:03 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D70BB606C93
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 May 2026 19:46:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6F42841DFA;
	Fri, 29 May 2026 17:46:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BnQweTzFCJwz; Fri, 29 May 2026 17:46:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C202E41DFC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780076760;
	bh=VcpPyoBGkfAZLXs1smlbXXxXnod3KC1ib3KD4vwkId4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=eRG71ymd1asEHj81DDJVXB+GDz6YUGECCzN/+1zx+4sgu+ZuF+oSV5ohXGzdU0BEn
	 ExoyqMGFwhDHS5aR1rypq9rtZFkPqqK+XZpzq6kbaUuPag0faT+DRufzHvkAMxqr0C
	 mX9iKl3j7zmpWNdLvFt3wKHJWozqFSFf9t72msl9C8hD7TV8PYAhX1SelnHADFe5i2
	 0M/kPzUwyaFWNlcLhvHOYVDoGn41PLkTODP23iAEW9mz2wIlgjJv7RivacrWZjuKgW
	 5oL4MH8omn/mTeDl/c5xL3GSGfq8mTFGA2Ws881TeDcivZz5asTC+Tqc9XLMNqWrEL
	 xyGblnvODMlWw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C202E41DFC;
	Fri, 29 May 2026 17:46:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 21C19F4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 17:45:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 021AC83A9F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 17:45:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xBCz3tDHrLrl for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 May 2026 17:45:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=alexander.nowlin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E3B1083A8F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E3B1083A8F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E3B1083A8F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 17:45:57 +0000 (UTC)
X-CSE-ConnectionGUID: mjZ0wJhFS2WoZ1g7TI8H2Q==
X-CSE-MsgGUID: UTFQ8YGoR56bzplTygwh7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11801"; a="98508989"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="98508989"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 10:45:57 -0700
X-CSE-ConnectionGUID: xKzacnVgS+K9x4FDJiFykA==
X-CSE-MsgGUID: iqjpZKNESHi+vZgF99F1fA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="240367700"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 10:45:57 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 29 May 2026 10:45:56 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 29 May 2026 10:45:56 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.46) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 29 May 2026 10:45:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=quhx3GxUU9f2vGsgBggeYc8qujJLgoBcv72G4zq3IUEHcl58VxP9yyoJAoHk9f6X29RJ+gTcK5oFpffJAgvt08Zj48jO7gFERSwU6oItPPWaKTHD+eGuB3zIHlvZdoS4bETHALtd+mpy7FjkqcX9zZYX71uwc2XwwWYCc7qN7rj9gfusBP855kAQ/ao54335Yo7KiPLsLT74d0HcOL6C2PAG49sl43tnMXZtnQ55MQCrPnPFs7BQAz/cX6g6PKBUA8hQqeP5uMSHxxWQilBMbQrpiSq2GaVU/63AZDoh5FlXoI+jmBEoQ194Hw8SjOzENu1Kjh3UFOnD7xU2RIiCOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VcpPyoBGkfAZLXs1smlbXXxXnod3KC1ib3KD4vwkId4=;
 b=PweiL3AFSb2QY4HfjIiv55bmS19wO+xjHB61QscNbpaW2Tvzo+dkqcQstDSEc8Wm8+yUJpo4bW1Hk6kYMYfEb3nMHzfwq0ZWZmSxD8xybizrG4siJAxhh00OH7x6z53kcnqSzpuTfPZbp39uXkq8hljfnC3SVeHBhuuzvHxpdXn/6pVUinE1/p9N/uRJxeVVvpKHsl8H5Fy/Uaw4myn+vjVR2MKMWciIoaVALHpK/U+B+tPSi7YlYt7g6DD4gCihfNIhsG8HDYi6NmU3mO3WInAez1Uhzbb1EkQ54sDANyh8wUU6XRWcxlFZylVutwFoqBTTFPW9TxAo027OxTkG4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV1PR11MB8790.namprd11.prod.outlook.com (2603:10b6:408:2b1::16)
 by IA1PR11MB8173.namprd11.prod.outlook.com (2603:10b6:208:44e::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.15; Fri, 29 May
 2026 17:45:54 +0000
Received: from LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a]) by LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a%4]) with mapi id 15.21.0071.014; Fri, 29 May 2026
 17:45:54 +0000
From: "Nowlin, Alexander" <alexander.nowlin@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Penigalapati, Sandeep"
 <sandeep.penigalapati@intel.com>, "S, Ananth" <ananth.s@intel.com>,
 "alexander.duyck@gmail.com" <alexander.duyck@gmail.com>, "Cao, Chinh T"
 <chinh.t.cao@intel.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 07/10] ice: create ACL entry
Thread-Index: AQHc6SB6xxsAX9lMMUuMC7/28g5mkbYlU1pQ
Date: Fri, 29 May 2026 17:45:53 +0000
Message-ID: <LV1PR11MB8790BC8B18AD9B4D90D1E14D90162@LV1PR11MB8790.namprd11.prod.outlook.com>
References: <20260521115000.4637-1-marcin.szycik@linux.intel.com>
 <20260521115000.4637-8-marcin.szycik@linux.intel.com>
In-Reply-To: <20260521115000.4637-8-marcin.szycik@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV1PR11MB8790:EE_|IA1PR11MB8173:EE_
x-ms-office365-filtering-correlation-id: 322861d1-db91-473d-746c-08debdaa21ad
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|22082099003|56012099006|11063799006|6133799003|4143699003|38070700021;
x-microsoft-antispam-message-info: bjpsIlJsqrNqYMjWdP3G3aEZfNyv7kJCTzQocJWsPCgCYAR6L8f/QcTuEfk0xeRnMdgVDYpzr9nz8cvGxLCDzlT+QrmP9mXR91flza0jLq43Ip10GtXiHbzqvuNw5ofk89+hqJjPLGLrvt3bOuhvOL+y/zEJtqpTwUkPnfrDvFJLgMwRX11jk+70M1RNqLw8x4DtV6TNyZrHs6i7uMGpDaBLvO1p3atOqcDRd0OkDCPHNunu55RP0PLUCVCvuxSd5cS8JdnVx6ZHnEGzYBKh82rYAeMw+vZVmEPdV0aXnQDoF748hjRoLdOw3cTzmRWpMj/vkhfU1ZOKQ3hrEfqzbEqB1LRqgFpqGWggkXAfcWblc2Bg63mEnAWMygDClCKvFd45Mb7MPkm2COD+gzpPpfBpr4Mi/drIOQzsXL3hI2+/9Qgjiim1ahUjYu0rB62tDSr96hmKWdSJJdzg92BTaIPpS/KbJMjFWxW7w9fCu8yqMmiEwsABXKirc6Q+q6u1IyVxvKikWnmXbZebFq1MU8RrP2UWO6MrFFXfZvh61N1S0GifWPlaS1ZDmH9detM5QJnDBN1wz8ppvts2xktcTrY5EcEPANcH/WAhta/0g97BTB/qZLf2jucvQVjg7+QUgur/8HuZ2d+QGYZyKH19tGPq+6SOJ7gq5GIxNoipc5Xw2HXqnEav6G+SrXiGemIqyJxyBHGPFcTJqN/r3BAvX2eoPoQW9XVXEa6QopqMPbYz/AdygQXsjq5/TVwEFSZS
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV1PR11MB8790.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(22082099003)(56012099006)(11063799006)(6133799003)(4143699003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HtgS/1j/Emg4CqaByfj3Vtvo1Odg9MtPpsUrBKcvoPDMDIa9V3CfOKsLT8E4?=
 =?us-ascii?Q?tZefsCIN/7tkNKGUXGSbHnyBbFpoTcBV40U/kSplOKwq5P42fpb26lhA5DQf?=
 =?us-ascii?Q?mfDSFjSb1qjSke5jFA+EIWm8Vfir/kh7wtODQETLhjjtWM9l/dN7b8+Igeg2?=
 =?us-ascii?Q?kyNhnbdOMygBiJJhSD8DVPpBuRFz+sTTNmencRep1EIRMk568UJl0SVDA7N7?=
 =?us-ascii?Q?iS5daRdAUWooY6/6vgiQnMFtZiup8h5qhJtpdytDPxaTJ+AWEyUq1eWesYWo?=
 =?us-ascii?Q?wvparTx5tDTKajyEII7IHSbFXXWWkRKTY5Yf/zUItgRR8TXbBYHKO4wt1c+M?=
 =?us-ascii?Q?CFqznCWr4P+5oHx1xZn6fTTwFHdrDqD3CPVpLrwiPqU14v/lzwD52tjtI5jl?=
 =?us-ascii?Q?Tx78DnHsk9onLKNsHTv/TQcfwZlAhFNy1wJr1TfB5YlgSgfdWGUPKu6s4Q1K?=
 =?us-ascii?Q?6dkcbhkgZ9qM3AB8V892l/yTXa9uz/pEL/6Bo0Qu9bCQIWiSwFLgNNzqcrP/?=
 =?us-ascii?Q?rSRF12D0rPNXYEKvvSM93WUnR/aExfIqUhWmQv2Ck4P+As2eeooGYqZSbXu4?=
 =?us-ascii?Q?BzxWfk4ptbmKfuy5HQSd7/1XYPAonNz9gOiQ3/dYct4hiJyiEU+HCW61Mxa4?=
 =?us-ascii?Q?MGMAnO45swJiLiTnmwsrfSDTvCBhm7mIu27+msPhHuVnU3Hru9jJNX5SnAnk?=
 =?us-ascii?Q?jCbtKZqCO9/yQneVg9gAQesOPN6jPqF0J2xlZXhk21ezYEwQIxAlYpta+uhi?=
 =?us-ascii?Q?pD36z6jCguQWBl9Jic8kmSRM4JdBv47gAp9GG9dbObpkN4KTJ6KDwAoBw8ZD?=
 =?us-ascii?Q?En1U/csEtLHuh9TquuWJjrOItxjt50EPSONvJhMAHlPrD7AT36HRHRqQdX5K?=
 =?us-ascii?Q?eHsXglUamM8bUqpTRTjbIlh1gM7eMe5ckFe1lNk5sJKuEipaS9fDFNKplcN5?=
 =?us-ascii?Q?JnuwiCY8eT2o5IQUNLBSuuY4Q82MSVpvt627tsJBEvh/u2+2kaZq3cJEZzsL?=
 =?us-ascii?Q?GVPm5tkFEIgyE+KNHuUHxvgYSaDckrYKM+BXjZ1XryeEvtALVT69lWOYIs9L?=
 =?us-ascii?Q?kmDtYz6s2ix8CHRfM1wyCV9hl9y4PjwGcRh1ZUEaBJrj4d81cHCkBfV7VADg?=
 =?us-ascii?Q?MJ3Can8uh8ZNACTVCz1IJtMLlW/uKQWrCwwEVJAxbaDLxXA/qE+RA4XvF0Be?=
 =?us-ascii?Q?5UhNb/t+S1AR/3bavLGznrE4csTwFQ1aplI8UayDLxPxCQxQbTHYw2ntmS++?=
 =?us-ascii?Q?jJzj+HdooSFaxtlCHD7OiriqjW+h0nKdkqEHYll2jzXfBYBe1LibpcmElRdS?=
 =?us-ascii?Q?sgNdAdi63ik9lGRFUEsVH1eJkonQLZ6qnwK5iHLkkArWqec6qhtdT56MuA6W?=
 =?us-ascii?Q?n9firbPrzvvRmDk6teyPhUM5xYXHjKlO7ccpleQs6rOtYMPTFpOQ5kFl4EjW?=
 =?us-ascii?Q?d5QJhTimeY+aDztc4ZgX92GyV4ZyXlJPpqCnaOmq1UX8k6t6ZfmxR4fQt4ST?=
 =?us-ascii?Q?QnZC7Wf2VWswXYaysnf6HgLsic6j5Ia7gySVcFcVpAYh2fhfgnBMbwX190TU?=
 =?us-ascii?Q?6dj/5fVlLXj87NF9gDiml8WZ9kwwZa52l7OohpqsTCL8KqlmFs5qBAOR8i2b?=
 =?us-ascii?Q?poKo5mJv8N70E3twQfLm16OcTRUsLpCmAjNMXKBsjNrq55yauu4fCgTxqbeg?=
 =?us-ascii?Q?itgJzwJbwlcBqoOcAM5fJlugj/Pwqprhr6klVJaudlObjPDXx5C4+xhcdPbq?=
 =?us-ascii?Q?SKT/cxrEsw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: SYGmdYbCsDYMIKwhwkiVmXI8M4x3Iz4vJqn2rBdcyW7+WgJbeGXi0V5uI6mkB1jDGGGW7PultvGB7S2HUbShjolVV9JolVFIkSxEkYUKb1QXSFWwp9QbcdSBPUKKoeL7WrKnsuPW+YqcQUu6g3Fkz9mnHivB0i2XQksSfw5oyyvNSuLmhUnSUN/I4hE9UevY9iP+MdXJ1Q6au2aPWdP7gM4XgvYiuLA5VEkBetcNqhacFtflZpfYRdHr7CSBPEhtR2AvGt3+uxNPWdwxE95WqV+YWYfYQYHFMmsJBJxp6Fo3B97WnoShQNSqyJxYLKq/rcBdNse2tTMzCPs4cfB8LQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV1PR11MB8790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 322861d1-db91-473d-746c-08debdaa21ad
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2026 17:45:54.0076 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lA0kiu9bfi4AVrzZ38A7flET6NVYTFk6tVQ7iaU7bTpwccbsY9QFNYvC3sO8ywuMCuW6KPNerHQ3L/ngiED7FnytywquzOqxVgPqQIa9ReI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8173
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780076757; x=1811612757;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MRS30CXDZSLS4wOcTO4U0R2utuio6/jAhrpdQELwf+w=;
 b=MpJapfc3uA9hkRCu9oEdMl20amWQ/PFGv2GZkRH7LyDQDHv2CdsEASHv
 mQgpLYM6ZqNeA5PKg8/2if5BpuT0r28x3/RNtCx2EZ5ISWr2WyeaBLcZd
 +7TsgcP6M6BF5KJkFRmzDab4mudt80mJF++1sQWSvt+PvgHa6eSK2AIYW
 xAZsKo73stDf1ChqFSuuRFB1UZNAk37nTWiso2Cegy7nI5QuMkfmhYKp8
 CZ5gDxqtJw37ZPeEOOekkq3GQQtn7haTSc5JbyWTjbjf9zqE8KhSlN7S8
 naP7SdOpixicRwCzhzrp/9QPFd30lkE8SPQK5Hgu44ZmDZu+AqtW8rQcZ
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MpJapfc3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 07/10] ice: create ACL
 entry
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:marcin.szycik@linux.intel.com,m:netdev@vger.kernel.org,m:sandeep.penigalapati@intel.com,m:ananth.s@intel.com,m:alexander.duyck@gmail.com,m:chinh.t.cao@intel.com,m:anthony.l.nguyen@intel.com,m:aleksandr.loktionov@intel.com,m:alexanderduyck@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,intel.com,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:email,osuosl.org:dkim,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo,LV1PR11MB8790.namprd11.prod.outlook.com:mid,intel.com:email]
X-Rspamd-Queue-Id: D70BB606C93
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
arcin Szycik
> Sent: Thursday, May 21, 2026 4:50 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Penigalapati, Sandeep <sandeep.penigalapati@i=
ntel.com>; S, Ananth <ananth.s@intel.com>; alexander.duyck@gmail.com; Marci=
n Szycik <marcin.szycik@linux.intel.com>; Cao, Chinh=20
> T <chinh.t.cao@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>=
; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v4 07/10] ice: create ACL entr=
y
>=20
> From: Real Valiquette <real.valiquette@intel.com>
>=20
> Create an ACL entry for the mask match data and set the desired action.
> Generate and program the associated extraction sequence.
>=20
> Co-developed-by: Chinh Cao <chinh.t.cao@intel.com>
> Signed-off-by: Chinh Cao <chinh.t.cao@intel.com>
> Signed-off-by: Real Valiquette <real.valiquette@intel.com>
> Co-developed-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> Co-developed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Co-developed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v4:
> * Adjust to using struct ice_acl_hw_prof instead of struct
>   ice_fd_hw_prof. This gets rid of some redundant checks and an
>   extra-confusing block of code in ice_acl_add_rule_ethtool(). That
>   block was storing entry handle in a VSI array, but only for first
>   entry added on that VSI (in ACL this would always be PF), so only a
>   single entry per profile. This was also redundant, as entries are kept
>   in prof->entries, so these VSI arrays are never actually accessed
>   again in any ACL path. All this nonsense is a leftover from reusing
>   fdir structures for ACL, which need to track some ADQ-specific stuff.
> v3:
> * ice_acl_add_rule_ethtool(): add a check against illegal values of
>   hw_prof->cnt
> * ice_flow_acl_check_actions(): check counter action type with
>   ice_flow_acl_is_cntr_act(). Previously only ICE_FLOW_ACT_FWD_QUEUE was
>   being accepted in the first loop, leading to an error if other counter
>   types were used
> * ice_flow_acl_frmt_entry(): set err variable when alloc failed to
>   return correct status
> * ice_flow_acl_frmt_entry(): set range_buf =3D NULL if !range to avoid
>   double free in error path
> * ice_flow_acl_frmt_entry_range(): introduce a temporary variable
>   (offset_val) to copy data from buffer with offset. Reading it with
>   cast would lead to byte swap on big endian
> * ice_flow_acl_free_act_cntr(): flip condition in loop to reduce indent
> v2:
> * Fix invalid profile ID passed to ice_flow_add_entry() in
>   ice_acl_add_rule_ethtool()
> * Fix uninitialized cntrs.amount field in ice_aq_dealloc_acl_cntrs()
> * Make ice_flow_acl_is_prof_in_use() more readable and return bool
> * Add ice_flow_acl_is_cntr_act() helper
> * Remove prof_id initialization when it's immediately set by
>   ice_flow_get_hw_prof() anyway
> * Check if src overflows in ice_flow_acl_set_xtrct_seq_fld()
> * Adjust error codes in ice_flow_acl_check_actions() to more reasonable
>   ones
> * Add ICE_RX_PKT_DROP_DROP instead of using a magic number
> * Reverse condition to decrease indent level in ice_aq_alloc_acl_cntrs()
> * Get rid of useless variable in ice_acl_add_rule_ethtool()
> * Use plain alloc and kfree instead of devm_ for ice_ntuple_fltr in
>   ice_acl_add_rule_ethtool(), ice_flow_entry::entry and
>   ice_flow_entry::range_buf
> * Use plain kmemdup and kfree instead of devm_ for ice_flow_entry::acts
> * ice_flow_entry members are being deallocated on device unload via
>   ice_deinit_fdir -> ice_vsi_manage_fdir -> ice_fdir_rem_flow ->
>   ice_fdir_erase_flow_from_hw -> ice_flow_rem_entry ->
>   ice_flow_rem_entry_sync
> * Add missing entry->range_buf and entry->acts dealloc in
>   ice_flow_add_entry() unroll
> * Remove redundant checks from ice_flow_acl_frmt_entry() unroll
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |   3 +
>  drivers/net/ethernet/intel/ice/ice_acl.h      |  24 +
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 123 +++-
>  .../net/ethernet/intel/ice/ice_flex_pipe.h    |   2 +
>  drivers/net/ethernet/intel/ice/ice_flow.h     |   9 +-
>  .../net/ethernet/intel/ice/ice_lan_tx_rx.h    |   3 +
>  drivers/net/ethernet/intel/ice/ice_acl.c      | 183 +++++
>  drivers/net/ethernet/intel/ice/ice_acl_main.c |  57 +-
>  .../ethernet/intel/ice/ice_ethtool_ntuple.c   |  37 +-
>  .../net/ethernet/intel/ice/ice_flex_pipe.c    |   5 +-
>  drivers/net/ethernet/intel/ice/ice_flow.c     | 641 +++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_main.c     |   2 +-
>  drivers/net/ethernet/intel/ice/virt/fdir.c    |   4 +-
>  13 files changed, 1054 insertions(+), 39 deletions(-)

Tested-by: Alexander Nowlin <alexander.nowlin@intel.com>
