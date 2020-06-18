Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 922461FFA09
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jun 2020 19:19:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4D105888D3;
	Thu, 18 Jun 2020 17:19:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Celf0J1XL7T0; Thu, 18 Jun 2020 17:19:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9E1CD88930;
	Thu, 18 Jun 2020 17:19:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A36621BF5F5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2020 17:19:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9EAF589511
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2020 17:19:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CSlMEmkOl8nE for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Jun 2020 17:19:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EC385894C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2020 17:19:53 +0000 (UTC)
IronPort-SDR: dSNdk9xkfl0J/AT7iDtBRxneSKuMPzpP2liH3vzdCrp46wqjC46DO76/itEiS0F4fnB5+WILS0
 T8e7S7s36S6g==
X-IronPort-AV: E=McAfee;i="6000,8403,9656"; a="130016294"
X-IronPort-AV: E=Sophos;i="5.75,251,1589266800"; d="scan'208";a="130016294"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2020 10:19:53 -0700
IronPort-SDR: fvKuWqVtcZN8RoZ1p/juFUyDWPTMEE4PpL9DMs0KxG6G15TdW1Uq1rEXhCQsW41aOK4LHYt4PY
 TpCji3DPvzoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,251,1589266800"; d="scan'208";a="383584656"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga001.fm.intel.com with ESMTP; 18 Jun 2020 10:19:53 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 18 Jun 2020 10:19:37 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 18 Jun 2020 10:19:36 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 18 Jun 2020 10:19:36 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Thu, 18 Jun 2020 10:19:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EsMFH8rhN6yqdBBgGIGYXeLjXpyydEXX9bBpn87ruEvunaZ7f+6ooDqLrIP+BqVBXea8JDDGGkhwF64g7wvlrRgitgqbMVh5NCwb1qg3hPXzykUPVh+SmDllTv7jLFYpN4deRlogt4zvl74UUlkll//hoUHRVP9H/g4jkHzyhbILm7+MdwLY45DadwZKzTs1ol/Xo106il4+YK+RtEOqJ37CJCVPxuyq0SwmkMhbXVwVLRnYXNOhlVaJdxVg0foMjHriDAY1TKy2WDYadOstdw6V4bqCn/cniKxxoyG7V9yX/sstIrSmTGKHDgrD+Gx5OTUQxzFQkWsB2Op/CJctXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VxCzfvc4RIfkGfODcpxq72IGOCe/lxDqunVzEoMTJBc=;
 b=UFoDAwXTdwW3q87TUaTt6N2/bOmwyKY3Z3hiXEZMU6kAgPY4d2lId++xhqPNTaOZ2lKrjc7cZnoKX4FzY2xLsUGVX2/r8YewGXeeDWs+rhXNlR/7sp1btYEw/VSi+IRUeF7+pvjKMB1vK1BogClbRcbThqVWuSGwQJe8gzA2gZaYL+LSowjOB6nC8bsGaJU4F28Q2qeLhspjCRqlpE+b5wXdLFYs2i9aZERz+EQ9x14V2JwEbuE78sIoec31JGkWrKX3u6400jHp0J4bKnTTiXONzTVcVhDm4cb1yF/WcM0ZX01UmH7xkQmPvdSIvWnEXwficaCPSjSNMTY368HFAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VxCzfvc4RIfkGfODcpxq72IGOCe/lxDqunVzEoMTJBc=;
 b=qVUeqDcLjNpL7SHF+9sxjuYNEAt/b7ds+IZiQEiempJpVODBs4AclgH8JQjjQBtWEo6u4wWQM1Ab0ppkHvFLgSJWPcap2WTg8N8Mqb0pNPMr0uyTiT5kob+vXnFTf6nl9MkasfB2zxnixtg86GZifWbB+kAdaKkob0NhAZ61eV4=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM5PR11MB1259.namprd11.prod.outlook.com (2603:10b6:3:15::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3109.22; Thu, 18 Jun 2020 17:19:32 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd%6]) with mapi id 15.20.3088.029; Thu, 18 Jun 2020
 17:19:32 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 5/6] igc: Refactor
 igc_ptp_set_timestamp_mode()
Thread-Index: AQHWOgN1l9+j0q5NnUybIY79IVfUNqjetScQ
Date: Thu, 18 Jun 2020 17:19:31 +0000
Message-ID: <DM6PR11MB28906D74C4C6BCB4BC968A5ABC9B0@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200604000105.15059-1-andre.guedes@intel.com>
 <20200604000105.15059-6-andre.guedes@intel.com>
In-Reply-To: <20200604000105.15059-6-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.214]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0aaf8d65-24df-439b-26bb-08d813abc3fd
x-ms-traffictypediagnostic: DM5PR11MB1259:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB1259A85EF2BBE8AEB94391A6BC9B0@DM5PR11MB1259.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0438F90F17
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5dP89P0f6G83oxv9AixkdeYXu3Ipzpzz+ttgjUSB6GXEU8GFsK/u+8ju9ye/HcfM+XSeYVzrzukqpBiCydCUh1PJBj6ytfAFMdY4rSmDzzBZIdMbvJ/yMAD3r/TnMV5uyDKH0HWrnZosbvfbCwef5n+AyQKVqgxNNKARt5FGSK70l5hcwU0zh6qvYbBxO/IfrGuc+BbdYG+XVC3FRgjTJr2GA115+Jo1rl1hjSqdJgi8BAYzcSZorxyGLUI6VU5qptLGM6otMJ6e1GwHY+pFS5WOtx4669cRL4luQ+QMKty/0IDi5KwDUI6oA9ISxVnb5YUGk2Y1gPP5Sc+VCu++zw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(39860400002)(346002)(366004)(136003)(376002)(8936002)(478600001)(55016002)(2906002)(86362001)(4744005)(9686003)(8676002)(33656002)(64756008)(76116006)(66946007)(66476007)(66556008)(66446008)(71200400001)(26005)(7696005)(53546011)(6506007)(5660300002)(186003)(83380400001)(110136005)(316002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 2vhunKptE6ClqtT998FghPTM/1JLMH4lHlop2ktJ4eROmYpoEB6eRQoKWILGX8oKKTm7xyamO6T+PWGfo7ZQA17vSVHIPxXPbeZihnfenxd6ySM9DrWFsFag0waUZfyAru4jwLf4MTGMOczW8cKhmaXHHGQuE728856SPmWLWcVrEJUe6rOA/xJdLXsZppb8EU506Znc4ze61vHcKbyy5sCVLnQf2P7q910/zQuXrFdYlD16/0nsxnaUZGX0zzntlGId8exwKs4IGoIes1e30c47K7WMWwBYAhGlNjEPPEu5CONyI8iPTrdGm8x/uwzGMkAXLkWkk8GTiQKx/vgCMzvYY94xfAqWP1a4LYnIG6k8yiblQhu2D4mQLiR7Nt7dbSkgZjluztqZes8z879fcqbxustl+lgTi6hfz4YOnbJOOZ4CPg85EM//9lozPMqltF5ZdxtKxHj+TIIVKBJK4+KtMk4HCRW788viMdhN21bio/4D7LdXIJkLsUvI80Hs
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0aaf8d65-24df-439b-26bb-08d813abc3fd
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2020 17:19:31.9639 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2oucfAzxjqS4+Jo6jDLzLUKEbfManokwNSakCSTmEDzKHuCHN0SKN8oxkl4JbCG/bE/mtkdbb82hJ+/GyZnhPw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1259
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 5/6] igc: Refactor
 igc_ptp_set_timestamp_mode()
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
> Sent: Wednesday, June 3, 2020 5:01 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 5/6] igc: Refactor
> igc_ptp_set_timestamp_mode()
> 
> Current igc_ptp_set_timestamp_mode() logic is a bit tangled since it
> handles many different hardware configurations in one single place,
> making it harder to follow. This patch untangles that code by breaking
> it into helper functions.
> 
> Quick note about the hw->mac.type check which was removed in this
> refactoring: this check it not really needed since igc_i225 is the only
> type supported by the IGC driver.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_ptp.c | 103 ++++++++++++-----------
>  1 file changed, 53 insertions(+), 50 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
