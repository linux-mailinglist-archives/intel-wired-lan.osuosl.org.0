Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B3206488157
	for <lists+intel-wired-lan@lfdr.de>; Sat,  8 Jan 2022 05:42:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4640142910;
	Sat,  8 Jan 2022 04:42:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qeILbbUw803B; Sat,  8 Jan 2022 04:42:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1C14740239;
	Sat,  8 Jan 2022 04:42:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A241A1BF232
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Jan 2022 04:42:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 93C6981338
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Jan 2022 04:42:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YLYV-ofTvwC4 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  8 Jan 2022 04:42:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4B5A78132D
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Jan 2022 04:42:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641616928; x=1673152928;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=zDp5vjuo2VUgfRZyltEnWtbjsGolTy7rPcjcmdLJCDw=;
 b=dUmRAeWAxEO2aNL10uDhV/sz4NnR31fdso2MysHSny+0/rdJRfI05UhA
 31GTrAArlh2UHPfiyDZ6xNTYvhKHCMjpkdueHw93+x02DUM8dFiQ/eIdE
 XOerc9LPIlvafkDb9Lxyo4a52C4PXJDMJ6S1KWIv697tdqg2XJT5yMCnF
 NX9JRWiX3UWa0bWx8gD4gIusnR/liQD1IFc/bII5NGkaewAzziK81Ln2/
 Ggx70yQAKVd8/S5ie8A/ZWr1TtzAnElio6BE+97tX6YMAePa2e7rBvFqd
 kPsTIDqFsy1PqiUWkMg9sm8qO419imA4LkJn0ot2imxHT1GmbHs9XwZFd Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10220"; a="306349188"
X-IronPort-AV: E=Sophos;i="5.88,272,1635231600"; d="scan'208";a="306349188"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 20:42:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,272,1635231600"; d="scan'208";a="575313508"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga008.fm.intel.com with ESMTP; 07 Jan 2022 20:42:07 -0800
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 7 Jan 2022 20:42:06 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 7 Jan 2022 20:42:06 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 7 Jan 2022 20:42:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XSUiQK4rvWMpmI+MNFgLBkGQpBjEYq36O1BX/JU/n6JNw/rfI14mD40tyuRBfbkRBxXo+JFUnGgTCT+T47hrUrZehzyOrPj69JGqYjMuHKPyTIgJZ/luJ0Tmh+zZfKeSq4n943ZZqjoGgf0XL2G2jXQpvpzv/06kRl+h8C73896SmTGYXVSEvHZUhoAphOuaEyX3b4N657RP0ib4Vvo9ItB0QjR1twM3p7G0A6/63qzh7ldxAaxh6Nc8C9X6sDRVnFnR5t2RDzsZIYmQv+IfDm2cj81Zy1AG0ouogHOuzY3CErOpzuwMdoQf/+u3WCwUyEb6dnvnycas1nMKNnsM7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=seoVJNkL78FLad9g5mQ0YUnwiQ5voMNkCOKXPNWKg4Y=;
 b=OrA/vccDEZIPJ+D/c+HDHaP1bjbMvjrPkFqp10jhLdWyKcJIsV3yOxoa4/qMR5Y+IkzDLyKzDcGMHHJ4r+80atrRXTVGrpksoYtNKbtSqvGpnsbpGkG+PfzLLYkGOg4aMWOZWASfyZoxwLQnvp94h0Jgq8y9powJuzw/9s22bCWeN08eBCwY+bErgFYNirEempRPOxkUmtBuJnEsmDSTuIwnjXdDoTFDMxcchdPl8CEtBI6tZ5rFzEd8mdGsVJ8JhGLMXYE05awXwCznvwq+YPM5wtF5BOgnUWbgmaJtIOe/ca5FWnHcBiVJiJtq/1sRbUVMdy/i9qVNGhzSYOhiSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BY5PR11MB4136.namprd11.prod.outlook.com (2603:10b6:a03:192::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4867.9; Sat, 8 Jan
 2022 04:42:04 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::3162:31b:8e9c:173b]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::3162:31b:8e9c:173b%4]) with mapi id 15.20.4867.011; Sat, 8 Jan 2022
 04:42:04 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 09/14] ice: Add hot path
 support for 802.1Q and 802.1ad VLAN offloads
Thread-Index: AQHX55tyJgEEwjbYJU+bQfxma/qsr6xX0K1A
Date: Sat, 8 Jan 2022 04:42:04 +0000
Message-ID: <BYAPR11MB3367F9CD9C6A4717A30EFC89FC4E9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20211202163852.36436-1-anthony.l.nguyen@intel.com>
 <20211202163852.36436-9-anthony.l.nguyen@intel.com>
In-Reply-To: <20211202163852.36436-9-anthony.l.nguyen@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 24677b55-030c-4ded-11aa-08d9d261382e
x-ms-traffictypediagnostic: BY5PR11MB4136:EE_
x-microsoft-antispam-prvs: <BY5PR11MB4136BD7B4BE4F21E68269F49FC4E9@BY5PR11MB4136.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5UdwnRqSHVnk+ii/m+QYBMdnujkYk8Pl32ZefsIUPh6c8qnQ7idSVY9VnY7HD/1BPg9TwM0yuLoGb0pX+ox9ib4a2u9S/iboUBMSyZIuBtKGo1G0d/rUuwSlhqkJzA/eEYsye0+hjiaz7HvttggPyEMb83iKPrhWaQNzy5ewD2zMbwivPBtmsqTKCGBV8qN+Fs101Ko8kIO+xGgood1di3Kut49oLPA6LdL0g7pMHrSchObo/+YpRcXViCXXc49P46V4+G6YVRiWYYz0pTA7NVkor3vISAKxvCfG0Gi71N75vwk3rck4ifer0Lx/ZUGpzF6lS786LVCX57EwEbmdGfNCcLisSsnugK+eCmL9OEnRHrBjNTlb8xAlD0pgG+aRPxkOaW3pt/W8YoBR+w/Q8QheUygjhuS7ssLXeviknBp8RuxSPoNW4Tl8AsV77IH/CGmoVpNlkqdZPb+wsxNkUdC/9hc3UQwP8/o6nstQquAMWQXWVmu/MAqIqKFnPy0b5aLGCHniLNspXZZUj+3wl1FLkM9xUyYcMeWRPUlbCJO7Yrz+/w+XWjy5tUwceNsGy5JiEvztaCLn+RaahPYYaTxaIfLtKnKDUfGrKSQkYdC3dkaaSJD1n7UWSfPkH6NyLP1l2D9/6ISufQvXigx6igGEuE+hgCWVpd4S6KiTCr3elEF+w+hdpOr0cuZI+4Ha4WSAAKviqzjCFN77cdK3aTsB85PgKoCSo4Kj9bbzS9s=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(2906002)(82960400001)(122000001)(55016003)(76116006)(38070700005)(83380400001)(52536014)(5660300002)(33656002)(316002)(7696005)(71200400001)(508600001)(8676002)(6506007)(53546011)(66476007)(64756008)(55236004)(66446008)(86362001)(66556008)(26005)(38100700002)(110136005)(186003)(66946007)(9686003)(8936002)(37593001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?cLuwxUkyr5PV/yUotrtWYW6S4KOwci/Qjx/T/atdUcpi1ZnujVDgNhuJFzaN?=
 =?us-ascii?Q?e/EaXDxcXVCZZdE2twT4x8fiTiHc6zS+FqYbusOQkp7H5qp6iwOQgtG0SCYu?=
 =?us-ascii?Q?TZdaRnv3AUU94pXUJmD7DGlG58GIfUU0TuXfWrF4RKKOLXrpNv4VlOrWT7W6?=
 =?us-ascii?Q?TV319jTKUx9ePoRdyWiZ3iN8Gb4p4aVABlehurJKhRCvxpnd6kpXj5CVaAzx?=
 =?us-ascii?Q?MPIEfMGuOalKGk1mNpzhik7YhnE4jArqiyWeFudpM4eoypk8uXKYJMri1H2F?=
 =?us-ascii?Q?dfk5pG2Bt1P7mEcTuGSnIjj07Y4P0YBWoGKJ46p6Vv5ETQu9ecNkPicU//zn?=
 =?us-ascii?Q?yZ4kX4yDJ4Sv7aLVYlr5P8oBVP7ULYuzDqR+/C8q4qj/iL8RF2dR6Dl8p89C?=
 =?us-ascii?Q?3mqPgs+Naiicrqhq9mCiFLdiRHbbOGeOlU6GOxEyUgyl+OKvCRmN1hmnE7sS?=
 =?us-ascii?Q?EZG3dMsDi3tDoM6P+bIkQYerDn0hCQJ8fJsikIs34l+pfx7CcDpdF4JAZlXt?=
 =?us-ascii?Q?I7nraz5llf2NRsyqRFD1BcHQts5LHHzGTJC8a817D8yenchSbPT0RMggRyH2?=
 =?us-ascii?Q?WojIix0yoplyZHLRoCZFerKGhKW/JLnaVodrtRRpZjKwr3xUXKeQP92s7kP2?=
 =?us-ascii?Q?/ZX1NIdht4Gzg6QCX//krhSRZfiXvigwCvMJwTKU25cyv4LicWYDk4d3Ow+b?=
 =?us-ascii?Q?AFy/NoQPjJKHCRIeTaUTdlLyufoSSETZvfPoXxyol0LjO0qcco8B9LjQd5Uy?=
 =?us-ascii?Q?ZBQHpDprjvZkuSqKpmnV97fq9HCVYgCU8SFDlBioUeJ7DVRSddOQ+J+a+rrM?=
 =?us-ascii?Q?WDLylJdHbcKiVRAKc7Ed9z5eHsKo0Rl8B2E+vz/+CiDLW9SQohILeMDLCo9t?=
 =?us-ascii?Q?QhtF+MXzrcmSd46G7mwJpHmG9+HMC0mLMgo9D4OLJrpnAIomnOfD9xw0+PJ8?=
 =?us-ascii?Q?EfRMqDXQuIoc+HgjTzVcRh0AOPXiQJ5eGAC7ux6nzfBxjhWIZehKfp0K28F0?=
 =?us-ascii?Q?rjuz8l452OIivhejRkmnY/pzjCxEjBRC4ocpoyqqbKh+7lQHTFH4U47No/9y?=
 =?us-ascii?Q?qpot6HRx5w3efN7p2ard53+qcA6zUoYSCg/pI1BEf7qSbTRmnv80QFed0NgC?=
 =?us-ascii?Q?y1qiBicn4sdZY6zvEW9+IX3TV8svw6tvyVahKrPfQtRQ+9WI0YsJL+kTS24g?=
 =?us-ascii?Q?v2xzvpbYRALxdmvZEj0TelRgMKB7no21gNFKLRVK4RaRbdkMh20VUEvnOmLB?=
 =?us-ascii?Q?PYY7e4MjwKPl8BNGsxHuA3bWfSI2+MWLXZGVz6I98h+ZaITj0BLsVL7XJnOX?=
 =?us-ascii?Q?6jhcnRQEM1JvsvWVr1PEp5hddBQ/Z7mFUecg16cVpAm6YuXgCpUwXkTgSAlK?=
 =?us-ascii?Q?TB8mWMrqfdOVxfoOc377yeNM3Ea/Dg4Ww9UacU8vWMQVyrJ092uuA3SdKIMa?=
 =?us-ascii?Q?S1fy8N1PMcIf24aTHdnvwiaHAvGn0dSsmXS6EFbXnJIqHZrq4565JBAkhatU?=
 =?us-ascii?Q?DkWEJkqxfQTutV+1ehWSqhVthR7wPzr1PGitx9FUfO1JbZhAEiFGufmduQPI?=
 =?us-ascii?Q?l8dGW030U9GEpDJBOe8PqDCm8vn/DnN0RFIY6pgOzfMbNa1VgaORR+ScGu5k?=
 =?us-ascii?Q?fQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 24677b55-030c-4ded-11aa-08d9d261382e
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2022 04:42:04.5214 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RGliiPBVKvd/wSqpbilD8EUrYDGqmiw+Kw2b+7u99AE1mosxHNq68Cq1o3x/HnpWmIKMHs4FXQhfBBpOYSzQmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4136
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 09/14] ice: Add hot path
 support for 802.1Q and 802.1ad VLAN offloads
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Tony
> Nguyen
> Sent: Thursday, December 2, 2021 10:09 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v3 09/14] ice: Add hot path support
> for 802.1Q and 802.1ad VLAN offloads
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Currently the driver only supports 802.1Q VLAN insertion and stripping.
> However, once Double VLAN Mode (DVM) is fully supported, then both 802.1Q
> and 802.1ad VLAN insertion and stripping will be supported. Unfortunately the
> VSI context parameters only allow for one VLAN ethertype at a time for VLAN
> offloads so only one or the other VLAN ethertype offload can be supported at
> once.
> 
> To support this, multiple changes are needed.
> 
> Rx path changes:
> 
> [1] In DVM, the Rx queue context l2tagsel field needs to be cleared so the
> outermost tag shows up in the l2tag2_2nd field of the Rx flex descriptor. In
> Single VLAN Mode (SVM), the l2tagsel field should remain
> 1 to support SVM configurations.
> 
> [2] Modify the ice_test_staterr() function to take a __le16 instead of the
> ice_32b_rx_flex_desc union pointer so this function can be used for both
> rx_desc->wb.status_error0 and rx_desc->wb.status_error1.
> 
> [3] Add the new inline function ice_get_vlan_tag_from_rx_desc() that checks if
> there is a VLAN tag in l2tag1 or l2tag2_2nd.
> 
> [4] In ice_receive_skb(), add a check to see if NETIF_F_HW_VLAN_STAG_RX is
> enabled in netdev->features. If it is, then this is the VLAN ethertype that needs
> to be added to the stripping VLAN tag. Since
> ice_fix_features() prevents CTAG_RX and STAG_RX from being enabled
> simultaneously, the VLAN ethertype will only ever be 802.1Q or 802.1ad.
> 
> Tx path changes:
> 
> [1] In DVM, the VLAN tag needs to be placed in the l2tag2 field of the Tx
> context descriptor. The new define ICE_TX_FLAGS_HW_OUTER_SINGLE_VLAN
> was added to the list of tx_flags to handle this case.
> 
> [2] When the stack requests the VLAN tag to be offloaded on Tx, the driver
> needs to set either ICE_TX_FLAGS_HW_OUTER_SINGLE_VLAN or
> ICE_TX_FLAGS_HW_VLAN, so the tag is inserted in l2tag2 or l2tag1
> respectively. To determine which location to use, set a bit in the Tx ring flags
> field during ring allocation that can be used to determine which field to use in
> the Tx descriptor. In DVM, always use l2tag2, and in SVM, always use l2tag1.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
> v2: Fix kdoc issue
> 
>  drivers/net/ethernet/intel/ice/ice_base.c     | 18 +++++++++--
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |  8 +++--
>  .../net/ethernet/intel/ice/ice_lan_tx_rx.h    |  2 ++
>  drivers/net/ethernet/intel/ice/ice_lib.c      |  5 ++++
>  drivers/net/ethernet/intel/ice/ice_txrx.c     | 28 +++++++++++------
>  drivers/net/ethernet/intel/ice/ice_txrx.h     |  3 ++
>  drivers/net/ethernet/intel/ice/ice_txrx_lib.c |  9 ++++--
> drivers/net/ethernet/intel/ice/ice_txrx_lib.h | 30 +++++++++++++++++--
>  drivers/net/ethernet/intel/ice/ice_xsk.c      |  6 ++--
>  9 files changed, 87 insertions(+), 22 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
