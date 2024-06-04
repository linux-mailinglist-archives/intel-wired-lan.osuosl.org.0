Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F4F8FAB5A
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Jun 2024 08:51:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B4A4441384;
	Tue,  4 Jun 2024 06:51:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EZZ20PfMkh4Y; Tue,  4 Jun 2024 06:51:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D152140912
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717483860;
	bh=J+c4+K29e4T3bR2oN49XO9D1ATMxzU4/gFy1QzA3QEE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=urlq9Srbf9D0xoTEdnmn77vgMHsQFHovoAo12L/cPVwus32dSGhA8H0fpQvoi3Xu9
	 Jh7cfFqwcuxn8TvLXLCWYpudqytFll6LzhBYSH0a6tcGyF1MuIpKRG+1rNLKT1eIp4
	 XA/YtOds9jBzaOj3CYqpMVNCgPXLt43e3LEZhK63Y1Nm4YfcdK11vXBQ6Z06wI3DR0
	 yL538DTQqxUq+lanLACID0X9yK4GM+h+s+ltrWguHHc0F9rut9iioBSgBOQtTADvgK
	 Cs8xr/+JrPXgLt8P+PYMdcXId1JE0qlcRMovJJ5i5gnqK1yE66sgtgUUkngzwvfTLc
	 JaLSH7rc7xJLQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D152140912;
	Tue,  4 Jun 2024 06:51:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 449701BF2FF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 06:50:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2FFCB607FA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 06:50:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a0YMjrPc1gVy for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jun 2024 06:50:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=chandanx.rout@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4FB77607CC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4FB77607CC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4FB77607CC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 06:50:57 +0000 (UTC)
X-CSE-ConnectionGUID: wwhO/z7dSrelwbfiJwZT+w==
X-CSE-MsgGUID: GUQ8rcA7QlmqSe9/0Nk92Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11092"; a="25117525"
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="25117525"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 23:50:57 -0700
X-CSE-ConnectionGUID: ezc8lRPtRp20ph3JjddyUA==
X-CSE-MsgGUID: utc06N2hQ9GtYw/6KcTaNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="74619987"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jun 2024 23:50:57 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 3 Jun 2024 23:50:56 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 3 Jun 2024 23:50:56 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 3 Jun 2024 23:50:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lxWn+++nQyo4wCPf7cpGLB2CIq4zZ/+S7vCrD5CppTjphNp2Sq1+CaJiNgprOY1LGYbZp3Wa4+1isQP98tI5jiERCpAcax/XqlH+UzbVgegka2e4ADvUJcsBx3arFFkWCbnoGm2rp8dTjhXK2zIbDZvdp/0T9rVKmD2lUehWnvXz5tUs+jw2O05Te1+9k/bukD3MCBLX92KkcYgy9f2oao0cy1trwUDVkBJcc9d3r0klsgW6p+dMy3OokuYQrwIuPF+Om7UABzy+gZHAwAG6ClM07vkS92Jrd5paLEjDW9jctqE/2u1aASIBg+i8j2iuTKCV67+iAeI30bSkI4EdbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J+c4+K29e4T3bR2oN49XO9D1ATMxzU4/gFy1QzA3QEE=;
 b=Ph2uRV925o1iboliLsj8kKKz+wXWgU+u3FIiVR6cSN3Enoy5bs52Rhe+/mAjfA/qCusEcWUhWgGh7YUBMeItdV9Eqq1dZq0foqr3SiL3FHWffr39jU6rvyjfvvJ641BOWMiyYvWtt8RjZce89Gxr73uRIucD03Seo/CNfwQD6yHWc5e19uSFT7oaxl43L33kJdxnwc3QapZhUSzjFT7mVHKkMt1MCxo95edmOFw3DFsBsDsR5bZIH4dS/feqDByePOQj/fn0AFw2nnnEdwGgnd/N3sZ+HIZ4qbcWg2gv+W9T66jVPq+ZgDIgMWY7Di/0bwLaj3tbnU1z7r6jIvUaDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB8297.namprd11.prod.outlook.com (2603:10b6:a03:539::8)
 by IA1PR11MB6244.namprd11.prod.outlook.com (2603:10b6:208:3e6::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.25; Tue, 4 Jun
 2024 06:50:53 +0000
Received: from SJ2PR11MB8297.namprd11.prod.outlook.com
 ([fe80::f3af:9f9e:33fd:8b22]) by SJ2PR11MB8297.namprd11.prod.outlook.com
 ([fe80::f3af:9f9e:33fd:8b22%5]) with mapi id 15.20.7633.021; Tue, 4 Jun 2024
 06:50:53 +0000
From: "Rout, ChandanX" <chandanx.rout@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 iwl-net 6/8] ice: improve updating
 ice_{t, r}x_ring::xsk_pool
Thread-Index: AQHasbrUYTdKTJWdbkmUEEnWD2oAcrG3Mz5w
Date: Tue, 4 Jun 2024 06:50:53 +0000
Message-ID: <SJ2PR11MB82977465D4F08C66FAE2334CEAF82@SJ2PR11MB8297.namprd11.prod.outlook.com>
References: <20240529112337.3639084-1-maciej.fijalkowski@intel.com>
 <20240529112337.3639084-7-maciej.fijalkowski@intel.com>
In-Reply-To: <20240529112337.3639084-7-maciej.fijalkowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB8297:EE_|IA1PR11MB6244:EE_
x-ms-office365-filtering-correlation-id: bbce3d03-0c66-4ce0-a8fb-08dc8462ad7d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?zC3+A+LZPM2cO6YxipU/rtlQiDAu/XnN974H9KBt/dXBE/TxE58JIWGCwcSQ?=
 =?us-ascii?Q?fMmV+OIJlKzzG+NbLmSxK3uSrRMsvczw7NDS942XRuGEeV8sHqWXfh7Mw15U?=
 =?us-ascii?Q?0VR9eTbPXDTig8/4NSIeg8Ca1NomjFKzat6teOdIXc6c+3L3WG52Xx7jOGaI?=
 =?us-ascii?Q?E3BXrON0OUH2lo12EAbvEpd/HxD5Se433tB7MrL9TPFGvcjq2PQWagmvwEVX?=
 =?us-ascii?Q?mYnGFMuyne/qgpPxkGc9T1aenjoIKLr/gkh5SxegYNRoXKE9lBEi+H3sljl6?=
 =?us-ascii?Q?Lii4QTA9UJ4Go1Hl0qNkoR0+/q1yBjh/nBYdsBSKq0Ud73mxFtHaULYyzMcL?=
 =?us-ascii?Q?jfAhjr5F4x+gIQks9OWG6AAhMVfjCBv/Mtf94tUKIXiizyMt1AD9d5iR8Zv0?=
 =?us-ascii?Q?iZNHk8zopJ+fa5ujtVCj3sGFTGkLEk9S9Yw2AQc1/KD4pkhuJVbp3pt4jz2C?=
 =?us-ascii?Q?dUCM181HOUG/mJW3I5R8VW8FIXd1UM3qx/sijbn0o3hEGDXAdXHj1carRePR?=
 =?us-ascii?Q?2ibp5LPaJRcyVqFnP79DrlOVHJVfRmoGBQSgs04tMs3zi06p8hhtcMDd67Iu?=
 =?us-ascii?Q?CGEe74/PkSmOayGAz7bDzC5Z5ZyLPH+HHycyVnlBha9hAFWFtwHu5afcRP8R?=
 =?us-ascii?Q?yFqeDMA71Mj2reOx5LXBwA01slsL70YB8UvHQyxNVdjaqsidYwr6GxsAFKOm?=
 =?us-ascii?Q?ilyD7FuMjZl7icndVV5u6GO63Z5KmrWk3oR7j3Kv2400VvLBbSTWrrOy7x5f?=
 =?us-ascii?Q?kzEjEb5gx3F4nywttBKm1b+jmg9hVGrz4c+9QoYq06mGsuLRGQLhLY8ZnJDH?=
 =?us-ascii?Q?T2USyGk21VqVSb9lmr+CMFo4z3bHfjdY2CaKN398ZAI10ubrf0w2aZUiiVFi?=
 =?us-ascii?Q?Wpsix1PZ4Dn7xmuMrjjPsMyR18abeJU/REhh11aVSvTn0so70ZS35pI/XXh8?=
 =?us-ascii?Q?CZO+py1T15rlOxZzljedvqihz7ZjbwA1OWuS+Qlei8dDvq6FRCRYlBt+gMot?=
 =?us-ascii?Q?muj2wZ8blw4LSrGyJrLOWBe6kfRLkrwyqADN21fH8f9o3mEwW0rgPF0v4U1p?=
 =?us-ascii?Q?xKUtKR5OYYNOQEkBHc2ADUUSDnYNSO6oa8ZspgoVKhVzh+UH87+TThEjVg5+?=
 =?us-ascii?Q?kW2Y45OrG6OZMlfxbSIh5H2qWJ6nQH+NQosM82FEXAlypw7hzwYYazoE5S4m?=
 =?us-ascii?Q?AsKdA214KWdu0E7Zwj+kbhUwT4i0X7uXgktB44TL7Kij010dwOmcXYl25DER?=
 =?us-ascii?Q?Ti7UDWlOy/KvntIjGJeuJ3eJCTQFh7HXHQl2ERWoYPmfFXKwYJp+/hknAXVH?=
 =?us-ascii?Q?f9i8kBRG9ukEeDmvWEHrT4MlU4bOZVzhEm0R+1r+qBQSAg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB8297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?myM/mHPiUtU5o9elwPSerbbWYiM6GObSTsQHyvpR8K8qKnrZPAX/nN3Af8vc?=
 =?us-ascii?Q?Y3y+VTTXyTFkQVeV55SYYLy2zdSwO8cG/vsNgjmqCKF8B/ammoDtByo+ha2H?=
 =?us-ascii?Q?w+YIs4Cgc5qO7y9NvLRdCkRvnng+uCKLlXa2XZtGlNs4/VE+m5f3uZZ3HB2S?=
 =?us-ascii?Q?A5n/3YMI+LWDza8qvqjnsjl7s7JWm0a0QDYq7/gfhmk1xClSwMwGzED5aQk/?=
 =?us-ascii?Q?+GplYSVhXrNCyx2krAZW++zIeh3lNZBrXtp9Pt3nXpzM3lPLMb+5AissgIU7?=
 =?us-ascii?Q?wrzlE593So9VJVu2mtzOphs5st6twse867P5mAoebTaSVW9oy3v7Xu3CaE0H?=
 =?us-ascii?Q?QR/Jngg+pytS/5U/X4yQboxTI4Pq2DlI9sFke7VTsna2wEUyuYYo7x1uorec?=
 =?us-ascii?Q?cKzgv1XHtOxfZzfKiczOL15EbDPD0OW62VAG2YhLTEGpRimXQIwhWNuyg1zu?=
 =?us-ascii?Q?Q8D2tDeLdN+w0KGv5S+EKMVzRvK/Urj3/VlYK1ONESXew/2fg2hYmnRpKXnl?=
 =?us-ascii?Q?TAo9KEL+mNCPlXCZFRHJTQxzzQntuyMubwFmvFjaOott/YkNdmfet3S8scrM?=
 =?us-ascii?Q?tx1JgX2UJj5+qqwKf4c9R6rS9eOYbQm7NpCWuKlZI8mZwCtk/+DYmK8i0Gt5?=
 =?us-ascii?Q?CsKwgJiQNN7qxY5N0TBwDlotKFYHj4ogy6nItGtuDqLA8tBfIhgfQ8X4X96S?=
 =?us-ascii?Q?iPN2tGYrMhblp7oyp8xRrpQISb0L9IXBZoE+Kj1P7q14mVyDYYfrx7SAGIDP?=
 =?us-ascii?Q?LxSqPv9DnrQjg4+toxdLHSF+rvoYS0Ao+JDf19dwcenDlckejL0Bk5XIwX6N?=
 =?us-ascii?Q?R0loS0VhdbkGagx4a4TcvlgwJPqOIQEaLopZxYcvZxuW4fPHlSyg4x4ZQFlc?=
 =?us-ascii?Q?1+OTT9O5drvuU8zcEjX0SNSXzG5+v0PbuvaM0QyCeCHfASist3xowDs93Rim?=
 =?us-ascii?Q?0Zi6tT8Vao4IWk7fULjUGVic5v0KTZnAiYzuhUfbRExX+0UujzPheVCP/w5Q?=
 =?us-ascii?Q?B6VXyEVMF+tDFwSgzy8AvegA5u9rZc+XpdARVP6aXDc97uEkIUSzIuFQHZd9?=
 =?us-ascii?Q?HJfmIZh17maHLw1EdQXfSHuP0MBXvi/p/ZvAY0+YEWlCnSsT8Y3COnrO9h6g?=
 =?us-ascii?Q?mZCKFeWHFq/bxkNfN9OA79ixV7QgPlMebwT0E7LwFirhpoVFwYDeSU+JY7qq?=
 =?us-ascii?Q?5OMWBS0w/YNKtF717+tteZ1hTKpbHMoU3QCOjsQZDacPDVLTNERLabzOXFBJ?=
 =?us-ascii?Q?x0sB+3oVOfQMsItJLkG8XQ6a5Cr/uM3FtfRgjuA0UB8PwsGFfaXcl/ZAHqUF?=
 =?us-ascii?Q?NMu9Rp8vGJYixFEZLL/1dc4CTJnnClwQkCpbs/HWl4TZiHeukVNnwMQqa5qC?=
 =?us-ascii?Q?FlCwxnmn67KYzPd1OI0ncXA38mA9KMpJJ6BK7+Ytp0SxQTU2P4AU+HzDPZmx?=
 =?us-ascii?Q?5f8xUJTseHgPyTEvkUEpW0wDHvAjOU5ty/p36sVf1Xq+ElltGfGp0WebuYcz?=
 =?us-ascii?Q?QmIIcwTVoQkYgEIdC/gJuge6PZVSt2k4RLWeaIp9kS5eFDI0ifmg9ZWTmKjf?=
 =?us-ascii?Q?3POQr/RDUq9alQt7LIfxPA3nCwFulpSRLfRABxLu?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB8297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bbce3d03-0c66-4ce0-a8fb-08dc8462ad7d
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2024 06:50:53.1496 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nPvF+GJFMz5aCkRChV5gNg510bAZkJjD/P8vD6IOCST8ClCKsHrw0Lbt7Wh6jwVEUWzia1/KqAs1zy7/ZxZoMQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6244
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717483858; x=1749019858;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XSgwyauVD2RigMClxAZn+dzsUlpm0t+jg3Whc9S8t88=;
 b=XBPInvVol0VyO/0NwoFHMxvlbII4FJQjFx9ewuVnmMMdMIBsJm0mTc/6
 eAs1rBuc23OYAViWVWRSwEHLRAwtT7rlkSZuZ/jiNc5bMZI1hK8YT6Bjt
 lyMiSF1Ut13IEvHzhJK2F0GtWYTmunYO97pRleLK4a9r6L5HcNTl7Jk8Q
 gDuHO+9drhFVKfq6/izglyj9wR46mPi24RGwnJMdkj1Lju/BxkiTY16GL
 YKeV12HC+4VeqZiHIAPIZgvFZ61t64hyRKQmClBfG2JpBvH4j2sLQJW0s
 gIpaUjLVktvwy22R9JDKhMMb0rb127AwRcI9Tfxwn6nUi25DzqK9Da3Ep
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XBPInvVo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net 6/8] ice: improve updating
 ice_{t, r}x_ring::xsk_pool
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
Cc: "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Pandey,
 Atul" <atul.pandey@intel.com>, "Kubiak, Michal" <michal.kubiak@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Nagraj,
 Shravan" <shravan.nagraj@intel.com>, "Kuruvinakunnel,
 George" <george.kuruvinakunnel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Fijalkowski, Maciej
>Sent: Wednesday, May 29, 2024 4:54 PM
>To: intel-wired-lan@lists.osuosl.org
>Cc: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>; Zaremba, Larysa
><larysa.zaremba@intel.com>; netdev@vger.kernel.org; Kubiak, Michal
><michal.kubiak@intel.com>; Nguyen, Anthony L
><anthony.l.nguyen@intel.com>; Karlsson, Magnus
><magnus.karlsson@intel.com>
>Subject: [Intel-wired-lan] [PATCH v2 iwl-net 6/8] ice: improve updating ic=
e_{t,
>r}x_ring::xsk_pool
>
>xsk_buff_pool pointers that ice ring structs hold are updated via ndo_bpf =
that is
>executed in process context while it can be read by remote CPU at the same
>time within NAPI poll. Use synchronize_net() after pointer update and
>{READ,WRITE}_ONCE() when working with mentioned pointer.
>
>Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
>Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice.h      |  6 +-
> drivers/net/ethernet/intel/ice/ice_base.c |  4 +-
>drivers/net/ethernet/intel/ice/ice_main.c |  2 +-
>drivers/net/ethernet/intel/ice/ice_txrx.c |  4 +-
>drivers/net/ethernet/intel/ice/ice_xsk.c  | 78 ++++++++++++++---------
>drivers/net/ethernet/intel/ice/ice_xsk.h  |  4 +-
> 6 files changed, 59 insertions(+), 39 deletions(-)
>

Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worke=
r at Intel)

