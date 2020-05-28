Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D7181E6DD2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2020 23:39:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C34CC87072;
	Thu, 28 May 2020 21:39:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zKuWCgweLa3y; Thu, 28 May 2020 21:39:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EB8718717B;
	Thu, 28 May 2020 21:39:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A444F1BF39A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 21:39:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 963F421514
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 21:39:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ime+C8LmTrBm for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 May 2020 21:39:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id 6D0BA20791
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 21:39:22 +0000 (UTC)
IronPort-SDR: fW/MY4+OzbOa8kQ9EPpnJbPfXqPE5mkPiKsXc/Dbktlxfoad00PrbEM5bDcNFD7mbNskTtkZf+
 lUlFH5/tvXWw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 14:39:21 -0700
IronPort-SDR: XZUGh7SSGuByr9/x6M8o2lrN1kVhPkPIOWE2rikAIFuqhJw2MLP8A1nL/imhVcg1Eho8t1oMJF
 JWbhT5OiGN0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,446,1583222400"; d="scan'208";a="292147354"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga004.fm.intel.com with ESMTP; 28 May 2020 14:39:21 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 28 May 2020 14:39:21 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 28 May 2020 14:39:20 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 28 May 2020 14:39:20 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.36.57) by
 edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Thu, 28 May 2020 14:39:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L73IMn7wJY7kUCIK9nGrnY3aafEVCtyDWOUd3X2Ih9t2m+RHrNV5lSkBc0deEcU8jfMBbM/Lxl/wW2atwaNeGiS3BoBqp0Uj+80y15UHTSth3XIVjpnV5OHqT1mJ88kkj9E4QCyjBESRzVQslB2Aw17K7TuDiogQWaYOJu6a6N3r1QM6QgczwVTB5/BIrQUQDsYbO2h+tSKC5r5WL1z5HBJFhofQLUnEm1todhVY9vZk+zCUTgIwnkwAJ9F5Dh95+/DkVI0OzvAgiosmsh0hu9bLtcX0W9ZXnwuml4fKPBNM5uZee5HeDl8oqtjotN8yRBiLWMUHPgzBRdZ0Jm7IgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+Ni7mKiK0go+8xt5vLOJ6JW1o8hHB4qMWu/l6ojIw/Q=;
 b=JaBrYogfLoGAhbL8EqszCpa1we6gAVRjtm5lDjQObeP1Kpwoh7shrDEsOMw9BKvcpTl/pOkl+3cCjKU0TtKeTZSljpmE4bAoNa5d9WTBvH3cFJ4Nfwnbe9D13WX5wbn9McoE8VCAyfDofzyFfdX7bqiDdhtAEEhXZubySo6Drx+uDrFBPkS2T/NcKVxsXmx25/Q3Vl/im9iyicRRujIH3Nvn5wdoL0LA7OB0hPC/rR3FQjngGwIRhLCx80rTeRE92e2fz/gyOKHPdYFji+CQtvYOo4xoN/JuhVCQIKTQvX8u1dLsxxtQPbHynz77CkA8DZF6yimDCcRG8InZqbKDFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+Ni7mKiK0go+8xt5vLOJ6JW1o8hHB4qMWu/l6ojIw/Q=;
 b=ceCGBe4p4yd5o/4/Ic+VZml0YcaUv9E1BV6c1V5v2fxPfvv8PHvZ27jaF62xVD/KaH3u2wI0AHQsawYo+NJLajCztknM7L+hf4mOMDdkwhbyGpBHx3dbfACESi+/u0b9KXnRZkwFOpuHCIM11jX9I2PET9kdM+4I7kKKiglkzAs=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB2043.namprd11.prod.outlook.com (2603:10b6:3:e::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3045.19; Thu, 28 May 2020 21:39:18 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3045.018; Thu, 28 May 2020
 21:39:18 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S45 02/15] ice: Simplify
 ice_sriov_configure
Thread-Index: AQHWKxyRTHWibgvhREOxYuGSrZo8uqi+GpAA
Date: Thu, 28 May 2020 21:39:18 +0000
Message-ID: <DM5PR11MB1659F959C6A68CAEFFF692778C8E0@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516005121.4963-1-anthony.l.nguyen@intel.com>
 <20200516005121.4963-2-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516005121.4963-2-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.52.219]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 79745462-4698-4eb9-3369-08d8034f93ae
x-ms-traffictypediagnostic: DM5PR11MB2043:
x-microsoft-antispam-prvs: <DM5PR11MB20432106553197058ED106D98C8E0@DM5PR11MB2043.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 0417A3FFD2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xlUu5ffKD65hZma0EHgbQcKfa6hRPITHZdu20f3nToUkZt0pNCivMgmlqqjPXc7PTgbrwIkOgteJTLATr21hzAh2OuSH2f+FexpSrCe/pkEB7ff3B70tLyacSp3Mv1f4xZ+oHCDLpRUm9q4YZYSLFeZfsjIQhwmqPkyJohvjh08eKU7M8DMn7kAgO6EhFK/YSw5bCMAw2EL/+WNHr6Mb+EZKkI6qOq+qclRDPbiqCRQCG6Wf4MDnoTC36ey/aIGEDikpQEDL72qf/e7TDxQYn7wL9P64bYeNOmb0BMzVbPlFzknOEKs/YqvWgUAhs+wwXntDpJZELCEXnssDo6A34g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(376002)(366004)(346002)(136003)(396003)(66946007)(66556008)(64756008)(66446008)(71200400001)(66476007)(2906002)(33656002)(316002)(86362001)(52536014)(6916009)(83380400001)(4744005)(55016002)(9686003)(76116006)(26005)(186003)(8936002)(7696005)(8676002)(6506007)(5660300002)(53546011)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: wh2cH21cAVQoi9nUjsHkfCq/Ui+kh53E98xaDqDk32MU6KfYHR0DERxQOKsm5WXA700oYwF4EaZhNS3lcOt47EM0f2uZkD/ww+9g0hX4BT/Rn+77jo5rSaAxXsDuCVde6Ph5npJpCRX41BmcTkP31zLWVmPwKjnUAO2BO/lNrjJeCfgDApRpB2G4lJNAkdEjFoHvSjaHQ07aroA7SzaqVqUj+pcej8WwRSSWsZfXZ7m6vAVvoNOgm8HLUMhaKte5/Sd+xQzttLCpcSW4oYiMPxmLIOa0trn8bmAHC7OPAYcIdoegPfCdRb/LEzr/GyDhF3okyoqNUG3+Fbs8re6YEmXv2/SOZBTMyXkOf20ECwJYs+G7aBOukwqR0kehsg3cxLHe0W3T3Dqxko4ZauecrDSRZRYsjOrYAqUtqIfmydM5MZfRRYRJS/+RnmoUWjR46YJhUIgzdovT5QUaJxJeAihMPTZ1607MvZjhaeMFs+w=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 79745462-4698-4eb9-3369-08d8034f93ae
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2020 21:39:18.7312 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mnVaemX6p+Es6tAn8dKnnIpuYovpcpeieb3y6UDqohUXCP7D4l3+mpDEY8J+yC9YIBALJ9G2Uc040Fha+G0jP3ySbAiDxbvcqvjncfkDWsc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB2043
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S45 02/15] ice: Simplify
 ice_sriov_configure
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
> Sent: Friday, May 15, 2020 5:51 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S45 02/15] ice: Simplify ice_sriov_configure
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Add a new function for checking if SR-IOV can be configured based on the PF
> and/or device's state/capabilities. Also, simplify the flow in
> ice_sriov_configure().
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 72 ++++++++++++-------
>  1 file changed, 48 insertions(+), 24 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
