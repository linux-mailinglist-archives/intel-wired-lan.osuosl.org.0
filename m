Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D52E4471A57
	for <lists+intel-wired-lan@lfdr.de>; Sun, 12 Dec 2021 14:13:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F0BC6403D8;
	Sun, 12 Dec 2021 13:13:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5XRuh8wuA7HP; Sun, 12 Dec 2021 13:13:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9A3A8401CC;
	Sun, 12 Dec 2021 13:13:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1AA221BF36C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 12 Dec 2021 13:13:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 08E41401CC
 for <intel-wired-lan@lists.osuosl.org>; Sun, 12 Dec 2021 13:13:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7ufCOsosX5vO for <intel-wired-lan@lists.osuosl.org>;
 Sun, 12 Dec 2021 13:13:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 11CC1401CA
 for <intel-wired-lan@lists.osuosl.org>; Sun, 12 Dec 2021 13:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639314789; x=1670850789;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kFmsHZ/TigvC3O4JEi92Li3KvTuaZhV02EmjsAwd6m0=;
 b=ca8cUJY9wcCjETlbcY10HuQSe/NSrw75adFETDlp7RvNtnehZLth90dP
 ToeUWi6vBW+4NervvxANiiVJBXei+Y46otwe5BWQmNFKUUzf1wmfYnMcC
 oiicfykcjgqxhslxbtuIm18YEUONWWiAs0XctZ5apuWliXqPO/5zaoHwv
 Hc0S0XOTdDUzl1JAq4Y6E/0BSihy88RZypoCzcLqaSdS26V4Wx1pZfFRV
 XOUGV2Fc8+GfiIex0cxkyibVjA3siT1Tg69R7sg8LL7xT+5H25Nmg0jQE
 yiKs7yLS4t01fqgregXYw0xp2stWXQs5hMOSTIVdqaF3Q1CPXy0y7AOX3 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10195"; a="301985665"
X-IronPort-AV: E=Sophos;i="5.88,200,1635231600"; d="scan'208";a="301985665"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2021 05:13:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,200,1635231600"; d="scan'208";a="566262128"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 12 Dec 2021 05:13:07 -0800
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Sun, 12 Dec 2021 05:13:07 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Sun, 12 Dec 2021 05:13:07 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Sun, 12 Dec 2021 05:13:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VzbYF93f2lUNe7XEWbS30nzO0aks2eRVKO36V9ExDQJcS4QRYt6V03e5lT1PBkv1vVXieM+ksl5rzO1xYiNw/PiB/rTXZlu0r2bqQ62WwBLEGwzV6j04I+U3cxQkrRRZEoLsuCxEeFLdpUNMjaOxwcfGgaTbfDLxbgORRitAYTZs1PIn+X1FvYW25DxvEyKkTQzXpRuMTnBXv37tF+6m6w9pk9pnzh85Y/mDWOv6I5eob4CroGzljFuvDFYqL/kIXjNJZK1ZmI1l6butYtC+O3S8/5JuzHNIEzgW4BtDWtv39xqJByulOFIelw+3A6GpHLMUPW6LQ023KlkMy3CIwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Bay9NkYV88DDf/GluS7Tmd3d8RuRiE/Q6knThUXKqyk=;
 b=YYuNN523NdpZy0IC0NecG0/avlPQIEExqogzxRa5pkzCorbgWcroaYKwz8eFQMTjx2CZIQKUjROkHjgcV7xqEcYLWYLs8tSxccIjyHu7utGAA9AFCTCLue4/skulGzJim0QOZsxFs4zbTWRNgIh5edmDM8ElccRSE1A3dnf+vkC3EWmXZea35FYHHdh+daDxsJTp1Sl4Lxy625j+tvJPYCuT/BGWN07lF1y5YxweXGxWNn9qRpHqbsT6O4wvZ3NmuDvyTXEmEh/z1L9wGVuCKgIF5ithxHShoUG+aBN8lmBgi2vOnWn0BAjr2RPPmpYCfl0GKN83joDuGeg43IDqnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Bay9NkYV88DDf/GluS7Tmd3d8RuRiE/Q6knThUXKqyk=;
 b=rtYbVEPX1lFcjNJ1AuJ78uCNsMPSy7/NTILrFLFop4cQwcbe0wOOYnrZmdmHt1P4GRha6IM0we9BSsAuL7s4T8Kk6qZ7S5nU9KAn67tYEiIqeZhETfSkHE3oXg8/2VOkbTSjqfjQMevrROr3xTpqlkOz65T3MHWnLqMEl3mxGPs=
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM8PR11MB5591.namprd11.prod.outlook.com (2603:10b6:8:38::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4778.11; Sun, 12 Dec 2021 13:13:03 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::3114:bfaa:f64d:684a]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::3114:bfaa:f64d:684a%4]) with mapi id 15.20.4778.012; Sun, 12 Dec 2021
 13:13:02 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Tyl, RadoslawX" <radoslawx.tyl@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] ixgbe: Add locking to prevent panic
 when setting sriov_numvfs to zero
Thread-Index: AQHX26CqP+iIW05Kq065DyrB0/Cuxawu/H9g
Date: Sun, 12 Dec 2021 13:13:02 +0000
Message-ID: <DM8PR11MB5621D7CAE11D1959F38F6DD5AB739@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20211117104645.279469-1-radoslawx.tyl@intel.com>
In-Reply-To: <20211117104645.279469-1-radoslawx.tyl@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a37a0548-76b8-413f-9874-08d9bd7120cb
x-ms-traffictypediagnostic: DM8PR11MB5591:EE_
x-microsoft-antispam-prvs: <DM8PR11MB55913AB2F03949834EB5B3E7AB739@DM8PR11MB5591.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pmxM9kWG7VGc0uKwKjd/cjkDb5JiKfFSRVz8Kw8B8IurYr539iw5dKdba0Dj16M5oZwiV0YYCjy9iQXe8MsTvkyPL895e4AkWmyf80LIPUX/1/ryDWvsODTTjHG/dw1moVwY6jU/XxonUgp+Ue+/CbTZFZie4TZOQP9jmKaHdzno9tPerQ7xkzzBtEdhBcAWxILIIgZVenx95PLyPWnQWFxnosC0lOdnki8MPk38Q4i3rTXtuJ5gP5LSXVDWCX47AYChKGQlEdcsGKpz4kzfk00kiRIuFRSKsXghKfa1zcJCwxIGLhgkwTfiF1CQX447xduJ1LfL9S9+XvbirT1QSlYyzY47oLlsq7BvI92fhmYrrNjI5+fuLO7R+V4oYFwAVqCUj0wUV9aJTIhM2PEzGYz2la+9rppmKn54YbbJOSh7lbUD14dWoUsiSM+XjpJBPmNl0r7GWHVSoogAPfnZYf1MlrrknM7a6Kqi1oHfnLePIAVUZ8XkSGO1ABCBWfISkNGs4gOGd6pRNCOxFyDKrVJpiDI5Sc0/dOPEvbS7BHRt0mYCErFrXYhoiIV5GjR6WGcvQH5vsrVOwNlian8N/MFlPTiagRuM+ssDkDU2ghzI3M3seEfDQjrb2oJ918AqSX/5M/XaqjJraBBIfv3Cz+/5WQVarM+75l/Or4JU6TZ8henL8nSHeIGUCVgYhLJeAo4fSHMbqWrDoKoRbOeK7A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(508600001)(2906002)(45080400002)(66476007)(6506007)(5660300002)(7696005)(71200400001)(54906003)(55016003)(8936002)(38070700005)(66946007)(122000001)(8676002)(38100700002)(52536014)(9686003)(66556008)(83380400001)(86362001)(316002)(107886003)(4326008)(33656002)(82960400001)(66446008)(186003)(110136005)(26005)(64756008)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?O29PKkAVlB+9kbH9ahbNLPBk5oWweIEykjtfL0HxRbO/+At7p4xQKiT9dceA?=
 =?us-ascii?Q?6SW7nD0JHkXkHmatMPR0GxlS5u1dRhXgI/4ugbiHYC7oV3Za1OO+hQyxTJCh?=
 =?us-ascii?Q?9ahfZfCxAXHE0fLKBHQLgFokOou7nhbN8HAYrNZfAOJwigM5RrgRvhe7vWrv?=
 =?us-ascii?Q?At2hvadhdAw/vZTXtQlDL/vHTMcq1ey0wtMnFLNhRjZsXYfrHJTFlD64AaPo?=
 =?us-ascii?Q?MjtKfMfCuUeDTgmk9gzhsCoulN3KCSRtyTnfqljvdIWzUqLOrreQptWI/OM/?=
 =?us-ascii?Q?1Km4EEErrgwJXjUoexlaJtWs93GMFS0AwIjP4dEhMzVZpYoPF9LoBCfDMkw/?=
 =?us-ascii?Q?yegXiZHb5PzESFfcc04f2zleDn4aT+Zf0iSGfuNICFt1tsr2CbVDVhhNjk70?=
 =?us-ascii?Q?8m+7IbpReQ+w2rGc+jD8HXE6ZqBFlaEtk9zDDdlK72ft8vuJ7w08H2WeMnEL?=
 =?us-ascii?Q?xRYEzjkXmT2eatRh1gU5THzkYOR9roXVb0FHFigOQenNJB5phDuzWCd2lmUt?=
 =?us-ascii?Q?dFezxS94116tepT3duwvbR0ZeDA4nQKP4M/svvUjiyrpMXhUnflMj7GWD+Qt?=
 =?us-ascii?Q?3+3PTi+rUM3FcQNYNyP1c/MefNF6LRuhC+ewaQSydtK0lOvPvRSVWwlXvk56?=
 =?us-ascii?Q?Qz1TvZYO3ITlh21h46rAwehLXxkMO2MeuCvCvcg/K1rvOE1P2H1+OAHsTXyG?=
 =?us-ascii?Q?oSzd7/GMbPPbPG1b3xq4PaEb+e+Ei/FQc1rP7IsC3CDUSRXI54xuy7NwGDyr?=
 =?us-ascii?Q?0/+IYc/nkUupLMVTfhvMupxrA79FdBPNfOl2S8oOwIsc2WdumHswi7yAAnZP?=
 =?us-ascii?Q?araYAubE9B6wdwhXaDrmKa9l/nul+mLiF33ivh/WpIkVxjKI1YfuX/X5+Dza?=
 =?us-ascii?Q?tUV0iH9/rhkKYnrC2mOvbp7hDLMDA4zC+fpWcPjMhf3vU05Mlx5XdAjpn6Vj?=
 =?us-ascii?Q?nlR+bxAarY+UqoWGxV0WP4Zz5P9COeK9nkO+1Ei7sKncCCAy1QWTWSeyzTeS?=
 =?us-ascii?Q?pcVW56gREMyJneMhXUqzsT1XAlr6oQwRR+UrObq1PBi0IVZx+iIHxJW9/Itm?=
 =?us-ascii?Q?khBuh0hhkKmWdPxwforfez1LLCSRXz6h+TVTlCEyBMKEcRFkRB63N6pr7lHV?=
 =?us-ascii?Q?lYnuCJahJh4HuLqNYsA12gRG5BhMCDcNYBIi8cG28ETp+XGEve/wGuQ9WB1w?=
 =?us-ascii?Q?66mtfuASw7qXY2r/R6wiUA7E2DUaaJpEq54KVHpzGJ6JP+MMQqTQq3hVcexd?=
 =?us-ascii?Q?130IvbB5dqmj1IBVdMfIZH2V7NMVPH+fuXKMEjbTCfRM8dGQIg6fJgInVuve?=
 =?us-ascii?Q?9VMPIB+KaZMZAZJXYh45X+6MK9sVwqaIIp829bB8F21IpxgUmZhqtpqC80Lj?=
 =?us-ascii?Q?2c+b4JF1VIHTgfm10vMqc5r1sx3OtQNkz+gFZEhlKhIqJ2O9uWB7+BoCvHYC?=
 =?us-ascii?Q?lKvD7Jr7E9c7PjlLJiEeQIjQrRTBe0CcFbvxqoTn8dmPxlzODAWrOUtvGaSC?=
 =?us-ascii?Q?ixrmdw/FTKTITQtsKxI67BqWXhlX9uq4v31kdEfk1V9DrasSJpgnxVApvG2N?=
 =?us-ascii?Q?oYM/hevnwcmxWpb6S+jVgz108nIAlX0Kwf1oTlJ8APh1MyGa5x84cYDzsVaX?=
 =?us-ascii?Q?wfVIYH7En/O3I3w7xFaDMPOsxvoi/CdmTQRcQSl8mUE3g+Nthr3rO5QgqyAG?=
 =?us-ascii?Q?MhT0DA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a37a0548-76b8-413f-9874-08d9bd7120cb
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2021 13:13:02.7818 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BwY730Hr5POem4RRrFZ3/FqG4kx9Fdk4BvHlEZHhT27ZsVLw4hCbdFCrQc+rjhcUQ3noMUCctCIeVv5F6FXxjCB87mDNFbDsSyVpHlyxguY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5591
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Add locking to prevent panic
 when setting sriov_numvfs to zero
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
Cc: "Tyl, RadoslawX" <radoslawx.tyl@intel.com>, "Skajewski,
 PiotrX" <piotrx.skajewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Still is Call trace:

[  +0.000004] WARNING: CPU: 48 PID: 9330 at kernel/softirq.c:362 __local_bh_enable_ip+0x68/0x70
[  +0.000015] Modules linked in: ixgbevf(+) xt_CHECKSUM xt_MASQUERADE xt_conntrack ipt_REJECT nf_reject_ipv4 nft_compat nft_counter nft_chain_nat nf_nat nf_conntrack nf_defrag_ipv6 nf_defrag_ipv4 nf_tables nfnetlink tun intel_rapl_msr sd_mod t10_pi sg intel_rapl_common amd64_edac edac_mce_amd kvm_amd kvm irqbypass crct10dif_pclmul crc32_pclmul ghash_clmulni_intel rapl pcspkr wmi_bmof ahci libahci i40e libata joydev ipmi_ssif ccp sp5100_tco k10temp i2c_piix4 acpi_ipmi ipmi_si ipmi_devintf ipmi_msghandler acpi_power_meter ip_tables rpcsec_gss_krb5 bridge stp llc rfkill drm_kms_helper syscopyarea sysfillrect sysimgblt ixgbe fb_sys_fops mdio drm tg3 dca i2c_algo_bit wmi sctp libcrc32c crc32c_intel ip6_udp_tunnel udp_tunnel fuse
[  +0.000063] CPU: 48 PID: 9330 Comm: systemd-udevd Kdump: loaded Not tainted 5.16.0-rc4_next-queue_dev-queue-01129-gac735b4b67a1 #1
[  +0.000004] Hardware name: Dell Inc. PowerEdge R7525/0590KW, BIOS 2.2.5 04/08/2021
[  +0.000005] RIP: 0010:__local_bh_enable_ip+0x68/0x70
[  +0.000004] Code: 85 c0 75 05 e8 60 d4 f1 ff c3 48 c7 c7 0e 0d 24 9d e8 cc 5f a4 00 65 66 8b 05 54 b1 14 64 66 85 c0 74 cc e8 0a ff ff ff eb c5 <0f> 0b eb a7 0f 1f 40 00 0f 1f 44 00 00 53 bf 00 00 01 00 e8 b0 b7
[  +0.000002] RSP: 0018:ffffb1860d3c0e00 EFLAGS: 00010006
[  +0.000002] RAX: 0000000080010202 RBX: 000000000000003f RCX: 000000000000000e
[  +0.000003] RDX: 0000000000000003 RSI: 0000000000000201 RDI: ffffffffc0501e95
[  +0.000001] RBP: 0000000000000001 R08: 0000000080000000 R09: 0000000000000000
[  +0.000001] R10: 0000000000000000 R11: ffffb1860d3c0ad0 R12: 0000000000000002
[  +0.000002] R13: 000000000000003f R14: ffff9fbcd09fca40 R15: ffff9fbcd09fdb80
[  +0.000001] FS:  00007ff5037a0180(0000) GS:ffff9fd45f800000(0000) knlGS:0000000000000000
[  +0.000003] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  +0.000001] CR2: 0000555fda5f6d00 CR3: 00000018a4aee000 CR4: 0000000000350ee0
[  +0.000002] Call Trace:
[  +0.000009]  <IRQ>
[  +0.000007]  ixgbe_msg_task+0x4a5/0x15c0 [ixgbe]
[  +0.000058]  ixgbe_msix_other+0x15d/0x2e0 [ixgbe]
[  +0.000011]  __handle_irq_event_percpu+0x39/0x180
[  +0.000007]  handle_irq_event_percpu+0x30/0x70
[  +0.000002]  handle_irq_event+0x34/0x60
[  +0.000003]  handle_edge_irq+0x9a/0x1c0
[  +0.000006]  __common_interrupt+0x65/0x100
[  +0.000004]  common_interrupt+0xb4/0xd0
[  +0.000007]  </IRQ>
[  +0.000001]  <TASK>
[  +0.000001]  asm_common_interrupt+0x1e/0x40
[  +0.000009] RIP: 0010:sha256_ni_transform+0x4e/0x330
[  +0.000008] Code: 66 0f 3a 0f ca 08 66 0f 3a 0e d7 f0 66 44 0f 6f 05 e7 fc 2a 01 48 8d 05 e0 fb 2a 01 66 44 0f 6f c9 66 44 0f 6f d2 f3 0f 6f 06 <66> 41 0f 38 00 c0 66 0f 6f d8 66 0f fe 00 0f 38 cb d1 66 0f 70 c0
[  +0.000002] RSP: 0018:ffffb18622917b80 EFLAGS: 00000287
[  +0.000001] RAX: ffffffff9d17eb40 RBX: ffff9fbcd096b980 RCX: ffff9fbcd096b9b0
[  +0.000002] RDX: ffffb18627ec7140 RSI: ffffb18627c37440 RDI: ffff9fbcd096b988
[  +0.000001] RBP: ffff9fbcd096b988 R08: 0000000000000018 R09: 0000000000000000
[  +0.000002] R10: 000000000000000c R11: 0000000000000004 R12: ffff9fc3fbd10540
[  +0.000001] R13: ffffffff9becef20 R14: 00000000003b4140 R15: ffffb18627b13000
[  +0.000001]  ? sha256_ssse3_update+0x30/0x30
[  +0.000004]  sha256_finup+0x27c/0x320
[  +0.000004]  pkcs7_digest.isra.2+0xd8/0x250
[  +0.000009]  pkcs7_verify+0x83/0x570
[  +0.000003]  verify_pkcs7_message_sig+0x62/0x100
[  +0.000006]  verify_pkcs7_signature+0x59/0x70
[  +0.000003]  mod_verify_sig+0x84/0xb0
[  +0.000008]  load_module+0x10f/0x1cb0
[  +0.000003]  ? __kernel_read+0x150/0x2d0
[  +0.000007]  ? kernel_read_file+0x25b/0x2d0
[  +0.000010]  ? __do_sys_finit_module+0xaa/0x110
[  +0.000002]  __do_sys_finit_module+0xaa/0x110
[  +0.000004]  do_syscall_64+0x3a/0x80
[  +0.000003]  entry_SYSCALL_64_after_hwframe+0x44/0xae
[  +0.000003] RIP: 0033:0x7ff50238552d
[  +0.000004] Code: 00 c3 66 2e 0f 1f 84 00 00 00 00 00 90 f3 0f 1e fa 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 2b 79 2c 00 f7 d8 64 89 01 48
[  +0.000002] RSP: 002b:00007ffc37e250b8 EFLAGS: 00000246 ORIG_RAX: 0000000000000139
[  +0.000003] RAX: ffffffffffffffda RBX: 0000555fda5974d0 RCX: 00007ff50238552d
[  +0.000001] RDX: 0000000000000000 RSI: 00007ff502ef986d RDI: 0000000000000007
[  +0.000001] RBP: 00007ff502ef986d R08: 0000000000000000 R09: 00007ffc37e251e0
[  +0.000001] R10: 0000000000000007 R11: 0000000000000246 R12: 0000000000000000
[  +0.000001] R13: 0000555fda65e570 R14: 0000000000020000 R15: 0000000000000000
[  +0.000003]  </TASK>
[  +0.000001] ---[ end trace 6eabda8081b2ba26 ]---
[  +0.008823] ixgbe 0000:a1:00.0 eth0: VF 0 requested invalid api version 6
[  +0.001006] ixgbevf 0000:a1:10.0: MAC address not assigned by administrator.
[  +0.000003] ixgbevf 0000:a1:10.0: Assigning random MAC address
[  +0.001449] ixgbevf 0000:a1:10.0: 8e:00:3e:e2:c7:17
[  +0.000003] ixgbevf 0000:a1:10.0: MAC: 1
[  +0.000001] ixgbevf 0000:a1:10.0: Intel(R) 82599 Virtual Function
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
