Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA97206E0F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jun 2020 09:45:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 90663203DB;
	Wed, 24 Jun 2020 07:45:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l6Wx46DL9XQp; Wed, 24 Jun 2020 07:45:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 56C1020523;
	Wed, 24 Jun 2020 07:45:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5484C1BF861
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 07:45:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4791420516
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 07:45:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BsNkIarAK4l3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jun 2020 07:45:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id E56B4203DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 07:45:39 +0000 (UTC)
IronPort-SDR: H3Sa9nS6OMsmJ6/q/MuJbkiw3sIQ357hblXpd4HiWQ1de3+iMbvLGL/MQyQpDHc6xKul+VMQYg
 CseCfZLT9Kqg==
X-IronPort-AV: E=McAfee;i="6000,8403,9661"; a="205878171"
X-IronPort-AV: E=Sophos;i="5.75,274,1589266800"; d="scan'208";a="205878171"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2020 00:45:24 -0700
IronPort-SDR: UsV9mh//jEy2DZtZu0s4AqhAjuYDslmvWN+Ll+F0QK+giVvBpFkCGrP2c6v5eOY098LCMFntdk
 F+V6LAOPRwfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,274,1589266800"; d="scan'208";a="423285634"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by orsmga004.jf.intel.com with ESMTP; 24 Jun 2020 00:45:24 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 24 Jun 2020 00:45:23 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 24 Jun 2020 00:45:23 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 24 Jun 2020 00:45:23 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 24 Jun 2020 00:45:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dsFvZuoxWwvLvlC/0ZO1eWg08+sNQqA45dIRehGXWbXKfe8tLMh/n/nrwOtNv29ziLmK0pz4gven9aqsa1ye4bPjIFjZ9vMtr0roPXrCJkzAgKbPSU+z4SwWXACn7FvKQwoIvHAyLG5SlVEh1PXrkH5y+/VbT6kw25yYaFH2I9DyizQOSs9Joe8LCBClvoDn7Zq8DUzni+L0r6EW4U2zSKtW0svnPb+CxlBtb2DfvcANcwz+EPPIElcr28fnNblUSsZIVFBLycPfhmihkfmerm5Vsp3VuYsg44IWuIZvmS3CXpCwOaGVkQHToNnyA0d0GM7bTee5cUnw3ypZkZ+Z2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=trN2ErhqhwAxlbsrctD5QPr8/G58xzv7/curpHE+7Aw=;
 b=KL7BqB3ehmKoThHcJHP0HwR1OLtHtShIQ5QaXm6Zkj/ZoHB05xAD76oeT+xfU4KzdXuI4tQp2JBVvgIm/ZXBUkehsA5bmXmbZ+CxleWxVkGOCi7zum0yjksVcwMaWC0ryw6SlJ/I8mrNKd/uFfy5rJtBiXsmSsbU6VwlqQ9TxL4jxZq1mu0+sDIZ26pP3+HFE4Q2y/V5rU1fiHCTyiR9Bib0+gJxSIEUuj5RIK4XfsBdDA0GQuZVlmf7Z+LE+rqXZLMTiV7FrAgkshKeJ8QNEMk+8VmHjWLaJsLxBMiIaG5SdzsTa5QXHqU8VrU6TetSZJ87unKezEGP2/LWwm0IOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=trN2ErhqhwAxlbsrctD5QPr8/G58xzv7/curpHE+7Aw=;
 b=Isee398984ak0/+kOy3sDUlEIXAWc+ZFhEp/hR6pU9M2KJSOhDs3tFHo+qF8g6MVmZrvYOPdjXXofStGZnHTLB0yTsNwZYtpjZnGic99Mdljeaj7BuQ+BCefEpTS6MzZIozi7UwKYALA+1OWnLId0ti3jZMxYmEq8EuWTNOJ+6c=
Received: from DM6PR11MB3900.namprd11.prod.outlook.com (2603:10b6:5:19a::26)
 by DM5PR11MB1451.namprd11.prod.outlook.com (2603:10b6:4:11::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.22; Wed, 24 Jun
 2020 07:45:22 +0000
Received: from DM6PR11MB3900.namprd11.prod.outlook.com
 ([fe80::3dc9:b760:b900:437e]) by DM6PR11MB3900.namprd11.prod.outlook.com
 ([fe80::3dc9:b760:b900:437e%6]) with mapi id 15.20.3131.020; Wed, 24 Jun 2020
 07:45:22 +0000
From: "Lu, Nannan" <nannan.lu@intel.com>
To: "Wang, Haiyue" <haiyue.wang@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v4 1/5] ice: add the virtchnl handler
 for AdminQ command
Thread-Index: AQHWSfqb0gGsJ0OmCkeGxUwDSJRBMqjnYYSw
Date: Wed, 24 Jun 2020 07:45:21 +0000
Message-ID: <DM6PR11MB390087DBF77999FCEFC9ECCFF8950@DM6PR11MB3900.namprd11.prod.outlook.com>
References: <20200619045711.16055-1-haiyue.wang@intel.com>
 <20200624072939.9363-1-haiyue.wang@intel.com>
 <20200624072939.9363-2-haiyue.wang@intel.com>
In-Reply-To: <20200624072939.9363-2-haiyue.wang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.102.204.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 069396e9-82a0-476e-e2fe-08d818128c96
x-ms-traffictypediagnostic: DM5PR11MB1451:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB145154643124490B82A33243F8950@DM5PR11MB1451.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0444EB1997
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0gXpbpNfq/1KUjiAlcja8Z3zj1snYv02ciWVCFAqk903nSJbi27bqlf5kqZ/W1f3JcUHcqOGiXaaAsx+BO0qtUzvHhRPoRwvfs1RMIM/QOu+axW5BjoFzLc9EGxCh77xuJnvsn3RwVDSGWWD7xWYmgQigRC/uA+5R6U31ufCd4OjwAdhqvxyA0h9TYKVJD2tdfvz55gao/RGQWrf0ttU0qo6KJD9oGS5rz10qoGsjGDAPlvWLuzpKBl9z87bm8d6jw9QVz2ghsUdFNoP2qv3q6nlK3YJ9jvwxDMnuyiJIttyRMsyB69pRLxkQHY92XQGeQAGo4N7efONsewovPlFuuk0so9WRCT7GoV8aCq9/EIPeNJcf6/n+FV3wlerP3B/hWRXVSwALywx84WldgKRNg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3900.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(39860400002)(396003)(376002)(346002)(136003)(8936002)(52536014)(33656002)(9686003)(8676002)(7696005)(86362001)(110136005)(186003)(316002)(53546011)(26005)(6506007)(55016002)(5660300002)(478600001)(66476007)(2906002)(76116006)(83380400001)(66946007)(71200400001)(64756008)(66446008)(66556008)(966005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: l7Qlg2t+5ulX9XeXxK3t6x+sOrsMmXNhXvbkh0ja+BVhmBmsMoEcmllp/ENnzzsGQ7m7EPTF0hoonrOOYgSiElmk+lAULZ3AS63k7zt4KfU/vTWXvOghkfSr04cWfmSoYar8olelL5yfHL/IO5dsFr5q2JJTBlxLHj5hazHjDsNxYNnulSLrEXinP9NWECJ0CdrsJrpb67V/EnG0Qe3TLkzSvFWaRq8x8H8NxEOIvUcO+8YcsQt4UM7ZpPunaQZJhvSaq7qr+xhZwZcKo7O90R6PfT1lnyIEZfqQPrHK17lfWCJKOdi3NDZOP27xoG0HIwwopmw5rqtSoncEe7qgz/87ea66RSVUUJtpJhJUPg81OIV0qjj7m+kfChPTZmV1Q5mQvk0ImW9RCL2tNbw1cB/DC708WOTl3Y0jMbVEZLpJNoRpZToAaB6PfvehHBXY1ExIp2dtqYbci7N3lfqCCq1PPDW2U0ir3Qb9oKxj5iMJguRbteTj0Sof5GQo5iLz
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 069396e9-82a0-476e-e2fe-08d818128c96
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2020 07:45:21.8972 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 73iRnlQApY1U8C+xV6wzRBHu73wcmPwPsbMEJocrdgCcVMUZh2K6RHMblvIPOsHcDVwvXiF/A5y0vNyLqT7XRQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1451
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v4 1/5] ice: add the virtchnl handler
 for AdminQ command
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
> Haiyue Wang
> Sent: Wednesday, June 24, 2020 3:30 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v4 1/5] ice: add the virtchnl handler for
> AdminQ command
> 
> The DCF (Device Config Function) is a named trust VF (alway with ID 0, single
> entity per PF port) that can act as a sole controlling entity to exercise advance
> functionality such as adding switch rules for the rest of VFs.
> 
> To achieve this approach, this VF is permitted to send some basic AdminQ
> commands to the PF through virtual channel (mailbox), then the PF driver sends
> these commands to the firmware, and returns the response to the VF again
> through virtual channel.
> 
> The AdminQ command from DCF is split into two parts: one is the AdminQ
> descriptor, the other is the buffer (the descriptor has BUF flag set).
> These two parts should be sent in order, so that the PF can handle them
> correctly.
> 
> Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/Makefile       |   2 +-
>  drivers/net/ethernet/intel/ice/ice.h          |   2 +
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   6 +
>  drivers/net/ethernet/intel/ice/ice_dcf.c      |  49 +++++++
>  drivers/net/ethernet/intel/ice/ice_dcf.h      |  20 +++
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 130 ++++++++++++++++++
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |   1 +
>  include/linux/avf/virtchnl.h                  |  10 ++
>  8 files changed, 219 insertions(+), 1 deletion(-)  create mode 100644
> 

Tested-by: Nannan Lu <nannan.lu@intel.com>

> --
> 2.27.0
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
