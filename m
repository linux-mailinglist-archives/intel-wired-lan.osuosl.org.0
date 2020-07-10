Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE64121BF40
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2020 23:31:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8B71C89E87;
	Fri, 10 Jul 2020 21:31:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DGmrd-mk98Iq; Fri, 10 Jul 2020 21:31:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 32EB489E8C;
	Fri, 10 Jul 2020 21:31:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B44D31BF3ED
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 21:31:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D08618836D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 21:30:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E67PrX4qH-xZ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jul 2020 21:30:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9FBCE88328
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 21:30:53 +0000 (UTC)
IronPort-SDR: /Obx+jZQDc8IB1TC/1RPHEhTdg354g8Br1ThVj/3oBqOonm7B2J+HIIXo+jE/nfI4GkT7Sy7sR
 uH5PZEFb+BpA==
X-IronPort-AV: E=McAfee;i="6000,8403,9678"; a="147414708"
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="147414708"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 14:30:53 -0700
IronPort-SDR: qvn5maSISFxW7xwbODSnpum49ysNFEmStuE1U2A2cqtjDowCrb7u1TAoUPawdCTkI9YJhPMgNA
 Egt350QipuFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="324812909"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by orsmga007.jf.intel.com with ESMTP; 10 Jul 2020 14:30:53 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 10 Jul 2020 14:30:52 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 10 Jul 2020 14:30:52 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 10 Jul 2020 14:30:52 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 10 Jul 2020 14:30:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fQ52HP8xw/1iFOOwbjI++KVAahJFnELLnN6p3BLJJqG+7LOs4ntCzm3ykshn9htHnVXIFBDi4ToM/hgbiWCy1Q157DBRP/qa8PdYwYhM1vWF5VfiRQ4JrEX4yK3WtpmOAl1DJTsNeCs8u4Ah0m+FRJyE2SYX6En+akWhshR8fSL3Gkfzo5LQ9O2J7gomIgTGVU59z4J6iGLIou72v7qrpM2UGntDXNod80cTcgjsFe4FXmPIiC277S7CcLL6p3vSp83Y9yR745BQ1ZpfNyuepMK2tg73dO+HbSzP6B9OSow6lA4+OIfIqWZHLXB8zAOQttlF1D2uejtBvlR+QCq4Wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vbt9nm/CK4QCgeuLdHmODYCP4FltmyB+j2VIHzjdFHs=;
 b=jrFklZh7BSXIiJh+NBz0oBQNYhlamC2THf6ZVz0S35rKQ+C4rQtBkilH2Xio4U2PvkFa2OcBwsS+rOb3rOanEQuAuubTKfHma02ZUr6/qTpB5ngTyxZ3ypiGDxwDAdPYK/y5wWD/UNO9RYfWTGxo6rEQDpcsH8lRSOOCWaHHVfAgGJAFU18mh1NKWwLEGEwvlAeLUQVeOXpWPNj4VKyHp8AynO75uJQKb0Sjy1VKJawnlDBu9b5RYgKiLZs2Btu7oUAL71stzY3VrzmgG7ca/lmDfIT7A3osF0D06w1FiQ4QcFxLl7O50ddksVouenLUOlTNsbRB1al6a4MS7gD7mQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vbt9nm/CK4QCgeuLdHmODYCP4FltmyB+j2VIHzjdFHs=;
 b=ah9RYYJuAMd0Zhwb3XP7+VmjmX4qTsxqOP02rbaCcxQ/M18ZwxumX53VEteoEORxrpFOn+S42wRoDuW1lt8WthVG0gkvjRWbCbbqXd3AdXKyZH1IVJ1hQ/gRGyEux0MMLmnWN1fKJGGCFGD6aqvd3XkLxSt1xLCpQIme0hPo6Rw=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN8PR11MB3604.namprd11.prod.outlook.com
 (2603:10b6:408:83::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.20; Fri, 10 Jul
 2020 21:30:47 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3174.022; Fri, 10 Jul 2020
 21:30:47 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S48 v5 02/16] ice: Add more basic
 protocol support for flow filter
Thread-Index: AQHWVlXjMLPjVMePSkOa0TpsBnjPHKkBVgPg
Date: Fri, 10 Jul 2020 21:30:47 +0000
Message-ID: <BN6PR1101MB21453C3B02D4B25F0E12C0978C650@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200710010644.33817-1-qi.z.zhang@intel.com>
 <20200710010644.33817-3-qi.z.zhang@intel.com>
In-Reply-To: <20200710010644.33817-3-qi.z.zhang@intel.com>
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
x-ms-office365-filtering-correlation-id: bc1c3407-be3d-4a75-a3ef-08d8251882f0
x-ms-traffictypediagnostic: BN8PR11MB3604:
x-microsoft-antispam-prvs: <BN8PR11MB3604AD929B957EC3D9F78F718C650@BN8PR11MB3604.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1775;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: onZtSJE+GREM4LceVSv5B4QIrfVesvpeD6/wyKnwn9VOdpFQjBESg82mgsKuk86kHZVsOcTWc42BvIt+lfaK+mfU+QtWZvCwEunOwKrlcnyPl14tCCtftGVT5ldIQkEDVBMuoZqPfnVxcNBVrhY5wb/ep/2qCbYbzedJtRVk5RuQErBJQx5TAEva1v1eThbG4EGOIDvK4Ov9GGZ5VxFgdAnVbeiqpqZqY77QD5xLtWFW7FUycoSQr9SDGb1ma9S5zaa2iD4BR8q0Qtq0wZ3fdPq/7aAHsYccRDzD7NFVxU2nJ2P1LAKntoTHp25BjMIPGg02ajPBvCJ/Ezr8Z4QhZA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(136003)(346002)(376002)(366004)(396003)(186003)(7696005)(33656002)(6916009)(71200400001)(5660300002)(83380400001)(52536014)(53546011)(9686003)(55016002)(64756008)(66446008)(4744005)(26005)(6506007)(478600001)(66476007)(66946007)(66556008)(2906002)(316002)(8936002)(86362001)(8676002)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: C+r8uS84A5aP8fBSH2gXUGmGCSsSRO4d3ZQ3QI0z/EFRx6SyNocDgGvi/WW9tkmX9hvxH+MnX9W1fhzUAGusxhT9HInYZZVLJYHOpD80bNrwmQHEwEZW+BFezVShgeedcoSeS/tXiqR5S75c0CW0axXt46SgNNk+WJaqrqlu30wvFuTQi39/GOmpGXoBfW0YgLmVdt/WEWS7DLXuyjkZwc2Tp3EzyntRH5nvZVC3LukXm35yZp31wGTaSYRgsf4GF8vj0F4iIMXI9A5agsTcPMkM6YQ3K5WbtRMjP6jSx2fYYW+4kYazaCCxk+h9LFJGe1VC1t5Ce5eZJeHURmEryvOR7fhAA6T7tp5791TreDUJp8BVAtFKwX36kQ7fcbTDJNkNO4QmsFmrSMtRlLawmfeiQ4qJ4f6DyRVbOTs8ikxZ7EGn5TyNHtcUUmHTNFSpTX4zO0uj8ixzGmKMvjhz07D3CD9lfADcmEn3C3AE18b1EAVqlv+05J5koCyqNb3h
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc1c3407-be3d-4a75-a3ef-08d8251882f0
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2020 21:30:47.6997 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kV1v2hsSQWvc7qAcTdGEV75zw41kFgbx97Fwx8zvVcLNYocQBxMIlMftwe/yjvp1NKW7gaVR7n6ox6j/qWwunJwAW6ycr/ABdKoqSFiapNI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3604
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S48 v5 02/16] ice: Add more basic
 protocol support for flow filter
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
> Subject: [Intel-wired-lan] [PATCH S48 v5 02/16] ice: Add more basic protocol
> support for flow filter
> 
> Add more protocol and field support for flow filter include:
> ETH, VLAN, ICMP, ARP and TCP flag.
> 
> Signed-off-by: Kevin Scott <kevin.c.scott@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_flow.c          | 181
> ++++++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_flow.h          |  20 +++
>  drivers/net/ethernet/intel/ice/ice_protocol_type.h |   6 +
>  3 files changed, 201 insertions(+), 6 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
