Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1384D1CB6BE
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 May 2020 20:11:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B915626E84;
	Fri,  8 May 2020 18:11:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x8pNe5aJPcVL; Fri,  8 May 2020 18:11:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E3840226CA;
	Fri,  8 May 2020 18:11:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2A6ED1BF340
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2020 18:11:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 25E6B8608D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2020 18:11:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IEF6xvaBNnUJ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2020 18:11:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7966C85FD4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2020 18:11:36 +0000 (UTC)
IronPort-SDR: IeW4XUzrTyrqMZj7OszSgFCwXHYqlKmfHL8nYO1OEZ3sC6gFysp46HxSJz3ujfudgCaQeLY9+I
 H+H8gCQW/TRg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2020 11:11:35 -0700
IronPort-SDR: h8/vJmvF+1V97yYaJHzMbEZvOld0EPGqXDm2rxtzaBfS7mE+SAW7wCSAEMDlQLs6ByffEB0FpV
 xqABEBOYOYXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,368,1583222400"; d="scan'208";a="249823197"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga007.jf.intel.com with ESMTP; 08 May 2020 11:11:35 -0700
Received: from fmsmsx124.amr.corp.intel.com (10.18.125.39) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 8 May 2020 11:11:35 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx124.amr.corp.intel.com (10.18.125.39) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 8 May 2020 11:11:35 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Fri, 8 May 2020 11:11:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QOxPoIHV44tQ7v6PyqZGEwbysq1pkaoxVM7o8x9JkloSYgYag9eNx0sXyOMzGoSfQS3whpicnJLTvcjvuvHPsziyhsmovFnofDpB2re8F00VTLhlwzbyZKL15J5kTfbIJYkHH1IWszPDzwWi0d//FwiXujMyFpBgyHsmu/Hwq0D0OaotSlYp1r1moLr0Z+I9l3fMpIH/rT1pG6Q2d1utI7h02lD6KNlUEdXHw98YR2aNFVUF9Gq/KED00fcvhheNS1ald8hwGVTIpUWQF2fJWdlD3xjFpTY/1RB4/IfD2GuPAX7dGHABM8RuEMMIIujDyZjBmbDO9r2C/MgIGuXprw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ixx2w1txj4zdmbeWIt+1Hm9p4wQWW/WNGw8ZS+ZezQQ=;
 b=QC4fiJBn3ETz2bF9YHJiEO/Ti3ZBB+cxq4FhBS7+DWpv8WA8Kv/ZvYqoUbPXHeIWuTSVl4wT9vV0vaoNOtBPOVmIYWr1L6QQKd7SNmISGQgKyxYY5V1gOwLJt5QL5iqyJJWB2fEYLOUDOFyEnrC0RWdG1W9l9bgXq75KzDDYKgd1tXXJq8gf4UWDkjUsfHPkltwzQz23Fg+k8TvQkiAUz1EoTPg57N19tUq40lhUmPVxCwjFW/ZAZL8PP5uAwSPbnEbDy6OfT89HbI9GLsiFCibJ+3Umjxv825MRGwkB/kEKCyhwd6o0uLO4fQFazTiui5rGEBgKHamvK3nnCnOV1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ixx2w1txj4zdmbeWIt+1Hm9p4wQWW/WNGw8ZS+ZezQQ=;
 b=x8J3A2wu87UXd6u18wxT1yCKbQ0tjXvHsFWYRkExn6hVWpG4gncU8STtUNNYHLxBt291d6h0/J+pXVFbXIjuNzV7jd0XvjOEbPaIMXu9SXLtOa4b/pRstdmG6nkT6Dg6knYqfJsGf0OHe+Ef3uB9YREJ+Tj1ui8vx6hdHWtfRbU=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB4508.namprd11.prod.outlook.com (2603:10b6:5:200::32) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2979.30; Fri, 8 May 2020 18:11:33 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.2958.030; Fri, 8 May 2020
 18:11:33 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v5] igc: add support to eeprom,
 registers and link self-tests
Thread-Index: AQHWIuaTqJJ9kpAzb0SpCAtDKdgU0aiegjEg
Date: Fri, 8 May 2020 18:11:33 +0000
Message-ID: <DM6PR11MB289041C1D48B674A3C59B1B1BCA20@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200505140638.44937-1-vitaly.lifshits@intel.com>
In-Reply-To: <20200505140638.44937-1-vitaly.lifshits@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.55.52.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 70c51443-aae2-4e2d-6c7a-08d7f37b3d7d
x-ms-traffictypediagnostic: DM6PR11MB4508:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB45089EDFA84D2291EE017FF8BCA20@DM6PR11MB4508.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2512;
x-forefront-prvs: 039735BC4E
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ctDzyNgY1mLYYe4c3a+3fjUDCjPRaYsytHwxcEI1EFGhvIL/eqMKxjtuLvpYe3GjtOz53nrF3UraIAEqOz/c4CV/g6Vy4xG1sHG2eQwMVJOZ9i5IHmSluki9izQU5aPbBujQFr79jKNti5FRPWoGFo2FC9XjwlZZHq2FtPQ+7H3+Q2uTGsWbxo3a7y0o+St5fA2XHuQ7Po2Ywr19rrsQBZZnz/nGR8LbU94NN9WCTO5w+jOt0vnRc7KZPnj4kBcQ0mp3qLo8W9m6qwbHY7V4mekGH29kogORS3H3+E+xlggqXcLt4rdUadKVQLKwhk5lolEIIrN1EHfc4leAaMn4tjZL0lHO2VlCcAcYmp3adhsg37esfHOLrjepbG758nbOMhzzC3yi6yV+MTIBDgiD1CiXMERdQaTxNY37Y4qX8jTWZ6wvLJqk2XxO9h8ePkE70UeHTewgt0u51dD+J+aXmK6iJkQaAwCH4ulITC3zakihmepqbacP+COwIvefLMGvFPVvej4GZgH+xiN1WdQZJw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(136003)(396003)(39860400002)(346002)(376002)(33430700001)(76116006)(33440700001)(55016002)(66476007)(66946007)(71200400001)(86362001)(83290400001)(52536014)(83280400001)(83320400001)(83310400001)(66446008)(66556008)(83300400001)(64756008)(53546011)(316002)(7696005)(186003)(6506007)(110136005)(5660300002)(478600001)(9686003)(2906002)(8936002)(8676002)(33656002)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 5lt+SMj3rMbHGcTiNv1c7r/kRD4V1TWNLZxaB0u5EmzYIQMXFtfOplZv4A5raXLAUJb9jB+kUrHkw9n3F48brnIL7ENWEWjYqZyUTwjD5yayjJxNFNu1HXpdZVn8XKSqBu7K6Q3VDg9oGcWkxJy/ic9VnD63G/r0FoMHTda6uQgNXbRtVvLKeB0Qy63WivaE5gyJ7pXk8yKuuTM1/60SCvt2NGx3aMw2EczmQb7O8Ml7bg+xFyQ919+6pE9+MtFByQAx2dK2kAk0QuIInRAHhnO6ZAmgtlNJxeCFLINJR3r1siGqLIKD7KbOroMAP2hGYcvZJShSFE9Yg6/9H0UuMKquX2iwhFOeLCsZFGIqP2ftm7qpxPixUzrQO5lfWvfVklPr8YO731fqvcH26280RrQnzUTvs7p3IibuMu/iPGBYRN8Kw1Ne9NsNi3tGQxlX7NQrZ6FXm/twEwNagWBYfvqrxvi8kU5K5FJKDqaMyUY=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 70c51443-aae2-4e2d-6c7a-08d7f37b3d7d
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2020 18:11:33.2902 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: doTfdYJZ+7Q8z8QU+RFo5wAAFvUnZ+gJmvcSdXFPae9ow1w1HaekabTm/ZWBm7Ym7bX/+2XTXWJKp1gB/RkTuA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4508
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v5] igc: add support to eeprom,
 registers and link self-tests
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
> Sent: Tuesday, May 5, 2020 7:07 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v5] igc: add support to eeprom, registers
> and link self-tests
> 
> Introduced igc_diag.c and igc_diag.h, these files have the
> diagnostics functionality of igc driver. For the time being
> these files are being used by ethtool self-test callbacks.
> Which mean that eeprom, registers and link self-tests for
> ethtool were implemented.
> 
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> Reported-by: kbuild test robot <lkp@intel.com>
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
> v2: Fix return 0/1 to boolean value in igc_reg_test function
> v3: Address community comments
> v4: Fix interrupt test and address community comments
> v5: Remove interrupt test in order to avoid kernel panic
> ---
>  drivers/net/ethernet/intel/igc/Makefile      |   2 +-
>  drivers/net/ethernet/intel/igc/igc.h         |   4 +
>  drivers/net/ethernet/intel/igc/igc_diag.c    | 186
> +++++++++++++++++++++++++++
>  drivers/net/ethernet/intel/igc/igc_diag.h    |  30 +++++
>  drivers/net/ethernet/intel/igc/igc_ethtool.c |  60 +++++++++
>  drivers/net/ethernet/intel/igc/igc_main.c    |   4 +-
>  drivers/net/ethernet/intel/igc/igc_regs.h    |   2 +
>  7 files changed, 285 insertions(+), 3 deletions(-)
>  create mode 100644 drivers/net/ethernet/intel/igc/igc_diag.c
>  create mode 100644 drivers/net/ethernet/intel/igc/igc_diag.h
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
