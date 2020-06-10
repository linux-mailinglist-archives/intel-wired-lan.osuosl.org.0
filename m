Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E85C1F5E5B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jun 2020 00:31:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9DF2688578;
	Wed, 10 Jun 2020 22:31:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ExJxtkCdDWLm; Wed, 10 Jun 2020 22:31:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 26766885A9;
	Wed, 10 Jun 2020 22:31:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5D9BC1BF228
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2020 22:31:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 59A6F875BF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2020 22:31:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pU3A1HgGjE_c for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Jun 2020 22:31:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 377478758B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2020 22:31:12 +0000 (UTC)
IronPort-SDR: xxpKhBC3ZcsgdeJqAXIxqIPxiSmjKTIqBxtipyZE7sawxKHzIHn0e49Iauw7c9qDmZzpN8T5nt
 r6FvtNCY38EA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2020 15:31:11 -0700
IronPort-SDR: x03+xocfaXcNi7eTyFK87YAwdjxzMciy6cj6J/Wn0kab2PT5ns89LgHcptNlzujxUVkLonKxjS
 LUx60yDEfiCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,497,1583222400"; d="scan'208";a="447694402"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga005.jf.intel.com with ESMTP; 10 Jun 2020 15:31:11 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 10 Jun 2020 15:31:11 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 10 Jun 2020 15:31:10 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 10 Jun 2020 15:31:10 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Wed, 10 Jun 2020 15:31:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d7mhN6HHLtDwWgbSQfmL+3s4uApFT5uuZWPOOS09BVjXyuc+Tuwvbo0wYqvxSCLCj9TKMGhIzFy/gmQzyUHA0zGtekKsKJp6RQosh8KGT30/kK6sk7jbUlUbYaccmPw9BPMQq1TqXmOyP4D9Jed30bITxqklwCi0+DkWxO1+wSgm5nL0tTkSy0fXRYCcMUFGREtaIwJO4CSvwNP1BupUhGAAN4u5x9tblKwWSUjJGtMec57inHW6vc3ZktTidhFCSIvjvzKEC9ND3pSBCd1/yXpkLXGncgGANXessMnTowoibdITO4Z0pHKkTSmVL+TlRIbXOhjJ6ZYmrZZOAObgfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nc1XvPCIUA2IFy4xduKlAjjd7MEceLP0+nnXegrtgls=;
 b=nJDSTjnoejae8LzAw9F+AHXoD7cLwnLs/tTVMzRWIhpxU4oFiW19TZPh7hX+Mo8Rg3NB5YAZk8unM+Qa6gEeXx4yF89DN9DNu32ODFO8jI6qPoC5DCHQtQM94VQtza18bsHSm3szKfUewZL3vKBMPrzSHMzO6StqbZP9O3RsghNuLBlH7jj5SvN3srmVwzMq1HtIbBImHtZA1CBT4CV5A1FWRbGo8Eqkbc8KEhLb8ghZPiZ1SAydjYJbeofhNKkuhTlDSQ5yh11iMDWn+M59EoIhbhKPQvCL905eOHMSc1r4Onclb5EKZ657yxsEXPdDfEuxc8xvCvB4iRmelPFmcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nc1XvPCIUA2IFy4xduKlAjjd7MEceLP0+nnXegrtgls=;
 b=Kvwxy38yR3M4lY2sTEh18fgXdhJmAyzKxrej1qGL2gpb1QVfNwjlDBoSYpXbg1JuGsj9t/y2yTXt2h43zhhdt2tUTPcdFankfWnZ1KHAbFcmo5VbKCLTAleuHCUA0QphTJKPMhyGyD3Tw57oblB4Vu6nIsqBJeQnZxn7+YqFRbM=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR1101MB2337.namprd11.prod.outlook.com
 (2603:10b6:404:92::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.19; Wed, 10 Jun
 2020 22:31:07 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::c908:e244:e85:3362%9]) with mapi id 15.20.3066.023; Wed, 10 Jun 2020
 22:31:07 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next-queue v2] i40e: Add support for 5Gbps
 cards
Thread-Index: AQHWNfQhHg4BbSHU/EmweT3v3pVV2ajSga0g
Date: Wed, 10 Jun 2020 22:31:06 +0000
Message-ID: <BN6PR1101MB214504E83090386BE4B190528C830@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200529200122.1471018-1-jeffrey.t.kirsher@intel.com>
In-Reply-To: <20200529200122.1471018-1-jeffrey.t.kirsher@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [134.134.136.207]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8041ca33-356c-475b-d816-08d80d8df7b4
x-ms-traffictypediagnostic: BN6PR1101MB2337:
x-microsoft-antispam-prvs: <BN6PR1101MB23371C58094D2C8B973F41208C830@BN6PR1101MB2337.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 0430FA5CB7
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: V0e+cFFjhhBMzxQsIa4FjO5eJ2mDwF9NkwBkmgOOXlzjB1pJM+qeJoZt3JSApeZSnkaHUEJKVyr1aSdMW3hFnq+40qAerr9WX3AtQ5W2LDmP3ZS3N7wQ7gYYr3IxmlKXfT22goreGZaW+WgffmvbwTW9apr/JOODQH3q518eAIBHJz9wE1i8YrY/qijXmlaulBD5y9bpuNWrRu8PZ1ved/wzeLvKUmHYWK+vUP0adFHErMpO/3VogOvPEPeEMr+ttRZXJ/Q+ETP2kACdnGg4Ty+IfABBAGuaSoASBVtvlmH74lqtRLM3XPOlA2rmGQAfQD8Urq5+rwZ7R3CHI3DdXQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(396003)(376002)(346002)(366004)(39860400002)(136003)(478600001)(4744005)(66946007)(5660300002)(64756008)(66446008)(8936002)(66476007)(8676002)(52536014)(6916009)(66556008)(76116006)(86362001)(53546011)(71200400001)(316002)(2906002)(26005)(33656002)(83380400001)(9686003)(6506007)(55016002)(186003)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: pJqIs1lNjzfuKV7Xn+PXzY2g7SIo3j95QER0CUae8ViGdXw4FUkuaNTBX8PWIpzQLV5C2y1K2JaJtFNtwxJvwK+wLY0o/cE/WtR4PS6/FYx6SPso+U2VNGo+J3n0paDDMM06l5YdvVJDWoBp7YfkaR7EKXg/NFF+tyvF3n7zhOiXljTaUYIC9hOhK8zFj+f2UhE9e7GA2fm78FhJ3MxI7KhBFT9OnMiNUeqbvtCDCqEK3w9Zg7s4LDrvofRp+/DeweM+vEfSFNwjIln/7IWlDmh6pfk+Gw0z2gTVRBNUKpTkHy6OcHJq8vP7UUOkWY1exkW7TyY3tRBaaiq7vomHyW5pVSdWzicXcAdj+I3lJ0jFsDNcjYmQ6FVcyAJ2Wrt3cc44XvkM9a9BRWV0aHwbxi/GcClOZ10P3y9Bjlaz7QXBPDhU7r+HktvILEzryIrE9Yujq7AkB08Tb4nqHpmjmWqf6D2oXtYgZxjUNFctzBcHhWZjc++hF+QBX5e76jLw
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 8041ca33-356c-475b-d816-08d80d8df7b4
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2020 22:31:06.8190 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QyUFM7OQx8T0khIT2UWVnzw/ePcq3pcqyOP80/xLwI0AuGb6cjTbOmrNYbzC6nNHdx6wvqI3NFvQs+NmH0H6etfKXVRGpImxxT1jJml9aeY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1101MB2337
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [next-queue v2] i40e: Add support for 5Gbps
 cards
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
> Jeff Kirsher
> Sent: Friday, May 29, 2020 1:01 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [next-queue v2] i40e: Add support for 5Gbps cards
> 
> From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> 
> Make possible for the i40e driver to bind to the new v710 for 5GBASE-T NICs.
> 
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_common.c | 3 +++
> drivers/net/ethernet/intel/i40e/i40e_devids.h | 4 +++-
>  2 files changed, 6 insertions(+), 1 deletion(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
