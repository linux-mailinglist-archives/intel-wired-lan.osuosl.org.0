Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B5A870498
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Mar 2024 15:55:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AC677411A2;
	Mon,  4 Mar 2024 14:55:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fAYOdZfp3TCb; Mon,  4 Mar 2024 14:55:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1532341193
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709564153;
	bh=NeetdZa0gpZzv00PjsZxzurPxOG1ltnnVG+McOB/Aus=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lSDg3zfURGLNznU95ZN0WSwO4i+C63xtUO6+dT9xhV749TvFK+dkN/N2v7C0h+oqh
	 I9rr1Gf4XgbS+zyPl8RphS4nEClcReIHmPagAhZKJ6mVb2h/V3B3zVFYzoS1QHMlAb
	 nNkpEErO1GtVeZFH2w1lmRYA7NX7vDh43bVn/TsQ5X8bEUfLTY+sPfAg7smhWySjRd
	 pkQNe78PN7L2ALL7TrS2cU+N9xZwqU72Wk2kf8h+YNPj6C0Pb+uw08SE62BtzhgjvK
	 3S1wR9pLj4WdEbjXf6jyPisCKG7N6IWExVrt4DIocU+q0rUEnvQ7j8WSZC1u7UP1TJ
	 YmtfyhPSZzrBw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1532341193;
	Mon,  4 Mar 2024 14:55:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DBAF51BF2BD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Mar 2024 14:55:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C80334062A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Mar 2024 14:55:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VyChHeyQYi5U for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Mar 2024 14:55:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 91AF940532
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 91AF940532
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 91AF940532
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Mar 2024 14:55:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11002"; a="4223191"
X-IronPort-AV: E=Sophos;i="6.06,203,1705392000"; 
   d="scan'208";a="4223191"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 06:55:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,203,1705392000"; d="scan'208";a="13578792"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Mar 2024 06:55:27 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Mar 2024 06:55:27 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Mar 2024 06:55:27 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 4 Mar 2024 06:55:27 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 4 Mar 2024 06:55:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CgctTaTZDInIJjklzVI5oRGq0yei7EdqeLXqisbiUN/hxpX5lXOsHDw6ussJ4iBQp9/QwD6lNv6wFHUvEdbsEdEcNYBu1t/Hk5lTDFf8b8ocZdEvv754isQxoW2O6ofrxwcu5yf7AHM06RjttP4wnDes60i3hP2yWfWV0cftR/8Rdvaee+DmIrNat68WETrZ+FG0UwGSkbfYF/tb4q1KxtHjnJXI/BJtWTna5VwTBza/yu6B3jr86Sle9gHZxRdKtk1Nl9CeTxxZ60C4ojLkYHW6rOHGuX8OzUsUo64Su5uxwReFYOBG+RJ+gteXAhfSQmIK6pWgKapPW80sMY0lhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NeetdZa0gpZzv00PjsZxzurPxOG1ltnnVG+McOB/Aus=;
 b=WrRQF1Y169RThwn45GnYxorX0D8ogtYmriyVZML1Qx/a/e7LlvFKFjDLw5CK10Hl/3hc/3Z8kIeFCGYSvC4WjAo/EVpjaBLuoLYzgdjZ3N3bwd8lUSwI5AssShBpE9LEli8hMJCIbpZR3MWT6i7HS/3Vy/2dGCnunorcY/3zVlG44TeoJg6pzPyYJ7a0Gzn6npr3zWGTtOCx8rLHN+kJ50sWDw3WgVg9eR3zTJfIbd98Sy//LmgKGZtajIVeWmfKpWgGv3jMyqubIVTdKJ2IhgQcHBP9Q3rzwgzSOYNJjipukIvpzg3HRRTrgGh0Hw5DHaauKTlAeTAr32iAdBSc8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by MW3PR11MB4713.namprd11.prod.outlook.com (2603:10b6:303:2f::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.23; Mon, 4 Mar
 2024 14:55:21 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::1859:eed7:cd98:cc08]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::1859:eed7:cd98:cc08%7]) with mapi id 15.20.7362.019; Mon, 4 Mar 2024
 14:55:21 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: virtchnl: stop pretending
 to support RSS over AQ or registers
Thread-Index: AQHaVI/bFI/OPusLOEOFALdsVvkjZbEn3qZQ
Date: Mon, 4 Mar 2024 14:55:21 +0000
Message-ID: <SJ0PR11MB58659DE4288061171ED0C34D8F232@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20240131215158.2173207-1-jacob.e.keller@intel.com>
In-Reply-To: <20240131215158.2173207-1-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|MW3PR11MB4713:EE_
x-ms-office365-filtering-correlation-id: d6aa2969-cbaf-475b-9581-08dc3c5b1d75
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4PYdqHYyD+bamjZcAPfFxvtlJRCSCNFyVYkoL9D1w36vNxlwnv17eYopPLK4d99b/KFQF4NI5fjliZnCXSYJklhrFyIjkqQmdA/3iuzL6XWOuiNI4uq4agAz8/WIcYI3bSwG5Byr93vdE+KBhId1+w2OAMvWgof3POuVPmvcXiiggUlGH+OpgpngieXtq60uOMwjWuz11dqGTqbverZTK47ITdVrJCCSOP6fR0lg8EITjrUBJdQm/SY0PQbgDaL34ID3qXjzl3CosFiFSlWFMi/tFk2gzXT35EAnVTU8/ldxrJDgu3NtEpDAqMfIEA26M2aHEcQQprIOdkNpzTXZO5A6ripik6vfkeLrfhSrx5lvXkLxpMcMGR9QBAN4J5TkaM8hWjcUwfE1HPAh+1MMi8kduDxIojJMJ8u1qiualGpJkR0TTbs9isb5+ELXZ/Ny+XJbbWfkPmonb8qCCFJhXXak82WexqRya0vAmAP9QDO+5LSyCUv8pvZ1z0F4rdBX9Qgw5zcI6XCvexFuabm4OINvEia3IGpmEL1zUwnfPjHTGFZUBtyZGrVQoD4mEdW+gaCVAIWzqtbuELF7yn2tsn8BpWuD+A8dnR4mN+N11ybTcIslDdmvaMY8rZ2KQjz+PmuA/Cf7eDckN9zp5m1+BNhHmKCle6knI+cA9eBkf+AmiMP5LM3dXLCIGUkRHJYKWNXdpxNpnR8Umwfn5VIL6bPuZcB4Kvo4RC9ahcvKl2A=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HApV+Eo5kNvsy6rvL0VoyhYNBXRaywZ15Mkv6rfaZaTjBO+ZoRBJoFvNvxge?=
 =?us-ascii?Q?67eWSK5Taowmro0C/y2A2c5CHhTu6VbPaqL1v/n7FQbGL2Ag0xgu2olvideI?=
 =?us-ascii?Q?QqQKabcSX1/SKtinbpaGd72E7EuZylvvfB91NF7/NU1VkJ+Ztmu2SGMuLVzK?=
 =?us-ascii?Q?ky7IuiknP1jr47Kq1wMpdPVIzar9xANoU6HAeIst9WrhDaz3WBxjGOpcgXy6?=
 =?us-ascii?Q?Dmc0VUn31/GcEUA1OJ1jjTHTOH18LNV9JEMc9QkndzkQC+jZos+v8/yEcVRW?=
 =?us-ascii?Q?dN/LuVsZ4svt6ZOVR5PEy0tSw4Lxc2fUwAnVkQtGdUQzpmUP0FS0TuTYD9nw?=
 =?us-ascii?Q?e6gVBEUvNue2MgcDj1oyK+ETR9gEuFG0kU2krSBN4v2dSDbLHJ/zoAyhl3Ay?=
 =?us-ascii?Q?vHrtupbnLrgnyx/mwCd9/1+2RVIA5fRUaxsIbyifCRCncfSqP6QrCBK/J4Jc?=
 =?us-ascii?Q?BYEcdrIbmPbLkBPN3iReIYxsJHAuLvoHTd2chURiyIJhOjS+iSJwBTvTYYKk?=
 =?us-ascii?Q?DzwyrCig6dmYjeo4PJFPD4n/TAbUaSeGlO2VGZqvHqYkUy+TV3gzkFsajucu?=
 =?us-ascii?Q?HS+EZxISuWBNbQHl6UdlqFZxW9N/9t25k5EFJiXO22EV8Xw1RW20s384J4Qr?=
 =?us-ascii?Q?OIucAV5JaJPtlipkhM7sYHZqqKfTNIqxR3aeIt98bDmqyqIplJ8XIJ+082NJ?=
 =?us-ascii?Q?4ADcRDzCnG+JCr7fIMDWVvH694uzZ0h7n6K6NIc3QPKGSZsUFV9BGeZxocBb?=
 =?us-ascii?Q?Gj5p0MOc6jdA1D4KTC/AtXYTdQ2S7L8tqB57YzBaJom+gmw9FVnce3tAdYOT?=
 =?us-ascii?Q?eBrGwnps2dgtVl57WOg9KiXSpwDpLGKnx+B8xMRFHHMcPEyc5X7ou3WZB0rt?=
 =?us-ascii?Q?zxBhlMs0M8n8FhEyZq/PgCPLGNz1RRUfN/93KEfR2CVhxLhV2BG64Vm/jcjY?=
 =?us-ascii?Q?BYq1rHe0TQ803alP2ghtJcvG2dQPtqjWj33CSFuErC/SXEpTLup8NrIDXzJy?=
 =?us-ascii?Q?HghaoUmTt4MLa04MVV2KdoWLyW41BBcZoUSyHLxXfzibJtrLNJV+Qa5cSznD?=
 =?us-ascii?Q?tPTAsfR5Kf0HU2nEkem9l/WTTsdZIxrwwTn2uQs4dCJcZCB/CVXvBCgQmwoT?=
 =?us-ascii?Q?In0PZLGf72JO3ceyOlSLUAMmXDpKR09MiMQJ34KGY9WhF3FyF+FEfEpOzdE3?=
 =?us-ascii?Q?k+ewtSvNPsuDWAuLTyymVhhqJ4KC8NjUr46uJ459EL3YaO/1/Ud24nw9s4rq?=
 =?us-ascii?Q?/VHhgij3vicTlegNYgi1Htd8QPnIqvENLE7bnDzmWoSD17dRKJfkjAZ6yPSn?=
 =?us-ascii?Q?/6xLxU1RwG/Gqa5MCYYKXUVcLjpwb/ZLanK9uPqy5dpMP1CgiluG3D/63UZD?=
 =?us-ascii?Q?H/q8X0wCpUJ0r2vDKuCws+cFCVfnWIas0mICnfm4wSVZKPOrCt4BOeFzgph4?=
 =?us-ascii?Q?gGwYiVOS9lZN2h0HvRX3UEFu9CPd66c0W+wmeCDBpBJCw/8Wb53FZHhT1B98?=
 =?us-ascii?Q?Ay9xE7ec0aH3tG8E6dxguJwVDNTnokfXtSMJ3tjEaHaMCdpYPTfZRv6WNQlD?=
 =?us-ascii?Q?CDqUdAVdMnyc7GDW3Ht1IKpakMRuaW+bTRP8caT+?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d6aa2969-cbaf-475b-9581-08dc3c5b1d75
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2024 14:55:21.3220 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VrHbDWG6nxrVibjSoI3x9ACu2rVMl0dA/NTXzaz3yOFF4Z+zf9kibkmYviLSEv7ogMJw6zWOZDFdWQEWuxWsbAsBO9FmsqOkYbBTbzMsXOA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4713
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709564150; x=1741100150;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tYDxYdXmascZ3dHmXY6EOlITxuxFUBssB/z0j/56tSk=;
 b=f2APGq8MsXDcHaICAgJu28R5Gk3Iku/DtiV2Q9VedasL2kCtURAI3NeX
 vmhEA6oi+w2ESqKHZVf8mkXZmRqJ/dqFVnMDFYcDvNjRRlE6g2eJYIrhJ
 vkN+zX9TlGZqTUf3cLxEV/bLqfhXgsln6GAbRlnThKHuPtyy6BVHuxvWZ
 fT4J0JL4UydcujVjvjdCrV1AyapfJDK0cJ2DoX3frRAJyTesxex6DTOag
 xBf5BqBoE+aqUTtcGXvj/jVld7aHuDpNsuQ4tzB/l4OecVq0aJtv7uTml
 CkGqkDzcd48z/OMqeCdSi8pRf+/wkvsC8BmYK0NB9NOjI9rNIiQh9gvhU
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=f2APGq8M
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: virtchnl: stop
 pretending to support RSS over AQ or registers
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Brady, Alan" <alan.brady@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: Wednesday, January 31, 2024 10:52 PM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: Keller, Jacob E <jacob.e.keller@intel.com>; Brady, Alan
> <alan.brady@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net] ice: virtchnl: stop pretending=
 to
> support RSS over AQ or registers
>=20
> The E800 series hardware uses the same iAVF driver as older devices, incl=
uding
> the virtchnl negotiation scheme.
>=20
> This negotiation scheme includes a mechanism to determine what type of RS=
S
> should be supported, including RSS over PF virtchnl messages, RSS over
> firmware AdminQ messages, and RSS via direct register access.
>=20
> The PF driver will always prefer VIRTCHNL_VF_OFFLOAD_RSS_PF if its
> supported by the VF driver. However, if an older VF driver is loaded, it =
may
> request only VIRTCHNL_VF_OFFLOAD_RSS_REG or
> VIRTCHNL_VF_OFFLOAD_RSS_AQ.
>=20
> The ice driver happily agrees to support these methods. Unfortunately, th=
e
> underlying hardware does not support these mechanisms. The E800 series
> VFs don't have the appropriate registers for RSS_REG. The mailbox queue u=
sed
> by VFs for VF to PF communication blocks messages which do not have the
> VF-to-PF opcode.
>=20
> Stop lying to the VF that it could support RSS over AdminQ or registers, =
as
> these interfaces do not work when the hardware is operating on an E800
> series device.
>=20
> In practice this is unlikely to be hit by any normal user. The iAVF drive=
r has
> supported RSS over PF virtchnl commands since 2016, and always defaults t=
o
> using RSS_PF if possible.
>=20
> In principle, nothing actually stops the existing VF from attempting to a=
ccess
> the registers or send an AQ command. However a properly coded VF will che=
ck
> the capability flags and will report a more useful error if it detects a =
case where
> the driver does not support the RSS offloads that it does.
>=20
> Fixes: 1071a8358a28 ("ice: Implement virtchnl commands for AVF support")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Alan Brady <alan.brady@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_virtchnl.c           | 9 +--------
>  drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c | 2 --
>  2 files changed, 1 insertion(+), 10 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> index c925813ec9ca..6f2328a049bf 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> @@ -440,7 +440,6 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u=
8
> *msg)
>  		vf->driver_caps =3D *(u32 *)msg;
>  	else
>  		vf->driver_caps =3D VIRTCHNL_VF_OFFLOAD_L2 |
> -				  VIRTCHNL_VF_OFFLOAD_RSS_REG |
>  				  VIRTCHNL_VF_OFFLOAD_VLAN;
>=20
>  	vfres->vf_cap_flags =3D VIRTCHNL_VF_OFFLOAD_L2; @@ -453,14
> +452,8 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u8 *msg)
>  	vfres->vf_cap_flags |=3D ice_vc_get_vlan_caps(hw, vf, vsi,
>  						    vf->driver_caps);
>=20
> -	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_RSS_PF) {
> +	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_RSS_PF)
>  		vfres->vf_cap_flags |=3D VIRTCHNL_VF_OFFLOAD_RSS_PF;
> -	} else {
> -		if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_RSS_AQ)
> -			vfres->vf_cap_flags |=3D
> VIRTCHNL_VF_OFFLOAD_RSS_AQ;
> -		else
> -			vfres->vf_cap_flags |=3D
> VIRTCHNL_VF_OFFLOAD_RSS_REG;
> -	}
>=20
>  	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC)
>  		vfres->vf_cap_flags |=3D
> VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC; diff --git
> a/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
> b/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
> index 5e19d48a05b4..d796dbd2a440 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
> @@ -13,8 +13,6 @@
>   * - opcodes needed by VF when caps are activated
>   *
>   * Caps that don't use new opcodes (no opcodes should be allowed):
> - * - VIRTCHNL_VF_OFFLOAD_RSS_AQ
> - * - VIRTCHNL_VF_OFFLOAD_RSS_REG
>   * - VIRTCHNL_VF_OFFLOAD_WB_ON_ITR
>   * - VIRTCHNL_VF_OFFLOAD_CRC
>   * - VIRTCHNL_VF_OFFLOAD_RX_POLLING
>=20
> base-commit: d0005e76b73b095138cee9d662831761ffde84a8
> --
> 2.41.0


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


