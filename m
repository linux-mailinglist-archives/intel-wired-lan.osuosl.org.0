Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FE6A27F96C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Oct 2020 08:23:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2F62620343;
	Thu,  1 Oct 2020 06:23:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fJxKDxOnpKnY; Thu,  1 Oct 2020 06:23:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2746A2036D;
	Thu,  1 Oct 2020 06:23:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7B7621BF3E9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Oct 2020 06:23:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5D30820343
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Oct 2020 06:23:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YJTvIISgx6-l for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Oct 2020 06:23:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by silver.osuosl.org (Postfix) with ESMTPS id AE03F2000A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Oct 2020 06:23:21 +0000 (UTC)
IronPort-SDR: CgTU8HoB4egXoq5+nADM8uXTrzFGpJXr3MIreeem2JR2M/tDGXgvOQk63BkUV3qHtt6ZBbrZZn
 YuWmBKCyLnfQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9760"; a="180799797"
X-IronPort-AV: E=Sophos;i="5.77,323,1596524400"; d="scan'208";a="180799797"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 23:23:19 -0700
IronPort-SDR: ssoIDlK7xuTT59afZ4717reOHByI1F2k/Ic8crYjZBQLOT1v+nFbNb73CXyFRNJS4VP7A0gPZb
 1p0zpnFOkLGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,323,1596524400"; d="scan'208";a="341460125"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga008.jf.intel.com with ESMTP; 30 Sep 2020 23:23:18 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 30 Sep 2020 23:23:18 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 30 Sep 2020 23:23:17 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 30 Sep 2020 23:23:17 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Wed, 30 Sep 2020 23:23:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dWlEn0XNchV21Z75Iq1A9YpKb5KYl6qZu0XnVF9T8xh34GEe/+yWemNKdfvTUSLOIkzOx0qa0l3WJXLLtxG/8K5J9eJHUllxha28zUDhp6j2uaXeWoZexAcU7Jk2oq65R32rAjmWGR44iBEvw5TZyTZkydpg4Bwa7WMV2iGDmYzwX1ii1txwfJ4g0yYbf3Zi0ghPmwF2UXC/4Lz6gTr/RYMHbSTbfE2Woe61J/9MLuS2YVKsbgEbpzvlML0vC9gOuxzfN3TtQiktGuBQSTzU0nVA6xshWABDHSp0Fxah6zzYbhOJHp4ic1bvy1uYXMSJHRcHde7NGeINeyGZBIGYLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WFaanQpN2qiGXoikH4x/s2La4VbdRlxiqJmy3zPyyr8=;
 b=V2o0PlhlMdVPKnRisce734i46FZLKVMdpSadp4yMlc0qAaUTfx9LKeXrpDNtdzDKYWhRgEoCIRL6fazMnV7LqqLiQtm/X3rKb12f4wqA6EvGKxqylUx0dqRsQGHcjvQPJV4k9Oa04WWmXKJ3ZuJlM6oOWPSU30nogtqSiAephkagyHrFPMSagiqUcrNTCjtMC1XohcNSzVRyANikbMJxdFEhQxxG8bYLZ69ewlO8+HZuDLuvgKDdPNqkefbbWcyjBxyeWyd5lgx1t02+iGWmoeEM476S5Om279Lg9ArVI4y9kDmcTF/jbdux9AlFHI3RXZ1fvOs3ugjC/wuQ5YeBTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WFaanQpN2qiGXoikH4x/s2La4VbdRlxiqJmy3zPyyr8=;
 b=C6KyVVy5rJ7tPdK+KH8Va1/czDEu7AOVOcPtO+yM5RlY3mDi3+qK99CSO/7PkfUykE3O/n43sgQF63z/SdHl4TQjY46eZU/MsvDOOndI9lFkkSD3hSb3CM7BBioPxqp7iveHCakyK2dmKUT874D+UZDU0oAlqXncIPDNZo7aHsE=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB4564.namprd11.prod.outlook.com (2603:10b6:5:2a0::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3433.36; Thu, 1 Oct 2020 06:23:15 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::8c79:e56f:7f8b:ebe4]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::8c79:e56f:7f8b:ebe4%7]) with mapi id 15.20.3412.028; Thu, 1 Oct 2020
 06:23:14 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] e1000: remove unused and
 incorrect code
Thread-Index: AQHWjeuAaqOe8VznUUGP4dzZ4Uq2XqmCWnqQ
Date: Thu, 1 Oct 2020 06:23:14 +0000
Message-ID: <DM6PR11MB2890E7A928B3724135A0A681BC300@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200918184152.604967-1-jesse.brandeburg@intel.com>
In-Reply-To: <20200918184152.604967-1-jesse.brandeburg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.130.218]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f0789c95-1436-4f63-d1ea-08d865d27ab9
x-ms-traffictypediagnostic: DM6PR11MB4564:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB456471BCD37288FFD6FE98BABC300@DM6PR11MB4564.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:207;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 126+L9HDO7q/5gD2d/X7JE1TMPkH6AdyH4QRJMV2HJmJ6wzZfeqm3iM72aRiETPsMCXkf9jIFnjqb91wHINd+p2Fuq7wGq0XKXfwmelK+N4y5L7mOPTZryMXkfBMKNx0YNDAg40G8u2m4xMeE2ox3syG6g4aK4xu3iHoX3AevtSQeK72UaEFhB5VSege56OOM0vVWS+6BX8sOVyOd1D0ETFKmx08kreyOnWz61ycM56L58wt0xV2Q4zsvW0MrxQiL4ZJ3vk+bnJd85MkUN/PKRaav6goT8Iw3I304/TcgzGW/m4HKAQxRISdSsD3Fo8+4gKc+/wdq0kSGG20be15+Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(346002)(366004)(136003)(396003)(376002)(86362001)(26005)(2906002)(186003)(33656002)(52536014)(76116006)(6506007)(66946007)(53546011)(4744005)(7696005)(66556008)(66446008)(64756008)(66476007)(8676002)(316002)(71200400001)(8936002)(83380400001)(110136005)(478600001)(5660300002)(55016002)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: Zl3NEtifBBTGh/0MnSlPIkFsPCIW1wXB8SUo/+zCT6EnfBDbbtwOx7CIqVspDN/WRazIyrC7bfEQ3ztPn87Qf5Caj2opetwFIFaIekk4yrV9EE2LOilYSqnquqxS5btTM1/JBVYqVxxQoJ8rt7je+u92cF9Rum45Tb3ZHidFyoIokoIx+IRh6yHoFUGfl0yrFpUiR5GvrePZAMVn/A6Fn5NYxgqAsHbbbFOhHHCgvLGY36NWu/d8+2CGTunCpcy52lP+s+ThVbHJXvgjtNma7llSisl8OAStIFJgToS8YumVqbxLA9C6dHwagfy7T31phab3nrDZJeo2FJZIGfUIqLmESJYa1IK9LPnBjyXdvjK+nq35aKcPPEj7lSqb0DjwZzns3HSFiyqHrJ28zpSVW5X3NATnyJuh7ZNkVYyaWGvVgYzIA2wD03mYnkoUthwJO8uFrRNMaJngX2oSzVoGGJVONBwQLA2oq3LJoq1+E1lkCys9WvRfe+WF77zarKm+zgINRya8czU1KZDLpCpb89iYF6hY7gWYbCKYXm3kbGpGxcTgnjIZBEPr0c9pUQpsDl5D6u+4SsAXVba1+zFjbrO3jdptEVF2IfdiriGYvLtDiqSLOCPzalm4CleqYquPIi1YM6PkBZ+pwd2kNJndyw==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f0789c95-1436-4f63-d1ea-08d865d27ab9
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Oct 2020 06:23:14.7412 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: P0Iugoh0KCEaY8/51F+eOA9+fP0CSbpYYYFV6MBjmxvyD99TovPDZHDSCg32kU4/5kr9fFFYDqYZTdDCv29vSA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4564
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] e1000: remove unused and
 incorrect code
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


> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jesse
> Brandeburg
> Sent: Friday, September 18, 2020 11:42 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v1] e1000: remove unused and
> incorrect code
> 
> The e1000_clear_vfta function was triggering a warning in kbuild-bot
> testing. It's actually a bug but has no functional impact.
> 
> drivers/net/ethernet/intel/e1000/e1000_hw.c:4415:58: warning: Same
> expression in both branches of ternary operator. [duplicateExpressionTernary]
> 
> Fix this warning by removing the offending code and simplifying
> the routine to do exactly what it did before, no functional
> change.
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
> 
> NOTE: I don't recommend this go to stable as there is no functional
> change.
> ---
>  drivers/net/ethernet/intel/e1000/e1000_hw.c | 10 +---------
>  1 file changed, 1 insertion(+), 9 deletions(-)

Tested-by: Aaron Brown <aaron.f.brown@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
