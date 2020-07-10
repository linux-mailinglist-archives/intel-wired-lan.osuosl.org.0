Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5E921BF26
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2020 23:25:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7601F89DD6;
	Fri, 10 Jul 2020 21:25:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b2ykv5QAd4d4; Fri, 10 Jul 2020 21:25:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F411189DD7;
	Fri, 10 Jul 2020 21:25:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BECCA1BF3ED
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 21:25:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B984589DD3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 21:25:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SDX+5pF+hRZo for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jul 2020 21:25:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CA45D89DD1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 21:25:50 +0000 (UTC)
IronPort-SDR: 0TLhPqrFuXk2gpX8/q6Jx+uFYsRtcJ0A5GqfdBuvW2Gn65XcHC9LWGzVHuUIJi3aVvUUsVAT78
 6ubI+AcV0CoA==
X-IronPort-AV: E=McAfee;i="6000,8403,9678"; a="148304417"
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="148304417"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 14:25:49 -0700
IronPort-SDR: 1/tH+LjVNRAsE3193cfMCIZ4MkjH5w7g9N5DV6LRsym0qpa5oYV7huyOoTgvbo5EooGi7gCuyl
 6hrLBaXfmFzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="306676901"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga004.fm.intel.com with ESMTP; 10 Jul 2020 14:25:49 -0700
Received: from fmsmsx111.amr.corp.intel.com (10.18.116.5) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 10 Jul 2020 14:25:49 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx111.amr.corp.intel.com (10.18.116.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 10 Jul 2020 14:25:49 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Fri, 10 Jul 2020 14:25:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N5D6LZKnga4eSsPXWb2S0sbWwBkeAUeoHhA31fyWw/eO0htt2PpjMRizVz56sq6eM38BTlwTHMNqP+4Uf77yuOtLxQ+7fvTeoGKL/gSSMT7ueqXrv2rorFcZ8TP0aso94BhT8KPwESQlwKIVESJkMPSh4WMYnP1/FqKOo20y9yEVZEd0RT6aml10Gbptaiyrl6q+nUwDm7CfYFt/qcaAnk5PRrq1uIcDgRc7yuBP0HoVnfhguIrnKbaQ4CgV6WUkpsJVTlBqqgoXiCBueg2kI24Vp6DrJGO+z05OwbV4MqxEkWlQi33/JCA4L66lY7prSCEhSpuyHUn58b8LZy8Nww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vCkJc/ytPWknGfgjSc0Tumd8MxiqVgTLLyS9tvBXSts=;
 b=DhnOHoqXFCP+cE9loxA/SwT0DWAP7HF+yKDdjOEO0GHhXtoveLAq4uEaoaRxGjRn4LxvCE9ArtNyT1dw7zd/Lkcu6MwotJoiMEJglR6gV3iVP2NbVT4gU/eqgdoi/l5SCg1hcQ9HsQ2TmuVLvDWC/2BdruQ6iHY49QsXBSXCj7yKTMpz4U/Icv+iZ3Bq+vGIRwfrzeoYzlsX3HWQfF5uhR2wsrwHRcuI1TVDoGH1eSlLX48RDbOLYrkusCP0aY2JT0dkv+hja0xpEwrNZ+0VGes4Mze7QBfmCZNt6hfl+Jrt4v7qyUPtny1QruSfXwfGzfYVTLz8L8/QYcNLi4mNIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vCkJc/ytPWknGfgjSc0Tumd8MxiqVgTLLyS9tvBXSts=;
 b=E68h3PvqB+P9mcE+KIfJDoLJRQer2Qg+gY37CHfcWDwE0Cqi2nfpXm5HHTgkrdjN6S2QpzwHUx98818loC4iJXNcxeJUvCLNdVaiE1VqfOkatKdGbY4MU3DzHLiTEhced2C9hhR1Q2P6iOnihwcMhe2Vjk6GGtAJ6+7YfxycOsQ=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN8PR11MB3604.namprd11.prod.outlook.com
 (2603:10b6:408:83::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.20; Fri, 10 Jul
 2020 21:25:47 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3174.022; Fri, 10 Jul 2020
 21:25:47 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S48 v5 10/16] ice: Support FDIR
 configure for AVF
Thread-Index: AQHWVlX8pMEFST/9e0Wg0xxDreJjrqkBVJeg
Date: Fri, 10 Jul 2020 21:25:47 +0000
Message-ID: <BN6PR1101MB2145EC1BEA3796A9006784E08C650@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200710010644.33817-1-qi.z.zhang@intel.com>
 <20200710010644.33817-11-qi.z.zhang@intel.com>
In-Reply-To: <20200710010644.33817-11-qi.z.zhang@intel.com>
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
x-ms-office365-filtering-correlation-id: 0e91dfde-5cd5-4329-d397-08d82517cff4
x-ms-traffictypediagnostic: BN8PR11MB3604:
x-microsoft-antispam-prvs: <BN8PR11MB3604E5243476B71B3131F9CB8C650@BN8PR11MB3604.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VZ/YqeuzhGShPXI2FsS23vF4NG8dMhfrN009EklNyVmE7zNxC5NATmhgvqSONda8BIyP3RJBq8Pv/NphDb51ItHjzoXu/F/tFugYlPvLH/HXEXqLYDdLnA7NddYGVIiA1I4JNA9BiEdLioV/2bgQVM5Fb58/kz4RDPBMyTMTY4TL2kx0AEXOouzfcznFTDfuKwTidC9b7thLTKpe/xI1lagnBFOOr1YVmQKT+z7kFUHLiW0nafagVRpRF+qFybvs3hCBcUsrpJGVgYy7Vu68F6egYeP0TbvD9mjC/0Eb49gJYzI/ovA1Mb3FqXsVxIei3FWUtYnO6oDMY5BFF9IMYg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(366004)(376002)(39860400002)(346002)(136003)(316002)(8936002)(55016002)(64756008)(66446008)(9686003)(53546011)(6506007)(478600001)(66476007)(66946007)(66556008)(26005)(2906002)(86362001)(76116006)(8676002)(71200400001)(7696005)(186003)(33656002)(6916009)(83380400001)(52536014)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: cWh/LCgAMrfTuFtET7HjyU5AY03/PIWN3eea9Yf2DIy1WqIC1JbubjJXcMQPHohVJxdcZT2CGQROXyiRx+8W1Lb6g98xwH4CUM1lPd++j8sHDjIdCdlaLMSGC2sQRs1lPyLtPvdVLUi1mirW2hfuUdI9hgs9vNW0iiPxufTE34mSkGnROEWukTF16N/353+P8e8/L6yYwKBccXKfhlVuk3aGPiY706PQrxf7JkwsKOEtGs8MRJHOf0v5OF60aXILgRZk0XAuegQalb8d4oLdNp6DRFuBGLUmw7CY8mC+HFnyYDuJmT42tH5pnVaSHLNS/PfuYzU/b4m6eKnyUvzXTw6uLasJNuFw/RuE8yrUzjAi72f2bfWKZm9VoBmztXXCJ8XFFyB8ELVOsHgViyHfI+6CDEKCHbt/SzJXmtpTfixgyZMpPjSH1ORMR/WTDgMG92KiNbpscjExthzXUENmt+g4VO1/NxF0GwVWQoZcr4s=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e91dfde-5cd5-4329-d397-08d82517cff4
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2020 21:25:47.1361 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MnPyff1qy/iiVK+eMty/kqVlLpYXv9bFtzasPTNr24S5f4ogPPULn3LwuDIe240jn/1+nsXNqNJXmvaesbAZIaX0EpeH/AEhsqswjuT/owY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3604
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S48 v5 10/16] ice: Support FDIR
 configure for AVF
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
> Sent: Thursday, July 9, 2020 6:07 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>
> Subject: [Intel-wired-lan] [PATCH S48 v5 10/16] ice: Support FDIR configure
> for AVF
> 
> Add virtual channel support for iAVF FDIR add/validate/delete filter.
> iAVF FDIR is Flow Director for Intel Adaptive Virtual Function which can direct
> Ethernet packets to the queues of the Network Interface Card.
> Add/delete command is adding or deleting one rule for each virtual channel
> message, while validate command is just verifying if this rule is valid without
> any other operations.
> 
> To add or delete one rule, driver needs to config TCAM and Profile, build
> training packets which contains the input set value, and send the training
> packets through FDIR Tx queue. In addition, driver needs to manage the
> software context to avoid adding duplicated rules, deleting non-existent
> rule, input set conflicts and other invalid cases.
> 
> NOTE:
> Supported pattern/actions and their parse functions are not be included in
> this patch, they will be added in a separate one.
> 
> Signed-off-by: Yahui Cao <yahui.cao@intel.com>
> Signed-off-by: Simei Su <simei.su@intel.com>
> Signed-off-by: Beilei Xing <beilei.xing@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/Makefile            |    2 +-
>  drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c  |    4 +
>  drivers/net/ethernet/intel/ice/ice_fdir.c          |    6 +-
>  drivers/net/ethernet/intel/ice/ice_fdir.h          |    6 +
>  drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h     |    2 +
>  drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c | 1035
> ++++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.h |   24 +
>  drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c   |   17 +-
>  drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h   |    6 +
>  include/linux/avf/virtchnl.h                       |  120 +++
>  10 files changed, 1216 insertions(+), 6 deletions(-)  create mode 100644
> drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.h

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
