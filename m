Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE2F22A489
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jul 2020 03:26:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2457786DEF;
	Thu, 23 Jul 2020 01:26:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yhnJdmjSb0pA; Thu, 23 Jul 2020 01:26:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 26F6786DF2;
	Thu, 23 Jul 2020 01:26:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E22351BF29C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 01:25:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DE30F24B99
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 01:25:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wmv5KoxtaL2u for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Jul 2020 01:25:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by silver.osuosl.org (Postfix) with ESMTPS id 93DB32408D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 01:25:33 +0000 (UTC)
IronPort-SDR: NfCs62ec+g7UgUz6qEB+xbyNm0bYzApOM+s+01warB3zLWkkFqYolW7iuZtio80Lg2i9s1iDI0
 xPGnOkD1sZrw==
X-IronPort-AV: E=McAfee;i="6000,8403,9690"; a="168585156"
X-IronPort-AV: E=Sophos;i="5.75,383,1589266800"; d="scan'208";a="168585156"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2020 18:25:33 -0700
IronPort-SDR: FtxiWAoCXM/hG+NTZ/VmVoGcwmcW1ekXn2P5bqJ4V7bCRRJDqzqkRkS1gexRA1e3y8rwO8Cj3J
 bU6h5e9Zneaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,383,1589266800"; d="scan'208";a="328396754"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga007.jf.intel.com with ESMTP; 22 Jul 2020 18:25:32 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 22 Jul 2020 18:25:32 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 22 Jul 2020 18:25:32 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 22 Jul 2020 18:25:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fnxqP1LDMyG0DxVnpEL9eQIwoHiCOjyKSCWzlqcJKNK/j0/aDoTtJKQ/W5P3vL6EercczZ6ty3qKZbNMUKS5Xn+0G6LYEClyTtekXdpJLZR1mE0UyNcgucSHAl+8soSXDjgj3CM7psUga6oIJFSKONMBNR0sn/AeM5YtHWFmmPELVyUvhi2q7bov4lZbPIp7bagMHNw33U5mHZyqvMAJytnYiamJFpA5Z/cu7ZusNIxwKDtX6Y2l9y3x0dd3joasEe3Hw/Yf2mAT0tokLYsjiAipMaYrsqyajUKBrMAm7Dm/QjXu6W5K8LqOzPpcsSXkKVMT16GF7F6SreIuk6TDrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gQRoOFAHGcyB6NJOOWdZpXmughg5mNqDkyHUeuulNVY=;
 b=Ei0HglK8vyl+u7M2oBsxPWwvPd7aF6iMj0X/SFq4q9unYZvTgULAROHzVYr6TnYHMDS40C/HRbDJqgEVfN+8AK7JdgFKbFGHVSJxfS1XOIOpuIn1RmInK+zOiDqI2HmOWxvLMhXPWX63ESNTwBEGoBsb+9db9azr16zaeCsVvd1b0FWU16akdzTBoR+0++5FeKHbpQM83R0rQQpvt3j1eIERz7gkNlldhOYESk4I5Wge8eXrBs1GRl8KjxuW8TrX2XW9J4tndH6iGRHlEmwvFTDoekV5Wwua5ryYUGFhylXrxkMhLmgLbj1E39Czck0qmDuLvpa5d17cF0MqnCHP3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gQRoOFAHGcyB6NJOOWdZpXmughg5mNqDkyHUeuulNVY=;
 b=y/uHwAw7Vr0f00dKArypp9TJHrLaUyz8KVcJfagHrKvk753hphgRQQJU2nWAbgwGD3KwCiOIb36FVZ9Dtk8wiCWplXBIAzDQahdpZ/KN4/9kpKZQjr+PjGwjiQUYslCqONTa1c5mXHxA2FaCRyfzKD7tyuBJPuXQsIWQT1zDkvM=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB1537.namprd11.prod.outlook.com
 (2603:10b6:405:c::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.20; Thu, 23 Jul
 2020 01:25:31 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3195.026; Thu, 23 Jul 2020
 01:25:31 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S49 05/15] ice: refactor FC functions
Thread-Index: AQHWVgzzLyej+6IqM0KGVZEMOtYiQ6kUdCUg
Date: Thu, 23 Jul 2020 01:25:31 +0000
Message-ID: <BN6PR1101MB214597329C28A32A4EA62FB38C760@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200709161614.61098-1-anthony.l.nguyen@intel.com>
 <20200709161614.61098-5-anthony.l.nguyen@intel.com>
In-Reply-To: <20200709161614.61098-5-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 36d32aac-8fdb-46b9-9afa-08d82ea74a4d
x-ms-traffictypediagnostic: BN6PR11MB1537:
x-microsoft-antispam-prvs: <BN6PR11MB15378CDC8E79E1D72A496C5A8C760@BN6PR11MB1537.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2657;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0zw0HKM8aVa0obX9oypByFo7VezlU+DBa6iM42LwFn38mr3yTJJQkIIZV+A0YKHQv7C6buv3GTqkxFv7Bg4eyMoMhiIgWCgsyCEuIO/zaePRCV9AosB0nnMN7JVqkn87+tcWP0u42aByJ0GOa632AJ+gJjipkYaRIQxVRV5aLwLn0mgWhFXIIUTg+jvUA4O9s7opJHoqO0kSLByvBJebs9K6Q5t34jBpU8fDKZHta9kSTC/8W+vSIQBhfmT/rN1phcAgYBk1TniFnAhQVJju3pIHu4MSsebluA3SXgSRdckYxPvbe2CW32uKqfPyttf+aBI323k154nOO3vqOXVsbQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(376002)(366004)(39860400002)(346002)(136003)(66476007)(66946007)(478600001)(7696005)(64756008)(53546011)(76116006)(6506007)(55016002)(66446008)(6916009)(186003)(83380400001)(66556008)(71200400001)(9686003)(2906002)(26005)(52536014)(5660300002)(8676002)(8936002)(33656002)(86362001)(316002)(4744005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: Qxj7cNHF2VkiywsFr2MdadrFpTQ97/R8sXKpBKFxo0uQrh8N2h7T6gtn9+bn+v+cFGqntEJNqZqjWfJFF1tu0y3OMm523WHC6dseGe7VSorLiTdvn+TCKkLyVX/B8mpO1sxjip4V2DmDMoa4Nj/TYeZb8/bm/mzzjbj3Aw7ZKXlj1gJzhldX/eCTFuZLvPB/RKpyF/DWKRdgyosvDvYof9MjoFr8YXkvSltAIxzz9oFgOtfM3WpjLdpHVLKp2ClqeDsw7YCZzZWYUB1S2CSpf7YmyG5TXws4fHkyOjKDXQAkdkMytAvHQb0X+v52Bfj1XGX+JYq0jtWPV9rsB3avoW6U+JljuZ8D40YDN53wllEGNhJimhmwAsjwHNfJKr4uiZxCH+xxowUqBJ5TV9AH1neTDzqFW8BYpj0w6t+H9yV36hXRNivRUtRoI3ThhudIRhjpcO6hQHJuo2h5+NS7SLChgrRmVJsCWe22cvFpKCZBYd/w64dFz4DsmksuAhtk
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 36d32aac-8fdb-46b9-9afa-08d82ea74a4d
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2020 01:25:31.1992 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RPTKPpr3GbHxUCEA+INKBVPSyPuK4uYHgdI4fs+DPwAEmPQ5ckm1XuEb3XnlYTXKOSpvK4luPlgNS8rUPOr6jgY7VFku/qZL5QPP24Rf09Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1537
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S49 05/15] ice: refactor FC functions
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
> Subject: [Intel-wired-lan] [PATCH S49 05/15] ice: refactor FC functions
> 
> From: Paul Greenwalt <paul.greenwalt@intel.com>
> 
> Create a helper function for configuring requested flow control so that it can
> be utilized by other functions looking to configure flow control settings.
> Utilize the existing helper ice_copy_phy_caps_to_cfg() to copy a PHY
> capability to configuration instead duplicating the code for it.
> 
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c | 75 +++++++++++++--------
>  1 file changed, 46 insertions(+), 29 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
