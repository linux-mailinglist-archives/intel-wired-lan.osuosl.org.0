Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 35444358DC6
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Apr 2021 21:54:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8AD868319F;
	Thu,  8 Apr 2021 19:54:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HeZlMMT_zzqq; Thu,  8 Apr 2021 19:54:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7F2B283189;
	Thu,  8 Apr 2021 19:54:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8D1971BF289
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Apr 2021 19:54:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8614A40132
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Apr 2021 19:54:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vt8nDnC_x8L0 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Apr 2021 19:54:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2C3D44011B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Apr 2021 19:54:24 +0000 (UTC)
IronPort-SDR: x7N1xkQXvF8EcKloWyualEv9wZS9fZwwVGXCKMCIJ3J4jSUukbHz4aCDnT73F4tEsA1XOYsuPF
 PeSTxMSiyIzQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9948"; a="173096571"
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; d="scan'208";a="173096571"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 12:54:24 -0700
IronPort-SDR: a8GDg9VKDFB9zRuWysRWNrBaYMFbeaiRZhG/WY/PUGYK8WUye0P63gpge2iuy51GHecNL3KrLB
 fqa/Z2xBFOxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; d="scan'208";a="415922281"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 08 Apr 2021 12:54:24 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 8 Apr 2021 12:54:24 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 8 Apr 2021 12:54:23 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Thu, 8 Apr 2021 12:54:23 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Thu, 8 Apr 2021 12:54:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RQnu/dhCpSxFKN3Xa9bykskWNt0OofgMH5fMUxfNJAAW8tOKWrp/DuJD7NslPwEm6EmXamR+ha3Di4JSpNOSZZlVuABHV+6bg3BxPuwOAk9h3rEqn4DWidXgFoDw7Hv7sMygB3XHTJe5hpRHmubDKTnNhcaEe2Hkwk2bq2G5/VcbKjPugwewxyRwle74yyob5U+241Se94XDJ8g0ghE5CPXC6ThASAoyHEP2pZm7CMESWEmisV+c1h5Z3jbbrZFAmu6lEvUV17GmehfKvVEt+iXFg8AY1xHw1ifTWDufZLaDJ+iQuVhX3MOidv4gj+MnR0kydrDjSmMto7g5xzV9zQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2Ju1l6kvhkk5JdlQIReujbygU7eA6YOpksf5Ab2PklM=;
 b=AHyeZdFfwS1muO8aQf9RoU8kiKtbM8sosxxxfj+Y/3E3kce9CuQy+3S0nxA46WUTRltWrPwWetJ3CpVwxp7PNoLKHsNnVrpYyYPZcRsLAuSaEAsveJVfUOFnomViaVGKi6heu+uborn43CujdFwLGXLgJKcXJvftFpcfW7mQNOXGVZxDOfx/TnSal2amMgdVLnEf/tU49Wa89W9nNEpcNqC0FOn28VF5HSmIPuGe9o5TkrDnQKB/VLcDaBn898b6ccCfZRoA6vYLmroXjNmCb6wUlxL3jaPQl3INfNV03pRV8UhVdF1f19qE3gDpp5PTAdMrEhhQplxlZxuJAmdQLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2Ju1l6kvhkk5JdlQIReujbygU7eA6YOpksf5Ab2PklM=;
 b=AAht21a20S5VeYIVW9dabTJD4wm3BED0IlDtfHV9CA0fyoVD2rxC9U8h2B1RGNPTrBXOn70zfOJ6O4U9vOn5qRJsgtcNQV11feZt70AWBUqu7fd5piBAWopYVVKJ+E5a3PLV62bm977hnzCY7G92qscKGmSptfDWMZH02z5zmpE=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR11MB2047.namprd11.prod.outlook.com (2603:10b6:300:2a::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.18; Thu, 8 Apr
 2021 19:54:22 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.4020.016; Thu, 8 Apr 2021
 19:54:22 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S58 01/13] ice: refactor interrupt
 moderation writes
Thread-Index: AQHXJnS34XJSyNsRpkGnU9IrxjizsaqrFNtw
Date: Thu, 8 Apr 2021 19:54:22 +0000
Message-ID: <CO1PR11MB5105A4A7F6C5B0C0BB7091B7FA749@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210331211708.55205-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20210331211708.55205-1-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.214]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cf8bdbcd-f9e9-450d-c054-08d8fac81acf
x-ms-traffictypediagnostic: MWHPR11MB2047:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB2047144FC1AC78F8E3654345FA749@MWHPR11MB2047.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2276;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gjIrmACCPT5tCA6LbSYR+AbeJ8dP2Q4svuGDrtV9Btdz8LJiMStgHR744dZrmMSsa+Zn4USxtqgKhy5lbdWXht9DJZr0EtoLmON+uhlBnjv+KUjDqf8Fe4Ir2t8o/5OCBbkqQtTCOTpMSpCR7HTk7kubesRxYCaAULccNMyMWfNmOqhOT/wKUAONZ8i9TV/c4plK7snvooA9tE0MeeLsASOLWrhSNQ8d1u+JMpW6uJEUfx9gTku2GBkz5zHOaCUhooJ3OwBkBeD7apGfqioaQAmnOK4unJjQ9R7krMw2HF4lTMib7Fby9Bn6fPJZ4WRpLZly8XqjxNSxpj04sUDFx67pGbsxsTM/C2iS3UDV1fj/t8FpgLJBJZiaxjECphsukSPfvyuRwe5lMR4qsqTU/s7XcmTurZmry7AWMp8CLHCb4dunJ2Wgr6YW/xBV7qkTu67RJ4oVSkAAUZHsP6d319uR9hi7cFc7D7ha7h9XRaM17K0GJxzcBOQfTqkIsYzaXFdXxhGJvZ7jOKkshbs5TJDd5g5Bw6RA4LfE2AaNAuxMvxS9qqLrSnpWD+jLtaINGDoGhQgrNmFeMF2CXL2/sWil9Rlr1rAY9HuZaObUUMyjV5QrPkBxpuU9wXqCW7Dtqv1hRSTT8tM5OtUGYxwB5W2EhE4M9FwFx+yDqRToUXI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(366004)(376002)(346002)(39860400002)(396003)(478600001)(8936002)(53546011)(9686003)(71200400001)(6506007)(8676002)(52536014)(55016002)(7696005)(110136005)(316002)(83380400001)(38100700001)(26005)(86362001)(2906002)(76116006)(66556008)(64756008)(66446008)(66946007)(186003)(66476007)(5660300002)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?IJ3BwTXSuwqI7MAy6q9LwhTY74jJjnA5XGWaOlN+Y6/x/IwkVjsU0A5D02Zw?=
 =?us-ascii?Q?SH/BVdrMtnBEkrDgxLre8/hIt8XMqkKrmrECbCBEvMuka1KYIEve5WvzXLYs?=
 =?us-ascii?Q?4wNKAQH4XxEUJRvAcRaEpVIWRKUQJQdb62fTDrFRTV941bv8F7Ubb0/fNjt+?=
 =?us-ascii?Q?YDlm0ppqshksuUhgf1F+LyeZvmuoL2PGnjrsuVv0iL1Xd1e6NtuExCz3iH6U?=
 =?us-ascii?Q?vG7B75vObvqcR5KWjMd8/6C794K/CtuEpotxsMV36ytE/xzJNtD4J31osqxe?=
 =?us-ascii?Q?UrmXo80++ublX0q7gFbxRlvXoqXNxmS/B9fNbgErNITj/UEP978QzLtebtf/?=
 =?us-ascii?Q?xPA03tzi3TyqvkXeYdhSgbezakebvHSvzl8+L7CpJYkTGIElIf9dzyRRpxhx?=
 =?us-ascii?Q?dNOuVHyirc38glcUibqEBLTBKhzSn/KGrH7ENb+i7Yv/ZcxIMIMmxAlzjjY+?=
 =?us-ascii?Q?gbpRyWerAdlTWExl/jDKEsjPsER/frnDzKwXGhfPF1ke/0vUZTsR3Q/SWmLs?=
 =?us-ascii?Q?wEZi0aYq3hGbrbbtpvozIwQWP4LMm+0vJZCmm+dVbcK6wr7rjFHBlFcg8UDX?=
 =?us-ascii?Q?s+oSop0Pp8R8StDWFZ60pGtuCsRRZhoR15BImrmK60w0GrnIPe5UnAg5FT6H?=
 =?us-ascii?Q?gBdp0VgogAmbcBd2GlAnPKMd9l9n3Ep0U5bXoB/R1rn3s33AMWbLtUgU+DXc?=
 =?us-ascii?Q?U197hjQzy5ljSQFpSaW0KvAKnEFBUY4uuJ4ej/0u9Z0OeRnbLgKC/s/Rbavu?=
 =?us-ascii?Q?k5tGnlNBRUMpYvYvQILYA1Iz1URTDjO7HXhsWw5cQssIbalpKHtRhQqrpH27?=
 =?us-ascii?Q?TtIvXQPit0wKyCdbcFlnNTjVMEG002/nAt3kjUX/HK0/AlV/ZdJb0+qFVw9Y?=
 =?us-ascii?Q?ZBkpsB00Y3fGS5/h61ax2FGd0BQ+44xdZT8aFCOlbomyqvuYo6U5AkW4EVde?=
 =?us-ascii?Q?yuAJ5qNL4SQdam+7DRPOzRhR810N37HUbSt++zONW/kXJFSlNZG3k4rQtILf?=
 =?us-ascii?Q?EEZ6dfLKrKATMhE/xnbczFNySZV5zQ8yj0bKByeSlVxH0vxQKfC13w3yp/CC?=
 =?us-ascii?Q?UHVSZs2Caw/jwtxygXA/dZ+v8gjw/lzvKHuLo6ImCOCy6ymT1EljS+ei3rNc?=
 =?us-ascii?Q?2Cn1WxEoKMVor8xMETCs9fINMIEG1QzbaOHW9KOGaAp+7rfk815ktE2XqrDp?=
 =?us-ascii?Q?lcop/WSSo8hrhE+Fm5QdLAiCK7U0IvTYzy0h2G6E3YDbsXMqOGuOQG3ESg3o?=
 =?us-ascii?Q?IwbRjO4LIZtbBbqVVmO0eb8ltHr7tr4xAK3HaIayAqBEfXsk7T/DUmuxdrtV?=
 =?us-ascii?Q?RSr3o81eDLlF9hLiPo9VKXsS?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf8bdbcd-f9e9-450d-c054-08d8fac81acf
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2021 19:54:22.2026 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eehUMSPUvpvLyirBGJ+yQyQv6qL44+oe5oFgKWAEmqxsHzVB3JUUsZnNP6IOe9ls7r83Isgc5+8E0tR9WJSEfqFWYbWRMd3xEZA3WaPR4LQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB2047
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S58 01/13] ice: refactor interrupt
 moderation writes
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
> Sent: Wednesday, March 31, 2021 2:17 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S58 01/13] ice: refactor interrupt
> moderation writes
> 
> From: Jesse Brandeburg <jesse.brandeburg@intel.com>
> 
> Introduce several new helpers for writing ITR and GLINT_RATE registers, and
> refactor the code calling them.  This resulted in removal of several duplicate
> functions and rolled a bunch of simple code back into the calling routines.
> 
> In particular this removes some code that was doing both a store and a set in
> a helper function, which seems better done as separate tasks in the caller
> (and generally takes less lines of code even with a tiny bit of repetition).
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_base.c    |  22 +--
>  drivers/net/ethernet/intel/ice/ice_ethtool.c |  17 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c     | 171 ++++++++++---------
>  drivers/net/ethernet/intel/ice/ice_lib.h     |   3 +-
>  drivers/net/ethernet/intel/ice/ice_xsk.c     |   3 -
>  5 files changed, 112 insertions(+), 104 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
