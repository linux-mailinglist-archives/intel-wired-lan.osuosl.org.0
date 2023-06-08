Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77CE77273F6
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Jun 2023 03:08:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 084064023B;
	Thu,  8 Jun 2023 01:08:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 084064023B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686186495;
	bh=yx0QmWHk+BFzffTsb6W8RL2mpqhHBOKev+ny4OoMHQU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jOaKPCaeaR6nCW6owGRQmrGiftlW4WawftlLC0ItEB4iPbJj07w1wc2ruULrWMUyM
	 CcsPMyqjnqHWgNghipHJuuubVnqfd0qvH1TMKz2JrGiAxbVA8PC2XwtjTiWlK3MAFm
	 C9VWtKspyk4t6it6LoaRYh3SR0mU3sT1g0GpmfXH4LgosOrtrG5rgmCWn6g7xJJKy+
	 6RM57oOEFnB8F7x5fDN10ms/fLGMG6huXmnVsj4ezFLtJc80OzEECLDSJnBnPEhipm
	 cbOxLQVIb/yiUY5MypA49c6I7DoP//e8L+66rpFMxjB2c9A1qRFLj9gVbd8ANS76n4
	 TR8YYOIo/Vjig==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YICMkXotXDYj; Thu,  8 Jun 2023 01:08:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A5B594016F;
	Thu,  8 Jun 2023 01:08:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A5B594016F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 36FA41BF3C1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 01:08:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 023EB41DF9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 01:08:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 023EB41DF9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QslzZWa449QL for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Jun 2023 01:08:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C95F841DEE
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C95F841DEE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 01:08:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="336783926"
X-IronPort-AV: E=Sophos;i="6.00,225,1681196400"; d="scan'208";a="336783926"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 18:08:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="709761278"
X-IronPort-AV: E=Sophos;i="6.00,225,1681196400"; d="scan'208";a="709761278"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP; 07 Jun 2023 18:08:05 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 7 Jun 2023 18:08:05 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 7 Jun 2023 18:08:05 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 7 Jun 2023 18:08:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UqTMsdVqT5ttTEFnKAzCbMON+REYWmgWYj7/xtUyynik7rK+/YYAMHThimgsezab7KZStNEHIjqggnJhaNSb3sJsJn33morc3RfTlnVI/omhWB7CVzQ4e1wJxaVsPfpMSHujsfX1/gGnnl4oqoLIeLd3CDtETdG4Y/I3bj6ywH5sSuS4zPRQ5EvceyOZ54+M+fi+CeaKiGfPEH8PAkGeeBflaOyNVTpKbiGbhBSpGxRaSbIdJ7zaUzD+SeJkJ+71La1vndmolVNBh4KOBcVAO9+CCkLUPPZaNzDxcgqm69LJ/4S8vPQ9pU9oK80vUDakdlap/ZfCta0TlE8ROC0Ryw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=croflvktZ6wLliBw2bzY59Hw8X/07tHuehczH0vhOx8=;
 b=emiK4dx0mnb0LrH+oxnHQGgmy4EV/Tpxx99qwpPfGcPRMcAS8iD8DlFf+OvqOpUDeTmpI60LaY0XxyjRMAVL5BimXRyPdVJ/gboLnDQ4ZoPvYifAq6q2n8bZ9eAaFqYg7HzhNS8FXOpPPXFL3LKTOoOMvnb3tfLh76ZqFNukJ15c6LnJoGNWnr99SPWQkvbGT1EnV/FuNjq4mIdeNqCmvlI15mRy3gcp1pcTZXR3roAyTko5uhQvJJTa2sOwYIMVtUR5pY/Re06i0D7cfo242dmt2jo3O5kx6WCEa5mQjL79i7xv7ZhJ6+qbZiTKveaJ8LcfgTKuWZ1h4pKL30lSSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW5PR11MB5811.namprd11.prod.outlook.com (2603:10b6:303:198::18)
 by SN7PR11MB6827.namprd11.prod.outlook.com (2603:10b6:806:2a2::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.36; Thu, 8 Jun
 2023 01:08:02 +0000
Received: from MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::5e37:38f7:33d2:137a]) by MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::5e37:38f7:33d2:137a%6]) with mapi id 15.20.6455.030; Thu, 8 Jun 2023
 01:08:01 +0000
From: "Ertman, David M" <david.m.ertman@intel.com>
To: Daniel Machon <daniel.machon@microchip.com>
Thread-Topic: [PATCH net v2 06/10] ice: Flesh out implementation of support
 for SRIOV on bonded interface
Thread-Index: AQHZmRwJbfLBKwl76US1hKlEge/gzK+AEjMw
Date: Thu, 8 Jun 2023 01:08:01 +0000
Message-ID: <MW5PR11MB581154647D4EDD3F9FFE9D24DD50A@MW5PR11MB5811.namprd11.prod.outlook.com>
References: <20230605182258.557933-1-david.m.ertman@intel.com>
 <20230605182258.557933-7-david.m.ertman@intel.com>
 <20230607084215.km4btmugwew6633t@DEN-LT-70577>
In-Reply-To: <20230607084215.km4btmugwew6633t@DEN-LT-70577>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW5PR11MB5811:EE_|SN7PR11MB6827:EE_
x-ms-office365-filtering-correlation-id: 7069a08c-430c-423a-4d82-08db67bcce2e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: c7L7skivu8hnpaAHvnM51HQ+0A1ZS/K9gU13R3qyv89Wkb1rLHs/dUJmavsemVnbhjWGhQvDkNB3dKMKE7TSBwh0DdypA4BjQQQq6/DiFkghmuNhrmuUYhPcKhOtSVVVcITt7UedSb+j9tMksLmfnlCCOxZjv3NfgFDtNWYaXvGtFHMF7bJdgOk22N+VUvl/aghHygoIX7gu68fTlIBv7yS2+JL98RqzQNMbXm39Se22nDKqeD8+bV+31wYqyKRy2n4LlDMxSpSnDVoas4Kc6/Gby7snTg3QtXShfdM+Xf25vHDxuTCTIurJvLeMqEpSFA0i8mSjTgp5Sr37uOZTo/DA1D65BhFQgGHZpiGuGDkDu9kJpQ5V5kpIB5o2OFjGDE55b8qPdG3dy+z9ouG6vQxjbNNorj3sOxH8IvuChUlxY8G0LR2ewGGUcSx79nTQko4L0kv/nuiQuo2nQBPJSvO6GFTQEBTBy5YRNB0Hi3TQu9WoenQ98RckpuvgjPZYMA9Yz9kYwQdoifSUw/0nFJvTt5UY8+6aY/PDDJcQnCYGGX8TR/S1wG4MZUSHNJKsI6uq+cawLO+Ss7WIidDLleipVIzNWdpzdXNB/w0dcPfQ//In1PzoEZVPPzx0WfMp
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR11MB5811.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(136003)(39860400002)(396003)(366004)(376002)(451199021)(7696005)(478600001)(71200400001)(186003)(38100700002)(86362001)(83380400001)(55016003)(82960400001)(122000001)(33656002)(38070700005)(9686003)(53546011)(26005)(6506007)(8936002)(5660300002)(52536014)(8676002)(41300700001)(2906002)(54906003)(316002)(4326008)(6916009)(66556008)(64756008)(66446008)(66476007)(66946007)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yp+5e1o90X+B5ngZVIW0AZ9JGbFNC+H2vuWtEdNTgKOrSAoB0JqD0yy+AKHH?=
 =?us-ascii?Q?kfljb+v+JsUJ1brcGitGM5knyiwZOTvFg4SAwKc0pBPlEvdUEd/rrCTE+cYT?=
 =?us-ascii?Q?vNX63ZiiRUXhLT6f++iWia+W0VsKHLguk8dGLkS5RfXOKPFPcG6Kjh/9PY7k?=
 =?us-ascii?Q?WMkDhn0L4GY6yy2c3xhMuurGiQBvVat3QqCxWnwZ16Uqxk9EXA4eFzWjfiCY?=
 =?us-ascii?Q?LkF004CmMemN+2xj2feNckGrj+eIto7uicLX/cv/RimG2FBm5Fq8uu6OBifJ?=
 =?us-ascii?Q?kYPFxNpuVhVawJJSI2glI3ZhnZ5gltDPljiZeMxSSvr6IDPX3ACrZ63IM72F?=
 =?us-ascii?Q?zxlQRpAjJzlb3NdsLRnlXvgDjcDQToY3PN+bLLYcuds8zIzwUNhoEQiuDDyl?=
 =?us-ascii?Q?ObI92dDxI4dSgfwRFVgXB/NIlISQKJKVcC1iiAOmrN3afPkKCUt9FfcOKjSS?=
 =?us-ascii?Q?SYpTAcXzn0U/zbODrGMGB1q+5mQS7NwvfOOENdvo4yuIL0FKoekUojmexXWn?=
 =?us-ascii?Q?hBnALjXzsCQZkbg4KaO9OobNIuNasoMHkmSu28aWX2cDLmakUyzifq2hkZyA?=
 =?us-ascii?Q?Jg7qgrAf2pvkf/90Ykeo00tZggQm/lnYCErNOhJDhhknOjykHANhO6DtnD/5?=
 =?us-ascii?Q?chMZXkFFu44HqSgmTXiClS+mGzL0h/B/R0HZfOPToHv+DOkL8dQLCkgD8y0c?=
 =?us-ascii?Q?+MPvCbmz2sulLgmrpzGlzgcJSErQBXXNtuan8yYKQJnqYFGGDdMu7WGnV+Cn?=
 =?us-ascii?Q?WePk3NJzL0JyM/Br9fQ4Ef/nEYu0+STZgmDJ6ttSMQoADLwPUyRcnt6uDsKc?=
 =?us-ascii?Q?uIEUDOKrFm4bjXxOwvJpntlPv34Vheh9Ttsklu66Mcf1Izg4IVWhDm+rFHsC?=
 =?us-ascii?Q?DsKC729cI2Q5psneVCKCdovg2ppYD/DhoJ6pPc9e9zqOjfi6Zgu60vPEozsH?=
 =?us-ascii?Q?ZCEIeaXDablZ1kTlBkof89ovUcbIWfD7dDb2JTCCJT4awAWWu2Y2iIFdreiH?=
 =?us-ascii?Q?RcZHbwtqJU7933FfMxuKuJ3lfHrqjmbXWynOAFi9UepcgzxiyAj9yu1pkrse?=
 =?us-ascii?Q?v37ZMEiDZkqjpFJ0Mv8lq93n/OoQE6uzPktv82QUiHlk/Zra4YnZHxofPAz1?=
 =?us-ascii?Q?LPrZMhiBToZk3uHMxQebbNFMSfNsZaB+5Dz2lm9MZorGa7+C3tjUXn6Yompw?=
 =?us-ascii?Q?i6TufbAdBCziXo58Hd9eCj0KpCKTzY1Q9jj1gEwpu0ifaUFJYwBFM0wDZlHm?=
 =?us-ascii?Q?soSZoyx+ekfAglOT/M7QFf2LKfZXYXRvTYahCm+CKFbI8j0NVohi1R8qhAcq?=
 =?us-ascii?Q?E0IAsInAkUaXsX498gF6xhRjevYLN75TKHow0gr5vsqa3zepMUUUf/b1siR5?=
 =?us-ascii?Q?jj8umThCxXHpcIjMtA7qKp892BTZNOjLgrFg2hSQ08wEBb7TrrOzj5++K6El?=
 =?us-ascii?Q?HFyGmfhhFvAExpOgiyomRuLdRoGc5w3EFg1SLDozBwQ64pU5UTu9ro76KefD?=
 =?us-ascii?Q?i/G0DAQ3kgtExLkty+E1p2fcOtIJijvHV18NsN7vL+1oXNoAX44Y38LrxqdG?=
 =?us-ascii?Q?NhrB34yGssuvvrDS8yKxmSWiIbpZelEmGQnJxO4W?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW5PR11MB5811.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7069a08c-430c-423a-4d82-08db67bcce2e
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2023 01:08:01.3415 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GGC1p+Mlbf8QJvlDxoA5QeB9fby2vd9wggnRHP8xkcHPsneBNi++DZpbOcSEloDzzMaVwYCF9SUIHYTqCa/k7FntonoEif4C2eln23nOQ9Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6827
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686186486; x=1717722486;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=f21KHu6gnUUZxrFzvS/gy3nRxeFOZmRp+lDQwo0PlWg=;
 b=lb5mDrw4dyGzjkaRIXzzqESZ7vDx0vOfwintQybRs9pWc1QUNXZIFOxB
 6mybClITzd/3fvY+SIoRovPQRK0xWfD8KVmMzXodo9ZPReAdgb7uvy9j6
 pZ9GQeRJzRByKlnVQJNEuvDATJLwCiKmete6gMI7v76PIX8rmnPHGhODx
 rGmr5RfwPQ/ljat9gHZqyuQQfCRT6QnR7j1ZdR38PsAuZ23aHlAU40AW9
 xKz761LzqdVhGYQV7mlKXvPcxKK4UkvAtKl3W0CybF+91mYYlREP1OKJI
 q7JAzrLN6PkhBa6GgY9PrY8e97Rv62OOzd1/GCpaW1qiQIvibUowlkr0J
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lb5mDrw4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2 06/10] ice: Flesh out
 implementation of support for SRIOV on bonded interface
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Daniel Machon <daniel.machon@microchip.com>
> Sent: Wednesday, June 7, 2023 1:42 AM
> To: Ertman, David M <david.m.ertman@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> Subject: Re: [PATCH net v2 06/10] ice: Flesh out implementation of support for
> SRIOV on bonded interface
> 
> 
> Mostly tiny nits here. But since you are respinning, you might as well
> get that in.
> 
> > Add in the function s that will allow a VF created on the primary interface
> 
> s/function s/functions/

Change made

> 
> > of a bond to "fail-over" to another PF interface in the bond and continue
> > to Tx and Rx.
> >


> > +/**
> > + * ice_lag_qbuf_recfg - generate a buffer of queues for a reconfigure
> command
> > + * @hw: HW struct that contains the queue contexts
> > + * @qbuf: pointer to buffer to populate
> > + * @vsi_num: index of the VSI in PF space
> > + * @numq: number of queues to search for
> > + * @tc: traffic class that contains the queues
> > + *
> > + * function returns the numnber of valid queues in buffer
> 
> s/numnber/number/

Change made

> 
> > + */
> > +static u16
> > +ice_lag_qbuf_recfg(struct ice_hw *hw, struct ice_aqc_cfg_txqs_buf *qbuf,


> > +
> >  /**
> >   * ice_lag_move_vf_node_tc - move scheduling nodes for one VF on one TC
> >   * @lag: lag info struct
> > @@ -245,6 +353,167 @@ static void
> >  ice_lag_move_vf_node_tc(struct ice_lag *lag, u8 oldport, u8 newport,
> >                         u16 vsi_num, u8 tc)
> >  {
> > +       struct ice_sched_node *n_prt, *tc_node, *aggnode;
> > +       u16 num_nodes[ICE_AQC_TOPO_MAX_LEVEL_NUM] = { 0 };
> 
> RXT.

Moved the u16 num_nodes line into first position.

> 
> > +       u16 numq, valq, buf_size, num_moved, qbuf_size;
> > +       struct device *dev = ice_pf_to_dev(lag->pf);
> > +       struct ice_aqc_cfg_txqs_buf *qbuf;
> > +       struct ice_aqc_move_elem *buf;
> > +       struct ice_hw *new_hw = NULL;
> > +       struct ice_port_info *pi;


> > +       aggnode = ice_sched_get_agg_node(pi, tc_node, ICE_DFLT_AGG_ID);
> > +       if (!aggnode) {
> > +               dev_warn(dev, "Failure to find aggreagte node in failover tree\n");
> 
> s/aggreagte/aggregate/

Change made

> 
> > +               goto resume_reclaim;
> > +       }
> > +


> > +       if (!buf) {
> > +               dev_err(ice_pf_to_dev(local_lag->pf), "-ENONMEM error setting
> SWID\n");
> 
> s/ENONMEM/ENOMEM/

Change made

> 
> > +               return;
> > +       }
> > +
> > +       buf->num_elems = cpu_to_le16(1);
> > +       buf->res_type = cpu_to_le16(ICE_AQC_RES_TYPE_SWID);
> > +       /* if unlinnking need to free the shared resource */
> > +       if (!link && local_lag->bond_swid) {
> > +               buf->elem[0].e.sw_resp = cpu_to_le16(local_lag->bond_swid);
> > +               status = ice_aq_alloc_free_res(&local_lag->pf->hw, 1, buf,
> > +                                              buf_len, ice_aqc_opc_free_res,
> > +                                              NULL);
> > +               if (status)
> > +                       dev_err(ice_pf_to_dev(local_lag->pf), "Error freeing SWID duing
> LAG unlink\n");
> 
> s/duing/during/
> 

Change made.

> > +               local_lag->bond_swid = 0;
> > +       }
> > +
> > +       if (link) {
> >
> > +       kfree(new_rcp);
> >         return rid;
> >  }
> 
> You return 0 on error here. In patch #5, rid is checked against zero and
> -EINVAL is returned. Maybe you could make rid a function argument and
> just return the actual error codes here. That way the error is passed down
> the callstack. Just a suggestion - your call.

Seemed like a reasonable change - passing the actual error could be helpful
In future debugging.  Change Made Changes coming in v3.

And thanks for the reviews!
 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
