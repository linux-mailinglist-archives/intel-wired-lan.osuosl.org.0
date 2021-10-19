Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A55432CE8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Oct 2021 06:47:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B765081BC5;
	Tue, 19 Oct 2021 04:47:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NC7N1Tnxp-Mo; Tue, 19 Oct 2021 04:47:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AD4AC8186B;
	Tue, 19 Oct 2021 04:47:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8F54A1BF5F8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Oct 2021 04:47:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6E5C4814B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Oct 2021 04:47:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mL6hyZjJ-lT2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Oct 2021 04:47:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2107781069
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Oct 2021 04:47:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10141"; a="251888211"
X-IronPort-AV: E=Sophos;i="5.85,383,1624345200"; d="scan'208";a="251888211"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2021 21:47:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,383,1624345200"; d="scan'208";a="493920971"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 18 Oct 2021 21:47:33 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 18 Oct 2021 21:47:32 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 18 Oct 2021 21:47:32 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 18 Oct 2021 21:47:32 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 18 Oct 2021 21:47:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TygNjJtGjqjt9dvROKAf1QJcaGt/Z2KJQoy+iitDDoRO4z7jn5pQaDgVM7HO4P6OaziUgIzlRp0UT3qJrEAxUsxKL6m1C9Hlw9tUs/GqxJUee3zz4Z89Rk0wy2xiy1zIVFc9I+O0grdTFtb0/aTapIGk50rSIwQNN1tW0x5rKzJ+WZUhF+fuMLgaXj4S0xQ/4iD5cvbk6Rs/US8TQjwItHSu0oSAEAlCRkFtwRvmxDf9esw5cuBhvdMFQuSOxEH0fcqLxige8FlWF+io9b1Jgi/Vz24hYMCWjDKsT33QYNwthj6EMZegsMJXiXqNBCPDZ+DgEoe52w8BzMVwnmPgoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mMFScy9k6xFqggguaKjs//B/pyJOo6dAFboRTvviJcI=;
 b=UgtVCSOfQRfs7ZKgZoBHJ8VT0j/DCtdjU1A2GRemx6/HGw4ulkzhMKN9pW6SmwNYj7UnrknZI8ReruUQ7f5LO/VTBV9n5nQp8Nrl3wuH/VlvwSP+j6R4t//beHU0hJ1MT1KMfu0K16IDmgKIS6F5oIouxLGDuKJO0ZyTsiyXOejPPF0OHHz4JQjrztGGjPuadqArT0lbwFTv3DZKVea50pEPBcLhpQRpYVxYBk9HTIv+Clu4qYjMsjqXCUkjOGw+OZmwRV2amvlgfTPk4tBI19OVx47bz2CHJJdLLqCWO64rfD1ldyEkdF4yrwhKlUysHkds66O7dBUhavY3wS7wgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mMFScy9k6xFqggguaKjs//B/pyJOo6dAFboRTvviJcI=;
 b=O9oQpgwqWQ3nOe1EXWo5k/wFVb22z+HUyVsPH/6L7QnVnFZRD5lumha06bSDIr9JYLfvNNGIaIagrL5YJlR46puQcZU4toEugl4fGsj/kqWKv2p+LTBCACam0V7/+BwQadgjH98gB+VaO5n0G+CSgcRymW/2UMqRAwuIab7c5as=
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by MWHPR11MB1790.namprd11.prod.outlook.com (2603:10b6:300:10e::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.17; Tue, 19 Oct
 2021 04:47:26 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::a8a8:6311:c417:ebdf]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::a8a8:6311:c417:ebdf%7]) with mapi id 15.20.4608.018; Tue, 19 Oct 2021
 04:47:25 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: Manage act flags for
 switchdev offloads
Thread-Index: AQHXsHi90bLnMSUP+EegeEdk+zHInqvZ56fg
Date: Tue, 19 Oct 2021 04:47:25 +0000
Message-ID: <MW3PR11MB455416F82C612CBEFD2748F99CBD9@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20210923124348.2371-1-wojciech.drewek@intel.com>
In-Reply-To: <20210923124348.2371-1-wojciech.drewek@intel.com>
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
x-ms-office365-filtering-correlation-id: f88e27eb-f69d-4446-62ed-08d992bb8c49
x-ms-traffictypediagnostic: MWHPR11MB1790:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB1790F67286556EF6F05714589CBD9@MWHPR11MB1790.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: b2J1h4ecjx5yIZrzw4EcIrC4L+TpVmQTIqjt9RLV/I0bxiws+MS75D6xWeF2j65xFgKW8YvdOwSB2WiaiBpqZl2/o8rpBZzsJ4uY+JjxJYXOa8VdMxEHD5uyyBSeFaqu1Qt4W7xSTR8H5wuxunBGqTy/TAt+GiXnSo6SzpBRh2u9HSaVRv5FdFoTPEtPDoXZ2ogy2wYzOeHdhqKhrrKlVS5Y/DErLcLh1lkrcVtuAY4P9tB2kgXIWMo62KjLlyWKrrPzp3vZweF6DaAKLuCvoIOCOoeFs6U8GBmjdHOPHvMyOOWNwLD+wOBLBcsKDd6hP8l626We4k0S1xbMzxOMR/jvEoJggY9cf34GxviV+xExEFct9LBOD+9Ck4J3n4+sFV6TrmnskdaGEmgZvuweM0B91wzpAN+CWUKmmAfG6Ur+jpu39RZlgHwGdOgpQVnQnZY39PVtyYMyZDZhO15HNNQ1/TMUQmklaTLIPN5REwh39ghjfzmItKcWjil/R5Li8rzG/zfbxNugIh5rBZyQTYB2a7szHyjm02x4Xt9wnoL2sVIi6xTLRUor7Loi3S26nzpP//ffye31LtL1ooX1d3xldQ0DMhQUHPj/0PnRCEz74+/9aY/JuV/OAn+hJecWSgXkH/72uNZBmlnMnwxL2/+ddHCB4ksVnUTGfR1Rf2Uz3R+iBVSuwTp4apImmkKiNjJG8qliFk7BU8T3bYTEvQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(316002)(66556008)(76116006)(64756008)(55016002)(33656002)(83380400001)(38070700005)(66946007)(508600001)(86362001)(110136005)(9686003)(26005)(66446008)(5660300002)(8676002)(38100700002)(8936002)(122000001)(82960400001)(66476007)(2906002)(6506007)(52536014)(186003)(7696005)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?thNHFJY4RfQFJctkce/QI4xVZwhBBL5pk8HhKJNGfEod4iQ3otI1LqGf5gU1?=
 =?us-ascii?Q?T6CiQC4z6xkfxy6eFmnme+sVEfFmXlma3FjRAq9Urdsm27AVVvc3DIrMzhay?=
 =?us-ascii?Q?OM2BRbrWUGRUAtueyiVViv+28c26dOA8/xnaZC1RP1MxvD+wjM3zDqFZb//D?=
 =?us-ascii?Q?nO3uDSYHeQJTVLgVKM7YdoKE3tzMsMVuhZBTHANEvY7Rocjdhd1aevePP94p?=
 =?us-ascii?Q?MVMChbJILmrbiaJ0B6sJ1HKVcq3T7XwMSCiDY4JBQ1eH6mgar8Q3Ta/P6Ccb?=
 =?us-ascii?Q?Yo1kzlD/syhu+J5tuT1nqQ5u5YlNoO1BmcqTlc6GgEtaDWuOx223gOXKVbE0?=
 =?us-ascii?Q?Z7HZCpzBKnVJvJHZbnwtdIOul607NFCpgF+ckEeaTz5qkXfCIa7qfEG7QXiY?=
 =?us-ascii?Q?BiZEptvA7wEs14+SpEP0TtDXGRX4Bg5QV02Pi8azgp+xZDUXU1znklKqIXF3?=
 =?us-ascii?Q?nbcahwdBBSfiSAKwBUZZ43yzpZnnwZ9CSc9vpDbXfb0qb/hPpZESlTUAus3O?=
 =?us-ascii?Q?qukNdyBLTwkGh13M2ys13CzgiQ7pT0oNC7qaACDAM9Bpp9IryIUZFbri4xn9?=
 =?us-ascii?Q?8ZhKHeaNJowO3wRLOhKvGLvzlqHoyxqCkIiWPaQ1TFqNJU62hXAMJ3U2Baz+?=
 =?us-ascii?Q?injsKEoGv3n/GOR0+Juyt2w/LL3Ep1otpW8StFKbgSIHJneuvubGUJqAIusi?=
 =?us-ascii?Q?OjwdBzkcZ+VwOFyZLWU6heVwj/DNUEgl0Y6FqoWzNyDnvI58Zl7boNqEVXGA?=
 =?us-ascii?Q?gVZQCrGEiZc/OmHBapeIVk28uATznoIb9oLyGYryZu3rN1S3dhBYW/qXdEH7?=
 =?us-ascii?Q?vUcCju49rnUO7bn1hSaNpvg6jUe9c5DEXjbymNwDdIqGocaIXeZ/dvPCVWWD?=
 =?us-ascii?Q?g882NS7gkCnGihCSFRBmQHcarnAEyfO+voMquNEYeh0vTAzovFhg+Dff2QpZ?=
 =?us-ascii?Q?fnKYqsKmPli88QPD9Xnd53fJSdn/fvwsN8kEs2frT88y0pyzKp8nhDhWBJQ6?=
 =?us-ascii?Q?rWOQJrDhsc4KbYzmxYJuUo4cADkPyWIiJ4ZlfQ6zXPuYmsK3QlA/YueHliPy?=
 =?us-ascii?Q?3hi+aFoT+rDTCf5+Ot3a54739Ze9OQ/sFMUEBPBEPUVp1KEF5HwIW+DIwcwo?=
 =?us-ascii?Q?HphIeYy4AY7ct2w7K3FVLzHVghl/kTIQ/rA7HpdQBoGQ/V1VaIa9KC5gM3XM?=
 =?us-ascii?Q?ldygIYljfC2c1TvTH9h0KX0cIab7QquxAAn5JVu/D/x1OVyM9osuvI1b0tpq?=
 =?us-ascii?Q?g9o4dFw77Ct1g9JYzyoIjJyjm/N4nB8Sn6OSqvyHZSulY7FZJbXVCBf8fimg?=
 =?us-ascii?Q?Y44LXksY3yR5uw7Fe5MBnitO?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f88e27eb-f69d-4446-62ed-08d992bb8c49
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Oct 2021 04:47:25.8510 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WTiXQGYTGjQfAnZxggHuntvkoNWpFQATOHthoWP9EYcDHi80LEz1jiFvYTADANRqCYgAscuj6dY14zDa8KKEtGDfhHKSGBhPCPI2EQqHgKw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1790
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Manage act flags for
 switchdev offloads
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
>Sent: Thursday, September 23, 2021 6:14 PM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [PATCH net-next] ice: Manage act flags for switchdev
>offloads
>
>Currently it is not possible to set/unset lb_en and lan_en flags for advanced
>rules during their creation. Both flags are enabled by default. In case of
>switchdev offloads for egress traffic we need lb_en to be disabled. Because of
>that, we work around it by updating the rule immediately after its creation.
>
>This change allows us to set/unset those flags right away and it gets rid of old
>workaround as well. Using ice_adv_rule_flags_info structure we can pass info
>about flags we want to be set for a given advanced rule. Flags are stored in
>flags_info.act.
>Values from act would be used only if act_valid was set to true, otherwise
>default values would be used.
>
>Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
>Acked-by: Paul Menzel <pmenzel@molgen.mpg.de>
>---
> drivers/net/ethernet/intel/ice/ice_fltr.c   | 127 --------------------
> drivers/net/ethernet/intel/ice/ice_fltr.h   |   4 -
> drivers/net/ethernet/intel/ice/ice_switch.c |   9 +-
> drivers/net/ethernet/intel/ice/ice_switch.h |  11 ++
> drivers/net/ethernet/intel/ice/ice_tc_lib.c |   8 +-
> 5 files changed, 21 insertions(+), 138 deletions(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
