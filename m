Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6306F1B339B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Apr 2020 01:44:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EF6AB2047E;
	Tue, 21 Apr 2020 23:44:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 06PiNVvB+yKb; Tue, 21 Apr 2020 23:44:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B411A20449;
	Tue, 21 Apr 2020 23:44:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C296B1BF2B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Apr 2020 23:44:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BD3B185FEB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Apr 2020 23:44:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MPf4BT17L1fO for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Apr 2020 23:44:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 088EA85FCB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Apr 2020 23:44:16 +0000 (UTC)
IronPort-SDR: ASvv9AxNVA9jozVkQrCPI2nBmF2jT7cXsuYGH7q5rrTFsvtxI57eKIEx6LZgMRY1dWK3bFNX90
 EENFJcbPQedQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2020 16:44:15 -0700
IronPort-SDR: +M0Hwr5xfP3yAK+5CxmuZ3OiYR5UJf7myBFKtMoeaw5AXtsco+G9bHCpbWBU5z5+zaOm9H6mmM
 a9L7YJeQAxqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,411,1580803200"; d="scan'208";a="290642653"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga002.fm.intel.com with ESMTP; 21 Apr 2020 16:44:15 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 21 Apr 2020 16:44:15 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 21 Apr 2020 16:44:15 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 21 Apr 2020 16:44:15 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Tue, 21 Apr 2020 16:44:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M/sFcWUu4jqOCmT4paWMU848mE5BwV4BL9zRkSxEnHvWth3461xFjlkvbu94y/+RhQ8bCj6fbjxWSgyMWGTzPTyNnmPofcFycqa6bHhdbbQprq7rChkd3vbjdAN/mHRIJTPcSfRSePsaiBrt3vhM2iPteSVU1RmuEZJi25gxO0Cn1Gf8K8djfLf9Zlhbfgrpr3m7OnW8vE2kwM8WfBFxOBv7if2TtHWV0fBOoo63dNyrP0LzgFctyzL3PvBJjCKnYF0SzKrAeTl3OT3eCDgzc39Xl0fgWUe5FXRnJRcOH6WtbkGqBxTJkux38PfpxROkekCbnsaeG1f4ECjNeOHK1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lt0nmmAsibJDvZMIk8g6Qtsv346cwVFfWXNO/ywmbZ4=;
 b=KwgB+vzyeiczu+1nX0Km7Te+vn8m9863zHoaHkAw8y5Ha1XKLZb10BOMW74Di7oO8G/LdX1oK/NgnBnTeNoNRdp1rjk2h5MCnqH7fz9UirsSTq62fN56HZvEAlC1SaXqg1CmwaW3Uq6Y4t2YvYm5nIVnDDGBsxpEjwT1/u3EhqRpfL47nVDiBbmEyIwK1M1V2M93nOzpnZHEbudFMYNUhi9fKyD1O1rZ4c5RopvF6rm/N1WpqnGg6MbT9jQFGneucTHFEzbHIq+v9k5BmDCGIf5tjCIgthVtXvryuQ3Z6QVrSAZWGvmubIBnC07ddfayqE7ROHFXsvXPEdHoQ+j2Gg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lt0nmmAsibJDvZMIk8g6Qtsv346cwVFfWXNO/ywmbZ4=;
 b=YozUc6KVuA2SVNHG5o9h/ALb6f9jncFUm5tze3G4Hytjij6N4PAQTYey7vXxaJA8uTnHuAZYD6U2JoTNsiL1IhT1ihNikeHV/lvQ+IBh5DjC1WrHcSwSUqLtPYAHBPXOR0I9tGWk1DgGCrgk7NphkWPRg6LCUjlcv2+afFqq/CU=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3356.namprd11.prod.outlook.com (2603:10b6:5:58::30) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2921.29; Tue, 21 Apr 2020 23:44:09 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.2921.030; Tue, 21 Apr 2020
 23:44:09 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 3/4] igc: Return -EOPNOTSUPP when VLAN
 mask doesn't match
Thread-Index: AQHWCeRQGPdpuqKd/U+gzb7BrBW176iEWYyA
Date: Tue, 21 Apr 2020 23:44:09 +0000
Message-ID: <DM6PR11MB28909D37A2EA5379269D9DD1BCD50@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200403181743.23447-1-andre.guedes@intel.com>
 <20200403181743.23447-4-andre.guedes@intel.com>
In-Reply-To: <20200403181743.23447-4-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aaron.f.brown@intel.com; 
x-originating-ip: [192.55.52.193]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 55c09a4e-9393-4228-9244-08d7e64de379
x-ms-traffictypediagnostic: DM6PR11MB3356:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB335643C1655AF512A3A756D6BCD50@DM6PR11MB3356.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 038002787A
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(366004)(71200400001)(86362001)(5660300002)(33656002)(52536014)(66556008)(64756008)(66446008)(66476007)(55016002)(76116006)(498600001)(66946007)(9686003)(4744005)(53546011)(6506007)(186003)(8936002)(8676002)(26005)(110136005)(2906002)(7696005)(81156014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DYx3+FSCLb3BX/5nVTtJtzxDLyRykUc5IFB4Ar1g0CC8FZOwUANIzwvbPtwncH23tttqH5nl5QxBgzpsvaD9utWblrsWJu9aG93FoFAndG0D2iwO0OC26eqkZ+VOTRDwX7YTg/UhlVqNxM/KoYzYpKz2O82yxyB0wXiRkFwDOQI3WJmBVjSYnjV8xjdxF5iOw1o2tp17uLD5VjkWd/spjeME1HzNyeNcaeBnYNaO7B5qU80iYtJn8YxiCP+062wpAAN9DcnOYMEfqasxxpyDZgKxKJLR6MEXirB2J5XC48S1WXPMXN70445HwIMQs1gkQM89OdkFwHLk51JLlT65KovktdArjxQyl+D2jj2Gmele11LcqZr0CafUFioPMqL5Pv5sBCnqgp8vC7Lub30LbcCoZnePfXc69bda2pen947PxVycEy8y5wpjKb6lgY1m
x-ms-exchange-antispam-messagedata: 6C5icuNsK26de840P1zHTOJyGedONljHfH8zp1MeKa/ltQHoORac2He+3J6wKtG6mwXEIpZcXC0ZZBIC0Cc06+lxP1424LvetDH/3UTfckqbr9mf7n6+lyQtCI5tr1FHg2phYGMbw1SsfFVEBdVOiw==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 55c09a4e-9393-4228-9244-08d7e64de379
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2020 23:44:09.8010 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xwYgVNuhN6Ga8pe7iDbbDBeEe24JIQ/IxzHeh3tz6K43RMKV4NZmBMtsWYUxpOvfcK6imsXtPLQ9rTDnkVQ33A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3356
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 3/4] igc: Return -EOPNOTSUPP when VLAN
 mask doesn't match
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Andre Guedes
> Sent: Friday, April 3, 2020 11:18 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 3/4] igc: Return -EOPNOTSUPP when VLAN
> mask doesn't match
> 
> The I225 controller supports rx queue assignment based on VLAN priority
> only. Other Tag Control Information (TCI) are valid, but not supported
> by the driver. So this patch changes the returning code from igc_add_
> ethtool_nfc_entry() to -EOPNOTSUPP in order to provide more meaningful
> information on why the function failed.
> 
> It also adds a debug messages to give the user a hint about what went
> wrong with the NFC setup.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_ethtool.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
