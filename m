Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 755F3A016FF
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Jan 2025 22:56:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 021D26088E;
	Sat,  4 Jan 2025 21:56:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cq4LYonRMS81; Sat,  4 Jan 2025 21:56:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0870A60877
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736027802;
	bh=rDyIGCWm381fnRVI8R/a4TzePA5+Ap7RWyjo5NA3noY=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sfMx0oqrUXIwK0e2UwEL9x1BcwTZNGnwB4+JAB/ju3BcMpMUtu0N13NJWBXvDBZxe
	 lvruNH6hrF3o7L5VWN20uGI43QhSqnMp8dJoOZ0pkotcdLNuN+Xa9vdG6xlAAeChN6
	 un79dUZRMaw2Zpu7+z2zVI4mdmDsPk8ZeiNW8E+2pjBEsPL2JbxNzOvUcELK+H5gJb
	 VBtdnHdJMgQtULOlAPZ3kt2whvsaD+2nD5F5cyAZYoDm75OHqFhIUKSVpOjEEsIMUZ
	 QkNcAqYZuHB2YB0TQX8LpTR4BJK1GAd6pl4R5cOsa4J+boatt9ktMOyjN+XU9KKd45
	 dwg0kSZZKYLLA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0870A60877;
	Sat,  4 Jan 2025 21:56:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 41B13F27
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jan 2025 21:56:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1648F81170
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jan 2025 21:56:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zuawxXyBW_Np for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Jan 2025 21:56:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1098:5b::1;
 helo=mx.treblig.org; envelope-from=dg@treblig.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E3F8481171
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E3F8481171
Received: from mx.treblig.org (mx.treblig.org [IPv6:2a00:1098:5b::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E3F8481171
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jan 2025 21:56:38 +0000 (UTC)
Received: from dg by mx.treblig.org with local (Exim 4.96)
 (envelope-from <dg@treblig.org>) id 1tUC89-008BP9-08;
 Sat, 04 Jan 2025 21:56:25 +0000
Date: Sat, 4 Jan 2025 21:56:24 +0000
From: "Dr. David Alan Gilbert" <linux@treblig.org>
To: Jakub Kicinski <kuba@kernel.org>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Message-ID: <Z3muiBPv30Dsp8m5@gallifrey>
References: <20250102174002.200538-1-linux@treblig.org>
 <20250104081532.3af26fa1@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
In-Reply-To: <20250104081532.3af26fa1@kernel.org>
X-Chocolate: 70 percent or better cocoa solids preferably
X-Operating-System: Linux/6.1.0-21-amd64 (x86_64)
X-Uptime: 21:53:58 up 241 days,  9:08,  1 user,  load average: 0.00, 0.02, 0.00
User-Agent: Mutt/2.2.12 (2023-09-09)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx; h=Content-Type:MIME-Version:Message-ID:Subject:From:Date:From
 :Subject; bh=rDyIGCWm381fnRVI8R/a4TzePA5+Ap7RWyjo5NA3noY=; b=hYyrzUIYbVjDL+Wj
 qSio0oVT9miCAs/URlnQ/VJ3ykY5RSXd+r45kwZBPDGyvwZRQns9ea5ax/O5QarPfv7AIJTA567kM
 xUoWdj6odJTr9gCWjA6I6hqUyqKgAXQ33AlhwmllP5lkAudt64rGFhEd8kL+VgIXZkT7Wdmia9hi7
 GNkisLlE1VhN49Nn8J6cVOnKj94/YLHK7CfJOHtx94lZFHL3c6MQkNEHIEu+t1SSUG3nE1yfEIXLR
 mnNiBXl9+wWLfT1OwoDHHmqSptX2J4hvBsa23e7f8j+s/1V5a6vCe5zOb0STZdGCUnTvMcLTE2Um2
 JpUIfmzSROi6pYBu/A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=treblig.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=treblig.org header.i=@treblig.org header.a=rsa-sha256
 header.s=bytemarkmx header.b=hYyrzUIY
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
> On Thu,  2 Jan 2025 17:40:02 +0000 linux@treblig.org wrote:
> > From: "Dr. David Alan Gilbert" <linux@treblig.org>
> > 
> > The const struct ixgbevf_hv_mbx_ops was added in 2016 as part of
> > commit c6d45171d706 ("ixgbevf: Support Windows hosts (Hyper-V)")
> > 
> > but has remained unused.
> > 
> > The functions it references are still referenced elsewhere.
> > 
> > Remove it.
> 

Hi Jakub,

> This one doesn't apply, reportedly.

Hmm, do you have a link to that report, or to which tree I should try
applying it to.

Dave

> -- 
> pw-bot: cr
-- 
 -----Open up your eyes, open up your mind, open up your code -------   
/ Dr. David Alan Gilbert    |       Running GNU/Linux       | Happy  \ 
\        dave @ treblig.org |                               | In Hex /
 \ _________________________|_____ http://www.treblig.org   |_______/
