Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B2DE25E54A
	for <lists+intel-wired-lan@lfdr.de>; Sat,  5 Sep 2020 06:02:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0BEC98756B;
	Sat,  5 Sep 2020 04:02:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id esbWTnnz3Ls4; Sat,  5 Sep 2020 04:02:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 56CA387572;
	Sat,  5 Sep 2020 04:02:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 147EE1BF995
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Sep 2020 04:02:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DEC9E204E2
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Sep 2020 04:02:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HTIeFhsosPZB for <intel-wired-lan@lists.osuosl.org>;
 Sat,  5 Sep 2020 04:02:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by silver.osuosl.org (Postfix) with ESMTPS id 778B7204BB
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Sep 2020 04:02:12 +0000 (UTC)
IronPort-SDR: yYc0p9lGyTO/cR0w1XSUKWtSDznUY88XESMm35Z5NqrllJzAo5aDjmSqftqgOn0HBWWY1W3CfU
 bzh5OMn0YrJw==
X-IronPort-AV: E=McAfee;i="6000,8403,9734"; a="155241400"
X-IronPort-AV: E=Sophos;i="5.76,392,1592895600"; d="scan'208";a="155241400"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2020 21:02:11 -0700
IronPort-SDR: +QDzAhyM9fGubyuP5MmBcrJ/DfH8wNP3tMDMSIk8082CFlt/7r2Q/Ubrjn+hykFtcwuzai+AHc
 vcqI6QGG06kQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,392,1592895600"; d="scan'208";a="335189768"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga002.fm.intel.com with ESMTP; 04 Sep 2020 21:02:11 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 4 Sep 2020 21:02:10 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 4 Sep 2020 21:02:10 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Fri, 4 Sep 2020 21:01:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A4b2df/2F59+leweEqkm2V5oQro/U7OUm4UlIg5FCW8dZU2SMzS2KNvqUVpxEf7O0xF+2b+ptvFKq5aiarAOQlF3HL98G/798/R7CQdl1OeCPrqn7HsdQD+yoktkY/HUVz5rIxI7LFFQTaLETK7jEUj5Xyp/9C944LOpJtHJzEYM+aqCuY9mkWtIyVx0Yg/v1PRXaZurIA5ukhUhJl9UfuoWXlj8oEmzu9mCNLuzDu93TNUkX7AALlgwP1ATGFpL+zOTLtBRIAUTMNaHsISEoYizqX6ZCn1U141WIEp8OTN0lFVZiRxleVvCFrj5KDT4Go1x8ijMVkt89laK80pMLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d9xroH7PfeMPsJdlZs7U46IIrpVDPwFRLDEtIpBx2uw=;
 b=Tk1JWqXheeu3RW4N/NXBEtn4TYclmHBZMe+pVr4rsse9CMgaYMIkRuww9Y2yo1p6LnnZ6LwpoUmsGiDqia/WQumSPGhWVItqn0txiCLmCQgH3lTsEX6TAhQrWTGA4917FSt6b8/z4rJvKvIED/99PbxuWZvFLUngTmih2M72seMjh3HVLSnpzTJN5t242k/EpAgseF0cclVSph66FpNQvpiBnVolzI6AkeZvjpas+Q7tmHpeslNtTG7FImHZoaXRXRJYDyi9HCKLmw4qAzcZIoAxYdWNe7qg2l4jEWL8KWqIfOjej8zqoK1G2WM2ByDh22WHgHlIT6vLqTuW/HJo1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d9xroH7PfeMPsJdlZs7U46IIrpVDPwFRLDEtIpBx2uw=;
 b=opQxjLxgCratEhjA5Kp5qLQiPePucp7ljojMUGvnJQtrjIFfHsEB9mmyoiaO0/7Pj9t2DhYQDNXkcX26mas5SiAh8uOFg8Np/0zmA9VruPdfds6v9TO0Iwol6WmQtS5iuz+4Y1JbmkznbIEln3BnFbljR3OwgErDegweVJO6s94=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3723.namprd11.prod.outlook.com (2603:10b6:5:13f::25) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3348.15; Sat, 5 Sep 2020 04:01:51 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::25c4:e65e:4d75:f45f]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::25c4:e65e:4d75:f45f%7]) with mapi id 15.20.3326.025; Sat, 5 Sep 2020
 04:01:51 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net 4/6] ice: Fix call trace on suspend
Thread-Index: AQHWgUI6iki0KCF1SEuX59QY4+4KW6lZb+WA
Date: Sat, 5 Sep 2020 04:01:51 +0000
Message-ID: <DM6PR11MB2890072526A61E239FBD70ECBC2A0@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200902155347.16972-1-anthony.l.nguyen@intel.com>
 <20200902155347.16972-4-anthony.l.nguyen@intel.com>
In-Reply-To: <20200902155347.16972-4-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.215.99]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2efe1da6-4cba-4763-87e9-08d851506b56
x-ms-traffictypediagnostic: DM6PR11MB3723:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3723F6F70627F479276E3006BC2A0@DM6PR11MB3723.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1728;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jUD1+pZb8aAQ2WOWbPRefRtmJtLDq/MJp4rlZxfh4n9W0/5TmBpHV0kc6Uf2mgxkCH7/NXK/7dNxriQpAAPNzu81qiybdKBz2Eq/ChlgyxKOGI+38jA8nU2hf2cFKeHx+KPqvD3HxytIo3LU30uwJw5gmGad2EexaXAjHm2TwoNcdXjdLnp8VYsoBar+MUz2VvJYQW5Cq5uJ3LQxbykpLp5yfHCh80ul6aifGq7uQd9YtXakRhatz9BnKcsQurpnNrZb9AAditnrgUbRjwrqN6qyFdCaQX8eRWapqZINtANtQWgsE66SiHLELtAiHY0CpvCpd/V0RMbpGz7kmCWwxQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(376002)(366004)(136003)(39860400002)(396003)(7696005)(71200400001)(33656002)(8936002)(8676002)(26005)(52536014)(186003)(66556008)(15650500001)(66946007)(316002)(55016002)(2906002)(64756008)(9686003)(6506007)(53546011)(5660300002)(478600001)(76116006)(66476007)(110136005)(4744005)(83380400001)(66446008)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: ZsbHo+SLteQM9Qa0jufYa5Of6UI1NjaJfkbdlqXPmTRMAPmfVzQa0BIgCCflx/aoIoeODn+VuTDKgtp2rwtCpwW+ZsGqw7NJmKgNqPH8KyU9mkboFUVwJ+Gxr4bLVsFkDRBSPX3FGgYF2RqcalaZJr9G1KsH3NIl2oEwNXuqWkodX/nCfhZsWJcTxaggicuhHBrkxU0PniyWXC7lA8M2aopOVd2im9CGpnLLmo6311Tg/Uax/kngGHA/m13BRcuj5nQGdtgQQxDobgOhhvArDCkYR7eHzyDv2p8D7z5fWo6Mkw892iGot9CnSRYmSV358cD6ZrzEYTj9jwkR4Yz2DYwLVUAMisHB/gZdcttNvZuBkeOvGZMUYovp7T3qAfotRtRm0/1ihC2IDr+Chw6jEo7zGtFtlLJNWPFPYYIHpQXuFNf2kshc3qOWcRNHpKCCb7uFTcsb0hP9BYYS2TtxXK3NTCLl3/b4iJbzupg+zbbxomVo5wyk4B41+8adwpDeQjq8q8ADXgVGqnfexEoSCDxiHnYmx7oX46KyelJiQJv3ucSPqmeAiBf1q4Qa1TfCcoTBvSKFH6TPEap9w7oDw5pSxDldIL5zzAa9y+A7tdM/cO9C52TV1zboZIVpshGFiXfu3wwR33UtetMYVeF+ow==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2efe1da6-4cba-4763-87e9-08d851506b56
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2020 04:01:51.1782 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: x6H68JW2Hc3+JMTGlt9QyO1aUBKB2o00xNZROZlwpJTA4QN0lxQx8iLtctMDLLCC/RS6oSqC07plEZlqN4dJeA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3723
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net 4/6] ice: Fix call trace on suspend
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
> Sent: Wednesday, September 2, 2020 8:54 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [net 4/6] ice: Fix call trace on suspend
> 
> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> 
> It appears that the ice_suspend flow is missing a call to pci_save_state
> and this is triggering the message "State of device not saved by
> ice_suspend" and a call trace. Fix it.
> 
> Fixes: 769c500dcc1e ("ice: Add advanced power mgmt for WoL")
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 1 +
>  1 file changed, 1 insertion(+)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
