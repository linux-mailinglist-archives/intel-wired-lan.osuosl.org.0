Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A91BF2890C3
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Oct 2020 20:28:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 47A2687735;
	Fri,  9 Oct 2020 18:28:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LR0gRdktgW+7; Fri,  9 Oct 2020 18:28:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 56BF78770B;
	Fri,  9 Oct 2020 18:28:22 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B1A3E1BF27C
 for <intel-wired-lan@osuosl.org>; Fri,  9 Oct 2020 18:28:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A1F302044D
 for <intel-wired-lan@osuosl.org>; Fri,  9 Oct 2020 18:28:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3uiuZq8e0y5P for <intel-wired-lan@osuosl.org>;
 Fri,  9 Oct 2020 18:28:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by silver.osuosl.org (Postfix) with ESMTPS id C2BFC2E2A9
 for <intel-wired-lan@osuosl.org>; Fri,  9 Oct 2020 18:28:08 +0000 (UTC)
IronPort-SDR: iJ5zsViPits3emYulXHMZK6s8N2Ky9vjWcEAySV4YohH8qlzaVVkkXzLpa2VLJA6wgSZims7je
 ozAFlcR1boQw==
X-IronPort-AV: E=McAfee;i="6000,8403,9769"; a="165584441"
X-IronPort-AV: E=Sophos;i="5.77,355,1596524400"; d="scan'208";a="165584441"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2020 11:28:06 -0700
IronPort-SDR: PkSlLeGkMU9A+yc9dAY4MG4QcDv7lsQqJWZ+uWbTTNTTPV0y0bEEkeD7UI8c03WK3blD0669mz
 WZYR9VzEeBAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,355,1596524400"; d="scan'208";a="518778636"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP; 09 Oct 2020 11:28:06 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 9 Oct 2020 11:28:06 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 9 Oct 2020 11:28:06 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Fri, 9 Oct 2020 11:28:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f3IAIQu5V7fyMC6gQSIwFLCzcbYHJmYKOyaZDkiLHrEfGXVBE1lZL4Px54vZG8PjKZSpS1e0CqexjP0R963c1AHhTWMmvL8nZKOTFEpCxWJLu4oQpcpQPz5sVLjv4RBoAHqnDepCshlpXInYoHpK65Nti6sWxlnsq54nB4VBj6J8LaCpZCUB6liRkigXg8KhUIanpVwFoSwcBU5tkW7yU2eu/q1qjYFjFKUE6S5n9XvFfJuXcR0eQA8L8qfpX2rddBMvSammT8bZ1glSai5Pttid2qiNivyZL2xBorx/X+bAew7u32wWMS9EgWuY3hR9Z1o31UtHUbhq/WyTEQnx1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MDgJ/qIKFkoWDt8MK5Cmjj3/5txC0MYycGSvqCdPWZo=;
 b=fdtZh1sNyzpk76NPzU87ia5ADBGtzCtx7BhUQI3M3iZO384DuEjqGeI/HAPAnn+zaVlVcC4yrOWJAH5hlJzOwJSGS7mkeQkpNNJt1qjLt9aXHPi+2kIP64Rgasbf2Pnsa3rWgNDiCMjq1CwENHkJnBC4ZqezLdk/utHJwCJp5tcCEFpn1ypX0CqDu6fYdM/JSaS1BZDhY+TsPymMTMLQ8V1/R9pwP4jJf3FH++f2rivlHJ7Z6D+wYFrG69oAZATMQLXRHy+/qJWCxOelNnxmrr32aWBykIlSnOPFLFuhwQmnY4rw3NE4Izv301k3v/J6RnzSFYVivWAVi0aJtVfUDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MDgJ/qIKFkoWDt8MK5Cmjj3/5txC0MYycGSvqCdPWZo=;
 b=SyWYUHvmD7whT29GJrZZTL9Xu24qobqUwFt7VbQ7G8tyuWOshkJkFJbRxipkAV4JQBwVVmuypwu7+gR6vK+XPIoUvawTiEm53vuCVxZg7V/GTZYSKEkYHDar/5GWoqrHsKtE92QK7cXPDgzwVo+JT9wo4kBc1Xs5reWHCCEAsRI=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3818.namprd11.prod.outlook.com (2603:10b6:5:145::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3455.22; Fri, 9 Oct 2020 18:27:58 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::bdb7:3e5f:8eec:d340]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::bdb7:3e5f:8eec:d340%7]) with mapi id 15.20.3433.046; Fri, 9 Oct 2020
 18:27:58 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1 1/1] e1000e: fix S0ix flow to allow
 S0i3.2 subset entry
Thread-Index: AQHWioFBA8g4O0gM20C0HwL2V7EoX6mPvqgQ
Date: Fri, 9 Oct 2020 18:27:58 +0000
Message-ID: <DM6PR11MB2890A96E95B134233567AB39BC080@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200914102409.6464-1-vitaly.lifshits@intel.com>
In-Reply-To: <20200914102409.6464-1-vitaly.lifshits@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.177.49]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 725f2004-52b7-4d5a-9812-08d86c810c4d
x-ms-traffictypediagnostic: DM6PR11MB3818:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3818EEA5DD4063AAFD43D9C2BC080@DM6PR11MB3818.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2089;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iwJjVsuDb+tIQkcI6fH1CF9fGsgUyMzil4JOFFhPVskfSYv8c2pG8xYy92UpwhxqUegTZEd+b1KWZ1JaA9b7x5gOLnzaPA67gpWCx83otcqQ1peLimFhRBf0jpq2C6/04jr3QEUzVBkBvBX3IWAAtfXzX6HmQYpqAQCOhrTL6X9HvEAX5x6jteKW8/lpzYFKDDkXhPviEQ1U07KVJowWUiz4cwpOwGgqaQz/ncKboqxmP2cM9EeTviMyfVXzIfHlDuLSwxNH3a1zSqqaa8DZchCLaj4wcrsjJmhPXrd2Ayst8KAYdLSrxM+p/iFfD9SL7A3xnl1xQlwvq10SMBn2jzvR3psKqBNI9txiPM67PSnadU2AFLmwHF70xtbc6Yui
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(376002)(396003)(136003)(39860400002)(346002)(8936002)(8676002)(64756008)(66556008)(66476007)(66946007)(66446008)(86362001)(2906002)(5660300002)(110136005)(55016002)(316002)(478600001)(52536014)(33656002)(9686003)(26005)(186003)(4744005)(6506007)(83380400001)(71200400001)(53546011)(76116006)(7696005)(32563001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: EuDZaKChtXjVN5P2eDJWoythYS8lVVEa+rq3OFtQMDFhCZJ+q1x8ddkxfMj1XazQydSDLJtVQLLvvptU0sXk8Ry5sm5n3qKtycPBBBWwbhA3j6o8pcSy7nBbQ2hoeth03bWl6xcfAD/DcSu/LzO9Vm4P3IM1KqNCSZzsp4E67OQx1ctbm0WzTQ8L2qv1IZSbkeidrCkVQTEsbAbRbfNwc/nUXmnwbn464HVBZEhnW+2/zD0hYww1Qvi3QK7QpgL8xRcZZ+eqBiPKx2GocUBzIX9JPWqq3rvev4zu3iCqTNByfae/m4zDiU3qfDKZ3/i5hP7UPtJX9KU/K9Rhnsrazbpb4TwqvWxiePDXoiQ5iEWqBBk74wzsi8Tp/xX0Au8r0lGE/JOq3SeA4ubJt1f/q4jiHXwcT+345d2AXr1xerYdkoqfYcjkj34IpUlEn2h0P3znFP2tSH87SHSYKLBqeEAZTL7Kg6e8AmG5cJUf5AeyLnmmRGhWch4bMlV8GKdBCMvdIsYSQLv/xatxBJV8YqhZTiv9HnQUoJ9nQbQViZ8aW0D1qPPqO2bqCY6fMVVpf+FcwtCpjJi4/+SnGQFc8AArUq34/JmWkObBKryZP0rV/jJzCOhI/rdCI/aXWxFuRheXXiGMU5coGio2sHuZmQ==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 725f2004-52b7-4d5a-9812-08d86c810c4d
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2020 18:27:58.4318 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yPM939N7OZLpjKz2pIOfTkEiZlRfIBoDhdvATVGy31OWuiCKEysyHa492Vuss4cmEHcQyNUrqZ/p7YXee9agpQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3818
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] e1000e: fix S0ix flow to allow
 S0i3.2 subset entry
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Vitaly
> Lifshits
> Sent: Monday, September 14, 2020 3:24 AM
> To: intel-wired-lan@osuosl.org
> Subject: [Intel-wired-lan] [PATCH v1 1/1] e1000e: fix S0ix flow to allow S0i3.2
> subset entry
> 
> Changed a configuration in the flows to align with
> architecture requirements to achieve S0i3.2 substate.
> 
> Also fixed a typo in the previous patch- e1000e: fix S0ix flows for
> cable connected case (632fbd5eb5b).
> 
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
>  drivers/net/ethernet/intel/e1000e/netdev.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
