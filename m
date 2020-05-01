Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 857891C2062
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 May 2020 00:10:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 438F887407;
	Fri,  1 May 2020 22:10:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m0JAxrmFvqTt; Fri,  1 May 2020 22:10:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7AC2C87419;
	Fri,  1 May 2020 22:10:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E09641BF45A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:10:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DBFED8841F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:10:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bljCGchohCTE for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 May 2020 22:10:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 61ED5878C1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:10:21 +0000 (UTC)
IronPort-SDR: +qkXa0WHSc4vJ8+fr6XBxLMClI8Jk7d8V+MsJWwQTEj0v8d8k3Px9f4HvV11u2QdAFSMtD7bhB
 E0uReSQHg/Gg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 15:10:20 -0700
IronPort-SDR: M6dQbbcekc5om9BSXR18WOrUlV/uZjgRwrkCCpxa7Ley0/PR80jOrEsEZxLeKSgoKfco50PfuI
 wl4yIpewnGRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,341,1583222400"; d="scan'208";a="294006505"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga002.fm.intel.com with ESMTP; 01 May 2020 15:10:20 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 15:10:20 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 1 May 2020 15:10:20 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 1 May 2020 15:10:20 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Fri, 1 May 2020 15:10:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hDxb8qoWex16RTXqkL+ErLH4bL0LfFXi8qDWMxFP0Lwl0wOxiyzdjN23I5Ro/p+idiohDmz2zJXNfU37GdaVZtDxkvSJGs3cApvaCjVQNwZd3ZRvNK7EVyDuaXcVqJe6d3GeE+gzQEwTrQgERzFePj7wlZI/DsjS6wtOYIu3PlzfkbPfH81I+dKX176X6sZriNelHK819XhctMDujVuomHMHr7q+lLHxZhqhQQBf6tYLN4niftE7I/3D1pOU0XO76Bt0cWljdOQsY/NpCVEHw8SNBmFBNxwbaS6lV1gDWwXTr5pTEFwh+l60X0gCV8NIgcyZ70tEYqBZNSLB2gxfCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UQAxOrav+SFjINM77zR32C2sQ1KBacyo6hWf9uZJens=;
 b=OsxlkP+UApTDTNOKnBmObqKD8oNXtoy8jI7053HapO8e7cD2vg1D0qZAkpmIpHCpR4vh66XZ6HNt/bIgjgjtCrE41Y/pyVcFHZzPHtPUlFeYp39q765kMeryaN4tcs2urjawCkKA2Y9vcTF9xiXUkQE/7Eu7GMUQLNIXfl7oATDMXJsjaLuWsJTvAgQVVYtjcA2VsZYnkU99KhbnlYK33zfBOcK1Q5xwc8IlQC0Er3majFTBWKlClS4kPsmgQV7eWwK5x6NKIoxh5KAGdP7F7LOb5rv+iZ+AzkTirC1gmtdySIj7NdTnCTBmF2luhdka1olNmSHnN8IA+k4e2aVtAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UQAxOrav+SFjINM77zR32C2sQ1KBacyo6hWf9uZJens=;
 b=dHSExiuTUv/dWXtJP4GR5pPFTMWJWG/OAcRykWptk4yN9N+u2Mwo6iB2F7Ntmdj4TKqhldAX1/RMwvv+S6Ycak1Lq6VLsYiPZyAshAhcHqkxyVfdOceNnC3eDpFSeRCKgyg4wti5J0sN34pR3RzWaKrJqRc5vnsJvwA48gMYfy4=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3116.namprd11.prod.outlook.com (2603:10b6:5:6b::29) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.27; Fri, 1 May 2020 22:10:11 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.2937.028; Fri, 1 May 2020
 22:10:11 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 03/19] igc: Cleanup _get|set_rxnfc
 ethtool ops
Thread-Index: AQHWGnV0ywANHhq510WPKQDULRS0z6iT1XpA
Date: Fri, 1 May 2020 22:10:11 +0000
Message-ID: <DM6PR11MB28904CE78E131B395602ECDABCAB0@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200424201623.10971-1-andre.guedes@intel.com>
 <20200424201623.10971-4-andre.guedes@intel.com>
In-Reply-To: <20200424201623.10971-4-andre.guedes@intel.com>
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
x-ms-office365-filtering-correlation-id: 31f6fb10-3d8c-4f8a-b550-08d7ee1c6ac4
x-ms-traffictypediagnostic: DM6PR11MB3116:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3116AB463F5C9032204C61EBBCAB0@DM6PR11MB3116.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1107;
x-forefront-prvs: 0390DB4BDA
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ybVaEszbentdSkkxb+FlxANukvvbMpPUzq14UXSk/Oaa4y9VtGa/VhOHHoLDojQEy12/h72c9fDwa6EET4nF9K/WVeDLFp9YipXhNFEHiJ4whz/kGeHpc1mvao8igHDjCYGRD+yhvmb6VW5YRxVzaKOUiKMGRXdY+3LE+s1FiHkPjwTctUJlPF3x8E+Dr/2KskABQyf5mq1sRBA05B/nJqe+/fB6M4OoB5P4/hYfZDph+7COrVj3b7crVJL6LIiOEv7ebv+diHfbWv8oWeQKaA9GjguAt/VmJ7sTCzoh1xZnVdK95FgjIWeNFbvDBNpImO/QO1ndFa0b/qxUeVKw62gnJTHmb2emb3N4LgLSoob20TDrPk69QZHmlthjWtD9b1AXYfBACdTDqsAkzDt+DJQlcvrNbCBrRAGOorOmLSaS6rxFvuO2idwzI3AVcciZ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(76116006)(66446008)(498600001)(86362001)(71200400001)(52536014)(66556008)(64756008)(66476007)(33656002)(8676002)(6506007)(26005)(2906002)(8936002)(186003)(53546011)(7696005)(4744005)(66946007)(55016002)(110136005)(9686003)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: QtAJ7KcQ5XYJ7ZONDdxQ89jkb1WyIpxQctyrDFv0nnxi299jz6ueD7hiCXXd0k5TCY7M0cmj6uZYenAAfXmlLijbIWQj08cjbusFPRrBfWPtWD0jqhlVNjB7qD+1epcYgm+TJ+uXfmeOY0786dk3tkcMsDsFHYmmMei6Hy9hddG7iBlte1sNBLSmIfDSdtxhSJOoz/mzQL+UEZQG6w9eGwXkkk358raRcEO5XS2mHMyLKqlTM1fMGJB5f6VSzXTXRLfc2WrtyXFFoeHI5z8IDwlIyimIroM1GibADYRjoQlYujmbumJdsbPIUazIG5kox3rkbDCM4Y05KlKOxtoyfm+1tCs6RnV6ewWkQf0eCrMyAX53jnEryjTG1sel5AMd9utfCEMjOStLZ55DikT1FZ7fxicj0RpJjtX8TNCjb0RbloeANbZCuDS+LTrQH/0gDc1sD+UJAE7cYwp5ezsQzaarMPM3hqmMz1fygSDwRasHgrY07TRvWUdpZYStJXCw5XiMnAdasSg0UWYz8AOQsuCQHp5N4ukC4/fcuHRD8Fx85oFaVSBhRBV6/DZZRyVpu74xCMmDCfC0/+wvXlEVYbwVjouLcoWE3NUxxITEiBP8sb5kst5oBDSB+i69uJOTjOvuPBC1d9bgwXId9OiutwlS0xNRhHivUBK/6poXGt0kQ4uR6BlbJbVmPOTZuXsbuDL4412B5lj39t8F6PHgtKJbaF0FDvCmLdYQd81LwAGONlxuaf/yO4BtZru8vuxsKOmAe+XpYmr1eiwvVcVfevEngNtBi9nKu1NPwL5GvOwGwz1WcoOMM6wjlkTc8pf8
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 31f6fb10-3d8c-4f8a-b550-08d7ee1c6ac4
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2020 22:10:11.2696 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ewhkuB5XzncmMWAV5Uk41DPJStDtNaYehaqGlCJ2lHg9u1IqWfUYgxrwemNOHw+bdp7KYxXNp/iBi3n2L/pWag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3116
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 03/19] igc: Cleanup _get|set_rxnfc
 ethtool ops
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
> Andre Guedes
> Sent: Friday, April 24, 2020 1:16 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 03/19] igc: Cleanup _get|set_rxnfc ethtool
> ops
> 
> This patch does a trivial change in igc_ethtool_get_rxnfc() and
> igc_ethtool_set_rxnfc() to simplify their logic.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_ethtool.c | 33 ++++++--------------
>  1 file changed, 10 insertions(+), 23 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
