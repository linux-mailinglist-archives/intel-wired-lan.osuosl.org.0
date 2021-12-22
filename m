Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DB7E47CC11
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Dec 2021 05:24:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 90CB082F31;
	Wed, 22 Dec 2021 04:24:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jsny2KAcPgiQ; Wed, 22 Dec 2021 04:24:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 87F8782ECF;
	Wed, 22 Dec 2021 04:24:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2C6A01BF86C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 04:24:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 154C84155A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 04:24:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XE7JVnnW5D9K for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Dec 2021 04:24:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5B00241559
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Dec 2021 04:24:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640147080; x=1671683080;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MAlIQYBlt70LsuVUpKbrZEJz+S0TUEgDK33t/4ksi5Y=;
 b=ZDBzJ3zg5mSW9i1MMDmjuJgareJC33TSBvKmuagF2JaWjW5Bt5RLhK1J
 B/DvqHVOz0hBsGIvID1GGKUwKYRzUn8BsNfYsP0UkwTCnr+jq0r60ZFXd
 rWkKQqpHrAIuOPQSY85QWbrod0ObKPI+wVTaNSWEJmsMJhKj61ffYMDRC
 UgXM0ILJ2LxvlPSh/GmIJRRNj7f7tI41UwIzZOn7lv2IIQwpvXujSpNP1
 RmxsC3l+IU5Q2NbncN6/k6PNK+3KkDPO2ZWjrrYV8UbfwaxYoPHsXTxxp
 6VEtjDPQQZypXMwg0r8l1NtDlkSQRV1tmF2H5U7YDe6DJUcUSOSjbirNW g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10205"; a="303912582"
X-IronPort-AV: E=Sophos;i="5.88,225,1635231600"; d="scan'208";a="303912582"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2021 20:24:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,225,1635231600"; d="scan'208";a="758168358"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga005.fm.intel.com with ESMTP; 21 Dec 2021 20:24:39 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 21 Dec 2021 20:24:38 -0800
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 21 Dec 2021 20:24:38 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 21 Dec 2021 20:24:38 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 21 Dec 2021 20:24:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gcs5LyNitybqg9HWtqAV+5IPSIX7z1BKoa7nrobEFTna3j/oGnX+NWwgtwsNuTHfsvn7YTzk0IL4l4NKP/wOQ6x5u5dtwA9QIIZ7u69WnO9WGngDf/shcmuUw4pqjTXF8gs0GPM3gqgApw3rrUiBTM8FsPiZZEoN8/3uxDR+3+ZE2lOyBqabU8i1F1II0dDZEoZQVHzXalwFdnqRokQhh5PT1lTd4xIiGvFbrWrczTSa4OXg/oP1M9Wk3Xvg86t/2mlTyE4bmWiGpYMb4Ag98hfqyS/hh8ezZfN4l2PoPTXVW5Flrvv7PBJrEwaCpmeaARYXe7xHOnG74bF9sIzvVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MxJYnJn3K9O2le6p3hfKL8r0Qtn5C7Vxll7FfPh0gZo=;
 b=egPPzDOw5Ed+NZU+xQNG6J4yHcRjI1BSvaVFNRSzI7q4wfPt4l4+NZm/s89IFJ4JQWyLAOvzyANidQZAIV/Z1p+rZCdvKBzrkf9j6bhNwdqedf1NQ5cCpOuyiHh8n4cwzl5z7cRfHsmhYDf9VQVeu6TdKlbFxAVXhavsDAoeSBEWWDvr9VYZAQtf8oBmJmCkW0sq4e3KtRF9OPuFlclYlH8Oo4SPXU8pGdysWkL0g6oBx0ijGgS6Xnj/fEGDE6+Is1unlCRUBx2aDIWmxf9viCATHMSB1T2PeRBhgD2SZtyZ2DxTnP6C511uG78ORoEs6Q2/To33ooRYy1jswI1/lQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB3093.namprd11.prod.outlook.com (2603:10b6:a03:88::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4823.18; Wed, 22 Dec
 2021 04:24:36 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::bc02:db0b:b6b9:4b81]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::bc02:db0b:b6b9:4b81%5]) with mapi id 15.20.4801.020; Wed, 22 Dec 2021
 04:24:36 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: Rui Zhang <zhangrui182@huawei.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH] i40e: fix use-after-free in i40e_sync_filters_subtask()
Thread-Index: AQHX5ShdrzbvB2H8F02V36TLcVyybqw+DSNg
Date: Wed, 22 Dec 2021 04:24:36 +0000
Message-ID: <BYAPR11MB336701DFBF02224E7EDA2095FC7D9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20211129135201.4097648-1-zhangrui182@huawei.com>
In-Reply-To: <20211129135201.4097648-1-zhangrui182@huawei.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bfa635fd-875e-4d19-683d-08d9c502f699
x-ms-traffictypediagnostic: BYAPR11MB3093:EE_
x-microsoft-antispam-prvs: <BYAPR11MB309398CF678179FF1928F0AAFC7D9@BYAPR11MB3093.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qiQ231pBfVNfINGjGd7RVC04EYwjjT518/wSZzyQ1HJ31ChPdJes9GbA4OvHAFphDN2XzGYmZkzXNYT8PSr9CykqY60ENAJ1DetVvF3jTmRB2FtkWaA3TgBNu0h+mUWA6vBc+cykl/TxcHiziiXWv99AgTH/maSGxAF3CgEoY8k6iNsGlOEUCE3ro5kiX1R6x0icsxrStxc51K4on+bSI2MzSUVYSs9GlergG6vRni0lRbUWJGEqR7i9wD6b7QZUfGyjNVU7X8fgjpHBNkyCLZ+sktQvqvML1L2noucGNRmKcI5eTq+5lYZ0/cnxvmu88YUguP+8ZRTMHqGofyMBN0juDVQ3wDQIJhHPMQfepb9T+MJTrsrOWx6lwlqo+NbgsUKRfrOA5UsGnQJRdoYtRBZH6LJTIl9nkrnoxBqWPXtgr8dP8L+DAppnhZ40KR2EKz86FnPTpIiE2Bc4/cklLEAWf0YCv+/NSPdc7+qpqWhsUiUOP7Z1YrSqHkrJCix+fRPfYOC/odf52dVX7GqJ5Z83bLgNZRCpRMDzwgFEUpY+zW1qm9vE3/CSwzrnwCQB6oGWczMzH0Igb5mfrWN/47/AgGafZUJ5A1037FhhXvge52EdhF9s/2yTQtrGzn8lTu+ou0bhfY3cESxZA95qGYebuu8R6+qWZZ1l+1J+OBkiDSK5o6VMv8vRFZ9w5/ESZxjVRH1GSJpcLhhkHcMAzA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(52536014)(66556008)(64756008)(66446008)(66476007)(66946007)(71200400001)(76116006)(186003)(4326008)(33656002)(8936002)(26005)(8676002)(6506007)(508600001)(55016003)(53546011)(5660300002)(38100700002)(110136005)(316002)(7696005)(86362001)(122000001)(83380400001)(82960400001)(9686003)(54906003)(2906002)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vi1GJhE+g+0gEZo8ofIBDuh7Xl29KmduujvtdjguFNIeFhZCyx/d1GqsoM9U?=
 =?us-ascii?Q?Vn1+6cvEx8LRbZnfOIzt/z6WNDLLU7BPOEYJ7Sc6wgXQmVtdX0Y/AJKfaeGy?=
 =?us-ascii?Q?ZKWSGxvCqy6Z+Ybe5e6lGXTDXUid58nOYMe4lwYF/jGbnhkbLb+m5EXoO0AL?=
 =?us-ascii?Q?kUF4K5tsNJdv6LTd5s7ddgHY4SWIPDGS/lTblv7BhX+5PvykjUEjOg7vdnVj?=
 =?us-ascii?Q?nnoKoNKgX5ZgBQgHXozldP2cT+H5MkHcrSr2Y4jEZS4vX2WOSr1cp1S3oYcT?=
 =?us-ascii?Q?AKPhC6Y3jfUy2SyovyLlO2cuWuQhto/rcFSvjWrqK+mtGavG66hup1LzVUE8?=
 =?us-ascii?Q?4W67mqM9DOS2wd5A3MdmjPGnGJDJ94ssSZDLLbGq8UvUXItDCH4FkBS48f6F?=
 =?us-ascii?Q?BoYwCYe8xZAxFTKEotEdIDL7t+UsN7h6GWAVgfePxtdj7pSZDTUy600mAkGo?=
 =?us-ascii?Q?ZAM+3WZXq0WrANj0OmjY6Wxs5PGmNvjptdnLkcZKDCHDyvZD8f+e7CnK/4cj?=
 =?us-ascii?Q?H00WZqbus61VCHM/EKcmrzvn58nZAHB58rP2HD4xaXlR5aW2H8bjWgdsSo2I?=
 =?us-ascii?Q?bi6Lug44OELbk6PR+5DN/9Hd53wWgqBkFJ7Ju8gTQSAMaZbbzf6vBiJpDKmV?=
 =?us-ascii?Q?WujpQpxlXSQN8C6DIv5Ek/9joDk7zkyjdeujgMTMq58bjHf5LYoNG67NX8KJ?=
 =?us-ascii?Q?Rb9pbZ9NudLJ8JIOjhCx2G94/cXDAG9FR0WNIDZ+SCzJlQYh01vZdxZg+JjP?=
 =?us-ascii?Q?0GB2Bi3pzLf5gJClPHHrauFDUAH0qLm6fWORFwsQZdirdYjDbILpgY9AMTHR?=
 =?us-ascii?Q?nJCO5yu/Bvyr8nEYw8rCxuWGIKdoEplzq2tSpg2ZEpk4jtOgCVEYBfSshOiC?=
 =?us-ascii?Q?XCgccPgY5xHW3B20vJNY1O1Ljh2oQQUDvbqphwMLZKuOc8GvLZQfzHEL3APu?=
 =?us-ascii?Q?SRlXp1Xqf7+/ubmILUCrW3y/EhbeWycp0I9nJWR67gJshiUg2gvKi7iqeXtI?=
 =?us-ascii?Q?hFYhoHgdVipV84nLNyOr4l0a9UHqwSTGs8D6QFYVd3d4c7Y/NmGXDmrdx6mM?=
 =?us-ascii?Q?0YCiCti2IqKENKoWJ5l9CcdN8pUVqtSaxxtzh1Q8KAnPwIaaxXfoBoEM2lwH?=
 =?us-ascii?Q?JxMXfFdNKtgF4+bSmj2+1/38XU9nwFmVVZOn0jPaTzS3JaHru5aEGkZ/LPQF?=
 =?us-ascii?Q?FAMs1ljaAFBaiwy9SFmqPQRLzU1rJTrlX9ZeQOSVIK3G8Xrrdo8fIlLg66ni?=
 =?us-ascii?Q?t8hDaa0+EsEkzXh4HD86v89WN5Tnt3jl66DCn27SPXk5AKOwB7M+ZDuJtvLD?=
 =?us-ascii?Q?LzWWfn6ejmBpwaYn4OhxM0Ywa+rdLvpla2Fn8KLJLQZiuKwdCdj+MWMMtovC?=
 =?us-ascii?Q?N7UvXhbI6s2+wtuw8h8An9zArHq8mEsvlp5+6dWPNcG4vQXpDSdLLZpCMotN?=
 =?us-ascii?Q?P/usB+llyWJTQgBsWwuFXSOHYPEs0039gXEDTuSAH+Sh+VbaZ7e83zcK0pcO?=
 =?us-ascii?Q?dCPDfqwZqWwduMS11QrZYdqV2A5zKNHZHJKQtAcxxmUqORmxQpCSA8J5+0HL?=
 =?us-ascii?Q?NyqeNYds2RnigbLS1CqqMCtUfBTq+33mFN+SbJquOonyM8Y2yFsIR7hhOA4G?=
 =?us-ascii?Q?q8e1qiBe3b1LhnVOLVNk0KY=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bfa635fd-875e-4d19-683d-08d9c502f699
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Dec 2021 04:24:36.6397 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LHgE15gFXeO8GZcZmEF+ItEGB1X7qJ/vT5ksss6JWbMKScNw1NGR9pjuZCM4aOi/JZ0dARA1BoWXAr/CJvoqXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3093
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] i40e: fix use-after-free in
 i40e_sync_filters_subtask()
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
Cc: "rose.chen@huawei.com" <rose.chen@huawei.com>,
 "zhudi2@huawei.com" <zhudi2@huawei.com>, "yanan@huawei.com" <yanan@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Rui Zhang <zhangrui182@huawei.com>
> Sent: Monday, November 29, 2021 7:22 PM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; intel-wired-lan@lists.osuosl.org
> Cc: rose.chen@huawei.com; yanan@huawei.com; zhudi2@huawei.com;
> zhangrui182@huawei.com
> Subject: [PATCH] i40e: fix use-after-free in i40e_sync_filters_subtask()
> 
> From: Di Zhu <zhudi2@huawei.com>
> 
> Using ifconfig command to delete the ipv6 address will cause the i40e network
> card driver to delete its internal mac_filter and i40e_service_task kernel
> thread will concurrently access the mac_filter.
> These two processes are not protected by lock so causing the following use-
> after-free problems.
> 
>  print_address_description+0x70/0x360
>  ? vprintk_func+0x5e/0xf0
>  kasan_report+0x1b2/0x330
>  i40e_sync_vsi_filters+0x4f0/0x1850 [i40e]
>  i40e_sync_filters_subtask+0xe3/0x130 [i40e]
>  i40e_service_task+0x195/0x24c0 [i40e]
>  process_one_work+0x3f5/0x7d0
>  worker_thread+0x61/0x6c0
>  ? process_one_work+0x7d0/0x7d0
>  kthread+0x1c3/0x1f0
>  ? kthread_park+0xc0/0xc0
>  ret_from_fork+0x35/0x40
> 
> Allocated by task 2279810:
>  kasan_kmalloc+0xa0/0xd0
>  kmem_cache_alloc_trace+0xf3/0x1e0
>  i40e_add_filter+0x127/0x2b0 [i40e]
>  i40e_add_mac_filter+0x156/0x190 [i40e]
>  i40e_addr_sync+0x2d/0x40 [i40e]
>  __hw_addr_sync_dev+0x154/0x210
>  i40e_set_rx_mode+0x6d/0xf0 [i40e]
>  __dev_set_rx_mode+0xfb/0x1f0
>  __dev_mc_add+0x6c/0x90
>  igmp6_group_added+0x214/0x230
>  __ipv6_dev_mc_inc+0x338/0x4f0
>  addrconf_join_solict.part.7+0xa2/0xd0
>  addrconf_dad_work+0x500/0x980
>  process_one_work+0x3f5/0x7d0
>  worker_thread+0x61/0x6c0
>  kthread+0x1c3/0x1f0
>  ret_from_fork+0x35/0x40
> 
> Freed by task 2547073:
>  __kasan_slab_free+0x130/0x180
>  kfree+0x90/0x1b0
>  __i40e_del_filter+0xa3/0xf0 [i40e]
>  i40e_del_mac_filter+0xf3/0x130 [i40e]
>  i40e_addr_unsync+0x85/0xa0 [i40e]
>  __hw_addr_sync_dev+0x9d/0x210
>  i40e_set_rx_mode+0x6d/0xf0 [i40e]
>  __dev_set_rx_mode+0xfb/0x1f0
>  __dev_mc_del+0x69/0x80
>  igmp6_group_dropped+0x279/0x510
>  __ipv6_dev_mc_dec+0x174/0x220
>  addrconf_leave_solict.part.8+0xa2/0xd0
>  __ipv6_ifa_notify+0x4cd/0x570
>  ipv6_ifa_notify+0x58/0x80
>  ipv6_del_addr+0x259/0x4a0
>  inet6_addr_del+0x188/0x260
>  addrconf_del_ifaddr+0xcc/0x130
>  inet6_ioctl+0x152/0x190
>  sock_do_ioctl+0xd8/0x2b0
>  sock_ioctl+0x2e5/0x4c0
>  do_vfs_ioctl+0x14e/0xa80
>  ksys_ioctl+0x7c/0xa0
>  __x64_sys_ioctl+0x42/0x50
>  do_syscall_64+0x98/0x2c0
>  entry_SYSCALL_64_after_hwframe+0x65/0xca
> 
> Signed-off-by: Di Zhu <zhudi2@huawei.com>
> Signed-off-by: Rui Zhang <zhangrui182@huawei.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 24 +++++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
