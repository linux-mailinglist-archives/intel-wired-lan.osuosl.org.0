Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F8D28C432
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Oct 2020 23:38:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 29F9E86BA7;
	Mon, 12 Oct 2020 21:38:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qdbiSZ5ABhQh; Mon, 12 Oct 2020 21:38:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 30A9E86BCB;
	Mon, 12 Oct 2020 21:38:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7C1641BF3C9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 21:38:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6F6DC87108
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 21:38:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ex4zSCVzAUZd for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Oct 2020 21:38:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 940A087052
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 21:38:30 +0000 (UTC)
IronPort-SDR: vH622Ds5tGaIiSFaNhb9m5S1XwyTkuRLRsNC98YZ0FqmvICyv8s1JfS8xHLE86GdB0Q1AgfTJ5
 UQyh/xyCvCTA==
X-IronPort-AV: E=McAfee;i="6000,8403,9772"; a="250504012"
X-IronPort-AV: E=Sophos;i="5.77,368,1596524400"; d="scan'208";a="250504012"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2020 14:38:29 -0700
IronPort-SDR: jw0DPClQEBHqfWRzEjCCepCk+QQIttkntfz3GsCou+Ahw5aeUC2IaZw9+L2dY+CXe1YF+MAGJL
 9hrad86EtY8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,368,1596524400"; d="scan'208";a="318070668"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga006.jf.intel.com with ESMTP; 12 Oct 2020 14:38:23 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 12 Oct 2020 14:38:23 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 12 Oct 2020 14:38:23 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 12 Oct 2020 14:38:23 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (104.47.37.53) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 12 Oct 2020 14:38:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ED4OmauX1Z9Sv3QiwFz3Nqvh45sBW8Q7GCfbi+ol41CtGUD8P8enlN5bp+BFgp8RZ2rNmZQkuJPR5HEpkCKeSjC9hwvMOuc13STbQt97TbqR0GF3pRMe5PPxNy/V4h1cu9dnlvwPBXGB10BsXfD7xVVEybNraqP5N1hJYpAMnbq0zo5UT5BPzE5v/gd6sn+k36kRytUo/dNqWAPwU3pbbk8YmVmJ5lTtBXx1Y4vIthDoWi3Fe8x8X+nQIGPuBPYN2NvkISyYkMW7ta34AT01GMB/69zHyFy3tVWmHeLuQFBWqZueXxc533d+Tty18h3gZ82x0zRREysudJhf2QJwjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CX4UsPIZZ81ZJTo7UOGn1b1uYJP3oM0p0s+XNEZj1tQ=;
 b=E+MltHlwwLGroRVuP1KwmpTgXgEKoDcPPfVe71j/ZaTCGsEJY+pBwXTn3hU5FnpnQgkQFyQcwtwmAiLjaeS/nN1JKsWsh2+GeY57x7cqmMfbtalswpmCoSh7qU9JQyE10xE8QfrGkg1RfA65g5Y9vSytmgTGf9r2Lloqely+3+2hbmKStolAL/Icwc4PZHXxc3VaFeE6vNysKJdr2CN63y0drRZYGuPA2WWK0XyznGyBAi5OCzVg+fPENSB48b+Bf5mlsNt7svAU84QQUQgX/dPZNkwKyqiHZZBIWF3GDysC80PlagWV/sgddi82DD1lu3lTVCpNN1CHd90CjRcvdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CX4UsPIZZ81ZJTo7UOGn1b1uYJP3oM0p0s+XNEZj1tQ=;
 b=m58sAOXO4O5J8f0rWzqE1OwnPqP4++QrWWRGx8UrQZUie9uLTvGlS3OTFFsNGdp2lqeEty/0YzPc0Pmy6cDbDWvsq/AW0wmxSVJFHzz+CZioRIHyvuX3SRC6O3ApY1qiICeSp0YkHoNO3mb5uGYTxfRRlmoQwI9F8eUPC/T4mLg=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB4577.namprd11.prod.outlook.com (2603:10b6:5:2a1::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3455.22; Mon, 12 Oct 2020 21:38:21 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::2472:44fe:8b1d:4c6c]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::2472:44fe:8b1d:4c6c%5]) with mapi id 15.20.3455.029; Mon, 12 Oct 2020
 21:38:21 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S53 08/15] ice: don't always return an
 error for Get PHY Abilities AQ command
Thread-Index: AQHWjS/gNyX9o3SyEkCMyFJf6DjfSKmUpXGQ
Date: Mon, 12 Oct 2020 21:38:21 +0000
Message-ID: <DM6PR11MB289091787C9AFEF9F4DF5E35BC070@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200917201347.81570-1-anthony.l.nguyen@intel.com>
 <20200917201347.81570-8-anthony.l.nguyen@intel.com>
In-Reply-To: <20200917201347.81570-8-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.179.168]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d9b71ea6-c2da-4502-a298-08d86ef72403
x-ms-traffictypediagnostic: DM6PR11MB4577:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB4577D0843BF656F5AC556B1DBC070@DM6PR11MB4577.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1923;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6OyqQCXejLU5mdE+EmZGBilMGhep+V2ePKOUyPbknlzIH34Ec2K170Wv98RoiRT7ilJxkAxZw9kR4WpM7prEPJWWGskJiIRChBZPJiB6iNSBR2shM/61x5DJuMCa5oh7zT9AMPqpvecwIvpbcs6v/+2UyBbEWtwY/O2yLRw7yFf1+gzrS9lh7AJ79MJ77c9Ex9ngBXcYg7tazwMMHg+SnM9b0PSd+/JT/dGhMp7Zz6TWRzAdts2bnb0GmdZ+2Oux4XDjzulgFtcrA814iDrmX5Zb7M/wLGX9E6XOhY5dx+4OEpytcI+Fgxjggw7Y82Qr
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(366004)(346002)(136003)(396003)(376002)(71200400001)(55016002)(8676002)(8936002)(83380400001)(478600001)(86362001)(66556008)(66946007)(9686003)(26005)(7696005)(6506007)(53546011)(186003)(2906002)(4744005)(33656002)(316002)(52536014)(110136005)(5660300002)(66446008)(64756008)(66476007)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: oDv8+qdiqOhJiLWOtsXq2S2HxBNP0QkVsHXC2D6E6GHntyKTOGixiZt76llyNRZNHVKP5yF8jhn6mPF80ka/KI6r/rQ/SFIyeNwP+pgzV0v1ztsyFbLLIgFpLDeuFBezmXviP6Qm/jP1YvyMmQ7fanBge2cHnwAySXIjQjG/t66+qjFIRN82SkFCzCRA0jYKFm4Rt86HlBdKg+/t6MUQohhzXNFv6t3FdJH5NOkQ380Xc9w5sOLqpmrcqqquPKDdyVJiCQVYUxzKu4I+yONg/2lX/o4AmjMY75zDOH04pavcAGbA+DFIDCv5LdYT7I9z6aBh/5PL5CPAI0bAGszooWRACbe6rcfKH0LNNDEcLdc5jtj7ffsjDVUqHIIeEpTKlZ8pQwkXOTK8luw8xA91ewqPAmXctQRdbDNv60S32tSn4PlL4L1QDAsGSJakQPXhUSVtB50gU2iF7iLMH1I7pHbp0/0ZjWtsiKvrx+wHY+hh5s3FfSRdc+OYVcBjq6E41USqw00A9DK/0FEhRAmiWXi+wz2WqbkmvZNBsjX0sr9PyDqnZg/kueAxtkdaUYtzPoD51nxYK0TIwAtbFSXzOF6Xgr3CzP2nhBLEfYfMYzL2vv7c9ybzAcbgSpNZt7OantfARHsb5/I1WMpaMg0EYg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d9b71ea6-c2da-4502-a298-08d86ef72403
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Oct 2020 21:38:21.1671 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: N/vAQNSKjbVp3UIE55bHl9/tc4VPX1+QOEzwQD8uPL2KADTOKpI4z2YD0aZlMqKIb3PnsRyYkxsakoL8EkN7wA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4577
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S53 08/15] ice: don't always return an
 error for Get PHY Abilities AQ command
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Tony
> Nguyen
> Sent: Thursday, September 17, 2020 1:14 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S53 08/15] ice: don't always return an error for
> Get PHY Abilities AQ command
> 
> From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> 
> There are times when the driver shouldn't return an error when the Get
> PHY abilities AQ command (0x0600) returns an error. Instead the driver
> should log that the error occurred and continue on. This allows the
> driver to load even though the AQ command failed. The user can then
> later determine the reason for the failure and correct it.
> 
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
