Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 126551E7024
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 May 2020 01:18:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B0DEF872EF;
	Thu, 28 May 2020 23:17:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ju2Int7EfbmS; Thu, 28 May 2020 23:17:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E0D3A87246;
	Thu, 28 May 2020 23:17:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 320E21BF372
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 23:17:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2CECD8890E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 23:17:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LjuczWNIjyIn for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 May 2020 23:17:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 59136888D1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 23:17:55 +0000 (UTC)
IronPort-SDR: Asw90y0PGbVUEGCWe49d4AfsV4kFJ1hRmwUSaaFPNJL5woaD0/3tga/gASZBAYHB4TxLmez71W
 ZPu5c7Ll0MLw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 16:17:55 -0700
IronPort-SDR: CpJdyKsVenvNbZRIpwsKjwk690nAPakFk+AOis5uxs7uAGVEl3GxWEVLhAnjVy/EBGbXD6CLBf
 BNpFmKi4O8xg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,446,1583222400"; d="scan'208";a="376532569"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by fmsmga001.fm.intel.com with ESMTP; 28 May 2020 16:17:54 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 28 May 2020 16:17:54 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 28 May 2020 16:17:53 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 28 May 2020 16:17:53 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 28 May 2020 16:17:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SQBnekob/ZfQI3R1ClEgl4aIGhOzz4ewkrAbx0jq5rkXBI/hBbeJfnyBP+Mj6f1bzqhP32/jVKpNKsoMa/yxF1/SKZkBOZUTceGzobob1UWo0+eZ27m2hmfNYjf5akgTHL3p7tHArSUJ4ZzL7vl4iMCchkehMiI3308ZDzS7vnBFhUYi4MdhFqZAfawtKYim4WAdQME6ELxbmUuWv3q0oDXfuGsw5x7gDc5aJlHYAuig7n9n0pS9FUnenqewIulcQYhEc1gnFGzISYMiXI9+8GcJghzXoOXOp8gF6m3BMPn1HmTeqo8GchlvFoaHxDU0Lkar9wsqfludMcQri1lF2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pAe7A8SodzA4Z3jmdYLOriv6kB+xFptoMZRzMzgz78M=;
 b=fTDCc98ackehwQ2ZqOau0evl39NNH96Uwc/DNcR9Ne+jKZdaNiStFz+eKyR+5DANxcR95mgMzwpNPiUKDHgrs0ypPluVjWpEuT7lXN+Fc4oviFDjkUYZlevxjw6Sf8tmoj6sQKSqFK4Xgj9tVwz4CaaWh80CqzL8vazHPvteIrA5576tw5NcUSi24oxhDK/fAHDdSgzWUvBSy0sRsEO9L/XU2uGtTyvp+Zm3hJzB3EJm1OyA5R74NTnglhE1YcPK+j30et3F/JxY4oKCWrwvw3rrDB1/gP8kBr3L1WuojQErHAj++L7eFHfeIAnKmo+xSnSjnlCgD6owhLViUyoeKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pAe7A8SodzA4Z3jmdYLOriv6kB+xFptoMZRzMzgz78M=;
 b=fGnZzzjlwIHCtQDcDaiPa4JWtahPfaKTypcdeOPYzd4jRn9mojlhk0d6LxLJbIT3ZamBOlH5E7v++1UqzcyBdh4P2/dCL/Cj9oZ8DeqxupcxU007Jb3P0hB3ALcLAUuUgphxfEAzsEzwM9SaepxinQRjgOKbQZ3OLmPFY4ueIrA=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (10.172.35.20) by
 DM5PR11MB1771.namprd11.prod.outlook.com (10.175.91.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3045.17; Thu, 28 May 2020 23:17:52 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3045.018; Thu, 28 May 2020
 23:17:52 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S46 1/9] ice: Reset VF for all port
 VLAN changes from host
Thread-Index: AQHWKx0ZRJk9d71JHESlGvCEire0iKi+Nh4A
Date: Thu, 28 May 2020 23:17:51 +0000
Message-ID: <DM5PR11MB1659F36083364FC8EF2964DE8C8E0@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516005506.5113-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516005506.5113-1-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 9d120870-a1a2-4bb7-6bdc-08d8035d5850
x-ms-traffictypediagnostic: DM5PR11MB1771:
x-microsoft-antispam-prvs: <DM5PR11MB1771DE5AE6A7BF8BC8B9340C8C8E0@DM5PR11MB1771.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0417A3FFD2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mutZJTLGJfw9+14AoaRVIRmmVxgyokdiAFoCzUGrqgtcPD14a/p8ynsEqpjL80+MSoLMFfgv80sKLGkjZRERU6kQH6rDrkdDy/3u7osIEpxfehW4x5wIYXhlXtzsngwOUFsLxXUHm19THRbofcYp8JKB8z65NciyIvBf9ua+Mg6XZrXrNnoCRVWxfFXMlbummOE/k33Xh7q7p1Ufok3KvhgzjeJCUBKLiIh8/MFwNTF4KqWumGbGXRk7anIu1NK+MfN2eAz+WG7gGZQpTOklYFmrS0ZNkGi+MLGyUCve7W419KCGWtNiy+kZrXBq7lav12zIR/ULgxufyr4UlHsZNQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(366004)(376002)(396003)(346002)(39860400002)(6506007)(53546011)(86362001)(8936002)(8676002)(4744005)(7696005)(83380400001)(5660300002)(66556008)(66476007)(66946007)(76116006)(186003)(26005)(66446008)(64756008)(6916009)(71200400001)(478600001)(55016002)(2906002)(33656002)(52536014)(316002)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: SKxYD2NUN+HVaYJS+/pMVq/4FfOkRbZVPsfzLNC9/Q3zp6PAVlbZeIeZD+L3UK2mnc12ho9nfjUAikeuN5UHxHAx0xtd8wOrvUGliwhqtGYq6S4PLFvWVP4rCE7oIMeRWmHt/i6ejxMEYNaIuN67L3wKJcDfh4JAZSbso44taITjbBP2oS0mYLVyONWtkTARnsy85to4EmrKP1IlHqlM+c5WcBZ1llYi7nfXo+UtMPL5IvbTgEd7aiRgtsOTKxdQrUgyeXep8/k00d8dWMGg3PCTaWObHOlGSwc0fR9NLFGnk/azwVz3W0Mio3yOQao7A+XqLYiKwRUQOPE9i17X+DC0PvXG3zwCM2hOoclb253B9akks7FnzehK2JWe1Rewt4lM33Um/iFBjIm5XLch6F2YMb9dt1zf+49g3Kr+fP0LPVFV/0vCx8qVuUakihm9HOcq0nrFTghafWNsttG+vhMF42e0M/z0HMz+YVoUaut4d+4hW/HJdpF/LWjQfBCq
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d120870-a1a2-4bb7-6bdc-08d8035d5850
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2020 23:17:51.9233 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: A8fw1HyWQY5aY2bKjYe2iFGdQ9cUsEQpC9BgRDHSG05Vv+7GLTHyWSrmprwmT67R4Kxpu6g3RIX6OHp13A5BB7A443sCoB0X1cLZTwYA+lQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1771
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S46 1/9] ice: Reset VF for all port
 VLAN changes from host
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
> Sent: Friday, May 15, 2020 5:55 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S46 1/9] ice: Reset VF for all port VLAN
> changes from host
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Currently the PF is modifying the VF's port VLAN on the fly when configured
> via iproute. This is okay for most cases, but if the VF already has guest VLANs
> configured the PF has to remove all of those filters so only VLAN tagged
> traffic that matches the port VLAN will pass. Instead of adding functionality to
> track which guest VLANs have been added, just reset the VF each time port
> VLAN parameters are modified.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 42 +++----------------
>  1 file changed, 5 insertions(+), 37 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
