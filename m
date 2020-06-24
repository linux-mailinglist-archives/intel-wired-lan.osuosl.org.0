Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E87206E13
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jun 2020 09:46:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 97F0D88586;
	Wed, 24 Jun 2020 07:46:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DjhQPzd0m7sX; Wed, 24 Jun 2020 07:46:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C619D88557;
	Wed, 24 Jun 2020 07:46:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3E73E1BF861
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 07:46:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 354D0203DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 07:46:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UWHWwTnbHpeh for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jun 2020 07:46:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by silver.osuosl.org (Postfix) with ESMTPS id 281A4221B1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 07:46:09 +0000 (UTC)
IronPort-SDR: l+FJNSbpaubuGaZ9KVD488IvyL9cA9+udLNuFkfksX+YtZRbORbfupIvYUCyBocWo4CJzyI/NA
 4K5lX5wK12dA==
X-IronPort-AV: E=McAfee;i="6000,8403,9661"; a="143469997"
X-IronPort-AV: E=Sophos;i="5.75,274,1589266800"; d="scan'208";a="143469997"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2020 00:46:08 -0700
IronPort-SDR: XW3JOR7Vd6kx1ibANr0Bb3GtHrOsfv2nMG7RZAMuh2WsGCxYSXPqoyl/AJ6Ns5lqNPd7UKlqga
 UsLnoiWfoyDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,274,1589266800"; d="scan'208";a="301539975"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by fmsmga004.fm.intel.com with ESMTP; 24 Jun 2020 00:46:08 -0700
Received: from orsmsx124.amr.corp.intel.com (10.22.240.120) by
 ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 24 Jun 2020 00:46:08 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX124.amr.corp.intel.com (10.22.240.120) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 24 Jun 2020 00:46:07 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Wed, 24 Jun 2020 00:46:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XSJhA0mfwXAMr2rzdHCjqhUiV23r89x+zDdoJkYpFEz6DpFD5t9EAissMKvAW3QWsE+EVCccwk45k1wjL4a/s8+YVVcTmKzEEkpv+qeIoJu6mybmcjCUHSCMULm2dQd//rAETs7aJoEBhKmSH6cY0JEF9bRGsOCnbAOXrFx5hs87e8fppt1ZE5jzOBPIihKgjdpa6aEeIiH5d6eTWggCeF/Bas0BLfqc2JRPeu8w3v9DS/XQ6wOS5rXSiuDnF3scEBoOKRUtu7EEp9rtIwfdOIBrlYw3cNC7txqL4YM3HMTWgqIAN0BX2hktiXkIF+/oZf+xJpy1s1L4BqV5P243zQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Arx4e2NGZwXj8sFUx1h+Ll4BMytmB6GuqC92Z0qo/hk=;
 b=DdcrZUJAC9BukPCzHbWKA7l0GSdnrOkv3VH9k/SoxBMZkKXf0zL9g6UtsOTFFfycS8Fgh+3rEylnA1DwkXFIqz13qpcBCiVIpnKoDqUrURZi7fDxlclwM4uIUwkFLy5nd2WoPEutx4yoeT8Njwu2CjNI4P5hciFZBXmHgi0zUFlqjYYc97d5NhMUbONoopTUNhgWO1qpKvToNwn57tvKJLWyDi3uTNoqSrk6xXHVQ0MX4KCo2jNE1cCEYV+u8MUfRZQES9g1fafDLkgcom/U2MBNO1lHl1hMTTfUK3LYFf+jAugKBqfppvw16qYizXprf/oz/2lYXdVIcp/L0KdJWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Arx4e2NGZwXj8sFUx1h+Ll4BMytmB6GuqC92Z0qo/hk=;
 b=vjs6J+BKI8sU0Eclh/PDls9DzqTMkuffK/Bwp/mgl+jlF6LIxXJi75d3w7kW3LgQH7vuAC8pMG9HA2kGlc4J6xtA+pcvErTYTiujCIiCcwSm3g2t/bR+xZG0N77Qp4SaYqZv0dQgix8UClch7hlXJPkE6qrlr/8nXWVT/KqSrds=
Received: from DM6PR11MB3900.namprd11.prod.outlook.com (2603:10b6:5:19a::26)
 by DM5PR11MB1452.namprd11.prod.outlook.com (2603:10b6:4:9::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3109.23; Wed, 24 Jun 2020 07:46:05 +0000
Received: from DM6PR11MB3900.namprd11.prod.outlook.com
 ([fe80::3dc9:b760:b900:437e]) by DM6PR11MB3900.namprd11.prod.outlook.com
 ([fe80::3dc9:b760:b900:437e%6]) with mapi id 15.20.3131.020; Wed, 24 Jun 2020
 07:46:05 +0000
From: "Lu, Nannan" <nannan.lu@intel.com>
To: "Wang, Haiyue" <haiyue.wang@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v4 2/5] ice: add DCF cap negotiation
 and state machine
Thread-Index: AQHWSfqdImtprfZ2skmnAq9jEFfsOajnYjNA
Date: Wed, 24 Jun 2020 07:46:05 +0000
Message-ID: <DM6PR11MB39005F5440398CD763F58259F8950@DM6PR11MB3900.namprd11.prod.outlook.com>
References: <20200619045711.16055-1-haiyue.wang@intel.com>
 <20200624072939.9363-1-haiyue.wang@intel.com>
 <20200624072939.9363-3-haiyue.wang@intel.com>
In-Reply-To: <20200624072939.9363-3-haiyue.wang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.102.204.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3621926e-d360-4cc2-34a8-08d81812a6a8
x-ms-traffictypediagnostic: DM5PR11MB1452:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB14521C0502172B61A5A5BCD8F8950@DM5PR11MB1452.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0444EB1997
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: s8qXTlZ+dueqQ6XuizHcCEL4Pb9rdl3/M7Po7dkqq1inr43XbzbsGcSoKh9kJRh53liOthTKbdw7SJd5muh1KjXQi/Sq8DPCev8vH/3WZVly2Qv0tIJgS4G7S8sDtc5z/eZANAVC3Nh3njPS+/iIyoSfQ2cZI9ZG4ixu+KYOp4rska9AnPatyz49kUQFKa4XXNG9CB1/PyFKVnajgtidQ3kfpsESf4hSxJJtJv/uvpEfav8FUAp7ZOC2Ie3I5V5Hp2GFk+RCb6PrKQPxlYWUvpO1fDCO8JDzJN4CM9cPJ0Tn4erOc/2wi344K6EOFSsHgCuHNNb577bsoq/UXz/XqpifofiMGOhvVivberjbOF2Wlx9SInP+d+bm3yfkhlDPogY5Aj/ygf+eYF/IplnA9A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3900.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(376002)(346002)(396003)(39860400002)(366004)(83380400001)(7696005)(186003)(26005)(66946007)(107886003)(55016002)(8676002)(33656002)(6506007)(8936002)(966005)(53546011)(4326008)(9686003)(86362001)(5660300002)(76116006)(64756008)(52536014)(2906002)(66476007)(66556008)(66446008)(478600001)(110136005)(316002)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 0wDzw0o+uaoScAYnb8o7/bypK2OjKce5KzPJrtw0NtKHKL6QsR+NpMXH68EC4r6A06XnsUdxMFI9z7rAf9q1r4DnEhKrIaDigY6xtnNO6n9uERmNewCr4DTw+syDvmp27AiRHW5b2Twlgx/9YQy6uIhNdbwO4k66q0RSiSYr72P5EWgiH+8t/unBpL5RyWrpukOUoFEGc5G84Tws8DQ9xUc+NVM8luhSZURoONkBfDurA7OtGHUa6hGedKLbxoh54osnzNRnirnVcG8p/DHX6MtuUtnqJZgGZVRJMgkLHReBaqYesWUvaKgkDRQp6HCxyWECaeEKSrHqFsrJ2q5jAnOrZrU4SjIOsWZDDY0hC7/EbnWgB9+zJubN52MmHU7CJbYCeBYgzfDawinyvcfMjX6fEqSYuT0e6N8jSUcKzsFnhAxsgQYvxmLtuCS0RSuqCR3+uO+BgACW4WBPc19NtO+HWwT+8JdbkdqN1NaslCZdMCT6VjTQ7/vfF3FzE/9Z
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 3621926e-d360-4cc2-34a8-08d81812a6a8
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2020 07:46:05.6794 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qlv08sHUTMOUweqe9N7MdqbRFW3LNaFVTYDKfLa1Tdbo2y0NJBZZtPknnVVppsUqQsuJCOSQAIqwb13FxMMT2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1452
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v4 2/5] ice: add DCF cap negotiation
 and state machine
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
Cc: "Li, Xiaoyun" <xiaoyun.li@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Haiyue Wang
> Sent: Wednesday, June 24, 2020 3:30 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Li, Xiaoyun <xiaoyun.li@intel.com>
> Subject: [Intel-wired-lan] [PATCH v4 2/5] ice: add DCF cap negotiation and state
> machine
> 
> The trust VF0 needs to negotiate the DCF capability firstly. Then the PF driver
> may allow this VF to enter into DCF "ON" state if various checks are passed. In
> DCF "ON" state, the VF0 can send the AdminQ command to do advanced switch
> rules creation for other VFs.
> 
> If one of the VFs resets, its hardware VSI number may be changed, so the
> VF0 will enter into the DCF "BUSY" state immediately to avoid adding the wrong
> rule. After the reset is done, the DCF state is changed to "PAUSE"
> mode, and a DCF_VSI_MAP_UPDATE event will be sent to the VF0. This event
> notifies the VF0 to restart negotiating the DCF capability again.
> 
> Also the VF0 can exits the DCF service gracefully by issuing the virtual channel
> command OP_DCF_DISABLE.
> 
> The system administrator can disable the DCF service by changing the trust
> mode to untrusted.
> 
> Signed-off-by: Xiaoyun Li <xiaoyun.li@intel.com>
> Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dcf.c      | 77 +++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_dcf.h      | 24 ++++++
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 85 ++++++++++++++++++-
>  include/linux/avf/virtchnl.h                  |  9 ++
>  4 files changed, 194 insertions(+), 1 deletion(-)
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
