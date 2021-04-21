Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 103FA3672D4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Apr 2021 20:48:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 863F783D52;
	Wed, 21 Apr 2021 18:48:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cfNqJ-sIe1YT; Wed, 21 Apr 2021 18:48:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4E61583D05;
	Wed, 21 Apr 2021 18:48:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 66B701C11A5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Apr 2021 18:48:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4C92E4065E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Apr 2021 18:48:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hPkoJzCmM6ir for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Apr 2021 18:48:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 62BE34061A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Apr 2021 18:48:42 +0000 (UTC)
IronPort-SDR: akLsfueuvxmIIJvGbf9XGdU+msX4Ibwa2oSOtKHrvAWYI85kkkLUOKXANiA+N0UhlNqZQN9zCD
 rBLs5pOlTqJw==
X-IronPort-AV: E=McAfee;i="6200,9189,9961"; a="281084875"
X-IronPort-AV: E=Sophos;i="5.82,240,1613462400"; d="scan'208";a="281084875"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2021 11:48:41 -0700
IronPort-SDR: Ww4QefSYr/XryyZdZFrsu/9FWCuTfmIjjfO+QkSNkeZAlemb1HpBtC/i5osU5cKuhu8V/p73vP
 xRQoBa/loyng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,240,1613462400"; d="scan'208";a="614173935"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga006.fm.intel.com with ESMTP; 21 Apr 2021 11:48:41 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 21 Apr 2021 11:48:41 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 21 Apr 2021 11:48:41 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.36.55) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 21 Apr 2021 11:48:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jJrZgo0jWR2Y8ktAURvgJMLixZdlSr2iOc1HrgUJ7oVzq8zO/wRyKxD0eCQrfJ0mmuBaHRWbFCAPY7KB/8rSMBhX/iwk4XJfpC1AidleG/pyRI5w2XNsmf2xeZtI2K6jn3pp20cbYUPGS8rXnMFEcSl6ZANQ9aGgqvx43VSFvsjrBL7NW34Vws4YaVXIybGLsCSobUiC/ErDkthff0TwQAwO0rYqMwUrRvHClA/TAZqgQtAyt4HDDr86a6MdI4jE2nnNSa17Rp3D77NWH0sbTgKp75Pj76oOs3Wzuya5vNaudFaWL7r/usLoFwDHXJIE6L817n9W+yD7bZXn8byqEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RiG8n+VeXUE5DINSZYaj/5/rEawdTDBYEs+10pM65hg=;
 b=QnnOUIvhLvbE40O+uH8qmV62l79og3gARhTXWroonKhCr7xFwZVLdDhX5SHikGiZHH5QBm9DxVdkLKrxCrj3nTF5iHDtHZ0alnjPsIC+wowwz1Jvs2+vZy57OJYfL0tbs9bZdsZZWv/9l7ScWkUZwN05JMCnJQ0H7heSeEU9Dg91XAySlebiKEKh/AsqZRsK8Mg9Zf7Q0NJex+LmUm+vuQOolAltqcBWYaAw0QJ4EQgd4wbjyxrlRrnhNihOa56FEOfdqm3tvGmYBepJk8RapuoPwIy4DpPlHLEwLbQ/z3DlyQapuqylrEQMvPSXA8tzrnHDq7GDWplCoF4X03wAKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RiG8n+VeXUE5DINSZYaj/5/rEawdTDBYEs+10pM65hg=;
 b=u+zoo1HSEZTVWKjqSYiel34x+qsZ4cpsAG56Zq2RYt7dVFgSMtFA6b+4+3iaenRfFC9LkQPuQykU0H8TQV1k2Daw1GEOvf+r0zSFbKilqMENc+Lpl8AtsTq6NXQ1EEE1cxQjzPQzhFImqdc+Q4oixkon2fpmhzdnDs2qN5Oef4w=
Received: from CY4PR11MB1576.namprd11.prod.outlook.com (2603:10b6:910:d::15)
 by CY4PR1101MB2197.namprd11.prod.outlook.com (2603:10b6:910:18::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.23; Wed, 21 Apr
 2021 18:48:39 +0000
Received: from CY4PR11MB1576.namprd11.prod.outlook.com
 ([fe80::6cb6:a971:f256:c08]) by CY4PR11MB1576.namprd11.prod.outlook.com
 ([fe80::6cb6:a971:f256:c08%7]) with mapi id 15.20.4020.023; Wed, 21 Apr 2021
 18:48:39 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S55 02/14] ice: Allow ignoring opcodes
 on specific VF
Thread-Index: AQHXD5FeJugGimH0jk6YJw0GxwjFeqq/nquA
Date: Wed, 21 Apr 2021 18:48:39 +0000
Message-ID: <CY4PR11MB15766D1A7CDAF249E2D85396AB479@CY4PR11MB1576.namprd11.prod.outlook.com>
References: <20210302181213.51718-1-anthony.l.nguyen@intel.com>
 <20210302181213.51718-2-anthony.l.nguyen@intel.com>
In-Reply-To: <20210302181213.51718-2-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 5a071c8f-444a-435f-5d14-08d904f61447
x-ms-traffictypediagnostic: CY4PR1101MB2197:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR1101MB2197CA313A5019084BC346A5AB479@CY4PR1101MB2197.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AC9umc2iMKwnqN7RmILCEoXsupBn5T7WjfkgQ2T/Kur8SKmMc9TBJc08ENdxEqFIMqGev2GJFkdUvFjmumoHhb97lFSZYMgFatnCOhjChM9v+eX0akPYPrFoFTIcJ7CfQjIxro/uOsm1cyeto0pfHPVuSsH5SqnTW9qqC3QD0nR23YGBZNgGLjpV2mIK/mvz26TujYZW9LlZzF6DrQ2LPzxKeqfBEjksIMIs6D7ChtslKxrm2k8ygrz3qhZwf3zBD34yZDcMJ/M48T0WuR4ZgL4rhU15sycP9JtKDTRzzTvgA2pAFKbawUd+VvsTAokL2Fzk6QAYTzHCymz5bFRBfSrOoJtcNYoVFxKHpcIiItSyMeP9Y8FoZyC0hU6LznZQZcZNW/ArDDLYUbvmcbFQlDBn/qe0KXB8N94YZppVZCOi7lxaXrtRIuRcL9lY+VDH2ZgTRH5JI+1v9//GNcrzQ4DW5rl29+ev5tfCIzLchyZL9FDLBQhIfZBYO/af8GJ6HPS538P2VfTmcWG5oKdnC+L0K8xbjn/IK9nTlwfowjA1aGM1KtH4GgFVsMJz2+RwxfyOzLxZvVwBvwRfnfSs69YhCM7gmCL58gzxIS8iq5A=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1576.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(39860400002)(366004)(376002)(346002)(136003)(33656002)(66946007)(52536014)(316002)(30864003)(9686003)(55016002)(122000001)(186003)(2906002)(71200400001)(66446008)(478600001)(83380400001)(66476007)(5660300002)(64756008)(66556008)(76116006)(8676002)(110136005)(53546011)(38100700002)(8936002)(26005)(7696005)(86362001)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?3twQS9SJoR+JwkwoAH8lrBCUHMb/19Y86I9v9/atQRJNzQ6slke/inYRsbrn?=
 =?us-ascii?Q?/TLtlnReeoxVoHieQKzLoLvh+5Op8dFIPxYpZs9tiBdbC3/gU9SfcbYA1CMb?=
 =?us-ascii?Q?WPu9FyhGMn/UeuP9nZDjiu+ZsAyHmQIAkVn/qVGeWMFEJVOHOXmwqJUH/NKx?=
 =?us-ascii?Q?KXk8bZHCxuPUvCeKbMJBmMxqNSULrQGdcQ5z0XjIDSzFedihgC/pLHD//5cF?=
 =?us-ascii?Q?HynqfABfSpCQoPHMmt48hMlWljzAu0u9BVMNb0bM+WNMsXXy0B9CIynYagEF?=
 =?us-ascii?Q?EHm9thy85XFjtPH1aGmk27FP3C2w/l8giEP79GEa8IZ2qQGPG9/bAK4frLm9?=
 =?us-ascii?Q?vAXg9qKz0asXa3bMBE01XZ96IOJ+cmCgAG8TkLD459wHOoq3TJBAAqpnu8h/?=
 =?us-ascii?Q?uVxVmY+hwETTBwyIqK2vuOFmWlwR7GExi8gbxSQnEP6ucUSUU16EwsQRJFD+?=
 =?us-ascii?Q?fAK6c1x6vF4wK4JvsFLT50+HfSiUCveYC+L1AC7/zKxWrBcIDEjIqeOp9vqq?=
 =?us-ascii?Q?k/uHYaBVD6QUAjkCPpxZgDD+IgkR/CXwIyQqY36ZHSp31oKUuVeu14HF2+2o?=
 =?us-ascii?Q?wcTL0yvW/CmTZ0voAf+sJIZ967+Ayr2tpII+q0hfsLQWGcYeBze5KyNplpPP?=
 =?us-ascii?Q?zzVF/IutS3qMNLJu34tRij8yNECatftao6MX36LHy58nDMkRw/Z5BTC2fajY?=
 =?us-ascii?Q?olMzMQuM+kp16EUzdE5nTtWIo3QwLHXeXMvqsMJgfYl6Ls3dFn4B/TZuAKA2?=
 =?us-ascii?Q?tbIsnHMNRweXxfZylj9HdpF+mePSX8eMUgMVwach9nZC1VqPimN8j/pRUQ5o?=
 =?us-ascii?Q?9T+1dUzMOQRnpmJdRe8Gexs6I3UxX84RXPIY4YP8Mopu7bzJOkT03EQGkWVA?=
 =?us-ascii?Q?zRNK82/ICE4nH3mOGEouIbIpSZjoAqKz/kC5OR0LVYSqAfw0DLiKTWFTWiA5?=
 =?us-ascii?Q?xE8+rDZOAyWMLGyjrO+1o0iqYC5RTtzdSN5jPWG1NrfKNBHzWN2q3taQDRr+?=
 =?us-ascii?Q?yPesxK7Bto7E/BmPbkaVqrm5KIz4I03XppFp4IkJbU20wpVdDolx6LVguZIj?=
 =?us-ascii?Q?ETpwuXDkKdfmyvSmCxgVVwJk7ry4HzgY3U2vqUfgpzAw7KW219N+CkQYtIC8?=
 =?us-ascii?Q?GWHeUdyz4WgvrmW+lm9PFawV/dDkDEVubhqn5+kqtBSskMogVUeLxrhx+9Ro?=
 =?us-ascii?Q?sXqX/v6p+fYVrj3JRNSCo8mq/xoxxfTY0fxzPeEHgMWGMzg6dA36CcAiXLIO?=
 =?us-ascii?Q?AQvtVzFrTDoWeb3rc1n5VPfb0pz8uKSER1FUeAmW0qAkkINfleheCNAdNBSE?=
 =?us-ascii?Q?hizRMf3mN2rfCYE3GkfeHbXq?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB1576.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a071c8f-444a-435f-5d14-08d904f61447
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2021 18:48:39.7353 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nJszUuys1lIn6fOO6bdGJ9m4BX0L6yHS74phdKKoPVVUYqcgBW3zQwOxX9LoJ/+qDyu4GVMy3+SzekwflbdCfrZu5Rm9A0QvOym8eK8Pdk0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1101MB2197
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S55 02/14] ice: Allow ignoring opcodes
 on specific VF
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: wtorek, 2 marca 2021 19:12
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S55 02/14] ice: Allow ignoring opcodes on
> specific VF
> 
> From: Michal Swiatkowski <michal.swiatkowski@intel.com>
> 
> Declare bitmap of allowed commands on VF. Initialize default opcodes list
> that should be always supported. Declare array of supported opcodes for
> each caps used in virtchnl code.
> 
> Change allowed bitmap by setting or clearing corresponding bit to allowlist
> (bit set) or denylist (bit clear).
> 
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/Makefile       |   2 +-
>  .../intel/ice/ice_virtchnl_allowlist.c        | 165 ++++++++++++++++++
>  .../intel/ice/ice_virtchnl_allowlist.h        |  13 ++
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |  18 ++
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |   1 +
>  include/linux/avf/virtchnl.h                  |   1 +
>  6 files changed, 199 insertions(+), 1 deletion(-)  create mode 100644
> drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.h
> 
> diff --git a/drivers/net/ethernet/intel/ice/Makefile
> b/drivers/net/ethernet/intel/ice/Makefile
> index f391691e2c7e..dc24ce7d1c1e 100644
> --- a/drivers/net/ethernet/intel/ice/Makefile
> +++ b/drivers/net/ethernet/intel/ice/Makefile
> @@ -26,7 +26,7 @@ ice-y := ice_main.o	\
>  	 ice_fw_update.o \
>  	 ice_lag.o	\
>  	 ice_ethtool.o
> -ice-$(CONFIG_PCI_IOV) += ice_virtchnl_pf.o ice_sriov.o ice_virtchnl_fdir.o
> +ice-$(CONFIG_PCI_IOV) += ice_virtchnl_pf.o ice_sriov.o
> +ice_virtchnl_allowlist.o ice_virtchnl_fdir.o
>  ice-$(CONFIG_DCB) += ice_dcb.o ice_dcb_nl.o ice_dcb_lib.o
>  ice-$(CONFIG_RFS_ACCEL) += ice_arfs.o
>  ice-$(CONFIG_XDP_SOCKETS) += ice_xsk.o
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
> b/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
> new file mode 100644
> index 000000000000..64b1314d4761
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
> @@ -0,0 +1,165 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/* Copyright (C) 2018-2021, Intel Corporation. */
> +
> +#include "ice_virtchnl_allowlist.h"
> +
> +/* Purpose of this file is to share functionality to allowlist or
> +denylist
> + * opcodes used in PF <-> VF communication. Group of opcodes:
> + * - default -> should be always allowed after creating VF,
> + *   default_allowlist_opcodes
> + * - opcodes needed by VF to work correctly, but not associated with caps -
> >
> + *   should be allowed after successful VF resources allocation,
> + *   working_allowlist_opcodes
> + * - opcodes needed by VF when caps are activated
> + *
> + * Caps that don't use new opcodes (no opcodes should be allowed):
> + * - VIRTCHNL_VF_OFFLOAD_RSS_AQ
> + * - VIRTCHNL_VF_OFFLOAD_RSS_REG
> + * - VIRTCHNL_VF_OFFLOAD_WB_ON_ITR
> + * - VIRTCHNL_VF_OFFLOAD_CRC
> + * - VIRTCHNL_VF_OFFLOAD_RX_POLLING
> + * - VIRTCHNL_VF_OFFLOAD_RSS_PCTYPE_V2
> + * - VIRTCHNL_VF_OFFLOAD_ENCAP
> + * - VIRTCHNL_VF_OFFLOAD_ENCAP_CSUM
> + * - VIRTCHNL_VF_OFFLOAD_RX_ENCAP_CSUM
> + * - VIRTCHNL_VF_OFFLOAD_USO
> + */
> +
> +/* default opcodes to communicate with VF */ static const u32
> +default_allowlist_opcodes[] = {
> +	VIRTCHNL_OP_GET_VF_RESOURCES, VIRTCHNL_OP_VERSION,
> +VIRTCHNL_OP_RESET_VF, };
> +
> +/* opcodes supported after successful VIRTCHNL_OP_GET_VF_RESOURCES
> */
> +static const u32 working_allowlist_opcodes[] = {
> +	VIRTCHNL_OP_CONFIG_TX_QUEUE,
> VIRTCHNL_OP_CONFIG_RX_QUEUE,
> +	VIRTCHNL_OP_CONFIG_VSI_QUEUES,
> VIRTCHNL_OP_CONFIG_IRQ_MAP,
> +	VIRTCHNL_OP_ENABLE_QUEUES, VIRTCHNL_OP_DISABLE_QUEUES,
> +	VIRTCHNL_OP_GET_STATS, VIRTCHNL_OP_EVENT, };
> +
> +/* VIRTCHNL_VF_OFFLOAD_L2 */
> +static const u32 l2_allowlist_opcodes[] = {
> +	VIRTCHNL_OP_ADD_ETH_ADDR, VIRTCHNL_OP_DEL_ETH_ADDR,
> +	VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE,
> +};
> +
> +/* VIRTCHNL_VF_OFFLOAD_REQ_QUEUES */
> +static const u32 req_queues_allowlist_opcodes[] = {
> +	VIRTCHNL_OP_REQUEST_QUEUES,
> +};
> +
> +/* VIRTCHNL_VF_OFFLOAD_VLAN */
> +static const u32 vlan_allowlist_opcodes[] = {
> +	VIRTCHNL_OP_ADD_VLAN, VIRTCHNL_OP_DEL_VLAN,
> +	VIRTCHNL_OP_ENABLE_VLAN_STRIPPING,
> VIRTCHNL_OP_DISABLE_VLAN_STRIPPING,
> +};
> +
> +/* VIRTCHNL_VF_OFFLOAD_RSS_PF */
> +static const u32 rss_pf_allowlist_opcodes[] = {
> +	VIRTCHNL_OP_CONFIG_RSS_KEY, VIRTCHNL_OP_CONFIG_RSS_LUT,
> +	VIRTCHNL_OP_GET_RSS_HENA_CAPS,
> VIRTCHNL_OP_SET_RSS_HENA, };
> +
> +/* VIRTCHNL_VF_OFFLOAD_FDIR_PF */
> +static const u32 fdir_pf_allowlist_opcodes[] = {
> +	VIRTCHNL_OP_ADD_FDIR_FILTER, VIRTCHNL_OP_DEL_FDIR_FILTER,
> };
> +
> +struct allowlist_opcode_info {
> +	const u32 *opcodes;
> +	size_t size;
> +};
> +
> +#define BIT_INDEX(caps) (HWEIGHT((caps) - 1)) #define
> ALLOW_ITEM(caps,
> +list) \
> +	[BIT_INDEX(caps)] = { \
> +		.opcodes = list, \
> +		.size = ARRAY_SIZE(list) \
> +	}
> +static const struct allowlist_opcode_info allowlist_opcodes[] = {
> +	ALLOW_ITEM(VIRTCHNL_VF_OFFLOAD_L2, l2_allowlist_opcodes),
> +	ALLOW_ITEM(VIRTCHNL_VF_OFFLOAD_REQ_QUEUES,
> req_queues_allowlist_opcodes),
> +	ALLOW_ITEM(VIRTCHNL_VF_OFFLOAD_VLAN,
> vlan_allowlist_opcodes),
> +	ALLOW_ITEM(VIRTCHNL_VF_OFFLOAD_RSS_PF,
> rss_pf_allowlist_opcodes),
> +	ALLOW_ITEM(VIRTCHNL_VF_OFFLOAD_FDIR_PF,
> fdir_pf_allowlist_opcodes), };
> +
> +/**
> + * ice_vc_opcode_is_allowed - check if this opcode is allowed on this
> +VF
> + * @vf: pointer to VF structure
> + * @opcode: virtchnl opcode
> + *
> + * Return true if message is allowed on this VF  */ bool
> +ice_vc_is_opcode_allowed(struct ice_vf *vf, u32 opcode) {
> +	if (opcode >= VIRTCHNL_OP_MAX)
> +		return false;
> +
> +	return test_bit(opcode, vf->opcodes_allowlist); }
> +
> +/**
> + * ice_vc_allowlist_opcodes - allowlist selected opcodes
> + * @vf: pointer to VF structure
> + * @opcodes: array of opocodes to allowlist
> + * @size: size of opcodes array
> + *
> + * Function should be called to allowlist opcodes on VF.
> + */
> +static void
> +ice_vc_allowlist_opcodes(struct ice_vf *vf, const u32 *opcodes, size_t
> +size) {
> +	unsigned int i;
> +
> +	for (i = 0; i < size; i++)
> +		set_bit(opcodes[i], vf->opcodes_allowlist); }
> +
> +/**
> + * ice_vc_clear_allowlist - clear all allowlist opcodes
> + * @vf: pointer to VF structure
> + */
> +static void ice_vc_clear_allowlist(struct ice_vf *vf) {
> +	bitmap_zero(vf->opcodes_allowlist, VIRTCHNL_OP_MAX); }
> +
> +/**
> + * ice_vc_set_default_allowlist - allowlist default opcodes for VF
> + * @vf: pointer to VF structure
> + */
> +void ice_vc_set_default_allowlist(struct ice_vf *vf) {
> +	ice_vc_clear_allowlist(vf);
> +	ice_vc_allowlist_opcodes(vf, default_allowlist_opcodes,
> +				 ARRAY_SIZE(default_allowlist_opcodes));
> +}
> +
> +/**
> + * ice_vc_set_working_allowlist - allowlist opcodes needed to by VF to
> +work
> + * @vf: pointer to VF structure
> + *
> + * Whitelist opcodes that aren't associated with specific caps, but
> + * are needed by VF to work.
> + */
> +void ice_vc_set_working_allowlist(struct ice_vf *vf) {
> +	ice_vc_allowlist_opcodes(vf, working_allowlist_opcodes,
> +				 ARRAY_SIZE(working_allowlist_opcodes));
> +}
> +
> +/**
> + * ice_vc_set_allowlist_based_on_caps - allowlist VF opcodes according
> +caps
> + * @vf: pointer to VF structure
> + */
> +void ice_vc_set_caps_allowlist(struct ice_vf *vf) {
> +	unsigned long caps = vf->driver_caps;
> +	unsigned int i;
> +
> +	for_each_set_bit(i, &caps, ARRAY_SIZE(allowlist_opcodes))
> +		ice_vc_allowlist_opcodes(vf, allowlist_opcodes[i].opcodes,
> +					 allowlist_opcodes[i].size);
> +}
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.h
> b/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.h
> new file mode 100644
> index 000000000000..c33bc6ac3f54
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.h
> @@ -0,0 +1,13 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/* Copyright (C) 2018-2021, Intel Corporation. */
> +
> +#ifndef _ICE_VIRTCHNL_ALLOWLIST_H_
> +#define _ICE_VIRTCHNL_ALLOWLIST_H_
> +#include "ice.h"
> +
> +bool ice_vc_is_opcode_allowed(struct ice_vf *vf, u32 opcode);
> +
> +void ice_vc_set_default_allowlist(struct ice_vf *vf); void
> +ice_vc_set_working_allowlist(struct ice_vf *vf); void
> +ice_vc_set_caps_allowlist(struct ice_vf *vf); #endif
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> index 0da9c84ed30f..f09367eb242a 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> @@ -5,6 +5,7 @@
>  #include "ice_base.h"
>  #include "ice_lib.h"
>  #include "ice_fltr.h"
> +#include "ice_virtchnl_allowlist.h"
> 
>  /**
>   * ice_validate_vf_id - helper to check if VF ID is valid @@ -1317,6 +1318,9
> @@ bool ice_reset_all_vfs(struct ice_pf *pf, bool is_vflr)
>  	ice_for_each_vf(pf, v) {
>  		vf = &pf->vf[v];
> 
> +		vf->driver_caps = 0;
> +		ice_vc_set_default_allowlist(vf);
> +
>  		ice_vf_fdir_exit(vf);
>  		/* clean VF control VSI when resetting VFs since it should be
>  		 * setup only when iAVF creates its first FDIR rule.
> @@ -1421,6 +1425,9 @@ bool ice_reset_vf(struct ice_vf *vf, bool is_vflr)
>  		usleep_range(10, 20);
>  	}
> 
> +	vf->driver_caps = 0;
> +	ice_vc_set_default_allowlist(vf);
> +
>  	/* Display a warning if VF didn't manage to reset in time, but need to
>  	 * continue on with the operation.
>  	 */
> @@ -1633,6 +1640,7 @@ static void ice_set_dflt_settings_vfs(struct ice_pf
> *pf)
>  		set_bit(ICE_VIRTCHNL_VF_CAP_L2, &vf->vf_caps);
>  		vf->spoofchk = true;
>  		vf->num_vf_qs = pf->num_qps_per_vf;
> +		ice_vc_set_default_allowlist(vf);
> 
>  		/* ctrl_vsi_idx will be set to a valid value only when iAVF
>  		 * creates its first fdir rule.
> @@ -2135,6 +2143,9 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf,
> u8 *msg)
>  	/* match guest capabilities */
>  	vf->driver_caps = vfres->vf_cap_flags;
> 
> +	ice_vc_set_caps_allowlist(vf);
> +	ice_vc_set_working_allowlist(vf);
> +
>  	set_bit(ICE_VF_STATE_ACTIVE, vf->vf_states);
> 
>  err:
> @@ -3964,6 +3975,13 @@ void ice_vc_process_vf_msg(struct ice_pf *pf,
> struct ice_rq_event_info *event)
>  			err = -EINVAL;
>  	}
> 
> +	if (!ice_vc_is_opcode_allowed(vf, v_opcode)) {
> +		ice_vc_send_msg_to_vf(vf, v_opcode,
> +
> VIRTCHNL_STATUS_ERR_NOT_SUPPORTED, NULL,
> +				      0);
> +		return;
> +	}
> +
>  error_handler:
>  	if (err) {
>  		ice_vc_send_msg_to_vf(vf, v_opcode,
> VIRTCHNL_STATUS_ERR_PARAM, diff --git
> a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
> b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
> index 53391ac1f068..77ff0023f7be 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
> @@ -110,6 +110,7 @@ struct ice_vf {
>  	u16 num_vf_qs;			/* num of queue configured
> per VF */
>  	struct ice_mdd_vf_events mdd_rx_events;
>  	struct ice_mdd_vf_events mdd_tx_events;
> +	DECLARE_BITMAP(opcodes_allowlist, VIRTCHNL_OP_MAX);
>  };
> 
>  #ifdef CONFIG_PCI_IOV
> diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h index
> e3d5ecf7cf41..228b90ef3361 100644
> --- a/include/linux/avf/virtchnl.h
> +++ b/include/linux/avf/virtchnl.h
> @@ -139,6 +139,7 @@ enum virtchnl_ops {
>  	/* opcode 34 - 46 are reserved */
>  	VIRTCHNL_OP_ADD_FDIR_FILTER = 47,
>  	VIRTCHNL_OP_DEL_FDIR_FILTER = 48,
> +	VIRTCHNL_OP_MAX,
>  };
> 
>  /* These macros are used to generate compilation errors if a structure/union

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
