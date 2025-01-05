Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E264A01961
	for <lists+intel-wired-lan@lfdr.de>; Sun,  5 Jan 2025 13:29:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DE37E40598;
	Sun,  5 Jan 2025 12:29:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hIAk9fhM8ped; Sun,  5 Jan 2025 12:29:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E3ACB40561
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736080189;
	bh=hJaegaA4URsS9dJNooiDBvKtyhjiY7wAcR6BnE5DN4Y=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=I5lxV+6ibslpjSNg7Q6EjdgY1pfStW5Z7n/r2Ng3bwjfF2iM/9NIXASZUickwa43D
	 VxFEJTVtvFmtb25MtC1riGZyOCDyqQrs62cl1pwtBMnT0VB2FuhjBLvBnuQk4yEi9n
	 NkGxRRtyU0mkMVyuFIxJQInw9WVuC7JNc2MVWXWe3i/+c9FqPX1MOoitjN+BywjPXG
	 +1jgTD7k/H6Op8ivveVbjkzQxjrcJTi1en+1Liwm0ScwLUlIuv4riXIaKxm/6F2h+z
	 77C8D/n0DE4fjiOCSlgSzDrEKUfEsFJ6q/YZ01EZ0lDz3YyuDQqjsOCEwfjfkFEDS2
	 vnrpMzASYRHMA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E3ACB40561;
	Sun,  5 Jan 2025 12:29:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2EB676B
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Jan 2025 12:29:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 12845600B8
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Jan 2025 12:29:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f9D91jnul463 for <intel-wired-lan@lists.osuosl.org>;
 Sun,  5 Jan 2025 12:29:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1098:5b::1;
 helo=mx.treblig.org; envelope-from=dg@treblig.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1BD226062B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1BD226062B
Received: from mx.treblig.org (mx.treblig.org [IPv6:2a00:1098:5b::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1BD226062B
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Jan 2025 12:29:45 +0000 (UTC)
Received: from dg by mx.treblig.org with local (Exim 4.96)
 (envelope-from <dg@treblig.org>) id 1tUPlE-008DUi-0O;
 Sun, 05 Jan 2025 12:29:40 +0000
Date: Sun, 5 Jan 2025 12:29:40 +0000
From: "Dr. David Alan Gilbert" <linux@treblig.org>
To: Jakub Kicinski <kuba@kernel.org>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Message-ID: <Z3p7NDKTrMpm0Y_-@gallifrey>
References: <20250102174002.200538-1-linux@treblig.org>
 <20250104081532.3af26fa1@kernel.org> <Z3muiBPv30Dsp8m5@gallifrey>
 <20250104165440.080a9c7b@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
In-Reply-To: <20250104165440.080a9c7b@kernel.org>
X-Chocolate: 70 percent or better cocoa solids preferably
X-Operating-System: Linux/6.1.0-21-amd64 (x86_64)
X-Uptime: 12:29:05 up 241 days, 23:43,  1 user,  load average: 0.00, 0.00, 0.00
User-Agent: Mutt/2.2.12 (2023-09-09)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx; h=Content-Type:MIME-Version:Message-ID:Subject:From:Date:From
 :Subject; bh=hJaegaA4URsS9dJNooiDBvKtyhjiY7wAcR6BnE5DN4Y=; b=RT38Wv/+pIhkwVsh
 TztEav7fSMMaGGEapV+WZLY09llb2RyHeaauQtQXaJO3Iqvt0LC70sb0LbGaljMuNaP0KGOllUqQx
 ItI+7jZIhybussrp3Yvo2Nc8OLrptPA/3eaDp/UmBxJiF+hgaJFdVigEsCN0aQ6aa2E30aKFgOBEz
 fLSTQXk6c6QPzRt+7zgVPvxh5c2IzgpRdwLIozzC3BSNt1vAmUxGl/V8SMPn6zSj87aYyZOzXbeDQ
 FifaaTMmkdZ8PDhsxAvq0EYdHoSpSdgkmHqp1J9X7vovFl2DTV+5yoQLljAelYLklaAJ9+XpsbngU
 O247T9IS7ScYGFO+LA==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=treblig.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=treblig.org header.i=@treblig.org header.a=rsa-sha256
 header.s=bytemarkmx header.b=RT38Wv/+
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
> $ wget 'https://lore.kernel.org/all/20250102174002.200538-1-linux@treblig.org/raw'
> Saving 'raw'
> $ git am raw
> Applying: ixgbevf: Remove unused ixgbevf_hv_mbx_ops
> error: patch failed: drivers/net/ethernet/intel/ixgbevf/ixgbevf.h:439
> error: drivers/net/ethernet/intel/ixgbevf/ixgbevf.h: patch does not apply
> Patch failed at 0001 ixgbevf: Remove unused ixgbevf_hv_mbx_ops

Just sent:
Subject: [PATCH net-next v2] ixgbevf: Remove unused ixgbevf_hv_mbx_ops
Message-ID: <20250105122847.27341-1-linux@treblig.org>

on top of a few hour old net-next.

Dave

-- 
 -----Open up your eyes, open up your mind, open up your code -------   
/ Dr. David Alan Gilbert    |       Running GNU/Linux       | Happy  \ 
\        dave @ treblig.org |                               | In Hex /
 \ _________________________|_____ http://www.treblig.org   |_______/
