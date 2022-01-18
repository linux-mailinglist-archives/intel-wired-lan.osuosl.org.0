Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9145492970
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jan 2022 16:12:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 612044052E;
	Tue, 18 Jan 2022 15:12:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PGvXJ-a6LZm4; Tue, 18 Jan 2022 15:12:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1A88240253;
	Tue, 18 Jan 2022 15:12:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D92FD1BF263
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jan 2022 15:12:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C66BA81420
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jan 2022 15:12:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KDrlWTTbeLKk for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Jan 2022 15:12:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 44747813F8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jan 2022 15:12:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642518751; x=1674054751;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DDC9f7GVmBkxRMWu5nIgtv96tcYifxzkFiPFPtaLYRs=;
 b=QS5AsoZqgd0c+xnqA46FGOYyupbB38S47IJbHnVuGIxo8B9e6MYDPiiX
 BOJyDH2vOPf7dinCbC308V/jQREluzwknqoEeoTOVuLevExknf+HrJDRy
 iO6lnLqHxF/4ICMbvxK4Lbm4NxK2XrofoYkyiE/MsqfP103wbuLFP2QTi
 B0inL7vXP/Gu//DUOZKWuFHQBNt9HhGs5hdFMjLwTNoXSeuHu4X+ZrdIV
 THGj1PlwqS2Yj8W0EFDul/nKcpQ5DQSqOIAz8FUheDUdRfHoKkmjlNqXW
 VOInVpO9LtQvCnLQoUy3Uf0q3OUcAbwI92IH0kiATbtdCMOS91tQhI+JO Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10230"; a="244631515"
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="244631515"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 07:12:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="477007554"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga006.jf.intel.com with ESMTP; 18 Jan 2022 07:12:29 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 20IFCSXH019875; Tue, 18 Jan 2022 15:12:28 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@intel.com>
Date: Tue, 18 Jan 2022 16:10:59 +0100
Message-Id: <20220118151059.25721-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220116090142.2934-1-martyna.szapar-mudlaw@intel.com>
References: <20220116090142.2934-1-martyna.szapar-mudlaw@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Add support for inner
 etype in switchdev
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

From: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@intel.com>
Date: Sun, 16 Jan 2022 10:01:43 +0100

> Enable support for adding TC rules that filter on the inner
> EtherType field of tunneled packet headers.
> 
> Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@intel.com>

Reviewed-by: Alexander Lobakin <alexandr.lobakin@intel.com>

> ---
>  .../ethernet/intel/ice/ice_protocol_type.h    |   2 +
>  drivers/net/ethernet/intel/ice/ice_switch.c   | 272 +++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_tc_lib.c   |  15 +-
>  3 files changed, 277 insertions(+), 12 deletions(-)

--- 8< ---

> -- 
> 2.31.1

Thanks!
Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
