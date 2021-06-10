Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A07C63A3479
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Jun 2021 22:03:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 58FA483C55;
	Thu, 10 Jun 2021 20:03:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R_ShUtYE3Rf1; Thu, 10 Jun 2021 20:03:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4C8D883B0A;
	Thu, 10 Jun 2021 20:03:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9312B1BF475
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jun 2021 20:03:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7DCA64053F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jun 2021 20:03:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RrOiKhGJA2PF for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Jun 2021 20:03:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BCF79404CA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jun 2021 20:03:41 +0000 (UTC)
IronPort-SDR: pLoQJBvzeuskPemnDCkwH5vlrwRrDUa6LshWAWwBkuYNZN7AlyOSW2AOIkG7k9QcE0Fxi0m37w
 8b79hmfdwrvQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="185080330"
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="185080330"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 13:03:41 -0700
IronPort-SDR: 3Hhm0zUdUCv6qdF98Zb/rqDro2aEwBxEByF2X7/bFVjnSAkpA8e2ZPEURLYRgTgWQqoSmTQV0T
 FJlNpwwtxnsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="477463865"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by FMSMGA003.fm.intel.com with ESMTP; 10 Jun 2021 13:03:39 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 10 Jun 2021 13:03:39 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 10 Jun 2021 13:03:38 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Thu, 10 Jun 2021 13:03:38 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Thu, 10 Jun 2021 13:03:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LCoSx/fr1nsca9oSSuD5WE6Ozq2Zaqilfhsi/vp7c7lL2BtrTukUo/i9zgVpM0KTJD/LrWdCDv7SY/gtLS7SavexUSOwqzcorM2KIgJMIVM5vVsETbLf/6Z73okHYYtTiooB31EWtwCX8M2ata9fE7sah6C1mjoyfOFvsZHaVSunovmMhVTZAlOYl3VSWazeaaf8VBFPrRwfid2EIeuVIG2N5oAPDswhA9KIvNdZgyTGsH7ptB3VeagIucst7ruhohgJmaLtFSC60maYoPE+vMRj6qmMQHebEyc7fT3uaaITFsHgjs16N0D75DR+4zF8Yb3fdMREqu0Ix6M2BtZJig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g4tQLQkSRVtwvhlOHWwu538uZXwcx7D8B1yjR6L1oec=;
 b=ZdeepPboMdPmwoQ8mi30/yYUpWun0gPe4zMuI9qxIPh3x5k7PkFGjLE6tY0k1mkYJ4JH3oeNFv/3IB2gshnK5VTM5KislPpLV7QbNbVjgyzgoIWhXTviO9RcKEKl+2dBi/W/bt87PxsEarrCrfV0zkmiXAs2Lt4i3nYvmAukpqy5TtviuaeJukbUutAF+5aIe0Ah2EYVXxmVpkRPxfI7qdHwKWIr9U2poTD4aiSEJCCVUwq2dEHAPZhFiOp1RSt+kB131EJ4vmw18eQOMeYBNsRooxe8L8iErNRe96hfTwPhpjHzeWPmr2MzZZWDQt1wzo1tndL9dLHOPfhYJaFPGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g4tQLQkSRVtwvhlOHWwu538uZXwcx7D8B1yjR6L1oec=;
 b=vco0vU5h6eAsMOg+B8HzkFFUNG+K2+pKvBXuzv7F6jBSogCBpHmOuJSY7KoF0QDl6ddClWLBeW83kvce+xynJ9m/IsKBZTo9Gq7puvgIsSsF9ofQ5jrWbuKOI9J8evCoPMLELRXbKcFKlH0Vg7e+fj5/rqSHJOIN1xYjYmw9068=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MW3PR11MB4522.namprd11.prod.outlook.com (2603:10b6:303:2d::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.20; Thu, 10 Jun
 2021 20:03:37 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43%7]) with mapi id 15.20.4195.031; Thu, 10 Jun 2021
 20:03:37 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 1/8] ice: add support for sideband
 messages
Thread-Index: AQHXXU/bGaeaHiJS6UuXiAzX9/8ubKsNrIlw
Date: Thu, 10 Jun 2021 20:03:36 +0000
Message-ID: <CO1PR11MB510521FC9FA182A8FBF75BA7FA359@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210609163953.52440-1-anthony.l.nguyen@intel.com>
 <20210609163953.52440-2-anthony.l.nguyen@intel.com>
In-Reply-To: <20210609163953.52440-2-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: a85343dd-228c-49a5-a3c1-08d92c4ad58d
x-ms-traffictypediagnostic: MW3PR11MB4522:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MW3PR11MB45223E5B169909903F8314ECFA359@MW3PR11MB4522.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /fvRSS+zlXVhyJPFTOwhjHPfSi30s61eIre3KFkwtW/CDOHTnBijnlwL5ZYK4a5lxEzhaQQBs7YKQOSnjcgS+U3zkb+ZRKqXwhPVtkPNH8C+g/XIW8gcx5gd23t5l1i6T/ntjxv17ZTZWIBQIELPbZRy1SYtoEXlyvjTrbwUBYi+5AwJFAv3t9b0Z7t9D7vvWgmAVPANySM7szM57L6RLmad8IX+dld5x7uCYxbNMtZ0/p8QNF28FfRyhYc+xidSHc7AJSqukLdm5+X7rUcaG+Z4nUbLFGCRCnHqA1156G9E1PJcqpWy+oWhdcoaJ93vUDdNgdWdGdGpI10vMQl/d0gyY6aSEwFnc9Ct4OFNk7/2FalXQzeM8BHKisol3oNT+IySDUhUpQ4dEPQNBbrE5nJD26IDKf3zUwvEqztv40+ub8KUl5Pysp7KrlvqKyp+EcKfWFD6hH0lQGbGwkfYKKT2Dxv43I3myUBJDQDftTvWaEcOFa2zH5hpYS8GEGxToUctWlWsaBslVpkQN/H9SksUc5N9vnaPI7nD+mPXdciiCHHUyj4KBGGpkda5qkV9Y501Cq3uv8UXkScLDTrXATKmDG4WFfdNBuk/3RuLMLw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(136003)(346002)(39850400004)(366004)(396003)(8936002)(478600001)(83380400001)(110136005)(66946007)(122000001)(66476007)(71200400001)(76116006)(316002)(2906002)(55016002)(8676002)(66446008)(26005)(9686003)(52536014)(5660300002)(186003)(15650500001)(7696005)(33656002)(64756008)(6506007)(53546011)(38100700002)(66556008)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JPlbV7WZDmpthv6RdwdumHdV5MycMuRon70QRNClBLVB8/5vDBUnWnzIHiVM?=
 =?us-ascii?Q?iOjOBixwUsRG3HzInCr0WOtSvQHTSzuKIb/nmXIObky+KyGkP9uacWRQbqdE?=
 =?us-ascii?Q?AR4lFuWr/N5V/l5guw5lkUY3Bp1BLKz9qcK5QGTAJn3RbazuvLwRlgsi1rKn?=
 =?us-ascii?Q?MEZ/xyBjY0n35VCldMNCgx8BD3BPkxEUpYKJmRvVi21gMKuAThcfm7m5k4Ix?=
 =?us-ascii?Q?rm0GS0D/0ZGuyTRXbydHrphsIycFJu0Q+s/+KhFJt7gWS/i/0SVkEUx5Mlmq?=
 =?us-ascii?Q?UCwlusbv4UyBu9uAZJfRO3Y22IMfcXzRn7dXHvkL/agjk0FccI0PkW2H2Fmv?=
 =?us-ascii?Q?CiPkAkuF2Q5MP5grYCL/fE2v/7MAFYe/Dq3T1FoAikqoacxP14I8gREGntt6?=
 =?us-ascii?Q?r7pfwCplizRndoMbwXq0a9gF7AEHWfeyOof0/CY2xlOX0pMJ40KEPp/KOl0V?=
 =?us-ascii?Q?cU/vYLnXvxcQvGJ4CiXQAiKKCnvtpM3acUgFz37hG0+D7ZbRLGyiThIZt0YL?=
 =?us-ascii?Q?5dh7hQ1F8dDGgvhR16jLUkOflQQMXLhQcOBqZh8ysbfkf402dnBavystb0M5?=
 =?us-ascii?Q?GFSdmnXw+DXKS/3IgQPNnZ1NIwxsQ/A8Z/QCGTaxOB6OYocJ4G/3B2jUJJaH?=
 =?us-ascii?Q?E4P9Jl/F1VzByV3b2w/+vLy4Wrm4Hsfal0pCUMowPBVtOcNC0y/3k/nvUYbN?=
 =?us-ascii?Q?j5EFUi8UwMvPlIMz0MTTUAEgvSuNAZQp2ktn2ywsoD73U7jQkCAsoFIF07Go?=
 =?us-ascii?Q?3enF2yVbH3vl0d6ZtiC2xHIrBrAk0YhSfoT91sKRnSct/db/jgjgH7R9GTIQ?=
 =?us-ascii?Q?TLPOPOmA2o7gizQEttOUbObBjcWJIZkrQqdHZgw99mcKex769vayxjBvBux5?=
 =?us-ascii?Q?VTR6aqPHyaf2ABW0tGKiVx+ckoN9J9LO1ydXIUTADb5YFNAzToI6HLeJuD6g?=
 =?us-ascii?Q?wGeAWJ9RS4ZKY002pc2/hEFP4wCCL5w96husCLo+HgULZEEcO8ehBhHq4v+l?=
 =?us-ascii?Q?u985bv3yPZ6TrBzHE3sn3DmycPWl8KMhz79Qb7+5W3IPxNHqkWFuldd9eCbq?=
 =?us-ascii?Q?muVr8H7qcVsYskfB94hQNh92OYM+SWr27PwbvcPM54wuOojwL4To6f0DQKww?=
 =?us-ascii?Q?11JEVnDj3MtgcdGVHW2m488Jv810x1XIEE3d+VP+0ezp7dEj5ubuCPy472cZ?=
 =?us-ascii?Q?EnYuzNI+epRMfCEfLv9JxpytJTaLDU1vioVKzWRAZqIs2r6C4pQYKOxRXKhe?=
 =?us-ascii?Q?GQLhlvCHIM6vS532HKh6WzP7ob86aqtafhZwOzz8lrE5Upk66fOmKrymlBEu?=
 =?us-ascii?Q?8BeMFnOSeL4z7b3UEsMWGFJs?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a85343dd-228c-49a5-a3c1-08d92c4ad58d
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2021 20:03:36.9944 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: M+DDxVg7ReeczsAt8tyYJ7TWhikboyAe69jTgpJIcnp35h8ju0t5vnq3z4jFHdTINrJ7TGzjkxtQE7vnF/TGAuP5/7wAFxwdYd/Lh9i3RVQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4522
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2 1/8] ice: add support for sideband
 messages
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
> Sent: Wednesday, June 9, 2021 9:40 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v2 1/8] ice: add support for sideband
> messages
> 
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> In order to support certain device features, including enabling the PTP
> hardware clock, the ice driver needs to control some registers on the device
> PHY.
> 
> These registers are accessed by sending sideband messages. For some
> hardware, these messages must be sent over the device admin queue, while
> other hardware has a dedicated control queue for the sideband messages.
> 
> Add the neighbor device message structure for sending a message to the
> neighboring device. Where supported, initialize the sideband control queue
> and handle cleanup.
> 
> Add a wrapper function for sending sideband control queue messages that
> read or write a neighboring device register.
> 
> Because some devices send sideband messages over the AdminQ, also
> increase the length of the admin queue to allow more messages to be
> queued up. This is important because the sideband messages add additional
> pressure on the AQ usage.
> 
> This support will be used in following patches to enable support for
> CONFIG_1588_PTP_CLOCK.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |  4 +-
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 13 +++
>  drivers/net/ethernet/intel/ice/ice_common.c   | 59 ++++++++++++
>  drivers/net/ethernet/intel/ice/ice_common.h   |  3 +
>  drivers/net/ethernet/intel/ice/ice_controlq.c | 62 +++++++++++++
> drivers/net/ethernet/intel/ice/ice_controlq.h |  2 +
>  .../net/ethernet/intel/ice/ice_hw_autogen.h   | 51 ++++++++++
>  drivers/net/ethernet/intel/ice/ice_lib.c      | 11 ++-
>  drivers/net/ethernet/intel/ice/ice_main.c     | 47 ++++++++++
>  drivers/net/ethernet/intel/ice/ice_sbq_cmd.h  | 92
> +++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_type.h     |  2 +
>  11 files changed, 344 insertions(+), 2 deletions(-)  create mode 100644
> drivers/net/ethernet/intel/ice/ice_sbq_cmd.h

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> (A Contingent Worker at Intel)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
