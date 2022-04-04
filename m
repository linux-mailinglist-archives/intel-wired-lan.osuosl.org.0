Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5784F10DF
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Apr 2022 10:28:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 090D14012A;
	Mon,  4 Apr 2022 08:28:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ACiN8TR2RPiY; Mon,  4 Apr 2022 08:28:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9984540114;
	Mon,  4 Apr 2022 08:28:53 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4CC071BF3E3
 for <intel-wired-lan@osuosl.org>; Mon,  4 Apr 2022 08:28:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 49A028142D
 for <intel-wired-lan@osuosl.org>; Mon,  4 Apr 2022 08:28:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1QSel3qOwMti for <intel-wired-lan@osuosl.org>;
 Mon,  4 Apr 2022 08:28:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EF48E81406
 for <intel-wired-lan@osuosl.org>; Mon,  4 Apr 2022 08:28:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649060926; x=1680596926;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=8pb3xNeQRruf7sGzvhuj3qKw9BAu/9jvOhWLjgxUGbI=;
 b=Zk3AJxWGOmXRMnGh0CE9g4qBDLas10jjm2q4y//TJdW27n86v85lw3iQ
 e16UlLnnKJSeH7feGMamT0/N1xg+z40AEX0438zxCKrEiLnDsfArZjbIA
 hkCmSdGPUemQjo2P8HfYdJQtNwE1kwhK3ErFlJCO0sPEY50RHvuImS8/P
 Se1KFd0MvBIQK2TrNrjz2xfDMapm3Eqb8pK1utlTvoec14yRcfFvE9wC6
 3/E/mQGUwyKDtsdn0GFZamTBBKSXQuqTdkyvTTPM1vxFtR98VQqGV2mxG
 SOPhUaonwm58LLm/peN17+hCWMN2McjGWCPF5gLc/HzoomBwvFNoI8oo6 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10306"; a="259296755"
X-IronPort-AV: E=Sophos;i="5.90,233,1643702400"; d="scan'208";a="259296755"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2022 01:28:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,233,1643702400"; d="scan'208";a="548569487"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 04 Apr 2022 01:28:46 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 4 Apr 2022 01:28:45 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 4 Apr 2022 01:28:45 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 4 Apr 2022 01:28:45 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 4 Apr 2022 01:28:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jCDaevuoHMZgbkHd2i7gbeWMEpfFdiNS7qI1PgMKRhq4A2lcz2BvkejGszBRh6wucPnsGRkfA1SVNHIsICUqBy3ju2B59w9tfgkzBp3eCvlMeXr8A2/BE04HSP59CgaQLTJYnzm/ZT5hcMOBbN2NoOLgBwAWHV1NSUiKg24l+QZGZYZ0qN4T/y5GvbXd8YMTCmBhoZhoHKuKzEHioMr/zhZIMUMt7Zlj0Ku4SHn9TMOFIEqD0Yv13nl9QGhi/VRMnNCz3XPpcxyq4+oVRnSlS3SsqSNqevUUlOzrAb6JsT5ScVAPWHDxPemsyRElvUcI8qgTv0a803w3TW7y5A08KA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4xnUOZJGrDJ6kKPhVg//ne3NNxRoyiawnCCoWHtk3UE=;
 b=c8CX0vWHGzPVSUciUDCic0XfdzADmORE+nAWdeF3ZHzEEczxC1OEWr+2hOb0Raah7OKxP25WoAd2W+MqESFygQxu9WXm+KQCPMKKudbMEE0ekWD+DA1MAGCFlksJiYEt4YEGM4zDfLS2kfEo8hy7FSBWQQZd3X8zxX2HEhqFP/0Zpq59993bYJYCgYStPO0PNIjk/gNDAjH9Nm7l42J5chi17QKcpYFy3aGd1LWVeir/Y17ydFJDVmVVzXgYA3HoVEEIAtXn6FK0TojMrKNG2YCXWhVAxc4jqlviL2NcLxys4vhyWPOrkV0BiP1vU9d2/MJCfI2Im5nx3Dlb1IhxNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN2PR11MB3614.namprd11.prod.outlook.com (2603:10b6:208:ea::11)
 by MW3PR11MB4649.namprd11.prod.outlook.com (2603:10b6:303:5b::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5123.31; Mon, 4 Apr
 2022 08:28:43 +0000
Received: from MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::3132:3349:6489:9481]) by MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::3132:3349:6489:9481%4]) with mapi id 15.20.5123.031; Mon, 4 Apr 2022
 08:28:43 +0000
From: "Sreenivas, Bharathi" <bharathi.sreenivas@intel.com>
To: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2] ice: Add support for
 classid based queue selection
Thread-Index: AQHYOo0V3o/6EAfpnUuEC0Wry1BWXqzfhXXw
Date: Mon, 4 Apr 2022 08:28:43 +0000
Message-ID: <MN2PR11MB3614E9C8FBB1EABCB691D4B28EE59@MN2PR11MB3614.namprd11.prod.outlook.com>
References: <20220318055549.76343-1-sudheer.mogilappagari@intel.com>
In-Reply-To: <20220318055549.76343-1-sudheer.mogilappagari@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 18b59465-bed8-4f10-edc0-08da1615216b
x-ms-traffictypediagnostic: MW3PR11MB4649:EE_
x-microsoft-antispam-prvs: <MW3PR11MB464973C8F26454DEA6A51F238EE59@MW3PR11MB4649.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NkzS5kbtbe07uqGjOmAeHjHKjPpG+iOUIkgFEF4m4bPG3KyZKUHra2lswbZIAvGrOZ55k5be+3sQt4VTE+uVtgRA1aYH7swjGYEahPTn5ievby9CIUvFE/sqB/IFBwBIPm9+5+zFehRZszFnW+NcvbgJd3jUD7Y3Lmc6qeh9rdYtP06WjVfyho+9NUCvuXCIAGPYOjMfAeMxWaE970vA1up5i6NX/VRYLFcH9D6L0jPrN1mr8XcSYXQjCBlFrWX+oi0avDFAJpGjiTDau6ZQFXA/Txp2kxHD5rU2fgv1KuhlLOfSPVWFmoC+S4HZD/f0Yga8aL4U4ei7t4yTQcf4htAp76xmP9ER2DSEp04JIgiYjzVeH0fFD2EwcIENk52lYhwL7GSadCayl2iU88c6HbRSwXMwCJIuhRZMDbQEXm3rK0j3RgeyaTtxn0zwOMefuPWuOrz+nQlI/6EI4dHFSbqxldTvKMUs7j3WY/5f/QlDKhBHKYsYo1VFF+FwX+H1VOtpcP/0MYpK+PPKvq4fUVDrAPP8uhs+LAszZSnc5Q+cdE9HeDy/SmbtL45Hf3Q3gYPouBskw5Pv1adeJAenSBhxPm1pdEw9F0rTWoHBxFdZMX4w8J/8Y86RWzQvIOX1AddDs/Fqhyld3IeWpPyiOUdkiuHTHuVjsfCBy6QeQyEQoIwnXSO2h5rWhXSDEUZmcQbOrtnaTJht4jEVkchklw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB3614.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(82960400001)(55016003)(38070700005)(2906002)(316002)(9686003)(122000001)(76116006)(38100700002)(5660300002)(186003)(8676002)(66476007)(66946007)(53546011)(83380400001)(508600001)(66446008)(66556008)(64756008)(6916009)(71200400001)(33656002)(52536014)(26005)(7696005)(86362001)(8936002)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vmbylgBDXLWqoQc8a04QOd02XQdmPDdzl4Pp/42JrK3tn9cT+6ZZUgFMhx1w?=
 =?us-ascii?Q?LPukjmS0fSuVc/uVQW6fnap2PWLjI7wmlB5JsdalLqsk9hIyVE/gaCLZM4jb?=
 =?us-ascii?Q?PVDn4KeEQrcnMQkp9RgOPp3KRxxmcJe10Fbt4HGyqKeYJ2aOjJctOXyaNIZs?=
 =?us-ascii?Q?ij7BRf2y9Q11UPwbF8YbdMb9dAdWMXzpcVFwnTwYG/pX3Ut42Cc2gRLCQZwd?=
 =?us-ascii?Q?+jOP+pw/hlRKxRWfOHmH9iEPB4BLke1BQXxfZPJTU0XoHvWhmlljO+5IuzTT?=
 =?us-ascii?Q?QzAjOXh1uDPsTDgEXUIannvwRH7T4B9TDGgCZZrYnWMGWnfVX0a2wIgGIeGj?=
 =?us-ascii?Q?NDdxTin/JvTWQdZm4k8CyK2t/LFgDGAVY4xPcJYv+131+ipkMipyhQqR5BL+?=
 =?us-ascii?Q?T1ne/UxTDQqnCWD2v58WbkzQ7MwYuIVdJ5SB+EefJuai4NZ8tDk4T7uUr90z?=
 =?us-ascii?Q?d5D+5Z0eJWb40oG5kSliiRoUGBmzLd6he/UXdWEK8JzbKVkTzJJaCebW9KM8?=
 =?us-ascii?Q?Ph/wbm4y7WTosXleZuwaM545ORjSQR+1hlhcsbFz6d8rsQuyf6HGG6mRDWS0?=
 =?us-ascii?Q?6IpTinPi4tkoUM/MlGjqEFcYI4jSLE6dsWu8Tc5yg5wzn30cRgxU0wHUt7x/?=
 =?us-ascii?Q?AGPSs9ngbXMlLOLEFLp0WQw/Qwh9d/u9vF+qceBvoznpEwUq6plLVAE/EYAD?=
 =?us-ascii?Q?bi7YF0+x/8Ly1gzRhsA/G6KybSbfDiN7P0DBWpN+hklWLVopOFCmDkuvQ0mF?=
 =?us-ascii?Q?vvT0qbqiT5Rv1WUtmNKbFx+4DITkmjUD45xc2uuacDZiOcAxB2vSLZGfF1iy?=
 =?us-ascii?Q?bCaRyryIytJLxnPF2ckd3KHoE7OGHjRhJXnN5ns2CXNhTI+bdw0USLxUR50g?=
 =?us-ascii?Q?I+pxKzs/e61bgyo9EBMwxjxmPTUQAk3dF/B1ag40mhHXBbXySp9YAnK2j2wX?=
 =?us-ascii?Q?Vg5zCe87qe0OAQ4Z/mcUS/ahm6qC2+YAgCG0jnGlExLa1MEETVudqz5H6RkJ?=
 =?us-ascii?Q?qdOWMD7jSCGCXOGHQU9n60FhTiLsS1hj/lsQ7JXDXwhHJLATim0QzNdxTIad?=
 =?us-ascii?Q?4gAkLFSESFKpJrk38ufQoysfQopVjGGVYPYlFhlfUFKZjh5m8CwDN0RC6/vr?=
 =?us-ascii?Q?Thy3u1rjtEuPZpnxj9we82FnGsMQznmrjpU4XMMYeraNQZLJNHdIfHBJw0ZQ?=
 =?us-ascii?Q?yY5whLMWUSG+1goGK9Rek+WUIwn4ejLOzyV6YwkKv3nEqtbvizbr1Vqi/fsd?=
 =?us-ascii?Q?KfkamJPjZJ5l0sMZ9SsPRXH6b/ZLEBeLjZbs5m0d5//IY5aKgfXZE9os63xF?=
 =?us-ascii?Q?lq9wE6R+ZmfXvU7GdAD3lJm8meRZi9hpcb/fW3ebXPnq31PYd+Ue0g37h/E/?=
 =?us-ascii?Q?MPt2JYR9GfjsOTEbQ6PjQnMH5WjfNYsHJUu67koX/j0DDACNq6C1IiTP4iIj?=
 =?us-ascii?Q?vu5c2fPUuxV1ygwV9425QKrcNw4GMyG3+rzCmJqZOvtHD7QyHWLoy/vE2t1R?=
 =?us-ascii?Q?CtqrlswZtKGTHlMrrJYWCJSanbYgHr5kjiS57jUuFjdi9/QXroJQ39AGXXMH?=
 =?us-ascii?Q?trX7Qv0HE8Ae47loQVgjiirXDNfkaqbHJguctStjLS1HV+RQ1LkTTs+jNLCz?=
 =?us-ascii?Q?AMpgRydAC/fwkOntYVjuPa+NgMqF8M2jKJPQdU8I6bm4B2SdcoM1/O0mG186?=
 =?us-ascii?Q?mPvxSudt/SZahPvg7gnqsPyFYyapObG3VRUPPvLIH1zTjwDsBNJNsDuywYpE?=
 =?us-ascii?Q?mPGkAgTDP8iP5hCpeF8T5mMkn4ylubc=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB3614.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 18b59465-bed8-4f10-edc0-08da1615216b
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Apr 2022 08:28:43.6567 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wM4lxDutLCNZkXpR6+DoWAi/BjJpqioIPSZIu570KBjSrSfesUU9SZkAeDX95E9qEvJugZQgOcbsh/6tEGyxc8ylvENCM/WykCLCF/OXk2o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4649
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ice: Add support for
 classid based queue selection
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
> Sudheer Mogilappagari
> Sent: Friday, March 18, 2022 11:26 AM
> To: intel-wired-lan@osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v2] ice: Add support for classid
> based queue selection
> 
> From: Amritha Nambiar <amritha.nambiar@intel.com>
> 
> This patch uses TC flower filter's classid feature to support forwarding
> packets to a device queue. Such filters with action forward to queue will be
> the highest priority switch filter in HW.
> Example:
> $ tc filter add dev ens4f0 protocol ip ingress flower\
>   dst_ip 192.168.1.12 ip_proto tcp dst_port 5001\
>   skip_sw classid ffff:0x5
> 
> The above command adds an ingress filter, the accepted packets will be
> directed to queue 4. The major number represents the ingress qdisc. The
> general rule is "classID's minor number - 1" upto max queues supported. The
> queue number is in hex format.
> 
> Refactored ice_add_tc_flower_adv_fltr() to consolidate code with action
> FWD_TO_VSI and FWD_TO QUEUE.
> 
> Signed-off-by: Amritha Nambiar <amritha.nambiar@intel.com>
> Signed-off-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> ---
> 
> v2:
> - fixed use of global queue id instead of PF relative queue id
>   as requred by hw.
> 
> ---
> 
>  drivers/net/ethernet/intel/ice/ice.h        |  15 ++
>  drivers/net/ethernet/intel/ice/ice_main.c   |   2 +-
>  drivers/net/ethernet/intel/ice/ice_tc_lib.c | 274 +++++++++++++++-----
> drivers/net/ethernet/intel/ice/ice_tc_lib.h |  40 ++-
>  4 files changed, 263 insertions(+), 68 deletions(-)
> 
Tested-by: Bharathi Sreenivas <bharathi.sreenivas@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
