Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F532B279D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Nov 2020 23:01:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C74248798F;
	Fri, 13 Nov 2020 22:01:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 19smevTLgD5U; Fri, 13 Nov 2020 22:01:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 74755879A7;
	Fri, 13 Nov 2020 22:01:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7E2A91BF328
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Nov 2020 22:01:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 64E92204D1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Nov 2020 22:01:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sum+2Ll1K7US for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Nov 2020 22:01:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by silver.osuosl.org (Postfix) with ESMTPS id ECA1E204B1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Nov 2020 22:01:06 +0000 (UTC)
IronPort-SDR: FvJhoPqX/HOrdOf3RxJk0/LT3i86yrQ193F2cVLKtoKnHYyRwYmLdwh3nIzeZ8myBpMbvAscpy
 UNuOdQq08efQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9804"; a="255247744"
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400"; d="scan'208";a="255247744"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 14:01:06 -0800
IronPort-SDR: bC/PcUL7yxZ409nkbycOiD5sn9UWlUtmsZQ42n1XNJ1SXTgeV5RfVNkvfLGhzXMFX62yyW4mqH
 bTrYUDcZ9x/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400"; d="scan'208";a="429625067"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga001.fm.intel.com with ESMTP; 13 Nov 2020 14:01:06 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Nov 2020 14:01:06 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Nov 2020 14:01:05 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 13 Nov 2020 14:01:05 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Fri, 13 Nov 2020 14:01:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bqrUq72Rj8lwRpad0DYjXGK1F4wWi/eClA1/shxgWnDUVqgggB0A3yCFSwj+GXs5YNszqi2vkMfqfcMm1dldtv06whExhz2KpMd5ehnKceu8VYLLef4EWDKz8S3d8g6SEVnbrBQy06oGMaYGBJlSNAskKwq1Ci7vByq82U2rWv5bJDZ92rml0Tr7aH7aFxjXieak+qCWw9vZC2GcscPf2XYsuQrQK1MK82LMYLjV57Kpggkykasjs5atQb3tyhhHKNsGIz2E+oOqsme3V2zGmd75QmbBzAEy2HkE6/BoxaLlG1AxRsS1VIQU8v6g/u697wfnj8NzqWC6PaLlGnWJ3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nwJ61fk2C9GE1OAb5eofhBoFI+Te3ENtgD4P2P2XbIk=;
 b=AAOQgMXmh7hLmsHQTegFKu09ywBvD+XHFW8f4gLf+w86tqz3YdC9ZbEBlEJQoqGTEnW+mKqv6zHz8pLGcackn8hUUM8ugLA12A1Qtw0axNg8b17CgNQ9RzxincylSc9hE624lTeafCmELljMQl9NwQWOe+6o4UTAaUA8QJ/e/cu+CxHUvHrGgRTUm8AWNFBWOWOJGENPbpVDv+eRDJg39lpKxJLwn/i2KLGKHAbY/2g66vsfhNt2HGZQ9NhPnD05qDuOHK0rRncqorsPXaQd75wgDmy+eOWm+8v3qoccuXp64xb0urQEsnudRKobGtJVY3hQ7Eum16Omp8vad55ZSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nwJ61fk2C9GE1OAb5eofhBoFI+Te3ENtgD4P2P2XbIk=;
 b=hrEs/Mb6+6S10MTOh7w6da1XSgsL7Ie+jiQhVA4MYzlzAzjoxiTbLLrGXlmnWyIatDgHdUZ1aBiojsJZSDtd/NEFTqoEmO6IUgp+jntfTbvyftHF/ENcZpiwqJl2ySbbIdgaaYTxyhfPrJyPHt4V6ZqN9JxZ9sQivLlz4Tx9B4c=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB2799.namprd11.prod.outlook.com (2603:10b6:805:64::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3541.25; Fri, 13 Nov
 2020 22:01:03 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::c5ab:6fa3:709e:c335]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::c5ab:6fa3:709e:c335%6]) with mapi id 15.20.3541.025; Fri, 13 Nov 2020
 22:01:03 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Palczewski, Mateusz" <mateusz.palczewski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: Fix check for PF state
 (vf disable)
Thread-Index: AQHWuaXUlMFKZscC4U6Pq74/OaGIoKnGnacA
Date: Fri, 13 Nov 2020 22:01:03 +0000
Message-ID: <ccb2f9563068920c9072d1942febceb6b00639e5.camel@intel.com>
References: <20201113101411.25092-1-mateusz.palczewski@intel.com>
In-Reply-To: <20201113101411.25092-1-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [134.134.136.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 051e90bd-cef0-4a2c-1735-08d8881f9d3d
x-ms-traffictypediagnostic: SN6PR11MB2799:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB27995E4DE0B7FD485E971EE1C6E60@SN6PR11MB2799.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /unAVuQxjEu9QVkN4EADcOrDsdJmgGr5rd+vEeJo+zuLE+Fl/pRoDhCZUspSBXR0eMLSCsS8D2YhWMDPil0Mslv9aofU57qNZmG0qmeBJgXcS8sIlM8i6HPvGayKokhQpiIyca6A3369VcGNzSMDKzAA/ZDnuTA8aVN5kqshycyycS17wH57G+uyqmjuTd9kYxcJNhK/4AsInOaXux0RwUtA1Vux1k/ArO01PgvoLTTHjuYMUAEhY3VxzNuDTYOnj15pw+hwuu/ykgQor5OLGDYxRoL7zkAOZHmngwibLKILaRe4lC8i2JnNPWm53v8JomjP6XAbeIfchT++CqCuyPXLbz/t3jaszy2/cNy0t4X5+ZTpyRK8g3S+HasVFMC9dS2SyjfI5esHFxLSanvdzpmDDsxqZvmPnl0grmRmyc+6A7wqDy2zspvjAjFzTO4pL2dPa5ilVpd/To6q2qpIlw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(39860400002)(346002)(136003)(376002)(366004)(66946007)(76116006)(66556008)(2616005)(71200400001)(86362001)(4326008)(110136005)(6486002)(4001150100001)(478600001)(6512007)(8936002)(186003)(966005)(5660300002)(66476007)(64756008)(6636002)(6506007)(66446008)(26005)(91956017)(83380400001)(2906002)(107886003)(36756003)(8676002)(316002)(99106002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: A3INleTQcrzn/7LXbodWGyk/KNGBBXYyuq840hvClm1p2izoTHD36kVKM0uZ+I6x44B2ZhH2E7Q11Px3fEE+KfpXXINVhZp70vgvaKgALtRXaXeF43fYjedPbHeODx6zz3CXVj62o+2wkT597FyevQDrxpndtS/1889+7fhajs5pLXV+ccyb2m7VFg7jfguB1q5kl7jQXE0A3jPafhwflPfx9Cjn3f6dIcX+35GHUBHL9jz5hhuoMkCJBUjGXzR24wv6TaMKpTotd/fNVrgYg0A0CLghCeyd6E876l0eKOh6YtqTjANjq7gYdKbmCotULGUEWqHqXG9kvxX3ZZ9nFvwHmXcFfjsK4L1S3ruQCXopFJ94obcbH1g2a+8Wy8OPlc8+4siWx7ZmBF34wdQuOj41M8uCAX5l0QfOqz61Gg3uSz0fnSHZCyGDsBL+bHuPJ/MNgpMlOA9olD0WaKxOQWnJxqU0t5jZL8+inCvN/cXP973wZ7E/UQBQo5gGaLEdHQE3rgDSd2DQauINWsjz4F+AEKEE+fClXs4hfZDjrIB/o1tFc8TGR5XLarKwAPbkAlCesJrF/FoL2BDHZ0yNMZOuzMQJk5aqRkKlgp8l70/abNVeXqEBA77T8TvvLzw7YEbCgF1Hpm/bc8AfbXfugyY2ousnuU3hVBHLqVoyDMH3YRFFLLoU+rJeRDCjijFgla28hGsCVTgET9WJQ4QJDeKz522uuy0HsNiDyHu+4KqI+fEQQYLPKwAkwSoAijSD0XJIukiZpEMa66VOz2OI5VyrU/PZYL6mveOaX3LjeDvboPmOIb+aBaJkC490IEB0oyROGyQg4CCqGAiBAG0+QNwKsapsaQKUyiCOk7yLX1lkCa+ySUcaD1Yrx1H2EkzLNSO+w1UVILpfZc1hMP+dxw==
Content-ID: <31CEBF68CA861740A0CDCD771073A207@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 051e90bd-cef0-4a2c-1735-08d8881f9d3d
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2020 22:01:03.5625 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7G0N2mvbqRXuIbxvri0QGIVHxGSjAlU1lFqJspAN0rKrkn/OALPBZL7AY+b9GWS+gkMvcdpUUg0SQT9b18irMk9t1z4u7VFG5ZrP8ar7Juk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2799
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix check for PF state
 (vf disable)
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
Cc: "Laba, SlawomirX" <slawomirx.laba@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 2020-11-13 at 10:14 +0000, Mateusz Palczewski wrote:
> When PF state bit for __I40e_VF_DISABLE is set,
> it doesn't mean necessary that the VF called in
> i40e_reset_vf is disabled. It is rather impossible to
> call a reset on a disabled VF, so return false and
> repeat the request after a while.

False is already being returned. This patch is only adding a comment.

> Fixes: 8d38e0c("i40e: Fix removing driver while bare-metal VFs pass
> traffic")

The fixes tags should have 12 chars.

> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>
> Reviewed-on: https://git-amr-1.devtools.intel.com/gerrit/301695

This Reviewed-on shouldn't be here.

> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Tested-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index 8951740..d30a57f 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -1423,6 +1423,8 @@ bool i40e_reset_vf(struct i40e_vf *vf, bool
> flr)
>  
>  	/* If the VFs have been disabled, this means something else is
>  	 * resetting the VF, so we shouldn't continue.
> +	 * This is a global state of a PF, so it is possible that
> +	 * a different VF is in reset.
>  	 */
>  	if (test_and_set_bit(__I40E_VF_DISABLE, pf->state))
>  		return false;
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
