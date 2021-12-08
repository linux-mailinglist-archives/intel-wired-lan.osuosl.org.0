Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 75AEC46CEAE
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Dec 2021 09:09:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 235EB60F02;
	Wed,  8 Dec 2021 08:09:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hJp6OaqjiQ6h; Wed,  8 Dec 2021 08:09:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D1371606B3;
	Wed,  8 Dec 2021 08:09:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6DE441BF365
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 08:09:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5CD93606B3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 08:09:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m7BlsGhiZpQK for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Dec 2021 08:09:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 58A2360631
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 08:09:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10191"; a="301164926"
X-IronPort-AV: E=Sophos;i="5.87,296,1631602800"; d="scan'208";a="301164926"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 00:09:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,296,1631602800"; d="scan'208";a="600539085"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP; 08 Dec 2021 00:09:48 -0800
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 8 Dec 2021 00:09:48 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 8 Dec 2021 00:09:48 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 8 Dec 2021 00:09:48 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 8 Dec 2021 00:09:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XRwGLFngoxqyrvwvkHLayx5siWhaX4njXsR7MZT0Iw8MhbGNkgC+94CDwCg9EQvgJHwRusbo8/9f8Uc7vKAEkrvEEtYiSP6YbUbb1N3jJpc/Ra6/P4cYG+x8OlBjrogkIz6tB/cFoUuoTc4NOJjpPnHZkUdJMRwKQyHGZmBjk+v/htgPvER3VH2QP2918INDJemv2FIgEB3b6jJC9dOihdJSptYeUuoSh4QlDwQb/f0juXRrObZBbB7oqpCjWtsqBqJsPlTD+pRheSyvrHx+khUjWG6HS0ceXAcdCtMcEsoFrrNRWcKPSepdSNMFdmDFMxWL3sdYvMR7IxAWjcKU/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NeKdg9S+Um5j7bwvfxMYxqn/7KsZVNdCGRyRwMutJz0=;
 b=eqhUraQXKRnqgaUmIgdzQTQxE+wJZPIRfuwwFDeDyEGxqcus6+nE+LJhR/+pNNFEOZ1pyi9YIa9GFYO/GCYpK7peiyFRHDxDFjGpFzAaUO3bLLbxmwU2FFPEGqx2vyfgebMvEDmFEixCrod+AuP9G22MLC40KT3Gx8Bfq2rLXOsAR8n2kQeBdD4UX7Pyp2d2s+EDMnFKPexpExVM06Q0TWSdu0+g+75Pp51appIwF2hc+PMZnr4BmiKe/xjgPbss+6p6OcA8Df9Fle5E8DnQeYepkIUcDaC32sJyLM6CbpqSR714N84akYIVkibf8z1JQhyCaKHH4+nTzU16wBKN0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NeKdg9S+Um5j7bwvfxMYxqn/7KsZVNdCGRyRwMutJz0=;
 b=v6rxZVyAFax3U11zxfGzfV+F0lOk5BAUjBIl+4HG2YiUp07Kn6w0yCzodyzxuQhTsG7xGNOtEHqQr5KrWEXVmhBxBW4WVqaUW0gd4wBYgNXPCt7m7Wm2etwfyARujsFk5410WoVuKuhAQUNS1k9rDIYlu9THDaOfMXNa7S9fkKo=
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM8PR11MB5654.namprd11.prod.outlook.com (2603:10b6:8:33::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4755.15; Wed, 8 Dec 2021 08:09:46 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::3114:bfaa:f64d:684a]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::3114:bfaa:f64d:684a%4]) with mapi id 15.20.4778.012; Wed, 8 Dec 2021
 08:09:46 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 5/6] iavf: Add support for
 VIRTCHNL_VF_OFFLOAD_VLAN_V2 offload enable/disable
Thread-Index: AQHX5X+5ag2Qlks3uEK35qu5+/6BI6woSs1Q
Date: Wed, 8 Dec 2021 08:09:45 +0000
Message-ID: <DM8PR11MB5621B98E2A0295F0D04E31A7AB6F9@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20211130001604.22112-1-anthony.l.nguyen@intel.com>
 <20211130001604.22112-6-anthony.l.nguyen@intel.com>
In-Reply-To: <20211130001604.22112-6-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: b944e458-3748-440b-d882-08d9ba221909
x-ms-traffictypediagnostic: DM8PR11MB5654:EE_
x-microsoft-antispam-prvs: <DM8PR11MB565437E5E1B136A037602846AB6F9@DM8PR11MB5654.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0CH4iQK7QiogNElXaMq3XUDoCw4DsJmf0YKMZJ/uNUMUI1qr+2o46Vk6tFmH2Pq1pCTIT1rzdQdE04dV7gb0wxc8Bng909ul/bu0kny3d3aoXC5VceFoEq0796wvODGrollzwXxOv5EZWRbcu0XKeIe1nx4+wl5c7lIuxuKNTghng2jFOlsMnVP7a8XQecHX7c6oyV3Mp25SUFPd1imIXMFavls4y737SUK7vqFR3k7wrNaTi3wD8Ca++WC+S2esZMAHHlVg2l4FSoHqnMJiUnxUbHVjLaL3fekiAZrnhl0qKQVIxmPCXTAW1Zkg9Fm+eFu7xR5ghjFVSEZnNwEhiuLbt6K9dqr5GoSpCvpReUI2wCmq0JZN7JYVrNd3C709xo9kIKi6+JmSDfqFTO9QGm2G8yyOnqKrA8lq5IGvzermrzuvGZRSG85W2MQ4hWlY7nrPiiWOT6BvakB4BX36VuZ33sel6Ogl6ifZEQs8pft9edCi1g1J4hVKdn+xZwpd1mtJHcTvSybBoPzG0InGg2hvuYIxyUVt11NTY+WkSfsYPCn+SPy2mMNnOvGxMVINK/3a6MYglWRKMq6xrycTBrOY7uZ+fUWcZkP6tG3cu+Z0xVBo3E4SS8wioHZUcYt7hYk9lzbrXj+/dAqymSXa3gTcNSLWDKawvnL8urqmouX8t83ymR+5Fk+hrDjUMhZVAB4hdMtglDKNWnL03w64SQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(8936002)(316002)(508600001)(5660300002)(71200400001)(8676002)(82960400001)(86362001)(76116006)(110136005)(38070700005)(7696005)(52536014)(55016003)(64756008)(2906002)(186003)(66946007)(53546011)(9686003)(66446008)(83380400001)(122000001)(6506007)(38100700002)(66476007)(66556008)(33656002)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OLzeqrR+3yZy4T/RiddbUeW7sme8k466shqLr0ZJbPl9F9WjwACk8LH8cG20?=
 =?us-ascii?Q?00bI5GHq0UWTohbcNThwgxwd8UvPXsu35ObMHugdulTOnjY90H4BCdccB+B1?=
 =?us-ascii?Q?fpd3Egu2fSvvHWCtosC/VnwKYVERcgY6JRNqBjo7GmgKXQiV+XP1wQcgetJq?=
 =?us-ascii?Q?6WclP3kwPuHwwL0ng3lcpPligpHLvZ2BhyrhgI81t992abM3K+sxp95d9OJn?=
 =?us-ascii?Q?4AilhzFsButTb+8HRxamLlIZqerCRZXwGqaHI0LNOP3cPLWGZu+S4QXTpnx9?=
 =?us-ascii?Q?+1FrCDqE4QRiPvcKjsfjSzL8LwBQ85o/4fEsLAqqAZ71oXwPuOLCzAd789SK?=
 =?us-ascii?Q?tN1qPYpSiLXPfdzKicQYTmF52IZpRT7OITHTpE9rXHuJnAwjnlN3JDcWCx1L?=
 =?us-ascii?Q?oKpG0M1MBNiDiMEK/Y+/CYm7EEhc3O1ZL59wscz8OUEMf8S9kw0b5l8MILMy?=
 =?us-ascii?Q?0ReGsaDF6dE515JmdBeSOvHmhL+QSTlW1/1zUHYWvaoQxNel4mp2mqi3yAZc?=
 =?us-ascii?Q?g7SP7ePzpmHhdo7zXeBvmtj4tzxrmm+bbjLZn7ih8o460q1QbUWdn6zYH247?=
 =?us-ascii?Q?9KAHMbbaNePXxYOcjNqmspnbW3AKFCntvd5shwQOD/+U6V2ftQYHUuZWW5Qg?=
 =?us-ascii?Q?y/FMP39AQXL+t0GBeuMMWaM6AXvwHrjweP8WqnO6HC/ZrKc+AXeS2WpmRjVu?=
 =?us-ascii?Q?SNn9J4U63bAGK6qIpzrtUW5WxSRy3FV6OWlxDerx+Q/npDJGj7kMGh1+DMOF?=
 =?us-ascii?Q?Vd1UM2EAPb/EVsJPFlw5IteWtSJ4zc4wmuTrSkdFZyYTukmsQPahGzFTLgvn?=
 =?us-ascii?Q?FRU/+VceyQvObamptJ9hI3ACqM/xK33pTY+esSfA1EdiXr/ThO60a7oyqdV5?=
 =?us-ascii?Q?56s5EhVu73dKek5e75wJTg1yAga5UEeDOKVyhND27zn7iVDOLwMlCl6JQ9+l?=
 =?us-ascii?Q?1m9yI5Kbdhe6uCKiBti2T8BxSos9v9PdBTfn/jgEQu9zIgqVRzqddP9inc7b?=
 =?us-ascii?Q?PdhA8qJZQs8/wNBvbKk+hGChOsUHj0LmEtAjc0RF1ynirBXEgLWHT/ZFSygq?=
 =?us-ascii?Q?OrNpzKi+Y6rO9TyscW6zwI5MQupalPPCGSSLxqrv7x8a46h84UL5HCT0eRIv?=
 =?us-ascii?Q?CrmPXfs+nzz7z9bjgtS2HhrDzRlsOMMMoCgHkF64+owkkSIqoYz3w2gUw5UG?=
 =?us-ascii?Q?zX4Xx5biPI33HaooQzzPml6o4bkmElyf9F2tFEZ2jABJ3DqsuwFUGThGL5+I?=
 =?us-ascii?Q?aeFc5IFr/sa8shLwK8g6FDji0FuQhChbD7kZ8YAsBQwkZ2oezUExh/euFwva?=
 =?us-ascii?Q?e8y1zxiG0Q2IPr+jPZaNFNP1HR8YQjvIy0VB3qXrBllrm6VB5zS2JaqfGpIx?=
 =?us-ascii?Q?EZAwWZFDiSo0nfrLNAjjKXP8Eh1s5IrzH18YfrpKCdkcXWI+zT+CT5rn0LSt?=
 =?us-ascii?Q?YzvvZMeWAA8AtDg6v5JmZ4MfoTFzNjNZoT/Q3Q0CX5MCE+B6O3MW6rerPITo?=
 =?us-ascii?Q?F8MnTci9ydPq4jPfXfvBzUa4l7cZIf8qc1bcsTWmu7FNNu6QCDA1RZQN2+Et?=
 =?us-ascii?Q?g85+PLIwY+ejy02vBATo0IwfRO2ekij8PNVZXjOcXaPTKh4HxfpRc1rAO0E2?=
 =?us-ascii?Q?2B1y5YX2PlLY16lCUF+1E8cKcmyqis8xWdG3iHu+mt9pVP90bH6Ex7Yf1WmE?=
 =?us-ascii?Q?npEF+w=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b944e458-3748-440b-d882-08d9ba221909
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Dec 2021 08:09:46.0031 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TuJutSh2BptCt7mWxPsNz5KjwZwQqVC5doMGdMGC84f0nYQFPuFfrFs38B867PFQSgS6Z2QXAqeEHXX4PP6Z392JleCYVh9V26/i24MsgIQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5654
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 5/6] iavf: Add support for
 VIRTCHNL_VF_OFFLOAD_VLAN_V2 offload enable/disable
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
> Sent: wtorek, 30 listopada 2021 01:16
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v2 5/6] iavf: Add support for
> VIRTCHNL_VF_OFFLOAD_VLAN_V2 offload enable/disable
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> The new VIRTCHNL_VF_OFFLOAD_VLAN_V2 capability added support that
> allows the VF to support 802.1Q and 802.1ad VLAN insertion and stripping if
> successfully negotiated via VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS.
> Multiple changes were needed to support this new functionality.
> 
> 1. Added new aq_required flags to support any kind of VLAN stripping and
>    insertion offload requests via virtchnl.
> 
> 2. Added the new method iavf_set_vlan_offload_features() that's
>    used during VF initialization, VF reset, and iavf_set_features() to
>    set the aq_required bits based on the current VLAN offload
>    configuration of the VF's netdev.
> 
> 3. Added virtchnl handling for VIRTCHNL_OP_ENABLE_STRIPPING_V2,
>    VIRTCHNL_OP_DISABLE_STRIPPING_V2,
> VIRTCHNL_OP_ENABLE_INSERTION_V2,
>    and VIRTCHNL_OP_ENABLE_INSERTION_V2.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h        |  80 ++++---
>  drivers/net/ethernet/intel/iavf/iavf_main.c   | 151 +++++++++++--
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 203 ++++++++++++++++++
>  3 files changed, 383 insertions(+), 51 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> b/drivers/net/ethernet/intel/iavf/iavf.h
> index 2660d46da1b5..59806d1f7e79 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -287,39 +287,47 @@ struct iavf_adapter {
>  /* duplicates for common code */
>  #define IAVF_FLAG_DCB_ENABLED			0
>  	/* flags for admin queue service task */
> -	u32 aq_required;
> -#define IAVF_FLAG_AQ_ENABLE_QUEUES		BIT(0)
> -#define IAVF_FLAG_AQ_DISABLE_QUEUES		BIT(1)
> -#define IAVF_FLAG_AQ_ADD_MAC_FILTER		BIT(2)
> -#define IAVF_FLAG_AQ_ADD_VLAN_FILTER		BIT(3)
> -#define IAVF_FLAG_AQ_DEL_MAC_FILTER		BIT(4)
> -#define IAVF_FLAG_AQ_DEL_VLAN_FILTER		BIT(5)
> -#define IAVF_FLAG_AQ_CONFIGURE_QUEUES		BIT(6)
> -#define IAVF_FLAG_AQ_MAP_VECTORS		BIT(7)
> -#define IAVF_FLAG_AQ_HANDLE_RESET		BIT(8)
> -#define IAVF_FLAG_AQ_CONFIGURE_RSS		BIT(9) /* direct AQ
> config */
> -#define IAVF_FLAG_AQ_GET_CONFIG		BIT(10)
> +	u64 aq_required;
> +#define IAVF_FLAG_AQ_ENABLE_QUEUES		BIT_ULL(0)
> +#define IAVF_FLAG_AQ_DISABLE_QUEUES		BIT_ULL(1)
> +#define IAVF_FLAG_AQ_ADD_MAC_FILTER		BIT_ULL(2)
> +#define IAVF_FLAG_AQ_ADD_VLAN_FILTER		BIT_ULL(3)
> +#define IAVF_FLAG_AQ_DEL_MAC_FILTER		BIT_ULL(4)
> +#define IAVF_FLAG_AQ_DEL_VLAN_FILTER		BIT_ULL(5)
> +#define IAVF_FLAG_AQ_CONFIGURE_QUEUES		BIT_ULL(6)
> +#define IAVF_FLAG_AQ_MAP_VECTORS		BIT_ULL(7)
> +#define IAVF_FLAG_AQ_HANDLE_RESET		BIT_ULL(8)
> +#define IAVF_FLAG_AQ_CONFIGURE_RSS		BIT_ULL(9) /* direct
> AQ config */
> +#define IAVF_FLAG_AQ_GET_CONFIG			BIT_ULL(10)
>  /* Newer style, RSS done by the PF so we can ignore hardware vagaries. */
> -#define IAVF_FLAG_AQ_GET_HENA			BIT(11)
> -#define IAVF_FLAG_AQ_SET_HENA			BIT(12)
> -#define IAVF_FLAG_AQ_SET_RSS_KEY		BIT(13)
> -#define IAVF_FLAG_AQ_SET_RSS_LUT		BIT(14)
> -#define IAVF_FLAG_AQ_REQUEST_PROMISC		BIT(15)
> -#define IAVF_FLAG_AQ_RELEASE_PROMISC		BIT(16)
> -#define IAVF_FLAG_AQ_REQUEST_ALLMULTI		BIT(17)
> -#define IAVF_FLAG_AQ_RELEASE_ALLMULTI		BIT(18)
> -#define IAVF_FLAG_AQ_ENABLE_VLAN_STRIPPING	BIT(19)
> -#define IAVF_FLAG_AQ_DISABLE_VLAN_STRIPPING	BIT(20)
> -#define IAVF_FLAG_AQ_ENABLE_CHANNELS		BIT(21)
> -#define IAVF_FLAG_AQ_DISABLE_CHANNELS		BIT(22)
> -#define IAVF_FLAG_AQ_ADD_CLOUD_FILTER		BIT(23)
> -#define IAVF_FLAG_AQ_DEL_CLOUD_FILTER		BIT(24)
> -#define IAVF_FLAG_AQ_ADD_FDIR_FILTER		BIT(25)
> -#define IAVF_FLAG_AQ_DEL_FDIR_FILTER		BIT(26)
> -#define IAVF_FLAG_AQ_ADD_ADV_RSS_CFG		BIT(27)
> -#define IAVF_FLAG_AQ_DEL_ADV_RSS_CFG		BIT(28)
> -#define IAVF_FLAG_AQ_REQUEST_STATS		BIT(29)
> -#define IAVF_FLAG_AQ_GET_OFFLOAD_VLAN_V2_CAPS	BIT(30)
> +#define IAVF_FLAG_AQ_GET_HENA			BIT_ULL(11)
> +#define IAVF_FLAG_AQ_SET_HENA			BIT_ULL(12)
> +#define IAVF_FLAG_AQ_SET_RSS_KEY		BIT_ULL(13)
> +#define IAVF_FLAG_AQ_SET_RSS_LUT		BIT_ULL(14)
> +#define IAVF_FLAG_AQ_REQUEST_PROMISC		BIT_ULL(15)
> +#define IAVF_FLAG_AQ_RELEASE_PROMISC		BIT_ULL(16)
> +#define IAVF_FLAG_AQ_REQUEST_ALLMULTI		BIT_ULL(17)
> +#define IAVF_FLAG_AQ_RELEASE_ALLMULTI		BIT_ULL(18)
> +#define IAVF_FLAG_AQ_ENABLE_VLAN_STRIPPING	BIT_ULL(19)
> +#define IAVF_FLAG_AQ_DISABLE_VLAN_STRIPPING	BIT_ULL(20)
> +#define IAVF_FLAG_AQ_ENABLE_CHANNELS		BIT_ULL(21)
> +#define IAVF_FLAG_AQ_DISABLE_CHANNELS		BIT_ULL(22)
> +#define IAVF_FLAG_AQ_ADD_CLOUD_FILTER		BIT_ULL(23)
> +#define IAVF_FLAG_AQ_DEL_CLOUD_FILTER		BIT_ULL(24)
> +#define IAVF_FLAG_AQ_ADD_FDIR_FILTER		BIT_ULL(25)
> +#define IAVF_FLAG_AQ_DEL_FDIR_FILTER		BIT_ULL(26)
> +#define IAVF_FLAG_AQ_ADD_ADV_RSS_CFG		BIT_ULL(27)
> +#define IAVF_FLAG_AQ_DEL_ADV_RSS_CFG		BIT_ULL(28)
> +#define IAVF_FLAG_AQ_REQUEST_STATS		BIT_ULL(29)
> +#define IAVF_FLAG_AQ_GET_OFFLOAD_VLAN_V2_CAPS	BIT_ULL(30)
> +#define IAVF_FLAG_AQ_ENABLE_CTAG_VLAN_STRIPPING
> 	BIT_ULL(31)
> +#define IAVF_FLAG_AQ_DISABLE_CTAG_VLAN_STRIPPING	BIT_ULL(32)
> +#define IAVF_FLAG_AQ_ENABLE_STAG_VLAN_STRIPPING
> 	BIT_ULL(33)
> +#define IAVF_FLAG_AQ_DISABLE_STAG_VLAN_STRIPPING	BIT_ULL(34)
> +#define IAVF_FLAG_AQ_ENABLE_CTAG_VLAN_INSERTION
> 	BIT_ULL(35)
> +#define IAVF_FLAG_AQ_DISABLE_CTAG_VLAN_INSERTION	BIT_ULL(36)
> +#define IAVF_FLAG_AQ_ENABLE_STAG_VLAN_INSERTION
> 	BIT_ULL(37)
> +#define IAVF_FLAG_AQ_DISABLE_STAG_VLAN_INSERTION	BIT_ULL(38)
> 
>  	/* OS defined structs */
>  	struct net_device *netdev;
> @@ -524,6 +532,14 @@ void iavf_enable_channels(struct iavf_adapter
> *adapter);  void iavf_disable_channels(struct iavf_adapter *adapter);  void
> iavf_add_cloud_filter(struct iavf_adapter *adapter);  void
> iavf_del_cloud_filter(struct iavf_adapter *adapter);
> +void iavf_enable_vlan_stripping_v2(struct iavf_adapter *adapter, u16
> +tpid); void iavf_disable_vlan_stripping_v2(struct iavf_adapter
> +*adapter, u16 tpid); void iavf_enable_vlan_insertion_v2(struct
> +iavf_adapter *adapter, u16 tpid); void
> +iavf_disable_vlan_insertion_v2(struct iavf_adapter *adapter, u16 tpid);
> +void iavf_set_vlan_offload_features(struct iavf_adapter *adapter,
> +			       netdev_features_t prev_features,
> +			       netdev_features_t features);
>  void iavf_add_fdir_filter(struct iavf_adapter *adapter);  void
> iavf_del_fdir_filter(struct iavf_adapter *adapter);  void
> iavf_add_adv_rss_cfg(struct iavf_adapter *adapter); diff --git
> a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 945369bbe04a..8bdadf6a3c0c 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -1815,6 +1815,39 @@ static int iavf_process_aq_command(struct

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
