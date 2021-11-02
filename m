Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 837E0442947
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Nov 2021 09:22:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 51F7D80C77;
	Tue,  2 Nov 2021 08:22:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UbJQM4Kh2ux4; Tue,  2 Nov 2021 08:22:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 33B1980C3A;
	Tue,  2 Nov 2021 08:22:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 434A61BF2BA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 08:22:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2EC85400E5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 08:22:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J1pvaGN2NKSM for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Nov 2021 08:22:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 296CE400C7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 08:22:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10155"; a="231165146"
X-IronPort-AV: E=Sophos;i="5.87,202,1631602800"; d="scan'208";a="231165146"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 01:22:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,202,1631602800"; d="scan'208";a="583308871"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 02 Nov 2021 01:22:30 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 2 Nov 2021 01:22:29 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 2 Nov 2021 01:22:29 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 2 Nov 2021 01:22:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mxa9vVAVBb2HK0oPGYGQRAjJA5V/K1crqzxvdShzE3oHqBVz+aRevo4aeFuNgJPp7PTsZzuuZ0JqRBz4w1xK6X5qe7K1/tPsp4W0cK4ELHf/wvhV9S8cAIQMx+rKheREBakjLULp9aCZLi0h4LYRYbM7zv6fI5gQF29p9sUKIxOIWkZCXGoBqmZiI8EeD6KwbwNu3DdVo9tA6JAaZKMRTw0dTlBpUueidWbBPhnneBdrj2hZD+RiFOYcjo/VOuoBOvHtwkl+kr8cp0wa4hJQHpMmlAZ17NeqzrGMbqUoCNMrvZaNH1t33wGI5C1kx35UY5Hx+k1oVREncoVwkltXQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MsZ7LuParzsXoyMk5hxojtJtcW3gQZBLTZ6nT/42s5A=;
 b=JzinFo8XNkwmkQluUsXWcHQ+SDA9oUc5uFLhQjgiIGsXUhXAV4+23Szlz5CioN6uUUQxSnzeaXCE75pNLWU4a1GQfkl5yWykwgEfri/ZdI9Sp84c3DXJtCAbzsUGw6Y+2rA1KuWLbcJOKr1mOlBXbR7IKfqPssnd1iuk4a1yZf/MJ08gvYGLl+p3dochhStB0ffwmtiZsj0zwsj+mDcmiIhQLzprYjnHCzZhKieQGttD4oH7SzAhF2HxCDB/NmfmSEzRtM8+0EDsgRUIlHxhRClegCSyrTF64ShUg+0Sf9gqnrwQW3HL9gJ9lXzWzzmyI8VfaDSz45xUduuf0VBR2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MsZ7LuParzsXoyMk5hxojtJtcW3gQZBLTZ6nT/42s5A=;
 b=hiorMLHZC3IsURkcMCr+hs3dTGsWq1bBGyTF8v1l8O7JjX/BQZ4pkb76aChSqDY77krO3KMG3fR/v22Emf5bRSdwy4GXnkAA19VVX3cMcamoA1P7txVREHrHpyCkt6ZxqkuG1FrGfTMD18SXf3vhiEw3SRR9TE6bc1qckYU0H58=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by SJ0PR11MB5199.namprd11.prod.outlook.com (2603:10b6:a03:2dd::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.15; Tue, 2 Nov
 2021 08:22:26 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d9a0:60c3:b2b2:14ce]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d9a0:60c3:b2b2:14ce%7]) with mapi id 15.20.4649.020; Tue, 2 Nov 2021
 08:22:26 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v7 1/2] ice: reduce time to read Option
 ROM CIVD data
Thread-Index: AQHXy4m/2UXsotc4/0maw2KTX0nuBqvv7lMg
Date: Tue, 2 Nov 2021 08:22:26 +0000
Message-ID: <BYAPR11MB33677276867974237488BFB5FC8B9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20211027232255.669167-1-jacob.e.keller@intel.com>
In-Reply-To: <20211027232255.669167-1-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 48f379d0-c262-43e8-5d32-08d99dd9e72a
x-ms-traffictypediagnostic: SJ0PR11MB5199:
x-microsoft-antispam-prvs: <SJ0PR11MB5199A15E71785CDE025CA957FC8B9@SJ0PR11MB5199.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Kf+mDQyMMzf5+gZVasf6CB3PnHy7Ijvv60CXR0e4W1RiGOBft7KuhprrbHfaw22gHZBgVhKr5XTBXUulzNSouBWmsbuLSvrI3xcyBYpJhEF4+BJn9BjFia4nh2fzDY7Akm5VZSwPjJkjchrVBO5JOPuRYnYgq4fnTn4r/nSdtWhDxVV/cFhktyIu/8ZWd2bpzyc7SztyZgZSQRQbM4Mu+cVlV0yHFuhaYVPuCU2n4BEyJ3XDv7dCT1rRbsvv3C2x4lDpRENYk1kXulrF2KtKvpVYBqS4fLhVCu7RlUuaYQmB9dVJ5RHkGJDZk9QsARKr1gqnYZ4B5j5CgqpffiMjTiuKm58w7gVCda7Zp1iflIxOqifUHobifYttWG/MeKbpGghgGyBwAUNFfsB1isCUuN3k1H4udVjF6DMk7raARrKc3bWuf7ajmixfBCHUVQdGY9T0GLIGwjCq/hliuPKQ4a06Nx7rwHiZJpPQHrJTx6WlJgJPKJGVXKrVpN51BpiFh9QH03VEMlktJC+dlX5AREmyYdbPZVTrYe6xLmmh3IPG5QIHCkDIm/hh73QSfnDru0Ap8HwO0faiBotZzSSmA2BsCBakpI82MxLgJ5XJFtzSjm/5mBpRdtjLj2FrB6FjBfdv7jjlD9XY1rpYQgvCjG0BdwmHWjzEkVXSrWNjFo2q4Ql5IegYlbEVFac8oTg1T8vmMNZc+ZMrNVhNdpSVFA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(2906002)(66946007)(76116006)(7696005)(52536014)(64756008)(66556008)(66476007)(66446008)(4326008)(9686003)(26005)(8676002)(53546011)(6506007)(5660300002)(55016002)(8936002)(71200400001)(82960400001)(508600001)(38100700002)(110136005)(186003)(83380400001)(316002)(86362001)(38070700005)(33656002)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?umxPteibafinq62zKMeW3bCDd7dSRp1p57ksFwuA1yyTIPDaU3IDYhcaLPAf?=
 =?us-ascii?Q?6K1VIkbpYzu/GyS4aOBiZG8ldmNMIGIFoqpupbwxFMcH40J5rpslV+bLw4fG?=
 =?us-ascii?Q?d+rjb8chm5wsCxquGFvsFi7C9PfRZRYDxvyV2s2+Uauh4hPEvgFNGQLBLpZE?=
 =?us-ascii?Q?KDsWSvd0XFgFAnuGmIq42gMS0r51GtEOGUNhV7P6PLQ39pAAsz3dvYU+rQMb?=
 =?us-ascii?Q?8YBfSQ4HHEPDcZCFFtsrlyzgnLAhcVj2cqrAokSEAE+QZQil40JzLhnx/AgD?=
 =?us-ascii?Q?O9BkZFMbhY66Uz2BwXtZwmxRtBft38hbG04LBhaP5D15mOlBPWukWYuvZgYU?=
 =?us-ascii?Q?XUY247wc8yOm59/6QgBw74oqyAQk7TlFzhtBKRA87bMn2wtgtHNijtoILDNh?=
 =?us-ascii?Q?zmHY7p2V5anrVq6bIA9ma+zNIqvBa7uCgp2RKQMd/njxnMcIi8rU3QL/DRSL?=
 =?us-ascii?Q?8ONYXWuBomjSIK6IauY2fQEpct3+demUw7VYAuN1UR5aY6GfzCbHXP1X+ZSJ?=
 =?us-ascii?Q?8ERJ1cMw3wqr9lNqGBQZMmQZW/L5iiTu1w9PYfi76fo65CqOw1kHjgGQ7JBP?=
 =?us-ascii?Q?v/GIcpchHEz3UBwEv0L1hHshc2ljHe1TeHJ2yzWKhyUskJ+rt6wNXhVxgwsI?=
 =?us-ascii?Q?A37LPg/ejFwtsHtb/GKzIu/PXzx5WE2N9LRU7oBn9EQ+rLKPmKIAMyhXBK9p?=
 =?us-ascii?Q?EhatEY1b0SrGm8qf1fheEeal1b1k1YIizmuo45Ur7jz70e+fDdpjSXaV+cE5?=
 =?us-ascii?Q?usopsfRmvYN9WmRuhAmFSXj7nNjOjAf6vmunu3ST9gftbU4oTUrmSX58V+1L?=
 =?us-ascii?Q?Gk7AMZGM5uIqVkHQHehDPRlzrMmbwmbfbsckR9Kg54gF9IsD3sLV1PX1ixkL?=
 =?us-ascii?Q?Q3c1ugNfiIuAa62W7CpMbfuOS06VSCjbusdKUQ1BqHo2FyUUsU5+fzFqIOip?=
 =?us-ascii?Q?Uu2ddvrrkIeNWRpUCltS5zeFJRfQAVbvGQiZaZwFzc7cY+BPuTiL2vUbG6yL?=
 =?us-ascii?Q?ziqYlfTlr+nC1ScLLASB9sEpZcpcH7/Vd7ckZ8HP7ESE1mzhc3EsE4xHPsC8?=
 =?us-ascii?Q?kUPfi7sRD52cnkdBU9SKVd2NpBvlX+wUs8/b2aN79WS2lahiOPvgZzgeDviJ?=
 =?us-ascii?Q?1QSVXMQYFm+FdF3S8hkl9sDgKudJNLpMnOos/d/hNEBu/tJWzH2UhKst7z6a?=
 =?us-ascii?Q?C8HgMEqEIrz/kiRPjfABD+VSSqrOt25ZXVAWKiS2wPleEO+DkpPN+oLjE1ax?=
 =?us-ascii?Q?YNsLIIGHpthYy8YWiMavVSOlI6PZVpDs4PNF/Fwv1qo6XyKKb67UKY9FyDG0?=
 =?us-ascii?Q?SeTaFXfkj3vJJBf7qGXiW/iCEpg+afhInRGBVkdg0WZsdhrv3C8J65UnG/hB?=
 =?us-ascii?Q?hqClSa11YLaqmKSxk+0KQ7tOlpGDHG+9vunK8ILQYUygJq8vUSoe/KL2dTB+?=
 =?us-ascii?Q?zhs/90yzlJCw81lRrCtsNGCOgiNujgERTpWLZ/mx1b+hM2FgTF72zlIKiziu?=
 =?us-ascii?Q?rGZ6l2sqYXZjNVsl3o/7QWTsBvrKpUz7Fkiy5MCufXp67Ov4r53/E1V36GS0?=
 =?us-ascii?Q?aMm+etaOl/aVzmtCC7mnhzxgqZTUZo2+RdFbK9A3xtXeVGaRmZUo+x7V9VpW?=
 =?us-ascii?Q?jQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 48f379d0-c262-43e8-5d32-08d99dd9e72a
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2021 08:22:26.0283 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: viaNU/Nrezj2z2qPxuGYtLoKGreANpcfq+qoRdK9Sd2u9Q739fqXy81uq43ADWg6j9XTYrOaz8dYO8olYiOfEw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5199
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v7 1/2] ice: reduce time to read
 Option ROM CIVD data
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
Cc: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: Thursday, October 28, 2021 4:53 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Intel Wired LAN <intel-
> wired-lan@lists.osuosl.org>
> Cc: pmenzel@molgen.mpg.de
> Subject: [Intel-wired-lan] [PATCH v7 1/2] ice: reduce time to read Option ROM
> CIVD data
> 
> During probe and device reset, the ice driver reads some data from the NVM
> image as part of ice_init_nvm. Part of this data includes a section of the Option
> ROM which contains version information.
> 
> The function ice_get_orom_civd_data is used to locate the '$CIV' data section
> of the Option ROM.
> 
> Timing of ice_probe and ice_rebuild indicate that the ice_get_orom_civd_data
> function takes about 10 seconds to finish executing.
> 
> The function locates the section by scanning the Option ROM every 512 bytes.
> This requires a significant number of NVM read accesses, since the Option
> ROM bank is 500KB. In the worst case it would take about 1000 reads. Worse,
> all PFs serialize this operation during reload because of acquiring the NVM
> semaphore.
> 
> The CIVD section is located at the end of the Option ROM image data.
> Unfortunately, the driver has no easy method to determine the offset manually.
> Practical experiments have shown that the data could be at a variety of
> locations, so simply reversing the scanning order is not sufficient to reduce the
> overall read time.
> 
> Instead, copy the entire contents of the Option ROM into memory. This allows
> reading the data using 4Kb pages instead of 512 bytes at a time.
> This reduces the total number of firmware commands by a factor of 8. In
> addition, reading the whole section together at once allows better indication to
> firmware of when we're "done".
> 
> Re-write ice_get_orom_civd_data to allocate virtual memory to store the
> Option ROM data. Copy the entire OptionROM contents at once using
> ice_read_flash_module. Finally, use this memory copy to scan for the '$CIV'
> section.
> 
> This change significantly reduces the time to read the Option ROM CIVD
> section from ~10 seconds down to ~1 second. This has a significant impact on
> the total time to complete a driver rebuild or probe.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> Changes since v6
> * fix a memory leak
> 
> Changes since v5
> * new patch
> 
>  drivers/net/ethernet/intel/ice/ice_nvm.c | 48 ++++++++++++++++++------
>  1 file changed, 36 insertions(+), 12 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
