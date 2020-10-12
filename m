Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66CB028C45B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Oct 2020 23:53:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A1A1787A6A;
	Mon, 12 Oct 2020 21:53:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o1f-ajlFyOqe; Mon, 12 Oct 2020 21:53:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 05C8C87A67;
	Mon, 12 Oct 2020 21:53:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 078C21BF3C9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 21:53:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 029988671C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 21:53:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cpQA7Ljy5haN for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Oct 2020 21:53:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 46D6E866B6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 21:53:55 +0000 (UTC)
IronPort-SDR: +nZZU6J8JhcgMiDdOUl/d/WmnB1zeDZvtOyDVWel4goCZ44rDqMuLuy73ZBv8486PTlNCqEliE
 MnEG5Z6kTG6g==
X-IronPort-AV: E=McAfee;i="6000,8403,9772"; a="227453916"
X-IronPort-AV: E=Sophos;i="5.77,368,1596524400"; d="scan'208";a="227453916"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2020 14:53:53 -0700
IronPort-SDR: PjAFD9+Ps9X9+MrJrhFCdGln66HVQ3YctZxXZQesTdxyu0mQgcINz9Bg6aJ6J7iMbg8hL0sZlF
 FFBcUGYKAW8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,368,1596524400"; d="scan'208";a="345982711"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga008.jf.intel.com with ESMTP; 12 Oct 2020 14:53:53 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 12 Oct 2020 14:53:53 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 12 Oct 2020 14:53:52 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 12 Oct 2020 14:53:52 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 12 Oct 2020 14:53:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AEHSUzmxAFEE9w1NAH4H1mUpKTE7xCkA4yIT/al8U3JgeNBEvquyIsnT3KIqUCz3/rI7Hpl4rC4DtFvv4kVJLpD/zJ8PA9Udffe9OVN664BW8ynuP2mgG7gVCV3DI3mOfQYSBatGfE2pgNT6iOiU4fok2y52Fy+s0p6XzbPN43jODcbf50ZCJLIEAvn8xjjIRvpa/Wcyz1QU+fU0PoXPOO5WBLZJv3h26Ce4HJovSzfuSW4yjx3p053IHZ1qJ0hUF8NUSfKv9CdnUpeM5xsZRBh+woItWRT1dyEcs0W4Lh6jW3AGFQN0gSP5scYwrCS4uWQBQX73+wWYtScrwM8hGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VUo+X3uy9M6YvMlbqpwas2OcuocLdhgn7C8LuU6bDsk=;
 b=IoJXF5zeqtiC0KXf/SqeXhcD0+P5CVK5babDptQtm+Yr+Hr34WOIyDLpiGambxaHnIpYa7/jiILOjmt/P++nanZQorqJ/JiM4P1H+AXnJ8/BIf0lymZiZyLjybh7FwLGyxgPfExIK/rNHRmahFJzLU3SzEO/JpB0iUyxgVKcDr+FuydSn7SnMaRhG/aWSrVvZQh2yyfp0BYA81Q+UaNCnpOs3a6RyrSYIeavJ0nOGLXgjaSZjlPKseSYv+4qc58NgvEzWPtUEwHXHE8TgIERWqSf9TaXf+GjUouz4r2B9L6i23iMwt/k+o/bWzP2GrXxGJKT/I2ZlnjRNow6PbpPmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VUo+X3uy9M6YvMlbqpwas2OcuocLdhgn7C8LuU6bDsk=;
 b=rciAXXR1a8c6C3+XdKoyFFmN0AzmN3YOZ/Oa1xrTgOEGyrO9GgPWNfS+gHJkNPoh0HumCGY7me5oTsMf7DBieeS8mcDLkMr6NYe3Jcg22I7Jmva9ceecdf3ktWU/+Ctla0d9UgtpoDhVNmovrUqn9UjhPSgfokx9tcxFwq9Srkw=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3498.namprd11.prod.outlook.com (2603:10b6:5:6c::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3455.22; Mon, 12 Oct 2020 21:53:51 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::2472:44fe:8b1d:4c6c]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::2472:44fe:8b1d:4c6c%5]) with mapi id 15.20.3455.029; Mon, 12 Oct 2020
 21:53:51 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Sornek, Karen" <karen.sornek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] igbvf: Refactor traces
Thread-Index: AQHWh7r+WYhPGVZACEyRnKqSOYu36qmUtLfg
Date: Mon, 12 Oct 2020 21:53:51 +0000
Message-ID: <DM6PR11MB289063710054770764B9A0D2BC070@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200910103619.10467-1-karen.sornek@intel.com>
In-Reply-To: <20200910103619.10467-1-karen.sornek@intel.com>
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
x-ms-office365-filtering-correlation-id: 82611b94-0bd8-4d72-c34d-08d86ef94e5d
x-ms-traffictypediagnostic: DM6PR11MB3498:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB34982DD7097A19D92CC9A0B3BC070@DM6PR11MB3498.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:595;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ggoLjrefqNZ0NAbiKhO8yeNFmg0u5HNSwwSqEYuunBlvtSm97ixSWi7TtFGEdmMtLb0wf6267+2V7LjtI+4KVKR10K7wXJvAHKCDeTSau8kB+hK48XGFqh8mx17VxkWnSUWNg7iv4IrXDngi4SyjbSSUaAtZyjyA2ASJGQEN3g30pDC3vPtowyYvZ2xr18MzBxqc+u28G/Q595SbAUmHpAFj5r+nol3JwY9f2yDy20Z9ZT5twPTJnE+8Te0pUzGLIs40tLi/6GumJrj/xo0iuTqSDAibqNQ/M4fLu7J2zoQtEgFQA70NOxrIznLNCev+
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(376002)(366004)(136003)(396003)(39860400002)(76116006)(86362001)(66946007)(8676002)(5660300002)(186003)(26005)(66556008)(66476007)(8936002)(6506007)(64756008)(4744005)(316002)(53546011)(83380400001)(2906002)(107886003)(9686003)(7696005)(52536014)(71200400001)(110136005)(66446008)(33656002)(478600001)(4326008)(55016002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: OtRVDWKO3ht4uRo3yNbG6fbtTXWEl3nqiO/KDuZtrFD3xg0S/oKrqWw/9WxjjqK7hvfXXkUfCJP580HGxgyHQnzJpKK2nMShuv4PdvzzfvA7o/gminlUHhe+og5kKvT1irSxJa2/pneXuBtgFCCg8RIiaxj3EAspZ/vR2rd1EIVolt9ZcheDMt/lmtqrkXf/WcKqxgctBSwQRRDWWK1S6Em+zNE2D02rZBtUINAvhshbtJxrgxXWwN6Lu+jee5eZH7d8xVmZ2kJNypwKlqPumbJi2fgbrlBYDxmxMr2sHAW1CNQXzmKYQWOIobUKO+DjeZ0gcwdZl/44WWrI1PgYti1/UQEHRKexyPbMOZJY7T8IHQpIu+eZcjJfNbp4h46A6pc9EW6u79f6BM7twhtHC6EZ4xBvj3Vyh0mf5pxhrsbuxiRdVtg2J7PQ1cZRVLNhjNS0dEC3dFxh7/ZLdo6jRxrEflLgUfaJqkAhUK0Xi3o4RVTv/ZzOX8eSmmLDFceZyyYY//7SZOGVmBSqjNeetyOcndc9mOJSZ4LrMALan0gnntP2/3qeOs9fFG33e+MhZbvbrDqua0s7vRrFte5aF0Yqnf+ixlHAxvP15VjmBSAey4nBBknWnFpdigy6M0B9YqbERwUVORHN0fEQ0kmxaw==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 82611b94-0bd8-4d72-c34d-08d86ef94e5d
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Oct 2020 21:53:51.1616 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6FMRBw9cHCpI5i5Z7Nual/R4lEA9WyILJrCM+No0/d54dKVTzKmUZ0pJ14Ln+QYbBRi/oAIDrgxoflfIq/8aXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3498
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] igbvf: Refactor traces
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
Cc: "Sornek, Karen" <karen.sornek@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Karen
> Sornek
> Sent: Thursday, September 10, 2020 3:36 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Sornek, Karen <karen.sornek@intel.com>
> Subject: [Intel-wired-lan] [PATCH] igbvf: Refactor traces
> 
> Refactoring "PF still resetting" and changing "Failed
>  to add vlan id" to "Vlan id is not added"
> messages because previous version looked like a bug
> - it informed about changes that worked as
> designed but might confuse users
> 
> Signed-off-by: Karen Sornek <karen.sornek@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/igbvf/netdev.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
