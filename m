Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E41053B4A9D
	for <lists+intel-wired-lan@lfdr.de>; Sat, 26 Jun 2021 00:37:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 58C8A60603;
	Fri, 25 Jun 2021 22:37:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z-v_33mlgPkN; Fri, 25 Jun 2021 22:37:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B0B8D605E0;
	Fri, 25 Jun 2021 22:37:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 208451BF5B4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jun 2021 22:37:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0BC5140520
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jun 2021 22:37:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NFzkvWgnX-OM for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Jun 2021 22:37:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5DDE5404EC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jun 2021 22:37:34 +0000 (UTC)
IronPort-SDR: 3VE0o3o7/AnmGoodyTvA5tLJ04wY40NcGuvYq2yFVUruA1vuNNLtw9n1iUg9NY0MsjCu8Q0R/N
 Q88I8WkllcDg==
X-IronPort-AV: E=McAfee;i="6200,9189,10026"; a="207787099"
X-IronPort-AV: E=Sophos;i="5.83,300,1616482800"; d="scan'208";a="207787099"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2021 15:37:33 -0700
IronPort-SDR: HL4sUoxyFnnW62njb2NInTBTbXCNg2Ec0U3BjmCmKmPvFGmP9fQ4ohvWrHyiczxjnL54Pf8gL6
 lcwmsJeUZ6aw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,300,1616482800"; d="scan'208";a="424577831"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga002.jf.intel.com with ESMTP; 25 Jun 2021 15:37:33 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 25 Jun 2021 15:37:32 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Fri, 25 Jun 2021 15:37:32 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Fri, 25 Jun 2021 15:37:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I49hpt7OGancijcgeWJsCmxHIKhVRxMwEYdEiaqtucgG69PbIbMUgFARzd71hDum9zly7wr8HKE07t1YF9mj/fc9UzqQplJCW7/SvLsP6kxYoNL7b62RsEDK2f0Zq+oUVlbBmPjPhc1qDKMZ5acgknMCVacbWT2PX4MHjTl4zhx6/Lkq5Yr6kfkWpJOhPhsB4zru6VFgZOT6zTlgRM7/baUHuuIT6p8hLRQ0c+ZjSoIrZEcpF9nHsheENLBO96OLUTdR0MKNoTYTzFfQpG1KMZtn0s5XQD6o/Cgk0qKlEl+HsI+IHRmdk8p2wrMZA/Q4MvxdUnOp2lC65xK7yee6Cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GhnsUaRZMT5NV3vv0FPdKQyYnG4XNHauWGi/3qnNv6o=;
 b=j0xIhvuz+q/TLaa8UxINkQ/VJ12oL7jhjcNntgGfTXkV2fAdcdPxSb38RSXn+k+DD4Q7UnNQ0OAwdOmLIAJ8SmvGaQhJtjMhgh4L8G6j6Za1MMnzRNqtR5NmIya2feteg+Ewey5mbYkYNUHsAWtp58UMPACy/fJN4obapAXl/Vf25y8mhlx7MQQUDbViq/1UBsOrM5ehSkrDuaoZ0g3LBSp4GXjHG9nTpnoZeOvwxRLcuLSWvv5o8efLcgNHlayQvDzKmbJpA8f8l4Zi/314vBIEmQq+Lr+omgC+BqVM+Lm4AXy9DTsI1/R4CPsmNzW9niuDHsGwmy6oI0JWXBRJcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GhnsUaRZMT5NV3vv0FPdKQyYnG4XNHauWGi/3qnNv6o=;
 b=zxPJFDeldzdiABWL2HYGcYPlydN960vE2Fn5pMr0Iac7yHTD08mY2ep9F8990QCc/sE2BsJcrS1Jpzo6ffWZ+oJeOmjbwa1hWafn2+NdmbOwQuAOiuFhEuSHVwMKQxK/UajnfjmK9ll0L/mq2E5kJ7nxVMJ0yLj7owVBDT0Up0M=
Received: from SJ0PR11MB5662.namprd11.prod.outlook.com (2603:10b6:a03:3af::7)
 by SJ0PR11MB5614.namprd11.prod.outlook.com (2603:10b6:a03:300::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.18; Fri, 25 Jun
 2021 22:37:30 +0000
Received: from SJ0PR11MB5662.namprd11.prod.outlook.com
 ([fe80::58ac:cdd:41f6:93c2]) by SJ0PR11MB5662.namprd11.prod.outlook.com
 ([fe80::58ac:cdd:41f6:93c2%7]) with mapi id 15.20.4264.023; Fri, 25 Jun 2021
 22:37:30 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Gomes, Vinicius" <vinicius.gomes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-queue v1 2/2] igb: Fix
 user-after-free error during reset
Thread-Index: AQHXSFin4Z4hANRYCEGwamhIreODo6sllJnA
Date: Fri, 25 Jun 2021 22:37:30 +0000
Message-ID: <SJ0PR11MB5662A51872F9209E87C30217FA069@SJ0PR11MB5662.namprd11.prod.outlook.com>
References: <20210514003104.1360697-1-vinicius.gomes@intel.com>
 <20210514003104.1360697-2-vinicius.gomes@intel.com>
In-Reply-To: <20210514003104.1360697-2-vinicius.gomes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [71.236.132.75]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3ab55038-eeba-495c-0623-08d93829d115
x-ms-traffictypediagnostic: SJ0PR11MB5614:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SJ0PR11MB561447388E6DC17263B15C08FA069@SJ0PR11MB5614.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 552BS/+4COy19YPyoKYs+kLb5i7W72PtmWafirMeVvG3Mst8wUfKfgb3LqxRTDn1+Hns7Sz/RuaxixIO1pRVxB4rnriTHzDqiEgXAKLYPZrpiWFSseSdf7W5Imn3zCr7atszVvRGiHy2OF6BPOfAX97tRSxMDu1jEuHWpfgiPE7sC/ffIim0ICabbEn8HC8euOmtmzUWuL0zgvt8+JqYDD+3udOplb/RTPWvt//8EKhtSpPkvdP3p4IHsrNc5cnwBk19qzXP8unOqzS3+X9Tt/C3O87flpbzAo3/Dp5G9JeZLqtVLhwnUhJkPe+0bXlZzHD8J8mZm/5ILw/qK6WGYCfBR9TwwaPIWJJcXne+FHrSO/uk2IZbEEjk2F1wxtvCotFIv/xQckau8uQ0rMm8MnCuI9USnHsSHyyV456+iB59F+aEYduL5ong0vBFCD9VIJx82q1X/0mYabvSB49+yjIx1Aq6mS7ICpnufVuC0gipUG0pYN7OCsPwz7bo31K5mU/eYiF6b/jmrWN5A0Fc85DKkCJ267oSrHDGhDD43f2GQrLXHoUl3yjyYhAuMBHLIoSYcXYQ3QsE/tkLuPqQJJ6qgd0AmuWQ745pk2CjGwLCGP5bt6EE6WoC0UuTXy8InE4di2UMbp/5dDXovbeiCw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5662.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(366004)(396003)(136003)(39860400002)(376002)(52536014)(86362001)(83380400001)(76116006)(66946007)(66476007)(66446008)(64756008)(38100700002)(5660300002)(8676002)(122000001)(4744005)(55016002)(9686003)(66556008)(71200400001)(6506007)(7696005)(2906002)(8936002)(110136005)(186003)(26005)(4326008)(478600001)(33656002)(53546011)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jr3sCO2UkUGAQHSPbIaCNd59QHv9eRhYFJjOx/SR2ZQhsN4+NjM2lFUTNe3x?=
 =?us-ascii?Q?FtNWUbbSrsiubmlDA/a7Gu79yQDs//K/rxerjtHfNGjMMtv4KiUgcfumWDzF?=
 =?us-ascii?Q?TDs8yw8yvUriJXUOcj6a/4ozvG2rIcTmFP146yM4XRXjRjRMgepSYEYx8/E1?=
 =?us-ascii?Q?SJMycET0tSEK1Echdi9e/XJlf/Jmp99knwvFg7GSgMIynRcDpvmccWItYyyH?=
 =?us-ascii?Q?LzP6iC+xpXO0uu1Syp7p/g0SzeYbC5F1cGq4yLojiF8JshMin5S2uErrhyPm?=
 =?us-ascii?Q?BK8DPn9RnfWGvYF6oAY6Mqb4JOgZzVJZGqN2KJgOqB6HZp+/pRcEnTf93O4/?=
 =?us-ascii?Q?j8chGsjoBVd2Gb0uvGESWYs79wKo04WdqsoJTFgeKfuRnqh8Gqn5duOc6Q4W?=
 =?us-ascii?Q?IE+eyKK+Ud+GpknyP16yMduqGs6934QRdhSYAPp+DWIyLMyPZSLuOs6LIU2m?=
 =?us-ascii?Q?ejpkMhgqcgFXT/pS9RfEQPlmuQV7mPYgwI8PS3PUy9mKFhn2BpCeYB66h/SO?=
 =?us-ascii?Q?T64jvi5pM0CU5Sz6NCaaHDwS1JZFElndp82+F00O4fkHw7qXwM6x+ZG50Cyt?=
 =?us-ascii?Q?6cT1T0yCx2HTakoBdugfxIBZT0kJG/LmNJG3hgTyCPENzNk8znYzJzkhGZmU?=
 =?us-ascii?Q?WMUg+XDjbVx3QIPnxwicGXuRSY+jYIp5Y3wY52UIlB294EHjNo47dH3YdS/L?=
 =?us-ascii?Q?sy6KPMmBdDXPGG1ro5GWv8hkQqa6G6vLUj9AfUL3lr/moennvh8NkDKCMeot?=
 =?us-ascii?Q?uyarrg9XfKK60ODwxc0pJSDzF0DQbuy7mZxpl1yCjJ7GghkbguvyBekBWYjW?=
 =?us-ascii?Q?hYCnSGdFnn+Q2cwsRK4RDAoKmlqHA5ECi0TxBuhThzk6sEz4JTfFk0/WHrXF?=
 =?us-ascii?Q?t0neAhaadXXW+rH/VYBXqKTKxTUJZT6yqv0+DG7yK2fUVWDnsmsSHHlwbrZt?=
 =?us-ascii?Q?V5Uu66IhYXMb9mk/nCahkZvYbV/FBgJgoiIYHeMfCZ7yWtWSbPClH6RrWNOg?=
 =?us-ascii?Q?nld/KASiwvl8SeU2PdnPs3SDSHQBRpl07fRnCi/LTcu5VZB2upz4BoO3vgQ0?=
 =?us-ascii?Q?PrUmhR0D64hsT8QkVRttzUoj54ye3jsRyB2pYgsZfudw1JcTk6zBEJ2R+U52?=
 =?us-ascii?Q?C8PIrL5payYk6jit4zQBk8L1hE4FYRLOUhMWLiv4CkoR16ktmYnXO/GYzlRq?=
 =?us-ascii?Q?V0uqmCLikbPMQGnj5UwX/G52w+JZ7BPBjGAh6vRB6Q3ZOsvxHVbAoia7HN87?=
 =?us-ascii?Q?OKVj2xfpxLrUTHwLvpzdve1XsIzUgMfnd2OYZbk4XEcq2Xa70+dVEeoSgD1+?=
 =?us-ascii?Q?QiRxUI1Mb9lRmarBcDw00/J3?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5662.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ab55038-eeba-495c-0623-08d93829d115
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jun 2021 22:37:30.1131 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2zWEcLugWLpr2H/bsHOnltZA37RoNIceRQB/V3QyQSnW6dPWxdZXxoj1mBw9VcbJisJQVL4qGN7cdXNzLgvKPo7lji2xizgPLynkL8qwJG8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5614
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-queue v1 2/2] igb: Fix
 user-after-free error during reset
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
Cc: "erez.geva.ext@siemens.com" <erez.geva.ext@siemens.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Vinicius Costa Gomes
> Sent: Thursday, May 13, 2021 5:31 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: erez.geva.ext@siemens.com
> Subject: [Intel-wired-lan] [PATCH net-queue v1 2/2] igb: Fix user-after-free
> error during reset
> 
> Cleans the next descriptor to watch (next_to_watch) when cleaning the TX
> ring.
> 
> Failure to do so can cause invalid memory accesses. If igc_poll() runs while
> the controller is reset this can lead to the driver try to free a skb that was
> already freed.
> 
> (The crash is harder to reproduce with the igb driver, but the same potential
> problem exists as the code is identical to igc)
> 
> Fixes: 7cc6fd4c60f2 ("igb: Don't bother clearing Tx buffer_info in
> igb_clean_tx_ring")
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> Reported-by: Erez Geva <erez.geva.ext@siemens.com>
> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 2 ++
>  1 file changed, 2 insertions(+)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> (A Contingent Worker at Intel)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
