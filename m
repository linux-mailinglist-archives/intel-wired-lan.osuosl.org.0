Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B8171C207C
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 May 2020 00:21:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D9B6C204B0;
	Fri,  1 May 2020 22:21:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HVLjGZBSYpZ8; Fri,  1 May 2020 22:21:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EA5FB2628C;
	Fri,  1 May 2020 22:21:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F21D11BF45A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:21:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EDB7A87407
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:21:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WdxsC0G8hHHk for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 May 2020 22:21:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B121F87400
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:21:05 +0000 (UTC)
IronPort-SDR: 8bq8s8f8lCpkm/NTpYH7WG4Edwhe03zJ7iWAnRmtHdQ5VQDq5hkvhi0qVpD41rBZS2lIe3hXl0
 BK2HEnzOX+5A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 15:21:04 -0700
IronPort-SDR: 99q+QAB5yKNHkoi98hP2+h+VgXre7ETC1IrIPVjRa9plu7GC0tLhplU9fmZdqXvWPTve7bxYCi
 uSJokkOhlwYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,341,1583222400"; d="scan'208";a="294933192"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by orsmga008.jf.intel.com with ESMTP; 01 May 2020 15:21:04 -0700
Received: from orsmsx158.amr.corp.intel.com (10.22.240.20) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 15:21:04 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX158.amr.corp.intel.com (10.22.240.20) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 15:21:04 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (104.47.46.55) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Fri, 1 May 2020 15:21:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g7W6I/PgriiBiV3Sjvhkxa2Ga2mUg3Jsw7oltjJuwc/QeumlhCEypkJt6znwJ+y0iMMMv5HaLyASyEEPb0YOHBYceydaKA5MNagf+4tsSKlhbsE2kfaKeeEgx9ig/0/DGTiet991GlQmIMuJABNSB3rAyylKh+7ROZakFdKErWx5KbEZepAT+KjsHzucVNAeItPafW2/Tsk8j3Y1ZBEjQaD7dA/PCJoRAUJfx/7YCIy2w+yzeTPAMSSvdYc/v6WNjZinrEJdROKNcepatCBKBnGtqRP1yPWAckjXoK9lepS6iFR1JYYETya/bul60odIoWtJmRl7GWvQZMr1gZgnMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=imftxFI+T6Qjbl0J0Q8Fytzamk/qm9sx1DEwsQvl4vw=;
 b=dWOovGTTN7umUW0Pd7pJlvjowIgu7/gWeW9Bu8O9Eg7lg+BxiZBmmVwtQBh5IkAXnOq1F/eCw3MuCHusMR6Qr9MgRl7irjmeos7N+puXmwCMVROiNt7EuvD73chgvF068RAFH7jvEXurVQn7jxT98oOKjjFouXN22xdZWJ25YxjSi3sBZYlVkU5LkHRyWMXVGlil1VtaR481Nssj3Fq3fwEXl0RH1l+xZ2wSHZ44fP39Zo4LIo+NsQqe73DW77VgkV2za91qe2YGc1z3D++yESO5FN8zvnDQyLJoW6RpFIMhz6NLnRH3+cRUnyIynx8LYz2eKl9qLQFhCNXiEAtytQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=imftxFI+T6Qjbl0J0Q8Fytzamk/qm9sx1DEwsQvl4vw=;
 b=kg65SY48n48On3xRx3/5q+rGhqp/WfxVTyuilaU99kuSL5qSdtaiOG3JckjV07wYXV4Zz2dEeqXSB5UcjpA3/z7boigEjq4Eycylz9IYyaiY15Lxfy0vQ+CR57RJYKQ+5Qh4Kc4YSU94URZGAtjEo96XNT88o6YL9CIBhKq6xtY=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB4028.namprd11.prod.outlook.com (2603:10b6:5:195::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.13; Fri, 1 May 2020 22:21:02 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.2937.028; Fri, 1 May 2020
 22:21:02 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 07/19] igc: Change byte order in struct
 igc_nfc_filter
Thread-Index: AQHWGnV7KaGpW9GIs0+P2beUCs0biKiT2Gnw
Date: Fri, 1 May 2020 22:21:02 +0000
Message-ID: <DM6PR11MB2890A921B4AE39FA0BBE64A0BCAB0@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200424201623.10971-1-andre.guedes@intel.com>
 <20200424201623.10971-8-andre.guedes@intel.com>
In-Reply-To: <20200424201623.10971-8-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d9319a2f-cbff-4a82-1616-08d7ee1def0f
x-ms-traffictypediagnostic: DM6PR11MB4028:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB40280616615A901931D4DEC0BCAB0@DM6PR11MB4028.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0390DB4BDA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(39860400002)(396003)(346002)(376002)(136003)(186003)(53546011)(110136005)(9686003)(478600001)(6506007)(71200400001)(5660300002)(8936002)(26005)(55016002)(8676002)(316002)(86362001)(2906002)(7696005)(52536014)(4744005)(64756008)(66556008)(66476007)(76116006)(66446008)(66946007)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0a4kUXOgSsndRjqa86hu8a2xtC96MFKIFk5Zs/5a9A0HRwwKyDlnyRU9RUW8B6Bcm44XISwMk8gMOFlfpa+78xkQWquUQznxrhLZkzDQT0f6w1V1PTbR6A17HOO3u/5a8qKuA4AD+mX7WGLi1hlVloed7xq+Ngp5v87LJisMiegknNYMNRZldZKxvFXj6fxlJ0O15Deb3nsNRZ4fLY4fCimEN8huGSY/c+W67/aalx9+7qedOc4U6uIQ6UF3mctoH/1T9TMDv7he8zbc95KZYgXL+KJU5Y4PgVVBn7BslA9Mzyfc51ThNFfLucxMhU1N5M9iP3422gubgRm3vqHFbaDAs1DB28SaVjX9QT+5yf5DPq++t+h9PzXDLCFTN/29gVCbHXZ7CTzEJ1l28u2pR8zB8Ngp7iAsxKFGQ+SEQoqqmSh9Y65CfOEygi3C1UWC
x-ms-exchange-antispam-messagedata: V1v5B7Ia3bsww5sG82JwtFqLrNJyWcqXnwkorS9QJKDikj31OUMLttYH8sXbE7EqIQwn/0LTEPk3aQgPtXRSsgVRydf1fTMF350j7NiM1zgNlt/4joYw4Fe4n7mo1nkuKpolawUeRF4vhIs8ihmjgCeq+2/K4fr8CDM9v8QiuLcPjfanDdQ97Or4cANcK7uQEmLfnGZNRKYqTSzCwBKl6C4NsG35sd8qEve9shlRWfR5/Y9Pvhts3bSbXNovKGbTMT+UJwiNuzYV3xOH9RXNmrQmiUDeusa83Kg2Bobw+mn7gl5ykZf1XIxU6RaGxWlDPeerRay7E3eF9iVUwrpCOHW/IV5dvMoyvrdTSTZYPrDfRpvRcCviOeKl6/18Cdg0SEty7Jfd2T9d9SStrbuoWChqA4vCbuGD7+AYAnpzz9k1LQVnJIUO5edFnV8NokNw98Zl/3rHtrXUCe0tPo4gTWCexe6gs1/Myq0VItVS8ZwFy//aZc6r1f3zvFDoYM72QCQC3mPXikA9cRBE3bOaditxNJg/v36FR6dGfoDUwxhR1JPfPnBMcxANR6cPi/i7n07uWIbZokVS0zqa6Ag9dEPhg4dhp4fe+F5H45deEERiH0cqxoc+x0wlcrxDmsLwdn/QBjg5q1HUKC/cTP4Eu8gNNbksKXPnIPGnCBEjwkrLcZtmffh0D9xPl9HRiT6pVDTJpD2OEaIipvXdzdhVrOfgI7leYTqgTpH2+dO6LaKwzg9mfJYF5vEhJBiaH+w/3kmftOs6FskQ1YvV6P9ZMNfpVKO37uye7Ufd7aAVimM+GiizsyFxQmYFUxKiler3
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d9319a2f-cbff-4a82-1616-08d7ee1def0f
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2020 22:21:02.7520 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ei7xeGnRR0vPdg3AqvurIBkyt99yPTDeyjSQx+Q9VGeZAQ8xeQ3srdxTjn6bdPeFh398oIEUWdvU68dnwLKDww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4028
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 07/19] igc: Change byte order in
 struct igc_nfc_filter
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
> Andre Guedes
> Sent: Friday, April 24, 2020 1:16 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 07/19] igc: Change byte order in struct
> igc_nfc_filter
> 
> Every time we access the 'etype' and 'vlan_tci' fields from struct
> igc_nfc_filter to enable or disable filters in hardware we have to
> convert them from big endian to host order so it makes more sense to
> simply have these fields in host order.
> 
> The byte order conversion should take place in igc_ethtool_get_nfc_
> rule() and igc_ethtool_add_nfc_rule(), which are called by .get_rxnfc
> and .set_rxnfc ethtool ops, since ethtool subsystem is the one who deals
> with them in big endian order.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc.h         | 10 ++------
>  drivers/net/ethernet/intel/igc/igc_ethtool.c | 25 +++++++++-----------
>  2 files changed, 13 insertions(+), 22 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
