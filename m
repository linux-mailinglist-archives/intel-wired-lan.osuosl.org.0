Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AE047326A06
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Feb 2021 23:30:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 18AB46F9C7;
	Fri, 26 Feb 2021 22:30:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zrJ4fFy_KRa9; Fri, 26 Feb 2021 22:30:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D4CC26F99C;
	Fri, 26 Feb 2021 22:30:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EDAF91BF82C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Feb 2021 22:30:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D7C5B43433
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Feb 2021 22:30:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DlfmSDrqczer for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Feb 2021 22:30:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C3BCB43421
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Feb 2021 22:30:40 +0000 (UTC)
IronPort-SDR: Q4tYC8oMEe/kM3X90LYEw0i9ys08clfKJHWYqYs9Ws9XELfjxAfBXvF9F63BRoeZDosDFssYxo
 m07+JoafNTAQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9907"; a="250073365"
X-IronPort-AV: E=Sophos;i="5.81,209,1610438400"; d="scan'208";a="250073365"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2021 14:30:39 -0800
IronPort-SDR: rYrTUz2gi+ZCYEP2CYrKlMXHfTAmFK8H8OcJF9uzaZLLpce6yCRYZf/upyjKPP4zgBkcBbmNoh
 xJRu8EWrXaKg==
X-IronPort-AV: E=Sophos;i="5.81,209,1610438400"; d="scan'208";a="516660573"
Received: from jbrandeb-mobl4.amr.corp.intel.com (HELO localhost)
 ([10.213.184.154])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2021 14:30:38 -0800
Date: Fri, 26 Feb 2021 14:30:32 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Tom Seewald <tseewald@gmail.com>
Message-ID: <20210226143032.00005184@intel.com>
In-Reply-To: <20210222040005.20126-2-tseewald@gmail.com>
References: <20210222040005.20126-1-tseewald@gmail.com>
 <20210222040005.20126-2-tseewald@gmail.com>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net 2/2] igb: Fix duplicate include
 guard
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
Cc: Auke Kok <auke-jan.h.kok@intel.com>, Jeff Garzik <jeff@garzik.org>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tom Seewald wrote:

> The include guard "_E1000_HW_H_" is used by two separate header files in
> two different drivers (e1000/e1000_hw.h and igb/e1000_hw.h). Using the
> same include guard macro in more than one header file may cause
> unexpected behavior from the compiler. Fix this by renaming the
> duplicate guard in the igb driver.
> 
> Fixes: 9d5c824399de ("igb: PCI-Express 82575 Gigabit Ethernet driver")
> Signed-off-by: Tom Seewald <tseewald@gmail.com>

Change is simple and makes sense.

Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
