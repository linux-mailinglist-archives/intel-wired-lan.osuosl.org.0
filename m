Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 70D102DE9C2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Dec 2020 20:27:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C13F186FA9;
	Fri, 18 Dec 2020 19:27:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4wTONURJHOna; Fri, 18 Dec 2020 19:27:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0D98487B73;
	Fri, 18 Dec 2020 19:27:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CC2DF1BF38C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 19:27:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C5AF287413
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 19:27:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FERhH8kNy9RI for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Dec 2020 19:27:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A7E1C86FA9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 19:27:52 +0000 (UTC)
IronPort-SDR: G8cLHbc7qZHva5ERLYHkKC18deftA8BYXR5yj2P+iuQWXy2PaUP9q+K3QxlmHXQQb2MZgn4lxl
 EzrjWq1s07sA==
X-IronPort-AV: E=McAfee;i="6000,8403,9839"; a="237062360"
X-IronPort-AV: E=Sophos;i="5.78,431,1599548400"; d="scan'208";a="237062360"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2020 11:27:51 -0800
IronPort-SDR: KWtf5EvwC5UqRDZ/E5zBcb0/kWLHkTWA9ZrsDJss1JAPWcPPqs+y8w4QZMLpLfQkQjsq+b4sMz
 ulcdf/Hn5oPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,431,1599548400"; d="scan'208";a="388768658"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga002.fm.intel.com with ESMTP; 18 Dec 2020 11:27:51 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 18 Dec 2020 11:27:50 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 18 Dec 2020 11:27:50 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 18 Dec 2020 11:27:50 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Fri, 18 Dec 2020 11:27:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WzRXsyAMiFqivmCEPHMnpnUKFpMHaxA0AP4aQ69tZA6G8LytygZpHO2ERC4Wdt8ldh5zP5oqASev2fY6B4BoDFBQagzy8ruffGuUeMoNpKClNSxrEGX67+YXNN3fCKtELjipE93azp2ofU8KeQ9RFMz8OldBoRnFJL+stpOxgTVvHlBeZ4p+8XxirMTEpQ+8xv5Jt8ePa1tXimd9Q0pDGP26tTV3Vu2cJNvyW63J+ZAN8jwBYriGQCwb61cPak5ZtwYD24qx6DBq3LFGtjTLoOoj+kO7bhww2vePCaE3fqRQ/bdyv5CQQ5rOYsQPqZm2YaAgCySN7kME6AQL6DhQCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mFI/pXOX/CQSnRCvUBoNRg/Z4vLdU1ueQ8TnQGPCqcs=;
 b=KXZc2qlVJY6pr8kqmXhzbRoVTsqRDLYvi16jH5yJJ5a/gjNMzFC1aKGoNRYS/X9nO/Wz+Ijoj0MtCzSYEkEGK2U6pkUDzvsr9sc046xPwPuFtBEUaYb7fb7MJ70rZtJC7ncFlQ7WDLB08+jNJtB0gVwETF/fuld7jIHgVVpKG+yXQvWV2xPtbXFTPb2lIPhR6PVtLPF93NfDDGURYGQmkXwpdeYjVQ5TgDLWuSfvMYQ/f+nVU68q4BEhbjKYQMCoULPXFCaxm66QwxKc2Yc4KQyWbXVhdwsDEbvD5XAq53HhIiveklt7O6Q/fXQ3EUtv64+tVUmG+VDq2BIy6dq3tw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mFI/pXOX/CQSnRCvUBoNRg/Z4vLdU1ueQ8TnQGPCqcs=;
 b=xck0XA4HF4c6bOCWoYFeSjJbsMqELh2yZ8t5XQJEAZ68jYXgxFEM+NMv7iaZromArxFojPk+EEfPhmbhoTohSnuWjNagenCmadEq127aqZkyqs94s1AW31GIcyA05NnEKZ3P4ISCQY06Rv/TeutWHqKn6I3yFqJD2p1opAx1h4Q=
Received: from BYAPR11MB3606.namprd11.prod.outlook.com (2603:10b6:a03:b5::25)
 by SJ0PR11MB5071.namprd11.prod.outlook.com (2603:10b6:a03:2d7::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.20; Fri, 18 Dec
 2020 19:27:46 +0000
Received: from BYAPR11MB3606.namprd11.prod.outlook.com
 ([fe80::d8c2:b311:7658:7911]) by BYAPR11MB3606.namprd11.prod.outlook.com
 ([fe80::d8c2:b311:7658:7911%6]) with mapi id 15.20.3654.027; Fri, 18 Dec 2020
 19:27:46 +0000
From: "Fujinaka, Todd" <todd.fujinaka@intel.com>
To: Ben Greear <greearb@candelatech.com>, intel-wired-lan
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] 5.10.0 kernel regression for 2.5Gbps link
 negotiation?
Thread-Index: AQHW1WmC/9lZetFbe0W6vQgdg2EdV6n9PE7A
Date: Fri, 18 Dec 2020 19:27:46 +0000
Message-ID: <BYAPR11MB3606E48BA821185142354D67EFC30@BYAPR11MB3606.namprd11.prod.outlook.com>
References: <7bb485c3-9556-d9f1-e70f-a4b3a05909c9@candelatech.com>
In-Reply-To: <7bb485c3-9556-d9f1-e70f-a4b3a05909c9@candelatech.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
authentication-results: candelatech.com; dkim=none (message not signed)
 header.d=none;candelatech.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.115.69.8]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 77368a73-8508-4c37-6ebf-08d8a38affcf
x-ms-traffictypediagnostic: SJ0PR11MB5071:
x-microsoft-antispam-prvs: <SJ0PR11MB507133BB1CFC00EFDE76B65FEFC30@SJ0PR11MB5071.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:747;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: E50YRtbEvYkA8o9/7pFUa+3oPGO0sASSMklIUwnCQxZIFyZqevQPnvh/yYArPVYueEcNyD/omD3t4e4SB4rBMhvR7nUPcZfdbxfd1nB0FIiuBzyB9XVlsmqM6wJWAlQYeI+OS7rq5eh+VNTkQW4mjKPa1U8K/LAdvlciKWphLmGvVLa0UZIkdLx7RvrlhA+uIzWXas8YUMI3+5my8rJJ2AHauDiOE5NS2TRtywAFVptBbsjxipnJJMkRu6JYnQCxW0o49GsJi7smHhqUTkAFM0cYMl5MV6B/ZhHQMYosHGKQ9sXX38P4VGdmxSvCJrIRMjVDGs2ECWoZ6ZkvbxpshQpV0kaXtn51/7TiJt/3mW11i2mEh/Qj3W58+MMzIACYPZ8AbT0iN/NMF3k2oSTxkw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3606.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(376002)(39860400002)(366004)(136003)(346002)(33656002)(52536014)(5660300002)(86362001)(26005)(83380400001)(8936002)(110136005)(66946007)(186003)(66446008)(6506007)(966005)(66476007)(8676002)(64756008)(478600001)(66556008)(7696005)(55016002)(2906002)(71200400001)(316002)(76116006)(53546011)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: AR3HcgQDOf5BgDyyUeGzE1OAdXV6+kb6LhQ4/aD91Esg1W93BbHabnGva9sg0GYRBRiNxwCbOAlnK6Cfk+fy8AmaIfj0tf0lUnruKxrvqhuZVYXJnCFHfgArZUV8PvKxjpQ6TFt9lLOdnBfoxjCRE5dpHh7r9AmbIFx7lH7vji5PvZlC97bE8tfDoYZfAGpRhi9aFNsooFrDNRtrhA571+cJTPmt+EC6av+oY/+CLMe+C1ZRghYRoUAMa34herwbaEdyaOoF0uUYvj6yVbSbtFCawAGu0Z3IGu7bx0+dicCfZhwqiuwhpjIW91FSpCEHhviPfG/7iIzfMlDTYrpXVEkM7GdZvIXraHXP7iaJX2HQthQSRJonsUH0oUyl1XJJTxS1YyOgFULa4lngcIOgLLW0EWnSCnkt6j7iIktbbvyXhW/8s/xmP/50Pg6szbHazRhG8QSOIQ+q+5TEYiJcCAuZUoZA8IktqOWKwAd3fmLE8Z0kCJ6rmra0hvrxdISiKL131ypAv3wfYUlXMNqAmol7QgU0fEkHOWSrDQj1j47qNOhlX8MlzgB28AB2iNIlh2sGG/SnQmnYHYHXtF6yw997UKn+uWvchITW88QJvcjZClSKfjB/Och97XBagaXy7vzjcJ8yYTyxNNgKedT9qCXUChsvqh5KXzEIlce+u34BQhLyzbVOfP3Ny6zD37cat7j5RL4dKgKDiO4A3IEQvFGllD2yj2WWW8i5YOWYMpY=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3606.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 77368a73-8508-4c37-6ebf-08d8a38affcf
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2020 19:27:46.4314 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: R1/C8AC97XlD5W+wbBNJqnmarvO3Psu7WA+vwhNC9F+DMzyJkKkSfqbSevKjXNzA2T4BbBZ9qtSIAqFdeofydw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5071
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] 5.10.0 kernel regression for 2.5Gbps link
 negotiation?
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

Yes, and I'm plugging the hole in the README right now. Here's the proposed text:

Advertisements for 2.5G and 5G on the x550 were turned off by default due to
interoperability issues with certain switches. To turn them back on, use

ethtool -s <ethX> advertise N

where N is a combination of the following.

100baseTFull    0x008
1000baseTFull   0x020
2500baseTFull   0x800000000000
5000baseTFull   0x1000000000000
10000baseTFull  0x1000

For example, to turn on all modes:
ethtool -s <ethX> advertise 0x1800000001028

For more details please see the ethtool man page.

Todd Fujinaka
Software Application Engineer
Data Center Group
Intel Corporation
todd.fujinaka@intel.com

-----Original Message-----
From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Ben Greear
Sent: Friday, December 18, 2020 10:08 AM
To: intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Subject: [Intel-wired-lan] 5.10.0 kernel regression for 2.5Gbps link negotiation?

Hello,

One of our users reports that our 5.10 kernel negotiates the 1/2.5/5/10g NIC to 1Gbps instead of 2.5Gbps.  Booting the 5.4 kernel shows 2.5Gbps as expected.

I have not yet tried to bisect this...is it a known issue?

Thanks,
Ben

--
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com _______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
