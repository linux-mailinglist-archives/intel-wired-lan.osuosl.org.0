Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EK4nFSTX+mkRTQMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 06 May 2026 07:52:36 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 214C34D65E8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 06 May 2026 07:52:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 51AC380D2B;
	Wed,  6 May 2026 05:52:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H05Vblt_sgyu; Wed,  6 May 2026 05:52:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C3EEF80C9B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778046752;
	bh=RLo4ePiaGgesABUVQPCRR5T7zkJL49BDNzzZ1eCUGU8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=khxrOlB51qwBQQyVIJb2QHwqxD/oETFGanMIHj3c6ZhouMw0/rfXZwp1Li5QtCj7B
	 5d5R+gUZl+x1gF50CDMA1upDpRVr2Xxe0gx6dmw03RxbYK34ZUIikqPHUNiz2ixzQL
	 +izFhbccqTkJ5KCvwLCldMnFWkBBLoQ7tY8r+3fyJWlxExx/MRdyV2bdhChfjZnJIF
	 2jEdNVOWkn5WHNFRP6yAaYZKzjjI9XKZT2HXf57wiSSE/Q6l3g+sPqocvQ2N7ccFNr
	 MHcGKgGtysLQBH/5qHZFyWEpZimT8ZZ4lHQwsDP5DQ36159n7TOieu4/syb7ABYiwU
	 VT4aLQO0k0bEw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C3EEF80C9B;
	Wed,  6 May 2026 05:52:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8698E2A8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 05:52:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6C89340D84
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 05:52:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qUO2sAQCVIg3 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 May 2026 05:52:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=arpanax.arland@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 827A140D82
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 827A140D82
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 827A140D82
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 05:52:30 +0000 (UTC)
X-CSE-ConnectionGUID: M7O9GUHyQRmuxDLAcWt6UA==
X-CSE-MsgGUID: AnnPOTc2RreHIMCBJfhwEw==
X-IronPort-AV: E=McAfee;i="6800,10657,11777"; a="78959089"
X-IronPort-AV: E=Sophos;i="6.23,219,1770624000"; d="scan'208";a="78959089"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2026 22:52:30 -0700
X-CSE-ConnectionGUID: 7KJehnIuTCSvUcT1G/U70Q==
X-CSE-MsgGUID: YNIPwmqwQ4mCsKKeVrz1lg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,219,1770624000"; d="scan'208";a="236285604"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2026 22:52:30 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 5 May 2026 22:52:29 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 5 May 2026 22:52:29 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.58) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 5 May 2026 22:52:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZfZKJE6j1oixSatJfIBYyF1iBUEvRHQPofqz+7k9MuNQF3ocGBfdFGMHBCm2BAxhUPc/UIANhiwXjIiM4pczO2ikLmYbO4viLBbqO6vVEQ/ubBW/wTDD1PbqH5dehl1k7Qxia1lgqLgSwOgAUehmpFymDhMI7ItID1Q7DyDRLLOrZybJgHGO3NWV1BvMh7XJNfeYU528TWtrJEjMBAL7oKx6lTDb39+mXYAlh9SCXnW7o5qTmCddI7xA2POYdgAA96AVcWw54l63HNLiIDTVzMKNfQFfoL5wQHC/P6q8UqAT3EVJEm9oZ6+WPreMnPeS0dqy0LciFgCaBzzGk1+3bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RLo4ePiaGgesABUVQPCRR5T7zkJL49BDNzzZ1eCUGU8=;
 b=n08Fp10VcjaEEJtmWoQCWZJt05nOCv3th8EPKnRY6CfdwN5i67sxFR4uvIdm6nU1UHp565Y0rhK/pguCjHiDFZklE+NGmI1LEpxdNqB5jhMIvMiw+V/Hg3adCPr8wp2dI7FEigskAMllz50kw0WqENn29YmiTTuEUjQ/+m5FcaqmunAnhTGSN9A+nPjVJXklSzeU4h26+fML6Cvq9mFroR1ugfgGo4GUgDZa4R9ekY0KafW3DsxFaav5586KsDn6KMC12YhcqK7kKe+tkFcyXiJZ9gfq0V9otXnkjQL7zhqMzdo29h1AB9blP08/C4SnLQIf6rlhHPKoPJdQdUFjWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7162.namprd11.prod.outlook.com (2603:10b6:303:212::8)
 by SA3PR11MB7488.namprd11.prod.outlook.com (2603:10b6:806:313::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Wed, 6 May
 2026 05:52:21 +0000
Received: from MW4PR11MB7162.namprd11.prod.outlook.com
 ([fe80::5472:a155:fff6:c934]) by MW4PR11MB7162.namprd11.prod.outlook.com
 ([fe80::5472:a155:fff6:c934%3]) with mapi id 15.20.9870.023; Wed, 6 May 2026
 05:52:21 +0000
From: "Arland, ArpanaX" <arpanax.arland@intel.com>
To: Aaron Esau <aaron1esau@gmail.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>, "stable@vger.kernel.org"
 <stable@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] i40e: fix memcmp of pointer in
 i40e_hw_set_dcb_config()
Thread-Index: AQHcwFpUjuPe/PIRz02HTh8gyj9OcbYAtmlQ
Date: Wed, 6 May 2026 05:52:21 +0000
Message-ID: <MW4PR11MB71627D461E5E291F1B4C1227803F2@MW4PR11MB7162.namprd11.prod.outlook.com>
References: <20260329162151.2043655-1-aaron1esau@gmail.com>
In-Reply-To: <20260329162151.2043655-1-aaron1esau@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7162:EE_|SA3PR11MB7488:EE_
x-ms-office365-filtering-correlation-id: fcfeafd6-2089-41cc-950b-08deab33a3b8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|10070799003|1800799024|18002099003|56012099003|22082099003|38070700021;
x-microsoft-antispam-message-info: Sl2wS1FdIbf1SvxI/76Oe0fe3eejIAS0+HvjUwQogFP0lbrmzuF1jXan1sgvHX2tS6UBN0j0qYqjXaVP5ZD8z4TEDB0J+HMskbsQp2O66ax6x8axAHgAd+NNdUQDX+sIqPcg8Uz7eC+zMfyWnspbuKuztjR2JfNWk5l8oLof2b3RPNCZKHT2EGj1jOdE1BZuqTQn9jXMuliQgrNTbTjxp7C9ECTa1i9yRHRNC97nzYLz3qNEHNUI+o8hOtNU3SKcNre5nSOjWYAlIAqlLy8MFeBFgDuCx37qKrPyoHaNsUF14/P2ENUWuMxX7Df+YlYJK3hPnxpztusg7TKQKs1Or6BJifbuV8LKsVlxd/h/Bzj+AMu2+tQ2PWzGyRHx3XktlAaK4OwTiHRwBtZoXEbZfypstdN6EksqNtwoon5v7xiia5HoYkMLglSaOVfXOjMNuoJ8f2kXJnkaZhQii7JJsv+Dq5pV7AeZLBKLFIrl/hEWtcXaFTxVXd72GL6Hc0UYeb0g3H628ydf26EO9PiyUeuhZrEvFzUqNd1n9lIponlKC31sb93iisd45uEczsJeIayyaaVTpjGKi3Lxzuu1rn2RFC2MJNJpLBLm/fYaBuCyDlLIpOC3bg1+yjsahaI4guSs3BbUmbJYwyC9Sbd/ukN729vWM96Sgp9Sv31e88/ug3hTFLO0nYvcSugRx3d7C+Ti+5In3ha+R9rn0JnE0BhsUBw22I1L3OEJtjqnLqIVgZrCsvjLhj++NcJxaHYL
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7162.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(10070799003)(1800799024)(18002099003)(56012099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?h1Co7ZEvufGt0dpoZZoareNQmahL3xJ1M8iFX1TeOvBCfeKelz+qYRj/AvP3?=
 =?us-ascii?Q?1H6Yxl5FEnyDWisk08qtefjKgUdLPozeb7hNS+rmacEDx3ycelhxXvJjrYpa?=
 =?us-ascii?Q?HLxvrFBteWehXk81Ld0jV65YQKUkT+sy/vwJjd7P23LG/DjBYnXZCbJZPTyM?=
 =?us-ascii?Q?bwmula0LqBXXjExTwwqj24MdvfnA9h0n2F2aiSA7cAq/qsxsAeMtVb8F3w2U?=
 =?us-ascii?Q?Nszx3+IsnDSTJi3HiFJKO0W36WBRNvRMLIg6R4rNDMR7NmYq5T3sfixpFWaQ?=
 =?us-ascii?Q?FLUwMXhpvGUHzZXak87VvzLoQ+2+vzS2rkItg4MLJsUnOgEYL//Yy1ZDsDE5?=
 =?us-ascii?Q?2ZSNrNkHRARO4JZrSFVZe8WUrPD1QkEIdW8YVIgR6CBrEB7v1WM4yH2babOQ?=
 =?us-ascii?Q?3lSAYfvszjZL7871ESjf2D1zClWgTYO85vdMLRcD+OtZyndxyM7QvUxpVFqa?=
 =?us-ascii?Q?PbHboINwgLbPDAvk/uK5A2oBCnNCs25EXqWz0qHdy6Hte4JKjsj+Meo90nBE?=
 =?us-ascii?Q?F8G991q18nCwDxbm4d65Ot2H+5gi77ZsOqlsnF9hNDV0jt0ULtDBXrMRnb9T?=
 =?us-ascii?Q?/Zz4GpQI4eVkB8uxVpq0vXf3iM2iVNh/VyNPHty7uPDEyN8Gl5tlNUCKaXt1?=
 =?us-ascii?Q?H9MV2LJw9NN5UdcUQT8gk4LasDMLNNTNdjonypV63qRuI0aEX0kV+HZtStpn?=
 =?us-ascii?Q?DSRmKbWBO7+VWqgDZg3A+koALBrLbOPCWKPOWeZ72JKFNI/dIeBFW1SU1lkY?=
 =?us-ascii?Q?ZmAgw4N6XRLiTITBYz1p/CtwnRwAxC5C8W7XRrbeJIQhVivaAe39dokYT5n4?=
 =?us-ascii?Q?SLPHaft9fvk9HaQVNG7ftc1A4dQmB/1xpUglvabz9ejZXSwjoTK4TQNxchIY?=
 =?us-ascii?Q?o8rcpg2Ns9HzlE0jAupAhzaAhwPbvvrxkMTKlYSkLI0pF1lj5ICEKCdCk9B5?=
 =?us-ascii?Q?OLHcnBiT+bro34iQjL24Pn1ZUi3EiDe4QPR/0sGZd4CLMbKv/Yj8kBirva7H?=
 =?us-ascii?Q?lssEVLi/4ZKLE5DPQOX1GiNpqUyXWD7Dm4im7IGPoBmUg2J1CQMr1l7rRv57?=
 =?us-ascii?Q?IApc0Kcq+KhfQ47fZBCcM8vnZnXrsFLA7vu8Hz8cj7M2iv+1FFNONFKEpgaW?=
 =?us-ascii?Q?r3amOK61AdcVKsi1hRWesOG5cWYgpkVgnotfWSG95BgvvQ/zvvuIKth3B7al?=
 =?us-ascii?Q?UdfIPDpQU+0Un53fvmwsrVJb+Q6oCfudr5IwMT95+qz59D+LeI9/ikKtnuJh?=
 =?us-ascii?Q?OM56urY07Ufwx2Ukqkn+tcY4MUmHaLvlNdGa7XKpEUg3rSxVm6ASQJhmkuD6?=
 =?us-ascii?Q?uD1NRQXocsX1r2wQ6vorwAuLdMC2rVcmzR1u8uwudddtQK1Y5htdUJly3G0y?=
 =?us-ascii?Q?JLXhAOq0MiXmn5BaRUP9MKYPPEJ0QhFMi0xel3P7mN3vhyFhcmVe8hrmn8DK?=
 =?us-ascii?Q?iEf2Xwx5YFW1OHh5ItfonN6i3KRf4+3Ac47pAjGuBrVN8aZPlroZMuuW03qG?=
 =?us-ascii?Q?C6YV+DMViOBXysoVur+K4+qyYutqtnvGwMTI9ki1L7mfHx2iQ84MSHrt1y6T?=
 =?us-ascii?Q?6hJIy7xW4g2/2Z9dTqWvYMfIixgFWXa7lsj09YFdK39En+MQoj4QpU7X+lU5?=
 =?us-ascii?Q?Lr4oUluoAn7N7OaSPpawTaeIe3bFF5sX+LSfn+WWUCPKXVnpNe8A/64uPmlS?=
 =?us-ascii?Q?JkN+j9gUM1VGF8QmR3jy7XMGP7gehbVJNBu3opCGDB5HKjDDpqlXEzzQAXCj?=
 =?us-ascii?Q?Cme5z1s3t2eltF1jf11jzqWUPnCCyXOWl/AZeo2g0h9WoHg+sjY87m5yFXY/?=
x-ms-exchange-antispam-messagedata-1: eRq/aWt/BABIIQ==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: R3mYhDdKII4en5MXUnlNcv+ipr/N0j2P1QmTiCtZS9MRhoA3povxcy4rwB3fPaIR31I0g89zaxxLD2zfKLGmE4KpgOW51O76iyditsFi9xM0YGIzYtMx03eBEgUygJmstEI4aewO8iud8rqsoD+TZ8NKZQztPXKqfoWU87q6wREJhOySm0cTafI8UnibpGKNon+u/Ati0eAf1kPo3TjqSD8UVye/se9qLa8lOhZp7cFlHMT+PGKeUYPgfrLCawJrLGAenLSN8G36Mzg0AyjNoAkogImtKiZ6tL33uqTlXGkH+95s9wdS+ceXXE3XsuFpEKhjYbDLv2s7aLIPpLO5Lw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7162.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fcfeafd6-2089-41cc-950b-08deab33a3b8
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2026 05:52:21.1080 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tzmn7ZmwZYQGfl7tTEI5PE2Aa+SmxeLuWMEw+2LfAC85o3SIS3KYG9AgM1rZgxTWF4apeGiAMgOTHh+No78OVBOT4z6wCJmKOnICkAwxNbQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7488
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778046751; x=1809582751;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mGVxIUtIkWZfUJ4BDJrb6WHru29uYbubGxpBx2gzsZw=;
 b=YK9UBkv9pSpfubPrzEL1/aUD+c0rUSmLnLwXTHkQnkt+L1Et9/seN9JH
 Vh8veVJpufcZFxAWdqzrl+CQBRjSezG4mPtXvTbfjSCRQH1oyQ3B0Ou1g
 NdYYwj38xSCBUEPzYHr8zVdGs9Gf2oQ60lfy4yihZ1VvlXMnrCD6P06vm
 CREGnJ4hZMq6R73NgYNIcj5CpSTPQ3kQnM1SCzGnncznTVtl7JmZzSaFX
 RAdrnDjVO3flG/a45IG+3mBr8o5jw2BT2+baHuo0dSCVL10kO4/xjHvNQ
 t6zATaL5wlAtj+epIJsL6gD/RzztAnZXjZG24wrkeX+GxrgUCXhIc4GyV
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YK9UBkv9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: fix memcmp of pointer in
 i40e_hw_set_dcb_config()
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
X-Rspamd-Queue-Id: 214C34D65E8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aaron1esau@gmail.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:arkadiusz.kubalewski@intel.com,m:stable@vger.kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[arpanax.arland@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arpanax.arland@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_SENDER_MAILLIST(0.00)[]

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
aron Esau
> Sent: Sunday, March 29, 2026 9:52 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com=
>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Kubalewski, Arkadius=
z <arkadiusz.kubalewski@intel.com>; stable@vger.kernel.org; Aaron Esau <aar=
on1esau@gmail.com>
> Subject: [Intel-wired-lan] [PATCH net] i40e: fix memcmp of pointer in i40=
e_hw_set_dcb_config()
>
> In i40e_hw_set_dcb_config(), both new_cfg and old_cfg are pointers to str=
uct i40e_dcbx_config, so sizeof(new_cfg) evaluates to the size of a pointer=
 (8 bytes on 64-bit) rather than the size of the struct. > Likewise, &new_c=
fg and &old_cfg are the addresses of the pointer variables on the stack, no=
t the addresses of the actual config structs.
>
> As a result, the memcmp never compares the actual configuration data, mea=
ning the "no change needed" early return never fires. Every call to this fu=
nction performs a full DCB reconfiguration (quiescing > all VSIs, reprogram=
ming via "Set LLDP MIB" AQC, and reconfiguring VEB/VSIs) even when the conf=
iguration has not changed.
>
> Fix this by comparing the structs themselves rather than the pointers.
>
> Fixes: 4b208eaa8078 ("i40e: Add init and default config of software based=
 DCB")
> Cc: stable@vger.kernel.org
> Signed-off-by: Aaron Esau <aaron1esau@gmail.com>
> ---
>
> Found using Coccinelle/spatch with a semantic patch that matches
> sizeof(ptr) and &ptr used together where ptr is a pointer type.
>
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>

Tested-by: Arpana Arland <arpanax.arland@intel.com> (A Contingent worker at=
 Intel)
