Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 60CC79A6B30
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Oct 2024 15:57:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4EE6D6070F;
	Mon, 21 Oct 2024 13:57:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YKcwD3tvC7Qe; Mon, 21 Oct 2024 13:57:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9FF0060666
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729519030;
	bh=8zvqVxqxllexuUQr2xLZFQv0QlHmSs3CKh3BEQn7kGk=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KeHm1yRheGYpDU786vK1X9RMaJiCgCnQv0YdJxYAYK9QXyATpA6Ds/fLDgYS9w32W
	 n0yG3WqtYKi0B2l6QYuelCpxMlUvHqAwq1E+StEuykHi7xVU0OXcijIA9ek01LH5PP
	 6CKoY+ehOrz2jv/uXVRmR2DKEtBDiwQn150IJGJilahrpPowk+3OBx/ZE4Os/mZnEI
	 7/uv5qmOnMxqo7wU9YOvrJ9FuHbhMcTRpCK5T6zUA9Fb4A5czF0kBzL8lb2RYZQRLl
	 I3rTHvXQUGgS2KYt261D4gBqQVrmhyzn6t4b31BGukIy7m1h/pX0cWg27hm5BRsYFt
	 JzhxqqxhEW/fg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9FF0060666;
	Mon, 21 Oct 2024 13:57:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1C47771F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2024 13:57:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F254C60666
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2024 13:57:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0hy22a6Diw0L for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Oct 2024 13:57:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 60EAC605F9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 60EAC605F9
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 60EAC605F9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2024 13:57:08 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 7E6F75C04AF;
 Mon, 21 Oct 2024 13:57:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D1B7C4CEE5;
 Mon, 21 Oct 2024 13:57:05 +0000 (UTC)
Date: Mon, 21 Oct 2024 14:57:03 +0100
From: Simon Horman <horms@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com, marcin.szycik@intel.com
Message-ID: <20241021135703.GK402847@kernel.org>
References: <20241011070328.45874-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241011070328.45874-1-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1729519026;
 bh=ocsaoy6SWeiXZExB3xTvWnrst7hsXXBiL9gmodujsXw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=h19xc56z7lB2IH9Ubgecft+IP4+Ljvljpnd5smQs7hvGjo7+OeGJR2+W70xnlyvua
 J9jOcBrmTcpq8FOpBX3AK7bySWMDJKhZAAUOS1wzmkg3oytjO8ZE+cVLVcHXmTt643
 xtikDqNVZUmB2mFPefaoPU8euU7qqlO4gx6VQCgrhsPz8yr3uO/JQy8ct6nKH3iCpk
 Z4ynHU4ij9qQwgJiU9NMiyRJ4CAUhlBi6aehgsZj6sDiBpr0/VEY4JYya/IzYdC2We
 P4AFm7PHwbrEy5T9k/pWB1cE6qFFyjr7V3mSN61aHTxdCpX6anznER/7aHmcEY8Q6P
 8LojI1m8uyhBQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=h19xc56z
Subject: Re: [Intel-wired-lan] [iwl-next v1] ice: add recipe priority check
 in search
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

On Fri, Oct 11, 2024 at 09:03:28AM +0200, Michal Swiatkowski wrote:
> The new recipe should be added even if exactly the same recipe already
> exists with different priority.
> 
> Example use case is when the rule is being added from TC tool context.
> It should has the highest priority, but if the recipe already exists
> the rule will inherit it priority. It can lead to the situation when
> the rule added from TC tool has lower priority than expected.
> 
> The solution is to check the recipe priority when trying to find
> existing one.
> 
> Previous recipe is still useful. Example:
> RID 8 -> priority 4
> RID 10 -> priority 7
> 
> The difference is only in priority rest is let's say eth + mac +
> direction.
> 
> Adding ARP + MAC_A + RX on RID 8, forward to VF0_VSI
> After that IP + MAC_B + RX on RID 10 (from TC tool), forward to PF0
> 
> Both will work.
> 
> In case of adding ARP + MAC_A + RX on RID 8, forward to VF0_VSI
> ARP + MAC_A + RX on RID 10, forward to PF0.
> 
> Only second one will match, but this is expected.
> 
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

