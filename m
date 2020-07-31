Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 51C34234BD0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Jul 2020 21:57:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1062186BA4;
	Fri, 31 Jul 2020 19:57:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5Sf2svpCSBTK; Fri, 31 Jul 2020 19:57:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4A5EB86BB1;
	Fri, 31 Jul 2020 19:57:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 493C41BF2A0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jul 2020 19:57:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4558381F3F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jul 2020 19:57:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HCGVzmM5JIUt for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Jul 2020 19:57:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A022180CFA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jul 2020 19:57:51 +0000 (UTC)
IronPort-SDR: GnUwy7fZGH6GAug2so1FT1uGEADNje83zpSX+Yxu5Gh/RjUrQwMLo20EylH1d0YE7AVf9wn4pz
 21A5UhZWr1Qw==
X-IronPort-AV: E=McAfee;i="6000,8403,9698"; a="213397578"
X-IronPort-AV: E=Sophos;i="5.75,419,1589266800"; d="scan'208";a="213397578"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2020 12:57:51 -0700
IronPort-SDR: pF9PVVDIB6MkqROLIwh5/xo7heRNYcdpMJM8INVWDwgl6LufxMrMUC2GywHhwMBUQ7JbQvX7qZ
 8ImOlw5PLw0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,419,1589266800"; d="scan'208";a="291311253"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga006.jf.intel.com with ESMTP; 31 Jul 2020 12:57:51 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 31 Jul 2020 12:57:50 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 31 Jul 2020 12:57:50 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 31 Jul 2020 12:57:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g/k0+tW4Hke8T8h1HMtW5fa0a3zOwZpYEtjzxqz8LmtwWcVFzWsfG3XyyUaaHFDbQfdzL3KLn2MO4FEyoiKzfXdjNOLFcGJIH8LSpBCUB8lYlIP2sH7SQugQERGnfJ79gliCvY5kHUuldP5uIwZr8EFvib6ix/YwVnCP+kYJXAjv36WL8x7uPDEj7ZRicD6GQhH43CUT6VzKlc+prcCgtz9jDuzcUdcGPEsAF4t7NHlRG06Gdzx1k5v5uPB7VkKAtg5bpbc6Vhj4eMVkiGivGwfoVdx8SQzEAn1xBDwhUodWrnrHQaIjxv60ROt/0JO0nmPsESGt3Lg2hca5sT5LPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zZae65n35F7D94WFzK9zX0kjG99Xh7yEuMo5/Qmt6vU=;
 b=HP3B3eb0kfPocfqz2+G/q5Cgtr7y3SfVBYWubJX7i/f+sKfeG3hnRil8SP2QnY8G3JV692RvUXH3+wWGaVmExvidFOFuLsgJVXCjMwcoot3BjrMJZx/aPxi9QIl2RFA/SpICb2wp/Lgs4Rj44lGoAJWg98Qm5E5vM+sFZ2brbgVQYeG+nmVLkKMfZMqPpPYjgNy2nKMSGF5sx0WvcxvsQr+8oGmHYq2mCyOQkoX50fXXn6f+2GfLYH+WoGKQQgB3TUrNPSd3BKM0mu5FCsz6lLQEnjIYAzGpvl0vTmxVpDXPopILMjNhlCzZyC3kVlDM+S2mqNHsKes3QUznFWAzsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zZae65n35F7D94WFzK9zX0kjG99Xh7yEuMo5/Qmt6vU=;
 b=dVQlyGh5tv038LaafZqPA8lSt9EKHDSjRkkt1iiduJUgANoNomNryHAcAlsTEM7yK9F4uciz3Oz/y+/2VFVC3NDY/gCeUF5dxMPo+91PuTCYVyEuSFCGUPx6CKnX8pJrG3kY3UdwlECwzbLeeujXKCdQyo95IIvuf5zNVD5S+QI=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB1329.namprd11.prod.outlook.com
 (2603:10b6:404:47::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.23; Fri, 31 Jul
 2020 19:57:44 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3216.034; Fri, 31 Jul 2020
 19:57:44 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S51 03/13] ice: Fix RSS profile locks
Thread-Index: AQHWZgfA6kyACphJjEi0zgBXo/Q/DqkiHZGw
Date: Fri, 31 Jul 2020 19:57:44 +0000
Message-ID: <BN6PR1101MB2145F062A98C69F0FFE4654F8C4E0@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200730001922.52568-1-anthony.l.nguyen@intel.com>
 <20200730001922.52568-3-anthony.l.nguyen@intel.com>
In-Reply-To: <20200730001922.52568-3-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [71.59.183.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fc5b0197-b88a-4abe-da97-08d8358bfdcc
x-ms-traffictypediagnostic: BN6PR11MB1329:
x-microsoft-antispam-prvs: <BN6PR11MB132964FB07CE0F850FFE88428C4E0@BN6PR11MB1329.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IwaSiQyAy5VHiXoEWhqvFThiWHyVbKUEkmC5fdq99M9ByaiprUj6jIou6LUDo5x2mvY/gQqrYN9HdGTUfatSMe+6MnIIPatxu0KmWHSIhXcJbEoERMTBHC+K9T+XSx3f+zh1SWazHZfLZGso1V0213w/DkgkLaAvjPH5Fpi/Tk3Msu9pBTlJy1MXfnkKsTDyqeMquNm9faUP0Hc4qT6/dlSN0sTK0da2+YImQrPbSarjxrqsbp4d91qHWXi+TTOfKp+XTyi45pQpn2uhnLnwLgt/69MVj+6mp1MmDyrStvv2aQLB6UMxPEVdwC3LgMnGj94Zab2w/q/CeQ/3blSJsA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(366004)(39860400002)(346002)(376002)(396003)(55016002)(83380400001)(478600001)(52536014)(86362001)(9686003)(5660300002)(64756008)(8676002)(26005)(33656002)(4744005)(71200400001)(316002)(53546011)(6506007)(8936002)(7696005)(186003)(6916009)(66946007)(76116006)(66556008)(66476007)(66446008)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: U5KtxfcpbW/DRhFEzGwjM6NPwUznr8pRtfyGA62FahK/DHbj0teEmix/LvMgVsG9/GnPf+k3G9bd9Ux9A38yB1RN/KroiGGKbV3bfD+j4OU1/p4G607PoDQqJoCy43koNWo5BVUEM1+cxtxwz/ex9U26dpfXgFd4g+36NOcHSxVa1DPJQ+Nbu/8cYLdLcOKQOdHNH5ui4Bupcfh2vy+Ng2X3Vwajw00jD+ZYq4kJZfxWtYVyJYS1w/fqCBnzvbcUHM3Nyy8KYGl9XKeJA2YdcxysNEnIvkIalwMabcp50QrzJqXjXi59vRnLnApwQg6ny9oq4Lb6aMGRsMv3bVT9pD0wz108E72MoY7v68DcrmGivrj53NbzB1N23Z/6/CK1lTXfpOkl8PnDzJl9OptWmmrUFXGX8+//w9OnSym2QVYQW2Bw3pSlkchuFSnw9p+meeItb5poOU0XiA2gBs0YwsszDg80zE/4Oob9Z4ZjM7c=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc5b0197-b88a-4abe-da97-08d8358bfdcc
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2020 19:57:44.5433 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yYjjW1fTzg3Es91UBYWlErV4SiCRb/+fF5EhdbB1fMnALcJIhZQn4JPNAL4S+MqAXYaEbtXIcFJiupkIJ2BKsYS3RDO7pndrKhgf2Ia/H5c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1329
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S51 03/13] ice: Fix RSS profile locks
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
> Sent: Wednesday, July 29, 2020 5:19 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S51 03/13] ice: Fix RSS profile locks
> 
> From: Vignesh Sridhar <vignesh.sridhar@intel.com>
> 
> Replacing flow profile locks with RSS profile locks in the function to remove all
> RSS rules for a given VSI. This is to align the locks used for RSS rule addition to
> VSI and removal during VSI teardown to avoid a race condition owing to
> several iterations of the above operations.
> In function to get RSS rules for given VSI and protocol header replacing the
> pointer reference of the RSS entry with a copy of hash value to ensure
> thread safety.
> 
> Signed-off-by: Vignesh Sridhar <vignesh.sridhar@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_flow.c | 13 +++++++------
>  1 file changed, 7 insertions(+), 6 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
