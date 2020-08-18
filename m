Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E773B249035
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Aug 2020 23:37:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A13CC87A9C;
	Tue, 18 Aug 2020 21:37:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2WCCN0qt8J2x; Tue, 18 Aug 2020 21:37:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 130DA87A6B;
	Tue, 18 Aug 2020 21:37:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 837861BF973
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Aug 2020 21:37:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7EDA785B18
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Aug 2020 21:37:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rPqo_XgP2C4D for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Aug 2020 21:37:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3942C85B04
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Aug 2020 21:37:06 +0000 (UTC)
IronPort-SDR: SUn/iJ9g0cWdlR0cMTg5ijAHXcmf1xiXlERqi4MmNMUgR/RNFBWdDpBz3+9xeD4LpOqwIYZTxR
 rbd5d1c1maug==
X-IronPort-AV: E=McAfee;i="6000,8403,9717"; a="142828438"
X-IronPort-AV: E=Sophos;i="5.76,328,1592895600"; d="scan'208";a="142828438"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2020 14:37:04 -0700
IronPort-SDR: PN4ruum4/TbLiKDUNjXukv3EJacHMw6vY28PJYBGB2S+VfjnleHOoWIHzCRLCB2eRENUm5CElx
 55SWF3Gxu8cQ==
X-IronPort-AV: E=Sophos;i="5.76,328,1592895600"; d="scan'208";a="320240512"
Received: from jbrandeb-mobl3.amr.corp.intel.com (HELO localhost)
 ([10.212.158.55])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2020 14:37:03 -0700
Date: Tue, 18 Aug 2020 14:37:02 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20200818143702.00002850@intel.com>
In-Reply-To: <20200817231231.2971207-2-vinicius.gomes@intel.com>
References: <20200817231231.2971207-1-vinicius.gomes@intel.com>
 <20200817231231.2971207-2-vinicius.gomes@intel.com>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 2/2] igc: Fix not considering the TX
 delay for timestamps
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
Cc: andre.guedes@intel.com, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Vinicius Costa Gomes wrote:

> When timestamping a packet there's a delay between the start of the
> packet and the point where the hardware actually captures the
> timestamp. This difference needs to be considered if we want accurate
> timestamps.
> 
> This was done on the RX side, but not on the TX side.
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>

Please see my responses to the other patch.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
