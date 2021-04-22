Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C75F3688E0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Apr 2021 00:10:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6A885403FB;
	Thu, 22 Apr 2021 22:10:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aHiS_dNMiRjm; Thu, 22 Apr 2021 22:10:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 45640403ED;
	Thu, 22 Apr 2021 22:10:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 26F841BF3F6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Apr 2021 22:10:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1548860A4B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Apr 2021 22:10:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xWgeksy_M0lM for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Apr 2021 22:10:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 60D8760825
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Apr 2021 22:10:22 +0000 (UTC)
IronPort-SDR: raXMjnaM4W9yBNrE9XrtPeTSCJ2o7Uqif4sEhdUCwzgPDDXfnKYxf3xD4OXMAyUtWgt9cmb6Em
 0uBruNpkcctQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9962"; a="183464381"
X-IronPort-AV: E=Sophos;i="5.82,243,1613462400"; d="scan'208";a="183464381"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2021 15:10:21 -0700
IronPort-SDR: gjk+zRmvuUQ1/f42EgvXg9asLmd0OwDqXT3RqqOH6dxEOA56pkInkpaoQ3ssuHzl6gSlDCWr8w
 QM8UIxDN0YGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,243,1613462400"; d="scan'208";a="455972551"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga002.fm.intel.com with ESMTP; 22 Apr 2021 15:10:21 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 22 Apr 2021 15:10:21 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 22 Apr 2021 15:10:20 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Thu, 22 Apr 2021 15:10:20 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Thu, 22 Apr 2021 15:10:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iUHy29F5/cwMyLxOEdYgN+IsSKjRpECysuHEfhyOZzevzNuHFjCAG/4jB+UCAcPFlkL9vxYx31PvKrGBXyIQvauwGITogRUz2h57gZGv0DCxhkbfz5LZAms8VyX11BpOMKW10+gYYOSqJeCLRm0sEYmDGoXyMhEGBWTytx+AFmzpGayL6NjjZcOsnIwMejMpyG8iofFxLQaVoPtZMEotqDHpbjaZn7IMtgo+GURCmx4MGt2SlLCpUPhOrA1FabQ7BAR8hI2ryXCNS1erP+U6xlnpMP195htKvBYLI+Aa3bGqf4HNhjm2VdmvanJTzc7e58E0g8A6EgN+Nan+JuetzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HRoIFNWNUGbNsgkuUQ3TfU/xMpJ0AOa87NOcAQZj7vk=;
 b=AT/CKVNxTDSL1MWqYVmrcw4nqAI2U+wHxrRJ3AHXyarOHmexbcXoyiHM+hYBSvYqVOuK2n89iAVYwoEbueplT+N//AUYm2hRBcXRcQiZteCbOsr+13+HMwtt/XIEs4xDR0lRTdG8oAoYbpG7VP6UYTiQC4kiQdg937STafEXlGkp5TkUYvjmzSwkJXHx4Ids9OrFWId+Vj+G+VYhLIg55sQcLnyrNb8C4Yr6nWQ8Hd7hTu0ENsFIicFfzgBTa+R3uGPvREwOKs67HM6brACwaZRsxWIEo6xAaxp1MN5i9vorqt4s4dRQ7AonUxFG6EjIEllO6CfjAvfUeaQ+UI+7Tw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HRoIFNWNUGbNsgkuUQ3TfU/xMpJ0AOa87NOcAQZj7vk=;
 b=Qcz54Hs+QzI8b2Ujq8j92sytbTsVmw2cOd2/6xByBiWZtjtK9QNjWj12H+96W4pA7Jh7aOpC9t5BqZ1CbJSzLisYKTOUuu37cAOOJBUArA9rD7l88rBg2XLn6Q81BO2NrsfqCi92aZUyfKXHYAjfkh5gwVJFvJgBwWcxtCN1i3s=
Received: from MW3PR11MB4748.namprd11.prod.outlook.com (2603:10b6:303:2e::9)
 by MW3PR11MB4699.namprd11.prod.outlook.com (2603:10b6:303:54::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.20; Thu, 22 Apr
 2021 22:10:16 +0000
Received: from MW3PR11MB4748.namprd11.prod.outlook.com
 ([fe80::a995:ea7a:29cf:d212]) by MW3PR11MB4748.namprd11.prod.outlook.com
 ([fe80::a995:ea7a:29cf:d212%5]) with mapi id 15.20.4042.024; Thu, 22 Apr 2021
 22:10:16 +0000
From: "Switzer, David" <david.switzer@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 06/11] igb: fix assignment
 on big endian machines
Thread-Index: AQHXIdiJ20MMhgJoSEeDfHQw7ukriKrBRMfw
Date: Thu, 22 Apr 2021 22:10:16 +0000
Message-ID: <MW3PR11MB4748D6FE8BF6FB550555D1DFEB469@MW3PR11MB4748.namprd11.prod.outlook.com>
References: <20210326003834.3886241-1-jesse.brandeburg@intel.com>
 <20210326003834.3886241-7-jesse.brandeburg@intel.com>
In-Reply-To: <20210326003834.3886241-7-jesse.brandeburg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [50.38.40.205]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 20b34f5a-54bc-464a-bb77-08d905db691c
x-ms-traffictypediagnostic: MW3PR11MB4699:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MW3PR11MB469906C1D7198C83A25D46DCEB469@MW3PR11MB4699.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bVmv0LH37jE/Rk1uJ3wGuNlSP5/NC890CSC4zMDfH8mS4cNjx7cW1FloUnYgUdFjxNidU81qB/kSRuY3h06AtYm4KxhuqrXG9ykxCM9cFJrjgKNITp74COtl+0xETQle5byBLAggSgctqB/S+Tt3ejeqY2sGWKp8V1HKNKf6AxmyrXfIKoILr85Ht3+TZmdGvA2LYIMmhwb1w2U8QPsljYPeX2/4qQCPkD6y0YojbiXsvAP6/kw1LwwrsxVTd2AIRspfzwRZYWAq9z578sd4U5kZTROXkdtDNjQ/jLb6TpAxRcBcr1dhVwkjqUFU703NjHSLZ5fPTdFtldOeLP933RouTEx/6QhTKnLgHYOuTyc4JLdctXJAkORZd4UFHIqsWDTolZDmjPPzac5nRBCMsNJa31cgZKjj6iQjYzQOt4mB+IeQNulys9BkqWQTTTZODWEx2dKMe4UPS0ey/1wTWt1nUrlgUH1QP/UgFqmhrCEr3xFH5lC8BTOGuDswznFmLRdS076dIvVnfe5apw4wwqeq6qnvMUmV2quWjKWLHN7GIF2ETHSFVGEzhr57gyVt9GDrNb6C++Uzior3aargbeYBS4MHMi8/Tj3rqWuJWMQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4748.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(346002)(39860400002)(396003)(136003)(366004)(86362001)(9686003)(8676002)(52536014)(66446008)(38100700002)(6506007)(7696005)(83380400001)(8936002)(122000001)(66556008)(66476007)(55016002)(2906002)(66946007)(186003)(76116006)(64756008)(5660300002)(26005)(110136005)(316002)(478600001)(71200400001)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?OZhMKyEfIJU33DviGAmakoJhnliEXo7e+f80W6vGlVWa0LJW7gE75okH2P/X?=
 =?us-ascii?Q?3qqdcTJKSVpR7KZf+jqyQKyI5ARRCkpIT46fJ+d3J69jC3Ph4sd42XS1lquE?=
 =?us-ascii?Q?Z21yQI+J4klXGlZv/a2+D0pZR/2a1H8UFDbyEeRDJfDMyvjQL3WmNjxBdq48?=
 =?us-ascii?Q?hOcszrqTFpCXiZrZvqBcVTZwC/9aL8Bn1Zur6u6eJ1J2QLis7ZsYbvwY4uVp?=
 =?us-ascii?Q?4Jy9OYjZ/Y+nF5zH7bMfHZaADE6pUc3IubPOOTOpe9cNEQYCzt44gysy5027?=
 =?us-ascii?Q?C4JhauUVXgGkoM+Eugat2UsMTUe8Yk6PMJI65ZIViUFJiBd5j+CFH3GsoQ2b?=
 =?us-ascii?Q?kjKkpBndx9G0OW0lBDtZ3xa80uBqpS3V+OCUQwhlsFxEoj0XOYhyPdvwuncs?=
 =?us-ascii?Q?U7yTJppapR3QkKsGY28elu++HVhbwbbrR1ftivwQdgl1lswNg0KwYTaSuppO?=
 =?us-ascii?Q?DHG1tOdjryYvH+D17xFj9oooxk1di9KzOhCse7kESobRyXyQ4gRdBGiS880x?=
 =?us-ascii?Q?EJc3ar4oQbb57RNAffnScT35cCfHoDRJAQeuiSNpVihIxpgugAo8b4qReyjJ?=
 =?us-ascii?Q?36HDjBDbsuguLrwIXvU/W5I4cD4uopUU7NJr8WugTgOu9dECluo11ERorOI6?=
 =?us-ascii?Q?pHALQvsqa5CZhWTrHfRluaYspnniMycfmsKZ86Wad84nsIGHz4dzw65qIz/K?=
 =?us-ascii?Q?ghJZutIQnGzFwIdmojahdPCFz5mvVi2l2yDH9XMf3LwYUZza22Lhud5BIWCr?=
 =?us-ascii?Q?w/NPoz0vsY4EecsspoLjX8y5zAENhn/AlYNERsKJV974tdlQ2/aWguWeBLpE?=
 =?us-ascii?Q?q/8FrkQfKPCd3q+M0p+XjFQPDLUHhBXuGWB1WsY6ZYB6f7raQn3X2ek1SWSe?=
 =?us-ascii?Q?qQRs5YxHGPJ/f9omH3G77jA4kAc7h0+ohTiOrkE1faYYFi1mUanOydhN8L0M?=
 =?us-ascii?Q?kFK2o8hKdZWlCz9LzIRefvpm9QgtKgGeQPHWf50+qq9uLI1+UsUAZijiyhwg?=
 =?us-ascii?Q?9jIUK0pxOD4lssPJQUY+M3cN3One/xgW2scO0x9AKBYVoDBz50CYNs2HF4uv?=
 =?us-ascii?Q?4QQlfBw+gAY9cU9qYqpvq6mQrUf0U6AuGz2y+ToKJyoR7f0WDNZRvP81ww5u?=
 =?us-ascii?Q?L4eZOjeE1lqr9pzTMPwGVs3y4ZUYgRterr8Yjg5ka4tcC9QMzxjoC1RjWiwS?=
 =?us-ascii?Q?LNFuRjCygu+BA2tOMo0dH4z+dlMRhcjKmATeKC5DORG1qrSoR+oPAohkBbTM?=
 =?us-ascii?Q?KGkxPuLBeD/FBpfR199A5R4APvrAQZeKsi40FQOZbTh2bhnVZHboepqV0UnS?=
 =?us-ascii?Q?EPM=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4748.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20b34f5a-54bc-464a-bb77-08d905db691c
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2021 22:10:16.8286 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pf5dEe6WQ/kGiUEdjUbVVw8M/Mxajd/U/uYqVpI6E7WSXRlwQy8UhM8Te+Q3gLlNOJaUY2aRL4oowLY+53FhnQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4699
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 06/11] igb: fix assignment
 on big endian machines
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


>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jesse
>Brandeburg
>Sent: Thursday, March 25, 2021 5:38 PM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [PATCH net-next v2 06/11] igb: fix assignment on big
>endian machines
>
>The igb driver was trying hard to be sparse correct, but somehow ended up
>converting a variable into little endian order and then tries to OR something with
>it.
>
>A much plainer way of doing things is to leave all variables and OR operations in
>CPU (non-endian) mode, and then convert to little endian only once, which is
>what this change does.
>
>This probably fixes a bug that might have been seen only on big endian systems.
>
>Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
>---
>Warning Detail:
>.../igb/igb_main.c:6286:23: warning: incorrect type in assignment (different base
>types)
>.../igb/igb_main.c:6286:23:    expected unsigned int [usertype] olinfo_status
>.../igb/igb_main.c:6286:23:    got restricted __le32 [usertype]
>.../igb/igb_main.c:6291:37: warning: incorrect type in assignment (different base
>types)
>.../igb/igb_main.c:6291:37:    expected restricted __le32 [usertype] olinfo_status
>.../igb/igb_main.c:6291:37:    got unsigned int [assigned] [usertype] olinfo_status
>---
> drivers/net/ethernet/intel/igb/igb_main.c | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
>
Tested-by: Dave Switzer <david.switzer@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
