Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C75C4B5705F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Sep 2025 08:35:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 780126F806;
	Mon, 15 Sep 2025 06:35:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fxzsuQxRBMKU; Mon, 15 Sep 2025 06:35:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3BA856F83F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757918135;
	bh=+eE52crmG3+6cCDRWVm2j2fzyXfNHoTNKqdaxdOlIuU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=y+rJ88HTC80jyWUP049H3jaTVea3mgcioHb0nmsNCTp1Zp5m5q7h2HUUxw07pvUZ2
	 YZPr2PoNIAqVN204M9jasCDffgKArUnHKC/qGeIKeqUCy1YTTnozF/b+TscT5hThVB
	 Q3uU5utOIzR321cxYtOAYpsp6vIZTq9M8+pT/GGKFXbD85jobDc4dR2rN6FriC1H+O
	 ca+8r0vgosAUJ7zlMiMTVelkj34PZMSp+CjaxCbcMNdREWJFHVlK55n25PJKQfVsE5
	 Xn9GhmGvJLknCkK/9zPw0R0oNhD2I0fFRY0ck6rdvIQNbMm6pxoML/rcA9PDUhdW9x
	 Qrv+3p4AyiSog==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3BA856F83F;
	Mon, 15 Sep 2025 06:35:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 100E822F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 06:35:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EA6BD845B6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 06:35:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id euRE_IkqRLTY for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Sep 2025 06:35:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 337B484506
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 337B484506
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 337B484506
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 06:35:33 +0000 (UTC)
X-CSE-ConnectionGUID: yA03y4YKRXeM6vYPD32xyw==
X-CSE-MsgGUID: lyf1wjg6SdOXxPvsLnjT+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11553"; a="62792680"
X-IronPort-AV: E=Sophos;i="6.18,265,1751266800"; d="scan'208";a="62792680"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2025 23:35:15 -0700
X-CSE-ConnectionGUID: QeoloAtPQUCox0EEG7D1uQ==
X-CSE-MsgGUID: pSAakskbTp+GZrH2gQ0YxA==
X-ExtLoop1: 1
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2025 23:35:15 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sun, 14 Sep 2025 23:35:14 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Sun, 14 Sep 2025 23:35:14 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.66) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sun, 14 Sep 2025 23:35:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XWMS+F+F5jIZq5Em7VAEvv5ZjyvKxuDdgExh1l+ZTj/xKGxg4GQoDquGGN1HWpL3B8oZWgn7fAGNuinAPNIciBon8a5bw+bmjWFDWXDLUXNV+oF2/j3eGFzlqdDYQm/l8p9b1+9ylcKHxXZBxekfqa+j7Lag1tGFdR8UyFNDmjDa/766l0hWWvPDQmWgYfX/aBiwILPPVuM10tcO7Dp+YnFYkvX8+Gnmp8CMvyRgmeQVoaPFcGvHGOtvgVZcHLoKzxTr4xtK31H0VroFbJTOUfFy1PC3vJtlin80dVeLB7Ill3zIO/irsdnUOTbJXJ1dTxeHVdhQ4DWnaQML6aKROw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+eE52crmG3+6cCDRWVm2j2fzyXfNHoTNKqdaxdOlIuU=;
 b=vhjwIrf0rHB5QOKs9DvLPixRhF2hlfFBg+OuTyx6TUtnHtbEm8sHQWti1PPp60T+Xq+SpXpWj6z8CHqLyoGBmi/lURUuc5kIuHNI9XuHh4IbwjS6kHueqhuVaYHiWhIgFivx/0kStlu6E6rSH16+wJAz6sgfRFaw8kcktuqTfRcocKzN0WCB4Yz3hkSsmYK4qzPtWslFDEvFConaoDMedqmE8Dwgk+uop4rBMM2siS0KLchpw9VtZoYmPwf7JGYQlkleYrtH4NgDj7iqQZyfmxtaVF62oJYpPBF3dL/o5gcpa4cc0sE0b0NW5EjnIWP0kn5bg1Q8yTe+HpGJYC9OWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SJ5PPF8A8418B02.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::840) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.22; Mon, 15 Sep
 2025 06:35:12 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9115.018; Mon, 15 Sep 2025
 06:35:12 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Simon Horman
 <horms@kernel.org>, "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 6/9] ice: move ice_init_pf()
 out of ice_init_dev()
Thread-Index: AQHcI+ecJj4Xf65tAUONxQx27v0DybSTzdcw
Date: Mon, 15 Sep 2025 06:35:12 +0000
Message-ID: <IA3PR11MB8986CF193D8C392743924537E515A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250912130627.5015-1-przemyslaw.kitszel@intel.com>
 <20250912130627.5015-7-przemyslaw.kitszel@intel.com>
In-Reply-To: <20250912130627.5015-7-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SJ5PPF8A8418B02:EE_
x-ms-office365-filtering-correlation-id: eb25b51a-2a06-4980-ed01-08ddf4220634
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?h3wTiQClWP2GhK76U9jaCSAqsrKofBd/5WavZ4zzvwgF8/eJfOyvm0Jg+EDB?=
 =?us-ascii?Q?r6LovOTXDcMn2YS/QtQv2Xf04dRGbZR2+D+Y5Je7v/6VXS1kQJ4o7Qe8Uhyi?=
 =?us-ascii?Q?Do0Gr4HMG5qaMIy+wzZ7GQQniHpCHdrPGFnKDj89Cp9QFGXec58qFPwt7VZS?=
 =?us-ascii?Q?m9sI7U8tJOSZWIwX0usgNzeXRcaBEP3AURAwE80LyrT8Q3f8GbvI70PcC2de?=
 =?us-ascii?Q?FknQxmukzR8l4i16W6XbvbyCgTbPuID+nkxhXw7r6yLzyANlkp9p0DmvjtVx?=
 =?us-ascii?Q?tzzcP1c7EqZpVyRUDM4433tH27JQTvB6K0oPQLpDaWovRUabL6YtsS9DU1nB?=
 =?us-ascii?Q?AFGWhLaFsIJL1xGqiaig1jka4/mOPRJ6iyz9GncB23zMSTazVKbEoofr4NgK?=
 =?us-ascii?Q?ev7NQ6xSi+xQZBI358Qwr9G92IS63aSUPqf8Kcsi8QylhOKrArOX7ThwdRpp?=
 =?us-ascii?Q?AQuUy1f3ygos7hxuKViLBV+bxr6GGxOqOFjtF1M7+O9f6bBlbuROkkokUBk+?=
 =?us-ascii?Q?7U2IR+/X87VjvWPPKJsgU3464kyWu7O20TdDd23Vb/6FmW5QR8u2CmoDPyZQ?=
 =?us-ascii?Q?DErhr6ZOKNKPCDwITPvqnzKdalOKRDRccN9eQkAeu3vVXA2y2k9b3Uetvkp5?=
 =?us-ascii?Q?oMxNc+paR+mmgMFlAs+6xv/0DiI+Pn+6k8yg5tp1oAPVSsQ89R2Lk7kZ/oXb?=
 =?us-ascii?Q?0tIeLkSe76mjaPr4MI1sSvAulOUorI9Ba6EMYO3M6WPeA4CEzVAd04NLJK3c?=
 =?us-ascii?Q?zYOSl6uPdBFJbG6n7vb8/tI4vlJ39/QdRJ8LF+dWzA+OV8KLTI3rVySuWK2c?=
 =?us-ascii?Q?yIhiWN2b6CFhCSQc6ZkPbY7uO266tQaaO/CcF6NKVkatBjxL1hGl7lt/xAUp?=
 =?us-ascii?Q?JnQpJMyF7rRk7L/UPdWgbJyTcNL2Z1F8sicWKVFIA/+7tHAWMXkdxu8ZqGzw?=
 =?us-ascii?Q?rUTeqe3AdZDvC7xrqJDMPJKZicd7KzW8c+4DNQXAMdqU6uGQcWbeXhzd4tHm?=
 =?us-ascii?Q?h2EXdnKNVyvqfSuwqA3GKwOV/wKH+qK3H+nb/Gg+DGr1vxPuNfmqVRmprOW5?=
 =?us-ascii?Q?3nyO99XgZpeM5R2QaozMVJ/866EekptprQKGm4uPweDR0x7W7djLytN0o0OE?=
 =?us-ascii?Q?POEhsuk+0UGXvG7lVZxbSANIT6BYE4CGKofv2Mc0y8j/QVnw7yxc45sm68sm?=
 =?us-ascii?Q?DUQpeCVRYn27U+L731vQogVxS8kN02F4hzE0nAgzc9nZoNqXrgZrLkUvTvgH?=
 =?us-ascii?Q?QHurRNSld2oGbPT4+kgTFWgwwGL+w7sTygjjaNzkj+naINsY9WW8eI4wyKzM?=
 =?us-ascii?Q?YoSxDzT6IuGR93Y/PFTieaq4hTgQRKUnDbkftjF7f5z/JZdrFavkFtQx+Msh?=
 =?us-ascii?Q?N5j4Le0+YLEWpgWw46VTRJP8jh5lXOKU/mRH//ppklDe0rjFL6lazlqlfVOw?=
 =?us-ascii?Q?KOht0zBOmkXa6ToLKNXaaKDYwVDg/vp6Wyatu6MhXIJqQlB304g0djyE3G6u?=
 =?us-ascii?Q?pWX6ec7GfKC6jJ0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?uDmR0pa8XJqFqFi45cWQwass7km53TWXoVFX77BV4+KtnKti/vnNh60JqZ42?=
 =?us-ascii?Q?gcbhuX4GzovJsyHr0AcHDIzM3unQRYvuBmraNbnCxZ2jINLK/Ne8ulDzWWCI?=
 =?us-ascii?Q?wZxcFvrt22mq6HB/m1xz+kprqAjbI0ehILcuaRECbJcZgtIqrKeV6oHCEFsC?=
 =?us-ascii?Q?LiHnzg6ylgHjqtQTaZVhgvnxCYBmd/TPB2ytBPKOSR4lAGA9fO3XyFBmF6Ht?=
 =?us-ascii?Q?dz1qycVF7rdXAa2MqRQYeTue6jRvXGvw4p6H/dKcF94YqoYvWXUB/Ig8CjVm?=
 =?us-ascii?Q?xTjGEQlp7DP7TxTkT+Yw8Gat0vbqF5Sgk6fzN5jpjX/KCyzPzzwBarxZfFt4?=
 =?us-ascii?Q?Xxa+c9QUIT7zrG0NJDtmscNrStlD/Rd26TaW+PZHNQWQXXuLT6x1HQZOyy4N?=
 =?us-ascii?Q?vjRKYIPdQu4XVcM3Ou1e3KQ5/l4TLlFyS5Oc+bN9KBAvgVZ982DutEAv62Dv?=
 =?us-ascii?Q?7hMFAo9AEvLFeVj9guGpFSwPTh2PTDb54HuAMvf8FJV7nyvDMTW6hRVHW68+?=
 =?us-ascii?Q?8uvDyMfxJjL11i1ClOgsVkeOH3LGQsCxl4X8/NiGXvQTAKRz+DeDmIs2DhLv?=
 =?us-ascii?Q?7HfON9cXMe+iNJyz0+62KasVycGaCGbEmMXDKiz2NAjqypPh19yOO0ThtsqG?=
 =?us-ascii?Q?tW7J5MBTW29ppotwV8SOHFKsB05FXo+PSxA+coBQpNwpZi2sypaOa72JXDeZ?=
 =?us-ascii?Q?PPi2NE8GuUKNiLAszBEYmIr9z0a9Y/rfoS5HpcPJPyyGnN3nb/Bu3aKCG8EB?=
 =?us-ascii?Q?Az2Xjh/mCYTKDu8tohUHwl9pMCPDvAH5RxhWGfsiGi3CaFH/hXcFyk2OMZZ4?=
 =?us-ascii?Q?boA+5AUtHCxtlpqQiVS2VZz3qUOBjQYb+xCIyqpv7CGo/ZOvx/s63DzyG5/0?=
 =?us-ascii?Q?NnLTxyqMylk3dsJMODVZv1z06jObkzba2PaoOJFreSENLzRxpI50ksp/W2Ek?=
 =?us-ascii?Q?V89qb5VDooQWKXe3ilByrYD6h5CjvtjB0ilrWgnqEfl50KayQxhNpu2pQuT7?=
 =?us-ascii?Q?f1Xpry0d4abOG/2u+/YIexkO29F+ApH836TdBhr3oayzmWTgiP7QdED7iRN0?=
 =?us-ascii?Q?XkI2MDiJRGQ6JciHOkPuTBM6YD3hgDADIiKYAIS5LO6cgthHwd5gQm1cb67b?=
 =?us-ascii?Q?6Y59drBW8r3HA0Os5GFa0dAQq+YJSF3TpFa9WwTGpspH14qW+PEXakyXQJyr?=
 =?us-ascii?Q?/rLOqAMCFoDm+Kd5zAhXE5EstDlyZl+RGkLR/uvshHTG65fZP8JqTNDlTx+A?=
 =?us-ascii?Q?nDPT1qpjf+YvYIFiu+JoDq3XwjnzIZuhwKs2I0rUmEStihGKntNeGTSIjYZx?=
 =?us-ascii?Q?f71803GlozQaJNyse343VluWbM4XH6pN77PEesOHj/D2kGaOBBVfcgloFd+j?=
 =?us-ascii?Q?l/NUE7nhSE111an3Aa86bLEuxB4dWBoUUEWYnICncNIqvnJIlZvUZZLzDxak?=
 =?us-ascii?Q?2DNpNrVufYo9qytnEVOfkXBetf6hp6f8y0L8hLhaFs8Y+PLKaYU6QPyw04rG?=
 =?us-ascii?Q?wa8oGR5GqSKY/YHlppyoZA2WA6TnHzoR84P53PULi5aOFXkrWQDCkIBUrTJy?=
 =?us-ascii?Q?cSO1eXZv4Ao3c6I4qQCWXpskzwQHSnxXJMCCWxvDzc4HzTzbeRqbObCWTp8p?=
 =?us-ascii?Q?Bw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eb25b51a-2a06-4980-ed01-08ddf4220634
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Sep 2025 06:35:12.6567 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i2jWPP/miWuCr2vd1h4X2PU3v3YcJK4xu6hSZXEYpyvzlu636sth/N+2XkCu4etphCS94sQ1EMsb9eNZPSiRKL6NGuh/+1d2ScO6NqisESA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF8A8418B02
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757918133; x=1789454133;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+eE52crmG3+6cCDRWVm2j2fzyXfNHoTNKqdaxdOlIuU=;
 b=QbbfcYTQCGTJTFhnkIx2IFLfZYkkZrbfQMh4HGiiaElRoRWDURdptiOQ
 BrM9nS7LS1TWXkUtIPFjhxGGXxIP2SBzUQRkKsAy9EFRFZEgMdC06hUfL
 A8X9LHorumhu8wwXwLHlgZogW/dl8Vv8NOqXgUXhGDcK1hxwsBn9uXPXu
 3gzkbPQyuZBnC3EhIZcEi6PsqXoassLN8tzksZa/lFk+KcJj59ZEuwesL
 31tCLmjPIIaYVcEYivf9AEEEmZQz800kfGV1tjUjhmPLtK33spnPrdnGW
 HvjcwytGxhhlUOjqB59itbn7slnRqwkKLuaX9MBeepQNtujcOYxEdKab4
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QbbfcYTQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 6/9] ice: move ice_init_pf()
 out of ice_init_dev()
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
> Of Przemek Kitszel
> Sent: Friday, September 12, 2025 3:06 PM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: netdev@vger.kernel.org; Simon Horman <horms@kernel.org>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next 6/9] ice: move
> ice_init_pf() out of ice_init_dev()
>=20
> Move ice_init_pf() out of ice_init_dev().
> Do the same for deinit counterpart.
>=20
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

...

> --
> 2.39.3


Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
