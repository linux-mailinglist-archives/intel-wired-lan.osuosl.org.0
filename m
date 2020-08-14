Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6296E2442DE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Aug 2020 03:54:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D59468712E;
	Fri, 14 Aug 2020 01:54:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ru0IJmSHMrVO; Fri, 14 Aug 2020 01:54:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A999F8713F;
	Fri, 14 Aug 2020 01:54:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 52A8E1BF3C2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Aug 2020 01:54:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4DD3588872
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Aug 2020 01:54:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mwcbUT2K-VkA for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Aug 2020 01:53:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3FC3688804
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Aug 2020 01:53:59 +0000 (UTC)
IronPort-SDR: j+NNeW8516wV/AqacCr4lzymXwv5tDxiM/etJNJIq8WOXWuCBeqaXHdnZKyWorQQwSjiXvNZ4i
 A8+HQs2+1sTw==
X-IronPort-AV: E=McAfee;i="6000,8403,9712"; a="153573187"
X-IronPort-AV: E=Sophos;i="5.76,310,1592895600"; d="scan'208";a="153573187"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2020 18:53:57 -0700
IronPort-SDR: ZSrpDj59ETqcpA0/3fRbj452p1TSKXXyQxpoiTkjIcvsfjydUpTeD7oSXmaJiqbBE8wMmsC/kc
 6lmjRvSmaorw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,310,1592895600"; d="scan'208";a="295617503"
Received: from orsmsx603-2.jf.intel.com (HELO ORSMSX603.amr.corp.intel.com)
 ([10.22.229.83])
 by orsmga006.jf.intel.com with ESMTP; 13 Aug 2020 18:53:56 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 13 Aug 2020 18:53:56 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 13 Aug 2020 18:53:56 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX151.amr.corp.intel.com (10.22.226.38) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 13 Aug 2020 18:53:56 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 13 Aug 2020 18:53:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WqpNPLNv96sgVt3NN9prN0l67Hq6Hq3y+oyL1oXSVca9GWB3FYO4Duy2/5JPUjWguaNcB3IdqNudmCCM6ESODKfZ8G0nUfj1ynaCT8AmRjSXlrebqPa9vQ1R/idvGJ5qwsRaDLPPuZFqxEuW7nth994oXW4S9WKp/l7U0uDlVzt+FcIUHIHj7HF2bMddezvjTxgC76LdA9Ikw9E7PNHTvPzUKvSMEA8tigfO19SqsmHtvAjGmIq5Qv1inF7x3wYGumDE9GIbBJtcnX+nguK4pee1HKsS2R1gAZ7bwVUBoyeRLwBGTVu/HTRALFWgxovDwVhRqK1F10QwCts7yLdqmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3BVxMvMwqyvHBXIHCyVTZBmSdl+FE4y9Pw0NATrhxNw=;
 b=RheoCEOFO8umvNk1+rvCXV525Fz8rLNr7WtL9bjjLxC23x7mSMIj5RNTzww1OT9LWmxOxJiKdJ1YwT7+3h2lTADt6x6oFS7l5XHvE9Hs1d/Ryu6MAXANF27aOeg/fY/an8yoKcQWPgV6vNNn8nKDn8QeJ7JGOBkviJU1DT8qZLgc1SKbBUPEJGA4sBU39/bKPK0GqQXvwpLt4XBwvRKuNFvLG7Q9qQOaa75mU1VZNuA5+FD8CILijngo6eHoWB27WLI84mm2yXzXoX6D55IlXquJpBKtyDf+/lO4vlmSPjhVsxsXkJiUgAeICPAu0mRz7PR3q5OR4tI5aYIOlo7Btw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3BVxMvMwqyvHBXIHCyVTZBmSdl+FE4y9Pw0NATrhxNw=;
 b=t6IP0cgdEKuOFWlQO/Du5Gcw/KEcB41jyjuDtKfVCEVQQv/ZVe6DCr0fP2DvUyEwrtEbqYJaudaRBWdwHPLqi8XU/1vT6/hY1X+Wnhu9RpWJthuE2NJ+vAuym3l3o/Gf+r6x82OJCBl+hHG9IDZ5d1/+ZvxtkVnzpVKi2d/UClc=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB4644.namprd11.prod.outlook.com (2603:10b6:5:28f::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3283.16; Fri, 14 Aug 2020 01:53:55 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd%6]) with mapi id 15.20.3261.026; Fri, 14 Aug 2020
 01:53:55 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] i40e: Fix crash during removing i40e
 driver
Thread-Index: AQHWb866UW5+xmSRfU+p8c3iHcAFaak222uA
Date: Fri, 14 Aug 2020 01:53:55 +0000
Message-ID: <DM6PR11MB28905FE170463AD149C67B8BBC400@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200811105649.13359-1-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20200811105649.13359-1-arkadiusz.kubalewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.171.58]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b2a3584b-f205-4076-8b34-08d83ff4e6f6
x-ms-traffictypediagnostic: DM6PR11MB4644:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB4644118A0AE19030A323B221BC400@DM6PR11MB4644.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bwMfQLKuJdNTQMyJ8A3jyHOBYRNR68SBduQt9/xk3dX+u+RRoq8sLiEl+CoYdllLuetN2pz4zzBndwb6xZ42xoqRV5TyM8/Gy0hrqSFAZzNIWQnSwkWrk+u/8nrPXypVrKPQZFggDpzUVu4zjcFqk6xek/NGYFN2lE4NWml9Il7QfesfSpBN739D5ip+L1C2+3uXj+gX5bOb7v8kKiUrFi5LKuAYvQAe9SnIPPdrxosT865tSITqzlEb8r6Vw5DyxCig7oc9RddzPrl9vbwTnOT9b6AY2EFy9WD5N+UnD9kpK7Vc7eSa0IedpTTxJiIK
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(39860400002)(366004)(376002)(346002)(396003)(66446008)(33656002)(71200400001)(86362001)(83380400001)(316002)(66476007)(66556008)(110136005)(66946007)(64756008)(2906002)(186003)(9686003)(7696005)(8936002)(53546011)(478600001)(6506007)(52536014)(55016002)(26005)(8676002)(5660300002)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: dwPIlcfG4TIThtOqt5U2PdD5XtlSOqe2EWQjNJD9/zWyVUbfZwZThS5PZQoYcmm7IM+2hSxBdbB3RgpEEYTplvD/fz/6mdT92ofM4vHTLsBedA2cXzx7+IFCFJlayAwQlTTNknTrLnqAsrmuUJYOWGRRFp+nQ4x42bofrdAnH+WnCHM3UNqVl0KRuvaLTrLe2lv6mn660INzDQMhr54hRhujop5sxMRrMEMoTGF0wLVWPrbJvYA/VCWYkB491RVGlilCoaHU0gubyRO3p9a+JN1ModlObnqOrqWnaU/s/UdsKMFk9Xn4i9QBoG/8VSxpDPt5+iv4SM20eBwIS7u/vhqBruVg9dDP6Do7FxRnsqm1yUtJLs+23s2+S1ZNxODbpDudT27GrnZk8fWxsGARB4Wxwf/EOFMZvpXdy6v7UR/XAxgwcZP9kLn8EAzhziG+FVEFAaWZzDvXeFnlkNJf3QvcrVSgkHs//XztnGziaMCsrNFx9JuY2HVDWvqcYBL101McZa7lVm9i3wwHQJIwa8g7SKSajt6dkk7Wg50zkZHT55zhY5Gyz3f3cRK7J3LchHk868WjwI8iR5oL56SbnvRBgND8bxEh3z4LyWe3/brFdU3iGkKygQWdxt+em7gyjH2eP3SW1JY7HafkDnZuLA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b2a3584b-f205-4076-8b34-08d83ff4e6f6
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Aug 2020 01:53:55.1303 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6BbMqa6XOWLxWKY3ffhaRQzLYeyFkAo90MIYMk2h8lkGGcf9A4hbBB0d4D5KTWqfqYANE5dHuPRKQYN3Mqs6tw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4644
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] i40e: Fix crash during removing i40e
 driver
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
> Arkadiusz Kubalewski
> Sent: Tuesday, August 11, 2020 3:57 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH] i40e: Fix crash during removing i40e driver
> 
> From: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
> 
> Fix the reason of crashing system by add waiting time to finish reset
> recovery process before starting remove driver procedure.
> Now vsi is releasing if vsi is not in reset recovery mode.
> Without this fix it was possible to start remove driver if other
> processing command need reset recovery procedure which resulted in
> null pointer dereference. Vsi used by the ethtool process has been
> cleared by remove driver process.
> 
> [ 6731.508665] BUG: kernel NULL pointer dereference, address:
> 0000000000000000
> [ 6731.508668] #PF: supervisor read access in kernel mode
> [ 6731.508670] #PF: error_code(0x0000) - not-present page
> [ 6731.508671] PGD 0 P4D 0
> [ 6731.508674] Oops: 0000 [#1] SMP PTI
> [ 6731.508679] Hardware name: Intel Corporation S2600WT2R/S2600WT2R,
> BIOS SE5C610.86B.01.01.0021.032120170601 03/21/2017
> [ 6731.508694] RIP: 0010:i40e_down+0x252/0x310 [i40e]
> [ 6731.508696] Code: c7 78 de fa c0 e8 61 02 3a c1 66 83 bb f6 0c 00 00 00 0f 84
> bf 00 00 00 45 31 e4 45 31 ff eb 03 41 89 c7 48 8b 83 98 0c 00 00 <4a> 8b 3c 20 e8
> a5 79 02 00 48 83 bb d0 0c 00 00 00 74 10 48 8b 83
> [ 6731.508698] RSP: 0018:ffffb75ac7b3faf0 EFLAGS: 00010246
> [ 6731.508700] RAX: 0000000000000000 RBX: ffff9c9874bd5000 RCX:
> 0000000000000007
> [ 6731.508701] RDX: 0000000000000000 RSI: 0000000000000096 RDI:
> ffff9c987f4d9780
> [ 6731.508703] RBP: ffffb75ac7b3fb30 R08: 0000000000005b60 R09:
> 0000000000000004
> [ 6731.508704] R10: ffffb75ac64fbd90 R11: 0000000000000001 R12:
> 0000000000000000
> [ 6731.508706] R13: ffff9c97a08e0000 R14: ffff9c97a08e0a68 R15:
> 0000000000000000
> [ 6731.508708] FS:  00007f2617cd2740(0000) GS:ffff9c987f4c0000(0000)
> knlGS:0000000000000000
> [ 6731.508710] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [ 6731.508711] CR2: 0000000000000000 CR3: 0000001e765c4006 CR4:
> 00000000003606e0
> [ 6731.508713] DR0: 0000000000000000 DR1: 0000000000000000 DR2:
> 0000000000000000
> [ 6731.508714] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7:
> 0000000000000400
> [ 6731.508715] Call Trace:
> [ 6731.508734]  i40e_vsi_close+0x84/0x90 [i40e]
> [ 6731.508742]  i40e_quiesce_vsi.part.98+0x3c/0x40 [i40e]
> [ 6731.508749]  i40e_pf_quiesce_all_vsi+0x55/0x60 [i40e]
> [ 6731.508757]  i40e_prep_for_reset+0x59/0x130 [i40e]
> [ 6731.508765]  i40e_reconfig_rss_queues+0x5a/0x120 [i40e]
> [ 6731.508774]  i40e_set_channels+0xda/0x170 [i40e]
> [ 6731.508778]  ethtool_set_channels+0xe9/0x150
> [ 6731.508781]  dev_ethtool+0x1b94/0x2920
> [ 6731.508805]  dev_ioctl+0xc2/0x590
> [ 6731.508811]  sock_do_ioctl+0xae/0x150
> [ 6731.508813]  sock_ioctl+0x34f/0x3c0
> [ 6731.508821]  ksys_ioctl+0x98/0xb0
> [ 6731.508828]  __x64_sys_ioctl+0x1a/0x20
> [ 6731.508831]  do_syscall_64+0x57/0x1c0
> [ 6731.508835]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> 
> Fixes: 4b8164467b85 ("Add common function for finding VSI by type")
> 
> Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> 
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
