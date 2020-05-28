Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 149481E7032
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 May 2020 01:19:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BD2AF88214;
	Thu, 28 May 2020 23:19:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AMljXFOOCiv2; Thu, 28 May 2020 23:19:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 222A28826B;
	Thu, 28 May 2020 23:19:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8D94D1BF372
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 23:19:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8067720524
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 23:19:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NGCWbN63a1hC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 May 2020 23:19:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by silver.osuosl.org (Postfix) with ESMTPS id 6CABA203E3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 23:19:48 +0000 (UTC)
IronPort-SDR: BBhpsjng5M/5J0gIl0DH4wEdjXX6DfuFqgTRH+AJKUpwb3vlb95RlBhmk8xly/KF6K9xgvhKNZ
 g29Oms4+g04A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 16:19:47 -0700
IronPort-SDR: 7hg8XXp54rnlY2yJDMDAEmff2Mp/WDT2NQGYY7YYNn4xEf4AkdIgNmBdK7QrmtlGeW2TKXk0x6
 Hr1tcjEyJQyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,446,1583222400"; d="scan'208";a="346076350"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga001.jf.intel.com with ESMTP; 28 May 2020 16:19:47 -0700
Received: from fmsmsx114.amr.corp.intel.com (10.18.116.8) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 28 May 2020 16:19:47 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 FMSMSX114.amr.corp.intel.com (10.18.116.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 28 May 2020 16:19:46 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Thu, 28 May 2020 16:19:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ni5n+RmoeyivTzBP3COYEO1UBHN3HlS6I+TegfpT0Re3dbr5tFAoLjgkrzvaP78IuyBFeazJF831ES4sW+uJ3/QAUm9u88V76ZINlUAKP1lZOlsfkotW6bR8n6kggfFZki0mw946aCF1mY81D7ppTLySSHVLKBFu/1GYx3KT4/VAvJFZv/p9tw9A+iUFEW+5IRYS/EpM8w5boZ+zZdYhenZ/1NHIPcaOsaJ+nxk2LfcP1k5N9nmHbj60usa2Wz2dtRQ2FgRngQaIwNSPcpmxFl9kZWAqDUrjw+R8c7gzUcOuJp1wMMBj7EPV7pzwgu006Q1IMMq0KPXIzU7Zu33KsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5x9mbza9XavSOOufeH8nfDNnswiMxpXQqX9N8Y+bGJM=;
 b=c6cGxow2dHdzuXJnZbAMUftA+HaVv218JmVaWU4vYJC/9mePrJnxvhQR1PtKx/XtdkErUuQ7TvAZaKOiFJgfadJXBWF0kCuPlfVvFMIdwHLXLNncMN9iiLrxlo4wzKuU4k+tgp4eVQB5rCirVMhXjkSgTNfgK2EYyZU9+nH88f1agbsDYZgEnXZmDx061OosUX9uoCt3qVs5KpgseEL/t+YBEI42W9Z69zY1wDhinou59GJvQZahBrPPDeYO6hOotFqBozyrUeVZrWUkJ9vI/gLk2n8EafLwYpRGgofnm7BLKZhuiUUbeqrmWcqgPzsRLuaDpF4Ncojjuw38ZrSE6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5x9mbza9XavSOOufeH8nfDNnswiMxpXQqX9N8Y+bGJM=;
 b=RLO07gaGoHOkOXBVOnSsPDtUK3aFNIlu4AVFmn02xU/QYCWBI50FLQYpLANcI/PwqUMWa+Wfq2wQK2GTfwJlwhST9ttd1iZ6VNXkeIf606H/gmdXhtxNcl6RwEO4lgksln6mK1VIUo9h6dc5pcT9aZrAcRi/GRzQqpHEA3vpdTw=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (10.172.35.20) by
 DM5PR11MB1771.namprd11.prod.outlook.com (10.175.91.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3045.17; Thu, 28 May 2020 23:19:46 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3045.018; Thu, 28 May 2020
 23:19:46 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S46 6/9] ice: fix PCI device serial
 number to be lowercase values
Thread-Index: AQHWKx0W+gB7+C0iXUuCULs5ZNGerKi+NqUQ
Date: Thu, 28 May 2020 23:19:45 +0000
Message-ID: <DM5PR11MB16599D4C071B91EE9E4F6C9F8C8E0@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516005506.5113-1-anthony.l.nguyen@intel.com>
 <20200516005506.5113-6-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516005506.5113-6-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.52.219]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 26e74bc9-a6d6-45bd-cdd6-08d8035d9c33
x-ms-traffictypediagnostic: DM5PR11MB1771:
x-microsoft-antispam-prvs: <DM5PR11MB1771339E63AABB54DA4FE5298C8E0@DM5PR11MB1771.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0417A3FFD2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wUYiU9cmwEyBY9lyaHQv53tbQZ3TgHa2L+Es3zGdixBU3SovY2QLpoMZUm3CSVHWYaF8Kcdje0HXAyqrXrRj9MHmYjCikV05yOb0ckN+vCjhg1nAynBo3v4ZJNC3Pk7A99J0dvowTtKCbCOadebWIJqcGdkg70cxj0HuHlrLkmaXi9+FNRFOOUbqJw5rBWqGwk7ripCAbJjAYUGtlee/rl9gscA7HEwZZ6Sz96r2bmGRVq4mQHhB3KVUDW1aTfB7e/NIMVZeZiGM2LV0eivvKsuYh9Vim6rGiOdw6gDab2mNrQ1+oR6sgB15TFDHoL3X
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(346002)(396003)(376002)(366004)(136003)(55016002)(2906002)(478600001)(33656002)(71200400001)(9686003)(6916009)(316002)(52536014)(8936002)(8676002)(6506007)(53546011)(86362001)(186003)(26005)(66476007)(66946007)(76116006)(64756008)(66446008)(66556008)(7696005)(4744005)(5660300002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: qUX5o/aQsGdVFowArYceXnBPFeALgiWepPvaXYEWfoSvpMWAF/wGKTP2ecsSfz+FD35IJHpsZbPGp2gCEFXhlRPoDTZkGMjsREJ1Op+GG2jLi0+KKsjPw4OGApPTW+1haiBoe11Qz/p9+iOYee5QM7+hs/4fU7aL6m9nrr8tI3/OSyg/UiUnxbBEoL/Jc3HPyCF39euCZT44BdyX0OjzrSKfeZ7Is3G/sxYim1+NmST4+/g7A57c9CvALL0sw0Pw/PNAxLomFr0sL6CDlSS/W6/zn8eEkmo2ynmnYcZ04AbGhGQlwZVx7L3/zUMi9WKvJZkFWO78xwQnsroREdo4m+aXaop4sjvfVnyIO+35WfvyFt8E9DXsVi1uWJ6x/4noD+RLj4swnV5OM86p2IoMRu6O0b8iZ8tfwHkIs5s62DLnHHs8WPJUQY+EqX2B6HcX38fcI1naCSi/H+zk1l80U1O2u6pMtx0M1d8kubqtpAF1ZiHLjBDgNoXgTLh/eyFe
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 26e74bc9-a6d6-45bd-cdd6-08d8035d9c33
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2020 23:19:45.8838 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jq6l+8x7P9rSFwUORCZetiZsnI2EnVAA9wn/2iDMlYSDbxr7hKGrnfQacjhxvlhZ0++V/0cZAkebYCQQ/JfaCL7S9Xi3FdVx9Glojrirqqw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1771
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S46 6/9] ice: fix PCI device serial
 number to be lowercase values
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: Friday, May 15, 2020 5:55 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S46 6/9] ice: fix PCI device serial number to
> be lowercase values
> 
> From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> 
> Commit ceb2f00707f9 ("ice: Use pci_get_dsn()") changed the code to use a
> new function to get the Device Serial Number. It also changed the case of the
> filename for loading a package on a specific NIC from lowercase to
> uppercase. Change the filename back to lowercase since that is what we
> specified.
> 
> Fixes: ceb2f00707f9 ("ice: Use pci_get_dsn()")
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
