Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95F9441D289
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Sep 2021 06:55:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B545D402C4;
	Thu, 30 Sep 2021 04:55:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yov7GkoLBBy2; Thu, 30 Sep 2021 04:55:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6BF5140215;
	Thu, 30 Sep 2021 04:55:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 773651BF859
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Sep 2021 04:55:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6483640215
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Sep 2021 04:55:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C4Y0Kh87X35D for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Sep 2021 04:55:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 974054020D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Sep 2021 04:55:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="205247343"
X-IronPort-AV: E=Sophos;i="5.85,335,1624345200"; d="scan'208";a="205247343"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 21:55:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,335,1624345200"; d="scan'208";a="520155099"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 29 Sep 2021 21:55:09 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 29 Sep 2021 21:55:08 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 29 Sep 2021 21:55:08 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 29 Sep 2021 21:55:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DR3BpaG4Z0Q/b1PtC08lpcYokdbVFbzQ56aaH3c+QKCjq7jbb5JwJvNrQzh/1VxTq9i2lrwJgJa9OFuZPqAaAoilM/Ei9CouRxAB50gfuLgz597o4XIT0nyhhcGUBkDrhtqnLUA3VtIbVLa3VJYJIGTciG7nnWFGMLPvxR72hweOlRzLb3/uGMJyvdqDtDlbJlypTZ5ymY58Z636oiEiuJCq6yK75tkGLlhSJuFkUcD7qSwL0+zEk5NjEZo9gG1DtbEnGyQOAHDy4E5ViW3GLsnffheCoyAmIDy4w5ZXJtD0T9Xr2ZxkvontyZ0OdbWJdG9Vj4NI5IgoQqC3uWt68w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=gGeH0tyACMmhQR/uDsEu9m64LA0me1YDlRY4gCu/AB4=;
 b=SEBhJc4WG5bdgYXQPWz/rmuMeiIu5akgMUoz5nPApW40O1i6QAaaUnU8HcnjsUMEhEVa+hSqTRDb3aLRTuSZvuSpToRqkGcY1V/ADFQjZrRJ5h4IAPXbhyGCaQxfd8KjDQo9CUiverIHX+Fe43CILdFvK6rTveef9bHM+iqomBRnw6m8Ir6JOUEOwkUeXfNoOpOmmHFmWl4ZKLnkghChhfK8H2SQpialoOemTYvVlhD8RYhm/iNZrhMj5cjzC/8B0O36iYAxZHc/QHizo/977NzbLkMJvJQi8B1uJOSq++M3tKEkufOhwo6659HbPTo6k3PA/1ppXhgDHmFMJFIW2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gGeH0tyACMmhQR/uDsEu9m64LA0me1YDlRY4gCu/AB4=;
 b=eZnY9mPgM+PceGNhT1nWFGegtlgoVy99j66jLkdOMCvh2sLlg0e/1/+ccqBkUZ5svfIW0mIEgKww+/2w8pXRci4fPSr/HKTs47N085WFsePY17Rr2QnWHyfufrkUai0PYOJ0lFgI2yxzwMF5mXcASTZYUxu7F2WXnYSgS1TP4No=
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by CO1PR11MB5107.namprd11.prod.outlook.com (2603:10b6:303:97::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.13; Thu, 30 Sep
 2021 04:55:07 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::a8a8:6311:c417:ebdf]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::a8a8:6311:c417:ebdf%7]) with mapi id 15.20.4544.021; Thu, 30 Sep 2021
 04:55:07 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v6 7/9] ice: Allow changing
 lan_en and lb_en on all kinds of filters
Thread-Index: AQHXiqAUMsBNIg7mWkqd9/bkBgFdR6u8WVRg
Date: Thu, 30 Sep 2021 04:55:07 +0000
Message-ID: <MW3PR11MB4554D2C9C85B4F18B4C23C129CAA9@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <1628239746-17380-1-git-send-email-wojciech.drewek@intel.com>
 <1628239746-17380-8-git-send-email-wojciech.drewek@intel.com>
In-Reply-To: <1628239746-17380-8-git-send-email-wojciech.drewek@intel.com>
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
x-ms-office365-filtering-correlation-id: 6c712fc2-80e0-49b1-d52d-08d983ce799a
x-ms-traffictypediagnostic: CO1PR11MB5107:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO1PR11MB5107E683B53A7D08E7BD3A579CAA9@CO1PR11MB5107.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Fnz64QBdp8h74SlQ2sNQIYyAqET+R+NEd3hebhbPnOSdxDzAbTGVzkTzUBbsmgyEGqNc444+WesBNdRmoRtQ3uElhWapM6E72Is7b2WtGLFUUHuZRjgI/Xen9RZWH0oMSyzd2EMwHL1Qxo0qDs4R4frjyKKnjuV3AmadcezRJs5o948gCxAlaUJim8t3MSTK9mtWrplqdzHiuv62cfCZ1xihRkOAv0iXxVA5l5/S3rPnZb29YnQbYHkrSJb2Ovy/8xQcZqObVeggNxiBWPyJMdRNgN/MreN2gpFU2BXZj3DVsTG9Qj6HVneLzVWhqCHECSd4gUW5u5g1Y4M9USQnxHM/tW01F0bJtXU9oiV4avUJb5terIuEpDhvIjUwtKRC/DCQdNIru/ZOpJ7rjAPvo6xTVRLFD+V6ZQiXCzzxBM8DyWDPmL0ygJf3TRIcjC6xsUl8T6r+AIyDPOVCKHkQTgypYWHU7xmTVq+SUAZ1+v0ygcV3BQFkEZ9m6G5NweFttR8C5B1Cjr1clqRDy0hxgQVfC5m3F+Cem3EaEhtITDqZMenMnJQx1Vib9LyTARKjEq4uUYe9yygTv+4xvy5aF9uCmEBeKEJncB+4iwhLwG8hk3WWRzBxGBLYIVWquFngMQsLHGa0vuRZO0Bevryeqqb7pZsuntfuAVGTYG3LE7wSF4i4RrTung/brGTliHOH4r/jrsAe8U+pYOwnnKj0iw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(122000001)(26005)(508600001)(186003)(71200400001)(52536014)(64756008)(66446008)(38100700002)(66476007)(66946007)(66556008)(6506007)(7696005)(5660300002)(76116006)(86362001)(33656002)(316002)(83380400001)(2906002)(55016002)(8936002)(8676002)(9686003)(38070700005)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OL9ex3cTVh+8ctwX0OBXgI8aKOG3lh7PVoViCfVUKdsEr9xjlL7nEIgc5fzC?=
 =?us-ascii?Q?nLAhpjDD0DNMmCGWRL+qCOG2p0G+cWzhztWQT6BBOCG9jAVO/ROaJ3FH5mc/?=
 =?us-ascii?Q?ob4qw1U2XglYv7PbgQnh1bQpMkFV/l8Byy1DlStOuWo27wiTHkduezkiK0Zl?=
 =?us-ascii?Q?meDkXyDG1mptNVWRMS7Etw7uPLcLW794+ueRU+tJYVtxjvZyyyYtgk3iGouC?=
 =?us-ascii?Q?9vM51vEo4J/HTYSRqd97ks7T0TkBY2AXJax9zigIgf36q/yGs42s3Pv1G+ZA?=
 =?us-ascii?Q?zBoQwEEygx1kTc7aRoFv6BBXZys4Prq66yJ7ymBX34rXPS9rZXPWVAa2HIRM?=
 =?us-ascii?Q?FtUD7c0qn92kvM++9CdRUhpX/L4cDZX6QwxZpoM33YvJMmJoEgXr0ATnn9JT?=
 =?us-ascii?Q?jVk2ObbHPMF+/G+fLG1EkknVqs2mj8DXv7aadJbS+l20HeLWvohTht4J7zAL?=
 =?us-ascii?Q?eKDVcZvk9GnOMfA4U4MouF1v4JsmMUD3/co305mfTqooLA+AyiRqApc3KrXD?=
 =?us-ascii?Q?Dn7hXgg5F2A0EtvAnQsdfgc/aZiK/9uIYEz25krcwTcsQJEY4zfMiC9eOA7g?=
 =?us-ascii?Q?SYqtQs8E1lN1hBbv1gyCbRh5Vws2Q4D7u9JP0P7jZIWQsRrf1aldC5DQ2Eon?=
 =?us-ascii?Q?LXZoRGGdv7Rmuj4Hy/lL+hKShQuilTPU2CiOqdOMlv1UIqkOaFGsh5vYT309?=
 =?us-ascii?Q?v4gBYZBFYSYtqzI3xEYQ4XAIsx/aSmV1x+vx73RrQsBaRRL0v1ElbdhNuvv0?=
 =?us-ascii?Q?pnJWZnz2/hM2KaX8sGrHqrqOt7qUKIG6kUjHXnRmQTs6gwQKijWKX//yAXdy?=
 =?us-ascii?Q?0TbjuXNi55l83sDuU/LUnrSRc2WNK/WhtWeWV3o89CpHWcMn498iMSvxVEB1?=
 =?us-ascii?Q?U7FeVztb+iVn6G4XUbOYGrku1xPYTK7PA7dK6qOYIXEQwYLP4grC/gsTjO9s?=
 =?us-ascii?Q?XAjCjWbyiXZPwcSkZEJEV47ETSF9YT0dEIrDIfpytVx+iY9MA0ldFsDQ8SqW?=
 =?us-ascii?Q?3O9tE10nlB9zyD4vJXsRsWEdu55JEXDTYXWRyVzWNV/bq2/xxCpB2tZTwle6?=
 =?us-ascii?Q?1PGfXGu5BRJoRuYxsyfYOg6Tkugs9t80dwvz2bRy4TRYoM9SLznuO4Ij3MTv?=
 =?us-ascii?Q?XNTmASm1fgrh9F/lEeF0iPjobg4Lg89EaYchKehuqPLvTYSuijwP+Q/rIzbI?=
 =?us-ascii?Q?BLarv/627kdamJoYtXkwnsJV3EVlL0HQjjGxZ7BG6UbvZIve6vVItDGFDPsG?=
 =?us-ascii?Q?/qrPTjt9gL8x5iTbeq0ZtfuHteZQh4+nuhOL/Tt9XdorJYx2mWYyXfy4ZlHJ?=
 =?us-ascii?Q?ATQkWKTvGmYiyft7GwqfvEpH?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c712fc2-80e0-49b1-d52d-08d983ce799a
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Sep 2021 04:55:07.5192 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qa1hR0mmblhlPkxoPiIWg9t7roy6d6uLXHVflxDikv6EehuUsnQVOGvwPXxEk7tUrGNMJIrpIzoqonWqpx4Z6mjNDOoDTMTTXmV4zFWFA/U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5107
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 7/9] ice: Allow changing
 lan_en and lb_en on all kinds of filters
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
>Subject: [Intel-wired-lan] [PATCH net-next v6 7/9] ice: Allow changing lan_en
>and lb_en on all kinds of filters
>
>From: Michal Swiatkowski <michal.swiatkowski@intel.com>
>
>There is no way to change default lan_en and lb_en flags while adding new
>rule. Add function that allows changing these flags on rule determined by rule
>id and recipe id.
>
>Function checks if the rule is presented on regular rules list or advance rules
>list and call the appropriate function to update rule entry.
>
>As rules with ICE_SW_LKUP_DFLT recipe aren't tracked in a list, implement
>function which updates flags without searching for rules based only on rule id.
>
>Signed-off-by: Michal Swiatkowski <michal.swiatkowski@intel.com>
>Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_fltr.c | 127
>++++++++++++++++++++++++++++++
> 1 file changed, 127 insertions(+)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
