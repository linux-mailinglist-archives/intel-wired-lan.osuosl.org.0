Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F6722D27C
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Jul 2020 01:55:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A2359870A4;
	Fri, 24 Jul 2020 23:55:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eiI9QW2tkPtB; Fri, 24 Jul 2020 23:55:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3810A87101;
	Fri, 24 Jul 2020 23:55:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E748A1BF365
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:55:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D6B6025048
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:55:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G5NGYupHMRoT for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Jul 2020 23:55:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by silver.osuosl.org (Postfix) with ESMTPS id 9B250249CF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:55:01 +0000 (UTC)
IronPort-SDR: GNYFXd9dzcd0Mn282RyybJ54zwqQ2ZZ2OL2SsyJSG96fmfArt1Cy4U3WQztbZC8QuFYPE9/V0E
 yETg/3wdoIGQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9692"; a="148285306"
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="148285306"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2020 16:55:01 -0700
IronPort-SDR: d77PvD7gEpM3+qgHfUyUvK/+QHuG9T/OeK6EvXyTSJg4DcGh9ZuDarZc4WN2do7ctiWmBaR+bp
 YxALDkE7vAYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="463395924"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga005.jf.intel.com with ESMTP; 24 Jul 2020 16:55:00 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 24 Jul 2020 16:55:00 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Fri, 24 Jul 2020 16:55:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GmXUS4224ZDoG/HbPp11Xd4WOgcQi4pol1dNeZ6SeXejRIvRDJxOzSD7m+Rjk22/4U4g1VOCmsV6xuWKZK3eyeRc3jk4YiLyoGTFDo6JW5vrWKa92MWqPrLdjRSabHRmxPVhNDdMM2owlgvBbwnDAYq4exOY0rwvVQWe4m7U6/WJZh/TUtKc8ZWD2QttSg9FYkB4Q1bE0RyE73ZVCcrzwcV5zlJB0U9RroeI9MQkVus/cxplgq6waG1OdKj3ybGP0KuqV6Shz87oy1N+JoUIN2ETxKcIULZNS6lEiGu5O4EJmsn+0PIRftlz4iNQus9k9f8uXiKOaZN0HicufrP4ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YQn4FW2st1aLVkwbW664kBIU9A8GRn0JBUrA7iuTKao=;
 b=RGMIua4tupNeYWIv1hbH0YefZvbsNDweIfZ/YIg2XKtDUROX6Y8w0YyjqKOh18kRCPbXzG8UuCeOAz8Tb0X3dgPiqaiottch5Qvk5/RvsGn8IjAnHikp6sekJgYcatTNJNpINR7aXwHbjq47G0/Rt7rUG94nWsvWaEqHdlYu0kZnd/f8XyaMypURwFQq8qnvPjmiujhn1+TGGTsv/BR0Gu6iuFQETDMxA5wDo4dwFuRK9/+CxYDLxaUORocZAKWlmc0UuuqaE+4yhUE7iIO8W3U7auEtLILaBJwFNHHMG7Q1FwIme1qlKa+3UF4nMx1tEjqtxet0xAKElUsPlJiLkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YQn4FW2st1aLVkwbW664kBIU9A8GRn0JBUrA7iuTKao=;
 b=piMKGspukBTtox9ms0HJ8tGs99PKKtwnBhWCZ8kC+sM8nG/EXuwcRAW4FELwHlhcXVtxh28nfjJHchVaL9zMGEDi0iacqtwfPLFmrHodvTKgWx92un84Q+LjsX61f+6myRT5K245DWRyzYC+mjdpj5PwN7l9Ph2l3cUevBd249I=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN8PR11MB3842.namprd11.prod.outlook.com
 (2603:10b6:408:82::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.24; Fri, 24 Jul
 2020 23:54:59 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3216.026; Fri, 24 Jul 2020
 23:54:59 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S48 v6 03/16] ice: Support non word
 aligned input set field
Thread-Index: AQHWW3YPUOs6j72/RUaraYYQm/NxTKkXdK4g
Date: Fri, 24 Jul 2020 23:54:59 +0000
Message-ID: <BN6PR1101MB21454A1F9AE89E148DED09728C770@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200716133938.46921-1-qi.z.zhang@intel.com>
 <20200716133938.46921-4-qi.z.zhang@intel.com>
In-Reply-To: <20200716133938.46921-4-qi.z.zhang@intel.com>
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
x-ms-office365-filtering-correlation-id: 609f0b3b-f935-4530-5c77-08d8302cf95b
x-ms-traffictypediagnostic: BN8PR11MB3842:
x-microsoft-antispam-prvs: <BN8PR11MB3842A57BBAFD5F1BBC645D058C770@BN8PR11MB3842.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:361;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LAt6cWJmIM2R7oGmeTDLwlrsUnRkrD2MMQZaMXs2wcK5lTCLp62k09ud4VymPl9m6oQ3bEqnU23cSpmZiW8frbE5yxcpcguqzRxt4dTEOSVYdjj0K72n+x74VSTYOx7Ff4PTBJxH3rpDvrX5SBLHYfXwypcXW3F0Ls+tO7g+2LIBnAe+NU157xWK/ikFmiJXBTkVLT/PEUlwmW2YWv/Vo9WtqmrxxC8eGLjC7YCO+ThL6FuRmmJIH64lIiKKsbipEosJS8XBSZDoP6N9T1sqxWy/PXV55MtiidGu40YOCxwBnITTxtuj/wMJCJdbGvqu
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(366004)(136003)(39860400002)(346002)(376002)(9686003)(6916009)(2906002)(55016002)(26005)(186003)(86362001)(33656002)(478600001)(64756008)(66556008)(66446008)(76116006)(66476007)(66946007)(5660300002)(52536014)(83380400001)(8676002)(53546011)(316002)(7696005)(71200400001)(6506007)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: V63bjLojUzc2Q6uC/sdbIwHn2DSIqH9GwUeAi5snfWnP+uN4CrooYLUXxWrFNjsiGfS2UEmkzv/AdOnDm1yrA3Y0DiphO505MU0pIkQEQK6CjKkBfNuv3uTY6HtQy0GUFRG8nqqTwEI6mUfaHeLUCpwNa+MZpY4sb7a9X02INV+lkSyvawUZGePEaZLNqswcMFBLA+ZYaU7ZLynWQyVgZLB0685EW6U5gw1LJX1GTs4rwBDH4UZawl2zTKE7JykyzhynYX9bycshVcVeCTQCun9rShWXErU8vd/bz/R10ba+Z2Kj0mYjB1HrMxHvb7qpKrWd+8Dk9HkmHgUoHR2OjlR5Tv4GQgvVUkhT4bU0T9Qm2BRO9nDTfeCWl/MXDPc/pewV9fGenbvm0QyE4FtwygdKVwE6NLlQQVFngLG7RJEaAyLzp5XbHOT+OBVa97KP6tHYxN1IItPP4FthPvRv5nbL4RzD3cmpBwR1rQEFQuo=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 609f0b3b-f935-4530-5c77-08d8302cf95b
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2020 23:54:59.2693 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xeybzfe4nJBpTGzaIVnX/SCo8GlsLH497BuJbs1lnpFlIsHz2yQo0JTPc5/CmVVV22MkNtk2MiIVqYiuj57gBb4dwtMVC5wddvvpXnx9aZE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3842
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S48 v6 03/16] ice: Support non word
 aligned input set field
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Qi
> Zhang
> Sent: Thursday, July 16, 2020 6:39 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>
> Subject: [Intel-wired-lan] [PATCH S48 v6 03/16] ice: Support non word
> aligned input set field
> 
> To support FDIR / RSS input set with protocol field like DSCP, TTL, PROT, etc.
> which is not word aligned, we need to enable field vector masking.
> 
> Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_fdir.c       |  62 +++-
>  drivers/net/ethernet/intel/ice/ice_fdir.h       |   8 +
>  drivers/net/ethernet/intel/ice/ice_flex_pipe.c  | 419
> +++++++++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_flex_pipe.h  |   2 +-
>  drivers/net/ethernet/intel/ice/ice_flex_type.h  |  17 +
>  drivers/net/ethernet/intel/ice/ice_flow.c       | 122 ++++++-
>  drivers/net/ethernet/intel/ice/ice_flow.h       |   7 +
>  drivers/net/ethernet/intel/ice/ice_hw_autogen.h |  16 +
>  8 files changed, 620 insertions(+), 33 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
