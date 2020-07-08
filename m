Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB97217C99
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Jul 2020 03:33:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 902C62107F;
	Wed,  8 Jul 2020 01:33:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yK3jxpYFNH5Y; Wed,  8 Jul 2020 01:33:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E1E9822610;
	Wed,  8 Jul 2020 01:33:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 872ED1BF3E9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2020 01:33:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7F82E86B76
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2020 01:33:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hDned1BOogQU for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jul 2020 01:33:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C2C5F8689B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2020 01:33:24 +0000 (UTC)
IronPort-SDR: YgCyWAftBQ1hQPhwkknOPFC3ZPkayDf7szTpU41daCBzcPz1iQnEMvB/OLOtlfof7fAvkBfsZJ
 EgZHK29KkeOg==
X-IronPort-AV: E=McAfee;i="6000,8403,9675"; a="145221885"
X-IronPort-AV: E=Sophos;i="5.75,326,1589266800"; d="scan'208";a="145221885"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2020 18:33:23 -0700
IronPort-SDR: Nxvy17RB/MivdeWlO56KwoTCiEJgWG+MbjsW/OkaoadDIDOsIOBbyy6R7Cguz7qcq4Vo88IDEu
 AANQ6akpcN8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,326,1589266800"; d="scan'208";a="483256471"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP; 07 Jul 2020 18:33:23 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 7 Jul 2020 18:33:23 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 7 Jul 2020 18:33:23 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Tue, 7 Jul 2020 18:33:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YCTP8mCZT4Tog8AepAQVLLHYaKTcd1sZ1zL8KpV1uAgYZABPBrsjwyeu6OjGq8Q3W+tZZhHLXaDsF4mO37rsBuQLRWxZ2xeTyWlfaXbnjs2pHHiaid/SVOOWkHmM+ganHh9n/lr8vHmuBhAdfVoLGqb6jz9bFDnHRm11q1g7T6ze/6TQedNIG0ruUuE565aIuvkoXO5QnfdoTByfEolHwUgBTksucW5NJAANB2KIXc/BPSFJXduhINItRGyRNvONEvVzwFCLs/YONZi1CWh98P9wWwJyRc7XVdgR1cEbLj2HIbmTlPs8QqNb/CcjoWhIP1Cfox6ENZ/6N3ClEJIoWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z+qG7ZXikPqZYJ3yyS2UsAnokyyFDWFcaudXgf6NRnc=;
 b=AQ1XY66r+YC2t+ZbQGyyjImlKyEe9/f2GTX6aFslbK38/nxBQn8IcY0S0v1Bl4CAbDa/oPYgZ9SzulYUPRl7QzC/2A3QkS46H7T9bCkU7DmnBLuJ2jgoO9dt8MX95vZPjICh2kF7Ax0G0ly1d5xApsBaCLdCM/Wj5dVCDXaIcgL2K8RbP7ex90f692DWZ2BAlh1tWa2npiIysvyscSsIi6rUYKUBkqN0UTmxX9LKluR3zJHF75eGFT9Sof1Ybw3DM1hIcGBPM6IxUReHrsTgxtWYl/M2o+iEHbxyTdnkRV7sck5jby8o1LZo/RtXu+xfPUpg6+8AnqnLeS5SS/MQVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z+qG7ZXikPqZYJ3yyS2UsAnokyyFDWFcaudXgf6NRnc=;
 b=YqfIxmR5uExg3PpkXAwvFCS2kpjcHpwlGmMwNF/HyHawCx/RHt0246eeBW2VxFmAUfqEePCGWfyoEbjpeR0Kfias+UYpsX6PjkZVAEuEep+qYE0vk2P1zQNWppoKqPrFEgi8SQ+Kv96rYjFWTaW4N/tDEYECG8I9oY7X31g+5m8=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB4563.namprd11.prod.outlook.com (2603:10b6:5:28e::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3174.20; Wed, 8 Jul 2020 01:33:21 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd%6]) with mapi id 15.20.3174.020; Wed, 8 Jul 2020
 01:33:21 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1 2/2] igc: Add Receive Descriptor
 Minimum Threshould Count
Thread-Index: AQHWSGWnyNvMKNTqT0qLwK7PEHIIR6j8/p8g
Date: Wed, 8 Jul 2020 01:33:20 +0000
Message-ID: <DM6PR11MB289028F722DA9D0958871C24BC670@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200622072030.31239-1-sasha.neftin@intel.com>
In-Reply-To: <20200622072030.31239-1-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7ace4870-6b33-4f0e-576e-08d822dee610
x-ms-traffictypediagnostic: DM6PR11MB4563:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB456336B22E137098E2147835BC670@DM6PR11MB4563.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1850;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pa3CwiFKg9V5pgo7Wkwbi8nXv1T+fuzx/m2LuxzkVavTVFwXo7E/klmU2lcQz9rsOIO/TLApiUaXE4NEuxccu71+BaxxHrw9W342AkzwwmRQmWi+3cNEAOl6vCh7Ilk4WjnLU8MDNzDu72zGcltePcdGA5ZQzQl8iIL3MFuDDft29N8+83POS5ZW48/1wJz/TENK+iVcGlHVxshhsCmwGrjTN+uB9+lwHfPZktNLOV+1kHMBMuG9vtWUt/bi+qSHcXJHB/3q9WQqYBr2Z83twrRwl/vdiE1MG7ZmXFu2EFduIYFSiMxuDObkEPHOjJ6Z
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(136003)(346002)(366004)(376002)(396003)(7696005)(71200400001)(33656002)(5660300002)(52536014)(66556008)(64756008)(26005)(66446008)(55016002)(9686003)(2906002)(66476007)(53546011)(6506007)(478600001)(66946007)(110136005)(186003)(316002)(8676002)(76116006)(8936002)(86362001)(4744005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: sDr+ldKzfTw/wY43rx+tK9MwJ9h1ltHJI2rH97wh9mUcti24p13p0Xz4x6DI/QSgIQR2d1KJDGHPFj2xJ3tegjaY0afikjyOP1G2K1IpX0Yofiug7rQYZSkZc1zAXg9tK8onhG0y3duZoNFXcXjnX8DtjvHqrZrEkapGk/F6GPYbj9ifo+PwW+OpAHy1ilSKoFA4ULks3DnXxZ4cdolmrXsPl9cxv1OXO0RdcHOHDdGMUNN/kejFbyoZn/km9qjYIvTHIBIuIn3kiUamtaLrdKjwUT+MNeyGWtjU46KSGdihsSowXrI2evkBtRzTWQ/pYzXkGOrEOujY19sC2n+fMZ2TxNvDa+1WwCao6GsMAPuA8/L1Gq0oPnYwggHkZ9Tl+tkG0jwpOWpsrd/nOZte5wBJT70tPBPkWEKfc4km43RXhnWiC3qgWl7nbJ0Okh5PwzFwz6ibx0Btso9L8S3CHWHAlRESOGglmRrR+Jf2A+j0S9Yjs7IPYCEQdZMe9BOL
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ace4870-6b33-4f0e-576e-08d822dee610
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2020 01:33:20.8990 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +J1vD/oI0wZw7ZgEVmC6XzD0K3y2FxfP2zsPyud6a7WA5r8oeFJRHFNyhRieWLtPYdzRuWzZ7c/GqDZXllMafw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4563
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1 2/2] igc: Add Receive Descriptor
 Minimum Threshould Count
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
> Sent: Monday, June 22, 2020 12:21 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v1 2/2] igc: Add Receive Descriptor
> Minimum Threshould Count
> 
> This register counts the number of events where the number of
> descriptors in one of the Rx queues was lower than the threshold
> defined for this queue.
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_mac.c | 1 +
>  1 file changed, 1 insertion(+)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
