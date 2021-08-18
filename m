Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC643F08C1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Aug 2021 18:12:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D584740765;
	Wed, 18 Aug 2021 16:12:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Sp_oCWxWdD1T; Wed, 18 Aug 2021 16:12:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 666544075E;
	Wed, 18 Aug 2021 16:12:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EBAE61BF836
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Aug 2021 16:12:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E69EC40747
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Aug 2021 16:12:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KQ9onaFSAiWl for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Aug 2021 16:12:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A4F86404BA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Aug 2021 16:12:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10080"; a="196623688"
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; d="scan'208";a="196623688"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2021 09:12:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; d="scan'208";a="531750831"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 18 Aug 2021 09:12:39 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 18 Aug 2021 09:12:37 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 18 Aug 2021 09:12:36 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Wed, 18 Aug 2021 09:12:36 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Wed, 18 Aug 2021 09:12:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HLvPlK5HOVL95O62wuz7ymUJpd6h/sAkVXZjwlSj4W2ZYrcVggOeIsl0+HPSdER4POlYY5Mo06Xdk2EpJwX2g/jjeEaM31GiuINFvrW6LM+xcTX4waOyiZKa81LpPco+lJ4qur/V6iHBERkkX/0lYYj6h8IsRkEx2J23Lq2U2sUMQZf+Pz27yb70ws02l8Ud2xMigRgtTu7OLhNb30toPDy+D9oCl6L0dkDjgwtfoIXtUezMwVQxvkYQlec+3JQE3IaN2pkxcvXEZODZGs6GQtv6tDIXL0FxJrf/5hVJUKKuOWlLkMM0mAJDIBdYN3N9QWPZkjwwzxAI8FvxldwMng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O3Kcj379vArFrjATSzAqEttCLK2WKmh4xsWwJ/IkO8c=;
 b=DVmP3Rbd5F1Fl00SZK0lCs547d0ANoG+gWp/FFzAhmjTLsBjd4xc2/HmGwzFtuNyfnjynhmEJsvoT/gnrnywSvDpRinXuFxTLdzoQALBk6uIEmcM6zrrPZsi6Dy2Q5jqXfQVERsquW7xK4h/Ad0wsCwLs7FHPe6gJfGFgxkm1w6CADF8xFuT5ST/EmMRSLKDKCFTyABcDqMxY9rcmoLNTMXvtBoA0kPUXOaebUI4E5J0sVPGjrgsliYqfxVNqMmk4hCKaqzvNzOvu6w+Xr/KGl/jSJa4vaY5hYVbf9PgsODcJYX/KmkAos/EFfabEN5SmHX6wFufk9IisA0scRvVrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O3Kcj379vArFrjATSzAqEttCLK2WKmh4xsWwJ/IkO8c=;
 b=IbRAsjRnjbj4IMaF9VMjB/X50Uqt+3tQDIl4mjP+SPHnDP+qOkAViFEJ04SN6RQ1e+8z79RdFo+DwIAqyWZnipCku98YqPW1kJ7BKRIcbU+Jigfn0t6yBMsHP5IQWiaxOnnrEE34cmxw/L0Zfsr8jIaEItLM62s8D9pVIcNlbD4=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA2PR11MB5196.namprd11.prod.outlook.com (2603:10b6:806:119::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19; Wed, 18 Aug
 2021 16:12:32 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4e0:837:41ee:5b42]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4e0:837:41ee:5b42%6]) with mapi id 15.20.4415.024; Wed, 18 Aug 2021
 16:12:32 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>
Thread-Topic: [PATCH v5 intel-next 0/9] XDP_TX improvements for ice
Thread-Index: AQHXkRfjDVbd1gn2WEuU98SZhzox96t4NDsAgAC1sQCAAGeJAIAAJRCA
Date: Wed, 18 Aug 2021 16:12:32 +0000
Message-ID: <b5812918827b58dd353fd32b7042f1dfc2634e62.camel@intel.com>
References: <20210814140812.46632-1-maciej.fijalkowski@intel.com>
 <86e7bcc04d8211fe5796bd7ecbea9458a725ad03.camel@intel.com>
 <20210818075256.GA16780@ranger.igk.intel.com>
 <20210818140330.GA25189@ranger.igk.intel.com>
In-Reply-To: <20210818140330.GA25189@ranger.igk.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3f9ca1cf-f566-4878-4162-08d96262fc0a
x-ms-traffictypediagnostic: SA2PR11MB5196:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB5196214684A6EA311FDF5023C6FF9@SA2PR11MB5196.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2r83Ry1JcknZtfnTCf/KWkFrYl6sfI6mheyuYd3O0SLB1KqrLe0qErKSfV3zcdt+EF56zv3MlmXY01IHZx6vMAoBOdegaEkhf25Ocb7AkF8XoFGbSROF5rAApzzH4ETe+HkRtom4A0HOectFPS2LJPsRiJ6YX6i+Ma7izmSgGhH/7EeVQt/ak/S3QcfUHKfa4r7y8shneOOHci7AsmNJQp7Fw9G7aCM99e41Yy3gHb5osKBUnIt+CAzSciZKDabeQw3fa9n5D3/A+ldh3c7eI4Tb0GfAWJz8TleHXKO334pWwdLQjTxfkc32+82Pvzp6BOBvyVNNpda+CZCQXOclZ/JrND5IaOxrS8jJrioEsfDi/HN/GawJ5/pUQuqLQNefiLFwtF91U3Bgq4mqYLpuyde9tMZ8hAzJ9SFF3r5LHANdxWkvsEbCqll6kaV63sMY/eGTPtGTY1fnq2rjYsUsyUSBBOxKv5kXb0JOfeBjs1cyimtDvodnovXvQBUfLHEQL6HHOEAsX2nZaG3wzVrmE4yIHcLJR7x2pliaTrL3BB7Xgyu84OLKO+piCK2qLcX6eIqjCEtYMoPkKhrgmiSDW5iJ7dgZrQkkKLQqitB9GpRO56bkg5Iz0+60wX1F1dLqAef6YR2HRkMlXNhCZ399NjPgfGXsSxI0qAkZuXX2n/BZ04nZ/1sxvdEgtNIAYvOj0yXBcKLKeZeBkSl0SYpqw0Q3yBcyVwhnZU167VyCFnyNsug4+7UrWNx+VxZHcPoBLtW90Pcps8R7U/cOKZ7Dym0N5OMLzCk1EC2vAOC8/HVG7kxvIwKqz2g2EKT08ktjql1XP3Ipl9PIf4HvtjpF8g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(83380400001)(316002)(86362001)(966005)(54906003)(6636002)(38070700005)(38100700002)(26005)(122000001)(6512007)(36756003)(508600001)(71200400001)(37006003)(6486002)(186003)(66946007)(66476007)(66556008)(66446008)(76116006)(6506007)(91956017)(6862004)(4326008)(5660300002)(2616005)(8936002)(2906002)(8676002)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WkRoSjg4cU83SFNwTTZFTmtUeldybE9Jem1BZ3NjSXlxL0Z2VHFPM2hOOHZw?=
 =?utf-8?B?RHFFem1reUhJcGwrcjNvSVdielhQQXBGK2ZKYXJ5ZlJaeW9NNnE3K0xnSzhL?=
 =?utf-8?B?VVpDd3N2aWRhc2FGMjNzNzZiSTUzMGJ1OGsvSzR0WnRCdWZ1azR6bDdvK3Zs?=
 =?utf-8?B?OGZGbjhNQjViZlJTMXljWFl0UzJtdzAxcnRqSy95dDAxbFl6ZXI4Yk0vMS82?=
 =?utf-8?B?RUZmMzdOWWhmeXVSM3Ryb3l1OGx2SEhyNDQ2QWFpUmJyd1VhS3FRVC9pb1Ex?=
 =?utf-8?B?aVRwQ2VpSFhjSXJYUnEwbmFzUnVEazVnVmtKZmxBZHdXM1AvenRlRVhUcjhJ?=
 =?utf-8?B?czgvN0FscnY3L25Cak5CdXZtc0J2UFJTNVVxaWI3TkNoN1hMZ0htSEVCc05Z?=
 =?utf-8?B?QlZwVS9hditqdHNmeFV6Y2JXalovTEJNbEpvZk5yYjVHOHEvaW9wem5YZUF2?=
 =?utf-8?B?UFdmY2dhT0FINTlMN0NBdlhvNXNlM0pKMDhxSm1WcXNiWDQzWU9pODhSMFUv?=
 =?utf-8?B?bldtREN6YjBGa2tncFVSZitGWWhtSG1lUzlKSllMSmRRRnJhTVlnUW04bW0w?=
 =?utf-8?B?YmxpMTF5RjJlcU5XVWdkYU5pQ0tCaEF4Ym9XdlpnbmdqQWpsS3FNTHRxNDJB?=
 =?utf-8?B?NnNnRG1rN0Y3YzB6bkpZYmcwMXNPQXdPNGpyM2h1Um9XR0loVTcyVlpMR1oy?=
 =?utf-8?B?dWxvVy9lN0lZN3R3UCtSYXRzYmkwb3VFbDhON0FpM2t6WnRRQkF1eUc0dVVk?=
 =?utf-8?B?aWVibldYaEVNNzVlK1ZiVUJPOVhGQjYxbHJSZDltMTczdmdJZ2szTGlyMzBK?=
 =?utf-8?B?eDBWN3pCQm96ci9sQVJLMlJkMWo5VVp3eUExeEVMY2hlbXlRaDlTTTJuS3Rr?=
 =?utf-8?B?K1hOdXNzeUoxTGEzS2JJWTc4K2F3YlhJMG52NnBlR3A1cmxwU1VKZjEzZnUw?=
 =?utf-8?B?VDJ2aUY3eDNvblp0cE13M1htQ3htcGxVMkRoVHcrYW9LTjEzQVEwaTJDa0gx?=
 =?utf-8?B?aXA2TlRkZWhPQ0FqSmdBYVVRREJadndjUWhwOXQydDRZM05NNnpPQmlCY3g3?=
 =?utf-8?B?aXVPSzkyT0svOWFNQ1hRSFkwYWNWMzV6aTlqM0NaaWtMTjcwSzNnZHlQQnNK?=
 =?utf-8?B?M3JEMCtUM2s5d05WcHhvUDBzMm9WcHpiV1ZFS1A1RzZXZmxjOXdVeGhXTEJr?=
 =?utf-8?B?N2Y0ZnhLaTlPam13cTNuK2xvVnlSM3YvMFN6Rmd4eWJuWFQ0VUU2REZ5dElR?=
 =?utf-8?B?WXdKSlRKVndNM3ZjNDZ4UUFsdGlwWFdWZlVwQWFNVTd5UHZBTmx2eXNkMHI3?=
 =?utf-8?B?dHh6Mm9XRTJ2eUh1Tml2MHN0TkpicmtZbC9naHBzQWFQVStXVFViZGxYZXlP?=
 =?utf-8?B?Z1ZFL3IxRHVPMmFvcTdQRU1PQ2k3LytCU1RJK1Bxc0NFVHhOeG93d1NjRkV2?=
 =?utf-8?B?RzVyZERXVVdFWEJOSFJCVUcwcmlhblB2S0d6cXh5WnZWanRScHJ4MXMrenVj?=
 =?utf-8?B?djJHS2xKL1dERlV1VlhTeGFsUzdvVEZjMlFUUnZuWlN6U25yek5zWDRLaUE0?=
 =?utf-8?B?c3VtWU9GelVZZGNnVmovLzRiZXdiT2NxR0FmczlVZ2RTdG5NLythQ3dpOXFL?=
 =?utf-8?B?Vk5yZkxsU0JiTjMrdm9lV2RaVUhmWHhBME1iKzlUL1B2SmFSK2srOEFMaTlt?=
 =?utf-8?B?ODFPdWFrdXFaK3o1UGppbzlpQzFJL1EwVTA3NDJmN253NE05bVR1bTMvRUYv?=
 =?utf-8?B?emM3aDMxa1JrMG0ySnQzQnBFVDErcjkzdGhudkdZSjdVTVhKVG14UmlqY0VI?=
 =?utf-8?B?aWRqcHJPeWVnbTk3aUhldz09?=
Content-ID: <7217C07B81031340A5A4BAE23F142A76@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f9ca1cf-f566-4878-4162-08d96262fc0a
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Aug 2021 16:12:32.3224 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6YQOx+QePxGfm7SPjS7WYkjGrvLjKNnGyCwfj5FSK4Pa07b+MTiuvgrUR1DYRlGg7jlcYSq7NxneGokfs8Cy653OZpeJfoeVwJajYaH1tbM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5196
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v5 intel-next 0/9] XDP_TX improvements
 for ice
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
Cc: "joamaki@gmail.com" <joamaki@gmail.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "toke@redhat.com" <toke@redhat.com>, "bjorn@kernel.org" <bjorn@kernel.org>,
 "Lobakin, Alexandr" <alexandr.lobakin@intel.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 2021-08-18 at 16:03 +0200, Maciej Fijalkowski wrote:
> On Wed, Aug 18, 2021 at 09:52:56AM +0200, Maciej Fijalkowski wrote:
> > On Tue, Aug 17, 2021 at 09:59:01PM +0100, Nguyen, Anthony L wrote:
> > > On Sat, 2021-08-14 at 16:08 +0200, Maciej Fijalkowski wrote:
> > > > With the v5, I think it's time for a proper change log.
> > > 
> > > This isn't applying to the Intel-wired-LAN tree. If you want it
> > > to go
> > > through there, could you base the patches on that tree?
> > 
> > Interestingly this is the first time that happens to me and I
> > always based
> > my XDP related driver work on bpf-next.
> > 
> > iwl tree is some standalone tree or is it just the net-next ?
> 
> Turns out that you have the switchdev set in your branch and it's not
> on
> net-next yet. I have adjusted my set on top of that code and sent a
> v6.

It's net-next but it also contains the Intel driver patches that are
making their way to net-next. Most of the time they'll apply to either
without issue, however, it depends on those extra patches. In this case
sounds like the switchdev set didn't allow for a clean apply. Thanks
for the v6.

> > > Also, looking at NIPA, it looks like patches 2 and 3 have kdoc
> > > issues.
> > 
> > Yeah I saw kdoc issue on patch 3 and wanted to ask you to fix this
> > if you
> > would be applying that set but given that you're asking for a re-
> > submit
> > i'll fix those by myself.
> > 
> > > Thanks,
> > > Tony
> > > 
> > > > v4->v5:
> > > > * fix issues pointed by lkp; variables used for updating ring
> > > > stats
> > > >   could be un-inited
> > > > * s/ice_ring/ice_rx_ring; it looks now symmetric given that we
> > > > have
> > > >   ice_tx_ring struct dedicated for Tx ring
> > > > * go through the code and use ice_for_each_* macros; it was
> > > > spotted
> > > > by
> > > >   Brett that there was a place around that code that this set
> > > > is
> > > >   touching that was not using the ice_for_each_txq. Turned out
> > > > that
> > > > there
> > > >   were more such places
> > > > * take care of coalesce related code; carry the info about type
> > > > of
> > > > ring
> > > >   container in ice_ring_container
> > > > * pull out getting rid of @ring_active onto separate patch, as
> > > > suggested
> > > >   by Brett
> > > > 
> > > > v3->v4:
> > > > * fix lkp issues;
> > > > 
> > > > v2->v3:
> > > > * improve XDP_TX in a proper way
> > > > * split ice_ring
> > > > * propagate XDP ring pointer to Rx ring
> > > > 
> > > > v1->v2:
> > > > * try to improve XDP_TX processing
> > > > 
> > > > v4 :
> > > > https://lore.kernel.org/bpf/20210806095539.34423-1-maciej.fijalkowski@intel.com/
> > > > v3 :
> > > > https://lore.kernel.org/bpf/20210805230046.28715-1-maciej.fijalkowski@intel.com/
> > > > v2 :
> > > > https://lore.kernel.org/bpf/20210705164338.58313-1-maciej.fijalkowski@intel.com/
> > > > v1 :
> > > > https://lore.kernel.org/bpf/20210601113236.42651-1-maciej.fijalkowski@intel.com/
> > > > 
> > > > Thanks!
> > > > Maciej
> > > > 
> > > > Maciej Fijalkowski (9):
> > > >   ice: remove ring_active from ice_ring
> > > >   ice: move ice_container_type onto ice_ring_container
> > > >   ice: split ice_ring onto Tx/Rx separate structs
> > > >   ice: unify xdp_rings accesses
> > > >   ice: do not create xdp_frame on XDP_TX
> > > >   ice: propagate xdp_ring onto rx_ring
> > > >   ice: optimize XDP_TX workloads
> > > >   ice: introduce XDP_TX fallback path
> > > >   ice: make use of ice_for_each_* macros
> > > > 
> > > >  drivers/net/ethernet/intel/ice/ice.h          |  41 +++-
> > > >  drivers/net/ethernet/intel/ice/ice_arfs.c     |   2 +-
> > > >  drivers/net/ethernet/intel/ice/ice_base.c     |  51 ++---
> > > >  drivers/net/ethernet/intel/ice/ice_base.h     |   8 +-
> > > >  drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |   9 +-
> > > >  drivers/net/ethernet/intel/ice/ice_dcb_lib.h  |  10 +-
> > > >  drivers/net/ethernet/intel/ice/ice_ethtool.c  |  93 +++++----
> > > >  drivers/net/ethernet/intel/ice/ice_lib.c      |  88 +++++----
> > > >  drivers/net/ethernet/intel/ice/ice_lib.h      |   6 +-
> > > >  drivers/net/ethernet/intel/ice/ice_main.c     | 142 +++++++++-
> > > > ----
> > > >  drivers/net/ethernet/intel/ice/ice_ptp.c      |   2 +-
> > > >  drivers/net/ethernet/intel/ice/ice_ptp.h      |   4 +-
> > > >  drivers/net/ethernet/intel/ice/ice_trace.h    |  28 +--
> > > >  drivers/net/ethernet/intel/ice/ice_txrx.c     | 183
> > > > +++++++++++-----
> > > > --
> > > >  drivers/net/ethernet/intel/ice/ice_txrx.h     | 126 +++++++---
> > > > --
> > > >  drivers/net/ethernet/intel/ice/ice_txrx_lib.c |  98 ++++++++--
> > > >  drivers/net/ethernet/intel/ice/ice_txrx_lib.h |  14 +-
> > > >  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |   2 +-
> > > >  drivers/net/ethernet/intel/ice/ice_xsk.c      |  70 ++++---
> > > >  drivers/net/ethernet/intel/ice/ice_xsk.h      |  20 +-
> > > >  20 files changed, 607 insertions(+), 390 deletions(-)
> > > > 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
