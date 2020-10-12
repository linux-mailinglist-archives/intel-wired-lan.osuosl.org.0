Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E2628C346
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Oct 2020 22:49:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3ACB820347;
	Mon, 12 Oct 2020 20:49:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sHFyXjLuLKQA; Mon, 12 Oct 2020 20:49:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D8D9322C51;
	Mon, 12 Oct 2020 20:49:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2BC021BF304
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 20:49:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 12ECD203B1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 20:49:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2P4E9ifcmhRW for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Oct 2020 20:49:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id 5512D20347
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 20:49:15 +0000 (UTC)
IronPort-SDR: O4RrI3LuNzim1yR1VO0g9mKhEKomv3RQnyo3EYllQqqVdm2sShYpaz1zZOGM9mgrhyTmU4sxrX
 ga2ytXvwhkng==
X-IronPort-AV: E=McAfee;i="6000,8403,9772"; a="165914419"
X-IronPort-AV: E=Sophos;i="5.77,367,1596524400"; d="scan'208";a="165914419"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2020 13:49:14 -0700
IronPort-SDR: iAzZ0g72EVBgITh7cfduMb/S0k6VrFMh5O3paS7rMPKqrJmtkm3BBUfNBJ+ox2kJ1Mmso6NHP8
 2x9u3UL9wLzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,367,1596524400"; d="scan'208";a="530113213"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga005.jf.intel.com with ESMTP; 12 Oct 2020 13:49:14 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 12 Oct 2020 13:49:14 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 12 Oct 2020 13:49:13 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 12 Oct 2020 13:49:13 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 12 Oct 2020 13:49:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AC4gwmbWJNobH+A2KacvTdqXSRnJ+6lIjiuWk4TV+uWxuBx/UxozHmErtXsH0TvPD8+LTTpVehNNRWBhHt9yems5w7Wz8MRVV5eAEYFd1Go3uELlIdqz39eStjmoLbQ8VOySAotgCOqvGnXzqlATBGAdN7MuknIYJdMfwI92FOTxzXaNSed4POBraZDLCzeX3pk03Ww0SbPi0KF/PwKmQPwxqVdN+YaG7sOCpbIx7rwsVcNIf9B+7yfxkguPuikRY2wHDSOmnaK70gX9rPxDAiILzhcLWhyUG8aFv1Po/sXsi0RuMXy+ySU+5Eqg4OXHAcMYS5syhwKm1eZMdyV93g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ssec/QZSOl6IgToyNvgK7qsWfugriWPTESfcLT8ppqg=;
 b=kkdYTmwCCVVnL+URaOQA2UOgN/CIjQ5uk2SEiX0N7LBkX/wEVg/VaSQ89PvcYEQjbf/Tppje2HUb2pSUVvNhfRz0tUK0KBosQGWIQKttXy97uX89TeDbIve6UT3sOHW/v1LVUnowQ6Mzgb91oGcRYKAo8xhI+DpFrAXa6vmQgkLcf8YPzaai0PgeX/fU4Gdte5ideFaOK5JasJDu5r/OjpnqsjO4Uqge0Lzb51VGbdiQIISvqcMvrbeiF8xuw7jSRuPBAhq7sSDvUBt6//BPktWR37gEdYkxaI2j93VIQlpUZH9ox861kUUob6ouAzCWbPAGd4eyOrka9DeeDJmy+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ssec/QZSOl6IgToyNvgK7qsWfugriWPTESfcLT8ppqg=;
 b=IlsJWDL27F6+MTC41CizLyfWfaR0LEDSNCve+l8WMEedgPuPwIw4zvMIUZDGc/hpAaPR7hhysGcBLb7fWLUu3ZTdbPyqMeuyrjW/vGdGnjKHxFjAvPRPsPNsKSKSaKt6FUvy1Nw+TdquwgoGyzBi4MNyusvPC5ISiB64vbg6B9Y=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3180.namprd11.prod.outlook.com (2603:10b6:5:9::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3455.28; Mon, 12 Oct 2020 20:49:12 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::2472:44fe:8b1d:4c6c]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::2472:44fe:8b1d:4c6c%5]) with mapi id 15.20.3455.029; Mon, 12 Oct 2020
 20:49:12 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S53 13/15] ice: silence static analysis
 warning
Thread-Index: AQHWjS/jeaPcot/LQkOJf5pGDCdUZamUl8Og
Date: Mon, 12 Oct 2020 20:49:12 +0000
Message-ID: <DM6PR11MB2890851757AAFF60A710ADE5BC070@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200917201347.81570-1-anthony.l.nguyen@intel.com>
 <20200917201347.81570-13-anthony.l.nguyen@intel.com>
In-Reply-To: <20200917201347.81570-13-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.179.168]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f40a1f81-9f3a-476f-de72-08d86ef04695
x-ms-traffictypediagnostic: DM6PR11MB3180:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB318064021108610A9BAD0214BC070@DM6PR11MB3180.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1303;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IMEpxXlsTghfAB3rRhUV/E8OfmAHxGduEPjmlotLlDJEqNRdZXpQZnx8kN0nB2wtFePC2L8QSklAyg7Y8pI7F7w1Bw1awqqp63QN4f1iqpX5kyjPlR3dDWEknPOKo36Jizcy2oF7ZUg4I7T/hzKdcdpf1qXXNRHVwDttJKziPgmyDptdeKxZjdpn0BP7li1p9+HVPhA79sglOYtdyTmd2bgscNg5Amj3rTWw07qpF+kbsqczjjoGVDgs8S/0KgLUh4khhbyxb01EMfDOfjMHFPP3xBSY9m05ahnQj5N4TqswyWnjFn8BrQ/Y+UcGeQML
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(136003)(346002)(366004)(376002)(39860400002)(2906002)(83380400001)(478600001)(33656002)(71200400001)(4744005)(86362001)(8676002)(55016002)(52536014)(66446008)(66556008)(7696005)(76116006)(9686003)(8936002)(110136005)(316002)(64756008)(66476007)(66946007)(5660300002)(186003)(53546011)(6506007)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: rSIFRNlwPVu1JAE44Jmjgt9SOck/gkWT/INpd0WS2esE8P74Jj0X+WXSUWXv8znfaUHg69ICoouiSX1vc4ePP4QUqX6UxPsEJw0iWjgmvmq6Czk9Y6zn8z14AzTnkpG/LZKC7srf5qOB1lfNJdAGoqAw51AKuR68imljZ1hnJOdrb0KDrdj24H/G/q1B/2dUNZfRJbczIvz1k5mvfNbwNEpqoIPr6L+/y4exWmJuBNvZK7NUgIbbuy0BxgvjVON/DUEtCwE/yrVs8fPyBB7FUli89cIhpGRETk1ELSojQE+vLMSXdY4psHHJ32iu1RhX26OsRr9PqJmgRZeKjkIodVB4Wu9m2kr8Eb7piIh2mPu0DIotgno7S+ON53X6eVyzjbhr3YH8wZenfx0u5cribftlGWh7C+MyfWQ5cVULlBsY3BIHXNyayHt81nxotVKmmuNaMmcf2zBu0/jKtFu7l/t3oQIMCaojVYMdjQbrJeMKWO4xetMgK/zHUH6e/P9IJtF0J6HIpHRE0E3NHM03kshdjrIY91MOoeDC1nVJnHfJLxzVGO2X/AJhH3ujL3Tj3cRXDOsTThVbDAXgETm3pCunUSiJx/2m+WOjRtkQbeundjWVb04Z1BDVcIh032k/462xupGGKZ2+GFu/z7j5CA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f40a1f81-9f3a-476f-de72-08d86ef04695
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Oct 2020 20:49:12.6759 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kRve3NmQ6cdmSRkYOPQEgXdqtV85J8iGWPZwimgpre2vZK5mQJh0HaNh+vuPASNkjEEF89eAqbacd0EfWeYnTA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3180
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S53 13/15] ice: silence static
 analysis warning
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
> Tony Nguyen
> Sent: Thursday, September 17, 2020 1:14 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S53 13/15] ice: silence static analysis
> warning
> 
> From: Bruce Allan <bruce.w.allan@intel.com>
> 
> sparse warns about cast to/from restricted types which is not
> an actual problem; silence the warning.
> 
> Signed-off-by: Bruce Allan <bruce.w.allan@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_nvm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
