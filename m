Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 227581C1F8A
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 May 2020 23:26:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5E7812052C;
	Fri,  1 May 2020 21:26:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BTx7681YbszO; Fri,  1 May 2020 21:26:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DAD2C25C00;
	Fri,  1 May 2020 21:26:14 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3802C1BF59D
 for <intel-wired-lan@osuosl.org>; Fri,  1 May 2020 21:25:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CC50B87454
 for <intel-wired-lan@osuosl.org>; Fri,  1 May 2020 21:25:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Yj87FyXSroLm for <intel-wired-lan@osuosl.org>;
 Fri,  1 May 2020 21:25:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F37078714B
 for <intel-wired-lan@osuosl.org>; Fri,  1 May 2020 21:25:42 +0000 (UTC)
IronPort-SDR: DmaZtPSgiGxlRTXHTM9zGIF8RK3sEQrdN+Pk/EOPkfJfO2y9xqo4/A9f6tacdKdwqV2b8P4Q3x
 bUKW5ni5ofgg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 14:25:42 -0700
IronPort-SDR: yanXdQnDqGqhfXhQ1VBAbQGvKe0OvDJGLGIU2M1Nw1RMXX7AIOuiUDafzMmn4K0Wr1w1SOLudo
 7827lJydh0dQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,341,1583222400"; d="scan'208";a="248643587"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga007.fm.intel.com with ESMTP; 01 May 2020 14:25:42 -0700
Received: from fmsmsx152.amr.corp.intel.com (10.18.125.5) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 14:25:42 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 FMSMSX152.amr.corp.intel.com (10.18.125.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 14:25:41 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Fri, 1 May 2020 14:25:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mn3PWp5bozJD/nKCnKaQQ8Y78RZPsaJOGAaPwt/BCo0mbDAJiIy9chF61M+o6soAAnAF3980adyUPALULoCsrPZdfOr6ajS5LMMNg3avKf91SCd8aRNajAB5cKFVwFd7y4zJPVo49P8OfrWkxzmhRR0EwVxwRQtS8SlVMkF7i9dxha2H9IONQj0/ywtLsdy97CnnVtHsSttV3TbtWmd9vmlmI/Y90XP32JpFBoi2VmMCitGMKHHWWgWFLWHWKaBLBdJ4SBsTQXokTIfxCL9Cy/x3eNE8kkP6Rxv/bKv5FTITF9/CPcP1iO1OfzDSgdO6Obzz+Xt99LWzWAetr5NUFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OQ0sCGN7PbSobA+1/kiiPNxqxxuzDe/TTo1l0Y+Nlo4=;
 b=ePUk43EpjtHHz3q+mOIDI0IBUGRlZ8xPDeVxaTps00BIZgwdc6MOc/X0bon4wfbg0F7YbN/k9KcDRG1iexb66LW7hQW65AwLirEkXFWkbwGBbeL86XNRlwIrQQty6/5QLPMSRzfpjUH22s2a5KxkWLbFTFXF+qGe+rbzz9CAvgsm3UeO/QdqMErpzfaxnHNSGqTcvLn/fqx88h8YeGRm/R9g7ew5d5fiEf93My0glFy60GsKdlsleMZdPchDz1YGGqYnst9tUuVKXhRlTHFyMf/6Bgq6mo0B5pwW7yDLJ1B9dg8B9UswReWC3Xts8HFBxq/whSY+aBKVAmd/ECaeTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OQ0sCGN7PbSobA+1/kiiPNxqxxuzDe/TTo1l0Y+Nlo4=;
 b=plHyZtrioMVmrHVGmXbIKMXZLYIIXiYTxGT2E7qVRhmw1ttfqhPqTqLKYT6v2iNrhrjQS4b4Mts/9f5x9dCKnOSyVfmrFpIVmj10H4ghmsWSNkoTSV2WNsT+Fe7EwxvoFHDy4KXmbZVSJIvKRt/TIAJuiYtc5ObBmNI3xDVy2d0=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.20; Fri, 1 May 2020 21:25:40 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.2937.028; Fri, 1 May 2020
 21:25:40 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v4] igc: add support to interrupt,
 eeprom, registers and link self-tests
Thread-Index: AQHWC0QREoUAbYHST0SSVE06D42ahaiT53AA
Date: Fri, 1 May 2020 21:25:40 +0000
Message-ID: <DM6PR11MB28909C9B5CE19650132FB7B0BCAB0@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200405121604.36654-1-vitaly.lifshits@intel.com>
In-Reply-To: <20200405121604.36654-1-vitaly.lifshits@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b08e929c-157f-4c86-f3b8-08d7ee163297
x-ms-traffictypediagnostic: DM6PR11MB4657:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB4657DDDA94326DC886828746BCAB0@DM6PR11MB4657.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2150;
x-forefront-prvs: 0390DB4BDA
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FD0rvqoSX05NgRcrlOnfxym4UBwR1adOS1+Bt0VNR5Z3yLr+McGklDGzASf6JZaYXFQQ1ULnqPkbnTGTtbU5yH8ilvavNdBs1v9PT4r9XCIWqRpGK7EtRU3l9ZB48j4oaYS9bUbpllpxZBQewj1ge+HF0Lz1O8a/VEGO+bKbfSCL/lsGqOxaAK8ctaKGrAKdCNglJUAwK85AByHAu6HS1RppafeHWgF+ek7Kx07AX1VryXGbGXwaaiyQuXp5jAT3pijMHDVRaP4qobfqNUdnK7dfvsjEGzgiEb2ROF8z2kr0zjZ4GLAKK1ZU1eKuyy+GGfgXL2Ino0uUQ2HLHU3L3s61Jf3PteueWI0O3w6hWRSs9+3Y9BJi6PqMRCSRyLwZB6e3I0Mk0893i4Qscyqxv4W4M/DJolwDEtup6sq95337gpb+ZLT+93iOdqSnOuhu
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(396003)(376002)(366004)(136003)(346002)(66476007)(7696005)(52536014)(64756008)(66446008)(76116006)(110136005)(316002)(71200400001)(8936002)(66946007)(8676002)(66556008)(2906002)(478600001)(9686003)(55016002)(26005)(186003)(6506007)(86362001)(5660300002)(33656002)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 6nzmce4XWjF4NmSPYvqv2qUwF7v73rtQrGGVqe79kxYjtbTOz5PXbm7ta6qml4DGuRyjpMPVQdzlhOuQcshYQ8E5m87vAuiVD2Iu2J5vPREtLgNjHs0dZKUx+bGwpqnBd/EHrd/IAzWWNNioOOE+rjuV8P/rRoezJm8dz5RNy8/Vqy2y8ngr4q1xEg9VgYLpyV2TNf8ZAYs2Cl754P6ofUs8N8d5InggIECjr0JI+Ixigwe81QiEg0gvMEMdpVC4XKMymjvZwIzX0MVXv/fipU4QNXqTb48Nt+C9TpVqBgc/1xbYhjPtVTYyL8dzbY7CxLI/hraRrYQ9Hg5mAdOboV0UcUzy+zodXs0mnCJIMjfuGT8mjNvolUa8gfa8ozpZX4HHi6dAJr42Vp9zpzvR4tYDaxN79MDeiVne8qtXV2i90dPCNus3c5UgbIx2sxbTdGMmGqD+nx2647FF0ho08lOt49XJtQ2BWB9biOrJPGxGqAun9JzSImwkIRy0Dq/TOfF0lT7ktMUjcVVh86NIwVD2+XxRjjC+t3Snn7T6F/0ZFHuT05fBsneYxuAMm8ft+2ILZnvkiCJwClqh8DZEUfPfbRKMX4BGd6EEAe/ZbSWM1VNIsXReopCya9LcsvqxVR4HBVOsW03JWxldDTuXXb4h35LAhGASPYHp9HFrBVLVaq2SRpsSl22N9sXYeHUcgDUhckZUUIyaNDXfrvTW90jMTsSHGSkkMQcsaaYOKn1PasvPmBrquZZ1d3E3eMAUyul4FWG0Ufvu331HgjS/0PsAuYgR2ENjWjnQ+yewl8tOp3eF87Qsc6ggqmIEZQP1
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b08e929c-157f-4c86-f3b8-08d7ee163297
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2020 21:25:40.0715 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ckgqMskT0MOE5a5jfyv55ve5nF0x1W8ZR/B80ErWXMZHSUh6YpyMvQ0ZvxvQ6Yx1btSuQ5ttNiokP9AS5dEruA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4657
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v4] igc: add support to interrupt,
 eeprom, registers and link self-tests
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Vitaly Lifshits
> Sent: Sunday, April 5, 2020 5:16 AM
> To: intel-wired-lan@osuosl.org
> Subject: [Intel-wired-lan] [PATCH v4] igc: add support to interrupt, eeprom,
> registers and link self-tests
> 
> Introduced igc_diag.c and igc_diag.h, these files have the
> diagnostics functionality of igc driver. For the time being
> these files are being used by ethtool self-test callbacks.
> Which mean that interrupt, eeprom, registers and link self-tests for
> ethtool were implemented.
> 
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> Reported-by: kbuild test robot <lkp@intel.com>
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
> v2: Fix return 0/1 to boolean value in igc_reg_test function
> v3: Address community comments
> v4: Fix interrupt test and address community comments
> ---
>  drivers/net/ethernet/intel/igc/Makefile      |   2 +-
>  drivers/net/ethernet/intel/igc/igc.h         |   4 +
>  drivers/net/ethernet/intel/igc/igc_diag.c    | 336
> +++++++++++++++++++++++++++
>  drivers/net/ethernet/intel/igc/igc_diag.h    |  37 +++
>  drivers/net/ethernet/intel/igc/igc_ethtool.c |  63 +++++
>  drivers/net/ethernet/intel/igc/igc_main.c    |   4 +-
>  drivers/net/ethernet/intel/igc/igc_regs.h    |   2 +
>  7 files changed, 445 insertions(+), 3 deletions(-)
>  create mode 100644 drivers/net/ethernet/intel/igc/igc_diag.c
>  create mode 100644 drivers/net/ethernet/intel/igc/igc_diag.h
> 

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
