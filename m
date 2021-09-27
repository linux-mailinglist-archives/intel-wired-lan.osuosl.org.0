Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 794B2419D1F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Sep 2021 19:41:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C6CBA81B10;
	Mon, 27 Sep 2021 17:41:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Zy6bFNUVLMpB; Mon, 27 Sep 2021 17:41:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DAC9181AC1;
	Mon, 27 Sep 2021 17:41:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3D0831BF5F6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Sep 2021 17:41:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3943481AD1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Sep 2021 17:41:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H7j02qCMiuvF for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Sep 2021 17:41:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 883F681AC1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Sep 2021 17:41:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10120"; a="285538126"
X-IronPort-AV: E=Sophos;i="5.85,327,1624345200"; d="scan'208";a="285538126"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2021 10:40:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,327,1624345200"; d="scan'208";a="561339226"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga002.fm.intel.com with ESMTP; 27 Sep 2021 10:40:49 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 27 Sep 2021 10:40:49 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 27 Sep 2021 10:40:49 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 27 Sep 2021 10:40:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ko/WNtxlpO4/KXv9CUrsPE7rd5RHpZCqBpwVvaocuzTGRDxHPIPf2kwsFWbYgcWgVMsTOXtRT8aUyuu4+Z1YXwxzzjtQpC/qDVXXlOAUciC0YCqMwsF605kJkRjbVwugEQSt1/5z6rEn2RzTeOf2fYgjCGXGQnmt4foLneT3PtQVsV/H6qXCgCNQRTuFKXDTQR6NJC/NHPnHFLzH57te9R4RWrQeSn6qlCKxX3Bn2yRaqYnYaXFGVYhTg2F86Cej94p3l+Ex5m3pWd79D571mZYWkkBuzjByWts69P3Qz14vC2HfLnb45UJxMUeV41V+L726obuNTRzeIc2LqFKA2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=2qLvXZA9oEz5R124HfjPvAiVsYsgN/HKchYD789ZCKw=;
 b=G1usyhSMdaZw5/Ncnf2JDmxtLokn26EcG7TDs3tvvGYMCr7/DvmnERvae5X8q6ZtyGoXYjWY4oX/Nh4F57A0yU4s6wBYg58c+5xQ9E6cRnKpgOnRexIr+Clz7Mw/b1ZxfISYIxTBO2/1+0wKVahcRw8zz17gPMiETbu5Yo5Gg58ZItkBHeHkLztJu3t7gt+188VxezOBFQY2DallYIlolB/mW9PeebKiHd9NlH6RCOUIkIIwN6XQsIYxWwHE9HK+dJIJuXB0RcLyScdpv1Xje1mgtU8AWVHB2n1bCzJkcE+D7qsDjrpLMzOV6yoGjVDy+IAqw8FCR8FKmaGKhI+XyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2qLvXZA9oEz5R124HfjPvAiVsYsgN/HKchYD789ZCKw=;
 b=p6E8ttvrOp7hsXFUzlWseYnKd1Yb1PvS35JIdPDXcXoOOGRq/VGHp3ciUQNEff3ES0qHv15S3dn1zt/zgAGG4BRBcUVwt3S+ivu/jb1GTQzi9yIkyWyxXsYbONcK9rADUDGW9IssfJZC4dHgjc8zA47J/7ou9y7AyJLCKdwSVbE=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by SJ0PR11MB4831.namprd11.prod.outlook.com (2603:10b6:a03:2d2::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.13; Mon, 27 Sep
 2021 17:40:20 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::90d0:abd2:bb85:56e2]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::90d0:abd2:bb85:56e2%3]) with mapi id 15.20.4544.021; Mon, 27 Sep 2021
 17:40:20 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next 2/4] ice: move and rename
 ice_check_for_pending_update
Thread-Index: AQHXpQxSFb5KK5zZ6Uu2rzejA565F6u4Qz0g
Date: Mon, 27 Sep 2021 17:40:20 +0000
Message-ID: <BYAPR11MB336729CD2E84E71D75940975FCA79@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20210908234924.3416592-1-jacob.e.keller@intel.com>
 <20210908234924.3416592-3-jacob.e.keller@intel.com>
In-Reply-To: <20210908234924.3416592-3-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 01359d9c-9bac-430c-b643-08d981dde078
x-ms-traffictypediagnostic: SJ0PR11MB4831:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SJ0PR11MB48313DF2934A700A546C830DFCA79@SJ0PR11MB4831.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2803;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6coIOs29HGzssPjsg6eCrn0nGvpv2lDHAFCOyDyhKa5OvZGrnwgc5TeB2JFm/iCDaid2O9injL+gJeYYlN+VHWiQFMrKZusCuvJ/YGBqbI7zPWbgCtNXDg0UZSutTUZ1RQ7RM2dkzBVkIQvwb/1sImzLQ50DAEe750fiPOowKYEl/rYdJ60tkvySw0DVLY7/6aJ1mgyAx3qX4HnVz3U/CXQCg5RRvjiFjuQ4HhTdvUNcIYY18I/Z5qBFWNigeUkaJOuzgLtEUt+nvhgKlwI3dTBKp9dhe8qnSYV2ETiKV/Ev/jottHGQgTjK5w5rw9+1vQSO87fiVdL5eUwhv2A6NLeEu+4Qwk8uxBnBil7oM5tXkD+dxuClmXTnznxm7w71X6GzZtN5TK8hSO5s3eMN5qyu2A1S0AdTRPZnErHPtNPo8jiRInMVwltAaJHNvfYJN+ipaA6yaZqhPQCC+mlC6XS4F5HP0Nfzkd/07BOqvhCdpEuHaC/XvOVraAlQAUwXx0bXFoCb6NAxJBVKTUQv9787gRypLAdNM1ZW2+33JvtdX8skrjkfiy3u2rfEcnzBEfduhmYHlmpCRmAg7NWFv4Xi/XEmDmo/K1Nol0qneDI9YL5hNN4QyoxE41RGNsl5nGqqrONOpvNiUXj1Ua0C85yIxM16HBe/hOEgKoyUmL9Vl0c2IGce+toDP/pFWAJrIdS24ELN/2WTsR+smY6AiA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(8676002)(53546011)(52536014)(6506007)(26005)(71200400001)(38100700002)(38070700005)(86362001)(2906002)(83380400001)(122000001)(33656002)(66476007)(5660300002)(66446008)(55016002)(64756008)(9686003)(66556008)(76116006)(8936002)(316002)(186003)(508600001)(66946007)(7696005)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?XwkHMxQzlpdktM8jgI4ePxcD962KQqWcp/74IyX4usmzyFRWHvIxbn+aJ4Dv?=
 =?us-ascii?Q?iiOmKPMHGBWo3viWPyFq9waLM1o3pgLEElHlIAyaoqdKxrddP8PZPIKCr22M?=
 =?us-ascii?Q?FKbVXkIUv5Gubc91muKRUTyFiWNwmNmnYKyup/ykOlTIyPUg4zpprQ6RrclF?=
 =?us-ascii?Q?s3GgIow2dEyNm3WVvQP2KBwijFVzIegBiwIOT7oTNoKNDyd/kXaEVLra6UML?=
 =?us-ascii?Q?AvI2aTJgcAB0Sxsv/k0CKPazTKldmxsrRLa7o79pVycszh91Pj8bj0AxUwbM?=
 =?us-ascii?Q?V4LgAuPTmks4w0W4B/85CjYwBRnDpktHhOKW/3oGayhPIhTT7qSXuVp9TXLF?=
 =?us-ascii?Q?PIU+ovSgEIsxelD8ClIHuc44j6XlrCpmffQViYbrkOoCjU1EsA+GF72tG6lL?=
 =?us-ascii?Q?NQba3g2IxlqPxeuKlM1lXli7CtGOrGNv5ypDSdO34rddRwtM3qMZQztQJhHT?=
 =?us-ascii?Q?H42XxXBIA9pdckJCPcvh+8zwB9wfcCUV4SLStitJ0nM8QGG1ikncD3aU9c1S?=
 =?us-ascii?Q?JhUPkVhL5HVBMieo9Ef+B8gdueGO0N35Lv63hrwYnb9eBlnrp4gIoEz+8GLL?=
 =?us-ascii?Q?xwPE+Lm4d1obtG9Tp20h80t/6ObZVdmaL3cYIBEzs/FBufLJmr2G8aFyfY+G?=
 =?us-ascii?Q?OyzSr/8DhIlmqTKyYVtf1ihuWA3rOlu+vXfgDSVQksfKBiPlT+zuoYHxcSlE?=
 =?us-ascii?Q?Tx8Ug0EoEH2U9wl2Z4xzyZTW9R2tnmWoIMwGhOii4QzPiLWITT9JCZPeNZ8u?=
 =?us-ascii?Q?9Oo3nAQ/nbW4oITSuZ089uenoIj9EPfHlsusnDld7F/Lbwte7friMe7RzTeO?=
 =?us-ascii?Q?4QzUARpTriOyS2t6ypN56gfIUpHjf0rPX7W7dqpLYO5iv9CjxbQmllE6GyuW?=
 =?us-ascii?Q?0pf1VHiqsxAwb+suWiDlIdm8yYKTrc1c82s3ckjI4fJgzMu96l3aepdFDsaJ?=
 =?us-ascii?Q?iKDRiK9adTrvORPa7SQ+lvMORiECXWJIhCSEXp58OzfsGa40uMI/NiRHRP2+?=
 =?us-ascii?Q?lfvhY/p5gplsgtBJYBDKQraqYX+KPbdH9VoKC74OlDzNqU8dhgEmC1QDEeiA?=
 =?us-ascii?Q?WaklMQohqUdrXzxNLwAb4PLukun3CZaeZUVkHb6Cf2VLz0jptXNgbfYH8jvY?=
 =?us-ascii?Q?rwxBOvvdsGVQiPFYdykwy18QAvZccmDGXRs9NiEvTE6Ni9PKGX9vzVBzDJtV?=
 =?us-ascii?Q?KLg7g69rLNdP5ajB5eZGp0VmfT55LCEDziwrhmvc6T9y70EkV5uN9v4zh3h+?=
 =?us-ascii?Q?/t+VhqtFI50I38RZ0rHwAgohtfvMo8NWRYa3kjI9F8FiWy0rqPO4V6nIfOL2?=
 =?us-ascii?Q?xs2izf/Ubvc5BBFKML4O3/+r?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 01359d9c-9bac-430c-b643-08d981dde078
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2021 17:40:20.2839 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TaqCzdPBRuADEkTHYIvwhiAIjD8/wCqaJ86k6xm4T4cyurqCirD0QBGmQaR44b4gXxv4aeygeQVg4Vge4d5M0g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4831
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next 2/4] ice: move and rename
 ice_check_for_pending_update
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
> Jacob Keller
> Sent: Thursday, September 9, 2021 5:19 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net-next 2/4] ice: move and rename
> ice_check_for_pending_update
> 
> The ice_devlink_flash_update function performs a few checks and then calls
> ice_flash_pldm_image. One of these checks is to call
> ice_check_for_pending_update. This function checks if the device has a
> pending update, and cancels it if so. This is necessary to allow a new flash
> update to proceed.
> 
> We want to refactor the ice code to eliminate ice_devlink_flash_update,
> moving its checks into ice_flash_pldm_image.
> 
> To do this, ice_check_for_pending_update will become static, and only called
> by ice_flash_pldm_image. To make this change easier to review, first just
> move the function up within the ice_fw_update.c file.
> 
> While at it, note that the function has a misleading name. Its primary action is
> to cancel a pending update. Using the verb "check" does not imply this.
> Rename it to ice_cancel_pending_update.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_devlink.c  |   2 +-
>  .../net/ethernet/intel/ice/ice_fw_update.c    | 152 +++++++++---------
>  .../net/ethernet/intel/ice/ice_fw_update.h    |   4 +-
>  3 files changed, 79 insertions(+), 79 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
