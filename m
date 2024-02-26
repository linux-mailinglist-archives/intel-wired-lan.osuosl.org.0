Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 47ABB8676B3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Feb 2024 14:35:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 541EB80F21;
	Mon, 26 Feb 2024 13:34:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sj-RAJNVbXbo; Mon, 26 Feb 2024 13:34:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A48FC80EB2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708954498;
	bh=pJv6HUIQ/rxvZSCx1QTlJTH65UNzVJLv4JEDmygcxx0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=M/Askr2he45bg52q4fAq0yDXlacjsAtoFTgoVGqI+IWkCTMa+z8Xl/VuwT4IneWug
	 Fuy0o70sP6qzEqp759Cyj4NmOfthrKLFPdaWGf99wyU12M0Iui2v7CQI4tvi0i96jw
	 +f3H4DsoFBmW06+4jCnmtWFbFyZ58s7z2AZzS8eGIm6IAAyFooGHZw9JdYJ7Z44pVK
	 fJuk0Xlya21L4KA5MiVg9xR5kVDKUQVjaBi1lXBWZoGy75y03rVEVcz8wJ68hSqkuH
	 RNuzugyUt8fEUCTV1FqYrg83fItKB/4jttjn0AXTAhC0FUChHQePLWempuNdpX4qAS
	 DWTowS/CQs4sw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A48FC80EB2;
	Mon, 26 Feb 2024 13:34:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E37621BF31C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 13:34:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DBDE940806
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 13:34:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DzlAbq64sVBf for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Feb 2024 13:34:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 256C240802
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 256C240802
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 256C240802
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 13:34:56 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 636C9611B5;
 Mon, 26 Feb 2024 13:34:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2B4EBC433C7;
 Mon, 26 Feb 2024 13:34:51 +0000 (UTC)
Date: Mon, 26 Feb 2024 13:34:48 +0000
From: Simon Horman <horms@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <20240226133448.GD13129@kernel.org>
References: <20240222123956.2393-1-michal.swiatkowski@linux.intel.com>
 <20240222123956.2393-2-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240222123956.2393-2-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1708954495;
 bh=NNQsaKzpuPTzXVbaGA8OwxNsXErOBzvA1/tgnbVup9c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NT1geo/PMk7ZbU4Pf7W4ktRJ5SauGPSC6TDDF48jorGlMiJLT3ReCdX5CXWiUEvWn
 25343qd64CmECHroGpTeadbwQPOLw0vPBhfKWi/wUhgVRrPgeDP/JBWorXpp/rQVk5
 qSTNWuaKVqmovkRvZEefb54x5fslXmagrmOHG4kJ6fWU20n+UhO/2HANc+XICX5jV1
 cpqWjP3OBfJo/zEKeSKDZzjx85BXEZbugofsYaxHrgX83/MVwceKRd5eb+LFJK416T
 6XeLMsgkiiTMURhaPLQ+Wlxu+RMA54zsY9tIiHdWqiyT8qBqqYFUgG/4GVj4B1I2+e
 0iC9129MkGHzQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=NT1geo/P
Subject: Re: [Intel-wired-lan] [iwl-next v2 1/2] ice: tc: check src_vsi in
 case of traffic from VF
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
Cc: pmenzel@molgen.mpg.de, wojciech.drewek@intel.com, marcin.szycik@intel.com,
 netdev@vger.kernel.org, Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 intel-wired-lan@lists.osuosl.org, sridhar.samudrala@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Feb 22, 2024 at 01:39:55PM +0100, Michal Swiatkowski wrote:
> In case of traffic going from the VF (so ingress for port representor)
> source VSI should be consider during packet classification. It is
> needed for hardware to not match packets from different ports with
> filters added on other port.
> 
> It is only for "from VF" traffic, because other traffic direction
> doesn't have source VSI.
> 
> Set correct ::src_vsi in rule_info to pass it to the hardware filter.
> 
> For example this rule should drop only ipv4 packets from eth10, not from
> the others VF PRs. It is needed to check source VSI in this case.
> $tc filter add dev eth10 ingress protocol ip flower skip_sw action drop
> 
> Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Hi Michal,

Should this be treated as a fix: have a Fixes tag; be targeted at 'iwl'?

That notwithstanding, this look good to me.

Reviewed-by: Simon Horman <horms@kernel.org>

...
