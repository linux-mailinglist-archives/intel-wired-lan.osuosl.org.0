Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E22E943600B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Oct 2021 13:13:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 54E0640848;
	Thu, 21 Oct 2021 11:13:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2U2ncXXiTGCS; Thu, 21 Oct 2021 11:13:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5489E40849;
	Thu, 21 Oct 2021 11:13:23 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7B6FD1BF616
 for <intel-wired-lan@osuosl.org>; Thu, 21 Oct 2021 11:13:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 65EB4401E3
 for <intel-wired-lan@osuosl.org>; Thu, 21 Oct 2021 11:13:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pb7-C-GY6NVL for <intel-wired-lan@osuosl.org>;
 Thu, 21 Oct 2021 11:13:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5BF7C401DF
 for <intel-wired-lan@osuosl.org>; Thu, 21 Oct 2021 11:13:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10143"; a="228955994"
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="228955994"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 04:13:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="568279955"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by FMSMGA003.fm.intel.com with ESMTP; 21 Oct 2021 04:13:14 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 21 Oct 2021 04:13:14 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 21 Oct 2021 04:13:13 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 21 Oct 2021 04:13:13 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 21 Oct 2021 04:13:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=exAq8GE2WAvMNgq83KX+eRe+/tu6PT3ljz28YJJQz0A8UoOztZnCFKcyz6F9Uc+Wl52Xbwxlf/KsP8CaGIdx1TAhcxapp2JDCM+lhs5ngl8rUkKzPU6vX8aF7SOXSRd9Oqky0V4ikwOA/5RnoEhSg7V0AGif7MaXS9+Bs5RDAl3hqdzQN/ExTIO5u5ZlUnMNAkU6/bySNizu1g1A2m6NJ7jXBZDS2s5QehjiGqazuxnGuqdy+2aOc4tgrHwQ+kZ+d6eGzm7LKHtXCpXLsZrX+lMnzBamT4+gM4hn/cWa4icR5wuXy3mWxUJOwivyundehF/8x1IJ56Iy7wc09M8Zjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Azfbb8Rebt+Fa1/jSSbuwooLRtahyO6RDoXc851Ve0k=;
 b=fsqnCf3SKJQBkonQf3ydquOxqHjm561l9Xu39wlaQ9DHSM63CQJ+xfm/ldRlcw6iuIk+LJ5wimUVcS1LazaIAlOXdruB4XsNnLPKLs++7q22LcQe61YvEvMvTCOUyStBQWHL4EYdKmVAkEhiUQTzTplZeuO3Vrkcl4J6XfcY1EOeOfG1OjZ8S1GpjNJPRGROTJ8WGH9vA0KWOHDGGOQ1FEzdPQBn3scQLrCDodCtTG2SejiNnDTco6U0gpKgihwxN8AApvVFkO+o/cXOxaXKXLT9ag95k1Je+Du5gkWVM6M0oVUs2AmyCdl4tFpqMU6n+3v33aVYKQ5PmXyNS1tMXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Azfbb8Rebt+Fa1/jSSbuwooLRtahyO6RDoXc851Ve0k=;
 b=ielkIRG/IexWN1VnaOwpWg4fMPrpCYSvBUjoyorC11GN/uSfo4J7UaJJLVkdL8vvyaeTGLNDughZje1e5FDEkdm3YRN47fMWju5xftFDDKnW7oQKYEc5szAUrI80LMeQIHdLZrMTd4tPKK2WNxlsknCib1xFW3/POjr0rQ108ws=
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by CO1PR11MB4913.namprd11.prod.outlook.com (2603:10b6:303:9f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.16; Thu, 21 Oct
 2021 11:13:03 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::a8a8:6311:c417:ebdf]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::a8a8:6311:c417:ebdf%7]) with mapi id 15.20.4628.016; Thu, 21 Oct 2021
 11:13:03 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 2/4] ice: vxlan and geneve tc
 support
Thread-Index: AQHXvoVH5MkRw5+G0EeQ+1UHnyK8GavdW/QA
Date: Thu, 21 Oct 2021 11:13:03 +0000
Message-ID: <MW3PR11MB45547BC1309C7FD83BC2581E9CBF9@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20211011094821.5286-1-michal.swiatkowski@linux.intel.com>
 <20211011094821.5286-3-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20211011094821.5286-3-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 483c4936-26d9-4a8b-9cfb-08d99483c014
x-ms-traffictypediagnostic: CO1PR11MB4913:
x-microsoft-antispam-prvs: <CO1PR11MB4913D694A3949EB24ECB3A909CBF9@CO1PR11MB4913.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WfdcFOR4QjaOONVl40jgLX5BNrlAbW3NAJ0kbowiPL395MMoVSoNm2PQY+2cCqiWyawxHtCmyGWjo8w4oRsz6LRduxWR0wKOK6JplwfYHvI4g5GPbKC8yBCRLrKirLGl8GjZK7x9uWp17g8LfSxABkLv1XUh9BDdiuDlfht0wf+LZwIFuf5S11T5s5bl7hkj+EGu1S/kEvQn1XC/qg09YpXOY0yl19/iC6lwue2iCcMzwTkJ0pbz1cyj1VrxdoyiBuw+ttC90Kj8mJVY+KQPrRZrWxCvm+Y7rpG+B5v5ZOtR5yIKxSXPelc1oQMWzBLE5BgXgzP8HxOnJ36vavlb/4ukI7xVp92F46j1U/2Rf90lWP7NMeetafJGlOY/xaePTmFknT8CNCrgoAaeNKOpSbyYzFvBRuCMsWHrEbY4cyM1LWp4vkq6U9w0UjcOfj3WfAb8U236kcSekczE/tQMqSxVInvVCkCnAa+1T3QIFGZK3o2iFR7zcCHkd2h2Tpc2tq0gO7+EGXyPWTX/pkRSIlIbTEejxDXbLjsmON5piYFiFnh8tkrdk2M/IL2wSzTzhJnyJXbiU9jdDY5p66zCC2tjPIN/riYk25hXmKIKiJxdpDKldVgmmsRG6rxIYIUfwAKVx2o2RqzYQf9Sk3aai6eLGPRaHJ2wchVMowd2OEzj+RUN8uFs4JLOfJYecTZctCuSQZH7AvmVJNOqG2UdZg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(5660300002)(508600001)(52536014)(7696005)(64756008)(8936002)(66476007)(66556008)(66446008)(66946007)(8676002)(71200400001)(83380400001)(76116006)(86362001)(316002)(122000001)(33656002)(38070700005)(82960400001)(186003)(38100700002)(55016002)(2906002)(26005)(110136005)(9686003)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?XRZBUr7go/SzIN0KZGuBY2RAwZOnzZfRNS+yQR4xyBTeQcLcWNeZBcmwQuil?=
 =?us-ascii?Q?eZFBMQ0QCAnu1smODE+3wJ9b7LhBgxa3woNRbcKBmarWOmKCqAkvCco4PiGK?=
 =?us-ascii?Q?ti83oioP7f95/VNJGfO4pWtUSQQhMaXY+BF40QM/5MnYwaQHZjT0ymG5WVHu?=
 =?us-ascii?Q?lYHFbv8grYCTsvs4Or32kttk59r4vnHeuV0d9dg6xLCuQkstXr3AbKChogHa?=
 =?us-ascii?Q?JqfTjiwXDBc49KmnrhB283HtcAtn5m3M6j+WeZ8O3+2ApMl0FQRCLEHVbvQG?=
 =?us-ascii?Q?/wXHDdNtt2gd4Mt7jCXDhKnifjK1dExyjN3EyiqA/GhcIQcD8ScnbrLZ/vJ8?=
 =?us-ascii?Q?mFybORGbTKDwxM6h4Ze21z8ojFhWss9hZQcROUzvHRsDlLVaC4KuMpOZi0GA?=
 =?us-ascii?Q?YCjLn0QLik1BApSRGbusQdWOpq6IUsvjJYj1790tKTX/ddBXIHFljQGN5jnB?=
 =?us-ascii?Q?7CmYOt7YylhN3tur+Ka/ThC7Dka43X1Fi9jtGFNO/b7Ap7zE59HG/V5CDoL5?=
 =?us-ascii?Q?Z+NzpLUQQ491JkXB7FSTqAMnD/0ZohC3boJ3QNvBMvqQeeuUWa/iFm8wXHmC?=
 =?us-ascii?Q?5Wt7vGu1f1ClfhuUgDBIxcBzQlWxfjE24eEvG8epJG2g5LPgqWPZD35oLdd1?=
 =?us-ascii?Q?5SGY5S6h0JN9G3wjNCYJMwuVMWj5pldL3VNnT1AbKoIRdRbCR4h6fdXqgFZe?=
 =?us-ascii?Q?Ufa52W+QrHXokCvYxiE9JlC/2IBrmqYtA7L5PLXKjVAP6NMewKcNu4ZeJ9a0?=
 =?us-ascii?Q?lpZppcBcq+ubQ9kqnoY25nSJBcbXWZsUaQp8e3FFCHI4WzTRbLUavA7yq1dy?=
 =?us-ascii?Q?dma85CCq1Uc5WC4ygiko/tfGOfzeV7NEnPe9eaINU5tQodbFaCDEzNLStBdo?=
 =?us-ascii?Q?eQIfvHPbsT+u5b6HSYCbjzz5pbx0Br0xbMuMHebU0SgFbsqNXiZ2Xp0KvHTu?=
 =?us-ascii?Q?lC65FrHiWPWk7GVgdAFb3pmvtCBRF66ez0i75+1HITei3Mw8PuJkHcL644kZ?=
 =?us-ascii?Q?YMVL5dFoJJT+c2b13TQWvixtRqhGjvgJZ8YZh8LWtm6j/MsZvAlQFWm1THWf?=
 =?us-ascii?Q?VMsgT6fXuOxQ2DQ2mxgptz9ZoFEpiW2P+Y7m/k7IyJgdy09iH3LxLvRsv/VL?=
 =?us-ascii?Q?2t5PkE/Gc2kxtxeEbL9XbGUuXwXgqiQNau6Oj9VEMnrzrF7+zkiBY1KyUkfA?=
 =?us-ascii?Q?QiHBlUoR9U6txVTRvmrwYWEJkzrx/g2aP9Vulxi0viFSl4ozzCuC+wpw/Q5b?=
 =?us-ascii?Q?0Io7FW18JvQO2CI26jOBfGxRurcbT5GiH1aOgKFTpLtyvRIfQs94F0qKCsct?=
 =?us-ascii?Q?MpNqT4azHjDC9f4h1wtwPWzkD6JhN3fCGXmmGxDGJHQ3Ybdo/1z4GfagP6VG?=
 =?us-ascii?Q?k8vKu3EALc5c3wMp7wrID22a/XIZvThOMa74munzOy//SthOQi3cNiFzmRXi?=
 =?us-ascii?Q?P2P+Ri3fF/GWmJ42ALkhQtBYFRkH2mZ4?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 483c4936-26d9-4a8b-9cfb-08d99483c014
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2021 11:13:03.2295 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sandeep.penigalapati@intel.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4913
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/4] ice: vxlan and geneve tc
 support
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

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Michal Swiatkowski
>Sent: Monday, October 11, 2021 3:18 PM
>To: intel-wired-lan@osuosl.org
>Subject: [Intel-wired-lan] [PATCH net-next 2/4] ice: vxlan and geneve tc
>support
>
>Add definition for vxlan and geneve dummy packet. Define vxlan and geneve
>type of fields to match on correct UDP tunnel header.
>
>Parse tunnel specific fields from tc tool like outer macs, outer ips, outer
>destination port and VNI. Save values and masks in outer header struct and
>move header pointer to inner to simplify parsing inner values.
>
>There are two cases for redirect action:
>- from uplink to VF - tc filter is added on tunnel device
>- from VF to uplink - tc filter is added on PR, for this case check if
>  redirect device is tunnel device
>
>vxlan example:
>- create tunnel device
>ip l add $VXLAN_DEV type vxlan id $VXLAN_VNI dstport $VXLAN_PORT \ dev
>$PF
>- add tc filter (in switchdev mode)
>tc filter add dev $VXLAN_DEV protocol ip parent ffff: flower \ enc_dst_ip
>$VF1_IP enc_key_id $VXLAN_VNI action mirred egress \ redirect dev $VF1_PR
>
>geneve example:
>- create tunnel device
>ip l add $GENEVE_DEV type geneve id $GENEVE_VNI dstport $GENEVE_PORT \
>remote $GENEVE_IP
>- add tc filter (in switchdev mode)
>tc filter add dev $GENEVE_DEV protocol ip parent ffff: flower \ enc_key_id
>$GENEVE_VNI dst_ip $GENEVE1_IP action mirred egress \ redirect dev
>$VF1_PR
>
>Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_main.c     |   6 +-
> .../ethernet/intel/ice/ice_protocol_type.h    |  16 +
> drivers/net/ethernet/intel/ice/ice_switch.h   |   1 +
> drivers/net/ethernet/intel/ice/ice_tc_lib.c   | 385 ++++++++++++++++--
> drivers/net/ethernet/intel/ice/ice_tc_lib.h   |   4 +
> 5 files changed, 364 insertions(+), 48 deletions(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
