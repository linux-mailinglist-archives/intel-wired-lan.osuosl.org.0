Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 064B1206962
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jun 2020 03:17:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AF1F389354;
	Wed, 24 Jun 2020 01:17:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KFengMDliDZp; Wed, 24 Jun 2020 01:17:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 332CC89290;
	Wed, 24 Jun 2020 01:17:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0C4341BF477
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 01:17:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 05D8D221A9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 01:17:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id quU314+JpXMq for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jun 2020 01:17:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by silver.osuosl.org (Postfix) with ESMTPS id D71BD2214F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 01:17:13 +0000 (UTC)
IronPort-SDR: L729ck3eFtusVI8YdWsiR4QU4jVRz/S5f1o/xiLsomGixpfMAph27TY1+xDiTsceZp02Pu3CtV
 1UXQYdJ3ViaQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9661"; a="131703574"
X-IronPort-AV: E=Sophos;i="5.75,273,1589266800"; d="scan'208";a="131703574"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2020 18:17:13 -0700
IronPort-SDR: ir//eMdBAne8B5DA8P0+xMUvjJZTono1gkecLoEwrZ1jM2vHhaGkpEKAsHIYI40omSbxQ24X35
 aI72enPsQGyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,273,1589266800"; d="scan'208";a="319312435"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by FMSMGA003.fm.intel.com with ESMTP; 23 Jun 2020 18:17:12 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 23 Jun 2020 18:17:11 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 23 Jun 2020 18:17:10 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 23 Jun 2020 18:17:10 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Tue, 23 Jun 2020 18:17:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ijt6Ymm/zMAYDERwG2bDVq/bRmbJRotEnUf6A1YeGxCd4QHSToqcy693TaUrRGTuFaeQE2OQZCsP8TnbY6xz5ATMW96OEfTUw8seG91MkM6jgYQ2Ftsz7ZY6cuMWXkC7Arvz7J99FOECw0elHzCqmtqX4B+kp56LGlgauaGf9zS1CxSmwYTsAYGkuXlKlMQlt75f0G4wht/jphF3FoY/e5Dqz4C3wNHYeoTLFCa+xQW/488me0ltwzeVhhlap0vy/QbMEVURAMrziK5iB08AEKSXPBpq8k8ChrnkmkK2o3XXqFlFT1S5RI8ob0q8YnH7w8dTQz62c5EoDSvdxh3vlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9vGIsfoa1hN0Tu+XOy6X3YjmlKBr+H/gz6Ec+97FTtI=;
 b=TX5ozGGT9k0g7Sst+h+tODpXm/AlcMREsxwnn6GWreMq/ss6LxeNt+rur6WSDmMmJGK8owCFn7031Uqmx5RbI8BAHHupGjX0SCuANGvpc8UjwS0GSPzKN4I2WlmcYojfVrKDGsZgyftdoKh2Fx7e9P0DozLfDVwe3f1JbCK96I/EzU1XPy+81JT5Klp2/uMWhIlR67WwY0znj1Xcd8U+mIbDGFWwGmgWOEiVVNLAjWW6HJ3hJNpDNkl9iov99HDyBtA1sRh+Kf14KMLyE828afPn9fY/EMv1go/lBPVpMDzjqB1XOqBV0yjQmJ26QhgyB8hsXiXk7emC7gfpscnXMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9vGIsfoa1hN0Tu+XOy6X3YjmlKBr+H/gz6Ec+97FTtI=;
 b=yFntx94b0ECNVJKMN6Kp7CfCD2NyLaF+ZYotMkqP8HoIv+8wACcd387BAyirxLNpQrjrP06V9Y1/XoJ92wai/R4R000ynD+xkTeZuImPMAbuqwVt6jKMaTbE/FvJZI9u3mlX5MSnh4ItopzJh2d0N8GAJngjG2Li3qRanlLKLSc=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3499.namprd11.prod.outlook.com (2603:10b6:5:61::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3131.20; Wed, 24 Jun 2020 01:17:06 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd%6]) with mapi id 15.20.3109.027; Wed, 24 Jun 2020
 01:17:06 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1 1/1] igc: Refactor the
 igc_power_down_link()
Thread-Index: AQHWPayGHtyQayxjE0S+SpUvx8QWvKjnDtsw
Date: Wed, 24 Jun 2020 01:17:05 +0000
Message-ID: <DM6PR11MB2890A0D6261A89047CD6A303BC950@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200608154939.30699-1-sasha.neftin@intel.com>
In-Reply-To: <20200608154939.30699-1-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.55.52.199]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f9f17a4b-9f3a-461c-5a4a-08d817dc4f1d
x-ms-traffictypediagnostic: DM6PR11MB3499:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3499B6E566EA3D5A1CB6E356BC950@DM6PR11MB3499.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:268;
x-forefront-prvs: 0444EB1997
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5fWEfhjZVP2YZzMCJ+dKzKAGjGnWG4FcynEEWkVHcBoTZc7ORy17kAaw288AJUm1Ah3iKvnzoNYCuGw/G56oM8XeJmyrV8WdOsJDULP4ii8RbWkM91duWb7vTFVSWnUHjakv55xOYg10eQYvrTL7y3UT/9ckdXNIavXopoZw7rJ9xIXLIxnaOlquY4DlAZ1hfe4BfiaCLjcIB93QyAV/44wSv/TDRXujezfP7uZrvmr9hTleYLeo/3O60/8ysPPjxVuCKhGSrg3uVbck+W3z1ilDaYW507VgXPTyoJI7l4RD9EG2H7GFp+YNtUA2ihsI
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(366004)(396003)(376002)(346002)(136003)(5660300002)(110136005)(53546011)(6506007)(33656002)(71200400001)(7696005)(9686003)(2906002)(55016002)(478600001)(8936002)(66946007)(52536014)(86362001)(4744005)(76116006)(8676002)(186003)(26005)(316002)(66476007)(64756008)(66556008)(83380400001)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: AkL7j90p+qKNYcHdI6dCNfVU2cLyE9h5EhRQ4JIuOJBwvIf//F01UrGVWeQB+O5JMQKMjpz1dstchSpN4KjE+PntzXKb0Qe8121VrHOynrIMhqzjdzI0PwRxgI1rvpAqPYSzxqwfZBPMDUlQzjZy4537rzTBrFVPkjji2NM9PgfCKMRiAb/vcZ5gEoQ6BT+KwctLQ2i4h36+G9nNK/zqXXYqTIOoaEhUXFQumn0O3QMLxaxdnc9C6vyQpoKyu27C1sWCoZD95GUOHuZICEfmDQTvkNKu0fkYQVgLh6sykEsQDHNebi4qBRWZUhieeGWMVKYilC/KGBiJy0bDgGd9LLDf9mUTVgM+1w8ARfHD/lIWF6whs9rQ9yYXqNr3/0iiXApybmrickhV0b/1IB6TE0wRI16TBAE99cmwGZ2jn3bGKW1cKZevlJG4KqVzg2t1CpxpaTU+GmaS36+ozFue2pF6+VAxp2Ev/T1xHIpB0hY=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f9f17a4b-9f3a-461c-5a4a-08d817dc4f1d
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2020 01:17:05.9133 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EJjhC0SXpKroxvU3E9Pm3q820/Fc1KIDnub51Q7svHWkH9QDuxkAuB6Wo+NdRH3WFeZcDqCm57A/U7WRr+E85w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3499
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Refactor the
 igc_power_down_link()
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
> Sasha Neftin
> Sent: Monday, June 8, 2020 8:50 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Refactor the
> igc_power_down_link()
> 
> Currently inplementation of the igc_power_down_link()
> method a bit tangled. This method just called
> igc_power_down_phy_copper-base() method.
> We can just call the igc_power_down_phy_copper_base()
> method directly.
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 16 +++-------------
>  1 file changed, 3 insertions(+), 13 deletions(-)
> 

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
