Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 777F467B214
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jan 2023 12:56:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0E2D8821A0;
	Wed, 25 Jan 2023 11:56:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E2D8821A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674647794;
	bh=8eo4tZ+lqxtkHHjBwNwNdr0BURyow/EV5fpaH5JzDlc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zyGrXLYU6Fa+HCKheAl01kWiBpK99CGPfXv/Gt1vAKegfy+BZ2vjbKRt9xO6cFF1F
	 iirU30WQ2SiSVR+N3OvLZrs8mwzx0IZc14OY7ydJELSDt13Rr96HPLzW2Q7HHGdgAA
	 YqbHzZp7emHQVMhEbkkOXEMmzTTDDsjWgEu5f6Yab45LmVBUIjTZoUkh2lHx8S5tYA
	 AbR6Zz7j0cOuuIw3gU9V0SSxaus3nsiVq7MscMk3aAX0M57VtyUSxRUM/P/hXyf38W
	 KejW/P/gQsPqfezSFxNr4st2bex/8FdpEAsUw/nGM6mj4LnPhGAN+e6I3VZo+L0/Bw
	 r7PVxhAo5+wRg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ruLOG_bYMygj; Wed, 25 Jan 2023 11:56:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E407D82133;
	Wed, 25 Jan 2023 11:56:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E407D82133
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 614D51BF580
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 11:56:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3B40C82133
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 11:56:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3B40C82133
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2okAQJP3-tlN for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jan 2023 11:56:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 65C3B820EA
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 65C3B820EA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 11:56:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="306200817"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="306200817"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 03:56:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="991243048"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="991243048"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 25 Jan 2023 03:56:25 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 25 Jan 2023 03:56:25 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 25 Jan 2023 03:56:25 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 25 Jan 2023 03:56:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Rd9C5IBKOrazBSQQVRP+s+UVl8x0qIQPMx+jzK8IgRdlXfqhxzE5Cfq+Vr94gP0W7VRtYvHCqfuXUKxZ4ghxLoR4p5AVEQK64ZLvTuElEisC4S8vV8vOAU1Sykkc9Yx4/dD487y11Hx88Z+sok2kg+3egyhPBO0JD/Y1+cNTboCi/cBw5Iclq3AcgY4rzb1U2URcvbrGqZ03PQfxiNup28qEIUliAm6onL9OH8i0GtyKN1y5Xnz30a2s0dCauqmNJB2kh2UD7uHW64QlJOj9YAkDyzJH+szquNw9wX5KeiOGq6FerRY82m3fcs0nhO26/UKZUO3WEjUgV+4ztK28WQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZV4CLBrYR7lSOVLB//9MHeIhJ3rzBGIZOtZJNCz4sPo=;
 b=NWTPQ7nH++3ATGeD9oHjFCjrqyQ79n08hxj/TYv/1mCbn2PJoD23v2HFXAxZscTHlUepqwjQqLmjIxOfOsQH40NqXFXz219dVNEP5tKTwANe51/JtaUBw5uIRcryCTfo1D11OcYS6tEfEXacRYGVzNVNGmn6j0cLAE85iFPCTY5hB2N19DXj4mKyFFnC+jhJQ0kCLSq9LDqXnXlhPAMzjVNEHPtD2vO+oIu/W9EefE5+G6EhJg4ngTVrcshYw/bjwww717M919Ouwc92uT2dYa6J8h+AlaIaRzQY4JE9Hk6TaVARIzWZgZ+rhYceEBqcslNuUtffVxe/bZZQhv0jiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5230.namprd11.prod.outlook.com (2603:10b6:5:39a::13)
 by PH7PR11MB7099.namprd11.prod.outlook.com (2603:10b6:510:20e::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33; Wed, 25 Jan
 2023 11:56:22 +0000
Received: from DM4PR11MB5230.namprd11.prod.outlook.com
 ([fe80::8eb2:726a:3fd1:aefb]) by DM4PR11MB5230.namprd11.prod.outlook.com
 ([fe80::8eb2:726a:3fd1:aefb%9]) with mapi id 15.20.6002.033; Wed, 25 Jan 2023
 11:56:22 +0000
From: "Tyda, Piotr" <piotr.tyda@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v4] ice: Add more usage of
 existing function ice_get_vf_vsi(vf)
Thread-Index: AQHZBXxfgIHT6Egrmk+0aYQN2MLne66vW4Kg
Date: Wed, 25 Jan 2023 11:56:22 +0000
Message-ID: <DM4PR11MB5230F84C32F5ADBB62713FA499CE9@DM4PR11MB5230.namprd11.prod.outlook.com>
References: <20221201115859.1175650-1-kalyan.kodamagula@intel.com>
In-Reply-To: <20221201115859.1175650-1-kalyan.kodamagula@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5230:EE_|PH7PR11MB7099:EE_
x-ms-office365-filtering-correlation-id: 47b6b4d5-baa6-4fc0-b1b5-08dafecb2dcf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WcNYWnflRK3iB3G7avn/uRUcUiNSYrS5WbEbHUufygdAUYYauOXP0bu0VqOTvJ/EytfnxYMdWP3hCXLUGZMvuzvyr3ZUrBUw9qfsioUNTVIIWQ/5bv0rCWY6wA5FiR1ndrhjXUshmft0KbvK0kSha/4Sd/XRt/mT6tyhQt+J+suhQfuehXgoFCawz+L9uwfwE0vOKXHYYVYE8OcRjPiGsFK1JdZyVRzfAYkBWYi054vsF/Wt267o7WKZWfm8B1XCibJEV+VBAY+vDVHlvJCg+qL+B6PotFf3LxeE7weWUjQqUdIk2WS6a9ckEBObtSuINTT4fNIn36rD5t5mrlzZzosJO/sulfaReiPUVeDHPYfZXrrZSudptTEAAgRtvSNiyrt+9ztGswUlloBdEdA+8vWS/49mMlDziteOVNK9Ti5XJkwFrDKOBKME3pkRPlNWoXQvtzEDwFrGwp/7StC834763ZkA1To9SnHV+EKmCanblla/bYp4al0JIil7ARvSCj5YEZFKzbd02WMQE3Ap3RC9E3ecGwX5lQY3dUglvC2t9hGl56oCHCZexa1nPGVzVFqUtWKn1CUISr0TjchhOwAy/aPGXnrrbqyYd3b70AH2aDTYLnlntfPnpp7rxO6Hhe69tsvQrZ3EMNS0WXJEubMd7mr7Kad4d6w1VRHGkjhPTtkhX8dPCy8daHsiHFikq6rzM32jt5/NC/AvPW60SA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5230.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(346002)(376002)(39860400002)(366004)(396003)(451199018)(76116006)(66556008)(86362001)(64756008)(6916009)(66446008)(83380400001)(52536014)(122000001)(38070700005)(5660300002)(33656002)(82960400001)(41300700001)(38100700002)(66476007)(66946007)(2906002)(8936002)(9686003)(8676002)(316002)(6506007)(53546011)(478600001)(55016003)(71200400001)(26005)(7696005)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?EEOqvCxV8hMBZzQVM9jRV4MX2vrdfyaSSkrPAXisZBWnyufhiVfz03S0Meik?=
 =?us-ascii?Q?90gkaf5A/U+YM/YiPCk/dOLA7eDokv6VZ41udDiRyxIZLquRT2Uc3/XgabDO?=
 =?us-ascii?Q?0h9LizXaAdJTiIroND3jChdyRa/oDLS27GjmaXXv9LiNaqUteoGhVt05dkbQ?=
 =?us-ascii?Q?noCAe/C1qOhPHrneBDB9P3F1x0LmjP2X3cQxWKroyxenobnyXj1O69QS+OtF?=
 =?us-ascii?Q?aodtHDVH/VmTTT2FV8CII6Otsa4fIdO0J39oR2Ya85KsVPoZc/CtfuYwmpRo?=
 =?us-ascii?Q?db+GEkN7aUQHoBIfXzvjDNCMTORYmUBWUBz29LovQhMPzRCK6SBF4yEuj4Cc?=
 =?us-ascii?Q?t6tB4dga9pBxH/wtoQHVEZSyX1bAHIRdSQbGFYHUxW6t1G8wygTVyCJGnWMs?=
 =?us-ascii?Q?G4yPBJA0xaERMAvVhfC+TmUiBbQIqYSz3rMvGRWuNT6J4gbIkS5chsUru3LJ?=
 =?us-ascii?Q?lSCOVr28t/HsZG9ccJWCG0qLzmniTV2yG8wiXuA6yuKU20VXh8WdM/O/LX+q?=
 =?us-ascii?Q?CScejw52p3aDkK7tW/lmq6/ZhA6KWPvCR/Aviq7LJV5ueoWXZt+bbvxBcj16?=
 =?us-ascii?Q?5K4YACCrNiJH03wSYkBAcgxHWNDECsZ3K2YGeUIQW8XiWXq9OJQA0gcEuK9K?=
 =?us-ascii?Q?p4Ld2p8l9qTfU2g9oIzfqgQDbzPth8Lg5cMgk1qk5EEZEDLrNaoOzt56M3pZ?=
 =?us-ascii?Q?Yy2LljfQCCMPD6s9b2kb6HR3XdfS54oyRFeYeq3zkMs9SAh0A3kCys/CS9MO?=
 =?us-ascii?Q?E51llx4A1COdA2b53YlyMhdTgpK4PovNxlqtzoVFlaYFEO32EBL4SRExGRiK?=
 =?us-ascii?Q?vkxXll+pFWPIhbTx05+sTcvJLqtx3GH6sw9qA2akr51J1qgiP3CDUHL3ASug?=
 =?us-ascii?Q?tU7rna0Q00UiNXU01RULs2K10z88sYg+Icxnnan56mGY/JL1oQbf9YKCbSU2?=
 =?us-ascii?Q?bId8dX+2qIy9cpWtZcAslSJ5yN1tWbfZ8ySVvIgbo1H6QaAr9Zi3bd1nw5N7?=
 =?us-ascii?Q?YxruOX9oWmLikgKhwbbYVfU6Aw7DkR3Cy5AAzlnbxtWgcu7QZjCPxNbXZhB2?=
 =?us-ascii?Q?BJt5aXXZ4jvYrn78B8dpUajnad0WfZEpcKbuCBNgOQJflqVBVSjHlo2HGdFO?=
 =?us-ascii?Q?zGsvzdKAEm8jA55uDdHTpngXoH5QE2D90jSvV3Lnnni8gqSh4dcPs6LYGZRh?=
 =?us-ascii?Q?qrgVXl8jXi2xOJYm6nVpW6/dIxd/gseqkp845sHDozmts861ENK1bf5ko6i9?=
 =?us-ascii?Q?E8XZoSufVmFP7lfDYgpi9tuVUXmfXR/v30KHU4KJKgAtNfdVkcYsNdPAXUgo?=
 =?us-ascii?Q?x1/BtiXpwhM6YKLY+Own/6bRKMyMHjitIuvxqkQTJwF7wyXvu1GyIJ1EGoyB?=
 =?us-ascii?Q?zF0WfgkxCHcDvexoQI0ey8bJxfOX7UPw15IiasqjYQyrdJEOERKiOiTQK7Wv?=
 =?us-ascii?Q?jtRaFguoPEBVMm9Kgk/5TA4GOusrSKTuFLkWYZHwFDbCiZXeNoCOjj07KtJM?=
 =?us-ascii?Q?p+KuorpPwlI/T+NFra724u+0xfhxe0Kt9G08kpIWkyohImei5cIa+tNxgisk?=
 =?us-ascii?Q?zGhb5F0A0irKz/26ZJgNNurlK5Dzk0WEmxPKE9zH?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5230.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 47b6b4d5-baa6-4fc0-b1b5-08dafecb2dcf
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jan 2023 11:56:22.6123 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RJhbr8X6IVhy9rg+YnCXcV8Zm8zYtr2yzU7/fHMJ241/6sT7K5J/zEQdKjfQYCE4sehzK285vnAwUrHTB48LMg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7099
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674647786; x=1706183786;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=0wyeMVD+gPdsOjIaYicz694PzS/MiiNas375Rb1/4Eo=;
 b=A67tip3ZxavRducDcIHUsYjN+T4Ee/mIGCrTaTENYg9i88pia31oxaWx
 r+IGaSmyFoyPIseJbbfzlk/y0ZT35/4hiR6U6wD+6RIWuU3BoL2jfRUeq
 CU8XcgvikHb2DbqlcZb73qAnvPii3/pOUi+wwyvh0tZUF4FeWUaYseDUV
 PL50aITDb+h2DPFHgDvukop93XyymJcEAZQhGR6s/VJUqlWSl3ncom/ai
 Z2JZmk01WYK/tjIBUe5uYrIeCbae6qdcGITBT/MRlCSRjbkJ5H6cv7Bti
 eKgWcMToEu1oUcLxSvqUQxg/wQxBmoI9szFezARpd/D2z5l8AEH5AsLjz
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=A67tip3Z
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4] ice: Add more usage of
 existing function ice_get_vf_vsi(vf)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Kalyan Kodamagula
> Sent: Thursday, December 1, 2022 12:59 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Brett Creeley <brett.creeley@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v4] ice: Add more usage of
> existing function ice_get_vf_vsi(vf)
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Extend the usage of function ice_get_vf_vsi(vf) in multiple places instead of
> VF's VSI by using a long string of dereferences (i.e. vf->pf->vsi[vf-
> >lan_vsi_idx]).
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Kalyan Kodamagula <kalyan.kodamagula@intel.com>
> 
> ---
> V3->V4: Added change log.
> V2->V3: Removed Fixes: tag, Since change is refactor and not a bug fix.
> V1->V2: Renaming from net to net-next in header, as this is not a fix.
> ---
>  drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> index c6a58343d81d..e6ef6b303222 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c

Tested-by: Piotr Tyda <piotr.tyda@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
