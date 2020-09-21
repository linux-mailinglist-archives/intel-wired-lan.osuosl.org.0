Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 69F662735A6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Sep 2020 00:21:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C9F3886663;
	Mon, 21 Sep 2020 22:21:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sBO+4bVrhYka; Mon, 21 Sep 2020 22:21:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CC34985700;
	Mon, 21 Sep 2020 22:21:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 963DA1BF334
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Sep 2020 22:21:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9178A20778
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Sep 2020 22:21:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C0o3TRgSlJ0A for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Sep 2020 22:21:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by silver.osuosl.org (Postfix) with ESMTPS id ADC0720522
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Sep 2020 22:21:38 +0000 (UTC)
IronPort-SDR: 7pOacNy+tSCybQNhQVPwWQizXTGNIogwD/RYrsXk50S/UMnHnEAFVpugAIzvuxZZp5IMczQ5nC
 OPFjnD6736Gg==
X-IronPort-AV: E=McAfee;i="6000,8403,9751"; a="224637944"
X-IronPort-AV: E=Sophos;i="5.77,288,1596524400"; d="scan'208";a="224637944"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2020 15:21:37 -0700
IronPort-SDR: HNhgPDfu7eGPzxbu0MFAu3WhGrX6eQ0hQGhZOqs62pLjV1qH2xLWnfSlTDxo6VtOfdz9BDGewI
 oL4f6YgWZZUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,288,1596524400"; d="scan'208";a="321972709"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga002.jf.intel.com with ESMTP; 21 Sep 2020 15:21:37 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 21 Sep 2020 15:21:37 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 21 Sep 2020 15:21:37 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 21 Sep 2020 15:21:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QikutBzkT6638wFnOwAPB1ftyo9o+z2EFUJqB8UXasLJ4Z0fDT1Fdl1IK0hTMky4hsK6rx7g/842lVy7szrnv2euoTvkeqFluoZQfgTvB7nJIDkfWimw4xAJ3lmBXg4YKg7F7SLbBd1sCSLSWcAPZ1szCJVU3RpDafMMfcqf2E0w78mdq832GwLLIFOizWoIOYUygU73vwAyAWarp5N8IPKQ4+5wH82gE3tFhxjEDn9hJQipPikl1+cSEUge7gJXo/2ftBpYnd1r6rgL2v53dZt6+9OKQ6XTVeyoo3tPZ97j/Oj35nWvXFiNa+kwUYlKgdA0JSU3NOncssYFPoOUjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mg/bhaL/ZyCJiloFHbpJCGLbfw7aLBz4Z4ea1LYIANE=;
 b=akwuFoZCKPRZk5z5PRWuVsGo1IfNYrZLCAYUJzQXjAXs/a6440nqZUxKxBvwa355QteyBCgc35UTWOBGupfR2m5IH3SlcUYYjiRG9DtT+KGTS82a85nN91gUZbT0kaHllEtEfUgXUYcO+jOM82BFdokrBYnsP+VuWt6v08W8g9/mraUJxGGFFaOmwqjtgjp8ySs24hn8OzLUtO3xG2s77VbFKRXGJ+CkfLmAvDTJtd8p7uCAG/hlR3dtue9co0Bo6icG1FdJRvRxkH9yUore5buoUK+AG2QaksZGdYLv1fpNjblxRe/jVi30wd0stEE/iQ46v0n82ggxwmHhjTq1+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mg/bhaL/ZyCJiloFHbpJCGLbfw7aLBz4Z4ea1LYIANE=;
 b=xQ9ftmbg2gHk8qq1Yb3m7eb64zrhEedoP8IOoAyt85qI5WVbK/CiTDT4wUVEDmbk26K3NoSXR05ym0Om9UspdVsU7sqPvgdhfSHNyhpk0ceFTMifRdKmI9TpdxAZ+7IDgKzg6wfou+NMIHKY0/iOVl1wnwN4iUxI+jNrRWOSLNs=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB3278.namprd11.prod.outlook.com (2603:10b6:805:ba::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.13; Mon, 21 Sep
 2020 22:21:36 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7147:6b91:afe3:1579]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7147:6b91:afe3:1579%3]) with mapi id 15.20.3391.019; Mon, 21 Sep 2020
 22:21:36 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "sven.auhagen@voleatech.de" <sven.auhagen@voleatech.de>
Thread-Topic: [next-queue v7] igb: add XDP support
Thread-Index: AQHWj/3IWUO4RhwKCUaC4+CasVc00alzqyaA
Date: Mon, 21 Sep 2020 22:21:36 +0000
Message-ID: <bbb768aefcb41310f036477c015f101269c53444.camel@intel.com>
References: <20200902203222.185141-1-anthony.l.nguyen@intel.com>
 <20200921095821.jmle6qdcn2ksmtee@SvensMacbookPro.hq.voleatech.com>
In-Reply-To: <20200921095821.jmle6qdcn2ksmtee@SvensMacbookPro.hq.voleatech.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
authentication-results: voleatech.de; dkim=none (message not signed)
 header.d=none;voleatech.de; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9c60030d-bf38-4f18-5a49-08d85e7cb3f8
x-ms-traffictypediagnostic: SN6PR11MB3278:
x-microsoft-antispam-prvs: <SN6PR11MB32780305022D7AA923266941C63A0@SN6PR11MB3278.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2958;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qA9YcYyxYxSBrdPQBmZHGc2tsUCMS1c5As2x5Q9MrhzwOE+pTtb+LXQbVH5A7UM3XB0zBxHNBeUyUjkilWgMtcqSAtDlRSL79nhTpw8hEBAEpWncmHoxBC9w5gpziIFT17BOlY8R9latjCpbJkGFjFdBQwGyZMl/RwJ99Tu6acniL8rZL96KAp8TFsJSKda/boGAQ4qPxXHpRz2OEvpw9rRl4C7S1RTbT0aCnuF68YA9VWoBH0TYk4+TPwFJ12K6o8glQvttcbXSlIGfGky8SbgZzrunGVkpe8RjfbKUndo8kRURGSYRzkYkNSm/8fkhSywf0sYS8V+n5f8jPrOU1LEp9UG2zwxkyrZ9i0IUjD5ForV7/UGRLUMSQN/PPX0m
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(136003)(366004)(376002)(396003)(39860400002)(26005)(6486002)(186003)(5660300002)(71200400001)(8936002)(6512007)(83380400001)(4326008)(316002)(76116006)(8676002)(478600001)(86362001)(64756008)(6916009)(91956017)(2616005)(36756003)(66946007)(66476007)(2906002)(66446008)(6506007)(66556008)(99106002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: +aQrMPAzLrW1Y0WWkDWHaJSoDF4vpGD0Fde3qiBXAKzt4H0f5Zm5l9CFXZ4xCDHXHHIkTS7ryhl6Mhdla+byX1X465DblxKkQqNP2P9SL6mj8p1iTOk59/8mu7oyM+d+nFVe0UToNNiJsAYoVcymwBsHUaH6R48BVThQxlqCCz8DzTre1ye7/m+zPTOCbwHXjjIoCe5UY0dCYhs7jkVU3AVw1968xsQxHcEE6RJzruAAacv7QI2LlOKcawH6fXnXK/hzb34wy6Ml7QsA4LswPqFgkdvuE7+iiNzpsGSoDp3rIgzNkDZtZlf58UgAynFql4y9ilJa3G5SWTQ8gU8AFfUukegzLKWev8GRWvIPkHY0HCBmdtRnt3od2f6AbF50cDHYTPQNu4qEGBfgCqZ7L68DlTZ/7+L1VuYMXlqpS99O1vVmpqmvspX19zC9hvvsLYlP5d9hfm4bmidgj20/kIlBzZ71l8HfpVx860dOZqqWl1tx+JM0OD3tPUOBcUUI7XVjxmJM3ZDxTyfJBr3QMafqzF+c0WON6gftGGW3wnPY92rRdl/HjDxXDRtbRDC2OzPCbqCWs6tYQwAp5L3Z2sdG00jBK0ka9nYuvwkNlWpBU+CE3nqbDVIdj4k52Lg7KzpVoXpKbwmSiMM1J/bY5Q==
x-ms-exchange-transport-forked: True
Content-ID: <DF1405DDEE86724D8E760A8AE79FF0E0@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c60030d-bf38-4f18-5a49-08d85e7cb3f8
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Sep 2020 22:21:36.0419 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QX/2iorisAoaJ3yM3noO1i5Z64qdDMOjZVujiL/Uv5Z1wNMuKfPwPpIeU0ulhkz/0lN/x/zupG09Wl9fjckS0Un0B8roS1mhrIgyH7ngrYE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3278
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

On Mon, 2020-09-21 at 11:58 +0200, Sven Auhagen wrote:
> On Wed, Sep 02, 2020 at 01:32:22PM -0700, Tony Nguyen wrote:
> > From: Sven Auhagen <Sven.Auhagen@voleatech.de>
> > 
> > Add XDP support to the IGB driver.
> > The implementation follows the IXGBE XDP implementation
> > closely and I used the following patches as basis:
> > 
> > 1. commit 924708081629 ("ixgbe: add XDP support for pass and drop
> > actions")
> > 2. commit 33fdc82f0883 ("ixgbe: add support for XDP_TX action")
> > 3. commit ed93a3987128 ("ixgbe: tweak page counting for
> > XDP_REDIRECT")
> > 
> > Due to the hardware constraints of the devices using the
> > IGB driver we must share the TX queues with XDP which
> > means locking the TX queue for XDP.
> > 
> > I ran tests on an older device to get better numbers.
> > Test machine:
> > 
> > Intel(R) Atom(TM) CPU C2338 @ 1.74GHz (2 Cores)
> > 2x Intel I211
> > 
> > Routing Original Driver Network Stack: 382 Kpps
> > 
> > Routing XDP Redirect (xdp_fwd_kern): 1.48 Mpps
> > XDP Drop: 1.48 Mpps
> > 
> > Using XDP we can achieve line rate forwarding even on
> > an older Intel Atom CPU.
> > 
> > Signed-off-by: Sven Auhagen <sven.auhagen@voleatech.de>
> 
> Hello Tony,
> 
> thanks for the patch update.
> How is the process to get this accepted?
> 
Hi Sven,

I've been waiting for validation to test this. When I get word that
everything is ok, I'll send the patch to net-next along with other 1Gb
changes.

Thanks,
Tony
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
