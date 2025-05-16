Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C67B9AB9927
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 May 2025 11:44:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 802B2417B0;
	Fri, 16 May 2025 09:44:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eLLrce6qrnYD; Fri, 16 May 2025 09:44:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0040E41575
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747388693;
	bh=zeDVGallpyx86MVPYW2oyrxQ4AA6H8+Id3X11NOAxzw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PSzXoGYUp5nP40XgGkQbjVoFdZS7WM0fHKY/5h7n3/cYYZRrhs4YnsHJm9AlBJ0Wc
	 /uWFLN/OZk1+A8+Iu+NW6BBOlPPrJvpKmPI/lmKmJgNgZWD0Vz1YObzu7QGUJofWpX
	 lJl/g33ot8K3oJgE4BggjNqfkMmu/CWe5xOaYkIoxX33Eh7B74uvBW/E3pr0ctaXhJ
	 HiCv+I8Hf0jCsfdb+S8T0nAqA22cWJka+Boj5jk+WZ3qMW3JtSjjP/yYD4O5K/24GZ
	 ZD2uhWp+28VFaSMH/YJuLXOmwJ7m2qIKhEM8q9PV8qxe2GopT4LZt7+1WQw4uT4Lqt
	 37Am6iB41bReg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0040E41575;
	Fri, 16 May 2025 09:44:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 262531AB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 09:44:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 231834224A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 09:44:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HyKwm-V59Wkj for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 May 2025 09:44:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 993CC42210
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 993CC42210
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 993CC42210
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 09:44:50 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 5DAAF49E95;
 Fri, 16 May 2025 09:44:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A009EC4CEE4;
 Fri, 16 May 2025 09:44:47 +0000 (UTC)
Date: Fri, 16 May 2025 10:44:45 +0100
From: Simon Horman <horms@kernel.org>
To: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Chwee-Lin Choong <chwee.lin.choong@intel.com>
Message-ID: <20250516094445.GL1898636@horms.kernel.org>
References: <20250514042945.2685273-1-faizal.abdul.rahim@linux.intel.com>
 <20250514042945.2685273-5-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250514042945.2685273-5-faizal.abdul.rahim@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1747388690;
 bh=NgSUy9/TUIWcSc5wRvHR2evt/6x18KOmHbwGmpmLoD0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IbioaSo5jdwYLplqu4qjleDpg7E3MRGdBCFcOZCA1NAgPou9Z9VFkUijLpN6mdwU2
 aiilv3a8Eb96BbiSiPsJp8ehkhIPXS0JVTRlopijJuhJCz4SCQYf+P7ToBRkuYn2Gn
 kyDZtN4UAPcb3txZLn7laY1bN8cHh3H7aIPQ0RlREFXP7cXvlAgLovlMI+M9pmH9Nw
 VMJYvJa3TdiFngC6yGxVwJyyZpC5b257KQ52zyt9Uly69UavCUCWWIR4g8oG5K+yyk
 6gtAtKYpvCJU33WoGpsIr1d9YU8KG/AW8LKrW3PSFCme21/PX99QGJUnUqSOZ/YHDF
 8DqK3J2YdYxPA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=IbioaSo5
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 4/8] igc: assign highest
 TX queue number as highest priority in mqprio
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

On Wed, May 14, 2025 at 12:29:41AM -0400, Faizal Rahim wrote:
> Previously, TX arbitration prioritized queues based on the TC they were
> mapped to. A queue mapped to TC 3 had higher priority than one mapped to
> TC 0.
> 
> To improve code reuse for upcoming patches and align with typical NIC
> behavior, this patch updates the logic to prioritize higher queue numbers
> when mqprio is used. As a result, queue 0 becomes the lowest priority and
> queue 3 becomes the highest.
> 
> This patch also introduces igc_tsn_is_tc_to_queue_priority_ordered() to
> preserve the original TC-based priority rule and reject configurations
> where a higher TC maps to a lower queue offset.
> 
> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

