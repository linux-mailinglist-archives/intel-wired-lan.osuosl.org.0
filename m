Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D8CF9727FAE
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Jun 2023 14:13:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6A01940386;
	Thu,  8 Jun 2023 12:13:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6A01940386
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686226405;
	bh=aSoIq91xcfnxul7cTAVwLeYUFe+Qv5PQqskGl1SJDgM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RHYft+Osb8n2GqkcYLIwlWHRXw3LanrdMpxcSNb6wS2v0WLMCyKHY+W9nng5zu0f+
	 Crj8ZuDpSPiyen9oqKumto1bIFbS6GhKMc7Y+m9vYE3BbAAV54ol71eOUh1412l+rS
	 BdBekJZOTFIGnPsXquw/UoLu6BOCleA2xoViuAuOJ5d/csTCnzObAx84a2FRAb3whT
	 fH7KCeHBY2BI7nb146LNTBtcVsIFXFz4hRTtEBcLRNUk9oRc1hXDDnGeJUPtTq46Ba
	 /DIoKLptdkmJt+Fim7+/yRaQaG/PiU2/6CaLOzcQkfSURjt7qtdYZKDmnsYfiWvssB
	 5VWbSBMhQpZeA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 28rR3VbKvZHi; Thu,  8 Jun 2023 12:13:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E65CE4033C;
	Thu,  8 Jun 2023 12:13:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E65CE4033C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 446231BF35A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 12:13:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2752F401F3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 12:13:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2752F401F3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SNTdRkMhIXl6 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Jun 2023 12:13:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DE026401E2
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DE026401E2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 12:13:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="337645828"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="337645828"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 05:13:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="799805561"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="799805561"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP; 08 Jun 2023 05:13:17 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 8 Jun 2023 05:13:16 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 8 Jun 2023 05:13:16 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 8 Jun 2023 05:13:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l8AuOIM9bVzAPgLdt5YbIR01Knh9H2dqmbcmm184pTgLDpjS4qZQfZHmpKPgNQHTatI1e5olAkH+MIepkebgVQ31S4xvvF95YgxEV4PxnGjudF3weoVuo8cXv/kwIJUAke9ZIAXAEKVgJsTTH5S3Xd07mZPeomcQDYiDgv03bAhzrZetSMFVg+KIHPkeE70vXiHYecJ6cOonIdwzlu6yeCevaLPESMx2FbAJcpemgCGVCenvkVPevZMCy85WFa6m5UjwY0I4yCUcCUQByOptpoyI+TF3E3TjijjdroSnflgMNuXbLjkABZqQpmdjZ4A/ci181TbwbBKYBbSxChy/0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NNQazlNnLQEvwt0f15hGjMLO3UAqLWEuuBHqKv2/x3I=;
 b=Z7MwmWoNqVStN8TlkvhRV38VU9diiFSbscqHNOW7/f17hXVhrpXOtUs4vse2bo8pTh9cELJEJVMSIezqde+QeX/nIxN9Ptlt9CONT/WY14GnJy2CmRSLkdociFtXedl+5lA/CqN9vADRfY4vgBjee12LegVrPNfLzqsvBYiTkxDF8ricMqZW9exUM9Sym+VSqZepvvRTrtWms07UZU11QCKygzG+A23w4EiIOhiKrGs2f6neGUaXLDgfMqNdVLx3QAsGgW6H6KcfUyu0Qnzct7+5TV7x41M5rKEnrm7i5VrozYVQ8ixHp53FIKXlV8vurT3tdN89MjlBLAd8zEmWYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5354.namprd11.prod.outlook.com (2603:10b6:408:11b::7)
 by MW4PR11MB5775.namprd11.prod.outlook.com (2603:10b6:303:181::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.33; Thu, 8 Jun
 2023 12:13:14 +0000
Received: from BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::cf52:d7:14f9:f2bf]) by BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::cf52:d7:14f9:f2bf%4]) with mapi id 15.20.6455.030; Thu, 8 Jun 2023
 12:13:14 +0000
From: "Arland, ArpanaX" <arpanax.arland@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3 3/5] ice: introduce
 ICE_TX_TSTAMP_WORK enumeration
Thread-Index: AQHZlM5CG6KsOLEbD0qHiPlKcQr5nq+A0ZqQ
Date: Thu, 8 Jun 2023 12:13:14 +0000
Message-ID: <BN9PR11MB53543D6467DB4BDF238BFA548050A@BN9PR11MB5354.namprd11.prod.outlook.com>
References: <20230601211507.707619-1-jacob.e.keller@intel.com>
 <20230601211507.707619-4-jacob.e.keller@intel.com>
In-Reply-To: <20230601211507.707619-4-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5354:EE_|MW4PR11MB5775:EE_
x-ms-office365-filtering-correlation-id: 613f4416-b5e4-47c4-f9b1-08db6819bc11
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4n079HbVPrWt+oryNY0jtzi05HT/xcG8C55v9k3DfEhdgDd9aoFfykUAQLCnAc/AlSCj5yO8N+34xyN1xA8Q14hy+0PLzxXHWRbBWQFFDOS3zlfH0yqPpwCgvOBLMmlo+i6Rw4Q+kVMJ2pOt6KJaS/NrQ9KMvEsjMOiVkV5320w869BGStLloepKa6iWC32PUSMbWhv9kn3Dtt9i1NvgvyrQuxIgDUlG6SieFhtH/aCXxtkghIAtKwR7DDaVfgZ/Pml3Ob7IiwX37GIMEr4eFmavBJ04LAeX/9fezb7l8pGX2Wi+hB3UbTZuJQZjUuC124CxHaTgLGkh5l54fgyt9TBrVyR5xl5Yl1HYIkEiI29WN0xHADh3oG6hYXT2jAMZ8/C+tzH1kvrOI+iCKHlatcccf0pGztppKlU2Ks/RWgbtay6VjRDDBhVYZw97QVgkt7MlG7cz3MhWIzgvTATnEImGphQ/9VThie7uPzHb+tW8HUXs6iCcKDaIxJ3l0/cBq31WoNZE9ld+1CWrFf5D5NUinBzFCuN8tmZuvIpZiRGXGJZkIDhaJlOrnjDuDlLeTtM6QvO5hqiPoyOziAxQ5sy/dunhmZ73sbMR1Yks9yM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5354.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(396003)(136003)(346002)(366004)(39860400002)(451199021)(5660300002)(33656002)(38070700005)(2906002)(52536014)(86362001)(55016003)(71200400001)(966005)(83380400001)(53546011)(9686003)(26005)(6506007)(82960400001)(316002)(478600001)(7696005)(110136005)(64756008)(66946007)(38100700002)(41300700001)(66446008)(6636002)(76116006)(186003)(122000001)(66556008)(66476007)(8936002)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?PU8J/ez5+cMRCBiINM0tkN7Pl/rF9h4p8aeuW6gPjc1EV3NKFKUYbi4PQvz0?=
 =?us-ascii?Q?6kh0KY7yzifw6kUpvHLLr938ibYV9NRN7bSa9lRbXm4OleJrbL4wTZSUHUe/?=
 =?us-ascii?Q?WyLSftcJfK8GBEyFeM9hdjXwX+kG+xJF4RduMb8/vX7OHYUB5o3n1rZnNlUb?=
 =?us-ascii?Q?iMlTqae59EpdPtavnreDc8a8DmBeYWQPDeYkzVVPGuLQe/Db7RypWZWBF1wb?=
 =?us-ascii?Q?3eQovTe+RSXg3GY31mPIojkzH/dQ00CCurOaPLzknE/aTOai52Xv5BBfxmjk?=
 =?us-ascii?Q?qDE0bd0tcAoyING+y+2lg4WBJ7IPxzJPoSjy7KpmvBhlF66MXugrXjXxW5u0?=
 =?us-ascii?Q?Bbtx0ED6xWf6oPWnE7YsSSN995LLGo91cBnXSL4jD3kN0GNXvpE4iA+orQS5?=
 =?us-ascii?Q?gSebQPLseVtmI/TVKfnIu0Tlf/8t2hIK1tVyie5yCf5jM+jBBKv975ItGHGK?=
 =?us-ascii?Q?n4C6io7rgHTQCsIxj17A76ooVZsDqdIwZeO8WaEkZDgZLoXMXh1vpoaDOj6O?=
 =?us-ascii?Q?mmk009sUhJYxNJKkwHOOKGp1hRbIOpwy8KslOBIbg/D+c7mchpgcUbjI8P1z?=
 =?us-ascii?Q?Xx1lGxmQAaf+cfyf+Kjp+xBnVHqsAZY+1nJwaVbCcV+BdH1qATuOPCibvf9C?=
 =?us-ascii?Q?/bdgxpynnpXIo7LvsSpPiljcs/oTQrcN39Lw54tgXE/0Y4MynGCEcqM9vgGF?=
 =?us-ascii?Q?g1J8BFRN9KgMBrUpQTHsdRfy1NHKmqA8b/m84/3FpTdPpROJASfYoWfzJHsI?=
 =?us-ascii?Q?h7yPT14DgU+u/xRKN0L2/7rWZHcfhAZ9gcva+GWp5NbbwzZXnmkkAgvCuWi1?=
 =?us-ascii?Q?2aTwoLGbobb88y0s/u6Rw75RvcCTGUoBxzlVMW3ZQGFfKxZH1KyuyADI27oH?=
 =?us-ascii?Q?jRTpNjd+HGqDqWJjCVM9W/NbLpayfApB/gkBjGANpBUho+PUoJYNNID8J7nA?=
 =?us-ascii?Q?8BK9Um8Pd9Wl010tGC/ThPz0sYruvbXMf+9Ei6lqmMY9ccIg7D+W60xG186s?=
 =?us-ascii?Q?UhS0isQGWqHkO6FcRRjwsQMKt6F6yucNeLmCZLtYG6Hm/JkCK1cOYsh2o4Je?=
 =?us-ascii?Q?rNv4O/WNEI87OMBKh3fMIth2QIGdZlfWzUleF7kzLzOzdPkJNCnIHLv/qaFP?=
 =?us-ascii?Q?wBwbReIMawN33ozkD7kSEgsY2yxnnm4WEJVfw40zDV+H/EeF1EfscZPnmWaR?=
 =?us-ascii?Q?qONXqV3RraBmdtuWuU8wutEq6BSbDzF28BgigZi0AnVm/CNXJV9aFaoYRf2p?=
 =?us-ascii?Q?v+XzwFY4cqcbDiuJCDVabjYp1EIabLuhw+jlXWbh5C9M6vNcCrNtiZlpY8Kb?=
 =?us-ascii?Q?xFsS/2WSooa8099Z91jfd3/GbeB0AQQ1KyrdNTLi/mB94necfPC9nrQh2Z0+?=
 =?us-ascii?Q?/gXTqU0BrGFI8etR36eDP7gRa7yWLVsXpEHBJPseg2aai6bj7UZRl5Mw/E3p?=
 =?us-ascii?Q?vYYBWR84l0Gm4Mws8/mXj3rieGwY7rqnIS9xGLXDqxaFoqMSuNEbGnlMYYaB?=
 =?us-ascii?Q?bjxaz3aj/YgVzfFW0oDuIycid8QmS7OUbjBNUk8PmfJBs7mPfZoM7BfLOpXx?=
 =?us-ascii?Q?bOxu2qWhdKUYdIYzX1wOjt72H1kajemKmDPF9nER?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5354.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 613f4416-b5e4-47c4-f9b1-08db6819bc11
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2023 12:13:14.1740 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IfX0IzgNyreC7f55bD/KYl1+8ZR7ZHrx81o9WEdTs7/Z3lnrbsykRnbuRj/P1geWd1csBCQOf/xl47io1Ecu22UHxH3GaqywbCY7j7Isxdg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5775
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686226397; x=1717762397;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=2gcfXA42eWoctIp1IjJH9qDOJcFgQqVFROf/fZCzvgs=;
 b=bbDFhQD9Z5P/jvHejnfEUJCxbfd6vrFqvyvDMx2KqAeKQlh04GYKG+tp
 ULoyfdH/Bdd96PX8zk3WwuJZ4phqQdyN476Kg/Qxs7nyliK8iQ+tpeRk2
 I+0VE6umlo1y8dB9GzvGivt+Z/Ox3/XXOvhzDluk6ouJpeDtJK40b61eh
 fEoDpQUytxihWd5owcENM4qkmVDWa/njjpQYWZE+UK3/cFrhJZSH9BZaR
 lfFlER3eesT4Ftm1VnHUkRBjptP5TFUDt3s41ybOglYrqbJHL8ByF28Sq
 XLT1+Hr/W3zFsUPk/imW+N0DbxUO6c9vXC8N6E5Ul0Twx81b2obhh8nKP
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bbDFhQD9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 3/5] ice: introduce
 ICE_TX_TSTAMP_WORK enumeration
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jacob Keller
> Sent: Friday, June 2, 2023 2:45 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v3 3/5] ice: introduce ICE_TX_TSTAMP_WORK enumeration
>
> The ice_ptp_process_ts() function and its various helper functions return a boolean value indicating whether any work is remaining. This use of a boolean has grown confusing as we have multiple helpers that pass status between each other. Readers must be aware of what "true" and "false" mean, and it is very easy to get their meaning inverted. The names of the functions are not standard "yes/no" questions, which is the best practice for boolean returns.
>
> Replace this use of an enumeration with a custom type, enum ice_tx_tstamp_work. This enumeration clearly indicates whether all work is done, or if more work is pending.
>
> To aid in readability, factor the actual list iteration and processing out into ice_ptp_process_tx_tstamp(), making it void. Then call this in
> ice_ptp_tx_tstamp() ensuring that we always check the Tracker list at the end when determining the appropriate return value.
>
> Now the return value is an explicit name instead of the true or false value. This is easier to follow and makes reading the resulting callers much simpler.
>
> In addition, this paves the way for future work to allow E822 hardware to process timestamps for all functions using a single interrupt on the clock owning PF.
>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c |  2 +-  drivers/net/ethernet/intel/ice/ice_ptp.c  | 50 ++++++++++++++---------  drivers/net/ethernet/intel/ice/ice_ptp.h  | 12 +++++-
>  3 files changed, 42 insertions(+), 22 deletions(-)
>

Tested-by: Arpana Arland <arpanax.arland@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
