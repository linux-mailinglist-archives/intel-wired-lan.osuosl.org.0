Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C549A4ECAA1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Mar 2022 19:28:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 59A8640884;
	Wed, 30 Mar 2022 17:28:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z1wVG_yRvU8r; Wed, 30 Mar 2022 17:28:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0BB4D40650;
	Wed, 30 Mar 2022 17:28:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6B1361BF47E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Mar 2022 17:28:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5629E405A6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Mar 2022 17:28:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8JZRNBdjF5hB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Mar 2022 17:28:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2353E404CF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Mar 2022 17:28:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648661299; x=1680197299;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Fe77RGGDCTaKqH31qpTf3rA8MXHoIn/0ZuazzKV9L3U=;
 b=PS5qtbn+UxIuF2TLCsmO2Lv/MjzLWbESbCh8shm7KgQQGnac6bTrvns9
 91xmCMco9H5gWeyw2Y61VIZ4HidsEoPrygjtGuUGiO3e9+ocBOp7c2sSR
 NDyY+zTCjadUNB2kaZia9mv4HULrCq/Z3F/FovJZS6jGECRzXigUMR+bU
 WWRk1bEM/BX/jjI0mcKoEQWs+R/E+ZMXnQsHGuvsjFoP/mCi3aF9fYKAk
 V4ex55+V/aC/ZZl5BlP1pVivpIUPSrAbqcNSw/nZYVquGjmUNmKPIpCKA
 1e24jZIQmkCDGFLD+T4hQfJ9s8DpSfP/DtAb68nWjzyVaDJcUu+PUK02g Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="259785769"
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="259785769"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 10:28:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="503393671"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga003.jf.intel.com with ESMTP; 30 Mar 2022 10:28:17 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 30 Mar 2022 10:28:17 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 30 Mar 2022 10:28:17 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 30 Mar 2022 10:28:17 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Wed, 30 Mar 2022 10:28:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QQ1yI7gpvhhb2Rt9FYa3OEZF0hmBt83hMk0ptNGO7A7BT8Jjug82Yhgjw9IK+PfIFURdqrQs0TAixEOwC3pIxLfI8EMyZ+uSkpDmvQzfeJ6RkHpiX2jIzz32Zn6uHkSd+J6epimTD2AXXj1vihLhsbqBEOI1CIs3o2HJwtosyfBDXffXN0AuspAS6j/+kY2HmWoh6NJDR2UKHqitX38oaSyu6MVZswg77bkgiWayvjacZIAKzMmh2IMHxl2qi3AOYnkbENv/zBBUbGuceVpEakF/TFlxrr+50KPSEjgpkcdprXFA+IbF8mHAPjKZucddV5PbBxbAR4tcBdIsRqE1RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cUzpDypkVZFyAxc/m+0p7pHZ1myjYaf+sAGYKyHD65o=;
 b=n/ojTrLlJxq9Jjt+b/KXddRDuTkPH388ye91ypSHEufpyqO/1GIgIFmDI+QZpFUAc1ifXPO8Vfb5s5mESx1kyOaqYAwcXWESOlYixqCMAEngg6njjWXwkghZlb9CLFsrQA13xnFmIDkn+ebfiw4lHtk9/ZqbZxzxHoO5EMj+y8hAnAvdG3JM5e7zy0Cmq37lhEx7tzGX5NstPiTIdMJp1MhWtGJVkeYlV3srJZoqxXI5G2yOLjz0vqfhxWzZUFTrkn0im+pmEFx5bkaSTwSIePN5shvhiLafxpvMMlQreKYdxP5wbOvjilnR3vh/MS1RY7hQqM+K4Pb1GT3ENP3rPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 SA0PR11MB4606.namprd11.prod.outlook.com (2603:10b6:806:71::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5123.20; Wed, 30 Mar 2022 17:28:15 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::c445:1c7b:8914:7968]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::c445:1c7b:8914:7968%5]) with mapi id 15.20.5102.023; Wed, 30 Mar 2022
 17:28:15 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] Revert "iavf: Fix deadlock
 occurrence during resetting VF interface"
Thread-Index: AQHYP4IoOMuBR1iO4Eq6N6dOu502S6zYN/Pw
Date: Wed, 30 Mar 2022 17:28:15 +0000
Message-ID: <DM8PR11MB562180FA88B783E20A485284AB1F9@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20220324131915.13929-1-mateusz.palczewski@intel.com>
In-Reply-To: <20220324131915.13929-1-mateusz.palczewski@intel.com>
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
x-ms-office365-filtering-correlation-id: 2f5fe6dd-ccd6-49a5-f750-08da1272ac87
x-ms-traffictypediagnostic: SA0PR11MB4606:EE_
x-microsoft-antispam-prvs: <SA0PR11MB4606961B91AB577BB1F2945AAB1F9@SA0PR11MB4606.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UB4dYz1yRn/SnFc9JAbANErg8laGBN3yWTpkb0V9ypKSm9l6uJuayPEVV/x8F2kgx7sfPAMK6758SQ+kZigTk5dGCQVqvM/kmPQmE2Q87fR0uYHXXdjq1Dwd/Z7+eErnO2THytVudK8s7TzRAL+aVYDYsaoY56mTJTBFpvCk/XqDdjREcdIm2z8etk9vIspj6FS/djvM86zQL8Oj9eLfhDuBOhJGVfY+Ef3CBKbToWlC3CGTF3MbP52eq9s6ctbncdMlBoZJbindyNl4oz7mx8yDFIcDM3I8thp97IrvuD8yOTQo/+7+PbP3xAq9vN0C8+LTENJDY8wBcFC9sT9woHuAATFhDHvb59d0oMxR+2KFM0ldWZ0ZG93S8Rd3NDu+hAGa5ie7UvG5q5gVKbHE42ugIXE1xbRYQhOENeYHXG/01nMbQR51egQ3yWTIvnwFDURV45mR48p0PUpUXRA/8RLbb/x83ar4Fj7yzdVSnGyj/gyVEsPxZkqWbaNcbF3YUjZdiTjLiYnUwNMjG9qQK9HmyUE7DQ+vqLwIAox0mBE7FLYMWCDFU8+5ay+Mqfi5YMhcTHuLS4sYk+SPwv5LhKyUEHNLx245KVy6qK6gEufCB4zyjYYW4TpaJINTWYm/EgczLfbd4OouWiIqJ/1cbvlix924Y5M8s3VTmYLo6YS/qjA1VOvgw59BcBHkAKhRG6MlZa8zqEZfxyEtCZpZlg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(5660300002)(2906002)(52536014)(38100700002)(82960400001)(83380400001)(122000001)(8936002)(33656002)(38070700005)(66446008)(66476007)(71200400001)(107886003)(8676002)(64756008)(4326008)(26005)(186003)(110136005)(86362001)(66556008)(66946007)(76116006)(53546011)(508600001)(55016003)(316002)(9686003)(7696005)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ToAtrQhki3a/sji89My3kmWMm0M6LYczI26eGUNVv34+AaohuxzSXjDjOTr3?=
 =?us-ascii?Q?xV6yxbbRovsLvKi/uqI4YYl0Xh9GyAEioZMmbW27/SIVdOMRIwbQgeT9HDT1?=
 =?us-ascii?Q?bSh7eMCbSfWRl2180TArV9vE+hJG2y9g2bprQ9Xsq4VRSBUI3zKZudzR/s3u?=
 =?us-ascii?Q?6a/kSXHXuvL6ejGIf8k562vy8AEAk71uYd4Um7H5eaAStUZnhju0jDeNwDU/?=
 =?us-ascii?Q?1/I1SKWd1O2f2tqQJ/RlyTKpu/xqqoYMmaHR+qkqmnE8I6gmo2o2nHBJrDxK?=
 =?us-ascii?Q?ldjadduF7xrp9IhQYk+qUwS6326N/AHJ3zGjyPSrp+nZPia9/jUyzZKKtg87?=
 =?us-ascii?Q?TPeajjvY2RXAHT46YHQqMlghPolDgQ8Ma3asuSwcem7FlhlWInnPKMbV5xJn?=
 =?us-ascii?Q?NpXRHIwucic73NS88GCdKSmj1PeT1HQ/ALR8lpnI2F6Gk9nEBapOZJONmRpj?=
 =?us-ascii?Q?egb19UQbFxdXevY3OzSfIKERY1fHGLnFcZIZs1rnTmkqOm/6Jcyd8jCvJU+8?=
 =?us-ascii?Q?le4aaH+mZaL+vF6uQfd2ylYKRFA8Bo+OXWIdQ9WdtXgSngJd2vgumtyf7IIt?=
 =?us-ascii?Q?lqWfCDSm4HweD91+lhxUonyUZciZz8H7QU8JqXT9MZNNIHp+fggvf+z4wxrS?=
 =?us-ascii?Q?hTJchyAZlqSKmcUsEfspTc3GmzmBiuxZjJU2Gw7TSf2Vj45Oa/SfQ3DeSNhB?=
 =?us-ascii?Q?c3bf6HMsWVKe5zGK6vYF9PCG5B5YNm9uB1wCH2twOEvbtXOc9hqTlt4CSGMb?=
 =?us-ascii?Q?LvTVDyd934gVvH8nWCHdpI/S6y0tdyH1/eHT4lZPwvm8JgTV0x3qBjekM+Kv?=
 =?us-ascii?Q?38Jbd11v98AyGRj5fbfP7JrEgep5yIcfKRxCqr/E4odKP8lIT/zyqsWR2WR+?=
 =?us-ascii?Q?GksCKepgw+5Ls1j2lFHwspa8AwmUhIe2rupSnDqx/i+tqXTfsarNgFFBR5PY?=
 =?us-ascii?Q?dmGxWAMxjWN8+ddRcZSvD/PI9acqqAj1l0n8RbR1APPuTFiOCkbqU/i7EofG?=
 =?us-ascii?Q?QYNY0U65JiYEmCpMIS0gQHqwwEDdL1/3Y7vFhAbuPR+98mdlnQ4DikSYrLXB?=
 =?us-ascii?Q?xc+/2Fyl+qbJyir8wXJodeDjAAVVsgQvdRDHkXm523uaJN+LgnHOjSf5lwwj?=
 =?us-ascii?Q?jj6oRzywsuFTVTXwsChil3kl85NhkKAXf4Onw9uDaCH/KxW7MgCcGUGzmpy9?=
 =?us-ascii?Q?GhrdLAQxWbUE1qrE2/bqTW8abYbKJx5WTSswAOTvRzsGATSpL2BaR9CzVCSq?=
 =?us-ascii?Q?d8H9laJNU/NRvf9wbzvHybHaLy8h7pFWqQtSgG8n+DiC37L5svFD49tIThPQ?=
 =?us-ascii?Q?lAWI7Mt0Mxz2zMNrJht7VTb+UFiD/BAY2uVykkuN9SO06snDfOvPxsBsoWGd?=
 =?us-ascii?Q?utjHLk51Zg6auGWY54LbCD04V8C2IqAwpNsyNUCjZKJtb3T2nBqWf5WREbLM?=
 =?us-ascii?Q?KEMOQWA26YXuRN3EUFb2NkrFHg9TIBhoMO1KPFev00AJTS1LSMA1pptT0F20?=
 =?us-ascii?Q?Ns/cV2FaqBITxtIxbQXGUGgZ7mHVRyzHzzv2CBLSNv/ETMopH2fT3d2hw8bg?=
 =?us-ascii?Q?K1XdRVHrVsXi2A9NSkDGySZ1bOuh2XU5Q2A4Y7sB+twseYmBmMJA1G0rX31K?=
 =?us-ascii?Q?+Y/IcDOtRjqsF5YnElwTLJpS7mF66twt/q7Bow5slVD5UNOG4vHTL/iqhgd/?=
 =?us-ascii?Q?KAQlYNk1LHS3RPr4HGQNnfereFwIq88ueElYyL0vTtG36BvBl+mW+o4GKz40?=
 =?us-ascii?Q?zVAS5+ZXfC/FipPKYH6uoOL+zQ0tw1Y=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f5fe6dd-ccd6-49a5-f750-08da1272ac87
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Mar 2022 17:28:15.5416 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RWximprtcaflhKqGlBKw7/lG6F9LykTkZfh+ssexnk1+Mdr8BQe268CZGeBkaiUs9pClWX7JT0krZvwHgZ7g8G8pHvC1ivRzMJYygx4GOQw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4606
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] Revert "iavf: Fix deadlock
 occurrence during resetting VF interface"
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
Cc: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: Thursday, March 24, 2022 2:19 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Palczewski, Mateusz <mateusz.palczewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] Revert "iavf: Fix deadlock
> occurrence during resetting VF interface"
> 
> This change caused a regression with resetting while changing network
> namespaces. By clearing the IFF_UP flag, the kernel now thinks it has fully
> closed the device.
> 
> This reverts commit 0cc318d2e8408bc0ffb4662a0c3e5e57005ac6ff.
> 
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 7 ++-----
>  1 file changed, 2 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 0e178a0a..310fd57 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -2706,7 +2706,6 @@ static void iavf_reset_task(struct work_struct


Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
