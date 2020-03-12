Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 29829183A7E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Mar 2020 21:19:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CA2448535D;
	Thu, 12 Mar 2020 20:19:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LK_2ABpIVg94; Thu, 12 Mar 2020 20:19:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3955385319;
	Thu, 12 Mar 2020 20:19:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 447041BF3EA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2020 20:19:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4194B885D9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2020 20:19:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M+AnOLlgHOTe for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Mar 2020 20:19:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D7055885CB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2020 20:19:00 +0000 (UTC)
Received: from kicinski-fedora-PC1C0HJN (unknown [163.114.132.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7B66B206E2;
 Thu, 12 Mar 2020 20:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584044340;
 bh=sEeiMhytXoJ+Cea8ex62NmVe9sUIvO+el6K+51FJPPM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ZCObCAD0h14L4HuMXPwLj1Z5mwQgU66tRLy06qh3JzZ2EuOVO9Y3+nzzER0TWUk3R
 n4MUJAQZMJZurS4FhDMA7vN3Vg/5cBAGZZyxh14UnQZUli6989zEWM2PcMr3faboPA
 UHjs7n095IXTCGr3JtTe6KOGX8dxgSpsmmgg9JBg=
Date: Thu, 12 Mar 2020 13:18:59 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <20200312131859.49068276@kicinski-fedora-PC1C0HJN>
In-Reply-To: <20200312015818.1007882-10-jacob.e.keller@intel.com>
References: <20200312015818.1007882-1-jacob.e.keller@intel.com>
 <20200312015818.1007882-10-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v3 9/9] ice: add board identifier info
 to devlink .info_get
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
Cc: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 11 Mar 2020 18:58:18 -0700 Jacob Keller wrote:
> Export a unique board identifier using "board.id" for devlink's
> .info_get command.
> 
> Obtain this by reading the NVM for the PBA identification string.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>

Acked-by: Jakub Kicinski <kuba@kernel.org>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
