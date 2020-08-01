Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06C91234ED3
	for <lists+intel-wired-lan@lfdr.de>; Sat,  1 Aug 2020 02:07:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 371B8888A2;
	Sat,  1 Aug 2020 00:07:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LflFzvM5alKU; Sat,  1 Aug 2020 00:07:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A7F9788898;
	Sat,  1 Aug 2020 00:07:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8FFA61BF9C6
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Aug 2020 00:07:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 86CCC8878E
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Aug 2020 00:07:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vyUypACKp2yD for <intel-wired-lan@lists.osuosl.org>;
 Sat,  1 Aug 2020 00:07:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AF3C18878D
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Aug 2020 00:07:10 +0000 (UTC)
IronPort-SDR: WeAENiIJKEdW8DyzbIdIWyC7iCQs4WUmxWNOPgDd+jEjHv6Z7rjXE4G6oblJyZR5GDVjTwPyeq
 mNM97gEXYJdQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9699"; a="151091134"
X-IronPort-AV: E=Sophos;i="5.75,420,1589266800"; d="scan'208";a="151091134"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2020 17:07:10 -0700
IronPort-SDR: /cPn7/y2SIghq0D+5l29pAKRjHuNBbaRIn5A+o5NwWuOYVzgXkY5J0WoSjPIZsdVcByBcwBjSk
 mbNPiibrANTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,420,1589266800"; d="scan'208";a="331279672"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga007.jf.intel.com with ESMTP; 31 Jul 2020 17:07:09 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 31 Jul 2020 17:07:09 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 31 Jul 2020 17:07:09 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.36.55) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Fri, 31 Jul 2020 17:07:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I4lMiejPxlzJsPMKNFEkXNhqgEVbamBd+55IYSRMOQ7CQNdfxRvwZtazn+1VvKeWjTr9LoVTV5HIgXl9jDKI9vdSJUaSBUKsJWng7jUjh2g6u2fHnkjxjvRNK83zn7+jLMgqoT/mkbhgHYOdiKvp5jBi2lMHPYIQn1ttw7NaCygwkGXw/nI4b5/Wc8U9Wr8BNRUpzr6UgCl+dCbXAug63EfHQN7ixWsV+yTOVAViIQ33yaIlWJ+BDTMXgqfbroJxcFrc8N8B/n6aQQ0ppbVoivcD39+lvzoP0GlOThGNLa75KmT8Zxmop14G/nC0RK2iw1cyVkF1/Oinu78AdZLC0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=39RrbJP7J1r5WrRp42RgoHwvjNoO6PA1x5RH3iARHxg=;
 b=jBQpuyxYehy0gm4iAD1qRNcseiJWc0XCXdJcPY3ImgqC2F0NKFYegkdC8+Dgn6Hugb4ty2TVjdlYL2PXWUm9IjK1Dl+ebE7prlgzNXKjjRcNgm6fTIwHKNR9H7VnixSff83GbiOzw0iMExKSzJZRFjFZ7LrSQdzLsgQIRqByWBnoJTh2qiE/HiMe/qGdYC+n1F+6QtwzF+KPujvLY3lmCFyqaZAFiPG9wDjLti7bmD5OIhkn87qFGMe/nehUVzwVcv4zUYPn17OWYvDd2bWustJFUfeuuxc2k6vwJdG90twzDrQgpkM6Y5r2pxH2jpinBZgJ422PU8g6LtlmRcVcyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=39RrbJP7J1r5WrRp42RgoHwvjNoO6PA1x5RH3iARHxg=;
 b=GXb9+NedQyVB4+kKkuMnRIsvhe0yxmsnX3dLhbNkdufZPh4miNdwY21uEe0Fm6lbbM2fFdvUy4OlwBP5/s6GZEQUllERD6OIQtNb4XfV2dRzH0CTWHm8/PXLiiZaHHwPcVwF/M7FnvOAon8XpYh0Ed+3rb59/F31FHDS7SN+vTE=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB3008.namprd11.prod.outlook.com (2603:10b6:805:cf::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3239.20; Sat, 1 Aug
 2020 00:07:08 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::f8e7:739a:a6ef:ce3b]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::f8e7:739a:a6ef:ce3b%3]) with mapi id 15.20.3239.020; Sat, 1 Aug 2020
 00:07:08 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "davem@davemloft.net" <davem@davemloft.net>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v1] ice: devlink: use %*phD to print
 small buffer
Thread-Index: AQHWZotEtyb4aH6jj0i1x7sv9mm/wKkiXVWAgAAE8oA=
Date: Sat, 1 Aug 2020 00:07:07 +0000
Message-ID: <1e14e2bd97cc6e49d60acfa03ab1fa0c777a46ac.camel@intel.com>
References: <20200730160451.40810-1-andriy.shevchenko@linux.intel.com>
 <20200731.164921.1194657794631782709.davem@davemloft.net>
In-Reply-To: <20200731.164921.1194657794631782709.davem@davemloft.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: davemloft.net; dkim=none (message not signed)
 header.d=none;davemloft.net; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.215]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 46578d3d-fb53-46e2-6529-08d835aed4a4
x-ms-traffictypediagnostic: SN6PR11MB3008:
x-microsoft-antispam-prvs: <SN6PR11MB3008F768163C3DBBEC118FAAC64F0@SN6PR11MB3008.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3383;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lsEb2oOhUKfciec14eyHn5abXyAQjvppU3OOrch+SisAEwuqqTYRyNhixkeM99oHlrGZQya88r3JqoyAq06a7o2C1LWt8oc2M9Ga3WVTN/eHGz1z2gw0WFGUdJcgM4kZ5jmLz+QELVSHxMZGqibreu8srzyxrPuEl36hYTPmLaUxNADA2gy05ADWiKJERnWXi7YcDJ7ew1+m1FYsisKwuzQZjp2CWZ9/orFRmtdTnYqvypvCh9GfVUXpollhoS1sWX8hIlV2lNyywu/hdagF8Vwrn2nKmUUF9TwF4zxVEu/6h95ho4GVboFKJsP3EzMmJYlAqc7vrxJZ4oP+vYFoTg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(346002)(376002)(136003)(366004)(396003)(478600001)(76116006)(66946007)(2616005)(91956017)(2906002)(66476007)(66556008)(66446008)(86362001)(36756003)(26005)(186003)(6506007)(6512007)(54906003)(4744005)(64756008)(8676002)(8936002)(71200400001)(110136005)(6486002)(4326008)(5660300002)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 8ChmRj1wdMZU6Adx3Ba4SpcJs+Z1VYydxO1p5jV2DSSASMioqRHEhF2kG07plz0R9WQKVtOaPOL/OiqxW2RXUwnBX0KyPP1rb5qKxH8ZXTeTGvB8JpSIgbybF99b4oroTnTUiBZdQo9ucYefYJX3KZh1sM4WKJEte5bMphTO8isx1GSe7/n9dmDl5z7JHQ6UPEyGKFM7tbJJLAiuhxCbmbfLSjJcbLvfUoPuH0aeOnJkxl9ZTTh7CbrvQQZ8Tyne68c5kB3SxKlZY/6laLcxEtfmR0Imi873v3jej/AVVNBP0tX1QfSuv4AK3CRSncGOIQoe9RziNHNLoKw1nTIwlPjIL4K5fYF6/8OI7KMCy4xTMEBrRE4a9aFxs8DNPuLRVJrwxBy5wefWhAuQS/fjaESV/J8AyXeDvlzkURWirBOyhUdOl1pp4Ydpj+kdQ0UNrbdukhdGFXSypbdw/5v6Imboz6TYbcTXFoYCCMHXc6jWwgkpSdj+8zWh1cUBupwOqX+mW9JI7soanJRLvr0zTocK8UtOSlPtLZSAs70oXk6LpilVVzriU/K8YsXph9Y+uIZrvKDuBVmrjhxsfw+Q4k2wR3VypdzGsU7ZRxy2J1ASXIPR9rher4G/NSSBCAkxaY0Vf8BP/RLXtSXmnB4ulg==
x-ms-exchange-transport-forked: True
Content-ID: <2128E9EF8F60E944932A34723C191E9B@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46578d3d-fb53-46e2-6529-08d835aed4a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Aug 2020 00:07:07.9391 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bdoC8/B3ZS1pOJ7bxZdDjSk6EcuP93Lrd5lFOsPGzvLPbvDgcVvInyIPmxMw74QoUHZMLYUFGzUcVU/ZLAZph1dQDWnh282bunGqYJFETpU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3008
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1] ice: devlink: use %*phD to print
 small buffer
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
Cc: "kuba@kernel.org" <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 2020-07-31 at 16:49 -0700, David Miller wrote:
> From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Date: Thu, 30 Jul 2020 19:04:51 +0300
> 
> > Use %*phD format to print small buffer as hex string.
> > 
> > Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> 
> I am assuming the Intel folks will integrate this into their tree.

Yes, I'll take it into the Intel tree.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
