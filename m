Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C7E0217C87
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Jul 2020 03:23:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9595B86B10;
	Wed,  8 Jul 2020 01:23:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UEYufFB8rryz; Wed,  8 Jul 2020 01:23:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E43A086AD8;
	Wed,  8 Jul 2020 01:23:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9CA6D1BF3E9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2020 01:23:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 986F586AB3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2020 01:23:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id POKAswcNQssE for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jul 2020 01:23:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AF81D86AB1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2020 01:23:05 +0000 (UTC)
IronPort-SDR: 94AMYqyLFVp4EBXozuwzt6vQMbElmEHN+bilwmKfe4q40gaTV/NI0jaXFlOP0AHvXy4641enBD
 z0yqB/LM1/yQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9675"; a="212665088"
X-IronPort-AV: E=Sophos;i="5.75,326,1589266800"; d="scan'208";a="212665088"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2020 18:23:04 -0700
IronPort-SDR: ZaLF8MEzmdgVip7Suf0AoiZnXjHOjGeES4wDOfBaaOCUhZVC7ip5dbZ6Uq0BwjX7JT8htcC9hy
 GeU9RagGp6vg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,326,1589266800"; d="scan'208";a="388674546"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga001.fm.intel.com with ESMTP; 07 Jul 2020 18:23:04 -0700
Received: from fmsmsx112.amr.corp.intel.com (10.18.116.6) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 7 Jul 2020 18:23:03 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 FMSMSX112.amr.corp.intel.com (10.18.116.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 7 Jul 2020 18:23:03 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Tue, 7 Jul 2020 18:23:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JnD+0vk6AUgYB5p9hRLvM08ve3dZxytadhDhYX1kOKlNzMPBCpt6hCNCXt+Se2ymjd/vbIRlbZVNvtDmzW8q5UOmQ2men72O8pH424n5ES/SYvMJmMhCkdHkh2P215fZG3o7m4nkzzLI3ZyOnSz/Jj7XMSe72AoHBE9tGMETdBwDv5GmtHj0A1K8mzQ3SSUXBUC5ZLE8SiZZ+LT1dA1lnBVLKjHniZa8M9yBwOVOrejPALw3oSpfpN+p2S61L1SALIaP/CM+ica+nCeT80jOIfYx7LqOxGF6eiW9T9j27DXQAyrfod+FzUddoLPQ6QhNPACqBX0eRdYH/55xu8m/Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+ZhCs1bzcMzNcMIwgAJwu15zSQe4Asq2IuabcHSjZSA=;
 b=Mg0kZr6S9wbOiXjVPxI7wqtUv4FV/1gZKBINQNsrFOPhjsvVxxGDMdGVDLvJ1V2EgfigXLXWlNbqR27K747GyNAg4hV8s52nF1tj8LxXqAojqvwgP3vkotCx6sD4x05b7bCLRJ73/0rsZuh4sWIr3IB7wtQsw6l6ARypCt9JSgUUFzWdehLxNIOHP6MMsA21t6WoMK+unJNtnMURX5QnS5e8dRM9UjRMPB5AvbcYLh6mSfzT5EQ7wLsP1B2jQgHZltSQTEThiXO37W5dEgAdb0a/KfzFGnDFFgtI3xQttCUB6HAy00R6iZO6QcfGEgGsMWnLGxmUQvtBQNCNGUXueg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+ZhCs1bzcMzNcMIwgAJwu15zSQe4Asq2IuabcHSjZSA=;
 b=Sbd0PGcTchzluSPxMNJlBy/HSTkVThrYN0k1SsDZ3N5/femkdaVCUqHGhymwme8lPzEZB46I9xMI0E2sZoINQ0Gv05FgNvCk7evhqbkkqNw/1I66MPoH2GS7rATIk+2ZWUS2DSechahVjhRQawKwgxSak75UIBjXc3W9dvMc5ic=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3913.namprd11.prod.outlook.com (2603:10b6:5:193::33) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3174.20; Wed, 8 Jul 2020 01:23:01 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd%6]) with mapi id 15.20.3174.020; Wed, 8 Jul 2020
 01:23:01 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1 1/1] igc: Fix registers definition
Thread-Index: AQHWTiX8Rwu41zY+X0yvCalWUdNOYqj88DUw
Date: Wed, 8 Jul 2020 01:23:01 +0000
Message-ID: <DM6PR11MB28904E416C274E61415ED35CBC670@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200629145944.34867-1-sasha.neftin@intel.com>
In-Reply-To: <20200629145944.34867-1-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 54a014f0-f0d0-4dc8-17a3-08d822dd74e8
x-ms-traffictypediagnostic: DM6PR11MB3913:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB391360B08D4A3297BA6A10DEBC670@DM6PR11MB3913.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:185;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DzExZOKElfyrRL75PyEQb55Nno+mISQzCz0+Ipd5DNQmuPPvZJXgfBmHqRUzpy59ovVVgFp+TuKJp8QdkkvH76vbrKtgIfv+2nsyqayUvAGdAHcxhEvrwLTzOOd/6c1DTRCW+AfZCrIuQu78lajnqZZXqL4DGCLjWUM1k6akdt2QkjJ/4IeoYKAlLFEDpn7f10D3V69FmVnUbvb7pWkZpNX40NuJqYri2ssoAtXKZlRu41chC0hlFiXjAAaMvcbhIUajftD/pdGsLDQ9m8uZw0mRufzI8/9NtY+n0i0dP4Cwq5FK2a3GhEyCfTGCQ2hB
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(136003)(346002)(396003)(39860400002)(376002)(66556008)(4744005)(66446008)(66476007)(26005)(186003)(2906002)(55016002)(9686003)(86362001)(478600001)(8676002)(83380400001)(8936002)(6506007)(53546011)(7696005)(71200400001)(66946007)(64756008)(76116006)(52536014)(33656002)(110136005)(5660300002)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: Da6vDt1vN7LJpsdkY/llgzbqbXzvaNMwC+QTnPn6rVlHvSuPgUIxmxGjkbWKFoz2bIhykw/HBA059fiqsVPC6w0Y5r4aIG+3wHINSiysDrg8ZGXNYFRMJr+aC/PlVMiTpbEQnznbb7VouBlXEgLuHBxKnfadR70GrWc5Q/ccXvkZQ6bPwFCpuqzF15G0lp9wlDi37XGAeONep4ynbkEHLVVZEdsY8PSJihop89z/SKxTuSCD2IS/Allh7IzLWbycPIjunJqAkGgtfVnuMl/e/hL/TmGQwby6bOP72UtE2j2KvKy/1Thcc7cW/d7sWGhggBZsaxy1Y5giWFEtekGFtWOpchQgPksZfLrgKlqkssQ1fCnNZ58tY2s2dmWMzpA7L83OveXBdgk0fpQgb7u5B3TJsuYVsCZfwQSVI/QFkIbqDVyHROjU58e7z9ID0TdM6Ce0xuoLXt70fHS5WUYyeiC/7I3TSROSDdSWj4qn7FlUaeQw0JMhG9Vv+5bjqmzI
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 54a014f0-f0d0-4dc8-17a3-08d822dd74e8
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2020 01:23:01.6390 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RlJBQRqq+dzz68MbYutvivMY1xoXBOS9GYjOplmb1YudXkWF6Df/UGuc2ZW9akaCYwVQDMM0UdwnwslZeiFzGQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3913
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Fix registers definition
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
> Sasha Neftin
> Sent: Monday, June 29, 2020 8:00 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Fix registers definition
> 
> Fix double definition and remove unneeded registers.
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_mac.c  | 4 ----
>  drivers/net/ethernet/intel/igc/igc_main.c | 4 ----
>  drivers/net/ethernet/intel/igc/igc_regs.h | 8 --------
>  3 files changed, 16 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
