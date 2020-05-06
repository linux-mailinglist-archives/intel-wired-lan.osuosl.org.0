Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BBEA61C698F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 May 2020 09:00:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2341220441;
	Wed,  6 May 2020 07:00:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eiay9lZeKLBI; Wed,  6 May 2020 07:00:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 83C9B204E2;
	Wed,  6 May 2020 07:00:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 161EA1BF86D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2020 07:00:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0B21F20447
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2020 07:00:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mv1qK2lqjR7L for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 May 2020 07:00:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id E5C9920441
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2020 07:00:07 +0000 (UTC)
IronPort-SDR: v86CGFBpp9eTMsKXgS4JRE81xQIVL6Hxn3yNr5APeJ55x/9VjijAxgyKzlONQHd6vXoMGacJzl
 0qjnVyHvrm5Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2020 00:00:06 -0700
IronPort-SDR: fLaDCqac3qQV8DbMIl55W14+uUAymiwocT0X57A4X3OjyHyRdSqjDRW33E7OVhpy4Rx7pZ1CL9
 zwbbvDxmUcuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,358,1583222400"; d="scan'208";a="461328641"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
 by fmsmga005.fm.intel.com with ESMTP; 06 May 2020 00:00:06 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 6 May 2020 00:00:05 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 6 May 2020 00:00:05 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 6 May 2020 00:00:05 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 5 May 2020 23:59:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LmT8h7YfFlwOOYxmHDMNtRdNrLUacI3M/5LPIFEYBem+b5NV5+iQlqExv3mmUPJu6a4iP29AfZEnBVWeyMKMnhSS1GIJCrtUL9+c3iOl1aVD4xBRcs9eZn6aknnOEr68VufRYIPIjfXOAyn/41sEEd+wvIHD2tHE1RwDmOBOKpX5c0kwTLpZ8qdF4YTPCvP28GXYyUjw9uvuFRpCPHOUMPTxiK76ZA+aoOReRyQS0QNKy/5R3gQYsgW2j8TIlHGosNigF57tr85/BJZkE2BkfCYwvjIHWQRi6L5dyprhun3DsAdka/ejK1bQonrNYq9wb3dXI/cO/MF0/H8oqhlOdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RfY/tPVcI5bmlyhLt9CqMPpi0NWBhZcTD9pfluosY9o=;
 b=jof9nEZ/e0c+oFu6M8GGBRD8Qwlr+04c5BKHVj5Kz0+klO3vNoHs8+7YbAGLQkXIJ8xRKl0ziXJy9ZZl7weYtmI3Z42VMnUUVZZfawDv910ZPYheTCcIQvC5eyuiob6HxS6GSmx/TgenLcI9KVt/cFmfl163ytF+DlNZFZd+OOTA1ZA4+s4z8L17zgwhQgIOjlefrH6HuEoiYhcPXmiqYLFsnQ3R61uuZh1U63uVFeJiZ71etlbBv/Zht5QjD5zFA5h9WO/X+iD1rTdF+elrH4WPETJfl6sKVaxoPc5f3qgqK+iXugqRMSFpVHLTYco2RzqK3RGciWULCUO7ZXDvDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RfY/tPVcI5bmlyhLt9CqMPpi0NWBhZcTD9pfluosY9o=;
 b=Yt7zeBlUxZJVGiEJ9NRm+oJdBTTSLn/fPsXCp/B5NHZFo0+4/FTYOS6K3AByPWULwSPmHCnd8Z/qmfQpD28Hu7riz3g61pNjg5D2+q3ZdqQdfovNH/eeI5PM7Mhw5VV+Qiw2pf3FiF94wusHsQYiKEwj3emCxw/uiQJWuUUjNfM=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB2939.namprd11.prod.outlook.com (2603:10b6:5:70::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.27; Wed, 6 May 2020 06:59:47 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.2958.030; Wed, 6 May 2020
 06:59:47 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove unused descriptor's
 flags
Thread-Index: AQHWId1vaRqAMIVnw0GpCNcz08l8Kqiao8/Q
Date: Wed, 6 May 2020 06:59:47 +0000
Message-ID: <DM6PR11MB28900156D80235D2A71BA467BCA40@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200504062925.18819-1-sasha.neftin@intel.com>
In-Reply-To: <20200504062925.18819-1-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.223]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 49045a01-20f9-4632-ba80-08d7f18b10ae
x-ms-traffictypediagnostic: DM6PR11MB2939:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB29392EF951939CB1A66FD2E4BCA40@DM6PR11MB2939.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2887;
x-forefront-prvs: 03950F25EC
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9nJg3XiHVv4oUuA3/vOgVVCiEDRGi1+Q1yFuhHpxzHW/3ujOezhtc78N9Ty7N6pAYs7mz4ToONcJLirw3xD07M/uO9Q1iSrStKAGBVcJYBH5x0e9qzVwq8gOLh0+uRWUzn+dwvS0BCoaes117/iCfsMK+55g4zPZ9huUo8D/4EBEcG2sPHdfJzVdUREVXP3ma/lTNIF76bmAHVrU16f1WOMbiyoOC52fLGypVVytJXGyc54/GzcdsijrX7g6ZjatmmI0gWgO0s7JJncUlPBQOjY0kzYtXNAOW9HVuae/9WjdI+oQuOrj9855rWB8bzxCFbXtRQL1i96ZE5a1VCM+Ot5e3O8kMq6CePmuV1SzQwX5/1/gU31sDu4mLWzk599zsxN/C0bTtrcjAB3Q3WorFJ5+NXBmeLbWMvdyrvSysaY9UtfnN7tctBuzqZCrR+TIfm5GyECksaK31iEZ1R3s5MPEB7Ft4dJE9feK2pFak8JkHsu6HVGhez3uyrpwLQtHAvMQH8cRJIO7oOcRx36cBA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(396003)(366004)(346002)(376002)(39860400002)(33430700001)(55016002)(7696005)(5660300002)(26005)(4744005)(33440700001)(110136005)(9686003)(53546011)(316002)(33656002)(71200400001)(8676002)(86362001)(6506007)(186003)(8936002)(76116006)(66946007)(66476007)(64756008)(66556008)(478600001)(66446008)(2906002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 3Z34vMkqI36HbuRimq/55iXYtwzgnAT1fpNvzcr+pSzacqpoUI6hCYehve5xs7p2chjxiQaVJ1h66moIhlXb1+sF5e8BWyNPW5DUi7gwpPABCzG+G0Lk4ann4i+4RlXOOXuIPHdb+KCeMcSnQUTlahZ5CglX8zV7ErD1nYKCYoaM7K9nfQ/L71vZ/Q549OXbCr98u7zM6brAQPenHORlBOptK5HhP3vHZAIV9fQTwiiTCT9AhfW6idbP8XW119E3Xt0Ga1IEtVYvkzhZbW7274VHI8ZCaPAvzOSHv4F66d3z45xyIVhVrKwTpRE69C+Q7eO/4A5p0W5EoU/3GQyZUt5Lh9Ck65puuLyZ+tCCW7U92sPkLtgglK51zjjQn220Sq3eofEfxtWGF/JAb3xY1tP8TdBQcVEidW9RKk1NDiwthPrv3AOzTEDCw5M0pu82juGuSoCi+7Z/s87vmTSP0N2+wF1VXMNQBEFtFl7LhXug5wmWnC0CDbZjyBYKRmtH0lCAkD+/M5W87AkXXmeNchKvYr3XAgPhpl0/Es3sgo6CWnWIf06TUNtNHg0UQl+y6m3qiFQlo6atASOlx4wqEuQ6sFCcMM8JCLLg+Xdx5KxWeOWitEJLbi4AaoTGRg98vJ1BLAJJpGAWxMmsZinAuXO9ipLgnlzBYzuAoFJJY00McBnOseSrEnp4ops+5mnrON4NMmEmqGgklzakplgn/vqRgnehCDb6XKwlc2tAj+nxoxxGcv7/OXdfsJdVn9rPDawEWutmyNT8Olh9Wu0InwZ0ZH80n1R9d1yh3Z3lD/HhQvYTdGPc5EWTpo+78toV
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 49045a01-20f9-4632-ba80-08d7f18b10ae
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2020 06:59:47.8089 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TkqCjvn0s49Ux/PIbZ0d1ZZWdVCCTZx72AGH6qH73kexoJ64V7TI5Z0k43fQIlcS018xjTM/s1ZE71o796cs0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2939
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove unused
 descriptor's flags
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Sasha
> Neftin
> Sent: Sunday, May 3, 2020 11:29 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove unused descriptor's flags
> 
> Enable Tidv register, Report Packet Sent, Report Status and
> Ethernet CRC flags not in use.
> This patch comes to clean up these flags.
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_defines.h | 4 ----
>  1 file changed, 4 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
