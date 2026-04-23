Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OEXOBC3L6WnSkQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Apr 2026 09:33:01 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9141644DFFF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Apr 2026 09:32:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BED5C82166;
	Thu, 23 Apr 2026 07:32:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K8fUgEpAbeTZ; Thu, 23 Apr 2026 07:32:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 50E4A82151
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776929572;
	bh=E6CXIUhBV8cfyd07klsVouHtS8+S3+trF8JCL0n7GoE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=r8GVspo/fz26VdUecIGwVJ/PYrjLtj89Fho7gMi45FnlaUpaKHnkKErDSX/umW6at
	 NAvBKmopmLk5QpVz94A+mud4vi0+wzFvCNPnVrj6UEAS3yYKtG1pMdqJJfCpg71akz
	 iYWGz5H6b9TgBAguk5TgrvaBpl3H7NtcCnz5dX+hdym94ZraPw7e+dBSpLMEpo1Fri
	 el7XICqfc9ggeI5qyIm72xuo7KVmboLJvT9otUODHj00cPf2nQJz2djNeVOyQyY0zV
	 mJcwacECLkdixYBKf3nav2bI7CGJvpdVPre+WuLY/O4ZVJiBKdn0qDDKbogyKq4hFK
	 wsWyXcwZv8r0A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 50E4A82151;
	Thu, 23 Apr 2026 07:32:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id DC337206
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2026 07:32:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C102140500
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2026 07:32:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yocIkIRFRupN for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Apr 2026 07:32:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9F3B2404ED
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9F3B2404ED
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9F3B2404ED
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2026 07:32:45 +0000 (UTC)
X-CSE-ConnectionGUID: Pbo1NNhlR2ulKJPLDIy50w==
X-CSE-MsgGUID: jDepsPIKQTO4bAmUWvh2GQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11764"; a="76925775"
X-IronPort-AV: E=Sophos;i="6.23,194,1770624000"; d="scan'208";a="76925775"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 00:32:44 -0700
X-CSE-ConnectionGUID: SxSFvkvvTmC+oB6SCtYq6g==
X-CSE-MsgGUID: xLR2hSWWQdyuzTx9Q/ytKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,194,1770624000"; d="scan'208";a="231703890"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 00:32:44 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 23 Apr 2026 00:32:43 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 23 Apr 2026 00:32:43 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.60) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 23 Apr 2026 00:32:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FN/EMxPyggG9HHhdr0lV63bW5aMbopu3RHCeAUWertVRN8Vww4PYbuegnHAU9GxfNf5XGGwA7MdQWeIW8yVOebIDzbgRx1pEI3SWpIjJedXqVY0YTJsgSGKDZkH99wmHiza2UYStFzIm42bRojsmr56PQG86DX07UAGL4WJDj8+1p8gGl0X3Rl3bluyDzUdZGtqMUJXjcPoWqstgimSzHD9fa+rvcF8LiC+RUpApng77SIwtPZLXiBL7XD+llKU6KHfb+dbfxYJFh+QZ3EJj8askaML53ZfvwMvmCv+1uJvgzPNE0+wsg+zJYm06PghMdd7tjgHtQE+rhb9fW41UPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E6CXIUhBV8cfyd07klsVouHtS8+S3+trF8JCL0n7GoE=;
 b=a368Ea7BnABLcoBOzPrHR4y2vB3pmMYk61E1uBIhfICRFKxaRjegnh+1G9NYkwb2cMQPCPO/NPSZXI7Sk7hbenKamCabzzu0Pecezw8L+Udu5ifpBH85xZQeO5giHfi567waIRk758TeMF7smh9hi03U6aoCB7BvprSXD5sx2P7mlRGiS/5kQq+cfdpxNY1dxx0ZzsVmHl9NC4mMr4pEXFcsbcVRdIKEDkFUDUgRFqf3dJ8DfkIflqGjMMPiE7129rUD0/y+QPjAnD4j9z4rxn//uSM28x/iF7Toi30VoZ9cN9jk9eaoeLdCe8IyltwUlEUuIZ5HwOH+o/90/TgaVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by BL1PR11MB5240.namprd11.prod.outlook.com (2603:10b6:208:30a::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.19; Thu, 23 Apr
 2026 07:32:39 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9846.011; Thu, 23 Apr 2026
 07:32:38 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Szycik, Marcin"
 <marcin.szycik@intel.com>, "Szapar-Mudlaw, Martyna"
 <martyna.szapar-mudlaw@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] ice: use ice_fill_eth_hdr()
 in ice_fill_sw_rule()
Thread-Index: AQHcuCdLtTxsGIFEfUa9oxyqRUhDgbXsR+hw
Date: Thu, 23 Apr 2026 07:32:38 +0000
Message-ID: <IA1PR11MB62412EF2E672432E8CA40A1D8B2A2@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20260320050556.422762-1-aleksandr.loktionov@intel.com>
In-Reply-To: <20260320050556.422762-1-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|BL1PR11MB5240:EE_
x-ms-office365-filtering-correlation-id: 80653096-44b2-4de1-890a-08dea10a7f1d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|56012099003|18002099003|22082099003;
x-microsoft-antispam-message-info: yL0zzHnVCwEJZs2yhSmFI7utaumouSVHkL8RBxr1NjVrmEHNN1pTDo5j0NMESWC9l5jcRcjUp+DMQjFj4ziBlmD6DSPS6shPcQZTAqLCVe8Los+cU8IONI8J0SCVmnFdLPJjf2NN5c+kDYKhf/KGqEvSwXe2wzMPGSUcbsgrvKvjwvPnDqR8CPcyw/+WcTg345JJS3kDaz+MPaacrdvwzx0w7gpfJ+1o0kjqPMyVWqw0PQB3H81hhge/GWYpI3K2H3xfoT8hwtsb/KWWzuM0zQYvh8116yUzgBUumrNYBvM3QY+AglHX+hIf4eqla3yIgFgE7ZyPfK48YlGvCwd/wrT9beEm9wgVQpaa6H8C2lXYW0JcbxeG+l5wBsGkvu4HIE6QFFw798OaxRVOlBBcvxpZHb1cTZHk6XIgJy7CycEzqf+xBdUPqyVBC16dH2Sd+NjmJe/BmSOUTVhqDmAmCYJTCebOZt0vklDNoCgzUK5V39SlQXgMS78BuWx2MNjpIv87LlC/e61MWUmuXaFU8z3Olamk4i0vVsi7xdjIVJEFLRzcGB1L3ktFHjG3VGUX/ABzZ7kr4zV2Z7ISmwkCV0BN1piyWEAZWFj5D1XKSiSonj/JGhJn3D/VC5gNwRzzMmOCQdto3I5GwhKejikxo9klDyMq8o4Zdr52OQYxTwf0pYD3XDwmr8NjPMIK2rVPEgifxc4s6fK6wN1LFhqD2/azvhdk+hGokt6R3SBRZLKStKQczihFhbSSP+xTjsiZ04sVUEwsB1aR2ctZBTJ+Let+2agtB5nyLCd8THu3aq8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?cQJmFoFiWxgefu+tKwJjPHxnCXJt4iCR/O7f5w4raFn9RCOgzN6lUhOeanC7?=
 =?us-ascii?Q?Nwxwpa6/KzDKUnygNOc8DkCE7FXLZjvUo/xJ6yb6DPG67+CZkOBgIEa9gK//?=
 =?us-ascii?Q?g2UEDCpHW0G5lHcZGx7IhrsNgwYXa/HhcKQYArGpH6izvJOzZ7a5hKcXBVgb?=
 =?us-ascii?Q?iL1silIahf9Fno0zJAef49zH9nPrwl4aEFluvBXbWjax3Eq2hIw6cqTtUtlD?=
 =?us-ascii?Q?eucrbTUvDHmLEkDrZz7vN7oaNI9+XXyKH0A2WwS17ETAMyomJejv+GVjzUnF?=
 =?us-ascii?Q?tCTatM85dStlZ5nDV08FpWeZVCVcJZXEz8IjEQyYrdod82txXoMW+Fs32/Ay?=
 =?us-ascii?Q?NgJeQG0yzO8W99Ko5RAWyJa7Pb5ivNjuAWUoQQ/g3tDRijnkHP3lvDWOEftO?=
 =?us-ascii?Q?LTdQAU+/Ov2fSOXeb0Bxm+xKbhJ9w/AvmQ2kb67x+jEkLvv1hLdXZvSA/vKC?=
 =?us-ascii?Q?pbzFxupstEFJ+pG3wMiVio6CbkzupPZnfuIWbYQ348zNi7J2/cVwcC8akxVE?=
 =?us-ascii?Q?XMvs6mE0Rv+01ZyPkz2otB78KaQj7A5DbJbHmzWOzBu+wBImz8vl4CxKJYp/?=
 =?us-ascii?Q?MojcGbRnFBxT2DwbLU4jXf8xUB7k/mDWT+x7a/Rh8BhWb7TFFxsEdhw8qo5a?=
 =?us-ascii?Q?9VW60XASvOVCSTldrGtn/j8IHNIg2OdXstpiaVbLJwNXI1mbatZXe4qOVztu?=
 =?us-ascii?Q?1J21IfT2Rvg8VAAMQ2mEJtHyn6UFkttgbNIJfA2nKTaFeBESC6jAgbEUWBd7?=
 =?us-ascii?Q?44L2f77gXA2XtOQ4zvBQLA7ZVKB3xvDz2CxqYt4B66abw2QtI8VQYXUQsFVD?=
 =?us-ascii?Q?xfSrBVVY0Vc+ZoXAqewRLt4zp0VtH+1635fW2CRFJVhWy9w10xn8wypMErfb?=
 =?us-ascii?Q?6M/QlQ6vHemvPP/Ha48Dj50OKhh3r03YZZAouuEVT+h/ICpb8WZatcQOW8JX?=
 =?us-ascii?Q?zEP7DUSSDyy+o3gUdCc5CtWLo68V4mZw57bmCo0VZB/beHczskpcIJr8warz?=
 =?us-ascii?Q?0R4tuX3iiCBIt2VtDl4H+x/govALNGWbtwkmVTe3OZrbYZytwPv8CJFhJ55n?=
 =?us-ascii?Q?+i5L5tJpPZW/f8BuJGI5I7PTKLZ5+OIdt7clm3LAto6xhK7CHUAvJhVToVi1?=
 =?us-ascii?Q?Ch910Y6SgMG5EpM7PjqusfEP0b0DxTwkvrK99Ln1bJ5jmXSkvbPZ2FNEA0Kf?=
 =?us-ascii?Q?kJduKtT1XGLPFQ1Sw4dCfnZ3mnUciYoGlMZChtNM4tbvCVDyxqNJSvQtuuNR?=
 =?us-ascii?Q?+UDtyTYdtUNTV9DVG6yw5JzGOgyvqzwtTICo5rWgv5ifMqpf6y3yR6ynl3n6?=
 =?us-ascii?Q?qJv4LENP0Z31xyyNPwum0WoxVgO0fc8bWdTm/9Hxauv7J64+GnZEfn3ZUY/x?=
 =?us-ascii?Q?WFxrIFtAqiwLf2jOoOSxYEiwM7DRYZBoIHerQQQfZwMtaMf52wAoVd6lAxKD?=
 =?us-ascii?Q?8i4uv3P9HUsokrTV1C16wQ0mqj9Qxc4/c8kmUTx7H04ulIccz7KSejdNh5Sd?=
 =?us-ascii?Q?qes1JRkJX2UCckAtiZDkAOrZk9ZY2PFv4Cm1qvS7qcuUnJjGDUc7qpZashTI?=
 =?us-ascii?Q?zCe3xEgqhy6rFCRetjQG1oWVV1U3+ilo7RT1ATZIyNGCjEzkHNH7fXwMyeWO?=
 =?us-ascii?Q?MvyndKBUiyXr1KvBGn68v2yHbQVnwmCDpadXy3vHDp7qBEf+LXwQMdKjf5lM?=
 =?us-ascii?Q?KqX9P03xwxoYUKUjuU9gr6JG5jWmzD5es4ZSYxP8BKl264eJ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: u+KCcn7hyHz2Wy2Ahbw8Ybc4bnUH8alWpOtHBqUbBpjck6AjpZ63/9d6/Fpyi8E1gQJltA9RPvWjhyi7enYh1WhFlpiZ/Bb7HlvSXobGVmr6j3renXa3/XC4TjvhqAIyi7I98AxDdL7Mp/x/GrX58lMlrOnIl/iNbNhMg8yNwXg1t6NrmczrIuDH/6pYp4PmND8joOAlK9bmTVMgqu6LP2PiT4lE7VOBLFFnu2t6IruGp5RJOW0IrTB5nRxFxvQOsV19EGXP0k3/Ozq5pKOKHUC+POvr/18jK+mOm6AO3omKPPqsHvLFZfc/IpNGPUdx5ZAk1CcGV0XgbI0V17YJPA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 80653096-44b2-4de1-890a-08dea10a7f1d
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2026 07:32:38.6885 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CQfRhRTPPUAoW700QbNb9oU0iVKTjqog/YjUkI6PhLSMguDhQwfdKq6gMY9B0dNOWqzwi/mIBuQeEGylI/MJPg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5240
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776929566; x=1808465566;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=E6CXIUhBV8cfyd07klsVouHtS8+S3+trF8JCL0n7GoE=;
 b=EXDzSJN6YYcUl0CR9UUK7bBJz0AhkARvG0Zn2rLlDtiPUADf9bgQ2fCt
 xEJZ2viR//Wa3+mS+h9zg3dFkAo+9qgKunsSkp30ktE83yq1bpvczzHtX
 lKU93Y5ODAXJ2KJI6k0QDGuHk4F61dhHrfP+xwLqb0UFRs0J+K8JUfp+5
 qHbDTlPvr6M/tqKTQ+fFZBq09RJ0XBH4u5zfU6qJA+WnghiQ1IhV+OUAI
 wHV+A+kwqAuN4Y998K7GMFWT4nr0eW4z03M5jHmzzAInS6jBFD9gIbnEL
 LIM166+zsfgqTkGAYCimXP2DgvQyVYT/D0vL1LlZEePgsSdo/2jocc/4B
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EXDzSJN6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: use ice_fill_eth_hdr()
 in ice_fill_sw_rule()
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:marcin.szycik@intel.com,m:martyna.szapar-mudlaw@intel.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email]
X-Rspamd-Queue-Id: 9141644DFFF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
leksandr Loktionov
> Sent: 20 March 2026 10:36
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: netdev@vger.kernel.org; Szycik, Marcin <marcin.szycik@intel.com>; Sza=
par-Mudlaw, Martyna <martyna.szapar-mudlaw@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next] ice: use ice_fill_eth_hdr() i=
n ice_fill_sw_rule()
>
> From: Marcin Szycik <marcin.szycik@intel.com>
>
> Use the already existing helper function to fill Ethernet header. Also re=
place sizeof with a (also existing) macro to reduce the number of variables=
.
>
> Suggested-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> drivers/net/ethernet/intel/ice/ice_switch.c | 6 ++----
> 1 file changed, 2 insertions(+), 4 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
