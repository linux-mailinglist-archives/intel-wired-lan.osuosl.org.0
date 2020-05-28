Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C78F1E6DD3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2020 23:40:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 29E748729E;
	Thu, 28 May 2020 21:39:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KjepVEPlkW23; Thu, 28 May 2020 21:39:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 850628722F;
	Thu, 28 May 2020 21:39:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8C45A1BF39A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 21:39:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8810387072
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 21:39:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wBsOvvLW6pwC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 May 2020 21:39:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E3DB48702C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 21:39:55 +0000 (UTC)
IronPort-SDR: BOZZWZH0FW6irPYpcvk/e69vjNv9HjQUJHdNy2K/vAH8zRxyyInP6TAGHwjghA2HLQjgoN5nJj
 LxjvZb/g0B7Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 14:39:55 -0700
IronPort-SDR: 2uM3mD1eXkkcjunkVyRbvBQe+SnuIfJJN45uEo1VqLd2ewd3ZMySg8kdLnUE4OdlgaiNeDHM1C
 9Xin//aCY+nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,446,1583222400"; d="scan'208";a="285303855"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga002.jf.intel.com with ESMTP; 28 May 2020 14:39:55 -0700
Received: from fmsmsx152.amr.corp.intel.com (10.18.125.5) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 28 May 2020 14:39:54 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 FMSMSX152.amr.corp.intel.com (10.18.125.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 28 May 2020 14:39:54 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.36.50) by
 edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Thu, 28 May 2020 14:39:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gv4mVwuipcb4hwXtjEziMfrGu9sdnnYOz+9OGqTTO6123r9IQGiuUZGG+r0joEwAQ/p491AA2zoGlRVOZiaJ2wSn0zeKNBI02hoCAHx/o+7prEkcbsiYX1LdWjJZCLKXGShKkth0Z7619zh2a0YIR2Fl1ehjREW9HJELpOlWYrRb/MZC+VmKha/O2yL6qOaISewca+eK2co81NSUriDZutiGsGeXfqSHJFHqkyV4oK6M/x2cKXBGxyKHkqW086xtEfZBimLzyxy7ovJY2is3BT2h7H9uejlIUgF1epa0pUzf/qR5EVO0QMozdvL5P6QECFfuwx3MkXv1wqMtp5D0Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aSTkZmhFCAdAMYv3I/xZ5EvlXuu7uDPhGc/rKUsnGAE=;
 b=MjebyAnm8JkHKSYCu2W2czz/Pm15HWZl2Nm738IP+CtvOkGyjq4PFWCKNCKhfE9AGU4/fDHyFRdNbZPGgpMC1nXJcVy4MMLsrb3QQIkwsM1Di+vCOqYBhEi2dEIcVRF6iLu4ipA+agmEX9yEM4Gk43qKuO26JbVHltmaTaC8glhuGYHS4asCH6xGS+wYF/NtIQQTrMi5nC2FXCTV7QcPvpYzQ/yCK3AY2vn4rXLcU452m5UzIR97s01BGjyc1IyrAOAYbJJbm0Y0+mD8sfJZRllCxNIZMhbZau2caRbS2gGCt6+pNdKIbcA2b9aLLMQiJ+UgPqFu75waxguo4pxbTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aSTkZmhFCAdAMYv3I/xZ5EvlXuu7uDPhGc/rKUsnGAE=;
 b=eyDXSzLIELxTz4+w/5mXDZmP9qTQP3W6ItEulbV3KTIvHHmXchTA1iWOIcrl7qI4tN5/ZDiljxvxai15Jgvamx+sDJrkksebNRsR9QkEyMpnS/GPWpTrLunvgqwAHBz/oZqwQVXeMsGx+9lnoDGn5D8aBVqY33oP7Za5DHBKUlE=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB2043.namprd11.prod.outlook.com (2603:10b6:3:e::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3045.19; Thu, 28 May 2020 21:39:53 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3045.018; Thu, 28 May 2020
 21:39:53 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S45 03/15] ice: Add helper function for
 clearing VPGEN_VFRTRIG
Thread-Index: AQHWKxySYnBJrSQJcEOVeGioRKsDnqi+Gq1Q
Date: Thu, 28 May 2020 21:39:53 +0000
Message-ID: <DM5PR11MB165916FEA23A67C54FBD481E8C8E0@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516005121.4963-1-anthony.l.nguyen@intel.com>
 <20200516005121.4963-3-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516005121.4963-3-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.52.219]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fcd3ada9-5a4b-49af-74cf-08d8034fa842
x-ms-traffictypediagnostic: DM5PR11MB2043:
x-microsoft-antispam-prvs: <DM5PR11MB20435E19D286222040E13E768C8E0@DM5PR11MB2043.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0417A3FFD2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4g9A1BkArFQmurWqSGpoogdx1AoRfCL0+Z9FyN0FsAoEnyf5y4XljF+QmTRGON+rbfwo01Kvn5Kspz/RgKshoFzQk4oYTCOYnRBbZDbEpWRp71eUq8GuMyolhL6eHCKhKcrq4XovIw74FK67Vso3ehmqPJTwIBJJKzsr0AeI81yxcW7DQUjbMcdZNgNxJd8Kkc43I0e+P74XJe+OpFE6b9Nfnknz8wwmBYiZeL0oM/kXkFYMVbHoI2n7LuDpL5tOSU348MUjCGV57sbYYGKW1seoh013YTXoUk8XDapjV0PyuSa+5gmIWCJp1TlftAo5
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(376002)(366004)(346002)(136003)(396003)(66946007)(66556008)(64756008)(66446008)(71200400001)(66476007)(2906002)(33656002)(316002)(86362001)(52536014)(6916009)(83380400001)(4744005)(55016002)(9686003)(76116006)(26005)(186003)(8936002)(7696005)(8676002)(6506007)(5660300002)(53546011)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: MxFqr3rjUp/tyWpWTwTC4/m2M+thbnDFryzqHwJSfGE0IqNt9LelObWokk+r0FGtBQxmOihVOnm2KpRYQVrkshOLqGtvahxamnU04WxH/0L1Lth7YTyKUqT8qR8ImzviELLjADq6PQAtp51ie6qxFbE3yiPtFY/jkQHCZYpj5rEjVBO9rovsJpKcYmG+smy1g8j3aMkhS1xruviJ6XUkZonG2abEtvpUBUUSmyy/8LQ9nPLfWcLw2zf5Q7A0Czm4R8TPpJ3WehN/vQd9uvHm1lU194NDuxRkTfp03PlBSvDdxeXeIqf5bWAnx3dWPYhLGzMFkWM4jMuMM9FdkmYRobOsubZv5vg6rrUZkwg98m7Rba0ESQ3a5bkoewMEqfyzP7aLicqbrSLn3ZEuo+tdjFcjYQ7IATazMVJ2phmVK7P2FpfdJ5iB12dhdn49aXON3SlZ+xsTlMcNNAKw6RsNhqpGnkVBtKhuaTRLUxyl+t0=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: fcd3ada9-5a4b-49af-74cf-08d8034fa842
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2020 21:39:53.1843 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kwUoG6xcQBxsaUIOh9N/GaQlDF/OqyEuVRRAf80BlfEIuqsM7vSfkjLxKqXaiN/ikySVfAFrXC62/70AtECZowcv6OZHrdtcWnRi1FXvgjg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB2043
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S45 03/15] ice: Add helper function
 for clearing VPGEN_VFRTRIG
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
> Sent: Friday, May 15, 2020 5:51 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S45 03/15] ice: Add helper function for
> clearing VPGEN_VFRTRIG
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Create a helper function for clearing VPGEN_VFRTRIG as this needs to be
> done on reset to notify the VF that we are done resetting it. Also, it needs to
> be done on SR-IOV initialization/creation in case it was left in a bad state after
> SR-IOV teardown.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 31 ++++++++++++-------
>  1 file changed, 20 insertions(+), 11 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
