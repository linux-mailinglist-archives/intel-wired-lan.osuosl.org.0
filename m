Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D38ED3EF38A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Aug 2021 22:30:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 35F2B40202;
	Tue, 17 Aug 2021 20:30:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 78se0LAIZvcm; Tue, 17 Aug 2021 20:30:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C299E4024C;
	Tue, 17 Aug 2021 20:30:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AFFF71BF95A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Aug 2021 20:29:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9D8A060635
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Aug 2021 20:29:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y4VPgUDftp5x for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Aug 2021 20:29:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 85018605F8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Aug 2021 20:29:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10079"; a="214341505"
X-IronPort-AV: E=Sophos;i="5.84,329,1620716400"; d="scan'208";a="214341505"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2021 13:29:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,329,1620716400"; d="scan'208";a="449414849"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 17 Aug 2021 13:29:54 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 17 Aug 2021 13:29:54 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 17 Aug 2021 13:29:53 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Tue, 17 Aug 2021 13:29:53 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 17 Aug 2021 13:29:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dRjD2OiwCdfD9x/qK3jaJyl8YCZJNmD2iQrpQvkuGpLnpfQSB+4IXA9s1zvKg/WKgCMi8caoVIjmqS93xgFqSMmX6tvi/pDntC43LIIOVkyUTfBNp1Dtij1gP1GsgyiWo9uQwSYcWze24us6142OhzAdPe1b7HRTIOPhOKJ3VCtc6YvwH+zEUupekJosrfwTE/dzGTXDw4r3JUhJhA7FhxvGlYcXwK6ezIWAzaDMOXUhjJj+40Oxw0ecGi4loAuNWWYsXKqrUprPjH1m4eTu4RpGorxckV3zF2D5n2XzebQf1/l7fDvQGKibCe9/0Kkw8dbiTVmUWUFnr2B+7EgL1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z7buE0EZ6zlyMhvX+1L77ZDjvJk6/QDKKlATLYXLAhA=;
 b=iqDNz1vNCla+rmSDu4uH0XpHFdbnKDw3V0bP7004zYzwXQ9WiLXEQDoX8T+xWky0+p5/2Wt/mLP5OiVpSJ/b3EYdmmv6TxnBcRYfoVwZDWFAM7MhlJAoCyEcgXHZh/7k1HTldmjN+qKIDTcjkBVdS5rLndGKjIIzXYVDc0z3zIGYOUiZs+jrg611GKBQKojgJGjMppsrZETqwUKbkadKcl3jKhfyTGZQle69qrtzdNz1M3qYrThr/8kPPWMOY0IgkLaUBLbd05WvcjgHBjxxp1PIge8znb61XSQhkLsddU7/upo6L76R2SHwBOTOb1qjSmIwWyqt53gvzn/sx439+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z7buE0EZ6zlyMhvX+1L77ZDjvJk6/QDKKlATLYXLAhA=;
 b=VQuR/I4G5BfswY3ZU2sYCtfR7/DRXArIzs43x0QBRCnW8+gOSW1UkaKBuI2Y9RamSelkHF7Z8feamaLKt8/q7fGlxfZksXadXToAAFwtOR8HcImMshAz/s70waXWepYimj+T0b13LXPoSEf8woswGzmCCJpwlK5vseggzYtRbj4=
Received: from MW3PR11MB4748.namprd11.prod.outlook.com (2603:10b6:303:2e::9)
 by MWHPR1101MB2333.namprd11.prod.outlook.com (2603:10b6:300:70::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.16; Tue, 17 Aug
 2021 20:29:53 +0000
Received: from MW3PR11MB4748.namprd11.prod.outlook.com
 ([fe80::8e3:ec48:4aa7:358a]) by MW3PR11MB4748.namprd11.prod.outlook.com
 ([fe80::8e3:ec48:4aa7:358a%9]) with mapi id 15.20.4415.024; Tue, 17 Aug 2021
 20:29:52 +0000
From: "Switzer, David" <david.switzer@intel.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] i40e: Fix ATR queue selection
Thread-Index: AQHXfw5p9UAYih6F2E6YEljm5y87Lqt4TiMA
Date: Tue, 17 Aug 2021 20:29:52 +0000
Message-ID: <MW3PR11MB4748BEE665DE5053DE1B5572EBFE9@MW3PR11MB4748.namprd11.prod.outlook.com>
References: <20210722151931.28037-1-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20210722151931.28037-1-arkadiusz.kubalewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 75a732ef-8309-4caa-ba0f-08d961bdc4e7
x-ms-traffictypediagnostic: MWHPR1101MB2333:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR1101MB233301E78FB3D05F0DC906F0EBFE9@MWHPR1101MB2333.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:257;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eyekfnwKZnUTZfZLp7GwqykRAwyL4kxmQwzXvqveAhhMh/sobHHXSXiB2DJ8MATOXD5Hb4P+2InaYQzSUXgIDNcSyfRnLcaaHyVfO8D3jJqQLxi0RjOiRVOYLNm8p5mNB3PO4lCSOzImMqnEkGbgTc75qxlzCCjalW++DCQo7qgvhTkfso60pJ/+EufffKzEQnh8BUXNNgrKAiO8mRIi/va2TVPI5K3Q92nHm1Z+uyPAVBQ4LSDlNvw4GB4DeVAiZ8BS/LH1KbFblogw6BCYMPGyEIH/NTnvAj9Keo5hNEkMXYKIuIhQbp7mV9oHvSbZ01vxynfvFlb9oS7qXR/C2y0sdgoh4fDDGs3VW14czKuX/BgfWVQeiX6om6NYKXuXAvfw+8zN3HcpdfBnI0sKmDuIub/jQYr7mEpyM5CFoduFludy8gqjYlNEE7/Q3VwxuqV7gMzZ64BT6NnDlz8zxmQjMHw+oHQjztB8NPiL9ZF+XJjwF/YrN6Z1hMGkGtnniulC/2GFXRS8sV+Xjp4Ok7UU0sZtBn3mFgiZNvkgNYWyfO3r/mfYD2FMoQMvwo49hzfZ+V2sW9FTds4zAl2rlSc66CDep1iKA9wwEkjlI42KHvK3W4sgfxw2IuX19j1wWvcqu5CArwGy8FFjwmHjcH2Dm9NJH+Kgb4PnxhONeJAj4KJulNRSrYC00hJCnypa06aUjVvO3su62m5S3gxGJQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4748.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(346002)(39860400002)(376002)(396003)(136003)(2906002)(52536014)(5660300002)(38100700002)(4326008)(66446008)(478600001)(8936002)(76116006)(66946007)(26005)(110136005)(122000001)(64756008)(71200400001)(186003)(9686003)(38070700005)(7696005)(6506007)(33656002)(66556008)(66476007)(83380400001)(8676002)(86362001)(107886003)(55016002)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?aaWrAMENkCuvfu+moZN7We2VZrzDUTlzCr4ZEYkRrwhathjK/mqLKTPYATX9?=
 =?us-ascii?Q?hOjyBZuoqfXY/2RKUqoO47WsYnqDp8frxuHUzObh9tIQrbtFVHjnRZzNvtYw?=
 =?us-ascii?Q?aZ7PUXYvT+5CzTQzyQJ+LMzIcTUxZAtjSuRskVI2b2XVfidvLCgcgXK4ZON6?=
 =?us-ascii?Q?zloxQoJOvdkMlwuyoSkOUdzB+xx6cPfJ3JMepk7SpJ0Z5R5BWQe55xZCpTpE?=
 =?us-ascii?Q?EzO1bucggAs2MVj6dsfT7kq4O1hEdh4W1tt4U+WYbWFoGtRTWP8YbDcU8ZrB?=
 =?us-ascii?Q?I29xsgdu59a1+EQZVO+LgBf5OtWZVKj90RDBjCx2biD2qy/+Uwo+kcOh0Qgf?=
 =?us-ascii?Q?Ft6aJvT6i4KMPDUwtpVIwQcMK5eAr0wb26LokQQJMe5Mrgc/k1esrBLwM/qX?=
 =?us-ascii?Q?aX6kcLu/VHjzU69YWi2lkkAxDE3J4eG/uwTdD8uMWAJ37Lw/7WonUgYEHZua?=
 =?us-ascii?Q?bEy5B2KBMkJyQicHfJj7PHkAs3MvQhzYjzUJDpxRjH8lMLqinq09PWnhAu2V?=
 =?us-ascii?Q?cdWOek1Et7lDtKb10zNgGl7mRGxnSxYWs8Bk/XM6fHxxMQ5jNWgl4JPqf35+?=
 =?us-ascii?Q?aTz7ouy9y3qlIZiLruooHODPny+g/3iLaplMTWC/1h8fT+iaGrnVhAncN3nf?=
 =?us-ascii?Q?qU+fumbpZida3N2BYF1sh0tO5rKS38OB2jTluVtIceb4YgLXBYFeST7tVzJ7?=
 =?us-ascii?Q?t5rm3iw/SafXPi2hzo4ADqyT/UU6jNdc0Ya+KFBgFAoXD+DIKySi1Pw/H+hx?=
 =?us-ascii?Q?8Zyiu5U4TJ2i6O9nkummVoJ86uXz/IMdQZgqkQ0MiDjuejYugBJKoLKvMUIb?=
 =?us-ascii?Q?G30zVcTAMH6m+9ZgjOz3rXuY8dPrmfW08ZA1H14nP5CGKxaHMlNl2umQYi6I?=
 =?us-ascii?Q?39AKMkBXQWAw5i6Ww1CduRqaD+QCINFAf2t/PWILOpLTdP4kAI05Xv16l8YK?=
 =?us-ascii?Q?1Q8BvBUKfFia06uwHqwcVVJw/h1yqvSZIlC3bg3gWDtXKPQYmwpb1A/61lIk?=
 =?us-ascii?Q?/TaElkyu/Qtc/W9yP1z9F6+7HSclqcsUrT8WKMYQ3UF87wfWwnoxgDco+hcA?=
 =?us-ascii?Q?6Dewv58zNjBc1jXjub2FA3XyP2St3lGUiZHND4J/cpQSZFjP51uVnA3LArhc?=
 =?us-ascii?Q?tE7nIhzdlwMjalIru6rCRH0x0hUzqamAczrO+Nm9mUA1upkg4bTxVveig6DT?=
 =?us-ascii?Q?2bWDkNuFLneV04s2c4gmTcN9vJuGNM8vSDIb2C3BX3q4aCHdoFMakxHY7vqu?=
 =?us-ascii?Q?L2TKTRmyiK3m3wEVrm2Cq7XDM7tWyNvGn4vvzPhgmdY3UdzwJPcoIR1ithox?=
 =?us-ascii?Q?Kh7Tgg7xac08jOBo3bmdJaTq?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4748.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 75a732ef-8309-4caa-ba0f-08d961bdc4e7
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Aug 2021 20:29:52.8734 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QAJN84O4K3BbS+m+cT2RbbRcWQ3+9Nle7bp6Jnpk5zeOoVW2Y9kjsFs6gg8u1VIw5TOQlrYRwsOsAFW98Z5MjQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2333
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Fix ATR queue selection
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
Cc: "Patynowski, PrzemyslawX" <przemyslawx.patynowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Arkadiusz Kubalewski
>Sent: Thursday, July 22, 2021 8:20 AM
>To: intel-wired-lan@lists.osuosl.org
>Cc: Patynowski, PrzemyslawX <przemyslawx.patynowski@intel.com>
>Subject: [Intel-wired-lan] [PATCH net v2] i40e: Fix ATR queue selection
>
>Without this patch, ATR does not work. Receive/transmit uses queue
>selection based on SW DCB hashing method.
>
>If traffic classes are not configured for PF, then use netdev_pick_tx function
>for selecting queue for packet transmission.
>Instead of calling i40e_swdcb_skb_tx_hash, call netdev_pick_tx, which
>ensures that packet is transmitted/received from CPU that is running the
>application.
>
>Reproduction steps:
>1. Load i40e driver
>2. Map each MSI interrupt of i40e port for each CPU 3. Disable ntuple, enable
>ATR i.e.:
>ethtool -K $interface ntuple off
>ethtool --set-priv-flags $interface flow-director-atr 4. Run application that is
>generating traffic and is bound to a single CPU, i.e.:
>taskset -c 9 netperf -H 1.1.1.1 -t TCP_RR -l 10 5. Observe behavior:
>Application's traffic should be restricted to the CPU provided in taskset.
>
>Fixes: 821bd0c990ba ("i40e: Fix queue-to-TC mapping on Tx")
>Signed-off-by: Przemyslaw Patynowski
><przemyslawx.patynowski@intel.com>
>Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>---
>v2: Improved commit message
>---
> drivers/net/ethernet/intel/i40e/i40e_txrx.c | 3 +--
> 1 file changed, 1 insertion(+), 2 deletions(-)
>
Tested-by: Dave Switzer <david.switzer@intel.com> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
