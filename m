Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 59BDA21BF2C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2020 23:27:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EF10689C3D;
	Fri, 10 Jul 2020 21:27:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ViAa+heeerjG; Fri, 10 Jul 2020 21:27:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3347589C36;
	Fri, 10 Jul 2020 21:27:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EB43D1BF3ED
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 21:27:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E414989C2F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 21:27:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wCKIbOti5DJJ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jul 2020 21:27:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 543C989C12
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 21:27:52 +0000 (UTC)
IronPort-SDR: UvDpRDqSYJN+7WOFGCJ61Y+qpsMtSn82l7cuI1NoViDkuYVEEMppSW6/SOkQ+6ufgjfejSQbLh
 jt2weFIGEDhQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9678"; a="136489658"
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="136489658"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 14:27:51 -0700
IronPort-SDR: 8gUSNpvAGllotEVgfDrd81fNjPoBQECUihZRXmdF8EzJwTnjyTB9aeGq/LkTPydrYsmiZ3rCJK
 7EpdZ1nF57Zw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="458402983"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by orsmga005.jf.intel.com with ESMTP; 10 Jul 2020 14:27:51 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 10 Jul 2020 14:27:50 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 10 Jul 2020 14:27:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZXnsy/Ri10gpjZUxA6m6f2dPFVXTM7S8l2KYhtkBMlphG6Q+qaGyygRxzUPOX83W2R7H0JretRwgDlb3REUQsuAgKaaFHPc/IeetifejVxM/OAezj1IO05ya76wNZhHVNUR/eqkml12M6yzqJPWywo0/T6II+UqK53PHCAfBLWYdG8i5hFafomCDaxkuFEcRplfnlycul3wk4xavqihSGkyBOPAb3JKbEUrYW1C8mFfsRgTc3+Hdg4OL4BcAF0qNOSpoE3ZWENT4YOhnVgVdB7GfU4QlAd8c36EXw5CWOL/CfS5qEBwTTzhkwL2pqriea4rby/sso3tGva3vAD0u4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xqkOw1GJE/mZr/7db7LoPdYzcAuHI1RVsaERMR8nYo0=;
 b=MJcHJYAjNevUJGO0L9u+BA0k7mGiMcTkpST1h+t6dgZuJDwUTQlCmf5d08zranD+mkI1AJ0mQvS0krwsifR2sWsWYj3YliDWfNRpGqbdp0tcBk2C5DcHx3QKVI9cwulKDRthfIwkbUq/azEMNyIgIz9apbdgKSnxvxgZyA6tNobuM5zGF2GT4ZDTY4ysVLc72+I/AUOJpjMstBMVX7KoUl/6xEUSL2rdIG84HQTwrr7bdJZkd8NYOZKRzGdRwKABY7GnnEXCiOIhR9Ku7nGT5StJsBrNw6oqKpiCTZ51bFHgJ8BD4Ki1pXNRrimvcCfxBAhOwpz5zr6C045p3oYk0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xqkOw1GJE/mZr/7db7LoPdYzcAuHI1RVsaERMR8nYo0=;
 b=N0ZEyUB6CeOMjeKU60GlLqkoi8+5SAcO5xlwM2oWPpQqyLTl+WdivQCTqR6MBaEvlA3t2ILY4+RNIzSB5YVnEZqxX4My+PQMcyul6t6D1diEB1YEyIsiQa2nbHEdMWwIAaU5JgNA03D54sjitHCNUbbhLIpxsVyRdWvbY7HZFRs=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN8PR11MB3699.namprd11.prod.outlook.com
 (2603:10b6:408:83::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.23; Fri, 10 Jul
 2020 21:27:49 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3174.022; Fri, 10 Jul 2020
 21:27:49 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S48 v5 05/16] ice: Support to separate
 GTP-U uplink and downlink
Thread-Index: AQHWVlX00ZUyjewMDUyN78gmz3j2g6kBVS2Q
Date: Fri, 10 Jul 2020 21:27:49 +0000
Message-ID: <BN6PR1101MB21452293B7BB4D6412E5D3D98C650@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200710010644.33817-1-qi.z.zhang@intel.com>
 <20200710010644.33817-6-qi.z.zhang@intel.com>
In-Reply-To: <20200710010644.33817-6-qi.z.zhang@intel.com>
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
x-ms-office365-filtering-correlation-id: 25d165fd-c026-4ff9-e2f8-08d825181885
x-ms-traffictypediagnostic: BN8PR11MB3699:
x-microsoft-antispam-prvs: <BN8PR11MB36994E8A808061311A1085C68C650@BN8PR11MB3699.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aoIleR9h30+Ro0bLaugUIsi1lN/8Z5tAosmDW6qq9qx4SolUGL4iHjD7JXeMlv18jrG6TtZWZFOsxNAHN25eIkXn3EEntP/uzrgZfcZFH2feAgybMGaMO+A/pw9gnohATMCjppNEXbDlYmctaZfoPg/WFiLMxgCpw1IABrPVmcPID6hEcW5b/kdMoM/FID+2xvbVfEFiSmkt4i7G2mKtOC3LGapODO8dSAPZmU3OZLNOI72jqMcI6MiKle5Gzft8aWY7s4QC2SQ5oSqTTDOaBeLB+PnfZ6x96ze5YZMMiYE/L/D4FT4n36QZ29gmyfhF
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(376002)(396003)(346002)(136003)(366004)(316002)(66446008)(64756008)(66556008)(66476007)(71200400001)(76116006)(66946007)(2906002)(83380400001)(9686003)(7696005)(33656002)(86362001)(478600001)(53546011)(26005)(55016002)(5660300002)(52536014)(6916009)(8936002)(6506007)(8676002)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: YESpbLCrviO8ZTpXC6HOfse2l3frmJ0MORLAtnFhhwuyOtl+sDCPd/1yUl+3PRrQqN/b5/kDqnlwUwzQjYcK/FUyRPqOKUfHJEF67hRjAOuZb3TtcgK0LqqIluEnqRk1BqdmiZLSmmzUpTjBItM+aTskO6+CWwmGPyt8aPgoLrhu+ak2egpy6jIXb6gpV/KCB6IoqWmAIIUMXPqXOa16J4yv66IHIU4p418+AnE9nuTKzw0xvEKNfqke2+j4ILqA1g2wnJz1Bdg3f5BHDYHmACV9DduI+o+cIrujI3uDNQS4/1Wc/9fuUEMOGRS+T58nYOt5Y75GH+SwJ3tR3K+f3L3B4AQUzeXMO2r9dG2KjhwVD/CK/RSaP4lpYxeSpi7aOAQ9lDukxfMKHpBM/854Hharw1mupynbGAOuQqmqVcDDpgqDxFskoEIm4+QO6PmVOBt0aRuotk/Hs9eolV2ku/nPOFjq7nn1siypospUSBoWZgZkuw2CG2lJHCjiY6Ig
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 25d165fd-c026-4ff9-e2f8-08d825181885
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2020 21:27:49.1356 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: m8ur6mZOsTvFT8faSlvBh/F7fImoNcTNKXUGuFGhnARXxl4XVdSaATL2QFYdZHLdCZyGz1XE9Uf7ECQIVoUwLskqVe0QMaLVdGR+cTtbCK0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3699
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S48 v5 05/16] ice: Support to separate
 GTP-U uplink and downlink
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
> Subject: [Intel-wired-lan] [PATCH S48 v5 05/16] ice: Support to separate GTP-
> U uplink and downlink
> 
> To apply different input set for GTP-U packet with or without extend header
> as well as GTP-U uplink and downlink, we need to add TCAM mask matching
> capability. This allows comprehending different PTYPE attributes by
> examining flags from the parser. Using this method, different profiles can be
> used by examining flag values from the parser.
> 
> Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_flex_pipe.c | 102
> ++++++++++++++++++++++---
>  drivers/net/ethernet/intel/ice/ice_flex_pipe.h |   1 +
>  drivers/net/ethernet/intel/ice/ice_flex_type.h |  61 +++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_flow.c      |  88 ++++++++++++++++++++-
>  4 files changed, 242 insertions(+), 10 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
