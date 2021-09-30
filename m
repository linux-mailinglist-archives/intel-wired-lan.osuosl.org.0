Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 660D641D5F4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Sep 2021 11:05:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0E84884084;
	Thu, 30 Sep 2021 09:05:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FwdHAp28zvmx; Thu, 30 Sep 2021 09:05:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EC28683F08;
	Thu, 30 Sep 2021 09:05:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9D9041BF31A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Sep 2021 09:05:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9A583415CB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Sep 2021 09:05:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vy-IeWmC_ZkT for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Sep 2021 09:05:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EEF5A415BB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Sep 2021 09:05:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="224797321"
X-IronPort-AV: E=Sophos;i="5.85,335,1624345200"; d="scan'208";a="224797321"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2021 02:04:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,335,1624345200"; d="scan'208";a="457369028"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga002.jf.intel.com with ESMTP; 30 Sep 2021 02:04:59 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 30 Sep 2021 02:04:59 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 30 Sep 2021 02:04:59 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 30 Sep 2021 02:04:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IoyATC19ir+kxNkXHofTXf3e0GmuT/lwft40/sPLYWWui4nIYns30sxP30sB8nXxXxE21lvC8jGn3KG5YceD6fvYy169/MIcU9boc4Y9TKpVpviktnl4qyX2upKoE96edpUmPyWtmNwmj4Ts15+7Ja4XyWfP+4lVn8AmDwsa+CzXBEipCh140nAbH2HVQUu4MP0rrpyJ/6hW7eZtBI/5ixz3Ec/yfBQ2WPfMYQL3um+2jMC4M46XR9kFX5KmPHGmWE3O+UUgIpRtVVYt+U+vIz5/Tnz5X2cKYrJu+HSMd9AN/rGQ4VlKy7TXAXf1rumI8wmRN2ATy6bM/aK5K5Aepg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=MF74NNARWWvTNaOyUDcQ8q+CXGvfUWrU0vocelgvKZY=;
 b=OqmvZ1Ph9ieVq8XozW66fZOhJjLWIZ981JYvqrJhPuXl3FsV//2yPsFOBVKfN/AXlzLlQdWFAVG/x/DMTnhTo4O/4MwiTp7G+Nkou7I84Q9hCNf72iRkeZMBtjA6PExZG2rJn3j3wbte2uMj/FSBQORwn0ydnRxTdc5p0lDApLeicIxKhkQ7s4rpoj4OcuAe7/eK9yMM4WNSrZuuBtZJzjgLgEGnso2n67Gh0dnpYrke4nLjqvCos/1ugI5F5MX6LgpCiiPQDfBp2xjSxEbXBVpfmCYxA/O11p1KmifOUHBwKFdEI5xN6fRUV3UXbOHYz7bED/H44PHhwW3umXF56Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MF74NNARWWvTNaOyUDcQ8q+CXGvfUWrU0vocelgvKZY=;
 b=UWxFhj+cmQ9Vdc4uNXk4aIP/dP3UV0FU6+uHFc4C+VRNgVYo9qkQQv6ehlNvR4GCLjgbOxOTeEFJ9LcsIzyzzXWB00wnXmWonbA7b60J2r99Bx1izT8/+8bw+sFKswIX0go7VUJilZt1YkNSr89hKPotzDDe1a1tElCvpc5/FsY=
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by MWHPR11MB1679.namprd11.prod.outlook.com (2603:10b6:301:f::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.15; Thu, 30 Sep
 2021 09:04:58 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::a8a8:6311:c417:ebdf]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::a8a8:6311:c417:ebdf%7]) with mapi id 15.20.4544.021; Thu, 30 Sep 2021
 09:04:58 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v6 1/9] ice: implement low
 level recipes functions
Thread-Index: AQHXip/9hHAIeJsrlkGEoKkfd4Upcqu8nx+A
Date: Thu, 30 Sep 2021 09:04:58 +0000
Message-ID: <MW3PR11MB4554696BCE4E7A93674E470C9CAA9@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <1628239746-17380-1-git-send-email-wojciech.drewek@intel.com>
 <1628239746-17380-2-git-send-email-wojciech.drewek@intel.com>
In-Reply-To: <1628239746-17380-2-git-send-email-wojciech.drewek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f3719d96-92c8-457e-f1b7-08d983f160c4
x-ms-traffictypediagnostic: MWHPR11MB1679:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB1679F6132ACAAE80D97B08D39CAA9@MWHPR11MB1679.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2276;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pHW+n9y3fvdxBGW33kn76gw+Dnp0/TGC/dEOwc1Tz5zBiBYznFyL/qIGZPz2KVZNIpLJtEVC/g5gD7JcNmQPeSVG4U9W3RQReWL2UdE8QYpr43SlUKRDwwskYdLV4kolrjLPVns6r4SpiqPE1JLJ2PWPE87tK6QhmuCXSrBsFz8l5X4XfnSEZhplBK7KbSEYU1nP1TzXiwqxzgCvMSGB8DqH5kj1Swk7mX4OpNtyShwavF522wAV8whCW5dD/UtHRNPiYm9zVfl/DCdnGKcnyDkRq9o9sylhFwGdjjrKdKO1u3fx+EwcaC7HhxNUzRAoxc0vluXlRnGZ/NBuMAHjHhTrs25pZc2tQM2FPDcGI+3oWtukGDu5AIAb5o8tFgY9JzgN0C2DwRchEZpkt2g8Hx/QktaDsLlkVoyOrST104wTmimXotxDR2KBFjXxbjW1psx4HFrc+FY0IH+eKwHFt8DLlYEJpkDonFNbr9ZKWg+12pg7U1YIa8EBcJLU5oIJMyZ3EpYxuaPUbZRCkSDSxTLBiRmx5T7YDiCt2lOUdRY8HeBb9U5GHhtwfDEfoR57s8yszEhUmnzDUBhmTNDqg24f1qO6xs/fRlpmAlaZrPxqag1+xLLs/MmbBKx8goqL7QiUjV+xtwAWnJwuvLaW8evUqeRen1eN5mhukuw1WFib5XiN5hc7BTNX2efkGxgLWmWLECF2SXvPccLjJteK0w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(86362001)(122000001)(66446008)(8676002)(66556008)(66946007)(6506007)(38070700005)(83380400001)(38100700002)(66476007)(76116006)(7696005)(64756008)(71200400001)(55016002)(316002)(26005)(8936002)(508600001)(9686003)(186003)(2906002)(110136005)(52536014)(5660300002)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?O7KcC4jJcjblj8Zu8Ttlpff+ASLyC4fZxT8H9sziPvOvHccHpj7/W3hfjAES?=
 =?us-ascii?Q?edtODaXa8WoCHIHjoN29+aIdZ+pKCWFl2j+SK/j1S9bOQQx9IsKUl77tiFgj?=
 =?us-ascii?Q?OH/zFg3oJRV5gL99j/E8I6+EujfZGvQ8vqwf5E03cA5pKzsT0HLh3+B85uOV?=
 =?us-ascii?Q?O8dqRfgvKCX02UA4IqrRvBGQAZXVTyBlDRVk/e3jjkWLhg4uBMNi4HQ9rwGO?=
 =?us-ascii?Q?f26JiWxsV5OB/z+rwoFoPBd0VgcEL5U2HXInaqwEU21Uj80gIGDsLkewPrYH?=
 =?us-ascii?Q?9yislIxRxqb3FLw9JWYkLQ4XNb0LkoH0FCCbUyW4PUihd3Pi8iQ5a9asB/Ks?=
 =?us-ascii?Q?Ola10wpuhVo7YO/A6jn16gihH0emO4THDMx0yivNisA+6yyNTUI0BDVIr0aY?=
 =?us-ascii?Q?SamTnIlXooKg32B3IfVm8CusZicmoVFJOfW4RW7RNpFh+9IepadrODZlhNKk?=
 =?us-ascii?Q?SzB5vkFGjE1xWK0F3spnwvHwBEt+Z+g5nHo4DeoVJfDp0u9lUvOcG7g3JzK0?=
 =?us-ascii?Q?+MR9fLtsjZL/xPm8To+07JOwGtdm9sRYJX8NZm4vZH5apcK6AVlgD4BPO0wY?=
 =?us-ascii?Q?ShWnU0wY/Gwpug5jqerH5gfLn2A68hZlL7Nibcbsm7xdWf19jn1R8yn4SNJN?=
 =?us-ascii?Q?RBQ+9/iyzFuOgPVQL70OU+0IFjSuwluvXc/UxGeDdhZYriPVdcwzVvUDCARn?=
 =?us-ascii?Q?wpagmM1mZ0QIJ+FB0geM+xfoGZW56rw8L2sqEH0pgrQduIevzH/SUxUeDTw4?=
 =?us-ascii?Q?OKVfk3ZmHSvLPWZcNFtNL0YatfxRTIcknc0mt5zZOEkjMDTY70YBcMUzOnhm?=
 =?us-ascii?Q?DnIvcV+4IM13PYXnJqVlcvMHVmEppR7eIOhv2VwvxNiFNl6li3caCaefBdv0?=
 =?us-ascii?Q?QxdvjwAgesMvmSuHddWCJnRK4uqVv4at0DnRVtGWle9yVMLFV8DdT71B+WA4?=
 =?us-ascii?Q?TDX6+j+Vv09to6qTgoI+JWYAXFcTUWbdD7Y5Ym7/DAX7+FQs5gAJDOLit4Cu?=
 =?us-ascii?Q?6DKp3XkNCDu13F5XxxK7zS0T9m0LIDSXFTTytXg0Prgj1R1ZuTjOsvMJW5dH?=
 =?us-ascii?Q?fwEaGc5NyBbA+zD5cdw60+My8oP0WXYb5lxmxv1MtN9AHp6TwS4THdUjBBS6?=
 =?us-ascii?Q?A+bBCpcq9CWWHLXsVP9BbKftE0Vo1Kx4/25WjddxOGn04yz3lUha0t8uK5ts?=
 =?us-ascii?Q?nIyvpWnchkiRqbYqEf199Sx7Cy0GFiTNTVWJODx67YumNRJxT6/LipYWcTAR?=
 =?us-ascii?Q?VjkDAzkUc3MnYNByuOh2vAwKfJ0s/TOtV7x8NNLUZtaCxeLUSLsd2yvX0quH?=
 =?us-ascii?Q?WxjxeAT0TLZ7O7bOd6gyMJ1J?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f3719d96-92c8-457e-f1b7-08d983f160c4
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Sep 2021 09:04:58.3233 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WTGD2cVqphGD8zXKxS8B1pv5As4rkPAU9cW3s/34al0WT++jL/E4aGuNFrNIkLpwUqmt6RwuNcU4VDjusseaH/CdeGSdeS0vVDUEORK3YC8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1679
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 1/9] ice: implement low
 level recipes functions
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
>Wojciech Drewek
>Sent: Friday, August 6, 2021 2:19 PM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [PATCH net-next v6 1/9] ice: implement low level
>recipes functions
>
>From: Grishma Kotecha <grishma.kotecha@intel.com>
>
>Add code to manage recipes and profiles on admin queue layer.
>
>Allow the driver to add a new recipe and update an existing one. Get a recipe
>and get a recipe to profile association is mostly used in update existing recipes
>code.
>
>Only default recipes can be updated. An update is done by reading recipes
>from HW, changing their params and calling add recipe command.
>
>Support following admin queue commands:
>- ice_aqc_opc_add_recipe (0x0290) - create a recipe with protocol header
>information and other details that determine how this recipe filter works
>- ice_aqc_opc_recipe_to_profile (0x0291) - associate a switch recipe to a
>profile
>- ice_aqc_opc_get_recipe (0x0292) - get details of an exsisting recipe
>- ice_aqc_opc_get_recipe_to_profile (0x0293) - get a recipe associated with
>profile ID
>
>Define ICE_AQC_RES_TYPE_RECIPE resource type to hold a switch recipe. It is
>needed when a new switch recipe needs to be created.
>
>Co-developed-by: Dan Nowlin <dan.nowlin@intel.com>
>Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
>Signed-off-by: Grishma Kotecha  <grishma.kotecha@intel.com>
>Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_adminq_cmd.h |  57 +++++++
> drivers/net/ethernet/intel/ice/ice_switch.c     | 213
>++++++++++++++++++++++++
> drivers/net/ethernet/intel/ice/ice_switch.h     |   9 +
> 3 files changed, 279 insertions(+)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
