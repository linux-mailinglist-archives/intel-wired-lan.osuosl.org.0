Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E4AD253A05
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Aug 2020 00:02:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3A9D0883C2;
	Wed, 26 Aug 2020 22:02:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tKuZsYOxOyBZ; Wed, 26 Aug 2020 22:02:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8F769883C8;
	Wed, 26 Aug 2020 22:02:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7AA1D1BF37E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Aug 2020 22:02:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 71117869EA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Aug 2020 22:02:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5a33GbfUhSIW for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Aug 2020 22:02:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AC793869C9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Aug 2020 22:02:47 +0000 (UTC)
IronPort-SDR: B/uFacinxCaENATen6xvt/i0tgNiH3w7PkS8wau8m0HAq675lrWdVB03XV1dVaU41pJ2UOW8SU
 ehyRjAfl+9Ow==
X-IronPort-AV: E=McAfee;i="6000,8403,9725"; a="156394593"
X-IronPort-AV: E=Sophos;i="5.76,357,1592895600"; d="scan'208";a="156394593"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2020 15:02:47 -0700
IronPort-SDR: jcDd1cMhuqrq4x0Wef5JzwGbotqiYfTW2jjMzrmVJYMuk53wXt2GQP0z3jWrFhQHwepp/a1NUF
 xZtlSZY4a9Hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,357,1592895600"; d="scan'208";a="444200734"
Received: from fmsmsx603-2.cps.intel.com (HELO fmsmsx603.amr.corp.intel.com)
 ([10.18.84.213])
 by orsmga004.jf.intel.com with ESMTP; 26 Aug 2020 15:02:46 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 26 Aug 2020 15:02:45 -0700
Received: from fmsmsx102.amr.corp.intel.com (10.18.124.200) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 26 Aug 2020 15:02:45 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 FMSMSX102.amr.corp.intel.com (10.18.124.200) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 26 Aug 2020 15:02:44 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (104.47.37.54) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Wed, 26 Aug 2020 15:02:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hUDmKyW8S92C1YALmahWF9EdzkMrfv9SYao3iZ8VMy7F15FaMyga4nW8SNr9ujIVYtdhvpY16tEQqANUDI5bO6u36EA3wlC7OKX+G5ky63qwkuFaKbSik283I6DkHcBIOpfz2JqSla6UnTqJioOnXO6CFTPP3RxZdFL3TSD3nBw2W1+JjBwv/HcWCdVa/IT0cHhE6fbBiNNn7UceTuDI1xgnhKHVoYEB8Ch4MVqUBIyvWdi51fT0ohFt1/IwqYx/9xg7s6nv+TKRPGouJTN3GITSnuzhhxb+WCqGHhHt6jhvSjcgMnmsql3K+QYt6LbAabqWmRgTkezQb92r46Phww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NhS36tAeatQH2rD87lMPe9txMb21sqTBljLZVVjhZtE=;
 b=WS7qNlFa+KAJDIZAAZ+IajTgxehq30VJzs5knveP5mlz9IwgKNo7V0kQPRK3k1MPZ22QhSTV3Ygaj7MmLCy/Vh7/oJnrAUhbeNq/rBwbJYjeqXQMiLSBy9KAH1+UMQ+DtOhHfrvrarKZnWVBfsRmgYomuzquSAVMja8PX93O9/Jwq8bHjPKjWUph7ETNxAisnA3kGE8I3dJ+c/D+ia3/cSxn+iIlqjFt5CoG7XX566vEb4Ods1oL7M2PzmAEDNXQJCCl5xmQPikwEKLryh77t4ZMeizkKFE38wcEkjIy10P1l3r541vv9ghmzQx3WnOMyPTJenzMG0MWnX0zhY85Xg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NhS36tAeatQH2rD87lMPe9txMb21sqTBljLZVVjhZtE=;
 b=kdx28e8Jt9CPs9/QV7j/OejreX8gGqBMe0DQ7APypdRXs362wVhJ1RAJTchi0TJrTJ3YNAEpnyt0maUkrDAp+tqSM9ZyYz/92ErFYtN3Rb/JTDyt78UsOL2N+b171c0rmTEuuduOu/LjuENgr7mvDDJ+5WHIuAT5QUXGlztCDa0=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM5PR11MB2012.namprd11.prod.outlook.com (2603:10b6:3:10::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3305.26; Wed, 26 Aug 2020 22:02:43 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::25c4:e65e:4d75:f45f]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::25c4:e65e:4d75:f45f%7]) with mapi id 15.20.3305.031; Wed, 26 Aug 2020
 22:02:43 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Gomes, Vinicius" <vinicius.gomes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 2/2] igc: Fix not considering the TX
 delay for timestamps
Thread-Index: AQHWdOv/gMUGmqX/90O7dMeUUd4qsqlK/0Qg
Date: Wed, 26 Aug 2020 22:02:43 +0000
Message-ID: <DM6PR11MB289072219AE6BFAE2BF89F13BC540@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200817231231.2971207-1-vinicius.gomes@intel.com>
 <20200817231231.2971207-2-vinicius.gomes@intel.com>
In-Reply-To: <20200817231231.2971207-2-vinicius.gomes@intel.com>
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
x-ms-office365-filtering-correlation-id: 16051726-853c-4f46-b6db-08d84a0bc23c
x-ms-traffictypediagnostic: DM5PR11MB2012:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB2012687A3EA220AD2321FB67BC540@DM5PR11MB2012.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8cq744ryC1R0+Tj0q90MlUzkOZHuRwN+99KYTmDeRGV4XDoVrxI4aQ+RRkpzY+EHuLlm1GpUDLcSogEAkAEYoubbY7CIB2O4Ba+YppPgPfU4PQDzR6X9pi72BC26GRONWCHapTgN2gHPH71z+3nkfWfLBsz35UWJIGAspkXmd7TT7r+hex+lbyubcOUkNakHRuimc+l/Fe0ziQZ5wQ1T2e4Xag8jXU9c0frS93Pu4K43sQ5SQ4qAsdDmnZBdQPylO94oF7CzlYhuhIqRMDOxmPJ1Q9AIlioFHo2Zru3o3gNzL8wFSjrJhRcCbU0nBc0mqcxE73vVRcG69cGZI8QjdQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(376002)(346002)(136003)(366004)(39860400002)(71200400001)(6506007)(4744005)(66446008)(76116006)(478600001)(110136005)(5660300002)(66946007)(26005)(66476007)(64756008)(2906002)(66556008)(53546011)(4326008)(33656002)(9686003)(86362001)(55016002)(52536014)(8676002)(186003)(7696005)(107886003)(316002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: J6a+ad8aTo9Fcc4uRIqXCDzOn2mDkP3v8ympnQcUEcbhfhP2aIlEWMZKx9KVtZQkUYy7U1W3TUBdqq/5OB1oYSIYZNmB199K8a3VrfoaVRIO2y8n7W5q0mRGZdPpdElnpIypF6bO6ymfXfmCsb3QXsq+mP3JqWcpU7fkLq8xCgqgu0o9s0rH7tAboL/SjhqpkI7uNxgp2z3aY2mFcbjNc/vt3AkbqWLSoP5PoV+m2QrozZt6onQ1uHdAIuxcVsQN9HSFJzllVB2AhNNT5m/TYMRNzmwlwOhgah8pd+bwi4oubrQ0eQKFMff6f04kLDEZI35OkOLsArjg7lGeYHb7HZjXSwFwdw80DaYeggxr5EwZFgWI9ga4lxf8Kl/njb71GFmRHBpMV7OQ+AcczMagrFTHGe2VPP1G6PECAgX2OQFaU0/RbmIKGpkxK/pMKY3lwruc320Ge5V2imeI6O+8IGl7kIMDUUm/LCaBvRjGWVWIVXOxt5Q/JDaJB/G/C6tlh0bSVBqqnu3QUYquIMBFyqYVAB9Iz2BjV4Kqihwi5uVKYfkmYQfT9RJgUJnJRf3p2WwyVVwRn1l0kAE4TKBL1ske0ae8CAHgGTMIMjY4+5IeDFlbIQ/U+3r3IWLrOSA7SA7tHd7/yHC8g3aLQyt2RQ==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 16051726-853c-4f46-b6db-08d84a0bc23c
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2020 22:02:43.6300 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3VMwzFxHFAE/UOLs0ZrBUCyXjynY7wqDPpNfaN2jI5IzGhy3yxhJbk55+o7lv/XhoTO1pV/XiRiaIY/J99gsAQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB2012
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 2/2] igc: Fix not considering the TX
 delay for timestamps
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
Cc: "Guedes, Andre" <andre.guedes@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Vinicius Costa Gomes
> Sent: Monday, August 17, 2020 4:13 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Guedes, Andre <andre.guedes@intel.com>
> Subject: [Intel-wired-lan] [PATCH 2/2] igc: Fix not considering the TX delay for
> timestamps
> 
> When timestamping a packet there's a delay between the start of the
> packet and the point where the hardware actually captures the
> timestamp. This difference needs to be considered if we want accurate
> timestamps.
> 
> This was done on the RX side, but not on the TX side.
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_ptp.c | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
