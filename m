Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 398E686E449
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Mar 2024 16:28:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E143E6177B;
	Fri,  1 Mar 2024 15:28:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NdJfdF_gFnZO; Fri,  1 Mar 2024 15:28:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1526561106
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709306907;
	bh=DVpc2hqdtTLPuV74AR2Dvd/12zrwpOeHNgpLRiJ1cxM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PxCzyQxZNijh0hGEDGlYWuKuRSzvywAmgUPy+95UqhibIwnsf7PbLnk54hUV9H2g8
	 eeFm9JCzVuukXsNc2cDLSdUr7oPuETjigpGqK6L/LxvGD6jPmp8pvkp+ZYAGYLRtou
	 PCO3vOkAkprxc1aADDzrRDXA/Wx5byP2Zq3W4bOrNdvdYyrOH1bJP36n9mqlONB4jR
	 Vyxa7mX9TmfCtINmgqyhU2iQfeHZ33Lf3kgp6dUQK3ibfe35GYcH36pHSvpkJQFF6E
	 l1Q6V1QHArSdQv/UKA/AFrVjvaXQ90cxZ0pa3UcMK2dxh/WGMMqvHviahtkaSyl0T2
	 Mb+5/KVZb4l+A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1526561106;
	Fri,  1 Mar 2024 15:28:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 782301BF326
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 15:28:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6361A41EB7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 15:28:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zVvCM7EPjUoV for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Mar 2024 15:28:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 717A241EB6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 717A241EB6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 717A241EB6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 15:28:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11000"; a="3699062"
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; 
   d="scan'208";a="3699062"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 07:21:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; 
   d="scan'208";a="8364677"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Mar 2024 07:21:15 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 1 Mar 2024 07:21:14 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 1 Mar 2024 07:21:14 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 1 Mar 2024 07:21:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YO7Eq6CIxkMos2C1evSZqr19mnOQBxTvTV0G5/mbQtx2LM0J65efU4HxEC82cHEvDkMJ4ca5ngrzD3erx7cAjrbyZ1Qdb6ikH+xIUvWmBI/+lFVi7EwqNKU30jVIOT1XQ0Ct2Nf94PU5enRstFvCrcprcY0vusk8Vo0Qh7jJXhiD+LrTO/IIZcykjOYikFvqEy8sIEPKFcFvKsIt3YcaLyeMIQ83RdkWeEXbhcWfFZBBggicnxauij5OQVJfzuskHp1i5pnvy+Z0LWCXSf5C3EEGRKoMZUNWgIjkx1ZLmdlhTwwmvJqVUev+r92u6ZHGt3/ag50OpTIVZVFihFVB1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DVpc2hqdtTLPuV74AR2Dvd/12zrwpOeHNgpLRiJ1cxM=;
 b=ec116ivZWdAOeFjF7txPiK89TuK9gMXTBm/h8xRE9pHFPpm28RyUcGuplyqabpexM/4VNjSCvpeE6nTNA9pPGjStyGRHLtUZqVg8s1ZDVx3zb6iylZy0f4iyW0jR/HxwmsRWWisPPJTG0pF5WH5l60M3XvT50Wj6QQ5ba23gase3U8jHAuvh99DD9Gx80zjDlExCbGUJHEAYweWpd4FcpAiXy9He1jN/jCOJu4Vo9Asfn4pLbC5ityELu1KNvhLpgC8SGb4rz2QBMjFQGIaq1TdhD59I2eA3V4VOkeAdLytGSwr3cEI7PvX4NJM4vBotEWxEvUDjOYOxTvnYG3U8qA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by SA1PR11MB7697.namprd11.prod.outlook.com (2603:10b6:806:33a::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.18; Fri, 1 Mar
 2024 15:21:10 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::1859:eed7:cd98:cc08]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::1859:eed7:cd98:cc08%7]) with mapi id 15.20.7362.010; Fri, 1 Mar 2024
 15:21:10 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 3/4] ice: use relative VSI
 index for VFs instead of PF VSI number
Thread-Index: AQHaYSSK1R3m6KlG8U6rs0q/kpmjgLEjFb/w
Date: Fri, 1 Mar 2024 15:21:10 +0000
Message-ID: <SJ0PR11MB586501A13618C71956D2ACC18F5E2@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20240216220638.2558451-1-jacob.e.keller@intel.com>
 <20240216220638.2558451-4-jacob.e.keller@intel.com>
In-Reply-To: <20240216220638.2558451-4-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|SA1PR11MB7697:EE_
x-ms-office365-filtering-correlation-id: 63f4ede5-2b1a-4c84-0c09-08dc3a03397e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5f6Y7N5y6v9WAxhCCnRBG5vSKmgN5gH34t0IzOPQCpOqez38l6q6Bw+bh2Ye0KTfRdGV+vou9Z5Uh+5JhzYs3ooDZrlF1rj9DjlyiL1t0akpJPIKc96GG9bXsQRZPAUQKjavtmrUrfAtyl+VXwTa8IT0PDxZRxdSZnhAhUQHq4rmoSBUMmYjvw77P81Sy5kQbaIqqoXT6b/3ky/Y3tLJ2nbaWO70v7LmMfe5EK2gLTC3GooJlFFwRdP+aSeHZd2W+YStJ3PUP+m9H9nD4mjHL3p7ys+T+swMoYEuWVWsxdFm+GLQuOmes2UeLUCaZ/ggxa0xU/6L7Rcnz3LuZrDhgY5Bh0YrNSDlbqxlQ7diHAzWHVmNhsrHBLYkWWcd6+tkzpJhab8p/wZUIqXXEoTNcFnboK/YSCairXFWWhzlo+4mR2Yu6tBLT6iDs19lg6ZydtU8Xs+tqw16q2/63xN//GkhQZbC7QHG0zOtTvEf5hhSAJ4wrVpTDc7JNmO7eT8btICfIXtfBk3mtdWtNGy/4B0d1sQKJs7cdcfMWWkQUdk2N8wayU30jMt1o/jW7xcfajxsgSwfIfiNTIqB3KeOvf8HMsvnqf/R18gDTT3u+iSkowrfzUbM41/JUoLJu7beGVnYXxzFNN3xiBc7x4nQVuRFRoflbaKkNFuW+rqMfHu8IGLiamo706wsrjmKKFfODSA1WMJEll2pLvPytYDE0wQT+uaDEERj87sIEWkRqGg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4K5pv3mcE4s+4eXh6wMwssuR9d31riB1JVnCxzQBmF8hLciOnoKTl2yrODDe?=
 =?us-ascii?Q?5MqfC8kcFK8UWKHtV4SiW4D/xN7SEDTboHPl4mTQQT3MJKPzz84w78pBN1Wd?=
 =?us-ascii?Q?gNeZQx72+XVICHk3bXOYMSpFz4olXJqKiwCo+BbaCHCgbU4PeooK08o5BF6h?=
 =?us-ascii?Q?pKeRqTC3vxvD0RB8S8Dc4v3/qmDyNnSu1/8YtdUTlsjXjHW+T6xhL0HvQ6AC?=
 =?us-ascii?Q?Ps6b1MMZrMBFU7qPpvHk7kp/p0muLVuHldV9/k24x+ik6u96smkNd8hMpbGE?=
 =?us-ascii?Q?RaGcPBhJbgVAVGnzBLK7plrsRn/MUJPFG0ytxvwTuASZ99mihNYclbNKqQkr?=
 =?us-ascii?Q?7OY3pvwMbpIww04TjunCZEuhK2xZJWQaygOBVeuojvvms1JAclL5Yx+b1fpr?=
 =?us-ascii?Q?tWUKu/MVtghhwASKk4CN7g/9i3RoRl6z0/hPJvs4mT1mVEkxzfjwdwsd0dQ5?=
 =?us-ascii?Q?1C43S9zLGt7VG7URru2iY446S7nVEM1Lz0nNMWpBJqBfKzCGDzCDnVaXU/Jb?=
 =?us-ascii?Q?ICxu+SlkpM1KTzFrZCE0762KqRoClliOE9K8+OK6v2EYjR9DZ3iQmAXBFETh?=
 =?us-ascii?Q?UuQlC+WlaiVDdMqxwrZyjFpJRkGR8M3M1A/S71mEqiM3UZZLdZxnf6Yi/0mF?=
 =?us-ascii?Q?6qztDwHbVIWcFDS4GS5WJ0NJi+yyVSioUZqohbtTwTLK3vY5BHcdEZJHATm5?=
 =?us-ascii?Q?aGDttG9gjoZFHv0tOrf1wCxDGt55yQTR0E3/lJEj2d6kZELrywG4be9cyctR?=
 =?us-ascii?Q?8ZJfroMwXVGj5pyNLcOBf8JPjmHMba0hooNr441PLtrdcDN6UYuz+MIAbcFc?=
 =?us-ascii?Q?Pg6VM2JD6gCGe9yUOK9ki/doshrL8JNOM+hF1/0lXyQuJsW1l8dcBzgum2lm?=
 =?us-ascii?Q?nqK/fxkVN6++gUYDg0CE3m/gPq/SHqa50gB24/nIqeFwBVU77PlJ4NCBpU5P?=
 =?us-ascii?Q?Rom+s6LL8kS/nRzVenaEglxBIYnb18/DEga/76zjzozSQ4d7577GC2rT7OAM?=
 =?us-ascii?Q?lrg7qkLMwGGvVHSoFWEzXSi/3fHLPzGrjrv3ovkDprhjJMYFfJzdRYlJm7v5?=
 =?us-ascii?Q?bM37qwfzfHj8I0ye5xhuhFMYSye1e/A/XZv2HheRRqXSV45CvvssbxFzd/+G?=
 =?us-ascii?Q?a6oVQ5Z3o4Qvj5hmXPneYksWMmSoWGyHhhzWQySKHZshrNc+4qOz0ChBL4oR?=
 =?us-ascii?Q?3u44vvggqjzKdheTpZ4ywaUX2tpi6SVSOnNqI2TR2UkJgto9nzIqZsg8BXwm?=
 =?us-ascii?Q?3QgIZGBcZYVm277PrigVTtdrY1HTCCFD1cH8yjwT98My2P4QLjbVEMJPWRTG?=
 =?us-ascii?Q?tdF3CFFuqMx3eut46dzoMlM/ICyQcz6sIaEloyfYCuqDPVm90hJyoy+AFP+M?=
 =?us-ascii?Q?CxvvVhzN2zkEfl399EYWWWcxkfnfunF9P4+AN7h4A8cv8dxne8DJHb0TQ7ro?=
 =?us-ascii?Q?c5+dcYbvu9kURNsnCaZOEultN1mc3x4AAQIyEFzUMg8+VzOuGlXSrIl2U09S?=
 =?us-ascii?Q?ylrJl4aEFYYo7JdEhSmpw1XsPI49aqgP993msn+NufX/T2k02i5JRhb11dOC?=
 =?us-ascii?Q?CeBP5+Z0DtVGra+SmpQfS656QSeEJhjx0i1Gp8+e?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63f4ede5-2b1a-4c84-0c09-08dc3a03397e
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Mar 2024 15:21:10.3353 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 72EVlODBxPcCOsnIfXzlck0LpMYtx2dxTglFk6CN9Er4MlqXUnXFrNarv+TMN5blPnHaH9j0VlpZVm44eFvozUnOPlGRPqso6ArXK17ZwCo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7697
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709306905; x=1740842905;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=A9FaJafYGnE/PenGx3WGIlywDWteV6Clv5YsyJLqrUY=;
 b=Ojy3mqCBnsmOUBASUIYPok+mZPPtKj2h0QTERLfseus4S6D9oUfAylAV
 ILEeJORZ4TUBLVdDuid7qokm8Gntfl67/7LE2FVr5G/BM25VQU1Gk1pJI
 bAHRJx0TUyXxZCgPkN7DFdPUhi3jJlJyfu2GoJoj2W08RD7LiNd/1h3mX
 ftpJ3CFL5pmhoFuW9emY2dthh+z29Z/l2Mw3ALt2wZEf+toyPwP4sl8L7
 oIuaSCnMASNfHbLSdr1NeXisYiGfCLu+1fGnA8L8j/231ZQSs9ThP2DXB
 I3nfS/aEjp1s3xZwFTzIbg0WoKXBSiVQQ0G75SsGPpVKtjOBzDQRSy3Nj
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Ojy3mqCB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 3/4] ice: use relative VSI
 index for VFs instead of PF VSI number
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: Friday, February 16, 2024 11:07 PM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Intel Wired LAN
> <intel-wired-lan@lists.osuosl.org>
> Cc: Keller, Jacob E <jacob.e.keller@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next 3/4] ice: use relative VSI ind=
ex for
> VFs instead of PF VSI number
>=20
> When initializing over virtchnl, the PF is required to pass a VSI ID to t=
he VF as
> part of its capabilities exchange. The VF driver reports this value back =
to the PF
> in a variety of commands. The PF driver validates that this value matches=
 the
> value it sent to the VF.
>=20
> Some hardware families such as the E700 series could use this value when
> reading RSS registers or communicating directly with firmware over the Ad=
min
> Queue.
>=20
> However, E800 series hardware does not support any of these interfaces an=
d
> the VF's only use for this value is to report it back to the PF. Thus, th=
ere is no
> requirement that this value be an actual VSI ID value of any kind.
>=20
> The PF driver already does not trust that the VF sends it a real VSI ID.
> The VSI structure is always looked up from the VF structure. The PF does
> validate that the VSI ID provided matches a VSI associated with the VF, b=
ut
> otherwise does not use the VSI ID for any purpose.
>=20
> Instead of reporting the VSI number relative to the PF space, report a fi=
xed
> value of 1. When communicating with the VF over virtchnl, validate that t=
he
> VSI number is returned appropriately.
>=20
> This avoids leaking information about the firmware of the PF state.
> Currently the ice driver only supplies a VF with a single VSI. However, i=
t
> appears that virtchnl has some support for allowing multiple VSIs. I did =
not
> attempt to implement this. However, space is left open to allow further r=
elative
> indexes if additional VSIs are provided in future feature development. Fo=
r this
> reason, keep the ice_vc_isvalid_vsi_id function in place to allow extendi=
ng it for
> multiple VSIs in the future.
>=20
> This change will also simplify handling of live migration in a future ser=
ies. Since
> we no longer will provide a real VSI number to the VF, there will be no n=
eed to
> keep track of this number when migrating to a new host.
>=20
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_virtchnl.c | 9 ++-------
> drivers/net/ethernet/intel/ice/ice_virtchnl.h | 9 +++++++++
>  2 files changed, 11 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> index 29449030174f..1ff9818b4c84 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> @@ -499,7 +499,7 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u=
8


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>



