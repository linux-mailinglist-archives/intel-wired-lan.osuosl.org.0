Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F6B1C20B0
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 May 2020 00:32:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 505D626325;
	Fri,  1 May 2020 22:32:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MqB5wjAnzmjH; Fri,  1 May 2020 22:32:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B00FA2630B;
	Fri,  1 May 2020 22:32:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E91F41BF45A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:32:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E3ED98713D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:32:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IdXsvCGL9gUy for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 May 2020 22:32:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4F77C87088
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:32:50 +0000 (UTC)
IronPort-SDR: FxdX6t45z+xCK8HzVuOwQSBP08C8DYJFHJj9ryUk6UGw1M3u9E8WUj/3OcAbP5YKyo7O3Ax4yR
 ezS3E22GOxSg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 15:32:49 -0700
IronPort-SDR: h26yKqg4XV3smAjxts9C/Hk1N2JF6ov2ErJEa+7T1q0I61B0yNVI/DmwN9DPgw7IeV+HlKHlFg
 BHDasqKxcPoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,341,1583222400"; d="scan'208";a="258737451"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by orsmga003.jf.intel.com with ESMTP; 01 May 2020 15:32:49 -0700
Received: from orsmsx112.amr.corp.intel.com (10.22.240.13) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 15:32:49 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX112.amr.corp.intel.com (10.22.240.13) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 15:32:49 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (104.47.38.59) by
 edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Fri, 1 May 2020 15:32:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nop2aaaiXzeKCojakYkSB8Aue9eMPfxWuNlqBAKuM+WFE3dLtNRudUgXd9cAO5Ihq5UMAN+/7DdVu1//620/AYG7vgXO4tXYj+6/krZDmE5V5VlAp+BMZ6FzNkjM57dsRQa4ALYkNhQN6og3sodLnsmG6P0aVdZAKkLaquA/uaubEQD/Pt6YR49qeKRwnoFrVnBT2iCnnWfVIiOv8lr+YrFSXXSr89uV3d7jBdtNA3IT1jcb2ik+wQJrAfh2TJ6zBiKdX5BobmasyZDfy9jcYEuVv7RSJ0zbvvwxSKsAHMOn/Kn9CJq4ZN03OGd5kQcfLZ9DPXdp4k1Af/NLeiBZ6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UosY5gn9amd7bT5C81r1feM40AIVbwZEU37hTqpg1BY=;
 b=d0g0paB4JCSZbRyhZp5edzQWBkeSyhp76F3tYGn4jjkQhl+1t1sS8ep+bGsGem+4uJjREcKhKi2Jdao4QvtZzDIhBPYjwCORVcbqzcsEzLJ+3HJymmeSqp1bwNWVQAZgCMya2yJfA/tm2FKQmpwLKckjSqQPhydlUnuILn/0gTCUqyGcSZeFmL05OtLTnsbj1pq/zD2yYogUPIgflb6iXJfCGi7AQ6+0h23nlzMQxTABWhj7OxbfDApcpyuSg0thcuyyZ1CIE7otfRI6g3vJ0g0a3sR/dO9eYh3NYAVO15O5D7gXNZwXZIzeFEovilow8YvTDlE15/QIs+jX9NKI1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UosY5gn9amd7bT5C81r1feM40AIVbwZEU37hTqpg1BY=;
 b=GN+2R0WbEZOO0tGrqkjkcbR5j9Dbh4Vx8OM2iVVv3GlxB9paR4KhE50YXYYOm4zAkbI5NOfTTZlfSQ3/nEUXShnzFJyRHsldQRKeOf8A+VVctf/hHy6/dQ3pesqy3OddvaiU+/O3okI3O/+rkeDH1/UxvVS1pfpvsg7YilTvbPE=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB2681.namprd11.prod.outlook.com (2603:10b6:5:bd::33) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.20; Fri, 1 May 2020 22:32:47 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.2937.028; Fri, 1 May 2020
 22:32:47 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 12/19] igc: Fix NFC rules with
 multicast addresses
Thread-Index: AQHWGnV6H6PxwXTdY0CenlEUtse8ZaiT29Ug
Date: Fri, 1 May 2020 22:32:47 +0000
Message-ID: <DM6PR11MB2890E8C8EA1B7718EDC12BE0BCAB0@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200424201623.10971-1-andre.guedes@intel.com>
 <20200424201623.10971-13-andre.guedes@intel.com>
In-Reply-To: <20200424201623.10971-13-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7ea337c1-b4df-4dcd-ada7-08d7ee1f931c
x-ms-traffictypediagnostic: DM6PR11MB2681:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB2681CFCE41C8F51FACEF015CBCAB0@DM6PR11MB2681.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0390DB4BDA
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3OtZuO9u+0gAbO7hhE2GW617pNc+EwqWoHdRJhLh4xTWXDU741qMxoOx9jXF17F3s9aggnHMFkk5iwd8fZDHDVYBnvo3ogEQ5u4tbYoTjDkmVZcWoD04xGtmytrel7428ieBZHxxhYK62l+qObaIdKGwk2ikC6UwC7+0GodtqVwpCX2PhQJsGyzt3MYtDilED7jy7WN8Fo2jJG/5pz6R4D50cSeHNARR0nysTPTC1elgW69/MQ63WSRYrzRMInQ8g4VuDniLFmi13GYxHmw/cJhgqycIjSLoHdM7lJR29fz0pf3ngHgxokgnogBTY142ZddGeg9MkuvCyXZnHpRHNlubgxYNN0Hwdrms4Ktb/YZBI41WvGsi/UUbi10c8uoJdOrR6ANL0KLjHsgjZFsTX7wx8SJthMoTxEhn1U1PWCCY079N9UqugGX7ksBIWVW5
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(39860400002)(136003)(376002)(396003)(366004)(71200400001)(5660300002)(66946007)(66446008)(316002)(55016002)(8936002)(86362001)(9686003)(64756008)(76116006)(66556008)(8676002)(110136005)(478600001)(7696005)(66476007)(33656002)(53546011)(52536014)(186003)(26005)(6506007)(4744005)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 79vHYgRShEgAMF89oLMh/opBvKNPK6WxCbys32/tOQka3z1W6mrfbbIy6fM3eVA1cMzCba5u0UzuOJWeveUBGaBeAoehUbJpz9c+klaQ0rIE2axuZJxkIcv0LHA0KJO5KmB9pRMnJMYaUIAG8eirivEuM+m/Vl4BiKe9xQ1gf0ICmKFdBKd08cWoZbAdbtS1kf/P5/zhOwfwRM5rX20CqxH+xe50VvaN5zxee7giyuK21mvMHQrj2cFRFzDa51Di9x+5x9hbR9QOY1NkygW1gxsT/TCMIOCNFLuC1QGzJHcmcP5sIgsjHwjciqtpIeeUR24URk1xMxgZjfWcuxz1Lz2XG2mhO3F8iQJ0NOgTDpqs5ERNrtX5amu6Ob2BMxboyU6zs4DgK8na6ZFUegYuX+4a5r5Szc1bHV3Ikr4iv6swc0gXZjAEwAzWbfOLg4z3EsSS/n4qcmY7L7A3qZ3U5aJWa1s96gZ26yrzR325Mk4urMptl+rV1nUxlUMwGDon2Ju8BysdC8FcwlXXZOgicEdiFOZa/BYiZjgvX+DPmsKjG0hu7N0UILfkHmv9cOXakKrK5lbwAhom9/FefHTHVBmazEhonxkvj9C9app45UbfWwD8m8ancAOgaxlmgyKeQXhD6c7iA0Zk8FQ9+2wc4E3uN16k5OAO1MZ1boDAlHrf5q5ihRNCVbAfC7K3nU72eOu5/b0zIJZVdzLv0noX9aQeNQntTK5W+Lu+lvwqihMAzlxGr1xUKtSCAIikHz0gIJaYEw3NxizOD3Dp0ftoT4miFdQitRtWnGqIgD/j+kUzc0g5QJ5YLC7KIo45nYbz
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ea337c1-b4df-4dcd-ada7-08d7ee1f931c
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2020 22:32:47.5241 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DSiI69t2YTSEpUcxh+A4JhtfGMpWhFkTFfm7XqIFoBzXjImLzkSOXnYHxSw2d+fniaT/RbI8CfC2BLMITOdmmA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2681
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 12/19] igc: Fix NFC rules with
 multicast addresses
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
> Sent: Friday, April 24, 2020 1:16 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 12/19] igc: Fix NFC rules with multicast
> addresses
> 
> Multicast MAC addresses are valid address for NFC rules but
> igc_add_mac_filter() is currently rejecting them. In fact, the I225
> controller doesn't impose any constraint on the address value so this
> patch gets rid of the address validation check in MAC filter APIs.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 6 ------
>  1 file changed, 6 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
