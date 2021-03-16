Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF2C33D976
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Mar 2021 17:31:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D899F83CCB;
	Tue, 16 Mar 2021 16:31:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 08qsJopYy877; Tue, 16 Mar 2021 16:31:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E1EBF83A4B;
	Tue, 16 Mar 2021 16:31:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E5AFC1BF97D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 16:31:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D4B036F664
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 16:31:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VOHfibuRkhco for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Mar 2021 16:31:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0190560664
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Mar 2021 16:31:36 +0000 (UTC)
IronPort-SDR: yAKb+qX/5S43iTZ24A3ZI8EfRnqpU2KZsZYYSxYe0SE8BN3RH2GR44aKWykeAGUdgd4gsss+T6
 dhWZSWsw7JYw==
X-IronPort-AV: E=McAfee;i="6000,8403,9925"; a="176888222"
X-IronPort-AV: E=Sophos;i="5.81,254,1610438400"; d="scan'208";a="176888222"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2021 09:31:35 -0700
IronPort-SDR: WfL/xZYnMo1+ONb+04naoWOp0/jQN07YJXbCiMV1E2Np/te9HtKKDCEsYbKVjxV+1j9kVOffl2
 fUJsLjyUAN4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,254,1610438400"; d="scan'208";a="388520745"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga002.jf.intel.com with ESMTP; 16 Mar 2021 09:31:35 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 16 Mar 2021 09:31:35 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 16 Mar 2021 09:31:34 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Tue, 16 Mar 2021 09:31:34 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Tue, 16 Mar 2021 09:31:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b34hLaVrCiAYA3/wCDQJAtkGtfnaaCgca9aykwcoI9BfxETr9eKpFxYzPDyNjtIliVXrVT1c5KtyO9dy0hgoUut48tojvZn5UVDNgol6Ft4BGqes8DZqt6Ws0YX8vfsDsS07SNGG2a/l4Swlb03v4d8pSB9LCkvh1znb/bqJoxYXDRG59ZgHq/UhuEkLemUT/WCnfTT1xols0PkBamn9kNqrWoO26y7jKd395oRLYgPa0Qi8SXqRrxu1SdD1U3Q6lmTOc6tUWps94zA/lDUf2wFqxTzvDO1T27r4UP/8RJ+AG/0vk/bnR1zreNTzC54QigZorXhUyVcgo7wI2sTi+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mujI3F8bXi1Lll5seYGYiBkJ2QuPrba+QjvQ/Lr1x4k=;
 b=ffLzyOwB2YFdAgOY1RZNRSMINZy4/Pr/Q9+Agu+2SF6neVkmsjjhsvlH4XzmNx6Gtm8nfdeZU0Q2RNFFuSs+Nbl2MB4B4imqt5K5qlh0ME2PZ7SKWHEUmUZ6tLrTgkFlnLVRPCyF86ymSmgZ9FFLFP1mCjv49ay9BMUpcZf53vhR4EIU6fJVQ4HUAF4vqVDyCD9ARJSE2AKtgqAoBQCiCisgX+Q9S8SGf510Qca2cF2n9HGpq9J4a/7geY0D0HB9gdhuIYpDyatElYMzENhe2d3l7SsAlOAh63oWdgnIDZ5LQm6sYBYU4Q7BxRD36pTeIYqz5hZ+fK6s1DGuNMq6og==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mujI3F8bXi1Lll5seYGYiBkJ2QuPrba+QjvQ/Lr1x4k=;
 b=Nv4FmiIKuLwqCzqYe4fB3pO/Ptp2UyrXF+5ncNN10zz97Ncoz0IhlmLt51esizM0xQRSwJJiopRSe5f6oyDyXLkufIpr3rjjM7f6v1gbEQqzKmMV8EGPaJo/CQAZX/RHhJSuJHCfx51J24C5uqyousYwh38Uakj3CWIk9fTdraA=
Received: from BN8PR11MB3795.namprd11.prod.outlook.com (2603:10b6:408:82::31)
 by BN6PR1101MB2258.namprd11.prod.outlook.com (2603:10b6:405:5b::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.31; Tue, 16 Mar
 2021 16:31:30 +0000
Received: from BN8PR11MB3795.namprd11.prod.outlook.com
 ([fe80::ec6a:25a8:8c59:89e]) by BN8PR11MB3795.namprd11.prod.outlook.com
 ([fe80::ec6a:25a8:8c59:89e%2]) with mapi id 15.20.3933.032; Tue, 16 Mar 2021
 16:31:30 +0000
From: "Wang, Haiyue" <haiyue.wang@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Patch v5 16/18] iavf: Support IPv6 Flow Director filters
Thread-Index: AQHXFJQAeiNYP3175kWwAfe3j38nI6qG2l+A
Date: Tue, 16 Mar 2021 16:31:29 +0000
Message-ID: <BN8PR11MB3795FBAEE6E42B056B7D3047F76B9@BN8PR11MB3795.namprd11.prod.outlook.com>
References: <20210309030815.5299-1-haiyue.wang@intel.com>
 <20210309030815.5299-17-haiyue.wang@intel.com>
In-Reply-To: <20210309030815.5299-17-haiyue.wang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.0.76
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.198.147.205]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d6220f15-4a66-4a61-ddde-08d8e898f412
x-ms-traffictypediagnostic: BN6PR1101MB2258:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR1101MB22585E17FA67CB5D6E65ADFAF76B9@BN6PR1101MB2258.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:800;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: q0vhqahvmcZ7z3tyVMEhAK9/ZSexhG7v1RuT14U2Bv6WRbIKwQ4/vS55aD3bjvYyz5ZA8bbD8YUg7IMDi8vMyvW8EbAVro2mmDMU4m1cESF3dre2eA+EqdLkotrvv51AwzftSrNs2P8hLWBx6eY/w8jLBjllAVLSfcJEDqECTAlms3UTM+6yOMQVEFtNRJMzzoDFTE5ipOoTjV0M6NFZRo/jhzrzzXbMVNuergBlIdmZfv40ufRjRcqjgJpkj3s3Tb3+LU9ku57uFqGTGZcg4OguUb17uaAeHYRXsInCQKyj7t1gCqjLAgZpytAxo6b6vWf2MEk4iqGfVsEHvy3b/gffRekqz3x/MbygKXa7/aVuCd7SxmQe/WrZ/tmv0Iwm685sdFNMhPda4lbxegdjzAYJ9/mbkTKKiRpcbIkNz7feYquXSC1jxqePwLVqOHZ8FpIHwDmauvGmvD27GIzYmCn4I02s/ypbT34rFSy5pteqNSRA2LnFEC/Zxm1aprDekL2JSiZ57jl2UrvniOwNotXzwPmdSEh4tDnkHs2EnYbLWPnsrCbna4WXDB37ayUh
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3795.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(396003)(366004)(39850400004)(376002)(346002)(6916009)(8676002)(66476007)(5660300002)(71200400001)(6506007)(52536014)(66556008)(4326008)(26005)(54906003)(107886003)(186003)(478600001)(76116006)(9686003)(64756008)(66446008)(8936002)(7696005)(53546011)(2906002)(83380400001)(33656002)(86362001)(316002)(66946007)(55016002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?yT3dvYXr7g4rY8zNV9ltcuvUPlXEY+0VIbK1pcKDHWOYdeOQzNSOTRu/r1XZ?=
 =?us-ascii?Q?xXukU4cuxPVuc/VkNel+SopNWDr3Ag6PfSnfHq4Y2dsmRJXzE7gUcIWtj2eM?=
 =?us-ascii?Q?vTx4tDl/5qAaMn5Ic891ZIjbEcRyhUSI9Z5RHrqh1BgqGETqOFqtWBxt5t7g?=
 =?us-ascii?Q?9GVuvhmluNMVZB6JKIiWUcgERH6OAOElkaYMqpXETHvHIBeR/H4TdzFCUCn9?=
 =?us-ascii?Q?pqoILG+9+MWdegJ4JNMXThMVZGOo8Kmuo7sATd7hDKQwBXiHZYLxBTtv4tuL?=
 =?us-ascii?Q?IdakhM6/5LGDFvc1lXrLEt+U/MlcCRf6psX7ZCn8az8wrYf2XnKCD3PdVMf1?=
 =?us-ascii?Q?EMvrZ5uWiCmftxSYcCTNJaDVIAWb4OP8HuZqtNYBrCnNJWzLanKJJM2YQSJI?=
 =?us-ascii?Q?71K+hOienxE9GtUkZFtUtBGRp+/l74GSdYSIoWOdN9tv1gUZjJvBJ2TSQ81I?=
 =?us-ascii?Q?j7el3z4zDbFmPWgcg1+TOXWbremG/pudHwUsieumElgqxQ0t5K/wxtsu1xBI?=
 =?us-ascii?Q?TcAlrmAxpvPbXdCHrYhToXCCdzGEQwCIVnmA0jizQIEoFjCsyuN/XYx1FIcc?=
 =?us-ascii?Q?GKJFLZQ2umO3n/zQ7+ShaVHwawIQMQZd+i6rRSFpP2mKVy7Gbaz4uUtmPUQI?=
 =?us-ascii?Q?dAEGxko7FLolm3P9Ed15JDM/X3QMbVwVI5uLfKVdhkupwSZcSR5q1SWP+wEQ?=
 =?us-ascii?Q?C373pc76KT329+5babsrbRFL5kvPIVo5jW6XJxfIzmn4vFUsK9U2PJBuKe8N?=
 =?us-ascii?Q?kQGA6V1SG28MWziGhu2hzCIrSA/IluhRVBaozRIqkin7RLclBpaU0TwKqiOv?=
 =?us-ascii?Q?IfmbCKW+tZznPq9xkldS83N/5UzEV6Hh6bxQB11HS7ZKorFJOTUOXYD2xiI5?=
 =?us-ascii?Q?bF0B07yxgnNyg67iAiYISsfCIf3GVmceGXEAKbiKfRIfOtVCLnpVAUhpuOl6?=
 =?us-ascii?Q?9/ptMXT35PjdNaO3vGri6PO55SeApeGsNVeROMrDI61iei4JLZ76C3lI8+kR?=
 =?us-ascii?Q?j2WM0txmUVvWrrLkie6jkilzJPgI6CzsoKaSoogVAbi1bXALZpZFbq12EfGh?=
 =?us-ascii?Q?4hMrKBs2t00TCQJ8s+cEfS7HpRNRDg0xTW4uG3BxgYR2tgrJ4DBa+C0iGLJF?=
 =?us-ascii?Q?LFkPEQwr7D5UMjS5c1Mh0jnhexVGvYfFKBkv9fMmLc4/LeBwxELWRo3VeEPv?=
 =?us-ascii?Q?vV2os/N+CgqmhzeiKGyTMvP+8/qNpJVp6C3yyIT8q+ip22SfwOtteyNcbjFV?=
 =?us-ascii?Q?nDiO3GAdXH6fSDO3tg7lHx5QcEONkYaNPlcvuG7XWde8aAJQvdeP26KCKxHr?=
 =?us-ascii?Q?GNBEWEkqXZOzgVFNWPm/Zsp+?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3795.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d6220f15-4a66-4a61-ddde-08d8e898f412
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2021 16:31:29.8446 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jH5QKguAQ3oLAfqMuZJLsMdHx6ffZcA48bcOyxJEx5BBYrFPJP8hHo0PQhONB6UfNf237I5bwvALJw42rkWq8Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1101MB2258
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [Patch v5 16/18] iavf: Support IPv6 Flow
 Director filters
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
Cc: "Liang, Cunming" <cunming.liang@intel.com>, "Zhang,
 Qi Z" <qi.z.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Wang, Haiyue <haiyue.wang@intel.com>
> Sent: Tuesday, March 9, 2021 11:08
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>; Liang, Cunming <cunming.liang@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Wang, Haiyue <haiyue.wang@intel.com>
> Subject: [Patch v5 16/18] iavf: Support IPv6 Flow Director filters
> 
> Support the addition and deletion of IPv6 filters.
> 
> Supported fields are: src-ip, dst-ip, src-port, dst-port and l4proto
> Supported flow-types are: tcp6, udp6, sctp6, ip6, ah6, esp6
> 
> Example usage:
> ethtool -N ens787f0v0 flow-type tcp6 src-ip 2001::2 \
>   dst-ip CDCD:910A:2222:5498:8475:1111:3900:2020 \
>   tclass 1 src-port 22 dst-port 23 action 7
> 
> L2TPv3 over IP with 'Session ID' 17:
> ethtool -N ens787f0v0 flow-type ip6 l4proto 115 l4data 17 action 7
> 
> Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> ---
>  .../net/ethernet/intel/iavf/iavf_ethtool.c    | 122 ++++++++++++++++++
>  drivers/net/ethernet/intel/iavf/iavf_fdir.c   | 111 ++++++++++++++++
>  drivers/net/ethernet/intel/iavf/iavf_fdir.h   |  13 ++
>  3 files changed, 246 insertions(+)
> 

Re-send to Bo, as a new member.

> --
> 2.30.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
