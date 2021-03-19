Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E024A3419CF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Mar 2021 11:21:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7F77D83AEA;
	Fri, 19 Mar 2021 10:21:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5Ztb2MCtSDEe; Fri, 19 Mar 2021 10:21:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 58CCA83AD8;
	Fri, 19 Mar 2021 10:21:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 62E731BF28F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Mar 2021 10:21:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4E7816071A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Mar 2021 10:21:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a2OZS4D6dcka for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Mar 2021 10:21:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 86A0E60717
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Mar 2021 10:21:01 +0000 (UTC)
IronPort-SDR: 2GyhvT6nUCnlLW9Iy134kI0Vsew3Wx4gltlAfHBDiVyrfrIOluvYYJbtKJm2h0b8y2UuaTrNiR
 Grz1MXwfXEYw==
X-IronPort-AV: E=McAfee;i="6000,8403,9927"; a="189246842"
X-IronPort-AV: E=Sophos;i="5.81,261,1610438400"; d="scan'208";a="189246842"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2021 03:21:00 -0700
IronPort-SDR: 1kaCJJvwidRcN/UOVNYhMnKitqy9QxQvGu3Q9M4cYgQk3Ga50hWwsg5F1Ac1fBE5oZLo0hxjUc
 2VHT5GeXJqPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,261,1610438400"; d="scan'208";a="512443894"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga001.fm.intel.com with ESMTP; 19 Mar 2021 03:21:00 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 19 Mar 2021 03:21:00 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 19 Mar 2021 03:21:00 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Fri, 19 Mar 2021 03:21:00 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Fri, 19 Mar 2021 03:20:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b/l8tIqqFJ4AztxwE9hhp5CUDc0yn+eLDZ250UI9uZDVcmg0oOPmq1By7rDVM/9UY/zUVeuq9ppgOqJdGczRePON1DTkag3JgSWz18vcSXYjqmomrODW1gyPkEvtu9X3/GHCmVErDVtPJB3htdNO3b8BZw7YYj0iqS4gWdk34yQKVIy7A2fNkN96Qsbj3KCKr3PsL3lrztg0Kf/XpRPdYofQn3fS2LmjDHXDB05aI6Fp9+qXUDgy1NqvsZtT20saiHJX0EPSksi1vU/reSS5v0D5W75t6DG5R/URmhFpQmoi2OBQlH5H9rl6ERF53u+3MzKHw8csT4Kt7FPe6394VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dCsz6R9fMdP23m2WWSP/KmgCVoYuLmDuJyCpUbTHaSQ=;
 b=QycxsvKXSsGPoNKTUmiL63XKyK8A2UWr/B9WJF2xQe4Kn057qqdvFFKUI5uu6n86QNoi7NHBn3s7n1bd4CXgpTZVA18DUDmYGsINUNzuJXOGdgvNQe4vPunmJevefot1uknI/IPYrPA5FwGRM0d/BH35T97+YwQisnvf61zB49vYBnZBYnqWXgnJtWRBtKGwdqZwly0SFP2uFN56BVwMx1azDyM+VPggsHJSf//Vu+w9xlNLz6eoDZ34EwloqO07+1fNlIp988tASlINoVAc3rFIq7dj2ntGUIykeiPq3uKyOm9lZkOZi0hcxJUnOuXedpk5ggiRhnef4IeDyKj6gg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dCsz6R9fMdP23m2WWSP/KmgCVoYuLmDuJyCpUbTHaSQ=;
 b=ffBob85VrRbUYF4MuZ8DWbYL73TfCC4M8D875VK8Tq0WguqfCaGCa/Rtj5GwRMFy8t6+YM28wW9yOBKeWYXLqxXDKe3z3j/x0H0xyZXK3ybnzRgU1lw+zNOW1VbbIzRDPY6tEABHvf8rrejaf84VvmnKuvEM+m6hC7KEHNISr1o=
Received: from CY4PR11MB1576.namprd11.prod.outlook.com (2603:10b6:910:d::15)
 by CY4PR11MB1575.namprd11.prod.outlook.com (2603:10b6:910:10::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3955.18; Fri, 19 Mar
 2021 10:20:57 +0000
Received: from CY4PR11MB1576.namprd11.prod.outlook.com
 ([fe80::6cb6:a971:f256:c08]) by CY4PR11MB1576.namprd11.prod.outlook.com
 ([fe80::6cb6:a971:f256:c08%7]) with mapi id 15.20.3955.024; Fri, 19 Mar 2021
 10:20:57 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-queue v3] virtchnl: Fix layout of RSS
 structures
Thread-Index: AQHW9aHJDyCTXLWuS0GIjyrCO+6TGaqLZ6sQ
Date: Fri, 19 Mar 2021 10:20:57 +0000
Message-ID: <CY4PR11MB157670FF2CECC96A4CEE21D5AB689@CY4PR11MB1576.namprd11.prod.outlook.com>
References: <20210128181702.1941534-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20210128181702.1941534-1-anthony.l.nguyen@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [188.147.123.151]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3a54d4b0-7d0e-4443-5cc8-08d8eac0af9b
x-ms-traffictypediagnostic: CY4PR11MB1575:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB1575C356E1D7DB94F5D39B18AB689@CY4PR11MB1575.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1xw0XFrg+zGHR+x1Xfz1TQ6DeMeL1vLj1c2ctxqexV3hlMK/KyMEgaHwYsqKbKOA3hUUJBcoDiplU5/uPqqKdnZQtOEvV145lBHoS08lVGenTbboE4fTKTeUSFicxZWBpv0Qel+pfFJNWRQvzIhiKUA43wJHJ/kIJlCGkHbeYYFQzRDJ8OXPs9dx0iPXEJNe+OdV27Ict37FLcw6vRwNqo71qDkPBiZ0XzI9h8ARpVSjsMr9Lq40ZLSsHShdrK0HlEGZwqOW3+aRqhncsWoONaNKKS0YTN1qr5oesZQPAHEO9XC+Lnrbynk1PCnKnxOKK/L5nqwxS4lSm3uVodEdIoFJQdfSqmPgmEx4Gg1u2TGEcSTylir92g0doF4ZmhECKpPXgpbqGlNag3L4ZFD6uKmoWqpEN5qdyY7l9K1dhp8mGKDbBSBK3hH3YNHNCpVN4BDUjEwpDbAGiT0OwmZ2zaRxB/nqnwIo4rlEipoHnfzj6SDaRP5T13bEdu7kQrocsHfQIfPlOysXbm3oVPzeroWcb2LW8PUwo1lCK9/oTiSgX6b5D1pWt7/nQIjpzmtTQrKpv3JKM7p6e9XG0chuPvb2YhGTwxMUNy5o07AemIKlGuhqAZ+aVEFxAOZlg7CH3iJvEe/+W3YUH+n2nUkrOtCBFFKZyIdZV/Za95aQ7aI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1576.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(346002)(396003)(39860400002)(376002)(366004)(186003)(76116006)(316002)(71200400001)(8936002)(9686003)(107886003)(33656002)(64756008)(2906002)(66556008)(66476007)(8676002)(38100700001)(66446008)(4326008)(66946007)(6506007)(53546011)(7696005)(478600001)(26005)(110136005)(86362001)(5660300002)(83380400001)(55016002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?SA9+B6N48/DFW70fKDCzCDXkMPVaKIKjVgSzVnegjl7GaMsQEChtKLA0PrJ/?=
 =?us-ascii?Q?lZNak//nqZXJXAnkMvmRBJwzpMKZ2r7fQ7DUSqQAFus26LMdgOPkNDHNsU4f?=
 =?us-ascii?Q?EcYaXzi01N7HfZlRULwcJfxj6Y4aMY4Cn0uOuxu2TqXhcaXXV71yO//R14Rc?=
 =?us-ascii?Q?Z4HhIo/2+UwppsE3/Rm39yjRYSPdo+SKngm1eHSPQEaLQk69RaAZ3n7f6U4Q?=
 =?us-ascii?Q?/XDcob3POAKXR2VzmVBnZ5xxq2LXQgDkZl+VnUYCJWktFOyKoXJboBi6P1vU?=
 =?us-ascii?Q?EC1cf2Mxwqy9//rbqQojC6UrOUfMVHLtyhQgtvqP/87xRH+jK1MqCiE0fO4E?=
 =?us-ascii?Q?Bz5C+6BtpSy52+MWpHmN36tRKW6tpUzd6WOPIShnh7BQKOEHzHMNoaGsa/O3?=
 =?us-ascii?Q?wkYQWV8HMLXkRyfyvjwiRB4GnmL4cKgqpg39t+9/5ZQ0ITOyfH/LsPjML/Qz?=
 =?us-ascii?Q?AeB90B3PGG+XVSTtQVvhS8vZOVQPzJK5rLl40SHPVfp1XeQeryP0Kr6jDXtx?=
 =?us-ascii?Q?pVnd2hnyEtbAKpa2LZFMYcwZ8wKsF4HBFAEiJ+Ab7+BgUohjcBcMjrehLYn/?=
 =?us-ascii?Q?eZlDI6knHEeAA9wX24WYlyi0LiiqahMRetGwKizgfuuydilkZoFb8bSVJ6BZ?=
 =?us-ascii?Q?1nRkK9MNc04zuAGIXqjAhZavu0YXtGdcTa40tD72N5cV90fAGu0r60cV3lkX?=
 =?us-ascii?Q?QC++vhEUqc1a/F1H6I4pZbFL2JPBvzIumTUM6eNFfgfXz4rWy2DXZF/LsF0Y?=
 =?us-ascii?Q?0j0MlaLZR5JCB9k1DvkvnTuSriWSCSxrvpp6L/AXLgfwodIJhvnrqavjDKcy?=
 =?us-ascii?Q?7Nnz0e/Vk406+q6jmbLBRJDZiI56Pap2ohdrg48dosoPUhojdpRsL86IcDhz?=
 =?us-ascii?Q?90muULQ9xipCKWLcb+kMoS+E4L0DaEzEx4jEDRfcsIpTEIBlt7oYlXXdUnWa?=
 =?us-ascii?Q?iOiA1hysvMKnmUHzgmePIMvRFqG4y4KVFU/l0O+kXRtnvBxwp3vuXfZovZdD?=
 =?us-ascii?Q?ULHwamsPdvANwIQko3uDCcRS9mm6AjjYYnrMGT0wt81ecJ5b1IIUEKMcvvaO?=
 =?us-ascii?Q?apL/odSaGSTywsEno+3OIbv4IhxM1m24b0xiJqi8zBA3YtmEW6m6GjOTr/k5?=
 =?us-ascii?Q?hfsMLa9kmAWw4RueFyVqyJ/ipl+jH8BOes0sDOeFpBoVOLU9GB1XRaZRdJVt?=
 =?us-ascii?Q?mJt8KZeFoBR6ivj8nQrHYXAn1BY3uq+Fn/AOGo5tU0ikiJ1VM7LtsyrZlQgL?=
 =?us-ascii?Q?AC0K8MuXGIhL6QEp7R90GPZgcw0pQRcDGj0kEanDIIqThSbdgzkgJC+BhTLC?=
 =?us-ascii?Q?8c+Ntt/gd8Tu1EEPDV4N5gxj?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB1576.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a54d4b0-7d0e-4443-5cc8-08d8eac0af9b
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Mar 2021 10:20:57.2860 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: f5Pi0G5E7WdRK8M77sPFEj3JJCyqtWGRa1W5r9yua05du0U1uF8EU+Sgw3rXOp8aZFS90sHTawLo2VKKfc3MyfnZ/J/TeZ7CzGWtSua+lWE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1575
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-queue v3] virtchnl: Fix layout of RSS
 structures
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
Cc: "Ciosek, NorbertX" <norbertx.ciosek@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: czwartek, 28 stycznia 2021 19:17
> To: intel-wired-lan@lists.osuosl.org
> Cc: Ciosek, NorbertX <norbertx.ciosek@intel.com>
> Subject: [Intel-wired-lan] [net-queue v3] virtchnl: Fix layout of RSS structures
> 
> From: Norbert Ciosek <norbertx.ciosek@intel.com>
> 
> Remove padding from RSS structures. Previous layout could lead to
> unwanted compiler optimizations in loops when iterating over key and lut
> arrays.
> 
> Fixes: 65ece6de0114 ("virtchnl: Add missing explicit padding to structures")
> Signed-off-by: Norbert Ciosek <norbertx.ciosek@intel.com>
> ---
> v3: Removed footer
> v2: Removed padding instead of moving "key" and "lut" fields at the end of
> RSS structures.
> 
>  include/linux/avf/virtchnl.h | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h index
> 40bad71865ea..532bcbfc4716 100644
> --- a/include/linux/avf/virtchnl.h
> +++ b/include/linux/avf/virtchnl.h
> @@ -476,7 +476,6 @@ struct virtchnl_rss_key {
>  	u16 vsi_id;
>  	u16 key_len;
>  	u8 key[1];         /* RSS hash key, packed bytes */
> -	u8 pad[1];
>  };
> 
>  VIRTCHNL_CHECK_STRUCT_LEN(6, virtchnl_rss_key); @@ -485,7 +484,6 @@
> struct virtchnl_rss_lut {
>  	u16 vsi_id;
>  	u16 lut_entries;
>  	u8 lut[1];        /* RSS lookup table */
> -	u8 pad[1];
>  };
> 
>  VIRTCHNL_CHECK_STRUCT_LEN(6, virtchnl_rss_lut);
> --
> 2.26.2
> 
Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
