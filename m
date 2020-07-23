Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 323B822A48B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jul 2020 03:26:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E5B5886DF1;
	Thu, 23 Jul 2020 01:26:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PX1D82PQt6m2; Thu, 23 Jul 2020 01:26:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2D70786DF2;
	Thu, 23 Jul 2020 01:26:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E25F71BF29C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 01:26:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DB59688AF2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 01:26:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NGQzsZuw64UL for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Jul 2020 01:26:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 48FA388AEC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 01:26:46 +0000 (UTC)
IronPort-SDR: mbk0Ww08ft42H/w7yA3d0CQXnsCQyyNoxU2QNtPfT0zpJ7yiXncwk7R1JmpQSGJ0W8Wme3JC+f
 3RML8ao7V0/Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9690"; a="137948721"
X-IronPort-AV: E=Sophos;i="5.75,383,1589266800"; d="scan'208";a="137948721"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2020 18:26:45 -0700
IronPort-SDR: zoA5ob9SZ1g3CDH9+9Dung5Huv5rl+EfFuxDBECVTV4o17713sdVH4ad930gZr2/Dqi5WGBEbo
 aX4g4/zLAwSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,383,1589266800"; d="scan'208";a="328397030"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga007.jf.intel.com with ESMTP; 22 Jul 2020 18:26:45 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 22 Jul 2020 18:26:45 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 22 Jul 2020 18:26:45 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 22 Jul 2020 18:26:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cX4mtc2FY0gt/FdL+z97W6ppH911irJARv/Zs9L7wTMYaEFK41AfjpPIJY9YDImkLU2jViO9gg6P+wJ+X8Br2yThyPLaYbHOIJin+xQT2i+JqUkCpNP1qS8+9pX/yIogO7gAryXjPrabxlK10WrwPtOoIfCcSdMN5+uOxiCz50Kb4ILWuc2lk7XUNacHDFtLHzc1ffgn5XxvOZ9cp6plW5c3HuM0e1MvwgHHkNmbRRS9Hqm3BbW+hxKn5Y+QhguQtOytXnNg9bFyiBXGtZ5gQeDLTtYAFcDyA9/0s8quvXRoI/zxiqweOVNKjeY9SNOIlJWp4g/RGJPn9965NDvyOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hLJ3D/GphWSlX4FfkA7KzkC2jrFUL128mobosMX6/r4=;
 b=lKB2borVK7duDgN259xg+U8N7mVul1j///7awdpSA5Mz9w06H3X35DpYr+yDiq4XPvnzpLviKSgY/cTYeILyARpOPfat5DdzieRM5T0ISca0Nj1p/brgTW2QnrShfQlcndjqlCbSXHNGRXpRY7Mz5jk/IXPP1ghtVdcFshyp2ZVZF+yp1MyDca9se6G84brFPkgi6fhgWf4wbXUVQ96wAfe59aZnZoP0GiJH5myA9VeU/kripqhpPDsUqnfdpPyGUlKtnTlFRA6qkeo7+uNPRe0v3MpRfIV/5Ir6hlEYFzrB14eJ5vbHFxXIvkUxym7E3ySIUvViOnM+Jvc4XfAIsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hLJ3D/GphWSlX4FfkA7KzkC2jrFUL128mobosMX6/r4=;
 b=AmxXGDViC8LC8RGQ/TS4tOyDnFW2CnL+OmK669hLAeDC3KKrr/DDNstbuJbDIUSX3qOqVhhaMYedGqeeIMDSmAmk5oTyy/Le1aJ9MwIosCm1knwxQuAyKz6X4xvu81FQolQHL52GQ3K4EMiE3jdK3d0/Ge2X+67fW/uwQjdxEY4=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB1537.namprd11.prod.outlook.com
 (2603:10b6:405:c::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.20; Thu, 23 Jul
 2020 01:26:41 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3195.026; Thu, 23 Jul 2020
 01:26:41 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S49 02/15] ice: split ice_parse_caps
 into separate functions
Thread-Index: AQHWVgz6swhp9aLP10iWWLjGCrIxQqkUdHdQ
Date: Thu, 23 Jul 2020 01:26:41 +0000
Message-ID: <BN6PR1101MB21458F5F374DCD53A54F18A58C760@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200709161614.61098-1-anthony.l.nguyen@intel.com>
 <20200709161614.61098-2-anthony.l.nguyen@intel.com>
In-Reply-To: <20200709161614.61098-2-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [71.59.183.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f503613d-14a9-4fdd-74e5-08d82ea773fe
x-ms-traffictypediagnostic: BN6PR11MB1537:
x-microsoft-antispam-prvs: <BN6PR11MB1537F4228B95929B427297DD8C760@BN6PR11MB1537.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3383;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lmh1d2u/cxNmk5FpbPEjpBSBJUxLPXjEkgumHnU9SPEjinXLULF3ax1ugLyTnNOqlBBlJONGQE94OaoMn8Qz462IUxX5C0Z0O8VIP6Dq0blauw/qCFpaL5cIiVdlNynEZ/ZOr0Np03w/Y68UeLOGxBIbjYvzfFEZoHfxh5S/Kzl5eC8Y9OwvQLRW3i4cIKi+cwhkK0Wqz/fjOHloK4n/gzyq1k8PGGwUb2lGq+LROdIaPQks/mFA5IfuBHC6BWPgxww/Bjr51RQ0X9E3lQjEVRPtwW2uKHL/evtrlPAugx7VBeLfvaFzrn2zINbAH0XAlKo2+rkL41af4woeRDWR1g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(376002)(366004)(39860400002)(346002)(136003)(66476007)(66946007)(478600001)(7696005)(64756008)(53546011)(76116006)(6506007)(55016002)(66446008)(6916009)(186003)(83380400001)(66556008)(71200400001)(9686003)(2906002)(26005)(52536014)(5660300002)(8676002)(8936002)(33656002)(86362001)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: BInqWgdQz1hE3lh0ltXQ0RN4YiPzVeDyU14trzhCezLcd2ILws+ew7TL5a8MyWux1hl4pGuSo/cuUwGVpVb6N7HgX0EJkSEHgePNk8Ka2EQc1X+x0YCWwWr8bpG5CMzJlWSuk5EC/US1MS4uqYfGivf+OaBx2n9bEh64ZO3WMAQ+ZnXL03HGMOEPFAHN2gOK5yRCd9rurQMmWOa85EJqG2pHufbSfMk5WwJK33giCgPjym9cPNtCNsPo9nw1+ujuxKBWXm+Uj9uzJOFy8+MfnbQRQpnWn9btqMga+FMcc4Xhc4sbXnLY8ieH7iQ/1EzCsDLv727NPdmmwj8Bf5R/kfgA0XLFupfKUbYZ74nkjZOCW3S1PxIUKpPxWzrT0wbuR0AZ/UqeSazI8ZF3pT5gGfsiFCK7tx6DX+7wiryCnQr0J8tIeHtC/M5IbK1hE5vrC0LSUABKfGyRYsgna9TXY2/qIzMRgSNfouW7k/ReVjuJ+VteSQ+96gC86Qx1ywS4
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f503613d-14a9-4fdd-74e5-08d82ea773fe
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2020 01:26:41.2057 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pT7SjTwb2+tyaHlfo7RL4rn8O6Kt5iN8dc/wr3w/PYytDm7Eimcy4a2wksn3hKtst3JOOAqRYz1YE3LFMlQ9ZHj5whMLB4NY3iKSCqZoyFQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1537
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S49 02/15] ice: split ice_parse_caps
 into separate functions
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
> Tony Nguyen
> Sent: Thursday, July 9, 2020 9:16 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S49 02/15] ice: split ice_parse_caps into
> separate functions
> 
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> The ice_parse_caps function is used to convert the capability block data
> coming from firmware into a structured format used by other parts of the
> code.
> 
> The current implementation directly updates the hw->func_caps and
> hw->dev_caps structures. It is directly called from within
> ice_aq_discover_caps. This causes the discover_caps function to have the
> side effect of modifying the hw capability structures, which is not intuitive.
> 
> Split this function into ice_parse_dev_caps and ice_parse_func_caps.
> These functions will take a pointer to the dev_caps and func_caps
> respectively. Also create an ice_parse_common_caps for sharing the
> capability logic that is common to device and function.
> 
> Doing so enables a future refactor to allow reading and parsing capabilities
> into a local caps structure instead of modifying the members of the hw
> structure directly.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c | 548 ++++++++++++++------
>  1 file changed, 378 insertions(+), 170 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
