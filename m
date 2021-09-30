Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2F641D28A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Sep 2021 06:56:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EDBE0613A4;
	Thu, 30 Sep 2021 04:56:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZMLL34ppRLMG; Thu, 30 Sep 2021 04:56:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C28EF6133C;
	Thu, 30 Sep 2021 04:56:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 64D161BF859
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Sep 2021 04:56:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4E0BB402F4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Sep 2021 04:56:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E7PhrgG_CsZd for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Sep 2021 04:56:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4A91D40336
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Sep 2021 04:56:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="225141154"
X-IronPort-AV: E=Sophos;i="5.85,335,1624345200"; d="scan'208";a="225141154"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 21:56:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,335,1624345200"; d="scan'208";a="487169473"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga008.jf.intel.com with ESMTP; 29 Sep 2021 21:56:39 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 29 Sep 2021 21:56:39 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 29 Sep 2021 21:56:39 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 29 Sep 2021 21:56:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I+ucpzRy6a3DRnq34OZuhYr7k/MbTyVM6SuBtqL4/S5go/V1AsUynICumlRpKOpl+ZLPpFkcR52nvTiwGHIi5294aJI8ZgbI1g4DijyxUfq1aFIA4ksvMpt4FrGEEga9mh0rHtCRO3/+D0xAIBswNFp6GcM/mZeJFB6YYPQubEtQqaDOUc5SqHxhqCt0nrkFYAMAD2NzVIhx0pJcz1irkKBcfagfrAHzxrG5jA03toIp/gGYK9jFgc1JM46cOP2gnGcnooIJD1fy0ulI/osWUZL07Sk8YCreXB2R1yc6FBxVasLbJkseCDaxIDESdTu/G8aFq9t2Vu+aM2dVTuzrnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=3OTkP2DAJegZbMdSeG1cJAWf3XwDy7yWnhbbYZ6GlhA=;
 b=hr1oYbXgigUQEs2gXd8jMwlQvwwO8oh4xw/tu/i8yumfprJAJuTlK6HWxMNOjOh6YEMWQgUw7B/eifO9zi4U+n6e9Y33V5Ie9/9gYIe0WgPBTTMCDAbO4HM3nsEa/1ISQ6wzV5L1nQg/acN9KWa9uEZBB+7k1Ajo+YaB9PeRLwntOBBlfHQCywNQzQL5ipLPNAIi+Hwv3jj1JRfWjTHNtp31QD9a21HleLOsmCUp33djMwK/l3r8B756TTSannpjn1nBfk3bBIfeIHY98yPvy50SBacymPUAl2MkFVjavXPPvsNajPL/aHCYLccmA5IZ58VE/kCSBK8ZQNodwQ5QlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3OTkP2DAJegZbMdSeG1cJAWf3XwDy7yWnhbbYZ6GlhA=;
 b=MptGULvdtMYHnZ+V/A6aOuPFIGfpnDZY0iTxrrdDtkkVmdGjS1aRkzJONhVd3QlKrc7qT7he+ZMR1U1pb8LCg2xwZRPm9vk+MHNTeX6QwZ4ycNItVpgl1XXySh4gwz6N/lN/0OL2tyDz+n+HZ6CT5dLcF7YZ3+SJMDaW8aUli9o=
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by MW3PR11MB4539.namprd11.prod.outlook.com (2603:10b6:303:2f::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.15; Thu, 30 Sep
 2021 04:56:38 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::a8a8:6311:c417:ebdf]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::a8a8:6311:c417:ebdf%7]) with mapi id 15.20.4544.021; Thu, 30 Sep 2021
 04:56:38 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v6 4/9] ice: allow adding
 advanced rules
Thread-Index: AQHXiqAHCNb3+v1kAkubOBo2J7D7lqu8WZ4g
Date: Thu, 30 Sep 2021 04:56:38 +0000
Message-ID: <MW3PR11MB4554C5A25AE5E05CEF3AB6D19CAA9@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <1628239746-17380-1-git-send-email-wojciech.drewek@intel.com>
 <1628239746-17380-5-git-send-email-wojciech.drewek@intel.com>
In-Reply-To: <1628239746-17380-5-git-send-email-wojciech.drewek@intel.com>
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
x-ms-office365-filtering-correlation-id: 95efdd4c-4dd1-42bd-30ef-08d983ceafb2
x-ms-traffictypediagnostic: MW3PR11MB4539:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MW3PR11MB4539218979C60018C7193CF09CAA9@MW3PR11MB4539.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: toQ/wIdGjWw784MO9Vf5zOwIkFVMs1a5WgEzgqxxgvcXxiRCGZ+KoimYD5+HjkU9IaAflGwakDvZf06GfuMBmxjASAZaN+cMrTP8P4/3vtj5dJvgzX6dTFB5ZrdpmbQydIhc7UxtaWu3F3PvINKRcQci9pLlpNdiVQZCNB3BsAUhNftX3cIcMADJCvsRy09vrh2RGmNusuFuujBOF1LkOysHS8NO/S/eomUlDsjLzIvjCGNloRNsu/kbrtzZJko6wTUCSkByKBtNnddM+ZRSohstF1KjeWdjaVy0iAPSD+RfwjYwNCqS4NIjfJbzNqkgx+44CWE5ZEVwDUJkCRo0X00aEBUolbER3aqqREIYgmCXX4KROQYwWgkVXg5SzYDxodPl/54y8WYRvy4eG1O71ZlR3gOZHL6tcDh958wXhTKen39DVGyzmWncvBVi9EhU6M6uOX6MjII0xp3FRmx7teIdBoJgrwEcpjo3OukEL8l2RinlIeuV3K5qShrRtllT/cZF9XYWZat0dusGk/uSn6EvFBvYf6DZMxrkE49IST9zH4d58F7FFllyKD+IMJPMLBrtGmr09GHziqnL/16/0RsMkyAqpjXr03wcYX8TYk99ySkMAARd0kTH8jLYBWLuv3YpzjdgBdGB5cCxF22u80JTnDOvxx0PVlpcFqaTGwPDS2yzM3DHTFzKfb8aGOt9cI3W8lY6T/MxpZxofDNNDQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(64756008)(66946007)(66446008)(66476007)(66556008)(52536014)(122000001)(76116006)(38100700002)(316002)(110136005)(86362001)(38070700005)(33656002)(2906002)(8676002)(8936002)(508600001)(26005)(71200400001)(186003)(5660300002)(7696005)(6506007)(55016002)(9686003)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?k9Wk5hUb4K+OdMCcBWgvVU52GP5PFwFML4x0oBGiS6x3kUtV1cnTGqq5Yfw0?=
 =?us-ascii?Q?wJLfIAXGC2a3mCoV6snvV6MI2qJKf1fNxdVdrgrJm2NgKVJUSnWQwiGDnQ9G?=
 =?us-ascii?Q?7Wr49r4RTtutdWJaiaolRzUXLFwQ3adt9G8xQ/QylLuiWS68IFqtJXw9h6VT?=
 =?us-ascii?Q?7u8irM4pvPc6/fwdj8xIe6XBgpTlW1a6/BRE2srFwG1j/0aXBDnClNKFIeez?=
 =?us-ascii?Q?+G/gxNr/7xHMeXNqWk38OrBXF66fpm4AsDX7ptDH75P3iTNXUWeEO8jas9r5?=
 =?us-ascii?Q?iHBGV9C9IckLp4Y+US5GyUThiymGfNINza5QdpKpV3rO0xmfR0Yi98fttGmU?=
 =?us-ascii?Q?6cmd2FdY582PA0rEWfGNYDzIZkYMEkaZWuhWR36FEt7XPh6KXHB+zAIfhp+L?=
 =?us-ascii?Q?CoyYNFD/kVW20/ME1U3jXSHHWPaKoXT+W61q2I8JdacUsSqb4pE8uO4ZDG2c?=
 =?us-ascii?Q?PPfFReU3F6gNQFoHCnAKyXlwnRbKrdGcloegUESJYNSD63frsGZwnGnFxHCV?=
 =?us-ascii?Q?j3NGCBDRQXu4DSW/ZUETzzA1falBY+bzw1Mm9DycPRz89gs6UbEFSFfKOnaJ?=
 =?us-ascii?Q?ED8aemtbpoTsQyFtPgDi64I4eVZv+P/xuqBAF4N0aYAs2ntMs96ryftaYmfX?=
 =?us-ascii?Q?6UFSMvc6i5ZEq+MA915d4yRzZZosnK3J02S19gBhjGVWylpwEowrEjnlMU9i?=
 =?us-ascii?Q?jQpTY29uZP89+eWrSlDUe1/mKzrsWHuRM7OB36ezg0rqlygDmnAj0GeZRJUW?=
 =?us-ascii?Q?iPHFrKwUTC6Gj8FRm5j1z1ZLfn/tgF6jKpQEuz8pFPLL/0d1HtwTr5qHwwjO?=
 =?us-ascii?Q?iTBFJfh2YRGAYblzQZ2ISZm65YqXyMDQ8UvQW4ygbpAVOqpFVXNDB11WuITn?=
 =?us-ascii?Q?46UZcE0yx36oB7rtiIMIAAWLVn65HGSN3xk05biR+va1+2JlBSIWO0SllLg2?=
 =?us-ascii?Q?wYnmmE0sZ6Rt0XOU5iNaIcsgyKsXNO+46pplXKZHndxJHttv6c/7UhbjtH2V?=
 =?us-ascii?Q?CVekk3dehr0PPtR2dZq7CzGLpcHdDRqn59ifudrIN7TSfMSHJqGwxnptio5c?=
 =?us-ascii?Q?9fNRlO3mVFx93CPigzUw17eqN61SnMCxHu/ABQX2vp9uRknfxnJIcbPolMEv?=
 =?us-ascii?Q?50vnZWqdq52epK2VM8Ytlqq4QywJwiIv4tznOQ6NZdyPXAmPV31RtJlbJqvd?=
 =?us-ascii?Q?hBXJfQA0Athj0/suIq1NCBC3bdEUtpmiXFqlalos/k2h6AXrYQNx+S39I4YL?=
 =?us-ascii?Q?RE8SpA6BPV3+EzwbcLuQh28X1RqvFtfod9fuV/VRJBn2LQfYZLax42f9G5yx?=
 =?us-ascii?Q?KAseJFAjTcBsTUyaltH8PQaE?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 95efdd4c-4dd1-42bd-30ef-08d983ceafb2
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Sep 2021 04:56:38.2384 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +9+vgdLFDVBuHePtwy+aT7/xAF4VTunJsxGMKHz4oIjD1/WdCye9HkC20V3Y08Fd8O87X8d2+CB/XrMCMdBxdF6X5ZJAUfWAr6Ul+c4hd40=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4539
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 4/9] ice: allow adding
 advanced rules
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
>Subject: [Intel-wired-lan] [PATCH net-next v6 4/9] ice: allow adding advanced
>rules
>
>From: Grishma Kotecha <grishma.kotecha@intel.com>
>
>Define dummy packet headers to allow adding advanced rules in HW. This
>header is used as admin queue command parameter for adding a rule.
>The firmware will extract correct fields and will use them in look ups.
>
>Define each supported packets header and offsets to words used in recipe.
>Supported headers:
>- MAC + IPv4 + UDP
>- MAC + VLAN + IPv4 + UDP
>- MAC + IPv4 + TCP
>- MAC + VLAN + IPv4 + TCP
>- MAC + IPv6 + UDP
>- MAC + VLAN + IPv6 + UDP
>- MAC + IPv6 + TCP
>- MAC + VLAN + IPv6 + TCP
>
>Add code for creating an advanced rule. Rule needs to match defined dummy
>packet, if not return error, which means that this type of rule isn't currently
>supported.
>
>The first step in adding advanced rule is searching for an advanced recipe
>matching this kind of rule. If it doesn't exist new recipe is created. Dummy
>packet has to be filled with the correct header field value from the rule
>definition. It will be used to do look up in HW.
>
>Support searching for existing advance rule entry. It is used in case of adding
>the same rule on different VSI. In this case, instead of creating new rule, the
>existing one should be updated with refreshed VSI list.
>
>Add initialization for prof_res_bm_init flag to zero so that the possible
>resource for fv in the files can be initialized.
>
>Co-developed-by: Dan Nowlin <dan.nowlin@intel.com>
>Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
>Signed-off-by: Grishma Kotecha <grishma.kotecha@intel.com>
>Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_common.c |   1 +
> drivers/net/ethernet/intel/ice/ice_switch.c | 832
>+++++++++++++++++++++++++++-  drivers/net/ethernet/intel/ice/ice_switch.h
>|  14 +
> drivers/net/ethernet/intel/ice/ice_type.h   |   1 +
> 4 files changed, 847 insertions(+), 1 deletion(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
