Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 29EF18A6989
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Apr 2024 13:22:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1A8BD6084C;
	Tue, 16 Apr 2024 11:22:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8Hmrn54qitVc; Tue, 16 Apr 2024 11:22:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 692DB60781
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713266563;
	bh=dL7hSrjU+MNAbb6shME/wtBb2UpMjS05OhEFRwqfjIU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BCNwlucLN4OYS9ga+aOHGl4W4Y2Cz075xQLQof9FjXR3UXNDYRdlv1EHTyW4oboqg
	 dEjd52Fy3TKxizla0ZEZDv134vz1kjBRT4gtYwYHCc181SAyX+KJu3gLP1QcrSc+Ah
	 XVv8CCbRqeIbwWjjrJrHjzPhNBhoNhlo0sJkc1PV9ZwxvTeTJwmXv7ytoGN5tPwiZq
	 p+rIXLqARGGhbC4fUhgB1C5oU8PD0JUoDa3E+r0fTd9oE6k+L3mAgwopeI0IYbf1Sq
	 /NHrf7ZrDdoQtr1d8D7f8NYWbwxosYkUXzKZlEohsH1KvmDZc14Np1Dhx/jmuZYDB+
	 AkzkJZlEEMk4A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 692DB60781;
	Tue, 16 Apr 2024 11:22:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 568BF1BF3AE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 11:22:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 412C440120
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 11:22:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iQ5csDJ4EtfG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Apr 2024 11:22:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3F74B4006D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3F74B4006D
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3F74B4006D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 11:22:40 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 397CFCE01B6;
 Tue, 16 Apr 2024 11:22:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF64EC113CE;
 Tue, 16 Apr 2024 11:22:33 +0000 (UTC)
Date: Tue, 16 Apr 2024 12:22:31 +0100
From: Simon Horman <horms@kernel.org>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <20240416112231.GL2320920@kernel.org>
References: <20240415084907.613777-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240415084907.613777-1-marcin.szycik@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1713266555;
 bh=buAkJOJzt+8xTKcpzoowXvt/D0os9Lg49hZuBSgdhoQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Dq5V+jY7yI/6GSaQv6dvec7hYEc2h0doxm/nJZ4dOKXEls9qW6wQ5H/ztqKBmLiOE
 tvWR8iwT9pCQXb9xYGF/j5HbjG7pPJKEG1I8iqtcNAVlondkYLBqnVIaSLhybQrK/3
 jtYEGdcsDoCCrIQh7k4a4XRVrfnla7gcXswYGc0CPcvRrxUxLVRpjlXSsLqRS4mUfA
 BFa5MIRs582qeNg73T8LBXMzYDzVC5Bm1+FhBP/NIdpKHdzLFcbydRnNFE+x/BOqOZ
 A2BdmSxEBRCFCx2fCsFYpMCQwlhoctjeoeZJvlxENdL1FqduCw79k52kIWZCWSw4Mx
 UniLEvVNnWLvQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Dq5V+jY7
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: Deduplicate tc action
 setup
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
Cc: netdev@vger.kernel.org, Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 intel-wired-lan@lists.osuosl.org, andrii.staikov@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Apr 15, 2024 at 10:49:07AM +0200, Marcin Szycik wrote:
> ice_tc_setup_redirect_action() and ice_tc_setup_mirror_action() are almost
> identical, except for setting filter action. Reduce them to one function
> with an extra param, which handles both cases.
> 
> Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_tc_lib.c | 56 ++++++---------------
>  1 file changed, 15 insertions(+), 41 deletions(-)

Less is more :)

Reviewed-by: Simon Horman <horms@kernel.org>

