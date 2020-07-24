Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D2F22D283
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Jul 2020 01:56:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 11C8025048;
	Fri, 24 Jul 2020 23:56:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nQ1-tdivog44; Fri, 24 Jul 2020 23:56:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 68279250F6;
	Fri, 24 Jul 2020 23:56:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 607371BF365
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:56:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5A5D58853D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:56:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YJDt6BTEfzad for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Jul 2020 23:56:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AA52E884E4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:56:01 +0000 (UTC)
IronPort-SDR: IfK5YfmcYW/iBabarW8w/8HWwsXWqgBiSZM2uKzJfCRf17hDkuwNNcYfZsX+L8TI6IeHogNcSB
 0n8qMZMvDQaw==
X-IronPort-AV: E=McAfee;i="6000,8403,9692"; a="215376583"
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="215376583"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2020 16:56:00 -0700
IronPort-SDR: Miafy2v65AaXfJoJCr9/po6TqESMqkNECj1l2EA1mvz41kuo96FWHVaaaneJdSHfmev1YWBusM
 nQ7pN9hBeo4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="463396134"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga005.jf.intel.com with ESMTP; 24 Jul 2020 16:56:00 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 24 Jul 2020 16:56:00 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 24 Jul 2020 16:55:59 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 24 Jul 2020 16:55:59 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Fri, 24 Jul 2020 16:55:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hotkXQ06YP1Efp00wi29879uhKvcR2ThsnRHhhx0jFiNZE5gH+SjHer8ZCSdo7Vm3PT1kwklHkmBIKs+poHQhZbgTMpmT5qr1GJrCcEZPwCb3buKM+N2GuPyysN6ZfqIuLUeIcowvXiEdTQzCtJgAp/mloXAeGpJjadguC/bdIdGwA2ZM3qYTP9onIhVaXM5rtrHrfvUdPmigVZm4E228ZO5z2cgFTCoHkHZkIapwpHN+Z+1o3PM8Q7349ar8cKd80qbxyWn4kXc1r3vI/DlNSnUR7la8AwF00tRpEQZpu+Fbzh7FU7/RRWc2qb4d2icgDF/dYbnSE1vYNjZJmjR/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1DMZW9iKDMerYNP+iUb4K1wIcPLaTIZD59ysjR2zaeY=;
 b=Ag7mi7tw52ABXGvrxin2/27jZZg9dLaJ6xMil+RAfDkPiMUl9sK55RUXkh9fUxmT/Z63fGTeL2S3NLyXA/3UHgb3WToGSMcE/tRakIDxeYN7rhO99rz98LRVyjRmSStT96WGVWXcW1gXjCXYGVgfopJcpbUe1JRbfQlxrcSo2CZYMr6CiMMush4T1ld2fR/urjKgE0g3vbF8vOU9XlJqujvKaZvoL7w0e9I9I8XrXsGcO+YsH65/QgnHorSiB/uG1C2IiAAtvyQuYhcXFuHSbD+JS8KkJrf7zb12/Io0dbOEa3JYgIMEV7KQ6I/Jty34z5qoR0kOptTDEy8lqRgKzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1DMZW9iKDMerYNP+iUb4K1wIcPLaTIZD59ysjR2zaeY=;
 b=kV+vEcHlrVWWzuVz2Hj2ZYTvTZMFyX86+3pJN/ynvp0rUYw1uoOt+QEwo0i/fRRKC7CAWwsaRvEtVSD8KZQczCDFHxbaLtnWP0f5z5AhnB3LC2Y2Pj4n6vB7gMhrO1sSiKtJSsIfQ1qYB0jE4RQz4Hu/X2Xg9LBGon8GUAMNnys=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN8PR11MB3842.namprd11.prod.outlook.com
 (2603:10b6:408:82::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.24; Fri, 24 Jul
 2020 23:55:58 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3216.026; Fri, 24 Jul 2020
 23:55:58 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S48 v6 13/16] ice: Add non-IP Layer2
 protocol FDIR filter for AVF
Thread-Index: AQHWW3YUp1OlUdOgsEGw/CPHtiZ7hqkXdPdA
Date: Fri, 24 Jul 2020 23:55:58 +0000
Message-ID: <BN6PR1101MB21454596A4EFCF2D78D6BB0A8C770@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200716133938.46921-1-qi.z.zhang@intel.com>
 <20200716133938.46921-14-qi.z.zhang@intel.com>
In-Reply-To: <20200716133938.46921-14-qi.z.zhang@intel.com>
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
x-ms-office365-filtering-correlation-id: 22d317cf-d86c-444a-ef9d-08d8302d1cb6
x-ms-traffictypediagnostic: BN8PR11MB3842:
x-microsoft-antispam-prvs: <BN8PR11MB3842E1FAE093410B48C3257D8C770@BN8PR11MB3842.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:651;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: y8W71FSCg4+AUXEFpWZ0LsTkFOu8GldhF+YC0sMyC9LPhZ0J6pneaUdEPeDWOshCKlz4et4r96LDLFo65H6svHecOdjC3QSyWSckDD6mao6aucYt+vLGLhh6FiHVTzIbaLswGY2iVhpgsi7LJOog5nYH9yOH8zza6yi542OFC9szMoIPZnzG/vlspVBHA/1A0Pqr/7yJC9QUMPV8ZMx/GxdEcuP5sPaDMCgueFAEsKDxeAVJEsE3iIXbyHD+zisVtcWOPgizYlc2rdO1d58jGrMID+gQVQA1FNP6zzGd7wsf7gvKPnQSrn6HjeuuvQ7F
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(366004)(136003)(39860400002)(346002)(376002)(9686003)(6916009)(2906002)(55016002)(26005)(186003)(86362001)(33656002)(478600001)(64756008)(66556008)(66446008)(76116006)(66476007)(66946007)(5660300002)(52536014)(83380400001)(8676002)(53546011)(316002)(7696005)(71200400001)(6506007)(8936002)(4744005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: Uzr8hwm8tJVEaV00jAWjPO3tgzsDt+PmZfdgB6i6X+70qGM0XJHvLOkxSjnxsk1FbBuiwFgdrLoowQ90jtZR+cBY58lX3H4vci5Xcj6n3Ir/JHNuSU9x5Q41LtP3OAXxq72yOH4PAgIveVa+4uRYngNB16wxodPTAuWb0VvAVDGYEJHeMvYxZ4kxvRe6IwCm/nZG9lM/b3ZX59XauFn/HspWy/nXW/5tW5zHQtOFchpvejZs8YulHtawSC0crPY2L2I20TMhot2E25CdKQKQJ53EzI1RJjbhmKEGLfNq8MfRK4nL+yeVviyZmI4j1dfEy1EPlDUyr3vA7aTo19z8XMWXynRERiVhvV2W0dVuHfhLWC86w5jISknTtmI1BIry1wK2e7KggYwyJ3fab6jcDZThnCkqWfrxksuRiZh2qdFLCpJe/BEhuRiebDxTXiJzsM+THxiewMxGh+dVQVqQK/oVZEIPbYcNBnPmp7TY2NhIMsJXymhC9hIcEMkj9IQP
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 22d317cf-d86c-444a-ef9d-08d8302d1cb6
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2020 23:55:58.5987 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QOELd9KiVH2S62ysGE/SvDmbgkbixqyb8HHpjduMVr0COBV/+3s0fUXCBmzjNl02nMY8LNoPY3iauJCzdueJ1UAwKL1zVBeuJdLohZCL1WE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3842
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S48 v6 13/16] ice: Add non-IP Layer2
 protocol FDIR filter for AVF
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
> Sent: Thursday, July 16, 2020 6:40 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>
> Subject: [Intel-wired-lan] [PATCH S48 v6 13/16] ice: Add non-IP Layer2
> protocol FDIR filter for AVF
> 
> Add new filter type that allow forward non-IP Ethernet packets base on its
> ethertype. The filter is only enabled when COMMS DDP package is loaded.
> 
> Signed-off-by: Yahui Cao <yahui.cao@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_fdir.c          | 15 +++++++++
>  drivers/net/ethernet/intel/ice/ice_fdir.h          |  2 ++
>  drivers/net/ethernet/intel/ice/ice_flow.c          | 17 +++++++++-
>  drivers/net/ethernet/intel/ice/ice_flow.h          |  1 +
>  drivers/net/ethernet/intel/ice/ice_type.h          |  1 +
>  drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c | 38
> ++++++++++++++++++++--
>  6 files changed, 70 insertions(+), 4 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
