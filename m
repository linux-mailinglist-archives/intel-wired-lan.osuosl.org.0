Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D0CE01E2FF0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2020 22:26:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7D92F20384;
	Tue, 26 May 2020 20:26:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sY9HQNCw9xeU; Tue, 26 May 2020 20:26:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4FD6C203DB;
	Tue, 26 May 2020 20:26:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EFD661BF82F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 20:26:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EB9B186930
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 20:26:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qTg1I3EsF--H for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 May 2020 20:26:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EAE2A869F5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 20:26:04 +0000 (UTC)
IronPort-SDR: KKvx9OnCiEwMdfZIYseXzGxvHXetc1e+r7fVl3keo8VItCuBKS3pTPJIgsAMObdN40URBYZd84
 oj5UbjrnvucQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2020 13:26:04 -0700
IronPort-SDR: vdwj8l8BlNgyUlPkXYLu/4Li/D73Cpwe6gyJKrgsiAeN2/RfX/HLrAUbNvK6+CRGg94qmxVJT9
 zq1F4h1m4aag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,437,1583222400"; d="scan'208";a="468437650"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
 by fmsmga005.fm.intel.com with ESMTP; 26 May 2020 13:26:04 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 26 May 2020 13:26:03 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 26 May 2020 13:26:03 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 26 May 2020 13:26:03 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 26 May 2020 13:26:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R0Dl1FnqEErxWDmJl7Y/OzIpgtTAMXfQTC+x5BK6gMogI0PFsDujacNCKaJih3ov9SF8Zt43iqNR8sxvrcyzfua5HOJbhLXgE4aGASMKtDqq/6K7ZZzWdumP/amBEYvNJawcvwKgSOI7VVUexn+BYVOwIXVfO5voR8uWJL+W5SKL2ajFLYvP+zupQk/xyB3H5aAyW6jjjs4NCIWylmv/msYeleiHZlZ7RZkQTYX33A52XjwkLd5Pu6/YHNSglZnxZaihTA7PCpJlQmuCJLy57zOrEwc6htVFYJx3UQS+UNhhvT4+aIQjj3IsQIsosyaeJDYs8cpRWGcL/4A6fM67WQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aTn3/ON0NygR5iVKLwJDDefYHfuNC1H0hDfJ5HFbfzw=;
 b=mAjNOQ88YXeYlfGOZ8go1SUZrbUrF0QOaNJVf4DsOGd02bBPZtqi5NBtDsxxy11EDYXn8rVIsQ0wA5s7mj8TjrsbhRDVyrxOdCqOrEZqlgdkjMpN/Rcqn84DoblG7Hqh3z+b5X9lRbRakQ0NpJkE92bIzlhovJHmPzpUEMQ+1XKOO9SsobsMkpVvuSaGQduAmtm5tZw+71koJ40TK46NIHMchUOHOd6x+5YRBZYso3V3sKNLBAvZhNUNJ5RgHo9CItcG/ihtlpPauSUFHLdFfRULP5BYMtd7O+XRIE23n8Ip5isnkP7TywZxj/0jXH3Okz+Maw80gcWkroYsCvAcoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aTn3/ON0NygR5iVKLwJDDefYHfuNC1H0hDfJ5HFbfzw=;
 b=JCKarwkrkcKotwK0jVJ0h6EnIcUAa5/Picc24PLpbn5GW7RIdXklOn4FOfeYeiE9/ohBvFYmGp04nmGiZaLjWPOaPt6aA43jLbA/YkJvRk48NiAUM3IRuVS5F/ZyuNgp4wccGbgL7JqNsGkFcWLNoMW2xNIXE4p6RBD+OXb14+I=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1643.namprd11.prod.outlook.com (2603:10b6:4:b::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.23; Tue, 26 May 2020 20:26:01 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3045.016; Tue, 26 May 2020
 20:26:01 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S44 11/14] ice: cleanup VSI context
 initialization
Thread-Index: AQHWKxtajpsV5ij/dUa3YSCecmUgoKi64XXw
Date: Tue, 26 May 2020 20:26:01 +0000
Message-ID: <DM5PR11MB1659F753838AB2FDC196FDE28CB00@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516004226.4795-1-anthony.l.nguyen@intel.com>
 <20200516004226.4795-11-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516004226.4795-11-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 75f78d91-f8c7-4f90-f5b6-08d801b301e0
x-ms-traffictypediagnostic: DM5PR11MB1643:
x-microsoft-antispam-prvs: <DM5PR11MB16436ABE1BC88F5ADCEDCA988CB00@DM5PR11MB1643.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 041517DFAB
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qToNwOtLfvTew6i0nLfIjnIIao25Q4/317mgtMtOcB8USH8L7D5K9fCkLF8qufNifH9yscxX+YABY78+gKAqX6U4CGBjh7T38JrO2GJl0clRZfzmHKL1B+kp9d5K+LYw9RO6CIW1kOXslDazkqxARABq8gpzQbWZS4yI0SBYZDdS/UT7QNYWJm5hWO8aXuJSgzUKWVPxccr65gMG5hiKvNy94cugBMniZfUOcf7WehaJJnFXJnS3FmFj27HGMaCVMVFSSOvhNJEceacfk2w5BZP/r74b4TM0w2j5GhGfPjodJLP/mszR9eCLmUN8NhFg
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(346002)(376002)(39860400002)(396003)(136003)(55016002)(316002)(26005)(9686003)(33656002)(186003)(71200400001)(6506007)(53546011)(7696005)(5660300002)(66476007)(478600001)(8676002)(8936002)(2906002)(52536014)(6916009)(66446008)(66946007)(64756008)(86362001)(66556008)(4744005)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: VCY+2RouGHI4fdGzW8ky/+Honprq+Ac7Hkq/wHum8/ENQxe/Rs6oxtxt3zlb2Ob1EGh17q6JCV6lMmLCgGjc1j0nVxK3xQ8RQVwBSrB7EX4Ued89yzvsaJ7qCDgHNQnl4gAevahzdYYKK0HATnRJVVbLG4F4xOZBT6mKi+slfBBGWPeln6FL1chXGe8nS273Ia6D29ScVLItZsxPfIgoDFKvGRiW9O6qW0OlLDqRP0yFw8mgRiE0Xdp8P1EjnXahfzGywNS6efT8OaD8rdWlRTfsMDFcYBobCaYlD3txBhekD0o/8Rn0el2RRqGBXKA3w4AlUbhcDRnWB+oTmO3q8UJN/ZOXxhH6A5P2pSEHjKQV8AJG6HEy3cFDoA5JzrPQJ1yAFT10aBUjW3f/9uvmp4wt1Ir+WUk4KXnaDaqJrwnl8mzBWdNxFnTdZH1ncQhI+Q8OSHmyDtlVpqJvWIHNQ9zlhkOVpjcqltOBiVs4bSeCWZ3zGZnkO9O7DpThJDcR
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 75f78d91-f8c7-4f90-f5b6-08d801b301e0
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 May 2020 20:26:01.4509 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7/rgOXWewZTwXpm5eAnrmc7zpcmN/uAPjfPQtWchYTS4AAWLeDgXIx0PMVNKZD0x3ecdrsaPHXUdeqOYfXxybqmAxcFgxj/wl3wRro7kZ9I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1643
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S44 11/14] ice: cleanup VSI context
 initialization
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
> Subject: [Intel-wired-lan] [PATCH S44 11/14] ice: cleanup VSI context
> initialization
> 
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> Remove an unnecessary copy of vsi->info into ctxt->info in ice_vsi_init.
> This line is essentially a no-op because ice_set_dflt_vsi_ctx performs a
> memset to clear the info from the context structure.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c | 1 -
>  1 file changed, 1 deletion(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
