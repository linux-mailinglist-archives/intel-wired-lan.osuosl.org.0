Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 667073A35CA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Jun 2021 23:21:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DB1DC83C52;
	Thu, 10 Jun 2021 21:21:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LG4hMCObmKcV; Thu, 10 Jun 2021 21:21:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C696383C62;
	Thu, 10 Jun 2021 21:21:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 30A7F1BF38A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jun 2021 21:21:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1F6AA6070C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jun 2021 21:21:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mzN6gRHzcz80 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Jun 2021 21:21:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5CE0D60678
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jun 2021 21:21:38 +0000 (UTC)
IronPort-SDR: V+6XfYSuMU09w3VhSuQ5Dlrob7qeKC1O//C0tXZKg7vOLbGjsWIrXb8lW8nWhREStJgf3uzmpx
 XqjtXjpB4O5g==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="205222671"
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="205222671"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 14:21:21 -0700
IronPort-SDR: 1Ub9jtm1LexDio6LEp8BWDx00PT1cPrnS+nGcyL+5LqCic7r/OOz8v8eWm9LnD6NLaZ6nIXqpu
 uth0PL9bcICw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="441362872"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga007.jf.intel.com with ESMTP; 10 Jun 2021 14:21:21 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 10 Jun 2021 14:21:21 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Thu, 10 Jun 2021 14:21:21 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Thu, 10 Jun 2021 14:21:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k01t3Bd1NvVfhrz7gs5Sfgdt5WD4vshePW0v8THBX5SwWP5uRs3674EEDB+EhJHak5FsrhabFCc3WpmHaO9QeolfWV+p7WAHyIvCxW0Vhs+sMzC1g9mLBIktFXPp7UllW9bSQUy+IuLjxFuuf8FV0NTQecpijsI4IWkyFYSQ2nQDXfG832VhUK7EvlIfiZGcXWjlgljAa+eN9Pce2RuQvQE6m3aB7C/MZ0FYBZtoBUg5mI7/OtS1gUWbIviE8W5sKokneS+S71m4A40aeOvUrbBCjwBZ6APsGAl4OzQhigRk2Oe4bt+khfQPwMgxlb0PorxNi7nm5YgR8plDxiiMrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KD8APzSWJ22GlUTVFI6LHBp9qenU/BrJwuWAozqvFzQ=;
 b=eXO3SPL0GG2a3B57Fi+qop5CeVumVYctYggu4HeMiiQ8LAFqKt3XHQG26UV2JzXLc/3Wks0OxRNZhRrXWsCKIJvcg1p4tqqcbCZ3WRZxUdVGstnAtlnN9cSQL1VBSlB5Kdtrw8of9GRzAPuOWlNHCi0v8sw+gyf9SoacO5p1HzVOtrHgAMCLRvY7mqUK6VqHpqyY85CDebTgI6jErmFVjkyUp/PywRXjEMXMh1tN5z1Y54fQmfXaey5PdfdRyLhamgBTHWYWhKJsCypsPNBebXY4lmxT4lfWSTSKggnHRd1zgvkYJFy3NhjpvNQ2RcGKMGwr8AweBNFhaWhReqh3gA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KD8APzSWJ22GlUTVFI6LHBp9qenU/BrJwuWAozqvFzQ=;
 b=DMwoPST3V16phXIOEZFoMhU2Qj5/0AN0sDw9z2z1WVuFhBMIeBmi0Hdz6RKO2w+QNKpwQZgq+rYQbbQ4oMTzjeQzAXT23GQVw9YFlHYjmkFLdzPKWXqQDd7AgXCB5tvhda4E3X3Ge8Iiuem51bCpHmcj5/KerUitBOVxgP3XNPM=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR1101MB2288.namprd11.prod.outlook.com (2603:10b6:301:53::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.22; Thu, 10 Jun
 2021 21:21:19 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43%7]) with mapi id 15.20.4195.031; Thu, 10 Jun 2021
 21:21:19 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 7/8] ice: enable receive hardware
 timestamping
Thread-Index: AQHXXU/oAwP/hcYDY0uQkgr+hnsE0KsNwmLg
Date: Thu, 10 Jun 2021 21:21:19 +0000
Message-ID: <CO1PR11MB510566E0C9A47F6D53DA8FB3FA359@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210609163953.52440-1-anthony.l.nguyen@intel.com>
 <20210609163953.52440-8-anthony.l.nguyen@intel.com>
In-Reply-To: <20210609163953.52440-8-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [71.236.132.75]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 65d1caed-5f94-49c7-d048-08d92c55b07d
x-ms-traffictypediagnostic: MWHPR1101MB2288:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR1101MB2288073C3B9A97CE1CF01BD0FA359@MWHPR1101MB2288.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sl4DwUkqpUd6sDyW0eTYHEjW1sbWrrECpU5PF3/X8NqaN8ALOSu+3e8D7Jycuo4ouMYVpfG9bQpEjgVCAhxD6KRFyoPj9yxqehWT9841/IrRoX0H6+sSUasjV9iNUHks9PQGcMkhZzPhq8ZS93/R7M+XF3/Vj6j643ugKR5Tw7nwiq9Gc2tENH6TGc2ECDjmIPLdFCOkjhfQb1lWHft8IwbotOvtR5OHIU3aB4h+O4G4nx1E7HzVOdLmXeQ2TWZZWpnE9e1V6kMHXhe4WiPAW8gYHJwkBzyQRPNlV6LrXGiMhx3EM4ZBITX3DnmHWhmBclYTaH0ZNMuSHJOg9MaWBnVQ6Z5ZQlv6dLAYlElXbf/AggD+Aw9bfBUuQJA8V48CMRTFm4jp7zZM1mr2+rWSWVOKOJN0hOEVhcFTKgdA+lUZnimYbmDqLHJkLbJL3z323V/Ug1kOtaadkKBAHHQtSGDTzqbBNpbnD/HDMs9z5soo04d70l0VB/NS+974xIDIMCUAutaWETdTLQmCJIVhYsKoAf6omcCQyTYWYDq+gxRYrRqiBLIlEmHmF2qM0Uzs0d/mvinlxdLh879aGFiucND1MNwBcq4jU8Q7YMfKly4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(396003)(39860400002)(136003)(366004)(346002)(2906002)(38100700002)(122000001)(8936002)(8676002)(66946007)(5660300002)(66476007)(66446008)(478600001)(26005)(86362001)(6506007)(53546011)(110136005)(52536014)(7696005)(316002)(71200400001)(33656002)(83380400001)(76116006)(64756008)(55016002)(9686003)(186003)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?PkFFHxvnIQAPeHwkSqMB1U9snBRSJQzXpn0O1aDp0zYM00L7UBS5PJapRSOJ?=
 =?us-ascii?Q?fgE/6OufQ4y9KHCSOXSV1k6LI+AnrLwd7Kcd3LXD9+cz4tQSsESJX0wODPRI?=
 =?us-ascii?Q?xBEj6lqNUjNo+Nol1d1SVRhHBVaw7fZ8muL2kpTC14+oaUCJy8BWeNUYJvJx?=
 =?us-ascii?Q?bdzc0nWAOVfZYY+38PTU1urgN+pq2UwT5Rv2jKlhPTVn/kbLPVR4pV42nqUR?=
 =?us-ascii?Q?gFI/3woDOUsbY6lHBQsy80RaNZVjbjm8eSO/qBc23VJGR2rQm1HRb38IhPp7?=
 =?us-ascii?Q?KssxULiFwfFOf3FLBBX4txc1ZfIQTT0yfjXKC2+iL9ACVXe8ml/lAxsgPz5L?=
 =?us-ascii?Q?dBdJRw3uvvdXgtG5/PmCOkUcbPblAGjxJKuI9Ni88nERK4RefJSqzxAQTemB?=
 =?us-ascii?Q?/HE+6YulSH+R6g6Lx59tACuJWXezNHaep0wcLscnSuywSdd2PoXOKcvVnN35?=
 =?us-ascii?Q?RNVZRiO4Djsy2x357vj5SMVELnVjBlxQw6bHZu+0mytGnxlel7k70hTZ3MWE?=
 =?us-ascii?Q?w5pP2Civv+HKrW3kKjHzV06bA4lhArjP3es8Ey+ntvfsBt6AaU3HXa4UuJd4?=
 =?us-ascii?Q?DlE2821B4r/BOa9DSMVAwkio02lyiCVY5KMRrrsmT0dQ9mOKZA6r83ANAf1c?=
 =?us-ascii?Q?x1OH9tJ0LwMW3a8FHD08tm/xwQYWZ3nA1UExWPQeM8zRj5X1gGSQ04+i1miy?=
 =?us-ascii?Q?gSaQ4GLtFX9l/QP7wDl8fp5Cgs1dwjWwdxOfxRwXN0i8Odsurz8jJo0eV/bS?=
 =?us-ascii?Q?2Ri5/pYtcP366wXydZD+k6nmw+BsvWUTf9bSeF5r1PMJUjdLj7cs4oyDAxpS?=
 =?us-ascii?Q?HZSDp2b29C46SVV++DSItdie001xXCTTkH0PpsJx/hCnDyJEW0kHZXehnau/?=
 =?us-ascii?Q?Dk+wlWzjALV31Y6mXC2xl/ls+xDaFuN3ttb/c2lEbhR9TUHOahYZYmfzBnzx?=
 =?us-ascii?Q?5LvSxtyHDiiBElFPigNiyoGxfjjBV6gVSnjNK0/YscoQrM9JY1YzvZyK48Ps?=
 =?us-ascii?Q?Q1Ki6FBILXlbpCXb2GopiBvDE2+By6us7ozl4RZ82nTE8AEdDKqZj7xvFCH3?=
 =?us-ascii?Q?qIQytGeLZpGoPrUEvn2TemZz8CYJVhCDCvWFaUBFcvG1cfkG8na306n7Ff+a?=
 =?us-ascii?Q?bkgoPMzhZsU9mZpYjrLlmDBZB8tXGaq9ojcu7EGg9BtSNhxxX+6LxNNG4WxT?=
 =?us-ascii?Q?r+F5pMpnKuYai2EPgjiKK0VVP0YLW2rSHCvgtoN+RMIJ/egckgDA9ItRlYin?=
 =?us-ascii?Q?/L7F9TajrD2H1wbA3rgTsRHO7vvO1JIyUR7lXOJGVbOlUYUT4/tAx307VRld?=
 =?us-ascii?Q?wiShF4uahtVvGtNrzX21A5/O?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 65d1caed-5f94-49c7-d048-08d92c55b07d
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2021 21:21:19.3288 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ar0MDSmleleM6LjNtnzx8satwA2Ccv6weNY+HgeHQMhe9pfYGJa8ZPjv32ZKuLFlw3XnRKvTXVJvEq7s1dMgqIgNsON/5aCvva8NuNQvWAU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2288
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2 7/8] ice: enable receive hardware
 timestamping
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
> Sent: Wednesday, June 9, 2021 9:40 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v2 7/8] ice: enable receive hardware
> timestamping
> 
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> Add SIOCGHWTSTAMP and SIOCSHWTSTAMP ioctl handlers to respond to
> requests to enable timestamping support. If the request is for enabling Rx
> timestamps, set a bit in the Rx descriptors to indicate that receive
> timestamps should be reported.
> 
> Hardware captures receive timestamps in the PHY which only captures part
> of the timer, and reports only 40 bits into the Rx descriptor. The upper
> 32 bits represent the contents of GLTSYN_TIME_L at the point of packet
> reception, while the lower 8 bits represent the upper 8 bits of
> GLTSYN_TIME_0.
> 
> The networking and PTP stack expect 64 bit timestamps in nanoseconds. To
> support this, implement some logic to extend the timestamps by using the
> full PHC time.
> 
> If the Rx timestamp was captured prior to the PHC time, then the real
> timestamp is
> 
>   PHC - (lower_32_bits(PHC) - timestamp)
> 
> If the Rx timestamp was captured after the PHC time, then the real
> timestamp is
> 
>   PHC + (timestamp - lower_32_bits(PHC))
> 
> These calculations are correct as long as neither the PHC timestamp nor the
> Rx timestamps are more than 2^32-1 nanseconds old. Further, we can detect
> when the Rx timestamp is before or after the PHC as long as the PHC
> timestamp is no more than 2^31-1 nanoseconds old.
> 
> In that case, we calculate the delta between the lower 32 bits of the PHC and
> the Rx timestamp. If it's larger than 2^31-1 then the Rx timestamp must have
> been captured in the past. If it's smaller, then the Rx timestamp must have
> been captured after PHC time.
> 
> Add an ice_ptp_extend_32b_ts function that relies on a cached copy of the
> PHC time and implements this algorithm to calculate the proper upper 32bits
> of the Rx timestamps.
> 
> Cache the PHC time periodically in all of the Rx rings. This enables each Rx ring
> to simply call the extension function with a recent copy of the PHC time. By
> ensuring that the PHC time is kept up to date periodically, we ensure this
> algorithm doesn't use stale data and produce incorrect results.
> 
> To cache the time, introduce a kworker and a kwork item to periodically store
> the Rx time. It might seem like we should use the .do_aux_work interface of
> the PTP clock. This doesn't work because all PFs must cache this time, but
> only one PF owns the PTP clock device.
> 
> Thus, the ice driver will manage its own kthread instead of relying on the PTP
> do_aux_work handler.
> 
> With this change, the driver can now report Rx timestamps on all incoming
> packets.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_base.c     |   5 +-
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  |   7 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c      |   8 +-
>  drivers/net/ethernet/intel/ice/ice_lib.h      |   3 +-
>  drivers/net/ethernet/intel/ice/ice_main.c     |  22 ++
>  drivers/net/ethernet/intel/ice/ice_ptp.c      | 337 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_ptp.h      |  28 ++
>  drivers/net/ethernet/intel/ice/ice_txrx.h     |   2 +
>  drivers/net/ethernet/intel/ice/ice_txrx_lib.c |   3 +
>  9 files changed, 409 insertions(+), 6 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> (A Contingent Worker at Intel)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
