Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C8F325E160
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Sep 2020 20:10:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EA8182E1D8;
	Fri,  4 Sep 2020 18:10:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PeOIwCnPQrFT; Fri,  4 Sep 2020 18:10:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5C7F220485;
	Fri,  4 Sep 2020 18:10:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 630011BF290
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 18:10:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5DD6C8754D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 18:10:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q9B1Q2cAmkek for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Sep 2020 18:10:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1C6F0874F5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 18:10:50 +0000 (UTC)
IronPort-SDR: Zstzq7XT6Qn1IrdMIbpXW+XG+YD/UbJcLVa4seJweNvVi23FPuM25nMEkC4qMUAS85lLjp6bZt
 0GKGcyoXtW+w==
X-IronPort-AV: E=McAfee;i="6000,8403,9734"; a="145532131"
X-IronPort-AV: E=Sophos;i="5.76,390,1592895600"; d="scan'208";a="145532131"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2020 11:10:49 -0700
IronPort-SDR: UzStBQu2cmnROrTGoa6fND9DHGwzZ2/gLnn24WHzFsRMY2tQ+OU86XpJy00ZAZTMiwydjmtPP4
 V56Ov9rJ1ssw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,390,1592895600"; d="scan'208";a="478604378"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP; 04 Sep 2020 11:10:49 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 4 Sep 2020 11:10:48 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 4 Sep 2020 11:10:48 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Fri, 4 Sep 2020 11:10:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jAFVITwchLU663liH6ipA02mDAVaYkNSD3zCSYX4er1u9dnGwjYXfvMDjQvGTUM1y7D+wLTAjKsqgNXl5mH8Two5SdeZzEzEHQASToGZ3TdAqtiypsjsjiJ3mrH6wld5WTBK2Askn8AgNKuBgchNZzL2TjBkDfWI0y53dD6dvCbXXGspWU7GmXZZ2PgcjfCWoBILmK9sp5FvNL/siS1q9LxGP6lyun4AFTnXMBjH+J6TTTeFNDvdKtypMfeH+zsKv6b82j0YtYr8lrbmXAX/3O5KUcNp6NAZ4m8+9j68MUDUnK2vom17Y7dd5jNnqArFgeJKvligJiyUa0oQN5TJxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6Pb2kwYSEW3CaGQAOcCcq4EI+qCN5fqsQ2Ta9mzSfyM=;
 b=SnvgZu036S2iQ5Ur1z+dKwNkoPYlmt3nMwvVZg9TZqHGoXcJtFE6BecSKLQo/J0gyhKpl9aWOIEXuRgyrwXLrq8gKCUk2TagxiFX+5jiwaufOCMtPQPXSfj7v/tyiCmKg5clwbgbIeBPbRS6zeD5411oD5zcdC9HngMx9B/s4EArOCtlLltdLY9v0MNc0FcqsWdeTvC0pZrBdn84F2Dg9fID3LixwLzzZH17ColaKE347B//90WJ4F3JLF6vJwFnxLltjTAZwYGvrdHcyTw0gCyKxgGIkRoCIrz41SKZAS51nPPKRkCUfy7U5s78eQC7xtOjSzSaxmm1jXCIwbcKBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6Pb2kwYSEW3CaGQAOcCcq4EI+qCN5fqsQ2Ta9mzSfyM=;
 b=gDdcHNcN30LDCN3oisLIctg/5TbUhds+o2+srUSXBZfzCA30v3ygaS354JPISZl2Vik1VEXaB61nn0EmQVuo1qxXnvRUD9R65P0XmukM9BrIWegyyhn4QSDQFI0BTaAcNltLWPHI0LrjzmYtdoHvoN7+ILjGFKneK6jzAE6OIvQ=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM5PR11MB1916.namprd11.prod.outlook.com (2603:10b6:3:10a::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3348.15; Fri, 4 Sep 2020 18:10:46 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::25c4:e65e:4d75:f45f]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::25c4:e65e:4d75:f45f%7]) with mapi id 15.20.3326.025; Fri, 4 Sep 2020
 18:10:46 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: Stefan Assmann <sassmann@kpanic.de>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] i40e: always propagate error value in
 i40e_set_vsi_promisc()
Thread-Index: AQHWduiWsYJ+52x91Em8keRcfr1pKKlY3mRQ
Date: Fri, 4 Sep 2020 18:10:46 +0000
Message-ID: <DM6PR11MB2890E9ED7AA4ABBCCB790F2EBC2D0@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200820115312.28099-1-sassmann@kpanic.de>
In-Reply-To: <20200820115312.28099-1-sassmann@kpanic.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: kpanic.de; dkim=none (message not signed)
 header.d=none;kpanic.de; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.215.99]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 91baaf87-dabd-42f7-3008-08d850fdd8d6
x-ms-traffictypediagnostic: DM5PR11MB1916:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB1916E842FAAB5CD0AEBCBDA8BC2D0@DM5PR11MB1916.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:773;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nsWEfyh+dZsx18YhWhQ690BKyfV/xur+BTmLgxFj9NrMTmRbgDo7IVDjmf7vj05gbM+AgWepbs3TvRb4B8naNi4lJO0wVAbM2ciDqWTO5eRKbRMXDXMLpsEJqGJDd/ZU89APTC90pdfZ3/ZAQ3tlwS1lwZCUcIs2gou1/+BA+Iof2Y9cmZ7TqI7xlxs7q08Or1AD/ggorzpj1WFwYKhoEC0I5/MR+RdHOFz+WuLa9OJUdOsZN+p/cOD/jI5M/5eX8xiwq80QZnmSaYxds2zmOLeWuFrNyZ/jnhKeIAEfK7aFdSWNsGTAygadgs2QbkB2ipppl2kQ/6iiIvc/xkscgQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(366004)(136003)(376002)(346002)(396003)(4326008)(26005)(7696005)(8936002)(66476007)(8676002)(2906002)(66946007)(66446008)(64756008)(6506007)(5660300002)(86362001)(66556008)(186003)(76116006)(53546011)(71200400001)(9686003)(33656002)(55016002)(110136005)(54906003)(316002)(83380400001)(52536014)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: zc7rk316+QbnyiiFp13x3gd7K+jT5AQvnSZUnUMpyXAKgn8iwUIsGarKBvXZeJgTfFCA5q1cHAhic1GnzqDuqtE6/K2WfIJiE2w//4OOueHMEF2opYIrc7bpi9Wd970L7FQvmW0C0ODe9q6SPgaNmNjFCZZl+1qOlMfxU81i+aALHalGMAaTXKBK3z/sse9prbznuCXh2iE9jTTsSiH0eSyctn97g6sKx59X8WR0U7G4QAsmFX5sfY5W7QEslxYIeqHZ3mUj53TCS9xBCXKqjcdA3Xyq2rrsu6xV2wpKF/p01ugaSp0X2CZIBFPkG/+h3HvLEUDVkrNmZS3ZmTiO+l684+YnnvwTQWX6wAjeiBHVlYEDow1Q02hxQZqVpQVGyvUP/J8W//hlvPT8flLUCA4FFvZCEp5fSB/DfwEiC2AGzlWWAOSKFaImQAPoE9Gf3eiIngKtYwF64qGhtT/pzevBxH2yAKeO78edNrVkutprxaMPiyPpnp3pD3RxbRX5nKhDGZniRiuvvA2yKvBWhOFl2E3Imad8ZjLy5mmgg/w3oSbHkgEZuufdjvwHKPKAH1wDzGsUA089Y3CSHQETWtXa6aXeRKMOK+dBp9dk6XdjuHiFBhccOUbBYNagbE33c1hBHhRSn8a8TpChvIqU/A==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 91baaf87-dabd-42f7-3008-08d850fdd8d6
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2020 18:10:46.7488 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1eIDjNwtTSinjZMDG7DNCiKWHLjLeiC/U1ICqtB9hL3oTToV572NZMShZC+Eqegt7C6YqBKybT/ZVdU5aWg2aQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1916
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] i40e: always propagate error value in
 i40e_set_vsi_promisc()
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
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Stefan Assmann
> Sent: Thursday, August 20, 2020 4:53 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; sassmann@kpanic.de;
> davem@davemloft.net
> Subject: [Intel-wired-lan] [PATCH] i40e: always propagate error value in
> i40e_set_vsi_promisc()
> 
> The for loop in i40e_set_vsi_promisc() reports errors via dev_err() but
> does not propage the error up the call chain. Instead it continues the
> loop and potentially overwrites the reported error value.
> This results in the error being recorded in the log buffer, but the
> caller might never know anything went the wrong way.
> 
> To avoid this situation i40e_set_vsi_promisc() needs to temporary store
> the error after reporting it. This is still not optimal as multiple
> different errors may occur, so store the first error and hope that's
> the main issue.
> 
> Fixes: 37d318d7805f (i40e: Remove scheduling while atomic possibility)
> Reported-by: Michal Schmidt <mschmidt@redhat.com>
> Signed-off-by: Stefan Assmann <sassmann@kpanic.de>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)

In the summary text:
%s/ propage/propagate/
%s/ temporary/temporarily/

I suspect Tony can fix that up before pushing.  Aside from that,
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
