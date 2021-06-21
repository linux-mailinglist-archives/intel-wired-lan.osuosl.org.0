Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 984C03AF82F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Jun 2021 00:00:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EFF744024F;
	Mon, 21 Jun 2021 22:00:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3avLddATpx9c; Mon, 21 Jun 2021 22:00:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C518C40158;
	Mon, 21 Jun 2021 22:00:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6322E1BF379
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 22:00:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5D0A7403E6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 22:00:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e88zt4lVyGRt for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Jun 2021 22:00:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 87A22403DF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 22:00:20 +0000 (UTC)
IronPort-SDR: KmweYBymlUr4VQEjPC+P3SqAeuFgQeD8yEZxUYC+QTm/0RaYrGbaRj3uJmU5I/ot5LYD4Pb1HY
 LUXor8dK/mGg==
X-IronPort-AV: E=McAfee;i="6200,9189,10022"; a="194252087"
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="194252087"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 15:00:18 -0700
IronPort-SDR: JsciWEIHjs25iUwQJZkDR4PW1LLJwLO/ti9R41NFXnoD+XfI+P10z2naATlFbd7VUQDXmtSQOP
 kGU/KiXyzI2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="405761002"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga006.jf.intel.com with ESMTP; 21 Jun 2021 15:00:18 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 21 Jun 2021 15:00:17 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 21 Jun 2021 15:00:17 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Mon, 21 Jun 2021 15:00:17 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Mon, 21 Jun 2021 15:00:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i2xHRSAzAbxTWdjQQq1l7NePXnRXXfOxEf3diMYfgd0z3kJsejhyp+RvBPHVrDvF1KRO4vSCA3pU0Fwe1TLcpscx4Mxc3K5KgePnMpogL3JjxrsM/QHkXoDszWT/ltYvCsLt7CXTyPzHraWNzCGD+jEpJs6+LMHnnun6YwFq10QMuYLfdZpWxcTYsFvq1KJhhNNZUU+7E4IBaWUo/V5UkuERpPe32F55Aor1Sp8/s/TvPzNMjonIyGLP8SnydCMyyXZD9xC2JIoK88neeg/S8kERd+kJH9ZCRPtvEBCSngjHM7tuFcM0dZlXXrZ09ZFUbJw05f/1L2SJ9vj9d07A5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u+2tkmBMFxgS6MVTOaxFvniFAQbXXWlfpqBYeIBcD4w=;
 b=HzFBHANZePN4ot3N06i/2O+4kCmfS9/5HlimWqo0up392BhdRc71Ka5G0Pn/tX/Pa5ERGJTL1gBzIMU+5h52oQe8ENsILsWKfn9ZYZ8xrlUGnp0Yk5616QkVElHXd/QCDA+UNUK+gSlYLnaxRpowakbzBAdwFuoxiL7mmL6IraI+RSYYjNAe63ibLe03OTc9typFfR7G7Jpk/XzgRn+LuvKnd+7khrfpZkmX3bhF4NOM1qZ/oKH80dyTx22EJxQBPv9eZ3/KDErp7WduOnwmwf9+yTc3Nf0m36oghSBI//h32sx7FMImENlAinXEoMKbXowdftIkKLhhGcnH6K7yGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u+2tkmBMFxgS6MVTOaxFvniFAQbXXWlfpqBYeIBcD4w=;
 b=bWR63B1Shq8rb2Arej3cpa8OkO2mAGapaXOn8XhjIJSvQrsBSaUrMlD9EaS/ogS2FGNmrrnHWZDhWP6L6bVM+Lsfodm59kYlxJE2sH47haW4ZkRYrPs9LAbG8DOrPUx6Kz51+Ys949sUMmexfO6gPwxbrpFuqUyh9V0Av/kgxfg=
Received: from SJ0PR11MB5662.namprd11.prod.outlook.com (2603:10b6:a03:3af::7)
 by SJ0PR11MB5613.namprd11.prod.outlook.com (2603:10b6:a03:3ab::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.19; Mon, 21 Jun
 2021 22:00:13 +0000
Received: from SJ0PR11MB5662.namprd11.prod.outlook.com
 ([fe80::58ac:cdd:41f6:93c2]) by SJ0PR11MB5662.namprd11.prod.outlook.com
 ([fe80::58ac:cdd:41f6:93c2%6]) with mapi id 15.20.4242.023; Mon, 21 Jun 2021
 22:00:13 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3] ice: add tracepoints
Thread-Index: AQHXXL8dbMSTrjjhcEuh2c+o6EjYRKsfF/Qg
Date: Mon, 21 Jun 2021 22:00:13 +0000
Message-ID: <SJ0PR11MB5662C9F88529304D670509D6FA0A9@SJ0PR11MB5662.namprd11.prod.outlook.com>
References: <20210608233517.3135522-1-jesse.brandeburg@intel.com>
In-Reply-To: <20210608233517.3135522-1-jesse.brandeburg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [71.236.132.75]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0234b884-e8cb-4678-82aa-08d934fff25b
x-ms-traffictypediagnostic: SJ0PR11MB5613:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SJ0PR11MB56138CBA7F57894082488DF2FA0A9@SJ0PR11MB5613.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2449;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rQUJVXm9tqu2ashyqkUukHKcmgcb1Xu//Y+K7Vpk/6Fr9Q8YgIcg7T0NFX6OT3YxH3OiWm3geZkzTE2fyFh8g9+q/L7tT0D8Qxisjt6zb2jJ/C7iu3EwF/Lpfd2Pn3BAXQPkR847A4gyiDiQBP33HJF9P2hSwH2Up5qdhBzljnoMuehTckzmRU1W6TrJD7BmGAkXAPU0xikarZRh19F21f/KgyEN5PYn2e4ZaPkrJIjSFP5/Z8Sypx3ECGPC7QFjYFtnLuMWztIGcwPp09c/hhTp1lVmN/L2dh/gQZopYjKRrFB152jR3PGatI6gd9ne1jdSlt1xP/VjSInYIQZAD4tT1qbGSGkT+/KdtJF3UDxKFU5AP7Yt7LVq8Hs3QVm25vwSm0UdLVxRSfYBuo3nNr8OcexZAocuSwrbTxKU3hmFqj6hFtTQlOkzcj7I1jGt1PmZxHIn4MCQoCwCUIOiEcOwAuhTN6LnSn9OfQhGljDFk+gigNB4ONhxQbzusEQOBX3H8WjFMvilgyyPiUhHgdGBshvFffTIG2j4tljw+AzMBUFFdBEr97/5vBs2DfS5y6Pv3QP8g4O7D1xg2wkylM5Y4hqp2e+Id+yLIvviHZw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5662.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(346002)(396003)(136003)(366004)(39850400004)(110136005)(53546011)(66446008)(186003)(83380400001)(38100700002)(71200400001)(55016002)(76116006)(66946007)(8936002)(66476007)(64756008)(26005)(66556008)(6506007)(2906002)(4326008)(478600001)(8676002)(7696005)(52536014)(9686003)(86362001)(33656002)(316002)(5660300002)(122000001)(107886003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Vbry0TSmrKuFTMt5KtMH7JAdswJYIjR5bOTu2N2VBV5ffTxeEKNRjxQ+ZXl8?=
 =?us-ascii?Q?YfHd/4ccU185TTpgjsKeWcariOBvuVxTK+qRBpao1/QXHO4sDPvypvopyiE+?=
 =?us-ascii?Q?GNMt5O8pV4Lszmq2fAt3s0WJhDjG9XlPWC2Sgh3GRvAgeayd3EKKyKL/4Gnq?=
 =?us-ascii?Q?xdhmB8LandfiCGehgN4qXKWhm6Zfm2hO9gSeDoFnZsxbCVNRN/prtWoOWlgW?=
 =?us-ascii?Q?iCB/wwWXjn6NVq0FiVTdzHz8JUEIhfzLfJ8FrnMSD8rBk9zcPFiuG+qKyIEX?=
 =?us-ascii?Q?Gw4QSrU8lRgmdrBYz614O8iEw54tVCdryQ9c/UZXwxRzgH4paqSB04qLke3B?=
 =?us-ascii?Q?KwCE1lrtwJ5dbIxA/V3AwEeUITdYBCXWTWSSfxONSgF45fkS8Uda4SsB2v0p?=
 =?us-ascii?Q?23A+hUZ7UcGjBMK511kPv3UtWHRWqvdhdLhcSSiz8ely/rypFXC5hUZFeKyd?=
 =?us-ascii?Q?8QX9bBIdWhf0JM/heBOLySXNav+1vQ2GFzjorsQImOMzeP8sInkrk4x6LB+e?=
 =?us-ascii?Q?Rhj6hcsaYLz9ovsqHlHTIm0Lekimz6Te3O8kFpVQSA5CllZoxFdSYhSVZxoL?=
 =?us-ascii?Q?j4KTTEaoXy+LVD9o2poodyU667i8kZfj8UCcFGov5bqGtnkZRmgusodLi4m1?=
 =?us-ascii?Q?em8zygv8yXcU2K3BZuuHPLOlxQ6AojSJyVQeOtmSjbV0QJTrpGhcwuMHoojt?=
 =?us-ascii?Q?xGNOd1EizTgsEzOj9ZdiSu2RWf2agYzAGARx1ef2DwufJSS9VA+zbXi5bqB4?=
 =?us-ascii?Q?vAgeDh+spF1ndhoWKxa3ijoNYBjUL1WofLFhPmnPU8rLrAAOfbNHJLlVG/Va?=
 =?us-ascii?Q?SRsVH9m7MpclSMPL3UG35AiVeQcIt+ln5/vLp6jLp4yx2ToDpUeXKSvhoYnY?=
 =?us-ascii?Q?Hjov/AuEq84BORzYh4AI6J0jQKCMSfQfh7jSRoP0jNMmnEEZgiByIB6hWrq5?=
 =?us-ascii?Q?9MJMDoWLHsboj6urHn5XqWk+0WfT9jIrLqIsUoEw/jCq3Th8vg34TusZMEGj?=
 =?us-ascii?Q?HxppKQ7W8KmBgvCqnb2ZlV12t+vMApXwLyPlIkoto45O6Gg0jU4Lt83dfsTx?=
 =?us-ascii?Q?HjGfjQHmSpXg7jRrXAZjTl5e3328qEig0Cd16n8/+YOdXz1hf9MyJsKu70o5?=
 =?us-ascii?Q?2lVYIZQYMTygO92pRKfL767AGUW8Qi725X/p4RtWpMuGLBtTznmOdrTdxA18?=
 =?us-ascii?Q?TDsv5544RKB3QCZ446f3PKRiFCQHjoB6yQS8tQ+unE2xly8sftpySJQaPicA?=
 =?us-ascii?Q?ftih5X4cZg2tgRdcCUORjGL5WJ6KN39BfNPbB91Awzvpk6hhjye1e2TChXnI?=
 =?us-ascii?Q?6nKxmKqOMD+odRSDhxrtHBWV?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5662.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0234b884-e8cb-4678-82aa-08d934fff25b
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2021 22:00:13.5789 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0RiAsPYs3rZiFRfzjeeyW/siC0UlMpEWPUMo/EwEj3TDKo2KXdDlshkLBQaTqO7IU+JKF1XPxd/1tB+heju7//+PABFuDJ5Ka3tCc9y3GI8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5613
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v3] ice: add tracepoints
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
Cc: "Shelton, Benjamin H" <benjamin.h.shelton@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jesse Brandeburg
> Sent: Tuesday, June 8, 2021 4:35 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Shelton, Benjamin H <benjamin.h.shelton@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v3] ice: add tracepoints
> 
> This patch is modeled after one by Scott Peterson for i40e.
> 
> Add tracepoints to the driver, via a new file ice_trace.h and some new trace
> calls added in interesting places in the driver. Add some tracing for DIMLIB to
> help debug interrupt moderation problems.
> 
> Performance should not be affected, and this can be very useful for
> debugging and adding new trace events to paths in the future.
> 
> Note eBPF programs can attach to these events, as well as perf can count
> them since we're attaching to the events subsystem in the kernel.
> 
> Co-developed-by: Ben Shelton <benjamin.h.shelton@intel.com>
> Signed-off-by: Ben Shelton <benjamin.h.shelton@intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
> NOTE: checkpatch will complain about this patch due to the macros defining
> the new trace functionality being formatted for readability.
> 
> Testing Hints:
> See that performance is unaffected while tracepoints are present but
> disabled (default state). Enable them all and see they appear in
> /sys/kernel/debug/tracing/trace when exercised, and after 'make install'
> you can see the events in perf list.
> 
> When disabled, a tracepoint reduces to a 5-byte no-op. When enabled, that
> code is patched to jump to the tracepoint clause, which is located
> somewhere nearby.  See include/linux/jump_label.h for info in static keys,
> and samples/trace-events/trace-events-samples.[ch] for info on the trace
> events.
> 
> To test tracepoints:
> insmod ice and bring up a link
> cd /sys/kernel/debug/tracing
> echo > trace
> echo 1 > events/ice/enable
> send something over ice
> cat trace
> echo 0 > events/ice/enable
> 
> ---
> v3: fixed transposed rx/tx reference in receive code
> v2: updated commit message and copyright on new file
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c  |   8 +
>  drivers/net/ethernet/intel/ice/ice_trace.h | 232 +++++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_txrx.c  |   9 +
>  3 files changed, 249 insertions(+)
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_trace.h

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> (A Contingent Worker at Intel)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
