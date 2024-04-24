Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EEE68B04B7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Apr 2024 10:49:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 490D3407BD;
	Wed, 24 Apr 2024 08:49:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D0YaMX-gyUbI; Wed, 24 Apr 2024 08:49:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BBAA44079C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713948572;
	bh=BE6QzgiOu51p1g/cxegI3uxzS7+T1xU370uCw3HuJSY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XWhwgxfDYk2mn9yVTN/c+/q09+GjF0O1UVAKWkUniXtuhW9f33pfKM5TocWVFiABJ
	 ywzuXWyR4OCHn/bsIlWlSU8rExCtPCdKE4Bys6GIVRzZ8AYXBGajMYuPBAjoYDlXEP
	 wj/ugb4YF0xwOsJtMta5pcfhfxQ5GHWcmj70KBLo167rGo94vjfP4lDcoR/Coh2NiK
	 0DvY6G+sOdiTItLzNwgIRoBPzq96eSoh0SEvdsgSsnAhT6mSnFQUKEQQHlFRPZynTy
	 KuqZIfv9u1ibBEFjM+Q7O+SiJmzsZ7HvXm4Aig9TJkdGvpXR2ySISOBWdaPQumb9zt
	 N13bXzKt3HINw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BBAA44079C;
	Wed, 24 Apr 2024 08:49:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 335951BF47D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 08:49:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1D15780DC7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 08:49:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lOuX5Wq_1rrx for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Apr 2024 08:49:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E617780D44
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E617780D44
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E617780D44
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Apr 2024 08:49:26 +0000 (UTC)
X-CSE-ConnectionGUID: 9LJoSw1GRqCt7UA4CDv8jw==
X-CSE-MsgGUID: LRgBeGuYSMS1BPbAo/7F0g==
X-IronPort-AV: E=McAfee;i="6600,9927,11053"; a="32059108"
X-IronPort-AV: E=Sophos;i="6.07,225,1708416000"; d="scan'208";a="32059108"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2024 01:49:25 -0700
X-CSE-ConnectionGUID: Ib4MYIipRAWnkIHusltT4w==
X-CSE-MsgGUID: TMHYJlWCSKeENOiQw8M6cQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,225,1708416000"; d="scan'208";a="62114511"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Apr 2024 01:49:25 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 24 Apr 2024 01:49:24 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 24 Apr 2024 01:49:24 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 24 Apr 2024 01:49:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bA+GgPc0DBlCfIHBIgGRih+v0vaLRZ3DPq+Lb4ffgpKU1sjN3x/nNUnlXZZfwvecCGVmy1zpnRkx0a8WVPAD05c45EJjJaA8vLjpTJbW/oTUhkMsF9A1vdBr0K5au2mshtTc7q8rVAI8E1A33rfNThNkeX65nE+rBajA48EjCnvaT2oGPr4Jq9D98HRQJmT1CBxY89hhJ/CM3mIclQ4T/k57nNUbj+fIIZJyJiw0IgfntzFlLfLx4EXqf1clhHgbFzoHEiqymAD8HZFgSNlGzskrURwOVKK+mrnqTjy+3A4oi4QCbNAtXb0wJgYg/+hnlAc0TqeDPKczfOfd4vCxaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BE6QzgiOu51p1g/cxegI3uxzS7+T1xU370uCw3HuJSY=;
 b=lyiFFqobtp3FzYHhOCP1D2LwWwaTVHMNtLrT4ISPkoBrkfRInsxIcmTQFwWiOCmYFD3lN80T/qn/WxcWgtOT2rtEZEvPvAFBMYISuAtkq7OTMakr3mFr6q2Q+HIk3hwf8QL2vZnau7CWSh0Bn13+oslqaoPQNKtRp8Uc8cFzsfawfJfiwxufS4xozSG4dRGA0h5b1FLmVdjSRftPocLv4y244VcQu6TbISW4RNRIZh5d3kuiPf2PN4iBvW5gGWgaBS2htmPWm6yOkTcdr3wdKHQBjd42EJ6oo2ak7Eno1NQ0NIDvR2OT2Uhn2lLYhK4IKkYRPsDFgsHhr5Yg8HSimA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4610.namprd11.prod.outlook.com (2603:10b6:5:2ab::19)
 by CH3PR11MB8546.namprd11.prod.outlook.com (2603:10b6:610:1ae::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.22; Wed, 24 Apr
 2024 08:49:23 +0000
Received: from DM6PR11MB4610.namprd11.prod.outlook.com
 ([fe80::e51:4d65:a54a:60fd]) by DM6PR11MB4610.namprd11.prod.outlook.com
 ([fe80::e51:4d65:a54a:60fd%6]) with mapi id 15.20.7519.021; Wed, 24 Apr 2024
 08:49:23 +0000
From: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
To: Simon Horman <horms@kernel.org>
Thread-Topic: [PATCH iwl-next v2 2/5] ixgbe: Add support for E610 device
 capabilities detection
Thread-Index: AQHajx5QgnEvrJXB+kOnCO+IqFvRXrFxgAkAgAKkWJCAAIQjAIACgZtQ
Date: Wed, 24 Apr 2024 08:49:23 +0000
Message-ID: <DM6PR11MB46100E8A3535D361C9DBE462F3102@DM6PR11MB4610.namprd11.prod.outlook.com>
References: <20240415103435.6674-1-piotr.kwapulinski@intel.com>
 <20240415103435.6674-3-piotr.kwapulinski@intel.com>
 <20240420181826.GA42092@kernel.org>
 <DM6PR11MB461069F903C65507AB64228BF3122@DM6PR11MB4610.namprd11.prod.outlook.com>
 <20240422183206.GE42092@kernel.org>
In-Reply-To: <20240422183206.GE42092@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4610:EE_|CH3PR11MB8546:EE_
x-ms-office365-filtering-correlation-id: 0cfb03dc-0558-455f-5b7f-08dc643b7090
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|366007|376005|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?LiaYcwJGY+hVcWwt6lJbKhs53NWyLZCRczKWCU92PqwAeRVV9htDh2qbtUE6?=
 =?us-ascii?Q?IIScPx+9c7sEFQ3vpYTVsAbxLunxUDhJCcI4ZiqHYeAGsKgf5HF8aJjIS7/3?=
 =?us-ascii?Q?ireYYMToCjFzNycD4SHCMh5Jfjk46OpMgQRUvhC6XhZBUYG5SlnIIOmdglVI?=
 =?us-ascii?Q?aRHgbzB88mxZqNXp4eMhUbSIxajnQIokrErOHL6Rf1kSNIjcMY7Pe31BbZ2R?=
 =?us-ascii?Q?le2cA6L6pQvMT3DOtDMOj8t1WvwXU39xh2Haq9Y91CZpQeFsSqjGnjm0PrmZ?=
 =?us-ascii?Q?16eSQuYYThCBaoJ9hBEGBqSZ0NswwGeL/uOKKu0gYAFDR36qT0w3cE5bUG01?=
 =?us-ascii?Q?1ri0nsx6PNKjgDd6cZzlIcbzgR2wPcpakMRPfhrWSq95ZILOf49Po2JpSkIW?=
 =?us-ascii?Q?k78DqFm6AMhsAcCZJF36qayGQLejAKL58tL4yiNacapZUOI85EwaUczEc/2d?=
 =?us-ascii?Q?2U+pT/42rJlXfsRYQ8tRJu4gfgi4Dtb1dahpiHtosD91K2uFE2Xniewo1YCW?=
 =?us-ascii?Q?gZOz7BarZ2IwkkesqNzUYDcmGpPGgov1CEyYTw+umqBsNdWNhcYxVrbc4Jy0?=
 =?us-ascii?Q?vjXZk3W5aROwc/kJecxjToM3hu9+97zHZ9oPoFCUh12HLJ8QnhGFgBfk04IG?=
 =?us-ascii?Q?EEUWPce/IkqVz5So20DGG8guVz9ODkXEG5NcHCjzxRRwKzRFoXXjRA2vT4Hf?=
 =?us-ascii?Q?LhtISnRBTplKsOzvqB/yhp55ygBYinJ4l3/C21z3iuTB+9/qd07ODBsj0fJR?=
 =?us-ascii?Q?Bv+xUl4cVxOZvhy5fxKqsHYUACfpjQQgDnT33Qt686u38t1r3m8iKdsqVDqm?=
 =?us-ascii?Q?eIIFHBhMzGq76IPkOa/Gg4+OzdZzhfhFfl/2IqnEPUpSregQnc1qtrFl/kuc?=
 =?us-ascii?Q?K2bgGFaMWBZgq/cYYlGxoDTKT9C76sa4jSp9ggebIgNfKVueAHLm2yE98PKD?=
 =?us-ascii?Q?aV969hmFGEMTWWMMwb7Lj+Aa48oRcEEOumTClZftgs8nrcVFdW+odhZFYv4F?=
 =?us-ascii?Q?tCS4rTYHfzeuBDuPj9d+5kaMhq1/qrItzDX5QbQPy17qhKDT4ch1jBDwUsZE?=
 =?us-ascii?Q?yV17qxhpIo3DYSzXFAV4wYE51moMkHPcXBlyEfnxIkWO3YKqRI1MfPIOCLy/?=
 =?us-ascii?Q?CieAdo3lf8or/xxA42BcrIlwXShcFI0rE5EB1f1KV7hpEwhGUIoqfJ81XVMx?=
 =?us-ascii?Q?RlMPFQesj2PuDAEQjmsbNbmfQZd/PKITGMChVKA98cCp8tQkDKfzWworZNSk?=
 =?us-ascii?Q?E+PaL0rAcXDA9CrhioNpBq8obT6CAWg+Z/HBVciJDnOWIXbzfAx0W+oMXNVq?=
 =?us-ascii?Q?R4U4EMgVLb0Krht/l2QMKLQvsCxav65xVjVQ9OAmYWg8ug=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4610.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?X905dE30Ppcq9YMERzrFg/X7NnCgRmGfKrKTnNv36Q0dxmNklccLO/Skf43r?=
 =?us-ascii?Q?0RNYrmvRAlexZSUOTVIZ2EbMvfESM1wM78DFsYssxxaJorLnhHMQKOV7NGrI?=
 =?us-ascii?Q?eMw9wS57GZenMrj/bk1y0M8bps4gqLrp49KEQcFltEX4ZVVXkriyuCAJI1TU?=
 =?us-ascii?Q?de4f9HiwTv8EP/QP+SVnWGSR7HoAmaIz8tXQ2ZeJ7gURjVvpqzSvuuIZOy/P?=
 =?us-ascii?Q?dRVveoJyunRNDL1Hh+I5AeFUPEZrYKodOPi/T2DUOfOE4pfAbxe7u3DjX+gR?=
 =?us-ascii?Q?Q1ML4hXp0mvAXgUYCuXd54Fm1q7doGC5AII5IQm4gVXbhDM1ICXLE07OPxMX?=
 =?us-ascii?Q?QpIwf4mEycqO5GDBme8H7d0TR78o7YBawZFbbQaDM1vU4Wykz246JX+tGBDk?=
 =?us-ascii?Q?h3woWKrya0a/+Dlod+szA8xQHwFjYxL/zlI0IpOIWHIUZGwCxCgBJzNU0Mh0?=
 =?us-ascii?Q?3OLdAR06UK5qqcKkk4C9winQSld0rc/wEUfnVc/8K+aX2Yqzgdxb9oZXtl+G?=
 =?us-ascii?Q?KhPwpW4NiYrZlc/JTqkBdGyMPxsfaZszd+pRh6sBQCjVRPhr4U86DwTVNXxF?=
 =?us-ascii?Q?zr/NCmKSo6BhO1QwLvu0VMQqOQWXIIGAT2AfR+SVHQo0R40JleiL7xX25LVH?=
 =?us-ascii?Q?PXAnjWsntrUUv9wbK3/if+8uujx2q7si2bg+yoDUT6C3ngnulTskVtR14eaS?=
 =?us-ascii?Q?thGN8ZkPplNhXM3JdS2jlHUUAS+g+k8xpu98hhf/L25LBQSdEHRpfZpshgML?=
 =?us-ascii?Q?bXLp+XMn8bUvuuokOTBUu5JQhDwELZZ2eDn4eDQgJffWMOaD8RzfOJubEgQo?=
 =?us-ascii?Q?Uu2nv0VHY7lRAQO/lXf/qoVXodWvLP8XEavd/EeD9denkZ8/DWv0Xsk5G51s?=
 =?us-ascii?Q?IpW1ry0wNxNYgP9asFLxQgae3w68ehea/bGxnaVyQugMifl3onIDrHmnKatt?=
 =?us-ascii?Q?v+KL14XX0mtLLYvE0HO30OVG7vsJc4yZFhDam0kLg9vmHK6gJ2swULGBZppL?=
 =?us-ascii?Q?ITMR+5KWDKwAcO9QW7/z0jocKMd0tCo8C8YGDNyO+8nxO67oLuR+ZmjtxoOv?=
 =?us-ascii?Q?hyhm9jxVcMzh5Y13YA31HkBH53c+K9JuYNjx/DUKauk3okNk51wKJpgmFzgi?=
 =?us-ascii?Q?hu4yzdZBxLD/Zsmf29EfNDY/WX9kHrTyHiK84kuX5/f31wIhJxZ+XZE4VNQD?=
 =?us-ascii?Q?vv+VS5JpFDHVx/IVljxHtGBWQu4bQS4hOsd8GJMOLyMZXFVHeNsqJy2fMIFt?=
 =?us-ascii?Q?lULs2dmH+pEj8ouEJIhRWRAGk0Ilmba7xcBYcmOgAF3mGn6MX5LKoCUE3fs6?=
 =?us-ascii?Q?/rXXhZTjzFBE8DzzTZFD9n/bejQPDpN2K9HUFlAD3EENhJEDXwUoiqDQSQL3?=
 =?us-ascii?Q?8WEBEhORWVhRM7yniDya7GzpIg6klCC+37+hTTXvn4iVm4lwvXpI0M1dwTVI?=
 =?us-ascii?Q?mihXk4NzWOAf3KFnF4bIqDGqZrvD8H6DmSeUn8Rj7TCQArtKQDQS3ZFZ1qS/?=
 =?us-ascii?Q?vByORmqaDryn5QYcQmpM4hLvxEjRwy79IHziWBOIpU6CI3b1DNXFm1qBCnHW?=
 =?us-ascii?Q?MXNNYPytftfgWBrBi2hpBusvzAYYgmnfzv4HE8LW?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4610.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0cfb03dc-0558-455f-5b7f-08dc643b7090
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2024 08:49:23.3741 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 07iYNp7wFy6CJBR4Nu6bASW4Rk+Oq/252seGmq4aRyzNVwEOy87i0vdOH/Vu+kRQ2pnQ6D5Afch2ZVmafQ2fFwAiI5vtS7fJbdmQY3q4dTM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8546
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713948567; x=1745484567;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RzCRP9r0jYMq6YQ4l+C+4WXkuvbBkOuP5thUODPd3zI=;
 b=RSFfQv2auWOvWKAd8ga2qpiqbxPo4pj4g6GiwYhdXlk/QZ65ykWTfvcR
 utp3vVkaHKU8k3UU2BwalNm7htKSUo5x5uSPD/6W2aZ7PeCBMxKpiUUJR
 YeaRLjbkRWZ9AowW4EMzqvealyRt/mzhMDaWrrpOZ6nhNZc6KQYCa+uBQ
 EUn8qlbYsRTioLCT9L4Kqdz2p3zBA1blnW8mpyK46hgCDu55eHJJo7n8b
 C5IuOw8NFHc0BNO8GoQXSB28gLJq/9Je8018Ue1JoQIAASiwPH5STAX3w
 +JEgm5SIloXZpSMFZ7eI+4DoSZJU8/dSZMCXN+NWAKK7TOc63mK2kL3pN
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RSFfQv2a
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/5] ixgbe: Add support
 for E610 device capabilities detection
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
Cc: "Sokolowski, Jan" <jan.sokolowski@intel.com>, "Gomes,
 Vinicius" <vinicius.gomes@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>, "Wegrzyn,
 Stefan" <stefan.wegrzyn@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

 >-----Original Message-----
>From: Simon Horman <horms@kernel.org>=20
>Sent: Monday, April 22, 2024 8:32 PM
>To: Kwapulinski, Piotr <piotr.kwapulinski@intel.com>
>Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Gomes, Vinic=
ius <vinicius.gomes@intel.com>; Wegrzyn, Stefan <stefan.wegrzyn@intel.com>;=
 Jagielski, Jedrzej <jedrzej.jagielski@intel.com>; Sokolowski, Jan <jan.sok=
olowski@intel.com>
>Subject: Re: [PATCH iwl-next v2 2/5] ixgbe: Add support for E610 device ca=
pabilities detection
>
>On Mon, Apr 22, 2024 at 10:41:47AM +0000, Kwapulinski, Piotr wrote:
>> >-----Original Message-----
>> >From: Simon Horman <horms@kernel.org>
>> >Sent: Saturday, April 20, 2024 8:18 PM
>> >To: Kwapulinski, Piotr <piotr.kwapulinski@intel.com>
>> >Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Gomes,=20
>> >Vinicius <vinicius.gomes@intel.com>; Wegrzyn, Stefan=20
>> ><stefan.wegrzyn@intel.com>; Jagielski, Jedrzej=20
>> ><jedrzej.jagielski@intel.com>; Sokolowski, Jan=20
>> ><jan.sokolowski@intel.com>
>> >Subject: Re: [PATCH iwl-next v2 2/5] ixgbe: Add support for E610=20
>> >device capabilities detection
>> >
>> >On Mon, Apr 15, 2024 at 12:34:32PM +0200, Piotr Kwapulinski wrote:
>> >> Add low level support for E610 device capabilities detection. The=20
>> >> capabilities are discovered via the Admin Command Interface.=20
>> >> Discover the following capabilities:
>> >> - function caps: vmdq, dcb, rss, rx/tx qs, msix, nvm, orom, reset
>> >> - device caps: vsi, fdir, 1588
>> >> - phy caps
>> >>=20
>> >> Co-developed-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
>> >> Signed-off-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
>> >> Co-developed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>> >> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>> >> Reviewed-by: Jan Sokolowski <jan.sokolowski@intel.com>
>> >> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
>> >
>> >Hi Pitor,
>> >
>> >A few minor nits from my side.
>> >No need to respin just because of these.
>> >
>> >> ---
>> >>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 517
>> >> ++++++++++++++++++  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |
>> >> 11 +
>> >>  2 files changed, 528 insertions(+)
>> >>=20
>> >> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
>> >> b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
>> >
>> >...
>> >
>> >> +/**
>> >> + * ixgbe_get_num_per_func - determine number of resources per PF
>> >> + * @hw: pointer to the HW structure
>> >> + * @max: value to be evenly split between each PF
>> >> + *
>> >> + * Determine the number of valid functions by going through the=20
>> >> +bitmap returned
>> >> + * from parsing capabilities and use this to calculate the number=20
>> >> +of resources
>> >> + * per PF based on the max value passed in.
>> >> + *
>> >> + * Return: the number of resources per PF or 0, if no PH are availab=
le.
>> >> + */
>> >> +static u32 ixgbe_get_num_per_func(struct ixgbe_hw *hw, u32 max) {
>> >> +	const u32 IXGBE_CAPS_VALID_FUNCS_M =3D 0xFF;
>> >
>> >nit: Maybe this could simply be a #define?
>> Hello,
>> will do
>>=20
>> >
>> >> +	u8 funcs =3D hweight8(hw->dev_caps.common_cap.valid_functions &
>> >> +			    IXGBE_CAPS_VALID_FUNCS_M);
>> >
>> >nit: Please consider using reverse xmas tree order - longest line to sh=
ortest -
>> >     for local variables in new Networking code
>> Will do
>>=20
>> >
>> >> +
>> >> +	return funcs ? (max / funcs) : 0; }
>> >
>> >...
>> >
>> >> +/**
>> >> + * ixgbe_aci_disable_rxen - disable RX
>> >> + * @hw: pointer to the HW struct
>> >> + *
>> >> + * Request a safe disable of Receive Enable using ACI command (0x000=
C).
>> >> + *
>> >> + * Return: the exit code of the operation.
>> >> + */
>> >> +int ixgbe_aci_disable_rxen(struct ixgbe_hw *hw) {
>> >> +	struct ixgbe_aci_cmd_disable_rxen *cmd;
>> >> +	struct ixgbe_aci_desc desc;
>> >> +
>> >> +	cmd =3D &desc.params.disable_rxen;
>> >> +
>> >> +	ixgbe_fill_dflt_direct_cmd_desc(&desc,=20
>> >> +ixgbe_aci_opc_disable_rxen);
>> >> +
>> >> +	cmd->lport_num =3D (u8)hw->bus.func;
>> >
>> >nit: This cast seems unnecessary.
>> >     AFAICT the type of hw->bus.func is u8.
>> Will do
>
>Thanks. FWIIW, I think I noticed a similar cast at least once more elsewhe=
re in the patchset
Will fix.
Thank you for review.
Piotr

>
>>=20
>> >
>> >> +
>> >> +	return ixgbe_aci_send_cmd(hw, &desc, NULL, 0); }
>> >
>> >...
>> Thank you for review
>> Piotr
>>
