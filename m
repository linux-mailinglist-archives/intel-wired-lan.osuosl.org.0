Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C99748794
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Jul 2023 17:15:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DA96C6106F;
	Wed,  5 Jul 2023 15:14:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DA96C6106F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688570098;
	bh=AVkTapTklHpjUKGHR9a/DKrHS+Tnuw/QgRF8q6JJKP8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=U74DdVQ+L718jHghsbVHNju1+uSdoUhUg6z8IRmAn3rMOFODWanxEqS5yCMxAPJmT
	 G94QX5arsM7oUTltdDrTOfO+BC0EJKNsavNoCv1jUoKb35NA8BWu4bS35JQ85/cjUV
	 NK47G1pZOiW0+4tlQckIj6iO8oSmlLXw55UPLsV7m05vC0FhCPC+OGqS6J0Ba+oKhn
	 kjzpWaxPXr0NlRBA0Iq3Gz55AZFwOYL9mvwPiPoMWdv3i46Nz4JTACI8j2NZHleoPw
	 R1ZVZj2eCCuHCmqpes0mTiv3e3Bcgi5Bbz/j2kXQgTdjd58nyIsFcal7Bi+PfCz8dy
	 e/BbXMaNxxBoA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iOPr1RtKuVZt; Wed,  5 Jul 2023 15:14:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AC94861050;
	Wed,  5 Jul 2023 15:14:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AC94861050
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C6B751BF5DA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jul 2023 12:54:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9E2A24061F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jul 2023 12:54:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9E2A24061F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tBqrpovoG-SR for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Jul 2023 12:54:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B2CDB404BA
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B2CDB404BA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jul 2023 12:54:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="449248770"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="449248770"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2023 05:54:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="842656979"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="842656979"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 03 Jul 2023 05:54:22 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 3 Jul 2023 05:54:22 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 3 Jul 2023 05:54:21 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 3 Jul 2023 05:54:21 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 3 Jul 2023 05:54:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=doxRzB+ut3fK4rbCHFU8o5tjQyGIzFBUIIv6mf3PuIvLk/QMc9IKeK7taEYSjxfJzs2BQg1B77j7R4F4ypBxK7ktp3/6yIspti2Yxw0f499L2xuJ4E37F6ZfmYlHVUdysK9I0BCIUOwp0vbY6GymvWSru0yI08F7IlaaEFJZJCbzu7QOi6zO2v/TuT+cE7XggNBroBaTtOLKT9adn03JFTsPHmAvZ+R/OjLgoJge2ZVER1dbVAD2cmm2MGWHqKGoFlXO3tbmH3kKHfI2Xp6nWhpbllddQPvj19t/eAR/MmR9vLX3cjEy0TbGSsnN1TfL8Ch+IYZwfH6bavSzZ1hSzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dSVEAVM5hVhwKL5jp3ePHSYvz7ipci9EXe/OhzIV9lY=;
 b=G21ihz8421/ks/6YKnq87OBCG/O/0QoToAuN8yNaYI5wksgnXXzrfZuWJo8tKKyuezmUxQA71IzbAeKYdW3AgI0ZdDiCdJPe03ZDaN/fEa3vvjTRqyckd4WeUY7A1dfh5wFoYpx5Ofh8trhWcRiPWNSwnWOdDBTxozkP0XGMblZLZMYOXFzx6YPfKiW9vcyNzhravSqgW3PpQw4u22fHiyn7RyHhIrwvImSokXbybzKN1d+DZeKKFfMHTriLG9xo8HSCfe6YDN2HrrYWe10CAiicU9CIYrXGOMge6cNC79uBDCPMbGVFjbQQ28ukXRSQAHFJdr/PMc0mpApREdML2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7529.namprd11.prod.outlook.com (2603:10b6:8:141::20)
 by DM4PR11MB5328.namprd11.prod.outlook.com (2603:10b6:5:393::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6544.24; Mon, 3 Jul
 2023 12:54:17 +0000
Received: from DS0PR11MB7529.namprd11.prod.outlook.com
 ([fe80::e7db:878:dfab:826d]) by DS0PR11MB7529.namprd11.prod.outlook.com
 ([fe80::e7db:878:dfab:826d%3]) with mapi id 15.20.6544.024; Mon, 3 Jul 2023
 12:54:17 +0000
From: "Liu, Yi L" <yi.l.liu@intel.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next V2 10/15] ice: save and
 restore TX queue head
Thread-Index: AQHZpCB1I+bc8si9JEaVbiHzlN+PhK+VU4CAgAqSm1CAAEyxAIAH30QQ
Date: Mon, 3 Jul 2023 12:54:16 +0000
Message-ID: <DS0PR11MB75295D41646A3F74BCED4323C329A@DS0PR11MB7529.namprd11.prod.outlook.com>
References: <20230621091112.44945-1-lingyu.liu@intel.com>
 <20230621091112.44945-11-lingyu.liu@intel.com> <ZJMLHSq9rjGIVS4V@nvidia.com>
 <DS0PR11MB7529D62973DEE1848BB9146BC324A@DS0PR11MB7529.namprd11.prod.outlook.com>
 <ZJwp6nam6/gI7Ru1@nvidia.com>
In-Reply-To: <ZJwp6nam6/gI7Ru1@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7529:EE_|DM4PR11MB5328:EE_
x-ms-office365-filtering-correlation-id: a221ed5e-a1a2-4b8d-ca21-08db7bc49c00
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sdZm0bXI0Mt2vsKhOqC9Zh3Sw0xOqZmPDl+xECy6BIUSEXcu3GVKbpbqo/aNyDhEqVv20AiWlXV0tz9n1Nm/bWuEneNRoVdYFHTYRJhF6YCpLp58MuVf3iqdZghMAvHMCcF2nml71WvsAKLBZEha0V5Z5Fk17soKNx3VlMVIrVl+FqlvZWdtDzOJ2EYLeyGAQZ19UujErj0UHhjqIYOyIn1eJlBHUk600BF1OxwblWvisSwbtKEtINxjTLHmLlsyXu3h2Y/VuwGL3HfNMr/oB6TODQofgxW5tYMxrHP/MIA2YfvfKyQCzTx9k4DP/+PJz04HkmvbHWMxGgSjhUsiTaEelTo30cl2L5j2Ix61R9qmG52jayfMtHD4B9o2D5o/6LSRe8shCq/gz13/ZHqTWQXAfBG7qU5O2lhYo6bW11v6cReY3HJXyRz4mmKpbvOQBwcfkBvZerxpor5iYm2dI8h7XuTg2KL42fsqHWM0oqMS8YhKHPtvaPZYnZAbeosmNdsfoMnNUV819zp2V3u7qwrHG9pEUaOEYv0thuDkGZ9Om0OhwD1hcmnc011NBjnS4tNf+OvYiZFuj2oFDkp6O/DVdIOD49LB2WWYmpolPACP2z/TfbUbFl9aKse7dL2p
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7529.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(366004)(136003)(346002)(39860400002)(376002)(451199021)(38070700005)(2906002)(41300700001)(8936002)(5660300002)(52536014)(8676002)(33656002)(55016003)(86362001)(186003)(82960400001)(478600001)(26005)(6506007)(9686003)(71200400001)(76116006)(122000001)(316002)(7696005)(6916009)(4326008)(64756008)(66476007)(66556008)(66946007)(66446008)(38100700002)(54906003)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?L4dx6OuodsQTH7OlOQjfhwMePsUje1i674vfaebY5Aq0su3eDU//KPEbgKxc?=
 =?us-ascii?Q?JopRsEFOpPpksiJtYOSrehVEAuaMS+T9P7uXXxA1ym7YDFryyG1irlxp1ME1?=
 =?us-ascii?Q?d0xE4mr+TM1ABm7U1H+IpGejTAlPxSR9CIDRTnn++U2gl37WFB85ypNNg+oQ?=
 =?us-ascii?Q?OPHuRqXZRfVNNYOQU1XXG+USvbsVu/dgYDgs3fiWZYm0Mz9jQUp2fUKi6YC7?=
 =?us-ascii?Q?x09W+Z8twcOMp0LxCw0y08CXaUaFtTSfxB26eVfg5D8t5h53VE5iKvD3gDSn?=
 =?us-ascii?Q?oGJ/NECSL+q/0KcC31A5ZlWHhn6e7zSQljum28Z0g/w7H+ZRSLxruvWq22j4?=
 =?us-ascii?Q?DndxiZpDN8IQjmsqM5pK2JNId6YNyi74Zx6UEcP/XPCpXDemhh2eK+mt31aE?=
 =?us-ascii?Q?HM1AYoQyO2zeT5h1hvMZ4AerXp814gZvm23LxyErIfEmEpwL75m74S9DH1mX?=
 =?us-ascii?Q?7+KP5HCn7hSaO13iWxsqH4sGiNNYGIfkwRA+4pNvoqTcqfXPFypjRGVQlo29?=
 =?us-ascii?Q?13B7yfPCoT2B1J+9ttc3477nUFLTXFrvANiMtavsOMvE5hqLD6GepxihYcji?=
 =?us-ascii?Q?no/mmYEoJCmBUb76OLHdn/Q3uookuY+RjN9Anx4y5fY/R/3ktHg+GdhXpTCR?=
 =?us-ascii?Q?kJcoOizYxS/1DzxEzo5hK5Bk0boSCEn+c8Mv/YFaDUmy8bEHnKdcvEZ5dWHD?=
 =?us-ascii?Q?SEZ3myKy2TiCFLMGtZ3t27HdfxN8y3qYhI4vqRpTPr9M+qFyPE1YoelCsRp3?=
 =?us-ascii?Q?sO3zx3QGyXspGcSusnWeN0qD2eR5jPmfyeXYNUvJdXgWLMH0mZKQIvGifiWc?=
 =?us-ascii?Q?iINs6OB+0XjFrfECjeZqu1qtGOuzKLB6u3iaZB4eEwjMUKqELrD7+dgdCY4F?=
 =?us-ascii?Q?gsMpuA4KOm9dIR8SHyMYDvFpSSNACqx3bEF+2Sy5253MhScNU2t0z+uWlSwa?=
 =?us-ascii?Q?M997WnEbJ2me/nlKkdovhpd6JVGiKn+v2knfZDt7XdCgk48QNT+lhS/X+P2S?=
 =?us-ascii?Q?1/2uluxdeUF6e9BB6byQa3qH30ONjMT97GN1R+jqiIsoIe0MZQj1hMPr6Ezr?=
 =?us-ascii?Q?46tFSlZZtWdGhUqsy07H7gJxV1pNa1sREngtOn5K43qmFTRUHQwtUe5tIeZu?=
 =?us-ascii?Q?QgG9rm2Ke72ERVDud4rlTGuneIxB1RE9NyAqrUy1WLPVEbPKgL2M9/0mKhMz?=
 =?us-ascii?Q?SXEgABzXRyBBORfEiq0621lhhosxczZynn64Euv1IyVmY5l4oQUQCQDnef6Q?=
 =?us-ascii?Q?ukjbYWWe2FeIWR9/k9GKxRQURese+I7DGGJaG2qmdmsIwRI65tJ52x/UYJWZ?=
 =?us-ascii?Q?aapN0lDvtDGkqZL69pzWal5x1NodMyMZDivZF+tiRU5IxYZjoZvTettKKJgB?=
 =?us-ascii?Q?8i3Gw0JaxAIxaRdfioDR6gBCZBzI5lgETBOJWExOOXyMG8GXPp7EJIAH65V4?=
 =?us-ascii?Q?0Dis8lRWIP7etY0z2SmTn6DPwScxI0+Buim0iXufITVHCs6OeRVMXtCo8YEa?=
 =?us-ascii?Q?z3PUA9QjqbmOp1G8ctzLe5gCOZy2IVKNHIyt+jz7LkBiRuwH2xyzfzU8VIRc?=
 =?us-ascii?Q?dH4vnETGsY2UXiRQWral8uqMKH0ngMevkCySWA15?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7529.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a221ed5e-a1a2-4b8d-ca21-08db7bc49c00
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jul 2023 12:54:16.4149 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EfGIFRaJ8HucH/SuxMr5A89osE0edAiaf4/nJzSIT/tASBZyiysZJ0aVzwoj2ZAanuOohL/HHqPRBb9TgFxsjw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5328
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Wed, 05 Jul 2023 15:14:48 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688388864; x=1719924864;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dSVEAVM5hVhwKL5jp3ePHSYvz7ipci9EXe/OhzIV9lY=;
 b=Yoii/IHAVKKmD+IdM30pgMyTiVyBC+w7w+2mYv4NGZLbN5DslSPTAdtb
 oWm7TpyV8qdqVYFIYRathwrAYRbPTTEe/ISaPFmxI03m3DpG92PPSP2CS
 VzMS5wProCY95uQ2rt+QEybH2AFfMHI7NAJzJSuFMq+zcDGXPoZlhjjC7
 //kHXvm2TplM04XSclz8KRQs7BqA6fHVcqZEIY8ZWucqnHtyq+uExhLd6
 hTkKipqv/zpNPXN0X+S0vpVJTsXD2bM3qXZIhj0+8PeK5lGEUSbZjFUke
 d8kE8FJP6JHn71HZPxswCjf+01vCqnVl5rx4An9k009lK4z13KSn1Bg1H
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Yoii/IHA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next V2 10/15] ice: save and
 restore TX queue head
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
Cc: "Tian, Kevin" <kevin.tian@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Burra,
 Phani R" <phani.r.burra@intel.com>, Peter Xu <peterx@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Jason Gunthorpe <jgg@nvidia.com>
> Sent: Wednesday, June 28, 2023 8:39 PM
> 
> On Wed, Jun 28, 2023 at 08:11:07AM +0000, Liu, Yi L wrote:
> 
> > > You can't call VFIO functions from a netdev driver. All this code
> > > needs to be moved into the varient driver.
> > >
> > > This design seems pretty wild to me, it doesn't seem too robust
> > > against a hostile VM - eg these DMAs can all fail under guest control,
> > > and then what?
> > >
> > > We also don't have any guarentees defined for the VFIO protocol about
> > > what state the vIOMMU will be in prior to reaching RUNNING.
> >
> > For QEMU, vIOMMU is supposed to be restored prior to devices per
> > the below patch. But indeed, there is no guarantee that all VMMs
> > will do the same as QEMU does.
> 
> That doesn't seem consistent with how the kernel interface is defined
> to work, I wonder why it was done?

Add Peter.

> 
> Since it is 2017, I suppose it has to do with internal qemu devices?

Do you mean the devices emulated by QEMU?

Regards,
Yi Liu
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
