Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B9950234BD5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Jul 2020 21:58:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 74A0881F3F;
	Fri, 31 Jul 2020 19:58:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3oQ8NqLFD9GZ; Fri, 31 Jul 2020 19:58:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7AD538493F;
	Fri, 31 Jul 2020 19:58:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 927FF1BF2A0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jul 2020 19:58:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8D1BB88802
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jul 2020 19:58:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KH3gzp6yti9n for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Jul 2020 19:58:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C303888400
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jul 2020 19:58:38 +0000 (UTC)
IronPort-SDR: +5lMLf4bcDYsDBnIoJTP+6Dhcp8qonpRT3tnX7kAdlLZ6/V8IYt737cGY+VuvTMmsxjcP45S9b
 LciAoaX7hu6A==
X-IronPort-AV: E=McAfee;i="6000,8403,9698"; a="236724777"
X-IronPort-AV: E=Sophos;i="5.75,419,1589266800"; d="scan'208";a="236724777"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2020 12:58:38 -0700
IronPort-SDR: ugJVYxediPO6L5/NVDxrWcpDKZd5uJV6Zab/mfjPGG7c4GWKKCPeI3uPnk7z7cj2jPvI69Y5ZD
 2FzWnV7A+WfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,419,1589266800"; d="scan'208";a="329324940"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by FMSMGA003.fm.intel.com with ESMTP; 31 Jul 2020 12:58:38 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 31 Jul 2020 12:58:38 -0700
Received: from fmsmsx115.amr.corp.intel.com (10.18.116.19) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 31 Jul 2020 12:58:38 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx115.amr.corp.intel.com (10.18.116.19) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 31 Jul 2020 12:58:37 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Fri, 31 Jul 2020 12:58:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OgMgiIDXJq1ol6b6O9PXzyY3sMxfmreZ5fTqvEIpuhtzSshU79ONd7oO+sE4HYikC738VGxX13/F21bBtua977ssswLazDPnDDEE0ISFJtj8ecTdasksEeIPVmj+pxN/TjF+5L9Cce+NhTTkGt0B1Q90tg1Jo5qVbTuinTarogmb5ALlV8Lg9+mwSPUogEXVIeFbnC4MhHKEaxbOERWjf5w8ftmNTxCvGddM704PggzNAvbNsMtOYUkya3wmQ/ESBnEo1iouPkJCvcaY7DUJF7al2SNieyVHia3sp2tNdghnMxmh8CHiV0+gK1v9cyw49u656Pn+tCRISIvT0wYNbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xW+WRnL6s99A0cglC51k+/Cm2gGSbJxsg5Z/SWq6gkI=;
 b=DKZVxbdtczZS4LmZIRlAgS+bOcM0YSY/xm8MOzfG21X80/yiKRc+snMNYQDJEXMFWQlz1InAi1JeJ6Wu60t7KhGTYDMcK7dhAzKAcUiM9HESRhhVfMyYsHBXotoE8ttctxTQICRn3vdOTtpUwddmbpDE95Q+g5Xx2v+8w1BH21sBB1VJTTmW3LbwzR6ycf/miasydPTBs8TG9VkCAiKm/5zfZJK2rZG4EtbJ0AK9X3wEcLtTVaWoLdsDlLcm82Yhd6gfsg/EPo5cJ3I1yxCGvA/ZVtk++duS0y18jvsqw09h37+laVDtBUUX/uJeWVhyq0NxtN6LdHdVymIUVjD/ag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xW+WRnL6s99A0cglC51k+/Cm2gGSbJxsg5Z/SWq6gkI=;
 b=dUO+lVk2QWeYFsDgnXv4/Mv28yeN5GLAGWhCP5UjR2E5QJYz1iScJGsMNsRGEjWPgjRZ4k6KgmCKg9wzRTAACcreSnM4Ttl14hhCZe850bnxQT+1rmFGi7TP5r3EyLLJhM1TPBh/j6Pykyg9B7H4jjS8RN8pmFQrP+9hhBJkVO8=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN8PR11MB3763.namprd11.prod.outlook.com
 (2603:10b6:408:8e::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.21; Fri, 31 Jul
 2020 19:58:35 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3216.034; Fri, 31 Jul 2020
 19:58:35 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S51 10/13] ice: Disable VLAN pruning in
 promiscuous mode
Thread-Index: AQHWZge//dsHPCWf20uWmdHegpqnHqkiHdAw
Date: Fri, 31 Jul 2020 19:58:35 +0000
Message-ID: <BN6PR1101MB2145837D452D65535EA2AB7F8C4E0@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200730001922.52568-1-anthony.l.nguyen@intel.com>
 <20200730001922.52568-10-anthony.l.nguyen@intel.com>
In-Reply-To: <20200730001922.52568-10-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [71.59.183.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: eebd1d60-ad54-4b2b-a1e8-08d8358c1c47
x-ms-traffictypediagnostic: BN8PR11MB3763:
x-microsoft-antispam-prvs: <BN8PR11MB3763B2292571EDE8370A42108C4E0@BN8PR11MB3763.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wsf7wWZX+5HCkTmUVCGXoMohSQG5uCZLZGbUNjMDKwv8N8QMbqa0py/czzC3dKELf+khFroYFr5JuVjAQe8GpdDo/cPcOojSXctiq2MfjChpddok3qaaU9Z6UKKBMacz2YOoa+HLeXZSbjDyW6LDMBRPi7RqVscTHb2frntccTbOONOiQ49aPc0E6c+D9FUWE/BnjKNbwht/HJXoD0cz9MGXcrkB1GiQabwlRj3oKvKDCkIhGU1vg5FsKZJ1N/Z7LjdZv9rPHs9nxbtj3YKNIXvx4oNTaDgp9qvy+SI71EihgALYCssIeXue9noW5/wb
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(136003)(39860400002)(396003)(346002)(366004)(83380400001)(478600001)(33656002)(186003)(6916009)(6506007)(53546011)(4744005)(2906002)(8936002)(26005)(71200400001)(66946007)(86362001)(52536014)(316002)(9686003)(66446008)(64756008)(66556008)(66476007)(76116006)(8676002)(7696005)(55016002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 4ngDey991EQkYedJtbdVnvyZ0809o4GA+SKI1uO5MurwdozcrJ5IYDzRC3FEroF1uOfgnP9AD/RKa2zsNqi0SZmwUZNkaMP/e11EAe7+eNnvVOG7O9LMkqv4olJujoNG24ZPhSXEwGi5DRF/38ckeoo3VkqMWh1s5GZLgfY7rl5UHvjhlNS27icZKYyBmEc4pioByaPAaoEfhNqbf1sp9+IfEZQq98Q7mf1CvYJzHb3FpijC0jA02UOL3S4P05C7l8mJgtgcXGTLQxW83jOnc7xc0kQ/rp5+/T222rNuAM8aAz/OrmWFJB/5ZotM91IHHitM+7qZuJvnVgHJdb6dsN6aVByronlf1jYWhF48xmBUBCD37JCANJJ9cXbASIJulviQMBmhxcJ8CQzNrlts+kV+WxG7wbFxPBcV4Zuks0LhETbePKhxH17KFHxj7Dt4O1RIoQ9YnhawyggQVlKyAJKw22F8IQPZxDsOpAwEWts=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eebd1d60-ad54-4b2b-a1e8-08d8358c1c47
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2020 19:58:35.6826 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JeBHDCepz7X7XbbrERoT6K7kHba5li6g5+2wMX5fedjOSvznufHRZSQ+ZLEkMUXoM5GzX0V2nQ4FzITe5qFY6TzXkgrq06SZ1W+FvB+g28E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3763
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S51 10/13] ice: Disable VLAN pruning
 in promiscuous mode
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
> Sent: Wednesday, July 29, 2020 5:19 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S51 10/13] ice: Disable VLAN pruning in
> promiscuous mode
> 
> From: Nick Nunley <nicholas.d.nunley@intel.com>
> 
> Disable VLAN pruning when entering promiscuous mode, and re-enable it
> when exiting.
> 
> Without this VLAN-over-bridge topologies created on the device won't be
> functional unless rx-vlan-filter is explicitly disabled with ethtool.
> 
> Signed-off-by: Nick Nunley <nicholas.d.nunley@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c  | 7 +++++++
> drivers/net/ethernet/intel/ice/ice_main.c | 3 +++
>  2 files changed, 10 insertions(+)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
