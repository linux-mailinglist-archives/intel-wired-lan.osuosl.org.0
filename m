Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F955D823
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jul 2019 00:45:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 10340865E2;
	Tue,  2 Jul 2019 22:45:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dSRzZAIIbs7i; Tue,  2 Jul 2019 22:45:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D7B79864F3;
	Tue,  2 Jul 2019 22:45:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AF40B1BF84C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 22:45:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AB39684F90
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 22:45:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vGiYOjzUvvq8 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jul 2019 22:45:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1429784F58
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 22:45:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Jul 2019 15:45:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,444,1557212400"; d="scan'208";a="184603677"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
 by fmsmga001.fm.intel.com with ESMTP; 02 Jul 2019 15:45:49 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.70]) by
 ORSMSX103.amr.corp.intel.com ([169.254.5.135]) with mapi id 14.03.0439.000;
 Tue, 2 Jul 2019 15:45:49 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S22 01/16] ice: add lp_advertising
 flow control support
Thread-Index: AQHVLEdqfdFUHPSbGUKpRx8+13+Tlaa39yfg
Date: Tue, 2 Jul 2019 22:45:49 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D3FBDAB@ORSMSX104.amr.corp.intel.com>
References: <20190626092027.52845-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20190626092027.52845-1-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZDUzNzMyMDItMTEzNC00MTU3LWE4N2ItYWEwZjg5ZTNmMTZmIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiSDJqcXRcLzVFTUpLdVYrbm1WVkhleW85XC81aEtDOGI3c3FMWnJlRTlGWG9sbStRczU0RG9QUlpSSHVcL3F6T1ZjVSJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S22 01/16] ice: add lp_advertising
 flow control support
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
> From: Intel-wired-lan [mailto:intel-wired-lan-bounces@osuosl.org] On
> Behalf Of Tony Nguyen
> Sent: Wednesday, June 26, 2019 2:20 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S22 01/16] ice: add lp_advertising flow
> control support
> 
> From: Paul Greenwalt <paul.greenwalt@intel.com>
> 
> Add support for reporting link partner advertising when
> ETHTOOL_GLINKSETTINGS defined. Get pause param reports the Tx/Rx
> pause configured, and then ethtool issues ETHTOOL_GSET ioctl and
> ice_get_settings_link_up reports the negotiated Tx/Rx pause. Negotiated
> pause frame report per IEEE 802.3-2005 table 288-3.
> 
> $ ethtool --show-pause ens6f0
> Pause parameters for ens6f0:
> Autonegotiate:  on
> RX:             on
> TX:             on
> RX negotiated:  on
> TX negotiated:  on
> 
> $ ethtool ens6f0
> Settings for ens6f0:
>         Supported ports: [ FIBRE ]
>         Supported link modes:   25000baseCR/Full
>         Supported pause frame use: Symmetric
>         Supports auto-negotiation: Yes
>         Supported FEC modes: None BaseR RS
>         Advertised link modes:  25000baseCR/Full
>         Advertised pause frame use: Symmetric Receive-only
>         Advertised auto-negotiation: Yes
>         Advertised FEC modes: None BaseR RS
>         Link partner advertised link modes:  Not reported
>         Link partner advertised pause frame use: Symmetric
>         Link partner advertised auto-negotiation: Yes
>         Link partner advertised FEC modes: Not reported
>         Speed: 25000Mb/s
>         Duplex: Full
>         Port: Direct Attach Copper
>         PHYAD: 0
>         Transceiver: internal
>         Auto-negotiation: on
>         Supports Wake-on: g
>         Wake-on: g
>         Current message level: 0x00000007 (7)
>                                drv probe link
>         Link detected: yes
> 
> When ETHTOOL_GLINKSETTINGS is not defined, get pause param reports the
> negotiated Tx/Rx pause.
> 
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 104 +++++++++++++------
>  1 file changed, 72 insertions(+), 32 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
