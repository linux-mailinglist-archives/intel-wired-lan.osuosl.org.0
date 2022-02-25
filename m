Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8104C4A59
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Feb 2022 17:16:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E93AB41756;
	Fri, 25 Feb 2022 16:16:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kUR8aKSO9pvW; Fri, 25 Feb 2022 16:16:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F02C54155A;
	Fri, 25 Feb 2022 16:16:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 889621BF2FB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:16:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 76CC86129D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:16:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4FQw_Nu5kzi0 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Feb 2022 16:16:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DAA126129C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645805779; x=1677341779;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PqFDW7KsxzzTv2mCDrUBGiG87HUiERjM0rfxIa8ZTMU=;
 b=KbgwobTIaVohAvoA5Nz0ojivBF5OdMjvDp42aEGTdHMkvEsje67Jz3xB
 oVUqVjpl4aWh5VDvHRbQfmPEPEw7zNY9na68r4JeHRufSOWWorkYzp92V
 53IqZU/Eym5wfoS6nfyk7AvQJET5u75ds6pl/BuxWqPVY4zByJYEvvfiH
 J8ug6dnZ2sqmiwgQe7WjZ3tEtVR1hhfaeLNR9ee6diJhO98evOluefc/r
 UlbefznDQ4rPpVbeIrgEKX0vibCAWtxSCgLdQL8YDGxib/dmhxVNdj4Q1
 0KEWPe8ZE50yF8uvAp/RQ1+6HFNciTIOlSWrL3Ou19Xcc5q4/3CWPYfez w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="252720525"
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="252720525"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 08:16:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="544099103"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga007.fm.intel.com with ESMTP; 25 Feb 2022 08:16:19 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 25 Feb 2022 08:16:18 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 25 Feb 2022 08:16:18 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Fri, 25 Feb 2022 08:16:18 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 25 Feb 2022 08:16:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W55QKrE6WKQ0hYQdP1pUGEV9g/7mqMBUYVi8UkwCDaShRBuKaoWBVYxYUeLiBo8eu6d0C9zJrSVTHCjatJrAqC2Oqdy5q9QtbSE1odqeQWUmA2hi2jJ9oHFnZqYDx+zpY5uOzVPdMZRJwbPRUzOiW3Jb6Wucgs7cpUWElfJdm5bfMMp1HLnZN9dpCDYYFy9B9/jLlHEkURTX8bbKCuLj7RD1TJl85qugsGjzxNZaGFK3sAzJ4dT6oGzvv3vya5Zcb7h+5sgviuGE40cGH3vGRv1iN7quIKvwfWJXdaVn1Kpqfa1YkIY99ptjzO0WzH3wkGBrY9TuEfZKnWNN5ygIIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oTz4MSRRW6SN9koPZsyT+yLHjUS9I8+MUfJBySiT9UY=;
 b=S6qCTo4dQ6+4ZMgs2ytsptSnpkjRrvxUNBoKDBmAyFpPj5i6jc25c+x6DRszv6bdQDqUhb7YQPnQIwgbZjkkl4jaS3jufVrhz6pJlq6fVFaRgj6rr1l3DAWSuNYsQq30IO4UTx0uGvUXcXj6APrVgwDsJlq59lBmUsBD1X7RnZ61tK+ra8lL1SDQAHMEtCDlFQCylzeFvgjaXBsmQaDOhbe2Q79UPVLY0/WaykXAp3NoI4XqRlA/7DY63deY12sK0ofo3Aj6hHsX4xQzfdpKVr4xrYyGh93EfONzvbMv4j4h0cvTZ7VxjggIztMgJKKxPNOyAP8vnC7eiwj+rb9F6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com (2603:10b6:a03:3ab::13)
 by CH0PR11MB5721.namprd11.prod.outlook.com (2603:10b6:610:112::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.23; Fri, 25 Feb
 2022 16:16:16 +0000
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0]) by SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0%8]) with mapi id 15.20.5017.026; Fri, 25 Feb 2022
 16:16:16 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1 6/8] iavf: Fix deadlock in
 iavf_reset_task
Thread-Index: AQHYKLKYTPnpiHguUkqMiL2xOm+QcaykdI+Q
Date: Fri, 25 Feb 2022 16:16:16 +0000
Message-ID: <SJ0PR11MB56291622C59EBB94594B19B1AB3E9@SJ0PR11MB5629.namprd11.prod.outlook.com>
References: <20220223123831.30608-1-mateusz.palczewski@intel.com>
In-Reply-To: <20220223123831.30608-1-mateusz.palczewski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d2102f0b-844b-45fe-11ed-08d9f87a2676
x-ms-traffictypediagnostic: CH0PR11MB5721:EE_
x-microsoft-antispam-prvs: <CH0PR11MB572117A9ACD71663C4C9936FAB3E9@CH0PR11MB5721.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cAEMlG7D0zcKv4Wcr60oSNAhYBBbtRbTir6LeA+pKx+IO2MTifVj4DkOCeYIqJQDYzbU6leZ0a1PFjIoTey70LhJ+10Hb/XPpCC/eXSSvnZKLMi5Re7BMG92a8qp2wkqBUh5IOjS8przFmXvuD8ztLrVP6lK1O9xC6rtA6nHhHox81qxVA98SBknu8SCLfxfxCQMGDpsrrrFYv+qxl8SllF76S6Y71b+uRSKH7hi72WVjMBl0fdfdw/CwJjLl1zEb3krdqI7Zp79bS3wqa/fGDx2MKvWAJXIkKV86TsDy6PVXxaRYkrlqKAb+DF5kBhEkmxGNzzqsP0JOJjMN/Z+1XznTk8eZTbl9lxG+ppnZHkG6ub/1v/ho+h8+DmdDKtLA280nuBOaiaTivmQKfGw7gImdTsCfumci3f0+5ILpprAry3MO+BlxEEvpgNTIZqjJmNZbVyJEGh2NDbarOkzmfG/7I+R1/4ndzzVwA8maQsceGrE2QYTQp+r3P4RTjdnn00HI/VVBAPq3VLR/4KY71WLIvaWCMBs8tciOWajhf6vK0+oAI/hGW4lcaHOsxu+kefYRJnoN6ezcf4jG2g5LlZTQPyo0n7u2AqVI7ehygf+m/3Sl9tXSMsYuWSS8ussyRbAsXuDNN0BnqegO/r/gTFdn8UBPVFsFAWF3lyoU3kQRvltMtmQt7YHK6jM//xBMJiu3IwWV1IpqGLSwJBLkQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5629.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(9686003)(38100700002)(83380400001)(7696005)(6506007)(53546011)(2906002)(38070700005)(71200400001)(86362001)(122000001)(508600001)(52536014)(33656002)(82960400001)(5660300002)(8936002)(26005)(186003)(107886003)(316002)(55016003)(110136005)(54906003)(66556008)(64756008)(66476007)(76116006)(8676002)(66446008)(4326008)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lUucdVHYS3R6cHtDvuC3XvGfDCuFaNrHg5D6fquUogPZcHZq3O4S+hfyJRm1?=
 =?us-ascii?Q?KGOoyDN3PpmIq8UaYM7vcJU8rL3cWT+U4W9cRv1s0cGvv++3n0ztIIKNuKmp?=
 =?us-ascii?Q?QoCwiY6iEp5dN1z7wLs147VPh2eTO1ryzb6Fl2vSZ1waMYs5WqXBVPM9NzG8?=
 =?us-ascii?Q?zBGtrdSAYcxTF+Yu0RhL9DerTW2qL+lTaFOBJJ+CmBKeu0gYt7ufegXy2M2+?=
 =?us-ascii?Q?16Od6hKEuDnsupMCo9+6qd5BilOIWI6Xu2p4kC9lJSfgIQ1YetokVNW5iOyH?=
 =?us-ascii?Q?ewjfz+MkokUNxkaJhEp9sQOwo2SGeB90MJn6CvX6DTLIQFBcKmb2sNrvo8d5?=
 =?us-ascii?Q?XoJF28+G9bZef3QcQIzV6t9cTc85hrbFoluiMusr9gquegvfyOxk1bmT8qyz?=
 =?us-ascii?Q?MabQVJRmHw/c3liz2GChGy9yyEZLaz5EtmzZsuPoZyTTRtZuZGEwRKY/Jl84?=
 =?us-ascii?Q?lLOTXwV8h6YEtG9LLaCmGtgEWRofDIu9l09kGxM6ETiH4zO0uwGZam3Agt2v?=
 =?us-ascii?Q?wYK/LLwb97iT7uH6sINNu9f7AKZM1X0mRl/gwqVFwIoWWFerNqYF7cOyJILc?=
 =?us-ascii?Q?/3d+T5inC+5BsJOzFXhPxySD0D7dUG9wRx50RbrTgA+5QumiWC6sORXq+TLD?=
 =?us-ascii?Q?mqCNBQXKa/CtH/JowIE7VbSO4T2SiZ8mh3rmYCzzl1uAnqGK2IRUcTcVCNWd?=
 =?us-ascii?Q?/Pee6F4beEDaYvm2s8cnGGBZnYlw4uCaeKpaYhryvozgqfPXHxB7HIOyVFXL?=
 =?us-ascii?Q?PaAeB5tfJ/rFqqqT8lPswWunnZXuC5Q689BPFwebdjfZR00FaILPoB4ECejs?=
 =?us-ascii?Q?MaRNtRXozvrSaIjpTFBdONMWGIP+zNd6rrELkmoxM/OGyObfIn24z2bZ0KjW?=
 =?us-ascii?Q?DaRVIiSJpdoLjX3Vd1pAgSZ83a3pOizi8wjtpTLQZ+/zkPCV43pLDQS0O9Pd?=
 =?us-ascii?Q?mbTzDGiSlvsrkAtomvKpHcGAfz5ee+8J07FhQPwEAvybXDTB8JS2pEnBE33V?=
 =?us-ascii?Q?6S1Q+I71f7VSCJOrbeE0/veS34zzzScULGWSQ4+YsYxT0ybE6xybTY/B+t8X?=
 =?us-ascii?Q?nMAt1iQaIn32mQZusAbzeWGz5xDiMwUMFFoFD35rBF65CREYQ3+VWrIcpLNK?=
 =?us-ascii?Q?ctqlPP493hJzEBOamBxfBwIuBNHOgSpt2gZrTy+OIlFvb6Lh0sra9NdaPViG?=
 =?us-ascii?Q?NrsSX9kdFqDXP2C5vsPy7pPXszpiwBZpbmubAx4bMsg6jhhGwRVLjCmAoJPQ?=
 =?us-ascii?Q?OwKuDDMnjIRPd4k+J6hlaB8qh/6d6CvaZ5ZsAK3Bxy2TDmVXhqtwcN6EgerO?=
 =?us-ascii?Q?ScYR9As8N6GKuxOPqNMGhE/M6YJrf+zhihTbjxskCfg6/Hi/mWqnCidcM/j9?=
 =?us-ascii?Q?vClTXvt8yEtbMpatYwIKCP7qpm6tfoq9t7h/NEkPMFRT4+mJByk5Fk8+Sy6Q?=
 =?us-ascii?Q?HuWJXe8FA0bV6u24J2ZmYg/Va7RAtWICRwq0wu4G1ZG9tT8Otat1hK8EwfX7?=
 =?us-ascii?Q?Mh5kc9fnRO6JWeczuHdt3YbMhr0CcHFuyFsqGyOcVOCwS+6FyI1RwdIuzTuv?=
 =?us-ascii?Q?TigDlTRW038dCx2D8m06D6nnYPeNxyjwBIPY+NxU4faBMJ8DAdsg+3TGSAPt?=
 =?us-ascii?Q?iyDbtnpOwTCUDmUOX1rroMgZ5DNsL+ftbfhrFwje/WO7bbWeQTQ/4YeElguV?=
 =?us-ascii?Q?K5r58g=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5629.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d2102f0b-844b-45fe-11ed-08d9f87a2676
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2022 16:16:16.3981 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: z9aTO0jn/35hT2RuLPmPThCzQGg0bCTttRDktdpZT59Fyp8Y3aWN50E3WubryubVYIKwTgKPWuJqZqAxpa07Y3CnW9OUnP5l14eBrmyyQk8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5721
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1 6/8] iavf: Fix deadlock in
 iavf_reset_task
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
Cc: "Laba, SlawomirX" <slawomirx.laba@intel.com>, "Burra,
 Phani R" <phani.r.burra@intel.com>, "Palczewski,
 Mateusz" <mateusz.palczewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: Wednesday, February 23, 2022 1:39 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Laba, SlawomirX <slawomirx.laba@intel.com>; Burra, Phani R
> <phani.r.burra@intel.com>; Palczewski, Mateusz
> <mateusz.palczewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1 6/8] iavf: Fix deadlock in
> iavf_reset_task
> 
> From: SlawomirX Laba <slawomirx.laba@intel.com>
> 
> There exists a missing mutex_unlock call on crit_lock in iavf_reset_task call
> path.
> 
> Unlock the crit_lock before returning from reset task.
> 
> Fixes: 5ac49f3c2702 ("iavf: use mutexes for locking of critical sections")
> Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>
> Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 36433d6..da50ea3 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
