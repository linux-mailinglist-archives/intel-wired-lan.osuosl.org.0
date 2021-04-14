Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4055535FE56
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Apr 2021 01:19:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9C94384525;
	Wed, 14 Apr 2021 23:19:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ptsqRpqDjbTJ; Wed, 14 Apr 2021 23:19:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8277D83C5A;
	Wed, 14 Apr 2021 23:19:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3F64A1BF870
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Apr 2021 23:19:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 279C240642
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Apr 2021 23:19:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a2_RfuMm3H-a for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Apr 2021 23:19:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C152E40633
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Apr 2021 23:19:24 +0000 (UTC)
IronPort-SDR: saS/hhDAVsJmTEGKs0BjF1hobJ+4TgNWvwD2tEP9KEB1FrFGHyS52C6QvdNJSSc8XlyMrZ/CHP
 J7oZxjJFvKjA==
X-IronPort-AV: E=McAfee;i="6200,9189,9954"; a="182257977"
X-IronPort-AV: E=Sophos;i="5.82,223,1613462400"; d="scan'208";a="182257977"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 16:19:23 -0700
IronPort-SDR: mDzYVeu7StGum2X6D4Ssx9hOHs4BrzS3v0JgUQ9pr2lTVle20RBKrAxGrB8w3St+kBGAtxpl4g
 yP9nWFsJp/LQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,223,1613462400"; d="scan'208";a="399363224"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga002.jf.intel.com with ESMTP; 14 Apr 2021 16:19:23 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 14 Apr 2021 16:19:23 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 14 Apr 2021 16:19:22 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 14 Apr 2021 16:19:22 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 14 Apr 2021 16:19:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U49lsf2pebhGxrU0VMZw+bba7Kw+NArAYEfI7fbIoenT4/k4iWlwWVfMw1jd3KhHmxnLnldiTDG4UE7y1AqmcLYBS/B7LmTiqwfTFOjQor9O5fg4n9WOYpxXPBNbHRvLpiXkrHWUGqR/ZtWyYtHf3zJF0QJ+LZkbtTPvQ6aL5fHovEW5B9D5wrbWcWfH+uHcGDpFNMqwsnBCPR4p/XDgRhgXPiOMmAxinr4KZ1ZOg2roGxZrk46DaMM+7sB/fxOCVVdejGLIl376TqY2M6BAtbZ4phpjWqi6HtcsoMJXgZNTJ249TfTv6Wqbx+K3/rdRpaCch8DHMk2dGCKug+qWmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cEj5D9Mo4j61n3MUWCl67nRN05DMaVVN+PmWf9/f8EI=;
 b=Gtq6c9JbxZ0fVtnW7WwqlKFAnqbytSD+DX0ITyyDMKjSlpJTyJbPc7wl4T2rXslrq/MxCMA4p1a/mqGYDzYLdzjSlyDuUaK82FTY1SaufhKuIgg5fOGoS/XA9kr3vNULCGE0UvxGug8+eDaADbSImATU6H5GAGMi9veE2rISEkAHblA/RA/++0kiXYkDs7EXqH5nZm7pK1qEYvs+CogugzsgXIouLMDigkZKpfEUGBhdIEL8Y4kEeiMza1uXPkK3AfG3u9rPMQvXYm1s8d/qlChJoo7OYK6rbM/i8kXjD8bKCJ40nLsTDDFUrS0Weh/vAHTgLA4jOu94r8EhtGXJ0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cEj5D9Mo4j61n3MUWCl67nRN05DMaVVN+PmWf9/f8EI=;
 b=HFhm2ftzcxI0Elc6YCdt02AHdABsq/yBzK64DRyqZJbKtwebDvseXPQ2PfUmGzmrLt/VdFhr9hzl3TjifWM/L7V4G2Om4jAo8gxn3IYd5w8kX60gXX+C3yPGcwoeSpqynD3y46nmcjteTGW6gT6ebnWjmmt0UtWH5oWwFmSQIaw=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MW3PR11MB4716.namprd11.prod.outlook.com (2603:10b6:303:53::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.21; Wed, 14 Apr
 2021 23:19:22 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::749d:6978:4763:e1f5]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::749d:6978:4763:e1f5%6]) with mapi id 15.20.4042.016; Wed, 14 Apr 2021
 23:19:22 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S58 02/13] ice: replace custom AIM
 algorithm with kernel's DIM library
Thread-Index: AQHXJnS785F3bC6ZRU264J45a2L0KKq0vCVw
Date: Wed, 14 Apr 2021 23:19:21 +0000
Message-ID: <CO1PR11MB5105560AE1E2179BD0765CE4FA4E9@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210331211708.55205-1-anthony.l.nguyen@intel.com>
 <20210331211708.55205-2-anthony.l.nguyen@intel.com>
In-Reply-To: <20210331211708.55205-2-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.214]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0db1ec66-5cf8-4fc8-eb62-08d8ff9bbc82
x-ms-traffictypediagnostic: MW3PR11MB4716:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MW3PR11MB471659DAC0BEEED84F4A7213FA4E9@MW3PR11MB4716.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SbJ3GylaJrUEpkUoYUMu/+4E6DRdiWT3rOiG9qDwvAFBjn+YN6m6bSNC2gvNpTHwKK7o5QaA3nzQhm2Yk4aDTdjWY4h9hqw0f3yThZg83zwBFZJfBTlRZLabn0xonuaD+fhCyfMi75aDksfWsdPBNvY7j+E6EVkVUh5Z6Is1DawkgKWGnyjqsjU6B+28r1brsE3JjdK7PO31nlNgvNc1tUIJoibIDjv6Th35J4Hb4V7e5ePC4HT4GY+Q9ha08fzIbnf774fxQvVj6OIQ3uywKFir+uFKjgY6JWnvz4C0ReRkbqtRjSEixDaa3iuBWgxMn26Aqlzqjhm58fNnfGDmdMpAWRB8ZeIG3Xykm6HpOAq671RdZADTzy+8T6GsLGXCIrkV6syOB2OIz5kMXGY9IozprgpdmSWeyendlVGlMYsxNK7+uUHXlBua5qzcNJZYH6+YWi7rHtsL57vwynn4PDnO+Rx4U7ISDHCKUNB5/9UhQcE+9J80c4SPco51MMt41oo5kRvC/e8OoX5VnexhEZBCjqQUe5t8MIYNWfwEkWRBrzwGETM8/44Gjumi8rSpFY5MfdWerPv8NfoGmrMjkfNy9Gkc1mxkLFFFDHr6YLQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(366004)(376002)(39860400002)(346002)(396003)(83380400001)(186003)(8936002)(52536014)(86362001)(66446008)(38100700002)(55016002)(9686003)(8676002)(7696005)(478600001)(66556008)(53546011)(6506007)(33656002)(122000001)(71200400001)(316002)(66476007)(64756008)(110136005)(2906002)(26005)(66946007)(76116006)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?CxpGUwa0HpkbhJba/lmXs6LrbmTezYwA78HuMIj9ujCCrzXQw6aYtMUPifcP?=
 =?us-ascii?Q?4nBtZ08fv+bJXGlWowulZ4ulL2U2niIkeaxnAfeyZLFesFAGLUqBxuY30zXV?=
 =?us-ascii?Q?SYic//Ub7B+FeM2+yy09cfnEHOpL7X3vGQg25/XJVhtTQf9lGhcJTPIWFtfI?=
 =?us-ascii?Q?lwbOVZFs2uvnSMflW3k8HyFDlZ6GEkYJI4lySjb1knu+9uj4axSVSwTe5lwW?=
 =?us-ascii?Q?N8ljN7HPWfWEBGiA7oicZaXA3muK4sLXXt4+2+kbhvmSYlXhVICprOGzpoD0?=
 =?us-ascii?Q?/3rpVJwDlaklCVPmyD9qeI2k+5nKSfsBOHZi1P3DsMgwNARIhDNatrMAET17?=
 =?us-ascii?Q?581TyuGeVy0tHFu8PmAIRhMFInfp81fhLyLU1etmFmmm8Q/szsKghRxyQrzy?=
 =?us-ascii?Q?/7olDrlhwNYE9APDq8W5QJCbLwLbCKQadA3w2RtZ7RGYqAvU5zYBYijxHesp?=
 =?us-ascii?Q?Mpd/uprH8P9AFbkrKM5t/eoovmXRFAd+7RQw6P67vlzSl5dST9UBiuipi+wL?=
 =?us-ascii?Q?XqLhOdyszo6tr2Dhk0aSvnS2VclXhztaaTyguDZDLMMMsOQ55AA18Vu0nZDr?=
 =?us-ascii?Q?HDXvZuYXW5ETRTuqCXMqJ+5tcsaCvbJuFSzetAeW8HfKSo9ZD7RqwRgyGAJb?=
 =?us-ascii?Q?OqE8YyiE8/g+96vRGVskrVJRkP1XH7vQm+ZWS6e/3IB/x54gMJI3PfkMS3xP?=
 =?us-ascii?Q?7SeYqHxp6fiS/ZBZ9I3jYkZZwRxZBX/2HGuBhNkMVHy6b/RTG7Na81Y0iXcT?=
 =?us-ascii?Q?gGunShGpvQQQSjwSCp2h+gGzIgghocn6cKP0kKyCDo3VU6QQXrRCh6qPB3O1?=
 =?us-ascii?Q?TFq63AwNDH85swdyJCsEqoq79AilhkKhKL3K9wg+lR6cBlZgHLNsO0PfOAOY?=
 =?us-ascii?Q?itbA4HCPIIYmM/hjX7uJRNo3yf4FP1c+2rXDBF+X+YTnQRSn8DrVQOeUPRSU?=
 =?us-ascii?Q?Q6ZcxIAGe970q+/s6MypR/sIl4AMv7CJXfFTaj2QKK4YoFCDJdb2gTwqK9T0?=
 =?us-ascii?Q?gzzLnewsXHT/KVQK/Q2rO6eauW5MWZNd8xW5CHSClpXGJJZochxD86ssiPS+?=
 =?us-ascii?Q?yYU6+Apor8jgV3fZc5On+N4wFkcSX5RkIZcnxZcMsV1S1trn4OkjJwIhrfyI?=
 =?us-ascii?Q?UMM121wD9AwiAecWy5WGCIMWy3YT3PtOx3JB4s/NWFKkqT7CKFYN5Rxg/WS6?=
 =?us-ascii?Q?XW604EvbcUQEapdwcPnS18g4b7czyp6U8Tn2JadVPa8z1xJt9Ph6RjuCyZoa?=
 =?us-ascii?Q?I8mWeyMhl5Nnpg5hjbIhlYoWLg06BGXEXpRC+S8lsw00mBHFVSaxt+5/W28e?=
 =?us-ascii?Q?4u58HnecCAgVGYoCd6jZECcF?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0db1ec66-5cf8-4fc8-eb62-08d8ff9bbc82
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2021 23:19:21.9371 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AUEk76a6rJl+XQMagxVAvgkupdQA/sl+3h2XAc1ezwgcfD7AViGHoCu59HEaaOYPJPHjLgxUt3/og9eGcvcidMsOHTJsXnsTLYs+Zs427zo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4716
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S58 02/13] ice: replace custom AIM
 algorithm with kernel's DIM library
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
> Sent: Wednesday, March 31, 2021 2:17 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S58 02/13] ice: replace custom AIM
> algorithm with kernel's DIM library
> 
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> The ice driver has support for adaptive interrupt moderation, an algorithm
> for tuning the interrupt rate dynamically. This algorithm is based on various
> assumptions about ring size, socket buffer size, link speed, SKB overhead,
> ethernet frame overhead and more.
> 
> The Linux kernel has support for a dynamic interrupt moderation algorithm
> known as "dimlib". Replace the custom driver-specific implementation of
> dynamic interrupt moderation with the kernel's algorithm.
> 
> The Intel hardware has a different hardware implementation than the
> originators of the dimlib code had to work with, which requires the driver to
> use a slightly different set of inputs for the actual moderation values, while
> getting all the advice from dimlib of better/worse, shift left or right.
> 
> The change made for this implementation is to use a pair of values for each
> of the 5 "slots" that the dimlib moderation expects, and the driver will
> program those pairs when dimlib recommends a slot to use. The currently
> implementation uses two tables, one for receive and one for transmit, and
> the pairs of values in each slot set the maximum delay of an interrupt and a
> maximum number of interrupts per second (both expressed in
> microseconds).
> 
> There are two separate kinds of bugs fixed by using DIMLIB, one is UDP
> single stream send was too slow, and the other is that 8K ping-pong was
> going to the most aggressive moderation and has much too high latency.
> 
> The overall result of using DIMLIB is that we meet or exceed our
> performance expectations set based on the old algorithm.
> 
> Co-developed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/Kconfig           |   1 +
>  drivers/net/ethernet/intel/ice/ice.h         |   5 +-
>  drivers/net/ethernet/intel/ice/ice_ethtool.c |   6 +
>  drivers/net/ethernet/intel/ice/ice_lib.c     |  13 +-
>  drivers/net/ethernet/intel/ice/ice_main.c    | 108 +++++++
>  drivers/net/ethernet/intel/ice/ice_txrx.c    | 303 +++----------------
>  drivers/net/ethernet/intel/ice/ice_txrx.h    |   6 +-
>  7 files changed, 175 insertions(+), 267 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> (A Contingent Worker at Intel)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
