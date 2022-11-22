Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D29D633544
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Nov 2022 07:27:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 301A341676;
	Tue, 22 Nov 2022 06:27:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 301A341676
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669098434;
	bh=fqfbNkdXJeeKwLvurS9B7BXHjoxkbAqZ9scRDO4hE8Y=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=spM5kz3sSSXQB1dzAd/X1ojjxKjSWb95gQ2ZB9p0Bp3koU8+AEcR0XHvsY20bRDP2
	 8jdLMDOHpmegcBZLDRy01eIDbzwDvI9TBzBv96OWoTgdjl7sTXLUgXfRnVNGASJadU
	 ydohgRRz5fxTFbRejy3+3w6k0YqMWfeLVZEvrX7b43uDUR57dlasTfyFhhEPiaZf5v
	 3Y2edfyanwyOUgOkWjPWsdjl2SDkkaj1ceZDiqzD5zsud2T3maC8hFzYFJIxL3bcFW
	 tyl+ieXgAhoF4VKZVu4vDj+pw5LMj26lLeOkQQMb9uy05Cmm9Mw7foof3T09GLJn4X
	 3jRu6XP81iNpg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VlsuFHkhve5r; Tue, 22 Nov 2022 06:27:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C567A41675;
	Tue, 22 Nov 2022 06:27:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C567A41675
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6A71B1BF333
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 06:27:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4135141675
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 06:27:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4135141675
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z5JurfQLtJXu for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Nov 2022 06:27:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 317B441608
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 317B441608
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 06:27:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="314893913"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="314893913"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 22:27:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="815992064"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="815992064"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 21 Nov 2022 22:27:06 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 21 Nov 2022 22:27:06 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 21 Nov 2022 22:27:06 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 21 Nov 2022 22:27:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nqEzPGit4lq4mnFtYBhrach5y+LIpW22yDhEsc8ztJZ4bQK4plbjlujcSm/d3H6Qialq3L8eaUdlfAHwypPMLCau7ybbL5nwctxx+rjSjyARM6cfBQfIVhZfMWJoCkr+aol9WgfZMkTJMDSgA5X5DTNRhGxODJW1ftudtPvWltdWnCIlRwfZa7pIGgPnPSImnYbPCxf3s0eZNqQpFtnYlUP+K1yq+Bgl1tqvCMwlnn6Tf2fRuKOS/3MsGuIYEHSUV2esQvNjYpszCQRTABWJoiymYuVv6sKXrq7+C3vWZeoEKYBbDz6JwmgzyRuYSUrJOnJdpTxGxHNXi9QARQYlKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7FEHBjV96wfuD8y5cVnNiyKM8/JHaxVOmVTrKHG64s8=;
 b=Nlyh1ZjfYXR3Ubh5YEhdWhZVlMedLiVtfZhPxhssI//54y3RBPZ7U1i9fGkXNbWuvbwjwQrF8P20kgKnR401h9Mp+3Drr4EbskFGVp0auqBp3lGWNlUpX2eBpl8ogqojJYnioUglyfhvcK8TmhLM8mEfblvkbV7ECBxmGGH4WiBvzKWj45ZuXptrdUTkB7mETBdwd4dii+N32yNkH4/t9maq/yqWEMD8Wle//3k2Wca6uXOBQA6a8868ArUe41e2ye+RteP4OX7bwNiFdG1SzwfMLYIYRZhyyinAhCgmkkanphzQHiiBskfBI6bAG+kvzYHCvW9sGByVCWKOoJps9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by CH0PR11MB5412.namprd11.prod.outlook.com (2603:10b6:610:d3::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15; Tue, 22 Nov
 2022 06:27:04 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%5]) with mapi id 15.20.5834.015; Tue, 22 Nov 2022
 06:27:04 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Mikailenko, Benjamin" <benjamin.mikailenko@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next, v8 1/2] ice: Accumulate HW and
 Netdev statistics over reset
Thread-Index: AQHY+5UIxfGHOZVfzECIDJvwGF/SJ65Kf4cw
Date: Tue, 22 Nov 2022 06:27:04 +0000
Message-ID: <BYAPR11MB336769DCD7089F33C142E070FC0D9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221118212002.17023-1-benjamin.mikailenko@intel.com>
 <20221118212002.17023-2-benjamin.mikailenko@intel.com>
In-Reply-To: <20221118212002.17023-2-benjamin.mikailenko@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|CH0PR11MB5412:EE_
x-ms-office365-filtering-correlation-id: 1320feaa-8e9c-459b-8857-08dacc5292a3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vUXNTr+ZtNeFWklU5zrMV9HnTBC8kv/pAUvBu26rCpM7cpGvw+qSoMZGOVqWi/Llnh50BIKDtrsV4ls+S80FrTS2XNu1uhLiwzYMnG9+hrx7ixmT0yPGqBj4bv3cSGDRBdxQG9mBURs7sP8WBWrhZvRUyLcgXtHq0u7FqwtTJdTDNzME1yBooE/JZ5qtpXutLz9qCrICkoYyDpof9jRGwHWF1aWiBNLcRtNF2EZDTFJxFuWTRfXw3f97YjLzAXZzkm5HHrVLoip0kkN/QaoRb4i3hjePKVavEoCX0PZ978DblMLHcshQFiQkt+gn0QmeWAC5WWFEeHvzDYh+iqydjUoQ6N+6lk4Vy4wWhQiV5GAVzLAR86WPinYKqIS0wvYpacQHf5aLGpc6Ag2+yr8d8YddRxSk15/R/O/7U8D/ndw1zyoj2Rhp6T1fJiutB+UMtd/qh8s1QDrhcZb+k5rqq0wvWKCoRCR5gXqAvheACOmgiXy13KFItaKQGPOS642lZoC+FHAbv/9w/NlSszuGycy98mf3SQYGfBDlPooP3BlYurYm53b5E3hK9w41jmHrkHGwov8d1/KVfkDu6z0MZrt8wfsUQbPEzj15XBZ3sdClkUErkQMLQ2DRyYWYCe1biZY31mmMvWNj2tkgnB5VI57NQ4VVnbBl9i625FlZildS8BccnoImH4E1nG4ENwRZs+XxMdYG8avAwzBLkFWu9A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(39860400002)(376002)(136003)(366004)(396003)(451199015)(5660300002)(33656002)(82960400001)(7696005)(83380400001)(55236004)(6506007)(53546011)(316002)(76116006)(66476007)(8676002)(110136005)(9686003)(66446008)(66946007)(41300700001)(4326008)(64756008)(26005)(66556008)(52536014)(186003)(8936002)(122000001)(38070700005)(38100700002)(2906002)(55016003)(86362001)(71200400001)(107886003)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?T7S9GjmtRIav7Zuj4fZSB5ogEA3Vkfxadx0akIKXSCKXaf7RJMIuKrHCY/mH?=
 =?us-ascii?Q?YH8zmHpDzVbesWbnafHbIbhsg01kBTUGHBu3g/gTcGCwhV5kwqQ19BUAqGxP?=
 =?us-ascii?Q?kDJdPJJ41ceR1m28HBK8DRm4Szz6QFEE1ZTXFZKN1zruSx21HYwohR+/0eyZ?=
 =?us-ascii?Q?tJoJLI8lK4883IVKKEHCCsxxunaEWG5kclMVT+QlXmLV83aJerzxfs5CMSMV?=
 =?us-ascii?Q?BBKhzbEFxBCtGQtNV0x8utXvaZK9qQgJpQQhB7AYWhtsPko7ac9JxKb/gwsx?=
 =?us-ascii?Q?xcm6K6I3xSnie4CIUyOQf+5pc9k/TW0khUExAFl1jt+TbZKTqDU1/YiMadTD?=
 =?us-ascii?Q?B5rsY+emlNk9RmPVA4NCJn1jP7YymDXsNG6n9xMzHGGzPgMHnQftdM3sdrKW?=
 =?us-ascii?Q?4SSqycZwqgOnmDtOnAEPOBO4zwz1hMHM90LhLUFsKV+PhOBBWkQdlEsdAmlm?=
 =?us-ascii?Q?h2OOMnQZ2rhb0iTMCQqBQrkiUuvYIzPdg4YZ+rGR3jwlNfswS0duw0wKdu16?=
 =?us-ascii?Q?ZNlRz3kE4y+G9nTozfo03YSd2bJRYl90Oxb2/TO1Ra2RK74tSfgvvCWNf7Aa?=
 =?us-ascii?Q?TIVfto+QqBnhbidn3aHqhCYBzpKIeVaHoLpPA5bcxDoBD5hvPT4q/9TBB17r?=
 =?us-ascii?Q?mwhZpQ1n7AKvbJMWjtAmoeRd83iOPXAqJsgSvX69tIt9Q3OJ31C5xbgZ7tZP?=
 =?us-ascii?Q?8Jm3Q52Kj52i8gh+clh+CRmw/0Y11kE2BruKyUiaifdzHy6YssQCQlaQtleq?=
 =?us-ascii?Q?iljTIQY2F7hqGeufqM5dNzZj7P4qlpyAsfmQ6OEzXhi0RMZBLmKuOW+pfh1/?=
 =?us-ascii?Q?k9zajrBZoNPFW9CK8tU/srQ6vARdt9pRrizAoJx+rn9CN0J1P6KLkwf1GEOI?=
 =?us-ascii?Q?HCkHKOCZ24n+ghIWTRGdZ11ApsvklkE6K4S4XuvCtyTB2erS1dopeQXG0nJh?=
 =?us-ascii?Q?C+K99Bn5q7X4zaZO6OafJQoJWRUxu/I/WSL+TJGB/Mjv7DHKb44AFpMEDY41?=
 =?us-ascii?Q?DXYFEhKOoagJnQDb3CoGqQuOu65JbGaVt+xCAfA2UM29IjLXFLdguXIkHL9O?=
 =?us-ascii?Q?CjSOnRSB8h1cbi2QLA3afUIRT5GAU1qjPH+C+WWM2svGRYfq8HIMbs9J7w8n?=
 =?us-ascii?Q?CDSvfuhFMKzry0SmvMzoxIzGUBPY/Viw4K/T0/bcBOcAgqNe6TlNuECdLgVj?=
 =?us-ascii?Q?tZYsbRxu4Rs6J7kaKiau3JGy4hZT1KPtEHzQNQpypYqPDB/SCKK9BQYQjd7O?=
 =?us-ascii?Q?t5JqWQq1dpqQpXTIRrFP++oeGTYqXdedeyX4YpZg3nkI9nEZhyXeUCUzucTE?=
 =?us-ascii?Q?bzYFMq5C5ZVQgQJrI0hwY9sluw3Vc+ywl1LRNCQ+99q5taOUORuq8KB3gW+9?=
 =?us-ascii?Q?RQ6tP1Vs5svUePTF/nZ1Z/OSNYxCnCE8bT0Z/vDGbv/Qk+/yPStCGOq8zH8N?=
 =?us-ascii?Q?KTuL3a1S6/xii/am89Zd5XzRyI7ymuqtxKXQMwnQG5qk7AVvelK5L/VHVLL1?=
 =?us-ascii?Q?H3NT+mZr16O7gSjRdoRj5CJ+OlDPuL45GZkkQr6l4n+tPwomrLVg7PeJZJOB?=
 =?us-ascii?Q?IQdW8vXV3+sUZK8L5kz/Edndli07rwLHIjrHQlQi?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1320feaa-8e9c-459b-8857-08dacc5292a3
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Nov 2022 06:27:04.5296 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EYxqEPJXzGF2pZKYF9WOckAmNy9ZwGCHZGLyHonhrdwnIlazclN/VA2NpH0jw/p21tAuY0Y4E+R3PjlSgJdADw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5412
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669098427; x=1700634427;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0yz/N2sNoxrs98M4mVrE8EKnvo2xnheDwY8RMq2rXW4=;
 b=NpYn43qPHVKeXoeofF26jDNrDkc/ZbcPqBMY37Gh4OQI3ZHOXeHsP0PY
 TWZ9oFBRwWItqBRA5L1Jxldj06JMC0HsDioQ4kjOG5v36SJpTm8LwnWUs
 Fi2gdXV6OcytfD7GcEBTlnc0AcgrAUp5/JfTRYIAdA1i52SmcI8Dnmox3
 /IC2uvxJXePI4zffJPPxhj6eilSxEYzq7oTslGxP1aTE0eC7s235NWMt9
 0UW/QtleQFc3dMBxF5rz+1iasGQ5Mp55gm/vA/0qozBjRXiVBIQnyTz1f
 U8fJmRPl1aAm+lwqfDMRn6s7Us/jyBzD8Z75R1UYmGm4sUyssNCeABywl
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NpYn43qP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-next,
 v8 1/2] ice: Accumulate HW and Netdev statistics over reset
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
Cc: "Mikailenko, Benjamin" <benjamin.mikailenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Benjamin Mikailenko
> Sent: Saturday, November 19, 2022 2:50 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Mikailenko, Benjamin <benjamin.mikailenko@intel.com>
> Subject: [Intel-wired-lan] [net-next, v8 1/2] ice: Accumulate HW and Netdev
> statistics over reset
> 
> Resets happen with or without user interaction. For example, incidents such
> as TX hang or a reconfiguration of parameters will result in a reset.
> During reset, hardware and software statistics were set to zero. This created
> an issue for the user where a reset happens in the background, statistics set
> to zero, and the user checks statistics expecting them to be populated.
> 
> To ensure this doesn't happen, keep accumulating stats over reset.
> 
> 1. Remove function calls which reset hardware and netdev statistics.
> 2. Do not rollover statistics in ice_stat_update40 during reset.
> 
> Signed-off-by: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h         |  1 +
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.c |  3 ++
>  drivers/net/ethernet/intel/ice/ice_lib.c     |  7 +++++
>  drivers/net/ethernet/intel/ice/ice_main.c    | 30 +++++++++++++++++---
>  4 files changed, 37 insertions(+), 4 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
