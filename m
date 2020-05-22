Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA46D1DEFC9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 May 2020 21:14:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6328188B31;
	Fri, 22 May 2020 19:14:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BzpuXo5qKnjT; Fri, 22 May 2020 19:14:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D8EE9887DC;
	Fri, 22 May 2020 19:14:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 77E591BF2A5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 19:14:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7303B8798F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 19:14:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZYA31uXRMGdd for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 May 2020 19:14:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CD42A8797F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 19:14:41 +0000 (UTC)
IronPort-SDR: n/qLEYSnx1BVFbZVsNoYWzPbmlMJRvnvX/EKYtBrTswFa9IbKGpjiD7CIpvS9qzoa9sMrI9trr
 F4u9lfS5Xnkw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2020 12:14:41 -0700
IronPort-SDR: bpgARxp6rdVh00gnU+sHPyloZFrJQFXExq5TNw+uB4d1/TwZvM6vw45PNPhoN0tNnvoypd0e/I
 JaLBmaeViQ1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,422,1583222400"; d="scan'208";a="301193962"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
 by orsmga008.jf.intel.com with ESMTP; 22 May 2020 12:14:40 -0700
Received: from orsmsx156.amr.corp.intel.com (10.22.240.22) by
 ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 22 May 2020 12:14:40 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX156.amr.corp.intel.com (10.22.240.22) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 22 May 2020 12:14:40 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 22 May 2020 12:14:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mNo2pqC1F1QMsPuotSn11dPtD05eBQGezG/TCYdAL4fkIrUoVFzU3QL7uOnYHte3hVjMf4kQwm8rS/XXKNTftwffOkcrUzA6AQZtlK7/NVYdqAe+qqRBwFp4qpu+Itv7ygsFWdHi3C89SP4PFTofkRG8y9GO0w3Krr3fKC1/pGGPKN8yz6kOijzJ2nTgjwGG97rPLZp9SUrIxDyLsNWOTKsIXqBWWYdtXPwjfAmDZ0X8XE8W3Ld4vZBkiJxVjZoxQRmd+Y8CwN0oHCi7WO47mpX8SV0MJnlTgoYuDZ4wAyU/StRO3y39JpK2MoVlgN32C5hwHvE/lD9KvAA/TbiQyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JGWFt1FrBzW2W0cuFN9zupdPt+c8SnMvBkF7UB9Gcpg=;
 b=lEWYMLvwV5MAMnVnprOGmPGnpwORepKLwWzebLuhUP3+7bpymaue4wGwVlDBJAqgOTJ4IprUCcHi9ynxIsHxOp9etSbj9dR95M8mTou5gGApaqTIACzffES0zLnqcvgbvwFB9C/jXtTiOQ8bz64IBSNGsfwdAmbznpUnJPMxzjzqRueFQHatwy/bNcINI4j8NZnVMwBxpRSgIV92bNmeVWkz43OnSJbzkSqObr5AfCuN3MPVSpWAUxSrOe7J0LNXQSifFtor8v/O353pGVauEJvcEdVH+ad+zU0/+djAC/aYUeRvIV1CelY4g2ek5UgedhqwT9wxLwJpmQphDZWwHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JGWFt1FrBzW2W0cuFN9zupdPt+c8SnMvBkF7UB9Gcpg=;
 b=ozm4qMof2yJpu3byFNb1VIbY5BAFhEApMGQxvH9spSGB3Y3PXb2qpapYHLgHTiCDJUJarwZ57RYIipY2cRsS4lZwpfCwzBxVDwsDEm14HJb+RLg+mHLAjGmv9JXVLL+ik9j4s9HPmdgUCcpp3bZxtAfmOOpStkZKnJybpNjQd3M=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1851.namprd11.prod.outlook.com (2603:10b6:3:114::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.23; Fri, 22 May 2020 19:14:39 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3021.027; Fri, 22 May 2020
 19:14:38 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S43 01/15] ice: Call ice_aq_set_mac_cfg
Thread-Index: AQHWKxqIb+869vT7k0G1X+ofnkTW3Ki0hC1g
Date: Fri, 22 May 2020 19:14:38 +0000
Message-ID: <DM5PR11MB1659DBE1702110307E68D26C8CB40@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516003644.4658-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516003644.4658-1-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.52.201]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 27447fe3-49c5-49a5-ed3f-08d7fe845f96
x-ms-traffictypediagnostic: DM5PR11MB1851:
x-microsoft-antispam-prvs: <DM5PR11MB1851B12C9F48489EBDA222CA8CB40@DM5PR11MB1851.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1002;
x-forefront-prvs: 04111BAC64
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yW5ABDEFlEbUJEowGzg8+Mv1LsV3HiDyjEKtVZVDHADSb3GjKfW5Lqbjcpybfk0l8NT2ciH/7RVDQfa13NPnNEXmL8CsIAG63+Sk9zwje8UEKfxZIfjZFxLW/pMogKqC6Nz3uQ5AzmV0Z/yz4RVxcDC9EJKU1eWPld5GBgprPX4W4QsRDCz0pxS7Vs++TQU+FJBquP/dXCJbx+scMwpLWAxAoRNkM75L9mu6qYoM0iVD1ta8DabZyv1w8EZjE94MTvn5ZTkCdCcB0eo93Ztz4dyVwBuCWgyaUWbaSh+bb1dq1AsabqEgJxbaMbxOQSs3sWe5nvEeUmkqqOtnmiR8DA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(376002)(366004)(39860400002)(396003)(136003)(71200400001)(33656002)(9686003)(8676002)(186003)(478600001)(55016002)(5660300002)(4744005)(66446008)(7696005)(64756008)(8936002)(6916009)(86362001)(2906002)(66946007)(52536014)(6506007)(26005)(53546011)(76116006)(316002)(66476007)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 6E44Yh9fXqHuQxeBPJef8t98ilWzV1kNK4utClqkVVnFwGreMNaQpR0b0QPUiRluX/cKVZD7gpYkp4VWE1w0LjZsN7MvWt31kCg6nnM+KsgdUrQ16sp9Nj+gR6o8RkFYcdCQsCv891080/Loq3/2SyUNZwJC7bY5yunP7dDhv/c9jEFgptEyMJIhC0wy19UIOTymw/h5tCPEZgjFVDLwvPRsBlWcBHuMOyFwfWjv5aqIPkq02oOfB76NACSPMeU3LcNNawkg6rrh1KUYWow4FaH5xlPUAOZAGwz1lOkINKa2JnzL2GFJyIIBPw9ELZOB2Zoy4oytrlAnYhJTHkqtapxyaTgFovWjHrNtU6V7b3PlaKCbugdv75qXkj54H9WVXtV3zsvdzuSRTZDOx/WWkZT9TY7QW5rln+NGLsbHPdcanoKn2G+AnF1urE87qzfxGeAYkRqcUV5POGzZLkVJlu1oMPcBfBiD1UnGGaNhIno=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 27447fe3-49c5-49a5-ed3f-08d7fe845f96
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2020 19:14:38.7520 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: K8J/QxGdkclkoAtup41M5bPsxD3tF6PG7YCGmJ+enzPVzf4Om+JPNlT9Lcy3Um0HXW7w6pKPp1xgCD8fmz4OsMF3IipHHAdzNj5G7+iarPg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1851
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S43 01/15] ice: Call ice_aq_set_mac_cfg
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
> Sent: Friday, May 15, 2020 5:37 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S43 01/15] ice: Call ice_aq_set_mac_cfg
> 
> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> 
> As per the specification, the driver needs to call set_mac_cfg (opcode
> 0x0603) to be able to exercise jumbo frames. Call the function during
> initialization and the post reset rebuild flow.
> 
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 21 ++++++
>  drivers/net/ethernet/intel/ice/ice_common.c   | 69
> +++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_common.h   |  2 +
>  .../net/ethernet/intel/ice/ice_hw_autogen.h   |  5 ++
>  drivers/net/ethernet/intel/ice/ice_main.c     |  6 ++
>  5 files changed, 103 insertions(+)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
