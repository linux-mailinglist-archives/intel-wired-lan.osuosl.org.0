Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CBEBA1DF05B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 May 2020 22:09:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 698DF25C1B;
	Fri, 22 May 2020 20:09:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k2I1ajAAXPWa; Fri, 22 May 2020 20:09:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6DAD420505;
	Fri, 22 May 2020 20:09:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 510E41BF2A0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 20:09:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4B515879A5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 20:09:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8ZwTErmLm69w for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 May 2020 20:09:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B20798558F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 20:09:07 +0000 (UTC)
IronPort-SDR: 3639CT2TgEDBZ1YIE6+iN9KuKF424H4uummyVtYgeobVHkjucK/weTWHmaPvmdE2SWKObQP9Lo
 RHHDBhGN/nlQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2020 13:09:07 -0700
IronPort-SDR: 5GoAMEO04kNBxcZCg9MeJE7LgNv7llrthBLVoiDdTPgvX9FzqJ7FiCr1Am+oag07Jclg2vHxJr
 961gAuWnjeOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,422,1583222400"; d="scan'208";a="300773125"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga002.fm.intel.com with ESMTP; 22 May 2020 13:09:06 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 22 May 2020 13:09:06 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 22 May 2020 13:09:06 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 22 May 2020 13:09:06 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Fri, 22 May 2020 13:09:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=glIeqGkqRTBfVDmLkdIwZQ29aa+RLT4VX/ybULnWmXFA3XJdu/4oS8KTzqd5M4Lp5Hd06ui4l0a5J+nrsxvxuXGUu7+acbho/k/WDEWVbrrt0CfNQU97UURJQSB77I2Bf7oyqVZ23hRzd/pHET3qx7/d8KXVMCY6zzJgFfWMsC/KZIZIxqRe7nZFjGB6zaU83c+db9X9dYj4ytXDQDzrWQ02bUeXTPzQDw6pYxrqUmu+y+qEmlZ7gn4MCoZ4NogDLBNquk+7dEhhgqOYEK2IdaR7//BCTOw2pQaKTVCiqwt0SBa1IZf6echRM3jPGVL8WWOaNJ7ubZj+Hlj5Th3fiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I3w28fnkJRH957tJD6qNrp5WZUUMJsfp4dBzZIB4BBE=;
 b=ETgn6HO4a6VgRPo7ec8Ivu8Zy/KnEFNU3s+ANDhh5ZV8p77ITEOCPymdQnYRR8EvRHlKsuFY50oEaii3Rl6rTlbSTEDvTYxU3dQZiSN4yslMEDy+E8UwCoqJQDyS7tXc1J0GAS/I/tgC8unShnmifAVsXIA/pxScICNn1d+OHu4acFW1kSdqd/UHjvdjOoap+kmDljvVaNnlYn5VpB8oH+28tCZbPM55O7mrkndxurl1DCRRqBV2twlwFgyF3lG5IpT+p8OwmWYXXzoNyeko9aw9tgYyMMaquElHm1zDD5XG5mUgeOVkU7kNt4+HHSZLBbbTlYUqGNx1iyctArjskQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I3w28fnkJRH957tJD6qNrp5WZUUMJsfp4dBzZIB4BBE=;
 b=b4P/Z3OQ8WutBMPns6/3Em17GOX0G32YL1eRa4EwE4IzGXLeUgeuFweoWYgV2iPWpTyckchuOsV+5bxyu/T28HS7VLYlxnsczRdC6x9cV8tGfHnNAypEQC9NfiGc+C0NJh6G+qbst37Z+c7Q97E9tiasvRYlB/lVtn51ehvRqQw=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1242.namprd11.prod.outlook.com (2603:10b6:3:14::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.27; Fri, 22 May 2020 20:09:04 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3021.027; Fri, 22 May 2020
 20:09:04 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S43 14/15] ice: Fix for memory leaks
 and modify ICE_FREE_CQ_BUFS
Thread-Index: AQHWKxqNyTwvPIKaVUK+P6b3nJTpqKi0k2Pw
Date: Fri, 22 May 2020 20:09:04 +0000
Message-ID: <DM5PR11MB165955CB88E2F3407749A6A88CB40@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516003644.4658-1-anthony.l.nguyen@intel.com>
 <20200516003644.4658-14-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516003644.4658-14-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.52.201]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 62708ba8-89e9-45db-b74a-08d7fe8bf9e0
x-ms-traffictypediagnostic: DM5PR11MB1242:
x-microsoft-antispam-prvs: <DM5PR11MB12423845BED7CF77E69B74818CB40@DM5PR11MB1242.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3276;
x-forefront-prvs: 04111BAC64
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: scQ8NqSAecSvc+pUkkuOwYnZ5j89wP8fv9bkZGXxevrCfXJNUSnwhcjd3VoXAg2RJ7WpDEyEHeqnkMi9c4F6DIIVhygJnYavCweufxIMT2ugNIQqCa+c1StAGP0RyJrjfWlneQZ+BZxVKqtaI5z6CjBRUlARq0ZTunY+Znm0Kp7g0V8DsZsQqmG1Szu4sm0pMc8YoAG5xpQsTeT93v9/EgrHJAKxMSwJ+aq9/aCcxIX2yLDtKWC05ro0KG6GtT3PLQz19TcwuGCU5dIoV/gN4Hd1PKuzW6BKxOdAR3gYDDF+daCzxBNmNG5rHV2ggM49
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(396003)(136003)(366004)(39860400002)(376002)(7696005)(71200400001)(8676002)(64756008)(66476007)(66556008)(6916009)(53546011)(86362001)(66946007)(66446008)(52536014)(5660300002)(186003)(76116006)(2906002)(6506007)(26005)(478600001)(4744005)(316002)(9686003)(33656002)(8936002)(55016002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: E85hIZc56dgm4ZpKkwqQr6hP4RnK4n5kp+J/CyBT7a8Hvv6H43LCIk9lMyCpbFN3lbFgqJoPB3SNKudWiKNMsh8ujdje0fo5jdTP8TvOlOUZZopdSIixR+OFXhYUSG6yeg3zh+hAu58NKywseyHGbNwyZZ01Ndz48Y4ATRug3zu6QumE9KlWzXAJkQT8KLjQPClvUAyLqgSJAMrVjzahd6fospIHN6UM6gKCtKSRKAE1tOOp4orwHINZXX7DIuUIzxRE0wZDZXYBDQhbpg1INb+9vy9fUx3DdRp9elx4Vz/+8tuk2p8x2mdvBbWXFwCd/mmA0WrhPIJM6goY3Te4M5cZLXLRO1TqaoG2j2qesbH3PuEk6EXsy4ZKQ9vNIqt96/5cDkYUQ2yWaV7V7FjoRrkT7D1R4c0ThkuupFJhxRFjO4KmvrmkL6kZ0uRmEv/i6Y40UMcF8gPXVL8QHUfnyndClr1LPzXjZfm+lPMZiKUs5cqQjYV5cEL7+FnI8lnF
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 62708ba8-89e9-45db-b74a-08d7fe8bf9e0
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2020 20:09:04.1088 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3dFkoAi8OJU8Bq/h9/XLpBwJboRQrRPtE+Gks3FsDaWeqlU5AMCL+LXS4HdUjM7+26e5FQbkJ0bk7Io0wUoIP4Y/5ZjN0N6MhFCS3BF4smU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1242
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S43 14/15] ice: Fix for memory leaks
 and modify ICE_FREE_CQ_BUFS
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
> Sent: Friday, May 15, 2020 5:37 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S43 14/15] ice: Fix for memory leaks and
> modify ICE_FREE_CQ_BUFS
> 
> From: Surabhi Boob <surabhi.boob@intel.com>
> 
> Handle memory leaks during control queue initialization and buffer allocation
> failures. The macro ICE_FREE_CQ_BUFS is modified to re-use for this fix.
> 
> Signed-off-by: Surabhi Boob <surabhi.boob@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_controlq.c | 49 +++++++++++--------
>  1 file changed, 28 insertions(+), 21 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
