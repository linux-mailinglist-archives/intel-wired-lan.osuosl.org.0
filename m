Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF70352094
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Apr 2021 22:26:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0DD1E405BC;
	Thu,  1 Apr 2021 20:26:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xF6yfDQk2a35; Thu,  1 Apr 2021 20:26:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E09A1401E5;
	Thu,  1 Apr 2021 20:26:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F382A1BF29D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Apr 2021 20:26:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E1691401E5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Apr 2021 20:26:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T2tjBywBXQ5v for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Apr 2021 20:26:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EB14440139
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Apr 2021 20:26:46 +0000 (UTC)
IronPort-SDR: x+2YsY+QowIUY05BUaz5xQfM1FNkHIYu6tiH/D9C989yb5v0P0Ch/7arlGZ4jLtOItuXG8hWe3
 PrqaimN0E6Gg==
X-IronPort-AV: E=McAfee;i="6000,8403,9941"; a="192429346"
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="192429346"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2021 13:26:45 -0700
IronPort-SDR: Mcc8jAvol86sRRxbSP2kKcbQ0P1us3ttWKJjGH9ReAwH9wI9/IL/lk3lDqvpyH1leqEe+WC6CU
 FL3No42dHx+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="412860059"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga008.fm.intel.com with ESMTP; 01 Apr 2021 13:26:45 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 1 Apr 2021 13:26:44 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Thu, 1 Apr 2021 13:26:44 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Thu, 1 Apr 2021 13:26:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gSrhRaRxSgVKtxf6FPkmq3dzr76jjArdVcv01jtBSWBoGOticcrIqII4KDGFNQr5+DZk0IyboMvRem6Y7MyOztzrTxV+77jaShXU7pWVnRdw1gmeAdCMTay4Z8kLgy9oOH0PfNEW2YssbBR7Z7oXoSfG/ZVmTGe4+jyb/mPDGKXWhN7I5BUEZIs9WjJzFoVXjRVxLE6pT7hIwYE1wK2QaFzNTqlu+i2HCrUnibNc80pq03Hp681tE/MtnT1K37kHFDY36QVG7qrvJPaAtjegzX10A524u8UxZv35qdSjWHExO5ZjhPYBxT2f6kZpwbxBBNVdUzChzHupK/JMDpHYTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FHeBaEKpRSuDWEqkwoEV8Gnd58+saDfEYzeLpAQX2Gw=;
 b=RSViNsqZbwtcn/yf4/RUGY5TxTP374pDCREgdyzSKx3IIzAL6ndsdXhzQWuf4DHb9XA8yEbiaF7ZMRwxWAFqoiWgIicBxj758/csXnKShqe5uixEIaUyKxpyr2UpwIIaVqVsuZQTbonFDybgsEmsOPgXxzxLQiwqFilkc/LYN1eFLDnSjcq+SpJNJi+WT8Kq4ILI9uI+e8/JC1nW5KCA55saFzJglL1CTohtpxdiNhqVzU6byBYABYausUOJ3OVQau/b88H1Ka8MLAigqkHxKqia93jx3qEmHHoAcwBVrf49I905elwfVyIIjTdVLTpev1208h+sQjhGr9R1r1xeew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FHeBaEKpRSuDWEqkwoEV8Gnd58+saDfEYzeLpAQX2Gw=;
 b=S6MxCb8iegbSqnkuv95iPqLfdJ9cj6f9rmBvK+aG8kQWtj/ChIZBgMESLQ2xzxDeKsBrAkrBkxT8s1paJ77f1y4Kpkzv7i/EjCRHYSTpHALCcOvkWbb9T7wSXteCjokBjtytH0QtjxcEhxX04SqplF1f277J0OdwPUPRPScPv1c=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB2927.namprd11.prod.outlook.com (2603:10b6:805:cc::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3977.32; Thu, 1 Apr
 2021 20:26:42 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::85b7:921c:ff53:696e]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::85b7:921c:ff53:696e%6]) with mapi id 15.20.3977.033; Thu, 1 Apr 2021
 20:26:42 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Chittim, Madhu" <madhu.chittim@intel.com>, "Yongxin.Liu@windriver.com"
 <Yongxin.Liu@windriver.com>, "andrewx.bowers@intel.com"
 <andrewx.bowers@intel.com>, "jeffrey.t.kirsher@intel.com"
 <jeffrey.t.kirsher@intel.com>, "Creeley, Brett" <brett.creeley@intel.com>
Thread-Topic: [PATCH V2 net] ice: fix memory leak of aRFS after resuming from
 suspend
Thread-Index: AQHXHItNzep6dM+QaEKDLxJvVxGD5KqdcgEAgAK/joA=
Date: Thu, 1 Apr 2021 20:26:42 +0000
Message-ID: <c30428155948b44cf08aa438db8bebff67730207.camel@intel.com>
References: <20210319064038.15315-1-yongxin.liu@windriver.com>
 <PH0PR11MB5175BAF6F45C7F862CD0A33DE57C9@PH0PR11MB5175.namprd11.prod.outlook.com>
In-Reply-To: <PH0PR11MB5175BAF6F45C7F862CD0A33DE57C9@PH0PR11MB5175.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e48ebb14-188c-429e-ef66-08d8f54c7697
x-ms-traffictypediagnostic: SN6PR11MB2927:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB2927AE5A056BCC290E0B5D6FC67B9@SN6PR11MB2927.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vXv8nv7631qowZ099YpEiC56Rb7yEM7GPkPi85F2GqtyeLyfYtFDSIGVWiUksSb0E0AZmJ7cHQglwzcaDtJ8kIME727CWWFt2ylC57sCHRYm29y1zrMlo1SOnTjUUUq4mBHp0wM/U43iQ7A4mHgJQp1/jkkCMAgs3xdcLC+8GTPDu0J+mXsI3tvCVLbzH4y3Io1X6dMTblTxGwB3CNn3SPkDQj8pE8qKaSyzjKiDmcr85OJJwn/Ra5/8rERp62edbTt0k/cSQX9Z/tLSDQBjjGnDHhSljAow0ibWsH1rBp8BE+mArj8dRBz0FhzuYyInatlnMunm7lOn1m9eq8FNFE/NVG+SqTrhlDTGpGXTZHP4BLH3SGMJbzKvw3BYaOd6eA5mBQ7RbqBOVhyvtnB+tnSAE5fGrxDm7qWvI+20Q3xRapwaYsTTAkAralnkDy8UTkWb3pZfd/lehTcWs3HJCc263UjEYBiTrPvEGC1Q+SA6kkRUMy+NzKyld9VSJSaOinlziVC+9AJyZthYL+t8nDfUqdgRIuFn4+WA4lrM43CWLQEBHAoE9EEezbHKbKhj3dnZlmv6jehZTSpcxiiCTCWgFCHh7ncqWcSEa4gKfoDTroK1s+qZB5ZVNhK3qDO++EGzjEF1Osn1eUHNWJQGhQzyf9xoaW7uIa4yBRzmxrA1ddpX+LfVMU5H0m6AIBqJ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(346002)(366004)(136003)(39860400002)(396003)(8936002)(186003)(8676002)(2616005)(66556008)(6636002)(26005)(478600001)(53546011)(36756003)(110136005)(6506007)(71200400001)(64756008)(316002)(2906002)(66446008)(86362001)(76116006)(6512007)(54906003)(6486002)(5660300002)(15650500001)(4326008)(38100700001)(83380400001)(91956017)(66476007)(66946007)(99106002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?U2RFakJQSXdzNm1XeVBzeWdLYjE2Q1FJc1Z6bDhwb0RLUzRHVWgxWWRITzh1?=
 =?utf-8?B?VWlkcDUwd0kyZ3pOSk1Da2hmWFpwVDlQbmlLT3hyWE9EQzNzdGVFM0FmbG5k?=
 =?utf-8?B?TlRvb2swUkNQbTNubzh5dmdiRmFvTFhWSUJNQTFDOTR0Mkh4bDUzcmo3bnBJ?=
 =?utf-8?B?bi80bjI1OWVIdXRJVjFQZmZBdFd2V2tVd2tqVE5mUDlraWVHeVpKZ3l5K1cr?=
 =?utf-8?B?Q1VTWGc4RFViZzhXWWx3bnFEc3dwU1Z0MmJneTM0c2lhb1RWRHJhNlc3UE53?=
 =?utf-8?B?YlM1MVcvaTVNMXhKV0hmVHpyUTdqYXRvVU51ai9ZOFN3V0ZGVXhMQTVBMk5a?=
 =?utf-8?B?UEVmb1RKeUVaRVBUUFFMOS9oL1ltZ1dNSTNmUUU3Tk0ybUlhVGFia0tSUFpN?=
 =?utf-8?B?ZzF5VnZLNGZkeEJFOUlFRUJWWW1uWHhXeXpJMjlobmlJSm1veUxwdG95b1R1?=
 =?utf-8?B?dVVnV2pOUjFIMFhDbTRhdDZkQXE0MVRjYm5hTmM3ZmdJK0c5QnVrdHdicG0v?=
 =?utf-8?B?ZUJyeFQrK0FCQ2Q0czcxaklZUUN1RlpGK2FISUdIaFl4MFhJZmV3Y0NuaXB2?=
 =?utf-8?B?ZzRrVnRkQlF0WTcwcWRFVkRTdFFjcDdGRnR1OHpLWEMyQ2MrMUYzMlgvTTdL?=
 =?utf-8?B?ZVpWZWw3Y21DWmdzVlJmKzNxdEFIY0lSQXY2dzhEeFE3NEd0OUQzTEQ1eDlx?=
 =?utf-8?B?KzZaL1MrVDJ6c0tKWVpNMm1PQWtTWmpYMXJwMkNRcWdTZThVblI3M2NLeDJn?=
 =?utf-8?B?TkI0NHpjRlVoWENBbTQ4a21YcVN5cmIyZEZkbThIQytDNHgwMDJocGk0Mjdi?=
 =?utf-8?B?bG45bFhpU0p0bGJSYUFpZnBKNXQ2Z2lrZlRrSlNNallzak1uTVhHblYxTWtT?=
 =?utf-8?B?WW5iZnZ6MTZkUjJ5VndtNlpTREMyVGJmV2tEREFWaUF2VCtXV0ZkUXBjdjNU?=
 =?utf-8?B?N25KUFplVEJPRXo1dzVGdGFxOGp0Z3RWVGhMMXJ2c2FQNzlQbzJzODRRbkta?=
 =?utf-8?B?UGlRMVNudzZ6eXYwUE9na3ZGVE9FWmhrcDFFQU5UNDJXTWV5OThmSHhXcHA1?=
 =?utf-8?B?Sy90Z3NuSm91Wm5wOXhqSW5PWE5GQW8vTHdveUthKzZXK2lxOGdQZHIreVhy?=
 =?utf-8?B?bXZtNkRidC9TNld5ZndmNkxuRVVZclYza256OFBkeW54SWU4RDl3dWorTDAz?=
 =?utf-8?B?a0ZoRkdpWkozNmFTeFE3YmhaRDZEV0dsdENLaFM1Lys3bmxCUnBkRXk4ejAy?=
 =?utf-8?B?OXRwMzBKSlVTZUc0eDJIKzJxam0zQkE2L2JjMTRqOUFNVHBaTnpRcGh5ZlJn?=
 =?utf-8?B?dE0xVEw5dnBodmVyditXelNNYVBpc3BFU3BZcFR1dTZGeUZoc2ZZN0ZPdHNB?=
 =?utf-8?B?UGk1YUJCS3lnMmlRMVhvVFdUdGVoU3doRjdtYjlKWnRrWmlBYVNNYXdRQlVn?=
 =?utf-8?B?Z2JQakhwc1BaYWMzVXRyak13ckZ0Wmdlei9iY1YxU3lmWEdBY3JJcStYTXJw?=
 =?utf-8?B?WDM0SzBlTDV5L1Uwelc0V1c1UGphK3VLSnpTazlUVzZQdjRhRnRKWGo5MGxs?=
 =?utf-8?B?SmlCWXJhQUpvYTU0S3ZwNnBaR3RRWVRkblk0UFFZbENGR0RTcit1bG5zaENY?=
 =?utf-8?B?YjFqZzA5NHZBT0VGVG9xaFVuQXdubU9sREpyenp6U0J4Zk1MV29MYVlLZzNY?=
 =?utf-8?B?YnBvMnZ2ZW5UekR6NEdJZ1Rycmx0d2l0c3VkZFRDanlSV3VCQmRSeGRueDhl?=
 =?utf-8?B?aVB3ZUkxeWplWlRwVkp6dFFDajlqaTM2cE05YlVzZlVPY1VVYVVNemFyd1lN?=
 =?utf-8?B?VDdPNjVZZytGU0l6MEJmZz09?=
Content-ID: <A742E89368DDD8488BAA24AE0D73163F@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e48ebb14-188c-429e-ef66-08d8f54c7697
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2021 20:26:42.7784 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: A87pjWVFM/Vvx1jq8UpYOkCGD504sMFxQNqMEUfD6mjda1t8esDO6BrDUwmK1XlMABozMttIq7ffnMtHswv7LxXfv6W/YSTYSJzkwi0m/Q0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2927
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH V2 net] ice: fix memory leak of aRFS
 after resuming from suspend
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

On Wed, 2021-03-31 at 02:28 +0000, Liu, Yongxin wrote:
> Hello Brett,
> 
> Could you please help to review this V2?
> 

Hi Yongxin,

I have this applied to the Intel-wired-lan tree to go through some
testing. Also, adding the Intel-wired-lan list for reviews.

Thanks,
Tony

> Thanks,
> Yongxin
> 
> > -----Original Message-----
> > From: Liu, Yongxin <yongxin.liu@windriver.com>
> > Sent: Friday, March 19, 2021 14:44
> > To: brett.creeley@intel.com; madhu.chittim@intel.com;
> > anthony.l.nguyen@intel.com; andrewx.bowers@intel.com;
> > jeffrey.t.kirsher@intel.com
> > Cc: netdev@vger.kernel.org
> > Subject: [PATCH V2 net] ice: fix memory leak of aRFS after resuming
> > from
> > suspend
> > 
> > In ice_suspend(), ice_clear_interrupt_scheme() is called, and then
> > irq_free_descs() will be eventually called to free irq and its
> > descriptor.
> > 
> > In ice_resume(), ice_init_interrupt_scheme() is called to allocate
> > new
> > irqs.
> > However, in ice_rebuild_arfs(), struct irq_glue and struct cpu_rmap
> > maybe
> > cannot be freed, if the irqs that released in ice_suspend() were
> > reassigned to other devices, which makes irq descriptor's
> > affinity_notify
> > lost.
> > 
> > So call ice_free_cpu_rx_rmap() before ice_clear_interrupt_scheme(),
> > which
> > can make sure all irq_glue and cpu_rmap can be correctly released
> > before
> > corresponding irq and descriptor are released.
> > 
> > Fix the following memory leak.
> > 
> > unreferenced object 0xffff95bd951afc00 (size 512):
> >   comm "kworker/0:1", pid 134, jiffies 4294684283 (age 13051.958s)
> >   hex dump (first 32 bytes):
> >     18 00 00 00 18 00 18 00 70 fc 1a 95 bd 95 ff
> > ff  ........p.......
> >     00 00 ff ff 01 00 ff ff 02 00 ff ff 03 00 ff
> > ff  ................
> >   backtrace:
> >     [<0000000072e4b914>] __kmalloc+0x336/0x540
> >     [<0000000054642a87>] alloc_cpu_rmap+0x3b/0xb0
> >     [<00000000f220deec>] ice_set_cpu_rx_rmap+0x6a/0x110 [ice]
> >     [<000000002370a632>] ice_probe+0x941/0x1180 [ice]
> >     [<00000000d692edba>] local_pci_probe+0x47/0xa0
> >     [<00000000503934f0>] work_for_cpu_fn+0x1a/0x30
> >     [<00000000555a9e4a>] process_one_work+0x1dd/0x410
> >     [<000000002c4b414a>] worker_thread+0x221/0x3f0
> >     [<00000000bb2b556b>] kthread+0x14c/0x170
> >     [<00000000ad2cf1cd>] ret_from_fork+0x1f/0x30 unreferenced
> > object
> > 0xffff95bd81b0a2a0 (size 96):
> >   comm "kworker/0:1", pid 134, jiffies 4294684283 (age 13051.958s)
> >   hex dump (first 32 bytes):
> >     38 00 00 00 01 00 00 00 e0 ff ff ff 0f 00 00
> > 00  8...............
> >     b0 a2 b0 81 bd 95 ff ff b0 a2 b0 81 bd 95 ff
> > ff  ................
> >   backtrace:
> >     [<00000000582dd5c5>] kmem_cache_alloc_trace+0x31f/0x4c0
> >     [<000000002659850d>] irq_cpu_rmap_add+0x25/0xe0
> >     [<00000000495a3055>] ice_set_cpu_rx_rmap+0xb4/0x110 [ice]
> >     [<000000002370a632>] ice_probe+0x941/0x1180 [ice]
> >     [<00000000d692edba>] local_pci_probe+0x47/0xa0
> >     [<00000000503934f0>] work_for_cpu_fn+0x1a/0x30
> >     [<00000000555a9e4a>] process_one_work+0x1dd/0x410
> >     [<000000002c4b414a>] worker_thread+0x221/0x3f0
> >     [<00000000bb2b556b>] kthread+0x14c/0x170
> >     [<00000000ad2cf1cd>] ret_from_fork+0x1f/0x30
> > 
> > Signed-off-by: Yongxin Liu <yongxin.liu@windriver.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_main.c | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> > b/drivers/net/ethernet/intel/ice/ice_main.c
> > index 2c23c8f468a5..9c2d567a2534 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_main.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> > @@ -4568,6 +4568,7 @@ static int __maybe_unused ice_suspend(struct
> > device
> > *dev)
> >  			continue;
> >  		ice_vsi_free_q_vectors(pf->vsi[v]);
> >  	}
> > +	ice_free_cpu_rx_rmap(ice_get_main_vsi(pf));
> >  	ice_clear_interrupt_scheme(pf);
> > 
> >  	pci_save_state(pdev);
> > --
> > 2.14.5
> 
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
