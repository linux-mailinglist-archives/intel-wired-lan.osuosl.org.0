Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DB307C49C3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Oct 2023 08:14:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CD6C7611B8;
	Wed, 11 Oct 2023 06:14:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CD6C7611B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697004883;
	bh=RQsoZIx+qxDt5Tyy65qBCCchaWorAO2f3doLGw69KRs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uXBTNVwZcnB9i/wpIQcz9kOq5WhlgTJQiW5biE1RQC/VLDLDDWazdJSStv5Ov91KK
	 CjJ9nABzC1n5qeRTEhJjX7dYg80BX1AwsQN1+Lg8xvXku5DGg3Il2NyZndE0XKOjt7
	 Lctd4uNzdLik9IMZCJf3wzadFe0xPNcxc5GC0wzSZZkLRdAbXMOcE7Jh4fEJCbbl84
	 G79GQx6+f6HlRLbEdEcuuVFvW5JSJlL4HkqsVdjicVY5wOMipvZzE/m90QUSFitkXs
	 yMg1ca2v/2JL4FQyktcrv38Be2kvuHr0ZMowHKLZGjR06SeonfyGpLAUZW2vwWzwyB
	 qxA/Yg/XGR/zg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bjhsMmwJf9G1; Wed, 11 Oct 2023 06:14:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8351461192;
	Wed, 11 Oct 2023 06:14:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8351461192
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C74C61BF293
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 06:14:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9BBA941EB9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 06:14:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9BBA941EB9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7rTCf2xGogt4 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Oct 2023 06:14:35 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 525EA41EAE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 06:14:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 525EA41EAE
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="387431308"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="387431308"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 23:14:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="844436289"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="844436289"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Oct 2023 23:13:59 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 23:13:57 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 23:13:56 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 10 Oct 2023 23:13:56 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 10 Oct 2023 23:13:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HWSxMchSDHn8yLFxaPor5M+2ZFFW8m+MajS7n5EVY7jhvlYNQ14geUFtbDi4AY2gQqNRzmZcIjG7kt7xsqu0S9xj2njwomlvDzFu53Je7lv3FTyKksfjPmPmw9uRkJYkmzVDtUeL6NdN8Vj3JzerukX5ay0zNJ7yHnAKPuJmyJ15MZ7tMg94AbrQcmpvSPGo79vvXDSDeE7UJ1s4hOBUH7EFdbMP31Dr1Wcl4vLN5MOirVJwr4Sw5Zv9tzAcc6HaNHZIfBjmV9HA0ZYlPZivWWVAJGOhu9vHbFoAL4hMjgy7r9zW/9GVGXe148Z3hx/00UuzTFRQlT05I2VDYkyIAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W+/kqGITcWM1iA2/Tety9uDhsi+4J9Le7wHKx6bXprs=;
 b=m/pvjVO5xVNjpTT1FKIIX6q6Aghlao6VaWWa6xZxIkYtBlIn2P170xspW+a4pcC1uRGX5LWdjLooBXb0grg8RavqXyFTwmB7O4FUKNaG6frFQluJYw4lPHEk5DqnCRky7FPT5JCmc3My4T1ogjQhvLsPrg7gIQBvMgOPj91u53WqEQzGdJJ4Hp737mgAqw0KUI5e7xTIGLNrHWuNoIZB2l2tXUnkXJtnDsX8VitskmCk6H6xaKp+uVHK4MC2WgwcnTg0yF7xuKQZY0iImEKP4JkAboVXQsKj153Vz86Yr5roHM6zRAkABW6DAflMFfAeo+OC2uJLRX+rU8/213O/Jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by CYYPR11MB8385.namprd11.prod.outlook.com (2603:10b6:930:c1::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.36; Wed, 11 Oct
 2023 06:13:54 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::e372:f873:de53:dfa8]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::e372:f873:de53:dfa8%7]) with mapi id 15.20.6863.032; Wed, 11 Oct 2023
 06:13:54 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: mschmidt <mschmidt@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] i40e: prevent crash on probe if hw
 registers have invalid values
Thread-Index: AQHZ+EYgMhqHjmSenE+DeU8LNJioj7BEIxHQ
Date: Wed, 11 Oct 2023 06:13:53 +0000
Message-ID: <BL0PR11MB31226FBCF4DC31E9DB149701BDCCA@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231006111139.1560132-1-mschmidt@redhat.com>
In-Reply-To: <20231006111139.1560132-1-mschmidt@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|CYYPR11MB8385:EE_
x-ms-office365-filtering-correlation-id: 61ff29c0-e172-46ed-923b-08dbca213e9c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Row5qaY8d5EIkknJvq3rz0gLS+QV7HkiXcrv91tBmB+xD88d8XQgeMLqTIxV/BOD0MjcV27VeCF2G1g4n7ZNSm6tRa8iSK+sbAwxwkJZMEgkfvEQRpfTx80yItzQOf4jOv9yRwvok/O/F41ZmanIoBPDn4uuQy135U3ISdkSu8yO/O8C8uaHRw1F9s9uwEJfke2oNZhO4h/qiCqnLbFH6wRKXvd1yjj7g63PSjNllQeGsyJI+BytXo/XrIIlTK0mVkzWsvZN/S7xOmny8giSUGvWNcWvqbvilKpTYUSzBCZZaZft/3HshamC1Ie8sgV87T/ruNYjRIaf6Q7gRktFQJi6oUeTBwgJf/NMdOtrMjpVhGw7J9wvzwa4WSt7f++r9SHdG0yrQxRPUVRnQxYE/d/YPCw+QEsItc73ug/Egq0tRlF2XRxORMgjO52ASfZ1BnwSY5xTdeleVwCk0GTscxNcNVzzq/Eip8WSxlmMLvffEUuk7R4MXWkBvVPsZImPZGfi/odgEExFSTB9Zebx/hnGsdpOSGeO6LoizIeZ5ROzhNjPYi4cRF/tHQA7J0wyoa76LrwvXFCNigdRI53kVqzcHA35LVh2UquNzE7X+zI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(136003)(366004)(346002)(396003)(230922051799003)(186009)(64100799003)(1800799009)(451199024)(71200400001)(53546011)(55236004)(26005)(38070700005)(7696005)(8676002)(5660300002)(8936002)(66446008)(2906002)(4326008)(478600001)(66476007)(66946007)(64756008)(316002)(52536014)(54906003)(6506007)(110136005)(41300700001)(66556008)(55016003)(122000001)(38100700002)(82960400001)(76116006)(86362001)(33656002)(83380400001)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?YsO/i+yJqt5z0lXNUPyeQtrSrbpr783GJwStbKIKHmVQRfhLmoETfze7LfrH?=
 =?us-ascii?Q?CxcqfnUa3FrDyR2Q5+43X7NR13z/1wyTknRrytcr4+tP4/InasAXwUsttwI5?=
 =?us-ascii?Q?9L08fOL0JTQ8J5g7z2jeprGgKHmy5aw+GQ87fplz4qzafDa4ZNsS5g19+Clc?=
 =?us-ascii?Q?hLSwXlmfLlpAGxQZ9t0dVk81rk9reQQWpAcRaXPwuz4CNcj2bimmDC1jBBk5?=
 =?us-ascii?Q?nQMpDczk9cbnU4pNkOdA9SsEjNnocgefIO9Z/ejb3n88a5eYiDCMBcDPXTpB?=
 =?us-ascii?Q?BY9eQKNZodDGFXmZtpffxnugS1JZOHmi0ZMF8n9uEaZlmp+uEz2qPyQ2nBVb?=
 =?us-ascii?Q?sFrLk8y7FUuYO4MVeTsqroklENbA9yu1ypgnZUSqzCxddt8B6yMaVvyGJr/q?=
 =?us-ascii?Q?1iIA3uZwROddpj0ASOKFNi15sfQHzGi2lanX3OVAgJgsOFPK5nfc5RLk1P/I?=
 =?us-ascii?Q?AXEEeoYzlg2Usng63CatjjGLvqzn0X0mA1rBNixuI4vFX/1F7714eYNxYDeH?=
 =?us-ascii?Q?yDil57ZSUOFEqG0si23EDJUzd49geIwGcoPSH2/L0HQEaYaAm2PMl6j3YVDf?=
 =?us-ascii?Q?Eif+DrgFphzwJJrc2I5kuIh1aLppDLOrvzH6nRaWMPT2czDwKYG2b+G4a79k?=
 =?us-ascii?Q?q9Bfb3J0fLU0coD+l7puJNZcy31q4p7EcAQREXMwW11sZVRSA68MeugUAi+t?=
 =?us-ascii?Q?Zex5x76Tyh592JXVM5er9CDDabM1+g9xHj2x6Nhz2KUf1D1iAesXj2ImUhTL?=
 =?us-ascii?Q?tg9Y2dlqltiCt7uTsNMvauZBTTMHn/zItYcliFYs80Lxs/fBqF7QLZKxqQFT?=
 =?us-ascii?Q?D5qrRLbr0CjR/++2NnjliyesWmqA8u98SCbNLjDbKSw2ERTzwn2P1rVyrz1t?=
 =?us-ascii?Q?4YcPxTQeYetMtA0vV2b+ITSMwRvdd5MXTvz/Ch6tmfmzrdljpPV2vpa1pxuO?=
 =?us-ascii?Q?TosO5m44C05iMsI5Sp+9ASWgs392vBK5rBxxuKeAQUoeDGiMbwpLnmBXL/hR?=
 =?us-ascii?Q?qkYb1EWAY2G5sSmGUNI0nwGCX6FxLbhWD4XGNDS6bTiEc3UCq9vAlJ/R1w9u?=
 =?us-ascii?Q?8y/rGywDtnNEAvt0guHhraQESH9Ig4iBAfPBSqN7NUckIbGHfwQYaZWi0Q63?=
 =?us-ascii?Q?HzLFzvNo4+CcgyYBJxFFqxmz24v9rKUiFR2DPRGpiRQouP9dvUxiw1nAyxeV?=
 =?us-ascii?Q?Dn67YdO4AuBNQIg0otD3Eqc82gWDJLeTBr4HrAcJRf5ztd5gZjKbaqMRyK3p?=
 =?us-ascii?Q?ts5S8VMr5dNfA68W83OLnDXDuJrK+cet9CYW7X/XTbhUhI43OioFmpPzc5Zh?=
 =?us-ascii?Q?VwCJ8V3/k88fV5OeeqBiYONU4CjW+sTjrAGSIFIegudBwn/0/jtsebterkwq?=
 =?us-ascii?Q?gVRDd6EVV3gbuvE+Vy4wLvEfVLnl1lCO92f0IJ0BWzxDS5NVNmR/Be4YM1io?=
 =?us-ascii?Q?gb4O8cTR+tKTi8rr1YYiDOOdUoyn4VJUM9bAy4mFAt++Ay1jAy3YH/xRrSaq?=
 =?us-ascii?Q?xVehcHyZPeSRPntC+BvL38ea42mbYmkmS7Pw039ti9YdQ3VMHzDicr8Oh7lZ?=
 =?us-ascii?Q?KRZzLJPAZ0sZ9EB92KyPKFPVXvGJwedCMMHq2awLW0v+tUrdZqOQ6JEOO7oD?=
 =?us-ascii?Q?ng=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 61ff29c0-e172-46ed-923b-08dbca213e9c
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Oct 2023 06:13:53.5975 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5XKyaGHWljqGyTuevk3iQSp3152RjQVAPzfPEt5j/1bAIw5QSYk2fRZkJKMB/kxOY/Y1JrNohHJbWZ0Mwq3rz89/+io4ckaXhYr7A7lLkNx9h1VxE6LUO/nO7OP0LY++
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8385
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697004875; x=1728540875;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qSYlffos6gN1M/T+1y5CIwomo7fCAwxf/0p8oRe2tA8=;
 b=SR5lDrnu1z6IDufhLqjR74k1krJMpU9Mkz1dVrSfFyaIhM3cNa6NXk4Z
 UYXJhhcmdQ+YybDg5COJdLhqp0nNBZ1ff/b1SMANSaJKsJaZ+eA1FgIz+
 +eK5rmrYnd5ym6wO5ZHcKhGwr6wRf1ei4LgPwGtgK+CCXObWHC8U1OqA6
 hVgPrZQn6xzKeS7H8y3OmPGfFeuYXQZcMAOd3LHho0oKIQkCHHRyvmFuj
 FTWyV3jHFIJkeuqnfKHO5BRTlBn33tTQLItU1ID3sgFWXGtftlzASE3HF
 P6GsgIoCEt8yrHh8vQTdpH5sGVAioxhDZctlX0jgUAEPXE311b/UTDckY
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SR5lDrnu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: prevent crash on probe if
 hw registers have invalid values
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Shannon Nelson <shannon.nelson@amd.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Michal Schmidt
> Sent: Friday, October 6, 2023 4:42 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Brandeburg, Jesse <jesse.brandeburg@intel.com>; netdev@vger.kernel.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Jeff Kirsher <jeffrey.t.kirsher@intel.com>; Shannon Nelson <shannon.nelson@amd.com>
> Subject: [Intel-wired-lan] [PATCH net] i40e: prevent crash on probe if hw registers have invalid values
>
> The hardware provides the indexes of the first and the last available
> queue and VF. From the indexes, the driver calculates the numbers of
> queues and VFs. In theory, a faulty device might say the last index is
> smaller than the first index. In that case, the driver's calculation
> would underflow, it would attempt to write to non-existent registers
> outside of the ioremapped range and crash.
>
> I ran into this not by having a faulty device, but by an operator error.
> I accidentally ran a QE test meant for i40e devices on an ice device.
> The test used 'echo i40e > /sys/...ice PCI device.../driver_override',
> bound the driver to the device and crashed in one of the wr32 calls in
> i40e_clear_hw.
>
> Add checks to prevent underflows in the calculations of num_queues and
> num_vfs. With this fix, the wrong device probing reports errors and
> returns a failure without crashing.
>
> Fixes: 838d41d92a90 ("i40e: clear all queues and interrupts")
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_common.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
