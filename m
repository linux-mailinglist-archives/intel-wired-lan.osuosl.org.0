Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CC4E423389
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Oct 2021 00:33:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9482D83EC7;
	Tue,  5 Oct 2021 22:33:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tKPxXITMfNaZ; Tue,  5 Oct 2021 22:33:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6E73D83E64;
	Tue,  5 Oct 2021 22:33:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6D8BD1BF94D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Oct 2021 22:33:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5892860D73
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Oct 2021 22:33:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FMPASe-Ok48l for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Oct 2021 22:33:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7F62F60D79
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Oct 2021 22:33:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10128"; a="212805488"
X-IronPort-AV: E=Sophos;i="5.85,349,1624345200"; d="scan'208";a="212805488"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2021 15:33:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,349,1624345200"; d="scan'208";a="439693342"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 05 Oct 2021 15:33:04 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 5 Oct 2021 15:33:04 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 5 Oct 2021 15:33:04 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 5 Oct 2021 15:33:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WttaZP5EmFKJlXr6iimVS2B0s3WxhUaU2/P618lMhjWYl1tfCs0Svb0XKfbY93DNSGqqFyY0p/uQHwAqHh1xsZIStm7+4CH2NIXyuocNTWtlOTsUQ73JF6JlZp9SVAn0D4S7m4dlFEt1WyI4AhyLFJ3VGIiyQiwaDS6mQgL/BLWtj0D6jkBGAycrYVi4x0wsGNOkDLLCl88PJ1kmKfJuaqCbZUKrMjkNO6UhNQHOzTlilQL+g1i1bSiBA/1IQU6q5JSdh4fAmef+joot5lLaG9X808pcijXnrc0DpT5BfFiyOi+N50NJUQFQ+epW1wTFIR6Pa75OAKGsTgdZmtjZkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RrpFXa8EyFgV9HeTRlxhISZboOfg19Gee7UwPHL/6RA=;
 b=dVyllkujQGHlGCCq+2UHmxnokim94o9/h+VKy9M0j8LMGJjRUXR80v5q1viWjaKzPF8jK78nIzqu0kRzoyWjwOfirx5Py/nZ4FVNhk0P82tFEPQbZoSt2lBhfm2nBzYbF/ibu5CH278vtwLgMa2lDPEhomNmY6Bti3bCgDD4VKB3Fv7/2M7m8ywNktne1Hu3Mvy6p+joY0U0RvkIowhHQ0ylJknZDnpZAYsLSeNipMi5LySS0G9dgKl0sNs4bRm0ZBrLdWlNT8J4gKS/0Qzh6+m3mHdYrBG0Uk4GAGr+4CLJG51pQvL6XK11LuSPpoa3EfGoratPVI3tUXGa5M6Rsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RrpFXa8EyFgV9HeTRlxhISZboOfg19Gee7UwPHL/6RA=;
 b=PjChECiu1wfT9ZydNLqo8cqzirdZ7y/jb3ZQi0HBPOcafUZdchTZwl+5KnKxfPg0u8nMfM4eE6MKbDJqMaSWU5bG/SSLhNMsBpJNkSrkceRY6cDwMVG7idcZwUWBHCMP+GTOzjAYlyrmfIIqNHkPhLEPRTXOEyrn/1NbQOoZf7E=
Received: from MW3PR11MB4748.namprd11.prod.outlook.com (2603:10b6:303:2e::9)
 by CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.16; Tue, 5 Oct
 2021 22:33:03 +0000
Received: from MW3PR11MB4748.namprd11.prod.outlook.com
 ([fe80::194c:9213:9b06:8c7f]) by MW3PR11MB4748.namprd11.prod.outlook.com
 ([fe80::194c:9213:9b06:8c7f%9]) with mapi id 15.20.4566.022; Tue, 5 Oct 2021
 22:33:03 +0000
From: "Switzer, David" <david.switzer@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v3] i40e: Fix freeing of
 unitialized misc IRQ vector
Thread-Index: AQHXsSh5TAJGLNRDZE6UJZOlkj+0sqvFD5hA
Date: Tue, 5 Oct 2021 22:33:02 +0000
Message-ID: <MW3PR11MB474846805BB49B48810BE689EBAF9@MW3PR11MB4748.namprd11.prod.outlook.com>
References: <20210924094041.15448-1-mateusz.palczewski@intel.com>
In-Reply-To: <20210924094041.15448-1-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 64504103-272b-466f-571a-08d988501822
x-ms-traffictypediagnostic: CO1PR11MB5105:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO1PR11MB5105E0A974E47333C1C4F845EBAF9@CO1PR11MB5105.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7ux6rlSHQHRNyz5B5nxEQrY4x8wrCydJW6cZUFeuV1MrjzVqawUsma7g2vefXiDd44U8Hb/UuG+7bWRT3u8p2XIBZhC/1uKvt7Vs5l7ehr4Qe3m9/oOVlxiRaxrLPOcwF3ZKpHPXA8NfTQ6IaW7qQcqPGOHvtgv5sxJ8bvnIywXCG3k09jIdJeLFg1wiYo3Kt51IkLNZwDeepWfspvABgurEgsuiNnbzD5QhQ62O6kLZEEyMQkPE4doxQpcD4iG7XC03DDKbWp/UjiNZQ/Z81U8CHf+bSiRAQJy3rRGlW0lkoL70QRrmoJuSBGtnnDwb+smbOsIxB+Q9wIkVrbFmFZAjet4MmyMoLU7z+bUFOazw9s6T2RLLet/Gx+WKlVBLo+wmk7nNRrmVMHNEAKH+VbPV6MX1V58DgwFYoMCd4cT4EoBaseSFHv3IEGZwVnHTTQXPy0JTMOwuD+Y2N69xPi2D69rSLppLcWiGe3Rad+W9Lzpcwtv6nzgBp/dLEQ/QgQI9M7AgKS3w9sKINBlsXeHSEpFuFQrMlJXNYcspl0u7kgkQmWDexIJxBWANXHpRzAmus3555CLzciB8TQ0CW3JDPLVNOqn3OsaIqMeqkkmYuZSIyt87Uc0B6teiFQEtlM2KWe9ttrhpO7q5FZxM43NUxoxGEWpoBVpIKuygpAFmLvxeAYx4SRYFMD/Oel8wEGcPooZgQ7C5JUg2Pe7dtQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4748.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(55016002)(66946007)(4326008)(2906002)(86362001)(38070700005)(83380400001)(9686003)(76116006)(66476007)(186003)(110136005)(7696005)(26005)(8936002)(122000001)(66446008)(52536014)(66556008)(64756008)(508600001)(6506007)(5660300002)(54906003)(316002)(38100700002)(33656002)(71200400001)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Iu4NiiNi3Vqnyp6sBsPPIoYh/nrKT7pw1628XGn8wXUtUvtVBRR8xvIVoIQ5?=
 =?us-ascii?Q?Bg70hpiuSK8g5lAh+12OJdn4pvsa2G45r65TKD5Ea1wGazH/dqiAUWCe7h6O?=
 =?us-ascii?Q?bt1TlvRuT1rCiKZ23faKSyBAiJlxZemf2x1BJP+LL6vwEhdb14Z3Yc4SR4X1?=
 =?us-ascii?Q?AlgXWYPT6dFLg2mqFTc9S9D+gOP4bDn/OE9WSMe1PTBsbMV4T/KnjAtj7CBK?=
 =?us-ascii?Q?HN3slTYGAEe3Xh4a/mgjVrCpr3s2jbdc2Zlv+dNITwHbeBvYDW7ALmKEsEwQ?=
 =?us-ascii?Q?nDzETl7uP/6swkmKf9AkoASYgo3GON3QAjulMEF6j300FjVXlJzc2Qn07a0H?=
 =?us-ascii?Q?0yWR0a6TcWJFgt62NnWJb6xo5EPWa+J0rFFf27D4TgXoRpHKujKpgDtHivwI?=
 =?us-ascii?Q?8t0IQE9RkckvOUTJ74JLqmCcg2Im50Q5XqiJ5kdczZREdJeqTJp20ez5II1K?=
 =?us-ascii?Q?cpy8kZgVBGJOzf+LbSC65tfrNhDqNSojf1QW373NN3TL9n5pndmwDHgMrWJG?=
 =?us-ascii?Q?bxNW8FZDYCtRKsBvhGsv5HjvF8qyD+Uj1nZ0zksipnd7ErYLvap+YWMU4+IQ?=
 =?us-ascii?Q?MyuUHVOmj4bCRb3SCevxlw/0SunL/ui2XaEn5FQbXesZdxM4UKFRTKvdJRil?=
 =?us-ascii?Q?avWWw31wGvImwUYyM1EUiClK0naaYHREYwvspv6gXqUmrgAaJQbFrsTN4OfN?=
 =?us-ascii?Q?DI246qZCTQdo11AUjTHerM4z4GTdqmwqEJ8FFj6QDy1aEEKXQYDN91tYS2g7?=
 =?us-ascii?Q?ZMqK34hiEOKOh5UGuN0/2n0A2WgxRNZzDuI/5cRn9IbunolPXztwrxd9qZdr?=
 =?us-ascii?Q?iLD8sFYjN+4T7J7E5rYAGRk30VY9jJYgrdE9OkqMfBWWOb2w+eHadmhycOBS?=
 =?us-ascii?Q?kc/McIJpzpufpCY2mBaHMsXaY29MSZ13qfS6BE34QUXIwhOHX7proWCh5YQn?=
 =?us-ascii?Q?45HZ6aMD6xc/Lb62CuFGhdblye9Ea3RKbI3o5Cpn8xNklIAbZqde9qvOVaEA?=
 =?us-ascii?Q?myjqkI0onyO4FsMrkNi/tsqorIayNMiHH+8LaC2VvCQt7WzospnbpbgRpNVL?=
 =?us-ascii?Q?g2yjKI+sg+ZMwONDKA3VYcQXGPjSFqE1uPO34o1dbvyoAGQA0LvSWaN/s5ef?=
 =?us-ascii?Q?MLzthAvHSTYCl/660AXyzX00LBr0fnYw1EUiNOYmux7EHHsYqzqvm/GaPgtN?=
 =?us-ascii?Q?BLv7VMuykn1lsa4aAuRn+nJOPtT252h3TgacLISzuZv4JEkt9R5cwVDsZvPb?=
 =?us-ascii?Q?VHDdHPgx7ZM9+1wDrToi8sRh1niTtAD7nxP3wTVjkfwMWfbBMydNSD5LtHpT?=
 =?us-ascii?Q?dNM=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4748.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 64504103-272b-466f-571a-08d988501822
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Oct 2021 22:33:03.1817 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UwWeSV2El3ztsld4FWTThwTCqIkm7m8xpeQ5z8zQDUfEj5i5Zz3vJixM733F5909HrVmaIMe9jxYs8380lvTXw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5105
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v3] i40e: Fix freeing of
 unitialized misc IRQ vector
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
Cc: "Dziedziuch, SylwesterX" <sylwesterx.dziedziuch@intel.com>,
 PJ Waskiewicz <pwaskiewicz@jumptrading.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Palczewski, Mateusz
>Sent: Friday, September 24, 2021 2:41 AM
>To: intel-wired-lan@lists.osuosl.org
>Cc: Dziedziuch, SylwesterX <sylwesterx.dziedziuch@intel.com>; PJ
>Waskiewicz <pwaskiewicz@jumptrading.com>; Palczewski, Mateusz
><mateusz.palczewski@intel.com>
>Subject: [Intel-wired-lan] [PATCH net v3] i40e: Fix freeing of unitialized misc
>IRQ vector
>
>From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
>
>When VSI set up failed in i40e_probe() as part of PF switch set up driver was
>trying to free misc IRQ vectors in i40e_clear_interrupt_scheme and produced
>a kernel Oops:
>
>   Trying to free already-free IRQ 266
>   WARNING: CPU: 0 PID: 5 at kernel/irq/manage.c:1731
>__free_irq+0x9a/0x300
>   Workqueue: events work_for_cpu_fn
>   RIP: 0010:__free_irq+0x9a/0x300
>   Call Trace:
>   ? synchronize_irq+0x3a/0xa0
>   free_irq+0x2e/0x60
>   i40e_clear_interrupt_scheme+0x53/0x190 [i40e]
>   i40e_probe.part.108+0x134b/0x1a40 [i40e]
>   ? kmem_cache_alloc+0x158/0x1c0
>   ? acpi_ut_update_ref_count.part.1+0x8e/0x345
>   ? acpi_ut_update_object_reference+0x15e/0x1e2
>   ? strstr+0x21/0x70
>   ? irq_get_irq_data+0xa/0x20
>   ? mp_check_pin_attr+0x13/0xc0
>   ? irq_get_irq_data+0xa/0x20
>   ? mp_map_pin_to_irq+0xd3/0x2f0
>   ? acpi_register_gsi_ioapic+0x93/0x170
>   ? pci_conf1_read+0xa4/0x100
>   ? pci_bus_read_config_word+0x49/0x70
>   ? do_pci_enable_device+0xcc/0x100
>   local_pci_probe+0x41/0x90
>   work_for_cpu_fn+0x16/0x20
>   process_one_work+0x1a7/0x360
>   worker_thread+0x1cf/0x390
>   ? create_worker+0x1a0/0x1a0
>   kthread+0x112/0x130
>   ? kthread_flush_work_fn+0x10/0x10
>   ret_from_fork+0x1f/0x40
>
>The problem is that at that point misc IRQ vectors were not allocated yet and
>we get a call trace that driver is trying to free already free IRQ vectors.
>
>Add a check in i40e_clear_interrupt_scheme for
>__I40E_MISC_IRQ_REQUESTED PF state before calling i40e_free_misc_vector.
>This state is set only if misc IRQ vectors were properly initialized.
>
>Fixes: c17401a1dd21 ("i40e: use separate state bit for miscellaneous IRQ
>setup")
>Reported-by: PJ Waskiewicz <pwaskiewicz@jumptrading.com>
>Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
>Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
Tested-by: Dave Switzer <david.switzer@intel.com>

 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
