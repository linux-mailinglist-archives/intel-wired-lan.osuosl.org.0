Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5226D21BD88
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2020 21:22:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A3D7E20017;
	Fri, 10 Jul 2020 19:22:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dtHD6hgnYAT9; Fri, 10 Jul 2020 19:22:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D29F320115;
	Fri, 10 Jul 2020 19:22:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 962301BF2C9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 19:22:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8BFAC895DE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 19:22:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JfkKas3Gg7dR for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jul 2020 19:22:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A2D25895CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 19:22:10 +0000 (UTC)
IronPort-SDR: UVPUccgstMTCR7/6o05Chu3kpNVRqnvlOUh7Pj1VWG2Wtp7gqE+9gI8FrM2w3PzF05839vyHnL
 kl99pjcvBaKQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9678"; a="233148512"
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="233148512"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 12:22:09 -0700
IronPort-SDR: MNZKZFcU09xJ4Pk1eAQrgEd5r4MY37fSQ1JgxYsS9If6tJZqhDOWjDqmmtdvitfMiGCAZzCH5X
 C0ezvdzwNcsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="315434821"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by orsmga008.jf.intel.com with ESMTP; 10 Jul 2020 12:22:09 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 10 Jul 2020 12:22:09 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (104.47.44.59) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Fri, 10 Jul 2020 12:22:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O8v83MPSP8QiWRWWYkiW5RuDSKGwZMkHkW+igJKMFuODIBK8LB+PlUkdtX0H2KNRS6+AhOHyA5zVpHr281uCvR6gxLoRsZeOClAJhP9/6O32AN0TjuMnFXMPttVvz/kjqUdHntTT3+sNZxNF3jDrwt9p3BS/C5LMB+IHwzmEKLV/7XNK+HF+1ql14qZGj/ijFxhMgF3VPeDX/iHfvu7mA4f+JCYvhdCayd9lZwD81sZh1m84fPWQqiXMa2GjLxvY+0xqYBUjApFUbtX68EnYEqlscm3VAaA7aJjCvYuvOTxvTe+3owWmlxp9P/INTdHCRS9vu096k4yfq87pAC9Emg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eaw9QUHQTQyeJf0RLYs0RamjBOhwY4sI6blS0H4FMhM=;
 b=oGCBK6ju/wSBEdMv/kSlCldOD4CGFszY0OGiEu8atY9Fa2sUGXp0jRDRQ1FXldV8Uxgsko3xTfF4DS/ltwrtUsD7iLq4DBMG/ohhyXxbQhC39vCmOP0p352vd87vtvhgC54mEqYe6HTZNf1gLCO5HKICxesGSbJtYccOEn+TlpmywP3E0ZhFTo6ISHXXf9REWyOfApZ8rE2iUccsCoiR9+Gb6Zr+t7USFnVXPEpFEwW54TMo4yGcJ428hnkqbi4cy75njxwmRBhx5nHVmttABaJ6nUc+4ZM2b6usHsqZ9vpNcAlPlK5wRvKJrksfFGEM44ZamEMSLy/lt5SjhygwMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eaw9QUHQTQyeJf0RLYs0RamjBOhwY4sI6blS0H4FMhM=;
 b=D8sCN5ELiFajiRItfQYmv3OzxSQb+DZzCiuRbtidG0544gP3mWgg+43xIKDiBtZ38v4sG3omOuyLCY6yjEu+GASUi9ivWBhFCk+wTtReYCbdbCynPUnJXHP50QyZN3t0FBLZJRCByFsLCIoXFycZ0IjEYeh068J+BlrArBO7CIw=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB0052.namprd11.prod.outlook.com
 (2603:10b6:405:69::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.23; Fri, 10 Jul
 2020 19:22:06 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3174.022; Fri, 10 Jul 2020
 19:22:06 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next, v8 1/5] ice: add the virtchnl
 handler for AdminQ command
Thread-Index: AQHWVl6EjVvZllsTt0KowrJ3U96mkakBMfKg
Date: Fri, 10 Jul 2020 19:22:06 +0000
Message-ID: <BN6PR1101MB21457A31691B2D0D85C977A88C650@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200619045711.16055-1-haiyue.wang@intel.com>
 <20200710015421.92122-1-haiyue.wang@intel.com>
 <20200710015421.92122-2-haiyue.wang@intel.com>
In-Reply-To: <20200710015421.92122-2-haiyue.wang@intel.com>
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
x-ms-office365-filtering-correlation-id: 5208c40a-511d-4c97-0bbc-08d82506889d
x-ms-traffictypediagnostic: BN6PR11MB0052:
x-microsoft-antispam-prvs: <BN6PR11MB0052BB98B1FBF098CF715FA68C650@BN6PR11MB0052.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3WR5fVnkZRXLTE3e9mmuaEH2SFVzOgkiqGVw3/GNwv2hwTQMobkMPpiYyagA9G7k9EbH6z0kSJSPIo3bAT2t8m6YQ+a21spPIK/H972q6KIq4eV6EpFx6So76NeCQEO4JqbNqPQmxDkee0IgqkLhYqRL4ihHhJ6NfhNnDf+f1bSHqDegPW+SggsIqY3C4y3SLOj3EG2GxOwH8ClqNBaha9OZBl+V9DRhk07JHa0eUbbQLe38YFsQFQJT/eq3ytmLUly0wJA84UPQpg8+amzvCCZT+2iEHj9f26WLBQmw58De+mBCxrrvxZe1BEW6W2u+
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(376002)(396003)(346002)(39860400002)(366004)(6916009)(52536014)(5660300002)(71200400001)(83380400001)(26005)(7696005)(9686003)(55016002)(53546011)(6506007)(64756008)(478600001)(186003)(8936002)(8676002)(316002)(66946007)(86362001)(76116006)(66476007)(2906002)(66556008)(33656002)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: v/1tW07Ucn86Pog+smeR4XdiGumul4XjztJKi9a9eOTXDt45ZnR2fxGybFoUajsMzTP+uQey+CLRLeABfi1yrvtMTR9ibeSIHS5BCDtJYrm0GBzuR+3/h/DmliNP6HGWNcoumAs9fZUO7vnKgSCc1RbL0VZ4lyUUIJvfzu7QiR3lajxSICmfYBnbzDhWCq4aU+TdohcdTCqJn1gQXS4Pl5inO8PkzSbq357JaZjj+eJdERllmiEcEKSR30q29Q7QkwYDozBNm90+0Yy91JG8DELNte0atfGHbTz3WT6ODl2XFgTJrs8miXucgATeilpT9KlpJCF9cFvDIL+s8jwr17uImsTRH9zz8t5rvicbUhULmJqIKl005e2qyAdyHnGTn1UF+12D55ZtbOmeEKtM/t6p748Qy1F+ctnAUdTeSEtoTh6W7Q+uY8lXluCXrFg8cWzCF/cn2a6gSye0z+ltsMHXI2Z7kPu+hAYJusnC18I=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5208c40a-511d-4c97-0bbc-08d82506889d
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2020 19:22:06.2771 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Fxj5qTPjpDTesaGVqe1nPGmQeYfMNFwPG2KFYOej7RKH3LeeutJ0jkMPw76V8fwb1IdOIxvivCVlj91vd09hPiKLiirvnCqr08hLIz4K38U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB0052
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next,
 v8 1/5] ice: add the virtchnl handler for AdminQ command
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
> Subject: [Intel-wired-lan] [net-next, v8 1/5] ice: add the virtchnl handler for
> AdminQ command
> 
> The DCF (Device Config Function) is a named trust VF (alway with ID 0, single
> entity per PF port) that can act as a sole controlling entity to exercise advance
> functionality such as adding switch rules for the rest of VFs.
> 
> To achieve this approach, this VF is permitted to send some basic AdminQ
> commands to the PF through virtual channel (mailbox), then the PF driver
> sends these commands to the firmware, and returns the response to the VF
> again through virtual channel.
> 
> The AdminQ command from DCF is split into two parts: one is the AdminQ
> descriptor, the other is the buffer (the descriptor has BUF flag set).
> These two parts should be sent in order, so that the PF can handle them
> correctly.
> 
> Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/Makefile       |   2 +-
>  drivers/net/ethernet/intel/ice/ice.h          |   2 +
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   6 +
>  drivers/net/ethernet/intel/ice/ice_dcf.c      |  49 +++++++
>  drivers/net/ethernet/intel/ice/ice_dcf.h      |  20 +++
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 130 ++++++++++++++++++
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |   1 +
>  include/linux/avf/virtchnl.h                  |  10 ++
>  8 files changed, 219 insertions(+), 1 deletion(-)  create mode 100644
> drivers/net/ethernet/intel/ice/ice_dcf.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_dcf.h

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
