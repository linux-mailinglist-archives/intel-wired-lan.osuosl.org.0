Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5571A769CA3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 31 Jul 2023 18:34:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E5B71409E6;
	Mon, 31 Jul 2023 16:34:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E5B71409E6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690821248;
	bh=c+zIW3b4q3pY9WA8MuCBaNm4RFAdFgETp2nra7MBD6M=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6LDqmj8tteEzPRXmYwgyCSXMumW7Pn1rPV2/2EdTzPwbqn9gspDL9iDIc2fHXti3Y
	 U5tHxD+/CirPqjQ11Mi1tvjI103520jzteAAwk4DtK42dGw7gaUlXRBQlGboS7QmMI
	 pIEpI7omdAPdeWbhcxyqzl3zHWw2TV6HBrr2VDCUY5x9oxtFS3NJxVJ+p1osGQ5Ltn
	 6Y7Kj4Z27wNc/6Fn9iKS3Tnja3JD8tzTiz4vUgDcmtmySBms0xnNK8+YOh9QgHO9B7
	 Fucbal5qBFrJY/9gHEZQSRrJefZgEpDjvq0rJ8/0zdTyNk6kIAHvLXEuOSx5L2iCjP
	 Qoul9hMTIEYQQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cJsPs-8s29Lz; Mon, 31 Jul 2023 16:34:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4962340BB0;
	Mon, 31 Jul 2023 16:34:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4962340BB0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1BD941BF313
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jul 2023 16:31:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E41A7409E6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jul 2023 16:31:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E41A7409E6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zggmy4Y9fVEA for <intel-wired-lan@lists.osuosl.org>;
 Mon, 31 Jul 2023 16:31:03 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F10D040135
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jul 2023 16:31:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F10D040135
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 27364611BF;
 Mon, 31 Jul 2023 16:31:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6EBDAC433C7;
 Mon, 31 Jul 2023 16:31:00 +0000 (UTC)
Date: Mon, 31 Jul 2023 18:30:58 +0200
From: Simon Horman <horms@kernel.org>
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Message-ID: <ZMfhwh03CYvRuybr@kernel.org>
References: <20230731135218.10051-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230731135218.10051-1-jedrzej.jagielski@intel.com>
X-Mailman-Approved-At: Mon, 31 Jul 2023 16:34:01 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1690821061;
 bh=KAsyPQEGy6Z/bBlXO17Vfwfry3I9OYRD8CJVoXJ2qqo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fzgn2zD/rBDgFeT/2Ydh7vlAuqNqBsm34ECdurZaWHp5OTFRj3uN/bB0dzE95eKzG
 3j3vwGiAe8IyCcFF0tHwbzRE/yiptf5T/GHVNPBYI1WZ28nGvwGPb3zL1XMLt8+qkK
 0SmgqhekCPQEOTs6EHOxOf7s32cOlFOSMHclmWzufGLH66LDNrvcctkst6MRkARCtj
 zrCBF8YCSOisDhEavXJKMXp5kNAg+CvXpaxXFV8zZKn5c/HVDRwG3bWRUvVL0k5/UD
 6pnXyiWYpTbsWolDYWAzMNWuIChwguu7fVq+OCsbygZCEClE1HQtOvEwuD8h8h3Klj
 EPTrDxlrcb0UA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=fzgn2zD/
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] i40e: Clear stats after
 deleting tc
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
Cc: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jul 31, 2023 at 03:52:18PM +0200, Jedrzej Jagielski wrote:
> From: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
> 
> There was an issue with ethtool stats that have not been cleared after tc
> had been deleted. Stats printed by ethtool -S remained the same despite
> qdisc had been removed, what is an unexpected behavior.
> Stats should be reset once the qdisc is removed.
> 
> Fix this by resetting stats after deleting tc by calling
> i40e_vsi_reset_stats() function after destroying qdisc.
> 
> Steps to reproduce:
> 
> 1) Add ingress rule
> tc qdisc add dev <ethX> ingress
> 
> 2) Create qdisc and filter
> tc qdisc add dev <ethX> root mqprio num_tc 4 map 0 0 0 0 1 2 2 3 queues 2@0 2@2 1@4 1@5 hw 1 mode channel
> tc filter add dev <ethX> protocol ip parent ffff: prio 3 flower dst_ip <ip> ip_proto tcp dst_port 8300 skip_sw hw_tc 2
> 
> 3) Run iperf between client and SUT
> iperf3 -s -p 8300
> iperf3 -c <ip> -p 8300
> 
> 4) Check the ethtool stats
> ethtool -S <ethX> | grep packets | column
> 
> 5) Delete filter and qdisc
> tc filter del dev <ethX> parent ffff:
> tc qdisc del dev <ethX> root
> 
> 6) Check the ethtool stats and see that they didn't change
> ethtool -S <ethX> | grep packets | column
> 
> Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
