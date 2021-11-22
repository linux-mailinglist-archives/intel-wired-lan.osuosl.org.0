Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB59459134
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Nov 2021 16:21:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4BCC940252;
	Mon, 22 Nov 2021 15:21:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GUkWZHgCTQVM; Mon, 22 Nov 2021 15:21:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 21D0840145;
	Mon, 22 Nov 2021 15:21:15 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8E86A1BF2C3
 for <intel-wired-lan@osuosl.org>; Mon, 22 Nov 2021 15:21:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6BD8A403A8
 for <intel-wired-lan@osuosl.org>; Mon, 22 Nov 2021 15:21:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8VYPoQwiyjjn for <intel-wired-lan@osuosl.org>;
 Mon, 22 Nov 2021 15:21:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A71A84020A
 for <intel-wired-lan@osuosl.org>; Mon, 22 Nov 2021 15:21:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10175"; a="321031155"
X-IronPort-AV: E=Sophos;i="5.87,255,1631602800"; d="scan'208";a="321031155"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 07:21:03 -0800
X-IronPort-AV: E=Sophos;i="5.87,255,1631602800"; d="scan'208";a="496898592"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 07:21:02 -0800
Date: Mon, 22 Nov 2021 06:23:36 -0500
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Message-ID: <YZt9uAwNHeduZ4xo@localhost.localdomain>
References: <20211116102438.11756-1-michal.swiatkowski@linux.intel.com>
 <5ae646ac06ec21eeb82dda74b13c79f84709bcb4.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5ae646ac06ec21eeb82dda74b13c79f84709bcb4.camel@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix adding different tunnels
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
Cc: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Nov 17, 2021 at 11:59:19PM +0000, Nguyen, Anthony L wrote:
> On Tue, 2021-11-16 at 11:24 +0100, Michal Swiatkowski wrote:
> > Adding filters with the same values inside for VXLAN and geneve
> > causes hw
> > error, because it looks exactly the same. To choose between different
> > type of tunnels new recipe is needed. Add storing tunnel types in
> > creatig recipes function and start checking it in finding function.
> > =

> > Change getting open tunnels function to return port on correct tunnel
> > type. This is needed to copy correct port to dummy packet.
> > =

> > Block user from adding enc_dst_port via tc flower, because=A0 VXLAN and
> > geneve filters can be created only with destination port which was
> > previously opened.
> > =

> > Fixes: 8b032a55c1bd5 ("ice: low level support for tunnels")
> > Signed-off-by: Michal Swiatkowski
> > <michal.swiatkowski@linux.intel.com>
> > ---
> > =A0.../net/ethernet/intel/ice/ice_ethtool_fdir.c=A0=A0 |=A0 4 ++--
> > =A0drivers/net/ethernet/intel/ice/ice_fdir.c=A0=A0=A0=A0=A0=A0 |=A0 2 +-
> > =A0drivers/net/ethernet/intel/ice/ice_flex_pipe.c=A0 |=A0 6 ++++--
> > =A0drivers/net/ethernet/intel/ice/ice_flex_pipe.h=A0 |=A0 3 ++-
> > =A0drivers/net/ethernet/intel/ice/ice_switch.c=A0=A0=A0=A0 | 17 +++++++=
+++++---
> > --
> > =A0drivers/net/ethernet/intel/ice/ice_tc_lib.c=A0=A0=A0=A0 |=A0 3 ++-
> > =A06 files changed, 23 insertions(+), 12 deletions(-)
> =

> The added function parameters need to be documented:
> =

> drivers/net/ethernet/intel/ice/ice_switch.c:3801: warning: Function
> parameter or member 'tun_type' not described in 'ice_find_recp'
> drivers/net/ethernet/intel/ice/ice_flex_pipe.c:2047: warning: Function
> parameter or member 'type' not described in 'ice_get_open_tunnel_port'
> =


Sorry for late answer, I missed it. Thanks, will send corrected v2 soon.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
