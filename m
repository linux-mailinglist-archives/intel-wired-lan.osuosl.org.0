Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id vfONJaOI/WnWfgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 08:54:27 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E74E4F2A7A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 08:54:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7703C84176;
	Fri,  8 May 2026 06:54:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OMVLCvKgWW1m; Fri,  8 May 2026 06:54:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E996684172
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778223264;
	bh=+CWIhAESsXXYOk0mDymTOEFow2UMVR+IvUizDn+VBRU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ttgFg8ehfMuRewXJBx9zuITZ3RA6EMRMBpFMwco69KxWqY3Lna1wuVHWcx8ubneXP
	 QxkxTgUaDZyjv78YW5bt0engiYUehwpbQTjFora3agezs4bU9L/ZuwLydA1r3QVvPH
	 kU2f1ZHKMxDx9C+BCeyst3XSBH+8SgFsLoR/NLFpCER/4UaA2VPXjQbBjIA0CjWzKf
	 ZWcQ8BtSlZqYHa/pAu3uipqDXvAZu/qjF28jNiSNnYKHKnB3kQfHTIpvP/J5hHejYO
	 yBftZhzX7PruHdX0CscB3dE7qxJIoSTMuF3esvWM0AE3UjTDFdVOPGl7fEKQDkVmKY
	 a2GZesOiuuGtw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E996684172;
	Fri,  8 May 2026 06:54:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 43805358
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 06:54:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2963540BFB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 06:54:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7oARSokIyBu4 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 06:54:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2F44440B6D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2F44440B6D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2F44440B6D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 06:54:20 +0000 (UTC)
X-CSE-ConnectionGUID: mYn568TuQ6e4X+5baVPA5A==
X-CSE-MsgGUID: Ib8/HJ52Tsi5LwuOJHP10A==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="89493819"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="89493819"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 23:54:19 -0700
X-CSE-ConnectionGUID: f7zNAO2GTJqu1bjd6F2Ezw==
X-CSE-MsgGUID: mUa05n03SBi3rntBsutJUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="236625182"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 23:54:19 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 7 May 2026 23:54:18 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 7 May 2026 23:54:18 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.1) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 7 May 2026 23:54:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WvTcR1k9in6b106vViHFu4WmSIcIebr9uaw8qWmPpaGNVMmheLW5B14XHfercFB6lA8AioQnBBH6X6/0hQabiGMZCvSj+38MRPLi1kPiInoTrlHAM2BoQxPiGhX4JOjpF61+1dpEd4znu5zst4jKlS8lsXcdow7zHs+kzA0KnbwXx4PKoVgQL2/jYVIka5Xuss6+QKunhoSW4AhBonX+qPXmLczHzGkIaPjPq+6ZGA0KY4ApmRZfFo+mWOdGEz9iZel9v6ODtXGLteF7rlgyJaXiiJTg6NKJZ1w88l6e4fPibrbzi6GEWdh/F8Em3GLhk+X78ug2VhjDYNHUVtUf4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+CWIhAESsXXYOk0mDymTOEFow2UMVR+IvUizDn+VBRU=;
 b=iRQc/asspyG4VpxifZeTKLrXpIVWMiMOCpvBJwRjFb+FSbEQkvzP6/qXxWLSABUhAqiZMJlPmeTCCmWPSu+5j305baqwgjtnmVFIVnEVJdAyrUNLCtnRSXCYK26dQSfhn2zA0Uo3klA2UAWu0myuJsWriSrokOsS57VQHrWVoS2RqLXnkI6X8krhUox1KPOhJAJSSlLAbJ6u2TEUhuUQdZo1HniM2Me5V+WsgMXjrW7Y9mVBgFxy5OfB75cipIII45hrE2vAIXZCvwUozY+wJbBj0zbqlCgHRBDWNS+q7oyNDiD7x/kxhdoNaQQdOHYPPX0S0dI1pYF/KfVVJ8nuHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6261.namprd11.prod.outlook.com (2603:10b6:8:a8::10) by
 SJ5PPF64191BB3C.namprd11.prod.outlook.com (2603:10b6:a0f:fc02::82f)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.19; Fri, 8 May
 2026 06:54:10 +0000
Received: from DM4PR11MB6261.namprd11.prod.outlook.com
 ([fe80::66c7:4013:fead:be53]) by DM4PR11MB6261.namprd11.prod.outlook.com
 ([fe80::66c7:4013:fead:be53%4]) with mapi id 15.20.9891.008; Fri, 8 May 2026
 06:54:10 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Czapnik, Lukasz"
 <lukasz.czapnik@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] ice: prevent integer overflow
Thread-Index: AQHcuCdCiNoo5CXh80OZSI5BsOf3/rYD/E1Q
Date: Fri, 8 May 2026 06:54:10 +0000
Message-ID: <DM4PR11MB62612FD9BA3F36CD37318CCD8B3D2@DM4PR11MB6261.namprd11.prod.outlook.com>
References: <20260320050544.422640-1-aleksandr.loktionov@intel.com>
In-Reply-To: <20260320050544.422640-1-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6261:EE_|SJ5PPF64191BB3C:EE_
x-ms-office365-filtering-correlation-id: fac15610-ee1d-4da7-cb77-08deacce9b96
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|56012099003|18002099003|22082099003;
x-microsoft-antispam-message-info: xfQFUDnII9XDxF9wuVlvJKrjoCUNugAokXP1ZYG2g77SY9y0OveCGDu16jZgip9fN42A2nNDHh77hDwhmAoCXfwFe57El8G3ZNufW4823bq6HadB9We93WoWADJZ30A2qaefNODblu5CKi0PO+JcFxwDmLNxXZ4lSJ00G1fOxWBIwp1V8LSNLwS/gut0sDiomJLVjPvLIgW5/OzxtbS+8lxVu/S2YQIwWBwoLiYLOFxqYy1vUl35UZvnZjdEjGE9gpwedCE0/gZZtuTP7KJOAaqHsXhehezCdSJPlUPrdf3dwg5/Xm0pHjrZX7b5d6zodCQgJ1bTqP6Uk94DeZgSuY9xEKEWEEjAC4l/uSNc+RI1w4tJu6C0WRYoYvB5QkObincffpz9VMt708I5hbQe8SsK2ry48wj6TbJ+xZQoXDFaf8G3TtSM4Qk7PU00oB6cnPHf7HNdHL2AmPkWNmxtWwmzREmctXhwCLSYCddCWnEwrX5Sgmr7YMsdh5+UkTmmQjvp6wDF7tLw7NueZK7lvDWFNVFB0RoyOHe7cU4/+bXO+eFkc868F/n/dbqSkaz4lhT7xTrK7XEuIwXUMQeenQ46/Qx/9GPnl3V8yK2QHtbIPvrzJxVMqMxMZKKuZnmLE0aqxtLjZ4RHpa/Fa1WPKbU1kIPFg7inJKGTfhzP2u20ZmiI+6t4oxj/J5ScqMVVcJhbq+/hUFy9oS3m0lNjfnBrPrs1mDqu+3u56FS8hby4HwQOexg6FXeGOaZRAmq6
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6261.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/iwZNwBFlRf/cHbGcJwTFOE4lQ9MexUp25clzj4gEEbXYty0qC9sEBCvdlPe?=
 =?us-ascii?Q?tA71giGQtOerM//ATzli0O8wLoUWJR2oxX7ICR+k/UQ5z36O3nqFZD/RuZoh?=
 =?us-ascii?Q?o0x2BHqOxj0fNbmkqBBIsk74Iy7h/dli4hBAJdK2PFClUpg+/Ala/Zw4RQPB?=
 =?us-ascii?Q?eZFdWHO1pfUm3RspeeNizqVXOEOqoL47l/Jlnb/MUMv3UMn5rODbKXdGZX7p?=
 =?us-ascii?Q?WqIHydVaBGbiAUplE14DzygmeUsYVhCHX3AxG19FrL7HkDh6UNvS3m6uw16j?=
 =?us-ascii?Q?1duu+FKrhD7uJ0vgQ6A1UjSq4tKgwKE3ZRIAn2EcVWm+Qd6pc852txKVheVM?=
 =?us-ascii?Q?QWbLvxPzbSD/hrYkmmbu1ekuMkfqjjRHwdq02k+ZsZUxKhqHrp6SWsqsmJyX?=
 =?us-ascii?Q?ypFYvtRRWEIaB0NYqvHpXk+uaQE2WeQuIGpKUXjtwWwg3w5kzj2UJzeUmGXA?=
 =?us-ascii?Q?vRnwMJhm/3wBKT//K0hiLYvOAqS33MjO5stBa2SyleLsSWB2ReiSxKi7IzCu?=
 =?us-ascii?Q?W2Y0xPpG84kjthIEzsixe+yenXIfEUkbugiLYmBlrNtH3+vwN2ih312ytq4h?=
 =?us-ascii?Q?vbp0B3f811Zit+iYwTqdlPzxor1XfGhldC4RxZhoyUwjxsv7glh+Zv5C49kK?=
 =?us-ascii?Q?8l24A9wD9YiivgrY7bikUx0ow0t44FaGqRicK0Ln1AOY4OaZkzsF/lzY8erR?=
 =?us-ascii?Q?ltifwn2hs6Zz/2P/P7E097bRJkyBhb0BHIPwxK933KlEVlKMiJ4520vHN7fY?=
 =?us-ascii?Q?OarineGAyefBD9sxfc7FkTCMN0hb9y9rCTpPk+/HTQxwLsVOKVi7mvqJ3qEM?=
 =?us-ascii?Q?8e721ncWAIdY/oM2mf/07rc6xALBNNLJ9rleu7sato9RWCZB6E7IeLwUXpMs?=
 =?us-ascii?Q?gHPN1ei0ZCgWDkGH8Oa+tk8KeybYDlqVi9K7t9PNHo5H4m1RIU6xutU4O47F?=
 =?us-ascii?Q?iWjFVkkMxkZrmsflmTsIcl8DabdW673kInlGrPEtzWPHemZAGY/e8zIGbrx0?=
 =?us-ascii?Q?f73JvnOCsxT4LrVRHtUtn2GJrnOV2jyL7S8Sx5qUI2Vm6/34FCPvcL0Ev/+Z?=
 =?us-ascii?Q?+TTEXk6RID5V5RCcbYYGwgna69/+ii8Ci1FqVcP5rBXTUXagXRmqsp5tV11h?=
 =?us-ascii?Q?tx0byp6tkzl2WSGsaAehgAlPuhddv7/UKAZ+ZRK49TdU2V4GtUDKf+KJNC8N?=
 =?us-ascii?Q?wOlPdjal989yu4eILsudChRAeqqOsRo0+uwjgZka7okwHBZf81mf6A4kv7gM?=
 =?us-ascii?Q?b7ZrqRa1I6n3yiQnmzqjTtepuCgJgqbxl82ffYXaSPBqDtK15vbdPd74iMTP?=
 =?us-ascii?Q?y8GUQgJMFpsh8L0h+Tj+jenQnMMUziN5UbXwRqwBVgCxy3LX1ARcPPvcujCh?=
 =?us-ascii?Q?XaEMiemebV5CX+hCuyo5/7wnSZPsJSu3bVWu/cBnAvvY2uD0lechnAlOsYP8?=
 =?us-ascii?Q?AV9IuVJarD2dVDMv+Js14vWtqxUk8Yi5lNvyom7Cf6OTrJGiOLBLUUpqsk3z?=
 =?us-ascii?Q?D8JHjJBiXmal/ZxWCXZzfxOd/6MiOvEFwPdyrk+PB7vg7gaWDKcORxYgWJWw?=
 =?us-ascii?Q?EW80XDrTGXyMDkpUs+iA7kcj4ur3I7TO0vN6SGs5zAoOmGED0HloRnNWG6bz?=
 =?us-ascii?Q?vuCKm+HyOx19jGUywFMDkDdI1lVZLoUM0ljj8nj8Xe2W6x2dJZSZMoaU3m+L?=
 =?us-ascii?Q?HdKHpj/g7VAjrz7xbgHMnWITm44Na0Lx6pyMOm/YC1Ob2OhX?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: c8nWDTmO/j71F0HhhAu63CO77C8blyCIeyMp5JHN1itkf8u4DElD3+abkB+ZJW3g+MJ8YUXXleon5JZCvIcnGleIJCNjRN2DTS1juUE9O2zTYuJefYRHE/AWiIpVLbg+6R7Co5hil1yNKy7p75MKx9CBEpJ/QDoMVFDUzq6/EvTJdUkcBGAuaQ3I6PkoR8e43fWgD/pJBGZYMgpEVlmuvI2qMQkDNZHMXBVNerM4ewQ9CEfchyb5TVmcP1ntNxJuWrd+ES5hFy9erQZRa/Q0SwIZfPpHVaIGrGWccyTH9EP9JXzEbbSl75uGQd6TFtQLD2LJNnCAbr7fjdmHOy8PbQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6261.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fac15610-ee1d-4da7-cb77-08deacce9b96
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2026 06:54:10.5902 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PxrLGc3XWXI0mkdYh80wICI5PceR4NAeHcFfCfSaOb6zsI5RC1UhSAHGLGtS2A1fMRQIfk4W8PN/2M7dxB3CXQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF64191BB3C
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778223262; x=1809759262;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uhJ6ik3mMhpl1K/IfZaqlWCRDckfW/uXUByMhtwaG1E=;
 b=kZoZtCnccqNjMl2B7RIshbu7ac8EP3UU0q7/rltObfRHAnQwBdx7cHEr
 mw+YzQIYSEw4Z6kJ7rVwwS2YX76nZPsJkkPnz/fTbtZroW3yMxQ9trbap
 7rA06sbQtMk5F/OouygcuR24sEzCqcTQhV7l7FqpDjD3glEeA025FqfoM
 D0P2TEwtse+pnwIjrNLCgoCDbygBgAmU8FRCj52jlyyk+/60tG51p1va6
 rHreCY9zVYWZV7P3ZG+gW/Uc6qMFZl099aYxUURVvvB72XcCs9prniPxs
 Nnp1qn9yOcZ/TSQdbWq0ZYDSlg+tT0LtrTeTRP3tn94siUbRcV5Q5wZ3j
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kZoZtCnc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: prevent integer overflow
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
X-Rspamd-Queue-Id: 5E74E4F2A7A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:lukasz.czapnik@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
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
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:email,osuosl.org:dkim]
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
leksandr Loktionov
> Sent: 20 March 2026 10:36
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: netdev@vger.kernel.org; Czapnik, Lukasz <lukasz.czapnik@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next] ice: prevent integer overflow
>
> From: Lukasz Czapnik <lukasz.czapnik@intel.com>
>
> In ice_sched_bw_to_rl_profile(), the loop over 64 bits computes the sched=
uler timestamp rate as:
>
>  ts_rate =3D div64_long((s64)hw->psm_clk_freq,
>                       pow_result * ICE_RL_PROF_TS_MULTIPLIER);
>
> where pow_result =3D BIT_ULL(i). For large values of i, the product pow_r=
esult * ICE_RL_PROF_TS_MULTIPLIER overflows u64 before being used as the di=
visor, producing incorrect ts_rate values and potentially undefined behavio=
ur.
>
> Fix this by pre-computing ts_freq =3D hw->psm_clk_freq / ICE_RL_PROF_TS_M=
ULTIPLIER once before the loop and then dividing only by pow_result inside =
the loop. The division order avoids the overflow while preserving the same =
mathematical result. Declare ts_freq as s64 to match the type domain of the=
 surrounding arithmetic and avoid a redundant cast at the use site.
>
> While at it, scope the loop variable i to the for statement itself.
>
> Fixes: 1ddef455f4a8 ("ice: Add NDO callback to set the maximum per-queue =
bitrate")
> Signed-off-by: Lukasz Czapnik <lukasz.czapnik@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> drivers/net/ethernet/intel/ice/ice_sched.c | 7 +++----
> 1 file changed, 3 insertions(+), 4 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
