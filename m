Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 296DB1FA0ED
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jun 2020 22:06:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C5B0388F65;
	Mon, 15 Jun 2020 20:06:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lYwreXHhYDmb; Mon, 15 Jun 2020 20:06:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8C218884AA;
	Mon, 15 Jun 2020 20:06:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 847151BF3FB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2020 18:51:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7D7B387A79
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2020 18:51:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DZvNuQYa1ioW for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Jun 2020 18:51:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7D23D87A6B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2020 18:51:31 +0000 (UTC)
IronPort-SDR: 0dYBADuKniJN8t75N+nBIYgxVvuetGAgAWABi3oBd8mQvsuwUXUNQibcJM3ZY9o5edLoizNUwx
 aZpb/ITMpxag==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2020 11:51:30 -0700
IronPort-SDR: 6SFypKTBpRlY7Mnr1WCg9THktGjkywNwtBYqVdwfHUCMYJuTX/fawFASI/Q7gbeaDJ7k+7FhcE
 2eYIc6limDzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,515,1583222400"; d="scan'208";a="276655726"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga006.jf.intel.com with ESMTP; 15 Jun 2020 11:51:30 -0700
Received: from fmsmsx151.amr.corp.intel.com (10.18.125.4) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 15 Jun 2020 11:51:30 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 FMSMSX151.amr.corp.intel.com (10.18.125.4) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 15 Jun 2020 11:51:29 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Mon, 15 Jun 2020 11:51:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SS2UDZ7SCAun7JD7uRnx0bl0LZpKqJVhQwyH+J9JNm5bfAmcHaTGR2uMGzNszTCbzzr5/GP57zZgF+3rrVfYHek6D0xQXyABbpm+7XM9ZtmTKsbaUMkhXK95T4M7myiNLNlN3TycvoeVSARo/3Uf+rRz73GLXq8AxbuaY31ppHJLqwI0nVQWv3i0UcvdN3zZrxY19bqfJCW9OuruqNn7QFWXuD7KGGenh230nB3u4g0liBW3yuqJj5k/g++MlWXruww/4Qni9X+vTcboTTQ+HaSBCS0h0qgitNe5QB0wJkQWt+FVkd7bnpYz8kVksAriI5loAh5nO+frERBtauliig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=53Y4VcnXqRVfpwwnPW0aKgctY9ofS8Dj5G6b9L33igs=;
 b=CX4U7QYweAfknHt5a9lnlPZvmi/pE4K1E2Mkg8JiwNpOm1xGXHmqOjPZX72YUrm3xd6gr6409XV8f8NCMhu8fKpXmTrX+VDpn8eVbH3zxBfj8POY9eWQ9L+MvhqAxfYdvvei53uD23ozZ/LQei0KprCxc7E9iX+xNQ9ho8kYsTTL93l2w//0NyBWOgMcuh4cYxq7Y1SQUJLTC3UXvrk1G7qn7cqCpytPzA+oWhOuqMZ7zx5PlHb788UciPQzI+oZZiTANquyk+RAIY4Kr9Z46oO7e7OksTgwP+QSJnC/MNJS2y/fHVmmQ1gDGcS4nzQiEggPZY/0VlCDFbczCvsXKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=53Y4VcnXqRVfpwwnPW0aKgctY9ofS8Dj5G6b9L33igs=;
 b=M/xWvYjCFsBbpK1b/axA2mq+vMR+TT8zngC+6Yf9b70S79McBSHURxZn3SB7n5UPl6QanbvJYpJNsH8EdO3k6Jp5LXIyXwXFgO0owzErYP4M+PlhIRQDxnsJzB3omQa3A421ZZs1xQT+Kkc+JcvVkq33l6qhSKvcWeqVzWvg1Og=
Received: from SN6PR11MB2896.namprd11.prod.outlook.com (2603:10b6:805:d9::20)
 by SN6PR11MB3504.namprd11.prod.outlook.com (2603:10b6:805:d0::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.27; Mon, 15 Jun
 2020 18:51:27 +0000
Received: from SN6PR11MB2896.namprd11.prod.outlook.com
 ([fe80::ecf9:3d9e:8c8:75b0]) by SN6PR11MB2896.namprd11.prod.outlook.com
 ([fe80::ecf9:3d9e:8c8:75b0%3]) with mapi id 15.20.3088.028; Mon, 15 Jun 2020
 18:51:27 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Chen, Yu C" <yu.c.chen@intel.com>, "Kirsher, Jeffrey T"
 <jeffrey.t.kirsher@intel.com>, "David S. Miller" <davem@davemloft.net>,
 "Jakub Kicinski" <kuba@kernel.org>, "Kok, Auke-jan H"
 <auke-jan.h.kok@intel.com>, Jeff Garzik <jeff@garzik.org>
Thread-Topic: [PATCH 1/2] e1000e: Do not wake up the system via WOL if device
 wakeup is disabled
Thread-Index: AQHWL5mc0ngXWRQgFUqdbYRE2QINUKjaLL7A
Date: Mon, 15 Jun 2020 18:51:27 +0000
Message-ID: <SN6PR11MB2896298A90B37CEA0DC5A750BC9C0@SN6PR11MB2896.namprd11.prod.outlook.com>
References: <cover.1590081982.git.yu.c.chen@intel.com>
 <9f7ede2e2e8152704258fc11ba3755ae93f50741.1590081982.git.yu.c.chen@intel.com>
In-Reply-To: <9f7ede2e2e8152704258fc11ba3755ae93f50741.1590081982.git.yu.c.chen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.215]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3f487dd3-b252-4d3c-0a7d-08d8115d1c39
x-ms-traffictypediagnostic: SN6PR11MB3504:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB3504E67536F56BD7964191E6BC9C0@SN6PR11MB3504.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 04359FAD81
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1Ntxyetejkr8go7fqnto0H7OOluDbODAsL19Tq3cV5gp5jcSOK4sXCKmf7htbb9lCa+etwtBGzUv8jAr7rKwVh4G8Xf23fG8Vc9vjW7yBDhofJGreIS9nMbB5eqOj6fVv+E3apAStXD7UsreFeELDjTpc1o9nb+2uoenvsZaGC983WU6dTQo3f+CXnAZmbzG8mbqoDc0TQ2+x4zyJq+glFhZcFPwMoaLH1hJ3/ABJ0DrlkXdyBnxMum+St39EvwhluN/jaEGJBIcLx8gJmZ7nZXWCfFf/fGOeTQTaWM/HU0R1Kl0wKGGfCiRYZ7O0yJ83OadILpSby2xALSgHn01hA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2896.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(346002)(376002)(396003)(39860400002)(366004)(53546011)(33656002)(8676002)(7696005)(6506007)(86362001)(186003)(478600001)(4326008)(5660300002)(55016002)(8936002)(9686003)(54906003)(110136005)(71200400001)(316002)(64756008)(66446008)(26005)(52536014)(83380400001)(66476007)(66556008)(2906002)(76116006)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: OjVeSFxJCtLCgntLMn1jTYp2OPXl5qbOV5fQLAhz/D0EzRLzm45OMPkhcBScWkSehGPP05XvAPaZc2iOlY/de972xgLTx82S7EM1szVli4fA02MynijRHxNmgrdGey2kfkT6u9TFKPl2Kpioatx0LYRyJlK9r30cykpYaQf0M9kZ6n2KQEMc0XohzX6w4Y86wHlspiU1k9AJJco8B6fiWgp2JhAZKHWAfeMhw+fT2B+WgG8LaRevyb3ZytN7dJMZJolLCrZUOLm/Y7RXa/bQmaOohv/SgEi/cAXBXdvPOkSQq0LYBpGF9caG9SlDnrLuv59FIzMURtDM3DwgxX3mppnl3iaWoPP5fDXSB9WUaIAnKX6cbFGkS3nKACs51nG9O+Duz0GmMcGd9aFNpMFK848E2GPDScO3PrcPcRcqlCSmq7I3GwKmszdwA01pgDP3C80M57ePCDmyGfU9AHvG/jxA5TE/YJWE0JrRjqFwTXXy5bFiD6wrjeean69eAi3W
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f487dd3-b252-4d3c-0a7d-08d8115d1c39
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2020 18:51:27.4229 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jPSJTVL3a2YaaB3poOIsnXyLFBA7g/uPfgPUkbVph+WajP/t9XOxP96SViQJq8XJC6u/EkvZzlCQjB8qmaBKeg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3504
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Mon, 15 Jun 2020 20:06:23 +0000
Subject: Re: [Intel-wired-lan] [PATCH 1/2] e1000e: Do not wake up the system
 via WOL if device wakeup is disabled
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
Cc: "Brown, Len" <len.brown@intel.com>, "Shevchenko,
 Andriy" <andriy.shevchenko@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Stable@vger.kernel.org" <Stable@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Chen,
 Yu C" <yu.c.chen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Chen Yu <yu.c.chen@intel.com>
> Sent: Thursday, May 21, 2020 10:59 AM
> To: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>; David S. Miller
> <davem@davemloft.net>; Jakub Kicinski <kuba@kernel.org>; Kok, Auke-jan H
> <auke-jan.h.kok@intel.com>; Jeff Garzik <jeff@garzik.org>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org; Brown, Len <len.brown@intel.com>; Rafael J. Wysocki
> <rjw@rjwysocki.net>; Shevchenko, Andriy <andriy.shevchenko@intel.com>;
> Neftin, Sasha <sasha.neftin@intel.com>; Lifshits, Vitaly
> <vitaly.lifshits@intel.com>; Chen, Yu C <yu.c.chen@intel.com>;
> Stable@vger.kernel.org
> Subject: [PATCH 1/2] e1000e: Do not wake up the system via WOL if device
> wakeup is disabled
> 
> Currently the system will be woken up via WOL(Wake On Lan) even if the
> device wakeup ability has been disabled via sysfs:
>  cat /sys/devices/pci0000:00/0000:00:1f.6/power/wakeup
>  disabled
> 
> The system should not be woken up if the user has explicitly
> disabled the wake up ability for this device.
> 
> This patch clears the WOL ability of this network device if the
> user has disabled the wake up ability in sysfs.
> 
> Fixes: bc7f75fa9788 ("[E1000E]: New pci-express e1000 driver")
> Reported-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Cc: <Stable@vger.kernel.org>
> Signed-off-by: Chen Yu <yu.c.chen@intel.com>
> ---
>  drivers/net/ethernet/intel/e1000e/netdev.c | 14 ++++++++++----
>  1 file changed, 10 insertions(+), 4 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
