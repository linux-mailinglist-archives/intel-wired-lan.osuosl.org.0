Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF1F1B649C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Apr 2020 21:41:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2BB5688619;
	Thu, 23 Apr 2020 19:41:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VUl9aIIqZsD3; Thu, 23 Apr 2020 19:41:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CF03788642;
	Thu, 23 Apr 2020 19:41:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1BA571BF27F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2020 19:41:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 172FB86DE5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2020 19:41:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uCrbivZE4sCK for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Apr 2020 19:41:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A1BD786DE4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2020 19:41:12 +0000 (UTC)
IronPort-SDR: kBXdL3FYJ597RrC2QyNbUJOiMlUPebJDfe+xQfKLwr8mkkYjfScOM49jWAvzeNR7gF8ZRuCAjc
 SMY24nZLjKIw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2020 12:41:12 -0700
IronPort-SDR: dveeyvmDMy1kqDLHr/y64hhRFLVQbbiivz1aMwTfydTzmThDhcC3Zz5LACrpYJ+IS6WFh5XT1Y
 4KNYQomR/6Rg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,307,1583222400"; d="scan'208";a="335079363"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
 by orsmga001.jf.intel.com with ESMTP; 23 Apr 2020 12:41:11 -0700
Received: from orsmsx156.amr.corp.intel.com (10.22.240.22) by
 ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 23 Apr 2020 12:41:11 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX156.amr.corp.intel.com (10.22.240.22) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 23 Apr 2020 12:41:11 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 23 Apr 2020 12:41:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HIjwB1LJCJBh5cCk4vFUf4FEuAdzCWxy2my56FyqWfltyw8o88xhlTAMJisaDxJIeSayn8aGcuhy6f54NdO0IbuVgYV9Al7CHw7VkxXkOiitSu/EMQ3ehy5eQj33RBCV66bjntMMIPUaG5zEqjbpIpVzhgvfw9vDP8XK1dqY2opvBgqRyKhHT/khalRLyPmXeU4l83aPD16K+36Ep4jpT6Mb9+yu3R08yWCkD5SMV0n7zlIoMJIjxYPFIomlMqcU/rBYj3lCb+vPGxMSZwO9Km2VLECgUjiLQK8JXlOTRHH4UBgpwUJQgUY6GRGQJmFQsjjMdSxOSGhpuqBVBFa9pQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Rl2dYb1IBT0YvEmnVdUqqbNLkERcsuRRKmqUz+a29f0=;
 b=MswHTwTyuL16t3LF8RgS53u/W/pifPeuFbMZJfES7c4jyOMqt7NuKiXN151P8rgmCIf/qXyUk3I+4z3yhnSqWOhTbcPdnco4HiiAhcX6FAozN/S2ZcRR91MwzezNmLUvreWdWUQRz0ujiGiNbRmSJ5qh/caLj2XwJolUHYQcm6Ku36xdMEp6mypAU9a1eA9QDLoCWAL4IvuT1rp48/1JsmMzAFIWLFxVHZfIfZu3M2HYe7waGmdSeGFl4YvEtBbx3VFbXrhJ7B5NmKeLyBdd8G+Ia2q83O2gwGo+Qv+xSFNNIYm3EjZzTyiH39FGtcbwDvwu4vSquK0GlIEpl9YgSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Rl2dYb1IBT0YvEmnVdUqqbNLkERcsuRRKmqUz+a29f0=;
 b=uNrCn43UqxaxuBxf0N8G30eQrpADYY5f0n2WjD6RtIzwzpNpWL0Ad8AacAxEHtx6HdX1aGslSYE5qoLj4LhveBScMH+UEhb4TIP+RnODdiQphEjCXci4G5nrEvX+YslZOCZpaaGB5n+ue4LuqSub0KdZLjfnoqFRh84RZ43uSqc=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3626.namprd11.prod.outlook.com (2603:10b6:5:146::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2921.27; Thu, 23 Apr 2020 19:41:09 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.2921.030; Thu, 23 Apr 2020
 19:41:09 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove unused registers
Thread-Index: AQHWENXAQUuEs9YW6kyPxZciWlYc/aiHLHvQ
Date: Thu, 23 Apr 2020 19:41:09 +0000
Message-ID: <DM6PR11MB28901AC9A1CE83E3FC9B8D70BCD30@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200412142158.32900-1-sasha.neftin@intel.com>
In-Reply-To: <20200412142158.32900-1-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aaron.f.brown@intel.com; 
x-originating-ip: [192.55.52.218]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6ee13385-c590-4753-b1bc-08d7e7be45a5
x-ms-traffictypediagnostic: DM6PR11MB3626:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3626C1780DF5212A23E31EB8BCD30@DM6PR11MB3626.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1107;
x-forefront-prvs: 03827AF76E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(366004)(396003)(376002)(39860400002)(136003)(346002)(4744005)(7696005)(8676002)(81156014)(8936002)(52536014)(316002)(76116006)(186003)(33656002)(66476007)(64756008)(66556008)(66946007)(71200400001)(66446008)(478600001)(110136005)(26005)(2906002)(9686003)(53546011)(55016002)(5660300002)(6506007)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2mAtIn6DgqZ3Gr1WRl8gyD5XG19kwy39a9jJ/hmnM0l4g63+mkoLSklJ9KAoasIBNBcBwmAqi333wYZtD+ELs/VY1k0bA6SN/l86xu2jgGY8Ff0JFG/hmce2tp2KrmzGHpn9Z/6pCWNC0M+Dw2ekrZ/uVZDtXednCuZrmyqFa++q/b+Hk2N7oseoT/5h9Mrrn6C1U5nPXVJ5tSSdHKkCkWcfazEVWVGmbGANpiPY7UIxz5z9aCc33orp9WMzlKy+ioDYa1i5QUSgX7ee07Cu7fa03JVklfUzJYrKvy0hPOeTYYfzx+k7ZR0Etb5RRpdqfkbg/i/ZpsGPzsgNesRxQ5jBGe6RPoZYnZstdho5W+IEzbOT7VSjG7PlGX93EbXQUT4P5HK0uKgye6FDZD/IIMQWuF2J7ULMzPcatAdOBXAXDHb9GVj2mQY9pfv1xdex
x-ms-exchange-antispam-messagedata: ka7H/vFHEEerQcS3RnfAmmCNIu4DgYO5GD1Kyg1+SBiWhUxmu1Snyhh+/oeh3UjYUB0/4VAa3aoV0SkMuqEKp3yZPoSTx9zb08UnjCngkhORI0hpG2Y9xxeIEN5WHBEjeZqaiqbrWGbErZKqPdfnPg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ee13385-c590-4753-b1bc-08d7e7be45a5
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2020 19:41:09.3834 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4edC54cB8fIOERnheEwCI0G2loYUGasdXAly/RONsjhH0FjGsSRDH31gz9MVpfc5HmsJ5NLcs2lfN6YmhhTt9g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3626
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove unused registers
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
> Sent: Sunday, April 12, 2020 7:22 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove unused registers
> 
> Tx data FIFO Head/Tail, Saved and Packet Count registers
> not applicable for i225 LAN controller.
> This patch comes to clean up these registers.
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_dump.c | 4 ----
>  drivers/net/ethernet/intel/igc/igc_regs.h | 5 -----
>  2 files changed, 9 deletions(-)
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
