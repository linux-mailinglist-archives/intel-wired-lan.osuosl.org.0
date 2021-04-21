Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFE20367361
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Apr 2021 21:23:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4EC02401D6;
	Wed, 21 Apr 2021 19:23:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aUM_09RU2VPr; Wed, 21 Apr 2021 19:23:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C82B84016E;
	Wed, 21 Apr 2021 19:23:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 61B021BF239
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Apr 2021 19:23:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 505E94016E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Apr 2021 19:23:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Tw6tpQZexQ-M for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Apr 2021 19:23:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D5C04400E8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Apr 2021 19:22:59 +0000 (UTC)
IronPort-SDR: 6twdhgDO4bOd3S7hUNKuV78kByA1IN7GrS6DvvI0J1tKGucnoLq7GGDMeaO1VETRNiHl4rtAl7
 rGAHw4cD9kyg==
X-IronPort-AV: E=McAfee;i="6200,9189,9961"; a="192573660"
X-IronPort-AV: E=Sophos;i="5.82,240,1613462400"; d="scan'208";a="192573660"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2021 12:22:59 -0700
IronPort-SDR: fEncF+BAdZQptL+0xa0ZeBaRjv8P5Dete3TY5vdmCVAJlbpvJgEWIzwCBZ2BKc5ABX8+Faz8bt
 Ze8vA6QN2GNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,240,1613462400"; d="scan'208";a="446034136"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga004.fm.intel.com with ESMTP; 21 Apr 2021 12:22:59 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 21 Apr 2021 12:22:58 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 21 Apr 2021 12:22:58 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 21 Apr 2021 12:22:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XQgskdE2cYj77jQHi7afKJWx/nlZgzSrtsHg4j08gLTirKmWP/wF0niqZJpxQKCMKFwT7mCKdUdQPYUpZYImVFGrm4DDMlUc0o7mo3eEcHslN/UmwPzT3Kggad7LCPLOZ9w4osuZ4dOMdRPbZUHmM/PoDFY4MG8jJJBJB7T+85Raqt+T4xbHxF3PoP3Lq+8GDi4nY2vG3Rwi+hCfbEn1xLIjRK0Y/zvs+dwV9VQdn5eX/OElpRV6zEwGI99ceDUFCGHNwnCSL9mvpVHP1AuynGXWKeFq/Gp/DbR0DpIRCAwkaT2SwFRg7WTEzciQovSZchfe3jRHhd9vlClLIWt8gA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iwrIwaK5fSs7SUgi/ht1+TreG0BCeC1mehF5IAI1eBM=;
 b=YoDduUxpWiUqoNSxvuoIqkrnqXdQsB5j2Swkt59Ir1xZWTIppSkvj0SmIb/PR1qxYVvkID8igzILYVbuV+5Cidh7pirUyeLrX2GgcpvMwFBnBXvUfv6pBj+pg8eZbtHlL/8eLmDl1TTCe2XRbzUFhbufyigFtkEwky+8rSbyfD3gTG2vxe3IrIbOMG9PhccidWX8xoG2rJmx6rRCT34/wUz4nEfhWSHxC0wPplipOJci/2eG/RoJaT/0zj+rH2qfTc/g8o99vJ0jg+/52Qcvh4HOUJ5Q8DYnSe2h/nW3g99HMFlR+AdSuz34w+tcWd4ZE+vGzdHNmUcmqBphyHQbcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iwrIwaK5fSs7SUgi/ht1+TreG0BCeC1mehF5IAI1eBM=;
 b=qKmrTbCjy1LAY8JbVrmndhzz8ndikveXHkQ1GD11+61s+tKrR0cpqtNYman7ozH6fvbXsIZQO8u1BcXmSl3PqIJ3nyaxPOV0EjxLFu/MH1UOwUdaM3s3obzesz0RVQCYW7FptG/vQ7hgJPyhFluyJNjy1nb8r3YAEoGh5jbknW4=
Received: from CY4PR11MB1576.namprd11.prod.outlook.com (2603:10b6:910:d::15)
 by CY4PR11MB1784.namprd11.prod.outlook.com (2603:10b6:903:126::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.16; Wed, 21 Apr
 2021 19:22:53 +0000
Received: from CY4PR11MB1576.namprd11.prod.outlook.com
 ([fe80::6cb6:a971:f256:c08]) by CY4PR11MB1576.namprd11.prod.outlook.com
 ([fe80::6cb6:a971:f256:c08%7]) with mapi id 15.20.4020.023; Wed, 21 Apr 2021
 19:22:53 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Wang, Haiyue" <haiyue.wang@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 4/6] iavf: Support for
 modifying TCP RSS flow hashing
Thread-Index: AQHXMAHBYiJrwJ1yo06tL2slv3JdLKq/Z12A
Date: Wed, 21 Apr 2021 19:22:53 +0000
Message-ID: <CY4PR11MB1576E49988E244A276951659AB479@CY4PR11MB1576.namprd11.prod.outlook.com>
References: <20210413004844.32462-1-haiyue.wang@intel.com>
 <20210413004844.32462-5-haiyue.wang@intel.com>
In-Reply-To: <20210413004844.32462-5-haiyue.wang@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [188.147.97.153]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 848191ac-662e-4100-806e-08d904fadc59
x-ms-traffictypediagnostic: CY4PR11MB1784:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB178448DCABC84F0ADF9A800FAB479@CY4PR11MB1784.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:773;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6E9DzJcObpAtjGotbsDvm6LE27fR9tbNv+Y00sdiL+vyEZQZSmIAAs7AZ/c8V9d0Pm5g4qPB9TE2SUnDiLjiXzjR6kIV+Xi0xE648AEbeVMZ8JcDVrJFjl2lFjG/pSVNgDbgANWBDiBw99TrYmZjsc+nARpWKa2G2asNfm3fzJZu82EoP5JJmCApbA6tbN40oxLY01UoGt/AW9Dg5o7YVc+UWTL3q5IYAuhxtK96eM8l3XjYDu3/ZbfD63sHeilha1f58vWl5rUbsaEP4RXQTAfI3xWg9GebWCTKY3kYTCNwEQPbucd1LmjO4fYsu8/eYfwiPXuxcQLiRALXIj/ZrKxjKejYCEMWsfZN8vvHM99v7x1hE64GQ9OasLR3SBjNS69MiT8KhhN5iw1GJgdhVR5F4JuFLJ4KPkDATRROIiCemAy8R2IT/NGTVbK6fXvs4fq99hECkVoKNvF8Blb8Coa5LT4D09I8azPxs+KCutupQfDmNkSUZPCMlxQ99teXNlzqpFq8osdk0xge0PTXBrJiZCy/03nwgG8ddxxS+gYH7SaBE0/PiJSxoNZY6fp0GZxJeME4Dnk0RyJ03Ymkvriv9RaXvOc4fbl8st7Dt9s=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1576.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(39860400002)(136003)(376002)(366004)(346002)(38100700002)(316002)(30864003)(478600001)(110136005)(52536014)(66446008)(33656002)(55016002)(71200400001)(64756008)(8936002)(83380400001)(4326008)(66556008)(26005)(9686003)(76116006)(66476007)(5660300002)(122000001)(66946007)(107886003)(186003)(6506007)(53546011)(86362001)(2906002)(7696005)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?jJdI9YxMKqXHSLdTpWZdLsq9ZwjC5G76GYb12QnEtQMOyh9K9jpH79KsL2wl?=
 =?us-ascii?Q?Ka7Fds/qX/aJl75GN2ijGPUx4UP3Vujnop0h5AJEBqToiRkvAVBT7G7VWaOv?=
 =?us-ascii?Q?mnJNivevIMx6KlMOY1wc/YEfUJEXxMuwj4R6XkTZwA2KFgtpv56dMjTFgkbT?=
 =?us-ascii?Q?cAT5/2BkPsClTAHJIO4itibI1kJFZXtFbgqcvmTC5ceurHk9F10XEa3UVRBv?=
 =?us-ascii?Q?HR4G2tmFruTguRJlOM1fNef6iq0Q5MTTb+Z/6AukJKRgpRbp56XWkJ0V0jiX?=
 =?us-ascii?Q?Dz5UgYht4+8yGmS6iCHyxpim6UeqPS9VMXyL+cV7CHfdmOY2bicr9vBEi6eh?=
 =?us-ascii?Q?cUlJi5KIJcTsBmRFvEoB3s7cOzOMtbTNwWYiO8iq2cPCpPsdWIwAOVmd6nBt?=
 =?us-ascii?Q?f3M4J9q1FS300HJhY4ow/GXbiTpw6Y22e4ixTIDP2edIst4yseL9W2MKQKfp?=
 =?us-ascii?Q?KgYtSIxLnpQkrC3u63THkhU3YNzhXra5uhbQ8rh63pepA+VFM2kZmBJAFnGY?=
 =?us-ascii?Q?9YdekuolEKYnEZTwnL00DbIE1pOCm6OA9VEPPIo65s9/bGVcZRa4hfzMD+Wp?=
 =?us-ascii?Q?WAxlx8HzYfTQhWxMEaqznJbLB7ViYY/DJJEXe1Y197eANCV83QHAdFusmdqw?=
 =?us-ascii?Q?G6/ZGbXLp07+1nnLIH7mzCG9WCu3KQ9nfAWOrXiUYa7SFhVNL0w9thiNnciz?=
 =?us-ascii?Q?xxU7vZrP8bTLgDNANcEnnDBRCyVGF+G6+RZzrQrugKsJtcLF8BoHiUNSjcGp?=
 =?us-ascii?Q?7KymvbruXrbs8qZaMZZ7usS0AFXxLfALrAWeHVxWi2XL0qV7Qm4ZdkHVb+ru?=
 =?us-ascii?Q?mmzbfB1G94twbi3ei/NjfpVPQm4sP92xmg3M25wEht0voXJgcXRBNHtBtFrJ?=
 =?us-ascii?Q?w7fgRI/Sf4pSYkabt+D30qpqCPIJeolqF1NVpH4Y6hDU01DV8Z01BMOAcBrn?=
 =?us-ascii?Q?0ChGtfD0675l/fp+gMYdejee6XHCCItE9n25Art4nxqatsNtdFkUC6CyTgtV?=
 =?us-ascii?Q?ivYqLQZd1pLDQADfSvzNvard/XdLC/Dm7ywrkgnjDib40GdD/jRcl+WH2T8c?=
 =?us-ascii?Q?9aK/a1mX7avjA4PRYhLmQ3o4DOJ+VuNcO6Wq8SSkgMaqGZXnHS6Uz6KzMLva?=
 =?us-ascii?Q?bqUhbXQ6uDYQQ8ATfWw5lEmesVNXv1F3CJUuy8g5W/eEv4XVZFMbxQJL4XLd?=
 =?us-ascii?Q?P+bnIyo6Z+pOET0vi5cNN7LVDjqrWlL9A3751M9EPGpx0z0QjpAsYEBe51UQ?=
 =?us-ascii?Q?bd6w06hJXHaVOjM6BILefiAZQJIS6Vc5bY5mz+AIEecWTdCuAeY7K8AgQht9?=
 =?us-ascii?Q?iCeKREKZGj9PL62VBBuqdr8H?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB1576.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 848191ac-662e-4100-806e-08d904fadc59
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2021 19:22:53.4144 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jJBe5tIyNAZsTyRDRBReF2dn/3lFi79/W//F9uvdCTVAuHizpS7VYd2TIctqhDB/8qJuonzB6Fa9k1CjypmzKwEj8oasbEWinllDgvN7w6s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1784
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 4/6] iavf: Support for
 modifying TCP RSS flow hashing
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
Cc: "Zhang, Qi Z" <qi.z.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Haiyue Wang
> Sent: wtorek, 13 kwietnia 2021 02:49
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v3 4/6] iavf: Support for
> modifying TCP RSS flow hashing
> 
> Provides the ability to enable TCP RSS hashing by ethtool.
> 
> It gives users option of generating RSS hash based on the TCP source and
> destination ports numbers, IPv4 or IPv6 source and destination addresses.
> 
> Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/Makefile      |   1 +
>  .../net/ethernet/intel/iavf/iavf_adv_rss.c    | 170 ++++++++++++++
>  .../net/ethernet/intel/iavf/iavf_adv_rss.h    |  54 +++++
>  .../net/ethernet/intel/iavf/iavf_ethtool.c    | 214 +++++++++++++++++-
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  15 +-
>  5 files changed, 450 insertions(+), 4 deletions(-)  create mode 100644
> drivers/net/ethernet/intel/iavf/iavf_adv_rss.c
> 
> diff --git a/drivers/net/ethernet/intel/iavf/Makefile
> b/drivers/net/ethernet/intel/iavf/Makefile
> index 121e194ee734..9c3e45c54d01 100644
> --- a/drivers/net/ethernet/intel/iavf/Makefile
> +++ b/drivers/net/ethernet/intel/iavf/Makefile
> @@ -12,4 +12,5 @@ subdir-ccflags-y += -I$(src)
>  obj-$(CONFIG_IAVF) += iavf.o
> 
>  iavf-objs := iavf_main.o iavf_ethtool.o iavf_virtchnl.o iavf_fdir.o \
> +	     iavf_adv_rss.o \
>  	     iavf_txrx.o iavf_common.o iavf_adminq.o iavf_client.o diff --git
> a/drivers/net/ethernet/intel/iavf/iavf_adv_rss.c
> b/drivers/net/ethernet/intel/iavf/iavf_adv_rss.c
> new file mode 100644
> index 000000000000..4c5771cdc445
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/iavf/iavf_adv_rss.c
> @@ -0,0 +1,170 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/* Copyright (c) 2021, Intel Corporation. */
> +
> +/* advanced RSS configuration ethtool support for iavf */
> +
> +#include "iavf.h"
> +
> +/**
> + * iavf_fill_adv_rss_ip4_hdr - fill the IPv4 RSS protocol header
> + * @hdr: the virtchnl message protocol header data structure
> + * @hash_flds: the RSS configuration protocol hash fields  */ static
> +void iavf_fill_adv_rss_ip4_hdr(struct virtchnl_proto_hdr *hdr, u64
> +hash_flds) {
> +	VIRTCHNL_SET_PROTO_HDR_TYPE(hdr, IPV4);
> +
> +	if (hash_flds & IAVF_ADV_RSS_HASH_FLD_IPV4_SA)
> +		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, IPV4, SRC);
> +
> +	if (hash_flds & IAVF_ADV_RSS_HASH_FLD_IPV4_DA)
> +		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, IPV4, DST); }
> +
> +/**
> + * iavf_fill_adv_rss_ip6_hdr - fill the IPv6 RSS protocol header
> + * @hdr: the virtchnl message protocol header data structure
> + * @hash_flds: the RSS configuration protocol hash fields  */ static
> +void iavf_fill_adv_rss_ip6_hdr(struct virtchnl_proto_hdr *hdr, u64
> +hash_flds) {
> +	VIRTCHNL_SET_PROTO_HDR_TYPE(hdr, IPV6);
> +
> +	if (hash_flds & IAVF_ADV_RSS_HASH_FLD_IPV6_SA)
> +		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, IPV6, SRC);
> +
> +	if (hash_flds & IAVF_ADV_RSS_HASH_FLD_IPV6_DA)
> +		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, IPV6, DST); }
> +
> +/**
> + * iavf_fill_adv_rss_tcp_hdr - fill the TCP RSS protocol header
> + * @hdr: the virtchnl message protocol header data structure
> + * @hash_flds: the RSS configuration protocol hash fields  */ static
> +void iavf_fill_adv_rss_tcp_hdr(struct virtchnl_proto_hdr *hdr, u64
> +hash_flds) {
> +	VIRTCHNL_SET_PROTO_HDR_TYPE(hdr, TCP);
> +
> +	if (hash_flds & IAVF_ADV_RSS_HASH_FLD_TCP_SRC_PORT)
> +		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, TCP,
> SRC_PORT);
> +
> +	if (hash_flds & IAVF_ADV_RSS_HASH_FLD_TCP_DST_PORT)
> +		VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(hdr, TCP,
> DST_PORT); }
> +
> +/**
> + * iavf_fill_adv_rss_cfg_msg - fill the RSS configuration into virtchnl
> +message
> + * @rss_cfg: the virtchnl message to be filled with RSS configuration
> +setting
> + * @packet_hdrs: the RSS configuration protocol header types
> + * @hash_flds: the RSS configuration protocol hash fields
> + *
> + * Returns 0 if the RSS configuration virtchnl message is filled
> +successfully  */ int iavf_fill_adv_rss_cfg_msg(struct virtchnl_rss_cfg
> +*rss_cfg,
> +			  u32 packet_hdrs, u64 hash_flds)
> +{
> +	struct virtchnl_proto_hdrs *proto_hdrs = &rss_cfg->proto_hdrs;
> +	struct virtchnl_proto_hdr *hdr;
> +
> +	rss_cfg->rss_algorithm =
> VIRTCHNL_RSS_ALG_TOEPLITZ_ASYMMETRIC;
> +
> +	proto_hdrs->tunnel_level = 0;	/* always outer layer */
> +
> +	hdr = &proto_hdrs->proto_hdr[proto_hdrs->count++];
> +	switch (packet_hdrs & IAVF_ADV_RSS_FLOW_SEG_HDR_L3) {
> +	case IAVF_ADV_RSS_FLOW_SEG_HDR_IPV4:
> +		iavf_fill_adv_rss_ip4_hdr(hdr, hash_flds);
> +		break;
> +	case IAVF_ADV_RSS_FLOW_SEG_HDR_IPV6:
> +		iavf_fill_adv_rss_ip6_hdr(hdr, hash_flds);
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	hdr = &proto_hdrs->proto_hdr[proto_hdrs->count++];
> +	switch (packet_hdrs & IAVF_ADV_RSS_FLOW_SEG_HDR_L4) {
> +	case IAVF_ADV_RSS_FLOW_SEG_HDR_TCP:
> +		iavf_fill_adv_rss_tcp_hdr(hdr, hash_flds);
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +/**
> + * iavf_find_adv_rss_cfg_by_hdrs - find RSS configuration with header
> +type
> + * @adapter: pointer to the VF adapter structure
> + * @packet_hdrs: protocol header type to find.
> + *
> + * Returns pointer to advance RSS configuration if found or null  */
> +struct iavf_adv_rss * iavf_find_adv_rss_cfg_by_hdrs(struct iavf_adapter
> +*adapter, u32 packet_hdrs) {
> +	struct iavf_adv_rss *rss;
> +
> +	list_for_each_entry(rss, &adapter->adv_rss_list_head, list)
> +		if (rss->packet_hdrs == packet_hdrs)
> +			return rss;
> +
> +	return NULL;
> +}
> +
> +/**
> + * iavf_print_adv_rss_cfg
> + * @adapter: pointer to the VF adapter structure
> + * @rss: pointer to the advance RSS configuration to print
> + * @action: the string description about how to handle the RSS
> + * @result: the string description about the virtchnl result
> + *
> + * Print the advance RSS configuration
> + **/
> +void
> +iavf_print_adv_rss_cfg(struct iavf_adapter *adapter, struct iavf_adv_rss
> *rss,
> +		       const char *action, const char *result) {
> +	u32 packet_hdrs = rss->packet_hdrs;
> +	u64 hash_flds = rss->hash_flds;
> +	static char hash_opt[300];
> +	const char *proto;
> +
> +	if (packet_hdrs & IAVF_ADV_RSS_FLOW_SEG_HDR_TCP)
> +		proto = "TCP";
> +	else
> +		return;
> +
> +	memset(hash_opt, 0, sizeof(hash_opt));
> +
> +	strcat(hash_opt, proto);
> +	if (packet_hdrs & IAVF_ADV_RSS_FLOW_SEG_HDR_IPV4)
> +		strcat(hash_opt, "v4 ");
> +	else
> +		strcat(hash_opt, "v6 ");
> +
> +	if (hash_flds & (IAVF_ADV_RSS_HASH_FLD_IPV4_SA |
> +			 IAVF_ADV_RSS_HASH_FLD_IPV6_SA))
> +		strcat(hash_opt, "IP SA,");
> +	if (hash_flds & (IAVF_ADV_RSS_HASH_FLD_IPV4_DA |
> +			 IAVF_ADV_RSS_HASH_FLD_IPV6_DA))
> +		strcat(hash_opt, "IP DA,");
> +	if (hash_flds & IAVF_ADV_RSS_HASH_FLD_TCP_SRC_PORT)
> +		strcat(hash_opt, "src port,");
> +	if (hash_flds & IAVF_ADV_RSS_HASH_FLD_TCP_DST_PORT)
> +		strcat(hash_opt, "dst port,");
> +
> +	if (!action)
> +		action = "";
> +
> +	if (!result)
> +		result = "";
> +
> +	dev_info(&adapter->pdev->dev, "%s %s %s\n", action, hash_opt,
> result);
> +}
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_adv_rss.h
> b/drivers/net/ethernet/intel/iavf/iavf_adv_rss.h
> index 66262090e697..339ecb42938b 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_adv_rss.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf_adv_rss.h
> @@ -15,11 +15,65 @@ enum iavf_adv_rss_state_t {
>  	IAVF_ADV_RSS_ACTIVE,		/* RSS configuration is active
> */
>  };
> 
> +enum iavf_adv_rss_flow_seg_hdr {
> +	IAVF_ADV_RSS_FLOW_SEG_HDR_NONE	= 0x00000000,
> +	IAVF_ADV_RSS_FLOW_SEG_HDR_IPV4	= 0x00000001,
> +	IAVF_ADV_RSS_FLOW_SEG_HDR_IPV6	= 0x00000002,
> +	IAVF_ADV_RSS_FLOW_SEG_HDR_TCP	= 0x00000004,
> +};
> +
> +#define IAVF_ADV_RSS_FLOW_SEG_HDR_L3		\
> +	(IAVF_ADV_RSS_FLOW_SEG_HDR_IPV4	|	\
> +	 IAVF_ADV_RSS_FLOW_SEG_HDR_IPV6)
> +
> +#define IAVF_ADV_RSS_FLOW_SEG_HDR_L4		\
> +	(IAVF_ADV_RSS_FLOW_SEG_HDR_TCP)
> +
> +enum iavf_adv_rss_flow_field {
> +	/* L3 */
> +	IAVF_ADV_RSS_FLOW_FIELD_IDX_IPV4_SA,
> +	IAVF_ADV_RSS_FLOW_FIELD_IDX_IPV4_DA,
> +	IAVF_ADV_RSS_FLOW_FIELD_IDX_IPV6_SA,
> +	IAVF_ADV_RSS_FLOW_FIELD_IDX_IPV6_DA,
> +	/* L4 */
> +	IAVF_ADV_RSS_FLOW_FIELD_IDX_TCP_SRC_PORT,
> +	IAVF_ADV_RSS_FLOW_FIELD_IDX_TCP_DST_PORT,
> +
> +	/* The total number of enums must not exceed 64 */
> +	IAVF_ADV_RSS_FLOW_FIELD_IDX_MAX
> +};
> +
> +#define IAVF_ADV_RSS_HASH_INVALID	0
> +#define IAVF_ADV_RSS_HASH_FLD_IPV4_SA	\
> +	BIT_ULL(IAVF_ADV_RSS_FLOW_FIELD_IDX_IPV4_SA)
> +#define IAVF_ADV_RSS_HASH_FLD_IPV6_SA	\
> +	BIT_ULL(IAVF_ADV_RSS_FLOW_FIELD_IDX_IPV6_SA)
> +#define IAVF_ADV_RSS_HASH_FLD_IPV4_DA	\
> +	BIT_ULL(IAVF_ADV_RSS_FLOW_FIELD_IDX_IPV4_DA)
> +#define IAVF_ADV_RSS_HASH_FLD_IPV6_DA	\
> +	BIT_ULL(IAVF_ADV_RSS_FLOW_FIELD_IDX_IPV6_DA)
> +#define IAVF_ADV_RSS_HASH_FLD_TCP_SRC_PORT	\
> +	BIT_ULL(IAVF_ADV_RSS_FLOW_FIELD_IDX_TCP_SRC_PORT)
> +#define IAVF_ADV_RSS_HASH_FLD_TCP_DST_PORT	\
> +	BIT_ULL(IAVF_ADV_RSS_FLOW_FIELD_IDX_TCP_DST_PORT)
> +
>  /* bookkeeping of advanced RSS configuration */  struct iavf_adv_rss {
>  	enum iavf_adv_rss_state_t state;
>  	struct list_head list;
> 
> +	u32 packet_hdrs;
> +	u64 hash_flds;
> +
>  	struct virtchnl_rss_cfg cfg_msg;
>  };
> +
> +int
> +iavf_fill_adv_rss_cfg_msg(struct virtchnl_rss_cfg *rss_cfg,
> +			  u32 packet_hdrs, u64 hash_flds);
> +struct iavf_adv_rss *
> +iavf_find_adv_rss_cfg_by_hdrs(struct iavf_adapter *adapter, u32
> +packet_hdrs); void iavf_print_adv_rss_cfg(struct iavf_adapter *adapter,
> +struct iavf_adv_rss *rss,
> +		       const char *action, const char *result);
>  #endif /* _IAVF_ADV_RSS_H_ */
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> index 935145ab2b77..b5ec8e723b61 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> @@ -1418,6 +1418,214 @@ static int iavf_del_fdir_ethtool(struct
> iavf_adapter *adapter, struct ethtool_rx
>  	return err;
>  }
> 
> +/**
> + * iavf_adv_rss_parse_hdrs - parses headers from RSS hash input
> + * @cmd: ethtool rxnfc command
> + *
> + * This function parses the rxnfc command and returns intended
> + * header types for RSS configuration
> + */
> +static u32 iavf_adv_rss_parse_hdrs(struct ethtool_rxnfc *cmd) {
> +	u32 hdrs = IAVF_ADV_RSS_FLOW_SEG_HDR_NONE;
> +
> +	switch (cmd->flow_type) {
> +	case TCP_V4_FLOW:
> +		hdrs |= IAVF_ADV_RSS_FLOW_SEG_HDR_TCP |
> +			IAVF_ADV_RSS_FLOW_SEG_HDR_IPV4;
> +		break;
> +	case TCP_V6_FLOW:
> +		hdrs |= IAVF_ADV_RSS_FLOW_SEG_HDR_TCP |
> +			IAVF_ADV_RSS_FLOW_SEG_HDR_IPV6;
> +		break;
> +	default:
> +		break;
> +	}
> +
> +	return hdrs;
> +}
> +
> +/**
> + * iavf_adv_rss_parse_hash_flds - parses hash fields from RSS hash
> +input
> + * @cmd: ethtool rxnfc command
> + *
> + * This function parses the rxnfc command and returns intended hash
> +fields for
> + * RSS configuration
> + */
> +static u64 iavf_adv_rss_parse_hash_flds(struct ethtool_rxnfc *cmd) {
> +	u64 hfld = IAVF_ADV_RSS_HASH_INVALID;
> +
> +	if (cmd->data & RXH_IP_SRC || cmd->data & RXH_IP_DST) {
> +		switch (cmd->flow_type) {
> +		case TCP_V4_FLOW:
> +			if (cmd->data & RXH_IP_SRC)
> +				hfld |= IAVF_ADV_RSS_HASH_FLD_IPV4_SA;
> +			if (cmd->data & RXH_IP_DST)
> +				hfld |= IAVF_ADV_RSS_HASH_FLD_IPV4_DA;
> +			break;
> +		case TCP_V6_FLOW:
> +			if (cmd->data & RXH_IP_SRC)
> +				hfld |= IAVF_ADV_RSS_HASH_FLD_IPV6_SA;
> +			if (cmd->data & RXH_IP_DST)
> +				hfld |= IAVF_ADV_RSS_HASH_FLD_IPV6_DA;
> +			break;
> +		default:
> +			break;
> +		}
> +	}
> +
> +	if (cmd->data & RXH_L4_B_0_1 || cmd->data & RXH_L4_B_2_3) {
> +		switch (cmd->flow_type) {
> +		case TCP_V4_FLOW:
> +		case TCP_V6_FLOW:
> +			if (cmd->data & RXH_L4_B_0_1)
> +				hfld |=
> IAVF_ADV_RSS_HASH_FLD_TCP_SRC_PORT;
> +			if (cmd->data & RXH_L4_B_2_3)
> +				hfld |=
> IAVF_ADV_RSS_HASH_FLD_TCP_DST_PORT;
> +			break;
> +		default:
> +			break;
> +		}
> +	}
> +
> +	return hfld;
> +}
> +
> +/**
> + * iavf_set_adv_rss_hash_opt - Enable/Disable flow types for RSS hash
> + * @adapter: pointer to the VF adapter structure
> + * @cmd: ethtool rxnfc command
> + *
> + * Returns Success if the flow input set is supported.
> + */
> +static int
> +iavf_set_adv_rss_hash_opt(struct iavf_adapter *adapter,
> +			  struct ethtool_rxnfc *cmd)
> +{
> +	struct iavf_adv_rss *rss_old, *rss_new;
> +	bool rss_new_add = false;
> +	int count = 50, err = 0;
> +	u64 hash_flds;
> +	u32 hdrs;
> +
> +	if (!ADV_RSS_SUPPORT(adapter))
> +		return -EOPNOTSUPP;
> +
> +	hdrs = iavf_adv_rss_parse_hdrs(cmd);
> +	if (hdrs == IAVF_ADV_RSS_FLOW_SEG_HDR_NONE)
> +		return -EINVAL;
> +
> +	hash_flds = iavf_adv_rss_parse_hash_flds(cmd);
> +	if (hash_flds == IAVF_ADV_RSS_HASH_INVALID)
> +		return -EINVAL;
> +
> +	rss_new = kzalloc(sizeof(*rss_new), GFP_KERNEL);
> +	if (!rss_new)
> +		return -ENOMEM;
> +
> +	if (iavf_fill_adv_rss_cfg_msg(&rss_new->cfg_msg, hdrs, hash_flds))
> {
> +		kfree(rss_new);
> +		return -EINVAL;
> +	}
> +
> +	while (test_and_set_bit(__IAVF_IN_CRITICAL_TASK,
> +				&adapter->crit_section)) {
> +		if (--count == 0) {
> +			kfree(rss_new);
> +			return -EINVAL;
> +		}
> +
> +		udelay(1);
> +	}
> +
> +	spin_lock_bh(&adapter->adv_rss_lock);
> +	rss_old = iavf_find_adv_rss_cfg_by_hdrs(adapter, hdrs);
> +	if (rss_old) {
> +		if (rss_old->state != IAVF_ADV_RSS_ACTIVE) {
> +			err = -EBUSY;
> +		} else if (rss_old->hash_flds != hash_flds) {
> +			rss_old->state = IAVF_ADV_RSS_ADD_REQUEST;
> +			rss_old->hash_flds = hash_flds;
> +			memcpy(&rss_old->cfg_msg, &rss_new->cfg_msg,
> +			       sizeof(rss_new->cfg_msg));
> +			adapter->aq_required |=
> IAVF_FLAG_AQ_ADD_ADV_RSS_CFG;
> +		} else {
> +			err = -EEXIST;
> +		}
> +	} else {
> +		rss_new_add = true;
> +		rss_new->state = IAVF_ADV_RSS_ADD_REQUEST;
> +		rss_new->packet_hdrs = hdrs;
> +		rss_new->hash_flds = hash_flds;
> +		list_add_tail(&rss_new->list, &adapter->adv_rss_list_head);
> +		adapter->aq_required |=
> IAVF_FLAG_AQ_ADD_ADV_RSS_CFG;
> +	}
> +	spin_unlock_bh(&adapter->adv_rss_lock);
> +
> +	if (!err)
> +		mod_delayed_work(iavf_wq, &adapter->watchdog_task, 0);
> +
> +	clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
> +
> +	if (!rss_new_add)
> +		kfree(rss_new);
> +
> +	return err;
> +}
> +
> +/**
> + * iavf_get_adv_rss_hash_opt - Retrieve hash fields for a given
> +flow-type
> + * @adapter: pointer to the VF adapter structure
> + * @cmd: ethtool rxnfc command
> + *
> + * Returns Success if the flow input set is supported.
> + */
> +static int
> +iavf_get_adv_rss_hash_opt(struct iavf_adapter *adapter,
> +			  struct ethtool_rxnfc *cmd)
> +{
> +	struct iavf_adv_rss *rss;
> +	u64 hash_flds;
> +	u32 hdrs;
> +
> +	if (!ADV_RSS_SUPPORT(adapter))
> +		return -EOPNOTSUPP;
> +
> +	cmd->data = 0;
> +
> +	hdrs = iavf_adv_rss_parse_hdrs(cmd);
> +	if (hdrs == IAVF_ADV_RSS_FLOW_SEG_HDR_NONE)
> +		return -EINVAL;
> +
> +	spin_lock_bh(&adapter->adv_rss_lock);
> +	rss = iavf_find_adv_rss_cfg_by_hdrs(adapter, hdrs);
> +	if (rss)
> +		hash_flds = rss->hash_flds;
> +	else
> +		hash_flds = IAVF_ADV_RSS_HASH_INVALID;
> +	spin_unlock_bh(&adapter->adv_rss_lock);
> +
> +	if (hash_flds == IAVF_ADV_RSS_HASH_INVALID)
> +		return -EINVAL;
> +
> +	if (hash_flds & (IAVF_ADV_RSS_HASH_FLD_IPV4_SA |
> +			 IAVF_ADV_RSS_HASH_FLD_IPV6_SA))
> +		cmd->data |= (u64)RXH_IP_SRC;
> +
> +	if (hash_flds & (IAVF_ADV_RSS_HASH_FLD_IPV4_DA |
> +			 IAVF_ADV_RSS_HASH_FLD_IPV6_DA))
> +		cmd->data |= (u64)RXH_IP_DST;
> +
> +	if (hash_flds & IAVF_ADV_RSS_HASH_FLD_TCP_SRC_PORT)
> +		cmd->data |= (u64)RXH_L4_B_0_1;
> +
> +	if (hash_flds & IAVF_ADV_RSS_HASH_FLD_TCP_DST_PORT)
> +		cmd->data |= (u64)RXH_L4_B_2_3;
> +
> +	return 0;
> +}
> +
>  /**
>   * iavf_set_rxnfc - command to set Rx flow rules.
>   * @netdev: network interface device structure @@ -1437,6 +1645,9 @@
> static int iavf_set_rxnfc(struct net_device *netdev, struct ethtool_rxnfc
> *cmd)
>  	case ETHTOOL_SRXCLSRLDEL:
>  		ret = iavf_del_fdir_ethtool(adapter, cmd);
>  		break;
> +	case ETHTOOL_SRXFH:
> +		ret = iavf_set_adv_rss_hash_opt(adapter, cmd);
> +		break;
>  	default:
>  		break;
>  	}
> @@ -1477,8 +1688,7 @@ static int iavf_get_rxnfc(struct net_device *netdev,
> struct ethtool_rxnfc *cmd,
>  		ret = iavf_get_fdir_fltr_ids(adapter, cmd, (u32 *)rule_locs);
>  		break;
>  	case ETHTOOL_GRXFH:
> -		netdev_info(netdev,
> -			    "RSS hash info is not available to vf, use pf.\n");
> +		ret = iavf_get_adv_rss_hash_opt(adapter, cmd);
>  		break;
>  	default:
>  		break;
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> index 54d2efe1732d..0eab3c43bdc5 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> @@ -1327,6 +1327,9 @@ void iavf_add_adv_rss_cfg(struct iavf_adapter
> *adapter)
>  			process_rss = true;
>  			rss->state = IAVF_ADV_RSS_ADD_PENDING;
>  			memcpy(rss_cfg, &rss->cfg_msg, len);
> +			iavf_print_adv_rss_cfg(adapter, rss,
> +					       "Input set change for",
> +					       "is pending");
>  			break;
>  		}
>  	}
> @@ -1599,6 +1602,9 @@ void iavf_virtchnl_completion(struct iavf_adapter
> *adapter,
>  						 &adapter-
> >adv_rss_list_head,
>  						 list) {
>  				if (rss->state ==
> IAVF_ADV_RSS_ADD_PENDING) {
> +					iavf_print_adv_rss_cfg(adapter, rss,
> +							       "Failed to change
> the input set for",
> +							       NULL);
>  					list_del(&rss->list);
>  					kfree(rss);
>  				}
> @@ -1815,9 +1821,14 @@ void iavf_virtchnl_completion(struct iavf_adapter
> *adapter,
>  		struct iavf_adv_rss *rss;
> 
>  		spin_lock_bh(&adapter->adv_rss_lock);
> -		list_for_each_entry(rss, &adapter->adv_rss_list_head, list)
> -			if (rss->state == IAVF_ADV_RSS_ADD_PENDING)
> +		list_for_each_entry(rss, &adapter->adv_rss_list_head, list) {
> +			if (rss->state == IAVF_ADV_RSS_ADD_PENDING) {
> +				iavf_print_adv_rss_cfg(adapter, rss,
> +						       "Input set change for",
> +						       "successful");
>  				rss->state = IAVF_ADV_RSS_ACTIVE;
> +			}
> +		}
>  		spin_unlock_bh(&adapter->adv_rss_lock);
>  		}
>  		break;

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
