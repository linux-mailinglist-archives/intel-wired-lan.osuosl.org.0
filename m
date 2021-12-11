Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 44F5F471395
	for <lists+intel-wired-lan@lfdr.de>; Sat, 11 Dec 2021 12:25:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 39E46857CA;
	Sat, 11 Dec 2021 11:25:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VWs7Mt-f5hFk; Sat, 11 Dec 2021 11:25:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3DC9E857C1;
	Sat, 11 Dec 2021 11:25:17 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3949A1BF2BD
 for <intel-wired-lan@osuosl.org>; Sat, 11 Dec 2021 11:25:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 26AE8857B2
 for <intel-wired-lan@osuosl.org>; Sat, 11 Dec 2021 11:25:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VHbUtwgpeORY for <intel-wired-lan@osuosl.org>;
 Sat, 11 Dec 2021 11:25:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D1A15857AD
 for <intel-wired-lan@osuosl.org>; Sat, 11 Dec 2021 11:25:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639221910; x=1670757910;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=RTDG7LH5my7g12TnOUm774vMZO2TFyXU99XEsRMRF4o=;
 b=WmbnuTKEQUQKPMq/XJvNH3Vv+j0SacN7eZgdYa04yKjKpu092i5klp1d
 AC0qUJ9J7vFP7/EzhHPPVxcIZ4lPIG+kLvsCpvoSE0CRNrPAPVnaU/c/T
 HHuNU6snDK5JqwYliPrYs0kpXKyV4J+m7KgcDBPOCH6a2NN9LEfnjRa8S
 kRRqNKsPc665Q8hzolsrAswrpmIpgRdPjPHllsBj/bG+3s/tJwWpdeQAO
 LG5trleUCYkJ5rbdrc/kmsv3z1YmO2KZLBZvGe/gVyrusq44AjgFfD+1C
 FraFWNUn3siicVQozGUdtUjotJXRB2W6l/nsqjM4r4ZMQrS7U9qwmecCl g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10194"; a="225391519"
X-IronPort-AV: E=Sophos;i="5.88,198,1635231600"; d="scan'208";a="225391519"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2021 03:25:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,198,1635231600"; d="scan'208";a="602497132"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by FMSMGA003.fm.intel.com with ESMTP; 11 Dec 2021 03:25:09 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Sat, 11 Dec 2021 03:25:09 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Sat, 11 Dec 2021 03:25:09 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.42) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Sat, 11 Dec 2021 03:25:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=if4WXDykomDC+l1kZe4Jn/9DQS3P5wh+uvKbzHh2o0Re5GwnEadopTzwoZudUctQX7euKs5rIKTzjndbmJeTMMCF6Ujle6axg/SgmwpgK9KqR8DJWxEUhNbj3/jHs0wxWWdF8U7PZVAm3yeYXWLojSFbVXghtV5s2Q8d8kGW6HWy2NWOVGlZt0QuwHxaCu43MozjLThbnFry1DxoX5LLCu74sYbdtkERjzGYhdQk3+XRdL8yvT96Ve05/3x0T6RKYiQteTkq53z/K9gSlDjhKQqBedgBKK3ftTvZxj9iVeweU766jY/0tDRU+T9dLsxVLr3xSqATKVD6yeL1lYpi4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZREg5hRmPExEbwS+QOMuPgK4sJcwPEgqAIpZD313Dy8=;
 b=nETUzjZM8SuQCLWVKyH+5kO0NsjCsHtvEoSlUxaf57Pq2d/+gjsZx3hXwg8InXSMwtLYWWp/Damj8xvxKBPTiwwzHIY5k1s5B2nDfm4Bar3qDpmije6G1Io2XEvTb7Y+cwUEdhqHjCQvbwk3movrlESnpEFuYzMmZxpKEPy1BvkbVzn3zWChF29O+JAb8E6KXhaMKeezwQbDKrfUcB4WM25271QJeUJzUIhFWTNVxW0RSpD1c1qfW077ZUYlXM0jncPBwhjrHbne4RZTHq6LkFZicj9a04X6qNsKOgjkjIcZ3/vlyG6T392IN3ecXm4slfVpTmK7YaJyIw7cvWe8zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZREg5hRmPExEbwS+QOMuPgK4sJcwPEgqAIpZD313Dy8=;
 b=r6kKrFfUKGPf7cEQKrupC22Icerzq0o7MTL80a96685whsNBq4+qG5K7+o4drIZO5AF9G1x5hySDq7dDu2T4YHtwlGb/WLJZpQhdCbcQohc+IzPCSirQRtEiEJbSi6Ck3cij7OrCSNQkgG2mTfxSp7iiF/oor4KyO12PV6Megoc=
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4755.21; Sat, 11 Dec 2021 11:25:07 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::3114:bfaa:f64d:684a]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::3114:bfaa:f64d:684a%4]) with mapi id 15.20.4778.012; Sat, 11 Dec 2021
 11:25:07 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: Ken Cox <jkc@redhat.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [Patch 1/2] iavf: Fix panic in iavf_remove
Thread-Index: AQHX7B1/xtqYus/GnU+A+sAHN+delqwtKy1A
Date: Sat, 11 Dec 2021 11:25:07 +0000
Message-ID: <DM8PR11MB5621F5E938993A63D2424389AB729@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20211208102153.669338-1-jkc@redhat.com>
 <20211208102153.669338-2-jkc@redhat.com>
In-Reply-To: <20211208102153.669338-2-jkc@redhat.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 87fbe5f3-4af2-4f36-f22e-08d9bc98e2e1
x-ms-traffictypediagnostic: DM8PR11MB5655:EE_
x-microsoft-antispam-prvs: <DM8PR11MB565554B2A4B45D10F9541E7BAB729@DM8PR11MB5655.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DhnT+HmgqZ0hhmysiIwx13gdJpq5rTrxycFu/6UCiT6s5OdvgLQmm97j8yrojSxtPwOnF8kw9nkjjrhrkzGyjf6Y+ZKd2brv0rMDC0206Gi+R2VhUcjpPKfYnRtiL1oIfVENElOyhl5d53Rb1uAbq4ZU5NpMV3CGR7FnPcsNAD9Pha880KapXvQTZlG9PfSrYgsqZx6r/0pCD6v7X1rW0R4T7AK/RUkaCysImeIkQPTOEuovSvZ+RbP9XoXx+X7RCX7DDPMEsxB6+UMpjr/Vg00+3WGb9IePReFRMh9mNh0Ew5x3Yp1VCamwE1NUtzpT2hUnaQ+Xjnnq/qSwQxUcjWPcW/MtAPEM7HcliVCIeSXE0cS1y0K+FJNcaFMlP/FODsk6Ve1hQGlms2LEqJMRlXg170sZORhzY/+sCTCvfYXj8yOO11hxWRWCWKZSO8RQN4yYnYOvc0u+Kjbo2RHv3a2dcXDlAkvYoBJVOoaGGJqgTYwbUJYPcKq0sRmW3G469F8Z2sSQ+ihm08C5Fx4XuUZzmua4QpRJLWhKLFTJoMMVSP7glpyqsWETBGp39eh7DHfwLu8G4v+U+NouzN5pKZB53opGeIHTpWZsPbaNp/b2UtLJqBImdxOkS4Z+b0Dr4MM76u3Q8YvEQLmMpvShp3fRPJC8MsOf50F9ekFmyiAOGWpRCh4/YUMF5hfLxAcVl+CE7KtJL54GHdFPGI6dZw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(55016003)(8936002)(66446008)(53546011)(316002)(71200400001)(6506007)(83380400001)(8676002)(110136005)(9686003)(82960400001)(52536014)(66556008)(64756008)(66946007)(76116006)(66476007)(186003)(5660300002)(2906002)(7696005)(86362001)(38100700002)(33656002)(26005)(38070700005)(122000001)(508600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?Wg9JzXVMH4+BP6UdgOXS2WcomEcrzU7qOul7tSurLXmsENjoWOLcL/g2Ui?=
 =?iso-8859-2?Q?Az6igL6VI1ZHM9XaAkbmwwleApcROnhxDZ9pdgDn+05B3yZfpSZl4J9U0M?=
 =?iso-8859-2?Q?A25EQQkm0s6mSdlc5GJ79sZTvBYbydnFbRZkMuYkY/hYKKvHLhiC1VkWKd?=
 =?iso-8859-2?Q?Epkwm2uUfZLRFufjuoLca2hKXsfldYYl+nvojL11ENJI0QMkaIQBHxPI1Z?=
 =?iso-8859-2?Q?K+/hgDC2E7wXW/a1Aq6WpJb0dWLM6nMJTRj+5+KkFADbeunS1YNnjxbHb4?=
 =?iso-8859-2?Q?69LKKUb2Zx63vFd9JWtIWwk6Lb2XA0JRLwroT/8Lj2yb/DDf1HNz/5+Mih?=
 =?iso-8859-2?Q?6Yv/mNWw87iIpiNj8rcQz6sWUEc0Rm3eN9aMMQfp0c7N9KqCylhhNX+Izk?=
 =?iso-8859-2?Q?Mhqa10QoSS/juW56lw88J1YOCuVKgBw78FvXDYWTzZ724ipqp/stugoeX1?=
 =?iso-8859-2?Q?qFFMbLEw1DZR9RoVv/70Kn+FyOBtbG3yWCg4neZ4MREu8MAIY6+cdK7ctj?=
 =?iso-8859-2?Q?TA7SG5uix49YutdKz98NkluXQr3sHLchvgoiYCTtm3Jw/QHOwNDIolcaaq?=
 =?iso-8859-2?Q?+b7iZmJcz33/YKOWW5J/VqxCkaO9TVyo6n2wrhuph6aILEbpqmESTH/bzF?=
 =?iso-8859-2?Q?lbeSCxzfQIN6KM6z2uHjeApObMK/iXdY3M6MVWiOBvYNElgZwSg5LtmtjB?=
 =?iso-8859-2?Q?+DHr+KemL0+1jp3QdUddIdO/2+KCoL4GnvQtx4UIguBuvOkSIv6ZN2ANIQ?=
 =?iso-8859-2?Q?rNiSjd6DYVQbmJfJfjLWc6lBaD2v2epdL4HGYXcgdzCmc5VoAGxHmb7U9A?=
 =?iso-8859-2?Q?aM4WbC8X0X1RtynD7ibh/riC67w8Unf07f2S0kD20x5HCiQQRkBNKdjS/G?=
 =?iso-8859-2?Q?tgrM4OJ4z6mblTJi2rng1VLZPnKipLKnE2NOf5eT0gGbZz6dKpGaSAHI41?=
 =?iso-8859-2?Q?QZ8JODRMtI63hXyND55ETwauUa3xY7KKnsIN+uArlsSLfYVqSVX62Cduu2?=
 =?iso-8859-2?Q?sklkogDYlhyR+5zX5uC0wISsVhKcBi1rBOJPqaibzeXDWnIUD4pHlt+Ssc?=
 =?iso-8859-2?Q?0e4lJ/5L4D91YHdh4S66b3E/YyD1BvIjQvdcwMBBr6UGuX+RCufkRPwdAl?=
 =?iso-8859-2?Q?4pglgj8Nh79fMaBl8LX219VqVJ2G+gHnoyKWl4JBB1h/XkjjhyK+XWDNym?=
 =?iso-8859-2?Q?C/ZL/zpk2lNHS9T5GzizwPOjBfryuyTL+jBgzlC9/8kvRDdLfknor1Odf/?=
 =?iso-8859-2?Q?psNsludGa3SywlkvICAXsahG58Rrd5n1LGGFFJ/w4npsTwTiZ5EZmEUKTn?=
 =?iso-8859-2?Q?LvRItmbLbRS2dRpHdXbg3Ej9v5vCp8OO8mgCE1QFSburlAoeV7ZFh4EqW/?=
 =?iso-8859-2?Q?fTxny7STalcn0kzhxXsz6P0vYORG6V5FGBkQVAcdrsPd+iOIQj98rvkshg?=
 =?iso-8859-2?Q?kfLU32JA8opt1mmNg58+Cq0apsfaYvlmB3z+4l7ARxbYWuORjCanabMu12?=
 =?iso-8859-2?Q?2jcOP8Nq8FEvpsIF03M82utq6a0sVBfL8rzvtgcNEaSKLI/XqbM9+ef+LY?=
 =?iso-8859-2?Q?JqXxIYMDf7Kk+r3xMRIb0Ro79kzCtVe9eCS9t50AdY3IST2evu1bnPBifs?=
 =?iso-8859-2?Q?g8pnM54D7g72G49gBL5jRZXdcEd2k0j+6VrK+/96cAHfpDnmIQwWPmnSD6?=
 =?iso-8859-2?Q?FRu6NNcAyVjQxQpnjUO2ViSFLris7RcmoEQcPgeNekXGTtOeRy/3E7ZnYa?=
 =?iso-8859-2?Q?/93Q=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 87fbe5f3-4af2-4f36-f22e-08d9bc98e2e1
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Dec 2021 11:25:07.5990 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sLD8Bz4qnTVHAv98emE2ZPeJlk78rXS6WuYMSLBrLJ0ROQp+MO+Vy4lvKsKEedGQtmMsOj294FyG4OH84jw7Y+j0eyDcTyMPPceb0gnNCSc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5655
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [Patch 1/2] iavf: Fix panic in iavf_remove
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
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Ken Cox
> Sent: =B6roda, 8 grudnia 2021 11:22
> To: intel-wired-lan@osuosl.org
> Cc: Ken Cox <jkc@redhat.com>
> Subject: [Intel-wired-lan] [Patch 1/2] iavf: Fix panic in iavf_remove
> =

> It's possible for the client_task to get scheduled by the watchdog after
> cancel_delayed_work_sync(&adapter->client_task);  This can cause a panic
> because free_netdev() is called with the client_task still queued on the =
work
> queue.
> =

> The stack backtrace usually looks similar to:
> =

> [  121.272963] Workqueue:  0x0 (iavf)
> [  121.272969] RIP: 0010:__list_del_entry_valid.cold.1+0x20/0x4c
> ...
> [  121.272980] Call Trace:
> [  121.272985]  move_linked_works+0x49/0xa0 [  121.272988]
> pwq_activate_delayed_work+0x43/0x100
> [  121.272991]  pwq_dec_nr_in_flight+0x5d/0x90 [  121.272993]
> worker_thread+0x30/0x370 [  121.272995]  ?
> process_one_work+0x420/0x420 [  121.272998]  kthread+0x15d/0x180 [
> 121.273000]  ? __kthread_parkme+0xa0/0xa0 [  121.273003]
> ret_from_fork+0x1f/0x40
> =

> Signed-off-by: Ken Cox <jkc@redhat.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 6c2afbc8acbcd..63eec7edbf60a 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -3940,7 +3940,6 @@ static void iavf_remove(struct pci_dev *pdev)

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
