Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F3B0D8451
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Oct 2019 01:15:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2F0F387939;
	Tue, 15 Oct 2019 23:15:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mriZvxITNoH3; Tue, 15 Oct 2019 23:15:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9CF2E879F0;
	Tue, 15 Oct 2019 23:15:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 74A441BF291
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2019 23:15:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 70B3885F6A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2019 23:15:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aLOnnxA46cmE for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Oct 2019 23:15:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8EC7185DB8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Oct 2019 23:15:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 16:15:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,301,1566889200"; d="scan'208";a="208281036"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga001.fm.intel.com with ESMTP; 15 Oct 2019 16:15:51 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 15 Oct 2019 16:15:51 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 15 Oct 2019 16:15:50 -0700
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Tue, 15 Oct 2019 16:15:50 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S30 6/9] ice: introduce legacy rx flag
Thread-Index: AQHVfvJ0C59coHCqNEeLIYfNwT6JxadcXv6w
Date: Tue, 15 Oct 2019 23:15:50 +0000
Message-ID: <a8b26464c5834d3ca7b77c0c9716b2b3@intel.com>
References: <20191009140925.13997-1-anthony.l.nguyen@intel.com>
 <20191009140925.13997-6-anthony.l.nguyen@intel.com>
In-Reply-To: <20191009140925.13997-6-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZDNhZDNhZmItYjZjYS00MGI0LWJmOTQtNTBlOGMzMTE5NGMxIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiTXB5MjYySVJSc2NFcGFENnFXbWZoY1lSZXRLb2VwaTJHTm9vNjhmWFVDOWpnb1FFY1k3aHh2bGdGNlRiUTNTbiJ9
dlp-reaction: no-action
dlp-version: 11.0.400.15
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S30 6/9] ice: introduce legacy rx flag
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
> Sent: Wednesday, October 9, 2019 7:09 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S30 6/9] ice: introduce legacy rx flag
> 
> From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> 
> Add an ethtool "legacy-rx" priv flag for toggling the Rx path. This control knob
> will be mainly used for build_skb usage as well as buffer size/MTU
> manipulation.
> 
> In preparation for adding build_skb support in a way that it takes care of how
> we set the values of max_frame and rx_buf_len fields of struct ice_vsi.
> Specifically, in this patch mentioned fields are set to values that will allow us
> to provide headroom and tailroom in-place.
> 
> This can be mostly broken down onto following:
> - for legacy-rx "on" ethtool control knob, old behaviour is kept;
> - for standard 1500 mtu size configure the buffer of size 1536, as
>   network stack is expecting the NET_SKB_PAD to be provided and
>   NET_IP_ALIGN can have a non-zero value (these can be typically equal
>   to 32 and 2, respectively);
> - for larger mtus go with max_frame set to 9k and configure the 3k
>   buffer in case when PAGE_SIZE of underlying arch is less than 8k; 3k
>   buffer is implying the need for order 1 page, so that our page
>   recycling scheme can still be applied;
> 
> With that said, substitute the hardcoded ICE_RXBUF_2048 and PAGE_SIZE
> values in DMA API that we're making use of with rx_ring->rx_buf_len and
> ice_rx_pg_size(rx_ring). The latter is an introduced helper for determining
> the page size based on its order (which was figured out via ice_rx_pg_order).
> Last but not least, take care of truesize calculation.
> 
> In the followup patch the headroom/tailroom computation logic will be
> introduced.
> 
> This change aligns the buffer and frame configuration with other Intel
> drivers, most importantly with iavf.
> 
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h         |  1 +
>  drivers/net/ethernet/intel/ice/ice_ethtool.c |  6 +++
>  drivers/net/ethernet/intel/ice/ice_lib.c     | 22 +++++++---
>  drivers/net/ethernet/intel/ice/ice_txrx.c    | 46 ++++++++++++--------
>  drivers/net/ethernet/intel/ice/ice_txrx.h    | 13 ++++++
>  5 files changed, 63 insertions(+), 25 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
