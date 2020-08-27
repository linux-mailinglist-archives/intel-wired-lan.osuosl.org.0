Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 67DCC253B65
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Aug 2020 03:33:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0EE9086197;
	Thu, 27 Aug 2020 01:33:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rgYIJV1onk_B; Thu, 27 Aug 2020 01:33:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 05AA586AB6;
	Thu, 27 Aug 2020 01:33:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9F8111BF373
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Aug 2020 01:33:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9A07D884B2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Aug 2020 01:33:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rCte4ive2xXo for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Aug 2020 01:33:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B2C7F884A2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Aug 2020 01:33:00 +0000 (UTC)
IronPort-SDR: zaKNRsbzH+aL9txlTA+tRjNuzjxnccQpbzQSVJ8rxlJyDsRyhiZF6y6QEQ6k+OlWOntOIQ/dX6
 j0MFZ3T4ezkA==
X-IronPort-AV: E=McAfee;i="6000,8403,9725"; a="153972365"
X-IronPort-AV: E=Sophos;i="5.76,358,1592895600"; d="scan'208";a="153972365"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2020 18:32:53 -0700
IronPort-SDR: z48Rl46WwF/S6TipYmyArgN4ZVltpNrv0Wv/vFxYadMnvodfRksrWV8BwiD7SU0KOakSBPwJa6
 wmcXh2D1tGWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,358,1592895600"; d="scan'208";a="329422216"
Received: from orsmsx601-2.jf.intel.com (HELO ORSMSX601.amr.corp.intel.com)
 ([10.22.229.81])
 by orsmga008.jf.intel.com with ESMTP; 26 Aug 2020 18:32:46 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 26 Aug 2020 18:32:06 -0700
Received: from orsmsx162.amr.corp.intel.com (10.22.240.85) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 26 Aug 2020 18:32:06 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX162.amr.corp.intel.com (10.22.240.85) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 26 Aug 2020 18:32:06 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Wed, 26 Aug 2020 18:32:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hbyoPLVrH+bGasjJnmsjxgT31B22p5tOlRnpSVjF17A4ig2ia+zqDJS3KeYQwJUtPe3BP9cZMDIp9i8QPxmvCKjK5Wn5rjlba2q0SWkpioPuRC8dKTDVb1tw4Mf/1QHikKxGlXkJKkCgZbzgePR1xSQO7yKvI+hiGZAJBgWfrhWfA7dQq2/8W2z5D3ha3F38xkXBDAzOo3/i05wXA3tmiOn5DMrlvUd/1jwodLJxH9nUZ4P1eaQySAi2tyqKFliApFz8Vg76DACbmFSiL0ET80eJw4C64xPPkjFjtPCHbgPLZcea8//BJrxy/+M+TqSs6s0si/tsTct73q9l8E9pog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fIZHK+KPy1U1HieeXhCXmVMHJs9Dc0c/Se5GlSIsMPQ=;
 b=gzJe6+uPGjcUgdlDusi8yPFwLwlSDPNGnJ+b9VWi2yP1yzy4pYFHENM5j1f9xuB4+4tubzrWIKloXyC9Cq04w6lmXRRFn0EHaI72ZMeA7j/FH4wHQfgoxpLZWbi1OnPLynmrRuC8TLhxWWFD6ayqU/fwlL0lhTMqHagBpGRsc9YZ8gWr0H/inIsPQY4x2P/A+6PJ3JNKp0lq081mzlnfQfCQKmno2vAJ12I89tFoBZvOiN1ya+fVSYCaklqYJLqlMM72oSbhYvSwXkpGWa3osSWwdPskFYRCQhiGxUyROalZ3UVO+h5P/wMMm1cGgZODw8mmsBdGoTa2ji+TUlcLJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fIZHK+KPy1U1HieeXhCXmVMHJs9Dc0c/Se5GlSIsMPQ=;
 b=N91QIEgs55iF2vLVQ20+aWHoMFqL0sMEp8K24E/yhMoD1Zc/MpccbhzMKdaSDlu/VTti5gBrkWC4BxtE77d5zbbTCbP5f7n0vCCzJ+eNPG/h7OI56rHJvgdJM7SIjAakSODBMzakcduo9XSklwdz1N3WIDm2g5+C/pcSt0JQc+c=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3242.namprd11.prod.outlook.com (2603:10b6:5:5b::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3305.24; Thu, 27 Aug 2020 01:32:04 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::25c4:e65e:4d75:f45f]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::25c4:e65e:4d75:f45f%7]) with mapi id 15.20.3305.031; Thu, 27 Aug 2020
 01:32:04 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH 2/3] ice: add the DDP Track ID to
 devlink info
Thread-Index: AQHWdnP60IQIcpBQL0K1cQZZnpBzD6lLNrVg
Date: Thu, 27 Aug 2020 01:32:04 +0000
Message-ID: <DM6PR11MB28906C0A6983CBBEE57E7233BC550@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200819215838.3834786-1-jacob.e.keller@intel.com>
 <20200819215838.3834786-3-jacob.e.keller@intel.com>
In-Reply-To: <20200819215838.3834786-3-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.215.99]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 59999afe-0678-4453-ca9e-08d84a290146
x-ms-traffictypediagnostic: DM6PR11MB3242:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3242B1BDB8E8C38456E7767DBC550@DM6PR11MB3242.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LNq+76cfXu6mYKM3okJneNKorvHz97gdKhtLA7d1vL2dG8jeYK0G0FZpqdqGH80Q0kKikfVBS6dOT9JG2Jcd7nNaCVweiivD8cflz87b9lBkOYDyfWpTEUUSluHClxLy+xyRUoRWFZV+I1a+CuhjOP83H89Rwj7td3Y3/fssJ097lS86uKGnsb3DHhnwLonzyp5sSCgdS2p+zB2HqpC3T80n1QB1wrhlrBzkwKAT60rdyf/YhHqWCXvbxkHz7Hf1mwtw4Q7gfUY6bPu8bOzgVkNGNo2I8liL8HfiUm7G/4cL/BoBLcsLJzxXlqtHaAOOvpleaIPc4ylmxIYMZSe5AA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(376002)(366004)(346002)(39860400002)(396003)(8676002)(6636002)(86362001)(8936002)(71200400001)(55016002)(110136005)(52536014)(33656002)(2906002)(4744005)(5660300002)(66446008)(26005)(478600001)(316002)(64756008)(6506007)(66476007)(53546011)(76116006)(9686003)(7696005)(186003)(66946007)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: iujJukMmewbPnPVF7yVjqpjI3Y/jgvjCJl+RCq7GqJG3JDVGNaOdCeI4Y+tk2Aahu4xE2HGvIIUiPG+zRxrEZSQJP/HRK0nwoDS1dSWLg6rJtE9NjeSt6Of4Mnc65KFljNFcQiV+/KdoTQc+bdp8y4uZ9wP9/wVjMdDHcpgAS4iXxp3UD5MULXjtNLxFyZ0oCPLU4sflRNb5xOXv+Gv8tthdeRh27w3SVOTzn6A8BQ1GFpsvq1NDwEL4ikS/8uRxjpaz8vqh1Ae4JTp4fAMNIe63hQp9wQNqNFRCuxQjINAcM+hJIYGHbLR6mj2CuSz/ZzKB+H4RZYcbjL6wEB/KQgcvdwp47Ses9Ymwi3iUdvFtuU1/1XuBJ4GvouQhEloqMPOGwpXHNJRGDVNDdfxPw66813hGbH+yCV6wS5rcJ/5jXzdebvV9muNnIZixWcnwFQ4jKZ1J7NuGPeAFSy5mEg65juQGPZgQvsJV4BVTVgI7ZUefnQH2rqU0FV9xrmv5ycMi9qLa6rUipO+mZTvvfXLRst3JRf5zrCr3QrHUOMIR2dTcj80J2liNEiEKp+kwSyMEyB1icqiSmpS4Y7ly/NI2ajlmPVTDKF2cxB1e/EnT+sXySbQVN9dQiTWAr6CeEKhZsjoHt7JpL+IyIIh2oQ==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 59999afe-0678-4453-ca9e-08d84a290146
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2020 01:32:04.7107 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dlj/tQnSfnRO3DBYV6/GtMv44inrMDnd68Yww/M5LOzry28dSrTLDh/yvkKNZHBW9Jj86sQz6yL3oNjy7tTxjA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3242
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 2/3] ice: add the DDP Track ID to
 devlink info
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jacob
> Keller
> Sent: Wednesday, August 19, 2020 2:59 PM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH 2/3] ice: add the DDP Track ID to devlink info
> 
> Add "fw.app.bundle_id" to display the DDP Track ID of the active DDP
> package. This id is similar to "fw.bundle_id" and is a unique identifier
> for the DDP package that is loaded in the device. Each new DDP has
> a unique Track ID generated for it, and the ID can be used to identify
> and track the DDP package.
> 
> Add documentation for the new devlink info version.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  Documentation/networking/devlink/ice.rst     | 5 +++++
>  drivers/net/ethernet/intel/ice/ice_devlink.c | 8 ++++++++
>  2 files changed, 13 insertions(+)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
