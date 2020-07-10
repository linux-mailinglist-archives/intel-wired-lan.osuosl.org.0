Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 420F021BD91
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2020 21:23:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5030689ACB;
	Fri, 10 Jul 2020 19:23:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kN9ou7ICl7QV; Fri, 10 Jul 2020 19:23:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5E37C89608;
	Fri, 10 Jul 2020 19:23:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CCBC71BF2C9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 19:23:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C81588884D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 19:23:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qYAgpiZvFQ2L for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jul 2020 19:23:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 141E58884C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 19:23:40 +0000 (UTC)
IronPort-SDR: XQvIyDOf3OJ8R87y/bVL2opF3322/+obsUrx1KXJCQ4+wUePYc3V+SLW36PcNmhzgxfIa+Exnn
 YjdWynychO5Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9678"; a="135749753"
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="135749753"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 12:23:39 -0700
IronPort-SDR: m6pZ7YgDlF4vlaqzyzpYsvCIeO2G2iY/bBjKJvvhkRy/ZGyU8HcZWPybj7oXx9bvPh/4RkgYp1
 hUM7dH5jXn7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="324762827"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by orsmga007.jf.intel.com with ESMTP; 10 Jul 2020 12:23:39 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 10 Jul 2020 12:23:39 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX153.amr.corp.intel.com (10.22.226.247) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 10 Jul 2020 12:23:38 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (104.47.44.55) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Fri, 10 Jul 2020 12:23:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YxQ6PecQle3m14LM5c3SzK2Pa5Cjgymqoa2BN/NcIZQpyNlgNgcP+YXJpFNxfVzxi2yGrpxAhALiVhYtpyWnv72oN0luNNLl9GdY6/LKwbFcgaeggxQ/ksL2HnPdpZnKAUU0AILQ6MJCuQmizt4Lwm+X810G4lmQiQqSi6Z6qZFKtQAnAlkqOM8bvoAQfXBURwS2pZLelyPOaQVP3fsydtgEewb7iV+fyGIL/3VbgGq1/5y6myJYk8tq3clZsLzngUyAaoP+RQDdOCDcd5XMP/yl0K3iz2d0lAymYo25zBu7LKG9kJ1i3bgTd/YAqSast8F37+4lrVOV37xvcw14oA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C4Y7g3ad6TPv2Oo7kFelv3yT9DFZkfd1Sd6d5QTJkf8=;
 b=dP6PAx/QFp9x0bKfIwpo+9cwq5A1FqZRvvWdgrVjjcL2rdtceK/Zq74d/Um3eDOq9QDZkJPmJMXuGbfzIMsACERnw+k1+vc4vjMinwCzxdaZGlegYzeGpObyeUJrtp+F7mzbU1pO3O53RnG6SJYp4XEUJ4P9I/sjdddr3tncLQPQQETuQ8ad9F23g+4r8SHrkX/VHAN+Mq36cgMdhe5JxUUxyULObE1V1+T7AepU1sFMNAxv6DHWnfdFy1HJakOMOw6AcWhqSarmikdU6R6ued1mQqbDA/4XgYKLPZv2HsTU3Ra7OTYbnj197ozRGgxHU65Yu1Mh7dcI+3J8NCPnwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C4Y7g3ad6TPv2Oo7kFelv3yT9DFZkfd1Sd6d5QTJkf8=;
 b=lrHMEo+gU/fOecmCPj3uNAVV0qNBbCCbeOA9ZW6dEe6JVg7G+bXfzNOFIxQo44IDJOleAEH6hGCsRWslXoYj8L2GHJ56BFPCheooa3+qh4qLinfCzZdNyyCPBe0hGK0EWYK0kyQK1NKljD0Br4EQy1P5wmdWsMy31EzL0XXwCDo=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB0052.namprd11.prod.outlook.com
 (2603:10b6:405:69::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.23; Fri, 10 Jul
 2020 19:23:35 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3174.022; Fri, 10 Jul 2020
 19:23:35 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next, v8 5/5] ice: add switch rule
 management for DCF
Thread-Index: AQHWVl580EvBsgZRHkyVfnYsv2oqqKkBMmDg
Date: Fri, 10 Jul 2020 19:23:34 +0000
Message-ID: <BN6PR1101MB21454F838C86644C9714E29D8C650@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200619045711.16055-1-haiyue.wang@intel.com>
 <20200710015421.92122-1-haiyue.wang@intel.com>
 <20200710015421.92122-6-haiyue.wang@intel.com>
In-Reply-To: <20200710015421.92122-6-haiyue.wang@intel.com>
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
x-ms-office365-filtering-correlation-id: 6b3281c9-2a60-4325-8d04-08d82506bd65
x-ms-traffictypediagnostic: BN6PR11MB0052:
x-microsoft-antispam-prvs: <BN6PR11MB0052645246D7884657C4178F8C650@BN6PR11MB0052.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IVTar5Ojrzm1ET9zg7z9MAIMdXC1JHhFY9+6VcJIrqVBHRLlNLJaao7xesn8JnugdDXxrBf7cCBNdCGIv+cQqOouhwQe+RNghiDtXLuL8JVFo6Znn8I/D9uUl6l31VtHO92ShRRHqnBj2kNYd8mUlvJdee4yN2+98aBgjd4FdX+AWkhBrNg8YpwkZDwJwzV3OSsTOso/oDSuFMedSqbqYG2qzxDz1pSjaICyAs4dtwJbbtLMRRTMuip27zuMaKQicxRUkbGe8ZAb5qVwqEU+9htemW2icx1NS9GsDY8Rd2N4I5HmGvLxwfl4x4C2f+eo
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(376002)(396003)(346002)(39860400002)(366004)(6916009)(52536014)(5660300002)(71200400001)(83380400001)(26005)(7696005)(9686003)(55016002)(53546011)(6506007)(64756008)(478600001)(186003)(8936002)(8676002)(316002)(66946007)(86362001)(76116006)(66476007)(2906002)(66556008)(33656002)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: Mmg5ZvNXgtznnIUfrNG8U3Hphk5Hult1YcJysKsINWOsIF7D9Czc/UHn5uCZOkFNwXEGr9hCH+hgmiPlJZ77bFLQy5EAb4zy2TeOw5o6VJy7hZ9la58pBs2NheJbLAldU0FeFIzE3iYb0VQ17L9TZN7xStW2NQHst4TFqVA7qqe/WYLgdNCPOXilZjFuaTo1U8ksRJEPo/TJhEcblAg/03vg++sssNtZdtGiJeLI4yS5xRgx9LRFHOl0so1ejop+FHWSuyxHcUt2b2cmZzSYLBjTMHlJWjR/ewK3Vbkf+EA6RqGrs7/Q/ncLg1spoI5efpOsKlatcx3NVqtX8CONBi+iozCLkfb+U4ygUjAqncjw92ecI8N+LVvyAp81Eu4xSOaUGXs1bamx9TR0FZKg9wGHAJF1u7fLN+NUMEN+U5FUYbcma3WHvTekNupeW5Ed2scXrX56exJzmdytUHM+P6G2HLRmr+m22NzOBMFJHpY=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b3281c9-2a60-4325-8d04-08d82506bd65
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2020 19:23:34.7846 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: d7z8jmA+PJas+F8BcdBZvOgIv3XnsrphpjAsIxvkH1dEtlpKiFa5MQ122hww0pojrKXBDIj+U+LkQes4d+mWHnFby7Jo1EPaUU8bKvUtqbo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB0052
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next,
 v8 5/5] ice: add switch rule management for DCF
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
> Haiyue Wang
> Sent: Thursday, July 9, 2020 6:54 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zhang, Xiao <xiao.zhang@intel.com>; Xing, Beilei <beilei.xing@intel.com>
> Subject: [Intel-wired-lan] [net-next, v8 5/5] ice: add switch rule management
> for DCF
> 
> The PF shall track all the outstanding switch filters (filter IDs to be
> precise) added by the DCF.
> 
> Upon a VF reset event, the PF shall clear all outstanding switch filters for the
> given VF. Upon completion of either VF or PF reset, the PF shall skip replay of
> filters that were added by the DCF. The PF shall however continue to replay
> the filters that were not added by DCF for the VF(s).
> 
> If the trust mode of the DCF is taken away without the DCF gracefully
> relinquishing the DCF functionality (by way appropriate virtchnl message
> exchanges), then the PF shall remove all switch filters that were added by
> the DCF. The PF shall transition back from DCF mode to regular mode, the VF
> shall be treated as any other untrusted VF, and the PF will reset the VF.
> 
> If a designated DCF requests AVF functionality from the same VF (VF-ID)
> without the DCF gracefully relinquishing the DCF functionality first (by way
> appropriate virtchnl message exchanges), the PF shall remove all the switch
> filters that were added by the DCF.
> 
> Signed-off-by: Xiao Zhang <xiao.zhang@intel.com>
> Signed-off-by: Beilei Xing <beilei.xing@intel.com>
> Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dcf.c      | 707 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_dcf.h      |  41 +
>  drivers/net/ethernet/intel/ice/ice_switch.c   |  16 +-
>  drivers/net/ethernet/intel/ice/ice_switch.h   |  27 +-
>  drivers/net/ethernet/intel/ice/ice_type.h     |   9 +
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |  40 +
>  6 files changed, 815 insertions(+), 25 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
