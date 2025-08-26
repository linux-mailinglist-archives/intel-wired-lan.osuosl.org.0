Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D272FB3706B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Aug 2025 18:33:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8C6A76068A;
	Tue, 26 Aug 2025 16:33:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QyqhlVjSKsHE; Tue, 26 Aug 2025 16:33:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1775C60643
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756226004;
	bh=9fOsLYCRQRscd5NddJCtAO5qNFjVd28uOTLJKfsIYc8=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2jtucABjjr4GZHswCWpLtref+qyu60QbnpwSnnLbdOtAh22AdSIu22h5UpV81O+XJ
	 czU8MsFOf1bysVBgLpoy4hLJ9ORMqhLQ693jT8GJB5+rlbEh06vVSWTqXT8Rv0msno
	 gaPClc/2BxvyranLV5yecpl5+1+4TKZ+r26Vb6QiySrgwSj5wcNKeCIKBtxXsFJDT7
	 c/knhBkar4KlZ1vc0xyQqjvbbj+wD6DD9NsbOm0rQt/swFD1LO1mGJgZwjzN79GrQx
	 JHYUTjRIjvCydNizW6RUrY0z4m2E7JwnpvE3bawwVsFs6rmXWY9OV+BHJ8HKoYzQEl
	 N6jxYp41R6nQQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1775C60643;
	Tue, 26 Aug 2025 16:33:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id C0A4CB0B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 16:33:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B2CC840080
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 16:33:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nBOu5oqR5GZm for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Aug 2025 16:33:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 29C4740062
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 29C4740062
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 29C4740062
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 16:33:21 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id DBD8741A22;
 Tue, 26 Aug 2025 16:33:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB6A0C4CEF1;
 Tue, 26 Aug 2025 16:33:18 +0000 (UTC)
Date: Tue, 26 Aug 2025 17:33:16 +0100
From: Simon Horman <horms@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Greg KH <gregkh@linuxfoundation.org>, jeremiah.kyle@intel.com,
 leszek.pepiak@intel.com, Lukasz Czapnik <lukasz.czapnik@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20250826163316.GD5892@horms.kernel.org>
References: <20250813104552.61027-1-przemyslaw.kitszel@intel.com>
 <20250813104552.61027-6-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250813104552.61027-6-przemyslaw.kitszel@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1756226000;
 bh=dCH9BJfNTHmofJpgfaBZCatTRuktCGZASw5OEhzVx0o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XLtREdGXKfQyf5MLxXbhJ8ZTQVzhZyRcM1k+iO/2FfIqX+yIzdZdO1789kRrvmZmx
 LKt7Fn2EiHAZaHqyc+v9Iw09dzUbuZXKCHVhGon0RSWWdcvTulNxK+oUjeGZlr3QnG
 ixuh8AVZTIOVdaTJquEMpxPYzvy3ZZgCxu0P1wJBPq3aGVilD0MnouFOhMI9Gi6rEg
 8gnKUeiJkm0v0YHxQ1dHjiOJV31JEn6qK+HswducYkhK1nza8fwq4ywt9NZqrhvpPE
 WGmWNKFMbQc/+HyIzzxTYKUFIJBeXl6syZN8zxiXIiWyowR6UkJ5LeehvWZqCcjzIC
 ixPr3bajF2ysQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=XLtREdGX
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 5/8] i40e: fix validation of
 VF state in get resources
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

On Wed, Aug 13, 2025 at 12:45:15PM +0200, Przemek Kitszel wrote:
> From: Lukasz Czapnik <lukasz.czapnik@intel.com>
> 
> VF state I40E_VF_STATE_ACTIVE is not the only state in which
> VF is actually active so it should not be used to determine
> if a VF is allowed to obtain resources.
> 
> Use I40E_VF_STATE_RESOURCES_LOADED that is set only in
> i40e_vc_get_vf_resources_msg() and cleared during reset.
> 
> Fixes: 61125b8be85d ("i40e: Fix failed opcode appearing if handling messages from VF")

I suspect this could be

Fixes: 5c3c48ac6bf5 ("i40e: implement virtual device interface")

But I guess that either way is fine.

> Cc: stable@vger.kernel.org
> Signed-off-by: Lukasz Czapnik <lukasz.czapnik@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

