Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C488622D28C
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Jul 2020 01:58:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 78F7987829;
	Fri, 24 Jul 2020 23:58:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XTI9fzDcEbKr; Fri, 24 Jul 2020 23:58:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BD1378780F;
	Fri, 24 Jul 2020 23:58:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BF0121BF365
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:58:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BB88B88BBC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:58:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bCcqPZsML5ai for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Jul 2020 23:58:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 21A6F88BB1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:58:17 +0000 (UTC)
IronPort-SDR: av/tvM5HyW0usqAhecB588HiWMJ4r+HyJKknEOUDYr6nJex73Tij8+ViYJivTq/ub8DhgjyZWt
 ML0oeMTDukXw==
X-IronPort-AV: E=McAfee;i="6000,8403,9692"; a="138853256"
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="138853256"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2020 16:58:16 -0700
IronPort-SDR: gUfI/LKPLpSCjEHxwpOxk9L0z4j5wfcyoHgY0KiHGzZ49TLL+XY77EpvYz6Dv2jc6dhE7+IH+A
 aOK/4oQGaBcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="463396675"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga005.jf.intel.com with ESMTP; 24 Jul 2020 16:58:16 -0700
Received: from fmsmsx122.amr.corp.intel.com (10.18.125.37) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 24 Jul 2020 16:58:16 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx122.amr.corp.intel.com (10.18.125.37) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 24 Jul 2020 16:58:16 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (104.47.45.53) by
 edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Fri, 24 Jul 2020 16:58:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HpandkFD+s6VIdmrlh8alUcz+OiBpuit+sNPqsqJnowjojBm757UpFfW474CrWyaL7V5G1KWZ0wntgA+BPUxPGbZ/4EuVSRTftnVDsw54r3ZjomzmOyGfftxsxMHV6Nef/UUEDvvDdnr80F8H5x7fuP8wW8cscdRdWUem6mnH/KFnEkG4Z3nbH+a4ljglBfsW3xgxlFLS4MJynMEmIuUbHQ89GJ81vXz0gRsd/RFni1bHjInDo6VE5lUwW+XiFybAbpxlWfaYQYby31Ykd5220Nhp8W4esDDudaeT0atmpGyxoPUWVNkqByJ0orHdUnfQ/BSZK7/v1O1KaUng+nizA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5nS8/xpLabRy7pUqs9npR5f7F/csFC9zAWhgb+u/JIA=;
 b=VgAHobh36wPdq7jCt5wMMAF4zYLLWE+s4pJhIeWv/aBeERgULaTd3k8oc0C/VMJeCY7zQq6j85EwxRh/9YM4JfXRpmxjaCfGE4AAaUqQcwhitRJ3fvXYyAKHzJObJ34JvRQMB+wBicIhPzHqc3TNPhSQUWz3mAjwRjxbuAoKXd8rbP03G25lfV9jBi4EGJJ0k58DlVw1/mmjpPp1yzRZidGuoozTyNEnbMbm5CpmrnqgZoc8BMrBie+e5X4LpgdshEQ1fGfTgeC72wacgBwNxvyhqIgBKltYnL1ipfvz7vU5IceIjUuapmUjYqIVbLnlnfeGjGe6EBsQmoH9ecjdDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5nS8/xpLabRy7pUqs9npR5f7F/csFC9zAWhgb+u/JIA=;
 b=r2DebtTOctmkrrWKn68eOqsE6+2c8alhUi9tm1X4uZH62zt10CUpaaxoUCr1WopsKCd0VAYVnIUscao83gkUQX5vhitcLQXtPTX4MtK7ZnxD98LRULT0ncVb5kIxhXhIMW3SvdHj3AXLCiPohxptox4tdCeRd4DY4KfVYLlo8/0=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN8PR11MB3842.namprd11.prod.outlook.com
 (2603:10b6:408:82::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.24; Fri, 24 Jul
 2020 23:58:13 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3216.026; Fri, 24 Jul 2020
 23:58:13 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S48 v6 16/16] ice: Check FDIR program
 status for AVF
Thread-Index: AQHWW3YioCpffxefsUy8G0uV6JGQH6kXdZUQ
Date: Fri, 24 Jul 2020 23:58:13 +0000
Message-ID: <BN6PR1101MB21450854C26D89CC7D4259C58C770@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200716133938.46921-1-qi.z.zhang@intel.com>
 <20200716133938.46921-17-qi.z.zhang@intel.com>
In-Reply-To: <20200716133938.46921-17-qi.z.zhang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [71.59.183.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 60169b59-c20c-43c7-5223-08d8302d6d30
x-ms-traffictypediagnostic: BN8PR11MB3842:
x-microsoft-antispam-prvs: <BN8PR11MB3842DA620F807E2E1D187D428C770@BN8PR11MB3842.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: x4zfji3oAc2dFluYIXghbY/D32LDba9KcNIL6PBqn/BO75tqurAAr6Pb059LFbwKcDOC4FxrwFUmEQEwtvju5O563Goch8YLqLx8pU8hY6kDbKVZKWes/nDjiAunEDeyS2aqehmRykruDVsSLRuFn4vGEbIOHn468Fpri+YUtDYUNOJULPhIVZlDgk/mYITL0fd0ekwAP9x6pCWI7ZyHojSwaMcD7XuR/pAjDPL3u66BiQvBgoJ7vfbWbE5hMMqw3lrIblmEmOa0nELYQyC81QtWbJO8p1HSYRtpgZLn9SI2RI94gdu8nf94c+G93+7Jyg773Gywms/fwPAsm2bZag==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(366004)(136003)(39860400002)(346002)(376002)(9686003)(6916009)(2906002)(55016002)(26005)(186003)(86362001)(33656002)(478600001)(64756008)(66556008)(66446008)(76116006)(66476007)(66946007)(5660300002)(52536014)(83380400001)(8676002)(53546011)(316002)(7696005)(71200400001)(6506007)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 3svKJPDxLpJyVax3cByBqhiI0YF5zsLmvrhpvfhYQUYyym6WFC1CUtmV8F9qcI3BrxVUeYfqON0M8ezIfZ5sUPGDJateDQN6O9xfWi2t9IGmiKpy9ScIPy63Ph+zZOnEx1xF7OLbF2n7b2mZIpNXMa59o4XfFLe2zNn2qNsIKZOMdSLkUO8dzYW7H+vz1MdchORCzIsmCjVWOuxHQH4poPKwmaWjS1GDE7sKSTjA+OXNWzHyU9I0z4uAmlfBkkrvSjjtRsP0JZlAIyyRQJ2f6BvvwwlxjhMeCWVsENrcsy+elNj0a3T7gBeYPF4B6mnNuIHy1GJSEU+Dw3ChOBw3kdFd/sMDTwy04wVj89JVwk0Rw2Gc7lkC/BZmldqZ4/ew9fQp7f0vCGomRZg1aFSM19y5kSWMg7im/O9DBP4Rn8M/RLNjLZ4BwdRpE1pBCsebT+3yweGa1cZkwvaUdgLsFIJqead+HipHODoeZ7vrvfujWruLkmTGFNMF+41Gescx
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 60169b59-c20c-43c7-5223-08d8302d6d30
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2020 23:58:13.6150 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aNLXAOi34KfG6XW8btdfSa5H2J4W2cSmhZ13XuBnusIwe6H5vIk5wvg3NTw45wizZsYKjaY38YS77IL9jAoDBxD6NdGz2h5aOhO8bkyshd4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3842
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S48 v6 16/16] ice: Check FDIR program
 status for AVF
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Qi
> Zhang
> Sent: Thursday, July 16, 2020 6:40 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>
> Subject: [Intel-wired-lan] [PATCH S48 v6 16/16] ice: Check FDIR program
> status for AVF
> 
> Enables returning FDIR completion status by checking the ctrl_vsi Rx queue
> descriptor value.
> 
> To enable returning FDIR completion status from ctrl_vsi Rx queue,
> COMP_Queue and COMP_Report of FDIR filter programming descriptor
> needs to be properly configured. After program request sent to ctrl_vsi Tx
> queue, ctrl_vsi Rx queue interrupt will be triggered and completion status
> will be returned.
> 
> Driver will first issue request in ice_vc_fdir_add_fltr(), then pass FDIR context
> to the background task in interrupt service routine
> ice_vc_fdir_irq_handler() and finally deal with them in ice_flush_fdir_ctx().
> ice_flush_fdir_ctx() will check the descriptor's value, fdir context, and then
> send back virtual channel message to VF by calling
> ice_vc_add_fdir_fltr_post(). An additional timer will be setup in case of
> hardware interrupt timeout.
> 
> Signed-off-by: Yahui Cao <yahui.cao@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h               |   1 +
>  drivers/net/ethernet/intel/ice/ice_hw_autogen.h    |   3 +
>  drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h     |  20 +
>  drivers/net/ethernet/intel/ice/ice_main.c          |   2 +
>  drivers/net/ethernet/intel/ice/ice_txrx.c          |   5 +
>  drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c | 494
> ++++++++++++++++++++-
> drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.h |  27 +-
>  7 files changed, 536 insertions(+), 16 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
