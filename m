Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F50F1E2FF3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2020 22:26:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C76A386946;
	Tue, 26 May 2020 20:26:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 49aFgdxg80hY; Tue, 26 May 2020 20:26:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1D32E86920;
	Tue, 26 May 2020 20:26:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 84C251BF82F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 20:26:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7124220115
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 20:26:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QFEtjK28t+A7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 May 2020 20:26:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id 701A51FF98
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 20:26:41 +0000 (UTC)
IronPort-SDR: oV9ayH4QMYHHiO909ba7PP3qNCIsEyDcmo5oI7ODjhqdX+foloqcfF1hx2SirNhvLOcRPNJKwq
 0pyqASuQI5cw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2020 13:26:41 -0700
IronPort-SDR: S1j7mXwAamUPG/4A3UXR7ssB0WH88Wwox0tds1oqKZ6/L1rU9cYM+URUAx4iVKvwXBoA4KdEcv
 bHhpDSFthe3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,437,1583222400"; d="scan'208";a="301840974"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga002.fm.intel.com with ESMTP; 26 May 2020 13:26:41 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 26 May 2020 13:26:41 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 26 May 2020 13:26:40 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 26 May 2020 13:26:40 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (104.47.37.59) by
 edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Tue, 26 May 2020 13:26:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J4g6KkR2OiuRCcOBhfD6/j9r9QrcYmsMVbRO0qhUfz3LdKOEuhKac6yonTOGf8DSrJ5/L5sRNR1L6YG4Uemi9thxMs+4OtxBJYTJ2yqBMYcWFldFojCdhCKjf5DQsXfozp7d+U+j0zX8dASwKEaukPbIHD6cg58wVx9Q/qmzPJ8163uHRu+ara3P5JJl0ylbHHTYeQ9kTyzMSDvsUloujuBZ7yJywvtgKvK6v1TZ+AlGQ8lXQruEAVErYp+VfW9HtDXbRifIOP6tFETPfm3Yqj94uCC/fmwoUL+2+7BdZoq7zES4ZTekQ06zYKldotFbDDNBKKI6x4y9eVlZk2DIUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O1eO+EdjpjW+KOg/fqeXS8poTPJvyeyv3L/CVSqjFZ4=;
 b=bCoNXE8oXfkpQdT48DjW0uHVzulpuDMejC/ju9n/4PJK4d73f6NadVB6QNY4BbZuK2hH5r08yaee6i9hZkedyuvUVtKYuLXj9vciFj5/ncCF14fN1KTU6xa6b8/n1LTMDUIRRlMSXyEpZl2BXm3MvwdLqKNXpogunDnDQuN9CY2Xe6xz1l67cp30dOlT6A9uRhNGFwKdewI4KJo7L7eWCe56cqzg3W2R0Kw4gQlVco1XLJGFTvC44PsEt/JSTqMLdh2+EDpuxYzheXeYvx3q4CYGcOjQjQUcsZ4yqrPzUxjDq7cii8rIiAVvnXeiozYyeFrjI7wNlWuVHwL1zrgOog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O1eO+EdjpjW+KOg/fqeXS8poTPJvyeyv3L/CVSqjFZ4=;
 b=QSliEGax/XVc330BaXWWEQDzQRFb7P7ErB930NIMRTljzSKjCg8jXa3m7gCbS5GIVXMoyZ+6kvkGX3CTGfPNz8GTqfFqkIknQX2QORwSsMD77wVDN0/4Qf5eXzcV4k4nUoW6xoexB4lauq955AtyMTJIWNzetnyamcs+F5JSEr8=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1643.namprd11.prod.outlook.com (2603:10b6:4:b::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.23; Tue, 26 May 2020 20:26:39 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3045.016; Tue, 26 May 2020
 20:26:39 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S44 13/14] ice: fix kernel BUG if
 register_netdev fails
Thread-Index: AQHWKxtk4OLyCIfTMUy1RbWwPjZ0Mqi64aIQ
Date: Tue, 26 May 2020 20:26:39 +0000
Message-ID: <DM5PR11MB16593DDF91B939D2FDCADE668CB00@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516004226.4795-1-anthony.l.nguyen@intel.com>
 <20200516004226.4795-13-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516004226.4795-13-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [134.134.136.215]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 63f4a681-d7cc-4f6d-a8a9-08d801b31877
x-ms-traffictypediagnostic: DM5PR11MB1643:
x-microsoft-antispam-prvs: <DM5PR11MB1643C4E9C0427DBDA0FF86248CB00@DM5PR11MB1643.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 041517DFAB
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QAx1SEKM1bAV5qvM4pPoIRswvqc0YlvXIT+N+gluc1viiofljwvm1hgJDYc2J7HB5HLQm+aB6rKoIPzSpwnBWWsEQ0Rs8mauP7ix+nYGdN27cxWjGCwIMUoHN6OI7/UJXeCf4KlkPV5jKEBJe0sM2vTmdi8+6eTslqJgqwjntgoQPzzF7H9XG9z6wR6gLLjpvVvrRGOqRj3vRiz4TMqzxmRg4qrl40NkV3i2sV/sgxNJZF8RL+TFa4g9Hr0RsEnxIye2Iw9PUoRxf1lPUShZWFbkkTTZ9+WDayOXHx4LHEksycI7JZh10a/K5uYMds0W1LrNpi+b5QBxZ6t7dMuNLQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(346002)(376002)(39860400002)(396003)(136003)(55016002)(316002)(26005)(9686003)(33656002)(186003)(71200400001)(6506007)(53546011)(7696005)(5660300002)(66476007)(478600001)(8676002)(8936002)(2906002)(52536014)(6916009)(66446008)(66946007)(64756008)(86362001)(66556008)(4744005)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: ZcM8c2dQ1Ke8z6PuW8ovjiuSUD0wSHIhvovuVzU2Sd3viNM8NFxWQLQ54c3hyUohaW3ZwEO5goPouh4U3j4NFbQVnLtfnjy7y9JsuG/VIAjrNyXaayrUHuv8aq/r0OtWSp8pQOCsEagKZmovwB4gXxBELIz+n8uOw4XXpbe3RqzCIaCaSQugjmr7l3Y4igj0FvzJRC8lIfoSb7HT5hwmka7/ICe5HxW6fz3NGVqEThooxRzc7pNkUISsOcrsQbZLxCkjlgwwI7/UCEngIzF2VcMR77EMGQGwfeKDlWgk/Us2w5fhyUoHaUHZlcaWXdJGxUE53wxo1CarSzZsfq9i8g5FuJay8YdynW+pLZoz0mrLGL8Bg0IYRjSPXtrXuk8w+XZ3fqYUW0ozTUS8VmyYLuJaFUMkxpVvMu4vHXVD6MH+1+NtUfoa5lM/9jwOMSNzJj2TJqNko33auh4i51zbR7pjH6Eyks+WIZvQDf8XmWr4iv5S7Lx7DDMhfty8dN6p
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 63f4a681-d7cc-4f6d-a8a9-08d801b31877
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 May 2020 20:26:39.3654 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Hyez136m2yDv3qcok4dZEDsaMkR1f0azQgXn/7HZ5TTg84dSwUQfnZf60/QxhBvXD+9nrpJl2yJYbMZbvzo6Pe7p41t1oOSQQvCFHzR4geY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1643
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S44 13/14] ice: fix kernel BUG if
 register_netdev fails
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
> Sent: Friday, May 15, 2020 5:42 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S44 13/14] ice: fix kernel BUG if
> register_netdev fails
> 
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> If register_netdev() fails, the driver will attempt to cleanup the q_vectors
> and inadvertently trigger a kernel BUG due to a NULL pointer dereference.
> 
> This occurs because cleaning up q_vectors attempts to call netif_napi_del on
> napi_structs which were never initialized.
> 
> Resolve this by releasing the netdev in ice_cfg_netdev and setting
> vsi->netdev to NULL. This ensures that after ice_cfg_netdev fails the
> state is rewound to match as if ice_cfg_netdev was never called.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
