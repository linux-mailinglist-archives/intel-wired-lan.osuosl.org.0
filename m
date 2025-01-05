Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 56587A017AD
	for <lists+intel-wired-lan@lfdr.de>; Sun,  5 Jan 2025 02:16:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 301F4406BE;
	Sun,  5 Jan 2025 01:16:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K-VJVKLEzQj8; Sun,  5 Jan 2025 01:16:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0BEAF406AA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736039808;
	bh=/PXMx0aYm3p77AOabnQSJYxJRLSAjD5vIBHkByO2LPE=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6wVniv9sgYfuZSGFCj23G0I3xNPgnyLFWRwlGU5hobLY2f7nSTuznkY11uWApbNyO
	 EmEIa1tsDGdO+I5WmJ34zjGrPzN5/vZBo54YJnDfX9A6a6ZBZaOkB1Ix9Kxx4ggNnn
	 kvQwe33aq7Pndx45nsfoEraJcncLm0VvnnjyNMGeshz2RdFK2/eik59h6tgbtQOSFr
	 hssnUGzC9drO6BRYINr9uLdvm2DkYUn1chOWaiGhXducIaG+lLiJTEkbhSkCUd0iod
	 kxy0V29lVTkQKYDzCk3Bhg09PuNQ6YQQXVf8CbYB3gqJ0+3qwoLkVsfXCgl4J9F1sa
	 YkfzqRNAH4Hyw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0BEAF406AA;
	Sun,  5 Jan 2025 01:16:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 39A9FE0F
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Jan 2025 01:16:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 315B4400AC
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Jan 2025 01:16:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eKoiapO-0XMf for <intel-wired-lan@lists.osuosl.org>;
 Sun,  5 Jan 2025 01:16:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1098:5b::1;
 helo=mx.treblig.org; envelope-from=dg@treblig.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A8019400DC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A8019400DC
Received: from mx.treblig.org (mx.treblig.org [IPv6:2a00:1098:5b::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A8019400DC
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Jan 2025 01:16:43 +0000 (UTC)
Received: from dg by mx.treblig.org with local (Exim 4.96)
 (envelope-from <dg@treblig.org>) id 1tUFFn-008Bvs-2t;
 Sun, 05 Jan 2025 01:16:31 +0000
Date: Sun, 5 Jan 2025 01:16:31 +0000
From: "Dr. David Alan Gilbert" <linux@treblig.org>
To: Jakub Kicinski <kuba@kernel.org>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Message-ID: <Z3ndbw-GcldRgilg@gallifrey>
References: <20250102174002.200538-1-linux@treblig.org>
 <20250104081532.3af26fa1@kernel.org> <Z3muiBPv30Dsp8m5@gallifrey>
 <20250104165440.080a9c7b@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
In-Reply-To: <20250104165440.080a9c7b@kernel.org>
X-Chocolate: 70 percent or better cocoa solids preferably
X-Operating-System: Linux/6.1.0-21-amd64 (x86_64)
X-Uptime: 01:15:08 up 241 days, 12:29,  1 user,  load average: 0.00, 0.00, 0.00
User-Agent: Mutt/2.2.12 (2023-09-09)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx; h=Content-Type:MIME-Version:Message-ID:Subject:From:Date:From
 :Subject; bh=/PXMx0aYm3p77AOabnQSJYxJRLSAjD5vIBHkByO2LPE=; b=QhwkUx6HBWLdPZiN
 NJQpIbL3Y5K800+KUDVsQ6/0vN9x2SpA67PhsVrGt01RwFpEc48Jobbc5q7X4WmlRT6rTA5u3pc/h
 Zv+uUO3SmNCrfEIFiwA34S/QvIHG9+MaDjzxPBKIoTdrtEsO6JYDrYfGTtfAKqIy/e4fJui1sfVm9
 6IeUtyYVelUU3Mwv9aLSa2c6hEW33PR0btxQv+6I6exqbKQRA2pPlG9WThFsZISxfZKizCy+MTZ1Q
 z9CIqnup2mUBY6wxOqcQwS7XFsygvZwUKFBNAFp7HqMSwHGI7bmi/R1xK09KgmdImTuQ3b7Dsos5d
 H0iWMZXPvWNi0udu5w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=treblig.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=treblig.org header.i=@treblig.org header.a=rsa-sha256
 header.s=bytemarkmx header.b=QhwkUx6H
Subject: Re: [Intel-wired-lan] [PATCH net-next] ixgbevf: Remove unused
 ixgbevf_hv_mbx_ops
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

* Jakub Kicinski (kuba@kernel.org) wrote:
> On Sat, 4 Jan 2025 21:56:24 +0000 Dr. David Alan Gilbert wrote:
> > > This one doesn't apply, reportedly.  
> > 
> > Hmm, do you have a link to that report, or to which tree I should try
> > applying it to.
> 
> net-next, the tree in the subject prefix:
> 
> $ git checkout net-next/main

Thanks

> $ wget 'https://lore.kernel.org/all/20250102174002.200538-1-linux@treblig.org/raw'
> Saving 'raw'
> $ git am raw
> Applying: ixgbevf: Remove unused ixgbevf_hv_mbx_ops
> error: patch failed: drivers/net/ethernet/intel/ixgbevf/ixgbevf.h:439
> error: drivers/net/ethernet/intel/ixgbevf/ixgbevf.h: patch does not apply
> Patch failed at 0001 ixgbevf: Remove unused ixgbevf_hv_mbx_ops

Oh I see, it's the e610 patch that crept in and just changed the context
and moved the lines down a bit; not built it yet, but I'll cut a new version.

See below.

Dave

diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h b/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
index 9b37f354d78c..4384e892f967 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
@@ -443,7 +443,6 @@ extern const struct ixgbevf_info ixgbevf_X540_vf_hv_info;
 extern const struct ixgbevf_info ixgbevf_X550_vf_hv_info;
 extern const struct ixgbevf_info ixgbevf_X550EM_x_vf_hv_info;
 extern const struct ixgbevf_info ixgbevf_e610_vf_hv_info;
-extern const struct ixgbe_mbx_operations ixgbevf_hv_mbx_ops;
 
 /* needed by ethtool.c */
 extern const char ixgbevf_driver_name[];

vs

diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h b/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
index 130cb868774c..a43cb500274e 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
@@ -439,7 +439,6 @@ extern const struct ixgbevf_info ixgbevf_82599_vf_hv_info;
 extern const struct ixgbevf_info ixgbevf_X540_vf_hv_info;
 extern const struct ixgbevf_info ixgbevf_X550_vf_hv_info;
 extern const struct ixgbevf_info ixgbevf_X550EM_x_vf_hv_info;
-extern const struct ixgbe_mbx_operations ixgbevf_hv_mbx_ops;
 
 /* needed by ethtool.c */
 extern const char ixgbevf_driver_name[];

-- 
 -----Open up your eyes, open up your mind, open up your code -------   
/ Dr. David Alan Gilbert    |       Running GNU/Linux       | Happy  \ 
\        dave @ treblig.org |                               | In Hex /
 \ _________________________|_____ http://www.treblig.org   |_______/
