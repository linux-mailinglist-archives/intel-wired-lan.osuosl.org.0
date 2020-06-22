Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C05B20413D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2020 22:12:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F051325C83;
	Mon, 22 Jun 2020 20:12:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZJT6TKT+yVoM; Mon, 22 Jun 2020 20:12:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 449292041E;
	Mon, 22 Jun 2020 20:12:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A9A1B1BF3CE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 20:12:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 97D2620412
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 20:12:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8FfWpGucHR+9 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jun 2020 20:12:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id 349702034B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 20:12:07 +0000 (UTC)
IronPort-SDR: YO4cqhPIzMhnpFRlWutrQWLvRvmUE5M4GM0wuNu/sZ+ZFP/Hrebz0QqyBjDbeYPQ8Ukil5Avn1
 Y+Qheu/eCv8Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9660"; a="142119399"
X-IronPort-AV: E=Sophos;i="5.75,268,1589266800"; d="scan'208";a="142119399"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 13:12:06 -0700
IronPort-SDR: 7e0pIJakPIzpg3aeikpOf51aJqCvBUu0o945Nst98e7d2rEyw3JSg9F3EOcDlcSLVV/YTiFHvP
 0De5B9EHNc/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,268,1589266800"; d="scan'208";a="263060844"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga007.fm.intel.com with ESMTP; 22 Jun 2020 13:12:06 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 22 Jun 2020 13:12:06 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 22 Jun 2020 13:12:05 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 22 Jun 2020 13:12:05 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Mon, 22 Jun 2020 13:12:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S8mr3iri2JB3cP94g4TwnnIZ/CV9lazNdaDvndgvhZLKdMQUpfLyE6ehCGcKfq5zCFwN980yK43VEMWfvZOHAzQeKT/lYPjjLRXDiJJG70MscyhnfUfgEPHv0vgyMFDRtDh6ecA12J4Nmg7hCtUQFr5He9f8cpxJOL/zi5e55B58wc5rDXCgdhUsVldiXuAVeetmb7VUHlnmqICwPao7lIrTa7shj2NTqcnTTGjHVzgM2OqBjYmKn572PMhFbxR8/z5GmDkHn/k+bJc7ZDjOfYGyx24c9diiT4CR0D+eZ9i6jimr6IYfcnYAIVr8gOEI5yHuMB/PNTr6OeseeNG+ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wRCYg9euXi7FL1EKaya2i/QvPFQNz9AvvDPdASJlsJw=;
 b=ARXVEn9WUgouZHwz3B0L9A0B3Jq3wq5IKQNoYfM6A63eePeUlMWUbaKwTNwx6RD+lxvLdqkUGyi/EgwQjikBB/hYxvNBy36TDijCpcWgZ7JhcBDrqPZxtCOJxqy0tL2vTP/fq3AFtTdHZO0CbzkGp6TiAapdOxDpRoOx3D8zuk3IyhEZTx6WpbrZGebClSKuUz7WCMrSEzbYCP2HifWm5adVg9KraFYp5DcIi0vz148rM28sYUBm0n1fUGAPG0pzLiU+5l0Gp2THTRl4/muj0IbMt6omxdR5UR9aOKaB2Ju2W82xfTayZXUdeRUMwpEmBE/6Q90ibgdR4q8L/eId3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wRCYg9euXi7FL1EKaya2i/QvPFQNz9AvvDPdASJlsJw=;
 b=g6HEVYTZaDj9Dpmf3C8yPPnwKSR6oOgURmGmsHhWvA/EeLj5ET02TBntuupZHu+1Z+1h27ao0dllN5MgUZRlwdrT+a2wLPEIP4RCfZxqIdkHPrWdsoJwrAiocDAMzQigpShF1t1JreEpTToQev/+tybqrUq3w2pkf+VacnkLwhc=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB1267.namprd11.prod.outlook.com
 (2603:10b6:404:3d::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.21; Mon, 22 Jun
 2020 20:12:04 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362%9]) with mapi id 15.20.3109.027; Mon, 22 Jun 2020
 20:12:04 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 3/5] ice: support to get the VSI
 mapping
Thread-Index: AQHWRl3kniUdwC0Nk0irBtSEnEsiV6jlFfug
Date: Mon, 22 Jun 2020 20:12:04 +0000
Message-ID: <BN6PR1101MB2145A24879557A25607282A38C970@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200619045711.16055-1-haiyue.wang@intel.com>
 <20200619171022.9539-1-haiyue.wang@intel.com>
 <20200619171022.9539-4-haiyue.wang@intel.com>
In-Reply-To: <20200619171022.9539-4-haiyue.wang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.52.216]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8d1423d8-b4e8-409e-3f8e-08d816e88830
x-ms-traffictypediagnostic: BN6PR11MB1267:
x-microsoft-antispam-prvs: <BN6PR11MB1267A19CACED82A1A42C692D8C970@BN6PR11MB1267.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2449;
x-forefront-prvs: 0442E569BC
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /5vC9MyIEl62FdD4CkddVwddmUPU6MkRO/rPLO0XQB+XFeXDTZXTnfviOGfzmdw3vxDV7OJVZznbFD0GYRybEZu1OzZRgMx/fCwxfczRVr+UcAU4C/1aAuVDZPsiNm9jyWuPan6ESjhUaAIwYKfN6nUDF5ntWwJe4subx933UNknJIX7zU02YYjyuaZNmOaGXCAUcSZj931MkUb0WFbJjk7jiBXCdCNuW0WJjOmSrDB+4aVms+91PsT2ygVp7FiHYNGXHhFbBKaRFrt9Nw7Qr8+PYxa0XwvGvKlbqZ1ROSFTuhvTxThHDKCzSUf07vXFP+Mjeb7kuJ3qtd/M06sKdR84owEpJFtDLnGudVsUTH5U4TXyt0DOF0+SOMieCk5O
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(39860400002)(396003)(376002)(136003)(346002)(66946007)(6506007)(76116006)(5660300002)(478600001)(4744005)(71200400001)(6916009)(66446008)(66476007)(86362001)(33656002)(64756008)(66556008)(8936002)(8676002)(7696005)(53546011)(83380400001)(26005)(52536014)(316002)(55016002)(186003)(9686003)(2906002)(15583001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 1UgTpMI0FolriSm+882LCfd/xNESlOaLyCM5Hq1W+QCSA8UHfZfldT3yRGM1uMziJEaweXxuM010/VQN1y10E3bGfb2Qh+YM7IPeJjj0yDvuKOdGFs6EA1/2xkE5Lp0K/7tSK9oMMBeeM21Doiv/5VD/hiXKEOZL+fD7gj9yG2s0OVB4vmfBRxoleZCJ58F9z1+xBPCEPjLfRivwLxuTg5d5xOSKQ6i4qCbh0MEvZDy4LbQHTlM3lxp7/ZoeuczO7CATGgiaKDWzPyR3zsWs9QggZILgLKzqhyGAJS96mR95DNrS6ug29Wuug8rmfec5kDAtq2PihPwUmf5hdxRHkFSFgEL30lSiIIUVAAPK6ItQRNMpQd1yLD1DkxQb2KJddfrjoUoNYKT/tQvU4EY/IjY7ZLP1hUnqv1nqXs8QUrFoyC2S3jkyli73JYvur6NecyFU1fwaTC0KFf9jsBVBNLxwSFtxmqhFB5ipKIH/IA0=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d1423d8-b4e8-409e-3f8e-08d816e88830
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2020 20:12:04.4802 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: veqAB2Cgezaf5Irxbkk8JbAc2GLg9zk9IPyywfV5nWz9HuGtHzwnOUtOoNxVOFN8MwDmvFxu3Spha0j5uTe3PFlY/gQTMPw9rDHfKpOogRs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1267
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2 3/5] ice: support to get the VSI
 mapping
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
> Sent: Friday, June 19, 2020 10:10 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Xing, Beilei <beilei.xing@intel.com>
> Subject: [Intel-wired-lan] [PATCH v2 3/5] ice: support to get the VSI mapping
> 
> The DCF needs the mapping information of the VF ID to logical hardware VSI
> ID, so that it can create the switch flow rules for other VFs.
> 
> Signed-off-by: Beilei Xing <beilei.xing@intel.com>
> Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 61 +++++++++++++++++++
>  include/linux/avf/virtchnl.h                  | 21 +++++++
>  2 files changed, 82 insertions(+)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
