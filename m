Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52DE61DEFFB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 May 2020 21:27:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F3D08888C2;
	Fri, 22 May 2020 19:27:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sVPhe5lJeY+R; Fri, 22 May 2020 19:27:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 76D9188898;
	Fri, 22 May 2020 19:27:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4F0841BF2A5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 19:27:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 477168885A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 19:27:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IEGYps0jluxC for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 May 2020 19:27:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6460688859
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 19:27:36 +0000 (UTC)
IronPort-SDR: 0HOSGzjGnf2n6bD1iIe46iVcjwkK/2ga/2LX5qPAxIVaV7aqe4sx19qTscxzYPMwSN9wwyaAaV
 rrz8KnbPwSzw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2020 12:27:35 -0700
IronPort-SDR: Tyq8AnsJplur1wi5ehl1m6hY6vH95AOHRy7eqqlG1FaNmiZo8q5uNLIM0KLDQyMKi1BV32gVQs
 R5T7OACgGSaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,422,1583222400"; d="scan'208";a="254438188"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga007.jf.intel.com with ESMTP; 22 May 2020 12:27:35 -0700
Received: from fmsmsx116.amr.corp.intel.com (10.18.116.20) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 22 May 2020 12:27:34 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx116.amr.corp.intel.com (10.18.116.20) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 22 May 2020 12:27:35 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Fri, 22 May 2020 12:27:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bnIQ2hkgOP5vG+3tVuwkU+XF9VlxmWkLwjZTQAdw7NmAkvkWNOhJ9qDnx65js8StH2KQ/RZHOJm85Xgg9VuJ1S4UCFoK9IcvJOZJIA69ol++SWwzrq/3fG8huZSJE4uK8J4oxsNqq/d6aYBZPP9aNBIL6w802boeCkPm2avBIdd+7ndjbGKGmz8snDBu3zGyvaS0k3gBr5tJdsQa1bVHptWc+1DBnjpUCIYBsCpBUnKlZ0hSnjDfpEgOEvCWEl+HH42tfAlegqj4ILNBL/4ZYPOVo7YgJ8PF1ezjD70Nb0KJHv6c9eoCtLDJn9mji9qvePni0jyKwwrErW+7CJD13w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w+Zd2Da5HV0fDF1y2Bg1jCMUb3PvmvPfnB2L/LkLmvI=;
 b=MyoWKR9RWF41kVAWKluNvcwo5/sNpcmgdKBjTBN3sYiJ6IXSztLx3xb3hZPju4Dd3R7hXb3F9iJ+WgR4pA8y9SqGE7nJCysnskTutE2QEG53o7hMMIjg9mC7RU5eLcHxHMZe8+0dwTJvzeer5mkjzYWYzDdjarTwEWQ0SQ6j6zOFI2yry8gEtDzAMT0nbsb4tZHZ3q8NjpLYDtwaCFm/RchgXN8LNEUL//FKsbzY69mqpPrWwdSuvyq4/HoVG3e84q8keQ1OGxAejzn3eu+nO2EB4QEwlNzdF3OcbQkIZ2XTE7FWxviHupsWeWcByZsUhrSU/hOTXy9Vsu8J/gzh8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w+Zd2Da5HV0fDF1y2Bg1jCMUb3PvmvPfnB2L/LkLmvI=;
 b=MypD9DmDUDltMCyRSR0Lou4i8Mb9FDHMIsbbrrnjYQdTCAAB/7ZsdjlKTr3ohQAP3zMN6ZP6fW2IL3Q3g3xZM6ShFeTuh48G8y8SUWR7jQk6kSs24lWBIZ8a3YbFEp7AT7pn5vAESj0v18DVkOWqmSEBvWLlXETAzVnTzfkt0uQ=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1786.namprd11.prod.outlook.com (2603:10b6:3:113::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.24; Fri, 22 May 2020 19:27:34 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3021.027; Fri, 22 May 2020
 19:27:34 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S43 02/15] ice: print Rx MDD auto reset
 message before VF reset
Thread-Index: AQHWKxqFBcEuHIctvEuiNpIgbWJRTai0h8YQ
Date: Fri, 22 May 2020 19:27:33 +0000
Message-ID: <DM5PR11MB1659E660E6AFF8FF01D49FBC8CB40@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516003644.4658-1-anthony.l.nguyen@intel.com>
 <20200516003644.4658-2-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516003644.4658-2-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.52.201]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 26aabc63-5a8c-4472-7aa7-08d7fe862da4
x-ms-traffictypediagnostic: DM5PR11MB1786:
x-microsoft-antispam-prvs: <DM5PR11MB17869F377DC0E99E790EC9368CB40@DM5PR11MB1786.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1303;
x-forefront-prvs: 04111BAC64
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jYxd0oLeTFOKfkmSXAIfBdvQDxE8AVG94kWfrm1Ya+Y+kuZJu9Nqky9c+uBJcR2eAZ6me6JnRwGIwnvPfTs36TEDKxt0DhSAyjji/13E6X8Yq1RELrb7VB17TwDTjFe0HzER+/gNgB3VyGRasVGlVFWrohGkfbIjpOSFKR9TE0XfqIFlSgmb8YTAZL/XaiMffnFPUkaq8q1d9HqD/eJqWnsSqEnCzbpbTb1G1jmL/PihCYWba2JkFjinV+x30dus1aTDlqYXm9np0Bxk048M/0O6NNoX//Dh9r+aR8Zjsu/VT4UTFpttqiPaSp0u+z6i
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(366004)(39860400002)(396003)(376002)(136003)(8676002)(9686003)(2906002)(26005)(316002)(55016002)(8936002)(6916009)(186003)(52536014)(6506007)(4744005)(53546011)(64756008)(66946007)(76116006)(66446008)(478600001)(5660300002)(7696005)(66556008)(71200400001)(33656002)(15650500001)(86362001)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: HmgcCEBb53WGHi2JnaKJwKKdpNz9NYjL1CH7h7mLUK6SGcklDE8G43WLF8AZm9aaVtoWR+XPPF7hqcDkjMvfOesbjwt5dbyJjRiqiTwjyD7wP6qguZ3Gk2mnv5n8zXnKwp4pb0BRn2ecnur77QP34gbcnXiShryklbvzoWh27nzNA9u5waFTo/s60n6O6ea/aNCJRtKpza15418l7teptiafKsbIuO/ffxfab8CQTMP4RFltGviF7oayeKcsdhWFXx9Tum4gBEZbkXVy1T9P0QQkNl6vHGMribq2ZGq0VX0KDFI/f8an16RgDeCsTRUY/BQ1sOYJUv2HPxYynV5MrVxWJ+mIm23/AmTsGehhPNnqKzGpe1u15MsNjCCDTbySkI1HeDkEHkC9pCJuYDa4zy811FRjwaWipspOwP/L9PjVW1CwhtjXFlCYIQUBKSSCgjtYNjbvdrv2QhibLEfUPqEqkA4Q0yOKshpjJMFFqTE=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 26aabc63-5a8c-4472-7aa7-08d7fe862da4
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2020 19:27:33.9462 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vfL5kPmJZpAL4NymR0ogSFDFQvmorgjcXDdNF3KbuFjwud8uIiRxi5lmVc+gGA3XZ2NzZzbG+Ra+edkrBN+Pm65zeC2CHDSBKRqtUiDjojY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1786
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S43 02/15] ice: print Rx MDD auto
 reset message before VF reset
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
> Sent: Friday, May 15, 2020 5:37 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S43 02/15] ice: print Rx MDD auto reset
> message before VF reset
> 
> From: Paul Greenwalt <paul.greenwalt@intel.com>
> 
> Rx MDD auto reset message was not being logged because logging occurred
> after the VF reset and the VF MDD data was reinitialized.
> 
> Log the Rx MDD auto reset message before triggering the VF reset.
> 
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c     |  7 +++++-
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 25 ++++++++++++++-----
> .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |  2 ++
>  3 files changed, 27 insertions(+), 7 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
