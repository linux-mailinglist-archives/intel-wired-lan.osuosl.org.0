Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 26C2A273A63
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Sep 2020 07:53:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B56EC8577C;
	Tue, 22 Sep 2020 05:53:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RXHtAmy9Z4fk; Tue, 22 Sep 2020 05:53:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8B21B8577F;
	Tue, 22 Sep 2020 05:53:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CD5441BF3B1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Sep 2020 05:53:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C25EE8637D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Sep 2020 05:53:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gw5yeZd-hB2w for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Sep 2020 05:53:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9F0EE8636A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Sep 2020 05:53:01 +0000 (UTC)
IronPort-SDR: WMLxednbvZDjrXLCPUuNDwaM/4uZMdBmQTVmUtBADq0WZvoMW7Vs2Yp1gofc2YN3hMrHFXlt0P
 0A5Iz2/TuDSQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9751"; a="140540575"
X-IronPort-AV: E=Sophos;i="5.77,289,1596524400"; d="scan'208";a="140540575"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2020 22:53:00 -0700
IronPort-SDR: PTh8tDLHCgxfDdqfsOwN8WDxh6vrzxF3ye0hcW1ZueBGwPRSHOhmfwA3tGxjoBbvyuDbH7XFGS
 r2RM1HkKXfPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,289,1596524400"; d="scan'208";a="290271401"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga007.fm.intel.com with ESMTP; 21 Sep 2020 22:53:00 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 21 Sep 2020 22:53:00 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 21 Sep 2020 22:52:59 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 21 Sep 2020 22:52:59 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 21 Sep 2020 22:52:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pizr1Lxi8nJZe0eDZPnmAk4dS//Gf5co2OoZcqGZU8heMrRYEu0nY5e3cRYgTbHcb3A3lSeQn30iXMn+/kX4n8wCsWu8xURWWbeaLV2XyYmNPKrm6k5FLs1omPk56/ib0JyU3DXq5GkcTjyYbnA4qr+EOW07cw/RlxreW4reVZHVHFXbXYPD+fvU4l1IQrAKKYba+EmLSsnupRIv3iYP9Ad2hJgZKhAQ2ZsqXDmLGGWXVOQpDPv1kPdvL3zo+AdNSV6fXfRE8NxuJD6Q0rRjLfubywdDWPuxgqnxam39RJdGu7pr5jHFnUecrQEfxWtBoHO7BdLbaPkMt6av3J/xWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K1ksXYiDOYIuPmMm398iXZ/Dqb11MREBz0pd4HIJsFs=;
 b=cMP+edQ+j9GQM148t/X9KulKR11uoP+Rk5iSb+wABQ9DzlUMb+QzTmOOCW4DhtdbAfmClpNF+MT0ofzqg1G8DS61SJy61Ez1/oLodvqVjB9oeWzA3aO3boDeJt0R2NOd9srqps8SNzJQGRaUSgg6gKTnGKi++rhZuRkZs9CrlWiXYKPvmq+g7tLwq4w+i0sBaBOuypcSM/RVJWFFNdtuiu7zE9XM14ePQWFrmbPXBr/PMNB4nz7xr/I3reRYEbsyDmsok+uK7aPAzQEl10cK6eHUdRK5S55S6DQOEkOAoXGUX2sCUxRwKt0Lktl18hnX+jnpIdrN2xsNVJJLShqI/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K1ksXYiDOYIuPmMm398iXZ/Dqb11MREBz0pd4HIJsFs=;
 b=HPY2BT+26U0BREXHBoJu8QoujylWkTSBnoPUMH0AQyYO+nrsWLZJ52Hg8GZvbZA2zaxhmIMNTsa7py/efBCiffBBFOwJq7v4KRBuP24lBuhuz2BwRHsXISPO0+RHV41yhF6b8W3IIXn44+Mcjr8ycwUC+zlVOe/9uWZG3kzmbTc=
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by MWHPR1101MB2239.namprd11.prod.outlook.com (2603:10b6:301:5b::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.11; Tue, 22 Sep
 2020 05:52:59 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::4c42:d8c4:86b7:9353]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::4c42:d8c4:86b7:9353%3]) with mapi id 15.20.3391.011; Tue, 22 Sep 2020
 05:52:59 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: Sven Auhagen <sven.auhagen@voleatech.de>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [next-queue v7] igb: add XDP support
Thread-Index: AQHWgWhWoEH784taJ0aKfnYn/gyv+qly+KiAgAFMT7A=
Date: Tue, 22 Sep 2020 05:52:59 +0000
Message-ID: <MW3PR11MB4554FACD3AC02DD37CBC36D19C3B0@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20200902203222.185141-1-anthony.l.nguyen@intel.com>
 <20200921095821.jmle6qdcn2ksmtee@SvensMacbookPro.hq.voleatech.com>
In-Reply-To: <20200921095821.jmle6qdcn2ksmtee@SvensMacbookPro.hq.voleatech.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: voleatech.de; dkim=none (message not signed)
 header.d=none;voleatech.de; dmarc=none action=none header.from=intel.com;
x-originating-ip: [106.51.234.17]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 43446285-8ee1-486d-15f2-08d85ebbc2cc
x-ms-traffictypediagnostic: MWHPR1101MB2239:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR1101MB2239D8169FC73A075D19A13E9C3B0@MWHPR1101MB2239.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LTANchggxU36B+Ys9NoFsoqcH6x2HoRzKO6nGSAI9Ywe5iq4pDH9JUv+kzSqgyR4VDP4gmWs/aKZQ03Vg2wv8UTxH0oQtgVEZwPuz0vFTuv8sJjjQ3zjaiBJLWgBypr/78Lf/FhZLdewaBUvgfvpAvhoRYutWG6O9BKnLjFv9oUzOJ2frdOSxEvFo7yO9B/LwfsiZmpfzuHyNkOn6f2ZSQOlI/tKXf2hvLkoywEI5lKff8O2sdMfPw6MAaFuFXqqNdhE/jP1RtOlQq/RufVYxFYgT7gh9l3mVmGAypWBroO+P6hzUpxWu0zekfvQk9ElhvRPfi1F+xrojDXiApoB/gRbBetZYle0Oyj5uZ2RTOnK6Jjah8sKwGtEJhEgLQiI1ALPEBWOfmlbjnUnTuymJaKIq9Hrz6/4sSi3isSY+N1yTfI7pWOonUgIvS7eOXvL3mVZjZesMWyQ4D2MBl4aZg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(396003)(376002)(346002)(136003)(39860400002)(86362001)(33656002)(4326008)(9686003)(83380400001)(55016002)(8936002)(6636002)(8676002)(53546011)(7696005)(316002)(110136005)(55236004)(966005)(66556008)(478600001)(66946007)(2906002)(66476007)(66446008)(26005)(64756008)(186003)(5660300002)(52536014)(71200400001)(6506007)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: KZ/VWwqj6cdAUPBHaoDG5cPtUn0FcW4Hn+87gWBP6QATgHwSoOf2E+FNcyGHRGS4/uW3c2bMQtOaxq/ohY2sxZ7O0wHIpKlNdESmH8gkXxSpNp+rXOc9EiuVJNRbcCZGO0iJMrmn+kt8df1Gn4uNJ/mMVAl+mhlhS7EemvBc5T0JvOQEqmZ1YWQh7SDHuBjkIAk3hNQji+1IBO2rk9yAGwDtuCThINirqdc8HRRZqncYLNjAjrVchhBSyp3Ziepslgf5L2y1yWRpZyMb/VZO2sA4+HUe/sYjTE3TkKVuEe5kL62UPxAQnZimXI/X9I5545e3Bhx9p79DaQTFqateZpc4DB05wfIb/OtyYcmkpaIbZTcvONTShe9LQwhWJDU00OU7ihj/4FjdRQ/ecwR0KPJgy1SEPM++aARP7n0hBEIGaIsZo7N80DBuxSQvAD9aEO4UFrTXjjgnLb2GEQUt7i1Y7/sU4Vv9/xCnl2mTS3EqPgSVfEH2gmRsUBN6msWD/SnfjOHhkTxJSTrX6mL94ErT2v7PNCRmgzSl2wICi7hwosi62WCoLrz6wxowuclIwA3Cqv2DLuY3ol60fyt+DJMNR3U+npiEaUQjmBkBJ0MTNWXg7hYlvyA5oLxOKNzURVDG2c/Sj2kXtz90yHbkvg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 43446285-8ee1-486d-15f2-08d85ebbc2cc
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Sep 2020 05:52:59.2238 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bXKfSjdkhC0bm2pXhWlYgBRjAxguamv9dYyir2ZASMIx+f2bHxzd9Hw8mSbWCnLX+Gr3exFLJina1vD1O8dGbkfgp3JBnPNIRnHBlvm/VyU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2239
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [next-queue v7] igb: add XDP support
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Sven Auhagen
Sent: Monday, September 21, 2020 3:28 PM
To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
Cc: intel-wired-lan@lists.osuosl.org
Subject: Re: [Intel-wired-lan] [next-queue v7] igb: add XDP support

On Wed, Sep 02, 2020 at 01:32:22PM -0700, Tony Nguyen wrote:
> From: Sven Auhagen <Sven.Auhagen@voleatech.de>
> 
> Add XDP support to the IGB driver.
> The implementation follows the IXGBE XDP implementation closely and I 
> used the following patches as basis:
> 
> 1. commit 924708081629 ("ixgbe: add XDP support for pass and drop 
> actions") 2. commit 33fdc82f0883 ("ixgbe: add support for XDP_TX 
> action") 3. commit ed93a3987128 ("ixgbe: tweak page counting for 
> XDP_REDIRECT")
> 
> Due to the hardware constraints of the devices using the IGB driver we 
> must share the TX queues with XDP which means locking the TX queue for 
> XDP.
> 
> I ran tests on an older device to get better numbers.
> Test machine:
> 
> Intel(R) Atom(TM) CPU C2338 @ 1.74GHz (2 Cores) 2x Intel I211
> 
> Routing Original Driver Network Stack: 382 Kpps
> 
> Routing XDP Redirect (xdp_fwd_kern): 1.48 Mpps XDP Drop: 1.48 Mpps
> 
> Using XDP we can achieve line rate forwarding even on an older Intel 
> Atom CPU.
> 
> Signed-off-by: Sven Auhagen <sven.auhagen@voleatech.de>

Hello Tony,

thanks for the patch update.
How is the process to get this accepted?

Best
Sven

> ---
> v7:
>  * Fix issue with applying to dev-queue branch; utilize net_prefetch()
>  * Fix build issue; remove XDP_QUERY_PROG
>  * Replace fallthrough comment with fallthrough macro to resolve 
> checkpatch warning
>  * Fix reverse Christmas tree
> 
> v6:
> * igb_xdp_ring_update_tail changed to static
> * bump to 5.8
> 
> v5: resubmission with function names in patch
> 
> v4:
> * use HARD_TX_LOCK in XDP xmit
> * do not pass adapter to igb_setup_rx_resources
> * account for timestamp in frame size
> 
> v3: igb_xdp_ring_update_tail should be static
> 
> v2: original did not apply to my dev-queue branch, so fixed the
>     conflicts in the patch
> 
>  drivers/net/ethernet/intel/igb/igb.h         |  81 +++-
>  drivers/net/ethernet/intel/igb/igb_ethtool.c |   4 +
>  drivers/net/ethernet/intel/igb/igb_main.c    | 433 +++++++++++++++++--
>  3 files changed, 482 insertions(+), 36 deletions(-)
> 
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
