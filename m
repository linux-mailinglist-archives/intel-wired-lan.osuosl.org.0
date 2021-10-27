Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5383F43CF24
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Oct 2021 18:56:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 042396085E;
	Wed, 27 Oct 2021 16:56:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9zJByOoIj9AQ; Wed, 27 Oct 2021 16:56:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EFE9960854;
	Wed, 27 Oct 2021 16:56:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 976511BF2AE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 16:56:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 83ED46085E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 16:56:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qE-39DlH5LV4 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Oct 2021 16:56:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 745E960854
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 16:56:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10150"; a="291048227"
X-IronPort-AV: E=Sophos;i="5.87,187,1631602800"; d="scan'208";a="291048227"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 09:56:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,187,1631602800"; d="scan'208";a="486764330"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 27 Oct 2021 09:56:35 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 27 Oct 2021 09:56:35 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 27 Oct 2021 09:56:35 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 27 Oct 2021 09:56:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CAY9FlzATkoFNmuelUB2D03+cpXNhbx76RyywsecmqpSbJB9nn7GZ2L2aaL+t2PldUBZ5ipmXUt0d1uXOBUNpYpkeyyWFh7Rj2DRyjpqJ1Rhu8lkG70Zn2K/PpmLeMZO/d7bFM7N18c3OE0xkMuwn2jT4rpXyauBLHmONzn64UnpE1CBaAAwyIBO75PqvdsHtpHmAWi7S6gwjmqmoeF9NkKLDeDJW8dBJD4Yy5wKPs/KlNR8zH5h4GuRX+rxFDeper6Wr0ED821fY5giwOvMKVo4+lBimyB0verP4X7syBaDpbmGNevfynqBDOIHkdhJkJsOcaHtYpfHcAP92+Ring==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s73fa1HmiKQJCslcwVMnyPzzYEFawYeCH3/5vLPLlOw=;
 b=J4TUswhz14wGzerq4kbsxyFdhUUTOgH8X7meib11nHPXoQmMK9y4rEzSAtyfljRFJvyIhsiq6fe7VTEHT2RM9tRIqBP2obRPDWEi8fAwXC9giJrGIu0k6Y5mOL+eRRZYhCz9NzCiMg/AiowX99n/LBZJdxTjsJGYjueXF6k8yKE5R3TWjeORP8fWyAflJ2CCwTh3eF9k1R/jDXyUj5CLZMDlhEcbGfSe6fejNkZt0Ve/bXOhO9ynLJvVcK/jV1ssOUoZSZ2qGPQeiGNMFYr0tk+IQDOLgH/1X3r7f29Rxn5Fq/ABnstImahPIAsUQiQHjz2mTktyUHhm8/rESWRcXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s73fa1HmiKQJCslcwVMnyPzzYEFawYeCH3/5vLPLlOw=;
 b=IAuC33dwRmg2PUmom7oFvXe8OoBJp96QgulJgW+lvvyWIF3NMBlZ1edomm3+pbH9VrN229f7DWT9gyKXFfhwso4JAISI2ZhlXZuPxhttDCHU9Q7Bi3RTOl8wK8d8bGBtKYLR36LlEP3EzC0dseDoH1P8ier/VXnncPy/AKkAGt4=
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by MW3PR11MB4713.namprd11.prod.outlook.com (2603:10b6:303:2f::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.15; Wed, 27 Oct
 2021 16:56:34 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::64cc:431e:ab08:2898]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::64cc:431e:ab08:2898%6]) with mapi id 15.20.4649.015; Wed, 27 Oct 2021
 16:56:33 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next-queue v2 3/4] ice: low level support for
 tunnels
Thread-Index: AQHXv5fFaV8u8l4UK0KYDRvLM3/nI6vnJ7GA
Date: Wed, 27 Oct 2021 16:56:33 +0000
Message-ID: <MW3PR11MB4554F88B02E021E0CF2090C99C859@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20211012183106.2315477-1-anthony.l.nguyen@intel.com>
 <20211012183106.2315477-4-anthony.l.nguyen@intel.com>
In-Reply-To: <20211012183106.2315477-4-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 26b17a81-7a45-4f39-f079-08d9996abb69
x-ms-traffictypediagnostic: MW3PR11MB4713:
x-microsoft-antispam-prvs: <MW3PR11MB4713E572B7C12B73DCDB6B649C859@MW3PR11MB4713.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1122;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4Xaqq6EXCCqrMjpqQfMF6d7ZcM81fVmTcuYIXtgrLfWe9tSQcSmeCFViNkUY+QoGxv9UauQCk+azI2jpaQbcFE7aT0TEocrFPN48JIMQVq+UVCX+Net2J2ggwsV2MmPk3qHdFbr69ONEFKzRwzJc0meGRwmPY4k49ijw/vZ4jtAMzQ4n5+jm0fU+t+Y5+3LbMlZnBftVktnISkhIaMw/FMASstKffa+cDzcECbxS88yCVOmA6BdDODlL7bPD0dIpoWqaTcAcR/MPPRTGVH5bxqNQW0TBnE7LEC+QkWxLiKS7s/uYWhX2w8D29mOwy7dBREYF8B3ol5jeJCoq+GrkK6ROw04UYdfT90XVtzTerFUY2OcMnN36qqdMy7z7Rs8aXbbl5sksfuVa+3A9HULxMKNOkjFI/BiuAc3A9KmwBjI/s1YEOiSMgWyS/1A2AcJyD0eiUL9+CtboB0+zSgdvgAtdNutcSnCLEW2YZnQ5WXCHzWQywcyPfISJZgckqu8Qi/z6yDfrXXbQ5lHdFbrYMxlUBvlyfZwfUg0kAqLhG2GjN7btjC3S9u+djbh8Qx7rEJrTTRhfdspSEGiqCunf8gAyYlC4rIqEOBHyzU6DUlplx1y6dzDnYWA/nyeWYss+pj/iORjPhRQTfvBLn6CUZFzT+/RC1Q+FZVssdAolg0/h6vC+3ck8DNIGaB0XUJJbkctTq/e9y8xk07WwxPInOg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(4744005)(66446008)(82960400001)(122000001)(64756008)(66556008)(66476007)(38070700005)(76116006)(52536014)(66946007)(7696005)(33656002)(38100700002)(83380400001)(8676002)(86362001)(8936002)(55016002)(5660300002)(6506007)(508600001)(71200400001)(26005)(186003)(9686003)(110136005)(316002)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?cYL3bDxL4yqEm339ffU0scpzD+7HA2lAHfclVyeVf27/WhP1/d8JWbkkfnq8?=
 =?us-ascii?Q?p4O5za/+1GVE8GmuXK0wNQqULFjkhNMELJbogBXoJwAm2pkqiKM1XpjqRruV?=
 =?us-ascii?Q?2c1fJGlyCNU7cvy/B6B9k4WOhSC2gkVrqiPHBpM/9lHzAGssPr60oleoMdcl?=
 =?us-ascii?Q?u5c+gytf0U2/KFGhYPq8mQZ1HDbMF244HJSykZCeQjHj1FmouDWN0gfFIUud?=
 =?us-ascii?Q?YHbbTmSbmppjeT/w0X/1W8Re4/EZAXoB3VuIIj6A60L9cFnphfQeueeQ0+Nj?=
 =?us-ascii?Q?p9rQp7IEVb8+GtXZnLysTf1GRO6YvokipFcC5TfwTDsGzruKlD+xpjHha/mf?=
 =?us-ascii?Q?7EsFS2Vx64BZ8lyGJvX+O1Bzry/2328sahIVNgDOpz8XCM0P+1pq9XggzsSK?=
 =?us-ascii?Q?Ge9v1SIXH6Aw1LXwjD8wCGNDuZX7Dn22bOuYeqOtKexV+LZTU5puSexxFM+S?=
 =?us-ascii?Q?1nNQs0GJXJS5h1MdptwWwbt0GzO9sh8LHEXEukuBVRGiME6VPzwzPgYU2RM0?=
 =?us-ascii?Q?9c7t2xAvW1ACDlBaqOutGoxcsl7yhZuXx2WMyYmW+Bo71FCEVvtTrJM2V9vI?=
 =?us-ascii?Q?Y4NG9mWNf5aSIqQkt1bZy98G4damyNZdbv2+35BH9aRcrUBxJnLhhtLewbBt?=
 =?us-ascii?Q?53TKA2jH862XmIJGl50m+9NS7MMiNa4llHp+W7AfteJ9EwunxaG9nw/5U6Y0?=
 =?us-ascii?Q?zupMWWHhhfQbp1DK21giF+OsYOqSrOvGDqXJhpP/kvotOW2s2/zWJY+7pHl8?=
 =?us-ascii?Q?/I3vHlfOB48fM2YZstHkL9WoY+oP1Ej5ahDfbnsP/zX8AceUDGFojVzOC64K?=
 =?us-ascii?Q?uJYavHM8V4v6lN0GK5JAdQUYKB41JkZpWC5tDFO6n010RYL3AGGlSrAqcopM?=
 =?us-ascii?Q?IqL3YJ0ChMbepRWiW/N0jQN4YY0ELS9xEn56mI3hzEZeKGIlwHMlq5rUn98L?=
 =?us-ascii?Q?6qwGCfIVuEVchqato8UJareLkjwINQT/I2H9vdogD3O4MjQtbYjaGngPV1UK?=
 =?us-ascii?Q?3FbCqBmAHxHSwwn3SsWEUy+O923bkbEPBomlXNM0Ewupq2x2WAJanxAutJuy?=
 =?us-ascii?Q?SreubXSbBuGbkQononzas+cBlRpWwT0VLDLCl1Y2tVc5Ox2DbpzTGK02jvgM?=
 =?us-ascii?Q?qIfAEYFKQcJABMW6UF1hiN2lbdgqBIea0anls//4q8zdKnTUIX9OwjcMcAQj?=
 =?us-ascii?Q?DraFQ758UEQtt7X/ihu6tWivXwcKgdPdaP0h5GtCXq1xYP6CSNAFIhqQFMs4?=
 =?us-ascii?Q?cHAoN9zKh+/HZKMwZp6Ew7XimyGEC27RrfYZS6IA+gULz+nkGFcTlaNB7daa?=
 =?us-ascii?Q?IyXtIUGicw6gRfRQddznYQIHmRV3tv/oD96sJ+qPcXKE1EdSYq8rHVCso0+u?=
 =?us-ascii?Q?jx4DkWkYEyP0ZfkZ4fMptvuA6HgeizOAvgmwk1I+mp4BPQxRSzxU0ALGFo4y?=
 =?us-ascii?Q?7w3PLKoyuxY2ihEbnJpOEle2ElUU+D6aoPGSEdN4nVVAA7oYSnLBqG+pXG3O?=
 =?us-ascii?Q?CHnY6EviKYtwvtBcQZkwU9sfWq5WXXmWXBJd8rmM7btm7PY1oJJcdqtLS4iW?=
 =?us-ascii?Q?lWqy6x5jNpq3ptBc/jjJzsfdQ6GgtDnHygqhGO668r3RzL0mL0t5Ki6ekqe2?=
 =?us-ascii?Q?lKuH9HKGU1726R82FABd/TDmOxZtVJItJ0MIiAO8Gp7EXeyPnTqowZxcVGNo?=
 =?us-ascii?Q?BR7RKw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 26b17a81-7a45-4f39-f079-08d9996abb69
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Oct 2021 16:56:33.8147 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Z4CJFG+t1iTT0Lreqlbi7PinuZUlBAoWHIfM3uvLrKZX0rN2FsNMgGw3/9qrS3YenJuioCiQnR3RJ/lMto0gWArgIO2CDmQcCdanVP4lWsY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4713
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [next-queue v2 3/4] ice: low level support
 for tunnels
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
>Tony Nguyen
>Sent: Wednesday, October 13, 2021 12:01 AM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [next-queue v2 3/4] ice: low level support for tunnels
>
>From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>
>Add definition of UDP tunnel dummy packets. Fill destination port value in
>filter based on UDP tunnel port. Append tunnel flags to switch filter definition
>in case of matching the tunnel.
>
>Both vxlan and geneve are UDP tunnels, so only one new header is needed.
>
>Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>---
> .../net/ethernet/intel/ice/ice_flex_pipe.c    |  26 +-
> .../net/ethernet/intel/ice/ice_flex_type.h    |   2 +
> .../ethernet/intel/ice/ice_protocol_type.h    |   9 +
> drivers/net/ethernet/intel/ice/ice_switch.c   | 264 +++++++++++++++++-
> drivers/net/ethernet/intel/ice/ice_switch.h   |   2 +
> 5 files changed, 300 insertions(+), 3 deletions(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
