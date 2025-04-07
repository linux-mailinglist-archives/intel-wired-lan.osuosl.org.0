Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BD8DBA7DB65
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Apr 2025 12:43:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6D30960B62;
	Mon,  7 Apr 2025 10:43:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5GgQi1Vrph8I; Mon,  7 Apr 2025 10:43:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D65E060B94
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744022637;
	bh=4ceSXdzlg+wf7Qjek+lwUPRttXP3p7NVZzSUTHbKNlI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=03XQa7e6gQ9VoiTrdxmi/DljbOBzRj+uM9TVYF51T0liY+jQO4zYZ+HftYLE0BBQW
	 5e3Q/1qQeFZsYQEL8r2xYMtt/gCDeMnbwUK5JJqPHaF6GI2SgZvTWRnoIt8if7YIoP
	 1RxFf0GYrs0Fj400j41/x1tZuLTYCg20AbAXQSDLgIyk0570SsvodExyitxrQKlp/a
	 gz1sYT94f0dfWmm/xziYnmTLXVJ3WJIE2+l6ojJjD7+lWsTXks15n6Dl0I9bhfZ45z
	 sCxUR3juQXxKki4R3l2Yf0vmOjVrYxaTUcBY1zjmGPmr3S/oSzbVYruqFF30Jm5UrS
	 rkhQXi3r29neQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D65E060B94;
	Mon,  7 Apr 2025 10:43:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 39F131F1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 10:43:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2084640F34
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 10:43:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UfkYytXKsTIH for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Apr 2025 10:43:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9289A404C9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9289A404C9
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9289A404C9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 10:43:55 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 9738861146;
 Mon,  7 Apr 2025 10:43:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A1109C4CEE7;
 Mon,  7 Apr 2025 10:43:52 +0000 (UTC)
Date: Mon, 7 Apr 2025 11:43:50 +0100
From: Simon Horman <horms@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20250407104350.GA395307@horms.kernel.org>
References: <20250404105421.1257835-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250404105421.1257835-1-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1744022633;
 bh=4x4zQCYCpZqtqGM5wUFA0JzjY0ON3VVjUMPDjFFK3xY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qAp2RN5LxCk229NUfGCTDbsIprhfErxieIb563jMUXhVDkCpJb7qwHQWwyIyoPrhH
 9HDpjlFyxRyTIRwMezGyTUKJTgiTOEJsAsHH60dsCzMlP7hmDdJv6mAgoSOBj4I5Bu
 m+EgAoerG8/qR+PrPyrc4Q7DHfA7KmtLpaku+fai601c7ccTpNWjMb3swvxOYvnOt5
 ytZuiTMsrSJN2Fd4WPSs5WcVPuHSoHEHxd05if85+WiLJUaPdAU/EwrQJLYBB2wLqD
 V4fLMcW70OuM2TzeH7XNAQH8yCQhoxvWt/LptLhTjq0rhF1SFDZa0PWfJyT2h4cmc4
 viQePP9bewgSw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=qAp2RN5L
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] idpf: fix potential memory
 leak on kcalloc() failure
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

On Fri, Apr 04, 2025 at 12:54:21PM +0200, Michal Swiatkowski wrote:
> In case of failing on rss_data->rss_key allocation the function is
> freeing vport without freeing earlier allocated q_vector_idxs. Fix it.
> 
> Move from freeing in error branch to goto scheme.
> 
> Fixes: 95af467d9a4e ("idpf: configure resources for RX queues")

Hi Michal,

WRT leaking q_vector_indxs, that allocation is not present at
the commit cited above, so I think the correct Fixes tag for
that problem is the following, where that allocation was added:

Fixes: d4d558718266 ("idpf: initialize interrupts and enable vport")

I do note that adapter->vport_config[idx] may be allocated but
not freed on error in idpf_vport_alloc(). But I assume that this
is not a leak as it will eventually be cleaned up by idpf_remove().

So the Fixes tag not withstanding this looks good to me.

Reviewed-by: Simon Horman <horms@kernel.org>

> Reviewed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Suggested-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

...
