Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E73B7AD6414
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Jun 2025 01:55:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B715C40942;
	Wed, 11 Jun 2025 23:55:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DcpXlGBCtAuF; Wed, 11 Jun 2025 23:55:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 44B7C4089D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749686107;
	bh=J5AATzW4i19m2pycSyE81SN2sQy9HPPkCczGqXH0Opk=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BMEBL1H/0kn3tATObfwpl52IhN9daYi3JI6WyTy2Xoj3U1YW7ZaXPBn3To7WRpORe
	 9UDoAFbnpolddIt/sYHuQXaq9Zg41vrz5p0g57LuSlDR/wfoNtrRbOODhCHkLmY84g
	 Qbis3aI0FhmgxKEBPXV9ytRGF9/4Pp1tOmWg88scVH3i5hNz2eBUrz7L2a8k4b1TFx
	 k2457rh+HErbAyeSWAjsSpN4RIRzGGunuqi3iS1ZeQZS2G/vOBU9n7YmhyCxjwkqXK
	 cu3+i7RZZjmnQ5H6axS0AJ3kAler3hQT0YQaQev9APwWdQx3UXmhymPEFYmtz9pge1
	 rYPUhDgNKRGGA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 44B7C4089D;
	Wed, 11 Jun 2025 23:55:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8FD741F2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jun 2025 23:55:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 767856067C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jun 2025 23:55:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nMEzcb4Opgsc for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Jun 2025 23:55:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0116D60659
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0116D60659
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0116D60659
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jun 2025 23:55:04 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id C7A94629E4;
 Wed, 11 Jun 2025 23:55:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E28D5C4CEE3;
 Wed, 11 Jun 2025 23:55:01 +0000 (UTC)
Date: Wed, 11 Jun 2025 16:55:01 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Cc: donald.hunter@gmail.com, davem@davemloft.net, edumazet@google.com,
 pabeni@redhat.com, horms@kernel.org, vadim.fedorenko@linux.dev,
 jiri@resnulli.us, anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, aleksandr.loktionov@intel.com,
 milena.olech@intel.com, corbet@lwn.net, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-doc@vger.kernel.org
Message-ID: <20250611165501.6c3730f4@kernel.org>
In-Reply-To: <20250610055338.1679463-1-arkadiusz.kubalewski@intel.com>
References: <20250610055338.1679463-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1749686102;
 bh=/QnapWZ6hd72QNEXGjdcEj4tgxV5UvbLT9znPYkUj4Y=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=OP6K2m0oGh7nHe0g/GuFm/j06JQkdoukX0SLlzw2+CXLfpYA2NmJ6+LAg19vRaw2C
 o5Cz5P6QOt41qXkMh1qYvfMMPXXONJKM8JUaKDLOZd+NZt4YGgD8y/pqQGliF0kxmX
 uR9i8fQysc956h5QAkQN7xGkOwFsGno6n86NtvHzK5EEGdejxyplBtIJSOTIK0Xfwj
 MQBPfZlC6l+xY5uHTf9my67MS6RgnL+IBfZNuqoyviMnWYBXVqqFGufuDLDR/OWG8z
 2Sy49G6jX+clwrSONE3gksejyg5i39C1WawOE9wn7MVIxfTX0IhkunpbEPUV3ITcEW
 6o65luaS/VY9g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=OP6K2m0o
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 0/3] dpll: add all inputs
 phase offset monitor
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

On Tue, 10 Jun 2025 07:53:35 +0200 Arkadiusz Kubalewski wrote:
> Add dpll device level feature: phase offset monitor.

Same story here
-- 
pw-bot: cr
