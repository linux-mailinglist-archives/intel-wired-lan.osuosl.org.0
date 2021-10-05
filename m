Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C2D423020
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Oct 2021 20:39:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 544B160C19;
	Tue,  5 Oct 2021 18:39:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eCFRx_eQpEEx; Tue,  5 Oct 2021 18:39:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 98FAB6071F;
	Tue,  5 Oct 2021 18:39:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 567E01BF3F6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Oct 2021 18:39:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 46D03836A5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Oct 2021 18:39:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wwycJhvPzGNU for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Oct 2021 18:39:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5ECEF83670
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Oct 2021 18:39:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10128"; a="249089110"
X-IronPort-AV: E=Sophos;i="5.85,349,1624345200"; d="scan'208";a="249089110"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2021 11:39:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,349,1624345200"; d="scan'208";a="438809014"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 05 Oct 2021 11:39:29 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 5 Oct 2021 11:39:29 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 5 Oct 2021 11:39:29 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 5 Oct 2021 11:39:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BVYT9To6njiYD1pxTn6x0tseXJ2kGLqEkF6g0qeWDQ/kzzut/BJUhmvUum9yES73KR9mzGGm8koxWb31ev1ECiLuWuu1768mgYwBtlWlnP2X/Iz4rrkYMcZLDgvnWvIXlM3msdRCi34aONB1Xnm8FQ2u/Gfo3cRBwRhrt7xa3MHbEDA32tY6BFcX/TdkO2H2iTqsTbnAz3o77YXIroUwGQmBehEGggpdkm+7zidgKldm8+v3X0dKwxK1C9qslaIfLV3x+Ssh55oa0KSlQ8jk/I1bqOuakTukzUdGb59aIpertWK6mAfxYEuNRCoMjfHZx7D1UkfoCYk0G9YhLk8dPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oYq8uyXZPGshFoG+4cprNz3cISq8oRbLIsJpoPOynNA=;
 b=iWPdj3jXkb/Gk2akeHolAxzA8vg3DAygdvQvldRMu5Fuw/LRNLSSRsuIRMNsuzD6DsTuF4q1kKdgU05xzVxDzGwo2k82K8t5wsB0c5DGxwidw9tIQCBswAHSQvokYRyEtcG0T9ugyiPqOy1TartQKqTa4aIAZhKW0MPstZwX83sW8e9k5BhJhT1QCLcYSvh44JVIgSS0XjtRTCKFpzjaDFV4RfQWmDMKSE6q/tQc5ASuzoO0TXVFmWLbk6mTDOhycvmjYRmXsvNLxmRQD6mCM8t1XyPncel0MOZC6VyppjK8l38a+V3ZzwEErjh7BYxQvBPfL4Xv/9RaBUOgeh1emQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oYq8uyXZPGshFoG+4cprNz3cISq8oRbLIsJpoPOynNA=;
 b=t2zgsPh2K6yjW6iIkjhZD4H1H3FReeaxY6C8HRDO86HzO7FHACjTYixH6P5sYl5tFnD/+KA3ou8nsnNe/hekEeCfRyVoaX7TPud3KLEZd3wpdY5XTeAyDWjC5CpKpWtnlE10x7kV9frhVsvQiT7XbsW2u82/aggGt9WsZ0rclI4=
Received: from CO1PR11MB4835.namprd11.prod.outlook.com (2603:10b6:303:9e::22)
 by MWHPR1101MB2096.namprd11.prod.outlook.com (2603:10b6:301:58::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.14; Tue, 5 Oct
 2021 18:39:24 +0000
Received: from CO1PR11MB4835.namprd11.prod.outlook.com
 ([fe80::2535:63f1:3e97:ad30]) by CO1PR11MB4835.namprd11.prod.outlook.com
 ([fe80::2535:63f1:3e97:ad30%2]) with mapi id 15.20.4566.022; Tue, 5 Oct 2021
 18:39:24 +0000
From: "Creeley, Brett" <brett.creeley@intel.com>
To: "Sornek, Karen" <karen.sornek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH net-next v1] iavf: Add support for
 VIRTCHNL_VF_OFFLOAD_VLAN_V2
Thread-Index: AQHXtTgdpQA7lsMqj0S4DYV3zJ4XGKvEs7YA
Date: Tue, 5 Oct 2021 18:39:23 +0000
Message-ID: <CO1PR11MB4835F3710622731B4647FD69F5AF9@CO1PR11MB4835.namprd11.prod.outlook.com>
References: <20210929134410.93953-1-karen.sornek@intel.com>
In-Reply-To: <20210929134410.93953-1-karen.sornek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5fa83ac7-2318-4647-7c3c-08d9882f73f8
x-ms-traffictypediagnostic: MWHPR1101MB2096:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR1101MB2096944B9F4F432F4A38B44EF5AF9@MWHPR1101MB2096.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: H3OeApx1YHx7hA4MvrL5fDXbf8mK1JFJnJof1nvq+zACiEg5IHQcPq9HzvHAK03toTL1LATjXLHVoxOHGm55XDXXtWmsrJa86ErCGAFhbfu9+qdUaF02LuQJb8m/HYOg4a0YYNUh0j8YDxEuGe4XWYjAH/RpWzYDwnLVF7IsHKJrQ3I4+e9J289lzS5VacVKdb0oBGRFe11+C2MdrmO+HmmvR0Svozc3IaDRSzFF6fGgFXw+c71DjvYEgneHvj/xmG7PQNITQCKdii+bupSbv65AmuD4E7LEDusI2UGhaZ/144fpBz83c8zGSmMit+PbQU231BH7f2DMSv5FuVmiXI69sUPpfFtfTpIvcOu6WzIosh0mSek5zGPOMDXgq7tE+acW1vm5Cme4vcDLVEMhVU4Y5aUzX+nev4j1olQKPkI6/P9HLe/sPbpoh8jJywmalZMEx8/IViK56bXm9cbPTuyVgv9MciZYftzDiQn1E0E2gR7etWCsqe1/p/NgjB+2kXEzrcSmQ84xcf+70/DY5qatZNGelzuG9aQCiCncf33iQG1ttPi5xQLEOynpt6O0RffjLzCWrqBnD9xqUgCAQYlJJP6BAA9NTdst40kzZxHwe35evPrUhzj3G7/PFKY1K4tl1GGkUYg9+HAcOeFbmw9v6S14Q3CQEOUzXYBxE1BKvWbjCKqAdjy05DEe2aOFYnJkElSZjGQUhOTxGw9NSQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4835.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(64756008)(66446008)(8936002)(66476007)(2906002)(66556008)(5660300002)(110136005)(38100700002)(71200400001)(76116006)(83380400001)(38070700005)(316002)(122000001)(66946007)(7696005)(26005)(186003)(8676002)(52536014)(6506007)(53546011)(9686003)(55016002)(33656002)(86362001)(508600001)(579004)(559001)(569008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?F5u816i5kH2x9mLXRoUfV6um3OiPuU2T5S93zDbwxqrcQaT+AC1r1N+BFSfM?=
 =?us-ascii?Q?HmkoQ4Lj0+lcOvoErgCUnK74ZMCx9yv8hikiGhLuU/E/puwjKZsgmI8M1ngx?=
 =?us-ascii?Q?Q63ro2xmLrBmZj0ttFbzzWTX/dl6J5k5xf7RF2JhIH0WQtCyhw2mbtOeUmz6?=
 =?us-ascii?Q?53iZJ5edx9KNdb+7bPqmkTq7Pg8cWxZ+K6POLlUo8gDdiYrh2G3k3Vm7sERM?=
 =?us-ascii?Q?UNN1f6lAXwMjwLHdTdbq93TktlA+5xHvEDrD46nGExtS3yCQQCA9lau98a5C?=
 =?us-ascii?Q?N7oO0FF29ja4vlA+ujuWMDwHDmbkeHQlsfjqL2/0yl1H43L7a8kF1Mqi3MH4?=
 =?us-ascii?Q?GhU+MMu/3rkG5LjCo+1NJDPUmszWOU1hkhtqJ0o7+h4cItBRu5w5wWkkzQzq?=
 =?us-ascii?Q?NuF0FXjwu+SD+RiTOclxserWGuxQMmRJZW6wueYJPonEKTH7V793Ob772Vhu?=
 =?us-ascii?Q?GmmpvX9tUC/fzANqu9c+vT+NZyFLShKS8JB69Yx28JxoXsO50OGs5I3fmz5F?=
 =?us-ascii?Q?XSZXt5MUWVhXGrbnFoAq30YF9gat54l+YwVttBk3B+FpVNSEDi2qqCm8PzK/?=
 =?us-ascii?Q?QyjsO0DwkN0lKDNpbpyZ1QzXOP5AHnZ5FgfLuss8CCjRaNpW4LniNNEkuZEJ?=
 =?us-ascii?Q?EGo7AoIGHhMlKBbhJ7KBYoGR/5wM3wQ8UZ01Gyz20mfHQUZbBn0ULrqKowDm?=
 =?us-ascii?Q?TgnG4nrMfgQnBk8ERb7ym97EkRgJYus7tHaNaAjWUsulyCvrNgoGLmOk+/vF?=
 =?us-ascii?Q?urs7ff1dr1Ny5gl+2cGjA+JZZBwY3IZuyfFVM1kLda1XP6/kIvsh8ImLHzJh?=
 =?us-ascii?Q?bKwa4kwMya2J73CXHktdcPvgZnrl8I11D2oaKWHkpcnK5N6sDi6dIDArzwtk?=
 =?us-ascii?Q?tPVvBiOhB5JuzWJbN36s6d1ltImUSyvsuu+M70IR8d09DxgfwT+4hSYXqNme?=
 =?us-ascii?Q?JHpclPUrzbbQaNx5GRyA2wJ2fEnGkCF/QBD3oxMI2R1myGSMzZzHUZ15a4KW?=
 =?us-ascii?Q?xo6YrKpiqAxQD9nHAZGFuMIxUKzPTEKCyr19EnCKrXAPATUPuv3dVei9S0EC?=
 =?us-ascii?Q?u8DquE2u1xjM/Gd+wKmL8Zili1PTiKQuq5Sd3XSxQ9xnwFWNo7YuFJno9cJ1?=
 =?us-ascii?Q?oFZKfXTaYbg2ZAN7lHUSwCb9P9wzzMTxhOnXoZ+Ob1Qrc3VnrjHBhwyRK6/e?=
 =?us-ascii?Q?rXzBQz9Jtgx+r7gkEhCSxEiQxQIP4JDJE9iCJO6kHbUlgVYiyYdhpyfl0SVa?=
 =?us-ascii?Q?gkwjAb5TDTuGnKAUw26J4bmVwQAU0prAyavz6qfzqkztbGl3+1KV1qN2Y0iu?=
 =?us-ascii?Q?vg8=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4835.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fa83ac7-2318-4647-7c3c-08d9882f73f8
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Oct 2021 18:39:23.9374 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0Ps9NnX4HgX0A3OK5EsjhOTlA6VKDe+Z/dl+5degpuZWiYK9W6hhA1VneJeq5GGON3mQdE9LH08ldOMs7kYuXw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2096
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] iavf: Add support for
 VIRTCHNL_VF_OFFLOAD_VLAN_V2
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
> From: Sornek, Karen <karen.sornek@intel.com>
> Sent: Wednesday, September 29, 2021 6:44 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Sornek, Karen <karen.sornek@intel.com>; Creeley, Brett <brett.creeley@intel.com>
> Subject: [PATCH net-next v1] iavf: Add support for VIRTCHNL_VF_OFFLOAD_VLAN_V2
> 
> Restrict maximum VLAN filters for VIRTCHNL_VF_OFFLOAD_VLAN_V2
> 
> For VIRTCHNL_VF_OFFLOAD_VLAN, PF's would limit the number of VLAN
> filters a VF was allowed to add. However, by the time the opcode failed,
> the VLAN netdev had already been added. VIRTCHNL_VF_OFFLOAD_VLAN_V2
> added the ability for a PF to tell the VF how many VLAN filters it's
> allowed to add. Make changes to support that functionality.
> 
> Add support for VIRTCHNL_VF_OFFLOAD_VLAN_V2 offload enable/disable
> 
> The new VIRTCHNL_VF_OFFLOAD_VLAN_V2 capability adds support that allows
> the VF to support 802.1Q and 802.1ad VLAN insertion and stripping if
> successfully negotiated via VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS.
> Multiple changes were needed to support this new functionality.
> 
> 1. Add new aq_required flags to support any kind of VLAN stripping and
>    insertion offload requests via virtchnl.
> 
> 2. Add the new method iavf_set_vlan_offload_features() that's
>    used during VF initialization, VF reset, and iavf_set_features() to
>    set the aq_required bits based on the current VLAN offload
>    configuration of the VF's netdev.
> 
> 3. Add virtchnl handling for VIRTCHNL_OP_ENABLE_STRIPPING_V2,
>    VIRTCHNL_OP_DISABLE_STRIPPING_V2, VIRTCHNL_OP_ENABLE_INSERTION_V2,
>    and VIRTCHNL_OP_ENABLE_INSERTION_V2.
> 
> Add support for VIRTCHNL_VF_OFFLOAD_VLAN_V2 hotpath
> 
> The new VIRTCHNL_VF_OFFLOAD_VLAN_V2 capability added support that allows
> the PF to set the location of the Tx and Rx VLAN tag for insertion and
> stripping offloads. In order to support this functionality a few changes
> are needed.
> 
> 1. Add a new method to cache the VLAN tag location based on negotiated
>    capabilities for the Tx and Rx ring flags. This needs to be called in
>    the initialization and reset paths.
> 
> 2. Refactor the transmit hotpath to account for the new Tx ring flags.
>    When IAVF_TXR_FLAGS_VLAN_LOC_L2TAG2 is set, then the driver needs to
>    insert the VLAN tag in the L2TAG2 field of the transmit descriptor.
>    When the IAVF_TXRX_FLAGS_VLAN_LOC_L2TAG1 is set, then the driver needs
>    to use the l2tag1 field of the data descriptor (same behavior as
>    before).
> 
> 3. Refactor the iavf_tx_prepare_vlan_flags() function to simplify
>    transmit hardware VLAN offload functionality by only depending on the
>    skb_vlan_tag_present() function. This can be done because the OS
>    won't request transmit offload for a VLAN unless the driver told the
>    OS it's supported and enabled.
> 
> 4. Refactor the receive hotpath to account for the new Rx ring flags and
>    VLAN ethertypes. This requires checking the Rx ring flags and
>    descriptor status bits to determine the location of the VLAN tag.
>    Also, since only a single ethertype can be supported at a time, check
>    the enabled netdev features before specifying a VLAN ethertype in
>    __vlan_hwaccel_put_tag().
> 
> Add support for VIRTCHNL_OP_[ADD|DEL]_VLAN_V2
> 
> In order to support adding/deleting VLAN filters when the VF
> successfully negotiates VIRTCHNL_VF_OFFLOAD_VLAN_V2, it must use the new
> virtchnl opcodes:
> 
> VIRTCHNL_OP_ADD_VLAN_V2
> VIRTCHNL_OP_DEL_VLAN_V2
> 
> Also, the VF is able to add 802.1Q and 802.1AD VLAN filters if the
> support was negotiated in VIRTCHNL_VF_OFFLOAD_VLAN_V2 and
> VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS, so add support to specify the VLAN
> TPID when adding/deletingn VLAN filters using these new opcodes.

s/deletingn/deleting

> 
> Lastly, only re-add VLAN filters after VF reset if VLAN filtering is
> allowed instead of just blindly re-adding them over virtchnl.
> 
> Add support for VIRTCHNL_VF_OFFLOAD_VLAN_V2 negotiation
> 
> In order to support the new VIRTCHNL_VF_OFFLOAD_VLAN_V2 capability the
> VF driver needs to rework it's initialization state machine and reset
> flow. This has to be done because successful negotiation of
> VIRTCHNL_VF_OFFLOAD_VLAN_V2 requires the VF driver to perform a second
> capability request via VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS before
> configuring the adapter and its netdev.
> 
> Add the VIRTCHNL_VF_OFFLOAD_VLAN_V2 bit when sending the
> VIRTHCNL_OP_GET_VF_RESOURECES message. The underlying PF will either
> support VIRTCHNL_VF_OFFLOAD_VLAN or VIRTCHNL_VF_OFFLOAD_VLAN_V2 or
> neither. Both of these offloads should never be supported together.
> 
> Based on this, add 2 new states to the initialization state machine:
> 
> __IAVF_INIT_GET_OFFLOAD_VLAN_V2_CAPS
> __IAVF_INIT_CONFIG_ADAPTER
> 
> The __IAVF_INIT_GET_OFFLOAD_VLAN_V2_CAPS state is used to request/store
> the new VLAN capabilities if and only if VIRTCHNL_VLAN_OFFLOAD_VLAN_V2
> was successfully negotiated in the __IAVF_INIT_GET_RESOURCES state.
> 
> The __IAVF_INIT_CONFIG_ADAPTER state is used to configure the
> adapter/netdev after the resource requests have finished. The VF will
> move into this state regardless of whether it successfully negotiated
> VIRTCHNL_VF_OFFLOAD_VLAN or VIRTCHNL_VF_OFFLOAD_VLAN_V2.
> 
> Also, add a the new flag IAVF_FLAG_AQ_GET_OFFLOAD_VLAN_V2_CAPS and set
> it during VF reset. If VIRTCHNL_VF_OFFLOAD_VLAN_V2 was successfully
> negotiated then the VF will request its VLAN capabilities via
> VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS during the reset. This is needed
> because the PF may change/modify the VF's configuration during VF reset
> (i.e. modifying the VF's port VLAN configuration).
> 
> This also, required the VF to call netdev_update_features() since its
> VLAN features may change during VF reset. Make sure to call this under
> rtnl_lock().

There are 6 very separate patches in this commit. You even formatted
the commit message that way, i.e.:

<title>
<commit message>

<title>
<commit message>

...

IMO this should be split into a small patch series with the 5 iavf
patches and 1 virtchnl.h patch. This would be much more consumable
and the code changes are logically separated to allow this.

> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Karen Sornek <karen.sornek@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h        | 126 ++-
>  drivers/net/ethernet/intel/iavf/iavf_main.c   | 773 ++++++++++++++----
>  drivers/net/ethernet/intel/iavf/iavf_txrx.c   |  94 ++-
>  drivers/net/ethernet/intel/iavf/iavf_txrx.h   |  30 +-
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 588 +++++++++++--
>  5 files changed, 1296 insertions(+), 315 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
> index 21c957755..15b275950 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -56,6 +56,8 @@ struct iavf_vsi {
>  	struct iavf_adapter *back;
>  	struct net_device *netdev;
>  	unsigned long active_vlans[BITS_TO_LONGS(VLAN_N_VID)];
> +	unsigned long active_cvlans[BITS_TO_LONGS(VLAN_N_VID)];
> +	unsigned long active_svlans[BITS_TO_LONGS(VLAN_N_VID)];
>  	u16 seid;
>  	u16 id;
>  	DECLARE_BITMAP(state, __IAVF_VSI_STATE_SIZE__);
> @@ -93,6 +95,17 @@ struct iavf_vsi {
>  #define IAVF_VIRTCHNL_VF_RESOURCE_SIZE (sizeof(struct virtchnl_vf_resource) + \
>  					(IAVF_MAX_VF_VSI * \
>  					 sizeof(struct virtchnl_vsi_resource)))
> +#ifdef NETIF_F_HW_VLAN_CTAG_RX
> +#define IAVF_NETIF_F_HW_VLAN_CTAG_RX	NETIF_F_HW_VLAN_CTAG_RX
> +#else
> +#define IAVF_NETIF_F_HW_VLAN_CTAG_RX	NETIF_F_HW_VLAN_RX
> +#endif
> +
> +#ifdef NETIF_F_HW_VLAN_CTAG_TX
> +#define IAVF_NETIF_F_HW_VLAN_CTAG_TX	NETIF_F_HW_VLAN_CTAG_TX
> +#else
> +#define IAVF_NETIF_F_HW_VLAN_CTAG_TX	NETIF_F_HW_VLAN_TX
> +#endif

Why are these #ifdefs here (i.e. NETIF_F_HW_VLAN_CTAG_TX and 
NETIF_F_HW_VLAN_CTAG_RX)? Please fix this.

> 
>  /* MAX_MSIX_Q_VECTORS of these are allocated,
>   * but we only use one per queue-specific vector.
> @@ -137,14 +150,23 @@ struct iavf_q_vector {
>  struct iavf_mac_filter {
>  	struct list_head list;
>  	u8 macaddr[ETH_ALEN];
> -	bool is_new_mac;	/* filter is new, wait for PF decision */
> -	bool remove;		/* filter needs to be removed */
> -	bool add;		/* filter needs to be added */
> +	struct {
> +		u8 is_new_mac:1;    /* filter is new, wait for PF decision */
> +		u8 remove:1;        /* filter needs to be removed */
> +		u8 add:1;           /* filter needs to be added */
> +		u8 add_handled:1;   /* received response from PF for filter add */
> +	};
> +};

This change has nothing to do with VIRTCHNL_VF_OFFLOAD_VLAN_V2. Please
take it out of this patch.

> +
> +#define IAVF_VLAN(vid, tpid) ((struct iavf_vlan){ vid, tpid })
> +struct iavf_vlan {
> +	u16 vid;
> +	u16 tpid;
>  };
> 
>  struct iavf_vlan_filter {
>  	struct list_head list;
> -	u16 vlan;
> +	struct iavf_vlan vlan;
>  	bool remove;		/* filter needs to be removed */
>  	bool add;		/* filter needs to be added */
>  };
> @@ -177,6 +199,8 @@ enum iavf_state_t {
>  	__IAVF_REMOVE,		/* driver is being unloaded */
>  	__IAVF_INIT_VERSION_CHECK,	/* aq msg sent, awaiting reply */
>  	__IAVF_INIT_GET_RESOURCES,	/* aq msg sent, awaiting reply */
> +	__IAVF_INIT_GET_OFFLOAD_VLAN_V2_CAPS,
> +	__IAVF_INIT_CONFIG_ADAPTER,
>  	__IAVF_INIT_SW,		/* got resources, setting up structs */
>  	__IAVF_RESETTING,		/* in reset */
>  	__IAVF_COMM_FAILED,		/* communication with PF failed */
> @@ -187,6 +211,10 @@ enum iavf_state_t {
>  	__IAVF_RUNNING,		/* opened, working */
>  };
> 
> +enum iavf_critical_section_t {
> +	__IAVF_IN_CRITICAL_TASK,        /* cannot be interrupted */
> +};
> +
>  #define IAVF_CLOUD_FIELD_OMAC		0x01
>  #define IAVF_CLOUD_FIELD_IMAC		0x02
>  #define IAVF_CLOUD_FIELD_IVLAN	0x04
> @@ -272,40 +300,50 @@ struct iavf_adapter {
>  #define IAVF_FLAG_LEGACY_RX			BIT(15)
>  #define IAVF_FLAG_REINIT_ITR_NEEDED		BIT(16)
>  #define IAVF_FLAG_QUEUES_DISABLED		BIT(17)
> +#define IAVF_FLAG_INITIAL_MAC_SET		BIT(18)
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
> -#define IAVF_FLAG_AQ_CONFIGURE_RSS		BIT(9) /* direct AQ config */
> -#define IAVF_FLAG_AQ_GET_CONFIG		BIT(10)
> +	u64 aq_required;
> +#define IAVF_FLAG_AQ_ENABLE_QUEUES			BIT(0)
> +#define IAVF_FLAG_AQ_DISABLE_QUEUES			BIT(1)
> +#define IAVF_FLAG_AQ_ADD_MAC_FILTER			BIT(2)
> +#define IAVF_FLAG_AQ_ADD_VLAN_FILTER			BIT(3)
> +#define IAVF_FLAG_AQ_DEL_MAC_FILTER			BIT(4)
> +#define IAVF_FLAG_AQ_DEL_VLAN_FILTER			BIT(5)
> +#define IAVF_FLAG_AQ_CONFIGURE_QUEUES			BIT(6)
> +#define IAVF_FLAG_AQ_MAP_VECTORS			BIT(7)
> +#define IAVF_FLAG_AQ_HANDLE_RESET			BIT(8)
> +#define IAVF_FLAG_AQ_CONFIGURE_RSS			BIT(9) /* direct AQ config */
> +#define IAVF_FLAG_AQ_GET_CONFIG				BIT(10)
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
> +#define IAVF_FLAG_AQ_GET_HENA				BIT(11)
> +#define IAVF_FLAG_AQ_SET_HENA				BIT(12)
> +#define IAVF_FLAG_AQ_SET_RSS_KEY			BIT(13)
> +#define IAVF_FLAG_AQ_SET_RSS_LUT			BIT(14)
> +#define IAVF_FLAG_AQ_REQUEST_PROMISC			BIT(15)
> +#define IAVF_FLAG_AQ_RELEASE_PROMISC			BIT(16)
> +#define IAVF_FLAG_AQ_REQUEST_ALLMULTI			BIT(17)
> +#define IAVF_FLAG_AQ_RELEASE_ALLMULTI			BIT(18)
> +#define IAVF_FLAG_AQ_ENABLE_VLAN_STRIPPING		BIT(19)
> +#define IAVF_FLAG_AQ_DISABLE_VLAN_STRIPPING		BIT(20)
> +#define IAVF_FLAG_AQ_ENABLE_CHANNELS			BIT(21)
> +#define IAVF_FLAG_AQ_DISABLE_CHANNELS			BIT(22)
> +#define IAVF_FLAG_AQ_ADD_CLOUD_FILTER			BIT(23)
> +#define IAVF_FLAG_AQ_DEL_CLOUD_FILTER			BIT(24)
> +#define IAVF_FLAG_AQ_ADD_FDIR_FILTER			BIT(25)
> +#define IAVF_FLAG_AQ_DEL_FDIR_FILTER			BIT(26)
> +#define IAVF_FLAG_AQ_ADD_ADV_RSS_CFG			BIT(27)
> +#define IAVF_FLAG_AQ_DEL_ADV_RSS_CFG			BIT(28)
> +#define IAVF_FLAG_AQ_GET_OFFLOAD_VLAN_V2_CAPS		BIT(29)
> +#define IAVF_FLAG_AQ_ENABLE_CTAG_VLAN_STRIPPING		BIT(30)
> +#define IAVF_FLAG_AQ_DISABLE_CTAG_VLAN_STRIPPING	BIT(31)
> +#define IAVF_FLAG_AQ_ENABLE_STAG_VLAN_STRIPPING		BIT(32)
> +#define IAVF_FLAG_AQ_DISABLE_STAG_VLAN_STRIPPING	BIT(33)
> +#define IAVF_FLAG_AQ_ENABLE_CTAG_VLAN_INSERTION		BIT(34)
> +#define IAVF_FLAG_AQ_DISABLE_CTAG_VLAN_INSERTION	BIT(35)
> +#define IAVF_FLAG_AQ_ENABLE_STAG_VLAN_INSERTION		BIT(36)
> +#define IAVF_FLAG_AQ_DISABLE_STAG_VLAN_INSERTION	BIT(37)
> 
>  	/* OS defined structs */
>  	struct net_device *netdev;
> @@ -344,6 +382,14 @@ struct iavf_adapter {
>  			VIRTCHNL_VF_OFFLOAD_RSS_PF)))
>  #define VLAN_ALLOWED(_a) ((_a)->vf_res->vf_cap_flags & \
>  			  VIRTCHNL_VF_OFFLOAD_VLAN)
> +#define VLAN_V2_ALLOWED(_a) ((_a)->vf_res->vf_cap_flags & \
> +			    VIRTCHNL_VF_OFFLOAD_VLAN_V2)
> +#define VLAN_V2_FILTERING_ALLOWED(_a) \
> +	(VLAN_V2_ALLOWED((_a)) && \
> +	 ((_a)->vlan_v2_caps.filtering.filtering_support.outer || \
> +	  (_a)->vlan_v2_caps.filtering.filtering_support.inner))
> +#define VLAN_FILTERING_ALLOWED(_a) \
> +        (VLAN_ALLOWED((_a)) || VLAN_V2_FILTERING_ALLOWED((_a)))
>  #define ADV_LINK_SUPPORT(_a) ((_a)->vf_res->vf_cap_flags & \
>  			      VIRTCHNL_VF_CAP_ADV_LINK_SPEED)
>  #define FDIR_FLTR_SUPPORT(_a) ((_a)->vf_res->vf_cap_flags & \
> @@ -355,6 +401,7 @@ struct iavf_adapter {
>  	struct virtchnl_version_info pf_version;
>  #define PF_IS_V11(_a) (((_a)->pf_version.major == 1) && \
>  		       ((_a)->pf_version.minor == 1))
> +	struct virtchnl_vlan_caps *vlan_v2_caps;
>  	u16 msg_enable;
>  	struct iavf_eth_stats current_stats;
>  	struct iavf_vsi vsi;
> @@ -398,6 +445,7 @@ extern struct workqueue_struct *iavf_wq;
>  int iavf_up(struct iavf_adapter *adapter);
>  void iavf_down(struct iavf_adapter *adapter);
>  int iavf_process_config(struct iavf_adapter *adapter);
> +int iavf_parse_vf_resource_msg(struct iavf_adapter *adapter);
>  void iavf_schedule_reset(struct iavf_adapter *adapter);
>  void iavf_reset(struct iavf_adapter *adapter);
>  void iavf_set_ethtool_ops(struct net_device *netdev);
> @@ -415,6 +463,9 @@ int iavf_send_api_ver(struct iavf_adapter *adapter);
>  int iavf_verify_api_ver(struct iavf_adapter *adapter);
>  int iavf_send_vf_config_msg(struct iavf_adapter *adapter);
>  int iavf_get_vf_config(struct iavf_adapter *adapter);
> +int iavf_get_vf_vlan_v2_caps(struct iavf_adapter *adapter);
> +int iavf_send_vf_offload_vlan_v2_msg(struct iavf_adapter *adapter);
> +void iavf_set_queue_vlan_tag_loc(struct iavf_adapter *adapter);
>  void iavf_irq_enable(struct iavf_adapter *adapter, bool flush);
>  void iavf_configure_queues(struct iavf_adapter *adapter);
>  void iavf_deconfigure_queues(struct iavf_adapter *adapter);
> @@ -450,10 +501,17 @@ void iavf_enable_channels(struct iavf_adapter *adapter);
>  void iavf_disable_channels(struct iavf_adapter *adapter);
>  void iavf_add_cloud_filter(struct iavf_adapter *adapter);
>  void iavf_del_cloud_filter(struct iavf_adapter *adapter);
> +void iavf_enable_vlan_stripping_v2(struct iavf_adapter *adapter, u16 tpid);
> +void iavf_disable_vlan_stripping_v2(struct iavf_adapter *adapter, u16 tpid);
> +void iavf_enable_vlan_insertion_v2(struct iavf_adapter *adapter, u16 tpid);
> +void iavf_disable_vlan_insertion_v2(struct iavf_adapter *adapter, u16 tpid);
>  void iavf_add_fdir_filter(struct iavf_adapter *adapter);
>  void iavf_del_fdir_filter(struct iavf_adapter *adapter);
>  void iavf_add_adv_rss_cfg(struct iavf_adapter *adapter);
>  void iavf_del_adv_rss_cfg(struct iavf_adapter *adapter);
>  struct iavf_mac_filter *iavf_add_filter(struct iavf_adapter *adapter,
>  					const u8 *macaddr);
> +void iavf_set_vlan_offload_features(struct iavf_adapter *adapter,
> +				    netdev_features_t prev_features,
> +				    netdev_features_t features);
>  #endif /* _IAVF_H_ */
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 80437ef26..392039ec7 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -624,14 +624,17 @@ static void iavf_configure_rx(struct iavf_adapter *adapter)
>   * mac_vlan_list_lock.
>   **/
>  static struct
> -iavf_vlan_filter *iavf_find_vlan(struct iavf_adapter *adapter, u16 vlan)
> +iavf_vlan_filter *iavf_find_vlan(struct iavf_adapter *adapter,
> +				struct iavf_vlan vlan)
>  {
>  	struct iavf_vlan_filter *f;
> 
>  	list_for_each_entry(f, &adapter->vlan_filter_list, list) {
> -		if (vlan == f->vlan)
> +		if (f->vlan.vid == vlan.vid &&
> +		    f->vlan.tpid == vlan.tpid)
>  			return f;
>  	}
> +
>  	return NULL;
>  }
> 
> @@ -643,7 +646,8 @@ iavf_vlan_filter *iavf_find_vlan(struct iavf_adapter *adapter, u16 vlan)
>   * Returns ptr to the filter object or NULL when no memory available.
>   **/
>  static struct
> -iavf_vlan_filter *iavf_add_vlan(struct iavf_adapter *adapter, u16 vlan)
> +iavf_vlan_filter *iavf_add_vlan(struct iavf_adapter *adapter,
> +				struct iavf_vlan vlan)
>  {
>  	struct iavf_vlan_filter *f = NULL;
> 
> @@ -672,7 +676,7 @@ clearout:
>   * @adapter: board private structure
>   * @vlan: VLAN tag
>   **/
> -static void iavf_del_vlan(struct iavf_adapter *adapter, u16 vlan)
> +static void iavf_del_vlan(struct iavf_adapter *adapter, struct iavf_vlan vlan)
>  {
>  	struct iavf_vlan_filter *f;
> 
> @@ -696,12 +700,70 @@ static void iavf_del_vlan(struct iavf_adapter *adapter, u16 vlan)
>  static void iavf_restore_filters(struct iavf_adapter *adapter)
>  {
>  	/* re-add all VLAN filters */
> -	if (VLAN_ALLOWED(adapter)) {
> +#ifdef HAVE_VLAN_RX_REGISTER
> +	if (adapter->vsi.vlgrp)
> +		iavf_vlan_rx_register(adapter->netdev, adapter->vsi.vlgrp);
> +#else /* HAVE_VLAN_RX_REGISTER */

What is this HAVE_VLAN_RX_REGISTER? This has no place in upstream code.
Please remove it.

> +	if (VLAN_FILTERING_ALLOWED(adapter)) {
>  		u16 vid;
> 
> -		for_each_set_bit(vid, adapter->vsi.active_vlans, VLAN_N_VID)
> -			iavf_add_vlan(adapter, vid);
> +		for_each_set_bit(vid, adapter->vsi.active_cvlans, VLAN_N_VID)
> +			iavf_add_vlan(adapter, IAVF_VLAN(vid, ETH_P_8021Q));
> +
> +		for_each_set_bit(vid, adapter->vsi.active_svlans, VLAN_N_VID)
> +			iavf_add_vlan(adapter, IAVF_VLAN(vid, ETH_P_8021AD));
>  	}
> +
> +#endif /* HAVE_VLAN_RX_REGISTER */
> +#ifndef EXTERNAL_RELEASE
> +	 /* TODO: Add code to restore Cloud filters, since they will be
> +	 * deleted as well during netdev link down...
> +	 */
> +#endif

This block needs to be removed, please fix it.

> +}
> +
> +/**
> + * iavf_get_num_vlans_added - get number of VLANs added
> + * @adapter: board private structure
> + */
> +static u16 iavf_get_num_vlans_added(struct iavf_adapter *adapter)
> +{
> +	return bitmap_weight(adapter->vsi.active_cvlans, VLAN_N_VID) +
> +		bitmap_weight(adapter->vsi.active_svlans, VLAN_N_VID);
> +}
> +
> +/**
> + * iavf_get_max_vlans_allowed - get maximum VLANs allowed for this VF
> + * @adapter: board private structure
> + *
> + * This depends on the negotiated VLAN capability. For VIRTCHNL_VF_OFFLOAD_VLAN,
> + * do not impose a limit as that maintains current behavior and for
> + * VIRTCHNL_VF_OFFLOAD_VLAN_V2, use the maximum allowed sent from the PF.
> + **/
> +static u16 iavf_get_max_vlans_allowed(struct iavf_adapter *adapter)
> +{
> +	/* don't impose any limit for VIRTCHNL_VF_OFFLOAD_VLAN since there has
> +	 * never been a limit on the VF driver side
> +	 */
> +	if (VLAN_ALLOWED(adapter))
> +		return VLAN_N_VID;
> +	else if (VLAN_V2_ALLOWED(adapter))
> +		return adapter->vlan_v2_caps->filtering.max_filters;
> +
> +	return 0;
> +}
> +
> +/**
> + * iavf_max_vlans_added - check if maximum VLANs allowed already exist
> + * @adapter: board private structure
> + **/
> +static bool iavf_max_vlans_added(struct iavf_adapter *adapter)
> +{
> +	if (iavf_get_num_vlans_added(adapter) <
> +	    iavf_get_max_vlans_allowed(adapter))
> +		return false;
> +
> +	return true;
>  }
> 
>  /**
> @@ -710,20 +772,53 @@ static void iavf_restore_filters(struct iavf_adapter *adapter)
>   * @proto: unused protocol data
>   * @vid: VLAN tag
>   **/
> +#ifdef NETIF_F_HW_VLAN_CTAG_RX

This needs to be removed, please fix it.

>  static int iavf_vlan_rx_add_vid(struct net_device *netdev,
>  				__always_unused __be16 proto, u16 vid)
>  {
>  	struct iavf_adapter *adapter = netdev_priv(netdev);
> +#ifdef NETIF_F_HW_VLAN_CTAG_RX
> +	u16 local_vlan_proto = be16_to_cpu(proto);
> +#else
> +	u16 local_vlan_proto = ETH_P_8021Q;
> +#endif

This needs to be removed, please fix it.

> 
> -	if (!VLAN_ALLOWED(adapter))
> +	if (!VLAN_FILTERING_ALLOWED(adapter))
>  		return -EIO;
> 
> -	if (iavf_add_vlan(adapter, vid) == NULL)
> +	if (iavf_max_vlans_added(adapter)) {
> +		netdev_err(netdev, "Max allowed VLAN filters %u. Remove existing VLANs or disable filtering via Ethtool if
> supported.\n",
> +			iavf_get_max_vlans_allowed(adapter));
> +		return -EIO;
> +	}
> +	if (!iavf_add_vlan(adapter, IAVF_VLAN(vid, local_vlan_proto)))
>  		return -ENOMEM;
> 
> -	set_bit(vid, adapter->vsi.active_vlans);
> +	if (local_vlan_proto == ETH_P_8021Q)
> +		set_bit(vid, adapter->vsi.active_cvlans);
> +	else
> +		set_bit(vid, adapter->vsi.active_svlans);
> +
>  	return 0;
>  }
> +#else
> +static int iavf_vlan_rx_add_vid(struct net_device *netdev, u16 vid)
> +{
> +	struct iavf_adapter *adapter = netdev_priv(netdev);
> +
> +	if (!VLAN_FILTERING_ALLOWED(adapter))
> +		return;
> +
> +	if (iavf_max_vlans_added(adapter)) {
> +		netdev_err(netdev, "Max allowed VLAN filters %u. Remove existing VLANs or disable filtering via Ethtool if
> supported.\n",
> +			iavf_get_max_vlans_allowed(adapter));
> +		return;
> +	}
> +
> +	iavf_add_vlan(adapter, IAVF_VLAN(vid, ETH_P_8021Q));
> +	set_bit(vid, adapter->vsi.active_cvlans);
> +}
> +#endif
> 
>  /**
>   * iavf_vlan_rx_kill_vid - Remove a VLAN filter from a device
> @@ -731,19 +826,36 @@ static int iavf_vlan_rx_add_vid(struct net_device *netdev,
>   * @proto: unused protocol data
>   * @vid: VLAN tag
>   **/
> +#ifdef NETIF_F_HW_VLAN_CTAG_RX

This needs to be removed, please fix it.

>  static int iavf_vlan_rx_kill_vid(struct net_device *netdev,
> -				 __always_unused __be16 proto, u16 vid)
> +				__always_unused __be16 proto, u16 vid)
>  {
>  	struct iavf_adapter *adapter = netdev_priv(netdev);
> +	u16 local_vlan_proto = be16_to_cpu(proto);
> 
> -	if (!VLAN_ALLOWED(adapter))
> +	if (!VLAN_FILTERING_ALLOWED(adapter))
>  		return -EIO;
> 
> -	iavf_del_vlan(adapter, vid);
> -	clear_bit(vid, adapter->vsi.active_vlans);
> +	iavf_del_vlan(adapter, IAVF_VLAN(vid, local_vlan_proto));
> +	if (local_vlan_proto == ETH_P_8021Q)
> +		clear_bit(vid, adapter->vsi.active_cvlans);
> +	else
> +		clear_bit(vid, adapter->vsi.active_svlans);
> 
>  	return 0;
>  }
> +#else
> +static void iavf_vlan_rx_kill_vid(struct net_device *netdev, u16 vid)
> +{
> +	struct iavf_adapter *adapter = netdev_priv(netdev);
> +
> +	if (!VLAN_FILTERING_ALLOWED(adapter))
> +		return;
> +
> +	iavf_del_vlan(adapter, IAVF_VLAN(vid, ETH_P_8021Q));
> +	clear_bit(vid, adapter->vsi.active_cvlans);
> +}
> +#endif
> 
>  /**
>   * iavf_find_filter - Search filter list for specific mac filter
> @@ -1134,6 +1246,85 @@ static void iavf_free_queues(struct iavf_adapter *adapter)
>  	adapter->rx_rings = NULL;
>  }
> 
> +/**
> + * iavf_set_queue_vlan_tag_loc - set location for VLAN tag offload
> + * @adapter: board private structure
> + *
> + * Based on negotiated capabilities, the VLAN tag needs to be inserted and/or
> + * stripped in certain descriptor fields. Instead of checking the offload
> + * capability bits in the hot path, cache the location the ring specific
> + * flags.
> + */
> +void iavf_set_queue_vlan_tag_loc(struct iavf_adapter *adapter)
> +{
> +	int i;
> +
> +	for (i = 0; i < adapter->num_active_queues; i++) {
> +		struct iavf_ring *tx_ring = &adapter->tx_rings[i];
> +		struct iavf_ring *rx_ring = &adapter->rx_rings[i];
> +		/* prevent multiple L2TAG bits being set after VFR */
> +		tx_ring->flags &=
> +			~(IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1 |
> +			  IAVF_TXR_FLAGS_VLAN_TAG_LOC_L2TAG2);
> +		rx_ring->flags &=
> +			~(IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1 |
> +			  IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2);
> +
> +		if (VLAN_ALLOWED(adapter)) {
> +			tx_ring->flags |= IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1;
> +			rx_ring->flags |= IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1;
> +		} else if (VLAN_V2_ALLOWED(adapter)) {
> +			struct virtchnl_vlan_supported_caps *stripping_support;
> +			struct virtchnl_vlan_supported_caps *insertion_support;
> +
> +			stripping_support =
> +				&adapter->vlan_v2_caps->offloads.stripping_support;
> +			insertion_support =
> +				&adapter->vlan_v2_caps->offloads.insertion_support;
> +
> +			if (stripping_support->outer) {
> +				if (stripping_support->outer &
> +				    VIRTCHNL_VLAN_TAG_LOCATION_L2TAG1)
> +					rx_ring->flags |=
> +						IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1;
> +				else if (stripping_support->outer &
> +					 VIRTCHNL_VLAN_TAG_LOCATION_L2TAG2_2)
> +						rx_ring->flags |=
> +							IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2;
> +			} else if (stripping_support->inner) {
> +				if (stripping_support->inner &
> +				    VIRTCHNL_VLAN_TAG_LOCATION_L2TAG1)
> +					rx_ring->flags |=
> +						IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1;
> +				else if (stripping_support->inner &
> +					 VIRTCHNL_VLAN_TAG_LOCATION_L2TAG2_2)
> +						rx_ring->flags |=
> +							IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2;
> +			}
> +
> +			if (insertion_support->outer) {
> +				if (insertion_support->outer &
> +				    VIRTCHNL_VLAN_TAG_LOCATION_L2TAG1)
> +					tx_ring->flags |=
> +						IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1;
> +				else if (insertion_support->outer &
> +					 VIRTCHNL_VLAN_TAG_LOCATION_L2TAG2)
> +						tx_ring->flags |=
> +							IAVF_TXR_FLAGS_VLAN_TAG_LOC_L2TAG2;
> +			} else if (insertion_support->inner) {
> +			       if (insertion_support->inner &
> +				   VIRTCHNL_VLAN_TAG_LOCATION_L2TAG1)
> +					tx_ring->flags |=
> +						IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1;
> +				else if (insertion_support->inner &
> +					 VIRTCHNL_VLAN_TAG_LOCATION_L2TAG2)
> +						tx_ring->flags |=
> +							IAVF_TXR_FLAGS_VLAN_TAG_LOC_L2TAG2;
> +			}
> +		}
> +	}
> +}
> +
>  /**
>   * iavf_alloc_queues - Allocate memory for all rings
>   * @adapter: board private structure to initialize
> @@ -1195,6 +1386,8 @@ static int iavf_alloc_queues(struct iavf_adapter *adapter)
> 
>  	adapter->num_active_queues = num_active_queues;
> 
> +	iavf_set_queue_vlan_tag_loc(adapter);
> +
>  	return 0;
> 
>  err_out:
> @@ -1554,6 +1747,211 @@ err:
>  	return err;
>  }
> 
> +/**
> + * iavf_set_vlan_offload_features - set VLAN offload configuration
> + * @adapter: board private structure
> + * @prev_features: previous features used for comparison
> + * @features: updated features used for configuration
> + *
> + * Set the aq_required bit(s) based on the requested features passed in to
> + * configure VLAN stripping and/or VLAN insertion if supported. Also, schedule
> + * the watchdog if any changes are requested to expedite the request via
> + * virtchnl.
> + */
> +void iavf_set_vlan_offload_features(struct iavf_adapter *adapter,
> +				    netdev_features_t prev_features,
> +				    netdev_features_t features)
> +{
> +	bool enable_stripping = true, enable_insertion = true;
> +	u16 vlan_ethertype = 0;
> +	u64 aq_required = 0;
> +
> +#ifdef NETIF_F_HW_VLAN_CTAG_RX

This needs to be removed, please fix it.

> +	/* keep cases separate because one ethertype for offloads can be
> +	 * disabled at the same time as another is disabled, so check for an
> +	 * enabled ethertype first, then check for disabled. Default to
> +	 * ETH_P_8021Q so an ethertype is specified if disabling insertion and
> +	 * stripping.
> +	 */
> +	if (features & (NETIF_F_HW_VLAN_STAG_RX | NETIF_F_HW_VLAN_STAG_TX))
> +		vlan_ethertype = ETH_P_8021AD;
> +	else if (features & (NETIF_F_HW_VLAN_CTAG_RX | NETIF_F_HW_VLAN_CTAG_TX))
> +		vlan_ethertype = ETH_P_8021Q;
> +	else if (prev_features & (NETIF_F_HW_VLAN_STAG_RX | NETIF_F_HW_VLAN_STAG_TX))
> +		vlan_ethertype = ETH_P_8021AD;
> +	else if (prev_features & (NETIF_F_HW_VLAN_CTAG_RX | NETIF_F_HW_VLAN_CTAG_TX))
> +		vlan_ethertype = ETH_P_8021Q;
> +	else
> +		vlan_ethertype = ETH_P_8021Q;
> +
> +	if (!(features & (NETIF_F_HW_VLAN_STAG_RX | NETIF_F_HW_VLAN_CTAG_RX)))
> +		enable_stripping = false;
> +	if (!(features & (NETIF_F_HW_VLAN_STAG_TX | NETIF_F_HW_VLAN_CTAG_TX)))
> +		enable_insertion = false;
> +#else
> +	if (features & (NETIF_F_HW_VLAN_RX | NETIF_F_HW_VLAN_TX))
> +		vlan_ethertype = ETH_P_8021Q;
> +	if (prev_features & (NETIF_F_HW_VLAN_RX | NETIF_F_HW_VLAN_TX))
> +		vlan_ethertype = ETH_P_8021Q;
> +	else
> +		vlan_ethertype = ETH_P_8021Q;
> +
> +	if (!(features & NETIF_F_HW_VLAN_RX))
> +		enable_stripping = false;
> +	if (!(features & NETIF_F_HW_VLAN_TX))
> +		enable_insertion = false;
> +#endif
> +	if (VLAN_ALLOWED(adapter)) {
> +		/* VIRTCHNL_VF_OFFLOAD_VLAN only has support for toggling VLAN
> +		 * stripping via virtchnl. VLAN insertion can be toggled on the
> +		 * netdev, but it doesn't require a virtchnl message
> +		 */
> +		if (enable_stripping)
> +			aq_required |= IAVF_FLAG_AQ_ENABLE_VLAN_STRIPPING;
> +		else
> +			aq_required |= IAVF_FLAG_AQ_DISABLE_VLAN_STRIPPING;
> +
> +	} else if (VLAN_V2_ALLOWED(adapter)) {
> +		switch (vlan_ethertype) {
> +		case ETH_P_8021Q:
> +		if (enable_stripping)
> +				aq_required |=
> +					IAVF_FLAG_AQ_ENABLE_CTAG_VLAN_STRIPPING;
> +			else
> +				aq_required |=
> +					IAVF_FLAG_AQ_DISABLE_CTAG_VLAN_STRIPPING;
> +
> +			if (enable_insertion)
> +				aq_required |=
> +					IAVF_FLAG_AQ_ENABLE_CTAG_VLAN_INSERTION;
> +			else
> +				aq_required |=
> +					IAVF_FLAG_AQ_DISABLE_CTAG_VLAN_INSERTION;
> +			break;
> +		case ETH_P_8021AD:
> +			if (enable_stripping)
> +				aq_required |=
> +					IAVF_FLAG_AQ_ENABLE_STAG_VLAN_STRIPPING;
> +			else
> +				aq_required |=
> +					IAVF_FLAG_AQ_DISABLE_STAG_VLAN_STRIPPING;
> +
> +			if (enable_insertion)
> +				aq_required |=
> +					IAVF_FLAG_AQ_ENABLE_STAG_VLAN_INSERTION;
> +			else
> +				aq_required |=
> +					IAVF_FLAG_AQ_DISABLE_STAG_VLAN_INSERTION;
> +			break;
> +		}
> +	}
> +
> +	if (aq_required) {
> +		adapter->aq_required |= aq_required;
> +		mod_delayed_work(iavf_wq, &adapter->watchdog_task, 0);
> +	}
> +}
> +
> +/**
> + * iavf_init_config_adapter - last part of driver startup
> + * @adapter: board private structure
> + *
> + * After all the supported capabilities are negotiated, then the
> + * __IAVF_INIT_CONFIG_ADAPTER state will finish driver initialization.
> + */
> +static void iavf_init_config_adapter(struct iavf_adapter *adapter)
> +{
> +	struct net_device *netdev = adapter->netdev;
> +	struct pci_dev *pdev = adapter->pdev;
> +	int ret;
> +
> +	WARN_ON(adapter->state != __IAVF_INIT_CONFIG_ADAPTER);
> +
> +	if (iavf_process_config(adapter))
> +		goto err;
> +	adapter->current_op = VIRTCHNL_OP_UNKNOWN;
> +
> +	adapter->flags |= IAVF_FLAG_RX_CSUM_ENABLED;
> +
> +	netdev->netdev_ops = &iavf_netdev_ops;
> +
> +	iavf_set_ethtool_ops(netdev);
> +	netdev->watchdog_timeo = 5 * HZ;
> +
> +	netdev->min_mtu = ETH_MIN_MTU;
> +	netdev->max_mtu = IAVF_MAX_RXBUFFER - IAVF_PACKET_HDR_PAD;
> +
> +	if (!is_valid_ether_addr(adapter->hw.mac.addr)) {
> +		dev_info(&pdev->dev, "Invalid MAC address %pM, using random\n",
> +			 adapter->hw.mac.addr);
> +		eth_hw_addr_random(netdev);
> +		ether_addr_copy(adapter->hw.mac.addr, netdev->dev_addr);
> +	} else {
> +		ether_addr_copy(netdev->dev_addr, adapter->hw.mac.addr);
> +		ether_addr_copy(netdev->perm_addr, adapter->hw.mac.addr);
> +	}
> +
> +	adapter->flags |= IAVF_FLAG_INITIAL_MAC_SET;
> +
> +	adapter->tx_desc_count = IAVF_DEFAULT_TXD;
> +	adapter->rx_desc_count = IAVF_DEFAULT_RXD;
> +	ret = iavf_init_interrupt_scheme(adapter);
> +	if (ret)
> +		goto err_sw_init;
> +        iavf_map_rings_to_vectors(adapter);
> +	if (adapter->vf_res->vf_cap_flags &
> +		VIRTCHNL_VF_OFFLOAD_WB_ON_ITR)
> +		adapter->flags |= IAVF_FLAG_WB_ON_ITR_CAPABLE;
> +
> +	ret = iavf_request_misc_irq(adapter);
> +	if (ret)
> +		goto err_sw_init;
> +
> +	netif_carrier_off(netdev);
> +	adapter->link_up = false;
> +
> +	if (!adapter->netdev_registered) {
> +		ret = register_netdev(netdev);
> +		if (ret)
> +			goto err_register;
> +	}
> +
> +	adapter->netdev_registered = true;
> +
> +	netif_tx_stop_all_queues(netdev);
> +	dev_info(&pdev->dev, "MAC address: %pM\n", adapter->hw.mac.addr);
> +	if (netdev->features & NETIF_F_GRO)
> +		dev_info(&pdev->dev, "GRO is enabled\n");
> +
> +	iavf_change_state(adapter, __IAVF_DOWN);
> +	set_bit(__IAVF_VSI_DOWN, adapter->vsi.state);
> +
> +	iavf_misc_irq_enable(adapter);
> +	wake_up(&adapter->down_waitqueue);
> +
> +	adapter->rss_key = (u8 *)kzalloc(adapter->rss_key_size, GFP_KERNEL);
> +	adapter->rss_lut = (u8 *)kzalloc(adapter->rss_lut_size, GFP_KERNEL);
> +	if (!adapter->rss_key || !adapter->rss_lut)
> +		goto err_mem;
> +	if (RSS_AQ(adapter))
> +		adapter->aq_required |= IAVF_FLAG_AQ_CONFIGURE_RSS;
> +        else
> +		iavf_init_rss(adapter);
> +
> +	/* request initial VLAN offload settings */
> +	iavf_set_vlan_offload_features(adapter, 0, netdev->features);

This should be:

if (VLAN_V2_ALLOWED(adapter))
        /* request initial VLAN offload settings */
        iavf_set_vlan_offload_features(adapter, 0, netdev->features);

This is beacause for VIRTCHNL_VF_OFFLOAD_VLAN the iavf assumed the
VLAN offloads were configured by the PF. However, this was changed for V2, but
we don't want to change the functionality for the old offload.

> +
> +	return;
> +err_mem:
> +	iavf_free_rss(adapter);
> +err_register:
> +	iavf_free_misc_irq(adapter);
> +err_sw_init:
> +	iavf_reset_interrupt_capability(adapter);
> +err:
> +	iavf_change_state(adapter, __IAVF_INIT_FAILED);
> +}
> +
>  /**
>   * iavf_process_aq_command - process aq_required flags
>   * and sends aq command
> @@ -1700,6 +2098,39 @@ static int iavf_process_aq_command(struct iavf_adapter *adapter)
>  		iavf_del_adv_rss_cfg(adapter);
>  		return 0;
>  	}
> +	if (adapter->aq_required & IAVF_FLAG_AQ_DISABLE_CTAG_VLAN_STRIPPING) {
> +		iavf_disable_vlan_stripping_v2(adapter, ETH_P_8021Q);
> +		return IAVF_SUCCESS;
> +	}
> +	if (adapter->aq_required & IAVF_FLAG_AQ_DISABLE_STAG_VLAN_STRIPPING) {
> +		iavf_disable_vlan_stripping_v2(adapter, ETH_P_8021AD);
> +		return IAVF_SUCCESS;
> +	}
> +	if (adapter->aq_required & IAVF_FLAG_AQ_ENABLE_CTAG_VLAN_STRIPPING) {
> +		iavf_enable_vlan_stripping_v2(adapter, ETH_P_8021Q);
> +		return IAVF_SUCCESS;
> +	}
> +	if (adapter->aq_required & IAVF_FLAG_AQ_ENABLE_STAG_VLAN_STRIPPING) {
> +		iavf_enable_vlan_stripping_v2(adapter, ETH_P_8021AD);
> +		return IAVF_SUCCESS;
> +	}
> +	if (adapter->aq_required & IAVF_FLAG_AQ_DISABLE_CTAG_VLAN_INSERTION) {
> +		iavf_disable_vlan_insertion_v2(adapter, ETH_P_8021Q);
> +		return IAVF_SUCCESS;
> +	}
> +	if (adapter->aq_required & IAVF_FLAG_AQ_DISABLE_STAG_VLAN_INSERTION) {
> +		iavf_disable_vlan_insertion_v2(adapter, ETH_P_8021AD);
> +		return IAVF_SUCCESS;
> +	},
> +	if (adapter->aq_required & IAVF_FLAG_AQ_ENABLE_CTAG_VLAN_INSERTION) {
> +		iavf_enable_vlan_insertion_v2(adapter, ETH_P_8021Q);
> +		return IAVF_SUCCESS;
> +	}
> +	if (adapter->aq_required & IAVF_FLAG_AQ_ENABLE_STAG_VLAN_INSERTION) {
> +		iavf_enable_vlan_insertion_v2(adapter, ETH_P_8021AD);
> +		return IAVF_SUCCESS;
> +	}
> +

These new aq_required checks need to go before the IAVF_FLAG_AQ_REQUEST_STATS,
otherwise, the VLAN add/del offload enable/disable are blocked out by periodic stats requests.


>  	return -EAGAIN;
>  }
> 
> @@ -1803,6 +2234,59 @@ err:
>  	return err;
>  }
> 
> +/**
> + * iavf_parse_vf_resource_msg - parse response from VIRTCHNL_OP_GET_VF_RESOURCES
> + * @adapter: board private structure
> + */
> +int iavf_parse_vf_resource_msg(struct iavf_adapter *adapter)
> +{
> +	int i, num_req_queues = adapter->num_req_queues;
> +	struct iavf_vsi *vsi = &adapter->vsi;
> +
> +	for (i = 0; i < adapter->vf_res->num_vsis; i++) {
> +		if (adapter->vf_res->vsi_res[i].vsi_type == VIRTCHNL_VSI_SRIOV)
> +			adapter->vsi_res = &adapter->vf_res->vsi_res[i];
> +	}
> +	if (!adapter->vsi_res) {
> +		dev_err(&adapter->pdev->dev, "No LAN VSI found\n");
> +		return -ENODEV;
> +	}
> +
> +	if (num_req_queues &&
> +	    num_req_queues > adapter->vsi_res->num_queue_pairs) {
> +		/* Problem.  The PF gave us fewer queues than what we had
> +		 * negotiated in our request.  Need a reset to see if we can't
> +		 * get back to a working state.
> +		 */
> +		dev_err(&adapter->pdev->dev,
> +			"Requested %d queues, but PF only gave us %d.\n",
> +			num_req_queues,
> +			adapter->vsi_res->num_queue_pairs);
> +		adapter->flags |= IAVF_FLAG_REINIT_MSIX_NEEDED;
> +		adapter->num_req_queues = adapter->vsi_res->num_queue_pairs;
> +		iavf_schedule_reset(adapter);
> +
> +		return -EAGAIN;
> +	}
> +	adapter->num_req_queues = 0;
> +	adapter->vsi.id = adapter->vsi_res->vsi_id;
> +
> +	adapter->vsi.back = adapter;
> +	adapter->vsi.base_vector = 1;
> +	adapter->vsi.work_limit = IAVF_DEFAULT_IRQ_WORK;
> +	vsi->netdev = adapter->netdev;
> +	vsi->qs_handle = adapter->vsi_res->qset_handle;
> +	if (adapter->vf_res->vf_cap_flags & VIRTCHNL_VF_OFFLOAD_RSS_PF) {
> +		adapter->rss_key_size = adapter->vf_res->rss_key_size;
> +		adapter->rss_lut_size = adapter->vf_res->rss_lut_size;
> +	} else {
> +		adapter->rss_key_size = IAVF_HKEY_ARRAY_SIZE;
> +		adapter->rss_lut_size = IAVF_HLUT_ARRAY_SIZE;
> +	}
> +
> +	return 0;
> +}
> +
>  /**
>   * iavf_init_get_resources - third step of driver startup
>   * @adapter: board private structure
> @@ -1814,10 +2298,10 @@ err:
>   **/
>  static int iavf_init_get_resources(struct iavf_adapter *adapter)
>  {
> -	struct net_device *netdev = adapter->netdev;
>  	struct pci_dev *pdev = adapter->pdev;
>  	struct iavf_hw *hw = &adapter->hw;
>  	int err;
> +	int ret;
> 
>  	WARN_ON(adapter->state != __IAVF_INIT_GET_RESOURCES);
>  	/* aq msg sent, awaiting reply */
> @@ -1832,7 +2316,7 @@ static int iavf_init_get_resources(struct iavf_adapter *adapter)
>  	err = iavf_get_vf_config(adapter);
>  	if (err == IAVF_ERR_ADMIN_QUEUE_NO_WORK) {
>  		err = iavf_send_vf_config_msg(adapter);
> -		goto err;
> +		goto err_alloc;
>  	} else if (err == IAVF_ERR_PARAM) {
>  		/* We only get ERR_PARAM if the device is in a very bad
>  		 * state or if we've been disabled for previous bad
> @@ -1847,103 +2331,18 @@ static int iavf_init_get_resources(struct iavf_adapter *adapter)
>  		goto err_alloc;
>  	}
> 
> -	err = iavf_process_config(adapter);
> -	if (err)
> +	ret = iavf_parse_vf_resource_msg(adapter);
> +	if (ret) {
> +		dev_err(&pdev->dev, "Failed to parse VF resource message from PF (%d)\n",
> +			ret);
>  		goto err_alloc;
> -	adapter->current_op = VIRTCHNL_OP_UNKNOWN;
> -
> -	adapter->flags |= IAVF_FLAG_RX_CSUM_ENABLED;
> -
> -	netdev->netdev_ops = &iavf_netdev_ops;
> -	iavf_set_ethtool_ops(netdev);
> -	netdev->watchdog_timeo = 5 * HZ;
> -
> -	/* MTU range: 68 - 9710 */
> -	netdev->min_mtu = ETH_MIN_MTU;
> -	netdev->max_mtu = IAVF_MAX_RXBUFFER - IAVF_PACKET_HDR_PAD;
> -
> -	if (!is_valid_ether_addr(adapter->hw.mac.addr)) {
> -		dev_info(&pdev->dev, "Invalid MAC address %pM, using random\n",
> -			 adapter->hw.mac.addr);
> -		eth_hw_addr_random(netdev);
> -		ether_addr_copy(adapter->hw.mac.addr, netdev->dev_addr);
> -	} else {
> -		ether_addr_copy(netdev->dev_addr, adapter->hw.mac.addr);
> -		ether_addr_copy(netdev->perm_addr, adapter->hw.mac.addr);
> -	}
> -
> -	adapter->tx_desc_count = IAVF_DEFAULT_TXD;
> -	adapter->rx_desc_count = IAVF_DEFAULT_RXD;
> -	err = iavf_init_interrupt_scheme(adapter);
> -	if (err)
> -		goto err_sw_init;
> -	iavf_map_rings_to_vectors(adapter);
> -	if (adapter->vf_res->vf_cap_flags &
> -		VIRTCHNL_VF_OFFLOAD_WB_ON_ITR)
> -		adapter->flags |= IAVF_FLAG_WB_ON_ITR_CAPABLE;
> -
> -	err = iavf_request_misc_irq(adapter);
> -	if (err)
> -		goto err_sw_init;
> -
> -	netif_carrier_off(netdev);
> -	adapter->link_up = false;
> -
> -	/* set the semaphore to prevent any callbacks after device registration
> -	 * up to time when state of driver will be set to __IAVF_DOWN
> -	 */
> -	rtnl_lock();
> -	if (!adapter->netdev_registered) {
> -		err = register_netdevice(netdev);
> -		if (err) {
> -			rtnl_unlock();
> -			goto err_register;
> -		}
> -	}
> -
> -	adapter->netdev_registered = true;
> -
> -	netif_tx_stop_all_queues(netdev);
> -	if (CLIENT_ALLOWED(adapter)) {
> -		err = iavf_lan_add_device(adapter);
> -		if (err)
> -			dev_info(&pdev->dev, "Failed to add VF to client API service list: %d\n",
> -				 err);
>  	}
> -	dev_info(&pdev->dev, "MAC address: %pM\n", adapter->hw.mac.addr);
> -	if (netdev->features & NETIF_F_GRO)
> -		dev_info(&pdev->dev, "GRO is enabled\n");
> 
> -	adapter->state = __IAVF_DOWN;
> -	set_bit(__IAVF_VSI_DOWN, adapter->vsi.state);
> -	rtnl_unlock();
> -
> -	iavf_misc_irq_enable(adapter);
> -	wake_up(&adapter->down_waitqueue);
> -
> -	adapter->rss_key = kzalloc(adapter->rss_key_size, GFP_KERNEL);
> -	adapter->rss_lut = kzalloc(adapter->rss_lut_size, GFP_KERNEL);
> -	if (!adapter->rss_key || !adapter->rss_lut) {
> -		err = -ENOMEM;
> -		goto err_mem;
> -	}
> -	if (RSS_AQ(adapter))
> -		adapter->aq_required |= IAVF_FLAG_AQ_CONFIGURE_RSS;
> -	else
> -		iavf_init_rss(adapter);
> -
> -	return err;
> -err_mem:
> -	iavf_free_rss(adapter);
> -err_register:
> -	iavf_free_misc_irq(adapter);
> -err_sw_init:
> -	iavf_reset_interrupt_capability(adapter);
>  err_alloc:
>  	kfree(adapter->vf_res);
>  	adapter->vf_res = NULL;
>  err:
> -	return err;
> +	iavf_change_state(adapter, __IAVF_INIT_FAILED);
>  }
> 
>  /**
> @@ -1998,6 +2397,12 @@ static void iavf_watchdog_task(struct work_struct *work)
>  	case __IAVF_DOWN:
>  	case __IAVF_DOWN_PENDING:
>  	case __IAVF_TESTING:
> +	case __IAVF_INIT_CONFIG_ADAPTER:
> +		iavf_init_config_adapter(adapter);
> +		clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
> +		queue_delayed_work(iavf_wq, &adapter->watchdog_task,
> +				   msecs_to_jiffies(1));
> +		return;
>  	case __IAVF_RUNNING:
>  		if (adapter->current_op) {
>  			if (!iavf_asq_done(hw)) {
> @@ -2006,10 +2411,12 @@ static void iavf_watchdog_task(struct work_struct *work)
>  				iavf_send_api_ver(adapter);
>  			}
>  		} else {
> +			int ret = iavf_process_aq_command(adapter);
> +
>  			/* An error will be returned if no commands were
>  			 * processed; use this opportunity to update stats
>  			 */
> -			if (iavf_process_aq_command(adapter) &&
> +			if (ret && ret != -EOPNOTSUPP &&
>  			    adapter->state == __IAVF_RUNNING)
>  				iavf_request_stats(adapter);
>  		}
> @@ -2770,6 +3177,27 @@ exit:
>  	return ret;
>  }
> 
> +/**
> + * iavf_is_vlan_tc_filter_allowed - allowed to add tc-filter using VLAN
> + * @adapter: board private structure
> + * @vlan: VLAN to verify
> + *
> + * Using specified "vlan" ID, there must be active VLAN filter in VF's
> + * MAC-VLAN filter list.
> + */
> +static bool
> +iavf_is_vlan_tc_filter_allowed(struct iavf_adapter *adapter, u16 vlan)
> +{
> +	struct iavf_vlan_filter *f;
> +	bool allowed;
> +
> +	spin_lock_bh(&adapter->mac_vlan_list_lock);
> +	f = iavf_find_vlan(adapter, IAVF_VLAN(vlan, ETH_P_8021Q));
> +	allowed = (f && !f->add && !f->remove);
> +	spin_unlock_bh(&adapter->mac_vlan_list_lock);
> +	return allowed;
> +}
> +

It doesn't seem like this change is related to VIRTCHNL_VF_OFFLOAD_VLAN_V2.
Why is it part of this patch?

>  /**
>   * iavf_parse_cls_flower - Parse tc flower filters provided by kernel
>   * @adapter: board private structure
> @@ -2782,13 +3210,13 @@ static int iavf_parse_cls_flower(struct iavf_adapter *adapter,
>  {
>  	struct flow_rule *rule = flow_cls_offload_flow_rule(f);
>  	struct flow_dissector *dissector = rule->match.dissector;
> +	struct virtchnl_filter *vf = &filter->f;
>  	u16 n_proto_mask = 0;
>  	u16 n_proto_key = 0;
>  	u8 field_flags = 0;
>  	u16 addr_type = 0;
>  	u16 n_proto = 0;
>  	int i = 0;
> -	struct virtchnl_filter *vf = &filter->f;
> 
>  	if (dissector->used_keys &
>  	    ~(BIT(FLOW_DISSECTOR_KEY_CONTROL) |
> @@ -2889,6 +3317,8 @@ static int iavf_parse_cls_flower(struct iavf_adapter *adapter,
> 
>  		flow_rule_match_vlan(rule, &match);
>  		if (match.mask->vlan_id) {
> +			u16 vlan = match.key->vlan_id & VLAN_VID_MASK;
> +
>  			if (match.mask->vlan_id == VLAN_VID_MASK) {
>  				field_flags |= IAVF_CLOUD_FIELD_IVLAN;
>  			} else {
> @@ -2896,6 +3326,12 @@ static int iavf_parse_cls_flower(struct iavf_adapter *adapter,
>  					match.mask->vlan_id);
>  				return -EINVAL;
>  			}
> +			if (!iavf_is_vlan_tc_filter_allowed(adapter, vlan)) {
> +				dev_err(&adapter->pdev->dev,
> +					"VLAN %u doesn't belong to this VF\n",
> +					vlan);
> +				return -EINVAL;
> +			}
>  		}
>  		vf->mask.tcp_spec.vlan_id |= cpu_to_be16(0xffff);
>  		vf->data.tcp_spec.vlan_id = cpu_to_be16(match.key->vlan_id);
> @@ -3373,6 +3809,11 @@ static int iavf_change_mtu(struct net_device *netdev, int new_mtu)
>  	return 0;
>  }

Why are all these changes part of this patch? I don't think they belong as they seem to
be unrelated other than they are dealing with VLANs.

> 
> +#define NETIF_VLAN_OFFLOAD_FEATURES	(NETIF_F_HW_VLAN_CTAG_RX | \
> +					 NETIF_F_HW_VLAN_CTAG_TX | \
> +					 NETIF_F_HW_VLAN_STAG_RX | \
> +					 NETIF_F_HW_VLAN_STAG_TX)
> +
>  /**
>   * iavf_set_features - set the netdev feature flags
>   * @netdev: ptr to the netdev being adjusted
> @@ -3384,20 +3825,11 @@ static int iavf_set_features(struct net_device *netdev,
>  {
>  	struct iavf_adapter *adapter = netdev_priv(netdev);
> 
> -	/* Don't allow changing VLAN_RX flag when adapter is not capable
> -	 * of VLAN offload
> -	 */
> -	if (!VLAN_ALLOWED(adapter)) {
> -		if ((netdev->features ^ features) & NETIF_F_HW_VLAN_CTAG_RX)
> -			return -EINVAL;
> -	} else if ((netdev->features ^ features) & NETIF_F_HW_VLAN_CTAG_RX) {
> -		if (features & NETIF_F_HW_VLAN_CTAG_RX)
> -			adapter->aq_required |=
> -				IAVF_FLAG_AQ_ENABLE_VLAN_STRIPPING;
> -		else
> -			adapter->aq_required |=
> -				IAVF_FLAG_AQ_DISABLE_VLAN_STRIPPING;
> -	}
> +	/* trigger update on any VLAN feature change */
> +	if ((netdev->features & NETIF_VLAN_OFFLOAD_FEATURES) ^
> +	    (features & NETIF_VLAN_OFFLOAD_FEATURES))
> +		iavf_set_vlan_offload_features(adapter, netdev->features,
> +					       features);
> 
>  	return 0;
>  }
> @@ -3460,6 +3892,55 @@ out_err:
>  	return features & ~(NETIF_F_CSUM_MASK | NETIF_F_GSO_MASK);
>  }
> 
> +/**
> + * iavf_get_netdev_vlan_hw_features - get NETDEV VLAN features
> + * @adapter: board private structure
> + *
> + * Depending on whether VIRTHCNL_VF_OFFLOAD_VLAN or VIRTCHNL_VF_OFFLOAD_VLAN_V2
> + * were negotiated determine the VLAN features that can be toggled on and off.
> + **/
> +static netdev_features_t
> +iavf_get_netdev_vlan_hw_features(struct iavf_adapter *adapter)
> +{
> +	netdev_features_t hw_features = 0;
> +
> +	if (!adapter->vf_res || !adapter->vf_res->vf_cap_flags)
> +		return hw_features;
> +
> +	/* Enable VLAN features if supported */
> +	if (VLAN_ALLOWED(adapter)) {
> +		hw_features |= (IAVF_NETIF_F_HW_VLAN_CTAG_TX |
> +				IAVF_NETIF_F_HW_VLAN_CTAG_RX);
> +	} else if (VLAN_V2_ALLOWED(adapter)) {
> +		struct virtchnl_vlan_caps *vlan_v2_caps =
> +			adapter->vlan_v2_caps;
> +		struct virtchnl_vlan_supported_caps *stripping_support =
> +			&vlan_v2_caps->offloads.stripping_support;
> +		struct virtchnl_vlan_supported_caps *insertion_support =
> +			&vlan_v2_caps->offloads.insertion_support;
> +
> +		if (stripping_support->outer != VIRTCHNL_VLAN_UNSUPPORTED &&
> +		    stripping_support->outer & VIRTCHNL_VLAN_TOGGLE) {
> +			if (stripping_support->outer & VIRTCHNL_VLAN_ETHERTYPE_8100)
> +				hw_features |= IAVF_NETIF_F_HW_VLAN_CTAG_RX;
> +		} else if (stripping_support->inner != VIRTCHNL_VLAN_UNSUPPORTED &&
> +			   stripping_support->inner & VIRTCHNL_VLAN_TOGGLE) {
> +			if (stripping_support->inner & VIRTCHNL_VLAN_ETHERTYPE_8100)
> +				hw_features |= IAVF_NETIF_F_HW_VLAN_CTAG_RX;
> +		}
> +		if (insertion_support->outer != VIRTCHNL_VLAN_UNSUPPORTED &&
> +		    insertion_support->outer & VIRTCHNL_VLAN_TOGGLE) {
> +			if (insertion_support->outer & VIRTCHNL_VLAN_ETHERTYPE_8100)
> +				hw_features |= IAVF_NETIF_F_HW_VLAN_CTAG_TX;
> +		} else if (insertion_support->inner &&
> +			   insertion_support->inner & VIRTCHNL_VLAN_TOGGLE) {
> +			if (insertion_support->inner & VIRTCHNL_VLAN_ETHERTYPE_8100)
> +				hw_features |= IAVF_NETIF_F_HW_VLAN_CTAG_TX;
> +		}
> +	}

All the checks for VIRTCHNL_VLAN_ETHERTYPE_88A8 were left out. Please fix that.

> +
> +	return hw_features;
> +}
>  /**
>   * iavf_fix_features - fix up the netdev feature bits

Where are the changes for iavf_fix_netdev_vlan_features()? These are
missing from this patch.

>   * @netdev: our net device
> @@ -3530,39 +4011,11 @@ static int iavf_check_reset_complete(struct iavf_hw *hw)
>  int iavf_process_config(struct iavf_adapter *adapter)
>  {
>  	struct virtchnl_vf_resource *vfres = adapter->vf_res;
> -	int i, num_req_queues = adapter->num_req_queues;
>  	struct net_device *netdev = adapter->netdev;
> -	struct iavf_vsi *vsi = &adapter->vsi;
> +	netdev_features_t hw_vlan_features;
>  	netdev_features_t hw_enc_features;
>  	netdev_features_t hw_features;
> 
> -	/* got VF config message back from PF, now we can parse it */
> -	for (i = 0; i < vfres->num_vsis; i++) {
> -		if (vfres->vsi_res[i].vsi_type == VIRTCHNL_VSI_SRIOV)
> -			adapter->vsi_res = &vfres->vsi_res[i];
> -	}
> -	if (!adapter->vsi_res) {
> -		dev_err(&adapter->pdev->dev, "No LAN VSI found\n");
> -		return -ENODEV;
> -	}
> -
> -	if (num_req_queues &&
> -	    num_req_queues > adapter->vsi_res->num_queue_pairs) {
> -		/* Problem.  The PF gave us fewer queues than what we had
> -		 * negotiated in our request.  Need a reset to see if we can't
> -		 * get back to a working state.
> -		 */
> -		dev_err(&adapter->pdev->dev,
> -			"Requested %d queues, but PF only gave us %d.\n",
> -			num_req_queues,
> -			adapter->vsi_res->num_queue_pairs);
> -		adapter->flags |= IAVF_FLAG_REINIT_ITR_NEEDED;
> -		adapter->num_req_queues = adapter->vsi_res->num_queue_pairs;
> -		iavf_schedule_reset(adapter);
> -		return -ENODEV;
> -	}
> -	adapter->num_req_queues = 0;
> -
>  	hw_enc_features = NETIF_F_SG			|
>  			  NETIF_F_IP_CSUM		|
>  			  NETIF_F_IPV6_CSUM		|
> @@ -3606,6 +4059,9 @@ int iavf_process_config(struct iavf_adapter *adapter)
>  	 */
>  	hw_features = hw_enc_features;
> 
> +	/* get HW VLAN features that can be toggled */
> +	hw_vlan_features = iavf_get_netdev_vlan_hw_features(adapter);
> +
>  	/* Enable VLAN features if supported */
>  	if (vfres->vf_cap_flags & VIRTCHNL_VF_OFFLOAD_VLAN)
>  		hw_features |= (NETIF_F_HW_VLAN_CTAG_TX |
> @@ -3643,21 +4099,6 @@ int iavf_process_config(struct iavf_adapter *adapter)
>  			netdev->features &= ~NETIF_F_GSO;
>  	}
> 
> -	adapter->vsi.id = adapter->vsi_res->vsi_id;
> -
> -	adapter->vsi.back = adapter;
> -	adapter->vsi.base_vector = 1;
> -	adapter->vsi.work_limit = IAVF_DEFAULT_IRQ_WORK;
> -	vsi->netdev = adapter->netdev;
> -	vsi->qs_handle = adapter->vsi_res->qset_handle;
> -	if (vfres->vf_cap_flags & VIRTCHNL_VF_OFFLOAD_RSS_PF) {
> -		adapter->rss_key_size = vfres->rss_key_size;
> -		adapter->rss_lut_size = vfres->rss_lut_size;
> -	} else {
> -		adapter->rss_key_size = IAVF_HKEY_ARRAY_SIZE;
> -		adapter->rss_lut_size = IAVF_HLUT_ARRAY_SIZE;
> -	}
> -
>  	return 0;
>  }
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> index 3525eab8e..e253c32d1 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
> @@ -861,12 +861,39 @@ static void iavf_receive_skb(struct iavf_ring *rx_ring,
>  			     struct sk_buff *skb, u16 vlan_tag)
>  {
>  	struct iavf_q_vector *q_vector = rx_ring->q_vector;
> +#ifdef HAVE_VLAN_RX_REGISTER
> +	struct iavf_vsi *vsi = rx_ring->vsi;
> +#endif

HAVE_VLAN_RX_REGISTER does not belong here, remove it please.

> 
> -	if ((rx_ring->netdev->features & NETIF_F_HW_VLAN_CTAG_RX) &&
> -	    (vlan_tag & VLAN_VID_MASK))
> -		__vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q), vlan_tag);
> +#ifdef HAVE_VLAN_RX_REGISTER
> +	if (vlan_tag & VLAN_VID_MASK) {
> +		if (!vsi->vlgrp)
> +			dev_kfree_skb_any(skb);
> +		else
> +			vlan_gro_receive(&q_vector->napi, vsi->vlgrp,
> +					 vlan_tag, skb);
> +	}
> +#else /* HAVE_VLAN_RX_REGISTER */
> +	if (vlan_tag & VLAN_VID_MASK) {
> +		if (rx_ring->netdev->features & IAVF_NETIF_F_HW_VLAN_CTAG_RX) {
> +			__vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q),
> +					       vlan_tag);
> +#ifdef IAVF_ADD_PROBES
> +			rx_ring->vsi->back->rx_vlano++;
> +#endif /* IAVF_ADD_PROBES */

IAVF_ADD_PROBES does not belong here, remove it and the included code please.

> +#ifdef NETIF_F_HW_VLAN_STAG_RX
> +		} else if (rx_ring->netdev->features & NETIF_F_HW_VLAN_STAG_RX) {
> +			__vlan_hwaccel_put_tag(skb, htons(ETH_P_8021AD),
> +					       vlan_tag);
> +#ifdef IAVF_ADD_PROBES
> +			rx_ring->vsi->back->rx_ad_vlano++;
> +#endif /* IAVF_ADD_PROBES */

IAVF_ADD_PROBES does not belong here, remove it and the included code please.

> +#endif /* NETIF_F_HW_VLAN_STAG_RX */

NETIF_F_HW_VLAN_STAG_RX does not belong here, remove it and the included
code please.

> +		}
> +	}
> 
>  	napi_gro_receive(&q_vector->napi, skb);
> +#endif /* HAVE_VLAN_RX_REGISTER */
>  }
> 
>  /**
> @@ -1468,7 +1495,7 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
>  		struct iavf_rx_buffer *rx_buffer;
>  		union iavf_rx_desc *rx_desc;
>  		unsigned int size;
> -		u16 vlan_tag;
> +		u16 vlan_tag = 0;
>  		u8 rx_ptype;
>  		u64 qword;
> 
> @@ -1781,46 +1808,36 @@ tx_only:
>   * Returns error code indicate the frame should be dropped upon error and the
>   * otherwise  returns 0 to indicate the flags has been set properly.
>   **/
> -static inline int iavf_tx_prepare_vlan_flags(struct sk_buff *skb,
> +static void iavf_tx_prepare_vlan_flags(struct sk_buff *skb,
>  					     struct iavf_ring *tx_ring,
>  					     u32 *flags)
>  {
> -	__be16 protocol = skb->protocol;
>  	u32  tx_flags = 0;
> 
> -	if (protocol == htons(ETH_P_8021Q) &&
> -	    !(tx_ring->netdev->features & NETIF_F_HW_VLAN_CTAG_TX)) {
> -		/* When HW VLAN acceleration is turned off by the user the
> -		 * stack sets the protocol to 8021q so that the driver
> -		 * can take any steps required to support the SW only
> -		 * VLAN handling.  In our case the driver doesn't need
> -		 * to take any further steps so just set the protocol
> -		 * to the encapsulated ethertype.
> -		 */
> -		skb->protocol = vlan_get_protocol(skb);
> -		goto out;
> -	}
> +	/* stack will only request hardware VLAN insertion offload for protocols
> +	 * that the driver supports and has enabled
> +	 */
> +	if (!skb_vlan_tag_present(skb))
> +		return;
> 
> -	/* if we have a HW VLAN tag being added, default to the HW one */
> -	if (skb_vlan_tag_present(skb)) {
> -		tx_flags |= skb_vlan_tag_get(skb) << IAVF_TX_FLAGS_VLAN_SHIFT;
> +	tx_flags |= skb_vlan_tag_get(skb) << IAVF_TX_FLAGS_VLAN_SHIFT;
> +	if (tx_ring->flags & IAVF_TXR_FLAGS_VLAN_TAG_LOC_L2TAG2) {
> +		tx_flags |= IAVF_TX_FLAGS_HW_OUTER_SINGLE_VLAN;
> +	} else if (tx_ring->flags & IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1) {
>  		tx_flags |= IAVF_TX_FLAGS_HW_VLAN;
> -	/* else if it is a SW VLAN, check the next protocol and store the tag */
> -	} else if (protocol == htons(ETH_P_8021Q)) {
> -		struct vlan_hdr *vhdr, _vhdr;
> -
> -		vhdr = skb_header_pointer(skb, ETH_HLEN, sizeof(_vhdr), &_vhdr);
> -		if (!vhdr)
> -			return -EINVAL;
> -
> -		protocol = vhdr->h_vlan_encapsulated_proto;
> -		tx_flags |= ntohs(vhdr->h_vlan_TCI) << IAVF_TX_FLAGS_VLAN_SHIFT;
> -		tx_flags |= IAVF_TX_FLAGS_SW_VLAN;
> +	} else {
> +		dev_dbg(tx_ring->dev, "Unsupported Tx VLAN tag location requested\n");
> +		return;
>  	}
> +#ifdef IAVF_ADD_PROBES
> +	if (tx_ring->netdev->features & IAVF_NETIF_F_HW_VLAN_CTAG_TX)
> +		tx_ring->vsi->back->tx_vlano++;
> +	else
> +		tx_ring->vsi->back->tx_ad_vlano++;
> +#endif

Remove IAVF_ADD_PROBES and the inlcuded code please.
> 
> -out:
>  	*flags = tx_flags;
> -	return 0;
> +
>  }
> 
>  /**
> @@ -2440,8 +2457,13 @@ static netdev_tx_t iavf_xmit_frame_ring(struct sk_buff *skb,
>  	first->gso_segs = 1;
> 
>  	/* prepare the xmit flags */
> -	if (iavf_tx_prepare_vlan_flags(skb, tx_ring, &tx_flags))
> -		goto out_drop;
> +        iavf_tx_prepare_vlan_flags(skb, tx_ring, &tx_flags);
> +	if (tx_flags & IAVF_TX_FLAGS_HW_OUTER_SINGLE_VLAN) {
> +		cd_type_cmd_tso_mss |= IAVF_TX_CTX_DESC_IL2TAG2 <<
> +			IAVF_TXD_CTX_QW1_CMD_SHIFT;
> +		cd_l2tag2 = (tx_flags & IAVF_TX_FLAGS_VLAN_MASK) >>
> +			IAVF_TX_FLAGS_VLAN_SHIFT;
> +	}
> 
>  	/* obtain protocol of skb */
>  	protocol = vlan_get_protocol(skb);
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.h b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
> index e5b9ba42d..2624bf6d0 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_txrx.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
> @@ -243,19 +243,20 @@ static inline unsigned int iavf_txd_use_count(unsigned int size)
>  #define DESC_NEEDED (MAX_SKB_FRAGS + 6)
>  #define IAVF_MIN_DESC_PENDING	4
> 
> -#define IAVF_TX_FLAGS_HW_VLAN		BIT(1)
> -#define IAVF_TX_FLAGS_SW_VLAN		BIT(2)
> -#define IAVF_TX_FLAGS_TSO		BIT(3)
> -#define IAVF_TX_FLAGS_IPV4		BIT(4)
> -#define IAVF_TX_FLAGS_IPV6		BIT(5)
> -#define IAVF_TX_FLAGS_FCCRC		BIT(6)
> -#define IAVF_TX_FLAGS_FSO		BIT(7)
> -#define IAVF_TX_FLAGS_FD_SB		BIT(9)
> -#define IAVF_TX_FLAGS_VXLAN_TUNNEL	BIT(10)
> -#define IAVF_TX_FLAGS_VLAN_MASK		0xffff0000
> -#define IAVF_TX_FLAGS_VLAN_PRIO_MASK	0xe0000000
> -#define IAVF_TX_FLAGS_VLAN_PRIO_SHIFT	29
> -#define IAVF_TX_FLAGS_VLAN_SHIFT	16
> +#define IAVF_TX_FLAGS_HW_VLAN			BIT(1)
> +#define IAVF_TX_FLAGS_SW_VLAN			BIT(2)
> +#define IAVF_TX_FLAGS_TSO			BIT(3)
> +#define IAVF_TX_FLAGS_IPV4			BIT(4)
> +#define IAVF_TX_FLAGS_IPV6			BIT(5)
> +#define IAVF_TX_FLAGS_FCCRC			BIT(6)
> +#define IAVF_TX_FLAGS_FSO			BIT(7)
> +#define IAVF_TX_FLAGS_FD_SB			BIT(9)
> +#define IAVF_TX_FLAGS_VXLAN_TUNNEL		BIT(10)
> +#define IAVF_TX_FLAGS_HW_OUTER_SINGLE_VLAN	BIT(11)
> +#define IAVF_TX_FLAGS_VLAN_MASK			0xffff0000
> +#define IAVF_TX_FLAGS_VLAN_PRIO_MASK		0xe0000000
> +#define IAVF_TX_FLAGS_VLAN_PRIO_SHIFT		29
> +#define IAVF_TX_FLAGS_VLAN_SHIFT		16
> 
>  struct iavf_tx_buffer {
>  	struct iavf_tx_desc *next_to_watch;
> @@ -362,6 +363,9 @@ struct iavf_ring {
>  	u16 flags;
>  #define IAVF_TXR_FLAGS_WB_ON_ITR		BIT(0)
>  #define IAVF_RXR_FLAGS_BUILD_SKB_ENABLED	BIT(1)
> +#define IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1	BIT(3)
> +#define IAVF_TXR_FLAGS_VLAN_TAG_LOC_L2TAG2	BIT(4)
> +#define IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2	BIT(5)
> 
>  	/* stats structs */
>  	struct iavf_queue_stats	stats;
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> index 9c128462e..5a696f43b 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> @@ -54,6 +54,36 @@ int iavf_send_api_ver(struct iavf_adapter *adapter)
>  				sizeof(vvi));
>  }
> 
> +/**
> + * iavf_poll_virtchnl_msg - poll for virtchnl msg matching the requested_op
> + * @hw: HW configuration structure
> + * @event: event to populate on success
> + * @op_to_poll: requested virtchnl op to poll for
> + */
> +static int
> +iavf_poll_virtchnl_msg(struct iavf_hw *hw, struct iavf_arq_event_info *event,
> +		       enum virtchnl_ops op_to_poll)
> +{
> +	enum virtchnl_ops received_op;
> +	enum iavf_status status;
> +
> +	while (1) {
> +		/* When the AQ is empty, iavf_clean_arq_element will return
> +		 * nonzero and this loop will terminate.
> +		 */
> +		status = iavf_clean_arq_element(hw, event, NULL);
> +		if (status != IAVF_SUCCESS)
> +			return status;
> +		received_op =
> +		    (enum virtchnl_ops)le32_to_cpu(event->desc.cookie_high);
> +		if (op_to_poll == received_op)
> +			break;
> +	}
> +
> +	status = (enum iavf_status)le32_to_cpu(event->desc.cookie_low);
> +	return status;
> +}
> +
>  /**
>   * iavf_verify_api_ver
>   * @adapter: adapter structure
> @@ -134,6 +164,7 @@ int iavf_send_vf_config_msg(struct iavf_adapter *adapter)
>  	       VIRTCHNL_VF_OFFLOAD_RSS_AQ |
>  	       VIRTCHNL_VF_OFFLOAD_RSS_REG |
>  	       VIRTCHNL_VF_OFFLOAD_VLAN |
> +	       VIRTCHNL_VF_OFFLOAD_VLAN_V2 |
>  	       VIRTCHNL_VF_OFFLOAD_WB_ON_ITR |
>  	       VIRTCHNL_VF_OFFLOAD_RSS_PCTYPE_V2 |
>  	       VIRTCHNL_VF_OFFLOAD_ENCAP |
> @@ -155,6 +186,19 @@ int iavf_send_vf_config_msg(struct iavf_adapter *adapter)
>  					NULL, 0);
>  }
> 
> +int iavf_send_vf_offload_vlan_v2_msg(struct iavf_adapter *adapter)
> +{
> +	adapter->aq_required &= ~IAVF_FLAG_AQ_GET_OFFLOAD_VLAN_V2_CAPS;
> +
> +	if (!VLAN_V2_ALLOWED(adapter))
> +		return -EOPNOTSUPP;
> +
> +	adapter->current_op = VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS;
> +
> +	return iavf_send_pf_msg(adapter, VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS,
> +				NULL, 0);
> +}
> +
>  /**
>   * iavf_validate_num_queues
>   * @adapter: adapter structure
> @@ -235,6 +279,28 @@ out:
>  	return err;
>  }
> 
> +int iavf_get_vf_vlan_v2_caps(struct iavf_adapter *adapter)
> +{
> +	struct iavf_arq_event_info event;
> +	int err;
> +	u16 len;
> +
> +	len = sizeof(struct virtchnl_vlan_caps);
> +	event.buf_len = len;
> +	event.msg_buf = (u8 *)kzalloc(len, GFP_KERNEL);
> +	if (!event.msg_buf)
> +		return -ENOMEM;
> +
> +	err = iavf_poll_virtchnl_msg(&adapter->hw, &event,
> +				     VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS);
> +	if (!err)
> +		memcpy(&adapter->vlan_v2_caps, event.msg_buf,
> +		       min(event.msg_len, len));
> +
> +	kfree(event.msg_buf);
> +	return err;
> +}
> +
>  /**
>   * iavf_configure_queues
>   * @adapter: adapter structure
> @@ -589,7 +655,6 @@ static void iavf_mac_add_reject(struct iavf_adapter *adapter)
>   **/
>  void iavf_add_vlans(struct iavf_adapter *adapter)
>  {
> -	struct virtchnl_vlan_filter_list *vvfl;
>  	int len, i = 0, count = 0;
>  	struct iavf_vlan_filter *f;
>  	bool more = false;
> @@ -612,45 +677,103 @@ void iavf_add_vlans(struct iavf_adapter *adapter)
>  		spin_unlock_bh(&adapter->mac_vlan_list_lock);
>  		return;
>  	}

The check above for "if (count)" should be changed to the following to prevent
a sparse bug:

if (!count || !VLAN_FILTERING_ALLOWED(adapter)) {
	/* prevent endless add VLAN requests */
	...
}

> -	adapter->current_op = VIRTCHNL_OP_ADD_VLAN;
> 
> -	len = sizeof(struct virtchnl_vlan_filter_list) +
> -	      (count * sizeof(u16));
> -	if (len > IAVF_MAX_AQ_BUF_SIZE) {
> +	if (VLAN_ALLOWED(adapter)) {
> +		struct virtchnl_vlan_filter_list *vvfl;
> +
> +		adapter->current_op = VIRTCHNL_OP_ADD_VLAN;
> +
> +		len = sizeof(*vvfl) + (count * sizeof(u16));
> +		if (len > IAVF_MAX_AQ_BUF_SIZE) {
>  		dev_warn(&adapter->pdev->dev, "Too many add VLAN changes in one request\n");
> -		count = (IAVF_MAX_AQ_BUF_SIZE -
> -			 sizeof(struct virtchnl_vlan_filter_list)) /
> -			sizeof(u16);
> -		len = sizeof(struct virtchnl_vlan_filter_list) +
> -		      (count * sizeof(u16));
> -		more = true;
> -	}
> -	vvfl = kzalloc(len, GFP_ATOMIC);
> -	if (!vvfl) {
> +			count = (IAVF_MAX_AQ_BUF_SIZE - sizeof(*vvfl)) /
> +				sizeof(u16);
> +			len = sizeof(*vvfl) + (count * sizeof(u16));
> +			more = true;
> +		}
> +		if (!vvfl) {
> +			spin_unlock_bh(&adapter->mac_vlan_list_lock);
> +			return;
> +		}
> +
> +		vvfl->vsi_id = adapter->vsi_res->vsi_id;
> +		vvfl->num_elements = count;
> +		list_for_each_entry(f, &adapter->vlan_filter_list, list) {
> +			if (f->add) {
> +				vvfl->vlan_id[i] = f->vlan.vid;
> +				i++;
> +				f->add = false;
> +				if (i == count)
> +					break;
> +			}
> +		}
> +		if (!more)
> +			adapter->aq_required &= ~IAVF_FLAG_AQ_ADD_VLAN_FILTER;
> +
>  		spin_unlock_bh(&adapter->mac_vlan_list_lock);
> -		return;
> -	}
> 
> -	vvfl->vsi_id = adapter->vsi_res->vsi_id;
> -	vvfl->num_elements = count;
> -	list_for_each_entry(f, &adapter->vlan_filter_list, list) {
> -		if (f->add) {
> -			vvfl->vlan_id[i] = f->vlan;
> -			i++;
> -			f->add = false;
> -			if (i == count)
> -				break;
> +		iavf_send_pf_msg(adapter, VIRTCHNL_OP_ADD_VLAN, (u8 *)vvfl, len);
> +		kfree(vvfl);
> +	} else if (VLAN_V2_ALLOWED(adapter)) {

This "else if (VLAN_V2_ALLOWED(adapter))" should just be changed to:

} else {

> +		struct virtchnl_vlan_filter_list_v2 *vvfl_v2;
> +
> +		adapter->current_op = VIRTCHNL_OP_ADD_VLAN_V2;
> +
> +		len = sizeof(*vvfl_v2) + ((count - 1) *
> +					  sizeof(struct virtchnl_vlan_filter));
> +		if (len > IAVF_MAX_AQ_BUF_SIZE) {
> +			dev_warn(&adapter->pdev->dev, "Too many add VLAN changes in one request\n");
> +		count = (IAVF_MAX_AQ_BUF_SIZE - sizeof(*vvfl_v2)) /
> +				sizeof(struct virtchnl_vlan_filter);
> +			len = sizeof(*vvfl_v2) +
> +				((count - 1) *
> +				sizeof(struct virtchnl_vlan_filter));
> +			more = true;
>  		}
> -	}
> -	if (!more)
> -		adapter->aq_required &= ~IAVF_FLAG_AQ_ADD_VLAN_FILTER;
> 
> -	spin_unlock_bh(&adapter->mac_vlan_list_lock);
> +		vvfl_v2 = (struct virtchnl_vlan_filter_list_v2 *)
> +			kzalloc(len, GFP_ATOMIC);
> +		if (!vvfl_v2) {
> +			spin_unlock_bh(&adapter->mac_vlan_list_lock);
> +			return;
> +		}
> +
> +		vvfl_v2->vport_id = adapter->vsi_res->vsi_id;
> +		vvfl_v2->num_elements = count;
> +		list_for_each_entry(f, &adapter->vlan_filter_list, list) {
> +			if (f->add) {
> +				struct virtchnl_vlan_supported_caps *filtering_support =
> +					&adapter->vlan_v2_caps->filtering.filtering_support;
> +				struct virtchnl_vlan *vlan;
> +
> +				/* give priority over outer if it's enabled */
> +				if (filtering_support->outer)
> +					vlan = &vvfl_v2->filters[i].outer;
> +				else
> +					vlan = &vvfl_v2->filters[i].inner;
> +
> +				vlan->tci = f->vlan.vid;
> +				vlan->tpid = f->vlan.tpid;
> +
> +				i++;
> +				f->add = false;
> +				if (i == count)
> +					break;
> +			}
> +		}
> +
> +		if (!more)
> +			adapter->aq_required &= ~IAVF_FLAG_AQ_ADD_VLAN_FILTER;
> 
> -	iavf_send_pf_msg(adapter, VIRTCHNL_OP_ADD_VLAN, (u8 *)vvfl, len);
> -	kfree(vvfl);
> +		spin_unlock_bh(&adapter->mac_vlan_list_lock);
> +
> +		iavf_send_pf_msg(adapter, VIRTCHNL_OP_ADD_VLAN_V2,
> +				(u8 *)vvfl_v2, len);
> +		kfree(vvfl_v2);
> +	}
>  }
> 
> +
>  /**
>   * iavf_del_vlans
>   * @adapter: adapter structure
> @@ -659,7 +782,6 @@ void iavf_add_vlans(struct iavf_adapter *adapter)
>   **/
>  void iavf_del_vlans(struct iavf_adapter *adapter)
>  {
> -	struct virtchnl_vlan_filter_list *vvfl;
>  	struct iavf_vlan_filter *f, *ftmp;
>  	int len, i = 0, count = 0;
>  	bool more = false;
> @@ -682,44 +804,105 @@ void iavf_del_vlans(struct iavf_adapter *adapter)
>  		spin_unlock_bh(&adapter->mac_vlan_list_lock);
>  		return;
>  	}
> -	adapter->current_op = VIRTCHNL_OP_DEL_VLAN;
> 
> -	len = sizeof(struct virtchnl_vlan_filter_list) +
> -	      (count * sizeof(u16));
> -	if (len > IAVF_MAX_AQ_BUF_SIZE) {
> -		dev_warn(&adapter->pdev->dev, "Too many delete VLAN changes in one request\n");
> -		count = (IAVF_MAX_AQ_BUF_SIZE -
> -			 sizeof(struct virtchnl_vlan_filter_list)) /
> -			sizeof(u16);
> -		len = sizeof(struct virtchnl_vlan_filter_list) +
> -		      (count * sizeof(u16));
> -		more = true;
> -	}
> -	vvfl = kzalloc(len, GFP_ATOMIC);
> -	if (!vvfl) {
> +	if (VLAN_ALLOWED(adapter)) {
> +		struct virtchnl_vlan_filter_list *vvfl;
> +
> +		adapter->current_op = VIRTCHNL_OP_DEL_VLAN;
> +
> +		len = sizeof(*vvfl) + (count * sizeof(u16));
> +		if (len > IAVF_MAX_AQ_BUF_SIZE) {
> +			dev_warn(&adapter->pdev->dev, "Too many delete VLAN changes in one request\n");
> +			count = (IAVF_MAX_AQ_BUF_SIZE - sizeof(*vvfl)) /
> +				sizeof(u16);
> +			len = sizeof(*vvfl) + (count * sizeof(u16));
> +			more = true;
> +		}
> +		vvfl = (struct virtchnl_vlan_filter_list *)
> +			kzalloc(len, GFP_ATOMIC);
> +		if (!vvfl) {
> +			spin_unlock_bh(&adapter->mac_vlan_list_lock);
> +			return;
> +		}
> +
> +		vvfl->vsi_id = adapter->vsi_res->vsi_id;
> +		vvfl->num_elements = count;
> +		list_for_each_entry_safe(f, ftmp, &adapter->vlan_filter_list, list) {
> +			if (f->remove) {
> +				vvfl->vlan_id[i] = f->vlan.vid;
> +				i++;
> +				list_del(&f->list);
> +				kfree(f);
> +				if (i == count)
> +					break;
> +			}
> +		}
> +
> +		if (!more)
> +			adapter->aq_required &= ~IAVF_FLAG_AQ_DEL_VLAN_FILTER;
> +
>  		spin_unlock_bh(&adapter->mac_vlan_list_lock);
> -		return;
> -	}
> 
> -	vvfl->vsi_id = adapter->vsi_res->vsi_id;
> -	vvfl->num_elements = count;
> -	list_for_each_entry_safe(f, ftmp, &adapter->vlan_filter_list, list) {
> -		if (f->remove) {
> -			vvfl->vlan_id[i] = f->vlan;
> -			i++;
> -			list_del(&f->list);
> -			kfree(f);
> -			if (i == count)
> -				break;
> +		iavf_send_pf_msg(adapter, VIRTCHNL_OP_DEL_VLAN, (u8 *)vvfl, len);
> +		kfree(vvfl);
> +	} else if (VLAN_V2_ALLOWED(adapter)) {
> +		struct virtchnl_vlan_filter_list_v2 *vvfl_v2;
> +
> +		adapter->current_op = VIRTCHNL_OP_DEL_VLAN_V2;
> +
> +		len = sizeof(*vvfl_v2) +
> +			((count - 1) * sizeof(struct virtchnl_vlan_filter));
> +		if (len > IAVF_MAX_AQ_BUF_SIZE) {
> +			dev_warn(&adapter->pdev->dev, "Too many add VLAN changes in one request\n");
> +			count = (IAVF_MAX_AQ_BUF_SIZE -
> +				 sizeof(*vvfl_v2)) /
> +				sizeof(struct virtchnl_vlan_filter);
> +			len = sizeof(*vvfl_v2) +
> +				((count - 1) *
> +				 sizeof(struct virtchnl_vlan_filter));
> +			more = true;
>  		}
> -	}
> -	if (!more)
> -		adapter->aq_required &= ~IAVF_FLAG_AQ_DEL_VLAN_FILTER;
> 
> -	spin_unlock_bh(&adapter->mac_vlan_list_lock);
> +		vvfl_v2 = (struct virtchnl_vlan_filter_list_v2 *)
> +			kzalloc(len, GFP_ATOMIC);
> +		if (!vvfl_v2) {
> +			spin_unlock_bh(&adapter->mac_vlan_list_lock);
> +			return;
> +		}
> +
> +		vvfl_v2->vport_id = adapter->vsi_res->vsi_id;
> +		vvfl_v2->num_elements = count;
> +		list_for_each_entry_safe(f, ftmp, &adapter->vlan_filter_list, list) {
> +			if (f->remove) {
> +				struct virtchnl_vlan_supported_caps *filtering_support =
> +					&adapter->vlan_v2_caps->filtering.filtering_support;
> +				struct virtchnl_vlan *vlan;
> +
> +				/* give priority over outer if it's enabled */
> +				if (filtering_support->outer)
> +					vlan = &vvfl_v2->filters[i].outer;
> +				else
> +					vlan = &vvfl_v2->filters[i].inner;
> +
> +				vlan->tci = f->vlan.vid;
> +				vlan->tpid = f->vlan.tpid;
> +
> +				list_del(&f->list);
> +				kfree(f);
> +				i++;
> +				if (i == count)
> +					break;
> +			}
> +		}
> +		if (!more)
> +			adapter->aq_required &= ~IAVF_FLAG_AQ_DEL_VLAN_FILTER;
> +
> +		spin_unlock_bh(&adapter->mac_vlan_list_lock);
> 
> -	iavf_send_pf_msg(adapter, VIRTCHNL_OP_DEL_VLAN, (u8 *)vvfl, len);
> -	kfree(vvfl);
> +		iavf_send_pf_msg(adapter, VIRTCHNL_OP_DEL_VLAN_V2,
> +				 (u8 *)vvfl_v2, len);
> +		kfree(vvfl_v2);
> +	}
>  }
> 
>  /**
> @@ -944,6 +1127,202 @@ void iavf_disable_vlan_stripping(struct iavf_adapter *adapter)
>  	iavf_send_pf_msg(adapter, VIRTCHNL_OP_DISABLE_VLAN_STRIPPING, NULL, 0);
>  }
> 
> +/**
> + * iavf_tpid_to_vc_ethertype - transform from VLAN TPID to virtchnl ethertype
> + * @tpid: VLAN TPID (i.e. 0x8100, 0x88a8, etc.)
> + */
> +static u32 iavf_tpid_to_vc_ethertype(u16 tpid)
> +{
> +	switch (tpid) {
> +	case ETH_P_8021Q:
> +		return VIRTCHNL_VLAN_ETHERTYPE_8100;
> +	case ETH_P_8021AD:
> +		return VIRTCHNL_VLAN_ETHERTYPE_88A8;
> +	}
> +
> +	return 0;
> +}
> +
> +/**
> + * ice_set_vc_offload_ethertype - set virtchnl ethertype for offload message
> + * @adapter: adapter structure
> + * @msg: message structure used for updating offloads over virtchnl to update
> + * @tpid: VLAN TPID (i.e. 0x8100, 0x88a8, etc.)
> + * @offload_op: opcode used to determine which support structure to check
> + */
> +static int
> +iavf_set_vc_offload_ethertype(struct iavf_adapter *adapter,
> +			      struct virtchnl_vlan_setting *msg, u16 tpid,
> +			      enum virtchnl_ops offload_op)
> +{
> +	struct virtchnl_vlan_supported_caps *offload_support;
> +	u32 vc_ethertype = iavf_tpid_to_vc_ethertype(tpid);
> +
> +	/* reference the correct offload support structure */
> +	switch (offload_op) {
> +	case VIRTCHNL_OP_ENABLE_VLAN_STRIPPING_V2:
> +		/* fall-through */
> +	case VIRTCHNL_OP_DISABLE_VLAN_STRIPPING_V2:
> +		offload_support =
> +			&adapter->vlan_v2_caps->offloads.stripping_support;
> +		break;
> +	case VIRTCHNL_OP_ENABLE_VLAN_INSERTION_V2:
> +		/* fall-through */
> +	case VIRTCHNL_OP_DISABLE_VLAN_INSERTION_V2:
> +		offload_support =
> +			&adapter->vlan_v2_caps->offloads.insertion_support;
> +		break;
> +	default:
> +		dev_err(&adapter->pdev->dev, "Invalid opcode %d for setting virtchnl ethertype to enable/disable VLAN offloads\n",
> +			offload_op);
> +		return -EINVAL;
> +	}
> +
> +	/* make sure ethertype is supported */
> +	if (offload_support->outer & vc_ethertype) {

This should be:

if (offload_support->outer & vc_ethertype &&
     offload_support->outer & VIRTCHNL_VLAN_TOGGLE)

> +		msg->outer_ethertype_setting = vc_ethertype;
> +	} else if (offload_support->inner & vc_ethertype) {
> +		msg->inner_ethertype_setting = vc_ethertype;

This should be:

if (offload_support->inner & vc_ethertype &&
     offload_support->inner & VIRTCHNL_VLAN_TOGGLE)

> +	} else {
> +		dev_err(&adapter->pdev->dev, "opcode %d unsupported for VLAN TPID 0x%04x\n",

This should be a dev_dbg()

> +			offload_op, tpid);
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +/**
> + * iavf_clear_offload_v2_aq_required - clear AQ required bit for offload request
> + * @adapter: adapter structure
> + * @tpid: VLAN TPID
> + * @offload_op: opcode used to determine which AQ required bit to clear
> + */
> +static void
> +iavf_clear_offload_v2_aq_required(struct iavf_adapter *adapter, u16 tpid,
> +				  enum virtchnl_ops offload_op)
> +{
> +	switch (offload_op) {
> +	case VIRTCHNL_OP_ENABLE_VLAN_STRIPPING_V2:
> +		if (tpid == ETH_P_8021Q)
> +			adapter->aq_required &=
> +				~IAVF_FLAG_AQ_ENABLE_CTAG_VLAN_STRIPPING;
> +		else if (tpid == ETH_P_8021AD)
> +			adapter->aq_required &=
> +				~IAVF_FLAG_AQ_ENABLE_STAG_VLAN_STRIPPING;
> +		break;
> +	case VIRTCHNL_OP_DISABLE_VLAN_STRIPPING_V2:
> +		if (tpid == ETH_P_8021Q)
> +			adapter->aq_required &=
> +				~IAVF_FLAG_AQ_DISABLE_CTAG_VLAN_STRIPPING;
> +		else if (tpid == ETH_P_8021AD)
> +			adapter->aq_required &=
> +				~IAVF_FLAG_AQ_DISABLE_STAG_VLAN_STRIPPING;
> +		break;
> +	case VIRTCHNL_OP_ENABLE_VLAN_INSERTION_V2:
> +		if (tpid == ETH_P_8021Q)
> +			adapter->aq_required &=
> +				~IAVF_FLAG_AQ_ENABLE_CTAG_VLAN_INSERTION;
> +		else if (tpid == ETH_P_8021AD)
> +			adapter->aq_required &=
> +				~IAVF_FLAG_AQ_ENABLE_STAG_VLAN_INSERTION;
> +		break;
> +	case VIRTCHNL_OP_DISABLE_VLAN_INSERTION_V2:
> +		if (tpid == ETH_P_8021Q)
> +			adapter->aq_required &=
> +				~IAVF_FLAG_AQ_DISABLE_CTAG_VLAN_INSERTION;
> +		else if (tpid == ETH_P_8021AD)
> +			adapter->aq_required &=
> +				~IAVF_FLAG_AQ_DISABLE_STAG_VLAN_INSERTION;
> +		break;
> +	default:
> +		dev_err(&adapter->pdev->dev, "Unsupported opcode %d specified for clearing aq_required bits for
> VIRTCHNL_VF_OFFLOAD_VLAN_V2 offload request\n",
> +			offload_op);
> +	}
> +}
> +
> +/**
> + * iavf_send_vlan_offload_v2 - send offload enable/disable over virtchnl
> + * @adapter: adapter structure
> + * @tpid: VLAN TPID used for the command (i.e. 0x8100 or 0x88a8)
> + * @offload_op: offload_op used to make the request over virtchnl
> + */
> +static void
> +iavf_send_vlan_offload_v2(struct iavf_adapter *adapter, u16 tpid,
> +			  enum virtchnl_ops offload_op)
> +{
> +	struct virtchnl_vlan_setting *msg;
> +	int len = sizeof(*msg);
> +
> +	if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
> +		/* bail because we already have a command pending */
> +		dev_err(&adapter->pdev->dev, "Cannot send %d, command %d pending\n",
> +			offload_op, adapter->current_op);
> +		return;
> +	}
> +
> +	adapter->current_op = offload_op;
> +
> +	msg = (struct virtchnl_vlan_setting *)kzalloc(len, GFP_KERNEL);
> +	if (!msg)
> +		return;
> +
> +	msg->vport_id = adapter->vsi_res->vsi_id;
> +
> +	/* always clear to prevent unsupported and endless requests */
> +	iavf_clear_offload_v2_aq_required(adapter, tpid, offload_op);
> +
> +	/* only send valid offload requests */
> +	if (!iavf_set_vc_offload_ethertype(adapter, msg, tpid, offload_op))
> +		iavf_send_pf_msg(adapter, offload_op, (u8 *)msg, len);

This should be:

/* only send valid offload requests */
if (!iavf_set_vc_offload_ethertype(adapter, msg, tpid, offload_op))
	iavf_send_pf_msg(adapter, offload_op, (u8 *)msg, len);
else
	adapter->current_op = VIRTCHNL_OP_UNKNOWN;

> +
> +	kfree(msg);
> +}
> +
> +/**
> + * iavf_enable_vlan_stripping_v2 - enable VLAN stripping
> + * @adapter: adapter structure
> + * @tpid: VLAN TPID used to enable VLAN stripping
> + */
> +void iavf_enable_vlan_stripping_v2(struct iavf_adapter *adapter, u16 tpid)
> +{
> +	iavf_send_vlan_offload_v2(adapter, tpid,
> +				  VIRTCHNL_OP_ENABLE_VLAN_STRIPPING_V2);
> +}
> +
> +/**
> + * iavf_disable_vlan_stripping_v2 - disable VLAN stripping
> + * @adapter: adapter structure
> + * @tpid: VLAN TPID used to disable VLAN stripping
> + */
> +void iavf_disable_vlan_stripping_v2(struct iavf_adapter *adapter, u16 tpid)
> +{
> +	iavf_send_vlan_offload_v2(adapter, tpid,
> +				  VIRTCHNL_OP_DISABLE_VLAN_STRIPPING_V2);
> +}
> +
> +/**
> + * iavf_enable_vlan_insertion_v2 - enable VLAN insertion
> + * @adapter: adapter structure
> + * @tpid: VLAN TPID used to enable VLAN insertion
> + */
> +void iavf_enable_vlan_insertion_v2(struct iavf_adapter *adapter, u16 tpid)
> +{
> +	iavf_send_vlan_offload_v2(adapter, tpid,
> +				  VIRTCHNL_OP_ENABLE_VLAN_INSERTION_V2);
> +}
> +
> +/**
> + * iavf_disable_vlan_insertion_v2 - disable VLAN insertion
> + * @adapter: adapter structure
> + * @tpid: VLAN TPID used to disable VLAN insertion
> + */
> +void iavf_disable_vlan_insertion_v2(struct iavf_adapter *adapter, u16 tpid)
> +{
> +	iavf_send_vlan_offload_v2(adapter, tpid,
> +				  VIRTCHNL_OP_DISABLE_VLAN_INSERTION_V2);
> +}
> +
>  #define IAVF_MAX_SPEED_STRLEN	13
> 
>  /**
> @@ -1728,10 +2107,87 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
>  			ether_addr_copy(netdev->perm_addr,
>  					adapter->hw.mac.addr);
>  		}
> +		iavf_parse_vf_resource_msg(adapter);
> +
> +		/* negotiated VIRTCHNL_VF_OFFLOAD_VLAN_V2, so wait for the
> +		 * response to VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS to finish
> +		 * configuration
> +		 */
> +		if (VLAN_V2_ALLOWED(adapter))
> +			break;
> +		/* fall-through and finish config if VIRTCHNL_VF_OFFLOAD_VLAN_V2
> +		 * wasn't successfully negotiated with the PF
> +		 */
> +		 }
> +		/* fall-through */
> +	case VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS: {
> +		struct iavf_mac_filter *f;
> +		bool was_mac_changed;
> +
> +		if (v_opcode == VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS)
> +			memcpy(&adapter->vlan_v2_caps, msg,
> +			       min_t(u16, msglen,
> +				     sizeof(adapter->vlan_v2_caps)));
> +
> +		iavf_process_config(adapter);
> +		/* Clear 'critical task' bit before acquiring rtnl_lock
> +		 * as other process holding rtnl_lock could be waiting
> +		 * for the same bit resulting in deadlock
> +		 */
> +		clear_bit(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);
> +		/* VLAN capabilities can change during VFR, so make sure to
> +		 * update the netdev features with the new capabilities
> +		 */

This doesn't exist anymore. It should be:

mutex_unlock(&adapter->crit_lock);

> +		rtnl_lock();
> +		netdev_update_features(netdev);
> +		rtnl_unlock();
> +		/* Set 'critical task' bit again */
> +		while (test_and_set_bit(__IAVF_IN_CRITICAL_TASK,
> +					&adapter->crit_section))
> +			usleep_range(500, 1000);

This doesn't exist anymore. It should be:

mutex_lock(&adapter->crit_lock);

> +
> +		/* Request VLAN offload settings */
> +		if (VLAN_V2_ALLOWED(adapter))
> +			iavf_set_vlan_offload_features(adapter, 0,
> +						       netdev->features);
> +
> +		iavf_set_queue_vlan_tag_loc(adapter);
> +
> +		was_mac_changed = !ether_addr_equal(netdev->dev_addr,
> +						    adapter->hw.mac.addr);
> +
>  		spin_lock_bh(&adapter->mac_vlan_list_lock);
> -		iavf_add_filter(adapter, adapter->hw.mac.addr);
> +
> +		/* re-add all MAC filters */
> +		list_for_each_entry(f, &adapter->mac_filter_list, list) {
> +			if (was_mac_changed &&
> +			    ether_addr_equal(netdev->dev_addr, f->macaddr))
> +				ether_addr_copy(f->macaddr,
> +						adapter->hw.mac.addr);
> +
> +			f->is_new_mac = true;
> +			f->add = true;
> +			f->add_handled = false;
> +			f->remove = false;
> +		}
> +
> +		/* re-add all VLAN filters */
> +		if (VLAN_FILTERING_ALLOWED(adapter)) {
> +			struct iavf_vlan_filter *vlf;
> +
> +			list_for_each_entry(vlf, &adapter->vlan_filter_list,
> +					    list)
> +				vlf->add = true;
> +                }
> +
>  		spin_unlock_bh(&adapter->mac_vlan_list_lock);
> -		iavf_process_config(adapter);
> +
> +		netif_addr_lock_bh(netdev);
> +		ether_addr_copy(netdev->dev_addr, adapter->hw.mac.addr);
> +		netif_addr_unlock_bh(netdev);
> +
> +		adapter->aq_required |= IAVF_FLAG_AQ_ADD_MAC_FILTER;
> +		adapter->aq_required |= IAVF_FLAG_AQ_ADD_VLAN_FILTER;
>  		}
>  		break;
>  	case VIRTCHNL_OP_ENABLE_QUEUES:
> --
> 2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
