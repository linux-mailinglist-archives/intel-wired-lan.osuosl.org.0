Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E30D039FC85
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Jun 2021 18:27:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 482BB402CB;
	Tue,  8 Jun 2021 16:27:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oumC6fgJU9RN; Tue,  8 Jun 2021 16:27:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 622554012E;
	Tue,  8 Jun 2021 16:27:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5EEE21BF94D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jun 2021 16:27:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4C9614046F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jun 2021 16:27:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZqmzFid98Hyr for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Jun 2021 16:27:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7A5534046E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jun 2021 16:27:06 +0000 (UTC)
IronPort-SDR: haAnn10sQOR9gk1khy208thqksEm6u1knjJBsliZ+Q8bgZI/qbre3YtL3Pws9YOBCLJ1ELxgeb
 2ieLq3/GSzAA==
X-IronPort-AV: E=McAfee;i="6200,9189,10009"; a="226229018"
X-IronPort-AV: E=Sophos;i="5.83,258,1616482800"; d="scan'208";a="226229018"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 09:27:06 -0700
IronPort-SDR: ZhGebTp/WXil4Tu27+rbE/Bp3LNUarHSatKhLpNCH5Lq1DZ2sUrWhNAd1Mm7RhclKBuyedDDoU
 wlxTLiUkwh4A==
X-IronPort-AV: E=Sophos;i="5.83,258,1616482800"; d="scan'208";a="440535655"
Received: from jbrandeb-mobl4.amr.corp.intel.com (HELO localhost)
 ([10.209.89.248])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 09:27:06 -0700
Date: Tue, 8 Jun 2021 09:27:05 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: <intel-wired-lan@lists.osuosl.org>
Message-ID: <20210608092705.00005761@intel.com>
In-Reply-To: <20210528014943.3036054-1-jesse.brandeburg@intel.com>
References: <20210528014943.3036054-1-jesse.brandeburg@intel.com>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ice: add tracepoints
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
Cc: Ben Shelton <benjamin.h.shelton@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Jesse Brandeburg wrote:

> This patch is modeled after one by Scott Peterson for i40e.

I found a little bug in the code, Tony do you want to correct it or
have me send a v3?

> +DECLARE_EVENT_CLASS(ice_tx_dim_template,
> +		    TP_PROTO(struct ice_q_vector *q_vector, struct dim *dim),
> +		    TP_ARGS(q_vector, dim),
> +		    TP_STRUCT__entry(__field(struct ice_q_vector *, q_vector)
> +				     __field(struct dim *, dim)
> +				     __string(devname, q_vector->tx.ring->netdev->name)),
> +
> +		    TP_fast_assign(__entry->q_vector = q_vector;
> +				   __entry->dim = dim;
> +				   __assign_str(devname, q_vector->tx.ring->netdev->name);),
> +
> +		    TP_printk("netdev: %s Tx-Q: %d dim-state: %d dim-profile: %d dim-tune: %d dim-st-right: %d dim-st-left: %d dim-tired: %d",
> +			      __get_str(devname),
> +			      __entry->q_vector->rx.ring->q_index,

should be:                                       tx.ring

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
