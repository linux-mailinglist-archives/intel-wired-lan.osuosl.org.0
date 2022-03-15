Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 180624D9C4D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Mar 2022 14:33:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9B2D240400;
	Tue, 15 Mar 2022 13:33:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D15kvYzNzsbt; Tue, 15 Mar 2022 13:33:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7F35840382;
	Tue, 15 Mar 2022 13:33:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 61FC61BF2FB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Mar 2022 13:33:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4B34C40A19
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Mar 2022 13:33:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qnxn7LOToSMG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Mar 2022 13:33:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E595540158
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Mar 2022 13:33:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647351188; x=1678887188;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=M44GZEhiHfZcB5YrjAyH6Iv3nZ5DtZzr7WUN2irUDss=;
 b=XRLPR7ccPHVWiZjCijRquTHOmpVA9M6jOkoStXQNBAKPt81wgWH0JU39
 wOe3lAA7jKptHepfo+PQFjmAjX/RUsGdGQ9fLfx2q5NNb0GNTitTWl/27
 Psc6UeZSlM9ug2dgUHZQsgSg4NxwukKCXEIfXhUTuYWQUndsdOYJC4Q73
 ClvmkZZT/Qjr4wU2TiJSNcwOHk8a0xaNpGbD5tTKenE37LWXVb8c8O4T6
 JzSDNvQamn/2N458gHae7CPbs9/DlzO8ZHww6WqhL7buOq6Nwdq0sWWwQ
 Zq0TRYgsvbkryAI0RCjJ7jOArAxkvmUeF2dWIb2aUq0m4VQCzU90HKJsS A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="256027359"
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="256027359"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 06:32:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="512605068"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 15 Mar 2022 06:32:54 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 15 Mar 2022 06:32:54 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Tue, 15 Mar 2022 06:32:54 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Tue, 15 Mar 2022 06:32:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VsQ0739DSV+mU8h0wsSFitCYSVz+IUgJfcMa1QFsm92WaWR/aAXWMQ+vqRMhaxHDQuOiE3g5fccwywSNDpSgEPQJym001PD0yx6CICioVETDW8afWI4fSoDc0lw+p4sVfwW7yKynLbwQrDGAYt2KrQNzLCKUoSYrNc/RrYcASWceDrM6OXTFO+O0+LHLHg0J5V9H3cQB+hmCsG4TccefMoyro53WB5dcYZrJ0NRCcmuNMRYXnzBzZ/WveloZdXFbW5LAOoAAUpI+sYYIxR1n7o2UedyvGLw3k8tJBYMVNmuxoi5XHKD7bE0WL3m/lhmSQoEzQhuZbho/GZsKunakXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l5lnsN9IfXF05T0UNLJRukWwbxTcTFBDWSmVaSBDv/8=;
 b=S4iB0UVJGdk+z4pm6sRk9GN8MbWn9N6A/8bMWccsLUJuAMf25Y8uqKqvPqP50k+drbjGv6hQAvwkMHZkzUARLwTjM2NoBVaVNeUmFHnuq9VeLvifT2ugKfwTtjj6C7GJOSczLrW2acoNwjr7D1xfIHWIcc0wZfnakdFZkl6ScLYT0NL0gOM6H6fbnZ+Rk5M1hJgB04UtekANucWkRN5zxbV88ZkZnditGTYURfd+Bq4s3Z0E35LnNTqPpmGQJl6QxL+1vstKJc+aKpLuJd267LMw4/1ZFURyqx9ZW/1NHfol1MNow+MCjVhfsyPDfJBFlGDFeRY0LxLY6HowOu2NFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM6PR11MB2618.namprd11.prod.outlook.com (2603:10b6:5:c0::30) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5061.26; Tue, 15 Mar 2022 13:32:52 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::c445:1c7b:8914:7968]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::c445:1c7b:8914:7968%5]) with mapi id 15.20.5061.028; Tue, 15 Mar 2022
 13:32:52 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] iavf: Fix double free in
 iavf_reset_task
Thread-Index: AQHYM8wKk8QsX+z9AUeJMcZMte904KzAeqAg
Date: Tue, 15 Mar 2022 13:32:52 +0000
Message-ID: <DM8PR11MB5621B0843DC145C06808AF1DAB109@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20220309153739.22014-1-mateusz.palczewski@intel.com>
In-Reply-To: <20220309153739.22014-1-mateusz.palczewski@intel.com>
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
x-ms-office365-filtering-correlation-id: 35e39095-f0b3-40d8-1e9f-08da06884e5d
x-ms-traffictypediagnostic: DM6PR11MB2618:EE_
x-microsoft-antispam-prvs: <DM6PR11MB26186044903DBC6778ACB84AAB109@DM6PR11MB2618.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: i3+hsn2R9qMhcfS13Ou9lNaFLsEYIl4TBF34jv1+39zCsgP1s8TGEbjBVjubMBLPs+sRt7onnYssrwp1qWKmMFiTi9lwQ9eDyQhFj5tkm59OHvg3F5YENZbtou3NWnNLD2FnvpZODNwPtTGypqQDcYZjFd1VptGqJd9yNVYW56Cck96MFCDLeGVMJ92ZaFaMpsx0+AvMULz+RZt3q2ZVwoHh0ENT0houqohpqYkxwPhGb1J3Se23sFXkb9L00m/KmyEbRNMb78boqXl+suweC8BLogWqrKQvf7eLUFnzqj4IQ6Lhzi8M8TmoTUVEItQVXowp5B0VJ1ZU4U9O5DaU+96lZ/KO/eZ5qiOCb3PC+IEnDn0X9TdAlgcwfaSuo07lmDeZrv5oPGK/0Nzw48yv343zFLsri5V/ni3j0ft7Ln30WLszf7xUzIXiWewkRF4ZFIxxshzdmOU80dmNVovE3HJKzOv3TvWUCC6msYMhRirrWkDyznp5APN1buKH+vWFpFmyhq6a30AYGDIeAHLlvETQNESFYtS3M5DsUfBjTNP54YdK/W9/zCedEtsLOyGKNxjhyB+KwmmFUR/TqZX7M5NquylRyFDN5/+7B3uQ5G6wSyF1hDm+jp/Dn98XVMIFzMR9RZaa+VG5fWP8NIZulybJ001aNxwGBSK5aC99EzIKfKfq1L9I6M1Lr6J/dgengO/KCfpCETJQiVt1QyjNeQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(54906003)(316002)(110136005)(82960400001)(33656002)(2906002)(66946007)(76116006)(508600001)(55016003)(38070700005)(71200400001)(52536014)(8936002)(66476007)(5660300002)(38100700002)(8676002)(64756008)(66446008)(4326008)(66556008)(122000001)(186003)(86362001)(6506007)(26005)(7696005)(9686003)(83380400001)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ckneanArhs1Jm5M2jLbL+PLcQgy1BQoIEM8bGpkOVJSZU0TNq/G5hKqbBTwH?=
 =?us-ascii?Q?vZAJ/rBOdyakKwOWLSpv7eFupkN9ZDx56cp9YHbLqb1p3V+El8AfKSdrLZkp?=
 =?us-ascii?Q?eJ6IkyVirpIGQrt01b810DGpENnBYsZd230lSmfeB0g0wjU7h2XmxCZk5ZE3?=
 =?us-ascii?Q?P8ambNIerYFQ+nmciXSbtbOmUl+2lUvtHcHs2nXBBp6QCzH/dytCj2XETIKu?=
 =?us-ascii?Q?g0mttHDxkrhpa920/P1qAkQzym2Kqz2neBhmo32NH255rN9NOF5DJCvmaA2p?=
 =?us-ascii?Q?V5tZE/ffujDg7hy5wfcK+omckgNccm7yr71adfKhJtNjlZtrN/rgaqVOeLSN?=
 =?us-ascii?Q?XjbE3YAQKRJup/JYZpR34+qzGjkzLXZgV8NP7qYEtaXcVJLkXM28/PQwWBGL?=
 =?us-ascii?Q?VxvCSFCj0wML72kpJS6CM3ye84W103ZTglModmDu4Q1FZfDEFZebaL0I06NB?=
 =?us-ascii?Q?S0X4KYuUv3ouhWW1dHIb31gtLPAcWnLZJ+wOwdLpdqla4LdWtP1A8bXPMUMP?=
 =?us-ascii?Q?b3HzBQJajDtsH79czQjeuDesF79S9YNRALZ/0Eo/fwzOukayBO+ieu8Ho7Ap?=
 =?us-ascii?Q?KbfIGik7w0tLTFL031gLwJku/YgOIv82cxAQD3nArHWKv/XDRvntbDislS7R?=
 =?us-ascii?Q?CYnvI56c9gzMngkql18wkc8ufNBsR4DtSloqQCFdeT5GuEEwhd0wzLkJ55h+?=
 =?us-ascii?Q?uDPzF7PnEnyslxdLFO8ItymXuFj5A3zQtDb2aOq4OokK0NvRHBN37h9dSUeu?=
 =?us-ascii?Q?J6gT6z2c764exaBAbJfyv0W9eSaa0Ll9KpZ1wEkYU7flvGn+cvdCzdkIJIQg?=
 =?us-ascii?Q?6+4IoRE8TgekaUetI2jprRYGItiOaw30S5EnlE+pW0JiMgMx+j+RuRBNH4f5?=
 =?us-ascii?Q?qd8ZP3q3zkOOvgV4Kek64FkThndG8BBrGXH6sKKGx9laFGmin/VtYne3buIg?=
 =?us-ascii?Q?b6ie2uuzokFkxexroDoFpX2EabfBL3UcNFoYeoGkSNXl6Dm+b3opK/sTHEQL?=
 =?us-ascii?Q?eVgdLZBaqYd4TVNXv8gdJ7TfJYT0ysU3gF3M9f0yXjjfc2/ofxJc2X7CQdCx?=
 =?us-ascii?Q?7sJG/yzqYzIsaUyVUEDv8mXJDAk6pUmpCrQjzF92P4kpn4cdYQx2cZeUKESx?=
 =?us-ascii?Q?MGRuqzqUJ54Ilu2keiZ7XF++bzp7ne+tockD9xP/Z+GKTi5QYjGmwtOe1Tj8?=
 =?us-ascii?Q?xP+1LXxW93eoUV5OD4VqzYntNOvqu7wiVJZbuJ8lrEooOoxBWmtMlQYEauk7?=
 =?us-ascii?Q?5ov3rpaaS3KJ7Y6SNKGuGoyqpoQMWo2nlkoj4/j6bGeqSyenLHUVhJUGhNl9?=
 =?us-ascii?Q?WYQbb/XYg9Nvi1zHsGQNBPSeGqRaWK1fKeFWM5OqjuvOou2/rqxXXiZdaULH?=
 =?us-ascii?Q?r9v1fPT7q7waTIuo/KAUvYjxctdIAWKH5u+aHUQaZo1qdjGFii1Sevupgy+n?=
 =?us-ascii?Q?BeJ4zOxmXV7Uube0Uk25vovITniU2VYomzmkkkZW5ykZw8g01HGznA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 35e39095-f0b3-40d8-1e9f-08da06884e5d
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2022 13:32:52.5609 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DKykvhyneGmSkUlxQCGaHBM6zksLFAsmKvVSVloKuO4Y2D/LA8duHTpwRG1GXJ+cz9pjSFfnycHWuht8W50c+llBnmCZ/qZs/275J80N4ZU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2618
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] iavf: Fix double free in
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
Cc: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>, "Patynowski,
 PrzemyslawX" <przemyslawx.patynowski@intel.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: Wednesday, March 9, 2022 4:38 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Palczewski, Mateusz <mateusz.palczewski@intel.com>; Patynowski,
> PrzemyslawX <przemyslawx.patynowski@intel.com>; Dan Carpenter
> <dan.carpenter@oracle.com>
> Subject: [Intel-wired-lan] [PATCH net-next v1] iavf: Fix double free in
> iavf_reset_task
> 
> From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
> 
> Fix double free possibility in iavf_disable_vf, as crit_lock is freed in caller,
> iavf_reset_task. Add kernel-doc for iavf_disable_vf.
> Remove mutex_unlock in iavf_disable_vf.
> Without this patch there is double free scenario, when calling
> iavf_reset_task.
> 
> Fixes: e85ff9c631e1 ("iavf: Fix deadlock in iavf_reset_task")
> Signed-off-by: Przemyslaw Patynowski
> <przemyslawx.patynowski@intel.com>
> Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  Note: This is targeted to net-next because it fixes a patch  that is not present
> in net.
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 7c4b75a..c11e2ab 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -2705,6 +2705,13 @@ static void iavf_watchdog_task(struct work_struct

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
