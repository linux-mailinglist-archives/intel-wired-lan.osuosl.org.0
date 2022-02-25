Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E6DB4C4A5F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Feb 2022 17:17:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D771683231;
	Fri, 25 Feb 2022 16:17:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JOL7glIXBKQl; Fri, 25 Feb 2022 16:17:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DF1B2831C1;
	Fri, 25 Feb 2022 16:17:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2F7A01BF2FB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:17:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2AAD4415B9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:17:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q2TNLOvZAVYa for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Feb 2022 16:17:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 72E664155A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Feb 2022 16:17:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645805843; x=1677341843;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5t2xK8DkU3c0ElqAizb7mac38nucJrjQPYMwDBjo5xs=;
 b=hpYPavKFCv/bLt/3m6JaEEMXwBGpAiUF1iA3xIUuhuYxxo5oieVb49Y7
 9AVheea8aAIljiVhO5asusxEfoLsFGYCQe69Gvm0RkaUkNpaqwGOPFN0y
 sStuy1tdI3HfbapW4ga0H9oLhXn+l/fppxr2YMIQ2rpjhcDo+aOxpgNYR
 oXxv9Ya6umdHs7uIFW3cSuRV3ozZiSOD1iNAKiRkMA2AqvBVXPDvng0bc
 Mc2AFdMKdjmiGHO803PlYUAncQq4i2UJO2inbsZ0qy6Pe9cTTHOiVNuvF
 hkUJfcVSeXxK/PxhXV0AbCmyfTKw32sxIb/8JsNWj3EYohVyeK5RibByS A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="233148975"
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="233148975"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 08:17:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="574641671"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga001.jf.intel.com with ESMTP; 25 Feb 2022 08:17:18 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 25 Feb 2022 08:17:17 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 25 Feb 2022 08:17:17 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Fri, 25 Feb 2022 08:17:17 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 25 Feb 2022 08:17:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BiZy+qmhOmktg+vM5I8MaDbC3jWZOqMhkMrRjGV1rbG2dxza8JWwum5z9ToXTNlwxNpQZAhGwgwKpm8V5/g69FbeZtztoUjPxtzj3OPG0A7rS9FhF/QTBfTaBVX4q9afthOaVALx1FsXJUbHn3gOLGQGqnGVBHnKC0pb6vgVtm667K+yuL6t0TSu6NYhHujaS8W1aVwG5dJ/lHA21/gZDRgQAjIVUI9Glnk25jArgps0kYyvyscgz8ZkkkE/HiTMwyR/GvnoQHsH+MKG17/ShPN7YjFk0bY2QF3yB55Sv+X1rkmQrNMebonuwmrJGJwR8XfcloHpisgso2BF2KXLzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ixkAf9v+WGMrmKOAfgOonK+q3y6jlmr9MA4lArgUs4M=;
 b=Cf8YQr7whb5WnEUNfFMa0B62dE3j7xThuUGx7wH39wJiZrHszxxKvqVNUoAlJpIGmxuoB8L/gFa6zWGCxSrrHyXz0b5WZvEjNHfnJZ7hCSPh2icG3FiQXV2QRcbd7nM3niQCA+G+uuYk+/dsarNFP/+LSJ4kIIJjEE8lqwGZB1N5brZbhAaZJzx3x+WgLf14r4lJEEmu5C9wRhwpmqJcX+a+3OtlqEb7YVVzTvhg8OPF+iORPLPA2yH/0mZqktAowtQtiy/e3peYGFRSesjXI//B/yxuSIK75e4mj/lLXeM3YvDy4w9iksYPX6EhtoK+7qOEgD6iJtr3srvPGwmPZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com (2603:10b6:a03:3ab::13)
 by CH0PR11MB5476.namprd11.prod.outlook.com (2603:10b6:610:d7::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.24; Fri, 25 Feb
 2022 16:17:15 +0000
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0]) by SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0%8]) with mapi id 15.20.5017.026; Fri, 25 Feb 2022
 16:17:15 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1 4/8] iavf: Fix locking for
 VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS
Thread-Index: AQHYKLKOsxaM4Qab0kyjPeFgRRHIT6ykdM6Q
Date: Fri, 25 Feb 2022 16:17:14 +0000
Message-ID: <SJ0PR11MB5629B190BD992A4B37ABA4EEAB3E9@SJ0PR11MB5629.namprd11.prod.outlook.com>
References: <20220223123750.30266-1-mateusz.palczewski@intel.com>
In-Reply-To: <20220223123750.30266-1-mateusz.palczewski@intel.com>
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
x-ms-office365-filtering-correlation-id: 4820de0e-1025-4617-e369-08d9f87a495b
x-ms-traffictypediagnostic: CH0PR11MB5476:EE_
x-microsoft-antispam-prvs: <CH0PR11MB5476C6D9889044F6D2572401AB3E9@CH0PR11MB5476.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MqZCWuX+tqa3C0IpeLnfkz3X42Z9eaI1Tf9Qp5yE1Np1g0DeWRLeJuQpRJRx1SI58aYA7AoDR3nlRij7BMlO0vBeyuSPHq0sJnXOyGWweSx7tTzXtaQHFStwaFcAxXkQCUqJLErfgUlCwTHplu7IsX8pinaYaWvP4ccsZ8zPvI3qdbLillKBytT99hGEYSzF/UAv3N0htEzhtkJGC1C9p7cHYCFilc8x1aqoPNK/YeQlgCSr+4KIhP1yENmihcCygaS03PIZ4SIQDhA9AduYYh01twar/ORD1/wIkawz1zq2Om6lzZhsHPctV5sDTEL2QSKf49wqGI83my1VhKEaM1Rp8j1wym989PaOjEW1Pb0OfgDpszns1Wu0YYo2RcuklIxunt+Wa86s1Vh2p588VpDhzVtLCmHAPDpMewVbrZ5Vno4cIu4kOJvjuVyjRokIE688HttAwUKfI1jTq1gSdVik0ST/LfNNgNc9cIzwtbGnelPMDdAQwiN1UY9ER58KnJPGLL3pmhpJweYnZa0EOUFyLd65j7PC8yj1qYzYstINWZxzlkM/tqlsP3w79I9DPTFwgzKn5GBSiKbNeIIhBPyzXf8Kg8OOgUr/yzeyEwehLgn0w70WQ1Bv5g4v4gDyjahdp8k/YfA6d0zN5cUzyeUbp6oY99Qt3eMmUyTEip3C3LO39TmVECsRJv8WshzcNpZz6K0FNAk+FnHc/tQ/dQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5629.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(53546011)(122000001)(55016003)(6506007)(2906002)(508600001)(7696005)(33656002)(66946007)(76116006)(66476007)(8676002)(66446008)(64756008)(66556008)(4326008)(82960400001)(71200400001)(316002)(83380400001)(5660300002)(110136005)(38070700005)(26005)(186003)(54906003)(9686003)(107886003)(52536014)(8936002)(38100700002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1QnLYNM7JZ38wdKemprGi3zpHejnF8nrIxYD8Kifdi0ZIGqVSSKh5jH2nnDx?=
 =?us-ascii?Q?aTZxQxy6lMQVgk6/wkTmv49lZcBMIg3M9wD/ezDMurnAUXhsLm6L7w4PamG7?=
 =?us-ascii?Q?AlN+edgacsELJJpoKJV3HxKWHSXRztZq+j5qNIvrL84JXT7ZV1CLJvTwkMJI?=
 =?us-ascii?Q?mhx8Yn/U8ufOUiD03dKKY7IgzdG0a07wpZVeDQWjel1lKtHjqOEhUXXjhW93?=
 =?us-ascii?Q?5C+LbyrOm9XOhUCTVoKkGf2me+fJpF6kXI3shNffWOdWaVwlPGX+XFwUL9Zp?=
 =?us-ascii?Q?j5yJWZwPfqr+BAYlGln52tzfv8VlKp9cHV0+y7eJzK8nKKWjSihhx6Gtgauk?=
 =?us-ascii?Q?nrjc1p8out4E2HAdw3Stz1SgFGP1+l0kPvP3VTzekpVqHOVuw9P/xsp27QpH?=
 =?us-ascii?Q?221BSkMQjwNxjmUg335m82smL3XsJtL/vsfPf9RLXwPw+u7ibmDNId4QlIsb?=
 =?us-ascii?Q?wL7l2qjJPKLO20uLkih+XMys7IKbXiaEVN6OsL8AL8S/vCB4OqqRm1yUvLLR?=
 =?us-ascii?Q?W1IZ4bMsDAijvMsfhcTOqEdi7CJDnHXJwSwA7OpQLreTpv6uhgOGI6SVpESD?=
 =?us-ascii?Q?tPG26zmmQ+T6eV+PX4FKnaUFKE6TDyaJivtX8keDlxGqlkIZdCkr8o08Tw7G?=
 =?us-ascii?Q?iilCnu5jE4HL2FQEDnVsr+REIPCNiDA5V8FYUjAhNzg+LA6mWqzWn+CwJ3Kb?=
 =?us-ascii?Q?M8/6TQYh+4ICsgeRX+ebXEUUx3VjJzw+aUBOCtZidhUYkCx4wwFIIFlx1uHR?=
 =?us-ascii?Q?aaU0rmqEE2qk56RCUKO4a/ZYeaQW0e1KhkUVf9ZBbjkXonKXtfZ8eGJOQIoI?=
 =?us-ascii?Q?StYnNk7IWe8i1g9mjv19SqGlAM8agQR2pC2wimdXp1T70ElAO1Ihbn88Cs/u?=
 =?us-ascii?Q?szW7ATuQpiaBqHsRPNz4qWT0v/mb0BN3rAXF1XpF3As2bSzDY7YBgeqwomOs?=
 =?us-ascii?Q?K4Lxact8aYG6BJpImRw1EwZTPQafObLRsnGLgNeeFRjF7d7hJI+KH2S1T0eh?=
 =?us-ascii?Q?wnAMx/2sqeW2+BRr8qmzT25+lLRR5Q2RE3zTbxvBfajm/Qcl9FMK59HXkS5I?=
 =?us-ascii?Q?Z0/Cs4NlGuon+sTMeqjRxuTBVSZl7FOiinuqspmD5SZ7IaCFj/v/AkcGmlOe?=
 =?us-ascii?Q?wkAtpTYDnCCWvKjGTl+DL7G23B3+0Xdfqqb5X5r3F9eIbyUTAahaPDLS+lFJ?=
 =?us-ascii?Q?9H3qfUJUB00FHOFIvWTaa0+rvR7M579SYdancoaU7ftr7P1P9wSW/yCXE70V?=
 =?us-ascii?Q?CLgYa6Kj0p6urZELhTPoaQSqV4yx19/H+uNzDtU7tyPypEjA+cTc7UkObFTZ?=
 =?us-ascii?Q?Gh6q7qo+6dc5uEIkRE1y5MZEeS65UgRtSFk49kV6/34B6J11eZ2fwMjqUF7U?=
 =?us-ascii?Q?NGciST7K4BzAbGtsNDDHVZrATWmcp/Dew+rKPQ2HhDwBUkcRwecAFTAg1q6U?=
 =?us-ascii?Q?jiir20NMKrKYRqrQbVCrSPgx4kwkBUcjL5E1s1cGZAowTjUkK/EY8JlqMIWO?=
 =?us-ascii?Q?EicqoDK8qLjuL4Wz1lK4GUmMwhZUiWGlilSR5aGdPHTpJiSMqVpxw6HucAGw?=
 =?us-ascii?Q?J278TJUyVIY6jPuUVoCSBoJpAXX1IxRHP20K3SSiv5Hk3cpkIWFea1i4V4a5?=
 =?us-ascii?Q?+ton07jmHQVId3w0ArZSE+a8zKZ2ig2vBb6NpsHjaOrCHNjsejXjxZss7yWm?=
 =?us-ascii?Q?3PagyA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5629.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4820de0e-1025-4617-e369-08d9f87a495b
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2022 16:17:14.8999 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SAyQwIDOZ0MEUPlK3JtkkpWYTUeDdxApDfnrKd5V7QtVOnb7hHcmxVpunqQy2DFXwt+OhLv9965+NbwP+ALN9XxJQrP8zwnRsX4/u546X1M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5476
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1 4/8] iavf: Fix locking for
 VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS
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
> Sent: Wednesday, February 23, 2022 1:38 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Laba, SlawomirX <slawomirx.laba@intel.com>; Burra, Phani R
> <phani.r.burra@intel.com>; Palczewski, Mateusz
> <mateusz.palczewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1 4/8] iavf: Fix locking for
> VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS
> 
> From: SlawomirX Laba <slawomirx.laba@intel.com>
> 
> iavf_virtchnl_completion is called under crit_lock but when the code for
> VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS is called, this lock is released
> in order to obtain rtnl_lock to avoid ABBA deadlock with unregister_netdev.
> 
> Along with the new way iavf_remove behaves, there exist many risks related
> to the lock release and attmepts to regrab it. The driver faces crashes related
> to races between unregister_netdev and netdev_update_features. Yet
> another risk is that the driver could already obtain the crit_lock in order to
> destroy it and iavf_virtchnl_completion could crash or block forever.
> 
> Make iavf_virtchnl_completion never relock crit_lock in it's call paths.
> 
> Extract rtnl_lock locking logic to the driver for unregister_netdev in order to
> set the netdev_registered flag inside the lock.
> 
> Introduce a new flag that will inform adminq_task to perform the code from
> VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS right after it finishes
> processing messages. Guard this code with remove flags so it's never called
> when the driver is in remove state.
> 
> Fixes: 5951a2b9812d ("iavf: Fix VLAN feature flags after VFR")
> Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>
> Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h        |  1 +
>  drivers/net/ethernet/intel/iavf/iavf_main.c   | 22 ++++++++++++++++-
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 24 +------------------
>  3 files changed, 23 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> b/drivers/net/ethernet/intel/iavf/iavf.h
> index f259fd5..8942394 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -287,6 +287,7 @@ struct iavf_adapter {
>  #define IAVF_FLAG_LEGACY_RX			BIT(15)
>  #define IAVF_FLAG_REINIT_ITR_NEEDED		BIT(16)
>  #define IAVF_FLAG_QUEUES_DISABLED		BIT(17)
> +#define IAVF_FLAG_SETUP_NETDEV_FEATURES		BIT(18)
>  /* duplicates for common code */
>  #define IAVF_FLAG_DCB_ENABLED			0
>  	/* flags for admin queue service task */ diff --git
> a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index be51da9..67349d2 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -2879,6 +2879,24 @@ static void iavf_adminq_task(struct work_struct

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
