Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B6A32779BD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Sep 2020 21:54:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 058BF204AD;
	Thu, 24 Sep 2020 19:54:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KOKyU73ICqa4; Thu, 24 Sep 2020 19:54:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 070A020495;
	Thu, 24 Sep 2020 19:54:10 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B6CF31BF3C6
 for <intel-wired-lan@osuosl.org>; Thu, 24 Sep 2020 19:54:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B1FD48692B
 for <intel-wired-lan@osuosl.org>; Thu, 24 Sep 2020 19:54:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ChW82ODr6Glf for <intel-wired-lan@osuosl.org>;
 Thu, 24 Sep 2020 19:54:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BF1CE86973
 for <intel-wired-lan@osuosl.org>; Thu, 24 Sep 2020 19:54:07 +0000 (UTC)
IronPort-SDR: to4NdwVc6d18drKt0xj5zcLLljPREFv9a3udSOpHMZuIGEjMw18hkZJ/6nrszBLXddgqYZQmaJ
 HSYZrB7vrznw==
X-IronPort-AV: E=McAfee;i="6000,8403,9754"; a="222923210"
X-IronPort-AV: E=Sophos;i="5.77,299,1596524400"; d="scan'208";a="222923210"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2020 12:54:06 -0700
IronPort-SDR: xJxaaEZfO6Wt8c+LAn8Ry9l8YcDhuwwZqUKXK2MCaKaM6RDVptVMeIvYuuIx/TufmVOKgJUWb8
 wWyTWZ1hTP9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,299,1596524400"; d="scan'208";a="305954965"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 24 Sep 2020 12:54:06 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 24 Sep 2020 12:54:06 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 24 Sep 2020 12:54:05 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 24 Sep 2020 12:54:05 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (104.47.37.57) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Thu, 24 Sep 2020 12:54:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CA5Ow/9ATrZ/+2p4IUjbn1XK7UOVx1m97tdyJWOr4Ge6QsgdUF+83rtAD+oDptwqZdPK4Vs3Sy0HADkQTsTKHRmiVpxgtjxbl2AWszfX8MG8FBdjuhHXrdvdk9t52JIuCdwB55STAQOP62NO7yj6SwzdITvj421xI3FLrvLnWYt5H5NtoLZS0xr4X0GBDuKAsoUZSvd4TNumjFwbH3aJQwjBfCR+kJiwIBaiwb1smjWMmOVPCfDOgwOr/Zn1vPUDuDj9QKMi2CXtSTnOc/gOOL089uiS0a3+5+GUxNP0CEm3p/PyL7TJNnaFl+tSrDgaNu8AqIGOZ7fTFA713AAohg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CmzCsQXP8yNXASHgKeMXNnxD5Kz1CBvtZpycvNPXqPg=;
 b=DEsdNSbCEAxQCiPu/9OfTrKEOYwm7mZdV5oKUWc8yUYjs6fJQMnJr8SsqEeHCu6+Z8Cjse9Jz9e6T5rEVFxShPAp1iGT7mWcRVMoYFozbHZ3zmwLT+0eZcgsZO9mXF3WVXk97e4+gu2yM//Ga+iW9fPObrwY6pV27Wh3uRiXaShjz2jrCRpjTU4zbXJluu0V7kq0SJrRGZ8z+2FUDGgIDdUOdzDTFGV74ykDH1lFUgClG5itiIlRSz9UZgplR6xL+p/Ou55JsnJFhw784q+mUHxxwpwLyVlgVJE97pT97SjbNSCedaSPUBB6BjIiEZmDLG+SVdxAM+dfI29cTFz86Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CmzCsQXP8yNXASHgKeMXNnxD5Kz1CBvtZpycvNPXqPg=;
 b=yx3Rk9d9gh+E2XSuKhWSSB24Y/RVaDiauOXphqdbj2jVy3yKS8KjekMOhVMWmhw2a4fPr/i/6N9OrutZIWq+USWIj5IPEmqOjYobF8OF9IBfKMjkxxkpWM9i1wlmtB5hE9DlrRXvyN6Kgh3v7Va9JgWazUoVPkk09Q8BQ4gCXU4=
Received: from BYAPR11MB3606.namprd11.prod.outlook.com (2603:10b6:a03:b5::25)
 by BY5PR11MB4323.namprd11.prod.outlook.com (2603:10b6:a03:1c2::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.19; Thu, 24 Sep
 2020 19:54:02 +0000
Received: from BYAPR11MB3606.namprd11.prod.outlook.com
 ([fe80::2564:dc47:e59c:bfd9]) by BYAPR11MB3606.namprd11.prod.outlook.com
 ([fe80::2564:dc47:e59c:bfd9%5]) with mapi id 15.20.3391.026; Thu, 24 Sep 2020
 19:54:02 +0000
From: "Fujinaka, Todd" <todd.fujinaka@intel.com>
To: Arkady Gilinsky <arkady.gilinsky@harmonicinc.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: General question regarding i40e driver version in upstream kernel
Thread-Index: AQHWkjizkKyvyPz3uU+q5myuEgZ666l4Mtwg
Date: Thu, 24 Sep 2020 19:54:02 +0000
Message-ID: <BYAPR11MB3606ABF2B6ACCB67097C2D32EF390@BYAPR11MB3606.namprd11.prod.outlook.com>
References: <33cb749a85e28598dd19e5041d896775b58fb0e1.camel@harmonicinc.com>
In-Reply-To: <33cb749a85e28598dd19e5041d896775b58fb0e1.camel@harmonicinc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
authentication-results: harmonicinc.com; dkim=none (message not signed)
 header.d=none;harmonicinc.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.115.69.8]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d06bc77a-6d6a-4632-9342-08d860c395ee
x-ms-traffictypediagnostic: BY5PR11MB4323:
x-microsoft-antispam-prvs: <BY5PR11MB4323C3EC8D25425540B538AAEF390@BY5PR11MB4323.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: F9vjzGtdlrvAaVlMWRhmtTsJ3MlMbTsBaBHA4XDJuM22oSUCOUp3he4/1DoeOYXeklUTx8aSp6vRw7z3V27t51FDlGXrkXUh0uxr9J+jr5U+vdHzPonHWTwGMSoxeVwnmv4OWxNUrndzJ88xGwhsSzf6kGTIv5FngG/36ZQWVyWSu5pQ+sCKqpTBBVjECzkD68OCRzhf1hf5gNVmimOQP9Rn4ZtdmnIkgjJVF7j/wAoRtCzhaWbgEB1GEu6FpO38qhGYL8mrGkIaJG56pUTS5LWbZFwfnq6PatWj3xRVSicnYRJmLBvH4totIBHZFfT6CWCKuBzY9QQI20LE74dkDuEwPZ0++gn0qHCvSMIz7XS6ybSY0OAaj1nw7YCLHh+JplwCqAH173dRBVUeSWrqtQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3606.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(366004)(346002)(39860400002)(396003)(136003)(66476007)(7696005)(86362001)(110136005)(966005)(6506007)(33656002)(53546011)(316002)(26005)(5660300002)(186003)(4326008)(8676002)(83380400001)(64756008)(66946007)(55016002)(66556008)(2906002)(478600001)(71200400001)(8936002)(76116006)(9686003)(66446008)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 80GDxglvgqmptcNi0p9C4PJB7zmLt8mQkgqzUfHuMg72WyGqX4SjR9FTyuoV2tzgKm3QUKyWGJfI57rFTsdJcX99k7e/T6eDyWC7/Eoi2C3eqYKjJQMgTxnW54EgTz4KJnKMGy9T6DyDKO2v/zBa3l1CeAi5y9OMwU3s7VJRU146H3nWdFheuJOwzUSRPcXd/zB8bdyaekMe8Q4uK7xiWUTa0a0Jw5/XLda8KtXQQNbJq3btLC2eWB7x8YrJQ+OYg29Z9FVs+06I0MlRM9oFsrs1w9j1apIWskNSy89AHZSWle08UhrCh0GpptJ7VuULdYm68oJY2z0VmxUA+zdZ8F0aDjjSiQSpeT0zqKTVXqy51Qs20EKIxKw2D4A4iFRxgC2x1TU9niRt9E/36qOrl0qkcamXb4u0XiCYcNByi8mE8NiKSjl6Xuir1onlUoUzuDGIhd5xWRsKVLsnjYKic9dNDJfPYKHSMLq89XIbLtCF6u9FW2tK9EXBVpUyyCKhC/7cclogdP/pEvC+ofSnresFG5tHgsOy1NtuQLpR9rfiNCkG86k+da1yMARI1xQMO5xjDONT/pfn+wXw214rz8LSuxOOXN5mqG18zFVaclZvxUjchKkF0TmUiASNPGXRFW5bPl8+ZFNY7LQ/Bgn46g==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3606.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d06bc77a-6d6a-4632-9342-08d860c395ee
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2020 19:54:02.2115 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Nh2OC9ztU63YfEqix/9h1qr+u4U7AuNIySO9utHl+YuwvAIOw5Q8ekqkKoYaJ8fqe+QsLcSAD6J5FSZr58ZrpA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4323
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] General question regarding i40e driver
 version in upstream kernel
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
Cc: Oron Peled <Oron.Peled@harmonicinc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Unfortunately, I think the question is why the patches in the upstream kernel don't make it into the OSV kernel quicker and that's a question for the OSV. In this case, Canonical.

I know we've had some delays getting patches into the upstream kernel but we're working on that. Most of the timing issues are due to release schedules and validation as it probably is for your products as well.

Todd Fujinaka
Software Application Engineer
Data Center Group
Intel Corporation
todd.fujinaka@intel.com

-----Original Message-----
From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Arkady Gilinsky
Sent: Wednesday, September 23, 2020 11:05 PM
To: intel-wired-lan@osuosl.org
Cc: Oron Peled <Oron.Peled@harmonicinc.com>
Subject: [Intel-wired-lan] General question regarding i40e driver version in upstream kernel

Hi All,

I have a general question related to i40e driver in Linux kernel.
In latest Ubuntu-20.04 release (Focal) with kernel 5.4.0-42-generic the standard i40e driver is quite old (2.8.20-k), while on Intel official site recently was announced newer i40e (2.12.6).
Also, the latest upstream kernel is 5.8.3 has the same (2.8.20-k) version of i40e driver.
See here: https://elixir.bootlin.com/linux/latest/source/drivers/net/ethernet/intel/i40e/i40e_main.c#L28

Could, anybody from driver maintainers, clarify why there is such a big gap in versions of i40e driver.
Do all the drivers, from 2.8.20-k version, not stable enough, so they were not taken into kernel upstream?

--
Best regards,
Arkady Gilinsky

------------------------------------------

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
