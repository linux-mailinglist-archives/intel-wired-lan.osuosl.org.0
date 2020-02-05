Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 240001538AE
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Feb 2020 20:03:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CD90C20111;
	Wed,  5 Feb 2020 19:03:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o64ooQNAVesH; Wed,  5 Feb 2020 19:03:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 521E8207A6;
	Wed,  5 Feb 2020 19:03:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 712551BF5A4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2020 19:03:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 66EBB2047C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2020 19:03:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ENouGn0SQ00T for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Feb 2020 19:03:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by silver.osuosl.org (Postfix) with ESMTPS id 74A0A20111
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2020 19:03:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Feb 2020 11:03:50 -0800
X-IronPort-AV: E=Sophos;i="5.70,406,1574150400"; d="scan'208";a="235688252"
Received: from jbrandeb-desk4.amr.corp.intel.com (HELO localhost)
 ([10.166.241.50])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Feb 2020 11:03:49 -0800
Date: Wed, 5 Feb 2020 11:03:49 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Sasha Neftin <sasha.neftin@intel.com>
Message-ID: <20200205110242.000060ec@intel.com>
In-Reply-To: <20200205123115.44103-1-sasha.neftin@intel.com>
References: <20200205123115.44103-1-sasha.neftin@intel.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Complete to commit Add
 support for TSO
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 5 Feb 2020 14:31:15 +0200 Sasha wrote:
> commit f38b782dccab ("igc: Add support for TSO")

is that a Fixes tag?

> Add option to setting transmit command (TUCMD) of the context
> descriptor based on skb_shinfo gso_type and SKB_GSO_UDP_L4 flag.

You said what you did but not why.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
