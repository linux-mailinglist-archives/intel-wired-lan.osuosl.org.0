Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19BD521AD65
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2020 05:17:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C251F897F7;
	Fri, 10 Jul 2020 03:17:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F-kt9tGN9CLt; Fri, 10 Jul 2020 03:17:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 52EF7898A5;
	Fri, 10 Jul 2020 03:17:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 44CB81BF97A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 03:17:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 97442203EB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 03:17:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uNX2iZNN2391 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jul 2020 03:17:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by silver.osuosl.org (Postfix) with ESMTPS id 2D02520355
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 03:17:13 +0000 (UTC)
IronPort-SDR: +AsDTOwwlN/RQMMb6yZVTa4aUbsUmXtesOhGpCny/P1mKnIIk3dXpqtr7xFzjvTH8iJXfqNKCi
 UgAuIwwQzcIA==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="145636706"
X-IronPort-AV: E=Sophos;i="5.75,334,1589266800"; d="scan'208";a="145636706"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 20:17:12 -0700
IronPort-SDR: 5dQAwhtPEw56wGE3jXSRA9WkybKMx/Oy3G+XmiLLzkC7jhqm5HVkr5yQfAU2+I1uiYOYbp5bG1
 na9P2YVJpuFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,334,1589266800"; d="scan'208";a="284370606"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
 by orsmga006.jf.intel.com with ESMTP; 09 Jul 2020 20:17:12 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 9 Jul 2020 20:17:12 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 9 Jul 2020 20:17:11 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 9 Jul 2020 20:17:11 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 9 Jul 2020 20:17:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DKY4P9qLYV98GbvEVQtfGs9sxBal8ISdUDsuGseYMNAmGDqn2E/SY+AXuidpPb2obh/SRN03jowa6kchvqbCfunBYsB32m+MVD33aJSxHCgD2/aZ5bzPSNFxIbL6Aba8EUr/r/w0Zz55B98cXs27FVcog6GknPj55nUFw1dK9zcG2gC4m80bFcYIzfh/Sjc7CB3RTlXcWMuMibbstxHqXKSdBeRhJzGOJiiHZ0MSz05dEIyBSf4TnGljcDXIchNdPdo+/1Sv9GIpsKKfEJn7p7ystYcYOHeeSerOMdPym4LUaWZoUSW79upzt6KUEk8NDE5qcogWZPVlyUMsgOgIQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i8XrX4IaBiWARd5AyaySY2EBvrEp1NvcdceM20vbQoo=;
 b=g8u/EysLsGi4a6U7RoCeCr9No8FWV3CAyhdkqG4Jl8eK+f8e1/0L+V68n/zOCJ+JcKQp2Ld0EQTEM8MqkSDUZsC1UKA9knFsLQp45DZ4jN7+Y17PoRXg3EqM6e0SJyckYOXnCpRoPpHMOXbCq8h0GXcX8fPeTvepUJZ4A9FUKCM371/09v/iyNweCb6I7JMG0G1a3heeNrsGVeuQXVFYBk2WuiLkLnuywREXCAe3Z45navllM9HwCk6z+R3Ik0P4ir/OTAUjklms9fvHDcuI/LUD6lYnHtj2vlIXyhBx5Y4WHUJdRAh01IrvUBd7s0svEs44g9xvLa5w+1A7Yj1Rjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i8XrX4IaBiWARd5AyaySY2EBvrEp1NvcdceM20vbQoo=;
 b=LBYwpXaFJg+Nfk6vzkT2vo4Ql93KnDhVcUknm07XKT/WzXq+6mxXatoZCYbK0WOZ+FEKT4if6vaJgRNGBrrhr9cR7byXAPe2JTA+eA1gXo39eC42zA5grSbXliZqhRH4hihcYY68XTZhHyJuv4pdefbM128q1+KT4nkYmlHJHxk=
Received: from DM6PR11MB3900.namprd11.prod.outlook.com (2603:10b6:5:19a::26)
 by DM6PR11MB2921.namprd11.prod.outlook.com (2603:10b6:5:70::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.20; Fri, 10 Jul
 2020 03:17:07 +0000
Received: from DM6PR11MB3900.namprd11.prod.outlook.com
 ([fe80::3dc9:b760:b900:437e]) by DM6PR11MB3900.namprd11.prod.outlook.com
 ([fe80::3dc9:b760:b900:437e%6]) with mapi id 15.20.3174.022; Fri, 10 Jul 2020
 03:17:07 +0000
From: "Lu, Nannan" <nannan.lu@intel.com>
To: "Wang, Haiyue" <haiyue.wang@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next, v8 2/5] ice: add DCF cap
 negotiation and state machine
Thread-Index: AQHWVl5980W+Gic1dUiS+6Jl/rQkRqkAJDvQ
Date: Fri, 10 Jul 2020 03:17:07 +0000
Message-ID: <DM6PR11MB39000D037465E8393824A92EF8650@DM6PR11MB3900.namprd11.prod.outlook.com>
References: <20200619045711.16055-1-haiyue.wang@intel.com>
 <20200710015421.92122-1-haiyue.wang@intel.com>
 <20200710015421.92122-3-haiyue.wang@intel.com>
In-Reply-To: <20200710015421.92122-3-haiyue.wang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.102.204.45]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0e4b019f-0da0-423b-b9a8-08d8247fba12
x-ms-traffictypediagnostic: DM6PR11MB2921:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB29217CDB3B612F9B91E4CDE6F8650@DM6PR11MB2921.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fMrUW+XHZXmekoeSYfZ51XMABhvLo6+Wqy9wWS89InTwHh9Fq5nlOgN9/EGMYweZinWoOkExNvVMe22uCEMz/Pk3C5SilKKjGrkzcUqbzDhMiHLIcuTpTb7J5dP1Pgp/QTvtOA3sjWqQ5tyAAh2RQk0SW1lbezhMFAVyOxgHCou1JX5A4e2wochZChjLBUjoJY052DlppbAbfewna++RZhT3o4PwAjc7uNBjjRDshjEGM4FVFG6I6D9eve5HJsxbOiU6z2UG1ZTld9YyggGjyw2Ob0aKj/9sUFbGRzNx9Z8Gza7dExh7fK1xzNSOZFd12LbSv58rFQ+8bx2U6Yj/46gxmtgbRnN+eRqAb9ioqcB6b4g78Geb2XJb/EUW8W1DZs7QVy6UBMDilDHkFJ36Bw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3900.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(346002)(396003)(366004)(39860400002)(136003)(33656002)(66556008)(71200400001)(86362001)(4326008)(83380400001)(7696005)(6506007)(53546011)(966005)(107886003)(55016002)(2906002)(478600001)(316002)(110136005)(9686003)(5660300002)(66476007)(26005)(52536014)(186003)(66446008)(64756008)(8676002)(66946007)(76116006)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: fryi6vAiRHYAsbUYRgcKQV9PzdN6Xfkk/fxBNk/INRH9Cfl1fkpThnlQ5AGWrFXZJLIcjs7G8Ukz9cebDPX0Czov4HStcxd46hRBr1tkeb/4tpvm/WvA9lUYepUPHn9FGk7+J6hvOLh2UvveGS7heWkoN1iYg0aZ7Njo1WrN/3ZpQW/1aV1de2heVCTrCdy27X2jn5DJbuObRbmvsyt4OgUsrIAODSczhIFBdhzwUw1lZ1T7F9fKik76jUCCy60g9SqIWksXndT3kiN3ph14wv+7CHpvyFi+kbd94QSX6ITrAxpg6LW3VshMedt+etMl2Op3h8e9LfZ+4usn11ALrSINFXKBG5o0QAE9T9h/PCvxoBeNrDQBtPv2yWEzLuS85ujkj13oXFPVMM89OyGayVFcmi3bz74elYyjORgVwpYSCVJ33WxR5YzbqTCeHCs7HUM3Kq8RGQywPnlyoK9d0amptOR6MaTSdHBXazPa0DXS992uUPEIcZVeGrsqACJL
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3900.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e4b019f-0da0-423b-b9a8-08d8247fba12
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2020 03:17:07.3161 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bGkTQnAjoQ9G/nY5dVT/4O2bm2gh7vIZbBoY0KMYKOPjv52S7IT9NCeN32B0P1MSrcGDu2Yy9/hi/chBuA8gDA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2921
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next,
 v8 2/5] ice: add DCF cap negotiation and state machine
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
Cc: "Li, Xiaoyun" <xiaoyun.li@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Haiyue Wang
> Sent: Friday, July 10, 2020 9:54 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Li, Xiaoyun <xiaoyun.li@intel.com>
> Subject: [Intel-wired-lan] [net-next, v8 2/5] ice: add DCF cap negotiation and
> state machine
> 
> The trust VF0 needs to negotiate the DCF capability firstly. Then the PF driver
> may allow this VF to enter into DCF "ON" state if various checks are passed. In
> DCF "ON" state, the VF0 can send the AdminQ command to do advanced switch
> rules creation for other VFs.
> 
> If one of the VFs resets, its hardware VSI number may be changed, so the
> VF0 will enter into the DCF "BUSY" state immediately to avoid adding the wrong
> rule. After the reset is done, the DCF state is changed to "PAUSE"
> mode, and a DCF_VSI_MAP_UPDATE event will be sent to the VF0. This event
> notifies the VF0 to restart negotiating the DCF capability again.
> 
> Also the VF0 can exits the DCF service gracefully by issuing the virtual channel
> command OP_DCF_DISABLE.
> 
> The system administrator can disable the DCF service by changing the trust
> mode to untrusted.
> 
> Signed-off-by: Xiaoyun Li <xiaoyun.li@intel.com>
> Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dcf.c      | 77 +++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_dcf.h      | 24 ++++++
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 85 ++++++++++++++++++-
>  include/linux/avf/virtchnl.h                  |  9 ++
>  4 files changed, 194 insertions(+), 1 deletion(-)
> 

Tested-by: Nannan Lu <nannan.lu@intel.com>

> --
> 2.27.0
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
