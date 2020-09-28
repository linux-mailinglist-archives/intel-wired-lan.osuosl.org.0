Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AFF127AF96
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Sep 2020 16:03:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3D6A1845D6;
	Mon, 28 Sep 2020 14:03:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2vHrwxrEiEzC; Mon, 28 Sep 2020 14:03:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 150EE84E77;
	Mon, 28 Sep 2020 14:03:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 377691BF3D8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 06:13:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 30C158700E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 06:13:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0-ei8POx6ie5 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Sep 2020 06:13:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C9BFB86F97
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 06:13:27 +0000 (UTC)
IronPort-SDR: 1hXaEonGTgekEFl8n1EJJhOXe5pkCYYBVQIzZP5G0d518jKHq5FkOKxH0Ip1a9I4jlUodUUXK6
 MdDVasnnSkPA==
X-IronPort-AV: E=McAfee;i="6000,8403,9757"; a="141353908"
X-IronPort-AV: E=Sophos;i="5.77,312,1596524400"; d="scan'208";a="141353908"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2020 23:13:26 -0700
IronPort-SDR: hwF5m6QvYePL7/ipbapYjSrK2vsqH0HZW4HLatd918awkUqG3iv0agS5KeoIZSMS91PYa/CtAH
 3USqcQM0xPTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,312,1596524400"; d="scan'208";a="456706837"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP; 27 Sep 2020 23:13:26 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sun, 27 Sep 2020 23:13:25 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Sun, 27 Sep 2020 23:13:25 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (104.47.37.55) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Sun, 27 Sep 2020 23:13:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KfpxPtvW4ZXKbh5Do9ynNs5YX4lB6Ypr/PVnJbiGNhdaNTEzYBSR+CazkIEF4ia//yaX3PIAB63j3cjZIYVvPdbGpYLpItn/P/fLtUvOruNnRdJH7RcvCnuCTJYzJyYjHcOmTMRxtos+9kV802g7fEINblpLg7zJVQebtAw0xvpMIfo/f5rDNsiVTAR4eEnl4qV8D3UxaagRn9NMABnC+vjnCQI2+N+epEK1U+nDjnxD0/dOfOQVWatggTZ8CaWs06pJOqefAC3vo4r1K2cVwZs85lh8l0CAlZnXajVnlIyv0bfbJ1XO6R5tvCBbgwPVmu7FSktxaY1dwSxd9xtDBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v91NShPXLaorPLDF9ArQj8vDuHMef7Hw1fJvONxDt6I=;
 b=If+ctNGnXBT+BR3KHE9XXYAtEW82osK1qKRc1TuSFuK+/MlgRv4NJR8XVst+qJZ42tp91PPz5oX1w3OOfmfssQVD2IpSfSRfPe/FJ7Psc2qvjdMe/QoWQcCSNORQjV+l0nQwPSZ4Joky0PUPPV3Arc+R+V2NJeAf+i+5DJTLb0nz7dwLFQcfeN5QcPWi4owLuR011G0DAKNNXII7gGfyHxdPxQVqDbws739tqKyur9A0yb+QWbi38wPauotPe1h967P0nZmueqcPBd5P7VFfmvVIRTAI1MJvpv0EYv51Vv6AKj7EQu5vuVty9hwPTEijIfaZsH1zy+inW5R1I7Hvyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v91NShPXLaorPLDF9ArQj8vDuHMef7Hw1fJvONxDt6I=;
 b=v8VcYOv3pKXMq/R5UR7hwkA12ds+6b7OfOFqAkL5JVxSm2Ds26uTXnANptXhSxKcZklntq+cEdoWnwNIDRnGORWcaAPqirMj/OEHlfSdgmy+JkgpCN5DWs4x35WtAYUwh7RxitqyuXxTgx8qAxKCPmZU8LMZwUcLMlZyEoXxL7A=
Received: from BYAPR11MB3207.namprd11.prod.outlook.com (2603:10b6:a03:7c::14)
 by BYAPR11MB2616.namprd11.prod.outlook.com (2603:10b6:a02:c6::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3412.28; Mon, 28 Sep
 2020 06:13:15 +0000
Received: from BYAPR11MB3207.namprd11.prod.outlook.com
 ([fe80::718c:ac63:d72e:f3c9]) by BYAPR11MB3207.namprd11.prod.outlook.com
 ([fe80::718c:ac63:d72e:f3c9%4]) with mapi id 15.20.3412.028; Mon, 28 Sep 2020
 06:13:15 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "tglx@linutronix.de" <tglx@linutronix.de>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Thread-Topic: [patch 28/35] net: iwlwifi: Remove in_interrupt() from tracing
 macro.
Thread-Index: AQHWlQh/JW5wj9yvMUGHzMIKohlOGql9ktIA
Date: Mon, 28 Sep 2020 06:13:14 +0000
Message-ID: <ab22cc7b0d1f98e1d620e77ce7abce1f95b6813e.camel@intel.com>
References: <20200927194846.045411263@linutronix.de>
 <20200927194922.629869406@linutronix.de>
In-Reply-To: <20200927194922.629869406@linutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: linutronix.de; dkim=none (message not signed)
 header.d=none;linutronix.de; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.191.233.107]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9e6d0f52-3c3d-4c3d-ed55-08d863759625
x-ms-traffictypediagnostic: BYAPR11MB2616:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB26165A549D21C656D7367F7890350@BYAPR11MB2616.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zxUIYXyEaA1gKroiEZbP/ha+boO6xOvD1R9rW6wdW8PTbjgXTG0gkuflwRsjFdFnr8620MXy1rY0WJfosXnunN8igv/9YcPCZnhMstffrhl6deapA95+FDXCVk4KnkejoadaW9hVcovZZv09DOwGBEtiDbdJWjE4DOhoIXeMl3AqfLMtwCsRqqjVTj+8cZl4gzbrHi0mMKi14NGSZZcAK1yRwnXiCI2djTMMcXyKlOc2IC5j/+l8NWsxF892mps21PqhfK/gBmPiPWTYZDUSmLUQbDJlZWvea5hH8dH/MPBfAhdnPg3ApWGgQuv+CPJRZpCM/6yw9pvJjZapgwD58fPm7ysmLP4zDuvAT1qv/CYHlyioxHyH4BHKvRB75MrJ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3207.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(366004)(136003)(39860400002)(376002)(346002)(7416002)(7366002)(7406005)(36756003)(6512007)(66476007)(71200400001)(91956017)(76116006)(86362001)(66446008)(66946007)(66556008)(8676002)(64756008)(5660300002)(2616005)(186003)(4326008)(6486002)(26005)(6506007)(478600001)(2906002)(316002)(8936002)(83380400001)(110136005)(54906003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: VsGwApBGm0NBGAEVSmBr7J0gOK3cf/mHi7lcKdsJLKxbrMyNvcTh3pZd3WOJSvJTpRhgq5/yNEBWUmIck+uWtIf2FZBtqdF4IgwHFY0V1/o1Py4fdRkzUwky1OeZfE3eoTYatwgVG9zvGU5isJjXNC9hr+BL4a0PVRwftEkWSK6OtPKid++IOqtDnxzY76VypxcHNqPTQXHp5ES8W2N5DgdiE0rywFxgtDL/75gi8FBB7TZL0TZFhS78/CekugCv8/34VweHv4WQ+1PsBzM+LG9XmyP7Qj2S4WlLfpEq9KFecEgQnJNqm9HqV/PzTUyQhobdOo7mXwHCrvzDb/erCsM41pYyNasvKD3HjoYIqwHe8B05Dcog+2cAVNshukjLMfQf27XR4jXMOSDFaH07OSouq8cRNgXFcv/S1Dd/RZEbI8TX85yZoMMf9Zw0G+pbMroIpCBH094MfODYzwp9z916nuNfnxkqmaCPjiM1u9rrGDE1Gk8oQQ8dB7Ltu6Ypsa79hLrmgJT4DaTH4jwbxAIuhHJ8JoPT1bA1B5FtfBMDLJMd4SLc4r/eqYoJPElyzKa5xeQ2yHHCBifP+/1nUDu+WXsv//wKuLK9oTtaDF5RslgSpDWQov/TnKOz6T1UGdcXrln7TD+cFij0hzj/fw==
Content-ID: <8EC18655EA315646977202E236D35B5B@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3207.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e6d0f52-3c3d-4c3d-ed55-08d863759625
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Sep 2020 06:13:15.0009 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ssquw4STZOlqvXnvG0eg0UwJoGWbnmLzDSIbk6cgG+xoMV2uky1TqOZtgQ4RXopay1qvfNHMxX63dEsPHjCNLb/YAvoNQrNHzEQUBZEbAVM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2616
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Mon, 28 Sep 2020 14:03:43 +0000
Subject: Re: [Intel-wired-lan] [patch 28/35] net: iwlwifi: Remove
 in_interrupt() from tracing macro.
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
Cc: "andrew@lunn.ch" <andrew@lunn.ch>, "Grumbach,
 Emmanuel" <emmanuel.grumbach@intel.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "peterz@infradead.org" <peterz@infradead.org>,
 "chris.snook@gmail.com" <chris.snook@gmail.com>,
 "mhabets@solarflare.com" <mhabets@solarflare.com>,
 "benve@cisco.com" <benve@cisco.com>,
 "arend.vanspriel@broadcom.com" <arend.vanspriel@broadcom.com>,
 "amitkarwar@gmail.com" <amitkarwar@gmail.com>,
 "ganapathi.bhat@nxp.com" <ganapathi.bhat@nxp.com>,
 "ecree@solarflare.com" <ecree@solarflare.com>,
 "brcm80211-dev-list@cypress.com" <brcm80211-dev-list@cypress.com>,
 "stf_xl@wp.pl" <stf_xl@wp.pl>, "pkshih@realtek.com" <pkshih@realtek.com>,
 "paulmck@kernel.org" <paulmck@kernel.org>,
 "libertas-dev@lists.infradead.org" <libertas-dev@lists.infradead.org>,
 "mchehab+huawei@kernel.org" <mchehab+huawei@kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "willy@infradead.org" <willy@infradead.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "dsd@gentoo.org" <dsd@gentoo.org>,
 "chi-hsien.lin@cypress.com" <chi-hsien.lin@cypress.com>,
 "stas.yakovlev@gmail.com" <stas.yakovlev@gmail.com>,
 "jcliburn@gmail.com" <jcliburn@gmail.com>, "Berg,
 Johannes" <johannes.berg@intel.com>, linuxwifi <linuxwifi@intel.com>,
 "j@w1.fi" <j@w1.fi>, "drivers@pensando.io" <drivers@pensando.io>,
 "linux-net-drivers@solarflare.com" <linux-net-drivers@solarflare.com>,
 "hante.meuleman@broadcom.com" <hante.meuleman@broadcom.com>,
 "torvalds@linuxfoundation.org" <torvalds@linuxfoundation.org>,
 "_govind@gmx.com" <_govind@gmx.com>,
 "wright.feng@cypress.com" <wright.feng@cypress.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pterjan@google.com" <pterjan@google.com>,
 "bigeasy@linutronix.de" <bigeasy@linutronix.de>,
 "franky.lin@broadcom.com" <franky.lin@broadcom.com>,
 "kune@deine-taler.de" <kune@deine-taler.de>,
 "brcm80211-dev-list.pdl@broadcom.com" <brcm80211-dev-list.pdl@broadcom.com>,
 "tsbogend@alpha.franken.de" <tsbogend@alpha.franken.de>,
 "huxinming820@gmail.com" <huxinming820@gmail.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "kvalo@codeaurora.org" <kvalo@codeaurora.org>,
 "vishal@chelsio.com" <vishal@chelsio.com>,
 "jdmason@kudzu.us" <jdmason@kudzu.us>, "corbet@lwn.net" <corbet@lwn.net>,
 "snelson@pensando.io" <snelson@pensando.io>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "luc.vanoostenryck@gmail.com" <luc.vanoostenryck@gmail.com>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, 2020-09-27 at 21:49 +0200, Thomas Gleixner wrote:
> From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> 
> The usage of in_interrupt) in driver code is phased out.
> 
> The iwlwifi_dbg tracepoint records in_interrupt() seperately, but that's
> superfluous because the trace header already records all kind of state and
> context information like hardirq status, softirq status, preemption count
> etc.
> 
> Aside of that the recording of in_interrupt() as boolean does not allow to
> distinguish between the possible contexts (hard interrupt, soft interrupt,
> bottom half disabled) while the trace header gives precise information.
> 
> Remove the duplicate information from the tracepoint and fixup the caller.
> 
> Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> Cc: Johannes Berg <johannes.berg@intel.com>
> Cc: Emmanuel Grumbach <emmanuel.grumbach@intel.com>
> Cc: Luca Coelho <luciano.coelho@intel.com>
> Cc: Intel Linux Wireless <linuxwifi@intel.com>
> Cc: Kalle Valo <kvalo@codeaurora.org>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Jakub Kicinski <kuba@kernel.org>
> Cc: linux-wireless@vger.kernel.org
> Cc: netdev@vger.kernel.org

Acked-by: Luca Coelho <luca@coelho.fi>

--
Luca.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
