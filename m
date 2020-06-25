Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD0C20A381
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jun 2020 19:02:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3E49487F39;
	Thu, 25 Jun 2020 17:02:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vU3zqTYzxfyh; Thu, 25 Jun 2020 17:02:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 50D2A87F19;
	Thu, 25 Jun 2020 17:02:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2B3D71BF989
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jun 2020 17:02:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 26D35850E6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jun 2020 17:02:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2yO3xb2wxMUn for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jun 2020 17:02:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 704C685187
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jun 2020 17:02:18 +0000 (UTC)
IronPort-SDR: wkC9j2wgqP599QwmEAfUMkjkcfadRHXFHrqQGeXnCBbhS3AL+fZRjM461HIaL7kCZG/Vh22KPa
 mVWFJLwzZrKA==
X-IronPort-AV: E=McAfee;i="6000,8403,9663"; a="145029466"
X-IronPort-AV: E=Sophos;i="5.75,280,1589266800"; d="scan'208";a="145029466"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2020 10:02:16 -0700
IronPort-SDR: qV+xuNkpz7wDXlewao6DmZqnfBY+U+hwFkqWSpnlLRLuTzbGn0yJa/iJ00eM6yvyfZIYtOBRlN
 cG+RCuvbMIxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,280,1589266800"; d="scan'208";a="385523749"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by fmsmga001.fm.intel.com with ESMTP; 25 Jun 2020 10:02:16 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 25 Jun 2020 10:02:16 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 25 Jun 2020 10:02:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IuG//DUUJxgfsAL/nvDhVmgekyfokg3EcCu3QKGw01O9Lp2bMkIfXP6f+W0E8GurO+Q7F3+eHo2k000A1XG7Mm8qdo/aUwUEo49pKPbisEc5ZjSMmxvg2m2sX7FEHp3rKW5WlcMXXq4/r/FNmyY6xZGWcQrqfnKbwSh5GXu1jmfLTOIxJDuqK9eC4DVQIcWFPu3qQzhbjv/kujwYJPXVOOl2vKUHZhInhVLtQYeom71MFZSqV6Ou21+ObyYEKXp1/taQvZrMAdY53TMlIU000WBP5Aa/7Qclb+AlqOgLyTIPOQVXocHBrGHni26MO6B8Wtko5zL6CG5WWsff7dGbkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DaAGvP/mp/RRPrIsPNG1+N478Edv/r/2X2PgKtiEjj8=;
 b=D6qFtNvmLfySWCfg9utV/Xoq5c/UBT6xIvQPxoa2gqSn6yB+gNho1/AsPDqWSJB+ONnnJYWhT+Ka0KJF2u2hTIsvBC81wrb5nw3aXquMynDttGr5YekNv19oZorPDT/MRDAehPT5mnoI5W1ovzhthzX7ifCfDLm4Jrg0yOWmJSy132RxHQ8tDXLY7pMuo83O0wzsrqHG1MiH0tdr5aF/8kshrj/ET03WweVEJvoy8TdX2+EUrCkbSvlEx2ryHfD5aPsuR7oP3WJ8OZP9pdDS+fJzkRP2x5zuIHrDyWJMBEqhX6eNvxMUZtP41jaQ6xHn26SC+L6F6suKKTJC0dT2fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DaAGvP/mp/RRPrIsPNG1+N478Edv/r/2X2PgKtiEjj8=;
 b=NCHigf6vHrMR0Y2hdZCRUphIc/jY84bvke4DFRGThEYtCtDHyDOIzVPKPNHR02joWjK0Z/MkEJAZ5YYvA6IGCC8K3K+eF0RuRPW978E4g6C6PvUtT/xwWArRhyXKNkKh3aTC3fhRXgTDvhNGFZLTTgOjS/ATfcu+31UPki1f1Ho=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN8PR11MB3697.namprd11.prod.outlook.com
 (2603:10b6:408:8e::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3131.21; Thu, 25 Jun
 2020 17:02:14 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362%9]) with mapi id 15.20.3109.027; Thu, 25 Jun 2020
 17:02:14 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 3/3] i40e: introduce new
 dump desc xdp command
Thread-Index: AQHWSWI4YyMeNUor3k2lhGocK9BXcqjpkeUw
Date: Thu, 25 Jun 2020 17:02:14 +0000
Message-ID: <BN6PR1101MB2145A782155EA3C3A18F03D58C920@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200623130657.5668-1-ciara.loftus@intel.com>
 <20200623130657.5668-3-ciara.loftus@intel.com>
In-Reply-To: <20200623130657.5668-3-ciara.loftus@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [134.134.136.214]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7bc03380-4834-4a4d-c2e5-08d819298237
x-ms-traffictypediagnostic: BN8PR11MB3697:
x-microsoft-antispam-prvs: <BN8PR11MB36978D90277AF36B3D45AF238C920@BN8PR11MB3697.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:923;
x-forefront-prvs: 0445A82F82
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jc0bC6Y62ET+4MfngyiWmNzR+UIwsgUYCw92tmFc7bA7Jf34iDZ4Qx/80rofiz5RHx9pokChVYeXXcQvKY7VD4sTSoE9j+5dEyW780DflZ/jZ+6OhSm3ap+AqmQJOHhzEsBhzrtvPJUMPUrvdFmKSMq+60TWYr71L4D6S9SiHcHZkrgOm6MMKciVwB1mvhMvE8aFnhYAKI+/Kk7DwjnTOa+yp7bQGHiIJYoZSp28+Skas12IEJ5KLTR87WRxUwhmWyjMzQPw5HDlXyolQN9mBvzGEnjP3tf7uMYRQH7PAIfQECmKHj2rMyU97a3SrUVn
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(366004)(136003)(39860400002)(376002)(346002)(26005)(4326008)(52536014)(478600001)(53546011)(55016002)(6916009)(6506007)(8676002)(33656002)(9686003)(66446008)(71200400001)(76116006)(83380400001)(8936002)(316002)(66556008)(64756008)(2906002)(86362001)(186003)(5660300002)(66946007)(66476007)(7696005)(4744005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: efuG15RWy4wps6SI/jolfsEx92DCsxYafxKkkL55S6/otLAyOv+b3+l7RQvrqDEMLEtgdpuyix+WRRhVOOrTJfkIKY/ULW217KCfHHd4qbmOm5xjbO93WpHiTx2jcMC4D+HjgEBnMRTGWJt/bGlb744JG+aiyRC+752I9rmXHB+lGSywP4ut7iG5GKbaTWUnG0Kggn1O9Erq/SA1MY3gk99j0crJoQBC7vzlDdhOc9o9h1Jv95lwg/y75wb6Q0Xw5OzcAepMOqLOGTXcmq/QK5ol6aOfrzpL2eytu/eowwlZ2Yx7AqSAMqSZK9Yv4uRLFfHjtLKPU0L5vsVEAHvaa1K2tP5fNFlCn7y+BCuNzOC5yDymDSSG9JSPeM58C5aN8Dive+PxybHfqay+KKJgOV4A4KgXs08g4Gdso8+PK1S+LoVUDXHWScRXQBTb9scRy4cKGQzf/Cx4ASx3VyNqefh/9t740ZuSs0DdTV/a6yiN3oEiE+8IrjsnT9hmh9ZQ
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7bc03380-4834-4a4d-c2e5-08d819298237
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jun 2020 17:02:14.0891 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tThUioWlzDrSGzgdDBNoZQL3HpqXzmiWNQTYVJdh32bi7b98dp92O54t8oN+Ejrhm4IKpNc2g5CF2ZQ7y7fine9//z9OwMyDLkhG7JDAyxc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3697
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 3/3] i40e: introduce new
 dump desc xdp command
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Ciara Loftus
> Sent: Tuesday, June 23, 2020 6:07 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Karlsson, Magnus
> <magnus.karlsson@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v2 3/3] i40e: introduce new dump
> desc xdp command
> 
> Interfaces already exist for dumping rx and tx descriptor information.
> Introduce another for doing the same for xdp descriptors.
> 
> Signed-off-by: Ciara Loftus <ciara.loftus@intel.com>
> ---
> v1 -> v2:
>  - Fix variable name in description of dump_desc function
> 
>  .../net/ethernet/intel/i40e/i40e_debugfs.c    | 59 +++++++++++++++----
>  1 file changed, 48 insertions(+), 11 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
